; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217980 () Bool)

(assert start!217980)

(declare-fun b!2236813 () Bool)

(declare-fun b_free!64881 () Bool)

(declare-fun b_next!65585 () Bool)

(assert (=> b!2236813 (= b_free!64881 (not b_next!65585))))

(declare-fun tp!703363 () Bool)

(declare-fun b_and!174873 () Bool)

(assert (=> b!2236813 (= tp!703363 b_and!174873)))

(declare-fun b!2236807 () Bool)

(declare-fun b_free!64883 () Bool)

(declare-fun b_next!65587 () Bool)

(assert (=> b!2236807 (= b_free!64883 (not b_next!65587))))

(declare-fun tp!703361 () Bool)

(declare-fun b_and!174875 () Bool)

(assert (=> b!2236807 (= tp!703361 b_and!174875)))

(declare-fun b!2236805 () Bool)

(declare-fun e!1429700 () Bool)

(declare-fun tp_is_empty!10159 () Bool)

(assert (=> b!2236805 (= e!1429700 tp_is_empty!10159)))

(declare-fun b!2236806 () Bool)

(declare-fun e!1429695 () Bool)

(declare-fun e!1429698 () Bool)

(assert (=> b!2236806 (= e!1429695 e!1429698)))

(declare-fun e!1429697 () Bool)

(declare-fun e!1429691 () Bool)

(declare-fun tp!703372 () Bool)

(declare-fun tp!703365 () Bool)

