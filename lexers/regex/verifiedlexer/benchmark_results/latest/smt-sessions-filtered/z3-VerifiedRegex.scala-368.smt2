; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11530 () Bool)

(assert start!11530)

(declare-fun b!111964 () Bool)

(declare-fun b_free!3497 () Bool)

(declare-fun b_next!3497 () Bool)

(assert (=> b!111964 (= b_free!3497 (not b_next!3497))))

(declare-fun tp!60690 () Bool)

(declare-fun b_and!5627 () Bool)

(assert (=> b!111964 (= tp!60690 b_and!5627)))

(declare-fun b!111962 () Bool)

(declare-fun b_free!3499 () Bool)

(declare-fun b_next!3499 () Bool)

(assert (=> b!111962 (= b_free!3499 (not b_next!3499))))

(declare-fun tp!60682 () Bool)

(declare-fun b_and!5629 () Bool)

(assert (=> b!111962 (= tp!60682 b_and!5629)))

(declare-fun b!111952 () Bool)

(declare-fun e!62845 () Bool)

(declare-fun tp_is_empty!957 () Bool)

(declare-fun tp!60694 () Bool)

(assert (=> b!111952 (= e!62845 (and tp_is_empty!957 tp!60694))))

(declare-fun b!111953 () Bool)

(declare-fun e!62841 () Bool)

(declare-fun tp!60692 () Bool)

(declare-fun mapRes!1252 () Bool)

(assert (=> b!111953 (= e!62841 (and tp!60692 mapRes!1252))))

(declare-fun condMapEmpty!1252 () Bool)

