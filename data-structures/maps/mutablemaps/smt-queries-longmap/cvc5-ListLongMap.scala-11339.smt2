; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131970 () Bool)

(assert start!131970)

(declare-fun b_free!31651 () Bool)

(declare-fun b_next!31651 () Bool)

(assert (=> start!131970 (= b_free!31651 (not b_next!31651))))

(declare-fun tp!111205 () Bool)

(declare-fun b_and!51071 () Bool)

(assert (=> start!131970 (= tp!111205 b_and!51071)))

(declare-datatypes ((V!59013 0))(
  ( (V!59014 (val!19041 Int)) )
))
(declare-datatypes ((tuple2!24610 0))(
  ( (tuple2!24611 (_1!12315 (_ BitVec 64)) (_2!12315 V!59013)) )
))
(declare-datatypes ((List!36129 0))(
  ( (Nil!36126) (Cons!36125 (h!37571 tuple2!24610) (t!50830 List!36129)) )
))
(declare-datatypes ((ListLongMap!22231 0))(
  ( (ListLongMap!22232 (toList!11131 List!36129)) )
))
(declare-fun call!69108 () ListLongMap!22231)

(declare-fun c!141492 () Bool)

(declare-fun call!69110 () ListLongMap!22231)

(declare-fun zeroValue!436 () V!59013)

(declare-fun call!69109 () ListLongMap!22231)

(declare-fun bm!69104 () Bool)

(declare-fun minValue!436 () V!59013)

(declare-fun c!141493 () Bool)

(declare-fun call!69107 () ListLongMap!22231)

(declare-fun +!4863 (ListLongMap!22231 tuple2!24610) ListLongMap!22231)

(assert (=> bm!69104 (= call!69107 (+!4863 (ite c!141493 call!69110 (ite c!141492 call!69109 call!69108)) (ite (or c!141493 c!141492) (tuple2!24611 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24611 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1544938 () Bool)

(declare-fun res!1059656 () Bool)

(declare-fun e!859966 () Bool)

(assert (=> b!1544938 (=> (not res!1059656) (not e!859966))))

(declare-datatypes ((array!103027 0))(
  ( (array!103028 (arr!49711 (Array (_ BitVec 32) (_ BitVec 64))) (size!50262 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103027)

(declare-datatypes ((List!36130 0))(
  ( (Nil!36127) (Cons!36126 (h!37572 (_ BitVec 64)) (t!50831 List!36130)) )
))
(declare-fun arrayNoDuplicates!0 (array!103027 (_ BitVec 32) List!36130) Bool)

(assert (=> b!1544938 (= res!1059656 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36127))))

(declare-fun bm!69105 () Bool)

(declare-fun call!69111 () ListLongMap!22231)

(assert (=> bm!69105 (= call!69111 call!69107)))

(declare-fun b!1544939 () Bool)

(declare-fun e!859968 () Bool)

(assert (=> b!1544939 (= e!859968 false)))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18053 0))(
  ( (ValueCellFull!18053 (v!21839 V!59013)) (EmptyCell!18053) )
))
(declare-datatypes ((array!103029 0))(
  ( (array!103030 (arr!49712 (Array (_ BitVec 32) ValueCell!18053)) (size!50263 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103029)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun lt!666151 () Bool)

(declare-fun contains!10037 (ListLongMap!22231 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMapNoExtraKeys!6580 (array!103027 array!103029 (_ BitVec 32) (_ BitVec 32) V!59013 V!59013 (_ BitVec 32) Int) ListLongMap!22231)

(assert (=> b!1544939 (= lt!666151 (contains!10037 (getCurrentListMapNoExtraKeys!6580 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478) (select (arr!49711 _keys!618) from!762)))))

(declare-fun bm!69106 () Bool)

(assert (=> bm!69106 (= call!69110 (getCurrentListMapNoExtraKeys!6580 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1544940 () Bool)

(declare-fun e!859971 () Bool)

(declare-fun tp_is_empty!37927 () Bool)

(assert (=> b!1544940 (= e!859971 tp_is_empty!37927)))

(declare-fun b!1544941 () Bool)

(declare-fun res!1059659 () Bool)

(assert (=> b!1544941 (=> (not res!1059659) (not e!859966))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103027 (_ BitVec 32)) Bool)

(assert (=> b!1544941 (= res!1059659 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1544942 () Bool)

(declare-fun res!1059657 () Bool)

(assert (=> b!1544942 (=> (not res!1059657) (not e!859966))))

(assert (=> b!1544942 (= res!1059657 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50262 _keys!618))))))

(declare-fun mapIsEmpty!58594 () Bool)

(declare-fun mapRes!58594 () Bool)

(assert (=> mapIsEmpty!58594 mapRes!58594))

(declare-fun b!1544943 () Bool)

(declare-fun res!1059655 () Bool)

(assert (=> b!1544943 (=> (not res!1059655) (not e!859968))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1544943 (= res!1059655 (validKeyInArray!0 (select (arr!49711 _keys!618) from!762)))))

(declare-fun b!1544944 () Bool)

(declare-fun e!859965 () ListLongMap!22231)

(assert (=> b!1544944 (= e!859965 call!69108)))

(declare-fun bm!69107 () Bool)

(assert (=> bm!69107 (= call!69108 call!69109)))

(declare-fun b!1544945 () Bool)

(declare-fun c!141494 () Bool)

(declare-fun lt!666152 () Bool)

(assert (=> b!1544945 (= c!141494 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666152))))

(declare-fun e!859970 () ListLongMap!22231)

(assert (=> b!1544945 (= e!859970 e!859965)))

(declare-fun b!1544946 () Bool)

(declare-fun e!859964 () ListLongMap!22231)

(assert (=> b!1544946 (= e!859964 (+!4863 call!69107 (tuple2!24611 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun mapNonEmpty!58594 () Bool)

(declare-fun tp!111206 () Bool)

(declare-fun e!859969 () Bool)

(assert (=> mapNonEmpty!58594 (= mapRes!58594 (and tp!111206 e!859969))))

(declare-fun mapKey!58594 () (_ BitVec 32))

(declare-fun mapValue!58594 () ValueCell!18053)

(declare-fun mapRest!58594 () (Array (_ BitVec 32) ValueCell!18053))

(assert (=> mapNonEmpty!58594 (= (arr!49712 _values!470) (store mapRest!58594 mapKey!58594 mapValue!58594))))

(declare-fun b!1544947 () Bool)

(declare-fun e!859972 () Bool)

(assert (=> b!1544947 (= e!859972 (and e!859971 mapRes!58594))))

(declare-fun condMapEmpty!58594 () Bool)

(declare-fun mapDefault!58594 () ValueCell!18053)

