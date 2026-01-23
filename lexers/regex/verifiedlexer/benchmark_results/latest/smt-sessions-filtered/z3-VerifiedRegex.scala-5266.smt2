; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!270314 () Bool)

(assert start!270314)

(declare-fun b!2796191 () Bool)

(declare-fun b_free!79205 () Bool)

(declare-fun b_next!79909 () Bool)

(assert (=> b!2796191 (= b_free!79205 (not b_next!79909))))

(declare-fun tp!889757 () Bool)

(declare-fun b_and!203943 () Bool)

(assert (=> b!2796191 (= tp!889757 b_and!203943)))

(declare-fun b!2796176 () Bool)

(declare-fun b_free!79207 () Bool)

(declare-fun b_next!79911 () Bool)

(assert (=> b!2796176 (= b_free!79207 (not b_next!79911))))

(declare-fun tp!889765 () Bool)

(declare-fun b_and!203945 () Bool)

(assert (=> b!2796176 (= tp!889765 b_and!203945)))

(declare-fun b!2796189 () Bool)

(declare-fun b_free!79209 () Bool)

(declare-fun b_next!79913 () Bool)

(assert (=> b!2796189 (= b_free!79209 (not b_next!79913))))

(declare-fun tp!889763 () Bool)

(declare-fun b_and!203947 () Bool)

(assert (=> b!2796189 (= tp!889763 b_and!203947)))

(declare-fun b!2796179 () Bool)

(declare-fun b_free!79211 () Bool)

(declare-fun b_next!79915 () Bool)

(assert (=> b!2796179 (= b_free!79211 (not b_next!79915))))

(declare-fun tp!889760 () Bool)

(declare-fun b_and!203949 () Bool)

(assert (=> b!2796179 (= tp!889760 b_and!203949)))

(declare-fun b!2796165 () Bool)

(declare-fun e!1765981 () Bool)

(declare-fun e!1765984 () Bool)

(assert (=> b!2796165 (= e!1765981 e!1765984)))

(declare-fun setNonEmpty!24218 () Bool)

(declare-datatypes ((C!16552 0))(
  ( (C!16553 (val!10210 Int)) )
))
(declare-datatypes ((Regex!8197 0))(
  ( (ElementMatch!8197 (c!453621 C!16552)) (Concat!13285 (regOne!16906 Regex!8197) (regTwo!16906 Regex!8197)) (EmptyExpr!8197) (Star!8197 (reg!8526 Regex!8197)) (EmptyLang!8197) (Union!8197 (regOne!16907 Regex!8197) (regTwo!16907 Regex!8197)) )
))
(declare-datatypes ((List!32551 0))(
  ( (Nil!32451) (Cons!32451 (h!37871 Regex!8197) (t!228711 List!32551)) )
))
(declare-datatypes ((Context!4830 0))(
  ( (Context!4831 (exprs!2915 List!32551)) )
))
(declare-fun setElem!24218 () Context!4830)

(declare-fun setRes!24218 () Bool)

(declare-fun e!1765980 () Bool)

(declare-fun tp!889758 () Bool)

(declare-fun inv!44081 (Context!4830) Bool)

