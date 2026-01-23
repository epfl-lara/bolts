; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!740292 () Bool)

(assert start!740292)

(declare-fun b!7776102 () Bool)

(declare-fun e!4606831 () Bool)

(declare-datatypes ((C!41910 0))(
  ( (C!41911 (val!31395 Int)) )
))
(declare-datatypes ((List!73631 0))(
  ( (Nil!73507) (Cons!73507 (h!79955 C!41910) (t!388366 List!73631)) )
))
(declare-fun s!14292 () List!73631)

(declare-fun ++!17908 (List!73631 List!73631) List!73631)

(assert (=> b!7776102 (= e!4606831 (= (++!17908 Nil!73507 (t!388366 s!14292)) (t!388366 s!14292)))))

(declare-fun b!7776103 () Bool)

(declare-fun e!4606834 () Bool)

(declare-fun tp_is_empty!51939 () Bool)

(declare-fun tp!2285124 () Bool)

(assert (=> b!7776103 (= e!4606834 (and tp_is_empty!51939 tp!2285124))))

(declare-fun b!7776104 () Bool)

(declare-fun res!3099597 () Bool)

(declare-fun e!4606832 () Bool)

(assert (=> b!7776104 (=> (not res!3099597) (not e!4606832))))

(assert (=> b!7776104 (= res!3099597 (is-Cons!73507 s!14292))))

(declare-fun b!7776105 () Bool)

(declare-fun e!4606829 () Bool)

(declare-fun e!4606830 () Bool)

(assert (=> b!7776105 (= e!4606829 e!4606830)))

(declare-fun res!3099594 () Bool)

(assert (=> b!7776105 (=> (not res!3099594) (not e!4606830))))

(declare-datatypes ((Regex!20792 0))(
  ( (ElementMatch!20792 (c!1433025 C!41910)) (Concat!29637 (regOne!42096 Regex!20792) (regTwo!42096 Regex!20792)) (EmptyExpr!20792) (Star!20792 (reg!21121 Regex!20792)) (EmptyLang!20792) (Union!20792 (regOne!42097 Regex!20792) (regTwo!42097 Regex!20792)) )
))
(declare-fun lt!2672102 () Regex!20792)

(declare-fun lt!2672106 () Regex!20792)

(declare-fun lt!2672103 () Regex!20792)

(assert (=> b!7776105 (= res!3099594 (= lt!2672102 (Union!20792 lt!2672103 lt!2672106)))))

(declare-fun r2!6217 () Regex!20792)

(declare-fun derivativeStep!6135 (Regex!20792 C!41910) Regex!20792)

(assert (=> b!7776105 (= lt!2672106 (derivativeStep!6135 r2!6217 (h!79955 s!14292)))))

(declare-fun lt!2672107 () Regex!20792)

(assert (=> b!7776105 (= lt!2672103 (Concat!29637 lt!2672107 r2!6217))))

(declare-fun r1!6279 () Regex!20792)

(assert (=> b!7776105 (= lt!2672107 (derivativeStep!6135 r1!6279 (h!79955 s!14292)))))

(declare-fun b!7776106 () Bool)

(declare-fun res!3099600 () Bool)

(declare-fun e!4606827 () Bool)

(assert (=> b!7776106 (=> (not res!3099600) (not e!4606827))))

(declare-fun validRegex!11206 (Regex!20792) Bool)

(assert (=> b!7776106 (= res!3099600 (validRegex!11206 r2!6217))))

(declare-fun b!7776107 () Bool)

(declare-fun e!4606835 () Bool)

(declare-fun matchR!10252 (Regex!20792 List!73631) Bool)

(assert (=> b!7776107 (= e!4606835 (matchR!10252 lt!2672106 (t!388366 s!14292)))))

(declare-fun b!7776108 () Bool)

(declare-fun e!4606828 () Bool)

(assert (=> b!7776108 (= e!4606828 tp_is_empty!51939)))

(declare-fun b!7776109 () Bool)

(declare-fun tp!2285122 () Bool)

(declare-fun tp!2285121 () Bool)

(assert (=> b!7776109 (= e!4606828 (and tp!2285122 tp!2285121))))

(declare-fun b!7776110 () Bool)

(declare-fun tp!2285123 () Bool)

(assert (=> b!7776110 (= e!4606828 tp!2285123)))

(declare-fun b!7776111 () Bool)

(declare-fun e!4606826 () Bool)

(assert (=> b!7776111 (= e!4606826 e!4606831)))

(declare-fun res!3099599 () Bool)

(assert (=> b!7776111 (=> res!3099599 e!4606831)))

(assert (=> b!7776111 (= res!3099599 (not (validRegex!11206 lt!2672107)))))

(declare-datatypes ((tuple2!69878 0))(
  ( (tuple2!69879 (_1!38242 List!73631) (_2!38242 List!73631)) )
))
(declare-datatypes ((Option!17733 0))(
  ( (None!17732) (Some!17732 (v!54867 tuple2!69878)) )
))
(declare-fun isDefined!14345 (Option!17733) Bool)

(declare-fun findConcatSeparation!3763 (Regex!20792 Regex!20792 List!73631 List!73631 List!73631) Option!17733)

(assert (=> b!7776111 (isDefined!14345 (findConcatSeparation!3763 lt!2672107 r2!6217 Nil!73507 (t!388366 s!14292) (t!388366 s!14292)))))

(declare-datatypes ((Unit!168486 0))(
  ( (Unit!168487) )
))
(declare-fun lt!2672104 () Unit!168486)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!353 (Regex!20792 Regex!20792 List!73631) Unit!168486)

(assert (=> b!7776111 (= lt!2672104 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!353 lt!2672107 r2!6217 (t!388366 s!14292)))))

(declare-fun b!7776112 () Bool)

(declare-fun e!4606833 () Bool)

(declare-fun tp!2285125 () Bool)

(declare-fun tp!2285117 () Bool)

(assert (=> b!7776112 (= e!4606833 (and tp!2285125 tp!2285117))))

(declare-fun b!7776113 () Bool)

(assert (=> b!7776113 (= e!4606832 e!4606829)))

(declare-fun res!3099601 () Bool)

(assert (=> b!7776113 (=> (not res!3099601) (not e!4606829))))

(assert (=> b!7776113 (= res!3099601 (matchR!10252 lt!2672102 (t!388366 s!14292)))))

(declare-fun lt!2672105 () Regex!20792)

(assert (=> b!7776113 (= lt!2672102 (derivativeStep!6135 lt!2672105 (h!79955 s!14292)))))

(declare-fun res!3099593 () Bool)

(assert (=> start!740292 (=> (not res!3099593) (not e!4606827))))

(assert (=> start!740292 (= res!3099593 (validRegex!11206 r1!6279))))

(assert (=> start!740292 e!4606827))

(assert (=> start!740292 e!4606828))

(assert (=> start!740292 e!4606833))

(assert (=> start!740292 e!4606834))

(declare-fun b!7776114 () Bool)

(assert (=> b!7776114 (= e!4606830 (not e!4606826))))

(declare-fun res!3099602 () Bool)

(assert (=> b!7776114 (=> res!3099602 e!4606826)))

(declare-fun lt!2672108 () Bool)

(assert (=> b!7776114 (= res!3099602 (not lt!2672108))))

(assert (=> b!7776114 e!4606835))

(declare-fun res!3099598 () Bool)

(assert (=> b!7776114 (=> res!3099598 e!4606835)))

(assert (=> b!7776114 (= res!3099598 lt!2672108)))

(assert (=> b!7776114 (= lt!2672108 (matchR!10252 lt!2672103 (t!388366 s!14292)))))

(declare-fun lt!2672101 () Unit!168486)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!367 (Regex!20792 Regex!20792 List!73631) Unit!168486)

(assert (=> b!7776114 (= lt!2672101 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!367 lt!2672103 lt!2672106 (t!388366 s!14292)))))

(declare-fun b!7776115 () Bool)

(declare-fun tp!2285116 () Bool)

(declare-fun tp!2285120 () Bool)

(assert (=> b!7776115 (= e!4606833 (and tp!2285116 tp!2285120))))

(declare-fun b!7776116 () Bool)

(assert (=> b!7776116 (= e!4606827 e!4606832)))

(declare-fun res!3099596 () Bool)

(assert (=> b!7776116 (=> (not res!3099596) (not e!4606832))))

(assert (=> b!7776116 (= res!3099596 (matchR!10252 lt!2672105 s!14292))))

(assert (=> b!7776116 (= lt!2672105 (Concat!29637 r1!6279 r2!6217))))

(declare-fun b!7776117 () Bool)

(declare-fun tp!2285118 () Bool)

(assert (=> b!7776117 (= e!4606833 tp!2285118)))

(declare-fun b!7776118 () Bool)

(declare-fun res!3099595 () Bool)

(assert (=> b!7776118 (=> (not res!3099595) (not e!4606829))))

(declare-fun nullable!9180 (Regex!20792) Bool)

(assert (=> b!7776118 (= res!3099595 (nullable!9180 r1!6279))))

(declare-fun b!7776119 () Bool)

(declare-fun tp!2285119 () Bool)

(declare-fun tp!2285126 () Bool)

(assert (=> b!7776119 (= e!4606828 (and tp!2285119 tp!2285126))))

(declare-fun b!7776120 () Bool)

(assert (=> b!7776120 (= e!4606833 tp_is_empty!51939)))

(assert (= (and start!740292 res!3099593) b!7776106))

(assert (= (and b!7776106 res!3099600) b!7776116))

(assert (= (and b!7776116 res!3099596) b!7776104))

(assert (= (and b!7776104 res!3099597) b!7776113))

(assert (= (and b!7776113 res!3099601) b!7776118))

(assert (= (and b!7776118 res!3099595) b!7776105))

(assert (= (and b!7776105 res!3099594) b!7776114))

(assert (= (and b!7776114 (not res!3099598)) b!7776107))

(assert (= (and b!7776114 (not res!3099602)) b!7776111))

(assert (= (and b!7776111 (not res!3099599)) b!7776102))

(assert (= (and start!740292 (is-ElementMatch!20792 r1!6279)) b!7776108))

(assert (= (and start!740292 (is-Concat!29637 r1!6279)) b!7776119))

(assert (= (and start!740292 (is-Star!20792 r1!6279)) b!7776110))

(assert (= (and start!740292 (is-Union!20792 r1!6279)) b!7776109))

(assert (= (and start!740292 (is-ElementMatch!20792 r2!6217)) b!7776120))

(assert (= (and start!740292 (is-Concat!29637 r2!6217)) b!7776115))

(assert (= (and start!740292 (is-Star!20792 r2!6217)) b!7776117))

(assert (= (and start!740292 (is-Union!20792 r2!6217)) b!7776112))

(assert (= (and start!740292 (is-Cons!73507 s!14292)) b!7776103))

(declare-fun m!8226918 () Bool)

(assert (=> b!7776118 m!8226918))

(declare-fun m!8226920 () Bool)

(assert (=> b!7776107 m!8226920))

(declare-fun m!8226922 () Bool)

(assert (=> b!7776114 m!8226922))

(declare-fun m!8226924 () Bool)

(assert (=> b!7776114 m!8226924))

(declare-fun m!8226926 () Bool)

(assert (=> b!7776105 m!8226926))

(declare-fun m!8226928 () Bool)

(assert (=> b!7776105 m!8226928))

(declare-fun m!8226930 () Bool)

(assert (=> b!7776113 m!8226930))

(declare-fun m!8226932 () Bool)

(assert (=> b!7776113 m!8226932))

(declare-fun m!8226934 () Bool)

(assert (=> b!7776116 m!8226934))

(declare-fun m!8226936 () Bool)

(assert (=> b!7776111 m!8226936))

(declare-fun m!8226938 () Bool)

(assert (=> b!7776111 m!8226938))

(assert (=> b!7776111 m!8226938))

(declare-fun m!8226940 () Bool)

(assert (=> b!7776111 m!8226940))

(declare-fun m!8226942 () Bool)

(assert (=> b!7776111 m!8226942))

(declare-fun m!8226944 () Bool)

(assert (=> b!7776102 m!8226944))

(declare-fun m!8226946 () Bool)

(assert (=> start!740292 m!8226946))

(declare-fun m!8226948 () Bool)

(assert (=> b!7776106 m!8226948))

(push 1)

(assert (not b!7776110))

(assert tp_is_empty!51939)

(assert (not b!7776109))

(assert (not b!7776119))

(assert (not b!7776103))

(assert (not b!7776116))

(assert (not b!7776118))

(assert (not b!7776117))

(assert (not b!7776114))

