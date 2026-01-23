; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!752724 () Bool)

(assert start!752724)

(declare-fun b!7998927 () Bool)

(declare-fun e!4712380 () Bool)

(declare-fun tp!2392158 () Bool)

(declare-fun tp!2392159 () Bool)

(assert (=> b!7998927 (= e!4712380 (and tp!2392158 tp!2392159))))

(declare-fun b!7998928 () Bool)

(declare-fun tp!2392157 () Bool)

(declare-fun tp!2392156 () Bool)

(assert (=> b!7998928 (= e!4712380 (and tp!2392157 tp!2392156))))

(declare-fun b!7998929 () Bool)

(declare-fun e!4712381 () Bool)

(declare-fun tp!2392160 () Bool)

(declare-fun tp!2392154 () Bool)

(assert (=> b!7998929 (= e!4712381 (and tp!2392160 tp!2392154))))

(declare-fun res!3163650 () Bool)

(declare-fun e!4712378 () Bool)

(assert (=> start!752724 (=> (not res!3163650) (not e!4712378))))

(declare-datatypes ((C!43492 0))(
  ( (C!43493 (val!32294 Int)) )
))
(declare-datatypes ((Regex!21577 0))(
  ( (ElementMatch!21577 (c!1468640 C!43492)) (Concat!30576 (regOne!43666 Regex!21577) (regTwo!43666 Regex!21577)) (EmptyExpr!21577) (Star!21577 (reg!21906 Regex!21577)) (EmptyLang!21577) (Union!21577 (regOne!43667 Regex!21577) (regTwo!43667 Regex!21577)) )
))
(declare-fun baseR!141 () Regex!21577)

(declare-fun validRegex!11881 (Regex!21577) Bool)

(assert (=> start!752724 (= res!3163650 (validRegex!11881 baseR!141))))

(assert (=> start!752724 e!4712378))

(assert (=> start!752724 e!4712381))

(declare-fun e!4712379 () Bool)

(assert (=> start!752724 e!4712379))

(assert (=> start!752724 e!4712380))

(declare-fun tp_is_empty!53697 () Bool)

(assert (=> start!752724 tp_is_empty!53697))

(declare-fun b!7998930 () Bool)

(declare-fun res!3163652 () Bool)

(assert (=> b!7998930 (=> (not res!3163652) (not e!4712378))))

(declare-datatypes ((List!74806 0))(
  ( (Nil!74682) (Cons!74682 (h!81130 C!43492) (t!390549 List!74806)) )
))
(declare-fun input!8036 () List!74806)

(get-info :version)

(assert (=> b!7998930 (= res!3163652 (not ((_ is Cons!74682) input!8036)))))

(declare-fun b!7998931 () Bool)

(declare-fun tp!2392152 () Bool)

(assert (=> b!7998931 (= e!4712380 tp!2392152)))

(declare-fun b!7998932 () Bool)

(declare-fun res!3163651 () Bool)

(assert (=> b!7998932 (=> (not res!3163651) (not e!4712378))))

(declare-fun r!24786 () Regex!21577)

(declare-fun derivative!763 (Regex!21577 List!74806) Regex!21577)

(assert (=> b!7998932 (= res!3163651 (= (derivative!763 baseR!141 input!8036) r!24786))))

(declare-fun b!7998933 () Bool)

(assert (=> b!7998933 (= e!4712381 tp_is_empty!53697)))

(declare-fun b!7998934 () Bool)

(declare-fun tp!2392162 () Bool)

(assert (=> b!7998934 (= e!4712379 (and tp_is_empty!53697 tp!2392162))))

(declare-fun b!7998935 () Bool)

(declare-fun tp!2392161 () Bool)

(assert (=> b!7998935 (= e!4712381 tp!2392161)))

(declare-fun b!7998936 () Bool)

(declare-fun tp!2392153 () Bool)

(declare-fun tp!2392155 () Bool)

(assert (=> b!7998936 (= e!4712381 (and tp!2392153 tp!2392155))))

(declare-fun c!12996 () C!43492)

(declare-fun b!7998937 () Bool)

(declare-fun ++!18425 (List!74806 List!74806) List!74806)

(declare-fun derivativeStep!6592 (Regex!21577 C!43492) Regex!21577)

(assert (=> b!7998937 (= e!4712378 (not (= (derivative!763 baseR!141 (++!18425 input!8036 (Cons!74682 c!12996 Nil!74682))) (derivativeStep!6592 r!24786 c!12996))))))

(declare-fun b!7998938 () Bool)

(assert (=> b!7998938 (= e!4712380 tp_is_empty!53697)))

(assert (= (and start!752724 res!3163650) b!7998932))

(assert (= (and b!7998932 res!3163651) b!7998930))

(assert (= (and b!7998930 res!3163652) b!7998937))

(assert (= (and start!752724 ((_ is ElementMatch!21577) baseR!141)) b!7998933))

(assert (= (and start!752724 ((_ is Concat!30576) baseR!141)) b!7998929))

(assert (= (and start!752724 ((_ is Star!21577) baseR!141)) b!7998935))

(assert (= (and start!752724 ((_ is Union!21577) baseR!141)) b!7998936))

(assert (= (and start!752724 ((_ is Cons!74682) input!8036)) b!7998934))

(assert (= (and start!752724 ((_ is ElementMatch!21577) r!24786)) b!7998938))

(assert (= (and start!752724 ((_ is Concat!30576) r!24786)) b!7998927))

(assert (= (and start!752724 ((_ is Star!21577) r!24786)) b!7998931))

(assert (= (and start!752724 ((_ is Union!21577) r!24786)) b!7998928))

(declare-fun m!8367812 () Bool)

(assert (=> start!752724 m!8367812))

(declare-fun m!8367814 () Bool)

(assert (=> b!7998932 m!8367814))

(declare-fun m!8367816 () Bool)

(assert (=> b!7998937 m!8367816))

(assert (=> b!7998937 m!8367816))

(declare-fun m!8367818 () Bool)

(assert (=> b!7998937 m!8367818))

(declare-fun m!8367820 () Bool)

(assert (=> b!7998937 m!8367820))

(check-sat (not b!7998934) (not b!7998937) (not b!7998928) (not b!7998935) (not b!7998927) (not start!752724) (not b!7998936) (not b!7998932) (not b!7998929) tp_is_empty!53697 (not b!7998931))
(check-sat)
(get-model)

(declare-fun d!2386497 () Bool)

(declare-fun lt!2713590 () Regex!21577)

(assert (=> d!2386497 (validRegex!11881 lt!2713590)))

(declare-fun e!4712386 () Regex!21577)

(assert (=> d!2386497 (= lt!2713590 e!4712386)))

(declare-fun c!1468645 () Bool)

(assert (=> d!2386497 (= c!1468645 ((_ is Cons!74682) input!8036))))

(assert (=> d!2386497 (validRegex!11881 baseR!141)))

(assert (=> d!2386497 (= (derivative!763 baseR!141 input!8036) lt!2713590)))

(declare-fun b!7998947 () Bool)

(assert (=> b!7998947 (= e!4712386 (derivative!763 (derivativeStep!6592 baseR!141 (h!81130 input!8036)) (t!390549 input!8036)))))

(declare-fun b!7998948 () Bool)

(assert (=> b!7998948 (= e!4712386 baseR!141)))

(assert (= (and d!2386497 c!1468645) b!7998947))

(assert (= (and d!2386497 (not c!1468645)) b!7998948))

(declare-fun m!8367822 () Bool)

(assert (=> d!2386497 m!8367822))

(assert (=> d!2386497 m!8367812))

(declare-fun m!8367826 () Bool)

(assert (=> b!7998947 m!8367826))

(assert (=> b!7998947 m!8367826))

(declare-fun m!8367830 () Bool)

(assert (=> b!7998947 m!8367830))

(assert (=> b!7998932 d!2386497))

(declare-fun d!2386501 () Bool)

(declare-fun lt!2713592 () Regex!21577)

(assert (=> d!2386501 (validRegex!11881 lt!2713592)))

(declare-fun e!4712388 () Regex!21577)

(assert (=> d!2386501 (= lt!2713592 e!4712388)))

(declare-fun c!1468647 () Bool)

(assert (=> d!2386501 (= c!1468647 ((_ is Cons!74682) (++!18425 input!8036 (Cons!74682 c!12996 Nil!74682))))))

(assert (=> d!2386501 (validRegex!11881 baseR!141)))

(assert (=> d!2386501 (= (derivative!763 baseR!141 (++!18425 input!8036 (Cons!74682 c!12996 Nil!74682))) lt!2713592)))

(declare-fun b!7998951 () Bool)

(assert (=> b!7998951 (= e!4712388 (derivative!763 (derivativeStep!6592 baseR!141 (h!81130 (++!18425 input!8036 (Cons!74682 c!12996 Nil!74682)))) (t!390549 (++!18425 input!8036 (Cons!74682 c!12996 Nil!74682)))))))

(declare-fun b!7998952 () Bool)

(assert (=> b!7998952 (= e!4712388 baseR!141)))

(assert (= (and d!2386501 c!1468647) b!7998951))

(assert (= (and d!2386501 (not c!1468647)) b!7998952))

(declare-fun m!8367834 () Bool)

(assert (=> d!2386501 m!8367834))

(assert (=> d!2386501 m!8367812))

(declare-fun m!8367836 () Bool)

(assert (=> b!7998951 m!8367836))

(assert (=> b!7998951 m!8367836))

(declare-fun m!8367838 () Bool)

(assert (=> b!7998951 m!8367838))

(assert (=> b!7998937 d!2386501))

(declare-fun d!2386505 () Bool)

(declare-fun e!4712400 () Bool)

(assert (=> d!2386505 e!4712400))

(declare-fun res!3163663 () Bool)

(assert (=> d!2386505 (=> (not res!3163663) (not e!4712400))))

(declare-fun lt!2713598 () List!74806)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15878 (List!74806) (InoxSet C!43492))

(assert (=> d!2386505 (= res!3163663 (= (content!15878 lt!2713598) ((_ map or) (content!15878 input!8036) (content!15878 (Cons!74682 c!12996 Nil!74682)))))))

(declare-fun e!4712399 () List!74806)

(assert (=> d!2386505 (= lt!2713598 e!4712399)))

(declare-fun c!1468653 () Bool)

(assert (=> d!2386505 (= c!1468653 ((_ is Nil!74682) input!8036))))

(assert (=> d!2386505 (= (++!18425 input!8036 (Cons!74682 c!12996 Nil!74682)) lt!2713598)))

(declare-fun b!7998974 () Bool)

(assert (=> b!7998974 (= e!4712399 (Cons!74682 (h!81130 input!8036) (++!18425 (t!390549 input!8036) (Cons!74682 c!12996 Nil!74682))))))

(declare-fun b!7998975 () Bool)

(declare-fun res!3163664 () Bool)

(assert (=> b!7998975 (=> (not res!3163664) (not e!4712400))))

(declare-fun size!43499 (List!74806) Int)

(assert (=> b!7998975 (= res!3163664 (= (size!43499 lt!2713598) (+ (size!43499 input!8036) (size!43499 (Cons!74682 c!12996 Nil!74682)))))))

(declare-fun b!7998973 () Bool)

(assert (=> b!7998973 (= e!4712399 (Cons!74682 c!12996 Nil!74682))))

(declare-fun b!7998976 () Bool)

(assert (=> b!7998976 (= e!4712400 (or (not (= (Cons!74682 c!12996 Nil!74682) Nil!74682)) (= lt!2713598 input!8036)))))

(assert (= (and d!2386505 c!1468653) b!7998973))

(assert (= (and d!2386505 (not c!1468653)) b!7998974))

(assert (= (and d!2386505 res!3163663) b!7998975))

(assert (= (and b!7998975 res!3163664) b!7998976))

(declare-fun m!8367854 () Bool)

(assert (=> d!2386505 m!8367854))

(declare-fun m!8367856 () Bool)

(assert (=> d!2386505 m!8367856))

(declare-fun m!8367858 () Bool)

(assert (=> d!2386505 m!8367858))

(declare-fun m!8367860 () Bool)

(assert (=> b!7998974 m!8367860))

(declare-fun m!8367862 () Bool)

(assert (=> b!7998975 m!8367862))

(declare-fun m!8367864 () Bool)

(assert (=> b!7998975 m!8367864))

(declare-fun m!8367866 () Bool)

(assert (=> b!7998975 m!8367866))

(assert (=> b!7998937 d!2386505))

(declare-fun b!7999027 () Bool)

(declare-fun e!4712427 () Regex!21577)

(declare-fun call!743062 () Regex!21577)

(declare-fun call!743060 () Regex!21577)

(assert (=> b!7999027 (= e!4712427 (Union!21577 call!743062 call!743060))))

(declare-fun b!7999028 () Bool)

(declare-fun c!1468683 () Bool)

(assert (=> b!7999028 (= c!1468683 ((_ is Union!21577) r!24786))))

(declare-fun e!4712426 () Regex!21577)

(assert (=> b!7999028 (= e!4712426 e!4712427)))

(declare-fun b!7999029 () Bool)

(declare-fun c!1468679 () Bool)

(declare-fun nullable!9662 (Regex!21577) Bool)

(assert (=> b!7999029 (= c!1468679 (nullable!9662 (regOne!43666 r!24786)))))

(declare-fun e!4712429 () Regex!21577)

(declare-fun e!4712428 () Regex!21577)

(assert (=> b!7999029 (= e!4712429 e!4712428)))

(declare-fun b!7999030 () Bool)

(assert (=> b!7999030 (= e!4712426 (ite (= c!12996 (c!1468640 r!24786)) EmptyExpr!21577 EmptyLang!21577))))

(declare-fun b!7999031 () Bool)

(assert (=> b!7999031 (= e!4712427 e!4712429)))

(declare-fun c!1468681 () Bool)

(assert (=> b!7999031 (= c!1468681 ((_ is Star!21577) r!24786))))

(declare-fun d!2386509 () Bool)

(declare-fun lt!2713604 () Regex!21577)

(assert (=> d!2386509 (validRegex!11881 lt!2713604)))

(declare-fun e!4712430 () Regex!21577)

(assert (=> d!2386509 (= lt!2713604 e!4712430)))

(declare-fun c!1468682 () Bool)

(assert (=> d!2386509 (= c!1468682 (or ((_ is EmptyExpr!21577) r!24786) ((_ is EmptyLang!21577) r!24786)))))

(assert (=> d!2386509 (validRegex!11881 r!24786)))

(assert (=> d!2386509 (= (derivativeStep!6592 r!24786 c!12996) lt!2713604)))

(declare-fun b!7999032 () Bool)

(declare-fun call!743059 () Regex!21577)

(assert (=> b!7999032 (= e!4712428 (Union!21577 (Concat!30576 call!743059 (regTwo!43666 r!24786)) call!743062))))

(declare-fun b!7999033 () Bool)

(assert (=> b!7999033 (= e!4712430 e!4712426)))

(declare-fun c!1468680 () Bool)

(assert (=> b!7999033 (= c!1468680 ((_ is ElementMatch!21577) r!24786))))

(declare-fun b!7999034 () Bool)

(assert (=> b!7999034 (= e!4712430 EmptyLang!21577)))

(declare-fun bm!743054 () Bool)

(declare-fun call!743061 () Regex!21577)

(assert (=> bm!743054 (= call!743061 call!743060)))

(declare-fun bm!743055 () Bool)

(assert (=> bm!743055 (= call!743062 (derivativeStep!6592 (ite c!1468683 (regOne!43667 r!24786) (regTwo!43666 r!24786)) c!12996))))

(declare-fun b!7999035 () Bool)

(assert (=> b!7999035 (= e!4712428 (Union!21577 (Concat!30576 call!743059 (regTwo!43666 r!24786)) EmptyLang!21577))))

(declare-fun b!7999036 () Bool)

(assert (=> b!7999036 (= e!4712429 (Concat!30576 call!743061 r!24786))))

(declare-fun bm!743056 () Bool)

(assert (=> bm!743056 (= call!743059 call!743061)))

(declare-fun bm!743057 () Bool)

(assert (=> bm!743057 (= call!743060 (derivativeStep!6592 (ite c!1468683 (regTwo!43667 r!24786) (ite c!1468681 (reg!21906 r!24786) (regOne!43666 r!24786))) c!12996))))

(assert (= (and d!2386509 c!1468682) b!7999034))

(assert (= (and d!2386509 (not c!1468682)) b!7999033))

(assert (= (and b!7999033 c!1468680) b!7999030))

(assert (= (and b!7999033 (not c!1468680)) b!7999028))

(assert (= (and b!7999028 c!1468683) b!7999027))

(assert (= (and b!7999028 (not c!1468683)) b!7999031))

(assert (= (and b!7999031 c!1468681) b!7999036))

(assert (= (and b!7999031 (not c!1468681)) b!7999029))

(assert (= (and b!7999029 c!1468679) b!7999032))

(assert (= (and b!7999029 (not c!1468679)) b!7999035))

(assert (= (or b!7999032 b!7999035) bm!743056))

(assert (= (or b!7999036 bm!743056) bm!743054))

(assert (= (or b!7999027 bm!743054) bm!743057))

(assert (= (or b!7999027 b!7999032) bm!743055))

(declare-fun m!8367878 () Bool)

(assert (=> b!7999029 m!8367878))

(declare-fun m!8367880 () Bool)

(assert (=> d!2386509 m!8367880))

(declare-fun m!8367882 () Bool)

(assert (=> d!2386509 m!8367882))

(declare-fun m!8367884 () Bool)

(assert (=> bm!743055 m!8367884))

(declare-fun m!8367886 () Bool)

(assert (=> bm!743057 m!8367886))

(assert (=> b!7998937 d!2386509))

(declare-fun b!7999082 () Bool)

(declare-fun e!4712471 () Bool)

(declare-fun call!743079 () Bool)

(assert (=> b!7999082 (= e!4712471 call!743079)))

(declare-fun bm!743073 () Bool)

(declare-fun call!743080 () Bool)

(declare-fun c!1468694 () Bool)

(assert (=> bm!743073 (= call!743080 (validRegex!11881 (ite c!1468694 (regOne!43667 baseR!141) (regTwo!43666 baseR!141))))))

(declare-fun b!7999083 () Bool)

(declare-fun e!4712472 () Bool)

(declare-fun e!4712470 () Bool)

(assert (=> b!7999083 (= e!4712472 e!4712470)))

(declare-fun res!3163694 () Bool)

(assert (=> b!7999083 (=> (not res!3163694) (not e!4712470))))

(assert (=> b!7999083 (= res!3163694 call!743079)))

(declare-fun b!7999084 () Bool)

(declare-fun res!3163693 () Bool)

(assert (=> b!7999084 (=> res!3163693 e!4712472)))

(assert (=> b!7999084 (= res!3163693 (not ((_ is Concat!30576) baseR!141)))))

(declare-fun e!4712466 () Bool)

(assert (=> b!7999084 (= e!4712466 e!4712472)))

(declare-fun b!7999085 () Bool)

(declare-fun res!3163691 () Bool)

(assert (=> b!7999085 (=> (not res!3163691) (not e!4712471))))

(assert (=> b!7999085 (= res!3163691 call!743080)))

(assert (=> b!7999085 (= e!4712466 e!4712471)))

(declare-fun b!7999086 () Bool)

(declare-fun e!4712468 () Bool)

(assert (=> b!7999086 (= e!4712468 e!4712466)))

(assert (=> b!7999086 (= c!1468694 ((_ is Union!21577) baseR!141))))

(declare-fun b!7999087 () Bool)

(assert (=> b!7999087 (= e!4712470 call!743080)))

(declare-fun bm!743074 () Bool)

(declare-fun call!743078 () Bool)

(assert (=> bm!743074 (= call!743079 call!743078)))

(declare-fun c!1468695 () Bool)

(declare-fun bm!743075 () Bool)

(assert (=> bm!743075 (= call!743078 (validRegex!11881 (ite c!1468695 (reg!21906 baseR!141) (ite c!1468694 (regTwo!43667 baseR!141) (regOne!43666 baseR!141)))))))

(declare-fun b!7999088 () Bool)

(declare-fun e!4712469 () Bool)

(assert (=> b!7999088 (= e!4712469 call!743078)))

(declare-fun d!2386513 () Bool)

(declare-fun res!3163692 () Bool)

(declare-fun e!4712467 () Bool)

(assert (=> d!2386513 (=> res!3163692 e!4712467)))

(assert (=> d!2386513 (= res!3163692 ((_ is ElementMatch!21577) baseR!141))))

(assert (=> d!2386513 (= (validRegex!11881 baseR!141) e!4712467)))

(declare-fun b!7999089 () Bool)

(assert (=> b!7999089 (= e!4712468 e!4712469)))

(declare-fun res!3163690 () Bool)

(assert (=> b!7999089 (= res!3163690 (not (nullable!9662 (reg!21906 baseR!141))))))

(assert (=> b!7999089 (=> (not res!3163690) (not e!4712469))))

(declare-fun b!7999090 () Bool)

(assert (=> b!7999090 (= e!4712467 e!4712468)))

(assert (=> b!7999090 (= c!1468695 ((_ is Star!21577) baseR!141))))

(assert (= (and d!2386513 (not res!3163692)) b!7999090))

(assert (= (and b!7999090 c!1468695) b!7999089))

(assert (= (and b!7999090 (not c!1468695)) b!7999086))

(assert (= (and b!7999089 res!3163690) b!7999088))

(assert (= (and b!7999086 c!1468694) b!7999085))

(assert (= (and b!7999086 (not c!1468694)) b!7999084))

(assert (= (and b!7999085 res!3163691) b!7999082))

(assert (= (and b!7999084 (not res!3163693)) b!7999083))

(assert (= (and b!7999083 res!3163694) b!7999087))

(assert (= (or b!7999085 b!7999087) bm!743073))

(assert (= (or b!7999082 b!7999083) bm!743074))

(assert (= (or b!7999088 bm!743074) bm!743075))

(declare-fun m!8367896 () Bool)

(assert (=> bm!743073 m!8367896))

(declare-fun m!8367900 () Bool)

(assert (=> bm!743075 m!8367900))

(declare-fun m!8367904 () Bool)

(assert (=> b!7999089 m!8367904))

(assert (=> start!752724 d!2386513))

(declare-fun b!7999117 () Bool)

(declare-fun e!4712479 () Bool)

(assert (=> b!7999117 (= e!4712479 tp_is_empty!53697)))

(assert (=> b!7998935 (= tp!2392161 e!4712479)))

(declare-fun b!7999119 () Bool)

(declare-fun tp!2392192 () Bool)

(assert (=> b!7999119 (= e!4712479 tp!2392192)))

