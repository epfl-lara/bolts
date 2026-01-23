; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!535986 () Bool)

(assert start!535986)

(declare-fun res!2165870 () Bool)

(declare-fun e!3172987 () Bool)

(assert (=> start!535986 (=> res!2165870 e!3172987)))

(declare-fun e!3172983 () Bool)

(assert (=> start!535986 (= res!2165870 e!3172983)))

(declare-fun res!2165873 () Bool)

(assert (=> start!535986 (=> (not res!2165873) (not e!3172983))))

(declare-datatypes ((T!105314 0))(
  ( (T!105315 (val!23676 Int)) )
))
(declare-datatypes ((List!58586 0))(
  ( (Nil!58462) (Cons!58462 (h!64910 T!105314) (t!371447 List!58586)) )
))
(declare-datatypes ((IArray!31245 0))(
  ( (IArray!31246 (innerList!15680 List!58586)) )
))
(declare-datatypes ((Conc!15592 0))(
  ( (Node!15592 (left!42858 Conc!15592) (right!43188 Conc!15592) (csize!31414 Int) (cheight!15803 Int)) (Leaf!25893 (xs!18974 IArray!31245) (csize!31415 Int)) (Empty!15592) )
))
(declare-fun xs!399 () Conc!15592)

(get-info :version)

(assert (=> start!535986 (= res!2165873 ((_ is Node!15592) xs!399))))

(assert (=> start!535986 e!3172987))

(declare-fun e!3172986 () Bool)

(declare-fun inv!77709 (Conc!15592) Bool)

(assert (=> start!535986 (and (inv!77709 xs!399) e!3172986)))

(declare-fun ys!102 () Conc!15592)

(declare-fun e!3172976 () Bool)

(assert (=> start!535986 (and (inv!77709 ys!102) e!3172976)))

(declare-fun b!5087567 () Bool)

(declare-fun e!3172982 () Bool)

(declare-fun tp!1418298 () Bool)

(assert (=> b!5087567 (= e!3172982 tp!1418298)))

(declare-fun b!5087568 () Bool)

(declare-fun e!3172988 () Bool)

(declare-fun inv!77710 (IArray!31245) Bool)

(assert (=> b!5087568 (= e!3172986 (and (inv!77710 (xs!18974 xs!399)) e!3172988))))

(declare-fun b!5087569 () Bool)

(assert (=> b!5087569 (= e!3172976 (and (inv!77710 (xs!18974 ys!102)) e!3172982))))

(declare-fun b!5087570 () Bool)

(declare-fun e!3172980 () Bool)

(declare-fun e!3172981 () Bool)

(assert (=> b!5087570 (= e!3172980 e!3172981)))

(declare-fun res!2165869 () Bool)

(assert (=> b!5087570 (=> res!2165869 e!3172981)))

(declare-fun lt!2091863 () List!58586)

(declare-fun lt!2091857 () List!58586)

(declare-fun lt!2091860 () List!58586)

(declare-fun appendAssoc!318 (List!58586 List!58586 List!58586) Bool)

(assert (=> b!5087570 (= res!2165869 (not (appendAssoc!318 lt!2091863 lt!2091860 lt!2091857)))))

(declare-fun list!19045 (Conc!15592) List!58586)

(assert (=> b!5087570 (= lt!2091857 (list!19045 (right!43188 (left!42858 ys!102))))))

(assert (=> b!5087570 (= lt!2091860 (list!19045 (left!42858 (left!42858 ys!102))))))

(declare-fun b!5087571 () Bool)

(declare-fun e!3172978 () Bool)

(declare-fun e!3172984 () Bool)

(assert (=> b!5087571 (= e!3172978 e!3172984)))

(declare-fun res!2165871 () Bool)

(assert (=> b!5087571 (=> res!2165871 e!3172984)))

(declare-fun lt!2091856 () List!58586)

(declare-fun lt!2091859 () List!58586)

(declare-fun lt!2091864 () List!58586)

(assert (=> b!5087571 (= res!2165871 (not (appendAssoc!318 lt!2091856 lt!2091859 lt!2091864)))))

(assert (=> b!5087571 (= lt!2091859 (list!19045 (right!43188 (right!43188 xs!399))))))

(assert (=> b!5087571 (= lt!2091856 (list!19045 (left!42858 (right!43188 xs!399))))))

(declare-fun b!5087572 () Bool)

(declare-fun e!3172977 () Bool)

(declare-fun e!3172979 () Bool)

(assert (=> b!5087572 (= e!3172977 e!3172979)))

(declare-fun res!2165875 () Bool)

(assert (=> b!5087572 (=> res!2165875 e!3172979)))

(declare-fun lt!2091858 () List!58586)

(declare-fun lt!2091865 () List!58586)

(assert (=> b!5087572 (= res!2165875 (not (appendAssoc!318 lt!2091863 lt!2091865 lt!2091858)))))

(assert (=> b!5087572 (= lt!2091858 (list!19045 (right!43188 ys!102)))))

(assert (=> b!5087572 (= lt!2091865 (list!19045 (left!42858 ys!102)))))

(assert (=> b!5087572 (= lt!2091863 (list!19045 xs!399))))

(declare-fun b!5087573 () Bool)

(assert (=> b!5087573 (= e!3172979 e!3172980)))

(declare-fun res!2165874 () Bool)

(assert (=> b!5087573 (=> (not res!2165874) (not e!3172980))))

(assert (=> b!5087573 (= res!2165874 ((_ is Node!15592) (left!42858 ys!102)))))

(declare-fun b!5087574 () Bool)

(declare-fun tp!1418297 () Bool)

(declare-fun tp!1418299 () Bool)

(assert (=> b!5087574 (= e!3172976 (and (inv!77709 (left!42858 ys!102)) tp!1418297 (inv!77709 (right!43188 ys!102)) tp!1418299))))

(declare-fun b!5087575 () Bool)

(declare-fun lt!2091862 () List!58586)

(declare-fun ++!12819 (List!58586 List!58586) List!58586)

(assert (=> b!5087575 (= e!3172984 (not (appendAssoc!318 lt!2091862 lt!2091856 (++!12819 lt!2091859 lt!2091864))))))

(declare-fun b!5087576 () Bool)

(declare-fun tp!1418301 () Bool)

(assert (=> b!5087576 (= e!3172988 tp!1418301)))

(declare-fun b!5087577 () Bool)

(assert (=> b!5087577 (= e!3172981 (not (appendAssoc!318 (++!12819 lt!2091863 lt!2091860) lt!2091857 lt!2091858)))))

(declare-fun b!5087578 () Bool)

(declare-fun e!3172985 () Bool)

(assert (=> b!5087578 (= e!3172983 e!3172985)))

(declare-fun res!2165877 () Bool)

(assert (=> b!5087578 (=> res!2165877 e!3172985)))

(declare-fun lt!2091861 () List!58586)

(assert (=> b!5087578 (= res!2165877 (not (appendAssoc!318 lt!2091862 lt!2091861 lt!2091864)))))

(assert (=> b!5087578 (= lt!2091864 (list!19045 ys!102))))

(assert (=> b!5087578 (= lt!2091861 (list!19045 (right!43188 xs!399)))))

(assert (=> b!5087578 (= lt!2091862 (list!19045 (left!42858 xs!399)))))

(declare-fun tp!1418296 () Bool)

(declare-fun b!5087579 () Bool)

(declare-fun tp!1418300 () Bool)

(assert (=> b!5087579 (= e!3172986 (and (inv!77709 (left!42858 xs!399)) tp!1418296 (inv!77709 (right!43188 xs!399)) tp!1418300))))

(declare-fun b!5087580 () Bool)

(assert (=> b!5087580 (= e!3172985 e!3172978)))

(declare-fun res!2165876 () Bool)

(assert (=> b!5087580 (=> (not res!2165876) (not e!3172978))))

(assert (=> b!5087580 (= res!2165876 ((_ is Node!15592) (right!43188 xs!399)))))

(declare-fun b!5087581 () Bool)

(assert (=> b!5087581 (= e!3172987 e!3172977)))

(declare-fun res!2165872 () Bool)

(assert (=> b!5087581 (=> (not res!2165872) (not e!3172977))))

(assert (=> b!5087581 (= res!2165872 ((_ is Node!15592) ys!102))))

(assert (= (and start!535986 res!2165873) b!5087578))

(assert (= (and b!5087578 (not res!2165877)) b!5087580))

(assert (= (and b!5087580 res!2165876) b!5087571))

(assert (= (and b!5087571 (not res!2165871)) b!5087575))

(assert (= (and start!535986 (not res!2165870)) b!5087581))

(assert (= (and b!5087581 res!2165872) b!5087572))

(assert (= (and b!5087572 (not res!2165875)) b!5087573))

(assert (= (and b!5087573 res!2165874) b!5087570))

(assert (= (and b!5087570 (not res!2165869)) b!5087577))