(assert (not b!7776111))

(assert (not b!7776113))

(assert (not start!740292))

(assert (not b!7776107))

(assert (not b!7776112))

(assert (not b!7776102))

(assert (not b!7776105))

(assert (not b!7776106))

(assert (not b!7776115))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7776196 () Bool)

(declare-fun e!4606884 () Bool)

(declare-fun e!4606880 () Bool)

(assert (=> b!7776196 (= e!4606884 e!4606880)))

(declare-fun res!3099646 () Bool)

(assert (=> b!7776196 (=> (not res!3099646) (not e!4606880))))

(declare-fun call!720742 () Bool)

(assert (=> b!7776196 (= res!3099646 call!720742)))

(declare-fun call!720743 () Bool)

(declare-fun c!1433031 () Bool)

(declare-fun bm!720736 () Bool)

(declare-fun c!1433032 () Bool)

(assert (=> bm!720736 (= call!720743 (validRegex!11206 (ite c!1433031 (reg!21121 r1!6279) (ite c!1433032 (regTwo!42097 r1!6279) (regTwo!42096 r1!6279)))))))

(declare-fun b!7776197 () Bool)

(declare-fun res!3099644 () Bool)

(declare-fun e!4606882 () Bool)

(assert (=> b!7776197 (=> (not res!3099644) (not e!4606882))))

(assert (=> b!7776197 (= res!3099644 call!720742)))

(declare-fun e!4606885 () Bool)

(assert (=> b!7776197 (= e!4606885 e!4606882)))

(declare-fun b!7776198 () Bool)

(declare-fun e!4606883 () Bool)

(assert (=> b!7776198 (= e!4606883 e!4606885)))

(assert (=> b!7776198 (= c!1433032 (is-Union!20792 r1!6279))))

(declare-fun bm!720737 () Bool)

(assert (=> bm!720737 (= call!720742 (validRegex!11206 (ite c!1433032 (regOne!42097 r1!6279) (regOne!42096 r1!6279))))))

(declare-fun bm!720738 () Bool)

(declare-fun call!720741 () Bool)

(assert (=> bm!720738 (= call!720741 call!720743)))

(declare-fun b!7776200 () Bool)

(declare-fun res!3099643 () Bool)

(assert (=> b!7776200 (=> res!3099643 e!4606884)))

(assert (=> b!7776200 (= res!3099643 (not (is-Concat!29637 r1!6279)))))

(assert (=> b!7776200 (= e!4606885 e!4606884)))

(declare-fun b!7776201 () Bool)

(assert (=> b!7776201 (= e!4606882 call!720741)))

(declare-fun b!7776202 () Bool)

(assert (=> b!7776202 (= e!4606880 call!720741)))

(declare-fun b!7776203 () Bool)

(declare-fun e!4606886 () Bool)

(assert (=> b!7776203 (= e!4606886 call!720743)))

(declare-fun b!7776204 () Bool)

(declare-fun e!4606881 () Bool)

(assert (=> b!7776204 (= e!4606881 e!4606883)))

(assert (=> b!7776204 (= c!1433031 (is-Star!20792 r1!6279))))

(declare-fun d!2344828 () Bool)

(declare-fun res!3099647 () Bool)

(assert (=> d!2344828 (=> res!3099647 e!4606881)))

(assert (=> d!2344828 (= res!3099647 (is-ElementMatch!20792 r1!6279))))

(assert (=> d!2344828 (= (validRegex!11206 r1!6279) e!4606881)))

(declare-fun b!7776199 () Bool)

(assert (=> b!7776199 (= e!4606883 e!4606886)))

(declare-fun res!3099645 () Bool)

(assert (=> b!7776199 (= res!3099645 (not (nullable!9180 (reg!21121 r1!6279))))))

(assert (=> b!7776199 (=> (not res!3099645) (not e!4606886))))

(assert (= (and d!2344828 (not res!3099647)) b!7776204))

(assert (= (and b!7776204 c!1433031) b!7776199))

(assert (= (and b!7776204 (not c!1433031)) b!7776198))

(assert (= (and b!7776199 res!3099645) b!7776203))

(assert (= (and b!7776198 c!1433032) b!7776197))

(assert (= (and b!7776198 (not c!1433032)) b!7776200))

(assert (= (and b!7776197 res!3099644) b!7776201))

(assert (= (and b!7776200 (not res!3099643)) b!7776196))

(assert (= (and b!7776196 res!3099646) b!7776202))

(assert (= (or b!7776197 b!7776196) bm!720737))

(assert (= (or b!7776201 b!7776202) bm!720738))

(assert (= (or b!7776203 bm!720738) bm!720736))

(declare-fun m!8226982 () Bool)

(assert (=> bm!720736 m!8226982))

(declare-fun m!8226984 () Bool)

(assert (=> bm!720737 m!8226984))

(declare-fun m!8226986 () Bool)

(assert (=> b!7776199 m!8226986))

(assert (=> start!740292 d!2344828))

(declare-fun b!7776253 () Bool)

(declare-fun res!3099684 () Bool)

(declare-fun e!4606919 () Bool)

(assert (=> b!7776253 (=> res!3099684 e!4606919)))

(declare-fun e!4606926 () Bool)

(assert (=> b!7776253 (= res!3099684 e!4606926)))

(declare-fun res!3099678 () Bool)

(assert (=> b!7776253 (=> (not res!3099678) (not e!4606926))))

(declare-fun lt!2672135 () Bool)

(assert (=> b!7776253 (= res!3099678 lt!2672135)))

(declare-fun bm!720747 () Bool)

(declare-fun call!720755 () Bool)

(declare-fun isEmpty!42168 (List!73631) Bool)

(assert (=> bm!720747 (= call!720755 (isEmpty!42168 (t!388366 s!14292)))))

(declare-fun b!7776255 () Bool)

(declare-fun e!4606918 () Bool)

(assert (=> b!7776255 (= e!4606919 e!4606918)))

(declare-fun res!3099685 () Bool)

(assert (=> b!7776255 (=> (not res!3099685) (not e!4606918))))

(assert (=> b!7776255 (= res!3099685 (not lt!2672135))))

(declare-fun b!7776257 () Bool)

(declare-fun e!4606920 () Bool)

(assert (=> b!7776257 (= e!4606918 e!4606920)))

(declare-fun res!3099686 () Bool)

(assert (=> b!7776257 (=> res!3099686 e!4606920)))

(assert (=> b!7776257 (= res!3099686 call!720755)))

(declare-fun b!7776261 () Bool)

(declare-fun res!3099675 () Bool)

(assert (=> b!7776261 (=> res!3099675 e!4606919)))

(assert (=> b!7776261 (= res!3099675 (not (is-ElementMatch!20792 lt!2672103)))))

(declare-fun e!4606921 () Bool)

(assert (=> b!7776261 (= e!4606921 e!4606919)))

(declare-fun b!7776262 () Bool)

(assert (=> b!7776262 (= e!4606921 (not lt!2672135))))

(declare-fun b!7776264 () Bool)

(declare-fun res!3099679 () Bool)

(assert (=> b!7776264 (=> res!3099679 e!4606920)))

(declare-fun tail!15442 (List!73631) List!73631)

(assert (=> b!7776264 (= res!3099679 (not (isEmpty!42168 (tail!15442 (t!388366 s!14292)))))))

(declare-fun b!7776265 () Bool)

(declare-fun head!15901 (List!73631) C!41910)

(assert (=> b!7776265 (= e!4606926 (= (head!15901 (t!388366 s!14292)) (c!1433025 lt!2672103)))))

(declare-fun b!7776267 () Bool)

(declare-fun e!4606923 () Bool)

(assert (=> b!7776267 (= e!4606923 (nullable!9180 lt!2672103))))

(declare-fun b!7776259 () Bool)

(declare-fun e!4606928 () Bool)

(assert (=> b!7776259 (= e!4606928 e!4606921)))

(declare-fun c!1433045 () Bool)

(assert (=> b!7776259 (= c!1433045 (is-EmptyLang!20792 lt!2672103))))

(declare-fun d!2344832 () Bool)

(assert (=> d!2344832 e!4606928))

(declare-fun c!1433044 () Bool)

(assert (=> d!2344832 (= c!1433044 (is-EmptyExpr!20792 lt!2672103))))

(assert (=> d!2344832 (= lt!2672135 e!4606923)))

(declare-fun c!1433047 () Bool)

(assert (=> d!2344832 (= c!1433047 (isEmpty!42168 (t!388366 s!14292)))))

(assert (=> d!2344832 (validRegex!11206 lt!2672103)))

(assert (=> d!2344832 (= (matchR!10252 lt!2672103 (t!388366 s!14292)) lt!2672135)))

(declare-fun b!7776269 () Bool)

(assert (=> b!7776269 (= e!4606928 (= lt!2672135 call!720755))))

(declare-fun b!7776270 () Bool)

(declare-fun res!3099680 () Bool)

(assert (=> b!7776270 (=> (not res!3099680) (not e!4606926))))

(assert (=> b!7776270 (= res!3099680 (isEmpty!42168 (tail!15442 (t!388366 s!14292))))))

(declare-fun b!7776271 () Bool)

(assert (=> b!7776271 (= e!4606920 (not (= (head!15901 (t!388366 s!14292)) (c!1433025 lt!2672103))))))

(declare-fun b!7776272 () Bool)

(assert (=> b!7776272 (= e!4606923 (matchR!10252 (derivativeStep!6135 lt!2672103 (head!15901 (t!388366 s!14292))) (tail!15442 (t!388366 s!14292))))))

(declare-fun b!7776273 () Bool)

(declare-fun res!3099683 () Bool)

(assert (=> b!7776273 (=> (not res!3099683) (not e!4606926))))

(assert (=> b!7776273 (= res!3099683 (not call!720755))))

(assert (= (and d!2344832 c!1433047) b!7776267))

(assert (= (and d!2344832 (not c!1433047)) b!7776272))

(assert (= (and d!2344832 c!1433044) b!7776269))

(assert (= (and d!2344832 (not c!1433044)) b!7776259))

(assert (= (and b!7776259 c!1433045) b!7776262))

(assert (= (and b!7776259 (not c!1433045)) b!7776261))

(assert (= (and b!7776261 (not res!3099675)) b!7776253))

(assert (= (and b!7776253 res!3099678) b!7776273))

(assert (= (and b!7776273 res!3099683) b!7776270))

(assert (= (and b!7776270 res!3099680) b!7776265))

(assert (= (and b!7776253 (not res!3099684)) b!7776255))

(assert (= (and b!7776255 res!3099685) b!7776257))

(assert (= (and b!7776257 (not res!3099686)) b!7776264))

(assert (= (and b!7776264 (not res!3099679)) b!7776271))

(assert (= (or b!7776269 b!7776257 b!7776273) bm!720747))

(declare-fun m!8226988 () Bool)

(assert (=> b!7776265 m!8226988))

(declare-fun m!8226990 () Bool)

(assert (=> b!7776270 m!8226990))

(assert (=> b!7776270 m!8226990))

(declare-fun m!8226992 () Bool)

(assert (=> b!7776270 m!8226992))

(assert (=> b!7776272 m!8226988))

(assert (=> b!7776272 m!8226988))

(declare-fun m!8226994 () Bool)

(assert (=> b!7776272 m!8226994))

(assert (=> b!7776272 m!8226990))

(assert (=> b!7776272 m!8226994))

(assert (=> b!7776272 m!8226990))

(declare-fun m!8226996 () Bool)

(assert (=> b!7776272 m!8226996))

(assert (=> b!7776271 m!8226988))

(declare-fun m!8226998 () Bool)

(assert (=> b!7776267 m!8226998))

(assert (=> b!7776264 m!8226990))

(assert (=> b!7776264 m!8226990))

(assert (=> b!7776264 m!8226992))

(declare-fun m!8227000 () Bool)

(assert (=> bm!720747 m!8227000))

(assert (=> d!2344832 m!8227000))

(declare-fun m!8227002 () Bool)

(assert (=> d!2344832 m!8227002))

(assert (=> b!7776114 d!2344832))

(declare-fun d!2344834 () Bool)

(declare-fun e!4606933 () Bool)

(assert (=> d!2344834 e!4606933))

(declare-fun res!3099692 () Bool)

(assert (=> d!2344834 (=> res!3099692 e!4606933)))

(assert (=> d!2344834 (= res!3099692 (matchR!10252 lt!2672103 (t!388366 s!14292)))))

(declare-fun lt!2672138 () Unit!168486)

(declare-fun choose!59484 (Regex!20792 Regex!20792 List!73631) Unit!168486)

