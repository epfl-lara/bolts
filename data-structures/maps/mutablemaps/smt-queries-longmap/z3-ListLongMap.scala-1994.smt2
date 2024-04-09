; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34858 () Bool)

(assert start!34858)

(declare-fun b_free!7635 () Bool)

(declare-fun b_next!7635 () Bool)

(assert (=> start!34858 (= b_free!7635 (not b_next!7635))))

(declare-fun tp!26472 () Bool)

(declare-fun b_and!14875 () Bool)

(assert (=> start!34858 (= tp!26472 b_and!14875)))

(declare-fun b!348835 () Bool)

(declare-fun res!193405 () Bool)

(declare-fun e!213698 () Bool)

(assert (=> b!348835 (=> (not res!193405) (not e!213698))))

(declare-datatypes ((array!18727 0))(
  ( (array!18728 (arr!8870 (Array (_ BitVec 32) (_ BitVec 64))) (size!9222 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18727)

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!18727 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!348835 (= res!193405 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!12840 () Bool)

(declare-fun mapRes!12840 () Bool)

(declare-fun tp!26471 () Bool)

(declare-fun e!213701 () Bool)

(assert (=> mapNonEmpty!12840 (= mapRes!12840 (and tp!26471 e!213701))))

(declare-datatypes ((V!11093 0))(
  ( (V!11094 (val!3838 Int)) )
))
(declare-datatypes ((ValueCell!3450 0))(
  ( (ValueCellFull!3450 (v!6017 V!11093)) (EmptyCell!3450) )
))
(declare-fun mapValue!12840 () ValueCell!3450)

(declare-datatypes ((array!18729 0))(
  ( (array!18730 (arr!8871 (Array (_ BitVec 32) ValueCell!3450)) (size!9223 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18729)

(declare-fun mapRest!12840 () (Array (_ BitVec 32) ValueCell!3450))

(declare-fun mapKey!12840 () (_ BitVec 32))

(assert (=> mapNonEmpty!12840 (= (arr!8871 _values!1525) (store mapRest!12840 mapKey!12840 mapValue!12840))))

(declare-fun b!348836 () Bool)

(declare-fun res!193409 () Bool)

(declare-fun e!213696 () Bool)

(assert (=> b!348836 (=> (not res!193409) (not e!213696))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!348836 (= res!193409 (and (= (size!9223 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9222 _keys!1895) (size!9223 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!348837 () Bool)

(declare-fun res!193411 () Bool)

(assert (=> b!348837 (=> (not res!193411) (not e!213696))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!348837 (= res!193411 (validKeyInArray!0 k0!1348))))

(declare-fun b!348838 () Bool)

(declare-fun res!193410 () Bool)

(assert (=> b!348838 (=> (not res!193410) (not e!213696))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18727 (_ BitVec 32)) Bool)

(assert (=> b!348838 (= res!193410 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!348839 () Bool)

(declare-fun lt!163947 () (_ BitVec 32))

(assert (=> b!348839 (= e!213698 (or (bvslt lt!163947 #b00000000000000000000000000000000) (bvsge lt!163947 (size!9222 _keys!1895))))))

(declare-fun arrayScanForKey!0 (array!18727 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!348839 (= lt!163947 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!348840 () Bool)

(declare-fun res!193408 () Bool)

(assert (=> b!348840 (=> (not res!193408) (not e!213696))))

(declare-datatypes ((List!5184 0))(
  ( (Nil!5181) (Cons!5180 (h!6036 (_ BitVec 64)) (t!10322 List!5184)) )
))
(declare-fun arrayNoDuplicates!0 (array!18727 (_ BitVec 32) List!5184) Bool)

(assert (=> b!348840 (= res!193408 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5181))))

(declare-fun b!348841 () Bool)

(declare-fun e!213700 () Bool)

(declare-fun e!213699 () Bool)

(assert (=> b!348841 (= e!213700 (and e!213699 mapRes!12840))))

(declare-fun condMapEmpty!12840 () Bool)

(declare-fun mapDefault!12840 () ValueCell!3450)

(assert (=> b!348841 (= condMapEmpty!12840 (= (arr!8871 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3450)) mapDefault!12840)))))

(declare-fun b!348842 () Bool)

(assert (=> b!348842 (= e!213696 e!213698)))

(declare-fun res!193406 () Bool)

(assert (=> b!348842 (=> (not res!193406) (not e!213698))))

(declare-datatypes ((SeekEntryResult!3416 0))(
  ( (MissingZero!3416 (index!15843 (_ BitVec 32))) (Found!3416 (index!15844 (_ BitVec 32))) (Intermediate!3416 (undefined!4228 Bool) (index!15845 (_ BitVec 32)) (x!34755 (_ BitVec 32))) (Undefined!3416) (MissingVacant!3416 (index!15846 (_ BitVec 32))) )
))
(declare-fun lt!163946 () SeekEntryResult!3416)

(get-info :version)

(assert (=> b!348842 (= res!193406 (and (not ((_ is Found!3416) lt!163946)) ((_ is MissingZero!3416) lt!163946)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18727 (_ BitVec 32)) SeekEntryResult!3416)

(assert (=> b!348842 (= lt!163946 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!12840 () Bool)

(assert (=> mapIsEmpty!12840 mapRes!12840))

(declare-fun res!193404 () Bool)

(assert (=> start!34858 (=> (not res!193404) (not e!213696))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34858 (= res!193404 (validMask!0 mask!2385))))

(assert (=> start!34858 e!213696))

(assert (=> start!34858 true))

(declare-fun tp_is_empty!7587 () Bool)

(assert (=> start!34858 tp_is_empty!7587))

(assert (=> start!34858 tp!26472))

(declare-fun array_inv!6544 (array!18729) Bool)

(assert (=> start!34858 (and (array_inv!6544 _values!1525) e!213700)))

(declare-fun array_inv!6545 (array!18727) Bool)

(assert (=> start!34858 (array_inv!6545 _keys!1895)))

(declare-fun b!348834 () Bool)

(declare-fun res!193407 () Bool)

(assert (=> b!348834 (=> (not res!193407) (not e!213696))))

(declare-fun zeroValue!1467 () V!11093)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!11093)

(declare-datatypes ((tuple2!5544 0))(
  ( (tuple2!5545 (_1!2782 (_ BitVec 64)) (_2!2782 V!11093)) )
))
(declare-datatypes ((List!5185 0))(
  ( (Nil!5182) (Cons!5181 (h!6037 tuple2!5544) (t!10323 List!5185)) )
))
(declare-datatypes ((ListLongMap!4471 0))(
  ( (ListLongMap!4472 (toList!2251 List!5185)) )
))
(declare-fun contains!2312 (ListLongMap!4471 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1768 (array!18727 array!18729 (_ BitVec 32) (_ BitVec 32) V!11093 V!11093 (_ BitVec 32) Int) ListLongMap!4471)

(assert (=> b!348834 (= res!193407 (not (contains!2312 (getCurrentListMap!1768 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!348843 () Bool)

(assert (=> b!348843 (= e!213699 tp_is_empty!7587)))

(declare-fun b!348844 () Bool)

(assert (=> b!348844 (= e!213701 tp_is_empty!7587)))

(assert (= (and start!34858 res!193404) b!348836))

(assert (= (and b!348836 res!193409) b!348838))

(assert (= (and b!348838 res!193410) b!348840))

(assert (= (and b!348840 res!193408) b!348837))

(assert (= (and b!348837 res!193411) b!348834))

(assert (= (and b!348834 res!193407) b!348842))

(assert (= (and b!348842 res!193406) b!348835))

(assert (= (and b!348835 res!193405) b!348839))

(assert (= (and b!348841 condMapEmpty!12840) mapIsEmpty!12840))

(assert (= (and b!348841 (not condMapEmpty!12840)) mapNonEmpty!12840))

(assert (= (and mapNonEmpty!12840 ((_ is ValueCellFull!3450) mapValue!12840)) b!348844))

(assert (= (and b!348841 ((_ is ValueCellFull!3450) mapDefault!12840)) b!348843))

(assert (= start!34858 b!348841))

(declare-fun m!349485 () Bool)

(assert (=> b!348842 m!349485))

(declare-fun m!349487 () Bool)

(assert (=> b!348834 m!349487))

(assert (=> b!348834 m!349487))

(declare-fun m!349489 () Bool)

(assert (=> b!348834 m!349489))

(declare-fun m!349491 () Bool)

(assert (=> b!348838 m!349491))

(declare-fun m!349493 () Bool)

(assert (=> mapNonEmpty!12840 m!349493))

(declare-fun m!349495 () Bool)

(assert (=> b!348837 m!349495))

(declare-fun m!349497 () Bool)

(assert (=> start!34858 m!349497))

(declare-fun m!349499 () Bool)

(assert (=> start!34858 m!349499))

(declare-fun m!349501 () Bool)

(assert (=> start!34858 m!349501))

(declare-fun m!349503 () Bool)

(assert (=> b!348840 m!349503))

(declare-fun m!349505 () Bool)

(assert (=> b!348839 m!349505))

(declare-fun m!349507 () Bool)

(assert (=> b!348835 m!349507))

(check-sat (not b!348839) (not b!348834) (not b!348840) (not b!348838) (not b_next!7635) tp_is_empty!7587 (not start!34858) b_and!14875 (not b!348837) (not b!348842) (not b!348835) (not mapNonEmpty!12840))
(check-sat b_and!14875 (not b_next!7635))
(get-model)

(declare-fun d!71187 () Bool)

(declare-fun res!193440 () Bool)

(declare-fun e!213724 () Bool)

(assert (=> d!71187 (=> res!193440 e!213724)))

(assert (=> d!71187 (= res!193440 (= (select (arr!8870 _keys!1895) #b00000000000000000000000000000000) k0!1348))))

(assert (=> d!71187 (= (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) e!213724)))

(declare-fun b!348882 () Bool)

(declare-fun e!213725 () Bool)

(assert (=> b!348882 (= e!213724 e!213725)))

(declare-fun res!193441 () Bool)

(assert (=> b!348882 (=> (not res!193441) (not e!213725))))

(assert (=> b!348882 (= res!193441 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!9222 _keys!1895)))))

(declare-fun b!348883 () Bool)

(assert (=> b!348883 (= e!213725 (arrayContainsKey!0 _keys!1895 k0!1348 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!71187 (not res!193440)) b!348882))

(assert (= (and b!348882 res!193441) b!348883))

(declare-fun m!349533 () Bool)

(assert (=> d!71187 m!349533))

(declare-fun m!349535 () Bool)

(assert (=> b!348883 m!349535))

(assert (=> b!348835 d!71187))

(declare-fun bm!26858 () Bool)

(declare-fun call!26861 () Bool)

(declare-fun c!53132 () Bool)

(assert (=> bm!26858 (= call!26861 (arrayNoDuplicates!0 _keys!1895 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!53132 (Cons!5180 (select (arr!8870 _keys!1895) #b00000000000000000000000000000000) Nil!5181) Nil!5181)))))

(declare-fun b!348894 () Bool)

(declare-fun e!213736 () Bool)

(declare-fun e!213735 () Bool)

(assert (=> b!348894 (= e!213736 e!213735)))

(assert (=> b!348894 (= c!53132 (validKeyInArray!0 (select (arr!8870 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!348895 () Bool)

(assert (=> b!348895 (= e!213735 call!26861)))

(declare-fun b!348896 () Bool)

(declare-fun e!213734 () Bool)

(declare-fun contains!2313 (List!5184 (_ BitVec 64)) Bool)

(assert (=> b!348896 (= e!213734 (contains!2313 Nil!5181 (select (arr!8870 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!348897 () Bool)

(assert (=> b!348897 (= e!213735 call!26861)))

(declare-fun d!71189 () Bool)

(declare-fun res!193448 () Bool)

(declare-fun e!213737 () Bool)

(assert (=> d!71189 (=> res!193448 e!213737)))

(assert (=> d!71189 (= res!193448 (bvsge #b00000000000000000000000000000000 (size!9222 _keys!1895)))))

(assert (=> d!71189 (= (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5181) e!213737)))

(declare-fun b!348898 () Bool)

(assert (=> b!348898 (= e!213737 e!213736)))

(declare-fun res!193450 () Bool)

(assert (=> b!348898 (=> (not res!193450) (not e!213736))))

(assert (=> b!348898 (= res!193450 (not e!213734))))

(declare-fun res!193449 () Bool)

(assert (=> b!348898 (=> (not res!193449) (not e!213734))))

(assert (=> b!348898 (= res!193449 (validKeyInArray!0 (select (arr!8870 _keys!1895) #b00000000000000000000000000000000)))))

(assert (= (and d!71189 (not res!193448)) b!348898))

(assert (= (and b!348898 res!193449) b!348896))

(assert (= (and b!348898 res!193450) b!348894))

(assert (= (and b!348894 c!53132) b!348897))

(assert (= (and b!348894 (not c!53132)) b!348895))

(assert (= (or b!348897 b!348895) bm!26858))

(assert (=> bm!26858 m!349533))

(declare-fun m!349537 () Bool)

(assert (=> bm!26858 m!349537))

(assert (=> b!348894 m!349533))

(assert (=> b!348894 m!349533))

(declare-fun m!349539 () Bool)

(assert (=> b!348894 m!349539))

(assert (=> b!348896 m!349533))

(assert (=> b!348896 m!349533))

(declare-fun m!349541 () Bool)

(assert (=> b!348896 m!349541))

(assert (=> b!348898 m!349533))

(assert (=> b!348898 m!349533))

(assert (=> b!348898 m!349539))

(assert (=> b!348840 d!71189))

(declare-fun bm!26861 () Bool)

(declare-fun call!26864 () Bool)

(assert (=> bm!26861 (= call!26864 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1895 mask!2385))))

(declare-fun b!348907 () Bool)

(declare-fun e!213745 () Bool)

(declare-fun e!213746 () Bool)

(assert (=> b!348907 (= e!213745 e!213746)))

(declare-fun c!53135 () Bool)

(assert (=> b!348907 (= c!53135 (validKeyInArray!0 (select (arr!8870 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!348908 () Bool)

(declare-fun e!213744 () Bool)

(assert (=> b!348908 (= e!213746 e!213744)))

(declare-fun lt!163962 () (_ BitVec 64))

(assert (=> b!348908 (= lt!163962 (select (arr!8870 _keys!1895) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10806 0))(
  ( (Unit!10807) )
))
(declare-fun lt!163960 () Unit!10806)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18727 (_ BitVec 64) (_ BitVec 32)) Unit!10806)

(assert (=> b!348908 (= lt!163960 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 lt!163962 #b00000000000000000000000000000000))))

(assert (=> b!348908 (arrayContainsKey!0 _keys!1895 lt!163962 #b00000000000000000000000000000000)))

(declare-fun lt!163961 () Unit!10806)

(assert (=> b!348908 (= lt!163961 lt!163960)))

(declare-fun res!193455 () Bool)

(assert (=> b!348908 (= res!193455 (= (seekEntryOrOpen!0 (select (arr!8870 _keys!1895) #b00000000000000000000000000000000) _keys!1895 mask!2385) (Found!3416 #b00000000000000000000000000000000)))))

(assert (=> b!348908 (=> (not res!193455) (not e!213744))))

(declare-fun b!348909 () Bool)

(assert (=> b!348909 (= e!213744 call!26864)))

(declare-fun b!348910 () Bool)

(assert (=> b!348910 (= e!213746 call!26864)))

(declare-fun d!71191 () Bool)

(declare-fun res!193456 () Bool)

(assert (=> d!71191 (=> res!193456 e!213745)))

(assert (=> d!71191 (= res!193456 (bvsge #b00000000000000000000000000000000 (size!9222 _keys!1895)))))

(assert (=> d!71191 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385) e!213745)))

(assert (= (and d!71191 (not res!193456)) b!348907))

(assert (= (and b!348907 c!53135) b!348908))

(assert (= (and b!348907 (not c!53135)) b!348910))

(assert (= (and b!348908 res!193455) b!348909))

(assert (= (or b!348909 b!348910) bm!26861))

(declare-fun m!349543 () Bool)

(assert (=> bm!26861 m!349543))

(assert (=> b!348907 m!349533))

(assert (=> b!348907 m!349533))

(assert (=> b!348907 m!349539))

(assert (=> b!348908 m!349533))

(declare-fun m!349545 () Bool)

(assert (=> b!348908 m!349545))

(declare-fun m!349547 () Bool)

(assert (=> b!348908 m!349547))

(assert (=> b!348908 m!349533))

(declare-fun m!349549 () Bool)

(assert (=> b!348908 m!349549))

(assert (=> b!348838 d!71191))

(declare-fun d!71193 () Bool)

(declare-fun e!213752 () Bool)

(assert (=> d!71193 e!213752))

(declare-fun res!193459 () Bool)

(assert (=> d!71193 (=> res!193459 e!213752)))

(declare-fun lt!163973 () Bool)

(assert (=> d!71193 (= res!193459 (not lt!163973))))

(declare-fun lt!163972 () Bool)

(assert (=> d!71193 (= lt!163973 lt!163972)))

(declare-fun lt!163974 () Unit!10806)

(declare-fun e!213751 () Unit!10806)

(assert (=> d!71193 (= lt!163974 e!213751)))

(declare-fun c!53138 () Bool)

(assert (=> d!71193 (= c!53138 lt!163972)))

(declare-fun containsKey!336 (List!5185 (_ BitVec 64)) Bool)

(assert (=> d!71193 (= lt!163972 (containsKey!336 (toList!2251 (getCurrentListMap!1768 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(assert (=> d!71193 (= (contains!2312 (getCurrentListMap!1768 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348) lt!163973)))

(declare-fun b!348917 () Bool)

(declare-fun lt!163971 () Unit!10806)

(assert (=> b!348917 (= e!213751 lt!163971)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!285 (List!5185 (_ BitVec 64)) Unit!10806)

(assert (=> b!348917 (= lt!163971 (lemmaContainsKeyImpliesGetValueByKeyDefined!285 (toList!2251 (getCurrentListMap!1768 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-datatypes ((Option!350 0))(
  ( (Some!349 (v!6019 V!11093)) (None!348) )
))
(declare-fun isDefined!286 (Option!350) Bool)

(declare-fun getValueByKey!344 (List!5185 (_ BitVec 64)) Option!350)

(assert (=> b!348917 (isDefined!286 (getValueByKey!344 (toList!2251 (getCurrentListMap!1768 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-fun b!348918 () Bool)

(declare-fun Unit!10808 () Unit!10806)

(assert (=> b!348918 (= e!213751 Unit!10808)))

(declare-fun b!348919 () Bool)

(assert (=> b!348919 (= e!213752 (isDefined!286 (getValueByKey!344 (toList!2251 (getCurrentListMap!1768 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348)))))

(assert (= (and d!71193 c!53138) b!348917))

(assert (= (and d!71193 (not c!53138)) b!348918))

(assert (= (and d!71193 (not res!193459)) b!348919))

(declare-fun m!349551 () Bool)

(assert (=> d!71193 m!349551))

(declare-fun m!349553 () Bool)

(assert (=> b!348917 m!349553))

(declare-fun m!349555 () Bool)

(assert (=> b!348917 m!349555))

(assert (=> b!348917 m!349555))

(declare-fun m!349557 () Bool)

(assert (=> b!348917 m!349557))

(assert (=> b!348919 m!349555))

(assert (=> b!348919 m!349555))

(assert (=> b!348919 m!349557))

(assert (=> b!348834 d!71193))

(declare-fun bm!26876 () Bool)

(declare-fun call!26879 () ListLongMap!4471)

(declare-fun call!26881 () ListLongMap!4471)

(assert (=> bm!26876 (= call!26879 call!26881)))

(declare-fun b!348963 () Bool)

(declare-fun e!213782 () ListLongMap!4471)

(declare-fun call!26885 () ListLongMap!4471)

(declare-fun +!731 (ListLongMap!4471 tuple2!5544) ListLongMap!4471)

(assert (=> b!348963 (= e!213782 (+!731 call!26885 (tuple2!5545 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467)))))

(declare-fun b!348964 () Bool)

(declare-fun e!213785 () Unit!10806)

(declare-fun lt!164025 () Unit!10806)

(assert (=> b!348964 (= e!213785 lt!164025)))

(declare-fun lt!164022 () ListLongMap!4471)

(declare-fun getCurrentListMapNoExtraKeys!606 (array!18727 array!18729 (_ BitVec 32) (_ BitVec 32) V!11093 V!11093 (_ BitVec 32) Int) ListLongMap!4471)

(assert (=> b!348964 (= lt!164022 (getCurrentListMapNoExtraKeys!606 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!164040 () (_ BitVec 64))

(assert (=> b!348964 (= lt!164040 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!164021 () (_ BitVec 64))

(assert (=> b!348964 (= lt!164021 (select (arr!8870 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!164032 () Unit!10806)

(declare-fun addStillContains!263 (ListLongMap!4471 (_ BitVec 64) V!11093 (_ BitVec 64)) Unit!10806)

(assert (=> b!348964 (= lt!164032 (addStillContains!263 lt!164022 lt!164040 zeroValue!1467 lt!164021))))

(assert (=> b!348964 (contains!2312 (+!731 lt!164022 (tuple2!5545 lt!164040 zeroValue!1467)) lt!164021)))

(declare-fun lt!164024 () Unit!10806)

(assert (=> b!348964 (= lt!164024 lt!164032)))

(declare-fun lt!164029 () ListLongMap!4471)

(assert (=> b!348964 (= lt!164029 (getCurrentListMapNoExtraKeys!606 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!164019 () (_ BitVec 64))

(assert (=> b!348964 (= lt!164019 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!164027 () (_ BitVec 64))

(assert (=> b!348964 (= lt!164027 (select (arr!8870 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!164030 () Unit!10806)

(declare-fun addApplyDifferent!263 (ListLongMap!4471 (_ BitVec 64) V!11093 (_ BitVec 64)) Unit!10806)

(assert (=> b!348964 (= lt!164030 (addApplyDifferent!263 lt!164029 lt!164019 minValue!1467 lt!164027))))

(declare-fun apply!287 (ListLongMap!4471 (_ BitVec 64)) V!11093)

(assert (=> b!348964 (= (apply!287 (+!731 lt!164029 (tuple2!5545 lt!164019 minValue!1467)) lt!164027) (apply!287 lt!164029 lt!164027))))

(declare-fun lt!164028 () Unit!10806)

(assert (=> b!348964 (= lt!164028 lt!164030)))

(declare-fun lt!164031 () ListLongMap!4471)

(assert (=> b!348964 (= lt!164031 (getCurrentListMapNoExtraKeys!606 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!164038 () (_ BitVec 64))

(assert (=> b!348964 (= lt!164038 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!164035 () (_ BitVec 64))

(assert (=> b!348964 (= lt!164035 (select (arr!8870 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!164036 () Unit!10806)

(assert (=> b!348964 (= lt!164036 (addApplyDifferent!263 lt!164031 lt!164038 zeroValue!1467 lt!164035))))

(assert (=> b!348964 (= (apply!287 (+!731 lt!164031 (tuple2!5545 lt!164038 zeroValue!1467)) lt!164035) (apply!287 lt!164031 lt!164035))))

(declare-fun lt!164034 () Unit!10806)

(assert (=> b!348964 (= lt!164034 lt!164036)))

(declare-fun lt!164020 () ListLongMap!4471)

(assert (=> b!348964 (= lt!164020 (getCurrentListMapNoExtraKeys!606 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!164033 () (_ BitVec 64))

(assert (=> b!348964 (= lt!164033 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!164023 () (_ BitVec 64))

(assert (=> b!348964 (= lt!164023 (select (arr!8870 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> b!348964 (= lt!164025 (addApplyDifferent!263 lt!164020 lt!164033 minValue!1467 lt!164023))))

(assert (=> b!348964 (= (apply!287 (+!731 lt!164020 (tuple2!5545 lt!164033 minValue!1467)) lt!164023) (apply!287 lt!164020 lt!164023))))

(declare-fun b!348965 () Bool)

(declare-fun e!213784 () ListLongMap!4471)

(declare-fun call!26884 () ListLongMap!4471)

(assert (=> b!348965 (= e!213784 call!26884)))

(declare-fun b!348966 () Bool)

(declare-fun e!213790 () ListLongMap!4471)

(assert (=> b!348966 (= e!213782 e!213790)))

(declare-fun c!53151 () Bool)

(assert (=> b!348966 (= c!53151 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!348967 () Bool)

(declare-fun e!213789 () Bool)

(declare-fun e!213779 () Bool)

(assert (=> b!348967 (= e!213789 e!213779)))

(declare-fun res!193486 () Bool)

(declare-fun call!26883 () Bool)

(assert (=> b!348967 (= res!193486 call!26883)))

(assert (=> b!348967 (=> (not res!193486) (not e!213779))))

(declare-fun b!348968 () Bool)

(declare-fun e!213780 () Bool)

(declare-fun lt!164039 () ListLongMap!4471)

(assert (=> b!348968 (= e!213780 (= (apply!287 lt!164039 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1467))))

(declare-fun b!348969 () Bool)

(declare-fun e!213788 () Bool)

(declare-fun e!213781 () Bool)

(assert (=> b!348969 (= e!213788 e!213781)))

(declare-fun c!53156 () Bool)

(assert (=> b!348969 (= c!53156 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!348970 () Bool)

(assert (=> b!348970 (= e!213790 call!26884)))

(declare-fun b!348971 () Bool)

(declare-fun Unit!10809 () Unit!10806)

(assert (=> b!348971 (= e!213785 Unit!10809)))

(declare-fun bm!26877 () Bool)

(assert (=> bm!26877 (= call!26884 call!26885)))

(declare-fun b!348962 () Bool)

(declare-fun call!26880 () Bool)

(assert (=> b!348962 (= e!213781 (not call!26880))))

(declare-fun d!71195 () Bool)

(assert (=> d!71195 e!213788))

(declare-fun res!193483 () Bool)

(assert (=> d!71195 (=> (not res!193483) (not e!213788))))

(assert (=> d!71195 (= res!193483 (or (bvsge #b00000000000000000000000000000000 (size!9222 _keys!1895)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9222 _keys!1895)))))))

(declare-fun lt!164037 () ListLongMap!4471)

(assert (=> d!71195 (= lt!164039 lt!164037)))

(declare-fun lt!164026 () Unit!10806)

(assert (=> d!71195 (= lt!164026 e!213785)))

(declare-fun c!53152 () Bool)

(declare-fun e!213791 () Bool)

(assert (=> d!71195 (= c!53152 e!213791)))

(declare-fun res!193480 () Bool)

(assert (=> d!71195 (=> (not res!193480) (not e!213791))))

(assert (=> d!71195 (= res!193480 (bvslt #b00000000000000000000000000000000 (size!9222 _keys!1895)))))

(assert (=> d!71195 (= lt!164037 e!213782)))

(declare-fun c!53153 () Bool)

(assert (=> d!71195 (= c!53153 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!71195 (validMask!0 mask!2385)))

(assert (=> d!71195 (= (getCurrentListMap!1768 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) lt!164039)))

(declare-fun bm!26878 () Bool)

(assert (=> bm!26878 (= call!26880 (contains!2312 lt!164039 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!348972 () Bool)

(assert (=> b!348972 (= e!213789 (not call!26883))))

(declare-fun b!348973 () Bool)

(declare-fun e!213786 () Bool)

(declare-fun get!4762 (ValueCell!3450 V!11093) V!11093)

(declare-fun dynLambda!625 (Int (_ BitVec 64)) V!11093)

(assert (=> b!348973 (= e!213786 (= (apply!287 lt!164039 (select (arr!8870 _keys!1895) #b00000000000000000000000000000000)) (get!4762 (select (arr!8871 _values!1525) #b00000000000000000000000000000000) (dynLambda!625 defaultEntry!1528 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!348973 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9223 _values!1525)))))

(assert (=> b!348973 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9222 _keys!1895)))))

(declare-fun b!348974 () Bool)

(assert (=> b!348974 (= e!213791 (validKeyInArray!0 (select (arr!8870 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!348975 () Bool)

(declare-fun call!26882 () ListLongMap!4471)

(assert (=> b!348975 (= e!213784 call!26882)))

(declare-fun b!348976 () Bool)

(declare-fun res!193479 () Bool)

(assert (=> b!348976 (=> (not res!193479) (not e!213788))))

(declare-fun e!213787 () Bool)

(assert (=> b!348976 (= res!193479 e!213787)))

(declare-fun res!193482 () Bool)

(assert (=> b!348976 (=> res!193482 e!213787)))

(declare-fun e!213783 () Bool)

(assert (=> b!348976 (= res!193482 (not e!213783))))

(declare-fun res!193484 () Bool)

(assert (=> b!348976 (=> (not res!193484) (not e!213783))))

(assert (=> b!348976 (= res!193484 (bvslt #b00000000000000000000000000000000 (size!9222 _keys!1895)))))

(declare-fun bm!26879 () Bool)

(assert (=> bm!26879 (= call!26885 (+!731 (ite c!53153 call!26881 (ite c!53151 call!26879 call!26882)) (ite (or c!53153 c!53151) (tuple2!5545 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1467) (tuple2!5545 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467))))))

(declare-fun bm!26880 () Bool)

(assert (=> bm!26880 (= call!26883 (contains!2312 lt!164039 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!348977 () Bool)

(assert (=> b!348977 (= e!213781 e!213780)))

(declare-fun res!193481 () Bool)

(assert (=> b!348977 (= res!193481 call!26880)))

(assert (=> b!348977 (=> (not res!193481) (not e!213780))))

(declare-fun b!348978 () Bool)

(assert (=> b!348978 (= e!213783 (validKeyInArray!0 (select (arr!8870 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun bm!26881 () Bool)

(assert (=> bm!26881 (= call!26882 call!26879)))

(declare-fun b!348979 () Bool)

(declare-fun res!193478 () Bool)

(assert (=> b!348979 (=> (not res!193478) (not e!213788))))

(assert (=> b!348979 (= res!193478 e!213789)))

(declare-fun c!53154 () Bool)

(assert (=> b!348979 (= c!53154 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!348980 () Bool)

(assert (=> b!348980 (= e!213787 e!213786)))

(declare-fun res!193485 () Bool)

(assert (=> b!348980 (=> (not res!193485) (not e!213786))))

(assert (=> b!348980 (= res!193485 (contains!2312 lt!164039 (select (arr!8870 _keys!1895) #b00000000000000000000000000000000)))))

(assert (=> b!348980 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9222 _keys!1895)))))

(declare-fun b!348981 () Bool)

(declare-fun c!53155 () Bool)

(assert (=> b!348981 (= c!53155 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!348981 (= e!213790 e!213784)))

(declare-fun bm!26882 () Bool)

(assert (=> bm!26882 (= call!26881 (getCurrentListMapNoExtraKeys!606 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun b!348982 () Bool)

(assert (=> b!348982 (= e!213779 (= (apply!287 lt!164039 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1467))))

(assert (= (and d!71195 c!53153) b!348963))

(assert (= (and d!71195 (not c!53153)) b!348966))

(assert (= (and b!348966 c!53151) b!348970))

(assert (= (and b!348966 (not c!53151)) b!348981))

(assert (= (and b!348981 c!53155) b!348965))

(assert (= (and b!348981 (not c!53155)) b!348975))

(assert (= (or b!348965 b!348975) bm!26881))

(assert (= (or b!348970 bm!26881) bm!26876))

(assert (= (or b!348970 b!348965) bm!26877))

(assert (= (or b!348963 bm!26876) bm!26882))

(assert (= (or b!348963 bm!26877) bm!26879))

(assert (= (and d!71195 res!193480) b!348974))

(assert (= (and d!71195 c!53152) b!348964))

(assert (= (and d!71195 (not c!53152)) b!348971))

(assert (= (and d!71195 res!193483) b!348976))

(assert (= (and b!348976 res!193484) b!348978))

(assert (= (and b!348976 (not res!193482)) b!348980))

(assert (= (and b!348980 res!193485) b!348973))

(assert (= (and b!348976 res!193479) b!348979))

(assert (= (and b!348979 c!53154) b!348967))

(assert (= (and b!348979 (not c!53154)) b!348972))

(assert (= (and b!348967 res!193486) b!348982))

(assert (= (or b!348967 b!348972) bm!26880))

(assert (= (and b!348979 res!193478) b!348969))

(assert (= (and b!348969 c!53156) b!348977))

(assert (= (and b!348969 (not c!53156)) b!348962))

(assert (= (and b!348977 res!193481) b!348968))

(assert (= (or b!348977 b!348962) bm!26878))

(declare-fun b_lambda!8517 () Bool)

(assert (=> (not b_lambda!8517) (not b!348973)))

(declare-fun t!10325 () Bool)

(declare-fun tb!3097 () Bool)

(assert (=> (and start!34858 (= defaultEntry!1528 defaultEntry!1528) t!10325) tb!3097))

(declare-fun result!5605 () Bool)

(assert (=> tb!3097 (= result!5605 tp_is_empty!7587)))

(assert (=> b!348973 t!10325))

(declare-fun b_and!14879 () Bool)

(assert (= b_and!14875 (and (=> t!10325 result!5605) b_and!14879)))

(declare-fun m!349559 () Bool)

(assert (=> bm!26882 m!349559))

(declare-fun m!349561 () Bool)

(assert (=> b!348968 m!349561))

(declare-fun m!349563 () Bool)

(assert (=> b!348964 m!349563))

(declare-fun m!349565 () Bool)

(assert (=> b!348964 m!349565))

(assert (=> b!348964 m!349533))

(declare-fun m!349567 () Bool)

(assert (=> b!348964 m!349567))

(declare-fun m!349569 () Bool)

(assert (=> b!348964 m!349569))

(declare-fun m!349571 () Bool)

(assert (=> b!348964 m!349571))

(assert (=> b!348964 m!349563))

(declare-fun m!349573 () Bool)

(assert (=> b!348964 m!349573))

(assert (=> b!348964 m!349559))

(declare-fun m!349575 () Bool)

(assert (=> b!348964 m!349575))

(declare-fun m!349577 () Bool)

(assert (=> b!348964 m!349577))

(declare-fun m!349579 () Bool)

(assert (=> b!348964 m!349579))

(assert (=> b!348964 m!349567))

(declare-fun m!349581 () Bool)

(assert (=> b!348964 m!349581))

(declare-fun m!349583 () Bool)

(assert (=> b!348964 m!349583))

(declare-fun m!349585 () Bool)

(assert (=> b!348964 m!349585))

(assert (=> b!348964 m!349571))

(declare-fun m!349587 () Bool)

(assert (=> b!348964 m!349587))

(assert (=> b!348964 m!349585))

(declare-fun m!349589 () Bool)

(assert (=> b!348964 m!349589))

(declare-fun m!349591 () Bool)

(assert (=> b!348964 m!349591))

(declare-fun m!349593 () Bool)

(assert (=> b!348963 m!349593))

(assert (=> d!71195 m!349497))

(assert (=> b!348980 m!349533))

(assert (=> b!348980 m!349533))

(declare-fun m!349595 () Bool)

(assert (=> b!348980 m!349595))

(assert (=> b!348978 m!349533))

(assert (=> b!348978 m!349533))

(assert (=> b!348978 m!349539))

(assert (=> b!348974 m!349533))

(assert (=> b!348974 m!349533))

(assert (=> b!348974 m!349539))

(declare-fun m!349597 () Bool)

(assert (=> bm!26880 m!349597))

(declare-fun m!349599 () Bool)

(assert (=> b!348982 m!349599))

(declare-fun m!349601 () Bool)

(assert (=> bm!26879 m!349601))

(assert (=> b!348973 m!349533))

(declare-fun m!349603 () Bool)

(assert (=> b!348973 m!349603))

(declare-fun m!349605 () Bool)

(assert (=> b!348973 m!349605))

(assert (=> b!348973 m!349603))

(assert (=> b!348973 m!349605))

(declare-fun m!349607 () Bool)

(assert (=> b!348973 m!349607))

(assert (=> b!348973 m!349533))

(declare-fun m!349609 () Bool)

(assert (=> b!348973 m!349609))

(declare-fun m!349611 () Bool)

(assert (=> bm!26878 m!349611))

(assert (=> b!348834 d!71195))

(declare-fun d!71197 () Bool)

(assert (=> d!71197 (= (validMask!0 mask!2385) (and (or (= mask!2385 #b00000000000000000000000000000111) (= mask!2385 #b00000000000000000000000000001111) (= mask!2385 #b00000000000000000000000000011111) (= mask!2385 #b00000000000000000000000000111111) (= mask!2385 #b00000000000000000000000001111111) (= mask!2385 #b00000000000000000000000011111111) (= mask!2385 #b00000000000000000000000111111111) (= mask!2385 #b00000000000000000000001111111111) (= mask!2385 #b00000000000000000000011111111111) (= mask!2385 #b00000000000000000000111111111111) (= mask!2385 #b00000000000000000001111111111111) (= mask!2385 #b00000000000000000011111111111111) (= mask!2385 #b00000000000000000111111111111111) (= mask!2385 #b00000000000000001111111111111111) (= mask!2385 #b00000000000000011111111111111111) (= mask!2385 #b00000000000000111111111111111111) (= mask!2385 #b00000000000001111111111111111111) (= mask!2385 #b00000000000011111111111111111111) (= mask!2385 #b00000000000111111111111111111111) (= mask!2385 #b00000000001111111111111111111111) (= mask!2385 #b00000000011111111111111111111111) (= mask!2385 #b00000000111111111111111111111111) (= mask!2385 #b00000001111111111111111111111111) (= mask!2385 #b00000011111111111111111111111111) (= mask!2385 #b00000111111111111111111111111111) (= mask!2385 #b00001111111111111111111111111111) (= mask!2385 #b00011111111111111111111111111111) (= mask!2385 #b00111111111111111111111111111111)) (bvsle mask!2385 #b00111111111111111111111111111111)))))

(assert (=> start!34858 d!71197))

(declare-fun d!71199 () Bool)

(assert (=> d!71199 (= (array_inv!6544 _values!1525) (bvsge (size!9223 _values!1525) #b00000000000000000000000000000000))))

(assert (=> start!34858 d!71199))

(declare-fun d!71201 () Bool)

(assert (=> d!71201 (= (array_inv!6545 _keys!1895) (bvsge (size!9222 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> start!34858 d!71201))

(declare-fun d!71203 () Bool)

(declare-fun lt!164043 () (_ BitVec 32))

(assert (=> d!71203 (and (or (bvslt lt!164043 #b00000000000000000000000000000000) (bvsge lt!164043 (size!9222 _keys!1895)) (and (bvsge lt!164043 #b00000000000000000000000000000000) (bvslt lt!164043 (size!9222 _keys!1895)))) (bvsge lt!164043 #b00000000000000000000000000000000) (bvslt lt!164043 (size!9222 _keys!1895)) (= (select (arr!8870 _keys!1895) lt!164043) k0!1348))))

(declare-fun e!213794 () (_ BitVec 32))

(assert (=> d!71203 (= lt!164043 e!213794)))

(declare-fun c!53159 () Bool)

(assert (=> d!71203 (= c!53159 (= (select (arr!8870 _keys!1895) #b00000000000000000000000000000000) k0!1348))))

(assert (=> d!71203 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9222 _keys!1895)) (bvslt (size!9222 _keys!1895) #b01111111111111111111111111111111))))

(assert (=> d!71203 (= (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) lt!164043)))

(declare-fun b!348989 () Bool)

(assert (=> b!348989 (= e!213794 #b00000000000000000000000000000000)))

(declare-fun b!348990 () Bool)

(assert (=> b!348990 (= e!213794 (arrayScanForKey!0 _keys!1895 k0!1348 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!71203 c!53159) b!348989))

(assert (= (and d!71203 (not c!53159)) b!348990))

(declare-fun m!349613 () Bool)

(assert (=> d!71203 m!349613))

(assert (=> d!71203 m!349533))

(declare-fun m!349615 () Bool)

(assert (=> b!348990 m!349615))

(assert (=> b!348839 d!71203))

(declare-fun b!349003 () Bool)

(declare-fun e!213802 () SeekEntryResult!3416)

(assert (=> b!349003 (= e!213802 Undefined!3416)))

(declare-fun b!349005 () Bool)

(declare-fun c!53167 () Bool)

(declare-fun lt!164050 () (_ BitVec 64))

(assert (=> b!349005 (= c!53167 (= lt!164050 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!213801 () SeekEntryResult!3416)

(declare-fun e!213803 () SeekEntryResult!3416)

(assert (=> b!349005 (= e!213801 e!213803)))

(declare-fun b!349006 () Bool)

(assert (=> b!349006 (= e!213802 e!213801)))

(declare-fun lt!164052 () SeekEntryResult!3416)

(assert (=> b!349006 (= lt!164050 (select (arr!8870 _keys!1895) (index!15845 lt!164052)))))

(declare-fun c!53168 () Bool)

(assert (=> b!349006 (= c!53168 (= lt!164050 k0!1348))))

(declare-fun b!349007 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!18727 (_ BitVec 32)) SeekEntryResult!3416)

(assert (=> b!349007 (= e!213803 (seekKeyOrZeroReturnVacant!0 (x!34755 lt!164052) (index!15845 lt!164052) (index!15845 lt!164052) k0!1348 _keys!1895 mask!2385))))

(declare-fun b!349008 () Bool)

(assert (=> b!349008 (= e!213801 (Found!3416 (index!15845 lt!164052)))))

(declare-fun b!349004 () Bool)

(assert (=> b!349004 (= e!213803 (MissingZero!3416 (index!15845 lt!164052)))))

(declare-fun d!71205 () Bool)

(declare-fun lt!164051 () SeekEntryResult!3416)

(assert (=> d!71205 (and (or ((_ is Undefined!3416) lt!164051) (not ((_ is Found!3416) lt!164051)) (and (bvsge (index!15844 lt!164051) #b00000000000000000000000000000000) (bvslt (index!15844 lt!164051) (size!9222 _keys!1895)))) (or ((_ is Undefined!3416) lt!164051) ((_ is Found!3416) lt!164051) (not ((_ is MissingZero!3416) lt!164051)) (and (bvsge (index!15843 lt!164051) #b00000000000000000000000000000000) (bvslt (index!15843 lt!164051) (size!9222 _keys!1895)))) (or ((_ is Undefined!3416) lt!164051) ((_ is Found!3416) lt!164051) ((_ is MissingZero!3416) lt!164051) (not ((_ is MissingVacant!3416) lt!164051)) (and (bvsge (index!15846 lt!164051) #b00000000000000000000000000000000) (bvslt (index!15846 lt!164051) (size!9222 _keys!1895)))) (or ((_ is Undefined!3416) lt!164051) (ite ((_ is Found!3416) lt!164051) (= (select (arr!8870 _keys!1895) (index!15844 lt!164051)) k0!1348) (ite ((_ is MissingZero!3416) lt!164051) (= (select (arr!8870 _keys!1895) (index!15843 lt!164051)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3416) lt!164051) (= (select (arr!8870 _keys!1895) (index!15846 lt!164051)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!71205 (= lt!164051 e!213802)))

(declare-fun c!53166 () Bool)

(assert (=> d!71205 (= c!53166 (and ((_ is Intermediate!3416) lt!164052) (undefined!4228 lt!164052)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!18727 (_ BitVec 32)) SeekEntryResult!3416)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!71205 (= lt!164052 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1348 mask!2385) k0!1348 _keys!1895 mask!2385))))

(assert (=> d!71205 (validMask!0 mask!2385)))

(assert (=> d!71205 (= (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385) lt!164051)))

(assert (= (and d!71205 c!53166) b!349003))

(assert (= (and d!71205 (not c!53166)) b!349006))

(assert (= (and b!349006 c!53168) b!349008))

(assert (= (and b!349006 (not c!53168)) b!349005))

(assert (= (and b!349005 c!53167) b!349004))

(assert (= (and b!349005 (not c!53167)) b!349007))

(declare-fun m!349617 () Bool)

(assert (=> b!349006 m!349617))

(declare-fun m!349619 () Bool)

(assert (=> b!349007 m!349619))

(declare-fun m!349621 () Bool)

(assert (=> d!71205 m!349621))

(declare-fun m!349623 () Bool)

(assert (=> d!71205 m!349623))

(declare-fun m!349625 () Bool)

(assert (=> d!71205 m!349625))

(declare-fun m!349627 () Bool)

(assert (=> d!71205 m!349627))

(assert (=> d!71205 m!349623))

(declare-fun m!349629 () Bool)

(assert (=> d!71205 m!349629))

(assert (=> d!71205 m!349497))

(assert (=> b!348842 d!71205))

(declare-fun d!71207 () Bool)

(assert (=> d!71207 (= (validKeyInArray!0 k0!1348) (and (not (= k0!1348 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1348 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!348837 d!71207))

(declare-fun b!349015 () Bool)

(declare-fun e!213808 () Bool)

(assert (=> b!349015 (= e!213808 tp_is_empty!7587)))

(declare-fun condMapEmpty!12846 () Bool)

(declare-fun mapDefault!12846 () ValueCell!3450)

(assert (=> mapNonEmpty!12840 (= condMapEmpty!12846 (= mapRest!12840 ((as const (Array (_ BitVec 32) ValueCell!3450)) mapDefault!12846)))))

(declare-fun e!213809 () Bool)

(declare-fun mapRes!12846 () Bool)

(assert (=> mapNonEmpty!12840 (= tp!26471 (and e!213809 mapRes!12846))))

(declare-fun mapNonEmpty!12846 () Bool)

(declare-fun tp!26481 () Bool)

(assert (=> mapNonEmpty!12846 (= mapRes!12846 (and tp!26481 e!213808))))

(declare-fun mapKey!12846 () (_ BitVec 32))

(declare-fun mapRest!12846 () (Array (_ BitVec 32) ValueCell!3450))

(declare-fun mapValue!12846 () ValueCell!3450)

(assert (=> mapNonEmpty!12846 (= mapRest!12840 (store mapRest!12846 mapKey!12846 mapValue!12846))))

(declare-fun mapIsEmpty!12846 () Bool)

(assert (=> mapIsEmpty!12846 mapRes!12846))

(declare-fun b!349016 () Bool)

(assert (=> b!349016 (= e!213809 tp_is_empty!7587)))

(assert (= (and mapNonEmpty!12840 condMapEmpty!12846) mapIsEmpty!12846))

(assert (= (and mapNonEmpty!12840 (not condMapEmpty!12846)) mapNonEmpty!12846))

(assert (= (and mapNonEmpty!12846 ((_ is ValueCellFull!3450) mapValue!12846)) b!349015))

(assert (= (and mapNonEmpty!12840 ((_ is ValueCellFull!3450) mapDefault!12846)) b!349016))

(declare-fun m!349631 () Bool)

(assert (=> mapNonEmpty!12846 m!349631))

(declare-fun b_lambda!8519 () Bool)

(assert (= b_lambda!8517 (or (and start!34858 b_free!7635) b_lambda!8519)))

(check-sat (not b!348974) (not b!348917) (not b!349007) (not bm!26878) (not bm!26861) (not d!71205) (not b!348883) (not b_next!7635) (not b!348898) (not b!348896) (not b!348894) (not b_lambda!8519) (not b!348980) (not bm!26882) (not bm!26858) (not b!348982) (not d!71193) (not b!348908) (not b!348964) b_and!14879 (not b!348919) (not b!348963) (not b!348973) (not b!348907) (not bm!26880) tp_is_empty!7587 (not b!348978) (not bm!26879) (not d!71195) (not b!348968) (not mapNonEmpty!12846) (not b!348990))
(check-sat b_and!14879 (not b_next!7635))
