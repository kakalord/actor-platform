package im.actor.core.api.rpc;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import im.actor.runtime.bser.*;
import im.actor.core.network.parser.*;
import org.jetbrains.annotations.Nullable;

import java.io.IOException;

public class RequestEditAbout extends Request<ResponseSeq> {

    public static final int HEADER = 0xd4;
    public static RequestEditAbout fromBytes(byte[] data) throws IOException {
        return Bser.parse(new RequestEditAbout(), data);
    }

    private String about;

    public RequestEditAbout(@Nullable String about) {
        this.about = about;
    }

    public RequestEditAbout() {

    }

    @Nullable
    public String getAbout() {
        return this.about;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        this.about = values.optString(1);
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        if (this.about != null) {
            writer.writeString(1, this.about);
        }
    }

    @Override
    public String toString() {
        String res = "rpc EditAbout{";
        res += "about=" + this.about;
        res += "}";
        return res;
    }

    @Override
    public int getHeaderKey() {
        return HEADER;
    }
}