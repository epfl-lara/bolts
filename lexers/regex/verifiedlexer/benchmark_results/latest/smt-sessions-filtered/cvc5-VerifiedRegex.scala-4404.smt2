; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!234302 () Bool)

(assert start!234302)

(declare-fun b!2387626 () Bool)

(assert (=> b!2387626 true))

(assert (=> b!2387626 true))

(declare-fun lambda!89278 () Int)

(declare-fun lambda!89277 () Int)

(assert (=> b!2387626 (not (= lambda!89278 lambda!89277))))

(assert (=> b!2387626 true))

(assert (=> b!2387626 true))

(declare-fun b!2387615 () Bool)

(declare-fun e!1522257 () Bool)

(declare-fun tp!761484 () Bool)

(declare-fun tp!761483 () Bool)

(assert (=> b!2387615 (= e!1522257 (and tp!761484 tp!761483))))

(declare-fun res!1014236 () Bool)

(declare-fun e!1522258 () Bool)

(assert (=> start!234302 (=> (not res!1014236) (not e!1522258))))

(declare-datatypes ((C!14158 0))(
  ( (C!14159 (val!8321 Int)) )
))
(declare-datatypes ((Regex!7000 0))(
  ( (ElementMatch!7000 (c!379678 C!14158)) (Concat!11636 (regOne!14512 Regex!7000) (regTwo!14512 Regex!7000)) (EmptyExpr!7000) (Star!7000 (reg!7329 Regex!7000)) (EmptyLang!7000) (Union!7000 (regOne!14513 Regex!7000) (regTwo!14513 Regex!7000)) )
))
(declare-datatypes ((List!28238 0))(
  ( (Nil!28140) (Cons!28140 (h!33541 Regex!7000) (t!208215 List!28238)) )
))
(declare-fun l!9164 () List!28238)

(declare-fun lambda!89276 () Int)

(declare-fun forall!5634 (List!28238 Int) Bool)

(assert (=> start!234302 (= res!1014236 (forall!5634 l!9164 lambda!89276))))

(assert (=> start!234302 e!1522258))

(declare-fun e!1522254 () Bool)

(assert (=> start!234302 e!1522254))

(assert (=> start!234302 e!1522257))

(declare-fun e!1522256 () Bool)

(assert (=> start!234302 e!1522256))

(declare-fun b!2387616 () Bool)

(declare-fun e!1522253 () Bool)

(declare-fun e!1522251 () Bool)

(assert (=> b!2387616 (= e!1522253 e!1522251)))

(declare-fun res!1014237 () Bool)

(assert (=> b!2387616 (=> res!1014237 e!1522251)))

(declare-fun lt!869683 () List!28238)

(declare-fun isEmpty!16109 (List!28238) Bool)

(assert (=> b!2387616 (= res!1014237 (isEmpty!16109 lt!869683))))

(declare-fun tail!3502 (List!28238) List!28238)

(assert (=> b!2387616 (= lt!869683 (tail!3502 l!9164))))

(declare-fun b!2387617 () Bool)

(declare-fun e!1522255 () Bool)

(assert (=> b!2387617 (= e!1522251 e!1522255)))

(declare-fun res!1014239 () Bool)

(assert (=> b!2387617 (=> res!1014239 e!1522255)))

(declare-fun validRegex!2725 (Regex!7000) Bool)

(declare-fun head!5232 (List!28238) Regex!7000)

(assert (=> b!2387617 (= res!1014239 (not (validRegex!2725 (head!5232 l!9164))))))

(declare-fun lt!869679 () Regex!7000)

(declare-fun generalisedConcat!101 (List!28238) Regex!7000)

(assert (=> b!2387617 (= lt!869679 (generalisedConcat!101 lt!869683))))

(declare-fun b!2387618 () Bool)

(assert (=> b!2387618 (= e!1522255 (validRegex!2725 lt!869679))))

(declare-fun b!2387619 () Bool)

(declare-fun tp!761487 () Bool)

(declare-fun tp!761481 () Bool)

(assert (=> b!2387619 (= e!1522257 (and tp!761487 tp!761481))))

(declare-fun b!2387620 () Bool)

(declare-fun res!1014233 () Bool)

(assert (=> b!2387620 (=> (not res!1014233) (not e!1522258))))

(declare-fun r!13927 () Regex!7000)

(assert (=> b!2387620 (= res!1014233 (= r!13927 (generalisedConcat!101 l!9164)))))

(declare-fun b!2387621 () Bool)

(declare-fun tp_is_empty!11413 () Bool)

(assert (=> b!2387621 (= e!1522257 tp_is_empty!11413)))

(declare-fun b!2387622 () Bool)

(declare-fun tp!761482 () Bool)

(declare-fun tp!761480 () Bool)

(assert (=> b!2387622 (= e!1522254 (and tp!761482 tp!761480))))

(declare-fun b!2387623 () Bool)

(declare-fun res!1014235 () Bool)

(assert (=> b!2387623 (=> res!1014235 e!1522253)))

(assert (=> b!2387623 (= res!1014235 (isEmpty!16109 l!9164))))

(declare-fun b!2387624 () Bool)

(declare-fun tp!761485 () Bool)

(assert (=> b!2387624 (= e!1522257 tp!761485)))

(declare-fun b!2387625 () Bool)

(declare-fun tp!761486 () Bool)

(assert (=> b!2387625 (= e!1522256 (and tp_is_empty!11413 tp!761486))))

(declare-fun e!1522252 () Bool)

(assert (=> b!2387626 (= e!1522252 e!1522253)))

(declare-fun res!1014234 () Bool)

(assert (=> b!2387626 (=> res!1014234 e!1522253)))

(declare-fun lt!869680 () Bool)

(declare-fun lt!869684 () Bool)

(assert (=> b!2387626 (= res!1014234 (not (= lt!869680 lt!869684)))))

(declare-fun Exists!1062 (Int) Bool)

(assert (=> b!2387626 (= (Exists!1062 lambda!89277) (Exists!1062 lambda!89278))))

(declare-datatypes ((Unit!41103 0))(
  ( (Unit!41104) )
))
(declare-fun lt!869677 () Unit!41103)

(declare-datatypes ((List!28239 0))(
  ( (Nil!28141) (Cons!28141 (h!33542 C!14158) (t!208216 List!28239)) )
))
(declare-fun s!9460 () List!28239)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!401 (Regex!7000 Regex!7000 List!28239) Unit!41103)

(assert (=> b!2387626 (= lt!869677 (lemmaExistCutMatchRandMatchRSpecEquivalent!401 (regOne!14512 r!13927) (regTwo!14512 r!13927) s!9460))))

(assert (=> b!2387626 (= lt!869684 (Exists!1062 lambda!89277))))

(declare-datatypes ((tuple2!27864 0))(
  ( (tuple2!27865 (_1!16473 List!28239) (_2!16473 List!28239)) )
))
(declare-datatypes ((Option!5543 0))(
  ( (None!5542) (Some!5542 (v!30950 tuple2!27864)) )
))
(declare-fun isDefined!4371 (Option!5543) Bool)

(declare-fun findConcatSeparation!651 (Regex!7000 Regex!7000 List!28239 List!28239 List!28239) Option!5543)

(assert (=> b!2387626 (= lt!869684 (isDefined!4371 (findConcatSeparation!651 (regOne!14512 r!13927) (regTwo!14512 r!13927) Nil!28141 s!9460 s!9460)))))

(declare-fun lt!869681 () Unit!41103)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!651 (Regex!7000 Regex!7000 List!28239) Unit!41103)

(assert (=> b!2387626 (= lt!869681 (lemmaFindConcatSeparationEquivalentToExists!651 (regOne!14512 r!13927) (regTwo!14512 r!13927) s!9460))))

(declare-fun b!2387627 () Bool)

(assert (=> b!2387627 (= e!1522258 (not e!1522252))))

(declare-fun res!1014238 () Bool)

(assert (=> b!2387627 (=> res!1014238 e!1522252)))

(assert (=> b!2387627 (= res!1014238 (not (is-Concat!11636 r!13927)))))

(declare-fun lt!869678 () Bool)

(assert (=> b!2387627 (= lt!869678 lt!869680)))

(declare-fun matchRSpec!849 (Regex!7000 List!28239) Bool)

(assert (=> b!2387627 (= lt!869680 (matchRSpec!849 r!13927 s!9460))))

(declare-fun matchR!3117 (Regex!7000 List!28239) Bool)

(assert (=> b!2387627 (= lt!869678 (matchR!3117 r!13927 s!9460))))

(declare-fun lt!869682 () Unit!41103)

(declare-fun mainMatchTheorem!849 (Regex!7000 List!28239) Unit!41103)

(assert (=> b!2387627 (= lt!869682 (mainMatchTheorem!849 r!13927 s!9460))))

(assert (= (and start!234302 res!1014236) b!2387620))

(assert (= (and b!2387620 res!1014233) b!2387627))