(declare-fun b!7999118 () Bool)

(declare-fun tp!2392191 () Bool)

(declare-fun tp!2392189 () Bool)

(assert (=> b!7999118 (= e!4712479 (and tp!2392191 tp!2392189))))

(declare-fun b!7999120 () Bool)

(declare-fun tp!2392188 () Bool)

(declare-fun tp!2392190 () Bool)

(assert (=> b!7999120 (= e!4712479 (and tp!2392188 tp!2392190))))

(assert (= (and b!7998935 ((_ is ElementMatch!21577) (reg!21906 baseR!141))) b!7999117))

(assert (= (and b!7998935 ((_ is Concat!30576) (reg!21906 baseR!141))) b!7999118))

(assert (= (and b!7998935 ((_ is Star!21577) (reg!21906 baseR!141))) b!7999119))

(assert (= (and b!7998935 ((_ is Union!21577) (reg!21906 baseR!141))) b!7999120))

(declare-fun b!7999125 () Bool)

(declare-fun e!4712481 () Bool)

(assert (=> b!7999125 (= e!4712481 tp_is_empty!53697)))

(assert (=> b!7998929 (= tp!2392160 e!4712481)))

(declare-fun b!7999127 () Bool)

(declare-fun tp!2392202 () Bool)

(assert (=> b!7999127 (= e!4712481 tp!2392202)))

(declare-fun b!7999126 () Bool)

(declare-fun tp!2392201 () Bool)

(declare-fun tp!2392199 () Bool)

(assert (=> b!7999126 (= e!4712481 (and tp!2392201 tp!2392199))))

(declare-fun b!7999128 () Bool)

(declare-fun tp!2392198 () Bool)

(declare-fun tp!2392200 () Bool)

(assert (=> b!7999128 (= e!4712481 (and tp!2392198 tp!2392200))))

(assert (= (and b!7998929 ((_ is ElementMatch!21577) (regOne!43666 baseR!141))) b!7999125))

(assert (= (and b!7998929 ((_ is Concat!30576) (regOne!43666 baseR!141))) b!7999126))

(assert (= (and b!7998929 ((_ is Star!21577) (regOne!43666 baseR!141))) b!7999127))

(assert (= (and b!7998929 ((_ is Union!21577) (regOne!43666 baseR!141))) b!7999128))

(declare-fun b!7999133 () Bool)

(declare-fun e!4712483 () Bool)

(assert (=> b!7999133 (= e!4712483 tp_is_empty!53697)))

(assert (=> b!7998929 (= tp!2392154 e!4712483)))

(declare-fun b!7999135 () Bool)

(declare-fun tp!2392212 () Bool)

(assert (=> b!7999135 (= e!4712483 tp!2392212)))

(declare-fun b!7999134 () Bool)

(declare-fun tp!2392211 () Bool)

(declare-fun tp!2392209 () Bool)

(assert (=> b!7999134 (= e!4712483 (and tp!2392211 tp!2392209))))

(declare-fun b!7999136 () Bool)

(declare-fun tp!2392208 () Bool)

(declare-fun tp!2392210 () Bool)

(assert (=> b!7999136 (= e!4712483 (and tp!2392208 tp!2392210))))

(assert (= (and b!7998929 ((_ is ElementMatch!21577) (regTwo!43666 baseR!141))) b!7999133))

(assert (= (and b!7998929 ((_ is Concat!30576) (regTwo!43666 baseR!141))) b!7999134))

(assert (= (and b!7998929 ((_ is Star!21577) (regTwo!43666 baseR!141))) b!7999135))

(assert (= (and b!7998929 ((_ is Union!21577) (regTwo!43666 baseR!141))) b!7999136))

(declare-fun b!7999149 () Bool)

(declare-fun e!4712488 () Bool)

(declare-fun tp!2392225 () Bool)

(assert (=> b!7999149 (= e!4712488 (and tp_is_empty!53697 tp!2392225))))

(assert (=> b!7998934 (= tp!2392162 e!4712488)))

(assert (= (and b!7998934 ((_ is Cons!74682) (t!390549 input!8036))) b!7999149))

(declare-fun b!7999154 () Bool)

(declare-fun e!4712490 () Bool)

(assert (=> b!7999154 (= e!4712490 tp_is_empty!53697)))

(assert (=> b!7998928 (= tp!2392157 e!4712490)))

(declare-fun b!7999156 () Bool)

(declare-fun tp!2392235 () Bool)

(assert (=> b!7999156 (= e!4712490 tp!2392235)))

(declare-fun b!7999155 () Bool)

(declare-fun tp!2392234 () Bool)

(declare-fun tp!2392232 () Bool)

(assert (=> b!7999155 (= e!4712490 (and tp!2392234 tp!2392232))))

(declare-fun b!7999157 () Bool)

(declare-fun tp!2392231 () Bool)

(declare-fun tp!2392233 () Bool)

(assert (=> b!7999157 (= e!4712490 (and tp!2392231 tp!2392233))))

(assert (= (and b!7998928 ((_ is ElementMatch!21577) (regOne!43667 r!24786))) b!7999154))

(assert (= (and b!7998928 ((_ is Concat!30576) (regOne!43667 r!24786))) b!7999155))

(assert (= (and b!7998928 ((_ is Star!21577) (regOne!43667 r!24786))) b!7999156))

(assert (= (and b!7998928 ((_ is Union!21577) (regOne!43667 r!24786))) b!7999157))

(declare-fun b!7999162 () Bool)

(declare-fun e!4712492 () Bool)

(assert (=> b!7999162 (= e!4712492 tp_is_empty!53697)))

(assert (=> b!7998928 (= tp!2392156 e!4712492)))

(declare-fun b!7999164 () Bool)

(declare-fun tp!2392245 () Bool)

(assert (=> b!7999164 (= e!4712492 tp!2392245)))

(declare-fun b!7999163 () Bool)

(declare-fun tp!2392244 () Bool)

(declare-fun tp!2392242 () Bool)

(assert (=> b!7999163 (= e!4712492 (and tp!2392244 tp!2392242))))

(declare-fun b!7999165 () Bool)

(declare-fun tp!2392241 () Bool)

(declare-fun tp!2392243 () Bool)

(assert (=> b!7999165 (= e!4712492 (and tp!2392241 tp!2392243))))

(assert (= (and b!7998928 ((_ is ElementMatch!21577) (regTwo!43667 r!24786))) b!7999162))

(assert (= (and b!7998928 ((_ is Concat!30576) (regTwo!43667 r!24786))) b!7999163))

(assert (= (and b!7998928 ((_ is Star!21577) (regTwo!43667 r!24786))) b!7999164))

(assert (= (and b!7998928 ((_ is Union!21577) (regTwo!43667 r!24786))) b!7999165))

(declare-fun b!7999170 () Bool)

(declare-fun e!4712494 () Bool)

(assert (=> b!7999170 (= e!4712494 tp_is_empty!53697)))

(assert (=> b!7998927 (= tp!2392158 e!4712494)))

(declare-fun b!7999172 () Bool)

(declare-fun tp!2392255 () Bool)

(assert (=> b!7999172 (= e!4712494 tp!2392255)))

(declare-fun b!7999171 () Bool)

(declare-fun tp!2392254 () Bool)

(declare-fun tp!2392252 () Bool)

(assert (=> b!7999171 (= e!4712494 (and tp!2392254 tp!2392252))))

(declare-fun b!7999173 () Bool)

(declare-fun tp!2392251 () Bool)

(declare-fun tp!2392253 () Bool)

(assert (=> b!7999173 (= e!4712494 (and tp!2392251 tp!2392253))))

(assert (= (and b!7998927 ((_ is ElementMatch!21577) (regOne!43666 r!24786))) b!7999170))

(assert (= (and b!7998927 ((_ is Concat!30576) (regOne!43666 r!24786))) b!7999171))

(assert (= (and b!7998927 ((_ is Star!21577) (regOne!43666 r!24786))) b!7999172))

(assert (= (and b!7998927 ((_ is Union!21577) (regOne!43666 r!24786))) b!7999173))

(declare-fun b!7999178 () Bool)

(declare-fun e!4712496 () Bool)

(assert (=> b!7999178 (= e!4712496 tp_is_empty!53697)))

(assert (=> b!7998927 (= tp!2392159 e!4712496)))

(declare-fun b!7999180 () Bool)

(declare-fun tp!2392265 () Bool)

(assert (=> b!7999180 (= e!4712496 tp!2392265)))

(declare-fun b!7999179 () Bool)

(declare-fun tp!2392264 () Bool)

(declare-fun tp!2392262 () Bool)

(assert (=> b!7999179 (= e!4712496 (and tp!2392264 tp!2392262))))

(declare-fun b!7999181 () Bool)

(declare-fun tp!2392261 () Bool)

(declare-fun tp!2392263 () Bool)

(assert (=> b!7999181 (= e!4712496 (and tp!2392261 tp!2392263))))

(assert (= (and b!7998927 ((_ is ElementMatch!21577) (regTwo!43666 r!24786))) b!7999178))

(assert (= (and b!7998927 ((_ is Concat!30576) (regTwo!43666 r!24786))) b!7999179))

(assert (= (and b!7998927 ((_ is Star!21577) (regTwo!43666 r!24786))) b!7999180))

(assert (= (and b!7998927 ((_ is Union!21577) (regTwo!43666 r!24786))) b!7999181))

(declare-fun b!7999186 () Bool)

(declare-fun e!4712498 () Bool)

(assert (=> b!7999186 (= e!4712498 tp_is_empty!53697)))

(assert (=> b!7998931 (= tp!2392152 e!4712498)))

(declare-fun b!7999188 () Bool)

(declare-fun tp!2392275 () Bool)

(assert (=> b!7999188 (= e!4712498 tp!2392275)))

(declare-fun b!7999187 () Bool)

(declare-fun tp!2392274 () Bool)

(declare-fun tp!2392272 () Bool)

(assert (=> b!7999187 (= e!4712498 (and tp!2392274 tp!2392272))))

(declare-fun b!7999189 () Bool)

(declare-fun tp!2392271 () Bool)

(declare-fun tp!2392273 () Bool)

(assert (=> b!7999189 (= e!4712498 (and tp!2392271 tp!2392273))))

(assert (= (and b!7998931 ((_ is ElementMatch!21577) (reg!21906 r!24786))) b!7999186))

(assert (= (and b!7998931 ((_ is Concat!30576) (reg!21906 r!24786))) b!7999187))

(assert (= (and b!7998931 ((_ is Star!21577) (reg!21906 r!24786))) b!7999188))

(assert (= (and b!7998931 ((_ is Union!21577) (reg!21906 r!24786))) b!7999189))

(declare-fun b!7999194 () Bool)

(declare-fun e!4712501 () Bool)

(assert (=> b!7999194 (= e!4712501 tp_is_empty!53697)))

(assert (=> b!7998936 (= tp!2392153 e!4712501)))

(declare-fun b!7999196 () Bool)

(declare-fun tp!2392282 () Bool)

(assert (=> b!7999196 (= e!4712501 tp!2392282)))

(declare-fun b!7999195 () Bool)

(declare-fun tp!2392281 () Bool)

(declare-fun tp!2392279 () Bool)

(assert (=> b!7999195 (= e!4712501 (and tp!2392281 tp!2392279))))

(declare-fun b!7999197 () Bool)

(declare-fun tp!2392278 () Bool)

(declare-fun tp!2392280 () Bool)

(assert (=> b!7999197 (= e!4712501 (and tp!2392278 tp!2392280))))

(assert (= (and b!7998936 ((_ is ElementMatch!21577) (regOne!43667 baseR!141))) b!7999194))

(assert (= (and b!7998936 ((_ is Concat!30576) (regOne!43667 baseR!141))) b!7999195))

(assert (= (and b!7998936 ((_ is Star!21577) (regOne!43667 baseR!141))) b!7999196))

(assert (= (and b!7998936 ((_ is Union!21577) (regOne!43667 baseR!141))) b!7999197))

(declare-fun b!7999198 () Bool)

(declare-fun e!4712502 () Bool)

(assert (=> b!7999198 (= e!4712502 tp_is_empty!53697)))

(assert (=> b!7998936 (= tp!2392155 e!4712502)))

(declare-fun b!7999200 () Bool)

(declare-fun tp!2392287 () Bool)

(assert (=> b!7999200 (= e!4712502 tp!2392287)))

(declare-fun b!7999199 () Bool)

(declare-fun tp!2392286 () Bool)

(declare-fun tp!2392284 () Bool)

(assert (=> b!7999199 (= e!4712502 (and tp!2392286 tp!2392284))))

(declare-fun b!7999201 () Bool)

(declare-fun tp!2392283 () Bool)

(declare-fun tp!2392285 () Bool)

(assert (=> b!7999201 (= e!4712502 (and tp!2392283 tp!2392285))))

(assert (= (and b!7998936 ((_ is ElementMatch!21577) (regTwo!43667 baseR!141))) b!7999198))

(assert (= (and b!7998936 ((_ is Concat!30576) (regTwo!43667 baseR!141))) b!7999199))

(assert (= (and b!7998936 ((_ is Star!21577) (regTwo!43667 baseR!141))) b!7999200))

(assert (= (and b!7998936 ((_ is Union!21577) (regTwo!43667 baseR!141))) b!7999201))

(check-sat (not b!7999188) (not b!7998951) (not b!7999196) (not b!7999126) (not b!7999165) (not bm!743073) (not b!7999135) (not b!7999180) (not b!7999120) (not b!7999127) (not b!7999199) (not b!7999156) (not d!2386497) (not b!7999173) (not d!2386505) (not b!7999200) (not b!7999118) (not b!7999197) (not d!2386509) (not b!7999172) (not bm!743075) (not b!7999179) (not bm!743057) (not b!7998974) (not b!7999181) (not b!7999149) (not b!7999164) (not b!7999187) (not d!2386501) (not b!7999171) (not b!7999201) (not b!7999128) (not b!7999136) (not b!7999134) (not b!7999157) (not b!7999189) (not b!7999119) (not b!7998975) (not bm!743055) (not b!7999155) (not b!7998947) (not b!7999089) (not b!7999195) (not b!7999163) tp_is_empty!53697 (not b!7999029))
(check-sat)
(get-model)

(declare-fun b!7999203 () Bool)

(declare-fun e!4712509 () Bool)

(declare-fun call!743082 () Bool)

(assert (=> b!7999203 (= e!4712509 call!743082)))

(declare-fun bm!743076 () Bool)

(declare-fun c!1468697 () Bool)

(declare-fun call!743083 () Bool)

(assert (=> bm!743076 (= call!743083 (validRegex!11881 (ite c!1468697 (regOne!43667 (ite c!1468695 (reg!21906 baseR!141) (ite c!1468694 (regTwo!43667 baseR!141) (regOne!43666 baseR!141)))) (regTwo!43666 (ite c!1468695 (reg!21906 baseR!141) (ite c!1468694 (regTwo!43667 baseR!141) (regOne!43666 baseR!141)))))))))

(declare-fun b!7999204 () Bool)

(declare-fun e!4712510 () Bool)

(declare-fun e!4712508 () Bool)

(assert (=> b!7999204 (= e!4712510 e!4712508)))

(declare-fun res!3163699 () Bool)

(assert (=> b!7999204 (=> (not res!3163699) (not e!4712508))))

(assert (=> b!7999204 (= res!3163699 call!743082)))

(declare-fun b!7999205 () Bool)

(declare-fun res!3163698 () Bool)

(assert (=> b!7999205 (=> res!3163698 e!4712510)))

(assert (=> b!7999205 (= res!3163698 (not ((_ is Concat!30576) (ite c!1468695 (reg!21906 baseR!141) (ite c!1468694 (regTwo!43667 baseR!141) (regOne!43666 baseR!141))))))))

(declare-fun e!4712504 () Bool)

(assert (=> b!7999205 (= e!4712504 e!4712510)))

(declare-fun b!7999206 () Bool)

(declare-fun res!3163696 () Bool)

(assert (=> b!7999206 (=> (not res!3163696) (not e!4712509))))

(assert (=> b!7999206 (= res!3163696 call!743083)))

(assert (=> b!7999206 (= e!4712504 e!4712509)))

(declare-fun b!7999207 () Bool)

(declare-fun e!4712506 () Bool)

(assert (=> b!7999207 (= e!4712506 e!4712504)))

(assert (=> b!7999207 (= c!1468697 ((_ is Union!21577) (ite c!1468695 (reg!21906 baseR!141) (ite c!1468694 (regTwo!43667 baseR!141) (regOne!43666 baseR!141)))))))

(declare-fun b!7999208 () Bool)

(assert (=> b!7999208 (= e!4712508 call!743083)))

(declare-fun bm!743077 () Bool)

(declare-fun call!743081 () Bool)

(assert (=> bm!743077 (= call!743082 call!743081)))

(declare-fun bm!743078 () Bool)

(declare-fun c!1468698 () Bool)

(assert (=> bm!743078 (= call!743081 (validRegex!11881 (ite c!1468698 (reg!21906 (ite c!1468695 (reg!21906 baseR!141) (ite c!1468694 (regTwo!43667 baseR!141) (regOne!43666 baseR!141)))) (ite c!1468697 (regTwo!43667 (ite c!1468695 (reg!21906 baseR!141) (ite c!1468694 (regTwo!43667 baseR!141) (regOne!43666 baseR!141)))) (regOne!43666 (ite c!1468695 (reg!21906 baseR!141) (ite c!1468694 (regTwo!43667 baseR!141) (regOne!43666 baseR!141))))))))))

(declare-fun b!7999209 () Bool)

(declare-fun e!4712507 () Bool)

(assert (=> b!7999209 (= e!4712507 call!743081)))

(declare-fun d!2386517 () Bool)

(declare-fun res!3163697 () Bool)

(declare-fun e!4712505 () Bool)

(assert (=> d!2386517 (=> res!3163697 e!4712505)))

(assert (=> d!2386517 (= res!3163697 ((_ is ElementMatch!21577) (ite c!1468695 (reg!21906 baseR!141) (ite c!1468694 (regTwo!43667 baseR!141) (regOne!43666 baseR!141)))))))

(assert (=> d!2386517 (= (validRegex!11881 (ite c!1468695 (reg!21906 baseR!141) (ite c!1468694 (regTwo!43667 baseR!141) (regOne!43666 baseR!141)))) e!4712505)))

(declare-fun b!7999210 () Bool)

(assert (=> b!7999210 (= e!4712506 e!4712507)))

(declare-fun res!3163695 () Bool)

(assert (=> b!7999210 (= res!3163695 (not (nullable!9662 (reg!21906 (ite c!1468695 (reg!21906 baseR!141) (ite c!1468694 (regTwo!43667 baseR!141) (regOne!43666 baseR!141)))))))))

(assert (=> b!7999210 (=> (not res!3163695) (not e!4712507))))

(declare-fun b!7999211 () Bool)

(assert (=> b!7999211 (= e!4712505 e!4712506)))

(assert (=> b!7999211 (= c!1468698 ((_ is Star!21577) (ite c!1468695 (reg!21906 baseR!141) (ite c!1468694 (regTwo!43667 baseR!141) (regOne!43666 baseR!141)))))))

(assert (= (and d!2386517 (not res!3163697)) b!7999211))

(assert (= (and b!7999211 c!1468698) b!7999210))

(assert (= (and b!7999211 (not c!1468698)) b!7999207))

(assert (= (and b!7999210 res!3163695) b!7999209))

(assert (= (and b!7999207 c!1468697) b!7999206))

(assert (= (and b!7999207 (not c!1468697)) b!7999205))

(assert (= (and b!7999206 res!3163696) b!7999203))

(assert (= (and b!7999205 (not res!3163698)) b!7999204))

(assert (= (and b!7999204 res!3163699) b!7999208))

(assert (= (or b!7999206 b!7999208) bm!743076))

(assert (= (or b!7999203 b!7999204) bm!743077))

(assert (= (or b!7999209 bm!743077) bm!743078))

(declare-fun m!8367906 () Bool)

(assert (=> bm!743076 m!8367906))

(declare-fun m!8367908 () Bool)

(assert (=> bm!743078 m!8367908))

(declare-fun m!8367910 () Bool)

(assert (=> b!7999210 m!8367910))

(assert (=> bm!743075 d!2386517))

(declare-fun d!2386519 () Bool)

(declare-fun lt!2713606 () Regex!21577)

(assert (=> d!2386519 (validRegex!11881 lt!2713606)))

(declare-fun e!4712511 () Regex!21577)

(assert (=> d!2386519 (= lt!2713606 e!4712511)))

(declare-fun c!1468699 () Bool)

(assert (=> d!2386519 (= c!1468699 ((_ is Cons!74682) (t!390549 (++!18425 input!8036 (Cons!74682 c!12996 Nil!74682)))))))

(assert (=> d!2386519 (validRegex!11881 (derivativeStep!6592 baseR!141 (h!81130 (++!18425 input!8036 (Cons!74682 c!12996 Nil!74682)))))))

(assert (=> d!2386519 (= (derivative!763 (derivativeStep!6592 baseR!141 (h!81130 (++!18425 input!8036 (Cons!74682 c!12996 Nil!74682)))) (t!390549 (++!18425 input!8036 (Cons!74682 c!12996 Nil!74682)))) lt!2713606)))

(declare-fun b!7999212 () Bool)

(assert (=> b!7999212 (= e!4712511 (derivative!763 (derivativeStep!6592 (derivativeStep!6592 baseR!141 (h!81130 (++!18425 input!8036 (Cons!74682 c!12996 Nil!74682)))) (h!81130 (t!390549 (++!18425 input!8036 (Cons!74682 c!12996 Nil!74682))))) (t!390549 (t!390549 (++!18425 input!8036 (Cons!74682 c!12996 Nil!74682))))))))

(declare-fun b!7999213 () Bool)

(assert (=> b!7999213 (= e!4712511 (derivativeStep!6592 baseR!141 (h!81130 (++!18425 input!8036 (Cons!74682 c!12996 Nil!74682)))))))

(assert (= (and d!2386519 c!1468699) b!7999212))

(assert (= (and d!2386519 (not c!1468699)) b!7999213))

(declare-fun m!8367912 () Bool)

(assert (=> d!2386519 m!8367912))

(assert (=> d!2386519 m!8367836))

(declare-fun m!8367914 () Bool)

(assert (=> d!2386519 m!8367914))

(assert (=> b!7999212 m!8367836))

(declare-fun m!8367916 () Bool)

(assert (=> b!7999212 m!8367916))

(assert (=> b!7999212 m!8367916))

(declare-fun m!8367918 () Bool)

(assert (=> b!7999212 m!8367918))

