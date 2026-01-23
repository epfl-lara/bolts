; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!749374 () Bool)

(assert start!749374)

(declare-fun b!7939643 () Bool)

(declare-fun e!4684819 () Bool)

(declare-datatypes ((C!43108 0))(
  ( (C!43109 (val!32098 Int)) )
))
(declare-datatypes ((List!74610 0))(
  ( (Nil!74486) (Cons!74486 (h!80934 C!43108) (t!390353 List!74610)) )
))
(declare-fun input!6707 () List!74610)

(declare-fun ++!18287 (List!74610 List!74610) List!74610)

(assert (=> b!7939643 (= e!4684819 (not (= (++!18287 Nil!74486 input!6707) input!6707)))))

(declare-fun size!43320 (List!74610) Int)

(assert (=> b!7939643 (= 0 (size!43320 Nil!74486))))

(declare-datatypes ((Unit!169589 0))(
  ( (Unit!169590) )
))
(declare-fun lt!2695792 () Unit!169589)

(declare-fun lemmaSizeTrEqualsSize!476 (List!74610 Int) Unit!169589)

(assert (=> b!7939643 (= lt!2695792 (lemmaSizeTrEqualsSize!476 Nil!74486 0))))

(declare-fun sizeTr!477 (List!74610 Int) Int)

(assert (=> b!7939643 (= (sizeTr!477 input!6707 0) (size!43320 input!6707))))

(declare-fun lt!2695791 () Unit!169589)

(assert (=> b!7939643 (= lt!2695791 (lemmaSizeTrEqualsSize!476 input!6707 0))))

(declare-fun b!7939644 () Bool)

(declare-fun e!4684820 () Bool)

(declare-fun tp_is_empty!53305 () Bool)

(assert (=> b!7939644 (= e!4684820 tp_is_empty!53305)))

(declare-fun b!7939645 () Bool)

(declare-fun tp!2360572 () Bool)

(declare-fun tp!2360571 () Bool)

(assert (=> b!7939645 (= e!4684820 (and tp!2360572 tp!2360571))))

(declare-fun b!7939646 () Bool)

(declare-fun tp!2360570 () Bool)

(assert (=> b!7939646 (= e!4684820 tp!2360570)))

(declare-fun res!3149776 () Bool)

(assert (=> start!749374 (=> (not res!3149776) (not e!4684819))))

(declare-datatypes ((Regex!21385 0))(
  ( (ElementMatch!21385 (c!1458692 C!43108)) (Concat!30384 (regOne!43282 Regex!21385) (regTwo!43282 Regex!21385)) (EmptyExpr!21385) (Star!21385 (reg!21714 Regex!21385)) (EmptyLang!21385) (Union!21385 (regOne!43283 Regex!21385) (regTwo!43283 Regex!21385)) )
))
(declare-fun r!15416 () Regex!21385)

(declare-fun validRegex!11689 (Regex!21385) Bool)

(assert (=> start!749374 (= res!3149776 (validRegex!11689 r!15416))))

(assert (=> start!749374 e!4684819))

(assert (=> start!749374 e!4684820))

(declare-fun e!4684818 () Bool)

(assert (=> start!749374 e!4684818))

(declare-fun b!7939647 () Bool)

(declare-fun tp!2360574 () Bool)

(declare-fun tp!2360573 () Bool)

(assert (=> b!7939647 (= e!4684820 (and tp!2360574 tp!2360573))))

(declare-fun b!7939648 () Bool)

(declare-fun tp!2360569 () Bool)

(assert (=> b!7939648 (= e!4684818 (and tp_is_empty!53305 tp!2360569))))

(assert (= (and start!749374 res!3149776) b!7939643))

(get-info :version)

(assert (= (and start!749374 ((_ is ElementMatch!21385) r!15416)) b!7939644))

(assert (= (and start!749374 ((_ is Concat!30384) r!15416)) b!7939647))

(assert (= (and start!749374 ((_ is Star!21385) r!15416)) b!7939646))

(assert (= (and start!749374 ((_ is Union!21385) r!15416)) b!7939645))

(assert (= (and start!749374 ((_ is Cons!74486) input!6707)) b!7939648))

