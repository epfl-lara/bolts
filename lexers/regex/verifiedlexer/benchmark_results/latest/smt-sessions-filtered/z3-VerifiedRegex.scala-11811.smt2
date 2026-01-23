; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!664794 () Bool)

(assert start!664794)

(declare-fun b!6903040 () Bool)

(assert (=> b!6903040 true))

(assert (=> b!6903040 true))

(assert (=> b!6903040 true))

(declare-fun lambda!392014 () Int)

(declare-fun lambda!392013 () Int)

(assert (=> b!6903040 (not (= lambda!392014 lambda!392013))))

(assert (=> b!6903040 true))

(assert (=> b!6903040 true))

(assert (=> b!6903040 true))

(declare-fun b!6903037 () Bool)

(declare-fun e!4156979 () Bool)

(declare-fun tp!1900573 () Bool)

(assert (=> b!6903037 (= e!4156979 tp!1900573)))

(declare-fun b!6903038 () Bool)

(declare-fun e!4156978 () Bool)

(declare-fun tp_is_empty!42963 () Bool)

(assert (=> b!6903038 (= e!4156978 tp_is_empty!42963)))

(declare-fun b!6903039 () Bool)

(declare-fun e!4156976 () Bool)

(declare-fun tp!1900583 () Bool)

(declare-fun tp!1900572 () Bool)

(assert (=> b!6903039 (= e!4156976 (and tp!1900583 tp!1900572))))

(declare-fun e!4156975 () Bool)

(declare-fun lt!2466943 () Bool)

(assert (=> b!6903040 (= e!4156975 lt!2466943)))

(declare-datatypes ((C!34008 0))(
  ( (C!34009 (val!26706 Int)) )
))
(declare-datatypes ((Regex!16869 0))(
  ( (ElementMatch!16869 (c!1282531 C!34008)) (Concat!25714 (regOne!34250 Regex!16869) (regTwo!34250 Regex!16869)) (EmptyExpr!16869) (Star!16869 (reg!17198 Regex!16869)) (EmptyLang!16869) (Union!16869 (regOne!34251 Regex!16869) (regTwo!34251 Regex!16869)) )
))
(declare-fun lt!2466951 () Regex!16869)

(declare-datatypes ((List!66626 0))(
  ( (Nil!66502) (Cons!66502 (h!72950 C!34008) (t!380369 List!66626)) )
))
(declare-datatypes ((tuple2!67472 0))(
  ( (tuple2!67473 (_1!37039 List!66626) (_2!37039 List!66626)) )
))
(declare-fun lt!2466941 () tuple2!67472)

(declare-fun matchRSpec!3932 (Regex!16869 List!66626) Bool)

(assert (=> b!6903040 (= lt!2466943 (matchRSpec!3932 lt!2466951 (_1!37039 lt!2466941)))))

(declare-fun matchR!9014 (Regex!16869 List!66626) Bool)

(assert (=> b!6903040 (= lt!2466943 (matchR!9014 lt!2466951 (_1!37039 lt!2466941)))))

(declare-datatypes ((Unit!160474 0))(
  ( (Unit!160475) )
))
(declare-fun lt!2466950 () Unit!160474)

(declare-fun mainMatchTheorem!3932 (Regex!16869 List!66626) Unit!160474)

(assert (=> b!6903040 (= lt!2466950 (mainMatchTheorem!3932 lt!2466951 (_1!37039 lt!2466941)))))

(declare-datatypes ((Option!16648 0))(
  ( (None!16647) (Some!16647 (v!52919 tuple2!67472)) )
))
(declare-fun lt!2466945 () Option!16648)

(declare-fun get!23254 (Option!16648) tuple2!67472)

(assert (=> b!6903040 (= lt!2466941 (get!23254 lt!2466945))))

(declare-fun Exists!3877 (Int) Bool)

(assert (=> b!6903040 (= (Exists!3877 lambda!392013) (Exists!3877 lambda!392014))))

(declare-fun r3!135 () Regex!16869)

(declare-fun s!14361 () List!66626)

(declare-fun lt!2466947 () Unit!160474)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2350 (Regex!16869 Regex!16869 List!66626) Unit!160474)

(assert (=> b!6903040 (= lt!2466947 (lemmaExistCutMatchRandMatchRSpecEquivalent!2350 lt!2466951 r3!135 s!14361))))

(declare-fun isDefined!13351 (Option!16648) Bool)

(assert (=> b!6903040 (= (isDefined!13351 lt!2466945) (Exists!3877 lambda!392013))))

(declare-fun findConcatSeparation!3062 (Regex!16869 Regex!16869 List!66626 List!66626 List!66626) Option!16648)

(assert (=> b!6903040 (= lt!2466945 (findConcatSeparation!3062 lt!2466951 r3!135 Nil!66502 s!14361 s!14361))))

(declare-fun lt!2466944 () Unit!160474)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2824 (Regex!16869 Regex!16869 List!66626) Unit!160474)

(assert (=> b!6903040 (= lt!2466944 (lemmaFindConcatSeparationEquivalentToExists!2824 lt!2466951 r3!135 s!14361))))

(declare-fun b!6903041 () Bool)

(declare-fun res!2814982 () Bool)

(declare-fun e!4156980 () Bool)

(assert (=> b!6903041 (=> (not res!2814982) (not e!4156980))))

(declare-fun r2!6280 () Regex!16869)

(declare-fun validRegex!8577 (Regex!16869) Bool)

(assert (=> b!6903041 (= res!2814982 (validRegex!8577 r2!6280))))

(declare-fun b!6903042 () Bool)

(assert (=> b!6903042 (= e!4156976 tp_is_empty!42963)))

(declare-fun b!6903043 () Bool)

(declare-fun tp!1900577 () Bool)

(declare-fun tp!1900578 () Bool)

(assert (=> b!6903043 (= e!4156979 (and tp!1900577 tp!1900578))))

(declare-fun b!6903044 () Bool)

(declare-fun e!4156977 () Bool)

(declare-fun tp!1900576 () Bool)

(assert (=> b!6903044 (= e!4156977 (and tp_is_empty!42963 tp!1900576))))

(declare-fun b!6903045 () Bool)

(declare-fun tp!1900570 () Bool)

(declare-fun tp!1900574 () Bool)

(assert (=> b!6903045 (= e!4156978 (and tp!1900570 tp!1900574))))

(declare-fun res!2814984 () Bool)

(assert (=> start!664794 (=> (not res!2814984) (not e!4156980))))

(declare-fun r1!6342 () Regex!16869)

(assert (=> start!664794 (= res!2814984 (validRegex!8577 r1!6342))))

(assert (=> start!664794 e!4156980))

(assert (=> start!664794 e!4156978))

(assert (=> start!664794 e!4156979))

(assert (=> start!664794 e!4156976))

(assert (=> start!664794 e!4156977))

(declare-fun b!6903046 () Bool)

(declare-fun tp!1900569 () Bool)

(declare-fun tp!1900568 () Bool)

(assert (=> b!6903046 (= e!4156976 (and tp!1900569 tp!1900568))))

(declare-fun b!6903047 () Bool)

(declare-fun tp!1900579 () Bool)

(declare-fun tp!1900575 () Bool)

(assert (=> b!6903047 (= e!4156979 (and tp!1900579 tp!1900575))))

(declare-fun b!6903048 () Bool)

(declare-fun tp!1900580 () Bool)

(declare-fun tp!1900571 () Bool)

(assert (=> b!6903048 (= e!4156978 (and tp!1900580 tp!1900571))))

(declare-fun b!6903049 () Bool)

(assert (=> b!6903049 (= e!4156979 tp_is_empty!42963)))

(declare-fun b!6903050 () Bool)

(declare-fun res!2814981 () Bool)

(assert (=> b!6903050 (=> (not res!2814981) (not e!4156980))))

(assert (=> b!6903050 (= res!2814981 (validRegex!8577 r3!135))))

(declare-fun b!6903051 () Bool)

(declare-fun tp!1900581 () Bool)

(assert (=> b!6903051 (= e!4156978 tp!1900581)))

(declare-fun b!6903052 () Bool)

(assert (=> b!6903052 (= e!4156980 (not e!4156975))))

(declare-fun res!2814983 () Bool)

(assert (=> b!6903052 (=> res!2814983 e!4156975)))

(declare-fun lt!2466946 () Bool)

(assert (=> b!6903052 (= res!2814983 (not lt!2466946))))

(declare-fun lt!2466940 () Regex!16869)

(assert (=> b!6903052 (= (matchR!9014 lt!2466940 s!14361) (matchRSpec!3932 lt!2466940 s!14361))))

(declare-fun lt!2466942 () Unit!160474)

(assert (=> b!6903052 (= lt!2466942 (mainMatchTheorem!3932 lt!2466940 s!14361))))

(declare-fun lt!2466949 () Regex!16869)

(assert (=> b!6903052 (= lt!2466946 (matchRSpec!3932 lt!2466949 s!14361))))

(assert (=> b!6903052 (= lt!2466946 (matchR!9014 lt!2466949 s!14361))))

(declare-fun lt!2466948 () Unit!160474)

(assert (=> b!6903052 (= lt!2466948 (mainMatchTheorem!3932 lt!2466949 s!14361))))

(assert (=> b!6903052 (= lt!2466940 (Concat!25714 r1!6342 (Concat!25714 r2!6280 r3!135)))))

(assert (=> b!6903052 (= lt!2466949 (Concat!25714 lt!2466951 r3!135))))

(assert (=> b!6903052 (= lt!2466951 (Concat!25714 r1!6342 r2!6280))))

(declare-fun b!6903053 () Bool)

(declare-fun tp!1900582 () Bool)

(assert (=> b!6903053 (= e!4156976 tp!1900582)))

(assert (= (and start!664794 res!2814984) b!6903041))

(assert (= (and b!6903041 res!2814982) b!6903050))

(assert (= (and b!6903050 res!2814981) b!6903052))

(assert (= (and b!6903052 (not res!2814983)) b!6903040))

(get-info :version)

(assert (= (and start!664794 ((_ is ElementMatch!16869) r1!6342)) b!6903038))

(assert (= (and start!664794 ((_ is Concat!25714) r1!6342)) b!6903048))

(assert (= (and start!664794 ((_ is Star!16869) r1!6342)) b!6903051))

(assert (= (and start!664794 ((_ is Union!16869) r1!6342)) b!6903045))

(assert (= (and start!664794 ((_ is ElementMatch!16869) r2!6280)) b!6903049))

(assert (= (and start!664794 ((_ is Concat!25714) r2!6280)) b!6903047))

(assert (= (and start!664794 ((_ is Star!16869) r2!6280)) b!6903037))

(assert (= (and start!664794 ((_ is Union!16869) r2!6280)) b!6903043))

(assert (= (and start!664794 ((_ is ElementMatch!16869) r3!135)) b!6903042))

(assert (= (and start!664794 ((_ is Concat!25714) r3!135)) b!6903046))

(assert (= (and start!664794 ((_ is Star!16869) r3!135)) b!6903053))

(assert (= (and start!664794 ((_ is Union!16869) r3!135)) b!6903039))

(assert (= (and start!664794 ((_ is Cons!66502) s!14361)) b!6903044))

(declare-fun m!7620882 () Bool)

(assert (=> b!6903052 m!7620882))

(declare-fun m!7620884 () Bool)

(assert (=> b!6903052 m!7620884))

(declare-fun m!7620886 () Bool)

(assert (=> b!6903052 m!7620886))

(declare-fun m!7620888 () Bool)

(assert (=> b!6903052 m!7620888))

(declare-fun m!7620890 () Bool)

(assert (=> b!6903052 m!7620890))

(declare-fun m!7620892 () Bool)

(assert (=> b!6903052 m!7620892))

(declare-fun m!7620894 () Bool)

(assert (=> b!6903040 m!7620894))

(declare-fun m!7620896 () Bool)

(assert (=> b!6903040 m!7620896))

(declare-fun m!7620898 () Bool)

(assert (=> b!6903040 m!7620898))

(declare-fun m!7620900 () Bool)

(assert (=> b!6903040 m!7620900))

(declare-fun m!7620902 () Bool)

(assert (=> b!6903040 m!7620902))

(declare-fun m!7620904 () Bool)

(assert (=> b!6903040 m!7620904))

(assert (=> b!6903040 m!7620898))

(declare-fun m!7620906 () Bool)

(assert (=> b!6903040 m!7620906))

(declare-fun m!7620908 () Bool)

(assert (=> b!6903040 m!7620908))

(declare-fun m!7620910 () Bool)

(assert (=> b!6903040 m!7620910))

(declare-fun m!7620912 () Bool)

(assert (=> b!6903040 m!7620912))

(declare-fun m!7620914 () Bool)

(assert (=> start!664794 m!7620914))

(declare-fun m!7620916 () Bool)

(assert (=> b!6903050 m!7620916))

(declare-fun m!7620918 () Bool)

(assert (=> b!6903041 m!7620918))

(check-sat (not b!6903050) (not start!664794) (not b!6903040) (not b!6903037) (not b!6903047) tp_is_empty!42963 (not b!6903053) (not b!6903048) (not b!6903045) (not b!6903044) (not b!6903041) (not b!6903046) (not b!6903052) (not b!6903051) (not b!6903039) (not b!6903043))
(check-sat)
(get-model)

(declare-fun d!2162344 () Bool)

(assert (=> d!2162344 (= (matchR!9014 lt!2466949 s!14361) (matchRSpec!3932 lt!2466949 s!14361))))

(declare-fun lt!2466954 () Unit!160474)

(declare-fun choose!51396 (Regex!16869 List!66626) Unit!160474)

(assert (=> d!2162344 (= lt!2466954 (choose!51396 lt!2466949 s!14361))))

