; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1998 () Bool)

(assert start!1998)

(declare-fun b!36205 () Bool)

(declare-fun b_free!549 () Bool)

(declare-fun b_next!549 () Bool)

(assert (=> b!36205 (= b_free!549 (not b_next!549))))

(declare-fun tp!25054 () Bool)

(declare-fun b_and!583 () Bool)

(assert (=> b!36205 (= tp!25054 b_and!583)))

(declare-fun b!36195 () Bool)

(declare-fun b_free!551 () Bool)

(declare-fun b_next!551 () Bool)

(assert (=> b!36195 (= b_free!551 (not b_next!551))))

(declare-fun tp!25044 () Bool)

(declare-fun b_and!585 () Bool)

(assert (=> b!36195 (= tp!25044 b_and!585)))

(declare-fun b!36192 () Bool)

(declare-fun res!28149 () Bool)

(declare-fun e!17751 () Bool)

(assert (=> b!36192 (=> (not res!28149) (not e!17751))))

(declare-datatypes ((C!1380 0))(
  ( (C!1381 (val!209 Int)) )
))
(declare-datatypes ((List!405 0))(
  ( (Nil!403) (Cons!403 (h!5799 C!1380) (t!15241 List!405)) )
))
(declare-fun input!6011 () List!405)

(declare-fun isEmpty!89 (List!405) Bool)

(assert (=> b!36192 (= res!28149 (not (isEmpty!89 input!6011)))))

(declare-fun b!36193 () Bool)

(declare-fun e!17754 () Bool)

(declare-fun tp!25045 () Bool)

(declare-fun tp!25043 () Bool)

(assert (=> b!36193 (= e!17754 (and tp!25045 tp!25043))))

(declare-fun b!36194 () Bool)

(declare-fun tp!25049 () Bool)

(declare-fun tp!25047 () Bool)

(assert (=> b!36194 (= e!17754 (and tp!25049 tp!25047))))

(declare-fun e!17753 () Bool)

(declare-fun e!17748 () Bool)

(assert (=> b!36195 (= e!17753 (and e!17748 tp!25044))))

(declare-fun mapIsEmpty!364 () Bool)

(declare-fun mapRes!364 () Bool)

(assert (=> mapIsEmpty!364 mapRes!364))

(declare-fun b!36196 () Bool)

(declare-fun e!17750 () Bool)

(declare-fun e!17744 () Bool)

(assert (=> b!36196 (= e!17750 e!17744)))

(declare-fun b!36198 () Bool)

(declare-fun e!17749 () Bool)

(declare-fun tp!25051 () Bool)

(assert (=> b!36198 (= e!17749 (and tp!25051 mapRes!364))))

(declare-fun condMapEmpty!364 () Bool)

