; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!750240 () Bool)

(assert start!750240)

(declare-fun b!7950448 () Bool)

(declare-fun res!3152817 () Bool)

(declare-fun e!4689991 () Bool)

(assert (=> b!7950448 (=> (not res!3152817) (not e!4689991))))

(declare-datatypes ((C!43272 0))(
  ( (C!43273 (val!32184 Int)) )
))
(declare-datatypes ((List!74696 0))(
  ( (Nil!74572) (Cons!74572 (h!81020 C!43272) (t!390439 List!74696)) )
))
(declare-fun testedP!447 () List!74696)

(declare-fun input!7927 () List!74696)

(declare-fun isPrefix!6567 (List!74696 List!74696) Bool)

(assert (=> b!7950448 (= res!3152817 (isPrefix!6567 testedP!447 input!7927))))

(declare-fun b!7950450 () Bool)

(declare-fun res!3152818 () Bool)

(declare-fun e!4689983 () Bool)

(assert (=> b!7950450 (=> (not res!3152818) (not e!4689983))))

(assert (=> b!7950450 (= res!3152818 (not (= testedP!447 input!7927)))))

(declare-fun b!7950451 () Bool)

(declare-datatypes ((Unit!169826 0))(
  ( (Unit!169827) )
))
(declare-fun e!4689984 () Unit!169826)

(declare-fun Unit!169828 () Unit!169826)

(assert (=> b!7950451 (= e!4689984 Unit!169828)))

(declare-fun lt!2699821 () Unit!169826)

(declare-fun lemmaIsPrefixRefl!4035 (List!74696 List!74696) Unit!169826)

(assert (=> b!7950451 (= lt!2699821 (lemmaIsPrefixRefl!4035 input!7927 input!7927))))

(assert (=> b!7950451 (isPrefix!6567 input!7927 input!7927)))

(declare-fun lt!2699819 () Unit!169826)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1615 (List!74696 List!74696 List!74696) Unit!169826)

(assert (=> b!7950451 (= lt!2699819 (lemmaIsPrefixSameLengthThenSameList!1615 input!7927 testedP!447 input!7927))))

(assert (=> b!7950451 false))

(declare-fun b!7950452 () Bool)

(declare-fun e!4689990 () Bool)

(declare-fun tp_is_empty!53477 () Bool)

(assert (=> b!7950452 (= e!4689990 tp_is_empty!53477)))

(declare-fun b!7950453 () Bool)

(declare-fun tp!2366156 () Bool)

(assert (=> b!7950453 (= e!4689990 tp!2366156)))

(declare-fun b!7950454 () Bool)

(declare-fun e!4689987 () Bool)

(declare-fun tp!2366148 () Bool)

(declare-fun tp!2366152 () Bool)

(assert (=> b!7950454 (= e!4689987 (and tp!2366148 tp!2366152))))

(declare-fun b!7950455 () Bool)

(declare-fun tp!2366158 () Bool)

(declare-fun tp!2366150 () Bool)

(assert (=> b!7950455 (= e!4689987 (and tp!2366158 tp!2366150))))

(declare-fun b!7950456 () Bool)

(declare-fun e!4689985 () Bool)

(declare-fun tp!2366147 () Bool)

(assert (=> b!7950456 (= e!4689985 (and tp_is_empty!53477 tp!2366147))))

(declare-fun b!7950457 () Bool)

(declare-fun res!3152813 () Bool)

(assert (=> b!7950457 (=> (not res!3152813) (not e!4689991))))

(declare-datatypes ((Regex!21467 0))(
  ( (ElementMatch!21467 (c!1460290 C!43272)) (Concat!30466 (regOne!43446 Regex!21467) (regTwo!43446 Regex!21467)) (EmptyExpr!21467) (Star!21467 (reg!21796 Regex!21467)) (EmptyLang!21467) (Union!21467 (regOne!43447 Regex!21467) (regTwo!43447 Regex!21467)) )
))
(declare-fun baseR!116 () Regex!21467)

(declare-fun r!24602 () Regex!21467)

(declare-fun derivative!653 (Regex!21467 List!74696) Regex!21467)

(assert (=> b!7950457 (= res!3152813 (= (derivative!653 baseR!116 testedP!447) r!24602))))

(declare-fun b!7950458 () Bool)

(assert (=> b!7950458 (= e!4689991 e!4689983)))

(declare-fun res!3152815 () Bool)

(assert (=> b!7950458 (=> (not res!3152815) (not e!4689983))))

(declare-fun lt!2699818 () List!74696)

(declare-fun lt!2699817 () Int)

(declare-fun lt!2699815 () Int)

(declare-fun isEmpty!42871 (List!74696) Bool)

(declare-datatypes ((tuple2!70596 0))(
  ( (tuple2!70597 (_1!38601 List!74696) (_2!38601 List!74696)) )
))
(declare-fun findLongestMatchInner!2248 (Regex!21467 List!74696 Int List!74696 List!74696 Int) tuple2!70596)

(assert (=> b!7950458 (= res!3152815 (not (isEmpty!42871 (_1!38601 (findLongestMatchInner!2248 r!24602 testedP!447 lt!2699817 lt!2699818 input!7927 lt!2699815)))))))

(declare-fun size!43403 (List!74696) Int)

(assert (=> b!7950458 (= lt!2699815 (size!43403 input!7927))))

(declare-fun getSuffix!3770 (List!74696 List!74696) List!74696)

(assert (=> b!7950458 (= lt!2699818 (getSuffix!3770 input!7927 testedP!447))))

(assert (=> b!7950458 (= lt!2699817 (size!43403 testedP!447))))

(declare-fun res!3152814 () Bool)

(assert (=> start!750240 (=> (not res!3152814) (not e!4689991))))

(declare-fun validRegex!11771 (Regex!21467) Bool)

(assert (=> start!750240 (= res!3152814 (validRegex!11771 baseR!116))))

(assert (=> start!750240 e!4689991))

(assert (=> start!750240 e!4689990))

(assert (=> start!750240 e!4689985))

(declare-fun e!4689989 () Bool)

(assert (=> start!750240 e!4689989))

(assert (=> start!750240 e!4689987))

(declare-fun b!7950449 () Bool)

(assert (=> b!7950449 (= e!4689987 tp_is_empty!53477)))

(declare-fun b!7950459 () Bool)

(declare-fun e!4689986 () Bool)

(declare-fun e!4689988 () Bool)

(assert (=> b!7950459 (= e!4689986 e!4689988)))

(declare-fun res!3152812 () Bool)

(assert (=> b!7950459 (=> res!3152812 e!4689988)))

(declare-fun nullable!9568 (Regex!21467) Bool)

(assert (=> b!7950459 (= res!3152812 (not (nullable!9568 r!24602)))))

(declare-fun lt!2699816 () List!74696)

(assert (=> b!7950459 (isPrefix!6567 lt!2699816 input!7927)))

(declare-fun lt!2699820 () Unit!169826)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1294 (List!74696 List!74696) Unit!169826)

(assert (=> b!7950459 (= lt!2699820 (lemmaAddHeadSuffixToPrefixStillPrefix!1294 testedP!447 input!7927))))

(declare-fun ++!18337 (List!74696 List!74696) List!74696)

(declare-fun head!16219 (List!74696) C!43272)

(assert (=> b!7950459 (= lt!2699816 (++!18337 testedP!447 (Cons!74572 (head!16219 lt!2699818) Nil!74572)))))

(declare-fun b!7950460 () Bool)

(declare-fun tp!2366155 () Bool)

(assert (=> b!7950460 (= e!4689987 tp!2366155)))

(declare-fun b!7950461 () Bool)

(declare-fun tp!2366151 () Bool)

(assert (=> b!7950461 (= e!4689989 (and tp_is_empty!53477 tp!2366151))))

(declare-fun b!7950462 () Bool)

(declare-fun tp!2366149 () Bool)

(declare-fun tp!2366154 () Bool)

(assert (=> b!7950462 (= e!4689990 (and tp!2366149 tp!2366154))))

(declare-fun b!7950463 () Bool)

(assert (=> b!7950463 (= e!4689988 (validRegex!11771 r!24602))))

(declare-fun b!7950464 () Bool)

(declare-fun Unit!169829 () Unit!169826)

(assert (=> b!7950464 (= e!4689984 Unit!169829)))

(declare-fun b!7950465 () Bool)

(assert (=> b!7950465 (= e!4689983 (not e!4689986))))

(declare-fun res!3152816 () Bool)

(assert (=> b!7950465 (=> res!3152816 e!4689986)))

(assert (=> b!7950465 (= res!3152816 (>= lt!2699817 lt!2699815))))

(declare-fun lt!2699823 () Unit!169826)

(assert (=> b!7950465 (= lt!2699823 e!4689984)))

(declare-fun c!1460289 () Bool)

(assert (=> b!7950465 (= c!1460289 (= lt!2699817 lt!2699815))))

(assert (=> b!7950465 (<= lt!2699817 lt!2699815)))

(declare-fun lt!2699822 () Unit!169826)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1084 (List!74696 List!74696) Unit!169826)

(assert (=> b!7950465 (= lt!2699822 (lemmaIsPrefixThenSmallerEqSize!1084 testedP!447 input!7927))))

(declare-fun b!7950466 () Bool)

(declare-fun tp!2366157 () Bool)

(declare-fun tp!2366153 () Bool)

