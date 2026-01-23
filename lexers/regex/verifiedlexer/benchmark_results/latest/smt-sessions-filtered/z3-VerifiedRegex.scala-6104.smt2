; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296868 () Bool)

(assert start!296868)

(declare-fun b!3169180 () Bool)

(declare-fun b_free!83201 () Bool)

(declare-fun b_next!83905 () Bool)

(assert (=> b!3169180 (= b_free!83201 (not b_next!83905))))

(declare-fun tp!999698 () Bool)

(declare-fun b_and!209479 () Bool)

(assert (=> b!3169180 (= tp!999698 b_and!209479)))

(declare-fun b!3169183 () Bool)

(declare-fun b_free!83203 () Bool)

(declare-fun b_next!83907 () Bool)

(assert (=> b!3169183 (= b_free!83203 (not b_next!83907))))

(declare-fun tp!999700 () Bool)

(declare-fun b_and!209481 () Bool)

(assert (=> b!3169183 (= tp!999700 b_and!209481)))

(declare-datatypes ((C!19704 0))(
  ( (C!19705 (val!11888 Int)) )
))
(declare-datatypes ((Regex!9759 0))(
  ( (ElementMatch!9759 (c!532992 C!19704)) (Concat!15080 (regOne!20030 Regex!9759) (regTwo!20030 Regex!9759)) (EmptyExpr!9759) (Star!9759 (reg!10088 Regex!9759)) (EmptyLang!9759) (Union!9759 (regOne!20031 Regex!9759) (regTwo!20031 Regex!9759)) )
))
(declare-datatypes ((tuple2!34648 0))(
  ( (tuple2!34649 (_1!20456 Regex!9759) (_2!20456 C!19704)) )
))
(declare-datatypes ((tuple2!34650 0))(
  ( (tuple2!34651 (_1!20457 tuple2!34648) (_2!20457 Regex!9759)) )
))
(declare-datatypes ((List!35596 0))(
  ( (Nil!35472) (Cons!35472 (h!40892 tuple2!34650) (t!234679 List!35596)) )
))
(declare-datatypes ((array!14938 0))(
  ( (array!14939 (arr!6650 (Array (_ BitVec 32) List!35596)) (size!26736 (_ BitVec 32))) )
))
(declare-datatypes ((array!14940 0))(
  ( (array!14941 (arr!6651 (Array (_ BitVec 32) (_ BitVec 64))) (size!26737 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8360 0))(
  ( (LongMapFixedSize!8361 (defaultEntry!4565 Int) (mask!10853 (_ BitVec 32)) (extraKeys!4429 (_ BitVec 32)) (zeroValue!4439 List!35596) (minValue!4439 List!35596) (_size!8403 (_ BitVec 32)) (_keys!4480 array!14940) (_values!4461 array!14938) (_vacant!4241 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16529 0))(
  ( (Cell!16530 (v!35191 LongMapFixedSize!8360)) )
))
(declare-datatypes ((MutLongMap!4180 0))(
  ( (LongMap!4180 (underlying!8589 Cell!16529)) (MutLongMapExt!4179 (__x!22646 Int)) )
))
(declare-datatypes ((Cell!16531 0))(
  ( (Cell!16532 (v!35192 MutLongMap!4180)) )
))
(declare-datatypes ((Hashable!4096 0))(
  ( (HashableExt!4095 (__x!22647 Int)) )
))
(declare-datatypes ((MutableMap!4086 0))(
  ( (MutableMapExt!4085 (__x!22648 Int)) (HashMap!4086 (underlying!8590 Cell!16531) (hashF!6128 Hashable!4096) (_size!8404 (_ BitVec 32)) (defaultValue!4257 Int)) )
))
(declare-datatypes ((Cache!442 0))(
  ( (Cache!443 (cache!4232 MutableMap!4086)) )
))
(declare-fun thiss!28524 () Cache!442)

(declare-fun tp!999690 () Bool)

(declare-fun e!1973901 () Bool)

(declare-fun e!1973898 () Bool)

(declare-fun tp!999696 () Bool)

(declare-fun array_inv!4768 (array!14940) Bool)

(declare-fun array_inv!4769 (array!14938) Bool)

(assert (=> b!3169180 (= e!1973898 (and tp!999698 tp!999696 tp!999690 (array_inv!4768 (_keys!4480 (v!35191 (underlying!8589 (v!35192 (underlying!8590 (cache!4232 thiss!28524))))))) (array_inv!4769 (_values!4461 (v!35191 (underlying!8589 (v!35192 (underlying!8590 (cache!4232 thiss!28524))))))) e!1973901))))

(declare-fun b!3169181 () Bool)

(declare-fun e!1973894 () Bool)

(declare-fun tp!999688 () Bool)

(declare-fun tp!999692 () Bool)

(assert (=> b!3169181 (= e!1973894 (and tp!999688 tp!999692))))

(declare-fun b!3169182 () Bool)

(declare-fun e!1973892 () Bool)

(get-info :version)

(assert (=> b!3169182 (= e!1973892 (not ((_ is HashMap!4086) (cache!4232 thiss!28524))))))

(declare-fun lt!1065452 () tuple2!34648)

(declare-fun lambda!115931 () Int)

(declare-fun res!14113 () Regex!9759)

(declare-fun forall!7154 (List!35596 Int) Bool)

(declare-datatypes ((ListMap!1317 0))(
  ( (ListMap!1318 (toList!2067 List!35596)) )
))
(declare-fun map!7922 (MutableMap!4086) ListMap!1317)

(declare-datatypes ((tuple2!34652 0))(
  ( (tuple2!34653 (_1!20458 Bool) (_2!20458 MutableMap!4086)) )
))
(declare-fun update!274 (MutableMap!4086 tuple2!34648 Regex!9759) tuple2!34652)

(assert (=> b!3169182 (forall!7154 (toList!2067 (map!7922 (_2!20458 (update!274 (cache!4232 thiss!28524) lt!1065452 res!14113)))) lambda!115931)))

(declare-datatypes ((Unit!49871 0))(
  ( (Unit!49872) )
))
(declare-fun lt!1065451 () Unit!49871)

(declare-fun lemmaUpdatePreservesForallPairs!32 (MutableMap!4086 tuple2!34648 Regex!9759 Int) Unit!49871)

(assert (=> b!3169182 (= lt!1065451 (lemmaUpdatePreservesForallPairs!32 (cache!4232 thiss!28524) lt!1065452 res!14113 lambda!115931))))

(declare-fun r!4733 () Regex!9759)

(declare-fun c!6996 () C!19704)

(assert (=> b!3169182 (= lt!1065452 (tuple2!34649 r!4733 c!6996))))

(declare-fun e!1973895 () Bool)

(declare-fun e!1973897 () Bool)

(assert (=> b!3169183 (= e!1973895 (and e!1973897 tp!999700))))

(declare-fun b!3169184 () Bool)

(declare-fun e!1973896 () Bool)

(declare-fun tp!999694 () Bool)

(declare-fun tp!999699 () Bool)

(assert (=> b!3169184 (= e!1973896 (and tp!999694 tp!999699))))

(declare-fun mapNonEmpty!18950 () Bool)

(declare-fun mapRes!18950 () Bool)

(declare-fun tp!999691 () Bool)

(declare-fun tp!999693 () Bool)

(assert (=> mapNonEmpty!18950 (= mapRes!18950 (and tp!999691 tp!999693))))

(declare-fun mapKey!18950 () (_ BitVec 32))

(declare-fun mapValue!18950 () List!35596)

(declare-fun mapRest!18950 () (Array (_ BitVec 32) List!35596))

(assert (=> mapNonEmpty!18950 (= (arr!6650 (_values!4461 (v!35191 (underlying!8589 (v!35192 (underlying!8590 (cache!4232 thiss!28524))))))) (store mapRest!18950 mapKey!18950 mapValue!18950))))

(declare-fun b!3169185 () Bool)

(declare-fun tp_is_empty!17081 () Bool)

(assert (=> b!3169185 (= e!1973894 tp_is_empty!17081)))

(declare-fun b!3169186 () Bool)

(declare-fun e!1973899 () Bool)

(declare-fun e!1973902 () Bool)

(assert (=> b!3169186 (= e!1973899 e!1973902)))

(declare-fun b!3169187 () Bool)

(declare-fun lt!1065450 () MutLongMap!4180)

(assert (=> b!3169187 (= e!1973897 (and e!1973899 ((_ is LongMap!4180) lt!1065450)))))

(assert (=> b!3169187 (= lt!1065450 (v!35192 (underlying!8590 (cache!4232 thiss!28524))))))

(declare-fun b!3169188 () Bool)

(declare-fun tp!999687 () Bool)

(assert (=> b!3169188 (= e!1973901 (and tp!999687 mapRes!18950))))

(declare-fun condMapEmpty!18950 () Bool)

(declare-fun mapDefault!18950 () List!35596)

(assert (=> b!3169188 (= condMapEmpty!18950 (= (arr!6650 (_values!4461 (v!35191 (underlying!8589 (v!35192 (underlying!8590 (cache!4232 thiss!28524))))))) ((as const (Array (_ BitVec 32) List!35596)) mapDefault!18950)))))

(declare-fun res!1288538 () Bool)

(assert (=> start!296868 (=> (not res!1288538) (not e!1973892))))

(declare-fun validCacheMap!69 (MutableMap!4086) Bool)

(assert (=> start!296868 (= res!1288538 (validCacheMap!69 (cache!4232 thiss!28524)))))

(assert (=> start!296868 e!1973892))

(declare-fun e!1973893 () Bool)

(declare-fun inv!48162 (Cache!442) Bool)

(assert (=> start!296868 (and (inv!48162 thiss!28524) e!1973893)))

(assert (=> start!296868 e!1973894))

(assert (=> start!296868 e!1973896))

(assert (=> start!296868 tp_is_empty!17081))

(declare-fun b!3169189 () Bool)

(declare-fun tp!999695 () Bool)

(declare-fun tp!999697 () Bool)

(assert (=> b!3169189 (= e!1973894 (and tp!999695 tp!999697))))

(declare-fun b!3169190 () Bool)

(declare-fun res!1288537 () Bool)

(assert (=> b!3169190 (=> (not res!1288537) (not e!1973892))))

(declare-fun derivativeStep!2902 (Regex!9759 C!19704) Regex!9759)

(assert (=> b!3169190 (= res!1288537 (= res!14113 (derivativeStep!2902 r!4733 c!6996)))))

(declare-fun b!3169191 () Bool)

(declare-fun tp!999686 () Bool)

(assert (=> b!3169191 (= e!1973896 tp!999686)))

(declare-fun b!3169192 () Bool)

(assert (=> b!3169192 (= e!1973896 tp_is_empty!17081)))

(declare-fun b!3169193 () Bool)

(assert (=> b!3169193 (= e!1973893 e!1973895)))

(declare-fun b!3169194 () Bool)

(declare-fun tp!999685 () Bool)

(assert (=> b!3169194 (= e!1973894 tp!999685)))

(declare-fun b!3169195 () Bool)

(assert (=> b!3169195 (= e!1973902 e!1973898)))

(declare-fun mapIsEmpty!18950 () Bool)

(assert (=> mapIsEmpty!18950 mapRes!18950))

(declare-fun b!3169196 () Bool)

(declare-fun tp!999701 () Bool)

(declare-fun tp!999689 () Bool)

(assert (=> b!3169196 (= e!1973896 (and tp!999701 tp!999689))))

(declare-fun b!3169197 () Bool)

(declare-fun res!1288536 () Bool)

(assert (=> b!3169197 (=> (not res!1288536) (not e!1973892))))

(declare-fun validRegex!4475 (Regex!9759) Bool)

(assert (=> b!3169197 (= res!1288536 (validRegex!4475 r!4733))))

(assert (= (and start!296868 res!1288538) b!3169197))

(assert (= (and b!3169197 res!1288536) b!3169190))

(assert (= (and b!3169190 res!1288537) b!3169182))

(assert (= (and b!3169188 condMapEmpty!18950) mapIsEmpty!18950))

(assert (= (and b!3169188 (not condMapEmpty!18950)) mapNonEmpty!18950))

(assert (= b!3169180 b!3169188))

(assert (= b!3169195 b!3169180))

(assert (= b!3169186 b!3169195))

(assert (= (and b!3169187 ((_ is LongMap!4180) (v!35192 (underlying!8590 (cache!4232 thiss!28524))))) b!3169186))

(assert (= b!3169183 b!3169187))

(assert (= (and b!3169193 ((_ is HashMap!4086) (cache!4232 thiss!28524))) b!3169183))

(assert (= start!296868 b!3169193))

(assert (= (and start!296868 ((_ is ElementMatch!9759) r!4733)) b!3169185))

(assert (= (and start!296868 ((_ is Concat!15080) r!4733)) b!3169189))

(assert (= (and start!296868 ((_ is Star!9759) r!4733)) b!3169194))

(assert (= (and start!296868 ((_ is Union!9759) r!4733)) b!3169181))

(assert (= (and start!296868 ((_ is ElementMatch!9759) res!14113)) b!3169192))

(assert (= (and start!296868 ((_ is Concat!15080) res!14113)) b!3169184))

(assert (= (and start!296868 ((_ is Star!9759) res!14113)) b!3169191))

(assert (= (and start!296868 ((_ is Union!9759) res!14113)) b!3169196))

(declare-fun m!3429257 () Bool)

(assert (=> b!3169180 m!3429257))

(declare-fun m!3429259 () Bool)

(assert (=> b!3169180 m!3429259))

(declare-fun m!3429261 () Bool)

(assert (=> mapNonEmpty!18950 m!3429261))

(declare-fun m!3429263 () Bool)

(assert (=> b!3169190 m!3429263))

(declare-fun m!3429265 () Bool)

(assert (=> b!3169182 m!3429265))

(declare-fun m!3429267 () Bool)

(assert (=> b!3169182 m!3429267))

(declare-fun m!3429269 () Bool)

(assert (=> b!3169182 m!3429269))

(declare-fun m!3429271 () Bool)

(assert (=> b!3169182 m!3429271))

(declare-fun m!3429273 () Bool)

(assert (=> b!3169197 m!3429273))

(declare-fun m!3429275 () Bool)

(assert (=> start!296868 m!3429275))

(declare-fun m!3429277 () Bool)

(assert (=> start!296868 m!3429277))

(check-sat (not b!3169194) (not b!3169180) (not b!3169191) (not b!3169196) (not b!3169184) (not b!3169181) (not b!3169182) (not b_next!83905) tp_is_empty!17081 (not b!3169189) (not start!296868) (not b!3169188) (not b_next!83907) (not mapNonEmpty!18950) (not b!3169190) b_and!209481 (not b!3169197) b_and!209479)
(check-sat b_and!209481 b_and!209479 (not b_next!83905) (not b_next!83907))
(get-model)

(declare-fun bs!539567 () Bool)

(declare-fun b!3169205 () Bool)

(assert (= bs!539567 (and b!3169205 b!3169182)))

(declare-fun lambda!115934 () Int)

(assert (=> bs!539567 (= lambda!115934 lambda!115931)))

(declare-fun d!869095 () Bool)

(declare-fun res!1288545 () Bool)

(declare-fun e!1973907 () Bool)

(assert (=> d!869095 (=> (not res!1288545) (not e!1973907))))

(declare-fun valid!3261 (MutableMap!4086) Bool)

(assert (=> d!869095 (= res!1288545 (valid!3261 (cache!4232 thiss!28524)))))

(assert (=> d!869095 (= (validCacheMap!69 (cache!4232 thiss!28524)) e!1973907)))

(declare-fun b!3169204 () Bool)

(declare-fun res!1288546 () Bool)

(assert (=> b!3169204 (=> (not res!1288546) (not e!1973907))))

(declare-fun invariantList!485 (List!35596) Bool)

(assert (=> b!3169204 (= res!1288546 (invariantList!485 (toList!2067 (map!7922 (cache!4232 thiss!28524)))))))

(assert (=> b!3169205 (= e!1973907 (forall!7154 (toList!2067 (map!7922 (cache!4232 thiss!28524))) lambda!115934))))

(assert (= (and d!869095 res!1288545) b!3169204))

(assert (= (and b!3169204 res!1288546) b!3169205))

(declare-fun m!3429280 () Bool)

(assert (=> d!869095 m!3429280))

(declare-fun m!3429282 () Bool)

(assert (=> b!3169204 m!3429282))

(declare-fun m!3429284 () Bool)

(assert (=> b!3169204 m!3429284))

(assert (=> b!3169205 m!3429282))

(declare-fun m!3429286 () Bool)

(assert (=> b!3169205 m!3429286))

(assert (=> start!296868 d!869095))

(declare-fun d!869097 () Bool)

(declare-fun res!1288549 () Bool)

(declare-fun e!1973910 () Bool)

(assert (=> d!869097 (=> (not res!1288549) (not e!1973910))))

(assert (=> d!869097 (= res!1288549 ((_ is HashMap!4086) (cache!4232 thiss!28524)))))

(assert (=> d!869097 (= (inv!48162 thiss!28524) e!1973910)))

(declare-fun b!3169208 () Bool)

(assert (=> b!3169208 (= e!1973910 (validCacheMap!69 (cache!4232 thiss!28524)))))

(assert (= (and d!869097 res!1288549) b!3169208))

(assert (=> b!3169208 m!3429275))

(assert (=> start!296868 d!869097))

(declare-fun d!869099 () Bool)

(assert (=> d!869099 (= (array_inv!4768 (_keys!4480 (v!35191 (underlying!8589 (v!35192 (underlying!8590 (cache!4232 thiss!28524))))))) (bvsge (size!26737 (_keys!4480 (v!35191 (underlying!8589 (v!35192 (underlying!8590 (cache!4232 thiss!28524))))))) #b00000000000000000000000000000000))))

(assert (=> b!3169180 d!869099))

(declare-fun d!869101 () Bool)

(assert (=> d!869101 (= (array_inv!4769 (_values!4461 (v!35191 (underlying!8589 (v!35192 (underlying!8590 (cache!4232 thiss!28524))))))) (bvsge (size!26736 (_values!4461 (v!35191 (underlying!8589 (v!35192 (underlying!8590 (cache!4232 thiss!28524))))))) #b00000000000000000000000000000000))))

(assert (=> b!3169180 d!869101))

(declare-fun b!3169227 () Bool)

(declare-fun e!1973930 () Bool)

(declare-fun call!229960 () Bool)

(assert (=> b!3169227 (= e!1973930 call!229960)))

(declare-fun b!3169228 () Bool)

(declare-fun e!1973927 () Bool)

(assert (=> b!3169228 (= e!1973927 e!1973930)))

(declare-fun res!1288564 () Bool)

(assert (=> b!3169228 (=> (not res!1288564) (not e!1973930))))

(declare-fun call!229958 () Bool)

(assert (=> b!3169228 (= res!1288564 call!229958)))

(declare-fun d!869103 () Bool)

(declare-fun res!1288563 () Bool)

(declare-fun e!1973928 () Bool)

(assert (=> d!869103 (=> res!1288563 e!1973928)))

(assert (=> d!869103 (= res!1288563 ((_ is ElementMatch!9759) r!4733))))

(assert (=> d!869103 (= (validRegex!4475 r!4733) e!1973928)))

(declare-fun b!3169229 () Bool)

(declare-fun e!1973929 () Bool)

(declare-fun e!1973931 () Bool)

(assert (=> b!3169229 (= e!1973929 e!1973931)))

(declare-fun c!532997 () Bool)

(assert (=> b!3169229 (= c!532997 ((_ is Union!9759) r!4733))))

(declare-fun b!3169230 () Bool)

(declare-fun e!1973925 () Bool)

(assert (=> b!3169230 (= e!1973925 call!229958)))

(declare-fun bm!229953 () Bool)

(declare-fun c!532998 () Bool)

(declare-fun call!229959 () Bool)

(assert (=> bm!229953 (= call!229959 (validRegex!4475 (ite c!532998 (reg!10088 r!4733) (ite c!532997 (regTwo!20031 r!4733) (regOne!20030 r!4733)))))))

(declare-fun b!3169231 () Bool)

(declare-fun res!1288560 () Bool)

(assert (=> b!3169231 (=> (not res!1288560) (not e!1973925))))

(assert (=> b!3169231 (= res!1288560 call!229960)))

(assert (=> b!3169231 (= e!1973931 e!1973925)))

(declare-fun b!3169232 () Bool)

(declare-fun e!1973926 () Bool)

(assert (=> b!3169232 (= e!1973929 e!1973926)))

(declare-fun res!1288562 () Bool)

(declare-fun nullable!3352 (Regex!9759) Bool)

(assert (=> b!3169232 (= res!1288562 (not (nullable!3352 (reg!10088 r!4733))))))

(assert (=> b!3169232 (=> (not res!1288562) (not e!1973926))))

(declare-fun b!3169233 () Bool)

(declare-fun res!1288561 () Bool)

(assert (=> b!3169233 (=> res!1288561 e!1973927)))

(assert (=> b!3169233 (= res!1288561 (not ((_ is Concat!15080) r!4733)))))

(assert (=> b!3169233 (= e!1973931 e!1973927)))

(declare-fun bm!229954 () Bool)

(assert (=> bm!229954 (= call!229958 call!229959)))

(declare-fun b!3169234 () Bool)

(assert (=> b!3169234 (= e!1973928 e!1973929)))

(assert (=> b!3169234 (= c!532998 ((_ is Star!9759) r!4733))))

(declare-fun bm!229955 () Bool)

(assert (=> bm!229955 (= call!229960 (validRegex!4475 (ite c!532997 (regOne!20031 r!4733) (regTwo!20030 r!4733))))))

(declare-fun b!3169235 () Bool)

(assert (=> b!3169235 (= e!1973926 call!229959)))

(assert (= (and d!869103 (not res!1288563)) b!3169234))

(assert (= (and b!3169234 c!532998) b!3169232))

(assert (= (and b!3169234 (not c!532998)) b!3169229))

(assert (= (and b!3169232 res!1288562) b!3169235))

(assert (= (and b!3169229 c!532997) b!3169231))

(assert (= (and b!3169229 (not c!532997)) b!3169233))

(assert (= (and b!3169231 res!1288560) b!3169230))

(assert (= (and b!3169233 (not res!1288561)) b!3169228))

(assert (= (and b!3169228 res!1288564) b!3169227))

(assert (= (or b!3169231 b!3169227) bm!229955))

(assert (= (or b!3169230 b!3169228) bm!229954))

(assert (= (or b!3169235 bm!229954) bm!229953))

(declare-fun m!3429288 () Bool)

(assert (=> bm!229953 m!3429288))

(declare-fun m!3429290 () Bool)

(assert (=> b!3169232 m!3429290))

(declare-fun m!3429292 () Bool)

(assert (=> bm!229955 m!3429292))

(assert (=> b!3169197 d!869103))

(declare-fun d!869105 () Bool)

(declare-fun res!1288569 () Bool)

(declare-fun e!1973936 () Bool)

(assert (=> d!869105 (=> res!1288569 e!1973936)))

(assert (=> d!869105 (= res!1288569 ((_ is Nil!35472) (toList!2067 (map!7922 (_2!20458 (update!274 (cache!4232 thiss!28524) lt!1065452 res!14113))))))))

(assert (=> d!869105 (= (forall!7154 (toList!2067 (map!7922 (_2!20458 (update!274 (cache!4232 thiss!28524) lt!1065452 res!14113)))) lambda!115931) e!1973936)))

(declare-fun b!3169240 () Bool)

(declare-fun e!1973937 () Bool)

(assert (=> b!3169240 (= e!1973936 e!1973937)))

(declare-fun res!1288570 () Bool)

(assert (=> b!3169240 (=> (not res!1288570) (not e!1973937))))

(declare-fun dynLambda!14364 (Int tuple2!34650) Bool)

(assert (=> b!3169240 (= res!1288570 (dynLambda!14364 lambda!115931 (h!40892 (toList!2067 (map!7922 (_2!20458 (update!274 (cache!4232 thiss!28524) lt!1065452 res!14113)))))))))

(declare-fun b!3169241 () Bool)

(assert (=> b!3169241 (= e!1973937 (forall!7154 (t!234679 (toList!2067 (map!7922 (_2!20458 (update!274 (cache!4232 thiss!28524) lt!1065452 res!14113))))) lambda!115931))))

(assert (= (and d!869105 (not res!1288569)) b!3169240))

(assert (= (and b!3169240 res!1288570) b!3169241))

(declare-fun b_lambda!86451 () Bool)

(assert (=> (not b_lambda!86451) (not b!3169240)))

(declare-fun m!3429294 () Bool)

(assert (=> b!3169240 m!3429294))

(declare-fun m!3429296 () Bool)

(assert (=> b!3169241 m!3429296))

(assert (=> b!3169182 d!869105))

(declare-fun d!869107 () Bool)

(declare-fun lt!1065455 () ListMap!1317)

(assert (=> d!869107 (invariantList!485 (toList!2067 lt!1065455))))

(declare-datatypes ((tuple2!34654 0))(
  ( (tuple2!34655 (_1!20459 (_ BitVec 64)) (_2!20459 List!35596)) )
))
(declare-datatypes ((List!35597 0))(
  ( (Nil!35473) (Cons!35473 (h!40893 tuple2!34654) (t!234680 List!35597)) )
))
(declare-fun extractMap!237 (List!35597) ListMap!1317)

(declare-datatypes ((ListLongMap!729 0))(
  ( (ListLongMap!730 (toList!2068 List!35597)) )
))
(declare-fun map!7923 (MutLongMap!4180) ListLongMap!729)

(assert (=> d!869107 (= lt!1065455 (extractMap!237 (toList!2068 (map!7923 (v!35192 (underlying!8590 (_2!20458 (update!274 (cache!4232 thiss!28524) lt!1065452 res!14113))))))))))

(assert (=> d!869107 (valid!3261 (_2!20458 (update!274 (cache!4232 thiss!28524) lt!1065452 res!14113)))))

(assert (=> d!869107 (= (map!7922 (_2!20458 (update!274 (cache!4232 thiss!28524) lt!1065452 res!14113))) lt!1065455)))

(declare-fun bs!539568 () Bool)

(assert (= bs!539568 d!869107))

(declare-fun m!3429298 () Bool)

(assert (=> bs!539568 m!3429298))

(declare-fun m!3429300 () Bool)

(assert (=> bs!539568 m!3429300))

(declare-fun m!3429302 () Bool)

(assert (=> bs!539568 m!3429302))

(declare-fun m!3429304 () Bool)

(assert (=> bs!539568 m!3429304))

(assert (=> b!3169182 d!869107))

(declare-fun bs!539569 () Bool)

(declare-fun b!3169292 () Bool)

(declare-fun b!3169282 () Bool)

(assert (= bs!539569 (and b!3169292 b!3169282)))

(declare-fun lambda!115944 () Int)

(declare-fun lambda!115943 () Int)

(assert (=> bs!539569 (= lambda!115944 lambda!115943)))

(declare-fun lt!1065572 () MutableMap!4086)

(declare-fun c!533015 () Bool)

(declare-fun lt!1065580 () MutableMap!4086)

(declare-fun call!230027 () ListMap!1317)

(declare-fun bm!230018 () Bool)

(assert (=> bm!230018 (= call!230027 (map!7922 (ite c!533015 lt!1065572 lt!1065580)))))

(declare-fun call!230049 () ListMap!1317)

(declare-fun call!230042 () ListMap!1317)

(declare-fun call!230039 () Bool)

(declare-fun bm!230019 () Bool)

(declare-fun call!230032 () ListMap!1317)

(declare-fun eq!76 (ListMap!1317 ListMap!1317) Bool)

(assert (=> bm!230019 (= call!230039 (eq!76 (ite c!533015 call!230042 call!230049) call!230032))))

(declare-fun bm!230020 () Bool)

(declare-fun call!230044 () Bool)

(declare-fun call!230024 () ListMap!1317)

(declare-fun e!1973960 () ListMap!1317)

(assert (=> bm!230020 (= call!230044 (eq!76 call!230024 e!1973960))))

(declare-fun c!533019 () Bool)

(declare-fun c!533016 () Bool)

(assert (=> bm!230020 (= c!533019 c!533016)))

(declare-fun b!3169280 () Bool)

(declare-fun e!1973962 () Unit!49871)

(declare-fun lt!1065596 () Unit!49871)

(assert (=> b!3169280 (= e!1973962 lt!1065596)))

(declare-fun lt!1065619 () Unit!49871)

(declare-fun call!230040 () Unit!49871)

(assert (=> b!3169280 (= lt!1065619 call!230040)))

(declare-fun call!230035 () Bool)

(assert (=> b!3169280 call!230035))

(declare-fun lt!1065597 () Unit!49871)

(assert (=> b!3169280 (= lt!1065597 lt!1065619)))

(declare-fun call!230046 () Unit!49871)

(assert (=> b!3169280 (= lt!1065596 call!230046)))

(declare-fun call!230029 () Bool)

(assert (=> b!3169280 call!230029))

(declare-fun bm!230021 () Bool)

(declare-fun lt!1065616 () List!35596)

(declare-fun lt!1065588 () List!35596)

(declare-fun call!230030 () List!35596)

(declare-fun removePairForKey!120 (List!35596 tuple2!34648) List!35596)

(assert (=> bm!230021 (= call!230030 (removePairForKey!120 (ite c!533015 lt!1065588 lt!1065616) lt!1065452))))

(declare-fun call!230041 () ListMap!1317)

(declare-fun b!3169281 () Bool)

(declare-fun +!121 (ListMap!1317 tuple2!34650) ListMap!1317)

(assert (=> b!3169281 (= e!1973960 (+!121 call!230041 (tuple2!34651 lt!1065452 res!14113)))))

(assert (=> b!3169282 call!230039))

(declare-fun lt!1065573 () Unit!49871)

(declare-fun Unit!49873 () Unit!49871)

(assert (=> b!3169282 (= lt!1065573 Unit!49873)))

(declare-fun call!230033 () Bool)

(assert (=> b!3169282 call!230033))

(declare-fun lt!1065614 () Unit!49871)

(declare-fun Unit!49874 () Unit!49871)

(assert (=> b!3169282 (= lt!1065614 Unit!49874)))

(declare-fun call!230051 () Bool)

(assert (=> b!3169282 call!230051))

(declare-fun lt!1065620 () Unit!49871)

(declare-fun lt!1065568 () Unit!49871)

(assert (=> b!3169282 (= lt!1065620 lt!1065568)))

(declare-fun call!230036 () Bool)

(declare-fun call!230028 () Bool)

(assert (=> b!3169282 (= call!230036 call!230028)))

(declare-fun call!230048 () Unit!49871)

(assert (=> b!3169282 (= lt!1065568 call!230048)))

(declare-fun lt!1065587 () ListMap!1317)

(assert (=> b!3169282 (= lt!1065587 call!230032)))

(declare-fun lt!1065613 () ListMap!1317)

(assert (=> b!3169282 (= lt!1065613 call!230042)))

(declare-fun lt!1065585 () Unit!49871)

(declare-fun lt!1065569 () Unit!49871)

(assert (=> b!3169282 (= lt!1065585 lt!1065569)))

(declare-fun call!230052 () Bool)

(assert (=> b!3169282 call!230052))

(declare-fun lt!1065617 () (_ BitVec 64))

(declare-fun lt!1065586 () List!35596)

(declare-fun lt!1065566 () ListLongMap!729)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!15 (ListLongMap!729 (_ BitVec 64) List!35596 tuple2!34648 Regex!9759 Hashable!4096) Unit!49871)

(assert (=> b!3169282 (= lt!1065569 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!15 lt!1065566 lt!1065617 lt!1065586 lt!1065452 res!14113 (hashF!6128 (cache!4232 thiss!28524))))))

(declare-fun lt!1065583 () Unit!49871)

(declare-fun lt!1065599 () Unit!49871)

(assert (=> b!3169282 (= lt!1065583 lt!1065599)))

(declare-fun e!1973966 () Bool)

(assert (=> b!3169282 e!1973966))

(declare-fun res!1288584 () Bool)

(assert (=> b!3169282 (=> (not res!1288584) (not e!1973966))))

(declare-fun call!230023 () Bool)

(assert (=> b!3169282 (= res!1288584 call!230023)))

(declare-fun lt!1065574 () ListLongMap!729)

(declare-fun call!230045 () ListLongMap!729)

(assert (=> b!3169282 (= lt!1065574 call!230045)))

(declare-fun call!230037 () Unit!49871)

(assert (=> b!3169282 (= lt!1065599 call!230037)))

(declare-fun lt!1065595 () Unit!49871)

(declare-fun Unit!49875 () Unit!49871)

(assert (=> b!3169282 (= lt!1065595 Unit!49875)))

(declare-fun noDuplicateKeys!131 (List!35596) Bool)

(assert (=> b!3169282 (noDuplicateKeys!131 lt!1065586)))

(declare-fun lt!1065601 () Unit!49871)

(declare-fun Unit!49876 () Unit!49871)

(assert (=> b!3169282 (= lt!1065601 Unit!49876)))

(declare-fun containsKey!197 (List!35596 tuple2!34648) Bool)

(assert (=> b!3169282 (not (containsKey!197 call!230030 lt!1065452))))

(declare-fun lt!1065606 () Unit!49871)

(declare-fun Unit!49877 () Unit!49871)

(assert (=> b!3169282 (= lt!1065606 Unit!49877)))

(declare-fun lt!1065591 () Unit!49871)

(declare-fun lt!1065603 () Unit!49871)

(assert (=> b!3169282 (= lt!1065591 lt!1065603)))

(assert (=> b!3169282 (noDuplicateKeys!131 call!230030)))

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!108 (List!35596 tuple2!34648) Unit!49871)

(assert (=> b!3169282 (= lt!1065603 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!108 lt!1065588 lt!1065452))))

(declare-fun lt!1065605 () Unit!49871)

(declare-fun lt!1065575 () Unit!49871)

(assert (=> b!3169282 (= lt!1065605 lt!1065575)))

(assert (=> b!3169282 call!230029))

(assert (=> b!3169282 (= lt!1065575 call!230046)))

(declare-fun lt!1065581 () Unit!49871)

(declare-fun lt!1065570 () Unit!49871)

(assert (=> b!3169282 (= lt!1065581 lt!1065570)))

(assert (=> b!3169282 call!230035))

(assert (=> b!3169282 (= lt!1065570 call!230040)))

(declare-fun e!1973965 () Unit!49871)

(declare-fun Unit!49878 () Unit!49871)

(assert (=> b!3169282 (= e!1973965 Unit!49878)))

(declare-fun bm!230022 () Bool)

(declare-fun call!230034 () ListMap!1317)

(assert (=> bm!230022 (= call!230034 (extractMap!237 (toList!2068 call!230045)))))

(declare-fun b!3169283 () Bool)

(declare-datatypes ((tuple2!34656 0))(
  ( (tuple2!34657 (_1!20460 Bool) (_2!20460 MutLongMap!4180)) )
))
(declare-fun lt!1065615 () tuple2!34656)

(declare-fun e!1973964 () tuple2!34652)

(declare-datatypes ((tuple2!34658 0))(
  ( (tuple2!34659 (_1!20461 Unit!49871) (_2!20461 MutableMap!4086)) )
))
(declare-fun Unit!49879 () Unit!49871)

(declare-fun Unit!49880 () Unit!49871)

(assert (=> b!3169283 (= e!1973964 (tuple2!34653 (_1!20460 lt!1065615) (_2!20461 (ite false (tuple2!34659 Unit!49879 (HashMap!4086 (Cell!16532 (_2!20460 lt!1065615)) (hashF!6128 (cache!4232 thiss!28524)) (bvadd (_size!8404 (cache!4232 thiss!28524)) #b00000000000000000000000000000001) (defaultValue!4257 (cache!4232 thiss!28524)))) (tuple2!34659 Unit!49880 lt!1065572)))))))

(declare-fun call!230031 () (_ BitVec 64))

(assert (=> b!3169283 (= lt!1065617 call!230031)))

(declare-fun call!230043 () List!35596)

(assert (=> b!3169283 (= lt!1065588 call!230043)))

(assert (=> b!3169283 (= lt!1065586 (Cons!35472 (tuple2!34651 lt!1065452 res!14113) call!230030))))

(declare-fun call!230025 () tuple2!34656)

(assert (=> b!3169283 (= lt!1065615 call!230025)))

(assert (=> b!3169283 (= lt!1065572 (HashMap!4086 (Cell!16532 (_2!20460 lt!1065615)) (hashF!6128 (cache!4232 thiss!28524)) (_size!8404 (cache!4232 thiss!28524)) (defaultValue!4257 (cache!4232 thiss!28524))))))

(declare-fun c!533014 () Bool)

(assert (=> b!3169283 (= c!533014 (_1!20460 lt!1065615))))

(declare-fun lt!1065577 () Unit!49871)

(assert (=> b!3169283 (= lt!1065577 e!1973965)))

(declare-fun b!3169284 () Bool)

(declare-fun e!1973970 () Bool)

(declare-fun call!230050 () Bool)

(assert (=> b!3169284 (= e!1973970 call!230050)))

(declare-fun bm!230023 () Bool)

(declare-fun lt!1065579 () (_ BitVec 64))

(declare-fun allKeysSameHash!103 (List!35596 (_ BitVec 64) Hashable!4096) Bool)

(assert (=> bm!230023 (= call!230035 (allKeysSameHash!103 (ite c!533015 lt!1065588 lt!1065616) (ite c!533015 lt!1065617 lt!1065579) (hashF!6128 (cache!4232 thiss!28524))))))

(declare-fun lt!1065589 () List!35596)

(declare-fun bm!230024 () Bool)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!81 (ListLongMap!729 (_ BitVec 64) List!35596 Hashable!4096) Unit!49871)

(assert (=> bm!230024 (= call!230037 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!81 lt!1065566 (ite c!533015 lt!1065617 lt!1065579) (ite c!533015 lt!1065586 lt!1065589) (hashF!6128 (cache!4232 thiss!28524))))))

(declare-fun bm!230025 () Bool)

(declare-fun hash!808 (Hashable!4096 tuple2!34648) (_ BitVec 64))

(assert (=> bm!230025 (= call!230031 (hash!808 (hashF!6128 (cache!4232 thiss!28524)) lt!1065452))))

(declare-fun bm!230026 () Bool)

(declare-fun contains!6194 (ListMap!1317 tuple2!34648) Bool)

(assert (=> bm!230026 (= call!230028 (contains!6194 (ite c!533015 lt!1065587 call!230049) lt!1065452))))

(declare-fun lt!1065578 () tuple2!34656)

(declare-fun b!3169285 () Bool)

(declare-fun Unit!49881 () Unit!49871)

(declare-fun Unit!49882 () Unit!49871)

(assert (=> b!3169285 (= e!1973964 (tuple2!34653 (_1!20460 lt!1065578) (_2!20461 (ite (_1!20460 lt!1065578) (tuple2!34659 Unit!49881 (HashMap!4086 (Cell!16532 (_2!20460 lt!1065578)) (hashF!6128 (cache!4232 thiss!28524)) (bvadd (_size!8404 (cache!4232 thiss!28524)) #b00000000000000000000000000000001) (defaultValue!4257 (cache!4232 thiss!28524)))) (tuple2!34659 Unit!49882 lt!1065580)))))))

(assert (=> b!3169285 (= lt!1065579 call!230031)))

(declare-fun c!533013 () Bool)

(declare-fun contains!6195 (MutLongMap!4180 (_ BitVec 64)) Bool)

(assert (=> b!3169285 (= c!533013 (contains!6195 (v!35192 (underlying!8590 (cache!4232 thiss!28524))) lt!1065579))))

(declare-fun e!1973968 () List!35596)

(assert (=> b!3169285 (= lt!1065616 e!1973968)))

(assert (=> b!3169285 (= lt!1065589 (Cons!35472 (tuple2!34651 lt!1065452 res!14113) lt!1065616))))

(assert (=> b!3169285 (= lt!1065578 call!230025)))

(assert (=> b!3169285 (= lt!1065580 (HashMap!4086 (Cell!16532 (_2!20460 lt!1065578)) (hashF!6128 (cache!4232 thiss!28524)) (_size!8404 (cache!4232 thiss!28524)) (defaultValue!4257 (cache!4232 thiss!28524))))))

(declare-fun c!533017 () Bool)

(assert (=> b!3169285 (= c!533017 (_1!20460 lt!1065578))))

(declare-fun lt!1065600 () Unit!49871)

(declare-fun e!1973961 () Unit!49871)

(assert (=> b!3169285 (= lt!1065600 e!1973961)))

(declare-fun bm!230027 () Bool)

(declare-fun apply!7963 (MutLongMap!4180 (_ BitVec 64)) List!35596)

(assert (=> bm!230027 (= call!230043 (apply!7963 (v!35192 (underlying!8590 (cache!4232 thiss!28524))) (ite c!533015 lt!1065617 lt!1065579)))))

(declare-fun b!3169286 () Bool)

(assert (=> b!3169286 (= e!1973968 call!230043)))

(declare-fun bm!230028 () Bool)

(assert (=> bm!230028 (= call!230049 call!230027)))

(declare-fun b!3169287 () Bool)

(declare-fun e!1973963 () Bool)

(assert (=> b!3169287 (= e!1973963 call!230044)))

(declare-fun lt!1065594 () ListLongMap!729)

(declare-fun bm!230029 () Bool)

(declare-fun forall!7155 (List!35597 Int) Bool)

(assert (=> bm!230029 (= call!230023 (forall!7155 (ite c!533015 (toList!2068 lt!1065574) (toList!2068 lt!1065594)) (ite c!533015 lambda!115943 lambda!115944)))))

(declare-fun b!3169288 () Bool)

(declare-fun Unit!49883 () Unit!49871)

(assert (=> b!3169288 (= e!1973962 Unit!49883)))

(declare-fun bm!230030 () Bool)

(assert (=> bm!230030 (= call!230042 call!230027)))

(declare-fun bm!230031 () Bool)

(declare-fun +!122 (ListLongMap!729 tuple2!34654) ListLongMap!729)

(assert (=> bm!230031 (= call!230045 (+!122 lt!1065566 (ite c!533015 (tuple2!34655 lt!1065617 lt!1065586) (tuple2!34655 lt!1065579 lt!1065589))))))

(declare-fun b!3169289 () Bool)

(assert (=> b!3169289 (= e!1973966 call!230050)))

(declare-fun bm!230032 () Bool)

(declare-fun update!275 (MutLongMap!4180 (_ BitVec 64) List!35596) tuple2!34656)

(assert (=> bm!230032 (= call!230025 (update!275 (v!35192 (underlying!8590 (cache!4232 thiss!28524))) (ite c!533015 lt!1065617 lt!1065579) (ite c!533015 lt!1065586 lt!1065589)))))

(declare-fun b!3169290 () Bool)

(declare-fun res!1288583 () Bool)

(declare-fun e!1973967 () Bool)

(assert (=> b!3169290 (=> (not res!1288583) (not e!1973967))))

(declare-fun lt!1065611 () tuple2!34652)

(assert (=> b!3169290 (= res!1288583 (valid!3261 (_2!20458 lt!1065611)))))

(declare-fun b!3169291 () Bool)

(declare-fun e!1973969 () Bool)

(assert (=> b!3169291 (= e!1973969 e!1973963)))

(declare-fun res!1288581 () Bool)

(assert (=> b!3169291 (= res!1288581 (contains!6194 call!230024 lt!1065452))))

(assert (=> b!3169291 (=> (not res!1288581) (not e!1973963))))

(declare-fun bm!230033 () Bool)

(declare-fun allKeysSameHashInMap!239 (ListLongMap!729 Hashable!4096) Bool)

(assert (=> bm!230033 (= call!230050 (allKeysSameHashInMap!239 (ite c!533015 lt!1065574 lt!1065594) (hashF!6128 (cache!4232 thiss!28524))))))

(declare-fun lt!1065609 () ListMap!1317)

(declare-fun lt!1065618 () ListMap!1317)

(declare-fun bm!230034 () Bool)

(declare-fun lemmaEquivalentThenSameContains!15 (ListMap!1317 ListMap!1317 tuple2!34648) Unit!49871)

(assert (=> bm!230034 (= call!230048 (lemmaEquivalentThenSameContains!15 (ite c!533015 lt!1065613 lt!1065618) (ite c!533015 lt!1065587 lt!1065609) lt!1065452))))

(declare-fun d!869109 () Bool)

(assert (=> d!869109 e!1973967))

(declare-fun res!1288582 () Bool)

(assert (=> d!869109 (=> (not res!1288582) (not e!1973967))))

(assert (=> d!869109 (= res!1288582 ((_ is HashMap!4086) (_2!20458 lt!1065611)))))

(declare-fun lt!1065592 () tuple2!34652)

(assert (=> d!869109 (= lt!1065611 (tuple2!34653 (_1!20458 lt!1065592) (_2!20458 lt!1065592)))))

(assert (=> d!869109 (= lt!1065592 e!1973964)))

(declare-fun contains!6196 (MutableMap!4086 tuple2!34648) Bool)

(assert (=> d!869109 (= c!533015 (contains!6196 (cache!4232 thiss!28524) lt!1065452))))

(assert (=> d!869109 (= lt!1065566 (map!7923 (v!35192 (underlying!8590 (cache!4232 thiss!28524)))))))

(declare-fun lt!1065612 () ListMap!1317)

(assert (=> d!869109 (= lt!1065612 (map!7922 (cache!4232 thiss!28524)))))

(assert (=> d!869109 (valid!3261 (cache!4232 thiss!28524))))

(assert (=> d!869109 (= (update!274 (cache!4232 thiss!28524) lt!1065452 res!14113) lt!1065611)))

(declare-fun bm!230035 () Bool)

(declare-fun call!230047 () ListMap!1317)

(assert (=> bm!230035 (= call!230047 (extractMap!237 (toList!2068 lt!1065566)))))

(declare-fun bm!230036 () Bool)

(assert (=> bm!230036 (= call!230041 (map!7922 (cache!4232 thiss!28524)))))

(declare-fun call!230026 () ListLongMap!729)

(declare-fun bm!230037 () Bool)

(assert (=> bm!230037 (= call!230051 (forall!7155 (toList!2068 call!230026) (ite c!533015 lambda!115943 lambda!115944)))))

(declare-fun bm!230038 () Bool)

(assert (=> bm!230038 (= call!230036 (contains!6194 (ite c!533015 lt!1065613 lt!1065618) lt!1065452))))

(declare-fun bm!230039 () Bool)

(assert (=> bm!230039 (= call!230033 (allKeysSameHashInMap!239 call!230026 (hashF!6128 (cache!4232 thiss!28524))))))

(declare-fun bm!230040 () Bool)

(declare-fun lemmaRemovePairForKeyPreservesHash!90 (List!35596 tuple2!34648 (_ BitVec 64) Hashable!4096) Unit!49871)

(assert (=> bm!230040 (= call!230046 (lemmaRemovePairForKeyPreservesHash!90 (ite c!533015 lt!1065588 lt!1065616) lt!1065452 (ite c!533015 lt!1065617 lt!1065579) (hashF!6128 (cache!4232 thiss!28524))))))

(assert (=> b!3169292 call!230028))

(declare-fun lt!1065610 () Unit!49871)

(declare-fun Unit!49884 () Unit!49871)

(assert (=> b!3169292 (= lt!1065610 Unit!49884)))

(assert (=> b!3169292 (contains!6194 call!230032 lt!1065452)))

(declare-fun lt!1065590 () Unit!49871)

(declare-fun lt!1065598 () Unit!49871)

(assert (=> b!3169292 (= lt!1065590 lt!1065598)))

(assert (=> b!3169292 (= call!230036 (contains!6194 lt!1065609 lt!1065452))))

(assert (=> b!3169292 (= lt!1065598 call!230048)))

(assert (=> b!3169292 (= lt!1065609 call!230032)))

(assert (=> b!3169292 (= lt!1065618 call!230049)))

(declare-fun lt!1065567 () Unit!49871)

(declare-fun Unit!49885 () Unit!49871)

(assert (=> b!3169292 (= lt!1065567 Unit!49885)))

(assert (=> b!3169292 call!230039))

(declare-fun lt!1065593 () Unit!49871)

(declare-fun Unit!49886 () Unit!49871)

(assert (=> b!3169292 (= lt!1065593 Unit!49886)))

(assert (=> b!3169292 call!230033))

(declare-fun lt!1065607 () Unit!49871)

(declare-fun Unit!49887 () Unit!49871)

(assert (=> b!3169292 (= lt!1065607 Unit!49887)))

(assert (=> b!3169292 call!230051))

(declare-fun lt!1065584 () Unit!49871)

(declare-fun lt!1065582 () Unit!49871)

(assert (=> b!3169292 (= lt!1065584 lt!1065582)))

(assert (=> b!3169292 call!230052))

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!15 (ListLongMap!729 (_ BitVec 64) List!35596 tuple2!34648 Regex!9759 Hashable!4096) Unit!49871)

(assert (=> b!3169292 (= lt!1065582 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!15 lt!1065566 lt!1065579 lt!1065589 lt!1065452 res!14113 (hashF!6128 (cache!4232 thiss!28524))))))

(declare-fun lt!1065608 () Unit!49871)

(declare-fun lt!1065576 () Unit!49871)

(assert (=> b!3169292 (= lt!1065608 lt!1065576)))

(assert (=> b!3169292 e!1973970))

(declare-fun res!1288585 () Bool)

(assert (=> b!3169292 (=> (not res!1288585) (not e!1973970))))

(assert (=> b!3169292 (= res!1288585 call!230023)))

(assert (=> b!3169292 (= lt!1065594 call!230045)))

(assert (=> b!3169292 (= lt!1065576 call!230037)))

(declare-fun lt!1065571 () Unit!49871)

(assert (=> b!3169292 (= lt!1065571 e!1973962)))

(declare-fun c!533018 () Bool)

(declare-fun isEmpty!19763 (List!35596) Bool)

(assert (=> b!3169292 (= c!533018 (not (isEmpty!19763 lt!1065616)))))

(declare-fun Unit!49888 () Unit!49871)

(assert (=> b!3169292 (= e!1973961 Unit!49888)))

(declare-fun call!230038 () ListMap!1317)

(declare-fun bm!230041 () Bool)

(assert (=> bm!230041 (= call!230038 (+!121 call!230047 (tuple2!34651 lt!1065452 res!14113)))))

(declare-fun bm!230042 () Bool)

(assert (=> bm!230042 (= call!230024 (map!7922 (_2!20458 lt!1065611)))))

(declare-fun b!3169293 () Bool)

(assert (=> b!3169293 (= e!1973968 Nil!35472)))

(declare-fun b!3169294 () Bool)

(assert (=> b!3169294 (= call!230049 lt!1065612)))

(declare-fun lt!1065604 () Unit!49871)

(declare-fun Unit!49889 () Unit!49871)

(assert (=> b!3169294 (= lt!1065604 Unit!49889)))

(declare-fun call!230053 () Bool)

(assert (=> b!3169294 call!230053))

(declare-fun Unit!49890 () Unit!49871)

(assert (=> b!3169294 (= e!1973961 Unit!49890)))

(declare-fun bm!230043 () Bool)

(assert (=> bm!230043 (= call!230032 (+!121 lt!1065612 (tuple2!34651 lt!1065452 res!14113)))))

(declare-fun b!3169295 () Bool)

(assert (=> b!3169295 (= e!1973969 call!230044)))

(declare-fun b!3169296 () Bool)

(assert (=> b!3169296 (= e!1973960 call!230041)))

(declare-fun bm!230044 () Bool)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!94 (List!35597 (_ BitVec 64) List!35596 Hashable!4096) Unit!49871)

(assert (=> bm!230044 (= call!230040 (lemmaInLongMapAllKeySameHashThenForTuple!94 (toList!2068 lt!1065566) (ite c!533015 lt!1065617 lt!1065579) (ite c!533015 lt!1065588 lt!1065616) (hashF!6128 (cache!4232 thiss!28524))))))

(declare-fun b!3169297 () Bool)

(assert (=> b!3169297 (= call!230042 lt!1065612)))

(declare-fun lt!1065602 () Unit!49871)

(declare-fun Unit!49891 () Unit!49871)

(assert (=> b!3169297 (= lt!1065602 Unit!49891)))

(assert (=> b!3169297 call!230053))

(declare-fun Unit!49892 () Unit!49871)

(assert (=> b!3169297 (= e!1973965 Unit!49892)))

(declare-fun bm!230045 () Bool)

(assert (=> bm!230045 (= call!230052 (eq!76 call!230034 call!230038))))

(declare-fun b!3169298 () Bool)

(assert (=> b!3169298 (= e!1973967 e!1973969)))

(assert (=> b!3169298 (= c!533016 (_1!20458 lt!1065611))))

(declare-fun bm!230046 () Bool)

(assert (=> bm!230046 (= call!230053 (valid!3261 (ite c!533015 lt!1065572 lt!1065580)))))

(declare-fun bm!230047 () Bool)

(assert (=> bm!230047 (= call!230029 (allKeysSameHash!103 call!230030 (ite c!533015 lt!1065617 lt!1065579) (hashF!6128 (cache!4232 thiss!28524))))))

(declare-fun bm!230048 () Bool)

(assert (=> bm!230048 (= call!230026 (map!7923 (ite c!533015 (_2!20460 lt!1065615) (_2!20460 lt!1065578))))))

(assert (= (and d!869109 c!533015) b!3169283))

(assert (= (and d!869109 (not c!533015)) b!3169285))

(assert (= (and b!3169283 c!533014) b!3169282))

(assert (= (and b!3169283 (not c!533014)) b!3169297))

(assert (= (and b!3169282 res!1288584) b!3169289))

(assert (= (or b!3169282 b!3169297) bm!230030))

(assert (= (and b!3169285 c!533013) b!3169286))

(assert (= (and b!3169285 (not c!533013)) b!3169293))

(assert (= (and b!3169285 c!533017) b!3169292))

(assert (= (and b!3169285 (not c!533017)) b!3169294))

(assert (= (and b!3169292 c!533018) b!3169280))

(assert (= (and b!3169292 (not c!533018)) b!3169288))

(assert (= (and b!3169292 res!1288585) b!3169284))

(assert (= (or b!3169292 b!3169294) bm!230028))

(assert (= (or b!3169282 b!3169280) bm!230044))

(assert (= (or bm!230030 bm!230028) bm!230018))

(assert (= (or b!3169282 b!3169292) bm!230043))

(assert (= (or b!3169282 b!3169292) bm!230029))

(assert (= (or b!3169282 b!3169283 b!3169280) bm!230021))

(assert (= (or b!3169283 b!3169286) bm!230027))

(assert (= (or b!3169282 b!3169292) bm!230038))

(assert (= (or b!3169282 b!3169292) bm!230026))

(assert (= (or b!3169282 b!3169280) bm!230040))

(assert (= (or b!3169282 b!3169292) bm!230035))

(assert (= (or b!3169283 b!3169285) bm!230032))

(assert (= (or b!3169282 b!3169292) bm!230034))

(assert (= (or b!3169282 b!3169292) bm!230048))

(assert (= (or b!3169282 b!3169292) bm!230024))

(assert (= (or b!3169282 b!3169280) bm!230023))

(assert (= (or b!3169283 b!3169285) bm!230025))

(assert (= (or b!3169282 b!3169292) bm!230031))

(assert (= (or b!3169297 b!3169294) bm!230046))

(assert (= (or b!3169289 b!3169284) bm!230033))

(assert (= (or b!3169282 b!3169292) bm!230019))

(assert (= (or b!3169282 b!3169292) bm!230037))

(assert (= (or b!3169282 b!3169292) bm!230039))

(assert (= (or b!3169282 b!3169292) bm!230041))

(assert (= (or b!3169282 b!3169280) bm!230047))

(assert (= (or b!3169282 b!3169292) bm!230022))

(assert (= (or b!3169282 b!3169292) bm!230045))

(assert (= (and d!869109 res!1288582) b!3169290))

(assert (= (and b!3169290 res!1288583) b!3169298))

(assert (= (and b!3169298 c!533016) b!3169291))

(assert (= (and b!3169298 (not c!533016)) b!3169295))

(assert (= (and b!3169291 res!1288581) b!3169287))

(assert (= (or b!3169291 b!3169287 b!3169295) bm!230042))

(assert (= (or b!3169287 b!3169295) bm!230036))

(assert (= (or b!3169287 b!3169295) bm!230020))

(assert (= (and bm!230020 c!533019) b!3169281))

(assert (= (and bm!230020 (not c!533019)) b!3169296))

(declare-fun m!3429306 () Bool)

(assert (=> bm!230033 m!3429306))

(declare-fun m!3429308 () Bool)

(assert (=> bm!230029 m!3429308))

(declare-fun m!3429310 () Bool)

(assert (=> bm!230037 m!3429310))

(declare-fun m!3429312 () Bool)

(assert (=> b!3169291 m!3429312))

(assert (=> bm!230036 m!3429282))

(declare-fun m!3429314 () Bool)

(assert (=> bm!230020 m!3429314))

(declare-fun m!3429316 () Bool)

(assert (=> bm!230038 m!3429316))

(declare-fun m!3429318 () Bool)

(assert (=> bm!230018 m!3429318))

(declare-fun m!3429320 () Bool)

(assert (=> bm!230048 m!3429320))

(declare-fun m!3429322 () Bool)

(assert (=> bm!230022 m!3429322))

(declare-fun m!3429324 () Bool)

(assert (=> b!3169290 m!3429324))

(declare-fun m!3429326 () Bool)

(assert (=> bm!230026 m!3429326))

(declare-fun m!3429328 () Bool)

(assert (=> bm!230035 m!3429328))

(declare-fun m!3429330 () Bool)

(assert (=> bm!230034 m!3429330))

(declare-fun m!3429332 () Bool)

(assert (=> b!3169282 m!3429332))

(declare-fun m!3429334 () Bool)

(assert (=> b!3169282 m!3429334))

(declare-fun m!3429336 () Bool)

(assert (=> b!3169282 m!3429336))

(declare-fun m!3429338 () Bool)

(assert (=> b!3169282 m!3429338))

(declare-fun m!3429340 () Bool)

(assert (=> b!3169282 m!3429340))

(declare-fun m!3429342 () Bool)

(assert (=> bm!230024 m!3429342))

(declare-fun m!3429344 () Bool)

(assert (=> bm!230019 m!3429344))

(declare-fun m!3429346 () Bool)

(assert (=> bm!230021 m!3429346))

(declare-fun m!3429348 () Bool)

(assert (=> bm!230039 m!3429348))

(declare-fun m!3429350 () Bool)

(assert (=> bm!230041 m!3429350))

(declare-fun m!3429352 () Bool)

(assert (=> b!3169285 m!3429352))

(declare-fun m!3429354 () Bool)

(assert (=> bm!230031 m!3429354))

(declare-fun m!3429356 () Bool)

(assert (=> bm!230032 m!3429356))

(declare-fun m!3429358 () Bool)

(assert (=> bm!230025 m!3429358))

(declare-fun m!3429360 () Bool)

(assert (=> bm!230045 m!3429360))

(declare-fun m!3429362 () Bool)

(assert (=> bm!230042 m!3429362))

(declare-fun m!3429364 () Bool)

(assert (=> d!869109 m!3429364))

(declare-fun m!3429366 () Bool)

(assert (=> d!869109 m!3429366))

(assert (=> d!869109 m!3429282))

(assert (=> d!869109 m!3429280))

(declare-fun m!3429368 () Bool)

(assert (=> bm!230046 m!3429368))

(declare-fun m!3429370 () Bool)

(assert (=> b!3169292 m!3429370))

(declare-fun m!3429372 () Bool)

(assert (=> b!3169292 m!3429372))

(declare-fun m!3429374 () Bool)

(assert (=> b!3169292 m!3429374))

(declare-fun m!3429376 () Bool)

(assert (=> b!3169292 m!3429376))

(declare-fun m!3429378 () Bool)

(assert (=> bm!230040 m!3429378))

(declare-fun m!3429380 () Bool)

(assert (=> bm!230043 m!3429380))

(declare-fun m!3429382 () Bool)

(assert (=> bm!230047 m!3429382))

(declare-fun m!3429384 () Bool)

(assert (=> b!3169281 m!3429384))

(declare-fun m!3429386 () Bool)

(assert (=> bm!230044 m!3429386))

(declare-fun m!3429388 () Bool)

(assert (=> bm!230027 m!3429388))

(declare-fun m!3429390 () Bool)

(assert (=> bm!230023 m!3429390))

(assert (=> b!3169182 d!869109))

(declare-fun d!869111 () Bool)

(declare-fun e!1973973 () Bool)

(assert (=> d!869111 e!1973973))

(declare-fun res!1288588 () Bool)

(assert (=> d!869111 (=> (not res!1288588) (not e!1973973))))

(assert (=> d!869111 (= res!1288588 (and (or (not ((_ is HashMap!4086) (cache!4232 thiss!28524))) ((_ is HashMap!4086) (cache!4232 thiss!28524))) ((_ is HashMap!4086) (cache!4232 thiss!28524))))))

(declare-fun lt!1065636 () Unit!49871)

(declare-fun choose!18516 (MutableMap!4086 tuple2!34648 Regex!9759 Int) Unit!49871)

(assert (=> d!869111 (= lt!1065636 (choose!18516 (cache!4232 thiss!28524) lt!1065452 res!14113 lambda!115931))))

(assert (=> d!869111 (valid!3261 (cache!4232 thiss!28524))))

(assert (=> d!869111 (= (lemmaUpdatePreservesForallPairs!32 (cache!4232 thiss!28524) lt!1065452 res!14113 lambda!115931) lt!1065636)))

(declare-fun b!3169301 () Bool)

(declare-fun lt!1065635 () MutableMap!4086)

(assert (=> b!3169301 (= e!1973973 (forall!7154 (toList!2067 (map!7922 lt!1065635)) lambda!115931))))

(assert (=> b!3169301 ((_ is HashMap!4086) lt!1065635)))

(declare-fun lt!1065634 () MutableMap!4086)

(assert (=> b!3169301 (= lt!1065635 lt!1065634)))

(assert (=> b!3169301 ((_ is HashMap!4086) lt!1065634)))

(declare-fun lt!1065633 () MutableMap!4086)

(assert (=> b!3169301 (= lt!1065634 lt!1065633)))

(assert (=> b!3169301 ((_ is HashMap!4086) lt!1065633)))

(declare-fun lt!1065637 () tuple2!34652)

(assert (=> b!3169301 (= lt!1065633 (_2!20458 lt!1065637))))

(assert (=> b!3169301 ((_ is HashMap!4086) (_2!20458 lt!1065637))))

(declare-fun lt!1065638 () tuple2!34652)

(assert (=> b!3169301 (= lt!1065637 lt!1065638)))

(assert (=> b!3169301 ((_ is HashMap!4086) (_2!20458 lt!1065638))))

(assert (=> b!3169301 (= lt!1065638 (update!274 (cache!4232 thiss!28524) lt!1065452 res!14113))))

(assert (= (and d!869111 res!1288588) b!3169301))

(declare-fun m!3429392 () Bool)

(assert (=> d!869111 m!3429392))

(assert (=> d!869111 m!3429280))

(declare-fun m!3429394 () Bool)

(assert (=> b!3169301 m!3429394))

(declare-fun m!3429396 () Bool)

(assert (=> b!3169301 m!3429396))

(assert (=> b!3169301 m!3429265))

(assert (=> b!3169182 d!869111))

(declare-fun d!869113 () Bool)

(declare-fun lt!1065641 () Regex!9759)

(assert (=> d!869113 (validRegex!4475 lt!1065641)))

(declare-fun e!1973988 () Regex!9759)

(assert (=> d!869113 (= lt!1065641 e!1973988)))

(declare-fun c!533032 () Bool)

(assert (=> d!869113 (= c!533032 (or ((_ is EmptyExpr!9759) r!4733) ((_ is EmptyLang!9759) r!4733)))))

(assert (=> d!869113 (validRegex!4475 r!4733)))

(assert (=> d!869113 (= (derivativeStep!2902 r!4733 c!6996) lt!1065641)))

(declare-fun b!3169322 () Bool)

(declare-fun c!533034 () Bool)

(assert (=> b!3169322 (= c!533034 (nullable!3352 (regOne!20030 r!4733)))))

(declare-fun e!1973986 () Regex!9759)

(declare-fun e!1973984 () Regex!9759)

(assert (=> b!3169322 (= e!1973986 e!1973984)))

(declare-fun c!533030 () Bool)

(declare-fun call!230062 () Regex!9759)

(declare-fun bm!230057 () Bool)

(assert (=> bm!230057 (= call!230062 (derivativeStep!2902 (ite c!533030 (regOne!20031 r!4733) (regTwo!20030 r!4733)) c!6996))))

(declare-fun b!3169323 () Bool)

(declare-fun e!1973987 () Regex!9759)

(assert (=> b!3169323 (= e!1973988 e!1973987)))

(declare-fun c!533031 () Bool)

(assert (=> b!3169323 (= c!533031 ((_ is ElementMatch!9759) r!4733))))

(declare-fun b!3169324 () Bool)

(declare-fun e!1973985 () Regex!9759)

(assert (=> b!3169324 (= e!1973985 e!1973986)))

(declare-fun c!533033 () Bool)

(assert (=> b!3169324 (= c!533033 ((_ is Star!9759) r!4733))))

(declare-fun b!3169325 () Bool)

(declare-fun call!230064 () Regex!9759)

(assert (=> b!3169325 (= e!1973985 (Union!9759 call!230062 call!230064))))

(declare-fun b!3169326 () Bool)

(declare-fun call!230063 () Regex!9759)

(assert (=> b!3169326 (= e!1973984 (Union!9759 (Concat!15080 call!230063 (regTwo!20030 r!4733)) call!230062))))

(declare-fun bm!230058 () Bool)

(declare-fun call!230065 () Regex!9759)

(assert (=> bm!230058 (= call!230065 call!230064)))

(declare-fun b!3169327 () Bool)

(assert (=> b!3169327 (= e!1973984 (Union!9759 (Concat!15080 call!230063 (regTwo!20030 r!4733)) EmptyLang!9759))))

(declare-fun bm!230059 () Bool)

(assert (=> bm!230059 (= call!230064 (derivativeStep!2902 (ite c!533030 (regTwo!20031 r!4733) (ite c!533033 (reg!10088 r!4733) (regOne!20030 r!4733))) c!6996))))

(declare-fun b!3169328 () Bool)

(assert (=> b!3169328 (= c!533030 ((_ is Union!9759) r!4733))))

(assert (=> b!3169328 (= e!1973987 e!1973985)))

(declare-fun b!3169329 () Bool)

(assert (=> b!3169329 (= e!1973987 (ite (= c!6996 (c!532992 r!4733)) EmptyExpr!9759 EmptyLang!9759))))

(declare-fun b!3169330 () Bool)

(assert (=> b!3169330 (= e!1973988 EmptyLang!9759)))

(declare-fun bm!230060 () Bool)

(assert (=> bm!230060 (= call!230063 call!230065)))

(declare-fun b!3169331 () Bool)

(assert (=> b!3169331 (= e!1973986 (Concat!15080 call!230065 r!4733))))

(assert (= (and d!869113 c!533032) b!3169330))

(assert (= (and d!869113 (not c!533032)) b!3169323))

(assert (= (and b!3169323 c!533031) b!3169329))

(assert (= (and b!3169323 (not c!533031)) b!3169328))

(assert (= (and b!3169328 c!533030) b!3169325))

(assert (= (and b!3169328 (not c!533030)) b!3169324))

(assert (= (and b!3169324 c!533033) b!3169331))

(assert (= (and b!3169324 (not c!533033)) b!3169322))

(assert (= (and b!3169322 c!533034) b!3169326))

(assert (= (and b!3169322 (not c!533034)) b!3169327))

(assert (= (or b!3169326 b!3169327) bm!230060))

(assert (= (or b!3169331 bm!230060) bm!230058))

(assert (= (or b!3169325 bm!230058) bm!230059))

(assert (= (or b!3169325 b!3169326) bm!230057))

(declare-fun m!3429398 () Bool)

(assert (=> d!869113 m!3429398))

(assert (=> d!869113 m!3429273))

(declare-fun m!3429400 () Bool)

(assert (=> b!3169322 m!3429400))

(declare-fun m!3429402 () Bool)

(assert (=> bm!230057 m!3429402))

(declare-fun m!3429404 () Bool)

(assert (=> bm!230059 m!3429404))

(assert (=> b!3169190 d!869113))

(declare-fun b!3169342 () Bool)

(declare-fun e!1973991 () Bool)

(assert (=> b!3169342 (= e!1973991 tp_is_empty!17081)))

(declare-fun b!3169343 () Bool)

(declare-fun tp!999714 () Bool)

(declare-fun tp!999713 () Bool)

(assert (=> b!3169343 (= e!1973991 (and tp!999714 tp!999713))))

(declare-fun b!3169344 () Bool)

(declare-fun tp!999716 () Bool)

(assert (=> b!3169344 (= e!1973991 tp!999716)))

(assert (=> b!3169194 (= tp!999685 e!1973991)))

(declare-fun b!3169345 () Bool)

(declare-fun tp!999712 () Bool)

(declare-fun tp!999715 () Bool)

(assert (=> b!3169345 (= e!1973991 (and tp!999712 tp!999715))))

(assert (= (and b!3169194 ((_ is ElementMatch!9759) (reg!10088 r!4733))) b!3169342))

(assert (= (and b!3169194 ((_ is Concat!15080) (reg!10088 r!4733))) b!3169343))

(assert (= (and b!3169194 ((_ is Star!9759) (reg!10088 r!4733))) b!3169344))

(assert (= (and b!3169194 ((_ is Union!9759) (reg!10088 r!4733))) b!3169345))

(declare-fun b!3169346 () Bool)

(declare-fun e!1973992 () Bool)

(assert (=> b!3169346 (= e!1973992 tp_is_empty!17081)))

(declare-fun b!3169347 () Bool)

(declare-fun tp!999719 () Bool)

(declare-fun tp!999718 () Bool)

(assert (=> b!3169347 (= e!1973992 (and tp!999719 tp!999718))))

(declare-fun b!3169348 () Bool)

(declare-fun tp!999721 () Bool)

(assert (=> b!3169348 (= e!1973992 tp!999721)))

(assert (=> b!3169189 (= tp!999695 e!1973992)))

(declare-fun b!3169349 () Bool)

(declare-fun tp!999717 () Bool)

(declare-fun tp!999720 () Bool)

(assert (=> b!3169349 (= e!1973992 (and tp!999717 tp!999720))))

(assert (= (and b!3169189 ((_ is ElementMatch!9759) (regOne!20030 r!4733))) b!3169346))

(assert (= (and b!3169189 ((_ is Concat!15080) (regOne!20030 r!4733))) b!3169347))

(assert (= (and b!3169189 ((_ is Star!9759) (regOne!20030 r!4733))) b!3169348))

(assert (= (and b!3169189 ((_ is Union!9759) (regOne!20030 r!4733))) b!3169349))

(declare-fun b!3169350 () Bool)

(declare-fun e!1973993 () Bool)

(assert (=> b!3169350 (= e!1973993 tp_is_empty!17081)))

(declare-fun b!3169351 () Bool)

(declare-fun tp!999724 () Bool)

(declare-fun tp!999723 () Bool)

(assert (=> b!3169351 (= e!1973993 (and tp!999724 tp!999723))))

(declare-fun b!3169352 () Bool)

(declare-fun tp!999726 () Bool)

(assert (=> b!3169352 (= e!1973993 tp!999726)))

(assert (=> b!3169189 (= tp!999697 e!1973993)))

(declare-fun b!3169353 () Bool)

(declare-fun tp!999722 () Bool)

(declare-fun tp!999725 () Bool)

(assert (=> b!3169353 (= e!1973993 (and tp!999722 tp!999725))))

(assert (= (and b!3169189 ((_ is ElementMatch!9759) (regTwo!20030 r!4733))) b!3169350))

(assert (= (and b!3169189 ((_ is Concat!15080) (regTwo!20030 r!4733))) b!3169351))

(assert (= (and b!3169189 ((_ is Star!9759) (regTwo!20030 r!4733))) b!3169352))

(assert (= (and b!3169189 ((_ is Union!9759) (regTwo!20030 r!4733))) b!3169353))

(declare-fun tp!999741 () Bool)

(declare-fun tp!999743 () Bool)

(declare-fun e!1973999 () Bool)

(declare-fun b!3169361 () Bool)

(declare-fun tp!999745 () Bool)

(assert (=> b!3169361 (= e!1973999 (and tp!999741 tp_is_empty!17081 tp!999745 tp!999743))))

(declare-fun mapNonEmpty!18953 () Bool)

(declare-fun mapRes!18953 () Bool)

(declare-fun tp!999747 () Bool)

(declare-fun e!1973998 () Bool)

(assert (=> mapNonEmpty!18953 (= mapRes!18953 (and tp!999747 e!1973998))))

(declare-fun mapRest!18953 () (Array (_ BitVec 32) List!35596))

(declare-fun mapKey!18953 () (_ BitVec 32))

(declare-fun mapValue!18953 () List!35596)

(assert (=> mapNonEmpty!18953 (= mapRest!18950 (store mapRest!18953 mapKey!18953 mapValue!18953))))

(declare-fun tp!999742 () Bool)

(declare-fun b!3169360 () Bool)

(declare-fun tp!999744 () Bool)

(declare-fun tp!999746 () Bool)

(assert (=> b!3169360 (= e!1973998 (and tp!999746 tp_is_empty!17081 tp!999744 tp!999742))))

(declare-fun mapIsEmpty!18953 () Bool)

(assert (=> mapIsEmpty!18953 mapRes!18953))

(declare-fun condMapEmpty!18953 () Bool)

(declare-fun mapDefault!18953 () List!35596)

(assert (=> mapNonEmpty!18950 (= condMapEmpty!18953 (= mapRest!18950 ((as const (Array (_ BitVec 32) List!35596)) mapDefault!18953)))))

(assert (=> mapNonEmpty!18950 (= tp!999691 (and e!1973999 mapRes!18953))))

(assert (= (and mapNonEmpty!18950 condMapEmpty!18953) mapIsEmpty!18953))

(assert (= (and mapNonEmpty!18950 (not condMapEmpty!18953)) mapNonEmpty!18953))

(assert (= (and mapNonEmpty!18953 ((_ is Cons!35472) mapValue!18953)) b!3169360))

(assert (= (and mapNonEmpty!18950 ((_ is Cons!35472) mapDefault!18953)) b!3169361))

(declare-fun m!3429406 () Bool)

(assert (=> mapNonEmpty!18953 m!3429406))

(declare-fun tp!999755 () Bool)

(declare-fun e!1974002 () Bool)

(declare-fun b!3169366 () Bool)

(declare-fun tp!999754 () Bool)

(declare-fun tp!999756 () Bool)

(assert (=> b!3169366 (= e!1974002 (and tp!999754 tp_is_empty!17081 tp!999755 tp!999756))))

(assert (=> mapNonEmpty!18950 (= tp!999693 e!1974002)))

(assert (= (and mapNonEmpty!18950 ((_ is Cons!35472) mapValue!18950)) b!3169366))

(declare-fun e!1974003 () Bool)

(declare-fun tp!999759 () Bool)

(declare-fun b!3169367 () Bool)

(declare-fun tp!999758 () Bool)

(declare-fun tp!999757 () Bool)

(assert (=> b!3169367 (= e!1974003 (and tp!999757 tp_is_empty!17081 tp!999758 tp!999759))))

(assert (=> b!3169180 (= tp!999696 e!1974003)))

(assert (= (and b!3169180 ((_ is Cons!35472) (zeroValue!4439 (v!35191 (underlying!8589 (v!35192 (underlying!8590 (cache!4232 thiss!28524)))))))) b!3169367))

(declare-fun tp!999760 () Bool)

(declare-fun b!3169368 () Bool)

(declare-fun tp!999762 () Bool)

(declare-fun e!1974004 () Bool)

(declare-fun tp!999761 () Bool)

(assert (=> b!3169368 (= e!1974004 (and tp!999760 tp_is_empty!17081 tp!999761 tp!999762))))

(assert (=> b!3169180 (= tp!999690 e!1974004)))

(assert (= (and b!3169180 ((_ is Cons!35472) (minValue!4439 (v!35191 (underlying!8589 (v!35192 (underlying!8590 (cache!4232 thiss!28524)))))))) b!3169368))

(declare-fun tp!999764 () Bool)

(declare-fun b!3169369 () Bool)

(declare-fun tp!999763 () Bool)

(declare-fun tp!999765 () Bool)

(declare-fun e!1974005 () Bool)

(assert (=> b!3169369 (= e!1974005 (and tp!999763 tp_is_empty!17081 tp!999764 tp!999765))))

(assert (=> b!3169188 (= tp!999687 e!1974005)))

(assert (= (and b!3169188 ((_ is Cons!35472) mapDefault!18950)) b!3169369))

(declare-fun b!3169370 () Bool)

(declare-fun e!1974006 () Bool)

(assert (=> b!3169370 (= e!1974006 tp_is_empty!17081)))

(declare-fun b!3169371 () Bool)

(declare-fun tp!999768 () Bool)

(declare-fun tp!999767 () Bool)

(assert (=> b!3169371 (= e!1974006 (and tp!999768 tp!999767))))

(declare-fun b!3169372 () Bool)

(declare-fun tp!999770 () Bool)

(assert (=> b!3169372 (= e!1974006 tp!999770)))

(assert (=> b!3169184 (= tp!999694 e!1974006)))

(declare-fun b!3169373 () Bool)

(declare-fun tp!999766 () Bool)

(declare-fun tp!999769 () Bool)

(assert (=> b!3169373 (= e!1974006 (and tp!999766 tp!999769))))

(assert (= (and b!3169184 ((_ is ElementMatch!9759) (regOne!20030 res!14113))) b!3169370))

(assert (= (and b!3169184 ((_ is Concat!15080) (regOne!20030 res!14113))) b!3169371))

(assert (= (and b!3169184 ((_ is Star!9759) (regOne!20030 res!14113))) b!3169372))

(assert (= (and b!3169184 ((_ is Union!9759) (regOne!20030 res!14113))) b!3169373))

(declare-fun b!3169374 () Bool)

(declare-fun e!1974007 () Bool)

(assert (=> b!3169374 (= e!1974007 tp_is_empty!17081)))

(declare-fun b!3169375 () Bool)

(declare-fun tp!999773 () Bool)

(declare-fun tp!999772 () Bool)

(assert (=> b!3169375 (= e!1974007 (and tp!999773 tp!999772))))

(declare-fun b!3169376 () Bool)

(declare-fun tp!999775 () Bool)

(assert (=> b!3169376 (= e!1974007 tp!999775)))

(assert (=> b!3169184 (= tp!999699 e!1974007)))

(declare-fun b!3169377 () Bool)

(declare-fun tp!999771 () Bool)

(declare-fun tp!999774 () Bool)

(assert (=> b!3169377 (= e!1974007 (and tp!999771 tp!999774))))

(assert (= (and b!3169184 ((_ is ElementMatch!9759) (regTwo!20030 res!14113))) b!3169374))

(assert (= (and b!3169184 ((_ is Concat!15080) (regTwo!20030 res!14113))) b!3169375))

(assert (= (and b!3169184 ((_ is Star!9759) (regTwo!20030 res!14113))) b!3169376))

(assert (= (and b!3169184 ((_ is Union!9759) (regTwo!20030 res!14113))) b!3169377))

(declare-fun b!3169378 () Bool)

(declare-fun e!1974008 () Bool)

(assert (=> b!3169378 (= e!1974008 tp_is_empty!17081)))

(declare-fun b!3169379 () Bool)

(declare-fun tp!999778 () Bool)

(declare-fun tp!999777 () Bool)

(assert (=> b!3169379 (= e!1974008 (and tp!999778 tp!999777))))

(declare-fun b!3169380 () Bool)

(declare-fun tp!999780 () Bool)

(assert (=> b!3169380 (= e!1974008 tp!999780)))

(assert (=> b!3169196 (= tp!999701 e!1974008)))

(declare-fun b!3169381 () Bool)

(declare-fun tp!999776 () Bool)

(declare-fun tp!999779 () Bool)

(assert (=> b!3169381 (= e!1974008 (and tp!999776 tp!999779))))

(assert (= (and b!3169196 ((_ is ElementMatch!9759) (regOne!20031 res!14113))) b!3169378))

(assert (= (and b!3169196 ((_ is Concat!15080) (regOne!20031 res!14113))) b!3169379))

(assert (= (and b!3169196 ((_ is Star!9759) (regOne!20031 res!14113))) b!3169380))

(assert (= (and b!3169196 ((_ is Union!9759) (regOne!20031 res!14113))) b!3169381))

(declare-fun b!3169382 () Bool)

(declare-fun e!1974009 () Bool)

(assert (=> b!3169382 (= e!1974009 tp_is_empty!17081)))

(declare-fun b!3169383 () Bool)

(declare-fun tp!999783 () Bool)

(declare-fun tp!999782 () Bool)

(assert (=> b!3169383 (= e!1974009 (and tp!999783 tp!999782))))

(declare-fun b!3169384 () Bool)

(declare-fun tp!999785 () Bool)

(assert (=> b!3169384 (= e!1974009 tp!999785)))

(assert (=> b!3169196 (= tp!999689 e!1974009)))

(declare-fun b!3169385 () Bool)

(declare-fun tp!999781 () Bool)

(declare-fun tp!999784 () Bool)

(assert (=> b!3169385 (= e!1974009 (and tp!999781 tp!999784))))

(assert (= (and b!3169196 ((_ is ElementMatch!9759) (regTwo!20031 res!14113))) b!3169382))

(assert (= (and b!3169196 ((_ is Concat!15080) (regTwo!20031 res!14113))) b!3169383))

(assert (= (and b!3169196 ((_ is Star!9759) (regTwo!20031 res!14113))) b!3169384))

(assert (= (and b!3169196 ((_ is Union!9759) (regTwo!20031 res!14113))) b!3169385))

(declare-fun b!3169386 () Bool)

(declare-fun e!1974010 () Bool)

(assert (=> b!3169386 (= e!1974010 tp_is_empty!17081)))

(declare-fun b!3169387 () Bool)

(declare-fun tp!999788 () Bool)

(declare-fun tp!999787 () Bool)

(assert (=> b!3169387 (= e!1974010 (and tp!999788 tp!999787))))

(declare-fun b!3169388 () Bool)

(declare-fun tp!999790 () Bool)

(assert (=> b!3169388 (= e!1974010 tp!999790)))

(assert (=> b!3169181 (= tp!999688 e!1974010)))

(declare-fun b!3169389 () Bool)

(declare-fun tp!999786 () Bool)

(declare-fun tp!999789 () Bool)

(assert (=> b!3169389 (= e!1974010 (and tp!999786 tp!999789))))

(assert (= (and b!3169181 ((_ is ElementMatch!9759) (regOne!20031 r!4733))) b!3169386))

(assert (= (and b!3169181 ((_ is Concat!15080) (regOne!20031 r!4733))) b!3169387))

(assert (= (and b!3169181 ((_ is Star!9759) (regOne!20031 r!4733))) b!3169388))

(assert (= (and b!3169181 ((_ is Union!9759) (regOne!20031 r!4733))) b!3169389))

(declare-fun b!3169390 () Bool)

(declare-fun e!1974011 () Bool)

(assert (=> b!3169390 (= e!1974011 tp_is_empty!17081)))

(declare-fun b!3169391 () Bool)

(declare-fun tp!999793 () Bool)

(declare-fun tp!999792 () Bool)

(assert (=> b!3169391 (= e!1974011 (and tp!999793 tp!999792))))

(declare-fun b!3169392 () Bool)

(declare-fun tp!999795 () Bool)

(assert (=> b!3169392 (= e!1974011 tp!999795)))

(assert (=> b!3169181 (= tp!999692 e!1974011)))

(declare-fun b!3169393 () Bool)

(declare-fun tp!999791 () Bool)

(declare-fun tp!999794 () Bool)

(assert (=> b!3169393 (= e!1974011 (and tp!999791 tp!999794))))

(assert (= (and b!3169181 ((_ is ElementMatch!9759) (regTwo!20031 r!4733))) b!3169390))

(assert (= (and b!3169181 ((_ is Concat!15080) (regTwo!20031 r!4733))) b!3169391))

(assert (= (and b!3169181 ((_ is Star!9759) (regTwo!20031 r!4733))) b!3169392))

(assert (= (and b!3169181 ((_ is Union!9759) (regTwo!20031 r!4733))) b!3169393))

(declare-fun b!3169394 () Bool)

(declare-fun e!1974012 () Bool)

(assert (=> b!3169394 (= e!1974012 tp_is_empty!17081)))

(declare-fun b!3169395 () Bool)

(declare-fun tp!999798 () Bool)

(declare-fun tp!999797 () Bool)

(assert (=> b!3169395 (= e!1974012 (and tp!999798 tp!999797))))

(declare-fun b!3169396 () Bool)

(declare-fun tp!999800 () Bool)

(assert (=> b!3169396 (= e!1974012 tp!999800)))

(assert (=> b!3169191 (= tp!999686 e!1974012)))

(declare-fun b!3169397 () Bool)

(declare-fun tp!999796 () Bool)

(declare-fun tp!999799 () Bool)

(assert (=> b!3169397 (= e!1974012 (and tp!999796 tp!999799))))

(assert (= (and b!3169191 ((_ is ElementMatch!9759) (reg!10088 res!14113))) b!3169394))

(assert (= (and b!3169191 ((_ is Concat!15080) (reg!10088 res!14113))) b!3169395))

(assert (= (and b!3169191 ((_ is Star!9759) (reg!10088 res!14113))) b!3169396))

(assert (= (and b!3169191 ((_ is Union!9759) (reg!10088 res!14113))) b!3169397))

(declare-fun b_lambda!86453 () Bool)

(assert (= b_lambda!86451 (or b!3169182 b_lambda!86453)))

(declare-fun bs!539570 () Bool)

(declare-fun d!869115 () Bool)

(assert (= bs!539570 (and d!869115 b!3169182)))

(declare-fun res!1288589 () Bool)

(declare-fun e!1974013 () Bool)

(assert (=> bs!539570 (=> (not res!1288589) (not e!1974013))))

(assert (=> bs!539570 (= res!1288589 (validRegex!4475 (_1!20456 (_1!20457 (h!40892 (toList!2067 (map!7922 (_2!20458 (update!274 (cache!4232 thiss!28524) lt!1065452 res!14113)))))))))))

(assert (=> bs!539570 (= (dynLambda!14364 lambda!115931 (h!40892 (toList!2067 (map!7922 (_2!20458 (update!274 (cache!4232 thiss!28524) lt!1065452 res!14113)))))) e!1974013)))

(declare-fun b!3169398 () Bool)

(assert (=> b!3169398 (= e!1974013 (= (_2!20457 (h!40892 (toList!2067 (map!7922 (_2!20458 (update!274 (cache!4232 thiss!28524) lt!1065452 res!14113)))))) (derivativeStep!2902 (_1!20456 (_1!20457 (h!40892 (toList!2067 (map!7922 (_2!20458 (update!274 (cache!4232 thiss!28524) lt!1065452 res!14113))))))) (_2!20456 (_1!20457 (h!40892 (toList!2067 (map!7922 (_2!20458 (update!274 (cache!4232 thiss!28524) lt!1065452 res!14113))))))))))))

(assert (= (and bs!539570 res!1288589) b!3169398))

(declare-fun m!3429408 () Bool)

(assert (=> bs!539570 m!3429408))

(declare-fun m!3429410 () Bool)

(assert (=> b!3169398 m!3429410))

(assert (=> b!3169240 d!869115))

(check-sat (not bm!230059) (not b!3169353) (not b!3169367) (not b!3169368) (not bm!230031) (not bm!230029) (not b!3169205) (not b!3169290) (not b!3169345) (not bm!230024) (not b!3169282) (not b!3169344) (not b!3169347) (not bm!230040) (not bm!230033) (not b!3169398) (not bm!230043) (not b!3169285) (not b!3169388) (not b!3169387) (not b!3169291) (not b!3169208) (not b!3169381) (not b!3169366) (not bm!230039) (not b!3169351) (not b!3169376) (not d!869109) (not b!3169241) (not bm!230025) (not b!3169371) (not b!3169372) (not bm!230026) (not b!3169383) (not bm!230021) (not bm!230032) (not bm!230022) (not b!3169343) (not b!3169361) (not bm!230035) (not bm!230045) (not b!3169204) (not bm!230020) (not bm!230018) (not b!3169396) (not bm!230036) (not bm!230044) (not d!869111) (not bm!230057) (not bm!229953) (not d!869107) (not b!3169348) (not b!3169375) (not b!3169380) (not b_lambda!86453) (not b!3169384) (not d!869095) (not bm!230046) (not b_next!83907) (not mapNonEmpty!18953) (not b!3169301) (not bm!230048) (not b!3169379) (not d!869113) (not b!3169395) (not b!3169393) (not b!3169281) (not bm!230019) (not b!3169292) (not b!3169385) (not b!3169232) (not b!3169391) b_and!209481 (not b!3169322) b_and!209479 (not bm!229955) (not b!3169360) (not b!3169377) (not bm!230027) (not b!3169369) (not bs!539570) (not b!3169373) (not bm!230042) (not b_next!83905) (not b!3169352) (not bm!230047) (not bm!230034) (not bm!230038) tp_is_empty!17081 (not b!3169397) (not bm!230041) (not bm!230037) (not b!3169389) (not b!3169392) (not bm!230023) (not b!3169349))
(check-sat b_and!209481 b_and!209479 (not b_next!83905) (not b_next!83907))