(assert (=> d!2162344 (validRegex!8577 lt!2466949)))

(assert (=> d!2162344 (= (mainMatchTheorem!3932 lt!2466949 s!14361) lt!2466954)))

(declare-fun bs!1843096 () Bool)

(assert (= bs!1843096 d!2162344))

(assert (=> bs!1843096 m!7620892))

(assert (=> bs!1843096 m!7620884))

(declare-fun m!7620920 () Bool)

(assert (=> bs!1843096 m!7620920))

(declare-fun m!7620922 () Bool)

(assert (=> bs!1843096 m!7620922))

(assert (=> b!6903052 d!2162344))

(declare-fun b!6903122 () Bool)

(declare-fun res!2815026 () Bool)

(declare-fun e!4157029 () Bool)

(assert (=> b!6903122 (=> res!2815026 e!4157029)))

(assert (=> b!6903122 (= res!2815026 (not ((_ is ElementMatch!16869) lt!2466940)))))

(declare-fun e!4157028 () Bool)

(assert (=> b!6903122 (= e!4157028 e!4157029)))

(declare-fun b!6903123 () Bool)

(declare-fun e!4157023 () Bool)

(declare-fun e!4157024 () Bool)

(assert (=> b!6903123 (= e!4157023 e!4157024)))

(declare-fun res!2815028 () Bool)

(assert (=> b!6903123 (=> res!2815028 e!4157024)))

(declare-fun call!627736 () Bool)

(assert (=> b!6903123 (= res!2815028 call!627736)))

(declare-fun b!6903124 () Bool)

(declare-fun lt!2466960 () Bool)

(assert (=> b!6903124 (= e!4157028 (not lt!2466960))))

(declare-fun b!6903125 () Bool)

(declare-fun res!2815024 () Bool)

(assert (=> b!6903125 (=> res!2815024 e!4157024)))

(declare-fun isEmpty!38732 (List!66626) Bool)

(declare-fun tail!12893 (List!66626) List!66626)

(assert (=> b!6903125 (= res!2815024 (not (isEmpty!38732 (tail!12893 s!14361))))))

(declare-fun b!6903126 () Bool)

(declare-fun e!4157027 () Bool)

(assert (=> b!6903126 (= e!4157027 e!4157028)))

(declare-fun c!1282547 () Bool)

(assert (=> b!6903126 (= c!1282547 ((_ is EmptyLang!16869) lt!2466940))))

(declare-fun d!2162346 () Bool)

(assert (=> d!2162346 e!4157027))

(declare-fun c!1282546 () Bool)

(assert (=> d!2162346 (= c!1282546 ((_ is EmptyExpr!16869) lt!2466940))))

(declare-fun e!4157025 () Bool)

(assert (=> d!2162346 (= lt!2466960 e!4157025)))

(declare-fun c!1282548 () Bool)

(assert (=> d!2162346 (= c!1282548 (isEmpty!38732 s!14361))))

(assert (=> d!2162346 (validRegex!8577 lt!2466940)))

(assert (=> d!2162346 (= (matchR!9014 lt!2466940 s!14361) lt!2466960)))

(declare-fun b!6903127 () Bool)

(declare-fun res!2815025 () Bool)

(declare-fun e!4157026 () Bool)

(assert (=> b!6903127 (=> (not res!2815025) (not e!4157026))))

(assert (=> b!6903127 (= res!2815025 (not call!627736))))

(declare-fun b!6903128 () Bool)

(declare-fun derivativeStep!5388 (Regex!16869 C!34008) Regex!16869)

(declare-fun head!13841 (List!66626) C!34008)

(assert (=> b!6903128 (= e!4157025 (matchR!9014 (derivativeStep!5388 lt!2466940 (head!13841 s!14361)) (tail!12893 s!14361)))))

(declare-fun b!6903129 () Bool)

(assert (=> b!6903129 (= e!4157024 (not (= (head!13841 s!14361) (c!1282531 lt!2466940))))))

(declare-fun bm!627731 () Bool)

(assert (=> bm!627731 (= call!627736 (isEmpty!38732 s!14361))))

(declare-fun b!6903130 () Bool)

(assert (=> b!6903130 (= e!4157026 (= (head!13841 s!14361) (c!1282531 lt!2466940)))))

(declare-fun b!6903131 () Bool)

(declare-fun nullable!6710 (Regex!16869) Bool)

(assert (=> b!6903131 (= e!4157025 (nullable!6710 lt!2466940))))

(declare-fun b!6903132 () Bool)

(declare-fun res!2815023 () Bool)

(assert (=> b!6903132 (=> (not res!2815023) (not e!4157026))))

(assert (=> b!6903132 (= res!2815023 (isEmpty!38732 (tail!12893 s!14361)))))

(declare-fun b!6903133 () Bool)

(declare-fun res!2815022 () Bool)

(assert (=> b!6903133 (=> res!2815022 e!4157029)))

(assert (=> b!6903133 (= res!2815022 e!4157026)))

(declare-fun res!2815021 () Bool)

(assert (=> b!6903133 (=> (not res!2815021) (not e!4157026))))

(assert (=> b!6903133 (= res!2815021 lt!2466960)))

(declare-fun b!6903134 () Bool)

(assert (=> b!6903134 (= e!4157029 e!4157023)))

(declare-fun res!2815027 () Bool)

(assert (=> b!6903134 (=> (not res!2815027) (not e!4157023))))

(assert (=> b!6903134 (= res!2815027 (not lt!2466960))))

(declare-fun b!6903135 () Bool)

(assert (=> b!6903135 (= e!4157027 (= lt!2466960 call!627736))))

(assert (= (and d!2162346 c!1282548) b!6903131))

(assert (= (and d!2162346 (not c!1282548)) b!6903128))

(assert (= (and d!2162346 c!1282546) b!6903135))

(assert (= (and d!2162346 (not c!1282546)) b!6903126))

(assert (= (and b!6903126 c!1282547) b!6903124))

(assert (= (and b!6903126 (not c!1282547)) b!6903122))

(assert (= (and b!6903122 (not res!2815026)) b!6903133))

(assert (= (and b!6903133 res!2815021) b!6903127))

(assert (= (and b!6903127 res!2815025) b!6903132))

(assert (= (and b!6903132 res!2815023) b!6903130))

(assert (= (and b!6903133 (not res!2815022)) b!6903134))

(assert (= (and b!6903134 res!2815027) b!6903123))

(assert (= (and b!6903123 (not res!2815028)) b!6903125))

(assert (= (and b!6903125 (not res!2815024)) b!6903129))

(assert (= (or b!6903135 b!6903123 b!6903127) bm!627731))

(declare-fun m!7620940 () Bool)

(assert (=> b!6903131 m!7620940))

(declare-fun m!7620942 () Bool)

(assert (=> b!6903129 m!7620942))

(assert (=> b!6903130 m!7620942))

(assert (=> b!6903128 m!7620942))

(assert (=> b!6903128 m!7620942))

(declare-fun m!7620944 () Bool)

(assert (=> b!6903128 m!7620944))

(declare-fun m!7620946 () Bool)

(assert (=> b!6903128 m!7620946))

(assert (=> b!6903128 m!7620944))

(assert (=> b!6903128 m!7620946))

(declare-fun m!7620948 () Bool)

(assert (=> b!6903128 m!7620948))

(assert (=> b!6903125 m!7620946))

(assert (=> b!6903125 m!7620946))

(declare-fun m!7620950 () Bool)

(assert (=> b!6903125 m!7620950))

(assert (=> b!6903132 m!7620946))

(assert (=> b!6903132 m!7620946))

(assert (=> b!6903132 m!7620950))

(declare-fun m!7620952 () Bool)

(assert (=> d!2162346 m!7620952))

(declare-fun m!7620954 () Bool)

(assert (=> d!2162346 m!7620954))

(assert (=> bm!627731 m!7620952))

(assert (=> b!6903052 d!2162346))

(declare-fun b!6903164 () Bool)

(declare-fun res!2815050 () Bool)

(declare-fun e!4157050 () Bool)

(assert (=> b!6903164 (=> res!2815050 e!4157050)))

(assert (=> b!6903164 (= res!2815050 (not ((_ is ElementMatch!16869) lt!2466949)))))

(declare-fun e!4157049 () Bool)

(assert (=> b!6903164 (= e!4157049 e!4157050)))

(declare-fun b!6903165 () Bool)

(declare-fun e!4157044 () Bool)

(declare-fun e!4157045 () Bool)

(assert (=> b!6903165 (= e!4157044 e!4157045)))

(declare-fun res!2815052 () Bool)

(assert (=> b!6903165 (=> res!2815052 e!4157045)))

(declare-fun call!627737 () Bool)

(assert (=> b!6903165 (= res!2815052 call!627737)))

(declare-fun b!6903166 () Bool)

(declare-fun lt!2466963 () Bool)

(assert (=> b!6903166 (= e!4157049 (not lt!2466963))))

(declare-fun b!6903167 () Bool)

(declare-fun res!2815048 () Bool)

(assert (=> b!6903167 (=> res!2815048 e!4157045)))

(assert (=> b!6903167 (= res!2815048 (not (isEmpty!38732 (tail!12893 s!14361))))))

(declare-fun b!6903168 () Bool)

(declare-fun e!4157048 () Bool)

(assert (=> b!6903168 (= e!4157048 e!4157049)))

(declare-fun c!1282556 () Bool)

(assert (=> b!6903168 (= c!1282556 ((_ is EmptyLang!16869) lt!2466949))))

(declare-fun d!2162354 () Bool)

(assert (=> d!2162354 e!4157048))

(declare-fun c!1282555 () Bool)

(assert (=> d!2162354 (= c!1282555 ((_ is EmptyExpr!16869) lt!2466949))))

(declare-fun e!4157046 () Bool)

(assert (=> d!2162354 (= lt!2466963 e!4157046)))

(declare-fun c!1282557 () Bool)

(assert (=> d!2162354 (= c!1282557 (isEmpty!38732 s!14361))))

(assert (=> d!2162354 (validRegex!8577 lt!2466949)))

(assert (=> d!2162354 (= (matchR!9014 lt!2466949 s!14361) lt!2466963)))

(declare-fun b!6903169 () Bool)

(declare-fun res!2815049 () Bool)

(declare-fun e!4157047 () Bool)

(assert (=> b!6903169 (=> (not res!2815049) (not e!4157047))))

(assert (=> b!6903169 (= res!2815049 (not call!627737))))

(declare-fun b!6903170 () Bool)

(assert (=> b!6903170 (= e!4157046 (matchR!9014 (derivativeStep!5388 lt!2466949 (head!13841 s!14361)) (tail!12893 s!14361)))))

(declare-fun b!6903171 () Bool)

(assert (=> b!6903171 (= e!4157045 (not (= (head!13841 s!14361) (c!1282531 lt!2466949))))))

(declare-fun bm!627732 () Bool)

(assert (=> bm!627732 (= call!627737 (isEmpty!38732 s!14361))))

(declare-fun b!6903172 () Bool)

(assert (=> b!6903172 (= e!4157047 (= (head!13841 s!14361) (c!1282531 lt!2466949)))))

(declare-fun b!6903173 () Bool)

(assert (=> b!6903173 (= e!4157046 (nullable!6710 lt!2466949))))

(declare-fun b!6903174 () Bool)

(declare-fun res!2815047 () Bool)

(assert (=> b!6903174 (=> (not res!2815047) (not e!4157047))))

(assert (=> b!6903174 (= res!2815047 (isEmpty!38732 (tail!12893 s!14361)))))

(declare-fun b!6903175 () Bool)

(declare-fun res!2815046 () Bool)

(assert (=> b!6903175 (=> res!2815046 e!4157050)))

(assert (=> b!6903175 (= res!2815046 e!4157047)))

(declare-fun res!2815045 () Bool)

(assert (=> b!6903175 (=> (not res!2815045) (not e!4157047))))

(assert (=> b!6903175 (= res!2815045 lt!2466963)))

(declare-fun b!6903176 () Bool)

(assert (=> b!6903176 (= e!4157050 e!4157044)))

(declare-fun res!2815051 () Bool)

(assert (=> b!6903176 (=> (not res!2815051) (not e!4157044))))

(assert (=> b!6903176 (= res!2815051 (not lt!2466963))))

(declare-fun b!6903177 () Bool)

(assert (=> b!6903177 (= e!4157048 (= lt!2466963 call!627737))))

(assert (= (and d!2162354 c!1282557) b!6903173))

(assert (= (and d!2162354 (not c!1282557)) b!6903170))

(assert (= (and d!2162354 c!1282555) b!6903177))

(assert (= (and d!2162354 (not c!1282555)) b!6903168))

(assert (= (and b!6903168 c!1282556) b!6903166))

(assert (= (and b!6903168 (not c!1282556)) b!6903164))

(assert (= (and b!6903164 (not res!2815050)) b!6903175))

(assert (= (and b!6903175 res!2815045) b!6903169))

(assert (= (and b!6903169 res!2815049) b!6903174))

(assert (= (and b!6903174 res!2815047) b!6903172))

(assert (= (and b!6903175 (not res!2815046)) b!6903176))

(assert (= (and b!6903176 res!2815051) b!6903165))

(assert (= (and b!6903165 (not res!2815052)) b!6903167))

(assert (= (and b!6903167 (not res!2815048)) b!6903171))

(assert (= (or b!6903177 b!6903165 b!6903169) bm!627732))

(declare-fun m!7620956 () Bool)

(assert (=> b!6903173 m!7620956))

(assert (=> b!6903171 m!7620942))

(assert (=> b!6903172 m!7620942))

(assert (=> b!6903170 m!7620942))