(assert (=> b!7950466 (= e!4689990 (and tp!2366157 tp!2366153))))

(assert (= (and start!750240 res!3152814) b!7950448))

(assert (= (and b!7950448 res!3152817) b!7950457))

(assert (= (and b!7950457 res!3152813) b!7950458))

(assert (= (and b!7950458 res!3152815) b!7950450))

(assert (= (and b!7950450 res!3152818) b!7950465))

(assert (= (and b!7950465 c!1460289) b!7950451))

(assert (= (and b!7950465 (not c!1460289)) b!7950464))

(assert (= (and b!7950465 (not res!3152816)) b!7950459))

(assert (= (and b!7950459 (not res!3152812)) b!7950463))

(get-info :version)

(assert (= (and start!750240 ((_ is ElementMatch!21467) baseR!116)) b!7950452))

(assert (= (and start!750240 ((_ is Concat!30466) baseR!116)) b!7950466))

(assert (= (and start!750240 ((_ is Star!21467) baseR!116)) b!7950453))

(assert (= (and start!750240 ((_ is Union!21467) baseR!116)) b!7950462))

(assert (= (and start!750240 ((_ is Cons!74572) testedP!447)) b!7950456))

(assert (= (and start!750240 ((_ is Cons!74572) input!7927)) b!7950461))

(assert (= (and start!750240 ((_ is ElementMatch!21467) r!24602)) b!7950449))

(assert (= (and start!750240 ((_ is Concat!30466) r!24602)) b!7950455))

(assert (= (and start!750240 ((_ is Star!21467) r!24602)) b!7950460))

(assert (= (and start!750240 ((_ is Union!21467) r!24602)) b!7950454))

(declare-fun m!8334870 () Bool)

(assert (=> b!7950451 m!8334870))

(declare-fun m!8334872 () Bool)

(assert (=> b!7950451 m!8334872))

(declare-fun m!8334874 () Bool)

(assert (=> b!7950451 m!8334874))

(declare-fun m!8334876 () Bool)

(assert (=> b!7950459 m!8334876))

(declare-fun m!8334878 () Bool)

(assert (=> b!7950459 m!8334878))

(declare-fun m!8334880 () Bool)

(assert (=> b!7950459 m!8334880))

(declare-fun m!8334882 () Bool)

(assert (=> b!7950459 m!8334882))

(declare-fun m!8334884 () Bool)

(assert (=> b!7950459 m!8334884))

(declare-fun m!8334886 () Bool)

(assert (=> b!7950457 m!8334886))

(declare-fun m!8334888 () Bool)

(assert (=> b!7950458 m!8334888))

(declare-fun m!8334890 () Bool)

(assert (=> b!7950458 m!8334890))

(declare-fun m!8334892 () Bool)

(assert (=> b!7950458 m!8334892))

(declare-fun m!8334894 () Bool)

(assert (=> b!7950458 m!8334894))

(declare-fun m!8334896 () Bool)

(assert (=> b!7950458 m!8334896))

(declare-fun m!8334898 () Bool)

(assert (=> b!7950448 m!8334898))

(declare-fun m!8334900 () Bool)

(assert (=> b!7950465 m!8334900))

(declare-fun m!8334902 () Bool)

(assert (=> start!750240 m!8334902))

(declare-fun m!8334904 () Bool)

(assert (=> b!7950463 m!8334904))

(check-sat (not b!7950462) (not b!7950461) (not b!7950463) (not b!7950448) (not b!7950459) (not b!7950451) tp_is_empty!53477 (not start!750240) (not b!7950465) (not b!7950466) (not b!7950453) (not b!7950457) (not b!7950455) (not b!7950460) (not b!7950456) (not b!7950458) (not b!7950454))
(check-sat)
(get-model)

(declare-fun b!7950485 () Bool)

(declare-fun e!4690012 () Bool)

(declare-fun call!736953 () Bool)

(assert (=> b!7950485 (= e!4690012 call!736953)))

(declare-fun bm!736946 () Bool)

(declare-fun call!736952 () Bool)

(declare-fun call!736951 () Bool)

(assert (=> bm!736946 (= call!736952 call!736951)))

(declare-fun b!7950486 () Bool)

(declare-fun e!4690008 () Bool)

(declare-fun e!4690010 () Bool)

(assert (=> b!7950486 (= e!4690008 e!4690010)))

(declare-fun c!1460295 () Bool)

(assert (=> b!7950486 (= c!1460295 ((_ is Union!21467) baseR!116))))

(declare-fun b!7950487 () Bool)

(declare-fun res!3152833 () Bool)

(declare-fun e!4690009 () Bool)

(assert (=> b!7950487 (=> (not res!3152833) (not e!4690009))))

(assert (=> b!7950487 (= res!3152833 call!736952)))

(assert (=> b!7950487 (= e!4690010 e!4690009)))

(declare-fun c!1460296 () Bool)

(declare-fun bm!736947 () Bool)

(assert (=> bm!736947 (= call!736951 (validRegex!11771 (ite c!1460296 (reg!21796 baseR!116) (ite c!1460295 (regOne!43447 baseR!116) (regOne!43446 baseR!116)))))))

(declare-fun b!7950488 () Bool)

(declare-fun e!4690011 () Bool)

(assert (=> b!7950488 (= e!4690008 e!4690011)))

(declare-fun res!3152832 () Bool)

(assert (=> b!7950488 (= res!3152832 (not (nullable!9568 (reg!21796 baseR!116))))))

(assert (=> b!7950488 (=> (not res!3152832) (not e!4690011))))

(declare-fun b!7950489 () Bool)

(assert (=> b!7950489 (= e!4690011 call!736951)))

(declare-fun b!7950490 () Bool)

(declare-fun e!4690006 () Bool)

(assert (=> b!7950490 (= e!4690006 e!4690008)))

(assert (=> b!7950490 (= c!1460296 ((_ is Star!21467) baseR!116))))

(declare-fun b!7950491 () Bool)

(declare-fun res!3152829 () Bool)

(declare-fun e!4690007 () Bool)

(assert (=> b!7950491 (=> res!3152829 e!4690007)))

(assert (=> b!7950491 (= res!3152829 (not ((_ is Concat!30466) baseR!116)))))

(assert (=> b!7950491 (= e!4690010 e!4690007)))

(declare-fun b!7950492 () Bool)

(assert (=> b!7950492 (= e!4690007 e!4690012)))

(declare-fun res!3152830 () Bool)

(assert (=> b!7950492 (=> (not res!3152830) (not e!4690012))))

(assert (=> b!7950492 (= res!3152830 call!736952)))

(declare-fun d!2376074 () Bool)

(declare-fun res!3152831 () Bool)

(assert (=> d!2376074 (=> res!3152831 e!4690006)))

(assert (=> d!2376074 (= res!3152831 ((_ is ElementMatch!21467) baseR!116))))

(assert (=> d!2376074 (= (validRegex!11771 baseR!116) e!4690006)))

(declare-fun b!7950493 () Bool)

(assert (=> b!7950493 (= e!4690009 call!736953)))

(declare-fun bm!736948 () Bool)

(assert (=> bm!736948 (= call!736953 (validRegex!11771 (ite c!1460295 (regTwo!43447 baseR!116) (regTwo!43446 baseR!116))))))

(assert (= (and d!2376074 (not res!3152831)) b!7950490))

(assert (= (and b!7950490 c!1460296) b!7950488))

(assert (= (and b!7950490 (not c!1460296)) b!7950486))

(assert (= (and b!7950488 res!3152832) b!7950489))

(assert (= (and b!7950486 c!1460295) b!7950487))

(assert (= (and b!7950486 (not c!1460295)) b!7950491))

(assert (= (and b!7950487 res!3152833) b!7950493))

(assert (= (and b!7950491 (not res!3152829)) b!7950492))

(assert (= (and b!7950492 res!3152830) b!7950485))

(assert (= (or b!7950493 b!7950485) bm!736948))

(assert (= (or b!7950487 b!7950492) bm!736946))

(assert (= (or b!7950489 bm!736946) bm!736947))

(declare-fun m!8334906 () Bool)

(assert (=> bm!736947 m!8334906))

(declare-fun m!8334908 () Bool)

(assert (=> b!7950488 m!8334908))

(declare-fun m!8334910 () Bool)

(assert (=> bm!736948 m!8334910))

(assert (=> start!750240 d!2376074))

(declare-fun b!7950505 () Bool)

(declare-fun e!4690019 () Bool)

(assert (=> b!7950505 (= e!4690019 (>= (size!43403 input!7927) (size!43403 testedP!447)))))

(declare-fun d!2376076 () Bool)

(assert (=> d!2376076 e!4690019))

(declare-fun res!3152845 () Bool)

(assert (=> d!2376076 (=> res!3152845 e!4690019)))

(declare-fun lt!2699826 () Bool)

(assert (=> d!2376076 (= res!3152845 (not lt!2699826))))

(declare-fun e!4690020 () Bool)

(assert (=> d!2376076 (= lt!2699826 e!4690020)))

(declare-fun res!3152844 () Bool)

(assert (=> d!2376076 (=> res!3152844 e!4690020)))

(assert (=> d!2376076 (= res!3152844 ((_ is Nil!74572) testedP!447))))

(assert (=> d!2376076 (= (isPrefix!6567 testedP!447 input!7927) lt!2699826)))

(declare-fun b!7950502 () Bool)

(declare-fun e!4690021 () Bool)

