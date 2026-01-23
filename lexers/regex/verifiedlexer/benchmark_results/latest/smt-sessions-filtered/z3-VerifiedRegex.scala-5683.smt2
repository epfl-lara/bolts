; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!283138 () Bool)

(assert start!283138)

(declare-fun b!2908262 () Bool)

(declare-fun res!1200934 () Bool)

(declare-fun e!1835816 () Bool)

(assert (=> b!2908262 (=> (not res!1200934) (not e!1835816))))

(declare-datatypes ((C!18024 0))(
  ( (C!18025 (val!11046 Int)) )
))
(declare-datatypes ((List!34758 0))(
  ( (Nil!34634) (Cons!34634 (h!40054 C!18024) (t!233801 List!34758)) )
))
(declare-fun prefix!1309 () List!34758)

(declare-fun isEmpty!18905 (List!34758) Bool)

(assert (=> b!2908262 (= res!1200934 (not (isEmpty!18905 prefix!1309)))))

(declare-fun b!2908263 () Bool)

(declare-fun e!1835817 () Bool)

(declare-fun tp_is_empty!15429 () Bool)

(declare-fun tp!934342 () Bool)

(assert (=> b!2908263 (= e!1835817 (and tp_is_empty!15429 tp!934342))))

(declare-fun b!2908264 () Bool)

(declare-fun e!1835815 () Bool)

(declare-fun tp!934345 () Bool)

(assert (=> b!2908264 (= e!1835815 tp!934345)))

(declare-fun b!2908265 () Bool)

(assert (=> b!2908265 (= e!1835816 (= prefix!1309 Nil!34634))))

(declare-fun b!2908266 () Bool)

(assert (=> b!2908266 (= e!1835815 tp_is_empty!15429)))

(declare-fun b!2908267 () Bool)

(declare-fun tp!934344 () Bool)

(declare-fun tp!934343 () Bool)

(assert (=> b!2908267 (= e!1835815 (and tp!934344 tp!934343))))

(declare-fun b!2908268 () Bool)

(declare-fun tp!934347 () Bool)

(declare-fun tp!934346 () Bool)

(assert (=> b!2908268 (= e!1835815 (and tp!934347 tp!934346))))

(declare-fun res!1200935 () Bool)

(assert (=> start!283138 (=> (not res!1200935) (not e!1835816))))

(declare-datatypes ((Regex!8921 0))(
  ( (ElementMatch!8921 (c!473992 C!18024)) (Concat!14242 (regOne!18354 Regex!8921) (regTwo!18354 Regex!8921)) (EmptyExpr!8921) (Star!8921 (reg!9250 Regex!8921)) (EmptyLang!8921) (Union!8921 (regOne!18355 Regex!8921) (regTwo!18355 Regex!8921)) )
))
(declare-fun r!13239 () Regex!8921)

(declare-fun validRegex!3671 (Regex!8921) Bool)

(assert (=> start!283138 (= res!1200935 (validRegex!3671 r!13239))))

(assert (=> start!283138 e!1835816))

(assert (=> start!283138 e!1835815))

(assert (=> start!283138 e!1835817))

(assert (= (and start!283138 res!1200935) b!2908262))

(assert (= (and b!2908262 res!1200934) b!2908265))

(get-info :version)

(assert (= (and start!283138 ((_ is ElementMatch!8921) r!13239)) b!2908266))

(assert (= (and start!283138 ((_ is Concat!14242) r!13239)) b!2908267))

(assert (= (and start!283138 ((_ is Star!8921) r!13239)) b!2908264))

(assert (= (and start!283138 ((_ is Union!8921) r!13239)) b!2908268))

(assert (= (and start!283138 ((_ is Cons!34634) prefix!1309)) b!2908263))

(declare-fun m!3310111 () Bool)

(assert (=> b!2908262 m!3310111))

(declare-fun m!3310113 () Bool)

(assert (=> start!283138 m!3310113))

(check-sat (not start!283138) (not b!2908262) (not b!2908267) (not b!2908263) (not b!2908264) tp_is_empty!15429 (not b!2908268))
(check-sat)
(get-model)

(declare-fun call!189780 () Bool)

