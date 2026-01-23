; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!752592 () Bool)

(assert start!752592)

(declare-fun res!3163175 () Bool)

(declare-fun e!4711301 () Bool)

(assert (=> start!752592 (=> (not res!3163175) (not e!4711301))))

(declare-datatypes ((C!43460 0))(
  ( (C!43461 (val!32278 Int)) )
))
(declare-datatypes ((Regex!21561 0))(
  ( (ElementMatch!21561 (c!1468254 C!43460)) (Concat!30560 (regOne!43634 Regex!21561) (regTwo!43634 Regex!21561)) (EmptyExpr!21561) (Star!21561 (reg!21890 Regex!21561)) (EmptyLang!21561) (Union!21561 (regOne!43635 Regex!21561) (regTwo!43635 Regex!21561)) )
))
(declare-fun baseR!141 () Regex!21561)

(declare-fun validRegex!11865 (Regex!21561) Bool)

(assert (=> start!752592 (= res!3163175 (validRegex!11865 baseR!141))))

(assert (=> start!752592 e!4711301))

(declare-fun e!4711297 () Bool)

(assert (=> start!752592 e!4711297))

(declare-fun e!4711300 () Bool)

(assert (=> start!752592 e!4711300))

(declare-fun e!4711299 () Bool)

(assert (=> start!752592 e!4711299))

(declare-fun tp_is_empty!53665 () Bool)

(assert (=> start!752592 tp_is_empty!53665))

(declare-fun b!7996515 () Bool)

(declare-fun tp!2390743 () Bool)

(assert (=> b!7996515 (= e!4711299 tp!2390743)))

(declare-fun b!7996516 () Bool)

(declare-fun tp!2390750 () Bool)

(assert (=> b!7996516 (= e!4711297 tp!2390750)))

(declare-fun b!7996517 () Bool)

(declare-fun tp!2390745 () Bool)

(declare-fun tp!2390752 () Bool)

(assert (=> b!7996517 (= e!4711297 (and tp!2390745 tp!2390752))))

(declare-fun b!7996518 () Bool)

(declare-fun tp!2390742 () Bool)

(assert (=> b!7996518 (= e!4711300 (and tp_is_empty!53665 tp!2390742))))

(declare-fun b!7996519 () Bool)

(declare-fun res!3163174 () Bool)

(declare-fun e!4711298 () Bool)

(assert (=> b!7996519 (=> (not res!3163174) (not e!4711298))))

(declare-fun lt!2713406 () Regex!21561)

(declare-datatypes ((List!74790 0))(
  ( (Nil!74666) (Cons!74666 (h!81114 C!43460) (t!390533 List!74790)) )
))
(declare-fun input!8036 () List!74790)

(declare-fun r!24786 () Regex!21561)

(declare-fun derivative!747 (Regex!21561 List!74790) Regex!21561)

(assert (=> b!7996519 (= res!3163174 (= (derivative!747 lt!2713406 (t!390533 input!8036)) r!24786))))

(declare-fun b!7996520 () Bool)

(assert (=> b!7996520 (= e!4711297 tp_is_empty!53665)))

(declare-fun b!7996521 () Bool)

(declare-fun res!3163173 () Bool)

(assert (=> b!7996521 (=> (not res!3163173) (not e!4711301))))

(get-info :version)

(assert (=> b!7996521 (= res!3163173 ((_ is Cons!74666) input!8036))))

(declare-fun b!7996522 () Bool)

(declare-fun tp!2390751 () Bool)

(declare-fun tp!2390748 () Bool)

(assert (=> b!7996522 (= e!4711297 (and tp!2390751 tp!2390748))))

(declare-fun b!7996523 () Bool)

(assert (=> b!7996523 (= e!4711298 (not (validRegex!11865 r!24786)))))

(declare-fun c!12996 () C!43460)

(declare-fun ++!18419 (List!74790 List!74790) List!74790)

(declare-fun derivativeStep!6579 (Regex!21561 C!43460) Regex!21561)

(assert (=> b!7996523 (= (derivative!747 lt!2713406 (++!18419 (t!390533 input!8036) (Cons!74666 c!12996 Nil!74666))) (derivativeStep!6579 r!24786 c!12996))))

(declare-datatypes ((Unit!170576 0))(
  ( (Unit!170577) )
))
(declare-fun lt!2713407 () Unit!170576)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!251 (Regex!21561 Regex!21561 List!74790 C!43460) Unit!170576)

(assert (=> b!7996523 (= lt!2713407 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!251 lt!2713406 r!24786 (t!390533 input!8036) c!12996))))

(declare-fun b!7996524 () Bool)

(declare-fun tp!2390749 () Bool)

(declare-fun tp!2390744 () Bool)

(assert (=> b!7996524 (= e!4711299 (and tp!2390749 tp!2390744))))

(declare-fun b!7996525 () Bool)

(declare-fun res!3163176 () Bool)

(assert (=> b!7996525 (=> (not res!3163176) (not e!4711301))))

(assert (=> b!7996525 (= res!3163176 (= (derivative!747 baseR!141 input!8036) r!24786))))

(declare-fun b!7996526 () Bool)

(assert (=> b!7996526 (= e!4711299 tp_is_empty!53665)))

(declare-fun b!7996527 () Bool)

(assert (=> b!7996527 (= e!4711301 e!4711298)))

(declare-fun res!3163172 () Bool)

(assert (=> b!7996527 (=> (not res!3163172) (not e!4711298))))

(assert (=> b!7996527 (= res!3163172 (validRegex!11865 lt!2713406))))

(assert (=> b!7996527 (= lt!2713406 (derivativeStep!6579 baseR!141 (h!81114 input!8036)))))

(declare-fun b!7996528 () Bool)

(declare-fun tp!2390746 () Bool)

(declare-fun tp!2390747 () Bool)

(assert (=> b!7996528 (= e!4711299 (and tp!2390746 tp!2390747))))

(assert (= (and start!752592 res!3163175) b!7996525))

(assert (= (and b!7996525 res!3163176) b!7996521))

(assert (= (and b!7996521 res!3163173) b!7996527))

(assert (= (and b!7996527 res!3163172) b!7996519))

(assert (= (and b!7996519 res!3163174) b!7996523))

(assert (= (and start!752592 ((_ is ElementMatch!21561) baseR!141)) b!7996520))

(assert (= (and start!752592 ((_ is Concat!30560) baseR!141)) b!7996522))

(assert (= (and start!752592 ((_ is Star!21561) baseR!141)) b!7996516))

(assert (= (and start!752592 ((_ is Union!21561) baseR!141)) b!7996517))

(assert (= (and start!752592 ((_ is Cons!74666) input!8036)) b!7996518))

(assert (= (and start!752592 ((_ is ElementMatch!21561) r!24786)) b!7996526))

(assert (= (and start!752592 ((_ is Concat!30560) r!24786)) b!7996528))

(assert (= (and start!752592 ((_ is Star!21561) r!24786)) b!7996515))

(assert (= (and start!752592 ((_ is Union!21561) r!24786)) b!7996524))

(declare-fun m!8367110 () Bool)

(assert (=> b!7996519 m!8367110))

(declare-fun m!8367112 () Bool)

