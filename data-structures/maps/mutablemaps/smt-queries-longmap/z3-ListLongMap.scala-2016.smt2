; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35156 () Bool)

(assert start!35156)

(declare-fun b_free!7767 () Bool)

(declare-fun b_next!7767 () Bool)

(assert (=> start!35156 (= b_free!7767 (not b_next!7767))))

(declare-fun tp!26889 () Bool)

(declare-fun b_and!15021 () Bool)

(assert (=> start!35156 (= tp!26889 b_and!15021)))

(declare-fun b!352194 () Bool)

(declare-fun e!215690 () Bool)

(declare-fun e!215683 () Bool)

(declare-fun mapRes!13059 () Bool)

(assert (=> b!352194 (= e!215690 (and e!215683 mapRes!13059))))

(declare-fun condMapEmpty!13059 () Bool)

(declare-datatypes ((V!11269 0))(
  ( (V!11270 (val!3904 Int)) )
))
(declare-datatypes ((ValueCell!3516 0))(
  ( (ValueCellFull!3516 (v!6090 V!11269)) (EmptyCell!3516) )
))
(declare-datatypes ((array!18985 0))(
  ( (array!18986 (arr!8992 (Array (_ BitVec 32) ValueCell!3516)) (size!9344 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18985)

(declare-fun mapDefault!13059 () ValueCell!3516)

(assert (=> b!352194 (= condMapEmpty!13059 (= (arr!8992 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3516)) mapDefault!13059)))))

(declare-fun b!352195 () Bool)

(declare-fun e!215685 () Bool)

(declare-fun e!215689 () Bool)

(assert (=> b!352195 (= e!215685 e!215689)))

(declare-fun res!195378 () Bool)

(assert (=> b!352195 (=> (not res!195378) (not e!215689))))

(declare-datatypes ((SeekEntryResult!3458 0))(
  ( (MissingZero!3458 (index!16011 (_ BitVec 32))) (Found!3458 (index!16012 (_ BitVec 32))) (Intermediate!3458 (undefined!4270 Bool) (index!16013 (_ BitVec 32)) (x!35043 (_ BitVec 32))) (Undefined!3458) (MissingVacant!3458 (index!16014 (_ BitVec 32))) )
))
(declare-fun lt!165162 () SeekEntryResult!3458)

(get-info :version)

(assert (=> b!352195 (= res!195378 (and (not ((_ is Found!3458) lt!165162)) (not ((_ is MissingZero!3458) lt!165162)) ((_ is MissingVacant!3458) lt!165162)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((array!18987 0))(
  ( (array!18988 (arr!8993 (Array (_ BitVec 32) (_ BitVec 64))) (size!9345 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18987)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18987 (_ BitVec 32)) SeekEntryResult!3458)

(assert (=> b!352195 (= lt!165162 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!352196 () Bool)

(declare-fun e!215682 () Bool)

(declare-fun tp_is_empty!7719 () Bool)

(assert (=> b!352196 (= e!215682 tp_is_empty!7719)))

(declare-fun b!352197 () Bool)

(declare-fun e!215687 () Bool)

(assert (=> b!352197 (= e!215687 (not (= (select (arr!8993 _keys!1895) (index!16014 lt!165162)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!352198 () Bool)

(declare-fun res!195373 () Bool)

(assert (=> b!352198 (=> (not res!195373) (not e!215685))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!352198 (= res!195373 (and (= (size!9344 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9345 _keys!1895) (size!9344 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!352199 () Bool)

(declare-fun e!215684 () Bool)

(declare-fun e!215686 () Bool)

(assert (=> b!352199 (= e!215684 e!215686)))

(declare-fun c!53495 () Bool)

(assert (=> b!352199 (= c!53495 ((_ is MissingVacant!3458) lt!165162))))

(declare-fun b!352200 () Bool)

(assert (=> b!352200 (= e!215686 e!215687)))

(declare-fun res!195377 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!352200 (= res!195377 (not (inRange!0 (index!16014 lt!165162) mask!2385)))))

(assert (=> b!352200 (=> res!195377 e!215687)))

(declare-fun b!352201 () Bool)

(declare-datatypes ((Unit!10898 0))(
  ( (Unit!10899) )
))
(declare-fun e!215688 () Unit!10898)

(declare-fun Unit!10900 () Unit!10898)

(assert (=> b!352201 (= e!215688 Unit!10900)))

(declare-fun zeroValue!1467 () V!11269)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!11269)

(declare-fun lt!165163 () Unit!10898)

(declare-fun lemmaArrayContainsKeyThenInListMap!335 (array!18987 array!18985 (_ BitVec 32) (_ BitVec 32) V!11269 V!11269 (_ BitVec 64) (_ BitVec 32) Int) Unit!10898)

(declare-fun arrayScanForKey!0 (array!18987 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!352201 (= lt!165163 (lemmaArrayContainsKeyThenInListMap!335 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!352201 false))

(declare-fun b!352202 () Bool)

(declare-fun res!195375 () Bool)

(assert (=> b!352202 (=> (not res!195375) (not e!215685))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!352202 (= res!195375 (validKeyInArray!0 k0!1348))))

(declare-fun mapNonEmpty!13059 () Bool)

(declare-fun tp!26888 () Bool)

(assert (=> mapNonEmpty!13059 (= mapRes!13059 (and tp!26888 e!215682))))

(declare-fun mapRest!13059 () (Array (_ BitVec 32) ValueCell!3516))

(declare-fun mapKey!13059 () (_ BitVec 32))

(declare-fun mapValue!13059 () ValueCell!3516)

(assert (=> mapNonEmpty!13059 (= (arr!8992 _values!1525) (store mapRest!13059 mapKey!13059 mapValue!13059))))

(declare-fun res!195376 () Bool)

(assert (=> start!35156 (=> (not res!195376) (not e!215685))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35156 (= res!195376 (validMask!0 mask!2385))))

(assert (=> start!35156 e!215685))

(assert (=> start!35156 true))

(assert (=> start!35156 tp_is_empty!7719))

(assert (=> start!35156 tp!26889))

(declare-fun array_inv!6626 (array!18985) Bool)

(assert (=> start!35156 (and (array_inv!6626 _values!1525) e!215690)))

(declare-fun array_inv!6627 (array!18987) Bool)

(assert (=> start!35156 (array_inv!6627 _keys!1895)))

(declare-fun b!352203 () Bool)

(declare-fun Unit!10901 () Unit!10898)

(assert (=> b!352203 (= e!215688 Unit!10901)))

(declare-fun mapIsEmpty!13059 () Bool)

(assert (=> mapIsEmpty!13059 mapRes!13059))

(declare-fun b!352204 () Bool)

(assert (=> b!352204 (= e!215683 tp_is_empty!7719)))

(declare-fun b!352205 () Bool)

(declare-fun res!195374 () Bool)

(assert (=> b!352205 (=> (not res!195374) (not e!215685))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18987 (_ BitVec 32)) Bool)

(assert (=> b!352205 (= res!195374 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!352206 () Bool)

(assert (=> b!352206 (= e!215689 e!215684)))

(declare-fun res!195372 () Bool)

(assert (=> b!352206 (=> (not res!195372) (not e!215684))))

(declare-fun lt!165165 () Bool)

(assert (=> b!352206 (= res!195372 (not lt!165165))))

(declare-fun lt!165164 () Unit!10898)

(assert (=> b!352206 (= lt!165164 e!215688)))

(declare-fun c!53494 () Bool)

(assert (=> b!352206 (= c!53494 lt!165165)))

(declare-fun arrayContainsKey!0 (array!18987 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!352206 (= lt!165165 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!352207 () Bool)

(declare-fun res!195380 () Bool)

(assert (=> b!352207 (=> (not res!195380) (not e!215685))))

(declare-datatypes ((tuple2!5628 0))(
  ( (tuple2!5629 (_1!2824 (_ BitVec 64)) (_2!2824 V!11269)) )
))
(declare-datatypes ((List!5265 0))(
  ( (Nil!5262) (Cons!5261 (h!6117 tuple2!5628) (t!10417 List!5265)) )
))
(declare-datatypes ((ListLongMap!4555 0))(
  ( (ListLongMap!4556 (toList!2293 List!5265)) )
))
(declare-fun contains!2361 (ListLongMap!4555 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1810 (array!18987 array!18985 (_ BitVec 32) (_ BitVec 32) V!11269 V!11269 (_ BitVec 32) Int) ListLongMap!4555)

(assert (=> b!352207 (= res!195380 (not (contains!2361 (getCurrentListMap!1810 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!352208 () Bool)

(assert (=> b!352208 (= e!215686 (not ((_ is Undefined!3458) lt!165162)))))

(declare-fun b!352209 () Bool)

(declare-fun res!195379 () Bool)

(assert (=> b!352209 (=> (not res!195379) (not e!215685))))

(declare-datatypes ((List!5266 0))(
  ( (Nil!5263) (Cons!5262 (h!6118 (_ BitVec 64)) (t!10418 List!5266)) )
))
(declare-fun arrayNoDuplicates!0 (array!18987 (_ BitVec 32) List!5266) Bool)

(assert (=> b!352209 (= res!195379 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5263))))

(assert (= (and start!35156 res!195376) b!352198))

(assert (= (and b!352198 res!195373) b!352205))

(assert (= (and b!352205 res!195374) b!352209))

(assert (= (and b!352209 res!195379) b!352202))

(assert (= (and b!352202 res!195375) b!352207))

(assert (= (and b!352207 res!195380) b!352195))

(assert (= (and b!352195 res!195378) b!352206))

(assert (= (and b!352206 c!53494) b!352201))

(assert (= (and b!352206 (not c!53494)) b!352203))

(assert (= (and b!352206 res!195372) b!352199))

(assert (= (and b!352199 c!53495) b!352200))

(assert (= (and b!352199 (not c!53495)) b!352208))

(assert (= (and b!352200 (not res!195377)) b!352197))

(assert (= (and b!352194 condMapEmpty!13059) mapIsEmpty!13059))

(assert (= (and b!352194 (not condMapEmpty!13059)) mapNonEmpty!13059))

(assert (= (and mapNonEmpty!13059 ((_ is ValueCellFull!3516) mapValue!13059)) b!352196))

(assert (= (and b!352194 ((_ is ValueCellFull!3516) mapDefault!13059)) b!352204))

(assert (= start!35156 b!352194))

(declare-fun m!351885 () Bool)

(assert (=> b!352201 m!351885))

(assert (=> b!352201 m!351885))

(declare-fun m!351887 () Bool)

(assert (=> b!352201 m!351887))

(declare-fun m!351889 () Bool)

(assert (=> b!352207 m!351889))

(assert (=> b!352207 m!351889))

(declare-fun m!351891 () Bool)

(assert (=> b!352207 m!351891))

(declare-fun m!351893 () Bool)

(assert (=> b!352200 m!351893))

(declare-fun m!351895 () Bool)

(assert (=> start!35156 m!351895))

(declare-fun m!351897 () Bool)

(assert (=> start!35156 m!351897))

(declare-fun m!351899 () Bool)

(assert (=> start!35156 m!351899))

(declare-fun m!351901 () Bool)

(assert (=> b!352202 m!351901))

(declare-fun m!351903 () Bool)

(assert (=> b!352206 m!351903))

(declare-fun m!351905 () Bool)

(assert (=> b!352209 m!351905))

(declare-fun m!351907 () Bool)

(assert (=> b!352197 m!351907))

(declare-fun m!351909 () Bool)

(assert (=> b!352195 m!351909))

(declare-fun m!351911 () Bool)

(assert (=> b!352205 m!351911))

(declare-fun m!351913 () Bool)

(assert (=> mapNonEmpty!13059 m!351913))

(check-sat (not start!35156) (not b!352207) (not b!352202) tp_is_empty!7719 (not mapNonEmpty!13059) (not b!352200) (not b!352209) (not b_next!7767) (not b!352205) (not b!352201) b_and!15021 (not b!352195) (not b!352206))
(check-sat b_and!15021 (not b_next!7767))
(get-model)

(declare-fun d!71401 () Bool)

(declare-fun e!215726 () Bool)

(assert (=> d!71401 e!215726))

(declare-fun res!195410 () Bool)

(assert (=> d!71401 (=> res!195410 e!215726)))

(declare-fun lt!165189 () Bool)

(assert (=> d!71401 (= res!195410 (not lt!165189))))

(declare-fun lt!165187 () Bool)

(assert (=> d!71401 (= lt!165189 lt!165187)))

(declare-fun lt!165188 () Unit!10898)

(declare-fun e!215727 () Unit!10898)

(assert (=> d!71401 (= lt!165188 e!215727)))

(declare-fun c!53504 () Bool)

(assert (=> d!71401 (= c!53504 lt!165187)))

(declare-fun containsKey!343 (List!5265 (_ BitVec 64)) Bool)

(assert (=> d!71401 (= lt!165187 (containsKey!343 (toList!2293 (getCurrentListMap!1810 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(assert (=> d!71401 (= (contains!2361 (getCurrentListMap!1810 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348) lt!165189)))

(declare-fun b!352264 () Bool)

(declare-fun lt!165186 () Unit!10898)

(assert (=> b!352264 (= e!215727 lt!165186)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!292 (List!5265 (_ BitVec 64)) Unit!10898)

(assert (=> b!352264 (= lt!165186 (lemmaContainsKeyImpliesGetValueByKeyDefined!292 (toList!2293 (getCurrentListMap!1810 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-datatypes ((Option!357 0))(
  ( (Some!356 (v!6092 V!11269)) (None!355) )
))
(declare-fun isDefined!293 (Option!357) Bool)

(declare-fun getValueByKey!351 (List!5265 (_ BitVec 64)) Option!357)

(assert (=> b!352264 (isDefined!293 (getValueByKey!351 (toList!2293 (getCurrentListMap!1810 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-fun b!352265 () Bool)

(declare-fun Unit!10905 () Unit!10898)

(assert (=> b!352265 (= e!215727 Unit!10905)))

(declare-fun b!352266 () Bool)

(assert (=> b!352266 (= e!215726 (isDefined!293 (getValueByKey!351 (toList!2293 (getCurrentListMap!1810 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348)))))

(assert (= (and d!71401 c!53504) b!352264))

(assert (= (and d!71401 (not c!53504)) b!352265))

(assert (= (and d!71401 (not res!195410)) b!352266))

(declare-fun m!351945 () Bool)

(assert (=> d!71401 m!351945))

(declare-fun m!351947 () Bool)

(assert (=> b!352264 m!351947))

(declare-fun m!351949 () Bool)

(assert (=> b!352264 m!351949))

(assert (=> b!352264 m!351949))

(declare-fun m!351951 () Bool)

(assert (=> b!352264 m!351951))

(assert (=> b!352266 m!351949))

(assert (=> b!352266 m!351949))

(assert (=> b!352266 m!351951))

(assert (=> b!352207 d!71401))

(declare-fun b!352309 () Bool)

(declare-fun e!215766 () Bool)

(declare-fun lt!165242 () ListLongMap!4555)

(declare-fun apply!294 (ListLongMap!4555 (_ BitVec 64)) V!11269)

(assert (=> b!352309 (= e!215766 (= (apply!294 lt!165242 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1467))))

(declare-fun bm!27068 () Bool)

(declare-fun call!27077 () Bool)

(assert (=> bm!27068 (= call!27077 (contains!2361 lt!165242 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!352310 () Bool)

(declare-fun e!215755 () Bool)

(assert (=> b!352310 (= e!215755 (validKeyInArray!0 (select (arr!8993 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!352311 () Bool)

(declare-fun e!215759 () Bool)

(declare-fun e!215763 () Bool)

(assert (=> b!352311 (= e!215759 e!215763)))

(declare-fun res!195434 () Bool)

(declare-fun call!27072 () Bool)

(assert (=> b!352311 (= res!195434 call!27072)))

(assert (=> b!352311 (=> (not res!195434) (not e!215763))))

(declare-fun b!352312 () Bool)

(declare-fun res!195431 () Bool)

(declare-fun e!215757 () Bool)

(assert (=> b!352312 (=> (not res!195431) (not e!215757))))

(declare-fun e!215754 () Bool)

(assert (=> b!352312 (= res!195431 e!215754)))

(declare-fun res!195435 () Bool)

(assert (=> b!352312 (=> res!195435 e!215754)))

(assert (=> b!352312 (= res!195435 (not e!215755))))

(declare-fun res!195433 () Bool)

(assert (=> b!352312 (=> (not res!195433) (not e!215755))))

(assert (=> b!352312 (= res!195433 (bvslt #b00000000000000000000000000000000 (size!9345 _keys!1895)))))

(declare-fun b!352313 () Bool)

(declare-fun e!215756 () ListLongMap!4555)

(declare-fun call!27073 () ListLongMap!4555)

(assert (=> b!352313 (= e!215756 call!27073)))

(declare-fun b!352314 () Bool)

(assert (=> b!352314 (= e!215759 (not call!27072))))

(declare-fun bm!27069 () Bool)

(declare-fun call!27076 () ListLongMap!4555)

(assert (=> bm!27069 (= call!27073 call!27076)))

(declare-fun bm!27070 () Bool)

(declare-fun call!27074 () ListLongMap!4555)

(declare-fun call!27071 () ListLongMap!4555)

(assert (=> bm!27070 (= call!27074 call!27071)))

(declare-fun b!352316 () Bool)

(declare-fun res!195430 () Bool)

(assert (=> b!352316 (=> (not res!195430) (not e!215757))))

(assert (=> b!352316 (= res!195430 e!215759)))

(declare-fun c!53520 () Bool)

(assert (=> b!352316 (= c!53520 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!352317 () Bool)

(declare-fun e!215760 () Unit!10898)

(declare-fun lt!165248 () Unit!10898)

(assert (=> b!352317 (= e!215760 lt!165248)))

(declare-fun lt!165249 () ListLongMap!4555)

(declare-fun getCurrentListMapNoExtraKeys!613 (array!18987 array!18985 (_ BitVec 32) (_ BitVec 32) V!11269 V!11269 (_ BitVec 32) Int) ListLongMap!4555)

(assert (=> b!352317 (= lt!165249 (getCurrentListMapNoExtraKeys!613 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!165238 () (_ BitVec 64))

(assert (=> b!352317 (= lt!165238 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!165255 () (_ BitVec 64))

(assert (=> b!352317 (= lt!165255 (select (arr!8993 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!165235 () Unit!10898)

(declare-fun addStillContains!270 (ListLongMap!4555 (_ BitVec 64) V!11269 (_ BitVec 64)) Unit!10898)

(assert (=> b!352317 (= lt!165235 (addStillContains!270 lt!165249 lt!165238 zeroValue!1467 lt!165255))))

(declare-fun +!738 (ListLongMap!4555 tuple2!5628) ListLongMap!4555)

(assert (=> b!352317 (contains!2361 (+!738 lt!165249 (tuple2!5629 lt!165238 zeroValue!1467)) lt!165255)))

(declare-fun lt!165237 () Unit!10898)

(assert (=> b!352317 (= lt!165237 lt!165235)))

(declare-fun lt!165254 () ListLongMap!4555)

(assert (=> b!352317 (= lt!165254 (getCurrentListMapNoExtraKeys!613 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!165236 () (_ BitVec 64))

(assert (=> b!352317 (= lt!165236 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!165240 () (_ BitVec 64))

(assert (=> b!352317 (= lt!165240 (select (arr!8993 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!165244 () Unit!10898)

(declare-fun addApplyDifferent!270 (ListLongMap!4555 (_ BitVec 64) V!11269 (_ BitVec 64)) Unit!10898)

(assert (=> b!352317 (= lt!165244 (addApplyDifferent!270 lt!165254 lt!165236 minValue!1467 lt!165240))))

(assert (=> b!352317 (= (apply!294 (+!738 lt!165254 (tuple2!5629 lt!165236 minValue!1467)) lt!165240) (apply!294 lt!165254 lt!165240))))

(declare-fun lt!165252 () Unit!10898)

(assert (=> b!352317 (= lt!165252 lt!165244)))

(declare-fun lt!165239 () ListLongMap!4555)

(assert (=> b!352317 (= lt!165239 (getCurrentListMapNoExtraKeys!613 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!165241 () (_ BitVec 64))

(assert (=> b!352317 (= lt!165241 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!165250 () (_ BitVec 64))

(assert (=> b!352317 (= lt!165250 (select (arr!8993 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!165253 () Unit!10898)

(assert (=> b!352317 (= lt!165253 (addApplyDifferent!270 lt!165239 lt!165241 zeroValue!1467 lt!165250))))

(assert (=> b!352317 (= (apply!294 (+!738 lt!165239 (tuple2!5629 lt!165241 zeroValue!1467)) lt!165250) (apply!294 lt!165239 lt!165250))))

(declare-fun lt!165247 () Unit!10898)

(assert (=> b!352317 (= lt!165247 lt!165253)))

(declare-fun lt!165246 () ListLongMap!4555)

(assert (=> b!352317 (= lt!165246 (getCurrentListMapNoExtraKeys!613 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!165251 () (_ BitVec 64))

(assert (=> b!352317 (= lt!165251 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!165243 () (_ BitVec 64))

(assert (=> b!352317 (= lt!165243 (select (arr!8993 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> b!352317 (= lt!165248 (addApplyDifferent!270 lt!165246 lt!165251 minValue!1467 lt!165243))))

(assert (=> b!352317 (= (apply!294 (+!738 lt!165246 (tuple2!5629 lt!165251 minValue!1467)) lt!165243) (apply!294 lt!165246 lt!165243))))

(declare-fun bm!27071 () Bool)

(assert (=> bm!27071 (= call!27071 (getCurrentListMapNoExtraKeys!613 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun b!352318 () Bool)

(declare-fun c!53518 () Bool)

(assert (=> b!352318 (= c!53518 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!215761 () ListLongMap!4555)

(assert (=> b!352318 (= e!215756 e!215761)))

(declare-fun b!352319 () Bool)

(declare-fun call!27075 () ListLongMap!4555)

(assert (=> b!352319 (= e!215761 call!27075)))

(declare-fun b!352320 () Bool)

(declare-fun e!215762 () Bool)

(assert (=> b!352320 (= e!215757 e!215762)))

(declare-fun c!53522 () Bool)

(assert (=> b!352320 (= c!53522 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!352321 () Bool)

(declare-fun e!215765 () Bool)

(assert (=> b!352321 (= e!215765 (validKeyInArray!0 (select (arr!8993 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun bm!27072 () Bool)

(assert (=> bm!27072 (= call!27075 call!27074)))

(declare-fun b!352322 () Bool)

(assert (=> b!352322 (= e!215761 call!27073)))

(declare-fun b!352323 () Bool)

(assert (=> b!352323 (= e!215763 (= (apply!294 lt!165242 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1467))))

(declare-fun bm!27073 () Bool)

(assert (=> bm!27073 (= call!27072 (contains!2361 lt!165242 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!352324 () Bool)

(declare-fun e!215758 () Bool)

(assert (=> b!352324 (= e!215754 e!215758)))

(declare-fun res!195436 () Bool)

(assert (=> b!352324 (=> (not res!195436) (not e!215758))))

(assert (=> b!352324 (= res!195436 (contains!2361 lt!165242 (select (arr!8993 _keys!1895) #b00000000000000000000000000000000)))))

(assert (=> b!352324 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9345 _keys!1895)))))

(declare-fun b!352325 () Bool)

(declare-fun Unit!10906 () Unit!10898)

(assert (=> b!352325 (= e!215760 Unit!10906)))

(declare-fun c!53521 () Bool)

(declare-fun c!53519 () Bool)

(declare-fun bm!27074 () Bool)

(assert (=> bm!27074 (= call!27076 (+!738 (ite c!53519 call!27071 (ite c!53521 call!27074 call!27075)) (ite (or c!53519 c!53521) (tuple2!5629 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1467) (tuple2!5629 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467))))))

(declare-fun b!352315 () Bool)

(assert (=> b!352315 (= e!215762 (not call!27077))))

(declare-fun d!71403 () Bool)

(assert (=> d!71403 e!215757))

(declare-fun res!195432 () Bool)

(assert (=> d!71403 (=> (not res!195432) (not e!215757))))

(assert (=> d!71403 (= res!195432 (or (bvsge #b00000000000000000000000000000000 (size!9345 _keys!1895)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9345 _keys!1895)))))))

(declare-fun lt!165245 () ListLongMap!4555)

(assert (=> d!71403 (= lt!165242 lt!165245)))

(declare-fun lt!165234 () Unit!10898)

(assert (=> d!71403 (= lt!165234 e!215760)))

(declare-fun c!53517 () Bool)

(assert (=> d!71403 (= c!53517 e!215765)))

(declare-fun res!195429 () Bool)

(assert (=> d!71403 (=> (not res!195429) (not e!215765))))

(assert (=> d!71403 (= res!195429 (bvslt #b00000000000000000000000000000000 (size!9345 _keys!1895)))))

(declare-fun e!215764 () ListLongMap!4555)

(assert (=> d!71403 (= lt!165245 e!215764)))

(assert (=> d!71403 (= c!53519 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!71403 (validMask!0 mask!2385)))

(assert (=> d!71403 (= (getCurrentListMap!1810 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) lt!165242)))

(declare-fun b!352326 () Bool)

(assert (=> b!352326 (= e!215764 e!215756)))

(assert (=> b!352326 (= c!53521 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!352327 () Bool)

(assert (=> b!352327 (= e!215762 e!215766)))

(declare-fun res!195437 () Bool)

(assert (=> b!352327 (= res!195437 call!27077)))

(assert (=> b!352327 (=> (not res!195437) (not e!215766))))

(declare-fun b!352328 () Bool)

(declare-fun get!4813 (ValueCell!3516 V!11269) V!11269)

(declare-fun dynLambda!632 (Int (_ BitVec 64)) V!11269)

(assert (=> b!352328 (= e!215758 (= (apply!294 lt!165242 (select (arr!8993 _keys!1895) #b00000000000000000000000000000000)) (get!4813 (select (arr!8992 _values!1525) #b00000000000000000000000000000000) (dynLambda!632 defaultEntry!1528 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!352328 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9344 _values!1525)))))

(assert (=> b!352328 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9345 _keys!1895)))))

(declare-fun b!352329 () Bool)

(assert (=> b!352329 (= e!215764 (+!738 call!27076 (tuple2!5629 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467)))))

(assert (= (and d!71403 c!53519) b!352329))

(assert (= (and d!71403 (not c!53519)) b!352326))

(assert (= (and b!352326 c!53521) b!352313))

(assert (= (and b!352326 (not c!53521)) b!352318))

(assert (= (and b!352318 c!53518) b!352322))

(assert (= (and b!352318 (not c!53518)) b!352319))

(assert (= (or b!352322 b!352319) bm!27072))

(assert (= (or b!352313 bm!27072) bm!27070))

(assert (= (or b!352313 b!352322) bm!27069))

(assert (= (or b!352329 bm!27070) bm!27071))

(assert (= (or b!352329 bm!27069) bm!27074))

(assert (= (and d!71403 res!195429) b!352321))

(assert (= (and d!71403 c!53517) b!352317))

(assert (= (and d!71403 (not c!53517)) b!352325))

(assert (= (and d!71403 res!195432) b!352312))

(assert (= (and b!352312 res!195433) b!352310))

(assert (= (and b!352312 (not res!195435)) b!352324))

(assert (= (and b!352324 res!195436) b!352328))

(assert (= (and b!352312 res!195431) b!352316))

(assert (= (and b!352316 c!53520) b!352311))

(assert (= (and b!352316 (not c!53520)) b!352314))

(assert (= (and b!352311 res!195434) b!352323))

(assert (= (or b!352311 b!352314) bm!27073))

(assert (= (and b!352316 res!195430) b!352320))

(assert (= (and b!352320 c!53522) b!352327))

(assert (= (and b!352320 (not c!53522)) b!352315))

(assert (= (and b!352327 res!195437) b!352309))

(assert (= (or b!352327 b!352315) bm!27068))

(declare-fun b_lambda!8545 () Bool)

(assert (=> (not b_lambda!8545) (not b!352328)))

(declare-fun t!10422 () Bool)

(declare-fun tb!3111 () Bool)

(assert (=> (and start!35156 (= defaultEntry!1528 defaultEntry!1528) t!10422) tb!3111))

(declare-fun result!5647 () Bool)

(assert (=> tb!3111 (= result!5647 tp_is_empty!7719)))

(assert (=> b!352328 t!10422))

(declare-fun b_and!15025 () Bool)

(assert (= b_and!15021 (and (=> t!10422 result!5647) b_and!15025)))

(declare-fun m!351953 () Bool)

(assert (=> b!352329 m!351953))

(declare-fun m!351955 () Bool)

(assert (=> bm!27074 m!351955))

(declare-fun m!351957 () Bool)

(assert (=> b!352323 m!351957))

(declare-fun m!351959 () Bool)

(assert (=> b!352309 m!351959))

(declare-fun m!351961 () Bool)

(assert (=> b!352321 m!351961))

(assert (=> b!352321 m!351961))

(declare-fun m!351963 () Bool)

(assert (=> b!352321 m!351963))

(declare-fun m!351965 () Bool)

(assert (=> bm!27068 m!351965))

(assert (=> d!71403 m!351895))

(assert (=> b!352324 m!351961))

(assert (=> b!352324 m!351961))

(declare-fun m!351967 () Bool)

(assert (=> b!352324 m!351967))

(declare-fun m!351969 () Bool)

(assert (=> b!352317 m!351969))

(declare-fun m!351971 () Bool)

(assert (=> b!352317 m!351971))

(declare-fun m!351973 () Bool)

(assert (=> b!352317 m!351973))

(declare-fun m!351975 () Bool)

(assert (=> b!352317 m!351975))

(declare-fun m!351977 () Bool)

(assert (=> b!352317 m!351977))

(declare-fun m!351979 () Bool)

(assert (=> b!352317 m!351979))

(declare-fun m!351981 () Bool)

(assert (=> b!352317 m!351981))

(declare-fun m!351983 () Bool)

(assert (=> b!352317 m!351983))

(assert (=> b!352317 m!351961))

(assert (=> b!352317 m!351981))

(declare-fun m!351985 () Bool)

(assert (=> b!352317 m!351985))

(declare-fun m!351987 () Bool)

(assert (=> b!352317 m!351987))

(declare-fun m!351989 () Bool)

(assert (=> b!352317 m!351989))

(declare-fun m!351991 () Bool)

(assert (=> b!352317 m!351991))

(declare-fun m!351993 () Bool)

(assert (=> b!352317 m!351993))

(declare-fun m!351995 () Bool)

(assert (=> b!352317 m!351995))

(assert (=> b!352317 m!351969))

(declare-fun m!351997 () Bool)

(assert (=> b!352317 m!351997))

(assert (=> b!352317 m!351995))

(declare-fun m!351999 () Bool)

(assert (=> b!352317 m!351999))

(assert (=> b!352317 m!351989))

(declare-fun m!352001 () Bool)

(assert (=> b!352328 m!352001))

(assert (=> b!352328 m!351961))

(declare-fun m!352003 () Bool)

(assert (=> b!352328 m!352003))

(assert (=> b!352328 m!351961))

(declare-fun m!352005 () Bool)

(assert (=> b!352328 m!352005))

(assert (=> b!352328 m!352005))

(assert (=> b!352328 m!352001))

(declare-fun m!352007 () Bool)

(assert (=> b!352328 m!352007))

(assert (=> b!352310 m!351961))

(assert (=> b!352310 m!351961))

(assert (=> b!352310 m!351963))

(assert (=> bm!27071 m!351993))

(declare-fun m!352009 () Bool)

(assert (=> bm!27073 m!352009))

(assert (=> b!352207 d!71403))

(declare-fun d!71405 () Bool)

(assert (=> d!71405 (= (inRange!0 (index!16014 lt!165162) mask!2385) (and (bvsge (index!16014 lt!165162) #b00000000000000000000000000000000) (bvslt (index!16014 lt!165162) (bvadd mask!2385 #b00000000000000000000000000000001))))))

(assert (=> b!352200 d!71405))

(declare-fun d!71407 () Bool)

(assert (=> d!71407 (= (validMask!0 mask!2385) (and (or (= mask!2385 #b00000000000000000000000000000111) (= mask!2385 #b00000000000000000000000000001111) (= mask!2385 #b00000000000000000000000000011111) (= mask!2385 #b00000000000000000000000000111111) (= mask!2385 #b00000000000000000000000001111111) (= mask!2385 #b00000000000000000000000011111111) (= mask!2385 #b00000000000000000000000111111111) (= mask!2385 #b00000000000000000000001111111111) (= mask!2385 #b00000000000000000000011111111111) (= mask!2385 #b00000000000000000000111111111111) (= mask!2385 #b00000000000000000001111111111111) (= mask!2385 #b00000000000000000011111111111111) (= mask!2385 #b00000000000000000111111111111111) (= mask!2385 #b00000000000000001111111111111111) (= mask!2385 #b00000000000000011111111111111111) (= mask!2385 #b00000000000000111111111111111111) (= mask!2385 #b00000000000001111111111111111111) (= mask!2385 #b00000000000011111111111111111111) (= mask!2385 #b00000000000111111111111111111111) (= mask!2385 #b00000000001111111111111111111111) (= mask!2385 #b00000000011111111111111111111111) (= mask!2385 #b00000000111111111111111111111111) (= mask!2385 #b00000001111111111111111111111111) (= mask!2385 #b00000011111111111111111111111111) (= mask!2385 #b00000111111111111111111111111111) (= mask!2385 #b00001111111111111111111111111111) (= mask!2385 #b00011111111111111111111111111111) (= mask!2385 #b00111111111111111111111111111111)) (bvsle mask!2385 #b00111111111111111111111111111111)))))

(assert (=> start!35156 d!71407))

(declare-fun d!71409 () Bool)

(assert (=> d!71409 (= (array_inv!6626 _values!1525) (bvsge (size!9344 _values!1525) #b00000000000000000000000000000000))))

(assert (=> start!35156 d!71409))

(declare-fun d!71411 () Bool)

(assert (=> d!71411 (= (array_inv!6627 _keys!1895) (bvsge (size!9345 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> start!35156 d!71411))

(declare-fun e!215774 () SeekEntryResult!3458)

(declare-fun b!352344 () Bool)

(declare-fun lt!165264 () SeekEntryResult!3458)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!18987 (_ BitVec 32)) SeekEntryResult!3458)

(assert (=> b!352344 (= e!215774 (seekKeyOrZeroReturnVacant!0 (x!35043 lt!165264) (index!16013 lt!165264) (index!16013 lt!165264) k0!1348 _keys!1895 mask!2385))))

(declare-fun b!352345 () Bool)

(declare-fun e!215775 () SeekEntryResult!3458)

(assert (=> b!352345 (= e!215775 (Found!3458 (index!16013 lt!165264)))))

(declare-fun b!352346 () Bool)

(assert (=> b!352346 (= e!215774 (MissingZero!3458 (index!16013 lt!165264)))))

(declare-fun b!352347 () Bool)

(declare-fun e!215773 () SeekEntryResult!3458)

(assert (=> b!352347 (= e!215773 e!215775)))

(declare-fun lt!165263 () (_ BitVec 64))

(assert (=> b!352347 (= lt!165263 (select (arr!8993 _keys!1895) (index!16013 lt!165264)))))

(declare-fun c!53529 () Bool)

(assert (=> b!352347 (= c!53529 (= lt!165263 k0!1348))))

(declare-fun b!352348 () Bool)

(declare-fun c!53531 () Bool)

(assert (=> b!352348 (= c!53531 (= lt!165263 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!352348 (= e!215775 e!215774)))

(declare-fun b!352349 () Bool)

(assert (=> b!352349 (= e!215773 Undefined!3458)))

(declare-fun d!71413 () Bool)

(declare-fun lt!165262 () SeekEntryResult!3458)

(assert (=> d!71413 (and (or ((_ is Undefined!3458) lt!165262) (not ((_ is Found!3458) lt!165262)) (and (bvsge (index!16012 lt!165262) #b00000000000000000000000000000000) (bvslt (index!16012 lt!165262) (size!9345 _keys!1895)))) (or ((_ is Undefined!3458) lt!165262) ((_ is Found!3458) lt!165262) (not ((_ is MissingZero!3458) lt!165262)) (and (bvsge (index!16011 lt!165262) #b00000000000000000000000000000000) (bvslt (index!16011 lt!165262) (size!9345 _keys!1895)))) (or ((_ is Undefined!3458) lt!165262) ((_ is Found!3458) lt!165262) ((_ is MissingZero!3458) lt!165262) (not ((_ is MissingVacant!3458) lt!165262)) (and (bvsge (index!16014 lt!165262) #b00000000000000000000000000000000) (bvslt (index!16014 lt!165262) (size!9345 _keys!1895)))) (or ((_ is Undefined!3458) lt!165262) (ite ((_ is Found!3458) lt!165262) (= (select (arr!8993 _keys!1895) (index!16012 lt!165262)) k0!1348) (ite ((_ is MissingZero!3458) lt!165262) (= (select (arr!8993 _keys!1895) (index!16011 lt!165262)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3458) lt!165262) (= (select (arr!8993 _keys!1895) (index!16014 lt!165262)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!71413 (= lt!165262 e!215773)))

(declare-fun c!53530 () Bool)

(assert (=> d!71413 (= c!53530 (and ((_ is Intermediate!3458) lt!165264) (undefined!4270 lt!165264)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!18987 (_ BitVec 32)) SeekEntryResult!3458)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!71413 (= lt!165264 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1348 mask!2385) k0!1348 _keys!1895 mask!2385))))

(assert (=> d!71413 (validMask!0 mask!2385)))

(assert (=> d!71413 (= (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385) lt!165262)))

(assert (= (and d!71413 c!53530) b!352349))

(assert (= (and d!71413 (not c!53530)) b!352347))

(assert (= (and b!352347 c!53529) b!352345))

(assert (= (and b!352347 (not c!53529)) b!352348))

(assert (= (and b!352348 c!53531) b!352346))

(assert (= (and b!352348 (not c!53531)) b!352344))

(declare-fun m!352011 () Bool)

(assert (=> b!352344 m!352011))

(declare-fun m!352013 () Bool)

(assert (=> b!352347 m!352013))

(declare-fun m!352015 () Bool)

(assert (=> d!71413 m!352015))

(declare-fun m!352017 () Bool)

(assert (=> d!71413 m!352017))

(declare-fun m!352019 () Bool)

(assert (=> d!71413 m!352019))

(declare-fun m!352021 () Bool)

(assert (=> d!71413 m!352021))

(declare-fun m!352023 () Bool)

(assert (=> d!71413 m!352023))

(assert (=> d!71413 m!351895))

(assert (=> d!71413 m!352019))

(assert (=> b!352195 d!71413))

(declare-fun b!352360 () Bool)

(declare-fun e!215785 () Bool)

(declare-fun contains!2363 (List!5266 (_ BitVec 64)) Bool)

(assert (=> b!352360 (= e!215785 (contains!2363 Nil!5263 (select (arr!8993 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!352361 () Bool)

(declare-fun e!215787 () Bool)

(declare-fun call!27080 () Bool)

(assert (=> b!352361 (= e!215787 call!27080)))

(declare-fun b!352362 () Bool)

(declare-fun e!215784 () Bool)

(declare-fun e!215786 () Bool)

(assert (=> b!352362 (= e!215784 e!215786)))

(declare-fun res!195445 () Bool)

(assert (=> b!352362 (=> (not res!195445) (not e!215786))))

(assert (=> b!352362 (= res!195445 (not e!215785))))

(declare-fun res!195446 () Bool)

(assert (=> b!352362 (=> (not res!195446) (not e!215785))))

(assert (=> b!352362 (= res!195446 (validKeyInArray!0 (select (arr!8993 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!352363 () Bool)

(assert (=> b!352363 (= e!215787 call!27080)))

(declare-fun b!352364 () Bool)

(assert (=> b!352364 (= e!215786 e!215787)))

(declare-fun c!53534 () Bool)

(assert (=> b!352364 (= c!53534 (validKeyInArray!0 (select (arr!8993 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun bm!27077 () Bool)

(assert (=> bm!27077 (= call!27080 (arrayNoDuplicates!0 _keys!1895 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!53534 (Cons!5262 (select (arr!8993 _keys!1895) #b00000000000000000000000000000000) Nil!5263) Nil!5263)))))

(declare-fun d!71415 () Bool)

(declare-fun res!195444 () Bool)

(assert (=> d!71415 (=> res!195444 e!215784)))

(assert (=> d!71415 (= res!195444 (bvsge #b00000000000000000000000000000000 (size!9345 _keys!1895)))))

(assert (=> d!71415 (= (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5263) e!215784)))

(assert (= (and d!71415 (not res!195444)) b!352362))

(assert (= (and b!352362 res!195446) b!352360))

(assert (= (and b!352362 res!195445) b!352364))

(assert (= (and b!352364 c!53534) b!352363))

(assert (= (and b!352364 (not c!53534)) b!352361))

(assert (= (or b!352363 b!352361) bm!27077))

(assert (=> b!352360 m!351961))

(assert (=> b!352360 m!351961))

(declare-fun m!352025 () Bool)

(assert (=> b!352360 m!352025))

(assert (=> b!352362 m!351961))

(assert (=> b!352362 m!351961))

(assert (=> b!352362 m!351963))

(assert (=> b!352364 m!351961))

(assert (=> b!352364 m!351961))

(assert (=> b!352364 m!351963))

(assert (=> bm!27077 m!351961))

(declare-fun m!352027 () Bool)

(assert (=> bm!27077 m!352027))

(assert (=> b!352209 d!71415))

(declare-fun d!71417 () Bool)

(assert (=> d!71417 (contains!2361 (getCurrentListMap!1810 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))

(declare-fun lt!165267 () Unit!10898)

(declare-fun choose!1317 (array!18987 array!18985 (_ BitVec 32) (_ BitVec 32) V!11269 V!11269 (_ BitVec 64) (_ BitVec 32) Int) Unit!10898)

(assert (=> d!71417 (= lt!165267 (choose!1317 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> d!71417 (validMask!0 mask!2385)))

(assert (=> d!71417 (= (lemmaArrayContainsKeyThenInListMap!335 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528) lt!165267)))

(declare-fun bs!11986 () Bool)

(assert (= bs!11986 d!71417))

(assert (=> bs!11986 m!351889))

(assert (=> bs!11986 m!351889))

(assert (=> bs!11986 m!351891))

(assert (=> bs!11986 m!351885))

(declare-fun m!352029 () Bool)

(assert (=> bs!11986 m!352029))

(assert (=> bs!11986 m!351895))

(assert (=> b!352201 d!71417))

(declare-fun d!71419 () Bool)

(declare-fun lt!165270 () (_ BitVec 32))

(assert (=> d!71419 (and (or (bvslt lt!165270 #b00000000000000000000000000000000) (bvsge lt!165270 (size!9345 _keys!1895)) (and (bvsge lt!165270 #b00000000000000000000000000000000) (bvslt lt!165270 (size!9345 _keys!1895)))) (bvsge lt!165270 #b00000000000000000000000000000000) (bvslt lt!165270 (size!9345 _keys!1895)) (= (select (arr!8993 _keys!1895) lt!165270) k0!1348))))

(declare-fun e!215790 () (_ BitVec 32))

(assert (=> d!71419 (= lt!165270 e!215790)))

(declare-fun c!53537 () Bool)

(assert (=> d!71419 (= c!53537 (= (select (arr!8993 _keys!1895) #b00000000000000000000000000000000) k0!1348))))

(assert (=> d!71419 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9345 _keys!1895)) (bvslt (size!9345 _keys!1895) #b01111111111111111111111111111111))))

(assert (=> d!71419 (= (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) lt!165270)))

(declare-fun b!352369 () Bool)

(assert (=> b!352369 (= e!215790 #b00000000000000000000000000000000)))

(declare-fun b!352370 () Bool)

(assert (=> b!352370 (= e!215790 (arrayScanForKey!0 _keys!1895 k0!1348 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!71419 c!53537) b!352369))

(assert (= (and d!71419 (not c!53537)) b!352370))

(declare-fun m!352031 () Bool)

(assert (=> d!71419 m!352031))

(assert (=> d!71419 m!351961))

(declare-fun m!352033 () Bool)

(assert (=> b!352370 m!352033))

(assert (=> b!352201 d!71419))

(declare-fun b!352379 () Bool)

(declare-fun e!215797 () Bool)

(declare-fun e!215798 () Bool)

(assert (=> b!352379 (= e!215797 e!215798)))

(declare-fun lt!165279 () (_ BitVec 64))

(assert (=> b!352379 (= lt!165279 (select (arr!8993 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!165277 () Unit!10898)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18987 (_ BitVec 64) (_ BitVec 32)) Unit!10898)

(assert (=> b!352379 (= lt!165277 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 lt!165279 #b00000000000000000000000000000000))))

(assert (=> b!352379 (arrayContainsKey!0 _keys!1895 lt!165279 #b00000000000000000000000000000000)))

(declare-fun lt!165278 () Unit!10898)

(assert (=> b!352379 (= lt!165278 lt!165277)))

(declare-fun res!195452 () Bool)

(assert (=> b!352379 (= res!195452 (= (seekEntryOrOpen!0 (select (arr!8993 _keys!1895) #b00000000000000000000000000000000) _keys!1895 mask!2385) (Found!3458 #b00000000000000000000000000000000)))))

(assert (=> b!352379 (=> (not res!195452) (not e!215798))))

(declare-fun b!352380 () Bool)

(declare-fun call!27083 () Bool)

(assert (=> b!352380 (= e!215797 call!27083)))

(declare-fun bm!27080 () Bool)

(assert (=> bm!27080 (= call!27083 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1895 mask!2385))))

(declare-fun b!352381 () Bool)

(declare-fun e!215799 () Bool)

(assert (=> b!352381 (= e!215799 e!215797)))

(declare-fun c!53540 () Bool)

(assert (=> b!352381 (= c!53540 (validKeyInArray!0 (select (arr!8993 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!352382 () Bool)

(assert (=> b!352382 (= e!215798 call!27083)))

(declare-fun d!71421 () Bool)

(declare-fun res!195451 () Bool)

(assert (=> d!71421 (=> res!195451 e!215799)))

(assert (=> d!71421 (= res!195451 (bvsge #b00000000000000000000000000000000 (size!9345 _keys!1895)))))

(assert (=> d!71421 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385) e!215799)))

(assert (= (and d!71421 (not res!195451)) b!352381))

(assert (= (and b!352381 c!53540) b!352379))

(assert (= (and b!352381 (not c!53540)) b!352380))

(assert (= (and b!352379 res!195452) b!352382))

(assert (= (or b!352382 b!352380) bm!27080))

(assert (=> b!352379 m!351961))

(declare-fun m!352035 () Bool)

(assert (=> b!352379 m!352035))

(declare-fun m!352037 () Bool)

(assert (=> b!352379 m!352037))

(assert (=> b!352379 m!351961))

(declare-fun m!352039 () Bool)

(assert (=> b!352379 m!352039))

(declare-fun m!352041 () Bool)

(assert (=> bm!27080 m!352041))

(assert (=> b!352381 m!351961))

(assert (=> b!352381 m!351961))

(assert (=> b!352381 m!351963))

(assert (=> b!352205 d!71421))

(declare-fun d!71423 () Bool)

(assert (=> d!71423 (= (validKeyInArray!0 k0!1348) (and (not (= k0!1348 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1348 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!352202 d!71423))

(declare-fun d!71425 () Bool)

(declare-fun res!195457 () Bool)

(declare-fun e!215804 () Bool)

(assert (=> d!71425 (=> res!195457 e!215804)))

(assert (=> d!71425 (= res!195457 (= (select (arr!8993 _keys!1895) #b00000000000000000000000000000000) k0!1348))))

(assert (=> d!71425 (= (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) e!215804)))

(declare-fun b!352387 () Bool)

(declare-fun e!215805 () Bool)

(assert (=> b!352387 (= e!215804 e!215805)))

(declare-fun res!195458 () Bool)

(assert (=> b!352387 (=> (not res!195458) (not e!215805))))

(assert (=> b!352387 (= res!195458 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!9345 _keys!1895)))))

(declare-fun b!352388 () Bool)

(assert (=> b!352388 (= e!215805 (arrayContainsKey!0 _keys!1895 k0!1348 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!71425 (not res!195457)) b!352387))

(assert (= (and b!352387 res!195458) b!352388))

(assert (=> d!71425 m!351961))

(declare-fun m!352043 () Bool)

(assert (=> b!352388 m!352043))

(assert (=> b!352206 d!71425))

(declare-fun mapNonEmpty!13065 () Bool)

(declare-fun mapRes!13065 () Bool)

(declare-fun tp!26898 () Bool)

(declare-fun e!215811 () Bool)

(assert (=> mapNonEmpty!13065 (= mapRes!13065 (and tp!26898 e!215811))))

(declare-fun mapRest!13065 () (Array (_ BitVec 32) ValueCell!3516))

(declare-fun mapKey!13065 () (_ BitVec 32))

(declare-fun mapValue!13065 () ValueCell!3516)

(assert (=> mapNonEmpty!13065 (= mapRest!13059 (store mapRest!13065 mapKey!13065 mapValue!13065))))

(declare-fun b!352395 () Bool)

(assert (=> b!352395 (= e!215811 tp_is_empty!7719)))

(declare-fun mapIsEmpty!13065 () Bool)

(assert (=> mapIsEmpty!13065 mapRes!13065))

(declare-fun condMapEmpty!13065 () Bool)

(declare-fun mapDefault!13065 () ValueCell!3516)

(assert (=> mapNonEmpty!13059 (= condMapEmpty!13065 (= mapRest!13059 ((as const (Array (_ BitVec 32) ValueCell!3516)) mapDefault!13065)))))

(declare-fun e!215810 () Bool)

(assert (=> mapNonEmpty!13059 (= tp!26888 (and e!215810 mapRes!13065))))

(declare-fun b!352396 () Bool)

(assert (=> b!352396 (= e!215810 tp_is_empty!7719)))

(assert (= (and mapNonEmpty!13059 condMapEmpty!13065) mapIsEmpty!13065))

(assert (= (and mapNonEmpty!13059 (not condMapEmpty!13065)) mapNonEmpty!13065))

(assert (= (and mapNonEmpty!13065 ((_ is ValueCellFull!3516) mapValue!13065)) b!352395))

(assert (= (and mapNonEmpty!13059 ((_ is ValueCellFull!3516) mapDefault!13065)) b!352396))

(declare-fun m!352045 () Bool)

(assert (=> mapNonEmpty!13065 m!352045))

(declare-fun b_lambda!8547 () Bool)

(assert (= b_lambda!8545 (or (and start!35156 b_free!7767) b_lambda!8547)))

(check-sat (not d!71417) b_and!15025 (not b!352344) (not b!352379) (not b!352388) (not b!352329) (not b!352317) (not b!352321) (not b!352362) (not b_lambda!8547) (not b!352360) (not bm!27073) (not bm!27077) (not bm!27071) (not b!352309) (not b!352381) (not b!352264) (not d!71401) (not b!352370) (not d!71413) (not b!352266) (not b!352364) (not b!352328) tp_is_empty!7719 (not b!352310) (not d!71403) (not b!352324) (not mapNonEmpty!13065) (not bm!27074) (not bm!27068) (not bm!27080) (not b!352323) (not b_next!7767))
(check-sat b_and!15025 (not b_next!7767))
