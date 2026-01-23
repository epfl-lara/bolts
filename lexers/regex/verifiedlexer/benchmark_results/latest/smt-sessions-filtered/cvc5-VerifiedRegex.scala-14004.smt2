; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!740368 () Bool)

(assert start!740368)

(declare-fun b!7777740 () Bool)

(declare-fun e!4607653 () Bool)

(declare-fun tp!2285706 () Bool)

(assert (=> b!7777740 (= e!4607653 tp!2285706)))

(declare-fun b!7777741 () Bool)

(declare-fun res!3100288 () Bool)

(declare-fun e!4607650 () Bool)

(assert (=> b!7777741 (=> (not res!3100288) (not e!4607650))))

(declare-datatypes ((C!41930 0))(
  ( (C!41931 (val!31405 Int)) )
))
(declare-datatypes ((Regex!20802 0))(
  ( (ElementMatch!20802 (c!1433265 C!41930)) (Concat!29647 (regOne!42116 Regex!20802) (regTwo!42116 Regex!20802)) (EmptyExpr!20802) (Star!20802 (reg!21131 Regex!20802)) (EmptyLang!20802) (Union!20802 (regOne!42117 Regex!20802) (regTwo!42117 Regex!20802)) )
))
(declare-fun r2!6217 () Regex!20802)

(declare-fun validRegex!11216 (Regex!20802) Bool)

(assert (=> b!7777741 (= res!3100288 (validRegex!11216 r2!6217))))

(declare-fun b!7777742 () Bool)

(declare-fun res!3100281 () Bool)

(declare-fun e!4607652 () Bool)

(assert (=> b!7777742 (=> (not res!3100281) (not e!4607652))))

(declare-fun r1!6279 () Regex!20802)

(declare-fun nullable!9190 (Regex!20802) Bool)

(assert (=> b!7777742 (= res!3100281 (nullable!9190 r1!6279))))

(declare-fun b!7777743 () Bool)

(declare-fun e!4607649 () Bool)

(declare-fun tp!2285708 () Bool)

(assert (=> b!7777743 (= e!4607649 tp!2285708)))

(declare-fun b!7777744 () Bool)

(declare-fun e!4607646 () Bool)

(assert (=> b!7777744 (= e!4607646 e!4607652)))

(declare-fun res!3100282 () Bool)

(assert (=> b!7777744 (=> (not res!3100282) (not e!4607652))))

(declare-fun lt!2672457 () Regex!20802)

(declare-datatypes ((List!73641 0))(
  ( (Nil!73517) (Cons!73517 (h!79965 C!41930) (t!388376 List!73641)) )
))
(declare-fun s!14292 () List!73641)

(declare-fun matchR!10262 (Regex!20802 List!73641) Bool)

(assert (=> b!7777744 (= res!3100282 (matchR!10262 lt!2672457 (t!388376 s!14292)))))

(declare-fun lt!2672456 () Regex!20802)

(declare-fun derivativeStep!6145 (Regex!20802 C!41930) Regex!20802)

(assert (=> b!7777744 (= lt!2672457 (derivativeStep!6145 lt!2672456 (h!79965 s!14292)))))

(declare-fun b!7777745 () Bool)

(declare-fun tp!2285704 () Bool)

(declare-fun tp!2285705 () Bool)

(assert (=> b!7777745 (= e!4607653 (and tp!2285704 tp!2285705))))

(declare-fun b!7777746 () Bool)

(declare-fun tp!2285700 () Bool)

(declare-fun tp!2285698 () Bool)

(assert (=> b!7777746 (= e!4607649 (and tp!2285700 tp!2285698))))

(declare-fun b!7777747 () Bool)

(declare-fun tp!2285702 () Bool)

(declare-fun tp!2285703 () Bool)

(assert (=> b!7777747 (= e!4607653 (and tp!2285702 tp!2285703))))

(declare-fun b!7777748 () Bool)

(declare-fun e!4607651 () Bool)

(declare-fun e!4607648 () Bool)

(assert (=> b!7777748 (= e!4607651 (not e!4607648))))

(declare-fun res!3100284 () Bool)

(assert (=> b!7777748 (=> res!3100284 e!4607648)))

(declare-fun lt!2672455 () Bool)

(assert (=> b!7777748 (= res!3100284 lt!2672455)))

(declare-fun e!4607647 () Bool)

(assert (=> b!7777748 e!4607647))

(declare-fun res!3100287 () Bool)

(assert (=> b!7777748 (=> res!3100287 e!4607647)))

(assert (=> b!7777748 (= res!3100287 lt!2672455)))

(declare-fun lt!2672454 () Regex!20802)

(assert (=> b!7777748 (= lt!2672455 (matchR!10262 lt!2672454 (t!388376 s!14292)))))

(declare-datatypes ((Unit!168506 0))(
  ( (Unit!168507) )
))
(declare-fun lt!2672458 () Unit!168506)

(declare-fun lt!2672453 () Regex!20802)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!377 (Regex!20802 Regex!20802 List!73641) Unit!168506)

(assert (=> b!7777748 (= lt!2672458 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!377 lt!2672454 lt!2672453 (t!388376 s!14292)))))

(declare-fun res!3100290 () Bool)

(assert (=> start!740368 (=> (not res!3100290) (not e!4607650))))

(assert (=> start!740368 (= res!3100290 (validRegex!11216 r1!6279))))

(assert (=> start!740368 e!4607650))

(assert (=> start!740368 e!4607649))

(assert (=> start!740368 e!4607653))

(declare-fun e!4607654 () Bool)

(assert (=> start!740368 e!4607654))

(declare-fun b!7777749 () Bool)

(assert (=> b!7777749 (= e!4607652 e!4607651)))

(declare-fun res!3100285 () Bool)

(assert (=> b!7777749 (=> (not res!3100285) (not e!4607651))))

(assert (=> b!7777749 (= res!3100285 (= lt!2672457 (Union!20802 lt!2672454 lt!2672453)))))

(assert (=> b!7777749 (= lt!2672453 (derivativeStep!6145 r2!6217 (h!79965 s!14292)))))

(assert (=> b!7777749 (= lt!2672454 (Concat!29647 (derivativeStep!6145 r1!6279 (h!79965 s!14292)) r2!6217))))

(declare-fun b!7777750 () Bool)

(declare-fun res!3100289 () Bool)

(assert (=> b!7777750 (=> res!3100289 e!4607648)))

(assert (=> b!7777750 (= res!3100289 (not (matchR!10262 lt!2672453 (t!388376 s!14292))))))

(declare-fun b!7777751 () Bool)

(declare-fun res!3100286 () Bool)

(assert (=> b!7777751 (=> (not res!3100286) (not e!4607646))))

(assert (=> b!7777751 (= res!3100286 (is-Cons!73517 s!14292))))

(declare-fun b!7777752 () Bool)

(assert (=> b!7777752 (= e!4607650 e!4607646)))

(declare-fun res!3100283 () Bool)

(assert (=> b!7777752 (=> (not res!3100283) (not e!4607646))))

(assert (=> b!7777752 (= res!3100283 (matchR!10262 lt!2672456 s!14292))))

(assert (=> b!7777752 (= lt!2672456 (Concat!29647 r1!6279 r2!6217))))

(declare-fun b!7777753 () Bool)

(declare-fun ++!17914 (List!73641 List!73641) List!73641)

(assert (=> b!7777753 (= e!4607648 (= (++!17914 Nil!73517 s!14292) s!14292))))

(declare-fun b!7777754 () Bool)

(declare-fun tp!2285707 () Bool)

(declare-fun tp!2285701 () Bool)

(assert (=> b!7777754 (= e!4607649 (and tp!2285707 tp!2285701))))

(declare-fun b!7777755 () Bool)

(assert (=> b!7777755 (= e!4607647 (matchR!10262 lt!2672453 (t!388376 s!14292)))))

(declare-fun b!7777756 () Bool)

(declare-fun tp_is_empty!51959 () Bool)

(assert (=> b!7777756 (= e!4607653 tp_is_empty!51959)))

(declare-fun b!7777757 () Bool)

(assert (=> b!7777757 (= e!4607649 tp_is_empty!51959)))

(declare-fun b!7777758 () Bool)

(declare-fun tp!2285699 () Bool)

(assert (=> b!7777758 (= e!4607654 (and tp_is_empty!51959 tp!2285699))))

(assert (= (and start!740368 res!3100290) b!7777741))

(assert (= (and b!7777741 res!3100288) b!7777752))

(assert (= (and b!7777752 res!3100283) b!7777751))

(assert (= (and b!7777751 res!3100286) b!7777744))

(assert (= (and b!7777744 res!3100282) b!7777742))

(assert (= (and b!7777742 res!3100281) b!7777749))

(assert (= (and b!7777749 res!3100285) b!7777748))

(assert (= (and b!7777748 (not res!3100287)) b!7777755))

(assert (= (and b!7777748 (not res!3100284)) b!7777750))

(assert (= (and b!7777750 (not res!3100289)) b!7777753))

(assert (= (and start!740368 (is-ElementMatch!20802 r1!6279)) b!7777757))

(assert (= (and start!740368 (is-Concat!29647 r1!6279)) b!7777746))

(assert (= (and start!740368 (is-Star!20802 r1!6279)) b!7777743))

(assert (= (and start!740368 (is-Union!20802 r1!6279)) b!7777754))

(assert (= (and start!740368 (is-ElementMatch!20802 r2!6217)) b!7777756))

(assert (= (and start!740368 (is-Concat!29647 r2!6217)) b!7777747))

(assert (= (and start!740368 (is-Star!20802 r2!6217)) b!7777740))

(assert (= (and start!740368 (is-Union!20802 r2!6217)) b!7777745))

(assert (= (and start!740368 (is-Cons!73517 s!14292)) b!7777758))

(declare-fun m!8227698 () Bool)

(assert (=> b!7777752 m!8227698))

(declare-fun m!8227700 () Bool)

(assert (=> b!7777744 m!8227700))

(declare-fun m!8227702 () Bool)

(assert (=> b!7777744 m!8227702))

(declare-fun m!8227704 () Bool)

(assert (=> b!7777741 m!8227704))

(declare-fun m!8227706 () Bool)

(assert (=> b!7777749 m!8227706))

(declare-fun m!8227708 () Bool)

(assert (=> b!7777749 m!8227708))

(declare-fun m!8227710 () Bool)

(assert (=> b!7777742 m!8227710))

(declare-fun m!8227712 () Bool)

(assert (=> b!7777753 m!8227712))

(declare-fun m!8227714 () Bool)

(assert (=> b!7777748 m!8227714))

(declare-fun m!8227716 () Bool)

(assert (=> b!7777748 m!8227716))

(declare-fun m!8227718 () Bool)

(assert (=> start!740368 m!8227718))

