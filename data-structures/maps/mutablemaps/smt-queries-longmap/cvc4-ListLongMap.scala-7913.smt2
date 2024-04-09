; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98262 () Bool)

(assert start!98262)

(declare-fun b_free!23927 () Bool)

(declare-fun b_next!23927 () Bool)

(assert (=> start!98262 (= b_free!23927 (not b_next!23927))))

(declare-fun tp!84485 () Bool)

(declare-fun b_and!38659 () Bool)

(assert (=> start!98262 (= tp!84485 b_and!38659)))

(declare-datatypes ((V!43069 0))(
  ( (V!43070 (val!14285 Int)) )
))
(declare-fun zeroValue!944 () V!43069)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!18092 0))(
  ( (tuple2!18093 (_1!9056 (_ BitVec 64)) (_2!9056 V!43069)) )
))
(declare-datatypes ((List!24909 0))(
  ( (Nil!24906) (Cons!24905 (h!26114 tuple2!18092) (t!35835 List!24909)) )
))
(declare-datatypes ((ListLongMap!16073 0))(
  ( (ListLongMap!16074 (toList!8052 List!24909)) )
))
(declare-fun call!48598 () ListLongMap!16073)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun bm!48595 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13519 0))(
  ( (ValueCellFull!13519 (v!16919 V!43069)) (EmptyCell!13519) )
))
(declare-datatypes ((array!73732 0))(
  ( (array!73733 (arr!35515 (Array (_ BitVec 32) ValueCell!13519)) (size!36052 (_ BitVec 32))) )
))
(declare-fun lt!502444 () array!73732)

(declare-fun minValue!944 () V!43069)

(declare-datatypes ((array!73734 0))(
  ( (array!73735 (arr!35516 (Array (_ BitVec 32) (_ BitVec 64))) (size!36053 (_ BitVec 32))) )
))
(declare-fun lt!502448 () array!73734)

(declare-fun getCurrentListMapNoExtraKeys!4504 (array!73734 array!73732 (_ BitVec 32) (_ BitVec 32) V!43069 V!43069 (_ BitVec 32) Int) ListLongMap!16073)

(assert (=> bm!48595 (= call!48598 (getCurrentListMapNoExtraKeys!4504 lt!502448 lt!502444 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1131250 () Bool)

(declare-fun e!643841 () Bool)

(declare-fun e!643845 () Bool)

(declare-fun mapRes!44503 () Bool)

(assert (=> b!1131250 (= e!643841 (and e!643845 mapRes!44503))))

(declare-fun condMapEmpty!44503 () Bool)

(declare-fun _values!996 () array!73732)

(declare-fun mapDefault!44503 () ValueCell!13519)