(assert (=> b!7996525 m!8367112))

(declare-fun m!8367114 () Bool)

(assert (=> b!7996523 m!8367114))

(declare-fun m!8367116 () Bool)

(assert (=> b!7996523 m!8367116))

(declare-fun m!8367118 () Bool)

(assert (=> b!7996523 m!8367118))

(assert (=> b!7996523 m!8367114))

(declare-fun m!8367120 () Bool)

(assert (=> b!7996523 m!8367120))

(declare-fun m!8367122 () Bool)

(assert (=> b!7996523 m!8367122))

(declare-fun m!8367124 () Bool)

(assert (=> b!7996527 m!8367124))

(declare-fun m!8367126 () Bool)

(assert (=> b!7996527 m!8367126))

(declare-fun m!8367128 () Bool)

(assert (=> start!752592 m!8367128))

(check-sat (not b!7996515) (not b!7996523) (not b!7996524) (not start!752592) (not b!7996528) (not b!7996527) (not b!7996519) (not b!7996525) (not b!7996522) (not b!7996517) (not b!7996516) tp_is_empty!53665 (not b!7996518))
(check-sat)
(get-model)

(declare-fun c!1468262 () Bool)

(declare-fun c!1468263 () Bool)

(declare-fun bm!742736 () Bool)

(declare-fun call!742743 () Bool)

(assert (=> bm!742736 (= call!742743 (validRegex!11865 (ite c!1468263 (reg!21890 lt!2713406) (ite c!1468262 (regTwo!43635 lt!2713406) (regOne!43634 lt!2713406)))))))

(declare-fun b!7996553 () Bool)

(declare-fun e!4711319 () Bool)

(declare-fun call!742741 () Bool)

(assert (=> b!7996553 (= e!4711319 call!742741)))

(declare-fun bm!742737 () Bool)

(assert (=> bm!742737 (= call!742741 (validRegex!11865 (ite c!1468262 (regOne!43635 lt!2713406) (regTwo!43634 lt!2713406))))))

(declare-fun b!7996554 () Bool)

(declare-fun e!4711323 () Bool)

(assert (=> b!7996554 (= e!4711323 call!742743)))

(declare-fun b!7996555 () Bool)

(declare-fun e!4711321 () Bool)

(declare-fun call!742742 () Bool)

(assert (=> b!7996555 (= e!4711321 call!742742)))

(declare-fun b!7996556 () Bool)

(declare-fun e!4711324 () Bool)

(assert (=> b!7996556 (= e!4711324 e!4711323)))

(declare-fun res!3163191 () Bool)

(declare-fun nullable!9647 (Regex!21561) Bool)

(assert (=> b!7996556 (= res!3163191 (not (nullable!9647 (reg!21890 lt!2713406))))))

(assert (=> b!7996556 (=> (not res!3163191) (not e!4711323))))

(declare-fun b!7996557 () Bool)

(declare-fun res!3163189 () Bool)

(assert (=> b!7996557 (=> (not res!3163189) (not e!4711321))))

(assert (=> b!7996557 (= res!3163189 call!742741)))

(declare-fun e!4711322 () Bool)

(assert (=> b!7996557 (= e!4711322 e!4711321)))

(declare-fun b!7996558 () Bool)

(declare-fun e!4711320 () Bool)

(assert (=> b!7996558 (= e!4711320 e!4711324)))

(assert (=> b!7996558 (= c!1468263 ((_ is Star!21561) lt!2713406))))

(declare-fun d!2386317 () Bool)

(declare-fun res!3163190 () Bool)

(assert (=> d!2386317 (=> res!3163190 e!4711320)))

(assert (=> d!2386317 (= res!3163190 ((_ is ElementMatch!21561) lt!2713406))))

(assert (=> d!2386317 (= (validRegex!11865 lt!2713406) e!4711320)))

(declare-fun b!7996559 () Bool)

(declare-fun res!3163188 () Bool)

(declare-fun e!4711325 () Bool)

(assert (=> b!7996559 (=> res!3163188 e!4711325)))

(assert (=> b!7996559 (= res!3163188 (not ((_ is Concat!30560) lt!2713406)))))

(assert (=> b!7996559 (= e!4711322 e!4711325)))

(declare-fun b!7996560 () Bool)

(assert (=> b!7996560 (= e!4711324 e!4711322)))

(assert (=> b!7996560 (= c!1468262 ((_ is Union!21561) lt!2713406))))

(declare-fun bm!742738 () Bool)

(assert (=> bm!742738 (= call!742742 call!742743)))

(declare-fun b!7996561 () Bool)

(assert (=> b!7996561 (= e!4711325 e!4711319)))

(declare-fun res!3163187 () Bool)

(assert (=> b!7996561 (=> (not res!3163187) (not e!4711319))))

(assert (=> b!7996561 (= res!3163187 call!742742)))

(assert (= (and d!2386317 (not res!3163190)) b!7996558))

(assert (= (and b!7996558 c!1468263) b!7996556))

(assert (= (and b!7996558 (not c!1468263)) b!7996560))

(assert (= (and b!7996556 res!3163191) b!7996554))

(assert (= (and b!7996560 c!1468262) b!7996557))

(assert (= (and b!7996560 (not c!1468262)) b!7996559))

(assert (= (and b!7996557 res!3163189) b!7996555))

(assert (= (and b!7996559 (not res!3163188)) b!7996561))

(assert (= (and b!7996561 res!3163187) b!7996553))

(assert (= (or b!7996557 b!7996553) bm!742737))

(assert (= (or b!7996555 b!7996561) bm!742738))

(assert (= (or b!7996554 bm!742738) bm!742736))

(declare-fun m!8367136 () Bool)

(assert (=> bm!742736 m!8367136))

(declare-fun m!8367138 () Bool)

(assert (=> bm!742737 m!8367138))

(declare-fun m!8367140 () Bool)

(assert (=> b!7996556 m!8367140))

(assert (=> b!7996527 d!2386317))

(declare-fun d!2386323 () Bool)

(declare-fun lt!2713415 () Regex!21561)

(assert (=> d!2386323 (validRegex!11865 lt!2713415)))

(declare-fun e!4711369 () Regex!21561)

(assert (=> d!2386323 (= lt!2713415 e!4711369)))

(declare-fun c!1468290 () Bool)

(assert (=> d!2386323 (= c!1468290 (or ((_ is EmptyExpr!21561) baseR!141) ((_ is EmptyLang!21561) baseR!141)))))

(assert (=> d!2386323 (validRegex!11865 baseR!141)))

(assert (=> d!2386323 (= (derivativeStep!6579 baseR!141 (h!81114 input!8036)) lt!2713415)))

(declare-fun b!7996629 () Bool)

(declare-fun e!4711367 () Regex!21561)

(declare-fun call!742766 () Regex!21561)

(declare-fun call!742765 () Regex!21561)

(assert (=> b!7996629 (= e!4711367 (Union!21561 call!742766 call!742765))))

(declare-fun b!7996630 () Bool)

(declare-fun c!1468292 () Bool)

(assert (=> b!7996630 (= c!1468292 (nullable!9647 (regOne!43634 baseR!141)))))

(declare-fun e!4711368 () Regex!21561)

