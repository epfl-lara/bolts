; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131948 () Bool)

(assert start!131948)

(declare-fun b_free!31629 () Bool)

(declare-fun b_next!31629 () Bool)

(assert (=> start!131948 (= b_free!31629 (not b_next!31629))))

(declare-fun tp!111140 () Bool)

(declare-fun b_and!51049 () Bool)

(assert (=> start!131948 (= tp!111140 b_and!51049)))

(declare-fun b!1544472 () Bool)

(declare-fun res!1059488 () Bool)

(declare-fun e!859701 () Bool)

(assert (=> b!1544472 (=> (not res!1059488) (not e!859701))))

(declare-datatypes ((array!102983 0))(
  ( (array!102984 (arr!49689 (Array (_ BitVec 32) (_ BitVec 64))) (size!50240 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102983)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102983 (_ BitVec 32)) Bool)

(assert (=> b!1544472 (= res!1059488 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1544473 () Bool)

(declare-fun e!859698 () Bool)

(declare-fun e!859705 () Bool)

(declare-fun mapRes!58561 () Bool)

(assert (=> b!1544473 (= e!859698 (and e!859705 mapRes!58561))))

(declare-fun condMapEmpty!58561 () Bool)

(declare-datatypes ((V!58983 0))(
  ( (V!58984 (val!19030 Int)) )
))
(declare-datatypes ((ValueCell!18042 0))(
  ( (ValueCellFull!18042 (v!21828 V!58983)) (EmptyCell!18042) )
))
(declare-datatypes ((array!102985 0))(
  ( (array!102986 (arr!49690 (Array (_ BitVec 32) ValueCell!18042)) (size!50241 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102985)

(declare-fun mapDefault!58561 () ValueCell!18042)

(assert (=> b!1544473 (= condMapEmpty!58561 (= (arr!49690 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18042)) mapDefault!58561)))))

(declare-fun c!141393 () Bool)

(declare-datatypes ((tuple2!24588 0))(
  ( (tuple2!24589 (_1!12304 (_ BitVec 64)) (_2!12304 V!58983)) )
))
(declare-datatypes ((List!36107 0))(
  ( (Nil!36104) (Cons!36103 (h!37549 tuple2!24588) (t!50808 List!36107)) )
))
(declare-datatypes ((ListLongMap!22209 0))(
  ( (ListLongMap!22210 (toList!11120 List!36107)) )
))
(declare-fun call!68945 () ListLongMap!22209)

(declare-fun minValue!436 () V!58983)

(declare-fun c!141394 () Bool)

(declare-fun bm!68939 () Bool)

(declare-fun call!68942 () ListLongMap!22209)

(declare-fun zeroValue!436 () V!58983)

(declare-fun call!68946 () ListLongMap!22209)

(declare-fun call!68943 () ListLongMap!22209)

(declare-fun +!4854 (ListLongMap!22209 tuple2!24588) ListLongMap!22209)

(assert (=> bm!68939 (= call!68942 (+!4854 (ite c!141393 call!68945 (ite c!141394 call!68946 call!68943)) (ite (or c!141393 c!141394) (tuple2!24589 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24589 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun bm!68940 () Bool)

(assert (=> bm!68940 (= call!68943 call!68946)))

(declare-fun bm!68941 () Bool)

(declare-fun call!68944 () ListLongMap!22209)

(assert (=> bm!68941 (= call!68944 call!68942)))

(declare-fun b!1544474 () Bool)

(declare-fun e!859699 () Bool)

(declare-fun tp_is_empty!37905 () Bool)

(assert (=> b!1544474 (= e!859699 tp_is_empty!37905)))

(declare-fun b!1544475 () Bool)

(assert (=> b!1544475 (= e!859701 false)))

(declare-fun lt!666083 () ListLongMap!22209)

(declare-fun e!859703 () ListLongMap!22209)

(assert (=> b!1544475 (= lt!666083 e!859703)))

(declare-fun lt!666082 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1544475 (= c!141393 (and (not lt!666082) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1544475 (= lt!666082 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!478 () Int)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun bm!68942 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6570 (array!102983 array!102985 (_ BitVec 32) (_ BitVec 32) V!58983 V!58983 (_ BitVec 32) Int) ListLongMap!22209)

(assert (=> bm!68942 (= call!68945 (getCurrentListMapNoExtraKeys!6570 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1544476 () Bool)

(declare-fun e!859700 () ListLongMap!22209)

(assert (=> b!1544476 (= e!859700 call!68944)))

(declare-fun b!1544477 () Bool)

(declare-fun res!1059484 () Bool)

(assert (=> b!1544477 (=> (not res!1059484) (not e!859701))))

(declare-datatypes ((List!36108 0))(
  ( (Nil!36105) (Cons!36104 (h!37550 (_ BitVec 64)) (t!50809 List!36108)) )
))
(declare-fun arrayNoDuplicates!0 (array!102983 (_ BitVec 32) List!36108) Bool)

(assert (=> b!1544477 (= res!1059484 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36105))))

(declare-fun b!1544478 () Bool)

(assert (=> b!1544478 (= e!859700 call!68943)))

(declare-fun mapIsEmpty!58561 () Bool)

(assert (=> mapIsEmpty!58561 mapRes!58561))

(declare-fun mapNonEmpty!58561 () Bool)

(declare-fun tp!111139 () Bool)

(assert (=> mapNonEmpty!58561 (= mapRes!58561 (and tp!111139 e!859699))))

(declare-fun mapKey!58561 () (_ BitVec 32))

(declare-fun mapRest!58561 () (Array (_ BitVec 32) ValueCell!18042))

(declare-fun mapValue!58561 () ValueCell!18042)

(assert (=> mapNonEmpty!58561 (= (arr!49690 _values!470) (store mapRest!58561 mapKey!58561 mapValue!58561))))

(declare-fun b!1544479 () Bool)

(assert (=> b!1544479 (= e!859705 tp_is_empty!37905)))

(declare-fun b!1544480 () Bool)

(assert (=> b!1544480 (= e!859703 (+!4854 call!68942 (tuple2!24589 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun res!1059487 () Bool)

(assert (=> start!131948 (=> (not res!1059487) (not e!859701))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131948 (= res!1059487 (validMask!0 mask!926))))

(assert (=> start!131948 e!859701))

(declare-fun array_inv!38573 (array!102983) Bool)

(assert (=> start!131948 (array_inv!38573 _keys!618)))

(assert (=> start!131948 tp_is_empty!37905))

(assert (=> start!131948 true))

(assert (=> start!131948 tp!111140))

(declare-fun array_inv!38574 (array!102985) Bool)

(assert (=> start!131948 (and (array_inv!38574 _values!470) e!859698)))

(declare-fun b!1544481 () Bool)

(declare-fun res!1059486 () Bool)

(assert (=> b!1544481 (=> (not res!1059486) (not e!859701))))

(assert (=> b!1544481 (= res!1059486 (and (= (size!50241 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50240 _keys!618) (size!50241 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1544482 () Bool)

(declare-fun c!141395 () Bool)

(assert (=> b!1544482 (= c!141395 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666082))))

(declare-fun e!859704 () ListLongMap!22209)

(assert (=> b!1544482 (= e!859704 e!859700)))

(declare-fun b!1544483 () Bool)

(assert (=> b!1544483 (= e!859703 e!859704)))

(assert (=> b!1544483 (= c!141394 (and (not lt!666082) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!68943 () Bool)

(assert (=> bm!68943 (= call!68946 call!68945)))

(declare-fun b!1544484 () Bool)

(declare-fun res!1059485 () Bool)

(assert (=> b!1544484 (=> (not res!1059485) (not e!859701))))

(assert (=> b!1544484 (= res!1059485 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50240 _keys!618))))))

(declare-fun b!1544485 () Bool)

(assert (=> b!1544485 (= e!859704 call!68944)))

(assert (= (and start!131948 res!1059487) b!1544481))

(assert (= (and b!1544481 res!1059486) b!1544472))

(assert (= (and b!1544472 res!1059488) b!1544477))

(assert (= (and b!1544477 res!1059484) b!1544484))

(assert (= (and b!1544484 res!1059485) b!1544475))

(assert (= (and b!1544475 c!141393) b!1544480))

(assert (= (and b!1544475 (not c!141393)) b!1544483))

(assert (= (and b!1544483 c!141394) b!1544485))

(assert (= (and b!1544483 (not c!141394)) b!1544482))

(assert (= (and b!1544482 c!141395) b!1544476))

(assert (= (and b!1544482 (not c!141395)) b!1544478))

(assert (= (or b!1544476 b!1544478) bm!68940))

(assert (= (or b!1544485 bm!68940) bm!68943))

(assert (= (or b!1544485 b!1544476) bm!68941))

(assert (= (or b!1544480 bm!68943) bm!68942))

(assert (= (or b!1544480 bm!68941) bm!68939))

(assert (= (and b!1544473 condMapEmpty!58561) mapIsEmpty!58561))

(assert (= (and b!1544473 (not condMapEmpty!58561)) mapNonEmpty!58561))

(get-info :version)

(assert (= (and mapNonEmpty!58561 ((_ is ValueCellFull!18042) mapValue!58561)) b!1544474))

(assert (= (and b!1544473 ((_ is ValueCellFull!18042) mapDefault!58561)) b!1544479))

(assert (= start!131948 b!1544473))

(declare-fun m!1425271 () Bool)

(assert (=> bm!68942 m!1425271))

(declare-fun m!1425273 () Bool)

(assert (=> start!131948 m!1425273))

(declare-fun m!1425275 () Bool)

(assert (=> start!131948 m!1425275))

(declare-fun m!1425277 () Bool)

(assert (=> start!131948 m!1425277))

(declare-fun m!1425279 () Bool)

(assert (=> bm!68939 m!1425279))

(declare-fun m!1425281 () Bool)

(assert (=> mapNonEmpty!58561 m!1425281))

(declare-fun m!1425283 () Bool)

(assert (=> b!1544477 m!1425283))

(declare-fun m!1425285 () Bool)

(assert (=> b!1544472 m!1425285))

(declare-fun m!1425287 () Bool)

(assert (=> b!1544480 m!1425287))

(check-sat b_and!51049 (not b!1544477) (not bm!68942) (not mapNonEmpty!58561) (not b!1544480) (not start!131948) tp_is_empty!37905 (not bm!68939) (not b!1544472) (not b_next!31629))
(check-sat b_and!51049 (not b_next!31629))
