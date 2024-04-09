; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97316 () Bool)

(assert start!97316)

(declare-fun b_free!23251 () Bool)

(declare-fun b_next!23251 () Bool)

(assert (=> start!97316 (= b_free!23251 (not b_next!23251))))

(declare-fun tp!82052 () Bool)

(declare-fun b_and!37351 () Bool)

(assert (=> start!97316 (= tp!82052 b_and!37351)))

(declare-fun b!1107595 () Bool)

(declare-fun e!631964 () Bool)

(declare-fun tp_is_empty!27511 () Bool)

(assert (=> b!1107595 (= e!631964 tp_is_empty!27511)))

(declare-fun b!1107596 () Bool)

(declare-fun e!631960 () Bool)

(assert (=> b!1107596 (= e!631960 tp_is_empty!27511)))

(declare-fun b!1107597 () Bool)

(declare-fun res!739273 () Bool)

(declare-fun e!631967 () Bool)

(assert (=> b!1107597 (=> (not res!739273) (not e!631967))))

(declare-datatypes ((array!71892 0))(
  ( (array!71893 (arr!34595 (Array (_ BitVec 32) (_ BitVec 64))) (size!35132 (_ BitVec 32))) )
))
(declare-fun lt!495643 () array!71892)

(declare-datatypes ((List!24253 0))(
  ( (Nil!24250) (Cons!24249 (h!25458 (_ BitVec 64)) (t!34557 List!24253)) )
))
(declare-fun arrayNoDuplicates!0 (array!71892 (_ BitVec 32) List!24253) Bool)

(assert (=> b!1107597 (= res!739273 (arrayNoDuplicates!0 lt!495643 #b00000000000000000000000000000000 Nil!24250))))

(declare-fun b!1107598 () Bool)

(declare-fun res!739272 () Bool)

(declare-fun e!631962 () Bool)

(assert (=> b!1107598 (=> (not res!739272) (not e!631962))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1107598 (= res!739272 (validMask!0 mask!1564))))

(declare-fun res!739269 () Bool)

(assert (=> start!97316 (=> (not res!739269) (not e!631962))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun _keys!1208 () array!71892)

(assert (=> start!97316 (= res!739269 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35132 _keys!1208))))))

(assert (=> start!97316 e!631962))

(assert (=> start!97316 tp_is_empty!27511))

(declare-fun array_inv!26488 (array!71892) Bool)

(assert (=> start!97316 (array_inv!26488 _keys!1208)))

(assert (=> start!97316 true))

(assert (=> start!97316 tp!82052))

(declare-datatypes ((V!41809 0))(
  ( (V!41810 (val!13812 Int)) )
))
(declare-datatypes ((ValueCell!13046 0))(
  ( (ValueCellFull!13046 (v!16446 V!41809)) (EmptyCell!13046) )
))
(declare-datatypes ((array!71894 0))(
  ( (array!71895 (arr!34596 (Array (_ BitVec 32) ValueCell!13046)) (size!35133 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71894)

(declare-fun e!631963 () Bool)

(declare-fun array_inv!26489 (array!71894) Bool)

(assert (=> start!97316 (and (array_inv!26489 _values!996) e!631963)))

(declare-fun b!1107599 () Bool)

(declare-fun res!739266 () Bool)

(assert (=> b!1107599 (=> (not res!739266) (not e!631962))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1107599 (= res!739266 (= (select (arr!34595 _keys!1208) i!673) k!934))))

(declare-fun zeroValue!944 () V!41809)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!17516 0))(
  ( (tuple2!17517 (_1!8768 (_ BitVec 64)) (_2!8768 V!41809)) )
))
(declare-datatypes ((List!24254 0))(
  ( (Nil!24251) (Cons!24250 (h!25459 tuple2!17516) (t!34558 List!24254)) )
))
(declare-datatypes ((ListLongMap!15497 0))(
  ( (ListLongMap!15498 (toList!7764 List!24254)) )
))
(declare-fun call!46451 () ListLongMap!15497)

(declare-fun minValue!944 () V!41809)

(declare-fun bm!46447 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4232 (array!71892 array!71894 (_ BitVec 32) (_ BitVec 32) V!41809 V!41809 (_ BitVec 32) Int) ListLongMap!15497)

(declare-fun dynLambda!2360 (Int (_ BitVec 64)) V!41809)

(assert (=> bm!46447 (= call!46451 (getCurrentListMapNoExtraKeys!4232 lt!495643 (array!71895 (store (arr!34596 _values!996) i!673 (ValueCellFull!13046 (dynLambda!2360 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35133 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!43084 () Bool)

(declare-fun mapRes!43084 () Bool)

(assert (=> mapIsEmpty!43084 mapRes!43084))

(declare-fun b!1107600 () Bool)

(declare-fun e!631965 () Bool)

(declare-fun call!46450 () ListLongMap!15497)

(declare-fun -!997 (ListLongMap!15497 (_ BitVec 64)) ListLongMap!15497)

(assert (=> b!1107600 (= e!631965 (= call!46451 (-!997 call!46450 k!934)))))

(declare-fun b!1107601 () Bool)

(declare-fun res!739275 () Bool)

(assert (=> b!1107601 (=> (not res!739275) (not e!631962))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1107601 (= res!739275 (validKeyInArray!0 k!934))))

(declare-fun b!1107602 () Bool)

(assert (=> b!1107602 (= e!631963 (and e!631960 mapRes!43084))))

(declare-fun condMapEmpty!43084 () Bool)

(declare-fun mapDefault!43084 () ValueCell!13046)