(assert (=> b!6903170 m!7620942))

(declare-fun m!7620958 () Bool)

(assert (=> b!6903170 m!7620958))

(assert (=> b!6903170 m!7620946))

(assert (=> b!6903170 m!7620958))

(assert (=> b!6903170 m!7620946))

(declare-fun m!7620960 () Bool)

(assert (=> b!6903170 m!7620960))

(assert (=> b!6903167 m!7620946))

(assert (=> b!6903167 m!7620946))

(assert (=> b!6903167 m!7620950))

(assert (=> b!6903174 m!7620946))

(assert (=> b!6903174 m!7620946))

(assert (=> b!6903174 m!7620950))

(assert (=> d!2162354 m!7620952))

(assert (=> d!2162354 m!7620922))

(assert (=> bm!627732 m!7620952))

(assert (=> b!6903052 d!2162354))

(declare-fun d!2162356 () Bool)

(assert (=> d!2162356 (= (matchR!9014 lt!2466940 s!14361) (matchRSpec!3932 lt!2466940 s!14361))))

(declare-fun lt!2466964 () Unit!160474)

(assert (=> d!2162356 (= lt!2466964 (choose!51396 lt!2466940 s!14361))))

(assert (=> d!2162356 (validRegex!8577 lt!2466940)))

(assert (=> d!2162356 (= (mainMatchTheorem!3932 lt!2466940 s!14361) lt!2466964)))

(declare-fun bs!1843098 () Bool)

(assert (= bs!1843098 d!2162356))

(assert (=> bs!1843098 m!7620890))

(assert (=> bs!1843098 m!7620886))

(declare-fun m!7620962 () Bool)

(assert (=> bs!1843098 m!7620962))

(assert (=> bs!1843098 m!7620954))

(assert (=> b!6903052 d!2162356))

(declare-fun bs!1843099 () Bool)

(declare-fun b!6903266 () Bool)

(assert (= bs!1843099 (and b!6903266 b!6903040)))

(declare-fun lambda!392023 () Int)

(assert (=> bs!1843099 (not (= lambda!392023 lambda!392013))))

(assert (=> bs!1843099 (not (= lambda!392023 lambda!392014))))

(assert (=> b!6903266 true))

(assert (=> b!6903266 true))

(declare-fun bs!1843100 () Bool)

(declare-fun b!6903258 () Bool)

(assert (= bs!1843100 (and b!6903258 b!6903040)))

(declare-fun lambda!392024 () Int)

(assert (=> bs!1843100 (not (= lambda!392024 lambda!392013))))

(assert (=> bs!1843100 (= (and (= (regOne!34250 lt!2466940) lt!2466951) (= (regTwo!34250 lt!2466940) r3!135)) (= lambda!392024 lambda!392014))))

(declare-fun bs!1843101 () Bool)

(assert (= bs!1843101 (and b!6903258 b!6903266)))

(assert (=> bs!1843101 (not (= lambda!392024 lambda!392023))))

(assert (=> b!6903258 true))

(assert (=> b!6903258 true))

(declare-fun b!6903256 () Bool)

(declare-fun e!4157095 () Bool)

(assert (=> b!6903256 (= e!4157095 (matchRSpec!3932 (regTwo!34251 lt!2466940) s!14361))))

(declare-fun d!2162358 () Bool)

(declare-fun c!1282579 () Bool)

(assert (=> d!2162358 (= c!1282579 ((_ is EmptyExpr!16869) lt!2466940))))

(declare-fun e!4157100 () Bool)

(assert (=> d!2162358 (= (matchRSpec!3932 lt!2466940 s!14361) e!4157100)))

(declare-fun b!6903257 () Bool)

(declare-fun e!4157094 () Bool)

(assert (=> b!6903257 (= e!4157094 (= s!14361 (Cons!66502 (c!1282531 lt!2466940) Nil!66502)))))

(declare-fun e!4157098 () Bool)

(declare-fun call!627745 () Bool)

(assert (=> b!6903258 (= e!4157098 call!627745)))

(declare-fun b!6903259 () Bool)

(declare-fun c!1282578 () Bool)

(assert (=> b!6903259 (= c!1282578 ((_ is Union!16869) lt!2466940))))

(declare-fun e!4157096 () Bool)

(assert (=> b!6903259 (= e!4157094 e!4157096)))

(declare-fun bm!627740 () Bool)

(declare-fun call!627748 () Bool)

(assert (=> bm!627740 (= call!627748 (isEmpty!38732 s!14361))))

(declare-fun b!6903260 () Bool)

(assert (=> b!6903260 (= e!4157096 e!4157095)))

(declare-fun res!2815094 () Bool)

(assert (=> b!6903260 (= res!2815094 (matchRSpec!3932 (regOne!34251 lt!2466940) s!14361))))

(assert (=> b!6903260 (=> res!2815094 e!4157095)))

(declare-fun bm!627741 () Bool)

(declare-fun c!1282580 () Bool)

(assert (=> bm!627741 (= call!627745 (Exists!3877 (ite c!1282580 lambda!392023 lambda!392024)))))

(declare-fun b!6903261 () Bool)

(assert (=> b!6903261 (= e!4157096 e!4157098)))

(assert (=> b!6903261 (= c!1282580 ((_ is Star!16869) lt!2466940))))

(declare-fun b!6903262 () Bool)

(declare-fun c!1282577 () Bool)

(assert (=> b!6903262 (= c!1282577 ((_ is ElementMatch!16869) lt!2466940))))

(declare-fun e!4157097 () Bool)

(assert (=> b!6903262 (= e!4157097 e!4157094)))

(declare-fun b!6903263 () Bool)

(declare-fun res!2815093 () Bool)

(declare-fun e!4157099 () Bool)

(assert (=> b!6903263 (=> res!2815093 e!4157099)))

(assert (=> b!6903263 (= res!2815093 call!627748)))

(assert (=> b!6903263 (= e!4157098 e!4157099)))

(declare-fun b!6903264 () Bool)

(assert (=> b!6903264 (= e!4157100 call!627748)))

(declare-fun b!6903265 () Bool)

(assert (=> b!6903265 (= e!4157100 e!4157097)))

(declare-fun res!2815095 () Bool)

(assert (=> b!6903265 (= res!2815095 (not ((_ is EmptyLang!16869) lt!2466940)))))

(assert (=> b!6903265 (=> (not res!2815095) (not e!4157097))))

(assert (=> b!6903266 (= e!4157099 call!627745)))

(assert (= (and d!2162358 c!1282579) b!6903264))

(assert (= (and d!2162358 (not c!1282579)) b!6903265))

(assert (= (and b!6903265 res!2815095) b!6903262))

(assert (= (and b!6903262 c!1282577) b!6903257))

(assert (= (and b!6903262 (not c!1282577)) b!6903259))

(assert (= (and b!6903259 c!1282578) b!6903260))

(assert (= (and b!6903259 (not c!1282578)) b!6903261))

(assert (= (and b!6903260 (not res!2815094)) b!6903256))

(assert (= (and b!6903261 c!1282580) b!6903263))

(assert (= (and b!6903261 (not c!1282580)) b!6903258))

(assert (= (and b!6903263 (not res!2815093)) b!6903266))

(assert (= (or b!6903266 b!6903258) bm!627741))

(assert (= (or b!6903264 b!6903263) bm!627740))

(declare-fun m!7620978 () Bool)

(assert (=> b!6903256 m!7620978))

(assert (=> bm!627740 m!7620952))

(declare-fun m!7620980 () Bool)

(assert (=> b!6903260 m!7620980))

(declare-fun m!7620982 () Bool)

(assert (=> bm!627741 m!7620982))

(assert (=> b!6903052 d!2162358))

(declare-fun bs!1843102 () Bool)

(declare-fun b!6903277 () Bool)

(assert (= bs!1843102 (and b!6903277 b!6903040)))

(declare-fun lambda!392025 () Int)

(assert (=> bs!1843102 (not (= lambda!392025 lambda!392013))))

(assert (=> bs!1843102 (not (= lambda!392025 lambda!392014))))

(declare-fun bs!1843103 () Bool)

(assert (= bs!1843103 (and b!6903277 b!6903266)))

(assert (=> bs!1843103 (= (and (= (reg!17198 lt!2466949) (reg!17198 lt!2466940)) (= lt!2466949 lt!2466940)) (= lambda!392025 lambda!392023))))

(declare-fun bs!1843104 () Bool)

(assert (= bs!1843104 (and b!6903277 b!6903258)))

(assert (=> bs!1843104 (not (= lambda!392025 lambda!392024))))

(assert (=> b!6903277 true))

(assert (=> b!6903277 true))

(declare-fun bs!1843106 () Bool)

(declare-fun b!6903269 () Bool)

(assert (= bs!1843106 (and b!6903269 b!6903040)))

(declare-fun lambda!392027 () Int)

(assert (=> bs!1843106 (not (= lambda!392027 lambda!392013))))

(declare-fun bs!1843107 () Bool)

(assert (= bs!1843107 (and b!6903269 b!6903277)))

(assert (=> bs!1843107 (not (= lambda!392027 lambda!392025))))

(declare-fun bs!1843108 () Bool)

(assert (= bs!1843108 (and b!6903269 b!6903258)))

(assert (=> bs!1843108 (= (and (= (regOne!34250 lt!2466949) (regOne!34250 lt!2466940)) (= (regTwo!34250 lt!2466949) (regTwo!34250 lt!2466940))) (= lambda!392027 lambda!392024))))

(declare-fun bs!1843110 () Bool)

(assert (= bs!1843110 (and b!6903269 b!6903266)))

(assert (=> bs!1843110 (not (= lambda!392027 lambda!392023))))

(assert (=> bs!1843106 (= (and (= (regOne!34250 lt!2466949) lt!2466951) (= (regTwo!34250 lt!2466949) r3!135)) (= lambda!392027 lambda!392014))))

(assert (=> b!6903269 true))

(assert (=> b!6903269 true))

(declare-fun b!6903267 () Bool)

(declare-fun e!4157102 () Bool)

(assert (=> b!6903267 (= e!4157102 (matchRSpec!3932 (regTwo!34251 lt!2466949) s!14361))))

(declare-fun d!2162362 () Bool)

(declare-fun c!1282583 () Bool)

(assert (=> d!2162362 (= c!1282583 ((_ is EmptyExpr!16869) lt!2466949))))

(declare-fun e!4157107 () Bool)

(assert (=> d!2162362 (= (matchRSpec!3932 lt!2466949 s!14361) e!4157107)))

(declare-fun b!6903268 () Bool)

(declare-fun e!4157101 () Bool)

(assert (=> b!6903268 (= e!4157101 (= s!14361 (Cons!66502 (c!1282531 lt!2466949) Nil!66502)))))

(declare-fun e!4157105 () Bool)

(declare-fun call!627751 () Bool)

(assert (=> b!6903269 (= e!4157105 call!627751)))

(declare-fun b!6903270 () Bool)

(declare-fun c!1282582 () Bool)

(assert (=> b!6903270 (= c!1282582 ((_ is Union!16869) lt!2466949))))

(declare-fun e!4157103 () Bool)

(assert (=> b!6903270 (= e!4157101 e!4157103)))

(declare-fun bm!627746 () Bool)

(declare-fun call!627752 () Bool)

(assert (=> bm!627746 (= call!627752 (isEmpty!38732 s!14361))))

(declare-fun b!6903271 () Bool)

(assert (=> b!6903271 (= e!4157103 e!4157102)))

(declare-fun res!2815097 () Bool)

(assert (=> b!6903271 (= res!2815097 (matchRSpec!3932 (regOne!34251 lt!2466949) s!14361))))

(assert (=> b!6903271 (=> res!2815097 e!4157102)))

(declare-fun bm!627747 () Bool)

(declare-fun c!1282584 () Bool)

(assert (=> bm!627747 (= call!627751 (Exists!3877 (ite c!1282584 lambda!392025 lambda!392027)))))

(declare-fun b!6903272 () Bool)

(assert (=> b!6903272 (= e!4157103 e!4157105)))

(assert (=> b!6903272 (= c!1282584 ((_ is Star!16869) lt!2466949))))

(declare-fun b!6903273 () Bool)

(declare-fun c!1282581 () Bool)

(assert (=> b!6903273 (= c!1282581 ((_ is ElementMatch!16869) lt!2466949))))

(declare-fun e!4157104 () Bool)

(assert (=> b!6903273 (= e!4157104 e!4157101)))

(declare-fun b!6903274 () Bool)

(declare-fun res!2815096 () Bool)

(declare-fun e!4157106 () Bool)

(assert (=> b!6903274 (=> res!2815096 e!4157106)))

(assert (=> b!6903274 (= res!2815096 call!627752)))

(assert (=> b!6903274 (= e!4157105 e!4157106)))

(declare-fun b!6903275 () Bool)

(assert (=> b!6903275 (= e!4157107 call!627752)))

(declare-fun b!6903276 () Bool)

(assert (=> b!6903276 (= e!4157107 e!4157104)))

(declare-fun res!2815098 () Bool)

(assert (=> b!6903276 (= res!2815098 (not ((_ is EmptyLang!16869) lt!2466949)))))

(assert (=> b!6903276 (=> (not res!2815098) (not e!4157104))))

(assert (=> b!6903277 (= e!4157106 call!627751)))

(assert (= (and d!2162362 c!1282583) b!6903275))

(assert (= (and d!2162362 (not c!1282583)) b!6903276))

(assert (= (and b!6903276 res!2815098) b!6903273))

(assert (= (and b!6903273 c!1282581) b!6903268))

(assert (= (and b!6903273 (not c!1282581)) b!6903270))

(assert (= (and b!6903270 c!1282582) b!6903271))

