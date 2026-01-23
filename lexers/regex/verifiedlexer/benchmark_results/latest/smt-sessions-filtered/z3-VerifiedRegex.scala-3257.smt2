; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187810 () Bool)

(assert start!187810)

(declare-fun b!1874077 () Bool)

(declare-fun b_free!52061 () Bool)

(declare-fun b_next!52765 () Bool)

(assert (=> b!1874077 (= b_free!52061 (not b_next!52765))))

(declare-fun tp!533522 () Bool)

(declare-fun b_and!144347 () Bool)

(assert (=> b!1874077 (= tp!533522 b_and!144347)))

(declare-fun b!1874084 () Bool)

(declare-fun b_free!52063 () Bool)

(declare-fun b_next!52767 () Bool)

(assert (=> b!1874084 (= b_free!52063 (not b_next!52767))))

(declare-fun tp!533520 () Bool)

(declare-fun b_and!144349 () Bool)

(assert (=> b!1874084 (= tp!533520 b_and!144349)))

(declare-fun b!1874086 () Bool)

(declare-fun b_free!52065 () Bool)

(declare-fun b_next!52769 () Bool)

(assert (=> b!1874086 (= b_free!52065 (not b_next!52769))))

(declare-fun tp!533530 () Bool)

(declare-fun b_and!144351 () Bool)

(assert (=> b!1874086 (= tp!533530 b_and!144351)))

(declare-fun b!1874074 () Bool)

(declare-fun b_free!52067 () Bool)

(declare-fun b_next!52771 () Bool)

(assert (=> b!1874074 (= b_free!52067 (not b_next!52771))))

(declare-fun tp!533526 () Bool)

(declare-fun b_and!144353 () Bool)

(assert (=> b!1874074 (= tp!533526 b_and!144353)))

(declare-fun b!1874070 () Bool)

(declare-fun e!1195686 () Bool)

(declare-datatypes ((C!10324 0))(
  ( (C!10325 (val!6050 Int)) )
))
(declare-datatypes ((List!20890 0))(
  ( (Nil!20808) (Cons!20808 (h!26209 C!10324) (t!173107 List!20890)) )
))
(declare-fun input!3792 () List!20890)

(assert (=> b!1874070 (= e!1195686 (= input!3792 Nil!20808))))