(declare-fun m!8329190 () Bool)

(assert (=> b!7939643 m!8329190))

(declare-fun m!8329192 () Bool)

(assert (=> b!7939643 m!8329192))

(declare-fun m!8329194 () Bool)

(assert (=> b!7939643 m!8329194))

(declare-fun m!8329196 () Bool)

(assert (=> b!7939643 m!8329196))

(declare-fun m!8329198 () Bool)

(assert (=> b!7939643 m!8329198))

(declare-fun m!8329200 () Bool)

(assert (=> b!7939643 m!8329200))

(declare-fun m!8329202 () Bool)

(assert (=> start!749374 m!8329202))

(check-sat (not b!7939643) (not b!7939646) tp_is_empty!53305 (not start!749374) (not b!7939647) (not b!7939645) (not b!7939648))
(check-sat)
(get-model)

(declare-fun b!7939679 () Bool)

(declare-fun e!4684846 () Bool)

(declare-fun e!4684841 () Bool)

(assert (=> b!7939679 (= e!4684846 e!4684841)))

(declare-fun res!3149795 () Bool)

(declare-fun nullable!9521 (Regex!21385) Bool)

(assert (=> b!7939679 (= res!3149795 (not (nullable!9521 (reg!21714 r!15416))))))

(assert (=> b!7939679 (=> (not res!3149795) (not e!4684841))))

(declare-fun b!7939680 () Bool)

(declare-fun e!4684844 () Bool)

(assert (=> b!7939680 (= e!4684844 e!4684846)))

(declare-fun c!1458700 () Bool)

(assert (=> b!7939680 (= c!1458700 ((_ is Star!21385) r!15416))))

(declare-fun d!2374913 () Bool)

(declare-fun res!3149797 () Bool)

(assert (=> d!2374913 (=> res!3149797 e!4684844)))

(assert (=> d!2374913 (= res!3149797 ((_ is ElementMatch!21385) r!15416))))

(assert (=> d!2374913 (= (validRegex!11689 r!15416) e!4684844)))

(declare-fun b!7939681 () Bool)

(declare-fun e!4684842 () Bool)

(declare-fun e!4684847 () Bool)

(assert (=> b!7939681 (= e!4684842 e!4684847)))

(declare-fun res!3149794 () Bool)

(assert (=> b!7939681 (=> (not res!3149794) (not e!4684847))))

(declare-fun call!735715 () Bool)

(assert (=> b!7939681 (= res!3149794 call!735715)))

(declare-fun b!7939682 () Bool)

(declare-fun e!4684845 () Bool)

(declare-fun call!735713 () Bool)

(assert (=> b!7939682 (= e!4684845 call!735713)))

(declare-fun bm!735708 () Bool)

(declare-fun c!1458701 () Bool)

(assert (=> bm!735708 (= call!735715 (validRegex!11689 (ite c!1458701 (regOne!43283 r!15416) (regOne!43282 r!15416))))))

(declare-fun call!735714 () Bool)

(declare-fun bm!735709 () Bool)

(assert (=> bm!735709 (= call!735714 (validRegex!11689 (ite c!1458700 (reg!21714 r!15416) (ite c!1458701 (regTwo!43283 r!15416) (regTwo!43282 r!15416)))))))

(declare-fun b!7939683 () Bool)

(declare-fun res!3149796 () Bool)

(assert (=> b!7939683 (=> (not res!3149796) (not e!4684845))))

(assert (=> b!7939683 (= res!3149796 call!735715)))

(declare-fun e!4684843 () Bool)

(assert (=> b!7939683 (= e!4684843 e!4684845)))

(declare-fun b!7939684 () Bool)

(assert (=> b!7939684 (= e!4684847 call!735713)))

(declare-fun b!7939685 () Bool)

(declare-fun res!3149793 () Bool)

(assert (=> b!7939685 (=> res!3149793 e!4684842)))

(assert (=> b!7939685 (= res!3149793 (not ((_ is Concat!30384) r!15416)))))

(assert (=> b!7939685 (= e!4684843 e!4684842)))

(declare-fun b!7939686 () Bool)

(assert (=> b!7939686 (= e!4684846 e!4684843)))

