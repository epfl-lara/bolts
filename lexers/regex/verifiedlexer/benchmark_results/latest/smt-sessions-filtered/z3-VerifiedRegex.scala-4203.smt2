; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!228104 () Bool)

(assert start!228104)

(declare-fun b!2312494 () Bool)

(declare-fun b_free!70013 () Bool)

(declare-fun b_next!70717 () Bool)

(assert (=> b!2312494 (= b_free!70013 (not b_next!70717))))

(declare-fun tp!733648 () Bool)

(declare-fun b_and!184913 () Bool)

(assert (=> b!2312494 (= tp!733648 b_and!184913)))

(declare-fun b!2312511 () Bool)

(declare-fun b_free!70015 () Bool)

(declare-fun b_next!70719 () Bool)

(assert (=> b!2312511 (= b_free!70015 (not b_next!70719))))

(declare-fun tp!733660 () Bool)

(declare-fun b_and!184915 () Bool)

(assert (=> b!2312511 (= tp!733660 b_and!184915)))

(declare-fun b!2312510 () Bool)

(declare-fun b_free!70017 () Bool)

(declare-fun b_next!70721 () Bool)

(assert (=> b!2312510 (= b_free!70017 (not b_next!70721))))

(declare-fun tp!733652 () Bool)

(declare-fun b_and!184917 () Bool)

(assert (=> b!2312510 (= tp!733652 b_and!184917)))

(declare-fun b!2312509 () Bool)

(declare-fun b_free!70019 () Bool)

(declare-fun b_next!70723 () Bool)

(assert (=> b!2312509 (= b_free!70019 (not b_next!70723))))

(declare-fun tp!733661 () Bool)

(declare-fun b_and!184919 () Bool)

(assert (=> b!2312509 (= tp!733661 b_and!184919)))

(declare-fun tp!733655 () Bool)

(declare-fun e!1482110 () Bool)

(declare-datatypes ((C!13680 0))(
  ( (C!13681 (val!7896 Int)) )
))
(declare-datatypes ((Regex!6765 0))(
  ( (ElementMatch!6765 (c!366670 C!13680)) (Concat!11353 (regOne!14042 Regex!6765) (regTwo!14042 Regex!6765)) (EmptyExpr!6765) (Star!6765 (reg!7094 Regex!6765)) (EmptyLang!6765) (Union!6765 (regOne!14043 Regex!6765) (regTwo!14043 Regex!6765)) )
))
(declare-datatypes ((List!27630 0))(
  ( (Nil!27532) (Cons!27532 (h!32933 Regex!6765) (t!207222 List!27630)) )
))
(declare-datatypes ((Context!4174 0))(
  ( (Context!4175 (exprs!2587 List!27630)) )
))
(declare-fun setElem!20689 () Context!4174)

(declare-fun setNonEmpty!20689 () Bool)

(declare-fun setRes!20689 () Bool)

(declare-fun inv!37256 (Context!4174) Bool)

