; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217984 () Bool)

(assert start!217984)

(declare-fun b!2236904 () Bool)

(declare-fun b_free!64889 () Bool)

(declare-fun b_next!65593 () Bool)

(assert (=> b!2236904 (= b_free!64889 (not b_next!65593))))

(declare-fun tp!703443 () Bool)

(declare-fun b_and!174881 () Bool)

(assert (=> b!2236904 (= tp!703443 b_and!174881)))

(declare-fun b!2236911 () Bool)

(declare-fun b_free!64891 () Bool)

(declare-fun b_next!65595 () Bool)

(assert (=> b!2236911 (= b_free!64891 (not b_next!65595))))

(declare-fun tp!703445 () Bool)

(declare-fun b_and!174883 () Bool)

(assert (=> b!2236911 (= tp!703445 b_and!174883)))

(declare-fun b!2236900 () Bool)

(declare-fun e!1429772 () Bool)

(declare-fun tp!703442 () Bool)

(declare-fun tp!703440 () Bool)

(assert (=> b!2236900 (= e!1429772 (and tp!703442 tp!703440))))

(declare-fun b!2236901 () Bool)

(declare-fun e!1429770 () Bool)

(declare-fun e!1429777 () Bool)

(declare-datatypes ((C!13084 0))(
  ( (C!13085 (val!7590 Int)) )
))
(declare-datatypes ((Regex!6469 0))(
  ( (ElementMatch!6469 (c!356437 C!13084)) (Concat!10807 (regOne!13450 Regex!6469) (regTwo!13450 Regex!6469)) (EmptyExpr!6469) (Star!6469 (reg!6798 Regex!6469)) (EmptyLang!6469) (Union!6469 (regOne!13451 Regex!6469) (regTwo!13451 Regex!6469)) )
))
(declare-datatypes ((List!26419 0))(
  ( (Nil!26325) (Cons!26325 (h!31726 Regex!6469) (t!199841 List!26419)) )
))
(declare-datatypes ((Context!4034 0))(
  ( (Context!4035 (exprs!2517 List!26419)) )
))
(declare-datatypes ((tuple3!4010 0))(
  ( (tuple3!4011 (_1!15336 Regex!6469) (_2!15336 Context!4034) (_3!2475 C!13084)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25722 0))(
  ( (tuple2!25723 (_1!15337 tuple3!4010) (_2!15337 (InoxSet Context!4034))) )
))
(declare-datatypes ((array!10810 0))(
  ( (array!10811 (arr!4801 (Array (_ BitVec 32) (_ BitVec 64))) (size!20582 (_ BitVec 32))) )
))
(declare-datatypes ((List!26420 0))(
  ( (Nil!26326) (Cons!26326 (h!31727 tuple2!25722) (t!199842 List!26420)) )
))
(declare-datatypes ((array!10812 0))(
  ( (array!10813 (arr!4802 (Array (_ BitVec 32) List!26420)) (size!20583 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6214 0))(
  ( (LongMapFixedSize!6215 (defaultEntry!3472 Int) (mask!7695 (_ BitVec 32)) (extraKeys!3355 (_ BitVec 32)) (zeroValue!3365 List!26420) (minValue!3365 List!26420) (_size!6261 (_ BitVec 32)) (_keys!3404 array!10810) (_values!3387 array!10812) (_vacant!3168 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12245 0))(
  ( (Cell!12246 (v!29934 LongMapFixedSize!6214)) )
))
(declare-datatypes ((MutLongMap!3107 0))(
  ( (LongMap!3107 (underlying!6415 Cell!12245)) (MutLongMapExt!3106 (__x!17547 Int)) )
))
(declare-fun lt!832063 () MutLongMap!3107)

(get-info :version)

(assert (=> b!2236901 (= e!1429770 (and e!1429777 ((_ is LongMap!3107) lt!832063)))))

(declare-datatypes ((Cell!12247 0))(
  ( (Cell!12248 (v!29935 MutLongMap!3107)) )
))
(declare-datatypes ((Hashable!3017 0))(
  ( (HashableExt!3016 (__x!17548 Int)) )
))
(declare-datatypes ((MutableMap!3017 0))(
  ( (MutableMapExt!3016 (__x!17549 Int)) (HashMap!3017 (underlying!6416 Cell!12247) (hashF!4940 Hashable!3017) (_size!6262 (_ BitVec 32)) (defaultValue!3179 Int)) )
))
(declare-datatypes ((CacheDown!2080 0))(
  ( (CacheDown!2081 (cache!3398 MutableMap!3017)) )
))
(declare-fun thiss!28797 () CacheDown!2080)

(assert (=> b!2236901 (= lt!832063 (v!29935 (underlying!6416 (cache!3398 thiss!28797))))))

(declare-fun b!2236902 () Bool)

(declare-fun e!1429771 () Bool)

(declare-fun e!1429768 () Bool)

(assert (=> b!2236902 (= e!1429771 e!1429768)))

(declare-fun res!956941 () Bool)

(assert (=> b!2236902 (=> (not res!956941) (not e!1429768))))

(declare-datatypes ((Option!5123 0))(
  ( (None!5122) (Some!5122 (v!29936 (InoxSet Context!4034))) )
))
(declare-fun lt!832065 () Option!5123)

(declare-fun isEmpty!14909 (Option!5123) Bool)

(assert (=> b!2236902 (= res!956941 (not (isEmpty!14909 lt!832065)))))

(declare-fun lt!832062 () tuple3!4010)

(declare-fun apply!6480 (MutableMap!3017 tuple3!4010) (InoxSet Context!4034))

(assert (=> b!2236902 (= lt!832065 (Some!5122 (apply!6480 (cache!3398 thiss!28797) lt!832062)))))

(declare-datatypes ((Unit!39286 0))(
  ( (Unit!39287) )
))
(declare-fun lt!832064 () Unit!39286)

(declare-fun a!997 () C!13084)

(declare-fun ctx!52 () Context!4034)

(declare-fun r!4766 () Regex!6469)

(declare-fun lemmaIfInCacheThenValid!35 (CacheDown!2080 Regex!6469 Context!4034 C!13084) Unit!39286)

(assert (=> b!2236902 (= lt!832064 (lemmaIfInCacheThenValid!35 thiss!28797 r!4766 ctx!52 a!997))))

(declare-fun b!2236903 () Bool)

(declare-fun e!1429766 () Bool)

(declare-fun e!1429774 () Bool)

(assert (=> b!2236903 (= e!1429766 e!1429774)))

(declare-fun tp!703446 () Bool)

(declare-fun tp!703449 () Bool)

(declare-fun e!1429767 () Bool)

(declare-fun array_inv!3449 (array!10810) Bool)

(declare-fun array_inv!3450 (array!10812) Bool)

(assert (=> b!2236904 (= e!1429774 (and tp!703443 tp!703446 tp!703449 (array_inv!3449 (_keys!3404 (v!29934 (underlying!6415 (v!29935 (underlying!6416 (cache!3398 thiss!28797))))))) (array_inv!3450 (_values!3387 (v!29934 (underlying!6415 (v!29935 (underlying!6416 (cache!3398 thiss!28797))))))) e!1429767))))

(declare-fun res!956938 () Bool)

(declare-fun e!1429773 () Bool)

(assert (=> start!217984 (=> (not res!956938) (not e!1429773))))

(declare-fun validCacheMapDown!318 (MutableMap!3017) Bool)

(assert (=> start!217984 (= res!956938 (validCacheMapDown!318 (cache!3398 thiss!28797)))))

(assert (=> start!217984 e!1429773))

(declare-fun e!1429778 () Bool)

(declare-fun inv!35759 (CacheDown!2080) Bool)

(assert (=> start!217984 (and (inv!35759 thiss!28797) e!1429778)))

(assert (=> start!217984 e!1429772))

(declare-fun tp_is_empty!10163 () Bool)

(assert (=> start!217984 tp_is_empty!10163))

(declare-fun e!1429769 () Bool)

(declare-fun inv!35760 (Context!4034) Bool)

(assert (=> start!217984 (and (inv!35760 ctx!52) e!1429769)))

(declare-fun b!2236905 () Bool)

(assert (=> b!2236905 (= e!1429777 e!1429766)))

(declare-fun b!2236906 () Bool)

(declare-fun get!7959 (Option!5123) (InoxSet Context!4034))

(declare-fun derivationStepZipperDown!71 (Regex!6469 Context!4034 C!13084) (InoxSet Context!4034))

(assert (=> b!2236906 (= e!1429768 (not (= (get!7959 lt!832065) (derivationStepZipperDown!71 r!4766 ctx!52 a!997))))))

(declare-fun b!2236907 () Bool)

(declare-fun tp!703447 () Bool)

(declare-fun mapRes!14594 () Bool)

(assert (=> b!2236907 (= e!1429767 (and tp!703447 mapRes!14594))))

(declare-fun condMapEmpty!14594 () Bool)

(declare-fun mapDefault!14594 () List!26420)

(assert (=> b!2236907 (= condMapEmpty!14594 (= (arr!4802 (_values!3387 (v!29934 (underlying!6415 (v!29935 (underlying!6416 (cache!3398 thiss!28797))))))) ((as const (Array (_ BitVec 32) List!26420)) mapDefault!14594)))))

(declare-fun b!2236908 () Bool)

(declare-fun tp!703444 () Bool)

(declare-fun tp!703441 () Bool)

(assert (=> b!2236908 (= e!1429772 (and tp!703444 tp!703441))))

(declare-fun b!2236909 () Bool)

(assert (=> b!2236909 (= e!1429773 e!1429771)))

(declare-fun res!956939 () Bool)

(assert (=> b!2236909 (=> (not res!956939) (not e!1429771))))

(declare-fun contains!4403 (MutableMap!3017 tuple3!4010) Bool)

(assert (=> b!2236909 (= res!956939 (contains!4403 (cache!3398 thiss!28797) lt!832062))))

(assert (=> b!2236909 (= lt!832062 (tuple3!4011 r!4766 ctx!52 a!997))))

(declare-fun b!2236910 () Bool)

(declare-fun res!956940 () Bool)

(assert (=> b!2236910 (=> (not res!956940) (not e!1429773))))

(declare-fun validRegex!2431 (Regex!6469) Bool)

(assert (=> b!2236910 (= res!956940 (validRegex!2431 r!4766))))

(declare-fun e!1429776 () Bool)

(assert (=> b!2236911 (= e!1429776 (and e!1429770 tp!703445))))

(declare-fun b!2236912 () Bool)

(assert (=> b!2236912 (= e!1429772 tp_is_empty!10163)))

(declare-fun b!2236913 () Bool)

(assert (=> b!2236913 (= e!1429778 e!1429776)))

(declare-fun b!2236914 () Bool)

(declare-fun tp!703448 () Bool)

(assert (=> b!2236914 (= e!1429769 tp!703448)))

(declare-fun mapNonEmpty!14594 () Bool)

(declare-fun tp!703439 () Bool)

(declare-fun tp!703450 () Bool)

(assert (=> mapNonEmpty!14594 (= mapRes!14594 (and tp!703439 tp!703450))))

(declare-fun mapRest!14594 () (Array (_ BitVec 32) List!26420))

(declare-fun mapKey!14594 () (_ BitVec 32))

(declare-fun mapValue!14594 () List!26420)

(assert (=> mapNonEmpty!14594 (= (arr!4802 (_values!3387 (v!29934 (underlying!6415 (v!29935 (underlying!6416 (cache!3398 thiss!28797))))))) (store mapRest!14594 mapKey!14594 mapValue!14594))))

(declare-fun mapIsEmpty!14594 () Bool)

(assert (=> mapIsEmpty!14594 mapRes!14594))

(declare-fun b!2236915 () Bool)

(declare-fun tp!703438 () Bool)

(assert (=> b!2236915 (= e!1429772 tp!703438)))

(assert (= (and start!217984 res!956938) b!2236910))

(assert (= (and b!2236910 res!956940) b!2236909))

(assert (= (and b!2236909 res!956939) b!2236902))

(assert (= (and b!2236902 res!956941) b!2236906))

(assert (= (and b!2236907 condMapEmpty!14594) mapIsEmpty!14594))

(assert (= (and b!2236907 (not condMapEmpty!14594)) mapNonEmpty!14594))

(assert (= b!2236904 b!2236907))

(assert (= b!2236903 b!2236904))

(assert (= b!2236905 b!2236903))

(assert (= (and b!2236901 ((_ is LongMap!3107) (v!29935 (underlying!6416 (cache!3398 thiss!28797))))) b!2236905))

(assert (= b!2236911 b!2236901))

(assert (= (and b!2236913 ((_ is HashMap!3017) (cache!3398 thiss!28797))) b!2236911))

(assert (= start!217984 b!2236913))

(assert (= (and start!217984 ((_ is ElementMatch!6469) r!4766)) b!2236912))

(assert (= (and start!217984 ((_ is Concat!10807) r!4766)) b!2236900))

(assert (= (and start!217984 ((_ is Star!6469) r!4766)) b!2236915))

(assert (= (and start!217984 ((_ is Union!6469) r!4766)) b!2236908))

(assert (= start!217984 b!2236914))

(declare-fun m!2670568 () Bool)

(assert (=> b!2236909 m!2670568))

(declare-fun m!2670570 () Bool)

(assert (=> b!2236904 m!2670570))

(declare-fun m!2670572 () Bool)

(assert (=> b!2236904 m!2670572))

(declare-fun m!2670574 () Bool)

(assert (=> start!217984 m!2670574))

(declare-fun m!2670576 () Bool)

(assert (=> start!217984 m!2670576))

(declare-fun m!2670578 () Bool)

(assert (=> start!217984 m!2670578))

(declare-fun m!2670580 () Bool)

(assert (=> mapNonEmpty!14594 m!2670580))

(declare-fun m!2670582 () Bool)

(assert (=> b!2236902 m!2670582))

(declare-fun m!2670584 () Bool)

(assert (=> b!2236902 m!2670584))

(declare-fun m!2670586 () Bool)

(assert (=> b!2236902 m!2670586))

(declare-fun m!2670588 () Bool)

(assert (=> b!2236910 m!2670588))

(declare-fun m!2670590 () Bool)

(assert (=> b!2236906 m!2670590))

(declare-fun m!2670592 () Bool)

(assert (=> b!2236906 m!2670592))

(check-sat b_and!174883 (not b!2236914) (not b!2236904) (not b_next!65595) (not b!2236908) (not b_next!65593) (not b!2236910) (not b!2236915) (not b!2236900) (not b!2236902) (not mapNonEmpty!14594) (not b!2236909) (not start!217984) (not b!2236906) (not b!2236907) b_and!174881 tp_is_empty!10163)
(check-sat b_and!174881 b_and!174883 (not b_next!65593) (not b_next!65595))
(get-model)

(declare-fun d!665492 () Bool)

(assert (=> d!665492 (= (get!7959 lt!832065) (v!29936 lt!832065))))

(assert (=> b!2236906 d!665492))

(declare-fun bm!134864 () Bool)

(declare-fun call!134872 () (InoxSet Context!4034))

(declare-fun call!134871 () (InoxSet Context!4034))

(assert (=> bm!134864 (= call!134872 call!134871)))

(declare-fun bm!134865 () Bool)

(declare-fun call!134873 () List!26419)

(declare-fun call!134870 () List!26419)

(assert (=> bm!134865 (= call!134873 call!134870)))

(declare-fun d!665494 () Bool)

(declare-fun c!356449 () Bool)

(assert (=> d!665494 (= c!356449 (and ((_ is ElementMatch!6469) r!4766) (= (c!356437 r!4766) a!997)))))

(declare-fun e!1429793 () (InoxSet Context!4034))

(assert (=> d!665494 (= (derivationStepZipperDown!71 r!4766 ctx!52 a!997) e!1429793)))

(declare-fun bm!134866 () Bool)

(declare-fun call!134869 () (InoxSet Context!4034))

(assert (=> bm!134866 (= call!134869 call!134872)))

(declare-fun b!2236938 () Bool)

(declare-fun e!1429795 () Bool)

(declare-fun nullable!1785 (Regex!6469) Bool)

(assert (=> b!2236938 (= e!1429795 (nullable!1785 (regOne!13450 r!4766)))))

(declare-fun b!2236939 () Bool)

(declare-fun e!1429791 () (InoxSet Context!4034))

(assert (=> b!2236939 (= e!1429791 ((as const (Array Context!4034 Bool)) false))))

(declare-fun b!2236940 () Bool)

(declare-fun c!356448 () Bool)

(assert (=> b!2236940 (= c!356448 e!1429795)))

(declare-fun res!956944 () Bool)

(assert (=> b!2236940 (=> (not res!956944) (not e!1429795))))

(assert (=> b!2236940 (= res!956944 ((_ is Concat!10807) r!4766))))

(declare-fun e!1429792 () (InoxSet Context!4034))

(declare-fun e!1429794 () (InoxSet Context!4034))

(assert (=> b!2236940 (= e!1429792 e!1429794)))

(declare-fun call!134874 () (InoxSet Context!4034))

(declare-fun c!356451 () Bool)

(declare-fun bm!134867 () Bool)

(assert (=> bm!134867 (= call!134874 (derivationStepZipperDown!71 (ite c!356451 (regTwo!13451 r!4766) (regOne!13450 r!4766)) (ite c!356451 ctx!52 (Context!4035 call!134870)) a!997))))

(declare-fun b!2236941 () Bool)

(assert (=> b!2236941 (= e!1429793 e!1429792)))

(assert (=> b!2236941 (= c!356451 ((_ is Union!6469) r!4766))))

(declare-fun b!2236942 () Bool)

(declare-fun c!356450 () Bool)

(assert (=> b!2236942 (= c!356450 ((_ is Star!6469) r!4766))))

(declare-fun e!1429796 () (InoxSet Context!4034))

(assert (=> b!2236942 (= e!1429796 e!1429791)))

(declare-fun b!2236943 () Bool)

(assert (=> b!2236943 (= e!1429791 call!134869)))

(declare-fun bm!134868 () Bool)

(declare-fun c!356452 () Bool)

(assert (=> bm!134868 (= call!134871 (derivationStepZipperDown!71 (ite c!356451 (regOne!13451 r!4766) (ite c!356448 (regTwo!13450 r!4766) (ite c!356452 (regOne!13450 r!4766) (reg!6798 r!4766)))) (ite (or c!356451 c!356448) ctx!52 (Context!4035 call!134873)) a!997))))

(declare-fun b!2236944 () Bool)

(assert (=> b!2236944 (= e!1429792 ((_ map or) call!134871 call!134874))))

(declare-fun b!2236945 () Bool)

(assert (=> b!2236945 (= e!1429796 call!134869)))

(declare-fun b!2236946 () Bool)

(assert (=> b!2236946 (= e!1429794 e!1429796)))

(assert (=> b!2236946 (= c!356452 ((_ is Concat!10807) r!4766))))

(declare-fun b!2236947 () Bool)

(assert (=> b!2236947 (= e!1429794 ((_ map or) call!134874 call!134872))))

(declare-fun bm!134869 () Bool)

(declare-fun $colon$colon!531 (List!26419 Regex!6469) List!26419)

(assert (=> bm!134869 (= call!134870 ($colon$colon!531 (exprs!2517 ctx!52) (ite (or c!356448 c!356452) (regTwo!13450 r!4766) r!4766)))))

(declare-fun b!2236948 () Bool)

(assert (=> b!2236948 (= e!1429793 (store ((as const (Array Context!4034 Bool)) false) ctx!52 true))))

(assert (= (and d!665494 c!356449) b!2236948))

(assert (= (and d!665494 (not c!356449)) b!2236941))

(assert (= (and b!2236941 c!356451) b!2236944))

(assert (= (and b!2236941 (not c!356451)) b!2236940))

(assert (= (and b!2236940 res!956944) b!2236938))

(assert (= (and b!2236940 c!356448) b!2236947))

(assert (= (and b!2236940 (not c!356448)) b!2236946))

(assert (= (and b!2236946 c!356452) b!2236945))

(assert (= (and b!2236946 (not c!356452)) b!2236942))

(assert (= (and b!2236942 c!356450) b!2236943))

(assert (= (and b!2236942 (not c!356450)) b!2236939))

(assert (= (or b!2236945 b!2236943) bm!134865))

(assert (= (or b!2236945 b!2236943) bm!134866))

(assert (= (or b!2236947 bm!134865) bm!134869))

(assert (= (or b!2236947 bm!134866) bm!134864))

(assert (= (or b!2236944 b!2236947) bm!134867))

(assert (= (or b!2236944 bm!134864) bm!134868))

(declare-fun m!2670594 () Bool)

(assert (=> b!2236948 m!2670594))

(declare-fun m!2670596 () Bool)

(assert (=> bm!134869 m!2670596))

(declare-fun m!2670598 () Bool)

(assert (=> bm!134867 m!2670598))

(declare-fun m!2670600 () Bool)

(assert (=> b!2236938 m!2670600))

(declare-fun m!2670602 () Bool)

(assert (=> bm!134868 m!2670602))

(assert (=> b!2236906 d!665494))

(declare-fun d!665496 () Bool)

(declare-fun res!956951 () Bool)

(declare-fun e!1429801 () Bool)

(assert (=> d!665496 (=> (not res!956951) (not e!1429801))))

(declare-fun valid!2345 (MutableMap!3017) Bool)

(assert (=> d!665496 (= res!956951 (valid!2345 (cache!3398 thiss!28797)))))

(assert (=> d!665496 (= (validCacheMapDown!318 (cache!3398 thiss!28797)) e!1429801)))

(declare-fun b!2236955 () Bool)

(declare-fun res!956952 () Bool)

(assert (=> b!2236955 (=> (not res!956952) (not e!1429801))))

(declare-fun invariantList!374 (List!26420) Bool)

(declare-datatypes ((ListMap!839 0))(
  ( (ListMap!840 (toList!1357 List!26420)) )
))
(declare-fun map!5413 (MutableMap!3017) ListMap!839)

(assert (=> b!2236955 (= res!956952 (invariantList!374 (toList!1357 (map!5413 (cache!3398 thiss!28797)))))))

(declare-fun b!2236956 () Bool)

(declare-fun lambda!84528 () Int)

(declare-fun forall!5405 (List!26420 Int) Bool)

(assert (=> b!2236956 (= e!1429801 (forall!5405 (toList!1357 (map!5413 (cache!3398 thiss!28797))) lambda!84528))))

(assert (= (and d!665496 res!956951) b!2236955))

(assert (= (and b!2236955 res!956952) b!2236956))

(declare-fun m!2670605 () Bool)

(assert (=> d!665496 m!2670605))

(declare-fun m!2670607 () Bool)

(assert (=> b!2236955 m!2670607))

(declare-fun m!2670609 () Bool)

(assert (=> b!2236955 m!2670609))

(assert (=> b!2236956 m!2670607))

(declare-fun m!2670611 () Bool)

(assert (=> b!2236956 m!2670611))

(assert (=> start!217984 d!665496))

(declare-fun d!665498 () Bool)

(declare-fun res!956955 () Bool)

(declare-fun e!1429804 () Bool)

(assert (=> d!665498 (=> (not res!956955) (not e!1429804))))

(assert (=> d!665498 (= res!956955 ((_ is HashMap!3017) (cache!3398 thiss!28797)))))

(assert (=> d!665498 (= (inv!35759 thiss!28797) e!1429804)))

(declare-fun b!2236959 () Bool)

(assert (=> b!2236959 (= e!1429804 (validCacheMapDown!318 (cache!3398 thiss!28797)))))

(assert (= (and d!665498 res!956955) b!2236959))

(assert (=> b!2236959 m!2670574))

(assert (=> start!217984 d!665498))

(declare-fun d!665500 () Bool)

(declare-fun lambda!84531 () Int)

(declare-fun forall!5406 (List!26419 Int) Bool)

(assert (=> d!665500 (= (inv!35760 ctx!52) (forall!5406 (exprs!2517 ctx!52) lambda!84531))))

(declare-fun bs!454223 () Bool)

(assert (= bs!454223 d!665500))

(declare-fun m!2670613 () Bool)

(assert (=> bs!454223 m!2670613))

(assert (=> start!217984 d!665500))

(declare-fun d!665502 () Bool)

(assert (=> d!665502 (= (isEmpty!14909 lt!832065) (not ((_ is Some!5122) lt!832065)))))

(assert (=> b!2236902 d!665502))

(declare-fun b!2236972 () Bool)

(declare-fun e!1429811 () Unit!39286)

(declare-fun Unit!39288 () Unit!39286)

(assert (=> b!2236972 (= e!1429811 Unit!39288)))

(declare-fun lt!832154 () (InoxSet Context!4034))

(declare-fun e!1429812 () Bool)

(declare-fun b!2236973 () Bool)

(declare-fun dynLambda!11531 (Int tuple3!4010) (InoxSet Context!4034))

(assert (=> b!2236973 (= e!1429812 (= lt!832154 (dynLambda!11531 (defaultValue!3179 (cache!3398 thiss!28797)) lt!832062)))))

(declare-fun b!2236974 () Bool)

(declare-fun getValueByKey!75 (List!26420 tuple3!4010) Option!5123)

(assert (=> b!2236974 (= e!1429812 (= lt!832154 (get!7959 (getValueByKey!75 (toList!1357 (map!5413 (cache!3398 thiss!28797))) lt!832062))))))

(declare-fun d!665504 () Bool)

(assert (=> d!665504 e!1429812))

(declare-fun c!356460 () Bool)

(assert (=> d!665504 (= c!356460 (contains!4403 (cache!3398 thiss!28797) lt!832062))))

(declare-fun e!1429813 () (InoxSet Context!4034))

(assert (=> d!665504 (= lt!832154 e!1429813)))

(declare-fun c!356459 () Bool)

(assert (=> d!665504 (= c!356459 (not (contains!4403 (cache!3398 thiss!28797) lt!832062)))))

(assert (=> d!665504 (valid!2345 (cache!3398 thiss!28797))))

(assert (=> d!665504 (= (apply!6480 (cache!3398 thiss!28797) lt!832062) lt!832154)))

(declare-fun b!2236975 () Bool)

(declare-fun lt!832131 () (_ BitVec 64))

(declare-datatypes ((Option!5124 0))(
  ( (None!5123) (Some!5123 (v!29937 tuple2!25722)) )
))
(declare-fun get!7960 (Option!5124) tuple2!25722)

(declare-fun getPair!30 (List!26420 tuple3!4010) Option!5124)

(declare-fun apply!6481 (MutLongMap!3107 (_ BitVec 64)) List!26420)

(assert (=> b!2236975 (= e!1429813 (_2!15337 (get!7960 (getPair!30 (apply!6481 (v!29935 (underlying!6416 (cache!3398 thiss!28797))) lt!832131) lt!832062))))))

(declare-fun hash!577 (Hashable!3017 tuple3!4010) (_ BitVec 64))

(assert (=> b!2236975 (= lt!832131 (hash!577 (hashF!4940 (cache!3398 thiss!28797)) lt!832062))))

(declare-fun c!356461 () Bool)

(declare-datatypes ((tuple2!25724 0))(
  ( (tuple2!25725 (_1!15338 (_ BitVec 64)) (_2!15338 List!26420)) )
))
(declare-datatypes ((List!26421 0))(
  ( (Nil!26327) (Cons!26327 (h!31728 tuple2!25724) (t!199845 List!26421)) )
))
(declare-fun contains!4404 (List!26421 tuple2!25724) Bool)

(declare-datatypes ((ListLongMap!329 0))(
  ( (ListLongMap!330 (toList!1358 List!26421)) )
))
(declare-fun map!5414 (MutLongMap!3107) ListLongMap!329)

(assert (=> b!2236975 (= c!356461 (not (contains!4404 (toList!1358 (map!5414 (v!29935 (underlying!6416 (cache!3398 thiss!28797))))) (tuple2!25725 lt!832131 (apply!6481 (v!29935 (underlying!6416 (cache!3398 thiss!28797))) lt!832131)))))))

(declare-fun lt!832128 () Unit!39286)

(assert (=> b!2236975 (= lt!832128 e!1429811)))

(declare-fun lt!832139 () Unit!39286)

(declare-fun lambda!84538 () Int)

(declare-fun forallContained!777 (List!26421 Int tuple2!25724) Unit!39286)

(assert (=> b!2236975 (= lt!832139 (forallContained!777 (toList!1358 (map!5414 (v!29935 (underlying!6416 (cache!3398 thiss!28797))))) lambda!84538 (tuple2!25725 lt!832131 (apply!6481 (v!29935 (underlying!6416 (cache!3398 thiss!28797))) lt!832131))))))

(declare-fun lt!832138 () ListLongMap!329)

(assert (=> b!2236975 (= lt!832138 (map!5414 (v!29935 (underlying!6416 (cache!3398 thiss!28797)))))))

(declare-fun lt!832142 () Unit!39286)

(declare-fun lemmaGetPairGetSameValueAsMap!18 (ListLongMap!329 tuple3!4010 (InoxSet Context!4034) Hashable!3017) Unit!39286)

(assert (=> b!2236975 (= lt!832142 (lemmaGetPairGetSameValueAsMap!18 lt!832138 lt!832062 (_2!15337 (get!7960 (getPair!30 (apply!6481 (v!29935 (underlying!6416 (cache!3398 thiss!28797))) lt!832131) lt!832062))) (hashF!4940 (cache!3398 thiss!28797))))))

(declare-fun lt!832150 () Unit!39286)

(declare-fun lemmaInGenMapThenLongMapContainsHash!18 (ListLongMap!329 tuple3!4010 Hashable!3017) Unit!39286)

(assert (=> b!2236975 (= lt!832150 (lemmaInGenMapThenLongMapContainsHash!18 lt!832138 lt!832062 (hashF!4940 (cache!3398 thiss!28797))))))

(declare-fun contains!4405 (ListLongMap!329 (_ BitVec 64)) Bool)

(assert (=> b!2236975 (contains!4405 lt!832138 (hash!577 (hashF!4940 (cache!3398 thiss!28797)) lt!832062))))

(declare-fun lt!832130 () Unit!39286)

(assert (=> b!2236975 (= lt!832130 lt!832150)))

(declare-fun lt!832129 () (_ BitVec 64))

(assert (=> b!2236975 (= lt!832129 (hash!577 (hashF!4940 (cache!3398 thiss!28797)) lt!832062))))

(declare-fun lt!832155 () List!26420)

(declare-fun apply!6482 (ListLongMap!329 (_ BitVec 64)) List!26420)

(assert (=> b!2236975 (= lt!832155 (apply!6482 lt!832138 (hash!577 (hashF!4940 (cache!3398 thiss!28797)) lt!832062)))))

(declare-fun lt!832140 () Unit!39286)

(declare-fun lemmaGetValueImpliesTupleContained!19 (ListLongMap!329 (_ BitVec 64) List!26420) Unit!39286)

(assert (=> b!2236975 (= lt!832140 (lemmaGetValueImpliesTupleContained!19 lt!832138 lt!832129 lt!832155))))

(assert (=> b!2236975 (contains!4404 (toList!1358 lt!832138) (tuple2!25725 lt!832129 lt!832155))))

(declare-fun lt!832127 () Unit!39286)

(assert (=> b!2236975 (= lt!832127 lt!832140)))

(declare-fun lt!832153 () Unit!39286)

(assert (=> b!2236975 (= lt!832153 (forallContained!777 (toList!1358 lt!832138) lambda!84538 (tuple2!25725 (hash!577 (hashF!4940 (cache!3398 thiss!28797)) lt!832062) (apply!6482 lt!832138 (hash!577 (hashF!4940 (cache!3398 thiss!28797)) lt!832062)))))))

(declare-fun lt!832143 () Unit!39286)

(declare-fun lemmaInGenMapThenGetPairDefined!18 (ListLongMap!329 tuple3!4010 Hashable!3017) Unit!39286)

(assert (=> b!2236975 (= lt!832143 (lemmaInGenMapThenGetPairDefined!18 lt!832138 lt!832062 (hashF!4940 (cache!3398 thiss!28797))))))

(declare-fun lt!832132 () Unit!39286)

(assert (=> b!2236975 (= lt!832132 (lemmaInGenMapThenLongMapContainsHash!18 lt!832138 lt!832062 (hashF!4940 (cache!3398 thiss!28797))))))

(declare-fun lt!832148 () Unit!39286)

(assert (=> b!2236975 (= lt!832148 lt!832132)))

(declare-fun lt!832146 () (_ BitVec 64))

(assert (=> b!2236975 (= lt!832146 (hash!577 (hashF!4940 (cache!3398 thiss!28797)) lt!832062))))

(declare-fun lt!832152 () List!26420)

(assert (=> b!2236975 (= lt!832152 (apply!6482 lt!832138 (hash!577 (hashF!4940 (cache!3398 thiss!28797)) lt!832062)))))

(declare-fun lt!832136 () Unit!39286)

(assert (=> b!2236975 (= lt!832136 (lemmaGetValueImpliesTupleContained!19 lt!832138 lt!832146 lt!832152))))

(assert (=> b!2236975 (contains!4404 (toList!1358 lt!832138) (tuple2!25725 lt!832146 lt!832152))))

(declare-fun lt!832149 () Unit!39286)

(assert (=> b!2236975 (= lt!832149 lt!832136)))

(declare-fun lt!832151 () Unit!39286)

(assert (=> b!2236975 (= lt!832151 (forallContained!777 (toList!1358 lt!832138) lambda!84538 (tuple2!25725 (hash!577 (hashF!4940 (cache!3398 thiss!28797)) lt!832062) (apply!6482 lt!832138 (hash!577 (hashF!4940 (cache!3398 thiss!28797)) lt!832062)))))))

(declare-fun isDefined!4138 (Option!5124) Bool)

(assert (=> b!2236975 (isDefined!4138 (getPair!30 (apply!6482 lt!832138 (hash!577 (hashF!4940 (cache!3398 thiss!28797)) lt!832062)) lt!832062))))

(declare-fun lt!832145 () Unit!39286)

(assert (=> b!2236975 (= lt!832145 lt!832143)))

(declare-fun extractMap!110 (List!26421) ListMap!839)

(assert (=> b!2236975 (= (_2!15337 (get!7960 (getPair!30 (apply!6482 lt!832138 (hash!577 (hashF!4940 (cache!3398 thiss!28797)) lt!832062)) lt!832062))) (get!7959 (getValueByKey!75 (toList!1357 (extractMap!110 (toList!1358 lt!832138))) lt!832062)))))

(declare-fun lt!832144 () Unit!39286)

(assert (=> b!2236975 (= lt!832144 lt!832142)))

(declare-fun b!2236976 () Bool)

(assert (=> b!2236976 false))

(declare-fun lt!832133 () Unit!39286)

(declare-fun lt!832126 () Unit!39286)

(assert (=> b!2236976 (= lt!832133 lt!832126)))

(declare-fun lt!832147 () List!26421)

(declare-fun lt!832135 () List!26420)

(assert (=> b!2236976 (contains!4404 lt!832147 (tuple2!25725 lt!832131 lt!832135))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!31 (List!26421 (_ BitVec 64) List!26420) Unit!39286)

(assert (=> b!2236976 (= lt!832126 (lemmaGetValueByKeyImpliesContainsTuple!31 lt!832147 lt!832131 lt!832135))))

(assert (=> b!2236976 (= lt!832135 (apply!6481 (v!29935 (underlying!6416 (cache!3398 thiss!28797))) lt!832131))))

(assert (=> b!2236976 (= lt!832147 (toList!1358 (map!5414 (v!29935 (underlying!6416 (cache!3398 thiss!28797))))))))

(declare-fun lt!832134 () Unit!39286)

(declare-fun lt!832141 () Unit!39286)

(assert (=> b!2236976 (= lt!832134 lt!832141)))

(declare-fun lt!832137 () List!26421)

(declare-datatypes ((Option!5125 0))(
  ( (None!5124) (Some!5124 (v!29938 List!26420)) )
))
(declare-fun isDefined!4139 (Option!5125) Bool)

(declare-fun getValueByKey!76 (List!26421 (_ BitVec 64)) Option!5125)

(assert (=> b!2236976 (isDefined!4139 (getValueByKey!76 lt!832137 lt!832131))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!48 (List!26421 (_ BitVec 64)) Unit!39286)

(assert (=> b!2236976 (= lt!832141 (lemmaContainsKeyImpliesGetValueByKeyDefined!48 lt!832137 lt!832131))))

(assert (=> b!2236976 (= lt!832137 (toList!1358 (map!5414 (v!29935 (underlying!6416 (cache!3398 thiss!28797))))))))

(declare-fun Unit!39289 () Unit!39286)

(assert (=> b!2236976 (= e!1429811 Unit!39289)))

(declare-fun b!2236977 () Bool)

(assert (=> b!2236977 (= e!1429813 (dynLambda!11531 (defaultValue!3179 (cache!3398 thiss!28797)) lt!832062))))

(assert (= (and d!665504 c!356459) b!2236977))

(assert (= (and d!665504 (not c!356459)) b!2236975))

(assert (= (and b!2236975 c!356461) b!2236976))

(assert (= (and b!2236975 (not c!356461)) b!2236972))

(assert (= (and d!665504 c!356460) b!2236974))

(assert (= (and d!665504 (not c!356460)) b!2236973))

(declare-fun b_lambda!71697 () Bool)

(assert (=> (not b_lambda!71697) (not b!2236973)))

(declare-fun t!199844 () Bool)

(declare-fun tb!132853 () Bool)

(assert (=> (and b!2236911 (= (defaultValue!3179 (cache!3398 thiss!28797)) (defaultValue!3179 (cache!3398 thiss!28797))) t!199844) tb!132853))

(assert (=> b!2236973 t!199844))

(declare-fun result!161730 () Bool)

(declare-fun b_and!174885 () Bool)

(assert (= b_and!174883 (and (=> t!199844 result!161730) b_and!174885)))

(declare-fun b_lambda!71699 () Bool)

(assert (=> (not b_lambda!71699) (not b!2236977)))

(assert (=> b!2236977 t!199844))

(declare-fun b_and!174887 () Bool)

(assert (= b_and!174885 (and (=> t!199844 result!161730) b_and!174887)))

(assert (=> b!2236974 m!2670607))

(declare-fun m!2670615 () Bool)

(assert (=> b!2236974 m!2670615))

(assert (=> b!2236974 m!2670615))

(declare-fun m!2670617 () Bool)

(assert (=> b!2236974 m!2670617))

(assert (=> d!665504 m!2670568))

(assert (=> d!665504 m!2670605))

(declare-fun m!2670619 () Bool)

(assert (=> b!2236973 m!2670619))

(assert (=> b!2236977 m!2670619))

(declare-fun m!2670621 () Bool)

(assert (=> b!2236976 m!2670621))

(declare-fun m!2670623 () Bool)

(assert (=> b!2236976 m!2670623))

(assert (=> b!2236976 m!2670621))

(declare-fun m!2670625 () Bool)

(assert (=> b!2236976 m!2670625))

(declare-fun m!2670627 () Bool)

(assert (=> b!2236976 m!2670627))

(declare-fun m!2670629 () Bool)

(assert (=> b!2236976 m!2670629))

(declare-fun m!2670631 () Bool)

(assert (=> b!2236976 m!2670631))

(declare-fun m!2670633 () Bool)

(assert (=> b!2236976 m!2670633))

(declare-fun m!2670635 () Bool)

(assert (=> b!2236975 m!2670635))

(declare-fun m!2670637 () Bool)

(assert (=> b!2236975 m!2670637))

(declare-fun m!2670639 () Bool)

(assert (=> b!2236975 m!2670639))

(declare-fun m!2670641 () Bool)

(assert (=> b!2236975 m!2670641))

(declare-fun m!2670643 () Bool)

(assert (=> b!2236975 m!2670643))

(assert (=> b!2236975 m!2670633))

(declare-fun m!2670645 () Bool)

(assert (=> b!2236975 m!2670645))

(declare-fun m!2670647 () Bool)

(assert (=> b!2236975 m!2670647))

(declare-fun m!2670649 () Bool)

(assert (=> b!2236975 m!2670649))

(declare-fun m!2670651 () Bool)

(assert (=> b!2236975 m!2670651))

(declare-fun m!2670653 () Bool)

(assert (=> b!2236975 m!2670653))

(declare-fun m!2670655 () Bool)

(assert (=> b!2236975 m!2670655))

(assert (=> b!2236975 m!2670649))

(declare-fun m!2670657 () Bool)

(assert (=> b!2236975 m!2670657))

(declare-fun m!2670659 () Bool)

(assert (=> b!2236975 m!2670659))

(declare-fun m!2670661 () Bool)

(assert (=> b!2236975 m!2670661))

(declare-fun m!2670663 () Bool)

(assert (=> b!2236975 m!2670663))

(assert (=> b!2236975 m!2670637))

(declare-fun m!2670665 () Bool)

(assert (=> b!2236975 m!2670665))

(declare-fun m!2670667 () Bool)

(assert (=> b!2236975 m!2670667))

(assert (=> b!2236975 m!2670645))

(declare-fun m!2670669 () Bool)

(assert (=> b!2236975 m!2670669))

(declare-fun m!2670671 () Bool)

(assert (=> b!2236975 m!2670671))

(assert (=> b!2236975 m!2670633))

(assert (=> b!2236975 m!2670641))

(assert (=> b!2236975 m!2670639))

(declare-fun m!2670673 () Bool)

(assert (=> b!2236975 m!2670673))

(assert (=> b!2236975 m!2670649))

(declare-fun m!2670675 () Bool)

(assert (=> b!2236975 m!2670675))

(assert (=> b!2236975 m!2670631))

(assert (=> b!2236975 m!2670637))

(assert (=> b!2236975 m!2670655))

(assert (=> b!2236902 d!665504))

(declare-fun bs!454224 () Bool)

(declare-fun b!2236994 () Bool)

(assert (= bs!454224 (and b!2236994 b!2236956)))

(declare-fun lambda!84541 () Int)

(assert (=> bs!454224 (= lambda!84541 lambda!84528)))

(declare-fun b!2236990 () Bool)

(declare-fun e!1429831 () Bool)

(assert (=> b!2236990 (= e!1429831 (= (derivationStepZipperDown!71 r!4766 ctx!52 a!997) (apply!6480 (cache!3398 thiss!28797) (tuple3!4011 r!4766 ctx!52 a!997))))))

(declare-fun b!2236991 () Bool)

(declare-fun e!1429829 () Bool)

(assert (=> b!2236991 (= e!1429829 e!1429831)))

(declare-fun res!956965 () Bool)

(assert (=> b!2236991 (=> (not res!956965) (not e!1429831))))

(assert (=> b!2236991 (= res!956965 (validRegex!2431 r!4766))))

(declare-fun b!2236992 () Bool)

(declare-fun e!1429830 () Unit!39286)

(declare-fun Unit!39290 () Unit!39286)

(assert (=> b!2236992 (= e!1429830 Unit!39290)))

(declare-fun d!665506 () Bool)

(assert (=> d!665506 e!1429829))

(declare-fun res!956966 () Bool)

(assert (=> d!665506 (=> res!956966 e!1429829)))

(assert (=> d!665506 (= res!956966 (not (contains!4403 (cache!3398 thiss!28797) (tuple3!4011 r!4766 ctx!52 a!997))))))

(declare-fun lt!832176 () Unit!39286)

(assert (=> d!665506 (= lt!832176 e!1429830)))

(declare-fun c!356464 () Bool)

(assert (=> d!665506 (= c!356464 (contains!4403 (cache!3398 thiss!28797) (tuple3!4011 r!4766 ctx!52 a!997)))))

(assert (=> d!665506 (validCacheMapDown!318 (cache!3398 thiss!28797))))

(assert (=> d!665506 (= (lemmaIfInCacheThenValid!35 thiss!28797 r!4766 ctx!52 a!997) lt!832176)))

(declare-fun b!2236993 () Bool)

(declare-fun lt!832174 () tuple3!4010)

(declare-fun lt!832179 () tuple3!4010)

(assert (=> b!2236993 (= lt!832174 lt!832179)))

(declare-fun lt!832182 () (InoxSet Context!4034))

(assert (=> b!2236993 (= lt!832182 (apply!6480 (cache!3398 thiss!28797) lt!832179))))

(declare-fun lt!832177 () (InoxSet Context!4034))

(assert (=> b!2236993 (= lt!832177 (apply!6480 (cache!3398 thiss!28797) lt!832179))))

(declare-fun lt!832180 () (InoxSet Context!4034))

(assert (=> b!2236993 (= lt!832180 (apply!6480 (cache!3398 thiss!28797) lt!832179))))

(declare-fun e!1429832 () Bool)

(assert (=> b!2236993 (= e!1429832 (= (apply!6480 (cache!3398 thiss!28797) lt!832179) (derivationStepZipperDown!71 (_1!15336 lt!832179) (_2!15336 lt!832179) (_3!2475 lt!832179))))))

(declare-fun lt!832178 () Unit!39286)

(assert (=> b!2236994 (= e!1429830 lt!832178)))

(assert (=> b!2236994 (= lt!832179 (tuple3!4011 r!4766 ctx!52 a!997))))

(declare-fun lemmaForallPairsThenForLookup!22 (MutableMap!3017 tuple3!4010 Int) Unit!39286)

(assert (=> b!2236994 (= lt!832178 (lemmaForallPairsThenForLookup!22 (cache!3398 thiss!28797) lt!832179 lambda!84541))))

(declare-fun lt!832175 () tuple2!25722)

(assert (=> b!2236994 (= lt!832175 (tuple2!25723 lt!832179 (apply!6480 (cache!3398 thiss!28797) lt!832179)))))

(declare-fun lt!832181 () (InoxSet Context!4034))

(assert (=> b!2236994 (= lt!832181 (apply!6480 (cache!3398 thiss!28797) lt!832179))))

(declare-fun res!956964 () Bool)

(assert (=> b!2236994 (= res!956964 (validRegex!2431 (_1!15336 lt!832179)))))

(assert (=> b!2236994 (=> (not res!956964) (not e!1429832))))

(assert (=> b!2236994 e!1429832))

(assert (= (and d!665506 c!356464) b!2236994))

(assert (= (and d!665506 (not c!356464)) b!2236992))

(assert (= (and b!2236994 res!956964) b!2236993))

(assert (= (and d!665506 (not res!956966)) b!2236991))

(assert (= (and b!2236991 res!956965) b!2236990))

(assert (=> b!2236991 m!2670588))

(assert (=> b!2236990 m!2670592))

(declare-fun m!2670677 () Bool)

(assert (=> b!2236990 m!2670677))

(declare-fun m!2670679 () Bool)

(assert (=> b!2236994 m!2670679))

(declare-fun m!2670681 () Bool)

(assert (=> b!2236994 m!2670681))

(declare-fun m!2670683 () Bool)

(assert (=> b!2236994 m!2670683))

(declare-fun m!2670685 () Bool)

(assert (=> d!665506 m!2670685))

(assert (=> d!665506 m!2670574))

(assert (=> b!2236993 m!2670681))

(declare-fun m!2670687 () Bool)

(assert (=> b!2236993 m!2670687))

(assert (=> b!2236902 d!665506))

(declare-fun d!665508 () Bool)

(assert (=> d!665508 (= (array_inv!3449 (_keys!3404 (v!29934 (underlying!6415 (v!29935 (underlying!6416 (cache!3398 thiss!28797))))))) (bvsge (size!20582 (_keys!3404 (v!29934 (underlying!6415 (v!29935 (underlying!6416 (cache!3398 thiss!28797))))))) #b00000000000000000000000000000000))))

(assert (=> b!2236904 d!665508))

(declare-fun d!665510 () Bool)

(assert (=> d!665510 (= (array_inv!3450 (_values!3387 (v!29934 (underlying!6415 (v!29935 (underlying!6416 (cache!3398 thiss!28797))))))) (bvsge (size!20583 (_values!3387 (v!29934 (underlying!6415 (v!29935 (underlying!6416 (cache!3398 thiss!28797))))))) #b00000000000000000000000000000000))))

(assert (=> b!2236904 d!665510))

(declare-fun bs!454225 () Bool)

(declare-fun b!2237023 () Bool)

(assert (= bs!454225 (and b!2237023 b!2236975)))

(declare-fun lambda!84544 () Int)

(assert (=> bs!454225 (= lambda!84544 lambda!84538)))

(declare-fun b!2237017 () Bool)

(declare-fun e!1429851 () Unit!39286)

(declare-fun Unit!39291 () Unit!39286)

(assert (=> b!2237017 (= e!1429851 Unit!39291)))

(declare-fun b!2237018 () Bool)

(assert (=> b!2237018 false))

(declare-fun lt!832224 () Unit!39286)

(declare-fun lt!832223 () Unit!39286)

(assert (=> b!2237018 (= lt!832224 lt!832223)))

(declare-fun lt!832232 () ListLongMap!329)

(declare-fun contains!4406 (ListMap!839 tuple3!4010) Bool)

(assert (=> b!2237018 (contains!4406 (extractMap!110 (toList!1358 lt!832232)) lt!832062)))

(declare-fun lemmaInLongMapThenInGenericMap!30 (ListLongMap!329 tuple3!4010 Hashable!3017) Unit!39286)

(assert (=> b!2237018 (= lt!832223 (lemmaInLongMapThenInGenericMap!30 lt!832232 lt!832062 (hashF!4940 (cache!3398 thiss!28797))))))

(declare-fun call!134889 () ListLongMap!329)

(assert (=> b!2237018 (= lt!832232 call!134889)))

(declare-fun e!1429847 () Unit!39286)

(declare-fun Unit!39292 () Unit!39286)

(assert (=> b!2237018 (= e!1429847 Unit!39292)))

(declare-fun bm!134882 () Bool)

(declare-fun call!134892 () (_ BitVec 64))

(assert (=> bm!134882 (= call!134892 (hash!577 (hashF!4940 (cache!3398 thiss!28797)) lt!832062))))

(declare-fun d!665512 () Bool)

(declare-fun lt!832237 () Bool)

(assert (=> d!665512 (= lt!832237 (contains!4406 (map!5413 (cache!3398 thiss!28797)) lt!832062))))

(declare-fun e!1429850 () Bool)

(assert (=> d!665512 (= lt!832237 e!1429850)))

(declare-fun res!956975 () Bool)

(assert (=> d!665512 (=> (not res!956975) (not e!1429850))))

(declare-fun lt!832235 () (_ BitVec 64))

(declare-fun contains!4407 (MutLongMap!3107 (_ BitVec 64)) Bool)

(assert (=> d!665512 (= res!956975 (contains!4407 (v!29935 (underlying!6416 (cache!3398 thiss!28797))) lt!832235))))

(declare-fun lt!832238 () Unit!39286)

(declare-fun e!1429849 () Unit!39286)

(assert (=> d!665512 (= lt!832238 e!1429849)))

(declare-fun c!356474 () Bool)

(assert (=> d!665512 (= c!356474 (contains!4406 (extractMap!110 (toList!1358 (map!5414 (v!29935 (underlying!6416 (cache!3398 thiss!28797)))))) lt!832062))))

(declare-fun lt!832234 () Unit!39286)

(assert (=> d!665512 (= lt!832234 e!1429851)))

(declare-fun c!356476 () Bool)

(assert (=> d!665512 (= c!356476 (contains!4407 (v!29935 (underlying!6416 (cache!3398 thiss!28797))) lt!832235))))

(assert (=> d!665512 (= lt!832235 (hash!577 (hashF!4940 (cache!3398 thiss!28797)) lt!832062))))

(assert (=> d!665512 (valid!2345 (cache!3398 thiss!28797))))

(assert (=> d!665512 (= (contains!4403 (cache!3398 thiss!28797) lt!832062) lt!832237)))

(declare-fun b!2237019 () Bool)

(declare-fun lt!832240 () Unit!39286)

(assert (=> b!2237019 (= e!1429849 lt!832240)))

(declare-fun lt!832227 () ListLongMap!329)

(assert (=> b!2237019 (= lt!832227 call!134889)))

(declare-fun lemmaInGenericMapThenInLongMap!30 (ListLongMap!329 tuple3!4010 Hashable!3017) Unit!39286)

(assert (=> b!2237019 (= lt!832240 (lemmaInGenericMapThenInLongMap!30 lt!832227 lt!832062 (hashF!4940 (cache!3398 thiss!28797))))))

(declare-fun res!956973 () Bool)

(declare-fun call!134887 () Bool)

(assert (=> b!2237019 (= res!956973 call!134887)))

(declare-fun e!1429852 () Bool)

(assert (=> b!2237019 (=> (not res!956973) (not e!1429852))))

(assert (=> b!2237019 e!1429852))

(declare-fun b!2237020 () Bool)

(declare-fun e!1429853 () Unit!39286)

(declare-fun Unit!39293 () Unit!39286)

(assert (=> b!2237020 (= e!1429853 Unit!39293)))

(declare-fun bm!134883 () Bool)

(assert (=> bm!134883 (= call!134889 (map!5414 (v!29935 (underlying!6416 (cache!3398 thiss!28797)))))))

(declare-fun b!2237021 () Bool)

(declare-fun call!134888 () Bool)

(assert (=> b!2237021 (= e!1429852 call!134888)))

(declare-fun bm!134884 () Bool)

(declare-fun call!134890 () Option!5124)

(assert (=> bm!134884 (= call!134888 (isDefined!4138 call!134890))))

(declare-fun bm!134885 () Bool)

(declare-fun call!134891 () List!26420)

(assert (=> bm!134885 (= call!134890 (getPair!30 call!134891 lt!832062))))

(declare-fun b!2237022 () Bool)

(declare-fun e!1429848 () Bool)

(assert (=> b!2237022 (= e!1429848 call!134888)))

(declare-fun bm!134886 () Bool)

(assert (=> bm!134886 (= call!134887 (contains!4405 (ite c!356474 lt!832227 call!134889) call!134892))))

(assert (=> b!2237023 (= e!1429851 (forallContained!777 (toList!1358 (map!5414 (v!29935 (underlying!6416 (cache!3398 thiss!28797))))) lambda!84544 (tuple2!25725 lt!832235 (apply!6481 (v!29935 (underlying!6416 (cache!3398 thiss!28797))) lt!832235))))))

(declare-fun c!356475 () Bool)

(assert (=> b!2237023 (= c!356475 (not (contains!4404 (toList!1358 (map!5414 (v!29935 (underlying!6416 (cache!3398 thiss!28797))))) (tuple2!25725 lt!832235 (apply!6481 (v!29935 (underlying!6416 (cache!3398 thiss!28797))) lt!832235)))))))

(declare-fun lt!832230 () Unit!39286)

(assert (=> b!2237023 (= lt!832230 e!1429853)))

(declare-fun bm!134887 () Bool)

(assert (=> bm!134887 (= call!134891 (apply!6482 (ite c!356474 lt!832227 call!134889) call!134892))))

(declare-fun b!2237024 () Bool)

(assert (=> b!2237024 (= e!1429849 e!1429847)))

(declare-fun res!956974 () Bool)

(assert (=> b!2237024 (= res!956974 call!134887)))

(assert (=> b!2237024 (=> (not res!956974) (not e!1429848))))

(declare-fun c!356473 () Bool)

(assert (=> b!2237024 (= c!356473 e!1429848)))

(declare-fun b!2237025 () Bool)

(assert (=> b!2237025 false))

(declare-fun lt!832226 () Unit!39286)

(declare-fun lt!832225 () Unit!39286)

(assert (=> b!2237025 (= lt!832226 lt!832225)))

(declare-fun lt!832231 () List!26421)

(declare-fun lt!832241 () List!26420)

(assert (=> b!2237025 (contains!4404 lt!832231 (tuple2!25725 lt!832235 lt!832241))))

(assert (=> b!2237025 (= lt!832225 (lemmaGetValueByKeyImpliesContainsTuple!31 lt!832231 lt!832235 lt!832241))))

(assert (=> b!2237025 (= lt!832241 (apply!6481 (v!29935 (underlying!6416 (cache!3398 thiss!28797))) lt!832235))))

(assert (=> b!2237025 (= lt!832231 (toList!1358 (map!5414 (v!29935 (underlying!6416 (cache!3398 thiss!28797))))))))

(declare-fun lt!832242 () Unit!39286)

(declare-fun lt!832236 () Unit!39286)

(assert (=> b!2237025 (= lt!832242 lt!832236)))

(declare-fun lt!832228 () List!26421)

(assert (=> b!2237025 (isDefined!4139 (getValueByKey!76 lt!832228 lt!832235))))

(assert (=> b!2237025 (= lt!832236 (lemmaContainsKeyImpliesGetValueByKeyDefined!48 lt!832228 lt!832235))))

(assert (=> b!2237025 (= lt!832228 (toList!1358 (map!5414 (v!29935 (underlying!6416 (cache!3398 thiss!28797))))))))

(declare-fun lt!832239 () Unit!39286)

(declare-fun lt!832233 () Unit!39286)

(assert (=> b!2237025 (= lt!832239 lt!832233)))

(declare-fun lt!832229 () List!26421)

(declare-fun containsKey!79 (List!26421 (_ BitVec 64)) Bool)

(assert (=> b!2237025 (containsKey!79 lt!832229 lt!832235)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!31 (List!26421 (_ BitVec 64)) Unit!39286)

(assert (=> b!2237025 (= lt!832233 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!31 lt!832229 lt!832235))))

(assert (=> b!2237025 (= lt!832229 (toList!1358 (map!5414 (v!29935 (underlying!6416 (cache!3398 thiss!28797))))))))

(declare-fun Unit!39294 () Unit!39286)

(assert (=> b!2237025 (= e!1429853 Unit!39294)))

(declare-fun b!2237026 () Bool)

(assert (=> b!2237026 (= e!1429850 (isDefined!4138 (getPair!30 (apply!6481 (v!29935 (underlying!6416 (cache!3398 thiss!28797))) lt!832235) lt!832062)))))

(declare-fun b!2237027 () Bool)

(declare-fun Unit!39295 () Unit!39286)

(assert (=> b!2237027 (= e!1429847 Unit!39295)))

(assert (= (and d!665512 c!356476) b!2237023))

(assert (= (and d!665512 (not c!356476)) b!2237017))

(assert (= (and b!2237023 c!356475) b!2237025))

(assert (= (and b!2237023 (not c!356475)) b!2237020))

(assert (= (and d!665512 c!356474) b!2237019))

(assert (= (and d!665512 (not c!356474)) b!2237024))

(assert (= (and b!2237019 res!956973) b!2237021))

(assert (= (and b!2237024 res!956974) b!2237022))

(assert (= (and b!2237024 c!356473) b!2237018))

(assert (= (and b!2237024 (not c!356473)) b!2237027))

(assert (= (or b!2237019 b!2237024 b!2237022 b!2237018) bm!134883))

(assert (= (or b!2237019 b!2237021 b!2237024 b!2237022) bm!134882))

(assert (= (or b!2237019 b!2237024) bm!134886))

(assert (= (or b!2237021 b!2237022) bm!134887))

(assert (= (or b!2237021 b!2237022) bm!134885))

(assert (= (or b!2237021 b!2237022) bm!134884))

(assert (= (and d!665512 res!956975) b!2237026))

(assert (=> bm!134883 m!2670631))

(assert (=> d!665512 m!2670605))

(assert (=> d!665512 m!2670631))

(declare-fun m!2670689 () Bool)

(assert (=> d!665512 m!2670689))

(assert (=> d!665512 m!2670607))

(assert (=> d!665512 m!2670607))

(declare-fun m!2670691 () Bool)

(assert (=> d!665512 m!2670691))

(declare-fun m!2670693 () Bool)

(assert (=> d!665512 m!2670693))

(declare-fun m!2670695 () Bool)

(assert (=> d!665512 m!2670695))

(assert (=> d!665512 m!2670637))

(assert (=> d!665512 m!2670693))

(declare-fun m!2670697 () Bool)

(assert (=> bm!134887 m!2670697))

(declare-fun m!2670699 () Bool)

(assert (=> bm!134886 m!2670699))

(declare-fun m!2670701 () Bool)

(assert (=> b!2237019 m!2670701))

(assert (=> b!2237023 m!2670631))

(declare-fun m!2670703 () Bool)

(assert (=> b!2237023 m!2670703))

(declare-fun m!2670705 () Bool)

(assert (=> b!2237023 m!2670705))

(declare-fun m!2670707 () Bool)

(assert (=> b!2237023 m!2670707))

(declare-fun m!2670709 () Bool)

(assert (=> bm!134884 m!2670709))

(declare-fun m!2670711 () Bool)

(assert (=> bm!134885 m!2670711))

(declare-fun m!2670713 () Bool)

(assert (=> b!2237025 m!2670713))

(assert (=> b!2237025 m!2670631))

(declare-fun m!2670715 () Bool)

(assert (=> b!2237025 m!2670715))

(declare-fun m!2670717 () Bool)

(assert (=> b!2237025 m!2670717))

(assert (=> b!2237025 m!2670703))

(declare-fun m!2670719 () Bool)

(assert (=> b!2237025 m!2670719))

(declare-fun m!2670721 () Bool)

(assert (=> b!2237025 m!2670721))

(assert (=> b!2237025 m!2670719))

(declare-fun m!2670723 () Bool)

(assert (=> b!2237025 m!2670723))

(declare-fun m!2670725 () Bool)

(assert (=> b!2237025 m!2670725))

(assert (=> b!2237026 m!2670703))

(assert (=> b!2237026 m!2670703))

(declare-fun m!2670727 () Bool)

(assert (=> b!2237026 m!2670727))

(assert (=> b!2237026 m!2670727))

(declare-fun m!2670729 () Bool)

(assert (=> b!2237026 m!2670729))

(assert (=> bm!134882 m!2670637))

(declare-fun m!2670731 () Bool)

(assert (=> b!2237018 m!2670731))

(assert (=> b!2237018 m!2670731))

(declare-fun m!2670733 () Bool)

(assert (=> b!2237018 m!2670733))

(declare-fun m!2670735 () Bool)

(assert (=> b!2237018 m!2670735))

(assert (=> b!2236909 d!665512))

(declare-fun b!2237046 () Bool)

(declare-fun e!1429873 () Bool)

(declare-fun e!1429868 () Bool)

(assert (=> b!2237046 (= e!1429873 e!1429868)))

(declare-fun res!956989 () Bool)

(assert (=> b!2237046 (= res!956989 (not (nullable!1785 (reg!6798 r!4766))))))

(assert (=> b!2237046 (=> (not res!956989) (not e!1429868))))

(declare-fun b!2237047 () Bool)

(declare-fun call!134899 () Bool)

(assert (=> b!2237047 (= e!1429868 call!134899)))

(declare-fun d!665514 () Bool)

(declare-fun res!956986 () Bool)

(declare-fun e!1429869 () Bool)

(assert (=> d!665514 (=> res!956986 e!1429869)))

(assert (=> d!665514 (= res!956986 ((_ is ElementMatch!6469) r!4766))))

(assert (=> d!665514 (= (validRegex!2431 r!4766) e!1429869)))

(declare-fun bm!134894 () Bool)

(declare-fun call!134901 () Bool)

(declare-fun c!356481 () Bool)

(assert (=> bm!134894 (= call!134901 (validRegex!2431 (ite c!356481 (regTwo!13451 r!4766) (regTwo!13450 r!4766))))))

(declare-fun b!2237048 () Bool)

(declare-fun e!1429872 () Bool)

(declare-fun e!1429874 () Bool)

(assert (=> b!2237048 (= e!1429872 e!1429874)))

(declare-fun res!956990 () Bool)

(assert (=> b!2237048 (=> (not res!956990) (not e!1429874))))

(declare-fun call!134900 () Bool)

(assert (=> b!2237048 (= res!956990 call!134900)))

(declare-fun b!2237049 () Bool)

(declare-fun e!1429871 () Bool)

(assert (=> b!2237049 (= e!1429871 call!134901)))

(declare-fun b!2237050 () Bool)

(declare-fun res!956988 () Bool)

(assert (=> b!2237050 (=> res!956988 e!1429872)))

(assert (=> b!2237050 (= res!956988 (not ((_ is Concat!10807) r!4766)))))

(declare-fun e!1429870 () Bool)

(assert (=> b!2237050 (= e!1429870 e!1429872)))

(declare-fun bm!134895 () Bool)

(assert (=> bm!134895 (= call!134900 call!134899)))

(declare-fun b!2237051 () Bool)

(assert (=> b!2237051 (= e!1429873 e!1429870)))

(assert (=> b!2237051 (= c!356481 ((_ is Union!6469) r!4766))))

(declare-fun b!2237052 () Bool)

(declare-fun res!956987 () Bool)

(assert (=> b!2237052 (=> (not res!956987) (not e!1429871))))

(assert (=> b!2237052 (= res!956987 call!134900)))

(assert (=> b!2237052 (= e!1429870 e!1429871)))

(declare-fun b!2237053 () Bool)

(assert (=> b!2237053 (= e!1429869 e!1429873)))

(declare-fun c!356482 () Bool)

(assert (=> b!2237053 (= c!356482 ((_ is Star!6469) r!4766))))

(declare-fun b!2237054 () Bool)

(assert (=> b!2237054 (= e!1429874 call!134901)))

(declare-fun bm!134896 () Bool)

(assert (=> bm!134896 (= call!134899 (validRegex!2431 (ite c!356482 (reg!6798 r!4766) (ite c!356481 (regOne!13451 r!4766) (regOne!13450 r!4766)))))))

(assert (= (and d!665514 (not res!956986)) b!2237053))

(assert (= (and b!2237053 c!356482) b!2237046))

(assert (= (and b!2237053 (not c!356482)) b!2237051))

(assert (= (and b!2237046 res!956989) b!2237047))

(assert (= (and b!2237051 c!356481) b!2237052))

(assert (= (and b!2237051 (not c!356481)) b!2237050))

(assert (= (and b!2237052 res!956987) b!2237049))

(assert (= (and b!2237050 (not res!956988)) b!2237048))

(assert (= (and b!2237048 res!956990) b!2237054))

(assert (= (or b!2237049 b!2237054) bm!134894))

(assert (= (or b!2237052 b!2237048) bm!134895))

(assert (= (or b!2237047 bm!134895) bm!134896))

(declare-fun m!2670737 () Bool)

(assert (=> b!2237046 m!2670737))

(declare-fun m!2670739 () Bool)

(assert (=> bm!134894 m!2670739))

(declare-fun m!2670741 () Bool)

(assert (=> bm!134896 m!2670741))

(assert (=> b!2236910 d!665514))

(declare-fun b!2237067 () Bool)

(declare-fun e!1429877 () Bool)

(declare-fun tp!703464 () Bool)

(assert (=> b!2237067 (= e!1429877 tp!703464)))

(declare-fun b!2237068 () Bool)

(declare-fun tp!703463 () Bool)

(declare-fun tp!703462 () Bool)

(assert (=> b!2237068 (= e!1429877 (and tp!703463 tp!703462))))

(declare-fun b!2237066 () Bool)

(declare-fun tp!703465 () Bool)

(declare-fun tp!703461 () Bool)

(assert (=> b!2237066 (= e!1429877 (and tp!703465 tp!703461))))

(assert (=> b!2236900 (= tp!703442 e!1429877)))

(declare-fun b!2237065 () Bool)

(assert (=> b!2237065 (= e!1429877 tp_is_empty!10163)))

(assert (= (and b!2236900 ((_ is ElementMatch!6469) (regOne!13450 r!4766))) b!2237065))

(assert (= (and b!2236900 ((_ is Concat!10807) (regOne!13450 r!4766))) b!2237066))

(assert (= (and b!2236900 ((_ is Star!6469) (regOne!13450 r!4766))) b!2237067))

(assert (= (and b!2236900 ((_ is Union!6469) (regOne!13450 r!4766))) b!2237068))

(declare-fun b!2237071 () Bool)

(declare-fun e!1429878 () Bool)

(declare-fun tp!703469 () Bool)

(assert (=> b!2237071 (= e!1429878 tp!703469)))

(declare-fun b!2237072 () Bool)

(declare-fun tp!703468 () Bool)

(declare-fun tp!703467 () Bool)

(assert (=> b!2237072 (= e!1429878 (and tp!703468 tp!703467))))

(declare-fun b!2237070 () Bool)

(declare-fun tp!703470 () Bool)

(declare-fun tp!703466 () Bool)

(assert (=> b!2237070 (= e!1429878 (and tp!703470 tp!703466))))

(assert (=> b!2236900 (= tp!703440 e!1429878)))

(declare-fun b!2237069 () Bool)

(assert (=> b!2237069 (= e!1429878 tp_is_empty!10163)))

(assert (= (and b!2236900 ((_ is ElementMatch!6469) (regTwo!13450 r!4766))) b!2237069))

(assert (= (and b!2236900 ((_ is Concat!10807) (regTwo!13450 r!4766))) b!2237070))

(assert (= (and b!2236900 ((_ is Star!6469) (regTwo!13450 r!4766))) b!2237071))

(assert (= (and b!2236900 ((_ is Union!6469) (regTwo!13450 r!4766))) b!2237072))

(declare-fun b!2237075 () Bool)

(declare-fun e!1429879 () Bool)

(declare-fun tp!703474 () Bool)

(assert (=> b!2237075 (= e!1429879 tp!703474)))

(declare-fun b!2237076 () Bool)

(declare-fun tp!703473 () Bool)

(declare-fun tp!703472 () Bool)

(assert (=> b!2237076 (= e!1429879 (and tp!703473 tp!703472))))

(declare-fun b!2237074 () Bool)

(declare-fun tp!703475 () Bool)

(declare-fun tp!703471 () Bool)

(assert (=> b!2237074 (= e!1429879 (and tp!703475 tp!703471))))

(assert (=> b!2236915 (= tp!703438 e!1429879)))

(declare-fun b!2237073 () Bool)

(assert (=> b!2237073 (= e!1429879 tp_is_empty!10163)))

(assert (= (and b!2236915 ((_ is ElementMatch!6469) (reg!6798 r!4766))) b!2237073))

(assert (= (and b!2236915 ((_ is Concat!10807) (reg!6798 r!4766))) b!2237074))

(assert (= (and b!2236915 ((_ is Star!6469) (reg!6798 r!4766))) b!2237075))

(assert (= (and b!2236915 ((_ is Union!6469) (reg!6798 r!4766))) b!2237076))

(declare-fun e!1429888 () Bool)

(assert (=> b!2236907 (= tp!703447 e!1429888)))

(declare-fun b!2237085 () Bool)

(declare-fun e!1429886 () Bool)

(declare-fun tp!703487 () Bool)

(assert (=> b!2237085 (= e!1429886 tp!703487)))

(declare-fun setIsEmpty!20404 () Bool)

(declare-fun setRes!20404 () Bool)

(assert (=> setIsEmpty!20404 setRes!20404))

(declare-fun tp!703489 () Bool)

(declare-fun b!2237086 () Bool)

(declare-fun tp!703486 () Bool)

(declare-fun e!1429887 () Bool)

(assert (=> b!2237086 (= e!1429888 (and tp!703486 (inv!35760 (_2!15336 (_1!15337 (h!31727 mapDefault!14594)))) e!1429887 tp_is_empty!10163 setRes!20404 tp!703489))))

(declare-fun condSetEmpty!20404 () Bool)

(assert (=> b!2237086 (= condSetEmpty!20404 (= (_2!15337 (h!31727 mapDefault!14594)) ((as const (Array Context!4034 Bool)) false)))))

(declare-fun setNonEmpty!20404 () Bool)

(declare-fun setElem!20404 () Context!4034)

(declare-fun tp!703490 () Bool)

(assert (=> setNonEmpty!20404 (= setRes!20404 (and tp!703490 (inv!35760 setElem!20404) e!1429886))))

(declare-fun setRest!20404 () (InoxSet Context!4034))

(assert (=> setNonEmpty!20404 (= (_2!15337 (h!31727 mapDefault!14594)) ((_ map or) (store ((as const (Array Context!4034 Bool)) false) setElem!20404 true) setRest!20404))))

(declare-fun b!2237087 () Bool)

(declare-fun tp!703488 () Bool)

(assert (=> b!2237087 (= e!1429887 tp!703488)))

(assert (= b!2237086 b!2237087))

(assert (= (and b!2237086 condSetEmpty!20404) setIsEmpty!20404))

(assert (= (and b!2237086 (not condSetEmpty!20404)) setNonEmpty!20404))

(assert (= setNonEmpty!20404 b!2237085))

(assert (= (and b!2236907 ((_ is Cons!26326) mapDefault!14594)) b!2237086))

(declare-fun m!2670743 () Bool)

(assert (=> b!2237086 m!2670743))

(declare-fun m!2670745 () Bool)

(assert (=> setNonEmpty!20404 m!2670745))

(declare-fun b!2237090 () Bool)

(declare-fun e!1429889 () Bool)

(declare-fun tp!703494 () Bool)

(assert (=> b!2237090 (= e!1429889 tp!703494)))

(declare-fun b!2237091 () Bool)

(declare-fun tp!703493 () Bool)

(declare-fun tp!703492 () Bool)

(assert (=> b!2237091 (= e!1429889 (and tp!703493 tp!703492))))

(declare-fun b!2237089 () Bool)

(declare-fun tp!703495 () Bool)

(declare-fun tp!703491 () Bool)

(assert (=> b!2237089 (= e!1429889 (and tp!703495 tp!703491))))

(assert (=> b!2236908 (= tp!703444 e!1429889)))

(declare-fun b!2237088 () Bool)

(assert (=> b!2237088 (= e!1429889 tp_is_empty!10163)))

(assert (= (and b!2236908 ((_ is ElementMatch!6469) (regOne!13451 r!4766))) b!2237088))

(assert (= (and b!2236908 ((_ is Concat!10807) (regOne!13451 r!4766))) b!2237089))

(assert (= (and b!2236908 ((_ is Star!6469) (regOne!13451 r!4766))) b!2237090))

(assert (= (and b!2236908 ((_ is Union!6469) (regOne!13451 r!4766))) b!2237091))

(declare-fun b!2237094 () Bool)

(declare-fun e!1429890 () Bool)

(declare-fun tp!703499 () Bool)

(assert (=> b!2237094 (= e!1429890 tp!703499)))

(declare-fun b!2237095 () Bool)

(declare-fun tp!703498 () Bool)

(declare-fun tp!703497 () Bool)

(assert (=> b!2237095 (= e!1429890 (and tp!703498 tp!703497))))

(declare-fun b!2237093 () Bool)

(declare-fun tp!703500 () Bool)

(declare-fun tp!703496 () Bool)

(assert (=> b!2237093 (= e!1429890 (and tp!703500 tp!703496))))

(assert (=> b!2236908 (= tp!703441 e!1429890)))

(declare-fun b!2237092 () Bool)

(assert (=> b!2237092 (= e!1429890 tp_is_empty!10163)))

(assert (= (and b!2236908 ((_ is ElementMatch!6469) (regTwo!13451 r!4766))) b!2237092))

(assert (= (and b!2236908 ((_ is Concat!10807) (regTwo!13451 r!4766))) b!2237093))

(assert (= (and b!2236908 ((_ is Star!6469) (regTwo!13451 r!4766))) b!2237094))

(assert (= (and b!2236908 ((_ is Union!6469) (regTwo!13451 r!4766))) b!2237095))

(declare-fun b!2237100 () Bool)

(declare-fun e!1429893 () Bool)

(declare-fun tp!703505 () Bool)

(declare-fun tp!703506 () Bool)

(assert (=> b!2237100 (= e!1429893 (and tp!703505 tp!703506))))

(assert (=> b!2236914 (= tp!703448 e!1429893)))

(assert (= (and b!2236914 ((_ is Cons!26325) (exprs!2517 ctx!52))) b!2237100))

(declare-fun e!1429896 () Bool)

(assert (=> b!2236904 (= tp!703446 e!1429896)))

(declare-fun b!2237101 () Bool)

(declare-fun e!1429894 () Bool)

(declare-fun tp!703508 () Bool)

(assert (=> b!2237101 (= e!1429894 tp!703508)))

(declare-fun setIsEmpty!20405 () Bool)

(declare-fun setRes!20405 () Bool)

(assert (=> setIsEmpty!20405 setRes!20405))

(declare-fun b!2237102 () Bool)

(declare-fun e!1429895 () Bool)

(declare-fun tp!703507 () Bool)

(declare-fun tp!703510 () Bool)

(assert (=> b!2237102 (= e!1429896 (and tp!703507 (inv!35760 (_2!15336 (_1!15337 (h!31727 (zeroValue!3365 (v!29934 (underlying!6415 (v!29935 (underlying!6416 (cache!3398 thiss!28797)))))))))) e!1429895 tp_is_empty!10163 setRes!20405 tp!703510))))

(declare-fun condSetEmpty!20405 () Bool)

(assert (=> b!2237102 (= condSetEmpty!20405 (= (_2!15337 (h!31727 (zeroValue!3365 (v!29934 (underlying!6415 (v!29935 (underlying!6416 (cache!3398 thiss!28797)))))))) ((as const (Array Context!4034 Bool)) false)))))

(declare-fun setNonEmpty!20405 () Bool)

(declare-fun tp!703511 () Bool)

(declare-fun setElem!20405 () Context!4034)

(assert (=> setNonEmpty!20405 (= setRes!20405 (and tp!703511 (inv!35760 setElem!20405) e!1429894))))

(declare-fun setRest!20405 () (InoxSet Context!4034))

(assert (=> setNonEmpty!20405 (= (_2!15337 (h!31727 (zeroValue!3365 (v!29934 (underlying!6415 (v!29935 (underlying!6416 (cache!3398 thiss!28797)))))))) ((_ map or) (store ((as const (Array Context!4034 Bool)) false) setElem!20405 true) setRest!20405))))

(declare-fun b!2237103 () Bool)

(declare-fun tp!703509 () Bool)

(assert (=> b!2237103 (= e!1429895 tp!703509)))

(assert (= b!2237102 b!2237103))

(assert (= (and b!2237102 condSetEmpty!20405) setIsEmpty!20405))

(assert (= (and b!2237102 (not condSetEmpty!20405)) setNonEmpty!20405))

(assert (= setNonEmpty!20405 b!2237101))

(assert (= (and b!2236904 ((_ is Cons!26326) (zeroValue!3365 (v!29934 (underlying!6415 (v!29935 (underlying!6416 (cache!3398 thiss!28797)))))))) b!2237102))

(declare-fun m!2670747 () Bool)

(assert (=> b!2237102 m!2670747))

(declare-fun m!2670749 () Bool)

(assert (=> setNonEmpty!20405 m!2670749))

(declare-fun e!1429899 () Bool)

(assert (=> b!2236904 (= tp!703449 e!1429899)))

(declare-fun b!2237104 () Bool)

(declare-fun e!1429897 () Bool)

(declare-fun tp!703513 () Bool)

(assert (=> b!2237104 (= e!1429897 tp!703513)))

(declare-fun setIsEmpty!20406 () Bool)

(declare-fun setRes!20406 () Bool)

(assert (=> setIsEmpty!20406 setRes!20406))

(declare-fun b!2237105 () Bool)

(declare-fun tp!703515 () Bool)

(declare-fun tp!703512 () Bool)

(declare-fun e!1429898 () Bool)

(assert (=> b!2237105 (= e!1429899 (and tp!703512 (inv!35760 (_2!15336 (_1!15337 (h!31727 (minValue!3365 (v!29934 (underlying!6415 (v!29935 (underlying!6416 (cache!3398 thiss!28797)))))))))) e!1429898 tp_is_empty!10163 setRes!20406 tp!703515))))

(declare-fun condSetEmpty!20406 () Bool)

(assert (=> b!2237105 (= condSetEmpty!20406 (= (_2!15337 (h!31727 (minValue!3365 (v!29934 (underlying!6415 (v!29935 (underlying!6416 (cache!3398 thiss!28797)))))))) ((as const (Array Context!4034 Bool)) false)))))

(declare-fun setElem!20406 () Context!4034)

(declare-fun setNonEmpty!20406 () Bool)

(declare-fun tp!703516 () Bool)

(assert (=> setNonEmpty!20406 (= setRes!20406 (and tp!703516 (inv!35760 setElem!20406) e!1429897))))

(declare-fun setRest!20406 () (InoxSet Context!4034))

(assert (=> setNonEmpty!20406 (= (_2!15337 (h!31727 (minValue!3365 (v!29934 (underlying!6415 (v!29935 (underlying!6416 (cache!3398 thiss!28797)))))))) ((_ map or) (store ((as const (Array Context!4034 Bool)) false) setElem!20406 true) setRest!20406))))

(declare-fun b!2237106 () Bool)

(declare-fun tp!703514 () Bool)

(assert (=> b!2237106 (= e!1429898 tp!703514)))

(assert (= b!2237105 b!2237106))

(assert (= (and b!2237105 condSetEmpty!20406) setIsEmpty!20406))

(assert (= (and b!2237105 (not condSetEmpty!20406)) setNonEmpty!20406))

(assert (= setNonEmpty!20406 b!2237104))

(assert (= (and b!2236904 ((_ is Cons!26326) (minValue!3365 (v!29934 (underlying!6415 (v!29935 (underlying!6416 (cache!3398 thiss!28797)))))))) b!2237105))

(declare-fun m!2670751 () Bool)

(assert (=> b!2237105 m!2670751))

(declare-fun m!2670753 () Bool)

(assert (=> setNonEmpty!20406 m!2670753))

(declare-fun b!2237121 () Bool)

(declare-fun e!1429913 () Bool)

(declare-fun tp!703544 () Bool)

(assert (=> b!2237121 (= e!1429913 tp!703544)))

(declare-fun mapNonEmpty!14597 () Bool)

(declare-fun mapRes!14597 () Bool)

(declare-fun tp!703543 () Bool)

(declare-fun e!1429916 () Bool)

(assert (=> mapNonEmpty!14597 (= mapRes!14597 (and tp!703543 e!1429916))))

(declare-fun mapValue!14597 () List!26420)

(declare-fun mapRest!14597 () (Array (_ BitVec 32) List!26420))

(declare-fun mapKey!14597 () (_ BitVec 32))

(assert (=> mapNonEmpty!14597 (= mapRest!14594 (store mapRest!14597 mapKey!14597 mapValue!14597))))

(declare-fun setIsEmpty!20411 () Bool)

(declare-fun setRes!20412 () Bool)

(assert (=> setIsEmpty!20411 setRes!20412))

(declare-fun e!1429917 () Bool)

(declare-fun tp!703549 () Bool)

(declare-fun b!2237123 () Bool)

(declare-fun tp!703542 () Bool)

(assert (=> b!2237123 (= e!1429916 (and tp!703542 (inv!35760 (_2!15336 (_1!15337 (h!31727 mapValue!14597)))) e!1429917 tp_is_empty!10163 setRes!20412 tp!703549))))

(declare-fun condSetEmpty!20412 () Bool)

(assert (=> b!2237123 (= condSetEmpty!20412 (= (_2!15337 (h!31727 mapValue!14597)) ((as const (Array Context!4034 Bool)) false)))))

(declare-fun b!2237124 () Bool)

(declare-fun tp!703540 () Bool)

(assert (=> b!2237124 (= e!1429917 tp!703540)))

(declare-fun tp!703546 () Bool)

(declare-fun setElem!20412 () Context!4034)

(declare-fun setRes!20411 () Bool)

(declare-fun setNonEmpty!20411 () Bool)

(assert (=> setNonEmpty!20411 (= setRes!20411 (and tp!703546 (inv!35760 setElem!20412) e!1429913))))

(declare-fun mapDefault!14597 () List!26420)

(declare-fun setRest!20411 () (InoxSet Context!4034))

(assert (=> setNonEmpty!20411 (= (_2!15337 (h!31727 mapDefault!14597)) ((_ map or) (store ((as const (Array Context!4034 Bool)) false) setElem!20412 true) setRest!20411))))

(declare-fun setIsEmpty!20412 () Bool)

(assert (=> setIsEmpty!20412 setRes!20411))

(declare-fun mapIsEmpty!14597 () Bool)

(assert (=> mapIsEmpty!14597 mapRes!14597))

(declare-fun tp!703547 () Bool)

(declare-fun e!1429912 () Bool)

(declare-fun b!2237125 () Bool)

(declare-fun e!1429914 () Bool)

(declare-fun tp!703541 () Bool)

(assert (=> b!2237125 (= e!1429914 (and tp!703547 (inv!35760 (_2!15336 (_1!15337 (h!31727 mapDefault!14597)))) e!1429912 tp_is_empty!10163 setRes!20411 tp!703541))))

(declare-fun condSetEmpty!20411 () Bool)

(assert (=> b!2237125 (= condSetEmpty!20411 (= (_2!15337 (h!31727 mapDefault!14597)) ((as const (Array Context!4034 Bool)) false)))))

(declare-fun b!2237122 () Bool)

(declare-fun e!1429915 () Bool)

(declare-fun tp!703539 () Bool)

(assert (=> b!2237122 (= e!1429915 tp!703539)))

(declare-fun condMapEmpty!14597 () Bool)

(assert (=> mapNonEmpty!14594 (= condMapEmpty!14597 (= mapRest!14594 ((as const (Array (_ BitVec 32) List!26420)) mapDefault!14597)))))

(assert (=> mapNonEmpty!14594 (= tp!703439 (and e!1429914 mapRes!14597))))

(declare-fun b!2237126 () Bool)

(declare-fun tp!703545 () Bool)

(assert (=> b!2237126 (= e!1429912 tp!703545)))

(declare-fun tp!703548 () Bool)

(declare-fun setElem!20411 () Context!4034)

(declare-fun setNonEmpty!20412 () Bool)

(assert (=> setNonEmpty!20412 (= setRes!20412 (and tp!703548 (inv!35760 setElem!20411) e!1429915))))

(declare-fun setRest!20412 () (InoxSet Context!4034))

(assert (=> setNonEmpty!20412 (= (_2!15337 (h!31727 mapValue!14597)) ((_ map or) (store ((as const (Array Context!4034 Bool)) false) setElem!20411 true) setRest!20412))))

(assert (= (and mapNonEmpty!14594 condMapEmpty!14597) mapIsEmpty!14597))

(assert (= (and mapNonEmpty!14594 (not condMapEmpty!14597)) mapNonEmpty!14597))

(assert (= b!2237123 b!2237124))

(assert (= (and b!2237123 condSetEmpty!20412) setIsEmpty!20411))

(assert (= (and b!2237123 (not condSetEmpty!20412)) setNonEmpty!20412))

(assert (= setNonEmpty!20412 b!2237122))

(assert (= (and mapNonEmpty!14597 ((_ is Cons!26326) mapValue!14597)) b!2237123))

(assert (= b!2237125 b!2237126))

(assert (= (and b!2237125 condSetEmpty!20411) setIsEmpty!20412))

(assert (= (and b!2237125 (not condSetEmpty!20411)) setNonEmpty!20411))

(assert (= setNonEmpty!20411 b!2237121))

(assert (= (and mapNonEmpty!14594 ((_ is Cons!26326) mapDefault!14597)) b!2237125))

(declare-fun m!2670755 () Bool)

(assert (=> b!2237123 m!2670755))

(declare-fun m!2670757 () Bool)

(assert (=> mapNonEmpty!14597 m!2670757))

(declare-fun m!2670759 () Bool)

(assert (=> setNonEmpty!20412 m!2670759))

(declare-fun m!2670761 () Bool)

(assert (=> b!2237125 m!2670761))

(declare-fun m!2670763 () Bool)

(assert (=> setNonEmpty!20411 m!2670763))

(declare-fun e!1429920 () Bool)

(assert (=> mapNonEmpty!14594 (= tp!703450 e!1429920)))

(declare-fun b!2237127 () Bool)

(declare-fun e!1429918 () Bool)

(declare-fun tp!703551 () Bool)

(assert (=> b!2237127 (= e!1429918 tp!703551)))

(declare-fun setIsEmpty!20413 () Bool)

(declare-fun setRes!20413 () Bool)

(assert (=> setIsEmpty!20413 setRes!20413))

(declare-fun tp!703553 () Bool)

(declare-fun e!1429919 () Bool)

(declare-fun tp!703550 () Bool)

(declare-fun b!2237128 () Bool)

(assert (=> b!2237128 (= e!1429920 (and tp!703550 (inv!35760 (_2!15336 (_1!15337 (h!31727 mapValue!14594)))) e!1429919 tp_is_empty!10163 setRes!20413 tp!703553))))

(declare-fun condSetEmpty!20413 () Bool)

(assert (=> b!2237128 (= condSetEmpty!20413 (= (_2!15337 (h!31727 mapValue!14594)) ((as const (Array Context!4034 Bool)) false)))))

(declare-fun setNonEmpty!20413 () Bool)

(declare-fun setElem!20413 () Context!4034)

(declare-fun tp!703554 () Bool)

(assert (=> setNonEmpty!20413 (= setRes!20413 (and tp!703554 (inv!35760 setElem!20413) e!1429918))))

(declare-fun setRest!20413 () (InoxSet Context!4034))

(assert (=> setNonEmpty!20413 (= (_2!15337 (h!31727 mapValue!14594)) ((_ map or) (store ((as const (Array Context!4034 Bool)) false) setElem!20413 true) setRest!20413))))

(declare-fun b!2237129 () Bool)

(declare-fun tp!703552 () Bool)

(assert (=> b!2237129 (= e!1429919 tp!703552)))

(assert (= b!2237128 b!2237129))

(assert (= (and b!2237128 condSetEmpty!20413) setIsEmpty!20413))

(assert (= (and b!2237128 (not condSetEmpty!20413)) setNonEmpty!20413))

(assert (= setNonEmpty!20413 b!2237127))

(assert (= (and mapNonEmpty!14594 ((_ is Cons!26326) mapValue!14594)) b!2237128))

(declare-fun m!2670765 () Bool)

(assert (=> b!2237128 m!2670765))

(declare-fun m!2670767 () Bool)

(assert (=> setNonEmpty!20413 m!2670767))

(declare-fun b_lambda!71701 () Bool)

(assert (= b_lambda!71697 (or (and b!2236911 b_free!64891) b_lambda!71701)))

(declare-fun b_lambda!71703 () Bool)

(assert (= b_lambda!71699 (or (and b!2236911 b_free!64891) b_lambda!71703)))

(check-sat (not setNonEmpty!20406) (not b!2237075) (not b!2237128) (not b!2237094) (not bm!134869) (not b!2237091) (not b!2237085) (not b!2236976) (not bm!134886) (not b!2237101) b_and!174887 (not d!665496) (not b!2237066) (not b!2237018) (not b!2236993) (not b!2237123) (not b!2236990) (not b!2237127) (not bm!134883) (not b!2237025) (not b!2236991) (not b!2236959) (not b!2237093) (not b!2237067) (not bm!134882) (not bm!134896) (not b!2236974) (not b!2236956) (not bm!134884) (not setNonEmpty!20405) (not b!2237068) (not bm!134868) (not b!2237072) (not b_next!65595) (not b!2237071) (not b!2237074) (not b!2237129) (not mapNonEmpty!14597) (not setNonEmpty!20404) (not b!2237023) (not b!2237100) (not b!2237019) (not b!2237026) (not b_next!65593) (not b!2237103) (not setNonEmpty!20413) (not bm!134867) (not b!2237090) b_and!174881 tp_is_empty!10163 (not d!665500) (not b!2236955) (not b!2236994) (not b!2237070) (not d!665506) (not b!2237124) (not b!2237087) (not setNonEmpty!20412) (not bm!134887) (not b!2236975) (not b!2237105) (not b!2237095) (not b!2237121) (not setNonEmpty!20411) (not b!2237102) (not d!665504) (not b_lambda!71701) (not bm!134894) (not bm!134885) (not d!665512) (not b!2237089) (not b!2237086) (not b!2237122) (not b!2237076) (not b!2237046) (not b!2237104) (not b_lambda!71703) (not b!2237106) (not b!2237126) (not b!2236938) (not tb!132853) (not b!2237125))
(check-sat b_and!174881 b_and!174887 (not b_next!65593) (not b_next!65595))