(declare-datatypes ((Regex!173 0))(
  ( (ElementMatch!173 (c!15474 C!1380)) (Concat!292 (regOne!858 Regex!173) (regTwo!858 Regex!173)) (EmptyExpr!173) (Star!173 (reg!502 Regex!173)) (EmptyLang!173) (Union!173 (regOne!859 Regex!173) (regTwo!859 Regex!173)) )
))
(declare-datatypes ((tuple2!362 0))(
  ( (tuple2!363 (_1!247 Regex!173) (_2!247 C!1380)) )
))
(declare-datatypes ((tuple2!364 0))(
  ( (tuple2!365 (_1!248 tuple2!362) (_2!248 Regex!173)) )
))
(declare-datatypes ((List!406 0))(
  ( (Nil!404) (Cons!404 (h!5800 tuple2!364) (t!15242 List!406)) )
))
(declare-datatypes ((array!364 0))(
  ( (array!365 (arr!196 (Array (_ BitVec 32) List!406)) (size!452 (_ BitVec 32))) )
))
(declare-datatypes ((array!366 0))(
  ( (array!367 (arr!197 (Array (_ BitVec 32) (_ BitVec 64))) (size!453 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!218 0))(
  ( (LongMapFixedSize!219 (defaultEntry!447 Int) (mask!797 (_ BitVec 32)) (extraKeys!355 (_ BitVec 32)) (zeroValue!365 List!406) (minValue!365 List!406) (_size!350 (_ BitVec 32)) (_keys!400 array!366) (_values!387 array!364) (_vacant!169 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!105 0))(
  ( (HashableExt!104 (__x!749 Int)) )
))
(declare-datatypes ((Cell!425 0))(
  ( (Cell!426 (v!12186 LongMapFixedSize!218)) )
))
(declare-datatypes ((MutLongMap!109 0))(
  ( (LongMap!109 (underlying!413 Cell!425)) (MutLongMapExt!108 (__x!750 Int)) )
))
(declare-datatypes ((Cell!427 0))(
  ( (Cell!428 (v!12187 MutLongMap!109)) )
))
(declare-datatypes ((MutableMap!105 0))(
  ( (MutableMapExt!104 (__x!751 Int)) (HashMap!105 (underlying!414 Cell!427) (hashF!1973 Hashable!105) (_size!351 (_ BitVec 32)) (defaultValue!254 Int)) )
))
(declare-datatypes ((Cache!18 0))(
  ( (Cache!19 (cache!584 MutableMap!105)) )
))
(declare-fun cache!443 () Cache!18)

(declare-fun mapDefault!364 () List!406)

(assert (=> b!36198 (= condMapEmpty!364 (= (arr!196 (_values!387 (v!12186 (underlying!413 (v!12187 (underlying!414 (cache!584 cache!443))))))) ((as const (Array (_ BitVec 32) List!406)) mapDefault!364)))))

(declare-fun b!36199 () Bool)

(declare-fun tp!25053 () Bool)

(assert (=> b!36199 (= e!17754 tp!25053)))

(declare-fun b!36200 () Bool)

(declare-fun e!17746 () Bool)

(assert (=> b!36200 (= e!17746 e!17753)))

(declare-fun b!36201 () Bool)

(declare-fun e!17745 () Bool)

(assert (=> b!36201 (= e!17745 e!17750)))

(declare-fun mapNonEmpty!364 () Bool)

(declare-fun tp!25042 () Bool)

(declare-fun tp!25048 () Bool)

(assert (=> mapNonEmpty!364 (= mapRes!364 (and tp!25042 tp!25048))))

(declare-fun mapValue!364 () List!406)

(declare-fun mapRest!364 () (Array (_ BitVec 32) List!406))

(declare-fun mapKey!364 () (_ BitVec 32))

(assert (=> mapNonEmpty!364 (= (arr!196 (_values!387 (v!12186 (underlying!413 (v!12187 (underlying!414 (cache!584 cache!443))))))) (store mapRest!364 mapKey!364 mapValue!364))))

(declare-fun b!36202 () Bool)

(declare-fun lt!3012 () MutLongMap!109)

(get-info :version)

(assert (=> b!36202 (= e!17748 (and e!17745 ((_ is LongMap!109) lt!3012)))))

(assert (=> b!36202 (= lt!3012 (v!12187 (underlying!414 (cache!584 cache!443))))))

(declare-fun b!36203 () Bool)

(declare-fun e!17752 () Bool)

(declare-fun tp_is_empty!371 () Bool)

(declare-fun tp!25046 () Bool)

(assert (=> b!36203 (= e!17752 (and tp_is_empty!371 tp!25046))))

(declare-fun b!36204 () Bool)

(declare-fun res!28147 () Bool)

(assert (=> b!36204 (=> (not res!28147) (not e!17751))))

(declare-fun valid!117 (Cache!18) Bool)

(assert (=> b!36204 (= res!28147 (valid!117 cache!443))))

(declare-fun b!36197 () Bool)

(assert (=> b!36197 (= e!17751 (= input!6011 Nil!403))))

(declare-datatypes ((tuple2!366 0))(
  ( (tuple2!367 (_1!249 Regex!173) (_2!249 Cache!18)) )
))
(declare-fun lt!3011 () tuple2!366)

(declare-fun r!13380 () Regex!173)

(declare-fun derivativeStepMem!2 (Regex!173 C!1380 Cache!18) tuple2!366)

(declare-fun head!330 (List!405) C!1380)

(assert (=> b!36197 (= lt!3011 (derivativeStepMem!2 r!13380 (head!330 input!6011) cache!443))))

(declare-fun res!28148 () Bool)

(assert (=> start!1998 (=> (not res!28148) (not e!17751))))

(declare-fun validRegex!10 (Regex!173) Bool)

(assert (=> start!1998 (= res!28148 (validRegex!10 r!13380))))

(assert (=> start!1998 e!17751))

(assert (=> start!1998 e!17754))

(declare-fun inv!707 (Cache!18) Bool)

(assert (=> start!1998 (and (inv!707 cache!443) e!17746)))

(assert (=> start!1998 e!17752))

(declare-fun tp!25050 () Bool)

(declare-fun tp!25052 () Bool)

(declare-fun array_inv!116 (array!366) Bool)

(declare-fun array_inv!117 (array!364) Bool)

(assert (=> b!36205 (= e!17744 (and tp!25054 tp!25052 tp!25050 (array_inv!116 (_keys!400 (v!12186 (underlying!413 (v!12187 (underlying!414 (cache!584 cache!443))))))) (array_inv!117 (_values!387 (v!12186 (underlying!413 (v!12187 (underlying!414 (cache!584 cache!443))))))) e!17749))))

(declare-fun b!36206 () Bool)

(assert (=> b!36206 (= e!17754 tp_is_empty!371)))

(assert (= (and start!1998 res!28148) b!36204))

(assert (= (and b!36204 res!28147) b!36192))

(assert (= (and b!36192 res!28149) b!36197))

(assert (= (and start!1998 ((_ is ElementMatch!173) r!13380)) b!36206))

(assert (= (and start!1998 ((_ is Concat!292) r!13380)) b!36194))

(assert (= (and start!1998 ((_ is Star!173) r!13380)) b!36199))

(assert (= (and start!1998 ((_ is Union!173) r!13380)) b!36193))

(assert (= (and b!36198 condMapEmpty!364) mapIsEmpty!364))

(assert (= (and b!36198 (not condMapEmpty!364)) mapNonEmpty!364))

(assert (= b!36205 b!36198))

(assert (= b!36196 b!36205))

(assert (= b!36201 b!36196))

(assert (= (and b!36202 ((_ is LongMap!109) (v!12187 (underlying!414 (cache!584 cache!443))))) b!36201))

(assert (= b!36195 b!36202))

(assert (= (and b!36200 ((_ is HashMap!105) (cache!584 cache!443))) b!36195))

(assert (= start!1998 b!36200))

(assert (= (and start!1998 ((_ is Cons!403) input!6011)) b!36203))

(declare-fun m!11764 () Bool)

(assert (=> b!36192 m!11764))

(declare-fun m!11766 () Bool)

(assert (=> b!36197 m!11766))

(assert (=> b!36197 m!11766))

(declare-fun m!11768 () Bool)

(assert (=> b!36197 m!11768))

(declare-fun m!11770 () Bool)

(assert (=> b!36204 m!11770))

(declare-fun m!11772 () Bool)

(assert (=> mapNonEmpty!364 m!11772))

(declare-fun m!11774 () Bool)

(assert (=> start!1998 m!11774))

(declare-fun m!11776 () Bool)

(assert (=> start!1998 m!11776))

(declare-fun m!11778 () Bool)

(assert (=> b!36205 m!11778))

(declare-fun m!11780 () Bool)

(assert (=> b!36205 m!11780))

(check-sat (not b!36192) (not b_next!551) (not b!36193) (not b!36194) b_and!585 (not b!36205) (not b!36198) (not b!36197) (not mapNonEmpty!364) (not b!36199) (not b!36203) (not b_next!549) (not b!36204) (not start!1998) tp_is_empty!371 b_and!583)
(check-sat b_and!583 b_and!585 (not b_next!549) (not b_next!551))
(get-model)

(declare-fun b!36225 () Bool)

(declare-fun e!17775 () Bool)

(declare-fun e!17773 () Bool)

(assert (=> b!36225 (= e!17775 e!17773)))

(declare-fun res!28163 () Bool)

(declare-fun nullable!9 (Regex!173) Bool)

(assert (=> b!36225 (= res!28163 (not (nullable!9 (reg!502 r!13380))))))

(assert (=> b!36225 (=> (not res!28163) (not e!17773))))

(declare-fun b!36226 () Bool)

(declare-fun e!17771 () Bool)

(declare-fun call!2686 () Bool)

(assert (=> b!36226 (= e!17771 call!2686)))

(declare-fun b!36227 () Bool)

(declare-fun call!2687 () Bool)

(assert (=> b!36227 (= e!17773 call!2687)))

(declare-fun b!36228 () Bool)

(declare-fun e!17769 () Bool)

(assert (=> b!36228 (= e!17775 e!17769)))

(declare-fun c!15479 () Bool)

(assert (=> b!36228 (= c!15479 ((_ is Union!173) r!13380))))

(declare-fun bm!2680 () Bool)

(assert (=> bm!2680 (= call!2686 call!2687)))

(declare-fun b!36229 () Bool)

(declare-fun res!28160 () Bool)

(declare-fun e!17772 () Bool)

(assert (=> b!36229 (=> res!28160 e!17772)))

(assert (=> b!36229 (= res!28160 (not ((_ is Concat!292) r!13380)))))

(assert (=> b!36229 (= e!17769 e!17772)))

(declare-fun d!3877 () Bool)

(declare-fun res!28162 () Bool)

(declare-fun e!17770 () Bool)

(assert (=> d!3877 (=> res!28162 e!17770)))

(assert (=> d!3877 (= res!28162 ((_ is ElementMatch!173) r!13380))))

(assert (=> d!3877 (= (validRegex!10 r!13380) e!17770)))

(declare-fun b!36230 () Bool)

(declare-fun e!17774 () Bool)

(assert (=> b!36230 (= e!17774 call!2686)))

(declare-fun b!36231 () Bool)

(assert (=> b!36231 (= e!17772 e!17771)))

(declare-fun res!28161 () Bool)

(assert (=> b!36231 (=> (not res!28161) (not e!17771))))

(declare-fun call!2685 () Bool)

(assert (=> b!36231 (= res!28161 call!2685)))

(declare-fun b!36232 () Bool)

(declare-fun res!28164 () Bool)

(assert (=> b!36232 (=> (not res!28164) (not e!17774))))

(assert (=> b!36232 (= res!28164 call!2685)))

(assert (=> b!36232 (= e!17769 e!17774)))

(declare-fun bm!2681 () Bool)

(assert (=> bm!2681 (= call!2685 (validRegex!10 (ite c!15479 (regOne!859 r!13380) (regOne!858 r!13380))))))

(declare-fun c!15480 () Bool)

(declare-fun bm!2682 () Bool)

(assert (=> bm!2682 (= call!2687 (validRegex!10 (ite c!15480 (reg!502 r!13380) (ite c!15479 (regTwo!859 r!13380) (regTwo!858 r!13380)))))))

(declare-fun b!36233 () Bool)

(assert (=> b!36233 (= e!17770 e!17775)))

(assert (=> b!36233 (= c!15480 ((_ is Star!173) r!13380))))

(assert (= (and d!3877 (not res!28162)) b!36233))

(assert (= (and b!36233 c!15480) b!36225))

(assert (= (and b!36233 (not c!15480)) b!36228))

(assert (= (and b!36225 res!28163) b!36227))

(assert (= (and b!36228 c!15479) b!36232))

(assert (= (and b!36228 (not c!15479)) b!36229))

(assert (= (and b!36232 res!28164) b!36230))

(assert (= (and b!36229 (not res!28160)) b!36231))

(assert (= (and b!36231 res!28161) b!36226))

(assert (= (or b!36232 b!36231) bm!2681))

(assert (= (or b!36230 b!36226) bm!2680))

(assert (= (or b!36227 bm!2680) bm!2682))

(declare-fun m!11782 () Bool)

(assert (=> b!36225 m!11782))

(declare-fun m!11784 () Bool)

(assert (=> bm!2681 m!11784))

(declare-fun m!11786 () Bool)

(assert (=> bm!2682 m!11786))

(assert (=> start!1998 d!3877))

(declare-fun d!3879 () Bool)

(declare-fun res!28167 () Bool)

(declare-fun e!17778 () Bool)

(assert (=> d!3879 (=> (not res!28167) (not e!17778))))

(assert (=> d!3879 (= res!28167 ((_ is HashMap!105) (cache!584 cache!443)))))

(assert (=> d!3879 (= (inv!707 cache!443) e!17778)))

(declare-fun b!36236 () Bool)

(declare-fun validCacheMap!2 (MutableMap!105) Bool)

(assert (=> b!36236 (= e!17778 (validCacheMap!2 (cache!584 cache!443)))))

(assert (= (and d!3879 res!28167) b!36236))

(declare-fun m!11788 () Bool)

(assert (=> b!36236 m!11788))

(assert (=> start!1998 d!3879))

(declare-fun b!36261 () Bool)

(declare-fun e!17795 () tuple2!366)

(declare-fun e!17792 () tuple2!366)

(assert (=> b!36261 (= e!17795 e!17792)))

(declare-fun c!15494 () Bool)

(assert (=> b!36261 (= c!15494 ((_ is Union!173) r!13380))))

(declare-fun b!36262 () Bool)

(declare-fun lt!3037 () tuple2!366)

(declare-fun call!2698 () tuple2!366)

(assert (=> b!36262 (= lt!3037 call!2698)))

(declare-fun lt!3031 () tuple2!366)

(declare-fun call!2699 () tuple2!366)

(assert (=> b!36262 (= lt!3031 call!2699)))

(declare-fun e!17794 () tuple2!366)

(assert (=> b!36262 (= e!17794 (tuple2!367 (Union!173 (Concat!292 (_1!249 lt!3031) (regTwo!858 r!13380)) (_1!249 lt!3037)) (_2!249 lt!3037)))))

(declare-fun lt!3032 () tuple2!366)

(declare-fun bm!2691 () Bool)

(assert (=> bm!2691 (= call!2698 (derivativeStepMem!2 (ite c!15494 (regTwo!859 r!13380) (regTwo!858 r!13380)) (head!330 input!6011) (ite c!15494 (_2!249 lt!3032) (_2!249 lt!3031))))))

(declare-fun b!36263 () Bool)

(declare-fun e!17796 () tuple2!366)

(assert (=> b!36263 (= e!17796 (tuple2!367 EmptyLang!173 cache!443))))

(declare-fun b!36264 () Bool)

(declare-fun e!17793 () tuple2!366)

(declare-datatypes ((Option!46 0))(
  ( (None!45) (Some!45 (v!12188 Regex!173)) )
))
(declare-fun lt!3034 () Option!46)

(assert (=> b!36264 (= e!17793 (tuple2!367 (v!12188 lt!3034) cache!443))))

(declare-fun d!3881 () Bool)

(declare-fun lt!3036 () tuple2!366)

(declare-fun derivativeStep!1 (Regex!173 C!1380) Regex!173)

(assert (=> d!3881 (= (_1!249 lt!3036) (derivativeStep!1 r!13380 (head!330 input!6011)))))

(assert (=> d!3881 (= lt!3036 e!17793)))

(declare-fun c!15493 () Bool)

(assert (=> d!3881 (= c!15493 ((_ is Some!45) lt!3034))))

(declare-fun get!186 (Cache!18 Regex!173 C!1380) Option!46)

(assert (=> d!3881 (= lt!3034 (get!186 cache!443 r!13380 (head!330 input!6011)))))

(assert (=> d!3881 (validRegex!10 r!13380)))

(assert (=> d!3881 (= (derivativeStepMem!2 r!13380 (head!330 input!6011) cache!443) lt!3036)))

(declare-fun b!36265 () Bool)

(declare-fun c!15496 () Bool)

(assert (=> b!36265 (= c!15496 ((_ is Star!173) r!13380))))

(declare-fun e!17791 () tuple2!366)

(assert (=> b!36265 (= e!17792 e!17791)))

(declare-fun bm!2692 () Bool)

(declare-fun call!2697 () tuple2!366)

(declare-fun call!2696 () tuple2!366)

(assert (=> bm!2692 (= call!2697 call!2696)))

(declare-fun b!36266 () Bool)

(declare-fun c!15498 () Bool)

(assert (=> b!36266 (= c!15498 ((_ is ElementMatch!173) r!13380))))

(assert (=> b!36266 (= e!17796 e!17795)))

(declare-fun bm!2693 () Bool)

(assert (=> bm!2693 (= call!2699 call!2697)))

(declare-fun b!36267 () Bool)

(declare-fun lt!3039 () tuple2!366)

(assert (=> b!36267 (= e!17791 (tuple2!367 (Concat!292 (_1!249 lt!3039) (Star!173 (reg!502 r!13380))) (_2!249 lt!3039)))))

(assert (=> b!36267 (= lt!3039 call!2697)))

(declare-fun b!36268 () Bool)

(assert (=> b!36268 (= e!17795 (tuple2!367 (ite (= (head!330 input!6011) (c!15474 r!13380)) EmptyExpr!173 EmptyLang!173) cache!443))))

(declare-fun b!36269 () Bool)

(declare-fun lt!3035 () tuple2!366)

(assert (=> b!36269 (= lt!3035 call!2698)))

(assert (=> b!36269 (= lt!3032 call!2696)))

(assert (=> b!36269 (= e!17792 (tuple2!367 (Union!173 (_1!249 lt!3032) (_1!249 lt!3035)) (_2!249 lt!3035)))))

(declare-fun lt!3033 () tuple2!366)

(declare-fun b!36270 () Bool)

(declare-datatypes ((Unit!199 0))(
  ( (Unit!200) )
))
(declare-datatypes ((tuple2!368 0))(
  ( (tuple2!369 (_1!250 Unit!199) (_2!250 Cache!18)) )
))
(declare-fun update!12 (Cache!18 Regex!173 C!1380 Regex!173) tuple2!368)

(assert (=> b!36270 (= e!17793 (tuple2!367 (_1!249 lt!3033) (_2!250 (update!12 (_2!249 lt!3033) r!13380 (head!330 input!6011) (_1!249 lt!3033)))))))

(declare-fun c!15495 () Bool)

(assert (=> b!36270 (= c!15495 (or ((_ is EmptyExpr!173) r!13380) ((_ is EmptyLang!173) r!13380)))))

(assert (=> b!36270 (= lt!3033 e!17796)))

(declare-fun b!36271 () Bool)

(declare-fun lt!3038 () tuple2!366)

(assert (=> b!36271 (= lt!3038 call!2699)))

(assert (=> b!36271 (= e!17794 (tuple2!367 (Union!173 (Concat!292 (_1!249 lt!3038) (regTwo!858 r!13380)) EmptyLang!173) (_2!249 lt!3038)))))

(declare-fun bm!2694 () Bool)

(assert (=> bm!2694 (= call!2696 (derivativeStepMem!2 (ite c!15494 (regOne!859 r!13380) (ite c!15496 (reg!502 r!13380) (regOne!858 r!13380))) (head!330 input!6011) cache!443))))

(declare-fun b!36272 () Bool)

(assert (=> b!36272 (= e!17791 e!17794)))

(declare-fun c!15497 () Bool)

(assert (=> b!36272 (= c!15497 (nullable!9 (regOne!858 r!13380)))))

(assert (= (and d!3881 c!15493) b!36264))

(assert (= (and d!3881 (not c!15493)) b!36270))

(assert (= (and b!36270 c!15495) b!36263))

(assert (= (and b!36270 (not c!15495)) b!36266))

(assert (= (and b!36266 c!15498) b!36268))

(assert (= (and b!36266 (not c!15498)) b!36261))

(assert (= (and b!36261 c!15494) b!36269))

(assert (= (and b!36261 (not c!15494)) b!36265))

(assert (= (and b!36265 c!15496) b!36267))

(assert (= (and b!36265 (not c!15496)) b!36272))

(assert (= (and b!36272 c!15497) b!36262))

(assert (= (and b!36272 (not c!15497)) b!36271))

(assert (= (or b!36262 b!36271) bm!2693))

(assert (= (or b!36267 bm!2693) bm!2692))

(assert (= (or b!36269 bm!2692) bm!2694))

(assert (= (or b!36269 b!36262) bm!2691))

(declare-fun m!11790 () Bool)

(assert (=> b!36272 m!11790))

(assert (=> bm!2691 m!11766))

(declare-fun m!11792 () Bool)

(assert (=> bm!2691 m!11792))

(assert (=> d!3881 m!11766))

(declare-fun m!11794 () Bool)

(assert (=> d!3881 m!11794))

(assert (=> d!3881 m!11766))

(declare-fun m!11796 () Bool)

(assert (=> d!3881 m!11796))

(assert (=> d!3881 m!11774))

(assert (=> b!36270 m!11766))

(declare-fun m!11798 () Bool)

(assert (=> b!36270 m!11798))

(assert (=> bm!2694 m!11766))

(declare-fun m!11800 () Bool)

(assert (=> bm!2694 m!11800))

(assert (=> b!36197 d!3881))

(declare-fun d!3883 () Bool)

(assert (=> d!3883 (= (head!330 input!6011) (h!5799 input!6011))))

(assert (=> b!36197 d!3883))

(declare-fun d!3885 () Bool)

(assert (=> d!3885 (= (isEmpty!89 input!6011) ((_ is Nil!403) input!6011))))

(assert (=> b!36192 d!3885))

(declare-fun d!3887 () Bool)

(assert (=> d!3887 (= (array_inv!116 (_keys!400 (v!12186 (underlying!413 (v!12187 (underlying!414 (cache!584 cache!443))))))) (bvsge (size!453 (_keys!400 (v!12186 (underlying!413 (v!12187 (underlying!414 (cache!584 cache!443))))))) #b00000000000000000000000000000000))))

(assert (=> b!36205 d!3887))

(declare-fun d!3889 () Bool)

(assert (=> d!3889 (= (array_inv!117 (_values!387 (v!12186 (underlying!413 (v!12187 (underlying!414 (cache!584 cache!443))))))) (bvsge (size!452 (_values!387 (v!12186 (underlying!413 (v!12187 (underlying!414 (cache!584 cache!443))))))) #b00000000000000000000000000000000))))

(assert (=> b!36205 d!3889))

(declare-fun d!3891 () Bool)

(assert (=> d!3891 (= (valid!117 cache!443) (validCacheMap!2 (cache!584 cache!443)))))

(declare-fun bs!4965 () Bool)

(assert (= bs!4965 d!3891))

(assert (=> bs!4965 m!11788))

(assert (=> b!36204 d!3891))

(declare-fun b!36286 () Bool)

(declare-fun e!17799 () Bool)

(declare-fun tp!25066 () Bool)

(declare-fun tp!25065 () Bool)

(assert (=> b!36286 (= e!17799 (and tp!25066 tp!25065))))

(declare-fun b!36283 () Bool)

(assert (=> b!36283 (= e!17799 tp_is_empty!371)))

(assert (=> b!36194 (= tp!25049 e!17799)))

(declare-fun b!36284 () Bool)

(declare-fun tp!25069 () Bool)

(declare-fun tp!25067 () Bool)

(assert (=> b!36284 (= e!17799 (and tp!25069 tp!25067))))

(declare-fun b!36285 () Bool)

(declare-fun tp!25068 () Bool)

(assert (=> b!36285 (= e!17799 tp!25068)))

(assert (= (and b!36194 ((_ is ElementMatch!173) (regOne!858 r!13380))) b!36283))

(assert (= (and b!36194 ((_ is Concat!292) (regOne!858 r!13380))) b!36284))

(assert (= (and b!36194 ((_ is Star!173) (regOne!858 r!13380))) b!36285))

(assert (= (and b!36194 ((_ is Union!173) (regOne!858 r!13380))) b!36286))

(declare-fun b!36290 () Bool)

(declare-fun e!17800 () Bool)

(declare-fun tp!25071 () Bool)

(declare-fun tp!25070 () Bool)

(assert (=> b!36290 (= e!17800 (and tp!25071 tp!25070))))

(declare-fun b!36287 () Bool)

(assert (=> b!36287 (= e!17800 tp_is_empty!371)))

(assert (=> b!36194 (= tp!25047 e!17800)))

(declare-fun b!36288 () Bool)

(declare-fun tp!25074 () Bool)

(declare-fun tp!25072 () Bool)

(assert (=> b!36288 (= e!17800 (and tp!25074 tp!25072))))

(declare-fun b!36289 () Bool)

(declare-fun tp!25073 () Bool)

(assert (=> b!36289 (= e!17800 tp!25073)))

(assert (= (and b!36194 ((_ is ElementMatch!173) (regTwo!858 r!13380))) b!36287))

(assert (= (and b!36194 ((_ is Concat!292) (regTwo!858 r!13380))) b!36288))

(assert (= (and b!36194 ((_ is Star!173) (regTwo!858 r!13380))) b!36289))

(assert (= (and b!36194 ((_ is Union!173) (regTwo!858 r!13380))) b!36290))

(declare-fun b!36295 () Bool)

(declare-fun e!17803 () Bool)

(declare-fun tp!25077 () Bool)

(assert (=> b!36295 (= e!17803 (and tp_is_empty!371 tp!25077))))

(assert (=> b!36203 (= tp!25046 e!17803)))

(assert (= (and b!36203 ((_ is Cons!403) (t!15241 input!6011))) b!36295))

(declare-fun e!17806 () Bool)

(declare-fun b!36300 () Bool)

(declare-fun tp!25084 () Bool)

(declare-fun tp!25085 () Bool)

(declare-fun tp!25086 () Bool)

(assert (=> b!36300 (= e!17806 (and tp!25084 tp_is_empty!371 tp!25085 tp!25086))))

(assert (=> b!36198 (= tp!25051 e!17806)))

(assert (= (and b!36198 ((_ is Cons!404) mapDefault!364)) b!36300))

(declare-fun b!36304 () Bool)

(declare-fun e!17807 () Bool)

(declare-fun tp!25088 () Bool)

(declare-fun tp!25087 () Bool)

(assert (=> b!36304 (= e!17807 (and tp!25088 tp!25087))))

(declare-fun b!36301 () Bool)

(assert (=> b!36301 (= e!17807 tp_is_empty!371)))

(assert (=> b!36193 (= tp!25045 e!17807)))

(declare-fun b!36302 () Bool)

(declare-fun tp!25091 () Bool)

(declare-fun tp!25089 () Bool)

(assert (=> b!36302 (= e!17807 (and tp!25091 tp!25089))))

(declare-fun b!36303 () Bool)

(declare-fun tp!25090 () Bool)

(assert (=> b!36303 (= e!17807 tp!25090)))

(assert (= (and b!36193 ((_ is ElementMatch!173) (regOne!859 r!13380))) b!36301))

(assert (= (and b!36193 ((_ is Concat!292) (regOne!859 r!13380))) b!36302))

(assert (= (and b!36193 ((_ is Star!173) (regOne!859 r!13380))) b!36303))

(assert (= (and b!36193 ((_ is Union!173) (regOne!859 r!13380))) b!36304))

(declare-fun b!36308 () Bool)

(declare-fun e!17808 () Bool)

(declare-fun tp!25093 () Bool)

(declare-fun tp!25092 () Bool)

(assert (=> b!36308 (= e!17808 (and tp!25093 tp!25092))))

(declare-fun b!36305 () Bool)

(assert (=> b!36305 (= e!17808 tp_is_empty!371)))

(assert (=> b!36193 (= tp!25043 e!17808)))

(declare-fun b!36306 () Bool)

(declare-fun tp!25096 () Bool)

(declare-fun tp!25094 () Bool)

(assert (=> b!36306 (= e!17808 (and tp!25096 tp!25094))))

(declare-fun b!36307 () Bool)

(declare-fun tp!25095 () Bool)

(assert (=> b!36307 (= e!17808 tp!25095)))

(assert (= (and b!36193 ((_ is ElementMatch!173) (regTwo!859 r!13380))) b!36305))

(assert (= (and b!36193 ((_ is Concat!292) (regTwo!859 r!13380))) b!36306))

(assert (= (and b!36193 ((_ is Star!173) (regTwo!859 r!13380))) b!36307))

(assert (= (and b!36193 ((_ is Union!173) (regTwo!859 r!13380))) b!36308))

(declare-fun tp!25112 () Bool)

(declare-fun b!36315 () Bool)

(declare-fun e!17813 () Bool)

(declare-fun tp!25117 () Bool)

(declare-fun tp!25111 () Bool)

(assert (=> b!36315 (= e!17813 (and tp!25112 tp_is_empty!371 tp!25111 tp!25117))))

(declare-fun b!36316 () Bool)

(declare-fun tp!25113 () Bool)

(declare-fun tp!25115 () Bool)

(declare-fun e!17814 () Bool)

(declare-fun tp!25116 () Bool)

(assert (=> b!36316 (= e!17814 (and tp!25116 tp_is_empty!371 tp!25113 tp!25115))))

(declare-fun mapNonEmpty!367 () Bool)

(declare-fun mapRes!367 () Bool)

(declare-fun tp!25114 () Bool)

(assert (=> mapNonEmpty!367 (= mapRes!367 (and tp!25114 e!17813))))

(declare-fun mapValue!367 () List!406)

(declare-fun mapKey!367 () (_ BitVec 32))

(declare-fun mapRest!367 () (Array (_ BitVec 32) List!406))

(assert (=> mapNonEmpty!367 (= mapRest!364 (store mapRest!367 mapKey!367 mapValue!367))))

(declare-fun condMapEmpty!367 () Bool)

(declare-fun mapDefault!367 () List!406)

(assert (=> mapNonEmpty!364 (= condMapEmpty!367 (= mapRest!364 ((as const (Array (_ BitVec 32) List!406)) mapDefault!367)))))

(assert (=> mapNonEmpty!364 (= tp!25042 (and e!17814 mapRes!367))))

(declare-fun mapIsEmpty!367 () Bool)

(assert (=> mapIsEmpty!367 mapRes!367))

(assert (= (and mapNonEmpty!364 condMapEmpty!367) mapIsEmpty!367))

(assert (= (and mapNonEmpty!364 (not condMapEmpty!367)) mapNonEmpty!367))

(assert (= (and mapNonEmpty!367 ((_ is Cons!404) mapValue!367)) b!36315))

(assert (= (and mapNonEmpty!364 ((_ is Cons!404) mapDefault!367)) b!36316))

(declare-fun m!11802 () Bool)

(assert (=> mapNonEmpty!367 m!11802))

(declare-fun tp!25119 () Bool)

(declare-fun e!17815 () Bool)

(declare-fun tp!25120 () Bool)

(declare-fun b!36317 () Bool)

(declare-fun tp!25118 () Bool)

(assert (=> b!36317 (= e!17815 (and tp!25118 tp_is_empty!371 tp!25119 tp!25120))))

(assert (=> mapNonEmpty!364 (= tp!25048 e!17815)))

(assert (= (and mapNonEmpty!364 ((_ is Cons!404) mapValue!364)) b!36317))

(declare-fun tp!25121 () Bool)

(declare-fun b!36318 () Bool)

(declare-fun e!17816 () Bool)

(declare-fun tp!25123 () Bool)

(declare-fun tp!25122 () Bool)

(assert (=> b!36318 (= e!17816 (and tp!25121 tp_is_empty!371 tp!25122 tp!25123))))

(assert (=> b!36205 (= tp!25052 e!17816)))

(assert (= (and b!36205 ((_ is Cons!404) (zeroValue!365 (v!12186 (underlying!413 (v!12187 (underlying!414 (cache!584 cache!443)))))))) b!36318))

(declare-fun tp!25124 () Bool)

(declare-fun tp!25125 () Bool)

(declare-fun tp!25126 () Bool)

(declare-fun b!36319 () Bool)

(declare-fun e!17817 () Bool)

(assert (=> b!36319 (= e!17817 (and tp!25124 tp_is_empty!371 tp!25125 tp!25126))))

(assert (=> b!36205 (= tp!25050 e!17817)))

(assert (= (and b!36205 ((_ is Cons!404) (minValue!365 (v!12186 (underlying!413 (v!12187 (underlying!414 (cache!584 cache!443)))))))) b!36319))

(declare-fun b!36323 () Bool)

(declare-fun e!17818 () Bool)

(declare-fun tp!25128 () Bool)

(declare-fun tp!25127 () Bool)

(assert (=> b!36323 (= e!17818 (and tp!25128 tp!25127))))

(declare-fun b!36320 () Bool)

(assert (=> b!36320 (= e!17818 tp_is_empty!371)))

(assert (=> b!36199 (= tp!25053 e!17818)))

(declare-fun b!36321 () Bool)

(declare-fun tp!25131 () Bool)

(declare-fun tp!25129 () Bool)

(assert (=> b!36321 (= e!17818 (and tp!25131 tp!25129))))

(declare-fun b!36322 () Bool)

(declare-fun tp!25130 () Bool)

(assert (=> b!36322 (= e!17818 tp!25130)))

(assert (= (and b!36199 ((_ is ElementMatch!173) (reg!502 r!13380))) b!36320))

(assert (= (and b!36199 ((_ is Concat!292) (reg!502 r!13380))) b!36321))

(assert (= (and b!36199 ((_ is Star!173) (reg!502 r!13380))) b!36322))

(assert (= (and b!36199 ((_ is Union!173) (reg!502 r!13380))) b!36323))

(check-sat (not b!36316) (not d!3891) (not mapNonEmpty!367) (not bm!2694) (not b!36308) (not b!36272) (not b!36307) (not b!36289) (not b!36302) (not b!36288) (not b!36321) (not b!36285) (not b_next!551) (not b!36315) (not b!36270) (not b!36303) (not b!36286) (not b!36318) (not b!36290) (not b!36317) (not b!36295) (not b!36322) (not d!3881) (not bm!2682) (not b!36300) (not b!36236) (not b!36306) (not b_next!549) (not b!36225) (not bm!2681) b_and!585 (not b!36319) (not b!36323) (not b!36284) (not b!36304) (not bm!2691) tp_is_empty!371 b_and!583)
(check-sat b_and!583 b_and!585 (not b_next!549) (not b_next!551))