(assert (=> b!7939686 (= c!1458701 ((_ is Union!21385) r!15416))))

(declare-fun b!7939687 () Bool)

(assert (=> b!7939687 (= e!4684841 call!735714)))

(declare-fun bm!735710 () Bool)

(assert (=> bm!735710 (= call!735713 call!735714)))

(assert (= (and d!2374913 (not res!3149797)) b!7939680))

(assert (= (and b!7939680 c!1458700) b!7939679))

(assert (= (and b!7939680 (not c!1458700)) b!7939686))

(assert (= (and b!7939679 res!3149795) b!7939687))

(assert (= (and b!7939686 c!1458701) b!7939683))

(assert (= (and b!7939686 (not c!1458701)) b!7939685))

(assert (= (and b!7939683 res!3149796) b!7939682))

(assert (= (and b!7939685 (not res!3149793)) b!7939681))

(assert (= (and b!7939681 res!3149794) b!7939684))

(assert (= (or b!7939683 b!7939681) bm!735708))

(assert (= (or b!7939682 b!7939684) bm!735710))

(assert (= (or b!7939687 bm!735710) bm!735709))

(declare-fun m!8329214 () Bool)

(assert (=> b!7939679 m!8329214))

(declare-fun m!8329216 () Bool)

(assert (=> bm!735708 m!8329216))

(declare-fun m!8329218 () Bool)

(assert (=> bm!735709 m!8329218))

(assert (=> start!749374 d!2374913))

(declare-fun b!7939710 () Bool)

(declare-fun e!4684859 () List!74610)

(assert (=> b!7939710 (= e!4684859 input!6707)))

(declare-fun b!7939711 () Bool)

(assert (=> b!7939711 (= e!4684859 (Cons!74486 (h!80934 Nil!74486) (++!18287 (t!390353 Nil!74486) input!6707)))))

(declare-fun b!7939712 () Bool)

(declare-fun res!3149803 () Bool)

(declare-fun e!4684860 () Bool)

(assert (=> b!7939712 (=> (not res!3149803) (not e!4684860))))

(declare-fun lt!2695806 () List!74610)

(assert (=> b!7939712 (= res!3149803 (= (size!43320 lt!2695806) (+ (size!43320 Nil!74486) (size!43320 input!6707))))))

(declare-fun d!2374919 () Bool)

(assert (=> d!2374919 e!4684860))

(declare-fun res!3149802 () Bool)

