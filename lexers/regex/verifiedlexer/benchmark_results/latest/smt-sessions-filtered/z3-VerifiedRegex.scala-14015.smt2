; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740522 () Bool)

(assert start!740522)

(declare-fun b!7780787 () Bool)

(declare-fun res!3101472 () Bool)

(declare-fun e!4609134 () Bool)

(assert (=> b!7780787 (=> (not res!3101472) (not e!4609134))))

(declare-datatypes ((C!41976 0))(
  ( (C!41977 (val!31428 Int)) )
))
(declare-datatypes ((Regex!20825 0))(
  ( (ElementMatch!20825 (c!1433686 C!41976)) (Concat!29670 (regOne!42162 Regex!20825) (regTwo!42162 Regex!20825)) (EmptyExpr!20825) (Star!20825 (reg!21154 Regex!20825)) (EmptyLang!20825) (Union!20825 (regOne!42163 Regex!20825) (regTwo!42163 Regex!20825)) )
))
(declare-fun r1!6279 () Regex!20825)

(declare-fun nullable!9213 (Regex!20825) Bool)

(assert (=> b!7780787 (= res!3101472 (not (nullable!9213 r1!6279)))))

(declare-fun b!7780788 () Bool)

(declare-fun e!4609139 () Bool)

(declare-fun e!4609140 () Bool)

(assert (=> b!7780788 (= e!4609139 (not e!4609140))))

(declare-fun res!3101473 () Bool)

(assert (=> b!7780788 (=> res!3101473 e!4609140)))

(declare-fun lt!2672972 () Bool)

(assert (=> b!7780788 (= res!3101473 (not lt!2672972))))

(declare-datatypes ((List!73664 0))(
  ( (Nil!73540) (Cons!73540 (h!79988 C!41976) (t!388399 List!73664)) )
))
(declare-fun s!14292 () List!73664)

(declare-fun derivative!553 (Regex!20825 List!73664) Regex!20825)

(assert (=> b!7780788 (= (derivative!553 EmptyLang!20825 (t!388399 s!14292)) EmptyLang!20825)))

(declare-datatypes ((Unit!168540 0))(
  ( (Unit!168541) )
))
(declare-fun lt!2672975 () Unit!168540)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!88 (Regex!20825 List!73664) Unit!168540)

(assert (=> b!7780788 (= lt!2672975 (lemmaEmptyLangDerivativeIsAFixPoint!88 EmptyLang!20825 (t!388399 s!14292)))))

(declare-fun e!4609135 () Bool)

(assert (=> b!7780788 e!4609135))

(declare-fun res!3101480 () Bool)

(assert (=> b!7780788 (=> res!3101480 e!4609135)))

(assert (=> b!7780788 (= res!3101480 lt!2672972)))

(declare-fun lt!2672977 () Regex!20825)

(declare-fun matchR!10285 (Regex!20825 List!73664) Bool)

(assert (=> b!7780788 (= lt!2672972 (matchR!10285 lt!2672977 (t!388399 s!14292)))))

(declare-fun lt!2672973 () Unit!168540)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!394 (Regex!20825 Regex!20825 List!73664) Unit!168540)

(assert (=> b!7780788 (= lt!2672973 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!394 lt!2672977 EmptyLang!20825 (t!388399 s!14292)))))

(declare-fun b!7780789 () Bool)

(declare-fun res!3101475 () Bool)

(declare-fun e!4609141 () Bool)

(assert (=> b!7780789 (=> (not res!3101475) (not e!4609141))))

(get-info :version)

(assert (=> b!7780789 (= res!3101475 ((_ is Cons!73540) s!14292))))

(declare-fun res!3101471 () Bool)

(declare-fun e!4609137 () Bool)

(assert (=> start!740522 (=> (not res!3101471) (not e!4609137))))

(declare-fun validRegex!11239 (Regex!20825) Bool)

(assert (=> start!740522 (= res!3101471 (validRegex!11239 r1!6279))))

(assert (=> start!740522 e!4609137))

(declare-fun e!4609136 () Bool)

(assert (=> start!740522 e!4609136))

(declare-fun e!4609138 () Bool)

(assert (=> start!740522 e!4609138))

(declare-fun e!4609133 () Bool)

(assert (=> start!740522 e!4609133))

(declare-fun b!7780790 () Bool)

(declare-fun e!4609132 () Bool)

(declare-fun ++!17919 (List!73664 List!73664) List!73664)

(assert (=> b!7780790 (= e!4609132 (= (++!17919 Nil!73540 (t!388399 s!14292)) (t!388399 s!14292)))))

(declare-fun b!7780791 () Bool)

(declare-fun res!3101479 () Bool)

(assert (=> b!7780791 (=> (not res!3101479) (not e!4609137))))

(declare-fun r2!6217 () Regex!20825)

(assert (=> b!7780791 (= res!3101479 (validRegex!11239 r2!6217))))

(declare-fun b!7780792 () Bool)

(assert (=> b!7780792 (= e!4609137 e!4609141)))

(declare-fun res!3101474 () Bool)

(assert (=> b!7780792 (=> (not res!3101474) (not e!4609141))))

(declare-fun lt!2672976 () Regex!20825)

(assert (=> b!7780792 (= res!3101474 (matchR!10285 lt!2672976 s!14292))))

(assert (=> b!7780792 (= lt!2672976 (Concat!29670 r1!6279 r2!6217))))

(declare-fun b!7780793 () Bool)

(assert (=> b!7780793 (= e!4609134 e!4609139)))

(declare-fun res!3101478 () Bool)

(assert (=> b!7780793 (=> (not res!3101478) (not e!4609139))))

(declare-fun lt!2672971 () Regex!20825)

(assert (=> b!7780793 (= res!3101478 (= lt!2672971 (Union!20825 lt!2672977 EmptyLang!20825)))))

(declare-fun lt!2672974 () Regex!20825)

(assert (=> b!7780793 (= lt!2672977 (Concat!29670 lt!2672974 r2!6217))))

(declare-fun derivativeStep!6168 (Regex!20825 C!41976) Regex!20825)

(assert (=> b!7780793 (= lt!2672974 (derivativeStep!6168 r1!6279 (h!79988 s!14292)))))

(declare-fun b!7780794 () Bool)

(declare-fun tp!2286964 () Bool)

(declare-fun tp!2286962 () Bool)

(assert (=> b!7780794 (= e!4609138 (and tp!2286964 tp!2286962))))

(declare-fun b!7780795 () Bool)

(declare-fun tp!2286961 () Bool)

(declare-fun tp!2286969 () Bool)

(assert (=> b!7780795 (= e!4609136 (and tp!2286961 tp!2286969))))

(declare-fun b!7780796 () Bool)

(declare-fun tp_is_empty!52005 () Bool)

(assert (=> b!7780796 (= e!4609138 tp_is_empty!52005)))

(declare-fun b!7780797 () Bool)

(assert (=> b!7780797 (= e!4609140 e!4609132)))

(declare-fun res!3101476 () Bool)

(assert (=> b!7780797 (=> res!3101476 e!4609132)))

(assert (=> b!7780797 (= res!3101476 (not (validRegex!11239 lt!2672974)))))

(declare-datatypes ((tuple2!69904 0))(
  ( (tuple2!69905 (_1!38255 List!73664) (_2!38255 List!73664)) )
))
(declare-datatypes ((Option!17746 0))(
  ( (None!17745) (Some!17745 (v!54880 tuple2!69904)) )
))
(declare-fun isDefined!14358 (Option!17746) Bool)

(declare-fun findConcatSeparation!3776 (Regex!20825 Regex!20825 List!73664 List!73664 List!73664) Option!17746)

(assert (=> b!7780797 (isDefined!14358 (findConcatSeparation!3776 lt!2672974 r2!6217 Nil!73540 (t!388399 s!14292) (t!388399 s!14292)))))

(declare-fun lt!2672978 () Unit!168540)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!366 (Regex!20825 Regex!20825 List!73664) Unit!168540)

(assert (=> b!7780797 (= lt!2672978 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!366 lt!2672974 r2!6217 (t!388399 s!14292)))))

(declare-fun b!7780798 () Bool)

(declare-fun tp!2286966 () Bool)

(assert (=> b!7780798 (= e!4609133 (and tp_is_empty!52005 tp!2286966))))

(declare-fun b!7780799 () Bool)

(declare-fun tp!2286963 () Bool)

(declare-fun tp!2286970 () Bool)

(assert (=> b!7780799 (= e!4609138 (and tp!2286963 tp!2286970))))

(declare-fun b!7780800 () Bool)

(declare-fun tp!2286971 () Bool)

(declare-fun tp!2286967 () Bool)

(assert (=> b!7780800 (= e!4609136 (and tp!2286971 tp!2286967))))

(declare-fun b!7780801 () Bool)

(assert (=> b!7780801 (= e!4609135 (matchR!10285 EmptyLang!20825 (t!388399 s!14292)))))

(declare-fun b!7780802 () Bool)

(assert (=> b!7780802 (= e!4609141 e!4609134)))

(declare-fun res!3101477 () Bool)

(assert (=> b!7780802 (=> (not res!3101477) (not e!4609134))))

(assert (=> b!7780802 (= res!3101477 (matchR!10285 lt!2672971 (t!388399 s!14292)))))

(assert (=> b!7780802 (= lt!2672971 (derivativeStep!6168 lt!2672976 (h!79988 s!14292)))))

(declare-fun b!7780803 () Bool)

(assert (=> b!7780803 (= e!4609136 tp_is_empty!52005)))

(declare-fun b!7780804 () Bool)

(declare-fun tp!2286968 () Bool)

(assert (=> b!7780804 (= e!4609138 tp!2286968)))

(declare-fun b!7780805 () Bool)

(declare-fun tp!2286965 () Bool)

(assert (=> b!7780805 (= e!4609136 tp!2286965)))

(assert (= (and start!740522 res!3101471) b!7780791))

(assert (= (and b!7780791 res!3101479) b!7780792))

(assert (= (and b!7780792 res!3101474) b!7780789))

(assert (= (and b!7780789 res!3101475) b!7780802))

(assert (= (and b!7780802 res!3101477) b!7780787))

(assert (= (and b!7780787 res!3101472) b!7780793))

(assert (= (and b!7780793 res!3101478) b!7780788))

(assert (= (and b!7780788 (not res!3101480)) b!7780801))

(assert (= (and b!7780788 (not res!3101473)) b!7780797))

(assert (= (and b!7780797 (not res!3101476)) b!7780790))

(assert (= (and start!740522 ((_ is ElementMatch!20825) r1!6279)) b!7780803))

(assert (= (and start!740522 ((_ is Concat!29670) r1!6279)) b!7780800))

(assert (= (and start!740522 ((_ is Star!20825) r1!6279)) b!7780805))

(assert (= (and start!740522 ((_ is Union!20825) r1!6279)) b!7780795))

(assert (= (and start!740522 ((_ is ElementMatch!20825) r2!6217)) b!7780796))

(assert (= (and start!740522 ((_ is Concat!29670) r2!6217)) b!7780794))

(assert (= (and start!740522 ((_ is Star!20825) r2!6217)) b!7780804))

(assert (= (and start!740522 ((_ is Union!20825) r2!6217)) b!7780799))

(assert (= (and start!740522 ((_ is Cons!73540) s!14292)) b!7780798))

(declare-fun m!8228988 () Bool)

(assert (=> b!7780788 m!8228988))

(declare-fun m!8228990 () Bool)

(assert (=> b!7780788 m!8228990))

(declare-fun m!8228992 () Bool)

(assert (=> b!7780788 m!8228992))

(declare-fun m!8228994 () Bool)

(assert (=> b!7780788 m!8228994))

(declare-fun m!8228996 () Bool)

(assert (=> b!7780791 m!8228996))

(declare-fun m!8228998 () Bool)

(assert (=> start!740522 m!8228998))

(declare-fun m!8229000 () Bool)

(assert (=> b!7780802 m!8229000))

(declare-fun m!8229002 () Bool)

(assert (=> b!7780802 m!8229002))

(declare-fun m!8229004 () Bool)

(assert (=> b!7780792 m!8229004))

(declare-fun m!8229006 () Bool)

(assert (=> b!7780793 m!8229006))

