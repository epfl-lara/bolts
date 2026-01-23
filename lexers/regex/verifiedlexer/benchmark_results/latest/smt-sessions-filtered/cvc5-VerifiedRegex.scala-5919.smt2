; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!289786 () Bool)

(assert start!289786)

(declare-fun b!3007946 () Bool)

(assert (=> b!3007946 true))

(assert (=> b!3007946 true))

(assert (=> b!3007946 true))

(declare-fun lambda!112510 () Int)

(declare-fun lambda!112509 () Int)

(assert (=> b!3007946 (not (= lambda!112510 lambda!112509))))

(assert (=> b!3007946 true))

(assert (=> b!3007946 true))

(assert (=> b!3007946 true))

(declare-fun b!3007942 () Bool)

(declare-fun res!1239637 () Bool)

(declare-fun e!1888903 () Bool)

(assert (=> b!3007942 (=> res!1239637 e!1888903)))

(declare-datatypes ((C!18962 0))(
  ( (C!18963 (val!11517 Int)) )
))
(declare-datatypes ((Regex!9388 0))(
  ( (ElementMatch!9388 (c!495320 C!18962)) (Concat!14709 (regOne!19288 Regex!9388) (regTwo!19288 Regex!9388)) (EmptyExpr!9388) (Star!9388 (reg!9717 Regex!9388)) (EmptyLang!9388) (Union!9388 (regOne!19289 Regex!9388) (regTwo!19289 Regex!9388)) )
))
(declare-fun lt!1043340 () Regex!9388)

(declare-datatypes ((List!35253 0))(
  ( (Nil!35129) (Cons!35129 (h!40549 C!18962) (t!234318 List!35253)) )
))
(declare-datatypes ((tuple2!34070 0))(
  ( (tuple2!34071 (_1!20167 List!35253) (_2!20167 List!35253)) )
))
(declare-fun lt!1043343 () tuple2!34070)

(declare-fun matchR!4270 (Regex!9388 List!35253) Bool)

(assert (=> b!3007942 (= res!1239637 (not (matchR!4270 lt!1043340 (_2!20167 lt!1043343))))))

(declare-fun b!3007943 () Bool)

(declare-fun e!1888902 () Bool)

(declare-fun e!1888906 () Bool)

(assert (=> b!3007943 (= e!1888902 e!1888906)))

(declare-fun res!1239640 () Bool)

(assert (=> b!3007943 (=> res!1239640 e!1888906)))

(declare-fun lt!1043345 () Regex!9388)

(declare-fun isEmptyLang!478 (Regex!9388) Bool)

(assert (=> b!3007943 (= res!1239640 (isEmptyLang!478 lt!1043345))))

(declare-fun r!17423 () Regex!9388)

(declare-fun simplify!379 (Regex!9388) Regex!9388)

(assert (=> b!3007943 (= lt!1043345 (simplify!379 (reg!9717 r!17423)))))

(declare-fun b!3007944 () Bool)

(declare-fun e!1888905 () Bool)

(declare-fun e!1888907 () Bool)

(assert (=> b!3007944 (= e!1888905 e!1888907)))

(declare-fun res!1239642 () Bool)

(assert (=> b!3007944 (=> res!1239642 e!1888907)))

(declare-fun s!11993 () List!35253)

(declare-fun isEmpty!19412 (List!35253) Bool)

(assert (=> b!3007944 (= res!1239642 (isEmpty!19412 s!11993))))

(declare-fun matchRSpec!1525 (Regex!9388 List!35253) Bool)

(assert (=> b!3007944 (matchRSpec!1525 lt!1043340 s!11993)))

(declare-datatypes ((Unit!49191 0))(
  ( (Unit!49192) )
))
(declare-fun lt!1043338 () Unit!49191)

(declare-fun mainMatchTheorem!1525 (Regex!9388 List!35253) Unit!49191)

(assert (=> b!3007944 (= lt!1043338 (mainMatchTheorem!1525 lt!1043340 s!11993))))

(declare-fun b!3007945 () Bool)

(declare-fun e!1888910 () Bool)

(declare-fun tp!955102 () Bool)

(assert (=> b!3007945 (= e!1888910 tp!955102)))

(declare-fun e!1888904 () Bool)

(assert (=> b!3007946 (= e!1888907 e!1888904)))

(declare-fun res!1239633 () Bool)

(assert (=> b!3007946 (=> res!1239633 e!1888904)))

(declare-fun lt!1043341 () Bool)

(assert (=> b!3007946 (= res!1239633 (not lt!1043341))))

(declare-fun Exists!1657 (Int) Bool)

(assert (=> b!3007946 (= (Exists!1657 lambda!112509) (Exists!1657 lambda!112510))))

(declare-fun lt!1043347 () Unit!49191)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!323 (Regex!9388 List!35253) Unit!49191)

(assert (=> b!3007946 (= lt!1043347 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!323 lt!1043345 s!11993))))

(assert (=> b!3007946 (= lt!1043341 (Exists!1657 lambda!112509))))

(declare-datatypes ((Option!6767 0))(
  ( (None!6766) (Some!6766 (v!34900 tuple2!34070)) )
))
(declare-fun lt!1043335 () Option!6767)

(declare-fun isDefined!5318 (Option!6767) Bool)

(assert (=> b!3007946 (= lt!1043341 (isDefined!5318 lt!1043335))))

(declare-fun findConcatSeparation!1161 (Regex!9388 Regex!9388 List!35253 List!35253 List!35253) Option!6767)

(assert (=> b!3007946 (= lt!1043335 (findConcatSeparation!1161 lt!1043345 lt!1043340 Nil!35129 s!11993 s!11993))))

(declare-fun lt!1043337 () Unit!49191)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!939 (Regex!9388 Regex!9388 List!35253) Unit!49191)

(assert (=> b!3007946 (= lt!1043337 (lemmaFindConcatSeparationEquivalentToExists!939 lt!1043345 lt!1043340 s!11993))))

(declare-fun b!3007947 () Bool)

(declare-fun tp_is_empty!16339 () Bool)

(assert (=> b!3007947 (= e!1888910 tp_is_empty!16339)))

(declare-fun b!3007948 () Bool)

(assert (=> b!3007948 (= e!1888904 e!1888903)))

(declare-fun res!1239636 () Bool)

(assert (=> b!3007948 (=> res!1239636 e!1888903)))

(assert (=> b!3007948 (= res!1239636 (not (matchR!4270 lt!1043345 (_1!20167 lt!1043343))))))

(declare-fun get!10929 (Option!6767) tuple2!34070)

(assert (=> b!3007948 (= lt!1043343 (get!10929 lt!1043335))))

(declare-fun b!3007949 () Bool)

(declare-fun tp!955103 () Bool)

(declare-fun tp!955100 () Bool)

(assert (=> b!3007949 (= e!1888910 (and tp!955103 tp!955100))))

(declare-fun b!3007950 () Bool)

(declare-fun e!1888912 () Bool)

(assert (=> b!3007950 (= e!1888903 e!1888912)))

(declare-fun res!1239641 () Bool)

(assert (=> b!3007950 (=> res!1239641 e!1888912)))

(declare-fun lt!1043339 () Int)

(declare-fun lt!1043342 () Int)

(assert (=> b!3007950 (= res!1239641 (not (= lt!1043339 lt!1043342)))))

(declare-fun size!26518 (List!35253) Int)

(assert (=> b!3007950 (= lt!1043342 (size!26518 s!11993))))

(assert (=> b!3007950 (= lt!1043339 (size!26518 (_2!20167 lt!1043343)))))

(assert (=> b!3007950 (matchR!4270 (reg!9717 r!17423) (_1!20167 lt!1043343))))

(declare-fun lt!1043346 () Unit!49191)

(declare-fun lemmaSimplifySound!229 (Regex!9388 List!35253) Unit!49191)

(assert (=> b!3007950 (= lt!1043346 (lemmaSimplifySound!229 (reg!9717 r!17423) (_1!20167 lt!1043343)))))

(declare-fun res!1239638 () Bool)

(declare-fun e!1888908 () Bool)

(assert (=> start!289786 (=> (not res!1239638) (not e!1888908))))

(declare-fun validRegex!4121 (Regex!9388) Bool)

(assert (=> start!289786 (= res!1239638 (validRegex!4121 r!17423))))

(assert (=> start!289786 e!1888908))

(assert (=> start!289786 e!1888910))

(declare-fun e!1888909 () Bool)

(assert (=> start!289786 e!1888909))

(declare-fun b!3007951 () Bool)

(assert (=> b!3007951 (= e!1888906 e!1888905)))

(declare-fun res!1239643 () Bool)

(assert (=> b!3007951 (=> res!1239643 e!1888905)))

(assert (=> b!3007951 (= res!1239643 (not (matchR!4270 lt!1043340 s!11993)))))

(assert (=> b!3007951 (= lt!1043340 (Star!9388 lt!1043345))))

(declare-fun b!3007952 () Bool)

(declare-fun res!1239639 () Bool)

(declare-fun e!1888911 () Bool)

(assert (=> b!3007952 (=> res!1239639 e!1888911)))

(assert (=> b!3007952 (= res!1239639 (not (isEmpty!19412 (_1!20167 lt!1043343))))))

(declare-fun b!3007953 () Bool)

(declare-fun nullable!3043 (Regex!9388) Bool)

(assert (=> b!3007953 (= e!1888911 (nullable!3043 (reg!9717 r!17423)))))

(assert (=> b!3007953 (matchRSpec!1525 (reg!9717 r!17423) (_1!20167 lt!1043343))))

(declare-fun lt!1043334 () Unit!49191)

(assert (=> b!3007953 (= lt!1043334 (mainMatchTheorem!1525 (reg!9717 r!17423) (_1!20167 lt!1043343)))))

(declare-fun b!3007954 () Bool)

(declare-fun res!1239635 () Bool)

(assert (=> b!3007954 (=> res!1239635 e!1888912)))

(declare-fun ++!8416 (List!35253 List!35253) List!35253)

(assert (=> b!3007954 (= res!1239635 (not (= (++!8416 (_1!20167 lt!1043343) (_2!20167 lt!1043343)) s!11993)))))

(declare-fun b!3007955 () Bool)

(declare-fun tp!955098 () Bool)

(assert (=> b!3007955 (= e!1888909 (and tp_is_empty!16339 tp!955098))))

(declare-fun b!3007956 () Bool)

(assert (=> b!3007956 (= e!1888908 (not e!1888902))))

(declare-fun res!1239644 () Bool)

(assert (=> b!3007956 (=> res!1239644 e!1888902)))

(declare-fun lt!1043333 () Bool)

(assert (=> b!3007956 (= res!1239644 (or lt!1043333 (is-Concat!14709 r!17423) (is-Union!9388 r!17423) (not (is-Star!9388 r!17423))))))

(assert (=> b!3007956 (= lt!1043333 (matchRSpec!1525 r!17423 s!11993))))

(assert (=> b!3007956 (= lt!1043333 (matchR!4270 r!17423 s!11993))))

(declare-fun lt!1043336 () Unit!49191)

(assert (=> b!3007956 (= lt!1043336 (mainMatchTheorem!1525 r!17423 s!11993))))

(declare-fun b!3007957 () Bool)

(assert (=> b!3007957 (= e!1888912 e!1888911)))

(declare-fun res!1239634 () Bool)

(assert (=> b!3007957 (=> res!1239634 e!1888911)))

(declare-fun lt!1043344 () Int)

(assert (=> b!3007957 (= res!1239634 (or (not (= (+ lt!1043344 lt!1043339) lt!1043342)) (not (= lt!1043344 0))))))

(assert (=> b!3007957 (= lt!1043344 (size!26518 (_1!20167 lt!1043343)))))

(declare-fun b!3007958 () Bool)

(declare-fun tp!955101 () Bool)

(declare-fun tp!955099 () Bool)

(assert (=> b!3007958 (= e!1888910 (and tp!955101 tp!955099))))

(assert (= (and start!289786 res!1239638) b!3007956))

(assert (= (and b!3007956 (not res!1239644)) b!3007943))

(assert (= (and b!3007943 (not res!1239640)) b!3007951))

(assert (= (and b!3007951 (not res!1239643)) b!3007944))

(assert (= (and b!3007944 (not res!1239642)) b!3007946))

(assert (= (and b!3007946 (not res!1239633)) b!3007948))

(assert (= (and b!3007948 (not res!1239636)) b!3007942))

(assert (= (and b!3007942 (not res!1239637)) b!3007950))

(assert (= (and b!3007950 (not res!1239641)) b!3007954))

(assert (= (and b!3007954 (not res!1239635)) b!3007957))

(assert (= (and b!3007957 (not res!1239634)) b!3007952))

(assert (= (and b!3007952 (not res!1239639)) b!3007953))

(assert (= (and start!289786 (is-ElementMatch!9388 r!17423)) b!3007947))

(assert (= (and start!289786 (is-Concat!14709 r!17423)) b!3007958))

(assert (= (and start!289786 (is-Star!9388 r!17423)) b!3007945))

(assert (= (and start!289786 (is-Union!9388 r!17423)) b!3007949))

(assert (= (and start!289786 (is-Cons!35129 s!11993)) b!3007955))

(declare-fun m!3355757 () Bool)

(assert (=> b!3007954 m!3355757))

(declare-fun m!3355759 () Bool)

(assert (=> b!3007942 m!3355759))

(declare-fun m!3355761 () Bool)

(assert (=> b!3007957 m!3355761))

(declare-fun m!3355763 () Bool)

(assert (=> b!3007944 m!3355763))

(declare-fun m!3355765 () Bool)

(assert (=> b!3007944 m!3355765))

(declare-fun m!3355767 () Bool)

(assert (=> b!3007944 m!3355767))

(declare-fun m!3355769 () Bool)

(assert (=> b!3007946 m!3355769))

(declare-fun m!3355771 () Bool)

(assert (=> b!3007946 m!3355771))

(declare-fun m!3355773 () Bool)

(assert (=> b!3007946 m!3355773))

(declare-fun m!3355775 () Bool)

(assert (=> b!3007946 m!3355775))

(declare-fun m!3355777 () Bool)

(assert (=> b!3007946 m!3355777))

(assert (=> b!3007946 m!3355771))

(declare-fun m!3355779 () Bool)

(assert (=> b!3007946 m!3355779))

(declare-fun m!3355781 () Bool)

(assert (=> b!3007951 m!3355781))

(declare-fun m!3355783 () Bool)

(assert (=> b!3007953 m!3355783))

(declare-fun m!3355785 () Bool)

(assert (=> b!3007953 m!3355785))

(declare-fun m!3355787 () Bool)

(assert (=> b!3007953 m!3355787))

(declare-fun m!3355789 () Bool)

(assert (=> b!3007948 m!3355789))

(declare-fun m!3355791 () Bool)

(assert (=> b!3007948 m!3355791))

(declare-fun m!3355793 () Bool)

(assert (=> b!3007952 m!3355793))

(declare-fun m!3355795 () Bool)

(assert (=> b!3007950 m!3355795))

(declare-fun m!3355797 () Bool)

(assert (=> b!3007950 m!3355797))

(declare-fun m!3355799 () Bool)

(assert (=> b!3007950 m!3355799))

(declare-fun m!3355801 () Bool)

(assert (=> b!3007950 m!3355801))

(declare-fun m!3355803 () Bool)

