; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132326 () Bool)

(assert start!132326)

(declare-fun b_free!31921 () Bool)

(declare-fun b_next!31921 () Bool)

(assert (=> start!132326 (= b_free!31921 (not b_next!31921))))

(declare-fun tp!112028 () Bool)

(declare-fun b_and!51369 () Bool)

(assert (=> start!132326 (= tp!112028 b_and!51369)))

(declare-fun b!1551996 () Bool)

(declare-datatypes ((V!59373 0))(
  ( (V!59374 (val!19176 Int)) )
))
(declare-datatypes ((tuple2!24868 0))(
  ( (tuple2!24869 (_1!12444 (_ BitVec 64)) (_2!12444 V!59373)) )
))
(declare-datatypes ((List!36347 0))(
  ( (Nil!36344) (Cons!36343 (h!37789 tuple2!24868) (t!51068 List!36347)) )
))
(declare-datatypes ((ListLongMap!22489 0))(
  ( (ListLongMap!22490 (toList!11260 List!36347)) )
))
(declare-fun e!864014 () ListLongMap!22489)

(declare-fun e!864009 () ListLongMap!22489)

(assert (=> b!1551996 (= e!864014 e!864009)))

(declare-fun c!142852 () Bool)

(declare-fun lt!669023 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1551996 (= c!142852 (and (not lt!669023) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1551997 () Bool)

(declare-fun res!1062723 () Bool)

(declare-fun e!864010 () Bool)

(assert (=> b!1551997 (=> (not res!1062723) (not e!864010))))

(declare-datatypes ((array!103553 0))(
  ( (array!103554 (arr!49970 (Array (_ BitVec 32) (_ BitVec 64))) (size!50521 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103553)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103553 (_ BitVec 32)) Bool)

(assert (=> b!1551997 (= res!1062723 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1551998 () Bool)

(declare-fun res!1062729 () Bool)

(assert (=> b!1551998 (=> (not res!1062729) (not e!864010))))

(declare-datatypes ((List!36348 0))(
  ( (Nil!36345) (Cons!36344 (h!37790 (_ BitVec 64)) (t!51069 List!36348)) )
))
(declare-fun arrayNoDuplicates!0 (array!103553 (_ BitVec 32) List!36348) Bool)

(assert (=> b!1551998 (= res!1062729 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36345))))

(declare-fun b!1551999 () Bool)

(declare-fun c!142851 () Bool)

(assert (=> b!1551999 (= c!142851 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!669023))))

(declare-fun e!864015 () ListLongMap!22489)

(assert (=> b!1551999 (= e!864009 e!864015)))

(declare-fun zeroValue!436 () V!59373)

(declare-fun bm!71174 () Bool)

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18188 0))(
  ( (ValueCellFull!18188 (v!21978 V!59373)) (EmptyCell!18188) )
))
(declare-datatypes ((array!103555 0))(
  ( (array!103556 (arr!49971 (Array (_ BitVec 32) ValueCell!18188)) (size!50522 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103555)

(declare-fun minValue!436 () V!59373)

(declare-fun call!71178 () ListLongMap!22489)

(declare-fun defaultEntry!478 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6683 (array!103553 array!103555 (_ BitVec 32) (_ BitVec 32) V!59373 V!59373 (_ BitVec 32) Int) ListLongMap!22489)

(assert (=> bm!71174 (= call!71178 (getCurrentListMapNoExtraKeys!6683 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1552000 () Bool)

(declare-fun call!71180 () ListLongMap!22489)

(declare-fun +!4966 (ListLongMap!22489 tuple2!24868) ListLongMap!22489)

(assert (=> b!1552000 (= e!864014 (+!4966 call!71180 (tuple2!24869 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1552001 () Bool)

(declare-fun call!71181 () ListLongMap!22489)

(assert (=> b!1552001 (= e!864009 call!71181)))

(declare-fun bm!71175 () Bool)

(declare-fun call!71179 () ListLongMap!22489)

(assert (=> bm!71175 (= call!71179 call!71178)))

(declare-fun res!1062724 () Bool)

(assert (=> start!132326 (=> (not res!1062724) (not e!864010))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132326 (= res!1062724 (validMask!0 mask!926))))

(assert (=> start!132326 e!864010))

(declare-fun array_inv!38767 (array!103553) Bool)

(assert (=> start!132326 (array_inv!38767 _keys!618)))

(declare-fun tp_is_empty!38197 () Bool)

(assert (=> start!132326 tp_is_empty!38197))

(assert (=> start!132326 true))

(assert (=> start!132326 tp!112028))

(declare-fun e!864007 () Bool)

(declare-fun array_inv!38768 (array!103555) Bool)

(assert (=> start!132326 (and (array_inv!38768 _values!470) e!864007)))

(declare-fun b!1552002 () Bool)

(declare-fun e!864017 () Bool)

(assert (=> b!1552002 (= e!864017 tp_is_empty!38197)))

(declare-fun b!1552003 () Bool)

(declare-fun res!1062728 () Bool)

(assert (=> b!1552003 (=> (not res!1062728) (not e!864010))))

(assert (=> b!1552003 (= res!1062728 (and (= (size!50522 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50521 _keys!618) (size!50522 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun bm!71176 () Bool)

(declare-fun call!71177 () ListLongMap!22489)

(assert (=> bm!71176 (= call!71177 call!71179)))

(declare-fun c!142850 () Bool)

(declare-fun bm!71177 () Bool)

(assert (=> bm!71177 (= call!71180 (+!4966 (ite c!142850 call!71178 (ite c!142852 call!71179 call!71177)) (ite (or c!142850 c!142852) (tuple2!24869 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24869 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1552004 () Bool)

(assert (=> b!1552004 (= e!864015 call!71181)))

(declare-fun mapIsEmpty!59011 () Bool)

(declare-fun mapRes!59011 () Bool)

(assert (=> mapIsEmpty!59011 mapRes!59011))

(declare-fun b!1552005 () Bool)

(declare-fun res!1062727 () Bool)

(assert (=> b!1552005 (=> (not res!1062727) (not e!864010))))

(assert (=> b!1552005 (= res!1062727 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50521 _keys!618))))))

(declare-fun bm!71178 () Bool)

(assert (=> bm!71178 (= call!71181 call!71180)))

(declare-fun b!1552006 () Bool)

(declare-fun e!864012 () Bool)

(assert (=> b!1552006 (= e!864012 false)))

(declare-fun lt!669016 () ListLongMap!22489)

(declare-fun lt!669015 () Bool)

(declare-fun contains!10130 (ListLongMap!22489 (_ BitVec 64)) Bool)

(assert (=> b!1552006 (= lt!669015 (contains!10130 lt!669016 (select (arr!49970 _keys!618) from!762)))))

(declare-fun b!1552007 () Bool)

(declare-fun e!864013 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1552007 (= e!864013 (not (validKeyInArray!0 (select (arr!49970 _keys!618) from!762))))))

(declare-fun b!1552008 () Bool)

(assert (=> b!1552008 (= e!864015 call!71177)))

(declare-fun b!1552009 () Bool)

(declare-datatypes ((Unit!51622 0))(
  ( (Unit!51623) )
))
(declare-fun e!864016 () Unit!51622)

(declare-fun lt!669018 () Unit!51622)

(assert (=> b!1552009 (= e!864016 lt!669018)))

(declare-fun lt!669021 () ListLongMap!22489)

(assert (=> b!1552009 (= lt!669021 (getCurrentListMapNoExtraKeys!6683 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun lt!669014 () Unit!51622)

(declare-fun addStillContains!1301 (ListLongMap!22489 (_ BitVec 64) V!59373 (_ BitVec 64)) Unit!51622)

(assert (=> b!1552009 (= lt!669014 (addStillContains!1301 lt!669021 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49970 _keys!618) from!762)))))

(declare-fun lt!669022 () ListLongMap!22489)

(assert (=> b!1552009 (= lt!669022 (+!4966 lt!669021 (tuple2!24869 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(assert (=> b!1552009 (contains!10130 lt!669022 (select (arr!49970 _keys!618) from!762))))

(declare-fun addApplyDifferent!634 (ListLongMap!22489 (_ BitVec 64) V!59373 (_ BitVec 64)) Unit!51622)

(assert (=> b!1552009 (= lt!669018 (addApplyDifferent!634 lt!669021 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49970 _keys!618) from!762)))))

(declare-fun lt!669020 () V!59373)

(declare-fun apply!1133 (ListLongMap!22489 (_ BitVec 64)) V!59373)

(assert (=> b!1552009 (= lt!669020 (apply!1133 (+!4966 lt!669021 (tuple2!24869 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49970 _keys!618) from!762)))))

(declare-fun lt!669019 () V!59373)

(assert (=> b!1552009 (= lt!669019 (apply!1133 lt!669021 (select (arr!49970 _keys!618) from!762)))))

(assert (=> b!1552009 (= lt!669020 lt!669019)))

(declare-fun lt!669024 () Unit!51622)

(assert (=> b!1552009 (= lt!669024 (addApplyDifferent!634 lt!669021 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49970 _keys!618) from!762)))))

(assert (=> b!1552009 (= (apply!1133 lt!669022 (select (arr!49970 _keys!618) from!762)) lt!669019)))

(declare-fun b!1552010 () Bool)

(declare-fun e!864008 () Bool)

(assert (=> b!1552010 (= e!864008 tp_is_empty!38197)))

(declare-fun mapNonEmpty!59011 () Bool)

(declare-fun tp!112027 () Bool)

(assert (=> mapNonEmpty!59011 (= mapRes!59011 (and tp!112027 e!864008))))

(declare-fun mapValue!59011 () ValueCell!18188)

(declare-fun mapKey!59011 () (_ BitVec 32))

(declare-fun mapRest!59011 () (Array (_ BitVec 32) ValueCell!18188))

(assert (=> mapNonEmpty!59011 (= (arr!49971 _values!470) (store mapRest!59011 mapKey!59011 mapValue!59011))))

(declare-fun b!1552011 () Bool)

(assert (=> b!1552011 (= e!864007 (and e!864017 mapRes!59011))))

(declare-fun condMapEmpty!59011 () Bool)

(declare-fun mapDefault!59011 () ValueCell!18188)