(declare-fun m!8229008 () Bool)

(assert (=> b!7780790 m!8229008))

(declare-fun m!8229010 () Bool)

(assert (=> b!7780787 m!8229010))

(declare-fun m!8229012 () Bool)

(assert (=> b!7780797 m!8229012))

(declare-fun m!8229014 () Bool)

(assert (=> b!7780797 m!8229014))

(assert (=> b!7780797 m!8229014))

(declare-fun m!8229016 () Bool)

(assert (=> b!7780797 m!8229016))

(declare-fun m!8229018 () Bool)

(assert (=> b!7780797 m!8229018))

(declare-fun m!8229020 () Bool)

(assert (=> b!7780801 m!8229020))

(check-sat (not b!7780791) (not b!7780805) (not b!7780801) (not b!7780798) (not b!7780802) (not b!7780790) (not b!7780799) (not b!7780793) (not start!740522) (not b!7780800) tp_is_empty!52005 (not b!7780795) (not b!7780804) (not b!7780797) (not b!7780787) (not b!7780792) (not b!7780788) (not b!7780794))
(check-sat)
(get-model)

(declare-fun b!7780824 () Bool)

(declare-fun e!4609161 () Bool)

(declare-fun e!4609159 () Bool)

(assert (=> b!7780824 (= e!4609161 e!4609159)))

(declare-fun c!1433691 () Bool)

(assert (=> b!7780824 (= c!1433691 ((_ is Union!20825) r2!6217))))

(declare-fun b!7780825 () Bool)

(declare-fun e!4609157 () Bool)

(declare-fun e!4609156 () Bool)

(assert (=> b!7780825 (= e!4609157 e!4609156)))

(declare-fun res!3101495 () Bool)

(assert (=> b!7780825 (=> (not res!3101495) (not e!4609156))))

(declare-fun call!721192 () Bool)

(assert (=> b!7780825 (= res!3101495 call!721192)))

(declare-fun b!7780826 () Bool)

(declare-fun e!4609162 () Bool)

(assert (=> b!7780826 (= e!4609162 e!4609161)))

(declare-fun c!1433692 () Bool)

(assert (=> b!7780826 (= c!1433692 ((_ is Star!20825) r2!6217))))

(declare-fun bm!721186 () Bool)

(assert (=> bm!721186 (= call!721192 (validRegex!11239 (ite c!1433691 (regOne!42163 r2!6217) (regOne!42162 r2!6217))))))

(declare-fun d!2345148 () Bool)

(declare-fun res!3101494 () Bool)

(assert (=> d!2345148 (=> res!3101494 e!4609162)))

(assert (=> d!2345148 (= res!3101494 ((_ is ElementMatch!20825) r2!6217))))

(assert (=> d!2345148 (= (validRegex!11239 r2!6217) e!4609162)))

(declare-fun bm!721187 () Bool)

(declare-fun call!721193 () Bool)

(assert (=> bm!721187 (= call!721193 (validRegex!11239 (ite c!1433692 (reg!21154 r2!6217) (ite c!1433691 (regTwo!42163 r2!6217) (regTwo!42162 r2!6217)))))))

(declare-fun bm!721188 () Bool)

(declare-fun call!721191 () Bool)

(assert (=> bm!721188 (= call!721191 call!721193)))

(declare-fun b!7780827 () Bool)

(declare-fun res!3101493 () Bool)

(declare-fun e!4609158 () Bool)

(assert (=> b!7780827 (=> (not res!3101493) (not e!4609158))))

(assert (=> b!7780827 (= res!3101493 call!721192)))

(assert (=> b!7780827 (= e!4609159 e!4609158)))

(declare-fun b!7780828 () Bool)

(assert (=> b!7780828 (= e!4609156 call!721191)))

(declare-fun b!7780829 () Bool)

(assert (=> b!7780829 (= e!4609158 call!721191)))

(declare-fun b!7780830 () Bool)

(declare-fun e!4609160 () Bool)

(assert (=> b!7780830 (= e!4609161 e!4609160)))

(declare-fun res!3101492 () Bool)

(assert (=> b!7780830 (= res!3101492 (not (nullable!9213 (reg!21154 r2!6217))))))

(assert (=> b!7780830 (=> (not res!3101492) (not e!4609160))))

(declare-fun b!7780831 () Bool)

(declare-fun res!3101491 () Bool)

(assert (=> b!7780831 (=> res!3101491 e!4609157)))

(assert (=> b!7780831 (= res!3101491 (not ((_ is Concat!29670) r2!6217)))))

(assert (=> b!7780831 (= e!4609159 e!4609157)))

(declare-fun b!7780832 () Bool)

(assert (=> b!7780832 (= e!4609160 call!721193)))

(assert (= (and d!2345148 (not res!3101494)) b!7780826))

(assert (= (and b!7780826 c!1433692) b!7780830))

(assert (= (and b!7780826 (not c!1433692)) b!7780824))

(assert (= (and b!7780830 res!3101492) b!7780832))

(assert (= (and b!7780824 c!1433691) b!7780827))

(assert (= (and b!7780824 (not c!1433691)) b!7780831))

(assert (= (and b!7780827 res!3101493) b!7780829))

(assert (= (and b!7780831 (not res!3101491)) b!7780825))

(assert (= (and b!7780825 res!3101495) b!7780828))

(assert (= (or b!7780827 b!7780825) bm!721186))

(assert (= (or b!7780829 b!7780828) bm!721188))

(assert (= (or b!7780832 bm!721188) bm!721187))

(declare-fun m!8229022 () Bool)

(assert (=> bm!721186 m!8229022))

(declare-fun m!8229024 () Bool)

(assert (=> bm!721187 m!8229024))

(declare-fun m!8229026 () Bool)

(assert (=> b!7780830 m!8229026))

(assert (=> b!7780791 d!2345148))

(declare-fun b!7780897 () Bool)

(declare-fun e!4609206 () Bool)

(assert (=> b!7780897 (= e!4609206 (nullable!9213 lt!2672971))))

(declare-fun b!7780898 () Bool)

(declare-fun e!4609210 () Bool)

(declare-fun head!15913 (List!73664) C!41976)

(assert (=> b!7780898 (= e!4609210 (= (head!15913 (t!388399 s!14292)) (c!1433686 lt!2672971)))))

(declare-fun b!7780899 () Bool)

(declare-fun tail!15454 (List!73664) List!73664)

(assert (=> b!7780899 (= e!4609206 (matchR!10285 (derivativeStep!6168 lt!2672971 (head!15913 (t!388399 s!14292))) (tail!15454 (t!388399 s!14292))))))

(declare-fun b!7780900 () Bool)

(declare-fun res!3101539 () Bool)

(assert (=> b!7780900 (=> (not res!3101539) (not e!4609210))))

(declare-fun call!721208 () Bool)

(assert (=> b!7780900 (= res!3101539 (not call!721208))))

(declare-fun b!7780901 () Bool)

(declare-fun res!3101532 () Bool)

(assert (=> b!7780901 (=> (not res!3101532) (not e!4609210))))

(declare-fun isEmpty!42184 (List!73664) Bool)

(assert (=> b!7780901 (= res!3101532 (isEmpty!42184 (tail!15454 (t!388399 s!14292))))))

(declare-fun b!7780902 () Bool)

(declare-fun res!3101535 () Bool)

(declare-fun e!4609205 () Bool)

(assert (=> b!7780902 (=> res!3101535 e!4609205)))

(assert (=> b!7780902 (= res!3101535 (not (isEmpty!42184 (tail!15454 (t!388399 s!14292)))))))

(declare-fun b!7780904 () Bool)

(declare-fun res!3101533 () Bool)

(declare-fun e!4609207 () Bool)

(assert (=> b!7780904 (=> res!3101533 e!4609207)))

(assert (=> b!7780904 (= res!3101533 e!4609210)))

(declare-fun res!3101538 () Bool)

(assert (=> b!7780904 (=> (not res!3101538) (not e!4609210))))

(declare-fun lt!2672981 () Bool)

(assert (=> b!7780904 (= res!3101538 lt!2672981)))

(declare-fun b!7780905 () Bool)

(declare-fun e!4609211 () Bool)

(assert (=> b!7780905 (= e!4609211 (= lt!2672981 call!721208))))

(declare-fun b!7780906 () Bool)

(declare-fun e!4609208 () Bool)

(assert (=> b!7780906 (= e!4609211 e!4609208)))

(declare-fun c!1433708 () Bool)

(assert (=> b!7780906 (= c!1433708 ((_ is EmptyLang!20825) lt!2672971))))

(declare-fun bm!721203 () Bool)

(assert (=> bm!721203 (= call!721208 (isEmpty!42184 (t!388399 s!14292)))))

(declare-fun b!7780907 () Bool)

(assert (=> b!7780907 (= e!4609208 (not lt!2672981))))

(declare-fun b!7780908 () Bool)

(declare-fun res!3101537 () Bool)

(assert (=> b!7780908 (=> res!3101537 e!4609207)))

(assert (=> b!7780908 (= res!3101537 (not ((_ is ElementMatch!20825) lt!2672971)))))

(assert (=> b!7780908 (= e!4609208 e!4609207)))

(declare-fun b!7780909 () Bool)

(declare-fun e!4609209 () Bool)

(assert (=> b!7780909 (= e!4609209 e!4609205)))

(declare-fun res!3101536 () Bool)

(assert (=> b!7780909 (=> res!3101536 e!4609205)))

(assert (=> b!7780909 (= res!3101536 call!721208)))

(declare-fun b!7780910 () Bool)

(assert (=> b!7780910 (= e!4609205 (not (= (head!15913 (t!388399 s!14292)) (c!1433686 lt!2672971))))))

(declare-fun b!7780903 () Bool)

(assert (=> b!7780903 (= e!4609207 e!4609209)))

(declare-fun res!3101534 () Bool)

(assert (=> b!7780903 (=> (not res!3101534) (not e!4609209))))

(assert (=> b!7780903 (= res!3101534 (not lt!2672981))))

(declare-fun d!2345152 () Bool)

(assert (=> d!2345152 e!4609211))

(declare-fun c!1433707 () Bool)

(assert (=> d!2345152 (= c!1433707 ((_ is EmptyExpr!20825) lt!2672971))))

(assert (=> d!2345152 (= lt!2672981 e!4609206)))

(declare-fun c!1433709 () Bool)

(assert (=> d!2345152 (= c!1433709 (isEmpty!42184 (t!388399 s!14292)))))

(assert (=> d!2345152 (validRegex!11239 lt!2672971)))

(assert (=> d!2345152 (= (matchR!10285 lt!2672971 (t!388399 s!14292)) lt!2672981)))

(assert (= (and d!2345152 c!1433709) b!7780897))

(assert (= (and d!2345152 (not c!1433709)) b!7780899))

(assert (= (and d!2345152 c!1433707) b!7780905))

(assert (= (and d!2345152 (not c!1433707)) b!7780906))

(assert (= (and b!7780906 c!1433708) b!7780907))

(assert (= (and b!7780906 (not c!1433708)) b!7780908))

(assert (= (and b!7780908 (not res!3101537)) b!7780904))

(assert (= (and b!7780904 res!3101538) b!7780900))

(assert (= (and b!7780900 res!3101539) b!7780901))

(assert (= (and b!7780901 res!3101532) b!7780898))

(assert (= (and b!7780904 (not res!3101533)) b!7780903))

(assert (= (and b!7780903 res!3101534) b!7780909))

(assert (= (and b!7780909 (not res!3101536)) b!7780902))

(assert (= (and b!7780902 (not res!3101535)) b!7780910))

(assert (= (or b!7780905 b!7780900 b!7780909) bm!721203))

(declare-fun m!8229040 () Bool)

(assert (=> b!7780901 m!8229040))

(assert (=> b!7780901 m!8229040))

(declare-fun m!8229042 () Bool)

(assert (=> b!7780901 m!8229042))

(declare-fun m!8229044 () Bool)

(assert (=> bm!721203 m!8229044))

(assert (=> d!2345152 m!8229044))

(declare-fun m!8229046 () Bool)

(assert (=> d!2345152 m!8229046))

(declare-fun m!8229048 () Bool)

(assert (=> b!7780910 m!8229048))

(assert (=> b!7780898 m!8229048))