(assert (=> d!2344834 (= lt!2672138 (choose!59484 lt!2672103 lt!2672106 (t!388366 s!14292)))))

(declare-fun e!4606934 () Bool)

(assert (=> d!2344834 e!4606934))

(declare-fun res!3099691 () Bool)

(assert (=> d!2344834 (=> (not res!3099691) (not e!4606934))))

(assert (=> d!2344834 (= res!3099691 (validRegex!11206 lt!2672103))))

(assert (=> d!2344834 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!367 lt!2672103 lt!2672106 (t!388366 s!14292)) lt!2672138)))

(declare-fun b!7776278 () Bool)

(assert (=> b!7776278 (= e!4606934 (validRegex!11206 lt!2672106))))

(declare-fun b!7776279 () Bool)

(assert (=> b!7776279 (= e!4606933 (matchR!10252 lt!2672106 (t!388366 s!14292)))))

(assert (= (and d!2344834 res!3099691) b!7776278))

(assert (= (and d!2344834 (not res!3099692)) b!7776279))

(assert (=> d!2344834 m!8226922))

(declare-fun m!8227010 () Bool)

(assert (=> d!2344834 m!8227010))

(assert (=> d!2344834 m!8227002))

(declare-fun m!8227012 () Bool)

(assert (=> b!7776278 m!8227012))

(assert (=> b!7776279 m!8226920))

(assert (=> b!7776114 d!2344834))

(declare-fun b!7776318 () Bool)

(declare-fun e!4606955 () Regex!20792)

(declare-fun call!720765 () Regex!20792)

(declare-fun call!720764 () Regex!20792)

(assert (=> b!7776318 (= e!4606955 (Union!20792 call!720765 call!720764))))

(declare-fun b!7776319 () Bool)

(declare-fun e!4606958 () Regex!20792)

(declare-fun call!720767 () Regex!20792)

(assert (=> b!7776319 (= e!4606958 (Concat!29637 call!720767 r2!6217))))

(declare-fun b!7776320 () Bool)

(declare-fun e!4606956 () Regex!20792)

(declare-fun call!720766 () Regex!20792)

(assert (=> b!7776320 (= e!4606956 (Union!20792 (Concat!29637 call!720766 (regTwo!42096 r2!6217)) EmptyLang!20792))))

(declare-fun b!7776321 () Bool)

(declare-fun c!1433067 () Bool)

(assert (=> b!7776321 (= c!1433067 (nullable!9180 (regOne!42096 r2!6217)))))

(assert (=> b!7776321 (= e!4606958 e!4606956)))

(declare-fun b!7776322 () Bool)

(declare-fun c!1433065 () Bool)

(assert (=> b!7776322 (= c!1433065 (is-Union!20792 r2!6217))))

(declare-fun e!4606957 () Regex!20792)

(assert (=> b!7776322 (= e!4606957 e!4606955)))

(declare-fun bm!720759 () Bool)

(assert (=> bm!720759 (= call!720767 call!720764)))

(declare-fun b!7776325 () Bool)

(assert (=> b!7776325 (= e!4606956 (Union!20792 (Concat!29637 call!720765 (regTwo!42096 r2!6217)) call!720766))))

(declare-fun bm!720760 () Bool)

(assert (=> bm!720760 (= call!720766 call!720767)))

(declare-fun b!7776326 () Bool)

(declare-fun e!4606959 () Regex!20792)

(assert (=> b!7776326 (= e!4606959 EmptyLang!20792)))

(declare-fun bm!720761 () Bool)

(assert (=> bm!720761 (= call!720765 (derivativeStep!6135 (ite c!1433065 (regOne!42097 r2!6217) (regOne!42096 r2!6217)) (h!79955 s!14292)))))

(declare-fun b!7776327 () Bool)

(assert (=> b!7776327 (= e!4606955 e!4606958)))

(declare-fun c!1433068 () Bool)

(assert (=> b!7776327 (= c!1433068 (is-Star!20792 r2!6217))))

(declare-fun d!2344838 () Bool)

(declare-fun lt!2672143 () Regex!20792)

(assert (=> d!2344838 (validRegex!11206 lt!2672143)))

(assert (=> d!2344838 (= lt!2672143 e!4606959)))

(declare-fun c!1433066 () Bool)

(assert (=> d!2344838 (= c!1433066 (or (is-EmptyExpr!20792 r2!6217) (is-EmptyLang!20792 r2!6217)))))

(assert (=> d!2344838 (validRegex!11206 r2!6217)))

(assert (=> d!2344838 (= (derivativeStep!6135 r2!6217 (h!79955 s!14292)) lt!2672143)))

(declare-fun b!7776328 () Bool)

(assert (=> b!7776328 (= e!4606957 (ite (= (h!79955 s!14292) (c!1433025 r2!6217)) EmptyExpr!20792 EmptyLang!20792))))

(declare-fun b!7776329 () Bool)

(assert (=> b!7776329 (= e!4606959 e!4606957)))

(declare-fun c!1433064 () Bool)

(assert (=> b!7776329 (= c!1433064 (is-ElementMatch!20792 r2!6217))))

(declare-fun bm!720762 () Bool)

(assert (=> bm!720762 (= call!720764 (derivativeStep!6135 (ite c!1433065 (regTwo!42097 r2!6217) (ite c!1433068 (reg!21121 r2!6217) (ite c!1433067 (regTwo!42096 r2!6217) (regOne!42096 r2!6217)))) (h!79955 s!14292)))))

(assert (= (and d!2344838 c!1433066) b!7776326))

(assert (= (and d!2344838 (not c!1433066)) b!7776329))

(assert (= (and b!7776329 c!1433064) b!7776328))

(assert (= (and b!7776329 (not c!1433064)) b!7776322))

(assert (= (and b!7776322 c!1433065) b!7776318))

(assert (= (and b!7776322 (not c!1433065)) b!7776327))

(assert (= (and b!7776327 c!1433068) b!7776319))

(assert (= (and b!7776327 (not c!1433068)) b!7776321))

(assert (= (and b!7776321 c!1433067) b!7776325))

(assert (= (and b!7776321 (not c!1433067)) b!7776320))

(assert (= (or b!7776325 b!7776320) bm!720760))

(assert (= (or b!7776319 bm!720760) bm!720759))

(assert (= (or b!7776318 bm!720759) bm!720762))

(assert (= (or b!7776318 b!7776325) bm!720761))

(declare-fun m!8227014 () Bool)

(assert (=> b!7776321 m!8227014))

(declare-fun m!8227016 () Bool)

(assert (=> bm!720761 m!8227016))

(declare-fun m!8227018 () Bool)

(assert (=> d!2344838 m!8227018))

(assert (=> d!2344838 m!8226948))

(declare-fun m!8227020 () Bool)

(assert (=> bm!720762 m!8227020))

(assert (=> b!7776105 d!2344838))

(declare-fun b!7776338 () Bool)

(declare-fun e!4606964 () Regex!20792)

(declare-fun call!720769 () Regex!20792)

(declare-fun call!720768 () Regex!20792)

(assert (=> b!7776338 (= e!4606964 (Union!20792 call!720769 call!720768))))

(declare-fun b!7776339 () Bool)

(declare-fun e!4606967 () Regex!20792)

(declare-fun call!720771 () Regex!20792)

(assert (=> b!7776339 (= e!4606967 (Concat!29637 call!720771 r1!6279))))

(declare-fun b!7776340 () Bool)

(declare-fun e!4606965 () Regex!20792)

(declare-fun call!720770 () Regex!20792)

(assert (=> b!7776340 (= e!4606965 (Union!20792 (Concat!29637 call!720770 (regTwo!42096 r1!6279)) EmptyLang!20792))))

(declare-fun b!7776341 () Bool)

(declare-fun c!1433072 () Bool)

(assert (=> b!7776341 (= c!1433072 (nullable!9180 (regOne!42096 r1!6279)))))

(assert (=> b!7776341 (= e!4606967 e!4606965)))

(declare-fun b!7776342 () Bool)

(declare-fun c!1433070 () Bool)

(assert (=> b!7776342 (= c!1433070 (is-Union!20792 r1!6279))))

(declare-fun e!4606966 () Regex!20792)

(assert (=> b!7776342 (= e!4606966 e!4606964)))

(declare-fun bm!720763 () Bool)

(assert (=> bm!720763 (= call!720771 call!720768)))

(declare-fun b!7776343 () Bool)

(assert (=> b!7776343 (= e!4606965 (Union!20792 (Concat!29637 call!720769 (regTwo!42096 r1!6279)) call!720770))))

(declare-fun bm!720764 () Bool)

(assert (=> bm!720764 (= call!720770 call!720771)))

(declare-fun b!7776344 () Bool)

(declare-fun e!4606968 () Regex!20792)

(assert (=> b!7776344 (= e!4606968 EmptyLang!20792)))

(declare-fun bm!720765 () Bool)

(assert (=> bm!720765 (= call!720769 (derivativeStep!6135 (ite c!1433070 (regOne!42097 r1!6279) (regOne!42096 r1!6279)) (h!79955 s!14292)))))

(declare-fun b!7776345 () Bool)

(assert (=> b!7776345 (= e!4606964 e!4606967)))

(declare-fun c!1433073 () Bool)

(assert (=> b!7776345 (= c!1433073 (is-Star!20792 r1!6279))))

(declare-fun d!2344840 () Bool)

(declare-fun lt!2672144 () Regex!20792)

(assert (=> d!2344840 (validRegex!11206 lt!2672144)))

(assert (=> d!2344840 (= lt!2672144 e!4606968)))

(declare-fun c!1433071 () Bool)

(assert (=> d!2344840 (= c!1433071 (or (is-EmptyExpr!20792 r1!6279) (is-EmptyLang!20792 r1!6279)))))

(assert (=> d!2344840 (validRegex!11206 r1!6279)))

(assert (=> d!2344840 (= (derivativeStep!6135 r1!6279 (h!79955 s!14292)) lt!2672144)))

(declare-fun b!7776346 () Bool)

(assert (=> b!7776346 (= e!4606966 (ite (= (h!79955 s!14292) (c!1433025 r1!6279)) EmptyExpr!20792 EmptyLang!20792))))

(declare-fun b!7776347 () Bool)

(assert (=> b!7776347 (= e!4606968 e!4606966)))

(declare-fun c!1433069 () Bool)

(assert (=> b!7776347 (= c!1433069 (is-ElementMatch!20792 r1!6279))))

(declare-fun bm!720766 () Bool)

(assert (=> bm!720766 (= call!720768 (derivativeStep!6135 (ite c!1433070 (regTwo!42097 r1!6279) (ite c!1433073 (reg!21121 r1!6279) (ite c!1433072 (regTwo!42096 r1!6279) (regOne!42096 r1!6279)))) (h!79955 s!14292)))))

(assert (= (and d!2344840 c!1433071) b!7776344))

(assert (= (and d!2344840 (not c!1433071)) b!7776347))

(assert (= (and b!7776347 c!1433069) b!7776346))

(assert (= (and b!7776347 (not c!1433069)) b!7776342))

(assert (= (and b!7776342 c!1433070) b!7776338))

(assert (= (and b!7776342 (not c!1433070)) b!7776345))

(assert (= (and b!7776345 c!1433073) b!7776339))

(assert (= (and b!7776345 (not c!1433073)) b!7776341))

(assert (= (and b!7776341 c!1433072) b!7776343))

(assert (= (and b!7776341 (not c!1433072)) b!7776340))

(assert (= (or b!7776343 b!7776340) bm!720764))

(assert (= (or b!7776339 bm!720764) bm!720763))

(assert (= (or b!7776338 bm!720763) bm!720766))

(assert (= (or b!7776338 b!7776343) bm!720765))

(declare-fun m!8227022 () Bool)

(assert (=> b!7776341 m!8227022))

(declare-fun m!8227024 () Bool)

(assert (=> bm!720765 m!8227024))

(declare-fun m!8227026 () Bool)

(assert (=> d!2344840 m!8227026))

(assert (=> d!2344840 m!8226946))

(declare-fun m!8227028 () Bool)

(assert (=> bm!720766 m!8227028))

(assert (=> b!7776105 d!2344840))

(declare-fun b!7776348 () Bool)

(declare-fun e!4606973 () Bool)

(declare-fun e!4606969 () Bool)

(assert (=> b!7776348 (= e!4606973 e!4606969)))

(declare-fun res!3099712 () Bool)

(assert (=> b!7776348 (=> (not res!3099712) (not e!4606969))))

(declare-fun call!720773 () Bool)

(assert (=> b!7776348 (= res!3099712 call!720773)))

