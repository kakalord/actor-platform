package im.actor.core.api.rpc;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import im.actor.runtime.bser.*;
import im.actor.core.network.parser.*;

import java.io.IOException;

public class RequestGetPublicGroups extends Request<ResponseGetPublicGroups> {

    public static final int HEADER = 0xc9;
    public static RequestGetPublicGroups fromBytes(byte[] data) throws IOException {
        return Bser.parse(new RequestGetPublicGroups(), data);
    }


    public RequestGetPublicGroups() {

    }

    @Override
    public void parse(BserValues values) throws IOException {
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
    }

    @Override
    public String toString() {
        String res = "rpc GetPublicGroups{";
        res += "}";
        return res;
    }

    @Override
    public int getHeaderKey() {
        return HEADER;
    }
}