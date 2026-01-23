; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!288956 () Bool)

(assert start!288956)

(declare-fun b!2992583 () Bool)

(assert (=> b!2992583 true))

(assert (=> b!2992583 true))

(assert (=> b!2992583 true))

(declare-fun lambda!111930 () Int)

(declare-fun lambda!111929 () Int)

(assert (=> b!2992583 (not (= lambda!111930 lambda!111929))))

(assert (=> b!2992583 true))

(assert (=> b!2992583 true))

(assert (=> b!2992583 true))

(declare-fun b!2992580 () Bool)

(declare-fun e!1880902 () Bool)

(declare-fun e!1880905 () Bool)

(assert (=> b!2992580 (= e!1880902 (not e!1880905))))

(declare-fun res!1234339 () Bool)

(assert (=> b!2992580 (=> res!1234339 e!1880905)))

(declare-fun lt!1040843 () Bool)

(declare-datatypes ((C!18896 0))(
  ( (C!18897 (val!11484 Int)) )
))
(declare-datatypes ((Regex!9355 0))(
  ( (ElementMatch!9355 (c!491875 C!18896)) (Concat!14676 (regOne!19222 Regex!9355) (regTwo!19222 Regex!9355)) (EmptyExpr!9355) (Star!9355 (reg!9684 Regex!9355)) (EmptyLang!9355) (Union!9355 (regOne!19223 Regex!9355) (regTwo!19223 Regex!9355)) )
))
(declare-fun r!17423 () Regex!9355)

(get-info :version)

(assert (=> b!2992580 (= res!1234339 (or (not lt!1040843) ((_ is Concat!14676) r!17423) ((_ is Union!9355) r!17423) (not ((_ is Star!9355) r!17423))))))

(declare-datatypes ((List!35220 0))(
  ( (Nil!35096) (Cons!35096 (h!40516 C!18896) (t!234285 List!35220)) )
))
(declare-fun s!11993 () List!35220)

(declare-fun matchRSpec!1492 (Regex!9355 List!35220) Bool)

(assert (=> b!2992580 (= lt!1040843 (matchRSpec!1492 r!17423 s!11993))))

(declare-fun matchR!4237 (Regex!9355 List!35220) Bool)

(assert (=> b!2992580 (= lt!1040843 (matchR!4237 r!17423 s!11993))))

(declare-datatypes ((Unit!49119 0))(
  ( (Unit!49120) )
))
(declare-fun lt!1040851 () Unit!49119)

(declare-fun mainMatchTheorem!1492 (Regex!9355 List!35220) Unit!49119)

(assert (=> b!2992580 (= lt!1040851 (mainMatchTheorem!1492 r!17423 s!11993))))

(declare-fun b!2992581 () Bool)

(declare-fun e!1880907 () Bool)

(declare-fun tp_is_empty!16273 () Bool)

(declare-fun tp!951333 () Bool)

(assert (=> b!2992581 (= e!1880907 (and tp_is_empty!16273 tp!951333))))

(declare-fun b!2992582 () Bool)

(declare-fun e!1880903 () Unit!49119)

(declare-fun Unit!49121 () Unit!49119)

(assert (=> b!2992582 (= e!1880903 Unit!49121)))

(declare-fun lt!1040848 () Unit!49119)

(declare-datatypes ((tuple2!34028 0))(
  ( (tuple2!34029 (_1!20146 List!35220) (_2!20146 List!35220)) )
))
(declare-fun lt!1040855 () tuple2!34028)

(assert (=> b!2992582 (= lt!1040848 (mainMatchTheorem!1492 (reg!9684 r!17423) (_1!20146 lt!1040855)))))

(assert (=> b!2992582 false))

(declare-fun e!1880904 () Bool)

(assert (=> b!2992583 (= e!1880905 e!1880904)))

(declare-fun res!1234338 () Bool)

(assert (=> b!2992583 (=> res!1234338 e!1880904)))

(declare-fun lt!1040853 () Bool)

(assert (=> b!2992583 (= res!1234338 (not lt!1040853))))

(declare-fun Exists!1628 (Int) Bool)

(assert (=> b!2992583 (= (Exists!1628 lambda!111929) (Exists!1628 lambda!111930))))

(declare-fun lt!1040850 () Unit!49119)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!304 (Regex!9355 List!35220) Unit!49119)

(assert (=> b!2992583 (= lt!1040850 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!304 (reg!9684 r!17423) s!11993))))

(assert (=> b!2992583 (= lt!1040853 (Exists!1628 lambda!111929))))

(declare-datatypes ((Option!6746 0))(
  ( (None!6745) (Some!6745 (v!34879 tuple2!34028)) )
))
(declare-fun lt!1040849 () Option!6746)

(declare-fun isDefined!5297 (Option!6746) Bool)

(assert (=> b!2992583 (= lt!1040853 (isDefined!5297 lt!1040849))))

(declare-fun lt!1040854 () Regex!9355)

(declare-fun findConcatSeparation!1140 (Regex!9355 Regex!9355 List!35220 List!35220 List!35220) Option!6746)

(assert (=> b!2992583 (= lt!1040849 (findConcatSeparation!1140 (reg!9684 r!17423) lt!1040854 Nil!35096 s!11993 s!11993))))

(declare-fun lt!1040856 () Unit!49119)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!918 (Regex!9355 Regex!9355 List!35220) Unit!49119)

(assert (=> b!2992583 (= lt!1040856 (lemmaFindConcatSeparationEquivalentToExists!918 (reg!9684 r!17423) lt!1040854 s!11993))))

(assert (=> b!2992583 (= lt!1040854 (Star!9355 (reg!9684 r!17423)))))

(declare-fun b!2992584 () Bool)

(declare-fun e!1880901 () Bool)

(declare-fun lt!1040852 () Regex!9355)

(declare-fun lt!1040846 () Regex!9355)

(assert (=> b!2992584 (= e!1880901 (= lt!1040852 (Star!9355 lt!1040846)))))

(assert (=> b!2992584 (matchR!4237 lt!1040852 (_2!20146 lt!1040855))))

(declare-fun simplify!346 (Regex!9355) Regex!9355)

(assert (=> b!2992584 (= lt!1040852 (simplify!346 lt!1040854))))

(declare-fun lt!1040844 () Unit!49119)

(declare-fun lemmaSimplifySound!204 (Regex!9355 List!35220) Unit!49119)

(assert (=> b!2992584 (= lt!1040844 (lemmaSimplifySound!204 lt!1040854 (_2!20146 lt!1040855)))))

(declare-fun lt!1040847 () Unit!49119)

(assert (=> b!2992584 (= lt!1040847 e!1880903)))

(declare-fun c!491874 () Bool)

(declare-fun size!26505 (List!35220) Int)

(assert (=> b!2992584 (= c!491874 (= (size!26505 (_2!20146 lt!1040855)) (size!26505 s!11993)))))

(assert (=> b!2992584 (matchR!4237 lt!1040846 (_1!20146 lt!1040855))))

(assert (=> b!2992584 (= lt!1040846 (simplify!346 (reg!9684 r!17423)))))

(declare-fun lt!1040845 () Unit!49119)

(assert (=> b!2992584 (= lt!1040845 (lemmaSimplifySound!204 (reg!9684 r!17423) (_1!20146 lt!1040855)))))

(declare-fun b!2992585 () Bool)

(declare-fun Unit!49122 () Unit!49119)

(assert (=> b!2992585 (= e!1880903 Unit!49122)))

(declare-fun b!2992586 () Bool)

(declare-fun res!1234340 () Bool)

(assert (=> b!2992586 (=> res!1234340 e!1880905)))

(declare-fun isEmpty!19368 (List!35220) Bool)

(assert (=> b!2992586 (= res!1234340 (isEmpty!19368 s!11993))))

(declare-fun b!2992587 () Bool)

(declare-fun e!1880906 () Bool)

(declare-fun tp!951337 () Bool)

(assert (=> b!2992587 (= e!1880906 tp!951337)))

(declare-fun b!2992588 () Bool)

(declare-fun tp!951335 () Bool)

(declare-fun tp!951334 () Bool)

(assert (=> b!2992588 (= e!1880906 (and tp!951335 tp!951334))))

(declare-fun b!2992589 () Bool)

(declare-fun tp!951332 () Bool)

(declare-fun tp!951336 () Bool)

(assert (=> b!2992589 (= e!1880906 (and tp!951332 tp!951336))))

(declare-fun b!2992579 () Bool)

(assert (=> b!2992579 (= e!1880904 e!1880901)))

(declare-fun res!1234337 () Bool)

(assert (=> b!2992579 (=> res!1234337 e!1880901)))

(assert (=> b!2992579 (= res!1234337 (not (matchR!4237 (reg!9684 r!17423) (_1!20146 lt!1040855))))))

(declare-fun get!10891 (Option!6746) tuple2!34028)

(assert (=> b!2992579 (= lt!1040855 (get!10891 lt!1040849))))

(declare-fun res!1234335 () Bool)

(assert (=> start!288956 (=> (not res!1234335) (not e!1880902))))

(declare-fun validRegex!4088 (Regex!9355) Bool)

(assert (=> start!288956 (= res!1234335 (validRegex!4088 r!17423))))

(assert (=> start!288956 e!1880902))

(assert (=> start!288956 e!1880906))

(assert (=> start!288956 e!1880907))

(declare-fun b!2992590 () Bool)

(assert (=> b!2992590 (= e!1880906 tp_is_empty!16273)))

(declare-fun b!2992591 () Bool)

(declare-fun res!1234336 () Bool)

(assert (=> b!2992591 (=> res!1234336 e!1880901)))

(assert (=> b!2992591 (= res!1234336 (not (matchR!4237 lt!1040854 (_2!20146 lt!1040855))))))

(assert (= (and start!288956 res!1234335) b!2992580))

(assert (= (and b!2992580 (not res!1234339)) b!2992586))

(assert (= (and b!2992586 (not res!1234340)) b!2992583))

(assert (= (and b!2992583 (not res!1234338)) b!2992579))

(assert (= (and b!2992579 (not res!1234337)) b!2992591))

(assert (= (and b!2992591 (not res!1234336)) b!2992584))

(assert (= (and b!2992584 c!491874) b!2992582))

(assert (= (and b!2992584 (not c!491874)) b!2992585))

(assert (= (and start!288956 ((_ is ElementMatch!9355) r!17423)) b!2992590))

(assert (= (and start!288956 ((_ is Concat!14676) r!17423)) b!2992588))

(assert (= (and start!288956 ((_ is Star!9355) r!17423)) b!2992587))

(assert (= (and start!288956 ((_ is Union!9355) r!17423)) b!2992589))

(assert (= (and start!288956 ((_ is Cons!35096) s!11993)) b!2992581))

(declare-fun m!3348187 () Bool)

(assert (=> b!2992583 m!3348187))

(declare-fun m!3348189 () Bool)

(assert (=> b!2992583 m!3348189))

(declare-fun m!3348191 () Bool)

(assert (=> b!2992583 m!3348191))

(assert (=> b!2992583 m!3348191))

(declare-fun m!3348193 () Bool)

(assert (=> b!2992583 m!3348193))

(declare-fun m!3348195 () Bool)

(assert (=> b!2992583 m!3348195))

(declare-fun m!3348197 () Bool)

(assert (=> b!2992583 m!3348197))

(declare-fun m!3348199 () Bool)

(assert (=> b!2992591 m!3348199))

(declare-fun m!3348201 () Bool)

(assert (=> b!2992580 m!3348201))

(declare-fun m!3348203 () Bool)

(assert (=> b!2992580 m!3348203))

(declare-fun m!3348205 () Bool)

(assert (=> b!2992580 m!3348205))

(declare-fun m!3348207 () Bool)

(assert (=> b!2992579 m!3348207))

(declare-fun m!3348209 () Bool)

(assert (=> b!2992579 m!3348209))

(declare-fun m!3348211 () Bool)

(assert (=> b!2992582 m!3348211))

(declare-fun m!3348213 () Bool)

(assert (=> b!2992584 m!3348213))

(declare-fun m!3348215 () Bool)

(assert (=> b!2992584 m!3348215))

(declare-fun m!3348217 () Bool)

(assert (=> b!2992584 m!3348217))

(declare-fun m!3348219 () Bool)

(assert (=> b!2992584 m!3348219))

(declare-fun m!3348221 () Bool)

(assert (=> b!2992584 m!3348221))

(declare-fun m!3348223 () Bool)

(assert (=> b!2992584 m!3348223))

(declare-fun m!3348225 () Bool)

(assert (=> b!2992584 m!3348225))

(declare-fun m!3348227 () Bool)

(assert (=> b!2992584 m!3348227))

(declare-fun m!3348229 () Bool)

(assert (=> b!2992586 m!3348229))

(declare-fun m!3348231 () Bool)

(assert (=> start!288956 m!3348231))

(check-sat (not b!2992589) tp_is_empty!16273 (not b!2992588) (not b!2992587) (not b!2992579) (not b!2992581) (not b!2992584) (not b!2992580) (not start!288956) (not b!2992591) (not b!2992586) (not b!2992583) (not b!2992582))
(check-sat)
(get-model)

(declare-fun bs!527851 () Bool)

(declare-fun d!844913 () Bool)

(assert (= bs!527851 (and d!844913 b!2992583)))

(declare-fun lambda!111944 () Int)

(assert (=> bs!527851 (= (= (Star!9355 (reg!9684 r!17423)) lt!1040854) (= lambda!111944 lambda!111929))))

(assert (=> bs!527851 (not (= lambda!111944 lambda!111930))))

(assert (=> d!844913 true))

(assert (=> d!844913 true))

(declare-fun lambda!111945 () Int)

(assert (=> bs!527851 (not (= lambda!111945 lambda!111929))))

(assert (=> bs!527851 (= (= (Star!9355 (reg!9684 r!17423)) lt!1040854) (= lambda!111945 lambda!111930))))

(declare-fun bs!527852 () Bool)

(assert (= bs!527852 d!844913))

(assert (=> bs!527852 (not (= lambda!111945 lambda!111944))))

(assert (=> d!844913 true))

(assert (=> d!844913 true))

(assert (=> d!844913 (= (Exists!1628 lambda!111944) (Exists!1628 lambda!111945))))

(declare-fun lt!1040871 () Unit!49119)

(declare-fun choose!17768 (Regex!9355 List!35220) Unit!49119)

(assert (=> d!844913 (= lt!1040871 (choose!17768 (reg!9684 r!17423) s!11993))))

(assert (=> d!844913 (validRegex!4088 (reg!9684 r!17423))))

(assert (=> d!844913 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!304 (reg!9684 r!17423) s!11993) lt!1040871)))

(declare-fun m!3348269 () Bool)

(assert (=> bs!527852 m!3348269))

(declare-fun m!3348271 () Bool)

(assert (=> bs!527852 m!3348271))

(declare-fun m!3348273 () Bool)

(assert (=> bs!527852 m!3348273))

(declare-fun m!3348275 () Bool)

(assert (=> bs!527852 m!3348275))

(assert (=> b!2992583 d!844913))

(declare-fun d!844923 () Bool)

(declare-fun isEmpty!19370 (Option!6746) Bool)

(assert (=> d!844923 (= (isDefined!5297 lt!1040849) (not (isEmpty!19370 lt!1040849)))))

(declare-fun bs!527853 () Bool)

(assert (= bs!527853 d!844923))

(declare-fun m!3348277 () Bool)

(assert (=> bs!527853 m!3348277))

(assert (=> b!2992583 d!844923))

(declare-fun b!2992803 () Bool)

(declare-fun e!1881027 () Bool)

(declare-fun lt!1040914 () Option!6746)

(declare-fun ++!8397 (List!35220 List!35220) List!35220)

(assert (=> b!2992803 (= e!1881027 (= (++!8397 (_1!20146 (get!10891 lt!1040914)) (_2!20146 (get!10891 lt!1040914))) s!11993))))

(declare-fun b!2992805 () Bool)

(declare-fun res!1234438 () Bool)

(assert (=> b!2992805 (=> (not res!1234438) (not e!1881027))))

(assert (=> b!2992805 (= res!1234438 (matchR!4237 (reg!9684 r!17423) (_1!20146 (get!10891 lt!1040914))))))

(declare-fun b!2992809 () Bool)

(declare-fun e!1881021 () Option!6746)

(assert (=> b!2992809 (= e!1881021 (Some!6745 (tuple2!34029 Nil!35096 s!11993)))))

(declare-fun b!2992811 () Bool)

(declare-fun e!1881024 () Bool)

(assert (=> b!2992811 (= e!1881024 (not (isDefined!5297 lt!1040914)))))

(declare-fun b!2992813 () Bool)

(declare-fun lt!1040915 () Unit!49119)

(declare-fun lt!1040913 () Unit!49119)

(assert (=> b!2992813 (= lt!1040915 lt!1040913)))

(assert (=> b!2992813 (= (++!8397 (++!8397 Nil!35096 (Cons!35096 (h!40516 s!11993) Nil!35096)) (t!234285 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1008 (List!35220 C!18896 List!35220 List!35220) Unit!49119)

(assert (=> b!2992813 (= lt!1040913 (lemmaMoveElementToOtherListKeepsConcatEq!1008 Nil!35096 (h!40516 s!11993) (t!234285 s!11993) s!11993))))

(declare-fun e!1881019 () Option!6746)

(assert (=> b!2992813 (= e!1881019 (findConcatSeparation!1140 (reg!9684 r!17423) lt!1040854 (++!8397 Nil!35096 (Cons!35096 (h!40516 s!11993) Nil!35096)) (t!234285 s!11993) s!11993))))

(declare-fun b!2992815 () Bool)

(declare-fun res!1234443 () Bool)

(assert (=> b!2992815 (=> (not res!1234443) (not e!1881027))))

(assert (=> b!2992815 (= res!1234443 (matchR!4237 lt!1040854 (_2!20146 (get!10891 lt!1040914))))))

(declare-fun b!2992807 () Bool)

(assert (=> b!2992807 (= e!1881019 None!6745)))

(declare-fun d!844925 () Bool)

(assert (=> d!844925 e!1881024))

(declare-fun res!1234441 () Bool)

(assert (=> d!844925 (=> res!1234441 e!1881024)))

(assert (=> d!844925 (= res!1234441 e!1881027)))

(declare-fun res!1234433 () Bool)

(assert (=> d!844925 (=> (not res!1234433) (not e!1881027))))

(assert (=> d!844925 (= res!1234433 (isDefined!5297 lt!1040914))))

(assert (=> d!844925 (= lt!1040914 e!1881021)))

(declare-fun c!491935 () Bool)

(declare-fun e!1881017 () Bool)

(assert (=> d!844925 (= c!491935 e!1881017)))

(declare-fun res!1234435 () Bool)

(assert (=> d!844925 (=> (not res!1234435) (not e!1881017))))

(assert (=> d!844925 (= res!1234435 (matchR!4237 (reg!9684 r!17423) Nil!35096))))

(assert (=> d!844925 (validRegex!4088 (reg!9684 r!17423))))

(assert (=> d!844925 (= (findConcatSeparation!1140 (reg!9684 r!17423) lt!1040854 Nil!35096 s!11993 s!11993) lt!1040914)))

(declare-fun b!2992817 () Bool)

(assert (=> b!2992817 (= e!1881021 e!1881019)))

(declare-fun c!491936 () Bool)

(assert (=> b!2992817 (= c!491936 ((_ is Nil!35096) s!11993))))

(declare-fun b!2992819 () Bool)

(assert (=> b!2992819 (= e!1881017 (matchR!4237 lt!1040854 s!11993))))

(assert (= (and d!844925 res!1234435) b!2992819))

(assert (= (and d!844925 c!491935) b!2992809))

(assert (= (and d!844925 (not c!491935)) b!2992817))

(assert (= (and b!2992817 c!491936) b!2992807))

(assert (= (and b!2992817 (not c!491936)) b!2992813))

(assert (= (and d!844925 res!1234433) b!2992805))

(assert (= (and b!2992805 res!1234438) b!2992815))

(assert (= (and b!2992815 res!1234443) b!2992803))

(assert (= (and d!844925 (not res!1234441)) b!2992811))

(declare-fun m!3348357 () Bool)

(assert (=> b!2992819 m!3348357))

(declare-fun m!3348361 () Bool)

(assert (=> b!2992815 m!3348361))

(declare-fun m!3348365 () Bool)

(assert (=> b!2992815 m!3348365))

(assert (=> b!2992805 m!3348361))

(declare-fun m!3348369 () Bool)

(assert (=> b!2992805 m!3348369))

(assert (=> b!2992803 m!3348361))

(declare-fun m!3348371 () Bool)

(assert (=> b!2992803 m!3348371))

(declare-fun m!3348373 () Bool)

(assert (=> b!2992813 m!3348373))

(assert (=> b!2992813 m!3348373))

(declare-fun m!3348375 () Bool)

(assert (=> b!2992813 m!3348375))

(declare-fun m!3348377 () Bool)

(assert (=> b!2992813 m!3348377))

(assert (=> b!2992813 m!3348373))

(declare-fun m!3348379 () Bool)

(assert (=> b!2992813 m!3348379))

(declare-fun m!3348381 () Bool)

(assert (=> b!2992811 m!3348381))

(assert (=> d!844925 m!3348381))

(declare-fun m!3348383 () Bool)

(assert (=> d!844925 m!3348383))

(assert (=> d!844925 m!3348275))

(assert (=> b!2992583 d!844925))

(declare-fun bs!527866 () Bool)

(declare-fun d!844951 () Bool)

(assert (= bs!527866 (and d!844951 b!2992583)))

(declare-fun lambda!111954 () Int)

(assert (=> bs!527866 (= lambda!111954 lambda!111929)))

(assert (=> bs!527866 (not (= lambda!111954 lambda!111930))))

(declare-fun bs!527867 () Bool)

(assert (= bs!527867 (and d!844951 d!844913)))

(assert (=> bs!527867 (= (= lt!1040854 (Star!9355 (reg!9684 r!17423))) (= lambda!111954 lambda!111944))))

(assert (=> bs!527867 (not (= lambda!111954 lambda!111945))))

(assert (=> d!844951 true))

(assert (=> d!844951 true))

(assert (=> d!844951 true))

(assert (=> d!844951 (= (isDefined!5297 (findConcatSeparation!1140 (reg!9684 r!17423) lt!1040854 Nil!35096 s!11993 s!11993)) (Exists!1628 lambda!111954))))

(declare-fun lt!1040927 () Unit!49119)

(declare-fun choose!17769 (Regex!9355 Regex!9355 List!35220) Unit!49119)

(assert (=> d!844951 (= lt!1040927 (choose!17769 (reg!9684 r!17423) lt!1040854 s!11993))))

(assert (=> d!844951 (validRegex!4088 (reg!9684 r!17423))))

(assert (=> d!844951 (= (lemmaFindConcatSeparationEquivalentToExists!918 (reg!9684 r!17423) lt!1040854 s!11993) lt!1040927)))

(declare-fun bs!527868 () Bool)

(assert (= bs!527868 d!844951))

(assert (=> bs!527868 m!3348193))

(declare-fun m!3348421 () Bool)

(assert (=> bs!527868 m!3348421))

(assert (=> bs!527868 m!3348275))

(declare-fun m!3348423 () Bool)

(assert (=> bs!527868 m!3348423))

(assert (=> bs!527868 m!3348193))

(declare-fun m!3348425 () Bool)

(assert (=> bs!527868 m!3348425))

(assert (=> b!2992583 d!844951))

(declare-fun d!844961 () Bool)

(declare-fun choose!17770 (Int) Bool)

(assert (=> d!844961 (= (Exists!1628 lambda!111929) (choose!17770 lambda!111929))))

(declare-fun bs!527869 () Bool)

(assert (= bs!527869 d!844961))

(declare-fun m!3348427 () Bool)

(assert (=> bs!527869 m!3348427))

(assert (=> b!2992583 d!844961))

(declare-fun d!844963 () Bool)

(assert (=> d!844963 (= (Exists!1628 lambda!111930) (choose!17770 lambda!111930))))

(declare-fun bs!527870 () Bool)

(assert (= bs!527870 d!844963))

(declare-fun m!3348429 () Bool)

(assert (=> bs!527870 m!3348429))

(assert (=> b!2992583 d!844963))

(declare-fun d!844965 () Bool)

(assert (=> d!844965 (= (matchR!4237 (reg!9684 r!17423) (_1!20146 lt!1040855)) (matchRSpec!1492 (reg!9684 r!17423) (_1!20146 lt!1040855)))))

(declare-fun lt!1040932 () Unit!49119)

(declare-fun choose!17771 (Regex!9355 List!35220) Unit!49119)

(assert (=> d!844965 (= lt!1040932 (choose!17771 (reg!9684 r!17423) (_1!20146 lt!1040855)))))

(assert (=> d!844965 (validRegex!4088 (reg!9684 r!17423))))

(assert (=> d!844965 (= (mainMatchTheorem!1492 (reg!9684 r!17423) (_1!20146 lt!1040855)) lt!1040932)))

(declare-fun bs!527871 () Bool)

(assert (= bs!527871 d!844965))

(assert (=> bs!527871 m!3348207))

(declare-fun m!3348435 () Bool)

(assert (=> bs!527871 m!3348435))

(declare-fun m!3348437 () Bool)

(assert (=> bs!527871 m!3348437))

(assert (=> bs!527871 m!3348275))

(assert (=> b!2992582 d!844965))

(declare-fun b!2993017 () Bool)

(declare-fun res!1234522 () Bool)

(declare-fun e!1881135 () Bool)

(assert (=> b!2993017 (=> (not res!1234522) (not e!1881135))))

(declare-fun tail!4903 (List!35220) List!35220)

(assert (=> b!2993017 (= res!1234522 (isEmpty!19368 (tail!4903 (_2!20146 lt!1040855))))))

(declare-fun b!2993018 () Bool)

(declare-fun e!1881134 () Bool)

(declare-fun derivativeStep!2618 (Regex!9355 C!18896) Regex!9355)

(declare-fun head!6677 (List!35220) C!18896)

(assert (=> b!2993018 (= e!1881134 (matchR!4237 (derivativeStep!2618 lt!1040854 (head!6677 (_2!20146 lt!1040855))) (tail!4903 (_2!20146 lt!1040855))))))

(declare-fun b!2993019 () Bool)

(declare-fun e!1881129 () Bool)

(declare-fun e!1881133 () Bool)

(assert (=> b!2993019 (= e!1881129 e!1881133)))

(declare-fun c!491983 () Bool)

(assert (=> b!2993019 (= c!491983 ((_ is EmptyLang!9355) lt!1040854))))

(declare-fun b!2993020 () Bool)

(declare-fun res!1234520 () Bool)

(declare-fun e!1881130 () Bool)

(assert (=> b!2993020 (=> res!1234520 e!1881130)))

(assert (=> b!2993020 (= res!1234520 (not ((_ is ElementMatch!9355) lt!1040854)))))

(assert (=> b!2993020 (= e!1881133 e!1881130)))

(declare-fun b!2993021 () Bool)

(declare-fun e!1881132 () Bool)

(assert (=> b!2993021 (= e!1881132 (not (= (head!6677 (_2!20146 lt!1040855)) (c!491875 lt!1040854))))))

(declare-fun b!2993022 () Bool)

(assert (=> b!2993022 (= e!1881135 (= (head!6677 (_2!20146 lt!1040855)) (c!491875 lt!1040854)))))

(declare-fun b!2993023 () Bool)

(declare-fun nullable!3020 (Regex!9355) Bool)

(assert (=> b!2993023 (= e!1881134 (nullable!3020 lt!1040854))))

(declare-fun b!2993024 () Bool)

(declare-fun res!1234523 () Bool)

(assert (=> b!2993024 (=> (not res!1234523) (not e!1881135))))

(declare-fun call!200313 () Bool)

(assert (=> b!2993024 (= res!1234523 (not call!200313))))

(declare-fun b!2993025 () Bool)

(declare-fun res!1234519 () Bool)

(assert (=> b!2993025 (=> res!1234519 e!1881130)))

(assert (=> b!2993025 (= res!1234519 e!1881135)))

(declare-fun res!1234518 () Bool)

(assert (=> b!2993025 (=> (not res!1234518) (not e!1881135))))

(declare-fun lt!1040935 () Bool)

(assert (=> b!2993025 (= res!1234518 lt!1040935)))

(declare-fun bm!200308 () Bool)

(assert (=> bm!200308 (= call!200313 (isEmpty!19368 (_2!20146 lt!1040855)))))

(declare-fun b!2993026 () Bool)

(assert (=> b!2993026 (= e!1881133 (not lt!1040935))))

(declare-fun b!2993027 () Bool)

(declare-fun res!1234521 () Bool)

(assert (=> b!2993027 (=> res!1234521 e!1881132)))

(assert (=> b!2993027 (= res!1234521 (not (isEmpty!19368 (tail!4903 (_2!20146 lt!1040855)))))))

(declare-fun b!2993028 () Bool)

(declare-fun e!1881131 () Bool)

(assert (=> b!2993028 (= e!1881131 e!1881132)))

(declare-fun res!1234524 () Bool)

(assert (=> b!2993028 (=> res!1234524 e!1881132)))

(assert (=> b!2993028 (= res!1234524 call!200313)))

(declare-fun b!2993029 () Bool)

(assert (=> b!2993029 (= e!1881130 e!1881131)))

(declare-fun res!1234517 () Bool)

(assert (=> b!2993029 (=> (not res!1234517) (not e!1881131))))

(assert (=> b!2993029 (= res!1234517 (not lt!1040935))))

(declare-fun d!844969 () Bool)

(assert (=> d!844969 e!1881129))

(declare-fun c!491982 () Bool)

(assert (=> d!844969 (= c!491982 ((_ is EmptyExpr!9355) lt!1040854))))

(assert (=> d!844969 (= lt!1040935 e!1881134)))

(declare-fun c!491981 () Bool)

(assert (=> d!844969 (= c!491981 (isEmpty!19368 (_2!20146 lt!1040855)))))

(assert (=> d!844969 (validRegex!4088 lt!1040854)))

(assert (=> d!844969 (= (matchR!4237 lt!1040854 (_2!20146 lt!1040855)) lt!1040935)))

(declare-fun b!2993030 () Bool)

(assert (=> b!2993030 (= e!1881129 (= lt!1040935 call!200313))))

(assert (= (and d!844969 c!491981) b!2993023))

(assert (= (and d!844969 (not c!491981)) b!2993018))

(assert (= (and d!844969 c!491982) b!2993030))

(assert (= (and d!844969 (not c!491982)) b!2993019))

(assert (= (and b!2993019 c!491983) b!2993026))

(assert (= (and b!2993019 (not c!491983)) b!2993020))

(assert (= (and b!2993020 (not res!1234520)) b!2993025))

(assert (= (and b!2993025 res!1234518) b!2993024))

(assert (= (and b!2993024 res!1234523) b!2993017))

(assert (= (and b!2993017 res!1234522) b!2993022))

(assert (= (and b!2993025 (not res!1234519)) b!2993029))

(assert (= (and b!2993029 res!1234517) b!2993028))

(assert (= (and b!2993028 (not res!1234524)) b!2993027))

(assert (= (and b!2993027 (not res!1234521)) b!2993021))

(assert (= (or b!2993030 b!2993024 b!2993028) bm!200308))

(declare-fun m!3348439 () Bool)

(assert (=> bm!200308 m!3348439))

(declare-fun m!3348441 () Bool)

(assert (=> b!2993023 m!3348441))

(declare-fun m!3348443 () Bool)

(assert (=> b!2993018 m!3348443))

(assert (=> b!2993018 m!3348443))

(declare-fun m!3348445 () Bool)

(assert (=> b!2993018 m!3348445))

(declare-fun m!3348447 () Bool)

(assert (=> b!2993018 m!3348447))

(assert (=> b!2993018 m!3348445))

(assert (=> b!2993018 m!3348447))

(declare-fun m!3348449 () Bool)

(assert (=> b!2993018 m!3348449))

(assert (=> b!2993027 m!3348447))

(assert (=> b!2993027 m!3348447))

(declare-fun m!3348451 () Bool)

(assert (=> b!2993027 m!3348451))

(assert (=> b!2993022 m!3348443))

(assert (=> d!844969 m!3348439))

(declare-fun m!3348453 () Bool)

(assert (=> d!844969 m!3348453))

(assert (=> b!2993017 m!3348447))

(assert (=> b!2993017 m!3348447))

(assert (=> b!2993017 m!3348451))

(assert (=> b!2993021 m!3348443))

(assert (=> b!2992591 d!844969))

(declare-fun bs!527872 () Bool)

(declare-fun b!2993072 () Bool)

(assert (= bs!527872 (and b!2993072 d!844951)))

(declare-fun lambda!111959 () Int)

(assert (=> bs!527872 (not (= lambda!111959 lambda!111954))))

(declare-fun bs!527873 () Bool)

(assert (= bs!527873 (and b!2993072 b!2992583)))

(assert (=> bs!527873 (= (= r!17423 lt!1040854) (= lambda!111959 lambda!111930))))

(declare-fun bs!527874 () Bool)

(assert (= bs!527874 (and b!2993072 d!844913)))

(assert (=> bs!527874 (= (= r!17423 (Star!9355 (reg!9684 r!17423))) (= lambda!111959 lambda!111945))))

(assert (=> bs!527874 (not (= lambda!111959 lambda!111944))))

(assert (=> bs!527873 (not (= lambda!111959 lambda!111929))))

(assert (=> b!2993072 true))

(assert (=> b!2993072 true))

(declare-fun bs!527875 () Bool)

(declare-fun b!2993063 () Bool)

(assert (= bs!527875 (and b!2993063 d!844951)))

(declare-fun lambda!111960 () Int)

(assert (=> bs!527875 (not (= lambda!111960 lambda!111954))))

(declare-fun bs!527876 () Bool)

(assert (= bs!527876 (and b!2993063 d!844913)))

(assert (=> bs!527876 (not (= lambda!111960 lambda!111945))))

(assert (=> bs!527876 (not (= lambda!111960 lambda!111944))))

(declare-fun bs!527877 () Bool)

(assert (= bs!527877 (and b!2993063 b!2992583)))

(assert (=> bs!527877 (not (= lambda!111960 lambda!111929))))

(assert (=> bs!527877 (not (= lambda!111960 lambda!111930))))

(declare-fun bs!527878 () Bool)

(assert (= bs!527878 (and b!2993063 b!2993072)))

(assert (=> bs!527878 (not (= lambda!111960 lambda!111959))))

(assert (=> b!2993063 true))

(assert (=> b!2993063 true))

(declare-fun e!1881154 () Bool)

(declare-fun call!200319 () Bool)

(assert (=> b!2993063 (= e!1881154 call!200319)))

(declare-fun c!491995 () Bool)

(declare-fun bm!200313 () Bool)

(assert (=> bm!200313 (= call!200319 (Exists!1628 (ite c!491995 lambda!111959 lambda!111960)))))

(declare-fun b!2993064 () Bool)

(declare-fun res!1234542 () Bool)

(declare-fun e!1881158 () Bool)

(assert (=> b!2993064 (=> res!1234542 e!1881158)))

(declare-fun call!200318 () Bool)

(assert (=> b!2993064 (= res!1234542 call!200318)))

(assert (=> b!2993064 (= e!1881154 e!1881158)))

(declare-fun b!2993065 () Bool)

(declare-fun e!1881159 () Bool)

(assert (=> b!2993065 (= e!1881159 (= s!11993 (Cons!35096 (c!491875 r!17423) Nil!35096)))))

(declare-fun b!2993066 () Bool)

(declare-fun c!491993 () Bool)

(assert (=> b!2993066 (= c!491993 ((_ is ElementMatch!9355) r!17423))))

(declare-fun e!1881156 () Bool)

(assert (=> b!2993066 (= e!1881156 e!1881159)))

(declare-fun b!2993067 () Bool)

(declare-fun e!1881157 () Bool)

(assert (=> b!2993067 (= e!1881157 e!1881156)))

(declare-fun res!1234541 () Bool)

(assert (=> b!2993067 (= res!1234541 (not ((_ is EmptyLang!9355) r!17423)))))

(assert (=> b!2993067 (=> (not res!1234541) (not e!1881156))))

(declare-fun d!844971 () Bool)

(declare-fun c!491992 () Bool)

(assert (=> d!844971 (= c!491992 ((_ is EmptyExpr!9355) r!17423))))

(assert (=> d!844971 (= (matchRSpec!1492 r!17423 s!11993) e!1881157)))

(declare-fun bm!200314 () Bool)

(assert (=> bm!200314 (= call!200318 (isEmpty!19368 s!11993))))

(declare-fun b!2993068 () Bool)

(declare-fun c!491994 () Bool)

(assert (=> b!2993068 (= c!491994 ((_ is Union!9355) r!17423))))

(declare-fun e!1881155 () Bool)

(assert (=> b!2993068 (= e!1881159 e!1881155)))

(declare-fun b!2993069 () Bool)

(declare-fun e!1881160 () Bool)

(assert (=> b!2993069 (= e!1881160 (matchRSpec!1492 (regTwo!19223 r!17423) s!11993))))

(declare-fun b!2993070 () Bool)

(assert (=> b!2993070 (= e!1881155 e!1881160)))

(declare-fun res!1234543 () Bool)

(assert (=> b!2993070 (= res!1234543 (matchRSpec!1492 (regOne!19223 r!17423) s!11993))))

(assert (=> b!2993070 (=> res!1234543 e!1881160)))

(declare-fun b!2993071 () Bool)

(assert (=> b!2993071 (= e!1881155 e!1881154)))

(assert (=> b!2993071 (= c!491995 ((_ is Star!9355) r!17423))))

(assert (=> b!2993072 (= e!1881158 call!200319)))

(declare-fun b!2993073 () Bool)

(assert (=> b!2993073 (= e!1881157 call!200318)))

(assert (= (and d!844971 c!491992) b!2993073))

(assert (= (and d!844971 (not c!491992)) b!2993067))

(assert (= (and b!2993067 res!1234541) b!2993066))

(assert (= (and b!2993066 c!491993) b!2993065))

(assert (= (and b!2993066 (not c!491993)) b!2993068))

(assert (= (and b!2993068 c!491994) b!2993070))

(assert (= (and b!2993068 (not c!491994)) b!2993071))

(assert (= (and b!2993070 (not res!1234543)) b!2993069))

(assert (= (and b!2993071 c!491995) b!2993064))

(assert (= (and b!2993071 (not c!491995)) b!2993063))

(assert (= (and b!2993064 (not res!1234542)) b!2993072))

(assert (= (or b!2993072 b!2993063) bm!200313))

(assert (= (or b!2993073 b!2993064) bm!200314))

(declare-fun m!3348455 () Bool)

(assert (=> bm!200313 m!3348455))

(assert (=> bm!200314 m!3348229))

(declare-fun m!3348457 () Bool)

(assert (=> b!2993069 m!3348457))

(declare-fun m!3348459 () Bool)

(assert (=> b!2993070 m!3348459))

(assert (=> b!2992580 d!844971))

(declare-fun b!2993074 () Bool)

(declare-fun res!1234549 () Bool)

(declare-fun e!1881167 () Bool)

(assert (=> b!2993074 (=> (not res!1234549) (not e!1881167))))

(assert (=> b!2993074 (= res!1234549 (isEmpty!19368 (tail!4903 s!11993)))))

(declare-fun b!2993075 () Bool)

(declare-fun e!1881166 () Bool)

(assert (=> b!2993075 (= e!1881166 (matchR!4237 (derivativeStep!2618 r!17423 (head!6677 s!11993)) (tail!4903 s!11993)))))

(declare-fun b!2993076 () Bool)

(declare-fun e!1881161 () Bool)

(declare-fun e!1881165 () Bool)

(assert (=> b!2993076 (= e!1881161 e!1881165)))

(declare-fun c!491998 () Bool)

(assert (=> b!2993076 (= c!491998 ((_ is EmptyLang!9355) r!17423))))

(declare-fun b!2993077 () Bool)

(declare-fun res!1234547 () Bool)

(declare-fun e!1881162 () Bool)

(assert (=> b!2993077 (=> res!1234547 e!1881162)))

(assert (=> b!2993077 (= res!1234547 (not ((_ is ElementMatch!9355) r!17423)))))

(assert (=> b!2993077 (= e!1881165 e!1881162)))

(declare-fun b!2993078 () Bool)

(declare-fun e!1881164 () Bool)

(assert (=> b!2993078 (= e!1881164 (not (= (head!6677 s!11993) (c!491875 r!17423))))))

(declare-fun b!2993079 () Bool)

(assert (=> b!2993079 (= e!1881167 (= (head!6677 s!11993) (c!491875 r!17423)))))

(declare-fun b!2993080 () Bool)

(assert (=> b!2993080 (= e!1881166 (nullable!3020 r!17423))))

(declare-fun b!2993081 () Bool)

(declare-fun res!1234550 () Bool)

(assert (=> b!2993081 (=> (not res!1234550) (not e!1881167))))

(declare-fun call!200320 () Bool)

(assert (=> b!2993081 (= res!1234550 (not call!200320))))

(declare-fun b!2993082 () Bool)

(declare-fun res!1234546 () Bool)

(assert (=> b!2993082 (=> res!1234546 e!1881162)))

(assert (=> b!2993082 (= res!1234546 e!1881167)))

(declare-fun res!1234545 () Bool)

(assert (=> b!2993082 (=> (not res!1234545) (not e!1881167))))

(declare-fun lt!1040936 () Bool)

(assert (=> b!2993082 (= res!1234545 lt!1040936)))

(declare-fun bm!200315 () Bool)

(assert (=> bm!200315 (= call!200320 (isEmpty!19368 s!11993))))

(declare-fun b!2993083 () Bool)

(assert (=> b!2993083 (= e!1881165 (not lt!1040936))))

(declare-fun b!2993084 () Bool)

(declare-fun res!1234548 () Bool)

(assert (=> b!2993084 (=> res!1234548 e!1881164)))

(assert (=> b!2993084 (= res!1234548 (not (isEmpty!19368 (tail!4903 s!11993))))))

(declare-fun b!2993085 () Bool)

(declare-fun e!1881163 () Bool)

(assert (=> b!2993085 (= e!1881163 e!1881164)))

(declare-fun res!1234551 () Bool)

(assert (=> b!2993085 (=> res!1234551 e!1881164)))

(assert (=> b!2993085 (= res!1234551 call!200320)))

(declare-fun b!2993086 () Bool)

(assert (=> b!2993086 (= e!1881162 e!1881163)))

(declare-fun res!1234544 () Bool)

(assert (=> b!2993086 (=> (not res!1234544) (not e!1881163))))

(assert (=> b!2993086 (= res!1234544 (not lt!1040936))))

(declare-fun d!844973 () Bool)

(assert (=> d!844973 e!1881161))

(declare-fun c!491997 () Bool)

(assert (=> d!844973 (= c!491997 ((_ is EmptyExpr!9355) r!17423))))

(assert (=> d!844973 (= lt!1040936 e!1881166)))

(declare-fun c!491996 () Bool)

(assert (=> d!844973 (= c!491996 (isEmpty!19368 s!11993))))

(assert (=> d!844973 (validRegex!4088 r!17423)))

(assert (=> d!844973 (= (matchR!4237 r!17423 s!11993) lt!1040936)))

(declare-fun b!2993087 () Bool)

(assert (=> b!2993087 (= e!1881161 (= lt!1040936 call!200320))))

(assert (= (and d!844973 c!491996) b!2993080))

(assert (= (and d!844973 (not c!491996)) b!2993075))

(assert (= (and d!844973 c!491997) b!2993087))

(assert (= (and d!844973 (not c!491997)) b!2993076))

(assert (= (and b!2993076 c!491998) b!2993083))

(assert (= (and b!2993076 (not c!491998)) b!2993077))

(assert (= (and b!2993077 (not res!1234547)) b!2993082))

(assert (= (and b!2993082 res!1234545) b!2993081))

(assert (= (and b!2993081 res!1234550) b!2993074))

(assert (= (and b!2993074 res!1234549) b!2993079))

(assert (= (and b!2993082 (not res!1234546)) b!2993086))

(assert (= (and b!2993086 res!1234544) b!2993085))

(assert (= (and b!2993085 (not res!1234551)) b!2993084))

(assert (= (and b!2993084 (not res!1234548)) b!2993078))

(assert (= (or b!2993087 b!2993081 b!2993085) bm!200315))

(assert (=> bm!200315 m!3348229))

(declare-fun m!3348461 () Bool)

(assert (=> b!2993080 m!3348461))

(declare-fun m!3348463 () Bool)

(assert (=> b!2993075 m!3348463))

(assert (=> b!2993075 m!3348463))

(declare-fun m!3348465 () Bool)

(assert (=> b!2993075 m!3348465))

(declare-fun m!3348467 () Bool)

(assert (=> b!2993075 m!3348467))

(assert (=> b!2993075 m!3348465))

(assert (=> b!2993075 m!3348467))

(declare-fun m!3348469 () Bool)

(assert (=> b!2993075 m!3348469))

(assert (=> b!2993084 m!3348467))

(assert (=> b!2993084 m!3348467))

(declare-fun m!3348471 () Bool)

(assert (=> b!2993084 m!3348471))

(assert (=> b!2993079 m!3348463))

(assert (=> d!844973 m!3348229))

(assert (=> d!844973 m!3348231))

(assert (=> b!2993074 m!3348467))

(assert (=> b!2993074 m!3348467))

(assert (=> b!2993074 m!3348471))

(assert (=> b!2993078 m!3348463))

(assert (=> b!2992580 d!844973))

(declare-fun d!844975 () Bool)

(assert (=> d!844975 (= (matchR!4237 r!17423 s!11993) (matchRSpec!1492 r!17423 s!11993))))

(declare-fun lt!1040937 () Unit!49119)

(assert (=> d!844975 (= lt!1040937 (choose!17771 r!17423 s!11993))))

(assert (=> d!844975 (validRegex!4088 r!17423)))

(assert (=> d!844975 (= (mainMatchTheorem!1492 r!17423 s!11993) lt!1040937)))

(declare-fun bs!527879 () Bool)

(assert (= bs!527879 d!844975))

(assert (=> bs!527879 m!3348203))

(assert (=> bs!527879 m!3348201))

(declare-fun m!3348473 () Bool)

(assert (=> bs!527879 m!3348473))

(assert (=> bs!527879 m!3348231))

(assert (=> b!2992580 d!844975))

(declare-fun b!2993106 () Bool)

(declare-fun e!1881185 () Bool)

(declare-fun e!1881188 () Bool)

(assert (=> b!2993106 (= e!1881185 e!1881188)))

(declare-fun c!492003 () Bool)

(assert (=> b!2993106 (= c!492003 ((_ is Union!9355) r!17423))))

(declare-fun d!844977 () Bool)

(declare-fun res!1234564 () Bool)

(declare-fun e!1881187 () Bool)

(assert (=> d!844977 (=> res!1234564 e!1881187)))

(assert (=> d!844977 (= res!1234564 ((_ is ElementMatch!9355) r!17423))))

(assert (=> d!844977 (= (validRegex!4088 r!17423) e!1881187)))

(declare-fun b!2993107 () Bool)

(declare-fun res!1234565 () Bool)

(declare-fun e!1881186 () Bool)

(assert (=> b!2993107 (=> (not res!1234565) (not e!1881186))))

(declare-fun call!200329 () Bool)

(assert (=> b!2993107 (= res!1234565 call!200329)))

(assert (=> b!2993107 (= e!1881188 e!1881186)))

(declare-fun b!2993108 () Bool)

(declare-fun res!1234562 () Bool)

(declare-fun e!1881183 () Bool)

(assert (=> b!2993108 (=> res!1234562 e!1881183)))

(assert (=> b!2993108 (= res!1234562 (not ((_ is Concat!14676) r!17423)))))

(assert (=> b!2993108 (= e!1881188 e!1881183)))

(declare-fun b!2993109 () Bool)

(declare-fun e!1881182 () Bool)

(assert (=> b!2993109 (= e!1881185 e!1881182)))

(declare-fun res!1234566 () Bool)

(assert (=> b!2993109 (= res!1234566 (not (nullable!3020 (reg!9684 r!17423))))))

(assert (=> b!2993109 (=> (not res!1234566) (not e!1881182))))

(declare-fun b!2993110 () Bool)

(assert (=> b!2993110 (= e!1881187 e!1881185)))

(declare-fun c!492004 () Bool)

(assert (=> b!2993110 (= c!492004 ((_ is Star!9355) r!17423))))

(declare-fun bm!200322 () Bool)

(declare-fun call!200328 () Bool)

(declare-fun call!200327 () Bool)

(assert (=> bm!200322 (= call!200328 call!200327)))

(declare-fun b!2993111 () Bool)

(assert (=> b!2993111 (= e!1881186 call!200328)))

(declare-fun bm!200323 () Bool)

(assert (=> bm!200323 (= call!200327 (validRegex!4088 (ite c!492004 (reg!9684 r!17423) (ite c!492003 (regTwo!19223 r!17423) (regOne!19222 r!17423)))))))

(declare-fun bm!200324 () Bool)

(assert (=> bm!200324 (= call!200329 (validRegex!4088 (ite c!492003 (regOne!19223 r!17423) (regTwo!19222 r!17423))))))

(declare-fun b!2993112 () Bool)

(declare-fun e!1881184 () Bool)

(assert (=> b!2993112 (= e!1881184 call!200329)))

(declare-fun b!2993113 () Bool)

(assert (=> b!2993113 (= e!1881182 call!200327)))

(declare-fun b!2993114 () Bool)

(assert (=> b!2993114 (= e!1881183 e!1881184)))

(declare-fun res!1234563 () Bool)

(assert (=> b!2993114 (=> (not res!1234563) (not e!1881184))))

(assert (=> b!2993114 (= res!1234563 call!200328)))

(assert (= (and d!844977 (not res!1234564)) b!2993110))

(assert (= (and b!2993110 c!492004) b!2993109))

(assert (= (and b!2993110 (not c!492004)) b!2993106))

(assert (= (and b!2993109 res!1234566) b!2993113))

(assert (= (and b!2993106 c!492003) b!2993107))

(assert (= (and b!2993106 (not c!492003)) b!2993108))

(assert (= (and b!2993107 res!1234565) b!2993111))

(assert (= (and b!2993108 (not res!1234562)) b!2993114))

(assert (= (and b!2993114 res!1234563) b!2993112))

(assert (= (or b!2993107 b!2993112) bm!200324))

(assert (= (or b!2993111 b!2993114) bm!200322))

(assert (= (or b!2993113 bm!200322) bm!200323))

(declare-fun m!3348475 () Bool)

(assert (=> b!2993109 m!3348475))

(declare-fun m!3348477 () Bool)

(assert (=> bm!200323 m!3348477))

(declare-fun m!3348479 () Bool)

(assert (=> bm!200324 m!3348479))

(assert (=> start!288956 d!844977))

(declare-fun d!844979 () Bool)

(assert (=> d!844979 (= (isEmpty!19368 s!11993) ((_ is Nil!35096) s!11993))))

(assert (=> b!2992586 d!844979))

(declare-fun b!2993115 () Bool)

(declare-fun res!1234572 () Bool)

(declare-fun e!1881195 () Bool)

(assert (=> b!2993115 (=> (not res!1234572) (not e!1881195))))

(assert (=> b!2993115 (= res!1234572 (isEmpty!19368 (tail!4903 (_1!20146 lt!1040855))))))

(declare-fun b!2993116 () Bool)

(declare-fun e!1881194 () Bool)

(assert (=> b!2993116 (= e!1881194 (matchR!4237 (derivativeStep!2618 (reg!9684 r!17423) (head!6677 (_1!20146 lt!1040855))) (tail!4903 (_1!20146 lt!1040855))))))

(declare-fun b!2993117 () Bool)

(declare-fun e!1881189 () Bool)

(declare-fun e!1881193 () Bool)

(assert (=> b!2993117 (= e!1881189 e!1881193)))

(declare-fun c!492007 () Bool)

(assert (=> b!2993117 (= c!492007 ((_ is EmptyLang!9355) (reg!9684 r!17423)))))

(declare-fun b!2993118 () Bool)

(declare-fun res!1234570 () Bool)

(declare-fun e!1881190 () Bool)

(assert (=> b!2993118 (=> res!1234570 e!1881190)))

(assert (=> b!2993118 (= res!1234570 (not ((_ is ElementMatch!9355) (reg!9684 r!17423))))))

(assert (=> b!2993118 (= e!1881193 e!1881190)))

(declare-fun b!2993119 () Bool)

(declare-fun e!1881192 () Bool)

(assert (=> b!2993119 (= e!1881192 (not (= (head!6677 (_1!20146 lt!1040855)) (c!491875 (reg!9684 r!17423)))))))

(declare-fun b!2993120 () Bool)

(assert (=> b!2993120 (= e!1881195 (= (head!6677 (_1!20146 lt!1040855)) (c!491875 (reg!9684 r!17423))))))

(declare-fun b!2993121 () Bool)

(assert (=> b!2993121 (= e!1881194 (nullable!3020 (reg!9684 r!17423)))))

(declare-fun b!2993122 () Bool)

(declare-fun res!1234573 () Bool)

(assert (=> b!2993122 (=> (not res!1234573) (not e!1881195))))

(declare-fun call!200330 () Bool)

(assert (=> b!2993122 (= res!1234573 (not call!200330))))

(declare-fun b!2993123 () Bool)

(declare-fun res!1234569 () Bool)

(assert (=> b!2993123 (=> res!1234569 e!1881190)))

(assert (=> b!2993123 (= res!1234569 e!1881195)))

(declare-fun res!1234568 () Bool)

(assert (=> b!2993123 (=> (not res!1234568) (not e!1881195))))

(declare-fun lt!1040938 () Bool)

(assert (=> b!2993123 (= res!1234568 lt!1040938)))

(declare-fun bm!200325 () Bool)

(assert (=> bm!200325 (= call!200330 (isEmpty!19368 (_1!20146 lt!1040855)))))

(declare-fun b!2993124 () Bool)

(assert (=> b!2993124 (= e!1881193 (not lt!1040938))))

(declare-fun b!2993125 () Bool)

(declare-fun res!1234571 () Bool)

(assert (=> b!2993125 (=> res!1234571 e!1881192)))

(assert (=> b!2993125 (= res!1234571 (not (isEmpty!19368 (tail!4903 (_1!20146 lt!1040855)))))))

(declare-fun b!2993126 () Bool)

(declare-fun e!1881191 () Bool)

(assert (=> b!2993126 (= e!1881191 e!1881192)))

(declare-fun res!1234574 () Bool)

(assert (=> b!2993126 (=> res!1234574 e!1881192)))

(assert (=> b!2993126 (= res!1234574 call!200330)))

(declare-fun b!2993127 () Bool)

(assert (=> b!2993127 (= e!1881190 e!1881191)))

(declare-fun res!1234567 () Bool)

(assert (=> b!2993127 (=> (not res!1234567) (not e!1881191))))

(assert (=> b!2993127 (= res!1234567 (not lt!1040938))))

(declare-fun d!844981 () Bool)

(assert (=> d!844981 e!1881189))

(declare-fun c!492006 () Bool)

(assert (=> d!844981 (= c!492006 ((_ is EmptyExpr!9355) (reg!9684 r!17423)))))

(assert (=> d!844981 (= lt!1040938 e!1881194)))

(declare-fun c!492005 () Bool)

(assert (=> d!844981 (= c!492005 (isEmpty!19368 (_1!20146 lt!1040855)))))

(assert (=> d!844981 (validRegex!4088 (reg!9684 r!17423))))

(assert (=> d!844981 (= (matchR!4237 (reg!9684 r!17423) (_1!20146 lt!1040855)) lt!1040938)))

(declare-fun b!2993128 () Bool)

(assert (=> b!2993128 (= e!1881189 (= lt!1040938 call!200330))))

(assert (= (and d!844981 c!492005) b!2993121))

(assert (= (and d!844981 (not c!492005)) b!2993116))

(assert (= (and d!844981 c!492006) b!2993128))

(assert (= (and d!844981 (not c!492006)) b!2993117))

(assert (= (and b!2993117 c!492007) b!2993124))

(assert (= (and b!2993117 (not c!492007)) b!2993118))

(assert (= (and b!2993118 (not res!1234570)) b!2993123))

(assert (= (and b!2993123 res!1234568) b!2993122))

(assert (= (and b!2993122 res!1234573) b!2993115))

(assert (= (and b!2993115 res!1234572) b!2993120))

(assert (= (and b!2993123 (not res!1234569)) b!2993127))

(assert (= (and b!2993127 res!1234567) b!2993126))

(assert (= (and b!2993126 (not res!1234574)) b!2993125))

(assert (= (and b!2993125 (not res!1234571)) b!2993119))

(assert (= (or b!2993128 b!2993122 b!2993126) bm!200325))

(declare-fun m!3348481 () Bool)

(assert (=> bm!200325 m!3348481))

(assert (=> b!2993121 m!3348475))

(declare-fun m!3348483 () Bool)

(assert (=> b!2993116 m!3348483))

(assert (=> b!2993116 m!3348483))

(declare-fun m!3348485 () Bool)

(assert (=> b!2993116 m!3348485))

(declare-fun m!3348487 () Bool)

(assert (=> b!2993116 m!3348487))

(assert (=> b!2993116 m!3348485))

(assert (=> b!2993116 m!3348487))

(declare-fun m!3348489 () Bool)

(assert (=> b!2993116 m!3348489))

(assert (=> b!2993125 m!3348487))

(assert (=> b!2993125 m!3348487))

(declare-fun m!3348491 () Bool)

(assert (=> b!2993125 m!3348491))

(assert (=> b!2993120 m!3348483))

(assert (=> d!844981 m!3348481))

(assert (=> d!844981 m!3348275))

(assert (=> b!2993115 m!3348487))

(assert (=> b!2993115 m!3348487))

(assert (=> b!2993115 m!3348491))

(assert (=> b!2993119 m!3348483))

(assert (=> b!2992579 d!844981))

(declare-fun d!844983 () Bool)

(assert (=> d!844983 (= (get!10891 lt!1040849) (v!34879 lt!1040849))))

(assert (=> b!2992579 d!844983))

(declare-fun b!2993129 () Bool)

(declare-fun res!1234580 () Bool)

(declare-fun e!1881202 () Bool)

(assert (=> b!2993129 (=> (not res!1234580) (not e!1881202))))

(assert (=> b!2993129 (= res!1234580 (isEmpty!19368 (tail!4903 (_1!20146 lt!1040855))))))

(declare-fun b!2993130 () Bool)

(declare-fun e!1881201 () Bool)

(assert (=> b!2993130 (= e!1881201 (matchR!4237 (derivativeStep!2618 lt!1040846 (head!6677 (_1!20146 lt!1040855))) (tail!4903 (_1!20146 lt!1040855))))))

(declare-fun b!2993131 () Bool)

(declare-fun e!1881196 () Bool)

(declare-fun e!1881200 () Bool)

(assert (=> b!2993131 (= e!1881196 e!1881200)))

(declare-fun c!492010 () Bool)

(assert (=> b!2993131 (= c!492010 ((_ is EmptyLang!9355) lt!1040846))))

(declare-fun b!2993132 () Bool)

(declare-fun res!1234578 () Bool)

(declare-fun e!1881197 () Bool)

(assert (=> b!2993132 (=> res!1234578 e!1881197)))

(assert (=> b!2993132 (= res!1234578 (not ((_ is ElementMatch!9355) lt!1040846)))))

(assert (=> b!2993132 (= e!1881200 e!1881197)))

(declare-fun b!2993133 () Bool)

(declare-fun e!1881199 () Bool)

(assert (=> b!2993133 (= e!1881199 (not (= (head!6677 (_1!20146 lt!1040855)) (c!491875 lt!1040846))))))

(declare-fun b!2993134 () Bool)

(assert (=> b!2993134 (= e!1881202 (= (head!6677 (_1!20146 lt!1040855)) (c!491875 lt!1040846)))))

(declare-fun b!2993135 () Bool)

(assert (=> b!2993135 (= e!1881201 (nullable!3020 lt!1040846))))

(declare-fun b!2993136 () Bool)

(declare-fun res!1234581 () Bool)

(assert (=> b!2993136 (=> (not res!1234581) (not e!1881202))))

(declare-fun call!200331 () Bool)

(assert (=> b!2993136 (= res!1234581 (not call!200331))))

(declare-fun b!2993137 () Bool)

(declare-fun res!1234577 () Bool)

(assert (=> b!2993137 (=> res!1234577 e!1881197)))

(assert (=> b!2993137 (= res!1234577 e!1881202)))

(declare-fun res!1234576 () Bool)

(assert (=> b!2993137 (=> (not res!1234576) (not e!1881202))))

(declare-fun lt!1040939 () Bool)

(assert (=> b!2993137 (= res!1234576 lt!1040939)))

(declare-fun bm!200326 () Bool)

(assert (=> bm!200326 (= call!200331 (isEmpty!19368 (_1!20146 lt!1040855)))))

(declare-fun b!2993138 () Bool)

(assert (=> b!2993138 (= e!1881200 (not lt!1040939))))

(declare-fun b!2993139 () Bool)

(declare-fun res!1234579 () Bool)

(assert (=> b!2993139 (=> res!1234579 e!1881199)))

(assert (=> b!2993139 (= res!1234579 (not (isEmpty!19368 (tail!4903 (_1!20146 lt!1040855)))))))

(declare-fun b!2993140 () Bool)

(declare-fun e!1881198 () Bool)

(assert (=> b!2993140 (= e!1881198 e!1881199)))

(declare-fun res!1234582 () Bool)

(assert (=> b!2993140 (=> res!1234582 e!1881199)))

(assert (=> b!2993140 (= res!1234582 call!200331)))

(declare-fun b!2993141 () Bool)

(assert (=> b!2993141 (= e!1881197 e!1881198)))

(declare-fun res!1234575 () Bool)

(assert (=> b!2993141 (=> (not res!1234575) (not e!1881198))))

(assert (=> b!2993141 (= res!1234575 (not lt!1040939))))

(declare-fun d!844985 () Bool)

(assert (=> d!844985 e!1881196))

(declare-fun c!492009 () Bool)

(assert (=> d!844985 (= c!492009 ((_ is EmptyExpr!9355) lt!1040846))))

(assert (=> d!844985 (= lt!1040939 e!1881201)))

(declare-fun c!492008 () Bool)

(assert (=> d!844985 (= c!492008 (isEmpty!19368 (_1!20146 lt!1040855)))))

(assert (=> d!844985 (validRegex!4088 lt!1040846)))

(assert (=> d!844985 (= (matchR!4237 lt!1040846 (_1!20146 lt!1040855)) lt!1040939)))

(declare-fun b!2993142 () Bool)

(assert (=> b!2993142 (= e!1881196 (= lt!1040939 call!200331))))

(assert (= (and d!844985 c!492008) b!2993135))

(assert (= (and d!844985 (not c!492008)) b!2993130))

(assert (= (and d!844985 c!492009) b!2993142))

(assert (= (and d!844985 (not c!492009)) b!2993131))

(assert (= (and b!2993131 c!492010) b!2993138))

(assert (= (and b!2993131 (not c!492010)) b!2993132))

(assert (= (and b!2993132 (not res!1234578)) b!2993137))

(assert (= (and b!2993137 res!1234576) b!2993136))

(assert (= (and b!2993136 res!1234581) b!2993129))

(assert (= (and b!2993129 res!1234580) b!2993134))

(assert (= (and b!2993137 (not res!1234577)) b!2993141))

(assert (= (and b!2993141 res!1234575) b!2993140))

(assert (= (and b!2993140 (not res!1234582)) b!2993139))

(assert (= (and b!2993139 (not res!1234579)) b!2993133))

(assert (= (or b!2993142 b!2993136 b!2993140) bm!200326))

(assert (=> bm!200326 m!3348481))

(declare-fun m!3348493 () Bool)

(assert (=> b!2993135 m!3348493))

(assert (=> b!2993130 m!3348483))

(assert (=> b!2993130 m!3348483))

(declare-fun m!3348495 () Bool)

(assert (=> b!2993130 m!3348495))

(assert (=> b!2993130 m!3348487))

(assert (=> b!2993130 m!3348495))

(assert (=> b!2993130 m!3348487))

(declare-fun m!3348497 () Bool)

(assert (=> b!2993130 m!3348497))

(assert (=> b!2993139 m!3348487))

(assert (=> b!2993139 m!3348487))

(assert (=> b!2993139 m!3348491))

(assert (=> b!2993134 m!3348483))

(assert (=> d!844985 m!3348481))

(declare-fun m!3348499 () Bool)

(assert (=> d!844985 m!3348499))

(assert (=> b!2993129 m!3348487))

(assert (=> b!2993129 m!3348487))

(assert (=> b!2993129 m!3348491))

(assert (=> b!2993133 m!3348483))

(assert (=> b!2992584 d!844985))

(declare-fun b!2993143 () Bool)

(declare-fun res!1234588 () Bool)

(declare-fun e!1881209 () Bool)

(assert (=> b!2993143 (=> (not res!1234588) (not e!1881209))))

(assert (=> b!2993143 (= res!1234588 (isEmpty!19368 (tail!4903 (_2!20146 lt!1040855))))))

(declare-fun b!2993144 () Bool)

(declare-fun e!1881208 () Bool)

(assert (=> b!2993144 (= e!1881208 (matchR!4237 (derivativeStep!2618 lt!1040852 (head!6677 (_2!20146 lt!1040855))) (tail!4903 (_2!20146 lt!1040855))))))

(declare-fun b!2993145 () Bool)

(declare-fun e!1881203 () Bool)

(declare-fun e!1881207 () Bool)

(assert (=> b!2993145 (= e!1881203 e!1881207)))

(declare-fun c!492013 () Bool)

(assert (=> b!2993145 (= c!492013 ((_ is EmptyLang!9355) lt!1040852))))

(declare-fun b!2993146 () Bool)

(declare-fun res!1234586 () Bool)

(declare-fun e!1881204 () Bool)

(assert (=> b!2993146 (=> res!1234586 e!1881204)))

(assert (=> b!2993146 (= res!1234586 (not ((_ is ElementMatch!9355) lt!1040852)))))

(assert (=> b!2993146 (= e!1881207 e!1881204)))

(declare-fun b!2993147 () Bool)

(declare-fun e!1881206 () Bool)

(assert (=> b!2993147 (= e!1881206 (not (= (head!6677 (_2!20146 lt!1040855)) (c!491875 lt!1040852))))))

(declare-fun b!2993148 () Bool)

(assert (=> b!2993148 (= e!1881209 (= (head!6677 (_2!20146 lt!1040855)) (c!491875 lt!1040852)))))

(declare-fun b!2993149 () Bool)

(assert (=> b!2993149 (= e!1881208 (nullable!3020 lt!1040852))))

(declare-fun b!2993150 () Bool)

(declare-fun res!1234589 () Bool)

(assert (=> b!2993150 (=> (not res!1234589) (not e!1881209))))

(declare-fun call!200332 () Bool)

(assert (=> b!2993150 (= res!1234589 (not call!200332))))

(declare-fun b!2993151 () Bool)

(declare-fun res!1234585 () Bool)

(assert (=> b!2993151 (=> res!1234585 e!1881204)))

(assert (=> b!2993151 (= res!1234585 e!1881209)))

(declare-fun res!1234584 () Bool)

(assert (=> b!2993151 (=> (not res!1234584) (not e!1881209))))

(declare-fun lt!1040940 () Bool)

(assert (=> b!2993151 (= res!1234584 lt!1040940)))

(declare-fun bm!200327 () Bool)

(assert (=> bm!200327 (= call!200332 (isEmpty!19368 (_2!20146 lt!1040855)))))

(declare-fun b!2993152 () Bool)

(assert (=> b!2993152 (= e!1881207 (not lt!1040940))))

(declare-fun b!2993153 () Bool)

(declare-fun res!1234587 () Bool)

(assert (=> b!2993153 (=> res!1234587 e!1881206)))

(assert (=> b!2993153 (= res!1234587 (not (isEmpty!19368 (tail!4903 (_2!20146 lt!1040855)))))))

(declare-fun b!2993154 () Bool)

(declare-fun e!1881205 () Bool)

(assert (=> b!2993154 (= e!1881205 e!1881206)))

(declare-fun res!1234590 () Bool)

(assert (=> b!2993154 (=> res!1234590 e!1881206)))

(assert (=> b!2993154 (= res!1234590 call!200332)))

(declare-fun b!2993155 () Bool)

(assert (=> b!2993155 (= e!1881204 e!1881205)))

(declare-fun res!1234583 () Bool)

(assert (=> b!2993155 (=> (not res!1234583) (not e!1881205))))

(assert (=> b!2993155 (= res!1234583 (not lt!1040940))))

(declare-fun d!844987 () Bool)

(assert (=> d!844987 e!1881203))

(declare-fun c!492012 () Bool)

(assert (=> d!844987 (= c!492012 ((_ is EmptyExpr!9355) lt!1040852))))

(assert (=> d!844987 (= lt!1040940 e!1881208)))

(declare-fun c!492011 () Bool)

(assert (=> d!844987 (= c!492011 (isEmpty!19368 (_2!20146 lt!1040855)))))

(assert (=> d!844987 (validRegex!4088 lt!1040852)))

(assert (=> d!844987 (= (matchR!4237 lt!1040852 (_2!20146 lt!1040855)) lt!1040940)))

(declare-fun b!2993156 () Bool)

(assert (=> b!2993156 (= e!1881203 (= lt!1040940 call!200332))))

(assert (= (and d!844987 c!492011) b!2993149))

(assert (= (and d!844987 (not c!492011)) b!2993144))

(assert (= (and d!844987 c!492012) b!2993156))

(assert (= (and d!844987 (not c!492012)) b!2993145))

(assert (= (and b!2993145 c!492013) b!2993152))

(assert (= (and b!2993145 (not c!492013)) b!2993146))

(assert (= (and b!2993146 (not res!1234586)) b!2993151))

(assert (= (and b!2993151 res!1234584) b!2993150))

(assert (= (and b!2993150 res!1234589) b!2993143))

(assert (= (and b!2993143 res!1234588) b!2993148))

(assert (= (and b!2993151 (not res!1234585)) b!2993155))

(assert (= (and b!2993155 res!1234583) b!2993154))

(assert (= (and b!2993154 (not res!1234590)) b!2993153))

(assert (= (and b!2993153 (not res!1234587)) b!2993147))

(assert (= (or b!2993156 b!2993150 b!2993154) bm!200327))

(assert (=> bm!200327 m!3348439))

(declare-fun m!3348501 () Bool)

(assert (=> b!2993149 m!3348501))

(assert (=> b!2993144 m!3348443))

(assert (=> b!2993144 m!3348443))

(declare-fun m!3348503 () Bool)

(assert (=> b!2993144 m!3348503))

(assert (=> b!2993144 m!3348447))

(assert (=> b!2993144 m!3348503))

(assert (=> b!2993144 m!3348447))

(declare-fun m!3348505 () Bool)

(assert (=> b!2993144 m!3348505))

(assert (=> b!2993153 m!3348447))

(assert (=> b!2993153 m!3348447))

(assert (=> b!2993153 m!3348451))

(assert (=> b!2993148 m!3348443))

(assert (=> d!844987 m!3348439))

(declare-fun m!3348507 () Bool)

(assert (=> d!844987 m!3348507))

(assert (=> b!2993143 m!3348447))

(assert (=> b!2993143 m!3348447))

(assert (=> b!2993143 m!3348451))

(assert (=> b!2993147 m!3348443))

(assert (=> b!2992584 d!844987))

(declare-fun d!844989 () Bool)

(assert (=> d!844989 (= (matchR!4237 (reg!9684 r!17423) (_1!20146 lt!1040855)) (matchR!4237 (simplify!346 (reg!9684 r!17423)) (_1!20146 lt!1040855)))))

(declare-fun lt!1040943 () Unit!49119)

(declare-fun choose!17772 (Regex!9355 List!35220) Unit!49119)

(assert (=> d!844989 (= lt!1040943 (choose!17772 (reg!9684 r!17423) (_1!20146 lt!1040855)))))

(assert (=> d!844989 (validRegex!4088 (reg!9684 r!17423))))

(assert (=> d!844989 (= (lemmaSimplifySound!204 (reg!9684 r!17423) (_1!20146 lt!1040855)) lt!1040943)))

(declare-fun bs!527880 () Bool)

(assert (= bs!527880 d!844989))

(assert (=> bs!527880 m!3348217))

(declare-fun m!3348509 () Bool)

(assert (=> bs!527880 m!3348509))

(assert (=> bs!527880 m!3348275))

(declare-fun m!3348511 () Bool)

(assert (=> bs!527880 m!3348511))

(assert (=> bs!527880 m!3348207))

(assert (=> bs!527880 m!3348217))

(assert (=> b!2992584 d!844989))

(declare-fun b!2993207 () Bool)

(declare-fun e!1881246 () Bool)

(declare-fun lt!1040956 () Regex!9355)

(assert (=> b!2993207 (= e!1881246 (= (nullable!3020 lt!1040956) (nullable!3020 lt!1040854)))))

(declare-fun b!2993208 () Bool)

(declare-fun e!1881244 () Regex!9355)

(declare-fun e!1881245 () Regex!9355)

(assert (=> b!2993208 (= e!1881244 e!1881245)))

(declare-fun c!492039 () Bool)

(assert (=> b!2993208 (= c!492039 ((_ is ElementMatch!9355) lt!1040854))))

(declare-fun b!2993209 () Bool)

(declare-fun e!1881249 () Regex!9355)

(assert (=> b!2993209 (= e!1881249 EmptyLang!9355)))

(declare-fun c!492036 () Bool)

(declare-fun lt!1040959 () Regex!9355)

(declare-fun call!200347 () Bool)

(declare-fun lt!1040960 () Regex!9355)

(declare-fun c!492046 () Bool)

(declare-fun bm!200342 () Bool)

(declare-fun lt!1040958 () Regex!9355)

(declare-fun isEmptyLang!447 (Regex!9355) Bool)

(assert (=> bm!200342 (= call!200347 (isEmptyLang!447 (ite c!492046 lt!1040958 (ite c!492036 lt!1040960 lt!1040959))))))

(declare-fun b!2993210 () Bool)

(declare-fun e!1881250 () Bool)

(declare-fun call!200349 () Bool)

(assert (=> b!2993210 (= e!1881250 call!200349)))

(declare-fun b!2993211 () Bool)

(declare-fun e!1881248 () Regex!9355)

(declare-fun e!1881239 () Regex!9355)

(assert (=> b!2993211 (= e!1881248 e!1881239)))

(declare-fun c!492038 () Bool)

(declare-fun call!200352 () Bool)

(assert (=> b!2993211 (= c!492038 call!200352)))

(declare-fun b!2993212 () Bool)

(assert (=> b!2993212 (= c!492036 ((_ is Union!9355) lt!1040854))))

(declare-fun e!1881241 () Regex!9355)

(declare-fun e!1881238 () Regex!9355)

(assert (=> b!2993212 (= e!1881241 e!1881238)))

(declare-fun call!200348 () Bool)

(declare-fun lt!1040957 () Regex!9355)

(declare-fun lt!1040961 () Regex!9355)

(declare-fun bm!200343 () Bool)

(assert (=> bm!200343 (= call!200348 (isEmptyLang!447 (ite c!492036 lt!1040961 lt!1040957)))))

(declare-fun b!2993213 () Bool)

(declare-fun e!1881240 () Regex!9355)

(assert (=> b!2993213 (= e!1881240 lt!1040960)))

(declare-fun b!2993214 () Bool)

(assert (=> b!2993214 (= e!1881244 EmptyLang!9355)))

(declare-fun b!2993215 () Bool)

(declare-fun e!1881242 () Regex!9355)

(assert (=> b!2993215 (= e!1881242 (Star!9355 lt!1040958))))

(declare-fun bm!200344 () Bool)

(assert (=> bm!200344 (= call!200349 call!200347)))

(declare-fun bm!200345 () Bool)

(declare-fun call!200353 () Regex!9355)

(assert (=> bm!200345 (= call!200353 (simplify!346 (ite c!492046 (reg!9684 lt!1040854) (ite c!492036 (regTwo!19223 lt!1040854) (regOne!19222 lt!1040854)))))))

(declare-fun b!2993216 () Bool)

(declare-fun e!1881243 () Regex!9355)

(assert (=> b!2993216 (= e!1881243 EmptyExpr!9355)))

(declare-fun d!844991 () Bool)

(assert (=> d!844991 e!1881246))

(declare-fun res!1234597 () Bool)

(assert (=> d!844991 (=> (not res!1234597) (not e!1881246))))

(assert (=> d!844991 (= res!1234597 (validRegex!4088 lt!1040956))))

(assert (=> d!844991 (= lt!1040956 e!1881244)))

(declare-fun c!492043 () Bool)

(assert (=> d!844991 (= c!492043 ((_ is EmptyLang!9355) lt!1040854))))

(assert (=> d!844991 (validRegex!4088 lt!1040854)))

(assert (=> d!844991 (= (simplify!346 lt!1040854) lt!1040956)))

(declare-fun b!2993217 () Bool)

(declare-fun e!1881247 () Bool)

(assert (=> b!2993217 (= e!1881247 call!200352)))

(declare-fun b!2993218 () Bool)

(assert (=> b!2993218 (= e!1881238 e!1881249)))

(declare-fun call!200351 () Regex!9355)

(assert (=> b!2993218 (= lt!1040957 call!200351)))

(declare-fun call!200350 () Regex!9355)

(assert (=> b!2993218 (= lt!1040959 call!200350)))

(declare-fun res!1234598 () Bool)

(assert (=> b!2993218 (= res!1234598 call!200348)))

(assert (=> b!2993218 (=> res!1234598 e!1881250)))

(declare-fun c!492041 () Bool)

(assert (=> b!2993218 (= c!492041 e!1881250)))

(declare-fun b!2993219 () Bool)

(declare-fun e!1881251 () Regex!9355)

(assert (=> b!2993219 (= e!1881251 lt!1040961)))

(declare-fun b!2993220 () Bool)

(assert (=> b!2993220 (= e!1881248 lt!1040959)))

(declare-fun b!2993221 () Bool)

(declare-fun c!492040 () Bool)

(assert (=> b!2993221 (= c!492040 ((_ is EmptyExpr!9355) lt!1040854))))

(assert (=> b!2993221 (= e!1881245 e!1881243)))

(declare-fun b!2993222 () Bool)

(declare-fun c!492045 () Bool)

(assert (=> b!2993222 (= c!492045 e!1881247)))

(declare-fun res!1234599 () Bool)

(assert (=> b!2993222 (=> res!1234599 e!1881247)))

(assert (=> b!2993222 (= res!1234599 call!200347)))

(assert (=> b!2993222 (= lt!1040958 call!200353)))

(assert (=> b!2993222 (= e!1881241 e!1881242)))

(declare-fun b!2993223 () Bool)

(assert (=> b!2993223 (= e!1881238 e!1881240)))

(assert (=> b!2993223 (= lt!1040961 call!200350)))

(assert (=> b!2993223 (= lt!1040960 call!200351)))

(declare-fun c!492037 () Bool)

(assert (=> b!2993223 (= c!492037 call!200348)))

(declare-fun b!2993224 () Bool)

(assert (=> b!2993224 (= e!1881239 (Concat!14676 lt!1040957 lt!1040959))))

(declare-fun bm!200346 () Bool)

(declare-fun isEmptyExpr!464 (Regex!9355) Bool)

(assert (=> bm!200346 (= call!200352 (isEmptyExpr!464 (ite c!492046 lt!1040958 lt!1040959)))))

(declare-fun b!2993225 () Bool)

(declare-fun c!492044 () Bool)

(assert (=> b!2993225 (= c!492044 (isEmptyExpr!464 lt!1040957))))

(assert (=> b!2993225 (= e!1881249 e!1881248)))

(declare-fun b!2993226 () Bool)

(assert (=> b!2993226 (= e!1881243 e!1881241)))

(assert (=> b!2993226 (= c!492046 ((_ is Star!9355) lt!1040854))))

(declare-fun b!2993227 () Bool)

(assert (=> b!2993227 (= e!1881242 EmptyExpr!9355)))

(declare-fun b!2993228 () Bool)

(declare-fun c!492042 () Bool)

(assert (=> b!2993228 (= c!492042 call!200349)))

(assert (=> b!2993228 (= e!1881240 e!1881251)))

(declare-fun bm!200347 () Bool)

(assert (=> bm!200347 (= call!200351 call!200353)))

(declare-fun b!2993229 () Bool)

(assert (=> b!2993229 (= e!1881239 lt!1040957)))

(declare-fun b!2993230 () Bool)

(assert (=> b!2993230 (= e!1881245 lt!1040854)))

(declare-fun b!2993231 () Bool)

(assert (=> b!2993231 (= e!1881251 (Union!9355 lt!1040961 lt!1040960))))

(declare-fun bm!200348 () Bool)

(assert (=> bm!200348 (= call!200350 (simplify!346 (ite c!492036 (regOne!19223 lt!1040854) (regTwo!19222 lt!1040854))))))

(assert (= (and d!844991 c!492043) b!2993214))

(assert (= (and d!844991 (not c!492043)) b!2993208))

(assert (= (and b!2993208 c!492039) b!2993230))

(assert (= (and b!2993208 (not c!492039)) b!2993221))

(assert (= (and b!2993221 c!492040) b!2993216))

(assert (= (and b!2993221 (not c!492040)) b!2993226))

(assert (= (and b!2993226 c!492046) b!2993222))

(assert (= (and b!2993226 (not c!492046)) b!2993212))

(assert (= (and b!2993222 (not res!1234599)) b!2993217))

(assert (= (and b!2993222 c!492045) b!2993227))

(assert (= (and b!2993222 (not c!492045)) b!2993215))

(assert (= (and b!2993212 c!492036) b!2993223))

(assert (= (and b!2993212 (not c!492036)) b!2993218))

(assert (= (and b!2993223 c!492037) b!2993213))

(assert (= (and b!2993223 (not c!492037)) b!2993228))

(assert (= (and b!2993228 c!492042) b!2993219))

(assert (= (and b!2993228 (not c!492042)) b!2993231))

(assert (= (and b!2993218 (not res!1234598)) b!2993210))

(assert (= (and b!2993218 c!492041) b!2993209))

(assert (= (and b!2993218 (not c!492041)) b!2993225))

(assert (= (and b!2993225 c!492044) b!2993220))

(assert (= (and b!2993225 (not c!492044)) b!2993211))

(assert (= (and b!2993211 c!492038) b!2993229))

(assert (= (and b!2993211 (not c!492038)) b!2993224))

(assert (= (or b!2993223 b!2993218) bm!200348))

(assert (= (or b!2993223 b!2993218) bm!200347))

(assert (= (or b!2993223 b!2993218) bm!200343))

(assert (= (or b!2993228 b!2993210) bm!200344))

(assert (= (or b!2993217 b!2993211) bm!200346))

(assert (= (or b!2993222 bm!200347) bm!200345))

(assert (= (or b!2993222 bm!200344) bm!200342))

(assert (= (and d!844991 res!1234597) b!2993207))

(declare-fun m!3348513 () Bool)

(assert (=> b!2993225 m!3348513))

(declare-fun m!3348515 () Bool)

(assert (=> d!844991 m!3348515))

(assert (=> d!844991 m!3348453))

(declare-fun m!3348517 () Bool)

(assert (=> bm!200346 m!3348517))

(declare-fun m!3348519 () Bool)

(assert (=> bm!200345 m!3348519))

(declare-fun m!3348521 () Bool)

(assert (=> bm!200342 m!3348521))

(declare-fun m!3348523 () Bool)

(assert (=> b!2993207 m!3348523))

(assert (=> b!2993207 m!3348441))

(declare-fun m!3348525 () Bool)

(assert (=> bm!200343 m!3348525))

(declare-fun m!3348527 () Bool)

(assert (=> bm!200348 m!3348527))

(assert (=> b!2992584 d!844991))

(declare-fun d!844993 () Bool)

(assert (=> d!844993 (= (matchR!4237 lt!1040854 (_2!20146 lt!1040855)) (matchR!4237 (simplify!346 lt!1040854) (_2!20146 lt!1040855)))))

(declare-fun lt!1040962 () Unit!49119)

(assert (=> d!844993 (= lt!1040962 (choose!17772 lt!1040854 (_2!20146 lt!1040855)))))

(assert (=> d!844993 (validRegex!4088 lt!1040854)))

(assert (=> d!844993 (= (lemmaSimplifySound!204 lt!1040854 (_2!20146 lt!1040855)) lt!1040962)))

(declare-fun bs!527881 () Bool)

(assert (= bs!527881 d!844993))

(assert (=> bs!527881 m!3348221))

(declare-fun m!3348529 () Bool)

(assert (=> bs!527881 m!3348529))

(assert (=> bs!527881 m!3348453))

(declare-fun m!3348531 () Bool)

(assert (=> bs!527881 m!3348531))

(assert (=> bs!527881 m!3348199))

(assert (=> bs!527881 m!3348221))

(assert (=> b!2992584 d!844993))

(declare-fun b!2993232 () Bool)

(declare-fun e!1881260 () Bool)

(declare-fun lt!1040963 () Regex!9355)

(assert (=> b!2993232 (= e!1881260 (= (nullable!3020 lt!1040963) (nullable!3020 (reg!9684 r!17423))))))

(declare-fun b!2993233 () Bool)

(declare-fun e!1881258 () Regex!9355)

(declare-fun e!1881259 () Regex!9355)

(assert (=> b!2993233 (= e!1881258 e!1881259)))

(declare-fun c!492050 () Bool)

(assert (=> b!2993233 (= c!492050 ((_ is ElementMatch!9355) (reg!9684 r!17423)))))

(declare-fun b!2993234 () Bool)

(declare-fun e!1881263 () Regex!9355)

(assert (=> b!2993234 (= e!1881263 EmptyLang!9355)))

(declare-fun c!492047 () Bool)

(declare-fun lt!1040966 () Regex!9355)

(declare-fun call!200354 () Bool)

(declare-fun lt!1040967 () Regex!9355)

(declare-fun c!492057 () Bool)

(declare-fun lt!1040965 () Regex!9355)

(declare-fun bm!200349 () Bool)

(assert (=> bm!200349 (= call!200354 (isEmptyLang!447 (ite c!492057 lt!1040965 (ite c!492047 lt!1040967 lt!1040966))))))

(declare-fun b!2993235 () Bool)

(declare-fun e!1881264 () Bool)

(declare-fun call!200356 () Bool)

(assert (=> b!2993235 (= e!1881264 call!200356)))

(declare-fun b!2993236 () Bool)

(declare-fun e!1881262 () Regex!9355)

(declare-fun e!1881253 () Regex!9355)

(assert (=> b!2993236 (= e!1881262 e!1881253)))

(declare-fun c!492049 () Bool)

(declare-fun call!200359 () Bool)

(assert (=> b!2993236 (= c!492049 call!200359)))

(declare-fun b!2993237 () Bool)

(assert (=> b!2993237 (= c!492047 ((_ is Union!9355) (reg!9684 r!17423)))))

(declare-fun e!1881255 () Regex!9355)

(declare-fun e!1881252 () Regex!9355)

(assert (=> b!2993237 (= e!1881255 e!1881252)))

(declare-fun call!200355 () Bool)

(declare-fun lt!1040964 () Regex!9355)

(declare-fun bm!200350 () Bool)

(declare-fun lt!1040968 () Regex!9355)

(assert (=> bm!200350 (= call!200355 (isEmptyLang!447 (ite c!492047 lt!1040968 lt!1040964)))))

(declare-fun b!2993238 () Bool)

(declare-fun e!1881254 () Regex!9355)

(assert (=> b!2993238 (= e!1881254 lt!1040967)))

(declare-fun b!2993239 () Bool)

(assert (=> b!2993239 (= e!1881258 EmptyLang!9355)))

(declare-fun b!2993240 () Bool)

(declare-fun e!1881256 () Regex!9355)

(assert (=> b!2993240 (= e!1881256 (Star!9355 lt!1040965))))

(declare-fun bm!200351 () Bool)

(assert (=> bm!200351 (= call!200356 call!200354)))

(declare-fun bm!200352 () Bool)

(declare-fun call!200360 () Regex!9355)

(assert (=> bm!200352 (= call!200360 (simplify!346 (ite c!492057 (reg!9684 (reg!9684 r!17423)) (ite c!492047 (regTwo!19223 (reg!9684 r!17423)) (regOne!19222 (reg!9684 r!17423))))))))

(declare-fun b!2993241 () Bool)

(declare-fun e!1881257 () Regex!9355)

(assert (=> b!2993241 (= e!1881257 EmptyExpr!9355)))

(declare-fun d!844995 () Bool)

(assert (=> d!844995 e!1881260))

(declare-fun res!1234600 () Bool)

(assert (=> d!844995 (=> (not res!1234600) (not e!1881260))))

(assert (=> d!844995 (= res!1234600 (validRegex!4088 lt!1040963))))

(assert (=> d!844995 (= lt!1040963 e!1881258)))

(declare-fun c!492054 () Bool)

(assert (=> d!844995 (= c!492054 ((_ is EmptyLang!9355) (reg!9684 r!17423)))))

(assert (=> d!844995 (validRegex!4088 (reg!9684 r!17423))))

(assert (=> d!844995 (= (simplify!346 (reg!9684 r!17423)) lt!1040963)))

(declare-fun b!2993242 () Bool)

(declare-fun e!1881261 () Bool)

(assert (=> b!2993242 (= e!1881261 call!200359)))

(declare-fun b!2993243 () Bool)

(assert (=> b!2993243 (= e!1881252 e!1881263)))

(declare-fun call!200358 () Regex!9355)

(assert (=> b!2993243 (= lt!1040964 call!200358)))

(declare-fun call!200357 () Regex!9355)

(assert (=> b!2993243 (= lt!1040966 call!200357)))

(declare-fun res!1234601 () Bool)

(assert (=> b!2993243 (= res!1234601 call!200355)))

(assert (=> b!2993243 (=> res!1234601 e!1881264)))

(declare-fun c!492052 () Bool)

(assert (=> b!2993243 (= c!492052 e!1881264)))

(declare-fun b!2993244 () Bool)

(declare-fun e!1881265 () Regex!9355)

(assert (=> b!2993244 (= e!1881265 lt!1040968)))

(declare-fun b!2993245 () Bool)

(assert (=> b!2993245 (= e!1881262 lt!1040966)))

(declare-fun b!2993246 () Bool)

(declare-fun c!492051 () Bool)

(assert (=> b!2993246 (= c!492051 ((_ is EmptyExpr!9355) (reg!9684 r!17423)))))

(assert (=> b!2993246 (= e!1881259 e!1881257)))

(declare-fun b!2993247 () Bool)

(declare-fun c!492056 () Bool)

(assert (=> b!2993247 (= c!492056 e!1881261)))

(declare-fun res!1234602 () Bool)

(assert (=> b!2993247 (=> res!1234602 e!1881261)))

(assert (=> b!2993247 (= res!1234602 call!200354)))

(assert (=> b!2993247 (= lt!1040965 call!200360)))

(assert (=> b!2993247 (= e!1881255 e!1881256)))

(declare-fun b!2993248 () Bool)

(assert (=> b!2993248 (= e!1881252 e!1881254)))

(assert (=> b!2993248 (= lt!1040968 call!200357)))

(assert (=> b!2993248 (= lt!1040967 call!200358)))

(declare-fun c!492048 () Bool)

(assert (=> b!2993248 (= c!492048 call!200355)))

(declare-fun b!2993249 () Bool)

(assert (=> b!2993249 (= e!1881253 (Concat!14676 lt!1040964 lt!1040966))))

(declare-fun bm!200353 () Bool)

(assert (=> bm!200353 (= call!200359 (isEmptyExpr!464 (ite c!492057 lt!1040965 lt!1040966)))))

(declare-fun b!2993250 () Bool)

(declare-fun c!492055 () Bool)

(assert (=> b!2993250 (= c!492055 (isEmptyExpr!464 lt!1040964))))

(assert (=> b!2993250 (= e!1881263 e!1881262)))

(declare-fun b!2993251 () Bool)

(assert (=> b!2993251 (= e!1881257 e!1881255)))

(assert (=> b!2993251 (= c!492057 ((_ is Star!9355) (reg!9684 r!17423)))))

(declare-fun b!2993252 () Bool)

(assert (=> b!2993252 (= e!1881256 EmptyExpr!9355)))

(declare-fun b!2993253 () Bool)

(declare-fun c!492053 () Bool)

(assert (=> b!2993253 (= c!492053 call!200356)))

(assert (=> b!2993253 (= e!1881254 e!1881265)))

(declare-fun bm!200354 () Bool)

(assert (=> bm!200354 (= call!200358 call!200360)))

(declare-fun b!2993254 () Bool)

(assert (=> b!2993254 (= e!1881253 lt!1040964)))

(declare-fun b!2993255 () Bool)

(assert (=> b!2993255 (= e!1881259 (reg!9684 r!17423))))

(declare-fun b!2993256 () Bool)

(assert (=> b!2993256 (= e!1881265 (Union!9355 lt!1040968 lt!1040967))))

(declare-fun bm!200355 () Bool)

(assert (=> bm!200355 (= call!200357 (simplify!346 (ite c!492047 (regOne!19223 (reg!9684 r!17423)) (regTwo!19222 (reg!9684 r!17423)))))))

(assert (= (and d!844995 c!492054) b!2993239))

(assert (= (and d!844995 (not c!492054)) b!2993233))

(assert (= (and b!2993233 c!492050) b!2993255))

(assert (= (and b!2993233 (not c!492050)) b!2993246))

(assert (= (and b!2993246 c!492051) b!2993241))

(assert (= (and b!2993246 (not c!492051)) b!2993251))

(assert (= (and b!2993251 c!492057) b!2993247))

(assert (= (and b!2993251 (not c!492057)) b!2993237))

(assert (= (and b!2993247 (not res!1234602)) b!2993242))

(assert (= (and b!2993247 c!492056) b!2993252))

(assert (= (and b!2993247 (not c!492056)) b!2993240))

(assert (= (and b!2993237 c!492047) b!2993248))

(assert (= (and b!2993237 (not c!492047)) b!2993243))

(assert (= (and b!2993248 c!492048) b!2993238))

(assert (= (and b!2993248 (not c!492048)) b!2993253))

(assert (= (and b!2993253 c!492053) b!2993244))

(assert (= (and b!2993253 (not c!492053)) b!2993256))

(assert (= (and b!2993243 (not res!1234601)) b!2993235))

(assert (= (and b!2993243 c!492052) b!2993234))

(assert (= (and b!2993243 (not c!492052)) b!2993250))

(assert (= (and b!2993250 c!492055) b!2993245))

(assert (= (and b!2993250 (not c!492055)) b!2993236))

(assert (= (and b!2993236 c!492049) b!2993254))

(assert (= (and b!2993236 (not c!492049)) b!2993249))

(assert (= (or b!2993248 b!2993243) bm!200355))

(assert (= (or b!2993248 b!2993243) bm!200354))

(assert (= (or b!2993248 b!2993243) bm!200350))

(assert (= (or b!2993253 b!2993235) bm!200351))

(assert (= (or b!2993242 b!2993236) bm!200353))

(assert (= (or b!2993247 bm!200354) bm!200352))

(assert (= (or b!2993247 bm!200351) bm!200349))

(assert (= (and d!844995 res!1234600) b!2993232))

(declare-fun m!3348533 () Bool)

(assert (=> b!2993250 m!3348533))

(declare-fun m!3348535 () Bool)

(assert (=> d!844995 m!3348535))

(assert (=> d!844995 m!3348275))

(declare-fun m!3348537 () Bool)

(assert (=> bm!200353 m!3348537))

(declare-fun m!3348539 () Bool)

(assert (=> bm!200352 m!3348539))

(declare-fun m!3348541 () Bool)

(assert (=> bm!200349 m!3348541))

(declare-fun m!3348543 () Bool)

(assert (=> b!2993232 m!3348543))

(assert (=> b!2993232 m!3348475))

(declare-fun m!3348545 () Bool)

(assert (=> bm!200350 m!3348545))

(declare-fun m!3348547 () Bool)

(assert (=> bm!200355 m!3348547))

(assert (=> b!2992584 d!844995))

(declare-fun d!844997 () Bool)

(declare-fun lt!1040971 () Int)

(assert (=> d!844997 (>= lt!1040971 0)))

(declare-fun e!1881268 () Int)

(assert (=> d!844997 (= lt!1040971 e!1881268)))

(declare-fun c!492060 () Bool)

(assert (=> d!844997 (= c!492060 ((_ is Nil!35096) (_2!20146 lt!1040855)))))

(assert (=> d!844997 (= (size!26505 (_2!20146 lt!1040855)) lt!1040971)))

(declare-fun b!2993261 () Bool)

(assert (=> b!2993261 (= e!1881268 0)))

(declare-fun b!2993262 () Bool)

(assert (=> b!2993262 (= e!1881268 (+ 1 (size!26505 (t!234285 (_2!20146 lt!1040855)))))))

(assert (= (and d!844997 c!492060) b!2993261))

(assert (= (and d!844997 (not c!492060)) b!2993262))

(declare-fun m!3348549 () Bool)

(assert (=> b!2993262 m!3348549))

(assert (=> b!2992584 d!844997))

(declare-fun d!844999 () Bool)

(declare-fun lt!1040972 () Int)

(assert (=> d!844999 (>= lt!1040972 0)))

(declare-fun e!1881269 () Int)

(assert (=> d!844999 (= lt!1040972 e!1881269)))

(declare-fun c!492061 () Bool)

(assert (=> d!844999 (= c!492061 ((_ is Nil!35096) s!11993))))

(assert (=> d!844999 (= (size!26505 s!11993) lt!1040972)))

(declare-fun b!2993263 () Bool)

(assert (=> b!2993263 (= e!1881269 0)))

(declare-fun b!2993264 () Bool)

(assert (=> b!2993264 (= e!1881269 (+ 1 (size!26505 (t!234285 s!11993))))))

(assert (= (and d!844999 c!492061) b!2993263))

(assert (= (and d!844999 (not c!492061)) b!2993264))

(declare-fun m!3348551 () Bool)

(assert (=> b!2993264 m!3348551))

(assert (=> b!2992584 d!844999))

(declare-fun e!1881272 () Bool)

(assert (=> b!2992588 (= tp!951335 e!1881272)))

(declare-fun b!2993277 () Bool)

(declare-fun tp!951389 () Bool)

(assert (=> b!2993277 (= e!1881272 tp!951389)))

(declare-fun b!2993278 () Bool)

(declare-fun tp!951387 () Bool)

(declare-fun tp!951390 () Bool)

(assert (=> b!2993278 (= e!1881272 (and tp!951387 tp!951390))))

(declare-fun b!2993275 () Bool)

(assert (=> b!2993275 (= e!1881272 tp_is_empty!16273)))

(declare-fun b!2993276 () Bool)

(declare-fun tp!951388 () Bool)

(declare-fun tp!951386 () Bool)

(assert (=> b!2993276 (= e!1881272 (and tp!951388 tp!951386))))

(assert (= (and b!2992588 ((_ is ElementMatch!9355) (regOne!19222 r!17423))) b!2993275))

(assert (= (and b!2992588 ((_ is Concat!14676) (regOne!19222 r!17423))) b!2993276))

(assert (= (and b!2992588 ((_ is Star!9355) (regOne!19222 r!17423))) b!2993277))

(assert (= (and b!2992588 ((_ is Union!9355) (regOne!19222 r!17423))) b!2993278))

(declare-fun e!1881273 () Bool)

(assert (=> b!2992588 (= tp!951334 e!1881273)))

(declare-fun b!2993281 () Bool)

(declare-fun tp!951394 () Bool)

(assert (=> b!2993281 (= e!1881273 tp!951394)))

(declare-fun b!2993282 () Bool)

(declare-fun tp!951392 () Bool)

(declare-fun tp!951395 () Bool)

(assert (=> b!2993282 (= e!1881273 (and tp!951392 tp!951395))))

(declare-fun b!2993279 () Bool)

(assert (=> b!2993279 (= e!1881273 tp_is_empty!16273)))

(declare-fun b!2993280 () Bool)

(declare-fun tp!951393 () Bool)

(declare-fun tp!951391 () Bool)

(assert (=> b!2993280 (= e!1881273 (and tp!951393 tp!951391))))

(assert (= (and b!2992588 ((_ is ElementMatch!9355) (regTwo!19222 r!17423))) b!2993279))

(assert (= (and b!2992588 ((_ is Concat!14676) (regTwo!19222 r!17423))) b!2993280))

(assert (= (and b!2992588 ((_ is Star!9355) (regTwo!19222 r!17423))) b!2993281))

(assert (= (and b!2992588 ((_ is Union!9355) (regTwo!19222 r!17423))) b!2993282))

(declare-fun e!1881274 () Bool)

(assert (=> b!2992589 (= tp!951332 e!1881274)))

(declare-fun b!2993285 () Bool)

(declare-fun tp!951399 () Bool)

(assert (=> b!2993285 (= e!1881274 tp!951399)))

(declare-fun b!2993286 () Bool)

(declare-fun tp!951397 () Bool)

(declare-fun tp!951400 () Bool)

(assert (=> b!2993286 (= e!1881274 (and tp!951397 tp!951400))))

(declare-fun b!2993283 () Bool)

(assert (=> b!2993283 (= e!1881274 tp_is_empty!16273)))

(declare-fun b!2993284 () Bool)

(declare-fun tp!951398 () Bool)

(declare-fun tp!951396 () Bool)

(assert (=> b!2993284 (= e!1881274 (and tp!951398 tp!951396))))

(assert (= (and b!2992589 ((_ is ElementMatch!9355) (regOne!19223 r!17423))) b!2993283))

(assert (= (and b!2992589 ((_ is Concat!14676) (regOne!19223 r!17423))) b!2993284))

(assert (= (and b!2992589 ((_ is Star!9355) (regOne!19223 r!17423))) b!2993285))

(assert (= (and b!2992589 ((_ is Union!9355) (regOne!19223 r!17423))) b!2993286))

(declare-fun e!1881275 () Bool)

(assert (=> b!2992589 (= tp!951336 e!1881275)))

(declare-fun b!2993289 () Bool)

(declare-fun tp!951404 () Bool)

(assert (=> b!2993289 (= e!1881275 tp!951404)))

(declare-fun b!2993290 () Bool)

(declare-fun tp!951402 () Bool)

(declare-fun tp!951405 () Bool)

(assert (=> b!2993290 (= e!1881275 (and tp!951402 tp!951405))))

(declare-fun b!2993287 () Bool)

(assert (=> b!2993287 (= e!1881275 tp_is_empty!16273)))

(declare-fun b!2993288 () Bool)

(declare-fun tp!951403 () Bool)

(declare-fun tp!951401 () Bool)

(assert (=> b!2993288 (= e!1881275 (and tp!951403 tp!951401))))

(assert (= (and b!2992589 ((_ is ElementMatch!9355) (regTwo!19223 r!17423))) b!2993287))

(assert (= (and b!2992589 ((_ is Concat!14676) (regTwo!19223 r!17423))) b!2993288))

(assert (= (and b!2992589 ((_ is Star!9355) (regTwo!19223 r!17423))) b!2993289))

(assert (= (and b!2992589 ((_ is Union!9355) (regTwo!19223 r!17423))) b!2993290))

(declare-fun e!1881276 () Bool)

(assert (=> b!2992587 (= tp!951337 e!1881276)))

(declare-fun b!2993293 () Bool)

(declare-fun tp!951409 () Bool)

(assert (=> b!2993293 (= e!1881276 tp!951409)))

(declare-fun b!2993294 () Bool)

(declare-fun tp!951407 () Bool)

(declare-fun tp!951410 () Bool)

(assert (=> b!2993294 (= e!1881276 (and tp!951407 tp!951410))))

(declare-fun b!2993291 () Bool)

(assert (=> b!2993291 (= e!1881276 tp_is_empty!16273)))

(declare-fun b!2993292 () Bool)

(declare-fun tp!951408 () Bool)

(declare-fun tp!951406 () Bool)

(assert (=> b!2993292 (= e!1881276 (and tp!951408 tp!951406))))

(assert (= (and b!2992587 ((_ is ElementMatch!9355) (reg!9684 r!17423))) b!2993291))

(assert (= (and b!2992587 ((_ is Concat!14676) (reg!9684 r!17423))) b!2993292))

(assert (= (and b!2992587 ((_ is Star!9355) (reg!9684 r!17423))) b!2993293))

(assert (= (and b!2992587 ((_ is Union!9355) (reg!9684 r!17423))) b!2993294))

(declare-fun b!2993299 () Bool)

(declare-fun e!1881279 () Bool)

(declare-fun tp!951413 () Bool)

(assert (=> b!2993299 (= e!1881279 (and tp_is_empty!16273 tp!951413))))

(assert (=> b!2992581 (= tp!951333 e!1881279)))

(assert (= (and b!2992581 ((_ is Cons!35096) (t!234285 s!11993))) b!2993299))

(check-sat (not d!844981) (not b!2993069) (not b!2992815) (not d!844987) (not bm!200326) (not d!844969) (not b!2992819) (not bm!200346) (not b!2993129) (not b!2993276) (not b!2993134) (not b!2993080) (not d!844965) (not bm!200348) (not b!2993018) (not bm!200323) (not bm!200352) (not bm!200355) (not d!844995) (not b!2993130) (not b!2993022) (not b!2993282) tp_is_empty!16273 (not b!2993292) (not b!2993078) (not b!2993153) (not bm!200327) (not b!2993070) (not b!2993021) (not b!2993133) (not d!844975) (not bm!200350) (not b!2993280) (not b!2993294) (not b!2993285) (not b!2993225) (not b!2993027) (not b!2993290) (not bm!200342) (not b!2993262) (not bm!200345) (not bm!200308) (not d!844991) (not d!844993) (not b!2993109) (not bm!200325) (not b!2993144) (not b!2992803) (not bm!200324) (not b!2993278) (not b!2992805) (not b!2993143) (not bm!200313) (not b!2993074) (not b!2993023) (not b!2993232) (not b!2993286) (not d!844923) (not b!2993288) (not d!844951) (not b!2993250) (not b!2993119) (not d!844973) (not b!2993149) (not d!844925) (not b!2993289) (not b!2993281) (not b!2993293) (not b!2993116) (not b!2992811) (not b!2993079) (not bm!200343) (not b!2993139) (not d!844989) (not b!2993299) (not b!2993075) (not b!2993148) (not bm!200315) (not bm!200314) (not b!2992813) (not d!844913) (not d!844985) (not b!2993115) (not b!2993125) (not b!2993017) (not bm!200353) (not b!2993277) (not b!2993264) (not b!2993207) (not b!2993120) (not b!2993135) (not b!2993284) (not b!2993084) (not d!844963) (not d!844961) (not bm!200349) (not b!2993121) (not b!2993147))
(check-sat)
(get-model)

(declare-fun b!2993321 () Bool)

(declare-fun e!1881296 () Bool)

(declare-fun e!1881299 () Bool)

(assert (=> b!2993321 (= e!1881296 e!1881299)))

(declare-fun c!492067 () Bool)

(assert (=> b!2993321 (= c!492067 ((_ is Union!9355) (ite c!492004 (reg!9684 r!17423) (ite c!492003 (regTwo!19223 r!17423) (regOne!19222 r!17423)))))))

(declare-fun d!845011 () Bool)

(declare-fun res!1234616 () Bool)

(declare-fun e!1881298 () Bool)

(assert (=> d!845011 (=> res!1234616 e!1881298)))

(assert (=> d!845011 (= res!1234616 ((_ is ElementMatch!9355) (ite c!492004 (reg!9684 r!17423) (ite c!492003 (regTwo!19223 r!17423) (regOne!19222 r!17423)))))))

(assert (=> d!845011 (= (validRegex!4088 (ite c!492004 (reg!9684 r!17423) (ite c!492003 (regTwo!19223 r!17423) (regOne!19222 r!17423)))) e!1881298)))

(declare-fun b!2993322 () Bool)

(declare-fun res!1234617 () Bool)

(declare-fun e!1881297 () Bool)

(assert (=> b!2993322 (=> (not res!1234617) (not e!1881297))))

(declare-fun call!200366 () Bool)

(assert (=> b!2993322 (= res!1234617 call!200366)))

(assert (=> b!2993322 (= e!1881299 e!1881297)))

(declare-fun b!2993323 () Bool)

(declare-fun res!1234614 () Bool)

(declare-fun e!1881294 () Bool)

(assert (=> b!2993323 (=> res!1234614 e!1881294)))

(assert (=> b!2993323 (= res!1234614 (not ((_ is Concat!14676) (ite c!492004 (reg!9684 r!17423) (ite c!492003 (regTwo!19223 r!17423) (regOne!19222 r!17423))))))))

(assert (=> b!2993323 (= e!1881299 e!1881294)))

(declare-fun b!2993324 () Bool)

(declare-fun e!1881293 () Bool)

(assert (=> b!2993324 (= e!1881296 e!1881293)))

(declare-fun res!1234618 () Bool)

(assert (=> b!2993324 (= res!1234618 (not (nullable!3020 (reg!9684 (ite c!492004 (reg!9684 r!17423) (ite c!492003 (regTwo!19223 r!17423) (regOne!19222 r!17423)))))))))

(assert (=> b!2993324 (=> (not res!1234618) (not e!1881293))))

(declare-fun b!2993325 () Bool)

(assert (=> b!2993325 (= e!1881298 e!1881296)))

(declare-fun c!492068 () Bool)

(assert (=> b!2993325 (= c!492068 ((_ is Star!9355) (ite c!492004 (reg!9684 r!17423) (ite c!492003 (regTwo!19223 r!17423) (regOne!19222 r!17423)))))))

(declare-fun bm!200359 () Bool)

(declare-fun call!200365 () Bool)

(declare-fun call!200364 () Bool)

(assert (=> bm!200359 (= call!200365 call!200364)))

(declare-fun b!2993326 () Bool)

(assert (=> b!2993326 (= e!1881297 call!200365)))

(declare-fun bm!200360 () Bool)

(assert (=> bm!200360 (= call!200364 (validRegex!4088 (ite c!492068 (reg!9684 (ite c!492004 (reg!9684 r!17423) (ite c!492003 (regTwo!19223 r!17423) (regOne!19222 r!17423)))) (ite c!492067 (regTwo!19223 (ite c!492004 (reg!9684 r!17423) (ite c!492003 (regTwo!19223 r!17423) (regOne!19222 r!17423)))) (regOne!19222 (ite c!492004 (reg!9684 r!17423) (ite c!492003 (regTwo!19223 r!17423) (regOne!19222 r!17423))))))))))

(declare-fun bm!200361 () Bool)

(assert (=> bm!200361 (= call!200366 (validRegex!4088 (ite c!492067 (regOne!19223 (ite c!492004 (reg!9684 r!17423) (ite c!492003 (regTwo!19223 r!17423) (regOne!19222 r!17423)))) (regTwo!19222 (ite c!492004 (reg!9684 r!17423) (ite c!492003 (regTwo!19223 r!17423) (regOne!19222 r!17423)))))))))

(declare-fun b!2993327 () Bool)

(declare-fun e!1881295 () Bool)

(assert (=> b!2993327 (= e!1881295 call!200366)))

(declare-fun b!2993328 () Bool)

(assert (=> b!2993328 (= e!1881293 call!200364)))

(declare-fun b!2993329 () Bool)

(assert (=> b!2993329 (= e!1881294 e!1881295)))

(declare-fun res!1234615 () Bool)

(assert (=> b!2993329 (=> (not res!1234615) (not e!1881295))))

(assert (=> b!2993329 (= res!1234615 call!200365)))

(assert (= (and d!845011 (not res!1234616)) b!2993325))

(assert (= (and b!2993325 c!492068) b!2993324))

(assert (= (and b!2993325 (not c!492068)) b!2993321))

(assert (= (and b!2993324 res!1234618) b!2993328))

(assert (= (and b!2993321 c!492067) b!2993322))

(assert (= (and b!2993321 (not c!492067)) b!2993323))

(assert (= (and b!2993322 res!1234617) b!2993326))

(assert (= (and b!2993323 (not res!1234614)) b!2993329))

(assert (= (and b!2993329 res!1234615) b!2993327))

(assert (= (or b!2993322 b!2993327) bm!200361))

(assert (= (or b!2993326 b!2993329) bm!200359))

(assert (= (or b!2993328 bm!200359) bm!200360))

(declare-fun m!3348575 () Bool)

(assert (=> b!2993324 m!3348575))

(declare-fun m!3348577 () Bool)

(assert (=> bm!200360 m!3348577))

(declare-fun m!3348579 () Bool)

(assert (=> bm!200361 m!3348579))

(assert (=> bm!200323 d!845011))

(declare-fun d!845015 () Bool)

(declare-fun lt!1040976 () Int)

(assert (=> d!845015 (>= lt!1040976 0)))

(declare-fun e!1881300 () Int)

(assert (=> d!845015 (= lt!1040976 e!1881300)))

(declare-fun c!492069 () Bool)

(assert (=> d!845015 (= c!492069 ((_ is Nil!35096) (t!234285 (_2!20146 lt!1040855))))))

(assert (=> d!845015 (= (size!26505 (t!234285 (_2!20146 lt!1040855))) lt!1040976)))

(declare-fun b!2993330 () Bool)

(assert (=> b!2993330 (= e!1881300 0)))

(declare-fun b!2993331 () Bool)

(assert (=> b!2993331 (= e!1881300 (+ 1 (size!26505 (t!234285 (t!234285 (_2!20146 lt!1040855))))))))

(assert (= (and d!845015 c!492069) b!2993330))

(assert (= (and d!845015 (not c!492069)) b!2993331))

(declare-fun m!3348581 () Bool)

(assert (=> b!2993331 m!3348581))

(assert (=> b!2993262 d!845015))

(declare-fun d!845017 () Bool)

(assert (=> d!845017 (= (head!6677 (_1!20146 lt!1040855)) (h!40516 (_1!20146 lt!1040855)))))

(assert (=> b!2993119 d!845017))

(declare-fun d!845019 () Bool)

(declare-fun nullableFct!858 (Regex!9355) Bool)

(assert (=> d!845019 (= (nullable!3020 (reg!9684 r!17423)) (nullableFct!858 (reg!9684 r!17423)))))

(declare-fun bs!527883 () Bool)

(assert (= bs!527883 d!845019))

(declare-fun m!3348583 () Bool)

(assert (=> bs!527883 m!3348583))

(assert (=> b!2993121 d!845019))

(declare-fun d!845021 () Bool)

(assert (=> d!845021 true))

(assert (=> d!845021 true))

(declare-fun res!1234621 () Bool)

(assert (=> d!845021 (= (choose!17770 lambda!111930) res!1234621)))

(assert (=> d!844963 d!845021))

(declare-fun d!845023 () Bool)

(assert (=> d!845023 (= (head!6677 (_2!20146 lt!1040855)) (h!40516 (_2!20146 lt!1040855)))))

(assert (=> b!2993022 d!845023))

(declare-fun d!845025 () Bool)

(assert (=> d!845025 (= (isEmpty!19368 (_2!20146 lt!1040855)) ((_ is Nil!35096) (_2!20146 lt!1040855)))))

(assert (=> d!844969 d!845025))

(declare-fun b!2993332 () Bool)

(declare-fun e!1881304 () Bool)

(declare-fun e!1881307 () Bool)

(assert (=> b!2993332 (= e!1881304 e!1881307)))

(declare-fun c!492070 () Bool)

(assert (=> b!2993332 (= c!492070 ((_ is Union!9355) lt!1040854))))

(declare-fun d!845027 () Bool)

(declare-fun res!1234624 () Bool)

(declare-fun e!1881306 () Bool)

(assert (=> d!845027 (=> res!1234624 e!1881306)))

(assert (=> d!845027 (= res!1234624 ((_ is ElementMatch!9355) lt!1040854))))

(assert (=> d!845027 (= (validRegex!4088 lt!1040854) e!1881306)))

(declare-fun b!2993333 () Bool)

(declare-fun res!1234625 () Bool)

(declare-fun e!1881305 () Bool)

(assert (=> b!2993333 (=> (not res!1234625) (not e!1881305))))

(declare-fun call!200369 () Bool)

(assert (=> b!2993333 (= res!1234625 call!200369)))

(assert (=> b!2993333 (= e!1881307 e!1881305)))

(declare-fun b!2993334 () Bool)

(declare-fun res!1234622 () Bool)

(declare-fun e!1881302 () Bool)

(assert (=> b!2993334 (=> res!1234622 e!1881302)))

(assert (=> b!2993334 (= res!1234622 (not ((_ is Concat!14676) lt!1040854)))))

(assert (=> b!2993334 (= e!1881307 e!1881302)))

(declare-fun b!2993335 () Bool)

(declare-fun e!1881301 () Bool)

(assert (=> b!2993335 (= e!1881304 e!1881301)))

(declare-fun res!1234626 () Bool)

(assert (=> b!2993335 (= res!1234626 (not (nullable!3020 (reg!9684 lt!1040854))))))

(assert (=> b!2993335 (=> (not res!1234626) (not e!1881301))))

(declare-fun b!2993336 () Bool)

(assert (=> b!2993336 (= e!1881306 e!1881304)))

(declare-fun c!492071 () Bool)

(assert (=> b!2993336 (= c!492071 ((_ is Star!9355) lt!1040854))))

(declare-fun bm!200362 () Bool)

(declare-fun call!200368 () Bool)

(declare-fun call!200367 () Bool)

(assert (=> bm!200362 (= call!200368 call!200367)))

(declare-fun b!2993337 () Bool)

(assert (=> b!2993337 (= e!1881305 call!200368)))

(declare-fun bm!200363 () Bool)

(assert (=> bm!200363 (= call!200367 (validRegex!4088 (ite c!492071 (reg!9684 lt!1040854) (ite c!492070 (regTwo!19223 lt!1040854) (regOne!19222 lt!1040854)))))))

(declare-fun bm!200364 () Bool)

(assert (=> bm!200364 (= call!200369 (validRegex!4088 (ite c!492070 (regOne!19223 lt!1040854) (regTwo!19222 lt!1040854))))))

(declare-fun b!2993338 () Bool)

(declare-fun e!1881303 () Bool)

(assert (=> b!2993338 (= e!1881303 call!200369)))

(declare-fun b!2993339 () Bool)

(assert (=> b!2993339 (= e!1881301 call!200367)))

(declare-fun b!2993340 () Bool)

(assert (=> b!2993340 (= e!1881302 e!1881303)))

(declare-fun res!1234623 () Bool)

(assert (=> b!2993340 (=> (not res!1234623) (not e!1881303))))

(assert (=> b!2993340 (= res!1234623 call!200368)))

(assert (= (and d!845027 (not res!1234624)) b!2993336))

(assert (= (and b!2993336 c!492071) b!2993335))

(assert (= (and b!2993336 (not c!492071)) b!2993332))

(assert (= (and b!2993335 res!1234626) b!2993339))

(assert (= (and b!2993332 c!492070) b!2993333))

(assert (= (and b!2993332 (not c!492070)) b!2993334))

(assert (= (and b!2993333 res!1234625) b!2993337))

(assert (= (and b!2993334 (not res!1234622)) b!2993340))

(assert (= (and b!2993340 res!1234623) b!2993338))

(assert (= (or b!2993333 b!2993338) bm!200364))

(assert (= (or b!2993337 b!2993340) bm!200362))

(assert (= (or b!2993339 bm!200362) bm!200363))

(declare-fun m!3348585 () Bool)

(assert (=> b!2993335 m!3348585))

(declare-fun m!3348587 () Bool)

(assert (=> bm!200363 m!3348587))

(declare-fun m!3348589 () Bool)

(assert (=> bm!200364 m!3348589))

(assert (=> d!844969 d!845027))

(declare-fun d!845029 () Bool)

(assert (=> d!845029 (= (isDefined!5297 lt!1040914) (not (isEmpty!19370 lt!1040914)))))

(declare-fun bs!527884 () Bool)

(assert (= bs!527884 d!845029))

(declare-fun m!3348591 () Bool)

(assert (=> bs!527884 m!3348591))

(assert (=> d!844925 d!845029))

(declare-fun b!2993341 () Bool)

(declare-fun res!1234632 () Bool)

(declare-fun e!1881314 () Bool)

(assert (=> b!2993341 (=> (not res!1234632) (not e!1881314))))

(assert (=> b!2993341 (= res!1234632 (isEmpty!19368 (tail!4903 Nil!35096)))))

(declare-fun b!2993342 () Bool)

(declare-fun e!1881313 () Bool)

(assert (=> b!2993342 (= e!1881313 (matchR!4237 (derivativeStep!2618 (reg!9684 r!17423) (head!6677 Nil!35096)) (tail!4903 Nil!35096)))))

(declare-fun b!2993343 () Bool)

(declare-fun e!1881308 () Bool)

(declare-fun e!1881312 () Bool)

(assert (=> b!2993343 (= e!1881308 e!1881312)))

(declare-fun c!492074 () Bool)

(assert (=> b!2993343 (= c!492074 ((_ is EmptyLang!9355) (reg!9684 r!17423)))))

(declare-fun b!2993344 () Bool)

(declare-fun res!1234630 () Bool)

(declare-fun e!1881309 () Bool)

(assert (=> b!2993344 (=> res!1234630 e!1881309)))

(assert (=> b!2993344 (= res!1234630 (not ((_ is ElementMatch!9355) (reg!9684 r!17423))))))

(assert (=> b!2993344 (= e!1881312 e!1881309)))

(declare-fun b!2993345 () Bool)

(declare-fun e!1881311 () Bool)

(assert (=> b!2993345 (= e!1881311 (not (= (head!6677 Nil!35096) (c!491875 (reg!9684 r!17423)))))))

(declare-fun b!2993346 () Bool)

(assert (=> b!2993346 (= e!1881314 (= (head!6677 Nil!35096) (c!491875 (reg!9684 r!17423))))))

(declare-fun b!2993347 () Bool)

(assert (=> b!2993347 (= e!1881313 (nullable!3020 (reg!9684 r!17423)))))

(declare-fun b!2993348 () Bool)

(declare-fun res!1234633 () Bool)

(assert (=> b!2993348 (=> (not res!1234633) (not e!1881314))))

(declare-fun call!200370 () Bool)

(assert (=> b!2993348 (= res!1234633 (not call!200370))))

(declare-fun b!2993349 () Bool)

(declare-fun res!1234629 () Bool)

(assert (=> b!2993349 (=> res!1234629 e!1881309)))

(assert (=> b!2993349 (= res!1234629 e!1881314)))

(declare-fun res!1234628 () Bool)

(assert (=> b!2993349 (=> (not res!1234628) (not e!1881314))))

(declare-fun lt!1040977 () Bool)

(assert (=> b!2993349 (= res!1234628 lt!1040977)))

(declare-fun bm!200365 () Bool)

(assert (=> bm!200365 (= call!200370 (isEmpty!19368 Nil!35096))))

(declare-fun b!2993350 () Bool)

(assert (=> b!2993350 (= e!1881312 (not lt!1040977))))

(declare-fun b!2993351 () Bool)

(declare-fun res!1234631 () Bool)

(assert (=> b!2993351 (=> res!1234631 e!1881311)))

(assert (=> b!2993351 (= res!1234631 (not (isEmpty!19368 (tail!4903 Nil!35096))))))

(declare-fun b!2993352 () Bool)

(declare-fun e!1881310 () Bool)

(assert (=> b!2993352 (= e!1881310 e!1881311)))

(declare-fun res!1234634 () Bool)

(assert (=> b!2993352 (=> res!1234634 e!1881311)))

(assert (=> b!2993352 (= res!1234634 call!200370)))

(declare-fun b!2993353 () Bool)

(assert (=> b!2993353 (= e!1881309 e!1881310)))

(declare-fun res!1234627 () Bool)

(assert (=> b!2993353 (=> (not res!1234627) (not e!1881310))))

(assert (=> b!2993353 (= res!1234627 (not lt!1040977))))

(declare-fun d!845031 () Bool)

(assert (=> d!845031 e!1881308))

(declare-fun c!492073 () Bool)

(assert (=> d!845031 (= c!492073 ((_ is EmptyExpr!9355) (reg!9684 r!17423)))))

(assert (=> d!845031 (= lt!1040977 e!1881313)))

(declare-fun c!492072 () Bool)

(assert (=> d!845031 (= c!492072 (isEmpty!19368 Nil!35096))))

(assert (=> d!845031 (validRegex!4088 (reg!9684 r!17423))))

(assert (=> d!845031 (= (matchR!4237 (reg!9684 r!17423) Nil!35096) lt!1040977)))

(declare-fun b!2993354 () Bool)

(assert (=> b!2993354 (= e!1881308 (= lt!1040977 call!200370))))

(assert (= (and d!845031 c!492072) b!2993347))

(assert (= (and d!845031 (not c!492072)) b!2993342))

(assert (= (and d!845031 c!492073) b!2993354))

(assert (= (and d!845031 (not c!492073)) b!2993343))

(assert (= (and b!2993343 c!492074) b!2993350))

(assert (= (and b!2993343 (not c!492074)) b!2993344))

(assert (= (and b!2993344 (not res!1234630)) b!2993349))

(assert (= (and b!2993349 res!1234628) b!2993348))

(assert (= (and b!2993348 res!1234633) b!2993341))

(assert (= (and b!2993341 res!1234632) b!2993346))

(assert (= (and b!2993349 (not res!1234629)) b!2993353))

(assert (= (and b!2993353 res!1234627) b!2993352))

(assert (= (and b!2993352 (not res!1234634)) b!2993351))

(assert (= (and b!2993351 (not res!1234631)) b!2993345))

(assert (= (or b!2993354 b!2993348 b!2993352) bm!200365))

(declare-fun m!3348593 () Bool)

(assert (=> bm!200365 m!3348593))

(assert (=> b!2993347 m!3348475))

(declare-fun m!3348595 () Bool)

(assert (=> b!2993342 m!3348595))

(assert (=> b!2993342 m!3348595))

(declare-fun m!3348597 () Bool)

(assert (=> b!2993342 m!3348597))

(declare-fun m!3348599 () Bool)

(assert (=> b!2993342 m!3348599))

(assert (=> b!2993342 m!3348597))

(assert (=> b!2993342 m!3348599))

(declare-fun m!3348601 () Bool)

(assert (=> b!2993342 m!3348601))

(assert (=> b!2993351 m!3348599))

(assert (=> b!2993351 m!3348599))

(declare-fun m!3348621 () Bool)

(assert (=> b!2993351 m!3348621))

(assert (=> b!2993346 m!3348595))

(assert (=> d!845031 m!3348593))

(assert (=> d!845031 m!3348275))

(assert (=> b!2993341 m!3348599))

(assert (=> b!2993341 m!3348599))

(assert (=> b!2993341 m!3348621))

(assert (=> b!2993345 m!3348595))

(assert (=> d!844925 d!845031))

(declare-fun b!2993393 () Bool)

(declare-fun e!1881337 () Bool)

(declare-fun e!1881340 () Bool)

(assert (=> b!2993393 (= e!1881337 e!1881340)))

(declare-fun c!492088 () Bool)

(assert (=> b!2993393 (= c!492088 ((_ is Union!9355) (reg!9684 r!17423)))))

(declare-fun d!845043 () Bool)

(declare-fun res!1234649 () Bool)

(declare-fun e!1881339 () Bool)

(assert (=> d!845043 (=> res!1234649 e!1881339)))

(assert (=> d!845043 (= res!1234649 ((_ is ElementMatch!9355) (reg!9684 r!17423)))))

(assert (=> d!845043 (= (validRegex!4088 (reg!9684 r!17423)) e!1881339)))

(declare-fun b!2993394 () Bool)

(declare-fun res!1234650 () Bool)

(declare-fun e!1881338 () Bool)

(assert (=> b!2993394 (=> (not res!1234650) (not e!1881338))))

(declare-fun call!200382 () Bool)

(assert (=> b!2993394 (= res!1234650 call!200382)))

(assert (=> b!2993394 (= e!1881340 e!1881338)))

(declare-fun b!2993395 () Bool)

(declare-fun res!1234647 () Bool)

(declare-fun e!1881335 () Bool)

(assert (=> b!2993395 (=> res!1234647 e!1881335)))

(assert (=> b!2993395 (= res!1234647 (not ((_ is Concat!14676) (reg!9684 r!17423))))))

(assert (=> b!2993395 (= e!1881340 e!1881335)))

(declare-fun b!2993396 () Bool)

(declare-fun e!1881334 () Bool)

(assert (=> b!2993396 (= e!1881337 e!1881334)))

(declare-fun res!1234651 () Bool)

(assert (=> b!2993396 (= res!1234651 (not (nullable!3020 (reg!9684 (reg!9684 r!17423)))))))

(assert (=> b!2993396 (=> (not res!1234651) (not e!1881334))))

(declare-fun b!2993397 () Bool)

(assert (=> b!2993397 (= e!1881339 e!1881337)))

(declare-fun c!492089 () Bool)

(assert (=> b!2993397 (= c!492089 ((_ is Star!9355) (reg!9684 r!17423)))))

(declare-fun bm!200375 () Bool)

(declare-fun call!200381 () Bool)

(declare-fun call!200380 () Bool)

(assert (=> bm!200375 (= call!200381 call!200380)))

(declare-fun b!2993398 () Bool)

(assert (=> b!2993398 (= e!1881338 call!200381)))

(declare-fun bm!200376 () Bool)

(assert (=> bm!200376 (= call!200380 (validRegex!4088 (ite c!492089 (reg!9684 (reg!9684 r!17423)) (ite c!492088 (regTwo!19223 (reg!9684 r!17423)) (regOne!19222 (reg!9684 r!17423))))))))

(declare-fun bm!200377 () Bool)

(assert (=> bm!200377 (= call!200382 (validRegex!4088 (ite c!492088 (regOne!19223 (reg!9684 r!17423)) (regTwo!19222 (reg!9684 r!17423)))))))

(declare-fun b!2993399 () Bool)

(declare-fun e!1881336 () Bool)

(assert (=> b!2993399 (= e!1881336 call!200382)))

(declare-fun b!2993400 () Bool)

(assert (=> b!2993400 (= e!1881334 call!200380)))

(declare-fun b!2993401 () Bool)

(assert (=> b!2993401 (= e!1881335 e!1881336)))

(declare-fun res!1234648 () Bool)

(assert (=> b!2993401 (=> (not res!1234648) (not e!1881336))))

(assert (=> b!2993401 (= res!1234648 call!200381)))

(assert (= (and d!845043 (not res!1234649)) b!2993397))

(assert (= (and b!2993397 c!492089) b!2993396))

(assert (= (and b!2993397 (not c!492089)) b!2993393))

(assert (= (and b!2993396 res!1234651) b!2993400))

(assert (= (and b!2993393 c!492088) b!2993394))

(assert (= (and b!2993393 (not c!492088)) b!2993395))

(assert (= (and b!2993394 res!1234650) b!2993398))

(assert (= (and b!2993395 (not res!1234647)) b!2993401))

(assert (= (and b!2993401 res!1234648) b!2993399))

(assert (= (or b!2993394 b!2993399) bm!200377))

(assert (= (or b!2993398 b!2993401) bm!200375))

(assert (= (or b!2993400 bm!200375) bm!200376))

(declare-fun m!3348623 () Bool)

(assert (=> b!2993396 m!3348623))

(declare-fun m!3348625 () Bool)

(assert (=> bm!200376 m!3348625))

(declare-fun m!3348627 () Bool)

(assert (=> bm!200377 m!3348627))

(assert (=> d!844925 d!845043))

(declare-fun d!845045 () Bool)

(assert (=> d!845045 (= (isEmpty!19368 (_1!20146 lt!1040855)) ((_ is Nil!35096) (_1!20146 lt!1040855)))))

(assert (=> bm!200326 d!845045))

(declare-fun d!845047 () Bool)

(assert (=> d!845047 (= (nullable!3020 lt!1040852) (nullableFct!858 lt!1040852))))

(declare-fun bs!527892 () Bool)

(assert (= bs!527892 d!845047))

(declare-fun m!3348629 () Bool)

(assert (=> bs!527892 m!3348629))

(assert (=> b!2993149 d!845047))

(declare-fun bs!527893 () Bool)

(declare-fun d!845049 () Bool)

(assert (= bs!527893 (and d!845049 d!844951)))

(declare-fun lambda!111966 () Int)

(assert (=> bs!527893 (= lambda!111966 lambda!111954)))

(declare-fun bs!527894 () Bool)

(assert (= bs!527894 (and d!845049 d!844913)))

(assert (=> bs!527894 (not (= lambda!111966 lambda!111945))))

(declare-fun bs!527895 () Bool)

(assert (= bs!527895 (and d!845049 b!2993063)))

(assert (=> bs!527895 (not (= lambda!111966 lambda!111960))))

(assert (=> bs!527894 (= (= lt!1040854 (Star!9355 (reg!9684 r!17423))) (= lambda!111966 lambda!111944))))

(declare-fun bs!527896 () Bool)

(assert (= bs!527896 (and d!845049 b!2992583)))

(assert (=> bs!527896 (= lambda!111966 lambda!111929)))

(assert (=> bs!527896 (not (= lambda!111966 lambda!111930))))

(declare-fun bs!527897 () Bool)

(assert (= bs!527897 (and d!845049 b!2993072)))

(assert (=> bs!527897 (not (= lambda!111966 lambda!111959))))

(assert (=> d!845049 true))

(assert (=> d!845049 true))

(assert (=> d!845049 true))

(assert (=> d!845049 (= (isDefined!5297 (findConcatSeparation!1140 (reg!9684 r!17423) lt!1040854 Nil!35096 s!11993 s!11993)) (Exists!1628 lambda!111966))))

(assert (=> d!845049 true))

(declare-fun _$89!1274 () Unit!49119)

(assert (=> d!845049 (= (choose!17769 (reg!9684 r!17423) lt!1040854 s!11993) _$89!1274)))

(declare-fun bs!527898 () Bool)

(assert (= bs!527898 d!845049))

(assert (=> bs!527898 m!3348193))

(assert (=> bs!527898 m!3348193))

(assert (=> bs!527898 m!3348425))

(declare-fun m!3348639 () Bool)

(assert (=> bs!527898 m!3348639))

(assert (=> d!844951 d!845049))

(assert (=> d!844951 d!844925))

(declare-fun d!845055 () Bool)

(assert (=> d!845055 (= (Exists!1628 lambda!111954) (choose!17770 lambda!111954))))

(declare-fun bs!527899 () Bool)

(assert (= bs!527899 d!845055))

(declare-fun m!3348641 () Bool)

(assert (=> bs!527899 m!3348641))

(assert (=> d!844951 d!845055))

(declare-fun d!845057 () Bool)

(assert (=> d!845057 (= (isDefined!5297 (findConcatSeparation!1140 (reg!9684 r!17423) lt!1040854 Nil!35096 s!11993 s!11993)) (not (isEmpty!19370 (findConcatSeparation!1140 (reg!9684 r!17423) lt!1040854 Nil!35096 s!11993 s!11993))))))

(declare-fun bs!527900 () Bool)

(assert (= bs!527900 d!845057))

(assert (=> bs!527900 m!3348193))

(declare-fun m!3348643 () Bool)

(assert (=> bs!527900 m!3348643))

(assert (=> d!844951 d!845057))

(assert (=> d!844951 d!845043))

(assert (=> b!2993109 d!845019))

(assert (=> d!844981 d!845045))

(assert (=> d!844981 d!845043))

(declare-fun d!845059 () Bool)

(assert (=> d!845059 (= (isEmpty!19368 (tail!4903 (_1!20146 lt!1040855))) ((_ is Nil!35096) (tail!4903 (_1!20146 lt!1040855))))))

(assert (=> b!2993115 d!845059))

(declare-fun d!845061 () Bool)

(assert (=> d!845061 (= (tail!4903 (_1!20146 lt!1040855)) (t!234285 (_1!20146 lt!1040855)))))

(assert (=> b!2993115 d!845061))

(declare-fun b!2993416 () Bool)

(declare-fun res!1234661 () Bool)

(declare-fun e!1881354 () Bool)

(assert (=> b!2993416 (=> (not res!1234661) (not e!1881354))))

(assert (=> b!2993416 (= res!1234661 (isEmpty!19368 (tail!4903 (tail!4903 (_2!20146 lt!1040855)))))))

(declare-fun b!2993417 () Bool)

(declare-fun e!1881353 () Bool)

(assert (=> b!2993417 (= e!1881353 (matchR!4237 (derivativeStep!2618 (derivativeStep!2618 lt!1040854 (head!6677 (_2!20146 lt!1040855))) (head!6677 (tail!4903 (_2!20146 lt!1040855)))) (tail!4903 (tail!4903 (_2!20146 lt!1040855)))))))

(declare-fun b!2993418 () Bool)

(declare-fun e!1881348 () Bool)

(declare-fun e!1881352 () Bool)

(assert (=> b!2993418 (= e!1881348 e!1881352)))

(declare-fun c!492097 () Bool)

(assert (=> b!2993418 (= c!492097 ((_ is EmptyLang!9355) (derivativeStep!2618 lt!1040854 (head!6677 (_2!20146 lt!1040855)))))))

(declare-fun b!2993419 () Bool)

(declare-fun res!1234659 () Bool)

(declare-fun e!1881349 () Bool)

(assert (=> b!2993419 (=> res!1234659 e!1881349)))

(assert (=> b!2993419 (= res!1234659 (not ((_ is ElementMatch!9355) (derivativeStep!2618 lt!1040854 (head!6677 (_2!20146 lt!1040855))))))))

(assert (=> b!2993419 (= e!1881352 e!1881349)))

(declare-fun b!2993420 () Bool)

(declare-fun e!1881351 () Bool)

(assert (=> b!2993420 (= e!1881351 (not (= (head!6677 (tail!4903 (_2!20146 lt!1040855))) (c!491875 (derivativeStep!2618 lt!1040854 (head!6677 (_2!20146 lt!1040855)))))))))

(declare-fun b!2993421 () Bool)

(assert (=> b!2993421 (= e!1881354 (= (head!6677 (tail!4903 (_2!20146 lt!1040855))) (c!491875 (derivativeStep!2618 lt!1040854 (head!6677 (_2!20146 lt!1040855))))))))

(declare-fun b!2993422 () Bool)

(assert (=> b!2993422 (= e!1881353 (nullable!3020 (derivativeStep!2618 lt!1040854 (head!6677 (_2!20146 lt!1040855)))))))

(declare-fun b!2993423 () Bool)

(declare-fun res!1234662 () Bool)

(assert (=> b!2993423 (=> (not res!1234662) (not e!1881354))))

(declare-fun call!200387 () Bool)

(assert (=> b!2993423 (= res!1234662 (not call!200387))))

(declare-fun b!2993424 () Bool)

(declare-fun res!1234658 () Bool)

(assert (=> b!2993424 (=> res!1234658 e!1881349)))

(assert (=> b!2993424 (= res!1234658 e!1881354)))

(declare-fun res!1234657 () Bool)

(assert (=> b!2993424 (=> (not res!1234657) (not e!1881354))))

(declare-fun lt!1040982 () Bool)

(assert (=> b!2993424 (= res!1234657 lt!1040982)))

(declare-fun bm!200382 () Bool)

(assert (=> bm!200382 (= call!200387 (isEmpty!19368 (tail!4903 (_2!20146 lt!1040855))))))

(declare-fun b!2993425 () Bool)

(assert (=> b!2993425 (= e!1881352 (not lt!1040982))))

(declare-fun b!2993426 () Bool)

(declare-fun res!1234660 () Bool)

(assert (=> b!2993426 (=> res!1234660 e!1881351)))

(assert (=> b!2993426 (= res!1234660 (not (isEmpty!19368 (tail!4903 (tail!4903 (_2!20146 lt!1040855))))))))

(declare-fun b!2993427 () Bool)

(declare-fun e!1881350 () Bool)

(assert (=> b!2993427 (= e!1881350 e!1881351)))

(declare-fun res!1234663 () Bool)

(assert (=> b!2993427 (=> res!1234663 e!1881351)))

(assert (=> b!2993427 (= res!1234663 call!200387)))

(declare-fun b!2993428 () Bool)

(assert (=> b!2993428 (= e!1881349 e!1881350)))

(declare-fun res!1234656 () Bool)

(assert (=> b!2993428 (=> (not res!1234656) (not e!1881350))))

(assert (=> b!2993428 (= res!1234656 (not lt!1040982))))

(declare-fun d!845065 () Bool)

(assert (=> d!845065 e!1881348))

(declare-fun c!492096 () Bool)

(assert (=> d!845065 (= c!492096 ((_ is EmptyExpr!9355) (derivativeStep!2618 lt!1040854 (head!6677 (_2!20146 lt!1040855)))))))

(assert (=> d!845065 (= lt!1040982 e!1881353)))

(declare-fun c!492095 () Bool)

(assert (=> d!845065 (= c!492095 (isEmpty!19368 (tail!4903 (_2!20146 lt!1040855))))))

(assert (=> d!845065 (validRegex!4088 (derivativeStep!2618 lt!1040854 (head!6677 (_2!20146 lt!1040855))))))

(assert (=> d!845065 (= (matchR!4237 (derivativeStep!2618 lt!1040854 (head!6677 (_2!20146 lt!1040855))) (tail!4903 (_2!20146 lt!1040855))) lt!1040982)))

(declare-fun b!2993429 () Bool)

(assert (=> b!2993429 (= e!1881348 (= lt!1040982 call!200387))))

(assert (= (and d!845065 c!492095) b!2993422))

(assert (= (and d!845065 (not c!492095)) b!2993417))

(assert (= (and d!845065 c!492096) b!2993429))

(assert (= (and d!845065 (not c!492096)) b!2993418))

(assert (= (and b!2993418 c!492097) b!2993425))

(assert (= (and b!2993418 (not c!492097)) b!2993419))

(assert (= (and b!2993419 (not res!1234659)) b!2993424))

(assert (= (and b!2993424 res!1234657) b!2993423))

(assert (= (and b!2993423 res!1234662) b!2993416))

(assert (= (and b!2993416 res!1234661) b!2993421))

(assert (= (and b!2993424 (not res!1234658)) b!2993428))

(assert (= (and b!2993428 res!1234656) b!2993427))

(assert (= (and b!2993427 (not res!1234663)) b!2993426))

(assert (= (and b!2993426 (not res!1234660)) b!2993420))

(assert (= (or b!2993429 b!2993423 b!2993427) bm!200382))

(assert (=> bm!200382 m!3348447))

(assert (=> bm!200382 m!3348451))

(assert (=> b!2993422 m!3348445))

(declare-fun m!3348649 () Bool)

(assert (=> b!2993422 m!3348649))

(assert (=> b!2993417 m!3348447))

(declare-fun m!3348651 () Bool)

(assert (=> b!2993417 m!3348651))

(assert (=> b!2993417 m!3348445))

(assert (=> b!2993417 m!3348651))

(declare-fun m!3348653 () Bool)

(assert (=> b!2993417 m!3348653))

(assert (=> b!2993417 m!3348447))

(declare-fun m!3348655 () Bool)

(assert (=> b!2993417 m!3348655))

(assert (=> b!2993417 m!3348653))

(assert (=> b!2993417 m!3348655))

(declare-fun m!3348657 () Bool)

(assert (=> b!2993417 m!3348657))

(assert (=> b!2993426 m!3348447))

(assert (=> b!2993426 m!3348655))

(assert (=> b!2993426 m!3348655))

(declare-fun m!3348659 () Bool)

(assert (=> b!2993426 m!3348659))

(assert (=> b!2993421 m!3348447))

(assert (=> b!2993421 m!3348651))

(assert (=> d!845065 m!3348447))

(assert (=> d!845065 m!3348451))

(assert (=> d!845065 m!3348445))

(declare-fun m!3348661 () Bool)

(assert (=> d!845065 m!3348661))

(assert (=> b!2993416 m!3348447))

(assert (=> b!2993416 m!3348655))

(assert (=> b!2993416 m!3348655))

(assert (=> b!2993416 m!3348659))

(assert (=> b!2993420 m!3348447))

(assert (=> b!2993420 m!3348651))

(assert (=> b!2993018 d!845065))

(declare-fun b!2993454 () Bool)

(declare-fun c!492111 () Bool)

(assert (=> b!2993454 (= c!492111 (nullable!3020 (regOne!19222 lt!1040854)))))

(declare-fun e!1881367 () Regex!9355)

(declare-fun e!1881371 () Regex!9355)

(assert (=> b!2993454 (= e!1881367 e!1881371)))

(declare-fun bm!200391 () Bool)

(declare-fun c!492110 () Bool)

(declare-fun call!200398 () Regex!9355)

(assert (=> bm!200391 (= call!200398 (derivativeStep!2618 (ite c!492110 (regTwo!19223 lt!1040854) (regTwo!19222 lt!1040854)) (head!6677 (_2!20146 lt!1040855))))))

(declare-fun b!2993455 () Bool)

(declare-fun e!1881370 () Regex!9355)

(assert (=> b!2993455 (= e!1881370 e!1881367)))

(declare-fun c!492108 () Bool)

(assert (=> b!2993455 (= c!492108 ((_ is Star!9355) lt!1040854))))

(declare-fun b!2993456 () Bool)

(declare-fun call!200396 () Regex!9355)

(assert (=> b!2993456 (= e!1881370 (Union!9355 call!200396 call!200398))))

(declare-fun bm!200392 () Bool)

(declare-fun call!200399 () Regex!9355)

(declare-fun call!200397 () Regex!9355)

(assert (=> bm!200392 (= call!200399 call!200397)))

(declare-fun d!845071 () Bool)

(declare-fun lt!1040985 () Regex!9355)

(assert (=> d!845071 (validRegex!4088 lt!1040985)))

(declare-fun e!1881369 () Regex!9355)

(assert (=> d!845071 (= lt!1040985 e!1881369)))

(declare-fun c!492109 () Bool)

(assert (=> d!845071 (= c!492109 (or ((_ is EmptyExpr!9355) lt!1040854) ((_ is EmptyLang!9355) lt!1040854)))))

(assert (=> d!845071 (validRegex!4088 lt!1040854)))

(assert (=> d!845071 (= (derivativeStep!2618 lt!1040854 (head!6677 (_2!20146 lt!1040855))) lt!1040985)))

(declare-fun b!2993457 () Bool)

(assert (=> b!2993457 (= e!1881369 EmptyLang!9355)))

(declare-fun b!2993458 () Bool)

(assert (=> b!2993458 (= e!1881371 (Union!9355 (Concat!14676 call!200399 (regTwo!19222 lt!1040854)) EmptyLang!9355))))

(declare-fun b!2993459 () Bool)

(declare-fun e!1881368 () Regex!9355)

(assert (=> b!2993459 (= e!1881368 (ite (= (head!6677 (_2!20146 lt!1040855)) (c!491875 lt!1040854)) EmptyExpr!9355 EmptyLang!9355))))

(declare-fun b!2993460 () Bool)

(assert (=> b!2993460 (= e!1881369 e!1881368)))

(declare-fun c!492112 () Bool)

(assert (=> b!2993460 (= c!492112 ((_ is ElementMatch!9355) lt!1040854))))

(declare-fun bm!200393 () Bool)

(assert (=> bm!200393 (= call!200397 call!200396)))

(declare-fun b!2993461 () Bool)

(assert (=> b!2993461 (= e!1881371 (Union!9355 (Concat!14676 call!200399 (regTwo!19222 lt!1040854)) call!200398))))

(declare-fun b!2993462 () Bool)

(assert (=> b!2993462 (= e!1881367 (Concat!14676 call!200397 lt!1040854))))

(declare-fun bm!200394 () Bool)

(assert (=> bm!200394 (= call!200396 (derivativeStep!2618 (ite c!492110 (regOne!19223 lt!1040854) (ite c!492108 (reg!9684 lt!1040854) (regOne!19222 lt!1040854))) (head!6677 (_2!20146 lt!1040855))))))

(declare-fun b!2993463 () Bool)

(assert (=> b!2993463 (= c!492110 ((_ is Union!9355) lt!1040854))))

(assert (=> b!2993463 (= e!1881368 e!1881370)))

(assert (= (and d!845071 c!492109) b!2993457))

(assert (= (and d!845071 (not c!492109)) b!2993460))

(assert (= (and b!2993460 c!492112) b!2993459))

(assert (= (and b!2993460 (not c!492112)) b!2993463))

(assert (= (and b!2993463 c!492110) b!2993456))

(assert (= (and b!2993463 (not c!492110)) b!2993455))

(assert (= (and b!2993455 c!492108) b!2993462))

(assert (= (and b!2993455 (not c!492108)) b!2993454))

(assert (= (and b!2993454 c!492111) b!2993461))

(assert (= (and b!2993454 (not c!492111)) b!2993458))

(assert (= (or b!2993461 b!2993458) bm!200392))

(assert (= (or b!2993462 bm!200392) bm!200393))

(assert (= (or b!2993456 b!2993461) bm!200391))

(assert (= (or b!2993456 bm!200393) bm!200394))

(declare-fun m!3348663 () Bool)

(assert (=> b!2993454 m!3348663))

(assert (=> bm!200391 m!3348443))

(declare-fun m!3348665 () Bool)

(assert (=> bm!200391 m!3348665))

(declare-fun m!3348667 () Bool)

(assert (=> d!845071 m!3348667))

(assert (=> d!845071 m!3348453))

(assert (=> bm!200394 m!3348443))

(declare-fun m!3348669 () Bool)

(assert (=> bm!200394 m!3348669))

(assert (=> b!2993018 d!845071))

(assert (=> b!2993018 d!845023))

(declare-fun d!845073 () Bool)

(assert (=> d!845073 (= (tail!4903 (_2!20146 lt!1040855)) (t!234285 (_2!20146 lt!1040855)))))

(assert (=> b!2993018 d!845073))

(declare-fun b!2993464 () Bool)

(declare-fun e!1881375 () Bool)

(declare-fun e!1881378 () Bool)

(assert (=> b!2993464 (= e!1881375 e!1881378)))

(declare-fun c!492113 () Bool)

(assert (=> b!2993464 (= c!492113 ((_ is Union!9355) lt!1040963))))

(declare-fun d!845075 () Bool)

(declare-fun res!1234670 () Bool)

(declare-fun e!1881377 () Bool)

(assert (=> d!845075 (=> res!1234670 e!1881377)))

(assert (=> d!845075 (= res!1234670 ((_ is ElementMatch!9355) lt!1040963))))

(assert (=> d!845075 (= (validRegex!4088 lt!1040963) e!1881377)))

(declare-fun b!2993465 () Bool)

(declare-fun res!1234671 () Bool)

(declare-fun e!1881376 () Bool)

(assert (=> b!2993465 (=> (not res!1234671) (not e!1881376))))

(declare-fun call!200402 () Bool)

(assert (=> b!2993465 (= res!1234671 call!200402)))

(assert (=> b!2993465 (= e!1881378 e!1881376)))

(declare-fun b!2993466 () Bool)

(declare-fun res!1234668 () Bool)

(declare-fun e!1881373 () Bool)

(assert (=> b!2993466 (=> res!1234668 e!1881373)))

(assert (=> b!2993466 (= res!1234668 (not ((_ is Concat!14676) lt!1040963)))))

(assert (=> b!2993466 (= e!1881378 e!1881373)))

(declare-fun b!2993467 () Bool)

(declare-fun e!1881372 () Bool)

(assert (=> b!2993467 (= e!1881375 e!1881372)))

(declare-fun res!1234672 () Bool)

(assert (=> b!2993467 (= res!1234672 (not (nullable!3020 (reg!9684 lt!1040963))))))

(assert (=> b!2993467 (=> (not res!1234672) (not e!1881372))))

(declare-fun b!2993468 () Bool)

(assert (=> b!2993468 (= e!1881377 e!1881375)))

(declare-fun c!492114 () Bool)

(assert (=> b!2993468 (= c!492114 ((_ is Star!9355) lt!1040963))))

(declare-fun bm!200395 () Bool)

(declare-fun call!200401 () Bool)

(declare-fun call!200400 () Bool)

(assert (=> bm!200395 (= call!200401 call!200400)))

(declare-fun b!2993469 () Bool)

(assert (=> b!2993469 (= e!1881376 call!200401)))

(declare-fun bm!200396 () Bool)

(assert (=> bm!200396 (= call!200400 (validRegex!4088 (ite c!492114 (reg!9684 lt!1040963) (ite c!492113 (regTwo!19223 lt!1040963) (regOne!19222 lt!1040963)))))))

(declare-fun bm!200397 () Bool)

(assert (=> bm!200397 (= call!200402 (validRegex!4088 (ite c!492113 (regOne!19223 lt!1040963) (regTwo!19222 lt!1040963))))))

(declare-fun b!2993470 () Bool)

(declare-fun e!1881374 () Bool)

(assert (=> b!2993470 (= e!1881374 call!200402)))

(declare-fun b!2993471 () Bool)

(assert (=> b!2993471 (= e!1881372 call!200400)))

(declare-fun b!2993472 () Bool)

(assert (=> b!2993472 (= e!1881373 e!1881374)))

(declare-fun res!1234669 () Bool)

(assert (=> b!2993472 (=> (not res!1234669) (not e!1881374))))

(assert (=> b!2993472 (= res!1234669 call!200401)))

(assert (= (and d!845075 (not res!1234670)) b!2993468))

(assert (= (and b!2993468 c!492114) b!2993467))

(assert (= (and b!2993468 (not c!492114)) b!2993464))

(assert (= (and b!2993467 res!1234672) b!2993471))

(assert (= (and b!2993464 c!492113) b!2993465))

(assert (= (and b!2993464 (not c!492113)) b!2993466))

(assert (= (and b!2993465 res!1234671) b!2993469))

(assert (= (and b!2993466 (not res!1234668)) b!2993472))

(assert (= (and b!2993472 res!1234669) b!2993470))

(assert (= (or b!2993465 b!2993470) bm!200397))

(assert (= (or b!2993469 b!2993472) bm!200395))

(assert (= (or b!2993471 bm!200395) bm!200396))

(declare-fun m!3348671 () Bool)

(assert (=> b!2993467 m!3348671))

(declare-fun m!3348673 () Bool)

(assert (=> bm!200396 m!3348673))

(declare-fun m!3348675 () Bool)

(assert (=> bm!200397 m!3348675))

(assert (=> d!844995 d!845075))

(assert (=> d!844995 d!845043))

(assert (=> b!2993139 d!845059))

(assert (=> b!2993139 d!845061))

(declare-fun d!845077 () Bool)

(assert (=> d!845077 (= (nullable!3020 lt!1040963) (nullableFct!858 lt!1040963))))

(declare-fun bs!527903 () Bool)

(assert (= bs!527903 d!845077))

(declare-fun m!3348677 () Bool)

(assert (=> bs!527903 m!3348677))

(assert (=> b!2993232 d!845077))

(assert (=> b!2993232 d!845019))

(declare-fun d!845079 () Bool)

(assert (=> d!845079 (= (isEmptyExpr!464 lt!1040964) ((_ is EmptyExpr!9355) lt!1040964))))

(assert (=> b!2993250 d!845079))

(assert (=> d!844993 d!844969))

(assert (=> d!844993 d!844991))

(assert (=> d!844993 d!845027))

(declare-fun b!2993479 () Bool)

(declare-fun res!1234684 () Bool)

(declare-fun e!1881387 () Bool)

(assert (=> b!2993479 (=> (not res!1234684) (not e!1881387))))

(assert (=> b!2993479 (= res!1234684 (isEmpty!19368 (tail!4903 (_2!20146 lt!1040855))))))

(declare-fun b!2993480 () Bool)

(declare-fun e!1881386 () Bool)

(assert (=> b!2993480 (= e!1881386 (matchR!4237 (derivativeStep!2618 (simplify!346 lt!1040854) (head!6677 (_2!20146 lt!1040855))) (tail!4903 (_2!20146 lt!1040855))))))

(declare-fun b!2993481 () Bool)

(declare-fun e!1881381 () Bool)

(declare-fun e!1881385 () Bool)

(assert (=> b!2993481 (= e!1881381 e!1881385)))

(declare-fun c!492117 () Bool)

(assert (=> b!2993481 (= c!492117 ((_ is EmptyLang!9355) (simplify!346 lt!1040854)))))

(declare-fun b!2993482 () Bool)

(declare-fun res!1234682 () Bool)

(declare-fun e!1881382 () Bool)

(assert (=> b!2993482 (=> res!1234682 e!1881382)))

(assert (=> b!2993482 (= res!1234682 (not ((_ is ElementMatch!9355) (simplify!346 lt!1040854))))))

(assert (=> b!2993482 (= e!1881385 e!1881382)))

(declare-fun b!2993483 () Bool)

(declare-fun e!1881384 () Bool)

(assert (=> b!2993483 (= e!1881384 (not (= (head!6677 (_2!20146 lt!1040855)) (c!491875 (simplify!346 lt!1040854)))))))

(declare-fun b!2993484 () Bool)

(assert (=> b!2993484 (= e!1881387 (= (head!6677 (_2!20146 lt!1040855)) (c!491875 (simplify!346 lt!1040854))))))

(declare-fun b!2993485 () Bool)

(assert (=> b!2993485 (= e!1881386 (nullable!3020 (simplify!346 lt!1040854)))))

(declare-fun b!2993486 () Bool)

(declare-fun res!1234685 () Bool)

(assert (=> b!2993486 (=> (not res!1234685) (not e!1881387))))

(declare-fun call!200403 () Bool)

(assert (=> b!2993486 (= res!1234685 (not call!200403))))

(declare-fun b!2993487 () Bool)

(declare-fun res!1234681 () Bool)

(assert (=> b!2993487 (=> res!1234681 e!1881382)))

(assert (=> b!2993487 (= res!1234681 e!1881387)))

(declare-fun res!1234680 () Bool)

(assert (=> b!2993487 (=> (not res!1234680) (not e!1881387))))

(declare-fun lt!1040986 () Bool)

(assert (=> b!2993487 (= res!1234680 lt!1040986)))

(declare-fun bm!200398 () Bool)

(assert (=> bm!200398 (= call!200403 (isEmpty!19368 (_2!20146 lt!1040855)))))

(declare-fun b!2993488 () Bool)

(assert (=> b!2993488 (= e!1881385 (not lt!1040986))))

(declare-fun b!2993489 () Bool)

(declare-fun res!1234683 () Bool)

(assert (=> b!2993489 (=> res!1234683 e!1881384)))

(assert (=> b!2993489 (= res!1234683 (not (isEmpty!19368 (tail!4903 (_2!20146 lt!1040855)))))))

(declare-fun b!2993490 () Bool)

(declare-fun e!1881383 () Bool)

(assert (=> b!2993490 (= e!1881383 e!1881384)))

(declare-fun res!1234686 () Bool)

(assert (=> b!2993490 (=> res!1234686 e!1881384)))

(assert (=> b!2993490 (= res!1234686 call!200403)))

(declare-fun b!2993491 () Bool)

(assert (=> b!2993491 (= e!1881382 e!1881383)))

(declare-fun res!1234679 () Bool)

(assert (=> b!2993491 (=> (not res!1234679) (not e!1881383))))

(assert (=> b!2993491 (= res!1234679 (not lt!1040986))))

(declare-fun d!845081 () Bool)

(assert (=> d!845081 e!1881381))

(declare-fun c!492116 () Bool)

(assert (=> d!845081 (= c!492116 ((_ is EmptyExpr!9355) (simplify!346 lt!1040854)))))

(assert (=> d!845081 (= lt!1040986 e!1881386)))

(declare-fun c!492115 () Bool)

(assert (=> d!845081 (= c!492115 (isEmpty!19368 (_2!20146 lt!1040855)))))

(assert (=> d!845081 (validRegex!4088 (simplify!346 lt!1040854))))

(assert (=> d!845081 (= (matchR!4237 (simplify!346 lt!1040854) (_2!20146 lt!1040855)) lt!1040986)))

(declare-fun b!2993492 () Bool)

(assert (=> b!2993492 (= e!1881381 (= lt!1040986 call!200403))))

(assert (= (and d!845081 c!492115) b!2993485))

(assert (= (and d!845081 (not c!492115)) b!2993480))

(assert (= (and d!845081 c!492116) b!2993492))

(assert (= (and d!845081 (not c!492116)) b!2993481))

(assert (= (and b!2993481 c!492117) b!2993488))

(assert (= (and b!2993481 (not c!492117)) b!2993482))

(assert (= (and b!2993482 (not res!1234682)) b!2993487))

(assert (= (and b!2993487 res!1234680) b!2993486))

(assert (= (and b!2993486 res!1234685) b!2993479))

(assert (= (and b!2993479 res!1234684) b!2993484))

(assert (= (and b!2993487 (not res!1234681)) b!2993491))

(assert (= (and b!2993491 res!1234679) b!2993490))

(assert (= (and b!2993490 (not res!1234686)) b!2993489))

(assert (= (and b!2993489 (not res!1234683)) b!2993483))

(assert (= (or b!2993492 b!2993486 b!2993490) bm!200398))

(assert (=> bm!200398 m!3348439))

(assert (=> b!2993485 m!3348221))

(declare-fun m!3348679 () Bool)

(assert (=> b!2993485 m!3348679))

(assert (=> b!2993480 m!3348443))

(assert (=> b!2993480 m!3348221))

(assert (=> b!2993480 m!3348443))

(declare-fun m!3348681 () Bool)

(assert (=> b!2993480 m!3348681))

(assert (=> b!2993480 m!3348447))

(assert (=> b!2993480 m!3348681))

(assert (=> b!2993480 m!3348447))

(declare-fun m!3348683 () Bool)

(assert (=> b!2993480 m!3348683))

(assert (=> b!2993489 m!3348447))

(assert (=> b!2993489 m!3348447))

(assert (=> b!2993489 m!3348451))

(assert (=> b!2993484 m!3348443))

(assert (=> d!845081 m!3348439))

(assert (=> d!845081 m!3348221))

(declare-fun m!3348685 () Bool)

(assert (=> d!845081 m!3348685))

(assert (=> b!2993479 m!3348447))

(assert (=> b!2993479 m!3348447))

(assert (=> b!2993479 m!3348451))

(assert (=> b!2993483 m!3348443))

(assert (=> d!844993 d!845081))

(declare-fun d!845083 () Bool)

(assert (=> d!845083 (= (matchR!4237 lt!1040854 (_2!20146 lt!1040855)) (matchR!4237 (simplify!346 lt!1040854) (_2!20146 lt!1040855)))))

(assert (=> d!845083 true))

(declare-fun _$95!525 () Unit!49119)

(assert (=> d!845083 (= (choose!17772 lt!1040854 (_2!20146 lt!1040855)) _$95!525)))

(declare-fun bs!527906 () Bool)

(assert (= bs!527906 d!845083))

(assert (=> bs!527906 m!3348199))

(assert (=> bs!527906 m!3348221))

(assert (=> bs!527906 m!3348221))

(assert (=> bs!527906 m!3348529))

(assert (=> d!844993 d!845083))

(declare-fun b!2993493 () Bool)

(declare-fun res!1234692 () Bool)

(declare-fun e!1881394 () Bool)

(assert (=> b!2993493 (=> (not res!1234692) (not e!1881394))))

(assert (=> b!2993493 (= res!1234692 (isEmpty!19368 (tail!4903 (_2!20146 (get!10891 lt!1040914)))))))

(declare-fun b!2993494 () Bool)

(declare-fun e!1881393 () Bool)

(assert (=> b!2993494 (= e!1881393 (matchR!4237 (derivativeStep!2618 lt!1040854 (head!6677 (_2!20146 (get!10891 lt!1040914)))) (tail!4903 (_2!20146 (get!10891 lt!1040914)))))))

(declare-fun b!2993495 () Bool)

(declare-fun e!1881388 () Bool)

(declare-fun e!1881392 () Bool)

(assert (=> b!2993495 (= e!1881388 e!1881392)))

(declare-fun c!492120 () Bool)

(assert (=> b!2993495 (= c!492120 ((_ is EmptyLang!9355) lt!1040854))))

(declare-fun b!2993496 () Bool)

(declare-fun res!1234690 () Bool)

(declare-fun e!1881389 () Bool)

(assert (=> b!2993496 (=> res!1234690 e!1881389)))

(assert (=> b!2993496 (= res!1234690 (not ((_ is ElementMatch!9355) lt!1040854)))))

(assert (=> b!2993496 (= e!1881392 e!1881389)))

(declare-fun b!2993497 () Bool)

(declare-fun e!1881391 () Bool)

(assert (=> b!2993497 (= e!1881391 (not (= (head!6677 (_2!20146 (get!10891 lt!1040914))) (c!491875 lt!1040854))))))

(declare-fun b!2993498 () Bool)

(assert (=> b!2993498 (= e!1881394 (= (head!6677 (_2!20146 (get!10891 lt!1040914))) (c!491875 lt!1040854)))))

(declare-fun b!2993499 () Bool)

(assert (=> b!2993499 (= e!1881393 (nullable!3020 lt!1040854))))

(declare-fun b!2993500 () Bool)

(declare-fun res!1234693 () Bool)

(assert (=> b!2993500 (=> (not res!1234693) (not e!1881394))))

(declare-fun call!200404 () Bool)

(assert (=> b!2993500 (= res!1234693 (not call!200404))))

(declare-fun b!2993501 () Bool)

(declare-fun res!1234689 () Bool)

(assert (=> b!2993501 (=> res!1234689 e!1881389)))

(assert (=> b!2993501 (= res!1234689 e!1881394)))

(declare-fun res!1234688 () Bool)

(assert (=> b!2993501 (=> (not res!1234688) (not e!1881394))))

(declare-fun lt!1040987 () Bool)

(assert (=> b!2993501 (= res!1234688 lt!1040987)))

(declare-fun bm!200399 () Bool)

(assert (=> bm!200399 (= call!200404 (isEmpty!19368 (_2!20146 (get!10891 lt!1040914))))))

(declare-fun b!2993502 () Bool)

(assert (=> b!2993502 (= e!1881392 (not lt!1040987))))

(declare-fun b!2993503 () Bool)

(declare-fun res!1234691 () Bool)

(assert (=> b!2993503 (=> res!1234691 e!1881391)))

(assert (=> b!2993503 (= res!1234691 (not (isEmpty!19368 (tail!4903 (_2!20146 (get!10891 lt!1040914))))))))

(declare-fun b!2993504 () Bool)

(declare-fun e!1881390 () Bool)

(assert (=> b!2993504 (= e!1881390 e!1881391)))

(declare-fun res!1234694 () Bool)

(assert (=> b!2993504 (=> res!1234694 e!1881391)))

(assert (=> b!2993504 (= res!1234694 call!200404)))

(declare-fun b!2993505 () Bool)

(assert (=> b!2993505 (= e!1881389 e!1881390)))

(declare-fun res!1234687 () Bool)

(assert (=> b!2993505 (=> (not res!1234687) (not e!1881390))))

(assert (=> b!2993505 (= res!1234687 (not lt!1040987))))

(declare-fun d!845085 () Bool)

(assert (=> d!845085 e!1881388))

(declare-fun c!492119 () Bool)

(assert (=> d!845085 (= c!492119 ((_ is EmptyExpr!9355) lt!1040854))))

(assert (=> d!845085 (= lt!1040987 e!1881393)))

(declare-fun c!492118 () Bool)

(assert (=> d!845085 (= c!492118 (isEmpty!19368 (_2!20146 (get!10891 lt!1040914))))))

(assert (=> d!845085 (validRegex!4088 lt!1040854)))

(assert (=> d!845085 (= (matchR!4237 lt!1040854 (_2!20146 (get!10891 lt!1040914))) lt!1040987)))

(declare-fun b!2993506 () Bool)

(assert (=> b!2993506 (= e!1881388 (= lt!1040987 call!200404))))

(assert (= (and d!845085 c!492118) b!2993499))

(assert (= (and d!845085 (not c!492118)) b!2993494))

(assert (= (and d!845085 c!492119) b!2993506))

(assert (= (and d!845085 (not c!492119)) b!2993495))

(assert (= (and b!2993495 c!492120) b!2993502))

(assert (= (and b!2993495 (not c!492120)) b!2993496))

(assert (= (and b!2993496 (not res!1234690)) b!2993501))

(assert (= (and b!2993501 res!1234688) b!2993500))

(assert (= (and b!2993500 res!1234693) b!2993493))

(assert (= (and b!2993493 res!1234692) b!2993498))

(assert (= (and b!2993501 (not res!1234689)) b!2993505))

(assert (= (and b!2993505 res!1234687) b!2993504))

(assert (= (and b!2993504 (not res!1234694)) b!2993503))

(assert (= (and b!2993503 (not res!1234691)) b!2993497))

(assert (= (or b!2993506 b!2993500 b!2993504) bm!200399))

(declare-fun m!3348687 () Bool)

(assert (=> bm!200399 m!3348687))

(assert (=> b!2993499 m!3348441))

(declare-fun m!3348689 () Bool)

(assert (=> b!2993494 m!3348689))

(assert (=> b!2993494 m!3348689))

(declare-fun m!3348691 () Bool)

(assert (=> b!2993494 m!3348691))

(declare-fun m!3348693 () Bool)

(assert (=> b!2993494 m!3348693))

(assert (=> b!2993494 m!3348691))

(assert (=> b!2993494 m!3348693))

(declare-fun m!3348695 () Bool)

(assert (=> b!2993494 m!3348695))

(assert (=> b!2993503 m!3348693))

(assert (=> b!2993503 m!3348693))

(declare-fun m!3348697 () Bool)

(assert (=> b!2993503 m!3348697))

(assert (=> b!2993498 m!3348689))

(assert (=> d!845085 m!3348687))

(assert (=> d!845085 m!3348453))

(assert (=> b!2993493 m!3348693))

(assert (=> b!2993493 m!3348693))

(assert (=> b!2993493 m!3348697))

(assert (=> b!2993497 m!3348689))

(assert (=> b!2992815 d!845085))

(declare-fun d!845087 () Bool)

(assert (=> d!845087 (= (get!10891 lt!1040914) (v!34879 lt!1040914))))

(assert (=> b!2992815 d!845087))

(assert (=> b!2993134 d!845017))

(declare-fun d!845089 () Bool)

(assert (=> d!845089 (= (head!6677 s!11993) (h!40516 s!11993))))

(assert (=> b!2993078 d!845089))

(declare-fun d!845091 () Bool)

(assert (=> d!845091 (= (isEmptyLang!447 (ite c!492036 lt!1040961 lt!1040957)) ((_ is EmptyLang!9355) (ite c!492036 lt!1040961 lt!1040957)))))

(assert (=> bm!200343 d!845091))

(declare-fun b!2993507 () Bool)

(declare-fun res!1234700 () Bool)

(declare-fun e!1881401 () Bool)

(assert (=> b!2993507 (=> (not res!1234700) (not e!1881401))))

(assert (=> b!2993507 (= res!1234700 (isEmpty!19368 (tail!4903 s!11993)))))

(declare-fun b!2993508 () Bool)

(declare-fun e!1881400 () Bool)

(assert (=> b!2993508 (= e!1881400 (matchR!4237 (derivativeStep!2618 lt!1040854 (head!6677 s!11993)) (tail!4903 s!11993)))))

(declare-fun b!2993509 () Bool)

(declare-fun e!1881395 () Bool)

(declare-fun e!1881399 () Bool)

(assert (=> b!2993509 (= e!1881395 e!1881399)))

(declare-fun c!492123 () Bool)

(assert (=> b!2993509 (= c!492123 ((_ is EmptyLang!9355) lt!1040854))))

(declare-fun b!2993510 () Bool)

(declare-fun res!1234698 () Bool)

(declare-fun e!1881396 () Bool)

(assert (=> b!2993510 (=> res!1234698 e!1881396)))

(assert (=> b!2993510 (= res!1234698 (not ((_ is ElementMatch!9355) lt!1040854)))))

(assert (=> b!2993510 (= e!1881399 e!1881396)))

(declare-fun b!2993511 () Bool)

(declare-fun e!1881398 () Bool)

(assert (=> b!2993511 (= e!1881398 (not (= (head!6677 s!11993) (c!491875 lt!1040854))))))

(declare-fun b!2993512 () Bool)

(assert (=> b!2993512 (= e!1881401 (= (head!6677 s!11993) (c!491875 lt!1040854)))))

(declare-fun b!2993513 () Bool)

(assert (=> b!2993513 (= e!1881400 (nullable!3020 lt!1040854))))

(declare-fun b!2993514 () Bool)

(declare-fun res!1234701 () Bool)

(assert (=> b!2993514 (=> (not res!1234701) (not e!1881401))))

(declare-fun call!200405 () Bool)

(assert (=> b!2993514 (= res!1234701 (not call!200405))))

(declare-fun b!2993515 () Bool)

(declare-fun res!1234697 () Bool)

(assert (=> b!2993515 (=> res!1234697 e!1881396)))

(assert (=> b!2993515 (= res!1234697 e!1881401)))

(declare-fun res!1234696 () Bool)

(assert (=> b!2993515 (=> (not res!1234696) (not e!1881401))))

(declare-fun lt!1040988 () Bool)

(assert (=> b!2993515 (= res!1234696 lt!1040988)))

(declare-fun bm!200400 () Bool)

(assert (=> bm!200400 (= call!200405 (isEmpty!19368 s!11993))))

(declare-fun b!2993516 () Bool)

(assert (=> b!2993516 (= e!1881399 (not lt!1040988))))

(declare-fun b!2993517 () Bool)

(declare-fun res!1234699 () Bool)

(assert (=> b!2993517 (=> res!1234699 e!1881398)))

(assert (=> b!2993517 (= res!1234699 (not (isEmpty!19368 (tail!4903 s!11993))))))

(declare-fun b!2993518 () Bool)

(declare-fun e!1881397 () Bool)

(assert (=> b!2993518 (= e!1881397 e!1881398)))

(declare-fun res!1234702 () Bool)

(assert (=> b!2993518 (=> res!1234702 e!1881398)))

(assert (=> b!2993518 (= res!1234702 call!200405)))

(declare-fun b!2993519 () Bool)

(assert (=> b!2993519 (= e!1881396 e!1881397)))

(declare-fun res!1234695 () Bool)

(assert (=> b!2993519 (=> (not res!1234695) (not e!1881397))))

(assert (=> b!2993519 (= res!1234695 (not lt!1040988))))

(declare-fun d!845093 () Bool)

(assert (=> d!845093 e!1881395))

(declare-fun c!492122 () Bool)

(assert (=> d!845093 (= c!492122 ((_ is EmptyExpr!9355) lt!1040854))))

(assert (=> d!845093 (= lt!1040988 e!1881400)))

(declare-fun c!492121 () Bool)

(assert (=> d!845093 (= c!492121 (isEmpty!19368 s!11993))))

(assert (=> d!845093 (validRegex!4088 lt!1040854)))

(assert (=> d!845093 (= (matchR!4237 lt!1040854 s!11993) lt!1040988)))

(declare-fun b!2993520 () Bool)

(assert (=> b!2993520 (= e!1881395 (= lt!1040988 call!200405))))

(assert (= (and d!845093 c!492121) b!2993513))

(assert (= (and d!845093 (not c!492121)) b!2993508))

(assert (= (and d!845093 c!492122) b!2993520))

(assert (= (and d!845093 (not c!492122)) b!2993509))

(assert (= (and b!2993509 c!492123) b!2993516))

(assert (= (and b!2993509 (not c!492123)) b!2993510))

(assert (= (and b!2993510 (not res!1234698)) b!2993515))

(assert (= (and b!2993515 res!1234696) b!2993514))

(assert (= (and b!2993514 res!1234701) b!2993507))

(assert (= (and b!2993507 res!1234700) b!2993512))

(assert (= (and b!2993515 (not res!1234697)) b!2993519))

(assert (= (and b!2993519 res!1234695) b!2993518))

(assert (= (and b!2993518 (not res!1234702)) b!2993517))

(assert (= (and b!2993517 (not res!1234699)) b!2993511))

(assert (= (or b!2993520 b!2993514 b!2993518) bm!200400))

(assert (=> bm!200400 m!3348229))

(assert (=> b!2993513 m!3348441))

(assert (=> b!2993508 m!3348463))

(assert (=> b!2993508 m!3348463))

(declare-fun m!3348699 () Bool)

(assert (=> b!2993508 m!3348699))

(assert (=> b!2993508 m!3348467))

(assert (=> b!2993508 m!3348699))

(assert (=> b!2993508 m!3348467))

(declare-fun m!3348701 () Bool)

(assert (=> b!2993508 m!3348701))

(assert (=> b!2993517 m!3348467))

(assert (=> b!2993517 m!3348467))

(assert (=> b!2993517 m!3348471))

(assert (=> b!2993512 m!3348463))

(assert (=> d!845093 m!3348229))

(assert (=> d!845093 m!3348453))

(assert (=> b!2993507 m!3348467))

(assert (=> b!2993507 m!3348467))

(assert (=> b!2993507 m!3348471))

(assert (=> b!2993511 m!3348463))

(assert (=> b!2992819 d!845093))

(assert (=> b!2993147 d!845023))

(declare-fun d!845095 () Bool)

(assert (=> d!845095 (= (nullable!3020 r!17423) (nullableFct!858 r!17423))))

(declare-fun bs!527911 () Bool)

(assert (= bs!527911 d!845095))

(declare-fun m!3348703 () Bool)

(assert (=> bs!527911 m!3348703))

(assert (=> b!2993080 d!845095))

(declare-fun b!2993521 () Bool)

(declare-fun res!1234708 () Bool)

(declare-fun e!1881408 () Bool)

(assert (=> b!2993521 (=> (not res!1234708) (not e!1881408))))

(assert (=> b!2993521 (= res!1234708 (isEmpty!19368 (tail!4903 (_1!20146 lt!1040855))))))

(declare-fun b!2993522 () Bool)

(declare-fun e!1881407 () Bool)

(assert (=> b!2993522 (= e!1881407 (matchR!4237 (derivativeStep!2618 (simplify!346 (reg!9684 r!17423)) (head!6677 (_1!20146 lt!1040855))) (tail!4903 (_1!20146 lt!1040855))))))

(declare-fun b!2993523 () Bool)

(declare-fun e!1881402 () Bool)

(declare-fun e!1881406 () Bool)

(assert (=> b!2993523 (= e!1881402 e!1881406)))

(declare-fun c!492126 () Bool)

(assert (=> b!2993523 (= c!492126 ((_ is EmptyLang!9355) (simplify!346 (reg!9684 r!17423))))))

(declare-fun b!2993524 () Bool)

(declare-fun res!1234706 () Bool)

(declare-fun e!1881403 () Bool)

(assert (=> b!2993524 (=> res!1234706 e!1881403)))

(assert (=> b!2993524 (= res!1234706 (not ((_ is ElementMatch!9355) (simplify!346 (reg!9684 r!17423)))))))

(assert (=> b!2993524 (= e!1881406 e!1881403)))

(declare-fun b!2993525 () Bool)

(declare-fun e!1881405 () Bool)

(assert (=> b!2993525 (= e!1881405 (not (= (head!6677 (_1!20146 lt!1040855)) (c!491875 (simplify!346 (reg!9684 r!17423))))))))

(declare-fun b!2993526 () Bool)

(assert (=> b!2993526 (= e!1881408 (= (head!6677 (_1!20146 lt!1040855)) (c!491875 (simplify!346 (reg!9684 r!17423)))))))

(declare-fun b!2993527 () Bool)

(assert (=> b!2993527 (= e!1881407 (nullable!3020 (simplify!346 (reg!9684 r!17423))))))

(declare-fun b!2993528 () Bool)

(declare-fun res!1234709 () Bool)

(assert (=> b!2993528 (=> (not res!1234709) (not e!1881408))))

(declare-fun call!200406 () Bool)

(assert (=> b!2993528 (= res!1234709 (not call!200406))))

(declare-fun b!2993529 () Bool)

(declare-fun res!1234705 () Bool)

(assert (=> b!2993529 (=> res!1234705 e!1881403)))

(assert (=> b!2993529 (= res!1234705 e!1881408)))

(declare-fun res!1234704 () Bool)

(assert (=> b!2993529 (=> (not res!1234704) (not e!1881408))))

(declare-fun lt!1040989 () Bool)

(assert (=> b!2993529 (= res!1234704 lt!1040989)))

(declare-fun bm!200401 () Bool)

(assert (=> bm!200401 (= call!200406 (isEmpty!19368 (_1!20146 lt!1040855)))))

(declare-fun b!2993530 () Bool)

(assert (=> b!2993530 (= e!1881406 (not lt!1040989))))

(declare-fun b!2993531 () Bool)

(declare-fun res!1234707 () Bool)

(assert (=> b!2993531 (=> res!1234707 e!1881405)))

(assert (=> b!2993531 (= res!1234707 (not (isEmpty!19368 (tail!4903 (_1!20146 lt!1040855)))))))

(declare-fun b!2993532 () Bool)

(declare-fun e!1881404 () Bool)

(assert (=> b!2993532 (= e!1881404 e!1881405)))

(declare-fun res!1234710 () Bool)

(assert (=> b!2993532 (=> res!1234710 e!1881405)))

(assert (=> b!2993532 (= res!1234710 call!200406)))

(declare-fun b!2993533 () Bool)

(assert (=> b!2993533 (= e!1881403 e!1881404)))

(declare-fun res!1234703 () Bool)

(assert (=> b!2993533 (=> (not res!1234703) (not e!1881404))))

(assert (=> b!2993533 (= res!1234703 (not lt!1040989))))

(declare-fun d!845097 () Bool)

(assert (=> d!845097 e!1881402))

(declare-fun c!492125 () Bool)

(assert (=> d!845097 (= c!492125 ((_ is EmptyExpr!9355) (simplify!346 (reg!9684 r!17423))))))

(assert (=> d!845097 (= lt!1040989 e!1881407)))

(declare-fun c!492124 () Bool)

(assert (=> d!845097 (= c!492124 (isEmpty!19368 (_1!20146 lt!1040855)))))

(assert (=> d!845097 (validRegex!4088 (simplify!346 (reg!9684 r!17423)))))

(assert (=> d!845097 (= (matchR!4237 (simplify!346 (reg!9684 r!17423)) (_1!20146 lt!1040855)) lt!1040989)))

(declare-fun b!2993534 () Bool)

(assert (=> b!2993534 (= e!1881402 (= lt!1040989 call!200406))))

(assert (= (and d!845097 c!492124) b!2993527))

(assert (= (and d!845097 (not c!492124)) b!2993522))

(assert (= (and d!845097 c!492125) b!2993534))

(assert (= (and d!845097 (not c!492125)) b!2993523))

(assert (= (and b!2993523 c!492126) b!2993530))

(assert (= (and b!2993523 (not c!492126)) b!2993524))

(assert (= (and b!2993524 (not res!1234706)) b!2993529))

(assert (= (and b!2993529 res!1234704) b!2993528))

(assert (= (and b!2993528 res!1234709) b!2993521))

(assert (= (and b!2993521 res!1234708) b!2993526))

(assert (= (and b!2993529 (not res!1234705)) b!2993533))

(assert (= (and b!2993533 res!1234703) b!2993532))

(assert (= (and b!2993532 (not res!1234710)) b!2993531))

(assert (= (and b!2993531 (not res!1234707)) b!2993525))

(assert (= (or b!2993534 b!2993528 b!2993532) bm!200401))

(assert (=> bm!200401 m!3348481))

(assert (=> b!2993527 m!3348217))

(declare-fun m!3348705 () Bool)

(assert (=> b!2993527 m!3348705))

(assert (=> b!2993522 m!3348483))

(assert (=> b!2993522 m!3348217))

(assert (=> b!2993522 m!3348483))

(declare-fun m!3348707 () Bool)

(assert (=> b!2993522 m!3348707))

(assert (=> b!2993522 m!3348487))

(assert (=> b!2993522 m!3348707))

(assert (=> b!2993522 m!3348487))

(declare-fun m!3348709 () Bool)

(assert (=> b!2993522 m!3348709))

(assert (=> b!2993531 m!3348487))

(assert (=> b!2993531 m!3348487))

(assert (=> b!2993531 m!3348491))

(assert (=> b!2993526 m!3348483))

(assert (=> d!845097 m!3348481))

(assert (=> d!845097 m!3348217))

(declare-fun m!3348711 () Bool)

(assert (=> d!845097 m!3348711))

(assert (=> b!2993521 m!3348487))

(assert (=> b!2993521 m!3348487))

(assert (=> b!2993521 m!3348491))

(assert (=> b!2993525 m!3348483))

(assert (=> d!844989 d!845097))

(declare-fun d!845099 () Bool)

(assert (=> d!845099 (= (matchR!4237 (reg!9684 r!17423) (_1!20146 lt!1040855)) (matchR!4237 (simplify!346 (reg!9684 r!17423)) (_1!20146 lt!1040855)))))

(assert (=> d!845099 true))

(declare-fun _$95!526 () Unit!49119)

(assert (=> d!845099 (= (choose!17772 (reg!9684 r!17423) (_1!20146 lt!1040855)) _$95!526)))

(declare-fun bs!527913 () Bool)

(assert (= bs!527913 d!845099))

(assert (=> bs!527913 m!3348207))

(assert (=> bs!527913 m!3348217))

(assert (=> bs!527913 m!3348217))

(assert (=> bs!527913 m!3348509))

(assert (=> d!844989 d!845099))

(assert (=> d!844989 d!845043))

(assert (=> d!844989 d!844981))

(assert (=> d!844989 d!844995))

(assert (=> d!844975 d!844973))

(assert (=> d!844975 d!844971))

(declare-fun d!845101 () Bool)

(assert (=> d!845101 (= (matchR!4237 r!17423 s!11993) (matchRSpec!1492 r!17423 s!11993))))

(assert (=> d!845101 true))

(declare-fun _$88!3313 () Unit!49119)

(assert (=> d!845101 (= (choose!17771 r!17423 s!11993) _$88!3313)))

(declare-fun bs!527914 () Bool)

(assert (= bs!527914 d!845101))

(assert (=> bs!527914 m!3348203))

(assert (=> bs!527914 m!3348201))

(assert (=> d!844975 d!845101))

(assert (=> d!844975 d!844977))

(declare-fun d!845105 () Bool)

(assert (=> d!845105 (= (isEmptyExpr!464 (ite c!492046 lt!1040958 lt!1040959)) ((_ is EmptyExpr!9355) (ite c!492046 lt!1040958 lt!1040959)))))

(assert (=> bm!200346 d!845105))

(assert (=> b!2992811 d!845029))

(declare-fun d!845107 () Bool)

(assert (=> d!845107 true))

(assert (=> d!845107 true))

(declare-fun res!1234711 () Bool)

(assert (=> d!845107 (= (choose!17770 lambda!111929) res!1234711)))

(assert (=> d!844961 d!845107))

(assert (=> bm!200325 d!845045))

(assert (=> b!2993125 d!845059))

(assert (=> b!2993125 d!845061))

(assert (=> d!844965 d!844981))

(declare-fun bs!527915 () Bool)

(declare-fun b!2993544 () Bool)

(assert (= bs!527915 (and b!2993544 d!844951)))

(declare-fun lambda!111973 () Int)

(assert (=> bs!527915 (not (= lambda!111973 lambda!111954))))

(declare-fun bs!527916 () Bool)

(assert (= bs!527916 (and b!2993544 d!844913)))

(assert (=> bs!527916 (= (and (= (_1!20146 lt!1040855) s!11993) (= (reg!9684 (reg!9684 r!17423)) (reg!9684 r!17423)) (= (reg!9684 r!17423) (Star!9355 (reg!9684 r!17423)))) (= lambda!111973 lambda!111945))))

(declare-fun bs!527917 () Bool)

(assert (= bs!527917 (and b!2993544 b!2993063)))

(assert (=> bs!527917 (not (= lambda!111973 lambda!111960))))

(assert (=> bs!527916 (not (= lambda!111973 lambda!111944))))

(declare-fun bs!527918 () Bool)

(assert (= bs!527918 (and b!2993544 d!845049)))

(assert (=> bs!527918 (not (= lambda!111973 lambda!111966))))

(declare-fun bs!527919 () Bool)

(assert (= bs!527919 (and b!2993544 b!2992583)))

(assert (=> bs!527919 (not (= lambda!111973 lambda!111929))))

(assert (=> bs!527919 (= (and (= (_1!20146 lt!1040855) s!11993) (= (reg!9684 (reg!9684 r!17423)) (reg!9684 r!17423)) (= (reg!9684 r!17423) lt!1040854)) (= lambda!111973 lambda!111930))))

(declare-fun bs!527920 () Bool)

(assert (= bs!527920 (and b!2993544 b!2993072)))

(assert (=> bs!527920 (= (and (= (_1!20146 lt!1040855) s!11993) (= (reg!9684 (reg!9684 r!17423)) (reg!9684 r!17423)) (= (reg!9684 r!17423) r!17423)) (= lambda!111973 lambda!111959))))

(assert (=> b!2993544 true))

(assert (=> b!2993544 true))

(declare-fun bs!527921 () Bool)

(declare-fun b!2993535 () Bool)

(assert (= bs!527921 (and b!2993535 d!844913)))

(declare-fun lambda!111974 () Int)

(assert (=> bs!527921 (not (= lambda!111974 lambda!111945))))

(declare-fun bs!527922 () Bool)

(assert (= bs!527922 (and b!2993535 b!2993063)))

(assert (=> bs!527922 (= (and (= (_1!20146 lt!1040855) s!11993) (= (regOne!19222 (reg!9684 r!17423)) (regOne!19222 r!17423)) (= (regTwo!19222 (reg!9684 r!17423)) (regTwo!19222 r!17423))) (= lambda!111974 lambda!111960))))

(assert (=> bs!527921 (not (= lambda!111974 lambda!111944))))

(declare-fun bs!527923 () Bool)

(assert (= bs!527923 (and b!2993535 d!845049)))

(assert (=> bs!527923 (not (= lambda!111974 lambda!111966))))

(declare-fun bs!527924 () Bool)

(assert (= bs!527924 (and b!2993535 b!2992583)))

(assert (=> bs!527924 (not (= lambda!111974 lambda!111929))))

(declare-fun bs!527925 () Bool)

(assert (= bs!527925 (and b!2993535 d!844951)))

(assert (=> bs!527925 (not (= lambda!111974 lambda!111954))))

(declare-fun bs!527926 () Bool)

(assert (= bs!527926 (and b!2993535 b!2993544)))

(assert (=> bs!527926 (not (= lambda!111974 lambda!111973))))

(assert (=> bs!527924 (not (= lambda!111974 lambda!111930))))

(declare-fun bs!527928 () Bool)

(assert (= bs!527928 (and b!2993535 b!2993072)))

(assert (=> bs!527928 (not (= lambda!111974 lambda!111959))))

(assert (=> b!2993535 true))

(assert (=> b!2993535 true))

(declare-fun e!1881409 () Bool)

(declare-fun call!200408 () Bool)

(assert (=> b!2993535 (= e!1881409 call!200408)))

(declare-fun c!492130 () Bool)

(declare-fun bm!200402 () Bool)

(assert (=> bm!200402 (= call!200408 (Exists!1628 (ite c!492130 lambda!111973 lambda!111974)))))

(declare-fun b!2993536 () Bool)

(declare-fun res!1234713 () Bool)

(declare-fun e!1881413 () Bool)

(assert (=> b!2993536 (=> res!1234713 e!1881413)))

(declare-fun call!200407 () Bool)

(assert (=> b!2993536 (= res!1234713 call!200407)))

(assert (=> b!2993536 (= e!1881409 e!1881413)))

(declare-fun b!2993537 () Bool)

(declare-fun e!1881414 () Bool)

(assert (=> b!2993537 (= e!1881414 (= (_1!20146 lt!1040855) (Cons!35096 (c!491875 (reg!9684 r!17423)) Nil!35096)))))

(declare-fun b!2993538 () Bool)

(declare-fun c!492128 () Bool)

(assert (=> b!2993538 (= c!492128 ((_ is ElementMatch!9355) (reg!9684 r!17423)))))

(declare-fun e!1881411 () Bool)

(assert (=> b!2993538 (= e!1881411 e!1881414)))

(declare-fun b!2993539 () Bool)

(declare-fun e!1881412 () Bool)

(assert (=> b!2993539 (= e!1881412 e!1881411)))

(declare-fun res!1234712 () Bool)

(assert (=> b!2993539 (= res!1234712 (not ((_ is EmptyLang!9355) (reg!9684 r!17423))))))

(assert (=> b!2993539 (=> (not res!1234712) (not e!1881411))))

(declare-fun d!845109 () Bool)

(declare-fun c!492127 () Bool)

(assert (=> d!845109 (= c!492127 ((_ is EmptyExpr!9355) (reg!9684 r!17423)))))

(assert (=> d!845109 (= (matchRSpec!1492 (reg!9684 r!17423) (_1!20146 lt!1040855)) e!1881412)))

(declare-fun bm!200403 () Bool)

(assert (=> bm!200403 (= call!200407 (isEmpty!19368 (_1!20146 lt!1040855)))))

(declare-fun b!2993540 () Bool)

(declare-fun c!492129 () Bool)

(assert (=> b!2993540 (= c!492129 ((_ is Union!9355) (reg!9684 r!17423)))))

(declare-fun e!1881410 () Bool)

(assert (=> b!2993540 (= e!1881414 e!1881410)))

(declare-fun b!2993541 () Bool)

(declare-fun e!1881415 () Bool)

(assert (=> b!2993541 (= e!1881415 (matchRSpec!1492 (regTwo!19223 (reg!9684 r!17423)) (_1!20146 lt!1040855)))))

(declare-fun b!2993542 () Bool)

(assert (=> b!2993542 (= e!1881410 e!1881415)))

(declare-fun res!1234714 () Bool)

(assert (=> b!2993542 (= res!1234714 (matchRSpec!1492 (regOne!19223 (reg!9684 r!17423)) (_1!20146 lt!1040855)))))

(assert (=> b!2993542 (=> res!1234714 e!1881415)))

(declare-fun b!2993543 () Bool)

(assert (=> b!2993543 (= e!1881410 e!1881409)))

(assert (=> b!2993543 (= c!492130 ((_ is Star!9355) (reg!9684 r!17423)))))

(assert (=> b!2993544 (= e!1881413 call!200408)))

(declare-fun b!2993545 () Bool)

(assert (=> b!2993545 (= e!1881412 call!200407)))

(assert (= (and d!845109 c!492127) b!2993545))

(assert (= (and d!845109 (not c!492127)) b!2993539))

(assert (= (and b!2993539 res!1234712) b!2993538))

(assert (= (and b!2993538 c!492128) b!2993537))

(assert (= (and b!2993538 (not c!492128)) b!2993540))

(assert (= (and b!2993540 c!492129) b!2993542))

(assert (= (and b!2993540 (not c!492129)) b!2993543))

(assert (= (and b!2993542 (not res!1234714)) b!2993541))

(assert (= (and b!2993543 c!492130) b!2993536))

(assert (= (and b!2993543 (not c!492130)) b!2993535))

(assert (= (and b!2993536 (not res!1234713)) b!2993544))

(assert (= (or b!2993544 b!2993535) bm!200402))

(assert (= (or b!2993545 b!2993536) bm!200403))

(declare-fun m!3348717 () Bool)

(assert (=> bm!200402 m!3348717))

(assert (=> bm!200403 m!3348481))

(declare-fun m!3348719 () Bool)

(assert (=> b!2993541 m!3348719))

(declare-fun m!3348721 () Bool)

(assert (=> b!2993542 m!3348721))

(assert (=> d!844965 d!845109))

(declare-fun d!845115 () Bool)

(assert (=> d!845115 (= (matchR!4237 (reg!9684 r!17423) (_1!20146 lt!1040855)) (matchRSpec!1492 (reg!9684 r!17423) (_1!20146 lt!1040855)))))

(assert (=> d!845115 true))

(declare-fun _$88!3317 () Unit!49119)

(assert (=> d!845115 (= (choose!17771 (reg!9684 r!17423) (_1!20146 lt!1040855)) _$88!3317)))

(declare-fun bs!527929 () Bool)

(assert (= bs!527929 d!845115))

(assert (=> bs!527929 m!3348207))

(assert (=> bs!527929 m!3348435))

(assert (=> d!844965 d!845115))

(assert (=> d!844965 d!845043))

(declare-fun d!845119 () Bool)

(assert (=> d!845119 (= (Exists!1628 lambda!111944) (choose!17770 lambda!111944))))

(declare-fun bs!527930 () Bool)

(assert (= bs!527930 d!845119))

(declare-fun m!3348723 () Bool)

(assert (=> bs!527930 m!3348723))

(assert (=> d!844913 d!845119))

(declare-fun d!845121 () Bool)

(assert (=> d!845121 (= (Exists!1628 lambda!111945) (choose!17770 lambda!111945))))

(declare-fun bs!527931 () Bool)

(assert (= bs!527931 d!845121))

(declare-fun m!3348725 () Bool)

(assert (=> bs!527931 m!3348725))

(assert (=> d!844913 d!845121))

(declare-fun bs!527934 () Bool)

(declare-fun d!845123 () Bool)

(assert (= bs!527934 (and d!845123 b!2993535)))

(declare-fun lambda!111979 () Int)

(assert (=> bs!527934 (not (= lambda!111979 lambda!111974))))

(declare-fun bs!527935 () Bool)

(assert (= bs!527935 (and d!845123 d!844913)))

(assert (=> bs!527935 (not (= lambda!111979 lambda!111945))))

(declare-fun bs!527936 () Bool)

(assert (= bs!527936 (and d!845123 b!2993063)))

(assert (=> bs!527936 (not (= lambda!111979 lambda!111960))))

(assert (=> bs!527935 (= lambda!111979 lambda!111944)))

(declare-fun bs!527937 () Bool)

(assert (= bs!527937 (and d!845123 d!845049)))

(assert (=> bs!527937 (= (= (Star!9355 (reg!9684 r!17423)) lt!1040854) (= lambda!111979 lambda!111966))))

(declare-fun bs!527938 () Bool)

(assert (= bs!527938 (and d!845123 b!2992583)))

(assert (=> bs!527938 (= (= (Star!9355 (reg!9684 r!17423)) lt!1040854) (= lambda!111979 lambda!111929))))

(declare-fun bs!527939 () Bool)

(assert (= bs!527939 (and d!845123 d!844951)))

(assert (=> bs!527939 (= (= (Star!9355 (reg!9684 r!17423)) lt!1040854) (= lambda!111979 lambda!111954))))

(declare-fun bs!527940 () Bool)

(assert (= bs!527940 (and d!845123 b!2993544)))

(assert (=> bs!527940 (not (= lambda!111979 lambda!111973))))

(assert (=> bs!527938 (not (= lambda!111979 lambda!111930))))

(declare-fun bs!527941 () Bool)

(assert (= bs!527941 (and d!845123 b!2993072)))

(assert (=> bs!527941 (not (= lambda!111979 lambda!111959))))

(assert (=> d!845123 true))

(assert (=> d!845123 true))

(declare-fun bs!527942 () Bool)

(assert (= bs!527942 d!845123))

(declare-fun lambda!111980 () Int)

(assert (=> bs!527942 (not (= lambda!111980 lambda!111979))))

(assert (=> bs!527934 (not (= lambda!111980 lambda!111974))))

(assert (=> bs!527935 (= lambda!111980 lambda!111945)))

(assert (=> bs!527936 (not (= lambda!111980 lambda!111960))))

(assert (=> bs!527935 (not (= lambda!111980 lambda!111944))))

(assert (=> bs!527937 (not (= lambda!111980 lambda!111966))))

(assert (=> bs!527938 (not (= lambda!111980 lambda!111929))))

(assert (=> bs!527939 (not (= lambda!111980 lambda!111954))))

(assert (=> bs!527940 (= (and (= s!11993 (_1!20146 lt!1040855)) (= (reg!9684 r!17423) (reg!9684 (reg!9684 r!17423))) (= (Star!9355 (reg!9684 r!17423)) (reg!9684 r!17423))) (= lambda!111980 lambda!111973))))

(assert (=> bs!527938 (= (= (Star!9355 (reg!9684 r!17423)) lt!1040854) (= lambda!111980 lambda!111930))))

(assert (=> bs!527941 (= (= (Star!9355 (reg!9684 r!17423)) r!17423) (= lambda!111980 lambda!111959))))

(assert (=> d!845123 true))

(assert (=> d!845123 true))

(assert (=> d!845123 (= (Exists!1628 lambda!111979) (Exists!1628 lambda!111980))))

(assert (=> d!845123 true))

(declare-fun _$91!464 () Unit!49119)

(assert (=> d!845123 (= (choose!17768 (reg!9684 r!17423) s!11993) _$91!464)))

(declare-fun m!3348815 () Bool)

(assert (=> bs!527942 m!3348815))

(declare-fun m!3348817 () Bool)

(assert (=> bs!527942 m!3348817))

(assert (=> d!844913 d!845123))

(assert (=> d!844913 d!845043))

(declare-fun bs!527943 () Bool)

(declare-fun b!2993701 () Bool)

(assert (= bs!527943 (and b!2993701 d!845123)))

(declare-fun lambda!111981 () Int)

(assert (=> bs!527943 (not (= lambda!111981 lambda!111979))))

(declare-fun bs!527944 () Bool)

(assert (= bs!527944 (and b!2993701 b!2993535)))

(assert (=> bs!527944 (not (= lambda!111981 lambda!111974))))

(assert (=> bs!527943 (= (and (= (reg!9684 (regOne!19223 r!17423)) (reg!9684 r!17423)) (= (regOne!19223 r!17423) (Star!9355 (reg!9684 r!17423)))) (= lambda!111981 lambda!111980))))

(declare-fun bs!527945 () Bool)

(assert (= bs!527945 (and b!2993701 d!844913)))

(assert (=> bs!527945 (= (and (= (reg!9684 (regOne!19223 r!17423)) (reg!9684 r!17423)) (= (regOne!19223 r!17423) (Star!9355 (reg!9684 r!17423)))) (= lambda!111981 lambda!111945))))

(declare-fun bs!527946 () Bool)

(assert (= bs!527946 (and b!2993701 b!2993063)))

(assert (=> bs!527946 (not (= lambda!111981 lambda!111960))))

(assert (=> bs!527945 (not (= lambda!111981 lambda!111944))))

(declare-fun bs!527947 () Bool)

(assert (= bs!527947 (and b!2993701 d!845049)))

(assert (=> bs!527947 (not (= lambda!111981 lambda!111966))))

(declare-fun bs!527948 () Bool)

(assert (= bs!527948 (and b!2993701 b!2992583)))

(assert (=> bs!527948 (not (= lambda!111981 lambda!111929))))

(declare-fun bs!527950 () Bool)

(assert (= bs!527950 (and b!2993701 d!844951)))

(assert (=> bs!527950 (not (= lambda!111981 lambda!111954))))

(declare-fun bs!527951 () Bool)

(assert (= bs!527951 (and b!2993701 b!2993544)))

(assert (=> bs!527951 (= (and (= s!11993 (_1!20146 lt!1040855)) (= (reg!9684 (regOne!19223 r!17423)) (reg!9684 (reg!9684 r!17423))) (= (regOne!19223 r!17423) (reg!9684 r!17423))) (= lambda!111981 lambda!111973))))

(assert (=> bs!527948 (= (and (= (reg!9684 (regOne!19223 r!17423)) (reg!9684 r!17423)) (= (regOne!19223 r!17423) lt!1040854)) (= lambda!111981 lambda!111930))))

(declare-fun bs!527953 () Bool)

(assert (= bs!527953 (and b!2993701 b!2993072)))

(assert (=> bs!527953 (= (and (= (reg!9684 (regOne!19223 r!17423)) (reg!9684 r!17423)) (= (regOne!19223 r!17423) r!17423)) (= lambda!111981 lambda!111959))))

(assert (=> b!2993701 true))

(assert (=> b!2993701 true))

(declare-fun bs!527954 () Bool)

(declare-fun b!2993692 () Bool)

(assert (= bs!527954 (and b!2993692 d!845123)))

(declare-fun lambda!111982 () Int)

(assert (=> bs!527954 (not (= lambda!111982 lambda!111979))))

(assert (=> bs!527954 (not (= lambda!111982 lambda!111980))))

(declare-fun bs!527955 () Bool)

(assert (= bs!527955 (and b!2993692 d!844913)))

(assert (=> bs!527955 (not (= lambda!111982 lambda!111945))))

(declare-fun bs!527956 () Bool)

(assert (= bs!527956 (and b!2993692 b!2993063)))

(assert (=> bs!527956 (= (and (= (regOne!19222 (regOne!19223 r!17423)) (regOne!19222 r!17423)) (= (regTwo!19222 (regOne!19223 r!17423)) (regTwo!19222 r!17423))) (= lambda!111982 lambda!111960))))

(assert (=> bs!527955 (not (= lambda!111982 lambda!111944))))

(declare-fun bs!527957 () Bool)

(assert (= bs!527957 (and b!2993692 d!845049)))

(assert (=> bs!527957 (not (= lambda!111982 lambda!111966))))

(declare-fun bs!527958 () Bool)

(assert (= bs!527958 (and b!2993692 b!2992583)))

(assert (=> bs!527958 (not (= lambda!111982 lambda!111929))))

(declare-fun bs!527959 () Bool)

(assert (= bs!527959 (and b!2993692 d!844951)))

(assert (=> bs!527959 (not (= lambda!111982 lambda!111954))))

(declare-fun bs!527960 () Bool)

(assert (= bs!527960 (and b!2993692 b!2993544)))

(assert (=> bs!527960 (not (= lambda!111982 lambda!111973))))

(declare-fun bs!527961 () Bool)

(assert (= bs!527961 (and b!2993692 b!2993701)))

(assert (=> bs!527961 (not (= lambda!111982 lambda!111981))))

(declare-fun bs!527962 () Bool)

(assert (= bs!527962 (and b!2993692 b!2993535)))

(assert (=> bs!527962 (= (and (= s!11993 (_1!20146 lt!1040855)) (= (regOne!19222 (regOne!19223 r!17423)) (regOne!19222 (reg!9684 r!17423))) (= (regTwo!19222 (regOne!19223 r!17423)) (regTwo!19222 (reg!9684 r!17423)))) (= lambda!111982 lambda!111974))))

(assert (=> bs!527958 (not (= lambda!111982 lambda!111930))))

(declare-fun bs!527963 () Bool)

(assert (= bs!527963 (and b!2993692 b!2993072)))

(assert (=> bs!527963 (not (= lambda!111982 lambda!111959))))

(assert (=> b!2993692 true))

(assert (=> b!2993692 true))

(declare-fun e!1881495 () Bool)

(declare-fun call!200441 () Bool)

(assert (=> b!2993692 (= e!1881495 call!200441)))

(declare-fun bm!200435 () Bool)

(declare-fun c!492183 () Bool)

(assert (=> bm!200435 (= call!200441 (Exists!1628 (ite c!492183 lambda!111981 lambda!111982)))))

(declare-fun b!2993693 () Bool)

(declare-fun res!1234764 () Bool)

(declare-fun e!1881499 () Bool)

(assert (=> b!2993693 (=> res!1234764 e!1881499)))

(declare-fun call!200440 () Bool)

(assert (=> b!2993693 (= res!1234764 call!200440)))

(assert (=> b!2993693 (= e!1881495 e!1881499)))

(declare-fun b!2993694 () Bool)

(declare-fun e!1881500 () Bool)

(assert (=> b!2993694 (= e!1881500 (= s!11993 (Cons!35096 (c!491875 (regOne!19223 r!17423)) Nil!35096)))))

(declare-fun b!2993695 () Bool)

(declare-fun c!492181 () Bool)

(assert (=> b!2993695 (= c!492181 ((_ is ElementMatch!9355) (regOne!19223 r!17423)))))

(declare-fun e!1881497 () Bool)

(assert (=> b!2993695 (= e!1881497 e!1881500)))

(declare-fun b!2993696 () Bool)

(declare-fun e!1881498 () Bool)

(assert (=> b!2993696 (= e!1881498 e!1881497)))

(declare-fun res!1234763 () Bool)

(assert (=> b!2993696 (= res!1234763 (not ((_ is EmptyLang!9355) (regOne!19223 r!17423))))))

(assert (=> b!2993696 (=> (not res!1234763) (not e!1881497))))

(declare-fun d!845155 () Bool)

(declare-fun c!492180 () Bool)

(assert (=> d!845155 (= c!492180 ((_ is EmptyExpr!9355) (regOne!19223 r!17423)))))

(assert (=> d!845155 (= (matchRSpec!1492 (regOne!19223 r!17423) s!11993) e!1881498)))

(declare-fun bm!200436 () Bool)

(assert (=> bm!200436 (= call!200440 (isEmpty!19368 s!11993))))

(declare-fun b!2993697 () Bool)

(declare-fun c!492182 () Bool)

(assert (=> b!2993697 (= c!492182 ((_ is Union!9355) (regOne!19223 r!17423)))))

(declare-fun e!1881496 () Bool)

(assert (=> b!2993697 (= e!1881500 e!1881496)))

(declare-fun b!2993698 () Bool)

(declare-fun e!1881501 () Bool)

(assert (=> b!2993698 (= e!1881501 (matchRSpec!1492 (regTwo!19223 (regOne!19223 r!17423)) s!11993))))

(declare-fun b!2993699 () Bool)

(assert (=> b!2993699 (= e!1881496 e!1881501)))

(declare-fun res!1234765 () Bool)

(assert (=> b!2993699 (= res!1234765 (matchRSpec!1492 (regOne!19223 (regOne!19223 r!17423)) s!11993))))

(assert (=> b!2993699 (=> res!1234765 e!1881501)))

(declare-fun b!2993700 () Bool)

(assert (=> b!2993700 (= e!1881496 e!1881495)))

(assert (=> b!2993700 (= c!492183 ((_ is Star!9355) (regOne!19223 r!17423)))))

(assert (=> b!2993701 (= e!1881499 call!200441)))

(declare-fun b!2993702 () Bool)

(assert (=> b!2993702 (= e!1881498 call!200440)))

(assert (= (and d!845155 c!492180) b!2993702))

(assert (= (and d!845155 (not c!492180)) b!2993696))

(assert (= (and b!2993696 res!1234763) b!2993695))

(assert (= (and b!2993695 c!492181) b!2993694))

(assert (= (and b!2993695 (not c!492181)) b!2993697))

(assert (= (and b!2993697 c!492182) b!2993699))

(assert (= (and b!2993697 (not c!492182)) b!2993700))

(assert (= (and b!2993699 (not res!1234765)) b!2993698))

(assert (= (and b!2993700 c!492183) b!2993693))

(assert (= (and b!2993700 (not c!492183)) b!2993692))

(assert (= (and b!2993693 (not res!1234764)) b!2993701))

(assert (= (or b!2993701 b!2993692) bm!200435))

(assert (= (or b!2993702 b!2993693) bm!200436))

(declare-fun m!3348863 () Bool)

(assert (=> bm!200435 m!3348863))

(assert (=> bm!200436 m!3348229))

(declare-fun m!3348865 () Bool)

(assert (=> b!2993698 m!3348865))

(declare-fun m!3348867 () Bool)

(assert (=> b!2993699 m!3348867))

(assert (=> b!2993070 d!845155))

(declare-fun b!2993731 () Bool)

(declare-fun res!1234787 () Bool)

(declare-fun e!1881522 () Bool)

(assert (=> b!2993731 (=> (not res!1234787) (not e!1881522))))

(assert (=> b!2993731 (= res!1234787 (isEmpty!19368 (tail!4903 (tail!4903 (_1!20146 lt!1040855)))))))

(declare-fun b!2993732 () Bool)

(declare-fun e!1881521 () Bool)

(assert (=> b!2993732 (= e!1881521 (matchR!4237 (derivativeStep!2618 (derivativeStep!2618 lt!1040846 (head!6677 (_1!20146 lt!1040855))) (head!6677 (tail!4903 (_1!20146 lt!1040855)))) (tail!4903 (tail!4903 (_1!20146 lt!1040855)))))))

(declare-fun b!2993733 () Bool)

(declare-fun e!1881516 () Bool)

(declare-fun e!1881520 () Bool)

(assert (=> b!2993733 (= e!1881516 e!1881520)))

(declare-fun c!492192 () Bool)

(assert (=> b!2993733 (= c!492192 ((_ is EmptyLang!9355) (derivativeStep!2618 lt!1040846 (head!6677 (_1!20146 lt!1040855)))))))

(declare-fun b!2993734 () Bool)

(declare-fun res!1234785 () Bool)

(declare-fun e!1881517 () Bool)

(assert (=> b!2993734 (=> res!1234785 e!1881517)))

(assert (=> b!2993734 (= res!1234785 (not ((_ is ElementMatch!9355) (derivativeStep!2618 lt!1040846 (head!6677 (_1!20146 lt!1040855))))))))

(assert (=> b!2993734 (= e!1881520 e!1881517)))

(declare-fun b!2993735 () Bool)

(declare-fun e!1881519 () Bool)

(assert (=> b!2993735 (= e!1881519 (not (= (head!6677 (tail!4903 (_1!20146 lt!1040855))) (c!491875 (derivativeStep!2618 lt!1040846 (head!6677 (_1!20146 lt!1040855)))))))))

(declare-fun b!2993736 () Bool)

(assert (=> b!2993736 (= e!1881522 (= (head!6677 (tail!4903 (_1!20146 lt!1040855))) (c!491875 (derivativeStep!2618 lt!1040846 (head!6677 (_1!20146 lt!1040855))))))))

(declare-fun b!2993737 () Bool)

(assert (=> b!2993737 (= e!1881521 (nullable!3020 (derivativeStep!2618 lt!1040846 (head!6677 (_1!20146 lt!1040855)))))))

(declare-fun b!2993738 () Bool)

(declare-fun res!1234788 () Bool)

(assert (=> b!2993738 (=> (not res!1234788) (not e!1881522))))

(declare-fun call!200444 () Bool)

(assert (=> b!2993738 (= res!1234788 (not call!200444))))

(declare-fun b!2993739 () Bool)

(declare-fun res!1234784 () Bool)

(assert (=> b!2993739 (=> res!1234784 e!1881517)))

(assert (=> b!2993739 (= res!1234784 e!1881522)))

(declare-fun res!1234783 () Bool)

(assert (=> b!2993739 (=> (not res!1234783) (not e!1881522))))

(declare-fun lt!1041014 () Bool)

(assert (=> b!2993739 (= res!1234783 lt!1041014)))

(declare-fun bm!200439 () Bool)

(assert (=> bm!200439 (= call!200444 (isEmpty!19368 (tail!4903 (_1!20146 lt!1040855))))))

(declare-fun b!2993740 () Bool)

(assert (=> b!2993740 (= e!1881520 (not lt!1041014))))

(declare-fun b!2993741 () Bool)

(declare-fun res!1234786 () Bool)

(assert (=> b!2993741 (=> res!1234786 e!1881519)))

(assert (=> b!2993741 (= res!1234786 (not (isEmpty!19368 (tail!4903 (tail!4903 (_1!20146 lt!1040855))))))))

(declare-fun b!2993742 () Bool)

(declare-fun e!1881518 () Bool)

(assert (=> b!2993742 (= e!1881518 e!1881519)))

(declare-fun res!1234789 () Bool)

(assert (=> b!2993742 (=> res!1234789 e!1881519)))

(assert (=> b!2993742 (= res!1234789 call!200444)))

(declare-fun b!2993743 () Bool)

(assert (=> b!2993743 (= e!1881517 e!1881518)))

(declare-fun res!1234782 () Bool)

(assert (=> b!2993743 (=> (not res!1234782) (not e!1881518))))

(assert (=> b!2993743 (= res!1234782 (not lt!1041014))))

(declare-fun d!845173 () Bool)

(assert (=> d!845173 e!1881516))

(declare-fun c!492191 () Bool)

(assert (=> d!845173 (= c!492191 ((_ is EmptyExpr!9355) (derivativeStep!2618 lt!1040846 (head!6677 (_1!20146 lt!1040855)))))))

(assert (=> d!845173 (= lt!1041014 e!1881521)))

(declare-fun c!492190 () Bool)

(assert (=> d!845173 (= c!492190 (isEmpty!19368 (tail!4903 (_1!20146 lt!1040855))))))

(assert (=> d!845173 (validRegex!4088 (derivativeStep!2618 lt!1040846 (head!6677 (_1!20146 lt!1040855))))))

(assert (=> d!845173 (= (matchR!4237 (derivativeStep!2618 lt!1040846 (head!6677 (_1!20146 lt!1040855))) (tail!4903 (_1!20146 lt!1040855))) lt!1041014)))

(declare-fun b!2993744 () Bool)

(assert (=> b!2993744 (= e!1881516 (= lt!1041014 call!200444))))

(assert (= (and d!845173 c!492190) b!2993737))

(assert (= (and d!845173 (not c!492190)) b!2993732))

(assert (= (and d!845173 c!492191) b!2993744))

(assert (= (and d!845173 (not c!492191)) b!2993733))

(assert (= (and b!2993733 c!492192) b!2993740))

(assert (= (and b!2993733 (not c!492192)) b!2993734))

(assert (= (and b!2993734 (not res!1234785)) b!2993739))

(assert (= (and b!2993739 res!1234783) b!2993738))

(assert (= (and b!2993738 res!1234788) b!2993731))

(assert (= (and b!2993731 res!1234787) b!2993736))

(assert (= (and b!2993739 (not res!1234784)) b!2993743))

(assert (= (and b!2993743 res!1234782) b!2993742))

(assert (= (and b!2993742 (not res!1234789)) b!2993741))

(assert (= (and b!2993741 (not res!1234786)) b!2993735))

(assert (= (or b!2993744 b!2993738 b!2993742) bm!200439))

(assert (=> bm!200439 m!3348487))

(assert (=> bm!200439 m!3348491))

(assert (=> b!2993737 m!3348495))

(declare-fun m!3348869 () Bool)

(assert (=> b!2993737 m!3348869))

(assert (=> b!2993732 m!3348487))

(declare-fun m!3348871 () Bool)

(assert (=> b!2993732 m!3348871))

(assert (=> b!2993732 m!3348495))

(assert (=> b!2993732 m!3348871))

(declare-fun m!3348873 () Bool)

(assert (=> b!2993732 m!3348873))

(assert (=> b!2993732 m!3348487))

(declare-fun m!3348875 () Bool)

(assert (=> b!2993732 m!3348875))

(assert (=> b!2993732 m!3348873))

(assert (=> b!2993732 m!3348875))

(declare-fun m!3348877 () Bool)

(assert (=> b!2993732 m!3348877))

(assert (=> b!2993741 m!3348487))

(assert (=> b!2993741 m!3348875))

(assert (=> b!2993741 m!3348875))

(declare-fun m!3348879 () Bool)

(assert (=> b!2993741 m!3348879))

(assert (=> b!2993736 m!3348487))

(assert (=> b!2993736 m!3348871))

(assert (=> d!845173 m!3348487))

(assert (=> d!845173 m!3348491))

(assert (=> d!845173 m!3348495))

(declare-fun m!3348881 () Bool)

(assert (=> d!845173 m!3348881))

(assert (=> b!2993731 m!3348487))

(assert (=> b!2993731 m!3348875))

(assert (=> b!2993731 m!3348875))

(assert (=> b!2993731 m!3348879))

(assert (=> b!2993735 m!3348487))

(assert (=> b!2993735 m!3348871))

(assert (=> b!2993130 d!845173))

(declare-fun b!2993745 () Bool)

(declare-fun c!492196 () Bool)

(assert (=> b!2993745 (= c!492196 (nullable!3020 (regOne!19222 lt!1040846)))))

(declare-fun e!1881523 () Regex!9355)

(declare-fun e!1881527 () Regex!9355)

(assert (=> b!2993745 (= e!1881523 e!1881527)))

(declare-fun c!492195 () Bool)

(declare-fun bm!200440 () Bool)

(declare-fun call!200447 () Regex!9355)

(assert (=> bm!200440 (= call!200447 (derivativeStep!2618 (ite c!492195 (regTwo!19223 lt!1040846) (regTwo!19222 lt!1040846)) (head!6677 (_1!20146 lt!1040855))))))

(declare-fun b!2993746 () Bool)

(declare-fun e!1881526 () Regex!9355)

(assert (=> b!2993746 (= e!1881526 e!1881523)))

(declare-fun c!492193 () Bool)

(assert (=> b!2993746 (= c!492193 ((_ is Star!9355) lt!1040846))))

(declare-fun b!2993747 () Bool)

(declare-fun call!200445 () Regex!9355)

(assert (=> b!2993747 (= e!1881526 (Union!9355 call!200445 call!200447))))

(declare-fun bm!200441 () Bool)

(declare-fun call!200448 () Regex!9355)

(declare-fun call!200446 () Regex!9355)

(assert (=> bm!200441 (= call!200448 call!200446)))

(declare-fun d!845175 () Bool)

(declare-fun lt!1041015 () Regex!9355)

(assert (=> d!845175 (validRegex!4088 lt!1041015)))

(declare-fun e!1881525 () Regex!9355)

(assert (=> d!845175 (= lt!1041015 e!1881525)))

(declare-fun c!492194 () Bool)

(assert (=> d!845175 (= c!492194 (or ((_ is EmptyExpr!9355) lt!1040846) ((_ is EmptyLang!9355) lt!1040846)))))

(assert (=> d!845175 (validRegex!4088 lt!1040846)))

(assert (=> d!845175 (= (derivativeStep!2618 lt!1040846 (head!6677 (_1!20146 lt!1040855))) lt!1041015)))

(declare-fun b!2993748 () Bool)

(assert (=> b!2993748 (= e!1881525 EmptyLang!9355)))

(declare-fun b!2993749 () Bool)

(assert (=> b!2993749 (= e!1881527 (Union!9355 (Concat!14676 call!200448 (regTwo!19222 lt!1040846)) EmptyLang!9355))))

(declare-fun b!2993750 () Bool)

(declare-fun e!1881524 () Regex!9355)

(assert (=> b!2993750 (= e!1881524 (ite (= (head!6677 (_1!20146 lt!1040855)) (c!491875 lt!1040846)) EmptyExpr!9355 EmptyLang!9355))))

(declare-fun b!2993751 () Bool)

(assert (=> b!2993751 (= e!1881525 e!1881524)))

(declare-fun c!492197 () Bool)

(assert (=> b!2993751 (= c!492197 ((_ is ElementMatch!9355) lt!1040846))))

(declare-fun bm!200442 () Bool)

(assert (=> bm!200442 (= call!200446 call!200445)))

(declare-fun b!2993752 () Bool)

(assert (=> b!2993752 (= e!1881527 (Union!9355 (Concat!14676 call!200448 (regTwo!19222 lt!1040846)) call!200447))))

(declare-fun b!2993753 () Bool)

(assert (=> b!2993753 (= e!1881523 (Concat!14676 call!200446 lt!1040846))))

(declare-fun bm!200443 () Bool)

(assert (=> bm!200443 (= call!200445 (derivativeStep!2618 (ite c!492195 (regOne!19223 lt!1040846) (ite c!492193 (reg!9684 lt!1040846) (regOne!19222 lt!1040846))) (head!6677 (_1!20146 lt!1040855))))))

(declare-fun b!2993754 () Bool)

(assert (=> b!2993754 (= c!492195 ((_ is Union!9355) lt!1040846))))

(assert (=> b!2993754 (= e!1881524 e!1881526)))

(assert (= (and d!845175 c!492194) b!2993748))

(assert (= (and d!845175 (not c!492194)) b!2993751))

(assert (= (and b!2993751 c!492197) b!2993750))

(assert (= (and b!2993751 (not c!492197)) b!2993754))

(assert (= (and b!2993754 c!492195) b!2993747))

(assert (= (and b!2993754 (not c!492195)) b!2993746))

(assert (= (and b!2993746 c!492193) b!2993753))

(assert (= (and b!2993746 (not c!492193)) b!2993745))

(assert (= (and b!2993745 c!492196) b!2993752))

(assert (= (and b!2993745 (not c!492196)) b!2993749))

(assert (= (or b!2993752 b!2993749) bm!200441))

(assert (= (or b!2993753 bm!200441) bm!200442))

(assert (= (or b!2993747 b!2993752) bm!200440))

(assert (= (or b!2993747 bm!200442) bm!200443))

(declare-fun m!3348883 () Bool)

(assert (=> b!2993745 m!3348883))

(assert (=> bm!200440 m!3348483))

(declare-fun m!3348885 () Bool)

(assert (=> bm!200440 m!3348885))

(declare-fun m!3348887 () Bool)

(assert (=> d!845175 m!3348887))

(assert (=> d!845175 m!3348499))

(assert (=> bm!200443 m!3348483))

(declare-fun m!3348889 () Bool)

(assert (=> bm!200443 m!3348889))

(assert (=> b!2993130 d!845175))

(assert (=> b!2993130 d!845017))

(assert (=> b!2993130 d!845061))

(assert (=> d!844973 d!844979))

(assert (=> d!844973 d!844977))

(declare-fun d!845181 () Bool)

(assert (=> d!845181 (= (isEmpty!19368 (tail!4903 s!11993)) ((_ is Nil!35096) (tail!4903 s!11993)))))

(assert (=> b!2993074 d!845181))

(declare-fun d!845183 () Bool)

(assert (=> d!845183 (= (tail!4903 s!11993) (t!234285 s!11993))))

(assert (=> b!2993074 d!845183))

(declare-fun d!845185 () Bool)

(assert (=> d!845185 (= (isEmptyLang!447 (ite c!492046 lt!1040958 (ite c!492036 lt!1040960 lt!1040959))) ((_ is EmptyLang!9355) (ite c!492046 lt!1040958 (ite c!492036 lt!1040960 lt!1040959))))))

(assert (=> bm!200342 d!845185))

(assert (=> d!844987 d!845025))

(declare-fun b!2993764 () Bool)

(declare-fun e!1881538 () Bool)

(declare-fun e!1881541 () Bool)

(assert (=> b!2993764 (= e!1881538 e!1881541)))

(declare-fun c!492200 () Bool)

(assert (=> b!2993764 (= c!492200 ((_ is Union!9355) lt!1040852))))

(declare-fun d!845187 () Bool)

(declare-fun res!1234797 () Bool)

(declare-fun e!1881540 () Bool)

(assert (=> d!845187 (=> res!1234797 e!1881540)))

(assert (=> d!845187 (= res!1234797 ((_ is ElementMatch!9355) lt!1040852))))

(assert (=> d!845187 (= (validRegex!4088 lt!1040852) e!1881540)))

(declare-fun b!2993765 () Bool)

(declare-fun res!1234798 () Bool)

(declare-fun e!1881539 () Bool)

(assert (=> b!2993765 (=> (not res!1234798) (not e!1881539))))

(declare-fun call!200454 () Bool)

(assert (=> b!2993765 (= res!1234798 call!200454)))

(assert (=> b!2993765 (= e!1881541 e!1881539)))

(declare-fun b!2993766 () Bool)

(declare-fun res!1234795 () Bool)

(declare-fun e!1881536 () Bool)

(assert (=> b!2993766 (=> res!1234795 e!1881536)))

(assert (=> b!2993766 (= res!1234795 (not ((_ is Concat!14676) lt!1040852)))))

(assert (=> b!2993766 (= e!1881541 e!1881536)))

(declare-fun b!2993767 () Bool)

(declare-fun e!1881535 () Bool)

(assert (=> b!2993767 (= e!1881538 e!1881535)))

(declare-fun res!1234799 () Bool)

(assert (=> b!2993767 (= res!1234799 (not (nullable!3020 (reg!9684 lt!1040852))))))

(assert (=> b!2993767 (=> (not res!1234799) (not e!1881535))))

(declare-fun b!2993768 () Bool)

(assert (=> b!2993768 (= e!1881540 e!1881538)))

(declare-fun c!492201 () Bool)

(assert (=> b!2993768 (= c!492201 ((_ is Star!9355) lt!1040852))))

(declare-fun bm!200447 () Bool)

(declare-fun call!200453 () Bool)

(declare-fun call!200452 () Bool)

(assert (=> bm!200447 (= call!200453 call!200452)))

(declare-fun b!2993769 () Bool)

(assert (=> b!2993769 (= e!1881539 call!200453)))

(declare-fun bm!200448 () Bool)

(assert (=> bm!200448 (= call!200452 (validRegex!4088 (ite c!492201 (reg!9684 lt!1040852) (ite c!492200 (regTwo!19223 lt!1040852) (regOne!19222 lt!1040852)))))))

(declare-fun bm!200449 () Bool)

(assert (=> bm!200449 (= call!200454 (validRegex!4088 (ite c!492200 (regOne!19223 lt!1040852) (regTwo!19222 lt!1040852))))))

(declare-fun b!2993770 () Bool)

(declare-fun e!1881537 () Bool)

(assert (=> b!2993770 (= e!1881537 call!200454)))

(declare-fun b!2993771 () Bool)

(assert (=> b!2993771 (= e!1881535 call!200452)))

(declare-fun b!2993772 () Bool)

(assert (=> b!2993772 (= e!1881536 e!1881537)))

(declare-fun res!1234796 () Bool)

(assert (=> b!2993772 (=> (not res!1234796) (not e!1881537))))

(assert (=> b!2993772 (= res!1234796 call!200453)))

(assert (= (and d!845187 (not res!1234797)) b!2993768))

(assert (= (and b!2993768 c!492201) b!2993767))

(assert (= (and b!2993768 (not c!492201)) b!2993764))

(assert (= (and b!2993767 res!1234799) b!2993771))

(assert (= (and b!2993764 c!492200) b!2993765))

(assert (= (and b!2993764 (not c!492200)) b!2993766))

(assert (= (and b!2993765 res!1234798) b!2993769))

(assert (= (and b!2993766 (not res!1234795)) b!2993772))

(assert (= (and b!2993772 res!1234796) b!2993770))

(assert (= (or b!2993765 b!2993770) bm!200449))

(assert (= (or b!2993769 b!2993772) bm!200447))

(assert (= (or b!2993771 bm!200447) bm!200448))

(declare-fun m!3348897 () Bool)

(assert (=> b!2993767 m!3348897))

(declare-fun m!3348899 () Bool)

(assert (=> bm!200448 m!3348899))

(declare-fun m!3348901 () Bool)

(assert (=> bm!200449 m!3348901))

(assert (=> d!844987 d!845187))

(declare-fun d!845191 () Bool)

(assert (=> d!845191 (= (isEmpty!19368 (tail!4903 (_2!20146 lt!1040855))) ((_ is Nil!35096) (tail!4903 (_2!20146 lt!1040855))))))

(assert (=> b!2993143 d!845191))

(assert (=> b!2993143 d!845073))

(declare-fun b!2993795 () Bool)

(declare-fun e!1881553 () Bool)

(declare-fun lt!1041018 () List!35220)

(assert (=> b!2993795 (= e!1881553 (or (not (= (t!234285 s!11993) Nil!35096)) (= lt!1041018 (++!8397 Nil!35096 (Cons!35096 (h!40516 s!11993) Nil!35096)))))))

(declare-fun d!845193 () Bool)

(assert (=> d!845193 e!1881553))

(declare-fun res!1234807 () Bool)

(assert (=> d!845193 (=> (not res!1234807) (not e!1881553))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4776 (List!35220) (InoxSet C!18896))

(assert (=> d!845193 (= res!1234807 (= (content!4776 lt!1041018) ((_ map or) (content!4776 (++!8397 Nil!35096 (Cons!35096 (h!40516 s!11993) Nil!35096))) (content!4776 (t!234285 s!11993)))))))

(declare-fun e!1881554 () List!35220)

(assert (=> d!845193 (= lt!1041018 e!1881554)))

(declare-fun c!492208 () Bool)

(assert (=> d!845193 (= c!492208 ((_ is Nil!35096) (++!8397 Nil!35096 (Cons!35096 (h!40516 s!11993) Nil!35096))))))

(assert (=> d!845193 (= (++!8397 (++!8397 Nil!35096 (Cons!35096 (h!40516 s!11993) Nil!35096)) (t!234285 s!11993)) lt!1041018)))

(declare-fun b!2993792 () Bool)

(assert (=> b!2993792 (= e!1881554 (t!234285 s!11993))))

(declare-fun b!2993793 () Bool)

(assert (=> b!2993793 (= e!1881554 (Cons!35096 (h!40516 (++!8397 Nil!35096 (Cons!35096 (h!40516 s!11993) Nil!35096))) (++!8397 (t!234285 (++!8397 Nil!35096 (Cons!35096 (h!40516 s!11993) Nil!35096))) (t!234285 s!11993))))))

(declare-fun b!2993794 () Bool)

(declare-fun res!1234808 () Bool)

(assert (=> b!2993794 (=> (not res!1234808) (not e!1881553))))

(assert (=> b!2993794 (= res!1234808 (= (size!26505 lt!1041018) (+ (size!26505 (++!8397 Nil!35096 (Cons!35096 (h!40516 s!11993) Nil!35096))) (size!26505 (t!234285 s!11993)))))))

(assert (= (and d!845193 c!492208) b!2993792))

(assert (= (and d!845193 (not c!492208)) b!2993793))

(assert (= (and d!845193 res!1234807) b!2993794))

(assert (= (and b!2993794 res!1234808) b!2993795))

(declare-fun m!3348909 () Bool)

(assert (=> d!845193 m!3348909))

(assert (=> d!845193 m!3348373))

(declare-fun m!3348911 () Bool)

(assert (=> d!845193 m!3348911))

(declare-fun m!3348913 () Bool)

(assert (=> d!845193 m!3348913))

(declare-fun m!3348915 () Bool)

(assert (=> b!2993793 m!3348915))

(declare-fun m!3348917 () Bool)

(assert (=> b!2993794 m!3348917))

(assert (=> b!2993794 m!3348373))

(declare-fun m!3348919 () Bool)

(assert (=> b!2993794 m!3348919))

(assert (=> b!2993794 m!3348551))

(assert (=> b!2992813 d!845193))

(declare-fun b!2993813 () Bool)

(declare-fun e!1881562 () Bool)

(declare-fun lt!1041020 () List!35220)

(assert (=> b!2993813 (= e!1881562 (or (not (= (Cons!35096 (h!40516 s!11993) Nil!35096) Nil!35096)) (= lt!1041020 Nil!35096)))))

(declare-fun d!845197 () Bool)

(assert (=> d!845197 e!1881562))

(declare-fun res!1234817 () Bool)

(assert (=> d!845197 (=> (not res!1234817) (not e!1881562))))

(assert (=> d!845197 (= res!1234817 (= (content!4776 lt!1041020) ((_ map or) (content!4776 Nil!35096) (content!4776 (Cons!35096 (h!40516 s!11993) Nil!35096)))))))

(declare-fun e!1881563 () List!35220)

(assert (=> d!845197 (= lt!1041020 e!1881563)))

(declare-fun c!492212 () Bool)

(assert (=> d!845197 (= c!492212 ((_ is Nil!35096) Nil!35096))))

(assert (=> d!845197 (= (++!8397 Nil!35096 (Cons!35096 (h!40516 s!11993) Nil!35096)) lt!1041020)))

(declare-fun b!2993810 () Bool)

(assert (=> b!2993810 (= e!1881563 (Cons!35096 (h!40516 s!11993) Nil!35096))))

(declare-fun b!2993811 () Bool)

(assert (=> b!2993811 (= e!1881563 (Cons!35096 (h!40516 Nil!35096) (++!8397 (t!234285 Nil!35096) (Cons!35096 (h!40516 s!11993) Nil!35096))))))

(declare-fun b!2993812 () Bool)

(declare-fun res!1234818 () Bool)

(assert (=> b!2993812 (=> (not res!1234818) (not e!1881562))))

(assert (=> b!2993812 (= res!1234818 (= (size!26505 lt!1041020) (+ (size!26505 Nil!35096) (size!26505 (Cons!35096 (h!40516 s!11993) Nil!35096)))))))

(assert (= (and d!845197 c!492212) b!2993810))

(assert (= (and d!845197 (not c!492212)) b!2993811))

(assert (= (and d!845197 res!1234817) b!2993812))

(assert (= (and b!2993812 res!1234818) b!2993813))

(declare-fun m!3348927 () Bool)

(assert (=> d!845197 m!3348927))

(declare-fun m!3348929 () Bool)

(assert (=> d!845197 m!3348929))

(declare-fun m!3348931 () Bool)

(assert (=> d!845197 m!3348931))

(declare-fun m!3348935 () Bool)

(assert (=> b!2993811 m!3348935))

(declare-fun m!3348937 () Bool)

(assert (=> b!2993812 m!3348937))

(declare-fun m!3348939 () Bool)

(assert (=> b!2993812 m!3348939))

(declare-fun m!3348941 () Bool)

(assert (=> b!2993812 m!3348941))

(assert (=> b!2992813 d!845197))

(declare-fun d!845199 () Bool)

(assert (=> d!845199 (= (++!8397 (++!8397 Nil!35096 (Cons!35096 (h!40516 s!11993) Nil!35096)) (t!234285 s!11993)) s!11993)))

(declare-fun lt!1041030 () Unit!49119)

(declare-fun choose!17773 (List!35220 C!18896 List!35220 List!35220) Unit!49119)

(assert (=> d!845199 (= lt!1041030 (choose!17773 Nil!35096 (h!40516 s!11993) (t!234285 s!11993) s!11993))))

(assert (=> d!845199 (= (++!8397 Nil!35096 (Cons!35096 (h!40516 s!11993) (t!234285 s!11993))) s!11993)))

(assert (=> d!845199 (= (lemmaMoveElementToOtherListKeepsConcatEq!1008 Nil!35096 (h!40516 s!11993) (t!234285 s!11993) s!11993) lt!1041030)))

(declare-fun bs!527981 () Bool)

(assert (= bs!527981 d!845199))

(assert (=> bs!527981 m!3348373))

(assert (=> bs!527981 m!3348373))

(assert (=> bs!527981 m!3348375))

(declare-fun m!3348979 () Bool)

(assert (=> bs!527981 m!3348979))

(declare-fun m!3348981 () Bool)

(assert (=> bs!527981 m!3348981))

(assert (=> b!2992813 d!845199))

(declare-fun b!2993853 () Bool)

(declare-fun e!1881589 () Bool)

(declare-fun lt!1041033 () Option!6746)

(assert (=> b!2993853 (= e!1881589 (= (++!8397 (_1!20146 (get!10891 lt!1041033)) (_2!20146 (get!10891 lt!1041033))) s!11993))))

(declare-fun b!2993854 () Bool)

(declare-fun res!1234826 () Bool)

(assert (=> b!2993854 (=> (not res!1234826) (not e!1881589))))

(assert (=> b!2993854 (= res!1234826 (matchR!4237 (reg!9684 r!17423) (_1!20146 (get!10891 lt!1041033))))))

(declare-fun b!2993856 () Bool)

(declare-fun e!1881587 () Option!6746)

(assert (=> b!2993856 (= e!1881587 (Some!6745 (tuple2!34029 (++!8397 Nil!35096 (Cons!35096 (h!40516 s!11993) Nil!35096)) (t!234285 s!11993))))))

(declare-fun b!2993857 () Bool)

(declare-fun e!1881588 () Bool)

(assert (=> b!2993857 (= e!1881588 (not (isDefined!5297 lt!1041033)))))

(declare-fun b!2993858 () Bool)

(declare-fun lt!1041034 () Unit!49119)

(declare-fun lt!1041032 () Unit!49119)

(assert (=> b!2993858 (= lt!1041034 lt!1041032)))

(assert (=> b!2993858 (= (++!8397 (++!8397 (++!8397 Nil!35096 (Cons!35096 (h!40516 s!11993) Nil!35096)) (Cons!35096 (h!40516 (t!234285 s!11993)) Nil!35096)) (t!234285 (t!234285 s!11993))) s!11993)))

(assert (=> b!2993858 (= lt!1041032 (lemmaMoveElementToOtherListKeepsConcatEq!1008 (++!8397 Nil!35096 (Cons!35096 (h!40516 s!11993) Nil!35096)) (h!40516 (t!234285 s!11993)) (t!234285 (t!234285 s!11993)) s!11993))))

(declare-fun e!1881586 () Option!6746)

(assert (=> b!2993858 (= e!1881586 (findConcatSeparation!1140 (reg!9684 r!17423) lt!1040854 (++!8397 (++!8397 Nil!35096 (Cons!35096 (h!40516 s!11993) Nil!35096)) (Cons!35096 (h!40516 (t!234285 s!11993)) Nil!35096)) (t!234285 (t!234285 s!11993)) s!11993))))

(declare-fun b!2993859 () Bool)

(declare-fun res!1234828 () Bool)

(assert (=> b!2993859 (=> (not res!1234828) (not e!1881589))))

(assert (=> b!2993859 (= res!1234828 (matchR!4237 lt!1040854 (_2!20146 (get!10891 lt!1041033))))))

(declare-fun b!2993855 () Bool)

(assert (=> b!2993855 (= e!1881586 None!6745)))

(declare-fun d!845209 () Bool)

(assert (=> d!845209 e!1881588))

(declare-fun res!1234827 () Bool)

(assert (=> d!845209 (=> res!1234827 e!1881588)))

(assert (=> d!845209 (= res!1234827 e!1881589)))

(declare-fun res!1234824 () Bool)

(assert (=> d!845209 (=> (not res!1234824) (not e!1881589))))

(assert (=> d!845209 (= res!1234824 (isDefined!5297 lt!1041033))))

(assert (=> d!845209 (= lt!1041033 e!1881587)))

(declare-fun c!492230 () Bool)

(declare-fun e!1881585 () Bool)

(assert (=> d!845209 (= c!492230 e!1881585)))

(declare-fun res!1234825 () Bool)

(assert (=> d!845209 (=> (not res!1234825) (not e!1881585))))

(assert (=> d!845209 (= res!1234825 (matchR!4237 (reg!9684 r!17423) (++!8397 Nil!35096 (Cons!35096 (h!40516 s!11993) Nil!35096))))))

(assert (=> d!845209 (validRegex!4088 (reg!9684 r!17423))))

(assert (=> d!845209 (= (findConcatSeparation!1140 (reg!9684 r!17423) lt!1040854 (++!8397 Nil!35096 (Cons!35096 (h!40516 s!11993) Nil!35096)) (t!234285 s!11993) s!11993) lt!1041033)))

(declare-fun b!2993860 () Bool)

(assert (=> b!2993860 (= e!1881587 e!1881586)))

(declare-fun c!492231 () Bool)

(assert (=> b!2993860 (= c!492231 ((_ is Nil!35096) (t!234285 s!11993)))))

(declare-fun b!2993861 () Bool)

(assert (=> b!2993861 (= e!1881585 (matchR!4237 lt!1040854 (t!234285 s!11993)))))

(assert (= (and d!845209 res!1234825) b!2993861))

(assert (= (and d!845209 c!492230) b!2993856))

(assert (= (and d!845209 (not c!492230)) b!2993860))

(assert (= (and b!2993860 c!492231) b!2993855))

(assert (= (and b!2993860 (not c!492231)) b!2993858))

(assert (= (and d!845209 res!1234824) b!2993854))

(assert (= (and b!2993854 res!1234826) b!2993859))

(assert (= (and b!2993859 res!1234828) b!2993853))

(assert (= (and d!845209 (not res!1234827)) b!2993857))

(declare-fun m!3349009 () Bool)

(assert (=> b!2993861 m!3349009))

(declare-fun m!3349011 () Bool)

(assert (=> b!2993859 m!3349011))

(declare-fun m!3349013 () Bool)

(assert (=> b!2993859 m!3349013))

(assert (=> b!2993854 m!3349011))

(declare-fun m!3349015 () Bool)

(assert (=> b!2993854 m!3349015))

(assert (=> b!2993853 m!3349011))

(declare-fun m!3349017 () Bool)

(assert (=> b!2993853 m!3349017))

(assert (=> b!2993858 m!3348373))

(declare-fun m!3349019 () Bool)

(assert (=> b!2993858 m!3349019))

(assert (=> b!2993858 m!3349019))

(declare-fun m!3349021 () Bool)

(assert (=> b!2993858 m!3349021))

(assert (=> b!2993858 m!3348373))

(declare-fun m!3349023 () Bool)

(assert (=> b!2993858 m!3349023))

(assert (=> b!2993858 m!3349019))

(declare-fun m!3349025 () Bool)

(assert (=> b!2993858 m!3349025))

(declare-fun m!3349027 () Bool)

(assert (=> b!2993857 m!3349027))

(assert (=> d!845209 m!3349027))

(assert (=> d!845209 m!3348373))

(declare-fun m!3349029 () Bool)

(assert (=> d!845209 m!3349029))

(assert (=> d!845209 m!3348275))

(assert (=> b!2992813 d!845209))

(declare-fun d!845215 () Bool)

(declare-fun lt!1041036 () Int)

(assert (=> d!845215 (>= lt!1041036 0)))

(declare-fun e!1881592 () Int)

(assert (=> d!845215 (= lt!1041036 e!1881592)))

(declare-fun c!492233 () Bool)

(assert (=> d!845215 (= c!492233 ((_ is Nil!35096) (t!234285 s!11993)))))

(assert (=> d!845215 (= (size!26505 (t!234285 s!11993)) lt!1041036)))

(declare-fun b!2993866 () Bool)

(assert (=> b!2993866 (= e!1881592 0)))

(declare-fun b!2993867 () Bool)

(assert (=> b!2993867 (= e!1881592 (+ 1 (size!26505 (t!234285 (t!234285 s!11993)))))))

(assert (= (and d!845215 c!492233) b!2993866))

(assert (= (and d!845215 (not c!492233)) b!2993867))

(declare-fun m!3349031 () Bool)

(assert (=> b!2993867 m!3349031))

(assert (=> b!2993264 d!845215))

(assert (=> b!2993021 d!845023))

(declare-fun d!845217 () Bool)

(assert (=> d!845217 (= (isEmptyLang!447 (ite c!492057 lt!1040965 (ite c!492047 lt!1040967 lt!1040966))) ((_ is EmptyLang!9355) (ite c!492057 lt!1040965 (ite c!492047 lt!1040967 lt!1040966))))))

(assert (=> bm!200349 d!845217))

(declare-fun d!845219 () Bool)

(assert (=> d!845219 (= (Exists!1628 (ite c!491995 lambda!111959 lambda!111960)) (choose!17770 (ite c!491995 lambda!111959 lambda!111960)))))

(declare-fun bs!527982 () Bool)

(assert (= bs!527982 d!845219))

(declare-fun m!3349033 () Bool)

(assert (=> bs!527982 m!3349033))

(assert (=> bm!200313 d!845219))

(declare-fun b!2993868 () Bool)

(declare-fun e!1881596 () Bool)

(declare-fun e!1881599 () Bool)

(assert (=> b!2993868 (= e!1881596 e!1881599)))

(declare-fun c!492234 () Bool)

(assert (=> b!2993868 (= c!492234 ((_ is Union!9355) (ite c!492003 (regOne!19223 r!17423) (regTwo!19222 r!17423))))))

(declare-fun d!845221 () Bool)

(declare-fun res!1234833 () Bool)

(declare-fun e!1881598 () Bool)

(assert (=> d!845221 (=> res!1234833 e!1881598)))

(assert (=> d!845221 (= res!1234833 ((_ is ElementMatch!9355) (ite c!492003 (regOne!19223 r!17423) (regTwo!19222 r!17423))))))

(assert (=> d!845221 (= (validRegex!4088 (ite c!492003 (regOne!19223 r!17423) (regTwo!19222 r!17423))) e!1881598)))

(declare-fun b!2993869 () Bool)

(declare-fun res!1234834 () Bool)

(declare-fun e!1881597 () Bool)

(assert (=> b!2993869 (=> (not res!1234834) (not e!1881597))))

(declare-fun call!200471 () Bool)

(assert (=> b!2993869 (= res!1234834 call!200471)))

(assert (=> b!2993869 (= e!1881599 e!1881597)))

(declare-fun b!2993870 () Bool)

(declare-fun res!1234831 () Bool)

(declare-fun e!1881594 () Bool)

(assert (=> b!2993870 (=> res!1234831 e!1881594)))

(assert (=> b!2993870 (= res!1234831 (not ((_ is Concat!14676) (ite c!492003 (regOne!19223 r!17423) (regTwo!19222 r!17423)))))))

(assert (=> b!2993870 (= e!1881599 e!1881594)))

(declare-fun b!2993871 () Bool)

(declare-fun e!1881593 () Bool)

(assert (=> b!2993871 (= e!1881596 e!1881593)))

(declare-fun res!1234835 () Bool)

(assert (=> b!2993871 (= res!1234835 (not (nullable!3020 (reg!9684 (ite c!492003 (regOne!19223 r!17423) (regTwo!19222 r!17423))))))))

(assert (=> b!2993871 (=> (not res!1234835) (not e!1881593))))

(declare-fun b!2993872 () Bool)

(assert (=> b!2993872 (= e!1881598 e!1881596)))

(declare-fun c!492235 () Bool)

(assert (=> b!2993872 (= c!492235 ((_ is Star!9355) (ite c!492003 (regOne!19223 r!17423) (regTwo!19222 r!17423))))))

(declare-fun bm!200464 () Bool)

(declare-fun call!200470 () Bool)

(declare-fun call!200469 () Bool)

(assert (=> bm!200464 (= call!200470 call!200469)))

(declare-fun b!2993873 () Bool)

(assert (=> b!2993873 (= e!1881597 call!200470)))

(declare-fun bm!200465 () Bool)

(assert (=> bm!200465 (= call!200469 (validRegex!4088 (ite c!492235 (reg!9684 (ite c!492003 (regOne!19223 r!17423) (regTwo!19222 r!17423))) (ite c!492234 (regTwo!19223 (ite c!492003 (regOne!19223 r!17423) (regTwo!19222 r!17423))) (regOne!19222 (ite c!492003 (regOne!19223 r!17423) (regTwo!19222 r!17423)))))))))

(declare-fun bm!200466 () Bool)

(assert (=> bm!200466 (= call!200471 (validRegex!4088 (ite c!492234 (regOne!19223 (ite c!492003 (regOne!19223 r!17423) (regTwo!19222 r!17423))) (regTwo!19222 (ite c!492003 (regOne!19223 r!17423) (regTwo!19222 r!17423))))))))

(declare-fun b!2993874 () Bool)

(declare-fun e!1881595 () Bool)

(assert (=> b!2993874 (= e!1881595 call!200471)))

(declare-fun b!2993875 () Bool)

(assert (=> b!2993875 (= e!1881593 call!200469)))

(declare-fun b!2993876 () Bool)

(assert (=> b!2993876 (= e!1881594 e!1881595)))

(declare-fun res!1234832 () Bool)

(assert (=> b!2993876 (=> (not res!1234832) (not e!1881595))))

(assert (=> b!2993876 (= res!1234832 call!200470)))

(assert (= (and d!845221 (not res!1234833)) b!2993872))

(assert (= (and b!2993872 c!492235) b!2993871))

(assert (= (and b!2993872 (not c!492235)) b!2993868))

(assert (= (and b!2993871 res!1234835) b!2993875))

(assert (= (and b!2993868 c!492234) b!2993869))

(assert (= (and b!2993868 (not c!492234)) b!2993870))

(assert (= (and b!2993869 res!1234834) b!2993873))

(assert (= (and b!2993870 (not res!1234831)) b!2993876))

(assert (= (and b!2993876 res!1234832) b!2993874))

(assert (= (or b!2993869 b!2993874) bm!200466))

(assert (= (or b!2993873 b!2993876) bm!200464))

(assert (= (or b!2993875 bm!200464) bm!200465))

(declare-fun m!3349035 () Bool)

(assert (=> b!2993871 m!3349035))

(declare-fun m!3349037 () Bool)

(assert (=> bm!200465 m!3349037))

(declare-fun m!3349039 () Bool)

(assert (=> bm!200466 m!3349039))

(assert (=> bm!200324 d!845221))

(declare-fun b!2993877 () Bool)

(declare-fun res!1234841 () Bool)

(declare-fun e!1881606 () Bool)

(assert (=> b!2993877 (=> (not res!1234841) (not e!1881606))))

(assert (=> b!2993877 (= res!1234841 (isEmpty!19368 (tail!4903 (_1!20146 (get!10891 lt!1040914)))))))

(declare-fun b!2993878 () Bool)

(declare-fun e!1881605 () Bool)

(assert (=> b!2993878 (= e!1881605 (matchR!4237 (derivativeStep!2618 (reg!9684 r!17423) (head!6677 (_1!20146 (get!10891 lt!1040914)))) (tail!4903 (_1!20146 (get!10891 lt!1040914)))))))

(declare-fun b!2993879 () Bool)

(declare-fun e!1881600 () Bool)

(declare-fun e!1881604 () Bool)

(assert (=> b!2993879 (= e!1881600 e!1881604)))

(declare-fun c!492238 () Bool)

(assert (=> b!2993879 (= c!492238 ((_ is EmptyLang!9355) (reg!9684 r!17423)))))

(declare-fun b!2993880 () Bool)

(declare-fun res!1234839 () Bool)

(declare-fun e!1881601 () Bool)

(assert (=> b!2993880 (=> res!1234839 e!1881601)))

(assert (=> b!2993880 (= res!1234839 (not ((_ is ElementMatch!9355) (reg!9684 r!17423))))))

(assert (=> b!2993880 (= e!1881604 e!1881601)))

(declare-fun b!2993881 () Bool)

(declare-fun e!1881603 () Bool)

(assert (=> b!2993881 (= e!1881603 (not (= (head!6677 (_1!20146 (get!10891 lt!1040914))) (c!491875 (reg!9684 r!17423)))))))

(declare-fun b!2993882 () Bool)

(assert (=> b!2993882 (= e!1881606 (= (head!6677 (_1!20146 (get!10891 lt!1040914))) (c!491875 (reg!9684 r!17423))))))

(declare-fun b!2993883 () Bool)

(assert (=> b!2993883 (= e!1881605 (nullable!3020 (reg!9684 r!17423)))))

(declare-fun b!2993884 () Bool)

(declare-fun res!1234842 () Bool)

(assert (=> b!2993884 (=> (not res!1234842) (not e!1881606))))

(declare-fun call!200472 () Bool)

(assert (=> b!2993884 (= res!1234842 (not call!200472))))

(declare-fun b!2993885 () Bool)

(declare-fun res!1234838 () Bool)

(assert (=> b!2993885 (=> res!1234838 e!1881601)))

(assert (=> b!2993885 (= res!1234838 e!1881606)))

(declare-fun res!1234837 () Bool)

(assert (=> b!2993885 (=> (not res!1234837) (not e!1881606))))

(declare-fun lt!1041037 () Bool)

(assert (=> b!2993885 (= res!1234837 lt!1041037)))

(declare-fun bm!200467 () Bool)

(assert (=> bm!200467 (= call!200472 (isEmpty!19368 (_1!20146 (get!10891 lt!1040914))))))

(declare-fun b!2993886 () Bool)

(assert (=> b!2993886 (= e!1881604 (not lt!1041037))))

(declare-fun b!2993887 () Bool)

(declare-fun res!1234840 () Bool)

(assert (=> b!2993887 (=> res!1234840 e!1881603)))

(assert (=> b!2993887 (= res!1234840 (not (isEmpty!19368 (tail!4903 (_1!20146 (get!10891 lt!1040914))))))))

(declare-fun b!2993888 () Bool)

(declare-fun e!1881602 () Bool)

(assert (=> b!2993888 (= e!1881602 e!1881603)))

(declare-fun res!1234843 () Bool)

(assert (=> b!2993888 (=> res!1234843 e!1881603)))

(assert (=> b!2993888 (= res!1234843 call!200472)))

(declare-fun b!2993889 () Bool)

(assert (=> b!2993889 (= e!1881601 e!1881602)))

(declare-fun res!1234836 () Bool)

(assert (=> b!2993889 (=> (not res!1234836) (not e!1881602))))

(assert (=> b!2993889 (= res!1234836 (not lt!1041037))))

(declare-fun d!845223 () Bool)

(assert (=> d!845223 e!1881600))

(declare-fun c!492237 () Bool)

(assert (=> d!845223 (= c!492237 ((_ is EmptyExpr!9355) (reg!9684 r!17423)))))

(assert (=> d!845223 (= lt!1041037 e!1881605)))

(declare-fun c!492236 () Bool)

(assert (=> d!845223 (= c!492236 (isEmpty!19368 (_1!20146 (get!10891 lt!1040914))))))

(assert (=> d!845223 (validRegex!4088 (reg!9684 r!17423))))

(assert (=> d!845223 (= (matchR!4237 (reg!9684 r!17423) (_1!20146 (get!10891 lt!1040914))) lt!1041037)))

(declare-fun b!2993890 () Bool)

(assert (=> b!2993890 (= e!1881600 (= lt!1041037 call!200472))))

(assert (= (and d!845223 c!492236) b!2993883))

(assert (= (and d!845223 (not c!492236)) b!2993878))

(assert (= (and d!845223 c!492237) b!2993890))

(assert (= (and d!845223 (not c!492237)) b!2993879))

(assert (= (and b!2993879 c!492238) b!2993886))

(assert (= (and b!2993879 (not c!492238)) b!2993880))

(assert (= (and b!2993880 (not res!1234839)) b!2993885))

(assert (= (and b!2993885 res!1234837) b!2993884))

(assert (= (and b!2993884 res!1234842) b!2993877))

(assert (= (and b!2993877 res!1234841) b!2993882))

(assert (= (and b!2993885 (not res!1234838)) b!2993889))

(assert (= (and b!2993889 res!1234836) b!2993888))

(assert (= (and b!2993888 (not res!1234843)) b!2993887))

(assert (= (and b!2993887 (not res!1234840)) b!2993881))

(assert (= (or b!2993890 b!2993884 b!2993888) bm!200467))

(declare-fun m!3349041 () Bool)

(assert (=> bm!200467 m!3349041))

(assert (=> b!2993883 m!3348475))

(declare-fun m!3349043 () Bool)

(assert (=> b!2993878 m!3349043))

(assert (=> b!2993878 m!3349043))

(declare-fun m!3349045 () Bool)

(assert (=> b!2993878 m!3349045))

(declare-fun m!3349047 () Bool)

(assert (=> b!2993878 m!3349047))

(assert (=> b!2993878 m!3349045))

(assert (=> b!2993878 m!3349047))

(declare-fun m!3349049 () Bool)

(assert (=> b!2993878 m!3349049))

(assert (=> b!2993887 m!3349047))

(assert (=> b!2993887 m!3349047))

(declare-fun m!3349051 () Bool)

(assert (=> b!2993887 m!3349051))

(assert (=> b!2993882 m!3349043))

(assert (=> d!845223 m!3349041))

(assert (=> d!845223 m!3348275))

(assert (=> b!2993877 m!3349047))

(assert (=> b!2993877 m!3349047))

(assert (=> b!2993877 m!3349051))

(assert (=> b!2993881 m!3349043))

(assert (=> b!2992805 d!845223))

(assert (=> b!2992805 d!845087))

(assert (=> b!2993120 d!845017))

(declare-fun d!845225 () Bool)

(assert (=> d!845225 (= (nullable!3020 lt!1040854) (nullableFct!858 lt!1040854))))

(declare-fun bs!527984 () Bool)

(assert (= bs!527984 d!845225))

(declare-fun m!3349053 () Bool)

(assert (=> bs!527984 m!3349053))

(assert (=> b!2993023 d!845225))

(declare-fun d!845227 () Bool)

(assert (=> d!845227 (= (isEmptyLang!447 (ite c!492047 lt!1040968 lt!1040964)) ((_ is EmptyLang!9355) (ite c!492047 lt!1040968 lt!1040964)))))

(assert (=> bm!200350 d!845227))

(assert (=> bm!200315 d!844979))

(assert (=> b!2993017 d!845191))

(assert (=> b!2993017 d!845073))

(declare-fun lt!1041041 () Regex!9355)

(declare-fun e!1881615 () Bool)

(declare-fun b!2993891 () Bool)

(assert (=> b!2993891 (= e!1881615 (= (nullable!3020 lt!1041041) (nullable!3020 (ite c!492046 (reg!9684 lt!1040854) (ite c!492036 (regTwo!19223 lt!1040854) (regOne!19222 lt!1040854))))))))

(declare-fun b!2993892 () Bool)

(declare-fun e!1881613 () Regex!9355)

(declare-fun e!1881614 () Regex!9355)

(assert (=> b!2993892 (= e!1881613 e!1881614)))

(declare-fun c!492242 () Bool)

(assert (=> b!2993892 (= c!492242 ((_ is ElementMatch!9355) (ite c!492046 (reg!9684 lt!1040854) (ite c!492036 (regTwo!19223 lt!1040854) (regOne!19222 lt!1040854)))))))

(declare-fun b!2993893 () Bool)

(declare-fun e!1881619 () Regex!9355)

(assert (=> b!2993893 (= e!1881619 EmptyLang!9355)))

(declare-fun lt!1041045 () Regex!9355)

(declare-fun c!492250 () Bool)

(declare-fun c!492239 () Bool)

(declare-fun call!200473 () Bool)

(declare-fun lt!1041043 () Regex!9355)

(declare-fun lt!1041044 () Regex!9355)

(declare-fun bm!200468 () Bool)

(assert (=> bm!200468 (= call!200473 (isEmptyLang!447 (ite c!492250 lt!1041043 (ite c!492239 lt!1041045 lt!1041044))))))

(declare-fun b!2993894 () Bool)

(declare-fun e!1881620 () Bool)

(declare-fun call!200475 () Bool)

(assert (=> b!2993894 (= e!1881620 call!200475)))

(declare-fun b!2993895 () Bool)

(declare-fun e!1881617 () Regex!9355)

(declare-fun e!1881608 () Regex!9355)

(assert (=> b!2993895 (= e!1881617 e!1881608)))

(declare-fun c!492241 () Bool)

(declare-fun call!200478 () Bool)

(assert (=> b!2993895 (= c!492241 call!200478)))

(declare-fun b!2993896 () Bool)

(assert (=> b!2993896 (= c!492239 ((_ is Union!9355) (ite c!492046 (reg!9684 lt!1040854) (ite c!492036 (regTwo!19223 lt!1040854) (regOne!19222 lt!1040854)))))))

(declare-fun e!1881610 () Regex!9355)

(declare-fun e!1881607 () Regex!9355)

(assert (=> b!2993896 (= e!1881610 e!1881607)))

(declare-fun call!200474 () Bool)

(declare-fun bm!200469 () Bool)

(declare-fun lt!1041042 () Regex!9355)

(declare-fun lt!1041046 () Regex!9355)

(assert (=> bm!200469 (= call!200474 (isEmptyLang!447 (ite c!492239 lt!1041046 lt!1041042)))))

(declare-fun b!2993897 () Bool)

(declare-fun e!1881609 () Regex!9355)

(assert (=> b!2993897 (= e!1881609 lt!1041045)))

(declare-fun b!2993899 () Bool)

(assert (=> b!2993899 (= e!1881613 EmptyLang!9355)))

(declare-fun b!2993901 () Bool)

(declare-fun e!1881611 () Regex!9355)

(assert (=> b!2993901 (= e!1881611 (Star!9355 lt!1041043))))

(declare-fun bm!200470 () Bool)

(assert (=> bm!200470 (= call!200475 call!200473)))

(declare-fun bm!200471 () Bool)

(declare-fun call!200479 () Regex!9355)

(assert (=> bm!200471 (= call!200479 (simplify!346 (ite c!492250 (reg!9684 (ite c!492046 (reg!9684 lt!1040854) (ite c!492036 (regTwo!19223 lt!1040854) (regOne!19222 lt!1040854)))) (ite c!492239 (regTwo!19223 (ite c!492046 (reg!9684 lt!1040854) (ite c!492036 (regTwo!19223 lt!1040854) (regOne!19222 lt!1040854)))) (regOne!19222 (ite c!492046 (reg!9684 lt!1040854) (ite c!492036 (regTwo!19223 lt!1040854) (regOne!19222 lt!1040854))))))))))

(declare-fun b!2993905 () Bool)

(declare-fun e!1881612 () Regex!9355)

(assert (=> b!2993905 (= e!1881612 EmptyExpr!9355)))

(declare-fun d!845229 () Bool)

(assert (=> d!845229 e!1881615))

(declare-fun res!1234844 () Bool)

(assert (=> d!845229 (=> (not res!1234844) (not e!1881615))))

(assert (=> d!845229 (= res!1234844 (validRegex!4088 lt!1041041))))

(assert (=> d!845229 (= lt!1041041 e!1881613)))

(declare-fun c!492246 () Bool)

(assert (=> d!845229 (= c!492246 ((_ is EmptyLang!9355) (ite c!492046 (reg!9684 lt!1040854) (ite c!492036 (regTwo!19223 lt!1040854) (regOne!19222 lt!1040854)))))))

(assert (=> d!845229 (validRegex!4088 (ite c!492046 (reg!9684 lt!1040854) (ite c!492036 (regTwo!19223 lt!1040854) (regOne!19222 lt!1040854))))))

(assert (=> d!845229 (= (simplify!346 (ite c!492046 (reg!9684 lt!1040854) (ite c!492036 (regTwo!19223 lt!1040854) (regOne!19222 lt!1040854)))) lt!1041041)))

(declare-fun b!2993907 () Bool)

(declare-fun e!1881616 () Bool)

(assert (=> b!2993907 (= e!1881616 call!200478)))

(declare-fun b!2993909 () Bool)

(assert (=> b!2993909 (= e!1881607 e!1881619)))

(declare-fun call!200477 () Regex!9355)

(assert (=> b!2993909 (= lt!1041042 call!200477)))

(declare-fun call!200476 () Regex!9355)

(assert (=> b!2993909 (= lt!1041044 call!200476)))

(declare-fun res!1234845 () Bool)

(assert (=> b!2993909 (= res!1234845 call!200474)))

(assert (=> b!2993909 (=> res!1234845 e!1881620)))

(declare-fun c!492244 () Bool)

(assert (=> b!2993909 (= c!492244 e!1881620)))

(declare-fun b!2993911 () Bool)

(declare-fun e!1881621 () Regex!9355)

(assert (=> b!2993911 (= e!1881621 lt!1041046)))

(declare-fun b!2993913 () Bool)

(assert (=> b!2993913 (= e!1881617 lt!1041044)))

(declare-fun b!2993914 () Bool)

(declare-fun c!492243 () Bool)

(assert (=> b!2993914 (= c!492243 ((_ is EmptyExpr!9355) (ite c!492046 (reg!9684 lt!1040854) (ite c!492036 (regTwo!19223 lt!1040854) (regOne!19222 lt!1040854)))))))

(assert (=> b!2993914 (= e!1881614 e!1881612)))

(declare-fun b!2993915 () Bool)

(declare-fun c!492249 () Bool)

(assert (=> b!2993915 (= c!492249 e!1881616)))

(declare-fun res!1234846 () Bool)

(assert (=> b!2993915 (=> res!1234846 e!1881616)))

(assert (=> b!2993915 (= res!1234846 call!200473)))

(assert (=> b!2993915 (= lt!1041043 call!200479)))

(assert (=> b!2993915 (= e!1881610 e!1881611)))

(declare-fun b!2993916 () Bool)

(assert (=> b!2993916 (= e!1881607 e!1881609)))

(assert (=> b!2993916 (= lt!1041046 call!200476)))

(assert (=> b!2993916 (= lt!1041045 call!200477)))

(declare-fun c!492240 () Bool)

(assert (=> b!2993916 (= c!492240 call!200474)))

(declare-fun b!2993917 () Bool)

(assert (=> b!2993917 (= e!1881608 (Concat!14676 lt!1041042 lt!1041044))))

(declare-fun bm!200472 () Bool)

(assert (=> bm!200472 (= call!200478 (isEmptyExpr!464 (ite c!492250 lt!1041043 lt!1041044)))))

(declare-fun b!2993918 () Bool)

(declare-fun c!492247 () Bool)

(assert (=> b!2993918 (= c!492247 (isEmptyExpr!464 lt!1041042))))

(assert (=> b!2993918 (= e!1881619 e!1881617)))

(declare-fun b!2993919 () Bool)

(assert (=> b!2993919 (= e!1881612 e!1881610)))

(assert (=> b!2993919 (= c!492250 ((_ is Star!9355) (ite c!492046 (reg!9684 lt!1040854) (ite c!492036 (regTwo!19223 lt!1040854) (regOne!19222 lt!1040854)))))))

(declare-fun b!2993920 () Bool)

(assert (=> b!2993920 (= e!1881611 EmptyExpr!9355)))

(declare-fun b!2993921 () Bool)

(declare-fun c!492245 () Bool)

(assert (=> b!2993921 (= c!492245 call!200475)))

(assert (=> b!2993921 (= e!1881609 e!1881621)))

(declare-fun bm!200473 () Bool)

(assert (=> bm!200473 (= call!200477 call!200479)))

(declare-fun b!2993922 () Bool)

(assert (=> b!2993922 (= e!1881608 lt!1041042)))

(declare-fun b!2993923 () Bool)

(assert (=> b!2993923 (= e!1881614 (ite c!492046 (reg!9684 lt!1040854) (ite c!492036 (regTwo!19223 lt!1040854) (regOne!19222 lt!1040854))))))

(declare-fun b!2993924 () Bool)

(assert (=> b!2993924 (= e!1881621 (Union!9355 lt!1041046 lt!1041045))))

(declare-fun bm!200474 () Bool)

(assert (=> bm!200474 (= call!200476 (simplify!346 (ite c!492239 (regOne!19223 (ite c!492046 (reg!9684 lt!1040854) (ite c!492036 (regTwo!19223 lt!1040854) (regOne!19222 lt!1040854)))) (regTwo!19222 (ite c!492046 (reg!9684 lt!1040854) (ite c!492036 (regTwo!19223 lt!1040854) (regOne!19222 lt!1040854)))))))))

(assert (= (and d!845229 c!492246) b!2993899))

(assert (= (and d!845229 (not c!492246)) b!2993892))

(assert (= (and b!2993892 c!492242) b!2993923))

(assert (= (and b!2993892 (not c!492242)) b!2993914))

(assert (= (and b!2993914 c!492243) b!2993905))

(assert (= (and b!2993914 (not c!492243)) b!2993919))

(assert (= (and b!2993919 c!492250) b!2993915))

(assert (= (and b!2993919 (not c!492250)) b!2993896))

(assert (= (and b!2993915 (not res!1234846)) b!2993907))

(assert (= (and b!2993915 c!492249) b!2993920))

(assert (= (and b!2993915 (not c!492249)) b!2993901))

(assert (= (and b!2993896 c!492239) b!2993916))

(assert (= (and b!2993896 (not c!492239)) b!2993909))

(assert (= (and b!2993916 c!492240) b!2993897))

(assert (= (and b!2993916 (not c!492240)) b!2993921))

(assert (= (and b!2993921 c!492245) b!2993911))

(assert (= (and b!2993921 (not c!492245)) b!2993924))

(assert (= (and b!2993909 (not res!1234845)) b!2993894))

(assert (= (and b!2993909 c!492244) b!2993893))

(assert (= (and b!2993909 (not c!492244)) b!2993918))

(assert (= (and b!2993918 c!492247) b!2993913))

(assert (= (and b!2993918 (not c!492247)) b!2993895))

(assert (= (and b!2993895 c!492241) b!2993922))

(assert (= (and b!2993895 (not c!492241)) b!2993917))

(assert (= (or b!2993916 b!2993909) bm!200474))

(assert (= (or b!2993916 b!2993909) bm!200473))

(assert (= (or b!2993916 b!2993909) bm!200469))

(assert (= (or b!2993921 b!2993894) bm!200470))

(assert (= (or b!2993907 b!2993895) bm!200472))

(assert (= (or b!2993915 bm!200473) bm!200471))

(assert (= (or b!2993915 bm!200470) bm!200468))

(assert (= (and d!845229 res!1234844) b!2993891))

(declare-fun m!3349073 () Bool)

(assert (=> b!2993918 m!3349073))

(declare-fun m!3349075 () Bool)

(assert (=> d!845229 m!3349075))

(declare-fun m!3349077 () Bool)

(assert (=> d!845229 m!3349077))

(declare-fun m!3349081 () Bool)

(assert (=> bm!200472 m!3349081))

(declare-fun m!3349085 () Bool)

(assert (=> bm!200471 m!3349085))

(declare-fun m!3349087 () Bool)

(assert (=> bm!200468 m!3349087))

(declare-fun m!3349089 () Bool)

(assert (=> b!2993891 m!3349089))

(declare-fun m!3349093 () Bool)

(assert (=> b!2993891 m!3349093))

(declare-fun m!3349095 () Bool)

(assert (=> bm!200469 m!3349095))

(declare-fun m!3349099 () Bool)

(assert (=> bm!200474 m!3349099))

(assert (=> bm!200345 d!845229))

(declare-fun b!2993928 () Bool)

(declare-fun e!1881626 () Bool)

(declare-fun lt!1041050 () List!35220)

(assert (=> b!2993928 (= e!1881626 (or (not (= (_2!20146 (get!10891 lt!1040914)) Nil!35096)) (= lt!1041050 (_1!20146 (get!10891 lt!1040914)))))))

(declare-fun d!845235 () Bool)

(assert (=> d!845235 e!1881626))

(declare-fun res!1234852 () Bool)

(assert (=> d!845235 (=> (not res!1234852) (not e!1881626))))

(assert (=> d!845235 (= res!1234852 (= (content!4776 lt!1041050) ((_ map or) (content!4776 (_1!20146 (get!10891 lt!1040914))) (content!4776 (_2!20146 (get!10891 lt!1040914))))))))

(declare-fun e!1881627 () List!35220)

(assert (=> d!845235 (= lt!1041050 e!1881627)))

(declare-fun c!492252 () Bool)

(assert (=> d!845235 (= c!492252 ((_ is Nil!35096) (_1!20146 (get!10891 lt!1040914))))))

(assert (=> d!845235 (= (++!8397 (_1!20146 (get!10891 lt!1040914)) (_2!20146 (get!10891 lt!1040914))) lt!1041050)))

(declare-fun b!2993925 () Bool)

(assert (=> b!2993925 (= e!1881627 (_2!20146 (get!10891 lt!1040914)))))

(declare-fun b!2993926 () Bool)

(assert (=> b!2993926 (= e!1881627 (Cons!35096 (h!40516 (_1!20146 (get!10891 lt!1040914))) (++!8397 (t!234285 (_1!20146 (get!10891 lt!1040914))) (_2!20146 (get!10891 lt!1040914)))))))

(declare-fun b!2993927 () Bool)

(declare-fun res!1234853 () Bool)

(assert (=> b!2993927 (=> (not res!1234853) (not e!1881626))))

(assert (=> b!2993927 (= res!1234853 (= (size!26505 lt!1041050) (+ (size!26505 (_1!20146 (get!10891 lt!1040914))) (size!26505 (_2!20146 (get!10891 lt!1040914))))))))

(assert (= (and d!845235 c!492252) b!2993925))

(assert (= (and d!845235 (not c!492252)) b!2993926))

(assert (= (and d!845235 res!1234852) b!2993927))

(assert (= (and b!2993927 res!1234853) b!2993928))

(declare-fun m!3349103 () Bool)

(assert (=> d!845235 m!3349103))

(declare-fun m!3349105 () Bool)

(assert (=> d!845235 m!3349105))

(declare-fun m!3349107 () Bool)

(assert (=> d!845235 m!3349107))

(declare-fun m!3349109 () Bool)

(assert (=> b!2993926 m!3349109))

(declare-fun m!3349111 () Bool)

(assert (=> b!2993927 m!3349111))

(declare-fun m!3349113 () Bool)

(assert (=> b!2993927 m!3349113))

(declare-fun m!3349115 () Bool)

(assert (=> b!2993927 m!3349115))

(assert (=> b!2992803 d!845235))

(assert (=> b!2992803 d!845087))

(declare-fun d!845241 () Bool)

(assert (=> d!845241 (= (isEmptyExpr!464 (ite c!492057 lt!1040965 lt!1040966)) ((_ is EmptyExpr!9355) (ite c!492057 lt!1040965 lt!1040966)))))

(assert (=> bm!200353 d!845241))

(assert (=> b!2993084 d!845181))

(assert (=> b!2993084 d!845183))

(declare-fun b!2993938 () Bool)

(declare-fun res!1234864 () Bool)

(declare-fun e!1881641 () Bool)

(assert (=> b!2993938 (=> (not res!1234864) (not e!1881641))))

(assert (=> b!2993938 (= res!1234864 (isEmpty!19368 (tail!4903 (tail!4903 (_1!20146 lt!1040855)))))))

(declare-fun b!2993939 () Bool)

(declare-fun e!1881640 () Bool)

(assert (=> b!2993939 (= e!1881640 (matchR!4237 (derivativeStep!2618 (derivativeStep!2618 (reg!9684 r!17423) (head!6677 (_1!20146 lt!1040855))) (head!6677 (tail!4903 (_1!20146 lt!1040855)))) (tail!4903 (tail!4903 (_1!20146 lt!1040855)))))))

(declare-fun b!2993940 () Bool)

(declare-fun e!1881635 () Bool)

(declare-fun e!1881639 () Bool)

(assert (=> b!2993940 (= e!1881635 e!1881639)))

(declare-fun c!492257 () Bool)

(assert (=> b!2993940 (= c!492257 ((_ is EmptyLang!9355) (derivativeStep!2618 (reg!9684 r!17423) (head!6677 (_1!20146 lt!1040855)))))))

(declare-fun b!2993941 () Bool)

(declare-fun res!1234862 () Bool)

(declare-fun e!1881636 () Bool)

(assert (=> b!2993941 (=> res!1234862 e!1881636)))

(assert (=> b!2993941 (= res!1234862 (not ((_ is ElementMatch!9355) (derivativeStep!2618 (reg!9684 r!17423) (head!6677 (_1!20146 lt!1040855))))))))

(assert (=> b!2993941 (= e!1881639 e!1881636)))

(declare-fun b!2993942 () Bool)

(declare-fun e!1881638 () Bool)

(assert (=> b!2993942 (= e!1881638 (not (= (head!6677 (tail!4903 (_1!20146 lt!1040855))) (c!491875 (derivativeStep!2618 (reg!9684 r!17423) (head!6677 (_1!20146 lt!1040855)))))))))

(declare-fun b!2993943 () Bool)

(assert (=> b!2993943 (= e!1881641 (= (head!6677 (tail!4903 (_1!20146 lt!1040855))) (c!491875 (derivativeStep!2618 (reg!9684 r!17423) (head!6677 (_1!20146 lt!1040855))))))))

(declare-fun b!2993944 () Bool)

(assert (=> b!2993944 (= e!1881640 (nullable!3020 (derivativeStep!2618 (reg!9684 r!17423) (head!6677 (_1!20146 lt!1040855)))))))

(declare-fun b!2993945 () Bool)

(declare-fun res!1234865 () Bool)

(assert (=> b!2993945 (=> (not res!1234865) (not e!1881641))))

(declare-fun call!200483 () Bool)

(assert (=> b!2993945 (= res!1234865 (not call!200483))))

(declare-fun b!2993946 () Bool)

(declare-fun res!1234861 () Bool)

(assert (=> b!2993946 (=> res!1234861 e!1881636)))

(assert (=> b!2993946 (= res!1234861 e!1881641)))

(declare-fun res!1234860 () Bool)

(assert (=> b!2993946 (=> (not res!1234860) (not e!1881641))))

(declare-fun lt!1041051 () Bool)

(assert (=> b!2993946 (= res!1234860 lt!1041051)))

(declare-fun bm!200478 () Bool)

(assert (=> bm!200478 (= call!200483 (isEmpty!19368 (tail!4903 (_1!20146 lt!1040855))))))

(declare-fun b!2993947 () Bool)

(assert (=> b!2993947 (= e!1881639 (not lt!1041051))))

(declare-fun b!2993948 () Bool)

(declare-fun res!1234863 () Bool)

(assert (=> b!2993948 (=> res!1234863 e!1881638)))

(assert (=> b!2993948 (= res!1234863 (not (isEmpty!19368 (tail!4903 (tail!4903 (_1!20146 lt!1040855))))))))

(declare-fun b!2993949 () Bool)

(declare-fun e!1881637 () Bool)

(assert (=> b!2993949 (= e!1881637 e!1881638)))

(declare-fun res!1234866 () Bool)

(assert (=> b!2993949 (=> res!1234866 e!1881638)))

(assert (=> b!2993949 (= res!1234866 call!200483)))

(declare-fun b!2993950 () Bool)

(assert (=> b!2993950 (= e!1881636 e!1881637)))

(declare-fun res!1234859 () Bool)

(assert (=> b!2993950 (=> (not res!1234859) (not e!1881637))))

(assert (=> b!2993950 (= res!1234859 (not lt!1041051))))

(declare-fun d!845243 () Bool)

(assert (=> d!845243 e!1881635))

(declare-fun c!492256 () Bool)

(assert (=> d!845243 (= c!492256 ((_ is EmptyExpr!9355) (derivativeStep!2618 (reg!9684 r!17423) (head!6677 (_1!20146 lt!1040855)))))))

(assert (=> d!845243 (= lt!1041051 e!1881640)))

(declare-fun c!492255 () Bool)

(assert (=> d!845243 (= c!492255 (isEmpty!19368 (tail!4903 (_1!20146 lt!1040855))))))

(assert (=> d!845243 (validRegex!4088 (derivativeStep!2618 (reg!9684 r!17423) (head!6677 (_1!20146 lt!1040855))))))

(assert (=> d!845243 (= (matchR!4237 (derivativeStep!2618 (reg!9684 r!17423) (head!6677 (_1!20146 lt!1040855))) (tail!4903 (_1!20146 lt!1040855))) lt!1041051)))

(declare-fun b!2993951 () Bool)

(assert (=> b!2993951 (= e!1881635 (= lt!1041051 call!200483))))

(assert (= (and d!845243 c!492255) b!2993944))

(assert (= (and d!845243 (not c!492255)) b!2993939))

(assert (= (and d!845243 c!492256) b!2993951))

(assert (= (and d!845243 (not c!492256)) b!2993940))

(assert (= (and b!2993940 c!492257) b!2993947))

(assert (= (and b!2993940 (not c!492257)) b!2993941))

(assert (= (and b!2993941 (not res!1234862)) b!2993946))

(assert (= (and b!2993946 res!1234860) b!2993945))

(assert (= (and b!2993945 res!1234865) b!2993938))

(assert (= (and b!2993938 res!1234864) b!2993943))

(assert (= (and b!2993946 (not res!1234861)) b!2993950))

(assert (= (and b!2993950 res!1234859) b!2993949))

(assert (= (and b!2993949 (not res!1234866)) b!2993948))

(assert (= (and b!2993948 (not res!1234863)) b!2993942))

(assert (= (or b!2993951 b!2993945 b!2993949) bm!200478))

(assert (=> bm!200478 m!3348487))

(assert (=> bm!200478 m!3348491))

(assert (=> b!2993944 m!3348485))

(declare-fun m!3349125 () Bool)

(assert (=> b!2993944 m!3349125))

(assert (=> b!2993939 m!3348487))

(assert (=> b!2993939 m!3348871))

(assert (=> b!2993939 m!3348485))

(assert (=> b!2993939 m!3348871))

(declare-fun m!3349127 () Bool)

(assert (=> b!2993939 m!3349127))

(assert (=> b!2993939 m!3348487))

(assert (=> b!2993939 m!3348875))

(assert (=> b!2993939 m!3349127))

(assert (=> b!2993939 m!3348875))

(declare-fun m!3349129 () Bool)

(assert (=> b!2993939 m!3349129))

(assert (=> b!2993948 m!3348487))

(assert (=> b!2993948 m!3348875))

(assert (=> b!2993948 m!3348875))

(assert (=> b!2993948 m!3348879))

(assert (=> b!2993943 m!3348487))

(assert (=> b!2993943 m!3348871))

(assert (=> d!845243 m!3348487))

(assert (=> d!845243 m!3348491))

(assert (=> d!845243 m!3348485))

(declare-fun m!3349131 () Bool)

(assert (=> d!845243 m!3349131))

(assert (=> b!2993938 m!3348487))

(assert (=> b!2993938 m!3348875))

(assert (=> b!2993938 m!3348875))

(assert (=> b!2993938 m!3348879))

(assert (=> b!2993942 m!3348487))

(assert (=> b!2993942 m!3348871))

(assert (=> b!2993116 d!845243))

(declare-fun b!2993952 () Bool)

(declare-fun c!492261 () Bool)

(assert (=> b!2993952 (= c!492261 (nullable!3020 (regOne!19222 (reg!9684 r!17423))))))

(declare-fun e!1881642 () Regex!9355)

(declare-fun e!1881646 () Regex!9355)

(assert (=> b!2993952 (= e!1881642 e!1881646)))

(declare-fun c!492260 () Bool)

(declare-fun bm!200479 () Bool)

(declare-fun call!200486 () Regex!9355)

(assert (=> bm!200479 (= call!200486 (derivativeStep!2618 (ite c!492260 (regTwo!19223 (reg!9684 r!17423)) (regTwo!19222 (reg!9684 r!17423))) (head!6677 (_1!20146 lt!1040855))))))

(declare-fun b!2993955 () Bool)

(declare-fun e!1881645 () Regex!9355)

(assert (=> b!2993955 (= e!1881645 e!1881642)))

(declare-fun c!492258 () Bool)

(assert (=> b!2993955 (= c!492258 ((_ is Star!9355) (reg!9684 r!17423)))))

(declare-fun b!2993956 () Bool)

(declare-fun call!200484 () Regex!9355)

(assert (=> b!2993956 (= e!1881645 (Union!9355 call!200484 call!200486))))

(declare-fun bm!200480 () Bool)

(declare-fun call!200487 () Regex!9355)

(declare-fun call!200485 () Regex!9355)

(assert (=> bm!200480 (= call!200487 call!200485)))

(declare-fun d!845251 () Bool)

(declare-fun lt!1041053 () Regex!9355)

(assert (=> d!845251 (validRegex!4088 lt!1041053)))

(declare-fun e!1881644 () Regex!9355)

(assert (=> d!845251 (= lt!1041053 e!1881644)))

(declare-fun c!492259 () Bool)

(assert (=> d!845251 (= c!492259 (or ((_ is EmptyExpr!9355) (reg!9684 r!17423)) ((_ is EmptyLang!9355) (reg!9684 r!17423))))))

(assert (=> d!845251 (validRegex!4088 (reg!9684 r!17423))))

(assert (=> d!845251 (= (derivativeStep!2618 (reg!9684 r!17423) (head!6677 (_1!20146 lt!1040855))) lt!1041053)))

(declare-fun b!2993957 () Bool)

(assert (=> b!2993957 (= e!1881644 EmptyLang!9355)))

(declare-fun b!2993958 () Bool)

(assert (=> b!2993958 (= e!1881646 (Union!9355 (Concat!14676 call!200487 (regTwo!19222 (reg!9684 r!17423))) EmptyLang!9355))))

(declare-fun b!2993959 () Bool)

(declare-fun e!1881643 () Regex!9355)

(assert (=> b!2993959 (= e!1881643 (ite (= (head!6677 (_1!20146 lt!1040855)) (c!491875 (reg!9684 r!17423))) EmptyExpr!9355 EmptyLang!9355))))

(declare-fun b!2993960 () Bool)

(assert (=> b!2993960 (= e!1881644 e!1881643)))

(declare-fun c!492262 () Bool)

(assert (=> b!2993960 (= c!492262 ((_ is ElementMatch!9355) (reg!9684 r!17423)))))

(declare-fun bm!200481 () Bool)

(assert (=> bm!200481 (= call!200485 call!200484)))

(declare-fun b!2993961 () Bool)

(assert (=> b!2993961 (= e!1881646 (Union!9355 (Concat!14676 call!200487 (regTwo!19222 (reg!9684 r!17423))) call!200486))))

(declare-fun b!2993962 () Bool)

(assert (=> b!2993962 (= e!1881642 (Concat!14676 call!200485 (reg!9684 r!17423)))))

(declare-fun bm!200482 () Bool)

(assert (=> bm!200482 (= call!200484 (derivativeStep!2618 (ite c!492260 (regOne!19223 (reg!9684 r!17423)) (ite c!492258 (reg!9684 (reg!9684 r!17423)) (regOne!19222 (reg!9684 r!17423)))) (head!6677 (_1!20146 lt!1040855))))))

(declare-fun b!2993963 () Bool)

(assert (=> b!2993963 (= c!492260 ((_ is Union!9355) (reg!9684 r!17423)))))

(assert (=> b!2993963 (= e!1881643 e!1881645)))

(assert (= (and d!845251 c!492259) b!2993957))

(assert (= (and d!845251 (not c!492259)) b!2993960))

(assert (= (and b!2993960 c!492262) b!2993959))

(assert (= (and b!2993960 (not c!492262)) b!2993963))

(assert (= (and b!2993963 c!492260) b!2993956))

(assert (= (and b!2993963 (not c!492260)) b!2993955))

(assert (= (and b!2993955 c!492258) b!2993962))

(assert (= (and b!2993955 (not c!492258)) b!2993952))

(assert (= (and b!2993952 c!492261) b!2993961))

(assert (= (and b!2993952 (not c!492261)) b!2993958))

(assert (= (or b!2993961 b!2993958) bm!200480))

(assert (= (or b!2993962 bm!200480) bm!200481))

(assert (= (or b!2993956 b!2993961) bm!200479))

(assert (= (or b!2993956 bm!200481) bm!200482))

(declare-fun m!3349137 () Bool)

(assert (=> b!2993952 m!3349137))

(assert (=> bm!200479 m!3348483))

(declare-fun m!3349139 () Bool)

(assert (=> bm!200479 m!3349139))

(declare-fun m!3349141 () Bool)

(assert (=> d!845251 m!3349141))

(assert (=> d!845251 m!3348275))

(assert (=> bm!200482 m!3348483))

(declare-fun m!3349143 () Bool)

(assert (=> bm!200482 m!3349143))

(assert (=> b!2993116 d!845251))

(assert (=> b!2993116 d!845017))

(assert (=> b!2993116 d!845061))

(assert (=> bm!200327 d!845025))

(assert (=> b!2993153 d!845191))

(assert (=> b!2993153 d!845073))

(assert (=> b!2993133 d!845017))

(declare-fun b!2993978 () Bool)

(declare-fun res!1234883 () Bool)

(declare-fun e!1881661 () Bool)

(assert (=> b!2993978 (=> (not res!1234883) (not e!1881661))))

(assert (=> b!2993978 (= res!1234883 (isEmpty!19368 (tail!4903 (tail!4903 (_2!20146 lt!1040855)))))))

(declare-fun b!2993979 () Bool)

(declare-fun e!1881660 () Bool)

(assert (=> b!2993979 (= e!1881660 (matchR!4237 (derivativeStep!2618 (derivativeStep!2618 lt!1040852 (head!6677 (_2!20146 lt!1040855))) (head!6677 (tail!4903 (_2!20146 lt!1040855)))) (tail!4903 (tail!4903 (_2!20146 lt!1040855)))))))

(declare-fun b!2993980 () Bool)

(declare-fun e!1881655 () Bool)

(declare-fun e!1881659 () Bool)

(assert (=> b!2993980 (= e!1881655 e!1881659)))

(declare-fun c!492269 () Bool)

(assert (=> b!2993980 (= c!492269 ((_ is EmptyLang!9355) (derivativeStep!2618 lt!1040852 (head!6677 (_2!20146 lt!1040855)))))))

(declare-fun b!2993981 () Bool)

(declare-fun res!1234881 () Bool)

(declare-fun e!1881656 () Bool)

(assert (=> b!2993981 (=> res!1234881 e!1881656)))

(assert (=> b!2993981 (= res!1234881 (not ((_ is ElementMatch!9355) (derivativeStep!2618 lt!1040852 (head!6677 (_2!20146 lt!1040855))))))))

(assert (=> b!2993981 (= e!1881659 e!1881656)))

(declare-fun b!2993982 () Bool)

(declare-fun e!1881658 () Bool)

(assert (=> b!2993982 (= e!1881658 (not (= (head!6677 (tail!4903 (_2!20146 lt!1040855))) (c!491875 (derivativeStep!2618 lt!1040852 (head!6677 (_2!20146 lt!1040855)))))))))

(declare-fun b!2993983 () Bool)

(assert (=> b!2993983 (= e!1881661 (= (head!6677 (tail!4903 (_2!20146 lt!1040855))) (c!491875 (derivativeStep!2618 lt!1040852 (head!6677 (_2!20146 lt!1040855))))))))

(declare-fun b!2993984 () Bool)

(assert (=> b!2993984 (= e!1881660 (nullable!3020 (derivativeStep!2618 lt!1040852 (head!6677 (_2!20146 lt!1040855)))))))

(declare-fun b!2993985 () Bool)

(declare-fun res!1234884 () Bool)

(assert (=> b!2993985 (=> (not res!1234884) (not e!1881661))))

(declare-fun call!200489 () Bool)

(assert (=> b!2993985 (= res!1234884 (not call!200489))))

(declare-fun b!2993986 () Bool)

(declare-fun res!1234880 () Bool)

(assert (=> b!2993986 (=> res!1234880 e!1881656)))

(assert (=> b!2993986 (= res!1234880 e!1881661)))

(declare-fun res!1234879 () Bool)

(assert (=> b!2993986 (=> (not res!1234879) (not e!1881661))))

(declare-fun lt!1041055 () Bool)

(assert (=> b!2993986 (= res!1234879 lt!1041055)))

(declare-fun bm!200484 () Bool)

(assert (=> bm!200484 (= call!200489 (isEmpty!19368 (tail!4903 (_2!20146 lt!1040855))))))

(declare-fun b!2993987 () Bool)

(assert (=> b!2993987 (= e!1881659 (not lt!1041055))))

(declare-fun b!2993988 () Bool)

(declare-fun res!1234882 () Bool)

(assert (=> b!2993988 (=> res!1234882 e!1881658)))

(assert (=> b!2993988 (= res!1234882 (not (isEmpty!19368 (tail!4903 (tail!4903 (_2!20146 lt!1040855))))))))

(declare-fun b!2993989 () Bool)

(declare-fun e!1881657 () Bool)

(assert (=> b!2993989 (= e!1881657 e!1881658)))

(declare-fun res!1234885 () Bool)

(assert (=> b!2993989 (=> res!1234885 e!1881658)))

(assert (=> b!2993989 (= res!1234885 call!200489)))

(declare-fun b!2993990 () Bool)

(assert (=> b!2993990 (= e!1881656 e!1881657)))

(declare-fun res!1234878 () Bool)

(assert (=> b!2993990 (=> (not res!1234878) (not e!1881657))))

(assert (=> b!2993990 (= res!1234878 (not lt!1041055))))

(declare-fun d!845259 () Bool)

(assert (=> d!845259 e!1881655))

(declare-fun c!492268 () Bool)

(assert (=> d!845259 (= c!492268 ((_ is EmptyExpr!9355) (derivativeStep!2618 lt!1040852 (head!6677 (_2!20146 lt!1040855)))))))

(assert (=> d!845259 (= lt!1041055 e!1881660)))

(declare-fun c!492267 () Bool)

(assert (=> d!845259 (= c!492267 (isEmpty!19368 (tail!4903 (_2!20146 lt!1040855))))))

(assert (=> d!845259 (validRegex!4088 (derivativeStep!2618 lt!1040852 (head!6677 (_2!20146 lt!1040855))))))

(assert (=> d!845259 (= (matchR!4237 (derivativeStep!2618 lt!1040852 (head!6677 (_2!20146 lt!1040855))) (tail!4903 (_2!20146 lt!1040855))) lt!1041055)))

(declare-fun b!2993991 () Bool)

(assert (=> b!2993991 (= e!1881655 (= lt!1041055 call!200489))))

(assert (= (and d!845259 c!492267) b!2993984))

(assert (= (and d!845259 (not c!492267)) b!2993979))

(assert (= (and d!845259 c!492268) b!2993991))

(assert (= (and d!845259 (not c!492268)) b!2993980))

(assert (= (and b!2993980 c!492269) b!2993987))

(assert (= (and b!2993980 (not c!492269)) b!2993981))

(assert (= (and b!2993981 (not res!1234881)) b!2993986))

(assert (= (and b!2993986 res!1234879) b!2993985))

(assert (= (and b!2993985 res!1234884) b!2993978))

(assert (= (and b!2993978 res!1234883) b!2993983))

(assert (= (and b!2993986 (not res!1234880)) b!2993990))

(assert (= (and b!2993990 res!1234878) b!2993989))

(assert (= (and b!2993989 (not res!1234885)) b!2993988))

(assert (= (and b!2993988 (not res!1234882)) b!2993982))

(assert (= (or b!2993991 b!2993985 b!2993989) bm!200484))

(assert (=> bm!200484 m!3348447))

(assert (=> bm!200484 m!3348451))

(assert (=> b!2993984 m!3348503))

(declare-fun m!3349151 () Bool)

(assert (=> b!2993984 m!3349151))

(assert (=> b!2993979 m!3348447))

(assert (=> b!2993979 m!3348651))

(assert (=> b!2993979 m!3348503))

(assert (=> b!2993979 m!3348651))

(declare-fun m!3349155 () Bool)

(assert (=> b!2993979 m!3349155))

(assert (=> b!2993979 m!3348447))

(assert (=> b!2993979 m!3348655))

(assert (=> b!2993979 m!3349155))

(assert (=> b!2993979 m!3348655))

(declare-fun m!3349157 () Bool)

(assert (=> b!2993979 m!3349157))

(assert (=> b!2993988 m!3348447))

(assert (=> b!2993988 m!3348655))

(assert (=> b!2993988 m!3348655))

(assert (=> b!2993988 m!3348659))

(assert (=> b!2993983 m!3348447))

(assert (=> b!2993983 m!3348651))

(assert (=> d!845259 m!3348447))

(assert (=> d!845259 m!3348451))

(assert (=> d!845259 m!3348503))

(declare-fun m!3349159 () Bool)

(assert (=> d!845259 m!3349159))

(assert (=> b!2993978 m!3348447))

(assert (=> b!2993978 m!3348655))

(assert (=> b!2993978 m!3348655))

(assert (=> b!2993978 m!3348659))

(assert (=> b!2993982 m!3348447))

(assert (=> b!2993982 m!3348651))

(assert (=> b!2993144 d!845259))

(declare-fun b!2994002 () Bool)

(declare-fun c!492278 () Bool)

(assert (=> b!2994002 (= c!492278 (nullable!3020 (regOne!19222 lt!1040852)))))

(declare-fun e!1881667 () Regex!9355)

(declare-fun e!1881671 () Regex!9355)

(assert (=> b!2994002 (= e!1881667 e!1881671)))

(declare-fun c!492277 () Bool)

(declare-fun call!200496 () Regex!9355)

(declare-fun bm!200489 () Bool)

(assert (=> bm!200489 (= call!200496 (derivativeStep!2618 (ite c!492277 (regTwo!19223 lt!1040852) (regTwo!19222 lt!1040852)) (head!6677 (_2!20146 lt!1040855))))))

(declare-fun b!2994003 () Bool)

(declare-fun e!1881670 () Regex!9355)

(assert (=> b!2994003 (= e!1881670 e!1881667)))

(declare-fun c!492275 () Bool)

(assert (=> b!2994003 (= c!492275 ((_ is Star!9355) lt!1040852))))

(declare-fun b!2994004 () Bool)

(declare-fun call!200494 () Regex!9355)

(assert (=> b!2994004 (= e!1881670 (Union!9355 call!200494 call!200496))))

(declare-fun bm!200490 () Bool)

(declare-fun call!200497 () Regex!9355)

(declare-fun call!200495 () Regex!9355)

(assert (=> bm!200490 (= call!200497 call!200495)))

(declare-fun d!845263 () Bool)

(declare-fun lt!1041057 () Regex!9355)

(assert (=> d!845263 (validRegex!4088 lt!1041057)))

(declare-fun e!1881669 () Regex!9355)

(assert (=> d!845263 (= lt!1041057 e!1881669)))

(declare-fun c!492276 () Bool)

(assert (=> d!845263 (= c!492276 (or ((_ is EmptyExpr!9355) lt!1040852) ((_ is EmptyLang!9355) lt!1040852)))))

(assert (=> d!845263 (validRegex!4088 lt!1040852)))

(assert (=> d!845263 (= (derivativeStep!2618 lt!1040852 (head!6677 (_2!20146 lt!1040855))) lt!1041057)))

(declare-fun b!2994005 () Bool)

(assert (=> b!2994005 (= e!1881669 EmptyLang!9355)))

(declare-fun b!2994006 () Bool)

(assert (=> b!2994006 (= e!1881671 (Union!9355 (Concat!14676 call!200497 (regTwo!19222 lt!1040852)) EmptyLang!9355))))

(declare-fun b!2994007 () Bool)

(declare-fun e!1881668 () Regex!9355)

(assert (=> b!2994007 (= e!1881668 (ite (= (head!6677 (_2!20146 lt!1040855)) (c!491875 lt!1040852)) EmptyExpr!9355 EmptyLang!9355))))

(declare-fun b!2994008 () Bool)

(assert (=> b!2994008 (= e!1881669 e!1881668)))

(declare-fun c!492279 () Bool)

(assert (=> b!2994008 (= c!492279 ((_ is ElementMatch!9355) lt!1040852))))

(declare-fun bm!200491 () Bool)

(assert (=> bm!200491 (= call!200495 call!200494)))

(declare-fun b!2994009 () Bool)

(assert (=> b!2994009 (= e!1881671 (Union!9355 (Concat!14676 call!200497 (regTwo!19222 lt!1040852)) call!200496))))

(declare-fun b!2994010 () Bool)

(assert (=> b!2994010 (= e!1881667 (Concat!14676 call!200495 lt!1040852))))

(declare-fun bm!200492 () Bool)

(assert (=> bm!200492 (= call!200494 (derivativeStep!2618 (ite c!492277 (regOne!19223 lt!1040852) (ite c!492275 (reg!9684 lt!1040852) (regOne!19222 lt!1040852))) (head!6677 (_2!20146 lt!1040855))))))

(declare-fun b!2994011 () Bool)

(assert (=> b!2994011 (= c!492277 ((_ is Union!9355) lt!1040852))))

(assert (=> b!2994011 (= e!1881668 e!1881670)))

(assert (= (and d!845263 c!492276) b!2994005))

(assert (= (and d!845263 (not c!492276)) b!2994008))

(assert (= (and b!2994008 c!492279) b!2994007))

(assert (= (and b!2994008 (not c!492279)) b!2994011))

(assert (= (and b!2994011 c!492277) b!2994004))

(assert (= (and b!2994011 (not c!492277)) b!2994003))

(assert (= (and b!2994003 c!492275) b!2994010))

(assert (= (and b!2994003 (not c!492275)) b!2994002))

(assert (= (and b!2994002 c!492278) b!2994009))

(assert (= (and b!2994002 (not c!492278)) b!2994006))

(assert (= (or b!2994009 b!2994006) bm!200490))

(assert (= (or b!2994010 bm!200490) bm!200491))

(assert (= (or b!2994004 b!2994009) bm!200489))

(assert (= (or b!2994004 bm!200491) bm!200492))

(declare-fun m!3349169 () Bool)

(assert (=> b!2994002 m!3349169))

(assert (=> bm!200489 m!3348443))

(declare-fun m!3349171 () Bool)

(assert (=> bm!200489 m!3349171))

(declare-fun m!3349173 () Bool)

(assert (=> d!845263 m!3349173))

(assert (=> d!845263 m!3348507))

(assert (=> bm!200492 m!3348443))

(declare-fun m!3349175 () Bool)

(assert (=> bm!200492 m!3349175))

(assert (=> b!2993144 d!845263))

(assert (=> b!2993144 d!845023))

(assert (=> b!2993144 d!845073))

(assert (=> b!2993079 d!845089))

(declare-fun d!845267 () Bool)

(assert (=> d!845267 (= (nullable!3020 lt!1040846) (nullableFct!858 lt!1040846))))

(declare-fun bs!527988 () Bool)

(assert (= bs!527988 d!845267))

(declare-fun m!3349177 () Bool)

(assert (=> bs!527988 m!3349177))

(assert (=> b!2993135 d!845267))

(assert (=> b!2993148 d!845023))

(declare-fun lt!1041059 () Regex!9355)

(declare-fun b!2994026 () Bool)

(declare-fun e!1881687 () Bool)

(assert (=> b!2994026 (= e!1881687 (= (nullable!3020 lt!1041059) (nullable!3020 (ite c!492036 (regOne!19223 lt!1040854) (regTwo!19222 lt!1040854)))))))

(declare-fun b!2994027 () Bool)

(declare-fun e!1881685 () Regex!9355)

(declare-fun e!1881686 () Regex!9355)

(assert (=> b!2994027 (= e!1881685 e!1881686)))

(declare-fun c!492286 () Bool)

(assert (=> b!2994027 (= c!492286 ((_ is ElementMatch!9355) (ite c!492036 (regOne!19223 lt!1040854) (regTwo!19222 lt!1040854))))))

(declare-fun b!2994028 () Bool)

(declare-fun e!1881690 () Regex!9355)

(assert (=> b!2994028 (= e!1881690 EmptyLang!9355)))

(declare-fun lt!1041062 () Regex!9355)

(declare-fun c!492283 () Bool)

(declare-fun bm!200494 () Bool)

(declare-fun lt!1041061 () Regex!9355)

(declare-fun c!492293 () Bool)

(declare-fun call!200499 () Bool)

(declare-fun lt!1041063 () Regex!9355)

(assert (=> bm!200494 (= call!200499 (isEmptyLang!447 (ite c!492293 lt!1041061 (ite c!492283 lt!1041063 lt!1041062))))))

(declare-fun b!2994029 () Bool)

(declare-fun e!1881691 () Bool)

(declare-fun call!200501 () Bool)

(assert (=> b!2994029 (= e!1881691 call!200501)))

(declare-fun b!2994030 () Bool)

(declare-fun e!1881689 () Regex!9355)

(declare-fun e!1881680 () Regex!9355)

(assert (=> b!2994030 (= e!1881689 e!1881680)))

(declare-fun c!492285 () Bool)

(declare-fun call!200504 () Bool)

(assert (=> b!2994030 (= c!492285 call!200504)))

(declare-fun b!2994031 () Bool)

(assert (=> b!2994031 (= c!492283 ((_ is Union!9355) (ite c!492036 (regOne!19223 lt!1040854) (regTwo!19222 lt!1040854))))))

(declare-fun e!1881682 () Regex!9355)

(declare-fun e!1881679 () Regex!9355)

(assert (=> b!2994031 (= e!1881682 e!1881679)))

(declare-fun call!200500 () Bool)

(declare-fun lt!1041060 () Regex!9355)

(declare-fun lt!1041064 () Regex!9355)

(declare-fun bm!200495 () Bool)

(assert (=> bm!200495 (= call!200500 (isEmptyLang!447 (ite c!492283 lt!1041064 lt!1041060)))))

(declare-fun b!2994032 () Bool)

(declare-fun e!1881681 () Regex!9355)

(assert (=> b!2994032 (= e!1881681 lt!1041063)))

(declare-fun b!2994033 () Bool)

(assert (=> b!2994033 (= e!1881685 EmptyLang!9355)))

(declare-fun b!2994034 () Bool)

(declare-fun e!1881683 () Regex!9355)

(assert (=> b!2994034 (= e!1881683 (Star!9355 lt!1041061))))

(declare-fun bm!200496 () Bool)

(assert (=> bm!200496 (= call!200501 call!200499)))

(declare-fun bm!200497 () Bool)

(declare-fun call!200505 () Regex!9355)

(assert (=> bm!200497 (= call!200505 (simplify!346 (ite c!492293 (reg!9684 (ite c!492036 (regOne!19223 lt!1040854) (regTwo!19222 lt!1040854))) (ite c!492283 (regTwo!19223 (ite c!492036 (regOne!19223 lt!1040854) (regTwo!19222 lt!1040854))) (regOne!19222 (ite c!492036 (regOne!19223 lt!1040854) (regTwo!19222 lt!1040854)))))))))

(declare-fun b!2994035 () Bool)

(declare-fun e!1881684 () Regex!9355)

(assert (=> b!2994035 (= e!1881684 EmptyExpr!9355)))

(declare-fun d!845269 () Bool)

(assert (=> d!845269 e!1881687))

(declare-fun res!1234894 () Bool)

(assert (=> d!845269 (=> (not res!1234894) (not e!1881687))))

(assert (=> d!845269 (= res!1234894 (validRegex!4088 lt!1041059))))

(assert (=> d!845269 (= lt!1041059 e!1881685)))

(declare-fun c!492290 () Bool)

(assert (=> d!845269 (= c!492290 ((_ is EmptyLang!9355) (ite c!492036 (regOne!19223 lt!1040854) (regTwo!19222 lt!1040854))))))

(assert (=> d!845269 (validRegex!4088 (ite c!492036 (regOne!19223 lt!1040854) (regTwo!19222 lt!1040854)))))

(assert (=> d!845269 (= (simplify!346 (ite c!492036 (regOne!19223 lt!1040854) (regTwo!19222 lt!1040854))) lt!1041059)))

(declare-fun b!2994036 () Bool)

(declare-fun e!1881688 () Bool)

(assert (=> b!2994036 (= e!1881688 call!200504)))

(declare-fun b!2994037 () Bool)

(assert (=> b!2994037 (= e!1881679 e!1881690)))

(declare-fun call!200503 () Regex!9355)

(assert (=> b!2994037 (= lt!1041060 call!200503)))

(declare-fun call!200502 () Regex!9355)

(assert (=> b!2994037 (= lt!1041062 call!200502)))

(declare-fun res!1234895 () Bool)

(assert (=> b!2994037 (= res!1234895 call!200500)))

(assert (=> b!2994037 (=> res!1234895 e!1881691)))

(declare-fun c!492288 () Bool)

(assert (=> b!2994037 (= c!492288 e!1881691)))

(declare-fun b!2994038 () Bool)

(declare-fun e!1881692 () Regex!9355)

(assert (=> b!2994038 (= e!1881692 lt!1041064)))

(declare-fun b!2994039 () Bool)

(assert (=> b!2994039 (= e!1881689 lt!1041062)))

(declare-fun b!2994040 () Bool)

(declare-fun c!492287 () Bool)

(assert (=> b!2994040 (= c!492287 ((_ is EmptyExpr!9355) (ite c!492036 (regOne!19223 lt!1040854) (regTwo!19222 lt!1040854))))))

(assert (=> b!2994040 (= e!1881686 e!1881684)))

(declare-fun b!2994041 () Bool)

(declare-fun c!492292 () Bool)

(assert (=> b!2994041 (= c!492292 e!1881688)))

(declare-fun res!1234896 () Bool)

(assert (=> b!2994041 (=> res!1234896 e!1881688)))

(assert (=> b!2994041 (= res!1234896 call!200499)))

(assert (=> b!2994041 (= lt!1041061 call!200505)))

(assert (=> b!2994041 (= e!1881682 e!1881683)))

(declare-fun b!2994042 () Bool)

(assert (=> b!2994042 (= e!1881679 e!1881681)))

(assert (=> b!2994042 (= lt!1041064 call!200502)))

(assert (=> b!2994042 (= lt!1041063 call!200503)))

(declare-fun c!492284 () Bool)

(assert (=> b!2994042 (= c!492284 call!200500)))

(declare-fun b!2994043 () Bool)

(assert (=> b!2994043 (= e!1881680 (Concat!14676 lt!1041060 lt!1041062))))

(declare-fun bm!200498 () Bool)

(assert (=> bm!200498 (= call!200504 (isEmptyExpr!464 (ite c!492293 lt!1041061 lt!1041062)))))

(declare-fun b!2994044 () Bool)

(declare-fun c!492291 () Bool)

(assert (=> b!2994044 (= c!492291 (isEmptyExpr!464 lt!1041060))))

(assert (=> b!2994044 (= e!1881690 e!1881689)))

(declare-fun b!2994045 () Bool)

(assert (=> b!2994045 (= e!1881684 e!1881682)))

(assert (=> b!2994045 (= c!492293 ((_ is Star!9355) (ite c!492036 (regOne!19223 lt!1040854) (regTwo!19222 lt!1040854))))))

(declare-fun b!2994046 () Bool)

(assert (=> b!2994046 (= e!1881683 EmptyExpr!9355)))

(declare-fun b!2994047 () Bool)

(declare-fun c!492289 () Bool)

(assert (=> b!2994047 (= c!492289 call!200501)))

(assert (=> b!2994047 (= e!1881681 e!1881692)))

(declare-fun bm!200499 () Bool)

(assert (=> bm!200499 (= call!200503 call!200505)))

(declare-fun b!2994048 () Bool)

(assert (=> b!2994048 (= e!1881680 lt!1041060)))

(declare-fun b!2994049 () Bool)

(assert (=> b!2994049 (= e!1881686 (ite c!492036 (regOne!19223 lt!1040854) (regTwo!19222 lt!1040854)))))

(declare-fun b!2994050 () Bool)

(assert (=> b!2994050 (= e!1881692 (Union!9355 lt!1041064 lt!1041063))))

(declare-fun bm!200500 () Bool)

(assert (=> bm!200500 (= call!200502 (simplify!346 (ite c!492283 (regOne!19223 (ite c!492036 (regOne!19223 lt!1040854) (regTwo!19222 lt!1040854))) (regTwo!19222 (ite c!492036 (regOne!19223 lt!1040854) (regTwo!19222 lt!1040854))))))))

(assert (= (and d!845269 c!492290) b!2994033))

(assert (= (and d!845269 (not c!492290)) b!2994027))

(assert (= (and b!2994027 c!492286) b!2994049))

(assert (= (and b!2994027 (not c!492286)) b!2994040))

(assert (= (and b!2994040 c!492287) b!2994035))

(assert (= (and b!2994040 (not c!492287)) b!2994045))

(assert (= (and b!2994045 c!492293) b!2994041))

(assert (= (and b!2994045 (not c!492293)) b!2994031))

(assert (= (and b!2994041 (not res!1234896)) b!2994036))

(assert (= (and b!2994041 c!492292) b!2994046))

(assert (= (and b!2994041 (not c!492292)) b!2994034))

(assert (= (and b!2994031 c!492283) b!2994042))

(assert (= (and b!2994031 (not c!492283)) b!2994037))

(assert (= (and b!2994042 c!492284) b!2994032))

(assert (= (and b!2994042 (not c!492284)) b!2994047))

(assert (= (and b!2994047 c!492289) b!2994038))

(assert (= (and b!2994047 (not c!492289)) b!2994050))

(assert (= (and b!2994037 (not res!1234895)) b!2994029))

(assert (= (and b!2994037 c!492288) b!2994028))

(assert (= (and b!2994037 (not c!492288)) b!2994044))

(assert (= (and b!2994044 c!492291) b!2994039))

(assert (= (and b!2994044 (not c!492291)) b!2994030))

(assert (= (and b!2994030 c!492285) b!2994048))

(assert (= (and b!2994030 (not c!492285)) b!2994043))

(assert (= (or b!2994042 b!2994037) bm!200500))

(assert (= (or b!2994042 b!2994037) bm!200499))

(assert (= (or b!2994042 b!2994037) bm!200495))

(assert (= (or b!2994047 b!2994029) bm!200496))

(assert (= (or b!2994036 b!2994030) bm!200498))

(assert (= (or b!2994041 bm!200499) bm!200497))

(assert (= (or b!2994041 bm!200496) bm!200494))

(assert (= (and d!845269 res!1234894) b!2994026))

(declare-fun m!3349191 () Bool)

(assert (=> b!2994044 m!3349191))

(declare-fun m!3349193 () Bool)

(assert (=> d!845269 m!3349193))

(declare-fun m!3349195 () Bool)

(assert (=> d!845269 m!3349195))

(declare-fun m!3349197 () Bool)

(assert (=> bm!200498 m!3349197))

(declare-fun m!3349199 () Bool)

(assert (=> bm!200497 m!3349199))

(declare-fun m!3349201 () Bool)

(assert (=> bm!200494 m!3349201))

(declare-fun m!3349203 () Bool)

(assert (=> b!2994026 m!3349203))

(declare-fun m!3349205 () Bool)

(assert (=> b!2994026 m!3349205))

(declare-fun m!3349207 () Bool)

(assert (=> bm!200495 m!3349207))

(declare-fun m!3349209 () Bool)

(assert (=> bm!200500 m!3349209))

(assert (=> bm!200348 d!845269))

(assert (=> bm!200308 d!845025))

(declare-fun b!2994065 () Bool)

(declare-fun e!1881703 () Bool)

(declare-fun e!1881706 () Bool)

(assert (=> b!2994065 (= e!1881703 e!1881706)))

(declare-fun c!492297 () Bool)

(assert (=> b!2994065 (= c!492297 ((_ is Union!9355) lt!1040956))))

(declare-fun d!845275 () Bool)

(declare-fun res!1234907 () Bool)

(declare-fun e!1881705 () Bool)

(assert (=> d!845275 (=> res!1234907 e!1881705)))

(assert (=> d!845275 (= res!1234907 ((_ is ElementMatch!9355) lt!1040956))))

(assert (=> d!845275 (= (validRegex!4088 lt!1040956) e!1881705)))

(declare-fun b!2994066 () Bool)

(declare-fun res!1234908 () Bool)

(declare-fun e!1881704 () Bool)

(assert (=> b!2994066 (=> (not res!1234908) (not e!1881704))))

(declare-fun call!200509 () Bool)

(assert (=> b!2994066 (= res!1234908 call!200509)))

(assert (=> b!2994066 (= e!1881706 e!1881704)))

(declare-fun b!2994067 () Bool)

(declare-fun res!1234905 () Bool)

(declare-fun e!1881701 () Bool)

(assert (=> b!2994067 (=> res!1234905 e!1881701)))

(assert (=> b!2994067 (= res!1234905 (not ((_ is Concat!14676) lt!1040956)))))

(assert (=> b!2994067 (= e!1881706 e!1881701)))

(declare-fun b!2994068 () Bool)

(declare-fun e!1881700 () Bool)

(assert (=> b!2994068 (= e!1881703 e!1881700)))

(declare-fun res!1234909 () Bool)

(assert (=> b!2994068 (= res!1234909 (not (nullable!3020 (reg!9684 lt!1040956))))))

(assert (=> b!2994068 (=> (not res!1234909) (not e!1881700))))

(declare-fun b!2994069 () Bool)

(assert (=> b!2994069 (= e!1881705 e!1881703)))

(declare-fun c!492298 () Bool)

(assert (=> b!2994069 (= c!492298 ((_ is Star!9355) lt!1040956))))

(declare-fun bm!200502 () Bool)

(declare-fun call!200508 () Bool)

(declare-fun call!200507 () Bool)

(assert (=> bm!200502 (= call!200508 call!200507)))

(declare-fun b!2994070 () Bool)

(assert (=> b!2994070 (= e!1881704 call!200508)))

(declare-fun bm!200503 () Bool)

(assert (=> bm!200503 (= call!200507 (validRegex!4088 (ite c!492298 (reg!9684 lt!1040956) (ite c!492297 (regTwo!19223 lt!1040956) (regOne!19222 lt!1040956)))))))

(declare-fun bm!200504 () Bool)

(assert (=> bm!200504 (= call!200509 (validRegex!4088 (ite c!492297 (regOne!19223 lt!1040956) (regTwo!19222 lt!1040956))))))

(declare-fun b!2994071 () Bool)

(declare-fun e!1881702 () Bool)

(assert (=> b!2994071 (= e!1881702 call!200509)))

(declare-fun b!2994072 () Bool)

(assert (=> b!2994072 (= e!1881700 call!200507)))

(declare-fun b!2994073 () Bool)

(assert (=> b!2994073 (= e!1881701 e!1881702)))

(declare-fun res!1234906 () Bool)

(assert (=> b!2994073 (=> (not res!1234906) (not e!1881702))))

(assert (=> b!2994073 (= res!1234906 call!200508)))

(assert (= (and d!845275 (not res!1234907)) b!2994069))

(assert (= (and b!2994069 c!492298) b!2994068))

(assert (= (and b!2994069 (not c!492298)) b!2994065))

(assert (= (and b!2994068 res!1234909) b!2994072))

(assert (= (and b!2994065 c!492297) b!2994066))

(assert (= (and b!2994065 (not c!492297)) b!2994067))

(assert (= (and b!2994066 res!1234908) b!2994070))

(assert (= (and b!2994067 (not res!1234905)) b!2994073))

(assert (= (and b!2994073 res!1234906) b!2994071))

(assert (= (or b!2994066 b!2994071) bm!200504))

(assert (= (or b!2994070 b!2994073) bm!200502))

(assert (= (or b!2994072 bm!200502) bm!200503))

(declare-fun m!3349219 () Bool)

(assert (=> b!2994068 m!3349219))

(declare-fun m!3349221 () Bool)

(assert (=> bm!200503 m!3349221))

(declare-fun m!3349223 () Bool)

(assert (=> bm!200504 m!3349223))

(assert (=> d!844991 d!845275))

(assert (=> d!844991 d!845027))

(assert (=> bm!200314 d!844979))

(declare-fun d!845279 () Bool)

(assert (=> d!845279 (= (nullable!3020 lt!1040956) (nullableFct!858 lt!1040956))))

(declare-fun bs!527990 () Bool)

(assert (= bs!527990 d!845279))

(declare-fun m!3349225 () Bool)

(assert (=> bs!527990 m!3349225))

(assert (=> b!2993207 d!845279))

(assert (=> b!2993207 d!845225))

(declare-fun bs!527991 () Bool)

(declare-fun b!2994092 () Bool)

(assert (= bs!527991 (and b!2994092 d!845123)))

(declare-fun lambda!111985 () Int)

(assert (=> bs!527991 (not (= lambda!111985 lambda!111979))))

(declare-fun bs!527992 () Bool)

(assert (= bs!527992 (and b!2994092 b!2993692)))

(assert (=> bs!527992 (not (= lambda!111985 lambda!111982))))

(assert (=> bs!527991 (= (and (= (reg!9684 (regTwo!19223 r!17423)) (reg!9684 r!17423)) (= (regTwo!19223 r!17423) (Star!9355 (reg!9684 r!17423)))) (= lambda!111985 lambda!111980))))

(declare-fun bs!527994 () Bool)

(assert (= bs!527994 (and b!2994092 d!844913)))

(assert (=> bs!527994 (= (and (= (reg!9684 (regTwo!19223 r!17423)) (reg!9684 r!17423)) (= (regTwo!19223 r!17423) (Star!9355 (reg!9684 r!17423)))) (= lambda!111985 lambda!111945))))

(declare-fun bs!527996 () Bool)

(assert (= bs!527996 (and b!2994092 b!2993063)))

(assert (=> bs!527996 (not (= lambda!111985 lambda!111960))))

(assert (=> bs!527994 (not (= lambda!111985 lambda!111944))))

(declare-fun bs!527999 () Bool)

(assert (= bs!527999 (and b!2994092 d!845049)))

(assert (=> bs!527999 (not (= lambda!111985 lambda!111966))))

(declare-fun bs!528001 () Bool)

(assert (= bs!528001 (and b!2994092 b!2992583)))

(assert (=> bs!528001 (not (= lambda!111985 lambda!111929))))

(declare-fun bs!528003 () Bool)

(assert (= bs!528003 (and b!2994092 d!844951)))

(assert (=> bs!528003 (not (= lambda!111985 lambda!111954))))

(declare-fun bs!528004 () Bool)

(assert (= bs!528004 (and b!2994092 b!2993544)))

(assert (=> bs!528004 (= (and (= s!11993 (_1!20146 lt!1040855)) (= (reg!9684 (regTwo!19223 r!17423)) (reg!9684 (reg!9684 r!17423))) (= (regTwo!19223 r!17423) (reg!9684 r!17423))) (= lambda!111985 lambda!111973))))

(declare-fun bs!528005 () Bool)

(assert (= bs!528005 (and b!2994092 b!2993701)))

(assert (=> bs!528005 (= (and (= (reg!9684 (regTwo!19223 r!17423)) (reg!9684 (regOne!19223 r!17423))) (= (regTwo!19223 r!17423) (regOne!19223 r!17423))) (= lambda!111985 lambda!111981))))

(declare-fun bs!528007 () Bool)

(assert (= bs!528007 (and b!2994092 b!2993535)))

(assert (=> bs!528007 (not (= lambda!111985 lambda!111974))))

(assert (=> bs!528001 (= (and (= (reg!9684 (regTwo!19223 r!17423)) (reg!9684 r!17423)) (= (regTwo!19223 r!17423) lt!1040854)) (= lambda!111985 lambda!111930))))

(declare-fun bs!528010 () Bool)

(assert (= bs!528010 (and b!2994092 b!2993072)))

(assert (=> bs!528010 (= (and (= (reg!9684 (regTwo!19223 r!17423)) (reg!9684 r!17423)) (= (regTwo!19223 r!17423) r!17423)) (= lambda!111985 lambda!111959))))

(assert (=> b!2994092 true))

(assert (=> b!2994092 true))

(declare-fun bs!528011 () Bool)

(declare-fun b!2994083 () Bool)

(assert (= bs!528011 (and b!2994083 d!845123)))

(declare-fun lambda!111987 () Int)

(assert (=> bs!528011 (not (= lambda!111987 lambda!111979))))

(declare-fun bs!528013 () Bool)

(assert (= bs!528013 (and b!2994083 b!2993692)))

(assert (=> bs!528013 (= (and (= (regOne!19222 (regTwo!19223 r!17423)) (regOne!19222 (regOne!19223 r!17423))) (= (regTwo!19222 (regTwo!19223 r!17423)) (regTwo!19222 (regOne!19223 r!17423)))) (= lambda!111987 lambda!111982))))

(assert (=> bs!528011 (not (= lambda!111987 lambda!111980))))

(declare-fun bs!528016 () Bool)

(assert (= bs!528016 (and b!2994083 d!844913)))

(assert (=> bs!528016 (not (= lambda!111987 lambda!111945))))

(declare-fun bs!528018 () Bool)

(assert (= bs!528018 (and b!2994083 b!2993063)))

(assert (=> bs!528018 (= (and (= (regOne!19222 (regTwo!19223 r!17423)) (regOne!19222 r!17423)) (= (regTwo!19222 (regTwo!19223 r!17423)) (regTwo!19222 r!17423))) (= lambda!111987 lambda!111960))))

(declare-fun bs!528020 () Bool)

(assert (= bs!528020 (and b!2994083 d!845049)))

(assert (=> bs!528020 (not (= lambda!111987 lambda!111966))))

(declare-fun bs!528021 () Bool)

(assert (= bs!528021 (and b!2994083 b!2992583)))

(assert (=> bs!528021 (not (= lambda!111987 lambda!111929))))

(declare-fun bs!528022 () Bool)

(assert (= bs!528022 (and b!2994083 d!844951)))

(assert (=> bs!528022 (not (= lambda!111987 lambda!111954))))

(declare-fun bs!528024 () Bool)

(assert (= bs!528024 (and b!2994083 b!2993544)))

(assert (=> bs!528024 (not (= lambda!111987 lambda!111973))))

(declare-fun bs!528026 () Bool)

(assert (= bs!528026 (and b!2994083 b!2993701)))

(assert (=> bs!528026 (not (= lambda!111987 lambda!111981))))

(declare-fun bs!528028 () Bool)

(assert (= bs!528028 (and b!2994083 b!2993535)))

(assert (=> bs!528028 (= (and (= s!11993 (_1!20146 lt!1040855)) (= (regOne!19222 (regTwo!19223 r!17423)) (regOne!19222 (reg!9684 r!17423))) (= (regTwo!19222 (regTwo!19223 r!17423)) (regTwo!19222 (reg!9684 r!17423)))) (= lambda!111987 lambda!111974))))

(assert (=> bs!528021 (not (= lambda!111987 lambda!111930))))

(declare-fun bs!528031 () Bool)

(assert (= bs!528031 (and b!2994083 b!2993072)))

(assert (=> bs!528031 (not (= lambda!111987 lambda!111959))))

(declare-fun bs!528032 () Bool)

(assert (= bs!528032 (and b!2994083 b!2994092)))

(assert (=> bs!528032 (not (= lambda!111987 lambda!111985))))

(assert (=> bs!528016 (not (= lambda!111987 lambda!111944))))

(assert (=> b!2994083 true))

(assert (=> b!2994083 true))

(declare-fun e!1881714 () Bool)

(declare-fun call!200514 () Bool)

(assert (=> b!2994083 (= e!1881714 call!200514)))

(declare-fun c!492304 () Bool)

(declare-fun bm!200508 () Bool)

(assert (=> bm!200508 (= call!200514 (Exists!1628 (ite c!492304 lambda!111985 lambda!111987)))))

(declare-fun b!2994084 () Bool)

(declare-fun res!1234916 () Bool)

(declare-fun e!1881718 () Bool)

(assert (=> b!2994084 (=> res!1234916 e!1881718)))

(declare-fun call!200513 () Bool)

(assert (=> b!2994084 (= res!1234916 call!200513)))

(assert (=> b!2994084 (= e!1881714 e!1881718)))

(declare-fun b!2994085 () Bool)

(declare-fun e!1881719 () Bool)

(assert (=> b!2994085 (= e!1881719 (= s!11993 (Cons!35096 (c!491875 (regTwo!19223 r!17423)) Nil!35096)))))

(declare-fun b!2994086 () Bool)

(declare-fun c!492302 () Bool)

(assert (=> b!2994086 (= c!492302 ((_ is ElementMatch!9355) (regTwo!19223 r!17423)))))

(declare-fun e!1881716 () Bool)

(assert (=> b!2994086 (= e!1881716 e!1881719)))

(declare-fun b!2994087 () Bool)

(declare-fun e!1881717 () Bool)

(assert (=> b!2994087 (= e!1881717 e!1881716)))

(declare-fun res!1234915 () Bool)

(assert (=> b!2994087 (= res!1234915 (not ((_ is EmptyLang!9355) (regTwo!19223 r!17423))))))

(assert (=> b!2994087 (=> (not res!1234915) (not e!1881716))))

(declare-fun d!845281 () Bool)

(declare-fun c!492301 () Bool)

(assert (=> d!845281 (= c!492301 ((_ is EmptyExpr!9355) (regTwo!19223 r!17423)))))

(assert (=> d!845281 (= (matchRSpec!1492 (regTwo!19223 r!17423) s!11993) e!1881717)))

(declare-fun bm!200509 () Bool)

(assert (=> bm!200509 (= call!200513 (isEmpty!19368 s!11993))))

(declare-fun b!2994088 () Bool)

(declare-fun c!492303 () Bool)

(assert (=> b!2994088 (= c!492303 ((_ is Union!9355) (regTwo!19223 r!17423)))))

(declare-fun e!1881715 () Bool)

(assert (=> b!2994088 (= e!1881719 e!1881715)))

(declare-fun b!2994089 () Bool)

(declare-fun e!1881720 () Bool)

(assert (=> b!2994089 (= e!1881720 (matchRSpec!1492 (regTwo!19223 (regTwo!19223 r!17423)) s!11993))))

(declare-fun b!2994090 () Bool)

(assert (=> b!2994090 (= e!1881715 e!1881720)))

(declare-fun res!1234917 () Bool)

(assert (=> b!2994090 (= res!1234917 (matchRSpec!1492 (regOne!19223 (regTwo!19223 r!17423)) s!11993))))

(assert (=> b!2994090 (=> res!1234917 e!1881720)))

(declare-fun b!2994091 () Bool)

(assert (=> b!2994091 (= e!1881715 e!1881714)))

(assert (=> b!2994091 (= c!492304 ((_ is Star!9355) (regTwo!19223 r!17423)))))

(assert (=> b!2994092 (= e!1881718 call!200514)))

(declare-fun b!2994093 () Bool)

(assert (=> b!2994093 (= e!1881717 call!200513)))

(assert (= (and d!845281 c!492301) b!2994093))

(assert (= (and d!845281 (not c!492301)) b!2994087))

(assert (= (and b!2994087 res!1234915) b!2994086))

(assert (= (and b!2994086 c!492302) b!2994085))

(assert (= (and b!2994086 (not c!492302)) b!2994088))

(assert (= (and b!2994088 c!492303) b!2994090))

(assert (= (and b!2994088 (not c!492303)) b!2994091))

(assert (= (and b!2994090 (not res!1234917)) b!2994089))

(assert (= (and b!2994091 c!492304) b!2994084))

(assert (= (and b!2994091 (not c!492304)) b!2994083))

(assert (= (and b!2994084 (not res!1234916)) b!2994092))

(assert (= (or b!2994092 b!2994083) bm!200508))

(assert (= (or b!2994093 b!2994084) bm!200509))

(declare-fun m!3349239 () Bool)

(assert (=> bm!200508 m!3349239))

(assert (=> bm!200509 m!3348229))

(declare-fun m!3349241 () Bool)

(assert (=> b!2994089 m!3349241))

(declare-fun m!3349243 () Bool)

(assert (=> b!2994090 m!3349243))

(assert (=> b!2993069 d!845281))

(assert (=> b!2993129 d!845059))

(assert (=> b!2993129 d!845061))

(declare-fun b!2994114 () Bool)

(declare-fun lt!1041066 () Regex!9355)

(declare-fun e!1881743 () Bool)

(assert (=> b!2994114 (= e!1881743 (= (nullable!3020 lt!1041066) (nullable!3020 (ite c!492047 (regOne!19223 (reg!9684 r!17423)) (regTwo!19222 (reg!9684 r!17423))))))))

(declare-fun b!2994115 () Bool)

(declare-fun e!1881741 () Regex!9355)

(declare-fun e!1881742 () Regex!9355)

(assert (=> b!2994115 (= e!1881741 e!1881742)))

(declare-fun c!492314 () Bool)

(assert (=> b!2994115 (= c!492314 ((_ is ElementMatch!9355) (ite c!492047 (regOne!19223 (reg!9684 r!17423)) (regTwo!19222 (reg!9684 r!17423)))))))

(declare-fun b!2994116 () Bool)

(declare-fun e!1881746 () Regex!9355)

(assert (=> b!2994116 (= e!1881746 EmptyLang!9355)))

(declare-fun lt!1041068 () Regex!9355)

(declare-fun c!492311 () Bool)

(declare-fun call!200520 () Bool)

(declare-fun lt!1041069 () Regex!9355)

(declare-fun lt!1041070 () Regex!9355)

(declare-fun c!492321 () Bool)

(declare-fun bm!200515 () Bool)

(assert (=> bm!200515 (= call!200520 (isEmptyLang!447 (ite c!492321 lt!1041068 (ite c!492311 lt!1041070 lt!1041069))))))

(declare-fun b!2994117 () Bool)

(declare-fun e!1881747 () Bool)

(declare-fun call!200522 () Bool)

(assert (=> b!2994117 (= e!1881747 call!200522)))

(declare-fun b!2994118 () Bool)

(declare-fun e!1881745 () Regex!9355)

(declare-fun e!1881736 () Regex!9355)

(assert (=> b!2994118 (= e!1881745 e!1881736)))

(declare-fun c!492313 () Bool)

(declare-fun call!200525 () Bool)

(assert (=> b!2994118 (= c!492313 call!200525)))

(declare-fun b!2994119 () Bool)

(assert (=> b!2994119 (= c!492311 ((_ is Union!9355) (ite c!492047 (regOne!19223 (reg!9684 r!17423)) (regTwo!19222 (reg!9684 r!17423)))))))

(declare-fun e!1881738 () Regex!9355)

(declare-fun e!1881735 () Regex!9355)

(assert (=> b!2994119 (= e!1881738 e!1881735)))

(declare-fun call!200521 () Bool)

(declare-fun lt!1041071 () Regex!9355)

(declare-fun bm!200516 () Bool)

(declare-fun lt!1041067 () Regex!9355)

(assert (=> bm!200516 (= call!200521 (isEmptyLang!447 (ite c!492311 lt!1041071 lt!1041067)))))

(declare-fun b!2994120 () Bool)

(declare-fun e!1881737 () Regex!9355)

(assert (=> b!2994120 (= e!1881737 lt!1041070)))

(declare-fun b!2994121 () Bool)

(assert (=> b!2994121 (= e!1881741 EmptyLang!9355)))

(declare-fun b!2994122 () Bool)

(declare-fun e!1881739 () Regex!9355)

(assert (=> b!2994122 (= e!1881739 (Star!9355 lt!1041068))))

(declare-fun bm!200517 () Bool)

(assert (=> bm!200517 (= call!200522 call!200520)))

(declare-fun call!200526 () Regex!9355)

(declare-fun bm!200518 () Bool)

(assert (=> bm!200518 (= call!200526 (simplify!346 (ite c!492321 (reg!9684 (ite c!492047 (regOne!19223 (reg!9684 r!17423)) (regTwo!19222 (reg!9684 r!17423)))) (ite c!492311 (regTwo!19223 (ite c!492047 (regOne!19223 (reg!9684 r!17423)) (regTwo!19222 (reg!9684 r!17423)))) (regOne!19222 (ite c!492047 (regOne!19223 (reg!9684 r!17423)) (regTwo!19222 (reg!9684 r!17423))))))))))

(declare-fun b!2994123 () Bool)

(declare-fun e!1881740 () Regex!9355)

(assert (=> b!2994123 (= e!1881740 EmptyExpr!9355)))

(declare-fun d!845287 () Bool)

(assert (=> d!845287 e!1881743))

(declare-fun res!1234926 () Bool)

(assert (=> d!845287 (=> (not res!1234926) (not e!1881743))))

(assert (=> d!845287 (= res!1234926 (validRegex!4088 lt!1041066))))

(assert (=> d!845287 (= lt!1041066 e!1881741)))

(declare-fun c!492318 () Bool)

(assert (=> d!845287 (= c!492318 ((_ is EmptyLang!9355) (ite c!492047 (regOne!19223 (reg!9684 r!17423)) (regTwo!19222 (reg!9684 r!17423)))))))

(assert (=> d!845287 (validRegex!4088 (ite c!492047 (regOne!19223 (reg!9684 r!17423)) (regTwo!19222 (reg!9684 r!17423))))))

(assert (=> d!845287 (= (simplify!346 (ite c!492047 (regOne!19223 (reg!9684 r!17423)) (regTwo!19222 (reg!9684 r!17423)))) lt!1041066)))

(declare-fun b!2994124 () Bool)

(declare-fun e!1881744 () Bool)

(assert (=> b!2994124 (= e!1881744 call!200525)))

(declare-fun b!2994125 () Bool)

(assert (=> b!2994125 (= e!1881735 e!1881746)))

(declare-fun call!200524 () Regex!9355)

(assert (=> b!2994125 (= lt!1041067 call!200524)))

(declare-fun call!200523 () Regex!9355)

(assert (=> b!2994125 (= lt!1041069 call!200523)))

(declare-fun res!1234927 () Bool)

(assert (=> b!2994125 (= res!1234927 call!200521)))

(assert (=> b!2994125 (=> res!1234927 e!1881747)))

(declare-fun c!492316 () Bool)

(assert (=> b!2994125 (= c!492316 e!1881747)))

(declare-fun b!2994126 () Bool)

(declare-fun e!1881748 () Regex!9355)

(assert (=> b!2994126 (= e!1881748 lt!1041071)))

(declare-fun b!2994127 () Bool)

(assert (=> b!2994127 (= e!1881745 lt!1041069)))

(declare-fun b!2994128 () Bool)

(declare-fun c!492315 () Bool)

(assert (=> b!2994128 (= c!492315 ((_ is EmptyExpr!9355) (ite c!492047 (regOne!19223 (reg!9684 r!17423)) (regTwo!19222 (reg!9684 r!17423)))))))

(assert (=> b!2994128 (= e!1881742 e!1881740)))

(declare-fun b!2994129 () Bool)

(declare-fun c!492320 () Bool)

(assert (=> b!2994129 (= c!492320 e!1881744)))

(declare-fun res!1234928 () Bool)

(assert (=> b!2994129 (=> res!1234928 e!1881744)))

(assert (=> b!2994129 (= res!1234928 call!200520)))

(assert (=> b!2994129 (= lt!1041068 call!200526)))

(assert (=> b!2994129 (= e!1881738 e!1881739)))

(declare-fun b!2994130 () Bool)

(assert (=> b!2994130 (= e!1881735 e!1881737)))

(assert (=> b!2994130 (= lt!1041071 call!200523)))

(assert (=> b!2994130 (= lt!1041070 call!200524)))

(declare-fun c!492312 () Bool)

(assert (=> b!2994130 (= c!492312 call!200521)))

(declare-fun b!2994131 () Bool)

(assert (=> b!2994131 (= e!1881736 (Concat!14676 lt!1041067 lt!1041069))))

(declare-fun bm!200519 () Bool)

(assert (=> bm!200519 (= call!200525 (isEmptyExpr!464 (ite c!492321 lt!1041068 lt!1041069)))))

(declare-fun b!2994132 () Bool)

(declare-fun c!492319 () Bool)

(assert (=> b!2994132 (= c!492319 (isEmptyExpr!464 lt!1041067))))

(assert (=> b!2994132 (= e!1881746 e!1881745)))

(declare-fun b!2994133 () Bool)

(assert (=> b!2994133 (= e!1881740 e!1881738)))

(assert (=> b!2994133 (= c!492321 ((_ is Star!9355) (ite c!492047 (regOne!19223 (reg!9684 r!17423)) (regTwo!19222 (reg!9684 r!17423)))))))

(declare-fun b!2994134 () Bool)

(assert (=> b!2994134 (= e!1881739 EmptyExpr!9355)))

(declare-fun b!2994135 () Bool)

(declare-fun c!492317 () Bool)

(assert (=> b!2994135 (= c!492317 call!200522)))

(assert (=> b!2994135 (= e!1881737 e!1881748)))

(declare-fun bm!200520 () Bool)

(assert (=> bm!200520 (= call!200524 call!200526)))

(declare-fun b!2994136 () Bool)

(assert (=> b!2994136 (= e!1881736 lt!1041067)))

(declare-fun b!2994137 () Bool)

(assert (=> b!2994137 (= e!1881742 (ite c!492047 (regOne!19223 (reg!9684 r!17423)) (regTwo!19222 (reg!9684 r!17423))))))

(declare-fun b!2994138 () Bool)

(assert (=> b!2994138 (= e!1881748 (Union!9355 lt!1041071 lt!1041070))))

(declare-fun bm!200521 () Bool)

(assert (=> bm!200521 (= call!200523 (simplify!346 (ite c!492311 (regOne!19223 (ite c!492047 (regOne!19223 (reg!9684 r!17423)) (regTwo!19222 (reg!9684 r!17423)))) (regTwo!19222 (ite c!492047 (regOne!19223 (reg!9684 r!17423)) (regTwo!19222 (reg!9684 r!17423)))))))))

(assert (= (and d!845287 c!492318) b!2994121))

(assert (= (and d!845287 (not c!492318)) b!2994115))

(assert (= (and b!2994115 c!492314) b!2994137))

(assert (= (and b!2994115 (not c!492314)) b!2994128))

(assert (= (and b!2994128 c!492315) b!2994123))

(assert (= (and b!2994128 (not c!492315)) b!2994133))

(assert (= (and b!2994133 c!492321) b!2994129))

(assert (= (and b!2994133 (not c!492321)) b!2994119))

(assert (= (and b!2994129 (not res!1234928)) b!2994124))

(assert (= (and b!2994129 c!492320) b!2994134))

(assert (= (and b!2994129 (not c!492320)) b!2994122))

(assert (= (and b!2994119 c!492311) b!2994130))

(assert (= (and b!2994119 (not c!492311)) b!2994125))

(assert (= (and b!2994130 c!492312) b!2994120))

(assert (= (and b!2994130 (not c!492312)) b!2994135))

(assert (= (and b!2994135 c!492317) b!2994126))

(assert (= (and b!2994135 (not c!492317)) b!2994138))

(assert (= (and b!2994125 (not res!1234927)) b!2994117))

(assert (= (and b!2994125 c!492316) b!2994116))

(assert (= (and b!2994125 (not c!492316)) b!2994132))

(assert (= (and b!2994132 c!492319) b!2994127))

(assert (= (and b!2994132 (not c!492319)) b!2994118))

(assert (= (and b!2994118 c!492313) b!2994136))

(assert (= (and b!2994118 (not c!492313)) b!2994131))

(assert (= (or b!2994130 b!2994125) bm!200521))

(assert (= (or b!2994130 b!2994125) bm!200520))

(assert (= (or b!2994130 b!2994125) bm!200516))

(assert (= (or b!2994135 b!2994117) bm!200517))

(assert (= (or b!2994124 b!2994118) bm!200519))

(assert (= (or b!2994129 bm!200520) bm!200518))

(assert (= (or b!2994129 bm!200517) bm!200515))

(assert (= (and d!845287 res!1234926) b!2994114))

(declare-fun m!3349255 () Bool)

(assert (=> b!2994132 m!3349255))

(declare-fun m!3349257 () Bool)

(assert (=> d!845287 m!3349257))

(declare-fun m!3349259 () Bool)

(assert (=> d!845287 m!3349259))

(declare-fun m!3349261 () Bool)

(assert (=> bm!200519 m!3349261))

(declare-fun m!3349263 () Bool)

(assert (=> bm!200518 m!3349263))

(declare-fun m!3349265 () Bool)

(assert (=> bm!200515 m!3349265))

(declare-fun m!3349267 () Bool)

(assert (=> b!2994114 m!3349267))

(declare-fun m!3349269 () Bool)

(assert (=> b!2994114 m!3349269))

(declare-fun m!3349271 () Bool)

(assert (=> bm!200516 m!3349271))

(declare-fun m!3349273 () Bool)

(assert (=> bm!200521 m!3349273))

(assert (=> bm!200355 d!845287))

(declare-fun d!845299 () Bool)

(assert (=> d!845299 (= (isEmpty!19370 lt!1040849) (not ((_ is Some!6745) lt!1040849)))))

(assert (=> d!844923 d!845299))

(declare-fun d!845303 () Bool)

(assert (=> d!845303 (= (isEmptyExpr!464 lt!1040957) ((_ is EmptyExpr!9355) lt!1040957))))

(assert (=> b!2993225 d!845303))

(declare-fun b!2994161 () Bool)

(declare-fun res!1234942 () Bool)

(declare-fun e!1881770 () Bool)

(assert (=> b!2994161 (=> (not res!1234942) (not e!1881770))))

(assert (=> b!2994161 (= res!1234942 (isEmpty!19368 (tail!4903 (tail!4903 s!11993))))))

(declare-fun b!2994162 () Bool)

(declare-fun e!1881769 () Bool)

(assert (=> b!2994162 (= e!1881769 (matchR!4237 (derivativeStep!2618 (derivativeStep!2618 r!17423 (head!6677 s!11993)) (head!6677 (tail!4903 s!11993))) (tail!4903 (tail!4903 s!11993))))))

(declare-fun b!2994163 () Bool)

(declare-fun e!1881764 () Bool)

(declare-fun e!1881768 () Bool)

(assert (=> b!2994163 (= e!1881764 e!1881768)))

(declare-fun c!492331 () Bool)

(assert (=> b!2994163 (= c!492331 ((_ is EmptyLang!9355) (derivativeStep!2618 r!17423 (head!6677 s!11993))))))

(declare-fun b!2994164 () Bool)

(declare-fun res!1234940 () Bool)

(declare-fun e!1881765 () Bool)

(assert (=> b!2994164 (=> res!1234940 e!1881765)))

(assert (=> b!2994164 (= res!1234940 (not ((_ is ElementMatch!9355) (derivativeStep!2618 r!17423 (head!6677 s!11993)))))))

(assert (=> b!2994164 (= e!1881768 e!1881765)))

(declare-fun b!2994165 () Bool)

(declare-fun e!1881767 () Bool)

(assert (=> b!2994165 (= e!1881767 (not (= (head!6677 (tail!4903 s!11993)) (c!491875 (derivativeStep!2618 r!17423 (head!6677 s!11993))))))))

(declare-fun b!2994166 () Bool)

(assert (=> b!2994166 (= e!1881770 (= (head!6677 (tail!4903 s!11993)) (c!491875 (derivativeStep!2618 r!17423 (head!6677 s!11993)))))))

(declare-fun b!2994167 () Bool)

(assert (=> b!2994167 (= e!1881769 (nullable!3020 (derivativeStep!2618 r!17423 (head!6677 s!11993))))))

(declare-fun b!2994168 () Bool)

(declare-fun res!1234943 () Bool)

(assert (=> b!2994168 (=> (not res!1234943) (not e!1881770))))

(declare-fun call!200532 () Bool)

(assert (=> b!2994168 (= res!1234943 (not call!200532))))

(declare-fun b!2994169 () Bool)

(declare-fun res!1234939 () Bool)

(assert (=> b!2994169 (=> res!1234939 e!1881765)))

(assert (=> b!2994169 (= res!1234939 e!1881770)))

(declare-fun res!1234938 () Bool)

(assert (=> b!2994169 (=> (not res!1234938) (not e!1881770))))

(declare-fun lt!1041073 () Bool)

(assert (=> b!2994169 (= res!1234938 lt!1041073)))

(declare-fun bm!200527 () Bool)

(assert (=> bm!200527 (= call!200532 (isEmpty!19368 (tail!4903 s!11993)))))

(declare-fun b!2994170 () Bool)

(assert (=> b!2994170 (= e!1881768 (not lt!1041073))))

(declare-fun b!2994171 () Bool)

(declare-fun res!1234941 () Bool)

(assert (=> b!2994171 (=> res!1234941 e!1881767)))

(assert (=> b!2994171 (= res!1234941 (not (isEmpty!19368 (tail!4903 (tail!4903 s!11993)))))))

(declare-fun b!2994172 () Bool)

(declare-fun e!1881766 () Bool)

(assert (=> b!2994172 (= e!1881766 e!1881767)))

(declare-fun res!1234944 () Bool)

(assert (=> b!2994172 (=> res!1234944 e!1881767)))

(assert (=> b!2994172 (= res!1234944 call!200532)))

(declare-fun b!2994173 () Bool)

(assert (=> b!2994173 (= e!1881765 e!1881766)))

(declare-fun res!1234937 () Bool)

(assert (=> b!2994173 (=> (not res!1234937) (not e!1881766))))

(assert (=> b!2994173 (= res!1234937 (not lt!1041073))))

(declare-fun d!845305 () Bool)

(assert (=> d!845305 e!1881764))

(declare-fun c!492330 () Bool)

(assert (=> d!845305 (= c!492330 ((_ is EmptyExpr!9355) (derivativeStep!2618 r!17423 (head!6677 s!11993))))))

(assert (=> d!845305 (= lt!1041073 e!1881769)))

(declare-fun c!492329 () Bool)

(assert (=> d!845305 (= c!492329 (isEmpty!19368 (tail!4903 s!11993)))))

(assert (=> d!845305 (validRegex!4088 (derivativeStep!2618 r!17423 (head!6677 s!11993)))))

(assert (=> d!845305 (= (matchR!4237 (derivativeStep!2618 r!17423 (head!6677 s!11993)) (tail!4903 s!11993)) lt!1041073)))

(declare-fun b!2994174 () Bool)

(assert (=> b!2994174 (= e!1881764 (= lt!1041073 call!200532))))

(assert (= (and d!845305 c!492329) b!2994167))

(assert (= (and d!845305 (not c!492329)) b!2994162))

(assert (= (and d!845305 c!492330) b!2994174))

(assert (= (and d!845305 (not c!492330)) b!2994163))

(assert (= (and b!2994163 c!492331) b!2994170))

(assert (= (and b!2994163 (not c!492331)) b!2994164))

(assert (= (and b!2994164 (not res!1234940)) b!2994169))

(assert (= (and b!2994169 res!1234938) b!2994168))

(assert (= (and b!2994168 res!1234943) b!2994161))

(assert (= (and b!2994161 res!1234942) b!2994166))

(assert (= (and b!2994169 (not res!1234939)) b!2994173))

(assert (= (and b!2994173 res!1234937) b!2994172))

(assert (= (and b!2994172 (not res!1234944)) b!2994171))

(assert (= (and b!2994171 (not res!1234941)) b!2994165))

(assert (= (or b!2994174 b!2994168 b!2994172) bm!200527))

(assert (=> bm!200527 m!3348467))

(assert (=> bm!200527 m!3348471))

(assert (=> b!2994167 m!3348465))

(declare-fun m!3349281 () Bool)

(assert (=> b!2994167 m!3349281))

(assert (=> b!2994162 m!3348467))

(declare-fun m!3349283 () Bool)

(assert (=> b!2994162 m!3349283))

(assert (=> b!2994162 m!3348465))

(assert (=> b!2994162 m!3349283))

(declare-fun m!3349285 () Bool)

(assert (=> b!2994162 m!3349285))

(assert (=> b!2994162 m!3348467))

(declare-fun m!3349287 () Bool)

(assert (=> b!2994162 m!3349287))

(assert (=> b!2994162 m!3349285))

(assert (=> b!2994162 m!3349287))

(declare-fun m!3349289 () Bool)

(assert (=> b!2994162 m!3349289))

(assert (=> b!2994171 m!3348467))

(assert (=> b!2994171 m!3349287))

(assert (=> b!2994171 m!3349287))

(declare-fun m!3349291 () Bool)

(assert (=> b!2994171 m!3349291))

(assert (=> b!2994166 m!3348467))

(assert (=> b!2994166 m!3349283))

(assert (=> d!845305 m!3348467))

(assert (=> d!845305 m!3348471))

(assert (=> d!845305 m!3348465))

(declare-fun m!3349293 () Bool)

(assert (=> d!845305 m!3349293))

(assert (=> b!2994161 m!3348467))

(assert (=> b!2994161 m!3349287))

(assert (=> b!2994161 m!3349287))

(assert (=> b!2994161 m!3349291))

(assert (=> b!2994165 m!3348467))

(assert (=> b!2994165 m!3349283))

(assert (=> b!2993075 d!845305))

(declare-fun b!2994175 () Bool)

(declare-fun c!492335 () Bool)

(assert (=> b!2994175 (= c!492335 (nullable!3020 (regOne!19222 r!17423)))))

(declare-fun e!1881771 () Regex!9355)

(declare-fun e!1881775 () Regex!9355)

(assert (=> b!2994175 (= e!1881771 e!1881775)))

(declare-fun c!492334 () Bool)

(declare-fun bm!200528 () Bool)

(declare-fun call!200535 () Regex!9355)

(assert (=> bm!200528 (= call!200535 (derivativeStep!2618 (ite c!492334 (regTwo!19223 r!17423) (regTwo!19222 r!17423)) (head!6677 s!11993)))))

(declare-fun b!2994176 () Bool)

(declare-fun e!1881774 () Regex!9355)

(assert (=> b!2994176 (= e!1881774 e!1881771)))

(declare-fun c!492332 () Bool)

(assert (=> b!2994176 (= c!492332 ((_ is Star!9355) r!17423))))

(declare-fun b!2994177 () Bool)

(declare-fun call!200533 () Regex!9355)

(assert (=> b!2994177 (= e!1881774 (Union!9355 call!200533 call!200535))))

(declare-fun bm!200529 () Bool)

(declare-fun call!200536 () Regex!9355)

(declare-fun call!200534 () Regex!9355)

(assert (=> bm!200529 (= call!200536 call!200534)))

(declare-fun d!845307 () Bool)

(declare-fun lt!1041074 () Regex!9355)

(assert (=> d!845307 (validRegex!4088 lt!1041074)))

(declare-fun e!1881773 () Regex!9355)

(assert (=> d!845307 (= lt!1041074 e!1881773)))

(declare-fun c!492333 () Bool)

(assert (=> d!845307 (= c!492333 (or ((_ is EmptyExpr!9355) r!17423) ((_ is EmptyLang!9355) r!17423)))))

(assert (=> d!845307 (validRegex!4088 r!17423)))

(assert (=> d!845307 (= (derivativeStep!2618 r!17423 (head!6677 s!11993)) lt!1041074)))

(declare-fun b!2994178 () Bool)

(assert (=> b!2994178 (= e!1881773 EmptyLang!9355)))

(declare-fun b!2994179 () Bool)

(assert (=> b!2994179 (= e!1881775 (Union!9355 (Concat!14676 call!200536 (regTwo!19222 r!17423)) EmptyLang!9355))))

(declare-fun b!2994180 () Bool)

(declare-fun e!1881772 () Regex!9355)

(assert (=> b!2994180 (= e!1881772 (ite (= (head!6677 s!11993) (c!491875 r!17423)) EmptyExpr!9355 EmptyLang!9355))))

(declare-fun b!2994181 () Bool)

(assert (=> b!2994181 (= e!1881773 e!1881772)))

(declare-fun c!492336 () Bool)

(assert (=> b!2994181 (= c!492336 ((_ is ElementMatch!9355) r!17423))))

(declare-fun bm!200530 () Bool)

(assert (=> bm!200530 (= call!200534 call!200533)))

(declare-fun b!2994182 () Bool)

(assert (=> b!2994182 (= e!1881775 (Union!9355 (Concat!14676 call!200536 (regTwo!19222 r!17423)) call!200535))))

(declare-fun b!2994183 () Bool)

(assert (=> b!2994183 (= e!1881771 (Concat!14676 call!200534 r!17423))))

(declare-fun bm!200531 () Bool)

(assert (=> bm!200531 (= call!200533 (derivativeStep!2618 (ite c!492334 (regOne!19223 r!17423) (ite c!492332 (reg!9684 r!17423) (regOne!19222 r!17423))) (head!6677 s!11993)))))

(declare-fun b!2994184 () Bool)

(assert (=> b!2994184 (= c!492334 ((_ is Union!9355) r!17423))))

(assert (=> b!2994184 (= e!1881772 e!1881774)))

(assert (= (and d!845307 c!492333) b!2994178))

(assert (= (and d!845307 (not c!492333)) b!2994181))

(assert (= (and b!2994181 c!492336) b!2994180))

(assert (= (and b!2994181 (not c!492336)) b!2994184))

(assert (= (and b!2994184 c!492334) b!2994177))

(assert (= (and b!2994184 (not c!492334)) b!2994176))

(assert (= (and b!2994176 c!492332) b!2994183))

(assert (= (and b!2994176 (not c!492332)) b!2994175))

(assert (= (and b!2994175 c!492335) b!2994182))

(assert (= (and b!2994175 (not c!492335)) b!2994179))

(assert (= (or b!2994182 b!2994179) bm!200529))

(assert (= (or b!2994183 bm!200529) bm!200530))

(assert (= (or b!2994177 b!2994182) bm!200528))

(assert (= (or b!2994177 bm!200530) bm!200531))

(declare-fun m!3349295 () Bool)

(assert (=> b!2994175 m!3349295))

(assert (=> bm!200528 m!3348463))

(declare-fun m!3349297 () Bool)

(assert (=> bm!200528 m!3349297))

(declare-fun m!3349299 () Bool)

(assert (=> d!845307 m!3349299))

(assert (=> d!845307 m!3348231))

(assert (=> bm!200531 m!3348463))

(declare-fun m!3349301 () Bool)

(assert (=> bm!200531 m!3349301))

(assert (=> b!2993075 d!845307))

(assert (=> b!2993075 d!845089))

(assert (=> b!2993075 d!845183))

(assert (=> b!2993027 d!845191))

(assert (=> b!2993027 d!845073))

(assert (=> d!844985 d!845045))

(declare-fun b!2994185 () Bool)

(declare-fun e!1881779 () Bool)

(declare-fun e!1881782 () Bool)

(assert (=> b!2994185 (= e!1881779 e!1881782)))

(declare-fun c!492337 () Bool)

(assert (=> b!2994185 (= c!492337 ((_ is Union!9355) lt!1040846))))

(declare-fun d!845309 () Bool)

(declare-fun res!1234947 () Bool)

(declare-fun e!1881781 () Bool)

(assert (=> d!845309 (=> res!1234947 e!1881781)))

(assert (=> d!845309 (= res!1234947 ((_ is ElementMatch!9355) lt!1040846))))

(assert (=> d!845309 (= (validRegex!4088 lt!1040846) e!1881781)))

(declare-fun b!2994186 () Bool)

(declare-fun res!1234948 () Bool)

(declare-fun e!1881780 () Bool)

(assert (=> b!2994186 (=> (not res!1234948) (not e!1881780))))

(declare-fun call!200539 () Bool)

(assert (=> b!2994186 (= res!1234948 call!200539)))

(assert (=> b!2994186 (= e!1881782 e!1881780)))

(declare-fun b!2994187 () Bool)

(declare-fun res!1234945 () Bool)

(declare-fun e!1881777 () Bool)

(assert (=> b!2994187 (=> res!1234945 e!1881777)))

(assert (=> b!2994187 (= res!1234945 (not ((_ is Concat!14676) lt!1040846)))))

(assert (=> b!2994187 (= e!1881782 e!1881777)))

(declare-fun b!2994188 () Bool)

(declare-fun e!1881776 () Bool)

(assert (=> b!2994188 (= e!1881779 e!1881776)))

(declare-fun res!1234949 () Bool)

(assert (=> b!2994188 (= res!1234949 (not (nullable!3020 (reg!9684 lt!1040846))))))

(assert (=> b!2994188 (=> (not res!1234949) (not e!1881776))))

(declare-fun b!2994189 () Bool)

(assert (=> b!2994189 (= e!1881781 e!1881779)))

(declare-fun c!492338 () Bool)

(assert (=> b!2994189 (= c!492338 ((_ is Star!9355) lt!1040846))))

(declare-fun bm!200532 () Bool)

(declare-fun call!200538 () Bool)

(declare-fun call!200537 () Bool)

(assert (=> bm!200532 (= call!200538 call!200537)))

(declare-fun b!2994190 () Bool)

(assert (=> b!2994190 (= e!1881780 call!200538)))

(declare-fun bm!200533 () Bool)

(assert (=> bm!200533 (= call!200537 (validRegex!4088 (ite c!492338 (reg!9684 lt!1040846) (ite c!492337 (regTwo!19223 lt!1040846) (regOne!19222 lt!1040846)))))))

(declare-fun bm!200534 () Bool)

(assert (=> bm!200534 (= call!200539 (validRegex!4088 (ite c!492337 (regOne!19223 lt!1040846) (regTwo!19222 lt!1040846))))))

(declare-fun b!2994191 () Bool)

(declare-fun e!1881778 () Bool)

(assert (=> b!2994191 (= e!1881778 call!200539)))

(declare-fun b!2994192 () Bool)

(assert (=> b!2994192 (= e!1881776 call!200537)))

(declare-fun b!2994193 () Bool)

(assert (=> b!2994193 (= e!1881777 e!1881778)))

(declare-fun res!1234946 () Bool)

(assert (=> b!2994193 (=> (not res!1234946) (not e!1881778))))

(assert (=> b!2994193 (= res!1234946 call!200538)))

(assert (= (and d!845309 (not res!1234947)) b!2994189))

(assert (= (and b!2994189 c!492338) b!2994188))

(assert (= (and b!2994189 (not c!492338)) b!2994185))

(assert (= (and b!2994188 res!1234949) b!2994192))

(assert (= (and b!2994185 c!492337) b!2994186))

(assert (= (and b!2994185 (not c!492337)) b!2994187))

(assert (= (and b!2994186 res!1234948) b!2994190))

(assert (= (and b!2994187 (not res!1234945)) b!2994193))

(assert (= (and b!2994193 res!1234946) b!2994191))

(assert (= (or b!2994186 b!2994191) bm!200534))

(assert (= (or b!2994190 b!2994193) bm!200532))

(assert (= (or b!2994192 bm!200532) bm!200533))

(declare-fun m!3349303 () Bool)

(assert (=> b!2994188 m!3349303))

(declare-fun m!3349305 () Bool)

(assert (=> bm!200533 m!3349305))

(declare-fun m!3349307 () Bool)

(assert (=> bm!200534 m!3349307))

(assert (=> d!844985 d!845309))

(declare-fun lt!1041075 () Regex!9355)

(declare-fun e!1881791 () Bool)

(declare-fun b!2994194 () Bool)

(assert (=> b!2994194 (= e!1881791 (= (nullable!3020 lt!1041075) (nullable!3020 (ite c!492057 (reg!9684 (reg!9684 r!17423)) (ite c!492047 (regTwo!19223 (reg!9684 r!17423)) (regOne!19222 (reg!9684 r!17423)))))))))

(declare-fun b!2994195 () Bool)

(declare-fun e!1881789 () Regex!9355)

(declare-fun e!1881790 () Regex!9355)

(assert (=> b!2994195 (= e!1881789 e!1881790)))

(declare-fun c!492342 () Bool)

(assert (=> b!2994195 (= c!492342 ((_ is ElementMatch!9355) (ite c!492057 (reg!9684 (reg!9684 r!17423)) (ite c!492047 (regTwo!19223 (reg!9684 r!17423)) (regOne!19222 (reg!9684 r!17423))))))))

(declare-fun b!2994196 () Bool)

(declare-fun e!1881794 () Regex!9355)

(assert (=> b!2994196 (= e!1881794 EmptyLang!9355)))

(declare-fun lt!1041078 () Regex!9355)

(declare-fun c!492339 () Bool)

(declare-fun c!492349 () Bool)

(declare-fun lt!1041077 () Regex!9355)

(declare-fun bm!200535 () Bool)

(declare-fun call!200540 () Bool)

(declare-fun lt!1041079 () Regex!9355)

(assert (=> bm!200535 (= call!200540 (isEmptyLang!447 (ite c!492349 lt!1041077 (ite c!492339 lt!1041079 lt!1041078))))))

(declare-fun b!2994197 () Bool)

(declare-fun e!1881795 () Bool)

(declare-fun call!200542 () Bool)

(assert (=> b!2994197 (= e!1881795 call!200542)))

(declare-fun b!2994198 () Bool)

(declare-fun e!1881793 () Regex!9355)

(declare-fun e!1881784 () Regex!9355)

(assert (=> b!2994198 (= e!1881793 e!1881784)))

(declare-fun c!492341 () Bool)

(declare-fun call!200545 () Bool)

(assert (=> b!2994198 (= c!492341 call!200545)))

(declare-fun b!2994199 () Bool)

(assert (=> b!2994199 (= c!492339 ((_ is Union!9355) (ite c!492057 (reg!9684 (reg!9684 r!17423)) (ite c!492047 (regTwo!19223 (reg!9684 r!17423)) (regOne!19222 (reg!9684 r!17423))))))))

(declare-fun e!1881786 () Regex!9355)

(declare-fun e!1881783 () Regex!9355)

(assert (=> b!2994199 (= e!1881786 e!1881783)))

(declare-fun lt!1041080 () Regex!9355)

(declare-fun lt!1041076 () Regex!9355)

(declare-fun call!200541 () Bool)

(declare-fun bm!200536 () Bool)

(assert (=> bm!200536 (= call!200541 (isEmptyLang!447 (ite c!492339 lt!1041080 lt!1041076)))))

(declare-fun b!2994200 () Bool)

(declare-fun e!1881785 () Regex!9355)

(assert (=> b!2994200 (= e!1881785 lt!1041079)))

(declare-fun b!2994201 () Bool)

(assert (=> b!2994201 (= e!1881789 EmptyLang!9355)))

(declare-fun b!2994202 () Bool)

(declare-fun e!1881787 () Regex!9355)

(assert (=> b!2994202 (= e!1881787 (Star!9355 lt!1041077))))

(declare-fun bm!200537 () Bool)

(assert (=> bm!200537 (= call!200542 call!200540)))

(declare-fun bm!200538 () Bool)

(declare-fun call!200546 () Regex!9355)

(assert (=> bm!200538 (= call!200546 (simplify!346 (ite c!492349 (reg!9684 (ite c!492057 (reg!9684 (reg!9684 r!17423)) (ite c!492047 (regTwo!19223 (reg!9684 r!17423)) (regOne!19222 (reg!9684 r!17423))))) (ite c!492339 (regTwo!19223 (ite c!492057 (reg!9684 (reg!9684 r!17423)) (ite c!492047 (regTwo!19223 (reg!9684 r!17423)) (regOne!19222 (reg!9684 r!17423))))) (regOne!19222 (ite c!492057 (reg!9684 (reg!9684 r!17423)) (ite c!492047 (regTwo!19223 (reg!9684 r!17423)) (regOne!19222 (reg!9684 r!17423)))))))))))

(declare-fun b!2994203 () Bool)

(declare-fun e!1881788 () Regex!9355)

(assert (=> b!2994203 (= e!1881788 EmptyExpr!9355)))

(declare-fun d!845311 () Bool)

(assert (=> d!845311 e!1881791))

(declare-fun res!1234950 () Bool)

(assert (=> d!845311 (=> (not res!1234950) (not e!1881791))))

(assert (=> d!845311 (= res!1234950 (validRegex!4088 lt!1041075))))

(assert (=> d!845311 (= lt!1041075 e!1881789)))

(declare-fun c!492346 () Bool)

(assert (=> d!845311 (= c!492346 ((_ is EmptyLang!9355) (ite c!492057 (reg!9684 (reg!9684 r!17423)) (ite c!492047 (regTwo!19223 (reg!9684 r!17423)) (regOne!19222 (reg!9684 r!17423))))))))

(assert (=> d!845311 (validRegex!4088 (ite c!492057 (reg!9684 (reg!9684 r!17423)) (ite c!492047 (regTwo!19223 (reg!9684 r!17423)) (regOne!19222 (reg!9684 r!17423)))))))

(assert (=> d!845311 (= (simplify!346 (ite c!492057 (reg!9684 (reg!9684 r!17423)) (ite c!492047 (regTwo!19223 (reg!9684 r!17423)) (regOne!19222 (reg!9684 r!17423))))) lt!1041075)))

(declare-fun b!2994204 () Bool)

(declare-fun e!1881792 () Bool)

(assert (=> b!2994204 (= e!1881792 call!200545)))

(declare-fun b!2994205 () Bool)

(assert (=> b!2994205 (= e!1881783 e!1881794)))

(declare-fun call!200544 () Regex!9355)

(assert (=> b!2994205 (= lt!1041076 call!200544)))

(declare-fun call!200543 () Regex!9355)

(assert (=> b!2994205 (= lt!1041078 call!200543)))

(declare-fun res!1234951 () Bool)

(assert (=> b!2994205 (= res!1234951 call!200541)))

(assert (=> b!2994205 (=> res!1234951 e!1881795)))

(declare-fun c!492344 () Bool)

(assert (=> b!2994205 (= c!492344 e!1881795)))

(declare-fun b!2994206 () Bool)

(declare-fun e!1881796 () Regex!9355)

(assert (=> b!2994206 (= e!1881796 lt!1041080)))

(declare-fun b!2994207 () Bool)

(assert (=> b!2994207 (= e!1881793 lt!1041078)))

(declare-fun c!492343 () Bool)

(declare-fun b!2994208 () Bool)

(assert (=> b!2994208 (= c!492343 ((_ is EmptyExpr!9355) (ite c!492057 (reg!9684 (reg!9684 r!17423)) (ite c!492047 (regTwo!19223 (reg!9684 r!17423)) (regOne!19222 (reg!9684 r!17423))))))))

(assert (=> b!2994208 (= e!1881790 e!1881788)))

(declare-fun b!2994209 () Bool)

(declare-fun c!492348 () Bool)

(assert (=> b!2994209 (= c!492348 e!1881792)))

(declare-fun res!1234952 () Bool)

(assert (=> b!2994209 (=> res!1234952 e!1881792)))

(assert (=> b!2994209 (= res!1234952 call!200540)))

(assert (=> b!2994209 (= lt!1041077 call!200546)))

(assert (=> b!2994209 (= e!1881786 e!1881787)))

(declare-fun b!2994210 () Bool)

(assert (=> b!2994210 (= e!1881783 e!1881785)))

(assert (=> b!2994210 (= lt!1041080 call!200543)))

(assert (=> b!2994210 (= lt!1041079 call!200544)))

(declare-fun c!492340 () Bool)

(assert (=> b!2994210 (= c!492340 call!200541)))

(declare-fun b!2994211 () Bool)

(assert (=> b!2994211 (= e!1881784 (Concat!14676 lt!1041076 lt!1041078))))

(declare-fun bm!200539 () Bool)

(assert (=> bm!200539 (= call!200545 (isEmptyExpr!464 (ite c!492349 lt!1041077 lt!1041078)))))

(declare-fun b!2994212 () Bool)

(declare-fun c!492347 () Bool)

(assert (=> b!2994212 (= c!492347 (isEmptyExpr!464 lt!1041076))))

(assert (=> b!2994212 (= e!1881794 e!1881793)))

(declare-fun b!2994213 () Bool)

(assert (=> b!2994213 (= e!1881788 e!1881786)))

(assert (=> b!2994213 (= c!492349 ((_ is Star!9355) (ite c!492057 (reg!9684 (reg!9684 r!17423)) (ite c!492047 (regTwo!19223 (reg!9684 r!17423)) (regOne!19222 (reg!9684 r!17423))))))))

(declare-fun b!2994214 () Bool)

(assert (=> b!2994214 (= e!1881787 EmptyExpr!9355)))

(declare-fun b!2994215 () Bool)

(declare-fun c!492345 () Bool)

(assert (=> b!2994215 (= c!492345 call!200542)))

(assert (=> b!2994215 (= e!1881785 e!1881796)))

(declare-fun bm!200540 () Bool)

(assert (=> bm!200540 (= call!200544 call!200546)))

(declare-fun b!2994216 () Bool)

(assert (=> b!2994216 (= e!1881784 lt!1041076)))

(declare-fun b!2994217 () Bool)

(assert (=> b!2994217 (= e!1881790 (ite c!492057 (reg!9684 (reg!9684 r!17423)) (ite c!492047 (regTwo!19223 (reg!9684 r!17423)) (regOne!19222 (reg!9684 r!17423)))))))

(declare-fun b!2994218 () Bool)

(assert (=> b!2994218 (= e!1881796 (Union!9355 lt!1041080 lt!1041079))))

(declare-fun bm!200541 () Bool)

(assert (=> bm!200541 (= call!200543 (simplify!346 (ite c!492339 (regOne!19223 (ite c!492057 (reg!9684 (reg!9684 r!17423)) (ite c!492047 (regTwo!19223 (reg!9684 r!17423)) (regOne!19222 (reg!9684 r!17423))))) (regTwo!19222 (ite c!492057 (reg!9684 (reg!9684 r!17423)) (ite c!492047 (regTwo!19223 (reg!9684 r!17423)) (regOne!19222 (reg!9684 r!17423))))))))))

(assert (= (and d!845311 c!492346) b!2994201))

(assert (= (and d!845311 (not c!492346)) b!2994195))

(assert (= (and b!2994195 c!492342) b!2994217))

(assert (= (and b!2994195 (not c!492342)) b!2994208))

(assert (= (and b!2994208 c!492343) b!2994203))

(assert (= (and b!2994208 (not c!492343)) b!2994213))

(assert (= (and b!2994213 c!492349) b!2994209))

(assert (= (and b!2994213 (not c!492349)) b!2994199))

(assert (= (and b!2994209 (not res!1234952)) b!2994204))

(assert (= (and b!2994209 c!492348) b!2994214))

(assert (= (and b!2994209 (not c!492348)) b!2994202))

(assert (= (and b!2994199 c!492339) b!2994210))

(assert (= (and b!2994199 (not c!492339)) b!2994205))

(assert (= (and b!2994210 c!492340) b!2994200))

(assert (= (and b!2994210 (not c!492340)) b!2994215))

(assert (= (and b!2994215 c!492345) b!2994206))

(assert (= (and b!2994215 (not c!492345)) b!2994218))

(assert (= (and b!2994205 (not res!1234951)) b!2994197))

(assert (= (and b!2994205 c!492344) b!2994196))

(assert (= (and b!2994205 (not c!492344)) b!2994212))

(assert (= (and b!2994212 c!492347) b!2994207))

(assert (= (and b!2994212 (not c!492347)) b!2994198))

(assert (= (and b!2994198 c!492341) b!2994216))

(assert (= (and b!2994198 (not c!492341)) b!2994211))

(assert (= (or b!2994210 b!2994205) bm!200541))

(assert (= (or b!2994210 b!2994205) bm!200540))

(assert (= (or b!2994210 b!2994205) bm!200536))

(assert (= (or b!2994215 b!2994197) bm!200537))

(assert (= (or b!2994204 b!2994198) bm!200539))

(assert (= (or b!2994209 bm!200540) bm!200538))

(assert (= (or b!2994209 bm!200537) bm!200535))

(assert (= (and d!845311 res!1234950) b!2994194))

(declare-fun m!3349309 () Bool)

(assert (=> b!2994212 m!3349309))

(declare-fun m!3349311 () Bool)

(assert (=> d!845311 m!3349311))

(declare-fun m!3349313 () Bool)

(assert (=> d!845311 m!3349313))

(declare-fun m!3349315 () Bool)

(assert (=> bm!200539 m!3349315))

(declare-fun m!3349317 () Bool)

(assert (=> bm!200538 m!3349317))

(declare-fun m!3349319 () Bool)

(assert (=> bm!200535 m!3349319))

(declare-fun m!3349321 () Bool)

(assert (=> b!2994194 m!3349321))

(declare-fun m!3349323 () Bool)

(assert (=> b!2994194 m!3349323))

(declare-fun m!3349325 () Bool)

(assert (=> bm!200536 m!3349325))

(declare-fun m!3349327 () Bool)

(assert (=> bm!200541 m!3349327))

(assert (=> bm!200352 d!845311))

(declare-fun e!1881797 () Bool)

(assert (=> b!2993288 (= tp!951403 e!1881797)))

(declare-fun b!2994221 () Bool)

(declare-fun tp!951417 () Bool)

(assert (=> b!2994221 (= e!1881797 tp!951417)))

(declare-fun b!2994222 () Bool)

(declare-fun tp!951415 () Bool)

(declare-fun tp!951418 () Bool)

(assert (=> b!2994222 (= e!1881797 (and tp!951415 tp!951418))))

(declare-fun b!2994219 () Bool)

(assert (=> b!2994219 (= e!1881797 tp_is_empty!16273)))

(declare-fun b!2994220 () Bool)

(declare-fun tp!951416 () Bool)

(declare-fun tp!951414 () Bool)

(assert (=> b!2994220 (= e!1881797 (and tp!951416 tp!951414))))

(assert (= (and b!2993288 ((_ is ElementMatch!9355) (regOne!19222 (regTwo!19223 r!17423)))) b!2994219))

(assert (= (and b!2993288 ((_ is Concat!14676) (regOne!19222 (regTwo!19223 r!17423)))) b!2994220))

(assert (= (and b!2993288 ((_ is Star!9355) (regOne!19222 (regTwo!19223 r!17423)))) b!2994221))

(assert (= (and b!2993288 ((_ is Union!9355) (regOne!19222 (regTwo!19223 r!17423)))) b!2994222))

(declare-fun e!1881805 () Bool)

(assert (=> b!2993288 (= tp!951401 e!1881805)))

(declare-fun b!2994239 () Bool)

(declare-fun tp!951422 () Bool)

(assert (=> b!2994239 (= e!1881805 tp!951422)))

(declare-fun b!2994240 () Bool)

(declare-fun tp!951420 () Bool)

(declare-fun tp!951423 () Bool)

(assert (=> b!2994240 (= e!1881805 (and tp!951420 tp!951423))))

(declare-fun b!2994237 () Bool)

(assert (=> b!2994237 (= e!1881805 tp_is_empty!16273)))

(declare-fun b!2994238 () Bool)

(declare-fun tp!951421 () Bool)

(declare-fun tp!951419 () Bool)

(assert (=> b!2994238 (= e!1881805 (and tp!951421 tp!951419))))

(assert (= (and b!2993288 ((_ is ElementMatch!9355) (regTwo!19222 (regTwo!19223 r!17423)))) b!2994237))

(assert (= (and b!2993288 ((_ is Concat!14676) (regTwo!19222 (regTwo!19223 r!17423)))) b!2994238))

(assert (= (and b!2993288 ((_ is Star!9355) (regTwo!19222 (regTwo!19223 r!17423)))) b!2994239))

(assert (= (and b!2993288 ((_ is Union!9355) (regTwo!19222 (regTwo!19223 r!17423)))) b!2994240))

(declare-fun e!1881806 () Bool)

(assert (=> b!2993292 (= tp!951408 e!1881806)))

(declare-fun b!2994243 () Bool)

(declare-fun tp!951427 () Bool)

(assert (=> b!2994243 (= e!1881806 tp!951427)))

(declare-fun b!2994244 () Bool)

(declare-fun tp!951425 () Bool)

(declare-fun tp!951428 () Bool)

(assert (=> b!2994244 (= e!1881806 (and tp!951425 tp!951428))))

(declare-fun b!2994241 () Bool)

(assert (=> b!2994241 (= e!1881806 tp_is_empty!16273)))

(declare-fun b!2994242 () Bool)

(declare-fun tp!951426 () Bool)

(declare-fun tp!951424 () Bool)

(assert (=> b!2994242 (= e!1881806 (and tp!951426 tp!951424))))

(assert (= (and b!2993292 ((_ is ElementMatch!9355) (regOne!19222 (reg!9684 r!17423)))) b!2994241))

(assert (= (and b!2993292 ((_ is Concat!14676) (regOne!19222 (reg!9684 r!17423)))) b!2994242))

(assert (= (and b!2993292 ((_ is Star!9355) (regOne!19222 (reg!9684 r!17423)))) b!2994243))

(assert (= (and b!2993292 ((_ is Union!9355) (regOne!19222 (reg!9684 r!17423)))) b!2994244))

(declare-fun e!1881807 () Bool)

(assert (=> b!2993292 (= tp!951406 e!1881807)))

(declare-fun b!2994247 () Bool)

(declare-fun tp!951432 () Bool)

(assert (=> b!2994247 (= e!1881807 tp!951432)))

(declare-fun b!2994248 () Bool)

(declare-fun tp!951430 () Bool)

(declare-fun tp!951433 () Bool)

(assert (=> b!2994248 (= e!1881807 (and tp!951430 tp!951433))))

(declare-fun b!2994245 () Bool)

(assert (=> b!2994245 (= e!1881807 tp_is_empty!16273)))

(declare-fun b!2994246 () Bool)

(declare-fun tp!951431 () Bool)

(declare-fun tp!951429 () Bool)

(assert (=> b!2994246 (= e!1881807 (and tp!951431 tp!951429))))

(assert (= (and b!2993292 ((_ is ElementMatch!9355) (regTwo!19222 (reg!9684 r!17423)))) b!2994245))

(assert (= (and b!2993292 ((_ is Concat!14676) (regTwo!19222 (reg!9684 r!17423)))) b!2994246))

(assert (= (and b!2993292 ((_ is Star!9355) (regTwo!19222 (reg!9684 r!17423)))) b!2994247))

(assert (= (and b!2993292 ((_ is Union!9355) (regTwo!19222 (reg!9684 r!17423)))) b!2994248))

(declare-fun e!1881808 () Bool)

(assert (=> b!2993289 (= tp!951404 e!1881808)))

(declare-fun b!2994251 () Bool)

(declare-fun tp!951437 () Bool)

(assert (=> b!2994251 (= e!1881808 tp!951437)))

(declare-fun b!2994252 () Bool)

(declare-fun tp!951435 () Bool)

(declare-fun tp!951438 () Bool)

(assert (=> b!2994252 (= e!1881808 (and tp!951435 tp!951438))))

(declare-fun b!2994249 () Bool)

(assert (=> b!2994249 (= e!1881808 tp_is_empty!16273)))

(declare-fun b!2994250 () Bool)

(declare-fun tp!951436 () Bool)

(declare-fun tp!951434 () Bool)

(assert (=> b!2994250 (= e!1881808 (and tp!951436 tp!951434))))

(assert (= (and b!2993289 ((_ is ElementMatch!9355) (reg!9684 (regTwo!19223 r!17423)))) b!2994249))

(assert (= (and b!2993289 ((_ is Concat!14676) (reg!9684 (regTwo!19223 r!17423)))) b!2994250))

(assert (= (and b!2993289 ((_ is Star!9355) (reg!9684 (regTwo!19223 r!17423)))) b!2994251))

(assert (= (and b!2993289 ((_ is Union!9355) (reg!9684 (regTwo!19223 r!17423)))) b!2994252))

(declare-fun e!1881809 () Bool)

(assert (=> b!2993294 (= tp!951407 e!1881809)))

(declare-fun b!2994255 () Bool)

(declare-fun tp!951442 () Bool)

(assert (=> b!2994255 (= e!1881809 tp!951442)))

(declare-fun b!2994256 () Bool)

(declare-fun tp!951440 () Bool)

(declare-fun tp!951443 () Bool)

(assert (=> b!2994256 (= e!1881809 (and tp!951440 tp!951443))))

(declare-fun b!2994253 () Bool)

(assert (=> b!2994253 (= e!1881809 tp_is_empty!16273)))

(declare-fun b!2994254 () Bool)

(declare-fun tp!951441 () Bool)

(declare-fun tp!951439 () Bool)

(assert (=> b!2994254 (= e!1881809 (and tp!951441 tp!951439))))

(assert (= (and b!2993294 ((_ is ElementMatch!9355) (regOne!19223 (reg!9684 r!17423)))) b!2994253))

(assert (= (and b!2993294 ((_ is Concat!14676) (regOne!19223 (reg!9684 r!17423)))) b!2994254))

(assert (= (and b!2993294 ((_ is Star!9355) (regOne!19223 (reg!9684 r!17423)))) b!2994255))

(assert (= (and b!2993294 ((_ is Union!9355) (regOne!19223 (reg!9684 r!17423)))) b!2994256))

(declare-fun e!1881810 () Bool)

(assert (=> b!2993294 (= tp!951410 e!1881810)))

(declare-fun b!2994259 () Bool)

(declare-fun tp!951447 () Bool)

(assert (=> b!2994259 (= e!1881810 tp!951447)))

(declare-fun b!2994260 () Bool)

(declare-fun tp!951445 () Bool)

(declare-fun tp!951448 () Bool)

(assert (=> b!2994260 (= e!1881810 (and tp!951445 tp!951448))))

(declare-fun b!2994257 () Bool)

(assert (=> b!2994257 (= e!1881810 tp_is_empty!16273)))

(declare-fun b!2994258 () Bool)

(declare-fun tp!951446 () Bool)

(declare-fun tp!951444 () Bool)

(assert (=> b!2994258 (= e!1881810 (and tp!951446 tp!951444))))

(assert (= (and b!2993294 ((_ is ElementMatch!9355) (regTwo!19223 (reg!9684 r!17423)))) b!2994257))

(assert (= (and b!2993294 ((_ is Concat!14676) (regTwo!19223 (reg!9684 r!17423)))) b!2994258))

(assert (= (and b!2993294 ((_ is Star!9355) (regTwo!19223 (reg!9684 r!17423)))) b!2994259))

(assert (= (and b!2993294 ((_ is Union!9355) (regTwo!19223 (reg!9684 r!17423)))) b!2994260))

(declare-fun e!1881811 () Bool)

(assert (=> b!2993280 (= tp!951393 e!1881811)))

(declare-fun b!2994263 () Bool)

(declare-fun tp!951452 () Bool)

(assert (=> b!2994263 (= e!1881811 tp!951452)))

(declare-fun b!2994264 () Bool)

(declare-fun tp!951450 () Bool)

(declare-fun tp!951453 () Bool)

(assert (=> b!2994264 (= e!1881811 (and tp!951450 tp!951453))))

(declare-fun b!2994261 () Bool)

(assert (=> b!2994261 (= e!1881811 tp_is_empty!16273)))

(declare-fun b!2994262 () Bool)

(declare-fun tp!951451 () Bool)

(declare-fun tp!951449 () Bool)

(assert (=> b!2994262 (= e!1881811 (and tp!951451 tp!951449))))

(assert (= (and b!2993280 ((_ is ElementMatch!9355) (regOne!19222 (regTwo!19222 r!17423)))) b!2994261))

(assert (= (and b!2993280 ((_ is Concat!14676) (regOne!19222 (regTwo!19222 r!17423)))) b!2994262))

(assert (= (and b!2993280 ((_ is Star!9355) (regOne!19222 (regTwo!19222 r!17423)))) b!2994263))

(assert (= (and b!2993280 ((_ is Union!9355) (regOne!19222 (regTwo!19222 r!17423)))) b!2994264))

(declare-fun e!1881817 () Bool)

(assert (=> b!2993280 (= tp!951391 e!1881817)))

(declare-fun b!2994277 () Bool)

(declare-fun tp!951457 () Bool)

(assert (=> b!2994277 (= e!1881817 tp!951457)))

(declare-fun b!2994278 () Bool)

(declare-fun tp!951455 () Bool)

(declare-fun tp!951458 () Bool)

(assert (=> b!2994278 (= e!1881817 (and tp!951455 tp!951458))))

(declare-fun b!2994275 () Bool)

(assert (=> b!2994275 (= e!1881817 tp_is_empty!16273)))

(declare-fun b!2994276 () Bool)

(declare-fun tp!951456 () Bool)

(declare-fun tp!951454 () Bool)

(assert (=> b!2994276 (= e!1881817 (and tp!951456 tp!951454))))

(assert (= (and b!2993280 ((_ is ElementMatch!9355) (regTwo!19222 (regTwo!19222 r!17423)))) b!2994275))

(assert (= (and b!2993280 ((_ is Concat!14676) (regTwo!19222 (regTwo!19222 r!17423)))) b!2994276))

(assert (= (and b!2993280 ((_ is Star!9355) (regTwo!19222 (regTwo!19222 r!17423)))) b!2994277))

(assert (= (and b!2993280 ((_ is Union!9355) (regTwo!19222 (regTwo!19222 r!17423)))) b!2994278))

(declare-fun e!1881818 () Bool)

(assert (=> b!2993293 (= tp!951409 e!1881818)))

(declare-fun b!2994281 () Bool)

(declare-fun tp!951462 () Bool)

(assert (=> b!2994281 (= e!1881818 tp!951462)))

(declare-fun b!2994282 () Bool)

(declare-fun tp!951460 () Bool)

(declare-fun tp!951463 () Bool)

(assert (=> b!2994282 (= e!1881818 (and tp!951460 tp!951463))))

(declare-fun b!2994279 () Bool)

(assert (=> b!2994279 (= e!1881818 tp_is_empty!16273)))

(declare-fun b!2994280 () Bool)

(declare-fun tp!951461 () Bool)

(declare-fun tp!951459 () Bool)

(assert (=> b!2994280 (= e!1881818 (and tp!951461 tp!951459))))

(assert (= (and b!2993293 ((_ is ElementMatch!9355) (reg!9684 (reg!9684 r!17423)))) b!2994279))

(assert (= (and b!2993293 ((_ is Concat!14676) (reg!9684 (reg!9684 r!17423)))) b!2994280))

(assert (= (and b!2993293 ((_ is Star!9355) (reg!9684 (reg!9684 r!17423)))) b!2994281))

(assert (= (and b!2993293 ((_ is Union!9355) (reg!9684 (reg!9684 r!17423)))) b!2994282))

(declare-fun e!1881819 () Bool)

(assert (=> b!2993284 (= tp!951398 e!1881819)))

(declare-fun b!2994285 () Bool)

(declare-fun tp!951467 () Bool)

(assert (=> b!2994285 (= e!1881819 tp!951467)))

(declare-fun b!2994286 () Bool)

(declare-fun tp!951465 () Bool)

(declare-fun tp!951468 () Bool)

(assert (=> b!2994286 (= e!1881819 (and tp!951465 tp!951468))))

(declare-fun b!2994283 () Bool)

(assert (=> b!2994283 (= e!1881819 tp_is_empty!16273)))

(declare-fun b!2994284 () Bool)

(declare-fun tp!951466 () Bool)

(declare-fun tp!951464 () Bool)

(assert (=> b!2994284 (= e!1881819 (and tp!951466 tp!951464))))

(assert (= (and b!2993284 ((_ is ElementMatch!9355) (regOne!19222 (regOne!19223 r!17423)))) b!2994283))

(assert (= (and b!2993284 ((_ is Concat!14676) (regOne!19222 (regOne!19223 r!17423)))) b!2994284))

(assert (= (and b!2993284 ((_ is Star!9355) (regOne!19222 (regOne!19223 r!17423)))) b!2994285))

(assert (= (and b!2993284 ((_ is Union!9355) (regOne!19222 (regOne!19223 r!17423)))) b!2994286))

(declare-fun e!1881820 () Bool)

(assert (=> b!2993284 (= tp!951396 e!1881820)))

(declare-fun b!2994289 () Bool)

(declare-fun tp!951472 () Bool)

(assert (=> b!2994289 (= e!1881820 tp!951472)))

(declare-fun b!2994290 () Bool)

(declare-fun tp!951470 () Bool)

(declare-fun tp!951473 () Bool)

(assert (=> b!2994290 (= e!1881820 (and tp!951470 tp!951473))))

(declare-fun b!2994287 () Bool)

(assert (=> b!2994287 (= e!1881820 tp_is_empty!16273)))

(declare-fun b!2994288 () Bool)

(declare-fun tp!951471 () Bool)

(declare-fun tp!951469 () Bool)

(assert (=> b!2994288 (= e!1881820 (and tp!951471 tp!951469))))

(assert (= (and b!2993284 ((_ is ElementMatch!9355) (regTwo!19222 (regOne!19223 r!17423)))) b!2994287))

(assert (= (and b!2993284 ((_ is Concat!14676) (regTwo!19222 (regOne!19223 r!17423)))) b!2994288))

(assert (= (and b!2993284 ((_ is Star!9355) (regTwo!19222 (regOne!19223 r!17423)))) b!2994289))

(assert (= (and b!2993284 ((_ is Union!9355) (regTwo!19222 (regOne!19223 r!17423)))) b!2994290))

(declare-fun e!1881828 () Bool)

(assert (=> b!2993281 (= tp!951394 e!1881828)))

(declare-fun b!2994302 () Bool)

(declare-fun tp!951477 () Bool)

(assert (=> b!2994302 (= e!1881828 tp!951477)))

(declare-fun b!2994303 () Bool)

(declare-fun tp!951475 () Bool)

(declare-fun tp!951478 () Bool)

(assert (=> b!2994303 (= e!1881828 (and tp!951475 tp!951478))))

(declare-fun b!2994300 () Bool)

(assert (=> b!2994300 (= e!1881828 tp_is_empty!16273)))

(declare-fun b!2994301 () Bool)

(declare-fun tp!951476 () Bool)

(declare-fun tp!951474 () Bool)

(assert (=> b!2994301 (= e!1881828 (and tp!951476 tp!951474))))

(assert (= (and b!2993281 ((_ is ElementMatch!9355) (reg!9684 (regTwo!19222 r!17423)))) b!2994300))

(assert (= (and b!2993281 ((_ is Concat!14676) (reg!9684 (regTwo!19222 r!17423)))) b!2994301))

(assert (= (and b!2993281 ((_ is Star!9355) (reg!9684 (regTwo!19222 r!17423)))) b!2994302))

(assert (= (and b!2993281 ((_ is Union!9355) (reg!9684 (regTwo!19222 r!17423)))) b!2994303))

(declare-fun e!1881829 () Bool)

(assert (=> b!2993286 (= tp!951397 e!1881829)))

(declare-fun b!2994306 () Bool)

(declare-fun tp!951482 () Bool)

(assert (=> b!2994306 (= e!1881829 tp!951482)))

(declare-fun b!2994307 () Bool)

(declare-fun tp!951480 () Bool)

(declare-fun tp!951483 () Bool)

(assert (=> b!2994307 (= e!1881829 (and tp!951480 tp!951483))))

(declare-fun b!2994304 () Bool)

(assert (=> b!2994304 (= e!1881829 tp_is_empty!16273)))

(declare-fun b!2994305 () Bool)

(declare-fun tp!951481 () Bool)

(declare-fun tp!951479 () Bool)

(assert (=> b!2994305 (= e!1881829 (and tp!951481 tp!951479))))

(assert (= (and b!2993286 ((_ is ElementMatch!9355) (regOne!19223 (regOne!19223 r!17423)))) b!2994304))

(assert (= (and b!2993286 ((_ is Concat!14676) (regOne!19223 (regOne!19223 r!17423)))) b!2994305))

(assert (= (and b!2993286 ((_ is Star!9355) (regOne!19223 (regOne!19223 r!17423)))) b!2994306))

(assert (= (and b!2993286 ((_ is Union!9355) (regOne!19223 (regOne!19223 r!17423)))) b!2994307))

(declare-fun e!1881830 () Bool)

(assert (=> b!2993286 (= tp!951400 e!1881830)))

(declare-fun b!2994310 () Bool)

(declare-fun tp!951487 () Bool)

(assert (=> b!2994310 (= e!1881830 tp!951487)))

(declare-fun b!2994311 () Bool)

(declare-fun tp!951485 () Bool)

(declare-fun tp!951488 () Bool)

(assert (=> b!2994311 (= e!1881830 (and tp!951485 tp!951488))))

(declare-fun b!2994308 () Bool)

(assert (=> b!2994308 (= e!1881830 tp_is_empty!16273)))

(declare-fun b!2994309 () Bool)

(declare-fun tp!951486 () Bool)

(declare-fun tp!951484 () Bool)

(assert (=> b!2994309 (= e!1881830 (and tp!951486 tp!951484))))

(assert (= (and b!2993286 ((_ is ElementMatch!9355) (regTwo!19223 (regOne!19223 r!17423)))) b!2994308))

(assert (= (and b!2993286 ((_ is Concat!14676) (regTwo!19223 (regOne!19223 r!17423)))) b!2994309))

(assert (= (and b!2993286 ((_ is Star!9355) (regTwo!19223 (regOne!19223 r!17423)))) b!2994310))

(assert (= (and b!2993286 ((_ is Union!9355) (regTwo!19223 (regOne!19223 r!17423)))) b!2994311))

(declare-fun e!1881831 () Bool)

(assert (=> b!2993285 (= tp!951399 e!1881831)))

(declare-fun b!2994314 () Bool)

(declare-fun tp!951492 () Bool)

(assert (=> b!2994314 (= e!1881831 tp!951492)))

(declare-fun b!2994315 () Bool)

(declare-fun tp!951490 () Bool)

(declare-fun tp!951493 () Bool)

(assert (=> b!2994315 (= e!1881831 (and tp!951490 tp!951493))))

(declare-fun b!2994312 () Bool)

(assert (=> b!2994312 (= e!1881831 tp_is_empty!16273)))

(declare-fun b!2994313 () Bool)

(declare-fun tp!951491 () Bool)

(declare-fun tp!951489 () Bool)

(assert (=> b!2994313 (= e!1881831 (and tp!951491 tp!951489))))

(assert (= (and b!2993285 ((_ is ElementMatch!9355) (reg!9684 (regOne!19223 r!17423)))) b!2994312))

(assert (= (and b!2993285 ((_ is Concat!14676) (reg!9684 (regOne!19223 r!17423)))) b!2994313))

(assert (= (and b!2993285 ((_ is Star!9355) (reg!9684 (regOne!19223 r!17423)))) b!2994314))

(assert (= (and b!2993285 ((_ is Union!9355) (reg!9684 (regOne!19223 r!17423)))) b!2994315))

(declare-fun e!1881832 () Bool)

(assert (=> b!2993276 (= tp!951388 e!1881832)))

(declare-fun b!2994318 () Bool)

(declare-fun tp!951497 () Bool)

(assert (=> b!2994318 (= e!1881832 tp!951497)))

(declare-fun b!2994319 () Bool)

(declare-fun tp!951495 () Bool)

(declare-fun tp!951498 () Bool)

(assert (=> b!2994319 (= e!1881832 (and tp!951495 tp!951498))))

(declare-fun b!2994316 () Bool)

(assert (=> b!2994316 (= e!1881832 tp_is_empty!16273)))

(declare-fun b!2994317 () Bool)

(declare-fun tp!951496 () Bool)

(declare-fun tp!951494 () Bool)

(assert (=> b!2994317 (= e!1881832 (and tp!951496 tp!951494))))

(assert (= (and b!2993276 ((_ is ElementMatch!9355) (regOne!19222 (regOne!19222 r!17423)))) b!2994316))

(assert (= (and b!2993276 ((_ is Concat!14676) (regOne!19222 (regOne!19222 r!17423)))) b!2994317))

(assert (= (and b!2993276 ((_ is Star!9355) (regOne!19222 (regOne!19222 r!17423)))) b!2994318))

(assert (= (and b!2993276 ((_ is Union!9355) (regOne!19222 (regOne!19222 r!17423)))) b!2994319))

(declare-fun e!1881833 () Bool)

(assert (=> b!2993276 (= tp!951386 e!1881833)))

(declare-fun b!2994322 () Bool)

(declare-fun tp!951502 () Bool)

(assert (=> b!2994322 (= e!1881833 tp!951502)))

(declare-fun b!2994323 () Bool)

(declare-fun tp!951500 () Bool)

(declare-fun tp!951503 () Bool)

(assert (=> b!2994323 (= e!1881833 (and tp!951500 tp!951503))))

(declare-fun b!2994320 () Bool)

(assert (=> b!2994320 (= e!1881833 tp_is_empty!16273)))

(declare-fun b!2994321 () Bool)

(declare-fun tp!951501 () Bool)

(declare-fun tp!951499 () Bool)

(assert (=> b!2994321 (= e!1881833 (and tp!951501 tp!951499))))

(assert (= (and b!2993276 ((_ is ElementMatch!9355) (regTwo!19222 (regOne!19222 r!17423)))) b!2994320))

(assert (= (and b!2993276 ((_ is Concat!14676) (regTwo!19222 (regOne!19222 r!17423)))) b!2994321))

(assert (= (and b!2993276 ((_ is Star!9355) (regTwo!19222 (regOne!19222 r!17423)))) b!2994322))

(assert (= (and b!2993276 ((_ is Union!9355) (regTwo!19222 (regOne!19222 r!17423)))) b!2994323))

(declare-fun e!1881835 () Bool)

(assert (=> b!2993290 (= tp!951402 e!1881835)))

(declare-fun b!2994330 () Bool)

(declare-fun tp!951512 () Bool)

(assert (=> b!2994330 (= e!1881835 tp!951512)))

(declare-fun b!2994331 () Bool)

(declare-fun tp!951508 () Bool)

(declare-fun tp!951513 () Bool)

(assert (=> b!2994331 (= e!1881835 (and tp!951508 tp!951513))))

(declare-fun b!2994326 () Bool)

(assert (=> b!2994326 (= e!1881835 tp_is_empty!16273)))

(declare-fun b!2994328 () Bool)

(declare-fun tp!951510 () Bool)

(declare-fun tp!951506 () Bool)

(assert (=> b!2994328 (= e!1881835 (and tp!951510 tp!951506))))

(assert (= (and b!2993290 ((_ is ElementMatch!9355) (regOne!19223 (regTwo!19223 r!17423)))) b!2994326))

(assert (= (and b!2993290 ((_ is Concat!14676) (regOne!19223 (regTwo!19223 r!17423)))) b!2994328))

(assert (= (and b!2993290 ((_ is Star!9355) (regOne!19223 (regTwo!19223 r!17423)))) b!2994330))

(assert (= (and b!2993290 ((_ is Union!9355) (regOne!19223 (regTwo!19223 r!17423)))) b!2994331))

(declare-fun e!1881836 () Bool)

(assert (=> b!2993290 (= tp!951405 e!1881836)))

(declare-fun b!2994334 () Bool)

(declare-fun tp!951517 () Bool)

(assert (=> b!2994334 (= e!1881836 tp!951517)))

(declare-fun b!2994335 () Bool)

(declare-fun tp!951515 () Bool)

(declare-fun tp!951518 () Bool)

(assert (=> b!2994335 (= e!1881836 (and tp!951515 tp!951518))))

(declare-fun b!2994332 () Bool)

(assert (=> b!2994332 (= e!1881836 tp_is_empty!16273)))

(declare-fun b!2994333 () Bool)

(declare-fun tp!951516 () Bool)

(declare-fun tp!951514 () Bool)

(assert (=> b!2994333 (= e!1881836 (and tp!951516 tp!951514))))

(assert (= (and b!2993290 ((_ is ElementMatch!9355) (regTwo!19223 (regTwo!19223 r!17423)))) b!2994332))

(assert (= (and b!2993290 ((_ is Concat!14676) (regTwo!19223 (regTwo!19223 r!17423)))) b!2994333))

(assert (= (and b!2993290 ((_ is Star!9355) (regTwo!19223 (regTwo!19223 r!17423)))) b!2994334))

(assert (= (and b!2993290 ((_ is Union!9355) (regTwo!19223 (regTwo!19223 r!17423)))) b!2994335))

(declare-fun e!1881838 () Bool)

(assert (=> b!2993278 (= tp!951387 e!1881838)))

(declare-fun b!2994342 () Bool)

(declare-fun tp!951527 () Bool)

(assert (=> b!2994342 (= e!1881838 tp!951527)))

(declare-fun b!2994343 () Bool)

(declare-fun tp!951525 () Bool)

(declare-fun tp!951528 () Bool)

(assert (=> b!2994343 (= e!1881838 (and tp!951525 tp!951528))))

(declare-fun b!2994340 () Bool)

(assert (=> b!2994340 (= e!1881838 tp_is_empty!16273)))

(declare-fun b!2994341 () Bool)

(declare-fun tp!951526 () Bool)

(declare-fun tp!951524 () Bool)

(assert (=> b!2994341 (= e!1881838 (and tp!951526 tp!951524))))

(assert (= (and b!2993278 ((_ is ElementMatch!9355) (regOne!19223 (regOne!19222 r!17423)))) b!2994340))

(assert (= (and b!2993278 ((_ is Concat!14676) (regOne!19223 (regOne!19222 r!17423)))) b!2994341))

(assert (= (and b!2993278 ((_ is Star!9355) (regOne!19223 (regOne!19222 r!17423)))) b!2994342))

(assert (= (and b!2993278 ((_ is Union!9355) (regOne!19223 (regOne!19222 r!17423)))) b!2994343))

(declare-fun e!1881840 () Bool)

(assert (=> b!2993278 (= tp!951390 e!1881840)))

(declare-fun b!2994350 () Bool)

(declare-fun tp!951537 () Bool)

(assert (=> b!2994350 (= e!1881840 tp!951537)))

(declare-fun b!2994351 () Bool)

(declare-fun tp!951535 () Bool)

(declare-fun tp!951538 () Bool)

(assert (=> b!2994351 (= e!1881840 (and tp!951535 tp!951538))))

(declare-fun b!2994348 () Bool)

(assert (=> b!2994348 (= e!1881840 tp_is_empty!16273)))

(declare-fun b!2994349 () Bool)

(declare-fun tp!951536 () Bool)

(declare-fun tp!951534 () Bool)

(assert (=> b!2994349 (= e!1881840 (and tp!951536 tp!951534))))

(assert (= (and b!2993278 ((_ is ElementMatch!9355) (regTwo!19223 (regOne!19222 r!17423)))) b!2994348))

(assert (= (and b!2993278 ((_ is Concat!14676) (regTwo!19223 (regOne!19222 r!17423)))) b!2994349))

(assert (= (and b!2993278 ((_ is Star!9355) (regTwo!19223 (regOne!19222 r!17423)))) b!2994350))

(assert (= (and b!2993278 ((_ is Union!9355) (regTwo!19223 (regOne!19222 r!17423)))) b!2994351))

(declare-fun e!1881842 () Bool)

(assert (=> b!2993277 (= tp!951389 e!1881842)))

(declare-fun b!2994358 () Bool)

(declare-fun tp!951547 () Bool)

(assert (=> b!2994358 (= e!1881842 tp!951547)))

(declare-fun b!2994359 () Bool)

(declare-fun tp!951545 () Bool)

(declare-fun tp!951548 () Bool)

(assert (=> b!2994359 (= e!1881842 (and tp!951545 tp!951548))))

(declare-fun b!2994356 () Bool)

(assert (=> b!2994356 (= e!1881842 tp_is_empty!16273)))

(declare-fun b!2994357 () Bool)

(declare-fun tp!951546 () Bool)

(declare-fun tp!951544 () Bool)

(assert (=> b!2994357 (= e!1881842 (and tp!951546 tp!951544))))

(assert (= (and b!2993277 ((_ is ElementMatch!9355) (reg!9684 (regOne!19222 r!17423)))) b!2994356))

(assert (= (and b!2993277 ((_ is Concat!14676) (reg!9684 (regOne!19222 r!17423)))) b!2994357))

(assert (= (and b!2993277 ((_ is Star!9355) (reg!9684 (regOne!19222 r!17423)))) b!2994358))

(assert (= (and b!2993277 ((_ is Union!9355) (reg!9684 (regOne!19222 r!17423)))) b!2994359))

(declare-fun e!1881844 () Bool)

(assert (=> b!2993282 (= tp!951392 e!1881844)))

(declare-fun b!2994366 () Bool)

(declare-fun tp!951557 () Bool)

(assert (=> b!2994366 (= e!1881844 tp!951557)))

(declare-fun b!2994367 () Bool)

(declare-fun tp!951555 () Bool)

(declare-fun tp!951558 () Bool)

(assert (=> b!2994367 (= e!1881844 (and tp!951555 tp!951558))))

(declare-fun b!2994364 () Bool)

(assert (=> b!2994364 (= e!1881844 tp_is_empty!16273)))

(declare-fun b!2994365 () Bool)

(declare-fun tp!951556 () Bool)

(declare-fun tp!951554 () Bool)

(assert (=> b!2994365 (= e!1881844 (and tp!951556 tp!951554))))

(assert (= (and b!2993282 ((_ is ElementMatch!9355) (regOne!19223 (regTwo!19222 r!17423)))) b!2994364))

(assert (= (and b!2993282 ((_ is Concat!14676) (regOne!19223 (regTwo!19222 r!17423)))) b!2994365))

(assert (= (and b!2993282 ((_ is Star!9355) (regOne!19223 (regTwo!19222 r!17423)))) b!2994366))

(assert (= (and b!2993282 ((_ is Union!9355) (regOne!19223 (regTwo!19222 r!17423)))) b!2994367))

(declare-fun e!1881846 () Bool)

(assert (=> b!2993282 (= tp!951395 e!1881846)))

(declare-fun b!2994374 () Bool)

(declare-fun tp!951567 () Bool)

(assert (=> b!2994374 (= e!1881846 tp!951567)))

(declare-fun b!2994375 () Bool)

(declare-fun tp!951565 () Bool)

(declare-fun tp!951568 () Bool)

(assert (=> b!2994375 (= e!1881846 (and tp!951565 tp!951568))))

(declare-fun b!2994372 () Bool)

(assert (=> b!2994372 (= e!1881846 tp_is_empty!16273)))

(declare-fun b!2994373 () Bool)

(declare-fun tp!951566 () Bool)

(declare-fun tp!951564 () Bool)

(assert (=> b!2994373 (= e!1881846 (and tp!951566 tp!951564))))

(assert (= (and b!2993282 ((_ is ElementMatch!9355) (regTwo!19223 (regTwo!19222 r!17423)))) b!2994372))

(assert (= (and b!2993282 ((_ is Concat!14676) (regTwo!19223 (regTwo!19222 r!17423)))) b!2994373))

(assert (= (and b!2993282 ((_ is Star!9355) (regTwo!19223 (regTwo!19222 r!17423)))) b!2994374))

(assert (= (and b!2993282 ((_ is Union!9355) (regTwo!19223 (regTwo!19222 r!17423)))) b!2994375))

(declare-fun b!2994380 () Bool)

(declare-fun e!1881848 () Bool)

(declare-fun tp!951574 () Bool)

(assert (=> b!2994380 (= e!1881848 (and tp_is_empty!16273 tp!951574))))

(assert (=> b!2993299 (= tp!951413 e!1881848)))

(assert (= (and b!2993299 ((_ is Cons!35096) (t!234285 (t!234285 s!11993)))) b!2994380))

(check-sat (not b!2994380) (not b!2993493) (not b!2994373) (not b!2994313) (not b!2994256) (not b!2993939) (not b!2994221) (not b!2994276) (not b!2994262) (not d!845219) (not b!2994286) (not b!2994222) (not b!2993745) (not b!2993812) (not b!2994318) (not b!2994162) (not d!845119) (not b!2994175) (not bm!200531) (not bm!200492) (not b!2994254) (not b!2994281) (not b!2993467) (not bm!200498) (not b!2993983) (not bm!200449) (not d!845193) (not d!845225) (not bm!200394) (not bm!200399) (not d!845243) (not b!2993887) (not b!2993512) (not bm!200495) (not bm!200503) (not b!2994342) (not b!2993877) (not b!2994258) (not b!2993485) (not d!845235) (not bm!200508) (not b!2994358) (not d!845057) (not b!2994341) (not b!2994311) (not bm!200360) (not b!2994366) (not bm!200471) (not bm!200535) (not b!2994161) (not b!2993853) (not b!2994305) (not bm!200382) (not b!2994243) (not b!2993513) (not b!2993861) (not b!2994302) (not b!2994259) (not b!2993699) (not b!2994212) tp_is_empty!16273 (not b!2993426) (not d!845263) (not b!2994343) (not b!2993735) (not bm!200533) (not d!845279) (not d!845269) (not b!2994165) (not bm!200472) (not b!2993331) (not b!2994301) (not d!845083) (not b!2994367) (not bm!200528) (not b!2993944) (not d!845223) (not b!2993882) (not b!2994317) (not b!2993767) (not b!2993857) (not b!2993346) (not b!2994194) (not d!845029) (not bm!200465) (not b!2993891) (not bm!200391) (not bm!200402) (not b!2993736) (not b!2994357) (not bm!200509) (not d!845031) (not bm!200527) (not b!2993979) (not bm!200448) (not b!2993489) (not b!2993881) (not b!2994303) (not b!2994322) (not bm!200436) (not b!2993926) (not bm!200361) (not b!2994277) (not b!2993345) (not b!2994090) (not d!845209) (not b!2993984) (not b!2993867) (not bm!200397) (not bm!200467) (not b!2994319) (not bm!200479) (not bm!200376) (not b!2994288) (not b!2993417) (not b!2994335) (not b!2993498) (not b!2994240) (not b!2994068) (not bm!200489) (not bm!200439) (not b!2993988) (not bm!200536) (not bm!200396) (not bm!200468) (not b!2993527) (not b!2994089) (not d!845259) (not b!2993522) (not b!2993324) (not d!845093) (not b!2993982) (not d!845305) (not d!845199) (not b!2994114) (not b!2993494) (not b!2994282) (not b!2994328) (not b!2993859) (not b!2993351) (not b!2994374) (not b!2994238) (not d!845099) (not d!845287) (not d!845071) (not b!2994314) (not b!2994026) (not bm!200515) (not b!2994351) (not b!2993878) (not b!2994333) (not d!845115) (not b!2994280) (not d!845229) (not b!2993511) (not b!2993499) (not b!2993531) (not d!845065) (not bm!200469) (not b!2993503) (not b!2993943) (not bm!200484) (not b!2993927) (not b!2993731) (not b!2993811) (not b!2993741) (not b!2994002) (not b!2994255) (not b!2993484) (not b!2994309) (not b!2993483) (not d!845101) (not d!845055) (not b!2993952) (not b!2993479) (not d!845097) (not bm!200435) (not b!2994239) (not b!2993942) (not b!2994252) (not bm!200521) (not d!845251) (not b!2993517) (not bm!200440) (not b!2994251) (not b!2994263) (not bm!200539) (not d!845049) (not b!2993396) (not b!2994132) (not d!845095) (not bm!200519) (not b!2993341) (not b!2993420) (not d!845081) (not b!2994349) (not b!2994306) (not bm!200363) (not b!2994359) (not b!2993737) (not bm!200377) (not d!845121) (not b!2994289) (not bm!200518) (not d!845047) (not b!2993335) (not b!2993871) (not b!2994315) (not b!2993521) (not b!2993948) (not b!2993526) (not b!2993698) (not b!2994247) (not b!2994365) (not b!2994350) (not bm!200364) (not bm!200538) (not b!2994375) (not d!845077) (not b!2994044) (not b!2993854) (not d!845311) (not b!2994334) (not b!2994260) (not bm!200482) (not d!845173) (not d!845175) (not b!2994244) (not b!2993347) (not bm!200466) (not d!845085) (not d!845267) (not bm!200534) (not b!2994310) (not b!2993978) (not b!2994250) (not bm!200500) (not bm!200443) (not b!2994166) (not b!2994321) (not b!2994248) (not d!845197) (not b!2993342) (not b!2993793) (not b!2993480) (not b!2993918) (not b!2994323) (not b!2993497) (not b!2994242) (not d!845307) (not b!2993422) (not b!2994331) (not bm!200541) (not b!2994278) (not bm!200400) (not b!2993938) (not b!2994330) (not bm!200497) (not b!2993507) (not bm!200516) (not b!2993858) (not bm!200398) (not b!2993542) (not bm!200494) (not b!2994171) (not bm!200474) (not b!2993454) (not b!2994285) (not b!2994290) (not b!2993541) (not b!2994220) (not b!2993525) (not b!2993794) (not b!2994188) (not b!2994284) (not b!2993883) (not b!2993416) (not b!2994246) (not bm!200478) (not bm!200401) (not b!2993732) (not d!845019) (not b!2994167) (not b!2993421) (not b!2994264) (not d!845123) (not b!2994307) (not b!2993508) (not bm!200365) (not bm!200504) (not bm!200403))
(check-sat)