(declare-fun bm!720767 () Bool)

(declare-fun call!720774 () Bool)

(declare-fun c!1433074 () Bool)

(declare-fun c!1433075 () Bool)

(assert (=> bm!720767 (= call!720774 (validRegex!11206 (ite c!1433074 (reg!21121 r2!6217) (ite c!1433075 (regTwo!42097 r2!6217) (regTwo!42096 r2!6217)))))))

(declare-fun b!7776349 () Bool)

(declare-fun res!3099710 () Bool)

(declare-fun e!4606971 () Bool)

(assert (=> b!7776349 (=> (not res!3099710) (not e!4606971))))

(assert (=> b!7776349 (= res!3099710 call!720773)))

(declare-fun e!4606974 () Bool)

(assert (=> b!7776349 (= e!4606974 e!4606971)))

(declare-fun b!7776350 () Bool)

(declare-fun e!4606972 () Bool)

(assert (=> b!7776350 (= e!4606972 e!4606974)))

(assert (=> b!7776350 (= c!1433075 (is-Union!20792 r2!6217))))

(declare-fun bm!720768 () Bool)

(assert (=> bm!720768 (= call!720773 (validRegex!11206 (ite c!1433075 (regOne!42097 r2!6217) (regOne!42096 r2!6217))))))

(declare-fun bm!720769 () Bool)

(declare-fun call!720772 () Bool)

(assert (=> bm!720769 (= call!720772 call!720774)))

(declare-fun b!7776352 () Bool)

(declare-fun res!3099709 () Bool)

(assert (=> b!7776352 (=> res!3099709 e!4606973)))

(assert (=> b!7776352 (= res!3099709 (not (is-Concat!29637 r2!6217)))))

(assert (=> b!7776352 (= e!4606974 e!4606973)))

(declare-fun b!7776353 () Bool)

(assert (=> b!7776353 (= e!4606971 call!720772)))

(declare-fun b!7776354 () Bool)

(assert (=> b!7776354 (= e!4606969 call!720772)))

(declare-fun b!7776355 () Bool)

(declare-fun e!4606975 () Bool)

(assert (=> b!7776355 (= e!4606975 call!720774)))

(declare-fun b!7776356 () Bool)

(declare-fun e!4606970 () Bool)

(assert (=> b!7776356 (= e!4606970 e!4606972)))

(assert (=> b!7776356 (= c!1433074 (is-Star!20792 r2!6217))))

(declare-fun d!2344842 () Bool)

(declare-fun res!3099713 () Bool)

(assert (=> d!2344842 (=> res!3099713 e!4606970)))

(assert (=> d!2344842 (= res!3099713 (is-ElementMatch!20792 r2!6217))))

(assert (=> d!2344842 (= (validRegex!11206 r2!6217) e!4606970)))

(declare-fun b!7776351 () Bool)

(assert (=> b!7776351 (= e!4606972 e!4606975)))

(declare-fun res!3099711 () Bool)

(assert (=> b!7776351 (= res!3099711 (not (nullable!9180 (reg!21121 r2!6217))))))

(assert (=> b!7776351 (=> (not res!3099711) (not e!4606975))))

(assert (= (and d!2344842 (not res!3099713)) b!7776356))

(assert (= (and b!7776356 c!1433074) b!7776351))

(assert (= (and b!7776356 (not c!1433074)) b!7776350))

(assert (= (and b!7776351 res!3099711) b!7776355))

(assert (= (and b!7776350 c!1433075) b!7776349))

(assert (= (and b!7776350 (not c!1433075)) b!7776352))

(assert (= (and b!7776349 res!3099710) b!7776353))

(assert (= (and b!7776352 (not res!3099709)) b!7776348))

(assert (= (and b!7776348 res!3099712) b!7776354))

(assert (= (or b!7776349 b!7776348) bm!720768))

(assert (= (or b!7776353 b!7776354) bm!720769))

(assert (= (or b!7776355 bm!720769) bm!720767))

(declare-fun m!8227030 () Bool)

(assert (=> bm!720767 m!8227030))

(declare-fun m!8227032 () Bool)

(assert (=> bm!720768 m!8227032))

(declare-fun m!8227034 () Bool)

(assert (=> b!7776351 m!8227034))

(assert (=> b!7776106 d!2344842))

(declare-fun b!7776357 () Bool)

(declare-fun e!4606980 () Bool)

(declare-fun e!4606976 () Bool)

(assert (=> b!7776357 (= e!4606980 e!4606976)))

(declare-fun res!3099717 () Bool)

(assert (=> b!7776357 (=> (not res!3099717) (not e!4606976))))

(declare-fun call!720778 () Bool)

(assert (=> b!7776357 (= res!3099717 call!720778)))

(declare-fun c!1433076 () Bool)

(declare-fun call!720779 () Bool)

(declare-fun c!1433077 () Bool)

(declare-fun bm!720770 () Bool)

(assert (=> bm!720770 (= call!720779 (validRegex!11206 (ite c!1433076 (reg!21121 lt!2672107) (ite c!1433077 (regTwo!42097 lt!2672107) (regTwo!42096 lt!2672107)))))))

(declare-fun b!7776358 () Bool)

(declare-fun res!3099715 () Bool)

(declare-fun e!4606978 () Bool)

(assert (=> b!7776358 (=> (not res!3099715) (not e!4606978))))

(assert (=> b!7776358 (= res!3099715 call!720778)))

(declare-fun e!4606981 () Bool)

(assert (=> b!7776358 (= e!4606981 e!4606978)))

(declare-fun b!7776359 () Bool)

(declare-fun e!4606979 () Bool)

(assert (=> b!7776359 (= e!4606979 e!4606981)))

(assert (=> b!7776359 (= c!1433077 (is-Union!20792 lt!2672107))))

(declare-fun bm!720771 () Bool)

(assert (=> bm!720771 (= call!720778 (validRegex!11206 (ite c!1433077 (regOne!42097 lt!2672107) (regOne!42096 lt!2672107))))))

(declare-fun bm!720772 () Bool)

(declare-fun call!720777 () Bool)

(assert (=> bm!720772 (= call!720777 call!720779)))

(declare-fun b!7776361 () Bool)

(declare-fun res!3099714 () Bool)

(assert (=> b!7776361 (=> res!3099714 e!4606980)))

(assert (=> b!7776361 (= res!3099714 (not (is-Concat!29637 lt!2672107)))))

(assert (=> b!7776361 (= e!4606981 e!4606980)))

(declare-fun b!7776362 () Bool)

(assert (=> b!7776362 (= e!4606978 call!720777)))

(declare-fun b!7776363 () Bool)

(assert (=> b!7776363 (= e!4606976 call!720777)))

(declare-fun b!7776364 () Bool)

(declare-fun e!4606982 () Bool)

(assert (=> b!7776364 (= e!4606982 call!720779)))

(declare-fun b!7776365 () Bool)

(declare-fun e!4606977 () Bool)

(assert (=> b!7776365 (= e!4606977 e!4606979)))

(assert (=> b!7776365 (= c!1433076 (is-Star!20792 lt!2672107))))

(declare-fun d!2344844 () Bool)

(declare-fun res!3099718 () Bool)

(assert (=> d!2344844 (=> res!3099718 e!4606977)))

(assert (=> d!2344844 (= res!3099718 (is-ElementMatch!20792 lt!2672107))))

(assert (=> d!2344844 (= (validRegex!11206 lt!2672107) e!4606977)))

(declare-fun b!7776360 () Bool)

(assert (=> b!7776360 (= e!4606979 e!4606982)))

(declare-fun res!3099716 () Bool)

(assert (=> b!7776360 (= res!3099716 (not (nullable!9180 (reg!21121 lt!2672107))))))

(assert (=> b!7776360 (=> (not res!3099716) (not e!4606982))))

(assert (= (and d!2344844 (not res!3099718)) b!7776365))

(assert (= (and b!7776365 c!1433076) b!7776360))

(assert (= (and b!7776365 (not c!1433076)) b!7776359))

(assert (= (and b!7776360 res!3099716) b!7776364))

(assert (= (and b!7776359 c!1433077) b!7776358))

(assert (= (and b!7776359 (not c!1433077)) b!7776361))

(assert (= (and b!7776358 res!3099715) b!7776362))

(assert (= (and b!7776361 (not res!3099714)) b!7776357))

(assert (= (and b!7776357 res!3099717) b!7776363))

(assert (= (or b!7776358 b!7776357) bm!720771))

(assert (= (or b!7776362 b!7776363) bm!720772))

(assert (= (or b!7776364 bm!720772) bm!720770))

(declare-fun m!8227036 () Bool)

(assert (=> bm!720770 m!8227036))

(declare-fun m!8227038 () Bool)

(assert (=> bm!720771 m!8227038))

(declare-fun m!8227040 () Bool)

(assert (=> b!7776360 m!8227040))

(assert (=> b!7776111 d!2344844))

(declare-fun d!2344846 () Bool)

(declare-fun isEmpty!42169 (Option!17733) Bool)

(assert (=> d!2344846 (= (isDefined!14345 (findConcatSeparation!3763 lt!2672107 r2!6217 Nil!73507 (t!388366 s!14292) (t!388366 s!14292))) (not (isEmpty!42169 (findConcatSeparation!3763 lt!2672107 r2!6217 Nil!73507 (t!388366 s!14292) (t!388366 s!14292)))))))

(declare-fun bs!1966170 () Bool)

(assert (= bs!1966170 d!2344846))

(assert (=> bs!1966170 m!8226938))

(declare-fun m!8227042 () Bool)

(assert (=> bs!1966170 m!8227042))

(assert (=> b!7776111 d!2344846))

(declare-fun b!7776398 () Bool)

(declare-fun e!4607004 () Option!17733)

(assert (=> b!7776398 (= e!4607004 (Some!17732 (tuple2!69879 Nil!73507 (t!388366 s!14292))))))

(declare-fun b!7776399 () Bool)

(declare-fun e!4607000 () Bool)

(assert (=> b!7776399 (= e!4607000 (matchR!10252 r2!6217 (t!388366 s!14292)))))

(declare-fun b!7776400 () Bool)

(declare-fun lt!2672153 () Unit!168486)

(declare-fun lt!2672152 () Unit!168486)

(assert (=> b!7776400 (= lt!2672153 lt!2672152)))