(assert (= (and b!6903270 (not c!1282582)) b!6903272))

(assert (= (and b!6903271 (not res!2815097)) b!6903267))

(assert (= (and b!6903272 c!1282584) b!6903274))

(assert (= (and b!6903272 (not c!1282584)) b!6903269))

(assert (= (and b!6903274 (not res!2815096)) b!6903277))

(assert (= (or b!6903277 b!6903269) bm!627747))

(assert (= (or b!6903275 b!6903274) bm!627746))

(declare-fun m!7620984 () Bool)

(assert (=> b!6903267 m!7620984))

(assert (=> bm!627746 m!7620952))

(declare-fun m!7620986 () Bool)

(assert (=> b!6903271 m!7620986))

(declare-fun m!7620988 () Bool)

(assert (=> bm!627747 m!7620988))

(assert (=> b!6903052 d!2162362))

(declare-fun bm!627759 () Bool)

(declare-fun call!627764 () Bool)

(declare-fun call!627766 () Bool)

(assert (=> bm!627759 (= call!627764 call!627766)))

(declare-fun b!6903332 () Bool)

(declare-fun e!4157144 () Bool)

(declare-fun e!4157148 () Bool)

(assert (=> b!6903332 (= e!4157144 e!4157148)))

(declare-fun res!2815127 () Bool)

(assert (=> b!6903332 (= res!2815127 (not (nullable!6710 (reg!17198 r2!6280))))))

(assert (=> b!6903332 (=> (not res!2815127) (not e!4157148))))

(declare-fun b!6903333 () Bool)

(declare-fun e!4157147 () Bool)

(assert (=> b!6903333 (= e!4157147 call!627764)))

(declare-fun bm!627760 () Bool)

(declare-fun call!627765 () Bool)

(declare-fun c!1282600 () Bool)

(assert (=> bm!627760 (= call!627765 (validRegex!8577 (ite c!1282600 (regTwo!34251 r2!6280) (regOne!34250 r2!6280))))))

(declare-fun b!6903334 () Bool)

(declare-fun e!4157149 () Bool)

(assert (=> b!6903334 (= e!4157149 call!627765)))

(declare-fun b!6903335 () Bool)

(declare-fun e!4157143 () Bool)

(assert (=> b!6903335 (= e!4157143 e!4157147)))

(declare-fun res!2815124 () Bool)

(assert (=> b!6903335 (=> (not res!2815124) (not e!4157147))))

(assert (=> b!6903335 (= res!2815124 call!627765)))

(declare-fun b!6903336 () Bool)

(declare-fun res!2815125 () Bool)

(assert (=> b!6903336 (=> (not res!2815125) (not e!4157149))))

(assert (=> b!6903336 (= res!2815125 call!627764)))

(declare-fun e!4157145 () Bool)

(assert (=> b!6903336 (= e!4157145 e!4157149)))

(declare-fun b!6903337 () Bool)

(assert (=> b!6903337 (= e!4157144 e!4157145)))

(assert (=> b!6903337 (= c!1282600 ((_ is Union!16869) r2!6280))))

(declare-fun d!2162364 () Bool)

(declare-fun res!2815126 () Bool)

(declare-fun e!4157146 () Bool)

(assert (=> d!2162364 (=> res!2815126 e!4157146)))

(assert (=> d!2162364 (= res!2815126 ((_ is ElementMatch!16869) r2!6280))))

(assert (=> d!2162364 (= (validRegex!8577 r2!6280) e!4157146)))

(declare-fun b!6903338 () Bool)

(assert (=> b!6903338 (= e!4157146 e!4157144)))

(declare-fun c!1282601 () Bool)

(assert (=> b!6903338 (= c!1282601 ((_ is Star!16869) r2!6280))))

(declare-fun b!6903339 () Bool)

(declare-fun res!2815123 () Bool)

(assert (=> b!6903339 (=> res!2815123 e!4157143)))

(assert (=> b!6903339 (= res!2815123 (not ((_ is Concat!25714) r2!6280)))))

(assert (=> b!6903339 (= e!4157145 e!4157143)))

(declare-fun bm!627761 () Bool)

(assert (=> bm!627761 (= call!627766 (validRegex!8577 (ite c!1282601 (reg!17198 r2!6280) (ite c!1282600 (regOne!34251 r2!6280) (regTwo!34250 r2!6280)))))))

(declare-fun b!6903340 () Bool)

(assert (=> b!6903340 (= e!4157148 call!627766)))

(assert (= (and d!2162364 (not res!2815126)) b!6903338))

(assert (= (and b!6903338 c!1282601) b!6903332))

(assert (= (and b!6903338 (not c!1282601)) b!6903337))

(assert (= (and b!6903332 res!2815127) b!6903340))

(assert (= (and b!6903337 c!1282600) b!6903336))

(assert (= (and b!6903337 (not c!1282600)) b!6903339))

(assert (= (and b!6903336 res!2815125) b!6903334))

(assert (= (and b!6903339 (not res!2815123)) b!6903335))

(assert (= (and b!6903335 res!2815124) b!6903333))

(assert (= (or b!6903336 b!6903333) bm!627759))

(assert (= (or b!6903334 b!6903335) bm!627760))

(assert (= (or b!6903340 bm!627759) bm!627761))

(declare-fun m!7621016 () Bool)

(assert (=> b!6903332 m!7621016))

(declare-fun m!7621018 () Bool)

(assert (=> bm!627760 m!7621018))

(declare-fun m!7621020 () Bool)

(assert (=> bm!627761 m!7621020))

(assert (=> b!6903041 d!2162364))

(declare-fun bs!1843121 () Bool)

(declare-fun d!2162376 () Bool)

(assert (= bs!1843121 (and d!2162376 b!6903040)))

(declare-fun lambda!392033 () Int)

(assert (=> bs!1843121 (= lambda!392033 lambda!392013)))

(declare-fun bs!1843122 () Bool)

(assert (= bs!1843122 (and d!2162376 b!6903269)))

(assert (=> bs!1843122 (not (= lambda!392033 lambda!392027))))

(declare-fun bs!1843123 () Bool)

(assert (= bs!1843123 (and d!2162376 b!6903277)))

(assert (=> bs!1843123 (not (= lambda!392033 lambda!392025))))

(declare-fun bs!1843124 () Bool)

(assert (= bs!1843124 (and d!2162376 b!6903258)))

(assert (=> bs!1843124 (not (= lambda!392033 lambda!392024))))

(declare-fun bs!1843125 () Bool)

(assert (= bs!1843125 (and d!2162376 b!6903266)))

(assert (=> bs!1843125 (not (= lambda!392033 lambda!392023))))

(assert (=> bs!1843121 (not (= lambda!392033 lambda!392014))))

(assert (=> d!2162376 true))

(assert (=> d!2162376 true))

(assert (=> d!2162376 true))

(assert (=> d!2162376 (= (isDefined!13351 (findConcatSeparation!3062 lt!2466951 r3!135 Nil!66502 s!14361 s!14361)) (Exists!3877 lambda!392033))))

(declare-fun lt!2466971 () Unit!160474)

(declare-fun choose!51398 (Regex!16869 Regex!16869 List!66626) Unit!160474)

(assert (=> d!2162376 (= lt!2466971 (choose!51398 lt!2466951 r3!135 s!14361))))

(assert (=> d!2162376 (validRegex!8577 lt!2466951)))

(assert (=> d!2162376 (= (lemmaFindConcatSeparationEquivalentToExists!2824 lt!2466951 r3!135 s!14361) lt!2466971)))

(declare-fun bs!1843126 () Bool)

(assert (= bs!1843126 d!2162376))

(declare-fun m!7621022 () Bool)

(assert (=> bs!1843126 m!7621022))

(declare-fun m!7621024 () Bool)

(assert (=> bs!1843126 m!7621024))

(declare-fun m!7621026 () Bool)

(assert (=> bs!1843126 m!7621026))

(assert (=> bs!1843126 m!7620908))

(assert (=> bs!1843126 m!7620908))

(declare-fun m!7621028 () Bool)

(assert (=> bs!1843126 m!7621028))

(assert (=> b!6903040 d!2162376))

(declare-fun d!2162378 () Bool)

(assert (=> d!2162378 (= (matchR!9014 lt!2466951 (_1!37039 lt!2466941)) (matchRSpec!3932 lt!2466951 (_1!37039 lt!2466941)))))

(declare-fun lt!2466978 () Unit!160474)

(assert (=> d!2162378 (= lt!2466978 (choose!51396 lt!2466951 (_1!37039 lt!2466941)))))

(assert (=> d!2162378 (validRegex!8577 lt!2466951)))

(assert (=> d!2162378 (= (mainMatchTheorem!3932 lt!2466951 (_1!37039 lt!2466941)) lt!2466978)))

(declare-fun bs!1843127 () Bool)

(assert (= bs!1843127 d!2162378))

(assert (=> bs!1843127 m!7620902))

(assert (=> bs!1843127 m!7620910))

(declare-fun m!7621030 () Bool)

(assert (=> bs!1843127 m!7621030))

(assert (=> bs!1843127 m!7621026))

(assert (=> b!6903040 d!2162378))

(declare-fun d!2162380 () Bool)

(declare-fun choose!51399 (Int) Bool)

(assert (=> d!2162380 (= (Exists!3877 lambda!392013) (choose!51399 lambda!392013))))

(declare-fun bs!1843128 () Bool)

(assert (= bs!1843128 d!2162380))

(declare-fun m!7621032 () Bool)

(assert (=> bs!1843128 m!7621032))

(assert (=> b!6903040 d!2162380))

(declare-fun b!6903363 () Bool)

(declare-fun res!2815147 () Bool)

(declare-fun e!4157168 () Bool)

(assert (=> b!6903363 (=> res!2815147 e!4157168)))

(assert (=> b!6903363 (= res!2815147 (not ((_ is ElementMatch!16869) lt!2466951)))))

(declare-fun e!4157167 () Bool)

(assert (=> b!6903363 (= e!4157167 e!4157168)))

(declare-fun b!6903364 () Bool)

(declare-fun e!4157162 () Bool)

(declare-fun e!4157163 () Bool)

(assert (=> b!6903364 (= e!4157162 e!4157163)))

(declare-fun res!2815149 () Bool)

(assert (=> b!6903364 (=> res!2815149 e!4157163)))

(declare-fun call!627767 () Bool)

(assert (=> b!6903364 (= res!2815149 call!627767)))

(declare-fun b!6903365 () Bool)

(declare-fun lt!2466979 () Bool)

(assert (=> b!6903365 (= e!4157167 (not lt!2466979))))

(declare-fun b!6903366 () Bool)

(declare-fun res!2815145 () Bool)

(assert (=> b!6903366 (=> res!2815145 e!4157163)))

(assert (=> b!6903366 (= res!2815145 (not (isEmpty!38732 (tail!12893 (_1!37039 lt!2466941)))))))

(declare-fun b!6903367 () Bool)

(declare-fun e!4157166 () Bool)

(assert (=> b!6903367 (= e!4157166 e!4157167)))

(declare-fun c!1282607 () Bool)

(assert (=> b!6903367 (= c!1282607 ((_ is EmptyLang!16869) lt!2466951))))

(declare-fun d!2162382 () Bool)

(assert (=> d!2162382 e!4157166))

(declare-fun c!1282606 () Bool)

(assert (=> d!2162382 (= c!1282606 ((_ is EmptyExpr!16869) lt!2466951))))

(declare-fun e!4157164 () Bool)

(assert (=> d!2162382 (= lt!2466979 e!4157164)))

(declare-fun c!1282608 () Bool)

(assert (=> d!2162382 (= c!1282608 (isEmpty!38732 (_1!37039 lt!2466941)))))

(assert (=> d!2162382 (validRegex!8577 lt!2466951)))

(assert (=> d!2162382 (= (matchR!9014 lt!2466951 (_1!37039 lt!2466941)) lt!2466979)))

(declare-fun b!6903368 () Bool)

(declare-fun res!2815146 () Bool)

(declare-fun e!4157165 () Bool)

(assert (=> b!6903368 (=> (not res!2815146) (not e!4157165))))

(assert (=> b!6903368 (= res!2815146 (not call!627767))))

(declare-fun b!6903369 () Bool)

(assert (=> b!6903369 (= e!4157164 (matchR!9014 (derivativeStep!5388 lt!2466951 (head!13841 (_1!37039 lt!2466941))) (tail!12893 (_1!37039 lt!2466941))))))

(declare-fun b!6903370 () Bool)

(assert (=> b!6903370 (= e!4157163 (not (= (head!13841 (_1!37039 lt!2466941)) (c!1282531 lt!2466951))))))

(declare-fun bm!627762 () Bool)

(assert (=> bm!627762 (= call!627767 (isEmpty!38732 (_1!37039 lt!2466941)))))

(declare-fun b!6903371 () Bool)

(assert (=> b!6903371 (= e!4157165 (= (head!13841 (_1!37039 lt!2466941)) (c!1282531 lt!2466951)))))

(declare-fun b!6903372 () Bool)

(assert (=> b!6903372 (= e!4157164 (nullable!6710 lt!2466951))))

(declare-fun b!6903373 () Bool)

(declare-fun res!2815144 () Bool)

(assert (=> b!6903373 (=> (not res!2815144) (not e!4157165))))

(assert (=> b!6903373 (= res!2815144 (isEmpty!38732 (tail!12893 (_1!37039 lt!2466941))))))

(declare-fun b!6903374 () Bool)

(declare-fun res!2815143 () Bool)

(assert (=> b!6903374 (=> res!2815143 e!4157168)))

(assert (=> b!6903374 (= res!2815143 e!4157165)))

(declare-fun res!2815142 () Bool)

