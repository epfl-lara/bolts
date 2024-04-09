; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132244 () Bool)

(assert start!132244)

(declare-fun b_free!31887 () Bool)

(declare-fun b_next!31887 () Bool)

(assert (=> start!132244 (= b_free!31887 (not b_next!31887))))

(declare-fun tp!111919 () Bool)

(declare-fun b_and!51327 () Bool)

(assert (=> start!132244 (= tp!111919 b_and!51327)))

(declare-fun b!1550935 () Bool)

(declare-datatypes ((V!59327 0))(
  ( (V!59328 (val!19159 Int)) )
))
(declare-datatypes ((tuple2!24836 0))(
  ( (tuple2!24837 (_1!12428 (_ BitVec 64)) (_2!12428 V!59327)) )
))
(declare-datatypes ((List!36323 0))(
  ( (Nil!36320) (Cons!36319 (h!37765 tuple2!24836) (t!51040 List!36323)) )
))
(declare-datatypes ((ListLongMap!22457 0))(
  ( (ListLongMap!22458 (toList!11244 List!36323)) )
))
(declare-fun e!863377 () ListLongMap!22457)

(declare-fun call!70904 () ListLongMap!22457)

(assert (=> b!1550935 (= e!863377 call!70904)))

(declare-fun mapNonEmpty!58954 () Bool)

(declare-fun mapRes!58954 () Bool)

(declare-fun tp!111920 () Bool)

(declare-fun e!863383 () Bool)

(assert (=> mapNonEmpty!58954 (= mapRes!58954 (and tp!111920 e!863383))))

(declare-fun mapKey!58954 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18171 0))(
  ( (ValueCellFull!18171 (v!21959 V!59327)) (EmptyCell!18171) )
))
(declare-fun mapRest!58954 () (Array (_ BitVec 32) ValueCell!18171))

(declare-fun mapValue!58954 () ValueCell!18171)

