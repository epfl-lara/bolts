; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132002 () Bool)

(assert start!132002)

(declare-fun b_free!31683 () Bool)

(declare-fun b_next!31683 () Bool)

(assert (=> start!132002 (= b_free!31683 (not b_next!31683))))

(declare-fun tp!111301 () Bool)

(declare-fun b_and!51103 () Bool)

(assert (=> start!132002 (= tp!111301 b_and!51103)))

(declare-fun bm!69344 () Bool)

(declare-datatypes ((array!103091 0))(
  ( (array!103092 (arr!49743 (Array (_ BitVec 32) (_ BitVec 64))) (size!50294 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103091)

(declare-datatypes ((V!59055 0))(
  ( (V!59056 (val!19057 Int)) )
))
(declare-fun zeroValue!436 () V!59055)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-datatypes ((tuple2!24642 0))(
  ( (tuple2!24643 (_1!12331 (_ BitVec 64)) (_2!12331 V!59055)) )
))
(declare-datatypes ((List!36155 0))(
  ( (Nil!36152) (Cons!36151 (h!37597 tuple2!24642) (t!50856 List!36155)) )
))
(declare-datatypes ((ListLongMap!22263 0))(
  ( (ListLongMap!22264 (toList!11147 List!36155)) )
))
(declare-fun call!69348 () ListLongMap!22263)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18069 0))(
  ( (ValueCellFull!18069 (v!21855 V!59055)) (EmptyCell!18069) )
))
(declare-datatypes ((array!103093 0))(
  ( (array!103094 (arr!49744 (Array (_ BitVec 32) ValueCell!18069)) (size!50295 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103093)

(declare-fun minValue!436 () V!59055)

(declare-fun getCurrentListMapNoExtraKeys!6596 (array!103091 array!103093 (_ BitVec 32) (_ BitVec 32) V!59055 V!59055 (_ BitVec 32) Int) ListLongMap!22263)

(assert (=> bm!69344 (= call!69348 (getCurrentListMapNoExtraKeys!6596 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1545706 () Bool)

(declare-fun e!860402 () Bool)

(declare-fun tp_is_empty!37959 () Bool)

(assert (=> b!1545706 (= e!860402 tp_is_empty!37959)))

(declare-fun res!1059990 () Bool)

(declare-fun e!860398 () Bool)

(assert (=> start!132002 (=> (not res!1059990) (not e!860398))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132002 (= res!1059990 (validMask!0 mask!926))))

(assert (=> start!132002 e!860398))

(declare-fun array_inv!38611 (array!103091) Bool)

(assert (=> start!132002 (array_inv!38611 _keys!618)))

(assert (=> start!132002 tp_is_empty!37959))

(assert (=> start!132002 true))

(assert (=> start!132002 tp!111301))

(declare-fun e!860397 () Bool)

(declare-fun array_inv!38612 (array!103093) Bool)

(assert (=> start!132002 (and (array_inv!38612 _values!470) e!860397)))

(declare-fun b!1545707 () Bool)

(declare-fun e!860396 () Bool)

(assert (=> b!1545707 (= e!860396 tp_is_empty!37959)))

(declare-fun b!1545708 () Bool)

(declare-fun res!1059989 () Bool)

(assert (=> b!1545708 (=> (not res!1059989) (not e!860398))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103091 (_ BitVec 32)) Bool)

(assert (=> b!1545708 (= res!1059989 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1545709 () Bool)

(declare-fun e!860404 () ListLongMap!22263)

(declare-fun call!69350 () ListLongMap!22263)

(assert (=> b!1545709 (= e!860404 call!69350)))

(declare-fun b!1545710 () Bool)

(declare-fun e!860403 () ListLongMap!22263)

(declare-fun e!860399 () ListLongMap!22263)

(assert (=> b!1545710 (= e!860403 e!860399)))

(declare-fun c!141638 () Bool)

(declare-fun lt!666335 () Bool)

(assert (=> b!1545710 (= c!141638 (and (not lt!666335) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1545711 () Bool)

(declare-fun res!1059992 () Bool)

(assert (=> b!1545711 (=> (not res!1059992) (not e!860398))))

(assert (=> b!1545711 (= res!1059992 (and (= (size!50295 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50294 _keys!618) (size!50295 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!58642 () Bool)

(declare-fun mapRes!58642 () Bool)

(declare-fun tp!111302 () Bool)

(assert (=> mapNonEmpty!58642 (= mapRes!58642 (and tp!111302 e!860396))))

(declare-fun mapKey!58642 () (_ BitVec 32))

(declare-fun mapValue!58642 () ValueCell!18069)

(declare-fun mapRest!58642 () (Array (_ BitVec 32) ValueCell!18069))

(assert (=> mapNonEmpty!58642 (= (arr!49744 _values!470) (store mapRest!58642 mapKey!58642 mapValue!58642))))

(declare-fun b!1545712 () Bool)

(declare-fun res!1059993 () Bool)

(assert (=> b!1545712 (=> (not res!1059993) (not e!860398))))

(declare-datatypes ((List!36156 0))(
  ( (Nil!36153) (Cons!36152 (h!37598 (_ BitVec 64)) (t!50857 List!36156)) )
))
(declare-fun arrayNoDuplicates!0 (array!103091 (_ BitVec 32) List!36156) Bool)

(assert (=> b!1545712 (= res!1059993 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36153))))

(declare-fun call!69349 () ListLongMap!22263)

(declare-fun c!141637 () Bool)

(declare-fun call!69347 () ListLongMap!22263)

(declare-fun bm!69345 () Bool)

(declare-fun +!4877 (ListLongMap!22263 tuple2!24642) ListLongMap!22263)

(assert (=> bm!69345 (= call!69347 (+!4877 (ite c!141637 call!69348 (ite c!141638 call!69349 call!69350)) (ite (or c!141637 c!141638) (tuple2!24643 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24643 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1545713 () Bool)

(declare-fun res!1059995 () Bool)

(declare-fun e!860400 () Bool)

(assert (=> b!1545713 (=> (not res!1059995) (not e!860400))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1545713 (= res!1059995 (validKeyInArray!0 (select (arr!49743 _keys!618) from!762)))))

(declare-fun b!1545714 () Bool)

(declare-fun c!141636 () Bool)

(assert (=> b!1545714 (= c!141636 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666335))))

(assert (=> b!1545714 (= e!860399 e!860404)))

(declare-fun b!1545715 () Bool)

(declare-fun call!69351 () ListLongMap!22263)

(assert (=> b!1545715 (= e!860399 call!69351)))

(declare-fun bm!69346 () Bool)

(assert (=> bm!69346 (= call!69349 call!69348)))

(declare-fun b!1545716 () Bool)

(assert (=> b!1545716 (= e!860403 (+!4877 call!69347 (tuple2!24643 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1545717 () Bool)

(assert (=> b!1545717 (= e!860398 e!860400)))

(declare-fun res!1059991 () Bool)

(assert (=> b!1545717 (=> (not res!1059991) (not e!860400))))

(assert (=> b!1545717 (= res!1059991 (bvslt from!762 (size!50294 _keys!618)))))

(declare-fun lt!666337 () ListLongMap!22263)

(assert (=> b!1545717 (= lt!666337 e!860403)))

(assert (=> b!1545717 (= c!141637 (and (not lt!666335) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1545717 (= lt!666335 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!69347 () Bool)

(assert (=> bm!69347 (= call!69351 call!69347)))

(declare-fun mapIsEmpty!58642 () Bool)

(assert (=> mapIsEmpty!58642 mapRes!58642))

(declare-fun bm!69348 () Bool)

(assert (=> bm!69348 (= call!69350 call!69349)))

(declare-fun b!1545718 () Bool)

(declare-fun res!1059994 () Bool)

(assert (=> b!1545718 (=> (not res!1059994) (not e!860398))))

(assert (=> b!1545718 (= res!1059994 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50294 _keys!618))))))

(declare-fun b!1545719 () Bool)

(assert (=> b!1545719 (= e!860400 (not true))))

(declare-fun lt!666336 () ListLongMap!22263)

(declare-fun contains!10049 (ListLongMap!22263 (_ BitVec 64)) Bool)

(assert (=> b!1545719 (contains!10049 (+!4877 lt!666336 (tuple2!24643 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49743 _keys!618) from!762))))

(declare-datatypes ((Unit!51460 0))(
  ( (Unit!51461) )
))
(declare-fun lt!666338 () Unit!51460)

(declare-fun addStillContains!1231 (ListLongMap!22263 (_ BitVec 64) V!59055 (_ BitVec 64)) Unit!51460)

(assert (=> b!1545719 (= lt!666338 (addStillContains!1231 lt!666336 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49743 _keys!618) from!762)))))

(assert (=> b!1545719 (= lt!666336 (getCurrentListMapNoExtraKeys!6596 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1545720 () Bool)

(assert (=> b!1545720 (= e!860404 call!69351)))

(declare-fun b!1545721 () Bool)

(assert (=> b!1545721 (= e!860397 (and e!860402 mapRes!58642))))

(declare-fun condMapEmpty!58642 () Bool)

(declare-fun mapDefault!58642 () ValueCell!18069)

(assert (=> b!1545721 (= condMapEmpty!58642 (= (arr!49744 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18069)) mapDefault!58642)))))

(assert (= (and start!132002 res!1059990) b!1545711))

(assert (= (and b!1545711 res!1059992) b!1545708))

(assert (= (and b!1545708 res!1059989) b!1545712))

(assert (= (and b!1545712 res!1059993) b!1545718))

(assert (= (and b!1545718 res!1059994) b!1545717))

(assert (= (and b!1545717 c!141637) b!1545716))

(assert (= (and b!1545717 (not c!141637)) b!1545710))

(assert (= (and b!1545710 c!141638) b!1545715))

(assert (= (and b!1545710 (not c!141638)) b!1545714))

(assert (= (and b!1545714 c!141636) b!1545720))

(assert (= (and b!1545714 (not c!141636)) b!1545709))

(assert (= (or b!1545720 b!1545709) bm!69348))

(assert (= (or b!1545715 bm!69348) bm!69346))

(assert (= (or b!1545715 b!1545720) bm!69347))

(assert (= (or b!1545716 bm!69346) bm!69344))

(assert (= (or b!1545716 bm!69347) bm!69345))

(assert (= (and b!1545717 res!1059991) b!1545713))

(assert (= (and b!1545713 res!1059995) b!1545719))

(assert (= (and b!1545721 condMapEmpty!58642) mapIsEmpty!58642))

(assert (= (and b!1545721 (not condMapEmpty!58642)) mapNonEmpty!58642))

(get-info :version)

(assert (= (and mapNonEmpty!58642 ((_ is ValueCellFull!18069) mapValue!58642)) b!1545707))

(assert (= (and b!1545721 ((_ is ValueCellFull!18069) mapDefault!58642)) b!1545706))

(assert (= start!132002 b!1545721))

(declare-fun m!1425905 () Bool)

(assert (=> b!1545712 m!1425905))

(declare-fun m!1425907 () Bool)

(assert (=> bm!69344 m!1425907))

(declare-fun m!1425909 () Bool)

(assert (=> start!132002 m!1425909))

(declare-fun m!1425911 () Bool)

(assert (=> start!132002 m!1425911))

(declare-fun m!1425913 () Bool)

(assert (=> start!132002 m!1425913))

(declare-fun m!1425915 () Bool)

(assert (=> b!1545716 m!1425915))

(declare-fun m!1425917 () Bool)

(assert (=> bm!69345 m!1425917))

(declare-fun m!1425919 () Bool)

(assert (=> b!1545708 m!1425919))

(declare-fun m!1425921 () Bool)

(assert (=> b!1545713 m!1425921))

(assert (=> b!1545713 m!1425921))

(declare-fun m!1425923 () Bool)

(assert (=> b!1545713 m!1425923))

(assert (=> b!1545719 m!1425907))

(assert (=> b!1545719 m!1425921))

(declare-fun m!1425925 () Bool)

(assert (=> b!1545719 m!1425925))

(assert (=> b!1545719 m!1425925))

(assert (=> b!1545719 m!1425921))

(declare-fun m!1425927 () Bool)

(assert (=> b!1545719 m!1425927))

(assert (=> b!1545719 m!1425921))

(declare-fun m!1425929 () Bool)

(assert (=> b!1545719 m!1425929))

(declare-fun m!1425931 () Bool)

(assert (=> mapNonEmpty!58642 m!1425931))

(check-sat tp_is_empty!37959 (not bm!69345) (not b!1545713) (not b!1545708) (not b!1545716) b_and!51103 (not b!1545712) (not start!132002) (not b_next!31683) (not bm!69344) (not mapNonEmpty!58642) (not b!1545719))
(check-sat b_and!51103 (not b_next!31683))