(assert (=> b!7780899 m!8229048))

(assert (=> b!7780899 m!8229048))

(declare-fun m!8229050 () Bool)

(assert (=> b!7780899 m!8229050))

(assert (=> b!7780899 m!8229040))

(assert (=> b!7780899 m!8229050))

(assert (=> b!7780899 m!8229040))

(declare-fun m!8229052 () Bool)

(assert (=> b!7780899 m!8229052))

(declare-fun m!8229054 () Bool)

(assert (=> b!7780897 m!8229054))

(assert (=> b!7780902 m!8229040))

(assert (=> b!7780902 m!8229040))

(assert (=> b!7780902 m!8229042))

(assert (=> b!7780802 d!2345152))

(declare-fun bm!721212 () Bool)

(declare-fun call!721217 () Regex!20825)

(declare-fun call!721219 () Regex!20825)

(assert (=> bm!721212 (= call!721217 call!721219)))

(declare-fun b!7780949 () Bool)

(declare-fun c!1433732 () Bool)

(assert (=> b!7780949 (= c!1433732 (nullable!9213 (regOne!42162 lt!2672976)))))

(declare-fun e!4609232 () Regex!20825)

(declare-fun e!4609235 () Regex!20825)

(assert (=> b!7780949 (= e!4609232 e!4609235)))

(declare-fun b!7780950 () Bool)

(assert (=> b!7780950 (= e!4609232 (Concat!29670 call!721219 lt!2672976))))

(declare-fun b!7780951 () Bool)

(declare-fun e!4609234 () Regex!20825)

(declare-fun call!721218 () Regex!20825)

(declare-fun call!721220 () Regex!20825)

(assert (=> b!7780951 (= e!4609234 (Union!20825 call!721218 call!721220))))

(declare-fun b!7780952 () Bool)

(declare-fun e!4609231 () Regex!20825)

(assert (=> b!7780952 (= e!4609231 (ite (= (h!79988 s!14292) (c!1433686 lt!2672976)) EmptyExpr!20825 EmptyLang!20825))))

(declare-fun c!1433729 () Bool)

(declare-fun bm!721213 () Bool)

(assert (=> bm!721213 (= call!721218 (derivativeStep!6168 (ite c!1433729 (regOne!42163 lt!2672976) (regOne!42162 lt!2672976)) (h!79988 s!14292)))))

(declare-fun b!7780953 () Bool)

(assert (=> b!7780953 (= c!1433729 ((_ is Union!20825) lt!2672976))))

(assert (=> b!7780953 (= e!4609231 e!4609234)))

(declare-fun bm!721214 () Bool)

(assert (=> bm!721214 (= call!721219 call!721220)))

(declare-fun b!7780954 () Bool)

(declare-fun e!4609233 () Regex!20825)

(assert (=> b!7780954 (= e!4609233 EmptyLang!20825)))

(declare-fun b!7780955 () Bool)

(assert (=> b!7780955 (= e!4609235 (Union!20825 (Concat!29670 call!721218 (regTwo!42162 lt!2672976)) call!721217))))

(declare-fun d!2345158 () Bool)

(declare-fun lt!2672992 () Regex!20825)

(assert (=> d!2345158 (validRegex!11239 lt!2672992)))

(assert (=> d!2345158 (= lt!2672992 e!4609233)))

(declare-fun c!1433733 () Bool)

(assert (=> d!2345158 (= c!1433733 (or ((_ is EmptyExpr!20825) lt!2672976) ((_ is EmptyLang!20825) lt!2672976)))))

(assert (=> d!2345158 (validRegex!11239 lt!2672976)))

(assert (=> d!2345158 (= (derivativeStep!6168 lt!2672976 (h!79988 s!14292)) lt!2672992)))

(declare-fun b!7780956 () Bool)

(assert (=> b!7780956 (= e!4609234 e!4609232)))

(declare-fun c!1433730 () Bool)

(assert (=> b!7780956 (= c!1433730 ((_ is Star!20825) lt!2672976))))

(declare-fun b!7780957 () Bool)

(assert (=> b!7780957 (= e!4609233 e!4609231)))

(declare-fun c!1433731 () Bool)

(assert (=> b!7780957 (= c!1433731 ((_ is ElementMatch!20825) lt!2672976))))

(declare-fun b!7780958 () Bool)

(assert (=> b!7780958 (= e!4609235 (Union!20825 (Concat!29670 call!721217 (regTwo!42162 lt!2672976)) EmptyLang!20825))))

(declare-fun bm!721215 () Bool)

(assert (=> bm!721215 (= call!721220 (derivativeStep!6168 (ite c!1433729 (regTwo!42163 lt!2672976) (ite c!1433730 (reg!21154 lt!2672976) (ite c!1433732 (regTwo!42162 lt!2672976) (regOne!42162 lt!2672976)))) (h!79988 s!14292)))))

(assert (= (and d!2345158 c!1433733) b!7780954))

(assert (= (and d!2345158 (not c!1433733)) b!7780957))

(assert (= (and b!7780957 c!1433731) b!7780952))

(assert (= (and b!7780957 (not c!1433731)) b!7780953))

(assert (= (and b!7780953 c!1433729) b!7780951))

(assert (= (and b!7780953 (not c!1433729)) b!7780956))

(assert (= (and b!7780956 c!1433730) b!7780950))

(assert (= (and b!7780956 (not c!1433730)) b!7780949))

(assert (= (and b!7780949 c!1433732) b!7780955))

(assert (= (and b!7780949 (not c!1433732)) b!7780958))

(assert (= (or b!7780955 b!7780958) bm!721212))

(assert (= (or b!7780950 bm!721212) bm!721214))

(assert (= (or b!7780951 bm!721214) bm!721215))

(assert (= (or b!7780951 b!7780955) bm!721213))

(declare-fun m!8229066 () Bool)

(assert (=> b!7780949 m!8229066))

(declare-fun m!8229068 () Bool)

(assert (=> bm!721213 m!8229068))

(declare-fun m!8229070 () Bool)

(assert (=> d!2345158 m!8229070))

(declare-fun m!8229072 () Bool)

(assert (=> d!2345158 m!8229072))

(declare-fun m!8229074 () Bool)

(assert (=> bm!721215 m!8229074))

(assert (=> b!7780802 d!2345158))

(declare-fun b!7780975 () Bool)

(declare-fun e!4609245 () Bool)

(assert (=> b!7780975 (= e!4609245 (nullable!9213 EmptyLang!20825))))

(declare-fun b!7780976 () Bool)

(declare-fun e!4609249 () Bool)

(assert (=> b!7780976 (= e!4609249 (= (head!15913 (t!388399 s!14292)) (c!1433686 EmptyLang!20825)))))

(declare-fun b!7780977 () Bool)

(assert (=> b!7780977 (= e!4609245 (matchR!10285 (derivativeStep!6168 EmptyLang!20825 (head!15913 (t!388399 s!14292))) (tail!15454 (t!388399 s!14292))))))

(declare-fun b!7780978 () Bool)

(declare-fun res!3101563 () Bool)

(assert (=> b!7780978 (=> (not res!3101563) (not e!4609249))))

(declare-fun call!721221 () Bool)

(assert (=> b!7780978 (= res!3101563 (not call!721221))))

(declare-fun b!7780979 () Bool)

(declare-fun res!3101556 () Bool)

(assert (=> b!7780979 (=> (not res!3101556) (not e!4609249))))

(assert (=> b!7780979 (= res!3101556 (isEmpty!42184 (tail!15454 (t!388399 s!14292))))))

(declare-fun b!7780980 () Bool)

(declare-fun res!3101559 () Bool)

(declare-fun e!4609244 () Bool)

(assert (=> b!7780980 (=> res!3101559 e!4609244)))

(assert (=> b!7780980 (= res!3101559 (not (isEmpty!42184 (tail!15454 (t!388399 s!14292)))))))

(declare-fun b!7780982 () Bool)

(declare-fun res!3101557 () Bool)

(declare-fun e!4609246 () Bool)

(assert (=> b!7780982 (=> res!3101557 e!4609246)))

(assert (=> b!7780982 (= res!3101557 e!4609249)))

(declare-fun res!3101562 () Bool)

(assert (=> b!7780982 (=> (not res!3101562) (not e!4609249))))

(declare-fun lt!2672993 () Bool)

(assert (=> b!7780982 (= res!3101562 lt!2672993)))

(declare-fun b!7780983 () Bool)

(declare-fun e!4609250 () Bool)

(assert (=> b!7780983 (= e!4609250 (= lt!2672993 call!721221))))

(declare-fun b!7780984 () Bool)

(declare-fun e!4609247 () Bool)

(assert (=> b!7780984 (= e!4609250 e!4609247)))

(declare-fun c!1433735 () Bool)

(assert (=> b!7780984 (= c!1433735 ((_ is EmptyLang!20825) EmptyLang!20825))))

(declare-fun bm!721216 () Bool)

(assert (=> bm!721216 (= call!721221 (isEmpty!42184 (t!388399 s!14292)))))

(declare-fun b!7780985 () Bool)

(assert (=> b!7780985 (= e!4609247 (not lt!2672993))))

(declare-fun b!7780986 () Bool)

(declare-fun res!3101561 () Bool)

(assert (=> b!7780986 (=> res!3101561 e!4609246)))

(assert (=> b!7780986 (= res!3101561 (not ((_ is ElementMatch!20825) EmptyLang!20825)))))

(assert (=> b!7780986 (= e!4609247 e!4609246)))

(declare-fun b!7780987 () Bool)

(declare-fun e!4609248 () Bool)

(assert (=> b!7780987 (= e!4609248 e!4609244)))

(declare-fun res!3101560 () Bool)

(assert (=> b!7780987 (=> res!3101560 e!4609244)))

(assert (=> b!7780987 (= res!3101560 call!721221)))

(declare-fun b!7780988 () Bool)

(assert (=> b!7780988 (= e!4609244 (not (= (head!15913 (t!388399 s!14292)) (c!1433686 EmptyLang!20825))))))

(declare-fun b!7780981 () Bool)

(assert (=> b!7780981 (= e!4609246 e!4609248)))

(declare-fun res!3101558 () Bool)

(assert (=> b!7780981 (=> (not res!3101558) (not e!4609248))))

(assert (=> b!7780981 (= res!3101558 (not lt!2672993))))

(declare-fun d!2345164 () Bool)

(assert (=> d!2345164 e!4609250))

(declare-fun c!1433734 () Bool)

(assert (=> d!2345164 (= c!1433734 ((_ is EmptyExpr!20825) EmptyLang!20825))))

(assert (=> d!2345164 (= lt!2672993 e!4609245)))

(declare-fun c!1433736 () Bool)

(assert (=> d!2345164 (= c!1433736 (isEmpty!42184 (t!388399 s!14292)))))

(assert (=> d!2345164 (validRegex!11239 EmptyLang!20825)))

(assert (=> d!2345164 (= (matchR!10285 EmptyLang!20825 (t!388399 s!14292)) lt!2672993)))

(assert (= (and d!2345164 c!1433736) b!7780975))

(assert (= (and d!2345164 (not c!1433736)) b!7780977))

(assert (= (and d!2345164 c!1433734) b!7780983))

(assert (= (and d!2345164 (not c!1433734)) b!7780984))

(assert (= (and b!7780984 c!1433735) b!7780985))

(assert (= (and b!7780984 (not c!1433735)) b!7780986))

(assert (= (and b!7780986 (not res!3101561)) b!7780982))

(assert (= (and b!7780982 res!3101562) b!7780978))

(assert (= (and b!7780978 res!3101563) b!7780979))

(assert (= (and b!7780979 res!3101556) b!7780976))

(assert (= (and b!7780982 (not res!3101557)) b!7780981))

(assert (= (and b!7780981 res!3101558) b!7780987))

(assert (= (and b!7780987 (not res!3101560)) b!7780980))

(assert (= (and b!7780980 (not res!3101559)) b!7780988))

(assert (= (or b!7780983 b!7780978 b!7780987) bm!721216))

(assert (=> b!7780979 m!8229040))

(assert (=> b!7780979 m!8229040))

(assert (=> b!7780979 m!8229042))

(assert (=> bm!721216 m!8229044))