(assert (=> b!7776400 (= (++!17908 (++!17908 Nil!73507 (Cons!73507 (h!79955 (t!388366 s!14292)) Nil!73507)) (t!388366 (t!388366 s!14292))) (t!388366 s!14292))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3391 (List!73631 C!41910 List!73631 List!73631) Unit!168486)

(assert (=> b!7776400 (= lt!2672152 (lemmaMoveElementToOtherListKeepsConcatEq!3391 Nil!73507 (h!79955 (t!388366 s!14292)) (t!388366 (t!388366 s!14292)) (t!388366 s!14292)))))

(declare-fun e!4607003 () Option!17733)

(assert (=> b!7776400 (= e!4607003 (findConcatSeparation!3763 lt!2672107 r2!6217 (++!17908 Nil!73507 (Cons!73507 (h!79955 (t!388366 s!14292)) Nil!73507)) (t!388366 (t!388366 s!14292)) (t!388366 s!14292)))))

(declare-fun b!7776401 () Bool)

(assert (=> b!7776401 (= e!4607004 e!4607003)))

(declare-fun c!1433086 () Bool)

(assert (=> b!7776401 (= c!1433086 (is-Nil!73507 (t!388366 s!14292)))))

(declare-fun b!7776402 () Bool)

(declare-fun res!3099740 () Bool)

(declare-fun e!4607002 () Bool)

(assert (=> b!7776402 (=> (not res!3099740) (not e!4607002))))

(declare-fun lt!2672154 () Option!17733)

(declare-fun get!26260 (Option!17733) tuple2!69878)

(assert (=> b!7776402 (= res!3099740 (matchR!10252 lt!2672107 (_1!38242 (get!26260 lt!2672154))))))

(declare-fun b!7776403 () Bool)

(declare-fun res!3099738 () Bool)

(assert (=> b!7776403 (=> (not res!3099738) (not e!4607002))))

(assert (=> b!7776403 (= res!3099738 (matchR!10252 r2!6217 (_2!38242 (get!26260 lt!2672154))))))

(declare-fun d!2344848 () Bool)

(declare-fun e!4607001 () Bool)

(assert (=> d!2344848 e!4607001))

(declare-fun res!3099737 () Bool)

(assert (=> d!2344848 (=> res!3099737 e!4607001)))

(assert (=> d!2344848 (= res!3099737 e!4607002)))

(declare-fun res!3099741 () Bool)

(assert (=> d!2344848 (=> (not res!3099741) (not e!4607002))))

(assert (=> d!2344848 (= res!3099741 (isDefined!14345 lt!2672154))))

(assert (=> d!2344848 (= lt!2672154 e!4607004)))

(declare-fun c!1433085 () Bool)

(assert (=> d!2344848 (= c!1433085 e!4607000)))

(declare-fun res!3099739 () Bool)

(assert (=> d!2344848 (=> (not res!3099739) (not e!4607000))))

(assert (=> d!2344848 (= res!3099739 (matchR!10252 lt!2672107 Nil!73507))))

(assert (=> d!2344848 (validRegex!11206 lt!2672107)))

(assert (=> d!2344848 (= (findConcatSeparation!3763 lt!2672107 r2!6217 Nil!73507 (t!388366 s!14292) (t!388366 s!14292)) lt!2672154)))

(declare-fun b!7776404 () Bool)

(assert (=> b!7776404 (= e!4607003 None!17732)))

(declare-fun b!7776405 () Bool)

(assert (=> b!7776405 (= e!4607001 (not (isDefined!14345 lt!2672154)))))

(declare-fun b!7776406 () Bool)

(assert (=> b!7776406 (= e!4607002 (= (++!17908 (_1!38242 (get!26260 lt!2672154)) (_2!38242 (get!26260 lt!2672154))) (t!388366 s!14292)))))

(assert (= (and d!2344848 res!3099739) b!7776399))

(assert (= (and d!2344848 c!1433085) b!7776398))

(assert (= (and d!2344848 (not c!1433085)) b!7776401))

(assert (= (and b!7776401 c!1433086) b!7776404))

(assert (= (and b!7776401 (not c!1433086)) b!7776400))

(assert (= (and d!2344848 res!3099741) b!7776402))

(assert (= (and b!7776402 res!3099740) b!7776403))

(assert (= (and b!7776403 res!3099738) b!7776406))

(assert (= (and d!2344848 (not res!3099737)) b!7776405))

(declare-fun m!8227062 () Bool)

(assert (=> b!7776406 m!8227062))

(declare-fun m!8227064 () Bool)

(assert (=> b!7776406 m!8227064))

(declare-fun m!8227066 () Bool)

(assert (=> b!7776405 m!8227066))

(assert (=> b!7776403 m!8227062))

(declare-fun m!8227068 () Bool)

(assert (=> b!7776403 m!8227068))

(assert (=> d!2344848 m!8227066))

(declare-fun m!8227070 () Bool)

(assert (=> d!2344848 m!8227070))

(assert (=> d!2344848 m!8226936))

(assert (=> b!7776402 m!8227062))

(declare-fun m!8227072 () Bool)

(assert (=> b!7776402 m!8227072))

(declare-fun m!8227074 () Bool)

(assert (=> b!7776399 m!8227074))

(declare-fun m!8227076 () Bool)

(assert (=> b!7776400 m!8227076))

(assert (=> b!7776400 m!8227076))

(declare-fun m!8227078 () Bool)

(assert (=> b!7776400 m!8227078))

(declare-fun m!8227080 () Bool)

(assert (=> b!7776400 m!8227080))

(assert (=> b!7776400 m!8227076))

(declare-fun m!8227082 () Bool)

(assert (=> b!7776400 m!8227082))

(assert (=> b!7776111 d!2344848))

(declare-fun d!2344854 () Bool)

(assert (=> d!2344854 (isDefined!14345 (findConcatSeparation!3763 lt!2672107 r2!6217 Nil!73507 (t!388366 s!14292) (t!388366 s!14292)))))

(declare-fun lt!2672159 () Unit!168486)

(declare-fun choose!59485 (Regex!20792 Regex!20792 List!73631) Unit!168486)

(assert (=> d!2344854 (= lt!2672159 (choose!59485 lt!2672107 r2!6217 (t!388366 s!14292)))))

(assert (=> d!2344854 (validRegex!11206 lt!2672107)))

(assert (=> d!2344854 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!353 lt!2672107 r2!6217 (t!388366 s!14292)) lt!2672159)))

(declare-fun bs!1966172 () Bool)

(assert (= bs!1966172 d!2344854))

(assert (=> bs!1966172 m!8226938))

(assert (=> bs!1966172 m!8226938))

(assert (=> bs!1966172 m!8226940))

(declare-fun m!8227084 () Bool)

(assert (=> bs!1966172 m!8227084))

(assert (=> bs!1966172 m!8226936))

(assert (=> b!7776111 d!2344854))

(declare-fun b!7776415 () Bool)

(declare-fun res!3099751 () Bool)

(declare-fun e!4607010 () Bool)

(assert (=> b!7776415 (=> res!3099751 e!4607010)))

(declare-fun e!4607014 () Bool)

(assert (=> b!7776415 (= res!3099751 e!4607014)))

(declare-fun res!3099747 () Bool)

(assert (=> b!7776415 (=> (not res!3099747) (not e!4607014))))

(declare-fun lt!2672160 () Bool)

(assert (=> b!7776415 (= res!3099747 lt!2672160)))

(declare-fun bm!720776 () Bool)

(declare-fun call!720781 () Bool)

(assert (=> bm!720776 (= call!720781 (isEmpty!42168 s!14292))))

(declare-fun b!7776416 () Bool)

(declare-fun e!4607009 () Bool)

(assert (=> b!7776416 (= e!4607010 e!4607009)))

(declare-fun res!3099752 () Bool)

(assert (=> b!7776416 (=> (not res!3099752) (not e!4607009))))

(assert (=> b!7776416 (= res!3099752 (not lt!2672160))))

(declare-fun b!7776417 () Bool)

(declare-fun e!4607011 () Bool)

(assert (=> b!7776417 (= e!4607009 e!4607011)))

(declare-fun res!3099753 () Bool)

(assert (=> b!7776417 (=> res!3099753 e!4607011)))

(assert (=> b!7776417 (= res!3099753 call!720781)))

(declare-fun b!7776419 () Bool)

(declare-fun res!3099746 () Bool)

(assert (=> b!7776419 (=> res!3099746 e!4607010)))

(assert (=> b!7776419 (= res!3099746 (not (is-ElementMatch!20792 lt!2672105)))))

(declare-fun e!4607012 () Bool)

(assert (=> b!7776419 (= e!4607012 e!4607010)))

(declare-fun b!7776420 () Bool)

(assert (=> b!7776420 (= e!4607012 (not lt!2672160))))

(declare-fun b!7776421 () Bool)

(declare-fun res!3099748 () Bool)

(assert (=> b!7776421 (=> res!3099748 e!4607011)))

(assert (=> b!7776421 (= res!3099748 (not (isEmpty!42168 (tail!15442 s!14292))))))

(declare-fun b!7776422 () Bool)

(assert (=> b!7776422 (= e!4607014 (= (head!15901 s!14292) (c!1433025 lt!2672105)))))

(declare-fun b!7776423 () Bool)

(declare-fun e!4607013 () Bool)

(assert (=> b!7776423 (= e!4607013 (nullable!9180 lt!2672105))))

(declare-fun b!7776418 () Bool)

(declare-fun e!4607015 () Bool)

(assert (=> b!7776418 (= e!4607015 e!4607012)))

(declare-fun c!1433090 () Bool)

(assert (=> b!7776418 (= c!1433090 (is-EmptyLang!20792 lt!2672105))))

(declare-fun d!2344856 () Bool)

(assert (=> d!2344856 e!4607015))

(declare-fun c!1433089 () Bool)

(assert (=> d!2344856 (= c!1433089 (is-EmptyExpr!20792 lt!2672105))))

(assert (=> d!2344856 (= lt!2672160 e!4607013)))

(declare-fun c!1433091 () Bool)

(assert (=> d!2344856 (= c!1433091 (isEmpty!42168 s!14292))))

(assert (=> d!2344856 (validRegex!11206 lt!2672105)))

(assert (=> d!2344856 (= (matchR!10252 lt!2672105 s!14292) lt!2672160)))

(declare-fun b!7776424 () Bool)

(assert (=> b!7776424 (= e!4607015 (= lt!2672160 call!720781))))

(declare-fun b!7776425 () Bool)

(declare-fun res!3099749 () Bool)

(assert (=> b!7776425 (=> (not res!3099749) (not e!4607014))))

(assert (=> b!7776425 (= res!3099749 (isEmpty!42168 (tail!15442 s!14292)))))

(declare-fun b!7776426 () Bool)

(assert (=> b!7776426 (= e!4607011 (not (= (head!15901 s!14292) (c!1433025 lt!2672105))))))

(declare-fun b!7776427 () Bool)

(assert (=> b!7776427 (= e!4607013 (matchR!10252 (derivativeStep!6135 lt!2672105 (head!15901 s!14292)) (tail!15442 s!14292)))))

(declare-fun b!7776428 () Bool)

(declare-fun res!3099750 () Bool)

(assert (=> b!7776428 (=> (not res!3099750) (not e!4607014))))

(assert (=> b!7776428 (= res!3099750 (not call!720781))))

(assert (= (and d!2344856 c!1433091) b!7776423))

(assert (= (and d!2344856 (not c!1433091)) b!7776427))

(assert (= (and d!2344856 c!1433089) b!7776424))

(assert (= (and d!2344856 (not c!1433089)) b!7776418))

(assert (= (and b!7776418 c!1433090) b!7776420))

(assert (= (and b!7776418 (not c!1433090)) b!7776419))

(assert (= (and b!7776419 (not res!3099746)) b!7776415))

(assert (= (and b!7776415 res!3099747) b!7776428))

(assert (= (and b!7776428 res!3099750) b!7776425))

(assert (= (and b!7776425 res!3099749) b!7776422))

(assert (= (and b!7776415 (not res!3099751)) b!7776416))

(assert (= (and b!7776416 res!3099752) b!7776417))

(assert (= (and b!7776417 (not res!3099753)) b!7776421))

(assert (= (and b!7776421 (not res!3099748)) b!7776426))

(assert (= (or b!7776424 b!7776417 b!7776428) bm!720776))

(declare-fun m!8227086 () Bool)

(assert (=> b!7776422 m!8227086))

(declare-fun m!8227088 () Bool)

(assert (=> b!7776425 m!8227088))

(assert (=> b!7776425 m!8227088))

(declare-fun m!8227090 () Bool)

(assert (=> b!7776425 m!8227090))

(assert (=> b!7776427 m!8227086))

(assert (=> b!7776427 m!8227086))

(declare-fun m!8227092 () Bool)

(assert (=> b!7776427 m!8227092))

(assert (=> b!7776427 m!8227088))

(assert (=> b!7776427 m!8227092))

(assert (=> b!7776427 m!8227088))

(declare-fun m!8227094 () Bool)

(assert (=> b!7776427 m!8227094))

(assert (=> b!7776426 m!8227086))

(declare-fun m!8227096 () Bool)

(assert (=> b!7776423 m!8227096))

(assert (=> b!7776421 m!8227088))

(assert (=> b!7776421 m!8227088))

(assert (=> b!7776421 m!8227090))

(declare-fun m!8227098 () Bool)

(assert (=> bm!720776 m!8227098))

(assert (=> d!2344856 m!8227098))

(declare-fun m!8227100 () Bool)

(assert (=> d!2344856 m!8227100))

(assert (=> b!7776116 d!2344856))

(declare-fun b!7776429 () Bool)

(declare-fun res!3099759 () Bool)

(declare-fun e!4607017 () Bool)

(assert (=> b!7776429 (=> res!3099759 e!4607017)))

(declare-fun e!4607021 () Bool)

(assert (=> b!7776429 (= res!3099759 e!4607021)))

(declare-fun res!3099755 () Bool)

(assert (=> b!7776429 (=> (not res!3099755) (not e!4607021))))

(declare-fun lt!2672161 () Bool)

(assert (=> b!7776429 (= res!3099755 lt!2672161)))

(declare-fun bm!720777 () Bool)

(declare-fun call!720782 () Bool)

(assert (=> bm!720777 (= call!720782 (isEmpty!42168 (t!388366 s!14292)))))

(declare-fun b!7776430 () Bool)

(declare-fun e!4607016 () Bool)

(assert (=> b!7776430 (= e!4607017 e!4607016)))

(declare-fun res!3099760 () Bool)

(assert (=> b!7776430 (=> (not res!3099760) (not e!4607016))))

(assert (=> b!7776430 (= res!3099760 (not lt!2672161))))

(declare-fun b!7776431 () Bool)

(declare-fun e!4607018 () Bool)