(declare-fun e!4711371 () Regex!21561)

(assert (=> b!7996630 (= e!4711368 e!4711371)))

(declare-fun b!7996631 () Bool)

(assert (=> b!7996631 (= e!4711369 EmptyLang!21561)))

(declare-fun b!7996632 () Bool)

(declare-fun call!742768 () Regex!21561)

(assert (=> b!7996632 (= e!4711368 (Concat!30560 call!742768 baseR!141))))

(declare-fun call!742767 () Regex!21561)

(declare-fun b!7996633 () Bool)

(assert (=> b!7996633 (= e!4711371 (Union!21561 (Concat!30560 call!742767 (regTwo!43634 baseR!141)) call!742766))))

(declare-fun c!1468293 () Bool)

(declare-fun bm!742760 () Bool)

(assert (=> bm!742760 (= call!742766 (derivativeStep!6579 (ite c!1468293 (regOne!43635 baseR!141) (regTwo!43634 baseR!141)) (h!81114 input!8036)))))

(declare-fun b!7996634 () Bool)

(assert (=> b!7996634 (= e!4711367 e!4711368)))

(declare-fun c!1468294 () Bool)

(assert (=> b!7996634 (= c!1468294 ((_ is Star!21561) baseR!141))))

(declare-fun bm!742761 () Bool)

(assert (=> bm!742761 (= call!742765 (derivativeStep!6579 (ite c!1468293 (regTwo!43635 baseR!141) (ite c!1468294 (reg!21890 baseR!141) (regOne!43634 baseR!141))) (h!81114 input!8036)))))

(declare-fun b!7996635 () Bool)

(declare-fun e!4711370 () Regex!21561)

(assert (=> b!7996635 (= e!4711370 (ite (= (h!81114 input!8036) (c!1468254 baseR!141)) EmptyExpr!21561 EmptyLang!21561))))

(declare-fun bm!742762 () Bool)

(assert (=> bm!742762 (= call!742767 call!742768)))

(declare-fun b!7996636 () Bool)

(assert (=> b!7996636 (= c!1468293 ((_ is Union!21561) baseR!141))))

(assert (=> b!7996636 (= e!4711370 e!4711367)))

(declare-fun bm!742763 () Bool)

(assert (=> bm!742763 (= call!742768 call!742765)))

(declare-fun b!7996637 () Bool)

(assert (=> b!7996637 (= e!4711371 (Union!21561 (Concat!30560 call!742767 (regTwo!43634 baseR!141)) EmptyLang!21561))))

(declare-fun b!7996638 () Bool)

(assert (=> b!7996638 (= e!4711369 e!4711370)))

(declare-fun c!1468291 () Bool)

(assert (=> b!7996638 (= c!1468291 ((_ is ElementMatch!21561) baseR!141))))

(assert (= (and d!2386323 c!1468290) b!7996631))

(assert (= (and d!2386323 (not c!1468290)) b!7996638))

(assert (= (and b!7996638 c!1468291) b!7996635))

(assert (= (and b!7996638 (not c!1468291)) b!7996636))

(assert (= (and b!7996636 c!1468293) b!7996629))

(assert (= (and b!7996636 (not c!1468293)) b!7996634))

(assert (= (and b!7996634 c!1468294) b!7996632))

(assert (= (and b!7996634 (not c!1468294)) b!7996630))

(assert (= (and b!7996630 c!1468292) b!7996633))

(assert (= (and b!7996630 (not c!1468292)) b!7996637))

(assert (= (or b!7996633 b!7996637) bm!742762))

(assert (= (or b!7996632 bm!742762) bm!742763))

(assert (= (or b!7996629 bm!742763) bm!742761))

(assert (= (or b!7996629 b!7996633) bm!742760))

(declare-fun m!8367148 () Bool)

(assert (=> d!2386323 m!8367148))

(assert (=> d!2386323 m!8367128))

(declare-fun m!8367150 () Bool)

(assert (=> b!7996630 m!8367150))

(declare-fun m!8367152 () Bool)

(assert (=> bm!742760 m!8367152))

(declare-fun m!8367154 () Bool)

(assert (=> bm!742761 m!8367154))

(assert (=> b!7996527 d!2386323))

(declare-fun d!2386327 () Bool)

(declare-fun lt!2713418 () Regex!21561)

(assert (=> d!2386327 (validRegex!11865 lt!2713418)))

(declare-fun e!4711374 () Regex!21561)

(assert (=> d!2386327 (= lt!2713418 e!4711374)))

(declare-fun c!1468297 () Bool)

(assert (=> d!2386327 (= c!1468297 ((_ is Cons!74666) input!8036))))

(assert (=> d!2386327 (validRegex!11865 baseR!141)))

(assert (=> d!2386327 (= (derivative!747 baseR!141 input!8036) lt!2713418)))

(declare-fun b!7996643 () Bool)

(assert (=> b!7996643 (= e!4711374 (derivative!747 (derivativeStep!6579 baseR!141 (h!81114 input!8036)) (t!390533 input!8036)))))

(declare-fun b!7996644 () Bool)

(assert (=> b!7996644 (= e!4711374 baseR!141)))

(assert (= (and d!2386327 c!1468297) b!7996643))

(assert (= (and d!2386327 (not c!1468297)) b!7996644))

(declare-fun m!8367156 () Bool)

(assert (=> d!2386327 m!8367156))

(assert (=> d!2386327 m!8367128))

(assert (=> b!7996643 m!8367126))

(assert (=> b!7996643 m!8367126))

(declare-fun m!8367158 () Bool)

(assert (=> b!7996643 m!8367158))

(assert (=> b!7996525 d!2386327))

(declare-fun d!2386329 () Bool)

(declare-fun lt!2713420 () Regex!21561)

(assert (=> d!2386329 (validRegex!11865 lt!2713420)))

(declare-fun e!4711380 () Regex!21561)

(assert (=> d!2386329 (= lt!2713420 e!4711380)))

(declare-fun c!1468303 () Bool)

(assert (=> d!2386329 (= c!1468303 ((_ is Cons!74666) (t!390533 input!8036)))))

(assert (=> d!2386329 (validRegex!11865 lt!2713406)))

(assert (=> d!2386329 (= (derivative!747 lt!2713406 (t!390533 input!8036)) lt!2713420)))

(declare-fun b!7996648 () Bool)

(assert (=> b!7996648 (= e!4711380 (derivative!747 (derivativeStep!6579 lt!2713406 (h!81114 (t!390533 input!8036))) (t!390533 (t!390533 input!8036))))))

(declare-fun b!7996650 () Bool)

(assert (=> b!7996650 (= e!4711380 lt!2713406)))

(assert (= (and d!2386329 c!1468303) b!7996648))

(assert (= (and d!2386329 (not c!1468303)) b!7996650))

(declare-fun m!8367160 () Bool)

(assert (=> d!2386329 m!8367160))

(assert (=> d!2386329 m!8367124))

(declare-fun m!8367162 () Bool)

(assert (=> b!7996648 m!8367162))

(assert (=> b!7996648 m!8367162))

(declare-fun m!8367164 () Bool)

(assert (=> b!7996648 m!8367164))

(assert (=> b!7996519 d!2386329))