(assert (=> d!2345164 m!8229044))

(declare-fun m!8229076 () Bool)

(assert (=> d!2345164 m!8229076))

(assert (=> b!7780988 m!8229048))

(assert (=> b!7780976 m!8229048))

(assert (=> b!7780977 m!8229048))

(assert (=> b!7780977 m!8229048))

(declare-fun m!8229078 () Bool)

(assert (=> b!7780977 m!8229078))

(assert (=> b!7780977 m!8229040))

(assert (=> b!7780977 m!8229078))

(assert (=> b!7780977 m!8229040))

(declare-fun m!8229080 () Bool)

(assert (=> b!7780977 m!8229080))

(declare-fun m!8229082 () Bool)

(assert (=> b!7780975 m!8229082))

(assert (=> b!7780980 m!8229040))

(assert (=> b!7780980 m!8229040))

(assert (=> b!7780980 m!8229042))

(assert (=> b!7780801 d!2345164))

(declare-fun d!2345166 () Bool)

(declare-fun nullableFct!3604 (Regex!20825) Bool)

(assert (=> d!2345166 (= (nullable!9213 r1!6279) (nullableFct!3604 r1!6279))))

(declare-fun bs!1966227 () Bool)

(assert (= bs!1966227 d!2345166))

(declare-fun m!8229084 () Bool)

(assert (=> bs!1966227 m!8229084))

(assert (=> b!7780787 d!2345166))

(declare-fun b!7780989 () Bool)

(declare-fun e!4609256 () Bool)

(declare-fun e!4609254 () Bool)

(assert (=> b!7780989 (= e!4609256 e!4609254)))

(declare-fun c!1433737 () Bool)

(assert (=> b!7780989 (= c!1433737 ((_ is Union!20825) lt!2672974))))

(declare-fun b!7780990 () Bool)

(declare-fun e!4609252 () Bool)

(declare-fun e!4609251 () Bool)

(assert (=> b!7780990 (= e!4609252 e!4609251)))

(declare-fun res!3101568 () Bool)

(assert (=> b!7780990 (=> (not res!3101568) (not e!4609251))))

(declare-fun call!721225 () Bool)

(assert (=> b!7780990 (= res!3101568 call!721225)))

(declare-fun b!7780991 () Bool)

(declare-fun e!4609257 () Bool)

(assert (=> b!7780991 (= e!4609257 e!4609256)))

(declare-fun c!1433738 () Bool)

(assert (=> b!7780991 (= c!1433738 ((_ is Star!20825) lt!2672974))))

(declare-fun bm!721219 () Bool)

(assert (=> bm!721219 (= call!721225 (validRegex!11239 (ite c!1433737 (regOne!42163 lt!2672974) (regOne!42162 lt!2672974))))))

(declare-fun d!2345168 () Bool)

(declare-fun res!3101567 () Bool)

(assert (=> d!2345168 (=> res!3101567 e!4609257)))

(assert (=> d!2345168 (= res!3101567 ((_ is ElementMatch!20825) lt!2672974))))

(assert (=> d!2345168 (= (validRegex!11239 lt!2672974) e!4609257)))

(declare-fun bm!721220 () Bool)

(declare-fun call!721226 () Bool)

(assert (=> bm!721220 (= call!721226 (validRegex!11239 (ite c!1433738 (reg!21154 lt!2672974) (ite c!1433737 (regTwo!42163 lt!2672974) (regTwo!42162 lt!2672974)))))))

(declare-fun bm!721221 () Bool)

(declare-fun call!721224 () Bool)

(assert (=> bm!721221 (= call!721224 call!721226)))

(declare-fun b!7780992 () Bool)

(declare-fun res!3101566 () Bool)

(declare-fun e!4609253 () Bool)

(assert (=> b!7780992 (=> (not res!3101566) (not e!4609253))))

(assert (=> b!7780992 (= res!3101566 call!721225)))

(assert (=> b!7780992 (= e!4609254 e!4609253)))

(declare-fun b!7780993 () Bool)

(assert (=> b!7780993 (= e!4609251 call!721224)))

(declare-fun b!7780994 () Bool)

(assert (=> b!7780994 (= e!4609253 call!721224)))

(declare-fun b!7780995 () Bool)

(declare-fun e!4609255 () Bool)

(assert (=> b!7780995 (= e!4609256 e!4609255)))

(declare-fun res!3101565 () Bool)

(assert (=> b!7780995 (= res!3101565 (not (nullable!9213 (reg!21154 lt!2672974))))))

(assert (=> b!7780995 (=> (not res!3101565) (not e!4609255))))

(declare-fun b!7780996 () Bool)

(declare-fun res!3101564 () Bool)

(assert (=> b!7780996 (=> res!3101564 e!4609252)))

(assert (=> b!7780996 (= res!3101564 (not ((_ is Concat!29670) lt!2672974)))))

(assert (=> b!7780996 (= e!4609254 e!4609252)))

(declare-fun b!7780997 () Bool)

(assert (=> b!7780997 (= e!4609255 call!721226)))

(assert (= (and d!2345168 (not res!3101567)) b!7780991))

(assert (= (and b!7780991 c!1433738) b!7780995))

(assert (= (and b!7780991 (not c!1433738)) b!7780989))

(assert (= (and b!7780995 res!3101565) b!7780997))

(assert (= (and b!7780989 c!1433737) b!7780992))

(assert (= (and b!7780989 (not c!1433737)) b!7780996))

(assert (= (and b!7780992 res!3101566) b!7780994))

(assert (= (and b!7780996 (not res!3101564)) b!7780990))

(assert (= (and b!7780990 res!3101568) b!7780993))

(assert (= (or b!7780992 b!7780990) bm!721219))

(assert (= (or b!7780994 b!7780993) bm!721221))

(assert (= (or b!7780997 bm!721221) bm!721220))

(declare-fun m!8229086 () Bool)

(assert (=> bm!721219 m!8229086))

(declare-fun m!8229088 () Bool)

(assert (=> bm!721220 m!8229088))

(declare-fun m!8229090 () Bool)

(assert (=> b!7780995 m!8229090))

(assert (=> b!7780797 d!2345168))

(declare-fun d!2345170 () Bool)

(declare-fun isEmpty!42186 (Option!17746) Bool)

(assert (=> d!2345170 (= (isDefined!14358 (findConcatSeparation!3776 lt!2672974 r2!6217 Nil!73540 (t!388399 s!14292) (t!388399 s!14292))) (not (isEmpty!42186 (findConcatSeparation!3776 lt!2672974 r2!6217 Nil!73540 (t!388399 s!14292) (t!388399 s!14292)))))))

(declare-fun bs!1966228 () Bool)

(assert (= bs!1966228 d!2345170))

(assert (=> bs!1966228 m!8229014))

(declare-fun m!8229092 () Bool)

(assert (=> bs!1966228 m!8229092))

(assert (=> b!7780797 d!2345170))

(declare-fun b!7781056 () Bool)

(declare-fun e!4609291 () Bool)

(assert (=> b!7781056 (= e!4609291 (matchR!10285 r2!6217 (t!388399 s!14292)))))

(declare-fun b!7781057 () Bool)

(declare-fun e!4609295 () Bool)

(declare-fun lt!2673006 () Option!17746)

(declare-fun get!26284 (Option!17746) tuple2!69904)

(assert (=> b!7781057 (= e!4609295 (= (++!17919 (_1!38255 (get!26284 lt!2673006)) (_2!38255 (get!26284 lt!2673006))) (t!388399 s!14292)))))

(declare-fun b!7781058 () Bool)

(declare-fun e!4609292 () Option!17746)

(declare-fun e!4609294 () Option!17746)

(assert (=> b!7781058 (= e!4609292 e!4609294)))

(declare-fun c!1433756 () Bool)

(assert (=> b!7781058 (= c!1433756 ((_ is Nil!73540) (t!388399 s!14292)))))

(declare-fun b!7781059 () Bool)

(assert (=> b!7781059 (= e!4609294 None!17745)))

(declare-fun b!7781060 () Bool)

(declare-fun e!4609293 () Bool)

(assert (=> b!7781060 (= e!4609293 (not (isDefined!14358 lt!2673006)))))

(declare-fun b!7781062 () Bool)

(assert (=> b!7781062 (= e!4609292 (Some!17745 (tuple2!69905 Nil!73540 (t!388399 s!14292))))))

(declare-fun b!7781063 () Bool)

(declare-fun lt!2673007 () Unit!168540)

(declare-fun lt!2673008 () Unit!168540)

(assert (=> b!7781063 (= lt!2673007 lt!2673008)))

(assert (=> b!7781063 (= (++!17919 (++!17919 Nil!73540 (Cons!73540 (h!79988 (t!388399 s!14292)) Nil!73540)) (t!388399 (t!388399 s!14292))) (t!388399 s!14292))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3395 (List!73664 C!41976 List!73664 List!73664) Unit!168540)

(assert (=> b!7781063 (= lt!2673008 (lemmaMoveElementToOtherListKeepsConcatEq!3395 Nil!73540 (h!79988 (t!388399 s!14292)) (t!388399 (t!388399 s!14292)) (t!388399 s!14292)))))

(assert (=> b!7781063 (= e!4609294 (findConcatSeparation!3776 lt!2672974 r2!6217 (++!17919 Nil!73540 (Cons!73540 (h!79988 (t!388399 s!14292)) Nil!73540)) (t!388399 (t!388399 s!14292)) (t!388399 s!14292)))))

(declare-fun b!7781064 () Bool)

(declare-fun res!3101595 () Bool)

(assert (=> b!7781064 (=> (not res!3101595) (not e!4609295))))

(assert (=> b!7781064 (= res!3101595 (matchR!10285 lt!2672974 (_1!38255 (get!26284 lt!2673006))))))

(declare-fun d!2345172 () Bool)

(assert (=> d!2345172 e!4609293))

(declare-fun res!3101593 () Bool)

(assert (=> d!2345172 (=> res!3101593 e!4609293)))

(assert (=> d!2345172 (= res!3101593 e!4609295)))

(declare-fun res!3101596 () Bool)

(assert (=> d!2345172 (=> (not res!3101596) (not e!4609295))))

(assert (=> d!2345172 (= res!3101596 (isDefined!14358 lt!2673006))))

(assert (=> d!2345172 (= lt!2673006 e!4609292)))

(declare-fun c!1433757 () Bool)

(assert (=> d!2345172 (= c!1433757 e!4609291)))

(declare-fun res!3101594 () Bool)

(assert (=> d!2345172 (=> (not res!3101594) (not e!4609291))))

(assert (=> d!2345172 (= res!3101594 (matchR!10285 lt!2672974 Nil!73540))))

(assert (=> d!2345172 (validRegex!11239 lt!2672974)))

(assert (=> d!2345172 (= (findConcatSeparation!3776 lt!2672974 r2!6217 Nil!73540 (t!388399 s!14292) (t!388399 s!14292)) lt!2673006)))

(declare-fun b!7781061 () Bool)

(declare-fun res!3101597 () Bool)

(assert (=> b!7781061 (=> (not res!3101597) (not e!4609295))))

(assert (=> b!7781061 (= res!3101597 (matchR!10285 r2!6217 (_2!38255 (get!26284 lt!2673006))))))

(assert (= (and d!2345172 res!3101594) b!7781056))

(assert (= (and d!2345172 c!1433757) b!7781062))

(assert (= (and d!2345172 (not c!1433757)) b!7781058))

(assert (= (and b!7781058 c!1433756) b!7781059))

(assert (= (and b!7781058 (not c!1433756)) b!7781063))

(assert (= (and d!2345172 res!3101596) b!7781064))

(assert (= (and b!7781064 res!3101595) b!7781061))

(assert (= (and b!7781061 res!3101597) b!7781057))

(assert (= (and d!2345172 (not res!3101593)) b!7781060))

(declare-fun m!8229114 () Bool)

(assert (=> b!7781061 m!8229114))

(declare-fun m!8229116 () Bool)

(assert (=> b!7781061 m!8229116))

(declare-fun m!8229118 () Bool)

(assert (=> d!2345172 m!8229118))

(declare-fun m!8229120 () Bool)

(assert (=> d!2345172 m!8229120))

(assert (=> d!2345172 m!8229012))

(declare-fun m!8229122 () Bool)

(assert (=> b!7781056 m!8229122))

(declare-fun m!8229124 () Bool)

(assert (=> b!7781063 m!8229124))

(assert (=> b!7781063 m!8229124))

(declare-fun m!8229126 () Bool)

(assert (=> b!7781063 m!8229126))

(declare-fun m!8229128 () Bool)

(assert (=> b!7781063 m!8229128))

(assert (=> b!7781063 m!8229124))

(declare-fun m!8229130 () Bool)

(assert (=> b!7781063 m!8229130))

(assert (=> b!7781060 m!8229118))

(assert (=> b!7781057 m!8229114))

(declare-fun m!8229132 () Bool)

(assert (=> b!7781057 m!8229132))

(assert (=> b!7781064 m!8229114))

(declare-fun m!8229134 () Bool)

(assert (=> b!7781064 m!8229134))

(assert (=> b!7780797 d!2345172))

(declare-fun d!2345180 () Bool)

(assert (=> d!2345180 (isDefined!14358 (findConcatSeparation!3776 lt!2672974 r2!6217 Nil!73540 (t!388399 s!14292) (t!388399 s!14292)))))

(declare-fun lt!2673013 () Unit!168540)

(declare-fun choose!59504 (Regex!20825 Regex!20825 List!73664) Unit!168540)

(assert (=> d!2345180 (= lt!2673013 (choose!59504 lt!2672974 r2!6217 (t!388399 s!14292)))))

(assert (=> d!2345180 (validRegex!11239 lt!2672974)))

(assert (=> d!2345180 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!366 lt!2672974 r2!6217 (t!388399 s!14292)) lt!2673013)))