(assert (= (and b!2387627 (not res!1014238)) b!2387626))

(assert (= (and b!2387626 (not res!1014234)) b!2387623))

(assert (= (and b!2387623 (not res!1014235)) b!2387616))

(assert (= (and b!2387616 (not res!1014237)) b!2387617))

(assert (= (and b!2387617 (not res!1014239)) b!2387618))

(assert (= (and start!234302 (is-Cons!28140 l!9164)) b!2387622))

(assert (= (and start!234302 (is-ElementMatch!7000 r!13927)) b!2387621))

(assert (= (and start!234302 (is-Concat!11636 r!13927)) b!2387619))

(assert (= (and start!234302 (is-Star!7000 r!13927)) b!2387624))

(assert (= (and start!234302 (is-Union!7000 r!13927)) b!2387615))

(assert (= (and start!234302 (is-Cons!28141 s!9460)) b!2387625))

(declare-fun m!2788841 () Bool)

(assert (=> b!2387620 m!2788841))

(declare-fun m!2788843 () Bool)

(assert (=> b!2387616 m!2788843))

(declare-fun m!2788845 () Bool)

(assert (=> b!2387616 m!2788845))

(declare-fun m!2788847 () Bool)

(assert (=> b!2387627 m!2788847))

(declare-fun m!2788849 () Bool)

(assert (=> b!2387627 m!2788849))

(declare-fun m!2788851 () Bool)

(assert (=> b!2387627 m!2788851))

(declare-fun m!2788853 () Bool)

(assert (=> b!2387618 m!2788853))

(declare-fun m!2788855 () Bool)

(assert (=> start!234302 m!2788855))

(declare-fun m!2788857 () Bool)

(assert (=> b!2387617 m!2788857))

(assert (=> b!2387617 m!2788857))

(declare-fun m!2788859 () Bool)

(assert (=> b!2387617 m!2788859))

(declare-fun m!2788861 () Bool)

(assert (=> b!2387617 m!2788861))

(declare-fun m!2788863 () Bool)

(assert (=> b!2387626 m!2788863))

(declare-fun m!2788865 () Bool)

(assert (=> b!2387626 m!2788865))

(assert (=> b!2387626 m!2788863))

(declare-fun m!2788867 () Bool)

(assert (=> b!2387626 m!2788867))

(declare-fun m!2788869 () Bool)

(assert (=> b!2387626 m!2788869))

(declare-fun m!2788871 () Bool)

(assert (=> b!2387626 m!2788871))

(declare-fun m!2788873 () Bool)

(assert (=> b!2387626 m!2788873))

(assert (=> b!2387626 m!2788869))

(declare-fun m!2788875 () Bool)

(assert (=> b!2387623 m!2788875))

(push 1)

(assert (not b!2387619))

(assert (not b!2387620))

(assert (not start!234302))

(assert (not b!2387618))

(assert (not b!2387623))

(assert (not b!2387615))

(assert (not b!2387627))

(assert (not b!2387626))

(assert (not b!2387617))

(assert (not b!2387625))

(assert (not b!2387624))

(assert (not b!2387616))

(assert tp_is_empty!11413)

(assert (not b!2387622))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!697677 () Bool)

(assert (=> d!697677 (= (isEmpty!16109 l!9164) (is-Nil!28140 l!9164))))

(assert (=> b!2387623 d!697677))

(declare-fun b!2387705 () Bool)

(declare-fun e!1522306 () Bool)

(declare-fun e!1522307 () Bool)

(assert (=> b!2387705 (= e!1522306 e!1522307)))

(declare-fun res!1014285 () Bool)

(declare-fun nullable!2049 (Regex!7000) Bool)

(assert (=> b!2387705 (= res!1014285 (not (nullable!2049 (reg!7329 lt!869679))))))

(assert (=> b!2387705 (=> (not res!1014285) (not e!1522307))))

(declare-fun bm!145168 () Bool)

(declare-fun c!379684 () Bool)

(declare-fun call!145173 () Bool)

(declare-fun c!379685 () Bool)

(assert (=> bm!145168 (= call!145173 (validRegex!2725 (ite c!379684 (reg!7329 lt!869679) (ite c!379685 (regOne!14513 lt!869679) (regTwo!14512 lt!869679)))))))

(declare-fun b!2387706 () Bool)

(declare-fun e!1522308 () Bool)

(declare-fun call!145174 () Bool)

(assert (=> b!2387706 (= e!1522308 call!145174)))

(declare-fun b!2387707 () Bool)

(declare-fun e!1522304 () Bool)

(declare-fun e!1522309 () Bool)

(assert (=> b!2387707 (= e!1522304 e!1522309)))

(declare-fun res!1014284 () Bool)

(assert (=> b!2387707 (=> (not res!1014284) (not e!1522309))))

(assert (=> b!2387707 (= res!1014284 call!145174)))

(declare-fun b!2387708 () Bool)

(assert (=> b!2387708 (= e!1522307 call!145173)))

(declare-fun bm!145169 () Bool)

(declare-fun call!145175 () Bool)

(assert (=> bm!145169 (= call!145175 call!145173)))

(declare-fun b!2387709 () Bool)

(declare-fun res!1014287 () Bool)

(assert (=> b!2387709 (=> res!1014287 e!1522304)))

(assert (=> b!2387709 (= res!1014287 (not (is-Concat!11636 lt!869679)))))

(declare-fun e!1522303 () Bool)

(assert (=> b!2387709 (= e!1522303 e!1522304)))

(declare-fun d!697679 () Bool)

(declare-fun res!1014286 () Bool)

(declare-fun e!1522305 () Bool)

(assert (=> d!697679 (=> res!1014286 e!1522305)))

(assert (=> d!697679 (= res!1014286 (is-ElementMatch!7000 lt!869679))))

(assert (=> d!697679 (= (validRegex!2725 lt!869679) e!1522305)))

(declare-fun bm!145170 () Bool)

(assert (=> bm!145170 (= call!145174 (validRegex!2725 (ite c!379685 (regTwo!14513 lt!869679) (regOne!14512 lt!869679))))))

(declare-fun b!2387710 () Bool)

(assert (=> b!2387710 (= e!1522306 e!1522303)))

(assert (=> b!2387710 (= c!379685 (is-Union!7000 lt!869679))))

(declare-fun b!2387711 () Bool)

(declare-fun res!1014283 () Bool)

(assert (=> b!2387711 (=> (not res!1014283) (not e!1522308))))

(assert (=> b!2387711 (= res!1014283 call!145175)))

(assert (=> b!2387711 (= e!1522303 e!1522308)))

(declare-fun b!2387712 () Bool)

(assert (=> b!2387712 (= e!1522309 call!145175)))

(declare-fun b!2387713 () Bool)

(assert (=> b!2387713 (= e!1522305 e!1522306)))

(assert (=> b!2387713 (= c!379684 (is-Star!7000 lt!869679))))

(assert (= (and d!697679 (not res!1014286)) b!2387713))

(assert (= (and b!2387713 c!379684) b!2387705))

(assert (= (and b!2387713 (not c!379684)) b!2387710))

(assert (= (and b!2387705 res!1014285) b!2387708))

(assert (= (and b!2387710 c!379685) b!2387711))

(assert (= (and b!2387710 (not c!379685)) b!2387709))

(assert (= (and b!2387711 res!1014283) b!2387706))

(assert (= (and b!2387709 (not res!1014287)) b!2387707))

(assert (= (and b!2387707 res!1014284) b!2387712))

(assert (= (or b!2387711 b!2387712) bm!145169))

(assert (= (or b!2387706 b!2387707) bm!145170))

(assert (= (or b!2387708 bm!145169) bm!145168))

(declare-fun m!2788913 () Bool)

(assert (=> b!2387705 m!2788913))

(declare-fun m!2788915 () Bool)

(assert (=> bm!145168 m!2788915))

(declare-fun m!2788917 () Bool)

(assert (=> bm!145170 m!2788917))

(assert (=> b!2387618 d!697679))

(declare-fun bs!462323 () Bool)

(declare-fun d!697681 () Bool)

(assert (= bs!462323 (and d!697681 start!234302)))

(declare-fun lambda!89292 () Int)

(assert (=> bs!462323 (= lambda!89292 lambda!89276)))

(declare-fun b!2387734 () Bool)

(declare-fun e!1522323 () Bool)

(declare-fun lt!869711 () Regex!7000)

(declare-fun isConcat!70 (Regex!7000) Bool)

(assert (=> b!2387734 (= e!1522323 (isConcat!70 lt!869711))))

(declare-fun b!2387735 () Bool)

(assert (=> b!2387735 (= e!1522323 (= lt!869711 (head!5232 l!9164)))))

(declare-fun b!2387736 () Bool)

(declare-fun e!1522322 () Regex!7000)

(declare-fun e!1522324 () Regex!7000)

(assert (=> b!2387736 (= e!1522322 e!1522324)))

