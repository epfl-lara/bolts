; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!507058 () Bool)

(assert start!507058)

(declare-fun b!4854967 () Bool)

(declare-fun b_free!130371 () Bool)

(declare-fun b_next!131161 () Bool)

(assert (=> b!4854967 (= b_free!130371 (not b_next!131161))))

(declare-fun tp!1365872 () Bool)

(declare-fun b_and!342199 () Bool)

(assert (=> b!4854967 (= tp!1365872 b_and!342199)))

(declare-fun b!4854965 () Bool)

(declare-fun b_free!130373 () Bool)

(declare-fun b_next!131163 () Bool)

(assert (=> b!4854965 (= b_free!130373 (not b_next!131163))))

(declare-fun tp!1365873 () Bool)

(declare-fun b_and!342201 () Bool)

(assert (=> b!4854965 (= tp!1365873 b_and!342201)))

(declare-fun e!3035320 () Bool)

(declare-fun e!3035321 () Bool)

(assert (=> b!4854965 (= e!3035320 (and e!3035321 tp!1365873))))

(declare-fun mapNonEmpty!22553 () Bool)

(declare-fun mapRes!22553 () Bool)

(declare-fun tp!1365869 () Bool)

(declare-fun tp!1365875 () Bool)

(assert (=> mapNonEmpty!22553 (= mapRes!22553 (and tp!1365869 tp!1365875))))