(declare-fun c!1468305 () Bool)

(declare-fun bm!742772 () Bool)

(declare-fun c!1468304 () Bool)

(declare-fun call!742779 () Bool)

(assert (=> bm!742772 (= call!742779 (validRegex!11865 (ite c!1468305 (reg!21890 baseR!141) (ite c!1468304 (regTwo!43635 baseR!141) (regOne!43634 baseR!141)))))))

(declare-fun b!7996657 () Bool)

(declare-fun e!4711381 () Bool)

(declare-fun call!742777 () Bool)

(assert (=> b!7996657 (= e!4711381 call!742777)))

(declare-fun bm!742773 () Bool)

(assert (=> bm!742773 (= call!742777 (validRegex!11865 (ite c!1468304 (regOne!43635 baseR!141) (regTwo!43634 baseR!141))))))

(declare-fun b!7996658 () Bool)

(declare-fun e!4711385 () Bool)

(assert (=> b!7996658 (= e!4711385 call!742779)))

(declare-fun b!7996659 () Bool)

(declare-fun e!4711383 () Bool)

(declare-fun call!742778 () Bool)

(assert (=> b!7996659 (= e!4711383 call!742778)))

(declare-fun b!7996660 () Bool)

(declare-fun e!4711386 () Bool)

(assert (=> b!7996660 (= e!4711386 e!4711385)))

(declare-fun res!3163211 () Bool)

(assert (=> b!7996660 (= res!3163211 (not (nullable!9647 (reg!21890 baseR!141))))))

(assert (=> b!7996660 (=> (not res!3163211) (not e!4711385))))

(declare-fun b!7996661 () Bool)

(declare-fun res!3163209 () Bool)

(assert (=> b!7996661 (=> (not res!3163209) (not e!4711383))))

(assert (=> b!7996661 (= res!3163209 call!742777)))

(declare-fun e!4711384 () Bool)

(assert (=> b!7996661 (= e!4711384 e!4711383)))

(declare-fun b!7996662 () Bool)

(declare-fun e!4711382 () Bool)

(assert (=> b!7996662 (= e!4711382 e!4711386)))

(assert (=> b!7996662 (= c!1468305 ((_ is Star!21561) baseR!141))))

(declare-fun d!2386331 () Bool)

(declare-fun res!3163210 () Bool)

(assert (=> d!2386331 (=> res!3163210 e!4711382)))

(assert (=> d!2386331 (= res!3163210 ((_ is ElementMatch!21561) baseR!141))))

(assert (=> d!2386331 (= (validRegex!11865 baseR!141) e!4711382)))

(declare-fun b!7996663 () Bool)

(declare-fun res!3163208 () Bool)

(declare-fun e!4711387 () Bool)

(assert (=> b!7996663 (=> res!3163208 e!4711387)))

(assert (=> b!7996663 (= res!3163208 (not ((_ is Concat!30560) baseR!141)))))

(assert (=> b!7996663 (= e!4711384 e!4711387)))

(declare-fun b!7996664 () Bool)

(assert (=> b!7996664 (= e!4711386 e!4711384)))

(assert (=> b!7996664 (= c!1468304 ((_ is Union!21561) baseR!141))))

(declare-fun bm!742774 () Bool)

(assert (=> bm!742774 (= call!742778 call!742779)))

(declare-fun b!7996665 () Bool)

(assert (=> b!7996665 (= e!4711387 e!4711381)))

(declare-fun res!3163207 () Bool)

(assert (=> b!7996665 (=> (not res!3163207) (not e!4711381))))

(assert (=> b!7996665 (= res!3163207 call!742778)))

(assert (= (and d!2386331 (not res!3163210)) b!7996662))

(assert (= (and b!7996662 c!1468305) b!7996660))

(assert (= (and b!7996662 (not c!1468305)) b!7996664))

(assert (= (and b!7996660 res!3163211) b!7996658))

(assert (= (and b!7996664 c!1468304) b!7996661))

(assert (= (and b!7996664 (not c!1468304)) b!7996663))

(assert (= (and b!7996661 res!3163209) b!7996659))

(assert (= (and b!7996663 (not res!3163208)) b!7996665))

(assert (= (and b!7996665 res!3163207) b!7996657))

(assert (= (or b!7996661 b!7996657) bm!742773))

(assert (= (or b!7996659 b!7996665) bm!742774))

(assert (= (or b!7996658 bm!742774) bm!742772))

(declare-fun m!8367174 () Bool)

(assert (=> bm!742772 m!8367174))

(declare-fun m!8367176 () Bool)

(assert (=> bm!742773 m!8367176))

(declare-fun m!8367178 () Bool)

(assert (=> b!7996660 m!8367178))

(assert (=> start!752592 d!2386331))

(declare-fun b!7996695 () Bool)

(declare-fun res!3163226 () Bool)

(declare-fun e!4711405 () Bool)

(assert (=> b!7996695 (=> (not res!3163226) (not e!4711405))))

(declare-fun lt!2713426 () List!74790)

(declare-fun size!43490 (List!74790) Int)

(assert (=> b!7996695 (= res!3163226 (= (size!43490 lt!2713426) (+ (size!43490 (t!390533 input!8036)) (size!43490 (Cons!74666 c!12996 Nil!74666)))))))

(declare-fun d!2386335 () Bool)

(assert (=> d!2386335 e!4711405))

(declare-fun res!3163225 () Bool)