(declare-fun m!8227720 () Bool)

(assert (=> b!7777750 m!8227720))

(assert (=> b!7777755 m!8227720))

(push 1)

(assert (not b!7777750))

(assert (not b!7777753))

(assert (not b!7777744))

(assert (not b!7777746))

(assert (not b!7777749))

(assert (not b!7777745))

(assert (not b!7777755))

(assert (not start!740368))

(assert (not b!7777747))

(assert (not b!7777743))

(assert (not b!7777740))

(assert (not b!7777754))

(assert (not b!7777748))

(assert tp_is_empty!51959)

(assert (not b!7777758))

(assert (not b!7777741))

(assert (not b!7777752))

(assert (not b!7777742))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7777864 () Bool)

(declare-fun res!3100339 () Bool)

(declare-fun e!4607712 () Bool)

(assert (=> b!7777864 (=> res!3100339 e!4607712)))

(declare-fun e!4607710 () Bool)

(assert (=> b!7777864 (= res!3100339 e!4607710)))

(declare-fun res!3100340 () Bool)

(assert (=> b!7777864 (=> (not res!3100340) (not e!4607710))))

(declare-fun lt!2672481 () Bool)

(assert (=> b!7777864 (= res!3100340 lt!2672481)))

(declare-fun bm!720904 () Bool)

(declare-fun call!720909 () Bool)

(declare-fun isEmpty!42174 (List!73641) Bool)

(assert (=> bm!720904 (= call!720909 (isEmpty!42174 (t!388376 s!14292)))))

(declare-fun b!7777865 () Bool)

(declare-fun e!4607708 () Bool)

(assert (=> b!7777865 (= e!4607708 (not lt!2672481))))

(declare-fun b!7777866 () Bool)

(declare-fun e!4607706 () Bool)

(declare-fun head!15905 (List!73641) C!41930)

(declare-fun tail!15446 (List!73641) List!73641)

(assert (=> b!7777866 (= e!4607706 (matchR!10262 (derivativeStep!6145 lt!2672453 (head!15905 (t!388376 s!14292))) (tail!15446 (t!388376 s!14292))))))

(declare-fun b!7777867 () Bool)

(declare-fun e!4607711 () Bool)

(assert (=> b!7777867 (= e!4607711 (not (= (head!15905 (t!388376 s!14292)) (c!1433265 lt!2672453))))))

(declare-fun b!7777868 () Bool)

(declare-fun e!4607707 () Bool)

(assert (=> b!7777868 (= e!4607712 e!4607707)))

(declare-fun res!3100344 () Bool)

(assert (=> b!7777868 (=> (not res!3100344) (not e!4607707))))

(assert (=> b!7777868 (= res!3100344 (not lt!2672481))))

(declare-fun b!7777869 () Bool)

(declare-fun e!4607709 () Bool)

(assert (=> b!7777869 (= e!4607709 e!4607708)))

(declare-fun c!1433284 () Bool)

(assert (=> b!7777869 (= c!1433284 (is-EmptyLang!20802 lt!2672453))))

(declare-fun b!7777870 () Bool)

(declare-fun res!3100337 () Bool)

(assert (=> b!7777870 (=> res!3100337 e!4607711)))

(assert (=> b!7777870 (= res!3100337 (not (isEmpty!42174 (tail!15446 (t!388376 s!14292)))))))

(declare-fun b!7777871 () Bool)

(declare-fun res!3100341 () Bool)

(assert (=> b!7777871 (=> res!3100341 e!4607712)))

(assert (=> b!7777871 (= res!3100341 (not (is-ElementMatch!20802 lt!2672453)))))

(assert (=> b!7777871 (= e!4607708 e!4607712)))

(declare-fun d!2344945 () Bool)

(assert (=> d!2344945 e!4607709))

(declare-fun c!1433283 () Bool)

(assert (=> d!2344945 (= c!1433283 (is-EmptyExpr!20802 lt!2672453))))

(assert (=> d!2344945 (= lt!2672481 e!4607706)))

(declare-fun c!1433285 () Bool)

(assert (=> d!2344945 (= c!1433285 (isEmpty!42174 (t!388376 s!14292)))))

(assert (=> d!2344945 (validRegex!11216 lt!2672453)))

(assert (=> d!2344945 (= (matchR!10262 lt!2672453 (t!388376 s!14292)) lt!2672481)))

(declare-fun b!7777872 () Bool)

(assert (=> b!7777872 (= e!4607706 (nullable!9190 lt!2672453))))

(declare-fun b!7777873 () Bool)

(declare-fun res!3100338 () Bool)

(assert (=> b!7777873 (=> (not res!3100338) (not e!4607710))))

(assert (=> b!7777873 (= res!3100338 (isEmpty!42174 (tail!15446 (t!388376 s!14292))))))

(declare-fun b!7777874 () Bool)

(declare-fun res!3100342 () Bool)

(assert (=> b!7777874 (=> (not res!3100342) (not e!4607710))))

(assert (=> b!7777874 (= res!3100342 (not call!720909))))

(declare-fun b!7777875 () Bool)

(assert (=> b!7777875 (= e!4607709 (= lt!2672481 call!720909))))

(declare-fun b!7777876 () Bool)

(assert (=> b!7777876 (= e!4607710 (= (head!15905 (t!388376 s!14292)) (c!1433265 lt!2672453)))))

(declare-fun b!7777877 () Bool)

(assert (=> b!7777877 (= e!4607707 e!4607711)))

(declare-fun res!3100343 () Bool)

(assert (=> b!7777877 (=> res!3100343 e!4607711)))

(assert (=> b!7777877 (= res!3100343 call!720909)))

(assert (= (and d!2344945 c!1433285) b!7777872))

(assert (= (and d!2344945 (not c!1433285)) b!7777866))

(assert (= (and d!2344945 c!1433283) b!7777875))

(assert (= (and d!2344945 (not c!1433283)) b!7777869))

(assert (= (and b!7777869 c!1433284) b!7777865))

(assert (= (and b!7777869 (not c!1433284)) b!7777871))

(assert (= (and b!7777871 (not res!3100341)) b!7777864))

(assert (= (and b!7777864 res!3100340) b!7777874))

(assert (= (and b!7777874 res!3100342) b!7777873))

(assert (= (and b!7777873 res!3100338) b!7777876))

(assert (= (and b!7777864 (not res!3100339)) b!7777868))

(assert (= (and b!7777868 res!3100344) b!7777877))

(assert (= (and b!7777877 (not res!3100343)) b!7777870))

(assert (= (and b!7777870 (not res!3100337)) b!7777867))

(assert (= (or b!7777875 b!7777874 b!7777877) bm!720904))

(declare-fun m!8227746 () Bool)

(assert (=> b!7777876 m!8227746))

(declare-fun m!8227748 () Bool)

(assert (=> bm!720904 m!8227748))

(assert (=> b!7777866 m!8227746))

(assert (=> b!7777866 m!8227746))

(declare-fun m!8227750 () Bool)

(assert (=> b!7777866 m!8227750))

(declare-fun m!8227752 () Bool)

(assert (=> b!7777866 m!8227752))

(assert (=> b!7777866 m!8227750))

(assert (=> b!7777866 m!8227752))

(declare-fun m!8227754 () Bool)

(assert (=> b!7777866 m!8227754))

(assert (=> b!7777870 m!8227752))

(assert (=> b!7777870 m!8227752))

(declare-fun m!8227756 () Bool)

(assert (=> b!7777870 m!8227756))

(assert (=> b!7777873 m!8227752))

(assert (=> b!7777873 m!8227752))

(assert (=> b!7777873 m!8227756))

(assert (=> b!7777867 m!8227746))

(declare-fun m!8227758 () Bool)

(assert (=> b!7777872 m!8227758))

(assert (=> d!2344945 m!8227748))

(declare-fun m!8227760 () Bool)

(assert (=> d!2344945 m!8227760))

(assert (=> b!7777750 d!2344945))

(assert (=> b!7777755 d!2344945))

(declare-fun b!7777878 () Bool)

(declare-fun res!3100347 () Bool)

(declare-fun e!4607719 () Bool)

(assert (=> b!7777878 (=> res!3100347 e!4607719)))

(declare-fun e!4607717 () Bool)

(assert (=> b!7777878 (= res!3100347 e!4607717)))

(declare-fun res!3100348 () Bool)

(assert (=> b!7777878 (=> (not res!3100348) (not e!4607717))))

(declare-fun lt!2672482 () Bool)

(assert (=> b!7777878 (= res!3100348 lt!2672482)))

(declare-fun bm!720905 () Bool)

(declare-fun call!720910 () Bool)

(assert (=> bm!720905 (= call!720910 (isEmpty!42174 (t!388376 s!14292)))))

(declare-fun b!7777879 () Bool)

(declare-fun e!4607715 () Bool)

(assert (=> b!7777879 (= e!4607715 (not lt!2672482))))

(declare-fun b!7777880 () Bool)

(declare-fun e!4607713 () Bool)

(assert (=> b!7777880 (= e!4607713 (matchR!10262 (derivativeStep!6145 lt!2672457 (head!15905 (t!388376 s!14292))) (tail!15446 (t!388376 s!14292))))))

(declare-fun b!7777881 () Bool)

(declare-fun e!4607718 () Bool)

(assert (=> b!7777881 (= e!4607718 (not (= (head!15905 (t!388376 s!14292)) (c!1433265 lt!2672457))))))

(declare-fun b!7777882 () Bool)

(declare-fun e!4607714 () Bool)

(assert (=> b!7777882 (= e!4607719 e!4607714)))

(declare-fun res!3100352 () Bool)

(assert (=> b!7777882 (=> (not res!3100352) (not e!4607714))))

(assert (=> b!7777882 (= res!3100352 (not lt!2672482))))

(declare-fun b!7777883 () Bool)

(declare-fun e!4607716 () Bool)

(assert (=> b!7777883 (= e!4607716 e!4607715)))

(declare-fun c!1433287 () Bool)

(assert (=> b!7777883 (= c!1433287 (is-EmptyLang!20802 lt!2672457))))

(declare-fun b!7777884 () Bool)

(declare-fun res!3100345 () Bool)

(assert (=> b!7777884 (=> res!3100345 e!4607718)))

(assert (=> b!7777884 (= res!3100345 (not (isEmpty!42174 (tail!15446 (t!388376 s!14292)))))))

(declare-fun b!7777885 () Bool)

(declare-fun res!3100349 () Bool)

(assert (=> b!7777885 (=> res!3100349 e!4607719)))

(assert (=> b!7777885 (= res!3100349 (not (is-ElementMatch!20802 lt!2672457)))))

(assert (=> b!7777885 (= e!4607715 e!4607719)))

(declare-fun d!2344949 () Bool)

(assert (=> d!2344949 e!4607716))

