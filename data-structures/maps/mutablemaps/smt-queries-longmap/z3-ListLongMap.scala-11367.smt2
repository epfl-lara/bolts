; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132140 () Bool)

(assert start!132140)

(declare-fun b_free!31821 () Bool)

(declare-fun b_next!31821 () Bool)

(assert (=> start!132140 (= b_free!31821 (not b_next!31821))))

(declare-fun tp!111715 () Bool)

(declare-fun b_and!51241 () Bool)

(assert (=> start!132140 (= tp!111715 b_and!51241)))

(declare-fun b!1549018 () Bool)

(declare-fun e!862260 () Bool)

(declare-fun tp_is_empty!38097 () Bool)

(assert (=> b!1549018 (= e!862260 tp_is_empty!38097)))

(declare-fun mapNonEmpty!58849 () Bool)

(declare-fun mapRes!58849 () Bool)

(declare-fun tp!111716 () Bool)

(assert (=> mapNonEmpty!58849 (= mapRes!58849 (and tp!111716 e!862260))))

(declare-fun mapKey!58849 () (_ BitVec 32))

(declare-datatypes ((V!59239 0))(
  ( (V!59240 (val!19126 Int)) )
))
(declare-datatypes ((ValueCell!18138 0))(
  ( (ValueCellFull!18138 (v!21924 V!59239)) (EmptyCell!18138) )
))
(declare-datatypes ((array!103355 0))(
  ( (array!103356 (arr!49875 (Array (_ BitVec 32) ValueCell!18138)) (size!50426 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103355)

(declare-fun mapValue!58849 () ValueCell!18138)

(declare-fun mapRest!58849 () (Array (_ BitVec 32) ValueCell!18138))

(assert (=> mapNonEmpty!58849 (= (arr!49875 _values!470) (store mapRest!58849 mapKey!58849 mapValue!58849))))

(declare-fun b!1549019 () Bool)

(declare-fun e!862262 () Bool)

(assert (=> b!1549019 (= e!862262 tp_is_empty!38097)))

(declare-fun bm!70379 () Bool)

(declare-datatypes ((tuple2!24774 0))(
  ( (tuple2!24775 (_1!12397 (_ BitVec 64)) (_2!12397 V!59239)) )
))
(declare-datatypes ((List!36274 0))(
  ( (Nil!36271) (Cons!36270 (h!37716 tuple2!24774) (t!50975 List!36274)) )
))
(declare-datatypes ((ListLongMap!22395 0))(
  ( (ListLongMap!22396 (toList!11213 List!36274)) )
))
(declare-fun call!70384 () ListLongMap!22395)

(declare-fun call!70385 () ListLongMap!22395)

(assert (=> bm!70379 (= call!70384 call!70385)))

(declare-fun b!1549020 () Bool)

(declare-fun e!862259 () ListLongMap!22395)

(declare-fun call!70383 () ListLongMap!22395)

(declare-fun minValue!436 () V!59239)

(declare-fun +!4931 (ListLongMap!22395 tuple2!24774) ListLongMap!22395)

(assert (=> b!1549020 (= e!862259 (+!4931 call!70383 (tuple2!24775 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1549021 () Bool)

(declare-fun e!862263 () ListLongMap!22395)

(assert (=> b!1549021 (= e!862259 e!862263)))

(declare-fun c!142259 () Bool)

(declare-fun lt!667616 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1549021 (= c!142259 (and (not lt!667616) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1549022 () Bool)

(declare-fun res!1061443 () Bool)

(declare-fun e!862261 () Bool)

(assert (=> b!1549022 (=> (not res!1061443) (not e!862261))))

(declare-datatypes ((array!103357 0))(
  ( (array!103358 (arr!49876 (Array (_ BitVec 32) (_ BitVec 64))) (size!50427 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103357)

(declare-datatypes ((List!36275 0))(
  ( (Nil!36272) (Cons!36271 (h!37717 (_ BitVec 64)) (t!50976 List!36275)) )
))
(declare-fun arrayNoDuplicates!0 (array!103357 (_ BitVec 32) List!36275) Bool)

(assert (=> b!1549022 (= res!1061443 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36272))))

(declare-fun b!1549023 () Bool)

(declare-fun e!862265 () ListLongMap!22395)

(declare-fun call!70386 () ListLongMap!22395)

(assert (=> b!1549023 (= e!862265 call!70386)))

(declare-fun res!1061441 () Bool)

(assert (=> start!132140 (=> (not res!1061441) (not e!862261))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132140 (= res!1061441 (validMask!0 mask!926))))

(assert (=> start!132140 e!862261))

(declare-fun array_inv!38709 (array!103357) Bool)

(assert (=> start!132140 (array_inv!38709 _keys!618)))

(assert (=> start!132140 tp_is_empty!38097))

(assert (=> start!132140 true))

(assert (=> start!132140 tp!111715))

(declare-fun e!862266 () Bool)

(declare-fun array_inv!38710 (array!103355) Bool)

(assert (=> start!132140 (and (array_inv!38710 _values!470) e!862266)))

(declare-fun b!1549024 () Bool)

(declare-fun e!862267 () Bool)

(assert (=> b!1549024 (= e!862261 e!862267)))

(declare-fun res!1061440 () Bool)

(assert (=> b!1549024 (=> (not res!1061440) (not e!862267))))

(declare-fun from!762 () (_ BitVec 32))

(assert (=> b!1549024 (= res!1061440 (bvslt from!762 (size!50427 _keys!618)))))

(declare-fun lt!667619 () ListLongMap!22395)

(assert (=> b!1549024 (= lt!667619 e!862259)))

(declare-fun c!142258 () Bool)

(assert (=> b!1549024 (= c!142258 (and (not lt!667616) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1549024 (= lt!667616 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1549025 () Bool)

(declare-fun res!1061438 () Bool)

(assert (=> b!1549025 (=> (not res!1061438) (not e!862261))))

(assert (=> b!1549025 (= res!1061438 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50427 _keys!618))))))

(declare-fun zeroValue!436 () V!59239)

(declare-fun defaultEntry!478 () Int)

(declare-fun bm!70380 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6650 (array!103357 array!103355 (_ BitVec 32) (_ BitVec 32) V!59239 V!59239 (_ BitVec 32) Int) ListLongMap!22395)

(assert (=> bm!70380 (= call!70385 (getCurrentListMapNoExtraKeys!6650 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun mapIsEmpty!58849 () Bool)

(assert (=> mapIsEmpty!58849 mapRes!58849))

(declare-fun b!1549026 () Bool)

(declare-fun call!70382 () ListLongMap!22395)

(assert (=> b!1549026 (= e!862265 call!70382)))

(declare-fun b!1549027 () Bool)

(assert (=> b!1549027 (= e!862266 (and e!862262 mapRes!58849))))

(declare-fun condMapEmpty!58849 () Bool)

(declare-fun mapDefault!58849 () ValueCell!18138)

(assert (=> b!1549027 (= condMapEmpty!58849 (= (arr!49875 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18138)) mapDefault!58849)))))

(declare-fun b!1549028 () Bool)

(declare-fun res!1061439 () Bool)

(assert (=> b!1549028 (=> (not res!1061439) (not e!862267))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1549028 (= res!1061439 (validKeyInArray!0 (select (arr!49876 _keys!618) from!762)))))

(declare-fun b!1549029 () Bool)

(declare-fun res!1061442 () Bool)

(assert (=> b!1549029 (=> (not res!1061442) (not e!862261))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103357 (_ BitVec 32)) Bool)

(assert (=> b!1549029 (= res!1061442 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1549030 () Bool)

(declare-fun c!142257 () Bool)

(assert (=> b!1549030 (= c!142257 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!667616))))

(assert (=> b!1549030 (= e!862263 e!862265)))

(declare-fun bm!70381 () Bool)

(assert (=> bm!70381 (= call!70382 call!70383)))

(declare-fun b!1549031 () Bool)

(assert (=> b!1549031 (= e!862263 call!70382)))

(declare-fun b!1549032 () Bool)

(assert (=> b!1549032 (= e!862267 (not true))))

(declare-fun lt!667617 () V!59239)

(declare-fun lt!667618 () ListLongMap!22395)

(declare-fun apply!1111 (ListLongMap!22395 (_ BitVec 64)) V!59239)

(assert (=> b!1549032 (= (apply!1111 lt!667618 (select (arr!49876 _keys!618) from!762)) lt!667617)))

(declare-fun lt!667612 () ListLongMap!22395)

(declare-datatypes ((Unit!51552 0))(
  ( (Unit!51553) )
))
(declare-fun lt!667615 () Unit!51552)

(declare-fun addApplyDifferent!614 (ListLongMap!22395 (_ BitVec 64) V!59239 (_ BitVec 64)) Unit!51552)

(assert (=> b!1549032 (= lt!667615 (addApplyDifferent!614 lt!667612 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49876 _keys!618) from!762)))))

(declare-fun lt!667611 () V!59239)

(assert (=> b!1549032 (= lt!667611 lt!667617)))

(assert (=> b!1549032 (= lt!667617 (apply!1111 lt!667612 (select (arr!49876 _keys!618) from!762)))))

(assert (=> b!1549032 (= lt!667611 (apply!1111 (+!4931 lt!667612 (tuple2!24775 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49876 _keys!618) from!762)))))

(declare-fun lt!667614 () Unit!51552)

(assert (=> b!1549032 (= lt!667614 (addApplyDifferent!614 lt!667612 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49876 _keys!618) from!762)))))

(declare-fun contains!10095 (ListLongMap!22395 (_ BitVec 64)) Bool)

(assert (=> b!1549032 (contains!10095 lt!667618 (select (arr!49876 _keys!618) from!762))))

(assert (=> b!1549032 (= lt!667618 (+!4931 lt!667612 (tuple2!24775 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(declare-fun lt!667613 () Unit!51552)

(declare-fun addStillContains!1277 (ListLongMap!22395 (_ BitVec 64) V!59239 (_ BitVec 64)) Unit!51552)

(assert (=> b!1549032 (= lt!667613 (addStillContains!1277 lt!667612 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49876 _keys!618) from!762)))))

(assert (=> b!1549032 (= lt!667612 (getCurrentListMapNoExtraKeys!6650 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun bm!70382 () Bool)

(assert (=> bm!70382 (= call!70386 call!70384)))

(declare-fun bm!70383 () Bool)

(assert (=> bm!70383 (= call!70383 (+!4931 (ite c!142258 call!70385 (ite c!142259 call!70384 call!70386)) (ite (or c!142258 c!142259) (tuple2!24775 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24775 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1549033 () Bool)

(declare-fun res!1061444 () Bool)

(assert (=> b!1549033 (=> (not res!1061444) (not e!862261))))

(assert (=> b!1549033 (= res!1061444 (and (= (size!50426 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50427 _keys!618) (size!50426 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(assert (= (and start!132140 res!1061441) b!1549033))

(assert (= (and b!1549033 res!1061444) b!1549029))

(assert (= (and b!1549029 res!1061442) b!1549022))

(assert (= (and b!1549022 res!1061443) b!1549025))

(assert (= (and b!1549025 res!1061438) b!1549024))

(assert (= (and b!1549024 c!142258) b!1549020))

(assert (= (and b!1549024 (not c!142258)) b!1549021))

(assert (= (and b!1549021 c!142259) b!1549031))

(assert (= (and b!1549021 (not c!142259)) b!1549030))

(assert (= (and b!1549030 c!142257) b!1549026))

(assert (= (and b!1549030 (not c!142257)) b!1549023))

(assert (= (or b!1549026 b!1549023) bm!70382))

(assert (= (or b!1549031 bm!70382) bm!70379))

(assert (= (or b!1549031 b!1549026) bm!70381))

(assert (= (or b!1549020 bm!70379) bm!70380))

(assert (= (or b!1549020 bm!70381) bm!70383))

(assert (= (and b!1549024 res!1061440) b!1549028))

(assert (= (and b!1549028 res!1061439) b!1549032))

(assert (= (and b!1549027 condMapEmpty!58849) mapIsEmpty!58849))

(assert (= (and b!1549027 (not condMapEmpty!58849)) mapNonEmpty!58849))

(get-info :version)

(assert (= (and mapNonEmpty!58849 ((_ is ValueCellFull!18138) mapValue!58849)) b!1549018))

(assert (= (and b!1549027 ((_ is ValueCellFull!18138) mapDefault!58849)) b!1549019))

(assert (= start!132140 b!1549027))

(declare-fun m!1428353 () Bool)

(assert (=> start!132140 m!1428353))

(declare-fun m!1428355 () Bool)

(assert (=> start!132140 m!1428355))

(declare-fun m!1428357 () Bool)

(assert (=> start!132140 m!1428357))

(declare-fun m!1428359 () Bool)

(assert (=> b!1549022 m!1428359))

(declare-fun m!1428361 () Bool)

(assert (=> b!1549020 m!1428361))

(declare-fun m!1428363 () Bool)

(assert (=> bm!70383 m!1428363))

(declare-fun m!1428365 () Bool)

(assert (=> b!1549029 m!1428365))

(declare-fun m!1428367 () Bool)

(assert (=> b!1549028 m!1428367))

(assert (=> b!1549028 m!1428367))

(declare-fun m!1428369 () Bool)

(assert (=> b!1549028 m!1428369))

(declare-fun m!1428371 () Bool)

(assert (=> mapNonEmpty!58849 m!1428371))

(assert (=> b!1549032 m!1428367))

(declare-fun m!1428373 () Bool)

(assert (=> b!1549032 m!1428373))

(assert (=> b!1549032 m!1428367))

(declare-fun m!1428375 () Bool)

(assert (=> b!1549032 m!1428375))

(declare-fun m!1428377 () Bool)

(assert (=> b!1549032 m!1428377))

(assert (=> b!1549032 m!1428367))

(declare-fun m!1428379 () Bool)

(assert (=> b!1549032 m!1428379))

(assert (=> b!1549032 m!1428367))

(declare-fun m!1428381 () Bool)

(assert (=> b!1549032 m!1428381))

(assert (=> b!1549032 m!1428367))

(declare-fun m!1428383 () Bool)

(assert (=> b!1549032 m!1428383))

(assert (=> b!1549032 m!1428367))

(declare-fun m!1428385 () Bool)

(assert (=> b!1549032 m!1428385))

(assert (=> b!1549032 m!1428383))

(assert (=> b!1549032 m!1428367))

(declare-fun m!1428387 () Bool)

(assert (=> b!1549032 m!1428387))

(assert (=> b!1549032 m!1428367))

(declare-fun m!1428389 () Bool)

(assert (=> b!1549032 m!1428389))

(declare-fun m!1428391 () Bool)

(assert (=> b!1549032 m!1428391))

(assert (=> bm!70380 m!1428377))

(check-sat (not b_next!31821) (not mapNonEmpty!58849) (not b!1549029) tp_is_empty!38097 (not bm!70383) (not b!1549020) (not b!1549032) (not bm!70380) (not b!1549028) b_and!51241 (not b!1549022) (not start!132140))
(check-sat b_and!51241 (not b_next!31821))
