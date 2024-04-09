; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98540 () Bool)

(assert start!98540)

(declare-fun b_free!24109 () Bool)

(declare-fun b_next!24109 () Bool)

(assert (=> start!98540 (= b_free!24109 (not b_next!24109))))

(declare-fun tp!85038 () Bool)

(declare-fun b_and!39081 () Bool)

(assert (=> start!98540 (= tp!85038 b_and!39081)))

(declare-fun b!1140095 () Bool)

(declare-datatypes ((array!74094 0))(
  ( (array!74095 (arr!35694 (Array (_ BitVec 32) (_ BitVec 64))) (size!36231 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74094)

(declare-fun e!648708 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!74094 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1140095 (= e!648708 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1140096 () Bool)

(declare-fun e!648700 () Bool)

(declare-fun e!648701 () Bool)

(declare-fun mapRes!44783 () Bool)

(assert (=> b!1140096 (= e!648700 (and e!648701 mapRes!44783))))

(declare-fun condMapEmpty!44783 () Bool)

(declare-datatypes ((V!43313 0))(
  ( (V!43314 (val!14376 Int)) )
))
(declare-datatypes ((ValueCell!13610 0))(
  ( (ValueCellFull!13610 (v!17014 V!43313)) (EmptyCell!13610) )
))
(declare-datatypes ((array!74096 0))(
  ( (array!74097 (arr!35695 (Array (_ BitVec 32) ValueCell!13610)) (size!36232 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74096)

(declare-fun mapDefault!44783 () ValueCell!13610)