(declare-fun c!1433286 () Bool)

(assert (=> d!2344949 (= c!1433286 (is-EmptyExpr!20802 lt!2672457))))

(assert (=> d!2344949 (= lt!2672482 e!4607713)))

(declare-fun c!1433288 () Bool)

(assert (=> d!2344949 (= c!1433288 (isEmpty!42174 (t!388376 s!14292)))))

(assert (=> d!2344949 (validRegex!11216 lt!2672457)))

(assert (=> d!2344949 (= (matchR!10262 lt!2672457 (t!388376 s!14292)) lt!2672482)))

(declare-fun b!7777886 () Bool)

(assert (=> b!7777886 (= e!4607713 (nullable!9190 lt!2672457))))

(declare-fun b!7777887 () Bool)

(declare-fun res!3100346 () Bool)

(assert (=> b!7777887 (=> (not res!3100346) (not e!4607717))))

(assert (=> b!7777887 (= res!3100346 (isEmpty!42174 (tail!15446 (t!388376 s!14292))))))

(declare-fun b!7777888 () Bool)

(declare-fun res!3100350 () Bool)

(assert (=> b!7777888 (=> (not res!3100350) (not e!4607717))))

(assert (=> b!7777888 (= res!3100350 (not call!720910))))

(declare-fun b!7777889 () Bool)

(assert (=> b!7777889 (= e!4607716 (= lt!2672482 call!720910))))

(declare-fun b!7777890 () Bool)

(assert (=> b!7777890 (= e!4607717 (= (head!15905 (t!388376 s!14292)) (c!1433265 lt!2672457)))))

(declare-fun b!7777891 () Bool)

(assert (=> b!7777891 (= e!4607714 e!4607718)))

(declare-fun res!3100351 () Bool)

(assert (=> b!7777891 (=> res!3100351 e!4607718)))

(assert (=> b!7777891 (= res!3100351 call!720910)))

(assert (= (and d!2344949 c!1433288) b!7777886))

(assert (= (and d!2344949 (not c!1433288)) b!7777880))

(assert (= (and d!2344949 c!1433286) b!7777889))

(assert (= (and d!2344949 (not c!1433286)) b!7777883))

(assert (= (and b!7777883 c!1433287) b!7777879))

(assert (= (and b!7777883 (not c!1433287)) b!7777885))

(assert (= (and b!7777885 (not res!3100349)) b!7777878))

(assert (= (and b!7777878 res!3100348) b!7777888))

(assert (= (and b!7777888 res!3100350) b!7777887))

(assert (= (and b!7777887 res!3100346) b!7777890))

(assert (= (and b!7777878 (not res!3100347)) b!7777882))

(assert (= (and b!7777882 res!3100352) b!7777891))

(assert (= (and b!7777891 (not res!3100351)) b!7777884))

(assert (= (and b!7777884 (not res!3100345)) b!7777881))

(assert (= (or b!7777889 b!7777888 b!7777891) bm!720905))

(assert (=> b!7777890 m!8227746))

(assert (=> bm!720905 m!8227748))

(assert (=> b!7777880 m!8227746))

(assert (=> b!7777880 m!8227746))

(declare-fun m!8227762 () Bool)

(assert (=> b!7777880 m!8227762))

(assert (=> b!7777880 m!8227752))

(assert (=> b!7777880 m!8227762))

(assert (=> b!7777880 m!8227752))

(declare-fun m!8227764 () Bool)

(assert (=> b!7777880 m!8227764))

(assert (=> b!7777884 m!8227752))

(assert (=> b!7777884 m!8227752))

(assert (=> b!7777884 m!8227756))

(assert (=> b!7777887 m!8227752))

(assert (=> b!7777887 m!8227752))

(assert (=> b!7777887 m!8227756))

(assert (=> b!7777881 m!8227746))

(declare-fun m!8227766 () Bool)

(assert (=> b!7777886 m!8227766))

(assert (=> d!2344949 m!8227748))

(declare-fun m!8227768 () Bool)

(assert (=> d!2344949 m!8227768))

(assert (=> b!7777744 d!2344949))

(declare-fun b!7777960 () Bool)

(declare-fun e!4607754 () Regex!20802)

(declare-fun call!720928 () Regex!20802)

(assert (=> b!7777960 (= e!4607754 (Union!20802 (Concat!29647 call!720928 (regTwo!42116 lt!2672456)) EmptyLang!20802))))

(declare-fun b!7777961 () Bool)

(declare-fun c!1433316 () Bool)

(assert (=> b!7777961 (= c!1433316 (is-Union!20802 lt!2672456))))

(declare-fun e!4607756 () Regex!20802)

(declare-fun e!4607757 () Regex!20802)

(assert (=> b!7777961 (= e!4607756 e!4607757)))

(declare-fun b!7777962 () Bool)

(declare-fun e!4607755 () Regex!20802)

(assert (=> b!7777962 (= e!4607755 e!4607756)))

(declare-fun c!1433317 () Bool)

(assert (=> b!7777962 (= c!1433317 (is-ElementMatch!20802 lt!2672456))))

(declare-fun c!1433315 () Bool)

(declare-fun bm!720922 () Bool)

(declare-fun c!1433318 () Bool)

(declare-fun call!720930 () Regex!20802)

(assert (=> bm!720922 (= call!720930 (derivativeStep!6145 (ite c!1433316 (regTwo!42117 lt!2672456) (ite c!1433318 (reg!21131 lt!2672456) (ite c!1433315 (regTwo!42116 lt!2672456) (regOne!42116 lt!2672456)))) (h!79965 s!14292)))))

(declare-fun b!7777963 () Bool)

(assert (=> b!7777963 (= c!1433315 (nullable!9190 (regOne!42116 lt!2672456)))))

(declare-fun e!4607758 () Regex!20802)

(assert (=> b!7777963 (= e!4607758 e!4607754)))

(declare-fun b!7777964 () Bool)

(assert (=> b!7777964 (= e!4607755 EmptyLang!20802)))

(declare-fun bm!720923 () Bool)

(declare-fun call!720929 () Regex!20802)

(assert (=> bm!720923 (= call!720928 call!720929)))

(declare-fun b!7777965 () Bool)

(declare-fun call!720927 () Regex!20802)

(assert (=> b!7777965 (= e!4607757 (Union!20802 call!720927 call!720930))))

(declare-fun bm!720924 () Bool)

(assert (=> bm!720924 (= call!720929 call!720930)))

(declare-fun b!7777967 () Bool)

(assert (=> b!7777967 (= e!4607754 (Union!20802 (Concat!29647 call!720927 (regTwo!42116 lt!2672456)) call!720928))))

(declare-fun bm!720925 () Bool)

(assert (=> bm!720925 (= call!720927 (derivativeStep!6145 (ite c!1433316 (regOne!42117 lt!2672456) (regOne!42116 lt!2672456)) (h!79965 s!14292)))))

(declare-fun b!7777968 () Bool)

(assert (=> b!7777968 (= e!4607756 (ite (= (h!79965 s!14292) (c!1433265 lt!2672456)) EmptyExpr!20802 EmptyLang!20802))))

(declare-fun b!7777969 () Bool)

(assert (=> b!7777969 (= e!4607757 e!4607758)))

(assert (=> b!7777969 (= c!1433318 (is-Star!20802 lt!2672456))))

(declare-fun d!2344951 () Bool)

(declare-fun lt!2672489 () Regex!20802)

(assert (=> d!2344951 (validRegex!11216 lt!2672489)))

(assert (=> d!2344951 (= lt!2672489 e!4607755)))

(declare-fun c!1433319 () Bool)

(assert (=> d!2344951 (= c!1433319 (or (is-EmptyExpr!20802 lt!2672456) (is-EmptyLang!20802 lt!2672456)))))

(assert (=> d!2344951 (validRegex!11216 lt!2672456)))

(assert (=> d!2344951 (= (derivativeStep!6145 lt!2672456 (h!79965 s!14292)) lt!2672489)))

(declare-fun b!7777966 () Bool)

(assert (=> b!7777966 (= e!4607758 (Concat!29647 call!720929 lt!2672456))))

(assert (= (and d!2344951 c!1433319) b!7777964))

(assert (= (and d!2344951 (not c!1433319)) b!7777962))

(assert (= (and b!7777962 c!1433317) b!7777968))

(assert (= (and b!7777962 (not c!1433317)) b!7777961))

(assert (= (and b!7777961 c!1433316) b!7777965))

(assert (= (and b!7777961 (not c!1433316)) b!7777969))

(assert (= (and b!7777969 c!1433318) b!7777966))

(assert (= (and b!7777969 (not c!1433318)) b!7777963))

(assert (= (and b!7777963 c!1433315) b!7777967))

(assert (= (and b!7777963 (not c!1433315)) b!7777960))

(assert (= (or b!7777967 b!7777960) bm!720923))

(assert (= (or b!7777966 bm!720923) bm!720924))

(assert (= (or b!7777965 bm!720924) bm!720922))

(assert (= (or b!7777965 b!7777967) bm!720925))

(declare-fun m!8227786 () Bool)

(assert (=> bm!720922 m!8227786))

(declare-fun m!8227788 () Bool)

(assert (=> b!7777963 m!8227788))

(declare-fun m!8227790 () Bool)

(assert (=> bm!720925 m!8227790))

(declare-fun m!8227792 () Bool)

(assert (=> d!2344951 m!8227792))

(declare-fun m!8227794 () Bool)

(assert (=> d!2344951 m!8227794))

(assert (=> b!7777744 d!2344951))

(declare-fun b!7777970 () Bool)

(declare-fun e!4607759 () Regex!20802)

(declare-fun call!720934 () Regex!20802)

(assert (=> b!7777970 (= e!4607759 (Union!20802 (Concat!29647 call!720934 (regTwo!42116 r2!6217)) EmptyLang!20802))))

(declare-fun b!7777971 () Bool)

(declare-fun c!1433321 () Bool)

(assert (=> b!7777971 (= c!1433321 (is-Union!20802 r2!6217))))

(declare-fun e!4607761 () Regex!20802)

(declare-fun e!4607762 () Regex!20802)

(assert (=> b!7777971 (= e!4607761 e!4607762)))

(declare-fun b!7777972 () Bool)

(declare-fun e!4607760 () Regex!20802)

(assert (=> b!7777972 (= e!4607760 e!4607761)))

(declare-fun c!1433322 () Bool)

(assert (=> b!7777972 (= c!1433322 (is-ElementMatch!20802 r2!6217))))

(declare-fun bm!720928 () Bool)

(declare-fun c!1433323 () Bool)

(declare-fun call!720936 () Regex!20802)

(declare-fun c!1433320 () Bool)

