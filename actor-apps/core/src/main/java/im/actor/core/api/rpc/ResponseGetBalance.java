package im.actor.core.api.rpc;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import im.actor.runtime.bser.*;
import im.actor.core.network.parser.*;

import org.jetbrains.annotations.NotNull;

import java.io.IOException;

public class ResponseGetBalance extends Response {

    public static final int HEADER = 0xa5;
    public static ResponseGetBalance fromBytes(byte[] data) throws IOException {
        return Bser.parse(new ResponseGetBalance(), data);
    }

    private String balance;

    public ResponseGetBalance(@NotNull String balance) {
        this.balance = balance;
    }

    public ResponseGetBalance() {

    }

    @NotNull
    public String getBalance() {
        return this.balance;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        this.balance = values.getString(1);
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        if (this.balance == null) {
            throw new IOException();
        }
        writer.writeString(1, this.balance);
    }

    @Override
    public String toString() {
        String res = "tuple GetBalance{";
        res += "}";
        return res;
    }

    @Override
    public int getHeaderKey() {
        return HEADER;
    }
}