(assert (= (and start!535986 ((_ is Node!15592) xs!399)) b!5087579))

(assert (= b!5087568 b!5087576))

(assert (= (and start!535986 ((_ is Leaf!25893) xs!399)) b!5087568))

(assert (= (and start!535986 ((_ is Node!15592) ys!102)) b!5087574))

(assert (= b!5087569 b!5087567))

(assert (= (and start!535986 ((_ is Leaf!25893) ys!102)) b!5087569))

(declare-fun m!6145414 () Bool)

(assert (=> b!5087575 m!6145414))

(assert (=> b!5087575 m!6145414))

(declare-fun m!6145416 () Bool)

(assert (=> b!5087575 m!6145416))

(declare-fun m!6145418 () Bool)

(assert (=> b!5087568 m!6145418))

(declare-fun m!6145420 () Bool)

(assert (=> b!5087578 m!6145420))

(declare-fun m!6145422 () Bool)

(assert (=> b!5087578 m!6145422))

(declare-fun m!6145424 () Bool)

(assert (=> b!5087578 m!6145424))

(declare-fun m!6145426 () Bool)

(assert (=> b!5087578 m!6145426))

(declare-fun m!6145428 () Bool)

(assert (=> b!5087579 m!6145428))

(declare-fun m!6145430 () Bool)

(assert (=> b!5087579 m!6145430))

(declare-fun m!6145432 () Bool)

(assert (=> start!535986 m!6145432))

(declare-fun m!6145434 () Bool)

(assert (=> start!535986 m!6145434))

(declare-fun m!6145436 () Bool)

(assert (=> b!5087574 m!6145436))

(declare-fun m!6145438 () Bool)

(assert (=> b!5087574 m!6145438))

(declare-fun m!6145440 () Bool)

(assert (=> b!5087569 m!6145440))

(declare-fun m!6145442 () Bool)

(assert (=> b!5087571 m!6145442))

(declare-fun m!6145444 () Bool)

(assert (=> b!5087571 m!6145444))

(declare-fun m!6145446 () Bool)

(assert (=> b!5087571 m!6145446))

(declare-fun m!6145448 () Bool)

(assert (=> b!5087570 m!6145448))

(declare-fun m!6145450 () Bool)

(assert (=> b!5087570 m!6145450))

(declare-fun m!6145452 () Bool)

(assert (=> b!5087570 m!6145452))

(declare-fun m!6145454 () Bool)

(assert (=> b!5087577 m!6145454))

(assert (=> b!5087577 m!6145454))

(declare-fun m!6145456 () Bool)

(assert (=> b!5087577 m!6145456))

(declare-fun m!6145458 () Bool)

(assert (=> b!5087572 m!6145458))

(declare-fun m!6145460 () Bool)

(assert (=> b!5087572 m!6145460))

(declare-fun m!6145462 () Bool)

(assert (=> b!5087572 m!6145462))

(declare-fun m!6145464 () Bool)

(assert (=> b!5087572 m!6145464))

(check-sat (not b!5087572) (not b!5087574) (not b!5087571) (not b!5087575) (not b!5087579) (not start!535986) (not b!5087570) (not b!5087577) (not b!5087578) (not b!5087576) (not b!5087568) (not b!5087569) (not b!5087567))
(check-sat)
(get-model)

(declare-fun d!1646833 () Bool)

(declare-fun size!39130 (List!58586) Int)

(assert (=> d!1646833 (= (inv!77710 (xs!18974 xs!399)) (<= (size!39130 (innerList!15680 (xs!18974 xs!399))) 2147483647))))

(declare-fun bs!1190996 () Bool)

(assert (= bs!1190996 d!1646833))

(declare-fun m!6145466 () Bool)

(assert (=> bs!1190996 m!6145466))

(assert (=> b!5087568 d!1646833))

(declare-fun d!1646835 () Bool)

(declare-fun c!874124 () Bool)

(assert (=> d!1646835 (= c!874124 ((_ is Node!15592) (left!42858 xs!399)))))

(declare-fun e!3172995 () Bool)

(assert (=> d!1646835 (= (inv!77709 (left!42858 xs!399)) e!3172995)))

(declare-fun b!5087592 () Bool)

(declare-fun inv!77711 (Conc!15592) Bool)

(assert (=> b!5087592 (= e!3172995 (inv!77711 (left!42858 xs!399)))))

(declare-fun b!5087593 () Bool)

(declare-fun e!3172996 () Bool)

(assert (=> b!5087593 (= e!3172995 e!3172996)))

(declare-fun res!2165880 () Bool)

(assert (=> b!5087593 (= res!2165880 (not ((_ is Leaf!25893) (left!42858 xs!399))))))

(assert (=> b!5087593 (=> res!2165880 e!3172996)))

(declare-fun b!5087594 () Bool)

(declare-fun inv!77712 (Conc!15592) Bool)

(assert (=> b!5087594 (= e!3172996 (inv!77712 (left!42858 xs!399)))))

(assert (= (and d!1646835 c!874124) b!5087592))

(assert (= (and d!1646835 (not c!874124)) b!5087593))

(assert (= (and b!5087593 (not res!2165880)) b!5087594))

(declare-fun m!6145468 () Bool)

(assert (=> b!5087592 m!6145468))

(declare-fun m!6145470 () Bool)

(assert (=> b!5087594 m!6145470))

(assert (=> b!5087579 d!1646835))

(declare-fun d!1646839 () Bool)

(declare-fun c!874125 () Bool)

(assert (=> d!1646839 (= c!874125 ((_ is Node!15592) (right!43188 xs!399)))))

(declare-fun e!3172997 () Bool)

(assert (=> d!1646839 (= (inv!77709 (right!43188 xs!399)) e!3172997)))

(declare-fun b!5087595 () Bool)

(assert (=> b!5087595 (= e!3172997 (inv!77711 (right!43188 xs!399)))))

(declare-fun b!5087596 () Bool)

(declare-fun e!3172998 () Bool)

(assert (=> b!5087596 (= e!3172997 e!3172998)))

(declare-fun res!2165881 () Bool)

(assert (=> b!5087596 (= res!2165881 (not ((_ is Leaf!25893) (right!43188 xs!399))))))

(assert (=> b!5087596 (=> res!2165881 e!3172998)))

(declare-fun b!5087597 () Bool)

(assert (=> b!5087597 (= e!3172998 (inv!77712 (right!43188 xs!399)))))

(assert (= (and d!1646839 c!874125) b!5087595))

(assert (= (and d!1646839 (not c!874125)) b!5087596))

(assert (= (and b!5087596 (not res!2165881)) b!5087597))

(declare-fun m!6145472 () Bool)

(assert (=> b!5087595 m!6145472))

(declare-fun m!6145474 () Bool)

(assert (=> b!5087597 m!6145474))

(assert (=> b!5087579 d!1646839))

(declare-fun d!1646841 () Bool)

(assert (=> d!1646841 (= (inv!77710 (xs!18974 ys!102)) (<= (size!39130 (innerList!15680 (xs!18974 ys!102))) 2147483647))))

(declare-fun bs!1190997 () Bool)

(assert (= bs!1190997 d!1646841))

(declare-fun m!6145476 () Bool)

(assert (=> bs!1190997 m!6145476))

(assert (=> b!5087569 d!1646841))

(declare-fun bm!354549 () Bool)

(declare-fun call!354557 () List!58586)

(declare-fun call!354556 () List!58586)

(assert (=> bm!354549 (= call!354557 (++!12819 call!354556 lt!2091857))))

(declare-fun b!5087612 () Bool)

(declare-fun e!3173006 () Bool)

(declare-fun call!354555 () List!58586)

(assert (=> b!5087612 (= e!3173006 (= call!354557 call!354555))))

(declare-fun lt!2091871 () Bool)

(assert (=> b!5087612 (= lt!2091871 (appendAssoc!318 (t!371447 lt!2091863) lt!2091860 lt!2091857))))

(declare-fun bm!354550 () Bool)

(assert (=> bm!354550 (= call!354556 (++!12819 lt!2091863 lt!2091860))))

(declare-fun b!5087613 () Bool)

(assert (=> b!5087613 (= e!3173006 (= call!354557 call!354555))))

(declare-fun d!1646843 () Bool)

(assert (=> d!1646843 e!3173006))

(declare-fun c!874133 () Bool)

(assert (=> d!1646843 (= c!874133 ((_ is Nil!58462) lt!2091863))))

(assert (=> d!1646843 (= (appendAssoc!318 lt!2091863 lt!2091860 lt!2091857) true)))

(declare-fun bm!354551 () Bool)

(declare-fun call!354554 () List!58586)

(assert (=> bm!354551 (= call!354554 (++!12819 lt!2091860 lt!2091857))))

(declare-fun bm!354552 () Bool)