(declare-fun c!474001 () Bool)

(declare-fun c!474002 () Bool)

(declare-fun bm!189774 () Bool)

(assert (=> bm!189774 (= call!189780 (validRegex!3671 (ite c!474001 (reg!9250 r!13239) (ite c!474002 (regTwo!18355 r!13239) (regOne!18354 r!13239)))))))

(declare-fun b!2908305 () Bool)

(declare-fun res!1200956 () Bool)

(declare-fun e!1835849 () Bool)

(assert (=> b!2908305 (=> res!1200956 e!1835849)))

(assert (=> b!2908305 (= res!1200956 (not ((_ is Concat!14242) r!13239)))))

(declare-fun e!1835852 () Bool)

(assert (=> b!2908305 (= e!1835852 e!1835849)))

(declare-fun b!2908306 () Bool)

(declare-fun e!1835848 () Bool)

(assert (=> b!2908306 (= e!1835848 call!189780)))

(declare-fun bm!189775 () Bool)

(declare-fun call!189781 () Bool)

(assert (=> bm!189775 (= call!189781 (validRegex!3671 (ite c!474002 (regOne!18355 r!13239) (regTwo!18354 r!13239))))))

(declare-fun b!2908307 () Bool)

(declare-fun e!1835847 () Bool)

(assert (=> b!2908307 (= e!1835847 call!189781)))

(declare-fun b!2908308 () Bool)

(declare-fun e!1835846 () Bool)

(assert (=> b!2908308 (= e!1835846 e!1835852)))

(assert (=> b!2908308 (= c!474002 ((_ is Union!8921) r!13239))))

(declare-fun b!2908309 () Bool)

(declare-fun e!1835851 () Bool)

(declare-fun call!189779 () Bool)

(assert (=> b!2908309 (= e!1835851 call!189779)))

(declare-fun bm!189776 () Bool)

(assert (=> bm!189776 (= call!189779 call!189780)))

(declare-fun b!2908310 () Bool)

(assert (=> b!2908310 (= e!1835846 e!1835848)))

(declare-fun res!1200958 () Bool)

(declare-fun nullable!2782 (Regex!8921) Bool)

(assert (=> b!2908310 (= res!1200958 (not (nullable!2782 (reg!9250 r!13239))))))

(assert (=> b!2908310 (=> (not res!1200958) (not e!1835848))))

(declare-fun d!836830 () Bool)

(declare-fun res!1200957 () Bool)

(declare-fun e!1835850 () Bool)

(assert (=> d!836830 (=> res!1200957 e!1835850)))

(assert (=> d!836830 (= res!1200957 ((_ is ElementMatch!8921) r!13239))))

(assert (=> d!836830 (= (validRegex!3671 r!13239) e!1835850)))

(declare-fun b!2908311 () Bool)

(assert (=> b!2908311 (= e!1835850 e!1835846)))

(assert (=> b!2908311 (= c!474001 ((_ is Star!8921) r!13239))))

(declare-fun b!2908312 () Bool)

(assert (=> b!2908312 (= e!1835849 e!1835847)))

(declare-fun res!1200960 () Bool)

(assert (=> b!2908312 (=> (not res!1200960) (not e!1835847))))

(assert (=> b!2908312 (= res!1200960 call!189779)))

(declare-fun b!2908313 () Bool)

(declare-fun res!1200959 () Bool)

(assert (=> b!2908313 (=> (not res!1200959) (not e!1835851))))

(assert (=> b!2908313 (= res!1200959 call!189781)))

(assert (=> b!2908313 (= e!1835852 e!1835851)))

(assert (= (and d!836830 (not res!1200957)) b!2908311))

(assert (= (and b!2908311 c!474001) b!2908310))

(assert (= (and b!2908311 (not c!474001)) b!2908308))

(assert (= (and b!2908310 res!1200958) b!2908306))

(assert (= (and b!2908308 c!474002) b!2908313))

(assert (= (and b!2908308 (not c!474002)) b!2908305))

(assert (= (and b!2908313 res!1200959) b!2908309))

(assert (= (and b!2908305 (not res!1200956)) b!2908312))