(declare-datatypes ((C!13080 0))(
  ( (C!13081 (val!7588 Int)) )
))
(declare-datatypes ((Regex!6467 0))(
  ( (ElementMatch!6467 (c!356435 C!13080)) (Concat!10805 (regOne!13446 Regex!6467) (regTwo!13446 Regex!6467)) (EmptyExpr!6467) (Star!6467 (reg!6796 Regex!6467)) (EmptyLang!6467) (Union!6467 (regOne!13447 Regex!6467) (regTwo!13447 Regex!6467)) )
))
(declare-datatypes ((List!26415 0))(
  ( (Nil!26321) (Cons!26321 (h!31722 Regex!6467) (t!199837 List!26415)) )
))
(declare-datatypes ((Context!4030 0))(
  ( (Context!4031 (exprs!2515 List!26415)) )
))
(declare-datatypes ((tuple3!4006 0))(
  ( (tuple3!4007 (_1!15332 Regex!6467) (_2!15332 Context!4030) (_3!2473 C!13080)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25718 0))(
  ( (tuple2!25719 (_1!15333 tuple3!4006) (_2!15333 (InoxSet Context!4030))) )
))
(declare-datatypes ((array!10802 0))(
  ( (array!10803 (arr!4797 (Array (_ BitVec 32) (_ BitVec 64))) (size!20578 (_ BitVec 32))) )
))
(declare-datatypes ((List!26416 0))(
  ( (Nil!26322) (Cons!26322 (h!31723 tuple2!25718) (t!199838 List!26416)) )
))
(declare-datatypes ((array!10804 0))(
  ( (array!10805 (arr!4798 (Array (_ BitVec 32) List!26416)) (size!20579 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6210 0))(
  ( (LongMapFixedSize!6211 (defaultEntry!3470 Int) (mask!7692 (_ BitVec 32)) (extraKeys!3353 (_ BitVec 32)) (zeroValue!3363 List!26416) (minValue!3363 List!26416) (_size!6257 (_ BitVec 32)) (_keys!3402 array!10802) (_values!3385 array!10804) (_vacant!3166 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12237 0))(
  ( (Cell!12238 (v!29929 LongMapFixedSize!6210)) )
))
(declare-datatypes ((MutLongMap!3105 0))(
  ( (LongMap!3105 (underlying!6411 Cell!12237)) (MutLongMapExt!3104 (__x!17541 Int)) )
))
(declare-datatypes ((Cell!12239 0))(
  ( (Cell!12240 (v!29930 MutLongMap!3105)) )
))
(declare-datatypes ((Hashable!3015 0))(
  ( (HashableExt!3014 (__x!17542 Int)) )
))
(declare-datatypes ((MutableMap!3015 0))(
  ( (MutableMapExt!3014 (__x!17543 Int)) (HashMap!3015 (underlying!6412 Cell!12239) (hashF!4938 Hashable!3015) (_size!6258 (_ BitVec 32)) (defaultValue!3177 Int)) )
))
(declare-datatypes ((CacheDown!2076 0))(
  ( (CacheDown!2077 (cache!3396 MutableMap!3015)) )
))
(declare-fun thiss!28797 () CacheDown!2076)

(declare-fun array_inv!3445 (array!10802) Bool)

(declare-fun array_inv!3446 (array!10804) Bool)

(assert (=> b!2236807 (= e!1429691 (and tp!703361 tp!703365 tp!703372 (array_inv!3445 (_keys!3402 (v!29929 (underlying!6411 (v!29930 (underlying!6412 (cache!3396 thiss!28797))))))) (array_inv!3446 (_values!3385 (v!29929 (underlying!6411 (v!29930 (underlying!6412 (cache!3396 thiss!28797))))))) e!1429697))))

(declare-fun b!2236808 () Bool)

(declare-fun res!956915 () Bool)

(declare-fun e!1429696 () Bool)

(assert (=> b!2236808 (=> (not res!956915) (not e!1429696))))

(declare-fun a!997 () C!13080)

(declare-fun ctx!52 () Context!4030)

(declare-fun r!4766 () Regex!6467)

(declare-fun contains!4401 (MutableMap!3015 tuple3!4006) Bool)

(assert (=> b!2236808 (= res!956915 (not (contains!4401 (cache!3396 thiss!28797) (tuple3!4007 r!4766 ctx!52 a!997))))))

(declare-fun mapNonEmpty!14588 () Bool)

(declare-fun mapRes!14588 () Bool)

(declare-fun tp!703367 () Bool)

(declare-fun tp!703360 () Bool)

(assert (=> mapNonEmpty!14588 (= mapRes!14588 (and tp!703367 tp!703360))))

(declare-fun mapValue!14588 () List!26416)

(declare-fun mapRest!14588 () (Array (_ BitVec 32) List!26416))

(declare-fun mapKey!14588 () (_ BitVec 32))

(assert (=> mapNonEmpty!14588 (= (arr!4798 (_values!3385 (v!29929 (underlying!6411 (v!29930 (underlying!6412 (cache!3396 thiss!28797))))))) (store mapRest!14588 mapKey!14588 mapValue!14588))))

(declare-fun res!956916 () Bool)

(assert (=> start!217980 (=> (not res!956916) (not e!1429696))))

(declare-fun validCacheMapDown!316 (MutableMap!3015) Bool)

(assert (=> start!217980 (= res!956916 (validCacheMapDown!316 (cache!3396 thiss!28797)))))

(assert (=> start!217980 e!1429696))

(declare-fun e!1429699 () Bool)

(declare-fun inv!35752 (CacheDown!2076) Bool)

(assert (=> start!217980 (and (inv!35752 thiss!28797) e!1429699)))

(assert (=> start!217980 e!1429700))

(declare-fun e!1429692 () Bool)

(declare-fun inv!35753 (Context!4030) Bool)

(assert (=> start!217980 (and (inv!35753 ctx!52) e!1429692)))

(assert (=> start!217980 tp_is_empty!10159))

(declare-fun b!2236809 () Bool)

(declare-fun e!1429693 () Bool)

(assert (=> b!2236809 (= e!1429699 e!1429693)))

(declare-fun b!2236810 () Bool)

(declare-fun tp!703366 () Bool)

(declare-fun tp!703371 () Bool)

(assert (=> b!2236810 (= e!1429700 (and tp!703366 tp!703371))))

(declare-fun b!2236811 () Bool)

(declare-fun e!1429694 () Bool)

(declare-fun lt!832041 () MutLongMap!3105)

(get-info :version)

(assert (=> b!2236811 (= e!1429694 (and e!1429695 ((_ is LongMap!3105) lt!832041)))))

(assert (=> b!2236811 (= lt!832041 (v!29930 (underlying!6412 (cache!3396 thiss!28797))))))

(declare-fun b!2236812 () Bool)

(declare-fun tp!703369 () Bool)

(declare-fun tp!703362 () Bool)

(assert (=> b!2236812 (= e!1429700 (and tp!703369 tp!703362))))

(assert (=> b!2236813 (= e!1429693 (and e!1429694 tp!703363))))

(declare-fun b!2236814 () Bool)

(declare-fun tp!703364 () Bool)

(assert (=> b!2236814 (= e!1429692 tp!703364)))

(declare-fun b!2236815 () Bool)

(declare-fun tp!703368 () Bool)

(assert (=> b!2236815 (= e!1429697 (and tp!703368 mapRes!14588))))

(declare-fun condMapEmpty!14588 () Bool)

(declare-fun mapDefault!14588 () List!26416)

(assert (=> b!2236815 (= condMapEmpty!14588 (= (arr!4798 (_values!3385 (v!29929 (underlying!6411 (v!29930 (underlying!6412 (cache!3396 thiss!28797))))))) ((as const (Array (_ BitVec 32) List!26416)) mapDefault!14588)))))

(declare-fun b!2236816 () Bool)

(assert (=> b!2236816 (= e!1429698 e!1429691)))

(declare-fun b!2236817 () Bool)

(assert (=> b!2236817 (= e!1429696 false)))

(declare-fun mapIsEmpty!14588 () Bool)

(assert (=> mapIsEmpty!14588 mapRes!14588))

(declare-fun b!2236818 () Bool)

(declare-fun tp!703370 () Bool)

(assert (=> b!2236818 (= e!1429700 tp!703370)))

(declare-fun b!2236819 () Bool)

(declare-fun res!956917 () Bool)

(assert (=> b!2236819 (=> (not res!956917) (not e!1429696))))

(declare-fun validRegex!2429 (Regex!6467) Bool)

(assert (=> b!2236819 (= res!956917 (validRegex!2429 r!4766))))

(assert (= (and start!217980 res!956916) b!2236819))

(assert (= (and b!2236819 res!956917) b!2236808))

(assert (= (and b!2236808 res!956915) b!2236817))

(assert (= (and b!2236815 condMapEmpty!14588) mapIsEmpty!14588))

(assert (= (and b!2236815 (not condMapEmpty!14588)) mapNonEmpty!14588))

(assert (= b!2236807 b!2236815))

(assert (= b!2236816 b!2236807))

(assert (= b!2236806 b!2236816))

(assert (= (and b!2236811 ((_ is LongMap!3105) (v!29930 (underlying!6412 (cache!3396 thiss!28797))))) b!2236806))

(assert (= b!2236813 b!2236811))

(assert (= (and b!2236809 ((_ is HashMap!3015) (cache!3396 thiss!28797))) b!2236813))

(assert (= start!217980 b!2236809))

(assert (= (and start!217980 ((_ is ElementMatch!6467) r!4766)) b!2236805))

(assert (= (and start!217980 ((_ is Concat!10805) r!4766)) b!2236810))

(assert (= (and start!217980 ((_ is Star!6467) r!4766)) b!2236818))

(assert (= (and start!217980 ((_ is Union!6467) r!4766)) b!2236812))

(assert (= start!217980 b!2236814))

(declare-fun m!2670526 () Bool)

(assert (=> b!2236819 m!2670526))

(declare-fun m!2670528 () Bool)

(assert (=> b!2236808 m!2670528))

(declare-fun m!2670530 () Bool)

(assert (=> mapNonEmpty!14588 m!2670530))

(declare-fun m!2670532 () Bool)

(assert (=> start!217980 m!2670532))

(declare-fun m!2670534 () Bool)

(assert (=> start!217980 m!2670534))

(declare-fun m!2670536 () Bool)

(assert (=> start!217980 m!2670536))

(declare-fun m!2670538 () Bool)

(assert (=> b!2236807 m!2670538))

(declare-fun m!2670540 () Bool)

(assert (=> b!2236807 m!2670540))

(check-sat (not b!2236818) b_and!174873 (not b!2236819) tp_is_empty!10159 (not b!2236815) (not b!2236807) (not mapNonEmpty!14588) (not b!2236810) b_and!174875 (not b!2236808) (not start!217980) (not b!2236814) (not b_next!65587) (not b_next!65585) (not b!2236812))
(check-sat b_and!174875 b_and!174873 (not b_next!65587) (not b_next!65585))
