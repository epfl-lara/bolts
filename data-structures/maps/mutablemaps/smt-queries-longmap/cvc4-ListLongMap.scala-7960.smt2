; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98640 () Bool)

(assert start!98640)

(declare-fun b_free!24209 () Bool)

(declare-fun b_next!24209 () Bool)

(assert (=> start!98640 (= b_free!24209 (not b_next!24209))))

(declare-fun tp!85339 () Bool)

(declare-fun b_and!39281 () Bool)

(assert (=> start!98640 (= tp!85339 b_and!39281)))

(declare-datatypes ((array!74286 0))(
  ( (array!74287 (arr!35790 (Array (_ BitVec 32) (_ BitVec 64))) (size!36327 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74286)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1144562 () Bool)

(declare-fun e!651119 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!74286 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1144562 (= e!651119 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1144563 () Bool)

(declare-fun e!651121 () Bool)

(declare-fun e!651122 () Bool)

(declare-fun mapRes!44933 () Bool)

(assert (=> b!1144563 (= e!651121 (and e!651122 mapRes!44933))))

(declare-fun condMapEmpty!44933 () Bool)

(declare-datatypes ((V!43445 0))(
  ( (V!43446 (val!14426 Int)) )
))
(declare-datatypes ((ValueCell!13660 0))(
  ( (ValueCellFull!13660 (v!17064 V!43445)) (EmptyCell!13660) )
))
(declare-datatypes ((array!74288 0))(
  ( (array!74289 (arr!35791 (Array (_ BitVec 32) ValueCell!13660)) (size!36328 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74288)

(declare-fun mapDefault!44933 () ValueCell!13660)