(assert (=> bm!354552 (= call!354555 (++!12819 lt!2091863 call!354554))))

(assert (= (and d!1646843 c!874133) b!5087613))

(assert (= (and d!1646843 (not c!874133)) b!5087612))

(assert (= (or b!5087613 b!5087612) bm!354550))

(assert (= (or b!5087613 b!5087612) bm!354551))

(assert (= (or b!5087613 b!5087612) bm!354552))

(assert (= (or b!5087613 b!5087612) bm!354549))

(declare-fun m!6145488 () Bool)

(assert (=> b!5087612 m!6145488))

(declare-fun m!6145490 () Bool)

(assert (=> bm!354552 m!6145490))

(declare-fun m!6145492 () Bool)

(assert (=> bm!354549 m!6145492))

(assert (=> bm!354550 m!6145454))

(declare-fun m!6145494 () Bool)

(assert (=> bm!354551 m!6145494))

(assert (=> b!5087570 d!1646843))

(declare-fun d!1646847 () Bool)

(declare-fun c!874144 () Bool)

(assert (=> d!1646847 (= c!874144 ((_ is Empty!15592) (right!43188 (left!42858 ys!102))))))

(declare-fun e!3173017 () List!58586)

(assert (=> d!1646847 (= (list!19045 (right!43188 (left!42858 ys!102))) e!3173017)))

(declare-fun b!5087634 () Bool)

(assert (=> b!5087634 (= e!3173017 Nil!58462)))

(declare-fun b!5087636 () Bool)

(declare-fun e!3173018 () List!58586)

(declare-fun list!19047 (IArray!31245) List!58586)

(assert (=> b!5087636 (= e!3173018 (list!19047 (xs!18974 (right!43188 (left!42858 ys!102)))))))

(declare-fun b!5087635 () Bool)

(assert (=> b!5087635 (= e!3173017 e!3173018)))

(declare-fun c!874145 () Bool)

(assert (=> b!5087635 (= c!874145 ((_ is Leaf!25893) (right!43188 (left!42858 ys!102))))))

(declare-fun b!5087637 () Bool)

(assert (=> b!5087637 (= e!3173018 (++!12819 (list!19045 (left!42858 (right!43188 (left!42858 ys!102)))) (list!19045 (right!43188 (right!43188 (left!42858 ys!102))))))))

(assert (= (and d!1646847 c!874144) b!5087634))

(assert (= (and d!1646847 (not c!874144)) b!5087635))

(assert (= (and b!5087635 c!874145) b!5087636))

(assert (= (and b!5087635 (not c!874145)) b!5087637))

(declare-fun m!6145512 () Bool)

(assert (=> b!5087636 m!6145512))

(declare-fun m!6145514 () Bool)

(assert (=> b!5087637 m!6145514))

(declare-fun m!6145516 () Bool)

(assert (=> b!5087637 m!6145516))

(assert (=> b!5087637 m!6145514))

(assert (=> b!5087637 m!6145516))

(declare-fun m!6145518 () Bool)

(assert (=> b!5087637 m!6145518))

(assert (=> b!5087570 d!1646847))

(declare-fun d!1646855 () Bool)

(declare-fun c!874146 () Bool)

(assert (=> d!1646855 (= c!874146 ((_ is Empty!15592) (left!42858 (left!42858 ys!102))))))

(declare-fun e!3173019 () List!58586)

(assert (=> d!1646855 (= (list!19045 (left!42858 (left!42858 ys!102))) e!3173019)))

(declare-fun b!5087638 () Bool)

(assert (=> b!5087638 (= e!3173019 Nil!58462)))

(declare-fun b!5087640 () Bool)

(declare-fun e!3173020 () List!58586)

(assert (=> b!5087640 (= e!3173020 (list!19047 (xs!18974 (left!42858 (left!42858 ys!102)))))))

(declare-fun b!5087639 () Bool)

(assert (=> b!5087639 (= e!3173019 e!3173020)))

(declare-fun c!874147 () Bool)

(assert (=> b!5087639 (= c!874147 ((_ is Leaf!25893) (left!42858 (left!42858 ys!102))))))

(declare-fun b!5087641 () Bool)

(assert (=> b!5087641 (= e!3173020 (++!12819 (list!19045 (left!42858 (left!42858 (left!42858 ys!102)))) (list!19045 (right!43188 (left!42858 (left!42858 ys!102))))))))

(assert (= (and d!1646855 c!874146) b!5087638))

(assert (= (and d!1646855 (not c!874146)) b!5087639))

(assert (= (and b!5087639 c!874147) b!5087640))

(assert (= (and b!5087639 (not c!874147)) b!5087641))

(declare-fun m!6145520 () Bool)

(assert (=> b!5087640 m!6145520))

(declare-fun m!6145522 () Bool)

(assert (=> b!5087641 m!6145522))

(declare-fun m!6145524 () Bool)

(assert (=> b!5087641 m!6145524))

(assert (=> b!5087641 m!6145522))

(assert (=> b!5087641 m!6145524))

(declare-fun m!6145526 () Bool)

(assert (=> b!5087641 m!6145526))

(assert (=> b!5087570 d!1646855))

(declare-fun bm!354553 () Bool)

(declare-fun call!354561 () List!58586)

(declare-fun call!354560 () List!58586)

(assert (=> bm!354553 (= call!354561 (++!12819 call!354560 lt!2091858))))

(declare-fun b!5087646 () Bool)

(declare-fun e!3173022 () Bool)

(declare-fun call!354559 () List!58586)

(assert (=> b!5087646 (= e!3173022 (= call!354561 call!354559))))

(declare-fun lt!2091872 () Bool)

(assert (=> b!5087646 (= lt!2091872 (appendAssoc!318 (t!371447 (++!12819 lt!2091863 lt!2091860)) lt!2091857 lt!2091858))))

(declare-fun bm!354554 () Bool)

(assert (=> bm!354554 (= call!354560 (++!12819 (++!12819 lt!2091863 lt!2091860) lt!2091857))))

(declare-fun b!5087647 () Bool)

(assert (=> b!5087647 (= e!3173022 (= call!354561 call!354559))))

(declare-fun d!1646857 () Bool)

(assert (=> d!1646857 e!3173022))

(declare-fun c!874150 () Bool)

(assert (=> d!1646857 (= c!874150 ((_ is Nil!58462) (++!12819 lt!2091863 lt!2091860)))))

(assert (=> d!1646857 (= (appendAssoc!318 (++!12819 lt!2091863 lt!2091860) lt!2091857 lt!2091858) true)))

(declare-fun bm!354555 () Bool)

(declare-fun call!354558 () List!58586)

(assert (=> bm!354555 (= call!354558 (++!12819 lt!2091857 lt!2091858))))

(declare-fun bm!354556 () Bool)

(assert (=> bm!354556 (= call!354559 (++!12819 (++!12819 lt!2091863 lt!2091860) call!354558))))

(assert (= (and d!1646857 c!874150) b!5087647))

(assert (= (and d!1646857 (not c!874150)) b!5087646))

(assert (= (or b!5087647 b!5087646) bm!354554))

(assert (= (or b!5087647 b!5087646) bm!354555))

(assert (= (or b!5087647 b!5087646) bm!354556))

(assert (= (or b!5087647 b!5087646) bm!354553))

(declare-fun m!6145528 () Bool)

(assert (=> b!5087646 m!6145528))

(assert (=> bm!354556 m!6145454))

(declare-fun m!6145530 () Bool)

(assert (=> bm!354556 m!6145530))

(declare-fun m!6145532 () Bool)

(assert (=> bm!354553 m!6145532))

(assert (=> bm!354554 m!6145454))

(declare-fun m!6145534 () Bool)

(assert (=> bm!354554 m!6145534))

(declare-fun m!6145536 () Bool)

(assert (=> bm!354555 m!6145536))

(assert (=> b!5087577 d!1646857))

(declare-fun b!5087689 () Bool)

(declare-fun e!3173048 () List!58586)

(assert (=> b!5087689 (= e!3173048 (Cons!58462 (h!64910 lt!2091863) (++!12819 (t!371447 lt!2091863) lt!2091860)))))

(declare-fun b!5087690 () Bool)

(declare-fun res!2165895 () Bool)

(declare-fun e!3173049 () Bool)

(assert (=> b!5087690 (=> (not res!2165895) (not e!3173049))))

(declare-fun lt!2091877 () List!58586)

(assert (=> b!5087690 (= res!2165895 (= (size!39130 lt!2091877) (+ (size!39130 lt!2091863) (size!39130 lt!2091860))))))

(declare-fun b!5087688 () Bool)

(assert (=> b!5087688 (= e!3173048 lt!2091860)))

(declare-fun d!1646859 () Bool)

(assert (=> d!1646859 e!3173049))

(declare-fun res!2165894 () Bool)