(assert (=> setNonEmpty!24218 (= setRes!24218 (and tp!889758 (inv!44081 setElem!24218) e!1765980))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3684 () (InoxSet Context!4830))

(declare-fun setRest!24218 () (InoxSet Context!4830))

(assert (=> setNonEmpty!24218 (= z!3684 ((_ map or) (store ((as const (Array Context!4830 Bool)) false) setElem!24218 true) setRest!24218))))

(declare-fun b!2796166 () Bool)

(declare-fun e!1765996 () Bool)

(declare-fun tp_is_empty!14207 () Bool)

(declare-fun tp!889768 () Bool)

(assert (=> b!2796166 (= e!1765996 (and tp_is_empty!14207 tp!889768))))

(declare-fun b!2796167 () Bool)

(declare-fun res!1165667 () Bool)

(declare-fun e!1765977 () Bool)

(assert (=> b!2796167 (=> (not res!1165667) (not e!1765977))))

(declare-datatypes ((array!14176 0))(
  ( (array!14177 (arr!6317 (Array (_ BitVec 32) (_ BitVec 64))) (size!25299 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!5128 0))(
  ( (tuple3!5129 (_1!19522 Regex!8197) (_2!19522 Context!4830) (_3!3034 C!16552)) )
))
(declare-datatypes ((tuple2!32976 0))(
  ( (tuple2!32977 (_1!19523 tuple3!5128) (_2!19523 (InoxSet Context!4830))) )
))
(declare-datatypes ((List!32552 0))(
  ( (Nil!32452) (Cons!32452 (h!37872 tuple2!32976) (t!228712 List!32552)) )
))
(declare-datatypes ((array!14178 0))(
  ( (array!14179 (arr!6318 (Array (_ BitVec 32) List!32552)) (size!25300 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7974 0))(
  ( (LongMapFixedSize!7975 (defaultEntry!4372 Int) (mask!9822 (_ BitVec 32)) (extraKeys!4236 (_ BitVec 32)) (zeroValue!4246 List!32552) (minValue!4246 List!32552) (_size!8017 (_ BitVec 32)) (_keys!4287 array!14176) (_values!4268 array!14178) (_vacant!4048 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15757 0))(
  ( (Cell!15758 (v!34053 LongMapFixedSize!7974)) )
))
(declare-datatypes ((MutLongMap!3987 0))(
  ( (LongMap!3987 (underlying!8177 Cell!15757)) (MutLongMapExt!3986 (__x!21611 Int)) )
))
(declare-datatypes ((Cell!15759 0))(
  ( (Cell!15760 (v!34054 MutLongMap!3987)) )
))
(declare-datatypes ((Hashable!3903 0))(
  ( (HashableExt!3902 (__x!21612 Int)) )
))
(declare-datatypes ((MutableMap!3893 0))(
  ( (MutableMapExt!3892 (__x!21613 Int)) (HashMap!3893 (underlying!8178 Cell!15759) (hashF!5935 Hashable!3903) (_size!8018 (_ BitVec 32)) (defaultValue!4064 Int)) )
))
(declare-datatypes ((CacheDown!2720 0))(
  ( (CacheDown!2721 (cache!4036 MutableMap!3893)) )
))
(declare-fun cacheDown!1009 () CacheDown!2720)

(declare-fun valid!3125 (CacheDown!2720) Bool)

(assert (=> b!2796167 (= res!1165667 (valid!3125 cacheDown!1009))))

(declare-fun b!2796168 () Bool)

(declare-fun tp!889769 () Bool)

(assert (=> b!2796168 (= e!1765980 tp!889769)))

(declare-fun b!2796169 () Bool)

(declare-fun e!1765988 () Bool)

(declare-fun tp!889766 () Bool)

(declare-fun mapRes!18141 () Bool)

(assert (=> b!2796169 (= e!1765988 (and tp!889766 mapRes!18141))))

(declare-fun condMapEmpty!18141 () Bool)

(declare-datatypes ((Hashable!3904 0))(
  ( (HashableExt!3903 (__x!21614 Int)) )
))
(declare-datatypes ((tuple2!32978 0))(
  ( (tuple2!32979 (_1!19524 Context!4830) (_2!19524 C!16552)) )
))
(declare-datatypes ((tuple2!32980 0))(
  ( (tuple2!32981 (_1!19525 tuple2!32978) (_2!19525 (InoxSet Context!4830))) )
))
(declare-datatypes ((List!32553 0))(
  ( (Nil!32453) (Cons!32453 (h!37873 tuple2!32980) (t!228713 List!32553)) )
))
(declare-datatypes ((array!14180 0))(
  ( (array!14181 (arr!6319 (Array (_ BitVec 32) List!32553)) (size!25301 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7976 0))(
  ( (LongMapFixedSize!7977 (defaultEntry!4373 Int) (mask!9823 (_ BitVec 32)) (extraKeys!4237 (_ BitVec 32)) (zeroValue!4247 List!32553) (minValue!4247 List!32553) (_size!8019 (_ BitVec 32)) (_keys!4288 array!14176) (_values!4269 array!14180) (_vacant!4049 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15761 0))(
  ( (Cell!15762 (v!34055 LongMapFixedSize!7976)) )
))
(declare-datatypes ((MutLongMap!3988 0))(
  ( (LongMap!3988 (underlying!8179 Cell!15761)) (MutLongMapExt!3987 (__x!21615 Int)) )
))
(declare-datatypes ((Cell!15763 0))(
  ( (Cell!15764 (v!34056 MutLongMap!3988)) )
))
(declare-datatypes ((MutableMap!3894 0))(
  ( (MutableMapExt!3893 (__x!21616 Int)) (HashMap!3894 (underlying!8180 Cell!15763) (hashF!5936 Hashable!3904) (_size!8020 (_ BitVec 32)) (defaultValue!4065 Int)) )
))
(declare-datatypes ((CacheUp!2598 0))(
  ( (CacheUp!2599 (cache!4037 MutableMap!3894)) )
))
(declare-fun cacheUp!890 () CacheUp!2598)

(declare-fun mapDefault!18142 () List!32553)

(assert (=> b!2796169 (= condMapEmpty!18141 (= (arr!6319 (_values!4269 (v!34055 (underlying!8179 (v!34056 (underlying!8180 (cache!4037 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32553)) mapDefault!18142)))))

(declare-fun res!1165664 () Bool)

(assert (=> start!270314 (=> (not res!1165664) (not e!1765977))))

(declare-datatypes ((List!32554 0))(
  ( (Nil!32454) (Cons!32454 (h!37874 C!16552) (t!228714 List!32554)) )
))
(declare-fun lt!998965 () List!32554)

(declare-fun lt!998969 () List!32554)

(assert (=> start!270314 (= res!1165664 (= lt!998965 lt!998969))))

(declare-datatypes ((IArray!20123 0))(
  ( (IArray!20124 (innerList!10119 List!32554)) )
))
(declare-datatypes ((Conc!10059 0))(
  ( (Node!10059 (left!24555 Conc!10059) (right!24885 Conc!10059) (csize!20348 Int) (cheight!10270 Int)) (Leaf!15326 (xs!13171 IArray!20123) (csize!20349 Int)) (Empty!10059) )
))
(declare-datatypes ((BalanceConc!19732 0))(
  ( (BalanceConc!19733 (c!453622 Conc!10059)) )
))
(declare-fun totalInput!758 () BalanceConc!19732)

(declare-fun list!12194 (BalanceConc!19732) List!32554)

(assert (=> start!270314 (= lt!998969 (list!12194 totalInput!758))))

(declare-fun testedP!183 () List!32554)

(declare-fun testedSuffix!143 () List!32554)

(declare-fun ++!8007 (List!32554 List!32554) List!32554)

(assert (=> start!270314 (= lt!998965 (++!8007 testedP!183 testedSuffix!143))))

(assert (=> start!270314 e!1765977))

(declare-fun e!1765992 () Bool)

(declare-fun inv!44082 (BalanceConc!19732) Bool)

(assert (=> start!270314 (and (inv!44082 totalInput!758) e!1765992)))

(declare-fun condSetEmpty!24218 () Bool)

(assert (=> start!270314 (= condSetEmpty!24218 (= z!3684 ((as const (Array Context!4830 Bool)) false)))))

(assert (=> start!270314 setRes!24218))

(assert (=> start!270314 true))

(declare-fun e!1765982 () Bool)

(assert (=> start!270314 e!1765982))

(assert (=> start!270314 e!1765996))

(declare-fun e!1765989 () Bool)

(declare-fun inv!44083 (CacheDown!2720) Bool)

(assert (=> start!270314 (and (inv!44083 cacheDown!1009) e!1765989)))

(declare-fun e!1765993 () Bool)

(declare-fun inv!44084 (CacheUp!2598) Bool)

(assert (=> start!270314 (and (inv!44084 cacheUp!890) e!1765993)))

(declare-fun b!2796170 () Bool)

(declare-fun e!1765999 () Bool)

(declare-fun e!1765990 () Bool)

(assert (=> b!2796170 (= e!1765999 e!1765990)))

(declare-fun b!2796171 () Bool)

(declare-fun e!1765991 () Bool)

(assert (=> b!2796171 (= e!1765991 e!1765981)))

(declare-fun b!2796172 () Bool)

(declare-fun e!1765976 () Bool)

(declare-fun e!1765987 () Bool)

(assert (=> b!2796172 (= e!1765976 e!1765987)))

(declare-fun res!1165671 () Bool)

(assert (=> b!2796172 (=> res!1165671 e!1765987)))

(declare-fun lt!998970 () List!32554)

(assert (=> b!2796172 (= res!1165671 (not (= lt!998970 lt!998969)))))

(declare-datatypes ((tuple2!32982 0))(
  ( (tuple2!32983 (_1!19526 BalanceConc!19732) (_2!19526 BalanceConc!19732)) )
))
(declare-fun lt!998967 () tuple2!32982)

(assert (=> b!2796172 (= lt!998970 (++!8007 (list!12194 (_1!19526 lt!998967)) (list!12194 (_2!19526 lt!998967))))))

(declare-fun testedPSize!143 () Int)

(declare-fun splitAt!176 (BalanceConc!19732 Int) tuple2!32982)

(assert (=> b!2796172 (= lt!998967 (splitAt!176 totalInput!758 testedPSize!143))))

(declare-fun b!2796173 () Bool)

(declare-fun e!1765978 () Bool)

(declare-fun lt!998972 () MutLongMap!3988)

(get-info :version)

(assert (=> b!2796173 (= e!1765978 (and e!1765999 ((_ is LongMap!3988) lt!998972)))))

(assert (=> b!2796173 (= lt!998972 (v!34056 (underlying!8180 (cache!4037 cacheUp!890))))))

(declare-fun b!2796174 () Bool)

(assert (=> b!2796174 (= e!1765987 (= lt!998970 lt!998965))))

(declare-fun mapIsEmpty!18141 () Bool)

(assert (=> mapIsEmpty!18141 mapRes!18141))

(declare-fun b!2796175 () Bool)

(declare-fun res!1165665 () Bool)

(assert (=> b!2796175 (=> (not res!1165665) (not e!1765977))))

(declare-fun totalInputSize!205 () Int)

(declare-fun size!25302 (BalanceConc!19732) Int)

(assert (=> b!2796175 (= res!1165665 (= totalInputSize!205 (size!25302 totalInput!758)))))

(declare-fun e!1765985 () Bool)

(assert (=> b!2796176 (= e!1765985 (and e!1765978 tp!889765))))

(declare-fun b!2796177 () Bool)

(declare-fun res!1165669 () Bool)

(assert (=> b!2796177 (=> (not res!1165669) (not e!1765977))))

(declare-fun size!25303 (List!32554) Int)

(assert (=> b!2796177 (= res!1165669 (= testedPSize!143 (size!25303 testedP!183)))))

(declare-fun mapNonEmpty!18141 () Bool)

(declare-fun tp!889759 () Bool)

(declare-fun tp!889775 () Bool)

(assert (=> mapNonEmpty!18141 (= mapRes!18141 (and tp!889759 tp!889775))))

(declare-fun mapValue!18142 () List!32553)

(declare-fun mapRest!18141 () (Array (_ BitVec 32) List!32553))

(declare-fun mapKey!18142 () (_ BitVec 32))

(assert (=> mapNonEmpty!18141 (= (arr!6319 (_values!4269 (v!34055 (underlying!8179 (v!34056 (underlying!8180 (cache!4037 cacheUp!890))))))) (store mapRest!18141 mapKey!18142 mapValue!18142))))

(declare-fun b!2796178 () Bool)

(declare-fun e!1765979 () Bool)

(declare-fun tp!889773 () Bool)

(declare-fun mapRes!18142 () Bool)

(assert (=> b!2796178 (= e!1765979 (and tp!889773 mapRes!18142))))

(declare-fun condMapEmpty!18142 () Bool)

(declare-fun mapDefault!18141 () List!32552)

(assert (=> b!2796178 (= condMapEmpty!18142 (= (arr!6318 (_values!4268 (v!34053 (underlying!8177 (v!34054 (underlying!8178 (cache!4036 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32552)) mapDefault!18141)))))

(declare-fun mapIsEmpty!18142 () Bool)

(assert (=> mapIsEmpty!18142 mapRes!18142))

(declare-fun mapNonEmpty!18142 () Bool)

(declare-fun tp!889762 () Bool)

(declare-fun tp!889774 () Bool)

(assert (=> mapNonEmpty!18142 (= mapRes!18142 (and tp!889762 tp!889774))))

(declare-fun mapValue!18141 () List!32552)

(declare-fun mapRest!18142 () (Array (_ BitVec 32) List!32552))

(declare-fun mapKey!18141 () (_ BitVec 32))

(assert (=> mapNonEmpty!18142 (= (arr!6318 (_values!4268 (v!34053 (underlying!8177 (v!34054 (underlying!8178 (cache!4036 cacheDown!1009))))))) (store mapRest!18142 mapKey!18141 mapValue!18141))))

(declare-fun e!1765995 () Bool)

(declare-fun e!1765997 () Bool)

(assert (=> b!2796179 (= e!1765995 (and e!1765997 tp!889760))))

(declare-fun b!2796180 () Bool)

(assert (=> b!2796180 (= e!1765989 e!1765995)))

(declare-fun b!2796181 () Bool)

(declare-fun res!1165662 () Bool)

(assert (=> b!2796181 (=> (not res!1165662) (not e!1765977))))

(declare-fun valid!3126 (CacheUp!2598) Bool)

(assert (=> b!2796181 (= res!1165662 (valid!3126 cacheUp!890))))

(declare-fun setIsEmpty!24218 () Bool)

(assert (=> setIsEmpty!24218 setRes!24218))

(declare-fun b!2796182 () Bool)

(declare-fun res!1165666 () Bool)

(assert (=> b!2796182 (=> res!1165666 e!1765976)))

(assert (=> b!2796182 (= res!1165666 (= testedPSize!143 totalInputSize!205))))

(declare-fun b!2796183 () Bool)

(declare-fun e!1765994 () Bool)

(assert (=> b!2796183 (= e!1765994 e!1765976)))

(declare-fun res!1165663 () Bool)

(assert (=> b!2796183 (=> res!1165663 e!1765976)))

(declare-fun lostCauseZipper!493 ((InoxSet Context!4830)) Bool)

(assert (=> b!2796183 (= res!1165663 (lostCauseZipper!493 z!3684))))

(declare-fun lt!998973 () List!32554)

(assert (=> b!2796183 (and (= testedSuffix!143 lt!998973) (= lt!998973 testedSuffix!143))))

(declare-datatypes ((Unit!46598 0))(
  ( (Unit!46599) )
))
(declare-fun lt!998968 () Unit!46598)

(declare-fun lemmaSamePrefixThenSameSuffix!1196 (List!32554 List!32554 List!32554 List!32554 List!32554) Unit!46598)

(assert (=> b!2796183 (= lt!998968 (lemmaSamePrefixThenSameSuffix!1196 testedP!183 testedSuffix!143 testedP!183 lt!998973 lt!998969))))

(declare-fun getSuffix!1298 (List!32554 List!32554) List!32554)

(assert (=> b!2796183 (= lt!998973 (getSuffix!1298 lt!998969 testedP!183))))

(declare-fun b!2796184 () Bool)

(declare-fun lt!998971 () MutLongMap!3987)

(assert (=> b!2796184 (= e!1765997 (and e!1765991 ((_ is LongMap!3987) lt!998971)))))

(assert (=> b!2796184 (= lt!998971 (v!34054 (underlying!8178 (cache!4036 cacheDown!1009))))))

(declare-fun b!2796185 () Bool)

(declare-fun res!1165668 () Bool)

(assert (=> b!2796185 (=> res!1165668 e!1765987)))

(assert (=> b!2796185 (= res!1165668 (not (= (size!25302 (_1!19526 lt!998967)) testedPSize!143)))))

(declare-fun b!2796186 () Bool)

(declare-fun tp!889761 () Bool)

(declare-fun inv!44085 (Conc!10059) Bool)

(assert (=> b!2796186 (= e!1765992 (and (inv!44085 (c!453622 totalInput!758)) tp!889761))))

(declare-fun b!2796187 () Bool)

(declare-fun e!1765983 () Bool)

(assert (=> b!2796187 (= e!1765990 e!1765983)))

(declare-fun b!2796188 () Bool)

(declare-fun tp!889767 () Bool)

(assert (=> b!2796188 (= e!1765982 (and tp_is_empty!14207 tp!889767))))

(declare-fun tp!889772 () Bool)

(declare-fun tp!889770 () Bool)

(declare-fun array_inv!4523 (array!14176) Bool)

(declare-fun array_inv!4524 (array!14178) Bool)

(assert (=> b!2796189 (= e!1765984 (and tp!889763 tp!889772 tp!889770 (array_inv!4523 (_keys!4287 (v!34053 (underlying!8177 (v!34054 (underlying!8178 (cache!4036 cacheDown!1009))))))) (array_inv!4524 (_values!4268 (v!34053 (underlying!8177 (v!34054 (underlying!8178 (cache!4036 cacheDown!1009))))))) e!1765979))))

(declare-fun b!2796190 () Bool)

(assert (=> b!2796190 (= e!1765993 e!1765985)))

(declare-fun tp!889764 () Bool)

(declare-fun tp!889771 () Bool)

(declare-fun array_inv!4525 (array!14180) Bool)

(assert (=> b!2796191 (= e!1765983 (and tp!889757 tp!889771 tp!889764 (array_inv!4523 (_keys!4288 (v!34055 (underlying!8179 (v!34056 (underlying!8180 (cache!4037 cacheUp!890))))))) (array_inv!4525 (_values!4269 (v!34055 (underlying!8179 (v!34056 (underlying!8180 (cache!4037 cacheUp!890))))))) e!1765988))))

(declare-fun b!2796192 () Bool)

(assert (=> b!2796192 (= e!1765977 (not e!1765994))))

(declare-fun res!1165670 () Bool)

(assert (=> b!2796192 (=> res!1165670 e!1765994)))

(declare-fun isPrefix!2621 (List!32554 List!32554) Bool)

(assert (=> b!2796192 (= res!1165670 (not (isPrefix!2621 testedP!183 lt!998969)))))

(assert (=> b!2796192 (isPrefix!2621 testedP!183 lt!998965)))

(declare-fun lt!998966 () Unit!46598)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1729 (List!32554 List!32554) Unit!46598)

(assert (=> b!2796192 (= lt!998966 (lemmaConcatTwoListThenFirstIsPrefix!1729 testedP!183 testedSuffix!143))))

(assert (= (and start!270314 res!1165664) b!2796177))

(assert (= (and b!2796177 res!1165669) b!2796175))

(assert (= (and b!2796175 res!1165665) b!2796181))

(assert (= (and b!2796181 res!1165662) b!2796167))

(assert (= (and b!2796167 res!1165667) b!2796192))

(assert (= (and b!2796192 (not res!1165670)) b!2796183))

(assert (= (and b!2796183 (not res!1165663)) b!2796182))

(assert (= (and b!2796182 (not res!1165666)) b!2796172))

(assert (= (and b!2796172 (not res!1165671)) b!2796185))

(assert (= (and b!2796185 (not res!1165668)) b!2796174))

(assert (= start!270314 b!2796186))

(assert (= (and start!270314 condSetEmpty!24218) setIsEmpty!24218))

(assert (= (and start!270314 (not condSetEmpty!24218)) setNonEmpty!24218))

(assert (= setNonEmpty!24218 b!2796168))

(assert (= (and start!270314 ((_ is Cons!32454) testedP!183)) b!2796188))

(assert (= (and start!270314 ((_ is Cons!32454) testedSuffix!143)) b!2796166))

(assert (= (and b!2796178 condMapEmpty!18142) mapIsEmpty!18142))

(assert (= (and b!2796178 (not condMapEmpty!18142)) mapNonEmpty!18142))

(assert (= b!2796189 b!2796178))

(assert (= b!2796165 b!2796189))

(assert (= b!2796171 b!2796165))

(assert (= (and b!2796184 ((_ is LongMap!3987) (v!34054 (underlying!8178 (cache!4036 cacheDown!1009))))) b!2796171))

(assert (= b!2796179 b!2796184))

(assert (= (and b!2796180 ((_ is HashMap!3893) (cache!4036 cacheDown!1009))) b!2796179))

(assert (= start!270314 b!2796180))

(assert (= (and b!2796169 condMapEmpty!18141) mapIsEmpty!18141))

(assert (= (and b!2796169 (not condMapEmpty!18141)) mapNonEmpty!18141))

(assert (= b!2796191 b!2796169))

(assert (= b!2796187 b!2796191))

(assert (= b!2796170 b!2796187))

(assert (= (and b!2796173 ((_ is LongMap!3988) (v!34056 (underlying!8180 (cache!4037 cacheUp!890))))) b!2796170))

(assert (= b!2796176 b!2796173))

(assert (= (and b!2796190 ((_ is HashMap!3894) (cache!4037 cacheUp!890))) b!2796176))

(assert (= start!270314 b!2796190))

(declare-fun m!3225879 () Bool)

(assert (=> b!2796181 m!3225879))

(declare-fun m!3225881 () Bool)

(assert (=> b!2796185 m!3225881))

(declare-fun m!3225883 () Bool)

(assert (=> b!2796192 m!3225883))

(declare-fun m!3225885 () Bool)

(assert (=> b!2796192 m!3225885))

(declare-fun m!3225887 () Bool)

(assert (=> b!2796192 m!3225887))

(declare-fun m!3225889 () Bool)

(assert (=> b!2796175 m!3225889))

(declare-fun m!3225891 () Bool)

(assert (=> setNonEmpty!24218 m!3225891))

(declare-fun m!3225893 () Bool)

(assert (=> mapNonEmpty!18141 m!3225893))

(declare-fun m!3225895 () Bool)

(assert (=> b!2796189 m!3225895))

(declare-fun m!3225897 () Bool)

(assert (=> b!2796189 m!3225897))

(declare-fun m!3225899 () Bool)

(assert (=> b!2796177 m!3225899))

(declare-fun m!3225901 () Bool)

(assert (=> mapNonEmpty!18142 m!3225901))

(declare-fun m!3225903 () Bool)

(assert (=> start!270314 m!3225903))

(declare-fun m!3225905 () Bool)

(assert (=> start!270314 m!3225905))

(declare-fun m!3225907 () Bool)

(assert (=> start!270314 m!3225907))

(declare-fun m!3225909 () Bool)

(assert (=> start!270314 m!3225909))

(declare-fun m!3225911 () Bool)

(assert (=> start!270314 m!3225911))

(declare-fun m!3225913 () Bool)

(assert (=> b!2796167 m!3225913))

(declare-fun m!3225915 () Bool)

(assert (=> b!2796191 m!3225915))

(declare-fun m!3225917 () Bool)

(assert (=> b!2796191 m!3225917))

(declare-fun m!3225919 () Bool)

(assert (=> b!2796172 m!3225919))

(declare-fun m!3225921 () Bool)

(assert (=> b!2796172 m!3225921))

(assert (=> b!2796172 m!3225919))

(assert (=> b!2796172 m!3225921))

(declare-fun m!3225923 () Bool)

(assert (=> b!2796172 m!3225923))

(declare-fun m!3225925 () Bool)

(assert (=> b!2796172 m!3225925))

(declare-fun m!3225927 () Bool)

(assert (=> b!2796183 m!3225927))

(declare-fun m!3225929 () Bool)

(assert (=> b!2796183 m!3225929))

(declare-fun m!3225931 () Bool)

(assert (=> b!2796183 m!3225931))

(declare-fun m!3225933 () Bool)

(assert (=> b!2796186 m!3225933))

(check-sat (not b!2796167) b_and!203947 (not b!2796183) b_and!203945 (not b!2796191) (not b!2796185) (not b!2796189) (not b_next!79913) (not b!2796178) (not b!2796188) (not mapNonEmpty!18142) b_and!203943 (not mapNonEmpty!18141) (not b!2796186) (not b!2796168) (not b_next!79915) (not b!2796175) (not b!2796177) b_and!203949 (not b!2796172) (not setNonEmpty!24218) (not b!2796192) (not b!2796169) (not b_next!79909) (not b!2796181) (not b!2796166) (not b_next!79911) tp_is_empty!14207 (not start!270314))
(check-sat b_and!203947 (not b_next!79915) b_and!203945 (not b_next!79913) b_and!203949 (not b_next!79909) b_and!203943 (not b_next!79911))
