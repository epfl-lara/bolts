; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!270172 () Bool)

(assert start!270172)

(declare-fun b!2794595 () Bool)

(declare-fun b_free!79109 () Bool)

(declare-fun b_next!79813 () Bool)

(assert (=> b!2794595 (= b_free!79109 (not b_next!79813))))

(declare-fun tp!888528 () Bool)

(declare-fun b_and!203847 () Bool)

(assert (=> b!2794595 (= tp!888528 b_and!203847)))

(declare-fun b!2794615 () Bool)

(declare-fun b_free!79111 () Bool)

(declare-fun b_next!79815 () Bool)

(assert (=> b!2794615 (= b_free!79111 (not b_next!79815))))

(declare-fun tp!888527 () Bool)

(declare-fun b_and!203849 () Bool)

(assert (=> b!2794615 (= tp!888527 b_and!203849)))

(declare-fun b!2794600 () Bool)

(declare-fun b_free!79113 () Bool)

(declare-fun b_next!79817 () Bool)

(assert (=> b!2794600 (= b_free!79113 (not b_next!79817))))

(declare-fun tp!888521 () Bool)

(declare-fun b_and!203851 () Bool)

(assert (=> b!2794600 (= tp!888521 b_and!203851)))

(declare-fun b!2794603 () Bool)

(declare-fun b_free!79115 () Bool)

(declare-fun b_next!79819 () Bool)

(assert (=> b!2794603 (= b_free!79115 (not b_next!79819))))

(declare-fun tp!888522 () Bool)

(declare-fun b_and!203853 () Bool)

(assert (=> b!2794603 (= tp!888522 b_and!203853)))

(declare-fun e!1764687 () Bool)

(declare-fun e!1764692 () Bool)

(assert (=> b!2794595 (= e!1764687 (and e!1764692 tp!888528))))

(declare-fun mapIsEmpty!18049 () Bool)

(declare-fun mapRes!18049 () Bool)

(assert (=> mapIsEmpty!18049 mapRes!18049))

(declare-fun b!2794596 () Bool)

(declare-fun e!1764688 () Bool)

(declare-fun tp_is_empty!14183 () Bool)

(declare-fun tp!888531 () Bool)

(assert (=> b!2794596 (= e!1764688 (and tp_is_empty!14183 tp!888531))))

(declare-fun b!2794597 () Bool)

(declare-fun e!1764678 () Bool)

(declare-fun e!1764693 () Bool)

(assert (=> b!2794597 (= e!1764678 e!1764693)))

(declare-fun res!1165270 () Bool)

(assert (=> b!2794597 (=> (not res!1165270) (not e!1764693))))

(declare-fun totalInputSize!205 () Int)

(declare-fun lt!998618 () Int)

(assert (=> b!2794597 (= res!1165270 (= totalInputSize!205 lt!998618))))

(declare-datatypes ((C!16528 0))(
  ( (C!16529 (val!10198 Int)) )
))
(declare-datatypes ((List!32505 0))(
  ( (Nil!32405) (Cons!32405 (h!37825 C!16528) (t!228662 List!32505)) )
))
(declare-datatypes ((IArray!20105 0))(
  ( (IArray!20106 (innerList!10110 List!32505)) )
))
(declare-datatypes ((Conc!10050 0))(
  ( (Node!10050 (left!24540 Conc!10050) (right!24870 Conc!10050) (csize!20330 Int) (cheight!10261 Int)) (Leaf!15311 (xs!13162 IArray!20105) (csize!20331 Int)) (Empty!10050) )
))
(declare-datatypes ((BalanceConc!19714 0))(
  ( (BalanceConc!19715 (c!453536 Conc!10050)) )
))
(declare-fun totalInput!758 () BalanceConc!19714)

(declare-fun size!25244 (BalanceConc!19714) Int)

(assert (=> b!2794597 (= lt!998618 (size!25244 totalInput!758))))

(declare-fun b!2794598 () Bool)

(declare-fun res!1165273 () Bool)

(assert (=> b!2794598 (=> (not res!1165273) (not e!1764693))))