(assert (=> d!2386335 (=> (not res!3163225) (not e!4711405))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15874 (List!74790) (InoxSet C!43460))

(assert (=> d!2386335 (= res!3163225 (= (content!15874 lt!2713426) ((_ map or) (content!15874 (t!390533 input!8036)) (content!15874 (Cons!74666 c!12996 Nil!74666)))))))

(declare-fun e!4711404 () List!74790)

(assert (=> d!2386335 (= lt!2713426 e!4711404)))

(declare-fun c!1468313 () Bool)

(assert (=> d!2386335 (= c!1468313 ((_ is Nil!74666) (t!390533 input!8036)))))

(assert (=> d!2386335 (= (++!18419 (t!390533 input!8036) (Cons!74666 c!12996 Nil!74666)) lt!2713426)))

(declare-fun b!7996694 () Bool)

(assert (=> b!7996694 (= e!4711404 (Cons!74666 (h!81114 (t!390533 input!8036)) (++!18419 (t!390533 (t!390533 input!8036)) (Cons!74666 c!12996 Nil!74666))))))

(declare-fun b!7996696 () Bool)

(assert (=> b!7996696 (= e!4711405 (or (not (= (Cons!74666 c!12996 Nil!74666) Nil!74666)) (= lt!2713426 (t!390533 input!8036))))))

(declare-fun b!7996693 () Bool)

(assert (=> b!7996693 (= e!4711404 (Cons!74666 c!12996 Nil!74666))))

(assert (= (and d!2386335 c!1468313) b!7996693))

(assert (= (and d!2386335 (not c!1468313)) b!7996694))

(assert (= (and d!2386335 res!3163225) b!7996695))

(assert (= (and b!7996695 res!3163226) b!7996696))

(declare-fun m!8367192 () Bool)

(assert (=> b!7996695 m!8367192))

(declare-fun m!8367194 () Bool)

(assert (=> b!7996695 m!8367194))

(declare-fun m!8367196 () Bool)

(assert (=> b!7996695 m!8367196))

(declare-fun m!8367198 () Bool)

(assert (=> d!2386335 m!8367198))

(declare-fun m!8367200 () Bool)

(assert (=> d!2386335 m!8367200))

(declare-fun m!8367202 () Bool)

(assert (=> d!2386335 m!8367202))

(declare-fun m!8367204 () Bool)

(assert (=> b!7996694 m!8367204))

(assert (=> b!7996523 d!2386335))

(declare-fun d!2386341 () Bool)

(declare-fun lt!2713427 () Regex!21561)

(assert (=> d!2386341 (validRegex!11865 lt!2713427)))

(declare-fun e!4711408 () Regex!21561)

(assert (=> d!2386341 (= lt!2713427 e!4711408)))

(declare-fun c!1468314 () Bool)

(assert (=> d!2386341 (= c!1468314 (or ((_ is EmptyExpr!21561) r!24786) ((_ is EmptyLang!21561) r!24786)))))

(assert (=> d!2386341 (validRegex!11865 r!24786)))

(assert (=> d!2386341 (= (derivativeStep!6579 r!24786 c!12996) lt!2713427)))

(declare-fun b!7996697 () Bool)

(declare-fun e!4711406 () Regex!21561)

(declare-fun call!742784 () Regex!21561)

(declare-fun call!742783 () Regex!21561)

(assert (=> b!7996697 (= e!4711406 (Union!21561 call!742784 call!742783))))

(declare-fun b!7996698 () Bool)

(declare-fun c!1468316 () Bool)

(assert (=> b!7996698 (= c!1468316 (nullable!9647 (regOne!43634 r!24786)))))

(declare-fun e!4711407 () Regex!21561)

(declare-fun e!4711410 () Regex!21561)

(assert (=> b!7996698 (= e!4711407 e!4711410)))

(declare-fun b!7996699 () Bool)

(assert (=> b!7996699 (= e!4711408 EmptyLang!21561)))

(declare-fun b!7996700 () Bool)

(declare-fun call!742786 () Regex!21561)

(assert (=> b!7996700 (= e!4711407 (Concat!30560 call!742786 r!24786))))

(declare-fun b!7996701 () Bool)

(declare-fun call!742785 () Regex!21561)

(assert (=> b!7996701 (= e!4711410 (Union!21561 (Concat!30560 call!742785 (regTwo!43634 r!24786)) call!742784))))

(declare-fun bm!742778 () Bool)

(declare-fun c!1468317 () Bool)

(assert (=> bm!742778 (= call!742784 (derivativeStep!6579 (ite c!1468317 (regOne!43635 r!24786) (regTwo!43634 r!24786)) c!12996))))

(declare-fun b!7996702 () Bool)

(assert (=> b!7996702 (= e!4711406 e!4711407)))

(declare-fun c!1468318 () Bool)

(assert (=> b!7996702 (= c!1468318 ((_ is Star!21561) r!24786))))

(declare-fun bm!742779 () Bool)

(assert (=> bm!742779 (= call!742783 (derivativeStep!6579 (ite c!1468317 (regTwo!43635 r!24786) (ite c!1468318 (reg!21890 r!24786) (regOne!43634 r!24786))) c!12996))))

(declare-fun b!7996703 () Bool)

(declare-fun e!4711409 () Regex!21561)

(assert (=> b!7996703 (= e!4711409 (ite (= c!12996 (c!1468254 r!24786)) EmptyExpr!21561 EmptyLang!21561))))

(declare-fun bm!742780 () Bool)

(assert (=> bm!742780 (= call!742785 call!742786)))

(declare-fun b!7996704 () Bool)

(assert (=> b!7996704 (= c!1468317 ((_ is Union!21561) r!24786))))

(assert (=> b!7996704 (= e!4711409 e!4711406)))

(declare-fun bm!742781 () Bool)

(assert (=> bm!742781 (= call!742786 call!742783)))

(declare-fun b!7996705 () Bool)

(assert (=> b!7996705 (= e!4711410 (Union!21561 (Concat!30560 call!742785 (regTwo!43634 r!24786)) EmptyLang!21561))))

(declare-fun b!7996706 () Bool)

(assert (=> b!7996706 (= e!4711408 e!4711409)))

(declare-fun c!1468315 () Bool)

(assert (=> b!7996706 (= c!1468315 ((_ is ElementMatch!21561) r!24786))))

(assert (= (and d!2386341 c!1468314) b!7996699))

(assert (= (and d!2386341 (not c!1468314)) b!7996706))

(assert (= (and b!7996706 c!1468315) b!7996703))

(assert (= (and b!7996706 (not c!1468315)) b!7996704))

(assert (= (and b!7996704 c!1468317) b!7996697))

(assert (= (and b!7996704 (not c!1468317)) b!7996702))

(assert (= (and b!7996702 c!1468318) b!7996700))

(assert (= (and b!7996702 (not c!1468318)) b!7996698))

(assert (= (and b!7996698 c!1468316) b!7996701))

(assert (= (and b!7996698 (not c!1468316)) b!7996705))

(assert (= (or b!7996701 b!7996705) bm!742780))

(assert (= (or b!7996700 bm!742780) bm!742781))

(assert (= (or b!7996697 bm!742781) bm!742779))

(assert (= (or b!7996697 b!7996701) bm!742778))

(declare-fun m!8367206 () Bool)

(assert (=> d!2386341 m!8367206))

(assert (=> d!2386341 m!8367118))

(declare-fun m!8367208 () Bool)

(assert (=> b!7996698 m!8367208))

(declare-fun m!8367210 () Bool)

(assert (=> bm!742778 m!8367210))

(declare-fun m!8367212 () Bool)

(assert (=> bm!742779 m!8367212))

(assert (=> b!7996523 d!2386341))

(declare-fun bm!742782 () Bool)

(declare-fun c!1468321 () Bool)

(declare-fun c!1468320 () Bool)

(declare-fun call!742789 () Bool)

(assert (=> bm!742782 (= call!742789 (validRegex!11865 (ite c!1468321 (reg!21890 r!24786) (ite c!1468320 (regTwo!43635 r!24786) (regOne!43634 r!24786)))))))

(declare-fun b!7996711 () Bool)

(declare-fun e!4711413 () Bool)

(declare-fun call!742787 () Bool)

(assert (=> b!7996711 (= e!4711413 call!742787)))

(declare-fun bm!742783 () Bool)

(assert (=> bm!742783 (= call!742787 (validRegex!11865 (ite c!1468320 (regOne!43635 r!24786) (regTwo!43634 r!24786))))))

(declare-fun b!7996712 () Bool)

(declare-fun e!4711417 () Bool)

(assert (=> b!7996712 (= e!4711417 call!742789)))

(declare-fun b!7996713 () Bool)

(declare-fun e!4711415 () Bool)

(declare-fun call!742788 () Bool)

(assert (=> b!7996713 (= e!4711415 call!742788)))

(declare-fun b!7996714 () Bool)

(declare-fun e!4711418 () Bool)

(assert (=> b!7996714 (= e!4711418 e!4711417)))

(declare-fun res!3163233 () Bool)

(assert (=> b!7996714 (= res!3163233 (not (nullable!9647 (reg!21890 r!24786))))))

(assert (=> b!7996714 (=> (not res!3163233) (not e!4711417))))

(declare-fun b!7996715 () Bool)

(declare-fun res!3163231 () Bool)

(assert (=> b!7996715 (=> (not res!3163231) (not e!4711415))))

(assert (=> b!7996715 (= res!3163231 call!742787)))

(declare-fun e!4711416 () Bool)

(assert (=> b!7996715 (= e!4711416 e!4711415)))

(declare-fun b!7996716 () Bool)

(declare-fun e!4711414 () Bool)

(assert (=> b!7996716 (= e!4711414 e!4711418)))

(assert (=> b!7996716 (= c!1468321 ((_ is Star!21561) r!24786))))

(declare-fun d!2386343 () Bool)

(declare-fun res!3163232 () Bool)

(assert (=> d!2386343 (=> res!3163232 e!4711414)))

(assert (=> d!2386343 (= res!3163232 ((_ is ElementMatch!21561) r!24786))))

(assert (=> d!2386343 (= (validRegex!11865 r!24786) e!4711414)))

(declare-fun b!7996717 () Bool)

(declare-fun res!3163230 () Bool)

(declare-fun e!4711419 () Bool)

(assert (=> b!7996717 (=> res!3163230 e!4711419)))

(assert (=> b!7996717 (= res!3163230 (not ((_ is Concat!30560) r!24786)))))

(assert (=> b!7996717 (= e!4711416 e!4711419)))

(declare-fun b!7996718 () Bool)

(assert (=> b!7996718 (= e!4711418 e!4711416)))

(assert (=> b!7996718 (= c!1468320 ((_ is Union!21561) r!24786))))

(declare-fun bm!742784 () Bool)

(assert (=> bm!742784 (= call!742788 call!742789)))

(declare-fun b!7996719 () Bool)

(assert (=> b!7996719 (= e!4711419 e!4711413)))

(declare-fun res!3163229 () Bool)

(assert (=> b!7996719 (=> (not res!3163229) (not e!4711413))))

(assert (=> b!7996719 (= res!3163229 call!742788)))

(assert (= (and d!2386343 (not res!3163232)) b!7996716))

(assert (= (and b!7996716 c!1468321) b!7996714))

(assert (= (and b!7996716 (not c!1468321)) b!7996718))

(assert (= (and b!7996714 res!3163233) b!7996712))

(assert (= (and b!7996718 c!1468320) b!7996715))

(assert (= (and b!7996718 (not c!1468320)) b!7996717))

(assert (= (and b!7996715 res!3163231) b!7996713))

(assert (= (and b!7996717 (not res!3163230)) b!7996719))

(assert (= (and b!7996719 res!3163229) b!7996711))

(assert (= (or b!7996715 b!7996711) bm!742783))

(assert (= (or b!7996713 b!7996719) bm!742784))

(assert (= (or b!7996712 bm!742784) bm!742782))

(declare-fun m!8367228 () Bool)

(assert (=> bm!742782 m!8367228))

(declare-fun m!8367230 () Bool)

(assert (=> bm!742783 m!8367230))

(declare-fun m!8367232 () Bool)

(assert (=> b!7996714 m!8367232))

(assert (=> b!7996523 d!2386343))

(declare-fun d!2386347 () Bool)

(declare-fun lt!2713430 () Regex!21561)

(assert (=> d!2386347 (validRegex!11865 lt!2713430)))

(declare-fun e!4711425 () Regex!21561)

(assert (=> d!2386347 (= lt!2713430 e!4711425)))

(declare-fun c!1468327 () Bool)

(assert (=> d!2386347 (= c!1468327 ((_ is Cons!74666) (++!18419 (t!390533 input!8036) (Cons!74666 c!12996 Nil!74666))))))

(assert (=> d!2386347 (validRegex!11865 lt!2713406)))

(assert (=> d!2386347 (= (derivative!747 lt!2713406 (++!18419 (t!390533 input!8036) (Cons!74666 c!12996 Nil!74666))) lt!2713430)))

(declare-fun b!7996730 () Bool)

(assert (=> b!7996730 (= e!4711425 (derivative!747 (derivativeStep!6579 lt!2713406 (h!81114 (++!18419 (t!390533 input!8036) (Cons!74666 c!12996 Nil!74666)))) (t!390533 (++!18419 (t!390533 input!8036) (Cons!74666 c!12996 Nil!74666)))))))

(declare-fun b!7996731 () Bool)

(assert (=> b!7996731 (= e!4711425 lt!2713406)))

(assert (= (and d!2386347 c!1468327) b!7996730))

(assert (= (and d!2386347 (not c!1468327)) b!7996731))

(declare-fun m!8367234 () Bool)

(assert (=> d!2386347 m!8367234))

(assert (=> d!2386347 m!8367124))

(declare-fun m!8367236 () Bool)

(assert (=> b!7996730 m!8367236))

(assert (=> b!7996730 m!8367236))

(declare-fun m!8367238 () Bool)

(assert (=> b!7996730 m!8367238))

(assert (=> b!7996523 d!2386347))

(declare-fun d!2386349 () Bool)

(assert (=> d!2386349 (= (derivative!747 lt!2713406 (++!18419 (t!390533 input!8036) (Cons!74666 c!12996 Nil!74666))) (derivativeStep!6579 r!24786 c!12996))))

(declare-fun lt!2713435 () Unit!170576)

(declare-fun choose!60203 (Regex!21561 Regex!21561 List!74790 C!43460) Unit!170576)

(assert (=> d!2386349 (= lt!2713435 (choose!60203 lt!2713406 r!24786 (t!390533 input!8036) c!12996))))

(assert (=> d!2386349 (validRegex!11865 lt!2713406)))

(assert (=> d!2386349 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!251 lt!2713406 r!24786 (t!390533 input!8036) c!12996) lt!2713435)))