(assert (=> b!7950502 (= e!4690020 e!4690021)))

(declare-fun res!3152842 () Bool)

(assert (=> b!7950502 (=> (not res!3152842) (not e!4690021))))

(assert (=> b!7950502 (= res!3152842 (not ((_ is Nil!74572) input!7927)))))

(declare-fun b!7950503 () Bool)

(declare-fun res!3152843 () Bool)

(assert (=> b!7950503 (=> (not res!3152843) (not e!4690021))))

(assert (=> b!7950503 (= res!3152843 (= (head!16219 testedP!447) (head!16219 input!7927)))))

(declare-fun b!7950504 () Bool)

(declare-fun tail!15759 (List!74696) List!74696)

(assert (=> b!7950504 (= e!4690021 (isPrefix!6567 (tail!15759 testedP!447) (tail!15759 input!7927)))))

(assert (= (and d!2376076 (not res!3152844)) b!7950502))

(assert (= (and b!7950502 res!3152842) b!7950503))

(assert (= (and b!7950503 res!3152843) b!7950504))

(assert (= (and d!2376076 (not res!3152845)) b!7950505))

(assert (=> b!7950505 m!8334892))

(assert (=> b!7950505 m!8334890))

(declare-fun m!8334912 () Bool)

(assert (=> b!7950503 m!8334912))

(declare-fun m!8334914 () Bool)

(assert (=> b!7950503 m!8334914))

(declare-fun m!8334916 () Bool)

(assert (=> b!7950504 m!8334916))

(declare-fun m!8334918 () Bool)

(assert (=> b!7950504 m!8334918))

(assert (=> b!7950504 m!8334916))

(assert (=> b!7950504 m!8334918))

(declare-fun m!8334920 () Bool)

(assert (=> b!7950504 m!8334920))

(assert (=> b!7950448 d!2376076))

(declare-fun d!2376078 () Bool)

(assert (=> d!2376078 (isPrefix!6567 (++!18337 testedP!447 (Cons!74572 (head!16219 (getSuffix!3770 input!7927 testedP!447)) Nil!74572)) input!7927)))

(declare-fun lt!2699829 () Unit!169826)

(declare-fun choose!59908 (List!74696 List!74696) Unit!169826)

(assert (=> d!2376078 (= lt!2699829 (choose!59908 testedP!447 input!7927))))

(assert (=> d!2376078 (isPrefix!6567 testedP!447 input!7927)))

(assert (=> d!2376078 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1294 testedP!447 input!7927) lt!2699829)))

(declare-fun bs!1969529 () Bool)

(assert (= bs!1969529 d!2376078))

(declare-fun m!8334922 () Bool)

(assert (=> bs!1969529 m!8334922))

(assert (=> bs!1969529 m!8334898))

(declare-fun m!8334924 () Bool)

(assert (=> bs!1969529 m!8334924))

(assert (=> bs!1969529 m!8334922))

(declare-fun m!8334926 () Bool)

(assert (=> bs!1969529 m!8334926))

(assert (=> bs!1969529 m!8334896))

(assert (=> bs!1969529 m!8334896))

(declare-fun m!8334928 () Bool)

(assert (=> bs!1969529 m!8334928))

(assert (=> b!7950459 d!2376078))

(declare-fun b!7950516 () Bool)

(declare-fun res!3152851 () Bool)

(declare-fun e!4690026 () Bool)

(assert (=> b!7950516 (=> (not res!3152851) (not e!4690026))))

(declare-fun lt!2699832 () List!74696)

(assert (=> b!7950516 (= res!3152851 (= (size!43403 lt!2699832) (+ (size!43403 testedP!447) (size!43403 (Cons!74572 (head!16219 lt!2699818) Nil!74572)))))))

(declare-fun d!2376080 () Bool)

(assert (=> d!2376080 e!4690026))

(declare-fun res!3152850 () Bool)