(declare-datatypes ((Hashable!3882 0))(
  ( (HashableExt!3881 (__x!21548 Int)) )
))
(declare-datatypes ((Regex!8185 0))(
  ( (ElementMatch!8185 (c!453537 C!16528)) (Concat!13273 (regOne!16882 Regex!8185) (regTwo!16882 Regex!8185)) (EmptyExpr!8185) (Star!8185 (reg!8514 Regex!8185)) (EmptyLang!8185) (Union!8185 (regOne!16883 Regex!8185) (regTwo!16883 Regex!8185)) )
))
(declare-datatypes ((List!32506 0))(
  ( (Nil!32406) (Cons!32406 (h!37826 Regex!8185) (t!228663 List!32506)) )
))
(declare-datatypes ((Context!4806 0))(
  ( (Context!4807 (exprs!2903 List!32506)) )
))
(declare-datatypes ((tuple2!32914 0))(
  ( (tuple2!32915 (_1!19480 Context!4806) (_2!19480 C!16528)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32916 0))(
  ( (tuple2!32917 (_1!19481 tuple2!32914) (_2!19481 (InoxSet Context!4806))) )
))
(declare-datatypes ((List!32507 0))(
  ( (Nil!32407) (Cons!32407 (h!37827 tuple2!32916) (t!228664 List!32507)) )
))
(declare-datatypes ((array!14101 0))(
  ( (array!14102 (arr!6284 (Array (_ BitVec 32) List!32507)) (size!25245 (_ BitVec 32))) )
))
(declare-datatypes ((array!14103 0))(
  ( (array!14104 (arr!6285 (Array (_ BitVec 32) (_ BitVec 64))) (size!25246 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7932 0))(
  ( (LongMapFixedSize!7933 (defaultEntry!4351 Int) (mask!9795 (_ BitVec 32)) (extraKeys!4215 (_ BitVec 32)) (zeroValue!4225 List!32507) (minValue!4225 List!32507) (_size!7975 (_ BitVec 32)) (_keys!4266 array!14103) (_values!4247 array!14101) (_vacant!4027 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15673 0))(
  ( (Cell!15674 (v!34010 LongMapFixedSize!7932)) )
))
(declare-datatypes ((MutLongMap!3966 0))(
  ( (LongMap!3966 (underlying!8135 Cell!15673)) (MutLongMapExt!3965 (__x!21549 Int)) )
))
(declare-datatypes ((Cell!15675 0))(
  ( (Cell!15676 (v!34011 MutLongMap!3966)) )
))
(declare-datatypes ((MutableMap!3872 0))(
  ( (MutableMapExt!3871 (__x!21550 Int)) (HashMap!3872 (underlying!8136 Cell!15675) (hashF!5914 Hashable!3882) (_size!7976 (_ BitVec 32)) (defaultValue!4043 Int)) )
))
(declare-datatypes ((CacheUp!2578 0))(
  ( (CacheUp!2579 (cache!4015 MutableMap!3872)) )
))
(declare-fun cacheUp!890 () CacheUp!2578)

(declare-fun valid!3108 (CacheUp!2578) Bool)

(assert (=> b!2794598 (= res!1165273 (valid!3108 cacheUp!890))))

(declare-fun b!2794599 () Bool)

(declare-fun e!1764677 () Bool)

(assert (=> b!2794599 (= e!1764677 e!1764687)))

(declare-fun e!1764679 () Bool)

(declare-fun e!1764674 () Bool)

(assert (=> b!2794600 (= e!1764679 (and e!1764674 tp!888521))))

(declare-fun mapNonEmpty!18049 () Bool)

(declare-fun tp!888530 () Bool)

(declare-fun tp!888526 () Bool)

(assert (=> mapNonEmpty!18049 (= mapRes!18049 (and tp!888530 tp!888526))))

(declare-datatypes ((tuple3!5106 0))(
  ( (tuple3!5107 (_1!19482 Regex!8185) (_2!19482 Context!4806) (_3!3023 C!16528)) )
))
(declare-datatypes ((tuple2!32918 0))(
  ( (tuple2!32919 (_1!19483 tuple3!5106) (_2!19483 (InoxSet Context!4806))) )
))
(declare-datatypes ((List!32508 0))(
  ( (Nil!32408) (Cons!32408 (h!37828 tuple2!32918) (t!228665 List!32508)) )
))
(declare-fun mapValue!18050 () List!32508)

(declare-fun mapRest!18050 () (Array (_ BitVec 32) List!32508))

(declare-fun mapKey!18050 () (_ BitVec 32))

(declare-datatypes ((array!14105 0))(
  ( (array!14106 (arr!6286 (Array (_ BitVec 32) List!32508)) (size!25247 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7934 0))(
  ( (LongMapFixedSize!7935 (defaultEntry!4352 Int) (mask!9796 (_ BitVec 32)) (extraKeys!4216 (_ BitVec 32)) (zeroValue!4226 List!32508) (minValue!4226 List!32508) (_size!7977 (_ BitVec 32)) (_keys!4267 array!14103) (_values!4248 array!14105) (_vacant!4028 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15677 0))(
  ( (Cell!15678 (v!34012 LongMapFixedSize!7934)) )
))
(declare-datatypes ((MutLongMap!3967 0))(
  ( (LongMap!3967 (underlying!8137 Cell!15677)) (MutLongMapExt!3966 (__x!21551 Int)) )
))
(declare-datatypes ((Cell!15679 0))(
  ( (Cell!15680 (v!34013 MutLongMap!3967)) )
))
(declare-datatypes ((Hashable!3883 0))(
  ( (HashableExt!3882 (__x!21552 Int)) )
))
(declare-datatypes ((MutableMap!3873 0))(
  ( (MutableMapExt!3872 (__x!21553 Int)) (HashMap!3873 (underlying!8138 Cell!15679) (hashF!5915 Hashable!3883) (_size!7978 (_ BitVec 32)) (defaultValue!4044 Int)) )
))
(declare-datatypes ((CacheDown!2698 0))(
  ( (CacheDown!2699 (cache!4016 MutableMap!3873)) )
))
(declare-fun cacheDown!1009 () CacheDown!2698)

(assert (=> mapNonEmpty!18049 (= (arr!6286 (_values!4248 (v!34012 (underlying!8137 (v!34013 (underlying!8138 (cache!4016 cacheDown!1009))))))) (store mapRest!18050 mapKey!18050 mapValue!18050))))

(declare-fun b!2794601 () Bool)

(declare-fun e!1764685 () Bool)

(declare-fun tp!888517 () Bool)

(declare-fun inv!44023 (Conc!10050) Bool)

(assert (=> b!2794601 (= e!1764685 (and (inv!44023 (c!453536 totalInput!758)) tp!888517))))

(declare-fun res!1165272 () Bool)

(declare-fun e!1764681 () Bool)

(assert (=> start!270172 (=> (not res!1165272) (not e!1764681))))

(declare-fun testedP!183 () List!32505)

(declare-fun testedSuffix!143 () List!32505)

(declare-fun ++!7999 (List!32505 List!32505) List!32505)

(declare-fun list!12183 (BalanceConc!19714) List!32505)

(assert (=> start!270172 (= res!1165272 (= (++!7999 testedP!183 testedSuffix!143) (list!12183 totalInput!758)))))

(assert (=> start!270172 e!1764681))

(declare-fun inv!44024 (BalanceConc!19714) Bool)

(assert (=> start!270172 (and (inv!44024 totalInput!758) e!1764685)))

(assert (=> start!270172 true))

(assert (=> start!270172 e!1764688))

(declare-fun e!1764680 () Bool)

(assert (=> start!270172 e!1764680))

(declare-fun inv!44025 (CacheDown!2698) Bool)

(assert (=> start!270172 (and (inv!44025 cacheDown!1009) e!1764677)))

(declare-fun e!1764690 () Bool)

(declare-fun inv!44026 (CacheUp!2578) Bool)

(assert (=> start!270172 (and (inv!44026 cacheUp!890) e!1764690)))

(declare-fun b!2794602 () Bool)

(declare-fun e!1764683 () Bool)

(declare-fun lt!998619 () MutLongMap!3966)

(get-info :version)

(assert (=> b!2794602 (= e!1764674 (and e!1764683 ((_ is LongMap!3966) lt!998619)))))

(assert (=> b!2794602 (= lt!998619 (v!34011 (underlying!8136 (cache!4015 cacheUp!890))))))

(declare-fun tp!888529 () Bool)

(declare-fun e!1764691 () Bool)

(declare-fun tp!888524 () Bool)

(declare-fun e!1764673 () Bool)

(declare-fun array_inv!4498 (array!14103) Bool)

(declare-fun array_inv!4499 (array!14101) Bool)

(assert (=> b!2794603 (= e!1764691 (and tp!888522 tp!888524 tp!888529 (array_inv!4498 (_keys!4266 (v!34010 (underlying!8135 (v!34011 (underlying!8136 (cache!4015 cacheUp!890))))))) (array_inv!4499 (_values!4247 (v!34010 (underlying!8135 (v!34011 (underlying!8136 (cache!4015 cacheUp!890))))))) e!1764673))))

(declare-fun b!2794604 () Bool)

(declare-fun e!1764675 () Bool)

(declare-fun e!1764682 () Bool)

(assert (=> b!2794604 (= e!1764675 e!1764682)))

(declare-fun b!2794605 () Bool)

(declare-fun e!1764686 () Bool)

(declare-fun lt!998620 () MutLongMap!3967)

(assert (=> b!2794605 (= e!1764692 (and e!1764686 ((_ is LongMap!3967) lt!998620)))))

(assert (=> b!2794605 (= lt!998620 (v!34013 (underlying!8138 (cache!4016 cacheDown!1009))))))

(declare-fun b!2794606 () Bool)

(declare-fun tp!888525 () Bool)

(assert (=> b!2794606 (= e!1764680 (and tp_is_empty!14183 tp!888525))))

(declare-fun mapIsEmpty!18050 () Bool)

(declare-fun mapRes!18050 () Bool)

(assert (=> mapIsEmpty!18050 mapRes!18050))

(declare-fun b!2794607 () Bool)

(declare-fun lt!998621 () Int)

(assert (=> b!2794607 (= e!1764693 (< (- lt!998618 lt!998621) 0))))

(declare-fun b!2794608 () Bool)

(assert (=> b!2794608 (= e!1764681 e!1764678)))

(declare-fun res!1165269 () Bool)

(assert (=> b!2794608 (=> (not res!1165269) (not e!1764678))))

(declare-fun testedPSize!143 () Int)

(assert (=> b!2794608 (= res!1165269 (= testedPSize!143 lt!998621))))

(declare-fun size!25248 (List!32505) Int)

(assert (=> b!2794608 (= lt!998621 (size!25248 testedP!183))))

(declare-fun b!2794609 () Bool)

(assert (=> b!2794609 (= e!1764690 e!1764679)))

(declare-fun b!2794610 () Bool)

(declare-fun tp!888519 () Bool)

(assert (=> b!2794610 (= e!1764673 (and tp!888519 mapRes!18050))))

(declare-fun condMapEmpty!18050 () Bool)

(declare-fun mapDefault!18049 () List!32507)

(assert (=> b!2794610 (= condMapEmpty!18050 (= (arr!6284 (_values!4247 (v!34010 (underlying!8135 (v!34011 (underlying!8136 (cache!4015 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32507)) mapDefault!18049)))))

(declare-fun b!2794611 () Bool)

(assert (=> b!2794611 (= e!1764686 e!1764675)))

(declare-fun mapNonEmpty!18050 () Bool)

(declare-fun tp!888516 () Bool)

(declare-fun tp!888520 () Bool)

(assert (=> mapNonEmpty!18050 (= mapRes!18050 (and tp!888516 tp!888520))))

(declare-fun mapKey!18049 () (_ BitVec 32))

(declare-fun mapValue!18049 () List!32507)

(declare-fun mapRest!18049 () (Array (_ BitVec 32) List!32507))

(assert (=> mapNonEmpty!18050 (= (arr!6284 (_values!4247 (v!34010 (underlying!8135 (v!34011 (underlying!8136 (cache!4015 cacheUp!890))))))) (store mapRest!18049 mapKey!18049 mapValue!18049))))

(declare-fun b!2794612 () Bool)

(declare-fun res!1165271 () Bool)

(assert (=> b!2794612 (=> (not res!1165271) (not e!1764693))))

(declare-fun valid!3109 (CacheDown!2698) Bool)

(assert (=> b!2794612 (= res!1165271 (valid!3109 cacheDown!1009))))

(declare-fun b!2794613 () Bool)

(declare-fun e!1764672 () Bool)

(assert (=> b!2794613 (= e!1764672 e!1764691)))

(declare-fun b!2794614 () Bool)

(declare-fun e!1764676 () Bool)

(declare-fun tp!888515 () Bool)

(assert (=> b!2794614 (= e!1764676 (and tp!888515 mapRes!18049))))

(declare-fun condMapEmpty!18049 () Bool)

(declare-fun mapDefault!18050 () List!32508)

(assert (=> b!2794614 (= condMapEmpty!18049 (= (arr!6286 (_values!4248 (v!34012 (underlying!8137 (v!34013 (underlying!8138 (cache!4016 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32508)) mapDefault!18050)))))

(declare-fun tp!888523 () Bool)

(declare-fun tp!888518 () Bool)

(declare-fun array_inv!4500 (array!14105) Bool)

(assert (=> b!2794615 (= e!1764682 (and tp!888527 tp!888523 tp!888518 (array_inv!4498 (_keys!4267 (v!34012 (underlying!8137 (v!34013 (underlying!8138 (cache!4016 cacheDown!1009))))))) (array_inv!4500 (_values!4248 (v!34012 (underlying!8137 (v!34013 (underlying!8138 (cache!4016 cacheDown!1009))))))) e!1764676))))

(declare-fun b!2794616 () Bool)

(assert (=> b!2794616 (= e!1764683 e!1764672)))

(assert (= (and start!270172 res!1165272) b!2794608))

(assert (= (and b!2794608 res!1165269) b!2794597))

(assert (= (and b!2794597 res!1165270) b!2794598))

(assert (= (and b!2794598 res!1165273) b!2794612))

(assert (= (and b!2794612 res!1165271) b!2794607))

(assert (= start!270172 b!2794601))

(assert (= (and start!270172 ((_ is Cons!32405) testedP!183)) b!2794596))

(assert (= (and start!270172 ((_ is Cons!32405) testedSuffix!143)) b!2794606))

(assert (= (and b!2794614 condMapEmpty!18049) mapIsEmpty!18049))

(assert (= (and b!2794614 (not condMapEmpty!18049)) mapNonEmpty!18049))

(assert (= b!2794615 b!2794614))

(assert (= b!2794604 b!2794615))

(assert (= b!2794611 b!2794604))

(assert (= (and b!2794605 ((_ is LongMap!3967) (v!34013 (underlying!8138 (cache!4016 cacheDown!1009))))) b!2794611))

(assert (= b!2794595 b!2794605))

(assert (= (and b!2794599 ((_ is HashMap!3873) (cache!4016 cacheDown!1009))) b!2794595))

(assert (= start!270172 b!2794599))

(assert (= (and b!2794610 condMapEmpty!18050) mapIsEmpty!18050))

(assert (= (and b!2794610 (not condMapEmpty!18050)) mapNonEmpty!18050))

(assert (= b!2794603 b!2794610))

(assert (= b!2794613 b!2794603))

(assert (= b!2794616 b!2794613))

(assert (= (and b!2794602 ((_ is LongMap!3966) (v!34011 (underlying!8136 (cache!4015 cacheUp!890))))) b!2794616))

(assert (= b!2794600 b!2794602))

(assert (= (and b!2794609 ((_ is HashMap!3872) (cache!4015 cacheUp!890))) b!2794600))

(assert (= start!270172 b!2794609))

(declare-fun m!3224749 () Bool)

(assert (=> b!2794598 m!3224749))

(declare-fun m!3224751 () Bool)

(assert (=> b!2794615 m!3224751))

(declare-fun m!3224753 () Bool)

(assert (=> b!2794615 m!3224753))

(declare-fun m!3224755 () Bool)

(assert (=> mapNonEmpty!18050 m!3224755))

(declare-fun m!3224757 () Bool)

(assert (=> b!2794597 m!3224757))

(declare-fun m!3224759 () Bool)

(assert (=> b!2794612 m!3224759))

(declare-fun m!3224761 () Bool)

(assert (=> start!270172 m!3224761))

(declare-fun m!3224763 () Bool)

(assert (=> start!270172 m!3224763))

(declare-fun m!3224765 () Bool)

(assert (=> start!270172 m!3224765))

(declare-fun m!3224767 () Bool)

(assert (=> start!270172 m!3224767))

(declare-fun m!3224769 () Bool)

(assert (=> start!270172 m!3224769))

(declare-fun m!3224771 () Bool)

(assert (=> b!2794603 m!3224771))

(declare-fun m!3224773 () Bool)

(assert (=> b!2794603 m!3224773))

(declare-fun m!3224775 () Bool)

(assert (=> b!2794601 m!3224775))

(declare-fun m!3224777 () Bool)

(assert (=> mapNonEmpty!18049 m!3224777))

(declare-fun m!3224779 () Bool)

(assert (=> b!2794608 m!3224779))

(check-sat (not b!2794601) (not mapNonEmpty!18049) (not b!2794603) (not b!2794608) b_and!203851 (not b!2794596) (not b!2794612) b_and!203853 (not b_next!79819) (not mapNonEmpty!18050) (not b!2794614) (not b!2794606) (not b!2794615) (not start!270172) b_and!203849 (not b_next!79815) (not b_next!79817) tp_is_empty!14183 b_and!203847 (not b!2794598) (not b!2794597) (not b!2794610) (not b_next!79813))
(check-sat b_and!203851 b_and!203847 (not b_next!79813) b_and!203853 (not b_next!79819) b_and!203849 (not b_next!79815) (not b_next!79817))
(get-model)

(declare-fun d!812547 () Bool)

(declare-fun lt!998624 () Int)

(assert (=> d!812547 (= lt!998624 (size!25248 (list!12183 totalInput!758)))))

(declare-fun size!25249 (Conc!10050) Int)

(assert (=> d!812547 (= lt!998624 (size!25249 (c!453536 totalInput!758)))))

(assert (=> d!812547 (= (size!25244 totalInput!758) lt!998624)))

(declare-fun bs!514682 () Bool)

(assert (= bs!514682 d!812547))

(assert (=> bs!514682 m!3224761))

(assert (=> bs!514682 m!3224761))

(declare-fun m!3224781 () Bool)

(assert (=> bs!514682 m!3224781))

(declare-fun m!3224783 () Bool)

(assert (=> bs!514682 m!3224783))

(assert (=> b!2794597 d!812547))

(declare-fun d!812549 () Bool)

(assert (=> d!812549 (= (array_inv!4498 (_keys!4267 (v!34012 (underlying!8137 (v!34013 (underlying!8138 (cache!4016 cacheDown!1009))))))) (bvsge (size!25246 (_keys!4267 (v!34012 (underlying!8137 (v!34013 (underlying!8138 (cache!4016 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2794615 d!812549))

(declare-fun d!812551 () Bool)

(assert (=> d!812551 (= (array_inv!4500 (_values!4248 (v!34012 (underlying!8137 (v!34013 (underlying!8138 (cache!4016 cacheDown!1009))))))) (bvsge (size!25247 (_values!4248 (v!34012 (underlying!8137 (v!34013 (underlying!8138 (cache!4016 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2794615 d!812551))

(declare-fun d!812553 () Bool)

(declare-fun c!453540 () Bool)

(assert (=> d!812553 (= c!453540 ((_ is Node!10050) (c!453536 totalInput!758)))))

(declare-fun e!1764698 () Bool)

(assert (=> d!812553 (= (inv!44023 (c!453536 totalInput!758)) e!1764698)))

(declare-fun b!2794623 () Bool)

(declare-fun inv!44027 (Conc!10050) Bool)

(assert (=> b!2794623 (= e!1764698 (inv!44027 (c!453536 totalInput!758)))))

(declare-fun b!2794624 () Bool)

(declare-fun e!1764699 () Bool)

(assert (=> b!2794624 (= e!1764698 e!1764699)))

(declare-fun res!1165276 () Bool)

(assert (=> b!2794624 (= res!1165276 (not ((_ is Leaf!15311) (c!453536 totalInput!758))))))

(assert (=> b!2794624 (=> res!1165276 e!1764699)))

(declare-fun b!2794625 () Bool)

(declare-fun inv!44028 (Conc!10050) Bool)

(assert (=> b!2794625 (= e!1764699 (inv!44028 (c!453536 totalInput!758)))))

(assert (= (and d!812553 c!453540) b!2794623))

(assert (= (and d!812553 (not c!453540)) b!2794624))

(assert (= (and b!2794624 (not res!1165276)) b!2794625))

(declare-fun m!3224785 () Bool)

(assert (=> b!2794623 m!3224785))

(declare-fun m!3224787 () Bool)

(assert (=> b!2794625 m!3224787))

(assert (=> b!2794601 d!812553))

(declare-fun d!812555 () Bool)

(declare-fun validCacheMapDown!421 (MutableMap!3873) Bool)

(assert (=> d!812555 (= (valid!3109 cacheDown!1009) (validCacheMapDown!421 (cache!4016 cacheDown!1009)))))

(declare-fun bs!514683 () Bool)

(assert (= bs!514683 d!812555))

(declare-fun m!3224789 () Bool)

(assert (=> bs!514683 m!3224789))

(assert (=> b!2794612 d!812555))

(declare-fun d!812557 () Bool)

(declare-fun res!1165279 () Bool)

(declare-fun e!1764702 () Bool)

(assert (=> d!812557 (=> (not res!1165279) (not e!1764702))))

(assert (=> d!812557 (= res!1165279 ((_ is HashMap!3872) (cache!4015 cacheUp!890)))))

(assert (=> d!812557 (= (inv!44026 cacheUp!890) e!1764702)))

(declare-fun b!2794628 () Bool)

(declare-fun validCacheMapUp!390 (MutableMap!3872) Bool)

(assert (=> b!2794628 (= e!1764702 (validCacheMapUp!390 (cache!4015 cacheUp!890)))))

(assert (= (and d!812557 res!1165279) b!2794628))

(declare-fun m!3224791 () Bool)

(assert (=> b!2794628 m!3224791))

(assert (=> start!270172 d!812557))

(declare-fun d!812559 () Bool)

(declare-fun isBalanced!3066 (Conc!10050) Bool)

(assert (=> d!812559 (= (inv!44024 totalInput!758) (isBalanced!3066 (c!453536 totalInput!758)))))

(declare-fun bs!514684 () Bool)

(assert (= bs!514684 d!812559))

(declare-fun m!3224793 () Bool)

(assert (=> bs!514684 m!3224793))

(assert (=> start!270172 d!812559))

(declare-fun d!812561 () Bool)

(declare-fun res!1165282 () Bool)

(declare-fun e!1764705 () Bool)

(assert (=> d!812561 (=> (not res!1165282) (not e!1764705))))

(assert (=> d!812561 (= res!1165282 ((_ is HashMap!3873) (cache!4016 cacheDown!1009)))))

(assert (=> d!812561 (= (inv!44025 cacheDown!1009) e!1764705)))

(declare-fun b!2794631 () Bool)

(assert (=> b!2794631 (= e!1764705 (validCacheMapDown!421 (cache!4016 cacheDown!1009)))))

(assert (= (and d!812561 res!1165282) b!2794631))

(assert (=> b!2794631 m!3224789))

(assert (=> start!270172 d!812561))

(declare-fun d!812563 () Bool)

(declare-fun list!12184 (Conc!10050) List!32505)

(assert (=> d!812563 (= (list!12183 totalInput!758) (list!12184 (c!453536 totalInput!758)))))

(declare-fun bs!514685 () Bool)

(assert (= bs!514685 d!812563))

(declare-fun m!3224795 () Bool)

(assert (=> bs!514685 m!3224795))

(assert (=> start!270172 d!812563))

(declare-fun d!812565 () Bool)

(declare-fun e!1764710 () Bool)

(assert (=> d!812565 e!1764710))

(declare-fun res!1165288 () Bool)

(assert (=> d!812565 (=> (not res!1165288) (not e!1764710))))

(declare-fun lt!998627 () List!32505)

(declare-fun content!4534 (List!32505) (InoxSet C!16528))

(assert (=> d!812565 (= res!1165288 (= (content!4534 lt!998627) ((_ map or) (content!4534 testedP!183) (content!4534 testedSuffix!143))))))

(declare-fun e!1764711 () List!32505)

(assert (=> d!812565 (= lt!998627 e!1764711)))

(declare-fun c!453543 () Bool)

(assert (=> d!812565 (= c!453543 ((_ is Nil!32405) testedP!183))))

(assert (=> d!812565 (= (++!7999 testedP!183 testedSuffix!143) lt!998627)))

(declare-fun b!2794642 () Bool)

(declare-fun res!1165287 () Bool)

(assert (=> b!2794642 (=> (not res!1165287) (not e!1764710))))

(assert (=> b!2794642 (= res!1165287 (= (size!25248 lt!998627) (+ (size!25248 testedP!183) (size!25248 testedSuffix!143))))))

(declare-fun b!2794643 () Bool)

(assert (=> b!2794643 (= e!1764710 (or (not (= testedSuffix!143 Nil!32405)) (= lt!998627 testedP!183)))))

(declare-fun b!2794640 () Bool)

(assert (=> b!2794640 (= e!1764711 testedSuffix!143)))

(declare-fun b!2794641 () Bool)

(assert (=> b!2794641 (= e!1764711 (Cons!32405 (h!37825 testedP!183) (++!7999 (t!228662 testedP!183) testedSuffix!143)))))

(assert (= (and d!812565 c!453543) b!2794640))

(assert (= (and d!812565 (not c!453543)) b!2794641))

(assert (= (and d!812565 res!1165288) b!2794642))

(assert (= (and b!2794642 res!1165287) b!2794643))

(declare-fun m!3224797 () Bool)

(assert (=> d!812565 m!3224797))

(declare-fun m!3224799 () Bool)

(assert (=> d!812565 m!3224799))

(declare-fun m!3224801 () Bool)

(assert (=> d!812565 m!3224801))

(declare-fun m!3224803 () Bool)

(assert (=> b!2794642 m!3224803))

(assert (=> b!2794642 m!3224779))

(declare-fun m!3224805 () Bool)

(assert (=> b!2794642 m!3224805))

(declare-fun m!3224807 () Bool)

(assert (=> b!2794641 m!3224807))

(assert (=> start!270172 d!812565))

(declare-fun d!812567 () Bool)

(declare-fun lt!998630 () Int)

(assert (=> d!812567 (>= lt!998630 0)))

(declare-fun e!1764714 () Int)

(assert (=> d!812567 (= lt!998630 e!1764714)))

(declare-fun c!453546 () Bool)

(assert (=> d!812567 (= c!453546 ((_ is Nil!32405) testedP!183))))

(assert (=> d!812567 (= (size!25248 testedP!183) lt!998630)))

(declare-fun b!2794648 () Bool)

(assert (=> b!2794648 (= e!1764714 0)))

(declare-fun b!2794649 () Bool)

(assert (=> b!2794649 (= e!1764714 (+ 1 (size!25248 (t!228662 testedP!183))))))

(assert (= (and d!812567 c!453546) b!2794648))

(assert (= (and d!812567 (not c!453546)) b!2794649))

(declare-fun m!3224809 () Bool)

(assert (=> b!2794649 m!3224809))

(assert (=> b!2794608 d!812567))

(declare-fun d!812569 () Bool)

(assert (=> d!812569 (= (array_inv!4498 (_keys!4266 (v!34010 (underlying!8135 (v!34011 (underlying!8136 (cache!4015 cacheUp!890))))))) (bvsge (size!25246 (_keys!4266 (v!34010 (underlying!8135 (v!34011 (underlying!8136 (cache!4015 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2794603 d!812569))

(declare-fun d!812571 () Bool)

(assert (=> d!812571 (= (array_inv!4499 (_values!4247 (v!34010 (underlying!8135 (v!34011 (underlying!8136 (cache!4015 cacheUp!890))))))) (bvsge (size!25245 (_values!4247 (v!34010 (underlying!8135 (v!34011 (underlying!8136 (cache!4015 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2794603 d!812571))

(declare-fun d!812573 () Bool)

(assert (=> d!812573 (= (valid!3108 cacheUp!890) (validCacheMapUp!390 (cache!4015 cacheUp!890)))))

(declare-fun bs!514686 () Bool)

(assert (= bs!514686 d!812573))

(assert (=> bs!514686 m!3224791))

(assert (=> b!2794598 d!812573))

(declare-fun b!2794654 () Bool)

(declare-fun e!1764717 () Bool)

(declare-fun tp!888534 () Bool)

(assert (=> b!2794654 (= e!1764717 (and tp_is_empty!14183 tp!888534))))

(assert (=> b!2794606 (= tp!888525 e!1764717)))

(assert (= (and b!2794606 ((_ is Cons!32405) (t!228662 testedSuffix!143))) b!2794654))

(declare-fun b!2794663 () Bool)

(declare-fun e!1764726 () Bool)

(declare-fun tp!888549 () Bool)

(assert (=> b!2794663 (= e!1764726 tp!888549)))

(declare-fun setRes!24098 () Bool)

(declare-fun tp!888548 () Bool)

(declare-fun tp!888547 () Bool)

(declare-fun e!1764724 () Bool)

(declare-fun e!1764725 () Bool)

(declare-fun b!2794664 () Bool)

(declare-fun inv!44029 (Context!4806) Bool)

(assert (=> b!2794664 (= e!1764724 (and tp!888547 (inv!44029 (_2!19482 (_1!19483 (h!37828 (zeroValue!4226 (v!34012 (underlying!8137 (v!34013 (underlying!8138 (cache!4016 cacheDown!1009)))))))))) e!1764725 tp_is_empty!14183 setRes!24098 tp!888548))))

(declare-fun condSetEmpty!24098 () Bool)

(assert (=> b!2794664 (= condSetEmpty!24098 (= (_2!19483 (h!37828 (zeroValue!4226 (v!34012 (underlying!8137 (v!34013 (underlying!8138 (cache!4016 cacheDown!1009)))))))) ((as const (Array Context!4806 Bool)) false)))))

(declare-fun tp!888545 () Bool)

(declare-fun setNonEmpty!24098 () Bool)

(declare-fun setElem!24098 () Context!4806)

(assert (=> setNonEmpty!24098 (= setRes!24098 (and tp!888545 (inv!44029 setElem!24098) e!1764726))))

(declare-fun setRest!24098 () (InoxSet Context!4806))

(assert (=> setNonEmpty!24098 (= (_2!19483 (h!37828 (zeroValue!4226 (v!34012 (underlying!8137 (v!34013 (underlying!8138 (cache!4016 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4806 Bool)) false) setElem!24098 true) setRest!24098))))

(declare-fun b!2794665 () Bool)

(declare-fun tp!888546 () Bool)

(assert (=> b!2794665 (= e!1764725 tp!888546)))

(declare-fun setIsEmpty!24098 () Bool)

(assert (=> setIsEmpty!24098 setRes!24098))

(assert (=> b!2794615 (= tp!888523 e!1764724)))

(assert (= b!2794664 b!2794665))

(assert (= (and b!2794664 condSetEmpty!24098) setIsEmpty!24098))

(assert (= (and b!2794664 (not condSetEmpty!24098)) setNonEmpty!24098))

(assert (= setNonEmpty!24098 b!2794663))

(assert (= (and b!2794615 ((_ is Cons!32408) (zeroValue!4226 (v!34012 (underlying!8137 (v!34013 (underlying!8138 (cache!4016 cacheDown!1009)))))))) b!2794664))

(declare-fun m!3224811 () Bool)

(assert (=> b!2794664 m!3224811))

(declare-fun m!3224813 () Bool)

(assert (=> setNonEmpty!24098 m!3224813))

(declare-fun b!2794666 () Bool)

(declare-fun e!1764729 () Bool)

(declare-fun tp!888554 () Bool)

(assert (=> b!2794666 (= e!1764729 tp!888554)))

(declare-fun tp!888553 () Bool)

(declare-fun tp!888552 () Bool)

(declare-fun b!2794667 () Bool)

(declare-fun setRes!24099 () Bool)

(declare-fun e!1764728 () Bool)

(declare-fun e!1764727 () Bool)

(assert (=> b!2794667 (= e!1764727 (and tp!888552 (inv!44029 (_2!19482 (_1!19483 (h!37828 (minValue!4226 (v!34012 (underlying!8137 (v!34013 (underlying!8138 (cache!4016 cacheDown!1009)))))))))) e!1764728 tp_is_empty!14183 setRes!24099 tp!888553))))

(declare-fun condSetEmpty!24099 () Bool)

(assert (=> b!2794667 (= condSetEmpty!24099 (= (_2!19483 (h!37828 (minValue!4226 (v!34012 (underlying!8137 (v!34013 (underlying!8138 (cache!4016 cacheDown!1009)))))))) ((as const (Array Context!4806 Bool)) false)))))

(declare-fun tp!888550 () Bool)

(declare-fun setNonEmpty!24099 () Bool)

(declare-fun setElem!24099 () Context!4806)

(assert (=> setNonEmpty!24099 (= setRes!24099 (and tp!888550 (inv!44029 setElem!24099) e!1764729))))

(declare-fun setRest!24099 () (InoxSet Context!4806))

(assert (=> setNonEmpty!24099 (= (_2!19483 (h!37828 (minValue!4226 (v!34012 (underlying!8137 (v!34013 (underlying!8138 (cache!4016 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4806 Bool)) false) setElem!24099 true) setRest!24099))))

(declare-fun b!2794668 () Bool)

(declare-fun tp!888551 () Bool)

(assert (=> b!2794668 (= e!1764728 tp!888551)))

(declare-fun setIsEmpty!24099 () Bool)

(assert (=> setIsEmpty!24099 setRes!24099))

(assert (=> b!2794615 (= tp!888518 e!1764727)))

(assert (= b!2794667 b!2794668))

(assert (= (and b!2794667 condSetEmpty!24099) setIsEmpty!24099))

(assert (= (and b!2794667 (not condSetEmpty!24099)) setNonEmpty!24099))

(assert (= setNonEmpty!24099 b!2794666))

(assert (= (and b!2794615 ((_ is Cons!32408) (minValue!4226 (v!34012 (underlying!8137 (v!34013 (underlying!8138 (cache!4016 cacheDown!1009)))))))) b!2794667))

(declare-fun m!3224815 () Bool)

(assert (=> b!2794667 m!3224815))

(declare-fun m!3224817 () Bool)

(assert (=> setNonEmpty!24099 m!3224817))

(declare-fun tp!888562 () Bool)

(declare-fun b!2794677 () Bool)

(declare-fun tp!888563 () Bool)

(declare-fun e!1764735 () Bool)

(assert (=> b!2794677 (= e!1764735 (and (inv!44023 (left!24540 (c!453536 totalInput!758))) tp!888562 (inv!44023 (right!24870 (c!453536 totalInput!758))) tp!888563))))

(declare-fun b!2794679 () Bool)

(declare-fun e!1764734 () Bool)

(declare-fun tp!888561 () Bool)

(assert (=> b!2794679 (= e!1764734 tp!888561)))

(declare-fun b!2794678 () Bool)

(declare-fun inv!44030 (IArray!20105) Bool)

(assert (=> b!2794678 (= e!1764735 (and (inv!44030 (xs!13162 (c!453536 totalInput!758))) e!1764734))))

(assert (=> b!2794601 (= tp!888517 (and (inv!44023 (c!453536 totalInput!758)) e!1764735))))

(assert (= (and b!2794601 ((_ is Node!10050) (c!453536 totalInput!758))) b!2794677))

(assert (= b!2794678 b!2794679))

(assert (= (and b!2794601 ((_ is Leaf!15311) (c!453536 totalInput!758))) b!2794678))

(declare-fun m!3224819 () Bool)

(assert (=> b!2794677 m!3224819))

(declare-fun m!3224821 () Bool)

(assert (=> b!2794677 m!3224821))

(declare-fun m!3224823 () Bool)

(assert (=> b!2794678 m!3224823))

(assert (=> b!2794601 m!3224775))

(declare-fun b!2794680 () Bool)

(declare-fun e!1764738 () Bool)

(declare-fun tp!888568 () Bool)

(assert (=> b!2794680 (= e!1764738 tp!888568)))

(declare-fun b!2794681 () Bool)

(declare-fun tp!888567 () Bool)

(declare-fun e!1764737 () Bool)

(declare-fun e!1764736 () Bool)

(declare-fun tp!888566 () Bool)

(declare-fun setRes!24100 () Bool)

(assert (=> b!2794681 (= e!1764736 (and tp!888566 (inv!44029 (_2!19482 (_1!19483 (h!37828 mapDefault!18050)))) e!1764737 tp_is_empty!14183 setRes!24100 tp!888567))))

(declare-fun condSetEmpty!24100 () Bool)

(assert (=> b!2794681 (= condSetEmpty!24100 (= (_2!19483 (h!37828 mapDefault!18050)) ((as const (Array Context!4806 Bool)) false)))))

(declare-fun setElem!24100 () Context!4806)

(declare-fun setNonEmpty!24100 () Bool)

(declare-fun tp!888564 () Bool)

(assert (=> setNonEmpty!24100 (= setRes!24100 (and tp!888564 (inv!44029 setElem!24100) e!1764738))))

(declare-fun setRest!24100 () (InoxSet Context!4806))

(assert (=> setNonEmpty!24100 (= (_2!19483 (h!37828 mapDefault!18050)) ((_ map or) (store ((as const (Array Context!4806 Bool)) false) setElem!24100 true) setRest!24100))))

(declare-fun b!2794682 () Bool)

(declare-fun tp!888565 () Bool)

(assert (=> b!2794682 (= e!1764737 tp!888565)))

(declare-fun setIsEmpty!24100 () Bool)

(assert (=> setIsEmpty!24100 setRes!24100))

(assert (=> b!2794614 (= tp!888515 e!1764736)))

(assert (= b!2794681 b!2794682))

(assert (= (and b!2794681 condSetEmpty!24100) setIsEmpty!24100))

(assert (= (and b!2794681 (not condSetEmpty!24100)) setNonEmpty!24100))

(assert (= setNonEmpty!24100 b!2794680))

(assert (= (and b!2794614 ((_ is Cons!32408) mapDefault!18050)) b!2794681))

(declare-fun m!3224825 () Bool)

(assert (=> b!2794681 m!3224825))

(declare-fun m!3224827 () Bool)

(assert (=> setNonEmpty!24100 m!3224827))

(declare-fun mapNonEmpty!18053 () Bool)

(declare-fun mapRes!18053 () Bool)

(declare-fun tp!888591 () Bool)

(declare-fun e!1764754 () Bool)

(assert (=> mapNonEmpty!18053 (= mapRes!18053 (and tp!888591 e!1764754))))

(declare-fun mapKey!18053 () (_ BitVec 32))

(declare-fun mapValue!18053 () List!32508)

(declare-fun mapRest!18053 () (Array (_ BitVec 32) List!32508))

(assert (=> mapNonEmpty!18053 (= mapRest!18050 (store mapRest!18053 mapKey!18053 mapValue!18053))))

(declare-fun tp!888599 () Bool)

(declare-fun e!1764755 () Bool)

(declare-fun tp!888594 () Bool)

(declare-fun e!1764756 () Bool)

(declare-fun b!2794697 () Bool)

(declare-fun setRes!24106 () Bool)

(declare-fun mapDefault!18053 () List!32508)

(assert (=> b!2794697 (= e!1764755 (and tp!888594 (inv!44029 (_2!19482 (_1!19483 (h!37828 mapDefault!18053)))) e!1764756 tp_is_empty!14183 setRes!24106 tp!888599))))

(declare-fun condSetEmpty!24106 () Bool)

(assert (=> b!2794697 (= condSetEmpty!24106 (= (_2!19483 (h!37828 mapDefault!18053)) ((as const (Array Context!4806 Bool)) false)))))

(declare-fun setIsEmpty!24105 () Bool)

(assert (=> setIsEmpty!24105 setRes!24106))

(declare-fun setIsEmpty!24106 () Bool)

(declare-fun setRes!24105 () Bool)

(assert (=> setIsEmpty!24106 setRes!24105))

(declare-fun b!2794698 () Bool)

(declare-fun e!1764752 () Bool)

(declare-fun tp!888595 () Bool)

(assert (=> b!2794698 (= e!1764752 tp!888595)))

(declare-fun b!2794699 () Bool)

(declare-fun e!1764753 () Bool)

(declare-fun tp!888598 () Bool)

(assert (=> b!2794699 (= e!1764753 tp!888598)))

(declare-fun tp!888600 () Bool)

(declare-fun setElem!24105 () Context!4806)

(declare-fun setNonEmpty!24105 () Bool)

(assert (=> setNonEmpty!24105 (= setRes!24105 (and tp!888600 (inv!44029 setElem!24105) e!1764752))))

(declare-fun setRest!24106 () (InoxSet Context!4806))

(assert (=> setNonEmpty!24105 (= (_2!19483 (h!37828 mapValue!18053)) ((_ map or) (store ((as const (Array Context!4806 Bool)) false) setElem!24105 true) setRest!24106))))

(declare-fun condMapEmpty!18053 () Bool)

(assert (=> mapNonEmpty!18049 (= condMapEmpty!18053 (= mapRest!18050 ((as const (Array (_ BitVec 32) List!32508)) mapDefault!18053)))))

(assert (=> mapNonEmpty!18049 (= tp!888530 (and e!1764755 mapRes!18053))))

(declare-fun b!2794700 () Bool)

(declare-fun e!1764751 () Bool)

(declare-fun tp!888592 () Bool)

(declare-fun tp!888596 () Bool)

(assert (=> b!2794700 (= e!1764754 (and tp!888592 (inv!44029 (_2!19482 (_1!19483 (h!37828 mapValue!18053)))) e!1764751 tp_is_empty!14183 setRes!24105 tp!888596))))

(declare-fun condSetEmpty!24105 () Bool)

(assert (=> b!2794700 (= condSetEmpty!24105 (= (_2!19483 (h!37828 mapValue!18053)) ((as const (Array Context!4806 Bool)) false)))))

(declare-fun b!2794701 () Bool)

(declare-fun tp!888597 () Bool)

(assert (=> b!2794701 (= e!1764751 tp!888597)))

(declare-fun b!2794702 () Bool)

(declare-fun tp!888593 () Bool)

(assert (=> b!2794702 (= e!1764756 tp!888593)))

(declare-fun mapIsEmpty!18053 () Bool)

(assert (=> mapIsEmpty!18053 mapRes!18053))

(declare-fun tp!888601 () Bool)

(declare-fun setElem!24106 () Context!4806)

(declare-fun setNonEmpty!24106 () Bool)

(assert (=> setNonEmpty!24106 (= setRes!24106 (and tp!888601 (inv!44029 setElem!24106) e!1764753))))

(declare-fun setRest!24105 () (InoxSet Context!4806))

(assert (=> setNonEmpty!24106 (= (_2!19483 (h!37828 mapDefault!18053)) ((_ map or) (store ((as const (Array Context!4806 Bool)) false) setElem!24106 true) setRest!24105))))

(assert (= (and mapNonEmpty!18049 condMapEmpty!18053) mapIsEmpty!18053))

(assert (= (and mapNonEmpty!18049 (not condMapEmpty!18053)) mapNonEmpty!18053))

(assert (= b!2794700 b!2794701))

(assert (= (and b!2794700 condSetEmpty!24105) setIsEmpty!24106))

(assert (= (and b!2794700 (not condSetEmpty!24105)) setNonEmpty!24105))

(assert (= setNonEmpty!24105 b!2794698))

(assert (= (and mapNonEmpty!18053 ((_ is Cons!32408) mapValue!18053)) b!2794700))

(assert (= b!2794697 b!2794702))

(assert (= (and b!2794697 condSetEmpty!24106) setIsEmpty!24105))

(assert (= (and b!2794697 (not condSetEmpty!24106)) setNonEmpty!24106))

(assert (= setNonEmpty!24106 b!2794699))

(assert (= (and mapNonEmpty!18049 ((_ is Cons!32408) mapDefault!18053)) b!2794697))

(declare-fun m!3224829 () Bool)

(assert (=> setNonEmpty!24105 m!3224829))

(declare-fun m!3224831 () Bool)

(assert (=> setNonEmpty!24106 m!3224831))

(declare-fun m!3224833 () Bool)

(assert (=> mapNonEmpty!18053 m!3224833))

(declare-fun m!3224835 () Bool)

(assert (=> b!2794697 m!3224835))

(declare-fun m!3224837 () Bool)

(assert (=> b!2794700 m!3224837))

(declare-fun b!2794703 () Bool)

(declare-fun e!1764759 () Bool)

(declare-fun tp!888606 () Bool)

(assert (=> b!2794703 (= e!1764759 tp!888606)))

(declare-fun tp!888605 () Bool)

(declare-fun setRes!24107 () Bool)

(declare-fun e!1764758 () Bool)

(declare-fun e!1764757 () Bool)

(declare-fun tp!888604 () Bool)

(declare-fun b!2794704 () Bool)

(assert (=> b!2794704 (= e!1764757 (and tp!888604 (inv!44029 (_2!19482 (_1!19483 (h!37828 mapValue!18050)))) e!1764758 tp_is_empty!14183 setRes!24107 tp!888605))))

(declare-fun condSetEmpty!24107 () Bool)

(assert (=> b!2794704 (= condSetEmpty!24107 (= (_2!19483 (h!37828 mapValue!18050)) ((as const (Array Context!4806 Bool)) false)))))

(declare-fun setNonEmpty!24107 () Bool)

(declare-fun tp!888602 () Bool)

(declare-fun setElem!24107 () Context!4806)

(assert (=> setNonEmpty!24107 (= setRes!24107 (and tp!888602 (inv!44029 setElem!24107) e!1764759))))

(declare-fun setRest!24107 () (InoxSet Context!4806))

(assert (=> setNonEmpty!24107 (= (_2!19483 (h!37828 mapValue!18050)) ((_ map or) (store ((as const (Array Context!4806 Bool)) false) setElem!24107 true) setRest!24107))))

(declare-fun b!2794705 () Bool)

(declare-fun tp!888603 () Bool)

(assert (=> b!2794705 (= e!1764758 tp!888603)))

(declare-fun setIsEmpty!24107 () Bool)

(assert (=> setIsEmpty!24107 setRes!24107))

(assert (=> mapNonEmpty!18049 (= tp!888526 e!1764757)))

(assert (= b!2794704 b!2794705))

(assert (= (and b!2794704 condSetEmpty!24107) setIsEmpty!24107))

(assert (= (and b!2794704 (not condSetEmpty!24107)) setNonEmpty!24107))

(assert (= setNonEmpty!24107 b!2794703))

(assert (= (and mapNonEmpty!18049 ((_ is Cons!32408) mapValue!18050)) b!2794704))

(declare-fun m!3224839 () Bool)

(assert (=> b!2794704 m!3224839))

(declare-fun m!3224841 () Bool)

(assert (=> setNonEmpty!24107 m!3224841))

(declare-fun tp!888615 () Bool)

(declare-fun e!1764767 () Bool)

(declare-fun b!2794714 () Bool)

(declare-fun setRes!24110 () Bool)

(declare-fun e!1764768 () Bool)

(assert (=> b!2794714 (= e!1764767 (and (inv!44029 (_1!19480 (_1!19481 (h!37827 mapDefault!18049)))) e!1764768 tp_is_empty!14183 setRes!24110 tp!888615))))

(declare-fun condSetEmpty!24110 () Bool)

(assert (=> b!2794714 (= condSetEmpty!24110 (= (_2!19481 (h!37827 mapDefault!18049)) ((as const (Array Context!4806 Bool)) false)))))

(declare-fun setIsEmpty!24110 () Bool)

(assert (=> setIsEmpty!24110 setRes!24110))

(declare-fun b!2794715 () Bool)

(declare-fun e!1764766 () Bool)

(declare-fun tp!888617 () Bool)

(assert (=> b!2794715 (= e!1764766 tp!888617)))

(assert (=> b!2794610 (= tp!888519 e!1764767)))

(declare-fun b!2794716 () Bool)

(declare-fun tp!888618 () Bool)

(assert (=> b!2794716 (= e!1764768 tp!888618)))

(declare-fun setNonEmpty!24110 () Bool)

(declare-fun setElem!24110 () Context!4806)

(declare-fun tp!888616 () Bool)

(assert (=> setNonEmpty!24110 (= setRes!24110 (and tp!888616 (inv!44029 setElem!24110) e!1764766))))

(declare-fun setRest!24110 () (InoxSet Context!4806))

(assert (=> setNonEmpty!24110 (= (_2!19481 (h!37827 mapDefault!18049)) ((_ map or) (store ((as const (Array Context!4806 Bool)) false) setElem!24110 true) setRest!24110))))

(assert (= b!2794714 b!2794716))

(assert (= (and b!2794714 condSetEmpty!24110) setIsEmpty!24110))

(assert (= (and b!2794714 (not condSetEmpty!24110)) setNonEmpty!24110))

(assert (= setNonEmpty!24110 b!2794715))

(assert (= (and b!2794610 ((_ is Cons!32407) mapDefault!18049)) b!2794714))

(declare-fun m!3224843 () Bool)

(assert (=> b!2794714 m!3224843))

(declare-fun m!3224845 () Bool)

(assert (=> setNonEmpty!24110 m!3224845))

(declare-fun b!2794717 () Bool)

(declare-fun e!1764769 () Bool)

(declare-fun tp!888619 () Bool)

(assert (=> b!2794717 (= e!1764769 (and tp_is_empty!14183 tp!888619))))

(assert (=> b!2794596 (= tp!888531 e!1764769)))

(assert (= (and b!2794596 ((_ is Cons!32405) (t!228662 testedP!183))) b!2794717))

(declare-fun e!1764772 () Bool)

(declare-fun e!1764771 () Bool)

(declare-fun b!2794718 () Bool)

(declare-fun tp!888620 () Bool)

(declare-fun setRes!24111 () Bool)

(assert (=> b!2794718 (= e!1764771 (and (inv!44029 (_1!19480 (_1!19481 (h!37827 (zeroValue!4225 (v!34010 (underlying!8135 (v!34011 (underlying!8136 (cache!4015 cacheUp!890)))))))))) e!1764772 tp_is_empty!14183 setRes!24111 tp!888620))))

(declare-fun condSetEmpty!24111 () Bool)

(assert (=> b!2794718 (= condSetEmpty!24111 (= (_2!19481 (h!37827 (zeroValue!4225 (v!34010 (underlying!8135 (v!34011 (underlying!8136 (cache!4015 cacheUp!890)))))))) ((as const (Array Context!4806 Bool)) false)))))

(declare-fun setIsEmpty!24111 () Bool)

(assert (=> setIsEmpty!24111 setRes!24111))

(declare-fun b!2794719 () Bool)

(declare-fun e!1764770 () Bool)

(declare-fun tp!888622 () Bool)

(assert (=> b!2794719 (= e!1764770 tp!888622)))

(assert (=> b!2794603 (= tp!888524 e!1764771)))

(declare-fun b!2794720 () Bool)

(declare-fun tp!888623 () Bool)

(assert (=> b!2794720 (= e!1764772 tp!888623)))

(declare-fun setElem!24111 () Context!4806)

(declare-fun tp!888621 () Bool)

(declare-fun setNonEmpty!24111 () Bool)

(assert (=> setNonEmpty!24111 (= setRes!24111 (and tp!888621 (inv!44029 setElem!24111) e!1764770))))

(declare-fun setRest!24111 () (InoxSet Context!4806))

(assert (=> setNonEmpty!24111 (= (_2!19481 (h!37827 (zeroValue!4225 (v!34010 (underlying!8135 (v!34011 (underlying!8136 (cache!4015 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4806 Bool)) false) setElem!24111 true) setRest!24111))))

(assert (= b!2794718 b!2794720))

(assert (= (and b!2794718 condSetEmpty!24111) setIsEmpty!24111))

(assert (= (and b!2794718 (not condSetEmpty!24111)) setNonEmpty!24111))

(assert (= setNonEmpty!24111 b!2794719))

(assert (= (and b!2794603 ((_ is Cons!32407) (zeroValue!4225 (v!34010 (underlying!8135 (v!34011 (underlying!8136 (cache!4015 cacheUp!890)))))))) b!2794718))

(declare-fun m!3224847 () Bool)

(assert (=> b!2794718 m!3224847))

(declare-fun m!3224849 () Bool)

(assert (=> setNonEmpty!24111 m!3224849))

(declare-fun setRes!24112 () Bool)

(declare-fun e!1764774 () Bool)

(declare-fun b!2794721 () Bool)

(declare-fun tp!888624 () Bool)

(declare-fun e!1764775 () Bool)

(assert (=> b!2794721 (= e!1764774 (and (inv!44029 (_1!19480 (_1!19481 (h!37827 (minValue!4225 (v!34010 (underlying!8135 (v!34011 (underlying!8136 (cache!4015 cacheUp!890)))))))))) e!1764775 tp_is_empty!14183 setRes!24112 tp!888624))))

(declare-fun condSetEmpty!24112 () Bool)

(assert (=> b!2794721 (= condSetEmpty!24112 (= (_2!19481 (h!37827 (minValue!4225 (v!34010 (underlying!8135 (v!34011 (underlying!8136 (cache!4015 cacheUp!890)))))))) ((as const (Array Context!4806 Bool)) false)))))

(declare-fun setIsEmpty!24112 () Bool)

(assert (=> setIsEmpty!24112 setRes!24112))

(declare-fun b!2794722 () Bool)

(declare-fun e!1764773 () Bool)

(declare-fun tp!888626 () Bool)

(assert (=> b!2794722 (= e!1764773 tp!888626)))

(assert (=> b!2794603 (= tp!888529 e!1764774)))

(declare-fun b!2794723 () Bool)

(declare-fun tp!888627 () Bool)

(assert (=> b!2794723 (= e!1764775 tp!888627)))

(declare-fun tp!888625 () Bool)

(declare-fun setNonEmpty!24112 () Bool)

(declare-fun setElem!24112 () Context!4806)

(assert (=> setNonEmpty!24112 (= setRes!24112 (and tp!888625 (inv!44029 setElem!24112) e!1764773))))

(declare-fun setRest!24112 () (InoxSet Context!4806))

(assert (=> setNonEmpty!24112 (= (_2!19481 (h!37827 (minValue!4225 (v!34010 (underlying!8135 (v!34011 (underlying!8136 (cache!4015 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4806 Bool)) false) setElem!24112 true) setRest!24112))))

(assert (= b!2794721 b!2794723))

(assert (= (and b!2794721 condSetEmpty!24112) setIsEmpty!24112))

(assert (= (and b!2794721 (not condSetEmpty!24112)) setNonEmpty!24112))

(assert (= setNonEmpty!24112 b!2794722))

(assert (= (and b!2794603 ((_ is Cons!32407) (minValue!4225 (v!34010 (underlying!8135 (v!34011 (underlying!8136 (cache!4015 cacheUp!890)))))))) b!2794721))

(declare-fun m!3224851 () Bool)

(assert (=> b!2794721 m!3224851))

(declare-fun m!3224853 () Bool)

(assert (=> setNonEmpty!24112 m!3224853))

(declare-fun setIsEmpty!24117 () Bool)

(declare-fun setRes!24117 () Bool)

(assert (=> setIsEmpty!24117 setRes!24117))

(declare-fun setIsEmpty!24118 () Bool)

(declare-fun setRes!24118 () Bool)

(assert (=> setIsEmpty!24118 setRes!24118))

(declare-fun mapNonEmpty!18056 () Bool)

(declare-fun mapRes!18056 () Bool)

(declare-fun tp!888650 () Bool)

(declare-fun e!1764791 () Bool)

(assert (=> mapNonEmpty!18056 (= mapRes!18056 (and tp!888650 e!1764791))))

(declare-fun mapKey!18056 () (_ BitVec 32))

(declare-fun mapRest!18056 () (Array (_ BitVec 32) List!32507))

(declare-fun mapValue!18056 () List!32507)

(assert (=> mapNonEmpty!18056 (= mapRest!18049 (store mapRest!18056 mapKey!18056 mapValue!18056))))

(declare-fun b!2794738 () Bool)

(declare-fun e!1764788 () Bool)

(declare-fun tp!888649 () Bool)

(assert (=> b!2794738 (= e!1764788 tp!888649)))

(declare-fun e!1764793 () Bool)

(declare-fun b!2794739 () Bool)

(declare-fun tp!888653 () Bool)

(assert (=> b!2794739 (= e!1764791 (and (inv!44029 (_1!19480 (_1!19481 (h!37827 mapValue!18056)))) e!1764793 tp_is_empty!14183 setRes!24117 tp!888653))))

(declare-fun condSetEmpty!24117 () Bool)

(assert (=> b!2794739 (= condSetEmpty!24117 (= (_2!19481 (h!37827 mapValue!18056)) ((as const (Array Context!4806 Bool)) false)))))

(declare-fun condMapEmpty!18056 () Bool)

(declare-fun mapDefault!18056 () List!32507)

(assert (=> mapNonEmpty!18050 (= condMapEmpty!18056 (= mapRest!18049 ((as const (Array (_ BitVec 32) List!32507)) mapDefault!18056)))))

(declare-fun e!1764790 () Bool)

(assert (=> mapNonEmpty!18050 (= tp!888516 (and e!1764790 mapRes!18056))))

(declare-fun setElem!24117 () Context!4806)

(declare-fun setNonEmpty!24117 () Bool)

(declare-fun tp!888654 () Bool)

(assert (=> setNonEmpty!24117 (= setRes!24117 (and tp!888654 (inv!44029 setElem!24117) e!1764788))))

(declare-fun setRest!24117 () (InoxSet Context!4806))

(assert (=> setNonEmpty!24117 (= (_2!19481 (h!37827 mapValue!18056)) ((_ map or) (store ((as const (Array Context!4806 Bool)) false) setElem!24117 true) setRest!24117))))

(declare-fun tp!888652 () Bool)

(declare-fun e!1764792 () Bool)

(declare-fun b!2794740 () Bool)

(assert (=> b!2794740 (= e!1764790 (and (inv!44029 (_1!19480 (_1!19481 (h!37827 mapDefault!18056)))) e!1764792 tp_is_empty!14183 setRes!24118 tp!888652))))

(declare-fun condSetEmpty!24118 () Bool)

(assert (=> b!2794740 (= condSetEmpty!24118 (= (_2!19481 (h!37827 mapDefault!18056)) ((as const (Array Context!4806 Bool)) false)))))

(declare-fun b!2794741 () Bool)

(declare-fun tp!888648 () Bool)

(assert (=> b!2794741 (= e!1764792 tp!888648)))

(declare-fun b!2794742 () Bool)

(declare-fun tp!888647 () Bool)

(assert (=> b!2794742 (= e!1764793 tp!888647)))

(declare-fun mapIsEmpty!18056 () Bool)

(assert (=> mapIsEmpty!18056 mapRes!18056))

(declare-fun setElem!24118 () Context!4806)

(declare-fun tp!888646 () Bool)

(declare-fun e!1764789 () Bool)

(declare-fun setNonEmpty!24118 () Bool)

(assert (=> setNonEmpty!24118 (= setRes!24118 (and tp!888646 (inv!44029 setElem!24118) e!1764789))))

(declare-fun setRest!24118 () (InoxSet Context!4806))

(assert (=> setNonEmpty!24118 (= (_2!19481 (h!37827 mapDefault!18056)) ((_ map or) (store ((as const (Array Context!4806 Bool)) false) setElem!24118 true) setRest!24118))))

(declare-fun b!2794743 () Bool)

(declare-fun tp!888651 () Bool)

(assert (=> b!2794743 (= e!1764789 tp!888651)))

(assert (= (and mapNonEmpty!18050 condMapEmpty!18056) mapIsEmpty!18056))

(assert (= (and mapNonEmpty!18050 (not condMapEmpty!18056)) mapNonEmpty!18056))

(assert (= b!2794739 b!2794742))

(assert (= (and b!2794739 condSetEmpty!24117) setIsEmpty!24117))

(assert (= (and b!2794739 (not condSetEmpty!24117)) setNonEmpty!24117))

(assert (= setNonEmpty!24117 b!2794738))

(assert (= (and mapNonEmpty!18056 ((_ is Cons!32407) mapValue!18056)) b!2794739))

(assert (= b!2794740 b!2794741))

(assert (= (and b!2794740 condSetEmpty!24118) setIsEmpty!24118))

(assert (= (and b!2794740 (not condSetEmpty!24118)) setNonEmpty!24118))

(assert (= setNonEmpty!24118 b!2794743))

(assert (= (and mapNonEmpty!18050 ((_ is Cons!32407) mapDefault!18056)) b!2794740))

(declare-fun m!3224855 () Bool)

(assert (=> mapNonEmpty!18056 m!3224855))

(declare-fun m!3224857 () Bool)

(assert (=> setNonEmpty!24118 m!3224857))

(declare-fun m!3224859 () Bool)

(assert (=> b!2794740 m!3224859))

(declare-fun m!3224861 () Bool)

(assert (=> setNonEmpty!24117 m!3224861))

(declare-fun m!3224863 () Bool)

(assert (=> b!2794739 m!3224863))

(declare-fun tp!888655 () Bool)

(declare-fun setRes!24119 () Bool)

(declare-fun b!2794744 () Bool)

(declare-fun e!1764796 () Bool)

(declare-fun e!1764795 () Bool)

(assert (=> b!2794744 (= e!1764795 (and (inv!44029 (_1!19480 (_1!19481 (h!37827 mapValue!18049)))) e!1764796 tp_is_empty!14183 setRes!24119 tp!888655))))

(declare-fun condSetEmpty!24119 () Bool)

(assert (=> b!2794744 (= condSetEmpty!24119 (= (_2!19481 (h!37827 mapValue!18049)) ((as const (Array Context!4806 Bool)) false)))))

(declare-fun setIsEmpty!24119 () Bool)

(assert (=> setIsEmpty!24119 setRes!24119))

(declare-fun b!2794745 () Bool)

(declare-fun e!1764794 () Bool)

(declare-fun tp!888657 () Bool)

(assert (=> b!2794745 (= e!1764794 tp!888657)))

(assert (=> mapNonEmpty!18050 (= tp!888520 e!1764795)))

(declare-fun b!2794746 () Bool)

(declare-fun tp!888658 () Bool)

(assert (=> b!2794746 (= e!1764796 tp!888658)))

(declare-fun tp!888656 () Bool)

(declare-fun setNonEmpty!24119 () Bool)

(declare-fun setElem!24119 () Context!4806)

(assert (=> setNonEmpty!24119 (= setRes!24119 (and tp!888656 (inv!44029 setElem!24119) e!1764794))))

(declare-fun setRest!24119 () (InoxSet Context!4806))

(assert (=> setNonEmpty!24119 (= (_2!19481 (h!37827 mapValue!18049)) ((_ map or) (store ((as const (Array Context!4806 Bool)) false) setElem!24119 true) setRest!24119))))

(assert (= b!2794744 b!2794746))

(assert (= (and b!2794744 condSetEmpty!24119) setIsEmpty!24119))

(assert (= (and b!2794744 (not condSetEmpty!24119)) setNonEmpty!24119))

(assert (= setNonEmpty!24119 b!2794745))

(assert (= (and mapNonEmpty!18050 ((_ is Cons!32407) mapValue!18049)) b!2794744))

(declare-fun m!3224865 () Bool)

(assert (=> b!2794744 m!3224865))

(declare-fun m!3224867 () Bool)

(assert (=> setNonEmpty!24119 m!3224867))

(check-sat (not b!2794601) (not b!2794702) b_and!203853 (not b!2794715) (not b!2794665) (not b!2794701) (not b_next!79817) (not b!2794722) (not b!2794667) (not b!2794641) (not b!2794628) (not b!2794681) (not b!2794738) (not b!2794703) (not b!2794678) (not b!2794720) (not b!2794649) (not b!2794741) (not mapNonEmpty!18053) (not b!2794721) b_and!203851 (not d!812573) (not b!2794723) (not b!2794705) (not b!2794699) (not b!2794700) (not setNonEmpty!24119) (not b!2794740) (not b!2794746) (not b!2794668) (not setNonEmpty!24100) tp_is_empty!14183 b_and!203847 (not d!812547) (not b!2794642) (not b_next!79813) (not mapNonEmpty!18056) (not b!2794719) (not d!812563) (not b!2794742) (not b!2794654) (not b!2794717) (not b!2794664) (not b!2794698) (not setNonEmpty!24110) (not b!2794623) (not b!2794718) (not b!2794704) (not setNonEmpty!24107) (not setNonEmpty!24111) (not b!2794716) (not b!2794743) (not b!2794625) (not b!2794666) (not d!812559) (not b!2794682) (not setNonEmpty!24117) (not b_next!79819) (not setNonEmpty!24098) (not setNonEmpty!24106) (not b!2794745) (not b!2794697) (not b!2794677) (not b!2794744) (not b!2794680) (not setNonEmpty!24105) (not b!2794631) (not setNonEmpty!24118) (not b!2794663) (not d!812565) (not setNonEmpty!24112) (not setNonEmpty!24099) (not b!2794739) (not d!812555) (not b!2794714) b_and!203849 (not b_next!79815) (not b!2794679))
(check-sat b_and!203851 b_and!203847 (not b_next!79813) b_and!203853 (not b_next!79819) b_and!203849 (not b_next!79815) (not b_next!79817))
(get-model)

(declare-fun d!812575 () Bool)

(declare-fun lambda!102643 () Int)

(declare-fun forall!6688 (List!32506 Int) Bool)

(assert (=> d!812575 (= (inv!44029 setElem!24107) (forall!6688 (exprs!2903 setElem!24107) lambda!102643))))

(declare-fun bs!514687 () Bool)

(assert (= bs!514687 d!812575))

(declare-fun m!3224869 () Bool)

(assert (=> bs!514687 m!3224869))

(assert (=> setNonEmpty!24107 d!812575))

(declare-fun d!812577 () Bool)

(declare-fun res!1165295 () Bool)

(declare-fun e!1764801 () Bool)

(assert (=> d!812577 (=> (not res!1165295) (not e!1764801))))

(declare-fun valid!3110 (MutableMap!3873) Bool)

(assert (=> d!812577 (= res!1165295 (valid!3110 (cache!4016 cacheDown!1009)))))

(assert (=> d!812577 (= (validCacheMapDown!421 (cache!4016 cacheDown!1009)) e!1764801)))

(declare-fun b!2794753 () Bool)

(declare-fun res!1165296 () Bool)

(assert (=> b!2794753 (=> (not res!1165296) (not e!1764801))))

(declare-fun invariantList!462 (List!32508) Bool)

(declare-datatypes ((ListMap!1257 0))(
  ( (ListMap!1258 (toList!1874 List!32508)) )
))
(declare-fun map!7026 (MutableMap!3873) ListMap!1257)

(assert (=> b!2794753 (= res!1165296 (invariantList!462 (toList!1874 (map!7026 (cache!4016 cacheDown!1009)))))))

(declare-fun b!2794754 () Bool)

(declare-fun lambda!102646 () Int)

(declare-fun forall!6689 (List!32508 Int) Bool)

(assert (=> b!2794754 (= e!1764801 (forall!6689 (toList!1874 (map!7026 (cache!4016 cacheDown!1009))) lambda!102646))))

(assert (= (and d!812577 res!1165295) b!2794753))

(assert (= (and b!2794753 res!1165296) b!2794754))

(declare-fun m!3224872 () Bool)

(assert (=> d!812577 m!3224872))

(declare-fun m!3224874 () Bool)

(assert (=> b!2794753 m!3224874))

(declare-fun m!3224876 () Bool)

(assert (=> b!2794753 m!3224876))

(assert (=> b!2794754 m!3224874))

(declare-fun m!3224878 () Bool)

(assert (=> b!2794754 m!3224878))

(assert (=> b!2794631 d!812577))

(declare-fun bs!514688 () Bool)

(declare-fun d!812579 () Bool)

(assert (= bs!514688 (and d!812579 d!812575)))

(declare-fun lambda!102647 () Int)

(assert (=> bs!514688 (= lambda!102647 lambda!102643)))

(assert (=> d!812579 (= (inv!44029 setElem!24118) (forall!6688 (exprs!2903 setElem!24118) lambda!102647))))

(declare-fun bs!514689 () Bool)

(assert (= bs!514689 d!812579))

(declare-fun m!3224880 () Bool)

(assert (=> bs!514689 m!3224880))

(assert (=> setNonEmpty!24118 d!812579))

(assert (=> b!2794601 d!812553))

(declare-fun d!812581 () Bool)

(declare-fun lt!998631 () Int)

(assert (=> d!812581 (>= lt!998631 0)))

(declare-fun e!1764802 () Int)

(assert (=> d!812581 (= lt!998631 e!1764802)))

(declare-fun c!453547 () Bool)

(assert (=> d!812581 (= c!453547 ((_ is Nil!32405) lt!998627))))

(assert (=> d!812581 (= (size!25248 lt!998627) lt!998631)))

(declare-fun b!2794755 () Bool)

(assert (=> b!2794755 (= e!1764802 0)))

(declare-fun b!2794756 () Bool)

(assert (=> b!2794756 (= e!1764802 (+ 1 (size!25248 (t!228662 lt!998627))))))

(assert (= (and d!812581 c!453547) b!2794755))

(assert (= (and d!812581 (not c!453547)) b!2794756))

(declare-fun m!3224882 () Bool)

(assert (=> b!2794756 m!3224882))

(assert (=> b!2794642 d!812581))

(assert (=> b!2794642 d!812567))

(declare-fun d!812583 () Bool)

(declare-fun lt!998632 () Int)

(assert (=> d!812583 (>= lt!998632 0)))

(declare-fun e!1764803 () Int)

(assert (=> d!812583 (= lt!998632 e!1764803)))

(declare-fun c!453548 () Bool)

(assert (=> d!812583 (= c!453548 ((_ is Nil!32405) testedSuffix!143))))

(assert (=> d!812583 (= (size!25248 testedSuffix!143) lt!998632)))

(declare-fun b!2794757 () Bool)

(assert (=> b!2794757 (= e!1764803 0)))

(declare-fun b!2794758 () Bool)

(assert (=> b!2794758 (= e!1764803 (+ 1 (size!25248 (t!228662 testedSuffix!143))))))

(assert (= (and d!812583 c!453548) b!2794757))

(assert (= (and d!812583 (not c!453548)) b!2794758))

(declare-fun m!3224884 () Bool)

(assert (=> b!2794758 m!3224884))

(assert (=> b!2794642 d!812583))

(declare-fun d!812585 () Bool)

(declare-fun e!1764804 () Bool)

(assert (=> d!812585 e!1764804))

(declare-fun res!1165298 () Bool)

(assert (=> d!812585 (=> (not res!1165298) (not e!1764804))))

(declare-fun lt!998633 () List!32505)

(assert (=> d!812585 (= res!1165298 (= (content!4534 lt!998633) ((_ map or) (content!4534 (t!228662 testedP!183)) (content!4534 testedSuffix!143))))))

(declare-fun e!1764805 () List!32505)

(assert (=> d!812585 (= lt!998633 e!1764805)))

(declare-fun c!453549 () Bool)

(assert (=> d!812585 (= c!453549 ((_ is Nil!32405) (t!228662 testedP!183)))))

(assert (=> d!812585 (= (++!7999 (t!228662 testedP!183) testedSuffix!143) lt!998633)))

(declare-fun b!2794761 () Bool)

(declare-fun res!1165297 () Bool)

(assert (=> b!2794761 (=> (not res!1165297) (not e!1764804))))

(assert (=> b!2794761 (= res!1165297 (= (size!25248 lt!998633) (+ (size!25248 (t!228662 testedP!183)) (size!25248 testedSuffix!143))))))

(declare-fun b!2794762 () Bool)

(assert (=> b!2794762 (= e!1764804 (or (not (= testedSuffix!143 Nil!32405)) (= lt!998633 (t!228662 testedP!183))))))

(declare-fun b!2794759 () Bool)

(assert (=> b!2794759 (= e!1764805 testedSuffix!143)))

(declare-fun b!2794760 () Bool)

(assert (=> b!2794760 (= e!1764805 (Cons!32405 (h!37825 (t!228662 testedP!183)) (++!7999 (t!228662 (t!228662 testedP!183)) testedSuffix!143)))))

(assert (= (and d!812585 c!453549) b!2794759))

(assert (= (and d!812585 (not c!453549)) b!2794760))

(assert (= (and d!812585 res!1165298) b!2794761))

(assert (= (and b!2794761 res!1165297) b!2794762))

(declare-fun m!3224886 () Bool)

(assert (=> d!812585 m!3224886))

(declare-fun m!3224888 () Bool)

(assert (=> d!812585 m!3224888))

(assert (=> d!812585 m!3224801))

(declare-fun m!3224890 () Bool)

(assert (=> b!2794761 m!3224890))

(assert (=> b!2794761 m!3224809))

(assert (=> b!2794761 m!3224805))

(declare-fun m!3224892 () Bool)

(assert (=> b!2794760 m!3224892))

(assert (=> b!2794641 d!812585))

(assert (=> d!812555 d!812577))

(declare-fun bs!514690 () Bool)

(declare-fun d!812587 () Bool)

(assert (= bs!514690 (and d!812587 d!812575)))

(declare-fun lambda!102648 () Int)

(assert (=> bs!514690 (= lambda!102648 lambda!102643)))

(declare-fun bs!514691 () Bool)

(assert (= bs!514691 (and d!812587 d!812579)))

(assert (=> bs!514691 (= lambda!102648 lambda!102647)))

(assert (=> d!812587 (= (inv!44029 (_2!19482 (_1!19483 (h!37828 mapValue!18050)))) (forall!6688 (exprs!2903 (_2!19482 (_1!19483 (h!37828 mapValue!18050)))) lambda!102648))))

(declare-fun bs!514692 () Bool)

(assert (= bs!514692 d!812587))

(declare-fun m!3224894 () Bool)

(assert (=> bs!514692 m!3224894))

(assert (=> b!2794704 d!812587))

(declare-fun d!812589 () Bool)

(declare-fun res!1165303 () Bool)

(declare-fun e!1764808 () Bool)

(assert (=> d!812589 (=> (not res!1165303) (not e!1764808))))

(declare-fun valid!3111 (MutableMap!3872) Bool)

(assert (=> d!812589 (= res!1165303 (valid!3111 (cache!4015 cacheUp!890)))))

(assert (=> d!812589 (= (validCacheMapUp!390 (cache!4015 cacheUp!890)) e!1764808)))

(declare-fun b!2794767 () Bool)

(declare-fun res!1165304 () Bool)

(assert (=> b!2794767 (=> (not res!1165304) (not e!1764808))))

(declare-fun invariantList!463 (List!32507) Bool)

(declare-datatypes ((ListMap!1259 0))(
  ( (ListMap!1260 (toList!1875 List!32507)) )
))
(declare-fun map!7027 (MutableMap!3872) ListMap!1259)

(assert (=> b!2794767 (= res!1165304 (invariantList!463 (toList!1875 (map!7027 (cache!4015 cacheUp!890)))))))

(declare-fun b!2794768 () Bool)

(declare-fun lambda!102651 () Int)

(declare-fun forall!6690 (List!32507 Int) Bool)

(assert (=> b!2794768 (= e!1764808 (forall!6690 (toList!1875 (map!7027 (cache!4015 cacheUp!890))) lambda!102651))))

(assert (= (and d!812589 res!1165303) b!2794767))

(assert (= (and b!2794767 res!1165304) b!2794768))

(declare-fun m!3224897 () Bool)

(assert (=> d!812589 m!3224897))

(declare-fun m!3224899 () Bool)

(assert (=> b!2794767 m!3224899))

(declare-fun m!3224901 () Bool)

(assert (=> b!2794767 m!3224901))

(assert (=> b!2794768 m!3224899))

(declare-fun m!3224903 () Bool)

(assert (=> b!2794768 m!3224903))

(assert (=> b!2794628 d!812589))

(declare-fun bs!514693 () Bool)

(declare-fun d!812591 () Bool)

(assert (= bs!514693 (and d!812591 d!812575)))

(declare-fun lambda!102652 () Int)

(assert (=> bs!514693 (= lambda!102652 lambda!102643)))

(declare-fun bs!514694 () Bool)

(assert (= bs!514694 (and d!812591 d!812579)))

(assert (=> bs!514694 (= lambda!102652 lambda!102647)))

(declare-fun bs!514695 () Bool)

(assert (= bs!514695 (and d!812591 d!812587)))

(assert (=> bs!514695 (= lambda!102652 lambda!102648)))

(assert (=> d!812591 (= (inv!44029 setElem!24111) (forall!6688 (exprs!2903 setElem!24111) lambda!102652))))

(declare-fun bs!514696 () Bool)

(assert (= bs!514696 d!812591))

(declare-fun m!3224905 () Bool)

(assert (=> bs!514696 m!3224905))

(assert (=> setNonEmpty!24111 d!812591))

(declare-fun bs!514697 () Bool)

(declare-fun d!812593 () Bool)

(assert (= bs!514697 (and d!812593 d!812575)))

(declare-fun lambda!102653 () Int)

(assert (=> bs!514697 (= lambda!102653 lambda!102643)))

(declare-fun bs!514698 () Bool)

(assert (= bs!514698 (and d!812593 d!812579)))

(assert (=> bs!514698 (= lambda!102653 lambda!102647)))

(declare-fun bs!514699 () Bool)

(assert (= bs!514699 (and d!812593 d!812587)))

(assert (=> bs!514699 (= lambda!102653 lambda!102648)))

(declare-fun bs!514700 () Bool)

(assert (= bs!514700 (and d!812593 d!812591)))

(assert (=> bs!514700 (= lambda!102653 lambda!102652)))

(assert (=> d!812593 (= (inv!44029 setElem!24106) (forall!6688 (exprs!2903 setElem!24106) lambda!102653))))

(declare-fun bs!514701 () Bool)

(assert (= bs!514701 d!812593))

(declare-fun m!3224907 () Bool)

(assert (=> bs!514701 m!3224907))

(assert (=> setNonEmpty!24106 d!812593))

(declare-fun bs!514702 () Bool)

(declare-fun d!812595 () Bool)

(assert (= bs!514702 (and d!812595 d!812593)))

(declare-fun lambda!102654 () Int)

(assert (=> bs!514702 (= lambda!102654 lambda!102653)))

(declare-fun bs!514703 () Bool)

(assert (= bs!514703 (and d!812595 d!812575)))

(assert (=> bs!514703 (= lambda!102654 lambda!102643)))

(declare-fun bs!514704 () Bool)

(assert (= bs!514704 (and d!812595 d!812587)))

(assert (=> bs!514704 (= lambda!102654 lambda!102648)))

(declare-fun bs!514705 () Bool)

(assert (= bs!514705 (and d!812595 d!812591)))

(assert (=> bs!514705 (= lambda!102654 lambda!102652)))

(declare-fun bs!514706 () Bool)

(assert (= bs!514706 (and d!812595 d!812579)))

(assert (=> bs!514706 (= lambda!102654 lambda!102647)))

(assert (=> d!812595 (= (inv!44029 (_1!19480 (_1!19481 (h!37827 mapDefault!18056)))) (forall!6688 (exprs!2903 (_1!19480 (_1!19481 (h!37827 mapDefault!18056)))) lambda!102654))))

(declare-fun bs!514707 () Bool)

(assert (= bs!514707 d!812595))

(declare-fun m!3224909 () Bool)

(assert (=> bs!514707 m!3224909))

(assert (=> b!2794740 d!812595))

(declare-fun bs!514708 () Bool)

(declare-fun d!812597 () Bool)

(assert (= bs!514708 (and d!812597 d!812593)))

(declare-fun lambda!102655 () Int)

(assert (=> bs!514708 (= lambda!102655 lambda!102653)))

(declare-fun bs!514709 () Bool)

(assert (= bs!514709 (and d!812597 d!812575)))

(assert (=> bs!514709 (= lambda!102655 lambda!102643)))

(declare-fun bs!514710 () Bool)

(assert (= bs!514710 (and d!812597 d!812587)))

(assert (=> bs!514710 (= lambda!102655 lambda!102648)))

(declare-fun bs!514711 () Bool)

(assert (= bs!514711 (and d!812597 d!812591)))

(assert (=> bs!514711 (= lambda!102655 lambda!102652)))

(declare-fun bs!514712 () Bool)

(assert (= bs!514712 (and d!812597 d!812579)))

(assert (=> bs!514712 (= lambda!102655 lambda!102647)))

(declare-fun bs!514713 () Bool)

(assert (= bs!514713 (and d!812597 d!812595)))

(assert (=> bs!514713 (= lambda!102655 lambda!102654)))

(assert (=> d!812597 (= (inv!44029 setElem!24112) (forall!6688 (exprs!2903 setElem!24112) lambda!102655))))

(declare-fun bs!514714 () Bool)

(assert (= bs!514714 d!812597))

(declare-fun m!3224911 () Bool)

(assert (=> bs!514714 m!3224911))

(assert (=> setNonEmpty!24112 d!812597))

(declare-fun bs!514715 () Bool)

(declare-fun d!812599 () Bool)

(assert (= bs!514715 (and d!812599 d!812593)))

(declare-fun lambda!102656 () Int)

(assert (=> bs!514715 (= lambda!102656 lambda!102653)))

(declare-fun bs!514716 () Bool)

(assert (= bs!514716 (and d!812599 d!812575)))

(assert (=> bs!514716 (= lambda!102656 lambda!102643)))

(declare-fun bs!514717 () Bool)

(assert (= bs!514717 (and d!812599 d!812587)))

(assert (=> bs!514717 (= lambda!102656 lambda!102648)))

(declare-fun bs!514718 () Bool)

(assert (= bs!514718 (and d!812599 d!812591)))

(assert (=> bs!514718 (= lambda!102656 lambda!102652)))

(declare-fun bs!514719 () Bool)

(assert (= bs!514719 (and d!812599 d!812597)))

(assert (=> bs!514719 (= lambda!102656 lambda!102655)))

(declare-fun bs!514720 () Bool)

(assert (= bs!514720 (and d!812599 d!812579)))

(assert (=> bs!514720 (= lambda!102656 lambda!102647)))

(declare-fun bs!514721 () Bool)

(assert (= bs!514721 (and d!812599 d!812595)))

(assert (=> bs!514721 (= lambda!102656 lambda!102654)))

(assert (=> d!812599 (= (inv!44029 setElem!24110) (forall!6688 (exprs!2903 setElem!24110) lambda!102656))))

(declare-fun bs!514722 () Bool)

(assert (= bs!514722 d!812599))

(declare-fun m!3224913 () Bool)

(assert (=> bs!514722 m!3224913))

(assert (=> setNonEmpty!24110 d!812599))

(declare-fun bs!514723 () Bool)

(declare-fun d!812601 () Bool)

(assert (= bs!514723 (and d!812601 d!812593)))

(declare-fun lambda!102657 () Int)

(assert (=> bs!514723 (= lambda!102657 lambda!102653)))

(declare-fun bs!514724 () Bool)

(assert (= bs!514724 (and d!812601 d!812575)))

(assert (=> bs!514724 (= lambda!102657 lambda!102643)))

(declare-fun bs!514725 () Bool)

(assert (= bs!514725 (and d!812601 d!812587)))

(assert (=> bs!514725 (= lambda!102657 lambda!102648)))

(declare-fun bs!514726 () Bool)

(assert (= bs!514726 (and d!812601 d!812591)))

(assert (=> bs!514726 (= lambda!102657 lambda!102652)))

(declare-fun bs!514727 () Bool)

(assert (= bs!514727 (and d!812601 d!812597)))

(assert (=> bs!514727 (= lambda!102657 lambda!102655)))

(declare-fun bs!514728 () Bool)

(assert (= bs!514728 (and d!812601 d!812595)))

(assert (=> bs!514728 (= lambda!102657 lambda!102654)))

(declare-fun bs!514729 () Bool)

(assert (= bs!514729 (and d!812601 d!812579)))

(assert (=> bs!514729 (= lambda!102657 lambda!102647)))

(declare-fun bs!514730 () Bool)

(assert (= bs!514730 (and d!812601 d!812599)))

(assert (=> bs!514730 (= lambda!102657 lambda!102656)))

(assert (=> d!812601 (= (inv!44029 setElem!24117) (forall!6688 (exprs!2903 setElem!24117) lambda!102657))))

(declare-fun bs!514731 () Bool)

(assert (= bs!514731 d!812601))

(declare-fun m!3224915 () Bool)

(assert (=> bs!514731 m!3224915))

(assert (=> setNonEmpty!24117 d!812601))

(declare-fun bs!514732 () Bool)

(declare-fun d!812603 () Bool)

(assert (= bs!514732 (and d!812603 d!812593)))

(declare-fun lambda!102658 () Int)

(assert (=> bs!514732 (= lambda!102658 lambda!102653)))

(declare-fun bs!514733 () Bool)

(assert (= bs!514733 (and d!812603 d!812575)))

(assert (=> bs!514733 (= lambda!102658 lambda!102643)))

(declare-fun bs!514734 () Bool)

(assert (= bs!514734 (and d!812603 d!812587)))

(assert (=> bs!514734 (= lambda!102658 lambda!102648)))

(declare-fun bs!514735 () Bool)

(assert (= bs!514735 (and d!812603 d!812597)))

(assert (=> bs!514735 (= lambda!102658 lambda!102655)))

(declare-fun bs!514736 () Bool)

(assert (= bs!514736 (and d!812603 d!812595)))

(assert (=> bs!514736 (= lambda!102658 lambda!102654)))

(declare-fun bs!514737 () Bool)

(assert (= bs!514737 (and d!812603 d!812591)))

(assert (=> bs!514737 (= lambda!102658 lambda!102652)))

(declare-fun bs!514738 () Bool)

(assert (= bs!514738 (and d!812603 d!812601)))

(assert (=> bs!514738 (= lambda!102658 lambda!102657)))

(declare-fun bs!514739 () Bool)

(assert (= bs!514739 (and d!812603 d!812579)))

(assert (=> bs!514739 (= lambda!102658 lambda!102647)))

(declare-fun bs!514740 () Bool)

(assert (= bs!514740 (and d!812603 d!812599)))

(assert (=> bs!514740 (= lambda!102658 lambda!102656)))

(assert (=> d!812603 (= (inv!44029 (_1!19480 (_1!19481 (h!37827 mapValue!18056)))) (forall!6688 (exprs!2903 (_1!19480 (_1!19481 (h!37827 mapValue!18056)))) lambda!102658))))

(declare-fun bs!514741 () Bool)

(assert (= bs!514741 d!812603))

(declare-fun m!3224917 () Bool)

(assert (=> bs!514741 m!3224917))

(assert (=> b!2794739 d!812603))

(declare-fun bs!514742 () Bool)

(declare-fun d!812605 () Bool)

(assert (= bs!514742 (and d!812605 d!812593)))

(declare-fun lambda!102659 () Int)

(assert (=> bs!514742 (= lambda!102659 lambda!102653)))

(declare-fun bs!514743 () Bool)

(assert (= bs!514743 (and d!812605 d!812575)))

(assert (=> bs!514743 (= lambda!102659 lambda!102643)))

(declare-fun bs!514744 () Bool)

(assert (= bs!514744 (and d!812605 d!812597)))

(assert (=> bs!514744 (= lambda!102659 lambda!102655)))

(declare-fun bs!514745 () Bool)

(assert (= bs!514745 (and d!812605 d!812595)))

(assert (=> bs!514745 (= lambda!102659 lambda!102654)))

(declare-fun bs!514746 () Bool)

(assert (= bs!514746 (and d!812605 d!812603)))

(assert (=> bs!514746 (= lambda!102659 lambda!102658)))

(declare-fun bs!514747 () Bool)

(assert (= bs!514747 (and d!812605 d!812587)))

(assert (=> bs!514747 (= lambda!102659 lambda!102648)))

(declare-fun bs!514748 () Bool)

(assert (= bs!514748 (and d!812605 d!812591)))

(assert (=> bs!514748 (= lambda!102659 lambda!102652)))

(declare-fun bs!514749 () Bool)

(assert (= bs!514749 (and d!812605 d!812601)))

(assert (=> bs!514749 (= lambda!102659 lambda!102657)))

(declare-fun bs!514750 () Bool)

(assert (= bs!514750 (and d!812605 d!812579)))

(assert (=> bs!514750 (= lambda!102659 lambda!102647)))

(declare-fun bs!514751 () Bool)

(assert (= bs!514751 (and d!812605 d!812599)))

(assert (=> bs!514751 (= lambda!102659 lambda!102656)))

(assert (=> d!812605 (= (inv!44029 (_1!19480 (_1!19481 (h!37827 (zeroValue!4225 (v!34010 (underlying!8135 (v!34011 (underlying!8136 (cache!4015 cacheUp!890)))))))))) (forall!6688 (exprs!2903 (_1!19480 (_1!19481 (h!37827 (zeroValue!4225 (v!34010 (underlying!8135 (v!34011 (underlying!8136 (cache!4015 cacheUp!890)))))))))) lambda!102659))))

(declare-fun bs!514752 () Bool)

(assert (= bs!514752 d!812605))

(declare-fun m!3224919 () Bool)

(assert (=> bs!514752 m!3224919))

(assert (=> b!2794718 d!812605))

(declare-fun d!812607 () Bool)

(declare-fun res!1165309 () Bool)

(declare-fun e!1764811 () Bool)

(assert (=> d!812607 (=> (not res!1165309) (not e!1764811))))

(declare-fun list!12185 (IArray!20105) List!32505)

(assert (=> d!812607 (= res!1165309 (<= (size!25248 (list!12185 (xs!13162 (c!453536 totalInput!758)))) 512))))

(assert (=> d!812607 (= (inv!44028 (c!453536 totalInput!758)) e!1764811)))

(declare-fun b!2794773 () Bool)

(declare-fun res!1165310 () Bool)

(assert (=> b!2794773 (=> (not res!1165310) (not e!1764811))))

(assert (=> b!2794773 (= res!1165310 (= (csize!20331 (c!453536 totalInput!758)) (size!25248 (list!12185 (xs!13162 (c!453536 totalInput!758))))))))

(declare-fun b!2794774 () Bool)

(assert (=> b!2794774 (= e!1764811 (and (> (csize!20331 (c!453536 totalInput!758)) 0) (<= (csize!20331 (c!453536 totalInput!758)) 512)))))

(assert (= (and d!812607 res!1165309) b!2794773))

(assert (= (and b!2794773 res!1165310) b!2794774))

(declare-fun m!3224921 () Bool)

(assert (=> d!812607 m!3224921))

(assert (=> d!812607 m!3224921))

(declare-fun m!3224923 () Bool)

(assert (=> d!812607 m!3224923))

(assert (=> b!2794773 m!3224921))

(assert (=> b!2794773 m!3224921))

(assert (=> b!2794773 m!3224923))

(assert (=> b!2794625 d!812607))

(declare-fun bs!514753 () Bool)

(declare-fun d!812609 () Bool)

(assert (= bs!514753 (and d!812609 d!812605)))

(declare-fun lambda!102660 () Int)

(assert (=> bs!514753 (= lambda!102660 lambda!102659)))

(declare-fun bs!514754 () Bool)

(assert (= bs!514754 (and d!812609 d!812593)))

(assert (=> bs!514754 (= lambda!102660 lambda!102653)))

(declare-fun bs!514755 () Bool)

(assert (= bs!514755 (and d!812609 d!812575)))

(assert (=> bs!514755 (= lambda!102660 lambda!102643)))

(declare-fun bs!514756 () Bool)

(assert (= bs!514756 (and d!812609 d!812597)))

(assert (=> bs!514756 (= lambda!102660 lambda!102655)))

(declare-fun bs!514757 () Bool)

(assert (= bs!514757 (and d!812609 d!812595)))

(assert (=> bs!514757 (= lambda!102660 lambda!102654)))

(declare-fun bs!514758 () Bool)

(assert (= bs!514758 (and d!812609 d!812603)))

(assert (=> bs!514758 (= lambda!102660 lambda!102658)))

(declare-fun bs!514759 () Bool)

(assert (= bs!514759 (and d!812609 d!812587)))

(assert (=> bs!514759 (= lambda!102660 lambda!102648)))

(declare-fun bs!514760 () Bool)

(assert (= bs!514760 (and d!812609 d!812591)))

(assert (=> bs!514760 (= lambda!102660 lambda!102652)))

(declare-fun bs!514761 () Bool)

(assert (= bs!514761 (and d!812609 d!812601)))

(assert (=> bs!514761 (= lambda!102660 lambda!102657)))

(declare-fun bs!514762 () Bool)

(assert (= bs!514762 (and d!812609 d!812579)))

(assert (=> bs!514762 (= lambda!102660 lambda!102647)))

(declare-fun bs!514763 () Bool)

(assert (= bs!514763 (and d!812609 d!812599)))

(assert (=> bs!514763 (= lambda!102660 lambda!102656)))

(assert (=> d!812609 (= (inv!44029 (_2!19482 (_1!19483 (h!37828 mapValue!18053)))) (forall!6688 (exprs!2903 (_2!19482 (_1!19483 (h!37828 mapValue!18053)))) lambda!102660))))

(declare-fun bs!514764 () Bool)

(assert (= bs!514764 d!812609))

(declare-fun m!3224925 () Bool)

(assert (=> bs!514764 m!3224925))

(assert (=> b!2794700 d!812609))

(declare-fun bs!514765 () Bool)

(declare-fun d!812611 () Bool)

(assert (= bs!514765 (and d!812611 d!812605)))

(declare-fun lambda!102661 () Int)

(assert (=> bs!514765 (= lambda!102661 lambda!102659)))

(declare-fun bs!514766 () Bool)

(assert (= bs!514766 (and d!812611 d!812593)))

(assert (=> bs!514766 (= lambda!102661 lambda!102653)))

(declare-fun bs!514767 () Bool)

(assert (= bs!514767 (and d!812611 d!812575)))

(assert (=> bs!514767 (= lambda!102661 lambda!102643)))

(declare-fun bs!514768 () Bool)

(assert (= bs!514768 (and d!812611 d!812609)))

(assert (=> bs!514768 (= lambda!102661 lambda!102660)))

(declare-fun bs!514769 () Bool)

(assert (= bs!514769 (and d!812611 d!812597)))

(assert (=> bs!514769 (= lambda!102661 lambda!102655)))

(declare-fun bs!514770 () Bool)

(assert (= bs!514770 (and d!812611 d!812595)))

(assert (=> bs!514770 (= lambda!102661 lambda!102654)))

(declare-fun bs!514771 () Bool)

(assert (= bs!514771 (and d!812611 d!812603)))

(assert (=> bs!514771 (= lambda!102661 lambda!102658)))

(declare-fun bs!514772 () Bool)

(assert (= bs!514772 (and d!812611 d!812587)))

(assert (=> bs!514772 (= lambda!102661 lambda!102648)))

(declare-fun bs!514773 () Bool)

(assert (= bs!514773 (and d!812611 d!812591)))

(assert (=> bs!514773 (= lambda!102661 lambda!102652)))

(declare-fun bs!514774 () Bool)

(assert (= bs!514774 (and d!812611 d!812601)))

(assert (=> bs!514774 (= lambda!102661 lambda!102657)))

(declare-fun bs!514775 () Bool)

(assert (= bs!514775 (and d!812611 d!812579)))

(assert (=> bs!514775 (= lambda!102661 lambda!102647)))

(declare-fun bs!514776 () Bool)

(assert (= bs!514776 (and d!812611 d!812599)))

(assert (=> bs!514776 (= lambda!102661 lambda!102656)))

(assert (=> d!812611 (= (inv!44029 (_1!19480 (_1!19481 (h!37827 (minValue!4225 (v!34010 (underlying!8135 (v!34011 (underlying!8136 (cache!4015 cacheUp!890)))))))))) (forall!6688 (exprs!2903 (_1!19480 (_1!19481 (h!37827 (minValue!4225 (v!34010 (underlying!8135 (v!34011 (underlying!8136 (cache!4015 cacheUp!890)))))))))) lambda!102661))))

(declare-fun bs!514777 () Bool)

(assert (= bs!514777 d!812611))

(declare-fun m!3224927 () Bool)

(assert (=> bs!514777 m!3224927))

(assert (=> b!2794721 d!812611))

(declare-fun bs!514778 () Bool)

(declare-fun d!812613 () Bool)

(assert (= bs!514778 (and d!812613 d!812605)))

(declare-fun lambda!102662 () Int)

(assert (=> bs!514778 (= lambda!102662 lambda!102659)))

(declare-fun bs!514779 () Bool)

(assert (= bs!514779 (and d!812613 d!812593)))

(assert (=> bs!514779 (= lambda!102662 lambda!102653)))

(declare-fun bs!514780 () Bool)

(assert (= bs!514780 (and d!812613 d!812575)))

(assert (=> bs!514780 (= lambda!102662 lambda!102643)))

(declare-fun bs!514781 () Bool)

(assert (= bs!514781 (and d!812613 d!812611)))

(assert (=> bs!514781 (= lambda!102662 lambda!102661)))

(declare-fun bs!514782 () Bool)

(assert (= bs!514782 (and d!812613 d!812609)))

(assert (=> bs!514782 (= lambda!102662 lambda!102660)))

(declare-fun bs!514783 () Bool)

(assert (= bs!514783 (and d!812613 d!812597)))

(assert (=> bs!514783 (= lambda!102662 lambda!102655)))

(declare-fun bs!514784 () Bool)

(assert (= bs!514784 (and d!812613 d!812595)))

(assert (=> bs!514784 (= lambda!102662 lambda!102654)))

(declare-fun bs!514785 () Bool)

(assert (= bs!514785 (and d!812613 d!812603)))

(assert (=> bs!514785 (= lambda!102662 lambda!102658)))

(declare-fun bs!514786 () Bool)

(assert (= bs!514786 (and d!812613 d!812587)))

(assert (=> bs!514786 (= lambda!102662 lambda!102648)))

(declare-fun bs!514787 () Bool)

(assert (= bs!514787 (and d!812613 d!812591)))

(assert (=> bs!514787 (= lambda!102662 lambda!102652)))

(declare-fun bs!514788 () Bool)

(assert (= bs!514788 (and d!812613 d!812601)))

(assert (=> bs!514788 (= lambda!102662 lambda!102657)))

(declare-fun bs!514789 () Bool)

(assert (= bs!514789 (and d!812613 d!812579)))

(assert (=> bs!514789 (= lambda!102662 lambda!102647)))

(declare-fun bs!514790 () Bool)

(assert (= bs!514790 (and d!812613 d!812599)))

(assert (=> bs!514790 (= lambda!102662 lambda!102656)))

(assert (=> d!812613 (= (inv!44029 setElem!24098) (forall!6688 (exprs!2903 setElem!24098) lambda!102662))))

(declare-fun bs!514791 () Bool)

(assert (= bs!514791 d!812613))

(declare-fun m!3224929 () Bool)

(assert (=> bs!514791 m!3224929))

(assert (=> setNonEmpty!24098 d!812613))

(declare-fun bs!514792 () Bool)

(declare-fun d!812615 () Bool)

(assert (= bs!514792 (and d!812615 d!812605)))

(declare-fun lambda!102663 () Int)

(assert (=> bs!514792 (= lambda!102663 lambda!102659)))

(declare-fun bs!514793 () Bool)

(assert (= bs!514793 (and d!812615 d!812593)))

(assert (=> bs!514793 (= lambda!102663 lambda!102653)))

(declare-fun bs!514794 () Bool)

(assert (= bs!514794 (and d!812615 d!812575)))

(assert (=> bs!514794 (= lambda!102663 lambda!102643)))

(declare-fun bs!514795 () Bool)

(assert (= bs!514795 (and d!812615 d!812611)))

(assert (=> bs!514795 (= lambda!102663 lambda!102661)))

(declare-fun bs!514796 () Bool)

(assert (= bs!514796 (and d!812615 d!812609)))

(assert (=> bs!514796 (= lambda!102663 lambda!102660)))

(declare-fun bs!514797 () Bool)

(assert (= bs!514797 (and d!812615 d!812597)))

(assert (=> bs!514797 (= lambda!102663 lambda!102655)))

(declare-fun bs!514798 () Bool)

(assert (= bs!514798 (and d!812615 d!812595)))

(assert (=> bs!514798 (= lambda!102663 lambda!102654)))

(declare-fun bs!514799 () Bool)

(assert (= bs!514799 (and d!812615 d!812613)))

(assert (=> bs!514799 (= lambda!102663 lambda!102662)))

(declare-fun bs!514800 () Bool)

(assert (= bs!514800 (and d!812615 d!812603)))

(assert (=> bs!514800 (= lambda!102663 lambda!102658)))

(declare-fun bs!514801 () Bool)

(assert (= bs!514801 (and d!812615 d!812587)))

(assert (=> bs!514801 (= lambda!102663 lambda!102648)))

(declare-fun bs!514802 () Bool)

(assert (= bs!514802 (and d!812615 d!812591)))

(assert (=> bs!514802 (= lambda!102663 lambda!102652)))

(declare-fun bs!514803 () Bool)

(assert (= bs!514803 (and d!812615 d!812601)))

(assert (=> bs!514803 (= lambda!102663 lambda!102657)))

(declare-fun bs!514804 () Bool)

(assert (= bs!514804 (and d!812615 d!812579)))

(assert (=> bs!514804 (= lambda!102663 lambda!102647)))

(declare-fun bs!514805 () Bool)

(assert (= bs!514805 (and d!812615 d!812599)))

(assert (=> bs!514805 (= lambda!102663 lambda!102656)))

(assert (=> d!812615 (= (inv!44029 (_1!19480 (_1!19481 (h!37827 mapDefault!18049)))) (forall!6688 (exprs!2903 (_1!19480 (_1!19481 (h!37827 mapDefault!18049)))) lambda!102663))))

(declare-fun bs!514806 () Bool)

(assert (= bs!514806 d!812615))

(declare-fun m!3224931 () Bool)

(assert (=> bs!514806 m!3224931))

(assert (=> b!2794714 d!812615))

(declare-fun d!812617 () Bool)

(declare-fun lt!998634 () Int)

(assert (=> d!812617 (>= lt!998634 0)))

(declare-fun e!1764812 () Int)

(assert (=> d!812617 (= lt!998634 e!1764812)))

(declare-fun c!453550 () Bool)

(assert (=> d!812617 (= c!453550 ((_ is Nil!32405) (t!228662 testedP!183)))))

(assert (=> d!812617 (= (size!25248 (t!228662 testedP!183)) lt!998634)))

(declare-fun b!2794775 () Bool)

(assert (=> b!2794775 (= e!1764812 0)))

(declare-fun b!2794776 () Bool)

(assert (=> b!2794776 (= e!1764812 (+ 1 (size!25248 (t!228662 (t!228662 testedP!183)))))))

(assert (= (and d!812617 c!453550) b!2794775))

(assert (= (and d!812617 (not c!453550)) b!2794776))

(declare-fun m!3224933 () Bool)

(assert (=> b!2794776 m!3224933))

(assert (=> b!2794649 d!812617))

(declare-fun d!812619 () Bool)

(declare-fun res!1165317 () Bool)

(declare-fun e!1764815 () Bool)

(assert (=> d!812619 (=> (not res!1165317) (not e!1764815))))

(assert (=> d!812619 (= res!1165317 (= (csize!20330 (c!453536 totalInput!758)) (+ (size!25249 (left!24540 (c!453536 totalInput!758))) (size!25249 (right!24870 (c!453536 totalInput!758))))))))

(assert (=> d!812619 (= (inv!44027 (c!453536 totalInput!758)) e!1764815)))

(declare-fun b!2794783 () Bool)

(declare-fun res!1165318 () Bool)

(assert (=> b!2794783 (=> (not res!1165318) (not e!1764815))))

(assert (=> b!2794783 (= res!1165318 (and (not (= (left!24540 (c!453536 totalInput!758)) Empty!10050)) (not (= (right!24870 (c!453536 totalInput!758)) Empty!10050))))))

(declare-fun b!2794784 () Bool)

(declare-fun res!1165319 () Bool)

(assert (=> b!2794784 (=> (not res!1165319) (not e!1764815))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1496 (Conc!10050) Int)

(assert (=> b!2794784 (= res!1165319 (= (cheight!10261 (c!453536 totalInput!758)) (+ (max!0 (height!1496 (left!24540 (c!453536 totalInput!758))) (height!1496 (right!24870 (c!453536 totalInput!758)))) 1)))))

(declare-fun b!2794785 () Bool)

(assert (=> b!2794785 (= e!1764815 (<= 0 (cheight!10261 (c!453536 totalInput!758))))))

(assert (= (and d!812619 res!1165317) b!2794783))

(assert (= (and b!2794783 res!1165318) b!2794784))

(assert (= (and b!2794784 res!1165319) b!2794785))

(declare-fun m!3224935 () Bool)

(assert (=> d!812619 m!3224935))

(declare-fun m!3224937 () Bool)

(assert (=> d!812619 m!3224937))

(declare-fun m!3224939 () Bool)

(assert (=> b!2794784 m!3224939))

(declare-fun m!3224941 () Bool)

(assert (=> b!2794784 m!3224941))

(assert (=> b!2794784 m!3224939))

(assert (=> b!2794784 m!3224941))

(declare-fun m!3224943 () Bool)

(assert (=> b!2794784 m!3224943))

(assert (=> b!2794623 d!812619))

(declare-fun bs!514807 () Bool)

(declare-fun d!812621 () Bool)

(assert (= bs!514807 (and d!812621 d!812605)))

(declare-fun lambda!102664 () Int)

(assert (=> bs!514807 (= lambda!102664 lambda!102659)))

(declare-fun bs!514808 () Bool)

(assert (= bs!514808 (and d!812621 d!812593)))

(assert (=> bs!514808 (= lambda!102664 lambda!102653)))

(declare-fun bs!514809 () Bool)

(assert (= bs!514809 (and d!812621 d!812575)))

(assert (=> bs!514809 (= lambda!102664 lambda!102643)))

(declare-fun bs!514810 () Bool)

(assert (= bs!514810 (and d!812621 d!812611)))

(assert (=> bs!514810 (= lambda!102664 lambda!102661)))

(declare-fun bs!514811 () Bool)

(assert (= bs!514811 (and d!812621 d!812609)))

(assert (=> bs!514811 (= lambda!102664 lambda!102660)))

(declare-fun bs!514812 () Bool)

(assert (= bs!514812 (and d!812621 d!812597)))

(assert (=> bs!514812 (= lambda!102664 lambda!102655)))

(declare-fun bs!514813 () Bool)

(assert (= bs!514813 (and d!812621 d!812615)))

(assert (=> bs!514813 (= lambda!102664 lambda!102663)))

(declare-fun bs!514814 () Bool)

(assert (= bs!514814 (and d!812621 d!812595)))

(assert (=> bs!514814 (= lambda!102664 lambda!102654)))

(declare-fun bs!514815 () Bool)

(assert (= bs!514815 (and d!812621 d!812613)))

(assert (=> bs!514815 (= lambda!102664 lambda!102662)))

(declare-fun bs!514816 () Bool)

(assert (= bs!514816 (and d!812621 d!812603)))

(assert (=> bs!514816 (= lambda!102664 lambda!102658)))

(declare-fun bs!514817 () Bool)

(assert (= bs!514817 (and d!812621 d!812587)))

(assert (=> bs!514817 (= lambda!102664 lambda!102648)))

(declare-fun bs!514818 () Bool)

(assert (= bs!514818 (and d!812621 d!812591)))

(assert (=> bs!514818 (= lambda!102664 lambda!102652)))

(declare-fun bs!514819 () Bool)

(assert (= bs!514819 (and d!812621 d!812601)))

(assert (=> bs!514819 (= lambda!102664 lambda!102657)))

(declare-fun bs!514820 () Bool)

(assert (= bs!514820 (and d!812621 d!812579)))

(assert (=> bs!514820 (= lambda!102664 lambda!102647)))

(declare-fun bs!514821 () Bool)

(assert (= bs!514821 (and d!812621 d!812599)))

(assert (=> bs!514821 (= lambda!102664 lambda!102656)))

(assert (=> d!812621 (= (inv!44029 setElem!24105) (forall!6688 (exprs!2903 setElem!24105) lambda!102664))))

(declare-fun bs!514822 () Bool)

(assert (= bs!514822 d!812621))

(declare-fun m!3224945 () Bool)

(assert (=> bs!514822 m!3224945))

(assert (=> setNonEmpty!24105 d!812621))

(declare-fun bs!514823 () Bool)

(declare-fun d!812623 () Bool)

(assert (= bs!514823 (and d!812623 d!812605)))

(declare-fun lambda!102665 () Int)

(assert (=> bs!514823 (= lambda!102665 lambda!102659)))

(declare-fun bs!514824 () Bool)

(assert (= bs!514824 (and d!812623 d!812593)))

(assert (=> bs!514824 (= lambda!102665 lambda!102653)))

(declare-fun bs!514825 () Bool)

(assert (= bs!514825 (and d!812623 d!812575)))

(assert (=> bs!514825 (= lambda!102665 lambda!102643)))

(declare-fun bs!514826 () Bool)

(assert (= bs!514826 (and d!812623 d!812611)))

(assert (=> bs!514826 (= lambda!102665 lambda!102661)))

(declare-fun bs!514827 () Bool)

(assert (= bs!514827 (and d!812623 d!812621)))

(assert (=> bs!514827 (= lambda!102665 lambda!102664)))

(declare-fun bs!514828 () Bool)

(assert (= bs!514828 (and d!812623 d!812609)))

(assert (=> bs!514828 (= lambda!102665 lambda!102660)))

(declare-fun bs!514829 () Bool)

(assert (= bs!514829 (and d!812623 d!812597)))

(assert (=> bs!514829 (= lambda!102665 lambda!102655)))

(declare-fun bs!514830 () Bool)

(assert (= bs!514830 (and d!812623 d!812615)))

(assert (=> bs!514830 (= lambda!102665 lambda!102663)))

(declare-fun bs!514831 () Bool)

(assert (= bs!514831 (and d!812623 d!812595)))

(assert (=> bs!514831 (= lambda!102665 lambda!102654)))

(declare-fun bs!514832 () Bool)

(assert (= bs!514832 (and d!812623 d!812613)))

(assert (=> bs!514832 (= lambda!102665 lambda!102662)))

(declare-fun bs!514833 () Bool)

(assert (= bs!514833 (and d!812623 d!812603)))

(assert (=> bs!514833 (= lambda!102665 lambda!102658)))

(declare-fun bs!514834 () Bool)

(assert (= bs!514834 (and d!812623 d!812587)))

(assert (=> bs!514834 (= lambda!102665 lambda!102648)))

(declare-fun bs!514835 () Bool)

(assert (= bs!514835 (and d!812623 d!812591)))

(assert (=> bs!514835 (= lambda!102665 lambda!102652)))

(declare-fun bs!514836 () Bool)

(assert (= bs!514836 (and d!812623 d!812601)))

(assert (=> bs!514836 (= lambda!102665 lambda!102657)))

(declare-fun bs!514837 () Bool)

(assert (= bs!514837 (and d!812623 d!812579)))

(assert (=> bs!514837 (= lambda!102665 lambda!102647)))

(declare-fun bs!514838 () Bool)

(assert (= bs!514838 (and d!812623 d!812599)))

(assert (=> bs!514838 (= lambda!102665 lambda!102656)))

(assert (=> d!812623 (= (inv!44029 setElem!24099) (forall!6688 (exprs!2903 setElem!24099) lambda!102665))))

(declare-fun bs!514839 () Bool)

(assert (= bs!514839 d!812623))

(declare-fun m!3224947 () Bool)

(assert (=> bs!514839 m!3224947))

(assert (=> setNonEmpty!24099 d!812623))

(declare-fun bs!514840 () Bool)

(declare-fun d!812625 () Bool)

(assert (= bs!514840 (and d!812625 d!812605)))

(declare-fun lambda!102666 () Int)

(assert (=> bs!514840 (= lambda!102666 lambda!102659)))

(declare-fun bs!514841 () Bool)

(assert (= bs!514841 (and d!812625 d!812593)))

(assert (=> bs!514841 (= lambda!102666 lambda!102653)))

(declare-fun bs!514842 () Bool)

(assert (= bs!514842 (and d!812625 d!812575)))

(assert (=> bs!514842 (= lambda!102666 lambda!102643)))

(declare-fun bs!514843 () Bool)

(assert (= bs!514843 (and d!812625 d!812611)))

(assert (=> bs!514843 (= lambda!102666 lambda!102661)))

(declare-fun bs!514844 () Bool)

(assert (= bs!514844 (and d!812625 d!812621)))

(assert (=> bs!514844 (= lambda!102666 lambda!102664)))

(declare-fun bs!514845 () Bool)

(assert (= bs!514845 (and d!812625 d!812623)))

(assert (=> bs!514845 (= lambda!102666 lambda!102665)))

(declare-fun bs!514846 () Bool)

(assert (= bs!514846 (and d!812625 d!812609)))

(assert (=> bs!514846 (= lambda!102666 lambda!102660)))

(declare-fun bs!514847 () Bool)

(assert (= bs!514847 (and d!812625 d!812597)))

(assert (=> bs!514847 (= lambda!102666 lambda!102655)))

(declare-fun bs!514848 () Bool)

(assert (= bs!514848 (and d!812625 d!812615)))

(assert (=> bs!514848 (= lambda!102666 lambda!102663)))

(declare-fun bs!514849 () Bool)

(assert (= bs!514849 (and d!812625 d!812595)))

(assert (=> bs!514849 (= lambda!102666 lambda!102654)))

(declare-fun bs!514850 () Bool)

(assert (= bs!514850 (and d!812625 d!812613)))

(assert (=> bs!514850 (= lambda!102666 lambda!102662)))

(declare-fun bs!514851 () Bool)

(assert (= bs!514851 (and d!812625 d!812603)))

(assert (=> bs!514851 (= lambda!102666 lambda!102658)))

(declare-fun bs!514852 () Bool)

(assert (= bs!514852 (and d!812625 d!812587)))

(assert (=> bs!514852 (= lambda!102666 lambda!102648)))

(declare-fun bs!514853 () Bool)

(assert (= bs!514853 (and d!812625 d!812591)))

(assert (=> bs!514853 (= lambda!102666 lambda!102652)))

(declare-fun bs!514854 () Bool)

(assert (= bs!514854 (and d!812625 d!812601)))

(assert (=> bs!514854 (= lambda!102666 lambda!102657)))

(declare-fun bs!514855 () Bool)

(assert (= bs!514855 (and d!812625 d!812579)))

(assert (=> bs!514855 (= lambda!102666 lambda!102647)))

(declare-fun bs!514856 () Bool)

(assert (= bs!514856 (and d!812625 d!812599)))

(assert (=> bs!514856 (= lambda!102666 lambda!102656)))

(assert (=> d!812625 (= (inv!44029 (_2!19482 (_1!19483 (h!37828 (zeroValue!4226 (v!34012 (underlying!8137 (v!34013 (underlying!8138 (cache!4016 cacheDown!1009)))))))))) (forall!6688 (exprs!2903 (_2!19482 (_1!19483 (h!37828 (zeroValue!4226 (v!34012 (underlying!8137 (v!34013 (underlying!8138 (cache!4016 cacheDown!1009)))))))))) lambda!102666))))

(declare-fun bs!514857 () Bool)

(assert (= bs!514857 d!812625))

(declare-fun m!3224949 () Bool)

(assert (=> bs!514857 m!3224949))

(assert (=> b!2794664 d!812625))

(declare-fun d!812627 () Bool)

(declare-fun c!453553 () Bool)

(assert (=> d!812627 (= c!453553 ((_ is Nil!32405) lt!998627))))

(declare-fun e!1764818 () (InoxSet C!16528))

(assert (=> d!812627 (= (content!4534 lt!998627) e!1764818)))

(declare-fun b!2794790 () Bool)

(assert (=> b!2794790 (= e!1764818 ((as const (Array C!16528 Bool)) false))))

(declare-fun b!2794791 () Bool)

(assert (=> b!2794791 (= e!1764818 ((_ map or) (store ((as const (Array C!16528 Bool)) false) (h!37825 lt!998627) true) (content!4534 (t!228662 lt!998627))))))

(assert (= (and d!812627 c!453553) b!2794790))

(assert (= (and d!812627 (not c!453553)) b!2794791))

(declare-fun m!3224951 () Bool)

(assert (=> b!2794791 m!3224951))

(declare-fun m!3224953 () Bool)

(assert (=> b!2794791 m!3224953))

(assert (=> d!812565 d!812627))

(declare-fun d!812629 () Bool)

(declare-fun c!453554 () Bool)

(assert (=> d!812629 (= c!453554 ((_ is Nil!32405) testedP!183))))

(declare-fun e!1764819 () (InoxSet C!16528))

(assert (=> d!812629 (= (content!4534 testedP!183) e!1764819)))

(declare-fun b!2794792 () Bool)

(assert (=> b!2794792 (= e!1764819 ((as const (Array C!16528 Bool)) false))))

(declare-fun b!2794793 () Bool)

(assert (=> b!2794793 (= e!1764819 ((_ map or) (store ((as const (Array C!16528 Bool)) false) (h!37825 testedP!183) true) (content!4534 (t!228662 testedP!183))))))

(assert (= (and d!812629 c!453554) b!2794792))

(assert (= (and d!812629 (not c!453554)) b!2794793))

(declare-fun m!3224955 () Bool)

(assert (=> b!2794793 m!3224955))

(assert (=> b!2794793 m!3224888))

(assert (=> d!812565 d!812629))

(declare-fun d!812631 () Bool)

(declare-fun c!453555 () Bool)

(assert (=> d!812631 (= c!453555 ((_ is Nil!32405) testedSuffix!143))))

(declare-fun e!1764820 () (InoxSet C!16528))

(assert (=> d!812631 (= (content!4534 testedSuffix!143) e!1764820)))

(declare-fun b!2794794 () Bool)

(assert (=> b!2794794 (= e!1764820 ((as const (Array C!16528 Bool)) false))))

(declare-fun b!2794795 () Bool)

(assert (=> b!2794795 (= e!1764820 ((_ map or) (store ((as const (Array C!16528 Bool)) false) (h!37825 testedSuffix!143) true) (content!4534 (t!228662 testedSuffix!143))))))

(assert (= (and d!812631 c!453555) b!2794794))

(assert (= (and d!812631 (not c!453555)) b!2794795))

(declare-fun m!3224957 () Bool)

(assert (=> b!2794795 m!3224957))

(declare-fun m!3224959 () Bool)

(assert (=> b!2794795 m!3224959))

(assert (=> d!812565 d!812631))

(declare-fun bs!514858 () Bool)

(declare-fun d!812633 () Bool)

(assert (= bs!514858 (and d!812633 d!812605)))

(declare-fun lambda!102667 () Int)

(assert (=> bs!514858 (= lambda!102667 lambda!102659)))

(declare-fun bs!514859 () Bool)

(assert (= bs!514859 (and d!812633 d!812593)))

(assert (=> bs!514859 (= lambda!102667 lambda!102653)))

(declare-fun bs!514860 () Bool)

(assert (= bs!514860 (and d!812633 d!812575)))

(assert (=> bs!514860 (= lambda!102667 lambda!102643)))

(declare-fun bs!514861 () Bool)

(assert (= bs!514861 (and d!812633 d!812611)))

(assert (=> bs!514861 (= lambda!102667 lambda!102661)))

(declare-fun bs!514862 () Bool)

(assert (= bs!514862 (and d!812633 d!812621)))

(assert (=> bs!514862 (= lambda!102667 lambda!102664)))

(declare-fun bs!514863 () Bool)

(assert (= bs!514863 (and d!812633 d!812623)))

(assert (=> bs!514863 (= lambda!102667 lambda!102665)))

(declare-fun bs!514864 () Bool)

(assert (= bs!514864 (and d!812633 d!812609)))

(assert (=> bs!514864 (= lambda!102667 lambda!102660)))

(declare-fun bs!514865 () Bool)

(assert (= bs!514865 (and d!812633 d!812597)))

(assert (=> bs!514865 (= lambda!102667 lambda!102655)))

(declare-fun bs!514866 () Bool)

(assert (= bs!514866 (and d!812633 d!812595)))

(assert (=> bs!514866 (= lambda!102667 lambda!102654)))

(declare-fun bs!514867 () Bool)

(assert (= bs!514867 (and d!812633 d!812613)))

(assert (=> bs!514867 (= lambda!102667 lambda!102662)))

(declare-fun bs!514868 () Bool)

(assert (= bs!514868 (and d!812633 d!812603)))

(assert (=> bs!514868 (= lambda!102667 lambda!102658)))

(declare-fun bs!514869 () Bool)

(assert (= bs!514869 (and d!812633 d!812587)))

(assert (=> bs!514869 (= lambda!102667 lambda!102648)))

(declare-fun bs!514870 () Bool)

(assert (= bs!514870 (and d!812633 d!812591)))

(assert (=> bs!514870 (= lambda!102667 lambda!102652)))

(declare-fun bs!514871 () Bool)

(assert (= bs!514871 (and d!812633 d!812601)))

(assert (=> bs!514871 (= lambda!102667 lambda!102657)))

(declare-fun bs!514872 () Bool)

(assert (= bs!514872 (and d!812633 d!812615)))

(assert (=> bs!514872 (= lambda!102667 lambda!102663)))

(declare-fun bs!514873 () Bool)

(assert (= bs!514873 (and d!812633 d!812625)))

(assert (=> bs!514873 (= lambda!102667 lambda!102666)))

(declare-fun bs!514874 () Bool)

(assert (= bs!514874 (and d!812633 d!812579)))

(assert (=> bs!514874 (= lambda!102667 lambda!102647)))

(declare-fun bs!514875 () Bool)

(assert (= bs!514875 (and d!812633 d!812599)))

(assert (=> bs!514875 (= lambda!102667 lambda!102656)))

(assert (=> d!812633 (= (inv!44029 (_2!19482 (_1!19483 (h!37828 (minValue!4226 (v!34012 (underlying!8137 (v!34013 (underlying!8138 (cache!4016 cacheDown!1009)))))))))) (forall!6688 (exprs!2903 (_2!19482 (_1!19483 (h!37828 (minValue!4226 (v!34012 (underlying!8137 (v!34013 (underlying!8138 (cache!4016 cacheDown!1009)))))))))) lambda!102667))))

(declare-fun bs!514876 () Bool)

(assert (= bs!514876 d!812633))

(declare-fun m!3224961 () Bool)

(assert (=> bs!514876 m!3224961))

(assert (=> b!2794667 d!812633))

(declare-fun d!812635 () Bool)

(declare-fun lt!998635 () Int)

(assert (=> d!812635 (>= lt!998635 0)))

(declare-fun e!1764821 () Int)

(assert (=> d!812635 (= lt!998635 e!1764821)))

(declare-fun c!453556 () Bool)

(assert (=> d!812635 (= c!453556 ((_ is Nil!32405) (list!12183 totalInput!758)))))

(assert (=> d!812635 (= (size!25248 (list!12183 totalInput!758)) lt!998635)))

(declare-fun b!2794796 () Bool)

(assert (=> b!2794796 (= e!1764821 0)))

(declare-fun b!2794797 () Bool)

(assert (=> b!2794797 (= e!1764821 (+ 1 (size!25248 (t!228662 (list!12183 totalInput!758)))))))

(assert (= (and d!812635 c!453556) b!2794796))

(assert (= (and d!812635 (not c!453556)) b!2794797))

(declare-fun m!3224963 () Bool)

(assert (=> b!2794797 m!3224963))

(assert (=> d!812547 d!812635))

(assert (=> d!812547 d!812563))

(declare-fun d!812637 () Bool)

(declare-fun lt!998638 () Int)

(assert (=> d!812637 (= lt!998638 (size!25248 (list!12184 (c!453536 totalInput!758))))))

(assert (=> d!812637 (= lt!998638 (ite ((_ is Empty!10050) (c!453536 totalInput!758)) 0 (ite ((_ is Leaf!15311) (c!453536 totalInput!758)) (csize!20331 (c!453536 totalInput!758)) (csize!20330 (c!453536 totalInput!758)))))))

(assert (=> d!812637 (= (size!25249 (c!453536 totalInput!758)) lt!998638)))

(declare-fun bs!514877 () Bool)

(assert (= bs!514877 d!812637))

(assert (=> bs!514877 m!3224795))

(assert (=> bs!514877 m!3224795))

(declare-fun m!3224965 () Bool)

(assert (=> bs!514877 m!3224965))

(assert (=> d!812547 d!812637))

(declare-fun bs!514878 () Bool)

(declare-fun d!812639 () Bool)

(assert (= bs!514878 (and d!812639 d!812605)))

(declare-fun lambda!102668 () Int)

(assert (=> bs!514878 (= lambda!102668 lambda!102659)))

(declare-fun bs!514879 () Bool)

(assert (= bs!514879 (and d!812639 d!812633)))

(assert (=> bs!514879 (= lambda!102668 lambda!102667)))

(declare-fun bs!514880 () Bool)

(assert (= bs!514880 (and d!812639 d!812593)))

(assert (=> bs!514880 (= lambda!102668 lambda!102653)))

(declare-fun bs!514881 () Bool)

(assert (= bs!514881 (and d!812639 d!812575)))

(assert (=> bs!514881 (= lambda!102668 lambda!102643)))

(declare-fun bs!514882 () Bool)

(assert (= bs!514882 (and d!812639 d!812611)))

(assert (=> bs!514882 (= lambda!102668 lambda!102661)))

(declare-fun bs!514883 () Bool)

(assert (= bs!514883 (and d!812639 d!812621)))

(assert (=> bs!514883 (= lambda!102668 lambda!102664)))

(declare-fun bs!514884 () Bool)

(assert (= bs!514884 (and d!812639 d!812623)))

(assert (=> bs!514884 (= lambda!102668 lambda!102665)))

(declare-fun bs!514885 () Bool)

(assert (= bs!514885 (and d!812639 d!812609)))

(assert (=> bs!514885 (= lambda!102668 lambda!102660)))

(declare-fun bs!514886 () Bool)

(assert (= bs!514886 (and d!812639 d!812597)))

(assert (=> bs!514886 (= lambda!102668 lambda!102655)))

(declare-fun bs!514887 () Bool)

(assert (= bs!514887 (and d!812639 d!812595)))

(assert (=> bs!514887 (= lambda!102668 lambda!102654)))

(declare-fun bs!514888 () Bool)

(assert (= bs!514888 (and d!812639 d!812613)))

(assert (=> bs!514888 (= lambda!102668 lambda!102662)))

(declare-fun bs!514889 () Bool)

(assert (= bs!514889 (and d!812639 d!812603)))

(assert (=> bs!514889 (= lambda!102668 lambda!102658)))

(declare-fun bs!514890 () Bool)

(assert (= bs!514890 (and d!812639 d!812587)))

(assert (=> bs!514890 (= lambda!102668 lambda!102648)))

(declare-fun bs!514891 () Bool)

(assert (= bs!514891 (and d!812639 d!812591)))

(assert (=> bs!514891 (= lambda!102668 lambda!102652)))

(declare-fun bs!514892 () Bool)

(assert (= bs!514892 (and d!812639 d!812601)))

(assert (=> bs!514892 (= lambda!102668 lambda!102657)))

(declare-fun bs!514893 () Bool)

(assert (= bs!514893 (and d!812639 d!812615)))

(assert (=> bs!514893 (= lambda!102668 lambda!102663)))

(declare-fun bs!514894 () Bool)

(assert (= bs!514894 (and d!812639 d!812625)))

(assert (=> bs!514894 (= lambda!102668 lambda!102666)))

(declare-fun bs!514895 () Bool)

(assert (= bs!514895 (and d!812639 d!812579)))

(assert (=> bs!514895 (= lambda!102668 lambda!102647)))

(declare-fun bs!514896 () Bool)

(assert (= bs!514896 (and d!812639 d!812599)))

(assert (=> bs!514896 (= lambda!102668 lambda!102656)))

(assert (=> d!812639 (= (inv!44029 (_2!19482 (_1!19483 (h!37828 mapDefault!18053)))) (forall!6688 (exprs!2903 (_2!19482 (_1!19483 (h!37828 mapDefault!18053)))) lambda!102668))))

(declare-fun bs!514897 () Bool)

(assert (= bs!514897 d!812639))

(declare-fun m!3224967 () Bool)

(assert (=> bs!514897 m!3224967))

(assert (=> b!2794697 d!812639))

(declare-fun bs!514898 () Bool)

(declare-fun d!812641 () Bool)

(assert (= bs!514898 (and d!812641 d!812605)))

(declare-fun lambda!102669 () Int)

(assert (=> bs!514898 (= lambda!102669 lambda!102659)))

(declare-fun bs!514899 () Bool)

(assert (= bs!514899 (and d!812641 d!812593)))

(assert (=> bs!514899 (= lambda!102669 lambda!102653)))

(declare-fun bs!514900 () Bool)

(assert (= bs!514900 (and d!812641 d!812575)))

(assert (=> bs!514900 (= lambda!102669 lambda!102643)))

(declare-fun bs!514901 () Bool)

(assert (= bs!514901 (and d!812641 d!812611)))

(assert (=> bs!514901 (= lambda!102669 lambda!102661)))

(declare-fun bs!514902 () Bool)

(assert (= bs!514902 (and d!812641 d!812621)))

(assert (=> bs!514902 (= lambda!102669 lambda!102664)))

(declare-fun bs!514903 () Bool)

(assert (= bs!514903 (and d!812641 d!812623)))

(assert (=> bs!514903 (= lambda!102669 lambda!102665)))

(declare-fun bs!514904 () Bool)

(assert (= bs!514904 (and d!812641 d!812609)))

(assert (=> bs!514904 (= lambda!102669 lambda!102660)))

(declare-fun bs!514905 () Bool)

(assert (= bs!514905 (and d!812641 d!812597)))

(assert (=> bs!514905 (= lambda!102669 lambda!102655)))

(declare-fun bs!514906 () Bool)

(assert (= bs!514906 (and d!812641 d!812595)))

(assert (=> bs!514906 (= lambda!102669 lambda!102654)))

(declare-fun bs!514907 () Bool)

(assert (= bs!514907 (and d!812641 d!812613)))

(assert (=> bs!514907 (= lambda!102669 lambda!102662)))

(declare-fun bs!514908 () Bool)

(assert (= bs!514908 (and d!812641 d!812639)))

(assert (=> bs!514908 (= lambda!102669 lambda!102668)))

(declare-fun bs!514909 () Bool)

(assert (= bs!514909 (and d!812641 d!812633)))

(assert (=> bs!514909 (= lambda!102669 lambda!102667)))

(declare-fun bs!514910 () Bool)

(assert (= bs!514910 (and d!812641 d!812603)))

(assert (=> bs!514910 (= lambda!102669 lambda!102658)))

(declare-fun bs!514911 () Bool)

(assert (= bs!514911 (and d!812641 d!812587)))

(assert (=> bs!514911 (= lambda!102669 lambda!102648)))

(declare-fun bs!514912 () Bool)

(assert (= bs!514912 (and d!812641 d!812591)))

(assert (=> bs!514912 (= lambda!102669 lambda!102652)))

(declare-fun bs!514913 () Bool)

(assert (= bs!514913 (and d!812641 d!812601)))

(assert (=> bs!514913 (= lambda!102669 lambda!102657)))

(declare-fun bs!514914 () Bool)

(assert (= bs!514914 (and d!812641 d!812615)))

(assert (=> bs!514914 (= lambda!102669 lambda!102663)))

(declare-fun bs!514915 () Bool)

(assert (= bs!514915 (and d!812641 d!812625)))

(assert (=> bs!514915 (= lambda!102669 lambda!102666)))

(declare-fun bs!514916 () Bool)

(assert (= bs!514916 (and d!812641 d!812579)))

(assert (=> bs!514916 (= lambda!102669 lambda!102647)))

(declare-fun bs!514917 () Bool)

(assert (= bs!514917 (and d!812641 d!812599)))

(assert (=> bs!514917 (= lambda!102669 lambda!102656)))

(assert (=> d!812641 (= (inv!44029 setElem!24100) (forall!6688 (exprs!2903 setElem!24100) lambda!102669))))

(declare-fun bs!514918 () Bool)

(assert (= bs!514918 d!812641))

(declare-fun m!3224969 () Bool)

(assert (=> bs!514918 m!3224969))

(assert (=> setNonEmpty!24100 d!812641))

(declare-fun bs!514919 () Bool)

(declare-fun d!812643 () Bool)

(assert (= bs!514919 (and d!812643 d!812593)))

(declare-fun lambda!102670 () Int)

(assert (=> bs!514919 (= lambda!102670 lambda!102653)))

(declare-fun bs!514920 () Bool)

(assert (= bs!514920 (and d!812643 d!812575)))

(assert (=> bs!514920 (= lambda!102670 lambda!102643)))

(declare-fun bs!514921 () Bool)

(assert (= bs!514921 (and d!812643 d!812611)))

(assert (=> bs!514921 (= lambda!102670 lambda!102661)))

(declare-fun bs!514922 () Bool)

(assert (= bs!514922 (and d!812643 d!812621)))

(assert (=> bs!514922 (= lambda!102670 lambda!102664)))

(declare-fun bs!514923 () Bool)

(assert (= bs!514923 (and d!812643 d!812623)))

(assert (=> bs!514923 (= lambda!102670 lambda!102665)))

(declare-fun bs!514924 () Bool)

(assert (= bs!514924 (and d!812643 d!812609)))

(assert (=> bs!514924 (= lambda!102670 lambda!102660)))

(declare-fun bs!514925 () Bool)

(assert (= bs!514925 (and d!812643 d!812597)))

(assert (=> bs!514925 (= lambda!102670 lambda!102655)))

(declare-fun bs!514926 () Bool)

(assert (= bs!514926 (and d!812643 d!812595)))

(assert (=> bs!514926 (= lambda!102670 lambda!102654)))

(declare-fun bs!514927 () Bool)

(assert (= bs!514927 (and d!812643 d!812613)))

(assert (=> bs!514927 (= lambda!102670 lambda!102662)))

(declare-fun bs!514928 () Bool)

(assert (= bs!514928 (and d!812643 d!812605)))

(assert (=> bs!514928 (= lambda!102670 lambda!102659)))

(declare-fun bs!514929 () Bool)

(assert (= bs!514929 (and d!812643 d!812641)))

(assert (=> bs!514929 (= lambda!102670 lambda!102669)))

(declare-fun bs!514930 () Bool)

(assert (= bs!514930 (and d!812643 d!812639)))

(assert (=> bs!514930 (= lambda!102670 lambda!102668)))

(declare-fun bs!514931 () Bool)

(assert (= bs!514931 (and d!812643 d!812633)))

(assert (=> bs!514931 (= lambda!102670 lambda!102667)))

(declare-fun bs!514932 () Bool)

(assert (= bs!514932 (and d!812643 d!812603)))

(assert (=> bs!514932 (= lambda!102670 lambda!102658)))

(declare-fun bs!514933 () Bool)

(assert (= bs!514933 (and d!812643 d!812587)))

(assert (=> bs!514933 (= lambda!102670 lambda!102648)))

(declare-fun bs!514934 () Bool)

(assert (= bs!514934 (and d!812643 d!812591)))

(assert (=> bs!514934 (= lambda!102670 lambda!102652)))

(declare-fun bs!514935 () Bool)

(assert (= bs!514935 (and d!812643 d!812601)))

(assert (=> bs!514935 (= lambda!102670 lambda!102657)))

(declare-fun bs!514936 () Bool)

(assert (= bs!514936 (and d!812643 d!812615)))

(assert (=> bs!514936 (= lambda!102670 lambda!102663)))

(declare-fun bs!514937 () Bool)

(assert (= bs!514937 (and d!812643 d!812625)))

(assert (=> bs!514937 (= lambda!102670 lambda!102666)))

(declare-fun bs!514938 () Bool)

(assert (= bs!514938 (and d!812643 d!812579)))

(assert (=> bs!514938 (= lambda!102670 lambda!102647)))

(declare-fun bs!514939 () Bool)

(assert (= bs!514939 (and d!812643 d!812599)))

(assert (=> bs!514939 (= lambda!102670 lambda!102656)))

(assert (=> d!812643 (= (inv!44029 setElem!24119) (forall!6688 (exprs!2903 setElem!24119) lambda!102670))))

(declare-fun bs!514940 () Bool)

(assert (= bs!514940 d!812643))

(declare-fun m!3224971 () Bool)

(assert (=> bs!514940 m!3224971))

(assert (=> setNonEmpty!24119 d!812643))

(declare-fun bs!514941 () Bool)

(declare-fun d!812645 () Bool)

(assert (= bs!514941 (and d!812645 d!812593)))

(declare-fun lambda!102671 () Int)

(assert (=> bs!514941 (= lambda!102671 lambda!102653)))

(declare-fun bs!514942 () Bool)

(assert (= bs!514942 (and d!812645 d!812575)))

(assert (=> bs!514942 (= lambda!102671 lambda!102643)))

(declare-fun bs!514943 () Bool)

(assert (= bs!514943 (and d!812645 d!812611)))

(assert (=> bs!514943 (= lambda!102671 lambda!102661)))

(declare-fun bs!514944 () Bool)

(assert (= bs!514944 (and d!812645 d!812621)))

(assert (=> bs!514944 (= lambda!102671 lambda!102664)))

(declare-fun bs!514945 () Bool)

(assert (= bs!514945 (and d!812645 d!812623)))

(assert (=> bs!514945 (= lambda!102671 lambda!102665)))

(declare-fun bs!514946 () Bool)

(assert (= bs!514946 (and d!812645 d!812609)))

(assert (=> bs!514946 (= lambda!102671 lambda!102660)))

(declare-fun bs!514947 () Bool)

(assert (= bs!514947 (and d!812645 d!812597)))

(assert (=> bs!514947 (= lambda!102671 lambda!102655)))

(declare-fun bs!514948 () Bool)

(assert (= bs!514948 (and d!812645 d!812595)))

(assert (=> bs!514948 (= lambda!102671 lambda!102654)))

(declare-fun bs!514949 () Bool)

(assert (= bs!514949 (and d!812645 d!812613)))

(assert (=> bs!514949 (= lambda!102671 lambda!102662)))

(declare-fun bs!514950 () Bool)

(assert (= bs!514950 (and d!812645 d!812605)))

(assert (=> bs!514950 (= lambda!102671 lambda!102659)))

(declare-fun bs!514951 () Bool)

(assert (= bs!514951 (and d!812645 d!812641)))

(assert (=> bs!514951 (= lambda!102671 lambda!102669)))

(declare-fun bs!514952 () Bool)

(assert (= bs!514952 (and d!812645 d!812639)))

(assert (=> bs!514952 (= lambda!102671 lambda!102668)))

(declare-fun bs!514953 () Bool)

(assert (= bs!514953 (and d!812645 d!812633)))

(assert (=> bs!514953 (= lambda!102671 lambda!102667)))

(declare-fun bs!514954 () Bool)

(assert (= bs!514954 (and d!812645 d!812603)))

(assert (=> bs!514954 (= lambda!102671 lambda!102658)))

(declare-fun bs!514955 () Bool)

(assert (= bs!514955 (and d!812645 d!812587)))

(assert (=> bs!514955 (= lambda!102671 lambda!102648)))

(declare-fun bs!514956 () Bool)

(assert (= bs!514956 (and d!812645 d!812591)))

(assert (=> bs!514956 (= lambda!102671 lambda!102652)))

(declare-fun bs!514957 () Bool)

(assert (= bs!514957 (and d!812645 d!812601)))

(assert (=> bs!514957 (= lambda!102671 lambda!102657)))

(declare-fun bs!514958 () Bool)

(assert (= bs!514958 (and d!812645 d!812643)))

(assert (=> bs!514958 (= lambda!102671 lambda!102670)))

(declare-fun bs!514959 () Bool)

(assert (= bs!514959 (and d!812645 d!812615)))

(assert (=> bs!514959 (= lambda!102671 lambda!102663)))

(declare-fun bs!514960 () Bool)

(assert (= bs!514960 (and d!812645 d!812625)))

(assert (=> bs!514960 (= lambda!102671 lambda!102666)))

(declare-fun bs!514961 () Bool)

(assert (= bs!514961 (and d!812645 d!812579)))

(assert (=> bs!514961 (= lambda!102671 lambda!102647)))

(declare-fun bs!514962 () Bool)

(assert (= bs!514962 (and d!812645 d!812599)))

(assert (=> bs!514962 (= lambda!102671 lambda!102656)))

(assert (=> d!812645 (= (inv!44029 (_2!19482 (_1!19483 (h!37828 mapDefault!18050)))) (forall!6688 (exprs!2903 (_2!19482 (_1!19483 (h!37828 mapDefault!18050)))) lambda!102671))))

(declare-fun bs!514963 () Bool)

(assert (= bs!514963 d!812645))

(declare-fun m!3224973 () Bool)

(assert (=> bs!514963 m!3224973))

(assert (=> b!2794681 d!812645))

(declare-fun d!812647 () Bool)

(assert (=> d!812647 (= (inv!44030 (xs!13162 (c!453536 totalInput!758))) (<= (size!25248 (innerList!10110 (xs!13162 (c!453536 totalInput!758)))) 2147483647))))

(declare-fun bs!514964 () Bool)

(assert (= bs!514964 d!812647))

(declare-fun m!3224975 () Bool)

(assert (=> bs!514964 m!3224975))

(assert (=> b!2794678 d!812647))

(declare-fun d!812649 () Bool)

(declare-fun c!453557 () Bool)

(assert (=> d!812649 (= c!453557 ((_ is Node!10050) (left!24540 (c!453536 totalInput!758))))))

(declare-fun e!1764822 () Bool)

(assert (=> d!812649 (= (inv!44023 (left!24540 (c!453536 totalInput!758))) e!1764822)))

(declare-fun b!2794798 () Bool)

(assert (=> b!2794798 (= e!1764822 (inv!44027 (left!24540 (c!453536 totalInput!758))))))

(declare-fun b!2794799 () Bool)

(declare-fun e!1764823 () Bool)

(assert (=> b!2794799 (= e!1764822 e!1764823)))

(declare-fun res!1165320 () Bool)

(assert (=> b!2794799 (= res!1165320 (not ((_ is Leaf!15311) (left!24540 (c!453536 totalInput!758)))))))

(assert (=> b!2794799 (=> res!1165320 e!1764823)))

(declare-fun b!2794800 () Bool)

(assert (=> b!2794800 (= e!1764823 (inv!44028 (left!24540 (c!453536 totalInput!758))))))

(assert (= (and d!812649 c!453557) b!2794798))

(assert (= (and d!812649 (not c!453557)) b!2794799))

(assert (= (and b!2794799 (not res!1165320)) b!2794800))

(declare-fun m!3224977 () Bool)

(assert (=> b!2794798 m!3224977))

(declare-fun m!3224979 () Bool)

(assert (=> b!2794800 m!3224979))

(assert (=> b!2794677 d!812649))

(declare-fun d!812651 () Bool)

(declare-fun c!453558 () Bool)

(assert (=> d!812651 (= c!453558 ((_ is Node!10050) (right!24870 (c!453536 totalInput!758))))))

(declare-fun e!1764824 () Bool)

(assert (=> d!812651 (= (inv!44023 (right!24870 (c!453536 totalInput!758))) e!1764824)))

(declare-fun b!2794801 () Bool)

(assert (=> b!2794801 (= e!1764824 (inv!44027 (right!24870 (c!453536 totalInput!758))))))

(declare-fun b!2794802 () Bool)

(declare-fun e!1764825 () Bool)

(assert (=> b!2794802 (= e!1764824 e!1764825)))

(declare-fun res!1165321 () Bool)

(assert (=> b!2794802 (= res!1165321 (not ((_ is Leaf!15311) (right!24870 (c!453536 totalInput!758)))))))

(assert (=> b!2794802 (=> res!1165321 e!1764825)))

(declare-fun b!2794803 () Bool)

(assert (=> b!2794803 (= e!1764825 (inv!44028 (right!24870 (c!453536 totalInput!758))))))

(assert (= (and d!812651 c!453558) b!2794801))

(assert (= (and d!812651 (not c!453558)) b!2794802))

(assert (= (and b!2794802 (not res!1165321)) b!2794803))

(declare-fun m!3224981 () Bool)

(assert (=> b!2794801 m!3224981))

(declare-fun m!3224983 () Bool)

(assert (=> b!2794803 m!3224983))

(assert (=> b!2794677 d!812651))

(declare-fun d!812653 () Bool)

(declare-fun c!453563 () Bool)

(assert (=> d!812653 (= c!453563 ((_ is Empty!10050) (c!453536 totalInput!758)))))

(declare-fun e!1764830 () List!32505)

(assert (=> d!812653 (= (list!12184 (c!453536 totalInput!758)) e!1764830)))

(declare-fun b!2794815 () Bool)

(declare-fun e!1764831 () List!32505)

(assert (=> b!2794815 (= e!1764831 (++!7999 (list!12184 (left!24540 (c!453536 totalInput!758))) (list!12184 (right!24870 (c!453536 totalInput!758)))))))

(declare-fun b!2794813 () Bool)

(assert (=> b!2794813 (= e!1764830 e!1764831)))

(declare-fun c!453564 () Bool)

(assert (=> b!2794813 (= c!453564 ((_ is Leaf!15311) (c!453536 totalInput!758)))))

(declare-fun b!2794812 () Bool)

(assert (=> b!2794812 (= e!1764830 Nil!32405)))

(declare-fun b!2794814 () Bool)

(assert (=> b!2794814 (= e!1764831 (list!12185 (xs!13162 (c!453536 totalInput!758))))))

(assert (= (and d!812653 c!453563) b!2794812))

(assert (= (and d!812653 (not c!453563)) b!2794813))

(assert (= (and b!2794813 c!453564) b!2794814))

(assert (= (and b!2794813 (not c!453564)) b!2794815))

(declare-fun m!3224985 () Bool)

(assert (=> b!2794815 m!3224985))

(declare-fun m!3224987 () Bool)

(assert (=> b!2794815 m!3224987))

(assert (=> b!2794815 m!3224985))

(assert (=> b!2794815 m!3224987))

(declare-fun m!3224989 () Bool)

(assert (=> b!2794815 m!3224989))

(assert (=> b!2794814 m!3224921))

(assert (=> d!812563 d!812653))

(declare-fun b!2794828 () Bool)

(declare-fun res!1165336 () Bool)

(declare-fun e!1764837 () Bool)

(assert (=> b!2794828 (=> (not res!1165336) (not e!1764837))))

(declare-fun isEmpty!18129 (Conc!10050) Bool)

(assert (=> b!2794828 (= res!1165336 (not (isEmpty!18129 (left!24540 (c!453536 totalInput!758)))))))

(declare-fun d!812655 () Bool)

(declare-fun res!1165337 () Bool)

(declare-fun e!1764836 () Bool)

(assert (=> d!812655 (=> res!1165337 e!1764836)))

(assert (=> d!812655 (= res!1165337 (not ((_ is Node!10050) (c!453536 totalInput!758))))))

(assert (=> d!812655 (= (isBalanced!3066 (c!453536 totalInput!758)) e!1764836)))

(declare-fun b!2794829 () Bool)

(assert (=> b!2794829 (= e!1764837 (not (isEmpty!18129 (right!24870 (c!453536 totalInput!758)))))))

(declare-fun b!2794830 () Bool)

(declare-fun res!1165338 () Bool)

(assert (=> b!2794830 (=> (not res!1165338) (not e!1764837))))

(assert (=> b!2794830 (= res!1165338 (<= (- (height!1496 (left!24540 (c!453536 totalInput!758))) (height!1496 (right!24870 (c!453536 totalInput!758)))) 1))))

(declare-fun b!2794831 () Bool)

(declare-fun res!1165335 () Bool)

(assert (=> b!2794831 (=> (not res!1165335) (not e!1764837))))

(assert (=> b!2794831 (= res!1165335 (isBalanced!3066 (left!24540 (c!453536 totalInput!758))))))

(declare-fun b!2794832 () Bool)

(declare-fun res!1165334 () Bool)

(assert (=> b!2794832 (=> (not res!1165334) (not e!1764837))))

(assert (=> b!2794832 (= res!1165334 (isBalanced!3066 (right!24870 (c!453536 totalInput!758))))))

(declare-fun b!2794833 () Bool)

(assert (=> b!2794833 (= e!1764836 e!1764837)))

(declare-fun res!1165339 () Bool)

(assert (=> b!2794833 (=> (not res!1165339) (not e!1764837))))

(assert (=> b!2794833 (= res!1165339 (<= (- 1) (- (height!1496 (left!24540 (c!453536 totalInput!758))) (height!1496 (right!24870 (c!453536 totalInput!758))))))))

(assert (= (and d!812655 (not res!1165337)) b!2794833))

(assert (= (and b!2794833 res!1165339) b!2794830))

(assert (= (and b!2794830 res!1165338) b!2794831))

(assert (= (and b!2794831 res!1165335) b!2794832))

(assert (= (and b!2794832 res!1165334) b!2794828))

(assert (= (and b!2794828 res!1165336) b!2794829))

(assert (=> b!2794830 m!3224939))

(assert (=> b!2794830 m!3224941))

(declare-fun m!3224991 () Bool)

(assert (=> b!2794831 m!3224991))

(declare-fun m!3224993 () Bool)

(assert (=> b!2794828 m!3224993))

(assert (=> b!2794833 m!3224939))

(assert (=> b!2794833 m!3224941))

(declare-fun m!3224995 () Bool)

(assert (=> b!2794832 m!3224995))

(declare-fun m!3224997 () Bool)

(assert (=> b!2794829 m!3224997))

(assert (=> d!812559 d!812655))

(assert (=> d!812573 d!812589))

(declare-fun bs!514965 () Bool)

(declare-fun d!812657 () Bool)

(assert (= bs!514965 (and d!812657 d!812593)))

(declare-fun lambda!102672 () Int)

(assert (=> bs!514965 (= lambda!102672 lambda!102653)))

(declare-fun bs!514966 () Bool)

(assert (= bs!514966 (and d!812657 d!812575)))

(assert (=> bs!514966 (= lambda!102672 lambda!102643)))

(declare-fun bs!514967 () Bool)

(assert (= bs!514967 (and d!812657 d!812621)))

(assert (=> bs!514967 (= lambda!102672 lambda!102664)))

(declare-fun bs!514968 () Bool)

(assert (= bs!514968 (and d!812657 d!812623)))

(assert (=> bs!514968 (= lambda!102672 lambda!102665)))

(declare-fun bs!514969 () Bool)

(assert (= bs!514969 (and d!812657 d!812609)))

(assert (=> bs!514969 (= lambda!102672 lambda!102660)))

(declare-fun bs!514970 () Bool)

(assert (= bs!514970 (and d!812657 d!812597)))

(assert (=> bs!514970 (= lambda!102672 lambda!102655)))

(declare-fun bs!514971 () Bool)

(assert (= bs!514971 (and d!812657 d!812595)))

(assert (=> bs!514971 (= lambda!102672 lambda!102654)))

(declare-fun bs!514972 () Bool)

(assert (= bs!514972 (and d!812657 d!812613)))

(assert (=> bs!514972 (= lambda!102672 lambda!102662)))

(declare-fun bs!514973 () Bool)

(assert (= bs!514973 (and d!812657 d!812605)))

(assert (=> bs!514973 (= lambda!102672 lambda!102659)))

(declare-fun bs!514974 () Bool)

(assert (= bs!514974 (and d!812657 d!812641)))

(assert (=> bs!514974 (= lambda!102672 lambda!102669)))

(declare-fun bs!514975 () Bool)

(assert (= bs!514975 (and d!812657 d!812639)))

(assert (=> bs!514975 (= lambda!102672 lambda!102668)))

(declare-fun bs!514976 () Bool)

(assert (= bs!514976 (and d!812657 d!812633)))

(assert (=> bs!514976 (= lambda!102672 lambda!102667)))

(declare-fun bs!514977 () Bool)

(assert (= bs!514977 (and d!812657 d!812603)))

(assert (=> bs!514977 (= lambda!102672 lambda!102658)))

(declare-fun bs!514978 () Bool)

(assert (= bs!514978 (and d!812657 d!812587)))

(assert (=> bs!514978 (= lambda!102672 lambda!102648)))

(declare-fun bs!514979 () Bool)

(assert (= bs!514979 (and d!812657 d!812591)))

(assert (=> bs!514979 (= lambda!102672 lambda!102652)))

(declare-fun bs!514980 () Bool)

(assert (= bs!514980 (and d!812657 d!812601)))

(assert (=> bs!514980 (= lambda!102672 lambda!102657)))

(declare-fun bs!514981 () Bool)

(assert (= bs!514981 (and d!812657 d!812611)))

(assert (=> bs!514981 (= lambda!102672 lambda!102661)))

(declare-fun bs!514982 () Bool)

(assert (= bs!514982 (and d!812657 d!812645)))

(assert (=> bs!514982 (= lambda!102672 lambda!102671)))

(declare-fun bs!514983 () Bool)

(assert (= bs!514983 (and d!812657 d!812643)))

(assert (=> bs!514983 (= lambda!102672 lambda!102670)))

(declare-fun bs!514984 () Bool)

(assert (= bs!514984 (and d!812657 d!812615)))

(assert (=> bs!514984 (= lambda!102672 lambda!102663)))

(declare-fun bs!514985 () Bool)

(assert (= bs!514985 (and d!812657 d!812625)))

(assert (=> bs!514985 (= lambda!102672 lambda!102666)))

(declare-fun bs!514986 () Bool)

(assert (= bs!514986 (and d!812657 d!812579)))

(assert (=> bs!514986 (= lambda!102672 lambda!102647)))

(declare-fun bs!514987 () Bool)

(assert (= bs!514987 (and d!812657 d!812599)))

(assert (=> bs!514987 (= lambda!102672 lambda!102656)))

(assert (=> d!812657 (= (inv!44029 (_1!19480 (_1!19481 (h!37827 mapValue!18049)))) (forall!6688 (exprs!2903 (_1!19480 (_1!19481 (h!37827 mapValue!18049)))) lambda!102672))))

(declare-fun bs!514988 () Bool)

(assert (= bs!514988 d!812657))

(declare-fun m!3224999 () Bool)

(assert (=> bs!514988 m!3224999))

(assert (=> b!2794744 d!812657))

(declare-fun condSetEmpty!24122 () Bool)

(assert (=> setNonEmpty!24118 (= condSetEmpty!24122 (= setRest!24118 ((as const (Array Context!4806 Bool)) false)))))

(declare-fun setRes!24122 () Bool)

(assert (=> setNonEmpty!24118 (= tp!888646 setRes!24122)))

(declare-fun setIsEmpty!24122 () Bool)

(assert (=> setIsEmpty!24122 setRes!24122))

(declare-fun setNonEmpty!24122 () Bool)

(declare-fun tp!888664 () Bool)

(declare-fun e!1764840 () Bool)

(declare-fun setElem!24122 () Context!4806)

(assert (=> setNonEmpty!24122 (= setRes!24122 (and tp!888664 (inv!44029 setElem!24122) e!1764840))))

(declare-fun setRest!24122 () (InoxSet Context!4806))

(assert (=> setNonEmpty!24122 (= setRest!24118 ((_ map or) (store ((as const (Array Context!4806 Bool)) false) setElem!24122 true) setRest!24122))))

(declare-fun b!2794838 () Bool)

(declare-fun tp!888663 () Bool)

(assert (=> b!2794838 (= e!1764840 tp!888663)))

(assert (= (and setNonEmpty!24118 condSetEmpty!24122) setIsEmpty!24122))

(assert (= (and setNonEmpty!24118 (not condSetEmpty!24122)) setNonEmpty!24122))

(assert (= setNonEmpty!24122 b!2794838))

(declare-fun m!3225001 () Bool)

(assert (=> setNonEmpty!24122 m!3225001))

(declare-fun b!2794843 () Bool)

(declare-fun e!1764843 () Bool)

(declare-fun tp!888669 () Bool)

(declare-fun tp!888670 () Bool)

(assert (=> b!2794843 (= e!1764843 (and tp!888669 tp!888670))))

(assert (=> b!2794742 (= tp!888647 e!1764843)))

(assert (= (and b!2794742 ((_ is Cons!32406) (exprs!2903 (_1!19480 (_1!19481 (h!37827 mapValue!18056)))))) b!2794843))

(declare-fun b!2794844 () Bool)

(declare-fun e!1764844 () Bool)

(declare-fun tp!888671 () Bool)

(declare-fun tp!888672 () Bool)

(assert (=> b!2794844 (= e!1764844 (and tp!888671 tp!888672))))

(assert (=> b!2794703 (= tp!888606 e!1764844)))

(assert (= (and b!2794703 ((_ is Cons!32406) (exprs!2903 setElem!24107))) b!2794844))

(declare-fun condSetEmpty!24123 () Bool)

(assert (=> setNonEmpty!24106 (= condSetEmpty!24123 (= setRest!24105 ((as const (Array Context!4806 Bool)) false)))))

(declare-fun setRes!24123 () Bool)

(assert (=> setNonEmpty!24106 (= tp!888601 setRes!24123)))

(declare-fun setIsEmpty!24123 () Bool)

(assert (=> setIsEmpty!24123 setRes!24123))

(declare-fun tp!888674 () Bool)

(declare-fun e!1764845 () Bool)

(declare-fun setElem!24123 () Context!4806)

(declare-fun setNonEmpty!24123 () Bool)

(assert (=> setNonEmpty!24123 (= setRes!24123 (and tp!888674 (inv!44029 setElem!24123) e!1764845))))

(declare-fun setRest!24123 () (InoxSet Context!4806))

(assert (=> setNonEmpty!24123 (= setRest!24105 ((_ map or) (store ((as const (Array Context!4806 Bool)) false) setElem!24123 true) setRest!24123))))

(declare-fun b!2794845 () Bool)

(declare-fun tp!888673 () Bool)

(assert (=> b!2794845 (= e!1764845 tp!888673)))

(assert (= (and setNonEmpty!24106 condSetEmpty!24123) setIsEmpty!24123))

(assert (= (and setNonEmpty!24106 (not condSetEmpty!24123)) setNonEmpty!24123))

(assert (= setNonEmpty!24123 b!2794845))

(declare-fun m!3225003 () Bool)

(assert (=> setNonEmpty!24123 m!3225003))

(declare-fun setRes!24124 () Bool)

(declare-fun e!1764847 () Bool)

(declare-fun b!2794846 () Bool)

(declare-fun tp!888675 () Bool)

(declare-fun e!1764848 () Bool)

(assert (=> b!2794846 (= e!1764847 (and (inv!44029 (_1!19480 (_1!19481 (h!37827 (t!228664 mapDefault!18056))))) e!1764848 tp_is_empty!14183 setRes!24124 tp!888675))))

(declare-fun condSetEmpty!24124 () Bool)

(assert (=> b!2794846 (= condSetEmpty!24124 (= (_2!19481 (h!37827 (t!228664 mapDefault!18056))) ((as const (Array Context!4806 Bool)) false)))))

(declare-fun setIsEmpty!24124 () Bool)

(assert (=> setIsEmpty!24124 setRes!24124))

(declare-fun b!2794847 () Bool)

(declare-fun e!1764846 () Bool)

(declare-fun tp!888677 () Bool)

(assert (=> b!2794847 (= e!1764846 tp!888677)))

(assert (=> b!2794740 (= tp!888652 e!1764847)))

(declare-fun b!2794848 () Bool)

(declare-fun tp!888678 () Bool)

(assert (=> b!2794848 (= e!1764848 tp!888678)))

(declare-fun tp!888676 () Bool)

(declare-fun setNonEmpty!24124 () Bool)

(declare-fun setElem!24124 () Context!4806)

(assert (=> setNonEmpty!24124 (= setRes!24124 (and tp!888676 (inv!44029 setElem!24124) e!1764846))))

(declare-fun setRest!24124 () (InoxSet Context!4806))

(assert (=> setNonEmpty!24124 (= (_2!19481 (h!37827 (t!228664 mapDefault!18056))) ((_ map or) (store ((as const (Array Context!4806 Bool)) false) setElem!24124 true) setRest!24124))))

(assert (= b!2794846 b!2794848))

(assert (= (and b!2794846 condSetEmpty!24124) setIsEmpty!24124))

(assert (= (and b!2794846 (not condSetEmpty!24124)) setNonEmpty!24124))

(assert (= setNonEmpty!24124 b!2794847))

(assert (= (and b!2794740 ((_ is Cons!32407) (t!228664 mapDefault!18056))) b!2794846))

(declare-fun m!3225005 () Bool)

(assert (=> b!2794846 m!3225005))

(declare-fun m!3225007 () Bool)

(assert (=> setNonEmpty!24124 m!3225007))

(declare-fun condSetEmpty!24125 () Bool)

(assert (=> setNonEmpty!24112 (= condSetEmpty!24125 (= setRest!24112 ((as const (Array Context!4806 Bool)) false)))))

(declare-fun setRes!24125 () Bool)

(assert (=> setNonEmpty!24112 (= tp!888625 setRes!24125)))

(declare-fun setIsEmpty!24125 () Bool)

(assert (=> setIsEmpty!24125 setRes!24125))

(declare-fun setElem!24125 () Context!4806)

(declare-fun setNonEmpty!24125 () Bool)

(declare-fun tp!888680 () Bool)

(declare-fun e!1764849 () Bool)

(assert (=> setNonEmpty!24125 (= setRes!24125 (and tp!888680 (inv!44029 setElem!24125) e!1764849))))

(declare-fun setRest!24125 () (InoxSet Context!4806))

(assert (=> setNonEmpty!24125 (= setRest!24112 ((_ map or) (store ((as const (Array Context!4806 Bool)) false) setElem!24125 true) setRest!24125))))

(declare-fun b!2794849 () Bool)

(declare-fun tp!888679 () Bool)

(assert (=> b!2794849 (= e!1764849 tp!888679)))

(assert (= (and setNonEmpty!24112 condSetEmpty!24125) setIsEmpty!24125))

(assert (= (and setNonEmpty!24112 (not condSetEmpty!24125)) setNonEmpty!24125))

(assert (= setNonEmpty!24125 b!2794849))

(declare-fun m!3225009 () Bool)

(assert (=> setNonEmpty!24125 m!3225009))

(declare-fun b!2794850 () Bool)

(declare-fun e!1764850 () Bool)

(declare-fun tp!888681 () Bool)

(declare-fun tp!888682 () Bool)

(assert (=> b!2794850 (= e!1764850 (and tp!888681 tp!888682))))

(assert (=> b!2794720 (= tp!888623 e!1764850)))

(assert (= (and b!2794720 ((_ is Cons!32406) (exprs!2903 (_1!19480 (_1!19481 (h!37827 (zeroValue!4225 (v!34010 (underlying!8135 (v!34011 (underlying!8136 (cache!4015 cacheUp!890)))))))))))) b!2794850))

(declare-fun b!2794851 () Bool)

(declare-fun e!1764851 () Bool)

(declare-fun tp!888683 () Bool)

(declare-fun tp!888684 () Bool)

(assert (=> b!2794851 (= e!1764851 (and tp!888683 tp!888684))))

(assert (=> b!2794716 (= tp!888618 e!1764851)))

(assert (= (and b!2794716 ((_ is Cons!32406) (exprs!2903 (_1!19480 (_1!19481 (h!37827 mapDefault!18049)))))) b!2794851))

(declare-fun b!2794852 () Bool)

(declare-fun e!1764852 () Bool)

(declare-fun tp!888685 () Bool)

(declare-fun tp!888686 () Bool)

(assert (=> b!2794852 (= e!1764852 (and tp!888685 tp!888686))))

(assert (=> b!2794702 (= tp!888593 e!1764852)))

(assert (= (and b!2794702 ((_ is Cons!32406) (exprs!2903 (_2!19482 (_1!19483 (h!37828 mapDefault!18053)))))) b!2794852))

(declare-fun b!2794853 () Bool)

(declare-fun e!1764854 () Bool)

(declare-fun e!1764855 () Bool)

(declare-fun tp!888687 () Bool)

(declare-fun setRes!24126 () Bool)

(assert (=> b!2794853 (= e!1764854 (and (inv!44029 (_1!19480 (_1!19481 (h!37827 (t!228664 mapValue!18056))))) e!1764855 tp_is_empty!14183 setRes!24126 tp!888687))))

(declare-fun condSetEmpty!24126 () Bool)

(assert (=> b!2794853 (= condSetEmpty!24126 (= (_2!19481 (h!37827 (t!228664 mapValue!18056))) ((as const (Array Context!4806 Bool)) false)))))

(declare-fun setIsEmpty!24126 () Bool)

(assert (=> setIsEmpty!24126 setRes!24126))

(declare-fun b!2794854 () Bool)

(declare-fun e!1764853 () Bool)

(declare-fun tp!888689 () Bool)

(assert (=> b!2794854 (= e!1764853 tp!888689)))

(assert (=> b!2794739 (= tp!888653 e!1764854)))

(declare-fun b!2794855 () Bool)

(declare-fun tp!888690 () Bool)

(assert (=> b!2794855 (= e!1764855 tp!888690)))

(declare-fun setElem!24126 () Context!4806)

(declare-fun setNonEmpty!24126 () Bool)

(declare-fun tp!888688 () Bool)

(assert (=> setNonEmpty!24126 (= setRes!24126 (and tp!888688 (inv!44029 setElem!24126) e!1764853))))

(declare-fun setRest!24126 () (InoxSet Context!4806))

(assert (=> setNonEmpty!24126 (= (_2!19481 (h!37827 (t!228664 mapValue!18056))) ((_ map or) (store ((as const (Array Context!4806 Bool)) false) setElem!24126 true) setRest!24126))))

(assert (= b!2794853 b!2794855))

(assert (= (and b!2794853 condSetEmpty!24126) setIsEmpty!24126))

(assert (= (and b!2794853 (not condSetEmpty!24126)) setNonEmpty!24126))

(assert (= setNonEmpty!24126 b!2794854))

(assert (= (and b!2794739 ((_ is Cons!32407) (t!228664 mapValue!18056))) b!2794853))

(declare-fun m!3225011 () Bool)

(assert (=> b!2794853 m!3225011))

(declare-fun m!3225013 () Bool)

(assert (=> setNonEmpty!24126 m!3225013))

(declare-fun b!2794856 () Bool)

(declare-fun e!1764856 () Bool)

(declare-fun tp!888691 () Bool)

(declare-fun tp!888692 () Bool)

(assert (=> b!2794856 (= e!1764856 (and tp!888691 tp!888692))))

(assert (=> b!2794722 (= tp!888626 e!1764856)))

(assert (= (and b!2794722 ((_ is Cons!32406) (exprs!2903 setElem!24112))) b!2794856))

(declare-fun b!2794868 () Bool)

(declare-fun e!1764859 () Bool)

(declare-fun tp!888705 () Bool)

(declare-fun tp!888706 () Bool)

(assert (=> b!2794868 (= e!1764859 (and tp!888705 tp!888706))))

(assert (=> b!2794700 (= tp!888592 e!1764859)))

(declare-fun b!2794869 () Bool)

(declare-fun tp!888703 () Bool)

(assert (=> b!2794869 (= e!1764859 tp!888703)))

(declare-fun b!2794870 () Bool)

(declare-fun tp!888704 () Bool)

(declare-fun tp!888707 () Bool)

(assert (=> b!2794870 (= e!1764859 (and tp!888704 tp!888707))))

(declare-fun b!2794867 () Bool)

(assert (=> b!2794867 (= e!1764859 tp_is_empty!14183)))

(assert (= (and b!2794700 ((_ is ElementMatch!8185) (_1!19482 (_1!19483 (h!37828 mapValue!18053))))) b!2794867))

(assert (= (and b!2794700 ((_ is Concat!13273) (_1!19482 (_1!19483 (h!37828 mapValue!18053))))) b!2794868))

(assert (= (and b!2794700 ((_ is Star!8185) (_1!19482 (_1!19483 (h!37828 mapValue!18053))))) b!2794869))

(assert (= (and b!2794700 ((_ is Union!8185) (_1!19482 (_1!19483 (h!37828 mapValue!18053))))) b!2794870))

(declare-fun b!2794871 () Bool)

(declare-fun e!1764862 () Bool)

(declare-fun tp!888712 () Bool)

(assert (=> b!2794871 (= e!1764862 tp!888712)))

(declare-fun e!1764860 () Bool)

(declare-fun setRes!24127 () Bool)

(declare-fun e!1764861 () Bool)

(declare-fun b!2794872 () Bool)

(declare-fun tp!888711 () Bool)

(declare-fun tp!888710 () Bool)

(assert (=> b!2794872 (= e!1764860 (and tp!888710 (inv!44029 (_2!19482 (_1!19483 (h!37828 (t!228665 mapValue!18053))))) e!1764861 tp_is_empty!14183 setRes!24127 tp!888711))))

(declare-fun condSetEmpty!24127 () Bool)

(assert (=> b!2794872 (= condSetEmpty!24127 (= (_2!19483 (h!37828 (t!228665 mapValue!18053))) ((as const (Array Context!4806 Bool)) false)))))

(declare-fun tp!888708 () Bool)

(declare-fun setElem!24127 () Context!4806)

(declare-fun setNonEmpty!24127 () Bool)

(assert (=> setNonEmpty!24127 (= setRes!24127 (and tp!888708 (inv!44029 setElem!24127) e!1764862))))

(declare-fun setRest!24127 () (InoxSet Context!4806))

(assert (=> setNonEmpty!24127 (= (_2!19483 (h!37828 (t!228665 mapValue!18053))) ((_ map or) (store ((as const (Array Context!4806 Bool)) false) setElem!24127 true) setRest!24127))))

(declare-fun b!2794873 () Bool)

(declare-fun tp!888709 () Bool)

(assert (=> b!2794873 (= e!1764861 tp!888709)))

(declare-fun setIsEmpty!24127 () Bool)

(assert (=> setIsEmpty!24127 setRes!24127))

(assert (=> b!2794700 (= tp!888596 e!1764860)))

(assert (= b!2794872 b!2794873))

(assert (= (and b!2794872 condSetEmpty!24127) setIsEmpty!24127))

(assert (= (and b!2794872 (not condSetEmpty!24127)) setNonEmpty!24127))

(assert (= setNonEmpty!24127 b!2794871))

(assert (= (and b!2794700 ((_ is Cons!32408) (t!228665 mapValue!18053))) b!2794872))

(declare-fun m!3225015 () Bool)

(assert (=> b!2794872 m!3225015))

(declare-fun m!3225017 () Bool)

(assert (=> setNonEmpty!24127 m!3225017))

(declare-fun setIsEmpty!24128 () Bool)

(declare-fun setRes!24128 () Bool)

(assert (=> setIsEmpty!24128 setRes!24128))

(declare-fun setIsEmpty!24129 () Bool)

(declare-fun setRes!24129 () Bool)

(assert (=> setIsEmpty!24129 setRes!24129))

(declare-fun mapNonEmpty!18057 () Bool)

(declare-fun mapRes!18057 () Bool)

(declare-fun tp!888717 () Bool)

(declare-fun e!1764866 () Bool)

(assert (=> mapNonEmpty!18057 (= mapRes!18057 (and tp!888717 e!1764866))))

(declare-fun mapValue!18057 () List!32507)

(declare-fun mapRest!18057 () (Array (_ BitVec 32) List!32507))

(declare-fun mapKey!18057 () (_ BitVec 32))

(assert (=> mapNonEmpty!18057 (= mapRest!18056 (store mapRest!18057 mapKey!18057 mapValue!18057))))

(declare-fun b!2794874 () Bool)

(declare-fun e!1764863 () Bool)

(declare-fun tp!888716 () Bool)

(assert (=> b!2794874 (= e!1764863 tp!888716)))

(declare-fun e!1764868 () Bool)

(declare-fun tp!888720 () Bool)

(declare-fun b!2794875 () Bool)

(assert (=> b!2794875 (= e!1764866 (and (inv!44029 (_1!19480 (_1!19481 (h!37827 mapValue!18057)))) e!1764868 tp_is_empty!14183 setRes!24128 tp!888720))))

(declare-fun condSetEmpty!24128 () Bool)

(assert (=> b!2794875 (= condSetEmpty!24128 (= (_2!19481 (h!37827 mapValue!18057)) ((as const (Array Context!4806 Bool)) false)))))

(declare-fun condMapEmpty!18057 () Bool)

(declare-fun mapDefault!18057 () List!32507)

(assert (=> mapNonEmpty!18056 (= condMapEmpty!18057 (= mapRest!18056 ((as const (Array (_ BitVec 32) List!32507)) mapDefault!18057)))))

(declare-fun e!1764865 () Bool)

(assert (=> mapNonEmpty!18056 (= tp!888650 (and e!1764865 mapRes!18057))))

(declare-fun setNonEmpty!24128 () Bool)

(declare-fun tp!888721 () Bool)

(declare-fun setElem!24128 () Context!4806)

(assert (=> setNonEmpty!24128 (= setRes!24128 (and tp!888721 (inv!44029 setElem!24128) e!1764863))))

(declare-fun setRest!24128 () (InoxSet Context!4806))

(assert (=> setNonEmpty!24128 (= (_2!19481 (h!37827 mapValue!18057)) ((_ map or) (store ((as const (Array Context!4806 Bool)) false) setElem!24128 true) setRest!24128))))

(declare-fun b!2794876 () Bool)

(declare-fun tp!888719 () Bool)

(declare-fun e!1764867 () Bool)

(assert (=> b!2794876 (= e!1764865 (and (inv!44029 (_1!19480 (_1!19481 (h!37827 mapDefault!18057)))) e!1764867 tp_is_empty!14183 setRes!24129 tp!888719))))

(declare-fun condSetEmpty!24129 () Bool)

(assert (=> b!2794876 (= condSetEmpty!24129 (= (_2!19481 (h!37827 mapDefault!18057)) ((as const (Array Context!4806 Bool)) false)))))

(declare-fun b!2794877 () Bool)

(declare-fun tp!888715 () Bool)

(assert (=> b!2794877 (= e!1764867 tp!888715)))

(declare-fun b!2794878 () Bool)

(declare-fun tp!888714 () Bool)

(assert (=> b!2794878 (= e!1764868 tp!888714)))

(declare-fun mapIsEmpty!18057 () Bool)

(assert (=> mapIsEmpty!18057 mapRes!18057))

(declare-fun e!1764864 () Bool)

(declare-fun setNonEmpty!24129 () Bool)

(declare-fun tp!888713 () Bool)

(declare-fun setElem!24129 () Context!4806)

(assert (=> setNonEmpty!24129 (= setRes!24129 (and tp!888713 (inv!44029 setElem!24129) e!1764864))))

(declare-fun setRest!24129 () (InoxSet Context!4806))

(assert (=> setNonEmpty!24129 (= (_2!19481 (h!37827 mapDefault!18057)) ((_ map or) (store ((as const (Array Context!4806 Bool)) false) setElem!24129 true) setRest!24129))))

(declare-fun b!2794879 () Bool)

(declare-fun tp!888718 () Bool)

(assert (=> b!2794879 (= e!1764864 tp!888718)))

(assert (= (and mapNonEmpty!18056 condMapEmpty!18057) mapIsEmpty!18057))

(assert (= (and mapNonEmpty!18056 (not condMapEmpty!18057)) mapNonEmpty!18057))

(assert (= b!2794875 b!2794878))

(assert (= (and b!2794875 condSetEmpty!24128) setIsEmpty!24128))

(assert (= (and b!2794875 (not condSetEmpty!24128)) setNonEmpty!24128))

(assert (= setNonEmpty!24128 b!2794874))

(assert (= (and mapNonEmpty!18057 ((_ is Cons!32407) mapValue!18057)) b!2794875))

(assert (= b!2794876 b!2794877))

(assert (= (and b!2794876 condSetEmpty!24129) setIsEmpty!24129))

(assert (= (and b!2794876 (not condSetEmpty!24129)) setNonEmpty!24129))

(assert (= setNonEmpty!24129 b!2794879))

(assert (= (and mapNonEmpty!18056 ((_ is Cons!32407) mapDefault!18057)) b!2794876))

(declare-fun m!3225019 () Bool)

(assert (=> mapNonEmpty!18057 m!3225019))

(declare-fun m!3225021 () Bool)

(assert (=> setNonEmpty!24129 m!3225021))

(declare-fun m!3225023 () Bool)

(assert (=> b!2794876 m!3225023))

(declare-fun m!3225025 () Bool)

(assert (=> setNonEmpty!24128 m!3225025))

(declare-fun m!3225027 () Bool)

(assert (=> b!2794875 m!3225027))

(declare-fun tp!888722 () Bool)

(declare-fun setRes!24130 () Bool)

(declare-fun e!1764871 () Bool)

(declare-fun b!2794880 () Bool)

(declare-fun e!1764870 () Bool)

(assert (=> b!2794880 (= e!1764870 (and (inv!44029 (_1!19480 (_1!19481 (h!37827 (t!228664 (minValue!4225 (v!34010 (underlying!8135 (v!34011 (underlying!8136 (cache!4015 cacheUp!890))))))))))) e!1764871 tp_is_empty!14183 setRes!24130 tp!888722))))

(declare-fun condSetEmpty!24130 () Bool)

(assert (=> b!2794880 (= condSetEmpty!24130 (= (_2!19481 (h!37827 (t!228664 (minValue!4225 (v!34010 (underlying!8135 (v!34011 (underlying!8136 (cache!4015 cacheUp!890))))))))) ((as const (Array Context!4806 Bool)) false)))))

(declare-fun setIsEmpty!24130 () Bool)

(assert (=> setIsEmpty!24130 setRes!24130))

(declare-fun b!2794881 () Bool)

(declare-fun e!1764869 () Bool)

(declare-fun tp!888724 () Bool)

(assert (=> b!2794881 (= e!1764869 tp!888724)))

(assert (=> b!2794721 (= tp!888624 e!1764870)))

(declare-fun b!2794882 () Bool)

(declare-fun tp!888725 () Bool)

(assert (=> b!2794882 (= e!1764871 tp!888725)))

(declare-fun tp!888723 () Bool)

(declare-fun setNonEmpty!24130 () Bool)

(declare-fun setElem!24130 () Context!4806)

(assert (=> setNonEmpty!24130 (= setRes!24130 (and tp!888723 (inv!44029 setElem!24130) e!1764869))))

(declare-fun setRest!24130 () (InoxSet Context!4806))

(assert (=> setNonEmpty!24130 (= (_2!19481 (h!37827 (t!228664 (minValue!4225 (v!34010 (underlying!8135 (v!34011 (underlying!8136 (cache!4015 cacheUp!890))))))))) ((_ map or) (store ((as const (Array Context!4806 Bool)) false) setElem!24130 true) setRest!24130))))

(assert (= b!2794880 b!2794882))

(assert (= (and b!2794880 condSetEmpty!24130) setIsEmpty!24130))

(assert (= (and b!2794880 (not condSetEmpty!24130)) setNonEmpty!24130))

(assert (= setNonEmpty!24130 b!2794881))

(assert (= (and b!2794721 ((_ is Cons!32407) (t!228664 (minValue!4225 (v!34010 (underlying!8135 (v!34011 (underlying!8136 (cache!4015 cacheUp!890))))))))) b!2794880))

(declare-fun m!3225029 () Bool)

(assert (=> b!2794880 m!3225029))

(declare-fun m!3225031 () Bool)

(assert (=> setNonEmpty!24130 m!3225031))

(declare-fun condSetEmpty!24131 () Bool)

(assert (=> setNonEmpty!24098 (= condSetEmpty!24131 (= setRest!24098 ((as const (Array Context!4806 Bool)) false)))))

(declare-fun setRes!24131 () Bool)

(assert (=> setNonEmpty!24098 (= tp!888545 setRes!24131)))

(declare-fun setIsEmpty!24131 () Bool)

(assert (=> setIsEmpty!24131 setRes!24131))

(declare-fun setElem!24131 () Context!4806)

(declare-fun e!1764872 () Bool)

(declare-fun tp!888727 () Bool)

(declare-fun setNonEmpty!24131 () Bool)

(assert (=> setNonEmpty!24131 (= setRes!24131 (and tp!888727 (inv!44029 setElem!24131) e!1764872))))

(declare-fun setRest!24131 () (InoxSet Context!4806))

(assert (=> setNonEmpty!24131 (= setRest!24098 ((_ map or) (store ((as const (Array Context!4806 Bool)) false) setElem!24131 true) setRest!24131))))

(declare-fun b!2794883 () Bool)

(declare-fun tp!888726 () Bool)

(assert (=> b!2794883 (= e!1764872 tp!888726)))

(assert (= (and setNonEmpty!24098 condSetEmpty!24131) setIsEmpty!24131))

(assert (= (and setNonEmpty!24098 (not condSetEmpty!24131)) setNonEmpty!24131))

(assert (= setNonEmpty!24131 b!2794883))

(declare-fun m!3225033 () Bool)

(assert (=> setNonEmpty!24131 m!3225033))

(declare-fun condSetEmpty!24132 () Bool)

(assert (=> setNonEmpty!24099 (= condSetEmpty!24132 (= setRest!24099 ((as const (Array Context!4806 Bool)) false)))))

(declare-fun setRes!24132 () Bool)

(assert (=> setNonEmpty!24099 (= tp!888550 setRes!24132)))

(declare-fun setIsEmpty!24132 () Bool)

(assert (=> setIsEmpty!24132 setRes!24132))

(declare-fun tp!888729 () Bool)

(declare-fun setNonEmpty!24132 () Bool)

(declare-fun e!1764873 () Bool)

(declare-fun setElem!24132 () Context!4806)

(assert (=> setNonEmpty!24132 (= setRes!24132 (and tp!888729 (inv!44029 setElem!24132) e!1764873))))

(declare-fun setRest!24132 () (InoxSet Context!4806))

(assert (=> setNonEmpty!24132 (= setRest!24099 ((_ map or) (store ((as const (Array Context!4806 Bool)) false) setElem!24132 true) setRest!24132))))

(declare-fun b!2794884 () Bool)

(declare-fun tp!888728 () Bool)

(assert (=> b!2794884 (= e!1764873 tp!888728)))

(assert (= (and setNonEmpty!24099 condSetEmpty!24132) setIsEmpty!24132))

(assert (= (and setNonEmpty!24099 (not condSetEmpty!24132)) setNonEmpty!24132))

(assert (= setNonEmpty!24132 b!2794884))

(declare-fun m!3225035 () Bool)

(assert (=> setNonEmpty!24132 m!3225035))

(declare-fun b!2794885 () Bool)

(declare-fun e!1764874 () Bool)

(declare-fun tp!888730 () Bool)

(declare-fun tp!888731 () Bool)

(assert (=> b!2794885 (= e!1764874 (and tp!888730 tp!888731))))

(assert (=> b!2794698 (= tp!888595 e!1764874)))

(assert (= (and b!2794698 ((_ is Cons!32406) (exprs!2903 setElem!24105))) b!2794885))

(declare-fun b!2794886 () Bool)

(declare-fun e!1764875 () Bool)

(declare-fun tp!888732 () Bool)

(declare-fun tp!888733 () Bool)

(assert (=> b!2794886 (= e!1764875 (and tp!888732 tp!888733))))

(assert (=> b!2794666 (= tp!888554 e!1764875)))

(assert (= (and b!2794666 ((_ is Cons!32406) (exprs!2903 setElem!24099))) b!2794886))

(declare-fun b!2794887 () Bool)

(declare-fun e!1764876 () Bool)

(declare-fun tp!888734 () Bool)

(declare-fun tp!888735 () Bool)

(assert (=> b!2794887 (= e!1764876 (and tp!888734 tp!888735))))

(assert (=> b!2794663 (= tp!888549 e!1764876)))

(assert (= (and b!2794663 ((_ is Cons!32406) (exprs!2903 setElem!24098))) b!2794887))

(declare-fun mapNonEmpty!18058 () Bool)

(declare-fun mapRes!18058 () Bool)

(declare-fun tp!888736 () Bool)

(declare-fun e!1764880 () Bool)

(assert (=> mapNonEmpty!18058 (= mapRes!18058 (and tp!888736 e!1764880))))

(declare-fun mapRest!18058 () (Array (_ BitVec 32) List!32508))

(declare-fun mapKey!18058 () (_ BitVec 32))

(declare-fun mapValue!18058 () List!32508)

(assert (=> mapNonEmpty!18058 (= mapRest!18053 (store mapRest!18058 mapKey!18058 mapValue!18058))))

(declare-fun e!1764882 () Bool)

(declare-fun e!1764881 () Bool)

(declare-fun tp!888739 () Bool)

(declare-fun tp!888744 () Bool)

(declare-fun mapDefault!18058 () List!32508)

(declare-fun b!2794888 () Bool)

(declare-fun setRes!24134 () Bool)

(assert (=> b!2794888 (= e!1764881 (and tp!888739 (inv!44029 (_2!19482 (_1!19483 (h!37828 mapDefault!18058)))) e!1764882 tp_is_empty!14183 setRes!24134 tp!888744))))

(declare-fun condSetEmpty!24134 () Bool)

(assert (=> b!2794888 (= condSetEmpty!24134 (= (_2!19483 (h!37828 mapDefault!18058)) ((as const (Array Context!4806 Bool)) false)))))

(declare-fun setIsEmpty!24133 () Bool)

(assert (=> setIsEmpty!24133 setRes!24134))

(declare-fun setIsEmpty!24134 () Bool)

(declare-fun setRes!24133 () Bool)

(assert (=> setIsEmpty!24134 setRes!24133))

(declare-fun b!2794889 () Bool)

(declare-fun e!1764878 () Bool)

(declare-fun tp!888740 () Bool)

(assert (=> b!2794889 (= e!1764878 tp!888740)))

(declare-fun b!2794890 () Bool)

(declare-fun e!1764879 () Bool)

(declare-fun tp!888743 () Bool)

(assert (=> b!2794890 (= e!1764879 tp!888743)))

(declare-fun tp!888745 () Bool)

(declare-fun setElem!24133 () Context!4806)

(declare-fun setNonEmpty!24133 () Bool)

(assert (=> setNonEmpty!24133 (= setRes!24133 (and tp!888745 (inv!44029 setElem!24133) e!1764878))))

(declare-fun setRest!24134 () (InoxSet Context!4806))

(assert (=> setNonEmpty!24133 (= (_2!19483 (h!37828 mapValue!18058)) ((_ map or) (store ((as const (Array Context!4806 Bool)) false) setElem!24133 true) setRest!24134))))

(declare-fun condMapEmpty!18058 () Bool)

(assert (=> mapNonEmpty!18053 (= condMapEmpty!18058 (= mapRest!18053 ((as const (Array (_ BitVec 32) List!32508)) mapDefault!18058)))))

(assert (=> mapNonEmpty!18053 (= tp!888591 (and e!1764881 mapRes!18058))))

(declare-fun tp!888737 () Bool)

(declare-fun b!2794891 () Bool)

(declare-fun tp!888741 () Bool)

(declare-fun e!1764877 () Bool)

(assert (=> b!2794891 (= e!1764880 (and tp!888737 (inv!44029 (_2!19482 (_1!19483 (h!37828 mapValue!18058)))) e!1764877 tp_is_empty!14183 setRes!24133 tp!888741))))

(declare-fun condSetEmpty!24133 () Bool)

(assert (=> b!2794891 (= condSetEmpty!24133 (= (_2!19483 (h!37828 mapValue!18058)) ((as const (Array Context!4806 Bool)) false)))))

(declare-fun b!2794892 () Bool)

(declare-fun tp!888742 () Bool)

(assert (=> b!2794892 (= e!1764877 tp!888742)))

(declare-fun b!2794893 () Bool)

(declare-fun tp!888738 () Bool)

(assert (=> b!2794893 (= e!1764882 tp!888738)))

(declare-fun mapIsEmpty!18058 () Bool)

(assert (=> mapIsEmpty!18058 mapRes!18058))

(declare-fun setElem!24134 () Context!4806)

(declare-fun setNonEmpty!24134 () Bool)

(declare-fun tp!888746 () Bool)

(assert (=> setNonEmpty!24134 (= setRes!24134 (and tp!888746 (inv!44029 setElem!24134) e!1764879))))

(declare-fun setRest!24133 () (InoxSet Context!4806))

(assert (=> setNonEmpty!24134 (= (_2!19483 (h!37828 mapDefault!18058)) ((_ map or) (store ((as const (Array Context!4806 Bool)) false) setElem!24134 true) setRest!24133))))

(assert (= (and mapNonEmpty!18053 condMapEmpty!18058) mapIsEmpty!18058))

(assert (= (and mapNonEmpty!18053 (not condMapEmpty!18058)) mapNonEmpty!18058))

(assert (= b!2794891 b!2794892))

(assert (= (and b!2794891 condSetEmpty!24133) setIsEmpty!24134))

(assert (= (and b!2794891 (not condSetEmpty!24133)) setNonEmpty!24133))

(assert (= setNonEmpty!24133 b!2794889))

(assert (= (and mapNonEmpty!18058 ((_ is Cons!32408) mapValue!18058)) b!2794891))

(assert (= b!2794888 b!2794893))

(assert (= (and b!2794888 condSetEmpty!24134) setIsEmpty!24133))

(assert (= (and b!2794888 (not condSetEmpty!24134)) setNonEmpty!24134))

(assert (= setNonEmpty!24134 b!2794890))

(assert (= (and mapNonEmpty!18053 ((_ is Cons!32408) mapDefault!18058)) b!2794888))

(declare-fun m!3225037 () Bool)

(assert (=> setNonEmpty!24133 m!3225037))

(declare-fun m!3225039 () Bool)

(assert (=> setNonEmpty!24134 m!3225039))

(declare-fun m!3225041 () Bool)

(assert (=> mapNonEmpty!18058 m!3225041))

(declare-fun m!3225043 () Bool)

(assert (=> b!2794888 m!3225043))

(declare-fun m!3225045 () Bool)

(assert (=> b!2794891 m!3225045))

(declare-fun b!2794894 () Bool)

(declare-fun e!1764883 () Bool)

(declare-fun tp!888747 () Bool)

(declare-fun tp!888748 () Bool)

(assert (=> b!2794894 (= e!1764883 (and tp!888747 tp!888748))))

(assert (=> b!2794682 (= tp!888565 e!1764883)))

(assert (= (and b!2794682 ((_ is Cons!32406) (exprs!2903 (_2!19482 (_1!19483 (h!37828 mapDefault!18050)))))) b!2794894))

(declare-fun condSetEmpty!24135 () Bool)

(assert (=> setNonEmpty!24119 (= condSetEmpty!24135 (= setRest!24119 ((as const (Array Context!4806 Bool)) false)))))

(declare-fun setRes!24135 () Bool)

(assert (=> setNonEmpty!24119 (= tp!888656 setRes!24135)))

(declare-fun setIsEmpty!24135 () Bool)

(assert (=> setIsEmpty!24135 setRes!24135))

(declare-fun setNonEmpty!24135 () Bool)

(declare-fun e!1764884 () Bool)

(declare-fun setElem!24135 () Context!4806)

(declare-fun tp!888750 () Bool)

(assert (=> setNonEmpty!24135 (= setRes!24135 (and tp!888750 (inv!44029 setElem!24135) e!1764884))))

(declare-fun setRest!24135 () (InoxSet Context!4806))

(assert (=> setNonEmpty!24135 (= setRest!24119 ((_ map or) (store ((as const (Array Context!4806 Bool)) false) setElem!24135 true) setRest!24135))))

(declare-fun b!2794895 () Bool)

(declare-fun tp!888749 () Bool)

(assert (=> b!2794895 (= e!1764884 tp!888749)))

(assert (= (and setNonEmpty!24119 condSetEmpty!24135) setIsEmpty!24135))

(assert (= (and setNonEmpty!24119 (not condSetEmpty!24135)) setNonEmpty!24135))

(assert (= setNonEmpty!24135 b!2794895))

(declare-fun m!3225047 () Bool)

(assert (=> setNonEmpty!24135 m!3225047))

(declare-fun b!2794896 () Bool)

(declare-fun e!1764885 () Bool)

(declare-fun tp!888751 () Bool)

(assert (=> b!2794896 (= e!1764885 (and tp_is_empty!14183 tp!888751))))

(assert (=> b!2794679 (= tp!888561 e!1764885)))

(assert (= (and b!2794679 ((_ is Cons!32405) (innerList!10110 (xs!13162 (c!453536 totalInput!758))))) b!2794896))

(declare-fun b!2794897 () Bool)

(declare-fun e!1764886 () Bool)

(declare-fun tp!888752 () Bool)

(declare-fun tp!888753 () Bool)

(assert (=> b!2794897 (= e!1764886 (and tp!888752 tp!888753))))

(assert (=> b!2794745 (= tp!888657 e!1764886)))

(assert (= (and b!2794745 ((_ is Cons!32406) (exprs!2903 setElem!24119))) b!2794897))

(declare-fun e!1764888 () Bool)

(declare-fun b!2794898 () Bool)

(declare-fun tp!888756 () Bool)

(declare-fun tp!888755 () Bool)

(assert (=> b!2794898 (= e!1764888 (and (inv!44023 (left!24540 (left!24540 (c!453536 totalInput!758)))) tp!888755 (inv!44023 (right!24870 (left!24540 (c!453536 totalInput!758)))) tp!888756))))

(declare-fun b!2794900 () Bool)

(declare-fun e!1764887 () Bool)

(declare-fun tp!888754 () Bool)

(assert (=> b!2794900 (= e!1764887 tp!888754)))

(declare-fun b!2794899 () Bool)

(assert (=> b!2794899 (= e!1764888 (and (inv!44030 (xs!13162 (left!24540 (c!453536 totalInput!758)))) e!1764887))))

(assert (=> b!2794677 (= tp!888562 (and (inv!44023 (left!24540 (c!453536 totalInput!758))) e!1764888))))

(assert (= (and b!2794677 ((_ is Node!10050) (left!24540 (c!453536 totalInput!758)))) b!2794898))

(assert (= b!2794899 b!2794900))

(assert (= (and b!2794677 ((_ is Leaf!15311) (left!24540 (c!453536 totalInput!758)))) b!2794899))

(declare-fun m!3225049 () Bool)

(assert (=> b!2794898 m!3225049))

(declare-fun m!3225051 () Bool)

(assert (=> b!2794898 m!3225051))

(declare-fun m!3225053 () Bool)

(assert (=> b!2794899 m!3225053))

(assert (=> b!2794677 m!3224819))

(declare-fun e!1764890 () Bool)

(declare-fun b!2794901 () Bool)

(declare-fun tp!888759 () Bool)

(declare-fun tp!888758 () Bool)

(assert (=> b!2794901 (= e!1764890 (and (inv!44023 (left!24540 (right!24870 (c!453536 totalInput!758)))) tp!888758 (inv!44023 (right!24870 (right!24870 (c!453536 totalInput!758)))) tp!888759))))

(declare-fun b!2794903 () Bool)

(declare-fun e!1764889 () Bool)

(declare-fun tp!888757 () Bool)

(assert (=> b!2794903 (= e!1764889 tp!888757)))

(declare-fun b!2794902 () Bool)

(assert (=> b!2794902 (= e!1764890 (and (inv!44030 (xs!13162 (right!24870 (c!453536 totalInput!758)))) e!1764889))))

(assert (=> b!2794677 (= tp!888563 (and (inv!44023 (right!24870 (c!453536 totalInput!758))) e!1764890))))

(assert (= (and b!2794677 ((_ is Node!10050) (right!24870 (c!453536 totalInput!758)))) b!2794901))

(assert (= b!2794902 b!2794903))

(assert (= (and b!2794677 ((_ is Leaf!15311) (right!24870 (c!453536 totalInput!758)))) b!2794902))

(declare-fun m!3225055 () Bool)

(assert (=> b!2794901 m!3225055))

(declare-fun m!3225057 () Bool)

(assert (=> b!2794901 m!3225057))

(declare-fun m!3225059 () Bool)

(assert (=> b!2794902 m!3225059))

(assert (=> b!2794677 m!3224821))

(declare-fun b!2794904 () Bool)

(declare-fun e!1764891 () Bool)

(declare-fun tp!888760 () Bool)

(assert (=> b!2794904 (= e!1764891 (and tp_is_empty!14183 tp!888760))))

(assert (=> b!2794717 (= tp!888619 e!1764891)))

(assert (= (and b!2794717 ((_ is Cons!32405) (t!228662 (t!228662 testedP!183)))) b!2794904))

(declare-fun b!2794905 () Bool)

(declare-fun e!1764892 () Bool)

(declare-fun tp!888761 () Bool)

(declare-fun tp!888762 () Bool)

(assert (=> b!2794905 (= e!1764892 (and tp!888761 tp!888762))))

(assert (=> b!2794680 (= tp!888568 e!1764892)))

(assert (= (and b!2794680 ((_ is Cons!32406) (exprs!2903 setElem!24100))) b!2794905))

(declare-fun b!2794906 () Bool)

(declare-fun e!1764893 () Bool)

(declare-fun tp!888763 () Bool)

(declare-fun tp!888764 () Bool)

(assert (=> b!2794906 (= e!1764893 (and tp!888763 tp!888764))))

(assert (=> b!2794705 (= tp!888603 e!1764893)))

(assert (= (and b!2794705 ((_ is Cons!32406) (exprs!2903 (_2!19482 (_1!19483 (h!37828 mapValue!18050)))))) b!2794906))

(declare-fun tp!888765 () Bool)

(declare-fun e!1764895 () Bool)

(declare-fun b!2794907 () Bool)

(declare-fun e!1764896 () Bool)

(declare-fun setRes!24136 () Bool)

(assert (=> b!2794907 (= e!1764895 (and (inv!44029 (_1!19480 (_1!19481 (h!37827 (t!228664 mapValue!18049))))) e!1764896 tp_is_empty!14183 setRes!24136 tp!888765))))

(declare-fun condSetEmpty!24136 () Bool)

(assert (=> b!2794907 (= condSetEmpty!24136 (= (_2!19481 (h!37827 (t!228664 mapValue!18049))) ((as const (Array Context!4806 Bool)) false)))))

(declare-fun setIsEmpty!24136 () Bool)

(assert (=> setIsEmpty!24136 setRes!24136))

(declare-fun b!2794908 () Bool)

(declare-fun e!1764894 () Bool)

(declare-fun tp!888767 () Bool)

(assert (=> b!2794908 (= e!1764894 tp!888767)))

(assert (=> b!2794744 (= tp!888655 e!1764895)))

(declare-fun b!2794909 () Bool)

(declare-fun tp!888768 () Bool)

(assert (=> b!2794909 (= e!1764896 tp!888768)))

(declare-fun setElem!24136 () Context!4806)

(declare-fun tp!888766 () Bool)

(declare-fun setNonEmpty!24136 () Bool)

(assert (=> setNonEmpty!24136 (= setRes!24136 (and tp!888766 (inv!44029 setElem!24136) e!1764894))))

(declare-fun setRest!24136 () (InoxSet Context!4806))

(assert (=> setNonEmpty!24136 (= (_2!19481 (h!37827 (t!228664 mapValue!18049))) ((_ map or) (store ((as const (Array Context!4806 Bool)) false) setElem!24136 true) setRest!24136))))

(assert (= b!2794907 b!2794909))

(assert (= (and b!2794907 condSetEmpty!24136) setIsEmpty!24136))

(assert (= (and b!2794907 (not condSetEmpty!24136)) setNonEmpty!24136))

(assert (= setNonEmpty!24136 b!2794908))

(assert (= (and b!2794744 ((_ is Cons!32407) (t!228664 mapValue!18049))) b!2794907))

(declare-fun m!3225061 () Bool)

(assert (=> b!2794907 m!3225061))

(declare-fun m!3225063 () Bool)

(assert (=> setNonEmpty!24136 m!3225063))

(declare-fun condSetEmpty!24137 () Bool)

(assert (=> setNonEmpty!24107 (= condSetEmpty!24137 (= setRest!24107 ((as const (Array Context!4806 Bool)) false)))))

(declare-fun setRes!24137 () Bool)

(assert (=> setNonEmpty!24107 (= tp!888602 setRes!24137)))

(declare-fun setIsEmpty!24137 () Bool)

(assert (=> setIsEmpty!24137 setRes!24137))

(declare-fun e!1764897 () Bool)

(declare-fun setElem!24137 () Context!4806)

(declare-fun setNonEmpty!24137 () Bool)

(declare-fun tp!888770 () Bool)

(assert (=> setNonEmpty!24137 (= setRes!24137 (and tp!888770 (inv!44029 setElem!24137) e!1764897))))

(declare-fun setRest!24137 () (InoxSet Context!4806))

(assert (=> setNonEmpty!24137 (= setRest!24107 ((_ map or) (store ((as const (Array Context!4806 Bool)) false) setElem!24137 true) setRest!24137))))

(declare-fun b!2794910 () Bool)

(declare-fun tp!888769 () Bool)

(assert (=> b!2794910 (= e!1764897 tp!888769)))

(assert (= (and setNonEmpty!24107 condSetEmpty!24137) setIsEmpty!24137))

(assert (= (and setNonEmpty!24107 (not condSetEmpty!24137)) setNonEmpty!24137))

(assert (= setNonEmpty!24137 b!2794910))

(declare-fun m!3225065 () Bool)

(assert (=> setNonEmpty!24137 m!3225065))

(declare-fun b!2794911 () Bool)

(declare-fun e!1764898 () Bool)

(declare-fun tp!888771 () Bool)

(declare-fun tp!888772 () Bool)

(assert (=> b!2794911 (= e!1764898 (and tp!888771 tp!888772))))

(assert (=> b!2794743 (= tp!888651 e!1764898)))

(assert (= (and b!2794743 ((_ is Cons!32406) (exprs!2903 setElem!24118))) b!2794911))

(declare-fun b!2794912 () Bool)

(declare-fun e!1764899 () Bool)

(declare-fun tp!888773 () Bool)

(assert (=> b!2794912 (= e!1764899 (and tp_is_empty!14183 tp!888773))))

(assert (=> b!2794654 (= tp!888534 e!1764899)))

(assert (= (and b!2794654 ((_ is Cons!32405) (t!228662 (t!228662 testedSuffix!143)))) b!2794912))

(declare-fun b!2794914 () Bool)

(declare-fun e!1764900 () Bool)

(declare-fun tp!888776 () Bool)

(declare-fun tp!888777 () Bool)

(assert (=> b!2794914 (= e!1764900 (and tp!888776 tp!888777))))

(assert (=> b!2794704 (= tp!888604 e!1764900)))

(declare-fun b!2794915 () Bool)

(declare-fun tp!888774 () Bool)

(assert (=> b!2794915 (= e!1764900 tp!888774)))

(declare-fun b!2794916 () Bool)

(declare-fun tp!888775 () Bool)

(declare-fun tp!888778 () Bool)

(assert (=> b!2794916 (= e!1764900 (and tp!888775 tp!888778))))

(declare-fun b!2794913 () Bool)

(assert (=> b!2794913 (= e!1764900 tp_is_empty!14183)))

(assert (= (and b!2794704 ((_ is ElementMatch!8185) (_1!19482 (_1!19483 (h!37828 mapValue!18050))))) b!2794913))

(assert (= (and b!2794704 ((_ is Concat!13273) (_1!19482 (_1!19483 (h!37828 mapValue!18050))))) b!2794914))

(assert (= (and b!2794704 ((_ is Star!8185) (_1!19482 (_1!19483 (h!37828 mapValue!18050))))) b!2794915))

(assert (= (and b!2794704 ((_ is Union!8185) (_1!19482 (_1!19483 (h!37828 mapValue!18050))))) b!2794916))

(declare-fun b!2794917 () Bool)

(declare-fun e!1764903 () Bool)

(declare-fun tp!888783 () Bool)

(assert (=> b!2794917 (= e!1764903 tp!888783)))

(declare-fun e!1764902 () Bool)

(declare-fun b!2794918 () Bool)

(declare-fun setRes!24138 () Bool)

(declare-fun tp!888781 () Bool)

(declare-fun e!1764901 () Bool)

(declare-fun tp!888782 () Bool)

(assert (=> b!2794918 (= e!1764901 (and tp!888781 (inv!44029 (_2!19482 (_1!19483 (h!37828 (t!228665 mapValue!18050))))) e!1764902 tp_is_empty!14183 setRes!24138 tp!888782))))

(declare-fun condSetEmpty!24138 () Bool)

(assert (=> b!2794918 (= condSetEmpty!24138 (= (_2!19483 (h!37828 (t!228665 mapValue!18050))) ((as const (Array Context!4806 Bool)) false)))))

(declare-fun setElem!24138 () Context!4806)

(declare-fun setNonEmpty!24138 () Bool)

(declare-fun tp!888779 () Bool)

(assert (=> setNonEmpty!24138 (= setRes!24138 (and tp!888779 (inv!44029 setElem!24138) e!1764903))))

(declare-fun setRest!24138 () (InoxSet Context!4806))

(assert (=> setNonEmpty!24138 (= (_2!19483 (h!37828 (t!228665 mapValue!18050))) ((_ map or) (store ((as const (Array Context!4806 Bool)) false) setElem!24138 true) setRest!24138))))

(declare-fun b!2794919 () Bool)

(declare-fun tp!888780 () Bool)

(assert (=> b!2794919 (= e!1764902 tp!888780)))

(declare-fun setIsEmpty!24138 () Bool)

(assert (=> setIsEmpty!24138 setRes!24138))

(assert (=> b!2794704 (= tp!888605 e!1764901)))

(assert (= b!2794918 b!2794919))

(assert (= (and b!2794918 condSetEmpty!24138) setIsEmpty!24138))

(assert (= (and b!2794918 (not condSetEmpty!24138)) setNonEmpty!24138))

(assert (= setNonEmpty!24138 b!2794917))

(assert (= (and b!2794704 ((_ is Cons!32408) (t!228665 mapValue!18050))) b!2794918))

(declare-fun m!3225067 () Bool)

(assert (=> b!2794918 m!3225067))

(declare-fun m!3225069 () Bool)

(assert (=> setNonEmpty!24138 m!3225069))

(declare-fun condSetEmpty!24139 () Bool)

(assert (=> setNonEmpty!24111 (= condSetEmpty!24139 (= setRest!24111 ((as const (Array Context!4806 Bool)) false)))))

(declare-fun setRes!24139 () Bool)

(assert (=> setNonEmpty!24111 (= tp!888621 setRes!24139)))

(declare-fun setIsEmpty!24139 () Bool)

(assert (=> setIsEmpty!24139 setRes!24139))

(declare-fun e!1764904 () Bool)

(declare-fun setElem!24139 () Context!4806)

(declare-fun tp!888785 () Bool)

(declare-fun setNonEmpty!24139 () Bool)

(assert (=> setNonEmpty!24139 (= setRes!24139 (and tp!888785 (inv!44029 setElem!24139) e!1764904))))

(declare-fun setRest!24139 () (InoxSet Context!4806))

(assert (=> setNonEmpty!24139 (= setRest!24111 ((_ map or) (store ((as const (Array Context!4806 Bool)) false) setElem!24139 true) setRest!24139))))

(declare-fun b!2794920 () Bool)

(declare-fun tp!888784 () Bool)

(assert (=> b!2794920 (= e!1764904 tp!888784)))

(assert (= (and setNonEmpty!24111 condSetEmpty!24139) setIsEmpty!24139))

(assert (= (and setNonEmpty!24111 (not condSetEmpty!24139)) setNonEmpty!24139))

(assert (= setNonEmpty!24139 b!2794920))

(declare-fun m!3225071 () Bool)

(assert (=> setNonEmpty!24139 m!3225071))

(declare-fun b!2794921 () Bool)

(declare-fun e!1764905 () Bool)

(declare-fun tp!888786 () Bool)

(declare-fun tp!888787 () Bool)

(assert (=> b!2794921 (= e!1764905 (and tp!888786 tp!888787))))

(assert (=> b!2794741 (= tp!888648 e!1764905)))

(assert (= (and b!2794741 ((_ is Cons!32406) (exprs!2903 (_1!19480 (_1!19481 (h!37827 mapDefault!18056)))))) b!2794921))

(declare-fun b!2794922 () Bool)

(declare-fun e!1764906 () Bool)

(declare-fun tp!888788 () Bool)

(declare-fun tp!888789 () Bool)

(assert (=> b!2794922 (= e!1764906 (and tp!888788 tp!888789))))

(assert (=> b!2794719 (= tp!888622 e!1764906)))

(assert (= (and b!2794719 ((_ is Cons!32406) (exprs!2903 setElem!24111))) b!2794922))

(declare-fun condSetEmpty!24140 () Bool)

(assert (=> setNonEmpty!24110 (= condSetEmpty!24140 (= setRest!24110 ((as const (Array Context!4806 Bool)) false)))))

(declare-fun setRes!24140 () Bool)

(assert (=> setNonEmpty!24110 (= tp!888616 setRes!24140)))

(declare-fun setIsEmpty!24140 () Bool)

(assert (=> setIsEmpty!24140 setRes!24140))

(declare-fun setNonEmpty!24140 () Bool)

(declare-fun e!1764907 () Bool)

(declare-fun setElem!24140 () Context!4806)

(declare-fun tp!888791 () Bool)

(assert (=> setNonEmpty!24140 (= setRes!24140 (and tp!888791 (inv!44029 setElem!24140) e!1764907))))

(declare-fun setRest!24140 () (InoxSet Context!4806))

(assert (=> setNonEmpty!24140 (= setRest!24110 ((_ map or) (store ((as const (Array Context!4806 Bool)) false) setElem!24140 true) setRest!24140))))

(declare-fun b!2794923 () Bool)

(declare-fun tp!888790 () Bool)

(assert (=> b!2794923 (= e!1764907 tp!888790)))

(assert (= (and setNonEmpty!24110 condSetEmpty!24140) setIsEmpty!24140))

(assert (= (and setNonEmpty!24110 (not condSetEmpty!24140)) setNonEmpty!24140))

(assert (= setNonEmpty!24140 b!2794923))

(declare-fun m!3225073 () Bool)

(assert (=> setNonEmpty!24140 m!3225073))

(declare-fun condSetEmpty!24141 () Bool)

(assert (=> setNonEmpty!24117 (= condSetEmpty!24141 (= setRest!24117 ((as const (Array Context!4806 Bool)) false)))))

(declare-fun setRes!24141 () Bool)

(assert (=> setNonEmpty!24117 (= tp!888654 setRes!24141)))

(declare-fun setIsEmpty!24141 () Bool)

(assert (=> setIsEmpty!24141 setRes!24141))

(declare-fun e!1764908 () Bool)

(declare-fun setElem!24141 () Context!4806)

(declare-fun setNonEmpty!24141 () Bool)

(declare-fun tp!888793 () Bool)

(assert (=> setNonEmpty!24141 (= setRes!24141 (and tp!888793 (inv!44029 setElem!24141) e!1764908))))

(declare-fun setRest!24141 () (InoxSet Context!4806))

(assert (=> setNonEmpty!24141 (= setRest!24117 ((_ map or) (store ((as const (Array Context!4806 Bool)) false) setElem!24141 true) setRest!24141))))

(declare-fun b!2794924 () Bool)

(declare-fun tp!888792 () Bool)

(assert (=> b!2794924 (= e!1764908 tp!888792)))

(assert (= (and setNonEmpty!24117 condSetEmpty!24141) setIsEmpty!24141))

(assert (= (and setNonEmpty!24117 (not condSetEmpty!24141)) setNonEmpty!24141))

(assert (= setNonEmpty!24141 b!2794924))

(declare-fun m!3225075 () Bool)

(assert (=> setNonEmpty!24141 m!3225075))

(declare-fun b!2794925 () Bool)

(declare-fun e!1764909 () Bool)

(declare-fun tp!888794 () Bool)

(declare-fun tp!888795 () Bool)

(assert (=> b!2794925 (= e!1764909 (and tp!888794 tp!888795))))

(assert (=> b!2794723 (= tp!888627 e!1764909)))

(assert (= (and b!2794723 ((_ is Cons!32406) (exprs!2903 (_1!19480 (_1!19481 (h!37827 (minValue!4225 (v!34010 (underlying!8135 (v!34011 (underlying!8136 (cache!4015 cacheUp!890)))))))))))) b!2794925))

(declare-fun tp!888796 () Bool)

(declare-fun setRes!24142 () Bool)

(declare-fun e!1764912 () Bool)

(declare-fun b!2794926 () Bool)

(declare-fun e!1764911 () Bool)

(assert (=> b!2794926 (= e!1764911 (and (inv!44029 (_1!19480 (_1!19481 (h!37827 (t!228664 (zeroValue!4225 (v!34010 (underlying!8135 (v!34011 (underlying!8136 (cache!4015 cacheUp!890))))))))))) e!1764912 tp_is_empty!14183 setRes!24142 tp!888796))))

(declare-fun condSetEmpty!24142 () Bool)

(assert (=> b!2794926 (= condSetEmpty!24142 (= (_2!19481 (h!37827 (t!228664 (zeroValue!4225 (v!34010 (underlying!8135 (v!34011 (underlying!8136 (cache!4015 cacheUp!890))))))))) ((as const (Array Context!4806 Bool)) false)))))

(declare-fun setIsEmpty!24142 () Bool)

(assert (=> setIsEmpty!24142 setRes!24142))

(declare-fun b!2794927 () Bool)

(declare-fun e!1764910 () Bool)

(declare-fun tp!888798 () Bool)

(assert (=> b!2794927 (= e!1764910 tp!888798)))

(assert (=> b!2794718 (= tp!888620 e!1764911)))

(declare-fun b!2794928 () Bool)

(declare-fun tp!888799 () Bool)

(assert (=> b!2794928 (= e!1764912 tp!888799)))

(declare-fun tp!888797 () Bool)

(declare-fun setElem!24142 () Context!4806)

(declare-fun setNonEmpty!24142 () Bool)

(assert (=> setNonEmpty!24142 (= setRes!24142 (and tp!888797 (inv!44029 setElem!24142) e!1764910))))

(declare-fun setRest!24142 () (InoxSet Context!4806))

(assert (=> setNonEmpty!24142 (= (_2!19481 (h!37827 (t!228664 (zeroValue!4225 (v!34010 (underlying!8135 (v!34011 (underlying!8136 (cache!4015 cacheUp!890))))))))) ((_ map or) (store ((as const (Array Context!4806 Bool)) false) setElem!24142 true) setRest!24142))))

(assert (= b!2794926 b!2794928))

(assert (= (and b!2794926 condSetEmpty!24142) setIsEmpty!24142))

(assert (= (and b!2794926 (not condSetEmpty!24142)) setNonEmpty!24142))

(assert (= setNonEmpty!24142 b!2794927))

(assert (= (and b!2794718 ((_ is Cons!32407) (t!228664 (zeroValue!4225 (v!34010 (underlying!8135 (v!34011 (underlying!8136 (cache!4015 cacheUp!890))))))))) b!2794926))

(declare-fun m!3225077 () Bool)

(assert (=> b!2794926 m!3225077))

(declare-fun m!3225079 () Bool)

(assert (=> setNonEmpty!24142 m!3225079))

(declare-fun b!2794929 () Bool)

(declare-fun e!1764913 () Bool)

(declare-fun tp!888800 () Bool)

(declare-fun tp!888801 () Bool)

(assert (=> b!2794929 (= e!1764913 (and tp!888800 tp!888801))))

(assert (=> b!2794715 (= tp!888617 e!1764913)))

(assert (= (and b!2794715 ((_ is Cons!32406) (exprs!2903 setElem!24110))) b!2794929))

(declare-fun b!2794930 () Bool)

(declare-fun e!1764914 () Bool)

(declare-fun tp!888802 () Bool)

(declare-fun tp!888803 () Bool)

(assert (=> b!2794930 (= e!1764914 (and tp!888802 tp!888803))))

(assert (=> b!2794701 (= tp!888597 e!1764914)))

(assert (= (and b!2794701 ((_ is Cons!32406) (exprs!2903 (_2!19482 (_1!19483 (h!37828 mapValue!18053)))))) b!2794930))

(declare-fun b!2794931 () Bool)

(declare-fun e!1764915 () Bool)

(declare-fun tp!888804 () Bool)

(declare-fun tp!888805 () Bool)

(assert (=> b!2794931 (= e!1764915 (and tp!888804 tp!888805))))

(assert (=> b!2794738 (= tp!888649 e!1764915)))

(assert (= (and b!2794738 ((_ is Cons!32406) (exprs!2903 setElem!24117))) b!2794931))

(declare-fun b!2794932 () Bool)

(declare-fun e!1764916 () Bool)

(declare-fun tp!888806 () Bool)

(declare-fun tp!888807 () Bool)

(assert (=> b!2794932 (= e!1764916 (and tp!888806 tp!888807))))

(assert (=> b!2794668 (= tp!888551 e!1764916)))

(assert (= (and b!2794668 ((_ is Cons!32406) (exprs!2903 (_2!19482 (_1!19483 (h!37828 (minValue!4226 (v!34012 (underlying!8137 (v!34013 (underlying!8138 (cache!4016 cacheDown!1009)))))))))))) b!2794932))

(declare-fun b!2794933 () Bool)

(declare-fun e!1764917 () Bool)

(declare-fun tp!888808 () Bool)

(declare-fun tp!888809 () Bool)

(assert (=> b!2794933 (= e!1764917 (and tp!888808 tp!888809))))

(assert (=> b!2794665 (= tp!888546 e!1764917)))

(assert (= (and b!2794665 ((_ is Cons!32406) (exprs!2903 (_2!19482 (_1!19483 (h!37828 (zeroValue!4226 (v!34012 (underlying!8137 (v!34013 (underlying!8138 (cache!4016 cacheDown!1009)))))))))))) b!2794933))

(declare-fun e!1764919 () Bool)

(declare-fun tp!888810 () Bool)

(declare-fun setRes!24143 () Bool)

(declare-fun b!2794934 () Bool)

(declare-fun e!1764920 () Bool)

(assert (=> b!2794934 (= e!1764919 (and (inv!44029 (_1!19480 (_1!19481 (h!37827 (t!228664 mapDefault!18049))))) e!1764920 tp_is_empty!14183 setRes!24143 tp!888810))))

(declare-fun condSetEmpty!24143 () Bool)

(assert (=> b!2794934 (= condSetEmpty!24143 (= (_2!19481 (h!37827 (t!228664 mapDefault!18049))) ((as const (Array Context!4806 Bool)) false)))))

(declare-fun setIsEmpty!24143 () Bool)

(assert (=> setIsEmpty!24143 setRes!24143))

(declare-fun b!2794935 () Bool)

(declare-fun e!1764918 () Bool)

(declare-fun tp!888812 () Bool)

(assert (=> b!2794935 (= e!1764918 tp!888812)))

(assert (=> b!2794714 (= tp!888615 e!1764919)))

(declare-fun b!2794936 () Bool)

(declare-fun tp!888813 () Bool)

(assert (=> b!2794936 (= e!1764920 tp!888813)))

(declare-fun tp!888811 () Bool)

(declare-fun setElem!24143 () Context!4806)

(declare-fun setNonEmpty!24143 () Bool)

(assert (=> setNonEmpty!24143 (= setRes!24143 (and tp!888811 (inv!44029 setElem!24143) e!1764918))))

(declare-fun setRest!24143 () (InoxSet Context!4806))

(assert (=> setNonEmpty!24143 (= (_2!19481 (h!37827 (t!228664 mapDefault!18049))) ((_ map or) (store ((as const (Array Context!4806 Bool)) false) setElem!24143 true) setRest!24143))))

(assert (= b!2794934 b!2794936))

(assert (= (and b!2794934 condSetEmpty!24143) setIsEmpty!24143))

(assert (= (and b!2794934 (not condSetEmpty!24143)) setNonEmpty!24143))

(assert (= setNonEmpty!24143 b!2794935))

(assert (= (and b!2794714 ((_ is Cons!32407) (t!228664 mapDefault!18049))) b!2794934))

(declare-fun m!3225081 () Bool)

(assert (=> b!2794934 m!3225081))

(declare-fun m!3225083 () Bool)

(assert (=> setNonEmpty!24143 m!3225083))

(declare-fun condSetEmpty!24144 () Bool)

(assert (=> setNonEmpty!24105 (= condSetEmpty!24144 (= setRest!24106 ((as const (Array Context!4806 Bool)) false)))))

(declare-fun setRes!24144 () Bool)

(assert (=> setNonEmpty!24105 (= tp!888600 setRes!24144)))

(declare-fun setIsEmpty!24144 () Bool)

(assert (=> setIsEmpty!24144 setRes!24144))

(declare-fun tp!888815 () Bool)

(declare-fun setElem!24144 () Context!4806)

(declare-fun setNonEmpty!24144 () Bool)

(declare-fun e!1764921 () Bool)

(assert (=> setNonEmpty!24144 (= setRes!24144 (and tp!888815 (inv!44029 setElem!24144) e!1764921))))

(declare-fun setRest!24144 () (InoxSet Context!4806))

(assert (=> setNonEmpty!24144 (= setRest!24106 ((_ map or) (store ((as const (Array Context!4806 Bool)) false) setElem!24144 true) setRest!24144))))

(declare-fun b!2794937 () Bool)

(declare-fun tp!888814 () Bool)

(assert (=> b!2794937 (= e!1764921 tp!888814)))

(assert (= (and setNonEmpty!24105 condSetEmpty!24144) setIsEmpty!24144))

(assert (= (and setNonEmpty!24105 (not condSetEmpty!24144)) setNonEmpty!24144))

(assert (= setNonEmpty!24144 b!2794937))

(declare-fun m!3225085 () Bool)

(assert (=> setNonEmpty!24144 m!3225085))

(declare-fun b!2794938 () Bool)

(declare-fun e!1764922 () Bool)

(declare-fun tp!888816 () Bool)

(declare-fun tp!888817 () Bool)

(assert (=> b!2794938 (= e!1764922 (and tp!888816 tp!888817))))

(assert (=> b!2794699 (= tp!888598 e!1764922)))

(assert (= (and b!2794699 ((_ is Cons!32406) (exprs!2903 setElem!24106))) b!2794938))

(declare-fun b!2794940 () Bool)

(declare-fun e!1764923 () Bool)

(declare-fun tp!888820 () Bool)

(declare-fun tp!888821 () Bool)

(assert (=> b!2794940 (= e!1764923 (and tp!888820 tp!888821))))

(assert (=> b!2794664 (= tp!888547 e!1764923)))

(declare-fun b!2794941 () Bool)

(declare-fun tp!888818 () Bool)

(assert (=> b!2794941 (= e!1764923 tp!888818)))

(declare-fun b!2794942 () Bool)

(declare-fun tp!888819 () Bool)

(declare-fun tp!888822 () Bool)

(assert (=> b!2794942 (= e!1764923 (and tp!888819 tp!888822))))

(declare-fun b!2794939 () Bool)

(assert (=> b!2794939 (= e!1764923 tp_is_empty!14183)))

(assert (= (and b!2794664 ((_ is ElementMatch!8185) (_1!19482 (_1!19483 (h!37828 (zeroValue!4226 (v!34012 (underlying!8137 (v!34013 (underlying!8138 (cache!4016 cacheDown!1009))))))))))) b!2794939))

(assert (= (and b!2794664 ((_ is Concat!13273) (_1!19482 (_1!19483 (h!37828 (zeroValue!4226 (v!34012 (underlying!8137 (v!34013 (underlying!8138 (cache!4016 cacheDown!1009))))))))))) b!2794940))

(assert (= (and b!2794664 ((_ is Star!8185) (_1!19482 (_1!19483 (h!37828 (zeroValue!4226 (v!34012 (underlying!8137 (v!34013 (underlying!8138 (cache!4016 cacheDown!1009))))))))))) b!2794941))

(assert (= (and b!2794664 ((_ is Union!8185) (_1!19482 (_1!19483 (h!37828 (zeroValue!4226 (v!34012 (underlying!8137 (v!34013 (underlying!8138 (cache!4016 cacheDown!1009))))))))))) b!2794942))

(declare-fun b!2794943 () Bool)

(declare-fun e!1764926 () Bool)

(declare-fun tp!888827 () Bool)

(assert (=> b!2794943 (= e!1764926 tp!888827)))

(declare-fun tp!888826 () Bool)

(declare-fun e!1764925 () Bool)

(declare-fun b!2794944 () Bool)

(declare-fun e!1764924 () Bool)

(declare-fun setRes!24145 () Bool)

(declare-fun tp!888825 () Bool)

(assert (=> b!2794944 (= e!1764924 (and tp!888825 (inv!44029 (_2!19482 (_1!19483 (h!37828 (t!228665 (zeroValue!4226 (v!34012 (underlying!8137 (v!34013 (underlying!8138 (cache!4016 cacheDown!1009))))))))))) e!1764925 tp_is_empty!14183 setRes!24145 tp!888826))))

(declare-fun condSetEmpty!24145 () Bool)

(assert (=> b!2794944 (= condSetEmpty!24145 (= (_2!19483 (h!37828 (t!228665 (zeroValue!4226 (v!34012 (underlying!8137 (v!34013 (underlying!8138 (cache!4016 cacheDown!1009))))))))) ((as const (Array Context!4806 Bool)) false)))))

(declare-fun setElem!24145 () Context!4806)

(declare-fun setNonEmpty!24145 () Bool)

(declare-fun tp!888823 () Bool)

(assert (=> setNonEmpty!24145 (= setRes!24145 (and tp!888823 (inv!44029 setElem!24145) e!1764926))))

(declare-fun setRest!24145 () (InoxSet Context!4806))

(assert (=> setNonEmpty!24145 (= (_2!19483 (h!37828 (t!228665 (zeroValue!4226 (v!34012 (underlying!8137 (v!34013 (underlying!8138 (cache!4016 cacheDown!1009))))))))) ((_ map or) (store ((as const (Array Context!4806 Bool)) false) setElem!24145 true) setRest!24145))))

(declare-fun b!2794945 () Bool)

(declare-fun tp!888824 () Bool)

(assert (=> b!2794945 (= e!1764925 tp!888824)))

(declare-fun setIsEmpty!24145 () Bool)

(assert (=> setIsEmpty!24145 setRes!24145))

(assert (=> b!2794664 (= tp!888548 e!1764924)))

(assert (= b!2794944 b!2794945))

(assert (= (and b!2794944 condSetEmpty!24145) setIsEmpty!24145))

(assert (= (and b!2794944 (not condSetEmpty!24145)) setNonEmpty!24145))

(assert (= setNonEmpty!24145 b!2794943))

(assert (= (and b!2794664 ((_ is Cons!32408) (t!228665 (zeroValue!4226 (v!34012 (underlying!8137 (v!34013 (underlying!8138 (cache!4016 cacheDown!1009))))))))) b!2794944))

(declare-fun m!3225087 () Bool)

(assert (=> b!2794944 m!3225087))

(declare-fun m!3225089 () Bool)

(assert (=> setNonEmpty!24145 m!3225089))

(declare-fun b!2794947 () Bool)

(declare-fun e!1764927 () Bool)

(declare-fun tp!888830 () Bool)

(declare-fun tp!888831 () Bool)

(assert (=> b!2794947 (= e!1764927 (and tp!888830 tp!888831))))

(assert (=> b!2794667 (= tp!888552 e!1764927)))

(declare-fun b!2794948 () Bool)

(declare-fun tp!888828 () Bool)

(assert (=> b!2794948 (= e!1764927 tp!888828)))

(declare-fun b!2794949 () Bool)

(declare-fun tp!888829 () Bool)

(declare-fun tp!888832 () Bool)

(assert (=> b!2794949 (= e!1764927 (and tp!888829 tp!888832))))

(declare-fun b!2794946 () Bool)

(assert (=> b!2794946 (= e!1764927 tp_is_empty!14183)))

(assert (= (and b!2794667 ((_ is ElementMatch!8185) (_1!19482 (_1!19483 (h!37828 (minValue!4226 (v!34012 (underlying!8137 (v!34013 (underlying!8138 (cache!4016 cacheDown!1009))))))))))) b!2794946))

(assert (= (and b!2794667 ((_ is Concat!13273) (_1!19482 (_1!19483 (h!37828 (minValue!4226 (v!34012 (underlying!8137 (v!34013 (underlying!8138 (cache!4016 cacheDown!1009))))))))))) b!2794947))

(assert (= (and b!2794667 ((_ is Star!8185) (_1!19482 (_1!19483 (h!37828 (minValue!4226 (v!34012 (underlying!8137 (v!34013 (underlying!8138 (cache!4016 cacheDown!1009))))))))))) b!2794948))

(assert (= (and b!2794667 ((_ is Union!8185) (_1!19482 (_1!19483 (h!37828 (minValue!4226 (v!34012 (underlying!8137 (v!34013 (underlying!8138 (cache!4016 cacheDown!1009))))))))))) b!2794949))

(declare-fun b!2794950 () Bool)

(declare-fun e!1764930 () Bool)

(declare-fun tp!888837 () Bool)

(assert (=> b!2794950 (= e!1764930 tp!888837)))

(declare-fun b!2794951 () Bool)

(declare-fun tp!888836 () Bool)

(declare-fun setRes!24146 () Bool)

(declare-fun e!1764928 () Bool)

(declare-fun e!1764929 () Bool)

(declare-fun tp!888835 () Bool)

(assert (=> b!2794951 (= e!1764928 (and tp!888835 (inv!44029 (_2!19482 (_1!19483 (h!37828 (t!228665 (minValue!4226 (v!34012 (underlying!8137 (v!34013 (underlying!8138 (cache!4016 cacheDown!1009))))))))))) e!1764929 tp_is_empty!14183 setRes!24146 tp!888836))))

(declare-fun condSetEmpty!24146 () Bool)

(assert (=> b!2794951 (= condSetEmpty!24146 (= (_2!19483 (h!37828 (t!228665 (minValue!4226 (v!34012 (underlying!8137 (v!34013 (underlying!8138 (cache!4016 cacheDown!1009))))))))) ((as const (Array Context!4806 Bool)) false)))))

(declare-fun tp!888833 () Bool)

(declare-fun setElem!24146 () Context!4806)

(declare-fun setNonEmpty!24146 () Bool)

(assert (=> setNonEmpty!24146 (= setRes!24146 (and tp!888833 (inv!44029 setElem!24146) e!1764930))))

(declare-fun setRest!24146 () (InoxSet Context!4806))

(assert (=> setNonEmpty!24146 (= (_2!19483 (h!37828 (t!228665 (minValue!4226 (v!34012 (underlying!8137 (v!34013 (underlying!8138 (cache!4016 cacheDown!1009))))))))) ((_ map or) (store ((as const (Array Context!4806 Bool)) false) setElem!24146 true) setRest!24146))))

(declare-fun b!2794952 () Bool)

(declare-fun tp!888834 () Bool)

(assert (=> b!2794952 (= e!1764929 tp!888834)))

(declare-fun setIsEmpty!24146 () Bool)

(assert (=> setIsEmpty!24146 setRes!24146))

(assert (=> b!2794667 (= tp!888553 e!1764928)))

(assert (= b!2794951 b!2794952))

(assert (= (and b!2794951 condSetEmpty!24146) setIsEmpty!24146))

(assert (= (and b!2794951 (not condSetEmpty!24146)) setNonEmpty!24146))

(assert (= setNonEmpty!24146 b!2794950))

(assert (= (and b!2794667 ((_ is Cons!32408) (t!228665 (minValue!4226 (v!34012 (underlying!8137 (v!34013 (underlying!8138 (cache!4016 cacheDown!1009))))))))) b!2794951))

(declare-fun m!3225091 () Bool)

(assert (=> b!2794951 m!3225091))

(declare-fun m!3225093 () Bool)

(assert (=> setNonEmpty!24146 m!3225093))

(declare-fun b!2794954 () Bool)

(declare-fun e!1764931 () Bool)

(declare-fun tp!888840 () Bool)

(declare-fun tp!888841 () Bool)

(assert (=> b!2794954 (= e!1764931 (and tp!888840 tp!888841))))

(assert (=> b!2794697 (= tp!888594 e!1764931)))

(declare-fun b!2794955 () Bool)

(declare-fun tp!888838 () Bool)

(assert (=> b!2794955 (= e!1764931 tp!888838)))

(declare-fun b!2794956 () Bool)

(declare-fun tp!888839 () Bool)

(declare-fun tp!888842 () Bool)

(assert (=> b!2794956 (= e!1764931 (and tp!888839 tp!888842))))

(declare-fun b!2794953 () Bool)

(assert (=> b!2794953 (= e!1764931 tp_is_empty!14183)))

(assert (= (and b!2794697 ((_ is ElementMatch!8185) (_1!19482 (_1!19483 (h!37828 mapDefault!18053))))) b!2794953))

(assert (= (and b!2794697 ((_ is Concat!13273) (_1!19482 (_1!19483 (h!37828 mapDefault!18053))))) b!2794954))

(assert (= (and b!2794697 ((_ is Star!8185) (_1!19482 (_1!19483 (h!37828 mapDefault!18053))))) b!2794955))

(assert (= (and b!2794697 ((_ is Union!8185) (_1!19482 (_1!19483 (h!37828 mapDefault!18053))))) b!2794956))

(declare-fun b!2794957 () Bool)

(declare-fun e!1764934 () Bool)

(declare-fun tp!888847 () Bool)

(assert (=> b!2794957 (= e!1764934 tp!888847)))

(declare-fun e!1764933 () Bool)

(declare-fun e!1764932 () Bool)

(declare-fun tp!888845 () Bool)

(declare-fun setRes!24147 () Bool)

(declare-fun tp!888846 () Bool)

(declare-fun b!2794958 () Bool)

(assert (=> b!2794958 (= e!1764932 (and tp!888845 (inv!44029 (_2!19482 (_1!19483 (h!37828 (t!228665 mapDefault!18053))))) e!1764933 tp_is_empty!14183 setRes!24147 tp!888846))))

(declare-fun condSetEmpty!24147 () Bool)

(assert (=> b!2794958 (= condSetEmpty!24147 (= (_2!19483 (h!37828 (t!228665 mapDefault!18053))) ((as const (Array Context!4806 Bool)) false)))))

(declare-fun setElem!24147 () Context!4806)

(declare-fun tp!888843 () Bool)

(declare-fun setNonEmpty!24147 () Bool)

(assert (=> setNonEmpty!24147 (= setRes!24147 (and tp!888843 (inv!44029 setElem!24147) e!1764934))))

(declare-fun setRest!24147 () (InoxSet Context!4806))

(assert (=> setNonEmpty!24147 (= (_2!19483 (h!37828 (t!228665 mapDefault!18053))) ((_ map or) (store ((as const (Array Context!4806 Bool)) false) setElem!24147 true) setRest!24147))))

(declare-fun b!2794959 () Bool)

(declare-fun tp!888844 () Bool)

(assert (=> b!2794959 (= e!1764933 tp!888844)))

(declare-fun setIsEmpty!24147 () Bool)

(assert (=> setIsEmpty!24147 setRes!24147))

(assert (=> b!2794697 (= tp!888599 e!1764932)))

(assert (= b!2794958 b!2794959))

(assert (= (and b!2794958 condSetEmpty!24147) setIsEmpty!24147))

(assert (= (and b!2794958 (not condSetEmpty!24147)) setNonEmpty!24147))

(assert (= setNonEmpty!24147 b!2794957))

(assert (= (and b!2794697 ((_ is Cons!32408) (t!228665 mapDefault!18053))) b!2794958))

(declare-fun m!3225095 () Bool)

(assert (=> b!2794958 m!3225095))

(declare-fun m!3225097 () Bool)

(assert (=> setNonEmpty!24147 m!3225097))

(declare-fun condSetEmpty!24148 () Bool)

(assert (=> setNonEmpty!24100 (= condSetEmpty!24148 (= setRest!24100 ((as const (Array Context!4806 Bool)) false)))))

(declare-fun setRes!24148 () Bool)

(assert (=> setNonEmpty!24100 (= tp!888564 setRes!24148)))

(declare-fun setIsEmpty!24148 () Bool)

(assert (=> setIsEmpty!24148 setRes!24148))

(declare-fun setElem!24148 () Context!4806)

(declare-fun tp!888849 () Bool)

(declare-fun e!1764935 () Bool)

(declare-fun setNonEmpty!24148 () Bool)

(assert (=> setNonEmpty!24148 (= setRes!24148 (and tp!888849 (inv!44029 setElem!24148) e!1764935))))

(declare-fun setRest!24148 () (InoxSet Context!4806))

(assert (=> setNonEmpty!24148 (= setRest!24100 ((_ map or) (store ((as const (Array Context!4806 Bool)) false) setElem!24148 true) setRest!24148))))

(declare-fun b!2794960 () Bool)

(declare-fun tp!888848 () Bool)

(assert (=> b!2794960 (= e!1764935 tp!888848)))

(assert (= (and setNonEmpty!24100 condSetEmpty!24148) setIsEmpty!24148))

(assert (= (and setNonEmpty!24100 (not condSetEmpty!24148)) setNonEmpty!24148))

(assert (= setNonEmpty!24148 b!2794960))

(declare-fun m!3225099 () Bool)

(assert (=> setNonEmpty!24148 m!3225099))

(declare-fun b!2794961 () Bool)

(declare-fun e!1764936 () Bool)

(declare-fun tp!888850 () Bool)

(declare-fun tp!888851 () Bool)

(assert (=> b!2794961 (= e!1764936 (and tp!888850 tp!888851))))

(assert (=> b!2794746 (= tp!888658 e!1764936)))

(assert (= (and b!2794746 ((_ is Cons!32406) (exprs!2903 (_1!19480 (_1!19481 (h!37827 mapValue!18049)))))) b!2794961))

(declare-fun b!2794963 () Bool)

(declare-fun e!1764937 () Bool)

(declare-fun tp!888854 () Bool)

(declare-fun tp!888855 () Bool)

(assert (=> b!2794963 (= e!1764937 (and tp!888854 tp!888855))))

(assert (=> b!2794681 (= tp!888566 e!1764937)))

(declare-fun b!2794964 () Bool)

(declare-fun tp!888852 () Bool)

(assert (=> b!2794964 (= e!1764937 tp!888852)))

(declare-fun b!2794965 () Bool)

(declare-fun tp!888853 () Bool)

(declare-fun tp!888856 () Bool)

(assert (=> b!2794965 (= e!1764937 (and tp!888853 tp!888856))))

(declare-fun b!2794962 () Bool)

(assert (=> b!2794962 (= e!1764937 tp_is_empty!14183)))

(assert (= (and b!2794681 ((_ is ElementMatch!8185) (_1!19482 (_1!19483 (h!37828 mapDefault!18050))))) b!2794962))

(assert (= (and b!2794681 ((_ is Concat!13273) (_1!19482 (_1!19483 (h!37828 mapDefault!18050))))) b!2794963))

(assert (= (and b!2794681 ((_ is Star!8185) (_1!19482 (_1!19483 (h!37828 mapDefault!18050))))) b!2794964))

(assert (= (and b!2794681 ((_ is Union!8185) (_1!19482 (_1!19483 (h!37828 mapDefault!18050))))) b!2794965))

(declare-fun b!2794966 () Bool)

(declare-fun e!1764940 () Bool)

(declare-fun tp!888861 () Bool)

(assert (=> b!2794966 (= e!1764940 tp!888861)))

(declare-fun setRes!24149 () Bool)

(declare-fun e!1764938 () Bool)

(declare-fun e!1764939 () Bool)

(declare-fun tp!888860 () Bool)

(declare-fun tp!888859 () Bool)

(declare-fun b!2794967 () Bool)

(assert (=> b!2794967 (= e!1764938 (and tp!888859 (inv!44029 (_2!19482 (_1!19483 (h!37828 (t!228665 mapDefault!18050))))) e!1764939 tp_is_empty!14183 setRes!24149 tp!888860))))

(declare-fun condSetEmpty!24149 () Bool)

(assert (=> b!2794967 (= condSetEmpty!24149 (= (_2!19483 (h!37828 (t!228665 mapDefault!18050))) ((as const (Array Context!4806 Bool)) false)))))

(declare-fun setNonEmpty!24149 () Bool)

(declare-fun tp!888857 () Bool)

(declare-fun setElem!24149 () Context!4806)

(assert (=> setNonEmpty!24149 (= setRes!24149 (and tp!888857 (inv!44029 setElem!24149) e!1764940))))

(declare-fun setRest!24149 () (InoxSet Context!4806))

(assert (=> setNonEmpty!24149 (= (_2!19483 (h!37828 (t!228665 mapDefault!18050))) ((_ map or) (store ((as const (Array Context!4806 Bool)) false) setElem!24149 true) setRest!24149))))

(declare-fun b!2794968 () Bool)

(declare-fun tp!888858 () Bool)

(assert (=> b!2794968 (= e!1764939 tp!888858)))

(declare-fun setIsEmpty!24149 () Bool)

(assert (=> setIsEmpty!24149 setRes!24149))

(assert (=> b!2794681 (= tp!888567 e!1764938)))

(assert (= b!2794967 b!2794968))

(assert (= (and b!2794967 condSetEmpty!24149) setIsEmpty!24149))

(assert (= (and b!2794967 (not condSetEmpty!24149)) setNonEmpty!24149))

(assert (= setNonEmpty!24149 b!2794966))

(assert (= (and b!2794681 ((_ is Cons!32408) (t!228665 mapDefault!18050))) b!2794967))

(declare-fun m!3225101 () Bool)

(assert (=> b!2794967 m!3225101))

(declare-fun m!3225103 () Bool)

(assert (=> setNonEmpty!24149 m!3225103))

(check-sat (not b!2794935) (not b!2794753) (not b!2794844) (not b!2794758) (not b!2794903) (not b!2794898) (not b!2794773) (not b!2794856) (not setNonEmpty!24129) (not b!2794906) (not b!2794916) (not b!2794961) (not b!2794883) (not setNonEmpty!24127) (not b!2794937) (not b!2794904) (not b!2794890) (not d!812601) (not b!2794855) (not b!2794877) (not d!812637) (not b!2794934) (not b!2794888) (not d!812593) (not setNonEmpty!24128) (not d!812575) (not b!2794831) (not b!2794882) (not d!812577) (not setNonEmpty!24136) (not b!2794869) (not b!2794760) (not b!2794966) (not d!812633) (not b!2794851) (not b!2794874) (not d!812585) b_and!203851 (not b!2794846) (not b!2794761) (not setNonEmpty!24132) (not b!2794951) (not d!812587) (not d!812615) (not b!2794959) (not b!2794767) (not b!2794870) (not b!2794960) (not setNonEmpty!24141) (not b!2794853) (not b!2794954) (not setNonEmpty!24142) (not b!2794967) (not b!2794957) tp_is_empty!14183 (not b!2794891) (not b!2794911) (not setNonEmpty!24135) b_and!203847 (not setNonEmpty!24134) (not d!812605) (not setNonEmpty!24137) (not b!2794909) (not b!2794849) (not b!2794931) (not d!812623) (not d!812647) (not b!2794955) (not d!812589) (not b!2794832) (not b!2794850) (not b!2794876) (not b!2794942) (not d!812603) (not setNonEmpty!24148) (not d!812657) (not b!2794918) (not b_next!79813) (not d!812625) (not setNonEmpty!24140) (not setNonEmpty!24139) (not b!2794815) (not b!2794932) (not b!2794936) (not d!812597) (not b!2794899) (not b!2794910) (not setNonEmpty!24145) (not b!2794944) (not setNonEmpty!24123) (not b!2794847) (not d!812607) (not b!2794896) (not b!2794768) (not b!2794900) (not b!2794919) b_and!203853 (not b!2794964) (not b!2794754) (not b!2794893) (not b!2794907) (not b!2794873) (not b!2794968) (not b!2794929) (not mapNonEmpty!18058) (not b!2794956) (not b!2794949) (not d!812643) (not b!2794925) (not b!2794793) (not b!2794930) (not b!2794927) (not setNonEmpty!24143) (not b!2794901) (not b!2794868) (not setNonEmpty!24124) (not b!2794800) (not b!2794912) (not b!2794933) (not b!2794878) (not b!2794926) (not setNonEmpty!24138) (not b!2794948) (not b!2794938) (not b!2794950) (not b_next!79819) (not b!2794886) (not b!2794914) (not b!2794892) (not setNonEmpty!24131) (not b!2794852) (not setNonEmpty!24133) (not b!2794905) (not b!2794833) (not b!2794838) (not b!2794921) (not b!2794940) (not b!2794791) (not b!2794922) (not d!812579) (not b!2794677) (not b!2794965) (not b!2794894) (not b!2794943) (not b!2794814) (not setNonEmpty!24147) (not b!2794902) (not b!2794829) (not mapNonEmpty!18057) (not d!812621) (not d!812641) (not b!2794915) (not d!812613) (not d!812645) (not b!2794897) (not b!2794871) (not setNonEmpty!24149) (not b!2794875) (not b!2794848) (not b!2794945) (not b!2794845) (not b!2794801) (not setNonEmpty!24146) (not b!2794879) (not d!812609) (not b!2794947) (not d!812595) (not d!812619) (not b!2794828) (not b!2794881) b_and!203849 (not setNonEmpty!24122) (not b!2794928) (not setNonEmpty!24130) (not b!2794923) (not b!2794776) (not b!2794884) (not b!2794830) (not b_next!79815) (not d!812591) (not b!2794843) (not b!2794917) (not b!2794952) (not b!2794963) (not b_next!79817) (not d!812611) (not b!2794784) (not b!2794803) (not b!2794889) (not b!2794798) (not b!2794795) (not b!2794797) (not d!812639) (not b!2794941) (not setNonEmpty!24144) (not b!2794872) (not b!2794924) (not b!2794885) (not b!2794854) (not b!2794895) (not d!812599) (not b!2794920) (not setNonEmpty!24126) (not b!2794958) (not b!2794880) (not b!2794887) (not b!2794756) (not b!2794908) (not setNonEmpty!24125))
(check-sat b_and!203851 b_and!203847 (not b_next!79813) b_and!203853 (not b_next!79819) b_and!203849 (not b_next!79815) (not b_next!79817))