(assert (=> bm!720928 (= call!720936 (derivativeStep!6145 (ite c!1433321 (regTwo!42117 r2!6217) (ite c!1433323 (reg!21131 r2!6217) (ite c!1433320 (regTwo!42116 r2!6217) (regOne!42116 r2!6217)))) (h!79965 s!14292)))))

(declare-fun b!7777973 () Bool)

(assert (=> b!7777973 (= c!1433320 (nullable!9190 (regOne!42116 r2!6217)))))

(declare-fun e!4607763 () Regex!20802)

(assert (=> b!7777973 (= e!4607763 e!4607759)))

(declare-fun b!7777974 () Bool)

(assert (=> b!7777974 (= e!4607760 EmptyLang!20802)))

(declare-fun bm!720929 () Bool)

(declare-fun call!720935 () Regex!20802)

(assert (=> bm!720929 (= call!720934 call!720935)))

(declare-fun b!7777975 () Bool)

(declare-fun call!720933 () Regex!20802)

(assert (=> b!7777975 (= e!4607762 (Union!20802 call!720933 call!720936))))

(declare-fun bm!720930 () Bool)

(assert (=> bm!720930 (= call!720935 call!720936)))

(declare-fun b!7777977 () Bool)

(assert (=> b!7777977 (= e!4607759 (Union!20802 (Concat!29647 call!720933 (regTwo!42116 r2!6217)) call!720934))))

(declare-fun bm!720931 () Bool)

(assert (=> bm!720931 (= call!720933 (derivativeStep!6145 (ite c!1433321 (regOne!42117 r2!6217) (regOne!42116 r2!6217)) (h!79965 s!14292)))))

(declare-fun b!7777978 () Bool)

(assert (=> b!7777978 (= e!4607761 (ite (= (h!79965 s!14292) (c!1433265 r2!6217)) EmptyExpr!20802 EmptyLang!20802))))

(declare-fun b!7777979 () Bool)

(assert (=> b!7777979 (= e!4607762 e!4607763)))

(assert (=> b!7777979 (= c!1433323 (is-Star!20802 r2!6217))))

(declare-fun d!2344957 () Bool)

(declare-fun lt!2672490 () Regex!20802)

(assert (=> d!2344957 (validRegex!11216 lt!2672490)))

(assert (=> d!2344957 (= lt!2672490 e!4607760)))

(declare-fun c!1433324 () Bool)

(assert (=> d!2344957 (= c!1433324 (or (is-EmptyExpr!20802 r2!6217) (is-EmptyLang!20802 r2!6217)))))

(assert (=> d!2344957 (validRegex!11216 r2!6217)))

(assert (=> d!2344957 (= (derivativeStep!6145 r2!6217 (h!79965 s!14292)) lt!2672490)))

(declare-fun b!7777976 () Bool)

(assert (=> b!7777976 (= e!4607763 (Concat!29647 call!720935 r2!6217))))

(assert (= (and d!2344957 c!1433324) b!7777974))

(assert (= (and d!2344957 (not c!1433324)) b!7777972))

(assert (= (and b!7777972 c!1433322) b!7777978))

(assert (= (and b!7777972 (not c!1433322)) b!7777971))

(assert (= (and b!7777971 c!1433321) b!7777975))

(assert (= (and b!7777971 (not c!1433321)) b!7777979))

(assert (= (and b!7777979 c!1433323) b!7777976))

(assert (= (and b!7777979 (not c!1433323)) b!7777973))

(assert (= (and b!7777973 c!1433320) b!7777977))

(assert (= (and b!7777973 (not c!1433320)) b!7777970))

(assert (= (or b!7777977 b!7777970) bm!720929))

(assert (= (or b!7777976 bm!720929) bm!720930))

(assert (= (or b!7777975 bm!720930) bm!720928))

(assert (= (or b!7777975 b!7777977) bm!720931))

(declare-fun m!8227796 () Bool)

(assert (=> bm!720928 m!8227796))

(declare-fun m!8227798 () Bool)

(assert (=> b!7777973 m!8227798))

(declare-fun m!8227800 () Bool)

(assert (=> bm!720931 m!8227800))

(declare-fun m!8227802 () Bool)

(assert (=> d!2344957 m!8227802))

(assert (=> d!2344957 m!8227704))

(assert (=> b!7777749 d!2344957))

(declare-fun b!7777980 () Bool)

(declare-fun e!4607764 () Regex!20802)

(declare-fun call!720938 () Regex!20802)

(assert (=> b!7777980 (= e!4607764 (Union!20802 (Concat!29647 call!720938 (regTwo!42116 r1!6279)) EmptyLang!20802))))

(declare-fun b!7777981 () Bool)

(declare-fun c!1433326 () Bool)

(assert (=> b!7777981 (= c!1433326 (is-Union!20802 r1!6279))))

(declare-fun e!4607766 () Regex!20802)

(declare-fun e!4607767 () Regex!20802)

(assert (=> b!7777981 (= e!4607766 e!4607767)))

(declare-fun b!7777982 () Bool)

(declare-fun e!4607765 () Regex!20802)

(assert (=> b!7777982 (= e!4607765 e!4607766)))

(declare-fun c!1433327 () Bool)

(assert (=> b!7777982 (= c!1433327 (is-ElementMatch!20802 r1!6279))))

(declare-fun c!1433325 () Bool)

(declare-fun bm!720932 () Bool)

(declare-fun c!1433328 () Bool)

(declare-fun call!720940 () Regex!20802)

(assert (=> bm!720932 (= call!720940 (derivativeStep!6145 (ite c!1433326 (regTwo!42117 r1!6279) (ite c!1433328 (reg!21131 r1!6279) (ite c!1433325 (regTwo!42116 r1!6279) (regOne!42116 r1!6279)))) (h!79965 s!14292)))))

(declare-fun b!7777983 () Bool)

(assert (=> b!7777983 (= c!1433325 (nullable!9190 (regOne!42116 r1!6279)))))

(declare-fun e!4607768 () Regex!20802)

(assert (=> b!7777983 (= e!4607768 e!4607764)))

(declare-fun b!7777984 () Bool)

(assert (=> b!7777984 (= e!4607765 EmptyLang!20802)))

(declare-fun bm!720933 () Bool)

(declare-fun call!720939 () Regex!20802)

(assert (=> bm!720933 (= call!720938 call!720939)))

(declare-fun b!7777985 () Bool)

(declare-fun call!720937 () Regex!20802)

(assert (=> b!7777985 (= e!4607767 (Union!20802 call!720937 call!720940))))

(declare-fun bm!720934 () Bool)

(assert (=> bm!720934 (= call!720939 call!720940)))

(declare-fun b!7777987 () Bool)

(assert (=> b!7777987 (= e!4607764 (Union!20802 (Concat!29647 call!720937 (regTwo!42116 r1!6279)) call!720938))))

(declare-fun bm!720935 () Bool)

(assert (=> bm!720935 (= call!720937 (derivativeStep!6145 (ite c!1433326 (regOne!42117 r1!6279) (regOne!42116 r1!6279)) (h!79965 s!14292)))))

(declare-fun b!7777988 () Bool)

(assert (=> b!7777988 (= e!4607766 (ite (= (h!79965 s!14292) (c!1433265 r1!6279)) EmptyExpr!20802 EmptyLang!20802))))

(declare-fun b!7777989 () Bool)

(assert (=> b!7777989 (= e!4607767 e!4607768)))

(assert (=> b!7777989 (= c!1433328 (is-Star!20802 r1!6279))))

(declare-fun d!2344959 () Bool)

(declare-fun lt!2672491 () Regex!20802)

(assert (=> d!2344959 (validRegex!11216 lt!2672491)))

(assert (=> d!2344959 (= lt!2672491 e!4607765)))

(declare-fun c!1433329 () Bool)

(assert (=> d!2344959 (= c!1433329 (or (is-EmptyExpr!20802 r1!6279) (is-EmptyLang!20802 r1!6279)))))

(assert (=> d!2344959 (validRegex!11216 r1!6279)))

(assert (=> d!2344959 (= (derivativeStep!6145 r1!6279 (h!79965 s!14292)) lt!2672491)))

(declare-fun b!7777986 () Bool)

(assert (=> b!7777986 (= e!4607768 (Concat!29647 call!720939 r1!6279))))

(assert (= (and d!2344959 c!1433329) b!7777984))

(assert (= (and d!2344959 (not c!1433329)) b!7777982))

(assert (= (and b!7777982 c!1433327) b!7777988))

(assert (= (and b!7777982 (not c!1433327)) b!7777981))

(assert (= (and b!7777981 c!1433326) b!7777985))

(assert (= (and b!7777981 (not c!1433326)) b!7777989))

(assert (= (and b!7777989 c!1433328) b!7777986))

(assert (= (and b!7777989 (not c!1433328)) b!7777983))

(assert (= (and b!7777983 c!1433325) b!7777987))

(assert (= (and b!7777983 (not c!1433325)) b!7777980))

(assert (= (or b!7777987 b!7777980) bm!720933))

(assert (= (or b!7777986 bm!720933) bm!720934))

(assert (= (or b!7777985 bm!720934) bm!720932))

(assert (= (or b!7777985 b!7777987) bm!720935))

(declare-fun m!8227804 () Bool)

(assert (=> bm!720932 m!8227804))

(declare-fun m!8227806 () Bool)

(assert (=> b!7777983 m!8227806))

(declare-fun m!8227808 () Bool)

(assert (=> bm!720935 m!8227808))

(declare-fun m!8227810 () Bool)

(assert (=> d!2344959 m!8227810))

(assert (=> d!2344959 m!8227718))

(assert (=> b!7777749 d!2344959))

(declare-fun d!2344961 () Bool)

(declare-fun nullableFct!3596 (Regex!20802) Bool)

(assert (=> d!2344961 (= (nullable!9190 r1!6279) (nullableFct!3596 r1!6279))))

(declare-fun bs!1966188 () Bool)

(assert (= bs!1966188 d!2344961))

(declare-fun m!8227812 () Bool)

(assert (=> bs!1966188 m!8227812))

(assert (=> b!7777742 d!2344961))

(declare-fun b!7777990 () Bool)

(declare-fun res!3100371 () Bool)

(declare-fun e!4607775 () Bool)

(assert (=> b!7777990 (=> res!3100371 e!4607775)))

(declare-fun e!4607773 () Bool)

(assert (=> b!7777990 (= res!3100371 e!4607773)))

(declare-fun res!3100372 () Bool)

(assert (=> b!7777990 (=> (not res!3100372) (not e!4607773))))

(declare-fun lt!2672492 () Bool)

(assert (=> b!7777990 (= res!3100372 lt!2672492)))

(declare-fun bm!720936 () Bool)

(declare-fun call!720941 () Bool)

(assert (=> bm!720936 (= call!720941 (isEmpty!42174 (t!388376 s!14292)))))

