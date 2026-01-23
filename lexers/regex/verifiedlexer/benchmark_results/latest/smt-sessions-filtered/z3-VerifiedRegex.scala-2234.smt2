; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110302 () Bool)

(assert start!110302)

(declare-fun b!1234084 () Bool)

(declare-fun e!790381 () Bool)

(declare-fun tp!352475 () Bool)

(assert (=> b!1234084 (= e!790381 tp!352475)))

(declare-fun b!1234085 () Bool)

(declare-fun e!790382 () Bool)

(declare-datatypes ((C!7204 0))(
  ( (C!7205 (val!4132 Int)) )
))
(declare-datatypes ((Regex!3443 0))(
  ( (ElementMatch!3443 (c!206390 C!7204)) (Concat!5673 (regOne!7398 Regex!3443) (regTwo!7398 Regex!3443)) (EmptyExpr!3443) (Star!3443 (reg!3772 Regex!3443)) (EmptyLang!3443) (Union!3443 (regOne!7399 Regex!3443) (regTwo!7399 Regex!3443)) )
))
(declare-fun r!15719 () Regex!3443)

(declare-fun validRegex!1479 (Regex!3443) Bool)

(assert (=> b!1234085 (= e!790382 (not (validRegex!1479 (regTwo!7399 r!15719))))))

(declare-fun lt!420095 () Regex!3443)

(declare-fun removeUselessConcat!506 (Regex!3443) Regex!3443)

(assert (=> b!1234085 (= lt!420095 (removeUselessConcat!506 (regOne!7399 r!15719)))))

(declare-fun b!1234086 () Bool)

(declare-fun tp!352478 () Bool)

(declare-fun tp!352476 () Bool)

(assert (=> b!1234086 (= e!790381 (and tp!352478 tp!352476))))

(declare-fun b!1234087 () Bool)

(declare-fun tp!352477 () Bool)

(declare-fun tp!352479 () Bool)

(assert (=> b!1234087 (= e!790381 (and tp!352477 tp!352479))))

(declare-fun b!1234088 () Bool)

(declare-fun tp_is_empty!6407 () Bool)

(assert (=> b!1234088 (= e!790381 tp_is_empty!6407)))

(declare-fun res!552894 () Bool)

(assert (=> start!110302 (=> (not res!552894) (not e!790382))))

(assert (=> start!110302 (= res!552894 (validRegex!1479 r!15719))))

(assert (=> start!110302 e!790382))

(assert (=> start!110302 e!790381))

(declare-fun b!1234089 () Bool)

(declare-fun res!552893 () Bool)

(assert (=> b!1234089 (=> (not res!552893) (not e!790382))))

(get-info :version)

(assert (=> b!1234089 (= res!552893 (and (or (not ((_ is Concat!5673) r!15719)) (not ((_ is EmptyExpr!3443) (regOne!7398 r!15719)))) (or (not ((_ is Concat!5673) r!15719)) (not ((_ is EmptyExpr!3443) (regTwo!7398 r!15719)))) (not ((_ is Concat!5673) r!15719)) ((_ is Union!3443) r!15719)))))

(assert (= (and start!110302 res!552894) b!1234089))

(assert (= (and b!1234089 res!552893) b!1234085))

(assert (= (and start!110302 ((_ is ElementMatch!3443) r!15719)) b!1234088))

(assert (= (and start!110302 ((_ is Concat!5673) r!15719)) b!1234087))

(assert (= (and start!110302 ((_ is Star!3443) r!15719)) b!1234084))

(assert (= (and start!110302 ((_ is Union!3443) r!15719)) b!1234086))

(declare-fun m!1409101 () Bool)

(assert (=> b!1234085 m!1409101))

(declare-fun m!1409103 () Bool)

(assert (=> b!1234085 m!1409103))

(declare-fun m!1409105 () Bool)

(assert (=> start!110302 m!1409105))

(check-sat (not b!1234085) (not b!1234084) (not b!1234086) tp_is_empty!6407 (not start!110302) (not b!1234087))
(check-sat)
(get-model)

(declare-fun b!1234135 () Bool)

(declare-fun e!790421 () Bool)

(declare-fun e!790418 () Bool)

(assert (=> b!1234135 (= e!790421 e!790418)))

(declare-fun c!206402 () Bool)

(assert (=> b!1234135 (= c!206402 ((_ is Star!3443) r!15719))))

(declare-fun b!1234136 () Bool)

(declare-fun e!790422 () Bool)

(declare-fun e!790420 () Bool)