(assert (=> b!7998951 d!2386519))

(declare-fun b!7999214 () Bool)

(declare-fun e!4712513 () Regex!21577)

(declare-fun call!743087 () Regex!21577)

(declare-fun call!743085 () Regex!21577)

(assert (=> b!7999214 (= e!4712513 (Union!21577 call!743087 call!743085))))

(declare-fun b!7999215 () Bool)

(declare-fun c!1468704 () Bool)

(assert (=> b!7999215 (= c!1468704 ((_ is Union!21577) baseR!141))))

(declare-fun e!4712512 () Regex!21577)

(assert (=> b!7999215 (= e!4712512 e!4712513)))

(declare-fun b!7999216 () Bool)

(declare-fun c!1468700 () Bool)

(assert (=> b!7999216 (= c!1468700 (nullable!9662 (regOne!43666 baseR!141)))))

(declare-fun e!4712515 () Regex!21577)

(declare-fun e!4712514 () Regex!21577)

(assert (=> b!7999216 (= e!4712515 e!4712514)))

(declare-fun b!7999217 () Bool)

(assert (=> b!7999217 (= e!4712512 (ite (= (h!81130 (++!18425 input!8036 (Cons!74682 c!12996 Nil!74682))) (c!1468640 baseR!141)) EmptyExpr!21577 EmptyLang!21577))))

(declare-fun b!7999218 () Bool)

(assert (=> b!7999218 (= e!4712513 e!4712515)))

(declare-fun c!1468702 () Bool)

(assert (=> b!7999218 (= c!1468702 ((_ is Star!21577) baseR!141))))

(declare-fun d!2386521 () Bool)

(declare-fun lt!2713607 () Regex!21577)

(assert (=> d!2386521 (validRegex!11881 lt!2713607)))

(declare-fun e!4712516 () Regex!21577)

(assert (=> d!2386521 (= lt!2713607 e!4712516)))

(declare-fun c!1468703 () Bool)

(assert (=> d!2386521 (= c!1468703 (or ((_ is EmptyExpr!21577) baseR!141) ((_ is EmptyLang!21577) baseR!141)))))

(assert (=> d!2386521 (validRegex!11881 baseR!141)))

(assert (=> d!2386521 (= (derivativeStep!6592 baseR!141 (h!81130 (++!18425 input!8036 (Cons!74682 c!12996 Nil!74682)))) lt!2713607)))

(declare-fun b!7999219 () Bool)

(declare-fun call!743084 () Regex!21577)

(assert (=> b!7999219 (= e!4712514 (Union!21577 (Concat!30576 call!743084 (regTwo!43666 baseR!141)) call!743087))))

(declare-fun b!7999220 () Bool)

(assert (=> b!7999220 (= e!4712516 e!4712512)))

(declare-fun c!1468701 () Bool)

(assert (=> b!7999220 (= c!1468701 ((_ is ElementMatch!21577) baseR!141))))

(declare-fun b!7999221 () Bool)

(assert (=> b!7999221 (= e!4712516 EmptyLang!21577)))

(declare-fun bm!743079 () Bool)

(declare-fun call!743086 () Regex!21577)

(assert (=> bm!743079 (= call!743086 call!743085)))

(declare-fun bm!743080 () Bool)

(assert (=> bm!743080 (= call!743087 (derivativeStep!6592 (ite c!1468704 (regOne!43667 baseR!141) (regTwo!43666 baseR!141)) (h!81130 (++!18425 input!8036 (Cons!74682 c!12996 Nil!74682)))))))

(declare-fun b!7999222 () Bool)

(assert (=> b!7999222 (= e!4712514 (Union!21577 (Concat!30576 call!743084 (regTwo!43666 baseR!141)) EmptyLang!21577))))

(declare-fun b!7999223 () Bool)

(assert (=> b!7999223 (= e!4712515 (Concat!30576 call!743086 baseR!141))))

(declare-fun bm!743081 () Bool)

(assert (=> bm!743081 (= call!743084 call!743086)))

(declare-fun bm!743082 () Bool)

(assert (=> bm!743082 (= call!743085 (derivativeStep!6592 (ite c!1468704 (regTwo!43667 baseR!141) (ite c!1468702 (reg!21906 baseR!141) (regOne!43666 baseR!141))) (h!81130 (++!18425 input!8036 (Cons!74682 c!12996 Nil!74682)))))))

(assert (= (and d!2386521 c!1468703) b!7999221))

(assert (= (and d!2386521 (not c!1468703)) b!7999220))

(assert (= (and b!7999220 c!1468701) b!7999217))

(assert (= (and b!7999220 (not c!1468701)) b!7999215))

(assert (= (and b!7999215 c!1468704) b!7999214))

(assert (= (and b!7999215 (not c!1468704)) b!7999218))

(assert (= (and b!7999218 c!1468702) b!7999223))

(assert (= (and b!7999218 (not c!1468702)) b!7999216))

(assert (= (and b!7999216 c!1468700) b!7999219))

(assert (= (and b!7999216 (not c!1468700)) b!7999222))

(assert (= (or b!7999219 b!7999222) bm!743081))

(assert (= (or b!7999223 bm!743081) bm!743079))

(assert (= (or b!7999214 bm!743079) bm!743082))

(assert (= (or b!7999214 b!7999219) bm!743080))

(declare-fun m!8367920 () Bool)

(assert (=> b!7999216 m!8367920))

(declare-fun m!8367922 () Bool)

(assert (=> d!2386521 m!8367922))

(assert (=> d!2386521 m!8367812))

(declare-fun m!8367924 () Bool)

(assert (=> bm!743080 m!8367924))

(declare-fun m!8367926 () Bool)

(assert (=> bm!743082 m!8367926))

(assert (=> b!7998951 d!2386521))

(declare-fun b!7999224 () Bool)

(declare-fun e!4712518 () Regex!21577)

(declare-fun call!743091 () Regex!21577)

(declare-fun call!743089 () Regex!21577)

(assert (=> b!7999224 (= e!4712518 (Union!21577 call!743091 call!743089))))

(declare-fun b!7999225 () Bool)

(declare-fun c!1468709 () Bool)

(assert (=> b!7999225 (= c!1468709 ((_ is Union!21577) (ite c!1468683 (regOne!43667 r!24786) (regTwo!43666 r!24786))))))

(declare-fun e!4712517 () Regex!21577)

(assert (=> b!7999225 (= e!4712517 e!4712518)))

(declare-fun b!7999226 () Bool)

(declare-fun c!1468705 () Bool)

(assert (=> b!7999226 (= c!1468705 (nullable!9662 (regOne!43666 (ite c!1468683 (regOne!43667 r!24786) (regTwo!43666 r!24786)))))))

(declare-fun e!4712520 () Regex!21577)

(declare-fun e!4712519 () Regex!21577)

(assert (=> b!7999226 (= e!4712520 e!4712519)))

(declare-fun b!7999227 () Bool)

(assert (=> b!7999227 (= e!4712517 (ite (= c!12996 (c!1468640 (ite c!1468683 (regOne!43667 r!24786) (regTwo!43666 r!24786)))) EmptyExpr!21577 EmptyLang!21577))))

(declare-fun b!7999228 () Bool)

(assert (=> b!7999228 (= e!4712518 e!4712520)))

(declare-fun c!1468707 () Bool)

(assert (=> b!7999228 (= c!1468707 ((_ is Star!21577) (ite c!1468683 (regOne!43667 r!24786) (regTwo!43666 r!24786))))))

(declare-fun d!2386523 () Bool)

(declare-fun lt!2713608 () Regex!21577)

(assert (=> d!2386523 (validRegex!11881 lt!2713608)))

(declare-fun e!4712521 () Regex!21577)

(assert (=> d!2386523 (= lt!2713608 e!4712521)))

(declare-fun c!1468708 () Bool)

(assert (=> d!2386523 (= c!1468708 (or ((_ is EmptyExpr!21577) (ite c!1468683 (regOne!43667 r!24786) (regTwo!43666 r!24786))) ((_ is EmptyLang!21577) (ite c!1468683 (regOne!43667 r!24786) (regTwo!43666 r!24786)))))))

(assert (=> d!2386523 (validRegex!11881 (ite c!1468683 (regOne!43667 r!24786) (regTwo!43666 r!24786)))))

(assert (=> d!2386523 (= (derivativeStep!6592 (ite c!1468683 (regOne!43667 r!24786) (regTwo!43666 r!24786)) c!12996) lt!2713608)))

(declare-fun b!7999229 () Bool)

(declare-fun call!743088 () Regex!21577)

(assert (=> b!7999229 (= e!4712519 (Union!21577 (Concat!30576 call!743088 (regTwo!43666 (ite c!1468683 (regOne!43667 r!24786) (regTwo!43666 r!24786)))) call!743091))))

(declare-fun b!7999230 () Bool)

(assert (=> b!7999230 (= e!4712521 e!4712517)))

(declare-fun c!1468706 () Bool)

(assert (=> b!7999230 (= c!1468706 ((_ is ElementMatch!21577) (ite c!1468683 (regOne!43667 r!24786) (regTwo!43666 r!24786))))))

(declare-fun b!7999231 () Bool)

(assert (=> b!7999231 (= e!4712521 EmptyLang!21577)))

(declare-fun bm!743083 () Bool)

(declare-fun call!743090 () Regex!21577)

(assert (=> bm!743083 (= call!743090 call!743089)))

(declare-fun bm!743084 () Bool)

(assert (=> bm!743084 (= call!743091 (derivativeStep!6592 (ite c!1468709 (regOne!43667 (ite c!1468683 (regOne!43667 r!24786) (regTwo!43666 r!24786))) (regTwo!43666 (ite c!1468683 (regOne!43667 r!24786) (regTwo!43666 r!24786)))) c!12996))))

(declare-fun b!7999232 () Bool)

(assert (=> b!7999232 (= e!4712519 (Union!21577 (Concat!30576 call!743088 (regTwo!43666 (ite c!1468683 (regOne!43667 r!24786) (regTwo!43666 r!24786)))) EmptyLang!21577))))

(declare-fun b!7999233 () Bool)

(assert (=> b!7999233 (= e!4712520 (Concat!30576 call!743090 (ite c!1468683 (regOne!43667 r!24786) (regTwo!43666 r!24786))))))

(declare-fun bm!743085 () Bool)

(assert (=> bm!743085 (= call!743088 call!743090)))

(declare-fun bm!743086 () Bool)

(assert (=> bm!743086 (= call!743089 (derivativeStep!6592 (ite c!1468709 (regTwo!43667 (ite c!1468683 (regOne!43667 r!24786) (regTwo!43666 r!24786))) (ite c!1468707 (reg!21906 (ite c!1468683 (regOne!43667 r!24786) (regTwo!43666 r!24786))) (regOne!43666 (ite c!1468683 (regOne!43667 r!24786) (regTwo!43666 r!24786))))) c!12996))))

(assert (= (and d!2386523 c!1468708) b!7999231))

(assert (= (and d!2386523 (not c!1468708)) b!7999230))

(assert (= (and b!7999230 c!1468706) b!7999227))

(assert (= (and b!7999230 (not c!1468706)) b!7999225))

(assert (= (and b!7999225 c!1468709) b!7999224))

(assert (= (and b!7999225 (not c!1468709)) b!7999228))

(assert (= (and b!7999228 c!1468707) b!7999233))

(assert (= (and b!7999228 (not c!1468707)) b!7999226))

(assert (= (and b!7999226 c!1468705) b!7999229))

(assert (= (and b!7999226 (not c!1468705)) b!7999232))

(assert (= (or b!7999229 b!7999232) bm!743085))

(assert (= (or b!7999233 bm!743085) bm!743083))

(assert (= (or b!7999224 bm!743083) bm!743086))

(assert (= (or b!7999224 b!7999229) bm!743084))

(declare-fun m!8367928 () Bool)

(assert (=> b!7999226 m!8367928))

(declare-fun m!8367930 () Bool)

(assert (=> d!2386523 m!8367930))

(declare-fun m!8367932 () Bool)

(assert (=> d!2386523 m!8367932))

(declare-fun m!8367934 () Bool)

(assert (=> bm!743084 m!8367934))

(declare-fun m!8367936 () Bool)

(assert (=> bm!743086 m!8367936))

(assert (=> bm!743055 d!2386523))

(declare-fun b!7999234 () Bool)

(declare-fun e!4712527 () Bool)

(declare-fun call!743093 () Bool)

(assert (=> b!7999234 (= e!4712527 call!743093)))

(declare-fun bm!743087 () Bool)

(declare-fun call!743094 () Bool)

(declare-fun c!1468710 () Bool)

(assert (=> bm!743087 (= call!743094 (validRegex!11881 (ite c!1468710 (regOne!43667 lt!2713590) (regTwo!43666 lt!2713590))))))

(declare-fun b!7999235 () Bool)

(declare-fun e!4712528 () Bool)

(declare-fun e!4712526 () Bool)

(assert (=> b!7999235 (= e!4712528 e!4712526)))

(declare-fun res!3163704 () Bool)

(assert (=> b!7999235 (=> (not res!3163704) (not e!4712526))))

(assert (=> b!7999235 (= res!3163704 call!743093)))

(declare-fun b!7999236 () Bool)

(declare-fun res!3163703 () Bool)

(assert (=> b!7999236 (=> res!3163703 e!4712528)))

(assert (=> b!7999236 (= res!3163703 (not ((_ is Concat!30576) lt!2713590)))))

(declare-fun e!4712522 () Bool)

(assert (=> b!7999236 (= e!4712522 e!4712528)))

(declare-fun b!7999237 () Bool)

(declare-fun res!3163701 () Bool)

(assert (=> b!7999237 (=> (not res!3163701) (not e!4712527))))

(assert (=> b!7999237 (= res!3163701 call!743094)))

(assert (=> b!7999237 (= e!4712522 e!4712527)))

(declare-fun b!7999238 () Bool)

(declare-fun e!4712524 () Bool)

(assert (=> b!7999238 (= e!4712524 e!4712522)))

(assert (=> b!7999238 (= c!1468710 ((_ is Union!21577) lt!2713590))))

(declare-fun b!7999239 () Bool)

(assert (=> b!7999239 (= e!4712526 call!743094)))

(declare-fun bm!743088 () Bool)

(declare-fun call!743092 () Bool)

(assert (=> bm!743088 (= call!743093 call!743092)))

(declare-fun c!1468711 () Bool)

(declare-fun bm!743089 () Bool)

(assert (=> bm!743089 (= call!743092 (validRegex!11881 (ite c!1468711 (reg!21906 lt!2713590) (ite c!1468710 (regTwo!43667 lt!2713590) (regOne!43666 lt!2713590)))))))

(declare-fun b!7999240 () Bool)

(declare-fun e!4712525 () Bool)

(assert (=> b!7999240 (= e!4712525 call!743092)))

(declare-fun d!2386525 () Bool)

(declare-fun res!3163702 () Bool)

(declare-fun e!4712523 () Bool)

(assert (=> d!2386525 (=> res!3163702 e!4712523)))

(assert (=> d!2386525 (= res!3163702 ((_ is ElementMatch!21577) lt!2713590))))

(assert (=> d!2386525 (= (validRegex!11881 lt!2713590) e!4712523)))

(declare-fun b!7999241 () Bool)

(assert (=> b!7999241 (= e!4712524 e!4712525)))

(declare-fun res!3163700 () Bool)

(assert (=> b!7999241 (= res!3163700 (not (nullable!9662 (reg!21906 lt!2713590))))))

(assert (=> b!7999241 (=> (not res!3163700) (not e!4712525))))

(declare-fun b!7999242 () Bool)

(assert (=> b!7999242 (= e!4712523 e!4712524)))

(assert (=> b!7999242 (= c!1468711 ((_ is Star!21577) lt!2713590))))

(assert (= (and d!2386525 (not res!3163702)) b!7999242))

(assert (= (and b!7999242 c!1468711) b!7999241))

(assert (= (and b!7999242 (not c!1468711)) b!7999238))

(assert (= (and b!7999241 res!3163700) b!7999240))

(assert (= (and b!7999238 c!1468710) b!7999237))

(assert (= (and b!7999238 (not c!1468710)) b!7999236))

(assert (= (and b!7999237 res!3163701) b!7999234))

(assert (= (and b!7999236 (not res!3163703)) b!7999235))

(assert (= (and b!7999235 res!3163704) b!7999239))

(assert (= (or b!7999237 b!7999239) bm!743087))

(assert (= (or b!7999234 b!7999235) bm!743088))

(assert (= (or b!7999240 bm!743088) bm!743089))

(declare-fun m!8367938 () Bool)

(assert (=> bm!743087 m!8367938))

(declare-fun m!8367940 () Bool)

(assert (=> bm!743089 m!8367940))

(declare-fun m!8367942 () Bool)

(assert (=> b!7999241 m!8367942))

(assert (=> d!2386497 d!2386525))

(assert (=> d!2386497 d!2386513))

(declare-fun d!2386527 () Bool)

(declare-fun nullableFct!3817 (Regex!21577) Bool)

(assert (=> d!2386527 (= (nullable!9662 (reg!21906 baseR!141)) (nullableFct!3817 (reg!21906 baseR!141)))))

(declare-fun bs!1970537 () Bool)

(assert (= bs!1970537 d!2386527))

(declare-fun m!8367944 () Bool)

(assert (=> bs!1970537 m!8367944))

(assert (=> b!7999089 d!2386527))

(declare-fun b!7999243 () Bool)

(declare-fun e!4712530 () Regex!21577)

(declare-fun call!743098 () Regex!21577)

(declare-fun call!743096 () Regex!21577)

(assert (=> b!7999243 (= e!4712530 (Union!21577 call!743098 call!743096))))

(declare-fun c!1468716 () Bool)

(declare-fun b!7999244 () Bool)

(assert (=> b!7999244 (= c!1468716 ((_ is Union!21577) (ite c!1468683 (regTwo!43667 r!24786) (ite c!1468681 (reg!21906 r!24786) (regOne!43666 r!24786)))))))

(declare-fun e!4712529 () Regex!21577)

(assert (=> b!7999244 (= e!4712529 e!4712530)))

(declare-fun b!7999245 () Bool)

(declare-fun c!1468712 () Bool)

(assert (=> b!7999245 (= c!1468712 (nullable!9662 (regOne!43666 (ite c!1468683 (regTwo!43667 r!24786) (ite c!1468681 (reg!21906 r!24786) (regOne!43666 r!24786))))))))

(declare-fun e!4712532 () Regex!21577)

(declare-fun e!4712531 () Regex!21577)

(assert (=> b!7999245 (= e!4712532 e!4712531)))

(declare-fun b!7999246 () Bool)

(assert (=> b!7999246 (= e!4712529 (ite (= c!12996 (c!1468640 (ite c!1468683 (regTwo!43667 r!24786) (ite c!1468681 (reg!21906 r!24786) (regOne!43666 r!24786))))) EmptyExpr!21577 EmptyLang!21577))))

(declare-fun b!7999247 () Bool)

(assert (=> b!7999247 (= e!4712530 e!4712532)))

(declare-fun c!1468714 () Bool)

(assert (=> b!7999247 (= c!1468714 ((_ is Star!21577) (ite c!1468683 (regTwo!43667 r!24786) (ite c!1468681 (reg!21906 r!24786) (regOne!43666 r!24786)))))))

(declare-fun d!2386529 () Bool)

(declare-fun lt!2713609 () Regex!21577)

(assert (=> d!2386529 (validRegex!11881 lt!2713609)))

(declare-fun e!4712533 () Regex!21577)

(assert (=> d!2386529 (= lt!2713609 e!4712533)))

(declare-fun c!1468715 () Bool)

(assert (=> d!2386529 (= c!1468715 (or ((_ is EmptyExpr!21577) (ite c!1468683 (regTwo!43667 r!24786) (ite c!1468681 (reg!21906 r!24786) (regOne!43666 r!24786)))) ((_ is EmptyLang!21577) (ite c!1468683 (regTwo!43667 r!24786) (ite c!1468681 (reg!21906 r!24786) (regOne!43666 r!24786))))))))

(assert (=> d!2386529 (validRegex!11881 (ite c!1468683 (regTwo!43667 r!24786) (ite c!1468681 (reg!21906 r!24786) (regOne!43666 r!24786))))))

(assert (=> d!2386529 (= (derivativeStep!6592 (ite c!1468683 (regTwo!43667 r!24786) (ite c!1468681 (reg!21906 r!24786) (regOne!43666 r!24786))) c!12996) lt!2713609)))

(declare-fun call!743095 () Regex!21577)

(declare-fun b!7999248 () Bool)

(assert (=> b!7999248 (= e!4712531 (Union!21577 (Concat!30576 call!743095 (regTwo!43666 (ite c!1468683 (regTwo!43667 r!24786) (ite c!1468681 (reg!21906 r!24786) (regOne!43666 r!24786))))) call!743098))))

(declare-fun b!7999249 () Bool)

(assert (=> b!7999249 (= e!4712533 e!4712529)))

(declare-fun c!1468713 () Bool)

(assert (=> b!7999249 (= c!1468713 ((_ is ElementMatch!21577) (ite c!1468683 (regTwo!43667 r!24786) (ite c!1468681 (reg!21906 r!24786) (regOne!43666 r!24786)))))))

(declare-fun b!7999250 () Bool)

(assert (=> b!7999250 (= e!4712533 EmptyLang!21577)))

(declare-fun bm!743090 () Bool)

(declare-fun call!743097 () Regex!21577)

(assert (=> bm!743090 (= call!743097 call!743096)))

(declare-fun bm!743091 () Bool)

(assert (=> bm!743091 (= call!743098 (derivativeStep!6592 (ite c!1468716 (regOne!43667 (ite c!1468683 (regTwo!43667 r!24786) (ite c!1468681 (reg!21906 r!24786) (regOne!43666 r!24786)))) (regTwo!43666 (ite c!1468683 (regTwo!43667 r!24786) (ite c!1468681 (reg!21906 r!24786) (regOne!43666 r!24786))))) c!12996))))

(declare-fun b!7999251 () Bool)

(assert (=> b!7999251 (= e!4712531 (Union!21577 (Concat!30576 call!743095 (regTwo!43666 (ite c!1468683 (regTwo!43667 r!24786) (ite c!1468681 (reg!21906 r!24786) (regOne!43666 r!24786))))) EmptyLang!21577))))

(declare-fun b!7999252 () Bool)

(assert (=> b!7999252 (= e!4712532 (Concat!30576 call!743097 (ite c!1468683 (regTwo!43667 r!24786) (ite c!1468681 (reg!21906 r!24786) (regOne!43666 r!24786)))))))