(declare-fun bs!1966230 () Bool)

(assert (= bs!1966230 d!2345180))

(assert (=> bs!1966230 m!8229014))

(assert (=> bs!1966230 m!8229014))

(assert (=> bs!1966230 m!8229016))

(declare-fun m!8229156 () Bool)

(assert (=> bs!1966230 m!8229156))

(assert (=> bs!1966230 m!8229012))

(assert (=> b!7780797 d!2345180))

(declare-fun b!7781089 () Bool)

(declare-fun e!4609309 () Bool)

(assert (=> b!7781089 (= e!4609309 (nullable!9213 lt!2672976))))

(declare-fun b!7781090 () Bool)

(declare-fun e!4609313 () Bool)

(assert (=> b!7781090 (= e!4609313 (= (head!15913 s!14292) (c!1433686 lt!2672976)))))

(declare-fun b!7781091 () Bool)

(assert (=> b!7781091 (= e!4609309 (matchR!10285 (derivativeStep!6168 lt!2672976 (head!15913 s!14292)) (tail!15454 s!14292)))))

(declare-fun b!7781092 () Bool)

(declare-fun res!3101613 () Bool)

(assert (=> b!7781092 (=> (not res!3101613) (not e!4609313))))

(declare-fun call!721241 () Bool)

(assert (=> b!7781092 (= res!3101613 (not call!721241))))

(declare-fun b!7781093 () Bool)

(declare-fun res!3101606 () Bool)

(assert (=> b!7781093 (=> (not res!3101606) (not e!4609313))))

(assert (=> b!7781093 (= res!3101606 (isEmpty!42184 (tail!15454 s!14292)))))

(declare-fun b!7781094 () Bool)

(declare-fun res!3101609 () Bool)

(declare-fun e!4609308 () Bool)

(assert (=> b!7781094 (=> res!3101609 e!4609308)))

(assert (=> b!7781094 (= res!3101609 (not (isEmpty!42184 (tail!15454 s!14292))))))

(declare-fun b!7781096 () Bool)

(declare-fun res!3101607 () Bool)

(declare-fun e!4609310 () Bool)

(assert (=> b!7781096 (=> res!3101607 e!4609310)))

(assert (=> b!7781096 (= res!3101607 e!4609313)))

(declare-fun res!3101612 () Bool)

(assert (=> b!7781096 (=> (not res!3101612) (not e!4609313))))

(declare-fun lt!2673014 () Bool)

(assert (=> b!7781096 (= res!3101612 lt!2673014)))

(declare-fun b!7781097 () Bool)

(declare-fun e!4609314 () Bool)

(assert (=> b!7781097 (= e!4609314 (= lt!2673014 call!721241))))

(declare-fun b!7781098 () Bool)

(declare-fun e!4609311 () Bool)

(assert (=> b!7781098 (= e!4609314 e!4609311)))

(declare-fun c!1433767 () Bool)

(assert (=> b!7781098 (= c!1433767 ((_ is EmptyLang!20825) lt!2672976))))

(declare-fun bm!721236 () Bool)

(assert (=> bm!721236 (= call!721241 (isEmpty!42184 s!14292))))

(declare-fun b!7781099 () Bool)

(assert (=> b!7781099 (= e!4609311 (not lt!2673014))))

(declare-fun b!7781100 () Bool)

(declare-fun res!3101611 () Bool)

(assert (=> b!7781100 (=> res!3101611 e!4609310)))

(assert (=> b!7781100 (= res!3101611 (not ((_ is ElementMatch!20825) lt!2672976)))))

(assert (=> b!7781100 (= e!4609311 e!4609310)))

(declare-fun b!7781101 () Bool)

(declare-fun e!4609312 () Bool)

(assert (=> b!7781101 (= e!4609312 e!4609308)))

(declare-fun res!3101610 () Bool)

(assert (=> b!7781101 (=> res!3101610 e!4609308)))

(assert (=> b!7781101 (= res!3101610 call!721241)))

(declare-fun b!7781102 () Bool)

(assert (=> b!7781102 (= e!4609308 (not (= (head!15913 s!14292) (c!1433686 lt!2672976))))))

(declare-fun b!7781095 () Bool)

(assert (=> b!7781095 (= e!4609310 e!4609312)))

(declare-fun res!3101608 () Bool)

(assert (=> b!7781095 (=> (not res!3101608) (not e!4609312))))

(assert (=> b!7781095 (= res!3101608 (not lt!2673014))))

(declare-fun d!2345184 () Bool)

(assert (=> d!2345184 e!4609314))

(declare-fun c!1433766 () Bool)

(assert (=> d!2345184 (= c!1433766 ((_ is EmptyExpr!20825) lt!2672976))))

(assert (=> d!2345184 (= lt!2673014 e!4609309)))

(declare-fun c!1433768 () Bool)

(assert (=> d!2345184 (= c!1433768 (isEmpty!42184 s!14292))))

(assert (=> d!2345184 (validRegex!11239 lt!2672976)))

(assert (=> d!2345184 (= (matchR!10285 lt!2672976 s!14292) lt!2673014)))

(assert (= (and d!2345184 c!1433768) b!7781089))

(assert (= (and d!2345184 (not c!1433768)) b!7781091))

(assert (= (and d!2345184 c!1433766) b!7781097))

(assert (= (and d!2345184 (not c!1433766)) b!7781098))

(assert (= (and b!7781098 c!1433767) b!7781099))

(assert (= (and b!7781098 (not c!1433767)) b!7781100))

(assert (= (and b!7781100 (not res!3101611)) b!7781096))

(assert (= (and b!7781096 res!3101612) b!7781092))

(assert (= (and b!7781092 res!3101613) b!7781093))

(assert (= (and b!7781093 res!3101606) b!7781090))

(assert (= (and b!7781096 (not res!3101607)) b!7781095))

(assert (= (and b!7781095 res!3101608) b!7781101))

(assert (= (and b!7781101 (not res!3101610)) b!7781094))

(assert (= (and b!7781094 (not res!3101609)) b!7781102))

(assert (= (or b!7781097 b!7781092 b!7781101) bm!721236))

(declare-fun m!8229162 () Bool)

(assert (=> b!7781093 m!8229162))

(assert (=> b!7781093 m!8229162))

(declare-fun m!8229164 () Bool)

(assert (=> b!7781093 m!8229164))

(declare-fun m!8229166 () Bool)

(assert (=> bm!721236 m!8229166))

(assert (=> d!2345184 m!8229166))

(assert (=> d!2345184 m!8229072))

(declare-fun m!8229168 () Bool)

(assert (=> b!7781102 m!8229168))

(assert (=> b!7781090 m!8229168))

(assert (=> b!7781091 m!8229168))

(assert (=> b!7781091 m!8229168))

(declare-fun m!8229170 () Bool)

(assert (=> b!7781091 m!8229170))

(assert (=> b!7781091 m!8229162))

(assert (=> b!7781091 m!8229170))

(assert (=> b!7781091 m!8229162))

(declare-fun m!8229172 () Bool)

(assert (=> b!7781091 m!8229172))

(declare-fun m!8229174 () Bool)

(assert (=> b!7781089 m!8229174))

(assert (=> b!7781094 m!8229162))

(assert (=> b!7781094 m!8229162))

(assert (=> b!7781094 m!8229164))

(assert (=> b!7780792 d!2345184))

(declare-fun bm!721237 () Bool)

(declare-fun call!721242 () Regex!20825)

(declare-fun call!721244 () Regex!20825)

(assert (=> bm!721237 (= call!721242 call!721244)))

(declare-fun b!7781103 () Bool)

(declare-fun c!1433772 () Bool)

(assert (=> b!7781103 (= c!1433772 (nullable!9213 (regOne!42162 r1!6279)))))

(declare-fun e!4609316 () Regex!20825)

(declare-fun e!4609319 () Regex!20825)

(assert (=> b!7781103 (= e!4609316 e!4609319)))

(declare-fun b!7781104 () Bool)

(assert (=> b!7781104 (= e!4609316 (Concat!29670 call!721244 r1!6279))))

(declare-fun b!7781105 () Bool)

(declare-fun e!4609318 () Regex!20825)

(declare-fun call!721243 () Regex!20825)

(declare-fun call!721245 () Regex!20825)

(assert (=> b!7781105 (= e!4609318 (Union!20825 call!721243 call!721245))))

(declare-fun b!7781106 () Bool)

(declare-fun e!4609315 () Regex!20825)

(assert (=> b!7781106 (= e!4609315 (ite (= (h!79988 s!14292) (c!1433686 r1!6279)) EmptyExpr!20825 EmptyLang!20825))))

(declare-fun c!1433769 () Bool)

(declare-fun bm!721238 () Bool)

(assert (=> bm!721238 (= call!721243 (derivativeStep!6168 (ite c!1433769 (regOne!42163 r1!6279) (regOne!42162 r1!6279)) (h!79988 s!14292)))))

(declare-fun b!7781107 () Bool)

(assert (=> b!7781107 (= c!1433769 ((_ is Union!20825) r1!6279))))

(assert (=> b!7781107 (= e!4609315 e!4609318)))

(declare-fun bm!721239 () Bool)

(assert (=> bm!721239 (= call!721244 call!721245)))

(declare-fun b!7781108 () Bool)

(declare-fun e!4609317 () Regex!20825)

(assert (=> b!7781108 (= e!4609317 EmptyLang!20825)))

(declare-fun b!7781109 () Bool)

(assert (=> b!7781109 (= e!4609319 (Union!20825 (Concat!29670 call!721243 (regTwo!42162 r1!6279)) call!721242))))

(declare-fun d!2345188 () Bool)

(declare-fun lt!2673015 () Regex!20825)

(assert (=> d!2345188 (validRegex!11239 lt!2673015)))

(assert (=> d!2345188 (= lt!2673015 e!4609317)))

(declare-fun c!1433773 () Bool)

(assert (=> d!2345188 (= c!1433773 (or ((_ is EmptyExpr!20825) r1!6279) ((_ is EmptyLang!20825) r1!6279)))))

(assert (=> d!2345188 (validRegex!11239 r1!6279)))

(assert (=> d!2345188 (= (derivativeStep!6168 r1!6279 (h!79988 s!14292)) lt!2673015)))

(declare-fun b!7781110 () Bool)

(assert (=> b!7781110 (= e!4609318 e!4609316)))

(declare-fun c!1433770 () Bool)

(assert (=> b!7781110 (= c!1433770 ((_ is Star!20825) r1!6279))))

(declare-fun b!7781111 () Bool)

(assert (=> b!7781111 (= e!4609317 e!4609315)))

(declare-fun c!1433771 () Bool)