(assert (=> b!1234136 (= e!790422 e!790420)))

(declare-fun res!552924 () Bool)

(assert (=> b!1234136 (=> (not res!552924) (not e!790420))))

(declare-fun call!85599 () Bool)

(assert (=> b!1234136 (= res!552924 call!85599)))

(declare-fun d!353171 () Bool)

(declare-fun res!552921 () Bool)

(assert (=> d!353171 (=> res!552921 e!790421)))

(assert (=> d!353171 (= res!552921 ((_ is ElementMatch!3443) r!15719))))

(assert (=> d!353171 (= (validRegex!1479 r!15719) e!790421)))

(declare-fun b!1234137 () Bool)

(declare-fun e!790424 () Bool)

(declare-fun call!85597 () Bool)

(assert (=> b!1234137 (= e!790424 call!85597)))

(declare-fun b!1234138 () Bool)

(declare-fun e!790423 () Bool)

(declare-fun call!85598 () Bool)

(assert (=> b!1234138 (= e!790423 call!85598)))

(declare-fun bm!85592 () Bool)

(declare-fun c!206401 () Bool)

(assert (=> bm!85592 (= call!85599 (validRegex!1479 (ite c!206401 (regOne!7399 r!15719) (regOne!7398 r!15719))))))

(declare-fun b!1234139 () Bool)

(declare-fun e!790419 () Bool)

(assert (=> b!1234139 (= e!790418 e!790419)))

(assert (=> b!1234139 (= c!206401 ((_ is Union!3443) r!15719))))

(declare-fun b!1234140 () Bool)

(assert (=> b!1234140 (= e!790418 e!790423)))

(declare-fun res!552920 () Bool)

(declare-fun nullable!1081 (Regex!3443) Bool)

(assert (=> b!1234140 (= res!552920 (not (nullable!1081 (reg!3772 r!15719))))))

(assert (=> b!1234140 (=> (not res!552920) (not e!790423))))

(declare-fun b!1234141 () Bool)

(assert (=> b!1234141 (= e!790420 call!85597)))

(declare-fun b!1234142 () Bool)

(declare-fun res!552922 () Bool)

(assert (=> b!1234142 (=> res!552922 e!790422)))

(assert (=> b!1234142 (= res!552922 (not ((_ is Concat!5673) r!15719)))))

(assert (=> b!1234142 (= e!790419 e!790422)))

(declare-fun bm!85593 () Bool)

(assert (=> bm!85593 (= call!85598 (validRegex!1479 (ite c!206402 (reg!3772 r!15719) (ite c!206401 (regTwo!7399 r!15719) (regTwo!7398 r!15719)))))))

(declare-fun b!1234143 () Bool)

(declare-fun res!552923 () Bool)

(assert (=> b!1234143 (=> (not res!552923) (not e!790424))))

(assert (=> b!1234143 (= res!552923 call!85599)))

(assert (=> b!1234143 (= e!790419 e!790424)))

(declare-fun bm!85594 () Bool)

(assert (=> bm!85594 (= call!85597 call!85598)))

(assert (= (and d!353171 (not res!552921)) b!1234135))

(assert (= (and b!1234135 c!206402) b!1234140))

(assert (= (and b!1234135 (not c!206402)) b!1234139))

(assert (= (and b!1234140 res!552920) b!1234138))

(assert (= (and b!1234139 c!206401) b!1234143))

(assert (= (and b!1234139 (not c!206401)) b!1234142))

(assert (= (and b!1234143 res!552923) b!1234137))

(assert (= (and b!1234142 (not res!552922)) b!1234136))

(assert (= (and b!1234136 res!552924) b!1234141))

(assert (= (or b!1234137 b!1234141) bm!85594))

(assert (= (or b!1234143 b!1234136) bm!85592))

(assert (= (or b!1234138 bm!85594) bm!85593))

(declare-fun m!1409113 () Bool)

(assert (=> bm!85592 m!1409113))

(declare-fun m!1409115 () Bool)

(assert (=> b!1234140 m!1409115))

(declare-fun m!1409119 () Bool)

(assert (=> bm!85593 m!1409119))

(assert (=> start!110302 d!353171))

(declare-fun b!1234153 () Bool)

(declare-fun e!790435 () Bool)

(declare-fun e!790432 () Bool)

(assert (=> b!1234153 (= e!790435 e!790432)))

(declare-fun c!206406 () Bool)

(assert (=> b!1234153 (= c!206406 ((_ is Star!3443) (regTwo!7399 r!15719)))))