(declare-fun bm!743092 () Bool)

(assert (=> bm!743092 (= call!743095 call!743097)))

(declare-fun bm!743093 () Bool)

(assert (=> bm!743093 (= call!743096 (derivativeStep!6592 (ite c!1468716 (regTwo!43667 (ite c!1468683 (regTwo!43667 r!24786) (ite c!1468681 (reg!21906 r!24786) (regOne!43666 r!24786)))) (ite c!1468714 (reg!21906 (ite c!1468683 (regTwo!43667 r!24786) (ite c!1468681 (reg!21906 r!24786) (regOne!43666 r!24786)))) (regOne!43666 (ite c!1468683 (regTwo!43667 r!24786) (ite c!1468681 (reg!21906 r!24786) (regOne!43666 r!24786)))))) c!12996))))

(assert (= (and d!2386529 c!1468715) b!7999250))

(assert (= (and d!2386529 (not c!1468715)) b!7999249))

(assert (= (and b!7999249 c!1468713) b!7999246))

(assert (= (and b!7999249 (not c!1468713)) b!7999244))

(assert (= (and b!7999244 c!1468716) b!7999243))

(assert (= (and b!7999244 (not c!1468716)) b!7999247))

(assert (= (and b!7999247 c!1468714) b!7999252))

(assert (= (and b!7999247 (not c!1468714)) b!7999245))

(assert (= (and b!7999245 c!1468712) b!7999248))

(assert (= (and b!7999245 (not c!1468712)) b!7999251))

(assert (= (or b!7999248 b!7999251) bm!743092))

(assert (= (or b!7999252 bm!743092) bm!743090))

(assert (= (or b!7999243 bm!743090) bm!743093))

(assert (= (or b!7999243 b!7999248) bm!743091))

(declare-fun m!8367946 () Bool)

(assert (=> b!7999245 m!8367946))

(declare-fun m!8367948 () Bool)

(assert (=> d!2386529 m!8367948))

(declare-fun m!8367950 () Bool)

(assert (=> d!2386529 m!8367950))

(declare-fun m!8367952 () Bool)

(assert (=> bm!743091 m!8367952))

(declare-fun m!8367954 () Bool)

(assert (=> bm!743093 m!8367954))

(assert (=> bm!743057 d!2386529))

(declare-fun d!2386531 () Bool)

(assert (=> d!2386531 (= (nullable!9662 (regOne!43666 r!24786)) (nullableFct!3817 (regOne!43666 r!24786)))))

(declare-fun bs!1970538 () Bool)

(assert (= bs!1970538 d!2386531))

(declare-fun m!8367956 () Bool)

(assert (=> bs!1970538 m!8367956))

(assert (=> b!7999029 d!2386531))

(declare-fun b!7999253 () Bool)

(declare-fun e!4712539 () Bool)

(declare-fun call!743100 () Bool)

(assert (=> b!7999253 (= e!4712539 call!743100)))

(declare-fun bm!743094 () Bool)

(declare-fun call!743101 () Bool)

(declare-fun c!1468717 () Bool)

(assert (=> bm!743094 (= call!743101 (validRegex!11881 (ite c!1468717 (regOne!43667 lt!2713604) (regTwo!43666 lt!2713604))))))

(declare-fun b!7999254 () Bool)

(declare-fun e!4712540 () Bool)

(declare-fun e!4712538 () Bool)

(assert (=> b!7999254 (= e!4712540 e!4712538)))

(declare-fun res!3163709 () Bool)

(assert (=> b!7999254 (=> (not res!3163709) (not e!4712538))))

(assert (=> b!7999254 (= res!3163709 call!743100)))

(declare-fun b!7999255 () Bool)

(declare-fun res!3163708 () Bool)

(assert (=> b!7999255 (=> res!3163708 e!4712540)))

(assert (=> b!7999255 (= res!3163708 (not ((_ is Concat!30576) lt!2713604)))))

(declare-fun e!4712534 () Bool)

(assert (=> b!7999255 (= e!4712534 e!4712540)))

(declare-fun b!7999256 () Bool)

(declare-fun res!3163706 () Bool)

(assert (=> b!7999256 (=> (not res!3163706) (not e!4712539))))

(assert (=> b!7999256 (= res!3163706 call!743101)))

(assert (=> b!7999256 (= e!4712534 e!4712539)))

(declare-fun b!7999257 () Bool)

(declare-fun e!4712536 () Bool)

(assert (=> b!7999257 (= e!4712536 e!4712534)))

(assert (=> b!7999257 (= c!1468717 ((_ is Union!21577) lt!2713604))))

(declare-fun b!7999258 () Bool)

(assert (=> b!7999258 (= e!4712538 call!743101)))

(declare-fun bm!743095 () Bool)

(declare-fun call!743099 () Bool)

(assert (=> bm!743095 (= call!743100 call!743099)))

(declare-fun bm!743096 () Bool)

(declare-fun c!1468718 () Bool)

(assert (=> bm!743096 (= call!743099 (validRegex!11881 (ite c!1468718 (reg!21906 lt!2713604) (ite c!1468717 (regTwo!43667 lt!2713604) (regOne!43666 lt!2713604)))))))

(declare-fun b!7999259 () Bool)

(declare-fun e!4712537 () Bool)

(assert (=> b!7999259 (= e!4712537 call!743099)))

(declare-fun d!2386533 () Bool)

(declare-fun res!3163707 () Bool)

(declare-fun e!4712535 () Bool)

(assert (=> d!2386533 (=> res!3163707 e!4712535)))

(assert (=> d!2386533 (= res!3163707 ((_ is ElementMatch!21577) lt!2713604))))

(assert (=> d!2386533 (= (validRegex!11881 lt!2713604) e!4712535)))

(declare-fun b!7999260 () Bool)

(assert (=> b!7999260 (= e!4712536 e!4712537)))

(declare-fun res!3163705 () Bool)

(assert (=> b!7999260 (= res!3163705 (not (nullable!9662 (reg!21906 lt!2713604))))))

(assert (=> b!7999260 (=> (not res!3163705) (not e!4712537))))

(declare-fun b!7999261 () Bool)

(assert (=> b!7999261 (= e!4712535 e!4712536)))

(assert (=> b!7999261 (= c!1468718 ((_ is Star!21577) lt!2713604))))

(assert (= (and d!2386533 (not res!3163707)) b!7999261))

(assert (= (and b!7999261 c!1468718) b!7999260))

(assert (= (and b!7999261 (not c!1468718)) b!7999257))

(assert (= (and b!7999260 res!3163705) b!7999259))

(assert (= (and b!7999257 c!1468717) b!7999256))

(assert (= (and b!7999257 (not c!1468717)) b!7999255))

(assert (= (and b!7999256 res!3163706) b!7999253))

(assert (= (and b!7999255 (not res!3163708)) b!7999254))

(assert (= (and b!7999254 res!3163709) b!7999258))

(assert (= (or b!7999256 b!7999258) bm!743094))

(assert (= (or b!7999253 b!7999254) bm!743095))

(assert (= (or b!7999259 bm!743095) bm!743096))

(declare-fun m!8367958 () Bool)

(assert (=> bm!743094 m!8367958))

(declare-fun m!8367960 () Bool)

(assert (=> bm!743096 m!8367960))

(declare-fun m!8367962 () Bool)

(assert (=> b!7999260 m!8367962))

(assert (=> d!2386509 d!2386533))

(declare-fun b!7999262 () Bool)

(declare-fun e!4712546 () Bool)

(declare-fun call!743103 () Bool)

(assert (=> b!7999262 (= e!4712546 call!743103)))

(declare-fun bm!743097 () Bool)

(declare-fun call!743104 () Bool)

(declare-fun c!1468719 () Bool)

(assert (=> bm!743097 (= call!743104 (validRegex!11881 (ite c!1468719 (regOne!43667 r!24786) (regTwo!43666 r!24786))))))

(declare-fun b!7999263 () Bool)

(declare-fun e!4712547 () Bool)

(declare-fun e!4712545 () Bool)

(assert (=> b!7999263 (= e!4712547 e!4712545)))

(declare-fun res!3163714 () Bool)

(assert (=> b!7999263 (=> (not res!3163714) (not e!4712545))))

(assert (=> b!7999263 (= res!3163714 call!743103)))

(declare-fun b!7999264 () Bool)

(declare-fun res!3163713 () Bool)

(assert (=> b!7999264 (=> res!3163713 e!4712547)))

(assert (=> b!7999264 (= res!3163713 (not ((_ is Concat!30576) r!24786)))))

(declare-fun e!4712541 () Bool)

(assert (=> b!7999264 (= e!4712541 e!4712547)))

(declare-fun b!7999265 () Bool)

(declare-fun res!3163711 () Bool)

(assert (=> b!7999265 (=> (not res!3163711) (not e!4712546))))

(assert (=> b!7999265 (= res!3163711 call!743104)))

(assert (=> b!7999265 (= e!4712541 e!4712546)))

(declare-fun b!7999266 () Bool)

(declare-fun e!4712543 () Bool)

(assert (=> b!7999266 (= e!4712543 e!4712541)))

(assert (=> b!7999266 (= c!1468719 ((_ is Union!21577) r!24786))))

(declare-fun b!7999267 () Bool)

(assert (=> b!7999267 (= e!4712545 call!743104)))

(declare-fun bm!743098 () Bool)

(declare-fun call!743102 () Bool)

(assert (=> bm!743098 (= call!743103 call!743102)))

(declare-fun bm!743099 () Bool)

(declare-fun c!1468720 () Bool)

(assert (=> bm!743099 (= call!743102 (validRegex!11881 (ite c!1468720 (reg!21906 r!24786) (ite c!1468719 (regTwo!43667 r!24786) (regOne!43666 r!24786)))))))

(declare-fun b!7999268 () Bool)

(declare-fun e!4712544 () Bool)

(assert (=> b!7999268 (= e!4712544 call!743102)))

(declare-fun d!2386535 () Bool)

(declare-fun res!3163712 () Bool)

(declare-fun e!4712542 () Bool)

(assert (=> d!2386535 (=> res!3163712 e!4712542)))

(assert (=> d!2386535 (= res!3163712 ((_ is ElementMatch!21577) r!24786))))

(assert (=> d!2386535 (= (validRegex!11881 r!24786) e!4712542)))

(declare-fun b!7999269 () Bool)

(assert (=> b!7999269 (= e!4712543 e!4712544)))

(declare-fun res!3163710 () Bool)

(assert (=> b!7999269 (= res!3163710 (not (nullable!9662 (reg!21906 r!24786))))))

(assert (=> b!7999269 (=> (not res!3163710) (not e!4712544))))

(declare-fun b!7999270 () Bool)

(assert (=> b!7999270 (= e!4712542 e!4712543)))

(assert (=> b!7999270 (= c!1468720 ((_ is Star!21577) r!24786))))

(assert (= (and d!2386535 (not res!3163712)) b!7999270))

(assert (= (and b!7999270 c!1468720) b!7999269))

(assert (= (and b!7999270 (not c!1468720)) b!7999266))

(assert (= (and b!7999269 res!3163710) b!7999268))

(assert (= (and b!7999266 c!1468719) b!7999265))

(assert (= (and b!7999266 (not c!1468719)) b!7999264))

(assert (= (and b!7999265 res!3163711) b!7999262))

(assert (= (and b!7999264 (not res!3163713)) b!7999263))

(assert (= (and b!7999263 res!3163714) b!7999267))

(assert (= (or b!7999265 b!7999267) bm!743097))

(assert (= (or b!7999262 b!7999263) bm!743098))

(assert (= (or b!7999268 bm!743098) bm!743099))

(declare-fun m!8367964 () Bool)

(assert (=> bm!743097 m!8367964))

(declare-fun m!8367966 () Bool)

(assert (=> bm!743099 m!8367966))

(declare-fun m!8367968 () Bool)

(assert (=> b!7999269 m!8367968))

(assert (=> d!2386509 d!2386535))

(declare-fun d!2386537 () Bool)

(declare-fun lt!2713612 () Int)

(assert (=> d!2386537 (>= lt!2713612 0)))

(declare-fun e!4712550 () Int)

(assert (=> d!2386537 (= lt!2713612 e!4712550)))

(declare-fun c!1468723 () Bool)

(assert (=> d!2386537 (= c!1468723 ((_ is Nil!74682) lt!2713598))))

(assert (=> d!2386537 (= (size!43499 lt!2713598) lt!2713612)))

(declare-fun b!7999275 () Bool)

(assert (=> b!7999275 (= e!4712550 0)))

(declare-fun b!7999276 () Bool)

(assert (=> b!7999276 (= e!4712550 (+ 1 (size!43499 (t!390549 lt!2713598))))))

(assert (= (and d!2386537 c!1468723) b!7999275))

(assert (= (and d!2386537 (not c!1468723)) b!7999276))

(declare-fun m!8367970 () Bool)

(assert (=> b!7999276 m!8367970))

(assert (=> b!7998975 d!2386537))

(declare-fun d!2386539 () Bool)

(declare-fun lt!2713613 () Int)

(assert (=> d!2386539 (>= lt!2713613 0)))

(declare-fun e!4712551 () Int)

(assert (=> d!2386539 (= lt!2713613 e!4712551)))

(declare-fun c!1468724 () Bool)

(assert (=> d!2386539 (= c!1468724 ((_ is Nil!74682) input!8036))))

(assert (=> d!2386539 (= (size!43499 input!8036) lt!2713613)))

(declare-fun b!7999277 () Bool)

(assert (=> b!7999277 (= e!4712551 0)))

(declare-fun b!7999278 () Bool)

(assert (=> b!7999278 (= e!4712551 (+ 1 (size!43499 (t!390549 input!8036))))))

(assert (= (and d!2386539 c!1468724) b!7999277))

(assert (= (and d!2386539 (not c!1468724)) b!7999278))

(declare-fun m!8367972 () Bool)

(assert (=> b!7999278 m!8367972))

(assert (=> b!7998975 d!2386539))

(declare-fun d!2386541 () Bool)

(declare-fun lt!2713614 () Int)

(assert (=> d!2386541 (>= lt!2713614 0)))

(declare-fun e!4712552 () Int)

(assert (=> d!2386541 (= lt!2713614 e!4712552)))

(declare-fun c!1468725 () Bool)

(assert (=> d!2386541 (= c!1468725 ((_ is Nil!74682) (Cons!74682 c!12996 Nil!74682)))))

(assert (=> d!2386541 (= (size!43499 (Cons!74682 c!12996 Nil!74682)) lt!2713614)))

(declare-fun b!7999279 () Bool)

(assert (=> b!7999279 (= e!4712552 0)))

(declare-fun b!7999280 () Bool)

(assert (=> b!7999280 (= e!4712552 (+ 1 (size!43499 (t!390549 (Cons!74682 c!12996 Nil!74682)))))))

(assert (= (and d!2386541 c!1468725) b!7999279))

(assert (= (and d!2386541 (not c!1468725)) b!7999280))

(declare-fun m!8367974 () Bool)

(assert (=> b!7999280 m!8367974))

(assert (=> b!7998975 d!2386541))

(declare-fun d!2386543 () Bool)

(declare-fun lt!2713615 () Regex!21577)

(assert (=> d!2386543 (validRegex!11881 lt!2713615)))

(declare-fun e!4712553 () Regex!21577)

(assert (=> d!2386543 (= lt!2713615 e!4712553)))

(declare-fun c!1468726 () Bool)

(assert (=> d!2386543 (= c!1468726 ((_ is Cons!74682) (t!390549 input!8036)))))

(assert (=> d!2386543 (validRegex!11881 (derivativeStep!6592 baseR!141 (h!81130 input!8036)))))

(assert (=> d!2386543 (= (derivative!763 (derivativeStep!6592 baseR!141 (h!81130 input!8036)) (t!390549 input!8036)) lt!2713615)))

(declare-fun b!7999281 () Bool)

(assert (=> b!7999281 (= e!4712553 (derivative!763 (derivativeStep!6592 (derivativeStep!6592 baseR!141 (h!81130 input!8036)) (h!81130 (t!390549 input!8036))) (t!390549 (t!390549 input!8036))))))

(declare-fun b!7999282 () Bool)

(assert (=> b!7999282 (= e!4712553 (derivativeStep!6592 baseR!141 (h!81130 input!8036)))))

(assert (= (and d!2386543 c!1468726) b!7999281))

(assert (= (and d!2386543 (not c!1468726)) b!7999282))

(declare-fun m!8367976 () Bool)

(assert (=> d!2386543 m!8367976))

(assert (=> d!2386543 m!8367826))

(declare-fun m!8367978 () Bool)

(assert (=> d!2386543 m!8367978))

(assert (=> b!7999281 m!8367826))

(declare-fun m!8367980 () Bool)

(assert (=> b!7999281 m!8367980))

(assert (=> b!7999281 m!8367980))

(declare-fun m!8367982 () Bool)

(assert (=> b!7999281 m!8367982))

(assert (=> b!7998947 d!2386543))

(declare-fun b!7999283 () Bool)

(declare-fun e!4712555 () Regex!21577)

(declare-fun call!743108 () Regex!21577)

(declare-fun call!743106 () Regex!21577)

(assert (=> b!7999283 (= e!4712555 (Union!21577 call!743108 call!743106))))

(declare-fun b!7999284 () Bool)

(declare-fun c!1468731 () Bool)

(assert (=> b!7999284 (= c!1468731 ((_ is Union!21577) baseR!141))))

(declare-fun e!4712554 () Regex!21577)

(assert (=> b!7999284 (= e!4712554 e!4712555)))

(declare-fun b!7999285 () Bool)

(declare-fun c!1468727 () Bool)

(assert (=> b!7999285 (= c!1468727 (nullable!9662 (regOne!43666 baseR!141)))))

(declare-fun e!4712557 () Regex!21577)

(declare-fun e!4712556 () Regex!21577)

(assert (=> b!7999285 (= e!4712557 e!4712556)))

(declare-fun b!7999286 () Bool)

(assert (=> b!7999286 (= e!4712554 (ite (= (h!81130 input!8036) (c!1468640 baseR!141)) EmptyExpr!21577 EmptyLang!21577))))

(declare-fun b!7999287 () Bool)

(assert (=> b!7999287 (= e!4712555 e!4712557)))

(declare-fun c!1468729 () Bool)

(assert (=> b!7999287 (= c!1468729 ((_ is Star!21577) baseR!141))))

(declare-fun d!2386545 () Bool)

(declare-fun lt!2713616 () Regex!21577)

(assert (=> d!2386545 (validRegex!11881 lt!2713616)))

(declare-fun e!4712558 () Regex!21577)

(assert (=> d!2386545 (= lt!2713616 e!4712558)))

(declare-fun c!1468730 () Bool)

(assert (=> d!2386545 (= c!1468730 (or ((_ is EmptyExpr!21577) baseR!141) ((_ is EmptyLang!21577) baseR!141)))))

(assert (=> d!2386545 (validRegex!11881 baseR!141)))

(assert (=> d!2386545 (= (derivativeStep!6592 baseR!141 (h!81130 input!8036)) lt!2713616)))

(declare-fun b!7999288 () Bool)

(declare-fun call!743105 () Regex!21577)

(assert (=> b!7999288 (= e!4712556 (Union!21577 (Concat!30576 call!743105 (regTwo!43666 baseR!141)) call!743108))))

(declare-fun b!7999289 () Bool)

(assert (=> b!7999289 (= e!4712558 e!4712554)))

(declare-fun c!1468728 () Bool)

(assert (=> b!7999289 (= c!1468728 ((_ is ElementMatch!21577) baseR!141))))

(declare-fun b!7999290 () Bool)

(assert (=> b!7999290 (= e!4712558 EmptyLang!21577)))

(declare-fun bm!743100 () Bool)

(declare-fun call!743107 () Regex!21577)

(assert (=> bm!743100 (= call!743107 call!743106)))

(declare-fun bm!743101 () Bool)

(assert (=> bm!743101 (= call!743108 (derivativeStep!6592 (ite c!1468731 (regOne!43667 baseR!141) (regTwo!43666 baseR!141)) (h!81130 input!8036)))))

(declare-fun b!7999291 () Bool)

(assert (=> b!7999291 (= e!4712556 (Union!21577 (Concat!30576 call!743105 (regTwo!43666 baseR!141)) EmptyLang!21577))))

(declare-fun b!7999292 () Bool)

(assert (=> b!7999292 (= e!4712557 (Concat!30576 call!743107 baseR!141))))

(declare-fun bm!743102 () Bool)

(assert (=> bm!743102 (= call!743105 call!743107)))

(declare-fun bm!743103 () Bool)

(assert (=> bm!743103 (= call!743106 (derivativeStep!6592 (ite c!1468731 (regTwo!43667 baseR!141) (ite c!1468729 (reg!21906 baseR!141) (regOne!43666 baseR!141))) (h!81130 input!8036)))))

(assert (= (and d!2386545 c!1468730) b!7999290))

(assert (= (and d!2386545 (not c!1468730)) b!7999289))

(assert (= (and b!7999289 c!1468728) b!7999286))

(assert (= (and b!7999289 (not c!1468728)) b!7999284))

(assert (= (and b!7999284 c!1468731) b!7999283))

(assert (= (and b!7999284 (not c!1468731)) b!7999287))

(assert (= (and b!7999287 c!1468729) b!7999292))

(assert (= (and b!7999287 (not c!1468729)) b!7999285))

(assert (= (and b!7999285 c!1468727) b!7999288))

(assert (= (and b!7999285 (not c!1468727)) b!7999291))

(assert (= (or b!7999288 b!7999291) bm!743102))

(assert (= (or b!7999292 bm!743102) bm!743100))

(assert (= (or b!7999283 bm!743100) bm!743103))

(assert (= (or b!7999283 b!7999288) bm!743101))

(assert (=> b!7999285 m!8367920))

(declare-fun m!8367984 () Bool)

(assert (=> d!2386545 m!8367984))

(assert (=> d!2386545 m!8367812))

(declare-fun m!8367986 () Bool)

(assert (=> bm!743101 m!8367986))

(declare-fun m!8367988 () Bool)

(assert (=> bm!743103 m!8367988))

(assert (=> b!7998947 d!2386545))

(declare-fun d!2386547 () Bool)

(declare-fun e!4712560 () Bool)

(assert (=> d!2386547 e!4712560))

(declare-fun res!3163715 () Bool)

(assert (=> d!2386547 (=> (not res!3163715) (not e!4712560))))

(declare-fun lt!2713617 () List!74806)

(assert (=> d!2386547 (= res!3163715 (= (content!15878 lt!2713617) ((_ map or) (content!15878 (t!390549 input!8036)) (content!15878 (Cons!74682 c!12996 Nil!74682)))))))