(declare-fun bs!1970517 () Bool)

(assert (= bs!1970517 d!2386349))

(assert (=> bs!1970517 m!8367114))

(assert (=> bs!1970517 m!8367116))

(assert (=> bs!1970517 m!8367122))

(declare-fun m!8367254 () Bool)

(assert (=> bs!1970517 m!8367254))

(assert (=> bs!1970517 m!8367114))

(assert (=> bs!1970517 m!8367124))

(assert (=> b!7996523 d!2386349))

(declare-fun e!4711438 () Bool)

(assert (=> b!7996517 (= tp!2390745 e!4711438)))

(declare-fun b!7996766 () Bool)

(declare-fun tp!2390777 () Bool)

(declare-fun tp!2390775 () Bool)

(assert (=> b!7996766 (= e!4711438 (and tp!2390777 tp!2390775))))

(declare-fun b!7996765 () Bool)

(declare-fun tp!2390776 () Bool)

(assert (=> b!7996765 (= e!4711438 tp!2390776)))

(declare-fun b!7996763 () Bool)

(assert (=> b!7996763 (= e!4711438 tp_is_empty!53665)))

(declare-fun b!7996764 () Bool)

(declare-fun tp!2390773 () Bool)

(declare-fun tp!2390774 () Bool)

(assert (=> b!7996764 (= e!4711438 (and tp!2390773 tp!2390774))))