(declare-fun b!1234154 () Bool)

(declare-fun e!790436 () Bool)

(declare-fun e!790434 () Bool)

(assert (=> b!1234154 (= e!790436 e!790434)))

(declare-fun res!552934 () Bool)

(assert (=> b!1234154 (=> (not res!552934) (not e!790434))))

(declare-fun call!85605 () Bool)

(assert (=> b!1234154 (= res!552934 call!85605)))

(declare-fun d!353175 () Bool)

(declare-fun res!552931 () Bool)

(assert (=> d!353175 (=> res!552931 e!790435)))

(assert (=> d!353175 (= res!552931 ((_ is ElementMatch!3443) (regTwo!7399 r!15719)))))

(assert (=> d!353175 (= (validRegex!1479 (regTwo!7399 r!15719)) e!790435)))

(declare-fun b!1234155 () Bool)

(declare-fun e!790438 () Bool)

(declare-fun call!85603 () Bool)

(assert (=> b!1234155 (= e!790438 call!85603)))

(declare-fun b!1234156 () Bool)

(declare-fun e!790437 () Bool)

(declare-fun call!85604 () Bool)

(assert (=> b!1234156 (= e!790437 call!85604)))

(declare-fun bm!85598 () Bool)

(declare-fun c!206405 () Bool)

(assert (=> bm!85598 (= call!85605 (validRegex!1479 (ite c!206405 (regOne!7399 (regTwo!7399 r!15719)) (regOne!7398 (regTwo!7399 r!15719)))))))

(declare-fun b!1234157 () Bool)

(declare-fun e!790433 () Bool)

(assert (=> b!1234157 (= e!790432 e!790433)))

(assert (=> b!1234157 (= c!206405 ((_ is Union!3443) (regTwo!7399 r!15719)))))

(declare-fun b!1234158 () Bool)

(assert (=> b!1234158 (= e!790432 e!790437)))

(declare-fun res!552930 () Bool)

(assert (=> b!1234158 (= res!552930 (not (nullable!1081 (reg!3772 (regTwo!7399 r!15719)))))))

(assert (=> b!1234158 (=> (not res!552930) (not e!790437))))

(declare-fun b!1234159 () Bool)

(assert (=> b!1234159 (= e!790434 call!85603)))

(declare-fun b!1234160 () Bool)

(declare-fun res!552932 () Bool)

(assert (=> b!1234160 (=> res!552932 e!790436)))

(assert (=> b!1234160 (= res!552932 (not ((_ is Concat!5673) (regTwo!7399 r!15719))))))

(assert (=> b!1234160 (= e!790433 e!790436)))

(declare-fun bm!85599 () Bool)

(assert (=> bm!85599 (= call!85604 (validRegex!1479 (ite c!206406 (reg!3772 (regTwo!7399 r!15719)) (ite c!206405 (regTwo!7399 (regTwo!7399 r!15719)) (regTwo!7398 (regTwo!7399 r!15719))))))))

(declare-fun b!1234161 () Bool)

(declare-fun res!552933 () Bool)

(assert (=> b!1234161 (=> (not res!552933) (not e!790438))))

(assert (=> b!1234161 (= res!552933 call!85605)))

(assert (=> b!1234161 (= e!790433 e!790438)))

(declare-fun bm!85600 () Bool)

(assert (=> bm!85600 (= call!85603 call!85604)))

(assert (= (and d!353175 (not res!552931)) b!1234153))

(assert (= (and b!1234153 c!206406) b!1234158))

(assert (= (and b!1234153 (not c!206406)) b!1234157))

(assert (= (and b!1234158 res!552930) b!1234156))

(assert (= (and b!1234157 c!206405) b!1234161))

(assert (= (and b!1234157 (not c!206405)) b!1234160))

(assert (= (and b!1234161 res!552933) b!1234155))

(assert (= (and b!1234160 (not res!552932)) b!1234154))

(assert (= (and b!1234154 res!552934) b!1234159))

(assert (= (or b!1234155 b!1234159) bm!85600))

(assert (= (or b!1234161 b!1234154) bm!85598))

(assert (= (or b!1234156 bm!85600) bm!85599))

(declare-fun m!1409125 () Bool)

(assert (=> bm!85598 m!1409125))

(declare-fun m!1409127 () Bool)

(assert (=> b!1234158 m!1409127))

(declare-fun m!1409129 () Bool)

(assert (=> bm!85599 m!1409129))