(declare-fun e!4712559 () List!74806)

(assert (=> d!2386547 (= lt!2713617 e!4712559)))

(declare-fun c!1468732 () Bool)

(assert (=> d!2386547 (= c!1468732 ((_ is Nil!74682) (t!390549 input!8036)))))

(assert (=> d!2386547 (= (++!18425 (t!390549 input!8036) (Cons!74682 c!12996 Nil!74682)) lt!2713617)))

(declare-fun b!7999294 () Bool)

(assert (=> b!7999294 (= e!4712559 (Cons!74682 (h!81130 (t!390549 input!8036)) (++!18425 (t!390549 (t!390549 input!8036)) (Cons!74682 c!12996 Nil!74682))))))

(declare-fun b!7999295 () Bool)

(declare-fun res!3163716 () Bool)

(assert (=> b!7999295 (=> (not res!3163716) (not e!4712560))))

(assert (=> b!7999295 (= res!3163716 (= (size!43499 lt!2713617) (+ (size!43499 (t!390549 input!8036)) (size!43499 (Cons!74682 c!12996 Nil!74682)))))))

(declare-fun b!7999293 () Bool)

(assert (=> b!7999293 (= e!4712559 (Cons!74682 c!12996 Nil!74682))))

(declare-fun b!7999296 () Bool)

(assert (=> b!7999296 (= e!4712560 (or (not (= (Cons!74682 c!12996 Nil!74682) Nil!74682)) (= lt!2713617 (t!390549 input!8036))))))

(assert (= (and d!2386547 c!1468732) b!7999293))

(assert (= (and d!2386547 (not c!1468732)) b!7999294))

(assert (= (and d!2386547 res!3163715) b!7999295))

(assert (= (and b!7999295 res!3163716) b!7999296))

(declare-fun m!8367990 () Bool)

(assert (=> d!2386547 m!8367990))

(declare-fun m!8367992 () Bool)

(assert (=> d!2386547 m!8367992))

(assert (=> d!2386547 m!8367858))

(declare-fun m!8367994 () Bool)

(assert (=> b!7999294 m!8367994))

(declare-fun m!8367996 () Bool)

(assert (=> b!7999295 m!8367996))

(assert (=> b!7999295 m!8367972))

(assert (=> b!7999295 m!8367866))

(assert (=> b!7998974 d!2386547))

(declare-fun b!7999297 () Bool)

(declare-fun e!4712566 () Bool)

(declare-fun call!743110 () Bool)

(assert (=> b!7999297 (= e!4712566 call!743110)))

(declare-fun call!743111 () Bool)

(declare-fun bm!743104 () Bool)

(declare-fun c!1468733 () Bool)

(assert (=> bm!743104 (= call!743111 (validRegex!11881 (ite c!1468733 (regOne!43667 (ite c!1468694 (regOne!43667 baseR!141) (regTwo!43666 baseR!141))) (regTwo!43666 (ite c!1468694 (regOne!43667 baseR!141) (regTwo!43666 baseR!141))))))))

(declare-fun b!7999298 () Bool)

(declare-fun e!4712567 () Bool)

(declare-fun e!4712565 () Bool)

(assert (=> b!7999298 (= e!4712567 e!4712565)))

(declare-fun res!3163721 () Bool)

(assert (=> b!7999298 (=> (not res!3163721) (not e!4712565))))

(assert (=> b!7999298 (= res!3163721 call!743110)))

(declare-fun b!7999299 () Bool)

(declare-fun res!3163720 () Bool)

(assert (=> b!7999299 (=> res!3163720 e!4712567)))

(assert (=> b!7999299 (= res!3163720 (not ((_ is Concat!30576) (ite c!1468694 (regOne!43667 baseR!141) (regTwo!43666 baseR!141)))))))

(declare-fun e!4712561 () Bool)

(assert (=> b!7999299 (= e!4712561 e!4712567)))

(declare-fun b!7999300 () Bool)

(declare-fun res!3163718 () Bool)

(assert (=> b!7999300 (=> (not res!3163718) (not e!4712566))))

(assert (=> b!7999300 (= res!3163718 call!743111)))

(assert (=> b!7999300 (= e!4712561 e!4712566)))

(declare-fun b!7999301 () Bool)

(declare-fun e!4712563 () Bool)

(assert (=> b!7999301 (= e!4712563 e!4712561)))

(assert (=> b!7999301 (= c!1468733 ((_ is Union!21577) (ite c!1468694 (regOne!43667 baseR!141) (regTwo!43666 baseR!141))))))

(declare-fun b!7999302 () Bool)

(assert (=> b!7999302 (= e!4712565 call!743111)))

(declare-fun bm!743105 () Bool)

(declare-fun call!743109 () Bool)

(assert (=> bm!743105 (= call!743110 call!743109)))

(declare-fun c!1468734 () Bool)

(declare-fun bm!743106 () Bool)

(assert (=> bm!743106 (= call!743109 (validRegex!11881 (ite c!1468734 (reg!21906 (ite c!1468694 (regOne!43667 baseR!141) (regTwo!43666 baseR!141))) (ite c!1468733 (regTwo!43667 (ite c!1468694 (regOne!43667 baseR!141) (regTwo!43666 baseR!141))) (regOne!43666 (ite c!1468694 (regOne!43667 baseR!141) (regTwo!43666 baseR!141)))))))))

(declare-fun b!7999303 () Bool)

(declare-fun e!4712564 () Bool)

(assert (=> b!7999303 (= e!4712564 call!743109)))

(declare-fun d!2386549 () Bool)

(declare-fun res!3163719 () Bool)

(declare-fun e!4712562 () Bool)

(assert (=> d!2386549 (=> res!3163719 e!4712562)))

(assert (=> d!2386549 (= res!3163719 ((_ is ElementMatch!21577) (ite c!1468694 (regOne!43667 baseR!141) (regTwo!43666 baseR!141))))))

(assert (=> d!2386549 (= (validRegex!11881 (ite c!1468694 (regOne!43667 baseR!141) (regTwo!43666 baseR!141))) e!4712562)))

(declare-fun b!7999304 () Bool)

(assert (=> b!7999304 (= e!4712563 e!4712564)))

(declare-fun res!3163717 () Bool)

(assert (=> b!7999304 (= res!3163717 (not (nullable!9662 (reg!21906 (ite c!1468694 (regOne!43667 baseR!141) (regTwo!43666 baseR!141))))))))

(assert (=> b!7999304 (=> (not res!3163717) (not e!4712564))))

(declare-fun b!7999305 () Bool)

(assert (=> b!7999305 (= e!4712562 e!4712563)))

(assert (=> b!7999305 (= c!1468734 ((_ is Star!21577) (ite c!1468694 (regOne!43667 baseR!141) (regTwo!43666 baseR!141))))))

(assert (= (and d!2386549 (not res!3163719)) b!7999305))

(assert (= (and b!7999305 c!1468734) b!7999304))

(assert (= (and b!7999305 (not c!1468734)) b!7999301))

(assert (= (and b!7999304 res!3163717) b!7999303))

(assert (= (and b!7999301 c!1468733) b!7999300))

(assert (= (and b!7999301 (not c!1468733)) b!7999299))

(assert (= (and b!7999300 res!3163718) b!7999297))

(assert (= (and b!7999299 (not res!3163720)) b!7999298))

(assert (= (and b!7999298 res!3163721) b!7999302))

(assert (= (or b!7999300 b!7999302) bm!743104))

(assert (= (or b!7999297 b!7999298) bm!743105))

(assert (= (or b!7999303 bm!743105) bm!743106))

(declare-fun m!8367998 () Bool)

(assert (=> bm!743104 m!8367998))

(declare-fun m!8368000 () Bool)

(assert (=> bm!743106 m!8368000))

(declare-fun m!8368002 () Bool)

(assert (=> b!7999304 m!8368002))

(assert (=> bm!743073 d!2386549))

(declare-fun b!7999306 () Bool)

(declare-fun e!4712573 () Bool)

(declare-fun call!743113 () Bool)

(assert (=> b!7999306 (= e!4712573 call!743113)))

(declare-fun bm!743107 () Bool)

(declare-fun call!743114 () Bool)

(declare-fun c!1468735 () Bool)

(assert (=> bm!743107 (= call!743114 (validRegex!11881 (ite c!1468735 (regOne!43667 lt!2713592) (regTwo!43666 lt!2713592))))))

(declare-fun b!7999307 () Bool)

(declare-fun e!4712574 () Bool)

(declare-fun e!4712572 () Bool)

(assert (=> b!7999307 (= e!4712574 e!4712572)))

(declare-fun res!3163726 () Bool)

(assert (=> b!7999307 (=> (not res!3163726) (not e!4712572))))

(assert (=> b!7999307 (= res!3163726 call!743113)))

(declare-fun b!7999308 () Bool)

(declare-fun res!3163725 () Bool)

(assert (=> b!7999308 (=> res!3163725 e!4712574)))

(assert (=> b!7999308 (= res!3163725 (not ((_ is Concat!30576) lt!2713592)))))

(declare-fun e!4712568 () Bool)

(assert (=> b!7999308 (= e!4712568 e!4712574)))

(declare-fun b!7999309 () Bool)

(declare-fun res!3163723 () Bool)

(assert (=> b!7999309 (=> (not res!3163723) (not e!4712573))))

(assert (=> b!7999309 (= res!3163723 call!743114)))

(assert (=> b!7999309 (= e!4712568 e!4712573)))

(declare-fun b!7999310 () Bool)

(declare-fun e!4712570 () Bool)

(assert (=> b!7999310 (= e!4712570 e!4712568)))

(assert (=> b!7999310 (= c!1468735 ((_ is Union!21577) lt!2713592))))

(declare-fun b!7999311 () Bool)

(assert (=> b!7999311 (= e!4712572 call!743114)))

(declare-fun bm!743108 () Bool)

(declare-fun call!743112 () Bool)

(assert (=> bm!743108 (= call!743113 call!743112)))

(declare-fun bm!743109 () Bool)

(declare-fun c!1468736 () Bool)

(assert (=> bm!743109 (= call!743112 (validRegex!11881 (ite c!1468736 (reg!21906 lt!2713592) (ite c!1468735 (regTwo!43667 lt!2713592) (regOne!43666 lt!2713592)))))))

(declare-fun b!7999312 () Bool)

(declare-fun e!4712571 () Bool)

(assert (=> b!7999312 (= e!4712571 call!743112)))

(declare-fun d!2386551 () Bool)

(declare-fun res!3163724 () Bool)

(declare-fun e!4712569 () Bool)

(assert (=> d!2386551 (=> res!3163724 e!4712569)))

(assert (=> d!2386551 (= res!3163724 ((_ is ElementMatch!21577) lt!2713592))))

(assert (=> d!2386551 (= (validRegex!11881 lt!2713592) e!4712569)))

(declare-fun b!7999313 () Bool)

(assert (=> b!7999313 (= e!4712570 e!4712571)))

(declare-fun res!3163722 () Bool)

(assert (=> b!7999313 (= res!3163722 (not (nullable!9662 (reg!21906 lt!2713592))))))

(assert (=> b!7999313 (=> (not res!3163722) (not e!4712571))))

(declare-fun b!7999314 () Bool)

(assert (=> b!7999314 (= e!4712569 e!4712570)))

(assert (=> b!7999314 (= c!1468736 ((_ is Star!21577) lt!2713592))))

(assert (= (and d!2386551 (not res!3163724)) b!7999314))

(assert (= (and b!7999314 c!1468736) b!7999313))

(assert (= (and b!7999314 (not c!1468736)) b!7999310))

(assert (= (and b!7999313 res!3163722) b!7999312))

(assert (= (and b!7999310 c!1468735) b!7999309))

(assert (= (and b!7999310 (not c!1468735)) b!7999308))

(assert (= (and b!7999309 res!3163723) b!7999306))

(assert (= (and b!7999308 (not res!3163725)) b!7999307))

(assert (= (and b!7999307 res!3163726) b!7999311))

(assert (= (or b!7999309 b!7999311) bm!743107))

(assert (= (or b!7999306 b!7999307) bm!743108))

(assert (= (or b!7999312 bm!743108) bm!743109))

(declare-fun m!8368004 () Bool)

(assert (=> bm!743107 m!8368004))

(declare-fun m!8368006 () Bool)

(assert (=> bm!743109 m!8368006))

(declare-fun m!8368008 () Bool)

(assert (=> b!7999313 m!8368008))

(assert (=> d!2386501 d!2386551))

(assert (=> d!2386501 d!2386513))

(declare-fun d!2386553 () Bool)

(declare-fun c!1468739 () Bool)

(assert (=> d!2386553 (= c!1468739 ((_ is Nil!74682) lt!2713598))))

(declare-fun e!4712577 () (InoxSet C!43492))

(assert (=> d!2386553 (= (content!15878 lt!2713598) e!4712577)))

(declare-fun b!7999319 () Bool)

(assert (=> b!7999319 (= e!4712577 ((as const (Array C!43492 Bool)) false))))

(declare-fun b!7999320 () Bool)

(assert (=> b!7999320 (= e!4712577 ((_ map or) (store ((as const (Array C!43492 Bool)) false) (h!81130 lt!2713598) true) (content!15878 (t!390549 lt!2713598))))))

(assert (= (and d!2386553 c!1468739) b!7999319))

(assert (= (and d!2386553 (not c!1468739)) b!7999320))

(declare-fun m!8368010 () Bool)

(assert (=> b!7999320 m!8368010))

(declare-fun m!8368012 () Bool)

(assert (=> b!7999320 m!8368012))

(assert (=> d!2386505 d!2386553))

(declare-fun d!2386555 () Bool)

(declare-fun c!1468740 () Bool)

(assert (=> d!2386555 (= c!1468740 ((_ is Nil!74682) input!8036))))

(declare-fun e!4712578 () (InoxSet C!43492))

(assert (=> d!2386555 (= (content!15878 input!8036) e!4712578)))

(declare-fun b!7999321 () Bool)

(assert (=> b!7999321 (= e!4712578 ((as const (Array C!43492 Bool)) false))))

(declare-fun b!7999322 () Bool)

(assert (=> b!7999322 (= e!4712578 ((_ map or) (store ((as const (Array C!43492 Bool)) false) (h!81130 input!8036) true) (content!15878 (t!390549 input!8036))))))

(assert (= (and d!2386555 c!1468740) b!7999321))

(assert (= (and d!2386555 (not c!1468740)) b!7999322))

(declare-fun m!8368014 () Bool)

(assert (=> b!7999322 m!8368014))

(assert (=> b!7999322 m!8367992))

(assert (=> d!2386505 d!2386555))

(declare-fun d!2386557 () Bool)

(declare-fun c!1468741 () Bool)

(assert (=> d!2386557 (= c!1468741 ((_ is Nil!74682) (Cons!74682 c!12996 Nil!74682)))))

(declare-fun e!4712579 () (InoxSet C!43492))

(assert (=> d!2386557 (= (content!15878 (Cons!74682 c!12996 Nil!74682)) e!4712579)))

(declare-fun b!7999323 () Bool)

(assert (=> b!7999323 (= e!4712579 ((as const (Array C!43492 Bool)) false))))

(declare-fun b!7999324 () Bool)

(assert (=> b!7999324 (= e!4712579 ((_ map or) (store ((as const (Array C!43492 Bool)) false) (h!81130 (Cons!74682 c!12996 Nil!74682)) true) (content!15878 (t!390549 (Cons!74682 c!12996 Nil!74682)))))))

(assert (= (and d!2386557 c!1468741) b!7999323))

(assert (= (and d!2386557 (not c!1468741)) b!7999324))

(declare-fun m!8368016 () Bool)

(assert (=> b!7999324 m!8368016))

(declare-fun m!8368018 () Bool)

(assert (=> b!7999324 m!8368018))

(assert (=> d!2386505 d!2386557))

(declare-fun b!7999325 () Bool)

(declare-fun e!4712580 () Bool)

(assert (=> b!7999325 (= e!4712580 tp_is_empty!53697)))

(assert (=> b!7999163 (= tp!2392244 e!4712580)))

(declare-fun b!7999327 () Bool)

(declare-fun tp!2392293 () Bool)

(assert (=> b!7999327 (= e!4712580 tp!2392293)))

(declare-fun b!7999326 () Bool)

(declare-fun tp!2392292 () Bool)

(declare-fun tp!2392290 () Bool)

(assert (=> b!7999326 (= e!4712580 (and tp!2392292 tp!2392290))))

(declare-fun b!7999328 () Bool)

(declare-fun tp!2392289 () Bool)

(declare-fun tp!2392291 () Bool)

(assert (=> b!7999328 (= e!4712580 (and tp!2392289 tp!2392291))))

(assert (= (and b!7999163 ((_ is ElementMatch!21577) (regOne!43666 (regTwo!43667 r!24786)))) b!7999325))

(assert (= (and b!7999163 ((_ is Concat!30576) (regOne!43666 (regTwo!43667 r!24786)))) b!7999326))

(assert (= (and b!7999163 ((_ is Star!21577) (regOne!43666 (regTwo!43667 r!24786)))) b!7999327))

(assert (= (and b!7999163 ((_ is Union!21577) (regOne!43666 (regTwo!43667 r!24786)))) b!7999328))

(declare-fun b!7999329 () Bool)

(declare-fun e!4712581 () Bool)

(assert (=> b!7999329 (= e!4712581 tp_is_empty!53697)))

(assert (=> b!7999163 (= tp!2392242 e!4712581)))

(declare-fun b!7999331 () Bool)

(declare-fun tp!2392298 () Bool)

(assert (=> b!7999331 (= e!4712581 tp!2392298)))

(declare-fun b!7999330 () Bool)

(declare-fun tp!2392297 () Bool)

(declare-fun tp!2392295 () Bool)

(assert (=> b!7999330 (= e!4712581 (and tp!2392297 tp!2392295))))

(declare-fun b!7999332 () Bool)

(declare-fun tp!2392294 () Bool)

(declare-fun tp!2392296 () Bool)

(assert (=> b!7999332 (= e!4712581 (and tp!2392294 tp!2392296))))

(assert (= (and b!7999163 ((_ is ElementMatch!21577) (regTwo!43666 (regTwo!43667 r!24786)))) b!7999329))

(assert (= (and b!7999163 ((_ is Concat!30576) (regTwo!43666 (regTwo!43667 r!24786)))) b!7999330))

(assert (= (and b!7999163 ((_ is Star!21577) (regTwo!43666 (regTwo!43667 r!24786)))) b!7999331))

(assert (= (and b!7999163 ((_ is Union!21577) (regTwo!43666 (regTwo!43667 r!24786)))) b!7999332))

(declare-fun b!7999333 () Bool)

(declare-fun e!4712582 () Bool)

(assert (=> b!7999333 (= e!4712582 tp_is_empty!53697)))

(assert (=> b!7999172 (= tp!2392255 e!4712582)))

(declare-fun b!7999335 () Bool)

(declare-fun tp!2392303 () Bool)

(assert (=> b!7999335 (= e!4712582 tp!2392303)))

(declare-fun b!7999334 () Bool)

(declare-fun tp!2392302 () Bool)

(declare-fun tp!2392300 () Bool)

(assert (=> b!7999334 (= e!4712582 (and tp!2392302 tp!2392300))))

(declare-fun b!7999336 () Bool)

(declare-fun tp!2392299 () Bool)

(declare-fun tp!2392301 () Bool)

(assert (=> b!7999336 (= e!4712582 (and tp!2392299 tp!2392301))))

(assert (= (and b!7999172 ((_ is ElementMatch!21577) (reg!21906 (regOne!43666 r!24786)))) b!7999333))

(assert (= (and b!7999172 ((_ is Concat!30576) (reg!21906 (regOne!43666 r!24786)))) b!7999334))

(assert (= (and b!7999172 ((_ is Star!21577) (reg!21906 (regOne!43666 r!24786)))) b!7999335))

(assert (= (and b!7999172 ((_ is Union!21577) (reg!21906 (regOne!43666 r!24786)))) b!7999336))

(declare-fun b!7999337 () Bool)

(declare-fun e!4712583 () Bool)

(assert (=> b!7999337 (= e!4712583 tp_is_empty!53697)))

(assert (=> b!7999181 (= tp!2392261 e!4712583)))

(declare-fun b!7999339 () Bool)

(declare-fun tp!2392308 () Bool)

(assert (=> b!7999339 (= e!4712583 tp!2392308)))

(declare-fun b!7999338 () Bool)

(declare-fun tp!2392307 () Bool)

(declare-fun tp!2392305 () Bool)

(assert (=> b!7999338 (= e!4712583 (and tp!2392307 tp!2392305))))

(declare-fun b!7999340 () Bool)

(declare-fun tp!2392304 () Bool)

(declare-fun tp!2392306 () Bool)

(assert (=> b!7999340 (= e!4712583 (and tp!2392304 tp!2392306))))

(assert (= (and b!7999181 ((_ is ElementMatch!21577) (regOne!43667 (regTwo!43666 r!24786)))) b!7999337))

(assert (= (and b!7999181 ((_ is Concat!30576) (regOne!43667 (regTwo!43666 r!24786)))) b!7999338))

(assert (= (and b!7999181 ((_ is Star!21577) (regOne!43667 (regTwo!43666 r!24786)))) b!7999339))

(assert (= (and b!7999181 ((_ is Union!21577) (regOne!43667 (regTwo!43666 r!24786)))) b!7999340))

(declare-fun b!7999341 () Bool)

(declare-fun e!4712584 () Bool)

(assert (=> b!7999341 (= e!4712584 tp_is_empty!53697)))

(assert (=> b!7999181 (= tp!2392263 e!4712584)))

(declare-fun b!7999343 () Bool)

(declare-fun tp!2392313 () Bool)

(assert (=> b!7999343 (= e!4712584 tp!2392313)))

(declare-fun b!7999342 () Bool)

(declare-fun tp!2392312 () Bool)

(declare-fun tp!2392310 () Bool)

(assert (=> b!7999342 (= e!4712584 (and tp!2392312 tp!2392310))))

(declare-fun b!7999344 () Bool)

(declare-fun tp!2392309 () Bool)

(declare-fun tp!2392311 () Bool)

(assert (=> b!7999344 (= e!4712584 (and tp!2392309 tp!2392311))))

(assert (= (and b!7999181 ((_ is ElementMatch!21577) (regTwo!43667 (regTwo!43666 r!24786)))) b!7999341))

(assert (= (and b!7999181 ((_ is Concat!30576) (regTwo!43667 (regTwo!43666 r!24786)))) b!7999342))

(assert (= (and b!7999181 ((_ is Star!21577) (regTwo!43667 (regTwo!43666 r!24786)))) b!7999343))