(declare-datatypes ((Regex!5085 0))(
  ( (ElementMatch!5085 (c!305414 C!10324)) (Concat!8904 (regOne!10682 Regex!5085) (regTwo!10682 Regex!5085)) (EmptyExpr!5085) (Star!5085 (reg!5414 Regex!5085)) (EmptyLang!5085) (Union!5085 (regOne!10683 Regex!5085) (regTwo!10683 Regex!5085)) )
))
(declare-datatypes ((List!20891 0))(
  ( (Nil!20809) (Cons!20809 (h!26210 Regex!5085) (t!173108 List!20891)) )
))
(declare-datatypes ((Context!1946 0))(
  ( (Context!1947 (exprs!1473 List!20891)) )
))
(declare-datatypes ((tuple2!19944 0))(
  ( (tuple2!19945 (_1!11409 Context!1946) (_2!11409 C!10324)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!19946 0))(
  ( (tuple2!19947 (_1!11410 tuple2!19944) (_2!11410 (InoxSet Context!1946))) )
))
(declare-datatypes ((List!20892 0))(
  ( (Nil!20810) (Cons!20810 (h!26211 tuple2!19946) (t!173109 List!20892)) )
))
(declare-datatypes ((array!6680 0))(
  ( (array!6681 (arr!2967 (Array (_ BitVec 32) (_ BitVec 64))) (size!16511 (_ BitVec 32))) )
))
(declare-datatypes ((array!6682 0))(
  ( (array!6683 (arr!2968 (Array (_ BitVec 32) List!20892)) (size!16512 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3874 0))(
  ( (LongMapFixedSize!3875 (defaultEntry!2302 Int) (mask!5743 (_ BitVec 32)) (extraKeys!2185 (_ BitVec 32)) (zeroValue!2195 List!20892) (minValue!2195 List!20892) (_size!3925 (_ BitVec 32)) (_keys!2234 array!6680) (_values!2217 array!6682) (_vacant!1998 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7573 0))(
  ( (Cell!7574 (v!26175 LongMapFixedSize!3874)) )
))
(declare-datatypes ((MutLongMap!1937 0))(
  ( (LongMap!1937 (underlying!4067 Cell!7573)) (MutLongMapExt!1936 (__x!13046 Int)) )
))
(declare-datatypes ((Cell!7575 0))(
  ( (Cell!7576 (v!26176 MutLongMap!1937)) )
))
(declare-datatypes ((Hashable!1851 0))(
  ( (HashableExt!1850 (__x!13047 Int)) )
))
(declare-datatypes ((MutableMap!1851 0))(
  ( (MutableMapExt!1850 (__x!13048 Int)) (HashMap!1851 (underlying!4068 Cell!7575) (hashF!3774 Hashable!1851) (_size!3926 (_ BitVec 32)) (defaultValue!2013 Int)) )
))
(declare-datatypes ((CacheUp!1150 0))(
  ( (CacheUp!1151 (cache!2232 MutableMap!1851)) )
))
(declare-fun cacheUp!808 () CacheUp!1150)

(declare-fun z!679 () (InoxSet Context!1946))

(declare-datatypes ((tuple3!1946 0))(
  ( (tuple3!1947 (_1!11411 Regex!5085) (_2!11411 Context!1946) (_3!1437 C!10324)) )
))
(declare-datatypes ((tuple2!19948 0))(
  ( (tuple2!19949 (_1!11412 tuple3!1946) (_2!11412 (InoxSet Context!1946))) )
))
(declare-datatypes ((List!20893 0))(
  ( (Nil!20811) (Cons!20811 (h!26212 tuple2!19948) (t!173110 List!20893)) )
))
(declare-datatypes ((array!6684 0))(
  ( (array!6685 (arr!2969 (Array (_ BitVec 32) List!20893)) (size!16513 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3876 0))(
  ( (LongMapFixedSize!3877 (defaultEntry!2303 Int) (mask!5744 (_ BitVec 32)) (extraKeys!2186 (_ BitVec 32)) (zeroValue!2196 List!20893) (minValue!2196 List!20893) (_size!3927 (_ BitVec 32)) (_keys!2235 array!6680) (_values!2218 array!6684) (_vacant!1999 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7577 0))(
  ( (Cell!7578 (v!26177 LongMapFixedSize!3876)) )
))
(declare-datatypes ((MutLongMap!1938 0))(
  ( (LongMap!1938 (underlying!4069 Cell!7577)) (MutLongMapExt!1937 (__x!13049 Int)) )
))
(declare-datatypes ((Hashable!1852 0))(
  ( (HashableExt!1851 (__x!13050 Int)) )
))
(declare-datatypes ((Cell!7579 0))(
  ( (Cell!7580 (v!26178 MutLongMap!1938)) )
))
(declare-datatypes ((MutableMap!1852 0))(
  ( (MutableMapExt!1851 (__x!13051 Int)) (HashMap!1852 (underlying!4070 Cell!7579) (hashF!3775 Hashable!1852) (_size!3928 (_ BitVec 32)) (defaultValue!2014 Int)) )
))
(declare-datatypes ((CacheDown!1146 0))(
  ( (CacheDown!1147 (cache!2233 MutableMap!1852)) )
))
(declare-fun cacheDown!927 () CacheDown!1146)

(declare-datatypes ((tuple3!1948 0))(
  ( (tuple3!1949 (_1!11413 (InoxSet Context!1946)) (_2!11413 CacheUp!1150) (_3!1438 CacheDown!1146)) )
))
(declare-fun lt!719973 () tuple3!1948)

(declare-fun derivationStepZipperMem!3 ((InoxSet Context!1946) C!10324 CacheUp!1150 CacheDown!1146) tuple3!1948)

(declare-fun head!4351 (List!20890) C!10324)

(assert (=> b!1874070 (= lt!719973 (derivationStepZipperMem!3 z!679 (head!4351 input!3792) cacheUp!808 cacheDown!927))))

(declare-fun b!1874071 () Bool)

(declare-fun e!1195696 () Bool)

(declare-fun e!1195698 () Bool)

(assert (=> b!1874071 (= e!1195696 e!1195698)))

(declare-fun b!1874072 () Bool)

(declare-fun e!1195692 () Bool)

(declare-fun tp_is_empty!8867 () Bool)

(declare-fun tp!533516 () Bool)

(assert (=> b!1874072 (= e!1195692 (and tp_is_empty!8867 tp!533516))))

(declare-fun b!1874073 () Bool)

(declare-fun e!1195689 () Bool)

(assert (=> b!1874073 (= e!1195689 e!1195696)))

(declare-fun e!1195687 () Bool)

(declare-fun setNonEmpty!11503 () Bool)

(declare-fun setElem!11503 () Context!1946)

(declare-fun tp!533527 () Bool)

(declare-fun setRes!11503 () Bool)

(declare-fun inv!27622 (Context!1946) Bool)

(assert (=> setNonEmpty!11503 (= setRes!11503 (and tp!533527 (inv!27622 setElem!11503) e!1195687))))

(declare-fun setRest!11503 () (InoxSet Context!1946))

(assert (=> setNonEmpty!11503 (= z!679 ((_ map or) (store ((as const (Array Context!1946 Bool)) false) setElem!11503 true) setRest!11503))))

(declare-fun setIsEmpty!11503 () Bool)

(assert (=> setIsEmpty!11503 setRes!11503))

(declare-fun e!1195685 () Bool)

(declare-fun e!1195681 () Bool)

(assert (=> b!1874074 (= e!1195685 (and e!1195681 tp!533526))))

(declare-fun b!1874075 () Bool)

(declare-fun e!1195691 () Bool)

(declare-fun tp!533519 () Bool)

(declare-fun mapRes!8984 () Bool)

(assert (=> b!1874075 (= e!1195691 (and tp!533519 mapRes!8984))))

(declare-fun condMapEmpty!8984 () Bool)

(declare-fun mapDefault!8984 () List!20892)

(assert (=> b!1874075 (= condMapEmpty!8984 (= (arr!2968 (_values!2217 (v!26175 (underlying!4067 (v!26176 (underlying!4068 (cache!2232 cacheUp!808))))))) ((as const (Array (_ BitVec 32) List!20892)) mapDefault!8984)))))

(declare-fun mapIsEmpty!8984 () Bool)

(assert (=> mapIsEmpty!8984 mapRes!8984))

(declare-fun mapNonEmpty!8984 () Bool)

(declare-fun mapRes!8985 () Bool)

(declare-fun tp!533525 () Bool)

(declare-fun tp!533523 () Bool)

(assert (=> mapNonEmpty!8984 (= mapRes!8985 (and tp!533525 tp!533523))))

(declare-fun mapRest!8984 () (Array (_ BitVec 32) List!20893))

(declare-fun mapKey!8985 () (_ BitVec 32))

(declare-fun mapValue!8984 () List!20893)

(assert (=> mapNonEmpty!8984 (= (arr!2969 (_values!2218 (v!26177 (underlying!4069 (v!26178 (underlying!4070 (cache!2233 cacheDown!927))))))) (store mapRest!8984 mapKey!8985 mapValue!8984))))

(declare-fun mapIsEmpty!8985 () Bool)

(assert (=> mapIsEmpty!8985 mapRes!8985))

(declare-fun tp!533528 () Bool)

(declare-fun e!1195684 () Bool)

(declare-fun tp!533524 () Bool)

(declare-fun array_inv!2133 (array!6680) Bool)

(declare-fun array_inv!2134 (array!6684) Bool)

(assert (=> b!1874077 (= e!1195698 (and tp!533522 tp!533528 tp!533524 (array_inv!2133 (_keys!2235 (v!26177 (underlying!4069 (v!26178 (underlying!4070 (cache!2233 cacheDown!927))))))) (array_inv!2134 (_values!2218 (v!26177 (underlying!4069 (v!26178 (underlying!4070 (cache!2233 cacheDown!927))))))) e!1195684))))

(declare-fun b!1874078 () Bool)

(declare-fun tp!533521 () Bool)

(assert (=> b!1874078 (= e!1195684 (and tp!533521 mapRes!8985))))

(declare-fun condMapEmpty!8985 () Bool)

(declare-fun mapDefault!8985 () List!20893)

(assert (=> b!1874078 (= condMapEmpty!8985 (= (arr!2969 (_values!2218 (v!26177 (underlying!4069 (v!26178 (underlying!4070 (cache!2233 cacheDown!927))))))) ((as const (Array (_ BitVec 32) List!20893)) mapDefault!8985)))))

(declare-fun b!1874079 () Bool)

(declare-fun e!1195683 () Bool)

(assert (=> b!1874079 (= e!1195683 e!1195685)))

(declare-fun b!1874080 () Bool)

(declare-fun e!1195690 () Bool)

(declare-fun lt!719971 () MutLongMap!1937)

(get-info :version)

(assert (=> b!1874080 (= e!1195681 (and e!1195690 ((_ is LongMap!1937) lt!719971)))))

(assert (=> b!1874080 (= lt!719971 (v!26176 (underlying!4068 (cache!2232 cacheUp!808))))))

(declare-fun b!1874081 () Bool)

(declare-fun e!1195695 () Bool)

(assert (=> b!1874081 (= e!1195690 e!1195695)))

(declare-fun b!1874076 () Bool)

(declare-fun e!1195694 () Bool)

(declare-fun e!1195688 () Bool)

(assert (=> b!1874076 (= e!1195694 e!1195688)))

(declare-fun res!838413 () Bool)

(assert (=> start!187810 (=> (not res!838413) (not e!1195686))))

(declare-fun isEmpty!12962 (List!20890) Bool)

(assert (=> start!187810 (= res!838413 (not (isEmpty!12962 input!3792)))))

(assert (=> start!187810 e!1195686))

(assert (=> start!187810 e!1195692))

(declare-fun condSetEmpty!11503 () Bool)

(assert (=> start!187810 (= condSetEmpty!11503 (= z!679 ((as const (Array Context!1946 Bool)) false)))))

(assert (=> start!187810 setRes!11503))

(declare-fun inv!27623 (CacheUp!1150) Bool)

(assert (=> start!187810 (and (inv!27623 cacheUp!808) e!1195683)))

(declare-fun inv!27624 (CacheDown!1146) Bool)

(assert (=> start!187810 (and (inv!27624 cacheDown!927) e!1195694)))

(declare-fun b!1874082 () Bool)

(declare-fun tp!533529 () Bool)

(assert (=> b!1874082 (= e!1195687 tp!533529)))

(declare-fun mapNonEmpty!8985 () Bool)

(declare-fun tp!533515 () Bool)

(declare-fun tp!533514 () Bool)

(assert (=> mapNonEmpty!8985 (= mapRes!8984 (and tp!533515 tp!533514))))

(declare-fun mapRest!8985 () (Array (_ BitVec 32) List!20892))

(declare-fun mapValue!8985 () List!20892)

(declare-fun mapKey!8984 () (_ BitVec 32))

(assert (=> mapNonEmpty!8985 (= (arr!2968 (_values!2217 (v!26175 (underlying!4067 (v!26176 (underlying!4068 (cache!2232 cacheUp!808))))))) (store mapRest!8985 mapKey!8984 mapValue!8985))))

(declare-fun b!1874083 () Bool)

(declare-fun e!1195697 () Bool)

(declare-fun lt!719972 () MutLongMap!1938)

(assert (=> b!1874083 (= e!1195697 (and e!1195689 ((_ is LongMap!1938) lt!719972)))))

(assert (=> b!1874083 (= lt!719972 (v!26178 (underlying!4070 (cache!2233 cacheDown!927))))))

(declare-fun tp!533518 () Bool)

(declare-fun tp!533517 () Bool)

(declare-fun e!1195693 () Bool)

(declare-fun array_inv!2135 (array!6682) Bool)

(assert (=> b!1874084 (= e!1195693 (and tp!533520 tp!533517 tp!533518 (array_inv!2133 (_keys!2234 (v!26175 (underlying!4067 (v!26176 (underlying!4068 (cache!2232 cacheUp!808))))))) (array_inv!2135 (_values!2217 (v!26175 (underlying!4067 (v!26176 (underlying!4068 (cache!2232 cacheUp!808))))))) e!1195691))))

(declare-fun b!1874085 () Bool)

(assert (=> b!1874085 (= e!1195695 e!1195693)))

(assert (=> b!1874086 (= e!1195688 (and e!1195697 tp!533530))))

(assert (= (and start!187810 res!838413) b!1874070))

(assert (= (and start!187810 ((_ is Cons!20808) input!3792)) b!1874072))

(assert (= (and start!187810 condSetEmpty!11503) setIsEmpty!11503))

(assert (= (and start!187810 (not condSetEmpty!11503)) setNonEmpty!11503))

(assert (= setNonEmpty!11503 b!1874082))

(assert (= (and b!1874075 condMapEmpty!8984) mapIsEmpty!8984))

(assert (= (and b!1874075 (not condMapEmpty!8984)) mapNonEmpty!8985))

(assert (= b!1874084 b!1874075))

(assert (= b!1874085 b!1874084))

(assert (= b!1874081 b!1874085))

(assert (= (and b!1874080 ((_ is LongMap!1937) (v!26176 (underlying!4068 (cache!2232 cacheUp!808))))) b!1874081))

(assert (= b!1874074 b!1874080))

(assert (= (and b!1874079 ((_ is HashMap!1851) (cache!2232 cacheUp!808))) b!1874074))

(assert (= start!187810 b!1874079))

(assert (= (and b!1874078 condMapEmpty!8985) mapIsEmpty!8985))

(assert (= (and b!1874078 (not condMapEmpty!8985)) mapNonEmpty!8984))

(assert (= b!1874077 b!1874078))

(assert (= b!1874071 b!1874077))

(assert (= b!1874073 b!1874071))

(assert (= (and b!1874083 ((_ is LongMap!1938) (v!26178 (underlying!4070 (cache!2233 cacheDown!927))))) b!1874073))

(assert (= b!1874086 b!1874083))

(assert (= (and b!1874076 ((_ is HashMap!1852) (cache!2233 cacheDown!927))) b!1874086))

(assert (= start!187810 b!1874076))

(declare-fun m!2299165 () Bool)

(assert (=> start!187810 m!2299165))

(declare-fun m!2299167 () Bool)

(assert (=> start!187810 m!2299167))

(declare-fun m!2299169 () Bool)

(assert (=> start!187810 m!2299169))

(declare-fun m!2299171 () Bool)

(assert (=> b!1874084 m!2299171))

(declare-fun m!2299173 () Bool)

(assert (=> b!1874084 m!2299173))

(declare-fun m!2299175 () Bool)

(assert (=> setNonEmpty!11503 m!2299175))

(declare-fun m!2299177 () Bool)

(assert (=> b!1874070 m!2299177))

(assert (=> b!1874070 m!2299177))

(declare-fun m!2299179 () Bool)

(assert (=> b!1874070 m!2299179))

(declare-fun m!2299181 () Bool)

(assert (=> mapNonEmpty!8984 m!2299181))

(declare-fun m!2299183 () Bool)

(assert (=> mapNonEmpty!8985 m!2299183))

(declare-fun m!2299185 () Bool)

(assert (=> b!1874077 m!2299185))

(declare-fun m!2299187 () Bool)

(assert (=> b!1874077 m!2299187))

(check-sat (not mapNonEmpty!8985) (not b!1874077) (not b_next!52767) b_and!144347 tp_is_empty!8867 (not b!1874075) (not mapNonEmpty!8984) (not b!1874078) (not b_next!52771) (not b!1874084) b_and!144351 (not b!1874072) (not start!187810) b_and!144349 b_and!144353 (not b_next!52769) (not b!1874070) (not b_next!52765) (not setNonEmpty!11503) (not b!1874082))
(check-sat (not b_next!52767) b_and!144347 (not b_next!52765) (not b_next!52771) b_and!144351 b_and!144349 b_and!144353 (not b_next!52769))
(get-model)

(declare-fun d!572710 () Bool)

(declare-fun lambda!73774 () Int)

(declare-fun forall!4417 (List!20891 Int) Bool)

(assert (=> d!572710 (= (inv!27622 setElem!11503) (forall!4417 (exprs!1473 setElem!11503) lambda!73774))))

(declare-fun bs!412143 () Bool)

(assert (= bs!412143 d!572710))

(declare-fun m!2299189 () Bool)

(assert (=> bs!412143 m!2299189))

(assert (=> setNonEmpty!11503 d!572710))

(declare-fun d!572712 () Bool)

(assert (=> d!572712 (= (array_inv!2133 (_keys!2234 (v!26175 (underlying!4067 (v!26176 (underlying!4068 (cache!2232 cacheUp!808))))))) (bvsge (size!16511 (_keys!2234 (v!26175 (underlying!4067 (v!26176 (underlying!4068 (cache!2232 cacheUp!808))))))) #b00000000000000000000000000000000))))

(assert (=> b!1874084 d!572712))

(declare-fun d!572714 () Bool)

(assert (=> d!572714 (= (array_inv!2135 (_values!2217 (v!26175 (underlying!4067 (v!26176 (underlying!4068 (cache!2232 cacheUp!808))))))) (bvsge (size!16512 (_values!2217 (v!26175 (underlying!4067 (v!26176 (underlying!4068 (cache!2232 cacheUp!808))))))) #b00000000000000000000000000000000))))

(assert (=> b!1874084 d!572714))

(declare-fun d!572716 () Bool)

(assert (=> d!572716 (= (isEmpty!12962 input!3792) ((_ is Nil!20808) input!3792))))

(assert (=> start!187810 d!572716))

(declare-fun d!572718 () Bool)

(declare-fun res!838416 () Bool)

(declare-fun e!1195702 () Bool)

(assert (=> d!572718 (=> (not res!838416) (not e!1195702))))

(assert (=> d!572718 (= res!838416 ((_ is HashMap!1851) (cache!2232 cacheUp!808)))))

(assert (=> d!572718 (= (inv!27623 cacheUp!808) e!1195702)))

(declare-fun b!1874089 () Bool)

(declare-fun validCacheMapUp!179 (MutableMap!1851) Bool)

(assert (=> b!1874089 (= e!1195702 (validCacheMapUp!179 (cache!2232 cacheUp!808)))))

(assert (= (and d!572718 res!838416) b!1874089))

(declare-fun m!2299191 () Bool)

(assert (=> b!1874089 m!2299191))

(assert (=> start!187810 d!572718))

(declare-fun d!572720 () Bool)

(declare-fun res!838419 () Bool)

(declare-fun e!1195705 () Bool)

(assert (=> d!572720 (=> (not res!838419) (not e!1195705))))

(assert (=> d!572720 (= res!838419 ((_ is HashMap!1852) (cache!2233 cacheDown!927)))))

(assert (=> d!572720 (= (inv!27624 cacheDown!927) e!1195705)))

(declare-fun b!1874092 () Bool)

(declare-fun validCacheMapDown!177 (MutableMap!1852) Bool)

(assert (=> b!1874092 (= e!1195705 (validCacheMapDown!177 (cache!2233 cacheDown!927)))))

(assert (= (and d!572720 res!838419) b!1874092))

(declare-fun m!2299193 () Bool)

(assert (=> b!1874092 m!2299193))

(assert (=> start!187810 d!572720))

(declare-fun d!572722 () Bool)

(assert (=> d!572722 (= (array_inv!2133 (_keys!2235 (v!26177 (underlying!4069 (v!26178 (underlying!4070 (cache!2233 cacheDown!927))))))) (bvsge (size!16511 (_keys!2235 (v!26177 (underlying!4069 (v!26178 (underlying!4070 (cache!2233 cacheDown!927))))))) #b00000000000000000000000000000000))))

(assert (=> b!1874077 d!572722))

(declare-fun d!572724 () Bool)

(assert (=> d!572724 (= (array_inv!2134 (_values!2218 (v!26177 (underlying!4069 (v!26178 (underlying!4070 (cache!2233 cacheDown!927))))))) (bvsge (size!16513 (_values!2218 (v!26177 (underlying!4069 (v!26178 (underlying!4070 (cache!2233 cacheDown!927))))))) #b00000000000000000000000000000000))))

(assert (=> b!1874077 d!572724))

(declare-fun d!572726 () Bool)

(declare-fun e!1195708 () Bool)

(assert (=> d!572726 e!1195708))

(declare-fun res!838424 () Bool)

(assert (=> d!572726 (=> (not res!838424) (not e!1195708))))

(declare-fun lt!719976 () tuple3!1948)

(declare-fun derivationStepZipper!75 ((InoxSet Context!1946) C!10324) (InoxSet Context!1946))

(assert (=> d!572726 (= res!838424 (= (_1!11413 lt!719976) (derivationStepZipper!75 z!679 (head!4351 input!3792))))))

(declare-fun choose!11766 ((InoxSet Context!1946) C!10324 CacheUp!1150 CacheDown!1146) tuple3!1948)

(assert (=> d!572726 (= lt!719976 (choose!11766 z!679 (head!4351 input!3792) cacheUp!808 cacheDown!927))))

(assert (=> d!572726 (= (derivationStepZipperMem!3 z!679 (head!4351 input!3792) cacheUp!808 cacheDown!927) lt!719976)))

(declare-fun b!1874097 () Bool)

(declare-fun res!838425 () Bool)

(assert (=> b!1874097 (=> (not res!838425) (not e!1195708))))

(declare-fun valid!1561 (CacheUp!1150) Bool)

(assert (=> b!1874097 (= res!838425 (valid!1561 (_2!11413 lt!719976)))))

(declare-fun b!1874098 () Bool)

(declare-fun valid!1562 (CacheDown!1146) Bool)

(assert (=> b!1874098 (= e!1195708 (valid!1562 (_3!1438 lt!719976)))))

(assert (= (and d!572726 res!838424) b!1874097))

(assert (= (and b!1874097 res!838425) b!1874098))

(assert (=> d!572726 m!2299177))

(declare-fun m!2299195 () Bool)

(assert (=> d!572726 m!2299195))

(assert (=> d!572726 m!2299177))

(declare-fun m!2299197 () Bool)

(assert (=> d!572726 m!2299197))

(declare-fun m!2299199 () Bool)

(assert (=> b!1874097 m!2299199))

(declare-fun m!2299201 () Bool)

(assert (=> b!1874098 m!2299201))

(assert (=> b!1874070 d!572726))

(declare-fun d!572728 () Bool)

(assert (=> d!572728 (= (head!4351 input!3792) (h!26209 input!3792))))

(assert (=> b!1874070 d!572728))

(declare-fun setRes!11508 () Bool)

(declare-fun tp!533557 () Bool)

(declare-fun setNonEmpty!11508 () Bool)

(declare-fun setElem!11509 () Context!1946)

(declare-fun e!1195725 () Bool)

(assert (=> setNonEmpty!11508 (= setRes!11508 (and tp!533557 (inv!27622 setElem!11509) e!1195725))))

(declare-fun mapValue!8988 () List!20893)

(declare-fun setRest!11509 () (InoxSet Context!1946))

(assert (=> setNonEmpty!11508 (= (_2!11412 (h!26212 mapValue!8988)) ((_ map or) (store ((as const (Array Context!1946 Bool)) false) setElem!11509 true) setRest!11509))))

(declare-fun setIsEmpty!11508 () Bool)

(assert (=> setIsEmpty!11508 setRes!11508))

(declare-fun e!1195722 () Bool)

(declare-fun setElem!11508 () Context!1946)

(declare-fun setNonEmpty!11509 () Bool)

(declare-fun tp!533553 () Bool)

(declare-fun setRes!11509 () Bool)

(assert (=> setNonEmpty!11509 (= setRes!11509 (and tp!533553 (inv!27622 setElem!11508) e!1195722))))

(declare-fun mapDefault!8988 () List!20893)

(declare-fun setRest!11508 () (InoxSet Context!1946))

(assert (=> setNonEmpty!11509 (= (_2!11412 (h!26212 mapDefault!8988)) ((_ map or) (store ((as const (Array Context!1946 Bool)) false) setElem!11508 true) setRest!11508))))

(declare-fun mapNonEmpty!8988 () Bool)

(declare-fun mapRes!8988 () Bool)

(declare-fun tp!533558 () Bool)

(declare-fun e!1195726 () Bool)

(assert (=> mapNonEmpty!8988 (= mapRes!8988 (and tp!533558 e!1195726))))

(declare-fun mapRest!8988 () (Array (_ BitVec 32) List!20893))

(declare-fun mapKey!8988 () (_ BitVec 32))

(assert (=> mapNonEmpty!8988 (= mapRest!8984 (store mapRest!8988 mapKey!8988 mapValue!8988))))

(declare-fun b!1874113 () Bool)

(declare-fun e!1195724 () Bool)

(declare-fun tp!533562 () Bool)

(assert (=> b!1874113 (= e!1195724 tp!533562)))

(declare-fun setIsEmpty!11509 () Bool)

(assert (=> setIsEmpty!11509 setRes!11509))

(declare-fun e!1195723 () Bool)

(declare-fun b!1874114 () Bool)

(declare-fun tp!533555 () Bool)

(declare-fun tp!533556 () Bool)

(assert (=> b!1874114 (= e!1195723 (and tp!533555 (inv!27622 (_2!11411 (_1!11412 (h!26212 mapDefault!8988)))) e!1195724 tp_is_empty!8867 setRes!11509 tp!533556))))

(declare-fun condSetEmpty!11508 () Bool)

(assert (=> b!1874114 (= condSetEmpty!11508 (= (_2!11412 (h!26212 mapDefault!8988)) ((as const (Array Context!1946 Bool)) false)))))

(declare-fun b!1874115 () Bool)

(declare-fun tp!533563 () Bool)

(declare-fun tp!533560 () Bool)

(declare-fun e!1195721 () Bool)

(assert (=> b!1874115 (= e!1195726 (and tp!533563 (inv!27622 (_2!11411 (_1!11412 (h!26212 mapValue!8988)))) e!1195721 tp_is_empty!8867 setRes!11508 tp!533560))))

(declare-fun condSetEmpty!11509 () Bool)

(assert (=> b!1874115 (= condSetEmpty!11509 (= (_2!11412 (h!26212 mapValue!8988)) ((as const (Array Context!1946 Bool)) false)))))

(declare-fun b!1874116 () Bool)

(declare-fun tp!533559 () Bool)

(assert (=> b!1874116 (= e!1195722 tp!533559)))

(declare-fun mapIsEmpty!8988 () Bool)

(assert (=> mapIsEmpty!8988 mapRes!8988))

(declare-fun b!1874117 () Bool)

(declare-fun tp!533554 () Bool)

(assert (=> b!1874117 (= e!1195725 tp!533554)))

(declare-fun b!1874118 () Bool)

(declare-fun tp!533561 () Bool)

(assert (=> b!1874118 (= e!1195721 tp!533561)))

(declare-fun condMapEmpty!8988 () Bool)

(assert (=> mapNonEmpty!8984 (= condMapEmpty!8988 (= mapRest!8984 ((as const (Array (_ BitVec 32) List!20893)) mapDefault!8988)))))

(assert (=> mapNonEmpty!8984 (= tp!533525 (and e!1195723 mapRes!8988))))

(assert (= (and mapNonEmpty!8984 condMapEmpty!8988) mapIsEmpty!8988))

(assert (= (and mapNonEmpty!8984 (not condMapEmpty!8988)) mapNonEmpty!8988))

(assert (= b!1874115 b!1874118))

(assert (= (and b!1874115 condSetEmpty!11509) setIsEmpty!11508))

(assert (= (and b!1874115 (not condSetEmpty!11509)) setNonEmpty!11508))

(assert (= setNonEmpty!11508 b!1874117))

(assert (= (and mapNonEmpty!8988 ((_ is Cons!20811) mapValue!8988)) b!1874115))

(assert (= b!1874114 b!1874113))

(assert (= (and b!1874114 condSetEmpty!11508) setIsEmpty!11509))

(assert (= (and b!1874114 (not condSetEmpty!11508)) setNonEmpty!11509))

(assert (= setNonEmpty!11509 b!1874116))

(assert (= (and mapNonEmpty!8984 ((_ is Cons!20811) mapDefault!8988)) b!1874114))

(declare-fun m!2299203 () Bool)

(assert (=> setNonEmpty!11508 m!2299203))

(declare-fun m!2299205 () Bool)

(assert (=> b!1874114 m!2299205))

(declare-fun m!2299207 () Bool)

(assert (=> b!1874115 m!2299207))

(declare-fun m!2299209 () Bool)

(assert (=> mapNonEmpty!8988 m!2299209))

(declare-fun m!2299211 () Bool)

(assert (=> setNonEmpty!11509 m!2299211))

(declare-fun setIsEmpty!11512 () Bool)

(declare-fun setRes!11512 () Bool)

(assert (=> setIsEmpty!11512 setRes!11512))

(declare-fun e!1195735 () Bool)

(assert (=> mapNonEmpty!8984 (= tp!533523 e!1195735)))

(declare-fun b!1874127 () Bool)

(declare-fun e!1195734 () Bool)

(declare-fun tp!533575 () Bool)

(assert (=> b!1874127 (= e!1195734 tp!533575)))

(declare-fun tp!533576 () Bool)

(declare-fun setElem!11512 () Context!1946)

(declare-fun setNonEmpty!11512 () Bool)

(assert (=> setNonEmpty!11512 (= setRes!11512 (and tp!533576 (inv!27622 setElem!11512) e!1195734))))

(declare-fun setRest!11512 () (InoxSet Context!1946))

(assert (=> setNonEmpty!11512 (= (_2!11412 (h!26212 mapValue!8984)) ((_ map or) (store ((as const (Array Context!1946 Bool)) false) setElem!11512 true) setRest!11512))))

(declare-fun tp!533578 () Bool)

(declare-fun tp!533574 () Bool)

(declare-fun e!1195733 () Bool)

(declare-fun b!1874128 () Bool)

(assert (=> b!1874128 (= e!1195735 (and tp!533574 (inv!27622 (_2!11411 (_1!11412 (h!26212 mapValue!8984)))) e!1195733 tp_is_empty!8867 setRes!11512 tp!533578))))

(declare-fun condSetEmpty!11512 () Bool)

(assert (=> b!1874128 (= condSetEmpty!11512 (= (_2!11412 (h!26212 mapValue!8984)) ((as const (Array Context!1946 Bool)) false)))))

(declare-fun b!1874129 () Bool)

(declare-fun tp!533577 () Bool)

(assert (=> b!1874129 (= e!1195733 tp!533577)))

(assert (= b!1874128 b!1874129))

(assert (= (and b!1874128 condSetEmpty!11512) setIsEmpty!11512))

(assert (= (and b!1874128 (not condSetEmpty!11512)) setNonEmpty!11512))

(assert (= setNonEmpty!11512 b!1874127))

(assert (= (and mapNonEmpty!8984 ((_ is Cons!20811) mapValue!8984)) b!1874128))

(declare-fun m!2299213 () Bool)

(assert (=> setNonEmpty!11512 m!2299213))

(declare-fun m!2299215 () Bool)

(assert (=> b!1874128 m!2299215))

(declare-fun condSetEmpty!11515 () Bool)

(assert (=> setNonEmpty!11503 (= condSetEmpty!11515 (= setRest!11503 ((as const (Array Context!1946 Bool)) false)))))

(declare-fun setRes!11515 () Bool)

(assert (=> setNonEmpty!11503 (= tp!533527 setRes!11515)))

(declare-fun setIsEmpty!11515 () Bool)

(assert (=> setIsEmpty!11515 setRes!11515))

(declare-fun e!1195738 () Bool)

(declare-fun tp!533583 () Bool)

(declare-fun setElem!11515 () Context!1946)

(declare-fun setNonEmpty!11515 () Bool)

(assert (=> setNonEmpty!11515 (= setRes!11515 (and tp!533583 (inv!27622 setElem!11515) e!1195738))))

(declare-fun setRest!11515 () (InoxSet Context!1946))

(assert (=> setNonEmpty!11515 (= setRest!11503 ((_ map or) (store ((as const (Array Context!1946 Bool)) false) setElem!11515 true) setRest!11515))))

(declare-fun b!1874134 () Bool)

(declare-fun tp!533584 () Bool)

(assert (=> b!1874134 (= e!1195738 tp!533584)))

(assert (= (and setNonEmpty!11503 condSetEmpty!11515) setIsEmpty!11515))

(assert (= (and setNonEmpty!11503 (not condSetEmpty!11515)) setNonEmpty!11515))

(assert (= setNonEmpty!11515 b!1874134))

(declare-fun m!2299217 () Bool)

(assert (=> setNonEmpty!11515 m!2299217))

(declare-fun setNonEmpty!11518 () Bool)

(declare-fun e!1195746 () Bool)

(declare-fun setRes!11518 () Bool)

(declare-fun setElem!11518 () Context!1946)

(declare-fun tp!533596 () Bool)

(assert (=> setNonEmpty!11518 (= setRes!11518 (and tp!533596 (inv!27622 setElem!11518) e!1195746))))

(declare-fun setRest!11518 () (InoxSet Context!1946))

(assert (=> setNonEmpty!11518 (= (_2!11410 (h!26211 (zeroValue!2195 (v!26175 (underlying!4067 (v!26176 (underlying!4068 (cache!2232 cacheUp!808)))))))) ((_ map or) (store ((as const (Array Context!1946 Bool)) false) setElem!11518 true) setRest!11518))))

(declare-fun b!1874143 () Bool)

(declare-fun e!1195745 () Bool)

(declare-fun tp!533594 () Bool)

(assert (=> b!1874143 (= e!1195745 tp!533594)))

(declare-fun e!1195747 () Bool)

(assert (=> b!1874084 (= tp!533517 e!1195747)))

(declare-fun b!1874144 () Bool)

(declare-fun tp!533595 () Bool)

(assert (=> b!1874144 (= e!1195746 tp!533595)))

(declare-fun setIsEmpty!11518 () Bool)

(assert (=> setIsEmpty!11518 setRes!11518))

(declare-fun b!1874145 () Bool)

(declare-fun tp!533593 () Bool)

(assert (=> b!1874145 (= e!1195747 (and (inv!27622 (_1!11409 (_1!11410 (h!26211 (zeroValue!2195 (v!26175 (underlying!4067 (v!26176 (underlying!4068 (cache!2232 cacheUp!808)))))))))) e!1195745 tp_is_empty!8867 setRes!11518 tp!533593))))

(declare-fun condSetEmpty!11518 () Bool)

(assert (=> b!1874145 (= condSetEmpty!11518 (= (_2!11410 (h!26211 (zeroValue!2195 (v!26175 (underlying!4067 (v!26176 (underlying!4068 (cache!2232 cacheUp!808)))))))) ((as const (Array Context!1946 Bool)) false)))))

(assert (= b!1874145 b!1874143))

(assert (= (and b!1874145 condSetEmpty!11518) setIsEmpty!11518))

(assert (= (and b!1874145 (not condSetEmpty!11518)) setNonEmpty!11518))

(assert (= setNonEmpty!11518 b!1874144))

(assert (= (and b!1874084 ((_ is Cons!20810) (zeroValue!2195 (v!26175 (underlying!4067 (v!26176 (underlying!4068 (cache!2232 cacheUp!808)))))))) b!1874145))

(declare-fun m!2299219 () Bool)

(assert (=> setNonEmpty!11518 m!2299219))

(declare-fun m!2299221 () Bool)

(assert (=> b!1874145 m!2299221))

(declare-fun e!1195749 () Bool)

(declare-fun setElem!11519 () Context!1946)

(declare-fun setRes!11519 () Bool)

(declare-fun tp!533600 () Bool)

(declare-fun setNonEmpty!11519 () Bool)

(assert (=> setNonEmpty!11519 (= setRes!11519 (and tp!533600 (inv!27622 setElem!11519) e!1195749))))

(declare-fun setRest!11519 () (InoxSet Context!1946))

(assert (=> setNonEmpty!11519 (= (_2!11410 (h!26211 (minValue!2195 (v!26175 (underlying!4067 (v!26176 (underlying!4068 (cache!2232 cacheUp!808)))))))) ((_ map or) (store ((as const (Array Context!1946 Bool)) false) setElem!11519 true) setRest!11519))))

(declare-fun b!1874146 () Bool)

(declare-fun e!1195748 () Bool)

(declare-fun tp!533598 () Bool)

(assert (=> b!1874146 (= e!1195748 tp!533598)))

(declare-fun e!1195750 () Bool)

(assert (=> b!1874084 (= tp!533518 e!1195750)))

(declare-fun b!1874147 () Bool)

(declare-fun tp!533599 () Bool)

(assert (=> b!1874147 (= e!1195749 tp!533599)))

(declare-fun setIsEmpty!11519 () Bool)

(assert (=> setIsEmpty!11519 setRes!11519))

(declare-fun tp!533597 () Bool)

(declare-fun b!1874148 () Bool)

(assert (=> b!1874148 (= e!1195750 (and (inv!27622 (_1!11409 (_1!11410 (h!26211 (minValue!2195 (v!26175 (underlying!4067 (v!26176 (underlying!4068 (cache!2232 cacheUp!808)))))))))) e!1195748 tp_is_empty!8867 setRes!11519 tp!533597))))

(declare-fun condSetEmpty!11519 () Bool)

(assert (=> b!1874148 (= condSetEmpty!11519 (= (_2!11410 (h!26211 (minValue!2195 (v!26175 (underlying!4067 (v!26176 (underlying!4068 (cache!2232 cacheUp!808)))))))) ((as const (Array Context!1946 Bool)) false)))))

(assert (= b!1874148 b!1874146))

(assert (= (and b!1874148 condSetEmpty!11519) setIsEmpty!11519))

(assert (= (and b!1874148 (not condSetEmpty!11519)) setNonEmpty!11519))

(assert (= setNonEmpty!11519 b!1874147))

(assert (= (and b!1874084 ((_ is Cons!20810) (minValue!2195 (v!26175 (underlying!4067 (v!26176 (underlying!4068 (cache!2232 cacheUp!808)))))))) b!1874148))

(declare-fun m!2299223 () Bool)

(assert (=> setNonEmpty!11519 m!2299223))

(declare-fun m!2299225 () Bool)

(assert (=> b!1874148 m!2299225))

(declare-fun setIsEmpty!11520 () Bool)

(declare-fun setRes!11520 () Bool)

(assert (=> setIsEmpty!11520 setRes!11520))

(declare-fun e!1195753 () Bool)

(assert (=> b!1874078 (= tp!533521 e!1195753)))

(declare-fun b!1874149 () Bool)

(declare-fun e!1195752 () Bool)

(declare-fun tp!533602 () Bool)

(assert (=> b!1874149 (= e!1195752 tp!533602)))

(declare-fun setNonEmpty!11520 () Bool)

(declare-fun setElem!11520 () Context!1946)

(declare-fun tp!533603 () Bool)

(assert (=> setNonEmpty!11520 (= setRes!11520 (and tp!533603 (inv!27622 setElem!11520) e!1195752))))

(declare-fun setRest!11520 () (InoxSet Context!1946))

(assert (=> setNonEmpty!11520 (= (_2!11412 (h!26212 mapDefault!8985)) ((_ map or) (store ((as const (Array Context!1946 Bool)) false) setElem!11520 true) setRest!11520))))

(declare-fun tp!533601 () Bool)

(declare-fun e!1195751 () Bool)

(declare-fun tp!533605 () Bool)

(declare-fun b!1874150 () Bool)

(assert (=> b!1874150 (= e!1195753 (and tp!533601 (inv!27622 (_2!11411 (_1!11412 (h!26212 mapDefault!8985)))) e!1195751 tp_is_empty!8867 setRes!11520 tp!533605))))

(declare-fun condSetEmpty!11520 () Bool)

(assert (=> b!1874150 (= condSetEmpty!11520 (= (_2!11412 (h!26212 mapDefault!8985)) ((as const (Array Context!1946 Bool)) false)))))

(declare-fun b!1874151 () Bool)

(declare-fun tp!533604 () Bool)

(assert (=> b!1874151 (= e!1195751 tp!533604)))

(assert (= b!1874150 b!1874151))

(assert (= (and b!1874150 condSetEmpty!11520) setIsEmpty!11520))

(assert (= (and b!1874150 (not condSetEmpty!11520)) setNonEmpty!11520))

(assert (= setNonEmpty!11520 b!1874149))

(assert (= (and b!1874078 ((_ is Cons!20811) mapDefault!8985)) b!1874150))

(declare-fun m!2299227 () Bool)

(assert (=> setNonEmpty!11520 m!2299227))

(declare-fun m!2299229 () Bool)

(assert (=> b!1874150 m!2299229))

(declare-fun tp!533609 () Bool)

(declare-fun setElem!11521 () Context!1946)

(declare-fun setRes!11521 () Bool)

(declare-fun e!1195755 () Bool)

(declare-fun setNonEmpty!11521 () Bool)

(assert (=> setNonEmpty!11521 (= setRes!11521 (and tp!533609 (inv!27622 setElem!11521) e!1195755))))

(declare-fun setRest!11521 () (InoxSet Context!1946))

(assert (=> setNonEmpty!11521 (= (_2!11410 (h!26211 mapDefault!8984)) ((_ map or) (store ((as const (Array Context!1946 Bool)) false) setElem!11521 true) setRest!11521))))

(declare-fun b!1874152 () Bool)

(declare-fun e!1195754 () Bool)

(declare-fun tp!533607 () Bool)

(assert (=> b!1874152 (= e!1195754 tp!533607)))

(declare-fun e!1195756 () Bool)

(assert (=> b!1874075 (= tp!533519 e!1195756)))

(declare-fun b!1874153 () Bool)

(declare-fun tp!533608 () Bool)

(assert (=> b!1874153 (= e!1195755 tp!533608)))

(declare-fun setIsEmpty!11521 () Bool)

(assert (=> setIsEmpty!11521 setRes!11521))

(declare-fun tp!533606 () Bool)

(declare-fun b!1874154 () Bool)

(assert (=> b!1874154 (= e!1195756 (and (inv!27622 (_1!11409 (_1!11410 (h!26211 mapDefault!8984)))) e!1195754 tp_is_empty!8867 setRes!11521 tp!533606))))

(declare-fun condSetEmpty!11521 () Bool)

(assert (=> b!1874154 (= condSetEmpty!11521 (= (_2!11410 (h!26211 mapDefault!8984)) ((as const (Array Context!1946 Bool)) false)))))

(assert (= b!1874154 b!1874152))

(assert (= (and b!1874154 condSetEmpty!11521) setIsEmpty!11521))

(assert (= (and b!1874154 (not condSetEmpty!11521)) setNonEmpty!11521))

(assert (= setNonEmpty!11521 b!1874153))

(assert (= (and b!1874075 ((_ is Cons!20810) mapDefault!8984)) b!1874154))

(declare-fun m!2299231 () Bool)

(assert (=> setNonEmpty!11521 m!2299231))

(declare-fun m!2299233 () Bool)

(assert (=> b!1874154 m!2299233))

(declare-fun b!1874159 () Bool)

(declare-fun e!1195759 () Bool)

(declare-fun tp!533612 () Bool)

(assert (=> b!1874159 (= e!1195759 (and tp_is_empty!8867 tp!533612))))

(assert (=> b!1874072 (= tp!533516 e!1195759)))

(assert (= (and b!1874072 ((_ is Cons!20808) (t!173107 input!3792))) b!1874159))

(declare-fun mapValue!8991 () List!20892)

(declare-fun e!1195772 () Bool)

(declare-fun e!1195774 () Bool)

(declare-fun b!1874174 () Bool)

(declare-fun setRes!11527 () Bool)

(declare-fun tp!533632 () Bool)

(assert (=> b!1874174 (= e!1195772 (and (inv!27622 (_1!11409 (_1!11410 (h!26211 mapValue!8991)))) e!1195774 tp_is_empty!8867 setRes!11527 tp!533632))))

(declare-fun condSetEmpty!11526 () Bool)

(assert (=> b!1874174 (= condSetEmpty!11526 (= (_2!11410 (h!26211 mapValue!8991)) ((as const (Array Context!1946 Bool)) false)))))

(declare-fun setIsEmpty!11526 () Bool)

(declare-fun setRes!11526 () Bool)

(assert (=> setIsEmpty!11526 setRes!11526))

(declare-fun setIsEmpty!11527 () Bool)

(assert (=> setIsEmpty!11527 setRes!11527))

(declare-fun mapIsEmpty!8991 () Bool)

(declare-fun mapRes!8991 () Bool)

(assert (=> mapIsEmpty!8991 mapRes!8991))

(declare-fun mapNonEmpty!8991 () Bool)

(declare-fun tp!533631 () Bool)

(assert (=> mapNonEmpty!8991 (= mapRes!8991 (and tp!533631 e!1195772))))

(declare-fun mapKey!8991 () (_ BitVec 32))

(declare-fun mapRest!8991 () (Array (_ BitVec 32) List!20892))

(assert (=> mapNonEmpty!8991 (= mapRest!8985 (store mapRest!8991 mapKey!8991 mapValue!8991))))

(declare-fun e!1195777 () Bool)

(declare-fun b!1874175 () Bool)

(declare-fun e!1195773 () Bool)

(declare-fun tp!533637 () Bool)

(declare-fun mapDefault!8991 () List!20892)

(assert (=> b!1874175 (= e!1195773 (and (inv!27622 (_1!11409 (_1!11410 (h!26211 mapDefault!8991)))) e!1195777 tp_is_empty!8867 setRes!11526 tp!533637))))

(declare-fun condSetEmpty!11527 () Bool)

(assert (=> b!1874175 (= condSetEmpty!11527 (= (_2!11410 (h!26211 mapDefault!8991)) ((as const (Array Context!1946 Bool)) false)))))

(declare-fun condMapEmpty!8991 () Bool)

(assert (=> mapNonEmpty!8985 (= condMapEmpty!8991 (= mapRest!8985 ((as const (Array (_ BitVec 32) List!20892)) mapDefault!8991)))))

(assert (=> mapNonEmpty!8985 (= tp!533515 (and e!1195773 mapRes!8991))))

(declare-fun tp!533633 () Bool)

(declare-fun setElem!11526 () Context!1946)

(declare-fun e!1195776 () Bool)

(declare-fun setNonEmpty!11526 () Bool)

(assert (=> setNonEmpty!11526 (= setRes!11527 (and tp!533633 (inv!27622 setElem!11526) e!1195776))))

(declare-fun setRest!11526 () (InoxSet Context!1946))

(assert (=> setNonEmpty!11526 (= (_2!11410 (h!26211 mapValue!8991)) ((_ map or) (store ((as const (Array Context!1946 Bool)) false) setElem!11526 true) setRest!11526))))

(declare-fun b!1874176 () Bool)

(declare-fun tp!533636 () Bool)

(assert (=> b!1874176 (= e!1195774 tp!533636)))

(declare-fun b!1874177 () Bool)

(declare-fun e!1195775 () Bool)

(declare-fun tp!533635 () Bool)

(assert (=> b!1874177 (= e!1195775 tp!533635)))

(declare-fun tp!533639 () Bool)

(declare-fun setElem!11527 () Context!1946)

(declare-fun setNonEmpty!11527 () Bool)

(assert (=> setNonEmpty!11527 (= setRes!11526 (and tp!533639 (inv!27622 setElem!11527) e!1195775))))

(declare-fun setRest!11527 () (InoxSet Context!1946))

(assert (=> setNonEmpty!11527 (= (_2!11410 (h!26211 mapDefault!8991)) ((_ map or) (store ((as const (Array Context!1946 Bool)) false) setElem!11527 true) setRest!11527))))

(declare-fun b!1874178 () Bool)

(declare-fun tp!533634 () Bool)

(assert (=> b!1874178 (= e!1195776 tp!533634)))

(declare-fun b!1874179 () Bool)

(declare-fun tp!533638 () Bool)

(assert (=> b!1874179 (= e!1195777 tp!533638)))

(assert (= (and mapNonEmpty!8985 condMapEmpty!8991) mapIsEmpty!8991))

(assert (= (and mapNonEmpty!8985 (not condMapEmpty!8991)) mapNonEmpty!8991))

(assert (= b!1874174 b!1874176))

(assert (= (and b!1874174 condSetEmpty!11526) setIsEmpty!11527))

(assert (= (and b!1874174 (not condSetEmpty!11526)) setNonEmpty!11526))

(assert (= setNonEmpty!11526 b!1874178))

(assert (= (and mapNonEmpty!8991 ((_ is Cons!20810) mapValue!8991)) b!1874174))

(assert (= b!1874175 b!1874179))

(assert (= (and b!1874175 condSetEmpty!11527) setIsEmpty!11526))

(assert (= (and b!1874175 (not condSetEmpty!11527)) setNonEmpty!11527))

(assert (= setNonEmpty!11527 b!1874177))

(assert (= (and mapNonEmpty!8985 ((_ is Cons!20810) mapDefault!8991)) b!1874175))

(declare-fun m!2299235 () Bool)

(assert (=> setNonEmpty!11527 m!2299235))

(declare-fun m!2299237 () Bool)

(assert (=> setNonEmpty!11526 m!2299237))

(declare-fun m!2299239 () Bool)

(assert (=> b!1874175 m!2299239))

(declare-fun m!2299241 () Bool)

(assert (=> mapNonEmpty!8991 m!2299241))

(declare-fun m!2299243 () Bool)

(assert (=> b!1874174 m!2299243))

(declare-fun e!1195779 () Bool)

(declare-fun setRes!11528 () Bool)

(declare-fun setElem!11528 () Context!1946)

(declare-fun setNonEmpty!11528 () Bool)

(declare-fun tp!533643 () Bool)

(assert (=> setNonEmpty!11528 (= setRes!11528 (and tp!533643 (inv!27622 setElem!11528) e!1195779))))

(declare-fun setRest!11528 () (InoxSet Context!1946))

(assert (=> setNonEmpty!11528 (= (_2!11410 (h!26211 mapValue!8985)) ((_ map or) (store ((as const (Array Context!1946 Bool)) false) setElem!11528 true) setRest!11528))))

(declare-fun b!1874180 () Bool)

(declare-fun e!1195778 () Bool)

(declare-fun tp!533641 () Bool)

(assert (=> b!1874180 (= e!1195778 tp!533641)))

(declare-fun e!1195780 () Bool)

(assert (=> mapNonEmpty!8985 (= tp!533514 e!1195780)))

(declare-fun b!1874181 () Bool)

(declare-fun tp!533642 () Bool)

(assert (=> b!1874181 (= e!1195779 tp!533642)))

(declare-fun setIsEmpty!11528 () Bool)

(assert (=> setIsEmpty!11528 setRes!11528))

(declare-fun tp!533640 () Bool)

(declare-fun b!1874182 () Bool)

(assert (=> b!1874182 (= e!1195780 (and (inv!27622 (_1!11409 (_1!11410 (h!26211 mapValue!8985)))) e!1195778 tp_is_empty!8867 setRes!11528 tp!533640))))

(declare-fun condSetEmpty!11528 () Bool)

(assert (=> b!1874182 (= condSetEmpty!11528 (= (_2!11410 (h!26211 mapValue!8985)) ((as const (Array Context!1946 Bool)) false)))))

(assert (= b!1874182 b!1874180))

(assert (= (and b!1874182 condSetEmpty!11528) setIsEmpty!11528))

(assert (= (and b!1874182 (not condSetEmpty!11528)) setNonEmpty!11528))

(assert (= setNonEmpty!11528 b!1874181))

(assert (= (and mapNonEmpty!8985 ((_ is Cons!20810) mapValue!8985)) b!1874182))

(declare-fun m!2299245 () Bool)

(assert (=> setNonEmpty!11528 m!2299245))

(declare-fun m!2299247 () Bool)

(assert (=> b!1874182 m!2299247))

(declare-fun b!1874187 () Bool)

(declare-fun e!1195783 () Bool)

(declare-fun tp!533648 () Bool)

(declare-fun tp!533649 () Bool)

(assert (=> b!1874187 (= e!1195783 (and tp!533648 tp!533649))))

(assert (=> b!1874082 (= tp!533529 e!1195783)))

(assert (= (and b!1874082 ((_ is Cons!20809) (exprs!1473 setElem!11503))) b!1874187))

(declare-fun setIsEmpty!11529 () Bool)

(declare-fun setRes!11529 () Bool)

(assert (=> setIsEmpty!11529 setRes!11529))

(declare-fun e!1195786 () Bool)

(assert (=> b!1874077 (= tp!533528 e!1195786)))

(declare-fun b!1874188 () Bool)

(declare-fun e!1195785 () Bool)

(declare-fun tp!533651 () Bool)

(assert (=> b!1874188 (= e!1195785 tp!533651)))

(declare-fun setElem!11529 () Context!1946)

(declare-fun setNonEmpty!11529 () Bool)

(declare-fun tp!533652 () Bool)

(assert (=> setNonEmpty!11529 (= setRes!11529 (and tp!533652 (inv!27622 setElem!11529) e!1195785))))

(declare-fun setRest!11529 () (InoxSet Context!1946))

(assert (=> setNonEmpty!11529 (= (_2!11412 (h!26212 (zeroValue!2196 (v!26177 (underlying!4069 (v!26178 (underlying!4070 (cache!2233 cacheDown!927)))))))) ((_ map or) (store ((as const (Array Context!1946 Bool)) false) setElem!11529 true) setRest!11529))))

(declare-fun tp!533650 () Bool)

(declare-fun b!1874189 () Bool)

(declare-fun tp!533654 () Bool)

(declare-fun e!1195784 () Bool)

(assert (=> b!1874189 (= e!1195786 (and tp!533650 (inv!27622 (_2!11411 (_1!11412 (h!26212 (zeroValue!2196 (v!26177 (underlying!4069 (v!26178 (underlying!4070 (cache!2233 cacheDown!927)))))))))) e!1195784 tp_is_empty!8867 setRes!11529 tp!533654))))

(declare-fun condSetEmpty!11529 () Bool)

(assert (=> b!1874189 (= condSetEmpty!11529 (= (_2!11412 (h!26212 (zeroValue!2196 (v!26177 (underlying!4069 (v!26178 (underlying!4070 (cache!2233 cacheDown!927)))))))) ((as const (Array Context!1946 Bool)) false)))))

(declare-fun b!1874190 () Bool)

(declare-fun tp!533653 () Bool)

(assert (=> b!1874190 (= e!1195784 tp!533653)))

(assert (= b!1874189 b!1874190))

(assert (= (and b!1874189 condSetEmpty!11529) setIsEmpty!11529))

(assert (= (and b!1874189 (not condSetEmpty!11529)) setNonEmpty!11529))

(assert (= setNonEmpty!11529 b!1874188))

(assert (= (and b!1874077 ((_ is Cons!20811) (zeroValue!2196 (v!26177 (underlying!4069 (v!26178 (underlying!4070 (cache!2233 cacheDown!927)))))))) b!1874189))

(declare-fun m!2299249 () Bool)

(assert (=> setNonEmpty!11529 m!2299249))

(declare-fun m!2299251 () Bool)

(assert (=> b!1874189 m!2299251))

(declare-fun setIsEmpty!11530 () Bool)

(declare-fun setRes!11530 () Bool)

(assert (=> setIsEmpty!11530 setRes!11530))

(declare-fun e!1195789 () Bool)

(assert (=> b!1874077 (= tp!533524 e!1195789)))

(declare-fun b!1874191 () Bool)

(declare-fun e!1195788 () Bool)

(declare-fun tp!533656 () Bool)

(assert (=> b!1874191 (= e!1195788 tp!533656)))

(declare-fun tp!533657 () Bool)

(declare-fun setNonEmpty!11530 () Bool)

(declare-fun setElem!11530 () Context!1946)

(assert (=> setNonEmpty!11530 (= setRes!11530 (and tp!533657 (inv!27622 setElem!11530) e!1195788))))

(declare-fun setRest!11530 () (InoxSet Context!1946))

(assert (=> setNonEmpty!11530 (= (_2!11412 (h!26212 (minValue!2196 (v!26177 (underlying!4069 (v!26178 (underlying!4070 (cache!2233 cacheDown!927)))))))) ((_ map or) (store ((as const (Array Context!1946 Bool)) false) setElem!11530 true) setRest!11530))))

(declare-fun tp!533659 () Bool)

(declare-fun b!1874192 () Bool)

(declare-fun tp!533655 () Bool)

(declare-fun e!1195787 () Bool)

(assert (=> b!1874192 (= e!1195789 (and tp!533655 (inv!27622 (_2!11411 (_1!11412 (h!26212 (minValue!2196 (v!26177 (underlying!4069 (v!26178 (underlying!4070 (cache!2233 cacheDown!927)))))))))) e!1195787 tp_is_empty!8867 setRes!11530 tp!533659))))

(declare-fun condSetEmpty!11530 () Bool)

(assert (=> b!1874192 (= condSetEmpty!11530 (= (_2!11412 (h!26212 (minValue!2196 (v!26177 (underlying!4069 (v!26178 (underlying!4070 (cache!2233 cacheDown!927)))))))) ((as const (Array Context!1946 Bool)) false)))))

(declare-fun b!1874193 () Bool)

(declare-fun tp!533658 () Bool)

(assert (=> b!1874193 (= e!1195787 tp!533658)))

(assert (= b!1874192 b!1874193))

(assert (= (and b!1874192 condSetEmpty!11530) setIsEmpty!11530))

(assert (= (and b!1874192 (not condSetEmpty!11530)) setNonEmpty!11530))

(assert (= setNonEmpty!11530 b!1874191))

(assert (= (and b!1874077 ((_ is Cons!20811) (minValue!2196 (v!26177 (underlying!4069 (v!26178 (underlying!4070 (cache!2233 cacheDown!927)))))))) b!1874192))

(declare-fun m!2299253 () Bool)

(assert (=> setNonEmpty!11530 m!2299253))

(declare-fun m!2299255 () Bool)

(assert (=> b!1874192 m!2299255))

(check-sat (not b!1874179) (not b!1874187) (not b!1874154) b_and!144347 (not b!1874189) (not b_next!52765) (not b!1874150) (not setNonEmpty!11520) (not b!1874149) (not b!1874148) (not b!1874177) (not mapNonEmpty!8988) (not setNonEmpty!11519) (not b!1874153) b_and!144349 (not b!1874152) b_and!144353 (not b_next!52769) (not setNonEmpty!11526) (not d!572726) (not setNonEmpty!11528) (not b!1874115) (not b_next!52767) (not b!1874114) (not b!1874180) (not b!1874128) (not setNonEmpty!11515) (not mapNonEmpty!8991) (not b!1874151) (not b!1874089) tp_is_empty!8867 (not b!1874188) (not setNonEmpty!11529) (not b!1874129) (not b!1874178) (not b!1874175) (not b!1874097) (not b!1874146) (not b!1874134) (not b!1874143) (not b_next!52771) (not b!1874174) (not b!1874117) (not b!1874127) (not b!1874182) (not setNonEmpty!11521) (not b!1874118) (not b!1874092) (not b!1874113) (not setNonEmpty!11530) (not setNonEmpty!11527) (not b!1874147) (not d!572710) (not b!1874191) (not b!1874098) (not setNonEmpty!11512) b_and!144351 (not b!1874145) (not b!1874144) (not b!1874116) (not setNonEmpty!11518) (not b!1874190) (not b!1874176) (not b!1874192) (not setNonEmpty!11509) (not b!1874181) (not b!1874193) (not b!1874159) (not setNonEmpty!11508))
(check-sat (not b_next!52767) b_and!144347 (not b_next!52765) (not b_next!52771) b_and!144351 b_and!144349 b_and!144353 (not b_next!52769))
