; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14406 () Bool)

(assert start!14406)

(declare-fun b!137063 () Bool)

(declare-fun b_free!3997 () Bool)

(declare-fun b_next!3997 () Bool)

(assert (=> b!137063 (= b_free!3997 (not b_next!3997))))

(declare-fun tp!71387 () Bool)

(declare-fun b_and!6149 () Bool)

(assert (=> b!137063 (= tp!71387 b_and!6149)))

(declare-fun b!137062 () Bool)

(declare-fun b_free!3999 () Bool)

(declare-fun b_next!3999 () Bool)

(assert (=> b!137062 (= b_free!3999 (not b_next!3999))))

(declare-fun tp!71390 () Bool)

(declare-fun b_and!6151 () Bool)

(assert (=> b!137062 (= tp!71390 b_and!6151)))

(declare-datatypes ((array!1687 0))(
  ( (array!1688 (arr!782 (Array (_ BitVec 32) (_ BitVec 64))) (size!2036 (_ BitVec 32))) )
))
(declare-datatypes ((C!2096 0))(
  ( (C!2097 (val!934 Int)) )
))
(declare-datatypes ((Regex!587 0))(
  ( (ElementMatch!587 (c!29028 C!2096)) (Concat!983 (regOne!1686 Regex!587) (regTwo!1686 Regex!587)) (EmptyExpr!587) (Star!587 (reg!916 Regex!587)) (EmptyLang!587) (Union!587 (regOne!1687 Regex!587) (regTwo!1687 Regex!587)) )
))
(declare-datatypes ((List!2263 0))(
  ( (Nil!2253) (Cons!2253 (h!7650 Regex!587) (t!22849 List!2263)) )
))
(declare-datatypes ((Context!254 0))(
  ( (Context!255 (exprs!627 List!2263)) )
))
(declare-datatypes ((tuple2!2436 0))(
  ( (tuple2!2437 (_1!1428 Context!254) (_2!1428 C!2096)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!2438 0))(
  ( (tuple2!2439 (_1!1429 tuple2!2436) (_2!1429 (InoxSet Context!254))) )
))
(declare-datatypes ((List!2264 0))(
  ( (Nil!2254) (Cons!2254 (h!7651 tuple2!2438) (t!22850 List!2264)) )
))
(declare-datatypes ((array!1689 0))(
  ( (array!1690 (arr!783 (Array (_ BitVec 32) List!2264)) (size!2037 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!898 0))(
  ( (LongMapFixedSize!899 (defaultEntry!796 Int) (mask!1494 (_ BitVec 32)) (extraKeys!695 (_ BitVec 32)) (zeroValue!705 List!2264) (minValue!705 List!2264) (_size!1015 (_ BitVec 32)) (_keys!740 array!1687) (_values!727 array!1689) (_vacant!510 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1753 0))(
  ( (Cell!1754 (v!13498 LongMapFixedSize!898)) )
))
(declare-datatypes ((MutLongMap!449 0))(
  ( (LongMap!449 (underlying!1085 Cell!1753)) (MutLongMapExt!448 (__x!2252 Int)) )
))
(declare-datatypes ((Cell!1755 0))(
  ( (Cell!1756 (v!13499 MutLongMap!449)) )
))
(declare-datatypes ((Hashable!429 0))(
  ( (HashableExt!428 (__x!2253 Int)) )
))
(declare-datatypes ((MutableMap!429 0))(
  ( (MutableMapExt!428 (__x!2254 Int)) (HashMap!429 (underlying!1086 Cell!1755) (hashF!2305 Hashable!429) (_size!1016 (_ BitVec 32)) (defaultValue!578 Int)) )
))
(declare-datatypes ((CacheUp!186 0))(
  ( (CacheUp!187 (cache!882 MutableMap!429)) )
))
(declare-fun thiss!28652 () CacheUp!186)

(get-info :version)

(assert (=> start!14406 (not ((_ is HashMap!429) (cache!882 thiss!28652)))))

(declare-fun e!79791 () Bool)

(declare-fun inv!2982 (CacheUp!186) Bool)

(assert (=> start!14406 (and (inv!2982 thiss!28652) e!79791)))

(declare-fun e!79787 () Bool)

(declare-fun e!79793 () Bool)

(assert (=> b!137062 (= e!79787 (and e!79793 tp!71390))))

(declare-fun mapIsEmpty!1730 () Bool)

(declare-fun mapRes!1730 () Bool)

(assert (=> mapIsEmpty!1730 mapRes!1730))

(declare-fun mapNonEmpty!1730 () Bool)

(declare-fun tp!71392 () Bool)

(declare-fun tp!71386 () Bool)

(assert (=> mapNonEmpty!1730 (= mapRes!1730 (and tp!71392 tp!71386))))

(declare-fun mapKey!1730 () (_ BitVec 32))

(declare-fun mapRest!1730 () (Array (_ BitVec 32) List!2264))

(declare-fun mapValue!1730 () List!2264)

(assert (=> mapNonEmpty!1730 (= (arr!783 (_values!727 (v!13498 (underlying!1085 (v!13499 (underlying!1086 (cache!882 thiss!28652))))))) (store mapRest!1730 mapKey!1730 mapValue!1730))))

(declare-fun e!79788 () Bool)

(declare-fun e!79790 () Bool)

(declare-fun tp!71388 () Bool)

(declare-fun tp!71391 () Bool)

(declare-fun array_inv!567 (array!1687) Bool)

(declare-fun array_inv!568 (array!1689) Bool)

(assert (=> b!137063 (= e!79788 (and tp!71387 tp!71388 tp!71391 (array_inv!567 (_keys!740 (v!13498 (underlying!1085 (v!13499 (underlying!1086 (cache!882 thiss!28652))))))) (array_inv!568 (_values!727 (v!13498 (underlying!1085 (v!13499 (underlying!1086 (cache!882 thiss!28652))))))) e!79790))))

(declare-fun b!137064 () Bool)

(declare-fun e!79786 () Bool)

(declare-fun e!79789 () Bool)

(assert (=> b!137064 (= e!79786 e!79789)))

(declare-fun b!137065 () Bool)

(declare-fun tp!71389 () Bool)

(assert (=> b!137065 (= e!79790 (and tp!71389 mapRes!1730))))

(declare-fun condMapEmpty!1730 () Bool)

(declare-fun mapDefault!1730 () List!2264)

(assert (=> b!137065 (= condMapEmpty!1730 (= (arr!783 (_values!727 (v!13498 (underlying!1085 (v!13499 (underlying!1086 (cache!882 thiss!28652))))))) ((as const (Array (_ BitVec 32) List!2264)) mapDefault!1730)))))

(declare-fun b!137066 () Bool)

(declare-fun lt!41002 () MutLongMap!449)

(assert (=> b!137066 (= e!79793 (and e!79786 ((_ is LongMap!449) lt!41002)))))

(assert (=> b!137066 (= lt!41002 (v!13499 (underlying!1086 (cache!882 thiss!28652))))))

(declare-fun b!137067 () Bool)

(assert (=> b!137067 (= e!79789 e!79788)))

(declare-fun b!137068 () Bool)

(assert (=> b!137068 (= e!79791 e!79787)))

(assert (= (and b!137065 condMapEmpty!1730) mapIsEmpty!1730))

(assert (= (and b!137065 (not condMapEmpty!1730)) mapNonEmpty!1730))

(assert (= b!137063 b!137065))

(assert (= b!137067 b!137063))

(assert (= b!137064 b!137067))

(assert (= (and b!137066 ((_ is LongMap!449) (v!13499 (underlying!1086 (cache!882 thiss!28652))))) b!137064))

(assert (= b!137062 b!137066))

(assert (= (and b!137068 ((_ is HashMap!429) (cache!882 thiss!28652))) b!137062))

(assert (= start!14406 b!137068))

(declare-fun m!121437 () Bool)

(assert (=> start!14406 m!121437))

(declare-fun m!121439 () Bool)

(assert (=> mapNonEmpty!1730 m!121439))

(declare-fun m!121441 () Bool)

(assert (=> b!137063 m!121441))

(declare-fun m!121443 () Bool)

(assert (=> b!137063 m!121443))

(check-sat (not b!137065) (not b_next!3997) (not b!137063) b_and!6149 (not b_next!3999) b_and!6151 (not start!14406) (not mapNonEmpty!1730))
(check-sat b_and!6149 b_and!6151 (not b_next!3999) (not b_next!3997))
(get-model)

(declare-fun d!32865 () Bool)

(assert (=> d!32865 (= (array_inv!567 (_keys!740 (v!13498 (underlying!1085 (v!13499 (underlying!1086 (cache!882 thiss!28652))))))) (bvsge (size!2036 (_keys!740 (v!13498 (underlying!1085 (v!13499 (underlying!1086 (cache!882 thiss!28652))))))) #b00000000000000000000000000000000))))

(assert (=> b!137063 d!32865))

(declare-fun d!32867 () Bool)

(assert (=> d!32867 (= (array_inv!568 (_values!727 (v!13498 (underlying!1085 (v!13499 (underlying!1086 (cache!882 thiss!28652))))))) (bvsge (size!2037 (_values!727 (v!13498 (underlying!1085 (v!13499 (underlying!1086 (cache!882 thiss!28652))))))) #b00000000000000000000000000000000))))

(assert (=> b!137063 d!32867))

(declare-fun d!32869 () Bool)

(declare-fun res!64253 () Bool)

(declare-fun e!79796 () Bool)

(assert (=> d!32869 (=> (not res!64253) (not e!79796))))

(assert (=> d!32869 (= res!64253 ((_ is HashMap!429) (cache!882 thiss!28652)))))

(assert (=> d!32869 (= (inv!2982 thiss!28652) e!79796)))

(declare-fun b!137071 () Bool)

(declare-fun validCacheMapUp!27 (MutableMap!429) Bool)

(assert (=> b!137071 (= e!79796 (validCacheMapUp!27 (cache!882 thiss!28652)))))

(assert (= (and d!32869 res!64253) b!137071))

(declare-fun m!121445 () Bool)

(assert (=> b!137071 m!121445))

(assert (=> start!14406 d!32869))

(declare-fun setIsEmpty!1737 () Bool)

(declare-fun setRes!1737 () Bool)

(assert (=> setIsEmpty!1737 setRes!1737))

(declare-fun e!79804 () Bool)

(assert (=> b!137065 (= tp!71389 e!79804)))

(declare-fun setNonEmpty!1737 () Bool)

(declare-fun tp!71402 () Bool)

(declare-fun e!79805 () Bool)

(declare-fun setElem!1737 () Context!254)

(declare-fun inv!2983 (Context!254) Bool)

(assert (=> setNonEmpty!1737 (= setRes!1737 (and tp!71402 (inv!2983 setElem!1737) e!79805))))

(declare-fun setRest!1737 () (InoxSet Context!254))

(assert (=> setNonEmpty!1737 (= (_2!1429 (h!7651 mapDefault!1730)) ((_ map or) (store ((as const (Array Context!254 Bool)) false) setElem!1737 true) setRest!1737))))

(declare-fun b!137080 () Bool)

(declare-fun e!79803 () Bool)

(declare-fun tp!71404 () Bool)

(assert (=> b!137080 (= e!79803 tp!71404)))

(declare-fun b!137081 () Bool)

(declare-fun tp!71403 () Bool)

(assert (=> b!137081 (= e!79805 tp!71403)))

(declare-fun tp!71401 () Bool)

(declare-fun b!137082 () Bool)

(declare-fun tp_is_empty!1539 () Bool)

(assert (=> b!137082 (= e!79804 (and (inv!2983 (_1!1428 (_1!1429 (h!7651 mapDefault!1730)))) e!79803 tp_is_empty!1539 setRes!1737 tp!71401))))

(declare-fun condSetEmpty!1737 () Bool)

(assert (=> b!137082 (= condSetEmpty!1737 (= (_2!1429 (h!7651 mapDefault!1730)) ((as const (Array Context!254 Bool)) false)))))

(assert (= b!137082 b!137080))

(assert (= (and b!137082 condSetEmpty!1737) setIsEmpty!1737))

(assert (= (and b!137082 (not condSetEmpty!1737)) setNonEmpty!1737))

(assert (= setNonEmpty!1737 b!137081))

(assert (= (and b!137065 ((_ is Cons!2254) mapDefault!1730)) b!137082))

(declare-fun m!121447 () Bool)

(assert (=> setNonEmpty!1737 m!121447))

(declare-fun m!121449 () Bool)

(assert (=> b!137082 m!121449))

(declare-fun setIsEmpty!1738 () Bool)

(declare-fun setRes!1738 () Bool)

(assert (=> setIsEmpty!1738 setRes!1738))

(declare-fun e!79807 () Bool)

(assert (=> b!137063 (= tp!71388 e!79807)))

(declare-fun tp!71406 () Bool)

(declare-fun e!79808 () Bool)

(declare-fun setElem!1738 () Context!254)

(declare-fun setNonEmpty!1738 () Bool)

(assert (=> setNonEmpty!1738 (= setRes!1738 (and tp!71406 (inv!2983 setElem!1738) e!79808))))

(declare-fun setRest!1738 () (InoxSet Context!254))

(assert (=> setNonEmpty!1738 (= (_2!1429 (h!7651 (zeroValue!705 (v!13498 (underlying!1085 (v!13499 (underlying!1086 (cache!882 thiss!28652)))))))) ((_ map or) (store ((as const (Array Context!254 Bool)) false) setElem!1738 true) setRest!1738))))

(declare-fun b!137083 () Bool)

(declare-fun e!79806 () Bool)

(declare-fun tp!71408 () Bool)

(assert (=> b!137083 (= e!79806 tp!71408)))

(declare-fun b!137084 () Bool)

(declare-fun tp!71407 () Bool)

(assert (=> b!137084 (= e!79808 tp!71407)))

(declare-fun tp!71405 () Bool)

(declare-fun b!137085 () Bool)

(assert (=> b!137085 (= e!79807 (and (inv!2983 (_1!1428 (_1!1429 (h!7651 (zeroValue!705 (v!13498 (underlying!1085 (v!13499 (underlying!1086 (cache!882 thiss!28652)))))))))) e!79806 tp_is_empty!1539 setRes!1738 tp!71405))))

(declare-fun condSetEmpty!1738 () Bool)

(assert (=> b!137085 (= condSetEmpty!1738 (= (_2!1429 (h!7651 (zeroValue!705 (v!13498 (underlying!1085 (v!13499 (underlying!1086 (cache!882 thiss!28652)))))))) ((as const (Array Context!254 Bool)) false)))))

(assert (= b!137085 b!137083))

(assert (= (and b!137085 condSetEmpty!1738) setIsEmpty!1738))

(assert (= (and b!137085 (not condSetEmpty!1738)) setNonEmpty!1738))

(assert (= setNonEmpty!1738 b!137084))

(assert (= (and b!137063 ((_ is Cons!2254) (zeroValue!705 (v!13498 (underlying!1085 (v!13499 (underlying!1086 (cache!882 thiss!28652)))))))) b!137085))

(declare-fun m!121451 () Bool)

(assert (=> setNonEmpty!1738 m!121451))

(declare-fun m!121453 () Bool)

(assert (=> b!137085 m!121453))

(declare-fun setIsEmpty!1739 () Bool)

(declare-fun setRes!1739 () Bool)

(assert (=> setIsEmpty!1739 setRes!1739))

(declare-fun e!79810 () Bool)

(assert (=> b!137063 (= tp!71391 e!79810)))

(declare-fun setElem!1739 () Context!254)

(declare-fun e!79811 () Bool)

(declare-fun tp!71410 () Bool)

(declare-fun setNonEmpty!1739 () Bool)

(assert (=> setNonEmpty!1739 (= setRes!1739 (and tp!71410 (inv!2983 setElem!1739) e!79811))))

(declare-fun setRest!1739 () (InoxSet Context!254))

(assert (=> setNonEmpty!1739 (= (_2!1429 (h!7651 (minValue!705 (v!13498 (underlying!1085 (v!13499 (underlying!1086 (cache!882 thiss!28652)))))))) ((_ map or) (store ((as const (Array Context!254 Bool)) false) setElem!1739 true) setRest!1739))))

(declare-fun b!137086 () Bool)

(declare-fun e!79809 () Bool)

(declare-fun tp!71412 () Bool)

(assert (=> b!137086 (= e!79809 tp!71412)))

(declare-fun b!137087 () Bool)

(declare-fun tp!71411 () Bool)

(assert (=> b!137087 (= e!79811 tp!71411)))

(declare-fun tp!71409 () Bool)

(declare-fun b!137088 () Bool)

(assert (=> b!137088 (= e!79810 (and (inv!2983 (_1!1428 (_1!1429 (h!7651 (minValue!705 (v!13498 (underlying!1085 (v!13499 (underlying!1086 (cache!882 thiss!28652)))))))))) e!79809 tp_is_empty!1539 setRes!1739 tp!71409))))

(declare-fun condSetEmpty!1739 () Bool)

(assert (=> b!137088 (= condSetEmpty!1739 (= (_2!1429 (h!7651 (minValue!705 (v!13498 (underlying!1085 (v!13499 (underlying!1086 (cache!882 thiss!28652)))))))) ((as const (Array Context!254 Bool)) false)))))

(assert (= b!137088 b!137086))

(assert (= (and b!137088 condSetEmpty!1739) setIsEmpty!1739))

(assert (= (and b!137088 (not condSetEmpty!1739)) setNonEmpty!1739))

(assert (= setNonEmpty!1739 b!137087))

(assert (= (and b!137063 ((_ is Cons!2254) (minValue!705 (v!13498 (underlying!1085 (v!13499 (underlying!1086 (cache!882 thiss!28652)))))))) b!137088))

(declare-fun m!121455 () Bool)

(assert (=> setNonEmpty!1739 m!121455))

(declare-fun m!121457 () Bool)

(assert (=> b!137088 m!121457))

(declare-fun condMapEmpty!1733 () Bool)

(declare-fun mapDefault!1733 () List!2264)

(assert (=> mapNonEmpty!1730 (= condMapEmpty!1733 (= mapRest!1730 ((as const (Array (_ BitVec 32) List!2264)) mapDefault!1733)))))

(declare-fun e!79826 () Bool)

(declare-fun mapRes!1733 () Bool)

(assert (=> mapNonEmpty!1730 (= tp!71392 (and e!79826 mapRes!1733))))

(declare-fun setElem!1745 () Context!254)

(declare-fun e!79825 () Bool)

(declare-fun tp!71437 () Bool)

(declare-fun setRes!1744 () Bool)

(declare-fun setNonEmpty!1744 () Bool)

(assert (=> setNonEmpty!1744 (= setRes!1744 (and tp!71437 (inv!2983 setElem!1745) e!79825))))

(declare-fun setRest!1745 () (InoxSet Context!254))

(assert (=> setNonEmpty!1744 (= (_2!1429 (h!7651 mapDefault!1733)) ((_ map or) (store ((as const (Array Context!254 Bool)) false) setElem!1745 true) setRest!1745))))

(declare-fun tp!71435 () Bool)

(declare-fun b!137103 () Bool)

(declare-fun e!79824 () Bool)

(assert (=> b!137103 (= e!79826 (and (inv!2983 (_1!1428 (_1!1429 (h!7651 mapDefault!1733)))) e!79824 tp_is_empty!1539 setRes!1744 tp!71435))))

(declare-fun condSetEmpty!1744 () Bool)

(assert (=> b!137103 (= condSetEmpty!1744 (= (_2!1429 (h!7651 mapDefault!1733)) ((as const (Array Context!254 Bool)) false)))))

(declare-fun setIsEmpty!1744 () Bool)

(declare-fun setRes!1745 () Bool)

(assert (=> setIsEmpty!1744 setRes!1745))

(declare-fun tp!71434 () Bool)

(declare-fun e!79828 () Bool)

(declare-fun setElem!1744 () Context!254)

(declare-fun setNonEmpty!1745 () Bool)

(assert (=> setNonEmpty!1745 (= setRes!1745 (and tp!71434 (inv!2983 setElem!1744) e!79828))))

(declare-fun mapValue!1733 () List!2264)

(declare-fun setRest!1744 () (InoxSet Context!254))

(assert (=> setNonEmpty!1745 (= (_2!1429 (h!7651 mapValue!1733)) ((_ map or) (store ((as const (Array Context!254 Bool)) false) setElem!1744 true) setRest!1744))))

(declare-fun setIsEmpty!1745 () Bool)

(assert (=> setIsEmpty!1745 setRes!1744))

(declare-fun mapNonEmpty!1733 () Bool)

(declare-fun tp!71432 () Bool)

(declare-fun e!79827 () Bool)

(assert (=> mapNonEmpty!1733 (= mapRes!1733 (and tp!71432 e!79827))))

(declare-fun mapKey!1733 () (_ BitVec 32))

(declare-fun mapRest!1733 () (Array (_ BitVec 32) List!2264))

(assert (=> mapNonEmpty!1733 (= mapRest!1730 (store mapRest!1733 mapKey!1733 mapValue!1733))))

(declare-fun b!137104 () Bool)

(declare-fun tp!71433 () Bool)

(assert (=> b!137104 (= e!79824 tp!71433)))

(declare-fun b!137105 () Bool)

(declare-fun tp!71439 () Bool)

(assert (=> b!137105 (= e!79825 tp!71439)))

(declare-fun b!137106 () Bool)

(declare-fun tp!71431 () Bool)

(assert (=> b!137106 (= e!79828 tp!71431)))

(declare-fun mapIsEmpty!1733 () Bool)

(assert (=> mapIsEmpty!1733 mapRes!1733))

(declare-fun b!137107 () Bool)

(declare-fun e!79829 () Bool)

(declare-fun tp!71436 () Bool)

(assert (=> b!137107 (= e!79829 tp!71436)))

(declare-fun b!137108 () Bool)

(declare-fun tp!71438 () Bool)

(assert (=> b!137108 (= e!79827 (and (inv!2983 (_1!1428 (_1!1429 (h!7651 mapValue!1733)))) e!79829 tp_is_empty!1539 setRes!1745 tp!71438))))

(declare-fun condSetEmpty!1745 () Bool)

(assert (=> b!137108 (= condSetEmpty!1745 (= (_2!1429 (h!7651 mapValue!1733)) ((as const (Array Context!254 Bool)) false)))))

(assert (= (and mapNonEmpty!1730 condMapEmpty!1733) mapIsEmpty!1733))

(assert (= (and mapNonEmpty!1730 (not condMapEmpty!1733)) mapNonEmpty!1733))

(assert (= b!137108 b!137107))

(assert (= (and b!137108 condSetEmpty!1745) setIsEmpty!1744))

(assert (= (and b!137108 (not condSetEmpty!1745)) setNonEmpty!1745))

(assert (= setNonEmpty!1745 b!137106))

(assert (= (and mapNonEmpty!1733 ((_ is Cons!2254) mapValue!1733)) b!137108))

(assert (= b!137103 b!137104))

(assert (= (and b!137103 condSetEmpty!1744) setIsEmpty!1745))

(assert (= (and b!137103 (not condSetEmpty!1744)) setNonEmpty!1744))

(assert (= setNonEmpty!1744 b!137105))

(assert (= (and mapNonEmpty!1730 ((_ is Cons!2254) mapDefault!1733)) b!137103))

(declare-fun m!121459 () Bool)

(assert (=> b!137103 m!121459))

(declare-fun m!121461 () Bool)

(assert (=> setNonEmpty!1744 m!121461))

(declare-fun m!121463 () Bool)

(assert (=> setNonEmpty!1745 m!121463))

(declare-fun m!121465 () Bool)

(assert (=> mapNonEmpty!1733 m!121465))

(declare-fun m!121467 () Bool)

(assert (=> b!137108 m!121467))

(declare-fun setIsEmpty!1746 () Bool)

(declare-fun setRes!1746 () Bool)

(assert (=> setIsEmpty!1746 setRes!1746))

(declare-fun e!79831 () Bool)

(assert (=> mapNonEmpty!1730 (= tp!71386 e!79831)))

(declare-fun setElem!1746 () Context!254)

(declare-fun setNonEmpty!1746 () Bool)

(declare-fun e!79832 () Bool)

(declare-fun tp!71441 () Bool)

(assert (=> setNonEmpty!1746 (= setRes!1746 (and tp!71441 (inv!2983 setElem!1746) e!79832))))

(declare-fun setRest!1746 () (InoxSet Context!254))

(assert (=> setNonEmpty!1746 (= (_2!1429 (h!7651 mapValue!1730)) ((_ map or) (store ((as const (Array Context!254 Bool)) false) setElem!1746 true) setRest!1746))))

(declare-fun b!137109 () Bool)

(declare-fun e!79830 () Bool)

(declare-fun tp!71443 () Bool)

(assert (=> b!137109 (= e!79830 tp!71443)))

(declare-fun b!137110 () Bool)

(declare-fun tp!71442 () Bool)

(assert (=> b!137110 (= e!79832 tp!71442)))

(declare-fun b!137111 () Bool)

(declare-fun tp!71440 () Bool)

(assert (=> b!137111 (= e!79831 (and (inv!2983 (_1!1428 (_1!1429 (h!7651 mapValue!1730)))) e!79830 tp_is_empty!1539 setRes!1746 tp!71440))))

(declare-fun condSetEmpty!1746 () Bool)

(assert (=> b!137111 (= condSetEmpty!1746 (= (_2!1429 (h!7651 mapValue!1730)) ((as const (Array Context!254 Bool)) false)))))

(assert (= b!137111 b!137109))

(assert (= (and b!137111 condSetEmpty!1746) setIsEmpty!1746))

(assert (= (and b!137111 (not condSetEmpty!1746)) setNonEmpty!1746))

(assert (= setNonEmpty!1746 b!137110))

(assert (= (and mapNonEmpty!1730 ((_ is Cons!2254) mapValue!1730)) b!137111))

(declare-fun m!121469 () Bool)

(assert (=> setNonEmpty!1746 m!121469))

(declare-fun m!121471 () Bool)

(assert (=> b!137111 m!121471))

(check-sat (not b!137081) (not setNonEmpty!1744) (not b!137080) (not b!137083) b_and!6149 (not b_next!3999) b_and!6151 (not b!137084) tp_is_empty!1539 (not b!137104) (not b!137105) (not b!137088) (not b!137110) (not b_next!3997) (not b!137103) (not setNonEmpty!1738) (not b!137085) (not b!137082) (not b!137108) (not b!137111) (not b!137087) (not mapNonEmpty!1733) (not b!137086) (not b!137106) (not b!137071) (not setNonEmpty!1745) (not b!137107) (not setNonEmpty!1739) (not setNonEmpty!1737) (not setNonEmpty!1746) (not b!137109))
(check-sat b_and!6149 b_and!6151 (not b_next!3999) (not b_next!3997))