(assert (= (and b!7999181 ((_ is Union!21577) (regTwo!43667 (regTwo!43666 r!24786)))) b!7999344))

(declare-fun b!7999345 () Bool)

(declare-fun e!4712585 () Bool)

(assert (=> b!7999345 (= e!4712585 tp_is_empty!53697)))

(assert (=> b!7999197 (= tp!2392278 e!4712585)))

(declare-fun b!7999347 () Bool)

(declare-fun tp!2392318 () Bool)

(assert (=> b!7999347 (= e!4712585 tp!2392318)))

(declare-fun b!7999346 () Bool)

(declare-fun tp!2392317 () Bool)

(declare-fun tp!2392315 () Bool)

(assert (=> b!7999346 (= e!4712585 (and tp!2392317 tp!2392315))))

(declare-fun b!7999348 () Bool)

(declare-fun tp!2392314 () Bool)

(declare-fun tp!2392316 () Bool)

(assert (=> b!7999348 (= e!4712585 (and tp!2392314 tp!2392316))))

(assert (= (and b!7999197 ((_ is ElementMatch!21577) (regOne!43667 (regOne!43667 baseR!141)))) b!7999345))

(assert (= (and b!7999197 ((_ is Concat!30576) (regOne!43667 (regOne!43667 baseR!141)))) b!7999346))

(assert (= (and b!7999197 ((_ is Star!21577) (regOne!43667 (regOne!43667 baseR!141)))) b!7999347))

(assert (= (and b!7999197 ((_ is Union!21577) (regOne!43667 (regOne!43667 baseR!141)))) b!7999348))

(declare-fun b!7999349 () Bool)

(declare-fun e!4712586 () Bool)

(assert (=> b!7999349 (= e!4712586 tp_is_empty!53697)))

(assert (=> b!7999197 (= tp!2392280 e!4712586)))

(declare-fun b!7999351 () Bool)

(declare-fun tp!2392323 () Bool)

(assert (=> b!7999351 (= e!4712586 tp!2392323)))

(declare-fun b!7999350 () Bool)

(declare-fun tp!2392322 () Bool)

(declare-fun tp!2392320 () Bool)

(assert (=> b!7999350 (= e!4712586 (and tp!2392322 tp!2392320))))

(declare-fun b!7999352 () Bool)

(declare-fun tp!2392319 () Bool)

(declare-fun tp!2392321 () Bool)

(assert (=> b!7999352 (= e!4712586 (and tp!2392319 tp!2392321))))

(assert (= (and b!7999197 ((_ is ElementMatch!21577) (regTwo!43667 (regOne!43667 baseR!141)))) b!7999349))

(assert (= (and b!7999197 ((_ is Concat!30576) (regTwo!43667 (regOne!43667 baseR!141)))) b!7999350))

(assert (= (and b!7999197 ((_ is Star!21577) (regTwo!43667 (regOne!43667 baseR!141)))) b!7999351))

(assert (= (and b!7999197 ((_ is Union!21577) (regTwo!43667 (regOne!43667 baseR!141)))) b!7999352))

(declare-fun b!7999353 () Bool)

(declare-fun e!4712587 () Bool)

(assert (=> b!7999353 (= e!4712587 tp_is_empty!53697)))

(assert (=> b!7999171 (= tp!2392254 e!4712587)))

(declare-fun b!7999355 () Bool)

(declare-fun tp!2392328 () Bool)

(assert (=> b!7999355 (= e!4712587 tp!2392328)))

(declare-fun b!7999354 () Bool)

(declare-fun tp!2392327 () Bool)

(declare-fun tp!2392325 () Bool)

(assert (=> b!7999354 (= e!4712587 (and tp!2392327 tp!2392325))))

(declare-fun b!7999356 () Bool)

(declare-fun tp!2392324 () Bool)

(declare-fun tp!2392326 () Bool)

(assert (=> b!7999356 (= e!4712587 (and tp!2392324 tp!2392326))))

(assert (= (and b!7999171 ((_ is ElementMatch!21577) (regOne!43666 (regOne!43666 r!24786)))) b!7999353))

(assert (= (and b!7999171 ((_ is Concat!30576) (regOne!43666 (regOne!43666 r!24786)))) b!7999354))

(assert (= (and b!7999171 ((_ is Star!21577) (regOne!43666 (regOne!43666 r!24786)))) b!7999355))

(assert (= (and b!7999171 ((_ is Union!21577) (regOne!43666 (regOne!43666 r!24786)))) b!7999356))

(declare-fun b!7999357 () Bool)

(declare-fun e!4712588 () Bool)

(assert (=> b!7999357 (= e!4712588 tp_is_empty!53697)))

(assert (=> b!7999171 (= tp!2392252 e!4712588)))

(declare-fun b!7999359 () Bool)

(declare-fun tp!2392333 () Bool)

(assert (=> b!7999359 (= e!4712588 tp!2392333)))

(declare-fun b!7999358 () Bool)

(declare-fun tp!2392332 () Bool)

(declare-fun tp!2392330 () Bool)

(assert (=> b!7999358 (= e!4712588 (and tp!2392332 tp!2392330))))

(declare-fun b!7999360 () Bool)

(declare-fun tp!2392329 () Bool)

(declare-fun tp!2392331 () Bool)

(assert (=> b!7999360 (= e!4712588 (and tp!2392329 tp!2392331))))

(assert (= (and b!7999171 ((_ is ElementMatch!21577) (regTwo!43666 (regOne!43666 r!24786)))) b!7999357))

(assert (= (and b!7999171 ((_ is Concat!30576) (regTwo!43666 (regOne!43666 r!24786)))) b!7999358))

(assert (= (and b!7999171 ((_ is Star!21577) (regTwo!43666 (regOne!43666 r!24786)))) b!7999359))

(assert (= (and b!7999171 ((_ is Union!21577) (regTwo!43666 (regOne!43666 r!24786)))) b!7999360))

(declare-fun b!7999361 () Bool)

(declare-fun e!4712589 () Bool)

(assert (=> b!7999361 (= e!4712589 tp_is_empty!53697)))

(assert (=> b!7999180 (= tp!2392265 e!4712589)))

(declare-fun b!7999363 () Bool)

(declare-fun tp!2392338 () Bool)

(assert (=> b!7999363 (= e!4712589 tp!2392338)))

(declare-fun b!7999362 () Bool)

(declare-fun tp!2392337 () Bool)

(declare-fun tp!2392335 () Bool)

(assert (=> b!7999362 (= e!4712589 (and tp!2392337 tp!2392335))))

(declare-fun b!7999364 () Bool)

(declare-fun tp!2392334 () Bool)

(declare-fun tp!2392336 () Bool)

(assert (=> b!7999364 (= e!4712589 (and tp!2392334 tp!2392336))))

(assert (= (and b!7999180 ((_ is ElementMatch!21577) (reg!21906 (regTwo!43666 r!24786)))) b!7999361))

(assert (= (and b!7999180 ((_ is Concat!30576) (reg!21906 (regTwo!43666 r!24786)))) b!7999362))

(assert (= (and b!7999180 ((_ is Star!21577) (reg!21906 (regTwo!43666 r!24786)))) b!7999363))

(assert (= (and b!7999180 ((_ is Union!21577) (reg!21906 (regTwo!43666 r!24786)))) b!7999364))

(declare-fun b!7999365 () Bool)

(declare-fun e!4712590 () Bool)

(assert (=> b!7999365 (= e!4712590 tp_is_empty!53697)))

(assert (=> b!7999189 (= tp!2392271 e!4712590)))

(declare-fun b!7999367 () Bool)

(declare-fun tp!2392343 () Bool)

(assert (=> b!7999367 (= e!4712590 tp!2392343)))

(declare-fun b!7999366 () Bool)

(declare-fun tp!2392342 () Bool)

(declare-fun tp!2392340 () Bool)

(assert (=> b!7999366 (= e!4712590 (and tp!2392342 tp!2392340))))

(declare-fun b!7999368 () Bool)

(declare-fun tp!2392339 () Bool)

(declare-fun tp!2392341 () Bool)

(assert (=> b!7999368 (= e!4712590 (and tp!2392339 tp!2392341))))

(assert (= (and b!7999189 ((_ is ElementMatch!21577) (regOne!43667 (reg!21906 r!24786)))) b!7999365))

(assert (= (and b!7999189 ((_ is Concat!30576) (regOne!43667 (reg!21906 r!24786)))) b!7999366))

(assert (= (and b!7999189 ((_ is Star!21577) (regOne!43667 (reg!21906 r!24786)))) b!7999367))

(assert (= (and b!7999189 ((_ is Union!21577) (regOne!43667 (reg!21906 r!24786)))) b!7999368))

(declare-fun b!7999369 () Bool)

(declare-fun e!4712591 () Bool)

(assert (=> b!7999369 (= e!4712591 tp_is_empty!53697)))

(assert (=> b!7999189 (= tp!2392273 e!4712591)))

(declare-fun b!7999371 () Bool)

(declare-fun tp!2392348 () Bool)

(assert (=> b!7999371 (= e!4712591 tp!2392348)))

(declare-fun b!7999370 () Bool)

(declare-fun tp!2392347 () Bool)

(declare-fun tp!2392345 () Bool)

(assert (=> b!7999370 (= e!4712591 (and tp!2392347 tp!2392345))))

(declare-fun b!7999372 () Bool)

(declare-fun tp!2392344 () Bool)

(declare-fun tp!2392346 () Bool)

(assert (=> b!7999372 (= e!4712591 (and tp!2392344 tp!2392346))))

(assert (= (and b!7999189 ((_ is ElementMatch!21577) (regTwo!43667 (reg!21906 r!24786)))) b!7999369))

(assert (= (and b!7999189 ((_ is Concat!30576) (regTwo!43667 (reg!21906 r!24786)))) b!7999370))

(assert (= (and b!7999189 ((_ is Star!21577) (regTwo!43667 (reg!21906 r!24786)))) b!7999371))

(assert (= (and b!7999189 ((_ is Union!21577) (regTwo!43667 (reg!21906 r!24786)))) b!7999372))

(declare-fun b!7999373 () Bool)

(declare-fun e!4712592 () Bool)

(assert (=> b!7999373 (= e!4712592 tp_is_empty!53697)))

(assert (=> b!7999156 (= tp!2392235 e!4712592)))

(declare-fun b!7999375 () Bool)

(declare-fun tp!2392353 () Bool)

(assert (=> b!7999375 (= e!4712592 tp!2392353)))

(declare-fun b!7999374 () Bool)

(declare-fun tp!2392352 () Bool)

(declare-fun tp!2392350 () Bool)

(assert (=> b!7999374 (= e!4712592 (and tp!2392352 tp!2392350))))

(declare-fun b!7999376 () Bool)

(declare-fun tp!2392349 () Bool)

(declare-fun tp!2392351 () Bool)

(assert (=> b!7999376 (= e!4712592 (and tp!2392349 tp!2392351))))

(assert (= (and b!7999156 ((_ is ElementMatch!21577) (reg!21906 (regOne!43667 r!24786)))) b!7999373))

(assert (= (and b!7999156 ((_ is Concat!30576) (reg!21906 (regOne!43667 r!24786)))) b!7999374))

(assert (= (and b!7999156 ((_ is Star!21577) (reg!21906 (regOne!43667 r!24786)))) b!7999375))

(assert (= (and b!7999156 ((_ is Union!21577) (reg!21906 (regOne!43667 r!24786)))) b!7999376))

(declare-fun b!7999377 () Bool)

(declare-fun e!4712593 () Bool)

(assert (=> b!7999377 (= e!4712593 tp_is_empty!53697)))

(assert (=> b!7999165 (= tp!2392241 e!4712593)))

(declare-fun b!7999379 () Bool)

(declare-fun tp!2392358 () Bool)

(assert (=> b!7999379 (= e!4712593 tp!2392358)))

(declare-fun b!7999378 () Bool)

(declare-fun tp!2392357 () Bool)

(declare-fun tp!2392355 () Bool)

(assert (=> b!7999378 (= e!4712593 (and tp!2392357 tp!2392355))))

(declare-fun b!7999380 () Bool)

(declare-fun tp!2392354 () Bool)

(declare-fun tp!2392356 () Bool)

(assert (=> b!7999380 (= e!4712593 (and tp!2392354 tp!2392356))))

(assert (= (and b!7999165 ((_ is ElementMatch!21577) (regOne!43667 (regTwo!43667 r!24786)))) b!7999377))

(assert (= (and b!7999165 ((_ is Concat!30576) (regOne!43667 (regTwo!43667 r!24786)))) b!7999378))

(assert (= (and b!7999165 ((_ is Star!21577) (regOne!43667 (regTwo!43667 r!24786)))) b!7999379))

(assert (= (and b!7999165 ((_ is Union!21577) (regOne!43667 (regTwo!43667 r!24786)))) b!7999380))

(declare-fun b!7999381 () Bool)

(declare-fun e!4712594 () Bool)

(assert (=> b!7999381 (= e!4712594 tp_is_empty!53697)))

(assert (=> b!7999165 (= tp!2392243 e!4712594)))

(declare-fun b!7999383 () Bool)

(declare-fun tp!2392363 () Bool)

(assert (=> b!7999383 (= e!4712594 tp!2392363)))

(declare-fun b!7999382 () Bool)

(declare-fun tp!2392362 () Bool)

(declare-fun tp!2392360 () Bool)

(assert (=> b!7999382 (= e!4712594 (and tp!2392362 tp!2392360))))

(declare-fun b!7999384 () Bool)

(declare-fun tp!2392359 () Bool)

(declare-fun tp!2392361 () Bool)

(assert (=> b!7999384 (= e!4712594 (and tp!2392359 tp!2392361))))

(assert (= (and b!7999165 ((_ is ElementMatch!21577) (regTwo!43667 (regTwo!43667 r!24786)))) b!7999381))

(assert (= (and b!7999165 ((_ is Concat!30576) (regTwo!43667 (regTwo!43667 r!24786)))) b!7999382))

(assert (= (and b!7999165 ((_ is Star!21577) (regTwo!43667 (regTwo!43667 r!24786)))) b!7999383))

(assert (= (and b!7999165 ((_ is Union!21577) (regTwo!43667 (regTwo!43667 r!24786)))) b!7999384))

(declare-fun b!7999385 () Bool)

(declare-fun e!4712595 () Bool)

(assert (=> b!7999385 (= e!4712595 tp_is_empty!53697)))

(assert (=> b!7999155 (= tp!2392234 e!4712595)))

(declare-fun b!7999387 () Bool)

(declare-fun tp!2392368 () Bool)

(assert (=> b!7999387 (= e!4712595 tp!2392368)))

(declare-fun b!7999386 () Bool)

(declare-fun tp!2392367 () Bool)

(declare-fun tp!2392365 () Bool)

(assert (=> b!7999386 (= e!4712595 (and tp!2392367 tp!2392365))))

(declare-fun b!7999388 () Bool)

(declare-fun tp!2392364 () Bool)

(declare-fun tp!2392366 () Bool)

(assert (=> b!7999388 (= e!4712595 (and tp!2392364 tp!2392366))))

(assert (= (and b!7999155 ((_ is ElementMatch!21577) (regOne!43666 (regOne!43667 r!24786)))) b!7999385))

(assert (= (and b!7999155 ((_ is Concat!30576) (regOne!43666 (regOne!43667 r!24786)))) b!7999386))

(assert (= (and b!7999155 ((_ is Star!21577) (regOne!43666 (regOne!43667 r!24786)))) b!7999387))

(assert (= (and b!7999155 ((_ is Union!21577) (regOne!43666 (regOne!43667 r!24786)))) b!7999388))

(declare-fun b!7999389 () Bool)

(declare-fun e!4712596 () Bool)

(assert (=> b!7999389 (= e!4712596 tp_is_empty!53697)))

(assert (=> b!7999155 (= tp!2392232 e!4712596)))

(declare-fun b!7999391 () Bool)

(declare-fun tp!2392373 () Bool)

(assert (=> b!7999391 (= e!4712596 tp!2392373)))

(declare-fun b!7999390 () Bool)

(declare-fun tp!2392372 () Bool)

(declare-fun tp!2392370 () Bool)

(assert (=> b!7999390 (= e!4712596 (and tp!2392372 tp!2392370))))

(declare-fun b!7999392 () Bool)

(declare-fun tp!2392369 () Bool)

(declare-fun tp!2392371 () Bool)

(assert (=> b!7999392 (= e!4712596 (and tp!2392369 tp!2392371))))

(assert (= (and b!7999155 ((_ is ElementMatch!21577) (regTwo!43666 (regOne!43667 r!24786)))) b!7999389))

(assert (= (and b!7999155 ((_ is Concat!30576) (regTwo!43666 (regOne!43667 r!24786)))) b!7999390))

(assert (= (and b!7999155 ((_ is Star!21577) (regTwo!43666 (regOne!43667 r!24786)))) b!7999391))

(assert (= (and b!7999155 ((_ is Union!21577) (regTwo!43666 (regOne!43667 r!24786)))) b!7999392))

(declare-fun b!7999393 () Bool)

(declare-fun e!4712597 () Bool)

(assert (=> b!7999393 (= e!4712597 tp_is_empty!53697)))

(assert (=> b!7999164 (= tp!2392245 e!4712597)))

(declare-fun b!7999395 () Bool)

(declare-fun tp!2392378 () Bool)

(assert (=> b!7999395 (= e!4712597 tp!2392378)))

(declare-fun b!7999394 () Bool)

(declare-fun tp!2392377 () Bool)

(declare-fun tp!2392375 () Bool)

(assert (=> b!7999394 (= e!4712597 (and tp!2392377 tp!2392375))))

(declare-fun b!7999396 () Bool)

(declare-fun tp!2392374 () Bool)

(declare-fun tp!2392376 () Bool)

(assert (=> b!7999396 (= e!4712597 (and tp!2392374 tp!2392376))))

(assert (= (and b!7999164 ((_ is ElementMatch!21577) (reg!21906 (regTwo!43667 r!24786)))) b!7999393))

(assert (= (and b!7999164 ((_ is Concat!30576) (reg!21906 (regTwo!43667 r!24786)))) b!7999394))

(assert (= (and b!7999164 ((_ is Star!21577) (reg!21906 (regTwo!43667 r!24786)))) b!7999395))

(assert (= (and b!7999164 ((_ is Union!21577) (reg!21906 (regTwo!43667 r!24786)))) b!7999396))

(declare-fun b!7999397 () Bool)

(declare-fun e!4712598 () Bool)

(assert (=> b!7999397 (= e!4712598 tp_is_empty!53697)))

(assert (=> b!7999173 (= tp!2392251 e!4712598)))

(declare-fun b!7999399 () Bool)

(declare-fun tp!2392383 () Bool)

(assert (=> b!7999399 (= e!4712598 tp!2392383)))

(declare-fun b!7999398 () Bool)

(declare-fun tp!2392382 () Bool)

(declare-fun tp!2392380 () Bool)

(assert (=> b!7999398 (= e!4712598 (and tp!2392382 tp!2392380))))

(declare-fun b!7999400 () Bool)

(declare-fun tp!2392379 () Bool)

(declare-fun tp!2392381 () Bool)

(assert (=> b!7999400 (= e!4712598 (and tp!2392379 tp!2392381))))

(assert (= (and b!7999173 ((_ is ElementMatch!21577) (regOne!43667 (regOne!43666 r!24786)))) b!7999397))

(assert (= (and b!7999173 ((_ is Concat!30576) (regOne!43667 (regOne!43666 r!24786)))) b!7999398))

(assert (= (and b!7999173 ((_ is Star!21577) (regOne!43667 (regOne!43666 r!24786)))) b!7999399))

(assert (= (and b!7999173 ((_ is Union!21577) (regOne!43667 (regOne!43666 r!24786)))) b!7999400))

(declare-fun b!7999401 () Bool)

(declare-fun e!4712599 () Bool)

(assert (=> b!7999401 (= e!4712599 tp_is_empty!53697)))

(assert (=> b!7999173 (= tp!2392253 e!4712599)))

(declare-fun b!7999403 () Bool)

(declare-fun tp!2392388 () Bool)

(assert (=> b!7999403 (= e!4712599 tp!2392388)))

(declare-fun b!7999402 () Bool)

(declare-fun tp!2392387 () Bool)

(declare-fun tp!2392385 () Bool)

(assert (=> b!7999402 (= e!4712599 (and tp!2392387 tp!2392385))))

(declare-fun b!7999404 () Bool)

(declare-fun tp!2392384 () Bool)

(declare-fun tp!2392386 () Bool)

(assert (=> b!7999404 (= e!4712599 (and tp!2392384 tp!2392386))))

(assert (= (and b!7999173 ((_ is ElementMatch!21577) (regTwo!43667 (regOne!43666 r!24786)))) b!7999401))

(assert (= (and b!7999173 ((_ is Concat!30576) (regTwo!43667 (regOne!43666 r!24786)))) b!7999402))

(assert (= (and b!7999173 ((_ is Star!21577) (regTwo!43667 (regOne!43666 r!24786)))) b!7999403))

(assert (= (and b!7999173 ((_ is Union!21577) (regTwo!43667 (regOne!43666 r!24786)))) b!7999404))

(declare-fun b!7999405 () Bool)

(declare-fun e!4712600 () Bool)

(assert (=> b!7999405 (= e!4712600 tp_is_empty!53697)))

(assert (=> b!7999120 (= tp!2392188 e!4712600)))

(declare-fun b!7999407 () Bool)

(declare-fun tp!2392393 () Bool)

(assert (=> b!7999407 (= e!4712600 tp!2392393)))

(declare-fun b!7999406 () Bool)

(declare-fun tp!2392392 () Bool)

(declare-fun tp!2392390 () Bool)

(assert (=> b!7999406 (= e!4712600 (and tp!2392392 tp!2392390))))

(declare-fun b!7999408 () Bool)

(declare-fun tp!2392389 () Bool)

(declare-fun tp!2392391 () Bool)

(assert (=> b!7999408 (= e!4712600 (and tp!2392389 tp!2392391))))

(assert (= (and b!7999120 ((_ is ElementMatch!21577) (regOne!43667 (reg!21906 baseR!141)))) b!7999405))

(assert (= (and b!7999120 ((_ is Concat!30576) (regOne!43667 (reg!21906 baseR!141)))) b!7999406))

(assert (= (and b!7999120 ((_ is Star!21577) (regOne!43667 (reg!21906 baseR!141)))) b!7999407))

(assert (= (and b!7999120 ((_ is Union!21577) (regOne!43667 (reg!21906 baseR!141)))) b!7999408))