(assert (=> b!1234085 d!353175))

(declare-fun bm!85626 () Bool)

(declare-fun call!85633 () Regex!3443)

(declare-fun call!85632 () Regex!3443)

(assert (=> bm!85626 (= call!85633 call!85632)))

(declare-fun b!1234217 () Bool)

(declare-fun c!206434 () Bool)

(assert (=> b!1234217 (= c!206434 ((_ is Star!3443) (regOne!7399 r!15719)))))

(declare-fun e!790474 () Regex!3443)

(declare-fun e!790473 () Regex!3443)

(assert (=> b!1234217 (= e!790474 e!790473)))

(declare-fun c!206432 () Bool)

(declare-fun call!85631 () Regex!3443)

(declare-fun c!206436 () Bool)

(declare-fun bm!85627 () Bool)

(assert (=> bm!85627 (= call!85631 (removeUselessConcat!506 (ite c!206432 (regOne!7398 (regOne!7399 r!15719)) (ite c!206436 (regOne!7399 (regOne!7399 r!15719)) (reg!3772 (regOne!7399 r!15719))))))))

(declare-fun b!1234218 () Bool)

(declare-fun e!790472 () Regex!3443)

(declare-fun call!85634 () Regex!3443)

(assert (=> b!1234218 (= e!790472 call!85634)))

(declare-fun b!1234219 () Bool)

(declare-fun call!85635 () Regex!3443)

(assert (=> b!1234219 (= e!790474 (Union!3443 call!85635 call!85633))))

(declare-fun b!1234220 () Bool)

(declare-fun e!790470 () Regex!3443)

(assert (=> b!1234220 (= e!790470 e!790474)))

(assert (=> b!1234220 (= c!206436 ((_ is Union!3443) (regOne!7399 r!15719)))))

(declare-fun bm!85628 () Bool)

(assert (=> bm!85628 (= call!85632 call!85634)))

(declare-fun b!1234221 () Bool)

(declare-fun e!790469 () Regex!3443)

(assert (=> b!1234221 (= e!790469 call!85632)))

(declare-fun c!206435 () Bool)

(declare-fun c!206433 () Bool)

(declare-fun bm!85629 () Bool)

(assert (=> bm!85629 (= call!85634 (removeUselessConcat!506 (ite c!206433 (regTwo!7398 (regOne!7399 r!15719)) (ite c!206435 (regOne!7398 (regOne!7399 r!15719)) (ite c!206432 (regTwo!7398 (regOne!7399 r!15719)) (regTwo!7399 (regOne!7399 r!15719)))))))))

(declare-fun b!1234222 () Bool)

(assert (=> b!1234222 (= e!790473 (Star!3443 call!85635))))

(declare-fun b!1234223 () Bool)

(assert (=> b!1234223 (= e!790472 e!790469)))

(assert (=> b!1234223 (= c!206435 (and ((_ is Concat!5673) (regOne!7399 r!15719)) ((_ is EmptyExpr!3443) (regTwo!7398 (regOne!7399 r!15719)))))))

(declare-fun b!1234224 () Bool)

(assert (=> b!1234224 (= c!206432 ((_ is Concat!5673) (regOne!7399 r!15719)))))

(assert (=> b!1234224 (= e!790469 e!790470)))

(declare-fun bm!85630 () Bool)

(assert (=> bm!85630 (= call!85635 call!85631)))

(declare-fun b!1234226 () Bool)

(assert (=> b!1234226 (= e!790473 (regOne!7399 r!15719))))

(declare-fun b!1234227 () Bool)

(declare-fun e!790471 () Bool)

(declare-fun lt!420101 () Regex!3443)

(assert (=> b!1234227 (= e!790471 (= (nullable!1081 lt!420101) (nullable!1081 (regOne!7399 r!15719))))))

(declare-fun d!353179 () Bool)

(assert (=> d!353179 e!790471))

(declare-fun res!552940 () Bool)

(assert (=> d!353179 (=> (not res!552940) (not e!790471))))

(assert (=> d!353179 (= res!552940 (validRegex!1479 lt!420101))))

(assert (=> d!353179 (= lt!420101 e!790472)))

(assert (=> d!353179 (= c!206433 (and ((_ is Concat!5673) (regOne!7399 r!15719)) ((_ is EmptyExpr!3443) (regOne!7398 (regOne!7399 r!15719)))))))

(assert (=> d!353179 (validRegex!1479 (regOne!7399 r!15719))))

