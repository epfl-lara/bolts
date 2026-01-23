; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!496650 () Bool)

(assert start!496650)

(declare-fun b!4806487 () Bool)

(declare-fun b_free!129883 () Bool)

(declare-fun b_next!130673 () Bool)

(assert (=> b!4806487 (= b_free!129883 (not b_next!130673))))

(declare-fun tp!1358975 () Bool)

(declare-fun b_and!341639 () Bool)

(assert (=> b!4806487 (= tp!1358975 b_and!341639)))

(declare-fun b!4806486 () Bool)

(declare-fun b_free!129885 () Bool)

(declare-fun b_next!130675 () Bool)

(assert (=> b!4806486 (= b_free!129885 (not b_next!130675))))

(declare-fun tp!1358977 () Bool)

(declare-fun b_and!341641 () Bool)

(assert (=> b!4806486 (= tp!1358977 b_and!341641)))

(declare-fun res!2044858 () Bool)

(declare-fun e!3001906 () Bool)

(assert (=> start!496650 (=> (not res!2044858) (not e!3001906))))

(declare-datatypes ((K!15979 0))(
  ( (K!15980 (val!21089 Int)) )
))
(declare-datatypes ((array!18286 0))(
  ( (array!18287 (arr!8155 (Array (_ BitVec 32) (_ BitVec 64))) (size!36401 (_ BitVec 32))) )
))
(declare-datatypes ((V!16225 0))(
  ( (V!16226 (val!21090 Int)) )
))
(declare-datatypes ((tuple2!57138 0))(
  ( (tuple2!57139 (_1!31863 K!15979) (_2!31863 V!16225)) )
))
(declare-datatypes ((List!54522 0))(
  ( (Nil!54398) (Cons!54398 (h!60830 tuple2!57138) (t!361974 List!54522)) )
))
(declare-datatypes ((array!18288 0))(
  ( (array!18289 (arr!8156 (Array (_ BitVec 32) List!54522)) (size!36402 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9970 0))(
  ( (LongMapFixedSize!9971 (defaultEntry!5403 Int) (mask!14948 (_ BitVec 32)) (extraKeys!5260 (_ BitVec 32)) (zeroValue!5273 List!54522) (minValue!5273 List!54522) (_size!9995 (_ BitVec 32)) (_keys!5327 array!18286) (_values!5298 array!18288) (_vacant!5050 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19705 0))(
  ( (Cell!19706 (v!48606 LongMapFixedSize!9970)) )
))
(declare-datatypes ((MutLongMap!4985 0))(
  ( (LongMap!4985 (underlying!10177 Cell!19705)) (MutLongMapExt!4984 (__x!33053 Int)) )
))
(declare-datatypes ((Hashable!6996 0))(
  ( (HashableExt!6995 (__x!33054 Int)) )
))
(declare-datatypes ((Cell!19707 0))(
  ( (Cell!19708 (v!48607 MutLongMap!4985)) )
))
(declare-datatypes ((MutableMap!4869 0))(
  ( (MutableMapExt!4868 (__x!33055 Int)) (HashMap!4869 (underlying!10178 Cell!19707) (hashF!13264 Hashable!6996) (_size!9996 (_ BitVec 32)) (defaultValue!5040 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4869)

(get-info :version)

(assert (=> start!496650 (= res!2044858 ((_ is HashMap!4869) thiss!41921))))

(assert (=> start!496650 e!3001906))

(declare-fun e!3001903 () Bool)

(assert (=> start!496650 e!3001903))

(declare-fun tp_is_empty!33817 () Bool)

(assert (=> start!496650 tp_is_empty!33817))

(declare-fun b!4806480 () Bool)

(declare-fun e!3001908 () Bool)

(declare-fun e!3001904 () Bool)

(assert (=> b!4806480 (= e!3001908 (not e!3001904))))

(declare-fun res!2044859 () Bool)

(assert (=> b!4806480 (=> res!2044859 e!3001904)))

(assert (=> b!4806480 (= res!2044859 (not ((_ is LongMap!4985) (v!48607 (underlying!10178 thiss!41921)))))))

(declare-datatypes ((tuple2!57140 0))(
  ( (tuple2!57141 (_1!31864 (_ BitVec 64)) (_2!31864 List!54522)) )
))
(declare-datatypes ((List!54523 0))(
  ( (Nil!54399) (Cons!54399 (h!60831 tuple2!57140) (t!361975 List!54523)) )
))
(declare-datatypes ((ListLongMap!5479 0))(
  ( (ListLongMap!5480 (toList!7047 List!54523)) )
))
(declare-fun lt!1959988 () ListLongMap!5479)

(declare-fun lt!1959987 () (_ BitVec 64))

(declare-fun containsKey!4082 (List!54523 (_ BitVec 64)) Bool)

(assert (=> b!4806480 (containsKey!4082 (toList!7047 lt!1959988) lt!1959987)))

(declare-datatypes ((Unit!141259 0))(
  ( (Unit!141260) )
))
(declare-fun lt!1959986 () Unit!141259)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!217 (List!54523 (_ BitVec 64)) Unit!141259)

(assert (=> b!4806480 (= lt!1959986 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!217 (toList!7047 lt!1959988) lt!1959987))))

(declare-fun b!4806481 () Bool)

(declare-fun res!2044862 () Bool)

(assert (=> b!4806481 (=> (not res!2044862) (not e!3001906))))

(declare-fun valid!3993 (MutableMap!4869) Bool)

(assert (=> b!4806481 (= res!2044862 (valid!3993 thiss!41921))))

(declare-fun b!4806482 () Bool)

(declare-fun e!3001905 () Bool)

(assert (=> b!4806482 (= e!3001906 e!3001905)))

(declare-fun res!2044860 () Bool)

(assert (=> b!4806482 (=> (not res!2044860) (not e!3001905))))

(declare-fun contains!18061 (MutLongMap!4985 (_ BitVec 64)) Bool)

(assert (=> b!4806482 (= res!2044860 (contains!18061 (v!48607 (underlying!10178 thiss!41921)) lt!1959987))))

(declare-fun key!1652 () K!15979)

(declare-fun hash!5063 (Hashable!6996 K!15979) (_ BitVec 64))

(assert (=> b!4806482 (= lt!1959987 (hash!5063 (hashF!13264 thiss!41921) key!1652))))

(declare-fun b!4806483 () Bool)

(assert (=> b!4806483 (= e!3001905 e!3001908)))

(declare-fun res!2044861 () Bool)

(assert (=> b!4806483 (=> (not res!2044861) (not e!3001908))))

(declare-fun contains!18062 (List!54523 tuple2!57140) Bool)

(declare-fun apply!13068 (MutLongMap!4985 (_ BitVec 64)) List!54522)

(assert (=> b!4806483 (= res!2044861 (not (contains!18062 (toList!7047 lt!1959988) (tuple2!57141 lt!1959987 (apply!13068 (v!48607 (underlying!10178 thiss!41921)) lt!1959987)))))))

(declare-fun map!12312 (MutLongMap!4985) ListLongMap!5479)

(assert (=> b!4806483 (= lt!1959988 (map!12312 (v!48607 (underlying!10178 thiss!41921))))))

(declare-fun b!4806484 () Bool)

(declare-fun e!3001898 () Bool)

(declare-fun e!3001900 () Bool)

(declare-fun lt!1959985 () MutLongMap!4985)

(assert (=> b!4806484 (= e!3001898 (and e!3001900 ((_ is LongMap!4985) lt!1959985)))))

(assert (=> b!4806484 (= lt!1959985 (v!48607 (underlying!10178 thiss!41921)))))

(declare-fun b!4806485 () Bool)

(declare-fun e!3001902 () Bool)

(assert (=> b!4806485 (= e!3001900 e!3001902)))

(declare-fun mapNonEmpty!22082 () Bool)

(declare-fun mapRes!22082 () Bool)

(declare-fun tp!1358980 () Bool)

(declare-fun tp!1358978 () Bool)

(assert (=> mapNonEmpty!22082 (= mapRes!22082 (and tp!1358980 tp!1358978))))

(declare-fun mapKey!22082 () (_ BitVec 32))

(declare-fun mapValue!22082 () List!54522)

(declare-fun mapRest!22082 () (Array (_ BitVec 32) List!54522))

(assert (=> mapNonEmpty!22082 (= (arr!8156 (_values!5298 (v!48606 (underlying!10177 (v!48607 (underlying!10178 thiss!41921)))))) (store mapRest!22082 mapKey!22082 mapValue!22082))))

(assert (=> b!4806486 (= e!3001903 (and e!3001898 tp!1358977))))

(declare-fun tp!1358976 () Bool)

(declare-fun tp!1358981 () Bool)

(declare-fun e!3001899 () Bool)

(declare-fun e!3001907 () Bool)

(declare-fun array_inv!5871 (array!18286) Bool)

(declare-fun array_inv!5872 (array!18288) Bool)

(assert (=> b!4806487 (= e!3001907 (and tp!1358975 tp!1358976 tp!1358981 (array_inv!5871 (_keys!5327 (v!48606 (underlying!10177 (v!48607 (underlying!10178 thiss!41921)))))) (array_inv!5872 (_values!5298 (v!48606 (underlying!10177 (v!48607 (underlying!10178 thiss!41921)))))) e!3001899))))

(declare-fun mapIsEmpty!22082 () Bool)

(assert (=> mapIsEmpty!22082 mapRes!22082))

(declare-fun b!4806488 () Bool)

(declare-fun valid!3994 (MutLongMap!4985) Bool)

(assert (=> b!4806488 (= e!3001904 (valid!3994 (v!48607 (underlying!10178 thiss!41921))))))

(declare-fun b!4806489 () Bool)

(declare-fun tp!1358979 () Bool)

(assert (=> b!4806489 (= e!3001899 (and tp!1358979 mapRes!22082))))

(declare-fun condMapEmpty!22082 () Bool)

(declare-fun mapDefault!22082 () List!54522)

(assert (=> b!4806489 (= condMapEmpty!22082 (= (arr!8156 (_values!5298 (v!48606 (underlying!10177 (v!48607 (underlying!10178 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54522)) mapDefault!22082)))))

(declare-fun b!4806490 () Bool)

(assert (=> b!4806490 (= e!3001902 e!3001907)))

(assert (= (and start!496650 res!2044858) b!4806481))

(assert (= (and b!4806481 res!2044862) b!4806482))

(assert (= (and b!4806482 res!2044860) b!4806483))

(assert (= (and b!4806483 res!2044861) b!4806480))

(assert (= (and b!4806480 (not res!2044859)) b!4806488))

(assert (= (and b!4806489 condMapEmpty!22082) mapIsEmpty!22082))

(assert (= (and b!4806489 (not condMapEmpty!22082)) mapNonEmpty!22082))

(assert (= b!4806487 b!4806489))

(assert (= b!4806490 b!4806487))

(assert (= b!4806485 b!4806490))

(assert (= (and b!4806484 ((_ is LongMap!4985) (v!48607 (underlying!10178 thiss!41921)))) b!4806485))

(assert (= b!4806486 b!4806484))

(assert (= (and start!496650 ((_ is HashMap!4869) thiss!41921)) b!4806486))

(declare-fun m!5792826 () Bool)

(assert (=> b!4806488 m!5792826))

(declare-fun m!5792828 () Bool)

(assert (=> b!4806480 m!5792828))

(declare-fun m!5792830 () Bool)

(assert (=> b!4806480 m!5792830))

(declare-fun m!5792832 () Bool)

(assert (=> mapNonEmpty!22082 m!5792832))

(declare-fun m!5792834 () Bool)

(assert (=> b!4806487 m!5792834))

(declare-fun m!5792836 () Bool)

(assert (=> b!4806487 m!5792836))

(declare-fun m!5792838 () Bool)

(assert (=> b!4806482 m!5792838))

(declare-fun m!5792840 () Bool)

(assert (=> b!4806482 m!5792840))

(declare-fun m!5792842 () Bool)

(assert (=> b!4806483 m!5792842))

(declare-fun m!5792844 () Bool)

(assert (=> b!4806483 m!5792844))

(declare-fun m!5792846 () Bool)

(assert (=> b!4806483 m!5792846))

(declare-fun m!5792848 () Bool)

(assert (=> b!4806481 m!5792848))

(check-sat b_and!341639 (not b_next!130675) (not b!4806489) (not b!4806480) (not b!4806481) (not b!4806482) (not b_next!130673) (not b!4806487) b_and!341641 (not mapNonEmpty!22082) (not b!4806488) tp_is_empty!33817 (not b!4806483))
(check-sat b_and!341639 b_and!341641 (not b_next!130673) (not b_next!130675))
(get-model)

(declare-fun d!1539759 () Bool)

(declare-fun lt!1959991 () Bool)

(declare-fun contains!18063 (ListLongMap!5479 (_ BitVec 64)) Bool)

(assert (=> d!1539759 (= lt!1959991 (contains!18063 (map!12312 (v!48607 (underlying!10178 thiss!41921))) lt!1959987))))

(declare-fun contains!18064 (LongMapFixedSize!9970 (_ BitVec 64)) Bool)

(assert (=> d!1539759 (= lt!1959991 (contains!18064 (v!48606 (underlying!10177 (v!48607 (underlying!10178 thiss!41921)))) lt!1959987))))

(assert (=> d!1539759 (valid!3994 (v!48607 (underlying!10178 thiss!41921)))))

(assert (=> d!1539759 (= (contains!18061 (v!48607 (underlying!10178 thiss!41921)) lt!1959987) lt!1959991)))

(declare-fun bs!1159877 () Bool)

(assert (= bs!1159877 d!1539759))

(assert (=> bs!1159877 m!5792846))

(assert (=> bs!1159877 m!5792846))

(declare-fun m!5792850 () Bool)

(assert (=> bs!1159877 m!5792850))

(declare-fun m!5792852 () Bool)

(assert (=> bs!1159877 m!5792852))

(assert (=> bs!1159877 m!5792826))

(assert (=> b!4806482 d!1539759))

(declare-fun d!1539761 () Bool)

(declare-fun hash!5064 (Hashable!6996 K!15979) (_ BitVec 64))

(assert (=> d!1539761 (= (hash!5063 (hashF!13264 thiss!41921) key!1652) (hash!5064 (hashF!13264 thiss!41921) key!1652))))

(declare-fun bs!1159878 () Bool)

(assert (= bs!1159878 d!1539761))

(declare-fun m!5792854 () Bool)

(assert (=> bs!1159878 m!5792854))

(assert (=> b!4806482 d!1539761))

(declare-fun lt!1959994 () Bool)

(declare-fun d!1539763 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9762 (List!54523) (InoxSet tuple2!57140))

(assert (=> d!1539763 (= lt!1959994 (select (content!9762 (toList!7047 lt!1959988)) (tuple2!57141 lt!1959987 (apply!13068 (v!48607 (underlying!10178 thiss!41921)) lt!1959987))))))

(declare-fun e!3001913 () Bool)

(assert (=> d!1539763 (= lt!1959994 e!3001913)))

(declare-fun res!2044868 () Bool)

(assert (=> d!1539763 (=> (not res!2044868) (not e!3001913))))

(assert (=> d!1539763 (= res!2044868 ((_ is Cons!54399) (toList!7047 lt!1959988)))))

(assert (=> d!1539763 (= (contains!18062 (toList!7047 lt!1959988) (tuple2!57141 lt!1959987 (apply!13068 (v!48607 (underlying!10178 thiss!41921)) lt!1959987))) lt!1959994)))

(declare-fun b!4806495 () Bool)

(declare-fun e!3001914 () Bool)

(assert (=> b!4806495 (= e!3001913 e!3001914)))

(declare-fun res!2044867 () Bool)

(assert (=> b!4806495 (=> res!2044867 e!3001914)))

(assert (=> b!4806495 (= res!2044867 (= (h!60831 (toList!7047 lt!1959988)) (tuple2!57141 lt!1959987 (apply!13068 (v!48607 (underlying!10178 thiss!41921)) lt!1959987))))))

(declare-fun b!4806496 () Bool)

(assert (=> b!4806496 (= e!3001914 (contains!18062 (t!361975 (toList!7047 lt!1959988)) (tuple2!57141 lt!1959987 (apply!13068 (v!48607 (underlying!10178 thiss!41921)) lt!1959987))))))

(assert (= (and d!1539763 res!2044868) b!4806495))

(assert (= (and b!4806495 (not res!2044867)) b!4806496))

(declare-fun m!5792856 () Bool)

(assert (=> d!1539763 m!5792856))

(declare-fun m!5792858 () Bool)

(assert (=> d!1539763 m!5792858))

(declare-fun m!5792860 () Bool)

(assert (=> b!4806496 m!5792860))

(assert (=> b!4806483 d!1539763))

(declare-fun d!1539765 () Bool)

(declare-fun e!3001917 () Bool)

(assert (=> d!1539765 e!3001917))

(declare-fun c!819285 () Bool)

(assert (=> d!1539765 (= c!819285 (contains!18061 (v!48607 (underlying!10178 thiss!41921)) lt!1959987))))

(declare-fun lt!1959997 () List!54522)

(declare-fun apply!13069 (LongMapFixedSize!9970 (_ BitVec 64)) List!54522)

(assert (=> d!1539765 (= lt!1959997 (apply!13069 (v!48606 (underlying!10177 (v!48607 (underlying!10178 thiss!41921)))) lt!1959987))))

(assert (=> d!1539765 (valid!3994 (v!48607 (underlying!10178 thiss!41921)))))

(assert (=> d!1539765 (= (apply!13068 (v!48607 (underlying!10178 thiss!41921)) lt!1959987) lt!1959997)))

(declare-fun b!4806501 () Bool)

(declare-datatypes ((Option!13231 0))(
  ( (None!13230) (Some!13230 (v!48609 List!54522)) )
))
(declare-fun get!18606 (Option!13231) List!54522)

(declare-fun getValueByKey!2428 (List!54523 (_ BitVec 64)) Option!13231)

(assert (=> b!4806501 (= e!3001917 (= lt!1959997 (get!18606 (getValueByKey!2428 (toList!7047 (map!12312 (v!48607 (underlying!10178 thiss!41921)))) lt!1959987))))))

(declare-fun b!4806502 () Bool)

(declare-fun dynLambda!22111 (Int (_ BitVec 64)) List!54522)

(assert (=> b!4806502 (= e!3001917 (= lt!1959997 (dynLambda!22111 (defaultEntry!5403 (v!48606 (underlying!10177 (v!48607 (underlying!10178 thiss!41921))))) lt!1959987)))))

(assert (=> b!4806502 ((_ is LongMap!4985) (v!48607 (underlying!10178 thiss!41921)))))

(assert (= (and d!1539765 c!819285) b!4806501))

(assert (= (and d!1539765 (not c!819285)) b!4806502))

(declare-fun b_lambda!188109 () Bool)

(assert (=> (not b_lambda!188109) (not b!4806502)))

(declare-fun t!361977 () Bool)

(declare-fun tb!257505 () Bool)

(assert (=> (and b!4806487 (= (defaultEntry!5403 (v!48606 (underlying!10177 (v!48607 (underlying!10178 thiss!41921))))) (defaultEntry!5403 (v!48606 (underlying!10177 (v!48607 (underlying!10178 thiss!41921)))))) t!361977) tb!257505))

(assert (=> b!4806502 t!361977))

(declare-fun result!319528 () Bool)

(declare-fun b_and!341643 () Bool)

(assert (= b_and!341639 (and (=> t!361977 result!319528) b_and!341643)))

(assert (=> d!1539765 m!5792838))

(declare-fun m!5792862 () Bool)

(assert (=> d!1539765 m!5792862))

(assert (=> d!1539765 m!5792826))

(assert (=> b!4806501 m!5792846))

(declare-fun m!5792864 () Bool)

(assert (=> b!4806501 m!5792864))

(assert (=> b!4806501 m!5792864))

(declare-fun m!5792866 () Bool)

(assert (=> b!4806501 m!5792866))

(declare-fun m!5792868 () Bool)

(assert (=> b!4806502 m!5792868))

(assert (=> b!4806483 d!1539765))

(declare-fun d!1539767 () Bool)

(declare-fun map!12313 (LongMapFixedSize!9970) ListLongMap!5479)

(assert (=> d!1539767 (= (map!12312 (v!48607 (underlying!10178 thiss!41921))) (map!12313 (v!48606 (underlying!10177 (v!48607 (underlying!10178 thiss!41921))))))))

(declare-fun bs!1159879 () Bool)

(assert (= bs!1159879 d!1539767))

(declare-fun m!5792870 () Bool)

(assert (=> bs!1159879 m!5792870))

(assert (=> b!4806483 d!1539767))

(declare-fun d!1539769 () Bool)

(assert (=> d!1539769 (= (array_inv!5871 (_keys!5327 (v!48606 (underlying!10177 (v!48607 (underlying!10178 thiss!41921)))))) (bvsge (size!36401 (_keys!5327 (v!48606 (underlying!10177 (v!48607 (underlying!10178 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4806487 d!1539769))

(declare-fun d!1539771 () Bool)

(assert (=> d!1539771 (= (array_inv!5872 (_values!5298 (v!48606 (underlying!10177 (v!48607 (underlying!10178 thiss!41921)))))) (bvsge (size!36402 (_values!5298 (v!48606 (underlying!10177 (v!48607 (underlying!10178 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4806487 d!1539771))

(declare-fun d!1539773 () Bool)

(declare-fun valid!3995 (LongMapFixedSize!9970) Bool)

(assert (=> d!1539773 (= (valid!3994 (v!48607 (underlying!10178 thiss!41921))) (valid!3995 (v!48606 (underlying!10177 (v!48607 (underlying!10178 thiss!41921))))))))

(declare-fun bs!1159880 () Bool)

(assert (= bs!1159880 d!1539773))

(declare-fun m!5792872 () Bool)

(assert (=> bs!1159880 m!5792872))

(assert (=> b!4806488 d!1539773))

(declare-fun d!1539775 () Bool)

(declare-fun res!2044873 () Bool)

(declare-fun e!3001922 () Bool)

(assert (=> d!1539775 (=> res!2044873 e!3001922)))

(assert (=> d!1539775 (= res!2044873 (and ((_ is Cons!54399) (toList!7047 lt!1959988)) (= (_1!31864 (h!60831 (toList!7047 lt!1959988))) lt!1959987)))))

(assert (=> d!1539775 (= (containsKey!4082 (toList!7047 lt!1959988) lt!1959987) e!3001922)))

(declare-fun b!4806507 () Bool)

(declare-fun e!3001923 () Bool)

(assert (=> b!4806507 (= e!3001922 e!3001923)))

(declare-fun res!2044874 () Bool)

(assert (=> b!4806507 (=> (not res!2044874) (not e!3001923))))

(assert (=> b!4806507 (= res!2044874 (and (or (not ((_ is Cons!54399) (toList!7047 lt!1959988))) (bvsle (_1!31864 (h!60831 (toList!7047 lt!1959988))) lt!1959987)) ((_ is Cons!54399) (toList!7047 lt!1959988)) (bvslt (_1!31864 (h!60831 (toList!7047 lt!1959988))) lt!1959987)))))

(declare-fun b!4806508 () Bool)

(assert (=> b!4806508 (= e!3001923 (containsKey!4082 (t!361975 (toList!7047 lt!1959988)) lt!1959987))))

(assert (= (and d!1539775 (not res!2044873)) b!4806507))

(assert (= (and b!4806507 res!2044874) b!4806508))

(declare-fun m!5792874 () Bool)

(assert (=> b!4806508 m!5792874))

(assert (=> b!4806480 d!1539775))

(declare-fun d!1539777 () Bool)

(assert (=> d!1539777 (containsKey!4082 (toList!7047 lt!1959988) lt!1959987)))

(declare-fun lt!1960000 () Unit!141259)

(declare-fun choose!34799 (List!54523 (_ BitVec 64)) Unit!141259)

(assert (=> d!1539777 (= lt!1960000 (choose!34799 (toList!7047 lt!1959988) lt!1959987))))

(declare-fun e!3001926 () Bool)

(assert (=> d!1539777 e!3001926))

(declare-fun res!2044877 () Bool)

(assert (=> d!1539777 (=> (not res!2044877) (not e!3001926))))

(declare-fun isStrictlySorted!915 (List!54523) Bool)

(assert (=> d!1539777 (= res!2044877 (isStrictlySorted!915 (toList!7047 lt!1959988)))))

(assert (=> d!1539777 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!217 (toList!7047 lt!1959988) lt!1959987) lt!1960000)))

(declare-fun b!4806511 () Bool)

(declare-fun isDefined!10370 (Option!13231) Bool)

(assert (=> b!4806511 (= e!3001926 (isDefined!10370 (getValueByKey!2428 (toList!7047 lt!1959988) lt!1959987)))))

(assert (= (and d!1539777 res!2044877) b!4806511))

(assert (=> d!1539777 m!5792828))

(declare-fun m!5792876 () Bool)

(assert (=> d!1539777 m!5792876))

(declare-fun m!5792878 () Bool)

(assert (=> d!1539777 m!5792878))

(declare-fun m!5792880 () Bool)

(assert (=> b!4806511 m!5792880))

(assert (=> b!4806511 m!5792880))

(declare-fun m!5792882 () Bool)

(assert (=> b!4806511 m!5792882))

(assert (=> b!4806480 d!1539777))

(declare-fun d!1539779 () Bool)

(declare-fun res!2044882 () Bool)

(declare-fun e!3001929 () Bool)

(assert (=> d!1539779 (=> (not res!2044882) (not e!3001929))))

(assert (=> d!1539779 (= res!2044882 (valid!3994 (v!48607 (underlying!10178 thiss!41921))))))

(assert (=> d!1539779 (= (valid!3993 thiss!41921) e!3001929)))

(declare-fun b!4806516 () Bool)

(declare-fun res!2044883 () Bool)

(assert (=> b!4806516 (=> (not res!2044883) (not e!3001929))))

(declare-fun lambda!233465 () Int)

(declare-fun forall!12369 (List!54523 Int) Bool)

(assert (=> b!4806516 (= res!2044883 (forall!12369 (toList!7047 (map!12312 (v!48607 (underlying!10178 thiss!41921)))) lambda!233465))))

(declare-fun b!4806517 () Bool)

(declare-fun allKeysSameHashInMap!2387 (ListLongMap!5479 Hashable!6996) Bool)

(assert (=> b!4806517 (= e!3001929 (allKeysSameHashInMap!2387 (map!12312 (v!48607 (underlying!10178 thiss!41921))) (hashF!13264 thiss!41921)))))

(assert (= (and d!1539779 res!2044882) b!4806516))

(assert (= (and b!4806516 res!2044883) b!4806517))

(assert (=> d!1539779 m!5792826))

(assert (=> b!4806516 m!5792846))

(declare-fun m!5792884 () Bool)

(assert (=> b!4806516 m!5792884))

(assert (=> b!4806517 m!5792846))

(assert (=> b!4806517 m!5792846))

(declare-fun m!5792886 () Bool)

(assert (=> b!4806517 m!5792886))

(assert (=> b!4806481 d!1539779))

(declare-fun b!4806522 () Bool)

(declare-fun tp!1358984 () Bool)

(declare-fun tp_is_empty!33819 () Bool)

(declare-fun e!3001932 () Bool)

(assert (=> b!4806522 (= e!3001932 (and tp_is_empty!33817 tp_is_empty!33819 tp!1358984))))

(assert (=> b!4806487 (= tp!1358976 e!3001932)))

(assert (= (and b!4806487 ((_ is Cons!54398) (zeroValue!5273 (v!48606 (underlying!10177 (v!48607 (underlying!10178 thiss!41921))))))) b!4806522))

(declare-fun e!3001933 () Bool)

(declare-fun tp!1358985 () Bool)

(declare-fun b!4806523 () Bool)

(assert (=> b!4806523 (= e!3001933 (and tp_is_empty!33817 tp_is_empty!33819 tp!1358985))))

(assert (=> b!4806487 (= tp!1358981 e!3001933)))

(assert (= (and b!4806487 ((_ is Cons!54398) (minValue!5273 (v!48606 (underlying!10177 (v!48607 (underlying!10178 thiss!41921))))))) b!4806523))

(declare-fun e!3001934 () Bool)

(declare-fun tp!1358986 () Bool)

(declare-fun b!4806524 () Bool)

(assert (=> b!4806524 (= e!3001934 (and tp_is_empty!33817 tp_is_empty!33819 tp!1358986))))

(assert (=> b!4806489 (= tp!1358979 e!3001934)))

(assert (= (and b!4806489 ((_ is Cons!54398) mapDefault!22082)) b!4806524))

(declare-fun b!4806531 () Bool)

(declare-fun tp!1358993 () Bool)

(declare-fun e!3001939 () Bool)

(assert (=> b!4806531 (= e!3001939 (and tp_is_empty!33817 tp_is_empty!33819 tp!1358993))))

(declare-fun mapIsEmpty!22085 () Bool)

(declare-fun mapRes!22085 () Bool)

(assert (=> mapIsEmpty!22085 mapRes!22085))

(declare-fun condMapEmpty!22085 () Bool)

(declare-fun mapDefault!22085 () List!54522)

(assert (=> mapNonEmpty!22082 (= condMapEmpty!22085 (= mapRest!22082 ((as const (Array (_ BitVec 32) List!54522)) mapDefault!22085)))))

(declare-fun e!3001940 () Bool)

(assert (=> mapNonEmpty!22082 (= tp!1358980 (and e!3001940 mapRes!22085))))

(declare-fun tp!1358994 () Bool)

(declare-fun b!4806532 () Bool)

(assert (=> b!4806532 (= e!3001940 (and tp_is_empty!33817 tp_is_empty!33819 tp!1358994))))

(declare-fun mapNonEmpty!22085 () Bool)

(declare-fun tp!1358995 () Bool)

(assert (=> mapNonEmpty!22085 (= mapRes!22085 (and tp!1358995 e!3001939))))

(declare-fun mapValue!22085 () List!54522)

(declare-fun mapKey!22085 () (_ BitVec 32))

(declare-fun mapRest!22085 () (Array (_ BitVec 32) List!54522))

(assert (=> mapNonEmpty!22085 (= mapRest!22082 (store mapRest!22085 mapKey!22085 mapValue!22085))))

(assert (= (and mapNonEmpty!22082 condMapEmpty!22085) mapIsEmpty!22085))

(assert (= (and mapNonEmpty!22082 (not condMapEmpty!22085)) mapNonEmpty!22085))

(assert (= (and mapNonEmpty!22085 ((_ is Cons!54398) mapValue!22085)) b!4806531))

(assert (= (and mapNonEmpty!22082 ((_ is Cons!54398) mapDefault!22085)) b!4806532))

(declare-fun m!5792888 () Bool)

(assert (=> mapNonEmpty!22085 m!5792888))

(declare-fun b!4806533 () Bool)

(declare-fun tp!1358996 () Bool)

(declare-fun e!3001941 () Bool)

(assert (=> b!4806533 (= e!3001941 (and tp_is_empty!33817 tp_is_empty!33819 tp!1358996))))

(assert (=> mapNonEmpty!22082 (= tp!1358978 e!3001941)))

(assert (= (and mapNonEmpty!22082 ((_ is Cons!54398) mapValue!22082)) b!4806533))

(declare-fun b_lambda!188111 () Bool)

(assert (= b_lambda!188109 (or (and b!4806487 b_free!129883) b_lambda!188111)))

(check-sat (not b!4806501) (not d!1539773) (not b_next!130675) (not b!4806522) (not b!4806516) (not b!4806508) (not d!1539767) (not b!4806511) (not b_next!130673) (not d!1539779) (not b!4806533) (not d!1539761) (not b!4806531) (not b!4806532) (not d!1539759) b_and!341641 (not b!4806496) (not d!1539777) tp_is_empty!33817 (not b!4806517) b_and!341643 (not d!1539763) (not tb!257505) (not mapNonEmpty!22085) (not b!4806523) (not b_lambda!188111) tp_is_empty!33819 (not d!1539765) (not b!4806524))
(check-sat b_and!341643 b_and!341641 (not b_next!130673) (not b_next!130675))