(assert (=> setNonEmpty!20689 (= setRes!20689 (and tp!733655 (inv!37256 setElem!20689) e!1482110))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3756 () (InoxSet Context!4174))

(declare-fun setRest!20689 () (InoxSet Context!4174))

(assert (=> setNonEmpty!20689 (= z!3756 ((_ map or) (store ((as const (Array Context!4174 Bool)) false) setElem!20689 true) setRest!20689))))

(declare-fun b!2312492 () Bool)

(declare-fun e!1482114 () Bool)

(declare-fun e!1482103 () Bool)

(assert (=> b!2312492 (= e!1482114 e!1482103)))

(declare-fun res!988526 () Bool)

(declare-fun e!1482105 () Bool)

(assert (=> start!228104 (=> (not res!988526) (not e!1482105))))

(declare-datatypes ((List!27631 0))(
  ( (Nil!27533) (Cons!27533 (h!32934 C!13680) (t!207223 List!27631)) )
))
(declare-datatypes ((IArray!17995 0))(
  ( (IArray!17996 (innerList!9055 List!27631)) )
))
(declare-datatypes ((Conc!8995 0))(
  ( (Node!8995 (left!20886 Conc!8995) (right!21216 Conc!8995) (csize!18220 Int) (cheight!9206 Int)) (Leaf!13199 (xs!11937 IArray!17995) (csize!18221 Int)) (Empty!8995) )
))
(declare-datatypes ((BalanceConc!17722 0))(
  ( (BalanceConc!17723 (c!366671 Conc!8995)) )
))
(declare-fun input!5503 () BalanceConc!17722)

(declare-fun totalInput!803 () BalanceConc!17722)

(declare-fun isSuffix!795 (List!27631 List!27631) Bool)

(declare-fun list!10907 (BalanceConc!17722) List!27631)

(assert (=> start!228104 (= res!988526 (isSuffix!795 (list!10907 input!5503) (list!10907 totalInput!803)))))

(assert (=> start!228104 e!1482105))

(declare-fun e!1482115 () Bool)

(declare-fun inv!37257 (BalanceConc!17722) Bool)

(assert (=> start!228104 (and (inv!37257 input!5503) e!1482115)))

(declare-datatypes ((tuple3!4084 0))(
  ( (tuple3!4085 (_1!16241 Regex!6765) (_2!16241 Context!4174) (_3!2512 C!13680)) )
))
(declare-datatypes ((tuple2!27458 0))(
  ( (tuple2!27459 (_1!16242 tuple3!4084) (_2!16242 (InoxSet Context!4174))) )
))
(declare-datatypes ((List!27632 0))(
  ( (Nil!27534) (Cons!27534 (h!32935 tuple2!27458) (t!207224 List!27632)) )
))
(declare-datatypes ((array!11138 0))(
  ( (array!11139 (arr!4942 (Array (_ BitVec 32) List!27632)) (size!21741 (_ BitVec 32))) )
))
(declare-datatypes ((array!11140 0))(
  ( (array!11141 (arr!4943 (Array (_ BitVec 32) (_ BitVec 64))) (size!21742 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6356 0))(
  ( (LongMapFixedSize!6357 (defaultEntry!3543 Int) (mask!7930 (_ BitVec 32)) (extraKeys!3426 (_ BitVec 32)) (zeroValue!3436 List!27632) (minValue!3436 List!27632) (_size!6403 (_ BitVec 32)) (_keys!3475 array!11140) (_values!3458 array!11138) (_vacant!3239 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12529 0))(
  ( (Cell!12530 (v!30595 LongMapFixedSize!6356)) )
))
(declare-datatypes ((MutLongMap!3178 0))(
  ( (LongMap!3178 (underlying!6561 Cell!12529)) (MutLongMapExt!3177 (__x!18236 Int)) )
))
(declare-datatypes ((Cell!12531 0))(
  ( (Cell!12532 (v!30596 MutLongMap!3178)) )
))
(declare-datatypes ((Hashable!3088 0))(
  ( (HashableExt!3087 (__x!18237 Int)) )
))
(declare-datatypes ((MutableMap!3088 0))(
  ( (MutableMapExt!3087 (__x!18238 Int)) (HashMap!3088 (underlying!6562 Cell!12531) (hashF!5011 Hashable!3088) (_size!6404 (_ BitVec 32)) (defaultValue!3250 Int)) )
))
(declare-datatypes ((CacheDown!2152 0))(
  ( (CacheDown!2153 (cache!3467 MutableMap!3088)) )
))
(declare-fun cacheDown!1056 () CacheDown!2152)

(declare-fun inv!37258 (CacheDown!2152) Bool)

(assert (=> start!228104 (and (inv!37258 cacheDown!1056) e!1482114)))

(declare-fun condSetEmpty!20689 () Bool)

(assert (=> start!228104 (= condSetEmpty!20689 (= z!3756 ((as const (Array Context!4174 Bool)) false)))))

(assert (=> start!228104 setRes!20689))

(declare-datatypes ((tuple2!27460 0))(
  ( (tuple2!27461 (_1!16243 Context!4174) (_2!16243 C!13680)) )
))
(declare-datatypes ((tuple2!27462 0))(
  ( (tuple2!27463 (_1!16244 tuple2!27460) (_2!16244 (InoxSet Context!4174))) )
))
(declare-datatypes ((List!27633 0))(
  ( (Nil!27535) (Cons!27535 (h!32936 tuple2!27462) (t!207225 List!27633)) )
))
(declare-datatypes ((array!11142 0))(
  ( (array!11143 (arr!4944 (Array (_ BitVec 32) List!27633)) (size!21743 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6358 0))(
  ( (LongMapFixedSize!6359 (defaultEntry!3544 Int) (mask!7931 (_ BitVec 32)) (extraKeys!3427 (_ BitVec 32)) (zeroValue!3437 List!27633) (minValue!3437 List!27633) (_size!6405 (_ BitVec 32)) (_keys!3476 array!11140) (_values!3459 array!11142) (_vacant!3240 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12533 0))(
  ( (Cell!12534 (v!30597 LongMapFixedSize!6358)) )
))
(declare-datatypes ((MutLongMap!3179 0))(
  ( (LongMap!3179 (underlying!6563 Cell!12533)) (MutLongMapExt!3178 (__x!18239 Int)) )
))
(declare-datatypes ((Cell!12535 0))(
  ( (Cell!12536 (v!30598 MutLongMap!3179)) )
))
(declare-datatypes ((Hashable!3089 0))(
  ( (HashableExt!3088 (__x!18240 Int)) )
))
(declare-datatypes ((MutableMap!3089 0))(
  ( (MutableMapExt!3088 (__x!18241 Int)) (HashMap!3089 (underlying!6564 Cell!12535) (hashF!5012 Hashable!3089) (_size!6406 (_ BitVec 32)) (defaultValue!3251 Int)) )
))
(declare-datatypes ((CacheUp!2040 0))(
  ( (CacheUp!2041 (cache!3468 MutableMap!3089)) )
))
(declare-fun cacheUp!937 () CacheUp!2040)

(declare-fun e!1482111 () Bool)

(declare-fun inv!37259 (CacheUp!2040) Bool)

(assert (=> start!228104 (and (inv!37259 cacheUp!937) e!1482111)))

(declare-fun e!1482100 () Bool)

(assert (=> start!228104 (and (inv!37257 totalInput!803) e!1482100)))

(declare-fun mapNonEmpty!14878 () Bool)

(declare-fun mapRes!14878 () Bool)

(declare-fun tp!733658 () Bool)

(declare-fun tp!733650 () Bool)

(assert (=> mapNonEmpty!14878 (= mapRes!14878 (and tp!733658 tp!733650))))

(declare-fun mapRest!14879 () (Array (_ BitVec 32) List!27632))

(declare-fun mapValue!14878 () List!27632)

(declare-fun mapKey!14878 () (_ BitVec 32))

(assert (=> mapNonEmpty!14878 (= (arr!4942 (_values!3458 (v!30595 (underlying!6561 (v!30596 (underlying!6562 (cache!3467 cacheDown!1056))))))) (store mapRest!14879 mapKey!14878 mapValue!14878))))

(declare-fun b!2312493 () Bool)

(declare-fun e!1482098 () Bool)

(declare-fun e!1482107 () Bool)

(assert (=> b!2312493 (= e!1482098 e!1482107)))

(declare-fun mapIsEmpty!14878 () Bool)

(declare-fun mapRes!14879 () Bool)

(assert (=> mapIsEmpty!14878 mapRes!14879))

(declare-fun tp!733659 () Bool)

(declare-fun e!1482113 () Bool)

(declare-fun tp!733651 () Bool)

(declare-fun e!1482104 () Bool)

(declare-fun array_inv!3550 (array!11140) Bool)

(declare-fun array_inv!3551 (array!11138) Bool)

(assert (=> b!2312494 (= e!1482104 (and tp!733648 tp!733651 tp!733659 (array_inv!3550 (_keys!3475 (v!30595 (underlying!6561 (v!30596 (underlying!6562 (cache!3467 cacheDown!1056))))))) (array_inv!3551 (_values!3458 (v!30595 (underlying!6561 (v!30596 (underlying!6562 (cache!3467 cacheDown!1056))))))) e!1482113))))

(declare-fun b!2312495 () Bool)

(declare-fun e!1482101 () Bool)

(declare-datatypes ((tuple3!4086 0))(
  ( (tuple3!4087 (_1!16245 Int) (_2!16245 CacheUp!2040) (_3!2513 CacheDown!2152)) )
))
(declare-fun lt!857690 () tuple3!4086)

(declare-fun valid!2387 (CacheDown!2152) Bool)

(assert (=> b!2312495 (= e!1482101 (valid!2387 (_3!2513 lt!857690)))))

(declare-fun b!2312496 () Bool)

(declare-fun e!1482102 () Bool)

(declare-fun lt!857688 () MutLongMap!3178)

(get-info :version)

(assert (=> b!2312496 (= e!1482102 (and e!1482098 ((_ is LongMap!3178) lt!857688)))))

(assert (=> b!2312496 (= lt!857688 (v!30596 (underlying!6562 (cache!3467 cacheDown!1056))))))

(declare-fun b!2312497 () Bool)

(declare-fun res!988524 () Bool)

(assert (=> b!2312497 (=> (not res!988524) (not e!1482101))))

(declare-fun valid!2388 (CacheUp!2040) Bool)

(assert (=> b!2312497 (= res!988524 (valid!2388 (_2!16245 lt!857690)))))

(declare-fun mapIsEmpty!14879 () Bool)

(assert (=> mapIsEmpty!14879 mapRes!14878))

(declare-fun mapNonEmpty!14879 () Bool)

(declare-fun tp!733662 () Bool)

(declare-fun tp!733653 () Bool)

(assert (=> mapNonEmpty!14879 (= mapRes!14879 (and tp!733662 tp!733653))))

(declare-fun mapKey!14879 () (_ BitVec 32))

(declare-fun mapRest!14878 () (Array (_ BitVec 32) List!27633))

(declare-fun mapValue!14879 () List!27633)

(assert (=> mapNonEmpty!14879 (= (arr!4944 (_values!3459 (v!30597 (underlying!6563 (v!30598 (underlying!6564 (cache!3468 cacheUp!937))))))) (store mapRest!14878 mapKey!14879 mapValue!14879))))

(declare-fun b!2312498 () Bool)

(declare-fun e!1482095 () Bool)

(assert (=> b!2312498 (= e!1482111 e!1482095)))

(declare-fun b!2312499 () Bool)

(declare-fun tp!733663 () Bool)

(declare-fun inv!37260 (Conc!8995) Bool)

(assert (=> b!2312499 (= e!1482115 (and (inv!37260 (c!366671 input!5503)) tp!733663))))

(declare-fun b!2312500 () Bool)

(declare-fun tp!733654 () Bool)

(assert (=> b!2312500 (= e!1482113 (and tp!733654 mapRes!14878))))

(declare-fun condMapEmpty!14878 () Bool)

(declare-fun mapDefault!14878 () List!27632)

(assert (=> b!2312500 (= condMapEmpty!14878 (= (arr!4942 (_values!3458 (v!30595 (underlying!6561 (v!30596 (underlying!6562 (cache!3467 cacheDown!1056))))))) ((as const (Array (_ BitVec 32) List!27632)) mapDefault!14878)))))

(declare-fun b!2312501 () Bool)

(declare-fun e!1482106 () Bool)

(declare-fun tp!733657 () Bool)

(assert (=> b!2312501 (= e!1482106 (and tp!733657 mapRes!14879))))

(declare-fun condMapEmpty!14879 () Bool)

(declare-fun mapDefault!14879 () List!27633)

(assert (=> b!2312501 (= condMapEmpty!14879 (= (arr!4944 (_values!3459 (v!30597 (underlying!6563 (v!30598 (underlying!6564 (cache!3468 cacheUp!937))))))) ((as const (Array (_ BitVec 32) List!27633)) mapDefault!14879)))))

(declare-fun b!2312502 () Bool)

(declare-fun tp!733646 () Bool)

(assert (=> b!2312502 (= e!1482110 tp!733646)))

(declare-fun setIsEmpty!20689 () Bool)

(assert (=> setIsEmpty!20689 setRes!20689))

(declare-fun b!2312503 () Bool)

(assert (=> b!2312503 (= e!1482107 e!1482104)))

(declare-fun b!2312504 () Bool)

(declare-fun e!1482097 () Bool)

(declare-fun e!1482099 () Bool)

(assert (=> b!2312504 (= e!1482097 e!1482099)))

(declare-fun b!2312505 () Bool)

(declare-fun e!1482109 () Bool)

(assert (=> b!2312505 (= e!1482109 e!1482097)))

(declare-fun b!2312506 () Bool)

(declare-fun isBalanced!2705 (Conc!8995) Bool)

(assert (=> b!2312506 (= e!1482105 (not (isBalanced!2705 (c!366671 input!5503))))))

(assert (=> b!2312506 e!1482101))

(declare-fun res!988525 () Bool)

(assert (=> b!2312506 (=> (not res!988525) (not e!1482101))))

(declare-fun lt!857687 () Int)

(declare-fun lt!857686 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!8 ((InoxSet Context!4174) Int BalanceConc!17722 Int) Int)

(assert (=> b!2312506 (= res!988525 (= (_1!16245 lt!857690) (findLongestMatchInnerZipperFastV2!8 z!3756 lt!857687 totalInput!803 lt!857686)))))

(declare-fun findLongestMatchInnerZipperFastV2MemOnlyDeriv!5 ((InoxSet Context!4174) Int BalanceConc!17722 Int CacheUp!2040 CacheDown!2152) tuple3!4086)

(assert (=> b!2312506 (= lt!857690 (findLongestMatchInnerZipperFastV2MemOnlyDeriv!5 z!3756 lt!857687 totalInput!803 lt!857686 cacheUp!937 cacheDown!1056))))

(declare-fun size!21744 (BalanceConc!17722) Int)

(assert (=> b!2312506 (= lt!857687 (- lt!857686 (size!21744 input!5503)))))

(assert (=> b!2312506 (= lt!857686 (size!21744 totalInput!803))))

(declare-fun b!2312507 () Bool)

(declare-fun e!1482108 () Bool)

(declare-fun lt!857689 () MutLongMap!3179)

(assert (=> b!2312507 (= e!1482108 (and e!1482109 ((_ is LongMap!3179) lt!857689)))))

(assert (=> b!2312507 (= lt!857689 (v!30598 (underlying!6564 (cache!3468 cacheUp!937))))))

(declare-fun b!2312508 () Bool)

(declare-fun tp!733647 () Bool)

(assert (=> b!2312508 (= e!1482100 (and (inv!37260 (c!366671 totalInput!803)) tp!733647))))

(assert (=> b!2312509 (= e!1482095 (and e!1482108 tp!733661))))

(assert (=> b!2312510 (= e!1482103 (and e!1482102 tp!733652))))

(declare-fun tp!733649 () Bool)

(declare-fun tp!733656 () Bool)

(declare-fun array_inv!3552 (array!11142) Bool)

(assert (=> b!2312511 (= e!1482099 (and tp!733660 tp!733649 tp!733656 (array_inv!3550 (_keys!3476 (v!30597 (underlying!6563 (v!30598 (underlying!6564 (cache!3468 cacheUp!937))))))) (array_inv!3552 (_values!3459 (v!30597 (underlying!6563 (v!30598 (underlying!6564 (cache!3468 cacheUp!937))))))) e!1482106))))

(assert (= (and start!228104 res!988526) b!2312506))

(assert (= (and b!2312506 res!988525) b!2312497))

(assert (= (and b!2312497 res!988524) b!2312495))

(assert (= start!228104 b!2312499))

(assert (= (and b!2312500 condMapEmpty!14878) mapIsEmpty!14879))

(assert (= (and b!2312500 (not condMapEmpty!14878)) mapNonEmpty!14878))

(assert (= b!2312494 b!2312500))

(assert (= b!2312503 b!2312494))

(assert (= b!2312493 b!2312503))

(assert (= (and b!2312496 ((_ is LongMap!3178) (v!30596 (underlying!6562 (cache!3467 cacheDown!1056))))) b!2312493))

(assert (= b!2312510 b!2312496))

(assert (= (and b!2312492 ((_ is HashMap!3088) (cache!3467 cacheDown!1056))) b!2312510))

(assert (= start!228104 b!2312492))

(assert (= (and start!228104 condSetEmpty!20689) setIsEmpty!20689))

(assert (= (and start!228104 (not condSetEmpty!20689)) setNonEmpty!20689))

(assert (= setNonEmpty!20689 b!2312502))

(assert (= (and b!2312501 condMapEmpty!14879) mapIsEmpty!14878))

(assert (= (and b!2312501 (not condMapEmpty!14879)) mapNonEmpty!14879))

(assert (= b!2312511 b!2312501))

(assert (= b!2312504 b!2312511))

(assert (= b!2312505 b!2312504))

(assert (= (and b!2312507 ((_ is LongMap!3179) (v!30598 (underlying!6564 (cache!3468 cacheUp!937))))) b!2312505))

(assert (= b!2312509 b!2312507))

(assert (= (and b!2312498 ((_ is HashMap!3089) (cache!3468 cacheUp!937))) b!2312509))

(assert (= start!228104 b!2312498))

(assert (= start!228104 b!2312508))

(declare-fun m!2739939 () Bool)

(assert (=> b!2312499 m!2739939))

(declare-fun m!2739941 () Bool)

(assert (=> mapNonEmpty!14878 m!2739941))

(declare-fun m!2739943 () Bool)

(assert (=> b!2312497 m!2739943))

(declare-fun m!2739945 () Bool)

(assert (=> b!2312494 m!2739945))

(declare-fun m!2739947 () Bool)

(assert (=> b!2312494 m!2739947))

(declare-fun m!2739949 () Bool)

(assert (=> start!228104 m!2739949))

(declare-fun m!2739951 () Bool)

(assert (=> start!228104 m!2739951))

(declare-fun m!2739953 () Bool)

(assert (=> start!228104 m!2739953))

(declare-fun m!2739955 () Bool)

(assert (=> start!228104 m!2739955))

(assert (=> start!228104 m!2739949))

(declare-fun m!2739957 () Bool)

(assert (=> start!228104 m!2739957))

(declare-fun m!2739959 () Bool)

(assert (=> start!228104 m!2739959))

(declare-fun m!2739961 () Bool)

(assert (=> start!228104 m!2739961))

(assert (=> start!228104 m!2739955))

(declare-fun m!2739963 () Bool)

(assert (=> setNonEmpty!20689 m!2739963))

(declare-fun m!2739965 () Bool)

(assert (=> b!2312506 m!2739965))

(declare-fun m!2739967 () Bool)

(assert (=> b!2312506 m!2739967))

(declare-fun m!2739969 () Bool)

(assert (=> b!2312506 m!2739969))

(declare-fun m!2739971 () Bool)

(assert (=> b!2312506 m!2739971))

(declare-fun m!2739973 () Bool)

(assert (=> b!2312506 m!2739973))

(declare-fun m!2739975 () Bool)

(assert (=> b!2312508 m!2739975))

(declare-fun m!2739977 () Bool)

(assert (=> mapNonEmpty!14879 m!2739977))

(declare-fun m!2739979 () Bool)

(assert (=> b!2312511 m!2739979))

(declare-fun m!2739981 () Bool)

(assert (=> b!2312511 m!2739981))

(declare-fun m!2739983 () Bool)

(assert (=> b!2312495 m!2739983))

(check-sat (not b_next!70723) (not b!2312508) (not b!2312501) (not mapNonEmpty!14879) b_and!184913 (not b!2312494) (not mapNonEmpty!14878) (not setNonEmpty!20689) (not b!2312500) (not b!2312495) (not b_next!70717) b_and!184915 (not b!2312502) (not b!2312497) b_and!184917 (not b!2312499) (not b!2312511) (not start!228104) b_and!184919 (not b!2312506) (not b_next!70721) (not b_next!70719))
(check-sat (not b_next!70723) b_and!184917 b_and!184913 b_and!184919 (not b_next!70717) b_and!184915 (not b_next!70721) (not b_next!70719))
(get-model)

(declare-fun d!684202 () Bool)

(declare-fun c!366674 () Bool)

(assert (=> d!684202 (= c!366674 ((_ is Node!8995) (c!366671 input!5503)))))

(declare-fun e!1482120 () Bool)

(assert (=> d!684202 (= (inv!37260 (c!366671 input!5503)) e!1482120)))

(declare-fun b!2312518 () Bool)

(declare-fun inv!37261 (Conc!8995) Bool)

(assert (=> b!2312518 (= e!1482120 (inv!37261 (c!366671 input!5503)))))

(declare-fun b!2312519 () Bool)

(declare-fun e!1482121 () Bool)

(assert (=> b!2312519 (= e!1482120 e!1482121)))

(declare-fun res!988529 () Bool)

(assert (=> b!2312519 (= res!988529 (not ((_ is Leaf!13199) (c!366671 input!5503))))))

(assert (=> b!2312519 (=> res!988529 e!1482121)))

(declare-fun b!2312520 () Bool)

(declare-fun inv!37262 (Conc!8995) Bool)

(assert (=> b!2312520 (= e!1482121 (inv!37262 (c!366671 input!5503)))))

(assert (= (and d!684202 c!366674) b!2312518))

(assert (= (and d!684202 (not c!366674)) b!2312519))

(assert (= (and b!2312519 (not res!988529)) b!2312520))

(declare-fun m!2739985 () Bool)

(assert (=> b!2312518 m!2739985))

(declare-fun m!2739987 () Bool)

(assert (=> b!2312520 m!2739987))

(assert (=> b!2312499 d!684202))

(declare-fun d!684204 () Bool)

(declare-fun validCacheMapDown!344 (MutableMap!3088) Bool)

(assert (=> d!684204 (= (valid!2387 (_3!2513 lt!857690)) (validCacheMapDown!344 (cache!3467 (_3!2513 lt!857690))))))

(declare-fun bs!458680 () Bool)

(assert (= bs!458680 d!684204))

(declare-fun m!2739989 () Bool)

(assert (=> bs!458680 m!2739989))

(assert (=> b!2312495 d!684204))

(declare-fun d!684206 () Bool)

(declare-fun c!366675 () Bool)

(assert (=> d!684206 (= c!366675 ((_ is Node!8995) (c!366671 totalInput!803)))))

(declare-fun e!1482122 () Bool)

(assert (=> d!684206 (= (inv!37260 (c!366671 totalInput!803)) e!1482122)))

(declare-fun b!2312521 () Bool)

(assert (=> b!2312521 (= e!1482122 (inv!37261 (c!366671 totalInput!803)))))

(declare-fun b!2312522 () Bool)

(declare-fun e!1482123 () Bool)

(assert (=> b!2312522 (= e!1482122 e!1482123)))

(declare-fun res!988530 () Bool)

(assert (=> b!2312522 (= res!988530 (not ((_ is Leaf!13199) (c!366671 totalInput!803))))))

(assert (=> b!2312522 (=> res!988530 e!1482123)))

(declare-fun b!2312523 () Bool)

(assert (=> b!2312523 (= e!1482123 (inv!37262 (c!366671 totalInput!803)))))

(assert (= (and d!684206 c!366675) b!2312521))

(assert (= (and d!684206 (not c!366675)) b!2312522))

(assert (= (and b!2312522 (not res!988530)) b!2312523))

(declare-fun m!2739991 () Bool)

(assert (=> b!2312521 m!2739991))

(declare-fun m!2739993 () Bool)

(assert (=> b!2312523 m!2739993))

(assert (=> b!2312508 d!684206))

(declare-fun d!684208 () Bool)

(declare-fun lambda!86318 () Int)

(declare-fun forall!5511 (List!27630 Int) Bool)

(assert (=> d!684208 (= (inv!37256 setElem!20689) (forall!5511 (exprs!2587 setElem!20689) lambda!86318))))

(declare-fun bs!458681 () Bool)

(assert (= bs!458681 d!684208))

(declare-fun m!2739995 () Bool)

(assert (=> bs!458681 m!2739995))

(assert (=> setNonEmpty!20689 d!684208))

(declare-fun d!684210 () Bool)

(assert (=> d!684210 (= (array_inv!3550 (_keys!3475 (v!30595 (underlying!6561 (v!30596 (underlying!6562 (cache!3467 cacheDown!1056))))))) (bvsge (size!21742 (_keys!3475 (v!30595 (underlying!6561 (v!30596 (underlying!6562 (cache!3467 cacheDown!1056))))))) #b00000000000000000000000000000000))))

(assert (=> b!2312494 d!684210))

(declare-fun d!684212 () Bool)

(assert (=> d!684212 (= (array_inv!3551 (_values!3458 (v!30595 (underlying!6561 (v!30596 (underlying!6562 (cache!3467 cacheDown!1056))))))) (bvsge (size!21741 (_values!3458 (v!30595 (underlying!6561 (v!30596 (underlying!6562 (cache!3467 cacheDown!1056))))))) #b00000000000000000000000000000000))))

(assert (=> b!2312494 d!684212))

(declare-fun d!684214 () Bool)

(declare-fun lt!857693 () Int)

(declare-fun size!21745 (List!27631) Int)

(assert (=> d!684214 (= lt!857693 (size!21745 (list!10907 input!5503)))))

(declare-fun size!21746 (Conc!8995) Int)

(assert (=> d!684214 (= lt!857693 (size!21746 (c!366671 input!5503)))))

(assert (=> d!684214 (= (size!21744 input!5503) lt!857693)))

(declare-fun bs!458682 () Bool)

(assert (= bs!458682 d!684214))

(assert (=> bs!458682 m!2739955))

(assert (=> bs!458682 m!2739955))

(declare-fun m!2739997 () Bool)

(assert (=> bs!458682 m!2739997))

(declare-fun m!2739999 () Bool)

(assert (=> bs!458682 m!2739999))

(assert (=> b!2312506 d!684214))

(declare-fun b!2312540 () Bool)

(declare-fun e!1482137 () Int)

(assert (=> b!2312540 (= e!1482137 0)))

(declare-fun b!2312541 () Bool)

(declare-fun e!1482135 () Int)

(assert (=> b!2312541 (= e!1482135 1)))

(declare-fun b!2312542 () Bool)

(assert (=> b!2312542 (= e!1482135 0)))

(declare-fun b!2312543 () Bool)

(declare-fun e!1482134 () Bool)

(assert (=> b!2312543 (= e!1482134 (<= lt!857687 (size!21744 totalInput!803)))))

(declare-fun b!2312544 () Bool)

(declare-fun e!1482138 () Bool)

(declare-fun lostCauseZipper!396 ((InoxSet Context!4174)) Bool)

(assert (=> b!2312544 (= e!1482138 (lostCauseZipper!396 z!3756))))

(declare-fun d!684216 () Bool)

(declare-fun lt!857700 () Int)

(assert (=> d!684216 (and (>= lt!857700 0) (<= lt!857700 (- lt!857686 lt!857687)))))

(assert (=> d!684216 (= lt!857700 e!1482137)))

(declare-fun c!366683 () Bool)

(assert (=> d!684216 (= c!366683 e!1482138)))

(declare-fun res!988535 () Bool)

(assert (=> d!684216 (=> res!988535 e!1482138)))

(assert (=> d!684216 (= res!988535 (= lt!857687 lt!857686))))

(assert (=> d!684216 e!1482134))

(declare-fun res!988536 () Bool)

(assert (=> d!684216 (=> (not res!988536) (not e!1482134))))

(assert (=> d!684216 (= res!988536 (>= lt!857687 0))))

(assert (=> d!684216 (= (findLongestMatchInnerZipperFastV2!8 z!3756 lt!857687 totalInput!803 lt!857686) lt!857700)))

(declare-fun b!2312545 () Bool)

(declare-fun c!366682 () Bool)

(declare-fun lt!857701 () (InoxSet Context!4174))

(declare-fun nullableZipper!590 ((InoxSet Context!4174)) Bool)

(assert (=> b!2312545 (= c!366682 (nullableZipper!590 lt!857701))))

(declare-fun e!1482136 () Int)

(assert (=> b!2312545 (= e!1482136 e!1482135)))

(declare-fun b!2312546 () Bool)

(declare-fun lt!857702 () Int)

(assert (=> b!2312546 (= e!1482136 (+ 1 lt!857702))))

(declare-fun b!2312547 () Bool)

(assert (=> b!2312547 (= e!1482137 e!1482136)))

(declare-fun derivationStepZipper!332 ((InoxSet Context!4174) C!13680) (InoxSet Context!4174))

(declare-fun apply!6676 (BalanceConc!17722 Int) C!13680)

(assert (=> b!2312547 (= lt!857701 (derivationStepZipper!332 z!3756 (apply!6676 totalInput!803 lt!857687)))))

(assert (=> b!2312547 (= lt!857702 (findLongestMatchInnerZipperFastV2!8 lt!857701 (+ lt!857687 1) totalInput!803 lt!857686))))

(declare-fun c!366684 () Bool)

(assert (=> b!2312547 (= c!366684 (> lt!857702 0))))

(assert (= (and d!684216 res!988536) b!2312543))

(assert (= (and d!684216 (not res!988535)) b!2312544))

(assert (= (and d!684216 c!366683) b!2312540))

(assert (= (and d!684216 (not c!366683)) b!2312547))

(assert (= (and b!2312547 c!366684) b!2312546))

(assert (= (and b!2312547 (not c!366684)) b!2312545))

(assert (= (and b!2312545 c!366682) b!2312541))

(assert (= (and b!2312545 (not c!366682)) b!2312542))

(assert (=> b!2312543 m!2739965))

(declare-fun m!2740001 () Bool)

(assert (=> b!2312544 m!2740001))

(declare-fun m!2740003 () Bool)

(assert (=> b!2312545 m!2740003))

(declare-fun m!2740005 () Bool)

(assert (=> b!2312547 m!2740005))

(assert (=> b!2312547 m!2740005))

(declare-fun m!2740007 () Bool)

(assert (=> b!2312547 m!2740007))

(declare-fun m!2740009 () Bool)

(assert (=> b!2312547 m!2740009))

(assert (=> b!2312506 d!684216))

(declare-fun d!684218 () Bool)

(declare-fun lt!857703 () Int)

(assert (=> d!684218 (= lt!857703 (size!21745 (list!10907 totalInput!803)))))

(assert (=> d!684218 (= lt!857703 (size!21746 (c!366671 totalInput!803)))))

(assert (=> d!684218 (= (size!21744 totalInput!803) lt!857703)))

(declare-fun bs!458683 () Bool)

(assert (= bs!458683 d!684218))

(assert (=> bs!458683 m!2739949))

(assert (=> bs!458683 m!2739949))

(declare-fun m!2740011 () Bool)

(assert (=> bs!458683 m!2740011))

(declare-fun m!2740013 () Bool)

(assert (=> bs!458683 m!2740013))

(assert (=> b!2312506 d!684218))

(declare-fun d!684220 () Bool)

(declare-fun e!1482144 () Bool)

(assert (=> d!684220 e!1482144))

(declare-fun res!988543 () Bool)

(assert (=> d!684220 (=> (not res!988543) (not e!1482144))))

(declare-fun lt!857706 () tuple3!4086)

(assert (=> d!684220 (= res!988543 (= (_1!16245 lt!857706) (findLongestMatchInnerZipperFastV2!8 z!3756 lt!857687 totalInput!803 lt!857686)))))

(declare-fun choose!13530 ((InoxSet Context!4174) Int BalanceConc!17722 Int CacheUp!2040 CacheDown!2152) tuple3!4086)

(assert (=> d!684220 (= lt!857706 (choose!13530 z!3756 lt!857687 totalInput!803 lt!857686 cacheUp!937 cacheDown!1056))))

(declare-fun e!1482143 () Bool)

(assert (=> d!684220 e!1482143))

(declare-fun res!988544 () Bool)

(assert (=> d!684220 (=> (not res!988544) (not e!1482143))))

(assert (=> d!684220 (= res!988544 (>= lt!857687 0))))

(assert (=> d!684220 (= (findLongestMatchInnerZipperFastV2MemOnlyDeriv!5 z!3756 lt!857687 totalInput!803 lt!857686 cacheUp!937 cacheDown!1056) lt!857706)))

(declare-fun b!2312554 () Bool)

(assert (=> b!2312554 (= e!1482143 (<= lt!857687 (size!21744 totalInput!803)))))

(declare-fun b!2312555 () Bool)

(declare-fun res!988545 () Bool)

(assert (=> b!2312555 (=> (not res!988545) (not e!1482144))))

(assert (=> b!2312555 (= res!988545 (valid!2388 (_2!16245 lt!857706)))))

(declare-fun b!2312556 () Bool)

(assert (=> b!2312556 (= e!1482144 (valid!2387 (_3!2513 lt!857706)))))

(assert (= (and d!684220 res!988544) b!2312554))

(assert (= (and d!684220 res!988543) b!2312555))

(assert (= (and b!2312555 res!988545) b!2312556))

(assert (=> d!684220 m!2739971))

(declare-fun m!2740015 () Bool)

(assert (=> d!684220 m!2740015))

(assert (=> b!2312554 m!2739965))

(declare-fun m!2740017 () Bool)

(assert (=> b!2312555 m!2740017))

(declare-fun m!2740019 () Bool)

(assert (=> b!2312556 m!2740019))

(assert (=> b!2312506 d!684220))

(declare-fun b!2312569 () Bool)

(declare-fun e!1482149 () Bool)

(declare-fun isEmpty!15747 (Conc!8995) Bool)

(assert (=> b!2312569 (= e!1482149 (not (isEmpty!15747 (right!21216 (c!366671 input!5503)))))))

(declare-fun b!2312570 () Bool)

(declare-fun res!988558 () Bool)

(assert (=> b!2312570 (=> (not res!988558) (not e!1482149))))

(assert (=> b!2312570 (= res!988558 (isBalanced!2705 (right!21216 (c!366671 input!5503))))))

(declare-fun d!684222 () Bool)

(declare-fun res!988563 () Bool)

(declare-fun e!1482150 () Bool)

(assert (=> d!684222 (=> res!988563 e!1482150)))

(assert (=> d!684222 (= res!988563 (not ((_ is Node!8995) (c!366671 input!5503))))))

(assert (=> d!684222 (= (isBalanced!2705 (c!366671 input!5503)) e!1482150)))

(declare-fun b!2312571 () Bool)

(declare-fun res!988562 () Bool)

(assert (=> b!2312571 (=> (not res!988562) (not e!1482149))))

(assert (=> b!2312571 (= res!988562 (not (isEmpty!15747 (left!20886 (c!366671 input!5503)))))))

(declare-fun b!2312572 () Bool)

(declare-fun res!988559 () Bool)

(assert (=> b!2312572 (=> (not res!988559) (not e!1482149))))

(assert (=> b!2312572 (= res!988559 (isBalanced!2705 (left!20886 (c!366671 input!5503))))))

(declare-fun b!2312573 () Bool)

(declare-fun res!988560 () Bool)

(assert (=> b!2312573 (=> (not res!988560) (not e!1482149))))

(declare-fun height!1297 (Conc!8995) Int)

(assert (=> b!2312573 (= res!988560 (<= (- (height!1297 (left!20886 (c!366671 input!5503))) (height!1297 (right!21216 (c!366671 input!5503)))) 1))))

(declare-fun b!2312574 () Bool)

(assert (=> b!2312574 (= e!1482150 e!1482149)))

(declare-fun res!988561 () Bool)

(assert (=> b!2312574 (=> (not res!988561) (not e!1482149))))

(assert (=> b!2312574 (= res!988561 (<= (- 1) (- (height!1297 (left!20886 (c!366671 input!5503))) (height!1297 (right!21216 (c!366671 input!5503))))))))

(assert (= (and d!684222 (not res!988563)) b!2312574))

(assert (= (and b!2312574 res!988561) b!2312573))

(assert (= (and b!2312573 res!988560) b!2312572))

(assert (= (and b!2312572 res!988559) b!2312570))

(assert (= (and b!2312570 res!988558) b!2312571))

(assert (= (and b!2312571 res!988562) b!2312569))

(declare-fun m!2740021 () Bool)

(assert (=> b!2312573 m!2740021))

(declare-fun m!2740023 () Bool)

(assert (=> b!2312573 m!2740023))

(declare-fun m!2740025 () Bool)

(assert (=> b!2312569 m!2740025))

(declare-fun m!2740027 () Bool)

(assert (=> b!2312571 m!2740027))

(declare-fun m!2740029 () Bool)

(assert (=> b!2312572 m!2740029))

(declare-fun m!2740031 () Bool)

(assert (=> b!2312570 m!2740031))

(assert (=> b!2312574 m!2740021))

(assert (=> b!2312574 m!2740023))

(assert (=> b!2312506 d!684222))

(declare-fun d!684224 () Bool)

(declare-fun list!10908 (Conc!8995) List!27631)

(assert (=> d!684224 (= (list!10907 input!5503) (list!10908 (c!366671 input!5503)))))

(declare-fun bs!458684 () Bool)

(assert (= bs!458684 d!684224))

(declare-fun m!2740033 () Bool)

(assert (=> bs!458684 m!2740033))

(assert (=> start!228104 d!684224))

(declare-fun d!684226 () Bool)

(assert (=> d!684226 (= (inv!37257 totalInput!803) (isBalanced!2705 (c!366671 totalInput!803)))))

(declare-fun bs!458685 () Bool)

(assert (= bs!458685 d!684226))

(declare-fun m!2740035 () Bool)

(assert (=> bs!458685 m!2740035))

(assert (=> start!228104 d!684226))

(declare-fun d!684228 () Bool)

(declare-fun e!1482153 () Bool)

(assert (=> d!684228 e!1482153))

(declare-fun res!988566 () Bool)

(assert (=> d!684228 (=> res!988566 e!1482153)))

(declare-fun lt!857709 () Bool)

(assert (=> d!684228 (= res!988566 (not lt!857709))))

(declare-fun drop!1492 (List!27631 Int) List!27631)

(assert (=> d!684228 (= lt!857709 (= (list!10907 input!5503) (drop!1492 (list!10907 totalInput!803) (- (size!21745 (list!10907 totalInput!803)) (size!21745 (list!10907 input!5503))))))))

(assert (=> d!684228 (= (isSuffix!795 (list!10907 input!5503) (list!10907 totalInput!803)) lt!857709)))

(declare-fun b!2312577 () Bool)

(assert (=> b!2312577 (= e!1482153 (>= (size!21745 (list!10907 totalInput!803)) (size!21745 (list!10907 input!5503))))))

(assert (= (and d!684228 (not res!988566)) b!2312577))

(assert (=> d!684228 m!2739949))

(assert (=> d!684228 m!2740011))

(assert (=> d!684228 m!2739955))

(assert (=> d!684228 m!2739997))

(assert (=> d!684228 m!2739949))

(declare-fun m!2740037 () Bool)

(assert (=> d!684228 m!2740037))

(assert (=> b!2312577 m!2739949))

(assert (=> b!2312577 m!2740011))

(assert (=> b!2312577 m!2739955))

(assert (=> b!2312577 m!2739997))

(assert (=> start!228104 d!684228))

(declare-fun d!684230 () Bool)

(assert (=> d!684230 (= (list!10907 totalInput!803) (list!10908 (c!366671 totalInput!803)))))

(declare-fun bs!458686 () Bool)

(assert (= bs!458686 d!684230))

(declare-fun m!2740039 () Bool)

(assert (=> bs!458686 m!2740039))

(assert (=> start!228104 d!684230))

(declare-fun d!684232 () Bool)

(declare-fun res!988569 () Bool)

(declare-fun e!1482156 () Bool)

(assert (=> d!684232 (=> (not res!988569) (not e!1482156))))

(assert (=> d!684232 (= res!988569 ((_ is HashMap!3089) (cache!3468 cacheUp!937)))))

(assert (=> d!684232 (= (inv!37259 cacheUp!937) e!1482156)))

(declare-fun b!2312580 () Bool)

(declare-fun validCacheMapUp!313 (MutableMap!3089) Bool)

(assert (=> b!2312580 (= e!1482156 (validCacheMapUp!313 (cache!3468 cacheUp!937)))))

(assert (= (and d!684232 res!988569) b!2312580))

(declare-fun m!2740041 () Bool)

(assert (=> b!2312580 m!2740041))

(assert (=> start!228104 d!684232))

(declare-fun d!684234 () Bool)

(declare-fun res!988572 () Bool)

(declare-fun e!1482159 () Bool)

(assert (=> d!684234 (=> (not res!988572) (not e!1482159))))

(assert (=> d!684234 (= res!988572 ((_ is HashMap!3088) (cache!3467 cacheDown!1056)))))

(assert (=> d!684234 (= (inv!37258 cacheDown!1056) e!1482159)))

(declare-fun b!2312583 () Bool)

(assert (=> b!2312583 (= e!1482159 (validCacheMapDown!344 (cache!3467 cacheDown!1056)))))

(assert (= (and d!684234 res!988572) b!2312583))

(declare-fun m!2740043 () Bool)

(assert (=> b!2312583 m!2740043))

(assert (=> start!228104 d!684234))

(declare-fun d!684236 () Bool)

(assert (=> d!684236 (= (inv!37257 input!5503) (isBalanced!2705 (c!366671 input!5503)))))

(declare-fun bs!458687 () Bool)

(assert (= bs!458687 d!684236))

(assert (=> bs!458687 m!2739973))

(assert (=> start!228104 d!684236))

(declare-fun d!684238 () Bool)

(assert (=> d!684238 (= (array_inv!3550 (_keys!3476 (v!30597 (underlying!6563 (v!30598 (underlying!6564 (cache!3468 cacheUp!937))))))) (bvsge (size!21742 (_keys!3476 (v!30597 (underlying!6563 (v!30598 (underlying!6564 (cache!3468 cacheUp!937))))))) #b00000000000000000000000000000000))))

(assert (=> b!2312511 d!684238))

(declare-fun d!684240 () Bool)

(assert (=> d!684240 (= (array_inv!3552 (_values!3459 (v!30597 (underlying!6563 (v!30598 (underlying!6564 (cache!3468 cacheUp!937))))))) (bvsge (size!21743 (_values!3459 (v!30597 (underlying!6563 (v!30598 (underlying!6564 (cache!3468 cacheUp!937))))))) #b00000000000000000000000000000000))))

(assert (=> b!2312511 d!684240))

(declare-fun d!684242 () Bool)

(assert (=> d!684242 (= (valid!2388 (_2!16245 lt!857690)) (validCacheMapUp!313 (cache!3468 (_2!16245 lt!857690))))))

(declare-fun bs!458688 () Bool)

(assert (= bs!458688 d!684242))

(declare-fun m!2740045 () Bool)

(assert (=> bs!458688 m!2740045))

(assert (=> b!2312497 d!684242))

(declare-fun mapIsEmpty!14882 () Bool)

(declare-fun mapRes!14882 () Bool)

(assert (=> mapIsEmpty!14882 mapRes!14882))

(declare-fun setIsEmpty!20694 () Bool)

(declare-fun setRes!20694 () Bool)

(assert (=> setIsEmpty!20694 setRes!20694))

(declare-fun b!2312598 () Bool)

(declare-fun e!1482177 () Bool)

(declare-fun tp!733692 () Bool)

(assert (=> b!2312598 (= e!1482177 tp!733692)))

(declare-fun setRes!20695 () Bool)

(declare-fun tp!733693 () Bool)

(declare-fun setNonEmpty!20694 () Bool)

(declare-fun e!1482175 () Bool)

(declare-fun setElem!20694 () Context!4174)

(assert (=> setNonEmpty!20694 (= setRes!20695 (and tp!733693 (inv!37256 setElem!20694) e!1482175))))

(declare-fun mapValue!14882 () List!27632)

(declare-fun setRest!20694 () (InoxSet Context!4174))

(assert (=> setNonEmpty!20694 (= (_2!16242 (h!32935 mapValue!14882)) ((_ map or) (store ((as const (Array Context!4174 Bool)) false) setElem!20694 true) setRest!20694))))

(declare-fun e!1482173 () Bool)

(declare-fun tp!733696 () Bool)

(declare-fun tp_is_empty!10753 () Bool)

(declare-fun b!2312599 () Bool)

(declare-fun tp!733689 () Bool)

(declare-fun e!1482176 () Bool)

(assert (=> b!2312599 (= e!1482176 (and tp!733696 (inv!37256 (_2!16241 (_1!16242 (h!32935 mapValue!14882)))) e!1482173 tp_is_empty!10753 setRes!20695 tp!733689))))

(declare-fun condSetEmpty!20695 () Bool)

(assert (=> b!2312599 (= condSetEmpty!20695 (= (_2!16242 (h!32935 mapValue!14882)) ((as const (Array Context!4174 Bool)) false)))))

(declare-fun mapNonEmpty!14882 () Bool)

(declare-fun tp!733690 () Bool)

(assert (=> mapNonEmpty!14882 (= mapRes!14882 (and tp!733690 e!1482176))))

(declare-fun mapKey!14882 () (_ BitVec 32))

(declare-fun mapRest!14882 () (Array (_ BitVec 32) List!27632))

(assert (=> mapNonEmpty!14882 (= mapRest!14879 (store mapRest!14882 mapKey!14882 mapValue!14882))))

(declare-fun b!2312600 () Bool)

(declare-fun tp!733694 () Bool)

(assert (=> b!2312600 (= e!1482173 tp!733694)))

(declare-fun b!2312602 () Bool)

(declare-fun tp!733686 () Bool)

(assert (=> b!2312602 (= e!1482175 tp!733686)))

(declare-fun setIsEmpty!20695 () Bool)

(assert (=> setIsEmpty!20695 setRes!20695))

(declare-fun e!1482172 () Bool)

(declare-fun tp!733691 () Bool)

(declare-fun setElem!20695 () Context!4174)

(declare-fun setNonEmpty!20695 () Bool)

(assert (=> setNonEmpty!20695 (= setRes!20694 (and tp!733691 (inv!37256 setElem!20695) e!1482172))))

(declare-fun mapDefault!14882 () List!27632)

(declare-fun setRest!20695 () (InoxSet Context!4174))

(assert (=> setNonEmpty!20695 (= (_2!16242 (h!32935 mapDefault!14882)) ((_ map or) (store ((as const (Array Context!4174 Bool)) false) setElem!20695 true) setRest!20695))))

(declare-fun b!2312603 () Bool)

(declare-fun tp!733688 () Bool)

(assert (=> b!2312603 (= e!1482172 tp!733688)))

(declare-fun condMapEmpty!14882 () Bool)

(assert (=> mapNonEmpty!14878 (= condMapEmpty!14882 (= mapRest!14879 ((as const (Array (_ BitVec 32) List!27632)) mapDefault!14882)))))

(declare-fun e!1482174 () Bool)

(assert (=> mapNonEmpty!14878 (= tp!733658 (and e!1482174 mapRes!14882))))

(declare-fun tp!733695 () Bool)

(declare-fun tp!733687 () Bool)

(declare-fun b!2312601 () Bool)

(assert (=> b!2312601 (= e!1482174 (and tp!733687 (inv!37256 (_2!16241 (_1!16242 (h!32935 mapDefault!14882)))) e!1482177 tp_is_empty!10753 setRes!20694 tp!733695))))

(declare-fun condSetEmpty!20694 () Bool)

(assert (=> b!2312601 (= condSetEmpty!20694 (= (_2!16242 (h!32935 mapDefault!14882)) ((as const (Array Context!4174 Bool)) false)))))

(assert (= (and mapNonEmpty!14878 condMapEmpty!14882) mapIsEmpty!14882))

(assert (= (and mapNonEmpty!14878 (not condMapEmpty!14882)) mapNonEmpty!14882))

(assert (= b!2312599 b!2312600))

(assert (= (and b!2312599 condSetEmpty!20695) setIsEmpty!20695))

(assert (= (and b!2312599 (not condSetEmpty!20695)) setNonEmpty!20694))

(assert (= setNonEmpty!20694 b!2312602))

(assert (= (and mapNonEmpty!14882 ((_ is Cons!27534) mapValue!14882)) b!2312599))

(assert (= b!2312601 b!2312598))

(assert (= (and b!2312601 condSetEmpty!20694) setIsEmpty!20694))

(assert (= (and b!2312601 (not condSetEmpty!20694)) setNonEmpty!20695))

(assert (= setNonEmpty!20695 b!2312603))

(assert (= (and mapNonEmpty!14878 ((_ is Cons!27534) mapDefault!14882)) b!2312601))

(declare-fun m!2740047 () Bool)

(assert (=> b!2312601 m!2740047))

(declare-fun m!2740049 () Bool)

(assert (=> b!2312599 m!2740049))

(declare-fun m!2740051 () Bool)

(assert (=> setNonEmpty!20694 m!2740051))

(declare-fun m!2740053 () Bool)

(assert (=> setNonEmpty!20695 m!2740053))

(declare-fun m!2740055 () Bool)

(assert (=> mapNonEmpty!14882 m!2740055))

(declare-fun b!2312612 () Bool)

(declare-fun e!1482186 () Bool)

(declare-fun tp!733707 () Bool)

(assert (=> b!2312612 (= e!1482186 tp!733707)))

(declare-fun tp!733711 () Bool)

(declare-fun e!1482184 () Bool)

(declare-fun setRes!20698 () Bool)

(declare-fun tp!733708 () Bool)

(declare-fun b!2312613 () Bool)

(assert (=> b!2312613 (= e!1482184 (and tp!733711 (inv!37256 (_2!16241 (_1!16242 (h!32935 mapValue!14878)))) e!1482186 tp_is_empty!10753 setRes!20698 tp!733708))))

(declare-fun condSetEmpty!20698 () Bool)

(assert (=> b!2312613 (= condSetEmpty!20698 (= (_2!16242 (h!32935 mapValue!14878)) ((as const (Array Context!4174 Bool)) false)))))

(declare-fun setIsEmpty!20698 () Bool)

(assert (=> setIsEmpty!20698 setRes!20698))

(assert (=> mapNonEmpty!14878 (= tp!733650 e!1482184)))

(declare-fun e!1482185 () Bool)

(declare-fun tp!733709 () Bool)

(declare-fun setNonEmpty!20698 () Bool)

(declare-fun setElem!20698 () Context!4174)

(assert (=> setNonEmpty!20698 (= setRes!20698 (and tp!733709 (inv!37256 setElem!20698) e!1482185))))

(declare-fun setRest!20698 () (InoxSet Context!4174))

(assert (=> setNonEmpty!20698 (= (_2!16242 (h!32935 mapValue!14878)) ((_ map or) (store ((as const (Array Context!4174 Bool)) false) setElem!20698 true) setRest!20698))))

(declare-fun b!2312614 () Bool)

(declare-fun tp!733710 () Bool)

(assert (=> b!2312614 (= e!1482185 tp!733710)))

(assert (= b!2312613 b!2312612))

(assert (= (and b!2312613 condSetEmpty!20698) setIsEmpty!20698))

(assert (= (and b!2312613 (not condSetEmpty!20698)) setNonEmpty!20698))

(assert (= setNonEmpty!20698 b!2312614))

(assert (= (and mapNonEmpty!14878 ((_ is Cons!27534) mapValue!14878)) b!2312613))

(declare-fun m!2740057 () Bool)

(assert (=> b!2312613 m!2740057))

(declare-fun m!2740059 () Bool)

(assert (=> setNonEmpty!20698 m!2740059))

(declare-fun b!2312615 () Bool)

(declare-fun e!1482189 () Bool)

(declare-fun tp!733712 () Bool)

(assert (=> b!2312615 (= e!1482189 tp!733712)))

(declare-fun setRes!20699 () Bool)

(declare-fun e!1482187 () Bool)

(declare-fun tp!733713 () Bool)

(declare-fun b!2312616 () Bool)

(declare-fun tp!733716 () Bool)

(assert (=> b!2312616 (= e!1482187 (and tp!733716 (inv!37256 (_2!16241 (_1!16242 (h!32935 mapDefault!14878)))) e!1482189 tp_is_empty!10753 setRes!20699 tp!733713))))

(declare-fun condSetEmpty!20699 () Bool)

(assert (=> b!2312616 (= condSetEmpty!20699 (= (_2!16242 (h!32935 mapDefault!14878)) ((as const (Array Context!4174 Bool)) false)))))

(declare-fun setIsEmpty!20699 () Bool)

(assert (=> setIsEmpty!20699 setRes!20699))

(assert (=> b!2312500 (= tp!733654 e!1482187)))

(declare-fun setElem!20699 () Context!4174)

(declare-fun tp!733714 () Bool)

(declare-fun e!1482188 () Bool)

(declare-fun setNonEmpty!20699 () Bool)

(assert (=> setNonEmpty!20699 (= setRes!20699 (and tp!733714 (inv!37256 setElem!20699) e!1482188))))

(declare-fun setRest!20699 () (InoxSet Context!4174))

(assert (=> setNonEmpty!20699 (= (_2!16242 (h!32935 mapDefault!14878)) ((_ map or) (store ((as const (Array Context!4174 Bool)) false) setElem!20699 true) setRest!20699))))

(declare-fun b!2312617 () Bool)

(declare-fun tp!733715 () Bool)

(assert (=> b!2312617 (= e!1482188 tp!733715)))

(assert (= b!2312616 b!2312615))

(assert (= (and b!2312616 condSetEmpty!20699) setIsEmpty!20699))

(assert (= (and b!2312616 (not condSetEmpty!20699)) setNonEmpty!20699))

(assert (= setNonEmpty!20699 b!2312617))

(assert (= (and b!2312500 ((_ is Cons!27534) mapDefault!14878)) b!2312616))

(declare-fun m!2740061 () Bool)

(assert (=> b!2312616 m!2740061))

(declare-fun m!2740063 () Bool)

(assert (=> setNonEmpty!20699 m!2740063))

(declare-fun tp!733723 () Bool)

(declare-fun tp!733724 () Bool)

(declare-fun e!1482194 () Bool)

(declare-fun b!2312626 () Bool)

(assert (=> b!2312626 (= e!1482194 (and (inv!37260 (left!20886 (c!366671 input!5503))) tp!733723 (inv!37260 (right!21216 (c!366671 input!5503))) tp!733724))))

(declare-fun b!2312628 () Bool)

(declare-fun e!1482195 () Bool)

(declare-fun tp!733725 () Bool)

(assert (=> b!2312628 (= e!1482195 tp!733725)))

(declare-fun b!2312627 () Bool)

(declare-fun inv!37263 (IArray!17995) Bool)

(assert (=> b!2312627 (= e!1482194 (and (inv!37263 (xs!11937 (c!366671 input!5503))) e!1482195))))

(assert (=> b!2312499 (= tp!733663 (and (inv!37260 (c!366671 input!5503)) e!1482194))))

(assert (= (and b!2312499 ((_ is Node!8995) (c!366671 input!5503))) b!2312626))

(assert (= b!2312627 b!2312628))

(assert (= (and b!2312499 ((_ is Leaf!13199) (c!366671 input!5503))) b!2312627))

(declare-fun m!2740065 () Bool)

(assert (=> b!2312626 m!2740065))

(declare-fun m!2740067 () Bool)

(assert (=> b!2312626 m!2740067))

(declare-fun m!2740069 () Bool)

(assert (=> b!2312627 m!2740069))

(assert (=> b!2312499 m!2739939))

(declare-fun b!2312629 () Bool)

(declare-fun tp!733727 () Bool)

(declare-fun e!1482196 () Bool)

(declare-fun tp!733726 () Bool)

(assert (=> b!2312629 (= e!1482196 (and (inv!37260 (left!20886 (c!366671 totalInput!803))) tp!733726 (inv!37260 (right!21216 (c!366671 totalInput!803))) tp!733727))))

(declare-fun b!2312631 () Bool)

(declare-fun e!1482197 () Bool)

(declare-fun tp!733728 () Bool)

(assert (=> b!2312631 (= e!1482197 tp!733728)))

(declare-fun b!2312630 () Bool)

(assert (=> b!2312630 (= e!1482196 (and (inv!37263 (xs!11937 (c!366671 totalInput!803))) e!1482197))))

(assert (=> b!2312508 (= tp!733647 (and (inv!37260 (c!366671 totalInput!803)) e!1482196))))

(assert (= (and b!2312508 ((_ is Node!8995) (c!366671 totalInput!803))) b!2312629))

(assert (= b!2312630 b!2312631))

(assert (= (and b!2312508 ((_ is Leaf!13199) (c!366671 totalInput!803))) b!2312630))

(declare-fun m!2740071 () Bool)

(assert (=> b!2312629 m!2740071))

(declare-fun m!2740073 () Bool)

(assert (=> b!2312629 m!2740073))

(declare-fun m!2740075 () Bool)

(assert (=> b!2312630 m!2740075))

(assert (=> b!2312508 m!2739975))

(declare-fun condSetEmpty!20702 () Bool)

(assert (=> setNonEmpty!20689 (= condSetEmpty!20702 (= setRest!20689 ((as const (Array Context!4174 Bool)) false)))))

(declare-fun setRes!20702 () Bool)

(assert (=> setNonEmpty!20689 (= tp!733655 setRes!20702)))

(declare-fun setIsEmpty!20702 () Bool)

(assert (=> setIsEmpty!20702 setRes!20702))

(declare-fun setElem!20702 () Context!4174)

(declare-fun setNonEmpty!20702 () Bool)

(declare-fun tp!733734 () Bool)

(declare-fun e!1482200 () Bool)

(assert (=> setNonEmpty!20702 (= setRes!20702 (and tp!733734 (inv!37256 setElem!20702) e!1482200))))

(declare-fun setRest!20702 () (InoxSet Context!4174))

(assert (=> setNonEmpty!20702 (= setRest!20689 ((_ map or) (store ((as const (Array Context!4174 Bool)) false) setElem!20702 true) setRest!20702))))

(declare-fun b!2312636 () Bool)

(declare-fun tp!733733 () Bool)

(assert (=> b!2312636 (= e!1482200 tp!733733)))

(assert (= (and setNonEmpty!20689 condSetEmpty!20702) setIsEmpty!20702))

(assert (= (and setNonEmpty!20689 (not condSetEmpty!20702)) setNonEmpty!20702))

(assert (= setNonEmpty!20702 b!2312636))

(declare-fun m!2740077 () Bool)

(assert (=> setNonEmpty!20702 m!2740077))

(declare-fun b!2312651 () Bool)

(declare-fun e!1482218 () Bool)

(declare-fun tp!733759 () Bool)

(assert (=> b!2312651 (= e!1482218 tp!733759)))

(declare-fun mapNonEmpty!14885 () Bool)

(declare-fun mapRes!14885 () Bool)

(declare-fun tp!733754 () Bool)

(declare-fun e!1482217 () Bool)

(assert (=> mapNonEmpty!14885 (= mapRes!14885 (and tp!733754 e!1482217))))

(declare-fun mapKey!14885 () (_ BitVec 32))

(declare-fun mapValue!14885 () List!27633)

(declare-fun mapRest!14885 () (Array (_ BitVec 32) List!27633))

(assert (=> mapNonEmpty!14885 (= mapRest!14878 (store mapRest!14885 mapKey!14885 mapValue!14885))))

(declare-fun b!2312652 () Bool)

(declare-fun e!1482215 () Bool)

(declare-fun tp!733755 () Bool)

(assert (=> b!2312652 (= e!1482215 tp!733755)))

(declare-fun setElem!20708 () Context!4174)

(declare-fun tp!733760 () Bool)

(declare-fun setNonEmpty!20707 () Bool)

(declare-fun setRes!20708 () Bool)

(assert (=> setNonEmpty!20707 (= setRes!20708 (and tp!733760 (inv!37256 setElem!20708) e!1482218))))

(declare-fun mapDefault!14885 () List!27633)

(declare-fun setRest!20707 () (InoxSet Context!4174))

(assert (=> setNonEmpty!20707 (= (_2!16244 (h!32936 mapDefault!14885)) ((_ map or) (store ((as const (Array Context!4174 Bool)) false) setElem!20708 true) setRest!20707))))

(declare-fun setRes!20707 () Bool)

(declare-fun setElem!20707 () Context!4174)

(declare-fun setNonEmpty!20708 () Bool)

(declare-fun tp!733756 () Bool)

(assert (=> setNonEmpty!20708 (= setRes!20707 (and tp!733756 (inv!37256 setElem!20707) e!1482215))))

(declare-fun setRest!20708 () (InoxSet Context!4174))

(assert (=> setNonEmpty!20708 (= (_2!16244 (h!32936 mapValue!14885)) ((_ map or) (store ((as const (Array Context!4174 Bool)) false) setElem!20707 true) setRest!20708))))

(declare-fun tp!733761 () Bool)

(declare-fun b!2312653 () Bool)

(declare-fun e!1482213 () Bool)

(assert (=> b!2312653 (= e!1482217 (and (inv!37256 (_1!16243 (_1!16244 (h!32936 mapValue!14885)))) e!1482213 tp_is_empty!10753 setRes!20707 tp!733761))))

(declare-fun condSetEmpty!20708 () Bool)

(assert (=> b!2312653 (= condSetEmpty!20708 (= (_2!16244 (h!32936 mapValue!14885)) ((as const (Array Context!4174 Bool)) false)))))

(declare-fun mapIsEmpty!14885 () Bool)

(assert (=> mapIsEmpty!14885 mapRes!14885))

(declare-fun setIsEmpty!20707 () Bool)

(assert (=> setIsEmpty!20707 setRes!20708))

(declare-fun b!2312654 () Bool)

(declare-fun e!1482216 () Bool)

(declare-fun tp!733758 () Bool)

(assert (=> b!2312654 (= e!1482216 tp!733758)))

(declare-fun setIsEmpty!20708 () Bool)

(assert (=> setIsEmpty!20708 setRes!20707))

(declare-fun b!2312655 () Bool)

(declare-fun tp!733757 () Bool)

(assert (=> b!2312655 (= e!1482213 tp!733757)))

(declare-fun tp!733753 () Bool)

(declare-fun b!2312656 () Bool)

(declare-fun e!1482214 () Bool)

(assert (=> b!2312656 (= e!1482214 (and (inv!37256 (_1!16243 (_1!16244 (h!32936 mapDefault!14885)))) e!1482216 tp_is_empty!10753 setRes!20708 tp!733753))))

(declare-fun condSetEmpty!20707 () Bool)

(assert (=> b!2312656 (= condSetEmpty!20707 (= (_2!16244 (h!32936 mapDefault!14885)) ((as const (Array Context!4174 Bool)) false)))))

(declare-fun condMapEmpty!14885 () Bool)

(assert (=> mapNonEmpty!14879 (= condMapEmpty!14885 (= mapRest!14878 ((as const (Array (_ BitVec 32) List!27633)) mapDefault!14885)))))

(assert (=> mapNonEmpty!14879 (= tp!733662 (and e!1482214 mapRes!14885))))

(assert (= (and mapNonEmpty!14879 condMapEmpty!14885) mapIsEmpty!14885))

(assert (= (and mapNonEmpty!14879 (not condMapEmpty!14885)) mapNonEmpty!14885))

(assert (= b!2312653 b!2312655))

(assert (= (and b!2312653 condSetEmpty!20708) setIsEmpty!20708))

(assert (= (and b!2312653 (not condSetEmpty!20708)) setNonEmpty!20708))

(assert (= setNonEmpty!20708 b!2312652))

(assert (= (and mapNonEmpty!14885 ((_ is Cons!27535) mapValue!14885)) b!2312653))

(assert (= b!2312656 b!2312654))

(assert (= (and b!2312656 condSetEmpty!20707) setIsEmpty!20707))

(assert (= (and b!2312656 (not condSetEmpty!20707)) setNonEmpty!20707))

(assert (= setNonEmpty!20707 b!2312651))

(assert (= (and mapNonEmpty!14879 ((_ is Cons!27535) mapDefault!14885)) b!2312656))

(declare-fun m!2740079 () Bool)

(assert (=> mapNonEmpty!14885 m!2740079))

(declare-fun m!2740081 () Bool)

(assert (=> b!2312656 m!2740081))

(declare-fun m!2740083 () Bool)

(assert (=> setNonEmpty!20708 m!2740083))

(declare-fun m!2740085 () Bool)

(assert (=> b!2312653 m!2740085))

(declare-fun m!2740087 () Bool)

(assert (=> setNonEmpty!20707 m!2740087))

(declare-fun e!1482227 () Bool)

(assert (=> mapNonEmpty!14879 (= tp!733653 e!1482227)))

(declare-fun b!2312665 () Bool)

(declare-fun tp!733772 () Bool)

(declare-fun setRes!20711 () Bool)

(declare-fun e!1482225 () Bool)

(assert (=> b!2312665 (= e!1482227 (and (inv!37256 (_1!16243 (_1!16244 (h!32936 mapValue!14879)))) e!1482225 tp_is_empty!10753 setRes!20711 tp!733772))))

(declare-fun condSetEmpty!20711 () Bool)

(assert (=> b!2312665 (= condSetEmpty!20711 (= (_2!16244 (h!32936 mapValue!14879)) ((as const (Array Context!4174 Bool)) false)))))

(declare-fun b!2312666 () Bool)

(declare-fun tp!733770 () Bool)

(assert (=> b!2312666 (= e!1482225 tp!733770)))

(declare-fun tp!733773 () Bool)

(declare-fun e!1482226 () Bool)

(declare-fun setElem!20711 () Context!4174)

(declare-fun setNonEmpty!20711 () Bool)

(assert (=> setNonEmpty!20711 (= setRes!20711 (and tp!733773 (inv!37256 setElem!20711) e!1482226))))

(declare-fun setRest!20711 () (InoxSet Context!4174))

(assert (=> setNonEmpty!20711 (= (_2!16244 (h!32936 mapValue!14879)) ((_ map or) (store ((as const (Array Context!4174 Bool)) false) setElem!20711 true) setRest!20711))))

(declare-fun setIsEmpty!20711 () Bool)

(assert (=> setIsEmpty!20711 setRes!20711))

(declare-fun b!2312667 () Bool)

(declare-fun tp!733771 () Bool)

(assert (=> b!2312667 (= e!1482226 tp!733771)))

(assert (= b!2312665 b!2312666))

(assert (= (and b!2312665 condSetEmpty!20711) setIsEmpty!20711))

(assert (= (and b!2312665 (not condSetEmpty!20711)) setNonEmpty!20711))

(assert (= setNonEmpty!20711 b!2312667))

(assert (= (and mapNonEmpty!14879 ((_ is Cons!27535) mapValue!14879)) b!2312665))

(declare-fun m!2740089 () Bool)

(assert (=> b!2312665 m!2740089))

(declare-fun m!2740091 () Bool)

(assert (=> setNonEmpty!20711 m!2740091))

(declare-fun b!2312668 () Bool)

(declare-fun e!1482230 () Bool)

(declare-fun tp!733774 () Bool)

(assert (=> b!2312668 (= e!1482230 tp!733774)))

(declare-fun setRes!20712 () Bool)

(declare-fun tp!733778 () Bool)

(declare-fun e!1482228 () Bool)

(declare-fun b!2312669 () Bool)

(declare-fun tp!733775 () Bool)

(assert (=> b!2312669 (= e!1482228 (and tp!733778 (inv!37256 (_2!16241 (_1!16242 (h!32935 (zeroValue!3436 (v!30595 (underlying!6561 (v!30596 (underlying!6562 (cache!3467 cacheDown!1056)))))))))) e!1482230 tp_is_empty!10753 setRes!20712 tp!733775))))

(declare-fun condSetEmpty!20712 () Bool)

(assert (=> b!2312669 (= condSetEmpty!20712 (= (_2!16242 (h!32935 (zeroValue!3436 (v!30595 (underlying!6561 (v!30596 (underlying!6562 (cache!3467 cacheDown!1056)))))))) ((as const (Array Context!4174 Bool)) false)))))

(declare-fun setIsEmpty!20712 () Bool)

(assert (=> setIsEmpty!20712 setRes!20712))

(assert (=> b!2312494 (= tp!733651 e!1482228)))

(declare-fun setElem!20712 () Context!4174)

(declare-fun setNonEmpty!20712 () Bool)

(declare-fun e!1482229 () Bool)

(declare-fun tp!733776 () Bool)

(assert (=> setNonEmpty!20712 (= setRes!20712 (and tp!733776 (inv!37256 setElem!20712) e!1482229))))

(declare-fun setRest!20712 () (InoxSet Context!4174))

(assert (=> setNonEmpty!20712 (= (_2!16242 (h!32935 (zeroValue!3436 (v!30595 (underlying!6561 (v!30596 (underlying!6562 (cache!3467 cacheDown!1056)))))))) ((_ map or) (store ((as const (Array Context!4174 Bool)) false) setElem!20712 true) setRest!20712))))

(declare-fun b!2312670 () Bool)

(declare-fun tp!733777 () Bool)

(assert (=> b!2312670 (= e!1482229 tp!733777)))

(assert (= b!2312669 b!2312668))

(assert (= (and b!2312669 condSetEmpty!20712) setIsEmpty!20712))

(assert (= (and b!2312669 (not condSetEmpty!20712)) setNonEmpty!20712))

(assert (= setNonEmpty!20712 b!2312670))

(assert (= (and b!2312494 ((_ is Cons!27534) (zeroValue!3436 (v!30595 (underlying!6561 (v!30596 (underlying!6562 (cache!3467 cacheDown!1056)))))))) b!2312669))

(declare-fun m!2740093 () Bool)

(assert (=> b!2312669 m!2740093))

(declare-fun m!2740095 () Bool)

(assert (=> setNonEmpty!20712 m!2740095))

(declare-fun b!2312671 () Bool)

(declare-fun e!1482233 () Bool)

(declare-fun tp!733779 () Bool)

(assert (=> b!2312671 (= e!1482233 tp!733779)))

(declare-fun tp!733783 () Bool)

(declare-fun b!2312672 () Bool)

(declare-fun tp!733780 () Bool)

(declare-fun setRes!20713 () Bool)

(declare-fun e!1482231 () Bool)

(assert (=> b!2312672 (= e!1482231 (and tp!733783 (inv!37256 (_2!16241 (_1!16242 (h!32935 (minValue!3436 (v!30595 (underlying!6561 (v!30596 (underlying!6562 (cache!3467 cacheDown!1056)))))))))) e!1482233 tp_is_empty!10753 setRes!20713 tp!733780))))

(declare-fun condSetEmpty!20713 () Bool)

(assert (=> b!2312672 (= condSetEmpty!20713 (= (_2!16242 (h!32935 (minValue!3436 (v!30595 (underlying!6561 (v!30596 (underlying!6562 (cache!3467 cacheDown!1056)))))))) ((as const (Array Context!4174 Bool)) false)))))

(declare-fun setIsEmpty!20713 () Bool)

(assert (=> setIsEmpty!20713 setRes!20713))

(assert (=> b!2312494 (= tp!733659 e!1482231)))

(declare-fun e!1482232 () Bool)

(declare-fun setElem!20713 () Context!4174)

(declare-fun setNonEmpty!20713 () Bool)

(declare-fun tp!733781 () Bool)

(assert (=> setNonEmpty!20713 (= setRes!20713 (and tp!733781 (inv!37256 setElem!20713) e!1482232))))

(declare-fun setRest!20713 () (InoxSet Context!4174))

(assert (=> setNonEmpty!20713 (= (_2!16242 (h!32935 (minValue!3436 (v!30595 (underlying!6561 (v!30596 (underlying!6562 (cache!3467 cacheDown!1056)))))))) ((_ map or) (store ((as const (Array Context!4174 Bool)) false) setElem!20713 true) setRest!20713))))

(declare-fun b!2312673 () Bool)

(declare-fun tp!733782 () Bool)

(assert (=> b!2312673 (= e!1482232 tp!733782)))

(assert (= b!2312672 b!2312671))

(assert (= (and b!2312672 condSetEmpty!20713) setIsEmpty!20713))

(assert (= (and b!2312672 (not condSetEmpty!20713)) setNonEmpty!20713))

(assert (= setNonEmpty!20713 b!2312673))

(assert (= (and b!2312494 ((_ is Cons!27534) (minValue!3436 (v!30595 (underlying!6561 (v!30596 (underlying!6562 (cache!3467 cacheDown!1056)))))))) b!2312672))

(declare-fun m!2740097 () Bool)

(assert (=> b!2312672 m!2740097))

(declare-fun m!2740099 () Bool)

(assert (=> setNonEmpty!20713 m!2740099))

(declare-fun b!2312678 () Bool)

(declare-fun e!1482236 () Bool)

(declare-fun tp!733788 () Bool)

(declare-fun tp!733789 () Bool)

(assert (=> b!2312678 (= e!1482236 (and tp!733788 tp!733789))))

(assert (=> b!2312502 (= tp!733646 e!1482236)))

(assert (= (and b!2312502 ((_ is Cons!27532) (exprs!2587 setElem!20689))) b!2312678))

(declare-fun e!1482239 () Bool)

(assert (=> b!2312501 (= tp!733657 e!1482239)))

(declare-fun e!1482237 () Bool)

(declare-fun tp!733792 () Bool)

(declare-fun b!2312679 () Bool)

(declare-fun setRes!20714 () Bool)

(assert (=> b!2312679 (= e!1482239 (and (inv!37256 (_1!16243 (_1!16244 (h!32936 mapDefault!14879)))) e!1482237 tp_is_empty!10753 setRes!20714 tp!733792))))

(declare-fun condSetEmpty!20714 () Bool)

(assert (=> b!2312679 (= condSetEmpty!20714 (= (_2!16244 (h!32936 mapDefault!14879)) ((as const (Array Context!4174 Bool)) false)))))

(declare-fun b!2312680 () Bool)

(declare-fun tp!733790 () Bool)

(assert (=> b!2312680 (= e!1482237 tp!733790)))

(declare-fun e!1482238 () Bool)

(declare-fun setNonEmpty!20714 () Bool)

(declare-fun setElem!20714 () Context!4174)

(declare-fun tp!733793 () Bool)

(assert (=> setNonEmpty!20714 (= setRes!20714 (and tp!733793 (inv!37256 setElem!20714) e!1482238))))

(declare-fun setRest!20714 () (InoxSet Context!4174))

(assert (=> setNonEmpty!20714 (= (_2!16244 (h!32936 mapDefault!14879)) ((_ map or) (store ((as const (Array Context!4174 Bool)) false) setElem!20714 true) setRest!20714))))

(declare-fun setIsEmpty!20714 () Bool)

(assert (=> setIsEmpty!20714 setRes!20714))

(declare-fun b!2312681 () Bool)

(declare-fun tp!733791 () Bool)

(assert (=> b!2312681 (= e!1482238 tp!733791)))

(assert (= b!2312679 b!2312680))

(assert (= (and b!2312679 condSetEmpty!20714) setIsEmpty!20714))

(assert (= (and b!2312679 (not condSetEmpty!20714)) setNonEmpty!20714))

(assert (= setNonEmpty!20714 b!2312681))

(assert (= (and b!2312501 ((_ is Cons!27535) mapDefault!14879)) b!2312679))

(declare-fun m!2740101 () Bool)

(assert (=> b!2312679 m!2740101))

(declare-fun m!2740103 () Bool)

(assert (=> setNonEmpty!20714 m!2740103))

(declare-fun e!1482242 () Bool)

(assert (=> b!2312511 (= tp!733649 e!1482242)))

(declare-fun b!2312682 () Bool)

(declare-fun setRes!20715 () Bool)

(declare-fun e!1482240 () Bool)

(declare-fun tp!733796 () Bool)

(assert (=> b!2312682 (= e!1482242 (and (inv!37256 (_1!16243 (_1!16244 (h!32936 (zeroValue!3437 (v!30597 (underlying!6563 (v!30598 (underlying!6564 (cache!3468 cacheUp!937)))))))))) e!1482240 tp_is_empty!10753 setRes!20715 tp!733796))))

(declare-fun condSetEmpty!20715 () Bool)

(assert (=> b!2312682 (= condSetEmpty!20715 (= (_2!16244 (h!32936 (zeroValue!3437 (v!30597 (underlying!6563 (v!30598 (underlying!6564 (cache!3468 cacheUp!937)))))))) ((as const (Array Context!4174 Bool)) false)))))

(declare-fun b!2312683 () Bool)

(declare-fun tp!733794 () Bool)

(assert (=> b!2312683 (= e!1482240 tp!733794)))

(declare-fun setElem!20715 () Context!4174)

(declare-fun setNonEmpty!20715 () Bool)

(declare-fun tp!733797 () Bool)

(declare-fun e!1482241 () Bool)

(assert (=> setNonEmpty!20715 (= setRes!20715 (and tp!733797 (inv!37256 setElem!20715) e!1482241))))

(declare-fun setRest!20715 () (InoxSet Context!4174))

(assert (=> setNonEmpty!20715 (= (_2!16244 (h!32936 (zeroValue!3437 (v!30597 (underlying!6563 (v!30598 (underlying!6564 (cache!3468 cacheUp!937)))))))) ((_ map or) (store ((as const (Array Context!4174 Bool)) false) setElem!20715 true) setRest!20715))))

(declare-fun setIsEmpty!20715 () Bool)

(assert (=> setIsEmpty!20715 setRes!20715))

(declare-fun b!2312684 () Bool)

(declare-fun tp!733795 () Bool)

(assert (=> b!2312684 (= e!1482241 tp!733795)))

(assert (= b!2312682 b!2312683))

(assert (= (and b!2312682 condSetEmpty!20715) setIsEmpty!20715))

(assert (= (and b!2312682 (not condSetEmpty!20715)) setNonEmpty!20715))

(assert (= setNonEmpty!20715 b!2312684))

(assert (= (and b!2312511 ((_ is Cons!27535) (zeroValue!3437 (v!30597 (underlying!6563 (v!30598 (underlying!6564 (cache!3468 cacheUp!937)))))))) b!2312682))

(declare-fun m!2740105 () Bool)

(assert (=> b!2312682 m!2740105))

(declare-fun m!2740107 () Bool)

(assert (=> setNonEmpty!20715 m!2740107))

(declare-fun e!1482245 () Bool)

(assert (=> b!2312511 (= tp!733656 e!1482245)))

(declare-fun tp!733800 () Bool)

(declare-fun setRes!20716 () Bool)

(declare-fun b!2312685 () Bool)

(declare-fun e!1482243 () Bool)

(assert (=> b!2312685 (= e!1482245 (and (inv!37256 (_1!16243 (_1!16244 (h!32936 (minValue!3437 (v!30597 (underlying!6563 (v!30598 (underlying!6564 (cache!3468 cacheUp!937)))))))))) e!1482243 tp_is_empty!10753 setRes!20716 tp!733800))))

(declare-fun condSetEmpty!20716 () Bool)

(assert (=> b!2312685 (= condSetEmpty!20716 (= (_2!16244 (h!32936 (minValue!3437 (v!30597 (underlying!6563 (v!30598 (underlying!6564 (cache!3468 cacheUp!937)))))))) ((as const (Array Context!4174 Bool)) false)))))

(declare-fun b!2312686 () Bool)

(declare-fun tp!733798 () Bool)

(assert (=> b!2312686 (= e!1482243 tp!733798)))

(declare-fun e!1482244 () Bool)

(declare-fun setElem!20716 () Context!4174)

(declare-fun setNonEmpty!20716 () Bool)

(declare-fun tp!733801 () Bool)

(assert (=> setNonEmpty!20716 (= setRes!20716 (and tp!733801 (inv!37256 setElem!20716) e!1482244))))

(declare-fun setRest!20716 () (InoxSet Context!4174))

(assert (=> setNonEmpty!20716 (= (_2!16244 (h!32936 (minValue!3437 (v!30597 (underlying!6563 (v!30598 (underlying!6564 (cache!3468 cacheUp!937)))))))) ((_ map or) (store ((as const (Array Context!4174 Bool)) false) setElem!20716 true) setRest!20716))))

(declare-fun setIsEmpty!20716 () Bool)

(assert (=> setIsEmpty!20716 setRes!20716))

(declare-fun b!2312687 () Bool)

(declare-fun tp!733799 () Bool)

(assert (=> b!2312687 (= e!1482244 tp!733799)))

(assert (= b!2312685 b!2312686))

(assert (= (and b!2312685 condSetEmpty!20716) setIsEmpty!20716))

(assert (= (and b!2312685 (not condSetEmpty!20716)) setNonEmpty!20716))

(assert (= setNonEmpty!20716 b!2312687))

(assert (= (and b!2312511 ((_ is Cons!27535) (minValue!3437 (v!30597 (underlying!6563 (v!30598 (underlying!6564 (cache!3468 cacheUp!937)))))))) b!2312685))

(declare-fun m!2740109 () Bool)

(assert (=> b!2312685 m!2740109))

(declare-fun m!2740111 () Bool)

(assert (=> setNonEmpty!20716 m!2740111))

(check-sat (not b!2312573) (not b!2312654) (not b!2312570) (not b!2312672) (not b!2312651) (not b_next!70723) (not b!2312523) (not d!684236) (not b!2312508) (not b!2312615) (not d!684218) (not b!2312627) (not b!2312617) (not d!684226) (not b!2312547) (not b!2312602) (not b!2312655) (not b!2312687) (not b!2312685) (not b!2312683) (not setNonEmpty!20712) (not b!2312682) b_and!184917 (not b!2312598) (not b!2312499) (not b!2312571) (not b!2312628) (not b!2312629) (not d!684230) (not b!2312612) (not b!2312520) (not b!2312652) (not b!2312599) b_and!184913 (not setNonEmpty!20695) (not b!2312656) (not b!2312631) (not b!2312673) (not b!2312556) (not b!2312572) (not setNonEmpty!20702) (not b!2312630) (not b!2312669) (not setNonEmpty!20699) (not setNonEmpty!20715) (not b!2312680) (not b!2312580) (not d!684224) (not setNonEmpty!20708) (not b!2312679) (not d!684228) (not b!2312665) (not b!2312636) (not setNonEmpty!20711) (not b!2312545) (not b!2312518) (not b!2312616) (not d!684204) (not b!2312678) (not b!2312544) (not b!2312670) (not b!2312671) (not b!2312626) (not mapNonEmpty!14885) (not setNonEmpty!20694) (not b!2312600) (not b!2312684) (not setNonEmpty!20707) b_and!184919 (not b!2312521) tp_is_empty!10753 (not b!2312686) (not setNonEmpty!20716) (not d!684220) (not b!2312668) (not d!684214) (not b!2312554) (not b!2312569) (not b!2312653) (not b!2312583) (not d!684208) (not b!2312614) (not b!2312574) (not b!2312577) (not b!2312613) (not d!684242) (not setNonEmpty!20698) (not setNonEmpty!20714) (not b!2312555) (not b!2312667) (not b_next!70717) (not b!2312681) (not b!2312666) (not b!2312603) (not b!2312601) b_and!184915 (not b_next!70721) (not b_next!70719) (not mapNonEmpty!14882) (not b!2312543) (not setNonEmpty!20713))
(check-sat (not b_next!70723) b_and!184917 b_and!184913 b_and!184919 (not b_next!70717) b_and!184915 (not b_next!70721) (not b_next!70719))