(assert (=> b!7776431 (= e!4607016 e!4607018)))

(declare-fun res!3099761 () Bool)

(assert (=> b!7776431 (=> res!3099761 e!4607018)))

(assert (=> b!7776431 (= res!3099761 call!720782)))

(declare-fun b!7776433 () Bool)

(declare-fun res!3099754 () Bool)

(assert (=> b!7776433 (=> res!3099754 e!4607017)))

(assert (=> b!7776433 (= res!3099754 (not (is-ElementMatch!20792 lt!2672102)))))

(declare-fun e!4607019 () Bool)

(assert (=> b!7776433 (= e!4607019 e!4607017)))

(declare-fun b!7776434 () Bool)

(assert (=> b!7776434 (= e!4607019 (not lt!2672161))))

(declare-fun b!7776435 () Bool)

(declare-fun res!3099756 () Bool)

(assert (=> b!7776435 (=> res!3099756 e!4607018)))

(assert (=> b!7776435 (= res!3099756 (not (isEmpty!42168 (tail!15442 (t!388366 s!14292)))))))

(declare-fun b!7776436 () Bool)

(assert (=> b!7776436 (= e!4607021 (= (head!15901 (t!388366 s!14292)) (c!1433025 lt!2672102)))))

(declare-fun b!7776437 () Bool)

(declare-fun e!4607020 () Bool)

(assert (=> b!7776437 (= e!4607020 (nullable!9180 lt!2672102))))

(declare-fun b!7776432 () Bool)

(declare-fun e!4607022 () Bool)

(assert (=> b!7776432 (= e!4607022 e!4607019)))

(declare-fun c!1433093 () Bool)

(assert (=> b!7776432 (= c!1433093 (is-EmptyLang!20792 lt!2672102))))

(declare-fun d!2344858 () Bool)

(assert (=> d!2344858 e!4607022))

(declare-fun c!1433092 () Bool)

(assert (=> d!2344858 (= c!1433092 (is-EmptyExpr!20792 lt!2672102))))

(assert (=> d!2344858 (= lt!2672161 e!4607020)))

(declare-fun c!1433094 () Bool)

(assert (=> d!2344858 (= c!1433094 (isEmpty!42168 (t!388366 s!14292)))))

(assert (=> d!2344858 (validRegex!11206 lt!2672102)))

(assert (=> d!2344858 (= (matchR!10252 lt!2672102 (t!388366 s!14292)) lt!2672161)))

(declare-fun b!7776438 () Bool)

(assert (=> b!7776438 (= e!4607022 (= lt!2672161 call!720782))))

(declare-fun b!7776439 () Bool)

(declare-fun res!3099757 () Bool)

(assert (=> b!7776439 (=> (not res!3099757) (not e!4607021))))

(assert (=> b!7776439 (= res!3099757 (isEmpty!42168 (tail!15442 (t!388366 s!14292))))))

(declare-fun b!7776440 () Bool)

(assert (=> b!7776440 (= e!4607018 (not (= (head!15901 (t!388366 s!14292)) (c!1433025 lt!2672102))))))

(declare-fun b!7776441 () Bool)

(assert (=> b!7776441 (= e!4607020 (matchR!10252 (derivativeStep!6135 lt!2672102 (head!15901 (t!388366 s!14292))) (tail!15442 (t!388366 s!14292))))))

(declare-fun b!7776442 () Bool)

(declare-fun res!3099758 () Bool)

(assert (=> b!7776442 (=> (not res!3099758) (not e!4607021))))

(assert (=> b!7776442 (= res!3099758 (not call!720782))))

(assert (= (and d!2344858 c!1433094) b!7776437))

(assert (= (and d!2344858 (not c!1433094)) b!7776441))

(assert (= (and d!2344858 c!1433092) b!7776438))

(assert (= (and d!2344858 (not c!1433092)) b!7776432))

(assert (= (and b!7776432 c!1433093) b!7776434))

(assert (= (and b!7776432 (not c!1433093)) b!7776433))

(assert (= (and b!7776433 (not res!3099754)) b!7776429))

(assert (= (and b!7776429 res!3099755) b!7776442))

(assert (= (and b!7776442 res!3099758) b!7776439))

(assert (= (and b!7776439 res!3099757) b!7776436))

(assert (= (and b!7776429 (not res!3099759)) b!7776430))

(assert (= (and b!7776430 res!3099760) b!7776431))

(assert (= (and b!7776431 (not res!3099761)) b!7776435))

(assert (= (and b!7776435 (not res!3099756)) b!7776440))

(assert (= (or b!7776438 b!7776431 b!7776442) bm!720777))

(assert (=> b!7776436 m!8226988))

(assert (=> b!7776439 m!8226990))

(assert (=> b!7776439 m!8226990))

(assert (=> b!7776439 m!8226992))

(assert (=> b!7776441 m!8226988))

(assert (=> b!7776441 m!8226988))

(declare-fun m!8227102 () Bool)

(assert (=> b!7776441 m!8227102))

(assert (=> b!7776441 m!8226990))

(assert (=> b!7776441 m!8227102))

(assert (=> b!7776441 m!8226990))

(declare-fun m!8227104 () Bool)

(assert (=> b!7776441 m!8227104))

(assert (=> b!7776440 m!8226988))

(declare-fun m!8227106 () Bool)

(assert (=> b!7776437 m!8227106))

(assert (=> b!7776435 m!8226990))

(assert (=> b!7776435 m!8226990))

(assert (=> b!7776435 m!8226992))

(assert (=> bm!720777 m!8227000))

(assert (=> d!2344858 m!8227000))

(declare-fun m!8227108 () Bool)

(assert (=> d!2344858 m!8227108))

(assert (=> b!7776113 d!2344858))

(declare-fun b!7776447 () Bool)

(declare-fun e!4607025 () Regex!20792)

(declare-fun call!720784 () Regex!20792)

(declare-fun call!720783 () Regex!20792)

(assert (=> b!7776447 (= e!4607025 (Union!20792 call!720784 call!720783))))

(declare-fun b!7776448 () Bool)

(declare-fun e!4607028 () Regex!20792)

(declare-fun call!720786 () Regex!20792)

(assert (=> b!7776448 (= e!4607028 (Concat!29637 call!720786 lt!2672105))))

(declare-fun b!7776449 () Bool)

(declare-fun e!4607026 () Regex!20792)

(declare-fun call!720785 () Regex!20792)

(assert (=> b!7776449 (= e!4607026 (Union!20792 (Concat!29637 call!720785 (regTwo!42096 lt!2672105)) EmptyLang!20792))))

(declare-fun b!7776450 () Bool)

(declare-fun c!1433099 () Bool)

(assert (=> b!7776450 (= c!1433099 (nullable!9180 (regOne!42096 lt!2672105)))))

(assert (=> b!7776450 (= e!4607028 e!4607026)))

(declare-fun b!7776451 () Bool)

(declare-fun c!1433097 () Bool)

(assert (=> b!7776451 (= c!1433097 (is-Union!20792 lt!2672105))))

(declare-fun e!4607027 () Regex!20792)

(assert (=> b!7776451 (= e!4607027 e!4607025)))

(declare-fun bm!720778 () Bool)

(assert (=> bm!720778 (= call!720786 call!720783)))

(declare-fun b!7776452 () Bool)

(assert (=> b!7776452 (= e!4607026 (Union!20792 (Concat!29637 call!720784 (regTwo!42096 lt!2672105)) call!720785))))

(declare-fun bm!720779 () Bool)

(assert (=> bm!720779 (= call!720785 call!720786)))

(declare-fun b!7776453 () Bool)

(declare-fun e!4607029 () Regex!20792)

(assert (=> b!7776453 (= e!4607029 EmptyLang!20792)))

(declare-fun bm!720780 () Bool)

(assert (=> bm!720780 (= call!720784 (derivativeStep!6135 (ite c!1433097 (regOne!42097 lt!2672105) (regOne!42096 lt!2672105)) (h!79955 s!14292)))))

(declare-fun b!7776454 () Bool)

(assert (=> b!7776454 (= e!4607025 e!4607028)))

(declare-fun c!1433100 () Bool)

(assert (=> b!7776454 (= c!1433100 (is-Star!20792 lt!2672105))))

(declare-fun d!2344860 () Bool)

(declare-fun lt!2672163 () Regex!20792)

(assert (=> d!2344860 (validRegex!11206 lt!2672163)))

(assert (=> d!2344860 (= lt!2672163 e!4607029)))

(declare-fun c!1433098 () Bool)

(assert (=> d!2344860 (= c!1433098 (or (is-EmptyExpr!20792 lt!2672105) (is-EmptyLang!20792 lt!2672105)))))

(assert (=> d!2344860 (validRegex!11206 lt!2672105)))

(assert (=> d!2344860 (= (derivativeStep!6135 lt!2672105 (h!79955 s!14292)) lt!2672163)))

(declare-fun b!7776455 () Bool)

(assert (=> b!7776455 (= e!4607027 (ite (= (h!79955 s!14292) (c!1433025 lt!2672105)) EmptyExpr!20792 EmptyLang!20792))))

(declare-fun b!7776456 () Bool)

(assert (=> b!7776456 (= e!4607029 e!4607027)))

(declare-fun c!1433096 () Bool)

(assert (=> b!7776456 (= c!1433096 (is-ElementMatch!20792 lt!2672105))))

(declare-fun bm!720781 () Bool)

(assert (=> bm!720781 (= call!720783 (derivativeStep!6135 (ite c!1433097 (regTwo!42097 lt!2672105) (ite c!1433100 (reg!21121 lt!2672105) (ite c!1433099 (regTwo!42096 lt!2672105) (regOne!42096 lt!2672105)))) (h!79955 s!14292)))))

(assert (= (and d!2344860 c!1433098) b!7776453))

(assert (= (and d!2344860 (not c!1433098)) b!7776456))

(assert (= (and b!7776456 c!1433096) b!7776455))

(assert (= (and b!7776456 (not c!1433096)) b!7776451))

(assert (= (and b!7776451 c!1433097) b!7776447))

(assert (= (and b!7776451 (not c!1433097)) b!7776454))

(assert (= (and b!7776454 c!1433100) b!7776448))

(assert (= (and b!7776454 (not c!1433100)) b!7776450))

(assert (= (and b!7776450 c!1433099) b!7776452))

(assert (= (and b!7776450 (not c!1433099)) b!7776449))

(assert (= (or b!7776452 b!7776449) bm!720779))

(assert (= (or b!7776448 bm!720779) bm!720778))

(assert (= (or b!7776447 bm!720778) bm!720781))

(assert (= (or b!7776447 b!7776452) bm!720780))

(declare-fun m!8227110 () Bool)

(assert (=> b!7776450 m!8227110))

(declare-fun m!8227112 () Bool)

(assert (=> bm!720780 m!8227112))

(declare-fun m!8227114 () Bool)

(assert (=> d!2344860 m!8227114))

(assert (=> d!2344860 m!8227100))

(declare-fun m!8227118 () Bool)

(assert (=> bm!720781 m!8227118))

(assert (=> b!7776113 d!2344860))

(declare-fun d!2344862 () Bool)

(declare-fun e!4607049 () Bool)

(assert (=> d!2344862 e!4607049))

(declare-fun res!3099781 () Bool)

(assert (=> d!2344862 (=> (not res!3099781) (not e!4607049))))

(declare-fun lt!2672167 () List!73631)

(declare-fun content!15598 (List!73631) (Set C!41910))

(assert (=> d!2344862 (= res!3099781 (= (content!15598 lt!2672167) (set.union (content!15598 Nil!73507) (content!15598 (t!388366 s!14292)))))))

(declare-fun e!4607048 () List!73631)

(assert (=> d!2344862 (= lt!2672167 e!4607048)))

(declare-fun c!1433108 () Bool)

(assert (=> d!2344862 (= c!1433108 (is-Nil!73507 Nil!73507))))

(assert (=> d!2344862 (= (++!17908 Nil!73507 (t!388366 s!14292)) lt!2672167)))

(declare-fun b!7776489 () Bool)

(assert (=> b!7776489 (= e!4607048 (Cons!73507 (h!79955 Nil!73507) (++!17908 (t!388366 Nil!73507) (t!388366 s!14292))))))

(declare-fun b!7776488 () Bool)

(assert (=> b!7776488 (= e!4607048 (t!388366 s!14292))))

(declare-fun b!7776491 () Bool)

(assert (=> b!7776491 (= e!4607049 (or (not (= (t!388366 s!14292) Nil!73507)) (= lt!2672167 Nil!73507)))))

