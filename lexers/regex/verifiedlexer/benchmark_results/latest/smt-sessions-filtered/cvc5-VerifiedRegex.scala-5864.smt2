; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!287554 () Bool)

(assert start!287554)

(declare-fun b!2973471 () Bool)

(assert (=> b!2973471 true))

(assert (=> b!2973471 true))

(assert (=> b!2973471 true))

(declare-fun lambda!110628 () Int)

(declare-fun lambda!110627 () Int)

(assert (=> b!2973471 (not (= lambda!110628 lambda!110627))))

(assert (=> b!2973471 true))

(assert (=> b!2973471 true))

(assert (=> b!2973471 true))

(declare-fun b!2973466 () Bool)

(declare-fun e!1870700 () Bool)

(declare-fun tp!947875 () Bool)

(declare-fun tp!947872 () Bool)

(assert (=> b!2973466 (= e!1870700 (and tp!947875 tp!947872))))

(declare-fun b!2973467 () Bool)

(declare-fun tp!947870 () Bool)

(assert (=> b!2973467 (= e!1870700 tp!947870)))

(declare-fun b!2973468 () Bool)

(declare-fun e!1870702 () Bool)

(declare-fun e!1870696 () Bool)

(assert (=> b!2973468 (= e!1870702 e!1870696)))

(declare-fun res!1226064 () Bool)

(assert (=> b!2973468 (=> res!1226064 e!1870696)))

(declare-datatypes ((C!18742 0))(
  ( (C!18743 (val!11407 Int)) )
))
(declare-datatypes ((List!35143 0))(
  ( (Nil!35019) (Cons!35019 (h!40439 C!18742) (t!234208 List!35143)) )
))
(declare-fun s!11993 () List!35143)

(declare-fun isEmpty!19256 (List!35143) Bool)

(assert (=> b!2973468 (= res!1226064 (isEmpty!19256 s!11993))))

(declare-datatypes ((Regex!9278 0))(
  ( (ElementMatch!9278 (c!488034 C!18742)) (Concat!14599 (regOne!19068 Regex!9278) (regTwo!19068 Regex!9278)) (EmptyExpr!9278) (Star!9278 (reg!9607 Regex!9278)) (EmptyLang!9278) (Union!9278 (regOne!19069 Regex!9278) (regTwo!19069 Regex!9278)) )
))
(declare-fun lt!1036600 () Regex!9278)

(declare-fun matchRSpec!1415 (Regex!9278 List!35143) Bool)

(assert (=> b!2973468 (matchRSpec!1415 lt!1036600 s!11993)))

(declare-datatypes ((Unit!48935 0))(
  ( (Unit!48936) )
))
(declare-fun lt!1036603 () Unit!48935)

(declare-fun mainMatchTheorem!1415 (Regex!9278 List!35143) Unit!48935)

(assert (=> b!2973468 (= lt!1036603 (mainMatchTheorem!1415 lt!1036600 s!11993))))

(declare-fun res!1226062 () Bool)

(declare-fun e!1870699 () Bool)

(assert (=> start!287554 (=> (not res!1226062) (not e!1870699))))

(declare-fun r!17423 () Regex!9278)

(declare-fun validRegex!4011 (Regex!9278) Bool)

(assert (=> start!287554 (= res!1226062 (validRegex!4011 r!17423))))

(assert (=> start!287554 e!1870699))

(assert (=> start!287554 e!1870700))

(declare-fun e!1870701 () Bool)

(assert (=> start!287554 e!1870701))

(declare-fun b!2973469 () Bool)

(declare-fun tp!947874 () Bool)

(declare-fun tp!947871 () Bool)

(assert (=> b!2973469 (= e!1870700 (and tp!947874 tp!947871))))

(declare-fun b!2973470 () Bool)

(declare-fun tp_is_empty!16119 () Bool)

(assert (=> b!2973470 (= e!1870700 tp_is_empty!16119)))

(assert (=> b!2973471 (= e!1870696 (validRegex!4011 (reg!9607 r!17423)))))

(declare-fun Exists!1558 (Int) Bool)

(assert (=> b!2973471 (= (Exists!1558 lambda!110627) (Exists!1558 lambda!110628))))

(declare-fun lt!1036605 () Unit!48935)

(declare-fun lt!1036602 () Regex!9278)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!243 (Regex!9278 List!35143) Unit!48935)

(assert (=> b!2973471 (= lt!1036605 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!243 lt!1036602 s!11993))))

(declare-datatypes ((tuple2!33894 0))(
  ( (tuple2!33895 (_1!20079 List!35143) (_2!20079 List!35143)) )
))
(declare-datatypes ((Option!6679 0))(
  ( (None!6678) (Some!6678 (v!34812 tuple2!33894)) )
))
(declare-fun isDefined!5230 (Option!6679) Bool)

(declare-fun findConcatSeparation!1073 (Regex!9278 Regex!9278 List!35143 List!35143 List!35143) Option!6679)

(assert (=> b!2973471 (= (isDefined!5230 (findConcatSeparation!1073 lt!1036602 lt!1036600 Nil!35019 s!11993 s!11993)) (Exists!1558 lambda!110627))))

(declare-fun lt!1036604 () Unit!48935)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!851 (Regex!9278 Regex!9278 List!35143) Unit!48935)

(assert (=> b!2973471 (= lt!1036604 (lemmaFindConcatSeparationEquivalentToExists!851 lt!1036602 lt!1036600 s!11993))))

(declare-fun b!2973472 () Bool)

(declare-fun e!1870698 () Bool)

(assert (=> b!2973472 (= e!1870699 (not e!1870698))))

(declare-fun res!1226063 () Bool)

(assert (=> b!2973472 (=> res!1226063 e!1870698)))

(declare-fun lt!1036599 () Bool)

(assert (=> b!2973472 (= res!1226063 (or lt!1036599 (is-Concat!14599 r!17423) (is-Union!9278 r!17423) (not (is-Star!9278 r!17423))))))

(assert (=> b!2973472 (= lt!1036599 (matchRSpec!1415 r!17423 s!11993))))

(declare-fun matchR!4160 (Regex!9278 List!35143) Bool)

(assert (=> b!2973472 (= lt!1036599 (matchR!4160 r!17423 s!11993))))

(declare-fun lt!1036601 () Unit!48935)

(assert (=> b!2973472 (= lt!1036601 (mainMatchTheorem!1415 r!17423 s!11993))))

(declare-fun b!2973473 () Bool)

(declare-fun e!1870697 () Bool)

(assert (=> b!2973473 (= e!1870697 e!1870702)))

(declare-fun res!1226065 () Bool)

(assert (=> b!2973473 (=> res!1226065 e!1870702)))

(assert (=> b!2973473 (= res!1226065 (not (matchR!4160 lt!1036600 s!11993)))))

(assert (=> b!2973473 (= lt!1036600 (Star!9278 lt!1036602))))

(declare-fun b!2973474 () Bool)

(declare-fun tp!947873 () Bool)

(assert (=> b!2973474 (= e!1870701 (and tp_is_empty!16119 tp!947873))))

(declare-fun b!2973475 () Bool)

(assert (=> b!2973475 (= e!1870698 e!1870697)))

(declare-fun res!1226061 () Bool)

(assert (=> b!2973475 (=> res!1226061 e!1870697)))

(declare-fun isEmptyLang!392 (Regex!9278) Bool)

(assert (=> b!2973475 (= res!1226061 (isEmptyLang!392 lt!1036602))))

(declare-fun simplify!279 (Regex!9278) Regex!9278)

(assert (=> b!2973475 (= lt!1036602 (simplify!279 (reg!9607 r!17423)))))

(assert (= (and start!287554 res!1226062) b!2973472))

(assert (= (and b!2973472 (not res!1226063)) b!2973475))

(assert (= (and b!2973475 (not res!1226061)) b!2973473))

(assert (= (and b!2973473 (not res!1226065)) b!2973468))

(assert (= (and b!2973468 (not res!1226064)) b!2973471))

(assert (= (and start!287554 (is-ElementMatch!9278 r!17423)) b!2973470))

(assert (= (and start!287554 (is-Concat!14599 r!17423)) b!2973466))

(assert (= (and start!287554 (is-Star!9278 r!17423)) b!2973467))

(assert (= (and start!287554 (is-Union!9278 r!17423)) b!2973469))

(assert (= (and start!287554 (is-Cons!35019 s!11993)) b!2973474))

(declare-fun m!3339057 () Bool)

(assert (=> b!2973471 m!3339057))

(declare-fun m!3339059 () Bool)

(assert (=> b!2973471 m!3339059))

(declare-fun m!3339061 () Bool)

(assert (=> b!2973471 m!3339061))

(declare-fun m!3339063 () Bool)

(assert (=> b!2973471 m!3339063))

(declare-fun m!3339065 () Bool)

(assert (=> b!2973471 m!3339065))

(assert (=> b!2973471 m!3339063))

(declare-fun m!3339067 () Bool)

(assert (=> b!2973471 m!3339067))

(assert (=> b!2973471 m!3339057))

(declare-fun m!3339069 () Bool)

(assert (=> b!2973471 m!3339069))

(declare-fun m!3339071 () Bool)

(assert (=> b!2973473 m!3339071))

(declare-fun m!3339073 () Bool)

(assert (=> b!2973475 m!3339073))

(declare-fun m!3339075 () Bool)

(assert (=> b!2973475 m!3339075))

(declare-fun m!3339077 () Bool)

(assert (=> b!2973472 m!3339077))

(declare-fun m!3339079 () Bool)

(assert (=> b!2973472 m!3339079))

(declare-fun m!3339081 () Bool)

(assert (=> b!2973472 m!3339081))

(declare-fun m!3339083 () Bool)

(assert (=> start!287554 m!3339083))

(declare-fun m!3339085 () Bool)

(assert (=> b!2973468 m!3339085))

(declare-fun m!3339087 () Bool)

(assert (=> b!2973468 m!3339087))

(declare-fun m!3339089 () Bool)

(assert (=> b!2973468 m!3339089))

(push 1)

(assert (not b!2973468))

(assert (not b!2973473))

(assert (not b!2973471))

(assert (not b!2973472))

(assert (not b!2973469))

(assert tp_is_empty!16119)

