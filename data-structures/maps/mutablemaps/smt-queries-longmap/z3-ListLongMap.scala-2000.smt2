; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34964 () Bool)

(assert start!34964)

(declare-fun b_free!7671 () Bool)

(declare-fun b_next!7671 () Bool)

(assert (=> start!34964 (= b_free!7671 (not b_next!7671))))

(declare-fun tp!26589 () Bool)

(declare-fun b_and!14917 () Bool)

(assert (=> start!34964 (= tp!26589 b_and!14917)))

(declare-fun b!349941 () Bool)

(declare-fun res!194009 () Bool)

(declare-fun e!214368 () Bool)

(assert (=> b!349941 (=> (not res!194009) (not e!214368))))

(declare-datatypes ((array!18799 0))(
  ( (array!18800 (arr!8903 (Array (_ BitVec 32) (_ BitVec 64))) (size!9255 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18799)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18799 (_ BitVec 32)) Bool)

(assert (=> b!349941 (= res!194009 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!349942 () Bool)

(declare-fun e!214375 () Bool)

(declare-datatypes ((SeekEntryResult!3428 0))(
  ( (MissingZero!3428 (index!15891 (_ BitVec 32))) (Found!3428 (index!15892 (_ BitVec 32))) (Intermediate!3428 (undefined!4240 Bool) (index!15893 (_ BitVec 32)) (x!34845 (_ BitVec 32))) (Undefined!3428) (MissingVacant!3428 (index!15894 (_ BitVec 32))) )
))
(declare-fun lt!164410 () SeekEntryResult!3428)

(get-info :version)

(assert (=> b!349942 (= e!214375 (not ((_ is Undefined!3428) lt!164410)))))

(declare-fun b!349943 () Bool)

(declare-fun e!214367 () Bool)

(assert (=> b!349943 (= e!214367 (not (= (select (arr!8903 _keys!1895) (index!15894 lt!164410)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!349944 () Bool)

(declare-fun e!214378 () Bool)

(assert (=> b!349944 (= e!214368 e!214378)))

(declare-fun res!194002 () Bool)

(assert (=> b!349944 (=> (not res!194002) (not e!214378))))

(assert (=> b!349944 (= res!194002 (and (not ((_ is Found!3428) lt!164410)) ((_ is MissingZero!3428) lt!164410)))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18799 (_ BitVec 32)) SeekEntryResult!3428)

(assert (=> b!349944 (= lt!164410 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!349945 () Bool)

(declare-fun e!214371 () Bool)

(declare-fun tp_is_empty!7623 () Bool)

(assert (=> b!349945 (= e!214371 tp_is_empty!7623)))

(declare-fun b!349946 () Bool)

(declare-datatypes ((Unit!10845 0))(
  ( (Unit!10846) )
))
(declare-fun e!214370 () Unit!10845)

(declare-fun Unit!10847 () Unit!10845)

(assert (=> b!349946 (= e!214370 Unit!10847)))

(declare-fun lt!164411 () Unit!10845)

(declare-datatypes ((V!11141 0))(
  ( (V!11142 (val!3856 Int)) )
))
(declare-fun zeroValue!1467 () V!11141)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3468 0))(
  ( (ValueCellFull!3468 (v!6038 V!11141)) (EmptyCell!3468) )
))
(declare-datatypes ((array!18801 0))(
  ( (array!18802 (arr!8904 (Array (_ BitVec 32) ValueCell!3468)) (size!9256 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18801)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11141)

(declare-fun lemmaArrayContainsKeyThenInListMap!324 (array!18799 array!18801 (_ BitVec 32) (_ BitVec 32) V!11141 V!11141 (_ BitVec 64) (_ BitVec 32) Int) Unit!10845)

(declare-fun arrayScanForKey!0 (array!18799 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!349946 (= lt!164411 (lemmaArrayContainsKeyThenInListMap!324 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!349946 false))

(declare-fun b!349947 () Bool)

(declare-fun e!214369 () Bool)

(assert (=> b!349947 (= e!214369 e!214375)))

(declare-fun c!53289 () Bool)

(assert (=> b!349947 (= c!53289 ((_ is MissingVacant!3428) lt!164410))))

(declare-fun b!349948 () Bool)

(declare-fun e!214373 () Bool)

(assert (=> b!349948 (= e!214378 e!214373)))

(declare-fun res!194005 () Bool)

(assert (=> b!349948 (=> (not res!194005) (not e!214373))))

(declare-fun lt!164412 () Bool)

(assert (=> b!349948 (= res!194005 (not lt!164412))))

(declare-fun lt!164409 () Unit!10845)

(assert (=> b!349948 (= lt!164409 e!214370)))

(declare-fun c!53290 () Bool)

(assert (=> b!349948 (= c!53290 lt!164412)))

(declare-fun arrayContainsKey!0 (array!18799 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!349948 (= lt!164412 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!12903 () Bool)

(declare-fun mapRes!12903 () Bool)

(declare-fun tp!26588 () Bool)

(declare-fun e!214377 () Bool)

(assert (=> mapNonEmpty!12903 (= mapRes!12903 (and tp!26588 e!214377))))

(declare-fun mapValue!12903 () ValueCell!3468)

(declare-fun mapKey!12903 () (_ BitVec 32))

(declare-fun mapRest!12903 () (Array (_ BitVec 32) ValueCell!3468))

(assert (=> mapNonEmpty!12903 (= (arr!8904 _values!1525) (store mapRest!12903 mapKey!12903 mapValue!12903))))

(declare-fun b!349949 () Bool)

(declare-fun res!194003 () Bool)

(assert (=> b!349949 (=> res!194003 e!214367)))

(declare-fun call!26945 () Bool)

(assert (=> b!349949 (= res!194003 (not call!26945))))

(assert (=> b!349949 (= e!214375 e!214367)))

(declare-fun b!349950 () Bool)

(declare-fun res!194004 () Bool)

(assert (=> b!349950 (=> (not res!194004) (not e!214368))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!349950 (= res!194004 (validKeyInArray!0 k0!1348))))

(declare-fun b!349951 () Bool)

(declare-fun Unit!10848 () Unit!10845)

(assert (=> b!349951 (= e!214370 Unit!10848)))

(declare-fun b!349953 () Bool)

(declare-fun e!214374 () Bool)

(assert (=> b!349953 (= e!214374 (and e!214371 mapRes!12903))))

(declare-fun condMapEmpty!12903 () Bool)

(declare-fun mapDefault!12903 () ValueCell!3468)

(assert (=> b!349953 (= condMapEmpty!12903 (= (arr!8904 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3468)) mapDefault!12903)))))

(declare-fun b!349954 () Bool)

(declare-fun res!194006 () Bool)

(assert (=> b!349954 (=> (not res!194006) (not e!214368))))

(declare-datatypes ((tuple2!5564 0))(
  ( (tuple2!5565 (_1!2792 (_ BitVec 64)) (_2!2792 V!11141)) )
))
(declare-datatypes ((List!5203 0))(
  ( (Nil!5200) (Cons!5199 (h!6055 tuple2!5564) (t!10347 List!5203)) )
))
(declare-datatypes ((ListLongMap!4491 0))(
  ( (ListLongMap!4492 (toList!2261 List!5203)) )
))
(declare-fun contains!2325 (ListLongMap!4491 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1778 (array!18799 array!18801 (_ BitVec 32) (_ BitVec 32) V!11141 V!11141 (_ BitVec 32) Int) ListLongMap!4491)

(assert (=> b!349954 (= res!194006 (not (contains!2325 (getCurrentListMap!1778 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun mapIsEmpty!12903 () Bool)

(assert (=> mapIsEmpty!12903 mapRes!12903))

(declare-fun c!53291 () Bool)

(declare-fun bm!26942 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!26942 (= call!26945 (inRange!0 (ite c!53291 (index!15891 lt!164410) (index!15894 lt!164410)) mask!2385))))

(declare-fun b!349955 () Bool)

(assert (=> b!349955 (= e!214377 tp_is_empty!7623)))

(declare-fun b!349956 () Bool)

(declare-fun res!194007 () Bool)

(assert (=> b!349956 (=> (not res!194007) (not e!214368))))

(declare-datatypes ((List!5204 0))(
  ( (Nil!5201) (Cons!5200 (h!6056 (_ BitVec 64)) (t!10348 List!5204)) )
))
(declare-fun arrayNoDuplicates!0 (array!18799 (_ BitVec 32) List!5204) Bool)

(assert (=> b!349956 (= res!194007 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5201))))

(declare-fun b!349957 () Bool)

(declare-fun res!194001 () Bool)

(assert (=> b!349957 (=> (not res!194001) (not e!214368))))

(assert (=> b!349957 (= res!194001 (and (= (size!9256 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9255 _keys!1895) (size!9256 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!349952 () Bool)

(declare-fun e!214372 () Bool)

(assert (=> b!349952 (= e!214369 e!214372)))

(declare-fun res!194010 () Bool)

(assert (=> b!349952 (= res!194010 (not call!26945))))

(assert (=> b!349952 (=> res!194010 e!214372)))

(declare-fun res!194008 () Bool)

(assert (=> start!34964 (=> (not res!194008) (not e!214368))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34964 (= res!194008 (validMask!0 mask!2385))))

(assert (=> start!34964 e!214368))

(assert (=> start!34964 true))

(assert (=> start!34964 tp_is_empty!7623))

(assert (=> start!34964 tp!26589))

(declare-fun array_inv!6558 (array!18801) Bool)

(assert (=> start!34964 (and (array_inv!6558 _values!1525) e!214374)))

(declare-fun array_inv!6559 (array!18799) Bool)

(assert (=> start!34964 (array_inv!6559 _keys!1895)))

(declare-fun b!349958 () Bool)

(assert (=> b!349958 (= e!214372 (not (= (select (arr!8903 _keys!1895) (index!15891 lt!164410)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!349959 () Bool)

(assert (=> b!349959 (= e!214373 e!214369)))

(assert (=> b!349959 (= c!53291 ((_ is MissingZero!3428) lt!164410))))

(assert (= (and start!34964 res!194008) b!349957))

(assert (= (and b!349957 res!194001) b!349941))

(assert (= (and b!349941 res!194009) b!349956))

(assert (= (and b!349956 res!194007) b!349950))

(assert (= (and b!349950 res!194004) b!349954))

(assert (= (and b!349954 res!194006) b!349944))

(assert (= (and b!349944 res!194002) b!349948))

(assert (= (and b!349948 c!53290) b!349946))

(assert (= (and b!349948 (not c!53290)) b!349951))

(assert (= (and b!349948 res!194005) b!349959))

(assert (= (and b!349959 c!53291) b!349952))

(assert (= (and b!349959 (not c!53291)) b!349947))

(assert (= (and b!349952 (not res!194010)) b!349958))

(assert (= (and b!349947 c!53289) b!349949))

(assert (= (and b!349947 (not c!53289)) b!349942))

(assert (= (and b!349949 (not res!194003)) b!349943))

(assert (= (or b!349952 b!349949) bm!26942))

(assert (= (and b!349953 condMapEmpty!12903) mapIsEmpty!12903))

(assert (= (and b!349953 (not condMapEmpty!12903)) mapNonEmpty!12903))

(assert (= (and mapNonEmpty!12903 ((_ is ValueCellFull!3468) mapValue!12903)) b!349955))

(assert (= (and b!349953 ((_ is ValueCellFull!3468) mapDefault!12903)) b!349945))

(assert (= start!34964 b!349953))

(declare-fun m!350267 () Bool)

(assert (=> b!349956 m!350267))

(declare-fun m!350269 () Bool)

(assert (=> b!349958 m!350269))

(declare-fun m!350271 () Bool)

(assert (=> bm!26942 m!350271))

(declare-fun m!350273 () Bool)

(assert (=> b!349944 m!350273))

(declare-fun m!350275 () Bool)

(assert (=> b!349948 m!350275))

(declare-fun m!350277 () Bool)

(assert (=> b!349943 m!350277))

(declare-fun m!350279 () Bool)

(assert (=> b!349950 m!350279))

(declare-fun m!350281 () Bool)

(assert (=> start!34964 m!350281))

(declare-fun m!350283 () Bool)

(assert (=> start!34964 m!350283))

(declare-fun m!350285 () Bool)

(assert (=> start!34964 m!350285))

(declare-fun m!350287 () Bool)

(assert (=> b!349946 m!350287))

(assert (=> b!349946 m!350287))

(declare-fun m!350289 () Bool)

(assert (=> b!349946 m!350289))

(declare-fun m!350291 () Bool)

(assert (=> b!349954 m!350291))

(assert (=> b!349954 m!350291))

(declare-fun m!350293 () Bool)

(assert (=> b!349954 m!350293))

(declare-fun m!350295 () Bool)

(assert (=> b!349941 m!350295))

(declare-fun m!350297 () Bool)

(assert (=> mapNonEmpty!12903 m!350297))

(check-sat (not b!349956) (not b!349946) (not start!34964) (not b!349950) (not mapNonEmpty!12903) (not b!349944) (not bm!26942) tp_is_empty!7623 (not b!349954) (not b_next!7671) b_and!14917 (not b!349941) (not b!349948))
(check-sat b_and!14917 (not b_next!7671))
(get-model)

(declare-fun b!350029 () Bool)

(declare-fun e!214423 () SeekEntryResult!3428)

(declare-fun e!214421 () SeekEntryResult!3428)

(assert (=> b!350029 (= e!214423 e!214421)))

(declare-fun lt!164432 () (_ BitVec 64))

(declare-fun lt!164433 () SeekEntryResult!3428)

(assert (=> b!350029 (= lt!164432 (select (arr!8903 _keys!1895) (index!15893 lt!164433)))))

(declare-fun c!53307 () Bool)

(assert (=> b!350029 (= c!53307 (= lt!164432 k0!1348))))

(declare-fun b!350030 () Bool)

(assert (=> b!350030 (= e!214421 (Found!3428 (index!15893 lt!164433)))))

(declare-fun d!71271 () Bool)

(declare-fun lt!164431 () SeekEntryResult!3428)

(assert (=> d!71271 (and (or ((_ is Undefined!3428) lt!164431) (not ((_ is Found!3428) lt!164431)) (and (bvsge (index!15892 lt!164431) #b00000000000000000000000000000000) (bvslt (index!15892 lt!164431) (size!9255 _keys!1895)))) (or ((_ is Undefined!3428) lt!164431) ((_ is Found!3428) lt!164431) (not ((_ is MissingZero!3428) lt!164431)) (and (bvsge (index!15891 lt!164431) #b00000000000000000000000000000000) (bvslt (index!15891 lt!164431) (size!9255 _keys!1895)))) (or ((_ is Undefined!3428) lt!164431) ((_ is Found!3428) lt!164431) ((_ is MissingZero!3428) lt!164431) (not ((_ is MissingVacant!3428) lt!164431)) (and (bvsge (index!15894 lt!164431) #b00000000000000000000000000000000) (bvslt (index!15894 lt!164431) (size!9255 _keys!1895)))) (or ((_ is Undefined!3428) lt!164431) (ite ((_ is Found!3428) lt!164431) (= (select (arr!8903 _keys!1895) (index!15892 lt!164431)) k0!1348) (ite ((_ is MissingZero!3428) lt!164431) (= (select (arr!8903 _keys!1895) (index!15891 lt!164431)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3428) lt!164431) (= (select (arr!8903 _keys!1895) (index!15894 lt!164431)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!71271 (= lt!164431 e!214423)))

(declare-fun c!53309 () Bool)

(assert (=> d!71271 (= c!53309 (and ((_ is Intermediate!3428) lt!164433) (undefined!4240 lt!164433)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!18799 (_ BitVec 32)) SeekEntryResult!3428)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!71271 (= lt!164433 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1348 mask!2385) k0!1348 _keys!1895 mask!2385))))

(assert (=> d!71271 (validMask!0 mask!2385)))

(assert (=> d!71271 (= (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385) lt!164431)))

(declare-fun b!350031 () Bool)

(declare-fun c!53308 () Bool)

(assert (=> b!350031 (= c!53308 (= lt!164432 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!214422 () SeekEntryResult!3428)

(assert (=> b!350031 (= e!214421 e!214422)))

(declare-fun b!350032 () Bool)

(assert (=> b!350032 (= e!214423 Undefined!3428)))

(declare-fun b!350033 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!18799 (_ BitVec 32)) SeekEntryResult!3428)

(assert (=> b!350033 (= e!214422 (seekKeyOrZeroReturnVacant!0 (x!34845 lt!164433) (index!15893 lt!164433) (index!15893 lt!164433) k0!1348 _keys!1895 mask!2385))))

(declare-fun b!350034 () Bool)

(assert (=> b!350034 (= e!214422 (MissingZero!3428 (index!15893 lt!164433)))))

(assert (= (and d!71271 c!53309) b!350032))

(assert (= (and d!71271 (not c!53309)) b!350029))

(assert (= (and b!350029 c!53307) b!350030))

(assert (= (and b!350029 (not c!53307)) b!350031))

(assert (= (and b!350031 c!53308) b!350034))

(assert (= (and b!350031 (not c!53308)) b!350033))

(declare-fun m!350331 () Bool)

(assert (=> b!350029 m!350331))

(declare-fun m!350333 () Bool)

(assert (=> d!71271 m!350333))

(declare-fun m!350335 () Bool)

(assert (=> d!71271 m!350335))

(declare-fun m!350337 () Bool)

(assert (=> d!71271 m!350337))

(assert (=> d!71271 m!350281))

(assert (=> d!71271 m!350335))

(declare-fun m!350339 () Bool)

(assert (=> d!71271 m!350339))

(declare-fun m!350341 () Bool)

(assert (=> d!71271 m!350341))

(declare-fun m!350343 () Bool)

(assert (=> b!350033 m!350343))

(assert (=> b!349944 d!71271))

(declare-fun d!71273 () Bool)

(declare-fun e!214428 () Bool)

(assert (=> d!71273 e!214428))

(declare-fun res!194043 () Bool)

(assert (=> d!71273 (=> res!194043 e!214428)))

(declare-fun lt!164443 () Bool)

(assert (=> d!71273 (= res!194043 (not lt!164443))))

(declare-fun lt!164445 () Bool)

(assert (=> d!71273 (= lt!164443 lt!164445)))

(declare-fun lt!164444 () Unit!10845)

(declare-fun e!214429 () Unit!10845)

(assert (=> d!71273 (= lt!164444 e!214429)))

(declare-fun c!53312 () Bool)

(assert (=> d!71273 (= c!53312 lt!164445)))

(declare-fun containsKey!339 (List!5203 (_ BitVec 64)) Bool)

(assert (=> d!71273 (= lt!164445 (containsKey!339 (toList!2261 (getCurrentListMap!1778 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(assert (=> d!71273 (= (contains!2325 (getCurrentListMap!1778 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348) lt!164443)))

(declare-fun b!350041 () Bool)

(declare-fun lt!164442 () Unit!10845)

(assert (=> b!350041 (= e!214429 lt!164442)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!288 (List!5203 (_ BitVec 64)) Unit!10845)

(assert (=> b!350041 (= lt!164442 (lemmaContainsKeyImpliesGetValueByKeyDefined!288 (toList!2261 (getCurrentListMap!1778 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-datatypes ((Option!353 0))(
  ( (Some!352 (v!6040 V!11141)) (None!351) )
))
(declare-fun isDefined!289 (Option!353) Bool)

(declare-fun getValueByKey!347 (List!5203 (_ BitVec 64)) Option!353)

(assert (=> b!350041 (isDefined!289 (getValueByKey!347 (toList!2261 (getCurrentListMap!1778 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-fun b!350042 () Bool)

(declare-fun Unit!10849 () Unit!10845)

(assert (=> b!350042 (= e!214429 Unit!10849)))

(declare-fun b!350043 () Bool)

(assert (=> b!350043 (= e!214428 (isDefined!289 (getValueByKey!347 (toList!2261 (getCurrentListMap!1778 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348)))))

(assert (= (and d!71273 c!53312) b!350041))

(assert (= (and d!71273 (not c!53312)) b!350042))

(assert (= (and d!71273 (not res!194043)) b!350043))

(declare-fun m!350345 () Bool)

(assert (=> d!71273 m!350345))

(declare-fun m!350347 () Bool)

(assert (=> b!350041 m!350347))

(declare-fun m!350349 () Bool)

(assert (=> b!350041 m!350349))

(assert (=> b!350041 m!350349))

(declare-fun m!350351 () Bool)

(assert (=> b!350041 m!350351))

(assert (=> b!350043 m!350349))

(assert (=> b!350043 m!350349))

(assert (=> b!350043 m!350351))

(assert (=> b!349954 d!71273))

(declare-fun bm!26960 () Bool)

(declare-fun call!26966 () ListLongMap!4491)

(declare-fun call!26969 () ListLongMap!4491)

(assert (=> bm!26960 (= call!26966 call!26969)))

(declare-fun b!350086 () Bool)

(declare-fun c!53330 () Bool)

(assert (=> b!350086 (= c!53330 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!214463 () ListLongMap!4491)

(declare-fun e!214468 () ListLongMap!4491)

(assert (=> b!350086 (= e!214463 e!214468)))

(declare-fun b!350087 () Bool)

(declare-fun e!214458 () Bool)

(declare-fun e!214460 () Bool)

(assert (=> b!350087 (= e!214458 e!214460)))

(declare-fun res!194063 () Bool)

(declare-fun call!26964 () Bool)

(assert (=> b!350087 (= res!194063 call!26964)))

(assert (=> b!350087 (=> (not res!194063) (not e!214460))))

(declare-fun b!350088 () Bool)

(declare-fun e!214467 () Bool)

(declare-fun e!214456 () Bool)

(assert (=> b!350088 (= e!214467 e!214456)))

(declare-fun res!194070 () Bool)

(assert (=> b!350088 (=> (not res!194070) (not e!214456))))

(declare-fun lt!164493 () ListLongMap!4491)

(assert (=> b!350088 (= res!194070 (contains!2325 lt!164493 (select (arr!8903 _keys!1895) #b00000000000000000000000000000000)))))

(assert (=> b!350088 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9255 _keys!1895)))))

(declare-fun b!350090 () Bool)

(declare-fun res!194069 () Bool)

(declare-fun e!214461 () Bool)

(assert (=> b!350090 (=> (not res!194069) (not e!214461))))

(assert (=> b!350090 (= res!194069 e!214467)))

(declare-fun res!194067 () Bool)

(assert (=> b!350090 (=> res!194067 e!214467)))

(declare-fun e!214462 () Bool)

(assert (=> b!350090 (= res!194067 (not e!214462))))

(declare-fun res!194068 () Bool)

(assert (=> b!350090 (=> (not res!194068) (not e!214462))))

(assert (=> b!350090 (= res!194068 (bvslt #b00000000000000000000000000000000 (size!9255 _keys!1895)))))

(declare-fun b!350091 () Bool)

(declare-fun e!214457 () ListLongMap!4491)

(declare-fun call!26967 () ListLongMap!4491)

(declare-fun +!734 (ListLongMap!4491 tuple2!5564) ListLongMap!4491)

(assert (=> b!350091 (= e!214457 (+!734 call!26967 (tuple2!5565 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467)))))

(declare-fun bm!26961 () Bool)

(assert (=> bm!26961 (= call!26964 (contains!2325 lt!164493 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!350092 () Bool)

(assert (=> b!350092 (= e!214462 (validKeyInArray!0 (select (arr!8903 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!350093 () Bool)

(declare-fun e!214465 () Unit!10845)

(declare-fun Unit!10850 () Unit!10845)

(assert (=> b!350093 (= e!214465 Unit!10850)))

(declare-fun bm!26962 () Bool)

(declare-fun call!26963 () ListLongMap!4491)

(assert (=> bm!26962 (= call!26963 call!26967)))

(declare-fun b!350094 () Bool)

(assert (=> b!350094 (= e!214458 (not call!26964))))

(declare-fun b!350095 () Bool)

(declare-fun e!214466 () Bool)

(assert (=> b!350095 (= e!214466 (validKeyInArray!0 (select (arr!8903 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun bm!26963 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!609 (array!18799 array!18801 (_ BitVec 32) (_ BitVec 32) V!11141 V!11141 (_ BitVec 32) Int) ListLongMap!4491)

(assert (=> bm!26963 (= call!26969 (getCurrentListMapNoExtraKeys!609 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun bm!26964 () Bool)

(declare-fun call!26965 () Bool)

(assert (=> bm!26964 (= call!26965 (contains!2325 lt!164493 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!350096 () Bool)

(assert (=> b!350096 (= e!214457 e!214463)))

(declare-fun c!53329 () Bool)

(assert (=> b!350096 (= c!53329 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!350097 () Bool)

(assert (=> b!350097 (= e!214468 call!26963)))

(declare-fun b!350089 () Bool)

(declare-fun lt!164511 () Unit!10845)

(assert (=> b!350089 (= e!214465 lt!164511)))

(declare-fun lt!164507 () ListLongMap!4491)

(assert (=> b!350089 (= lt!164507 (getCurrentListMapNoExtraKeys!609 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!164490 () (_ BitVec 64))

(assert (=> b!350089 (= lt!164490 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!164508 () (_ BitVec 64))

(assert (=> b!350089 (= lt!164508 (select (arr!8903 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!164502 () Unit!10845)

(declare-fun addStillContains!266 (ListLongMap!4491 (_ BitVec 64) V!11141 (_ BitVec 64)) Unit!10845)

(assert (=> b!350089 (= lt!164502 (addStillContains!266 lt!164507 lt!164490 zeroValue!1467 lt!164508))))

(assert (=> b!350089 (contains!2325 (+!734 lt!164507 (tuple2!5565 lt!164490 zeroValue!1467)) lt!164508)))

(declare-fun lt!164491 () Unit!10845)

(assert (=> b!350089 (= lt!164491 lt!164502)))

(declare-fun lt!164509 () ListLongMap!4491)

(assert (=> b!350089 (= lt!164509 (getCurrentListMapNoExtraKeys!609 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!164510 () (_ BitVec 64))

(assert (=> b!350089 (= lt!164510 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!164497 () (_ BitVec 64))

(assert (=> b!350089 (= lt!164497 (select (arr!8903 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!164505 () Unit!10845)

(declare-fun addApplyDifferent!266 (ListLongMap!4491 (_ BitVec 64) V!11141 (_ BitVec 64)) Unit!10845)

(assert (=> b!350089 (= lt!164505 (addApplyDifferent!266 lt!164509 lt!164510 minValue!1467 lt!164497))))

(declare-fun apply!290 (ListLongMap!4491 (_ BitVec 64)) V!11141)

(assert (=> b!350089 (= (apply!290 (+!734 lt!164509 (tuple2!5565 lt!164510 minValue!1467)) lt!164497) (apply!290 lt!164509 lt!164497))))

(declare-fun lt!164506 () Unit!10845)

(assert (=> b!350089 (= lt!164506 lt!164505)))

(declare-fun lt!164495 () ListLongMap!4491)

(assert (=> b!350089 (= lt!164495 (getCurrentListMapNoExtraKeys!609 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!164496 () (_ BitVec 64))

(assert (=> b!350089 (= lt!164496 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!164500 () (_ BitVec 64))

(assert (=> b!350089 (= lt!164500 (select (arr!8903 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!164492 () Unit!10845)

(assert (=> b!350089 (= lt!164492 (addApplyDifferent!266 lt!164495 lt!164496 zeroValue!1467 lt!164500))))

(assert (=> b!350089 (= (apply!290 (+!734 lt!164495 (tuple2!5565 lt!164496 zeroValue!1467)) lt!164500) (apply!290 lt!164495 lt!164500))))

(declare-fun lt!164503 () Unit!10845)

(assert (=> b!350089 (= lt!164503 lt!164492)))

(declare-fun lt!164504 () ListLongMap!4491)

(assert (=> b!350089 (= lt!164504 (getCurrentListMapNoExtraKeys!609 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!164498 () (_ BitVec 64))

(assert (=> b!350089 (= lt!164498 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!164499 () (_ BitVec 64))

(assert (=> b!350089 (= lt!164499 (select (arr!8903 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> b!350089 (= lt!164511 (addApplyDifferent!266 lt!164504 lt!164498 minValue!1467 lt!164499))))

(assert (=> b!350089 (= (apply!290 (+!734 lt!164504 (tuple2!5565 lt!164498 minValue!1467)) lt!164499) (apply!290 lt!164504 lt!164499))))

(declare-fun d!71275 () Bool)

(assert (=> d!71275 e!214461))

(declare-fun res!194064 () Bool)

(assert (=> d!71275 (=> (not res!194064) (not e!214461))))

(assert (=> d!71275 (= res!194064 (or (bvsge #b00000000000000000000000000000000 (size!9255 _keys!1895)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9255 _keys!1895)))))))

(declare-fun lt!164501 () ListLongMap!4491)

(assert (=> d!71275 (= lt!164493 lt!164501)))

(declare-fun lt!164494 () Unit!10845)

(assert (=> d!71275 (= lt!164494 e!214465)))

(declare-fun c!53326 () Bool)

(assert (=> d!71275 (= c!53326 e!214466)))

(declare-fun res!194066 () Bool)

(assert (=> d!71275 (=> (not res!194066) (not e!214466))))

(assert (=> d!71275 (= res!194066 (bvslt #b00000000000000000000000000000000 (size!9255 _keys!1895)))))

(assert (=> d!71275 (= lt!164501 e!214457)))

(declare-fun c!53328 () Bool)

(assert (=> d!71275 (= c!53328 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!71275 (validMask!0 mask!2385)))

(assert (=> d!71275 (= (getCurrentListMap!1778 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) lt!164493)))

(declare-fun b!350098 () Bool)

(assert (=> b!350098 (= e!214463 call!26963)))

(declare-fun bm!26965 () Bool)

(declare-fun call!26968 () ListLongMap!4491)

(assert (=> bm!26965 (= call!26967 (+!734 (ite c!53328 call!26969 (ite c!53329 call!26966 call!26968)) (ite (or c!53328 c!53329) (tuple2!5565 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1467) (tuple2!5565 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467))))))

(declare-fun b!350099 () Bool)

(assert (=> b!350099 (= e!214461 e!214458)))

(declare-fun c!53325 () Bool)

(assert (=> b!350099 (= c!53325 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!350100 () Bool)

(declare-fun e!214459 () Bool)

(assert (=> b!350100 (= e!214459 (not call!26965))))

(declare-fun bm!26966 () Bool)

(assert (=> bm!26966 (= call!26968 call!26966)))

(declare-fun b!350101 () Bool)

(declare-fun e!214464 () Bool)

(assert (=> b!350101 (= e!214459 e!214464)))

(declare-fun res!194065 () Bool)

(assert (=> b!350101 (= res!194065 call!26965)))

(assert (=> b!350101 (=> (not res!194065) (not e!214464))))

(declare-fun b!350102 () Bool)

(declare-fun get!4777 (ValueCell!3468 V!11141) V!11141)

(declare-fun dynLambda!628 (Int (_ BitVec 64)) V!11141)

(assert (=> b!350102 (= e!214456 (= (apply!290 lt!164493 (select (arr!8903 _keys!1895) #b00000000000000000000000000000000)) (get!4777 (select (arr!8904 _values!1525) #b00000000000000000000000000000000) (dynLambda!628 defaultEntry!1528 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!350102 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9256 _values!1525)))))

(assert (=> b!350102 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9255 _keys!1895)))))

(declare-fun b!350103 () Bool)

(declare-fun res!194062 () Bool)

(assert (=> b!350103 (=> (not res!194062) (not e!214461))))

(assert (=> b!350103 (= res!194062 e!214459)))

(declare-fun c!53327 () Bool)

(assert (=> b!350103 (= c!53327 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!350104 () Bool)

(assert (=> b!350104 (= e!214460 (= (apply!290 lt!164493 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1467))))

(declare-fun b!350105 () Bool)

(assert (=> b!350105 (= e!214468 call!26968)))

(declare-fun b!350106 () Bool)

(assert (=> b!350106 (= e!214464 (= (apply!290 lt!164493 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1467))))

(assert (= (and d!71275 c!53328) b!350091))

(assert (= (and d!71275 (not c!53328)) b!350096))

(assert (= (and b!350096 c!53329) b!350098))

(assert (= (and b!350096 (not c!53329)) b!350086))

(assert (= (and b!350086 c!53330) b!350097))

(assert (= (and b!350086 (not c!53330)) b!350105))

(assert (= (or b!350097 b!350105) bm!26966))

(assert (= (or b!350098 bm!26966) bm!26960))

(assert (= (or b!350098 b!350097) bm!26962))

(assert (= (or b!350091 bm!26960) bm!26963))

(assert (= (or b!350091 bm!26962) bm!26965))

(assert (= (and d!71275 res!194066) b!350095))

(assert (= (and d!71275 c!53326) b!350089))

(assert (= (and d!71275 (not c!53326)) b!350093))

(assert (= (and d!71275 res!194064) b!350090))

(assert (= (and b!350090 res!194068) b!350092))

(assert (= (and b!350090 (not res!194067)) b!350088))

(assert (= (and b!350088 res!194070) b!350102))

(assert (= (and b!350090 res!194069) b!350103))

(assert (= (and b!350103 c!53327) b!350101))

(assert (= (and b!350103 (not c!53327)) b!350100))

(assert (= (and b!350101 res!194065) b!350106))

(assert (= (or b!350101 b!350100) bm!26964))

(assert (= (and b!350103 res!194062) b!350099))

(assert (= (and b!350099 c!53325) b!350087))

(assert (= (and b!350099 (not c!53325)) b!350094))

(assert (= (and b!350087 res!194063) b!350104))

(assert (= (or b!350087 b!350094) bm!26961))

(declare-fun b_lambda!8529 () Bool)

(assert (=> (not b_lambda!8529) (not b!350102)))

(declare-fun t!10350 () Bool)

(declare-fun tb!3103 () Bool)

(assert (=> (and start!34964 (= defaultEntry!1528 defaultEntry!1528) t!10350) tb!3103))

(declare-fun result!5623 () Bool)

(assert (=> tb!3103 (= result!5623 tp_is_empty!7623)))

(assert (=> b!350102 t!10350))

(declare-fun b_and!14921 () Bool)

(assert (= b_and!14917 (and (=> t!10350 result!5623) b_and!14921)))

(declare-fun m!350353 () Bool)

(assert (=> b!350102 m!350353))

(declare-fun m!350355 () Bool)

(assert (=> b!350102 m!350355))

(declare-fun m!350357 () Bool)

(assert (=> b!350102 m!350357))

(assert (=> b!350102 m!350355))

(declare-fun m!350359 () Bool)

(assert (=> b!350102 m!350359))

(assert (=> b!350102 m!350353))

(declare-fun m!350361 () Bool)

(assert (=> b!350102 m!350361))

(assert (=> b!350102 m!350357))

(assert (=> b!350092 m!350353))

(assert (=> b!350092 m!350353))

(declare-fun m!350363 () Bool)

(assert (=> b!350092 m!350363))

(assert (=> b!350088 m!350353))

(assert (=> b!350088 m!350353))

(declare-fun m!350365 () Bool)

(assert (=> b!350088 m!350365))

(declare-fun m!350367 () Bool)

(assert (=> bm!26964 m!350367))

(declare-fun m!350369 () Bool)

(assert (=> b!350089 m!350369))

(declare-fun m!350371 () Bool)

(assert (=> b!350089 m!350371))

(declare-fun m!350373 () Bool)

(assert (=> b!350089 m!350373))

(declare-fun m!350375 () Bool)

(assert (=> b!350089 m!350375))

(declare-fun m!350377 () Bool)

(assert (=> b!350089 m!350377))

(declare-fun m!350379 () Bool)

(assert (=> b!350089 m!350379))

(declare-fun m!350381 () Bool)

(assert (=> b!350089 m!350381))

(declare-fun m!350383 () Bool)

(assert (=> b!350089 m!350383))

(assert (=> b!350089 m!350353))

(declare-fun m!350385 () Bool)

(assert (=> b!350089 m!350385))

(declare-fun m!350387 () Bool)

(assert (=> b!350089 m!350387))

(declare-fun m!350389 () Bool)

(assert (=> b!350089 m!350389))

(assert (=> b!350089 m!350387))

(declare-fun m!350391 () Bool)

(assert (=> b!350089 m!350391))

(assert (=> b!350089 m!350377))

(declare-fun m!350393 () Bool)

(assert (=> b!350089 m!350393))

(declare-fun m!350395 () Bool)

(assert (=> b!350089 m!350395))

(assert (=> b!350089 m!350395))

(declare-fun m!350397 () Bool)

(assert (=> b!350089 m!350397))

(declare-fun m!350399 () Bool)

(assert (=> b!350089 m!350399))

(assert (=> b!350089 m!350373))

(declare-fun m!350401 () Bool)

(assert (=> b!350106 m!350401))

(declare-fun m!350403 () Bool)

(assert (=> b!350091 m!350403))

(declare-fun m!350405 () Bool)

(assert (=> bm!26965 m!350405))

(declare-fun m!350407 () Bool)

(assert (=> bm!26961 m!350407))

(assert (=> b!350095 m!350353))

(assert (=> b!350095 m!350353))

(assert (=> b!350095 m!350363))

(assert (=> d!71275 m!350281))

(assert (=> bm!26963 m!350399))

(declare-fun m!350409 () Bool)

(assert (=> b!350104 m!350409))

(assert (=> b!349954 d!71275))

(declare-fun d!71277 () Bool)

(declare-fun res!194079 () Bool)

(declare-fun e!214480 () Bool)

(assert (=> d!71277 (=> res!194079 e!214480)))

(assert (=> d!71277 (= res!194079 (bvsge #b00000000000000000000000000000000 (size!9255 _keys!1895)))))

(assert (=> d!71277 (= (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5201) e!214480)))

(declare-fun bm!26969 () Bool)

(declare-fun call!26972 () Bool)

(declare-fun c!53333 () Bool)

(assert (=> bm!26969 (= call!26972 (arrayNoDuplicates!0 _keys!1895 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!53333 (Cons!5200 (select (arr!8903 _keys!1895) #b00000000000000000000000000000000) Nil!5201) Nil!5201)))))

(declare-fun b!350119 () Bool)

(declare-fun e!214478 () Bool)

(assert (=> b!350119 (= e!214478 call!26972)))

(declare-fun b!350120 () Bool)

(declare-fun e!214477 () Bool)

(declare-fun contains!2326 (List!5204 (_ BitVec 64)) Bool)

(assert (=> b!350120 (= e!214477 (contains!2326 Nil!5201 (select (arr!8903 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!350121 () Bool)

(declare-fun e!214479 () Bool)

(assert (=> b!350121 (= e!214479 e!214478)))

(assert (=> b!350121 (= c!53333 (validKeyInArray!0 (select (arr!8903 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!350122 () Bool)

(assert (=> b!350122 (= e!214478 call!26972)))

(declare-fun b!350123 () Bool)

(assert (=> b!350123 (= e!214480 e!214479)))

(declare-fun res!194077 () Bool)

(assert (=> b!350123 (=> (not res!194077) (not e!214479))))

(assert (=> b!350123 (= res!194077 (not e!214477))))

(declare-fun res!194078 () Bool)

(assert (=> b!350123 (=> (not res!194078) (not e!214477))))

(assert (=> b!350123 (= res!194078 (validKeyInArray!0 (select (arr!8903 _keys!1895) #b00000000000000000000000000000000)))))

(assert (= (and d!71277 (not res!194079)) b!350123))

(assert (= (and b!350123 res!194078) b!350120))

(assert (= (and b!350123 res!194077) b!350121))

(assert (= (and b!350121 c!53333) b!350122))

(assert (= (and b!350121 (not c!53333)) b!350119))

(assert (= (or b!350122 b!350119) bm!26969))

(assert (=> bm!26969 m!350353))

(declare-fun m!350411 () Bool)

(assert (=> bm!26969 m!350411))

(assert (=> b!350120 m!350353))

(assert (=> b!350120 m!350353))

(declare-fun m!350413 () Bool)

(assert (=> b!350120 m!350413))

(assert (=> b!350121 m!350353))

(assert (=> b!350121 m!350353))

(assert (=> b!350121 m!350363))

(assert (=> b!350123 m!350353))

(assert (=> b!350123 m!350353))

(assert (=> b!350123 m!350363))

(assert (=> b!349956 d!71277))

(declare-fun d!71279 () Bool)

(declare-fun res!194084 () Bool)

(declare-fun e!214485 () Bool)

(assert (=> d!71279 (=> res!194084 e!214485)))

(assert (=> d!71279 (= res!194084 (= (select (arr!8903 _keys!1895) #b00000000000000000000000000000000) k0!1348))))

(assert (=> d!71279 (= (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) e!214485)))

(declare-fun b!350128 () Bool)

(declare-fun e!214486 () Bool)

(assert (=> b!350128 (= e!214485 e!214486)))

(declare-fun res!194085 () Bool)

(assert (=> b!350128 (=> (not res!194085) (not e!214486))))

(assert (=> b!350128 (= res!194085 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!9255 _keys!1895)))))

(declare-fun b!350129 () Bool)

(assert (=> b!350129 (= e!214486 (arrayContainsKey!0 _keys!1895 k0!1348 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!71279 (not res!194084)) b!350128))

(assert (= (and b!350128 res!194085) b!350129))

(assert (=> d!71279 m!350353))

(declare-fun m!350415 () Bool)

(assert (=> b!350129 m!350415))

(assert (=> b!349948 d!71279))

(declare-fun d!71281 () Bool)

(assert (=> d!71281 (= (inRange!0 (ite c!53291 (index!15891 lt!164410) (index!15894 lt!164410)) mask!2385) (and (bvsge (ite c!53291 (index!15891 lt!164410) (index!15894 lt!164410)) #b00000000000000000000000000000000) (bvslt (ite c!53291 (index!15891 lt!164410) (index!15894 lt!164410)) (bvadd mask!2385 #b00000000000000000000000000000001))))))

(assert (=> bm!26942 d!71281))

(declare-fun d!71283 () Bool)

(assert (=> d!71283 (contains!2325 (getCurrentListMap!1778 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))

(declare-fun lt!164514 () Unit!10845)

(declare-fun choose!1315 (array!18799 array!18801 (_ BitVec 32) (_ BitVec 32) V!11141 V!11141 (_ BitVec 64) (_ BitVec 32) Int) Unit!10845)

(assert (=> d!71283 (= lt!164514 (choose!1315 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> d!71283 (validMask!0 mask!2385)))

(assert (=> d!71283 (= (lemmaArrayContainsKeyThenInListMap!324 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528) lt!164514)))

(declare-fun bs!11936 () Bool)

(assert (= bs!11936 d!71283))

(assert (=> bs!11936 m!350291))

(assert (=> bs!11936 m!350291))

(assert (=> bs!11936 m!350293))

(assert (=> bs!11936 m!350287))

(declare-fun m!350417 () Bool)

(assert (=> bs!11936 m!350417))

(assert (=> bs!11936 m!350281))

(assert (=> b!349946 d!71283))

(declare-fun d!71285 () Bool)

(declare-fun lt!164517 () (_ BitVec 32))

(assert (=> d!71285 (and (or (bvslt lt!164517 #b00000000000000000000000000000000) (bvsge lt!164517 (size!9255 _keys!1895)) (and (bvsge lt!164517 #b00000000000000000000000000000000) (bvslt lt!164517 (size!9255 _keys!1895)))) (bvsge lt!164517 #b00000000000000000000000000000000) (bvslt lt!164517 (size!9255 _keys!1895)) (= (select (arr!8903 _keys!1895) lt!164517) k0!1348))))

(declare-fun e!214489 () (_ BitVec 32))

(assert (=> d!71285 (= lt!164517 e!214489)))

(declare-fun c!53336 () Bool)

(assert (=> d!71285 (= c!53336 (= (select (arr!8903 _keys!1895) #b00000000000000000000000000000000) k0!1348))))

(assert (=> d!71285 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9255 _keys!1895)) (bvslt (size!9255 _keys!1895) #b01111111111111111111111111111111))))

(assert (=> d!71285 (= (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) lt!164517)))

(declare-fun b!350134 () Bool)

(assert (=> b!350134 (= e!214489 #b00000000000000000000000000000000)))

(declare-fun b!350135 () Bool)

(assert (=> b!350135 (= e!214489 (arrayScanForKey!0 _keys!1895 k0!1348 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!71285 c!53336) b!350134))

(assert (= (and d!71285 (not c!53336)) b!350135))

(declare-fun m!350419 () Bool)

(assert (=> d!71285 m!350419))

(assert (=> d!71285 m!350353))

(declare-fun m!350421 () Bool)

(assert (=> b!350135 m!350421))

(assert (=> b!349946 d!71285))

(declare-fun bm!26972 () Bool)

(declare-fun call!26975 () Bool)

(assert (=> bm!26972 (= call!26975 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1895 mask!2385))))

(declare-fun b!350144 () Bool)

(declare-fun e!214498 () Bool)

(declare-fun e!214496 () Bool)

(assert (=> b!350144 (= e!214498 e!214496)))

(declare-fun lt!164524 () (_ BitVec 64))

(assert (=> b!350144 (= lt!164524 (select (arr!8903 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!164525 () Unit!10845)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18799 (_ BitVec 64) (_ BitVec 32)) Unit!10845)

(assert (=> b!350144 (= lt!164525 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 lt!164524 #b00000000000000000000000000000000))))

(assert (=> b!350144 (arrayContainsKey!0 _keys!1895 lt!164524 #b00000000000000000000000000000000)))

(declare-fun lt!164526 () Unit!10845)

(assert (=> b!350144 (= lt!164526 lt!164525)))

(declare-fun res!194091 () Bool)

(assert (=> b!350144 (= res!194091 (= (seekEntryOrOpen!0 (select (arr!8903 _keys!1895) #b00000000000000000000000000000000) _keys!1895 mask!2385) (Found!3428 #b00000000000000000000000000000000)))))

(assert (=> b!350144 (=> (not res!194091) (not e!214496))))

(declare-fun b!350145 () Bool)

(declare-fun e!214497 () Bool)

(assert (=> b!350145 (= e!214497 e!214498)))

(declare-fun c!53339 () Bool)

(assert (=> b!350145 (= c!53339 (validKeyInArray!0 (select (arr!8903 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun d!71287 () Bool)

(declare-fun res!194090 () Bool)

(assert (=> d!71287 (=> res!194090 e!214497)))

(assert (=> d!71287 (= res!194090 (bvsge #b00000000000000000000000000000000 (size!9255 _keys!1895)))))

(assert (=> d!71287 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385) e!214497)))

(declare-fun b!350146 () Bool)

(assert (=> b!350146 (= e!214498 call!26975)))

(declare-fun b!350147 () Bool)

(assert (=> b!350147 (= e!214496 call!26975)))

(assert (= (and d!71287 (not res!194090)) b!350145))

(assert (= (and b!350145 c!53339) b!350144))

(assert (= (and b!350145 (not c!53339)) b!350146))

(assert (= (and b!350144 res!194091) b!350147))

(assert (= (or b!350147 b!350146) bm!26972))

(declare-fun m!350423 () Bool)

(assert (=> bm!26972 m!350423))

(assert (=> b!350144 m!350353))

(declare-fun m!350425 () Bool)

(assert (=> b!350144 m!350425))

(declare-fun m!350427 () Bool)

(assert (=> b!350144 m!350427))

(assert (=> b!350144 m!350353))

(declare-fun m!350429 () Bool)

(assert (=> b!350144 m!350429))

(assert (=> b!350145 m!350353))

(assert (=> b!350145 m!350353))

(assert (=> b!350145 m!350363))

(assert (=> b!349941 d!71287))

(declare-fun d!71289 () Bool)

(assert (=> d!71289 (= (validMask!0 mask!2385) (and (or (= mask!2385 #b00000000000000000000000000000111) (= mask!2385 #b00000000000000000000000000001111) (= mask!2385 #b00000000000000000000000000011111) (= mask!2385 #b00000000000000000000000000111111) (= mask!2385 #b00000000000000000000000001111111) (= mask!2385 #b00000000000000000000000011111111) (= mask!2385 #b00000000000000000000000111111111) (= mask!2385 #b00000000000000000000001111111111) (= mask!2385 #b00000000000000000000011111111111) (= mask!2385 #b00000000000000000000111111111111) (= mask!2385 #b00000000000000000001111111111111) (= mask!2385 #b00000000000000000011111111111111) (= mask!2385 #b00000000000000000111111111111111) (= mask!2385 #b00000000000000001111111111111111) (= mask!2385 #b00000000000000011111111111111111) (= mask!2385 #b00000000000000111111111111111111) (= mask!2385 #b00000000000001111111111111111111) (= mask!2385 #b00000000000011111111111111111111) (= mask!2385 #b00000000000111111111111111111111) (= mask!2385 #b00000000001111111111111111111111) (= mask!2385 #b00000000011111111111111111111111) (= mask!2385 #b00000000111111111111111111111111) (= mask!2385 #b00000001111111111111111111111111) (= mask!2385 #b00000011111111111111111111111111) (= mask!2385 #b00000111111111111111111111111111) (= mask!2385 #b00001111111111111111111111111111) (= mask!2385 #b00011111111111111111111111111111) (= mask!2385 #b00111111111111111111111111111111)) (bvsle mask!2385 #b00111111111111111111111111111111)))))

(assert (=> start!34964 d!71289))

(declare-fun d!71291 () Bool)

(assert (=> d!71291 (= (array_inv!6558 _values!1525) (bvsge (size!9256 _values!1525) #b00000000000000000000000000000000))))

(assert (=> start!34964 d!71291))

(declare-fun d!71293 () Bool)

(assert (=> d!71293 (= (array_inv!6559 _keys!1895) (bvsge (size!9255 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> start!34964 d!71293))

(declare-fun d!71295 () Bool)

(assert (=> d!71295 (= (validKeyInArray!0 k0!1348) (and (not (= k0!1348 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1348 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!349950 d!71295))

(declare-fun b!350154 () Bool)

(declare-fun e!214504 () Bool)

(assert (=> b!350154 (= e!214504 tp_is_empty!7623)))

(declare-fun mapIsEmpty!12909 () Bool)

(declare-fun mapRes!12909 () Bool)

(assert (=> mapIsEmpty!12909 mapRes!12909))

(declare-fun b!350155 () Bool)

(declare-fun e!214503 () Bool)

(assert (=> b!350155 (= e!214503 tp_is_empty!7623)))

(declare-fun mapNonEmpty!12909 () Bool)

(declare-fun tp!26598 () Bool)

(assert (=> mapNonEmpty!12909 (= mapRes!12909 (and tp!26598 e!214504))))

(declare-fun mapRest!12909 () (Array (_ BitVec 32) ValueCell!3468))

(declare-fun mapKey!12909 () (_ BitVec 32))

(declare-fun mapValue!12909 () ValueCell!3468)

(assert (=> mapNonEmpty!12909 (= mapRest!12903 (store mapRest!12909 mapKey!12909 mapValue!12909))))

(declare-fun condMapEmpty!12909 () Bool)

(declare-fun mapDefault!12909 () ValueCell!3468)

(assert (=> mapNonEmpty!12903 (= condMapEmpty!12909 (= mapRest!12903 ((as const (Array (_ BitVec 32) ValueCell!3468)) mapDefault!12909)))))

(assert (=> mapNonEmpty!12903 (= tp!26588 (and e!214503 mapRes!12909))))

(assert (= (and mapNonEmpty!12903 condMapEmpty!12909) mapIsEmpty!12909))

(assert (= (and mapNonEmpty!12903 (not condMapEmpty!12909)) mapNonEmpty!12909))

(assert (= (and mapNonEmpty!12909 ((_ is ValueCellFull!3468) mapValue!12909)) b!350154))

(assert (= (and mapNonEmpty!12903 ((_ is ValueCellFull!3468) mapDefault!12909)) b!350155))

(declare-fun m!350431 () Bool)

(assert (=> mapNonEmpty!12909 m!350431))

(declare-fun b_lambda!8531 () Bool)

(assert (= b_lambda!8529 (or (and start!34964 b_free!7671) b_lambda!8531)))

(check-sat (not bm!26972) (not b!350120) (not b!350144) b_and!14921 (not bm!26965) (not b!350088) (not b_lambda!8531) (not b_next!7671) (not b!350043) (not b!350033) (not d!71271) (not bm!26963) (not b!350135) (not d!71273) (not b!350123) (not b!350104) (not bm!26961) (not mapNonEmpty!12909) (not b!350102) (not bm!26964) (not b!350041) (not b!350089) (not bm!26969) (not b!350121) (not b!350106) (not d!71283) (not d!71275) (not b!350145) tp_is_empty!7623 (not b!350095) (not b!350129) (not b!350091) (not b!350092))
(check-sat b_and!14921 (not b_next!7671))