(declare-fun b!7776490 () Bool)

(declare-fun res!3099782 () Bool)

(assert (=> b!7776490 (=> (not res!3099782) (not e!4607049))))

(declare-fun size!42701 (List!73631) Int)

(assert (=> b!7776490 (= res!3099782 (= (size!42701 lt!2672167) (+ (size!42701 Nil!73507) (size!42701 (t!388366 s!14292)))))))

(assert (= (and d!2344862 c!1433108) b!7776488))

(assert (= (and d!2344862 (not c!1433108)) b!7776489))

(assert (= (and d!2344862 res!3099781) b!7776490))

(assert (= (and b!7776490 res!3099782) b!7776491))

(declare-fun m!8227154 () Bool)

(assert (=> d!2344862 m!8227154))

(declare-fun m!8227156 () Bool)

(assert (=> d!2344862 m!8227156))

(declare-fun m!8227158 () Bool)

(assert (=> d!2344862 m!8227158))

(declare-fun m!8227160 () Bool)

(assert (=> b!7776489 m!8227160))

(declare-fun m!8227162 () Bool)

(assert (=> b!7776490 m!8227162))

(declare-fun m!8227164 () Bool)

(assert (=> b!7776490 m!8227164))

(declare-fun m!8227166 () Bool)

(assert (=> b!7776490 m!8227166))

(assert (=> b!7776102 d!2344862))

(declare-fun d!2344870 () Bool)

(declare-fun nullableFct!3593 (Regex!20792) Bool)

(assert (=> d!2344870 (= (nullable!9180 r1!6279) (nullableFct!3593 r1!6279))))

(declare-fun bs!1966173 () Bool)

(assert (= bs!1966173 d!2344870))

(declare-fun m!8227168 () Bool)

(assert (=> bs!1966173 m!8227168))

(assert (=> b!7776118 d!2344870))

(declare-fun b!7776492 () Bool)

(declare-fun res!3099788 () Bool)

(declare-fun e!4607051 () Bool)

(assert (=> b!7776492 (=> res!3099788 e!4607051)))

(declare-fun e!4607055 () Bool)

(assert (=> b!7776492 (= res!3099788 e!4607055)))

(declare-fun res!3099784 () Bool)

(assert (=> b!7776492 (=> (not res!3099784) (not e!4607055))))

(declare-fun lt!2672168 () Bool)

(assert (=> b!7776492 (= res!3099784 lt!2672168)))

(declare-fun bm!720786 () Bool)

(declare-fun call!720791 () Bool)

(assert (=> bm!720786 (= call!720791 (isEmpty!42168 (t!388366 s!14292)))))

(declare-fun b!7776493 () Bool)

(declare-fun e!4607050 () Bool)

(assert (=> b!7776493 (= e!4607051 e!4607050)))

(declare-fun res!3099789 () Bool)

(assert (=> b!7776493 (=> (not res!3099789) (not e!4607050))))

(assert (=> b!7776493 (= res!3099789 (not lt!2672168))))

(declare-fun b!7776494 () Bool)

(declare-fun e!4607052 () Bool)

(assert (=> b!7776494 (= e!4607050 e!4607052)))

(declare-fun res!3099790 () Bool)

(assert (=> b!7776494 (=> res!3099790 e!4607052)))

(assert (=> b!7776494 (= res!3099790 call!720791)))

(declare-fun b!7776496 () Bool)

(declare-fun res!3099783 () Bool)

(assert (=> b!7776496 (=> res!3099783 e!4607051)))

(assert (=> b!7776496 (= res!3099783 (not (is-ElementMatch!20792 lt!2672106)))))

(declare-fun e!4607053 () Bool)

(assert (=> b!7776496 (= e!4607053 e!4607051)))

(declare-fun b!7776497 () Bool)

(assert (=> b!7776497 (= e!4607053 (not lt!2672168))))

(declare-fun b!7776498 () Bool)

(declare-fun res!3099785 () Bool)

(assert (=> b!7776498 (=> res!3099785 e!4607052)))

(assert (=> b!7776498 (= res!3099785 (not (isEmpty!42168 (tail!15442 (t!388366 s!14292)))))))

(declare-fun b!7776499 () Bool)

(assert (=> b!7776499 (= e!4607055 (= (head!15901 (t!388366 s!14292)) (c!1433025 lt!2672106)))))

(declare-fun b!7776500 () Bool)

(declare-fun e!4607054 () Bool)

(assert (=> b!7776500 (= e!4607054 (nullable!9180 lt!2672106))))

(declare-fun b!7776495 () Bool)

(declare-fun e!4607056 () Bool)

(assert (=> b!7776495 (= e!4607056 e!4607053)))

(declare-fun c!1433110 () Bool)

(assert (=> b!7776495 (= c!1433110 (is-EmptyLang!20792 lt!2672106))))

(declare-fun d!2344872 () Bool)

(assert (=> d!2344872 e!4607056))

(declare-fun c!1433109 () Bool)

(assert (=> d!2344872 (= c!1433109 (is-EmptyExpr!20792 lt!2672106))))

(assert (=> d!2344872 (= lt!2672168 e!4607054)))

(declare-fun c!1433111 () Bool)

(assert (=> d!2344872 (= c!1433111 (isEmpty!42168 (t!388366 s!14292)))))

(assert (=> d!2344872 (validRegex!11206 lt!2672106)))

(assert (=> d!2344872 (= (matchR!10252 lt!2672106 (t!388366 s!14292)) lt!2672168)))

(declare-fun b!7776501 () Bool)

(assert (=> b!7776501 (= e!4607056 (= lt!2672168 call!720791))))

(declare-fun b!7776502 () Bool)

(declare-fun res!3099786 () Bool)

(assert (=> b!7776502 (=> (not res!3099786) (not e!4607055))))

(assert (=> b!7776502 (= res!3099786 (isEmpty!42168 (tail!15442 (t!388366 s!14292))))))

(declare-fun b!7776503 () Bool)

(assert (=> b!7776503 (= e!4607052 (not (= (head!15901 (t!388366 s!14292)) (c!1433025 lt!2672106))))))

(declare-fun b!7776504 () Bool)

(assert (=> b!7776504 (= e!4607054 (matchR!10252 (derivativeStep!6135 lt!2672106 (head!15901 (t!388366 s!14292))) (tail!15442 (t!388366 s!14292))))))

(declare-fun b!7776505 () Bool)

(declare-fun res!3099787 () Bool)

(assert (=> b!7776505 (=> (not res!3099787) (not e!4607055))))

(assert (=> b!7776505 (= res!3099787 (not call!720791))))

(assert (= (and d!2344872 c!1433111) b!7776500))

(assert (= (and d!2344872 (not c!1433111)) b!7776504))

(assert (= (and d!2344872 c!1433109) b!7776501))

(assert (= (and d!2344872 (not c!1433109)) b!7776495))

(assert (= (and b!7776495 c!1433110) b!7776497))

(assert (= (and b!7776495 (not c!1433110)) b!7776496))

(assert (= (and b!7776496 (not res!3099783)) b!7776492))

(assert (= (and b!7776492 res!3099784) b!7776505))

(assert (= (and b!7776505 res!3099787) b!7776502))

(assert (= (and b!7776502 res!3099786) b!7776499))

(assert (= (and b!7776492 (not res!3099788)) b!7776493))

(assert (= (and b!7776493 res!3099789) b!7776494))

(assert (= (and b!7776494 (not res!3099790)) b!7776498))

(assert (= (and b!7776498 (not res!3099785)) b!7776503))

(assert (= (or b!7776501 b!7776494 b!7776505) bm!720786))

(assert (=> b!7776499 m!8226988))

(assert (=> b!7776502 m!8226990))

(assert (=> b!7776502 m!8226990))

(assert (=> b!7776502 m!8226992))

(assert (=> b!7776504 m!8226988))

(assert (=> b!7776504 m!8226988))

(declare-fun m!8227170 () Bool)

(assert (=> b!7776504 m!8227170))

(assert (=> b!7776504 m!8226990))

(assert (=> b!7776504 m!8227170))

(assert (=> b!7776504 m!8226990))

(declare-fun m!8227172 () Bool)

(assert (=> b!7776504 m!8227172))

(assert (=> b!7776503 m!8226988))

(declare-fun m!8227174 () Bool)

(assert (=> b!7776500 m!8227174))

(assert (=> b!7776498 m!8226990))

(assert (=> b!7776498 m!8226990))

(assert (=> b!7776498 m!8226992))

(assert (=> bm!720786 m!8227000))

(assert (=> d!2344872 m!8227000))

(assert (=> d!2344872 m!8227012))

(assert (=> b!7776107 d!2344872))

(declare-fun b!7776516 () Bool)

(declare-fun e!4607059 () Bool)

(assert (=> b!7776516 (= e!4607059 tp_is_empty!51939)))

(declare-fun b!7776517 () Bool)

(declare-fun tp!2285173 () Bool)

(declare-fun tp!2285174 () Bool)

(assert (=> b!7776517 (= e!4607059 (and tp!2285173 tp!2285174))))

(assert (=> b!7776109 (= tp!2285122 e!4607059)))

(declare-fun b!7776519 () Bool)

(declare-fun tp!2285172 () Bool)

(declare-fun tp!2285170 () Bool)

(assert (=> b!7776519 (= e!4607059 (and tp!2285172 tp!2285170))))

(declare-fun b!7776518 () Bool)

(declare-fun tp!2285171 () Bool)

(assert (=> b!7776518 (= e!4607059 tp!2285171)))

(assert (= (and b!7776109 (is-ElementMatch!20792 (regOne!42097 r1!6279))) b!7776516))

(assert (= (and b!7776109 (is-Concat!29637 (regOne!42097 r1!6279))) b!7776517))

(assert (= (and b!7776109 (is-Star!20792 (regOne!42097 r1!6279))) b!7776518))

(assert (= (and b!7776109 (is-Union!20792 (regOne!42097 r1!6279))) b!7776519))

(declare-fun b!7776520 () Bool)

(declare-fun e!4607060 () Bool)

(assert (=> b!7776520 (= e!4607060 tp_is_empty!51939)))

(declare-fun b!7776521 () Bool)

(declare-fun tp!2285178 () Bool)

(declare-fun tp!2285179 () Bool)

(assert (=> b!7776521 (= e!4607060 (and tp!2285178 tp!2285179))))

(assert (=> b!7776109 (= tp!2285121 e!4607060)))

(declare-fun b!7776523 () Bool)

(declare-fun tp!2285177 () Bool)

(declare-fun tp!2285175 () Bool)

(assert (=> b!7776523 (= e!4607060 (and tp!2285177 tp!2285175))))

(declare-fun b!7776522 () Bool)

(declare-fun tp!2285176 () Bool)

(assert (=> b!7776522 (= e!4607060 tp!2285176)))

(assert (= (and b!7776109 (is-ElementMatch!20792 (regTwo!42097 r1!6279))) b!7776520))

(assert (= (and b!7776109 (is-Concat!29637 (regTwo!42097 r1!6279))) b!7776521))

(assert (= (and b!7776109 (is-Star!20792 (regTwo!42097 r1!6279))) b!7776522))

(assert (= (and b!7776109 (is-Union!20792 (regTwo!42097 r1!6279))) b!7776523))

(declare-fun b!7776524 () Bool)

(declare-fun e!4607061 () Bool)

(assert (=> b!7776524 (= e!4607061 tp_is_empty!51939)))

(declare-fun b!7776525 () Bool)

(declare-fun tp!2285183 () Bool)

(declare-fun tp!2285184 () Bool)

(assert (=> b!7776525 (= e!4607061 (and tp!2285183 tp!2285184))))

(assert (=> b!7776119 (= tp!2285119 e!4607061)))

(declare-fun b!7776527 () Bool)

(declare-fun tp!2285182 () Bool)

(declare-fun tp!2285180 () Bool)

(assert (=> b!7776527 (= e!4607061 (and tp!2285182 tp!2285180))))

(declare-fun b!7776526 () Bool)

(declare-fun tp!2285181 () Bool)

(assert (=> b!7776526 (= e!4607061 tp!2285181)))

(assert (= (and b!7776119 (is-ElementMatch!20792 (regOne!42096 r1!6279))) b!7776524))

(assert (= (and b!7776119 (is-Concat!29637 (regOne!42096 r1!6279))) b!7776525))

(assert (= (and b!7776119 (is-Star!20792 (regOne!42096 r1!6279))) b!7776526))

(assert (= (and b!7776119 (is-Union!20792 (regOne!42096 r1!6279))) b!7776527))

(declare-fun b!7776528 () Bool)