(assert (not b!2973475))

(assert (not b!2973474))

(assert (not b!2973467))

(assert (not start!287554))

(assert (not b!2973466))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2973546 () Bool)

(declare-fun e!1870744 () Bool)

(declare-fun lt!1036635 () Option!6679)

(declare-fun ++!8347 (List!35143 List!35143) List!35143)

(declare-fun get!10789 (Option!6679) tuple2!33894)

(assert (=> b!2973546 (= e!1870744 (= (++!8347 (_1!20079 (get!10789 lt!1036635)) (_2!20079 (get!10789 lt!1036635))) s!11993))))

(declare-fun d!842847 () Bool)

(declare-fun e!1870742 () Bool)

(assert (=> d!842847 e!1870742))

(declare-fun res!1226105 () Bool)

(assert (=> d!842847 (=> res!1226105 e!1870742)))

(assert (=> d!842847 (= res!1226105 e!1870744)))

(declare-fun res!1226107 () Bool)

(assert (=> d!842847 (=> (not res!1226107) (not e!1870744))))

(assert (=> d!842847 (= res!1226107 (isDefined!5230 lt!1036635))))

(declare-fun e!1870743 () Option!6679)

(assert (=> d!842847 (= lt!1036635 e!1870743)))

(declare-fun c!488041 () Bool)

(declare-fun e!1870741 () Bool)

(assert (=> d!842847 (= c!488041 e!1870741)))

(declare-fun res!1226108 () Bool)

(assert (=> d!842847 (=> (not res!1226108) (not e!1870741))))

(assert (=> d!842847 (= res!1226108 (matchR!4160 lt!1036602 Nil!35019))))

(assert (=> d!842847 (validRegex!4011 lt!1036602)))

(assert (=> d!842847 (= (findConcatSeparation!1073 lt!1036602 lt!1036600 Nil!35019 s!11993 s!11993) lt!1036635)))

(declare-fun b!2973547 () Bool)

(declare-fun e!1870740 () Option!6679)

(assert (=> b!2973547 (= e!1870743 e!1870740)))

(declare-fun c!488040 () Bool)

(assert (=> b!2973547 (= c!488040 (is-Nil!35019 s!11993))))

(declare-fun b!2973548 () Bool)

(declare-fun res!1226106 () Bool)

(assert (=> b!2973548 (=> (not res!1226106) (not e!1870744))))

(assert (=> b!2973548 (= res!1226106 (matchR!4160 lt!1036600 (_2!20079 (get!10789 lt!1036635))))))

(declare-fun b!2973549 () Bool)

(assert (=> b!2973549 (= e!1870743 (Some!6678 (tuple2!33895 Nil!35019 s!11993)))))

(declare-fun b!2973550 () Bool)

(declare-fun lt!1036634 () Unit!48935)

(declare-fun lt!1036633 () Unit!48935)

(assert (=> b!2973550 (= lt!1036634 lt!1036633)))

