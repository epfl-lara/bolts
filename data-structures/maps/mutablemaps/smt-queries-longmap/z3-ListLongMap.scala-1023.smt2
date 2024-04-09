; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21772 () Bool)

(assert start!21772)

(declare-fun b!218947 () Bool)

(declare-fun b_free!5889 () Bool)

(declare-fun b_next!5889 () Bool)

(assert (=> b!218947 (= b_free!5889 (not b_next!5889))))

(declare-fun tp!20805 () Bool)

(declare-fun b_and!12799 () Bool)

(assert (=> b!218947 (= tp!20805 b_and!12799)))

(declare-fun b!218933 () Bool)

(declare-fun res!107334 () Bool)

(declare-fun e!142444 () Bool)

(assert (=> b!218933 (=> (not res!107334) (not e!142444))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!218933 (= res!107334 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!218934 () Bool)

(declare-fun e!142441 () Bool)

(assert (=> b!218934 (= e!142444 e!142441)))

(declare-fun res!107336 () Bool)

(assert (=> b!218934 (=> (not res!107336) (not e!142441))))

(declare-datatypes ((SeekEntryResult!805 0))(
  ( (MissingZero!805 (index!5390 (_ BitVec 32))) (Found!805 (index!5391 (_ BitVec 32))) (Intermediate!805 (undefined!1617 Bool) (index!5392 (_ BitVec 32)) (x!22887 (_ BitVec 32))) (Undefined!805) (MissingVacant!805 (index!5393 (_ BitVec 32))) )
))
(declare-fun lt!111741 () SeekEntryResult!805)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!218934 (= res!107336 (or (= lt!111741 (MissingZero!805 index!297)) (= lt!111741 (MissingVacant!805 index!297))))))