(declare-fun b!7999409 () Bool)

(declare-fun e!4712601 () Bool)

(assert (=> b!7999409 (= e!4712601 tp_is_empty!53697)))

(assert (=> b!7999120 (= tp!2392190 e!4712601)))

(declare-fun b!7999411 () Bool)

(declare-fun tp!2392398 () Bool)

(assert (=> b!7999411 (= e!4712601 tp!2392398)))

(declare-fun b!7999410 () Bool)

(declare-fun tp!2392397 () Bool)

(declare-fun tp!2392395 () Bool)

(assert (=> b!7999410 (= e!4712601 (and tp!2392397 tp!2392395))))

(declare-fun b!7999412 () Bool)

(declare-fun tp!2392394 () Bool)

(declare-fun tp!2392396 () Bool)

(assert (=> b!7999412 (= e!4712601 (and tp!2392394 tp!2392396))))

(assert (= (and b!7999120 ((_ is ElementMatch!21577) (regTwo!43667 (reg!21906 baseR!141)))) b!7999409))

(assert (= (and b!7999120 ((_ is Concat!30576) (regTwo!43667 (reg!21906 baseR!141)))) b!7999410))

(assert (= (and b!7999120 ((_ is Star!21577) (regTwo!43667 (reg!21906 baseR!141)))) b!7999411))

(assert (= (and b!7999120 ((_ is Union!21577) (regTwo!43667 (reg!21906 baseR!141)))) b!7999412))

(declare-fun b!7999413 () Bool)

(declare-fun e!4712602 () Bool)

(assert (=> b!7999413 (= e!4712602 tp_is_empty!53697)))

(assert (=> b!7999119 (= tp!2392192 e!4712602)))

(declare-fun b!7999415 () Bool)

(declare-fun tp!2392403 () Bool)

(assert (=> b!7999415 (= e!4712602 tp!2392403)))

(declare-fun b!7999414 () Bool)

(declare-fun tp!2392402 () Bool)

(declare-fun tp!2392400 () Bool)

(assert (=> b!7999414 (= e!4712602 (and tp!2392402 tp!2392400))))

(declare-fun b!7999416 () Bool)

(declare-fun tp!2392399 () Bool)

(declare-fun tp!2392401 () Bool)

(assert (=> b!7999416 (= e!4712602 (and tp!2392399 tp!2392401))))

(assert (= (and b!7999119 ((_ is ElementMatch!21577) (reg!21906 (reg!21906 baseR!141)))) b!7999413))

(assert (= (and b!7999119 ((_ is Concat!30576) (reg!21906 (reg!21906 baseR!141)))) b!7999414))

(assert (= (and b!7999119 ((_ is Star!21577) (reg!21906 (reg!21906 baseR!141)))) b!7999415))

(assert (= (and b!7999119 ((_ is Union!21577) (reg!21906 (reg!21906 baseR!141)))) b!7999416))

(declare-fun b!7999417 () Bool)

(declare-fun e!4712603 () Bool)

(assert (=> b!7999417 (= e!4712603 tp_is_empty!53697)))

(assert (=> b!7999179 (= tp!2392264 e!4712603)))

(declare-fun b!7999419 () Bool)

(declare-fun tp!2392408 () Bool)

(assert (=> b!7999419 (= e!4712603 tp!2392408)))

(declare-fun b!7999418 () Bool)

(declare-fun tp!2392407 () Bool)

(declare-fun tp!2392405 () Bool)

(assert (=> b!7999418 (= e!4712603 (and tp!2392407 tp!2392405))))

(declare-fun b!7999420 () Bool)

(declare-fun tp!2392404 () Bool)

(declare-fun tp!2392406 () Bool)

(assert (=> b!7999420 (= e!4712603 (and tp!2392404 tp!2392406))))

(assert (= (and b!7999179 ((_ is ElementMatch!21577) (regOne!43666 (regTwo!43666 r!24786)))) b!7999417))

(assert (= (and b!7999179 ((_ is Concat!30576) (regOne!43666 (regTwo!43666 r!24786)))) b!7999418))

(assert (= (and b!7999179 ((_ is Star!21577) (regOne!43666 (regTwo!43666 r!24786)))) b!7999419))

(assert (= (and b!7999179 ((_ is Union!21577) (regOne!43666 (regTwo!43666 r!24786)))) b!7999420))

(declare-fun b!7999421 () Bool)

(declare-fun e!4712604 () Bool)

(assert (=> b!7999421 (= e!4712604 tp_is_empty!53697)))

(assert (=> b!7999179 (= tp!2392262 e!4712604)))

(declare-fun b!7999423 () Bool)

(declare-fun tp!2392413 () Bool)

(assert (=> b!7999423 (= e!4712604 tp!2392413)))

(declare-fun b!7999422 () Bool)

(declare-fun tp!2392412 () Bool)

(declare-fun tp!2392410 () Bool)

(assert (=> b!7999422 (= e!4712604 (and tp!2392412 tp!2392410))))

(declare-fun b!7999424 () Bool)

(declare-fun tp!2392409 () Bool)

(declare-fun tp!2392411 () Bool)

(assert (=> b!7999424 (= e!4712604 (and tp!2392409 tp!2392411))))

(assert (= (and b!7999179 ((_ is ElementMatch!21577) (regTwo!43666 (regTwo!43666 r!24786)))) b!7999421))

(assert (= (and b!7999179 ((_ is Concat!30576) (regTwo!43666 (regTwo!43666 r!24786)))) b!7999422))

(assert (= (and b!7999179 ((_ is Star!21577) (regTwo!43666 (regTwo!43666 r!24786)))) b!7999423))

(assert (= (and b!7999179 ((_ is Union!21577) (regTwo!43666 (regTwo!43666 r!24786)))) b!7999424))

(declare-fun b!7999425 () Bool)

(declare-fun e!4712605 () Bool)

(assert (=> b!7999425 (= e!4712605 tp_is_empty!53697)))

(assert (=> b!7999196 (= tp!2392282 e!4712605)))

(declare-fun b!7999427 () Bool)

(declare-fun tp!2392418 () Bool)

(assert (=> b!7999427 (= e!4712605 tp!2392418)))

(declare-fun b!7999426 () Bool)

(declare-fun tp!2392417 () Bool)

(declare-fun tp!2392415 () Bool)

(assert (=> b!7999426 (= e!4712605 (and tp!2392417 tp!2392415))))

(declare-fun b!7999428 () Bool)

(declare-fun tp!2392414 () Bool)

(declare-fun tp!2392416 () Bool)

(assert (=> b!7999428 (= e!4712605 (and tp!2392414 tp!2392416))))

(assert (= (and b!7999196 ((_ is ElementMatch!21577) (reg!21906 (regOne!43667 baseR!141)))) b!7999425))

(assert (= (and b!7999196 ((_ is Concat!30576) (reg!21906 (regOne!43667 baseR!141)))) b!7999426))

(assert (= (and b!7999196 ((_ is Star!21577) (reg!21906 (regOne!43667 baseR!141)))) b!7999427))

(assert (= (and b!7999196 ((_ is Union!21577) (reg!21906 (regOne!43667 baseR!141)))) b!7999428))

(declare-fun b!7999429 () Bool)

(declare-fun e!4712606 () Bool)

(assert (=> b!7999429 (= e!4712606 tp_is_empty!53697)))

(assert (=> b!7999195 (= tp!2392281 e!4712606)))

(declare-fun b!7999431 () Bool)

(declare-fun tp!2392423 () Bool)

(assert (=> b!7999431 (= e!4712606 tp!2392423)))

(declare-fun b!7999430 () Bool)

(declare-fun tp!2392422 () Bool)

(declare-fun tp!2392420 () Bool)

(assert (=> b!7999430 (= e!4712606 (and tp!2392422 tp!2392420))))

(declare-fun b!7999432 () Bool)

(declare-fun tp!2392419 () Bool)

(declare-fun tp!2392421 () Bool)

(assert (=> b!7999432 (= e!4712606 (and tp!2392419 tp!2392421))))

(assert (= (and b!7999195 ((_ is ElementMatch!21577) (regOne!43666 (regOne!43667 baseR!141)))) b!7999429))

(assert (= (and b!7999195 ((_ is Concat!30576) (regOne!43666 (regOne!43667 baseR!141)))) b!7999430))

(assert (= (and b!7999195 ((_ is Star!21577) (regOne!43666 (regOne!43667 baseR!141)))) b!7999431))

(assert (= (and b!7999195 ((_ is Union!21577) (regOne!43666 (regOne!43667 baseR!141)))) b!7999432))

(declare-fun b!7999433 () Bool)

(declare-fun e!4712607 () Bool)

(assert (=> b!7999433 (= e!4712607 tp_is_empty!53697)))

(assert (=> b!7999195 (= tp!2392279 e!4712607)))

(declare-fun b!7999435 () Bool)

(declare-fun tp!2392428 () Bool)

(assert (=> b!7999435 (= e!4712607 tp!2392428)))

(declare-fun b!7999434 () Bool)

(declare-fun tp!2392427 () Bool)

(declare-fun tp!2392425 () Bool)

(assert (=> b!7999434 (= e!4712607 (and tp!2392427 tp!2392425))))

(declare-fun b!7999436 () Bool)

(declare-fun tp!2392424 () Bool)

(declare-fun tp!2392426 () Bool)

(assert (=> b!7999436 (= e!4712607 (and tp!2392424 tp!2392426))))

(assert (= (and b!7999195 ((_ is ElementMatch!21577) (regTwo!43666 (regOne!43667 baseR!141)))) b!7999433))

(assert (= (and b!7999195 ((_ is Concat!30576) (regTwo!43666 (regOne!43667 baseR!141)))) b!7999434))

(assert (= (and b!7999195 ((_ is Star!21577) (regTwo!43666 (regOne!43667 baseR!141)))) b!7999435))

(assert (= (and b!7999195 ((_ is Union!21577) (regTwo!43666 (regOne!43667 baseR!141)))) b!7999436))

(declare-fun b!7999437 () Bool)

(declare-fun e!4712608 () Bool)

(assert (=> b!7999437 (= e!4712608 tp_is_empty!53697)))

(assert (=> b!7999188 (= tp!2392275 e!4712608)))

(declare-fun b!7999439 () Bool)

(declare-fun tp!2392433 () Bool)

(assert (=> b!7999439 (= e!4712608 tp!2392433)))

(declare-fun b!7999438 () Bool)

(declare-fun tp!2392432 () Bool)

(declare-fun tp!2392430 () Bool)

(assert (=> b!7999438 (= e!4712608 (and tp!2392432 tp!2392430))))

(declare-fun b!7999440 () Bool)

(declare-fun tp!2392429 () Bool)

(declare-fun tp!2392431 () Bool)

(assert (=> b!7999440 (= e!4712608 (and tp!2392429 tp!2392431))))

(assert (= (and b!7999188 ((_ is ElementMatch!21577) (reg!21906 (reg!21906 r!24786)))) b!7999437))

(assert (= (and b!7999188 ((_ is Concat!30576) (reg!21906 (reg!21906 r!24786)))) b!7999438))

(assert (= (and b!7999188 ((_ is Star!21577) (reg!21906 (reg!21906 r!24786)))) b!7999439))

(assert (= (and b!7999188 ((_ is Union!21577) (reg!21906 (reg!21906 r!24786)))) b!7999440))

(declare-fun b!7999441 () Bool)

(declare-fun e!4712609 () Bool)

(assert (=> b!7999441 (= e!4712609 tp_is_empty!53697)))

(assert (=> b!7999187 (= tp!2392274 e!4712609)))

(declare-fun b!7999443 () Bool)

(declare-fun tp!2392438 () Bool)

(assert (=> b!7999443 (= e!4712609 tp!2392438)))

(declare-fun b!7999442 () Bool)

(declare-fun tp!2392437 () Bool)

(declare-fun tp!2392435 () Bool)

(assert (=> b!7999442 (= e!4712609 (and tp!2392437 tp!2392435))))

(declare-fun b!7999444 () Bool)

(declare-fun tp!2392434 () Bool)

(declare-fun tp!2392436 () Bool)

(assert (=> b!7999444 (= e!4712609 (and tp!2392434 tp!2392436))))

(assert (= (and b!7999187 ((_ is ElementMatch!21577) (regOne!43666 (reg!21906 r!24786)))) b!7999441))

(assert (= (and b!7999187 ((_ is Concat!30576) (regOne!43666 (reg!21906 r!24786)))) b!7999442))

(assert (= (and b!7999187 ((_ is Star!21577) (regOne!43666 (reg!21906 r!24786)))) b!7999443))

(assert (= (and b!7999187 ((_ is Union!21577) (regOne!43666 (reg!21906 r!24786)))) b!7999444))

(declare-fun b!7999445 () Bool)

(declare-fun e!4712610 () Bool)

(assert (=> b!7999445 (= e!4712610 tp_is_empty!53697)))

(assert (=> b!7999187 (= tp!2392272 e!4712610)))

(declare-fun b!7999447 () Bool)

(declare-fun tp!2392443 () Bool)

(assert (=> b!7999447 (= e!4712610 tp!2392443)))

(declare-fun b!7999446 () Bool)

(declare-fun tp!2392442 () Bool)

(declare-fun tp!2392440 () Bool)

(assert (=> b!7999446 (= e!4712610 (and tp!2392442 tp!2392440))))

(declare-fun b!7999448 () Bool)

(declare-fun tp!2392439 () Bool)

(declare-fun tp!2392441 () Bool)

(assert (=> b!7999448 (= e!4712610 (and tp!2392439 tp!2392441))))

(assert (= (and b!7999187 ((_ is ElementMatch!21577) (regTwo!43666 (reg!21906 r!24786)))) b!7999445))

(assert (= (and b!7999187 ((_ is Concat!30576) (regTwo!43666 (reg!21906 r!24786)))) b!7999446))

(assert (= (and b!7999187 ((_ is Star!21577) (regTwo!43666 (reg!21906 r!24786)))) b!7999447))

(assert (= (and b!7999187 ((_ is Union!21577) (regTwo!43666 (reg!21906 r!24786)))) b!7999448))

(declare-fun b!7999449 () Bool)

(declare-fun e!4712611 () Bool)

(assert (=> b!7999449 (= e!4712611 tp_is_empty!53697)))

(assert (=> b!7999134 (= tp!2392211 e!4712611)))

(declare-fun b!7999451 () Bool)

(declare-fun tp!2392448 () Bool)

(assert (=> b!7999451 (= e!4712611 tp!2392448)))

(declare-fun b!7999450 () Bool)

(declare-fun tp!2392447 () Bool)

(declare-fun tp!2392445 () Bool)

(assert (=> b!7999450 (= e!4712611 (and tp!2392447 tp!2392445))))

(declare-fun b!7999452 () Bool)

(declare-fun tp!2392444 () Bool)

(declare-fun tp!2392446 () Bool)

(assert (=> b!7999452 (= e!4712611 (and tp!2392444 tp!2392446))))

(assert (= (and b!7999134 ((_ is ElementMatch!21577) (regOne!43666 (regTwo!43666 baseR!141)))) b!7999449))

(assert (= (and b!7999134 ((_ is Concat!30576) (regOne!43666 (regTwo!43666 baseR!141)))) b!7999450))

(assert (= (and b!7999134 ((_ is Star!21577) (regOne!43666 (regTwo!43666 baseR!141)))) b!7999451))

(assert (= (and b!7999134 ((_ is Union!21577) (regOne!43666 (regTwo!43666 baseR!141)))) b!7999452))

(declare-fun b!7999453 () Bool)

(declare-fun e!4712612 () Bool)

(assert (=> b!7999453 (= e!4712612 tp_is_empty!53697)))

(assert (=> b!7999134 (= tp!2392209 e!4712612)))

(declare-fun b!7999455 () Bool)

(declare-fun tp!2392453 () Bool)

(assert (=> b!7999455 (= e!4712612 tp!2392453)))

(declare-fun b!7999454 () Bool)

(declare-fun tp!2392452 () Bool)

(declare-fun tp!2392450 () Bool)

(assert (=> b!7999454 (= e!4712612 (and tp!2392452 tp!2392450))))

(declare-fun b!7999456 () Bool)

(declare-fun tp!2392449 () Bool)

(declare-fun tp!2392451 () Bool)

(assert (=> b!7999456 (= e!4712612 (and tp!2392449 tp!2392451))))

(assert (= (and b!7999134 ((_ is ElementMatch!21577) (regTwo!43666 (regTwo!43666 baseR!141)))) b!7999453))

(assert (= (and b!7999134 ((_ is Concat!30576) (regTwo!43666 (regTwo!43666 baseR!141)))) b!7999454))

(assert (= (and b!7999134 ((_ is Star!21577) (regTwo!43666 (regTwo!43666 baseR!141)))) b!7999455))

(assert (= (and b!7999134 ((_ is Union!21577) (regTwo!43666 (regTwo!43666 baseR!141)))) b!7999456))

(declare-fun b!7999457 () Bool)

(declare-fun e!4712613 () Bool)

(assert (=> b!7999457 (= e!4712613 tp_is_empty!53697)))

(assert (=> b!7999201 (= tp!2392283 e!4712613)))

(declare-fun b!7999459 () Bool)

(declare-fun tp!2392458 () Bool)

(assert (=> b!7999459 (= e!4712613 tp!2392458)))

(declare-fun b!7999458 () Bool)

(declare-fun tp!2392457 () Bool)

(declare-fun tp!2392455 () Bool)

(assert (=> b!7999458 (= e!4712613 (and tp!2392457 tp!2392455))))

(declare-fun b!7999460 () Bool)

(declare-fun tp!2392454 () Bool)

(declare-fun tp!2392456 () Bool)

(assert (=> b!7999460 (= e!4712613 (and tp!2392454 tp!2392456))))

(assert (= (and b!7999201 ((_ is ElementMatch!21577) (regOne!43667 (regTwo!43667 baseR!141)))) b!7999457))

(assert (= (and b!7999201 ((_ is Concat!30576) (regOne!43667 (regTwo!43667 baseR!141)))) b!7999458))

(assert (= (and b!7999201 ((_ is Star!21577) (regOne!43667 (regTwo!43667 baseR!141)))) b!7999459))

(assert (= (and b!7999201 ((_ is Union!21577) (regOne!43667 (regTwo!43667 baseR!141)))) b!7999460))

(declare-fun b!7999461 () Bool)

(declare-fun e!4712614 () Bool)

(assert (=> b!7999461 (= e!4712614 tp_is_empty!53697)))

(assert (=> b!7999201 (= tp!2392285 e!4712614)))

(declare-fun b!7999463 () Bool)

(declare-fun tp!2392463 () Bool)

(assert (=> b!7999463 (= e!4712614 tp!2392463)))

(declare-fun b!7999462 () Bool)

(declare-fun tp!2392462 () Bool)

(declare-fun tp!2392460 () Bool)

(assert (=> b!7999462 (= e!4712614 (and tp!2392462 tp!2392460))))

(declare-fun b!7999464 () Bool)

(declare-fun tp!2392459 () Bool)

(declare-fun tp!2392461 () Bool)

(assert (=> b!7999464 (= e!4712614 (and tp!2392459 tp!2392461))))

(assert (= (and b!7999201 ((_ is ElementMatch!21577) (regTwo!43667 (regTwo!43667 baseR!141)))) b!7999461))

(assert (= (and b!7999201 ((_ is Concat!30576) (regTwo!43667 (regTwo!43667 baseR!141)))) b!7999462))

(assert (= (and b!7999201 ((_ is Star!21577) (regTwo!43667 (regTwo!43667 baseR!141)))) b!7999463))

(assert (= (and b!7999201 ((_ is Union!21577) (regTwo!43667 (regTwo!43667 baseR!141)))) b!7999464))

(declare-fun b!7999465 () Bool)

(declare-fun e!4712615 () Bool)

(assert (=> b!7999465 (= e!4712615 tp_is_empty!53697)))

(assert (=> b!7999128 (= tp!2392198 e!4712615)))

(declare-fun b!7999467 () Bool)

(declare-fun tp!2392468 () Bool)

(assert (=> b!7999467 (= e!4712615 tp!2392468)))

(declare-fun b!7999466 () Bool)

(declare-fun tp!2392467 () Bool)

(declare-fun tp!2392465 () Bool)

(assert (=> b!7999466 (= e!4712615 (and tp!2392467 tp!2392465))))

(declare-fun b!7999468 () Bool)

(declare-fun tp!2392464 () Bool)

(declare-fun tp!2392466 () Bool)

(assert (=> b!7999468 (= e!4712615 (and tp!2392464 tp!2392466))))

(assert (= (and b!7999128 ((_ is ElementMatch!21577) (regOne!43667 (regOne!43666 baseR!141)))) b!7999465))

(assert (= (and b!7999128 ((_ is Concat!30576) (regOne!43667 (regOne!43666 baseR!141)))) b!7999466))

(assert (= (and b!7999128 ((_ is Star!21577) (regOne!43667 (regOne!43666 baseR!141)))) b!7999467))

(assert (= (and b!7999128 ((_ is Union!21577) (regOne!43667 (regOne!43666 baseR!141)))) b!7999468))

(declare-fun b!7999469 () Bool)

(declare-fun e!4712616 () Bool)

(assert (=> b!7999469 (= e!4712616 tp_is_empty!53697)))

(assert (=> b!7999128 (= tp!2392200 e!4712616)))

(declare-fun b!7999471 () Bool)

(declare-fun tp!2392473 () Bool)

(assert (=> b!7999471 (= e!4712616 tp!2392473)))

(declare-fun b!7999470 () Bool)

(declare-fun tp!2392472 () Bool)

(declare-fun tp!2392470 () Bool)

(assert (=> b!7999470 (= e!4712616 (and tp!2392472 tp!2392470))))

(declare-fun b!7999472 () Bool)

(declare-fun tp!2392469 () Bool)

(declare-fun tp!2392471 () Bool)

(assert (=> b!7999472 (= e!4712616 (and tp!2392469 tp!2392471))))

(assert (= (and b!7999128 ((_ is ElementMatch!21577) (regTwo!43667 (regOne!43666 baseR!141)))) b!7999469))

(assert (= (and b!7999128 ((_ is Concat!30576) (regTwo!43667 (regOne!43666 baseR!141)))) b!7999470))

(assert (= (and b!7999128 ((_ is Star!21577) (regTwo!43667 (regOne!43666 baseR!141)))) b!7999471))

(assert (= (and b!7999128 ((_ is Union!21577) (regTwo!43667 (regOne!43666 baseR!141)))) b!7999472))

(declare-fun b!7999473 () Bool)

(declare-fun e!4712617 () Bool)

