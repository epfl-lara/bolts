; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132066 () Bool)

(assert start!132066)

(declare-fun b_free!31747 () Bool)

(declare-fun b_next!31747 () Bool)

(assert (=> start!132066 (= b_free!31747 (not b_next!31747))))

(declare-fun tp!111493 () Bool)

(declare-fun b_and!51167 () Bool)

(assert (=> start!132066 (= tp!111493 b_and!51167)))

(declare-fun b!1547242 () Bool)

(declare-datatypes ((V!59141 0))(
  ( (V!59142 (val!19089 Int)) )
))
(declare-datatypes ((tuple2!24702 0))(
  ( (tuple2!24703 (_1!12361 (_ BitVec 64)) (_2!12361 V!59141)) )
))
(declare-datatypes ((List!36211 0))(
  ( (Nil!36208) (Cons!36207 (h!37653 tuple2!24702) (t!50912 List!36211)) )
))
(declare-datatypes ((ListLongMap!22323 0))(
  ( (ListLongMap!22324 (toList!11177 List!36211)) )
))
(declare-fun e!861265 () ListLongMap!22323)

(declare-fun call!69831 () ListLongMap!22323)

(assert (=> b!1547242 (= e!861265 call!69831)))

(declare-fun b!1547243 () Bool)

(declare-fun e!861261 () Bool)

(assert (=> b!1547243 (= e!861261 (not true))))