(assert (=> b!7781111 (= c!1433771 ((_ is ElementMatch!20825) r1!6279))))

(declare-fun b!7781112 () Bool)

(assert (=> b!7781112 (= e!4609319 (Union!20825 (Concat!29670 call!721242 (regTwo!42162 r1!6279)) EmptyLang!20825))))

(declare-fun bm!721240 () Bool)

(assert (=> bm!721240 (= call!721245 (derivativeStep!6168 (ite c!1433769 (regTwo!42163 r1!6279) (ite c!1433770 (reg!21154 r1!6279) (ite c!1433772 (regTwo!42162 r1!6279) (regOne!42162 r1!6279)))) (h!79988 s!14292)))))

(assert (= (and d!2345188 c!1433773) b!7781108))

(assert (= (and d!2345188 (not c!1433773)) b!7781111))

(assert (= (and b!7781111 c!1433771) b!7781106))

(assert (= (and b!7781111 (not c!1433771)) b!7781107))

(assert (= (and b!7781107 c!1433769) b!7781105))

(assert (= (and b!7781107 (not c!1433769)) b!7781110))

(assert (= (and b!7781110 c!1433770) b!7781104))

(assert (= (and b!7781110 (not c!1433770)) b!7781103))

(assert (= (and b!7781103 c!1433772) b!7781109))

(assert (= (and b!7781103 (not c!1433772)) b!7781112))

(assert (= (or b!7781109 b!7781112) bm!721237))

(assert (= (or b!7781104 bm!721237) bm!721239))

(assert (= (or b!7781105 bm!721239) bm!721240))

(assert (= (or b!7781105 b!7781109) bm!721238))

(declare-fun m!8229176 () Bool)

(assert (=> b!7781103 m!8229176))

(declare-fun m!8229178 () Bool)

(assert (=> bm!721238 m!8229178))

(declare-fun m!8229180 () Bool)

(assert (=> d!2345188 m!8229180))

(assert (=> d!2345188 m!8228998))

(declare-fun m!8229182 () Bool)

(assert (=> bm!721240 m!8229182))

(assert (=> b!7780793 d!2345188))

(declare-fun d!2345190 () Bool)

(declare-fun lt!2673021 () Regex!20825)

(assert (=> d!2345190 (validRegex!11239 lt!2673021)))

(declare-fun e!4609328 () Regex!20825)

(assert (=> d!2345190 (= lt!2673021 e!4609328)))

(declare-fun c!1433779 () Bool)

(assert (=> d!2345190 (= c!1433779 ((_ is Cons!73540) (t!388399 s!14292)))))

(assert (=> d!2345190 (validRegex!11239 EmptyLang!20825)))

(assert (=> d!2345190 (= (derivative!553 EmptyLang!20825 (t!388399 s!14292)) lt!2673021)))

(declare-fun b!7781129 () Bool)

(assert (=> b!7781129 (= e!4609328 (derivative!553 (derivativeStep!6168 EmptyLang!20825 (h!79988 (t!388399 s!14292))) (t!388399 (t!388399 s!14292))))))

(declare-fun b!7781130 () Bool)

(assert (=> b!7781130 (= e!4609328 EmptyLang!20825)))

(assert (= (and d!2345190 c!1433779) b!7781129))

(assert (= (and d!2345190 (not c!1433779)) b!7781130))

(declare-fun m!8229198 () Bool)

(assert (=> d!2345190 m!8229198))

(assert (=> d!2345190 m!8229076))

(declare-fun m!8229200 () Bool)

(assert (=> b!7781129 m!8229200))

(assert (=> b!7781129 m!8229200))

(declare-fun m!8229202 () Bool)

(assert (=> b!7781129 m!8229202))

(assert (=> b!7780788 d!2345190))

(declare-fun d!2345194 () Bool)

(assert (=> d!2345194 (= (derivative!553 EmptyLang!20825 (t!388399 s!14292)) EmptyLang!20825)))

(declare-fun lt!2673024 () Unit!168540)

(declare-fun choose!59506 (Regex!20825 List!73664) Unit!168540)

(assert (=> d!2345194 (= lt!2673024 (choose!59506 EmptyLang!20825 (t!388399 s!14292)))))

(assert (=> d!2345194 (= EmptyLang!20825 EmptyLang!20825)))

(assert (=> d!2345194 (= (lemmaEmptyLangDerivativeIsAFixPoint!88 EmptyLang!20825 (t!388399 s!14292)) lt!2673024)))

(declare-fun bs!1966232 () Bool)

(assert (= bs!1966232 d!2345194))

(assert (=> bs!1966232 m!8228988))

(declare-fun m!8229212 () Bool)

(assert (=> bs!1966232 m!8229212))

(assert (=> b!7780788 d!2345194))

(declare-fun b!7781140 () Bool)

(declare-fun e!4609337 () Bool)

(assert (=> b!7781140 (= e!4609337 (nullable!9213 lt!2672977))))

(declare-fun b!7781141 () Bool)

(declare-fun e!4609341 () Bool)

(assert (=> b!7781141 (= e!4609341 (= (head!15913 (t!388399 s!14292)) (c!1433686 lt!2672977)))))

(declare-fun b!7781142 () Bool)

(assert (=> b!7781142 (= e!4609337 (matchR!10285 (derivativeStep!6168 lt!2672977 (head!15913 (t!388399 s!14292))) (tail!15454 (t!388399 s!14292))))))

(declare-fun b!7781143 () Bool)

(declare-fun res!3101632 () Bool)

(assert (=> b!7781143 (=> (not res!3101632) (not e!4609341))))

(declare-fun call!721249 () Bool)

(assert (=> b!7781143 (= res!3101632 (not call!721249))))

(declare-fun b!7781144 () Bool)

(declare-fun res!3101625 () Bool)

(assert (=> b!7781144 (=> (not res!3101625) (not e!4609341))))

(assert (=> b!7781144 (= res!3101625 (isEmpty!42184 (tail!15454 (t!388399 s!14292))))))

(declare-fun b!7781145 () Bool)

(declare-fun res!3101628 () Bool)

(declare-fun e!4609336 () Bool)

(assert (=> b!7781145 (=> res!3101628 e!4609336)))

(assert (=> b!7781145 (= res!3101628 (not (isEmpty!42184 (tail!15454 (t!388399 s!14292)))))))

(declare-fun b!7781147 () Bool)

(declare-fun res!3101626 () Bool)

(declare-fun e!4609338 () Bool)

(assert (=> b!7781147 (=> res!3101626 e!4609338)))

(assert (=> b!7781147 (= res!3101626 e!4609341)))

(declare-fun res!3101631 () Bool)

(assert (=> b!7781147 (=> (not res!3101631) (not e!4609341))))

(declare-fun lt!2673025 () Bool)

(assert (=> b!7781147 (= res!3101631 lt!2673025)))

(declare-fun b!7781148 () Bool)

(declare-fun e!4609342 () Bool)

(assert (=> b!7781148 (= e!4609342 (= lt!2673025 call!721249))))

(declare-fun b!7781149 () Bool)

(declare-fun e!4609339 () Bool)

(assert (=> b!7781149 (= e!4609342 e!4609339)))

(declare-fun c!1433783 () Bool)

(assert (=> b!7781149 (= c!1433783 ((_ is EmptyLang!20825) lt!2672977))))

(declare-fun bm!721244 () Bool)

(assert (=> bm!721244 (= call!721249 (isEmpty!42184 (t!388399 s!14292)))))

(declare-fun b!7781150 () Bool)

(assert (=> b!7781150 (= e!4609339 (not lt!2673025))))

(declare-fun b!7781151 () Bool)

(declare-fun res!3101630 () Bool)

(assert (=> b!7781151 (=> res!3101630 e!4609338)))

(assert (=> b!7781151 (= res!3101630 (not ((_ is ElementMatch!20825) lt!2672977)))))

(assert (=> b!7781151 (= e!4609339 e!4609338)))

(declare-fun b!7781152 () Bool)

(declare-fun e!4609340 () Bool)

(assert (=> b!7781152 (= e!4609340 e!4609336)))

(declare-fun res!3101629 () Bool)

(assert (=> b!7781152 (=> res!3101629 e!4609336)))

(assert (=> b!7781152 (= res!3101629 call!721249)))

(declare-fun b!7781153 () Bool)

(assert (=> b!7781153 (= e!4609336 (not (= (head!15913 (t!388399 s!14292)) (c!1433686 lt!2672977))))))

(declare-fun b!7781146 () Bool)

(assert (=> b!7781146 (= e!4609338 e!4609340)))

(declare-fun res!3101627 () Bool)

(assert (=> b!7781146 (=> (not res!3101627) (not e!4609340))))

(assert (=> b!7781146 (= res!3101627 (not lt!2673025))))

(declare-fun d!2345200 () Bool)

(assert (=> d!2345200 e!4609342))

(declare-fun c!1433782 () Bool)

(assert (=> d!2345200 (= c!1433782 ((_ is EmptyExpr!20825) lt!2672977))))

(assert (=> d!2345200 (= lt!2673025 e!4609337)))

(declare-fun c!1433784 () Bool)

(assert (=> d!2345200 (= c!1433784 (isEmpty!42184 (t!388399 s!14292)))))

(assert (=> d!2345200 (validRegex!11239 lt!2672977)))

(assert (=> d!2345200 (= (matchR!10285 lt!2672977 (t!388399 s!14292)) lt!2673025)))

(assert (= (and d!2345200 c!1433784) b!7781140))

(assert (= (and d!2345200 (not c!1433784)) b!7781142))

(assert (= (and d!2345200 c!1433782) b!7781148))

(assert (= (and d!2345200 (not c!1433782)) b!7781149))

(assert (= (and b!7781149 c!1433783) b!7781150))

(assert (= (and b!7781149 (not c!1433783)) b!7781151))

(assert (= (and b!7781151 (not res!3101630)) b!7781147))

(assert (= (and b!7781147 res!3101631) b!7781143))

(assert (= (and b!7781143 res!3101632) b!7781144))

(assert (= (and b!7781144 res!3101625) b!7781141))

(assert (= (and b!7781147 (not res!3101626)) b!7781146))

(assert (= (and b!7781146 res!3101627) b!7781152))

(assert (= (and b!7781152 (not res!3101629)) b!7781145))

(assert (= (and b!7781145 (not res!3101628)) b!7781153))

(assert (= (or b!7781148 b!7781143 b!7781152) bm!721244))

(assert (=> b!7781144 m!8229040))

(assert (=> b!7781144 m!8229040))

(assert (=> b!7781144 m!8229042))

(assert (=> bm!721244 m!8229044))

(assert (=> d!2345200 m!8229044))

(declare-fun m!8229214 () Bool)

(assert (=> d!2345200 m!8229214))

(assert (=> b!7781153 m!8229048))

(assert (=> b!7781141 m!8229048))

(assert (=> b!7781142 m!8229048))

(assert (=> b!7781142 m!8229048))

(declare-fun m!8229216 () Bool)

(assert (=> b!7781142 m!8229216))

(assert (=> b!7781142 m!8229040))

(assert (=> b!7781142 m!8229216))

(assert (=> b!7781142 m!8229040))

(declare-fun m!8229218 () Bool)

(assert (=> b!7781142 m!8229218))

(declare-fun m!8229220 () Bool)

(assert (=> b!7781140 m!8229220))

(assert (=> b!7781145 m!8229040))

(assert (=> b!7781145 m!8229040))

(assert (=> b!7781145 m!8229042))

(assert (=> b!7780788 d!2345200))

(declare-fun d!2345202 () Bool)

(declare-fun e!4609347 () Bool)

(assert (=> d!2345202 e!4609347))

(declare-fun res!3101637 () Bool)

(assert (=> d!2345202 (=> res!3101637 e!4609347)))

(assert (=> d!2345202 (= res!3101637 (matchR!10285 lt!2672977 (t!388399 s!14292)))))

(declare-fun lt!2673028 () Unit!168540)

(declare-fun choose!59507 (Regex!20825 Regex!20825 List!73664) Unit!168540)

(assert (=> d!2345202 (= lt!2673028 (choose!59507 lt!2672977 EmptyLang!20825 (t!388399 s!14292)))))