(assert (=> b!2973550 (= (++!8347 (++!8347 Nil!35019 (Cons!35019 (h!40439 s!11993) Nil!35019)) (t!234208 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!966 (List!35143 C!18742 List!35143 List!35143) Unit!48935)

(assert (=> b!2973550 (= lt!1036633 (lemmaMoveElementToOtherListKeepsConcatEq!966 Nil!35019 (h!40439 s!11993) (t!234208 s!11993) s!11993))))

(assert (=> b!2973550 (= e!1870740 (findConcatSeparation!1073 lt!1036602 lt!1036600 (++!8347 Nil!35019 (Cons!35019 (h!40439 s!11993) Nil!35019)) (t!234208 s!11993) s!11993))))

(declare-fun b!2973551 () Bool)

(assert (=> b!2973551 (= e!1870741 (matchR!4160 lt!1036600 s!11993))))

(declare-fun b!2973552 () Bool)

(assert (=> b!2973552 (= e!1870740 None!6678)))

(declare-fun b!2973553 () Bool)

(assert (=> b!2973553 (= e!1870742 (not (isDefined!5230 lt!1036635)))))

(declare-fun b!2973554 () Bool)

(declare-fun res!1226109 () Bool)

(assert (=> b!2973554 (=> (not res!1226109) (not e!1870744))))

(assert (=> b!2973554 (= res!1226109 (matchR!4160 lt!1036602 (_1!20079 (get!10789 lt!1036635))))))

(assert (= (and d!842847 res!1226108) b!2973551))

(assert (= (and d!842847 c!488041) b!2973549))

(assert (= (and d!842847 (not c!488041)) b!2973547))

(assert (= (and b!2973547 c!488040) b!2973552))

(assert (= (and b!2973547 (not c!488040)) b!2973550))

(assert (= (and d!842847 res!1226107) b!2973554))

(assert (= (and b!2973554 res!1226109) b!2973548))

(assert (= (and b!2973548 res!1226106) b!2973546))

(assert (= (and d!842847 (not res!1226105)) b!2973553))

(declare-fun m!3339125 () Bool)

(assert (=> b!2973553 m!3339125))

(assert (=> d!842847 m!3339125))

(declare-fun m!3339127 () Bool)

(assert (=> d!842847 m!3339127))

(declare-fun m!3339129 () Bool)

(assert (=> d!842847 m!3339129))

(declare-fun m!3339131 () Bool)

(assert (=> b!2973548 m!3339131))

(declare-fun m!3339133 () Bool)

(assert (=> b!2973548 m!3339133))

(assert (=> b!2973546 m!3339131))

(declare-fun m!3339135 () Bool)

(assert (=> b!2973546 m!3339135))

(assert (=> b!2973551 m!3339071))

(declare-fun m!3339137 () Bool)

(assert (=> b!2973550 m!3339137))

(assert (=> b!2973550 m!3339137))

(declare-fun m!3339139 () Bool)

(assert (=> b!2973550 m!3339139))

(declare-fun m!3339141 () Bool)

(assert (=> b!2973550 m!3339141))

(assert (=> b!2973550 m!3339137))

(declare-fun m!3339143 () Bool)

(assert (=> b!2973550 m!3339143))

(assert (=> b!2973554 m!3339131))

(declare-fun m!3339145 () Bool)

(assert (=> b!2973554 m!3339145))

(assert (=> b!2973471 d!842847))

(declare-fun bs!526572 () Bool)

(declare-fun d!842853 () Bool)

(assert (= bs!526572 (and d!842853 b!2973471)))

(declare-fun lambda!110641 () Int)

(assert (=> bs!526572 (= (= (Star!9278 lt!1036602) lt!1036600) (= lambda!110641 lambda!110627))))

(assert (=> bs!526572 (not (= lambda!110641 lambda!110628))))

(assert (=> d!842853 true))

(assert (=> d!842853 true))

(declare-fun lambda!110642 () Int)

(assert (=> bs!526572 (not (= lambda!110642 lambda!110627))))

(assert (=> bs!526572 (= (= (Star!9278 lt!1036602) lt!1036600) (= lambda!110642 lambda!110628))))

(declare-fun bs!526573 () Bool)

(assert (= bs!526573 d!842853))

(assert (=> bs!526573 (not (= lambda!110642 lambda!110641))))

(assert (=> d!842853 true))

(assert (=> d!842853 true))

(assert (=> d!842853 (= (Exists!1558 lambda!110641) (Exists!1558 lambda!110642))))

(declare-fun lt!1036638 () Unit!48935)

(declare-fun choose!17578 (Regex!9278 List!35143) Unit!48935)

(assert (=> d!842853 (= lt!1036638 (choose!17578 lt!1036602 s!11993))))

(assert (=> d!842853 (validRegex!4011 lt!1036602)))

(assert (=> d!842853 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!243 lt!1036602 s!11993) lt!1036638)))

(declare-fun m!3339147 () Bool)

(assert (=> bs!526573 m!3339147))

(declare-fun m!3339149 () Bool)

(assert (=> bs!526573 m!3339149))

(declare-fun m!3339151 () Bool)

(assert (=> bs!526573 m!3339151))

(assert (=> bs!526573 m!3339129))

(assert (=> b!2973471 d!842853))

(declare-fun bs!526574 () Bool)

(declare-fun d!842855 () Bool)

(assert (= bs!526574 (and d!842855 b!2973471)))

(declare-fun lambda!110647 () Int)

(assert (=> bs!526574 (= lambda!110647 lambda!110627)))

(assert (=> bs!526574 (not (= lambda!110647 lambda!110628))))

(declare-fun bs!526575 () Bool)

(assert (= bs!526575 (and d!842855 d!842853)))

(assert (=> bs!526575 (= (= lt!1036600 (Star!9278 lt!1036602)) (= lambda!110647 lambda!110641))))

(assert (=> bs!526575 (not (= lambda!110647 lambda!110642))))

(assert (=> d!842855 true))

(assert (=> d!842855 true))

(assert (=> d!842855 true))

(assert (=> d!842855 (= (isDefined!5230 (findConcatSeparation!1073 lt!1036602 lt!1036600 Nil!35019 s!11993 s!11993)) (Exists!1558 lambda!110647))))

(declare-fun lt!1036641 () Unit!48935)

(declare-fun choose!17579 (Regex!9278 Regex!9278 List!35143) Unit!48935)

(assert (=> d!842855 (= lt!1036641 (choose!17579 lt!1036602 lt!1036600 s!11993))))

(assert (=> d!842855 (validRegex!4011 lt!1036602)))

(assert (=> d!842855 (= (lemmaFindConcatSeparationEquivalentToExists!851 lt!1036602 lt!1036600 s!11993) lt!1036641)))

(declare-fun bs!526576 () Bool)

(assert (= bs!526576 d!842855))

(declare-fun m!3339153 () Bool)

(assert (=> bs!526576 m!3339153))

(assert (=> bs!526576 m!3339129))

(declare-fun m!3339155 () Bool)

(assert (=> bs!526576 m!3339155))

(assert (=> bs!526576 m!3339063))

(assert (=> bs!526576 m!3339063))

(assert (=> bs!526576 m!3339067))

(assert (=> b!2973471 d!842855))

(declare-fun d!842857 () Bool)

(declare-fun choose!17580 (Int) Bool)

(assert (=> d!842857 (= (Exists!1558 lambda!110627) (choose!17580 lambda!110627))))

(declare-fun bs!526577 () Bool)

(assert (= bs!526577 d!842857))

(declare-fun m!3339157 () Bool)

(assert (=> bs!526577 m!3339157))

(assert (=> b!2973471 d!842857))

(declare-fun c!488055 () Bool)

(declare-fun c!488054 () Bool)

(declare-fun bm!198138 () Bool)

(declare-fun call!198145 () Bool)

(assert (=> bm!198138 (= call!198145 (validRegex!4011 (ite c!488054 (reg!9607 (reg!9607 r!17423)) (ite c!488055 (regTwo!19069 (reg!9607 r!17423)) (regOne!19068 (reg!9607 r!17423))))))))

(declare-fun b!2973619 () Bool)

(declare-fun e!1870787 () Bool)

(declare-fun call!198144 () Bool)

(assert (=> b!2973619 (= e!1870787 call!198144)))

(declare-fun b!2973620 () Bool)

(declare-fun e!1870785 () Bool)

(assert (=> b!2973620 (= e!1870785 call!198145)))

(declare-fun b!2973621 () Bool)

(declare-fun e!1870788 () Bool)

(assert (=> b!2973621 (= e!1870788 e!1870785)))

(declare-fun res!1226153 () Bool)

(declare-fun nullable!2971 (Regex!9278) Bool)

(assert (=> b!2973621 (= res!1226153 (not (nullable!2971 (reg!9607 (reg!9607 r!17423)))))))

(assert (=> b!2973621 (=> (not res!1226153) (not e!1870785))))

(declare-fun d!842859 () Bool)

(declare-fun res!1226152 () Bool)

(declare-fun e!1870783 () Bool)

(assert (=> d!842859 (=> res!1226152 e!1870783)))

(assert (=> d!842859 (= res!1226152 (is-ElementMatch!9278 (reg!9607 r!17423)))))

(assert (=> d!842859 (= (validRegex!4011 (reg!9607 r!17423)) e!1870783)))

(declare-fun b!2973622 () Bool)

(declare-fun e!1870789 () Bool)

(assert (=> b!2973622 (= e!1870788 e!1870789)))

(assert (=> b!2973622 (= c!488055 (is-Union!9278 (reg!9607 r!17423)))))

(declare-fun b!2973623 () Bool)

(declare-fun e!1870784 () Bool)

(declare-fun call!198143 () Bool)

(assert (=> b!2973623 (= e!1870784 call!198143)))

(declare-fun b!2973624 () Bool)

(assert (=> b!2973624 (= e!1870783 e!1870788)))

(assert (=> b!2973624 (= c!488054 (is-Star!9278 (reg!9607 r!17423)))))

(declare-fun bm!198139 () Bool)

(assert (=> bm!198139 (= call!198143 (validRegex!4011 (ite c!488055 (regOne!19069 (reg!9607 r!17423)) (regTwo!19068 (reg!9607 r!17423)))))))

(declare-fun bm!198140 () Bool)

(assert (=> bm!198140 (= call!198144 call!198145)))

(declare-fun b!2973625 () Bool)

(declare-fun e!1870786 () Bool)

(assert (=> b!2973625 (= e!1870786 e!1870784)))

(declare-fun res!1226150 () Bool)

(assert (=> b!2973625 (=> (not res!1226150) (not e!1870784))))

(assert (=> b!2973625 (= res!1226150 call!198144)))

(declare-fun b!2973626 () Bool)

(declare-fun res!1226151 () Bool)

(assert (=> b!2973626 (=> (not res!1226151) (not e!1870787))))

(assert (=> b!2973626 (= res!1226151 call!198143)))

(assert (=> b!2973626 (= e!1870789 e!1870787)))

(declare-fun b!2973627 () Bool)

(declare-fun res!1226154 () Bool)

(assert (=> b!2973627 (=> res!1226154 e!1870786)))

(assert (=> b!2973627 (= res!1226154 (not (is-Concat!14599 (reg!9607 r!17423))))))

(assert (=> b!2973627 (= e!1870789 e!1870786)))

(assert (= (and d!842859 (not res!1226152)) b!2973624))

(assert (= (and b!2973624 c!488054) b!2973621))

(assert (= (and b!2973624 (not c!488054)) b!2973622))

(assert (= (and b!2973621 res!1226153) b!2973620))

(assert (= (and b!2973622 c!488055) b!2973626))

(assert (= (and b!2973622 (not c!488055)) b!2973627))

(assert (= (and b!2973626 res!1226151) b!2973619))

(assert (= (and b!2973627 (not res!1226154)) b!2973625))

(assert (= (and b!2973625 res!1226150) b!2973623))

(assert (= (or b!2973626 b!2973623) bm!198139))

(assert (= (or b!2973619 b!2973625) bm!198140))

(assert (= (or b!2973620 bm!198140) bm!198138))

(declare-fun m!3339159 () Bool)

(assert (=> bm!198138 m!3339159))

(declare-fun m!3339161 () Bool)

(assert (=> b!2973621 m!3339161))

(declare-fun m!3339163 () Bool)

(assert (=> bm!198139 m!3339163))

(assert (=> b!2973471 d!842859))

(declare-fun d!842861 () Bool)

(declare-fun isEmpty!19258 (Option!6679) Bool)

(assert (=> d!842861 (= (isDefined!5230 (findConcatSeparation!1073 lt!1036602 lt!1036600 Nil!35019 s!11993 s!11993)) (not (isEmpty!19258 (findConcatSeparation!1073 lt!1036602 lt!1036600 Nil!35019 s!11993 s!11993))))))

(declare-fun bs!526578 () Bool)

(assert (= bs!526578 d!842861))

(assert (=> bs!526578 m!3339063))

(declare-fun m!3339165 () Bool)

(assert (=> bs!526578 m!3339165))

(assert (=> b!2973471 d!842861))

(declare-fun d!842863 () Bool)

(assert (=> d!842863 (= (Exists!1558 lambda!110628) (choose!17580 lambda!110628))))

(declare-fun bs!526579 () Bool)

(assert (= bs!526579 d!842863))

(declare-fun m!3339167 () Bool)

(assert (=> bs!526579 m!3339167))

(assert (=> b!2973471 d!842863))

(declare-fun bs!526583 () Bool)

(declare-fun b!2973672 () Bool)

(assert (= bs!526583 (and b!2973672 d!842853)))

(declare-fun lambda!110656 () Int)

(assert (=> bs!526583 (not (= lambda!110656 lambda!110641))))

(declare-fun bs!526584 () Bool)

(assert (= bs!526584 (and b!2973672 b!2973471)))

(assert (=> bs!526584 (= (and (= (reg!9607 r!17423) lt!1036602) (= r!17423 lt!1036600)) (= lambda!110656 lambda!110628))))

(assert (=> bs!526584 (not (= lambda!110656 lambda!110627))))

(declare-fun bs!526585 () Bool)

(assert (= bs!526585 (and b!2973672 d!842855)))

(assert (=> bs!526585 (not (= lambda!110656 lambda!110647))))

(assert (=> bs!526583 (= (and (= (reg!9607 r!17423) lt!1036602) (= r!17423 (Star!9278 lt!1036602))) (= lambda!110656 lambda!110642))))

(assert (=> b!2973672 true))

(assert (=> b!2973672 true))

(declare-fun bs!526586 () Bool)

(declare-fun b!2973679 () Bool)

(assert (= bs!526586 (and b!2973679 d!842853)))

(declare-fun lambda!110657 () Int)

(assert (=> bs!526586 (not (= lambda!110657 lambda!110641))))

(declare-fun bs!526587 () Bool)

(assert (= bs!526587 (and b!2973679 b!2973471)))

(assert (=> bs!526587 (not (= lambda!110657 lambda!110628))))

(assert (=> bs!526587 (not (= lambda!110657 lambda!110627))))

(declare-fun bs!526588 () Bool)

(assert (= bs!526588 (and b!2973679 d!842855)))

(assert (=> bs!526588 (not (= lambda!110657 lambda!110647))))

(declare-fun bs!526589 () Bool)

(assert (= bs!526589 (and b!2973679 b!2973672)))

(assert (=> bs!526589 (not (= lambda!110657 lambda!110656))))

(assert (=> bs!526586 (not (= lambda!110657 lambda!110642))))

(assert (=> b!2973679 true))

(assert (=> b!2973679 true))

(declare-fun b!2973671 () Bool)

(declare-fun c!488068 () Bool)

(assert (=> b!2973671 (= c!488068 (is-ElementMatch!9278 r!17423))))

(declare-fun e!1870821 () Bool)

(declare-fun e!1870820 () Bool)

(assert (=> b!2973671 (= e!1870821 e!1870820)))

(declare-fun bm!198149 () Bool)

(declare-fun call!198155 () Bool)

(assert (=> bm!198149 (= call!198155 (isEmpty!19256 s!11993))))

(declare-fun e!1870818 () Bool)

(declare-fun call!198154 () Bool)

(assert (=> b!2973672 (= e!1870818 call!198154)))

(declare-fun d!842865 () Bool)

(declare-fun c!488070 () Bool)

(assert (=> d!842865 (= c!488070 (is-EmptyExpr!9278 r!17423))))

(declare-fun e!1870819 () Bool)

(assert (=> d!842865 (= (matchRSpec!1415 r!17423 s!11993) e!1870819)))

(declare-fun b!2973673 () Bool)

(assert (=> b!2973673 (= e!1870819 e!1870821)))

(declare-fun res!1226176 () Bool)

(assert (=> b!2973673 (= res!1226176 (not (is-EmptyLang!9278 r!17423)))))

(assert (=> b!2973673 (=> (not res!1226176) (not e!1870821))))

(declare-fun c!488069 () Bool)

(declare-fun bm!198150 () Bool)

(assert (=> bm!198150 (= call!198154 (Exists!1558 (ite c!488069 lambda!110656 lambda!110657)))))

(declare-fun b!2973674 () Bool)

(declare-fun e!1870815 () Bool)

(declare-fun e!1870817 () Bool)

(assert (=> b!2973674 (= e!1870815 e!1870817)))

(declare-fun res!1226175 () Bool)

(assert (=> b!2973674 (= res!1226175 (matchRSpec!1415 (regOne!19069 r!17423) s!11993))))

(assert (=> b!2973674 (=> res!1226175 e!1870817)))

(declare-fun b!2973675 () Bool)

(declare-fun res!1226174 () Bool)

(assert (=> b!2973675 (=> res!1226174 e!1870818)))

(assert (=> b!2973675 (= res!1226174 call!198155)))

(declare-fun e!1870816 () Bool)

(assert (=> b!2973675 (= e!1870816 e!1870818)))

(declare-fun b!2973676 () Bool)

(assert (=> b!2973676 (= e!1870815 e!1870816)))

(assert (=> b!2973676 (= c!488069 (is-Star!9278 r!17423))))

(declare-fun b!2973677 () Bool)

(assert (=> b!2973677 (= e!1870817 (matchRSpec!1415 (regTwo!19069 r!17423) s!11993))))

(declare-fun b!2973678 () Bool)

(declare-fun c!488071 () Bool)

(assert (=> b!2973678 (= c!488071 (is-Union!9278 r!17423))))

(assert (=> b!2973678 (= e!1870820 e!1870815)))

(assert (=> b!2973679 (= e!1870816 call!198154)))

(declare-fun b!2973680 () Bool)

(assert (=> b!2973680 (= e!1870820 (= s!11993 (Cons!35019 (c!488034 r!17423) Nil!35019)))))

(declare-fun b!2973681 () Bool)

(assert (=> b!2973681 (= e!1870819 call!198155)))

(assert (= (and d!842865 c!488070) b!2973681))

(assert (= (and d!842865 (not c!488070)) b!2973673))

(assert (= (and b!2973673 res!1226176) b!2973671))

(assert (= (and b!2973671 c!488068) b!2973680))

(assert (= (and b!2973671 (not c!488068)) b!2973678))

(assert (= (and b!2973678 c!488071) b!2973674))

(assert (= (and b!2973678 (not c!488071)) b!2973676))

(assert (= (and b!2973674 (not res!1226175)) b!2973677))

(assert (= (and b!2973676 c!488069) b!2973675))

(assert (= (and b!2973676 (not c!488069)) b!2973679))

(assert (= (and b!2973675 (not res!1226174)) b!2973672))

(assert (= (or b!2973672 b!2973679) bm!198150))

(assert (= (or b!2973681 b!2973675) bm!198149))

(assert (=> bm!198149 m!3339085))

(declare-fun m!3339175 () Bool)

(assert (=> bm!198150 m!3339175))

(declare-fun m!3339177 () Bool)

(assert (=> b!2973674 m!3339177))

(declare-fun m!3339179 () Bool)

(assert (=> b!2973677 m!3339179))

(assert (=> b!2973472 d!842865))

(declare-fun b!2973710 () Bool)

(declare-fun e!1870836 () Bool)

(assert (=> b!2973710 (= e!1870836 (nullable!2971 r!17423))))

(declare-fun bm!198153 () Bool)

(declare-fun call!198158 () Bool)

(assert (=> bm!198153 (= call!198158 (isEmpty!19256 s!11993))))

(declare-fun b!2973711 () Bool)

(declare-fun e!1870837 () Bool)

(declare-fun e!1870840 () Bool)

(assert (=> b!2973711 (= e!1870837 e!1870840)))

(declare-fun res!1226198 () Bool)

(assert (=> b!2973711 (=> res!1226198 e!1870840)))

(assert (=> b!2973711 (= res!1226198 call!198158)))

(declare-fun b!2973712 () Bool)

(declare-fun e!1870839 () Bool)

(assert (=> b!2973712 (= e!1870839 e!1870837)))

(declare-fun res!1226195 () Bool)

(assert (=> b!2973712 (=> (not res!1226195) (not e!1870837))))

(declare-fun lt!1036647 () Bool)

(assert (=> b!2973712 (= res!1226195 (not lt!1036647))))

(declare-fun b!2973713 () Bool)

(declare-fun res!1226197 () Bool)

(assert (=> b!2973713 (=> res!1226197 e!1870840)))

(declare-fun tail!4857 (List!35143) List!35143)

(assert (=> b!2973713 (= res!1226197 (not (isEmpty!19256 (tail!4857 s!11993))))))

(declare-fun d!842869 () Bool)

(declare-fun e!1870842 () Bool)

(assert (=> d!842869 e!1870842))

(declare-fun c!488078 () Bool)

(assert (=> d!842869 (= c!488078 (is-EmptyExpr!9278 r!17423))))

(assert (=> d!842869 (= lt!1036647 e!1870836)))

(declare-fun c!488080 () Bool)

(assert (=> d!842869 (= c!488080 (isEmpty!19256 s!11993))))

(assert (=> d!842869 (validRegex!4011 r!17423)))

(assert (=> d!842869 (= (matchR!4160 r!17423 s!11993) lt!1036647)))

(declare-fun b!2973714 () Bool)

(declare-fun res!1226194 () Bool)

(declare-fun e!1870841 () Bool)

(assert (=> b!2973714 (=> (not res!1226194) (not e!1870841))))

(assert (=> b!2973714 (= res!1226194 (not call!198158))))

(declare-fun b!2973715 () Bool)

(declare-fun head!6631 (List!35143) C!18742)

(assert (=> b!2973715 (= e!1870840 (not (= (head!6631 s!11993) (c!488034 r!17423))))))

(declare-fun b!2973716 () Bool)

(assert (=> b!2973716 (= e!1870842 (= lt!1036647 call!198158))))

(declare-fun b!2973717 () Bool)

(declare-fun res!1226200 () Bool)

(assert (=> b!2973717 (=> res!1226200 e!1870839)))

(assert (=> b!2973717 (= res!1226200 (not (is-ElementMatch!9278 r!17423)))))

(declare-fun e!1870838 () Bool)

(assert (=> b!2973717 (= e!1870838 e!1870839)))

(declare-fun b!2973718 () Bool)

(declare-fun res!1226199 () Bool)

(assert (=> b!2973718 (=> res!1226199 e!1870839)))

(assert (=> b!2973718 (= res!1226199 e!1870841)))

(declare-fun res!1226193 () Bool)

(assert (=> b!2973718 (=> (not res!1226193) (not e!1870841))))

(assert (=> b!2973718 (= res!1226193 lt!1036647)))

(declare-fun b!2973719 () Bool)

(declare-fun derivativeStep!2572 (Regex!9278 C!18742) Regex!9278)

(assert (=> b!2973719 (= e!1870836 (matchR!4160 (derivativeStep!2572 r!17423 (head!6631 s!11993)) (tail!4857 s!11993)))))

(declare-fun b!2973720 () Bool)

(assert (=> b!2973720 (= e!1870842 e!1870838)))

(declare-fun c!488079 () Bool)

(assert (=> b!2973720 (= c!488079 (is-EmptyLang!9278 r!17423))))

(declare-fun b!2973721 () Bool)

(assert (=> b!2973721 (= e!1870841 (= (head!6631 s!11993) (c!488034 r!17423)))))

(declare-fun b!2973722 () Bool)

(declare-fun res!1226196 () Bool)

(assert (=> b!2973722 (=> (not res!1226196) (not e!1870841))))

(assert (=> b!2973722 (= res!1226196 (isEmpty!19256 (tail!4857 s!11993)))))

(declare-fun b!2973723 () Bool)

(assert (=> b!2973723 (= e!1870838 (not lt!1036647))))

(assert (= (and d!842869 c!488080) b!2973710))

(assert (= (and d!842869 (not c!488080)) b!2973719))

(assert (= (and d!842869 c!488078) b!2973716))

(assert (= (and d!842869 (not c!488078)) b!2973720))

(assert (= (and b!2973720 c!488079) b!2973723))

(assert (= (and b!2973720 (not c!488079)) b!2973717))

(assert (= (and b!2973717 (not res!1226200)) b!2973718))

(assert (= (and b!2973718 res!1226193) b!2973714))

(assert (= (and b!2973714 res!1226194) b!2973722))

(assert (= (and b!2973722 res!1226196) b!2973721))

(assert (= (and b!2973718 (not res!1226199)) b!2973712))

(assert (= (and b!2973712 res!1226195) b!2973711))

(assert (= (and b!2973711 (not res!1226198)) b!2973713))

(assert (= (and b!2973713 (not res!1226197)) b!2973715))

(assert (= (or b!2973716 b!2973711 b!2973714) bm!198153))

(declare-fun m!3339185 () Bool)

(assert (=> b!2973721 m!3339185))

(declare-fun m!3339187 () Bool)

(assert (=> b!2973713 m!3339187))

(assert (=> b!2973713 m!3339187))

(declare-fun m!3339189 () Bool)

(assert (=> b!2973713 m!3339189))

(declare-fun m!3339191 () Bool)

(assert (=> b!2973710 m!3339191))

(assert (=> d!842869 m!3339085))

(assert (=> d!842869 m!3339083))

(assert (=> b!2973715 m!3339185))

(assert (=> bm!198153 m!3339085))

(assert (=> b!2973719 m!3339185))

(assert (=> b!2973719 m!3339185))

(declare-fun m!3339193 () Bool)

(assert (=> b!2973719 m!3339193))

(assert (=> b!2973719 m!3339187))

(assert (=> b!2973719 m!3339193))

(assert (=> b!2973719 m!3339187))

(declare-fun m!3339195 () Bool)

(assert (=> b!2973719 m!3339195))

(assert (=> b!2973722 m!3339187))

(assert (=> b!2973722 m!3339187))

(assert (=> b!2973722 m!3339189))

(assert (=> b!2973472 d!842869))

(declare-fun d!842873 () Bool)

(assert (=> d!842873 (= (matchR!4160 r!17423 s!11993) (matchRSpec!1415 r!17423 s!11993))))

(declare-fun lt!1036650 () Unit!48935)

(declare-fun choose!17581 (Regex!9278 List!35143) Unit!48935)

(assert (=> d!842873 (= lt!1036650 (choose!17581 r!17423 s!11993))))

(assert (=> d!842873 (validRegex!4011 r!17423)))

(assert (=> d!842873 (= (mainMatchTheorem!1415 r!17423 s!11993) lt!1036650)))

(declare-fun bs!526591 () Bool)

(assert (= bs!526591 d!842873))

(assert (=> bs!526591 m!3339079))

(assert (=> bs!526591 m!3339077))

(declare-fun m!3339197 () Bool)

(assert (=> bs!526591 m!3339197))

(assert (=> bs!526591 m!3339083))

(assert (=> b!2973472 d!842873))

(declare-fun b!2973742 () Bool)

(declare-fun e!1870857 () Bool)

(assert (=> b!2973742 (= e!1870857 (nullable!2971 lt!1036600))))

(declare-fun bm!198160 () Bool)

(declare-fun call!198165 () Bool)

(assert (=> bm!198160 (= call!198165 (isEmpty!19256 s!11993))))

(declare-fun b!2973743 () Bool)

(declare-fun e!1870858 () Bool)

(declare-fun e!1870861 () Bool)

(assert (=> b!2973743 (= e!1870858 e!1870861)))

(declare-fun res!1226216 () Bool)

(assert (=> b!2973743 (=> res!1226216 e!1870861)))

(assert (=> b!2973743 (= res!1226216 call!198165)))

(declare-fun b!2973744 () Bool)

(declare-fun e!1870860 () Bool)

(assert (=> b!2973744 (= e!1870860 e!1870858)))

(declare-fun res!1226213 () Bool)

(assert (=> b!2973744 (=> (not res!1226213) (not e!1870858))))

(declare-fun lt!1036651 () Bool)

(assert (=> b!2973744 (= res!1226213 (not lt!1036651))))

(declare-fun b!2973745 () Bool)

(declare-fun res!1226215 () Bool)

(assert (=> b!2973745 (=> res!1226215 e!1870861)))

(assert (=> b!2973745 (= res!1226215 (not (isEmpty!19256 (tail!4857 s!11993))))))

(declare-fun d!842875 () Bool)

(declare-fun e!1870863 () Bool)

(assert (=> d!842875 e!1870863))

(declare-fun c!488085 () Bool)

(assert (=> d!842875 (= c!488085 (is-EmptyExpr!9278 lt!1036600))))

(assert (=> d!842875 (= lt!1036651 e!1870857)))

(declare-fun c!488087 () Bool)

(assert (=> d!842875 (= c!488087 (isEmpty!19256 s!11993))))

(assert (=> d!842875 (validRegex!4011 lt!1036600)))

(assert (=> d!842875 (= (matchR!4160 lt!1036600 s!11993) lt!1036651)))

(declare-fun b!2973746 () Bool)

(declare-fun res!1226212 () Bool)

(declare-fun e!1870862 () Bool)

(assert (=> b!2973746 (=> (not res!1226212) (not e!1870862))))

(assert (=> b!2973746 (= res!1226212 (not call!198165))))

(declare-fun b!2973747 () Bool)

(assert (=> b!2973747 (= e!1870861 (not (= (head!6631 s!11993) (c!488034 lt!1036600))))))

(declare-fun b!2973748 () Bool)

(assert (=> b!2973748 (= e!1870863 (= lt!1036651 call!198165))))

(declare-fun b!2973749 () Bool)

(declare-fun res!1226218 () Bool)

(assert (=> b!2973749 (=> res!1226218 e!1870860)))

(assert (=> b!2973749 (= res!1226218 (not (is-ElementMatch!9278 lt!1036600)))))

(declare-fun e!1870859 () Bool)

(assert (=> b!2973749 (= e!1870859 e!1870860)))

(declare-fun b!2973750 () Bool)

(declare-fun res!1226217 () Bool)

(assert (=> b!2973750 (=> res!1226217 e!1870860)))

(assert (=> b!2973750 (= res!1226217 e!1870862)))

(declare-fun res!1226211 () Bool)

(assert (=> b!2973750 (=> (not res!1226211) (not e!1870862))))

(assert (=> b!2973750 (= res!1226211 lt!1036651)))

(declare-fun b!2973751 () Bool)

(assert (=> b!2973751 (= e!1870857 (matchR!4160 (derivativeStep!2572 lt!1036600 (head!6631 s!11993)) (tail!4857 s!11993)))))

(declare-fun b!2973752 () Bool)

(assert (=> b!2973752 (= e!1870863 e!1870859)))

(declare-fun c!488086 () Bool)

(assert (=> b!2973752 (= c!488086 (is-EmptyLang!9278 lt!1036600))))

(declare-fun b!2973753 () Bool)

(assert (=> b!2973753 (= e!1870862 (= (head!6631 s!11993) (c!488034 lt!1036600)))))

(declare-fun b!2973754 () Bool)

(declare-fun res!1226214 () Bool)

(assert (=> b!2973754 (=> (not res!1226214) (not e!1870862))))

(assert (=> b!2973754 (= res!1226214 (isEmpty!19256 (tail!4857 s!11993)))))

(declare-fun b!2973755 () Bool)

(assert (=> b!2973755 (= e!1870859 (not lt!1036651))))

(assert (= (and d!842875 c!488087) b!2973742))

(assert (= (and d!842875 (not c!488087)) b!2973751))

(assert (= (and d!842875 c!488085) b!2973748))

(assert (= (and d!842875 (not c!488085)) b!2973752))

(assert (= (and b!2973752 c!488086) b!2973755))

(assert (= (and b!2973752 (not c!488086)) b!2973749))

(assert (= (and b!2973749 (not res!1226218)) b!2973750))

(assert (= (and b!2973750 res!1226211) b!2973746))

(assert (= (and b!2973746 res!1226212) b!2973754))

(assert (= (and b!2973754 res!1226214) b!2973753))

(assert (= (and b!2973750 (not res!1226217)) b!2973744))

(assert (= (and b!2973744 res!1226213) b!2973743))

(assert (= (and b!2973743 (not res!1226216)) b!2973745))

(assert (= (and b!2973745 (not res!1226215)) b!2973747))

(assert (= (or b!2973748 b!2973743 b!2973746) bm!198160))

(assert (=> b!2973753 m!3339185))

(assert (=> b!2973745 m!3339187))

(assert (=> b!2973745 m!3339187))

(assert (=> b!2973745 m!3339189))

(declare-fun m!3339199 () Bool)

(assert (=> b!2973742 m!3339199))

(assert (=> d!842875 m!3339085))

(declare-fun m!3339201 () Bool)

(assert (=> d!842875 m!3339201))

(assert (=> b!2973747 m!3339185))

(assert (=> bm!198160 m!3339085))

(assert (=> b!2973751 m!3339185))

(assert (=> b!2973751 m!3339185))

(declare-fun m!3339203 () Bool)

(assert (=> b!2973751 m!3339203))

(assert (=> b!2973751 m!3339187))

(assert (=> b!2973751 m!3339203))

(assert (=> b!2973751 m!3339187))

(declare-fun m!3339205 () Bool)

(assert (=> b!2973751 m!3339205))

(assert (=> b!2973754 m!3339187))

(assert (=> b!2973754 m!3339187))

(assert (=> b!2973754 m!3339189))

(assert (=> b!2973473 d!842875))

(declare-fun d!842877 () Bool)

(assert (=> d!842877 (= (isEmpty!19256 s!11993) (is-Nil!35019 s!11993))))

(assert (=> b!2973468 d!842877))

(declare-fun bs!526592 () Bool)

(declare-fun b!2973757 () Bool)

(assert (= bs!526592 (and b!2973757 d!842853)))

(declare-fun lambda!110658 () Int)

(assert (=> bs!526592 (not (= lambda!110658 lambda!110641))))

(declare-fun bs!526593 () Bool)

(assert (= bs!526593 (and b!2973757 b!2973471)))

(assert (=> bs!526593 (= (= (reg!9607 lt!1036600) lt!1036602) (= lambda!110658 lambda!110628))))

(assert (=> bs!526593 (not (= lambda!110658 lambda!110627))))

(declare-fun bs!526594 () Bool)

(assert (= bs!526594 (and b!2973757 b!2973679)))

(assert (=> bs!526594 (not (= lambda!110658 lambda!110657))))

(declare-fun bs!526595 () Bool)

(assert (= bs!526595 (and b!2973757 d!842855)))

(assert (=> bs!526595 (not (= lambda!110658 lambda!110647))))

(declare-fun bs!526596 () Bool)

(assert (= bs!526596 (and b!2973757 b!2973672)))

(assert (=> bs!526596 (= (and (= (reg!9607 lt!1036600) (reg!9607 r!17423)) (= lt!1036600 r!17423)) (= lambda!110658 lambda!110656))))

(assert (=> bs!526592 (= (and (= (reg!9607 lt!1036600) lt!1036602) (= lt!1036600 (Star!9278 lt!1036602))) (= lambda!110658 lambda!110642))))

(assert (=> b!2973757 true))

(assert (=> b!2973757 true))

(declare-fun bs!526597 () Bool)

(declare-fun b!2973764 () Bool)

(assert (= bs!526597 (and b!2973764 d!842853)))

(declare-fun lambda!110659 () Int)

(assert (=> bs!526597 (not (= lambda!110659 lambda!110641))))

(declare-fun bs!526598 () Bool)

(assert (= bs!526598 (and b!2973764 b!2973471)))

(assert (=> bs!526598 (not (= lambda!110659 lambda!110628))))

(assert (=> bs!526598 (not (= lambda!110659 lambda!110627))))

(declare-fun bs!526599 () Bool)

(assert (= bs!526599 (and b!2973764 b!2973679)))

(assert (=> bs!526599 (= (and (= (regOne!19068 lt!1036600) (regOne!19068 r!17423)) (= (regTwo!19068 lt!1036600) (regTwo!19068 r!17423))) (= lambda!110659 lambda!110657))))

(declare-fun bs!526600 () Bool)

(assert (= bs!526600 (and b!2973764 d!842855)))

(assert (=> bs!526600 (not (= lambda!110659 lambda!110647))))

(declare-fun bs!526601 () Bool)

(assert (= bs!526601 (and b!2973764 b!2973672)))

(assert (=> bs!526601 (not (= lambda!110659 lambda!110656))))

(declare-fun bs!526602 () Bool)

(assert (= bs!526602 (and b!2973764 b!2973757)))

(assert (=> bs!526602 (not (= lambda!110659 lambda!110658))))

(assert (=> bs!526597 (not (= lambda!110659 lambda!110642))))

(assert (=> b!2973764 true))

(assert (=> b!2973764 true))

(declare-fun b!2973756 () Bool)

(declare-fun c!488088 () Bool)

(assert (=> b!2973756 (= c!488088 (is-ElementMatch!9278 lt!1036600))))

(declare-fun e!1870870 () Bool)

(declare-fun e!1870869 () Bool)

(assert (=> b!2973756 (= e!1870870 e!1870869)))

(declare-fun bm!198161 () Bool)

(declare-fun call!198167 () Bool)

(assert (=> bm!198161 (= call!198167 (isEmpty!19256 s!11993))))

(declare-fun e!1870867 () Bool)

(declare-fun call!198166 () Bool)

(assert (=> b!2973757 (= e!1870867 call!198166)))

(declare-fun d!842879 () Bool)

(declare-fun c!488090 () Bool)

(assert (=> d!842879 (= c!488090 (is-EmptyExpr!9278 lt!1036600))))

(declare-fun e!1870868 () Bool)

(assert (=> d!842879 (= (matchRSpec!1415 lt!1036600 s!11993) e!1870868)))

(declare-fun b!2973758 () Bool)

(assert (=> b!2973758 (= e!1870868 e!1870870)))

(declare-fun res!1226221 () Bool)

(assert (=> b!2973758 (= res!1226221 (not (is-EmptyLang!9278 lt!1036600)))))

(assert (=> b!2973758 (=> (not res!1226221) (not e!1870870))))

(declare-fun c!488089 () Bool)

(declare-fun bm!198162 () Bool)

(assert (=> bm!198162 (= call!198166 (Exists!1558 (ite c!488089 lambda!110658 lambda!110659)))))

(declare-fun b!2973759 () Bool)

(declare-fun e!1870864 () Bool)

(declare-fun e!1870866 () Bool)

(assert (=> b!2973759 (= e!1870864 e!1870866)))

(declare-fun res!1226220 () Bool)

(assert (=> b!2973759 (= res!1226220 (matchRSpec!1415 (regOne!19069 lt!1036600) s!11993))))

(assert (=> b!2973759 (=> res!1226220 e!1870866)))

(declare-fun b!2973760 () Bool)

(declare-fun res!1226219 () Bool)

(assert (=> b!2973760 (=> res!1226219 e!1870867)))

(assert (=> b!2973760 (= res!1226219 call!198167)))

(declare-fun e!1870865 () Bool)

(assert (=> b!2973760 (= e!1870865 e!1870867)))

(declare-fun b!2973761 () Bool)

(assert (=> b!2973761 (= e!1870864 e!1870865)))

(assert (=> b!2973761 (= c!488089 (is-Star!9278 lt!1036600))))

(declare-fun b!2973762 () Bool)

(assert (=> b!2973762 (= e!1870866 (matchRSpec!1415 (regTwo!19069 lt!1036600) s!11993))))

(declare-fun b!2973763 () Bool)

(declare-fun c!488091 () Bool)

(assert (=> b!2973763 (= c!488091 (is-Union!9278 lt!1036600))))

(assert (=> b!2973763 (= e!1870869 e!1870864)))

(assert (=> b!2973764 (= e!1870865 call!198166)))

(declare-fun b!2973765 () Bool)

(assert (=> b!2973765 (= e!1870869 (= s!11993 (Cons!35019 (c!488034 lt!1036600) Nil!35019)))))

(declare-fun b!2973766 () Bool)

(assert (=> b!2973766 (= e!1870868 call!198167)))

(assert (= (and d!842879 c!488090) b!2973766))

(assert (= (and d!842879 (not c!488090)) b!2973758))

(assert (= (and b!2973758 res!1226221) b!2973756))

(assert (= (and b!2973756 c!488088) b!2973765))

(assert (= (and b!2973756 (not c!488088)) b!2973763))

(assert (= (and b!2973763 c!488091) b!2973759))

(assert (= (and b!2973763 (not c!488091)) b!2973761))

(assert (= (and b!2973759 (not res!1226220)) b!2973762))

(assert (= (and b!2973761 c!488089) b!2973760))

(assert (= (and b!2973761 (not c!488089)) b!2973764))

(assert (= (and b!2973760 (not res!1226219)) b!2973757))

(assert (= (or b!2973757 b!2973764) bm!198162))

(assert (= (or b!2973766 b!2973760) bm!198161))

(assert (=> bm!198161 m!3339085))

(declare-fun m!3339207 () Bool)

(assert (=> bm!198162 m!3339207))

(declare-fun m!3339209 () Bool)

(assert (=> b!2973759 m!3339209))

(declare-fun m!3339211 () Bool)

(assert (=> b!2973762 m!3339211))

(assert (=> b!2973468 d!842879))

(declare-fun d!842881 () Bool)

(assert (=> d!842881 (= (matchR!4160 lt!1036600 s!11993) (matchRSpec!1415 lt!1036600 s!11993))))

(declare-fun lt!1036652 () Unit!48935)

(assert (=> d!842881 (= lt!1036652 (choose!17581 lt!1036600 s!11993))))

(assert (=> d!842881 (validRegex!4011 lt!1036600)))

(assert (=> d!842881 (= (mainMatchTheorem!1415 lt!1036600 s!11993) lt!1036652)))

(declare-fun bs!526603 () Bool)

(assert (= bs!526603 d!842881))

(assert (=> bs!526603 m!3339071))

(assert (=> bs!526603 m!3339087))

(declare-fun m!3339213 () Bool)

(assert (=> bs!526603 m!3339213))

(assert (=> bs!526603 m!3339201))

(assert (=> b!2973468 d!842881))

(declare-fun c!488092 () Bool)

(declare-fun call!198170 () Bool)

(declare-fun c!488093 () Bool)

(declare-fun bm!198163 () Bool)

(assert (=> bm!198163 (= call!198170 (validRegex!4011 (ite c!488092 (reg!9607 r!17423) (ite c!488093 (regTwo!19069 r!17423) (regOne!19068 r!17423)))))))

(declare-fun b!2973767 () Bool)

(declare-fun e!1870875 () Bool)

(declare-fun call!198169 () Bool)

(assert (=> b!2973767 (= e!1870875 call!198169)))

(declare-fun b!2973768 () Bool)

(declare-fun e!1870873 () Bool)

(assert (=> b!2973768 (= e!1870873 call!198170)))

(declare-fun b!2973769 () Bool)

(declare-fun e!1870876 () Bool)

(assert (=> b!2973769 (= e!1870876 e!1870873)))

(declare-fun res!1226225 () Bool)

(assert (=> b!2973769 (= res!1226225 (not (nullable!2971 (reg!9607 r!17423))))))

(assert (=> b!2973769 (=> (not res!1226225) (not e!1870873))))

(declare-fun d!842883 () Bool)

(declare-fun res!1226224 () Bool)

(declare-fun e!1870871 () Bool)

(assert (=> d!842883 (=> res!1226224 e!1870871)))

(assert (=> d!842883 (= res!1226224 (is-ElementMatch!9278 r!17423))))

(assert (=> d!842883 (= (validRegex!4011 r!17423) e!1870871)))

(declare-fun b!2973770 () Bool)

(declare-fun e!1870877 () Bool)

(assert (=> b!2973770 (= e!1870876 e!1870877)))

(assert (=> b!2973770 (= c!488093 (is-Union!9278 r!17423))))

(declare-fun b!2973771 () Bool)

(declare-fun e!1870872 () Bool)

(declare-fun call!198168 () Bool)

(assert (=> b!2973771 (= e!1870872 call!198168)))

(declare-fun b!2973772 () Bool)

(assert (=> b!2973772 (= e!1870871 e!1870876)))

(assert (=> b!2973772 (= c!488092 (is-Star!9278 r!17423))))

(declare-fun bm!198164 () Bool)

(assert (=> bm!198164 (= call!198168 (validRegex!4011 (ite c!488093 (regOne!19069 r!17423) (regTwo!19068 r!17423))))))

(declare-fun bm!198165 () Bool)

(assert (=> bm!198165 (= call!198169 call!198170)))

(declare-fun b!2973773 () Bool)

(declare-fun e!1870874 () Bool)

(assert (=> b!2973773 (= e!1870874 e!1870872)))

(declare-fun res!1226222 () Bool)

(assert (=> b!2973773 (=> (not res!1226222) (not e!1870872))))

(assert (=> b!2973773 (= res!1226222 call!198169)))

(declare-fun b!2973774 () Bool)

(declare-fun res!1226223 () Bool)

(assert (=> b!2973774 (=> (not res!1226223) (not e!1870875))))

(assert (=> b!2973774 (= res!1226223 call!198168)))

(assert (=> b!2973774 (= e!1870877 e!1870875)))

(declare-fun b!2973775 () Bool)

(declare-fun res!1226226 () Bool)

(assert (=> b!2973775 (=> res!1226226 e!1870874)))

(assert (=> b!2973775 (= res!1226226 (not (is-Concat!14599 r!17423)))))

(assert (=> b!2973775 (= e!1870877 e!1870874)))

(assert (= (and d!842883 (not res!1226224)) b!2973772))

(assert (= (and b!2973772 c!488092) b!2973769))

(assert (= (and b!2973772 (not c!488092)) b!2973770))

(assert (= (and b!2973769 res!1226225) b!2973768))

(assert (= (and b!2973770 c!488093) b!2973774))

(assert (= (and b!2973770 (not c!488093)) b!2973775))

(assert (= (and b!2973774 res!1226223) b!2973767))

(assert (= (and b!2973775 (not res!1226226)) b!2973773))

(assert (= (and b!2973773 res!1226222) b!2973771))

(assert (= (or b!2973774 b!2973771) bm!198164))

(assert (= (or b!2973767 b!2973773) bm!198165))

(assert (= (or b!2973768 bm!198165) bm!198163))

(declare-fun m!3339215 () Bool)

(assert (=> bm!198163 m!3339215))

(declare-fun m!3339217 () Bool)

(assert (=> b!2973769 m!3339217))

(declare-fun m!3339219 () Bool)

(assert (=> bm!198164 m!3339219))

(assert (=> start!287554 d!842883))

(declare-fun d!842885 () Bool)

(assert (=> d!842885 (= (isEmptyLang!392 lt!1036602) (is-EmptyLang!9278 lt!1036602))))

(assert (=> b!2973475 d!842885))

(declare-fun b!2973835 () Bool)

(declare-fun e!1870913 () Regex!9278)

(declare-fun lt!1036669 () Regex!9278)

(assert (=> b!2973835 (= e!1870913 (Star!9278 lt!1036669))))

(declare-fun b!2973836 () Bool)

(declare-fun e!1870924 () Bool)

(declare-fun call!198193 () Bool)

(assert (=> b!2973836 (= e!1870924 call!198193)))

(declare-fun b!2973837 () Bool)

(declare-fun e!1870918 () Regex!9278)

(assert (=> b!2973837 (= e!1870918 (reg!9607 r!17423))))

(declare-fun b!2973838 () Bool)

(declare-fun c!488123 () Bool)

(declare-fun call!198194 () Bool)

(assert (=> b!2973838 (= c!488123 call!198194)))

(declare-fun e!1870920 () Regex!9278)

(declare-fun e!1870914 () Regex!9278)

(assert (=> b!2973838 (= e!1870920 e!1870914)))

(declare-fun b!2973839 () Bool)

(declare-fun e!1870922 () Bool)

(declare-fun lt!1036667 () Regex!9278)

(assert (=> b!2973839 (= e!1870922 (= (nullable!2971 lt!1036667) (nullable!2971 (reg!9607 r!17423))))))

(declare-fun b!2973840 () Bool)

(declare-fun e!1870925 () Regex!9278)

(declare-fun e!1870921 () Regex!9278)

(assert (=> b!2973840 (= e!1870925 e!1870921)))

(declare-fun lt!1036672 () Regex!9278)

(declare-fun call!198190 () Regex!9278)

(assert (=> b!2973840 (= lt!1036672 call!198190)))

(declare-fun lt!1036670 () Regex!9278)

(declare-fun call!198191 () Regex!9278)

(assert (=> b!2973840 (= lt!1036670 call!198191)))

(declare-fun res!1226239 () Bool)

(assert (=> b!2973840 (= res!1226239 call!198194)))

(assert (=> b!2973840 (=> res!1226239 e!1870924)))

(declare-fun c!488122 () Bool)

(assert (=> b!2973840 (= c!488122 e!1870924)))

(declare-fun bm!198183 () Bool)

(declare-fun call!198192 () Bool)

(declare-fun c!488126 () Bool)

(declare-fun isEmptyExpr!427 (Regex!9278) Bool)

(assert (=> bm!198183 (= call!198192 (isEmptyExpr!427 (ite c!488126 lt!1036669 lt!1036670)))))

(declare-fun b!2973841 () Bool)

(declare-fun e!1870916 () Regex!9278)

(declare-fun e!1870923 () Regex!9278)

(assert (=> b!2973841 (= e!1870916 e!1870923)))

(assert (=> b!2973841 (= c!488126 (is-Star!9278 (reg!9607 r!17423)))))

(declare-fun b!2973842 () Bool)

(declare-fun e!1870915 () Bool)

(assert (=> b!2973842 (= e!1870915 call!198192)))

(declare-fun b!2973844 () Bool)

(assert (=> b!2973844 (= e!1870913 EmptyExpr!9278)))

(declare-fun bm!198184 () Bool)

(declare-fun c!488121 () Bool)

(assert (=> bm!198184 (= call!198191 (simplify!279 (ite c!488121 (regOne!19069 (reg!9607 r!17423)) (regTwo!19068 (reg!9607 r!17423)))))))

(declare-fun lt!1036668 () Regex!9278)

(declare-fun call!198188 () Bool)

(declare-fun bm!198185 () Bool)

(assert (=> bm!198185 (= call!198188 (isEmptyLang!392 (ite c!488126 lt!1036669 (ite c!488121 lt!1036668 lt!1036670))))))

(declare-fun call!198189 () Regex!9278)

(declare-fun bm!198186 () Bool)

(assert (=> bm!198186 (= call!198189 (simplify!279 (ite c!488126 (reg!9607 (reg!9607 r!17423)) (ite c!488121 (regTwo!19069 (reg!9607 r!17423)) (regOne!19068 (reg!9607 r!17423))))))))

(declare-fun bm!198187 () Bool)

(assert (=> bm!198187 (= call!198193 call!198188)))

(declare-fun b!2973845 () Bool)

(assert (=> b!2973845 (= e!1870914 lt!1036668)))

(declare-fun b!2973846 () Bool)

(declare-fun e!1870926 () Regex!9278)

(assert (=> b!2973846 (= e!1870926 lt!1036670)))

(declare-fun b!2973847 () Bool)

(declare-fun c!488124 () Bool)

(assert (=> b!2973847 (= c!488124 (isEmptyExpr!427 lt!1036672))))

(assert (=> b!2973847 (= e!1870921 e!1870926)))

(declare-fun b!2973848 () Bool)

(declare-fun e!1870917 () Regex!9278)

(assert (=> b!2973848 (= e!1870917 EmptyLang!9278)))

(declare-fun bm!198188 () Bool)

(assert (=> bm!198188 (= call!198190 call!198189)))

(declare-fun b!2973849 () Bool)

(assert (=> b!2973849 (= e!1870925 e!1870920)))

(assert (=> b!2973849 (= lt!1036668 call!198191)))

(declare-fun lt!1036671 () Regex!9278)

(assert (=> b!2973849 (= lt!1036671 call!198190)))

(declare-fun c!488120 () Bool)

(assert (=> b!2973849 (= c!488120 call!198193)))

(declare-fun b!2973850 () Bool)

(declare-fun e!1870919 () Regex!9278)

(assert (=> b!2973850 (= e!1870926 e!1870919)))

(declare-fun c!488125 () Bool)

(assert (=> b!2973850 (= c!488125 call!198192)))

(declare-fun b!2973851 () Bool)

(assert (=> b!2973851 (= e!1870919 lt!1036672)))

(declare-fun b!2973852 () Bool)

(assert (=> b!2973852 (= e!1870916 EmptyExpr!9278)))

(declare-fun b!2973853 () Bool)

(assert (=> b!2973853 (= e!1870917 e!1870918)))

(declare-fun c!488127 () Bool)

(assert (=> b!2973853 (= c!488127 (is-ElementMatch!9278 (reg!9607 r!17423)))))

(declare-fun b!2973854 () Bool)

(declare-fun c!488128 () Bool)

(assert (=> b!2973854 (= c!488128 (is-EmptyExpr!9278 (reg!9607 r!17423)))))

(assert (=> b!2973854 (= e!1870918 e!1870916)))

(declare-fun b!2973855 () Bool)

(assert (=> b!2973855 (= c!488121 (is-Union!9278 (reg!9607 r!17423)))))

(assert (=> b!2973855 (= e!1870923 e!1870925)))

(declare-fun b!2973843 () Bool)

(assert (=> b!2973843 (= e!1870914 (Union!9278 lt!1036668 lt!1036671))))

(declare-fun d!842887 () Bool)

(assert (=> d!842887 e!1870922))

(declare-fun res!1226238 () Bool)

(assert (=> d!842887 (=> (not res!1226238) (not e!1870922))))

(assert (=> d!842887 (= res!1226238 (validRegex!4011 lt!1036667))))

(assert (=> d!842887 (= lt!1036667 e!1870917)))

(declare-fun c!488118 () Bool)

(assert (=> d!842887 (= c!488118 (is-EmptyLang!9278 (reg!9607 r!17423)))))

(assert (=> d!842887 (validRegex!4011 (reg!9607 r!17423))))

(assert (=> d!842887 (= (simplify!279 (reg!9607 r!17423)) lt!1036667)))

(declare-fun b!2973856 () Bool)

(declare-fun c!488119 () Bool)

(assert (=> b!2973856 (= c!488119 e!1870915)))

(declare-fun res!1226240 () Bool)

(assert (=> b!2973856 (=> res!1226240 e!1870915)))

(assert (=> b!2973856 (= res!1226240 call!198188)))

(assert (=> b!2973856 (= lt!1036669 call!198189)))

(assert (=> b!2973856 (= e!1870923 e!1870913)))

(declare-fun bm!198189 () Bool)

(assert (=> bm!198189 (= call!198194 (isEmptyLang!392 (ite c!488121 lt!1036671 lt!1036672)))))

(declare-fun b!2973857 () Bool)

(assert (=> b!2973857 (= e!1870919 (Concat!14599 lt!1036672 lt!1036670))))

(declare-fun b!2973858 () Bool)

(assert (=> b!2973858 (= e!1870921 EmptyLang!9278)))

(declare-fun b!2973859 () Bool)

(assert (=> b!2973859 (= e!1870920 lt!1036671)))

(assert (= (and d!842887 c!488118) b!2973848))

(assert (= (and d!842887 (not c!488118)) b!2973853))

(assert (= (and b!2973853 c!488127) b!2973837))

(assert (= (and b!2973853 (not c!488127)) b!2973854))

(assert (= (and b!2973854 c!488128) b!2973852))

(assert (= (and b!2973854 (not c!488128)) b!2973841))

(assert (= (and b!2973841 c!488126) b!2973856))

(assert (= (and b!2973841 (not c!488126)) b!2973855))

(assert (= (and b!2973856 (not res!1226240)) b!2973842))

(assert (= (and b!2973856 c!488119) b!2973844))

(assert (= (and b!2973856 (not c!488119)) b!2973835))

(assert (= (and b!2973855 c!488121) b!2973849))

(assert (= (and b!2973855 (not c!488121)) b!2973840))

(assert (= (and b!2973849 c!488120) b!2973859))

(assert (= (and b!2973849 (not c!488120)) b!2973838))

(assert (= (and b!2973838 c!488123) b!2973845))

(assert (= (and b!2973838 (not c!488123)) b!2973843))

(assert (= (and b!2973840 (not res!1226239)) b!2973836))

(assert (= (and b!2973840 c!488122) b!2973858))

(assert (= (and b!2973840 (not c!488122)) b!2973847))

(assert (= (and b!2973847 c!488124) b!2973846))

(assert (= (and b!2973847 (not c!488124)) b!2973850))

(assert (= (and b!2973850 c!488125) b!2973851))

(assert (= (and b!2973850 (not c!488125)) b!2973857))

(assert (= (or b!2973849 b!2973840) bm!198184))

(assert (= (or b!2973849 b!2973840) bm!198188))

(assert (= (or b!2973849 b!2973836) bm!198187))

(assert (= (or b!2973838 b!2973840) bm!198189))

(assert (= (or b!2973842 b!2973850) bm!198183))

(assert (= (or b!2973856 bm!198188) bm!198186))

(assert (= (or b!2973856 bm!198187) bm!198185))

(assert (= (and d!842887 res!1226238) b!2973839))

(declare-fun m!3339233 () Bool)

(assert (=> bm!198186 m!3339233))

(declare-fun m!3339235 () Bool)

(assert (=> d!842887 m!3339235))

(assert (=> d!842887 m!3339061))

(declare-fun m!3339237 () Bool)

(assert (=> bm!198189 m!3339237))

(declare-fun m!3339239 () Bool)

(assert (=> b!2973847 m!3339239))

(declare-fun m!3339241 () Bool)

(assert (=> bm!198183 m!3339241))

(declare-fun m!3339243 () Bool)

(assert (=> bm!198184 m!3339243))

(declare-fun m!3339245 () Bool)

(assert (=> bm!198185 m!3339245))

(declare-fun m!3339247 () Bool)

(assert (=> b!2973839 m!3339247))

(assert (=> b!2973839 m!3339217))

(assert (=> b!2973475 d!842887))

(declare-fun e!1870931 () Bool)

(assert (=> b!2973466 (= tp!947875 e!1870931)))

(declare-fun b!2973875 () Bool)

(declare-fun tp!947908 () Bool)

(declare-fun tp!947904 () Bool)

(assert (=> b!2973875 (= e!1870931 (and tp!947908 tp!947904))))

(declare-fun b!2973877 () Bool)

(declare-fun tp!947907 () Bool)

(declare-fun tp!947906 () Bool)

(assert (=> b!2973877 (= e!1870931 (and tp!947907 tp!947906))))

(declare-fun b!2973874 () Bool)

(assert (=> b!2973874 (= e!1870931 tp_is_empty!16119)))

(declare-fun b!2973876 () Bool)

(declare-fun tp!947905 () Bool)

(assert (=> b!2973876 (= e!1870931 tp!947905)))

(assert (= (and b!2973466 (is-ElementMatch!9278 (regOne!19068 r!17423))) b!2973874))

(assert (= (and b!2973466 (is-Concat!14599 (regOne!19068 r!17423))) b!2973875))

(assert (= (and b!2973466 (is-Star!9278 (regOne!19068 r!17423))) b!2973876))

(assert (= (and b!2973466 (is-Union!9278 (regOne!19068 r!17423))) b!2973877))

(declare-fun e!1870932 () Bool)

(assert (=> b!2973466 (= tp!947872 e!1870932)))

(declare-fun b!2973879 () Bool)

(declare-fun tp!947913 () Bool)

(declare-fun tp!947909 () Bool)

(assert (=> b!2973879 (= e!1870932 (and tp!947913 tp!947909))))

(declare-fun b!2973881 () Bool)

(declare-fun tp!947912 () Bool)

(declare-fun tp!947911 () Bool)

(assert (=> b!2973881 (= e!1870932 (and tp!947912 tp!947911))))

(declare-fun b!2973878 () Bool)

(assert (=> b!2973878 (= e!1870932 tp_is_empty!16119)))

(declare-fun b!2973880 () Bool)

(declare-fun tp!947910 () Bool)

(assert (=> b!2973880 (= e!1870932 tp!947910)))

(assert (= (and b!2973466 (is-ElementMatch!9278 (regTwo!19068 r!17423))) b!2973878))

(assert (= (and b!2973466 (is-Concat!14599 (regTwo!19068 r!17423))) b!2973879))

(assert (= (and b!2973466 (is-Star!9278 (regTwo!19068 r!17423))) b!2973880))

(assert (= (and b!2973466 (is-Union!9278 (regTwo!19068 r!17423))) b!2973881))

(declare-fun e!1870933 () Bool)

(assert (=> b!2973467 (= tp!947870 e!1870933)))

(declare-fun b!2973883 () Bool)

(declare-fun tp!947918 () Bool)

(declare-fun tp!947914 () Bool)

(assert (=> b!2973883 (= e!1870933 (and tp!947918 tp!947914))))

(declare-fun b!2973885 () Bool)

(declare-fun tp!947917 () Bool)

(declare-fun tp!947916 () Bool)

(assert (=> b!2973885 (= e!1870933 (and tp!947917 tp!947916))))

(declare-fun b!2973882 () Bool)

(assert (=> b!2973882 (= e!1870933 tp_is_empty!16119)))

(declare-fun b!2973884 () Bool)

(declare-fun tp!947915 () Bool)

(assert (=> b!2973884 (= e!1870933 tp!947915)))

(assert (= (and b!2973467 (is-ElementMatch!9278 (reg!9607 r!17423))) b!2973882))

(assert (= (and b!2973467 (is-Concat!14599 (reg!9607 r!17423))) b!2973883))

(assert (= (and b!2973467 (is-Star!9278 (reg!9607 r!17423))) b!2973884))

(assert (= (and b!2973467 (is-Union!9278 (reg!9607 r!17423))) b!2973885))

(declare-fun b!2973890 () Bool)

(declare-fun e!1870936 () Bool)

(declare-fun tp!947921 () Bool)

(assert (=> b!2973890 (= e!1870936 (and tp_is_empty!16119 tp!947921))))

(assert (=> b!2973474 (= tp!947873 e!1870936)))

(assert (= (and b!2973474 (is-Cons!35019 (t!234208 s!11993))) b!2973890))

(declare-fun e!1870937 () Bool)

(assert (=> b!2973469 (= tp!947874 e!1870937)))

(declare-fun b!2973892 () Bool)

(declare-fun tp!947926 () Bool)

(declare-fun tp!947922 () Bool)

(assert (=> b!2973892 (= e!1870937 (and tp!947926 tp!947922))))

(declare-fun b!2973894 () Bool)

(declare-fun tp!947925 () Bool)

(declare-fun tp!947924 () Bool)

(assert (=> b!2973894 (= e!1870937 (and tp!947925 tp!947924))))

(declare-fun b!2973891 () Bool)

(assert (=> b!2973891 (= e!1870937 tp_is_empty!16119)))

(declare-fun b!2973893 () Bool)

(declare-fun tp!947923 () Bool)

(assert (=> b!2973893 (= e!1870937 tp!947923)))

(assert (= (and b!2973469 (is-ElementMatch!9278 (regOne!19069 r!17423))) b!2973891))

(assert (= (and b!2973469 (is-Concat!14599 (regOne!19069 r!17423))) b!2973892))

(assert (= (and b!2973469 (is-Star!9278 (regOne!19069 r!17423))) b!2973893))

(assert (= (and b!2973469 (is-Union!9278 (regOne!19069 r!17423))) b!2973894))

(declare-fun e!1870938 () Bool)

(assert (=> b!2973469 (= tp!947871 e!1870938)))

(declare-fun b!2973896 () Bool)

(declare-fun tp!947931 () Bool)

(declare-fun tp!947927 () Bool)

(assert (=> b!2973896 (= e!1870938 (and tp!947931 tp!947927))))

(declare-fun b!2973898 () Bool)

(declare-fun tp!947930 () Bool)

(declare-fun tp!947929 () Bool)

(assert (=> b!2973898 (= e!1870938 (and tp!947930 tp!947929))))

(declare-fun b!2973895 () Bool)

(assert (=> b!2973895 (= e!1870938 tp_is_empty!16119)))

(declare-fun b!2973897 () Bool)

(declare-fun tp!947928 () Bool)

(assert (=> b!2973897 (= e!1870938 tp!947928)))

(assert (= (and b!2973469 (is-ElementMatch!9278 (regTwo!19069 r!17423))) b!2973895))

(assert (= (and b!2973469 (is-Concat!14599 (regTwo!19069 r!17423))) b!2973896))

(assert (= (and b!2973469 (is-Star!9278 (regTwo!19069 r!17423))) b!2973897))

(assert (= (and b!2973469 (is-Union!9278 (regTwo!19069 r!17423))) b!2973898))

(push 1)

(assert (not b!2973884))

(assert (not bm!198184))

(assert (not d!842881))

(assert (not d!842847))

(assert (not d!842853))

(assert (not b!2973747))

(assert (not b!2973847))

(assert (not b!2973745))

(assert (not d!842875))

(assert (not d!842887))

(assert (not b!2973898))

(assert (not b!2973710))

(assert (not d!842855))

(assert (not d!842863))

(assert (not b!2973550))

(assert (not bm!198153))

(assert (not b!2973674))

(assert (not b!2973769))

(assert (not b!2973715))

(assert (not bm!198186))

(assert (not d!842869))

(assert (not b!2973548))

(assert (not b!2973892))

(assert (not bm!198164))

(assert (not d!842861))

(assert (not bm!198161))

(assert (not b!2973719))

(assert (not bm!198185))

(assert (not b!2973551))

(assert (not b!2973875))

(assert (not b!2973893))

(assert tp_is_empty!16119)

(assert (not b!2973759))

(assert (not b!2973713))

(assert (not b!2973876))

(assert (not b!2973621))

(assert (not b!2973894))

(assert (not b!2973839))

(assert (not bm!198189))

(assert (not b!2973890))

(assert (not b!2973762))

(assert (not b!2973742))

(assert (not b!2973722))

(assert (not bm!198150))

(assert (not bm!198183))

(assert (not bm!198138))

(assert (not d!842857))

(assert (not b!2973877))

(assert (not b!2973677))

(assert (not b!2973885))

(assert (not b!2973546))

(assert (not d!842873))

(assert (not b!2973554))

(assert (not b!2973753))

(assert (not b!2973883))

(assert (not b!2973553))

(assert (not bm!198149))

(assert (not b!2973897))

(assert (not b!2973896))

(assert (not b!2973879))

(assert (not bm!198162))

(assert (not b!2973754))

(assert (not bm!198163))

(assert (not bm!198160))

(assert (not b!2973721))

(assert (not b!2973880))

(assert (not b!2973881))

(assert (not b!2973751))

(assert (not bm!198139))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