(assert (= (and b!7996517 ((_ is ElementMatch!21561) (regOne!43635 baseR!141))) b!7996763))

(assert (= (and b!7996517 ((_ is Concat!30560) (regOne!43635 baseR!141))) b!7996764))

(assert (= (and b!7996517 ((_ is Star!21561) (regOne!43635 baseR!141))) b!7996765))

(assert (= (and b!7996517 ((_ is Union!21561) (regOne!43635 baseR!141))) b!7996766))

(declare-fun e!4711440 () Bool)

(assert (=> b!7996517 (= tp!2390752 e!4711440)))

(declare-fun b!7996774 () Bool)

(declare-fun tp!2390787 () Bool)

(declare-fun tp!2390785 () Bool)

(assert (=> b!7996774 (= e!4711440 (and tp!2390787 tp!2390785))))

(declare-fun b!7996773 () Bool)

(declare-fun tp!2390786 () Bool)

(assert (=> b!7996773 (= e!4711440 tp!2390786)))

(declare-fun b!7996771 () Bool)

(assert (=> b!7996771 (= e!4711440 tp_is_empty!53665)))

(declare-fun b!7996772 () Bool)

(declare-fun tp!2390783 () Bool)

(declare-fun tp!2390784 () Bool)

(assert (=> b!7996772 (= e!4711440 (and tp!2390783 tp!2390784))))

(assert (= (and b!7996517 ((_ is ElementMatch!21561) (regTwo!43635 baseR!141))) b!7996771))

(assert (= (and b!7996517 ((_ is Concat!30560) (regTwo!43635 baseR!141))) b!7996772))

(assert (= (and b!7996517 ((_ is Star!21561) (regTwo!43635 baseR!141))) b!7996773))

(assert (= (and b!7996517 ((_ is Union!21561) (regTwo!43635 baseR!141))) b!7996774))

(declare-fun e!4711442 () Bool)

(assert (=> b!7996522 (= tp!2390751 e!4711442)))

(declare-fun b!7996782 () Bool)

(declare-fun tp!2390797 () Bool)

(declare-fun tp!2390795 () Bool)

(assert (=> b!7996782 (= e!4711442 (and tp!2390797 tp!2390795))))

(declare-fun b!7996781 () Bool)

(declare-fun tp!2390796 () Bool)

(assert (=> b!7996781 (= e!4711442 tp!2390796)))

(declare-fun b!7996779 () Bool)

(assert (=> b!7996779 (= e!4711442 tp_is_empty!53665)))

(declare-fun b!7996780 () Bool)

(declare-fun tp!2390793 () Bool)

(declare-fun tp!2390794 () Bool)

(assert (=> b!7996780 (= e!4711442 (and tp!2390793 tp!2390794))))

(assert (= (and b!7996522 ((_ is ElementMatch!21561) (regOne!43634 baseR!141))) b!7996779))

(assert (= (and b!7996522 ((_ is Concat!30560) (regOne!43634 baseR!141))) b!7996780))

(assert (= (and b!7996522 ((_ is Star!21561) (regOne!43634 baseR!141))) b!7996781))

(assert (= (and b!7996522 ((_ is Union!21561) (regOne!43634 baseR!141))) b!7996782))

(declare-fun e!4711444 () Bool)

(assert (=> b!7996522 (= tp!2390748 e!4711444)))

(declare-fun b!7996790 () Bool)

(declare-fun tp!2390807 () Bool)

(declare-fun tp!2390805 () Bool)

(assert (=> b!7996790 (= e!4711444 (and tp!2390807 tp!2390805))))

(declare-fun b!7996789 () Bool)

(declare-fun tp!2390806 () Bool)

(assert (=> b!7996789 (= e!4711444 tp!2390806)))

(declare-fun b!7996787 () Bool)

(assert (=> b!7996787 (= e!4711444 tp_is_empty!53665)))

(declare-fun b!7996788 () Bool)

(declare-fun tp!2390803 () Bool)

(declare-fun tp!2390804 () Bool)

(assert (=> b!7996788 (= e!4711444 (and tp!2390803 tp!2390804))))

(assert (= (and b!7996522 ((_ is ElementMatch!21561) (regTwo!43634 baseR!141))) b!7996787))

(assert (= (and b!7996522 ((_ is Concat!30560) (regTwo!43634 baseR!141))) b!7996788))

(assert (= (and b!7996522 ((_ is Star!21561) (regTwo!43634 baseR!141))) b!7996789))

(assert (= (and b!7996522 ((_ is Union!21561) (regTwo!43634 baseR!141))) b!7996790))

(declare-fun e!4711447 () Bool)

(assert (=> b!7996516 (= tp!2390750 e!4711447)))

(declare-fun b!7996798 () Bool)

(declare-fun tp!2390814 () Bool)

(declare-fun tp!2390812 () Bool)

(assert (=> b!7996798 (= e!4711447 (and tp!2390814 tp!2390812))))

(declare-fun b!7996797 () Bool)

(declare-fun tp!2390813 () Bool)

(assert (=> b!7996797 (= e!4711447 tp!2390813)))

(declare-fun b!7996795 () Bool)

(assert (=> b!7996795 (= e!4711447 tp_is_empty!53665)))

(declare-fun b!7996796 () Bool)

(declare-fun tp!2390810 () Bool)

(declare-fun tp!2390811 () Bool)

(assert (=> b!7996796 (= e!4711447 (and tp!2390810 tp!2390811))))

(assert (= (and b!7996516 ((_ is ElementMatch!21561) (reg!21890 baseR!141))) b!7996795))

(assert (= (and b!7996516 ((_ is Concat!30560) (reg!21890 baseR!141))) b!7996796))

(assert (= (and b!7996516 ((_ is Star!21561) (reg!21890 baseR!141))) b!7996797))

(assert (= (and b!7996516 ((_ is Union!21561) (reg!21890 baseR!141))) b!7996798))

(declare-fun e!4711449 () Bool)

(assert (=> b!7996515 (= tp!2390743 e!4711449)))

(declare-fun b!7996806 () Bool)

(declare-fun tp!2390824 () Bool)

(declare-fun tp!2390821 () Bool)

(assert (=> b!7996806 (= e!4711449 (and tp!2390824 tp!2390821))))

(declare-fun b!7996804 () Bool)

(declare-fun tp!2390822 () Bool)

(assert (=> b!7996804 (= e!4711449 tp!2390822)))

(declare-fun b!7996800 () Bool)

(assert (=> b!7996800 (= e!4711449 tp_is_empty!53665)))

(declare-fun b!7996802 () Bool)

(declare-fun tp!2390816 () Bool)

(declare-fun tp!2390819 () Bool)

(assert (=> b!7996802 (= e!4711449 (and tp!2390816 tp!2390819))))

(assert (= (and b!7996515 ((_ is ElementMatch!21561) (reg!21890 r!24786))) b!7996800))

(assert (= (and b!7996515 ((_ is Concat!30560) (reg!21890 r!24786))) b!7996802))