(declare-datatypes ((V!7315 0))(
  ( (V!7316 (val!2920 Int)) )
))
(declare-datatypes ((ValueCell!2532 0))(
  ( (ValueCellFull!2532 (v!4935 V!7315)) (EmptyCell!2532) )
))
(declare-datatypes ((array!10742 0))(
  ( (array!10743 (arr!5091 (Array (_ BitVec 32) ValueCell!2532)) (size!5423 (_ BitVec 32))) )
))
(declare-datatypes ((array!10744 0))(
  ( (array!10745 (arr!5092 (Array (_ BitVec 32) (_ BitVec 64))) (size!5424 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2964 0))(
  ( (LongMapFixedSize!2965 (defaultEntry!4135 Int) (mask!9918 (_ BitVec 32)) (extraKeys!3872 (_ BitVec 32)) (zeroValue!3976 V!7315) (minValue!3976 V!7315) (_size!1531 (_ BitVec 32)) (_keys!6185 array!10744) (_values!4118 array!10742) (_vacant!1531 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2964)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10744 (_ BitVec 32)) SeekEntryResult!805)

(assert (=> b!218934 (= lt!111741 (seekEntryOrOpen!0 key!932 (_keys!6185 thiss!1504) (mask!9918 thiss!1504)))))

(declare-fun call!20455 () Bool)

(declare-fun bm!20451 () Bool)

(declare-fun c!36416 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!20451 (= call!20455 (inRange!0 (ite c!36416 (index!5390 lt!111741) (index!5393 lt!111741)) (mask!9918 thiss!1504)))))

(declare-fun b!218935 () Bool)

(declare-datatypes ((Unit!6526 0))(
  ( (Unit!6527) )
))
(declare-fun e!142443 () Unit!6526)

(declare-fun lt!111739 () Unit!6526)

(assert (=> b!218935 (= e!142443 lt!111739)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!201 (array!10744 array!10742 (_ BitVec 32) (_ BitVec 32) V!7315 V!7315 (_ BitVec 64) Int) Unit!6526)

(assert (=> b!218935 (= lt!111739 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!201 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) key!932 (defaultEntry!4135 thiss!1504)))))

(get-info :version)

(assert (=> b!218935 (= c!36416 ((_ is MissingZero!805) lt!111741))))

(declare-fun e!142449 () Bool)

(assert (=> b!218935 e!142449))

(declare-fun b!218936 () Bool)

(declare-fun e!142445 () Bool)

(declare-fun call!20454 () Bool)

(assert (=> b!218936 (= e!142445 (not call!20454))))

(declare-fun b!218937 () Bool)

(declare-fun res!107335 () Bool)

(declare-fun e!142437 () Bool)

(assert (=> b!218937 (=> (not res!107335) (not e!142437))))

(assert (=> b!218937 (= res!107335 call!20455)))

(assert (=> b!218937 (= e!142449 e!142437)))

(declare-fun b!218938 () Bool)

(declare-fun e!142442 () Bool)

(assert (=> b!218938 (= e!142442 (and (bvslt #b00000000000000000000000000000000 (size!5424 (_keys!6185 thiss!1504))) (bvsge (size!5424 (_keys!6185 thiss!1504)) #b01111111111111111111111111111111)))))

(declare-fun b!218940 () Bool)

(declare-fun Unit!6528 () Unit!6526)

(assert (=> b!218940 (= e!142443 Unit!6528)))

(declare-fun lt!111740 () Unit!6526)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!193 (array!10744 array!10742 (_ BitVec 32) (_ BitVec 32) V!7315 V!7315 (_ BitVec 64) Int) Unit!6526)

(assert (=> b!218940 (= lt!111740 (lemmaInListMapThenSeekEntryOrOpenFindsIt!193 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) key!932 (defaultEntry!4135 thiss!1504)))))

(assert (=> b!218940 false))

(declare-fun b!218941 () Bool)

(assert (=> b!218941 (= e!142437 (not call!20454))))

(declare-fun mapNonEmpty!9792 () Bool)

(declare-fun mapRes!9792 () Bool)

(declare-fun tp!20804 () Bool)

(declare-fun e!142447 () Bool)

(assert (=> mapNonEmpty!9792 (= mapRes!9792 (and tp!20804 e!142447))))

(declare-fun mapRest!9792 () (Array (_ BitVec 32) ValueCell!2532))

(declare-fun mapValue!9792 () ValueCell!2532)

(declare-fun mapKey!9792 () (_ BitVec 32))

(assert (=> mapNonEmpty!9792 (= (arr!5091 (_values!4118 thiss!1504)) (store mapRest!9792 mapKey!9792 mapValue!9792))))

(declare-fun b!218942 () Bool)

(declare-fun e!142446 () Bool)

(assert (=> b!218942 (= e!142446 ((_ is Undefined!805) lt!111741))))

(declare-fun mapIsEmpty!9792 () Bool)

(assert (=> mapIsEmpty!9792 mapRes!9792))

(declare-fun b!218943 () Bool)

(declare-fun e!142448 () Bool)

(declare-fun e!142438 () Bool)

(assert (=> b!218943 (= e!142448 (and e!142438 mapRes!9792))))

(declare-fun condMapEmpty!9792 () Bool)

(declare-fun mapDefault!9792 () ValueCell!2532)

(assert (=> b!218943 (= condMapEmpty!9792 (= (arr!5091 (_values!4118 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2532)) mapDefault!9792)))))

(declare-fun b!218944 () Bool)

(declare-fun res!107332 () Bool)

(assert (=> b!218944 (=> (not res!107332) (not e!142437))))

(assert (=> b!218944 (= res!107332 (= (select (arr!5092 (_keys!6185 thiss!1504)) (index!5390 lt!111741)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!218945 () Bool)

(declare-fun res!107331 () Bool)

(assert (=> b!218945 (= res!107331 (= (select (arr!5092 (_keys!6185 thiss!1504)) (index!5393 lt!111741)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!218945 (=> (not res!107331) (not e!142445))))

(declare-fun b!218946 () Bool)

(assert (=> b!218946 (= e!142441 e!142442)))

(declare-fun res!107333 () Bool)

(assert (=> b!218946 (=> (not res!107333) (not e!142442))))

(assert (=> b!218946 (= res!107333 (inRange!0 index!297 (mask!9918 thiss!1504)))))

(declare-fun lt!111742 () Unit!6526)

(assert (=> b!218946 (= lt!111742 e!142443)))

(declare-fun c!36417 () Bool)

(declare-datatypes ((tuple2!4330 0))(
  ( (tuple2!4331 (_1!2175 (_ BitVec 64)) (_2!2175 V!7315)) )
))
(declare-datatypes ((List!3257 0))(
  ( (Nil!3254) (Cons!3253 (h!3900 tuple2!4330) (t!8222 List!3257)) )
))
(declare-datatypes ((ListLongMap!3257 0))(
  ( (ListLongMap!3258 (toList!1644 List!3257)) )
))
(declare-fun contains!1479 (ListLongMap!3257 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1167 (array!10744 array!10742 (_ BitVec 32) (_ BitVec 32) V!7315 V!7315 (_ BitVec 32) Int) ListLongMap!3257)

(assert (=> b!218946 (= c!36417 (contains!1479 (getCurrentListMap!1167 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4135 thiss!1504)) key!932))))

(declare-fun e!142439 () Bool)

(declare-fun tp_is_empty!5751 () Bool)

(declare-fun array_inv!3361 (array!10744) Bool)

(declare-fun array_inv!3362 (array!10742) Bool)

(assert (=> b!218947 (= e!142439 (and tp!20805 tp_is_empty!5751 (array_inv!3361 (_keys!6185 thiss!1504)) (array_inv!3362 (_values!4118 thiss!1504)) e!142448))))

(declare-fun res!107330 () Bool)

(assert (=> start!21772 (=> (not res!107330) (not e!142444))))

(declare-fun valid!1191 (LongMapFixedSize!2964) Bool)

(assert (=> start!21772 (= res!107330 (valid!1191 thiss!1504))))

(assert (=> start!21772 e!142444))

(assert (=> start!21772 e!142439))

(assert (=> start!21772 true))

(declare-fun b!218939 () Bool)

(assert (=> b!218939 (= e!142446 e!142445)))

(declare-fun res!107337 () Bool)

(assert (=> b!218939 (= res!107337 call!20455)))

(assert (=> b!218939 (=> (not res!107337) (not e!142445))))

(declare-fun b!218948 () Bool)

(declare-fun c!36418 () Bool)

(assert (=> b!218948 (= c!36418 ((_ is MissingVacant!805) lt!111741))))

(assert (=> b!218948 (= e!142449 e!142446)))

(declare-fun bm!20452 () Bool)

(declare-fun arrayContainsKey!0 (array!10744 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!20452 (= call!20454 (arrayContainsKey!0 (_keys!6185 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!218949 () Bool)

(assert (=> b!218949 (= e!142438 tp_is_empty!5751)))

(declare-fun b!218950 () Bool)

(assert (=> b!218950 (= e!142447 tp_is_empty!5751)))

(assert (= (and start!21772 res!107330) b!218933))

(assert (= (and b!218933 res!107334) b!218934))

(assert (= (and b!218934 res!107336) b!218946))

(assert (= (and b!218946 c!36417) b!218940))

(assert (= (and b!218946 (not c!36417)) b!218935))

(assert (= (and b!218935 c!36416) b!218937))

(assert (= (and b!218935 (not c!36416)) b!218948))

(assert (= (and b!218937 res!107335) b!218944))

(assert (= (and b!218944 res!107332) b!218941))

(assert (= (and b!218948 c!36418) b!218939))

(assert (= (and b!218948 (not c!36418)) b!218942))

(assert (= (and b!218939 res!107337) b!218945))

(assert (= (and b!218945 res!107331) b!218936))

(assert (= (or b!218937 b!218939) bm!20451))

(assert (= (or b!218941 b!218936) bm!20452))

(assert (= (and b!218946 res!107333) b!218938))

(assert (= (and b!218943 condMapEmpty!9792) mapIsEmpty!9792))

(assert (= (and b!218943 (not condMapEmpty!9792)) mapNonEmpty!9792))

(assert (= (and mapNonEmpty!9792 ((_ is ValueCellFull!2532) mapValue!9792)) b!218950))

(assert (= (and b!218943 ((_ is ValueCellFull!2532) mapDefault!9792)) b!218949))

(assert (= b!218947 b!218943))

(assert (= start!21772 b!218947))

(declare-fun m!244645 () Bool)

(assert (=> start!21772 m!244645))

(declare-fun m!244647 () Bool)

(assert (=> b!218945 m!244647))

(declare-fun m!244649 () Bool)

(assert (=> b!218934 m!244649))

(declare-fun m!244651 () Bool)

(assert (=> b!218940 m!244651))

(declare-fun m!244653 () Bool)

(assert (=> b!218944 m!244653))

(declare-fun m!244655 () Bool)

(assert (=> b!218947 m!244655))

(declare-fun m!244657 () Bool)

(assert (=> b!218947 m!244657))

(declare-fun m!244659 () Bool)

(assert (=> mapNonEmpty!9792 m!244659))

(declare-fun m!244661 () Bool)

(assert (=> bm!20452 m!244661))

(declare-fun m!244663 () Bool)

(assert (=> bm!20451 m!244663))

(declare-fun m!244665 () Bool)

(assert (=> b!218935 m!244665))

(declare-fun m!244667 () Bool)

(assert (=> b!218946 m!244667))

(declare-fun m!244669 () Bool)

(assert (=> b!218946 m!244669))

(assert (=> b!218946 m!244669))

(declare-fun m!244671 () Bool)

(assert (=> b!218946 m!244671))

(check-sat (not b!218947) (not bm!20451) (not bm!20452) (not start!21772) (not b!218935) tp_is_empty!5751 (not b!218934) b_and!12799 (not b!218946) (not mapNonEmpty!9792) (not b!218940) (not b_next!5889))
(check-sat b_and!12799 (not b_next!5889))
(get-model)

(declare-fun d!58539 () Bool)

(assert (=> d!58539 (= (inRange!0 index!297 (mask!9918 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!9918 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!218946 d!58539))

(declare-fun d!58541 () Bool)

(declare-fun e!142493 () Bool)

(assert (=> d!58541 e!142493))

(declare-fun res!107364 () Bool)

(assert (=> d!58541 (=> res!107364 e!142493)))

(declare-fun lt!111766 () Bool)

(assert (=> d!58541 (= res!107364 (not lt!111766))))

(declare-fun lt!111764 () Bool)

(assert (=> d!58541 (= lt!111766 lt!111764)))

(declare-fun lt!111765 () Unit!6526)

(declare-fun e!142494 () Unit!6526)

(assert (=> d!58541 (= lt!111765 e!142494)))

(declare-fun c!36430 () Bool)

(assert (=> d!58541 (= c!36430 lt!111764)))

(declare-fun containsKey!251 (List!3257 (_ BitVec 64)) Bool)

(assert (=> d!58541 (= lt!111764 (containsKey!251 (toList!1644 (getCurrentListMap!1167 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4135 thiss!1504))) key!932))))

(assert (=> d!58541 (= (contains!1479 (getCurrentListMap!1167 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4135 thiss!1504)) key!932) lt!111766)))

(declare-fun b!219011 () Bool)

(declare-fun lt!111763 () Unit!6526)

(assert (=> b!219011 (= e!142494 lt!111763)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!200 (List!3257 (_ BitVec 64)) Unit!6526)

(assert (=> b!219011 (= lt!111763 (lemmaContainsKeyImpliesGetValueByKeyDefined!200 (toList!1644 (getCurrentListMap!1167 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4135 thiss!1504))) key!932))))

(declare-datatypes ((Option!265 0))(
  ( (Some!264 (v!4937 V!7315)) (None!263) )
))
(declare-fun isDefined!201 (Option!265) Bool)

(declare-fun getValueByKey!259 (List!3257 (_ BitVec 64)) Option!265)

(assert (=> b!219011 (isDefined!201 (getValueByKey!259 (toList!1644 (getCurrentListMap!1167 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4135 thiss!1504))) key!932))))

(declare-fun b!219012 () Bool)

(declare-fun Unit!6532 () Unit!6526)

(assert (=> b!219012 (= e!142494 Unit!6532)))

(declare-fun b!219013 () Bool)

(assert (=> b!219013 (= e!142493 (isDefined!201 (getValueByKey!259 (toList!1644 (getCurrentListMap!1167 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4135 thiss!1504))) key!932)))))

(assert (= (and d!58541 c!36430) b!219011))

(assert (= (and d!58541 (not c!36430)) b!219012))

(assert (= (and d!58541 (not res!107364)) b!219013))

(declare-fun m!244701 () Bool)

(assert (=> d!58541 m!244701))

(declare-fun m!244703 () Bool)

(assert (=> b!219011 m!244703))

(declare-fun m!244705 () Bool)

(assert (=> b!219011 m!244705))

(assert (=> b!219011 m!244705))

(declare-fun m!244707 () Bool)

(assert (=> b!219011 m!244707))

(assert (=> b!219013 m!244705))

(assert (=> b!219013 m!244705))

(assert (=> b!219013 m!244707))

(assert (=> b!218946 d!58541))

(declare-fun bm!20473 () Bool)

(declare-fun call!20479 () ListLongMap!3257)

(declare-fun call!20480 () ListLongMap!3257)

(assert (=> bm!20473 (= call!20479 call!20480)))

(declare-fun c!36447 () Bool)

(declare-fun bm!20474 () Bool)

(declare-fun call!20478 () ListLongMap!3257)

(declare-fun c!36448 () Bool)

(declare-fun call!20481 () ListLongMap!3257)

(declare-fun +!592 (ListLongMap!3257 tuple2!4330) ListLongMap!3257)

(assert (=> bm!20474 (= call!20481 (+!592 (ite c!36447 call!20478 (ite c!36448 call!20480 call!20479)) (ite (or c!36447 c!36448) (tuple2!4331 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3976 thiss!1504)) (tuple2!4331 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3976 thiss!1504)))))))

(declare-fun b!219056 () Bool)

(declare-fun e!142525 () Bool)

(declare-fun e!142528 () Bool)

(assert (=> b!219056 (= e!142525 e!142528)))

(declare-fun res!107384 () Bool)

(assert (=> b!219056 (=> (not res!107384) (not e!142528))))

(declare-fun lt!111828 () ListLongMap!3257)

(assert (=> b!219056 (= res!107384 (contains!1479 lt!111828 (select (arr!5092 (_keys!6185 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!219056 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5424 (_keys!6185 thiss!1504))))))

(declare-fun b!219057 () Bool)

(declare-fun e!142526 () Unit!6526)

(declare-fun lt!111813 () Unit!6526)

(assert (=> b!219057 (= e!142526 lt!111813)))

(declare-fun lt!111820 () ListLongMap!3257)

(declare-fun getCurrentListMapNoExtraKeys!521 (array!10744 array!10742 (_ BitVec 32) (_ BitVec 32) V!7315 V!7315 (_ BitVec 32) Int) ListLongMap!3257)

(assert (=> b!219057 (= lt!111820 (getCurrentListMapNoExtraKeys!521 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4135 thiss!1504)))))

(declare-fun lt!111829 () (_ BitVec 64))

(assert (=> b!219057 (= lt!111829 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!111822 () (_ BitVec 64))

(assert (=> b!219057 (= lt!111822 (select (arr!5092 (_keys!6185 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!111827 () Unit!6526)

(declare-fun addStillContains!178 (ListLongMap!3257 (_ BitVec 64) V!7315 (_ BitVec 64)) Unit!6526)

(assert (=> b!219057 (= lt!111827 (addStillContains!178 lt!111820 lt!111829 (zeroValue!3976 thiss!1504) lt!111822))))

(assert (=> b!219057 (contains!1479 (+!592 lt!111820 (tuple2!4331 lt!111829 (zeroValue!3976 thiss!1504))) lt!111822)))

(declare-fun lt!111814 () Unit!6526)

(assert (=> b!219057 (= lt!111814 lt!111827)))

(declare-fun lt!111819 () ListLongMap!3257)

(assert (=> b!219057 (= lt!111819 (getCurrentListMapNoExtraKeys!521 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4135 thiss!1504)))))

(declare-fun lt!111830 () (_ BitVec 64))

(assert (=> b!219057 (= lt!111830 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!111815 () (_ BitVec 64))

(assert (=> b!219057 (= lt!111815 (select (arr!5092 (_keys!6185 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!111818 () Unit!6526)

(declare-fun addApplyDifferent!178 (ListLongMap!3257 (_ BitVec 64) V!7315 (_ BitVec 64)) Unit!6526)

(assert (=> b!219057 (= lt!111818 (addApplyDifferent!178 lt!111819 lt!111830 (minValue!3976 thiss!1504) lt!111815))))

(declare-fun apply!202 (ListLongMap!3257 (_ BitVec 64)) V!7315)

(assert (=> b!219057 (= (apply!202 (+!592 lt!111819 (tuple2!4331 lt!111830 (minValue!3976 thiss!1504))) lt!111815) (apply!202 lt!111819 lt!111815))))

(declare-fun lt!111817 () Unit!6526)

(assert (=> b!219057 (= lt!111817 lt!111818)))

(declare-fun lt!111831 () ListLongMap!3257)

(assert (=> b!219057 (= lt!111831 (getCurrentListMapNoExtraKeys!521 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4135 thiss!1504)))))

(declare-fun lt!111821 () (_ BitVec 64))

(assert (=> b!219057 (= lt!111821 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!111824 () (_ BitVec 64))

(assert (=> b!219057 (= lt!111824 (select (arr!5092 (_keys!6185 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!111825 () Unit!6526)

(assert (=> b!219057 (= lt!111825 (addApplyDifferent!178 lt!111831 lt!111821 (zeroValue!3976 thiss!1504) lt!111824))))

(assert (=> b!219057 (= (apply!202 (+!592 lt!111831 (tuple2!4331 lt!111821 (zeroValue!3976 thiss!1504))) lt!111824) (apply!202 lt!111831 lt!111824))))

(declare-fun lt!111812 () Unit!6526)

(assert (=> b!219057 (= lt!111812 lt!111825)))

(declare-fun lt!111816 () ListLongMap!3257)

(assert (=> b!219057 (= lt!111816 (getCurrentListMapNoExtraKeys!521 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4135 thiss!1504)))))

(declare-fun lt!111832 () (_ BitVec 64))

(assert (=> b!219057 (= lt!111832 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!111811 () (_ BitVec 64))

(assert (=> b!219057 (= lt!111811 (select (arr!5092 (_keys!6185 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!219057 (= lt!111813 (addApplyDifferent!178 lt!111816 lt!111832 (minValue!3976 thiss!1504) lt!111811))))

(assert (=> b!219057 (= (apply!202 (+!592 lt!111816 (tuple2!4331 lt!111832 (minValue!3976 thiss!1504))) lt!111811) (apply!202 lt!111816 lt!111811))))

(declare-fun bm!20475 () Bool)

(declare-fun call!20477 () ListLongMap!3257)

(assert (=> bm!20475 (= call!20477 call!20481)))

(declare-fun b!219058 () Bool)

(declare-fun e!142527 () Bool)

(declare-fun e!142529 () Bool)

(assert (=> b!219058 (= e!142527 e!142529)))

(declare-fun res!107391 () Bool)

(declare-fun call!20482 () Bool)

(assert (=> b!219058 (= res!107391 call!20482)))

(assert (=> b!219058 (=> (not res!107391) (not e!142529))))

(declare-fun bm!20476 () Bool)

(assert (=> bm!20476 (= call!20478 (getCurrentListMapNoExtraKeys!521 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4135 thiss!1504)))))

(declare-fun b!219060 () Bool)

(declare-fun e!142522 () ListLongMap!3257)

(assert (=> b!219060 (= e!142522 call!20477)))

(declare-fun b!219061 () Bool)

(declare-fun res!107388 () Bool)

(declare-fun e!142523 () Bool)

(assert (=> b!219061 (=> (not res!107388) (not e!142523))))

(assert (=> b!219061 (= res!107388 e!142527)))

(declare-fun c!36446 () Bool)

(assert (=> b!219061 (= c!36446 (not (= (bvand (extraKeys!3872 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!20477 () Bool)

(assert (=> bm!20477 (= call!20480 call!20478)))

(declare-fun b!219062 () Bool)

(assert (=> b!219062 (= e!142527 (not call!20482))))

(declare-fun b!219063 () Bool)

(declare-fun e!142531 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!219063 (= e!142531 (validKeyInArray!0 (select (arr!5092 (_keys!6185 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!219064 () Bool)

(declare-fun Unit!6533 () Unit!6526)

(assert (=> b!219064 (= e!142526 Unit!6533)))

(declare-fun b!219065 () Bool)

(declare-fun e!142533 () ListLongMap!3257)

(assert (=> b!219065 (= e!142533 call!20477)))

(declare-fun b!219066 () Bool)

(declare-fun c!36443 () Bool)

(assert (=> b!219066 (= c!36443 (and (not (= (bvand (extraKeys!3872 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3872 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!219066 (= e!142522 e!142533)))

(declare-fun b!219067 () Bool)

(declare-fun res!107386 () Bool)

(assert (=> b!219067 (=> (not res!107386) (not e!142523))))

(assert (=> b!219067 (= res!107386 e!142525)))

(declare-fun res!107390 () Bool)

(assert (=> b!219067 (=> res!107390 e!142525)))

(assert (=> b!219067 (= res!107390 (not e!142531))))

(declare-fun res!107385 () Bool)

(assert (=> b!219067 (=> (not res!107385) (not e!142531))))

(assert (=> b!219067 (= res!107385 (bvslt #b00000000000000000000000000000000 (size!5424 (_keys!6185 thiss!1504))))))

(declare-fun bm!20478 () Bool)

(assert (=> bm!20478 (= call!20482 (contains!1479 lt!111828 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!219068 () Bool)

(declare-fun get!2675 (ValueCell!2532 V!7315) V!7315)

(declare-fun dynLambda!540 (Int (_ BitVec 64)) V!7315)

(assert (=> b!219068 (= e!142528 (= (apply!202 lt!111828 (select (arr!5092 (_keys!6185 thiss!1504)) #b00000000000000000000000000000000)) (get!2675 (select (arr!5091 (_values!4118 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!540 (defaultEntry!4135 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!219068 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5423 (_values!4118 thiss!1504))))))

(assert (=> b!219068 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5424 (_keys!6185 thiss!1504))))))

(declare-fun b!219069 () Bool)

(assert (=> b!219069 (= e!142533 call!20479)))

(declare-fun b!219070 () Bool)

(declare-fun e!142530 () ListLongMap!3257)

(assert (=> b!219070 (= e!142530 e!142522)))

(assert (=> b!219070 (= c!36448 (and (not (= (bvand (extraKeys!3872 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3872 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!219071 () Bool)

(declare-fun e!142521 () Bool)

(declare-fun e!142524 () Bool)

(assert (=> b!219071 (= e!142521 e!142524)))

(declare-fun res!107387 () Bool)

(declare-fun call!20476 () Bool)

(assert (=> b!219071 (= res!107387 call!20476)))

(assert (=> b!219071 (=> (not res!107387) (not e!142524))))

(declare-fun b!219072 () Bool)

(assert (=> b!219072 (= e!142529 (= (apply!202 lt!111828 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3976 thiss!1504)))))

(declare-fun b!219073 () Bool)

(assert (=> b!219073 (= e!142530 (+!592 call!20481 (tuple2!4331 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3976 thiss!1504))))))

(declare-fun b!219074 () Bool)

(declare-fun e!142532 () Bool)

(assert (=> b!219074 (= e!142532 (validKeyInArray!0 (select (arr!5092 (_keys!6185 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!20479 () Bool)

(assert (=> bm!20479 (= call!20476 (contains!1479 lt!111828 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!219075 () Bool)

(assert (=> b!219075 (= e!142524 (= (apply!202 lt!111828 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3976 thiss!1504)))))

(declare-fun b!219076 () Bool)

(assert (=> b!219076 (= e!142521 (not call!20476))))

(declare-fun b!219059 () Bool)

(assert (=> b!219059 (= e!142523 e!142521)))

(declare-fun c!36445 () Bool)

(assert (=> b!219059 (= c!36445 (not (= (bvand (extraKeys!3872 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!58543 () Bool)

(assert (=> d!58543 e!142523))

(declare-fun res!107389 () Bool)

(assert (=> d!58543 (=> (not res!107389) (not e!142523))))

(assert (=> d!58543 (= res!107389 (or (bvsge #b00000000000000000000000000000000 (size!5424 (_keys!6185 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5424 (_keys!6185 thiss!1504))))))))

(declare-fun lt!111823 () ListLongMap!3257)

(assert (=> d!58543 (= lt!111828 lt!111823)))

(declare-fun lt!111826 () Unit!6526)

(assert (=> d!58543 (= lt!111826 e!142526)))

(declare-fun c!36444 () Bool)

(assert (=> d!58543 (= c!36444 e!142532)))

(declare-fun res!107383 () Bool)

(assert (=> d!58543 (=> (not res!107383) (not e!142532))))

(assert (=> d!58543 (= res!107383 (bvslt #b00000000000000000000000000000000 (size!5424 (_keys!6185 thiss!1504))))))

(assert (=> d!58543 (= lt!111823 e!142530)))

(assert (=> d!58543 (= c!36447 (and (not (= (bvand (extraKeys!3872 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3872 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!58543 (validMask!0 (mask!9918 thiss!1504))))

(assert (=> d!58543 (= (getCurrentListMap!1167 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4135 thiss!1504)) lt!111828)))

(assert (= (and d!58543 c!36447) b!219073))

(assert (= (and d!58543 (not c!36447)) b!219070))

(assert (= (and b!219070 c!36448) b!219060))

(assert (= (and b!219070 (not c!36448)) b!219066))

(assert (= (and b!219066 c!36443) b!219065))

(assert (= (and b!219066 (not c!36443)) b!219069))

(assert (= (or b!219065 b!219069) bm!20473))

(assert (= (or b!219060 bm!20473) bm!20477))

(assert (= (or b!219060 b!219065) bm!20475))

(assert (= (or b!219073 bm!20477) bm!20476))

(assert (= (or b!219073 bm!20475) bm!20474))

(assert (= (and d!58543 res!107383) b!219074))

(assert (= (and d!58543 c!36444) b!219057))

(assert (= (and d!58543 (not c!36444)) b!219064))

(assert (= (and d!58543 res!107389) b!219067))

(assert (= (and b!219067 res!107385) b!219063))

(assert (= (and b!219067 (not res!107390)) b!219056))

(assert (= (and b!219056 res!107384) b!219068))

(assert (= (and b!219067 res!107386) b!219061))

(assert (= (and b!219061 c!36446) b!219058))

(assert (= (and b!219061 (not c!36446)) b!219062))

(assert (= (and b!219058 res!107391) b!219072))

(assert (= (or b!219058 b!219062) bm!20478))

(assert (= (and b!219061 res!107388) b!219059))

(assert (= (and b!219059 c!36445) b!219071))

(assert (= (and b!219059 (not c!36445)) b!219076))

(assert (= (and b!219071 res!107387) b!219075))

(assert (= (or b!219071 b!219076) bm!20479))

(declare-fun b_lambda!7861 () Bool)

(assert (=> (not b_lambda!7861) (not b!219068)))

(declare-fun t!8225 () Bool)

(declare-fun tb!2925 () Bool)

(assert (=> (and b!218947 (= (defaultEntry!4135 thiss!1504) (defaultEntry!4135 thiss!1504)) t!8225) tb!2925))

(declare-fun result!5081 () Bool)

(assert (=> tb!2925 (= result!5081 tp_is_empty!5751)))

(assert (=> b!219068 t!8225))

(declare-fun b_and!12803 () Bool)

(assert (= b_and!12799 (and (=> t!8225 result!5081) b_and!12803)))

(declare-fun m!244709 () Bool)

(assert (=> b!219068 m!244709))

(declare-fun m!244711 () Bool)

(assert (=> b!219068 m!244711))

(declare-fun m!244713 () Bool)

(assert (=> b!219068 m!244713))

(assert (=> b!219068 m!244711))

(declare-fun m!244715 () Bool)

(assert (=> b!219068 m!244715))

(assert (=> b!219068 m!244709))

(declare-fun m!244717 () Bool)

(assert (=> b!219068 m!244717))

(assert (=> b!219068 m!244715))

(declare-fun m!244719 () Bool)

(assert (=> bm!20474 m!244719))

(declare-fun m!244721 () Bool)

(assert (=> d!58543 m!244721))

(assert (=> b!219074 m!244711))

(assert (=> b!219074 m!244711))

(declare-fun m!244723 () Bool)

(assert (=> b!219074 m!244723))

(declare-fun m!244725 () Bool)

(assert (=> bm!20476 m!244725))

(assert (=> b!219056 m!244711))

(assert (=> b!219056 m!244711))

(declare-fun m!244727 () Bool)

(assert (=> b!219056 m!244727))

(assert (=> b!219063 m!244711))

(assert (=> b!219063 m!244711))

(assert (=> b!219063 m!244723))

(declare-fun m!244729 () Bool)

(assert (=> bm!20479 m!244729))

(declare-fun m!244731 () Bool)

(assert (=> bm!20478 m!244731))

(declare-fun m!244733 () Bool)

(assert (=> b!219072 m!244733))

(declare-fun m!244735 () Bool)

(assert (=> b!219057 m!244735))

(declare-fun m!244737 () Bool)

(assert (=> b!219057 m!244737))

(declare-fun m!244739 () Bool)

(assert (=> b!219057 m!244739))

(declare-fun m!244741 () Bool)

(assert (=> b!219057 m!244741))

(declare-fun m!244743 () Bool)

(assert (=> b!219057 m!244743))

(declare-fun m!244745 () Bool)

(assert (=> b!219057 m!244745))

(declare-fun m!244747 () Bool)

(assert (=> b!219057 m!244747))

(assert (=> b!219057 m!244737))

(declare-fun m!244749 () Bool)

(assert (=> b!219057 m!244749))

(declare-fun m!244751 () Bool)

(assert (=> b!219057 m!244751))

(declare-fun m!244753 () Bool)

(assert (=> b!219057 m!244753))

(assert (=> b!219057 m!244711))

(declare-fun m!244755 () Bool)

(assert (=> b!219057 m!244755))

(declare-fun m!244757 () Bool)

(assert (=> b!219057 m!244757))

(assert (=> b!219057 m!244725))

(declare-fun m!244759 () Bool)

(assert (=> b!219057 m!244759))

(declare-fun m!244761 () Bool)

(assert (=> b!219057 m!244761))

(assert (=> b!219057 m!244745))

(assert (=> b!219057 m!244741))

(assert (=> b!219057 m!244751))

(declare-fun m!244763 () Bool)

(assert (=> b!219057 m!244763))

(declare-fun m!244765 () Bool)

(assert (=> b!219073 m!244765))

(declare-fun m!244767 () Bool)

(assert (=> b!219075 m!244767))

(assert (=> b!218946 d!58543))

(declare-fun d!58545 () Bool)

(declare-fun res!107398 () Bool)

(declare-fun e!142536 () Bool)

(assert (=> d!58545 (=> (not res!107398) (not e!142536))))

(declare-fun simpleValid!224 (LongMapFixedSize!2964) Bool)

(assert (=> d!58545 (= res!107398 (simpleValid!224 thiss!1504))))

(assert (=> d!58545 (= (valid!1191 thiss!1504) e!142536)))

(declare-fun b!219085 () Bool)

(declare-fun res!107399 () Bool)

(assert (=> b!219085 (=> (not res!107399) (not e!142536))))

(declare-fun arrayCountValidKeys!0 (array!10744 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!219085 (= res!107399 (= (arrayCountValidKeys!0 (_keys!6185 thiss!1504) #b00000000000000000000000000000000 (size!5424 (_keys!6185 thiss!1504))) (_size!1531 thiss!1504)))))

(declare-fun b!219086 () Bool)

(declare-fun res!107400 () Bool)

(assert (=> b!219086 (=> (not res!107400) (not e!142536))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10744 (_ BitVec 32)) Bool)

(assert (=> b!219086 (= res!107400 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6185 thiss!1504) (mask!9918 thiss!1504)))))

(declare-fun b!219087 () Bool)

(declare-datatypes ((List!3259 0))(
  ( (Nil!3256) (Cons!3255 (h!3902 (_ BitVec 64)) (t!8226 List!3259)) )
))
(declare-fun arrayNoDuplicates!0 (array!10744 (_ BitVec 32) List!3259) Bool)

(assert (=> b!219087 (= e!142536 (arrayNoDuplicates!0 (_keys!6185 thiss!1504) #b00000000000000000000000000000000 Nil!3256))))

(assert (= (and d!58545 res!107398) b!219085))

(assert (= (and b!219085 res!107399) b!219086))

(assert (= (and b!219086 res!107400) b!219087))

(declare-fun m!244769 () Bool)

(assert (=> d!58545 m!244769))

(declare-fun m!244771 () Bool)

(assert (=> b!219085 m!244771))

(declare-fun m!244773 () Bool)

(assert (=> b!219086 m!244773))

(declare-fun m!244775 () Bool)

(assert (=> b!219087 m!244775))

(assert (=> start!21772 d!58545))

(declare-fun d!58547 () Bool)

(declare-fun e!142539 () Bool)

(assert (=> d!58547 e!142539))

(declare-fun res!107405 () Bool)

(assert (=> d!58547 (=> (not res!107405) (not e!142539))))

(declare-fun lt!111837 () SeekEntryResult!805)

(assert (=> d!58547 (= res!107405 ((_ is Found!805) lt!111837))))

(assert (=> d!58547 (= lt!111837 (seekEntryOrOpen!0 key!932 (_keys!6185 thiss!1504) (mask!9918 thiss!1504)))))

(declare-fun lt!111838 () Unit!6526)

(declare-fun choose!1095 (array!10744 array!10742 (_ BitVec 32) (_ BitVec 32) V!7315 V!7315 (_ BitVec 64) Int) Unit!6526)

(assert (=> d!58547 (= lt!111838 (choose!1095 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) key!932 (defaultEntry!4135 thiss!1504)))))

(assert (=> d!58547 (validMask!0 (mask!9918 thiss!1504))))

(assert (=> d!58547 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!193 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) key!932 (defaultEntry!4135 thiss!1504)) lt!111838)))

(declare-fun b!219092 () Bool)

(declare-fun res!107406 () Bool)

(assert (=> b!219092 (=> (not res!107406) (not e!142539))))

(assert (=> b!219092 (= res!107406 (inRange!0 (index!5391 lt!111837) (mask!9918 thiss!1504)))))

(declare-fun b!219093 () Bool)

(assert (=> b!219093 (= e!142539 (= (select (arr!5092 (_keys!6185 thiss!1504)) (index!5391 lt!111837)) key!932))))

(assert (=> b!219093 (and (bvsge (index!5391 lt!111837) #b00000000000000000000000000000000) (bvslt (index!5391 lt!111837) (size!5424 (_keys!6185 thiss!1504))))))

(assert (= (and d!58547 res!107405) b!219092))

(assert (= (and b!219092 res!107406) b!219093))

(assert (=> d!58547 m!244649))

(declare-fun m!244777 () Bool)

(assert (=> d!58547 m!244777))

(assert (=> d!58547 m!244721))

(declare-fun m!244779 () Bool)

(assert (=> b!219092 m!244779))

(declare-fun m!244781 () Bool)

(assert (=> b!219093 m!244781))

(assert (=> b!218940 d!58547))

(declare-fun d!58549 () Bool)

(declare-fun res!107411 () Bool)

(declare-fun e!142544 () Bool)

(assert (=> d!58549 (=> res!107411 e!142544)))

(assert (=> d!58549 (= res!107411 (= (select (arr!5092 (_keys!6185 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!58549 (= (arrayContainsKey!0 (_keys!6185 thiss!1504) key!932 #b00000000000000000000000000000000) e!142544)))

(declare-fun b!219098 () Bool)

(declare-fun e!142545 () Bool)

(assert (=> b!219098 (= e!142544 e!142545)))

(declare-fun res!107412 () Bool)

(assert (=> b!219098 (=> (not res!107412) (not e!142545))))

(assert (=> b!219098 (= res!107412 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!5424 (_keys!6185 thiss!1504))))))

(declare-fun b!219099 () Bool)

(assert (=> b!219099 (= e!142545 (arrayContainsKey!0 (_keys!6185 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!58549 (not res!107411)) b!219098))

(assert (= (and b!219098 res!107412) b!219099))

(assert (=> d!58549 m!244711))

(declare-fun m!244783 () Bool)

(assert (=> b!219099 m!244783))

(assert (=> bm!20452 d!58549))

(declare-fun b!219116 () Bool)

(declare-fun e!142555 () Bool)

(declare-fun lt!111844 () SeekEntryResult!805)

(assert (=> b!219116 (= e!142555 ((_ is Undefined!805) lt!111844))))

(declare-fun d!58551 () Bool)

(declare-fun e!142556 () Bool)

(assert (=> d!58551 e!142556))

(declare-fun c!36454 () Bool)

(assert (=> d!58551 (= c!36454 ((_ is MissingZero!805) lt!111844))))

(assert (=> d!58551 (= lt!111844 (seekEntryOrOpen!0 key!932 (_keys!6185 thiss!1504) (mask!9918 thiss!1504)))))

(declare-fun lt!111843 () Unit!6526)

(declare-fun choose!1096 (array!10744 array!10742 (_ BitVec 32) (_ BitVec 32) V!7315 V!7315 (_ BitVec 64) Int) Unit!6526)

(assert (=> d!58551 (= lt!111843 (choose!1096 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) key!932 (defaultEntry!4135 thiss!1504)))))

(assert (=> d!58551 (validMask!0 (mask!9918 thiss!1504))))

(assert (=> d!58551 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!201 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) key!932 (defaultEntry!4135 thiss!1504)) lt!111843)))

(declare-fun b!219117 () Bool)

(declare-fun res!107421 () Bool)

(declare-fun e!142554 () Bool)

(assert (=> b!219117 (=> (not res!107421) (not e!142554))))

(declare-fun call!20487 () Bool)

(assert (=> b!219117 (= res!107421 call!20487)))

(assert (=> b!219117 (= e!142555 e!142554)))

(declare-fun b!219118 () Bool)

(assert (=> b!219118 (and (bvsge (index!5390 lt!111844) #b00000000000000000000000000000000) (bvslt (index!5390 lt!111844) (size!5424 (_keys!6185 thiss!1504))))))

(declare-fun res!107424 () Bool)

(assert (=> b!219118 (= res!107424 (= (select (arr!5092 (_keys!6185 thiss!1504)) (index!5390 lt!111844)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!142557 () Bool)

(assert (=> b!219118 (=> (not res!107424) (not e!142557))))

(declare-fun b!219119 () Bool)

(declare-fun call!20488 () Bool)

(assert (=> b!219119 (= e!142554 (not call!20488))))

(declare-fun b!219120 () Bool)

(declare-fun res!107423 () Bool)

(assert (=> b!219120 (=> (not res!107423) (not e!142554))))

(assert (=> b!219120 (= res!107423 (= (select (arr!5092 (_keys!6185 thiss!1504)) (index!5393 lt!111844)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!219120 (and (bvsge (index!5393 lt!111844) #b00000000000000000000000000000000) (bvslt (index!5393 lt!111844) (size!5424 (_keys!6185 thiss!1504))))))

(declare-fun bm!20484 () Bool)

(assert (=> bm!20484 (= call!20488 (arrayContainsKey!0 (_keys!6185 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!219121 () Bool)

(assert (=> b!219121 (= e!142556 e!142557)))

(declare-fun res!107422 () Bool)

(assert (=> b!219121 (= res!107422 call!20487)))

(assert (=> b!219121 (=> (not res!107422) (not e!142557))))

(declare-fun b!219122 () Bool)

(assert (=> b!219122 (= e!142557 (not call!20488))))

(declare-fun b!219123 () Bool)

(assert (=> b!219123 (= e!142556 e!142555)))

(declare-fun c!36453 () Bool)

(assert (=> b!219123 (= c!36453 ((_ is MissingVacant!805) lt!111844))))

(declare-fun bm!20485 () Bool)

(assert (=> bm!20485 (= call!20487 (inRange!0 (ite c!36454 (index!5390 lt!111844) (index!5393 lt!111844)) (mask!9918 thiss!1504)))))

(assert (= (and d!58551 c!36454) b!219121))

(assert (= (and d!58551 (not c!36454)) b!219123))

(assert (= (and b!219121 res!107422) b!219118))

(assert (= (and b!219118 res!107424) b!219122))

(assert (= (and b!219123 c!36453) b!219117))

(assert (= (and b!219123 (not c!36453)) b!219116))

(assert (= (and b!219117 res!107421) b!219120))

(assert (= (and b!219120 res!107423) b!219119))

(assert (= (or b!219121 b!219117) bm!20485))

(assert (= (or b!219122 b!219119) bm!20484))

(assert (=> d!58551 m!244649))

(declare-fun m!244785 () Bool)

(assert (=> d!58551 m!244785))

(assert (=> d!58551 m!244721))

(declare-fun m!244787 () Bool)

(assert (=> b!219120 m!244787))

(declare-fun m!244789 () Bool)

(assert (=> b!219118 m!244789))

(declare-fun m!244791 () Bool)

(assert (=> bm!20485 m!244791))

(assert (=> bm!20484 m!244661))

(assert (=> b!218935 d!58551))

(declare-fun d!58553 () Bool)

(assert (=> d!58553 (= (array_inv!3361 (_keys!6185 thiss!1504)) (bvsge (size!5424 (_keys!6185 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!218947 d!58553))

(declare-fun d!58555 () Bool)

(assert (=> d!58555 (= (array_inv!3362 (_values!4118 thiss!1504)) (bvsge (size!5423 (_values!4118 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!218947 d!58555))

(declare-fun b!219136 () Bool)

(declare-fun e!142566 () SeekEntryResult!805)

(declare-fun e!142564 () SeekEntryResult!805)

(assert (=> b!219136 (= e!142566 e!142564)))

(declare-fun lt!111852 () (_ BitVec 64))

(declare-fun lt!111851 () SeekEntryResult!805)

(assert (=> b!219136 (= lt!111852 (select (arr!5092 (_keys!6185 thiss!1504)) (index!5392 lt!111851)))))

(declare-fun c!36461 () Bool)

(assert (=> b!219136 (= c!36461 (= lt!111852 key!932))))

(declare-fun b!219137 () Bool)

(declare-fun e!142565 () SeekEntryResult!805)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!10744 (_ BitVec 32)) SeekEntryResult!805)

(assert (=> b!219137 (= e!142565 (seekKeyOrZeroReturnVacant!0 (x!22887 lt!111851) (index!5392 lt!111851) (index!5392 lt!111851) key!932 (_keys!6185 thiss!1504) (mask!9918 thiss!1504)))))

(declare-fun b!219138 () Bool)

(declare-fun c!36462 () Bool)

(assert (=> b!219138 (= c!36462 (= lt!111852 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!219138 (= e!142564 e!142565)))

(declare-fun b!219139 () Bool)

(assert (=> b!219139 (= e!142566 Undefined!805)))

(declare-fun b!219140 () Bool)

(assert (=> b!219140 (= e!142565 (MissingZero!805 (index!5392 lt!111851)))))

(declare-fun d!58557 () Bool)

(declare-fun lt!111853 () SeekEntryResult!805)

(assert (=> d!58557 (and (or ((_ is Undefined!805) lt!111853) (not ((_ is Found!805) lt!111853)) (and (bvsge (index!5391 lt!111853) #b00000000000000000000000000000000) (bvslt (index!5391 lt!111853) (size!5424 (_keys!6185 thiss!1504))))) (or ((_ is Undefined!805) lt!111853) ((_ is Found!805) lt!111853) (not ((_ is MissingZero!805) lt!111853)) (and (bvsge (index!5390 lt!111853) #b00000000000000000000000000000000) (bvslt (index!5390 lt!111853) (size!5424 (_keys!6185 thiss!1504))))) (or ((_ is Undefined!805) lt!111853) ((_ is Found!805) lt!111853) ((_ is MissingZero!805) lt!111853) (not ((_ is MissingVacant!805) lt!111853)) (and (bvsge (index!5393 lt!111853) #b00000000000000000000000000000000) (bvslt (index!5393 lt!111853) (size!5424 (_keys!6185 thiss!1504))))) (or ((_ is Undefined!805) lt!111853) (ite ((_ is Found!805) lt!111853) (= (select (arr!5092 (_keys!6185 thiss!1504)) (index!5391 lt!111853)) key!932) (ite ((_ is MissingZero!805) lt!111853) (= (select (arr!5092 (_keys!6185 thiss!1504)) (index!5390 lt!111853)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!805) lt!111853) (= (select (arr!5092 (_keys!6185 thiss!1504)) (index!5393 lt!111853)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!58557 (= lt!111853 e!142566)))

(declare-fun c!36463 () Bool)

(assert (=> d!58557 (= c!36463 (and ((_ is Intermediate!805) lt!111851) (undefined!1617 lt!111851)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!10744 (_ BitVec 32)) SeekEntryResult!805)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!58557 (= lt!111851 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!9918 thiss!1504)) key!932 (_keys!6185 thiss!1504) (mask!9918 thiss!1504)))))

(assert (=> d!58557 (validMask!0 (mask!9918 thiss!1504))))

(assert (=> d!58557 (= (seekEntryOrOpen!0 key!932 (_keys!6185 thiss!1504) (mask!9918 thiss!1504)) lt!111853)))

(declare-fun b!219141 () Bool)

(assert (=> b!219141 (= e!142564 (Found!805 (index!5392 lt!111851)))))

(assert (= (and d!58557 c!36463) b!219139))

(assert (= (and d!58557 (not c!36463)) b!219136))

(assert (= (and b!219136 c!36461) b!219141))

(assert (= (and b!219136 (not c!36461)) b!219138))

(assert (= (and b!219138 c!36462) b!219140))

(assert (= (and b!219138 (not c!36462)) b!219137))

(declare-fun m!244793 () Bool)

(assert (=> b!219136 m!244793))

(declare-fun m!244795 () Bool)

(assert (=> b!219137 m!244795))

(declare-fun m!244797 () Bool)

(assert (=> d!58557 m!244797))

(declare-fun m!244799 () Bool)

(assert (=> d!58557 m!244799))

(assert (=> d!58557 m!244797))

(declare-fun m!244801 () Bool)

(assert (=> d!58557 m!244801))

(declare-fun m!244803 () Bool)

(assert (=> d!58557 m!244803))

(assert (=> d!58557 m!244721))

(declare-fun m!244805 () Bool)

(assert (=> d!58557 m!244805))

(assert (=> b!218934 d!58557))

(declare-fun d!58559 () Bool)

(assert (=> d!58559 (= (inRange!0 (ite c!36416 (index!5390 lt!111741) (index!5393 lt!111741)) (mask!9918 thiss!1504)) (and (bvsge (ite c!36416 (index!5390 lt!111741) (index!5393 lt!111741)) #b00000000000000000000000000000000) (bvslt (ite c!36416 (index!5390 lt!111741) (index!5393 lt!111741)) (bvadd (mask!9918 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!20451 d!58559))

(declare-fun mapNonEmpty!9798 () Bool)

(declare-fun mapRes!9798 () Bool)

(declare-fun tp!20814 () Bool)

(declare-fun e!142571 () Bool)

(assert (=> mapNonEmpty!9798 (= mapRes!9798 (and tp!20814 e!142571))))

(declare-fun mapRest!9798 () (Array (_ BitVec 32) ValueCell!2532))

(declare-fun mapKey!9798 () (_ BitVec 32))

(declare-fun mapValue!9798 () ValueCell!2532)

(assert (=> mapNonEmpty!9798 (= mapRest!9792 (store mapRest!9798 mapKey!9798 mapValue!9798))))

(declare-fun b!219149 () Bool)

(declare-fun e!142572 () Bool)

(assert (=> b!219149 (= e!142572 tp_is_empty!5751)))

(declare-fun mapIsEmpty!9798 () Bool)

(assert (=> mapIsEmpty!9798 mapRes!9798))

(declare-fun condMapEmpty!9798 () Bool)

(declare-fun mapDefault!9798 () ValueCell!2532)

(assert (=> mapNonEmpty!9792 (= condMapEmpty!9798 (= mapRest!9792 ((as const (Array (_ BitVec 32) ValueCell!2532)) mapDefault!9798)))))

(assert (=> mapNonEmpty!9792 (= tp!20804 (and e!142572 mapRes!9798))))

(declare-fun b!219148 () Bool)

(assert (=> b!219148 (= e!142571 tp_is_empty!5751)))

(assert (= (and mapNonEmpty!9792 condMapEmpty!9798) mapIsEmpty!9798))

(assert (= (and mapNonEmpty!9792 (not condMapEmpty!9798)) mapNonEmpty!9798))

(assert (= (and mapNonEmpty!9798 ((_ is ValueCellFull!2532) mapValue!9798)) b!219148))

(assert (= (and mapNonEmpty!9792 ((_ is ValueCellFull!2532) mapDefault!9798)) b!219149))

(declare-fun m!244807 () Bool)

(assert (=> mapNonEmpty!9798 m!244807))

(declare-fun b_lambda!7863 () Bool)

(assert (= b_lambda!7861 (or (and b!218947 b_free!5889) b_lambda!7863)))

(check-sat (not b!219011) (not b!219068) (not b!219073) b_and!12803 (not b!219075) (not b!219087) (not b!219085) (not b!219099) (not d!58551) (not b!219086) (not b!219057) (not bm!20485) (not b_next!5889) (not bm!20484) (not d!58547) (not b!219072) (not b!219137) (not d!58557) (not d!58543) (not b!219013) (not b!219056) (not b!219092) (not d!58545) (not mapNonEmpty!9798) (not b!219074) (not b!219063) (not b_lambda!7863) (not d!58541) (not bm!20474) (not bm!20478) (not bm!20476) tp_is_empty!5751 (not bm!20479))
(check-sat b_and!12803 (not b_next!5889))
(get-model)

(declare-fun d!58561 () Bool)

(assert (=> d!58561 (= (validKeyInArray!0 (select (arr!5092 (_keys!6185 thiss!1504)) #b00000000000000000000000000000000)) (and (not (= (select (arr!5092 (_keys!6185 thiss!1504)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5092 (_keys!6185 thiss!1504)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!219063 d!58561))

(declare-fun d!58563 () Bool)

(declare-fun res!107429 () Bool)

(declare-fun e!142577 () Bool)

(assert (=> d!58563 (=> res!107429 e!142577)))

(assert (=> d!58563 (= res!107429 (and ((_ is Cons!3253) (toList!1644 (getCurrentListMap!1167 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4135 thiss!1504)))) (= (_1!2175 (h!3900 (toList!1644 (getCurrentListMap!1167 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4135 thiss!1504))))) key!932)))))

(assert (=> d!58563 (= (containsKey!251 (toList!1644 (getCurrentListMap!1167 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4135 thiss!1504))) key!932) e!142577)))

(declare-fun b!219154 () Bool)

(declare-fun e!142578 () Bool)

(assert (=> b!219154 (= e!142577 e!142578)))

(declare-fun res!107430 () Bool)

(assert (=> b!219154 (=> (not res!107430) (not e!142578))))

(assert (=> b!219154 (= res!107430 (and (or (not ((_ is Cons!3253) (toList!1644 (getCurrentListMap!1167 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4135 thiss!1504))))) (bvsle (_1!2175 (h!3900 (toList!1644 (getCurrentListMap!1167 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4135 thiss!1504))))) key!932)) ((_ is Cons!3253) (toList!1644 (getCurrentListMap!1167 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4135 thiss!1504)))) (bvslt (_1!2175 (h!3900 (toList!1644 (getCurrentListMap!1167 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4135 thiss!1504))))) key!932)))))

(declare-fun b!219155 () Bool)

(assert (=> b!219155 (= e!142578 (containsKey!251 (t!8222 (toList!1644 (getCurrentListMap!1167 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4135 thiss!1504)))) key!932))))

(assert (= (and d!58563 (not res!107429)) b!219154))

(assert (= (and b!219154 res!107430) b!219155))

(declare-fun m!244809 () Bool)

(assert (=> b!219155 m!244809))

(assert (=> d!58541 d!58563))

(assert (=> d!58551 d!58557))

(declare-fun d!58565 () Bool)

(declare-fun e!142587 () Bool)

(assert (=> d!58565 e!142587))

(declare-fun c!36469 () Bool)

(declare-fun lt!111856 () SeekEntryResult!805)

(assert (=> d!58565 (= c!36469 ((_ is MissingZero!805) lt!111856))))

(assert (=> d!58565 (= lt!111856 (seekEntryOrOpen!0 key!932 (_keys!6185 thiss!1504) (mask!9918 thiss!1504)))))

(assert (=> d!58565 true))

(declare-fun _$34!1095 () Unit!6526)

(assert (=> d!58565 (= (choose!1096 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) key!932 (defaultEntry!4135 thiss!1504)) _$34!1095)))

(declare-fun b!219172 () Bool)

(declare-fun e!142590 () Bool)

(declare-fun call!20494 () Bool)

(assert (=> b!219172 (= e!142590 (not call!20494))))

(declare-fun bm!20490 () Bool)

(declare-fun call!20493 () Bool)

(assert (=> bm!20490 (= call!20493 (inRange!0 (ite c!36469 (index!5390 lt!111856) (index!5393 lt!111856)) (mask!9918 thiss!1504)))))

(declare-fun b!219173 () Bool)

(declare-fun e!142588 () Bool)

(assert (=> b!219173 (= e!142588 (not call!20494))))

(declare-fun b!219174 () Bool)

(assert (=> b!219174 (= e!142587 e!142588)))

(declare-fun res!107439 () Bool)

(assert (=> b!219174 (= res!107439 call!20493)))

(assert (=> b!219174 (=> (not res!107439) (not e!142588))))

(declare-fun b!219175 () Bool)

(declare-fun res!107440 () Bool)

(assert (=> b!219175 (=> (not res!107440) (not e!142590))))

(assert (=> b!219175 (= res!107440 (= (select (arr!5092 (_keys!6185 thiss!1504)) (index!5393 lt!111856)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!219176 () Bool)

(declare-fun res!107441 () Bool)

(assert (=> b!219176 (=> (not res!107441) (not e!142590))))

(assert (=> b!219176 (= res!107441 call!20493)))

(declare-fun e!142589 () Bool)

(assert (=> b!219176 (= e!142589 e!142590)))

(declare-fun bm!20491 () Bool)

(assert (=> bm!20491 (= call!20494 (arrayContainsKey!0 (_keys!6185 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!219177 () Bool)

(assert (=> b!219177 (= e!142589 ((_ is Undefined!805) lt!111856))))

(declare-fun b!219178 () Bool)

(assert (=> b!219178 (= e!142587 e!142589)))

(declare-fun c!36468 () Bool)

(assert (=> b!219178 (= c!36468 ((_ is MissingVacant!805) lt!111856))))

(declare-fun b!219179 () Bool)

(declare-fun res!107442 () Bool)

(assert (=> b!219179 (= res!107442 (= (select (arr!5092 (_keys!6185 thiss!1504)) (index!5390 lt!111856)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!219179 (=> (not res!107442) (not e!142588))))

(assert (= (and d!58565 c!36469) b!219174))

(assert (= (and d!58565 (not c!36469)) b!219178))

(assert (= (and b!219174 res!107439) b!219179))

(assert (= (and b!219179 res!107442) b!219173))

(assert (= (and b!219178 c!36468) b!219176))

(assert (= (and b!219178 (not c!36468)) b!219177))

(assert (= (and b!219176 res!107441) b!219175))

(assert (= (and b!219175 res!107440) b!219172))

(assert (= (or b!219174 b!219176) bm!20490))

(assert (= (or b!219173 b!219172) bm!20491))

(assert (=> d!58565 m!244649))

(declare-fun m!244811 () Bool)

(assert (=> b!219179 m!244811))

(declare-fun m!244813 () Bool)

(assert (=> b!219175 m!244813))

(assert (=> bm!20491 m!244661))

(declare-fun m!244815 () Bool)

(assert (=> bm!20490 m!244815))

(assert (=> d!58551 d!58565))

(declare-fun d!58567 () Bool)

(assert (=> d!58567 (= (validMask!0 (mask!9918 thiss!1504)) (and (or (= (mask!9918 thiss!1504) #b00000000000000000000000000000111) (= (mask!9918 thiss!1504) #b00000000000000000000000000001111) (= (mask!9918 thiss!1504) #b00000000000000000000000000011111) (= (mask!9918 thiss!1504) #b00000000000000000000000000111111) (= (mask!9918 thiss!1504) #b00000000000000000000000001111111) (= (mask!9918 thiss!1504) #b00000000000000000000000011111111) (= (mask!9918 thiss!1504) #b00000000000000000000000111111111) (= (mask!9918 thiss!1504) #b00000000000000000000001111111111) (= (mask!9918 thiss!1504) #b00000000000000000000011111111111) (= (mask!9918 thiss!1504) #b00000000000000000000111111111111) (= (mask!9918 thiss!1504) #b00000000000000000001111111111111) (= (mask!9918 thiss!1504) #b00000000000000000011111111111111) (= (mask!9918 thiss!1504) #b00000000000000000111111111111111) (= (mask!9918 thiss!1504) #b00000000000000001111111111111111) (= (mask!9918 thiss!1504) #b00000000000000011111111111111111) (= (mask!9918 thiss!1504) #b00000000000000111111111111111111) (= (mask!9918 thiss!1504) #b00000000000001111111111111111111) (= (mask!9918 thiss!1504) #b00000000000011111111111111111111) (= (mask!9918 thiss!1504) #b00000000000111111111111111111111) (= (mask!9918 thiss!1504) #b00000000001111111111111111111111) (= (mask!9918 thiss!1504) #b00000000011111111111111111111111) (= (mask!9918 thiss!1504) #b00000000111111111111111111111111) (= (mask!9918 thiss!1504) #b00000001111111111111111111111111) (= (mask!9918 thiss!1504) #b00000011111111111111111111111111) (= (mask!9918 thiss!1504) #b00000111111111111111111111111111) (= (mask!9918 thiss!1504) #b00001111111111111111111111111111) (= (mask!9918 thiss!1504) #b00011111111111111111111111111111) (= (mask!9918 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!9918 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> d!58551 d!58567))

(declare-fun d!58569 () Bool)

(assert (=> d!58569 (= (inRange!0 (ite c!36454 (index!5390 lt!111844) (index!5393 lt!111844)) (mask!9918 thiss!1504)) (and (bvsge (ite c!36454 (index!5390 lt!111844) (index!5393 lt!111844)) #b00000000000000000000000000000000) (bvslt (ite c!36454 (index!5390 lt!111844) (index!5393 lt!111844)) (bvadd (mask!9918 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!20485 d!58569))

(declare-fun d!58571 () Bool)

(declare-fun res!107443 () Bool)

(declare-fun e!142591 () Bool)

(assert (=> d!58571 (=> res!107443 e!142591)))

(assert (=> d!58571 (= res!107443 (= (select (arr!5092 (_keys!6185 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!932))))

(assert (=> d!58571 (= (arrayContainsKey!0 (_keys!6185 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!142591)))

(declare-fun b!219180 () Bool)

(declare-fun e!142592 () Bool)

(assert (=> b!219180 (= e!142591 e!142592)))

(declare-fun res!107444 () Bool)

(assert (=> b!219180 (=> (not res!107444) (not e!142592))))

(assert (=> b!219180 (= res!107444 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!5424 (_keys!6185 thiss!1504))))))

(declare-fun b!219181 () Bool)

(assert (=> b!219181 (= e!142592 (arrayContainsKey!0 (_keys!6185 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!58571 (not res!107443)) b!219180))

(assert (= (and b!219180 res!107444) b!219181))

(declare-fun m!244817 () Bool)

(assert (=> d!58571 m!244817))

(declare-fun m!244819 () Bool)

(assert (=> b!219181 m!244819))

(assert (=> b!219099 d!58571))

(assert (=> d!58547 d!58557))

(declare-fun d!58573 () Bool)

(declare-fun e!142595 () Bool)

(assert (=> d!58573 e!142595))

(declare-fun res!107449 () Bool)

(assert (=> d!58573 (=> (not res!107449) (not e!142595))))

(declare-fun lt!111859 () SeekEntryResult!805)

(assert (=> d!58573 (= res!107449 ((_ is Found!805) lt!111859))))

(assert (=> d!58573 (= lt!111859 (seekEntryOrOpen!0 key!932 (_keys!6185 thiss!1504) (mask!9918 thiss!1504)))))

(assert (=> d!58573 true))

(declare-fun _$33!153 () Unit!6526)

(assert (=> d!58573 (= (choose!1095 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) key!932 (defaultEntry!4135 thiss!1504)) _$33!153)))

(declare-fun b!219186 () Bool)

(declare-fun res!107450 () Bool)

(assert (=> b!219186 (=> (not res!107450) (not e!142595))))

(assert (=> b!219186 (= res!107450 (inRange!0 (index!5391 lt!111859) (mask!9918 thiss!1504)))))

(declare-fun b!219187 () Bool)

(assert (=> b!219187 (= e!142595 (= (select (arr!5092 (_keys!6185 thiss!1504)) (index!5391 lt!111859)) key!932))))

(assert (= (and d!58573 res!107449) b!219186))

(assert (= (and b!219186 res!107450) b!219187))

(assert (=> d!58573 m!244649))

(declare-fun m!244821 () Bool)

(assert (=> b!219186 m!244821))

(declare-fun m!244823 () Bool)

(assert (=> b!219187 m!244823))

(assert (=> d!58547 d!58573))

(assert (=> d!58547 d!58567))

(declare-fun b!219212 () Bool)

(declare-fun e!142614 () Bool)

(declare-fun e!142610 () Bool)

(assert (=> b!219212 (= e!142614 e!142610)))

(declare-fun c!36479 () Bool)

(declare-fun e!142611 () Bool)

(assert (=> b!219212 (= c!36479 e!142611)))

(declare-fun res!107462 () Bool)

(assert (=> b!219212 (=> (not res!107462) (not e!142611))))

(assert (=> b!219212 (= res!107462 (bvslt #b00000000000000000000000000000000 (size!5424 (_keys!6185 thiss!1504))))))

(declare-fun b!219213 () Bool)

(declare-fun e!142613 () Bool)

(declare-fun lt!111877 () ListLongMap!3257)

(declare-fun isEmpty!507 (ListLongMap!3257) Bool)

(assert (=> b!219213 (= e!142613 (isEmpty!507 lt!111877))))

(declare-fun b!219214 () Bool)

(assert (=> b!219214 (= e!142613 (= lt!111877 (getCurrentListMapNoExtraKeys!521 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4135 thiss!1504))))))

(declare-fun b!219215 () Bool)

(declare-fun lt!111875 () Unit!6526)

(declare-fun lt!111876 () Unit!6526)

(assert (=> b!219215 (= lt!111875 lt!111876)))

(declare-fun lt!111874 () ListLongMap!3257)

(declare-fun lt!111879 () (_ BitVec 64))

(declare-fun lt!111880 () (_ BitVec 64))

(declare-fun lt!111878 () V!7315)

(assert (=> b!219215 (not (contains!1479 (+!592 lt!111874 (tuple2!4331 lt!111880 lt!111878)) lt!111879))))

(declare-fun addStillNotContains!112 (ListLongMap!3257 (_ BitVec 64) V!7315 (_ BitVec 64)) Unit!6526)

(assert (=> b!219215 (= lt!111876 (addStillNotContains!112 lt!111874 lt!111880 lt!111878 lt!111879))))

(assert (=> b!219215 (= lt!111879 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!219215 (= lt!111878 (get!2675 (select (arr!5091 (_values!4118 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!540 (defaultEntry!4135 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!219215 (= lt!111880 (select (arr!5092 (_keys!6185 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun call!20497 () ListLongMap!3257)

(assert (=> b!219215 (= lt!111874 call!20497)))

(declare-fun e!142612 () ListLongMap!3257)

(assert (=> b!219215 (= e!142612 (+!592 call!20497 (tuple2!4331 (select (arr!5092 (_keys!6185 thiss!1504)) #b00000000000000000000000000000000) (get!2675 (select (arr!5091 (_values!4118 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!540 (defaultEntry!4135 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!219216 () Bool)

(assert (=> b!219216 (= e!142612 call!20497)))

(declare-fun bm!20494 () Bool)

(assert (=> bm!20494 (= call!20497 (getCurrentListMapNoExtraKeys!521 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4135 thiss!1504)))))

(declare-fun b!219217 () Bool)

(assert (=> b!219217 (= e!142610 e!142613)))

(declare-fun c!36481 () Bool)

(assert (=> b!219217 (= c!36481 (bvslt #b00000000000000000000000000000000 (size!5424 (_keys!6185 thiss!1504))))))

(declare-fun b!219218 () Bool)

(assert (=> b!219218 (= e!142611 (validKeyInArray!0 (select (arr!5092 (_keys!6185 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!219218 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!219220 () Bool)

(declare-fun e!142616 () ListLongMap!3257)

(assert (=> b!219220 (= e!142616 (ListLongMap!3258 Nil!3254))))

(declare-fun b!219221 () Bool)

(assert (=> b!219221 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5424 (_keys!6185 thiss!1504))))))

(assert (=> b!219221 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5423 (_values!4118 thiss!1504))))))

(declare-fun e!142615 () Bool)

(assert (=> b!219221 (= e!142615 (= (apply!202 lt!111877 (select (arr!5092 (_keys!6185 thiss!1504)) #b00000000000000000000000000000000)) (get!2675 (select (arr!5091 (_values!4118 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!540 (defaultEntry!4135 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!219222 () Bool)

(assert (=> b!219222 (= e!142610 e!142615)))

(assert (=> b!219222 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5424 (_keys!6185 thiss!1504))))))

(declare-fun res!107460 () Bool)

(assert (=> b!219222 (= res!107460 (contains!1479 lt!111877 (select (arr!5092 (_keys!6185 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!219222 (=> (not res!107460) (not e!142615))))

(declare-fun b!219223 () Bool)

(declare-fun res!107459 () Bool)

(assert (=> b!219223 (=> (not res!107459) (not e!142614))))

(assert (=> b!219223 (= res!107459 (not (contains!1479 lt!111877 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!58575 () Bool)

(assert (=> d!58575 e!142614))

(declare-fun res!107461 () Bool)

(assert (=> d!58575 (=> (not res!107461) (not e!142614))))

(assert (=> d!58575 (= res!107461 (not (contains!1479 lt!111877 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!58575 (= lt!111877 e!142616)))

(declare-fun c!36478 () Bool)

(assert (=> d!58575 (= c!36478 (bvsge #b00000000000000000000000000000000 (size!5424 (_keys!6185 thiss!1504))))))

(assert (=> d!58575 (validMask!0 (mask!9918 thiss!1504))))

(assert (=> d!58575 (= (getCurrentListMapNoExtraKeys!521 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4135 thiss!1504)) lt!111877)))

(declare-fun b!219219 () Bool)

(assert (=> b!219219 (= e!142616 e!142612)))

(declare-fun c!36480 () Bool)

(assert (=> b!219219 (= c!36480 (validKeyInArray!0 (select (arr!5092 (_keys!6185 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!58575 c!36478) b!219220))

(assert (= (and d!58575 (not c!36478)) b!219219))

(assert (= (and b!219219 c!36480) b!219215))

(assert (= (and b!219219 (not c!36480)) b!219216))

(assert (= (or b!219215 b!219216) bm!20494))

(assert (= (and d!58575 res!107461) b!219223))

(assert (= (and b!219223 res!107459) b!219212))

(assert (= (and b!219212 res!107462) b!219218))

(assert (= (and b!219212 c!36479) b!219222))

(assert (= (and b!219212 (not c!36479)) b!219217))

(assert (= (and b!219222 res!107460) b!219221))

(assert (= (and b!219217 c!36481) b!219214))

(assert (= (and b!219217 (not c!36481)) b!219213))

(declare-fun b_lambda!7865 () Bool)

(assert (=> (not b_lambda!7865) (not b!219215)))

(assert (=> b!219215 t!8225))

(declare-fun b_and!12805 () Bool)

(assert (= b_and!12803 (and (=> t!8225 result!5081) b_and!12805)))

(declare-fun b_lambda!7867 () Bool)

(assert (=> (not b_lambda!7867) (not b!219221)))

(assert (=> b!219221 t!8225))

(declare-fun b_and!12807 () Bool)

(assert (= b_and!12805 (and (=> t!8225 result!5081) b_and!12807)))

(declare-fun m!244825 () Bool)

(assert (=> b!219215 m!244825))

(assert (=> b!219215 m!244825))

(declare-fun m!244827 () Bool)

(assert (=> b!219215 m!244827))

(assert (=> b!219215 m!244715))

(declare-fun m!244829 () Bool)

(assert (=> b!219215 m!244829))

(assert (=> b!219215 m!244709))

(assert (=> b!219215 m!244715))

(assert (=> b!219215 m!244709))

(assert (=> b!219215 m!244717))

(declare-fun m!244831 () Bool)

(assert (=> b!219215 m!244831))

(assert (=> b!219215 m!244711))

(declare-fun m!244833 () Bool)

(assert (=> b!219214 m!244833))

(declare-fun m!244835 () Bool)

(assert (=> d!58575 m!244835))

(assert (=> d!58575 m!244721))

(assert (=> b!219222 m!244711))

(assert (=> b!219222 m!244711))

(declare-fun m!244837 () Bool)

(assert (=> b!219222 m!244837))

(assert (=> b!219219 m!244711))

(assert (=> b!219219 m!244711))

(assert (=> b!219219 m!244723))

(assert (=> b!219218 m!244711))

(assert (=> b!219218 m!244711))

(assert (=> b!219218 m!244723))

(assert (=> b!219221 m!244715))

(assert (=> b!219221 m!244709))

(assert (=> b!219221 m!244711))

(assert (=> b!219221 m!244711))

(declare-fun m!244839 () Bool)

(assert (=> b!219221 m!244839))

(assert (=> b!219221 m!244715))

(assert (=> b!219221 m!244709))

(assert (=> b!219221 m!244717))

(declare-fun m!244841 () Bool)

(assert (=> b!219213 m!244841))

(declare-fun m!244843 () Bool)

(assert (=> b!219223 m!244843))

(assert (=> bm!20494 m!244833))

(assert (=> bm!20476 d!58575))

(declare-fun b!219242 () Bool)

(declare-fun e!142630 () Bool)

(declare-fun lt!111885 () SeekEntryResult!805)

(assert (=> b!219242 (= e!142630 (bvsge (x!22887 lt!111885) #b01111111111111111111111111111110))))

(declare-fun d!58577 () Bool)

(assert (=> d!58577 e!142630))

(declare-fun c!36490 () Bool)

(assert (=> d!58577 (= c!36490 (and ((_ is Intermediate!805) lt!111885) (undefined!1617 lt!111885)))))

(declare-fun e!142628 () SeekEntryResult!805)

(assert (=> d!58577 (= lt!111885 e!142628)))

(declare-fun c!36488 () Bool)

(assert (=> d!58577 (= c!36488 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!111886 () (_ BitVec 64))

(assert (=> d!58577 (= lt!111886 (select (arr!5092 (_keys!6185 thiss!1504)) (toIndex!0 key!932 (mask!9918 thiss!1504))))))

(assert (=> d!58577 (validMask!0 (mask!9918 thiss!1504))))

(assert (=> d!58577 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!9918 thiss!1504)) key!932 (_keys!6185 thiss!1504) (mask!9918 thiss!1504)) lt!111885)))

(declare-fun b!219243 () Bool)

(assert (=> b!219243 (= e!142628 (Intermediate!805 true (toIndex!0 key!932 (mask!9918 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun b!219244 () Bool)

(declare-fun e!142631 () Bool)

(assert (=> b!219244 (= e!142630 e!142631)))

(declare-fun res!107469 () Bool)

(assert (=> b!219244 (= res!107469 (and ((_ is Intermediate!805) lt!111885) (not (undefined!1617 lt!111885)) (bvslt (x!22887 lt!111885) #b01111111111111111111111111111110) (bvsge (x!22887 lt!111885) #b00000000000000000000000000000000) (bvsge (x!22887 lt!111885) #b00000000000000000000000000000000)))))

(assert (=> b!219244 (=> (not res!107469) (not e!142631))))

(declare-fun b!219245 () Bool)

(assert (=> b!219245 (and (bvsge (index!5392 lt!111885) #b00000000000000000000000000000000) (bvslt (index!5392 lt!111885) (size!5424 (_keys!6185 thiss!1504))))))

(declare-fun res!107470 () Bool)

(assert (=> b!219245 (= res!107470 (= (select (arr!5092 (_keys!6185 thiss!1504)) (index!5392 lt!111885)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!142629 () Bool)

(assert (=> b!219245 (=> res!107470 e!142629)))

(declare-fun b!219246 () Bool)

(assert (=> b!219246 (and (bvsge (index!5392 lt!111885) #b00000000000000000000000000000000) (bvslt (index!5392 lt!111885) (size!5424 (_keys!6185 thiss!1504))))))

(assert (=> b!219246 (= e!142629 (= (select (arr!5092 (_keys!6185 thiss!1504)) (index!5392 lt!111885)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!219247 () Bool)

(assert (=> b!219247 (and (bvsge (index!5392 lt!111885) #b00000000000000000000000000000000) (bvslt (index!5392 lt!111885) (size!5424 (_keys!6185 thiss!1504))))))

(declare-fun res!107471 () Bool)

(assert (=> b!219247 (= res!107471 (= (select (arr!5092 (_keys!6185 thiss!1504)) (index!5392 lt!111885)) key!932))))

(assert (=> b!219247 (=> res!107471 e!142629)))

(assert (=> b!219247 (= e!142631 e!142629)))

(declare-fun b!219248 () Bool)

(declare-fun e!142627 () SeekEntryResult!805)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!219248 (= e!142627 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!932 (mask!9918 thiss!1504)) #b00000000000000000000000000000000 (mask!9918 thiss!1504)) key!932 (_keys!6185 thiss!1504) (mask!9918 thiss!1504)))))

(declare-fun b!219249 () Bool)

(assert (=> b!219249 (= e!142628 e!142627)))

(declare-fun c!36489 () Bool)

(assert (=> b!219249 (= c!36489 (or (= lt!111886 key!932) (= (bvadd lt!111886 lt!111886) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!219250 () Bool)

(assert (=> b!219250 (= e!142627 (Intermediate!805 false (toIndex!0 key!932 (mask!9918 thiss!1504)) #b00000000000000000000000000000000))))

(assert (= (and d!58577 c!36488) b!219243))

(assert (= (and d!58577 (not c!36488)) b!219249))

(assert (= (and b!219249 c!36489) b!219250))

(assert (= (and b!219249 (not c!36489)) b!219248))

(assert (= (and d!58577 c!36490) b!219242))

(assert (= (and d!58577 (not c!36490)) b!219244))

(assert (= (and b!219244 res!107469) b!219247))

(assert (= (and b!219247 (not res!107471)) b!219245))

(assert (= (and b!219245 (not res!107470)) b!219246))

(assert (=> b!219248 m!244797))

(declare-fun m!244845 () Bool)

(assert (=> b!219248 m!244845))

(assert (=> b!219248 m!244845))

(declare-fun m!244847 () Bool)

(assert (=> b!219248 m!244847))

(assert (=> d!58577 m!244797))

(declare-fun m!244849 () Bool)

(assert (=> d!58577 m!244849))

(assert (=> d!58577 m!244721))

(declare-fun m!244851 () Bool)

(assert (=> b!219247 m!244851))

(assert (=> b!219245 m!244851))

(assert (=> b!219246 m!244851))

(assert (=> d!58557 d!58577))

(declare-fun d!58579 () Bool)

(declare-fun lt!111892 () (_ BitVec 32))

(declare-fun lt!111891 () (_ BitVec 32))

(assert (=> d!58579 (= lt!111892 (bvmul (bvxor lt!111891 (bvlshr lt!111891 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!58579 (= lt!111891 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!58579 (and (bvsge (mask!9918 thiss!1504) #b00000000000000000000000000000000) (let ((res!107472 (let ((h!3903 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!22905 (bvmul (bvxor h!3903 (bvlshr h!3903 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!22905 (bvlshr x!22905 #b00000000000000000000000000001101)) (mask!9918 thiss!1504)))))) (and (bvslt res!107472 (bvadd (mask!9918 thiss!1504) #b00000000000000000000000000000001)) (bvsge res!107472 #b00000000000000000000000000000000))))))

(assert (=> d!58579 (= (toIndex!0 key!932 (mask!9918 thiss!1504)) (bvand (bvxor lt!111892 (bvlshr lt!111892 #b00000000000000000000000000001101)) (mask!9918 thiss!1504)))))

(assert (=> d!58557 d!58579))

(assert (=> d!58557 d!58567))

(declare-fun d!58581 () Bool)

(declare-fun isEmpty!508 (Option!265) Bool)

(assert (=> d!58581 (= (isDefined!201 (getValueByKey!259 (toList!1644 (getCurrentListMap!1167 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4135 thiss!1504))) key!932)) (not (isEmpty!508 (getValueByKey!259 (toList!1644 (getCurrentListMap!1167 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4135 thiss!1504))) key!932))))))

(declare-fun bs!8439 () Bool)

(assert (= bs!8439 d!58581))

(assert (=> bs!8439 m!244705))

(declare-fun m!244853 () Bool)

(assert (=> bs!8439 m!244853))

(assert (=> b!219013 d!58581))

(declare-fun d!58583 () Bool)

(declare-fun c!36495 () Bool)

(assert (=> d!58583 (= c!36495 (and ((_ is Cons!3253) (toList!1644 (getCurrentListMap!1167 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4135 thiss!1504)))) (= (_1!2175 (h!3900 (toList!1644 (getCurrentListMap!1167 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4135 thiss!1504))))) key!932)))))

(declare-fun e!142636 () Option!265)

(assert (=> d!58583 (= (getValueByKey!259 (toList!1644 (getCurrentListMap!1167 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4135 thiss!1504))) key!932) e!142636)))

(declare-fun b!219259 () Bool)

(assert (=> b!219259 (= e!142636 (Some!264 (_2!2175 (h!3900 (toList!1644 (getCurrentListMap!1167 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4135 thiss!1504)))))))))

(declare-fun b!219262 () Bool)

(declare-fun e!142637 () Option!265)

(assert (=> b!219262 (= e!142637 None!263)))

(declare-fun b!219261 () Bool)

(assert (=> b!219261 (= e!142637 (getValueByKey!259 (t!8222 (toList!1644 (getCurrentListMap!1167 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4135 thiss!1504)))) key!932))))

(declare-fun b!219260 () Bool)

(assert (=> b!219260 (= e!142636 e!142637)))

(declare-fun c!36496 () Bool)

(assert (=> b!219260 (= c!36496 (and ((_ is Cons!3253) (toList!1644 (getCurrentListMap!1167 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4135 thiss!1504)))) (not (= (_1!2175 (h!3900 (toList!1644 (getCurrentListMap!1167 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4135 thiss!1504))))) key!932))))))

(assert (= (and d!58583 c!36495) b!219259))

(assert (= (and d!58583 (not c!36495)) b!219260))

(assert (= (and b!219260 c!36496) b!219261))

(assert (= (and b!219260 (not c!36496)) b!219262))

(declare-fun m!244855 () Bool)

(assert (=> b!219261 m!244855))

(assert (=> b!219013 d!58583))

(declare-fun d!58585 () Bool)

(declare-fun get!2676 (Option!265) V!7315)

(assert (=> d!58585 (= (apply!202 lt!111828 #b1000000000000000000000000000000000000000000000000000000000000000) (get!2676 (getValueByKey!259 (toList!1644 lt!111828) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!8440 () Bool)

(assert (= bs!8440 d!58585))

(declare-fun m!244857 () Bool)

(assert (=> bs!8440 m!244857))

(assert (=> bs!8440 m!244857))

(declare-fun m!244859 () Bool)

(assert (=> bs!8440 m!244859))

(assert (=> b!219075 d!58585))

(declare-fun d!58587 () Bool)

(declare-fun e!142638 () Bool)

(assert (=> d!58587 e!142638))

(declare-fun res!107473 () Bool)

(assert (=> d!58587 (=> res!107473 e!142638)))

(declare-fun lt!111896 () Bool)

(assert (=> d!58587 (= res!107473 (not lt!111896))))

(declare-fun lt!111894 () Bool)

(assert (=> d!58587 (= lt!111896 lt!111894)))

(declare-fun lt!111895 () Unit!6526)

(declare-fun e!142639 () Unit!6526)

(assert (=> d!58587 (= lt!111895 e!142639)))

(declare-fun c!36497 () Bool)

(assert (=> d!58587 (= c!36497 lt!111894)))

(assert (=> d!58587 (= lt!111894 (containsKey!251 (toList!1644 lt!111828) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!58587 (= (contains!1479 lt!111828 #b1000000000000000000000000000000000000000000000000000000000000000) lt!111896)))

(declare-fun b!219263 () Bool)

(declare-fun lt!111893 () Unit!6526)

(assert (=> b!219263 (= e!142639 lt!111893)))

(assert (=> b!219263 (= lt!111893 (lemmaContainsKeyImpliesGetValueByKeyDefined!200 (toList!1644 lt!111828) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!219263 (isDefined!201 (getValueByKey!259 (toList!1644 lt!111828) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!219264 () Bool)

(declare-fun Unit!6534 () Unit!6526)

(assert (=> b!219264 (= e!142639 Unit!6534)))

(declare-fun b!219265 () Bool)

(assert (=> b!219265 (= e!142638 (isDefined!201 (getValueByKey!259 (toList!1644 lt!111828) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!58587 c!36497) b!219263))

(assert (= (and d!58587 (not c!36497)) b!219264))

(assert (= (and d!58587 (not res!107473)) b!219265))

(declare-fun m!244861 () Bool)

(assert (=> d!58587 m!244861))

(declare-fun m!244863 () Bool)

(assert (=> b!219263 m!244863))

(assert (=> b!219263 m!244857))

(assert (=> b!219263 m!244857))

(declare-fun m!244865 () Bool)

(assert (=> b!219263 m!244865))

(assert (=> b!219265 m!244857))

(assert (=> b!219265 m!244857))

(assert (=> b!219265 m!244865))

(assert (=> bm!20479 d!58587))

(declare-fun d!58589 () Bool)

(assert (=> d!58589 (isDefined!201 (getValueByKey!259 (toList!1644 (getCurrentListMap!1167 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4135 thiss!1504))) key!932))))

(declare-fun lt!111899 () Unit!6526)

(declare-fun choose!1097 (List!3257 (_ BitVec 64)) Unit!6526)

(assert (=> d!58589 (= lt!111899 (choose!1097 (toList!1644 (getCurrentListMap!1167 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4135 thiss!1504))) key!932))))

(declare-fun e!142642 () Bool)

(assert (=> d!58589 e!142642))

(declare-fun res!107476 () Bool)

(assert (=> d!58589 (=> (not res!107476) (not e!142642))))

(declare-fun isStrictlySorted!353 (List!3257) Bool)

(assert (=> d!58589 (= res!107476 (isStrictlySorted!353 (toList!1644 (getCurrentListMap!1167 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4135 thiss!1504)))))))

(assert (=> d!58589 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!200 (toList!1644 (getCurrentListMap!1167 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4135 thiss!1504))) key!932) lt!111899)))

(declare-fun b!219268 () Bool)

(assert (=> b!219268 (= e!142642 (containsKey!251 (toList!1644 (getCurrentListMap!1167 (_keys!6185 thiss!1504) (_values!4118 thiss!1504) (mask!9918 thiss!1504) (extraKeys!3872 thiss!1504) (zeroValue!3976 thiss!1504) (minValue!3976 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4135 thiss!1504))) key!932))))

(assert (= (and d!58589 res!107476) b!219268))

(assert (=> d!58589 m!244705))

(assert (=> d!58589 m!244705))

(assert (=> d!58589 m!244707))

(declare-fun m!244867 () Bool)

(assert (=> d!58589 m!244867))

(declare-fun m!244869 () Bool)

(assert (=> d!58589 m!244869))

(assert (=> b!219268 m!244701))

(assert (=> b!219011 d!58589))

(assert (=> b!219011 d!58581))

(assert (=> b!219011 d!58583))

(assert (=> bm!20484 d!58549))

(declare-fun d!58591 () Bool)

(declare-fun e!142643 () Bool)

(assert (=> d!58591 e!142643))

(declare-fun res!107477 () Bool)

(assert (=> d!58591 (=> res!107477 e!142643)))

(declare-fun lt!111903 () Bool)

(assert (=> d!58591 (= res!107477 (not lt!111903))))

(declare-fun lt!111901 () Bool)

(assert (=> d!58591 (= lt!111903 lt!111901)))

(declare-fun lt!111902 () Unit!6526)

(declare-fun e!142644 () Unit!6526)

(assert (=> d!58591 (= lt!111902 e!142644)))

(declare-fun c!36498 () Bool)

(assert (=> d!58591 (= c!36498 lt!111901)))

(assert (=> d!58591 (= lt!111901 (containsKey!251 (toList!1644 lt!111828) (select (arr!5092 (_keys!6185 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!58591 (= (contains!1479 lt!111828 (select (arr!5092 (_keys!6185 thiss!1504)) #b00000000000000000000000000000000)) lt!111903)))

(declare-fun b!219269 () Bool)

(declare-fun lt!111900 () Unit!6526)

(assert (=> b!219269 (= e!142644 lt!111900)))

(assert (=> b!219269 (= lt!111900 (lemmaContainsKeyImpliesGetValueByKeyDefined!200 (toList!1644 lt!111828) (select (arr!5092 (_keys!6185 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!219269 (isDefined!201 (getValueByKey!259 (toList!1644 lt!111828) (select (arr!5092 (_keys!6185 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!219270 () Bool)

(declare-fun Unit!6535 () Unit!6526)

(assert (=> b!219270 (= e!142644 Unit!6535)))

(declare-fun b!219271 () Bool)

(assert (=> b!219271 (= e!142643 (isDefined!201 (getValueByKey!259 (toList!1644 lt!111828) (select (arr!5092 (_keys!6185 thiss!1504)) #b00000000000000000000000000000000))))))

(assert (= (and d!58591 c!36498) b!219269))

(assert (= (and d!58591 (not c!36498)) b!219270))

(assert (= (and d!58591 (not res!107477)) b!219271))

(assert (=> d!58591 m!244711))

(declare-fun m!244871 () Bool)

(assert (=> d!58591 m!244871))

(assert (=> b!219269 m!244711))

(declare-fun m!244873 () Bool)

(assert (=> b!219269 m!244873))

(assert (=> b!219269 m!244711))

(declare-fun m!244875 () Bool)

(assert (=> b!219269 m!244875))

(assert (=> b!219269 m!244875))

(declare-fun m!244877 () Bool)

(assert (=> b!219269 m!244877))

(assert (=> b!219271 m!244711))

(assert (=> b!219271 m!244875))

(assert (=> b!219271 m!244875))

(assert (=> b!219271 m!244877))

(assert (=> b!219056 d!58591))

(declare-fun d!58593 () Bool)

(declare-fun e!142647 () Bool)

(assert (=> d!58593 e!142647))

(declare-fun res!107483 () Bool)

(assert (=> d!58593 (=> (not res!107483) (not e!142647))))

(declare-fun lt!111912 () ListLongMap!3257)

(assert (=> d!58593 (= res!107483 (contains!1479 lt!111912 (_1!2175 (tuple2!4331 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3976 thiss!1504)))))))

(declare-fun lt!111914 () List!3257)

(assert (=> d!58593 (= lt!111912 (ListLongMap!3258 lt!111914))))

(declare-fun lt!111913 () Unit!6526)

(declare-fun lt!111915 () Unit!6526)

(assert (=> d!58593 (= lt!111913 lt!111915)))

(assert (=> d!58593 (= (getValueByKey!259 lt!111914 (_1!2175 (tuple2!4331 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3976 thiss!1504)))) (Some!264 (_2!2175 (tuple2!4331 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3976 thiss!1504)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!147 (List!3257 (_ BitVec 64) V!7315) Unit!6526)

(assert (=> d!58593 (= lt!111915 (lemmaContainsTupThenGetReturnValue!147 lt!111914 (_1!2175 (tuple2!4331 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3976 thiss!1504))) (_2!2175 (tuple2!4331 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3976 thiss!1504)))))))

(declare-fun insertStrictlySorted!149 (List!3257 (_ BitVec 64) V!7315) List!3257)

(assert (=> d!58593 (= lt!111914 (insertStrictlySorted!149 (toList!1644 call!20481) (_1!2175 (tuple2!4331 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3976 thiss!1504))) (_2!2175 (tuple2!4331 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3976 thiss!1504)))))))

(assert (=> d!58593 (= (+!592 call!20481 (tuple2!4331 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3976 thiss!1504))) lt!111912)))

(declare-fun b!219276 () Bool)

(declare-fun res!107482 () Bool)

(assert (=> b!219276 (=> (not res!107482) (not e!142647))))

(assert (=> b!219276 (= res!107482 (= (getValueByKey!259 (toList!1644 lt!111912) (_1!2175 (tuple2!4331 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3976 thiss!1504)))) (Some!264 (_2!2175 (tuple2!4331 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3976 thiss!1504))))))))

(declare-fun b!219277 () Bool)

(declare-fun contains!1481 (List!3257 tuple2!4330) Bool)

(assert (=> b!219277 (= e!142647 (contains!1481 (toList!1644 lt!111912) (tuple2!4331 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3976 thiss!1504))))))

(assert (= (and d!58593 res!107483) b!219276))

(assert (= (and b!219276 res!107482) b!219277))

(declare-fun m!244879 () Bool)

(assert (=> d!58593 m!244879))

(declare-fun m!244881 () Bool)

(assert (=> d!58593 m!244881))

(declare-fun m!244883 () Bool)

(assert (=> d!58593 m!244883))

(declare-fun m!244885 () Bool)

(assert (=> d!58593 m!244885))

(declare-fun m!244887 () Bool)

(assert (=> b!219276 m!244887))

(declare-fun m!244889 () Bool)

(assert (=> b!219277 m!244889))

(assert (=> b!219073 d!58593))

(declare-fun d!58595 () Bool)

(declare-fun res!107490 () Bool)

(declare-fun e!142657 () Bool)

(assert (=> d!58595 (=> res!107490 e!142657)))

(assert (=> d!58595 (= res!107490 (bvsge #b00000000000000000000000000000000 (size!5424 (_keys!6185 thiss!1504))))))

(assert (=> d!58595 (= (arrayNoDuplicates!0 (_keys!6185 thiss!1504) #b00000000000000000000000000000000 Nil!3256) e!142657)))

(declare-fun b!219288 () Bool)

(declare-fun e!142656 () Bool)

(declare-fun call!20500 () Bool)

(assert (=> b!219288 (= e!142656 call!20500)))

(declare-fun bm!20497 () Bool)

(declare-fun c!36501 () Bool)

(assert (=> bm!20497 (= call!20500 (arrayNoDuplicates!0 (_keys!6185 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!36501 (Cons!3255 (select (arr!5092 (_keys!6185 thiss!1504)) #b00000000000000000000000000000000) Nil!3256) Nil!3256)))))

(declare-fun b!219289 () Bool)

(declare-fun e!142659 () Bool)

(assert (=> b!219289 (= e!142659 e!142656)))

(assert (=> b!219289 (= c!36501 (validKeyInArray!0 (select (arr!5092 (_keys!6185 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!219290 () Bool)

(assert (=> b!219290 (= e!142657 e!142659)))

(declare-fun res!107491 () Bool)

(assert (=> b!219290 (=> (not res!107491) (not e!142659))))

(declare-fun e!142658 () Bool)

(assert (=> b!219290 (= res!107491 (not e!142658))))

(declare-fun res!107492 () Bool)

(assert (=> b!219290 (=> (not res!107492) (not e!142658))))

(assert (=> b!219290 (= res!107492 (validKeyInArray!0 (select (arr!5092 (_keys!6185 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!219291 () Bool)

(assert (=> b!219291 (= e!142656 call!20500)))

(declare-fun b!219292 () Bool)

(declare-fun contains!1482 (List!3259 (_ BitVec 64)) Bool)

(assert (=> b!219292 (= e!142658 (contains!1482 Nil!3256 (select (arr!5092 (_keys!6185 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!58595 (not res!107490)) b!219290))

(assert (= (and b!219290 res!107492) b!219292))

(assert (= (and b!219290 res!107491) b!219289))

(assert (= (and b!219289 c!36501) b!219288))

(assert (= (and b!219289 (not c!36501)) b!219291))

(assert (= (or b!219288 b!219291) bm!20497))

(assert (=> bm!20497 m!244711))

(declare-fun m!244891 () Bool)

(assert (=> bm!20497 m!244891))

(assert (=> b!219289 m!244711))

(assert (=> b!219289 m!244711))

(assert (=> b!219289 m!244723))

(assert (=> b!219290 m!244711))

(assert (=> b!219290 m!244711))

(assert (=> b!219290 m!244723))

(assert (=> b!219292 m!244711))

(assert (=> b!219292 m!244711))

(declare-fun m!244893 () Bool)

(assert (=> b!219292 m!244893))

(assert (=> b!219087 d!58595))

(declare-fun d!58597 () Bool)

(declare-fun e!142660 () Bool)

(assert (=> d!58597 e!142660))

(declare-fun res!107494 () Bool)

(assert (=> d!58597 (=> (not res!107494) (not e!142660))))

(declare-fun lt!111916 () ListLongMap!3257)

(assert (=> d!58597 (= res!107494 (contains!1479 lt!111916 (_1!2175 (ite (or c!36447 c!36448) (tuple2!4331 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3976 thiss!1504)) (tuple2!4331 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3976 thiss!1504))))))))

(declare-fun lt!111918 () List!3257)

(assert (=> d!58597 (= lt!111916 (ListLongMap!3258 lt!111918))))

(declare-fun lt!111917 () Unit!6526)

(declare-fun lt!111919 () Unit!6526)

(assert (=> d!58597 (= lt!111917 lt!111919)))

(assert (=> d!58597 (= (getValueByKey!259 lt!111918 (_1!2175 (ite (or c!36447 c!36448) (tuple2!4331 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3976 thiss!1504)) (tuple2!4331 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3976 thiss!1504))))) (Some!264 (_2!2175 (ite (or c!36447 c!36448) (tuple2!4331 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3976 thiss!1504)) (tuple2!4331 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3976 thiss!1504))))))))

(assert (=> d!58597 (= lt!111919 (lemmaContainsTupThenGetReturnValue!147 lt!111918 (_1!2175 (ite (or c!36447 c!36448) (tuple2!4331 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3976 thiss!1504)) (tuple2!4331 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3976 thiss!1504)))) (_2!2175 (ite (or c!36447 c!36448) (tuple2!4331 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3976 thiss!1504)) (tuple2!4331 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3976 thiss!1504))))))))

(assert (=> d!58597 (= lt!111918 (insertStrictlySorted!149 (toList!1644 (ite c!36447 call!20478 (ite c!36448 call!20480 call!20479))) (_1!2175 (ite (or c!36447 c!36448) (tuple2!4331 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3976 thiss!1504)) (tuple2!4331 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3976 thiss!1504)))) (_2!2175 (ite (or c!36447 c!36448) (tuple2!4331 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3976 thiss!1504)) (tuple2!4331 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3976 thiss!1504))))))))

(assert (=> d!58597 (= (+!592 (ite c!36447 call!20478 (ite c!36448 call!20480 call!20479)) (ite (or c!36447 c!36448) (tuple2!4331 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3976 thiss!1504)) (tuple2!4331 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3976 thiss!1504)))) lt!111916)))

(declare-fun b!219293 () Bool)

(declare-fun res!107493 () Bool)

(assert (=> b!219293 (=> (not res!107493) (not e!142660))))

(assert (=> b!219293 (= res!107493 (= (getValueByKey!259 (toList!1644 lt!111916) (_1!2175 (ite (or c!36447 c!36448) (tuple2!4331 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3976 thiss!1504)) (tuple2!4331 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3976 thiss!1504))))) (Some!264 (_2!2175 (ite (or c!36447 c!36448) (tuple2!4331 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3976 thiss!1504)) (tuple2!4331 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3976 thiss!1504)))))))))

(declare-fun b!219294 () Bool)

(assert (=> b!219294 (= e!142660 (contains!1481 (toList!1644 lt!111916) (ite (or c!36447 c!36448) (tuple2!4331 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3976 thiss!1504)) (tuple2!4331 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3976 thiss!1504)))))))

(assert (= (and d!58597 res!107494) b!219293))

(assert (= (and b!219293 res!107493) b!219294))

(declare-fun m!244895 () Bool)

(assert (=> d!58597 m!244895))

(declare-fun m!244897 () Bool)

(assert (=> d!58597 m!244897))

(declare-fun m!244899 () Bool)

(assert (=> d!58597 m!244899))

(declare-fun m!244901 () Bool)

(assert (=> d!58597 m!244901))

(declare-fun m!244903 () Bool)

(assert (=> b!219293 m!244903))

(declare-fun m!244905 () Bool)

(assert (=> b!219294 m!244905))

(assert (=> bm!20474 d!58597))

(declare-fun d!58599 () Bool)

(assert (=> d!58599 (= (apply!202 (+!592 lt!111816 (tuple2!4331 lt!111832 (minValue!3976 thiss!1504))) lt!111811) (apply!202 lt!111816 lt!111811))))

(declare-fun lt!111922 () Unit!6526)

(declare-fun choose!1098 (ListLongMap!3257 (_ BitVec 64) V!7315 (_ BitVec 64)) Unit!6526)

(assert (=> d!58599 (= lt!111922 (choose!1098 lt!111816 lt!111832 (minValue!3976 thiss!1504) lt!111811))))

(declare-fun e!142663 () Bool)

(assert (=> d!58599 e!142663))

(declare-fun res!107497 () Bool)

(assert (=> d!58599 (=> (not res!107497) (not e!142663))))

(assert (=> d!58599 (= res!107497 (contains!1479 lt!111816 lt!111811))))

(assert (=> d!58599 (= (addApplyDifferent!178 lt!111816 lt!111832 (minValue!3976 thiss!1504) lt!111811) lt!111922)))

(declare-fun b!219298 () Bool)

(assert (=> b!219298 (= e!142663 (not (= lt!111811 lt!111832)))))

(assert (= (and d!58599 res!107497) b!219298))

(declare-fun m!244907 () Bool)

(assert (=> d!58599 m!244907))

(assert (=> d!58599 m!244763))

(assert (=> d!58599 m!244745))

(declare-fun m!244909 () Bool)

(assert (=> d!58599 m!244909))

(assert (=> d!58599 m!244745))

(assert (=> d!58599 m!244747))

(assert (=> b!219057 d!58599))

(declare-fun d!58601 () Bool)

(assert (=> d!58601 (= (apply!202 lt!111816 lt!111811) (get!2676 (getValueByKey!259 (toList!1644 lt!111816) lt!111811)))))

(declare-fun bs!8441 () Bool)

(assert (= bs!8441 d!58601))

(declare-fun m!244911 () Bool)

(assert (=> bs!8441 m!244911))

(assert (=> bs!8441 m!244911))

(declare-fun m!244913 () Bool)

(assert (=> bs!8441 m!244913))

(assert (=> b!219057 d!58601))

(declare-fun d!58603 () Bool)

(declare-fun e!142664 () Bool)

(assert (=> d!58603 e!142664))

(declare-fun res!107499 () Bool)

(assert (=> d!58603 (=> (not res!107499) (not e!142664))))

(declare-fun lt!111923 () ListLongMap!3257)

(assert (=> d!58603 (= res!107499 (contains!1479 lt!111923 (_1!2175 (tuple2!4331 lt!111821 (zeroValue!3976 thiss!1504)))))))

(declare-fun lt!111925 () List!3257)

(assert (=> d!58603 (= lt!111923 (ListLongMap!3258 lt!111925))))

(declare-fun lt!111924 () Unit!6526)

(declare-fun lt!111926 () Unit!6526)

(assert (=> d!58603 (= lt!111924 lt!111926)))

(assert (=> d!58603 (= (getValueByKey!259 lt!111925 (_1!2175 (tuple2!4331 lt!111821 (zeroValue!3976 thiss!1504)))) (Some!264 (_2!2175 (tuple2!4331 lt!111821 (zeroValue!3976 thiss!1504)))))))

(assert (=> d!58603 (= lt!111926 (lemmaContainsTupThenGetReturnValue!147 lt!111925 (_1!2175 (tuple2!4331 lt!111821 (zeroValue!3976 thiss!1504))) (_2!2175 (tuple2!4331 lt!111821 (zeroValue!3976 thiss!1504)))))))

(assert (=> d!58603 (= lt!111925 (insertStrictlySorted!149 (toList!1644 lt!111831) (_1!2175 (tuple2!4331 lt!111821 (zeroValue!3976 thiss!1504))) (_2!2175 (tuple2!4331 lt!111821 (zeroValue!3976 thiss!1504)))))))

(assert (=> d!58603 (= (+!592 lt!111831 (tuple2!4331 lt!111821 (zeroValue!3976 thiss!1504))) lt!111923)))

(declare-fun b!219299 () Bool)

(declare-fun res!107498 () Bool)

(assert (=> b!219299 (=> (not res!107498) (not e!142664))))

(assert (=> b!219299 (= res!107498 (= (getValueByKey!259 (toList!1644 lt!111923) (_1!2175 (tuple2!4331 lt!111821 (zeroValue!3976 thiss!1504)))) (Some!264 (_2!2175 (tuple2!4331 lt!111821 (zeroValue!3976 thiss!1504))))))))

(declare-fun b!219300 () Bool)

(assert (=> b!219300 (= e!142664 (contains!1481 (toList!1644 lt!111923) (tuple2!4331 lt!111821 (zeroValue!3976 thiss!1504))))))

(assert (= (and d!58603 res!107499) b!219299))

(assert (= (and b!219299 res!107498) b!219300))

(declare-fun m!244915 () Bool)

(assert (=> d!58603 m!244915))

(declare-fun m!244917 () Bool)

(assert (=> d!58603 m!244917))

(declare-fun m!244919 () Bool)

(assert (=> d!58603 m!244919))

(declare-fun m!244921 () Bool)

(assert (=> d!58603 m!244921))

(declare-fun m!244923 () Bool)

(assert (=> b!219299 m!244923))

(declare-fun m!244925 () Bool)

(assert (=> b!219300 m!244925))

(assert (=> b!219057 d!58603))

(declare-fun d!58605 () Bool)

(declare-fun e!142665 () Bool)

(assert (=> d!58605 e!142665))

(declare-fun res!107501 () Bool)

(assert (=> d!58605 (=> (not res!107501) (not e!142665))))

(declare-fun lt!111927 () ListLongMap!3257)

(assert (=> d!58605 (= res!107501 (contains!1479 lt!111927 (_1!2175 (tuple2!4331 lt!111832 (minValue!3976 thiss!1504)))))))

(declare-fun lt!111929 () List!3257)

(assert (=> d!58605 (= lt!111927 (ListLongMap!3258 lt!111929))))

(declare-fun lt!111928 () Unit!6526)

(declare-fun lt!111930 () Unit!6526)

(assert (=> d!58605 (= lt!111928 lt!111930)))

(assert (=> d!58605 (= (getValueByKey!259 lt!111929 (_1!2175 (tuple2!4331 lt!111832 (minValue!3976 thiss!1504)))) (Some!264 (_2!2175 (tuple2!4331 lt!111832 (minValue!3976 thiss!1504)))))))

(assert (=> d!58605 (= lt!111930 (lemmaContainsTupThenGetReturnValue!147 lt!111929 (_1!2175 (tuple2!4331 lt!111832 (minValue!3976 thiss!1504))) (_2!2175 (tuple2!4331 lt!111832 (minValue!3976 thiss!1504)))))))

(assert (=> d!58605 (= lt!111929 (insertStrictlySorted!149 (toList!1644 lt!111816) (_1!2175 (tuple2!4331 lt!111832 (minValue!3976 thiss!1504))) (_2!2175 (tuple2!4331 lt!111832 (minValue!3976 thiss!1504)))))))

(assert (=> d!58605 (= (+!592 lt!111816 (tuple2!4331 lt!111832 (minValue!3976 thiss!1504))) lt!111927)))

(declare-fun b!219301 () Bool)

(declare-fun res!107500 () Bool)

(assert (=> b!219301 (=> (not res!107500) (not e!142665))))

(assert (=> b!219301 (= res!107500 (= (getValueByKey!259 (toList!1644 lt!111927) (_1!2175 (tuple2!4331 lt!111832 (minValue!3976 thiss!1504)))) (Some!264 (_2!2175 (tuple2!4331 lt!111832 (minValue!3976 thiss!1504))))))))

(declare-fun b!219302 () Bool)

(assert (=> b!219302 (= e!142665 (contains!1481 (toList!1644 lt!111927) (tuple2!4331 lt!111832 (minValue!3976 thiss!1504))))))

(assert (= (and d!58605 res!107501) b!219301))

(assert (= (and b!219301 res!107500) b!219302))

(declare-fun m!244927 () Bool)

(assert (=> d!58605 m!244927))

(declare-fun m!244929 () Bool)

(assert (=> d!58605 m!244929))

(declare-fun m!244931 () Bool)

(assert (=> d!58605 m!244931))

(declare-fun m!244933 () Bool)

(assert (=> d!58605 m!244933))

(declare-fun m!244935 () Bool)

(assert (=> b!219301 m!244935))

(declare-fun m!244937 () Bool)

(assert (=> b!219302 m!244937))

(assert (=> b!219057 d!58605))

(declare-fun d!58607 () Bool)

(declare-fun e!142666 () Bool)

(assert (=> d!58607 e!142666))

(declare-fun res!107502 () Bool)

(assert (=> d!58607 (=> res!107502 e!142666)))

(declare-fun lt!111934 () Bool)

(assert (=> d!58607 (= res!107502 (not lt!111934))))

(declare-fun lt!111932 () Bool)

(assert (=> d!58607 (= lt!111934 lt!111932)))

(declare-fun lt!111933 () Unit!6526)

(declare-fun e!142667 () Unit!6526)

(assert (=> d!58607 (= lt!111933 e!142667)))

(declare-fun c!36502 () Bool)

(assert (=> d!58607 (= c!36502 lt!111932)))

(assert (=> d!58607 (= lt!111932 (containsKey!251 (toList!1644 (+!592 lt!111820 (tuple2!4331 lt!111829 (zeroValue!3976 thiss!1504)))) lt!111822))))

(assert (=> d!58607 (= (contains!1479 (+!592 lt!111820 (tuple2!4331 lt!111829 (zeroValue!3976 thiss!1504))) lt!111822) lt!111934)))

(declare-fun b!219303 () Bool)

(declare-fun lt!111931 () Unit!6526)

(assert (=> b!219303 (= e!142667 lt!111931)))

(assert (=> b!219303 (= lt!111931 (lemmaContainsKeyImpliesGetValueByKeyDefined!200 (toList!1644 (+!592 lt!111820 (tuple2!4331 lt!111829 (zeroValue!3976 thiss!1504)))) lt!111822))))

(assert (=> b!219303 (isDefined!201 (getValueByKey!259 (toList!1644 (+!592 lt!111820 (tuple2!4331 lt!111829 (zeroValue!3976 thiss!1504)))) lt!111822))))

(declare-fun b!219304 () Bool)

(declare-fun Unit!6536 () Unit!6526)

(assert (=> b!219304 (= e!142667 Unit!6536)))

(declare-fun b!219305 () Bool)

(assert (=> b!219305 (= e!142666 (isDefined!201 (getValueByKey!259 (toList!1644 (+!592 lt!111820 (tuple2!4331 lt!111829 (zeroValue!3976 thiss!1504)))) lt!111822)))))

(assert (= (and d!58607 c!36502) b!219303))

(assert (= (and d!58607 (not c!36502)) b!219304))

(assert (= (and d!58607 (not res!107502)) b!219305))

(declare-fun m!244939 () Bool)

(assert (=> d!58607 m!244939))

(declare-fun m!244941 () Bool)

(assert (=> b!219303 m!244941))

(declare-fun m!244943 () Bool)

(assert (=> b!219303 m!244943))

(assert (=> b!219303 m!244943))

(declare-fun m!244945 () Bool)

(assert (=> b!219303 m!244945))

(assert (=> b!219305 m!244943))

(assert (=> b!219305 m!244943))

(assert (=> b!219305 m!244945))

(assert (=> b!219057 d!58607))

(declare-fun d!58609 () Bool)

(assert (=> d!58609 (= (apply!202 lt!111819 lt!111815) (get!2676 (getValueByKey!259 (toList!1644 lt!111819) lt!111815)))))

(declare-fun bs!8442 () Bool)

(assert (= bs!8442 d!58609))

(declare-fun m!244947 () Bool)

(assert (=> bs!8442 m!244947))

(assert (=> bs!8442 m!244947))

(declare-fun m!244949 () Bool)

(assert (=> bs!8442 m!244949))

(assert (=> b!219057 d!58609))

(declare-fun d!58611 () Bool)

(declare-fun e!142668 () Bool)

(assert (=> d!58611 e!142668))

(declare-fun res!107504 () Bool)

(assert (=> d!58611 (=> (not res!107504) (not e!142668))))

(declare-fun lt!111935 () ListLongMap!3257)

(assert (=> d!58611 (= res!107504 (contains!1479 lt!111935 (_1!2175 (tuple2!4331 lt!111829 (zeroValue!3976 thiss!1504)))))))

(declare-fun lt!111937 () List!3257)

(assert (=> d!58611 (= lt!111935 (ListLongMap!3258 lt!111937))))

(declare-fun lt!111936 () Unit!6526)

(declare-fun lt!111938 () Unit!6526)

(assert (=> d!58611 (= lt!111936 lt!111938)))

(assert (=> d!58611 (= (getValueByKey!259 lt!111937 (_1!2175 (tuple2!4331 lt!111829 (zeroValue!3976 thiss!1504)))) (Some!264 (_2!2175 (tuple2!4331 lt!111829 (zeroValue!3976 thiss!1504)))))))

(assert (=> d!58611 (= lt!111938 (lemmaContainsTupThenGetReturnValue!147 lt!111937 (_1!2175 (tuple2!4331 lt!111829 (zeroValue!3976 thiss!1504))) (_2!2175 (tuple2!4331 lt!111829 (zeroValue!3976 thiss!1504)))))))

(assert (=> d!58611 (= lt!111937 (insertStrictlySorted!149 (toList!1644 lt!111820) (_1!2175 (tuple2!4331 lt!111829 (zeroValue!3976 thiss!1504))) (_2!2175 (tuple2!4331 lt!111829 (zeroValue!3976 thiss!1504)))))))

(assert (=> d!58611 (= (+!592 lt!111820 (tuple2!4331 lt!111829 (zeroValue!3976 thiss!1504))) lt!111935)))

(declare-fun b!219306 () Bool)

(declare-fun res!107503 () Bool)

(assert (=> b!219306 (=> (not res!107503) (not e!142668))))

(assert (=> b!219306 (= res!107503 (= (getValueByKey!259 (toList!1644 lt!111935) (_1!2175 (tuple2!4331 lt!111829 (zeroValue!3976 thiss!1504)))) (Some!264 (_2!2175 (tuple2!4331 lt!111829 (zeroValue!3976 thiss!1504))))))))

(declare-fun b!219307 () Bool)

(assert (=> b!219307 (= e!142668 (contains!1481 (toList!1644 lt!111935) (tuple2!4331 lt!111829 (zeroValue!3976 thiss!1504))))))

(assert (= (and d!58611 res!107504) b!219306))

(assert (= (and b!219306 res!107503) b!219307))

(declare-fun m!244951 () Bool)

(assert (=> d!58611 m!244951))

(declare-fun m!244953 () Bool)

(assert (=> d!58611 m!244953))

(declare-fun m!244955 () Bool)

(assert (=> d!58611 m!244955))

(declare-fun m!244957 () Bool)

(assert (=> d!58611 m!244957))

(declare-fun m!244959 () Bool)

(assert (=> b!219306 m!244959))

(declare-fun m!244961 () Bool)

(assert (=> b!219307 m!244961))

(assert (=> b!219057 d!58611))

(declare-fun d!58613 () Bool)

(assert (=> d!58613 (= (apply!202 (+!592 lt!111831 (tuple2!4331 lt!111821 (zeroValue!3976 thiss!1504))) lt!111824) (get!2676 (getValueByKey!259 (toList!1644 (+!592 lt!111831 (tuple2!4331 lt!111821 (zeroValue!3976 thiss!1504)))) lt!111824)))))

(declare-fun bs!8443 () Bool)

(assert (= bs!8443 d!58613))

(declare-fun m!244963 () Bool)

(assert (=> bs!8443 m!244963))

(assert (=> bs!8443 m!244963))

(declare-fun m!244965 () Bool)

(assert (=> bs!8443 m!244965))

(assert (=> b!219057 d!58613))

(declare-fun d!58615 () Bool)

(assert (=> d!58615 (contains!1479 (+!592 lt!111820 (tuple2!4331 lt!111829 (zeroValue!3976 thiss!1504))) lt!111822)))

(declare-fun lt!111941 () Unit!6526)

(declare-fun choose!1099 (ListLongMap!3257 (_ BitVec 64) V!7315 (_ BitVec 64)) Unit!6526)

(assert (=> d!58615 (= lt!111941 (choose!1099 lt!111820 lt!111829 (zeroValue!3976 thiss!1504) lt!111822))))

(assert (=> d!58615 (contains!1479 lt!111820 lt!111822)))

(assert (=> d!58615 (= (addStillContains!178 lt!111820 lt!111829 (zeroValue!3976 thiss!1504) lt!111822) lt!111941)))

(declare-fun bs!8444 () Bool)

(assert (= bs!8444 d!58615))

(assert (=> bs!8444 m!244751))

(assert (=> bs!8444 m!244751))

(assert (=> bs!8444 m!244753))

(declare-fun m!244967 () Bool)

(assert (=> bs!8444 m!244967))

(declare-fun m!244969 () Bool)

(assert (=> bs!8444 m!244969))

(assert (=> b!219057 d!58615))

(declare-fun d!58617 () Bool)

(declare-fun e!142669 () Bool)

(assert (=> d!58617 e!142669))

(declare-fun res!107506 () Bool)

(assert (=> d!58617 (=> (not res!107506) (not e!142669))))

(declare-fun lt!111942 () ListLongMap!3257)

(assert (=> d!58617 (= res!107506 (contains!1479 lt!111942 (_1!2175 (tuple2!4331 lt!111830 (minValue!3976 thiss!1504)))))))

(declare-fun lt!111944 () List!3257)

(assert (=> d!58617 (= lt!111942 (ListLongMap!3258 lt!111944))))

(declare-fun lt!111943 () Unit!6526)

(declare-fun lt!111945 () Unit!6526)

(assert (=> d!58617 (= lt!111943 lt!111945)))

(assert (=> d!58617 (= (getValueByKey!259 lt!111944 (_1!2175 (tuple2!4331 lt!111830 (minValue!3976 thiss!1504)))) (Some!264 (_2!2175 (tuple2!4331 lt!111830 (minValue!3976 thiss!1504)))))))

(assert (=> d!58617 (= lt!111945 (lemmaContainsTupThenGetReturnValue!147 lt!111944 (_1!2175 (tuple2!4331 lt!111830 (minValue!3976 thiss!1504))) (_2!2175 (tuple2!4331 lt!111830 (minValue!3976 thiss!1504)))))))

(assert (=> d!58617 (= lt!111944 (insertStrictlySorted!149 (toList!1644 lt!111819) (_1!2175 (tuple2!4331 lt!111830 (minValue!3976 thiss!1504))) (_2!2175 (tuple2!4331 lt!111830 (minValue!3976 thiss!1504)))))))

(assert (=> d!58617 (= (+!592 lt!111819 (tuple2!4331 lt!111830 (minValue!3976 thiss!1504))) lt!111942)))

(declare-fun b!219309 () Bool)

(declare-fun res!107505 () Bool)

(assert (=> b!219309 (=> (not res!107505) (not e!142669))))

(assert (=> b!219309 (= res!107505 (= (getValueByKey!259 (toList!1644 lt!111942) (_1!2175 (tuple2!4331 lt!111830 (minValue!3976 thiss!1504)))) (Some!264 (_2!2175 (tuple2!4331 lt!111830 (minValue!3976 thiss!1504))))))))

(declare-fun b!219310 () Bool)

(assert (=> b!219310 (= e!142669 (contains!1481 (toList!1644 lt!111942) (tuple2!4331 lt!111830 (minValue!3976 thiss!1504))))))

(assert (= (and d!58617 res!107506) b!219309))

(assert (= (and b!219309 res!107505) b!219310))

(declare-fun m!244971 () Bool)

(assert (=> d!58617 m!244971))

(declare-fun m!244973 () Bool)

(assert (=> d!58617 m!244973))

(declare-fun m!244975 () Bool)

(assert (=> d!58617 m!244975))

(declare-fun m!244977 () Bool)

(assert (=> d!58617 m!244977))

(declare-fun m!244979 () Bool)

(assert (=> b!219309 m!244979))

(declare-fun m!244981 () Bool)

(assert (=> b!219310 m!244981))

(assert (=> b!219057 d!58617))

(declare-fun d!58619 () Bool)

(assert (=> d!58619 (= (apply!202 (+!592 lt!111819 (tuple2!4331 lt!111830 (minValue!3976 thiss!1504))) lt!111815) (apply!202 lt!111819 lt!111815))))

(declare-fun lt!111946 () Unit!6526)

(assert (=> d!58619 (= lt!111946 (choose!1098 lt!111819 lt!111830 (minValue!3976 thiss!1504) lt!111815))))

(declare-fun e!142670 () Bool)

(assert (=> d!58619 e!142670))

(declare-fun res!107507 () Bool)

(assert (=> d!58619 (=> (not res!107507) (not e!142670))))

(assert (=> d!58619 (= res!107507 (contains!1479 lt!111819 lt!111815))))

(assert (=> d!58619 (= (addApplyDifferent!178 lt!111819 lt!111830 (minValue!3976 thiss!1504) lt!111815) lt!111946)))

(declare-fun b!219311 () Bool)

(assert (=> b!219311 (= e!142670 (not (= lt!111815 lt!111830)))))

(assert (= (and d!58619 res!107507) b!219311))

(declare-fun m!244983 () Bool)

(assert (=> d!58619 m!244983))

(assert (=> d!58619 m!244761))

(assert (=> d!58619 m!244737))

(declare-fun m!244985 () Bool)

(assert (=> d!58619 m!244985))

(assert (=> d!58619 m!244737))

(assert (=> d!58619 m!244749))

(assert (=> b!219057 d!58619))

(declare-fun d!58621 () Bool)

(assert (=> d!58621 (= (apply!202 lt!111831 lt!111824) (get!2676 (getValueByKey!259 (toList!1644 lt!111831) lt!111824)))))

(declare-fun bs!8445 () Bool)

(assert (= bs!8445 d!58621))

(declare-fun m!244987 () Bool)

(assert (=> bs!8445 m!244987))

(assert (=> bs!8445 m!244987))

(declare-fun m!244989 () Bool)

(assert (=> bs!8445 m!244989))

(assert (=> b!219057 d!58621))

(declare-fun d!58623 () Bool)

(assert (=> d!58623 (= (apply!202 (+!592 lt!111831 (tuple2!4331 lt!111821 (zeroValue!3976 thiss!1504))) lt!111824) (apply!202 lt!111831 lt!111824))))

(declare-fun lt!111947 () Unit!6526)

(assert (=> d!58623 (= lt!111947 (choose!1098 lt!111831 lt!111821 (zeroValue!3976 thiss!1504) lt!111824))))

(declare-fun e!142671 () Bool)

(assert (=> d!58623 e!142671))

(declare-fun res!107508 () Bool)

(assert (=> d!58623 (=> (not res!107508) (not e!142671))))

(assert (=> d!58623 (= res!107508 (contains!1479 lt!111831 lt!111824))))

(assert (=> d!58623 (= (addApplyDifferent!178 lt!111831 lt!111821 (zeroValue!3976 thiss!1504) lt!111824) lt!111947)))

(declare-fun b!219312 () Bool)

(assert (=> b!219312 (= e!142671 (not (= lt!111824 lt!111821)))))

(assert (= (and d!58623 res!107508) b!219312))

(declare-fun m!244991 () Bool)

(assert (=> d!58623 m!244991))

(assert (=> d!58623 m!244735))

(assert (=> d!58623 m!244741))

(declare-fun m!244993 () Bool)

(assert (=> d!58623 m!244993))

(assert (=> d!58623 m!244741))

(assert (=> d!58623 m!244743))

(assert (=> b!219057 d!58623))

(declare-fun d!58625 () Bool)

(assert (=> d!58625 (= (apply!202 (+!592 lt!111819 (tuple2!4331 lt!111830 (minValue!3976 thiss!1504))) lt!111815) (get!2676 (getValueByKey!259 (toList!1644 (+!592 lt!111819 (tuple2!4331 lt!111830 (minValue!3976 thiss!1504)))) lt!111815)))))

(declare-fun bs!8446 () Bool)

(assert (= bs!8446 d!58625))

(declare-fun m!244995 () Bool)

(assert (=> bs!8446 m!244995))

(assert (=> bs!8446 m!244995))

(declare-fun m!244997 () Bool)

(assert (=> bs!8446 m!244997))

(assert (=> b!219057 d!58625))

(declare-fun d!58627 () Bool)

(assert (=> d!58627 (= (apply!202 (+!592 lt!111816 (tuple2!4331 lt!111832 (minValue!3976 thiss!1504))) lt!111811) (get!2676 (getValueByKey!259 (toList!1644 (+!592 lt!111816 (tuple2!4331 lt!111832 (minValue!3976 thiss!1504)))) lt!111811)))))

(declare-fun bs!8447 () Bool)

(assert (= bs!8447 d!58627))

(declare-fun m!244999 () Bool)

(assert (=> bs!8447 m!244999))

(assert (=> bs!8447 m!244999))

(declare-fun m!245001 () Bool)

(assert (=> bs!8447 m!245001))

(assert (=> b!219057 d!58627))

(assert (=> b!219057 d!58575))

(assert (=> b!219074 d!58561))

(declare-fun bm!20500 () Bool)

(declare-fun call!20503 () (_ BitVec 32))

(assert (=> bm!20500 (= call!20503 (arrayCountValidKeys!0 (_keys!6185 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!5424 (_keys!6185 thiss!1504))))))

(declare-fun b!219321 () Bool)

(declare-fun e!142676 () (_ BitVec 32))

(assert (=> b!219321 (= e!142676 call!20503)))

(declare-fun b!219322 () Bool)

(declare-fun e!142677 () (_ BitVec 32))

(assert (=> b!219322 (= e!142677 e!142676)))

(declare-fun c!36507 () Bool)

(assert (=> b!219322 (= c!36507 (validKeyInArray!0 (select (arr!5092 (_keys!6185 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!219323 () Bool)

(assert (=> b!219323 (= e!142676 (bvadd #b00000000000000000000000000000001 call!20503))))

(declare-fun d!58629 () Bool)

(declare-fun lt!111950 () (_ BitVec 32))

(assert (=> d!58629 (and (bvsge lt!111950 #b00000000000000000000000000000000) (bvsle lt!111950 (bvsub (size!5424 (_keys!6185 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!58629 (= lt!111950 e!142677)))

(declare-fun c!36508 () Bool)

(assert (=> d!58629 (= c!36508 (bvsge #b00000000000000000000000000000000 (size!5424 (_keys!6185 thiss!1504))))))

(assert (=> d!58629 (and (bvsle #b00000000000000000000000000000000 (size!5424 (_keys!6185 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!5424 (_keys!6185 thiss!1504)) (size!5424 (_keys!6185 thiss!1504))))))

(assert (=> d!58629 (= (arrayCountValidKeys!0 (_keys!6185 thiss!1504) #b00000000000000000000000000000000 (size!5424 (_keys!6185 thiss!1504))) lt!111950)))

(declare-fun b!219324 () Bool)

(assert (=> b!219324 (= e!142677 #b00000000000000000000000000000000)))

(assert (= (and d!58629 c!36508) b!219324))

(assert (= (and d!58629 (not c!36508)) b!219322))

(assert (= (and b!219322 c!36507) b!219323))

(assert (= (and b!219322 (not c!36507)) b!219321))

(assert (= (or b!219323 b!219321) bm!20500))

(declare-fun m!245003 () Bool)

(assert (=> bm!20500 m!245003))

(assert (=> b!219322 m!244711))

(assert (=> b!219322 m!244711))

(assert (=> b!219322 m!244723))

(assert (=> b!219085 d!58629))

(declare-fun d!58631 () Bool)

(assert (=> d!58631 (= (inRange!0 (index!5391 lt!111837) (mask!9918 thiss!1504)) (and (bvsge (index!5391 lt!111837) #b00000000000000000000000000000000) (bvslt (index!5391 lt!111837) (bvadd (mask!9918 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!219092 d!58631))

(declare-fun b!219333 () Bool)

(declare-fun res!107518 () Bool)

(declare-fun e!142680 () Bool)

(assert (=> b!219333 (=> (not res!107518) (not e!142680))))

(assert (=> b!219333 (= res!107518 (and (= (size!5423 (_values!4118 thiss!1504)) (bvadd (mask!9918 thiss!1504) #b00000000000000000000000000000001)) (= (size!5424 (_keys!6185 thiss!1504)) (size!5423 (_values!4118 thiss!1504))) (bvsge (_size!1531 thiss!1504) #b00000000000000000000000000000000) (bvsle (_size!1531 thiss!1504) (bvadd (mask!9918 thiss!1504) #b00000000000000000000000000000001))))))

(declare-fun b!219335 () Bool)

(declare-fun res!107520 () Bool)

(assert (=> b!219335 (=> (not res!107520) (not e!142680))))

(declare-fun size!5427 (LongMapFixedSize!2964) (_ BitVec 32))

(assert (=> b!219335 (= res!107520 (= (size!5427 thiss!1504) (bvadd (_size!1531 thiss!1504) (bvsdiv (bvadd (extraKeys!3872 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!219336 () Bool)

(assert (=> b!219336 (= e!142680 (and (bvsge (extraKeys!3872 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3872 thiss!1504) #b00000000000000000000000000000011) (bvsge (_vacant!1531 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun b!219334 () Bool)

(declare-fun res!107517 () Bool)

(assert (=> b!219334 (=> (not res!107517) (not e!142680))))

(assert (=> b!219334 (= res!107517 (bvsge (size!5427 thiss!1504) (_size!1531 thiss!1504)))))

(declare-fun d!58633 () Bool)

(declare-fun res!107519 () Bool)

(assert (=> d!58633 (=> (not res!107519) (not e!142680))))

(assert (=> d!58633 (= res!107519 (validMask!0 (mask!9918 thiss!1504)))))

(assert (=> d!58633 (= (simpleValid!224 thiss!1504) e!142680)))

(assert (= (and d!58633 res!107519) b!219333))

(assert (= (and b!219333 res!107518) b!219334))

(assert (= (and b!219334 res!107517) b!219335))

(assert (= (and b!219335 res!107520) b!219336))

(declare-fun m!245005 () Bool)

(assert (=> b!219335 m!245005))

(assert (=> b!219334 m!245005))

(assert (=> d!58633 m!244721))

(assert (=> d!58545 d!58633))

(declare-fun d!58635 () Bool)

(assert (=> d!58635 (= (apply!202 lt!111828 #b0000000000000000000000000000000000000000000000000000000000000000) (get!2676 (getValueByKey!259 (toList!1644 lt!111828) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!8448 () Bool)

(assert (= bs!8448 d!58635))

(declare-fun m!245007 () Bool)

(assert (=> bs!8448 m!245007))

(assert (=> bs!8448 m!245007))

(declare-fun m!245009 () Bool)

(assert (=> bs!8448 m!245009))

(assert (=> b!219072 d!58635))

(declare-fun d!58637 () Bool)

(declare-fun res!107525 () Bool)

(declare-fun e!142689 () Bool)

(assert (=> d!58637 (=> res!107525 e!142689)))

(assert (=> d!58637 (= res!107525 (bvsge #b00000000000000000000000000000000 (size!5424 (_keys!6185 thiss!1504))))))

(assert (=> d!58637 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6185 thiss!1504) (mask!9918 thiss!1504)) e!142689)))

(declare-fun b!219345 () Bool)

(declare-fun e!142687 () Bool)

(declare-fun call!20506 () Bool)

(assert (=> b!219345 (= e!142687 call!20506)))

(declare-fun b!219346 () Bool)

(declare-fun e!142688 () Bool)

(assert (=> b!219346 (= e!142688 call!20506)))

(declare-fun bm!20503 () Bool)

(assert (=> bm!20503 (= call!20506 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!6185 thiss!1504) (mask!9918 thiss!1504)))))

(declare-fun b!219347 () Bool)

(assert (=> b!219347 (= e!142687 e!142688)))

(declare-fun lt!111957 () (_ BitVec 64))

(assert (=> b!219347 (= lt!111957 (select (arr!5092 (_keys!6185 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!111959 () Unit!6526)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!10744 (_ BitVec 64) (_ BitVec 32)) Unit!6526)

(assert (=> b!219347 (= lt!111959 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!6185 thiss!1504) lt!111957 #b00000000000000000000000000000000))))

(assert (=> b!219347 (arrayContainsKey!0 (_keys!6185 thiss!1504) lt!111957 #b00000000000000000000000000000000)))

(declare-fun lt!111958 () Unit!6526)

(assert (=> b!219347 (= lt!111958 lt!111959)))

(declare-fun res!107526 () Bool)

(assert (=> b!219347 (= res!107526 (= (seekEntryOrOpen!0 (select (arr!5092 (_keys!6185 thiss!1504)) #b00000000000000000000000000000000) (_keys!6185 thiss!1504) (mask!9918 thiss!1504)) (Found!805 #b00000000000000000000000000000000)))))

(assert (=> b!219347 (=> (not res!107526) (not e!142688))))

(declare-fun b!219348 () Bool)

(assert (=> b!219348 (= e!142689 e!142687)))

(declare-fun c!36511 () Bool)

(assert (=> b!219348 (= c!36511 (validKeyInArray!0 (select (arr!5092 (_keys!6185 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!58637 (not res!107525)) b!219348))

(assert (= (and b!219348 c!36511) b!219347))

(assert (= (and b!219348 (not c!36511)) b!219345))

(assert (= (and b!219347 res!107526) b!219346))

(assert (= (or b!219346 b!219345) bm!20503))

(declare-fun m!245011 () Bool)

(assert (=> bm!20503 m!245011))

(assert (=> b!219347 m!244711))

(declare-fun m!245013 () Bool)

(assert (=> b!219347 m!245013))

(declare-fun m!245015 () Bool)

(assert (=> b!219347 m!245015))

(assert (=> b!219347 m!244711))

(declare-fun m!245017 () Bool)

(assert (=> b!219347 m!245017))

(assert (=> b!219348 m!244711))

(assert (=> b!219348 m!244711))

(assert (=> b!219348 m!244723))

(assert (=> b!219086 d!58637))

(declare-fun d!58639 () Bool)

(assert (=> d!58639 (= (apply!202 lt!111828 (select (arr!5092 (_keys!6185 thiss!1504)) #b00000000000000000000000000000000)) (get!2676 (getValueByKey!259 (toList!1644 lt!111828) (select (arr!5092 (_keys!6185 thiss!1504)) #b00000000000000000000000000000000))))))

(declare-fun bs!8449 () Bool)

(assert (= bs!8449 d!58639))

(assert (=> bs!8449 m!244711))

(assert (=> bs!8449 m!244875))

(assert (=> bs!8449 m!244875))

(declare-fun m!245019 () Bool)

(assert (=> bs!8449 m!245019))

(assert (=> b!219068 d!58639))

(declare-fun d!58641 () Bool)

(declare-fun c!36514 () Bool)

(assert (=> d!58641 (= c!36514 ((_ is ValueCellFull!2532) (select (arr!5091 (_values!4118 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun e!142692 () V!7315)

(assert (=> d!58641 (= (get!2675 (select (arr!5091 (_values!4118 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!540 (defaultEntry!4135 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)) e!142692)))

(declare-fun b!219353 () Bool)

(declare-fun get!2677 (ValueCell!2532 V!7315) V!7315)

(assert (=> b!219353 (= e!142692 (get!2677 (select (arr!5091 (_values!4118 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!540 (defaultEntry!4135 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!219354 () Bool)

(declare-fun get!2678 (ValueCell!2532 V!7315) V!7315)

(assert (=> b!219354 (= e!142692 (get!2678 (select (arr!5091 (_values!4118 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!540 (defaultEntry!4135 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!58641 c!36514) b!219353))

(assert (= (and d!58641 (not c!36514)) b!219354))

(assert (=> b!219353 m!244715))

(assert (=> b!219353 m!244709))

(declare-fun m!245021 () Bool)

(assert (=> b!219353 m!245021))

(assert (=> b!219354 m!244715))

(assert (=> b!219354 m!244709))

(declare-fun m!245023 () Bool)

(assert (=> b!219354 m!245023))

(assert (=> b!219068 d!58641))

(assert (=> d!58543 d!58567))

(declare-fun d!58643 () Bool)

(declare-fun e!142693 () Bool)

(assert (=> d!58643 e!142693))

(declare-fun res!107527 () Bool)

(assert (=> d!58643 (=> res!107527 e!142693)))

(declare-fun lt!111963 () Bool)

(assert (=> d!58643 (= res!107527 (not lt!111963))))

(declare-fun lt!111961 () Bool)

(assert (=> d!58643 (= lt!111963 lt!111961)))

(declare-fun lt!111962 () Unit!6526)

(declare-fun e!142694 () Unit!6526)

(assert (=> d!58643 (= lt!111962 e!142694)))

(declare-fun c!36515 () Bool)

(assert (=> d!58643 (= c!36515 lt!111961)))

(assert (=> d!58643 (= lt!111961 (containsKey!251 (toList!1644 lt!111828) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!58643 (= (contains!1479 lt!111828 #b0000000000000000000000000000000000000000000000000000000000000000) lt!111963)))

(declare-fun b!219355 () Bool)

(declare-fun lt!111960 () Unit!6526)

(assert (=> b!219355 (= e!142694 lt!111960)))

(assert (=> b!219355 (= lt!111960 (lemmaContainsKeyImpliesGetValueByKeyDefined!200 (toList!1644 lt!111828) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!219355 (isDefined!201 (getValueByKey!259 (toList!1644 lt!111828) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!219356 () Bool)

(declare-fun Unit!6537 () Unit!6526)

(assert (=> b!219356 (= e!142694 Unit!6537)))

(declare-fun b!219357 () Bool)

(assert (=> b!219357 (= e!142693 (isDefined!201 (getValueByKey!259 (toList!1644 lt!111828) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!58643 c!36515) b!219355))

(assert (= (and d!58643 (not c!36515)) b!219356))

(assert (= (and d!58643 (not res!107527)) b!219357))

(declare-fun m!245025 () Bool)

(assert (=> d!58643 m!245025))

(declare-fun m!245027 () Bool)

(assert (=> b!219355 m!245027))

(assert (=> b!219355 m!245007))

(assert (=> b!219355 m!245007))

(declare-fun m!245029 () Bool)

(assert (=> b!219355 m!245029))

(assert (=> b!219357 m!245007))

(assert (=> b!219357 m!245007))

(assert (=> b!219357 m!245029))

(assert (=> bm!20478 d!58643))

(declare-fun b!219370 () Bool)

(declare-fun e!142701 () SeekEntryResult!805)

(assert (=> b!219370 (= e!142701 (Found!805 (index!5392 lt!111851)))))

(declare-fun d!58645 () Bool)

(declare-fun lt!111969 () SeekEntryResult!805)

(assert (=> d!58645 (and (or ((_ is Undefined!805) lt!111969) (not ((_ is Found!805) lt!111969)) (and (bvsge (index!5391 lt!111969) #b00000000000000000000000000000000) (bvslt (index!5391 lt!111969) (size!5424 (_keys!6185 thiss!1504))))) (or ((_ is Undefined!805) lt!111969) ((_ is Found!805) lt!111969) (not ((_ is MissingVacant!805) lt!111969)) (not (= (index!5393 lt!111969) (index!5392 lt!111851))) (and (bvsge (index!5393 lt!111969) #b00000000000000000000000000000000) (bvslt (index!5393 lt!111969) (size!5424 (_keys!6185 thiss!1504))))) (or ((_ is Undefined!805) lt!111969) (ite ((_ is Found!805) lt!111969) (= (select (arr!5092 (_keys!6185 thiss!1504)) (index!5391 lt!111969)) key!932) (and ((_ is MissingVacant!805) lt!111969) (= (index!5393 lt!111969) (index!5392 lt!111851)) (= (select (arr!5092 (_keys!6185 thiss!1504)) (index!5393 lt!111969)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!142702 () SeekEntryResult!805)

(assert (=> d!58645 (= lt!111969 e!142702)))

(declare-fun c!36523 () Bool)

(assert (=> d!58645 (= c!36523 (bvsge (x!22887 lt!111851) #b01111111111111111111111111111110))))

(declare-fun lt!111968 () (_ BitVec 64))

(assert (=> d!58645 (= lt!111968 (select (arr!5092 (_keys!6185 thiss!1504)) (index!5392 lt!111851)))))

(assert (=> d!58645 (validMask!0 (mask!9918 thiss!1504))))

(assert (=> d!58645 (= (seekKeyOrZeroReturnVacant!0 (x!22887 lt!111851) (index!5392 lt!111851) (index!5392 lt!111851) key!932 (_keys!6185 thiss!1504) (mask!9918 thiss!1504)) lt!111969)))

(declare-fun b!219371 () Bool)

(declare-fun e!142703 () SeekEntryResult!805)

(assert (=> b!219371 (= e!142703 (MissingVacant!805 (index!5392 lt!111851)))))

(declare-fun b!219372 () Bool)

(declare-fun c!36524 () Bool)

(assert (=> b!219372 (= c!36524 (= lt!111968 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!219372 (= e!142701 e!142703)))

(declare-fun b!219373 () Bool)

(assert (=> b!219373 (= e!142703 (seekKeyOrZeroReturnVacant!0 (bvadd (x!22887 lt!111851) #b00000000000000000000000000000001) (nextIndex!0 (index!5392 lt!111851) (x!22887 lt!111851) (mask!9918 thiss!1504)) (index!5392 lt!111851) key!932 (_keys!6185 thiss!1504) (mask!9918 thiss!1504)))))

(declare-fun b!219374 () Bool)

(assert (=> b!219374 (= e!142702 Undefined!805)))

(declare-fun b!219375 () Bool)

(assert (=> b!219375 (= e!142702 e!142701)))

(declare-fun c!36522 () Bool)

(assert (=> b!219375 (= c!36522 (= lt!111968 key!932))))

(assert (= (and d!58645 c!36523) b!219374))

(assert (= (and d!58645 (not c!36523)) b!219375))

(assert (= (and b!219375 c!36522) b!219370))

(assert (= (and b!219375 (not c!36522)) b!219372))

(assert (= (and b!219372 c!36524) b!219371))

(assert (= (and b!219372 (not c!36524)) b!219373))

(declare-fun m!245031 () Bool)

(assert (=> d!58645 m!245031))

(declare-fun m!245033 () Bool)

(assert (=> d!58645 m!245033))

(assert (=> d!58645 m!244793))

(assert (=> d!58645 m!244721))

(declare-fun m!245035 () Bool)

(assert (=> b!219373 m!245035))

(assert (=> b!219373 m!245035))

(declare-fun m!245037 () Bool)

(assert (=> b!219373 m!245037))

(assert (=> b!219137 d!58645))

(declare-fun mapNonEmpty!9799 () Bool)

(declare-fun mapRes!9799 () Bool)

(declare-fun tp!20815 () Bool)

(declare-fun e!142704 () Bool)

(assert (=> mapNonEmpty!9799 (= mapRes!9799 (and tp!20815 e!142704))))

(declare-fun mapRest!9799 () (Array (_ BitVec 32) ValueCell!2532))

(declare-fun mapKey!9799 () (_ BitVec 32))

(declare-fun mapValue!9799 () ValueCell!2532)

(assert (=> mapNonEmpty!9799 (= mapRest!9798 (store mapRest!9799 mapKey!9799 mapValue!9799))))

(declare-fun b!219377 () Bool)

(declare-fun e!142705 () Bool)

(assert (=> b!219377 (= e!142705 tp_is_empty!5751)))

(declare-fun mapIsEmpty!9799 () Bool)

(assert (=> mapIsEmpty!9799 mapRes!9799))

(declare-fun condMapEmpty!9799 () Bool)

(declare-fun mapDefault!9799 () ValueCell!2532)

(assert (=> mapNonEmpty!9798 (= condMapEmpty!9799 (= mapRest!9798 ((as const (Array (_ BitVec 32) ValueCell!2532)) mapDefault!9799)))))

(assert (=> mapNonEmpty!9798 (= tp!20814 (and e!142705 mapRes!9799))))

(declare-fun b!219376 () Bool)

(assert (=> b!219376 (= e!142704 tp_is_empty!5751)))

(assert (= (and mapNonEmpty!9798 condMapEmpty!9799) mapIsEmpty!9799))

(assert (= (and mapNonEmpty!9798 (not condMapEmpty!9799)) mapNonEmpty!9799))

(assert (= (and mapNonEmpty!9799 ((_ is ValueCellFull!2532) mapValue!9799)) b!219376))

(assert (= (and mapNonEmpty!9798 ((_ is ValueCellFull!2532) mapDefault!9799)) b!219377))

(declare-fun m!245039 () Bool)

(assert (=> mapNonEmpty!9799 m!245039))

(declare-fun b_lambda!7869 () Bool)

(assert (= b_lambda!7865 (or (and b!218947 b_free!5889) b_lambda!7869)))

(declare-fun b_lambda!7871 () Bool)

(assert (= b_lambda!7867 (or (and b!218947 b_free!5889) b_lambda!7871)))

(check-sat (not d!58613) (not b_lambda!7871) (not d!58639) (not d!58635) (not b!219277) (not b!219263) (not b!219276) (not d!58589) (not b!219307) (not d!58597) (not b!219300) (not b!219353) b_and!12807 (not bm!20490) (not d!58619) (not b!219219) (not b!219293) (not d!58627) (not d!58643) (not d!58633) (not b_lambda!7869) (not b!219303) (not b!219289) (not b!219373) (not b!219292) (not d!58611) (not b!219223) (not b!219335) (not b!219155) (not b!219309) (not d!58605) (not b!219265) (not b!219322) (not b!219221) (not d!58587) (not b!219186) (not b!219268) (not b!219347) (not b!219214) (not b!219271) (not b!219301) (not d!58573) (not d!58601) (not b!219310) (not d!58625) (not d!58621) (not d!58623) (not bm!20491) (not bm!20503) (not d!58593) (not d!58591) (not d!58565) (not b!219348) (not d!58645) (not b!219248) (not b!219218) (not b!219269) (not b!219294) (not b_lambda!7863) (not d!58577) (not b!219354) (not b!219305) (not b!219334) (not d!58615) (not bm!20494) (not b!219306) (not b!219299) (not d!58617) (not b!219302) (not d!58581) (not d!58603) (not bm!20497) (not b!219290) (not d!58599) (not bm!20500) (not b!219357) (not b_next!5889) (not b!219181) (not d!58585) (not d!58575) (not b!219222) (not b!219215) (not mapNonEmpty!9799) (not b!219355) (not d!58609) (not b!219213) (not b!219261) (not d!58607) tp_is_empty!5751)
(check-sat b_and!12807 (not b_next!5889))