(declare-fun c!379695 () Bool)

(assert (=> b!2387736 (= c!379695 (is-Cons!28140 l!9164))))

(declare-fun b!2387737 () Bool)

(assert (=> b!2387737 (= e!1522322 (h!33541 l!9164))))

(declare-fun b!2387738 () Bool)

(declare-fun e!1522327 () Bool)

(declare-fun e!1522326 () Bool)

(assert (=> b!2387738 (= e!1522327 e!1522326)))

(declare-fun c!379696 () Bool)

(assert (=> b!2387738 (= c!379696 (isEmpty!16109 l!9164))))

(declare-fun b!2387739 () Bool)

(assert (=> b!2387739 (= e!1522326 e!1522323)))

(declare-fun c!379697 () Bool)

(assert (=> b!2387739 (= c!379697 (isEmpty!16109 (tail!3502 l!9164)))))

(assert (=> d!697681 e!1522327))

(declare-fun res!1014293 () Bool)

(assert (=> d!697681 (=> (not res!1014293) (not e!1522327))))

(assert (=> d!697681 (= res!1014293 (validRegex!2725 lt!869711))))

(assert (=> d!697681 (= lt!869711 e!1522322)))

(declare-fun c!379694 () Bool)

(declare-fun e!1522325 () Bool)

(assert (=> d!697681 (= c!379694 e!1522325)))

(declare-fun res!1014292 () Bool)

(assert (=> d!697681 (=> (not res!1014292) (not e!1522325))))

(assert (=> d!697681 (= res!1014292 (is-Cons!28140 l!9164))))

(assert (=> d!697681 (forall!5634 l!9164 lambda!89292)))

(assert (=> d!697681 (= (generalisedConcat!101 l!9164) lt!869711)))

(declare-fun b!2387740 () Bool)

(assert (=> b!2387740 (= e!1522325 (isEmpty!16109 (t!208215 l!9164)))))

(declare-fun b!2387741 () Bool)

(assert (=> b!2387741 (= e!1522324 (Concat!11636 (h!33541 l!9164) (generalisedConcat!101 (t!208215 l!9164))))))

(declare-fun b!2387742 () Bool)

(declare-fun isEmptyExpr!70 (Regex!7000) Bool)

(assert (=> b!2387742 (= e!1522326 (isEmptyExpr!70 lt!869711))))

(declare-fun b!2387743 () Bool)

(assert (=> b!2387743 (= e!1522324 EmptyExpr!7000)))

(assert (= (and d!697681 res!1014292) b!2387740))

(assert (= (and d!697681 c!379694) b!2387737))

(assert (= (and d!697681 (not c!379694)) b!2387736))

(assert (= (and b!2387736 c!379695) b!2387741))

(assert (= (and b!2387736 (not c!379695)) b!2387743))

(assert (= (and d!697681 res!1014293) b!2387738))

(assert (= (and b!2387738 c!379696) b!2387742))

(assert (= (and b!2387738 (not c!379696)) b!2387739))

(assert (= (and b!2387739 c!379697) b!2387735))

(assert (= (and b!2387739 (not c!379697)) b!2387734))

(declare-fun m!2788919 () Bool)

(assert (=> d!697681 m!2788919))

(declare-fun m!2788921 () Bool)

(assert (=> d!697681 m!2788921))

(assert (=> b!2387738 m!2788875))

(declare-fun m!2788923 () Bool)

(assert (=> b!2387740 m!2788923))

(declare-fun m!2788925 () Bool)

(assert (=> b!2387734 m!2788925))

(declare-fun m!2788927 () Bool)

(assert (=> b!2387741 m!2788927))

(assert (=> b!2387735 m!2788857))

(assert (=> b!2387739 m!2788845))

(assert (=> b!2387739 m!2788845))

(declare-fun m!2788929 () Bool)

(assert (=> b!2387739 m!2788929))

(declare-fun m!2788931 () Bool)

(assert (=> b!2387742 m!2788931))

(assert (=> b!2387620 d!697681))

(declare-fun d!697683 () Bool)

(declare-fun choose!14029 (Int) Bool)

(assert (=> d!697683 (= (Exists!1062 lambda!89278) (choose!14029 lambda!89278))))

(declare-fun bs!462324 () Bool)

(assert (= bs!462324 d!697683))

(declare-fun m!2788933 () Bool)

(assert (=> bs!462324 m!2788933))

(assert (=> b!2387626 d!697683))

(declare-fun d!697685 () Bool)

(declare-fun isEmpty!16111 (Option!5543) Bool)

(assert (=> d!697685 (= (isDefined!4371 (findConcatSeparation!651 (regOne!14512 r!13927) (regTwo!14512 r!13927) Nil!28141 s!9460 s!9460)) (not (isEmpty!16111 (findConcatSeparation!651 (regOne!14512 r!13927) (regTwo!14512 r!13927) Nil!28141 s!9460 s!9460))))))

(declare-fun bs!462325 () Bool)

(assert (= bs!462325 d!697685))

(assert (=> bs!462325 m!2788863))

(declare-fun m!2788935 () Bool)

(assert (=> bs!462325 m!2788935))

(assert (=> b!2387626 d!697685))

(declare-fun bs!462326 () Bool)

(declare-fun d!697687 () Bool)

(assert (= bs!462326 (and d!697687 b!2387626)))

(declare-fun lambda!89295 () Int)

(assert (=> bs!462326 (= lambda!89295 lambda!89277)))

(assert (=> bs!462326 (not (= lambda!89295 lambda!89278))))

(assert (=> d!697687 true))

(assert (=> d!697687 true))

(assert (=> d!697687 true))

(assert (=> d!697687 (= (isDefined!4371 (findConcatSeparation!651 (regOne!14512 r!13927) (regTwo!14512 r!13927) Nil!28141 s!9460 s!9460)) (Exists!1062 lambda!89295))))

(declare-fun lt!869714 () Unit!41103)

(declare-fun choose!14030 (Regex!7000 Regex!7000 List!28239) Unit!41103)

(assert (=> d!697687 (= lt!869714 (choose!14030 (regOne!14512 r!13927) (regTwo!14512 r!13927) s!9460))))

(assert (=> d!697687 (validRegex!2725 (regOne!14512 r!13927))))

(assert (=> d!697687 (= (lemmaFindConcatSeparationEquivalentToExists!651 (regOne!14512 r!13927) (regTwo!14512 r!13927) s!9460) lt!869714)))

(declare-fun bs!462327 () Bool)

(assert (= bs!462327 d!697687))

(assert (=> bs!462327 m!2788863))

(assert (=> bs!462327 m!2788863))

(assert (=> bs!462327 m!2788865))

(declare-fun m!2788937 () Bool)

(assert (=> bs!462327 m!2788937))

(declare-fun m!2788939 () Bool)

(assert (=> bs!462327 m!2788939))

(declare-fun m!2788941 () Bool)

(assert (=> bs!462327 m!2788941))

(assert (=> b!2387626 d!697687))

(declare-fun bs!462328 () Bool)

(declare-fun d!697691 () Bool)

(assert (= bs!462328 (and d!697691 b!2387626)))

(declare-fun lambda!89300 () Int)

(assert (=> bs!462328 (= lambda!89300 lambda!89277)))

(assert (=> bs!462328 (not (= lambda!89300 lambda!89278))))

(declare-fun bs!462329 () Bool)

(assert (= bs!462329 (and d!697691 d!697687)))

(assert (=> bs!462329 (= lambda!89300 lambda!89295)))

(assert (=> d!697691 true))

(assert (=> d!697691 true))

(assert (=> d!697691 true))

(declare-fun lambda!89301 () Int)

(assert (=> bs!462328 (not (= lambda!89301 lambda!89277))))

(assert (=> bs!462328 (= lambda!89301 lambda!89278)))

(assert (=> bs!462329 (not (= lambda!89301 lambda!89295))))

(declare-fun bs!462330 () Bool)

(assert (= bs!462330 d!697691))

(assert (=> bs!462330 (not (= lambda!89301 lambda!89300))))

(assert (=> d!697691 true))

(assert (=> d!697691 true))

(assert (=> d!697691 true))

(assert (=> d!697691 (= (Exists!1062 lambda!89300) (Exists!1062 lambda!89301))))

(declare-fun lt!869717 () Unit!41103)

(declare-fun choose!14031 (Regex!7000 Regex!7000 List!28239) Unit!41103)

(assert (=> d!697691 (= lt!869717 (choose!14031 (regOne!14512 r!13927) (regTwo!14512 r!13927) s!9460))))

(assert (=> d!697691 (validRegex!2725 (regOne!14512 r!13927))))

(assert (=> d!697691 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!401 (regOne!14512 r!13927) (regTwo!14512 r!13927) s!9460) lt!869717)))

(declare-fun m!2788943 () Bool)

(assert (=> bs!462330 m!2788943))