(declare-fun b!7777991 () Bool)

(declare-fun e!4607771 () Bool)

(assert (=> b!7777991 (= e!4607771 (not lt!2672492))))

(declare-fun b!7777992 () Bool)

(declare-fun e!4607769 () Bool)

(assert (=> b!7777992 (= e!4607769 (matchR!10262 (derivativeStep!6145 lt!2672454 (head!15905 (t!388376 s!14292))) (tail!15446 (t!388376 s!14292))))))

(declare-fun b!7777993 () Bool)

(declare-fun e!4607774 () Bool)

(assert (=> b!7777993 (= e!4607774 (not (= (head!15905 (t!388376 s!14292)) (c!1433265 lt!2672454))))))

(declare-fun b!7777994 () Bool)

(declare-fun e!4607770 () Bool)

(assert (=> b!7777994 (= e!4607775 e!4607770)))

(declare-fun res!3100376 () Bool)

(assert (=> b!7777994 (=> (not res!3100376) (not e!4607770))))

(assert (=> b!7777994 (= res!3100376 (not lt!2672492))))

(declare-fun b!7777995 () Bool)

(declare-fun e!4607772 () Bool)

(assert (=> b!7777995 (= e!4607772 e!4607771)))

(declare-fun c!1433331 () Bool)

(assert (=> b!7777995 (= c!1433331 (is-EmptyLang!20802 lt!2672454))))

(declare-fun b!7777996 () Bool)

(declare-fun res!3100369 () Bool)

(assert (=> b!7777996 (=> res!3100369 e!4607774)))

(assert (=> b!7777996 (= res!3100369 (not (isEmpty!42174 (tail!15446 (t!388376 s!14292)))))))

(declare-fun b!7777997 () Bool)

(declare-fun res!3100373 () Bool)

(assert (=> b!7777997 (=> res!3100373 e!4607775)))

(assert (=> b!7777997 (= res!3100373 (not (is-ElementMatch!20802 lt!2672454)))))

(assert (=> b!7777997 (= e!4607771 e!4607775)))

(declare-fun d!2344963 () Bool)

(assert (=> d!2344963 e!4607772))

(declare-fun c!1433330 () Bool)

(assert (=> d!2344963 (= c!1433330 (is-EmptyExpr!20802 lt!2672454))))

(assert (=> d!2344963 (= lt!2672492 e!4607769)))

(declare-fun c!1433332 () Bool)

(assert (=> d!2344963 (= c!1433332 (isEmpty!42174 (t!388376 s!14292)))))

(assert (=> d!2344963 (validRegex!11216 lt!2672454)))

(assert (=> d!2344963 (= (matchR!10262 lt!2672454 (t!388376 s!14292)) lt!2672492)))

(declare-fun b!7777998 () Bool)

(assert (=> b!7777998 (= e!4607769 (nullable!9190 lt!2672454))))

(declare-fun b!7777999 () Bool)

(declare-fun res!3100370 () Bool)

(assert (=> b!7777999 (=> (not res!3100370) (not e!4607773))))

(assert (=> b!7777999 (= res!3100370 (isEmpty!42174 (tail!15446 (t!388376 s!14292))))))

(declare-fun b!7778000 () Bool)

(declare-fun res!3100374 () Bool)

(assert (=> b!7778000 (=> (not res!3100374) (not e!4607773))))

(assert (=> b!7778000 (= res!3100374 (not call!720941))))

(declare-fun b!7778001 () Bool)

(assert (=> b!7778001 (= e!4607772 (= lt!2672492 call!720941))))

(declare-fun b!7778002 () Bool)

(assert (=> b!7778002 (= e!4607773 (= (head!15905 (t!388376 s!14292)) (c!1433265 lt!2672454)))))

(declare-fun b!7778003 () Bool)

(assert (=> b!7778003 (= e!4607770 e!4607774)))

(declare-fun res!3100375 () Bool)

(assert (=> b!7778003 (=> res!3100375 e!4607774)))

(assert (=> b!7778003 (= res!3100375 call!720941)))

(assert (= (and d!2344963 c!1433332) b!7777998))

(assert (= (and d!2344963 (not c!1433332)) b!7777992))

(assert (= (and d!2344963 c!1433330) b!7778001))

(assert (= (and d!2344963 (not c!1433330)) b!7777995))

(assert (= (and b!7777995 c!1433331) b!7777991))

(assert (= (and b!7777995 (not c!1433331)) b!7777997))

(assert (= (and b!7777997 (not res!3100373)) b!7777990))

(assert (= (and b!7777990 res!3100372) b!7778000))

(assert (= (and b!7778000 res!3100374) b!7777999))

(assert (= (and b!7777999 res!3100370) b!7778002))

(assert (= (and b!7777990 (not res!3100371)) b!7777994))

(assert (= (and b!7777994 res!3100376) b!7778003))

(assert (= (and b!7778003 (not res!3100375)) b!7777996))

(assert (= (and b!7777996 (not res!3100369)) b!7777993))

(assert (= (or b!7778001 b!7778000 b!7778003) bm!720936))

(assert (=> b!7778002 m!8227746))

(assert (=> bm!720936 m!8227748))

(assert (=> b!7777992 m!8227746))

(assert (=> b!7777992 m!8227746))

(declare-fun m!8227814 () Bool)

(assert (=> b!7777992 m!8227814))

(assert (=> b!7777992 m!8227752))

(assert (=> b!7777992 m!8227814))

(assert (=> b!7777992 m!8227752))

(declare-fun m!8227816 () Bool)

(assert (=> b!7777992 m!8227816))

(assert (=> b!7777996 m!8227752))

(assert (=> b!7777996 m!8227752))

(assert (=> b!7777996 m!8227756))

(assert (=> b!7777999 m!8227752))

(assert (=> b!7777999 m!8227752))

(assert (=> b!7777999 m!8227756))

(assert (=> b!7777993 m!8227746))

(declare-fun m!8227818 () Bool)

(assert (=> b!7777998 m!8227818))

(assert (=> d!2344963 m!8227748))

(declare-fun m!8227820 () Bool)

(assert (=> d!2344963 m!8227820))

(assert (=> b!7777748 d!2344963))

(declare-fun d!2344965 () Bool)

(declare-fun e!4607794 () Bool)

(assert (=> d!2344965 e!4607794))

(declare-fun res!3100398 () Bool)

(assert (=> d!2344965 (=> res!3100398 e!4607794)))

(assert (=> d!2344965 (= res!3100398 (matchR!10262 lt!2672454 (t!388376 s!14292)))))

(declare-fun lt!2672497 () Unit!168506)

(declare-fun choose!59490 (Regex!20802 Regex!20802 List!73641) Unit!168506)

(assert (=> d!2344965 (= lt!2672497 (choose!59490 lt!2672454 lt!2672453 (t!388376 s!14292)))))

(declare-fun e!4607795 () Bool)

(assert (=> d!2344965 e!4607795))

(declare-fun res!3100397 () Bool)

(assert (=> d!2344965 (=> (not res!3100397) (not e!4607795))))

(assert (=> d!2344965 (= res!3100397 (validRegex!11216 lt!2672454))))

(assert (=> d!2344965 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!377 lt!2672454 lt!2672453 (t!388376 s!14292)) lt!2672497)))

(declare-fun b!7778036 () Bool)

(assert (=> b!7778036 (= e!4607795 (validRegex!11216 lt!2672453))))

(declare-fun b!7778037 () Bool)

(assert (=> b!7778037 (= e!4607794 (matchR!10262 lt!2672453 (t!388376 s!14292)))))

(assert (= (and d!2344965 res!3100397) b!7778036))

(assert (= (and d!2344965 (not res!3100398)) b!7778037))

(assert (=> d!2344965 m!8227714))

(declare-fun m!8227838 () Bool)

(assert (=> d!2344965 m!8227838))

(assert (=> d!2344965 m!8227820))

(assert (=> b!7778036 m!8227760))

(assert (=> b!7778037 m!8227720))

(assert (=> b!7777748 d!2344965))

(declare-fun d!2344969 () Bool)

(declare-fun e!4607808 () Bool)

(assert (=> d!2344969 e!4607808))

(declare-fun res!3100412 () Bool)

(assert (=> d!2344969 (=> (not res!3100412) (not e!4607808))))

(declare-fun lt!2672501 () List!73641)

(declare-fun content!15599 (List!73641) (Set C!41930))

(assert (=> d!2344969 (= res!3100412 (= (content!15599 lt!2672501) (set.union (content!15599 Nil!73517) (content!15599 s!14292))))))

(declare-fun e!4607807 () List!73641)

(assert (=> d!2344969 (= lt!2672501 e!4607807)))

(declare-fun c!1433344 () Bool)

(assert (=> d!2344969 (= c!1433344 (is-Nil!73517 Nil!73517))))

(assert (=> d!2344969 (= (++!17914 Nil!73517 s!14292) lt!2672501)))

(declare-fun b!7778062 () Bool)

(declare-fun res!3100411 () Bool)

(assert (=> b!7778062 (=> (not res!3100411) (not e!4607808))))

(declare-fun size!42702 (List!73641) Int)

(assert (=> b!7778062 (= res!3100411 (= (size!42702 lt!2672501) (+ (size!42702 Nil!73517) (size!42702 s!14292))))))

(declare-fun b!7778063 () Bool)

(assert (=> b!7778063 (= e!4607808 (or (not (= s!14292 Nil!73517)) (= lt!2672501 Nil!73517)))))

(declare-fun b!7778061 () Bool)

(assert (=> b!7778061 (= e!4607807 (Cons!73517 (h!79965 Nil!73517) (++!17914 (t!388376 Nil!73517) s!14292)))))

(declare-fun b!7778060 () Bool)

(assert (=> b!7778060 (= e!4607807 s!14292)))

(assert (= (and d!2344969 c!1433344) b!7778060))

(assert (= (and d!2344969 (not c!1433344)) b!7778061))

(assert (= (and d!2344969 res!3100412) b!7778062))

(assert (= (and b!7778062 res!3100411) b!7778063))

(declare-fun m!8227864 () Bool)

(assert (=> d!2344969 m!8227864))

(declare-fun m!8227866 () Bool)

(assert (=> d!2344969 m!8227866))

(declare-fun m!8227868 () Bool)

(assert (=> d!2344969 m!8227868))

(declare-fun m!8227870 () Bool)

(assert (=> b!7778062 m!8227870))

(declare-fun m!8227872 () Bool)

(assert (=> b!7778062 m!8227872))

(declare-fun m!8227874 () Bool)

(assert (=> b!7778062 m!8227874))

(declare-fun m!8227876 () Bool)

(assert (=> b!7778061 m!8227876))

(assert (=> b!7777753 d!2344969))

(declare-fun b!7778112 () Bool)