(declare-datatypes ((C!1824 0))(
  ( (C!1825 (val!638 Int)) )
))
(declare-datatypes ((Regex!451 0))(
  ( (ElementMatch!451 (c!26356 C!1824)) (Concat!835 (regOne!1414 Regex!451) (regTwo!1414 Regex!451)) (EmptyExpr!451) (Star!451 (reg!780 Regex!451)) (EmptyLang!451) (Union!451 (regOne!1415 Regex!451) (regTwo!1415 Regex!451)) )
))
(declare-datatypes ((tuple2!1920 0))(
  ( (tuple2!1921 (_1!1170 Regex!451) (_2!1170 C!1824)) )
))
(declare-datatypes ((tuple2!1922 0))(
  ( (tuple2!1923 (_1!1171 tuple2!1920) (_2!1171 Regex!451)) )
))
(declare-datatypes ((List!1819 0))(
  ( (Nil!1813) (Cons!1813 (h!7210 tuple2!1922) (t!22296 List!1819)) )
))
(declare-datatypes ((array!1107 0))(
  ( (array!1108 (arr!518 (Array (_ BitVec 32) (_ BitVec 64))) (size!1581 (_ BitVec 32))) )
))
(declare-datatypes ((array!1109 0))(
  ( (array!1110 (arr!519 (Array (_ BitVec 32) List!1819)) (size!1582 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!634 0))(
  ( (LongMapFixedSize!635 (defaultEntry!656 Int) (mask!1210 (_ BitVec 32)) (extraKeys!563 (_ BitVec 32)) (zeroValue!573 List!1819) (minValue!573 List!1819) (_size!767 (_ BitVec 32)) (_keys!608 array!1107) (_values!595 array!1109) (_vacant!378 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1257 0))(
  ( (Cell!1258 (v!13165 LongMapFixedSize!634)) )
))
(declare-datatypes ((MutLongMap!317 0))(
  ( (LongMap!317 (underlying!833 Cell!1257)) (MutLongMapExt!316 (__x!1876 Int)) )
))
(declare-datatypes ((Cell!1259 0))(
  ( (Cell!1260 (v!13166 MutLongMap!317)) )
))
(declare-datatypes ((Hashable!313 0))(
  ( (HashableExt!312 (__x!1877 Int)) )
))
(declare-datatypes ((MutableMap!313 0))(
  ( (MutableMapExt!312 (__x!1878 Int)) (HashMap!313 (underlying!834 Cell!1259) (hashF!2189 Hashable!313) (_size!768 (_ BitVec 32)) (defaultValue!462 Int)) )
))
(declare-datatypes ((Cache!62 0))(
  ( (Cache!63 (cache!764 MutableMap!313)) )
))
(declare-fun cache!464 () Cache!62)

(declare-fun mapDefault!1252 () List!1819)

(assert (=> b!111953 (= condMapEmpty!1252 (= (arr!519 (_values!595 (v!13165 (underlying!833 (v!13166 (underlying!834 (cache!764 cache!464))))))) ((as const (Array (_ BitVec 32) List!1819)) mapDefault!1252)))))

(declare-fun res!53781 () Bool)

(declare-fun e!62844 () Bool)

(assert (=> start!11530 (=> (not res!53781) (not e!62844))))

(declare-fun r!15516 () Regex!451)

(declare-fun validRegex!68 (Regex!451) Bool)

(assert (=> start!11530 (= res!53781 (validRegex!68 r!15516))))

(assert (=> start!11530 e!62844))

(declare-fun e!62835 () Bool)

(assert (=> start!11530 e!62835))

(declare-fun e!62843 () Bool)

(declare-fun inv!2309 (Cache!62) Bool)

(assert (=> start!11530 (and (inv!2309 cache!464) e!62843)))

(assert (=> start!11530 e!62845))

(declare-fun mapIsEmpty!1252 () Bool)

(assert (=> mapIsEmpty!1252 mapRes!1252))

(declare-fun b!111954 () Bool)

(declare-datatypes ((List!1820 0))(
  ( (Nil!1814) (Cons!1814 (h!7211 C!1824) (t!22297 List!1820)) )
))
(declare-fun input!6708 () List!1820)

(declare-fun ++!301 (List!1820 List!1820) List!1820)

(assert (=> b!111954 (= e!62844 (not (= (++!301 Nil!1814 input!6708) input!6708)))))

(declare-fun size!1583 (List!1820) Int)

(assert (=> b!111954 (= 0 (size!1583 Nil!1814))))

(declare-datatypes ((Unit!1292 0))(
  ( (Unit!1293) )
))
(declare-fun lt!32656 () Unit!1292)

(declare-fun lemmaSizeTrEqualsSize!7 (List!1820 Int) Unit!1292)

(assert (=> b!111954 (= lt!32656 (lemmaSizeTrEqualsSize!7 Nil!1814 0))))

(declare-fun sizeTr!7 (List!1820 Int) Int)

(assert (=> b!111954 (= (sizeTr!7 input!6708 0) (size!1583 input!6708))))

(declare-fun lt!32657 () Unit!1292)

(assert (=> b!111954 (= lt!32657 (lemmaSizeTrEqualsSize!7 input!6708 0))))

(declare-fun b!111955 () Bool)

(declare-fun e!62839 () Bool)

(declare-fun e!62836 () Bool)

(assert (=> b!111955 (= e!62839 e!62836)))

(declare-fun b!111956 () Bool)

(assert (=> b!111956 (= e!62835 tp_is_empty!957)))

(declare-fun b!111957 () Bool)

(declare-fun tp!60691 () Bool)

(assert (=> b!111957 (= e!62835 tp!60691)))

(declare-fun b!111958 () Bool)

(declare-fun res!53782 () Bool)

(assert (=> b!111958 (=> (not res!53782) (not e!62844))))

(declare-fun valid!296 (Cache!62) Bool)

(assert (=> b!111958 (= res!53782 (valid!296 cache!464))))

(declare-fun b!111959 () Bool)

(declare-fun tp!60684 () Bool)

(declare-fun tp!60693 () Bool)

(assert (=> b!111959 (= e!62835 (and tp!60684 tp!60693))))

(declare-fun b!111960 () Bool)

(declare-fun tp!60686 () Bool)

(declare-fun tp!60683 () Bool)

(assert (=> b!111960 (= e!62835 (and tp!60686 tp!60683))))

(declare-fun b!111961 () Bool)

(declare-fun e!62837 () Bool)

(assert (=> b!111961 (= e!62843 e!62837)))

(declare-fun mapNonEmpty!1252 () Bool)

(declare-fun tp!60688 () Bool)

(declare-fun tp!60687 () Bool)

(assert (=> mapNonEmpty!1252 (= mapRes!1252 (and tp!60688 tp!60687))))

(declare-fun mapValue!1252 () List!1819)

(declare-fun mapKey!1252 () (_ BitVec 32))

(declare-fun mapRest!1252 () (Array (_ BitVec 32) List!1819))

(assert (=> mapNonEmpty!1252 (= (arr!519 (_values!595 (v!13165 (underlying!833 (v!13166 (underlying!834 (cache!764 cache!464))))))) (store mapRest!1252 mapKey!1252 mapValue!1252))))

(declare-fun e!62838 () Bool)

(assert (=> b!111962 (= e!62837 (and e!62838 tp!60682))))

(declare-fun b!111963 () Bool)

(declare-fun lt!32655 () MutLongMap!317)

(get-info :version)

(assert (=> b!111963 (= e!62838 (and e!62839 ((_ is LongMap!317) lt!32655)))))

(assert (=> b!111963 (= lt!32655 (v!13166 (underlying!834 (cache!764 cache!464))))))

(declare-fun e!62840 () Bool)

(declare-fun tp!60689 () Bool)

(declare-fun tp!60685 () Bool)

(declare-fun array_inv!359 (array!1107) Bool)

(declare-fun array_inv!360 (array!1109) Bool)

(assert (=> b!111964 (= e!62840 (and tp!60690 tp!60685 tp!60689 (array_inv!359 (_keys!608 (v!13165 (underlying!833 (v!13166 (underlying!834 (cache!764 cache!464))))))) (array_inv!360 (_values!595 (v!13165 (underlying!833 (v!13166 (underlying!834 (cache!764 cache!464))))))) e!62841))))

(declare-fun b!111965 () Bool)

(assert (=> b!111965 (= e!62836 e!62840)))

(assert (= (and start!11530 res!53781) b!111958))

(assert (= (and b!111958 res!53782) b!111954))

(assert (= (and start!11530 ((_ is ElementMatch!451) r!15516)) b!111956))

(assert (= (and start!11530 ((_ is Concat!835) r!15516)) b!111959))

(assert (= (and start!11530 ((_ is Star!451) r!15516)) b!111957))

(assert (= (and start!11530 ((_ is Union!451) r!15516)) b!111960))

(assert (= (and b!111953 condMapEmpty!1252) mapIsEmpty!1252))

(assert (= (and b!111953 (not condMapEmpty!1252)) mapNonEmpty!1252))

(assert (= b!111964 b!111953))

(assert (= b!111965 b!111964))

(assert (= b!111955 b!111965))

(assert (= (and b!111963 ((_ is LongMap!317) (v!13166 (underlying!834 (cache!764 cache!464))))) b!111955))

(assert (= b!111962 b!111963))

(assert (= (and b!111961 ((_ is HashMap!313) (cache!764 cache!464))) b!111962))

(assert (= start!11530 b!111961))

(assert (= (and start!11530 ((_ is Cons!1814) input!6708)) b!111952))

(declare-fun m!102058 () Bool)

(assert (=> b!111958 m!102058))

(declare-fun m!102060 () Bool)

(assert (=> b!111954 m!102060))

(declare-fun m!102062 () Bool)

(assert (=> b!111954 m!102062))

(declare-fun m!102064 () Bool)

(assert (=> b!111954 m!102064))

(declare-fun m!102066 () Bool)

(assert (=> b!111954 m!102066))

(declare-fun m!102068 () Bool)

(assert (=> b!111954 m!102068))

(declare-fun m!102070 () Bool)

(assert (=> b!111954 m!102070))

(declare-fun m!102072 () Bool)

(assert (=> start!11530 m!102072))

(declare-fun m!102074 () Bool)

(assert (=> start!11530 m!102074))

(declare-fun m!102076 () Bool)

(assert (=> mapNonEmpty!1252 m!102076))

(declare-fun m!102078 () Bool)

(assert (=> b!111964 m!102078))

(declare-fun m!102080 () Bool)

(assert (=> b!111964 m!102080))

(check-sat (not b!111953) b_and!5627 (not b!111958) (not b!111959) (not b!111954) (not mapNonEmpty!1252) (not b_next!3499) tp_is_empty!957 (not b!111960) b_and!5629 (not b!111964) (not b!111957) (not b!111952) (not start!11530) (not b_next!3497))
(check-sat b_and!5629 b_and!5627 (not b_next!3497) (not b_next!3499))
(get-model)

(declare-fun d!28059 () Bool)

(declare-fun validCacheMap!9 (MutableMap!313) Bool)

(assert (=> d!28059 (= (valid!296 cache!464) (validCacheMap!9 (cache!764 cache!464)))))

(declare-fun bs!11749 () Bool)

(assert (= bs!11749 d!28059))

(declare-fun m!102082 () Bool)

(assert (=> bs!11749 m!102082))

(assert (=> b!111958 d!28059))

(declare-fun b!111984 () Bool)

(declare-fun res!53796 () Bool)

(declare-fun e!62861 () Bool)

(assert (=> b!111984 (=> (not res!53796) (not e!62861))))

(declare-fun call!4809 () Bool)

(assert (=> b!111984 (= res!53796 call!4809)))

(declare-fun e!62862 () Bool)

(assert (=> b!111984 (= e!62862 e!62861)))

(declare-fun b!111985 () Bool)

(declare-fun call!4807 () Bool)

(assert (=> b!111985 (= e!62861 call!4807)))

(declare-fun b!111986 () Bool)

(declare-fun e!62865 () Bool)

(assert (=> b!111986 (= e!62865 call!4807)))

(declare-fun b!111987 () Bool)

(declare-fun e!62864 () Bool)

(declare-fun call!4808 () Bool)

(assert (=> b!111987 (= e!62864 call!4808)))

(declare-fun d!28061 () Bool)

(declare-fun res!53793 () Bool)

(declare-fun e!62860 () Bool)

(assert (=> d!28061 (=> res!53793 e!62860)))

(assert (=> d!28061 (= res!53793 ((_ is ElementMatch!451) r!15516))))

(assert (=> d!28061 (= (validRegex!68 r!15516) e!62860)))

(declare-fun b!111988 () Bool)

(declare-fun e!62866 () Bool)

(assert (=> b!111988 (= e!62866 e!62864)))

(declare-fun res!53795 () Bool)

(declare-fun nullable!55 (Regex!451) Bool)

(assert (=> b!111988 (= res!53795 (not (nullable!55 (reg!780 r!15516))))))

(assert (=> b!111988 (=> (not res!53795) (not e!62864))))

(declare-fun c!26361 () Bool)

(declare-fun c!26362 () Bool)

(declare-fun bm!4802 () Bool)

(assert (=> bm!4802 (= call!4808 (validRegex!68 (ite c!26362 (reg!780 r!15516) (ite c!26361 (regTwo!1415 r!15516) (regTwo!1414 r!15516)))))))

(declare-fun bm!4803 () Bool)

(assert (=> bm!4803 (= call!4807 call!4808)))

(declare-fun bm!4804 () Bool)

(assert (=> bm!4804 (= call!4809 (validRegex!68 (ite c!26361 (regOne!1415 r!15516) (regOne!1414 r!15516))))))

(declare-fun b!111989 () Bool)

(declare-fun e!62863 () Bool)

(assert (=> b!111989 (= e!62863 e!62865)))

(declare-fun res!53794 () Bool)

(assert (=> b!111989 (=> (not res!53794) (not e!62865))))

(assert (=> b!111989 (= res!53794 call!4809)))

(declare-fun b!111990 () Bool)

(assert (=> b!111990 (= e!62866 e!62862)))

(assert (=> b!111990 (= c!26361 ((_ is Union!451) r!15516))))

(declare-fun b!111991 () Bool)

(declare-fun res!53797 () Bool)

(assert (=> b!111991 (=> res!53797 e!62863)))

(assert (=> b!111991 (= res!53797 (not ((_ is Concat!835) r!15516)))))

(assert (=> b!111991 (= e!62862 e!62863)))

(declare-fun b!111992 () Bool)

(assert (=> b!111992 (= e!62860 e!62866)))

(assert (=> b!111992 (= c!26362 ((_ is Star!451) r!15516))))

(assert (= (and d!28061 (not res!53793)) b!111992))

(assert (= (and b!111992 c!26362) b!111988))

(assert (= (and b!111992 (not c!26362)) b!111990))

(assert (= (and b!111988 res!53795) b!111987))

(assert (= (and b!111990 c!26361) b!111984))

(assert (= (and b!111990 (not c!26361)) b!111991))

(assert (= (and b!111984 res!53796) b!111985))

(assert (= (and b!111991 (not res!53797)) b!111989))

(assert (= (and b!111989 res!53794) b!111986))

(assert (= (or b!111985 b!111986) bm!4803))

(assert (= (or b!111984 b!111989) bm!4804))

(assert (= (or b!111987 bm!4803) bm!4802))

(declare-fun m!102084 () Bool)

(assert (=> b!111988 m!102084))

(declare-fun m!102086 () Bool)

(assert (=> bm!4802 m!102086))

(declare-fun m!102088 () Bool)

(assert (=> bm!4804 m!102088))

(assert (=> start!11530 d!28061))

(declare-fun d!28063 () Bool)

(declare-fun res!53800 () Bool)

(declare-fun e!62869 () Bool)

(assert (=> d!28063 (=> (not res!53800) (not e!62869))))

(assert (=> d!28063 (= res!53800 ((_ is HashMap!313) (cache!764 cache!464)))))

(assert (=> d!28063 (= (inv!2309 cache!464) e!62869)))

(declare-fun b!111995 () Bool)

(assert (=> b!111995 (= e!62869 (validCacheMap!9 (cache!764 cache!464)))))

(assert (= (and d!28063 res!53800) b!111995))

(assert (=> b!111995 m!102082))

(assert (=> start!11530 d!28063))

(declare-fun d!28065 () Bool)

(declare-fun c!26365 () Bool)

(assert (=> d!28065 (= c!26365 ((_ is Nil!1814) input!6708))))

(declare-fun e!62872 () Int)

(assert (=> d!28065 (= (sizeTr!7 input!6708 0) e!62872)))

(declare-fun b!112000 () Bool)

(assert (=> b!112000 (= e!62872 0)))

(declare-fun b!112001 () Bool)

(assert (=> b!112001 (= e!62872 (sizeTr!7 (t!22297 input!6708) (+ 0 1)))))

(assert (= (and d!28065 c!26365) b!112000))

(assert (= (and d!28065 (not c!26365)) b!112001))

(declare-fun m!102090 () Bool)

(assert (=> b!112001 m!102090))

(assert (=> b!111954 d!28065))

(declare-fun d!28067 () Bool)

(assert (=> d!28067 (= (sizeTr!7 input!6708 0) (+ (size!1583 input!6708) 0))))

(declare-fun lt!32660 () Unit!1292)

(declare-fun choose!1502 (List!1820 Int) Unit!1292)

(assert (=> d!28067 (= lt!32660 (choose!1502 input!6708 0))))

(assert (=> d!28067 (= (lemmaSizeTrEqualsSize!7 input!6708 0) lt!32660)))

(declare-fun bs!11750 () Bool)

(assert (= bs!11750 d!28067))

(assert (=> bs!11750 m!102060))

(assert (=> bs!11750 m!102066))

(declare-fun m!102092 () Bool)

(assert (=> bs!11750 m!102092))

(assert (=> b!111954 d!28067))

(declare-fun b!112010 () Bool)

(declare-fun e!62877 () List!1820)

(assert (=> b!112010 (= e!62877 input!6708)))

(declare-fun b!112011 () Bool)

(assert (=> b!112011 (= e!62877 (Cons!1814 (h!7211 Nil!1814) (++!301 (t!22297 Nil!1814) input!6708)))))

(declare-fun d!28069 () Bool)

(declare-fun e!62878 () Bool)

(assert (=> d!28069 e!62878))

(declare-fun res!53806 () Bool)

(assert (=> d!28069 (=> (not res!53806) (not e!62878))))

(declare-fun lt!32663 () List!1820)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!207 (List!1820) (InoxSet C!1824))

(assert (=> d!28069 (= res!53806 (= (content!207 lt!32663) ((_ map or) (content!207 Nil!1814) (content!207 input!6708))))))

(assert (=> d!28069 (= lt!32663 e!62877)))

(declare-fun c!26368 () Bool)

(assert (=> d!28069 (= c!26368 ((_ is Nil!1814) Nil!1814))))

(assert (=> d!28069 (= (++!301 Nil!1814 input!6708) lt!32663)))

(declare-fun b!112012 () Bool)

(declare-fun res!53805 () Bool)

(assert (=> b!112012 (=> (not res!53805) (not e!62878))))

(assert (=> b!112012 (= res!53805 (= (size!1583 lt!32663) (+ (size!1583 Nil!1814) (size!1583 input!6708))))))

(declare-fun b!112013 () Bool)

(assert (=> b!112013 (= e!62878 (or (not (= input!6708 Nil!1814)) (= lt!32663 Nil!1814)))))

(assert (= (and d!28069 c!26368) b!112010))

(assert (= (and d!28069 (not c!26368)) b!112011))

(assert (= (and d!28069 res!53806) b!112012))

(assert (= (and b!112012 res!53805) b!112013))

(declare-fun m!102094 () Bool)

(assert (=> b!112011 m!102094))

(declare-fun m!102096 () Bool)

(assert (=> d!28069 m!102096))

(declare-fun m!102098 () Bool)

(assert (=> d!28069 m!102098))

(declare-fun m!102100 () Bool)

(assert (=> d!28069 m!102100))

(declare-fun m!102102 () Bool)

(assert (=> b!112012 m!102102))

(assert (=> b!112012 m!102068))

(assert (=> b!112012 m!102066))

(assert (=> b!111954 d!28069))

(declare-fun d!28071 () Bool)

(assert (=> d!28071 (= (sizeTr!7 Nil!1814 0) (+ (size!1583 Nil!1814) 0))))

(declare-fun lt!32664 () Unit!1292)

(assert (=> d!28071 (= lt!32664 (choose!1502 Nil!1814 0))))

(assert (=> d!28071 (= (lemmaSizeTrEqualsSize!7 Nil!1814 0) lt!32664)))

(declare-fun bs!11751 () Bool)

(assert (= bs!11751 d!28071))

(declare-fun m!102104 () Bool)

(assert (=> bs!11751 m!102104))

(assert (=> bs!11751 m!102068))

(declare-fun m!102106 () Bool)

(assert (=> bs!11751 m!102106))

(assert (=> b!111954 d!28071))

(declare-fun d!28073 () Bool)

(declare-fun lt!32667 () Int)

(assert (=> d!28073 (>= lt!32667 0)))

(declare-fun e!62881 () Int)

(assert (=> d!28073 (= lt!32667 e!62881)))

(declare-fun c!26371 () Bool)

(assert (=> d!28073 (= c!26371 ((_ is Nil!1814) input!6708))))

(assert (=> d!28073 (= (size!1583 input!6708) lt!32667)))

(declare-fun b!112018 () Bool)

(assert (=> b!112018 (= e!62881 0)))

(declare-fun b!112019 () Bool)

(assert (=> b!112019 (= e!62881 (+ 1 (size!1583 (t!22297 input!6708))))))

(assert (= (and d!28073 c!26371) b!112018))

(assert (= (and d!28073 (not c!26371)) b!112019))

(declare-fun m!102108 () Bool)

(assert (=> b!112019 m!102108))

(assert (=> b!111954 d!28073))

(declare-fun d!28075 () Bool)

(declare-fun lt!32668 () Int)

(assert (=> d!28075 (>= lt!32668 0)))

(declare-fun e!62882 () Int)

(assert (=> d!28075 (= lt!32668 e!62882)))

(declare-fun c!26372 () Bool)

(assert (=> d!28075 (= c!26372 ((_ is Nil!1814) Nil!1814))))

(assert (=> d!28075 (= (size!1583 Nil!1814) lt!32668)))

(declare-fun b!112020 () Bool)

(assert (=> b!112020 (= e!62882 0)))

(declare-fun b!112021 () Bool)

(assert (=> b!112021 (= e!62882 (+ 1 (size!1583 (t!22297 Nil!1814))))))

(assert (= (and d!28075 c!26372) b!112020))

(assert (= (and d!28075 (not c!26372)) b!112021))

(declare-fun m!102110 () Bool)

(assert (=> b!112021 m!102110))

(assert (=> b!111954 d!28075))

(declare-fun d!28077 () Bool)

(assert (=> d!28077 (= (array_inv!359 (_keys!608 (v!13165 (underlying!833 (v!13166 (underlying!834 (cache!764 cache!464))))))) (bvsge (size!1581 (_keys!608 (v!13165 (underlying!833 (v!13166 (underlying!834 (cache!764 cache!464))))))) #b00000000000000000000000000000000))))

(assert (=> b!111964 d!28077))

(declare-fun d!28079 () Bool)

(assert (=> d!28079 (= (array_inv!360 (_values!595 (v!13165 (underlying!833 (v!13166 (underlying!834 (cache!764 cache!464))))))) (bvsge (size!1582 (_values!595 (v!13165 (underlying!833 (v!13166 (underlying!834 (cache!764 cache!464))))))) #b00000000000000000000000000000000))))

(assert (=> b!111964 d!28079))

(declare-fun tp!60701 () Bool)

(declare-fun b!112026 () Bool)

(declare-fun tp!60703 () Bool)

(declare-fun e!62885 () Bool)

(declare-fun tp!60702 () Bool)

(assert (=> b!112026 (= e!62885 (and tp!60701 tp_is_empty!957 tp!60702 tp!60703))))

(assert (=> b!111953 (= tp!60692 e!62885)))

(assert (= (and b!111953 ((_ is Cons!1813) mapDefault!1252)) b!112026))

(declare-fun b!112031 () Bool)

(declare-fun e!62888 () Bool)

(declare-fun tp!60706 () Bool)

(assert (=> b!112031 (= e!62888 (and tp_is_empty!957 tp!60706))))

(assert (=> b!111952 (= tp!60694 e!62888)))

(assert (= (and b!111952 ((_ is Cons!1814) (t!22297 input!6708))) b!112031))

(declare-fun mapNonEmpty!1255 () Bool)

(declare-fun mapRes!1255 () Bool)

(declare-fun tp!60724 () Bool)

(declare-fun e!62893 () Bool)

(assert (=> mapNonEmpty!1255 (= mapRes!1255 (and tp!60724 e!62893))))

(declare-fun mapValue!1255 () List!1819)

(declare-fun mapKey!1255 () (_ BitVec 32))

(declare-fun mapRest!1255 () (Array (_ BitVec 32) List!1819))

(assert (=> mapNonEmpty!1255 (= mapRest!1252 (store mapRest!1255 mapKey!1255 mapValue!1255))))

(declare-fun tp!60722 () Bool)

(declare-fun e!62894 () Bool)

(declare-fun b!112039 () Bool)

(declare-fun tp!60727 () Bool)

(declare-fun tp!60723 () Bool)

(assert (=> b!112039 (= e!62894 (and tp!60722 tp_is_empty!957 tp!60723 tp!60727))))

(declare-fun mapIsEmpty!1255 () Bool)

(assert (=> mapIsEmpty!1255 mapRes!1255))

(declare-fun b!112038 () Bool)

(declare-fun tp!60726 () Bool)

(declare-fun tp!60721 () Bool)

(declare-fun tp!60725 () Bool)

(assert (=> b!112038 (= e!62893 (and tp!60725 tp_is_empty!957 tp!60726 tp!60721))))

(declare-fun condMapEmpty!1255 () Bool)

(declare-fun mapDefault!1255 () List!1819)

(assert (=> mapNonEmpty!1252 (= condMapEmpty!1255 (= mapRest!1252 ((as const (Array (_ BitVec 32) List!1819)) mapDefault!1255)))))

(assert (=> mapNonEmpty!1252 (= tp!60688 (and e!62894 mapRes!1255))))

(assert (= (and mapNonEmpty!1252 condMapEmpty!1255) mapIsEmpty!1255))

(assert (= (and mapNonEmpty!1252 (not condMapEmpty!1255)) mapNonEmpty!1255))

(assert (= (and mapNonEmpty!1255 ((_ is Cons!1813) mapValue!1255)) b!112038))

(assert (= (and mapNonEmpty!1252 ((_ is Cons!1813) mapDefault!1255)) b!112039))

(declare-fun m!102112 () Bool)

(assert (=> mapNonEmpty!1255 m!102112))

(declare-fun tp!60730 () Bool)

(declare-fun e!62895 () Bool)

(declare-fun tp!60728 () Bool)

(declare-fun tp!60729 () Bool)

(declare-fun b!112040 () Bool)

(assert (=> b!112040 (= e!62895 (and tp!60728 tp_is_empty!957 tp!60729 tp!60730))))

(assert (=> mapNonEmpty!1252 (= tp!60687 e!62895)))

(assert (= (and mapNonEmpty!1252 ((_ is Cons!1813) mapValue!1252)) b!112040))

(declare-fun b!112052 () Bool)

(declare-fun e!62898 () Bool)

(declare-fun tp!60743 () Bool)

(declare-fun tp!60744 () Bool)

(assert (=> b!112052 (= e!62898 (and tp!60743 tp!60744))))

(declare-fun b!112054 () Bool)

(declare-fun tp!60745 () Bool)

(declare-fun tp!60741 () Bool)

(assert (=> b!112054 (= e!62898 (and tp!60745 tp!60741))))

(assert (=> b!111957 (= tp!60691 e!62898)))

(declare-fun b!112053 () Bool)

(declare-fun tp!60742 () Bool)

(assert (=> b!112053 (= e!62898 tp!60742)))

(declare-fun b!112051 () Bool)

(assert (=> b!112051 (= e!62898 tp_is_empty!957)))

(assert (= (and b!111957 ((_ is ElementMatch!451) (reg!780 r!15516))) b!112051))

(assert (= (and b!111957 ((_ is Concat!835) (reg!780 r!15516))) b!112052))

(assert (= (and b!111957 ((_ is Star!451) (reg!780 r!15516))) b!112053))

(assert (= (and b!111957 ((_ is Union!451) (reg!780 r!15516))) b!112054))

(declare-fun b!112056 () Bool)

(declare-fun e!62899 () Bool)

(declare-fun tp!60748 () Bool)

(declare-fun tp!60749 () Bool)

(assert (=> b!112056 (= e!62899 (and tp!60748 tp!60749))))

(declare-fun b!112058 () Bool)

(declare-fun tp!60750 () Bool)

(declare-fun tp!60746 () Bool)

(assert (=> b!112058 (= e!62899 (and tp!60750 tp!60746))))

(assert (=> b!111960 (= tp!60686 e!62899)))

(declare-fun b!112057 () Bool)

(declare-fun tp!60747 () Bool)

(assert (=> b!112057 (= e!62899 tp!60747)))

(declare-fun b!112055 () Bool)

(assert (=> b!112055 (= e!62899 tp_is_empty!957)))

(assert (= (and b!111960 ((_ is ElementMatch!451) (regOne!1415 r!15516))) b!112055))

(assert (= (and b!111960 ((_ is Concat!835) (regOne!1415 r!15516))) b!112056))

(assert (= (and b!111960 ((_ is Star!451) (regOne!1415 r!15516))) b!112057))

(assert (= (and b!111960 ((_ is Union!451) (regOne!1415 r!15516))) b!112058))

(declare-fun b!112060 () Bool)

(declare-fun e!62900 () Bool)

(declare-fun tp!60753 () Bool)

(declare-fun tp!60754 () Bool)

(assert (=> b!112060 (= e!62900 (and tp!60753 tp!60754))))

(declare-fun b!112062 () Bool)

(declare-fun tp!60755 () Bool)

(declare-fun tp!60751 () Bool)

(assert (=> b!112062 (= e!62900 (and tp!60755 tp!60751))))

(assert (=> b!111960 (= tp!60683 e!62900)))

(declare-fun b!112061 () Bool)

(declare-fun tp!60752 () Bool)

(assert (=> b!112061 (= e!62900 tp!60752)))

(declare-fun b!112059 () Bool)

(assert (=> b!112059 (= e!62900 tp_is_empty!957)))

(assert (= (and b!111960 ((_ is ElementMatch!451) (regTwo!1415 r!15516))) b!112059))

(assert (= (and b!111960 ((_ is Concat!835) (regTwo!1415 r!15516))) b!112060))

(assert (= (and b!111960 ((_ is Star!451) (regTwo!1415 r!15516))) b!112061))

(assert (= (and b!111960 ((_ is Union!451) (regTwo!1415 r!15516))) b!112062))

(declare-fun b!112064 () Bool)

(declare-fun e!62901 () Bool)

(declare-fun tp!60758 () Bool)

(declare-fun tp!60759 () Bool)

(assert (=> b!112064 (= e!62901 (and tp!60758 tp!60759))))

(declare-fun b!112066 () Bool)

(declare-fun tp!60760 () Bool)

(declare-fun tp!60756 () Bool)

(assert (=> b!112066 (= e!62901 (and tp!60760 tp!60756))))

(assert (=> b!111959 (= tp!60684 e!62901)))

(declare-fun b!112065 () Bool)

(declare-fun tp!60757 () Bool)

(assert (=> b!112065 (= e!62901 tp!60757)))

(declare-fun b!112063 () Bool)

(assert (=> b!112063 (= e!62901 tp_is_empty!957)))

(assert (= (and b!111959 ((_ is ElementMatch!451) (regOne!1414 r!15516))) b!112063))

(assert (= (and b!111959 ((_ is Concat!835) (regOne!1414 r!15516))) b!112064))

(assert (= (and b!111959 ((_ is Star!451) (regOne!1414 r!15516))) b!112065))

(assert (= (and b!111959 ((_ is Union!451) (regOne!1414 r!15516))) b!112066))

(declare-fun b!112068 () Bool)

(declare-fun e!62902 () Bool)

(declare-fun tp!60763 () Bool)

(declare-fun tp!60764 () Bool)

(assert (=> b!112068 (= e!62902 (and tp!60763 tp!60764))))

(declare-fun b!112070 () Bool)

(declare-fun tp!60765 () Bool)

(declare-fun tp!60761 () Bool)

(assert (=> b!112070 (= e!62902 (and tp!60765 tp!60761))))

(assert (=> b!111959 (= tp!60693 e!62902)))

(declare-fun b!112069 () Bool)

(declare-fun tp!60762 () Bool)

(assert (=> b!112069 (= e!62902 tp!60762)))

(declare-fun b!112067 () Bool)

(assert (=> b!112067 (= e!62902 tp_is_empty!957)))

(assert (= (and b!111959 ((_ is ElementMatch!451) (regTwo!1414 r!15516))) b!112067))

(assert (= (and b!111959 ((_ is Concat!835) (regTwo!1414 r!15516))) b!112068))

(assert (= (and b!111959 ((_ is Star!451) (regTwo!1414 r!15516))) b!112069))

(assert (= (and b!111959 ((_ is Union!451) (regTwo!1414 r!15516))) b!112070))

(declare-fun b!112071 () Bool)

(declare-fun tp!60766 () Bool)

(declare-fun e!62903 () Bool)

(declare-fun tp!60767 () Bool)

(declare-fun tp!60768 () Bool)

(assert (=> b!112071 (= e!62903 (and tp!60766 tp_is_empty!957 tp!60767 tp!60768))))

(assert (=> b!111964 (= tp!60685 e!62903)))

(assert (= (and b!111964 ((_ is Cons!1813) (zeroValue!573 (v!13165 (underlying!833 (v!13166 (underlying!834 (cache!764 cache!464)))))))) b!112071))

(declare-fun tp!60770 () Bool)

(declare-fun b!112072 () Bool)

(declare-fun e!62904 () Bool)

(declare-fun tp!60769 () Bool)

(declare-fun tp!60771 () Bool)

(assert (=> b!112072 (= e!62904 (and tp!60769 tp_is_empty!957 tp!60770 tp!60771))))

(assert (=> b!111964 (= tp!60689 e!62904)))

(assert (= (and b!111964 ((_ is Cons!1813) (minValue!573 (v!13165 (underlying!833 (v!13166 (underlying!834 (cache!764 cache!464)))))))) b!112072))

(check-sat (not b!111988) (not b!112001) (not b!112031) (not b!112054) (not b!112021) (not bm!4802) (not b!112065) tp_is_empty!957 (not b!112060) (not b!112052) (not b!112026) (not b!112069) (not b!112056) (not b!112019) (not b!112011) (not b!111995) (not b!112061) (not d!28059) (not b!112071) (not b!112038) (not b!112064) b_and!5627 (not b!112058) (not b!112039) (not b!112053) (not b_next!3499) (not b!112066) (not mapNonEmpty!1255) (not b!112068) (not b!112072) (not b!112057) (not d!28071) (not b_next!3497) (not b!112040) (not b!112012) b_and!5629 (not bm!4804) (not d!28069) (not d!28067) (not b!112062) (not b!112070))
(check-sat b_and!5629 b_and!5627 (not b_next!3497) (not b_next!3499))