(assert (=> start!289786 m!3355803))

(declare-fun m!3355805 () Bool)

(assert (=> b!3007943 m!3355805))

(declare-fun m!3355807 () Bool)

(assert (=> b!3007943 m!3355807))

(declare-fun m!3355809 () Bool)

(assert (=> b!3007956 m!3355809))

(declare-fun m!3355811 () Bool)

(assert (=> b!3007956 m!3355811))

(declare-fun m!3355813 () Bool)

(assert (=> b!3007956 m!3355813))

(push 1)

(assert tp_is_empty!16339)

(assert (not b!3007957))

(assert (not b!3007956))

(assert (not b!3007946))

(assert (not b!3007958))

(assert (not b!3007950))

(assert (not b!3007942))

(assert (not b!3007943))

(assert (not start!289786))

(assert (not b!3007944))

(assert (not b!3007953))

(assert (not b!3007945))

(assert (not b!3007949))

(assert (not b!3007954))

(assert (not b!3007952))

(assert (not b!3007948))

(assert (not b!3007955))

(assert (not b!3007951))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!3008068 () Bool)

(declare-fun e!1888973 () Bool)

(declare-fun derivativeStep!2641 (Regex!9388 C!18962) Regex!9388)

(declare-fun head!6700 (List!35253) C!18962)

(declare-fun tail!4926 (List!35253) List!35253)

(assert (=> b!3008068 (= e!1888973 (matchR!4270 (derivativeStep!2641 lt!1043345 (head!6700 (_1!20167 lt!1043343))) (tail!4926 (_1!20167 lt!1043343))))))

(declare-fun b!3008069 () Bool)

(declare-fun e!1888975 () Bool)

(declare-fun lt!1043399 () Bool)

(assert (=> b!3008069 (= e!1888975 (not lt!1043399))))

(declare-fun b!3008070 () Bool)

(declare-fun e!1888974 () Bool)

(assert (=> b!3008070 (= e!1888974 e!1888975)))

(declare-fun c!495333 () Bool)

(assert (=> b!3008070 (= c!495333 (is-EmptyLang!9388 lt!1043345))))

(declare-fun b!3008071 () Bool)

(assert (=> b!3008071 (= e!1888973 (nullable!3043 lt!1043345))))

(declare-fun b!3008072 () Bool)

(declare-fun e!1888970 () Bool)

(assert (=> b!3008072 (= e!1888970 (not (= (head!6700 (_1!20167 lt!1043343)) (c!495320 lt!1043345))))))

(declare-fun b!3008073 () Bool)

(declare-fun call!202469 () Bool)

(assert (=> b!3008073 (= e!1888974 (= lt!1043399 call!202469))))

(declare-fun b!3008074 () Bool)

(declare-fun res!1239718 () Bool)

(declare-fun e!1888976 () Bool)

(assert (=> b!3008074 (=> (not res!1239718) (not e!1888976))))

(assert (=> b!3008074 (= res!1239718 (isEmpty!19412 (tail!4926 (_1!20167 lt!1043343))))))

(declare-fun b!3008075 () Bool)

(declare-fun res!1239712 () Bool)

(assert (=> b!3008075 (=> (not res!1239712) (not e!1888976))))

(assert (=> b!3008075 (= res!1239712 (not call!202469))))

(declare-fun b!3008077 () Bool)

(declare-fun res!1239716 () Bool)

(declare-fun e!1888972 () Bool)

(assert (=> b!3008077 (=> res!1239716 e!1888972)))

(assert (=> b!3008077 (= res!1239716 e!1888976)))

(declare-fun res!1239717 () Bool)

(assert (=> b!3008077 (=> (not res!1239717) (not e!1888976))))

(assert (=> b!3008077 (= res!1239717 lt!1043399)))

(declare-fun b!3008078 () Bool)

(declare-fun res!1239714 () Bool)

(assert (=> b!3008078 (=> res!1239714 e!1888972)))

(assert (=> b!3008078 (= res!1239714 (not (is-ElementMatch!9388 lt!1043345)))))

(assert (=> b!3008078 (= e!1888975 e!1888972)))

(declare-fun b!3008079 () Bool)

(assert (=> b!3008079 (= e!1888976 (= (head!6700 (_1!20167 lt!1043343)) (c!495320 lt!1043345)))))

(declare-fun bm!202464 () Bool)

(assert (=> bm!202464 (= call!202469 (isEmpty!19412 (_1!20167 lt!1043343)))))

(declare-fun b!3008080 () Bool)

(declare-fun res!1239715 () Bool)

(assert (=> b!3008080 (=> res!1239715 e!1888970)))

(assert (=> b!3008080 (= res!1239715 (not (isEmpty!19412 (tail!4926 (_1!20167 lt!1043343)))))))

(declare-fun b!3008081 () Bool)

(declare-fun e!1888971 () Bool)

(assert (=> b!3008081 (= e!1888972 e!1888971)))

(declare-fun res!1239713 () Bool)

(assert (=> b!3008081 (=> (not res!1239713) (not e!1888971))))

(assert (=> b!3008081 (= res!1239713 (not lt!1043399))))

(declare-fun b!3008076 () Bool)

(assert (=> b!3008076 (= e!1888971 e!1888970)))

(declare-fun res!1239711 () Bool)

(assert (=> b!3008076 (=> res!1239711 e!1888970)))

(assert (=> b!3008076 (= res!1239711 call!202469)))

(declare-fun d!847216 () Bool)

(assert (=> d!847216 e!1888974))

(declare-fun c!495334 () Bool)

(assert (=> d!847216 (= c!495334 (is-EmptyExpr!9388 lt!1043345))))

(assert (=> d!847216 (= lt!1043399 e!1888973)))

(declare-fun c!495332 () Bool)

(assert (=> d!847216 (= c!495332 (isEmpty!19412 (_1!20167 lt!1043343)))))

(assert (=> d!847216 (validRegex!4121 lt!1043345)))

(assert (=> d!847216 (= (matchR!4270 lt!1043345 (_1!20167 lt!1043343)) lt!1043399)))

(assert (= (and d!847216 c!495332) b!3008071))

(assert (= (and d!847216 (not c!495332)) b!3008068))

(assert (= (and d!847216 c!495334) b!3008073))

(assert (= (and d!847216 (not c!495334)) b!3008070))

(assert (= (and b!3008070 c!495333) b!3008069))

(assert (= (and b!3008070 (not c!495333)) b!3008078))

(assert (= (and b!3008078 (not res!1239714)) b!3008077))

(assert (= (and b!3008077 res!1239717) b!3008075))

(assert (= (and b!3008075 res!1239712) b!3008074))

(assert (= (and b!3008074 res!1239718) b!3008079))

(assert (= (and b!3008077 (not res!1239716)) b!3008081))

(assert (= (and b!3008081 res!1239713) b!3008076))

(assert (= (and b!3008076 (not res!1239711)) b!3008080))

(assert (= (and b!3008080 (not res!1239715)) b!3008072))

(assert (= (or b!3008073 b!3008075 b!3008076) bm!202464))

(declare-fun m!3355877 () Bool)

(assert (=> b!3008071 m!3355877))

(assert (=> d!847216 m!3355793))

(declare-fun m!3355879 () Bool)

(assert (=> d!847216 m!3355879))

(declare-fun m!3355881 () Bool)

(assert (=> b!3008074 m!3355881))

(assert (=> b!3008074 m!3355881))

(declare-fun m!3355883 () Bool)

(assert (=> b!3008074 m!3355883))

(assert (=> b!3008080 m!3355881))

(assert (=> b!3008080 m!3355881))

(assert (=> b!3008080 m!3355883))

(declare-fun m!3355885 () Bool)

(assert (=> b!3008068 m!3355885))

(assert (=> b!3008068 m!3355885))

(declare-fun m!3355887 () Bool)

(assert (=> b!3008068 m!3355887))

(assert (=> b!3008068 m!3355881))

(assert (=> b!3008068 m!3355887))

(assert (=> b!3008068 m!3355881))

(declare-fun m!3355889 () Bool)

(assert (=> b!3008068 m!3355889))

(assert (=> b!3008072 m!3355885))

(assert (=> b!3008079 m!3355885))

(assert (=> bm!202464 m!3355793))

(assert (=> b!3007948 d!847216))

(declare-fun d!847218 () Bool)

(assert (=> d!847218 (= (get!10929 lt!1043335) (v!34900 lt!1043335))))

(assert (=> b!3007948 d!847218))

(declare-fun bs!529078 () Bool)

(declare-fun d!847220 () Bool)

(assert (= bs!529078 (and d!847220 b!3007946)))

(declare-fun lambda!112521 () Int)

(assert (=> bs!529078 (= lambda!112521 lambda!112509)))

(assert (=> bs!529078 (not (= lambda!112521 lambda!112510))))

(assert (=> d!847220 true))

(assert (=> d!847220 true))

(assert (=> d!847220 true))

(assert (=> d!847220 (= (isDefined!5318 (findConcatSeparation!1161 lt!1043345 lt!1043340 Nil!35129 s!11993 s!11993)) (Exists!1657 lambda!112521))))

(declare-fun lt!1043404 () Unit!49191)

(declare-fun choose!17856 (Regex!9388 Regex!9388 List!35253) Unit!49191)

(assert (=> d!847220 (= lt!1043404 (choose!17856 lt!1043345 lt!1043340 s!11993))))

(assert (=> d!847220 (validRegex!4121 lt!1043345)))

(assert (=> d!847220 (= (lemmaFindConcatSeparationEquivalentToExists!939 lt!1043345 lt!1043340 s!11993) lt!1043404)))

(declare-fun bs!529079 () Bool)

(assert (= bs!529079 d!847220))

(assert (=> bs!529079 m!3355777))

(assert (=> bs!529079 m!3355777))

(declare-fun m!3355891 () Bool)

(assert (=> bs!529079 m!3355891))

(declare-fun m!3355893 () Bool)

(assert (=> bs!529079 m!3355893))

(assert (=> bs!529079 m!3355879))

(declare-fun m!3355895 () Bool)

(assert (=> bs!529079 m!3355895))

(assert (=> b!3007946 d!847220))

(declare-fun b!3008146 () Bool)

(declare-fun e!1889012 () Option!6767)

(assert (=> b!3008146 (= e!1889012 None!6766)))

(declare-fun b!3008147 () Bool)

(declare-fun e!1889013 () Option!6767)

(assert (=> b!3008147 (= e!1889013 (Some!6766 (tuple2!34071 Nil!35129 s!11993)))))

(declare-fun b!3008148 () Bool)

(declare-fun e!1889011 () Bool)

(declare-fun lt!1043417 () Option!6767)

(assert (=> b!3008148 (= e!1889011 (not (isDefined!5318 lt!1043417)))))

(declare-fun b!3008149 () Bool)

(declare-fun lt!1043416 () Unit!49191)

(declare-fun lt!1043415 () Unit!49191)

(assert (=> b!3008149 (= lt!1043416 lt!1043415)))