(assert (= (and b!2908312 res!1200960) b!2908307))

(assert (= (or b!2908309 b!2908312) bm!189776))

(assert (= (or b!2908313 b!2908307) bm!189775))

(assert (= (or b!2908306 bm!189776) bm!189774))

(declare-fun m!3310115 () Bool)

(assert (=> bm!189774 m!3310115))

(declare-fun m!3310117 () Bool)

(assert (=> bm!189775 m!3310117))

(declare-fun m!3310119 () Bool)

(assert (=> b!2908310 m!3310119))

(assert (=> start!283138 d!836830))

(declare-fun d!836834 () Bool)

(assert (=> d!836834 (= (isEmpty!18905 prefix!1309) ((_ is Nil!34634) prefix!1309))))

(assert (=> b!2908262 d!836834))

(declare-fun e!1835864 () Bool)

(assert (=> b!2908264 (= tp!934345 e!1835864)))

(declare-fun b!2908341 () Bool)

(declare-fun tp!934363 () Bool)

(assert (=> b!2908341 (= e!1835864 tp!934363)))

(declare-fun b!2908339 () Bool)

(assert (=> b!2908339 (= e!1835864 tp_is_empty!15429)))

(declare-fun b!2908342 () Bool)

(declare-fun tp!934366 () Bool)

(declare-fun tp!934365 () Bool)

(assert (=> b!2908342 (= e!1835864 (and tp!934366 tp!934365))))

(declare-fun b!2908340 () Bool)

(declare-fun tp!934362 () Bool)

(declare-fun tp!934364 () Bool)

(assert (=> b!2908340 (= e!1835864 (and tp!934362 tp!934364))))

(assert (= (and b!2908264 ((_ is ElementMatch!8921) (reg!9250 r!13239))) b!2908339))

(assert (= (and b!2908264 ((_ is Concat!14242) (reg!9250 r!13239))) b!2908340))

(assert (= (and b!2908264 ((_ is Star!8921) (reg!9250 r!13239))) b!2908341))

(assert (= (and b!2908264 ((_ is Union!8921) (reg!9250 r!13239))) b!2908342))

(declare-fun b!2908351 () Bool)

(declare-fun e!1835867 () Bool)

(declare-fun tp!934375 () Bool)

(assert (=> b!2908351 (= e!1835867 (and tp_is_empty!15429 tp!934375))))

(assert (=> b!2908263 (= tp!934342 e!1835867)))

(assert (= (and b!2908263 ((_ is Cons!34634) (t!233801 prefix!1309))) b!2908351))

(declare-fun e!1835868 () Bool)

(assert (=> b!2908268 (= tp!934347 e!1835868)))

(declare-fun b!2908354 () Bool)

(declare-fun tp!934377 () Bool)

(assert (=> b!2908354 (= e!1835868 tp!934377)))

(declare-fun b!2908352 () Bool)

(assert (=> b!2908352 (= e!1835868 tp_is_empty!15429)))

(declare-fun b!2908355 () Bool)

(declare-fun tp!934380 () Bool)

(declare-fun tp!934379 () Bool)

(assert (=> b!2908355 (= e!1835868 (and tp!934380 tp!934379))))

(declare-fun b!2908353 () Bool)

(declare-fun tp!934376 () Bool)

(declare-fun tp!934378 () Bool)

(assert (=> b!2908353 (= e!1835868 (and tp!934376 tp!934378))))

(assert (= (and b!2908268 ((_ is ElementMatch!8921) (regOne!18355 r!13239))) b!2908352))

(assert (= (and b!2908268 ((_ is Concat!14242) (regOne!18355 r!13239))) b!2908353))

(assert (= (and b!2908268 ((_ is Star!8921) (regOne!18355 r!13239))) b!2908354))

(assert (= (and b!2908268 ((_ is Union!8921) (regOne!18355 r!13239))) b!2908355))

(declare-fun e!1835870 () Bool)

(assert (=> b!2908268 (= tp!934346 e!1835870)))

(declare-fun b!2908362 () Bool)

(declare-fun tp!934387 () Bool)

(assert (=> b!2908362 (= e!1835870 tp!934387)))

