package im.actor.core.api;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import im.actor.runtime.bser.*;

import java.io.IOException;

public abstract class ServiceEx extends BserObject {
    public static ServiceEx fromBytes(byte[] src) throws IOException {
        BserValues values = new BserValues(BserParser.deserialize(new DataInput(src, 0, src.length)));
        int key = values.getInt(1);
        byte[] content = values.getBytes(2);
        switch(key) { 
            case 1: return Bser.parse(new ServiceExUserInvited(), content);
            case 17: return Bser.parse(new ServiceExUserJoined(), content);
            case 2: return Bser.parse(new ServiceExUserKicked(), content);
            case 3: return Bser.parse(new ServiceExUserLeft(), content);
            case 4: return Bser.parse(new ServiceExGroupCreated(), content);
            case 5: return Bser.parse(new ServiceExChangedTitle(), content);
            case 6: return Bser.parse(new ServiceExChangedAvatar(), content);
            case 8: return Bser.parse(new ServiceExContactRegistered(), content);
            case 9: return Bser.parse(new ServiceExPhoneMissed(), content);
            case 16: return Bser.parse(new ServiceExPhoneCall(), content);
            default: return new ServiceExUnsupported(key, content);
        }
    }
    public abstract int getHeader();

    public byte[] buildContainer() throws IOException {
        DataOutput res = new DataOutput();
        BserWriter writer = new BserWriter(res);
        writer.writeInt(1, getHeader());
        writer.writeBytes(2, toByteArray());
        return res.toByteArray();
    }

}