(assert (=> b!6903374 (=> (not res!2815142) (not e!4157165))))

(assert (=> b!6903374 (= res!2815142 lt!2466979)))

(declare-fun b!6903375 () Bool)

(assert (=> b!6903375 (= e!4157168 e!4157162)))

(declare-fun res!2815148 () Bool)

(assert (=> b!6903375 (=> (not res!2815148) (not e!4157162))))

(assert (=> b!6903375 (= res!2815148 (not lt!2466979))))

(declare-fun b!6903376 () Bool)

(assert (=> b!6903376 (= e!4157166 (= lt!2466979 call!627767))))

(assert (= (and d!2162382 c!1282608) b!6903372))

(assert (= (and d!2162382 (not c!1282608)) b!6903369))

(assert (= (and d!2162382 c!1282606) b!6903376))

(assert (= (and d!2162382 (not c!1282606)) b!6903367))

(assert (= (and b!6903367 c!1282607) b!6903365))

(assert (= (and b!6903367 (not c!1282607)) b!6903363))

(assert (= (and b!6903363 (not res!2815147)) b!6903374))

(assert (= (and b!6903374 res!2815142) b!6903368))

(assert (= (and b!6903368 res!2815146) b!6903373))

(assert (= (and b!6903373 res!2815144) b!6903371))

(assert (= (and b!6903374 (not res!2815143)) b!6903375))

(assert (= (and b!6903375 res!2815148) b!6903364))

(assert (= (and b!6903364 (not res!2815149)) b!6903366))

(assert (= (and b!6903366 (not res!2815145)) b!6903370))

(assert (= (or b!6903376 b!6903364 b!6903368) bm!627762))

(declare-fun m!7621034 () Bool)

(assert (=> b!6903372 m!7621034))

(declare-fun m!7621036 () Bool)

(assert (=> b!6903370 m!7621036))

(assert (=> b!6903371 m!7621036))

(assert (=> b!6903369 m!7621036))

(assert (=> b!6903369 m!7621036))

(declare-fun m!7621038 () Bool)

(assert (=> b!6903369 m!7621038))

(declare-fun m!7621040 () Bool)

(assert (=> b!6903369 m!7621040))

(assert (=> b!6903369 m!7621038))

(assert (=> b!6903369 m!7621040))

(declare-fun m!7621042 () Bool)

(assert (=> b!6903369 m!7621042))

(assert (=> b!6903366 m!7621040))

(assert (=> b!6903366 m!7621040))

(declare-fun m!7621044 () Bool)

(assert (=> b!6903366 m!7621044))

(assert (=> b!6903373 m!7621040))

(assert (=> b!6903373 m!7621040))

(assert (=> b!6903373 m!7621044))

(declare-fun m!7621046 () Bool)

(assert (=> d!2162382 m!7621046))

(assert (=> d!2162382 m!7621026))

(assert (=> bm!627762 m!7621046))

(assert (=> b!6903040 d!2162382))

(declare-fun d!2162384 () Bool)

(declare-fun isEmpty!38734 (Option!16648) Bool)

(assert (=> d!2162384 (= (isDefined!13351 lt!2466945) (not (isEmpty!38734 lt!2466945)))))

(declare-fun bs!1843129 () Bool)

(assert (= bs!1843129 d!2162384))

(declare-fun m!7621048 () Bool)

(assert (=> bs!1843129 m!7621048))

(assert (=> b!6903040 d!2162384))

(declare-fun d!2162386 () Bool)

(assert (=> d!2162386 (= (Exists!3877 lambda!392014) (choose!51399 lambda!392014))))

(declare-fun bs!1843130 () Bool)

(assert (= bs!1843130 d!2162386))

(declare-fun m!7621050 () Bool)

(assert (=> bs!1843130 m!7621050))

(assert (=> b!6903040 d!2162386))

(declare-fun bs!1843145 () Bool)

(declare-fun d!2162388 () Bool)

(assert (= bs!1843145 (and d!2162388 d!2162376)))

(declare-fun lambda!392040 () Int)

(assert (=> bs!1843145 (= lambda!392040 lambda!392033)))

(declare-fun bs!1843146 () Bool)

(assert (= bs!1843146 (and d!2162388 b!6903040)))

(assert (=> bs!1843146 (= lambda!392040 lambda!392013)))

(declare-fun bs!1843147 () Bool)

(assert (= bs!1843147 (and d!2162388 b!6903269)))

(assert (=> bs!1843147 (not (= lambda!392040 lambda!392027))))

(declare-fun bs!1843148 () Bool)

(assert (= bs!1843148 (and d!2162388 b!6903277)))

(assert (=> bs!1843148 (not (= lambda!392040 lambda!392025))))

(declare-fun bs!1843149 () Bool)

(assert (= bs!1843149 (and d!2162388 b!6903258)))

(assert (=> bs!1843149 (not (= lambda!392040 lambda!392024))))

(declare-fun bs!1843150 () Bool)

(assert (= bs!1843150 (and d!2162388 b!6903266)))

(assert (=> bs!1843150 (not (= lambda!392040 lambda!392023))))

(assert (=> bs!1843146 (not (= lambda!392040 lambda!392014))))

(assert (=> d!2162388 true))

(assert (=> d!2162388 true))

(assert (=> d!2162388 true))

(declare-fun lambda!392041 () Int)

(assert (=> bs!1843145 (not (= lambda!392041 lambda!392033))))

(declare-fun bs!1843151 () Bool)

(assert (= bs!1843151 d!2162388))

(assert (=> bs!1843151 (not (= lambda!392041 lambda!392040))))

(assert (=> bs!1843146 (not (= lambda!392041 lambda!392013))))

(assert (=> bs!1843147 (= (and (= lt!2466951 (regOne!34250 lt!2466949)) (= r3!135 (regTwo!34250 lt!2466949))) (= lambda!392041 lambda!392027))))

(assert (=> bs!1843148 (not (= lambda!392041 lambda!392025))))

(assert (=> bs!1843149 (= (and (= lt!2466951 (regOne!34250 lt!2466940)) (= r3!135 (regTwo!34250 lt!2466940))) (= lambda!392041 lambda!392024))))

(assert (=> bs!1843150 (not (= lambda!392041 lambda!392023))))

(assert (=> bs!1843146 (= lambda!392041 lambda!392014)))

(assert (=> d!2162388 true))

(assert (=> d!2162388 true))

(assert (=> d!2162388 true))

(assert (=> d!2162388 (= (Exists!3877 lambda!392040) (Exists!3877 lambda!392041))))

(declare-fun lt!2466986 () Unit!160474)

(declare-fun choose!51400 (Regex!16869 Regex!16869 List!66626) Unit!160474)

(assert (=> d!2162388 (= lt!2466986 (choose!51400 lt!2466951 r3!135 s!14361))))

(assert (=> d!2162388 (validRegex!8577 lt!2466951)))

(assert (=> d!2162388 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2350 lt!2466951 r3!135 s!14361) lt!2466986)))

(declare-fun m!7621100 () Bool)

(assert (=> bs!1843151 m!7621100))

(declare-fun m!7621102 () Bool)

(assert (=> bs!1843151 m!7621102))

(declare-fun m!7621104 () Bool)

(assert (=> bs!1843151 m!7621104))

(assert (=> bs!1843151 m!7621026))

(assert (=> b!6903040 d!2162388))

(declare-fun b!6903447 () Bool)

(declare-fun e!4157210 () Option!16648)

(declare-fun e!4157212 () Option!16648)

(assert (=> b!6903447 (= e!4157210 e!4157212)))

(declare-fun c!1282623 () Bool)

(assert (=> b!6903447 (= c!1282623 ((_ is Nil!66502) s!14361))))

(declare-fun b!6903448 () Bool)

(declare-fun res!2815196 () Bool)

(declare-fun e!4157208 () Bool)

(assert (=> b!6903448 (=> (not res!2815196) (not e!4157208))))

(declare-fun lt!2467000 () Option!16648)

(assert (=> b!6903448 (= res!2815196 (matchR!9014 lt!2466951 (_1!37039 (get!23254 lt!2467000))))))

(declare-fun b!6903449 () Bool)

(assert (=> b!6903449 (= e!4157210 (Some!16647 (tuple2!67473 Nil!66502 s!14361)))))

(declare-fun b!6903450 () Bool)

(declare-fun e!4157211 () Bool)

(assert (=> b!6903450 (= e!4157211 (matchR!9014 r3!135 s!14361))))

(declare-fun d!2162404 () Bool)

(declare-fun e!4157209 () Bool)

(assert (=> d!2162404 e!4157209))

(declare-fun res!2815198 () Bool)

(assert (=> d!2162404 (=> res!2815198 e!4157209)))

(assert (=> d!2162404 (= res!2815198 e!4157208)))

(declare-fun res!2815195 () Bool)

(assert (=> d!2162404 (=> (not res!2815195) (not e!4157208))))

(assert (=> d!2162404 (= res!2815195 (isDefined!13351 lt!2467000))))

(assert (=> d!2162404 (= lt!2467000 e!4157210)))

(declare-fun c!1282622 () Bool)

(assert (=> d!2162404 (= c!1282622 e!4157211)))

(declare-fun res!2815194 () Bool)

(assert (=> d!2162404 (=> (not res!2815194) (not e!4157211))))

(assert (=> d!2162404 (= res!2815194 (matchR!9014 lt!2466951 Nil!66502))))

(assert (=> d!2162404 (validRegex!8577 lt!2466951)))

(assert (=> d!2162404 (= (findConcatSeparation!3062 lt!2466951 r3!135 Nil!66502 s!14361 s!14361) lt!2467000)))

(declare-fun b!6903451 () Bool)

(declare-fun ++!14922 (List!66626 List!66626) List!66626)

(assert (=> b!6903451 (= e!4157208 (= (++!14922 (_1!37039 (get!23254 lt!2467000)) (_2!37039 (get!23254 lt!2467000))) s!14361))))

(declare-fun b!6903452 () Bool)

(assert (=> b!6903452 (= e!4157212 None!16647)))

(declare-fun b!6903453 () Bool)

(declare-fun lt!2466999 () Unit!160474)

(declare-fun lt!2466998 () Unit!160474)

(assert (=> b!6903453 (= lt!2466999 lt!2466998)))

