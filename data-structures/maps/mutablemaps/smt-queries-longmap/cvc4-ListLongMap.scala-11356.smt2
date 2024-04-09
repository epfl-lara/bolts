; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132076 () Bool)

(assert start!132076)

(declare-fun b_free!31757 () Bool)

(declare-fun b_next!31757 () Bool)

(assert (=> start!132076 (= b_free!31757 (not b_next!31757))))

(declare-fun tp!111523 () Bool)

(declare-fun b_and!51177 () Bool)

(assert (=> start!132076 (= tp!111523 b_and!51177)))

(declare-fun b!1547482 () Bool)

(declare-fun res!1060771 () Bool)

(declare-fun e!861401 () Bool)

(assert (=> b!1547482 (=> (not res!1060771) (not e!861401))))

(declare-datatypes ((array!103231 0))(
  ( (array!103232 (arr!49813 (Array (_ BitVec 32) (_ BitVec 64))) (size!50364 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103231)

(declare-datatypes ((List!36220 0))(
  ( (Nil!36217) (Cons!36216 (h!37662 (_ BitVec 64)) (t!50921 List!36220)) )
))
(declare-fun arrayNoDuplicates!0 (array!103231 (_ BitVec 32) List!36220) Bool)

(assert (=> b!1547482 (= res!1060771 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36217))))

(declare-fun b!1547483 () Bool)

(declare-fun res!1060766 () Bool)

(assert (=> b!1547483 (=> (not res!1060766) (not e!861401))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103231 (_ BitVec 32)) Bool)

(assert (=> b!1547483 (= res!1060766 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1547484 () Bool)

(declare-fun e!861403 () Bool)

(assert (=> b!1547484 (= e!861403 (not true))))

(declare-datatypes ((V!59153 0))(
  ( (V!59154 (val!19094 Int)) )
))
(declare-datatypes ((tuple2!24712 0))(
  ( (tuple2!24713 (_1!12366 (_ BitVec 64)) (_2!12366 V!59153)) )
))
(declare-datatypes ((List!36221 0))(
  ( (Nil!36218) (Cons!36217 (h!37663 tuple2!24712) (t!50922 List!36221)) )
))
(declare-datatypes ((ListLongMap!22333 0))(
  ( (ListLongMap!22334 (toList!11182 List!36221)) )
))
(declare-fun lt!666851 () ListLongMap!22333)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun minValue!436 () V!59153)

(declare-fun apply!1090 (ListLongMap!22333 (_ BitVec 64)) V!59153)

(declare-fun +!4906 (ListLongMap!22333 tuple2!24712) ListLongMap!22333)

(assert (=> b!1547484 (= (apply!1090 (+!4906 lt!666851 (tuple2!24713 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49813 _keys!618) from!762)) (apply!1090 lt!666851 (select (arr!49813 _keys!618) from!762)))))

(declare-datatypes ((Unit!51510 0))(
  ( (Unit!51511) )
))
(declare-fun lt!666852 () Unit!51510)

(declare-fun addApplyDifferent!593 (ListLongMap!22333 (_ BitVec 64) V!59153 (_ BitVec 64)) Unit!51510)

(assert (=> b!1547484 (= lt!666852 (addApplyDifferent!593 lt!666851 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49813 _keys!618) from!762)))))

(declare-fun zeroValue!436 () V!59153)

(declare-fun contains!10074 (ListLongMap!22333 (_ BitVec 64)) Bool)

(assert (=> b!1547484 (contains!10074 (+!4906 lt!666851 (tuple2!24713 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49813 _keys!618) from!762))))

(declare-fun lt!666853 () Unit!51510)

(declare-fun addStillContains!1256 (ListLongMap!22333 (_ BitVec 64) V!59153 (_ BitVec 64)) Unit!51510)

(assert (=> b!1547484 (= lt!666853 (addStillContains!1256 lt!666851 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49813 _keys!618) from!762)))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-datatypes ((ValueCell!18106 0))(
  ( (ValueCellFull!18106 (v!21892 V!59153)) (EmptyCell!18106) )
))
(declare-datatypes ((array!103233 0))(
  ( (array!103234 (arr!49814 (Array (_ BitVec 32) ValueCell!18106)) (size!50365 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103233)

(declare-fun getCurrentListMapNoExtraKeys!6625 (array!103231 array!103233 (_ BitVec 32) (_ BitVec 32) V!59153 V!59153 (_ BitVec 32) Int) ListLongMap!22333)

(assert (=> b!1547484 (= lt!666851 (getCurrentListMapNoExtraKeys!6625 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1547485 () Bool)

(assert (=> b!1547485 (= e!861401 e!861403)))

(declare-fun res!1060772 () Bool)

(assert (=> b!1547485 (=> (not res!1060772) (not e!861403))))

(assert (=> b!1547485 (= res!1060772 (bvslt from!762 (size!50364 _keys!618)))))

(declare-fun lt!666850 () ListLongMap!22333)

(declare-fun e!861402 () ListLongMap!22333)

(assert (=> b!1547485 (= lt!666850 e!861402)))

(declare-fun c!141971 () Bool)

(declare-fun lt!666854 () Bool)

(assert (=> b!1547485 (= c!141971 (and (not lt!666854) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1547485 (= lt!666854 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1547486 () Bool)

(declare-fun e!861400 () Bool)

(declare-fun tp_is_empty!38033 () Bool)

(assert (=> b!1547486 (= e!861400 tp_is_empty!38033)))

(declare-fun bm!69899 () Bool)

(declare-fun call!69906 () ListLongMap!22333)

(declare-fun call!69902 () ListLongMap!22333)

(assert (=> bm!69899 (= call!69906 call!69902)))

(declare-fun bm!69900 () Bool)

(declare-fun call!69904 () ListLongMap!22333)

(declare-fun call!69905 () ListLongMap!22333)

(assert (=> bm!69900 (= call!69904 call!69905)))

(declare-fun b!1547487 () Bool)

(declare-fun e!861399 () ListLongMap!22333)

(declare-fun call!69903 () ListLongMap!22333)

(assert (=> b!1547487 (= e!861399 call!69903)))

(declare-fun b!1547488 () Bool)

(declare-fun res!1060770 () Bool)

(assert (=> b!1547488 (=> (not res!1060770) (not e!861401))))

(assert (=> b!1547488 (= res!1060770 (and (= (size!50365 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50364 _keys!618) (size!50365 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1547489 () Bool)

(declare-fun res!1060769 () Bool)

(assert (=> b!1547489 (=> (not res!1060769) (not e!861403))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1547489 (= res!1060769 (validKeyInArray!0 (select (arr!49813 _keys!618) from!762)))))

(declare-fun mapIsEmpty!58753 () Bool)

(declare-fun mapRes!58753 () Bool)

(assert (=> mapIsEmpty!58753 mapRes!58753))

(declare-fun b!1547490 () Bool)

(assert (=> b!1547490 (= e!861402 (+!4906 call!69902 (tuple2!24713 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1547491 () Bool)

(declare-fun e!861397 () Bool)

(assert (=> b!1547491 (= e!861397 (and e!861400 mapRes!58753))))

(declare-fun condMapEmpty!58753 () Bool)

(declare-fun mapDefault!58753 () ValueCell!18106)