(declare-fun e!4607062 () Bool)

(assert (=> b!7776528 (= e!4607062 tp_is_empty!51939)))

(declare-fun b!7776529 () Bool)

(declare-fun tp!2285188 () Bool)

(declare-fun tp!2285189 () Bool)

(assert (=> b!7776529 (= e!4607062 (and tp!2285188 tp!2285189))))

(assert (=> b!7776119 (= tp!2285126 e!4607062)))

(declare-fun b!7776531 () Bool)

(declare-fun tp!2285187 () Bool)

(declare-fun tp!2285185 () Bool)

(assert (=> b!7776531 (= e!4607062 (and tp!2285187 tp!2285185))))

(declare-fun b!7776530 () Bool)

(declare-fun tp!2285186 () Bool)

(assert (=> b!7776530 (= e!4607062 tp!2285186)))

(assert (= (and b!7776119 (is-ElementMatch!20792 (regTwo!42096 r1!6279))) b!7776528))

(assert (= (and b!7776119 (is-Concat!29637 (regTwo!42096 r1!6279))) b!7776529))

(assert (= (and b!7776119 (is-Star!20792 (regTwo!42096 r1!6279))) b!7776530))

(assert (= (and b!7776119 (is-Union!20792 (regTwo!42096 r1!6279))) b!7776531))

(declare-fun b!7776536 () Bool)

(declare-fun e!4607065 () Bool)

(declare-fun tp!2285192 () Bool)

(assert (=> b!7776536 (= e!4607065 (and tp_is_empty!51939 tp!2285192))))

(assert (=> b!7776103 (= tp!2285124 e!4607065)))

(assert (= (and b!7776103 (is-Cons!73507 (t!388366 s!14292))) b!7776536))

(declare-fun b!7776537 () Bool)

(declare-fun e!4607066 () Bool)

(assert (=> b!7776537 (= e!4607066 tp_is_empty!51939)))

(declare-fun b!7776538 () Bool)

(declare-fun tp!2285196 () Bool)

(declare-fun tp!2285197 () Bool)

(assert (=> b!7776538 (= e!4607066 (and tp!2285196 tp!2285197))))

(assert (=> b!7776110 (= tp!2285123 e!4607066)))

(declare-fun b!7776540 () Bool)

(declare-fun tp!2285195 () Bool)

(declare-fun tp!2285193 () Bool)

(assert (=> b!7776540 (= e!4607066 (and tp!2285195 tp!2285193))))

(declare-fun b!7776539 () Bool)

(declare-fun tp!2285194 () Bool)

(assert (=> b!7776539 (= e!4607066 tp!2285194)))

(assert (= (and b!7776110 (is-ElementMatch!20792 (reg!21121 r1!6279))) b!7776537))

(assert (= (and b!7776110 (is-Concat!29637 (reg!21121 r1!6279))) b!7776538))

(assert (= (and b!7776110 (is-Star!20792 (reg!21121 r1!6279))) b!7776539))

(assert (= (and b!7776110 (is-Union!20792 (reg!21121 r1!6279))) b!7776540))

(declare-fun b!7776541 () Bool)

(declare-fun e!4607067 () Bool)

(assert (=> b!7776541 (= e!4607067 tp_is_empty!51939)))

(declare-fun b!7776542 () Bool)

(declare-fun tp!2285201 () Bool)

(declare-fun tp!2285202 () Bool)

(assert (=> b!7776542 (= e!4607067 (and tp!2285201 tp!2285202))))

(assert (=> b!7776115 (= tp!2285116 e!4607067)))

(declare-fun b!7776544 () Bool)

(declare-fun tp!2285200 () Bool)

(declare-fun tp!2285198 () Bool)

(assert (=> b!7776544 (= e!4607067 (and tp!2285200 tp!2285198))))

(declare-fun b!7776543 () Bool)

(declare-fun tp!2285199 () Bool)

(assert (=> b!7776543 (= e!4607067 tp!2285199)))

(assert (= (and b!7776115 (is-ElementMatch!20792 (regOne!42096 r2!6217))) b!7776541))

(assert (= (and b!7776115 (is-Concat!29637 (regOne!42096 r2!6217))) b!7776542))

(assert (= (and b!7776115 (is-Star!20792 (regOne!42096 r2!6217))) b!7776543))

(assert (= (and b!7776115 (is-Union!20792 (regOne!42096 r2!6217))) b!7776544))

(declare-fun b!7776545 () Bool)

(declare-fun e!4607068 () Bool)

(assert (=> b!7776545 (= e!4607068 tp_is_empty!51939)))

(declare-fun b!7776546 () Bool)

(declare-fun tp!2285206 () Bool)

(declare-fun tp!2285207 () Bool)

(assert (=> b!7776546 (= e!4607068 (and tp!2285206 tp!2285207))))

(assert (=> b!7776115 (= tp!2285120 e!4607068)))

(declare-fun b!7776548 () Bool)

(declare-fun tp!2285205 () Bool)

(declare-fun tp!2285203 () Bool)

(assert (=> b!7776548 (= e!4607068 (and tp!2285205 tp!2285203))))

(declare-fun b!7776547 () Bool)

(declare-fun tp!2285204 () Bool)

(assert (=> b!7776547 (= e!4607068 tp!2285204)))

(assert (= (and b!7776115 (is-ElementMatch!20792 (regTwo!42096 r2!6217))) b!7776545))

(assert (= (and b!7776115 (is-Concat!29637 (regTwo!42096 r2!6217))) b!7776546))

(assert (= (and b!7776115 (is-Star!20792 (regTwo!42096 r2!6217))) b!7776547))

(assert (= (and b!7776115 (is-Union!20792 (regTwo!42096 r2!6217))) b!7776548))

(declare-fun b!7776549 () Bool)

(declare-fun e!4607069 () Bool)

(assert (=> b!7776549 (= e!4607069 tp_is_empty!51939)))

(declare-fun b!7776550 () Bool)

(declare-fun tp!2285211 () Bool)

(declare-fun tp!2285212 () Bool)

(assert (=> b!7776550 (= e!4607069 (and tp!2285211 tp!2285212))))

(assert (=> b!7776117 (= tp!2285118 e!4607069)))

(declare-fun b!7776552 () Bool)

(declare-fun tp!2285210 () Bool)

(declare-fun tp!2285208 () Bool)

(assert (=> b!7776552 (= e!4607069 (and tp!2285210 tp!2285208))))

(declare-fun b!7776551 () Bool)

(declare-fun tp!2285209 () Bool)

(assert (=> b!7776551 (= e!4607069 tp!2285209)))

(assert (= (and b!7776117 (is-ElementMatch!20792 (reg!21121 r2!6217))) b!7776549))

(assert (= (and b!7776117 (is-Concat!29637 (reg!21121 r2!6217))) b!7776550))

(assert (= (and b!7776117 (is-Star!20792 (reg!21121 r2!6217))) b!7776551))

(assert (= (and b!7776117 (is-Union!20792 (reg!21121 r2!6217))) b!7776552))

(declare-fun b!7776553 () Bool)

(declare-fun e!4607070 () Bool)

(assert (=> b!7776553 (= e!4607070 tp_is_empty!51939)))

(declare-fun b!7776554 () Bool)

(declare-fun tp!2285216 () Bool)

(declare-fun tp!2285217 () Bool)

(assert (=> b!7776554 (= e!4607070 (and tp!2285216 tp!2285217))))

(assert (=> b!7776112 (= tp!2285125 e!4607070)))

(declare-fun b!7776556 () Bool)

(declare-fun tp!2285215 () Bool)

(declare-fun tp!2285213 () Bool)

(assert (=> b!7776556 (= e!4607070 (and tp!2285215 tp!2285213))))

(declare-fun b!7776555 () Bool)

(declare-fun tp!2285214 () Bool)

(assert (=> b!7776555 (= e!4607070 tp!2285214)))

(assert (= (and b!7776112 (is-ElementMatch!20792 (regOne!42097 r2!6217))) b!7776553))

(assert (= (and b!7776112 (is-Concat!29637 (regOne!42097 r2!6217))) b!7776554))

(assert (= (and b!7776112 (is-Star!20792 (regOne!42097 r2!6217))) b!7776555))

(assert (= (and b!7776112 (is-Union!20792 (regOne!42097 r2!6217))) b!7776556))

(declare-fun b!7776557 () Bool)

(declare-fun e!4607071 () Bool)

(assert (=> b!7776557 (= e!4607071 tp_is_empty!51939)))

(declare-fun b!7776558 () Bool)

(declare-fun tp!2285221 () Bool)

(declare-fun tp!2285222 () Bool)

(assert (=> b!7776558 (= e!4607071 (and tp!2285221 tp!2285222))))

(assert (=> b!7776112 (= tp!2285117 e!4607071)))

(declare-fun b!7776560 () Bool)

(declare-fun tp!2285220 () Bool)

(declare-fun tp!2285218 () Bool)

(assert (=> b!7776560 (= e!4607071 (and tp!2285220 tp!2285218))))

(declare-fun b!7776559 () Bool)

(declare-fun tp!2285219 () Bool)

(assert (=> b!7776559 (= e!4607071 tp!2285219)))

(assert (= (and b!7776112 (is-ElementMatch!20792 (regTwo!42097 r2!6217))) b!7776557))

(assert (= (and b!7776112 (is-Concat!29637 (regTwo!42097 r2!6217))) b!7776558))

(assert (= (and b!7776112 (is-Star!20792 (regTwo!42097 r2!6217))) b!7776559))

(assert (= (and b!7776112 (is-Union!20792 (regTwo!42097 r2!6217))) b!7776560))

(push 1)

(assert (not b!7776504))

(assert (not b!7776522))

(assert (not b!7776502))

(assert (not b!7776523))

(assert (not b!7776544))

(assert (not bm!720776))

(assert (not d!2344856))

(assert (not bm!720767))

(assert (not b!7776543))

(assert (not bm!720737))

(assert (not bm!720766))

(assert (not b!7776272))

(assert (not bm!720777))

(assert (not d!2344834))

(assert (not b!7776542))

(assert (not b!7776321))

(assert (not b!7776559))

(assert (not b!7776278))

(assert (not b!7776527))

(assert (not bm!720768))

(assert (not bm!720786))

(assert (not b!7776423))

(assert (not d!2344854))

(assert (not b!7776525))

(assert (not d!2344840))

(assert (not b!7776490))

(assert (not b!7776399))

(assert (not b!7776199))

(assert tp_is_empty!51939)

(assert (not d!2344860))

(assert (not bm!720765))

(assert (not b!7776555))

(assert (not b!7776550))

(assert (not b!7776530))

(assert (not b!7776440))

(assert (not d!2344862))

(assert (not b!7776360))

(assert (not d!2344870))

(assert (not d!2344838))

(assert (not b!7776521))

(assert (not d!2344858))

(assert (not b!7776556))

(assert (not b!7776400))

(assert (not b!7776531))

(assert (not b!7776560))

(assert (not bm!720762))

(assert (not bm!720747))

(assert (not b!7776265))

(assert (not b!7776519))

(assert (not d!2344848))

(assert (not b!7776403))

(assert (not d!2344872))

(assert (not b!7776558))

(assert (not b!7776427))

(assert (not b!7776426))

(assert (not b!7776422))

(assert (not b!7776264))

(assert (not d!2344832))

(assert (not b!7776554))

(assert (not b!7776548))

(assert (not b!7776536))

(assert (not b!7776503))

(assert (not b!7776517))

(assert (not b!7776421))

(assert (not b!7776441))

(assert (not b!7776538))

(assert (not b!7776529))

(assert (not b!7776500))

(assert (not b!7776439))

(assert (not bm!720781))

(assert (not bm!720761))

(assert (not bm!720771))

(assert (not b!7776499))

(assert (not bm!720780))

(assert (not b!7776551))

(assert (not b!7776406))

(assert (not b!7776270))

(assert (not b!7776436))

(assert (not b!7776271))

(assert (not b!7776435))

(assert (not b!7776425))

(assert (not b!7776402))

(assert (not b!7776526))

(assert (not b!7776351))

(assert (not b!7776341))

(assert (not b!7776489))

(assert (not b!7776546))

(assert (not b!7776279))

(assert (not b!7776267))

(assert (not b!7776552))

(assert (not b!7776540))

(assert (not b!7776405))

(assert (not bm!720736))

(assert (not b!7776539))

(assert (not b!7776518))

(assert (not b!7776498))

(assert (not b!7776450))

(assert (not d!2344846))

(assert (not b!7776437))

(assert (not b!7776547))

(assert (not bm!720770))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