(declare-fun e!4609348 () Bool)

(assert (=> d!2345202 e!4609348))

(declare-fun res!3101638 () Bool)

(assert (=> d!2345202 (=> (not res!3101638) (not e!4609348))))

(assert (=> d!2345202 (= res!3101638 (validRegex!11239 lt!2672977))))

(assert (=> d!2345202 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!394 lt!2672977 EmptyLang!20825 (t!388399 s!14292)) lt!2673028)))

(declare-fun b!7781158 () Bool)

(assert (=> b!7781158 (= e!4609348 (validRegex!11239 EmptyLang!20825))))

(declare-fun b!7781159 () Bool)

(assert (=> b!7781159 (= e!4609347 (matchR!10285 EmptyLang!20825 (t!388399 s!14292)))))

(assert (= (and d!2345202 res!3101638) b!7781158))

(assert (= (and d!2345202 (not res!3101637)) b!7781159))

(assert (=> d!2345202 m!8228992))

(declare-fun m!8229222 () Bool)

(assert (=> d!2345202 m!8229222))

(assert (=> d!2345202 m!8229214))

(assert (=> b!7781158 m!8229076))

(assert (=> b!7781159 m!8229020))

(assert (=> b!7780788 d!2345202))

(declare-fun b!7781195 () Bool)

(declare-fun e!4609369 () List!73664)

(assert (=> b!7781195 (= e!4609369 (t!388399 s!14292))))

(declare-fun b!7781196 () Bool)

(assert (=> b!7781196 (= e!4609369 (Cons!73540 (h!79988 Nil!73540) (++!17919 (t!388399 Nil!73540) (t!388399 s!14292))))))

(declare-fun b!7781197 () Bool)

(declare-fun res!3101659 () Bool)

(declare-fun e!4609368 () Bool)

(assert (=> b!7781197 (=> (not res!3101659) (not e!4609368))))

(declare-fun lt!2673040 () List!73664)

(declare-fun size!42705 (List!73664) Int)

(assert (=> b!7781197 (= res!3101659 (= (size!42705 lt!2673040) (+ (size!42705 Nil!73540) (size!42705 (t!388399 s!14292)))))))

(declare-fun b!7781198 () Bool)

(assert (=> b!7781198 (= e!4609368 (or (not (= (t!388399 s!14292) Nil!73540)) (= lt!2673040 Nil!73540)))))

(declare-fun d!2345204 () Bool)

(assert (=> d!2345204 e!4609368))

(declare-fun res!3101658 () Bool)