(declare-datatypes ((array!103483 0))(
  ( (array!103484 (arr!49937 (Array (_ BitVec 32) ValueCell!18171)) (size!50488 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103483)

(assert (=> mapNonEmpty!58954 (= (arr!49937 _values!470) (store mapRest!58954 mapKey!58954 mapValue!58954))))

(declare-fun b!1550937 () Bool)

(declare-fun res!1062274 () Bool)

(declare-fun e!863384 () Bool)

(assert (=> b!1550937 (=> (not res!1062274) (not e!863384))))

(declare-datatypes ((array!103485 0))(
  ( (array!103486 (arr!49938 (Array (_ BitVec 32) (_ BitVec 64))) (size!50489 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103485)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1550937 (= res!1062274 (validKeyInArray!0 (select (arr!49938 _keys!618) from!762)))))

(declare-fun b!1550938 () Bool)

(assert (=> b!1550938 (= e!863384 (not true))))

(declare-fun lt!668429 () ListLongMap!22457)

(declare-fun minValue!436 () V!59327)

(declare-fun apply!1121 (ListLongMap!22457 (_ BitVec 64)) V!59327)

(declare-fun +!4952 (ListLongMap!22457 tuple2!24836) ListLongMap!22457)

(assert (=> b!1550938 (= (apply!1121 (+!4952 lt!668429 (tuple2!24837 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49938 _keys!618) from!762)) (apply!1121 lt!668429 (select (arr!49938 _keys!618) from!762)))))

(declare-datatypes ((Unit!51591 0))(
  ( (Unit!51592) )
))
(declare-fun lt!668430 () Unit!51591)

(declare-fun addApplyDifferent!622 (ListLongMap!22457 (_ BitVec 64) V!59327 (_ BitVec 64)) Unit!51591)

(assert (=> b!1550938 (= lt!668430 (addApplyDifferent!622 lt!668429 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49938 _keys!618) from!762)))))

(declare-fun zeroValue!436 () V!59327)

(declare-fun contains!10114 (ListLongMap!22457 (_ BitVec 64)) Bool)

(assert (=> b!1550938 (contains!10114 (+!4952 lt!668429 (tuple2!24837 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49938 _keys!618) from!762))))

(declare-fun lt!668431 () Unit!51591)

(declare-fun addStillContains!1289 (ListLongMap!22457 (_ BitVec 64) V!59327 (_ BitVec 64)) Unit!51591)

(assert (=> b!1550938 (= lt!668431 (addStillContains!1289 lt!668429 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49938 _keys!618) from!762)))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6670 (array!103485 array!103483 (_ BitVec 32) (_ BitVec 32) V!59327 V!59327 (_ BitVec 32) Int) ListLongMap!22457)

(assert (=> b!1550938 (= lt!668429 (getCurrentListMapNoExtraKeys!6670 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun bm!70901 () Bool)

(declare-fun call!70905 () ListLongMap!22457)

(assert (=> bm!70901 (= call!70904 call!70905)))

(declare-fun b!1550939 () Bool)

(declare-fun e!863379 () ListLongMap!22457)

(assert (=> b!1550939 (= e!863379 (+!4952 call!70905 (tuple2!24837 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun bm!70902 () Bool)

(declare-fun call!70907 () ListLongMap!22457)

(assert (=> bm!70902 (= call!70907 (getCurrentListMapNoExtraKeys!6670 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1550940 () Bool)

(declare-fun e!863382 () Bool)

(declare-fun tp_is_empty!38163 () Bool)

(assert (=> b!1550940 (= e!863382 tp_is_empty!38163)))

(declare-fun b!1550941 () Bool)

(declare-fun e!863378 () ListLongMap!22457)

(declare-fun call!70908 () ListLongMap!22457)

(assert (=> b!1550941 (= e!863378 call!70908)))

(declare-fun res!1062277 () Bool)

(declare-fun e!863380 () Bool)

(assert (=> start!132244 (=> (not res!1062277) (not e!863380))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132244 (= res!1062277 (validMask!0 mask!926))))

(assert (=> start!132244 e!863380))

(declare-fun array_inv!38749 (array!103485) Bool)

(assert (=> start!132244 (array_inv!38749 _keys!618)))

(assert (=> start!132244 tp_is_empty!38163))

(assert (=> start!132244 true))

(assert (=> start!132244 tp!111919))

(declare-fun e!863385 () Bool)

(declare-fun array_inv!38750 (array!103483) Bool)

(assert (=> start!132244 (and (array_inv!38750 _values!470) e!863385)))

(declare-fun b!1550936 () Bool)

(assert (=> b!1550936 (= e!863380 e!863384)))

(declare-fun res!1062273 () Bool)

(assert (=> b!1550936 (=> (not res!1062273) (not e!863384))))

(assert (=> b!1550936 (= res!1062273 (bvslt from!762 (size!50489 _keys!618)))))

(declare-fun lt!668433 () ListLongMap!22457)

(assert (=> b!1550936 (= lt!668433 e!863379)))

(declare-fun c!142633 () Bool)

(declare-fun lt!668432 () Bool)

(assert (=> b!1550936 (= c!142633 (and (not lt!668432) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1550936 (= lt!668432 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!58954 () Bool)

(assert (=> mapIsEmpty!58954 mapRes!58954))

(declare-fun bm!70903 () Bool)

(declare-fun call!70906 () ListLongMap!22457)

(assert (=> bm!70903 (= call!70908 call!70906)))

(declare-fun b!1550942 () Bool)

(declare-fun res!1062278 () Bool)

(assert (=> b!1550942 (=> (not res!1062278) (not e!863380))))

(assert (=> b!1550942 (= res!1062278 (and (= (size!50488 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50489 _keys!618) (size!50488 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1550943 () Bool)

(declare-fun res!1062275 () Bool)

(assert (=> b!1550943 (=> (not res!1062275) (not e!863380))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103485 (_ BitVec 32)) Bool)

(assert (=> b!1550943 (= res!1062275 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1550944 () Bool)

(declare-fun c!142634 () Bool)

(assert (=> b!1550944 (= c!142634 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!668432))))

(assert (=> b!1550944 (= e!863377 e!863378)))

(declare-fun b!1550945 () Bool)

(assert (=> b!1550945 (= e!863385 (and e!863382 mapRes!58954))))

(declare-fun condMapEmpty!58954 () Bool)

(declare-fun mapDefault!58954 () ValueCell!18171)

(assert (=> b!1550945 (= condMapEmpty!58954 (= (arr!49937 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18171)) mapDefault!58954)))))

(declare-fun b!1550946 () Bool)

(assert (=> b!1550946 (= e!863383 tp_is_empty!38163)))

(declare-fun bm!70904 () Bool)

(declare-fun c!142635 () Bool)

(assert (=> bm!70904 (= call!70905 (+!4952 (ite c!142633 call!70907 (ite c!142635 call!70906 call!70908)) (ite (or c!142633 c!142635) (tuple2!24837 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24837 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun bm!70905 () Bool)

(assert (=> bm!70905 (= call!70906 call!70907)))

(declare-fun b!1550947 () Bool)

(assert (=> b!1550947 (= e!863378 call!70904)))

(declare-fun b!1550948 () Bool)

(declare-fun res!1062276 () Bool)

(assert (=> b!1550948 (=> (not res!1062276) (not e!863380))))

(assert (=> b!1550948 (= res!1062276 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50489 _keys!618))))))

(declare-fun b!1550949 () Bool)

(declare-fun res!1062279 () Bool)

(assert (=> b!1550949 (=> (not res!1062279) (not e!863380))))

(declare-datatypes ((List!36324 0))(
  ( (Nil!36321) (Cons!36320 (h!37766 (_ BitVec 64)) (t!51041 List!36324)) )
))
(declare-fun arrayNoDuplicates!0 (array!103485 (_ BitVec 32) List!36324) Bool)

(assert (=> b!1550949 (= res!1062279 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36321))))

(declare-fun b!1550950 () Bool)

(assert (=> b!1550950 (= e!863379 e!863377)))

(assert (=> b!1550950 (= c!142635 (and (not lt!668432) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and start!132244 res!1062277) b!1550942))

(assert (= (and b!1550942 res!1062278) b!1550943))

(assert (= (and b!1550943 res!1062275) b!1550949))

(assert (= (and b!1550949 res!1062279) b!1550948))

(assert (= (and b!1550948 res!1062276) b!1550936))

(assert (= (and b!1550936 c!142633) b!1550939))

(assert (= (and b!1550936 (not c!142633)) b!1550950))

(assert (= (and b!1550950 c!142635) b!1550935))

(assert (= (and b!1550950 (not c!142635)) b!1550944))

(assert (= (and b!1550944 c!142634) b!1550947))

(assert (= (and b!1550944 (not c!142634)) b!1550941))

(assert (= (or b!1550947 b!1550941) bm!70903))

(assert (= (or b!1550935 bm!70903) bm!70905))

(assert (= (or b!1550935 b!1550947) bm!70901))

(assert (= (or b!1550939 bm!70905) bm!70902))

(assert (= (or b!1550939 bm!70901) bm!70904))

(assert (= (and b!1550936 res!1062273) b!1550937))

(assert (= (and b!1550937 res!1062274) b!1550938))

(assert (= (and b!1550945 condMapEmpty!58954) mapIsEmpty!58954))

(assert (= (and b!1550945 (not condMapEmpty!58954)) mapNonEmpty!58954))

(get-info :version)

(assert (= (and mapNonEmpty!58954 ((_ is ValueCellFull!18171) mapValue!58954)) b!1550946))

(assert (= (and b!1550945 ((_ is ValueCellFull!18171) mapDefault!58954)) b!1550940))

(assert (= start!132244 b!1550945))

(declare-fun m!1429705 () Bool)

(assert (=> start!132244 m!1429705))

(declare-fun m!1429707 () Bool)

(assert (=> start!132244 m!1429707))

(declare-fun m!1429709 () Bool)

(assert (=> start!132244 m!1429709))

(declare-fun m!1429711 () Bool)

(assert (=> mapNonEmpty!58954 m!1429711))

(declare-fun m!1429713 () Bool)

(assert (=> b!1550938 m!1429713))

(declare-fun m!1429715 () Bool)

(assert (=> b!1550938 m!1429715))

(declare-fun m!1429717 () Bool)

(assert (=> b!1550938 m!1429717))

(assert (=> b!1550938 m!1429713))

(declare-fun m!1429719 () Bool)

(assert (=> b!1550938 m!1429719))

(assert (=> b!1550938 m!1429713))

(assert (=> b!1550938 m!1429713))

(declare-fun m!1429721 () Bool)

(assert (=> b!1550938 m!1429721))

(declare-fun m!1429723 () Bool)

(assert (=> b!1550938 m!1429723))

(assert (=> b!1550938 m!1429713))

(declare-fun m!1429725 () Bool)

(assert (=> b!1550938 m!1429725))

(declare-fun m!1429727 () Bool)

(assert (=> b!1550938 m!1429727))

(assert (=> b!1550938 m!1429723))

(assert (=> b!1550938 m!1429713))

(declare-fun m!1429729 () Bool)

(assert (=> b!1550938 m!1429729))

(assert (=> b!1550938 m!1429717))

(declare-fun m!1429731 () Bool)

(assert (=> b!1550949 m!1429731))

(assert (=> bm!70902 m!1429727))

(declare-fun m!1429733 () Bool)

(assert (=> b!1550939 m!1429733))

(assert (=> b!1550937 m!1429713))

(assert (=> b!1550937 m!1429713))

(declare-fun m!1429735 () Bool)

(assert (=> b!1550937 m!1429735))

(declare-fun m!1429737 () Bool)

(assert (=> b!1550943 m!1429737))

(declare-fun m!1429739 () Bool)

(assert (=> bm!70904 m!1429739))

(check-sat (not b!1550937) tp_is_empty!38163 (not b!1550949) (not b!1550943) (not start!132244) (not bm!70904) (not mapNonEmpty!58954) (not b!1550938) (not b!1550939) (not bm!70902) (not b_next!31887) b_and!51327)
(check-sat b_and!51327 (not b_next!31887))