(assert (=> b!6903453 (= (++!14922 (++!14922 Nil!66502 (Cons!66502 (h!72950 s!14361) Nil!66502)) (t!380369 s!14361)) s!14361)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2797 (List!66626 C!34008 List!66626 List!66626) Unit!160474)

(assert (=> b!6903453 (= lt!2466998 (lemmaMoveElementToOtherListKeepsConcatEq!2797 Nil!66502 (h!72950 s!14361) (t!380369 s!14361) s!14361))))

(assert (=> b!6903453 (= e!4157212 (findConcatSeparation!3062 lt!2466951 r3!135 (++!14922 Nil!66502 (Cons!66502 (h!72950 s!14361) Nil!66502)) (t!380369 s!14361) s!14361))))

(declare-fun b!6903454 () Bool)

(declare-fun res!2815197 () Bool)

(assert (=> b!6903454 (=> (not res!2815197) (not e!4157208))))

(assert (=> b!6903454 (= res!2815197 (matchR!9014 r3!135 (_2!37039 (get!23254 lt!2467000))))))

(declare-fun b!6903455 () Bool)

(assert (=> b!6903455 (= e!4157209 (not (isDefined!13351 lt!2467000)))))

(assert (= (and d!2162404 res!2815194) b!6903450))

(assert (= (and d!2162404 c!1282622) b!6903449))

(assert (= (and d!2162404 (not c!1282622)) b!6903447))

(assert (= (and b!6903447 c!1282623) b!6903452))

(assert (= (and b!6903447 (not c!1282623)) b!6903453))

(assert (= (and d!2162404 res!2815195) b!6903448))

(assert (= (and b!6903448 res!2815196) b!6903454))

(assert (= (and b!6903454 res!2815197) b!6903451))

(assert (= (and d!2162404 (not res!2815198)) b!6903455))

(declare-fun m!7621112 () Bool)

(assert (=> b!6903455 m!7621112))

(declare-fun m!7621114 () Bool)

(assert (=> b!6903451 m!7621114))

(declare-fun m!7621116 () Bool)

(assert (=> b!6903451 m!7621116))

(assert (=> d!2162404 m!7621112))

(declare-fun m!7621118 () Bool)

(assert (=> d!2162404 m!7621118))

(assert (=> d!2162404 m!7621026))

(declare-fun m!7621120 () Bool)

(assert (=> b!6903450 m!7621120))

(assert (=> b!6903448 m!7621114))

(declare-fun m!7621122 () Bool)

(assert (=> b!6903448 m!7621122))

(declare-fun m!7621124 () Bool)

(assert (=> b!6903453 m!7621124))

(assert (=> b!6903453 m!7621124))

(declare-fun m!7621126 () Bool)

(assert (=> b!6903453 m!7621126))

(declare-fun m!7621128 () Bool)

(assert (=> b!6903453 m!7621128))

(assert (=> b!6903453 m!7621124))

(declare-fun m!7621130 () Bool)

(assert (=> b!6903453 m!7621130))

(assert (=> b!6903454 m!7621114))

(declare-fun m!7621132 () Bool)

(assert (=> b!6903454 m!7621132))

(assert (=> b!6903040 d!2162404))

(declare-fun d!2162408 () Bool)

(assert (=> d!2162408 (= (get!23254 lt!2466945) (v!52919 lt!2466945))))

(assert (=> b!6903040 d!2162408))

(declare-fun bs!1843166 () Bool)

(declare-fun b!6903468 () Bool)

(assert (= bs!1843166 (and b!6903468 d!2162376)))

(declare-fun lambda!392050 () Int)

(assert (=> bs!1843166 (not (= lambda!392050 lambda!392033))))

(declare-fun bs!1843169 () Bool)

(assert (= bs!1843169 (and b!6903468 d!2162388)))

(assert (=> bs!1843169 (not (= lambda!392050 lambda!392040))))

(declare-fun bs!1843170 () Bool)

(assert (= bs!1843170 (and b!6903468 b!6903040)))

(assert (=> bs!1843170 (not (= lambda!392050 lambda!392013))))

(assert (=> bs!1843169 (not (= lambda!392050 lambda!392041))))

(declare-fun bs!1843171 () Bool)

(assert (= bs!1843171 (and b!6903468 b!6903269)))

(assert (=> bs!1843171 (not (= lambda!392050 lambda!392027))))

(declare-fun bs!1843172 () Bool)

(assert (= bs!1843172 (and b!6903468 b!6903277)))

(assert (=> bs!1843172 (= (and (= (_1!37039 lt!2466941) s!14361) (= (reg!17198 lt!2466951) (reg!17198 lt!2466949)) (= lt!2466951 lt!2466949)) (= lambda!392050 lambda!392025))))

(declare-fun bs!1843173 () Bool)

(assert (= bs!1843173 (and b!6903468 b!6903258)))

(assert (=> bs!1843173 (not (= lambda!392050 lambda!392024))))

(declare-fun bs!1843174 () Bool)

(assert (= bs!1843174 (and b!6903468 b!6903266)))

(assert (=> bs!1843174 (= (and (= (_1!37039 lt!2466941) s!14361) (= (reg!17198 lt!2466951) (reg!17198 lt!2466940)) (= lt!2466951 lt!2466940)) (= lambda!392050 lambda!392023))))

(assert (=> bs!1843170 (not (= lambda!392050 lambda!392014))))

(assert (=> b!6903468 true))

(assert (=> b!6903468 true))

(declare-fun bs!1843176 () Bool)

(declare-fun b!6903460 () Bool)

(assert (= bs!1843176 (and b!6903460 d!2162376)))

(declare-fun lambda!392052 () Int)

(assert (=> bs!1843176 (not (= lambda!392052 lambda!392033))))

(declare-fun bs!1843177 () Bool)

(assert (= bs!1843177 (and b!6903460 b!6903040)))

(assert (=> bs!1843177 (not (= lambda!392052 lambda!392013))))

(declare-fun bs!1843178 () Bool)

(assert (= bs!1843178 (and b!6903460 d!2162388)))

(assert (=> bs!1843178 (= (and (= (_1!37039 lt!2466941) s!14361) (= (regOne!34250 lt!2466951) lt!2466951) (= (regTwo!34250 lt!2466951) r3!135)) (= lambda!392052 lambda!392041))))

(declare-fun bs!1843179 () Bool)

(assert (= bs!1843179 (and b!6903460 b!6903269)))

(assert (=> bs!1843179 (= (and (= (_1!37039 lt!2466941) s!14361) (= (regOne!34250 lt!2466951) (regOne!34250 lt!2466949)) (= (regTwo!34250 lt!2466951) (regTwo!34250 lt!2466949))) (= lambda!392052 lambda!392027))))

(declare-fun bs!1843180 () Bool)

(assert (= bs!1843180 (and b!6903460 b!6903277)))

(assert (=> bs!1843180 (not (= lambda!392052 lambda!392025))))

(declare-fun bs!1843181 () Bool)

(assert (= bs!1843181 (and b!6903460 b!6903258)))

(assert (=> bs!1843181 (= (and (= (_1!37039 lt!2466941) s!14361) (= (regOne!34250 lt!2466951) (regOne!34250 lt!2466940)) (= (regTwo!34250 lt!2466951) (regTwo!34250 lt!2466940))) (= lambda!392052 lambda!392024))))

(declare-fun bs!1843182 () Bool)

(assert (= bs!1843182 (and b!6903460 b!6903468)))

(assert (=> bs!1843182 (not (= lambda!392052 lambda!392050))))

(assert (=> bs!1843178 (not (= lambda!392052 lambda!392040))))

(declare-fun bs!1843183 () Bool)

(assert (= bs!1843183 (and b!6903460 b!6903266)))

(assert (=> bs!1843183 (not (= lambda!392052 lambda!392023))))

(assert (=> bs!1843177 (= (and (= (_1!37039 lt!2466941) s!14361) (= (regOne!34250 lt!2466951) lt!2466951) (= (regTwo!34250 lt!2466951) r3!135)) (= lambda!392052 lambda!392014))))

(assert (=> b!6903460 true))

(assert (=> b!6903460 true))

(declare-fun b!6903458 () Bool)

(declare-fun e!4157214 () Bool)

(assert (=> b!6903458 (= e!4157214 (matchRSpec!3932 (regTwo!34251 lt!2466951) (_1!37039 lt!2466941)))))

(declare-fun d!2162410 () Bool)

(declare-fun c!1282626 () Bool)

(assert (=> d!2162410 (= c!1282626 ((_ is EmptyExpr!16869) lt!2466951))))

(declare-fun e!4157219 () Bool)

(assert (=> d!2162410 (= (matchRSpec!3932 lt!2466951 (_1!37039 lt!2466941)) e!4157219)))

(declare-fun b!6903459 () Bool)

(declare-fun e!4157213 () Bool)

(assert (=> b!6903459 (= e!4157213 (= (_1!37039 lt!2466941) (Cons!66502 (c!1282531 lt!2466951) Nil!66502)))))

(declare-fun e!4157217 () Bool)

(declare-fun call!627771 () Bool)

(assert (=> b!6903460 (= e!4157217 call!627771)))

(declare-fun b!6903461 () Bool)

(declare-fun c!1282625 () Bool)

(assert (=> b!6903461 (= c!1282625 ((_ is Union!16869) lt!2466951))))

(declare-fun e!4157215 () Bool)

(assert (=> b!6903461 (= e!4157213 e!4157215)))

(declare-fun bm!627766 () Bool)

(declare-fun call!627772 () Bool)

(assert (=> bm!627766 (= call!627772 (isEmpty!38732 (_1!37039 lt!2466941)))))

(declare-fun b!6903462 () Bool)

(assert (=> b!6903462 (= e!4157215 e!4157214)))

(declare-fun res!2815202 () Bool)

(assert (=> b!6903462 (= res!2815202 (matchRSpec!3932 (regOne!34251 lt!2466951) (_1!37039 lt!2466941)))))

(assert (=> b!6903462 (=> res!2815202 e!4157214)))

(declare-fun bm!627767 () Bool)

(declare-fun c!1282627 () Bool)

(assert (=> bm!627767 (= call!627771 (Exists!3877 (ite c!1282627 lambda!392050 lambda!392052)))))

(declare-fun b!6903463 () Bool)

(assert (=> b!6903463 (= e!4157215 e!4157217)))

(assert (=> b!6903463 (= c!1282627 ((_ is Star!16869) lt!2466951))))

(declare-fun b!6903464 () Bool)

(declare-fun c!1282624 () Bool)

(assert (=> b!6903464 (= c!1282624 ((_ is ElementMatch!16869) lt!2466951))))

(declare-fun e!4157216 () Bool)

(assert (=> b!6903464 (= e!4157216 e!4157213)))

(declare-fun b!6903465 () Bool)

(declare-fun res!2815201 () Bool)

(declare-fun e!4157218 () Bool)

(assert (=> b!6903465 (=> res!2815201 e!4157218)))

(assert (=> b!6903465 (= res!2815201 call!627772)))

(assert (=> b!6903465 (= e!4157217 e!4157218)))

(declare-fun b!6903466 () Bool)

(assert (=> b!6903466 (= e!4157219 call!627772)))

(declare-fun b!6903467 () Bool)

(assert (=> b!6903467 (= e!4157219 e!4157216)))

(declare-fun res!2815203 () Bool)

(assert (=> b!6903467 (= res!2815203 (not ((_ is EmptyLang!16869) lt!2466951)))))

(assert (=> b!6903467 (=> (not res!2815203) (not e!4157216))))

(assert (=> b!6903468 (= e!4157218 call!627771)))

(assert (= (and d!2162410 c!1282626) b!6903466))

(assert (= (and d!2162410 (not c!1282626)) b!6903467))

(assert (= (and b!6903467 res!2815203) b!6903464))

(assert (= (and b!6903464 c!1282624) b!6903459))

(assert (= (and b!6903464 (not c!1282624)) b!6903461))

(assert (= (and b!6903461 c!1282625) b!6903462))

(assert (= (and b!6903461 (not c!1282625)) b!6903463))

(assert (= (and b!6903462 (not res!2815202)) b!6903458))

(assert (= (and b!6903463 c!1282627) b!6903465))

(assert (= (and b!6903463 (not c!1282627)) b!6903460))

(assert (= (and b!6903465 (not res!2815201)) b!6903468))

(assert (= (or b!6903468 b!6903460) bm!627767))

(assert (= (or b!6903466 b!6903465) bm!627766))

(declare-fun m!7621146 () Bool)

(assert (=> b!6903458 m!7621146))

(assert (=> bm!627766 m!7621046))

(declare-fun m!7621148 () Bool)

(assert (=> b!6903462 m!7621148))

(declare-fun m!7621150 () Bool)

(assert (=> bm!627767 m!7621150))

(assert (=> b!6903040 d!2162410))

(declare-fun bm!627771 () Bool)

(declare-fun call!627776 () Bool)

(declare-fun call!627778 () Bool)

(assert (=> bm!627771 (= call!627776 call!627778)))

(declare-fun b!6903488 () Bool)

(declare-fun e!4157230 () Bool)

(declare-fun e!4157234 () Bool)

(assert (=> b!6903488 (= e!4157230 e!4157234)))

(declare-fun res!2815213 () Bool)

(assert (=> b!6903488 (= res!2815213 (not (nullable!6710 (reg!17198 r3!135))))))

(assert (=> b!6903488 (=> (not res!2815213) (not e!4157234))))

(declare-fun b!6903489 () Bool)

(declare-fun e!4157233 () Bool)

(assert (=> b!6903489 (= e!4157233 call!627776)))

(declare-fun bm!627772 () Bool)

(declare-fun call!627777 () Bool)

(declare-fun c!1282630 () Bool)

(assert (=> bm!627772 (= call!627777 (validRegex!8577 (ite c!1282630 (regTwo!34251 r3!135) (regOne!34250 r3!135))))))

(declare-fun b!6903490 () Bool)

(declare-fun e!4157235 () Bool)

(assert (=> b!6903490 (= e!4157235 call!627777)))

(declare-fun b!6903491 () Bool)

(declare-fun e!4157229 () Bool)

(assert (=> b!6903491 (= e!4157229 e!4157233)))

(declare-fun res!2815210 () Bool)

(assert (=> b!6903491 (=> (not res!2815210) (not e!4157233))))

(assert (=> b!6903491 (= res!2815210 call!627777)))

(declare-fun b!6903492 () Bool)

(declare-fun res!2815211 () Bool)

(assert (=> b!6903492 (=> (not res!2815211) (not e!4157235))))

(assert (=> b!6903492 (= res!2815211 call!627776)))

(declare-fun e!4157231 () Bool)

(assert (=> b!6903492 (= e!4157231 e!4157235)))

(declare-fun b!6903493 () Bool)

(assert (=> b!6903493 (= e!4157230 e!4157231)))

(assert (=> b!6903493 (= c!1282630 ((_ is Union!16869) r3!135))))

(declare-fun d!2162414 () Bool)

(declare-fun res!2815212 () Bool)

(declare-fun e!4157232 () Bool)

(assert (=> d!2162414 (=> res!2815212 e!4157232)))

(assert (=> d!2162414 (= res!2815212 ((_ is ElementMatch!16869) r3!135))))

(assert (=> d!2162414 (= (validRegex!8577 r3!135) e!4157232)))

(declare-fun b!6903494 () Bool)

(assert (=> b!6903494 (= e!4157232 e!4157230)))

(declare-fun c!1282631 () Bool)

(assert (=> b!6903494 (= c!1282631 ((_ is Star!16869) r3!135))))

(declare-fun b!6903495 () Bool)

(declare-fun res!2815209 () Bool)

(assert (=> b!6903495 (=> res!2815209 e!4157229)))

(assert (=> b!6903495 (= res!2815209 (not ((_ is Concat!25714) r3!135)))))

(assert (=> b!6903495 (= e!4157231 e!4157229)))

(declare-fun bm!627773 () Bool)

(assert (=> bm!627773 (= call!627778 (validRegex!8577 (ite c!1282631 (reg!17198 r3!135) (ite c!1282630 (regOne!34251 r3!135) (regTwo!34250 r3!135)))))))

(declare-fun b!6903496 () Bool)

(assert (=> b!6903496 (= e!4157234 call!627778)))

(assert (= (and d!2162414 (not res!2815212)) b!6903494))

(assert (= (and b!6903494 c!1282631) b!6903488))

(assert (= (and b!6903494 (not c!1282631)) b!6903493))

(assert (= (and b!6903488 res!2815213) b!6903496))

(assert (= (and b!6903493 c!1282630) b!6903492))

(assert (= (and b!6903493 (not c!1282630)) b!6903495))

(assert (= (and b!6903492 res!2815211) b!6903490))

(assert (= (and b!6903495 (not res!2815209)) b!6903491))

(assert (= (and b!6903491 res!2815210) b!6903489))

(assert (= (or b!6903492 b!6903489) bm!627771))

(assert (= (or b!6903490 b!6903491) bm!627772))

(assert (= (or b!6903496 bm!627771) bm!627773))

(declare-fun m!7621152 () Bool)

(assert (=> b!6903488 m!7621152))

(declare-fun m!7621154 () Bool)

(assert (=> bm!627772 m!7621154))

(declare-fun m!7621156 () Bool)

(assert (=> bm!627773 m!7621156))

(assert (=> b!6903050 d!2162414))

(declare-fun bm!627774 () Bool)

(declare-fun call!627779 () Bool)

(declare-fun call!627781 () Bool)

(assert (=> bm!627774 (= call!627779 call!627781)))

(declare-fun b!6903505 () Bool)

(declare-fun e!4157239 () Bool)

(declare-fun e!4157243 () Bool)

(assert (=> b!6903505 (= e!4157239 e!4157243)))

(declare-fun res!2815218 () Bool)

(assert (=> b!6903505 (= res!2815218 (not (nullable!6710 (reg!17198 r1!6342))))))

(assert (=> b!6903505 (=> (not res!2815218) (not e!4157243))))

(declare-fun b!6903506 () Bool)

(declare-fun e!4157242 () Bool)

(assert (=> b!6903506 (= e!4157242 call!627779)))

(declare-fun bm!627775 () Bool)

(declare-fun call!627780 () Bool)

(declare-fun c!1282632 () Bool)

(assert (=> bm!627775 (= call!627780 (validRegex!8577 (ite c!1282632 (regTwo!34251 r1!6342) (regOne!34250 r1!6342))))))

(declare-fun b!6903507 () Bool)

(declare-fun e!4157244 () Bool)

(assert (=> b!6903507 (= e!4157244 call!627780)))

(declare-fun b!6903508 () Bool)

(declare-fun e!4157238 () Bool)

(assert (=> b!6903508 (= e!4157238 e!4157242)))

(declare-fun res!2815215 () Bool)

(assert (=> b!6903508 (=> (not res!2815215) (not e!4157242))))

(assert (=> b!6903508 (= res!2815215 call!627780)))

(declare-fun b!6903509 () Bool)

(declare-fun res!2815216 () Bool)

(assert (=> b!6903509 (=> (not res!2815216) (not e!4157244))))

(assert (=> b!6903509 (= res!2815216 call!627779)))

(declare-fun e!4157240 () Bool)

(assert (=> b!6903509 (= e!4157240 e!4157244)))

(declare-fun b!6903510 () Bool)

(assert (=> b!6903510 (= e!4157239 e!4157240)))

(assert (=> b!6903510 (= c!1282632 ((_ is Union!16869) r1!6342))))

(declare-fun d!2162416 () Bool)

(declare-fun res!2815217 () Bool)

(declare-fun e!4157241 () Bool)

(assert (=> d!2162416 (=> res!2815217 e!4157241)))

(assert (=> d!2162416 (= res!2815217 ((_ is ElementMatch!16869) r1!6342))))

(assert (=> d!2162416 (= (validRegex!8577 r1!6342) e!4157241)))

(declare-fun b!6903511 () Bool)

(assert (=> b!6903511 (= e!4157241 e!4157239)))

(declare-fun c!1282633 () Bool)

(assert (=> b!6903511 (= c!1282633 ((_ is Star!16869) r1!6342))))

(declare-fun b!6903512 () Bool)

(declare-fun res!2815214 () Bool)

(assert (=> b!6903512 (=> res!2815214 e!4157238)))

(assert (=> b!6903512 (= res!2815214 (not ((_ is Concat!25714) r1!6342)))))

(assert (=> b!6903512 (= e!4157240 e!4157238)))

(declare-fun bm!627776 () Bool)

(assert (=> bm!627776 (= call!627781 (validRegex!8577 (ite c!1282633 (reg!17198 r1!6342) (ite c!1282632 (regOne!34251 r1!6342) (regTwo!34250 r1!6342)))))))

(declare-fun b!6903513 () Bool)

(assert (=> b!6903513 (= e!4157243 call!627781)))

(assert (= (and d!2162416 (not res!2815217)) b!6903511))

(assert (= (and b!6903511 c!1282633) b!6903505))

(assert (= (and b!6903511 (not c!1282633)) b!6903510))

(assert (= (and b!6903505 res!2815218) b!6903513))

(assert (= (and b!6903510 c!1282632) b!6903509))

(assert (= (and b!6903510 (not c!1282632)) b!6903512))

(assert (= (and b!6903509 res!2815216) b!6903507))

(assert (= (and b!6903512 (not res!2815214)) b!6903508))

(assert (= (and b!6903508 res!2815215) b!6903506))

(assert (= (or b!6903509 b!6903506) bm!627774))

(assert (= (or b!6903507 b!6903508) bm!627775))

(assert (= (or b!6903513 bm!627774) bm!627776))

(declare-fun m!7621158 () Bool)

(assert (=> b!6903505 m!7621158))

(declare-fun m!7621160 () Bool)

(assert (=> bm!627775 m!7621160))

(declare-fun m!7621162 () Bool)

(assert (=> bm!627776 m!7621162))

(assert (=> start!664794 d!2162416))

(declare-fun b!6903560 () Bool)

(declare-fun e!4157257 () Bool)

(declare-fun tp!1900656 () Bool)

(declare-fun tp!1900653 () Bool)

(assert (=> b!6903560 (= e!4157257 (and tp!1900656 tp!1900653))))

(declare-fun b!6903558 () Bool)

(declare-fun tp!1900655 () Bool)

(declare-fun tp!1900654 () Bool)

(assert (=> b!6903558 (= e!4157257 (and tp!1900655 tp!1900654))))

(declare-fun b!6903559 () Bool)

(declare-fun tp!1900652 () Bool)

(assert (=> b!6903559 (= e!4157257 tp!1900652)))

(declare-fun b!6903557 () Bool)

(assert (=> b!6903557 (= e!4157257 tp_is_empty!42963)))

(assert (=> b!6903047 (= tp!1900579 e!4157257)))

(assert (= (and b!6903047 ((_ is ElementMatch!16869) (regOne!34250 r2!6280))) b!6903557))

(assert (= (and b!6903047 ((_ is Concat!25714) (regOne!34250 r2!6280))) b!6903558))

(assert (= (and b!6903047 ((_ is Star!16869) (regOne!34250 r2!6280))) b!6903559))

(assert (= (and b!6903047 ((_ is Union!16869) (regOne!34250 r2!6280))) b!6903560))

(declare-fun b!6903568 () Bool)

(declare-fun e!4157259 () Bool)

(declare-fun tp!1900666 () Bool)

(declare-fun tp!1900663 () Bool)

(assert (=> b!6903568 (= e!4157259 (and tp!1900666 tp!1900663))))

(declare-fun b!6903566 () Bool)

(declare-fun tp!1900665 () Bool)

(declare-fun tp!1900664 () Bool)

(assert (=> b!6903566 (= e!4157259 (and tp!1900665 tp!1900664))))

(declare-fun b!6903567 () Bool)

(declare-fun tp!1900662 () Bool)

(assert (=> b!6903567 (= e!4157259 tp!1900662)))

(declare-fun b!6903565 () Bool)

(assert (=> b!6903565 (= e!4157259 tp_is_empty!42963)))

(assert (=> b!6903047 (= tp!1900575 e!4157259)))

(assert (= (and b!6903047 ((_ is ElementMatch!16869) (regTwo!34250 r2!6280))) b!6903565))

(assert (= (and b!6903047 ((_ is Concat!25714) (regTwo!34250 r2!6280))) b!6903566))

(assert (= (and b!6903047 ((_ is Star!16869) (regTwo!34250 r2!6280))) b!6903567))

(assert (= (and b!6903047 ((_ is Union!16869) (regTwo!34250 r2!6280))) b!6903568))

(declare-fun b!6903576 () Bool)

(declare-fun e!4157261 () Bool)

(declare-fun tp!1900676 () Bool)

(declare-fun tp!1900673 () Bool)

(assert (=> b!6903576 (= e!4157261 (and tp!1900676 tp!1900673))))

(declare-fun b!6903574 () Bool)

(declare-fun tp!1900675 () Bool)

(declare-fun tp!1900674 () Bool)

(assert (=> b!6903574 (= e!4157261 (and tp!1900675 tp!1900674))))

(declare-fun b!6903575 () Bool)

(declare-fun tp!1900672 () Bool)

(assert (=> b!6903575 (= e!4157261 tp!1900672)))

(declare-fun b!6903573 () Bool)

(assert (=> b!6903573 (= e!4157261 tp_is_empty!42963)))

(assert (=> b!6903045 (= tp!1900570 e!4157261)))

(assert (= (and b!6903045 ((_ is ElementMatch!16869) (regOne!34251 r1!6342))) b!6903573))

(assert (= (and b!6903045 ((_ is Concat!25714) (regOne!34251 r1!6342))) b!6903574))

(assert (= (and b!6903045 ((_ is Star!16869) (regOne!34251 r1!6342))) b!6903575))

(assert (= (and b!6903045 ((_ is Union!16869) (regOne!34251 r1!6342))) b!6903576))

(declare-fun b!6903584 () Bool)

(declare-fun e!4157263 () Bool)

(declare-fun tp!1900686 () Bool)

(declare-fun tp!1900683 () Bool)

(assert (=> b!6903584 (= e!4157263 (and tp!1900686 tp!1900683))))

(declare-fun b!6903582 () Bool)

(declare-fun tp!1900685 () Bool)

(declare-fun tp!1900684 () Bool)

(assert (=> b!6903582 (= e!4157263 (and tp!1900685 tp!1900684))))

(declare-fun b!6903583 () Bool)

(declare-fun tp!1900682 () Bool)

(assert (=> b!6903583 (= e!4157263 tp!1900682)))

(declare-fun b!6903581 () Bool)

(assert (=> b!6903581 (= e!4157263 tp_is_empty!42963)))

(assert (=> b!6903045 (= tp!1900574 e!4157263)))

(assert (= (and b!6903045 ((_ is ElementMatch!16869) (regTwo!34251 r1!6342))) b!6903581))

(assert (= (and b!6903045 ((_ is Concat!25714) (regTwo!34251 r1!6342))) b!6903582))

(assert (= (and b!6903045 ((_ is Star!16869) (regTwo!34251 r1!6342))) b!6903583))

(assert (= (and b!6903045 ((_ is Union!16869) (regTwo!34251 r1!6342))) b!6903584))

(declare-fun b!6903592 () Bool)

(declare-fun e!4157265 () Bool)

(declare-fun tp!1900696 () Bool)

(declare-fun tp!1900693 () Bool)

(assert (=> b!6903592 (= e!4157265 (and tp!1900696 tp!1900693))))

(declare-fun b!6903590 () Bool)

(declare-fun tp!1900695 () Bool)

(declare-fun tp!1900694 () Bool)

(assert (=> b!6903590 (= e!4157265 (and tp!1900695 tp!1900694))))

(declare-fun b!6903591 () Bool)

(declare-fun tp!1900692 () Bool)

(assert (=> b!6903591 (= e!4157265 tp!1900692)))

(declare-fun b!6903589 () Bool)

(assert (=> b!6903589 (= e!4157265 tp_is_empty!42963)))

(assert (=> b!6903046 (= tp!1900569 e!4157265)))

(assert (= (and b!6903046 ((_ is ElementMatch!16869) (regOne!34250 r3!135))) b!6903589))

(assert (= (and b!6903046 ((_ is Concat!25714) (regOne!34250 r3!135))) b!6903590))

(assert (= (and b!6903046 ((_ is Star!16869) (regOne!34250 r3!135))) b!6903591))

(assert (= (and b!6903046 ((_ is Union!16869) (regOne!34250 r3!135))) b!6903592))

(declare-fun b!6903600 () Bool)

(declare-fun e!4157267 () Bool)

(declare-fun tp!1900706 () Bool)

(declare-fun tp!1900703 () Bool)

(assert (=> b!6903600 (= e!4157267 (and tp!1900706 tp!1900703))))

(declare-fun b!6903598 () Bool)

(declare-fun tp!1900705 () Bool)

(declare-fun tp!1900704 () Bool)

(assert (=> b!6903598 (= e!4157267 (and tp!1900705 tp!1900704))))

(declare-fun b!6903599 () Bool)

(declare-fun tp!1900702 () Bool)

(assert (=> b!6903599 (= e!4157267 tp!1900702)))

(declare-fun b!6903597 () Bool)

(assert (=> b!6903597 (= e!4157267 tp_is_empty!42963)))

(assert (=> b!6903046 (= tp!1900568 e!4157267)))

(assert (= (and b!6903046 ((_ is ElementMatch!16869) (regTwo!34250 r3!135))) b!6903597))

(assert (= (and b!6903046 ((_ is Concat!25714) (regTwo!34250 r3!135))) b!6903598))

(assert (= (and b!6903046 ((_ is Star!16869) (regTwo!34250 r3!135))) b!6903599))

(assert (= (and b!6903046 ((_ is Union!16869) (regTwo!34250 r3!135))) b!6903600))

(declare-fun b!6903608 () Bool)

(declare-fun e!4157269 () Bool)

(declare-fun tp!1900716 () Bool)

(declare-fun tp!1900713 () Bool)

(assert (=> b!6903608 (= e!4157269 (and tp!1900716 tp!1900713))))

(declare-fun b!6903606 () Bool)

(declare-fun tp!1900715 () Bool)

(declare-fun tp!1900714 () Bool)

(assert (=> b!6903606 (= e!4157269 (and tp!1900715 tp!1900714))))

(declare-fun b!6903607 () Bool)

(declare-fun tp!1900712 () Bool)

(assert (=> b!6903607 (= e!4157269 tp!1900712)))

(declare-fun b!6903605 () Bool)

(assert (=> b!6903605 (= e!4157269 tp_is_empty!42963)))

(assert (=> b!6903051 (= tp!1900581 e!4157269)))

(assert (= (and b!6903051 ((_ is ElementMatch!16869) (reg!17198 r1!6342))) b!6903605))

(assert (= (and b!6903051 ((_ is Concat!25714) (reg!17198 r1!6342))) b!6903606))

(assert (= (and b!6903051 ((_ is Star!16869) (reg!17198 r1!6342))) b!6903607))

(assert (= (and b!6903051 ((_ is Union!16869) (reg!17198 r1!6342))) b!6903608))

(declare-fun b!6903613 () Bool)

(declare-fun e!4157272 () Bool)

(declare-fun tp!1900719 () Bool)

(assert (=> b!6903613 (= e!4157272 (and tp_is_empty!42963 tp!1900719))))

(assert (=> b!6903044 (= tp!1900576 e!4157272)))

(assert (= (and b!6903044 ((_ is Cons!66502) (t!380369 s!14361))) b!6903613))

(declare-fun b!6903617 () Bool)

(declare-fun e!4157273 () Bool)

(declare-fun tp!1900724 () Bool)

(declare-fun tp!1900721 () Bool)

(assert (=> b!6903617 (= e!4157273 (and tp!1900724 tp!1900721))))

(declare-fun b!6903615 () Bool)

(declare-fun tp!1900723 () Bool)

(declare-fun tp!1900722 () Bool)

(assert (=> b!6903615 (= e!4157273 (and tp!1900723 tp!1900722))))

(declare-fun b!6903616 () Bool)

(declare-fun tp!1900720 () Bool)

(assert (=> b!6903616 (= e!4157273 tp!1900720)))

(declare-fun b!6903614 () Bool)

(assert (=> b!6903614 (= e!4157273 tp_is_empty!42963)))

(assert (=> b!6903039 (= tp!1900583 e!4157273)))

(assert (= (and b!6903039 ((_ is ElementMatch!16869) (regOne!34251 r3!135))) b!6903614))

(assert (= (and b!6903039 ((_ is Concat!25714) (regOne!34251 r3!135))) b!6903615))

(assert (= (and b!6903039 ((_ is Star!16869) (regOne!34251 r3!135))) b!6903616))

(assert (= (and b!6903039 ((_ is Union!16869) (regOne!34251 r3!135))) b!6903617))

(declare-fun b!6903621 () Bool)

(declare-fun e!4157274 () Bool)

(declare-fun tp!1900729 () Bool)

(declare-fun tp!1900726 () Bool)

(assert (=> b!6903621 (= e!4157274 (and tp!1900729 tp!1900726))))

(declare-fun b!6903619 () Bool)

(declare-fun tp!1900728 () Bool)

(declare-fun tp!1900727 () Bool)

(assert (=> b!6903619 (= e!4157274 (and tp!1900728 tp!1900727))))

(declare-fun b!6903620 () Bool)

(declare-fun tp!1900725 () Bool)

(assert (=> b!6903620 (= e!4157274 tp!1900725)))

(declare-fun b!6903618 () Bool)

(assert (=> b!6903618 (= e!4157274 tp_is_empty!42963)))

(assert (=> b!6903039 (= tp!1900572 e!4157274)))

(assert (= (and b!6903039 ((_ is ElementMatch!16869) (regTwo!34251 r3!135))) b!6903618))

(assert (= (and b!6903039 ((_ is Concat!25714) (regTwo!34251 r3!135))) b!6903619))

(assert (= (and b!6903039 ((_ is Star!16869) (regTwo!34251 r3!135))) b!6903620))

(assert (= (and b!6903039 ((_ is Union!16869) (regTwo!34251 r3!135))) b!6903621))

(declare-fun b!6903625 () Bool)

(declare-fun e!4157275 () Bool)

(declare-fun tp!1900734 () Bool)

(declare-fun tp!1900731 () Bool)

(assert (=> b!6903625 (= e!4157275 (and tp!1900734 tp!1900731))))

(declare-fun b!6903623 () Bool)

(declare-fun tp!1900733 () Bool)

(declare-fun tp!1900732 () Bool)

(assert (=> b!6903623 (= e!4157275 (and tp!1900733 tp!1900732))))

(declare-fun b!6903624 () Bool)

(declare-fun tp!1900730 () Bool)

(assert (=> b!6903624 (= e!4157275 tp!1900730)))

(declare-fun b!6903622 () Bool)

(assert (=> b!6903622 (= e!4157275 tp_is_empty!42963)))

(assert (=> b!6903048 (= tp!1900580 e!4157275)))

(assert (= (and b!6903048 ((_ is ElementMatch!16869) (regOne!34250 r1!6342))) b!6903622))

(assert (= (and b!6903048 ((_ is Concat!25714) (regOne!34250 r1!6342))) b!6903623))

(assert (= (and b!6903048 ((_ is Star!16869) (regOne!34250 r1!6342))) b!6903624))

(assert (= (and b!6903048 ((_ is Union!16869) (regOne!34250 r1!6342))) b!6903625))

(declare-fun b!6903629 () Bool)

(declare-fun e!4157276 () Bool)

(declare-fun tp!1900739 () Bool)

(declare-fun tp!1900736 () Bool)

(assert (=> b!6903629 (= e!4157276 (and tp!1900739 tp!1900736))))

(declare-fun b!6903627 () Bool)

(declare-fun tp!1900738 () Bool)

(declare-fun tp!1900737 () Bool)

(assert (=> b!6903627 (= e!4157276 (and tp!1900738 tp!1900737))))

(declare-fun b!6903628 () Bool)

(declare-fun tp!1900735 () Bool)

(assert (=> b!6903628 (= e!4157276 tp!1900735)))

(declare-fun b!6903626 () Bool)

(assert (=> b!6903626 (= e!4157276 tp_is_empty!42963)))

(assert (=> b!6903048 (= tp!1900571 e!4157276)))

(assert (= (and b!6903048 ((_ is ElementMatch!16869) (regTwo!34250 r1!6342))) b!6903626))

(assert (= (and b!6903048 ((_ is Concat!25714) (regTwo!34250 r1!6342))) b!6903627))

(assert (= (and b!6903048 ((_ is Star!16869) (regTwo!34250 r1!6342))) b!6903628))

(assert (= (and b!6903048 ((_ is Union!16869) (regTwo!34250 r1!6342))) b!6903629))

(declare-fun b!6903633 () Bool)

(declare-fun e!4157277 () Bool)

(declare-fun tp!1900744 () Bool)

(declare-fun tp!1900741 () Bool)

(assert (=> b!6903633 (= e!4157277 (and tp!1900744 tp!1900741))))

(declare-fun b!6903631 () Bool)

(declare-fun tp!1900743 () Bool)

(declare-fun tp!1900742 () Bool)

(assert (=> b!6903631 (= e!4157277 (and tp!1900743 tp!1900742))))

(declare-fun b!6903632 () Bool)

(declare-fun tp!1900740 () Bool)

(assert (=> b!6903632 (= e!4157277 tp!1900740)))

(declare-fun b!6903630 () Bool)

(assert (=> b!6903630 (= e!4157277 tp_is_empty!42963)))

(assert (=> b!6903053 (= tp!1900582 e!4157277)))

(assert (= (and b!6903053 ((_ is ElementMatch!16869) (reg!17198 r3!135))) b!6903630))

(assert (= (and b!6903053 ((_ is Concat!25714) (reg!17198 r3!135))) b!6903631))

(assert (= (and b!6903053 ((_ is Star!16869) (reg!17198 r3!135))) b!6903632))

(assert (= (and b!6903053 ((_ is Union!16869) (reg!17198 r3!135))) b!6903633))

(declare-fun b!6903637 () Bool)

(declare-fun e!4157278 () Bool)

(declare-fun tp!1900749 () Bool)

(declare-fun tp!1900746 () Bool)

(assert (=> b!6903637 (= e!4157278 (and tp!1900749 tp!1900746))))

(declare-fun b!6903635 () Bool)

(declare-fun tp!1900748 () Bool)

(declare-fun tp!1900747 () Bool)

(assert (=> b!6903635 (= e!4157278 (and tp!1900748 tp!1900747))))

(declare-fun b!6903636 () Bool)

(declare-fun tp!1900745 () Bool)

(assert (=> b!6903636 (= e!4157278 tp!1900745)))

(declare-fun b!6903634 () Bool)

(assert (=> b!6903634 (= e!4157278 tp_is_empty!42963)))

(assert (=> b!6903037 (= tp!1900573 e!4157278)))

(assert (= (and b!6903037 ((_ is ElementMatch!16869) (reg!17198 r2!6280))) b!6903634))

(assert (= (and b!6903037 ((_ is Concat!25714) (reg!17198 r2!6280))) b!6903635))

(assert (= (and b!6903037 ((_ is Star!16869) (reg!17198 r2!6280))) b!6903636))

(assert (= (and b!6903037 ((_ is Union!16869) (reg!17198 r2!6280))) b!6903637))

(declare-fun b!6903641 () Bool)

(declare-fun e!4157279 () Bool)

(declare-fun tp!1900754 () Bool)

(declare-fun tp!1900751 () Bool)

(assert (=> b!6903641 (= e!4157279 (and tp!1900754 tp!1900751))))

(declare-fun b!6903639 () Bool)

(declare-fun tp!1900753 () Bool)

(declare-fun tp!1900752 () Bool)

(assert (=> b!6903639 (= e!4157279 (and tp!1900753 tp!1900752))))

(declare-fun b!6903640 () Bool)

(declare-fun tp!1900750 () Bool)

(assert (=> b!6903640 (= e!4157279 tp!1900750)))

(declare-fun b!6903638 () Bool)

(assert (=> b!6903638 (= e!4157279 tp_is_empty!42963)))

(assert (=> b!6903043 (= tp!1900577 e!4157279)))

(assert (= (and b!6903043 ((_ is ElementMatch!16869) (regOne!34251 r2!6280))) b!6903638))

(assert (= (and b!6903043 ((_ is Concat!25714) (regOne!34251 r2!6280))) b!6903639))

(assert (= (and b!6903043 ((_ is Star!16869) (regOne!34251 r2!6280))) b!6903640))

(assert (= (and b!6903043 ((_ is Union!16869) (regOne!34251 r2!6280))) b!6903641))

(declare-fun b!6903645 () Bool)

(declare-fun e!4157280 () Bool)

(declare-fun tp!1900759 () Bool)

(declare-fun tp!1900756 () Bool)

(assert (=> b!6903645 (= e!4157280 (and tp!1900759 tp!1900756))))

(declare-fun b!6903643 () Bool)

(declare-fun tp!1900758 () Bool)

(declare-fun tp!1900757 () Bool)

(assert (=> b!6903643 (= e!4157280 (and tp!1900758 tp!1900757))))

(declare-fun b!6903644 () Bool)

(declare-fun tp!1900755 () Bool)

(assert (=> b!6903644 (= e!4157280 tp!1900755)))

(declare-fun b!6903642 () Bool)

(assert (=> b!6903642 (= e!4157280 tp_is_empty!42963)))

(assert (=> b!6903043 (= tp!1900578 e!4157280)))

(assert (= (and b!6903043 ((_ is ElementMatch!16869) (regTwo!34251 r2!6280))) b!6903642))

(assert (= (and b!6903043 ((_ is Concat!25714) (regTwo!34251 r2!6280))) b!6903643))

(assert (= (and b!6903043 ((_ is Star!16869) (regTwo!34251 r2!6280))) b!6903644))

(assert (= (and b!6903043 ((_ is Union!16869) (regTwo!34251 r2!6280))) b!6903645))

(check-sat (not b!6903567) (not b!6903451) (not b!6903625) (not d!2162382) (not b!6903332) (not b!6903635) (not b!6903488) (not b!6903575) (not b!6903454) (not bm!627773) (not b!6903583) (not d!2162376) (not b!6903455) (not bm!627732) (not bm!627767) (not b!6903576) (not bm!627766) (not b!6903132) (not b!6903173) (not b!6903628) (not d!2162386) (not b!6903631) (not b!6903645) (not d!2162344) (not b!6903505) (not b!6903639) (not d!2162388) (not bm!627775) (not b!6903560) (not b!6903592) (not b!6903584) (not b!6903373) (not b!6903613) (not b!6903559) (not bm!627747) (not bm!627776) (not b!6903637) (not b!6903131) (not d!2162354) (not b!6903636) (not b!6903558) (not b!6903453) (not b!6903621) (not b!6903582) (not b!6903366) (not b!6903619) (not b!6903617) (not b!6903371) (not b!6903632) (not b!6903130) (not d!2162384) (not b!6903620) (not b!6903590) (not b!6903458) (not bm!627772) (not b!6903125) (not b!6903369) (not b!6903641) (not b!6903568) (not b!6903633) (not b!6903174) (not b!6903623) (not b!6903606) (not b!6903172) (not d!2162380) (not b!6903608) (not b!6903260) (not b!6903171) (not b!6903644) (not b!6903598) (not b!6903370) (not bm!627761) (not b!6903170) (not b!6903271) (not bm!627762) (not d!2162356) (not b!6903129) (not b!6903624) (not b!6903167) (not b!6903267) (not d!2162378) (not bm!627746) (not b!6903448) (not b!6903607) (not b!6903629) (not d!2162404) (not b!6903566) (not b!6903462) (not bm!627741) (not b!6903616) (not b!6903574) tp_is_empty!42963 (not b!6903450) (not bm!627731) (not b!6903627) (not b!6903591) (not b!6903640) (not b!6903372) (not bm!627740) (not b!6903256) (not b!6903615) (not b!6903599) (not b!6903600) (not bm!627760) (not b!6903128) (not b!6903643) (not d!2162346))
(check-sat)