(assert (=> d!2374919 (=> (not res!3149802) (not e!4684860))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15809 (List!74610) (InoxSet C!43108))

(assert (=> d!2374919 (= res!3149802 (= (content!15809 lt!2695806) ((_ map or) (content!15809 Nil!74486) (content!15809 input!6707))))))

(assert (=> d!2374919 (= lt!2695806 e!4684859)))

(declare-fun c!1458711 () Bool)

(assert (=> d!2374919 (= c!1458711 ((_ is Nil!74486) Nil!74486))))

(assert (=> d!2374919 (= (++!18287 Nil!74486 input!6707) lt!2695806)))

(declare-fun b!7939713 () Bool)

(assert (=> b!7939713 (= e!4684860 (or (not (= input!6707 Nil!74486)) (= lt!2695806 Nil!74486)))))

(assert (= (and d!2374919 c!1458711) b!7939710))

(assert (= (and d!2374919 (not c!1458711)) b!7939711))

(assert (= (and d!2374919 res!3149802) b!7939712))

(assert (= (and b!7939712 res!3149803) b!7939713))

(declare-fun m!8329232 () Bool)

(assert (=> b!7939711 m!8329232))

(declare-fun m!8329234 () Bool)

(assert (=> b!7939712 m!8329234))

(assert (=> b!7939712 m!8329192))

(assert (=> b!7939712 m!8329194))

(declare-fun m!8329236 () Bool)

(assert (=> d!2374919 m!8329236))

(declare-fun m!8329238 () Bool)

(assert (=> d!2374919 m!8329238))

(declare-fun m!8329240 () Bool)

(assert (=> d!2374919 m!8329240))

(assert (=> b!7939643 d!2374919))

(declare-fun d!2374931 () Bool)

(assert (=> d!2374931 (= (sizeTr!477 input!6707 0) (+ (size!43320 input!6707) 0))))

(declare-fun lt!2695809 () Unit!169589)

(declare-fun choose!59867 (List!74610 Int) Unit!169589)

(assert (=> d!2374931 (= lt!2695809 (choose!59867 input!6707 0))))

(assert (=> d!2374931 (= (lemmaSizeTrEqualsSize!476 input!6707 0) lt!2695809)))

(declare-fun bs!1969373 () Bool)

(assert (= bs!1969373 d!2374931))

(assert (=> bs!1969373 m!8329200))

(assert (=> bs!1969373 m!8329194))

(declare-fun m!8329242 () Bool)

(assert (=> bs!1969373 m!8329242))

(assert (=> b!7939643 d!2374931))

(declare-fun d!2374933 () Bool)

(declare-fun c!1458718 () Bool)

(assert (=> d!2374933 (= c!1458718 ((_ is Nil!74486) input!6707))))

(declare-fun e!4684877 () Int)

(assert (=> d!2374933 (= (sizeTr!477 input!6707 0) e!4684877)))

(declare-fun b!7939736 () Bool)

(assert (=> b!7939736 (= e!4684877 0)))

(declare-fun b!7939737 () Bool)

(assert (=> b!7939737 (= e!4684877 (sizeTr!477 (t!390353 input!6707) (+ 0 1)))))

(assert (= (and d!2374933 c!1458718) b!7939736))

(assert (= (and d!2374933 (not c!1458718)) b!7939737))

(declare-fun m!8329244 () Bool)

(assert (=> b!7939737 m!8329244))

(assert (=> b!7939643 d!2374933))

(declare-fun d!2374935 () Bool)

(declare-fun lt!2695812 () Int)

(assert (=> d!2374935 (>= lt!2695812 0)))

(declare-fun e!4684880 () Int)

(assert (=> d!2374935 (= lt!2695812 e!4684880)))

(declare-fun c!1458721 () Bool)

(assert (=> d!2374935 (= c!1458721 ((_ is Nil!74486) input!6707))))

(assert (=> d!2374935 (= (size!43320 input!6707) lt!2695812)))

(declare-fun b!7939742 () Bool)

(assert (=> b!7939742 (= e!4684880 0)))

(declare-fun b!7939743 () Bool)

(assert (=> b!7939743 (= e!4684880 (+ 1 (size!43320 (t!390353 input!6707))))))

(assert (= (and d!2374935 c!1458721) b!7939742))

(assert (= (and d!2374935 (not c!1458721)) b!7939743))

(declare-fun m!8329246 () Bool)

(assert (=> b!7939743 m!8329246))

(assert (=> b!7939643 d!2374935))

(declare-fun d!2374937 () Bool)

(assert (=> d!2374937 (= (sizeTr!477 Nil!74486 0) (+ (size!43320 Nil!74486) 0))))

(declare-fun lt!2695813 () Unit!169589)

(assert (=> d!2374937 (= lt!2695813 (choose!59867 Nil!74486 0))))

(assert (=> d!2374937 (= (lemmaSizeTrEqualsSize!476 Nil!74486 0) lt!2695813)))

(declare-fun bs!1969374 () Bool)

(assert (= bs!1969374 d!2374937))

(declare-fun m!8329248 () Bool)

(assert (=> bs!1969374 m!8329248))

(assert (=> bs!1969374 m!8329192))

(declare-fun m!8329250 () Bool)

(assert (=> bs!1969374 m!8329250))

(assert (=> b!7939643 d!2374937))

(declare-fun d!2374939 () Bool)

(declare-fun lt!2695814 () Int)

(assert (=> d!2374939 (>= lt!2695814 0)))

(declare-fun e!4684881 () Int)

(assert (=> d!2374939 (= lt!2695814 e!4684881)))

(declare-fun c!1458722 () Bool)

(assert (=> d!2374939 (= c!1458722 ((_ is Nil!74486) Nil!74486))))

(assert (=> d!2374939 (= (size!43320 Nil!74486) lt!2695814)))

(declare-fun b!7939744 () Bool)

(assert (=> b!7939744 (= e!4684881 0)))

(declare-fun b!7939745 () Bool)

(assert (=> b!7939745 (= e!4684881 (+ 1 (size!43320 (t!390353 Nil!74486))))))

(assert (= (and d!2374939 c!1458722) b!7939744))

(assert (= (and d!2374939 (not c!1458722)) b!7939745))

(declare-fun m!8329252 () Bool)

(assert (=> b!7939745 m!8329252))

(assert (=> b!7939643 d!2374939))

(declare-fun b!7939775 () Bool)

(declare-fun e!4684893 () Bool)

(assert (=> b!7939775 (= e!4684893 tp_is_empty!53305)))

(assert (=> b!7939645 (= tp!2360572 e!4684893)))

(declare-fun b!7939777 () Bool)

(declare-fun tp!2360598 () Bool)

(assert (=> b!7939777 (= e!4684893 tp!2360598)))

(declare-fun b!7939778 () Bool)

(declare-fun tp!2360595 () Bool)

(declare-fun tp!2360599 () Bool)

(assert (=> b!7939778 (= e!4684893 (and tp!2360595 tp!2360599))))

(declare-fun b!7939776 () Bool)

(declare-fun tp!2360597 () Bool)

(declare-fun tp!2360596 () Bool)

(assert (=> b!7939776 (= e!4684893 (and tp!2360597 tp!2360596))))

(assert (= (and b!7939645 ((_ is ElementMatch!21385) (regOne!43283 r!15416))) b!7939775))

(assert (= (and b!7939645 ((_ is Concat!30384) (regOne!43283 r!15416))) b!7939776))

(assert (= (and b!7939645 ((_ is Star!21385) (regOne!43283 r!15416))) b!7939777))

(assert (= (and b!7939645 ((_ is Union!21385) (regOne!43283 r!15416))) b!7939778))

(declare-fun b!7939779 () Bool)

(declare-fun e!4684894 () Bool)

(assert (=> b!7939779 (= e!4684894 tp_is_empty!53305)))

(assert (=> b!7939645 (= tp!2360571 e!4684894)))

(declare-fun b!7939781 () Bool)

(declare-fun tp!2360603 () Bool)

(assert (=> b!7939781 (= e!4684894 tp!2360603)))

(declare-fun b!7939782 () Bool)

(declare-fun tp!2360600 () Bool)

(declare-fun tp!2360604 () Bool)

(assert (=> b!7939782 (= e!4684894 (and tp!2360600 tp!2360604))))

(declare-fun b!7939780 () Bool)

(declare-fun tp!2360602 () Bool)

(declare-fun tp!2360601 () Bool)

(assert (=> b!7939780 (= e!4684894 (and tp!2360602 tp!2360601))))

(assert (= (and b!7939645 ((_ is ElementMatch!21385) (regTwo!43283 r!15416))) b!7939779))

(assert (= (and b!7939645 ((_ is Concat!30384) (regTwo!43283 r!15416))) b!7939780))

(assert (= (and b!7939645 ((_ is Star!21385) (regTwo!43283 r!15416))) b!7939781))

(assert (= (and b!7939645 ((_ is Union!21385) (regTwo!43283 r!15416))) b!7939782))

(declare-fun b!7939783 () Bool)

(declare-fun e!4684895 () Bool)

(assert (=> b!7939783 (= e!4684895 tp_is_empty!53305)))

(assert (=> b!7939646 (= tp!2360570 e!4684895)))

(declare-fun b!7939785 () Bool)

(declare-fun tp!2360608 () Bool)

(assert (=> b!7939785 (= e!4684895 tp!2360608)))

(declare-fun b!7939786 () Bool)

(declare-fun tp!2360605 () Bool)

(declare-fun tp!2360609 () Bool)

(assert (=> b!7939786 (= e!4684895 (and tp!2360605 tp!2360609))))

(declare-fun b!7939784 () Bool)

(declare-fun tp!2360607 () Bool)

(declare-fun tp!2360606 () Bool)

(assert (=> b!7939784 (= e!4684895 (and tp!2360607 tp!2360606))))

(assert (= (and b!7939646 ((_ is ElementMatch!21385) (reg!21714 r!15416))) b!7939783))

(assert (= (and b!7939646 ((_ is Concat!30384) (reg!21714 r!15416))) b!7939784))

(assert (= (and b!7939646 ((_ is Star!21385) (reg!21714 r!15416))) b!7939785))

(assert (= (and b!7939646 ((_ is Union!21385) (reg!21714 r!15416))) b!7939786))

(declare-fun b!7939791 () Bool)

(declare-fun e!4684897 () Bool)

(assert (=> b!7939791 (= e!4684897 tp_is_empty!53305)))

(assert (=> b!7939647 (= tp!2360574 e!4684897)))

(declare-fun b!7939793 () Bool)

(declare-fun tp!2360618 () Bool)

(assert (=> b!7939793 (= e!4684897 tp!2360618)))

(declare-fun b!7939794 () Bool)

(declare-fun tp!2360615 () Bool)

(declare-fun tp!2360619 () Bool)

(assert (=> b!7939794 (= e!4684897 (and tp!2360615 tp!2360619))))

(declare-fun b!7939792 () Bool)

(declare-fun tp!2360617 () Bool)

(declare-fun tp!2360616 () Bool)

(assert (=> b!7939792 (= e!4684897 (and tp!2360617 tp!2360616))))

(assert (= (and b!7939647 ((_ is ElementMatch!21385) (regOne!43282 r!15416))) b!7939791))

(assert (= (and b!7939647 ((_ is Concat!30384) (regOne!43282 r!15416))) b!7939792))

(assert (= (and b!7939647 ((_ is Star!21385) (regOne!43282 r!15416))) b!7939793))

(assert (= (and b!7939647 ((_ is Union!21385) (regOne!43282 r!15416))) b!7939794))

(declare-fun b!7939795 () Bool)

(declare-fun e!4684898 () Bool)

(assert (=> b!7939795 (= e!4684898 tp_is_empty!53305)))

(assert (=> b!7939647 (= tp!2360573 e!4684898)))

(declare-fun b!7939797 () Bool)

(declare-fun tp!2360623 () Bool)

(assert (=> b!7939797 (= e!4684898 tp!2360623)))

(declare-fun b!7939798 () Bool)

(declare-fun tp!2360620 () Bool)

(declare-fun tp!2360624 () Bool)

(assert (=> b!7939798 (= e!4684898 (and tp!2360620 tp!2360624))))

(declare-fun b!7939796 () Bool)

(declare-fun tp!2360622 () Bool)

(declare-fun tp!2360621 () Bool)

(assert (=> b!7939796 (= e!4684898 (and tp!2360622 tp!2360621))))

(assert (= (and b!7939647 ((_ is ElementMatch!21385) (regTwo!43282 r!15416))) b!7939795))

(assert (= (and b!7939647 ((_ is Concat!30384) (regTwo!43282 r!15416))) b!7939796))

(assert (= (and b!7939647 ((_ is Star!21385) (regTwo!43282 r!15416))) b!7939797))

(assert (= (and b!7939647 ((_ is Union!21385) (regTwo!43282 r!15416))) b!7939798))

(declare-fun b!7939815 () Bool)

(declare-fun e!4684905 () Bool)

(declare-fun tp!2360639 () Bool)

(assert (=> b!7939815 (= e!4684905 (and tp_is_empty!53305 tp!2360639))))

(assert (=> b!7939648 (= tp!2360569 e!4684905)))

(assert (= (and b!7939648 ((_ is Cons!74486) (t!390353 input!6707))) b!7939815))

(check-sat (not b!7939776) tp_is_empty!53305 (not b!7939793) (not b!7939737) (not b!7939782) (not b!7939711) (not b!7939796) (not b!7939712) (not b!7939778) (not d!2374937) (not bm!735709) (not d!2374919) (not bm!735708) (not b!7939679) (not b!7939792) (not b!7939786) (not b!7939745) (not b!7939781) (not b!7939784) (not d!2374931) (not b!7939785) (not b!7939777) (not b!7939815) (not b!7939743) (not b!7939794) (not b!7939797) (not b!7939798) (not b!7939780))
(check-sat)