(assert (=> d!353179 (= (removeUselessConcat!506 (regOne!7399 r!15719)) lt!420101)))

(declare-fun b!1234225 () Bool)

(assert (=> b!1234225 (= e!790470 (Concat!5673 call!85631 call!85633))))

(assert (= (and d!353179 c!206433) b!1234218))

(assert (= (and d!353179 (not c!206433)) b!1234223))

(assert (= (and b!1234223 c!206435) b!1234221))

(assert (= (and b!1234223 (not c!206435)) b!1234224))

(assert (= (and b!1234224 c!206432) b!1234225))

(assert (= (and b!1234224 (not c!206432)) b!1234220))

(assert (= (and b!1234220 c!206436) b!1234219))

(assert (= (and b!1234220 (not c!206436)) b!1234217))

(assert (= (and b!1234217 c!206434) b!1234222))

(assert (= (and b!1234217 (not c!206434)) b!1234226))

(assert (= (or b!1234219 b!1234222) bm!85630))

(assert (= (or b!1234225 bm!85630) bm!85627))

(assert (= (or b!1234225 b!1234219) bm!85626))

(assert (= (or b!1234221 bm!85626) bm!85628))

(assert (= (or b!1234218 bm!85628) bm!85629))

(assert (= (and d!353179 res!552940) b!1234227))

(declare-fun m!1409143 () Bool)

(assert (=> bm!85627 m!1409143))

(declare-fun m!1409145 () Bool)

(assert (=> bm!85629 m!1409145))

(declare-fun m!1409147 () Bool)

(assert (=> b!1234227 m!1409147))

(declare-fun m!1409149 () Bool)

(assert (=> b!1234227 m!1409149))

(declare-fun m!1409151 () Bool)

(assert (=> d!353179 m!1409151))

(declare-fun m!1409153 () Bool)

(assert (=> d!353179 m!1409153))

(assert (=> b!1234085 d!353179))

(declare-fun b!1234258 () Bool)

(declare-fun e!790481 () Bool)

(declare-fun tp!352511 () Bool)

(assert (=> b!1234258 (= e!790481 tp!352511)))

(declare-fun b!1234256 () Bool)

(assert (=> b!1234256 (= e!790481 tp_is_empty!6407)))

(declare-fun b!1234259 () Bool)

(declare-fun tp!352512 () Bool)

(declare-fun tp!352513 () Bool)

(assert (=> b!1234259 (= e!790481 (and tp!352512 tp!352513))))

(declare-fun b!1234257 () Bool)

(declare-fun tp!352510 () Bool)

(declare-fun tp!352514 () Bool)

(assert (=> b!1234257 (= e!790481 (and tp!352510 tp!352514))))

(assert (=> b!1234087 (= tp!352477 e!790481)))

(assert (= (and b!1234087 ((_ is ElementMatch!3443) (regOne!7398 r!15719))) b!1234256))

(assert (= (and b!1234087 ((_ is Concat!5673) (regOne!7398 r!15719))) b!1234257))

(assert (= (and b!1234087 ((_ is Star!3443) (regOne!7398 r!15719))) b!1234258))

(assert (= (and b!1234087 ((_ is Union!3443) (regOne!7398 r!15719))) b!1234259))

(declare-fun b!1234270 () Bool)

(declare-fun e!790484 () Bool)

(declare-fun tp!352526 () Bool)

(assert (=> b!1234270 (= e!790484 tp!352526)))

(declare-fun b!1234268 () Bool)

(assert (=> b!1234268 (= e!790484 tp_is_empty!6407)))

(declare-fun b!1234271 () Bool)

(declare-fun tp!352527 () Bool)

(declare-fun tp!352528 () Bool)

(assert (=> b!1234271 (= e!790484 (and tp!352527 tp!352528))))

(declare-fun b!1234269 () Bool)

(declare-fun tp!352525 () Bool)

(declare-fun tp!352529 () Bool)

(assert (=> b!1234269 (= e!790484 (and tp!352525 tp!352529))))

(assert (=> b!1234087 (= tp!352479 e!790484)))

(assert (= (and b!1234087 ((_ is ElementMatch!3443) (regTwo!7398 r!15719))) b!1234268))

(assert (= (and b!1234087 ((_ is Concat!5673) (regTwo!7398 r!15719))) b!1234269))

(assert (= (and b!1234087 ((_ is Star!3443) (regTwo!7398 r!15719))) b!1234270))

(assert (= (and b!1234087 ((_ is Union!3443) (regTwo!7398 r!15719))) b!1234271))