(assert (=> d!2345204 (=> (not res!3101658) (not e!4609368))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15602 (List!73664) (InoxSet C!41976))

(assert (=> d!2345204 (= res!3101658 (= (content!15602 lt!2673040) ((_ map or) (content!15602 Nil!73540) (content!15602 (t!388399 s!14292)))))))

(assert (=> d!2345204 (= lt!2673040 e!4609369)))

(declare-fun c!1433793 () Bool)

(assert (=> d!2345204 (= c!1433793 ((_ is Nil!73540) Nil!73540))))

(assert (=> d!2345204 (= (++!17919 Nil!73540 (t!388399 s!14292)) lt!2673040)))

(assert (= (and d!2345204 c!1433793) b!7781195))

(assert (= (and d!2345204 (not c!1433793)) b!7781196))

(assert (= (and d!2345204 res!3101658) b!7781197))

(assert (= (and b!7781197 res!3101659) b!7781198))

(declare-fun m!8229246 () Bool)

(assert (=> b!7781196 m!8229246))

(declare-fun m!8229248 () Bool)

(assert (=> b!7781197 m!8229248))

(declare-fun m!8229250 () Bool)

(assert (=> b!7781197 m!8229250))

(declare-fun m!8229252 () Bool)

(assert (=> b!7781197 m!8229252))

(declare-fun m!8229254 () Bool)

(assert (=> d!2345204 m!8229254))

(declare-fun m!8229256 () Bool)

(assert (=> d!2345204 m!8229256))

(declare-fun m!8229258 () Bool)

(assert (=> d!2345204 m!8229258))

(assert (=> b!7780790 d!2345204))

(declare-fun b!7781199 () Bool)

(declare-fun e!4609375 () Bool)

(declare-fun e!4609373 () Bool)

(assert (=> b!7781199 (= e!4609375 e!4609373)))

(declare-fun c!1433794 () Bool)

(assert (=> b!7781199 (= c!1433794 ((_ is Union!20825) r1!6279))))

(declare-fun b!7781200 () Bool)

(declare-fun e!4609371 () Bool)

(declare-fun e!4609370 () Bool)

(assert (=> b!7781200 (= e!4609371 e!4609370)))

(declare-fun res!3101664 () Bool)

(assert (=> b!7781200 (=> (not res!3101664) (not e!4609370))))

(declare-fun call!721251 () Bool)

(assert (=> b!7781200 (= res!3101664 call!721251)))

(declare-fun b!7781201 () Bool)

(declare-fun e!4609376 () Bool)

(assert (=> b!7781201 (= e!4609376 e!4609375)))

(declare-fun c!1433795 () Bool)

(assert (=> b!7781201 (= c!1433795 ((_ is Star!20825) r1!6279))))

(declare-fun bm!721245 () Bool)

(assert (=> bm!721245 (= call!721251 (validRegex!11239 (ite c!1433794 (regOne!42163 r1!6279) (regOne!42162 r1!6279))))))

(declare-fun d!2345208 () Bool)

(declare-fun res!3101663 () Bool)

(assert (=> d!2345208 (=> res!3101663 e!4609376)))

(assert (=> d!2345208 (= res!3101663 ((_ is ElementMatch!20825) r1!6279))))

(assert (=> d!2345208 (= (validRegex!11239 r1!6279) e!4609376)))

(declare-fun call!721252 () Bool)

(declare-fun bm!721246 () Bool)

(assert (=> bm!721246 (= call!721252 (validRegex!11239 (ite c!1433795 (reg!21154 r1!6279) (ite c!1433794 (regTwo!42163 r1!6279) (regTwo!42162 r1!6279)))))))

(declare-fun bm!721247 () Bool)

(declare-fun call!721250 () Bool)

(assert (=> bm!721247 (= call!721250 call!721252)))

(declare-fun b!7781202 () Bool)

(declare-fun res!3101662 () Bool)

(declare-fun e!4609372 () Bool)

(assert (=> b!7781202 (=> (not res!3101662) (not e!4609372))))

(assert (=> b!7781202 (= res!3101662 call!721251)))

(assert (=> b!7781202 (= e!4609373 e!4609372)))

(declare-fun b!7781203 () Bool)

(assert (=> b!7781203 (= e!4609370 call!721250)))

(declare-fun b!7781204 () Bool)

(assert (=> b!7781204 (= e!4609372 call!721250)))

(declare-fun b!7781205 () Bool)

(declare-fun e!4609374 () Bool)

(assert (=> b!7781205 (= e!4609375 e!4609374)))

(declare-fun res!3101661 () Bool)

(assert (=> b!7781205 (= res!3101661 (not (nullable!9213 (reg!21154 r1!6279))))))

(assert (=> b!7781205 (=> (not res!3101661) (not e!4609374))))

(declare-fun b!7781206 () Bool)

(declare-fun res!3101660 () Bool)

(assert (=> b!7781206 (=> res!3101660 e!4609371)))

(assert (=> b!7781206 (= res!3101660 (not ((_ is Concat!29670) r1!6279)))))

(assert (=> b!7781206 (= e!4609373 e!4609371)))

(declare-fun b!7781207 () Bool)

(assert (=> b!7781207 (= e!4609374 call!721252)))

(assert (= (and d!2345208 (not res!3101663)) b!7781201))

(assert (= (and b!7781201 c!1433795) b!7781205))

(assert (= (and b!7781201 (not c!1433795)) b!7781199))

(assert (= (and b!7781205 res!3101661) b!7781207))

(assert (= (and b!7781199 c!1433794) b!7781202))

(assert (= (and b!7781199 (not c!1433794)) b!7781206))

(assert (= (and b!7781202 res!3101662) b!7781204))

(assert (= (and b!7781206 (not res!3101660)) b!7781200))

(assert (= (and b!7781200 res!3101664) b!7781203))

(assert (= (or b!7781202 b!7781200) bm!721245))

(assert (= (or b!7781204 b!7781203) bm!721247))

(assert (= (or b!7781207 bm!721247) bm!721246))

(declare-fun m!8229260 () Bool)

(assert (=> bm!721245 m!8229260))

(declare-fun m!8229262 () Bool)

(assert (=> bm!721246 m!8229262))

(declare-fun m!8229264 () Bool)

(assert (=> b!7781205 m!8229264))

(assert (=> start!740522 d!2345208))

(declare-fun b!7781226 () Bool)

(declare-fun e!4609386 () Bool)

(declare-fun tp!2286974 () Bool)

(assert (=> b!7781226 (= e!4609386 (and tp_is_empty!52005 tp!2286974))))

(assert (=> b!7780798 (= tp!2286966 e!4609386)))

(assert (= (and b!7780798 ((_ is Cons!73540) (t!388399 s!14292))) b!7781226))

(declare-fun b!7781251 () Bool)

(declare-fun e!4609396 () Bool)

(assert (=> b!7781251 (= e!4609396 tp_is_empty!52005)))

(declare-fun b!7781254 () Bool)

(declare-fun tp!2286987 () Bool)

(declare-fun tp!2286986 () Bool)

(assert (=> b!7781254 (= e!4609396 (and tp!2286987 tp!2286986))))

(assert (=> b!7780799 (= tp!2286963 e!4609396)))

(declare-fun b!7781253 () Bool)

(declare-fun tp!2286988 () Bool)

(assert (=> b!7781253 (= e!4609396 tp!2286988)))

(declare-fun b!7781252 () Bool)

(declare-fun tp!2286989 () Bool)

(declare-fun tp!2286985 () Bool)

(assert (=> b!7781252 (= e!4609396 (and tp!2286989 tp!2286985))))

(assert (= (and b!7780799 ((_ is ElementMatch!20825) (regOne!42163 r2!6217))) b!7781251))

(assert (= (and b!7780799 ((_ is Concat!29670) (regOne!42163 r2!6217))) b!7781252))

(assert (= (and b!7780799 ((_ is Star!20825) (regOne!42163 r2!6217))) b!7781253))

(assert (= (and b!7780799 ((_ is Union!20825) (regOne!42163 r2!6217))) b!7781254))

(declare-fun b!7781265 () Bool)

(declare-fun e!4609402 () Bool)

(assert (=> b!7781265 (= e!4609402 tp_is_empty!52005)))

(declare-fun b!7781268 () Bool)

(declare-fun tp!2286992 () Bool)

(declare-fun tp!2286991 () Bool)

(assert (=> b!7781268 (= e!4609402 (and tp!2286992 tp!2286991))))

(assert (=> b!7780799 (= tp!2286970 e!4609402)))

(declare-fun b!7781267 () Bool)

(declare-fun tp!2286993 () Bool)

(assert (=> b!7781267 (= e!4609402 tp!2286993)))

(declare-fun b!7781266 () Bool)

(declare-fun tp!2286994 () Bool)

(declare-fun tp!2286990 () Bool)

(assert (=> b!7781266 (= e!4609402 (and tp!2286994 tp!2286990))))

(assert (= (and b!7780799 ((_ is ElementMatch!20825) (regTwo!42163 r2!6217))) b!7781265))

(assert (= (and b!7780799 ((_ is Concat!29670) (regTwo!42163 r2!6217))) b!7781266))

(assert (= (and b!7780799 ((_ is Star!20825) (regTwo!42163 r2!6217))) b!7781267))

(assert (= (and b!7780799 ((_ is Union!20825) (regTwo!42163 r2!6217))) b!7781268))

(declare-fun b!7781269 () Bool)

(declare-fun e!4609403 () Bool)

(assert (=> b!7781269 (= e!4609403 tp_is_empty!52005)))

(declare-fun b!7781272 () Bool)

(declare-fun tp!2286997 () Bool)

(declare-fun tp!2286996 () Bool)

(assert (=> b!7781272 (= e!4609403 (and tp!2286997 tp!2286996))))

(assert (=> b!7780794 (= tp!2286964 e!4609403)))

(declare-fun b!7781271 () Bool)

(declare-fun tp!2286998 () Bool)

(assert (=> b!7781271 (= e!4609403 tp!2286998)))

(declare-fun b!7781270 () Bool)

(declare-fun tp!2286999 () Bool)

(declare-fun tp!2286995 () Bool)

(assert (=> b!7781270 (= e!4609403 (and tp!2286999 tp!2286995))))

(assert (= (and b!7780794 ((_ is ElementMatch!20825) (regOne!42162 r2!6217))) b!7781269))

(assert (= (and b!7780794 ((_ is Concat!29670) (regOne!42162 r2!6217))) b!7781270))

(assert (= (and b!7780794 ((_ is Star!20825) (regOne!42162 r2!6217))) b!7781271))

(assert (= (and b!7780794 ((_ is Union!20825) (regOne!42162 r2!6217))) b!7781272))

(declare-fun b!7781274 () Bool)

(declare-fun e!4609404 () Bool)

(assert (=> b!7781274 (= e!4609404 tp_is_empty!52005)))

(declare-fun b!7781278 () Bool)

(declare-fun tp!2287002 () Bool)

(declare-fun tp!2287001 () Bool)

(assert (=> b!7781278 (= e!4609404 (and tp!2287002 tp!2287001))))

(assert (=> b!7780794 (= tp!2286962 e!4609404)))

(declare-fun b!7781277 () Bool)

(declare-fun tp!2287003 () Bool)

(assert (=> b!7781277 (= e!4609404 tp!2287003)))

(declare-fun b!7781275 () Bool)

(declare-fun tp!2287004 () Bool)

(declare-fun tp!2287000 () Bool)

(assert (=> b!7781275 (= e!4609404 (and tp!2287004 tp!2287000))))

(assert (= (and b!7780794 ((_ is ElementMatch!20825) (regTwo!42162 r2!6217))) b!7781274))

(assert (= (and b!7780794 ((_ is Concat!29670) (regTwo!42162 r2!6217))) b!7781275))

(assert (= (and b!7780794 ((_ is Star!20825) (regTwo!42162 r2!6217))) b!7781277))

(assert (= (and b!7780794 ((_ is Union!20825) (regTwo!42162 r2!6217))) b!7781278))

(declare-fun b!7781285 () Bool)

(declare-fun e!4609407 () Bool)

(assert (=> b!7781285 (= e!4609407 tp_is_empty!52005)))

(declare-fun b!7781288 () Bool)

(declare-fun tp!2287013 () Bool)

(declare-fun tp!2287012 () Bool)

(assert (=> b!7781288 (= e!4609407 (and tp!2287013 tp!2287012))))

(assert (=> b!7780804 (= tp!2286968 e!4609407)))

(declare-fun b!7781287 () Bool)

(declare-fun tp!2287014 () Bool)

(assert (=> b!7781287 (= e!4609407 tp!2287014)))

(declare-fun b!7781286 () Bool)

(declare-fun tp!2287015 () Bool)

(declare-fun tp!2287009 () Bool)

(assert (=> b!7781286 (= e!4609407 (and tp!2287015 tp!2287009))))

(assert (= (and b!7780804 ((_ is ElementMatch!20825) (reg!21154 r2!6217))) b!7781285))

(assert (= (and b!7780804 ((_ is Concat!29670) (reg!21154 r2!6217))) b!7781286))

(assert (= (and b!7780804 ((_ is Star!20825) (reg!21154 r2!6217))) b!7781287))

(assert (= (and b!7780804 ((_ is Union!20825) (reg!21154 r2!6217))) b!7781288))

(declare-fun b!7781291 () Bool)

(declare-fun e!4609408 () Bool)

(assert (=> b!7781291 (= e!4609408 tp_is_empty!52005)))

(declare-fun b!7781294 () Bool)

(declare-fun tp!2287022 () Bool)

(declare-fun tp!2287021 () Bool)

(assert (=> b!7781294 (= e!4609408 (and tp!2287022 tp!2287021))))

(assert (=> b!7780795 (= tp!2286961 e!4609408)))

(declare-fun b!7781293 () Bool)

(declare-fun tp!2287023 () Bool)

(assert (=> b!7781293 (= e!4609408 tp!2287023)))

(declare-fun b!7781292 () Bool)

(declare-fun tp!2287024 () Bool)

(declare-fun tp!2287020 () Bool)

(assert (=> b!7781292 (= e!4609408 (and tp!2287024 tp!2287020))))

(assert (= (and b!7780795 ((_ is ElementMatch!20825) (regOne!42163 r1!6279))) b!7781291))

(assert (= (and b!7780795 ((_ is Concat!29670) (regOne!42163 r1!6279))) b!7781292))

(assert (= (and b!7780795 ((_ is Star!20825) (regOne!42163 r1!6279))) b!7781293))

(assert (= (and b!7780795 ((_ is Union!20825) (regOne!42163 r1!6279))) b!7781294))

(declare-fun b!7781295 () Bool)

(declare-fun e!4609409 () Bool)

(assert (=> b!7781295 (= e!4609409 tp_is_empty!52005)))

(declare-fun b!7781298 () Bool)

(declare-fun tp!2287027 () Bool)

(declare-fun tp!2287026 () Bool)

(assert (=> b!7781298 (= e!4609409 (and tp!2287027 tp!2287026))))

(assert (=> b!7780795 (= tp!2286969 e!4609409)))

(declare-fun b!7781297 () Bool)

(declare-fun tp!2287028 () Bool)

(assert (=> b!7781297 (= e!4609409 tp!2287028)))

(declare-fun b!7781296 () Bool)

(declare-fun tp!2287029 () Bool)

(declare-fun tp!2287025 () Bool)

(assert (=> b!7781296 (= e!4609409 (and tp!2287029 tp!2287025))))

(assert (= (and b!7780795 ((_ is ElementMatch!20825) (regTwo!42163 r1!6279))) b!7781295))

(assert (= (and b!7780795 ((_ is Concat!29670) (regTwo!42163 r1!6279))) b!7781296))

(assert (= (and b!7780795 ((_ is Star!20825) (regTwo!42163 r1!6279))) b!7781297))

(assert (= (and b!7780795 ((_ is Union!20825) (regTwo!42163 r1!6279))) b!7781298))

(declare-fun b!7781303 () Bool)

(declare-fun e!4609411 () Bool)

(assert (=> b!7781303 (= e!4609411 tp_is_empty!52005)))

(declare-fun b!7781306 () Bool)

(declare-fun tp!2287037 () Bool)

(declare-fun tp!2287036 () Bool)

(assert (=> b!7781306 (= e!4609411 (and tp!2287037 tp!2287036))))

(assert (=> b!7780805 (= tp!2286965 e!4609411)))

(declare-fun b!7781305 () Bool)

(declare-fun tp!2287038 () Bool)

(assert (=> b!7781305 (= e!4609411 tp!2287038)))

(declare-fun b!7781304 () Bool)

(declare-fun tp!2287039 () Bool)

(declare-fun tp!2287035 () Bool)

(assert (=> b!7781304 (= e!4609411 (and tp!2287039 tp!2287035))))

(assert (= (and b!7780805 ((_ is ElementMatch!20825) (reg!21154 r1!6279))) b!7781303))

(assert (= (and b!7780805 ((_ is Concat!29670) (reg!21154 r1!6279))) b!7781304))

(assert (= (and b!7780805 ((_ is Star!20825) (reg!21154 r1!6279))) b!7781305))

(assert (= (and b!7780805 ((_ is Union!20825) (reg!21154 r1!6279))) b!7781306))

(declare-fun b!7781315 () Bool)

(declare-fun e!4609414 () Bool)

(assert (=> b!7781315 (= e!4609414 tp_is_empty!52005)))

(declare-fun b!7781318 () Bool)

(declare-fun tp!2287052 () Bool)

(declare-fun tp!2287051 () Bool)

(assert (=> b!7781318 (= e!4609414 (and tp!2287052 tp!2287051))))

(assert (=> b!7780800 (= tp!2286971 e!4609414)))

(declare-fun b!7781317 () Bool)

(declare-fun tp!2287053 () Bool)

(assert (=> b!7781317 (= e!4609414 tp!2287053)))

(declare-fun b!7781316 () Bool)

(declare-fun tp!2287054 () Bool)

(declare-fun tp!2287050 () Bool)

(assert (=> b!7781316 (= e!4609414 (and tp!2287054 tp!2287050))))

(assert (= (and b!7780800 ((_ is ElementMatch!20825) (regOne!42162 r1!6279))) b!7781315))

(assert (= (and b!7780800 ((_ is Concat!29670) (regOne!42162 r1!6279))) b!7781316))

(assert (= (and b!7780800 ((_ is Star!20825) (regOne!42162 r1!6279))) b!7781317))

(assert (= (and b!7780800 ((_ is Union!20825) (regOne!42162 r1!6279))) b!7781318))

(declare-fun b!7781327 () Bool)

(declare-fun e!4609417 () Bool)

(assert (=> b!7781327 (= e!4609417 tp_is_empty!52005)))

(declare-fun b!7781330 () Bool)

(declare-fun tp!2287067 () Bool)

(declare-fun tp!2287066 () Bool)

(assert (=> b!7781330 (= e!4609417 (and tp!2287067 tp!2287066))))

(assert (=> b!7780800 (= tp!2286967 e!4609417)))

(declare-fun b!7781329 () Bool)

(declare-fun tp!2287068 () Bool)

(assert (=> b!7781329 (= e!4609417 tp!2287068)))

(declare-fun b!7781328 () Bool)

(declare-fun tp!2287069 () Bool)

(declare-fun tp!2287065 () Bool)

(assert (=> b!7781328 (= e!4609417 (and tp!2287069 tp!2287065))))

(assert (= (and b!7780800 ((_ is ElementMatch!20825) (regTwo!42162 r1!6279))) b!7781327))

(assert (= (and b!7780800 ((_ is Concat!29670) (regTwo!42162 r1!6279))) b!7781328))

(assert (= (and b!7780800 ((_ is Star!20825) (regTwo!42162 r1!6279))) b!7781329))

(assert (= (and b!7780800 ((_ is Union!20825) (regTwo!42162 r1!6279))) b!7781330))

(check-sat (not d!2345172) (not b!7781159) (not b!7780980) (not b!7781267) (not d!2345164) (not b!7780901) (not bm!721236) (not d!2345204) (not b!7780988) (not b!7781317) (not b!7781141) (not b!7781330) (not d!2345166) (not b!7781286) (not b!7780902) (not b!7781102) (not b!7780976) (not d!2345200) (not bm!721186) (not b!7781294) (not bm!721187) (not b!7781272) (not b!7781089) (not b!7781305) (not bm!721219) (not b!7781287) (not bm!721215) (not b!7781270) (not b!7781064) (not b!7781140) tp_is_empty!52005 (not b!7781278) (not b!7781093) (not b!7781056) (not b!7781129) (not bm!721216) (not b!7780995) (not b!7781275) (not b!7781268) (not bm!721203) (not b!7781061) (not b!7781091) (not b!7780897) (not b!7781271) (not b!7781103) (not b!7781226) (not b!7781318) (not d!2345180) (not bm!721220) (not b!7781277) (not b!7781304) (not b!7781158) (not b!7780910) (not b!7781060) (not bm!721244) (not b!7781298) (not b!7780899) (not b!7781288) (not b!7780898) (not b!7781328) (not d!2345194) (not bm!721240) (not bm!721213) (not b!7781153) (not b!7781144) (not b!7780830) (not b!7781292) (not b!7781266) (not b!7780977) (not b!7781094) (not b!7781296) (not bm!721238) (not b!7780949) (not b!7781057) (not b!7781063) (not d!2345152) (not b!7780979) (not b!7781329) (not d!2345184) (not bm!721246) (not b!7781145) (not d!2345188) (not d!2345190) (not b!7781252) (not b!7781142) (not d!2345202) (not bm!721245) (not b!7781205) (not b!7781293) (not d!2345158) (not b!7781316) (not b!7781090) (not d!2345170) (not b!7781197) (not b!7780975) (not b!7781297) (not b!7781253) (not b!7781306) (not b!7781196) (not b!7781254))
(check-sat)