(declare-fun m!2788945 () Bool)

(assert (=> bs!462330 m!2788945))

(declare-fun m!2788947 () Bool)

(assert (=> bs!462330 m!2788947))

(assert (=> bs!462330 m!2788937))

(assert (=> b!2387626 d!697691))

(declare-fun d!697693 () Bool)

(assert (=> d!697693 (= (Exists!1062 lambda!89277) (choose!14029 lambda!89277))))

(declare-fun bs!462331 () Bool)

(assert (= bs!462331 d!697693))

(declare-fun m!2788949 () Bool)

(assert (=> bs!462331 m!2788949))

(assert (=> b!2387626 d!697693))

(declare-fun b!2387801 () Bool)

(declare-fun e!1522365 () Option!5543)

(assert (=> b!2387801 (= e!1522365 (Some!5542 (tuple2!27865 Nil!28141 s!9460)))))

(declare-fun b!2387802 () Bool)

(declare-fun lt!869725 () Unit!41103)

(declare-fun lt!869724 () Unit!41103)

(assert (=> b!2387802 (= lt!869725 lt!869724)))

(declare-fun ++!6954 (List!28239 List!28239) List!28239)

(assert (=> b!2387802 (= (++!6954 (++!6954 Nil!28141 (Cons!28141 (h!33542 s!9460) Nil!28141)) (t!208216 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!596 (List!28239 C!14158 List!28239 List!28239) Unit!41103)

(assert (=> b!2387802 (= lt!869724 (lemmaMoveElementToOtherListKeepsConcatEq!596 Nil!28141 (h!33542 s!9460) (t!208216 s!9460) s!9460))))

(declare-fun e!1522369 () Option!5543)

(assert (=> b!2387802 (= e!1522369 (findConcatSeparation!651 (regOne!14512 r!13927) (regTwo!14512 r!13927) (++!6954 Nil!28141 (Cons!28141 (h!33542 s!9460) Nil!28141)) (t!208216 s!9460) s!9460))))

(declare-fun b!2387803 () Bool)

(assert (=> b!2387803 (= e!1522369 None!5542)))

(declare-fun b!2387804 () Bool)

(declare-fun res!1014334 () Bool)

(declare-fun e!1522367 () Bool)

(assert (=> b!2387804 (=> (not res!1014334) (not e!1522367))))

(declare-fun lt!869726 () Option!5543)

(declare-fun get!8598 (Option!5543) tuple2!27864)

(assert (=> b!2387804 (= res!1014334 (matchR!3117 (regOne!14512 r!13927) (_1!16473 (get!8598 lt!869726))))))

(declare-fun b!2387805 () Bool)

(assert (=> b!2387805 (= e!1522367 (= (++!6954 (_1!16473 (get!8598 lt!869726)) (_2!16473 (get!8598 lt!869726))) s!9460))))

(declare-fun d!697695 () Bool)

(declare-fun e!1522366 () Bool)

(assert (=> d!697695 e!1522366))

(declare-fun res!1014332 () Bool)

(assert (=> d!697695 (=> res!1014332 e!1522366)))

(assert (=> d!697695 (= res!1014332 e!1522367)))

(declare-fun res!1014335 () Bool)

(assert (=> d!697695 (=> (not res!1014335) (not e!1522367))))

(assert (=> d!697695 (= res!1014335 (isDefined!4371 lt!869726))))

(assert (=> d!697695 (= lt!869726 e!1522365)))

(declare-fun c!379709 () Bool)

(declare-fun e!1522368 () Bool)

(assert (=> d!697695 (= c!379709 e!1522368)))

(declare-fun res!1014331 () Bool)

(assert (=> d!697695 (=> (not res!1014331) (not e!1522368))))

(assert (=> d!697695 (= res!1014331 (matchR!3117 (regOne!14512 r!13927) Nil!28141))))

(assert (=> d!697695 (validRegex!2725 (regOne!14512 r!13927))))

(assert (=> d!697695 (= (findConcatSeparation!651 (regOne!14512 r!13927) (regTwo!14512 r!13927) Nil!28141 s!9460 s!9460) lt!869726)))

(declare-fun b!2387806 () Bool)

(declare-fun res!1014333 () Bool)

(assert (=> b!2387806 (=> (not res!1014333) (not e!1522367))))

(assert (=> b!2387806 (= res!1014333 (matchR!3117 (regTwo!14512 r!13927) (_2!16473 (get!8598 lt!869726))))))

(declare-fun b!2387807 () Bool)

(assert (=> b!2387807 (= e!1522366 (not (isDefined!4371 lt!869726)))))

(declare-fun b!2387808 () Bool)

(assert (=> b!2387808 (= e!1522365 e!1522369)))

(declare-fun c!379708 () Bool)

(assert (=> b!2387808 (= c!379708 (is-Nil!28141 s!9460))))

(declare-fun b!2387809 () Bool)

(assert (=> b!2387809 (= e!1522368 (matchR!3117 (regTwo!14512 r!13927) s!9460))))

(assert (= (and d!697695 res!1014331) b!2387809))

(assert (= (and d!697695 c!379709) b!2387801))

(assert (= (and d!697695 (not c!379709)) b!2387808))

(assert (= (and b!2387808 c!379708) b!2387803))

(assert (= (and b!2387808 (not c!379708)) b!2387802))

(assert (= (and d!697695 res!1014335) b!2387804))

(assert (= (and b!2387804 res!1014334) b!2387806))

(assert (= (and b!2387806 res!1014333) b!2387805))

(assert (= (and d!697695 (not res!1014332)) b!2387807))

(declare-fun m!2788957 () Bool)

(assert (=> b!2387805 m!2788957))

(declare-fun m!2788959 () Bool)

(assert (=> b!2387805 m!2788959))

(declare-fun m!2788961 () Bool)

(assert (=> b!2387809 m!2788961))

(declare-fun m!2788963 () Bool)

(assert (=> d!697695 m!2788963))

(declare-fun m!2788965 () Bool)

(assert (=> d!697695 m!2788965))

(assert (=> d!697695 m!2788937))

(assert (=> b!2387807 m!2788963))

(declare-fun m!2788967 () Bool)

(assert (=> b!2387802 m!2788967))

(assert (=> b!2387802 m!2788967))

(declare-fun m!2788969 () Bool)

(assert (=> b!2387802 m!2788969))

(declare-fun m!2788971 () Bool)

(assert (=> b!2387802 m!2788971))

(assert (=> b!2387802 m!2788967))

(declare-fun m!2788973 () Bool)

(assert (=> b!2387802 m!2788973))

(assert (=> b!2387804 m!2788957))

(declare-fun m!2788975 () Bool)

(assert (=> b!2387804 m!2788975))

(assert (=> b!2387806 m!2788957))

(declare-fun m!2788977 () Bool)

(assert (=> b!2387806 m!2788977))

(assert (=> b!2387626 d!697695))

(declare-fun d!697699 () Bool)

(assert (=> d!697699 (= (isEmpty!16109 lt!869683) (is-Nil!28140 lt!869683))))

(assert (=> b!2387616 d!697699))

(declare-fun d!697701 () Bool)

(assert (=> d!697701 (= (tail!3502 l!9164) (t!208215 l!9164))))

(assert (=> b!2387616 d!697701))

(declare-fun bs!462332 () Bool)

(declare-fun b!2387877 () Bool)

(assert (= bs!462332 (and b!2387877 d!697691)))

(declare-fun lambda!89308 () Int)

(assert (=> bs!462332 (not (= lambda!89308 lambda!89301))))

(declare-fun bs!462333 () Bool)

(assert (= bs!462333 (and b!2387877 b!2387626)))

(assert (=> bs!462333 (not (= lambda!89308 lambda!89277))))

(assert (=> bs!462333 (not (= lambda!89308 lambda!89278))))

(assert (=> bs!462332 (not (= lambda!89308 lambda!89300))))

(declare-fun bs!462334 () Bool)

(assert (= bs!462334 (and b!2387877 d!697687)))

(assert (=> bs!462334 (not (= lambda!89308 lambda!89295))))

(assert (=> b!2387877 true))

(assert (=> b!2387877 true))

(declare-fun bs!462335 () Bool)

(declare-fun b!2387870 () Bool)

(assert (= bs!462335 (and b!2387870 d!697691)))

(declare-fun lambda!89310 () Int)

(assert (=> bs!462335 (= lambda!89310 lambda!89301)))

(declare-fun bs!462336 () Bool)

(assert (= bs!462336 (and b!2387870 b!2387626)))

(assert (=> bs!462336 (not (= lambda!89310 lambda!89277))))

(assert (=> bs!462336 (= lambda!89310 lambda!89278)))

(declare-fun bs!462337 () Bool)

(assert (= bs!462337 (and b!2387870 b!2387877)))

(assert (=> bs!462337 (not (= lambda!89310 lambda!89308))))

(assert (=> bs!462335 (not (= lambda!89310 lambda!89300))))

(declare-fun bs!462338 () Bool)

(assert (= bs!462338 (and b!2387870 d!697687)))

(assert (=> bs!462338 (not (= lambda!89310 lambda!89295))))

(assert (=> b!2387870 true))

(assert (=> b!2387870 true))

(declare-fun e!1522409 () Bool)

(declare-fun call!145190 () Bool)

(assert (=> b!2387870 (= e!1522409 call!145190)))

(declare-fun b!2387871 () Bool)

(declare-fun e!1522407 () Bool)

(declare-fun call!145189 () Bool)

(assert (=> b!2387871 (= e!1522407 call!145189)))

(declare-fun b!2387872 () Bool)

(declare-fun e!1522404 () Bool)

(assert (=> b!2387872 (= e!1522407 e!1522404)))

(declare-fun res!1014364 () Bool)

(assert (=> b!2387872 (= res!1014364 (not (is-EmptyLang!7000 r!13927)))))

(assert (=> b!2387872 (=> (not res!1014364) (not e!1522404))))

(declare-fun b!2387873 () Bool)

(declare-fun e!1522408 () Bool)

(declare-fun e!1522410 () Bool)

(assert (=> b!2387873 (= e!1522408 e!1522410)))

(declare-fun res!1014365 () Bool)

(assert (=> b!2387873 (= res!1014365 (matchRSpec!849 (regOne!14513 r!13927) s!9460))))

(assert (=> b!2387873 (=> res!1014365 e!1522410)))

(declare-fun d!697703 () Bool)

(declare-fun c!379726 () Bool)

(assert (=> d!697703 (= c!379726 (is-EmptyExpr!7000 r!13927))))

(assert (=> d!697703 (= (matchRSpec!849 r!13927 s!9460) e!1522407)))

(declare-fun b!2387874 () Bool)

(declare-fun c!379727 () Bool)

(assert (=> b!2387874 (= c!379727 (is-Union!7000 r!13927))))

(declare-fun e!1522406 () Bool)

(assert (=> b!2387874 (= e!1522406 e!1522408)))

(declare-fun b!2387875 () Bool)

(declare-fun c!379728 () Bool)

(assert (=> b!2387875 (= c!379728 (is-ElementMatch!7000 r!13927))))

(assert (=> b!2387875 (= e!1522404 e!1522406)))

(declare-fun b!2387876 () Bool)

(assert (=> b!2387876 (= e!1522410 (matchRSpec!849 (regTwo!14513 r!13927) s!9460))))

(declare-fun e!1522405 () Bool)

(assert (=> b!2387877 (= e!1522405 call!145190)))

(declare-fun bm!145184 () Bool)

(declare-fun isEmpty!16112 (List!28239) Bool)

(assert (=> bm!145184 (= call!145189 (isEmpty!16112 s!9460))))

(declare-fun b!2387878 () Bool)

(declare-fun res!1014366 () Bool)

(assert (=> b!2387878 (=> res!1014366 e!1522405)))

(assert (=> b!2387878 (= res!1014366 call!145189)))

(assert (=> b!2387878 (= e!1522409 e!1522405)))

(declare-fun b!2387879 () Bool)

(assert (=> b!2387879 (= e!1522406 (= s!9460 (Cons!28141 (c!379678 r!13927) Nil!28141)))))

(declare-fun b!2387880 () Bool)

(assert (=> b!2387880 (= e!1522408 e!1522409)))

(declare-fun c!379729 () Bool)

(assert (=> b!2387880 (= c!379729 (is-Star!7000 r!13927))))

(declare-fun bm!145185 () Bool)

(assert (=> bm!145185 (= call!145190 (Exists!1062 (ite c!379729 lambda!89308 lambda!89310)))))

(assert (= (and d!697703 c!379726) b!2387871))

(assert (= (and d!697703 (not c!379726)) b!2387872))

(assert (= (and b!2387872 res!1014364) b!2387875))

(assert (= (and b!2387875 c!379728) b!2387879))

(assert (= (and b!2387875 (not c!379728)) b!2387874))

(assert (= (and b!2387874 c!379727) b!2387873))

(assert (= (and b!2387874 (not c!379727)) b!2387880))

(assert (= (and b!2387873 (not res!1014365)) b!2387876))

(assert (= (and b!2387880 c!379729) b!2387878))

(assert (= (and b!2387880 (not c!379729)) b!2387870))

(assert (= (and b!2387878 (not res!1014366)) b!2387877))

(assert (= (or b!2387877 b!2387870) bm!145185))

(assert (= (or b!2387871 b!2387878) bm!145184))

(declare-fun m!2788979 () Bool)

(assert (=> b!2387873 m!2788979))

(declare-fun m!2788981 () Bool)

(assert (=> b!2387876 m!2788981))

(declare-fun m!2788983 () Bool)

(assert (=> bm!145184 m!2788983))

(declare-fun m!2788985 () Bool)

(assert (=> bm!145185 m!2788985))

(assert (=> b!2387627 d!697703))

(declare-fun b!2387913 () Bool)

(declare-fun res!1014390 () Bool)

(declare-fun e!1522433 () Bool)

(assert (=> b!2387913 (=> res!1014390 e!1522433)))

(assert (=> b!2387913 (= res!1014390 (not (is-ElementMatch!7000 r!13927)))))

(declare-fun e!1522431 () Bool)

(assert (=> b!2387913 (= e!1522431 e!1522433)))

(declare-fun b!2387914 () Bool)

(declare-fun e!1522427 () Bool)

(assert (=> b!2387914 (= e!1522427 e!1522431)))

(declare-fun c!379738 () Bool)

(assert (=> b!2387914 (= c!379738 (is-EmptyLang!7000 r!13927))))

(declare-fun bm!145192 () Bool)

(declare-fun call!145197 () Bool)

(assert (=> bm!145192 (= call!145197 (isEmpty!16112 s!9460))))

(declare-fun b!2387915 () Bool)

(declare-fun res!1014389 () Bool)

(assert (=> b!2387915 (=> res!1014389 e!1522433)))

(declare-fun e!1522430 () Bool)

(assert (=> b!2387915 (= res!1014389 e!1522430)))

(declare-fun res!1014393 () Bool)

(assert (=> b!2387915 (=> (not res!1014393) (not e!1522430))))

(declare-fun lt!869729 () Bool)

(assert (=> b!2387915 (= res!1014393 lt!869729)))

(declare-fun b!2387916 () Bool)

(declare-fun head!5234 (List!28239) C!14158)

(assert (=> b!2387916 (= e!1522430 (= (head!5234 s!9460) (c!379678 r!13927)))))

(declare-fun b!2387917 () Bool)

(declare-fun e!1522428 () Bool)

(assert (=> b!2387917 (= e!1522428 (nullable!2049 r!13927))))

(declare-fun b!2387918 () Bool)

(declare-fun e!1522432 () Bool)

(assert (=> b!2387918 (= e!1522433 e!1522432)))

(declare-fun res!1014391 () Bool)

(assert (=> b!2387918 (=> (not res!1014391) (not e!1522432))))

(assert (=> b!2387918 (= res!1014391 (not lt!869729))))

(declare-fun b!2387919 () Bool)

(assert (=> b!2387919 (= e!1522431 (not lt!869729))))

(declare-fun b!2387920 () Bool)

(declare-fun res!1014392 () Bool)

(declare-fun e!1522429 () Bool)

(assert (=> b!2387920 (=> res!1014392 e!1522429)))

(declare-fun tail!3504 (List!28239) List!28239)

(assert (=> b!2387920 (= res!1014392 (not (isEmpty!16112 (tail!3504 s!9460))))))

(declare-fun b!2387921 () Bool)

(declare-fun derivativeStep!1707 (Regex!7000 C!14158) Regex!7000)

(assert (=> b!2387921 (= e!1522428 (matchR!3117 (derivativeStep!1707 r!13927 (head!5234 s!9460)) (tail!3504 s!9460)))))

(declare-fun b!2387922 () Bool)

(assert (=> b!2387922 (= e!1522432 e!1522429)))

(declare-fun res!1014387 () Bool)

(assert (=> b!2387922 (=> res!1014387 e!1522429)))

(assert (=> b!2387922 (= res!1014387 call!145197)))

(declare-fun d!697705 () Bool)

(assert (=> d!697705 e!1522427))

(declare-fun c!379736 () Bool)

(assert (=> d!697705 (= c!379736 (is-EmptyExpr!7000 r!13927))))

(assert (=> d!697705 (= lt!869729 e!1522428)))

(declare-fun c!379737 () Bool)

(assert (=> d!697705 (= c!379737 (isEmpty!16112 s!9460))))

(assert (=> d!697705 (validRegex!2725 r!13927)))

(assert (=> d!697705 (= (matchR!3117 r!13927 s!9460) lt!869729)))

(declare-fun b!2387923 () Bool)

(declare-fun res!1014388 () Bool)

(assert (=> b!2387923 (=> (not res!1014388) (not e!1522430))))

(assert (=> b!2387923 (= res!1014388 (not call!145197))))

(declare-fun b!2387924 () Bool)

(assert (=> b!2387924 (= e!1522427 (= lt!869729 call!145197))))

(declare-fun b!2387925 () Bool)

(declare-fun res!1014394 () Bool)

(assert (=> b!2387925 (=> (not res!1014394) (not e!1522430))))

(assert (=> b!2387925 (= res!1014394 (isEmpty!16112 (tail!3504 s!9460)))))

(declare-fun b!2387926 () Bool)

(assert (=> b!2387926 (= e!1522429 (not (= (head!5234 s!9460) (c!379678 r!13927))))))

(assert (= (and d!697705 c!379737) b!2387917))

(assert (= (and d!697705 (not c!379737)) b!2387921))

(assert (= (and d!697705 c!379736) b!2387924))

(assert (= (and d!697705 (not c!379736)) b!2387914))

(assert (= (and b!2387914 c!379738) b!2387919))

(assert (= (and b!2387914 (not c!379738)) b!2387913))

(assert (= (and b!2387913 (not res!1014390)) b!2387915))

(assert (= (and b!2387915 res!1014393) b!2387923))

(assert (= (and b!2387923 res!1014388) b!2387925))

(assert (= (and b!2387925 res!1014394) b!2387916))

(assert (= (and b!2387915 (not res!1014389)) b!2387918))

(assert (= (and b!2387918 res!1014391) b!2387922))

(assert (= (and b!2387922 (not res!1014387)) b!2387920))

(assert (= (and b!2387920 (not res!1014392)) b!2387926))

(assert (= (or b!2387924 b!2387922 b!2387923) bm!145192))

(declare-fun m!2788987 () Bool)

(assert (=> b!2387921 m!2788987))

(assert (=> b!2387921 m!2788987))

(declare-fun m!2788989 () Bool)

(assert (=> b!2387921 m!2788989))

(declare-fun m!2788991 () Bool)

(assert (=> b!2387921 m!2788991))

(assert (=> b!2387921 m!2788989))

(assert (=> b!2387921 m!2788991))

(declare-fun m!2788993 () Bool)

(assert (=> b!2387921 m!2788993))

(assert (=> b!2387926 m!2788987))

(assert (=> d!697705 m!2788983))

(declare-fun m!2788995 () Bool)

(assert (=> d!697705 m!2788995))

(declare-fun m!2788997 () Bool)

(assert (=> b!2387917 m!2788997))

(assert (=> b!2387916 m!2788987))

(assert (=> b!2387925 m!2788991))

(assert (=> b!2387925 m!2788991))

(declare-fun m!2788999 () Bool)

(assert (=> b!2387925 m!2788999))

(assert (=> bm!145192 m!2788983))

(assert (=> b!2387920 m!2788991))

(assert (=> b!2387920 m!2788991))

(assert (=> b!2387920 m!2788999))

(assert (=> b!2387627 d!697705))

(declare-fun d!697707 () Bool)

(assert (=> d!697707 (= (matchR!3117 r!13927 s!9460) (matchRSpec!849 r!13927 s!9460))))

(declare-fun lt!869732 () Unit!41103)

(declare-fun choose!14032 (Regex!7000 List!28239) Unit!41103)

(assert (=> d!697707 (= lt!869732 (choose!14032 r!13927 s!9460))))

(assert (=> d!697707 (validRegex!2725 r!13927)))

(assert (=> d!697707 (= (mainMatchTheorem!849 r!13927 s!9460) lt!869732)))

(declare-fun bs!462340 () Bool)

(assert (= bs!462340 d!697707))

(assert (=> bs!462340 m!2788849))

(assert (=> bs!462340 m!2788847))

(declare-fun m!2789001 () Bool)

(assert (=> bs!462340 m!2789001))

(assert (=> bs!462340 m!2788995))

(assert (=> b!2387627 d!697707))

(declare-fun d!697709 () Bool)

(declare-fun res!1014402 () Bool)

(declare-fun e!1522445 () Bool)

(assert (=> d!697709 (=> res!1014402 e!1522445)))

(assert (=> d!697709 (= res!1014402 (is-Nil!28140 l!9164))))

(assert (=> d!697709 (= (forall!5634 l!9164 lambda!89276) e!1522445)))

(declare-fun b!2387942 () Bool)

(declare-fun e!1522446 () Bool)

(assert (=> b!2387942 (= e!1522445 e!1522446)))

(declare-fun res!1014403 () Bool)

(assert (=> b!2387942 (=> (not res!1014403) (not e!1522446))))

(declare-fun dynLambda!12116 (Int Regex!7000) Bool)

(assert (=> b!2387942 (= res!1014403 (dynLambda!12116 lambda!89276 (h!33541 l!9164)))))

(declare-fun b!2387943 () Bool)

(assert (=> b!2387943 (= e!1522446 (forall!5634 (t!208215 l!9164) lambda!89276))))

(assert (= (and d!697709 (not res!1014402)) b!2387942))

(assert (= (and b!2387942 res!1014403) b!2387943))

(declare-fun b_lambda!74155 () Bool)

(assert (=> (not b_lambda!74155) (not b!2387942)))

(declare-fun m!2789003 () Bool)

(assert (=> b!2387942 m!2789003))

(declare-fun m!2789005 () Bool)

(assert (=> b!2387943 m!2789005))

(assert (=> start!234302 d!697709))

(declare-fun b!2387944 () Bool)

(declare-fun e!1522450 () Bool)

(declare-fun e!1522451 () Bool)

(assert (=> b!2387944 (= e!1522450 e!1522451)))

(declare-fun res!1014406 () Bool)

(assert (=> b!2387944 (= res!1014406 (not (nullable!2049 (reg!7329 (head!5232 l!9164)))))))

(assert (=> b!2387944 (=> (not res!1014406) (not e!1522451))))

(declare-fun call!145200 () Bool)

(declare-fun c!379744 () Bool)

(declare-fun c!379743 () Bool)

(declare-fun bm!145195 () Bool)

(assert (=> bm!145195 (= call!145200 (validRegex!2725 (ite c!379743 (reg!7329 (head!5232 l!9164)) (ite c!379744 (regOne!14513 (head!5232 l!9164)) (regTwo!14512 (head!5232 l!9164))))))))

(declare-fun b!2387945 () Bool)

(declare-fun e!1522452 () Bool)

(declare-fun call!145201 () Bool)

(assert (=> b!2387945 (= e!1522452 call!145201)))

(declare-fun b!2387946 () Bool)

(declare-fun e!1522448 () Bool)

(declare-fun e!1522453 () Bool)

(assert (=> b!2387946 (= e!1522448 e!1522453)))

(declare-fun res!1014405 () Bool)

(assert (=> b!2387946 (=> (not res!1014405) (not e!1522453))))

(assert (=> b!2387946 (= res!1014405 call!145201)))

(declare-fun b!2387947 () Bool)

(assert (=> b!2387947 (= e!1522451 call!145200)))

(declare-fun bm!145196 () Bool)

(declare-fun call!145202 () Bool)

(assert (=> bm!145196 (= call!145202 call!145200)))

(declare-fun b!2387948 () Bool)

(declare-fun res!1014408 () Bool)

(assert (=> b!2387948 (=> res!1014408 e!1522448)))

(assert (=> b!2387948 (= res!1014408 (not (is-Concat!11636 (head!5232 l!9164))))))

(declare-fun e!1522447 () Bool)

(assert (=> b!2387948 (= e!1522447 e!1522448)))

(declare-fun d!697711 () Bool)

(declare-fun res!1014407 () Bool)

(declare-fun e!1522449 () Bool)

(assert (=> d!697711 (=> res!1014407 e!1522449)))

(assert (=> d!697711 (= res!1014407 (is-ElementMatch!7000 (head!5232 l!9164)))))

(assert (=> d!697711 (= (validRegex!2725 (head!5232 l!9164)) e!1522449)))

(declare-fun bm!145197 () Bool)

(assert (=> bm!145197 (= call!145201 (validRegex!2725 (ite c!379744 (regTwo!14513 (head!5232 l!9164)) (regOne!14512 (head!5232 l!9164)))))))

(declare-fun b!2387949 () Bool)

(assert (=> b!2387949 (= e!1522450 e!1522447)))

(assert (=> b!2387949 (= c!379744 (is-Union!7000 (head!5232 l!9164)))))

(declare-fun b!2387950 () Bool)

(declare-fun res!1014404 () Bool)

(assert (=> b!2387950 (=> (not res!1014404) (not e!1522452))))

(assert (=> b!2387950 (= res!1014404 call!145202)))

(assert (=> b!2387950 (= e!1522447 e!1522452)))

(declare-fun b!2387951 () Bool)

(assert (=> b!2387951 (= e!1522453 call!145202)))

(declare-fun b!2387952 () Bool)

(assert (=> b!2387952 (= e!1522449 e!1522450)))

(assert (=> b!2387952 (= c!379743 (is-Star!7000 (head!5232 l!9164)))))

(assert (= (and d!697711 (not res!1014407)) b!2387952))

(assert (= (and b!2387952 c!379743) b!2387944))

(assert (= (and b!2387952 (not c!379743)) b!2387949))

(assert (= (and b!2387944 res!1014406) b!2387947))

(assert (= (and b!2387949 c!379744) b!2387950))

(assert (= (and b!2387949 (not c!379744)) b!2387948))

(assert (= (and b!2387950 res!1014404) b!2387945))

(assert (= (and b!2387948 (not res!1014408)) b!2387946))

(assert (= (and b!2387946 res!1014405) b!2387951))

(assert (= (or b!2387950 b!2387951) bm!145196))

(assert (= (or b!2387945 b!2387946) bm!145197))

(assert (= (or b!2387947 bm!145196) bm!145195))

(declare-fun m!2789007 () Bool)

(assert (=> b!2387944 m!2789007))

(declare-fun m!2789009 () Bool)

(assert (=> bm!145195 m!2789009))

(declare-fun m!2789011 () Bool)

(assert (=> bm!145197 m!2789011))

(assert (=> b!2387617 d!697711))

(declare-fun d!697713 () Bool)

(assert (=> d!697713 (= (head!5232 l!9164) (h!33541 l!9164))))

(assert (=> b!2387617 d!697713))

(declare-fun bs!462343 () Bool)

(declare-fun d!697715 () Bool)

(assert (= bs!462343 (and d!697715 start!234302)))

(declare-fun lambda!89314 () Int)

(assert (=> bs!462343 (= lambda!89314 lambda!89276)))

(declare-fun bs!462344 () Bool)

(assert (= bs!462344 (and d!697715 d!697681)))

(assert (=> bs!462344 (= lambda!89314 lambda!89292)))

(declare-fun b!2387953 () Bool)

(declare-fun e!1522455 () Bool)

(declare-fun lt!869733 () Regex!7000)

(assert (=> b!2387953 (= e!1522455 (isConcat!70 lt!869733))))

(declare-fun b!2387954 () Bool)

(assert (=> b!2387954 (= e!1522455 (= lt!869733 (head!5232 lt!869683)))))

(declare-fun b!2387955 () Bool)

(declare-fun e!1522454 () Regex!7000)

(declare-fun e!1522456 () Regex!7000)

(assert (=> b!2387955 (= e!1522454 e!1522456)))

(declare-fun c!379746 () Bool)

(assert (=> b!2387955 (= c!379746 (is-Cons!28140 lt!869683))))

(declare-fun b!2387956 () Bool)

(assert (=> b!2387956 (= e!1522454 (h!33541 lt!869683))))

(declare-fun b!2387957 () Bool)

(declare-fun e!1522459 () Bool)

(declare-fun e!1522458 () Bool)

(assert (=> b!2387957 (= e!1522459 e!1522458)))

(declare-fun c!379747 () Bool)

(assert (=> b!2387957 (= c!379747 (isEmpty!16109 lt!869683))))

(declare-fun b!2387958 () Bool)

(assert (=> b!2387958 (= e!1522458 e!1522455)))

(declare-fun c!379748 () Bool)

(assert (=> b!2387958 (= c!379748 (isEmpty!16109 (tail!3502 lt!869683)))))

(assert (=> d!697715 e!1522459))

(declare-fun res!1014410 () Bool)

(assert (=> d!697715 (=> (not res!1014410) (not e!1522459))))

(assert (=> d!697715 (= res!1014410 (validRegex!2725 lt!869733))))

(assert (=> d!697715 (= lt!869733 e!1522454)))

(declare-fun c!379745 () Bool)

(declare-fun e!1522457 () Bool)

(assert (=> d!697715 (= c!379745 e!1522457)))

(declare-fun res!1014409 () Bool)

(assert (=> d!697715 (=> (not res!1014409) (not e!1522457))))

(assert (=> d!697715 (= res!1014409 (is-Cons!28140 lt!869683))))

(assert (=> d!697715 (forall!5634 lt!869683 lambda!89314)))

(assert (=> d!697715 (= (generalisedConcat!101 lt!869683) lt!869733)))

(declare-fun b!2387959 () Bool)

(assert (=> b!2387959 (= e!1522457 (isEmpty!16109 (t!208215 lt!869683)))))

(declare-fun b!2387960 () Bool)

(assert (=> b!2387960 (= e!1522456 (Concat!11636 (h!33541 lt!869683) (generalisedConcat!101 (t!208215 lt!869683))))))

(declare-fun b!2387961 () Bool)

(assert (=> b!2387961 (= e!1522458 (isEmptyExpr!70 lt!869733))))

(declare-fun b!2387962 () Bool)

(assert (=> b!2387962 (= e!1522456 EmptyExpr!7000)))

(assert (= (and d!697715 res!1014409) b!2387959))

(assert (= (and d!697715 c!379745) b!2387956))

(assert (= (and d!697715 (not c!379745)) b!2387955))

(assert (= (and b!2387955 c!379746) b!2387960))

(assert (= (and b!2387955 (not c!379746)) b!2387962))

(assert (= (and d!697715 res!1014410) b!2387957))

(assert (= (and b!2387957 c!379747) b!2387961))

(assert (= (and b!2387957 (not c!379747)) b!2387958))

(assert (= (and b!2387958 c!379748) b!2387954))

(assert (= (and b!2387958 (not c!379748)) b!2387953))

(declare-fun m!2789021 () Bool)

(assert (=> d!697715 m!2789021))

(declare-fun m!2789023 () Bool)

(assert (=> d!697715 m!2789023))

(assert (=> b!2387957 m!2788843))

(declare-fun m!2789025 () Bool)

(assert (=> b!2387959 m!2789025))

(declare-fun m!2789027 () Bool)

(assert (=> b!2387953 m!2789027))

(declare-fun m!2789029 () Bool)

(assert (=> b!2387960 m!2789029))

(declare-fun m!2789031 () Bool)

(assert (=> b!2387954 m!2789031))

(declare-fun m!2789033 () Bool)

(assert (=> b!2387958 m!2789033))

(assert (=> b!2387958 m!2789033))

(declare-fun m!2789035 () Bool)

(assert (=> b!2387958 m!2789035))

(declare-fun m!2789037 () Bool)

(assert (=> b!2387961 m!2789037))

(assert (=> b!2387617 d!697715))

(declare-fun e!1522462 () Bool)

(assert (=> b!2387624 (= tp!761485 e!1522462)))

(declare-fun b!2387973 () Bool)

(assert (=> b!2387973 (= e!1522462 tp_is_empty!11413)))

(declare-fun b!2387974 () Bool)

(declare-fun tp!761526 () Bool)

(declare-fun tp!761523 () Bool)

(assert (=> b!2387974 (= e!1522462 (and tp!761526 tp!761523))))

(declare-fun b!2387976 () Bool)

(declare-fun tp!761524 () Bool)

(declare-fun tp!761522 () Bool)

(assert (=> b!2387976 (= e!1522462 (and tp!761524 tp!761522))))

(declare-fun b!2387975 () Bool)

(declare-fun tp!761525 () Bool)

(assert (=> b!2387975 (= e!1522462 tp!761525)))

(assert (= (and b!2387624 (is-ElementMatch!7000 (reg!7329 r!13927))) b!2387973))

(assert (= (and b!2387624 (is-Concat!11636 (reg!7329 r!13927))) b!2387974))

(assert (= (and b!2387624 (is-Star!7000 (reg!7329 r!13927))) b!2387975))

(assert (= (and b!2387624 (is-Union!7000 (reg!7329 r!13927))) b!2387976))

(declare-fun e!1522463 () Bool)

(assert (=> b!2387619 (= tp!761487 e!1522463)))

(declare-fun b!2387977 () Bool)

(assert (=> b!2387977 (= e!1522463 tp_is_empty!11413)))

(declare-fun b!2387978 () Bool)

(declare-fun tp!761531 () Bool)

(declare-fun tp!761528 () Bool)

(assert (=> b!2387978 (= e!1522463 (and tp!761531 tp!761528))))

(declare-fun b!2387980 () Bool)

(declare-fun tp!761529 () Bool)

(declare-fun tp!761527 () Bool)

(assert (=> b!2387980 (= e!1522463 (and tp!761529 tp!761527))))

(declare-fun b!2387979 () Bool)

(declare-fun tp!761530 () Bool)

(assert (=> b!2387979 (= e!1522463 tp!761530)))

(assert (= (and b!2387619 (is-ElementMatch!7000 (regOne!14512 r!13927))) b!2387977))

(assert (= (and b!2387619 (is-Concat!11636 (regOne!14512 r!13927))) b!2387978))

(assert (= (and b!2387619 (is-Star!7000 (regOne!14512 r!13927))) b!2387979))

(assert (= (and b!2387619 (is-Union!7000 (regOne!14512 r!13927))) b!2387980))

(declare-fun e!1522464 () Bool)

(assert (=> b!2387619 (= tp!761481 e!1522464)))

(declare-fun b!2387981 () Bool)

(assert (=> b!2387981 (= e!1522464 tp_is_empty!11413)))

(declare-fun b!2387982 () Bool)

(declare-fun tp!761536 () Bool)

(declare-fun tp!761533 () Bool)

(assert (=> b!2387982 (= e!1522464 (and tp!761536 tp!761533))))

(declare-fun b!2387984 () Bool)

(declare-fun tp!761534 () Bool)

(declare-fun tp!761532 () Bool)

(assert (=> b!2387984 (= e!1522464 (and tp!761534 tp!761532))))

(declare-fun b!2387983 () Bool)

(declare-fun tp!761535 () Bool)

(assert (=> b!2387983 (= e!1522464 tp!761535)))

(assert (= (and b!2387619 (is-ElementMatch!7000 (regTwo!14512 r!13927))) b!2387981))

(assert (= (and b!2387619 (is-Concat!11636 (regTwo!14512 r!13927))) b!2387982))

(assert (= (and b!2387619 (is-Star!7000 (regTwo!14512 r!13927))) b!2387983))

(assert (= (and b!2387619 (is-Union!7000 (regTwo!14512 r!13927))) b!2387984))

(declare-fun b!2387989 () Bool)

(declare-fun e!1522467 () Bool)

(declare-fun tp!761539 () Bool)

(assert (=> b!2387989 (= e!1522467 (and tp_is_empty!11413 tp!761539))))

(assert (=> b!2387625 (= tp!761486 e!1522467)))

(assert (= (and b!2387625 (is-Cons!28141 (t!208216 s!9460))) b!2387989))

(declare-fun e!1522468 () Bool)

(assert (=> b!2387615 (= tp!761484 e!1522468)))

(declare-fun b!2387990 () Bool)

(assert (=> b!2387990 (= e!1522468 tp_is_empty!11413)))

(declare-fun b!2387991 () Bool)

(declare-fun tp!761544 () Bool)

(declare-fun tp!761541 () Bool)

(assert (=> b!2387991 (= e!1522468 (and tp!761544 tp!761541))))

(declare-fun b!2387993 () Bool)

(declare-fun tp!761542 () Bool)

(declare-fun tp!761540 () Bool)

(assert (=> b!2387993 (= e!1522468 (and tp!761542 tp!761540))))

(declare-fun b!2387992 () Bool)

(declare-fun tp!761543 () Bool)

(assert (=> b!2387992 (= e!1522468 tp!761543)))

(assert (= (and b!2387615 (is-ElementMatch!7000 (regOne!14513 r!13927))) b!2387990))

(assert (= (and b!2387615 (is-Concat!11636 (regOne!14513 r!13927))) b!2387991))

(assert (= (and b!2387615 (is-Star!7000 (regOne!14513 r!13927))) b!2387992))

(assert (= (and b!2387615 (is-Union!7000 (regOne!14513 r!13927))) b!2387993))

(declare-fun e!1522469 () Bool)

(assert (=> b!2387615 (= tp!761483 e!1522469)))

(declare-fun b!2387994 () Bool)

(assert (=> b!2387994 (= e!1522469 tp_is_empty!11413)))

(declare-fun b!2387995 () Bool)

(declare-fun tp!761549 () Bool)

(declare-fun tp!761546 () Bool)

(assert (=> b!2387995 (= e!1522469 (and tp!761549 tp!761546))))

(declare-fun b!2387997 () Bool)

(declare-fun tp!761547 () Bool)

(declare-fun tp!761545 () Bool)

(assert (=> b!2387997 (= e!1522469 (and tp!761547 tp!761545))))

(declare-fun b!2387996 () Bool)

(declare-fun tp!761548 () Bool)

(assert (=> b!2387996 (= e!1522469 tp!761548)))

(assert (= (and b!2387615 (is-ElementMatch!7000 (regTwo!14513 r!13927))) b!2387994))

(assert (= (and b!2387615 (is-Concat!11636 (regTwo!14513 r!13927))) b!2387995))

(assert (= (and b!2387615 (is-Star!7000 (regTwo!14513 r!13927))) b!2387996))

(assert (= (and b!2387615 (is-Union!7000 (regTwo!14513 r!13927))) b!2387997))

(declare-fun e!1522470 () Bool)

(assert (=> b!2387622 (= tp!761482 e!1522470)))

(declare-fun b!2387998 () Bool)

(assert (=> b!2387998 (= e!1522470 tp_is_empty!11413)))

(declare-fun b!2387999 () Bool)

(declare-fun tp!761554 () Bool)

(declare-fun tp!761551 () Bool)

(assert (=> b!2387999 (= e!1522470 (and tp!761554 tp!761551))))

(declare-fun b!2388001 () Bool)

(declare-fun tp!761552 () Bool)

(declare-fun tp!761550 () Bool)

(assert (=> b!2388001 (= e!1522470 (and tp!761552 tp!761550))))

(declare-fun b!2388000 () Bool)

(declare-fun tp!761553 () Bool)

(assert (=> b!2388000 (= e!1522470 tp!761553)))

(assert (= (and b!2387622 (is-ElementMatch!7000 (h!33541 l!9164))) b!2387998))

(assert (= (and b!2387622 (is-Concat!11636 (h!33541 l!9164))) b!2387999))

(assert (= (and b!2387622 (is-Star!7000 (h!33541 l!9164))) b!2388000))

(assert (= (and b!2387622 (is-Union!7000 (h!33541 l!9164))) b!2388001))

(declare-fun b!2388006 () Bool)

(declare-fun e!1522473 () Bool)

(declare-fun tp!761559 () Bool)

(declare-fun tp!761560 () Bool)

(assert (=> b!2388006 (= e!1522473 (and tp!761559 tp!761560))))

(assert (=> b!2387622 (= tp!761480 e!1522473)))

(assert (= (and b!2387622 (is-Cons!28140 (t!208215 l!9164))) b!2388006))

(declare-fun b_lambda!74157 () Bool)

(assert (= b_lambda!74155 (or start!234302 b_lambda!74157)))

(declare-fun bs!462345 () Bool)

(declare-fun d!697719 () Bool)

(assert (= bs!462345 (and d!697719 start!234302)))

(assert (=> bs!462345 (= (dynLambda!12116 lambda!89276 (h!33541 l!9164)) (validRegex!2725 (h!33541 l!9164)))))

(declare-fun m!2789039 () Bool)

(assert (=> bs!462345 m!2789039))

(assert (=> b!2387942 d!697719))

(push 1)

(assert (not b!2387705))

(assert (not b!2387740))

(assert (not b!2387999))

(assert (not b!2387996))

(assert (not b!2387976))

(assert (not b!2387954))

(assert (not b!2387992))

(assert (not d!697681))

(assert (not b!2387961))

(assert (not b!2387742))

(assert (not d!697693))

(assert (not b!2387739))

(assert (not b!2387876))

(assert (not b!2387738))

(assert (not b!2387991))

(assert (not b!2388006))

(assert (not b!2387925))

(assert (not b!2387741))

(assert (not b!2387916))

(assert (not d!697695))

(assert (not bm!145185))

(assert (not b!2387982))

(assert (not bm!145192))

(assert (not bm!145197))

(assert (not b!2388001))

(assert (not b!2387804))

(assert (not b!2387921))

(assert (not d!697691))

(assert (not b!2387989))

(assert (not d!697715))

(assert (not b!2387958))

(assert (not b!2387960))

(assert (not b!2387805))

(assert (not b!2387975))

(assert (not b!2387995))

(assert (not d!697683))

(assert (not b!2387944))

(assert (not b!2387920))

(assert (not b!2387980))

(assert (not b!2387993))

(assert (not b!2388000))

(assert (not b!2387974))

(assert (not bm!145168))

(assert (not b!2387806))

(assert (not b!2387735))

(assert (not b!2387809))

(assert (not d!697707))

(assert (not d!697705))

(assert (not bs!462345))

(assert (not b!2387957))

(assert (not b!2387953))

(assert (not d!697685))

(assert (not d!697687))

(assert (not b!2387917))

(assert (not bm!145184))

(assert (not b!2387997))

(assert (not b!2387943))

(assert (not b!2387807))

(assert (not b!2387926))

(assert (not bm!145170))

(assert (not bm!145195))

(assert (not b!2387802))

(assert (not b!2387978))

(assert (not b!2387984))

(assert (not b!2387983))

(assert (not b!2387959))

(assert (not b!2387734))

(assert (not b!2387873))

(assert tp_is_empty!11413)

(assert (not b_lambda!74157))

(assert (not b!2387979))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