(assert (=> d!1646859 (=> (not res!2165894) (not e!3173049))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10433 (List!58586) (InoxSet T!105314))

(assert (=> d!1646859 (= res!2165894 (= (content!10433 lt!2091877) ((_ map or) (content!10433 lt!2091863) (content!10433 lt!2091860))))))

(assert (=> d!1646859 (= lt!2091877 e!3173048)))

(declare-fun c!874165 () Bool)

(assert (=> d!1646859 (= c!874165 ((_ is Nil!58462) lt!2091863))))

(assert (=> d!1646859 (= (++!12819 lt!2091863 lt!2091860) lt!2091877)))

(declare-fun b!5087691 () Bool)

(assert (=> b!5087691 (= e!3173049 (or (not (= lt!2091860 Nil!58462)) (= lt!2091877 lt!2091863)))))

(assert (= (and d!1646859 c!874165) b!5087688))

(assert (= (and d!1646859 (not c!874165)) b!5087689))

(assert (= (and d!1646859 res!2165894) b!5087690))

(assert (= (and b!5087690 res!2165895) b!5087691))

(declare-fun m!6145600 () Bool)

(assert (=> b!5087689 m!6145600))

(declare-fun m!6145602 () Bool)

(assert (=> b!5087690 m!6145602))

(declare-fun m!6145604 () Bool)

(assert (=> b!5087690 m!6145604))

(declare-fun m!6145606 () Bool)

(assert (=> b!5087690 m!6145606))

(declare-fun m!6145608 () Bool)

(assert (=> d!1646859 m!6145608))

(declare-fun m!6145610 () Bool)

(assert (=> d!1646859 m!6145610))

(declare-fun m!6145612 () Bool)

(assert (=> d!1646859 m!6145612))

(assert (=> b!5087577 d!1646859))

(declare-fun bm!354565 () Bool)

(declare-fun call!354573 () List!58586)

(declare-fun call!354572 () List!58586)

(assert (=> bm!354565 (= call!354573 (++!12819 call!354572 lt!2091864))))

(declare-fun b!5087692 () Bool)

(declare-fun e!3173050 () Bool)

(declare-fun call!354571 () List!58586)

(assert (=> b!5087692 (= e!3173050 (= call!354573 call!354571))))

(declare-fun lt!2091878 () Bool)

(assert (=> b!5087692 (= lt!2091878 (appendAssoc!318 (t!371447 lt!2091862) lt!2091861 lt!2091864))))

(declare-fun bm!354566 () Bool)

(assert (=> bm!354566 (= call!354572 (++!12819 lt!2091862 lt!2091861))))

(declare-fun b!5087693 () Bool)

(assert (=> b!5087693 (= e!3173050 (= call!354573 call!354571))))

(declare-fun d!1646885 () Bool)

(assert (=> d!1646885 e!3173050))

(declare-fun c!874166 () Bool)

(assert (=> d!1646885 (= c!874166 ((_ is Nil!58462) lt!2091862))))

(assert (=> d!1646885 (= (appendAssoc!318 lt!2091862 lt!2091861 lt!2091864) true)))

(declare-fun bm!354567 () Bool)

(declare-fun call!354570 () List!58586)

(assert (=> bm!354567 (= call!354570 (++!12819 lt!2091861 lt!2091864))))

(declare-fun bm!354568 () Bool)

(assert (=> bm!354568 (= call!354571 (++!12819 lt!2091862 call!354570))))

(assert (= (and d!1646885 c!874166) b!5087693))

(assert (= (and d!1646885 (not c!874166)) b!5087692))

(assert (= (or b!5087693 b!5087692) bm!354566))

(assert (= (or b!5087693 b!5087692) bm!354567))

(assert (= (or b!5087693 b!5087692) bm!354568))

(assert (= (or b!5087693 b!5087692) bm!354565))

(declare-fun m!6145614 () Bool)

(assert (=> b!5087692 m!6145614))

(declare-fun m!6145616 () Bool)

(assert (=> bm!354568 m!6145616))

(declare-fun m!6145618 () Bool)

(assert (=> bm!354565 m!6145618))

(declare-fun m!6145620 () Bool)

(assert (=> bm!354566 m!6145620))

(declare-fun m!6145622 () Bool)

(assert (=> bm!354567 m!6145622))

(assert (=> b!5087578 d!1646885))

(declare-fun d!1646887 () Bool)

(declare-fun c!874167 () Bool)

(assert (=> d!1646887 (= c!874167 ((_ is Empty!15592) ys!102))))

(declare-fun e!3173051 () List!58586)

(assert (=> d!1646887 (= (list!19045 ys!102) e!3173051)))

(declare-fun b!5087694 () Bool)

(assert (=> b!5087694 (= e!3173051 Nil!58462)))

(declare-fun b!5087696 () Bool)

(declare-fun e!3173052 () List!58586)

(assert (=> b!5087696 (= e!3173052 (list!19047 (xs!18974 ys!102)))))

(declare-fun b!5087695 () Bool)

(assert (=> b!5087695 (= e!3173051 e!3173052)))

(declare-fun c!874168 () Bool)

(assert (=> b!5087695 (= c!874168 ((_ is Leaf!25893) ys!102))))

(declare-fun b!5087697 () Bool)

(assert (=> b!5087697 (= e!3173052 (++!12819 (list!19045 (left!42858 ys!102)) (list!19045 (right!43188 ys!102))))))

(assert (= (and d!1646887 c!874167) b!5087694))

(assert (= (and d!1646887 (not c!874167)) b!5087695))

(assert (= (and b!5087695 c!874168) b!5087696))

(assert (= (and b!5087695 (not c!874168)) b!5087697))

(declare-fun m!6145624 () Bool)

(assert (=> b!5087696 m!6145624))

(assert (=> b!5087697 m!6145462))

(assert (=> b!5087697 m!6145460))

(assert (=> b!5087697 m!6145462))

(assert (=> b!5087697 m!6145460))

(declare-fun m!6145626 () Bool)

(assert (=> b!5087697 m!6145626))

(assert (=> b!5087578 d!1646887))

(declare-fun d!1646889 () Bool)

(declare-fun c!874171 () Bool)

(assert (=> d!1646889 (= c!874171 ((_ is Empty!15592) (right!43188 xs!399)))))

(declare-fun e!3173057 () List!58586)

(assert (=> d!1646889 (= (list!19045 (right!43188 xs!399)) e!3173057)))

(declare-fun b!5087704 () Bool)

(assert (=> b!5087704 (= e!3173057 Nil!58462)))

(declare-fun b!5087707 () Bool)

(declare-fun e!3173058 () List!58586)

(assert (=> b!5087707 (= e!3173058 (list!19047 (xs!18974 (right!43188 xs!399))))))

(declare-fun b!5087705 () Bool)

(assert (=> b!5087705 (= e!3173057 e!3173058)))

(declare-fun c!874172 () Bool)

(assert (=> b!5087705 (= c!874172 ((_ is Leaf!25893) (right!43188 xs!399)))))

(declare-fun b!5087709 () Bool)

(assert (=> b!5087709 (= e!3173058 (++!12819 (list!19045 (left!42858 (right!43188 xs!399))) (list!19045 (right!43188 (right!43188 xs!399)))))))

(assert (= (and d!1646889 c!874171) b!5087704))

(assert (= (and d!1646889 (not c!874171)) b!5087705))

(assert (= (and b!5087705 c!874172) b!5087707))

(assert (= (and b!5087705 (not c!874172)) b!5087709))

(declare-fun m!6145628 () Bool)

(assert (=> b!5087707 m!6145628))

(assert (=> b!5087709 m!6145446))

(assert (=> b!5087709 m!6145444))

(assert (=> b!5087709 m!6145446))

(assert (=> b!5087709 m!6145444))

(declare-fun m!6145630 () Bool)

(assert (=> b!5087709 m!6145630))

(assert (=> b!5087578 d!1646889))

(declare-fun d!1646891 () Bool)

(declare-fun c!874173 () Bool)

(assert (=> d!1646891 (= c!874173 ((_ is Empty!15592) (left!42858 xs!399)))))

(declare-fun e!3173059 () List!58586)

(assert (=> d!1646891 (= (list!19045 (left!42858 xs!399)) e!3173059)))

(declare-fun b!5087710 () Bool)

(assert (=> b!5087710 (= e!3173059 Nil!58462)))

(declare-fun b!5087712 () Bool)

(declare-fun e!3173060 () List!58586)

(assert (=> b!5087712 (= e!3173060 (list!19047 (xs!18974 (left!42858 xs!399))))))

(declare-fun b!5087711 () Bool)

(assert (=> b!5087711 (= e!3173059 e!3173060)))

(declare-fun c!874174 () Bool)

(assert (=> b!5087711 (= c!874174 ((_ is Leaf!25893) (left!42858 xs!399)))))

(declare-fun b!5087713 () Bool)

(assert (=> b!5087713 (= e!3173060 (++!12819 (list!19045 (left!42858 (left!42858 xs!399))) (list!19045 (right!43188 (left!42858 xs!399)))))))

(assert (= (and d!1646891 c!874173) b!5087710))

(assert (= (and d!1646891 (not c!874173)) b!5087711))

(assert (= (and b!5087711 c!874174) b!5087712))

(assert (= (and b!5087711 (not c!874174)) b!5087713))

(declare-fun m!6145632 () Bool)

(assert (=> b!5087712 m!6145632))

(declare-fun m!6145634 () Bool)

(assert (=> b!5087713 m!6145634))

(declare-fun m!6145636 () Bool)

(assert (=> b!5087713 m!6145636))

(assert (=> b!5087713 m!6145634))

(assert (=> b!5087713 m!6145636))

(declare-fun m!6145638 () Bool)

(assert (=> b!5087713 m!6145638))

(assert (=> b!5087578 d!1646891))

(declare-fun d!1646893 () Bool)

(declare-fun c!874175 () Bool)

(assert (=> d!1646893 (= c!874175 ((_ is Node!15592) (left!42858 ys!102)))))

(declare-fun e!3173061 () Bool)

(assert (=> d!1646893 (= (inv!77709 (left!42858 ys!102)) e!3173061)))

(declare-fun b!5087714 () Bool)

(assert (=> b!5087714 (= e!3173061 (inv!77711 (left!42858 ys!102)))))

(declare-fun b!5087715 () Bool)

(declare-fun e!3173062 () Bool)

(assert (=> b!5087715 (= e!3173061 e!3173062)))

(declare-fun res!2165900 () Bool)

(assert (=> b!5087715 (= res!2165900 (not ((_ is Leaf!25893) (left!42858 ys!102))))))

(assert (=> b!5087715 (=> res!2165900 e!3173062)))

(declare-fun b!5087716 () Bool)

(assert (=> b!5087716 (= e!3173062 (inv!77712 (left!42858 ys!102)))))

(assert (= (and d!1646893 c!874175) b!5087714))

(assert (= (and d!1646893 (not c!874175)) b!5087715))

(assert (= (and b!5087715 (not res!2165900)) b!5087716))

(declare-fun m!6145640 () Bool)

(assert (=> b!5087714 m!6145640))

(declare-fun m!6145642 () Bool)

(assert (=> b!5087716 m!6145642))

(assert (=> b!5087574 d!1646893))

(declare-fun d!1646895 () Bool)

(declare-fun c!874176 () Bool)

(assert (=> d!1646895 (= c!874176 ((_ is Node!15592) (right!43188 ys!102)))))

(declare-fun e!3173063 () Bool)

(assert (=> d!1646895 (= (inv!77709 (right!43188 ys!102)) e!3173063)))

(declare-fun b!5087717 () Bool)

(assert (=> b!5087717 (= e!3173063 (inv!77711 (right!43188 ys!102)))))

(declare-fun b!5087718 () Bool)

(declare-fun e!3173064 () Bool)

(assert (=> b!5087718 (= e!3173063 e!3173064)))

(declare-fun res!2165901 () Bool)

(assert (=> b!5087718 (= res!2165901 (not ((_ is Leaf!25893) (right!43188 ys!102))))))

(assert (=> b!5087718 (=> res!2165901 e!3173064)))

(declare-fun b!5087719 () Bool)

(assert (=> b!5087719 (= e!3173064 (inv!77712 (right!43188 ys!102)))))

(assert (= (and d!1646895 c!874176) b!5087717))

(assert (= (and d!1646895 (not c!874176)) b!5087718))

(assert (= (and b!5087718 (not res!2165901)) b!5087719))

(declare-fun m!6145644 () Bool)

(assert (=> b!5087717 m!6145644))

(declare-fun m!6145646 () Bool)

(assert (=> b!5087719 m!6145646))

(assert (=> b!5087574 d!1646895))

(declare-fun call!354577 () List!58586)

(declare-fun call!354576 () List!58586)

(declare-fun bm!354569 () Bool)

(assert (=> bm!354569 (= call!354577 (++!12819 call!354576 (++!12819 lt!2091859 lt!2091864)))))

(declare-fun b!5087720 () Bool)

(declare-fun e!3173065 () Bool)

(declare-fun call!354575 () List!58586)

(assert (=> b!5087720 (= e!3173065 (= call!354577 call!354575))))

(declare-fun lt!2091881 () Bool)

(assert (=> b!5087720 (= lt!2091881 (appendAssoc!318 (t!371447 lt!2091862) lt!2091856 (++!12819 lt!2091859 lt!2091864)))))

(declare-fun bm!354570 () Bool)

(assert (=> bm!354570 (= call!354576 (++!12819 lt!2091862 lt!2091856))))

(declare-fun b!5087721 () Bool)

(assert (=> b!5087721 (= e!3173065 (= call!354577 call!354575))))

(declare-fun d!1646897 () Bool)

(assert (=> d!1646897 e!3173065))

(declare-fun c!874177 () Bool)

(assert (=> d!1646897 (= c!874177 ((_ is Nil!58462) lt!2091862))))

(assert (=> d!1646897 (= (appendAssoc!318 lt!2091862 lt!2091856 (++!12819 lt!2091859 lt!2091864)) true)))

(declare-fun call!354574 () List!58586)

(declare-fun bm!354571 () Bool)

(assert (=> bm!354571 (= call!354574 (++!12819 lt!2091856 (++!12819 lt!2091859 lt!2091864)))))

(declare-fun bm!354572 () Bool)

(assert (=> bm!354572 (= call!354575 (++!12819 lt!2091862 call!354574))))

(assert (= (and d!1646897 c!874177) b!5087721))

(assert (= (and d!1646897 (not c!874177)) b!5087720))

(assert (= (or b!5087721 b!5087720) bm!354570))

(assert (= (or b!5087721 b!5087720) bm!354571))

(assert (= (or b!5087721 b!5087720) bm!354572))

(assert (= (or b!5087721 b!5087720) bm!354569))

(assert (=> b!5087720 m!6145414))

(declare-fun m!6145648 () Bool)

(assert (=> b!5087720 m!6145648))

(declare-fun m!6145650 () Bool)

(assert (=> bm!354572 m!6145650))

(assert (=> bm!354569 m!6145414))

(declare-fun m!6145652 () Bool)

(assert (=> bm!354569 m!6145652))

(declare-fun m!6145654 () Bool)

(assert (=> bm!354570 m!6145654))

(assert (=> bm!354571 m!6145414))

(declare-fun m!6145656 () Bool)

(assert (=> bm!354571 m!6145656))

(assert (=> b!5087575 d!1646897))

(declare-fun b!5087727 () Bool)

(declare-fun e!3173068 () List!58586)

(assert (=> b!5087727 (= e!3173068 (Cons!58462 (h!64910 lt!2091859) (++!12819 (t!371447 lt!2091859) lt!2091864)))))

(declare-fun b!5087728 () Bool)

(declare-fun res!2165905 () Bool)

(declare-fun e!3173069 () Bool)

(assert (=> b!5087728 (=> (not res!2165905) (not e!3173069))))

(declare-fun lt!2091883 () List!58586)

(assert (=> b!5087728 (= res!2165905 (= (size!39130 lt!2091883) (+ (size!39130 lt!2091859) (size!39130 lt!2091864))))))

(declare-fun b!5087726 () Bool)

(assert (=> b!5087726 (= e!3173068 lt!2091864)))

(declare-fun d!1646899 () Bool)

(assert (=> d!1646899 e!3173069))

(declare-fun res!2165904 () Bool)

(assert (=> d!1646899 (=> (not res!2165904) (not e!3173069))))

(assert (=> d!1646899 (= res!2165904 (= (content!10433 lt!2091883) ((_ map or) (content!10433 lt!2091859) (content!10433 lt!2091864))))))

(assert (=> d!1646899 (= lt!2091883 e!3173068)))

(declare-fun c!874179 () Bool)

(assert (=> d!1646899 (= c!874179 ((_ is Nil!58462) lt!2091859))))

(assert (=> d!1646899 (= (++!12819 lt!2091859 lt!2091864) lt!2091883)))

(declare-fun b!5087729 () Bool)

(assert (=> b!5087729 (= e!3173069 (or (not (= lt!2091864 Nil!58462)) (= lt!2091883 lt!2091859)))))

(assert (= (and d!1646899 c!874179) b!5087726))

(assert (= (and d!1646899 (not c!874179)) b!5087727))

(assert (= (and d!1646899 res!2165904) b!5087728))

(assert (= (and b!5087728 res!2165905) b!5087729))

(declare-fun m!6145670 () Bool)

(assert (=> b!5087727 m!6145670))

(declare-fun m!6145674 () Bool)

(assert (=> b!5087728 m!6145674))

(declare-fun m!6145676 () Bool)

(assert (=> b!5087728 m!6145676))

(declare-fun m!6145678 () Bool)

(assert (=> b!5087728 m!6145678))

(declare-fun m!6145680 () Bool)

(assert (=> d!1646899 m!6145680))

(declare-fun m!6145682 () Bool)

(assert (=> d!1646899 m!6145682))

(declare-fun m!6145684 () Bool)

(assert (=> d!1646899 m!6145684))

(assert (=> b!5087575 d!1646899))

(declare-fun d!1646903 () Bool)

(declare-fun c!874181 () Bool)

(assert (=> d!1646903 (= c!874181 ((_ is Node!15592) xs!399))))

(declare-fun e!3173071 () Bool)

(assert (=> d!1646903 (= (inv!77709 xs!399) e!3173071)))

(declare-fun b!5087732 () Bool)

(assert (=> b!5087732 (= e!3173071 (inv!77711 xs!399))))

(declare-fun b!5087733 () Bool)

(declare-fun e!3173072 () Bool)

(assert (=> b!5087733 (= e!3173071 e!3173072)))

(declare-fun res!2165906 () Bool)

(assert (=> b!5087733 (= res!2165906 (not ((_ is Leaf!25893) xs!399)))))

(assert (=> b!5087733 (=> res!2165906 e!3173072)))

(declare-fun b!5087734 () Bool)

(assert (=> b!5087734 (= e!3173072 (inv!77712 xs!399))))

(assert (= (and d!1646903 c!874181) b!5087732))

(assert (= (and d!1646903 (not c!874181)) b!5087733))

(assert (= (and b!5087733 (not res!2165906)) b!5087734))

(declare-fun m!6145686 () Bool)

(assert (=> b!5087732 m!6145686))

(declare-fun m!6145688 () Bool)

(assert (=> b!5087734 m!6145688))

(assert (=> start!535986 d!1646903))

(declare-fun d!1646905 () Bool)

(declare-fun c!874182 () Bool)

(assert (=> d!1646905 (= c!874182 ((_ is Node!15592) ys!102))))

(declare-fun e!3173073 () Bool)

(assert (=> d!1646905 (= (inv!77709 ys!102) e!3173073)))

(declare-fun b!5087735 () Bool)

(assert (=> b!5087735 (= e!3173073 (inv!77711 ys!102))))

(declare-fun b!5087736 () Bool)

(declare-fun e!3173074 () Bool)

(assert (=> b!5087736 (= e!3173073 e!3173074)))

(declare-fun res!2165907 () Bool)

(assert (=> b!5087736 (= res!2165907 (not ((_ is Leaf!25893) ys!102)))))

(assert (=> b!5087736 (=> res!2165907 e!3173074)))

(declare-fun b!5087737 () Bool)

(assert (=> b!5087737 (= e!3173074 (inv!77712 ys!102))))

(assert (= (and d!1646905 c!874182) b!5087735))

(assert (= (and d!1646905 (not c!874182)) b!5087736))

(assert (= (and b!5087736 (not res!2165907)) b!5087737))

(declare-fun m!6145700 () Bool)

(assert (=> b!5087735 m!6145700))

(declare-fun m!6145702 () Bool)

(assert (=> b!5087737 m!6145702))

(assert (=> start!535986 d!1646905))

(declare-fun bm!354577 () Bool)

(declare-fun call!354585 () List!58586)

(declare-fun call!354584 () List!58586)

(assert (=> bm!354577 (= call!354585 (++!12819 call!354584 lt!2091864))))

(declare-fun b!5087742 () Bool)

(declare-fun e!3173077 () Bool)

(declare-fun call!354583 () List!58586)

(assert (=> b!5087742 (= e!3173077 (= call!354585 call!354583))))

(declare-fun lt!2091885 () Bool)

(assert (=> b!5087742 (= lt!2091885 (appendAssoc!318 (t!371447 lt!2091856) lt!2091859 lt!2091864))))

(declare-fun bm!354578 () Bool)

(assert (=> bm!354578 (= call!354584 (++!12819 lt!2091856 lt!2091859))))

(declare-fun b!5087743 () Bool)

(assert (=> b!5087743 (= e!3173077 (= call!354585 call!354583))))

(declare-fun d!1646909 () Bool)

(assert (=> d!1646909 e!3173077))

(declare-fun c!874185 () Bool)

(assert (=> d!1646909 (= c!874185 ((_ is Nil!58462) lt!2091856))))

(assert (=> d!1646909 (= (appendAssoc!318 lt!2091856 lt!2091859 lt!2091864) true)))

(declare-fun bm!354579 () Bool)

(declare-fun call!354582 () List!58586)

(assert (=> bm!354579 (= call!354582 (++!12819 lt!2091859 lt!2091864))))

(declare-fun bm!354580 () Bool)

(assert (=> bm!354580 (= call!354583 (++!12819 lt!2091856 call!354582))))

(assert (= (and d!1646909 c!874185) b!5087743))

(assert (= (and d!1646909 (not c!874185)) b!5087742))

(assert (= (or b!5087743 b!5087742) bm!354578))

(assert (= (or b!5087743 b!5087742) bm!354579))

(assert (= (or b!5087743 b!5087742) bm!354580))

(assert (= (or b!5087743 b!5087742) bm!354577))

(declare-fun m!6145708 () Bool)

(assert (=> b!5087742 m!6145708))

(declare-fun m!6145710 () Bool)

(assert (=> bm!354580 m!6145710))

(declare-fun m!6145712 () Bool)

(assert (=> bm!354577 m!6145712))

(declare-fun m!6145714 () Bool)

(assert (=> bm!354578 m!6145714))

(assert (=> bm!354579 m!6145414))

(assert (=> b!5087571 d!1646909))

(declare-fun d!1646913 () Bool)

(declare-fun c!874188 () Bool)

(assert (=> d!1646913 (= c!874188 ((_ is Empty!15592) (right!43188 (right!43188 xs!399))))))

(declare-fun e!3173080 () List!58586)

(assert (=> d!1646913 (= (list!19045 (right!43188 (right!43188 xs!399))) e!3173080)))

(declare-fun b!5087748 () Bool)

(assert (=> b!5087748 (= e!3173080 Nil!58462)))

(declare-fun b!5087750 () Bool)

(declare-fun e!3173081 () List!58586)

(assert (=> b!5087750 (= e!3173081 (list!19047 (xs!18974 (right!43188 (right!43188 xs!399)))))))

(declare-fun b!5087749 () Bool)

(assert (=> b!5087749 (= e!3173080 e!3173081)))

(declare-fun c!874189 () Bool)

(assert (=> b!5087749 (= c!874189 ((_ is Leaf!25893) (right!43188 (right!43188 xs!399))))))

(declare-fun b!5087751 () Bool)

(assert (=> b!5087751 (= e!3173081 (++!12819 (list!19045 (left!42858 (right!43188 (right!43188 xs!399)))) (list!19045 (right!43188 (right!43188 (right!43188 xs!399))))))))

(assert (= (and d!1646913 c!874188) b!5087748))

(assert (= (and d!1646913 (not c!874188)) b!5087749))

(assert (= (and b!5087749 c!874189) b!5087750))

(assert (= (and b!5087749 (not c!874189)) b!5087751))

(declare-fun m!6145722 () Bool)

(assert (=> b!5087750 m!6145722))

(declare-fun m!6145726 () Bool)

(assert (=> b!5087751 m!6145726))

(declare-fun m!6145730 () Bool)

(assert (=> b!5087751 m!6145730))

(assert (=> b!5087751 m!6145726))

(assert (=> b!5087751 m!6145730))

(declare-fun m!6145734 () Bool)

(assert (=> b!5087751 m!6145734))

(assert (=> b!5087571 d!1646913))

(declare-fun d!1646919 () Bool)

(declare-fun c!874193 () Bool)

(assert (=> d!1646919 (= c!874193 ((_ is Empty!15592) (left!42858 (right!43188 xs!399))))))

(declare-fun e!3173085 () List!58586)

(assert (=> d!1646919 (= (list!19045 (left!42858 (right!43188 xs!399))) e!3173085)))

(declare-fun b!5087758 () Bool)

(assert (=> b!5087758 (= e!3173085 Nil!58462)))

(declare-fun b!5087760 () Bool)

(declare-fun e!3173086 () List!58586)

(assert (=> b!5087760 (= e!3173086 (list!19047 (xs!18974 (left!42858 (right!43188 xs!399)))))))

(declare-fun b!5087759 () Bool)

(assert (=> b!5087759 (= e!3173085 e!3173086)))

(declare-fun c!874194 () Bool)

(assert (=> b!5087759 (= c!874194 ((_ is Leaf!25893) (left!42858 (right!43188 xs!399))))))

(declare-fun b!5087761 () Bool)

(assert (=> b!5087761 (= e!3173086 (++!12819 (list!19045 (left!42858 (left!42858 (right!43188 xs!399)))) (list!19045 (right!43188 (left!42858 (right!43188 xs!399))))))))

(assert (= (and d!1646919 c!874193) b!5087758))

(assert (= (and d!1646919 (not c!874193)) b!5087759))

(assert (= (and b!5087759 c!874194) b!5087760))

(assert (= (and b!5087759 (not c!874194)) b!5087761))

(declare-fun m!6145736 () Bool)

(assert (=> b!5087760 m!6145736))

(declare-fun m!6145740 () Bool)

(assert (=> b!5087761 m!6145740))

(declare-fun m!6145744 () Bool)

(assert (=> b!5087761 m!6145744))

(assert (=> b!5087761 m!6145740))

(assert (=> b!5087761 m!6145744))

(declare-fun m!6145750 () Bool)

(assert (=> b!5087761 m!6145750))

(assert (=> b!5087571 d!1646919))

(declare-fun bm!354585 () Bool)

(declare-fun call!354593 () List!58586)

(declare-fun call!354592 () List!58586)

(assert (=> bm!354585 (= call!354593 (++!12819 call!354592 lt!2091858))))

(declare-fun b!5087766 () Bool)

(declare-fun e!3173089 () Bool)

(declare-fun call!354591 () List!58586)

(assert (=> b!5087766 (= e!3173089 (= call!354593 call!354591))))

(declare-fun lt!2091887 () Bool)

(assert (=> b!5087766 (= lt!2091887 (appendAssoc!318 (t!371447 lt!2091863) lt!2091865 lt!2091858))))

(declare-fun bm!354586 () Bool)

(assert (=> bm!354586 (= call!354592 (++!12819 lt!2091863 lt!2091865))))

(declare-fun b!5087767 () Bool)

(assert (=> b!5087767 (= e!3173089 (= call!354593 call!354591))))

(declare-fun d!1646923 () Bool)

(assert (=> d!1646923 e!3173089))

(declare-fun c!874197 () Bool)

(assert (=> d!1646923 (= c!874197 ((_ is Nil!58462) lt!2091863))))

(assert (=> d!1646923 (= (appendAssoc!318 lt!2091863 lt!2091865 lt!2091858) true)))

(declare-fun bm!354587 () Bool)

(declare-fun call!354590 () List!58586)

(assert (=> bm!354587 (= call!354590 (++!12819 lt!2091865 lt!2091858))))

(declare-fun bm!354588 () Bool)

(assert (=> bm!354588 (= call!354591 (++!12819 lt!2091863 call!354590))))

(assert (= (and d!1646923 c!874197) b!5087767))

(assert (= (and d!1646923 (not c!874197)) b!5087766))

(assert (= (or b!5087767 b!5087766) bm!354586))

(assert (= (or b!5087767 b!5087766) bm!354587))

(assert (= (or b!5087767 b!5087766) bm!354588))

(assert (= (or b!5087767 b!5087766) bm!354585))

(declare-fun m!6145760 () Bool)

(assert (=> b!5087766 m!6145760))

(declare-fun m!6145762 () Bool)

(assert (=> bm!354588 m!6145762))

(declare-fun m!6145764 () Bool)

(assert (=> bm!354585 m!6145764))

(declare-fun m!6145766 () Bool)

(assert (=> bm!354586 m!6145766))

(declare-fun m!6145768 () Bool)

(assert (=> bm!354587 m!6145768))

(assert (=> b!5087572 d!1646923))

(declare-fun d!1646927 () Bool)

(declare-fun c!874200 () Bool)

(assert (=> d!1646927 (= c!874200 ((_ is Empty!15592) (right!43188 ys!102)))))

(declare-fun e!3173092 () List!58586)

(assert (=> d!1646927 (= (list!19045 (right!43188 ys!102)) e!3173092)))

(declare-fun b!5087772 () Bool)

(assert (=> b!5087772 (= e!3173092 Nil!58462)))

(declare-fun b!5087774 () Bool)

(declare-fun e!3173093 () List!58586)

(assert (=> b!5087774 (= e!3173093 (list!19047 (xs!18974 (right!43188 ys!102))))))

(declare-fun b!5087773 () Bool)

(assert (=> b!5087773 (= e!3173092 e!3173093)))

(declare-fun c!874201 () Bool)

(assert (=> b!5087773 (= c!874201 ((_ is Leaf!25893) (right!43188 ys!102)))))

(declare-fun b!5087775 () Bool)

(assert (=> b!5087775 (= e!3173093 (++!12819 (list!19045 (left!42858 (right!43188 ys!102))) (list!19045 (right!43188 (right!43188 ys!102)))))))

(assert (= (and d!1646927 c!874200) b!5087772))

(assert (= (and d!1646927 (not c!874200)) b!5087773))

(assert (= (and b!5087773 c!874201) b!5087774))

(assert (= (and b!5087773 (not c!874201)) b!5087775))

(declare-fun m!6145778 () Bool)

(assert (=> b!5087774 m!6145778))

(declare-fun m!6145780 () Bool)

(assert (=> b!5087775 m!6145780))

(declare-fun m!6145782 () Bool)

(assert (=> b!5087775 m!6145782))

(assert (=> b!5087775 m!6145780))

(assert (=> b!5087775 m!6145782))

(declare-fun m!6145784 () Bool)

(assert (=> b!5087775 m!6145784))

(assert (=> b!5087572 d!1646927))

(declare-fun d!1646931 () Bool)

(declare-fun c!874203 () Bool)

(assert (=> d!1646931 (= c!874203 ((_ is Empty!15592) (left!42858 ys!102)))))

(declare-fun e!3173095 () List!58586)

(assert (=> d!1646931 (= (list!19045 (left!42858 ys!102)) e!3173095)))

(declare-fun b!5087778 () Bool)

(assert (=> b!5087778 (= e!3173095 Nil!58462)))

(declare-fun b!5087780 () Bool)

(declare-fun e!3173096 () List!58586)

(assert (=> b!5087780 (= e!3173096 (list!19047 (xs!18974 (left!42858 ys!102))))))

(declare-fun b!5087779 () Bool)

(assert (=> b!5087779 (= e!3173095 e!3173096)))

(declare-fun c!874204 () Bool)

(assert (=> b!5087779 (= c!874204 ((_ is Leaf!25893) (left!42858 ys!102)))))

(declare-fun b!5087781 () Bool)

(assert (=> b!5087781 (= e!3173096 (++!12819 (list!19045 (left!42858 (left!42858 ys!102))) (list!19045 (right!43188 (left!42858 ys!102)))))))

(assert (= (and d!1646931 c!874203) b!5087778))

(assert (= (and d!1646931 (not c!874203)) b!5087779))

(assert (= (and b!5087779 c!874204) b!5087780))

(assert (= (and b!5087779 (not c!874204)) b!5087781))

(declare-fun m!6145796 () Bool)

(assert (=> b!5087780 m!6145796))

(assert (=> b!5087781 m!6145452))

(assert (=> b!5087781 m!6145450))

(assert (=> b!5087781 m!6145452))

(assert (=> b!5087781 m!6145450))

(declare-fun m!6145798 () Bool)

(assert (=> b!5087781 m!6145798))

(assert (=> b!5087572 d!1646931))

(declare-fun d!1646935 () Bool)

(declare-fun c!874206 () Bool)

(assert (=> d!1646935 (= c!874206 ((_ is Empty!15592) xs!399))))

(declare-fun e!3173099 () List!58586)

(assert (=> d!1646935 (= (list!19045 xs!399) e!3173099)))

(declare-fun b!5087786 () Bool)

(assert (=> b!5087786 (= e!3173099 Nil!58462)))

(declare-fun b!5087788 () Bool)

(declare-fun e!3173100 () List!58586)

(assert (=> b!5087788 (= e!3173100 (list!19047 (xs!18974 xs!399)))))

(declare-fun b!5087787 () Bool)

(assert (=> b!5087787 (= e!3173099 e!3173100)))

(declare-fun c!874207 () Bool)

(assert (=> b!5087787 (= c!874207 ((_ is Leaf!25893) xs!399))))

(declare-fun b!5087789 () Bool)

(assert (=> b!5087789 (= e!3173100 (++!12819 (list!19045 (left!42858 xs!399)) (list!19045 (right!43188 xs!399))))))

(assert (= (and d!1646935 c!874206) b!5087786))

(assert (= (and d!1646935 (not c!874206)) b!5087787))

(assert (= (and b!5087787 c!874207) b!5087788))

(assert (= (and b!5087787 (not c!874207)) b!5087789))

(declare-fun m!6145814 () Bool)

(assert (=> b!5087788 m!6145814))

(assert (=> b!5087789 m!6145426))

(assert (=> b!5087789 m!6145424))

(assert (=> b!5087789 m!6145426))

(assert (=> b!5087789 m!6145424))

(declare-fun m!6145816 () Bool)

(assert (=> b!5087789 m!6145816))

(assert (=> b!5087572 d!1646935))

(declare-fun tp!1418321 () Bool)

(declare-fun e!3173114 () Bool)

(declare-fun b!5087814 () Bool)

(declare-fun tp!1418322 () Bool)

(assert (=> b!5087814 (= e!3173114 (and (inv!77709 (left!42858 (left!42858 ys!102))) tp!1418322 (inv!77709 (right!43188 (left!42858 ys!102))) tp!1418321))))

(declare-fun b!5087816 () Bool)

(declare-fun e!3173115 () Bool)

(declare-fun tp!1418320 () Bool)

(assert (=> b!5087816 (= e!3173115 tp!1418320)))

(declare-fun b!5087815 () Bool)

(assert (=> b!5087815 (= e!3173114 (and (inv!77710 (xs!18974 (left!42858 ys!102))) e!3173115))))

(assert (=> b!5087574 (= tp!1418297 (and (inv!77709 (left!42858 ys!102)) e!3173114))))

(assert (= (and b!5087574 ((_ is Node!15592) (left!42858 ys!102))) b!5087814))

(assert (= b!5087815 b!5087816))

(assert (= (and b!5087574 ((_ is Leaf!25893) (left!42858 ys!102))) b!5087815))

(declare-fun m!6145824 () Bool)

(assert (=> b!5087814 m!6145824))

(declare-fun m!6145826 () Bool)

(assert (=> b!5087814 m!6145826))

(declare-fun m!6145828 () Bool)

(assert (=> b!5087815 m!6145828))

(assert (=> b!5087574 m!6145436))

(declare-fun tp!1418328 () Bool)

(declare-fun e!3173118 () Bool)

(declare-fun b!5087820 () Bool)

(declare-fun tp!1418327 () Bool)

(assert (=> b!5087820 (= e!3173118 (and (inv!77709 (left!42858 (right!43188 ys!102))) tp!1418328 (inv!77709 (right!43188 (right!43188 ys!102))) tp!1418327))))

(declare-fun b!5087822 () Bool)

(declare-fun e!3173119 () Bool)

(declare-fun tp!1418326 () Bool)

(assert (=> b!5087822 (= e!3173119 tp!1418326)))

(declare-fun b!5087821 () Bool)

(assert (=> b!5087821 (= e!3173118 (and (inv!77710 (xs!18974 (right!43188 ys!102))) e!3173119))))

(assert (=> b!5087574 (= tp!1418299 (and (inv!77709 (right!43188 ys!102)) e!3173118))))

(assert (= (and b!5087574 ((_ is Node!15592) (right!43188 ys!102))) b!5087820))

(assert (= b!5087821 b!5087822))

(assert (= (and b!5087574 ((_ is Leaf!25893) (right!43188 ys!102))) b!5087821))

(declare-fun m!6145836 () Bool)

(assert (=> b!5087820 m!6145836))

(declare-fun m!6145838 () Bool)

(assert (=> b!5087820 m!6145838))

(declare-fun m!6145840 () Bool)

(assert (=> b!5087821 m!6145840))

(assert (=> b!5087574 m!6145438))

(declare-fun e!3173123 () Bool)

(declare-fun tp!1418334 () Bool)

(declare-fun b!5087827 () Bool)

(declare-fun tp!1418335 () Bool)

(assert (=> b!5087827 (= e!3173123 (and (inv!77709 (left!42858 (left!42858 xs!399))) tp!1418335 (inv!77709 (right!43188 (left!42858 xs!399))) tp!1418334))))

(declare-fun b!5087829 () Bool)

(declare-fun e!3173124 () Bool)

(declare-fun tp!1418333 () Bool)

(assert (=> b!5087829 (= e!3173124 tp!1418333)))

(declare-fun b!5087828 () Bool)

(assert (=> b!5087828 (= e!3173123 (and (inv!77710 (xs!18974 (left!42858 xs!399))) e!3173124))))

(assert (=> b!5087579 (= tp!1418296 (and (inv!77709 (left!42858 xs!399)) e!3173123))))

(assert (= (and b!5087579 ((_ is Node!15592) (left!42858 xs!399))) b!5087827))

(assert (= b!5087828 b!5087829))

(assert (= (and b!5087579 ((_ is Leaf!25893) (left!42858 xs!399))) b!5087828))

(declare-fun m!6145848 () Bool)

(assert (=> b!5087827 m!6145848))

(declare-fun m!6145850 () Bool)

(assert (=> b!5087827 m!6145850))

(declare-fun m!6145852 () Bool)

(assert (=> b!5087828 m!6145852))

(assert (=> b!5087579 m!6145428))

(declare-fun e!3173127 () Bool)

(declare-fun tp!1418341 () Bool)

(declare-fun tp!1418340 () Bool)

(declare-fun b!5087833 () Bool)

(assert (=> b!5087833 (= e!3173127 (and (inv!77709 (left!42858 (right!43188 xs!399))) tp!1418341 (inv!77709 (right!43188 (right!43188 xs!399))) tp!1418340))))

(declare-fun b!5087835 () Bool)

(declare-fun e!3173128 () Bool)

(declare-fun tp!1418339 () Bool)

(assert (=> b!5087835 (= e!3173128 tp!1418339)))

(declare-fun b!5087834 () Bool)

(assert (=> b!5087834 (= e!3173127 (and (inv!77710 (xs!18974 (right!43188 xs!399))) e!3173128))))

(assert (=> b!5087579 (= tp!1418300 (and (inv!77709 (right!43188 xs!399)) e!3173127))))

(assert (= (and b!5087579 ((_ is Node!15592) (right!43188 xs!399))) b!5087833))

(assert (= b!5087834 b!5087835))

(assert (= (and b!5087579 ((_ is Leaf!25893) (right!43188 xs!399))) b!5087834))

(declare-fun m!6145860 () Bool)

(assert (=> b!5087833 m!6145860))

(declare-fun m!6145862 () Bool)

(assert (=> b!5087833 m!6145862))

(declare-fun m!6145864 () Bool)

(assert (=> b!5087834 m!6145864))

(assert (=> b!5087579 m!6145430))

(declare-fun b!5087840 () Bool)

(declare-fun e!3173131 () Bool)

(declare-fun tp_is_empty!37107 () Bool)

(declare-fun tp!1418344 () Bool)

(assert (=> b!5087840 (= e!3173131 (and tp_is_empty!37107 tp!1418344))))

(assert (=> b!5087576 (= tp!1418301 e!3173131)))

(assert (= (and b!5087576 ((_ is Cons!58462) (innerList!15680 (xs!18974 xs!399)))) b!5087840))

(declare-fun b!5087841 () Bool)

(declare-fun e!3173132 () Bool)

(declare-fun tp!1418345 () Bool)

(assert (=> b!5087841 (= e!3173132 (and tp_is_empty!37107 tp!1418345))))

(assert (=> b!5087567 (= tp!1418298 e!3173132)))

(assert (= (and b!5087567 ((_ is Cons!58462) (innerList!15680 (xs!18974 ys!102)))) b!5087841))

(check-sat (not b!5087760) (not b!5087709) (not b!5087734) (not b!5087775) (not b!5087637) (not bm!354569) (not b!5087816) (not bm!354551) (not bm!354570) (not bm!354588) (not b!5087750) (not b!5087717) tp_is_empty!37107 (not b!5087636) (not b!5087815) (not bm!354580) (not bm!354565) (not b!5087780) (not d!1646859) (not b!5087719) (not b!5087835) (not b!5087822) (not bm!354586) (not b!5087728) (not b!5087692) (not b!5087574) (not b!5087594) (not bm!354577) (not b!5087774) (not bm!354567) (not b!5087814) (not b!5087714) (not d!1646899) (not b!5087821) (not b!5087732) (not b!5087829) (not bm!354550) (not bm!354585) (not b!5087828) (not bm!354578) (not b!5087641) (not b!5087751) (not bm!354568) (not bm!354553) (not b!5087841) (not b!5087689) (not bm!354587) (not b!5087579) (not bm!354556) (not b!5087834) (not b!5087735) (not b!5087707) (not bm!354579) (not b!5087789) (not b!5087696) (not d!1646833) (not b!5087840) (not b!5087646) (not b!5087820) (not b!5087827) (not d!1646841) (not bm!354552) (not bm!354549) (not b!5087737) (not b!5087727) (not b!5087720) (not b!5087597) (not bm!354554) (not bm!354572) (not b!5087781) (not b!5087766) (not b!5087612) (not bm!354571) (not b!5087788) (not b!5087592) (not b!5087761) (not b!5087833) (not bm!354555) (not b!5087697) (not bm!354566) (not b!5087640) (not b!5087742) (not b!5087690) (not b!5087712) (not b!5087713) (not b!5087716) (not b!5087595))
(check-sat)