(assert (=> d!2376080 (=> (not res!3152850) (not e!4690026))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15827 (List!74696) (InoxSet C!43272))

(assert (=> d!2376080 (= res!3152850 (= (content!15827 lt!2699832) ((_ map or) (content!15827 testedP!447) (content!15827 (Cons!74572 (head!16219 lt!2699818) Nil!74572)))))))

(declare-fun e!4690027 () List!74696)

(assert (=> d!2376080 (= lt!2699832 e!4690027)))

(declare-fun c!1460299 () Bool)

(assert (=> d!2376080 (= c!1460299 ((_ is Nil!74572) testedP!447))))

(assert (=> d!2376080 (= (++!18337 testedP!447 (Cons!74572 (head!16219 lt!2699818) Nil!74572)) lt!2699832)))

(declare-fun b!7950514 () Bool)

(assert (=> b!7950514 (= e!4690027 (Cons!74572 (head!16219 lt!2699818) Nil!74572))))

(declare-fun b!7950517 () Bool)

(assert (=> b!7950517 (= e!4690026 (or (not (= (Cons!74572 (head!16219 lt!2699818) Nil!74572) Nil!74572)) (= lt!2699832 testedP!447)))))

(declare-fun b!7950515 () Bool)

(assert (=> b!7950515 (= e!4690027 (Cons!74572 (h!81020 testedP!447) (++!18337 (t!390439 testedP!447) (Cons!74572 (head!16219 lt!2699818) Nil!74572))))))

(assert (= (and d!2376080 c!1460299) b!7950514))

(assert (= (and d!2376080 (not c!1460299)) b!7950515))

(assert (= (and d!2376080 res!3152850) b!7950516))

(assert (= (and b!7950516 res!3152851) b!7950517))

(declare-fun m!8334930 () Bool)

(assert (=> b!7950516 m!8334930))

(assert (=> b!7950516 m!8334890))

(declare-fun m!8334932 () Bool)

(assert (=> b!7950516 m!8334932))

(declare-fun m!8334934 () Bool)

(assert (=> d!2376080 m!8334934))

(declare-fun m!8334936 () Bool)

(assert (=> d!2376080 m!8334936))

(declare-fun m!8334938 () Bool)

(assert (=> d!2376080 m!8334938))

(declare-fun m!8334940 () Bool)

(assert (=> b!7950515 m!8334940))

(assert (=> b!7950459 d!2376080))

(declare-fun b!7950521 () Bool)

(declare-fun e!4690028 () Bool)

(assert (=> b!7950521 (= e!4690028 (>= (size!43403 input!7927) (size!43403 lt!2699816)))))

(declare-fun d!2376084 () Bool)

(assert (=> d!2376084 e!4690028))

(declare-fun res!3152855 () Bool)

(assert (=> d!2376084 (=> res!3152855 e!4690028)))

(declare-fun lt!2699833 () Bool)

(assert (=> d!2376084 (= res!3152855 (not lt!2699833))))

(declare-fun e!4690029 () Bool)

(assert (=> d!2376084 (= lt!2699833 e!4690029)))

(declare-fun res!3152854 () Bool)

(assert (=> d!2376084 (=> res!3152854 e!4690029)))

(assert (=> d!2376084 (= res!3152854 ((_ is Nil!74572) lt!2699816))))

(assert (=> d!2376084 (= (isPrefix!6567 lt!2699816 input!7927) lt!2699833)))

(declare-fun b!7950518 () Bool)

(declare-fun e!4690030 () Bool)

(assert (=> b!7950518 (= e!4690029 e!4690030)))

(declare-fun res!3152852 () Bool)

(assert (=> b!7950518 (=> (not res!3152852) (not e!4690030))))

(assert (=> b!7950518 (= res!3152852 (not ((_ is Nil!74572) input!7927)))))

(declare-fun b!7950519 () Bool)

(declare-fun res!3152853 () Bool)

(assert (=> b!7950519 (=> (not res!3152853) (not e!4690030))))

(assert (=> b!7950519 (= res!3152853 (= (head!16219 lt!2699816) (head!16219 input!7927)))))

(declare-fun b!7950520 () Bool)

(assert (=> b!7950520 (= e!4690030 (isPrefix!6567 (tail!15759 lt!2699816) (tail!15759 input!7927)))))

(assert (= (and d!2376084 (not res!3152854)) b!7950518))

(assert (= (and b!7950518 res!3152852) b!7950519))

(assert (= (and b!7950519 res!3152853) b!7950520))

(assert (= (and d!2376084 (not res!3152855)) b!7950521))

(assert (=> b!7950521 m!8334892))

(declare-fun m!8334942 () Bool)

(assert (=> b!7950521 m!8334942))

(declare-fun m!8334944 () Bool)

(assert (=> b!7950519 m!8334944))

(assert (=> b!7950519 m!8334914))

(declare-fun m!8334946 () Bool)

(assert (=> b!7950520 m!8334946))

(assert (=> b!7950520 m!8334918))

(assert (=> b!7950520 m!8334946))

(assert (=> b!7950520 m!8334918))

(declare-fun m!8334948 () Bool)

(assert (=> b!7950520 m!8334948))

(assert (=> b!7950459 d!2376084))

(declare-fun d!2376086 () Bool)

(assert (=> d!2376086 (= (head!16219 lt!2699818) (h!81020 lt!2699818))))

(assert (=> b!7950459 d!2376086))

(declare-fun d!2376088 () Bool)

(declare-fun nullableFct!3769 (Regex!21467) Bool)

(assert (=> d!2376088 (= (nullable!9568 r!24602) (nullableFct!3769 r!24602))))

(declare-fun bs!1969530 () Bool)

(assert (= bs!1969530 d!2376088))

(declare-fun m!8334950 () Bool)

(assert (=> bs!1969530 m!8334950))

(assert (=> b!7950459 d!2376088))

(declare-fun d!2376090 () Bool)

(declare-fun lt!2699841 () Regex!21467)

(assert (=> d!2376090 (validRegex!11771 lt!2699841)))

(declare-fun e!4690033 () Regex!21467)

(assert (=> d!2376090 (= lt!2699841 e!4690033)))

(declare-fun c!1460302 () Bool)

(assert (=> d!2376090 (= c!1460302 ((_ is Cons!74572) testedP!447))))

(assert (=> d!2376090 (validRegex!11771 baseR!116)))

(assert (=> d!2376090 (= (derivative!653 baseR!116 testedP!447) lt!2699841)))

(declare-fun b!7950526 () Bool)

(declare-fun derivativeStep!6494 (Regex!21467 C!43272) Regex!21467)

(assert (=> b!7950526 (= e!4690033 (derivative!653 (derivativeStep!6494 baseR!116 (h!81020 testedP!447)) (t!390439 testedP!447)))))

(declare-fun b!7950527 () Bool)

(assert (=> b!7950527 (= e!4690033 baseR!116)))

(assert (= (and d!2376090 c!1460302) b!7950526))

(assert (= (and d!2376090 (not c!1460302)) b!7950527))

(declare-fun m!8334954 () Bool)

(assert (=> d!2376090 m!8334954))

(assert (=> d!2376090 m!8334902))

(declare-fun m!8334956 () Bool)

(assert (=> b!7950526 m!8334956))

(assert (=> b!7950526 m!8334956))

(declare-fun m!8334958 () Bool)

(assert (=> b!7950526 m!8334958))

(assert (=> b!7950457 d!2376090))

(declare-fun b!7950528 () Bool)

(declare-fun e!4690040 () Bool)

(declare-fun call!736956 () Bool)

(assert (=> b!7950528 (= e!4690040 call!736956)))

(declare-fun bm!736949 () Bool)

(declare-fun call!736955 () Bool)

(declare-fun call!736954 () Bool)

(assert (=> bm!736949 (= call!736955 call!736954)))

(declare-fun b!7950529 () Bool)

(declare-fun e!4690036 () Bool)

(declare-fun e!4690038 () Bool)

(assert (=> b!7950529 (= e!4690036 e!4690038)))

(declare-fun c!1460303 () Bool)

(assert (=> b!7950529 (= c!1460303 ((_ is Union!21467) r!24602))))

(declare-fun b!7950530 () Bool)

(declare-fun res!3152860 () Bool)

(declare-fun e!4690037 () Bool)

(assert (=> b!7950530 (=> (not res!3152860) (not e!4690037))))

(assert (=> b!7950530 (= res!3152860 call!736955)))

(assert (=> b!7950530 (= e!4690038 e!4690037)))

(declare-fun bm!736950 () Bool)

(declare-fun c!1460304 () Bool)

(assert (=> bm!736950 (= call!736954 (validRegex!11771 (ite c!1460304 (reg!21796 r!24602) (ite c!1460303 (regOne!43447 r!24602) (regOne!43446 r!24602)))))))

(declare-fun b!7950531 () Bool)

(declare-fun e!4690039 () Bool)

(assert (=> b!7950531 (= e!4690036 e!4690039)))

(declare-fun res!3152859 () Bool)

(assert (=> b!7950531 (= res!3152859 (not (nullable!9568 (reg!21796 r!24602))))))

(assert (=> b!7950531 (=> (not res!3152859) (not e!4690039))))

(declare-fun b!7950532 () Bool)

(assert (=> b!7950532 (= e!4690039 call!736954)))

(declare-fun b!7950533 () Bool)

(declare-fun e!4690034 () Bool)

(assert (=> b!7950533 (= e!4690034 e!4690036)))

(assert (=> b!7950533 (= c!1460304 ((_ is Star!21467) r!24602))))

(declare-fun b!7950534 () Bool)

(declare-fun res!3152856 () Bool)

(declare-fun e!4690035 () Bool)

(assert (=> b!7950534 (=> res!3152856 e!4690035)))

(assert (=> b!7950534 (= res!3152856 (not ((_ is Concat!30466) r!24602)))))

(assert (=> b!7950534 (= e!4690038 e!4690035)))

(declare-fun b!7950535 () Bool)

(assert (=> b!7950535 (= e!4690035 e!4690040)))

(declare-fun res!3152857 () Bool)

(assert (=> b!7950535 (=> (not res!3152857) (not e!4690040))))

(assert (=> b!7950535 (= res!3152857 call!736955)))

(declare-fun d!2376094 () Bool)

(declare-fun res!3152858 () Bool)

(assert (=> d!2376094 (=> res!3152858 e!4690034)))

(assert (=> d!2376094 (= res!3152858 ((_ is ElementMatch!21467) r!24602))))

(assert (=> d!2376094 (= (validRegex!11771 r!24602) e!4690034)))

(declare-fun b!7950536 () Bool)

(assert (=> b!7950536 (= e!4690037 call!736956)))

(declare-fun bm!736951 () Bool)

(assert (=> bm!736951 (= call!736956 (validRegex!11771 (ite c!1460303 (regTwo!43447 r!24602) (regTwo!43446 r!24602))))))

(assert (= (and d!2376094 (not res!3152858)) b!7950533))

(assert (= (and b!7950533 c!1460304) b!7950531))

(assert (= (and b!7950533 (not c!1460304)) b!7950529))

(assert (= (and b!7950531 res!3152859) b!7950532))

(assert (= (and b!7950529 c!1460303) b!7950530))

(assert (= (and b!7950529 (not c!1460303)) b!7950534))

(assert (= (and b!7950530 res!3152860) b!7950536))

(assert (= (and b!7950534 (not res!3152856)) b!7950535))

(assert (= (and b!7950535 res!3152857) b!7950528))

(assert (= (or b!7950536 b!7950528) bm!736951))

(assert (= (or b!7950530 b!7950535) bm!736949))

(assert (= (or b!7950532 bm!736949) bm!736950))

(declare-fun m!8334962 () Bool)

(assert (=> bm!736950 m!8334962))

(declare-fun m!8334964 () Bool)

(assert (=> b!7950531 m!8334964))

(declare-fun m!8334966 () Bool)

(assert (=> bm!736951 m!8334966))

(assert (=> b!7950463 d!2376094))

(declare-fun d!2376098 () Bool)

(declare-fun lt!2699845 () Int)

(assert (=> d!2376098 (>= lt!2699845 0)))

(declare-fun e!4690043 () Int)

(assert (=> d!2376098 (= lt!2699845 e!4690043)))

(declare-fun c!1460307 () Bool)

(assert (=> d!2376098 (= c!1460307 ((_ is Nil!74572) input!7927))))

(assert (=> d!2376098 (= (size!43403 input!7927) lt!2699845)))

(declare-fun b!7950541 () Bool)

(assert (=> b!7950541 (= e!4690043 0)))

(declare-fun b!7950542 () Bool)

(assert (=> b!7950542 (= e!4690043 (+ 1 (size!43403 (t!390439 input!7927))))))

(assert (= (and d!2376098 c!1460307) b!7950541))

(assert (= (and d!2376098 (not c!1460307)) b!7950542))

(declare-fun m!8334968 () Bool)

(assert (=> b!7950542 m!8334968))

(assert (=> b!7950458 d!2376098))

(declare-fun d!2376100 () Bool)

(assert (=> d!2376100 (= (isEmpty!42871 (_1!38601 (findLongestMatchInner!2248 r!24602 testedP!447 lt!2699817 lt!2699818 input!7927 lt!2699815))) ((_ is Nil!74572) (_1!38601 (findLongestMatchInner!2248 r!24602 testedP!447 lt!2699817 lt!2699818 input!7927 lt!2699815))))))

(assert (=> b!7950458 d!2376100))

(declare-fun d!2376102 () Bool)

(declare-fun lt!2699846 () Int)

(assert (=> d!2376102 (>= lt!2699846 0)))

(declare-fun e!4690044 () Int)

(assert (=> d!2376102 (= lt!2699846 e!4690044)))

(declare-fun c!1460308 () Bool)

(assert (=> d!2376102 (= c!1460308 ((_ is Nil!74572) testedP!447))))

(assert (=> d!2376102 (= (size!43403 testedP!447) lt!2699846)))

(declare-fun b!7950543 () Bool)

(assert (=> b!7950543 (= e!4690044 0)))

(declare-fun b!7950544 () Bool)

(assert (=> b!7950544 (= e!4690044 (+ 1 (size!43403 (t!390439 testedP!447))))))

(assert (= (and d!2376102 c!1460308) b!7950543))

(assert (= (and d!2376102 (not c!1460308)) b!7950544))

(declare-fun m!8334970 () Bool)

(assert (=> b!7950544 m!8334970))

(assert (=> b!7950458 d!2376102))

(declare-fun b!7950642 () Bool)

(declare-fun e!4690114 () tuple2!70596)

(assert (=> b!7950642 (= e!4690114 (tuple2!70597 Nil!74572 input!7927))))

(declare-fun d!2376104 () Bool)

(declare-fun e!4690108 () Bool)

(assert (=> d!2376104 e!4690108))

(declare-fun res!3152902 () Bool)

(assert (=> d!2376104 (=> (not res!3152902) (not e!4690108))))

(declare-fun lt!2699937 () tuple2!70596)

(assert (=> d!2376104 (= res!3152902 (= (++!18337 (_1!38601 lt!2699937) (_2!38601 lt!2699937)) input!7927))))

(declare-fun e!4690109 () tuple2!70596)

(assert (=> d!2376104 (= lt!2699937 e!4690109)))

(declare-fun c!1460340 () Bool)

(declare-fun lostCause!1959 (Regex!21467) Bool)

(assert (=> d!2376104 (= c!1460340 (lostCause!1959 r!24602))))

(declare-fun lt!2699933 () Unit!169826)

(declare-fun Unit!169830 () Unit!169826)

(assert (=> d!2376104 (= lt!2699933 Unit!169830)))

(assert (=> d!2376104 (= (getSuffix!3770 input!7927 testedP!447) lt!2699818)))

(declare-fun lt!2699946 () Unit!169826)

(declare-fun lt!2699950 () Unit!169826)

(assert (=> d!2376104 (= lt!2699946 lt!2699950)))

(declare-fun lt!2699943 () List!74696)

(assert (=> d!2376104 (= lt!2699818 lt!2699943)))

(declare-fun lemmaSamePrefixThenSameSuffix!2975 (List!74696 List!74696 List!74696 List!74696 List!74696) Unit!169826)

(assert (=> d!2376104 (= lt!2699950 (lemmaSamePrefixThenSameSuffix!2975 testedP!447 lt!2699818 testedP!447 lt!2699943 input!7927))))

(assert (=> d!2376104 (= lt!2699943 (getSuffix!3770 input!7927 testedP!447))))

(declare-fun lt!2699930 () Unit!169826)

(declare-fun lt!2699939 () Unit!169826)

(assert (=> d!2376104 (= lt!2699930 lt!2699939)))

(assert (=> d!2376104 (isPrefix!6567 testedP!447 (++!18337 testedP!447 lt!2699818))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3837 (List!74696 List!74696) Unit!169826)

(assert (=> d!2376104 (= lt!2699939 (lemmaConcatTwoListThenFirstIsPrefix!3837 testedP!447 lt!2699818))))

(assert (=> d!2376104 (validRegex!11771 r!24602)))

(assert (=> d!2376104 (= (findLongestMatchInner!2248 r!24602 testedP!447 lt!2699817 lt!2699818 input!7927 lt!2699815) lt!2699937)))

(declare-fun b!7950643 () Bool)

(declare-fun c!1460342 () Bool)

(declare-fun call!736983 () Bool)

(assert (=> b!7950643 (= c!1460342 call!736983)))

(declare-fun lt!2699945 () Unit!169826)

(declare-fun lt!2699926 () Unit!169826)

(assert (=> b!7950643 (= lt!2699945 lt!2699926)))

(declare-fun lt!2699942 () List!74696)

(declare-fun lt!2699938 () C!43272)

(assert (=> b!7950643 (= (++!18337 (++!18337 testedP!447 (Cons!74572 lt!2699938 Nil!74572)) lt!2699942) input!7927)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3515 (List!74696 C!43272 List!74696 List!74696) Unit!169826)

(assert (=> b!7950643 (= lt!2699926 (lemmaMoveElementToOtherListKeepsConcatEq!3515 testedP!447 lt!2699938 lt!2699942 input!7927))))

(assert (=> b!7950643 (= lt!2699942 (tail!15759 lt!2699818))))

(assert (=> b!7950643 (= lt!2699938 (head!16219 lt!2699818))))

(declare-fun lt!2699934 () Unit!169826)

(declare-fun lt!2699932 () Unit!169826)

(assert (=> b!7950643 (= lt!2699934 lt!2699932)))

(assert (=> b!7950643 (isPrefix!6567 (++!18337 testedP!447 (Cons!74572 (head!16219 (getSuffix!3770 input!7927 testedP!447)) Nil!74572)) input!7927)))

(assert (=> b!7950643 (= lt!2699932 (lemmaAddHeadSuffixToPrefixStillPrefix!1294 testedP!447 input!7927))))

(declare-fun lt!2699923 () Unit!169826)

(declare-fun lt!2699929 () Unit!169826)

(assert (=> b!7950643 (= lt!2699923 lt!2699929)))

(assert (=> b!7950643 (= lt!2699929 (lemmaAddHeadSuffixToPrefixStillPrefix!1294 testedP!447 input!7927))))

(declare-fun lt!2699936 () List!74696)

(assert (=> b!7950643 (= lt!2699936 (++!18337 testedP!447 (Cons!74572 (head!16219 lt!2699818) Nil!74572)))))

(declare-fun lt!2699924 () Unit!169826)

(declare-fun e!4690111 () Unit!169826)

(assert (=> b!7950643 (= lt!2699924 e!4690111)))

(declare-fun c!1460341 () Bool)

(assert (=> b!7950643 (= c!1460341 (= (size!43403 testedP!447) (size!43403 input!7927)))))

(declare-fun lt!2699925 () Unit!169826)

(declare-fun lt!2699940 () Unit!169826)

(assert (=> b!7950643 (= lt!2699925 lt!2699940)))

(assert (=> b!7950643 (<= (size!43403 testedP!447) (size!43403 input!7927))))

(assert (=> b!7950643 (= lt!2699940 (lemmaIsPrefixThenSmallerEqSize!1084 testedP!447 input!7927))))

(declare-fun e!4690107 () tuple2!70596)

(declare-fun e!4690110 () tuple2!70596)

(assert (=> b!7950643 (= e!4690107 e!4690110)))

(declare-fun b!7950644 () Bool)

(declare-fun e!4690112 () tuple2!70596)

(assert (=> b!7950644 (= e!4690110 e!4690112)))

(declare-fun lt!2699948 () tuple2!70596)

(declare-fun call!736988 () tuple2!70596)

(assert (=> b!7950644 (= lt!2699948 call!736988)))

(declare-fun c!1460337 () Bool)

(assert (=> b!7950644 (= c!1460337 (isEmpty!42871 (_1!38601 lt!2699948)))))

(declare-fun b!7950645 () Bool)

(declare-fun Unit!169831 () Unit!169826)

(assert (=> b!7950645 (= e!4690111 Unit!169831)))

(declare-fun b!7950646 () Bool)

(assert (=> b!7950646 (= e!4690112 (tuple2!70597 testedP!447 lt!2699818))))

(declare-fun b!7950647 () Bool)

(assert (=> b!7950647 (= e!4690114 (tuple2!70597 testedP!447 Nil!74572))))

(declare-fun bm!736977 () Bool)

(declare-fun call!736982 () List!74696)

(assert (=> bm!736977 (= call!736982 (tail!15759 lt!2699818))))

(declare-fun bm!736978 () Bool)

(declare-fun call!736985 () Bool)

(assert (=> bm!736978 (= call!736985 (isPrefix!6567 input!7927 input!7927))))

(declare-fun bm!736979 () Bool)

(declare-fun call!736986 () C!43272)

(assert (=> bm!736979 (= call!736986 (head!16219 lt!2699818))))

(declare-fun bm!736980 () Bool)

(declare-fun call!736984 () Unit!169826)

(assert (=> bm!736980 (= call!736984 (lemmaIsPrefixRefl!4035 input!7927 input!7927))))

(declare-fun b!7950648 () Bool)

(assert (=> b!7950648 (= e!4690110 call!736988)))

(declare-fun b!7950649 () Bool)

(declare-fun Unit!169832 () Unit!169826)

(assert (=> b!7950649 (= e!4690111 Unit!169832)))

(declare-fun lt!2699928 () Unit!169826)

(assert (=> b!7950649 (= lt!2699928 call!736984)))

(assert (=> b!7950649 call!736985))

(declare-fun lt!2699927 () Unit!169826)

(assert (=> b!7950649 (= lt!2699927 lt!2699928)))

(declare-fun lt!2699935 () Unit!169826)

(declare-fun call!736987 () Unit!169826)

(assert (=> b!7950649 (= lt!2699935 call!736987)))

(assert (=> b!7950649 (= input!7927 testedP!447)))

(declare-fun lt!2699949 () Unit!169826)

(assert (=> b!7950649 (= lt!2699949 lt!2699935)))

(assert (=> b!7950649 false))

(declare-fun b!7950650 () Bool)

(assert (=> b!7950650 (= e!4690109 e!4690107)))

(declare-fun c!1460338 () Bool)

(assert (=> b!7950650 (= c!1460338 (= lt!2699817 lt!2699815))))

(declare-fun b!7950651 () Bool)

(assert (=> b!7950651 (= e!4690109 (tuple2!70597 Nil!74572 input!7927))))

(declare-fun bm!736981 () Bool)

(declare-fun call!736989 () Regex!21467)

(assert (=> bm!736981 (= call!736989 (derivativeStep!6494 r!24602 call!736986))))

(declare-fun bm!736982 () Bool)

(assert (=> bm!736982 (= call!736988 (findLongestMatchInner!2248 call!736989 lt!2699936 (+ lt!2699817 1) call!736982 input!7927 lt!2699815))))

(declare-fun b!7950652 () Bool)

(declare-fun e!4690113 () Bool)

(assert (=> b!7950652 (= e!4690113 (>= (size!43403 (_1!38601 lt!2699937)) (size!43403 testedP!447)))))

(declare-fun bm!736983 () Bool)

(assert (=> bm!736983 (= call!736987 (lemmaIsPrefixSameLengthThenSameList!1615 input!7927 testedP!447 input!7927))))

(declare-fun b!7950653 () Bool)

(assert (=> b!7950653 (= e!4690112 lt!2699948)))

(declare-fun bm!736984 () Bool)

(assert (=> bm!736984 (= call!736983 (nullable!9568 r!24602))))

(declare-fun b!7950654 () Bool)

(declare-fun c!1460339 () Bool)

(assert (=> b!7950654 (= c!1460339 call!736983)))

(declare-fun lt!2699947 () Unit!169826)

(declare-fun lt!2699944 () Unit!169826)

(assert (=> b!7950654 (= lt!2699947 lt!2699944)))

(assert (=> b!7950654 (= input!7927 testedP!447)))

(assert (=> b!7950654 (= lt!2699944 call!736987)))

(declare-fun lt!2699941 () Unit!169826)

(declare-fun lt!2699931 () Unit!169826)

(assert (=> b!7950654 (= lt!2699941 lt!2699931)))

(assert (=> b!7950654 call!736985))

(assert (=> b!7950654 (= lt!2699931 call!736984)))

(assert (=> b!7950654 (= e!4690107 e!4690114)))

(declare-fun b!7950655 () Bool)

(assert (=> b!7950655 (= e!4690108 e!4690113)))

(declare-fun res!3152903 () Bool)

(assert (=> b!7950655 (=> res!3152903 e!4690113)))

(assert (=> b!7950655 (= res!3152903 (isEmpty!42871 (_1!38601 lt!2699937)))))

(assert (= (and d!2376104 c!1460340) b!7950651))

(assert (= (and d!2376104 (not c!1460340)) b!7950650))

(assert (= (and b!7950650 c!1460338) b!7950654))

(assert (= (and b!7950650 (not c!1460338)) b!7950643))

(assert (= (and b!7950654 c!1460339) b!7950647))

(assert (= (and b!7950654 (not c!1460339)) b!7950642))

(assert (= (and b!7950643 c!1460341) b!7950649))

(assert (= (and b!7950643 (not c!1460341)) b!7950645))

(assert (= (and b!7950643 c!1460342) b!7950644))

(assert (= (and b!7950643 (not c!1460342)) b!7950648))

(assert (= (and b!7950644 c!1460337) b!7950646))

(assert (= (and b!7950644 (not c!1460337)) b!7950653))

(assert (= (or b!7950644 b!7950648) bm!736979))

(assert (= (or b!7950644 b!7950648) bm!736977))

(assert (= (or b!7950644 b!7950648) bm!736981))

(assert (= (or b!7950644 b!7950648) bm!736982))

(assert (= (or b!7950654 b!7950643) bm!736984))

(assert (= (or b!7950654 b!7950649) bm!736983))

(assert (= (or b!7950654 b!7950649) bm!736980))

(assert (= (or b!7950654 b!7950649) bm!736978))

(assert (= (and d!2376104 res!3152902) b!7950655))

(assert (= (and b!7950655 (not res!3152903)) b!7950652))

(assert (=> bm!736983 m!8334874))

(assert (=> b!7950643 m!8334900))

(assert (=> b!7950643 m!8334922))

(assert (=> b!7950643 m!8334890))

(assert (=> b!7950643 m!8334896))

(assert (=> b!7950643 m!8334928))

(assert (=> b!7950643 m!8334878))

(assert (=> b!7950643 m!8334880))

(declare-fun m!8335024 () Bool)

(assert (=> b!7950643 m!8335024))

(assert (=> b!7950643 m!8334922))

(assert (=> b!7950643 m!8334926))

(assert (=> b!7950643 m!8334892))

(declare-fun m!8335026 () Bool)

(assert (=> b!7950643 m!8335026))

(declare-fun m!8335028 () Bool)

(assert (=> b!7950643 m!8335028))

(assert (=> b!7950643 m!8334896))

(declare-fun m!8335030 () Bool)

(assert (=> b!7950643 m!8335030))

(assert (=> b!7950643 m!8335026))

(assert (=> b!7950643 m!8334884))

(declare-fun m!8335032 () Bool)

(assert (=> b!7950652 m!8335032))

(assert (=> b!7950652 m!8334890))

(assert (=> bm!736984 m!8334876))

(assert (=> bm!736977 m!8335024))

(assert (=> bm!736979 m!8334880))

(assert (=> bm!736978 m!8334872))

(declare-fun m!8335034 () Bool)

(assert (=> bm!736982 m!8335034))

(declare-fun m!8335036 () Bool)

(assert (=> bm!736981 m!8335036))

(assert (=> bm!736980 m!8334870))

(declare-fun m!8335038 () Bool)

(assert (=> b!7950644 m!8335038))

(declare-fun m!8335040 () Bool)

(assert (=> b!7950655 m!8335040))

(declare-fun m!8335042 () Bool)

(assert (=> d!2376104 m!8335042))

(declare-fun m!8335044 () Bool)

(assert (=> d!2376104 m!8335044))

(declare-fun m!8335046 () Bool)

(assert (=> d!2376104 m!8335046))

(assert (=> d!2376104 m!8335044))

(declare-fun m!8335048 () Bool)

(assert (=> d!2376104 m!8335048))

(assert (=> d!2376104 m!8334904))

(declare-fun m!8335050 () Bool)

(assert (=> d!2376104 m!8335050))

(assert (=> d!2376104 m!8334896))

(declare-fun m!8335052 () Bool)

(assert (=> d!2376104 m!8335052))

(assert (=> b!7950458 d!2376104))

(declare-fun d!2376130 () Bool)

(declare-fun lt!2699953 () List!74696)

(assert (=> d!2376130 (= (++!18337 testedP!447 lt!2699953) input!7927)))

(declare-fun e!4690117 () List!74696)

(assert (=> d!2376130 (= lt!2699953 e!4690117)))

(declare-fun c!1460345 () Bool)

(assert (=> d!2376130 (= c!1460345 ((_ is Cons!74572) testedP!447))))

(assert (=> d!2376130 (>= (size!43403 input!7927) (size!43403 testedP!447))))

(assert (=> d!2376130 (= (getSuffix!3770 input!7927 testedP!447) lt!2699953)))

(declare-fun b!7950660 () Bool)

(assert (=> b!7950660 (= e!4690117 (getSuffix!3770 (tail!15759 input!7927) (t!390439 testedP!447)))))

(declare-fun b!7950661 () Bool)

(assert (=> b!7950661 (= e!4690117 input!7927)))

(assert (= (and d!2376130 c!1460345) b!7950660))

(assert (= (and d!2376130 (not c!1460345)) b!7950661))

(declare-fun m!8335054 () Bool)

(assert (=> d!2376130 m!8335054))

(assert (=> d!2376130 m!8334892))

(assert (=> d!2376130 m!8334890))

(assert (=> b!7950660 m!8334918))

(assert (=> b!7950660 m!8334918))

(declare-fun m!8335056 () Bool)

(assert (=> b!7950660 m!8335056))

(assert (=> b!7950458 d!2376130))

(declare-fun d!2376132 () Bool)

(assert (=> d!2376132 (isPrefix!6567 input!7927 input!7927)))

(declare-fun lt!2699956 () Unit!169826)

(declare-fun choose!59913 (List!74696 List!74696) Unit!169826)

(assert (=> d!2376132 (= lt!2699956 (choose!59913 input!7927 input!7927))))

(assert (=> d!2376132 (= (lemmaIsPrefixRefl!4035 input!7927 input!7927) lt!2699956)))

(declare-fun bs!1969536 () Bool)

(assert (= bs!1969536 d!2376132))

(assert (=> bs!1969536 m!8334872))

(declare-fun m!8335058 () Bool)

(assert (=> bs!1969536 m!8335058))

(assert (=> b!7950451 d!2376132))

(declare-fun b!7950665 () Bool)

(declare-fun e!4690118 () Bool)

(assert (=> b!7950665 (= e!4690118 (>= (size!43403 input!7927) (size!43403 input!7927)))))

(declare-fun d!2376134 () Bool)

(assert (=> d!2376134 e!4690118))

(declare-fun res!3152907 () Bool)

(assert (=> d!2376134 (=> res!3152907 e!4690118)))

(declare-fun lt!2699957 () Bool)

(assert (=> d!2376134 (= res!3152907 (not lt!2699957))))

(declare-fun e!4690119 () Bool)

(assert (=> d!2376134 (= lt!2699957 e!4690119)))

(declare-fun res!3152906 () Bool)

(assert (=> d!2376134 (=> res!3152906 e!4690119)))

(assert (=> d!2376134 (= res!3152906 ((_ is Nil!74572) input!7927))))

(assert (=> d!2376134 (= (isPrefix!6567 input!7927 input!7927) lt!2699957)))

(declare-fun b!7950662 () Bool)

(declare-fun e!4690120 () Bool)

(assert (=> b!7950662 (= e!4690119 e!4690120)))

(declare-fun res!3152904 () Bool)

(assert (=> b!7950662 (=> (not res!3152904) (not e!4690120))))

(assert (=> b!7950662 (= res!3152904 (not ((_ is Nil!74572) input!7927)))))

(declare-fun b!7950663 () Bool)

(declare-fun res!3152905 () Bool)

(assert (=> b!7950663 (=> (not res!3152905) (not e!4690120))))

(assert (=> b!7950663 (= res!3152905 (= (head!16219 input!7927) (head!16219 input!7927)))))

(declare-fun b!7950664 () Bool)

(assert (=> b!7950664 (= e!4690120 (isPrefix!6567 (tail!15759 input!7927) (tail!15759 input!7927)))))

(assert (= (and d!2376134 (not res!3152906)) b!7950662))

(assert (= (and b!7950662 res!3152904) b!7950663))

(assert (= (and b!7950663 res!3152905) b!7950664))

(assert (= (and d!2376134 (not res!3152907)) b!7950665))

(assert (=> b!7950665 m!8334892))

(assert (=> b!7950665 m!8334892))

(assert (=> b!7950663 m!8334914))

(assert (=> b!7950663 m!8334914))

(assert (=> b!7950664 m!8334918))

(assert (=> b!7950664 m!8334918))

(assert (=> b!7950664 m!8334918))

(assert (=> b!7950664 m!8334918))

(declare-fun m!8335060 () Bool)

(assert (=> b!7950664 m!8335060))

(assert (=> b!7950451 d!2376134))

(declare-fun d!2376136 () Bool)

(assert (=> d!2376136 (= input!7927 testedP!447)))

(declare-fun lt!2699960 () Unit!169826)

(declare-fun choose!59914 (List!74696 List!74696 List!74696) Unit!169826)

(assert (=> d!2376136 (= lt!2699960 (choose!59914 input!7927 testedP!447 input!7927))))

(assert (=> d!2376136 (isPrefix!6567 input!7927 input!7927)))

(assert (=> d!2376136 (= (lemmaIsPrefixSameLengthThenSameList!1615 input!7927 testedP!447 input!7927) lt!2699960)))

(declare-fun bs!1969537 () Bool)

(assert (= bs!1969537 d!2376136))

(declare-fun m!8335062 () Bool)

(assert (=> bs!1969537 m!8335062))

(assert (=> bs!1969537 m!8334872))

(assert (=> b!7950451 d!2376136))

(declare-fun d!2376138 () Bool)

(assert (=> d!2376138 (<= (size!43403 testedP!447) (size!43403 input!7927))))

(declare-fun lt!2699963 () Unit!169826)

(declare-fun choose!59915 (List!74696 List!74696) Unit!169826)

(assert (=> d!2376138 (= lt!2699963 (choose!59915 testedP!447 input!7927))))

(assert (=> d!2376138 (isPrefix!6567 testedP!447 input!7927)))

(assert (=> d!2376138 (= (lemmaIsPrefixThenSmallerEqSize!1084 testedP!447 input!7927) lt!2699963)))

(declare-fun bs!1969538 () Bool)

(assert (= bs!1969538 d!2376138))

(assert (=> bs!1969538 m!8334890))

(assert (=> bs!1969538 m!8334892))

(declare-fun m!8335064 () Bool)

(assert (=> bs!1969538 m!8335064))

(assert (=> bs!1969538 m!8334898))

(assert (=> b!7950465 d!2376138))

(declare-fun b!7950676 () Bool)

(declare-fun e!4690123 () Bool)

(assert (=> b!7950676 (= e!4690123 tp_is_empty!53477)))

(declare-fun b!7950678 () Bool)

(declare-fun tp!2366170 () Bool)

(assert (=> b!7950678 (= e!4690123 tp!2366170)))

(assert (=> b!7950453 (= tp!2366156 e!4690123)))

(declare-fun b!7950677 () Bool)

(declare-fun tp!2366169 () Bool)

(declare-fun tp!2366173 () Bool)

(assert (=> b!7950677 (= e!4690123 (and tp!2366169 tp!2366173))))

(declare-fun b!7950679 () Bool)

(declare-fun tp!2366171 () Bool)

(declare-fun tp!2366172 () Bool)

(assert (=> b!7950679 (= e!4690123 (and tp!2366171 tp!2366172))))

(assert (= (and b!7950453 ((_ is ElementMatch!21467) (reg!21796 baseR!116))) b!7950676))

(assert (= (and b!7950453 ((_ is Concat!30466) (reg!21796 baseR!116))) b!7950677))

(assert (= (and b!7950453 ((_ is Star!21467) (reg!21796 baseR!116))) b!7950678))

(assert (= (and b!7950453 ((_ is Union!21467) (reg!21796 baseR!116))) b!7950679))

(declare-fun b!7950680 () Bool)

(declare-fun e!4690124 () Bool)

(assert (=> b!7950680 (= e!4690124 tp_is_empty!53477)))

(declare-fun b!7950682 () Bool)

(declare-fun tp!2366175 () Bool)

(assert (=> b!7950682 (= e!4690124 tp!2366175)))

(assert (=> b!7950454 (= tp!2366148 e!4690124)))

(declare-fun b!7950681 () Bool)

(declare-fun tp!2366174 () Bool)

(declare-fun tp!2366178 () Bool)

(assert (=> b!7950681 (= e!4690124 (and tp!2366174 tp!2366178))))

(declare-fun b!7950683 () Bool)

(declare-fun tp!2366176 () Bool)

(declare-fun tp!2366177 () Bool)

(assert (=> b!7950683 (= e!4690124 (and tp!2366176 tp!2366177))))

(assert (= (and b!7950454 ((_ is ElementMatch!21467) (regOne!43447 r!24602))) b!7950680))

(assert (= (and b!7950454 ((_ is Concat!30466) (regOne!43447 r!24602))) b!7950681))

(assert (= (and b!7950454 ((_ is Star!21467) (regOne!43447 r!24602))) b!7950682))

(assert (= (and b!7950454 ((_ is Union!21467) (regOne!43447 r!24602))) b!7950683))

(declare-fun b!7950684 () Bool)

(declare-fun e!4690125 () Bool)

(assert (=> b!7950684 (= e!4690125 tp_is_empty!53477)))

(declare-fun b!7950686 () Bool)

(declare-fun tp!2366180 () Bool)

(assert (=> b!7950686 (= e!4690125 tp!2366180)))

(assert (=> b!7950454 (= tp!2366152 e!4690125)))

(declare-fun b!7950685 () Bool)

(declare-fun tp!2366179 () Bool)

(declare-fun tp!2366183 () Bool)

(assert (=> b!7950685 (= e!4690125 (and tp!2366179 tp!2366183))))

(declare-fun b!7950687 () Bool)

(declare-fun tp!2366181 () Bool)

(declare-fun tp!2366182 () Bool)

(assert (=> b!7950687 (= e!4690125 (and tp!2366181 tp!2366182))))

(assert (= (and b!7950454 ((_ is ElementMatch!21467) (regTwo!43447 r!24602))) b!7950684))

(assert (= (and b!7950454 ((_ is Concat!30466) (regTwo!43447 r!24602))) b!7950685))

(assert (= (and b!7950454 ((_ is Star!21467) (regTwo!43447 r!24602))) b!7950686))

(assert (= (and b!7950454 ((_ is Union!21467) (regTwo!43447 r!24602))) b!7950687))

(declare-fun b!7950692 () Bool)

(declare-fun e!4690128 () Bool)

(declare-fun tp!2366186 () Bool)

(assert (=> b!7950692 (= e!4690128 (and tp_is_empty!53477 tp!2366186))))

(assert (=> b!7950461 (= tp!2366151 e!4690128)))

(assert (= (and b!7950461 ((_ is Cons!74572) (t!390439 input!7927))) b!7950692))

(declare-fun b!7950693 () Bool)

(declare-fun e!4690129 () Bool)

(declare-fun tp!2366187 () Bool)

(assert (=> b!7950693 (= e!4690129 (and tp_is_empty!53477 tp!2366187))))

(assert (=> b!7950456 (= tp!2366147 e!4690129)))

(assert (= (and b!7950456 ((_ is Cons!74572) (t!390439 testedP!447))) b!7950693))

(declare-fun b!7950694 () Bool)

(declare-fun e!4690130 () Bool)

(assert (=> b!7950694 (= e!4690130 tp_is_empty!53477)))

(declare-fun b!7950696 () Bool)

(declare-fun tp!2366189 () Bool)

(assert (=> b!7950696 (= e!4690130 tp!2366189)))

(assert (=> b!7950462 (= tp!2366149 e!4690130)))

(declare-fun b!7950695 () Bool)

(declare-fun tp!2366188 () Bool)

(declare-fun tp!2366192 () Bool)

(assert (=> b!7950695 (= e!4690130 (and tp!2366188 tp!2366192))))

(declare-fun b!7950697 () Bool)

(declare-fun tp!2366190 () Bool)

(declare-fun tp!2366191 () Bool)

(assert (=> b!7950697 (= e!4690130 (and tp!2366190 tp!2366191))))

(assert (= (and b!7950462 ((_ is ElementMatch!21467) (regOne!43447 baseR!116))) b!7950694))

(assert (= (and b!7950462 ((_ is Concat!30466) (regOne!43447 baseR!116))) b!7950695))

(assert (= (and b!7950462 ((_ is Star!21467) (regOne!43447 baseR!116))) b!7950696))

(assert (= (and b!7950462 ((_ is Union!21467) (regOne!43447 baseR!116))) b!7950697))

(declare-fun b!7950698 () Bool)

(declare-fun e!4690131 () Bool)

(assert (=> b!7950698 (= e!4690131 tp_is_empty!53477)))

(declare-fun b!7950700 () Bool)

(declare-fun tp!2366194 () Bool)

(assert (=> b!7950700 (= e!4690131 tp!2366194)))

(assert (=> b!7950462 (= tp!2366154 e!4690131)))

(declare-fun b!7950699 () Bool)

(declare-fun tp!2366193 () Bool)

(declare-fun tp!2366197 () Bool)

(assert (=> b!7950699 (= e!4690131 (and tp!2366193 tp!2366197))))

(declare-fun b!7950701 () Bool)

(declare-fun tp!2366195 () Bool)

(declare-fun tp!2366196 () Bool)

(assert (=> b!7950701 (= e!4690131 (and tp!2366195 tp!2366196))))

(assert (= (and b!7950462 ((_ is ElementMatch!21467) (regTwo!43447 baseR!116))) b!7950698))

(assert (= (and b!7950462 ((_ is Concat!30466) (regTwo!43447 baseR!116))) b!7950699))

(assert (= (and b!7950462 ((_ is Star!21467) (regTwo!43447 baseR!116))) b!7950700))

(assert (= (and b!7950462 ((_ is Union!21467) (regTwo!43447 baseR!116))) b!7950701))

(declare-fun b!7950702 () Bool)

(declare-fun e!4690132 () Bool)

(assert (=> b!7950702 (= e!4690132 tp_is_empty!53477)))

(declare-fun b!7950704 () Bool)

(declare-fun tp!2366199 () Bool)

(assert (=> b!7950704 (= e!4690132 tp!2366199)))

(assert (=> b!7950460 (= tp!2366155 e!4690132)))

(declare-fun b!7950703 () Bool)

(declare-fun tp!2366198 () Bool)

(declare-fun tp!2366202 () Bool)

(assert (=> b!7950703 (= e!4690132 (and tp!2366198 tp!2366202))))

(declare-fun b!7950705 () Bool)

(declare-fun tp!2366200 () Bool)

(declare-fun tp!2366201 () Bool)

(assert (=> b!7950705 (= e!4690132 (and tp!2366200 tp!2366201))))

(assert (= (and b!7950460 ((_ is ElementMatch!21467) (reg!21796 r!24602))) b!7950702))

(assert (= (and b!7950460 ((_ is Concat!30466) (reg!21796 r!24602))) b!7950703))

(assert (= (and b!7950460 ((_ is Star!21467) (reg!21796 r!24602))) b!7950704))

(assert (= (and b!7950460 ((_ is Union!21467) (reg!21796 r!24602))) b!7950705))

(declare-fun b!7950706 () Bool)

(declare-fun e!4690133 () Bool)

(assert (=> b!7950706 (= e!4690133 tp_is_empty!53477)))

(declare-fun b!7950708 () Bool)

(declare-fun tp!2366204 () Bool)

(assert (=> b!7950708 (= e!4690133 tp!2366204)))

(assert (=> b!7950455 (= tp!2366158 e!4690133)))

(declare-fun b!7950707 () Bool)

(declare-fun tp!2366203 () Bool)

(declare-fun tp!2366207 () Bool)

(assert (=> b!7950707 (= e!4690133 (and tp!2366203 tp!2366207))))

(declare-fun b!7950709 () Bool)

(declare-fun tp!2366205 () Bool)

(declare-fun tp!2366206 () Bool)

(assert (=> b!7950709 (= e!4690133 (and tp!2366205 tp!2366206))))

(assert (= (and b!7950455 ((_ is ElementMatch!21467) (regOne!43446 r!24602))) b!7950706))

(assert (= (and b!7950455 ((_ is Concat!30466) (regOne!43446 r!24602))) b!7950707))

(assert (= (and b!7950455 ((_ is Star!21467) (regOne!43446 r!24602))) b!7950708))

(assert (= (and b!7950455 ((_ is Union!21467) (regOne!43446 r!24602))) b!7950709))

(declare-fun b!7950710 () Bool)

(declare-fun e!4690134 () Bool)

(assert (=> b!7950710 (= e!4690134 tp_is_empty!53477)))

(declare-fun b!7950712 () Bool)

(declare-fun tp!2366209 () Bool)

(assert (=> b!7950712 (= e!4690134 tp!2366209)))

(assert (=> b!7950455 (= tp!2366150 e!4690134)))

(declare-fun b!7950711 () Bool)

(declare-fun tp!2366208 () Bool)

(declare-fun tp!2366212 () Bool)

(assert (=> b!7950711 (= e!4690134 (and tp!2366208 tp!2366212))))

(declare-fun b!7950713 () Bool)

(declare-fun tp!2366210 () Bool)

(declare-fun tp!2366211 () Bool)

(assert (=> b!7950713 (= e!4690134 (and tp!2366210 tp!2366211))))

(assert (= (and b!7950455 ((_ is ElementMatch!21467) (regTwo!43446 r!24602))) b!7950710))

(assert (= (and b!7950455 ((_ is Concat!30466) (regTwo!43446 r!24602))) b!7950711))

(assert (= (and b!7950455 ((_ is Star!21467) (regTwo!43446 r!24602))) b!7950712))

(assert (= (and b!7950455 ((_ is Union!21467) (regTwo!43446 r!24602))) b!7950713))

(declare-fun b!7950714 () Bool)

(declare-fun e!4690135 () Bool)

(assert (=> b!7950714 (= e!4690135 tp_is_empty!53477)))

(declare-fun b!7950716 () Bool)

(declare-fun tp!2366214 () Bool)

(assert (=> b!7950716 (= e!4690135 tp!2366214)))

(assert (=> b!7950466 (= tp!2366157 e!4690135)))

(declare-fun b!7950715 () Bool)

(declare-fun tp!2366213 () Bool)

(declare-fun tp!2366217 () Bool)

(assert (=> b!7950715 (= e!4690135 (and tp!2366213 tp!2366217))))

(declare-fun b!7950717 () Bool)

(declare-fun tp!2366215 () Bool)

(declare-fun tp!2366216 () Bool)

(assert (=> b!7950717 (= e!4690135 (and tp!2366215 tp!2366216))))

(assert (= (and b!7950466 ((_ is ElementMatch!21467) (regOne!43446 baseR!116))) b!7950714))

(assert (= (and b!7950466 ((_ is Concat!30466) (regOne!43446 baseR!116))) b!7950715))

(assert (= (and b!7950466 ((_ is Star!21467) (regOne!43446 baseR!116))) b!7950716))

(assert (= (and b!7950466 ((_ is Union!21467) (regOne!43446 baseR!116))) b!7950717))

(declare-fun b!7950718 () Bool)

(declare-fun e!4690136 () Bool)

(assert (=> b!7950718 (= e!4690136 tp_is_empty!53477)))

(declare-fun b!7950720 () Bool)

(declare-fun tp!2366219 () Bool)

(assert (=> b!7950720 (= e!4690136 tp!2366219)))

(assert (=> b!7950466 (= tp!2366153 e!4690136)))

(declare-fun b!7950719 () Bool)

(declare-fun tp!2366218 () Bool)

(declare-fun tp!2366222 () Bool)

(assert (=> b!7950719 (= e!4690136 (and tp!2366218 tp!2366222))))

(declare-fun b!7950721 () Bool)

(declare-fun tp!2366220 () Bool)

(declare-fun tp!2366221 () Bool)

(assert (=> b!7950721 (= e!4690136 (and tp!2366220 tp!2366221))))

(assert (= (and b!7950466 ((_ is ElementMatch!21467) (regTwo!43446 baseR!116))) b!7950718))

(assert (= (and b!7950466 ((_ is Concat!30466) (regTwo!43446 baseR!116))) b!7950719))

(assert (= (and b!7950466 ((_ is Star!21467) (regTwo!43446 baseR!116))) b!7950720))

(assert (= (and b!7950466 ((_ is Union!21467) (regTwo!43446 baseR!116))) b!7950721))

(check-sat (not b!7950660) (not d!2376138) (not b!7950687) (not b!7950704) (not d!2376088) (not b!7950711) (not b!7950708) (not b!7950665) (not b!7950715) (not b!7950717) (not b!7950701) (not b!7950678) (not d!2376078) (not d!2376090) (not b!7950526) (not bm!736978) (not bm!736984) (not b!7950695) (not b!7950519) (not bm!736947) (not bm!736951) (not bm!736982) (not b!7950721) (not b!7950697) (not bm!736977) (not b!7950703) (not b!7950531) (not d!2376104) (not b!7950516) (not b!7950719) (not b!7950681) (not b!7950663) (not b!7950679) (not b!7950712) (not b!7950544) (not b!7950644) (not b!7950505) (not b!7950682) (not b!7950686) (not b!7950643) (not b!7950515) (not d!2376080) (not b!7950699) (not b!7950520) (not b!7950700) tp_is_empty!53477 (not b!7950504) (not b!7950677) (not b!7950664) (not b!7950652) (not d!2376130) (not b!7950542) (not bm!736981) (not b!7950655) (not b!7950693) (not b!7950488) (not b!7950521) (not b!7950716) (not bm!736980) (not bm!736948) (not bm!736979) (not b!7950683) (not bm!736950) (not b!7950503) (not d!2376136) (not bm!736983) (not b!7950713) (not b!7950709) (not b!7950705) (not b!7950685) (not b!7950707) (not b!7950692) (not b!7950720) (not d!2376132) (not b!7950696))
(check-sat)