(declare-fun res!3100440 () Bool)

(declare-fun e!4607842 () Bool)

(assert (=> b!7778112 (=> (not res!3100440) (not e!4607842))))

(declare-fun call!720958 () Bool)

(assert (=> b!7778112 (= res!3100440 call!720958)))

(declare-fun e!4607845 () Bool)

(assert (=> b!7778112 (= e!4607845 e!4607842)))

(declare-fun b!7778113 () Bool)

(declare-fun e!4607843 () Bool)

(assert (=> b!7778113 (= e!4607843 e!4607845)))

(declare-fun c!1433358 () Bool)

(assert (=> b!7778113 (= c!1433358 (is-Union!20802 r1!6279))))

(declare-fun bm!720951 () Bool)

(declare-fun call!720957 () Bool)

(declare-fun c!1433357 () Bool)

(assert (=> bm!720951 (= call!720957 (validRegex!11216 (ite c!1433357 (reg!21131 r1!6279) (ite c!1433358 (regOne!42117 r1!6279) (regOne!42116 r1!6279)))))))

(declare-fun b!7778114 () Bool)

(declare-fun e!4607847 () Bool)

(declare-fun call!720956 () Bool)

(assert (=> b!7778114 (= e!4607847 call!720956)))

(declare-fun b!7778116 () Bool)

(declare-fun e!4607841 () Bool)

(assert (=> b!7778116 (= e!4607841 e!4607843)))

(assert (=> b!7778116 (= c!1433357 (is-Star!20802 r1!6279))))

(declare-fun b!7778117 () Bool)

(declare-fun e!4607846 () Bool)

(assert (=> b!7778117 (= e!4607846 e!4607847)))

(declare-fun res!3100438 () Bool)

(assert (=> b!7778117 (=> (not res!3100438) (not e!4607847))))

(assert (=> b!7778117 (= res!3100438 call!720958)))

(declare-fun bm!720952 () Bool)

(assert (=> bm!720952 (= call!720956 (validRegex!11216 (ite c!1433358 (regTwo!42117 r1!6279) (regTwo!42116 r1!6279))))))

(declare-fun b!7778118 () Bool)

(declare-fun e!4607844 () Bool)

(assert (=> b!7778118 (= e!4607843 e!4607844)))

(declare-fun res!3100437 () Bool)

(assert (=> b!7778118 (= res!3100437 (not (nullable!9190 (reg!21131 r1!6279))))))

(assert (=> b!7778118 (=> (not res!3100437) (not e!4607844))))

(declare-fun b!7778119 () Bool)

(assert (=> b!7778119 (= e!4607842 call!720956)))

(declare-fun b!7778120 () Bool)

(declare-fun res!3100439 () Bool)

(assert (=> b!7778120 (=> res!3100439 e!4607846)))

(assert (=> b!7778120 (= res!3100439 (not (is-Concat!29647 r1!6279)))))

(assert (=> b!7778120 (= e!4607845 e!4607846)))

(declare-fun bm!720953 () Bool)

(assert (=> bm!720953 (= call!720958 call!720957)))

(declare-fun b!7778115 () Bool)

(assert (=> b!7778115 (= e!4607844 call!720957)))

(declare-fun d!2344975 () Bool)

(declare-fun res!3100441 () Bool)

(assert (=> d!2344975 (=> res!3100441 e!4607841)))

(assert (=> d!2344975 (= res!3100441 (is-ElementMatch!20802 r1!6279))))

(assert (=> d!2344975 (= (validRegex!11216 r1!6279) e!4607841)))

(assert (= (and d!2344975 (not res!3100441)) b!7778116))

(assert (= (and b!7778116 c!1433357) b!7778118))

(assert (= (and b!7778116 (not c!1433357)) b!7778113))

(assert (= (and b!7778118 res!3100437) b!7778115))

(assert (= (and b!7778113 c!1433358) b!7778112))

(assert (= (and b!7778113 (not c!1433358)) b!7778120))

(assert (= (and b!7778112 res!3100440) b!7778119))

(assert (= (and b!7778120 (not res!3100439)) b!7778117))

(assert (= (and b!7778117 res!3100438) b!7778114))

(assert (= (or b!7778112 b!7778117) bm!720953))

(assert (= (or b!7778119 b!7778114) bm!720952))

(assert (= (or b!7778115 bm!720953) bm!720951))

(declare-fun m!8227896 () Bool)

(assert (=> bm!720951 m!8227896))

(declare-fun m!8227898 () Bool)

(assert (=> bm!720952 m!8227898))

(declare-fun m!8227900 () Bool)

(assert (=> b!7778118 m!8227900))

(assert (=> start!740368 d!2344975))

(declare-fun b!7778121 () Bool)

(declare-fun res!3100444 () Bool)

(declare-fun e!4607854 () Bool)

(assert (=> b!7778121 (=> res!3100444 e!4607854)))

(declare-fun e!4607852 () Bool)

(assert (=> b!7778121 (= res!3100444 e!4607852)))

(declare-fun res!3100445 () Bool)

(assert (=> b!7778121 (=> (not res!3100445) (not e!4607852))))

(declare-fun lt!2672507 () Bool)

(assert (=> b!7778121 (= res!3100445 lt!2672507)))

(declare-fun bm!720954 () Bool)

(declare-fun call!720959 () Bool)

(assert (=> bm!720954 (= call!720959 (isEmpty!42174 s!14292))))

(declare-fun b!7778122 () Bool)

(declare-fun e!4607850 () Bool)

(assert (=> b!7778122 (= e!4607850 (not lt!2672507))))

(declare-fun b!7778123 () Bool)

(declare-fun e!4607848 () Bool)

(assert (=> b!7778123 (= e!4607848 (matchR!10262 (derivativeStep!6145 lt!2672456 (head!15905 s!14292)) (tail!15446 s!14292)))))

(declare-fun b!7778124 () Bool)

(declare-fun e!4607853 () Bool)

(assert (=> b!7778124 (= e!4607853 (not (= (head!15905 s!14292) (c!1433265 lt!2672456))))))

(declare-fun b!7778125 () Bool)

(declare-fun e!4607849 () Bool)

(assert (=> b!7778125 (= e!4607854 e!4607849)))

(declare-fun res!3100449 () Bool)

(assert (=> b!7778125 (=> (not res!3100449) (not e!4607849))))

(assert (=> b!7778125 (= res!3100449 (not lt!2672507))))

(declare-fun b!7778126 () Bool)

(declare-fun e!4607851 () Bool)

(assert (=> b!7778126 (= e!4607851 e!4607850)))

(declare-fun c!1433360 () Bool)

(assert (=> b!7778126 (= c!1433360 (is-EmptyLang!20802 lt!2672456))))

(declare-fun b!7778127 () Bool)

(declare-fun res!3100442 () Bool)

(assert (=> b!7778127 (=> res!3100442 e!4607853)))

(assert (=> b!7778127 (= res!3100442 (not (isEmpty!42174 (tail!15446 s!14292))))))

(declare-fun b!7778128 () Bool)

(declare-fun res!3100446 () Bool)

(assert (=> b!7778128 (=> res!3100446 e!4607854)))

(assert (=> b!7778128 (= res!3100446 (not (is-ElementMatch!20802 lt!2672456)))))

(assert (=> b!7778128 (= e!4607850 e!4607854)))

(declare-fun d!2344983 () Bool)

(assert (=> d!2344983 e!4607851))

(declare-fun c!1433359 () Bool)

(assert (=> d!2344983 (= c!1433359 (is-EmptyExpr!20802 lt!2672456))))

(assert (=> d!2344983 (= lt!2672507 e!4607848)))

(declare-fun c!1433361 () Bool)

(assert (=> d!2344983 (= c!1433361 (isEmpty!42174 s!14292))))

(assert (=> d!2344983 (validRegex!11216 lt!2672456)))

(assert (=> d!2344983 (= (matchR!10262 lt!2672456 s!14292) lt!2672507)))

(declare-fun b!7778129 () Bool)

(assert (=> b!7778129 (= e!4607848 (nullable!9190 lt!2672456))))

(declare-fun b!7778130 () Bool)

(declare-fun res!3100443 () Bool)

(assert (=> b!7778130 (=> (not res!3100443) (not e!4607852))))

(assert (=> b!7778130 (= res!3100443 (isEmpty!42174 (tail!15446 s!14292)))))

(declare-fun b!7778131 () Bool)

(declare-fun res!3100447 () Bool)

(assert (=> b!7778131 (=> (not res!3100447) (not e!4607852))))

(assert (=> b!7778131 (= res!3100447 (not call!720959))))

(declare-fun b!7778132 () Bool)

(assert (=> b!7778132 (= e!4607851 (= lt!2672507 call!720959))))

(declare-fun b!7778133 () Bool)

(assert (=> b!7778133 (= e!4607852 (= (head!15905 s!14292) (c!1433265 lt!2672456)))))

(declare-fun b!7778134 () Bool)

(assert (=> b!7778134 (= e!4607849 e!4607853)))

(declare-fun res!3100448 () Bool)

(assert (=> b!7778134 (=> res!3100448 e!4607853)))

(assert (=> b!7778134 (= res!3100448 call!720959)))

(assert (= (and d!2344983 c!1433361) b!7778129))

(assert (= (and d!2344983 (not c!1433361)) b!7778123))

(assert (= (and d!2344983 c!1433359) b!7778132))

(assert (= (and d!2344983 (not c!1433359)) b!7778126))

(assert (= (and b!7778126 c!1433360) b!7778122))

(assert (= (and b!7778126 (not c!1433360)) b!7778128))

(assert (= (and b!7778128 (not res!3100446)) b!7778121))

(assert (= (and b!7778121 res!3100445) b!7778131))

(assert (= (and b!7778131 res!3100447) b!7778130))

(assert (= (and b!7778130 res!3100443) b!7778133))

(assert (= (and b!7778121 (not res!3100444)) b!7778125))

(assert (= (and b!7778125 res!3100449) b!7778134))

(assert (= (and b!7778134 (not res!3100448)) b!7778127))

(assert (= (and b!7778127 (not res!3100442)) b!7778124))

(assert (= (or b!7778132 b!7778131 b!7778134) bm!720954))

(declare-fun m!8227902 () Bool)

(assert (=> b!7778133 m!8227902))

(declare-fun m!8227904 () Bool)

(assert (=> bm!720954 m!8227904))

(assert (=> b!7778123 m!8227902))

(assert (=> b!7778123 m!8227902))

(declare-fun m!8227906 () Bool)

(assert (=> b!7778123 m!8227906))

(declare-fun m!8227908 () Bool)

(assert (=> b!7778123 m!8227908))

(assert (=> b!7778123 m!8227906))

(assert (=> b!7778123 m!8227908))

(declare-fun m!8227910 () Bool)