(declare-fun b!1234278 () Bool)

(declare-fun e!790486 () Bool)

(declare-fun tp!352536 () Bool)

(assert (=> b!1234278 (= e!790486 tp!352536)))

(declare-fun b!1234276 () Bool)

(assert (=> b!1234276 (= e!790486 tp_is_empty!6407)))

(declare-fun b!1234279 () Bool)

(declare-fun tp!352537 () Bool)

(declare-fun tp!352538 () Bool)

(assert (=> b!1234279 (= e!790486 (and tp!352537 tp!352538))))

(declare-fun b!1234277 () Bool)

(declare-fun tp!352535 () Bool)

(declare-fun tp!352539 () Bool)

(assert (=> b!1234277 (= e!790486 (and tp!352535 tp!352539))))

(assert (=> b!1234086 (= tp!352478 e!790486)))

(assert (= (and b!1234086 ((_ is ElementMatch!3443) (regOne!7399 r!15719))) b!1234276))

(assert (= (and b!1234086 ((_ is Concat!5673) (regOne!7399 r!15719))) b!1234277))

(assert (= (and b!1234086 ((_ is Star!3443) (regOne!7399 r!15719))) b!1234278))

(assert (= (and b!1234086 ((_ is Union!3443) (regOne!7399 r!15719))) b!1234279))

(declare-fun b!1234282 () Bool)

(declare-fun e!790487 () Bool)

(declare-fun tp!352541 () Bool)

(assert (=> b!1234282 (= e!790487 tp!352541)))

(declare-fun b!1234280 () Bool)

(assert (=> b!1234280 (= e!790487 tp_is_empty!6407)))

(declare-fun b!1234283 () Bool)

(declare-fun tp!352542 () Bool)

(declare-fun tp!352543 () Bool)

(assert (=> b!1234283 (= e!790487 (and tp!352542 tp!352543))))

(declare-fun b!1234281 () Bool)

(declare-fun tp!352540 () Bool)

(declare-fun tp!352544 () Bool)

(assert (=> b!1234281 (= e!790487 (and tp!352540 tp!352544))))

(assert (=> b!1234086 (= tp!352476 e!790487)))

(assert (= (and b!1234086 ((_ is ElementMatch!3443) (regTwo!7399 r!15719))) b!1234280))

(assert (= (and b!1234086 ((_ is Concat!5673) (regTwo!7399 r!15719))) b!1234281))

(assert (= (and b!1234086 ((_ is Star!3443) (regTwo!7399 r!15719))) b!1234282))

(assert (= (and b!1234086 ((_ is Union!3443) (regTwo!7399 r!15719))) b!1234283))

(declare-fun b!1234286 () Bool)

(declare-fun e!790488 () Bool)

(declare-fun tp!352546 () Bool)

(assert (=> b!1234286 (= e!790488 tp!352546)))

(declare-fun b!1234284 () Bool)

(assert (=> b!1234284 (= e!790488 tp_is_empty!6407)))

(declare-fun b!1234287 () Bool)

(declare-fun tp!352547 () Bool)

(declare-fun tp!352548 () Bool)

(assert (=> b!1234287 (= e!790488 (and tp!352547 tp!352548))))

(declare-fun b!1234285 () Bool)

(declare-fun tp!352545 () Bool)

(declare-fun tp!352549 () Bool)

(assert (=> b!1234285 (= e!790488 (and tp!352545 tp!352549))))

(assert (=> b!1234084 (= tp!352475 e!790488)))

(assert (= (and b!1234084 ((_ is ElementMatch!3443) (reg!3772 r!15719))) b!1234284))

(assert (= (and b!1234084 ((_ is Concat!5673) (reg!3772 r!15719))) b!1234285))

(assert (= (and b!1234084 ((_ is Star!3443) (reg!3772 r!15719))) b!1234286))

(assert (= (and b!1234084 ((_ is Union!3443) (reg!3772 r!15719))) b!1234287))

(check-sat (not b!1234269) tp_is_empty!6407 (not b!1234140) (not bm!85629) (not b!1234158) (not b!1234271) (not b!1234282) (not b!1234278) (not b!1234279) (not b!1234283) (not b!1234227) (not b!1234286) (not bm!85627) (not b!1234257) (not b!1234287) (not b!1234270) (not b!1234277) (not b!1234285) (not b!1234259) (not bm!85593) (not bm!85592) (not bm!85599) (not b!1234258) (not b!1234281) (not d!353179) (not bm!85598))
(check-sat)