(declare-fun b!2908360 () Bool)

(assert (=> b!2908360 (= e!1835870 tp_is_empty!15429)))

(declare-fun b!2908363 () Bool)

(declare-fun tp!934390 () Bool)

(declare-fun tp!934389 () Bool)

(assert (=> b!2908363 (= e!1835870 (and tp!934390 tp!934389))))

(declare-fun b!2908361 () Bool)

(declare-fun tp!934386 () Bool)

(declare-fun tp!934388 () Bool)

(assert (=> b!2908361 (= e!1835870 (and tp!934386 tp!934388))))

(assert (= (and b!2908268 ((_ is ElementMatch!8921) (regTwo!18355 r!13239))) b!2908360))

(assert (= (and b!2908268 ((_ is Concat!14242) (regTwo!18355 r!13239))) b!2908361))

(assert (= (and b!2908268 ((_ is Star!8921) (regTwo!18355 r!13239))) b!2908362))

(assert (= (and b!2908268 ((_ is Union!8921) (regTwo!18355 r!13239))) b!2908363))

(declare-fun e!1835871 () Bool)

(assert (=> b!2908267 (= tp!934344 e!1835871)))

(declare-fun b!2908366 () Bool)

(declare-fun tp!934392 () Bool)

(assert (=> b!2908366 (= e!1835871 tp!934392)))

(declare-fun b!2908364 () Bool)

(assert (=> b!2908364 (= e!1835871 tp_is_empty!15429)))

(declare-fun b!2908367 () Bool)

(declare-fun tp!934395 () Bool)

(declare-fun tp!934394 () Bool)

(assert (=> b!2908367 (= e!1835871 (and tp!934395 tp!934394))))

(declare-fun b!2908365 () Bool)

(declare-fun tp!934391 () Bool)

(declare-fun tp!934393 () Bool)

(assert (=> b!2908365 (= e!1835871 (and tp!934391 tp!934393))))

(assert (= (and b!2908267 ((_ is ElementMatch!8921) (regOne!18354 r!13239))) b!2908364))

(assert (= (and b!2908267 ((_ is Concat!14242) (regOne!18354 r!13239))) b!2908365))

(assert (= (and b!2908267 ((_ is Star!8921) (regOne!18354 r!13239))) b!2908366))

(assert (= (and b!2908267 ((_ is Union!8921) (regOne!18354 r!13239))) b!2908367))

(declare-fun e!1835874 () Bool)

(assert (=> b!2908267 (= tp!934343 e!1835874)))

(declare-fun b!2908374 () Bool)

(declare-fun tp!934399 () Bool)

(assert (=> b!2908374 (= e!1835874 tp!934399)))

(declare-fun b!2908372 () Bool)

(assert (=> b!2908372 (= e!1835874 tp_is_empty!15429)))

(declare-fun b!2908375 () Bool)

(declare-fun tp!934402 () Bool)

(declare-fun tp!934401 () Bool)

(assert (=> b!2908375 (= e!1835874 (and tp!934402 tp!934401))))

(declare-fun b!2908373 () Bool)

(declare-fun tp!934398 () Bool)

(declare-fun tp!934400 () Bool)

(assert (=> b!2908373 (= e!1835874 (and tp!934398 tp!934400))))

(assert (= (and b!2908267 ((_ is ElementMatch!8921) (regTwo!18354 r!13239))) b!2908372))

(assert (= (and b!2908267 ((_ is Concat!14242) (regTwo!18354 r!13239))) b!2908373))

(assert (= (and b!2908267 ((_ is Star!8921) (regTwo!18354 r!13239))) b!2908374))

(assert (= (and b!2908267 ((_ is Union!8921) (regTwo!18354 r!13239))) b!2908375))

(check-sat (not bm!189775) (not b!2908365) (not b!2908341) (not b!2908361) (not b!2908373) (not b!2908363) (not b!2908362) (not bm!189774) (not b!2908340) (not b!2908310) (not b!2908342) (not b!2908354) (not b!2908366) (not b!2908351) (not b!2908374) (not b!2908367) (not b!2908355) tp_is_empty!15429 (not b!2908353) (not b!2908375))
(check-sat)
