; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98274 () Bool)

(assert start!98274)

(declare-fun b_free!23939 () Bool)

(declare-fun b_next!23939 () Bool)

(assert (=> start!98274 (= b_free!23939 (not b_next!23939))))

(declare-fun tp!84521 () Bool)

(declare-fun b_and!38683 () Bool)

(assert (=> start!98274 (= tp!84521 b_and!38683)))

(declare-datatypes ((V!43085 0))(
  ( (V!43086 (val!14291 Int)) )
))
(declare-fun zeroValue!944 () V!43085)

(declare-datatypes ((array!73756 0))(
  ( (array!73757 (arr!35527 (Array (_ BitVec 32) (_ BitVec 64))) (size!36064 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73756)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun bm!48739 () Bool)

(declare-datatypes ((ValueCell!13525 0))(
  ( (ValueCellFull!13525 (v!16925 V!43085)) (EmptyCell!13525) )
))
(declare-datatypes ((array!73758 0))(
  ( (array!73759 (arr!35528 (Array (_ BitVec 32) ValueCell!13525)) (size!36065 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73758)

(declare-fun minValue!944 () V!43085)

(declare-datatypes ((tuple2!18104 0))(
  ( (tuple2!18105 (_1!9062 (_ BitVec 64)) (_2!9062 V!43085)) )
))
(declare-datatypes ((List!24918 0))(
  ( (Nil!24915) (Cons!24914 (h!26123 tuple2!18104) (t!35856 List!24918)) )
))
(declare-datatypes ((ListLongMap!16085 0))(
  ( (ListLongMap!16086 (toList!8058 List!24918)) )
))
(declare-fun call!48744 () ListLongMap!16085)

(declare-fun getCurrentListMapNoExtraKeys!4509 (array!73756 array!73758 (_ BitVec 32) (_ BitVec 32) V!43085 V!43085 (_ BitVec 32) Int) ListLongMap!16085)

(assert (=> bm!48739 (= call!48744 (getCurrentListMapNoExtraKeys!4509 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1131747 () Bool)

(declare-fun e!644121 () Bool)

(declare-fun e!644123 () Bool)

(declare-fun mapRes!44521 () Bool)

(assert (=> b!1131747 (= e!644121 (and e!644123 mapRes!44521))))

(declare-fun condMapEmpty!44521 () Bool)

(declare-fun mapDefault!44521 () ValueCell!13525)

