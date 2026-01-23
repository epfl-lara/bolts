; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187706 () Bool)

(assert start!187706)

(declare-fun b!1873037 () Bool)

(declare-fun b_free!52019 () Bool)

(declare-fun b_next!52723 () Bool)

(assert (=> b!1873037 (= b_free!52019 (not b_next!52723))))

(declare-fun tp!532682 () Bool)

(declare-fun b_and!144305 () Bool)

(assert (=> b!1873037 (= tp!532682 b_and!144305)))

(declare-fun b!1873032 () Bool)

(declare-fun e!1194961 () Bool)

(declare-datatypes ((array!6641 0))(
  ( (array!6642 (arr!2950 (Array (_ BitVec 32) (_ BitVec 64))) (size!16492 (_ BitVec 32))) )
))
(declare-datatypes ((V!4002 0))(
  ( (V!4003 (val!6030 Int)) )
))
(declare-datatypes ((array!6643 0))(
  ( (array!6644 (arr!2951 (Array (_ BitVec 32) V!4002)) (size!16493 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3852 0))(
  ( (LongMapFixedSize!3853 (defaultEntry!2291 Int) (mask!5722 (_ BitVec 32)) (extraKeys!2174 (_ BitVec 32)) (zeroValue!2184 V!4002) (minValue!2184 V!4002) (_size!3904 (_ BitVec 32)) (_keys!2223 array!6641) (_values!2206 array!6643) (_vacant!1987 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7531 0))(
  ( (Cell!7532 (v!26153 LongMapFixedSize!3852)) )
))
(declare-datatypes ((MutLongMap!1926 0))(
  ( (LongMap!1926 (underlying!4046 Cell!7531)) (MutLongMapExt!1925 (__x!13015 Int)) )
))
(declare-fun thiss!47421 () MutLongMap!1926)

(declare-fun key!7039 () (_ BitVec 64))

(declare-fun contains!3816 (MutLongMap!1926 (_ BitVec 64)) Bool)

(declare-datatypes ((tuple2!19912 0))(
  ( (tuple2!19913 (_1!11383 (_ BitVec 64)) (_2!11383 V!4002)) )
))
(declare-datatypes ((List!20843 0))(
  ( (Nil!20761) (Cons!20761 (h!26162 tuple2!19912) (t!173060 List!20843)) )
))
(declare-datatypes ((ListLongMap!233 0))(
  ( (ListLongMap!234 (toList!1002 List!20843)) )
))
(declare-fun contains!3817 (ListLongMap!233 (_ BitVec 64)) Bool)

(declare-fun abstractMap!77 (MutLongMap!1926) ListLongMap!233)

(assert (=> b!1873032 (= e!1194961 (not (= (contains!3816 thiss!47421 key!7039) (contains!3817 (abstractMap!77 thiss!47421) key!7039))))))

(declare-fun b!1873033 () Bool)

(declare-fun e!1194963 () Bool)

(declare-fun e!1194960 () Bool)

(assert (=> b!1873033 (= e!1194963 e!1194960)))

(declare-fun mapNonEmpty!8940 () Bool)

(declare-fun mapRes!8940 () Bool)

(declare-fun tp!532683 () Bool)

(declare-fun tp_is_empty!8827 () Bool)

(assert (=> mapNonEmpty!8940 (= mapRes!8940 (and tp!532683 tp_is_empty!8827))))

(declare-fun mapValue!8940 () V!4002)

(declare-fun mapRest!8940 () (Array (_ BitVec 32) V!4002))

(declare-fun mapKey!8940 () (_ BitVec 32))

(assert (=> mapNonEmpty!8940 (= (arr!2951 (_values!2206 (v!26153 (underlying!4046 thiss!47421)))) (store mapRest!8940 mapKey!8940 mapValue!8940))))

(declare-fun b!1873034 () Bool)

(declare-fun res!838224 () Bool)

(assert (=> b!1873034 (=> (not res!838224) (not e!1194961))))

(get-info :version)

(assert (=> b!1873034 (= res!838224 (not ((_ is LongMap!1926) thiss!47421)))))

(declare-fun b!1873035 () Bool)

(declare-fun e!1194964 () Bool)

(assert (=> b!1873035 (= e!1194964 (and tp_is_empty!8827 mapRes!8940))))

(declare-fun condMapEmpty!8940 () Bool)

(declare-fun mapDefault!8940 () V!4002)

(assert (=> b!1873035 (= condMapEmpty!8940 (= (arr!2951 (_values!2206 (v!26153 (underlying!4046 thiss!47421)))) ((as const (Array (_ BitVec 32) V!4002)) mapDefault!8940)))))

(declare-fun res!838223 () Bool)

(assert (=> start!187706 (=> (not res!838223) (not e!1194961))))

(declare-fun valid!1558 (MutLongMap!1926) Bool)

(assert (=> start!187706 (= res!838223 (valid!1558 thiss!47421))))

(assert (=> start!187706 e!1194961))

(assert (=> start!187706 e!1194963))

(assert (=> start!187706 true))

(declare-fun b!1873036 () Bool)

(declare-fun e!1194962 () Bool)

(assert (=> b!1873036 (= e!1194960 e!1194962)))

(declare-fun mapIsEmpty!8940 () Bool)

(assert (=> mapIsEmpty!8940 mapRes!8940))

(declare-fun array_inv!2123 (array!6641) Bool)

(declare-fun array_inv!2124 (array!6643) Bool)

(assert (=> b!1873037 (= e!1194962 (and tp!532682 tp_is_empty!8827 (array_inv!2123 (_keys!2223 (v!26153 (underlying!4046 thiss!47421)))) (array_inv!2124 (_values!2206 (v!26153 (underlying!4046 thiss!47421)))) e!1194964))))

(assert (= (and start!187706 res!838223) b!1873034))

(assert (= (and b!1873034 res!838224) b!1873032))

(assert (= (and b!1873035 condMapEmpty!8940) mapIsEmpty!8940))

(assert (= (and b!1873035 (not condMapEmpty!8940)) mapNonEmpty!8940))

(assert (= b!1873037 b!1873035))

(assert (= b!1873036 b!1873037))

(assert (= b!1873033 b!1873036))

(assert (= (and start!187706 ((_ is LongMap!1926) thiss!47421)) b!1873033))

(declare-fun m!2298735 () Bool)

(assert (=> b!1873032 m!2298735))

(declare-fun m!2298737 () Bool)

(assert (=> b!1873032 m!2298737))

(assert (=> b!1873032 m!2298737))

(declare-fun m!2298739 () Bool)

(assert (=> b!1873032 m!2298739))

(declare-fun m!2298741 () Bool)

(assert (=> mapNonEmpty!8940 m!2298741))

(declare-fun m!2298743 () Bool)

(assert (=> start!187706 m!2298743))

(declare-fun m!2298745 () Bool)

(assert (=> b!1873037 m!2298745))

(declare-fun m!2298747 () Bool)

(assert (=> b!1873037 m!2298747))

(check-sat (not mapNonEmpty!8940) (not b!1873032) (not b!1873037) (not b_next!52723) tp_is_empty!8827 (not start!187706) b_and!144305)
(check-sat b_and!144305 (not b_next!52723))
(get-model)

(declare-fun d!572634 () Bool)

(declare-fun lt!719817 () Bool)

(assert (=> d!572634 (= lt!719817 (contains!3817 (abstractMap!77 thiss!47421) key!7039))))

(declare-fun choose!11761 (MutLongMap!1926 (_ BitVec 64)) Bool)

(assert (=> d!572634 (= lt!719817 (choose!11761 thiss!47421 key!7039))))

(assert (=> d!572634 (valid!1558 thiss!47421)))

(assert (=> d!572634 (= (contains!3816 thiss!47421 key!7039) lt!719817)))

(declare-fun bs!412119 () Bool)

(assert (= bs!412119 d!572634))

(assert (=> bs!412119 m!2298737))

(assert (=> bs!412119 m!2298737))

(assert (=> bs!412119 m!2298739))

(declare-fun m!2298749 () Bool)

(assert (=> bs!412119 m!2298749))

(assert (=> bs!412119 m!2298743))

(assert (=> b!1873032 d!572634))

(declare-fun d!572636 () Bool)

(declare-fun e!1194971 () Bool)

(assert (=> d!572636 e!1194971))

(declare-fun res!838227 () Bool)

(assert (=> d!572636 (=> res!838227 e!1194971)))

(declare-fun lt!719828 () Bool)

(assert (=> d!572636 (= res!838227 (not lt!719828))))

(declare-fun lt!719827 () Bool)

(assert (=> d!572636 (= lt!719828 lt!719827)))

(declare-datatypes ((Unit!35351 0))(
  ( (Unit!35352) )
))
(declare-fun lt!719829 () Unit!35351)

(declare-fun e!1194970 () Unit!35351)

(assert (=> d!572636 (= lt!719829 e!1194970)))

(declare-fun c!305339 () Bool)

(assert (=> d!572636 (= c!305339 lt!719827)))

(declare-fun containsKey!41 (List!20843 (_ BitVec 64)) Bool)

(assert (=> d!572636 (= lt!719827 (containsKey!41 (toList!1002 (abstractMap!77 thiss!47421)) key!7039))))

(assert (=> d!572636 (= (contains!3817 (abstractMap!77 thiss!47421) key!7039) lt!719828)))

(declare-fun b!1873044 () Bool)

(declare-fun lt!719826 () Unit!35351)

(assert (=> b!1873044 (= e!1194970 lt!719826)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!22 (List!20843 (_ BitVec 64)) Unit!35351)

(assert (=> b!1873044 (= lt!719826 (lemmaContainsKeyImpliesGetValueByKeyDefined!22 (toList!1002 (abstractMap!77 thiss!47421)) key!7039))))

(declare-datatypes ((Option!4238 0))(
  ( (None!4237) (Some!4237 (v!26154 V!4002)) )
))
(declare-fun isDefined!3538 (Option!4238) Bool)

(declare-fun getValueByKey!32 (List!20843 (_ BitVec 64)) Option!4238)

(assert (=> b!1873044 (isDefined!3538 (getValueByKey!32 (toList!1002 (abstractMap!77 thiss!47421)) key!7039))))

(declare-fun b!1873045 () Bool)

(declare-fun Unit!35353 () Unit!35351)

(assert (=> b!1873045 (= e!1194970 Unit!35353)))

(declare-fun b!1873046 () Bool)

(assert (=> b!1873046 (= e!1194971 (isDefined!3538 (getValueByKey!32 (toList!1002 (abstractMap!77 thiss!47421)) key!7039)))))

(assert (= (and d!572636 c!305339) b!1873044))

(assert (= (and d!572636 (not c!305339)) b!1873045))

(assert (= (and d!572636 (not res!838227)) b!1873046))

(declare-fun m!2298751 () Bool)

(assert (=> d!572636 m!2298751))

(declare-fun m!2298753 () Bool)

(assert (=> b!1873044 m!2298753))

(declare-fun m!2298755 () Bool)

(assert (=> b!1873044 m!2298755))

(assert (=> b!1873044 m!2298755))

(declare-fun m!2298757 () Bool)

(assert (=> b!1873044 m!2298757))

(assert (=> b!1873046 m!2298755))

(assert (=> b!1873046 m!2298755))

(assert (=> b!1873046 m!2298757))

(assert (=> b!1873032 d!572636))

(declare-fun d!572638 () Bool)

(declare-fun c!305342 () Bool)

(assert (=> d!572638 (= c!305342 ((_ is LongMap!1926) thiss!47421))))

(declare-fun e!1194974 () ListLongMap!233)

(assert (=> d!572638 (= (abstractMap!77 thiss!47421) e!1194974)))

(declare-fun b!1873051 () Bool)

(declare-fun abstractMap!78 (MutLongMap!1926) ListLongMap!233)

(assert (=> b!1873051 (= e!1194974 (abstractMap!78 thiss!47421))))

(declare-fun b!1873052 () Bool)

(declare-fun abstractMap!79 (MutLongMap!1926) ListLongMap!233)

(assert (=> b!1873052 (= e!1194974 (abstractMap!79 thiss!47421))))

(assert (= (and d!572638 c!305342) b!1873051))

(assert (= (and d!572638 (not c!305342)) b!1873052))

(declare-fun m!2298759 () Bool)

(assert (=> b!1873051 m!2298759))

(declare-fun m!2298761 () Bool)

(assert (=> b!1873052 m!2298761))

(assert (=> b!1873032 d!572638))

(declare-fun d!572640 () Bool)

(assert (=> d!572640 (= (array_inv!2123 (_keys!2223 (v!26153 (underlying!4046 thiss!47421)))) (bvsge (size!16492 (_keys!2223 (v!26153 (underlying!4046 thiss!47421)))) #b00000000000000000000000000000000))))

(assert (=> b!1873037 d!572640))

(declare-fun d!572642 () Bool)

(assert (=> d!572642 (= (array_inv!2124 (_values!2206 (v!26153 (underlying!4046 thiss!47421)))) (bvsge (size!16493 (_values!2206 (v!26153 (underlying!4046 thiss!47421)))) #b00000000000000000000000000000000))))

(assert (=> b!1873037 d!572642))

(declare-fun d!572644 () Bool)

(declare-fun c!305345 () Bool)

(assert (=> d!572644 (= c!305345 ((_ is LongMap!1926) thiss!47421))))

(declare-fun e!1194977 () Bool)

(assert (=> d!572644 (= (valid!1558 thiss!47421) e!1194977)))

(declare-fun b!1873057 () Bool)

(declare-fun valid!1559 (MutLongMap!1926) Bool)

(assert (=> b!1873057 (= e!1194977 (valid!1559 thiss!47421))))

(declare-fun b!1873058 () Bool)

(declare-fun valid!1560 (MutLongMap!1926) Bool)

(assert (=> b!1873058 (= e!1194977 (valid!1560 thiss!47421))))

(assert (= (and d!572644 c!305345) b!1873057))

(assert (= (and d!572644 (not c!305345)) b!1873058))

(declare-fun m!2298763 () Bool)

(assert (=> b!1873057 m!2298763))

(declare-fun m!2298765 () Bool)

(assert (=> b!1873058 m!2298765))

(assert (=> start!187706 d!572644))

(declare-fun condMapEmpty!8943 () Bool)

(declare-fun mapDefault!8943 () V!4002)

(assert (=> mapNonEmpty!8940 (= condMapEmpty!8943 (= mapRest!8940 ((as const (Array (_ BitVec 32) V!4002)) mapDefault!8943)))))

(declare-fun mapRes!8943 () Bool)

(assert (=> mapNonEmpty!8940 (= tp!532683 (and tp_is_empty!8827 mapRes!8943))))

(declare-fun mapIsEmpty!8943 () Bool)

(assert (=> mapIsEmpty!8943 mapRes!8943))

(declare-fun mapNonEmpty!8943 () Bool)

(declare-fun tp!532686 () Bool)

(assert (=> mapNonEmpty!8943 (= mapRes!8943 (and tp!532686 tp_is_empty!8827))))

(declare-fun mapValue!8943 () V!4002)

(declare-fun mapRest!8943 () (Array (_ BitVec 32) V!4002))

(declare-fun mapKey!8943 () (_ BitVec 32))

(assert (=> mapNonEmpty!8943 (= mapRest!8940 (store mapRest!8943 mapKey!8943 mapValue!8943))))

(assert (= (and mapNonEmpty!8940 condMapEmpty!8943) mapIsEmpty!8943))

(assert (= (and mapNonEmpty!8940 (not condMapEmpty!8943)) mapNonEmpty!8943))

(declare-fun m!2298767 () Bool)

(assert (=> mapNonEmpty!8943 m!2298767))

(check-sat (not b!1873051) (not b!1873058) (not b_next!52723) (not mapNonEmpty!8943) (not d!572636) (not b!1873044) (not b!1873057) tp_is_empty!8827 (not b!1873052) (not b!1873046) (not d!572634) b_and!144305)
(check-sat b_and!144305 (not b_next!52723))