(assert (=> b!7999473 (= e!4712617 tp_is_empty!53697)))

(assert (=> b!7999118 (= tp!2392191 e!4712617)))

(declare-fun b!7999475 () Bool)

(declare-fun tp!2392478 () Bool)

(assert (=> b!7999475 (= e!4712617 tp!2392478)))

(declare-fun b!7999474 () Bool)

(declare-fun tp!2392477 () Bool)

(declare-fun tp!2392475 () Bool)

(assert (=> b!7999474 (= e!4712617 (and tp!2392477 tp!2392475))))

(declare-fun b!7999476 () Bool)

(declare-fun tp!2392474 () Bool)

(declare-fun tp!2392476 () Bool)

(assert (=> b!7999476 (= e!4712617 (and tp!2392474 tp!2392476))))

(assert (= (and b!7999118 ((_ is ElementMatch!21577) (regOne!43666 (reg!21906 baseR!141)))) b!7999473))

(assert (= (and b!7999118 ((_ is Concat!30576) (regOne!43666 (reg!21906 baseR!141)))) b!7999474))

(assert (= (and b!7999118 ((_ is Star!21577) (regOne!43666 (reg!21906 baseR!141)))) b!7999475))

(assert (= (and b!7999118 ((_ is Union!21577) (regOne!43666 (reg!21906 baseR!141)))) b!7999476))

(declare-fun b!7999477 () Bool)

(declare-fun e!4712618 () Bool)

(assert (=> b!7999477 (= e!4712618 tp_is_empty!53697)))

(assert (=> b!7999118 (= tp!2392189 e!4712618)))

(declare-fun b!7999479 () Bool)

(declare-fun tp!2392483 () Bool)

(assert (=> b!7999479 (= e!4712618 tp!2392483)))

(declare-fun b!7999478 () Bool)

(declare-fun tp!2392482 () Bool)

(declare-fun tp!2392480 () Bool)

(assert (=> b!7999478 (= e!4712618 (and tp!2392482 tp!2392480))))

(declare-fun b!7999480 () Bool)

(declare-fun tp!2392479 () Bool)

(declare-fun tp!2392481 () Bool)

(assert (=> b!7999480 (= e!4712618 (and tp!2392479 tp!2392481))))

(assert (= (and b!7999118 ((_ is ElementMatch!21577) (regTwo!43666 (reg!21906 baseR!141)))) b!7999477))

(assert (= (and b!7999118 ((_ is Concat!30576) (regTwo!43666 (reg!21906 baseR!141)))) b!7999478))

(assert (= (and b!7999118 ((_ is Star!21577) (regTwo!43666 (reg!21906 baseR!141)))) b!7999479))

(assert (= (and b!7999118 ((_ is Union!21577) (regTwo!43666 (reg!21906 baseR!141)))) b!7999480))

(declare-fun b!7999481 () Bool)

(declare-fun e!4712619 () Bool)

(assert (=> b!7999481 (= e!4712619 tp_is_empty!53697)))

(assert (=> b!7999127 (= tp!2392202 e!4712619)))

(declare-fun b!7999483 () Bool)

(declare-fun tp!2392488 () Bool)

(assert (=> b!7999483 (= e!4712619 tp!2392488)))

(declare-fun b!7999482 () Bool)

(declare-fun tp!2392487 () Bool)

(declare-fun tp!2392485 () Bool)

(assert (=> b!7999482 (= e!4712619 (and tp!2392487 tp!2392485))))

(declare-fun b!7999484 () Bool)

(declare-fun tp!2392484 () Bool)

(declare-fun tp!2392486 () Bool)

(assert (=> b!7999484 (= e!4712619 (and tp!2392484 tp!2392486))))

(assert (= (and b!7999127 ((_ is ElementMatch!21577) (reg!21906 (regOne!43666 baseR!141)))) b!7999481))

(assert (= (and b!7999127 ((_ is Concat!30576) (reg!21906 (regOne!43666 baseR!141)))) b!7999482))

(assert (= (and b!7999127 ((_ is Star!21577) (reg!21906 (regOne!43666 baseR!141)))) b!7999483))

(assert (= (and b!7999127 ((_ is Union!21577) (reg!21906 (regOne!43666 baseR!141)))) b!7999484))

(declare-fun b!7999485 () Bool)

(declare-fun e!4712620 () Bool)

(assert (=> b!7999485 (= e!4712620 tp_is_empty!53697)))

(assert (=> b!7999136 (= tp!2392208 e!4712620)))

(declare-fun b!7999487 () Bool)

(declare-fun tp!2392493 () Bool)

(assert (=> b!7999487 (= e!4712620 tp!2392493)))

(declare-fun b!7999486 () Bool)

(declare-fun tp!2392492 () Bool)

(declare-fun tp!2392490 () Bool)

(assert (=> b!7999486 (= e!4712620 (and tp!2392492 tp!2392490))))

(declare-fun b!7999488 () Bool)

(declare-fun tp!2392489 () Bool)

(declare-fun tp!2392491 () Bool)

(assert (=> b!7999488 (= e!4712620 (and tp!2392489 tp!2392491))))

(assert (= (and b!7999136 ((_ is ElementMatch!21577) (regOne!43667 (regTwo!43666 baseR!141)))) b!7999485))

(assert (= (and b!7999136 ((_ is Concat!30576) (regOne!43667 (regTwo!43666 baseR!141)))) b!7999486))

(assert (= (and b!7999136 ((_ is Star!21577) (regOne!43667 (regTwo!43666 baseR!141)))) b!7999487))

(assert (= (and b!7999136 ((_ is Union!21577) (regOne!43667 (regTwo!43666 baseR!141)))) b!7999488))

(declare-fun b!7999489 () Bool)

(declare-fun e!4712621 () Bool)

(assert (=> b!7999489 (= e!4712621 tp_is_empty!53697)))

(assert (=> b!7999136 (= tp!2392210 e!4712621)))

(declare-fun b!7999491 () Bool)

(declare-fun tp!2392498 () Bool)

(assert (=> b!7999491 (= e!4712621 tp!2392498)))

(declare-fun b!7999490 () Bool)

(declare-fun tp!2392497 () Bool)

(declare-fun tp!2392495 () Bool)

(assert (=> b!7999490 (= e!4712621 (and tp!2392497 tp!2392495))))

(declare-fun b!7999492 () Bool)

(declare-fun tp!2392494 () Bool)

(declare-fun tp!2392496 () Bool)

(assert (=> b!7999492 (= e!4712621 (and tp!2392494 tp!2392496))))

(assert (= (and b!7999136 ((_ is ElementMatch!21577) (regTwo!43667 (regTwo!43666 baseR!141)))) b!7999489))

(assert (= (and b!7999136 ((_ is Concat!30576) (regTwo!43667 (regTwo!43666 baseR!141)))) b!7999490))

(assert (= (and b!7999136 ((_ is Star!21577) (regTwo!43667 (regTwo!43666 baseR!141)))) b!7999491))

(assert (= (and b!7999136 ((_ is Union!21577) (regTwo!43667 (regTwo!43666 baseR!141)))) b!7999492))

(declare-fun b!7999493 () Bool)

(declare-fun e!4712622 () Bool)

(assert (=> b!7999493 (= e!4712622 tp_is_empty!53697)))

(assert (=> b!7999126 (= tp!2392201 e!4712622)))

(declare-fun b!7999495 () Bool)

(declare-fun tp!2392503 () Bool)

(assert (=> b!7999495 (= e!4712622 tp!2392503)))

(declare-fun b!7999494 () Bool)

(declare-fun tp!2392502 () Bool)

(declare-fun tp!2392500 () Bool)

(assert (=> b!7999494 (= e!4712622 (and tp!2392502 tp!2392500))))

(declare-fun b!7999496 () Bool)

(declare-fun tp!2392499 () Bool)

(declare-fun tp!2392501 () Bool)

(assert (=> b!7999496 (= e!4712622 (and tp!2392499 tp!2392501))))

(assert (= (and b!7999126 ((_ is ElementMatch!21577) (regOne!43666 (regOne!43666 baseR!141)))) b!7999493))

(assert (= (and b!7999126 ((_ is Concat!30576) (regOne!43666 (regOne!43666 baseR!141)))) b!7999494))

(assert (= (and b!7999126 ((_ is Star!21577) (regOne!43666 (regOne!43666 baseR!141)))) b!7999495))

(assert (= (and b!7999126 ((_ is Union!21577) (regOne!43666 (regOne!43666 baseR!141)))) b!7999496))

(declare-fun b!7999497 () Bool)

(declare-fun e!4712623 () Bool)

(assert (=> b!7999497 (= e!4712623 tp_is_empty!53697)))

(assert (=> b!7999126 (= tp!2392199 e!4712623)))

(declare-fun b!7999499 () Bool)

(declare-fun tp!2392508 () Bool)

(assert (=> b!7999499 (= e!4712623 tp!2392508)))

(declare-fun b!7999498 () Bool)

(declare-fun tp!2392507 () Bool)

(declare-fun tp!2392505 () Bool)

(assert (=> b!7999498 (= e!4712623 (and tp!2392507 tp!2392505))))

(declare-fun b!7999500 () Bool)

(declare-fun tp!2392504 () Bool)

(declare-fun tp!2392506 () Bool)

(assert (=> b!7999500 (= e!4712623 (and tp!2392504 tp!2392506))))

(assert (= (and b!7999126 ((_ is ElementMatch!21577) (regTwo!43666 (regOne!43666 baseR!141)))) b!7999497))

(assert (= (and b!7999126 ((_ is Concat!30576) (regTwo!43666 (regOne!43666 baseR!141)))) b!7999498))

(assert (= (and b!7999126 ((_ is Star!21577) (regTwo!43666 (regOne!43666 baseR!141)))) b!7999499))

(assert (= (and b!7999126 ((_ is Union!21577) (regTwo!43666 (regOne!43666 baseR!141)))) b!7999500))

(declare-fun b!7999501 () Bool)

(declare-fun e!4712624 () Bool)

(assert (=> b!7999501 (= e!4712624 tp_is_empty!53697)))

(assert (=> b!7999135 (= tp!2392212 e!4712624)))

(declare-fun b!7999503 () Bool)

(declare-fun tp!2392513 () Bool)

(assert (=> b!7999503 (= e!4712624 tp!2392513)))

(declare-fun b!7999502 () Bool)

(declare-fun tp!2392512 () Bool)

(declare-fun tp!2392510 () Bool)

(assert (=> b!7999502 (= e!4712624 (and tp!2392512 tp!2392510))))

(declare-fun b!7999504 () Bool)

(declare-fun tp!2392509 () Bool)

(declare-fun tp!2392511 () Bool)

(assert (=> b!7999504 (= e!4712624 (and tp!2392509 tp!2392511))))

(assert (= (and b!7999135 ((_ is ElementMatch!21577) (reg!21906 (regTwo!43666 baseR!141)))) b!7999501))

(assert (= (and b!7999135 ((_ is Concat!30576) (reg!21906 (regTwo!43666 baseR!141)))) b!7999502))

(assert (= (and b!7999135 ((_ is Star!21577) (reg!21906 (regTwo!43666 baseR!141)))) b!7999503))

(assert (= (and b!7999135 ((_ is Union!21577) (reg!21906 (regTwo!43666 baseR!141)))) b!7999504))

(declare-fun b!7999505 () Bool)

(declare-fun e!4712625 () Bool)

(declare-fun tp!2392514 () Bool)

(assert (=> b!7999505 (= e!4712625 (and tp_is_empty!53697 tp!2392514))))

(assert (=> b!7999149 (= tp!2392225 e!4712625)))

(assert (= (and b!7999149 ((_ is Cons!74682) (t!390549 (t!390549 input!8036)))) b!7999505))

(declare-fun b!7999506 () Bool)

(declare-fun e!4712626 () Bool)

(assert (=> b!7999506 (= e!4712626 tp_is_empty!53697)))

(assert (=> b!7999157 (= tp!2392231 e!4712626)))

(declare-fun b!7999508 () Bool)

(declare-fun tp!2392519 () Bool)

(assert (=> b!7999508 (= e!4712626 tp!2392519)))

(declare-fun b!7999507 () Bool)

(declare-fun tp!2392518 () Bool)

(declare-fun tp!2392516 () Bool)

(assert (=> b!7999507 (= e!4712626 (and tp!2392518 tp!2392516))))

(declare-fun b!7999509 () Bool)

(declare-fun tp!2392515 () Bool)

(declare-fun tp!2392517 () Bool)

(assert (=> b!7999509 (= e!4712626 (and tp!2392515 tp!2392517))))

(assert (= (and b!7999157 ((_ is ElementMatch!21577) (regOne!43667 (regOne!43667 r!24786)))) b!7999506))

(assert (= (and b!7999157 ((_ is Concat!30576) (regOne!43667 (regOne!43667 r!24786)))) b!7999507))

(assert (= (and b!7999157 ((_ is Star!21577) (regOne!43667 (regOne!43667 r!24786)))) b!7999508))

(assert (= (and b!7999157 ((_ is Union!21577) (regOne!43667 (regOne!43667 r!24786)))) b!7999509))

(declare-fun b!7999510 () Bool)

(declare-fun e!4712627 () Bool)

(assert (=> b!7999510 (= e!4712627 tp_is_empty!53697)))

(assert (=> b!7999157 (= tp!2392233 e!4712627)))

(declare-fun b!7999512 () Bool)

(declare-fun tp!2392524 () Bool)

(assert (=> b!7999512 (= e!4712627 tp!2392524)))

(declare-fun b!7999511 () Bool)

(declare-fun tp!2392523 () Bool)

(declare-fun tp!2392521 () Bool)

(assert (=> b!7999511 (= e!4712627 (and tp!2392523 tp!2392521))))

(declare-fun b!7999513 () Bool)

(declare-fun tp!2392520 () Bool)

(declare-fun tp!2392522 () Bool)

(assert (=> b!7999513 (= e!4712627 (and tp!2392520 tp!2392522))))

(assert (= (and b!7999157 ((_ is ElementMatch!21577) (regTwo!43667 (regOne!43667 r!24786)))) b!7999510))

(assert (= (and b!7999157 ((_ is Concat!30576) (regTwo!43667 (regOne!43667 r!24786)))) b!7999511))

(assert (= (and b!7999157 ((_ is Star!21577) (regTwo!43667 (regOne!43667 r!24786)))) b!7999512))

(assert (= (and b!7999157 ((_ is Union!21577) (regTwo!43667 (regOne!43667 r!24786)))) b!7999513))

(declare-fun b!7999514 () Bool)

(declare-fun e!4712628 () Bool)

(assert (=> b!7999514 (= e!4712628 tp_is_empty!53697)))

(assert (=> b!7999200 (= tp!2392287 e!4712628)))

(declare-fun b!7999516 () Bool)

(declare-fun tp!2392529 () Bool)

(assert (=> b!7999516 (= e!4712628 tp!2392529)))

(declare-fun b!7999515 () Bool)

(declare-fun tp!2392528 () Bool)

(declare-fun tp!2392526 () Bool)

(assert (=> b!7999515 (= e!4712628 (and tp!2392528 tp!2392526))))

(declare-fun b!7999517 () Bool)

(declare-fun tp!2392525 () Bool)

(declare-fun tp!2392527 () Bool)

(assert (=> b!7999517 (= e!4712628 (and tp!2392525 tp!2392527))))

(assert (= (and b!7999200 ((_ is ElementMatch!21577) (reg!21906 (regTwo!43667 baseR!141)))) b!7999514))

(assert (= (and b!7999200 ((_ is Concat!30576) (reg!21906 (regTwo!43667 baseR!141)))) b!7999515))

(assert (= (and b!7999200 ((_ is Star!21577) (reg!21906 (regTwo!43667 baseR!141)))) b!7999516))

(assert (= (and b!7999200 ((_ is Union!21577) (reg!21906 (regTwo!43667 baseR!141)))) b!7999517))

(declare-fun b!7999518 () Bool)

(declare-fun e!4712629 () Bool)

(assert (=> b!7999518 (= e!4712629 tp_is_empty!53697)))

(assert (=> b!7999199 (= tp!2392286 e!4712629)))

(declare-fun b!7999520 () Bool)

(declare-fun tp!2392534 () Bool)

(assert (=> b!7999520 (= e!4712629 tp!2392534)))

(declare-fun b!7999519 () Bool)

(declare-fun tp!2392533 () Bool)

(declare-fun tp!2392531 () Bool)

(assert (=> b!7999519 (= e!4712629 (and tp!2392533 tp!2392531))))

(declare-fun b!7999521 () Bool)

(declare-fun tp!2392530 () Bool)

(declare-fun tp!2392532 () Bool)

(assert (=> b!7999521 (= e!4712629 (and tp!2392530 tp!2392532))))

(assert (= (and b!7999199 ((_ is ElementMatch!21577) (regOne!43666 (regTwo!43667 baseR!141)))) b!7999518))

(assert (= (and b!7999199 ((_ is Concat!30576) (regOne!43666 (regTwo!43667 baseR!141)))) b!7999519))

(assert (= (and b!7999199 ((_ is Star!21577) (regOne!43666 (regTwo!43667 baseR!141)))) b!7999520))

(assert (= (and b!7999199 ((_ is Union!21577) (regOne!43666 (regTwo!43667 baseR!141)))) b!7999521))

(declare-fun b!7999522 () Bool)

(declare-fun e!4712630 () Bool)

(assert (=> b!7999522 (= e!4712630 tp_is_empty!53697)))

(assert (=> b!7999199 (= tp!2392284 e!4712630)))

(declare-fun b!7999524 () Bool)

(declare-fun tp!2392539 () Bool)

(assert (=> b!7999524 (= e!4712630 tp!2392539)))

(declare-fun b!7999523 () Bool)

(declare-fun tp!2392538 () Bool)

(declare-fun tp!2392536 () Bool)

(assert (=> b!7999523 (= e!4712630 (and tp!2392538 tp!2392536))))

(declare-fun b!7999525 () Bool)

(declare-fun tp!2392535 () Bool)

(declare-fun tp!2392537 () Bool)

(assert (=> b!7999525 (= e!4712630 (and tp!2392535 tp!2392537))))

(assert (= (and b!7999199 ((_ is ElementMatch!21577) (regTwo!43666 (regTwo!43667 baseR!141)))) b!7999522))

(assert (= (and b!7999199 ((_ is Concat!30576) (regTwo!43666 (regTwo!43667 baseR!141)))) b!7999523))

(assert (= (and b!7999199 ((_ is Star!21577) (regTwo!43666 (regTwo!43667 baseR!141)))) b!7999524))

(assert (= (and b!7999199 ((_ is Union!21577) (regTwo!43666 (regTwo!43667 baseR!141)))) b!7999525))

(check-sat (not b!7999354) (not b!7999467) (not b!7999331) (not bm!743106) (not d!2386519) (not b!7999448) (not b!7999511) (not bm!743096) (not b!7999359) (not b!7999490) (not b!7999327) (not b!7999507) (not b!7999505) (not b!7999438) (not b!7999444) (not b!7999328) (not b!7999392) (not b!7999418) (not b!7999509) (not b!7999313) (not b!7999427) (not b!7999500) (not b!7999435) (not b!7999431) (not d!2386545) (not b!7999468) (not d!2386523) (not b!7999416) (not b!7999492) (not b!7999383) (not bm!743076) (not b!7999346) (not b!7999423) (not d!2386547) (not b!7999322) (not b!7999446) (not b!7999386) (not bm!743103) (not b!7999356) (not bm!743104) (not b!7999376) (not b!7999440) (not bm!743099) (not b!7999411) (not bm!743087) (not b!7999344) (not b!7999460) (not b!7999484) (not b!7999521) (not b!7999391) (not b!7999364) (not b!7999355) (not b!7999326) (not bm!743091) (not b!7999343) (not b!7999212) (not bm!743086) (not b!7999408) (not b!7999388) (not b!7999367) (not b!7999398) (not b!7999280) (not b!7999278) (not b!7999332) (not b!7999378) (not b!7999350) (not bm!743082) (not b!7999407) (not b!7999384) (not b!7999479) (not b!7999348) (not b!7999362) (not b!7999462) (not b!7999442) (not b!7999470) (not b!7999400) (not b!7999399) (not b!7999363) (not b!7999396) (not b!7999502) (not bm!743101) (not b!7999456) (not b!7999451) (not b!7999430) (not bm!743097) (not b!7999466) (not b!7999347) (not b!7999498) (not b!7999483) (not b!7999387) (not b!7999508) (not b!7999368) (not b!7999486) (not b!7999496) (not bm!743094) (not b!7999351) (not bm!743093) (not b!7999281) (not b!7999374) (not b!7999324) (not b!7999434) (not b!7999406) (not b!7999482) (not b!7999358) (not bm!743078) (not b!7999513) (not b!7999478) (not bm!743107) (not b!7999474) (not b!7999455) (not b!7999523) (not b!7999410) (not b!7999471) (not d!2386527) (not b!7999488) (not b!7999424) (not bm!743084) (not b!7999454) (not d!2386531) (not b!7999415) (not b!7999304) (not b!7999520) (not b!7999245) (not b!7999382) (not b!7999524) (not b!7999443) (not b!7999371) (not b!7999519) (not b!7999480) (not bm!743089) (not b!7999336) (not b!7999285) (not b!7999499) (not b!7999459) (not b!7999403) (not b!7999402) (not b!7999339) (not b!7999340) (not b!7999422) (not b!7999458) (not b!7999515) (not b!7999330) (not b!7999260) (not b!7999295) (not b!7999426) (not b!7999447) (not b!7999334) (not d!2386543) (not b!7999320) (not b!7999491) (not b!7999439) (not b!7999338) (not b!7999436) (not b!7999372) (not b!7999241) (not b!7999269) (not b!7999494) (not b!7999370) (not b!7999463) (not bm!743080) (not b!7999516) (not b!7999379) (not b!7999420) (not b!7999404) (not b!7999487) (not b!7999512) (not b!7999432) (not b!7999394) (not b!7999276) (not b!7999452) (not b!7999419) (not b!7999360) (not b!7999352) (not b!7999525) (not b!7999503) (not b!7999428) (not b!7999504) (not b!7999294) (not b!7999366) (not b!7999390) (not bm!743109) (not b!7999226) (not b!7999412) (not b!7999464) (not b!7999472) (not b!7999395) (not b!7999335) (not d!2386529) (not d!2386521) (not b!7999342) (not b!7999476) tp_is_empty!53697 (not b!7999414) (not b!7999450) (not b!7999517) (not b!7999216) (not b!7999210) (not b!7999475) (not b!7999495) (not b!7999380) (not b!7999375))
(check-sat)