(assert (=> b!7778123 m!8227910))

(assert (=> b!7778127 m!8227908))

(assert (=> b!7778127 m!8227908))

(declare-fun m!8227912 () Bool)

(assert (=> b!7778127 m!8227912))

(assert (=> b!7778130 m!8227908))

(assert (=> b!7778130 m!8227908))

(assert (=> b!7778130 m!8227912))

(assert (=> b!7778124 m!8227902))

(declare-fun m!8227914 () Bool)

(assert (=> b!7778129 m!8227914))

(assert (=> d!2344983 m!8227904))

(assert (=> d!2344983 m!8227794))

(assert (=> b!7777752 d!2344983))

(declare-fun b!7778135 () Bool)

(declare-fun res!3100453 () Bool)

(declare-fun e!4607856 () Bool)

(assert (=> b!7778135 (=> (not res!3100453) (not e!4607856))))

(declare-fun call!720962 () Bool)

(assert (=> b!7778135 (= res!3100453 call!720962)))

(declare-fun e!4607859 () Bool)

(assert (=> b!7778135 (= e!4607859 e!4607856)))

(declare-fun b!7778136 () Bool)

(declare-fun e!4607857 () Bool)

(assert (=> b!7778136 (= e!4607857 e!4607859)))

(declare-fun c!1433363 () Bool)

(assert (=> b!7778136 (= c!1433363 (is-Union!20802 r2!6217))))

(declare-fun c!1433362 () Bool)

(declare-fun call!720961 () Bool)

(declare-fun bm!720955 () Bool)

(assert (=> bm!720955 (= call!720961 (validRegex!11216 (ite c!1433362 (reg!21131 r2!6217) (ite c!1433363 (regOne!42117 r2!6217) (regOne!42116 r2!6217)))))))

(declare-fun b!7778137 () Bool)

(declare-fun e!4607861 () Bool)

(declare-fun call!720960 () Bool)

(assert (=> b!7778137 (= e!4607861 call!720960)))

(declare-fun b!7778139 () Bool)

(declare-fun e!4607855 () Bool)

(assert (=> b!7778139 (= e!4607855 e!4607857)))

(assert (=> b!7778139 (= c!1433362 (is-Star!20802 r2!6217))))

(declare-fun b!7778140 () Bool)

(declare-fun e!4607860 () Bool)

(assert (=> b!7778140 (= e!4607860 e!4607861)))

(declare-fun res!3100451 () Bool)

(assert (=> b!7778140 (=> (not res!3100451) (not e!4607861))))

(assert (=> b!7778140 (= res!3100451 call!720962)))

(declare-fun bm!720956 () Bool)

(assert (=> bm!720956 (= call!720960 (validRegex!11216 (ite c!1433363 (regTwo!42117 r2!6217) (regTwo!42116 r2!6217))))))

(declare-fun b!7778141 () Bool)

(declare-fun e!4607858 () Bool)

(assert (=> b!7778141 (= e!4607857 e!4607858)))

(declare-fun res!3100450 () Bool)

(assert (=> b!7778141 (= res!3100450 (not (nullable!9190 (reg!21131 r2!6217))))))

(assert (=> b!7778141 (=> (not res!3100450) (not e!4607858))))

(declare-fun b!7778142 () Bool)

(assert (=> b!7778142 (= e!4607856 call!720960)))

(declare-fun b!7778143 () Bool)

(declare-fun res!3100452 () Bool)

(assert (=> b!7778143 (=> res!3100452 e!4607860)))

(assert (=> b!7778143 (= res!3100452 (not (is-Concat!29647 r2!6217)))))

(assert (=> b!7778143 (= e!4607859 e!4607860)))

(declare-fun bm!720957 () Bool)

(assert (=> bm!720957 (= call!720962 call!720961)))

(declare-fun b!7778138 () Bool)

(assert (=> b!7778138 (= e!4607858 call!720961)))

(declare-fun d!2344985 () Bool)

(declare-fun res!3100454 () Bool)

(assert (=> d!2344985 (=> res!3100454 e!4607855)))

(assert (=> d!2344985 (= res!3100454 (is-ElementMatch!20802 r2!6217))))

(assert (=> d!2344985 (= (validRegex!11216 r2!6217) e!4607855)))

(assert (= (and d!2344985 (not res!3100454)) b!7778139))

(assert (= (and b!7778139 c!1433362) b!7778141))

(assert (= (and b!7778139 (not c!1433362)) b!7778136))

(assert (= (and b!7778141 res!3100450) b!7778138))

(assert (= (and b!7778136 c!1433363) b!7778135))

(assert (= (and b!7778136 (not c!1433363)) b!7778143))

(assert (= (and b!7778135 res!3100453) b!7778142))

(assert (= (and b!7778143 (not res!3100452)) b!7778140))

(assert (= (and b!7778140 res!3100451) b!7778137))

(assert (= (or b!7778135 b!7778140) bm!720957))

(assert (= (or b!7778142 b!7778137) bm!720956))

(assert (= (or b!7778138 bm!720957) bm!720955))

(declare-fun m!8227916 () Bool)

(assert (=> bm!720955 m!8227916))

(declare-fun m!8227918 () Bool)

(assert (=> bm!720956 m!8227918))

(declare-fun m!8227920 () Bool)

(assert (=> b!7778141 m!8227920))

(assert (=> b!7777741 d!2344985))

(declare-fun b!7778172 () Bool)

(declare-fun e!4607878 () Bool)

(assert (=> b!7778172 (= e!4607878 tp_is_empty!51959)))

(assert (=> b!7777740 (= tp!2285706 e!4607878)))

(declare-fun b!7778173 () Bool)

(declare-fun tp!2285755 () Bool)

(declare-fun tp!2285753 () Bool)

(assert (=> b!7778173 (= e!4607878 (and tp!2285755 tp!2285753))))

(declare-fun b!7778175 () Bool)

(declare-fun tp!2285752 () Bool)

(declare-fun tp!2285754 () Bool)

(assert (=> b!7778175 (= e!4607878 (and tp!2285752 tp!2285754))))

(declare-fun b!7778174 () Bool)

(declare-fun tp!2285756 () Bool)

(assert (=> b!7778174 (= e!4607878 tp!2285756)))

(assert (= (and b!7777740 (is-ElementMatch!20802 (reg!21131 r2!6217))) b!7778172))

(assert (= (and b!7777740 (is-Concat!29647 (reg!21131 r2!6217))) b!7778173))

(assert (= (and b!7777740 (is-Star!20802 (reg!21131 r2!6217))) b!7778174))

(assert (= (and b!7777740 (is-Union!20802 (reg!21131 r2!6217))) b!7778175))

(declare-fun b!7778176 () Bool)

(declare-fun e!4607879 () Bool)

(assert (=> b!7778176 (= e!4607879 tp_is_empty!51959)))

(assert (=> b!7777745 (= tp!2285704 e!4607879)))

(declare-fun b!7778177 () Bool)

(declare-fun tp!2285760 () Bool)

(declare-fun tp!2285758 () Bool)

(assert (=> b!7778177 (= e!4607879 (and tp!2285760 tp!2285758))))

(declare-fun b!7778179 () Bool)

(declare-fun tp!2285757 () Bool)

(declare-fun tp!2285759 () Bool)

(assert (=> b!7778179 (= e!4607879 (and tp!2285757 tp!2285759))))

(declare-fun b!7778178 () Bool)

(declare-fun tp!2285761 () Bool)

(assert (=> b!7778178 (= e!4607879 tp!2285761)))

(assert (= (and b!7777745 (is-ElementMatch!20802 (regOne!42117 r2!6217))) b!7778176))

(assert (= (and b!7777745 (is-Concat!29647 (regOne!42117 r2!6217))) b!7778177))

(assert (= (and b!7777745 (is-Star!20802 (regOne!42117 r2!6217))) b!7778178))

(assert (= (and b!7777745 (is-Union!20802 (regOne!42117 r2!6217))) b!7778179))

(declare-fun b!7778180 () Bool)

(declare-fun e!4607880 () Bool)

(assert (=> b!7778180 (= e!4607880 tp_is_empty!51959)))

(assert (=> b!7777745 (= tp!2285705 e!4607880)))

(declare-fun b!7778181 () Bool)

(declare-fun tp!2285765 () Bool)

(declare-fun tp!2285763 () Bool)

(assert (=> b!7778181 (= e!4607880 (and tp!2285765 tp!2285763))))

(declare-fun b!7778183 () Bool)

(declare-fun tp!2285762 () Bool)

(declare-fun tp!2285764 () Bool)

(assert (=> b!7778183 (= e!4607880 (and tp!2285762 tp!2285764))))

(declare-fun b!7778182 () Bool)

(declare-fun tp!2285766 () Bool)

(assert (=> b!7778182 (= e!4607880 tp!2285766)))

(assert (= (and b!7777745 (is-ElementMatch!20802 (regTwo!42117 r2!6217))) b!7778180))

(assert (= (and b!7777745 (is-Concat!29647 (regTwo!42117 r2!6217))) b!7778181))

(assert (= (and b!7777745 (is-Star!20802 (regTwo!42117 r2!6217))) b!7778182))

(assert (= (and b!7777745 (is-Union!20802 (regTwo!42117 r2!6217))) b!7778183))

(declare-fun b!7778184 () Bool)

(declare-fun e!4607881 () Bool)

(assert (=> b!7778184 (= e!4607881 tp_is_empty!51959)))

(assert (=> b!7777754 (= tp!2285707 e!4607881)))

(declare-fun b!7778185 () Bool)

(declare-fun tp!2285770 () Bool)

(declare-fun tp!2285768 () Bool)

(assert (=> b!7778185 (= e!4607881 (and tp!2285770 tp!2285768))))

(declare-fun b!7778187 () Bool)

(declare-fun tp!2285767 () Bool)

(declare-fun tp!2285769 () Bool)

(assert (=> b!7778187 (= e!4607881 (and tp!2285767 tp!2285769))))

(declare-fun b!7778186 () Bool)

(declare-fun tp!2285771 () Bool)

(assert (=> b!7778186 (= e!4607881 tp!2285771)))

(assert (= (and b!7777754 (is-ElementMatch!20802 (regOne!42117 r1!6279))) b!7778184))

(assert (= (and b!7777754 (is-Concat!29647 (regOne!42117 r1!6279))) b!7778185))

(assert (= (and b!7777754 (is-Star!20802 (regOne!42117 r1!6279))) b!7778186))

(assert (= (and b!7777754 (is-Union!20802 (regOne!42117 r1!6279))) b!7778187))

(declare-fun b!7778188 () Bool)

(declare-fun e!4607882 () Bool)

(assert (=> b!7778188 (= e!4607882 tp_is_empty!51959)))

(assert (=> b!7777754 (= tp!2285701 e!4607882)))