(assert (= (and b!7996515 ((_ is Star!21561) (reg!21890 r!24786))) b!7996804))

(assert (= (and b!7996515 ((_ is Union!21561) (reg!21890 r!24786))) b!7996806))

(declare-fun e!4711452 () Bool)

(assert (=> b!7996524 (= tp!2390749 e!4711452)))

(declare-fun b!7996815 () Bool)

(declare-fun tp!2390835 () Bool)

(declare-fun tp!2390833 () Bool)

(assert (=> b!7996815 (= e!4711452 (and tp!2390835 tp!2390833))))

(declare-fun b!7996814 () Bool)

(declare-fun tp!2390834 () Bool)

(assert (=> b!7996814 (= e!4711452 tp!2390834)))

(declare-fun b!7996812 () Bool)

(assert (=> b!7996812 (= e!4711452 tp_is_empty!53665)))

(declare-fun b!7996813 () Bool)

(declare-fun tp!2390831 () Bool)

(declare-fun tp!2390832 () Bool)

(assert (=> b!7996813 (= e!4711452 (and tp!2390831 tp!2390832))))

(assert (= (and b!7996524 ((_ is ElementMatch!21561) (regOne!43635 r!24786))) b!7996812))

(assert (= (and b!7996524 ((_ is Concat!30560) (regOne!43635 r!24786))) b!7996813))

(assert (= (and b!7996524 ((_ is Star!21561) (regOne!43635 r!24786))) b!7996814))

(assert (= (and b!7996524 ((_ is Union!21561) (regOne!43635 r!24786))) b!7996815))

(declare-fun e!4711454 () Bool)

(assert (=> b!7996524 (= tp!2390744 e!4711454)))

(declare-fun b!7996823 () Bool)

(declare-fun tp!2390845 () Bool)

(declare-fun tp!2390843 () Bool)

(assert (=> b!7996823 (= e!4711454 (and tp!2390845 tp!2390843))))

(declare-fun b!7996822 () Bool)

(declare-fun tp!2390844 () Bool)

(assert (=> b!7996822 (= e!4711454 tp!2390844)))

(declare-fun b!7996820 () Bool)

(assert (=> b!7996820 (= e!4711454 tp_is_empty!53665)))

(declare-fun b!7996821 () Bool)

(declare-fun tp!2390841 () Bool)

(declare-fun tp!2390842 () Bool)

(assert (=> b!7996821 (= e!4711454 (and tp!2390841 tp!2390842))))

(assert (= (and b!7996524 ((_ is ElementMatch!21561) (regTwo!43635 r!24786))) b!7996820))

(assert (= (and b!7996524 ((_ is Concat!30560) (regTwo!43635 r!24786))) b!7996821))

(assert (= (and b!7996524 ((_ is Star!21561) (regTwo!43635 r!24786))) b!7996822))

(assert (= (and b!7996524 ((_ is Union!21561) (regTwo!43635 r!24786))) b!7996823))

(declare-fun b!7996840 () Bool)

(declare-fun e!4711460 () Bool)

(declare-fun tp!2390863 () Bool)

(assert (=> b!7996840 (= e!4711460 (and tp_is_empty!53665 tp!2390863))))

(assert (=> b!7996518 (= tp!2390742 e!4711460)))

(assert (= (and b!7996518 ((_ is Cons!74666) (t!390533 input!8036))) b!7996840))

(declare-fun e!4711462 () Bool)

(assert (=> b!7996528 (= tp!2390746 e!4711462)))

(declare-fun b!7996848 () Bool)

(declare-fun tp!2390873 () Bool)

(declare-fun tp!2390871 () Bool)

(assert (=> b!7996848 (= e!4711462 (and tp!2390873 tp!2390871))))

(declare-fun b!7996847 () Bool)

(declare-fun tp!2390872 () Bool)

(assert (=> b!7996847 (= e!4711462 tp!2390872)))

(declare-fun b!7996845 () Bool)

(assert (=> b!7996845 (= e!4711462 tp_is_empty!53665)))

(declare-fun b!7996846 () Bool)

(declare-fun tp!2390869 () Bool)

(declare-fun tp!2390870 () Bool)

(assert (=> b!7996846 (= e!4711462 (and tp!2390869 tp!2390870))))

(assert (= (and b!7996528 ((_ is ElementMatch!21561) (regOne!43634 r!24786))) b!7996845))

(assert (= (and b!7996528 ((_ is Concat!30560) (regOne!43634 r!24786))) b!7996846))

(assert (= (and b!7996528 ((_ is Star!21561) (regOne!43634 r!24786))) b!7996847))

(assert (= (and b!7996528 ((_ is Union!21561) (regOne!43634 r!24786))) b!7996848))

(declare-fun e!4711463 () Bool)

(assert (=> b!7996528 (= tp!2390747 e!4711463)))

(declare-fun b!7996852 () Bool)

(declare-fun tp!2390878 () Bool)

(declare-fun tp!2390876 () Bool)

(assert (=> b!7996852 (= e!4711463 (and tp!2390878 tp!2390876))))

(declare-fun b!7996851 () Bool)

(declare-fun tp!2390877 () Bool)

(assert (=> b!7996851 (= e!4711463 tp!2390877)))

(declare-fun b!7996849 () Bool)

(assert (=> b!7996849 (= e!4711463 tp_is_empty!53665)))

(declare-fun b!7996850 () Bool)

(declare-fun tp!2390874 () Bool)

(declare-fun tp!2390875 () Bool)

(assert (=> b!7996850 (= e!4711463 (and tp!2390874 tp!2390875))))

(assert (= (and b!7996528 ((_ is ElementMatch!21561) (regTwo!43634 r!24786))) b!7996849))

(assert (= (and b!7996528 ((_ is Concat!30560) (regTwo!43634 r!24786))) b!7996850))

(assert (= (and b!7996528 ((_ is Star!21561) (regTwo!43634 r!24786))) b!7996851))

(assert (= (and b!7996528 ((_ is Union!21561) (regTwo!43634 r!24786))) b!7996852))

(check-sat (not d!2386327) (not b!7996814) (not b!7996694) (not b!7996850) (not d!2386347) (not b!7996796) (not bm!742736) (not b!7996782) (not b!7996798) (not bm!742772) (not b!7996815) (not d!2386349) (not b!7996813) (not b!7996806) (not bm!742782) (not d!2386329) (not b!7996695) (not b!7996789) (not b!7996556) (not b!7996804) (not bm!742737) (not b!7996730) (not b!7996766) (not b!7996780) (not b!7996773) (not d!2386341) (not bm!742779) (not b!7996821) (not bm!742773) (not b!7996790) (not b!7996643) (not bm!742778) tp_is_empty!53665 (not b!7996698) (not d!2386323) (not b!7996852) (not b!7996765) (not b!7996630) (not b!7996823) (not b!7996802) (not b!7996772) (not bm!742761) (not b!7996847) (not b!7996788) (not b!7996846) (not d!2386335) (not b!7996714) (not b!7996848) (not b!7996781) (not b!7996797) (not b!7996764) (not b!7996648) (not b!7996840) (not bm!742760) (not b!7996660) (not bm!742783) (not b!7996822) (not b!7996774) (not b!7996851))
(check-sat)