(assert (=> b!3008149 (= (++!8416 (++!8416 Nil!35129 (Cons!35129 (h!40549 s!11993) Nil!35129)) (t!234318 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1023 (List!35253 C!18962 List!35253 List!35253) Unit!49191)

(assert (=> b!3008149 (= lt!1043415 (lemmaMoveElementToOtherListKeepsConcatEq!1023 Nil!35129 (h!40549 s!11993) (t!234318 s!11993) s!11993))))

(assert (=> b!3008149 (= e!1889012 (findConcatSeparation!1161 lt!1043345 lt!1043340 (++!8416 Nil!35129 (Cons!35129 (h!40549 s!11993) Nil!35129)) (t!234318 s!11993) s!11993))))

(declare-fun b!3008150 () Bool)

(declare-fun e!1889014 () Bool)

(assert (=> b!3008150 (= e!1889014 (matchR!4270 lt!1043340 s!11993))))

(declare-fun b!3008151 () Bool)

(assert (=> b!3008151 (= e!1889013 e!1889012)))

(declare-fun c!495348 () Bool)

(assert (=> b!3008151 (= c!495348 (is-Nil!35129 s!11993))))

(declare-fun b!3008152 () Bool)

(declare-fun e!1889010 () Bool)

(assert (=> b!3008152 (= e!1889010 (= (++!8416 (_1!20167 (get!10929 lt!1043417)) (_2!20167 (get!10929 lt!1043417))) s!11993))))

(declare-fun d!847222 () Bool)

(assert (=> d!847222 e!1889011))

(declare-fun res!1239757 () Bool)

(assert (=> d!847222 (=> res!1239757 e!1889011)))

(assert (=> d!847222 (= res!1239757 e!1889010)))

(declare-fun res!1239759 () Bool)

(assert (=> d!847222 (=> (not res!1239759) (not e!1889010))))

(assert (=> d!847222 (= res!1239759 (isDefined!5318 lt!1043417))))

(assert (=> d!847222 (= lt!1043417 e!1889013)))

(declare-fun c!495349 () Bool)

(assert (=> d!847222 (= c!495349 e!1889014)))

(declare-fun res!1239761 () Bool)

(assert (=> d!847222 (=> (not res!1239761) (not e!1889014))))

(assert (=> d!847222 (= res!1239761 (matchR!4270 lt!1043345 Nil!35129))))

(assert (=> d!847222 (validRegex!4121 lt!1043345)))

(assert (=> d!847222 (= (findConcatSeparation!1161 lt!1043345 lt!1043340 Nil!35129 s!11993 s!11993) lt!1043417)))

(declare-fun b!3008153 () Bool)

(declare-fun res!1239760 () Bool)

(assert (=> b!3008153 (=> (not res!1239760) (not e!1889010))))

(assert (=> b!3008153 (= res!1239760 (matchR!4270 lt!1043340 (_2!20167 (get!10929 lt!1043417))))))

(declare-fun b!3008154 () Bool)

(declare-fun res!1239758 () Bool)

(assert (=> b!3008154 (=> (not res!1239758) (not e!1889010))))

(assert (=> b!3008154 (= res!1239758 (matchR!4270 lt!1043345 (_1!20167 (get!10929 lt!1043417))))))

(assert (= (and d!847222 res!1239761) b!3008150))

(assert (= (and d!847222 c!495349) b!3008147))

(assert (= (and d!847222 (not c!495349)) b!3008151))

(assert (= (and b!3008151 c!495348) b!3008146))

(assert (= (and b!3008151 (not c!495348)) b!3008149))

(assert (= (and d!847222 res!1239759) b!3008154))

(assert (= (and b!3008154 res!1239758) b!3008153))

(assert (= (and b!3008153 res!1239760) b!3008152))

(assert (= (and d!847222 (not res!1239757)) b!3008148))

(assert (=> b!3008150 m!3355781))

(declare-fun m!3355913 () Bool)

(assert (=> b!3008153 m!3355913))

(declare-fun m!3355915 () Bool)

(assert (=> b!3008153 m!3355915))

(declare-fun m!3355917 () Bool)

(assert (=> b!3008149 m!3355917))

(assert (=> b!3008149 m!3355917))

(declare-fun m!3355919 () Bool)

(assert (=> b!3008149 m!3355919))

(declare-fun m!3355921 () Bool)

(assert (=> b!3008149 m!3355921))

(assert (=> b!3008149 m!3355917))

(declare-fun m!3355923 () Bool)

(assert (=> b!3008149 m!3355923))

(assert (=> b!3008154 m!3355913))

(declare-fun m!3355925 () Bool)

(assert (=> b!3008154 m!3355925))

(declare-fun m!3355927 () Bool)

(assert (=> d!847222 m!3355927))

(declare-fun m!3355929 () Bool)

(assert (=> d!847222 m!3355929))

(assert (=> d!847222 m!3355879))

(assert (=> b!3008148 m!3355927))

(assert (=> b!3008152 m!3355913))

(declare-fun m!3355931 () Bool)

(assert (=> b!3008152 m!3355931))

(assert (=> b!3007946 d!847222))

(declare-fun d!847228 () Bool)

(declare-fun choose!17857 (Int) Bool)

(assert (=> d!847228 (= (Exists!1657 lambda!112509) (choose!17857 lambda!112509))))

(declare-fun bs!529081 () Bool)

(assert (= bs!529081 d!847228))

(declare-fun m!3355943 () Bool)

(assert (=> bs!529081 m!3355943))

(assert (=> b!3007946 d!847228))

(declare-fun d!847230 () Bool)

(declare-fun isEmpty!19414 (Option!6767) Bool)

(assert (=> d!847230 (= (isDefined!5318 lt!1043335) (not (isEmpty!19414 lt!1043335)))))

(declare-fun bs!529082 () Bool)

(assert (= bs!529082 d!847230))

(declare-fun m!3355951 () Bool)

(assert (=> bs!529082 m!3355951))

(assert (=> b!3007946 d!847230))

(declare-fun d!847234 () Bool)

(assert (=> d!847234 (= (Exists!1657 lambda!112510) (choose!17857 lambda!112510))))

(declare-fun bs!529083 () Bool)

(assert (= bs!529083 d!847234))

(declare-fun m!3355953 () Bool)

(assert (=> bs!529083 m!3355953))

(assert (=> b!3007946 d!847234))

(declare-fun bs!529084 () Bool)

(declare-fun d!847236 () Bool)

(assert (= bs!529084 (and d!847236 b!3007946)))

(declare-fun lambda!112526 () Int)

(assert (=> bs!529084 (= (= (Star!9388 lt!1043345) lt!1043340) (= lambda!112526 lambda!112509))))

(assert (=> bs!529084 (not (= lambda!112526 lambda!112510))))

(declare-fun bs!529085 () Bool)

(assert (= bs!529085 (and d!847236 d!847220)))

(assert (=> bs!529085 (= (= (Star!9388 lt!1043345) lt!1043340) (= lambda!112526 lambda!112521))))

(assert (=> d!847236 true))

(assert (=> d!847236 true))

(declare-fun lambda!112527 () Int)

(assert (=> bs!529084 (not (= lambda!112527 lambda!112509))))

(assert (=> bs!529084 (= (= (Star!9388 lt!1043345) lt!1043340) (= lambda!112527 lambda!112510))))

(assert (=> bs!529085 (not (= lambda!112527 lambda!112521))))

(declare-fun bs!529086 () Bool)

(assert (= bs!529086 d!847236))

(assert (=> bs!529086 (not (= lambda!112527 lambda!112526))))

(assert (=> d!847236 true))

(assert (=> d!847236 true))

(assert (=> d!847236 (= (Exists!1657 lambda!112526) (Exists!1657 lambda!112527))))

(declare-fun lt!1043421 () Unit!49191)

(declare-fun choose!17858 (Regex!9388 List!35253) Unit!49191)

(assert (=> d!847236 (= lt!1043421 (choose!17858 lt!1043345 s!11993))))

(assert (=> d!847236 (validRegex!4121 lt!1043345)))

(assert (=> d!847236 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!323 lt!1043345 s!11993) lt!1043421)))

(declare-fun m!3355955 () Bool)

(assert (=> bs!529086 m!3355955))

(declare-fun m!3355957 () Bool)

(assert (=> bs!529086 m!3355957))

(declare-fun m!3355959 () Bool)

(assert (=> bs!529086 m!3355959))

(assert (=> bs!529086 m!3355879))

(assert (=> b!3007946 d!847236))

(declare-fun d!847240 () Bool)

(declare-fun lt!1043424 () Int)

(assert (=> d!847240 (>= lt!1043424 0)))

(declare-fun e!1889042 () Int)

(assert (=> d!847240 (= lt!1043424 e!1889042)))

(declare-fun c!495363 () Bool)

(assert (=> d!847240 (= c!495363 (is-Nil!35129 (_1!20167 lt!1043343)))))

(assert (=> d!847240 (= (size!26518 (_1!20167 lt!1043343)) lt!1043424)))

(declare-fun b!3008205 () Bool)

(assert (=> b!3008205 (= e!1889042 0)))

(declare-fun b!3008206 () Bool)

(assert (=> b!3008206 (= e!1889042 (+ 1 (size!26518 (t!234318 (_1!20167 lt!1043343)))))))

(assert (= (and d!847240 c!495363) b!3008205))

(assert (= (and d!847240 (not c!495363)) b!3008206))

(declare-fun m!3355961 () Bool)

(assert (=> b!3008206 m!3355961))

(assert (=> b!3007957 d!847240))

(declare-fun bs!529087 () Bool)

(declare-fun b!3008250 () Bool)

(assert (= bs!529087 (and b!3008250 b!3007946)))

(declare-fun lambda!112536 () Int)

(assert (=> bs!529087 (not (= lambda!112536 lambda!112509))))

(assert (=> bs!529087 (= (and (= (reg!9717 r!17423) lt!1043345) (= r!17423 lt!1043340)) (= lambda!112536 lambda!112510))))

(declare-fun bs!529088 () Bool)

(assert (= bs!529088 (and b!3008250 d!847236)))

(assert (=> bs!529088 (not (= lambda!112536 lambda!112526))))

(declare-fun bs!529089 () Bool)

(assert (= bs!529089 (and b!3008250 d!847220)))

(assert (=> bs!529089 (not (= lambda!112536 lambda!112521))))

(assert (=> bs!529088 (= (and (= (reg!9717 r!17423) lt!1043345) (= r!17423 (Star!9388 lt!1043345))) (= lambda!112536 lambda!112527))))

(assert (=> b!3008250 true))

(assert (=> b!3008250 true))

(declare-fun bs!529090 () Bool)

(declare-fun b!3008257 () Bool)

(assert (= bs!529090 (and b!3008257 b!3007946)))

(declare-fun lambda!112537 () Int)

(assert (=> bs!529090 (not (= lambda!112537 lambda!112509))))

(declare-fun bs!529091 () Bool)

(assert (= bs!529091 (and b!3008257 b!3008250)))

(assert (=> bs!529091 (not (= lambda!112537 lambda!112536))))

(assert (=> bs!529090 (not (= lambda!112537 lambda!112510))))

(declare-fun bs!529092 () Bool)

(assert (= bs!529092 (and b!3008257 d!847236)))

(assert (=> bs!529092 (not (= lambda!112537 lambda!112526))))

(declare-fun bs!529093 () Bool)

(assert (= bs!529093 (and b!3008257 d!847220)))

(assert (=> bs!529093 (not (= lambda!112537 lambda!112521))))

(assert (=> bs!529092 (not (= lambda!112537 lambda!112527))))

(assert (=> b!3008257 true))

(assert (=> b!3008257 true))

(declare-fun bm!202477 () Bool)

(declare-fun call!202482 () Bool)

(assert (=> bm!202477 (= call!202482 (isEmpty!19412 s!11993))))

(declare-fun b!3008249 () Bool)

(declare-fun c!495374 () Bool)

(assert (=> b!3008249 (= c!495374 (is-ElementMatch!9388 r!17423))))

(declare-fun e!1889067 () Bool)

(declare-fun e!1889069 () Bool)

(assert (=> b!3008249 (= e!1889067 e!1889069)))

(declare-fun e!1889065 () Bool)

(declare-fun call!202483 () Bool)

(assert (=> b!3008250 (= e!1889065 call!202483)))

(declare-fun b!3008251 () Bool)

(declare-fun e!1889070 () Bool)

(assert (=> b!3008251 (= e!1889070 e!1889067)))

(declare-fun res!1239812 () Bool)

(assert (=> b!3008251 (= res!1239812 (not (is-EmptyLang!9388 r!17423)))))

(assert (=> b!3008251 (=> (not res!1239812) (not e!1889067))))

(declare-fun d!847242 () Bool)

(declare-fun c!495375 () Bool)

(assert (=> d!847242 (= c!495375 (is-EmptyExpr!9388 r!17423))))

(assert (=> d!847242 (= (matchRSpec!1525 r!17423 s!11993) e!1889070)))

(declare-fun b!3008252 () Bool)

(declare-fun c!495372 () Bool)

(assert (=> b!3008252 (= c!495372 (is-Union!9388 r!17423))))

(declare-fun e!1889066 () Bool)

(assert (=> b!3008252 (= e!1889069 e!1889066)))

(declare-fun b!3008253 () Bool)

(declare-fun res!1239813 () Bool)

(assert (=> b!3008253 (=> res!1239813 e!1889065)))

(assert (=> b!3008253 (= res!1239813 call!202482)))

(declare-fun e!1889068 () Bool)

(assert (=> b!3008253 (= e!1889068 e!1889065)))

(declare-fun b!3008254 () Bool)

(assert (=> b!3008254 (= e!1889066 e!1889068)))

(declare-fun c!495373 () Bool)

(assert (=> b!3008254 (= c!495373 (is-Star!9388 r!17423))))

(declare-fun b!3008255 () Bool)

(declare-fun e!1889071 () Bool)

(assert (=> b!3008255 (= e!1889066 e!1889071)))

(declare-fun res!1239814 () Bool)

(assert (=> b!3008255 (= res!1239814 (matchRSpec!1525 (regOne!19289 r!17423) s!11993))))

(assert (=> b!3008255 (=> res!1239814 e!1889071)))

(declare-fun b!3008256 () Bool)

(assert (=> b!3008256 (= e!1889069 (= s!11993 (Cons!35129 (c!495320 r!17423) Nil!35129)))))

(declare-fun bm!202478 () Bool)

(assert (=> bm!202478 (= call!202483 (Exists!1657 (ite c!495373 lambda!112536 lambda!112537)))))

(assert (=> b!3008257 (= e!1889068 call!202483)))

(declare-fun b!3008258 () Bool)

(assert (=> b!3008258 (= e!1889070 call!202482)))

(declare-fun b!3008259 () Bool)

(assert (=> b!3008259 (= e!1889071 (matchRSpec!1525 (regTwo!19289 r!17423) s!11993))))

(assert (= (and d!847242 c!495375) b!3008258))

(assert (= (and d!847242 (not c!495375)) b!3008251))

(assert (= (and b!3008251 res!1239812) b!3008249))

(assert (= (and b!3008249 c!495374) b!3008256))

(assert (= (and b!3008249 (not c!495374)) b!3008252))

(assert (= (and b!3008252 c!495372) b!3008255))

(assert (= (and b!3008252 (not c!495372)) b!3008254))

(assert (= (and b!3008255 (not res!1239814)) b!3008259))

(assert (= (and b!3008254 c!495373) b!3008253))

(assert (= (and b!3008254 (not c!495373)) b!3008257))

(assert (= (and b!3008253 (not res!1239813)) b!3008250))

(assert (= (or b!3008250 b!3008257) bm!202478))

(assert (= (or b!3008258 b!3008253) bm!202477))

(assert (=> bm!202477 m!3355763))

(declare-fun m!3355963 () Bool)

(assert (=> b!3008255 m!3355963))

(declare-fun m!3355965 () Bool)

(assert (=> bm!202478 m!3355965))

(declare-fun m!3355967 () Bool)

(assert (=> b!3008259 m!3355967))

(assert (=> b!3007956 d!847242))

(declare-fun b!3008260 () Bool)

(declare-fun e!1889075 () Bool)

(assert (=> b!3008260 (= e!1889075 (matchR!4270 (derivativeStep!2641 r!17423 (head!6700 s!11993)) (tail!4926 s!11993)))))

(declare-fun b!3008261 () Bool)

(declare-fun e!1889077 () Bool)

(declare-fun lt!1043425 () Bool)

(assert (=> b!3008261 (= e!1889077 (not lt!1043425))))

(declare-fun b!3008262 () Bool)

(declare-fun e!1889076 () Bool)

(assert (=> b!3008262 (= e!1889076 e!1889077)))

(declare-fun c!495377 () Bool)

(assert (=> b!3008262 (= c!495377 (is-EmptyLang!9388 r!17423))))

(declare-fun b!3008263 () Bool)

(assert (=> b!3008263 (= e!1889075 (nullable!3043 r!17423))))

(declare-fun b!3008264 () Bool)

(declare-fun e!1889072 () Bool)

(assert (=> b!3008264 (= e!1889072 (not (= (head!6700 s!11993) (c!495320 r!17423))))))

(declare-fun b!3008265 () Bool)

(declare-fun call!202484 () Bool)

(assert (=> b!3008265 (= e!1889076 (= lt!1043425 call!202484))))

(declare-fun b!3008266 () Bool)

(declare-fun res!1239822 () Bool)

(declare-fun e!1889078 () Bool)

(assert (=> b!3008266 (=> (not res!1239822) (not e!1889078))))

(assert (=> b!3008266 (= res!1239822 (isEmpty!19412 (tail!4926 s!11993)))))

(declare-fun b!3008267 () Bool)

(declare-fun res!1239816 () Bool)

(assert (=> b!3008267 (=> (not res!1239816) (not e!1889078))))

(assert (=> b!3008267 (= res!1239816 (not call!202484))))

(declare-fun b!3008269 () Bool)

(declare-fun res!1239820 () Bool)

(declare-fun e!1889074 () Bool)

(assert (=> b!3008269 (=> res!1239820 e!1889074)))

(assert (=> b!3008269 (= res!1239820 e!1889078)))

(declare-fun res!1239821 () Bool)

(assert (=> b!3008269 (=> (not res!1239821) (not e!1889078))))

(assert (=> b!3008269 (= res!1239821 lt!1043425)))

(declare-fun b!3008270 () Bool)

(declare-fun res!1239818 () Bool)

(assert (=> b!3008270 (=> res!1239818 e!1889074)))

(assert (=> b!3008270 (= res!1239818 (not (is-ElementMatch!9388 r!17423)))))

(assert (=> b!3008270 (= e!1889077 e!1889074)))

(declare-fun b!3008271 () Bool)

(assert (=> b!3008271 (= e!1889078 (= (head!6700 s!11993) (c!495320 r!17423)))))

(declare-fun bm!202479 () Bool)

(assert (=> bm!202479 (= call!202484 (isEmpty!19412 s!11993))))

(declare-fun b!3008272 () Bool)

(declare-fun res!1239819 () Bool)

(assert (=> b!3008272 (=> res!1239819 e!1889072)))

(assert (=> b!3008272 (= res!1239819 (not (isEmpty!19412 (tail!4926 s!11993))))))

(declare-fun b!3008273 () Bool)

(declare-fun e!1889073 () Bool)

(assert (=> b!3008273 (= e!1889074 e!1889073)))

(declare-fun res!1239817 () Bool)

(assert (=> b!3008273 (=> (not res!1239817) (not e!1889073))))

(assert (=> b!3008273 (= res!1239817 (not lt!1043425))))

(declare-fun b!3008268 () Bool)

(assert (=> b!3008268 (= e!1889073 e!1889072)))

(declare-fun res!1239815 () Bool)

(assert (=> b!3008268 (=> res!1239815 e!1889072)))

(assert (=> b!3008268 (= res!1239815 call!202484)))

(declare-fun d!847244 () Bool)

(assert (=> d!847244 e!1889076))

(declare-fun c!495378 () Bool)

(assert (=> d!847244 (= c!495378 (is-EmptyExpr!9388 r!17423))))

(assert (=> d!847244 (= lt!1043425 e!1889075)))

(declare-fun c!495376 () Bool)

(assert (=> d!847244 (= c!495376 (isEmpty!19412 s!11993))))

(assert (=> d!847244 (validRegex!4121 r!17423)))

(assert (=> d!847244 (= (matchR!4270 r!17423 s!11993) lt!1043425)))

(assert (= (and d!847244 c!495376) b!3008263))

(assert (= (and d!847244 (not c!495376)) b!3008260))

(assert (= (and d!847244 c!495378) b!3008265))

(assert (= (and d!847244 (not c!495378)) b!3008262))

(assert (= (and b!3008262 c!495377) b!3008261))

(assert (= (and b!3008262 (not c!495377)) b!3008270))

(assert (= (and b!3008270 (not res!1239818)) b!3008269))

(assert (= (and b!3008269 res!1239821) b!3008267))

(assert (= (and b!3008267 res!1239816) b!3008266))

(assert (= (and b!3008266 res!1239822) b!3008271))

(assert (= (and b!3008269 (not res!1239820)) b!3008273))

(assert (= (and b!3008273 res!1239817) b!3008268))

(assert (= (and b!3008268 (not res!1239815)) b!3008272))

(assert (= (and b!3008272 (not res!1239819)) b!3008264))

(assert (= (or b!3008265 b!3008267 b!3008268) bm!202479))

(declare-fun m!3355969 () Bool)

(assert (=> b!3008263 m!3355969))

(assert (=> d!847244 m!3355763))

(assert (=> d!847244 m!3355803))

(declare-fun m!3355971 () Bool)

(assert (=> b!3008266 m!3355971))

(assert (=> b!3008266 m!3355971))

(declare-fun m!3355973 () Bool)

(assert (=> b!3008266 m!3355973))

(assert (=> b!3008272 m!3355971))

(assert (=> b!3008272 m!3355971))

(assert (=> b!3008272 m!3355973))

(declare-fun m!3355975 () Bool)

(assert (=> b!3008260 m!3355975))

(assert (=> b!3008260 m!3355975))

(declare-fun m!3355977 () Bool)

(assert (=> b!3008260 m!3355977))

(assert (=> b!3008260 m!3355971))

(assert (=> b!3008260 m!3355977))

(assert (=> b!3008260 m!3355971))

(declare-fun m!3355979 () Bool)

(assert (=> b!3008260 m!3355979))

(assert (=> b!3008264 m!3355975))

(assert (=> b!3008271 m!3355975))

(assert (=> bm!202479 m!3355763))

(assert (=> b!3007956 d!847244))

(declare-fun d!847246 () Bool)

(assert (=> d!847246 (= (matchR!4270 r!17423 s!11993) (matchRSpec!1525 r!17423 s!11993))))

(declare-fun lt!1043428 () Unit!49191)

(declare-fun choose!17859 (Regex!9388 List!35253) Unit!49191)

(assert (=> d!847246 (= lt!1043428 (choose!17859 r!17423 s!11993))))

(assert (=> d!847246 (validRegex!4121 r!17423)))

(assert (=> d!847246 (= (mainMatchTheorem!1525 r!17423 s!11993) lt!1043428)))

(declare-fun bs!529095 () Bool)

(assert (= bs!529095 d!847246))

(assert (=> bs!529095 m!3355811))

(assert (=> bs!529095 m!3355809))

(declare-fun m!3355981 () Bool)

(assert (=> bs!529095 m!3355981))

(assert (=> bs!529095 m!3355803))

(assert (=> b!3007956 d!847246))

(declare-fun d!847248 () Bool)

(assert (=> d!847248 (= (isEmptyLang!478 lt!1043345) (is-EmptyLang!9388 lt!1043345))))

(assert (=> b!3007943 d!847248))

(declare-fun b!3008353 () Bool)

(declare-fun e!1889140 () Regex!9388)

(declare-fun e!1889130 () Regex!9388)

(assert (=> b!3008353 (= e!1889140 e!1889130)))

(declare-fun lt!1043448 () Regex!9388)

(declare-fun call!202510 () Regex!9388)

(assert (=> b!3008353 (= lt!1043448 call!202510)))

(declare-fun lt!1043449 () Regex!9388)

(declare-fun call!202508 () Regex!9388)

(assert (=> b!3008353 (= lt!1043449 call!202508)))

(declare-fun res!1239843 () Bool)

(declare-fun call!202513 () Bool)

(assert (=> b!3008353 (= res!1239843 call!202513)))

(declare-fun e!1889132 () Bool)

(assert (=> b!3008353 (=> res!1239843 e!1889132)))

(declare-fun c!495410 () Bool)

(assert (=> b!3008353 (= c!495410 e!1889132)))

(declare-fun b!3008354 () Bool)

(declare-fun c!495415 () Bool)

(declare-fun e!1889136 () Bool)

(assert (=> b!3008354 (= c!495415 e!1889136)))

(declare-fun res!1239842 () Bool)

(assert (=> b!3008354 (=> res!1239842 e!1889136)))

(declare-fun call!202511 () Bool)

(assert (=> b!3008354 (= res!1239842 call!202511)))

(declare-fun lt!1043445 () Regex!9388)

(declare-fun call!202507 () Regex!9388)

(assert (=> b!3008354 (= lt!1043445 call!202507)))

(declare-fun e!1889139 () Regex!9388)

(declare-fun e!1889134 () Regex!9388)

(assert (=> b!3008354 (= e!1889139 e!1889134)))

(declare-fun b!3008355 () Bool)

(declare-fun e!1889137 () Regex!9388)

(assert (=> b!3008355 (= e!1889137 EmptyExpr!9388)))

(declare-fun b!3008356 () Bool)

(assert (=> b!3008356 (= e!1889134 EmptyExpr!9388)))

(declare-fun bm!202502 () Bool)

(assert (=> bm!202502 (= call!202508 call!202507)))

(declare-fun b!3008357 () Bool)

(declare-fun call!202512 () Bool)

(assert (=> b!3008357 (= e!1889136 call!202512)))

(declare-fun b!3008358 () Bool)

(declare-fun e!1889141 () Regex!9388)

(assert (=> b!3008358 (= e!1889141 lt!1043449)))

(declare-fun b!3008359 () Bool)

(declare-fun c!495418 () Bool)

(assert (=> b!3008359 (= c!495418 call!202513)))

(declare-fun e!1889128 () Regex!9388)

(declare-fun e!1889133 () Regex!9388)

(assert (=> b!3008359 (= e!1889128 e!1889133)))

(declare-fun b!3008361 () Bool)

(declare-fun c!495409 () Bool)

(assert (=> b!3008361 (= c!495409 (is-EmptyExpr!9388 (reg!9717 r!17423)))))

(declare-fun e!1889129 () Regex!9388)

(assert (=> b!3008361 (= e!1889129 e!1889137)))

(declare-fun b!3008362 () Bool)

(declare-fun lt!1043446 () Regex!9388)

(assert (=> b!3008362 (= e!1889128 lt!1043446)))

(declare-fun b!3008363 () Bool)

(declare-fun e!1889138 () Regex!9388)

(assert (=> b!3008363 (= e!1889138 lt!1043448)))

(declare-fun b!3008364 () Bool)

(assert (=> b!3008364 (= e!1889141 e!1889138)))

(declare-fun c!495414 () Bool)

(declare-fun isEmptyExpr!486 (Regex!9388) Bool)

(assert (=> b!3008364 (= c!495414 (isEmptyExpr!486 lt!1043449))))

(declare-fun b!3008365 () Bool)

(declare-fun c!495413 () Bool)

(assert (=> b!3008365 (= c!495413 call!202512)))

(assert (=> b!3008365 (= e!1889130 e!1889141)))

(declare-fun c!495411 () Bool)

(declare-fun bm!202503 () Bool)

(declare-fun c!495412 () Bool)

(assert (=> bm!202503 (= call!202511 (isEmptyLang!478 (ite c!495412 lt!1043445 (ite c!495411 lt!1043446 lt!1043448))))))

(declare-fun b!3008366 () Bool)

(assert (=> b!3008366 (= e!1889137 e!1889139)))

(assert (=> b!3008366 (= c!495412 (is-Star!9388 (reg!9717 r!17423)))))

(declare-fun b!3008367 () Bool)

(declare-fun e!1889131 () Regex!9388)

(assert (=> b!3008367 (= e!1889131 e!1889129)))

(declare-fun c!495417 () Bool)

(assert (=> b!3008367 (= c!495417 (is-ElementMatch!9388 (reg!9717 r!17423)))))

(declare-fun bm!202504 () Bool)

(assert (=> bm!202504 (= call!202513 call!202511)))

(declare-fun bm!202505 () Bool)

(assert (=> bm!202505 (= call!202507 (simplify!379 (ite c!495412 (reg!9717 (reg!9717 r!17423)) (ite c!495411 (regOne!19289 (reg!9717 r!17423)) (regTwo!19288 (reg!9717 r!17423))))))))

(declare-fun b!3008368 () Bool)

(assert (=> b!3008368 (= e!1889140 e!1889128)))

(declare-fun lt!1043447 () Regex!9388)

(assert (=> b!3008368 (= lt!1043447 call!202508)))

(assert (=> b!3008368 (= lt!1043446 call!202510)))

(declare-fun c!495416 () Bool)

(declare-fun call!202509 () Bool)

(assert (=> b!3008368 (= c!495416 call!202509)))

(declare-fun b!3008369 () Bool)

(assert (=> b!3008369 (= e!1889138 (Concat!14709 lt!1043448 lt!1043449))))

(declare-fun b!3008370 () Bool)

(assert (=> b!3008370 (= c!495411 (is-Union!9388 (reg!9717 r!17423)))))

(assert (=> b!3008370 (= e!1889139 e!1889140)))

(declare-fun bm!202506 () Bool)

(assert (=> bm!202506 (= call!202510 (simplify!379 (ite c!495411 (regTwo!19289 (reg!9717 r!17423)) (regOne!19288 (reg!9717 r!17423)))))))

(declare-fun b!3008371 () Bool)

(assert (=> b!3008371 (= e!1889129 (reg!9717 r!17423))))

(declare-fun bm!202507 () Bool)

(assert (=> bm!202507 (= call!202512 (isEmptyExpr!486 (ite c!495412 lt!1043445 lt!1043448)))))

(declare-fun b!3008372 () Bool)

(declare-fun e!1889135 () Bool)

(declare-fun lt!1043444 () Regex!9388)

(assert (=> b!3008372 (= e!1889135 (= (nullable!3043 lt!1043444) (nullable!3043 (reg!9717 r!17423))))))

(declare-fun b!3008373 () Bool)

(assert (=> b!3008373 (= e!1889130 EmptyLang!9388)))

(declare-fun b!3008374 () Bool)

(assert (=> b!3008374 (= e!1889131 EmptyLang!9388)))

(declare-fun d!847250 () Bool)

(assert (=> d!847250 e!1889135))

(declare-fun res!1239844 () Bool)

(assert (=> d!847250 (=> (not res!1239844) (not e!1889135))))

(assert (=> d!847250 (= res!1239844 (validRegex!4121 lt!1043444))))

(assert (=> d!847250 (= lt!1043444 e!1889131)))

(declare-fun c!495419 () Bool)

(assert (=> d!847250 (= c!495419 (is-EmptyLang!9388 (reg!9717 r!17423)))))

(assert (=> d!847250 (validRegex!4121 (reg!9717 r!17423))))

(assert (=> d!847250 (= (simplify!379 (reg!9717 r!17423)) lt!1043444)))

(declare-fun b!3008360 () Bool)

(assert (=> b!3008360 (= e!1889134 (Star!9388 lt!1043445))))

(declare-fun b!3008375 () Bool)

(assert (=> b!3008375 (= e!1889133 (Union!9388 lt!1043447 lt!1043446))))

(declare-fun b!3008376 () Bool)

(assert (=> b!3008376 (= e!1889133 lt!1043447)))

(declare-fun b!3008377 () Bool)

(assert (=> b!3008377 (= e!1889132 call!202509)))

(declare-fun bm!202508 () Bool)

(assert (=> bm!202508 (= call!202509 (isEmptyLang!478 (ite c!495411 lt!1043447 lt!1043449)))))

(assert (= (and d!847250 c!495419) b!3008374))

(assert (= (and d!847250 (not c!495419)) b!3008367))

(assert (= (and b!3008367 c!495417) b!3008371))

(assert (= (and b!3008367 (not c!495417)) b!3008361))

(assert (= (and b!3008361 c!495409) b!3008355))

(assert (= (and b!3008361 (not c!495409)) b!3008366))

(assert (= (and b!3008366 c!495412) b!3008354))

(assert (= (and b!3008366 (not c!495412)) b!3008370))

(assert (= (and b!3008354 (not res!1239842)) b!3008357))

(assert (= (and b!3008354 c!495415) b!3008356))

(assert (= (and b!3008354 (not c!495415)) b!3008360))

(assert (= (and b!3008370 c!495411) b!3008368))

(assert (= (and b!3008370 (not c!495411)) b!3008353))

(assert (= (and b!3008368 c!495416) b!3008362))

(assert (= (and b!3008368 (not c!495416)) b!3008359))

(assert (= (and b!3008359 c!495418) b!3008376))

(assert (= (and b!3008359 (not c!495418)) b!3008375))

(assert (= (and b!3008353 (not res!1239843)) b!3008377))

(assert (= (and b!3008353 c!495410) b!3008373))

(assert (= (and b!3008353 (not c!495410)) b!3008365))

(assert (= (and b!3008365 c!495413) b!3008358))

(assert (= (and b!3008365 (not c!495413)) b!3008364))

(assert (= (and b!3008364 c!495414) b!3008363))

(assert (= (and b!3008364 (not c!495414)) b!3008369))

(assert (= (or b!3008368 b!3008353) bm!202502))

(assert (= (or b!3008368 b!3008353) bm!202506))

(assert (= (or b!3008359 b!3008353) bm!202504))

(assert (= (or b!3008368 b!3008377) bm!202508))

(assert (= (or b!3008357 b!3008365) bm!202507))

(assert (= (or b!3008354 bm!202502) bm!202505))

(assert (= (or b!3008354 bm!202504) bm!202503))

(assert (= (and d!847250 res!1239844) b!3008372))

(declare-fun m!3355991 () Bool)

(assert (=> d!847250 m!3355991))

(declare-fun m!3355993 () Bool)

(assert (=> d!847250 m!3355993))

(declare-fun m!3355995 () Bool)

(assert (=> bm!202508 m!3355995))

(declare-fun m!3355997 () Bool)

(assert (=> bm!202507 m!3355997))

(declare-fun m!3355999 () Bool)

(assert (=> b!3008372 m!3355999))

(assert (=> b!3008372 m!3355783))

(declare-fun m!3356001 () Bool)

(assert (=> bm!202505 m!3356001))

(declare-fun m!3356003 () Bool)

(assert (=> bm!202503 m!3356003))

(declare-fun m!3356005 () Bool)

(assert (=> b!3008364 m!3356005))

(declare-fun m!3356007 () Bool)

(assert (=> bm!202506 m!3356007))

(assert (=> b!3007943 d!847250))

(declare-fun b!3008398 () Bool)

(declare-fun e!1889153 () Bool)

(declare-fun lt!1043452 () List!35253)

(assert (=> b!3008398 (= e!1889153 (or (not (= (_2!20167 lt!1043343) Nil!35129)) (= lt!1043452 (_1!20167 lt!1043343))))))

(declare-fun b!3008396 () Bool)

(declare-fun e!1889154 () List!35253)

(assert (=> b!3008396 (= e!1889154 (Cons!35129 (h!40549 (_1!20167 lt!1043343)) (++!8416 (t!234318 (_1!20167 lt!1043343)) (_2!20167 lt!1043343))))))

(declare-fun b!3008395 () Bool)

(assert (=> b!3008395 (= e!1889154 (_2!20167 lt!1043343))))

(declare-fun b!3008397 () Bool)

(declare-fun res!1239855 () Bool)

(assert (=> b!3008397 (=> (not res!1239855) (not e!1889153))))

(assert (=> b!3008397 (= res!1239855 (= (size!26518 lt!1043452) (+ (size!26518 (_1!20167 lt!1043343)) (size!26518 (_2!20167 lt!1043343)))))))

(declare-fun d!847256 () Bool)

(assert (=> d!847256 e!1889153))

(declare-fun res!1239854 () Bool)

(assert (=> d!847256 (=> (not res!1239854) (not e!1889153))))

(declare-fun content!4783 (List!35253) (Set C!18962))

(assert (=> d!847256 (= res!1239854 (= (content!4783 lt!1043452) (set.union (content!4783 (_1!20167 lt!1043343)) (content!4783 (_2!20167 lt!1043343)))))))

(assert (=> d!847256 (= lt!1043452 e!1889154)))

(declare-fun c!495424 () Bool)

(assert (=> d!847256 (= c!495424 (is-Nil!35129 (_1!20167 lt!1043343)))))

(assert (=> d!847256 (= (++!8416 (_1!20167 lt!1043343) (_2!20167 lt!1043343)) lt!1043452)))

(assert (= (and d!847256 c!495424) b!3008395))

(assert (= (and d!847256 (not c!495424)) b!3008396))

(assert (= (and d!847256 res!1239854) b!3008397))

(assert (= (and b!3008397 res!1239855) b!3008398))

(declare-fun m!3356013 () Bool)

(assert (=> b!3008396 m!3356013))

(declare-fun m!3356015 () Bool)

(assert (=> b!3008397 m!3356015))

(assert (=> b!3008397 m!3355761))

(assert (=> b!3008397 m!3355797))

(declare-fun m!3356017 () Bool)

(assert (=> d!847256 m!3356017))

(declare-fun m!3356019 () Bool)

(assert (=> d!847256 m!3356019))

(declare-fun m!3356021 () Bool)

(assert (=> d!847256 m!3356021))

(assert (=> b!3007954 d!847256))

(declare-fun d!847260 () Bool)

(assert (=> d!847260 (= (isEmpty!19412 s!11993) (is-Nil!35129 s!11993))))

(assert (=> b!3007944 d!847260))

(declare-fun bs!529099 () Bool)

(declare-fun b!3008400 () Bool)

(assert (= bs!529099 (and b!3008400 b!3007946)))

(declare-fun lambda!112540 () Int)

(assert (=> bs!529099 (not (= lambda!112540 lambda!112509))))

(declare-fun bs!529100 () Bool)

(assert (= bs!529100 (and b!3008400 b!3008250)))

(assert (=> bs!529100 (= (and (= (reg!9717 lt!1043340) (reg!9717 r!17423)) (= lt!1043340 r!17423)) (= lambda!112540 lambda!112536))))

(assert (=> bs!529099 (= (= (reg!9717 lt!1043340) lt!1043345) (= lambda!112540 lambda!112510))))

(declare-fun bs!529101 () Bool)

(assert (= bs!529101 (and b!3008400 d!847236)))

(assert (=> bs!529101 (not (= lambda!112540 lambda!112526))))

(assert (=> bs!529101 (= (and (= (reg!9717 lt!1043340) lt!1043345) (= lt!1043340 (Star!9388 lt!1043345))) (= lambda!112540 lambda!112527))))

(declare-fun bs!529102 () Bool)

(assert (= bs!529102 (and b!3008400 b!3008257)))

(assert (=> bs!529102 (not (= lambda!112540 lambda!112537))))

(declare-fun bs!529103 () Bool)

(assert (= bs!529103 (and b!3008400 d!847220)))

(assert (=> bs!529103 (not (= lambda!112540 lambda!112521))))

(assert (=> b!3008400 true))

(assert (=> b!3008400 true))

(declare-fun bs!529104 () Bool)

(declare-fun b!3008407 () Bool)

(assert (= bs!529104 (and b!3008407 b!3007946)))

(declare-fun lambda!112541 () Int)

(assert (=> bs!529104 (not (= lambda!112541 lambda!112509))))

(declare-fun bs!529105 () Bool)

(assert (= bs!529105 (and b!3008407 b!3008250)))

(assert (=> bs!529105 (not (= lambda!112541 lambda!112536))))

(assert (=> bs!529104 (not (= lambda!112541 lambda!112510))))

(declare-fun bs!529106 () Bool)

(assert (= bs!529106 (and b!3008407 d!847236)))

(assert (=> bs!529106 (not (= lambda!112541 lambda!112526))))

(declare-fun bs!529107 () Bool)

(assert (= bs!529107 (and b!3008407 b!3008400)))

(assert (=> bs!529107 (not (= lambda!112541 lambda!112540))))

(assert (=> bs!529106 (not (= lambda!112541 lambda!112527))))

(declare-fun bs!529108 () Bool)

(assert (= bs!529108 (and b!3008407 b!3008257)))

(assert (=> bs!529108 (= (and (= (regOne!19288 lt!1043340) (regOne!19288 r!17423)) (= (regTwo!19288 lt!1043340) (regTwo!19288 r!17423))) (= lambda!112541 lambda!112537))))

(declare-fun bs!529109 () Bool)

(assert (= bs!529109 (and b!3008407 d!847220)))

(assert (=> bs!529109 (not (= lambda!112541 lambda!112521))))

(assert (=> b!3008407 true))

(assert (=> b!3008407 true))

(declare-fun bm!202512 () Bool)

(declare-fun call!202517 () Bool)

(assert (=> bm!202512 (= call!202517 (isEmpty!19412 s!11993))))

(declare-fun b!3008399 () Bool)

(declare-fun c!495427 () Bool)

(assert (=> b!3008399 (= c!495427 (is-ElementMatch!9388 lt!1043340))))

(declare-fun e!1889157 () Bool)

(declare-fun e!1889159 () Bool)

(assert (=> b!3008399 (= e!1889157 e!1889159)))

(declare-fun e!1889155 () Bool)

(declare-fun call!202518 () Bool)

(assert (=> b!3008400 (= e!1889155 call!202518)))

(declare-fun b!3008401 () Bool)

(declare-fun e!1889160 () Bool)

(assert (=> b!3008401 (= e!1889160 e!1889157)))

(declare-fun res!1239856 () Bool)

(assert (=> b!3008401 (= res!1239856 (not (is-EmptyLang!9388 lt!1043340)))))

(assert (=> b!3008401 (=> (not res!1239856) (not e!1889157))))

(declare-fun d!847262 () Bool)

(declare-fun c!495428 () Bool)

(assert (=> d!847262 (= c!495428 (is-EmptyExpr!9388 lt!1043340))))

(assert (=> d!847262 (= (matchRSpec!1525 lt!1043340 s!11993) e!1889160)))

(declare-fun b!3008402 () Bool)

(declare-fun c!495425 () Bool)

(assert (=> b!3008402 (= c!495425 (is-Union!9388 lt!1043340))))

(declare-fun e!1889156 () Bool)

(assert (=> b!3008402 (= e!1889159 e!1889156)))

(declare-fun b!3008403 () Bool)

(declare-fun res!1239857 () Bool)

(assert (=> b!3008403 (=> res!1239857 e!1889155)))

(assert (=> b!3008403 (= res!1239857 call!202517)))

(declare-fun e!1889158 () Bool)

(assert (=> b!3008403 (= e!1889158 e!1889155)))

(declare-fun b!3008404 () Bool)

(assert (=> b!3008404 (= e!1889156 e!1889158)))

(declare-fun c!495426 () Bool)

(assert (=> b!3008404 (= c!495426 (is-Star!9388 lt!1043340))))

(declare-fun b!3008405 () Bool)

(declare-fun e!1889161 () Bool)

(assert (=> b!3008405 (= e!1889156 e!1889161)))

(declare-fun res!1239858 () Bool)

(assert (=> b!3008405 (= res!1239858 (matchRSpec!1525 (regOne!19289 lt!1043340) s!11993))))

(assert (=> b!3008405 (=> res!1239858 e!1889161)))

(declare-fun b!3008406 () Bool)

(assert (=> b!3008406 (= e!1889159 (= s!11993 (Cons!35129 (c!495320 lt!1043340) Nil!35129)))))

(declare-fun bm!202513 () Bool)

(assert (=> bm!202513 (= call!202518 (Exists!1657 (ite c!495426 lambda!112540 lambda!112541)))))

(assert (=> b!3008407 (= e!1889158 call!202518)))

(declare-fun b!3008408 () Bool)

(assert (=> b!3008408 (= e!1889160 call!202517)))

(declare-fun b!3008409 () Bool)

(assert (=> b!3008409 (= e!1889161 (matchRSpec!1525 (regTwo!19289 lt!1043340) s!11993))))

(assert (= (and d!847262 c!495428) b!3008408))

(assert (= (and d!847262 (not c!495428)) b!3008401))

(assert (= (and b!3008401 res!1239856) b!3008399))

(assert (= (and b!3008399 c!495427) b!3008406))

(assert (= (and b!3008399 (not c!495427)) b!3008402))

(assert (= (and b!3008402 c!495425) b!3008405))

(assert (= (and b!3008402 (not c!495425)) b!3008404))

(assert (= (and b!3008405 (not res!1239858)) b!3008409))

(assert (= (and b!3008404 c!495426) b!3008403))

(assert (= (and b!3008404 (not c!495426)) b!3008407))

(assert (= (and b!3008403 (not res!1239857)) b!3008400))

(assert (= (or b!3008400 b!3008407) bm!202513))

(assert (= (or b!3008408 b!3008403) bm!202512))

(assert (=> bm!202512 m!3355763))

(declare-fun m!3356023 () Bool)

(assert (=> b!3008405 m!3356023))

(declare-fun m!3356025 () Bool)

(assert (=> bm!202513 m!3356025))

(declare-fun m!3356027 () Bool)

(assert (=> b!3008409 m!3356027))

(assert (=> b!3007944 d!847262))

(declare-fun d!847264 () Bool)

(assert (=> d!847264 (= (matchR!4270 lt!1043340 s!11993) (matchRSpec!1525 lt!1043340 s!11993))))

(declare-fun lt!1043453 () Unit!49191)

(assert (=> d!847264 (= lt!1043453 (choose!17859 lt!1043340 s!11993))))

(assert (=> d!847264 (validRegex!4121 lt!1043340)))

(assert (=> d!847264 (= (mainMatchTheorem!1525 lt!1043340 s!11993) lt!1043453)))

(declare-fun bs!529110 () Bool)

(assert (= bs!529110 d!847264))

(assert (=> bs!529110 m!3355781))

(assert (=> bs!529110 m!3355765))

(declare-fun m!3356029 () Bool)

(assert (=> bs!529110 m!3356029))

(declare-fun m!3356031 () Bool)

(assert (=> bs!529110 m!3356031))

(assert (=> b!3007944 d!847264))

(declare-fun b!3008410 () Bool)

(declare-fun e!1889165 () Bool)

(assert (=> b!3008410 (= e!1889165 (matchR!4270 (derivativeStep!2641 lt!1043340 (head!6700 (_2!20167 lt!1043343))) (tail!4926 (_2!20167 lt!1043343))))))

(declare-fun b!3008411 () Bool)

(declare-fun e!1889167 () Bool)

(declare-fun lt!1043454 () Bool)

(assert (=> b!3008411 (= e!1889167 (not lt!1043454))))

(declare-fun b!3008412 () Bool)

(declare-fun e!1889166 () Bool)

(assert (=> b!3008412 (= e!1889166 e!1889167)))

(declare-fun c!495430 () Bool)

(assert (=> b!3008412 (= c!495430 (is-EmptyLang!9388 lt!1043340))))

(declare-fun b!3008413 () Bool)

(assert (=> b!3008413 (= e!1889165 (nullable!3043 lt!1043340))))

(declare-fun b!3008414 () Bool)

(declare-fun e!1889162 () Bool)

(assert (=> b!3008414 (= e!1889162 (not (= (head!6700 (_2!20167 lt!1043343)) (c!495320 lt!1043340))))))

(declare-fun b!3008415 () Bool)

(declare-fun call!202519 () Bool)

(assert (=> b!3008415 (= e!1889166 (= lt!1043454 call!202519))))

(declare-fun b!3008416 () Bool)

(declare-fun res!1239866 () Bool)

(declare-fun e!1889168 () Bool)

(assert (=> b!3008416 (=> (not res!1239866) (not e!1889168))))

(assert (=> b!3008416 (= res!1239866 (isEmpty!19412 (tail!4926 (_2!20167 lt!1043343))))))

(declare-fun b!3008417 () Bool)

(declare-fun res!1239860 () Bool)

(assert (=> b!3008417 (=> (not res!1239860) (not e!1889168))))

(assert (=> b!3008417 (= res!1239860 (not call!202519))))

(declare-fun b!3008419 () Bool)

(declare-fun res!1239864 () Bool)

(declare-fun e!1889164 () Bool)

(assert (=> b!3008419 (=> res!1239864 e!1889164)))

(assert (=> b!3008419 (= res!1239864 e!1889168)))

(declare-fun res!1239865 () Bool)

(assert (=> b!3008419 (=> (not res!1239865) (not e!1889168))))

(assert (=> b!3008419 (= res!1239865 lt!1043454)))

(declare-fun b!3008420 () Bool)

(declare-fun res!1239862 () Bool)

(assert (=> b!3008420 (=> res!1239862 e!1889164)))

(assert (=> b!3008420 (= res!1239862 (not (is-ElementMatch!9388 lt!1043340)))))

(assert (=> b!3008420 (= e!1889167 e!1889164)))

(declare-fun b!3008421 () Bool)

(assert (=> b!3008421 (= e!1889168 (= (head!6700 (_2!20167 lt!1043343)) (c!495320 lt!1043340)))))

(declare-fun bm!202514 () Bool)

(assert (=> bm!202514 (= call!202519 (isEmpty!19412 (_2!20167 lt!1043343)))))

(declare-fun b!3008422 () Bool)

(declare-fun res!1239863 () Bool)

(assert (=> b!3008422 (=> res!1239863 e!1889162)))

(assert (=> b!3008422 (= res!1239863 (not (isEmpty!19412 (tail!4926 (_2!20167 lt!1043343)))))))

(declare-fun b!3008423 () Bool)

(declare-fun e!1889163 () Bool)

(assert (=> b!3008423 (= e!1889164 e!1889163)))

(declare-fun res!1239861 () Bool)

(assert (=> b!3008423 (=> (not res!1239861) (not e!1889163))))

(assert (=> b!3008423 (= res!1239861 (not lt!1043454))))

(declare-fun b!3008418 () Bool)

(assert (=> b!3008418 (= e!1889163 e!1889162)))

(declare-fun res!1239859 () Bool)

(assert (=> b!3008418 (=> res!1239859 e!1889162)))

(assert (=> b!3008418 (= res!1239859 call!202519)))

(declare-fun d!847266 () Bool)

(assert (=> d!847266 e!1889166))

(declare-fun c!495431 () Bool)

(assert (=> d!847266 (= c!495431 (is-EmptyExpr!9388 lt!1043340))))

(assert (=> d!847266 (= lt!1043454 e!1889165)))

(declare-fun c!495429 () Bool)

(assert (=> d!847266 (= c!495429 (isEmpty!19412 (_2!20167 lt!1043343)))))

(assert (=> d!847266 (validRegex!4121 lt!1043340)))

(assert (=> d!847266 (= (matchR!4270 lt!1043340 (_2!20167 lt!1043343)) lt!1043454)))

(assert (= (and d!847266 c!495429) b!3008413))

(assert (= (and d!847266 (not c!495429)) b!3008410))

(assert (= (and d!847266 c!495431) b!3008415))

(assert (= (and d!847266 (not c!495431)) b!3008412))

(assert (= (and b!3008412 c!495430) b!3008411))

(assert (= (and b!3008412 (not c!495430)) b!3008420))

(assert (= (and b!3008420 (not res!1239862)) b!3008419))

(assert (= (and b!3008419 res!1239865) b!3008417))

(assert (= (and b!3008417 res!1239860) b!3008416))

(assert (= (and b!3008416 res!1239866) b!3008421))

(assert (= (and b!3008419 (not res!1239864)) b!3008423))

(assert (= (and b!3008423 res!1239861) b!3008418))

(assert (= (and b!3008418 (not res!1239859)) b!3008422))

(assert (= (and b!3008422 (not res!1239863)) b!3008414))

(assert (= (or b!3008415 b!3008417 b!3008418) bm!202514))

(declare-fun m!3356033 () Bool)

(assert (=> b!3008413 m!3356033))

(declare-fun m!3356035 () Bool)

(assert (=> d!847266 m!3356035))

(assert (=> d!847266 m!3356031))

(declare-fun m!3356037 () Bool)

(assert (=> b!3008416 m!3356037))

(assert (=> b!3008416 m!3356037))

(declare-fun m!3356039 () Bool)

(assert (=> b!3008416 m!3356039))

(assert (=> b!3008422 m!3356037))

(assert (=> b!3008422 m!3356037))

(assert (=> b!3008422 m!3356039))

(declare-fun m!3356041 () Bool)

(assert (=> b!3008410 m!3356041))

(assert (=> b!3008410 m!3356041))

(declare-fun m!3356043 () Bool)

(assert (=> b!3008410 m!3356043))

(assert (=> b!3008410 m!3356037))

(assert (=> b!3008410 m!3356043))

(assert (=> b!3008410 m!3356037))

(declare-fun m!3356045 () Bool)

(assert (=> b!3008410 m!3356045))

(assert (=> b!3008414 m!3356041))

(assert (=> b!3008421 m!3356041))

(assert (=> bm!202514 m!3356035))

(assert (=> b!3007942 d!847266))

(declare-fun d!847268 () Bool)

(declare-fun nullableFct!866 (Regex!9388) Bool)

(assert (=> d!847268 (= (nullable!3043 (reg!9717 r!17423)) (nullableFct!866 (reg!9717 r!17423)))))

(declare-fun bs!529111 () Bool)

(assert (= bs!529111 d!847268))

(declare-fun m!3356047 () Bool)

(assert (=> bs!529111 m!3356047))

(assert (=> b!3007953 d!847268))

(declare-fun bs!529112 () Bool)

(declare-fun b!3008433 () Bool)

(assert (= bs!529112 (and b!3008433 b!3007946)))

(declare-fun lambda!112542 () Int)

(assert (=> bs!529112 (not (= lambda!112542 lambda!112509))))

(declare-fun bs!529113 () Bool)

(assert (= bs!529113 (and b!3008433 b!3008250)))

(assert (=> bs!529113 (= (and (= (_1!20167 lt!1043343) s!11993) (= (reg!9717 (reg!9717 r!17423)) (reg!9717 r!17423)) (= (reg!9717 r!17423) r!17423)) (= lambda!112542 lambda!112536))))

(assert (=> bs!529112 (= (and (= (_1!20167 lt!1043343) s!11993) (= (reg!9717 (reg!9717 r!17423)) lt!1043345) (= (reg!9717 r!17423) lt!1043340)) (= lambda!112542 lambda!112510))))

(declare-fun bs!529114 () Bool)

(assert (= bs!529114 (and b!3008433 d!847236)))

(assert (=> bs!529114 (not (= lambda!112542 lambda!112526))))

(declare-fun bs!529115 () Bool)

(assert (= bs!529115 (and b!3008433 b!3008400)))

(assert (=> bs!529115 (= (and (= (_1!20167 lt!1043343) s!11993) (= (reg!9717 (reg!9717 r!17423)) (reg!9717 lt!1043340)) (= (reg!9717 r!17423) lt!1043340)) (= lambda!112542 lambda!112540))))

(assert (=> bs!529114 (= (and (= (_1!20167 lt!1043343) s!11993) (= (reg!9717 (reg!9717 r!17423)) lt!1043345) (= (reg!9717 r!17423) (Star!9388 lt!1043345))) (= lambda!112542 lambda!112527))))

(declare-fun bs!529116 () Bool)

(assert (= bs!529116 (and b!3008433 b!3008407)))

(assert (=> bs!529116 (not (= lambda!112542 lambda!112541))))

(declare-fun bs!529117 () Bool)

(assert (= bs!529117 (and b!3008433 b!3008257)))

(assert (=> bs!529117 (not (= lambda!112542 lambda!112537))))

(declare-fun bs!529118 () Bool)

(assert (= bs!529118 (and b!3008433 d!847220)))

(assert (=> bs!529118 (not (= lambda!112542 lambda!112521))))

(assert (=> b!3008433 true))

(assert (=> b!3008433 true))

(declare-fun bs!529119 () Bool)

(declare-fun b!3008440 () Bool)

(assert (= bs!529119 (and b!3008440 b!3007946)))

(declare-fun lambda!112543 () Int)

(assert (=> bs!529119 (not (= lambda!112543 lambda!112509))))

(declare-fun bs!529120 () Bool)

(assert (= bs!529120 (and b!3008440 b!3008250)))

(assert (=> bs!529120 (not (= lambda!112543 lambda!112536))))

(assert (=> bs!529119 (not (= lambda!112543 lambda!112510))))

(declare-fun bs!529121 () Bool)

(assert (= bs!529121 (and b!3008440 d!847236)))

(assert (=> bs!529121 (not (= lambda!112543 lambda!112526))))

(declare-fun bs!529122 () Bool)

(assert (= bs!529122 (and b!3008440 b!3008400)))

(assert (=> bs!529122 (not (= lambda!112543 lambda!112540))))

(assert (=> bs!529121 (not (= lambda!112543 lambda!112527))))

(declare-fun bs!529123 () Bool)

(assert (= bs!529123 (and b!3008440 b!3008433)))

(assert (=> bs!529123 (not (= lambda!112543 lambda!112542))))

(declare-fun bs!529124 () Bool)

(assert (= bs!529124 (and b!3008440 b!3008407)))

(assert (=> bs!529124 (= (and (= (_1!20167 lt!1043343) s!11993) (= (regOne!19288 (reg!9717 r!17423)) (regOne!19288 lt!1043340)) (= (regTwo!19288 (reg!9717 r!17423)) (regTwo!19288 lt!1043340))) (= lambda!112543 lambda!112541))))

(declare-fun bs!529125 () Bool)

(assert (= bs!529125 (and b!3008440 b!3008257)))

(assert (=> bs!529125 (= (and (= (_1!20167 lt!1043343) s!11993) (= (regOne!19288 (reg!9717 r!17423)) (regOne!19288 r!17423)) (= (regTwo!19288 (reg!9717 r!17423)) (regTwo!19288 r!17423))) (= lambda!112543 lambda!112537))))

(declare-fun bs!529126 () Bool)

(assert (= bs!529126 (and b!3008440 d!847220)))

(assert (=> bs!529126 (not (= lambda!112543 lambda!112521))))

(assert (=> b!3008440 true))

(assert (=> b!3008440 true))

(declare-fun bm!202515 () Bool)

(declare-fun call!202520 () Bool)

(assert (=> bm!202515 (= call!202520 (isEmpty!19412 (_1!20167 lt!1043343)))))

(declare-fun b!3008432 () Bool)

(declare-fun c!495436 () Bool)

(assert (=> b!3008432 (= c!495436 (is-ElementMatch!9388 (reg!9717 r!17423)))))

(declare-fun e!1889175 () Bool)

(declare-fun e!1889177 () Bool)

(assert (=> b!3008432 (= e!1889175 e!1889177)))

(declare-fun e!1889173 () Bool)

(declare-fun call!202521 () Bool)

(assert (=> b!3008433 (= e!1889173 call!202521)))

(declare-fun b!3008434 () Bool)

(declare-fun e!1889178 () Bool)

(assert (=> b!3008434 (= e!1889178 e!1889175)))

(declare-fun res!1239871 () Bool)

(assert (=> b!3008434 (= res!1239871 (not (is-EmptyLang!9388 (reg!9717 r!17423))))))

(assert (=> b!3008434 (=> (not res!1239871) (not e!1889175))))

(declare-fun d!847270 () Bool)

(declare-fun c!495437 () Bool)

(assert (=> d!847270 (= c!495437 (is-EmptyExpr!9388 (reg!9717 r!17423)))))

(assert (=> d!847270 (= (matchRSpec!1525 (reg!9717 r!17423) (_1!20167 lt!1043343)) e!1889178)))

(declare-fun b!3008435 () Bool)

(declare-fun c!495434 () Bool)

(assert (=> b!3008435 (= c!495434 (is-Union!9388 (reg!9717 r!17423)))))

(declare-fun e!1889174 () Bool)

(assert (=> b!3008435 (= e!1889177 e!1889174)))

(declare-fun b!3008436 () Bool)

(declare-fun res!1239872 () Bool)

(assert (=> b!3008436 (=> res!1239872 e!1889173)))

(assert (=> b!3008436 (= res!1239872 call!202520)))

(declare-fun e!1889176 () Bool)

(assert (=> b!3008436 (= e!1889176 e!1889173)))

(declare-fun b!3008437 () Bool)

(assert (=> b!3008437 (= e!1889174 e!1889176)))

(declare-fun c!495435 () Bool)

(assert (=> b!3008437 (= c!495435 (is-Star!9388 (reg!9717 r!17423)))))

(declare-fun b!3008438 () Bool)

(declare-fun e!1889179 () Bool)

(assert (=> b!3008438 (= e!1889174 e!1889179)))

(declare-fun res!1239873 () Bool)

(assert (=> b!3008438 (= res!1239873 (matchRSpec!1525 (regOne!19289 (reg!9717 r!17423)) (_1!20167 lt!1043343)))))

(assert (=> b!3008438 (=> res!1239873 e!1889179)))

(declare-fun b!3008439 () Bool)

(assert (=> b!3008439 (= e!1889177 (= (_1!20167 lt!1043343) (Cons!35129 (c!495320 (reg!9717 r!17423)) Nil!35129)))))

(declare-fun bm!202516 () Bool)

(assert (=> bm!202516 (= call!202521 (Exists!1657 (ite c!495435 lambda!112542 lambda!112543)))))

(assert (=> b!3008440 (= e!1889176 call!202521)))

(declare-fun b!3008441 () Bool)

(assert (=> b!3008441 (= e!1889178 call!202520)))

(declare-fun b!3008442 () Bool)

(assert (=> b!3008442 (= e!1889179 (matchRSpec!1525 (regTwo!19289 (reg!9717 r!17423)) (_1!20167 lt!1043343)))))

(assert (= (and d!847270 c!495437) b!3008441))

(assert (= (and d!847270 (not c!495437)) b!3008434))

(assert (= (and b!3008434 res!1239871) b!3008432))

(assert (= (and b!3008432 c!495436) b!3008439))

(assert (= (and b!3008432 (not c!495436)) b!3008435))

(assert (= (and b!3008435 c!495434) b!3008438))

(assert (= (and b!3008435 (not c!495434)) b!3008437))

(assert (= (and b!3008438 (not res!1239873)) b!3008442))

(assert (= (and b!3008437 c!495435) b!3008436))

(assert (= (and b!3008437 (not c!495435)) b!3008440))

(assert (= (and b!3008436 (not res!1239872)) b!3008433))

(assert (= (or b!3008433 b!3008440) bm!202516))

(assert (= (or b!3008441 b!3008436) bm!202515))

(assert (=> bm!202515 m!3355793))

(declare-fun m!3356059 () Bool)

(assert (=> b!3008438 m!3356059))

(declare-fun m!3356061 () Bool)

(assert (=> bm!202516 m!3356061))

(declare-fun m!3356063 () Bool)

(assert (=> b!3008442 m!3356063))

(assert (=> b!3007953 d!847270))

(declare-fun d!847274 () Bool)

(assert (=> d!847274 (= (matchR!4270 (reg!9717 r!17423) (_1!20167 lt!1043343)) (matchRSpec!1525 (reg!9717 r!17423) (_1!20167 lt!1043343)))))

(declare-fun lt!1043458 () Unit!49191)

(assert (=> d!847274 (= lt!1043458 (choose!17859 (reg!9717 r!17423) (_1!20167 lt!1043343)))))

(assert (=> d!847274 (validRegex!4121 (reg!9717 r!17423))))

(assert (=> d!847274 (= (mainMatchTheorem!1525 (reg!9717 r!17423) (_1!20167 lt!1043343)) lt!1043458)))

(declare-fun bs!529128 () Bool)

(assert (= bs!529128 d!847274))

(assert (=> bs!529128 m!3355799))

(assert (=> bs!529128 m!3355785))

(declare-fun m!3356069 () Bool)

(assert (=> bs!529128 m!3356069))

(assert (=> bs!529128 m!3355993))

(assert (=> b!3007953 d!847274))

(declare-fun b!3008447 () Bool)

(declare-fun e!1889185 () Bool)

(assert (=> b!3008447 (= e!1889185 (matchR!4270 (derivativeStep!2641 lt!1043340 (head!6700 s!11993)) (tail!4926 s!11993)))))

(declare-fun b!3008448 () Bool)

(declare-fun e!1889187 () Bool)

(declare-fun lt!1043459 () Bool)

(assert (=> b!3008448 (= e!1889187 (not lt!1043459))))

(declare-fun b!3008449 () Bool)

(declare-fun e!1889186 () Bool)

(assert (=> b!3008449 (= e!1889186 e!1889187)))

(declare-fun c!495440 () Bool)

(assert (=> b!3008449 (= c!495440 (is-EmptyLang!9388 lt!1043340))))

(declare-fun b!3008450 () Bool)

(assert (=> b!3008450 (= e!1889185 (nullable!3043 lt!1043340))))

(declare-fun b!3008451 () Bool)

(declare-fun e!1889182 () Bool)

(assert (=> b!3008451 (= e!1889182 (not (= (head!6700 s!11993) (c!495320 lt!1043340))))))

(declare-fun b!3008452 () Bool)

(declare-fun call!202522 () Bool)

(assert (=> b!3008452 (= e!1889186 (= lt!1043459 call!202522))))

(declare-fun b!3008453 () Bool)

(declare-fun res!1239883 () Bool)

(declare-fun e!1889188 () Bool)

(assert (=> b!3008453 (=> (not res!1239883) (not e!1889188))))

(assert (=> b!3008453 (= res!1239883 (isEmpty!19412 (tail!4926 s!11993)))))

(declare-fun b!3008454 () Bool)

(declare-fun res!1239877 () Bool)

(assert (=> b!3008454 (=> (not res!1239877) (not e!1889188))))

(assert (=> b!3008454 (= res!1239877 (not call!202522))))

(declare-fun b!3008456 () Bool)

(declare-fun res!1239881 () Bool)

(declare-fun e!1889184 () Bool)

(assert (=> b!3008456 (=> res!1239881 e!1889184)))

(assert (=> b!3008456 (= res!1239881 e!1889188)))

(declare-fun res!1239882 () Bool)

(assert (=> b!3008456 (=> (not res!1239882) (not e!1889188))))

(assert (=> b!3008456 (= res!1239882 lt!1043459)))

(declare-fun b!3008457 () Bool)

(declare-fun res!1239879 () Bool)

(assert (=> b!3008457 (=> res!1239879 e!1889184)))

(assert (=> b!3008457 (= res!1239879 (not (is-ElementMatch!9388 lt!1043340)))))

(assert (=> b!3008457 (= e!1889187 e!1889184)))

(declare-fun b!3008458 () Bool)

(assert (=> b!3008458 (= e!1889188 (= (head!6700 s!11993) (c!495320 lt!1043340)))))

(declare-fun bm!202517 () Bool)

(assert (=> bm!202517 (= call!202522 (isEmpty!19412 s!11993))))

(declare-fun b!3008459 () Bool)

(declare-fun res!1239880 () Bool)

(assert (=> b!3008459 (=> res!1239880 e!1889182)))

(assert (=> b!3008459 (= res!1239880 (not (isEmpty!19412 (tail!4926 s!11993))))))

(declare-fun b!3008460 () Bool)

(declare-fun e!1889183 () Bool)

(assert (=> b!3008460 (= e!1889184 e!1889183)))

(declare-fun res!1239878 () Bool)

(assert (=> b!3008460 (=> (not res!1239878) (not e!1889183))))

(assert (=> b!3008460 (= res!1239878 (not lt!1043459))))

(declare-fun b!3008455 () Bool)

(assert (=> b!3008455 (= e!1889183 e!1889182)))

(declare-fun res!1239876 () Bool)

(assert (=> b!3008455 (=> res!1239876 e!1889182)))

(assert (=> b!3008455 (= res!1239876 call!202522)))

(declare-fun d!847280 () Bool)

(assert (=> d!847280 e!1889186))

(declare-fun c!495441 () Bool)

(assert (=> d!847280 (= c!495441 (is-EmptyExpr!9388 lt!1043340))))

(assert (=> d!847280 (= lt!1043459 e!1889185)))

(declare-fun c!495439 () Bool)

(assert (=> d!847280 (= c!495439 (isEmpty!19412 s!11993))))

(assert (=> d!847280 (validRegex!4121 lt!1043340)))

(assert (=> d!847280 (= (matchR!4270 lt!1043340 s!11993) lt!1043459)))

(assert (= (and d!847280 c!495439) b!3008450))

(assert (= (and d!847280 (not c!495439)) b!3008447))

(assert (= (and d!847280 c!495441) b!3008452))

(assert (= (and d!847280 (not c!495441)) b!3008449))

(assert (= (and b!3008449 c!495440) b!3008448))

(assert (= (and b!3008449 (not c!495440)) b!3008457))

(assert (= (and b!3008457 (not res!1239879)) b!3008456))

(assert (= (and b!3008456 res!1239882) b!3008454))

(assert (= (and b!3008454 res!1239877) b!3008453))

(assert (= (and b!3008453 res!1239883) b!3008458))

(assert (= (and b!3008456 (not res!1239881)) b!3008460))

(assert (= (and b!3008460 res!1239878) b!3008455))

(assert (= (and b!3008455 (not res!1239876)) b!3008459))

(assert (= (and b!3008459 (not res!1239880)) b!3008451))

(assert (= (or b!3008452 b!3008454 b!3008455) bm!202517))

(assert (=> b!3008450 m!3356033))

(assert (=> d!847280 m!3355763))

(assert (=> d!847280 m!3356031))

(assert (=> b!3008453 m!3355971))

(assert (=> b!3008453 m!3355971))

(assert (=> b!3008453 m!3355973))

(assert (=> b!3008459 m!3355971))

(assert (=> b!3008459 m!3355971))

(assert (=> b!3008459 m!3355973))

(assert (=> b!3008447 m!3355975))

(assert (=> b!3008447 m!3355975))

(declare-fun m!3356071 () Bool)

(assert (=> b!3008447 m!3356071))

(assert (=> b!3008447 m!3355971))

(assert (=> b!3008447 m!3356071))

(assert (=> b!3008447 m!3355971))

(declare-fun m!3356073 () Bool)

(assert (=> b!3008447 m!3356073))

(assert (=> b!3008451 m!3355975))

(assert (=> b!3008458 m!3355975))

(assert (=> bm!202517 m!3355763))

(assert (=> b!3007951 d!847280))

(declare-fun d!847282 () Bool)

(assert (=> d!847282 (= (isEmpty!19412 (_1!20167 lt!1043343)) (is-Nil!35129 (_1!20167 lt!1043343)))))

(assert (=> b!3007952 d!847282))

(declare-fun d!847284 () Bool)

(declare-fun lt!1043460 () Int)

(assert (=> d!847284 (>= lt!1043460 0)))

(declare-fun e!1889189 () Int)

(assert (=> d!847284 (= lt!1043460 e!1889189)))

(declare-fun c!495442 () Bool)

(assert (=> d!847284 (= c!495442 (is-Nil!35129 s!11993))))

(assert (=> d!847284 (= (size!26518 s!11993) lt!1043460)))

(declare-fun b!3008461 () Bool)

(assert (=> b!3008461 (= e!1889189 0)))

(declare-fun b!3008462 () Bool)

(assert (=> b!3008462 (= e!1889189 (+ 1 (size!26518 (t!234318 s!11993))))))

(assert (= (and d!847284 c!495442) b!3008461))

(assert (= (and d!847284 (not c!495442)) b!3008462))

(declare-fun m!3356075 () Bool)

(assert (=> b!3008462 m!3356075))

(assert (=> b!3007950 d!847284))

(declare-fun d!847286 () Bool)

(declare-fun lt!1043461 () Int)

(assert (=> d!847286 (>= lt!1043461 0)))

(declare-fun e!1889190 () Int)

(assert (=> d!847286 (= lt!1043461 e!1889190)))

(declare-fun c!495443 () Bool)

(assert (=> d!847286 (= c!495443 (is-Nil!35129 (_2!20167 lt!1043343)))))

(assert (=> d!847286 (= (size!26518 (_2!20167 lt!1043343)) lt!1043461)))

(declare-fun b!3008463 () Bool)

(assert (=> b!3008463 (= e!1889190 0)))

(declare-fun b!3008464 () Bool)

(assert (=> b!3008464 (= e!1889190 (+ 1 (size!26518 (t!234318 (_2!20167 lt!1043343)))))))

(assert (= (and d!847286 c!495443) b!3008463))

(assert (= (and d!847286 (not c!495443)) b!3008464))

(declare-fun m!3356077 () Bool)

(assert (=> b!3008464 m!3356077))

(assert (=> b!3007950 d!847286))

(declare-fun b!3008465 () Bool)

(declare-fun e!1889194 () Bool)

(assert (=> b!3008465 (= e!1889194 (matchR!4270 (derivativeStep!2641 (reg!9717 r!17423) (head!6700 (_1!20167 lt!1043343))) (tail!4926 (_1!20167 lt!1043343))))))

(declare-fun b!3008466 () Bool)

(declare-fun e!1889196 () Bool)

(declare-fun lt!1043462 () Bool)

(assert (=> b!3008466 (= e!1889196 (not lt!1043462))))

(declare-fun b!3008467 () Bool)

(declare-fun e!1889195 () Bool)

(assert (=> b!3008467 (= e!1889195 e!1889196)))

(declare-fun c!495445 () Bool)

(assert (=> b!3008467 (= c!495445 (is-EmptyLang!9388 (reg!9717 r!17423)))))

(declare-fun b!3008468 () Bool)

(assert (=> b!3008468 (= e!1889194 (nullable!3043 (reg!9717 r!17423)))))

(declare-fun b!3008469 () Bool)

(declare-fun e!1889191 () Bool)

(assert (=> b!3008469 (= e!1889191 (not (= (head!6700 (_1!20167 lt!1043343)) (c!495320 (reg!9717 r!17423)))))))

(declare-fun b!3008470 () Bool)

(declare-fun call!202523 () Bool)

(assert (=> b!3008470 (= e!1889195 (= lt!1043462 call!202523))))

(declare-fun b!3008471 () Bool)

(declare-fun res!1239891 () Bool)

(declare-fun e!1889197 () Bool)

(assert (=> b!3008471 (=> (not res!1239891) (not e!1889197))))

(assert (=> b!3008471 (= res!1239891 (isEmpty!19412 (tail!4926 (_1!20167 lt!1043343))))))

(declare-fun b!3008472 () Bool)

(declare-fun res!1239885 () Bool)

(assert (=> b!3008472 (=> (not res!1239885) (not e!1889197))))

(assert (=> b!3008472 (= res!1239885 (not call!202523))))

(declare-fun b!3008474 () Bool)

(declare-fun res!1239889 () Bool)

(declare-fun e!1889193 () Bool)

(assert (=> b!3008474 (=> res!1239889 e!1889193)))

(assert (=> b!3008474 (= res!1239889 e!1889197)))

(declare-fun res!1239890 () Bool)

(assert (=> b!3008474 (=> (not res!1239890) (not e!1889197))))

(assert (=> b!3008474 (= res!1239890 lt!1043462)))

(declare-fun b!3008475 () Bool)

(declare-fun res!1239887 () Bool)

(assert (=> b!3008475 (=> res!1239887 e!1889193)))

(assert (=> b!3008475 (= res!1239887 (not (is-ElementMatch!9388 (reg!9717 r!17423))))))

(assert (=> b!3008475 (= e!1889196 e!1889193)))

(declare-fun b!3008476 () Bool)

(assert (=> b!3008476 (= e!1889197 (= (head!6700 (_1!20167 lt!1043343)) (c!495320 (reg!9717 r!17423))))))

(declare-fun bm!202518 () Bool)

(assert (=> bm!202518 (= call!202523 (isEmpty!19412 (_1!20167 lt!1043343)))))

(declare-fun b!3008477 () Bool)

(declare-fun res!1239888 () Bool)

(assert (=> b!3008477 (=> res!1239888 e!1889191)))

(assert (=> b!3008477 (= res!1239888 (not (isEmpty!19412 (tail!4926 (_1!20167 lt!1043343)))))))

(declare-fun b!3008478 () Bool)

(declare-fun e!1889192 () Bool)

(assert (=> b!3008478 (= e!1889193 e!1889192)))

(declare-fun res!1239886 () Bool)

(assert (=> b!3008478 (=> (not res!1239886) (not e!1889192))))

(assert (=> b!3008478 (= res!1239886 (not lt!1043462))))

(declare-fun b!3008473 () Bool)

(assert (=> b!3008473 (= e!1889192 e!1889191)))

(declare-fun res!1239884 () Bool)

(assert (=> b!3008473 (=> res!1239884 e!1889191)))

(assert (=> b!3008473 (= res!1239884 call!202523)))

(declare-fun d!847288 () Bool)

(assert (=> d!847288 e!1889195))

(declare-fun c!495446 () Bool)

(assert (=> d!847288 (= c!495446 (is-EmptyExpr!9388 (reg!9717 r!17423)))))

(assert (=> d!847288 (= lt!1043462 e!1889194)))

(declare-fun c!495444 () Bool)

(assert (=> d!847288 (= c!495444 (isEmpty!19412 (_1!20167 lt!1043343)))))

(assert (=> d!847288 (validRegex!4121 (reg!9717 r!17423))))

(assert (=> d!847288 (= (matchR!4270 (reg!9717 r!17423) (_1!20167 lt!1043343)) lt!1043462)))

(assert (= (and d!847288 c!495444) b!3008468))

(assert (= (and d!847288 (not c!495444)) b!3008465))

(assert (= (and d!847288 c!495446) b!3008470))

(assert (= (and d!847288 (not c!495446)) b!3008467))

(assert (= (and b!3008467 c!495445) b!3008466))

(assert (= (and b!3008467 (not c!495445)) b!3008475))

(assert (= (and b!3008475 (not res!1239887)) b!3008474))

(assert (= (and b!3008474 res!1239890) b!3008472))

(assert (= (and b!3008472 res!1239885) b!3008471))

(assert (= (and b!3008471 res!1239891) b!3008476))

(assert (= (and b!3008474 (not res!1239889)) b!3008478))

(assert (= (and b!3008478 res!1239886) b!3008473))

(assert (= (and b!3008473 (not res!1239884)) b!3008477))

(assert (= (and b!3008477 (not res!1239888)) b!3008469))

(assert (= (or b!3008470 b!3008472 b!3008473) bm!202518))

(assert (=> b!3008468 m!3355783))

(assert (=> d!847288 m!3355793))

(assert (=> d!847288 m!3355993))

(assert (=> b!3008471 m!3355881))

(assert (=> b!3008471 m!3355881))

(assert (=> b!3008471 m!3355883))

(assert (=> b!3008477 m!3355881))

(assert (=> b!3008477 m!3355881))

(assert (=> b!3008477 m!3355883))

(assert (=> b!3008465 m!3355885))

(assert (=> b!3008465 m!3355885))

(declare-fun m!3356079 () Bool)

(assert (=> b!3008465 m!3356079))

(assert (=> b!3008465 m!3355881))

(assert (=> b!3008465 m!3356079))

(assert (=> b!3008465 m!3355881))

(declare-fun m!3356081 () Bool)

(assert (=> b!3008465 m!3356081))

(assert (=> b!3008469 m!3355885))

(assert (=> b!3008476 m!3355885))

(assert (=> bm!202518 m!3355793))

(assert (=> b!3007950 d!847288))

(declare-fun d!847290 () Bool)

(assert (=> d!847290 (= (matchR!4270 (reg!9717 r!17423) (_1!20167 lt!1043343)) (matchR!4270 (simplify!379 (reg!9717 r!17423)) (_1!20167 lt!1043343)))))

(declare-fun lt!1043465 () Unit!49191)

(declare-fun choose!17863 (Regex!9388 List!35253) Unit!49191)

(assert (=> d!847290 (= lt!1043465 (choose!17863 (reg!9717 r!17423) (_1!20167 lt!1043343)))))

(assert (=> d!847290 (validRegex!4121 (reg!9717 r!17423))))

(assert (=> d!847290 (= (lemmaSimplifySound!229 (reg!9717 r!17423) (_1!20167 lt!1043343)) lt!1043465)))

(declare-fun bs!529130 () Bool)

(assert (= bs!529130 d!847290))

(assert (=> bs!529130 m!3355799))

(assert (=> bs!529130 m!3355993))

(declare-fun m!3356083 () Bool)

(assert (=> bs!529130 m!3356083))

(assert (=> bs!529130 m!3355807))

(declare-fun m!3356085 () Bool)

(assert (=> bs!529130 m!3356085))

(assert (=> bs!529130 m!3355807))

(assert (=> b!3007950 d!847290))

(declare-fun b!3008497 () Bool)

(declare-fun e!1889218 () Bool)

(declare-fun call!202532 () Bool)

(assert (=> b!3008497 (= e!1889218 call!202532)))

(declare-fun bm!202525 () Bool)

(declare-fun call!202531 () Bool)

(declare-fun c!495452 () Bool)

(assert (=> bm!202525 (= call!202531 (validRegex!4121 (ite c!495452 (regTwo!19289 r!17423) (regOne!19288 r!17423))))))

(declare-fun b!3008498 () Bool)

(declare-fun e!1889215 () Bool)

(declare-fun call!202530 () Bool)

(assert (=> b!3008498 (= e!1889215 call!202530)))

(declare-fun b!3008499 () Bool)

(declare-fun res!1239903 () Bool)

(declare-fun e!1889217 () Bool)

(assert (=> b!3008499 (=> res!1239903 e!1889217)))

(assert (=> b!3008499 (= res!1239903 (not (is-Concat!14709 r!17423)))))

(declare-fun e!1889216 () Bool)

(assert (=> b!3008499 (= e!1889216 e!1889217)))

(declare-fun b!3008500 () Bool)

(assert (=> b!3008500 (= e!1889217 e!1889215)))

(declare-fun res!1239906 () Bool)

(assert (=> b!3008500 (=> (not res!1239906) (not e!1889215))))

(assert (=> b!3008500 (= res!1239906 call!202531)))

(declare-fun b!3008501 () Bool)

(declare-fun res!1239904 () Bool)

(declare-fun e!1889213 () Bool)

(assert (=> b!3008501 (=> (not res!1239904) (not e!1889213))))

(assert (=> b!3008501 (= res!1239904 call!202530)))

(assert (=> b!3008501 (= e!1889216 e!1889213)))

(declare-fun b!3008502 () Bool)

(declare-fun e!1889212 () Bool)

(assert (=> b!3008502 (= e!1889212 e!1889218)))

(declare-fun res!1239905 () Bool)

(assert (=> b!3008502 (= res!1239905 (not (nullable!3043 (reg!9717 r!17423))))))

(assert (=> b!3008502 (=> (not res!1239905) (not e!1889218))))

(declare-fun b!3008503 () Bool)

(assert (=> b!3008503 (= e!1889213 call!202531)))

(declare-fun b!3008504 () Bool)

(declare-fun e!1889214 () Bool)

(assert (=> b!3008504 (= e!1889214 e!1889212)))

(declare-fun c!495451 () Bool)

(assert (=> b!3008504 (= c!495451 (is-Star!9388 r!17423))))

(declare-fun d!847292 () Bool)

(declare-fun res!1239902 () Bool)

(assert (=> d!847292 (=> res!1239902 e!1889214)))

(assert (=> d!847292 (= res!1239902 (is-ElementMatch!9388 r!17423))))

(assert (=> d!847292 (= (validRegex!4121 r!17423) e!1889214)))

(declare-fun bm!202526 () Bool)

(assert (=> bm!202526 (= call!202530 call!202532)))

(declare-fun b!3008505 () Bool)

(assert (=> b!3008505 (= e!1889212 e!1889216)))

(assert (=> b!3008505 (= c!495452 (is-Union!9388 r!17423))))

(declare-fun bm!202527 () Bool)

(assert (=> bm!202527 (= call!202532 (validRegex!4121 (ite c!495451 (reg!9717 r!17423) (ite c!495452 (regOne!19289 r!17423) (regTwo!19288 r!17423)))))))

(assert (= (and d!847292 (not res!1239902)) b!3008504))

(assert (= (and b!3008504 c!495451) b!3008502))

(assert (= (and b!3008504 (not c!495451)) b!3008505))

(assert (= (and b!3008502 res!1239905) b!3008497))

(assert (= (and b!3008505 c!495452) b!3008501))

(assert (= (and b!3008505 (not c!495452)) b!3008499))

(assert (= (and b!3008501 res!1239904) b!3008503))

(assert (= (and b!3008499 (not res!1239903)) b!3008500))

(assert (= (and b!3008500 res!1239906) b!3008498))

(assert (= (or b!3008501 b!3008498) bm!202526))

(assert (= (or b!3008503 b!3008500) bm!202525))

(assert (= (or b!3008497 bm!202526) bm!202527))

(declare-fun m!3356087 () Bool)

(assert (=> bm!202525 m!3356087))

(assert (=> b!3008502 m!3355783))

(declare-fun m!3356089 () Bool)

(assert (=> bm!202527 m!3356089))

(assert (=> start!289786 d!847292))

(declare-fun b!3008519 () Bool)

(declare-fun e!1889221 () Bool)

(declare-fun tp!955134 () Bool)

(declare-fun tp!955136 () Bool)

(assert (=> b!3008519 (= e!1889221 (and tp!955134 tp!955136))))

(declare-fun b!3008516 () Bool)

(assert (=> b!3008516 (= e!1889221 tp_is_empty!16339)))

(assert (=> b!3007958 (= tp!955101 e!1889221)))

(declare-fun b!3008517 () Bool)

(declare-fun tp!955133 () Bool)

(declare-fun tp!955132 () Bool)

(assert (=> b!3008517 (= e!1889221 (and tp!955133 tp!955132))))

(declare-fun b!3008518 () Bool)

(declare-fun tp!955135 () Bool)

(assert (=> b!3008518 (= e!1889221 tp!955135)))

(assert (= (and b!3007958 (is-ElementMatch!9388 (regOne!19288 r!17423))) b!3008516))

(assert (= (and b!3007958 (is-Concat!14709 (regOne!19288 r!17423))) b!3008517))

(assert (= (and b!3007958 (is-Star!9388 (regOne!19288 r!17423))) b!3008518))

(assert (= (and b!3007958 (is-Union!9388 (regOne!19288 r!17423))) b!3008519))

(declare-fun b!3008523 () Bool)

(declare-fun e!1889222 () Bool)

(declare-fun tp!955139 () Bool)

(declare-fun tp!955141 () Bool)

(assert (=> b!3008523 (= e!1889222 (and tp!955139 tp!955141))))

(declare-fun b!3008520 () Bool)

(assert (=> b!3008520 (= e!1889222 tp_is_empty!16339)))

(assert (=> b!3007958 (= tp!955099 e!1889222)))

(declare-fun b!3008521 () Bool)

(declare-fun tp!955138 () Bool)

(declare-fun tp!955137 () Bool)

(assert (=> b!3008521 (= e!1889222 (and tp!955138 tp!955137))))

(declare-fun b!3008522 () Bool)

(declare-fun tp!955140 () Bool)

(assert (=> b!3008522 (= e!1889222 tp!955140)))

(assert (= (and b!3007958 (is-ElementMatch!9388 (regTwo!19288 r!17423))) b!3008520))

(assert (= (and b!3007958 (is-Concat!14709 (regTwo!19288 r!17423))) b!3008521))

(assert (= (and b!3007958 (is-Star!9388 (regTwo!19288 r!17423))) b!3008522))

(assert (= (and b!3007958 (is-Union!9388 (regTwo!19288 r!17423))) b!3008523))

(declare-fun b!3008528 () Bool)

(declare-fun e!1889225 () Bool)

(declare-fun tp!955144 () Bool)

(assert (=> b!3008528 (= e!1889225 (and tp_is_empty!16339 tp!955144))))

(assert (=> b!3007955 (= tp!955098 e!1889225)))

(assert (= (and b!3007955 (is-Cons!35129 (t!234318 s!11993))) b!3008528))

(declare-fun b!3008532 () Bool)

(declare-fun e!1889226 () Bool)

(declare-fun tp!955147 () Bool)

(declare-fun tp!955149 () Bool)

(assert (=> b!3008532 (= e!1889226 (and tp!955147 tp!955149))))

(declare-fun b!3008529 () Bool)

(assert (=> b!3008529 (= e!1889226 tp_is_empty!16339)))

(assert (=> b!3007945 (= tp!955102 e!1889226)))

(declare-fun b!3008530 () Bool)

(declare-fun tp!955146 () Bool)

(declare-fun tp!955145 () Bool)

(assert (=> b!3008530 (= e!1889226 (and tp!955146 tp!955145))))

(declare-fun b!3008531 () Bool)

(declare-fun tp!955148 () Bool)

(assert (=> b!3008531 (= e!1889226 tp!955148)))

(assert (= (and b!3007945 (is-ElementMatch!9388 (reg!9717 r!17423))) b!3008529))

(assert (= (and b!3007945 (is-Concat!14709 (reg!9717 r!17423))) b!3008530))

(assert (= (and b!3007945 (is-Star!9388 (reg!9717 r!17423))) b!3008531))

(assert (= (and b!3007945 (is-Union!9388 (reg!9717 r!17423))) b!3008532))

(declare-fun b!3008536 () Bool)

(declare-fun e!1889227 () Bool)

(declare-fun tp!955152 () Bool)

(declare-fun tp!955154 () Bool)

(assert (=> b!3008536 (= e!1889227 (and tp!955152 tp!955154))))

(declare-fun b!3008533 () Bool)

(assert (=> b!3008533 (= e!1889227 tp_is_empty!16339)))

(assert (=> b!3007949 (= tp!955103 e!1889227)))

(declare-fun b!3008534 () Bool)

(declare-fun tp!955151 () Bool)

(declare-fun tp!955150 () Bool)

(assert (=> b!3008534 (= e!1889227 (and tp!955151 tp!955150))))

(declare-fun b!3008535 () Bool)

(declare-fun tp!955153 () Bool)

(assert (=> b!3008535 (= e!1889227 tp!955153)))

(assert (= (and b!3007949 (is-ElementMatch!9388 (regOne!19289 r!17423))) b!3008533))

(assert (= (and b!3007949 (is-Concat!14709 (regOne!19289 r!17423))) b!3008534))

(assert (= (and b!3007949 (is-Star!9388 (regOne!19289 r!17423))) b!3008535))

(assert (= (and b!3007949 (is-Union!9388 (regOne!19289 r!17423))) b!3008536))

(declare-fun b!3008540 () Bool)

(declare-fun e!1889228 () Bool)

(declare-fun tp!955157 () Bool)

(declare-fun tp!955159 () Bool)

(assert (=> b!3008540 (= e!1889228 (and tp!955157 tp!955159))))

(declare-fun b!3008537 () Bool)

(assert (=> b!3008537 (= e!1889228 tp_is_empty!16339)))

(assert (=> b!3007949 (= tp!955100 e!1889228)))

(declare-fun b!3008538 () Bool)

(declare-fun tp!955156 () Bool)

(declare-fun tp!955155 () Bool)

(assert (=> b!3008538 (= e!1889228 (and tp!955156 tp!955155))))

(declare-fun b!3008539 () Bool)

(declare-fun tp!955158 () Bool)

(assert (=> b!3008539 (= e!1889228 tp!955158)))

(assert (= (and b!3007949 (is-ElementMatch!9388 (regTwo!19289 r!17423))) b!3008537))

(assert (= (and b!3007949 (is-Concat!14709 (regTwo!19289 r!17423))) b!3008538))

(assert (= (and b!3007949 (is-Star!9388 (regTwo!19289 r!17423))) b!3008539))

(assert (= (and b!3007949 (is-Union!9388 (regTwo!19289 r!17423))) b!3008540))

(push 1)

(assert (not b!3008471))

(assert (not b!3008266))

(assert (not d!847222))

(assert (not b!3008414))

(assert (not b!3008074))

(assert (not b!3008149))

(assert (not b!3008458))

(assert (not d!847264))

(assert (not b!3008206))

(assert (not bm!202477))

(assert (not b!3008442))

(assert (not b!3008536))

(assert (not b!3008522))

(assert (not b!3008459))

(assert (not b!3008409))

(assert (not b!3008464))

(assert (not b!3008531))

(assert (not b!3008416))

(assert (not b!3008263))

(assert (not b!3008517))

(assert (not d!847268))

(assert (not b!3008153))

(assert tp_is_empty!16339)

(assert (not bm!202513))

(assert (not b!3008396))

(assert (not bm!202479))

(assert (not d!847290))

(assert (not b!3008538))

(assert (not d!847228))

(assert (not bm!202508))

(assert (not d!847236))

(assert (not b!3008535))

(assert (not d!847244))

(assert (not b!3008450))

(assert (not b!3008148))

(assert (not b!3008405))

(assert (not b!3008523))

(assert (not b!3008438))

(assert (not b!3008152))

(assert (not b!3008534))

(assert (not b!3008260))

(assert (not b!3008469))

(assert (not bm!202518))

(assert (not b!3008259))

(assert (not b!3008447))

(assert (not b!3008154))

(assert (not b!3008519))

(assert (not d!847280))

(assert (not bm!202505))

(assert (not b!3008518))

(assert (not b!3008410))

(assert (not b!3008150))

(assert (not d!847250))

(assert (not b!3008528))

(assert (not d!847246))

(assert (not bm!202512))

(assert (not bm!202503))

(assert (not d!847234))

(assert (not b!3008071))

(assert (not b!3008264))

(assert (not bm!202515))

(assert (not bm!202514))

(assert (not b!3008397))

(assert (not b!3008068))

(assert (not d!847220))

(assert (not b!3008422))

(assert (not b!3008539))

(assert (not b!3008532))

(assert (not b!3008477))

(assert (not b!3008364))

(assert (not b!3008468))

(assert (not b!3008080))

(assert (not d!847230))

(assert (not d!847288))

(assert (not b!3008255))

(assert (not bm!202516))

(assert (not d!847216))

(assert (not b!3008465))

(assert (not b!3008502))

(assert (not bm!202478))

(assert (not b!3008530))

(assert (not bm!202517))

(assert (not d!847266))

(assert (not b!3008476))

(assert (not bm!202527))

(assert (not b!3008271))

(assert (not d!847256))

(assert (not b!3008451))

(assert (not b!3008540))

(assert (not bm!202525))

(assert (not b!3008521))

(assert (not b!3008372))

(assert (not bm!202507))

(assert (not b!3008453))

(assert (not b!3008421))

(assert (not bm!202464))

(assert (not b!3008072))

(assert (not b!3008462))

(assert (not b!3008413))

(assert (not b!3008272))

(assert (not d!847274))

(assert (not bm!202506))

(assert (not b!3008079))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