(declare-fun b!7778189 () Bool)

(declare-fun tp!2285775 () Bool)

(declare-fun tp!2285773 () Bool)

(assert (=> b!7778189 (= e!4607882 (and tp!2285775 tp!2285773))))

(declare-fun b!7778191 () Bool)

(declare-fun tp!2285772 () Bool)

(declare-fun tp!2285774 () Bool)

(assert (=> b!7778191 (= e!4607882 (and tp!2285772 tp!2285774))))

(declare-fun b!7778190 () Bool)

(declare-fun tp!2285776 () Bool)

(assert (=> b!7778190 (= e!4607882 tp!2285776)))

(assert (= (and b!7777754 (is-ElementMatch!20802 (regTwo!42117 r1!6279))) b!7778188))

(assert (= (and b!7777754 (is-Concat!29647 (regTwo!42117 r1!6279))) b!7778189))

(assert (= (and b!7777754 (is-Star!20802 (regTwo!42117 r1!6279))) b!7778190))

(assert (= (and b!7777754 (is-Union!20802 (regTwo!42117 r1!6279))) b!7778191))

(declare-fun b!7778192 () Bool)

(declare-fun e!4607883 () Bool)

(assert (=> b!7778192 (= e!4607883 tp_is_empty!51959)))

(assert (=> b!7777743 (= tp!2285708 e!4607883)))

(declare-fun b!7778193 () Bool)

(declare-fun tp!2285780 () Bool)

(declare-fun tp!2285778 () Bool)

(assert (=> b!7778193 (= e!4607883 (and tp!2285780 tp!2285778))))

(declare-fun b!7778195 () Bool)

(declare-fun tp!2285777 () Bool)

(declare-fun tp!2285779 () Bool)

(assert (=> b!7778195 (= e!4607883 (and tp!2285777 tp!2285779))))

(declare-fun b!7778194 () Bool)

(declare-fun tp!2285781 () Bool)

(assert (=> b!7778194 (= e!4607883 tp!2285781)))

(assert (= (and b!7777743 (is-ElementMatch!20802 (reg!21131 r1!6279))) b!7778192))

(assert (= (and b!7777743 (is-Concat!29647 (reg!21131 r1!6279))) b!7778193))

(assert (= (and b!7777743 (is-Star!20802 (reg!21131 r1!6279))) b!7778194))

(assert (= (and b!7777743 (is-Union!20802 (reg!21131 r1!6279))) b!7778195))

(declare-fun b!7778200 () Bool)

(declare-fun e!4607886 () Bool)

(declare-fun tp!2285784 () Bool)

(assert (=> b!7778200 (= e!4607886 (and tp_is_empty!51959 tp!2285784))))

(assert (=> b!7777758 (= tp!2285699 e!4607886)))

(assert (= (and b!7777758 (is-Cons!73517 (t!388376 s!14292))) b!7778200))

(declare-fun b!7778201 () Bool)

(declare-fun e!4607887 () Bool)

(assert (=> b!7778201 (= e!4607887 tp_is_empty!51959)))

(assert (=> b!7777747 (= tp!2285702 e!4607887)))

(declare-fun b!7778202 () Bool)

(declare-fun tp!2285788 () Bool)

(declare-fun tp!2285786 () Bool)

(assert (=> b!7778202 (= e!4607887 (and tp!2285788 tp!2285786))))

(declare-fun b!7778204 () Bool)

(declare-fun tp!2285785 () Bool)

(declare-fun tp!2285787 () Bool)

(assert (=> b!7778204 (= e!4607887 (and tp!2285785 tp!2285787))))

(declare-fun b!7778203 () Bool)

(declare-fun tp!2285789 () Bool)

(assert (=> b!7778203 (= e!4607887 tp!2285789)))

(assert (= (and b!7777747 (is-ElementMatch!20802 (regOne!42116 r2!6217))) b!7778201))

(assert (= (and b!7777747 (is-Concat!29647 (regOne!42116 r2!6217))) b!7778202))

(assert (= (and b!7777747 (is-Star!20802 (regOne!42116 r2!6217))) b!7778203))

(assert (= (and b!7777747 (is-Union!20802 (regOne!42116 r2!6217))) b!7778204))

(declare-fun b!7778205 () Bool)

(declare-fun e!4607888 () Bool)

(assert (=> b!7778205 (= e!4607888 tp_is_empty!51959)))

(assert (=> b!7777747 (= tp!2285703 e!4607888)))

(declare-fun b!7778206 () Bool)

(declare-fun tp!2285793 () Bool)

(declare-fun tp!2285791 () Bool)

(assert (=> b!7778206 (= e!4607888 (and tp!2285793 tp!2285791))))

(declare-fun b!7778208 () Bool)

(declare-fun tp!2285790 () Bool)

(declare-fun tp!2285792 () Bool)

(assert (=> b!7778208 (= e!4607888 (and tp!2285790 tp!2285792))))

(declare-fun b!7778207 () Bool)

(declare-fun tp!2285794 () Bool)

(assert (=> b!7778207 (= e!4607888 tp!2285794)))

(assert (= (and b!7777747 (is-ElementMatch!20802 (regTwo!42116 r2!6217))) b!7778205))

(assert (= (and b!7777747 (is-Concat!29647 (regTwo!42116 r2!6217))) b!7778206))

(assert (= (and b!7777747 (is-Star!20802 (regTwo!42116 r2!6217))) b!7778207))

(assert (= (and b!7777747 (is-Union!20802 (regTwo!42116 r2!6217))) b!7778208))

(declare-fun b!7778209 () Bool)

(declare-fun e!4607889 () Bool)

(assert (=> b!7778209 (= e!4607889 tp_is_empty!51959)))

(assert (=> b!7777746 (= tp!2285700 e!4607889)))

(declare-fun b!7778210 () Bool)

(declare-fun tp!2285798 () Bool)

(declare-fun tp!2285796 () Bool)

(assert (=> b!7778210 (= e!4607889 (and tp!2285798 tp!2285796))))

(declare-fun b!7778212 () Bool)

(declare-fun tp!2285795 () Bool)

(declare-fun tp!2285797 () Bool)

(assert (=> b!7778212 (= e!4607889 (and tp!2285795 tp!2285797))))

(declare-fun b!7778211 () Bool)

(declare-fun tp!2285799 () Bool)

(assert (=> b!7778211 (= e!4607889 tp!2285799)))

(assert (= (and b!7777746 (is-ElementMatch!20802 (regOne!42116 r1!6279))) b!7778209))

(assert (= (and b!7777746 (is-Concat!29647 (regOne!42116 r1!6279))) b!7778210))

(assert (= (and b!7777746 (is-Star!20802 (regOne!42116 r1!6279))) b!7778211))

(assert (= (and b!7777746 (is-Union!20802 (regOne!42116 r1!6279))) b!7778212))

(declare-fun b!7778213 () Bool)

(declare-fun e!4607890 () Bool)

(assert (=> b!7778213 (= e!4607890 tp_is_empty!51959)))

(assert (=> b!7777746 (= tp!2285698 e!4607890)))

(declare-fun b!7778214 () Bool)

(declare-fun tp!2285803 () Bool)

(declare-fun tp!2285801 () Bool)

(assert (=> b!7778214 (= e!4607890 (and tp!2285803 tp!2285801))))

(declare-fun b!7778216 () Bool)

(declare-fun tp!2285800 () Bool)

(declare-fun tp!2285802 () Bool)

(assert (=> b!7778216 (= e!4607890 (and tp!2285800 tp!2285802))))

(declare-fun b!7778215 () Bool)

(declare-fun tp!2285804 () Bool)

(assert (=> b!7778215 (= e!4607890 tp!2285804)))

(assert (= (and b!7777746 (is-ElementMatch!20802 (regTwo!42116 r1!6279))) b!7778213))

(assert (= (and b!7777746 (is-Concat!29647 (regTwo!42116 r1!6279))) b!7778214))

(assert (= (and b!7777746 (is-Star!20802 (regTwo!42116 r1!6279))) b!7778215))

(assert (= (and b!7777746 (is-Union!20802 (regTwo!42116 r1!6279))) b!7778216))

(push 1)

(assert (not b!7778002))

(assert (not b!7778211))

(assert (not b!7778194))

(assert (not b!7778202))

(assert (not b!7778118))

(assert (not b!7777996))

(assert (not bm!720925))

(assert (not b!7777870))

(assert (not bm!720931))

(assert (not b!7777983))

(assert (not b!7778208))

(assert (not d!2344945))

(assert (not b!7777881))

(assert (not bm!720951))

(assert (not bm!720954))

(assert (not b!7777999))

(assert (not d!2344957))

(assert (not b!7777963))

(assert (not b!7778189))

(assert (not b!7777866))

(assert (not b!7778177))

(assert (not b!7777876))

(assert (not b!7777872))

(assert (not b!7777880))

(assert (not b!7778195))

(assert (not b!7778173))

(assert (not d!2344965))

(assert (not bm!720935))

(assert (not b!7778133))

(assert (not b!7778181))

(assert (not b!7777993))

(assert (not b!7778185))

(assert (not d!2344963))

(assert (not b!7778124))

(assert (not bm!720932))

(assert (not b!7778037))

(assert (not b!7778200))

(assert (not b!7778183))

(assert (not b!7778190))

(assert (not b!7778204))

(assert (not b!7778036))

(assert (not b!7777890))

(assert (not b!7778186))

(assert (not b!7777867))

(assert (not b!7778174))

(assert (not b!7778141))

(assert (not b!7778215))

(assert (not d!2344959))

(assert (not b!7777887))

(assert (not b!7777973))

(assert tp_is_empty!51959)

(assert (not b!7778214))

(assert (not bm!720922))

(assert (not b!7778182))

(assert (not d!2344969))

(assert (not b!7777998))

(assert (not b!7778062))

(assert (not d!2344949))

(assert (not b!7778193))

(assert (not bm!720955))

(assert (not b!7777873))

(assert (not b!7778061))

(assert (not b!7778206))

(assert (not b!7778127))

(assert (not d!2344961))

(assert (not b!7778130))

(assert (not b!7777992))

(assert (not b!7778187))

(assert (not b!7778179))

(assert (not bm!720956))

(assert (not bm!720936))

(assert (not b!7778129))

(assert (not b!7777884))

(assert (not bm!720905))

(assert (not b!7778216))

(assert (not bm!720928))

(assert (not b!7778175))

(assert (not b!7777886))

(assert (not d!2344983))

(assert (not b!7778212))

(assert (not b!7778207))

(assert (not bm!720904))

(assert (not bm!720952))

(assert (not b!7778191))

(assert (not b!7778203))

(assert (not d!2344951))

(assert (not b!7778210))

(assert (not b!7778178))

(assert (not b!7778123))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