(declare-datatypes ((array!103211 0))(
  ( (array!103212 (arr!49803 (Array (_ BitVec 32) (_ BitVec 64))) (size!50354 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103211)

(declare-fun lt!666777 () ListLongMap!22323)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun minValue!436 () V!59141)

(declare-fun apply!1086 (ListLongMap!22323 (_ BitVec 64)) V!59141)

(declare-fun +!4902 (ListLongMap!22323 tuple2!24702) ListLongMap!22323)

(assert (=> b!1547243 (= (apply!1086 (+!4902 lt!666777 (tuple2!24703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49803 _keys!618) from!762)) (apply!1086 lt!666777 (select (arr!49803 _keys!618) from!762)))))

(declare-datatypes ((Unit!51502 0))(
  ( (Unit!51503) )
))
(declare-fun lt!666778 () Unit!51502)

(declare-fun addApplyDifferent!589 (ListLongMap!22323 (_ BitVec 64) V!59141 (_ BitVec 64)) Unit!51502)

(assert (=> b!1547243 (= lt!666778 (addApplyDifferent!589 lt!666777 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49803 _keys!618) from!762)))))

(declare-fun zeroValue!436 () V!59141)

(declare-fun contains!10070 (ListLongMap!22323 (_ BitVec 64)) Bool)

(assert (=> b!1547243 (contains!10070 (+!4902 lt!666777 (tuple2!24703 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49803 _keys!618) from!762))))

(declare-fun lt!666775 () Unit!51502)

(declare-fun addStillContains!1252 (ListLongMap!22323 (_ BitVec 64) V!59141 (_ BitVec 64)) Unit!51502)

(assert (=> b!1547243 (= lt!666775 (addStillContains!1252 lt!666777 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49803 _keys!618) from!762)))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18101 0))(
  ( (ValueCellFull!18101 (v!21887 V!59141)) (EmptyCell!18101) )
))
(declare-datatypes ((array!103213 0))(
  ( (array!103214 (arr!49804 (Array (_ BitVec 32) ValueCell!18101)) (size!50355 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103213)

(declare-fun getCurrentListMapNoExtraKeys!6621 (array!103211 array!103213 (_ BitVec 32) (_ BitVec 32) V!59141 V!59141 (_ BitVec 32) Int) ListLongMap!22323)

(assert (=> b!1547243 (= lt!666777 (getCurrentListMapNoExtraKeys!6621 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1547244 () Bool)

(declare-fun res!1060664 () Bool)

(declare-fun e!861263 () Bool)

(assert (=> b!1547244 (=> (not res!1060664) (not e!861263))))

(assert (=> b!1547244 (= res!1060664 (and (= (size!50355 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50354 _keys!618) (size!50355 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun bm!69824 () Bool)

(declare-fun call!69830 () ListLongMap!22323)

(declare-fun call!69827 () ListLongMap!22323)

(declare-fun call!69828 () ListLongMap!22323)

(declare-fun c!141925 () Bool)

(declare-fun call!69829 () ListLongMap!22323)

(declare-fun c!141924 () Bool)

(assert (=> bm!69824 (= call!69829 (+!4902 (ite c!141925 call!69828 (ite c!141924 call!69830 call!69827)) (ite (or c!141925 c!141924) (tuple2!24703 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1547245 () Bool)

(assert (=> b!1547245 (= e!861263 e!861261)))

(declare-fun res!1060665 () Bool)

(assert (=> b!1547245 (=> (not res!1060665) (not e!861261))))

(assert (=> b!1547245 (= res!1060665 (bvslt from!762 (size!50354 _keys!618)))))

(declare-fun lt!666776 () ListLongMap!22323)

(declare-fun e!861268 () ListLongMap!22323)

(assert (=> b!1547245 (= lt!666776 e!861268)))

(declare-fun lt!666779 () Bool)

(assert (=> b!1547245 (= c!141925 (and (not lt!666779) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1547245 (= lt!666779 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1547246 () Bool)

(declare-fun res!1060661 () Bool)

(assert (=> b!1547246 (=> (not res!1060661) (not e!861263))))

(assert (=> b!1547246 (= res!1060661 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50354 _keys!618))))))

(declare-fun b!1547247 () Bool)

(declare-fun e!861260 () Bool)

(declare-fun tp_is_empty!38023 () Bool)

(assert (=> b!1547247 (= e!861260 tp_is_empty!38023)))

(declare-fun res!1060663 () Bool)

(assert (=> start!132066 (=> (not res!1060663) (not e!861263))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132066 (= res!1060663 (validMask!0 mask!926))))

(assert (=> start!132066 e!861263))

(declare-fun array_inv!38657 (array!103211) Bool)

(assert (=> start!132066 (array_inv!38657 _keys!618)))

(assert (=> start!132066 tp_is_empty!38023))

(assert (=> start!132066 true))

(assert (=> start!132066 tp!111493))

(declare-fun e!861266 () Bool)

(declare-fun array_inv!38658 (array!103213) Bool)

(assert (=> start!132066 (and (array_inv!38658 _values!470) e!861266)))

(declare-fun b!1547248 () Bool)

(assert (=> b!1547248 (= e!861268 e!861265)))

(assert (=> b!1547248 (= c!141924 (and (not lt!666779) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1547249 () Bool)

(declare-fun res!1060666 () Bool)

(assert (=> b!1547249 (=> (not res!1060666) (not e!861263))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103211 (_ BitVec 32)) Bool)

(assert (=> b!1547249 (= res!1060666 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1547250 () Bool)

(declare-fun e!861267 () ListLongMap!22323)

(assert (=> b!1547250 (= e!861267 call!69831)))

(declare-fun b!1547251 () Bool)

(declare-fun res!1060667 () Bool)

(assert (=> b!1547251 (=> (not res!1060667) (not e!861263))))

(declare-datatypes ((List!36212 0))(
  ( (Nil!36209) (Cons!36208 (h!37654 (_ BitVec 64)) (t!50913 List!36212)) )
))
(declare-fun arrayNoDuplicates!0 (array!103211 (_ BitVec 32) List!36212) Bool)

(assert (=> b!1547251 (= res!1060667 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36209))))

(declare-fun bm!69825 () Bool)

(assert (=> bm!69825 (= call!69828 (getCurrentListMapNoExtraKeys!6621 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1547252 () Bool)

(declare-fun e!861264 () Bool)

(assert (=> b!1547252 (= e!861264 tp_is_empty!38023)))

(declare-fun bm!69826 () Bool)

(assert (=> bm!69826 (= call!69830 call!69828)))

(declare-fun b!1547253 () Bool)

(declare-fun c!141926 () Bool)

(assert (=> b!1547253 (= c!141926 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666779))))

(assert (=> b!1547253 (= e!861265 e!861267)))

(declare-fun bm!69827 () Bool)

(assert (=> bm!69827 (= call!69831 call!69829)))

(declare-fun mapIsEmpty!58738 () Bool)

(declare-fun mapRes!58738 () Bool)

(assert (=> mapIsEmpty!58738 mapRes!58738))

(declare-fun b!1547254 () Bool)

(declare-fun res!1060662 () Bool)

(assert (=> b!1547254 (=> (not res!1060662) (not e!861261))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1547254 (= res!1060662 (validKeyInArray!0 (select (arr!49803 _keys!618) from!762)))))

(declare-fun b!1547255 () Bool)

(assert (=> b!1547255 (= e!861268 (+!4902 call!69829 (tuple2!24703 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun bm!69828 () Bool)

(assert (=> bm!69828 (= call!69827 call!69830)))

(declare-fun b!1547256 () Bool)

(assert (=> b!1547256 (= e!861266 (and e!861264 mapRes!58738))))

(declare-fun condMapEmpty!58738 () Bool)

(declare-fun mapDefault!58738 () ValueCell!18101)