(declare-datatypes ((C!26332 0))(
  ( (C!26333 (val!22374 Int)) )
))
(declare-datatypes ((Regex!13067 0))(
  ( (ElementMatch!13067 (c!825925 C!26332)) (Concat!21386 (regOne!26646 Regex!13067) (regTwo!26646 Regex!13067)) (EmptyExpr!13067) (Star!13067 (reg!13396 Regex!13067)) (EmptyLang!13067) (Union!13067 (regOne!26647 Regex!13067) (regTwo!26647 Regex!13067)) )
))
(declare-datatypes ((List!55834 0))(
  ( (Nil!55710) (Cons!55710 (h!62158 Regex!13067) (t!363336 List!55834)) )
))
(declare-datatypes ((Context!5914 0))(
  ( (Context!5915 (exprs!3457 List!55834)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!59548 0))(
  ( (tuple2!59549 (_1!33071 (InoxSet Context!5914)) (_2!33071 Int)) )
))
(declare-datatypes ((tuple2!59550 0))(
  ( (tuple2!59551 (_1!33072 tuple2!59548) (_2!33072 Int)) )
))
(declare-datatypes ((List!55835 0))(
  ( (Nil!55711) (Cons!55711 (h!62159 tuple2!59550) (t!363337 List!55835)) )
))
(declare-datatypes ((array!18837 0))(
  ( (array!18838 (arr!8404 (Array (_ BitVec 32) (_ BitVec 64))) (size!36678 (_ BitVec 32))) )
))
(declare-datatypes ((array!18839 0))(
  ( (array!18840 (arr!8405 (Array (_ BitVec 32) List!55835)) (size!36679 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10220 0))(
  ( (LongMapFixedSize!10221 (defaultEntry!5535 Int) (mask!15414 (_ BitVec 32)) (extraKeys!5394 (_ BitVec 32)) (zeroValue!5407 List!55835) (minValue!5407 List!55835) (_size!10233 (_ BitVec 32)) (_keys!5464 array!18837) (_values!5432 array!18839) (_vacant!5175 (_ BitVec 32))) )
))
(declare-datatypes ((List!55836 0))(
  ( (Nil!55712) (Cons!55712 (h!62160 C!26332) (t!363338 List!55836)) )
))
(declare-datatypes ((IArray!29073 0))(
  ( (IArray!29074 (innerList!14594 List!55836)) )
))
(declare-datatypes ((Conc!14506 0))(
  ( (Node!14506 (left!40467 Conc!14506) (right!40797 Conc!14506) (csize!29242 Int) (cheight!14717 Int)) (Leaf!24170 (xs!17812 IArray!29073) (csize!29243 Int)) (Empty!14506) )
))
(declare-datatypes ((BalanceConc!28502 0))(
  ( (BalanceConc!28503 (c!825926 Conc!14506)) )
))
(declare-datatypes ((Cell!20181 0))(
  ( (Cell!20182 (v!49595 LongMapFixedSize!10220)) )
))
(declare-datatypes ((Hashable!7555 0))(
  ( (HashableExt!7554 (__x!33850 Int)) )
))
(declare-datatypes ((MutLongMap!5110 0))(
  ( (LongMap!5110 (underlying!10415 Cell!20181)) (MutLongMapExt!5109 (__x!33851 Int)) )
))
(declare-datatypes ((Cell!20183 0))(
  ( (Cell!20184 (v!49596 MutLongMap!5110)) )
))
(declare-datatypes ((MutableMap!4982 0))(
  ( (MutableMapExt!4981 (__x!33852 Int)) (HashMap!4982 (underlying!10416 Cell!20183) (hashF!13822 Hashable!7555) (_size!10234 (_ BitVec 32)) (defaultValue!5153 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!700 0))(
  ( (CacheFindLongestMatch!701 (cache!4596 MutableMap!4982) (totalInput!4522 BalanceConc!28502)) )
))
(declare-fun thiss!28904 () CacheFindLongestMatch!700)

(declare-fun mapRest!22553 () (Array (_ BitVec 32) List!55835))

(declare-fun mapKey!22553 () (_ BitVec 32))

(declare-fun mapValue!22553 () List!55835)

(assert (=> mapNonEmpty!22553 (= (arr!8405 (_values!5432 (v!49595 (underlying!10415 (v!49596 (underlying!10416 (cache!4596 thiss!28904))))))) (store mapRest!22553 mapKey!22553 mapValue!22553))))

(declare-fun mapIsEmpty!22553 () Bool)

(assert (=> mapIsEmpty!22553 mapRes!22553))

(declare-fun b!4854966 () Bool)

(declare-fun e!3035322 () Bool)

(declare-fun e!3035318 () Bool)

(declare-fun inv!71442 (BalanceConc!28502) Bool)

(assert (=> b!4854966 (= e!3035322 (and e!3035320 (inv!71442 (totalInput!4522 thiss!28904)) e!3035318))))

(declare-fun tp!1365870 () Bool)

(declare-fun e!3035317 () Bool)

(declare-fun tp!1365868 () Bool)

(declare-fun e!3035325 () Bool)

(declare-fun array_inv!6072 (array!18837) Bool)

(declare-fun array_inv!6073 (array!18839) Bool)

(assert (=> b!4854967 (= e!3035325 (and tp!1365872 tp!1365868 tp!1365870 (array_inv!6072 (_keys!5464 (v!49595 (underlying!10415 (v!49596 (underlying!10416 (cache!4596 thiss!28904))))))) (array_inv!6073 (_values!5432 (v!49595 (underlying!10415 (v!49596 (underlying!10416 (cache!4596 thiss!28904))))))) e!3035317))))

(declare-fun b!4854968 () Bool)

(declare-fun tp!1365874 () Bool)

(declare-fun inv!71443 (Conc!14506) Bool)

(assert (=> b!4854968 (= e!3035318 (and (inv!71443 (c!825926 (totalInput!4522 thiss!28904))) tp!1365874))))

(declare-fun valid!4137 (CacheFindLongestMatch!700) Bool)

(assert (=> start!507058 (not (valid!4137 thiss!28904))))

(declare-fun inv!71444 (CacheFindLongestMatch!700) Bool)

(assert (=> start!507058 (and (inv!71444 thiss!28904) e!3035322)))

(declare-fun b!4854969 () Bool)

(declare-fun tp!1365871 () Bool)

(assert (=> b!4854969 (= e!3035317 (and tp!1365871 mapRes!22553))))

(declare-fun condMapEmpty!22553 () Bool)

(declare-fun mapDefault!22553 () List!55835)

(assert (=> b!4854969 (= condMapEmpty!22553 (= (arr!8405 (_values!5432 (v!49595 (underlying!10415 (v!49596 (underlying!10416 (cache!4596 thiss!28904))))))) ((as const (Array (_ BitVec 32) List!55835)) mapDefault!22553)))))

(declare-fun b!4854970 () Bool)

(declare-fun e!3035324 () Bool)

(assert (=> b!4854970 (= e!3035324 e!3035325)))

(declare-fun b!4854971 () Bool)

(declare-fun e!3035323 () Bool)

(assert (=> b!4854971 (= e!3035323 e!3035324)))

(declare-fun b!4854972 () Bool)

(declare-fun lt!1991165 () MutLongMap!5110)

(get-info :version)

(assert (=> b!4854972 (= e!3035321 (and e!3035323 ((_ is LongMap!5110) lt!1991165)))))

(assert (=> b!4854972 (= lt!1991165 (v!49596 (underlying!10416 (cache!4596 thiss!28904))))))

(assert (= (and b!4854969 condMapEmpty!22553) mapIsEmpty!22553))

(assert (= (and b!4854969 (not condMapEmpty!22553)) mapNonEmpty!22553))

(assert (= b!4854967 b!4854969))

(assert (= b!4854970 b!4854967))

(assert (= b!4854971 b!4854970))

(assert (= (and b!4854972 ((_ is LongMap!5110) (v!49596 (underlying!10416 (cache!4596 thiss!28904))))) b!4854971))

(assert (= b!4854965 b!4854972))

(assert (= (and b!4854966 ((_ is HashMap!4982) (cache!4596 thiss!28904))) b!4854965))

(assert (= b!4854966 b!4854968))

(assert (= start!507058 b!4854966))

(declare-fun m!5852752 () Bool)

(assert (=> b!4854967 m!5852752))

(declare-fun m!5852754 () Bool)

(assert (=> b!4854967 m!5852754))

(declare-fun m!5852756 () Bool)

(assert (=> b!4854968 m!5852756))

(declare-fun m!5852758 () Bool)

(assert (=> mapNonEmpty!22553 m!5852758))

(declare-fun m!5852760 () Bool)

(assert (=> start!507058 m!5852760))

(declare-fun m!5852762 () Bool)

(assert (=> start!507058 m!5852762))

(declare-fun m!5852764 () Bool)

(assert (=> b!4854966 m!5852764))

(check-sat (not b!4854968) (not b!4854969) (not b!4854967) (not b_next!131163) (not start!507058) b_and!342201 (not b_next!131161) b_and!342199 (not b!4854966) (not mapNonEmpty!22553))
(check-sat b_and!342201 b_and!342199 (not b_next!131161) (not b_next!131163))
(get-model)

(declare-fun d!1558336 () Bool)

(declare-fun c!825929 () Bool)

(assert (=> d!1558336 (= c!825929 ((_ is Node!14506) (c!825926 (totalInput!4522 thiss!28904))))))

(declare-fun e!3035330 () Bool)

(assert (=> d!1558336 (= (inv!71443 (c!825926 (totalInput!4522 thiss!28904))) e!3035330)))

(declare-fun b!4854979 () Bool)

(declare-fun inv!71445 (Conc!14506) Bool)

(assert (=> b!4854979 (= e!3035330 (inv!71445 (c!825926 (totalInput!4522 thiss!28904))))))

(declare-fun b!4854980 () Bool)

(declare-fun e!3035331 () Bool)

(assert (=> b!4854980 (= e!3035330 e!3035331)))

(declare-fun res!2072608 () Bool)

(assert (=> b!4854980 (= res!2072608 (not ((_ is Leaf!24170) (c!825926 (totalInput!4522 thiss!28904)))))))

(assert (=> b!4854980 (=> res!2072608 e!3035331)))

(declare-fun b!4854981 () Bool)

(declare-fun inv!71446 (Conc!14506) Bool)

(assert (=> b!4854981 (= e!3035331 (inv!71446 (c!825926 (totalInput!4522 thiss!28904))))))

(assert (= (and d!1558336 c!825929) b!4854979))

(assert (= (and d!1558336 (not c!825929)) b!4854980))

(assert (= (and b!4854980 (not res!2072608)) b!4854981))

(declare-fun m!5852766 () Bool)

(assert (=> b!4854979 m!5852766))

(declare-fun m!5852768 () Bool)

(assert (=> b!4854981 m!5852768))

(assert (=> b!4854968 d!1558336))

(declare-fun d!1558338 () Bool)

(assert (=> d!1558338 (= (array_inv!6072 (_keys!5464 (v!49595 (underlying!10415 (v!49596 (underlying!10416 (cache!4596 thiss!28904))))))) (bvsge (size!36678 (_keys!5464 (v!49595 (underlying!10415 (v!49596 (underlying!10416 (cache!4596 thiss!28904))))))) #b00000000000000000000000000000000))))

(assert (=> b!4854967 d!1558338))

(declare-fun d!1558340 () Bool)

(assert (=> d!1558340 (= (array_inv!6073 (_values!5432 (v!49595 (underlying!10415 (v!49596 (underlying!10416 (cache!4596 thiss!28904))))))) (bvsge (size!36679 (_values!5432 (v!49595 (underlying!10415 (v!49596 (underlying!10416 (cache!4596 thiss!28904))))))) #b00000000000000000000000000000000))))

(assert (=> b!4854967 d!1558340))

(declare-fun d!1558342 () Bool)

(declare-fun validCacheMapFindLongestMatch!146 (MutableMap!4982 BalanceConc!28502) Bool)

(assert (=> d!1558342 (= (valid!4137 thiss!28904) (validCacheMapFindLongestMatch!146 (cache!4596 thiss!28904) (totalInput!4522 thiss!28904)))))

(declare-fun bs!1173628 () Bool)

(assert (= bs!1173628 d!1558342))

(declare-fun m!5852770 () Bool)

(assert (=> bs!1173628 m!5852770))

(assert (=> start!507058 d!1558342))

(declare-fun d!1558344 () Bool)

(declare-fun res!2072611 () Bool)

(declare-fun e!3035334 () Bool)

(assert (=> d!1558344 (=> (not res!2072611) (not e!3035334))))

(assert (=> d!1558344 (= res!2072611 ((_ is HashMap!4982) (cache!4596 thiss!28904)))))

(assert (=> d!1558344 (= (inv!71444 thiss!28904) e!3035334)))

(declare-fun b!4854984 () Bool)

(assert (=> b!4854984 (= e!3035334 (validCacheMapFindLongestMatch!146 (cache!4596 thiss!28904) (totalInput!4522 thiss!28904)))))

(assert (= (and d!1558344 res!2072611) b!4854984))

(assert (=> b!4854984 m!5852770))

(assert (=> start!507058 d!1558344))

(declare-fun d!1558346 () Bool)

(declare-fun isBalanced!3914 (Conc!14506) Bool)

(assert (=> d!1558346 (= (inv!71442 (totalInput!4522 thiss!28904)) (isBalanced!3914 (c!825926 (totalInput!4522 thiss!28904))))))

(declare-fun bs!1173629 () Bool)

(assert (= bs!1173629 d!1558346))

(declare-fun m!5852772 () Bool)

(assert (=> bs!1173629 m!5852772))

(assert (=> b!4854966 d!1558346))

(declare-fun b!4854993 () Bool)

(declare-fun e!3035339 () Bool)

(declare-fun tp!1365882 () Bool)

(declare-fun tp!1365884 () Bool)

(assert (=> b!4854993 (= e!3035339 (and (inv!71443 (left!40467 (c!825926 (totalInput!4522 thiss!28904)))) tp!1365882 (inv!71443 (right!40797 (c!825926 (totalInput!4522 thiss!28904)))) tp!1365884))))

(declare-fun b!4854995 () Bool)

(declare-fun e!3035340 () Bool)

(declare-fun tp!1365883 () Bool)

(assert (=> b!4854995 (= e!3035340 tp!1365883)))

(declare-fun b!4854994 () Bool)

(declare-fun inv!71447 (IArray!29073) Bool)

(assert (=> b!4854994 (= e!3035339 (and (inv!71447 (xs!17812 (c!825926 (totalInput!4522 thiss!28904)))) e!3035340))))

(assert (=> b!4854968 (= tp!1365874 (and (inv!71443 (c!825926 (totalInput!4522 thiss!28904))) e!3035339))))

(assert (= (and b!4854968 ((_ is Node!14506) (c!825926 (totalInput!4522 thiss!28904)))) b!4854993))

(assert (= b!4854994 b!4854995))

(assert (= (and b!4854968 ((_ is Leaf!24170) (c!825926 (totalInput!4522 thiss!28904)))) b!4854994))

(declare-fun m!5852774 () Bool)

(assert (=> b!4854993 m!5852774))

(declare-fun m!5852776 () Bool)

(assert (=> b!4854993 m!5852776))

(declare-fun m!5852778 () Bool)

(assert (=> b!4854994 m!5852778))

(assert (=> b!4854968 m!5852756))

(declare-fun b!4855003 () Bool)

(declare-fun e!3035346 () Bool)

(declare-fun tp!1365892 () Bool)

(assert (=> b!4855003 (= e!3035346 tp!1365892)))

(declare-fun setElem!27339 () Context!5914)

(declare-fun tp!1365893 () Bool)

(declare-fun setRes!27339 () Bool)

(declare-fun setNonEmpty!27339 () Bool)

(declare-fun inv!71448 (Context!5914) Bool)

(assert (=> setNonEmpty!27339 (= setRes!27339 (and tp!1365893 (inv!71448 setElem!27339) e!3035346))))

(declare-fun setRest!27339 () (InoxSet Context!5914))

(assert (=> setNonEmpty!27339 (= (_1!33071 (_1!33072 (h!62159 (zeroValue!5407 (v!49595 (underlying!10415 (v!49596 (underlying!10416 (cache!4596 thiss!28904))))))))) ((_ map or) (store ((as const (Array Context!5914 Bool)) false) setElem!27339 true) setRest!27339))))

(declare-fun setIsEmpty!27339 () Bool)

(assert (=> setIsEmpty!27339 setRes!27339))

(declare-fun b!4855002 () Bool)

(declare-fun e!3035345 () Bool)

(declare-fun tp!1365891 () Bool)

(assert (=> b!4855002 (= e!3035345 (and setRes!27339 tp!1365891))))

(declare-fun condSetEmpty!27339 () Bool)

(assert (=> b!4855002 (= condSetEmpty!27339 (= (_1!33071 (_1!33072 (h!62159 (zeroValue!5407 (v!49595 (underlying!10415 (v!49596 (underlying!10416 (cache!4596 thiss!28904))))))))) ((as const (Array Context!5914 Bool)) false)))))

(assert (=> b!4854967 (= tp!1365868 e!3035345)))

(assert (= (and b!4855002 condSetEmpty!27339) setIsEmpty!27339))

(assert (= (and b!4855002 (not condSetEmpty!27339)) setNonEmpty!27339))

(assert (= setNonEmpty!27339 b!4855003))

(assert (= (and b!4854967 ((_ is Cons!55711) (zeroValue!5407 (v!49595 (underlying!10415 (v!49596 (underlying!10416 (cache!4596 thiss!28904)))))))) b!4855002))

(declare-fun m!5852780 () Bool)

(assert (=> setNonEmpty!27339 m!5852780))

(declare-fun b!4855005 () Bool)

(declare-fun e!3035348 () Bool)

(declare-fun tp!1365895 () Bool)

(assert (=> b!4855005 (= e!3035348 tp!1365895)))

(declare-fun setElem!27340 () Context!5914)

(declare-fun tp!1365896 () Bool)

(declare-fun setRes!27340 () Bool)

(declare-fun setNonEmpty!27340 () Bool)

(assert (=> setNonEmpty!27340 (= setRes!27340 (and tp!1365896 (inv!71448 setElem!27340) e!3035348))))

(declare-fun setRest!27340 () (InoxSet Context!5914))

(assert (=> setNonEmpty!27340 (= (_1!33071 (_1!33072 (h!62159 (minValue!5407 (v!49595 (underlying!10415 (v!49596 (underlying!10416 (cache!4596 thiss!28904))))))))) ((_ map or) (store ((as const (Array Context!5914 Bool)) false) setElem!27340 true) setRest!27340))))

(declare-fun setIsEmpty!27340 () Bool)

(assert (=> setIsEmpty!27340 setRes!27340))

(declare-fun b!4855004 () Bool)

(declare-fun e!3035347 () Bool)

(declare-fun tp!1365894 () Bool)

(assert (=> b!4855004 (= e!3035347 (and setRes!27340 tp!1365894))))

(declare-fun condSetEmpty!27340 () Bool)

(assert (=> b!4855004 (= condSetEmpty!27340 (= (_1!33071 (_1!33072 (h!62159 (minValue!5407 (v!49595 (underlying!10415 (v!49596 (underlying!10416 (cache!4596 thiss!28904))))))))) ((as const (Array Context!5914 Bool)) false)))))

(assert (=> b!4854967 (= tp!1365870 e!3035347)))

(assert (= (and b!4855004 condSetEmpty!27340) setIsEmpty!27340))

(assert (= (and b!4855004 (not condSetEmpty!27340)) setNonEmpty!27340))

(assert (= setNonEmpty!27340 b!4855005))

(assert (= (and b!4854967 ((_ is Cons!55711) (minValue!5407 (v!49595 (underlying!10415 (v!49596 (underlying!10416 (cache!4596 thiss!28904)))))))) b!4855004))

(declare-fun m!5852782 () Bool)

(assert (=> setNonEmpty!27340 m!5852782))

(declare-fun e!3035360 () Bool)

(declare-fun setNonEmpty!27345 () Bool)

(declare-fun setElem!27346 () Context!5914)

(declare-fun setRes!27346 () Bool)

(declare-fun tp!1365913 () Bool)

(assert (=> setNonEmpty!27345 (= setRes!27346 (and tp!1365913 (inv!71448 setElem!27346) e!3035360))))

(declare-fun mapDefault!22556 () List!55835)

(declare-fun setRest!27346 () (InoxSet Context!5914))

(assert (=> setNonEmpty!27345 (= (_1!33071 (_1!33072 (h!62159 mapDefault!22556))) ((_ map or) (store ((as const (Array Context!5914 Bool)) false) setElem!27346 true) setRest!27346))))

(declare-fun setRes!27345 () Bool)

(declare-fun setElem!27345 () Context!5914)

(declare-fun tp!1365916 () Bool)

(declare-fun setNonEmpty!27346 () Bool)

(declare-fun e!3035358 () Bool)

(assert (=> setNonEmpty!27346 (= setRes!27345 (and tp!1365916 (inv!71448 setElem!27345) e!3035358))))

(declare-fun mapValue!22556 () List!55835)

(declare-fun setRest!27345 () (InoxSet Context!5914))

(assert (=> setNonEmpty!27346 (= (_1!33071 (_1!33072 (h!62159 mapValue!22556))) ((_ map or) (store ((as const (Array Context!5914 Bool)) false) setElem!27345 true) setRest!27345))))

(declare-fun setIsEmpty!27345 () Bool)

(assert (=> setIsEmpty!27345 setRes!27345))

(declare-fun b!4855016 () Bool)

(declare-fun tp!1365911 () Bool)

(assert (=> b!4855016 (= e!3035360 tp!1365911)))

(declare-fun b!4855017 () Bool)

(declare-fun tp!1365912 () Bool)

(assert (=> b!4855017 (= e!3035358 tp!1365912)))

(declare-fun setIsEmpty!27346 () Bool)

(assert (=> setIsEmpty!27346 setRes!27346))

(declare-fun b!4855018 () Bool)

(declare-fun e!3035357 () Bool)

(declare-fun tp!1365917 () Bool)

(assert (=> b!4855018 (= e!3035357 (and setRes!27345 tp!1365917))))

(declare-fun condSetEmpty!27346 () Bool)

(assert (=> b!4855018 (= condSetEmpty!27346 (= (_1!33071 (_1!33072 (h!62159 mapValue!22556))) ((as const (Array Context!5914 Bool)) false)))))

(declare-fun mapNonEmpty!22556 () Bool)

(declare-fun mapRes!22556 () Bool)

(declare-fun tp!1365915 () Bool)

(assert (=> mapNonEmpty!22556 (= mapRes!22556 (and tp!1365915 e!3035357))))

(declare-fun mapKey!22556 () (_ BitVec 32))

(declare-fun mapRest!22556 () (Array (_ BitVec 32) List!55835))

(assert (=> mapNonEmpty!22556 (= mapRest!22553 (store mapRest!22556 mapKey!22556 mapValue!22556))))

(declare-fun mapIsEmpty!22556 () Bool)

(assert (=> mapIsEmpty!22556 mapRes!22556))

(declare-fun b!4855019 () Bool)

(declare-fun e!3035359 () Bool)

(declare-fun tp!1365914 () Bool)

(assert (=> b!4855019 (= e!3035359 (and setRes!27346 tp!1365914))))

(declare-fun condSetEmpty!27345 () Bool)

(assert (=> b!4855019 (= condSetEmpty!27345 (= (_1!33071 (_1!33072 (h!62159 mapDefault!22556))) ((as const (Array Context!5914 Bool)) false)))))

(declare-fun condMapEmpty!22556 () Bool)

(assert (=> mapNonEmpty!22553 (= condMapEmpty!22556 (= mapRest!22553 ((as const (Array (_ BitVec 32) List!55835)) mapDefault!22556)))))

(assert (=> mapNonEmpty!22553 (= tp!1365869 (and e!3035359 mapRes!22556))))

(assert (= (and mapNonEmpty!22553 condMapEmpty!22556) mapIsEmpty!22556))

(assert (= (and mapNonEmpty!22553 (not condMapEmpty!22556)) mapNonEmpty!22556))

(assert (= (and b!4855018 condSetEmpty!27346) setIsEmpty!27345))

(assert (= (and b!4855018 (not condSetEmpty!27346)) setNonEmpty!27346))

(assert (= setNonEmpty!27346 b!4855017))

(assert (= (and mapNonEmpty!22556 ((_ is Cons!55711) mapValue!22556)) b!4855018))

(assert (= (and b!4855019 condSetEmpty!27345) setIsEmpty!27346))

(assert (= (and b!4855019 (not condSetEmpty!27345)) setNonEmpty!27345))

(assert (= setNonEmpty!27345 b!4855016))

(assert (= (and mapNonEmpty!22553 ((_ is Cons!55711) mapDefault!22556)) b!4855019))

(declare-fun m!5852784 () Bool)

(assert (=> setNonEmpty!27345 m!5852784))

(declare-fun m!5852786 () Bool)

(assert (=> setNonEmpty!27346 m!5852786))

(declare-fun m!5852788 () Bool)

(assert (=> mapNonEmpty!22556 m!5852788))

(declare-fun b!4855021 () Bool)

(declare-fun e!3035362 () Bool)

(declare-fun tp!1365919 () Bool)

(assert (=> b!4855021 (= e!3035362 tp!1365919)))

(declare-fun tp!1365920 () Bool)

(declare-fun setRes!27347 () Bool)

(declare-fun setElem!27347 () Context!5914)

(declare-fun setNonEmpty!27347 () Bool)

(assert (=> setNonEmpty!27347 (= setRes!27347 (and tp!1365920 (inv!71448 setElem!27347) e!3035362))))

(declare-fun setRest!27347 () (InoxSet Context!5914))

(assert (=> setNonEmpty!27347 (= (_1!33071 (_1!33072 (h!62159 mapValue!22553))) ((_ map or) (store ((as const (Array Context!5914 Bool)) false) setElem!27347 true) setRest!27347))))

(declare-fun setIsEmpty!27347 () Bool)

(assert (=> setIsEmpty!27347 setRes!27347))

(declare-fun b!4855020 () Bool)

(declare-fun e!3035361 () Bool)

(declare-fun tp!1365918 () Bool)

(assert (=> b!4855020 (= e!3035361 (and setRes!27347 tp!1365918))))

(declare-fun condSetEmpty!27347 () Bool)

(assert (=> b!4855020 (= condSetEmpty!27347 (= (_1!33071 (_1!33072 (h!62159 mapValue!22553))) ((as const (Array Context!5914 Bool)) false)))))

(assert (=> mapNonEmpty!22553 (= tp!1365875 e!3035361)))

(assert (= (and b!4855020 condSetEmpty!27347) setIsEmpty!27347))

(assert (= (and b!4855020 (not condSetEmpty!27347)) setNonEmpty!27347))

(assert (= setNonEmpty!27347 b!4855021))

(assert (= (and mapNonEmpty!22553 ((_ is Cons!55711) mapValue!22553)) b!4855020))

(declare-fun m!5852790 () Bool)

(assert (=> setNonEmpty!27347 m!5852790))

(declare-fun b!4855023 () Bool)

(declare-fun e!3035364 () Bool)

(declare-fun tp!1365922 () Bool)

(assert (=> b!4855023 (= e!3035364 tp!1365922)))

(declare-fun setNonEmpty!27348 () Bool)

(declare-fun setRes!27348 () Bool)

(declare-fun tp!1365923 () Bool)

(declare-fun setElem!27348 () Context!5914)

(assert (=> setNonEmpty!27348 (= setRes!27348 (and tp!1365923 (inv!71448 setElem!27348) e!3035364))))

(declare-fun setRest!27348 () (InoxSet Context!5914))

(assert (=> setNonEmpty!27348 (= (_1!33071 (_1!33072 (h!62159 mapDefault!22553))) ((_ map or) (store ((as const (Array Context!5914 Bool)) false) setElem!27348 true) setRest!27348))))

(declare-fun setIsEmpty!27348 () Bool)

(assert (=> setIsEmpty!27348 setRes!27348))

(declare-fun b!4855022 () Bool)

(declare-fun e!3035363 () Bool)

(declare-fun tp!1365921 () Bool)

(assert (=> b!4855022 (= e!3035363 (and setRes!27348 tp!1365921))))

(declare-fun condSetEmpty!27348 () Bool)

(assert (=> b!4855022 (= condSetEmpty!27348 (= (_1!33071 (_1!33072 (h!62159 mapDefault!22553))) ((as const (Array Context!5914 Bool)) false)))))

(assert (=> b!4854969 (= tp!1365871 e!3035363)))

(assert (= (and b!4855022 condSetEmpty!27348) setIsEmpty!27348))

(assert (= (and b!4855022 (not condSetEmpty!27348)) setNonEmpty!27348))

(assert (= setNonEmpty!27348 b!4855023))

(assert (= (and b!4854969 ((_ is Cons!55711) mapDefault!22553)) b!4855022))

(declare-fun m!5852792 () Bool)

(assert (=> setNonEmpty!27348 m!5852792))

(check-sat (not b!4855016) (not b!4855004) (not b!4854968) (not b!4855018) (not b!4855003) (not b!4855023) (not b!4854994) (not b!4855005) (not b!4855021) (not mapNonEmpty!22556) (not b!4855020) (not b!4854981) b_and!342201 (not b!4855022) (not b_next!131161) (not setNonEmpty!27339) b_and!342199 (not setNonEmpty!27346) (not b!4854984) (not b_next!131163) (not setNonEmpty!27345) (not d!1558346) (not setNonEmpty!27347) (not setNonEmpty!27340) (not d!1558342) (not b!4854979) (not b!4855019) (not setNonEmpty!27348) (not b!4854993) (not b!4855017) (not b!4855002) (not b!4854995))
(check-sat b_and!342201 b_and!342199 (not b_next!131161) (not b_next!131163))
