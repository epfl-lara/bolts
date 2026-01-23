; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!232288 () Bool)

(assert start!232288)

(declare-fun b!2366821 () Bool)

(assert (=> b!2366821 true))

(assert (=> b!2366821 true))

(declare-fun lambda!87358 () Int)

(declare-fun lambda!87357 () Int)

(assert (=> b!2366821 (not (= lambda!87358 lambda!87357))))

(assert (=> b!2366821 true))

(assert (=> b!2366821 true))

(declare-fun b!2366813 () Bool)

(declare-fun res!1004459 () Bool)

(declare-fun e!1511088 () Bool)

(assert (=> b!2366813 (=> res!1004459 e!1511088)))

(declare-datatypes ((C!14018 0))(
  ( (C!14019 (val!8251 Int)) )
))
(declare-datatypes ((Regex!6930 0))(
  ( (ElementMatch!6930 (c!376186 C!14018)) (Concat!11566 (regOne!14372 Regex!6930) (regTwo!14372 Regex!6930)) (EmptyExpr!6930) (Star!6930 (reg!7259 Regex!6930)) (EmptyLang!6930) (Union!6930 (regOne!14373 Regex!6930) (regTwo!14373 Regex!6930)) )
))
(declare-datatypes ((List!28098 0))(
  ( (Nil!28000) (Cons!28000 (h!33401 Regex!6930) (t!208075 List!28098)) )
))
(declare-fun l!9164 () List!28098)

(declare-fun isEmpty!15925 (List!28098) Bool)

(assert (=> b!2366813 (= res!1004459 (isEmpty!15925 l!9164))))

(declare-fun b!2366814 () Bool)

(declare-fun e!1511091 () Bool)

(declare-fun tp!756861 () Bool)

(declare-fun tp!756864 () Bool)

(assert (=> b!2366814 (= e!1511091 (and tp!756861 tp!756864))))

(declare-fun b!2366815 () Bool)

(declare-fun e!1511092 () Bool)

(assert (=> b!2366815 (= e!1511092 (not (= l!9164 Nil!28000)))))

(declare-fun b!2366816 () Bool)

(declare-fun res!1004458 () Bool)

(assert (=> b!2366816 (=> res!1004458 e!1511092)))

(declare-fun lt!865274 () List!28098)

(declare-fun generalisedConcat!31 (List!28098) Regex!6930)

(assert (=> b!2366816 (= res!1004458 (not (= (generalisedConcat!31 lt!865274) EmptyExpr!6930)))))

(declare-fun b!2366817 () Bool)

(assert (=> b!2366817 (= e!1511088 e!1511092)))

(declare-fun res!1004457 () Bool)

(assert (=> b!2366817 (=> res!1004457 e!1511092)))

(assert (=> b!2366817 (= res!1004457 (not (isEmpty!15925 lt!865274)))))

(declare-fun tail!3375 (List!28098) List!28098)

(assert (=> b!2366817 (= lt!865274 (tail!3375 l!9164))))

(declare-fun b!2366818 () Bool)

(declare-fun res!1004460 () Bool)

(declare-fun e!1511089 () Bool)

(assert (=> b!2366818 (=> (not res!1004460) (not e!1511089))))

(declare-fun r!13927 () Regex!6930)

(assert (=> b!2366818 (= res!1004460 (= r!13927 (generalisedConcat!31 l!9164)))))

(declare-fun b!2366819 () Bool)

(declare-fun e!1511090 () Bool)

(declare-fun tp_is_empty!11273 () Bool)

(declare-fun tp!756867 () Bool)

(assert (=> b!2366819 (= e!1511090 (and tp_is_empty!11273 tp!756867))))

(declare-fun b!2366820 () Bool)

(declare-fun tp!756863 () Bool)

(assert (=> b!2366820 (= e!1511091 tp!756863)))

(declare-fun b!2366822 () Bool)

(declare-fun e!1511087 () Bool)

(declare-fun tp!756866 () Bool)

(declare-fun tp!756865 () Bool)

(assert (=> b!2366822 (= e!1511087 (and tp!756866 tp!756865))))

(declare-fun res!1004461 () Bool)

(assert (=> start!232288 (=> (not res!1004461) (not e!1511089))))

(declare-fun lambda!87356 () Int)

(declare-fun forall!5564 (List!28098 Int) Bool)

(assert (=> start!232288 (= res!1004461 (forall!5564 l!9164 lambda!87356))))

(assert (=> start!232288 e!1511089))

(assert (=> start!232288 e!1511087))

(assert (=> start!232288 e!1511091))

(assert (=> start!232288 e!1511090))

(declare-fun e!1511093 () Bool)

(assert (=> b!2366821 (= e!1511093 e!1511088)))

(declare-fun res!1004456 () Bool)

(assert (=> b!2366821 (=> res!1004456 e!1511088)))

(declare-fun lt!865273 () Bool)

(declare-fun lt!865275 () Bool)

(assert (=> b!2366821 (= res!1004456 (not (= lt!865273 lt!865275)))))

(declare-fun Exists!992 (Int) Bool)

(assert (=> b!2366821 (= (Exists!992 lambda!87357) (Exists!992 lambda!87358))))

(declare-datatypes ((Unit!40895 0))(
  ( (Unit!40896) )
))
(declare-fun lt!865270 () Unit!40895)

(declare-datatypes ((List!28099 0))(
  ( (Nil!28001) (Cons!28001 (h!33402 C!14018) (t!208076 List!28099)) )
))
(declare-fun s!9460 () List!28099)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!331 (Regex!6930 Regex!6930 List!28099) Unit!40895)

(assert (=> b!2366821 (= lt!865270 (lemmaExistCutMatchRandMatchRSpecEquivalent!331 (regOne!14372 r!13927) (regTwo!14372 r!13927) s!9460))))

(assert (=> b!2366821 (= lt!865275 (Exists!992 lambda!87357))))

(declare-datatypes ((tuple2!27724 0))(
  ( (tuple2!27725 (_1!16403 List!28099) (_2!16403 List!28099)) )
))
(declare-datatypes ((Option!5473 0))(
  ( (None!5472) (Some!5472 (v!30880 tuple2!27724)) )
))
(declare-fun isDefined!4301 (Option!5473) Bool)

(declare-fun findConcatSeparation!581 (Regex!6930 Regex!6930 List!28099 List!28099 List!28099) Option!5473)

(assert (=> b!2366821 (= lt!865275 (isDefined!4301 (findConcatSeparation!581 (regOne!14372 r!13927) (regTwo!14372 r!13927) Nil!28001 s!9460 s!9460)))))

(declare-fun lt!865269 () Unit!40895)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!581 (Regex!6930 Regex!6930 List!28099) Unit!40895)

(assert (=> b!2366821 (= lt!865269 (lemmaFindConcatSeparationEquivalentToExists!581 (regOne!14372 r!13927) (regTwo!14372 r!13927) s!9460))))

(declare-fun b!2366823 () Bool)

(declare-fun tp!756862 () Bool)

(declare-fun tp!756860 () Bool)

(assert (=> b!2366823 (= e!1511091 (and tp!756862 tp!756860))))

(declare-fun b!2366824 () Bool)

(assert (=> b!2366824 (= e!1511089 (not e!1511093))))

(declare-fun res!1004455 () Bool)

(assert (=> b!2366824 (=> res!1004455 e!1511093)))

(assert (=> b!2366824 (= res!1004455 (not (is-Concat!11566 r!13927)))))

(declare-fun lt!865272 () Bool)

(assert (=> b!2366824 (= lt!865272 lt!865273)))

(declare-fun matchRSpec!779 (Regex!6930 List!28099) Bool)

(assert (=> b!2366824 (= lt!865273 (matchRSpec!779 r!13927 s!9460))))

(declare-fun matchR!3047 (Regex!6930 List!28099) Bool)

(assert (=> b!2366824 (= lt!865272 (matchR!3047 r!13927 s!9460))))

(declare-fun lt!865271 () Unit!40895)

(declare-fun mainMatchTheorem!779 (Regex!6930 List!28099) Unit!40895)

(assert (=> b!2366824 (= lt!865271 (mainMatchTheorem!779 r!13927 s!9460))))

(declare-fun b!2366825 () Bool)

(assert (=> b!2366825 (= e!1511091 tp_is_empty!11273)))

(assert (= (and start!232288 res!1004461) b!2366818))

(assert (= (and b!2366818 res!1004460) b!2366824))

(assert (= (and b!2366824 (not res!1004455)) b!2366821))

(assert (= (and b!2366821 (not res!1004456)) b!2366813))

(assert (= (and b!2366813 (not res!1004459)) b!2366817))

(assert (= (and b!2366817 (not res!1004457)) b!2366816))

(assert (= (and b!2366816 (not res!1004458)) b!2366815))

(assert (= (and start!232288 (is-Cons!28000 l!9164)) b!2366822))

(assert (= (and start!232288 (is-ElementMatch!6930 r!13927)) b!2366825))

(assert (= (and start!232288 (is-Concat!11566 r!13927)) b!2366814))

(assert (= (and start!232288 (is-Star!6930 r!13927)) b!2366820))

(assert (= (and start!232288 (is-Union!6930 r!13927)) b!2366823))

(assert (= (and start!232288 (is-Cons!28001 s!9460)) b!2366819))

(declare-fun m!2776483 () Bool)

(assert (=> b!2366817 m!2776483))

(declare-fun m!2776485 () Bool)

(assert (=> b!2366817 m!2776485))

(declare-fun m!2776487 () Bool)

(assert (=> b!2366821 m!2776487))

(declare-fun m!2776489 () Bool)

(assert (=> b!2366821 m!2776489))

(declare-fun m!2776491 () Bool)

(assert (=> b!2366821 m!2776491))

(declare-fun m!2776493 () Bool)

(assert (=> b!2366821 m!2776493))

(declare-fun m!2776495 () Bool)

(assert (=> b!2366821 m!2776495))

(assert (=> b!2366821 m!2776493))

(assert (=> b!2366821 m!2776489))

(declare-fun m!2776497 () Bool)

(assert (=> b!2366821 m!2776497))

(declare-fun m!2776499 () Bool)

(assert (=> b!2366813 m!2776499))

(declare-fun m!2776501 () Bool)

(assert (=> start!232288 m!2776501))

(declare-fun m!2776503 () Bool)

(assert (=> b!2366818 m!2776503))

(declare-fun m!2776505 () Bool)

(assert (=> b!2366816 m!2776505))

(declare-fun m!2776507 () Bool)

(assert (=> b!2366824 m!2776507))

(declare-fun m!2776509 () Bool)

(assert (=> b!2366824 m!2776509))

(declare-fun m!2776511 () Bool)

(assert (=> b!2366824 m!2776511))

(push 1)

(assert (not start!232288))

(assert (not b!2366819))

(assert (not b!2366824))

(assert (not b!2366813))

(assert (not b!2366820))

(assert tp_is_empty!11273)

(assert (not b!2366817))

(assert (not b!2366818))

(assert (not b!2366823))

(assert (not b!2366821))

(assert (not b!2366816))

(assert (not b!2366814))

(assert (not b!2366822))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!460968 () Bool)

(declare-fun b!2366918 () Bool)

(assert (= bs!460968 (and b!2366918 b!2366821)))

(declare-fun lambda!87374 () Int)

(assert (=> bs!460968 (not (= lambda!87374 lambda!87357))))

(assert (=> bs!460968 (not (= lambda!87374 lambda!87358))))

(assert (=> b!2366918 true))

(assert (=> b!2366918 true))

(declare-fun bs!460969 () Bool)

(declare-fun b!2366920 () Bool)

(assert (= bs!460969 (and b!2366920 b!2366821)))

(declare-fun lambda!87375 () Int)

(assert (=> bs!460969 (not (= lambda!87375 lambda!87357))))

(assert (=> bs!460969 (= lambda!87375 lambda!87358)))

(declare-fun bs!460970 () Bool)

(assert (= bs!460970 (and b!2366920 b!2366918)))

(assert (=> bs!460970 (not (= lambda!87375 lambda!87374))))

(assert (=> b!2366920 true))

(assert (=> b!2366920 true))

(declare-fun b!2366917 () Bool)

(declare-fun res!1004512 () Bool)

(declare-fun e!1511143 () Bool)

(assert (=> b!2366917 (=> res!1004512 e!1511143)))

(declare-fun call!143981 () Bool)

(assert (=> b!2366917 (= res!1004512 call!143981)))

(declare-fun e!1511142 () Bool)

(assert (=> b!2366917 (= e!1511142 e!1511143)))

(declare-fun call!143982 () Bool)

(assert (=> b!2366918 (= e!1511143 call!143982)))

(declare-fun bm!143976 () Bool)

(declare-fun isEmpty!15927 (List!28099) Bool)

(assert (=> bm!143976 (= call!143981 (isEmpty!15927 s!9460))))

(declare-fun b!2366919 () Bool)

(declare-fun e!1511145 () Bool)

(assert (=> b!2366919 (= e!1511145 call!143981)))

(assert (=> b!2366920 (= e!1511142 call!143982)))

(declare-fun b!2366921 () Bool)

(declare-fun e!1511140 () Bool)

(assert (=> b!2366921 (= e!1511140 (matchRSpec!779 (regTwo!14373 r!13927) s!9460))))

(declare-fun c!376196 () Bool)

(declare-fun bm!143977 () Bool)

(assert (=> bm!143977 (= call!143982 (Exists!992 (ite c!376196 lambda!87374 lambda!87375)))))

(declare-fun b!2366922 () Bool)

(declare-fun c!376198 () Bool)

(assert (=> b!2366922 (= c!376198 (is-Union!6930 r!13927))))

(declare-fun e!1511139 () Bool)

(declare-fun e!1511144 () Bool)

(assert (=> b!2366922 (= e!1511139 e!1511144)))

(declare-fun b!2366923 () Bool)

(declare-fun c!376199 () Bool)

(assert (=> b!2366923 (= c!376199 (is-ElementMatch!6930 r!13927))))

(declare-fun e!1511141 () Bool)

(assert (=> b!2366923 (= e!1511141 e!1511139)))

(declare-fun b!2366924 () Bool)

(assert (=> b!2366924 (= e!1511144 e!1511140)))

(declare-fun res!1004511 () Bool)

(assert (=> b!2366924 (= res!1004511 (matchRSpec!779 (regOne!14373 r!13927) s!9460))))

(assert (=> b!2366924 (=> res!1004511 e!1511140)))

(declare-fun b!2366925 () Bool)

(assert (=> b!2366925 (= e!1511139 (= s!9460 (Cons!28001 (c!376186 r!13927) Nil!28001)))))

(declare-fun d!694832 () Bool)

(declare-fun c!376197 () Bool)

(assert (=> d!694832 (= c!376197 (is-EmptyExpr!6930 r!13927))))

(assert (=> d!694832 (= (matchRSpec!779 r!13927 s!9460) e!1511145)))

(declare-fun b!2366926 () Bool)

(assert (=> b!2366926 (= e!1511144 e!1511142)))

(assert (=> b!2366926 (= c!376196 (is-Star!6930 r!13927))))

(declare-fun b!2366927 () Bool)

(assert (=> b!2366927 (= e!1511145 e!1511141)))

(declare-fun res!1004513 () Bool)

(assert (=> b!2366927 (= res!1004513 (not (is-EmptyLang!6930 r!13927)))))

(assert (=> b!2366927 (=> (not res!1004513) (not e!1511141))))

(assert (= (and d!694832 c!376197) b!2366919))

(assert (= (and d!694832 (not c!376197)) b!2366927))

(assert (= (and b!2366927 res!1004513) b!2366923))

(assert (= (and b!2366923 c!376199) b!2366925))

(assert (= (and b!2366923 (not c!376199)) b!2366922))

(assert (= (and b!2366922 c!376198) b!2366924))

(assert (= (and b!2366922 (not c!376198)) b!2366926))

(assert (= (and b!2366924 (not res!1004511)) b!2366921))

(assert (= (and b!2366926 c!376196) b!2366917))

(assert (= (and b!2366926 (not c!376196)) b!2366920))

(assert (= (and b!2366917 (not res!1004512)) b!2366918))

(assert (= (or b!2366918 b!2366920) bm!143977))

(assert (= (or b!2366919 b!2366917) bm!143976))

(declare-fun m!2776543 () Bool)

(assert (=> bm!143976 m!2776543))

(declare-fun m!2776545 () Bool)

(assert (=> b!2366921 m!2776545))

(declare-fun m!2776547 () Bool)

(assert (=> bm!143977 m!2776547))

(declare-fun m!2776549 () Bool)

(assert (=> b!2366924 m!2776549))

(assert (=> b!2366824 d!694832))

(declare-fun b!2366976 () Bool)

(declare-fun e!1511173 () Bool)

(declare-fun nullable!1993 (Regex!6930) Bool)

(assert (=> b!2366976 (= e!1511173 (nullable!1993 r!13927))))

(declare-fun b!2366978 () Bool)

(declare-fun e!1511174 () Bool)

(declare-fun head!5105 (List!28099) C!14018)

(assert (=> b!2366978 (= e!1511174 (not (= (head!5105 s!9460) (c!376186 r!13927))))))

(declare-fun b!2366979 () Bool)

(declare-fun e!1511178 () Bool)

(declare-fun e!1511176 () Bool)

(assert (=> b!2366979 (= e!1511178 e!1511176)))

(declare-fun res!1004539 () Bool)

(assert (=> b!2366979 (=> (not res!1004539) (not e!1511176))))

(declare-fun lt!865301 () Bool)

(assert (=> b!2366979 (= res!1004539 (not lt!865301))))

(declare-fun b!2366980 () Bool)

(declare-fun derivativeStep!1652 (Regex!6930 C!14018) Regex!6930)

(declare-fun tail!3377 (List!28099) List!28099)

(assert (=> b!2366980 (= e!1511173 (matchR!3047 (derivativeStep!1652 r!13927 (head!5105 s!9460)) (tail!3377 s!9460)))))

(declare-fun b!2366981 () Bool)

(assert (=> b!2366981 (= e!1511176 e!1511174)))

(declare-fun res!1004535 () Bool)

(assert (=> b!2366981 (=> res!1004535 e!1511174)))

(declare-fun call!143985 () Bool)

(assert (=> b!2366981 (= res!1004535 call!143985)))

(declare-fun b!2366982 () Bool)

(declare-fun e!1511172 () Bool)

(assert (=> b!2366982 (= e!1511172 (= lt!865301 call!143985))))

(declare-fun b!2366983 () Bool)

(declare-fun e!1511175 () Bool)

(assert (=> b!2366983 (= e!1511175 (not lt!865301))))

(declare-fun b!2366984 () Bool)

(declare-fun res!1004538 () Bool)

(assert (=> b!2366984 (=> res!1004538 e!1511178)))

(assert (=> b!2366984 (= res!1004538 (not (is-ElementMatch!6930 r!13927)))))

(assert (=> b!2366984 (= e!1511175 e!1511178)))

(declare-fun b!2366985 () Bool)

(declare-fun res!1004534 () Bool)

(assert (=> b!2366985 (=> res!1004534 e!1511178)))

(declare-fun e!1511177 () Bool)

(assert (=> b!2366985 (= res!1004534 e!1511177)))

(declare-fun res!1004540 () Bool)

(assert (=> b!2366985 (=> (not res!1004540) (not e!1511177))))

(assert (=> b!2366985 (= res!1004540 lt!865301)))

(declare-fun b!2366986 () Bool)

(declare-fun res!1004536 () Bool)

(assert (=> b!2366986 (=> res!1004536 e!1511174)))

(assert (=> b!2366986 (= res!1004536 (not (isEmpty!15927 (tail!3377 s!9460))))))

(declare-fun bm!143980 () Bool)

(assert (=> bm!143980 (= call!143985 (isEmpty!15927 s!9460))))

(declare-fun b!2366987 () Bool)

(assert (=> b!2366987 (= e!1511177 (= (head!5105 s!9460) (c!376186 r!13927)))))

(declare-fun b!2366988 () Bool)

(assert (=> b!2366988 (= e!1511172 e!1511175)))

(declare-fun c!376216 () Bool)

(assert (=> b!2366988 (= c!376216 (is-EmptyLang!6930 r!13927))))

(declare-fun b!2366989 () Bool)

(declare-fun res!1004537 () Bool)

(assert (=> b!2366989 (=> (not res!1004537) (not e!1511177))))

(assert (=> b!2366989 (= res!1004537 (isEmpty!15927 (tail!3377 s!9460)))))

(declare-fun b!2366977 () Bool)

(declare-fun res!1004541 () Bool)

(assert (=> b!2366977 (=> (not res!1004541) (not e!1511177))))

(assert (=> b!2366977 (= res!1004541 (not call!143985))))

(declare-fun d!694836 () Bool)

(assert (=> d!694836 e!1511172))

(declare-fun c!376214 () Bool)

(assert (=> d!694836 (= c!376214 (is-EmptyExpr!6930 r!13927))))

(assert (=> d!694836 (= lt!865301 e!1511173)))

(declare-fun c!376215 () Bool)

(assert (=> d!694836 (= c!376215 (isEmpty!15927 s!9460))))

(declare-fun validRegex!2660 (Regex!6930) Bool)

(assert (=> d!694836 (validRegex!2660 r!13927)))

(assert (=> d!694836 (= (matchR!3047 r!13927 s!9460) lt!865301)))

(assert (= (and d!694836 c!376215) b!2366976))

(assert (= (and d!694836 (not c!376215)) b!2366980))

(assert (= (and d!694836 c!376214) b!2366982))

(assert (= (and d!694836 (not c!376214)) b!2366988))

(assert (= (and b!2366988 c!376216) b!2366983))

(assert (= (and b!2366988 (not c!376216)) b!2366984))

(assert (= (and b!2366984 (not res!1004538)) b!2366985))

(assert (= (and b!2366985 res!1004540) b!2366977))

(assert (= (and b!2366977 res!1004541) b!2366989))

(assert (= (and b!2366989 res!1004537) b!2366987))

(assert (= (and b!2366985 (not res!1004534)) b!2366979))

(assert (= (and b!2366979 res!1004539) b!2366981))

(assert (= (and b!2366981 (not res!1004535)) b!2366986))

(assert (= (and b!2366986 (not res!1004536)) b!2366978))

(assert (= (or b!2366982 b!2366977 b!2366981) bm!143980))

(assert (=> d!694836 m!2776543))

(declare-fun m!2776551 () Bool)

(assert (=> d!694836 m!2776551))

(declare-fun m!2776553 () Bool)

(assert (=> b!2366978 m!2776553))

(declare-fun m!2776555 () Bool)

(assert (=> b!2366989 m!2776555))

(assert (=> b!2366989 m!2776555))

(declare-fun m!2776557 () Bool)

(assert (=> b!2366989 m!2776557))

(assert (=> b!2366987 m!2776553))

(assert (=> bm!143980 m!2776543))

(assert (=> b!2366980 m!2776553))

(assert (=> b!2366980 m!2776553))

(declare-fun m!2776559 () Bool)

(assert (=> b!2366980 m!2776559))

(assert (=> b!2366980 m!2776555))

(assert (=> b!2366980 m!2776559))

(assert (=> b!2366980 m!2776555))

(declare-fun m!2776561 () Bool)

(assert (=> b!2366980 m!2776561))

(assert (=> b!2366986 m!2776555))

(assert (=> b!2366986 m!2776555))

(assert (=> b!2366986 m!2776557))

(declare-fun m!2776563 () Bool)

(assert (=> b!2366976 m!2776563))

(assert (=> b!2366824 d!694836))

(declare-fun d!694838 () Bool)

(assert (=> d!694838 (= (matchR!3047 r!13927 s!9460) (matchRSpec!779 r!13927 s!9460))))

(declare-fun lt!865304 () Unit!40895)

(declare-fun choose!13748 (Regex!6930 List!28099) Unit!40895)

(assert (=> d!694838 (= lt!865304 (choose!13748 r!13927 s!9460))))

(assert (=> d!694838 (validRegex!2660 r!13927)))

(assert (=> d!694838 (= (mainMatchTheorem!779 r!13927 s!9460) lt!865304)))

(declare-fun bs!460971 () Bool)

(assert (= bs!460971 d!694838))

(assert (=> bs!460971 m!2776509))

(assert (=> bs!460971 m!2776507))

(declare-fun m!2776565 () Bool)

(assert (=> bs!460971 m!2776565))

(assert (=> bs!460971 m!2776551))

(assert (=> b!2366824 d!694838))

(declare-fun d!694840 () Bool)

(assert (=> d!694840 (= (isEmpty!15925 l!9164) (is-Nil!28000 l!9164))))

(assert (=> b!2366813 d!694840))

(declare-fun bs!460973 () Bool)

(declare-fun d!694842 () Bool)

(assert (= bs!460973 (and d!694842 start!232288)))

(declare-fun lambda!87381 () Int)

(assert (=> bs!460973 (= lambda!87381 lambda!87356)))

(declare-fun b!2367020 () Bool)

(declare-fun e!1511202 () Bool)

(declare-fun e!1511197 () Bool)

(assert (=> b!2367020 (= e!1511202 e!1511197)))

(declare-fun c!376229 () Bool)

(assert (=> b!2367020 (= c!376229 (isEmpty!15925 l!9164))))

(declare-fun b!2367021 () Bool)

(declare-fun e!1511201 () Regex!6930)

(assert (=> b!2367021 (= e!1511201 (Concat!11566 (h!33401 l!9164) (generalisedConcat!31 (t!208075 l!9164))))))

(assert (=> d!694842 e!1511202))

(declare-fun res!1004548 () Bool)

(assert (=> d!694842 (=> (not res!1004548) (not e!1511202))))

(declare-fun lt!865308 () Regex!6930)

(assert (=> d!694842 (= res!1004548 (validRegex!2660 lt!865308))))

(declare-fun e!1511198 () Regex!6930)

(assert (=> d!694842 (= lt!865308 e!1511198)))

(declare-fun c!376230 () Bool)

(declare-fun e!1511199 () Bool)

(assert (=> d!694842 (= c!376230 e!1511199)))

(declare-fun res!1004549 () Bool)

(assert (=> d!694842 (=> (not res!1004549) (not e!1511199))))

(assert (=> d!694842 (= res!1004549 (is-Cons!28000 l!9164))))

(assert (=> d!694842 (forall!5564 l!9164 lambda!87381)))

(assert (=> d!694842 (= (generalisedConcat!31 l!9164) lt!865308)))

(declare-fun b!2367022 () Bool)

(assert (=> b!2367022 (= e!1511201 EmptyExpr!6930)))

(declare-fun b!2367023 () Bool)

(declare-fun isEmptyExpr!15 (Regex!6930) Bool)

(assert (=> b!2367023 (= e!1511197 (isEmptyExpr!15 lt!865308))))

(declare-fun b!2367024 () Bool)

(assert (=> b!2367024 (= e!1511198 e!1511201)))

(declare-fun c!376232 () Bool)

(assert (=> b!2367024 (= c!376232 (is-Cons!28000 l!9164))))

(declare-fun b!2367025 () Bool)

(declare-fun e!1511200 () Bool)

(declare-fun head!5106 (List!28098) Regex!6930)

(assert (=> b!2367025 (= e!1511200 (= lt!865308 (head!5106 l!9164)))))

(declare-fun b!2367026 () Bool)

(declare-fun isConcat!15 (Regex!6930) Bool)

(assert (=> b!2367026 (= e!1511200 (isConcat!15 lt!865308))))

(declare-fun b!2367027 () Bool)

(assert (=> b!2367027 (= e!1511197 e!1511200)))

(declare-fun c!376231 () Bool)

(assert (=> b!2367027 (= c!376231 (isEmpty!15925 (tail!3375 l!9164)))))

(declare-fun b!2367028 () Bool)

(assert (=> b!2367028 (= e!1511198 (h!33401 l!9164))))

(declare-fun b!2367029 () Bool)

(assert (=> b!2367029 (= e!1511199 (isEmpty!15925 (t!208075 l!9164)))))

(assert (= (and d!694842 res!1004549) b!2367029))

(assert (= (and d!694842 c!376230) b!2367028))

(assert (= (and d!694842 (not c!376230)) b!2367024))

(assert (= (and b!2367024 c!376232) b!2367021))

(assert (= (and b!2367024 (not c!376232)) b!2367022))

(assert (= (and d!694842 res!1004548) b!2367020))

(assert (= (and b!2367020 c!376229) b!2367023))

(assert (= (and b!2367020 (not c!376229)) b!2367027))

(assert (= (and b!2367027 c!376231) b!2367025))

(assert (= (and b!2367027 (not c!376231)) b!2367026))

(declare-fun m!2776583 () Bool)

(assert (=> b!2367021 m!2776583))

(declare-fun m!2776585 () Bool)

(assert (=> b!2367029 m!2776585))

(declare-fun m!2776587 () Bool)

(assert (=> b!2367023 m!2776587))

(declare-fun m!2776589 () Bool)

(assert (=> b!2367025 m!2776589))

(declare-fun m!2776591 () Bool)

(assert (=> d!694842 m!2776591))

(declare-fun m!2776593 () Bool)

(assert (=> d!694842 m!2776593))

(assert (=> b!2367020 m!2776499))

(assert (=> b!2367027 m!2776485))

(assert (=> b!2367027 m!2776485))

(declare-fun m!2776595 () Bool)

(assert (=> b!2367027 m!2776595))

(declare-fun m!2776597 () Bool)

(assert (=> b!2367026 m!2776597))

(assert (=> b!2366818 d!694842))

(declare-fun d!694850 () Bool)

(assert (=> d!694850 (= (isEmpty!15925 lt!865274) (is-Nil!28000 lt!865274))))

(assert (=> b!2366817 d!694850))

(declare-fun d!694852 () Bool)

(assert (=> d!694852 (= (tail!3375 l!9164) (t!208075 l!9164))))

(assert (=> b!2366817 d!694852))

(declare-fun bs!460974 () Bool)

(declare-fun d!694854 () Bool)

(assert (= bs!460974 (and d!694854 start!232288)))

(declare-fun lambda!87382 () Int)

(assert (=> bs!460974 (= lambda!87382 lambda!87356)))

(declare-fun bs!460975 () Bool)

(assert (= bs!460975 (and d!694854 d!694842)))

(assert (=> bs!460975 (= lambda!87382 lambda!87381)))

(declare-fun b!2367030 () Bool)

(declare-fun e!1511208 () Bool)

(declare-fun e!1511203 () Bool)

(assert (=> b!2367030 (= e!1511208 e!1511203)))

(declare-fun c!376233 () Bool)

(assert (=> b!2367030 (= c!376233 (isEmpty!15925 lt!865274))))

(declare-fun b!2367031 () Bool)

(declare-fun e!1511207 () Regex!6930)

(assert (=> b!2367031 (= e!1511207 (Concat!11566 (h!33401 lt!865274) (generalisedConcat!31 (t!208075 lt!865274))))))

(assert (=> d!694854 e!1511208))

(declare-fun res!1004550 () Bool)

(assert (=> d!694854 (=> (not res!1004550) (not e!1511208))))

(declare-fun lt!865309 () Regex!6930)

(assert (=> d!694854 (= res!1004550 (validRegex!2660 lt!865309))))

(declare-fun e!1511204 () Regex!6930)

(assert (=> d!694854 (= lt!865309 e!1511204)))

(declare-fun c!376234 () Bool)

(declare-fun e!1511205 () Bool)

(assert (=> d!694854 (= c!376234 e!1511205)))

(declare-fun res!1004551 () Bool)

(assert (=> d!694854 (=> (not res!1004551) (not e!1511205))))

(assert (=> d!694854 (= res!1004551 (is-Cons!28000 lt!865274))))

(assert (=> d!694854 (forall!5564 lt!865274 lambda!87382)))

(assert (=> d!694854 (= (generalisedConcat!31 lt!865274) lt!865309)))

(declare-fun b!2367032 () Bool)

(assert (=> b!2367032 (= e!1511207 EmptyExpr!6930)))

(declare-fun b!2367033 () Bool)

(assert (=> b!2367033 (= e!1511203 (isEmptyExpr!15 lt!865309))))

(declare-fun b!2367034 () Bool)

(assert (=> b!2367034 (= e!1511204 e!1511207)))

(declare-fun c!376236 () Bool)

(assert (=> b!2367034 (= c!376236 (is-Cons!28000 lt!865274))))

(declare-fun b!2367035 () Bool)

(declare-fun e!1511206 () Bool)

(assert (=> b!2367035 (= e!1511206 (= lt!865309 (head!5106 lt!865274)))))

(declare-fun b!2367036 () Bool)

(assert (=> b!2367036 (= e!1511206 (isConcat!15 lt!865309))))

(declare-fun b!2367037 () Bool)

(assert (=> b!2367037 (= e!1511203 e!1511206)))

(declare-fun c!376235 () Bool)

(assert (=> b!2367037 (= c!376235 (isEmpty!15925 (tail!3375 lt!865274)))))

(declare-fun b!2367038 () Bool)

(assert (=> b!2367038 (= e!1511204 (h!33401 lt!865274))))

(declare-fun b!2367039 () Bool)

(assert (=> b!2367039 (= e!1511205 (isEmpty!15925 (t!208075 lt!865274)))))

(assert (= (and d!694854 res!1004551) b!2367039))

(assert (= (and d!694854 c!376234) b!2367038))

(assert (= (and d!694854 (not c!376234)) b!2367034))

(assert (= (and b!2367034 c!376236) b!2367031))

(assert (= (and b!2367034 (not c!376236)) b!2367032))

(assert (= (and d!694854 res!1004550) b!2367030))

(assert (= (and b!2367030 c!376233) b!2367033))

(assert (= (and b!2367030 (not c!376233)) b!2367037))

(assert (= (and b!2367037 c!376235) b!2367035))

(assert (= (and b!2367037 (not c!376235)) b!2367036))

(declare-fun m!2776599 () Bool)

(assert (=> b!2367031 m!2776599))

(declare-fun m!2776601 () Bool)

(assert (=> b!2367039 m!2776601))

(declare-fun m!2776603 () Bool)

(assert (=> b!2367033 m!2776603))

(declare-fun m!2776605 () Bool)

(assert (=> b!2367035 m!2776605))

(declare-fun m!2776607 () Bool)

(assert (=> d!694854 m!2776607))

(declare-fun m!2776609 () Bool)

(assert (=> d!694854 m!2776609))

(assert (=> b!2367030 m!2776483))

(declare-fun m!2776611 () Bool)

(assert (=> b!2367037 m!2776611))

(assert (=> b!2367037 m!2776611))

(declare-fun m!2776613 () Bool)

(assert (=> b!2367037 m!2776613))

(declare-fun m!2776615 () Bool)

(assert (=> b!2367036 m!2776615))

(assert (=> b!2366816 d!694854))

(declare-fun d!694856 () Bool)

(declare-fun isEmpty!15928 (Option!5473) Bool)

(assert (=> d!694856 (= (isDefined!4301 (findConcatSeparation!581 (regOne!14372 r!13927) (regTwo!14372 r!13927) Nil!28001 s!9460 s!9460)) (not (isEmpty!15928 (findConcatSeparation!581 (regOne!14372 r!13927) (regTwo!14372 r!13927) Nil!28001 s!9460 s!9460))))))

(declare-fun bs!460976 () Bool)

(assert (= bs!460976 d!694856))

(assert (=> bs!460976 m!2776489))

(declare-fun m!2776617 () Bool)

(assert (=> bs!460976 m!2776617))

(assert (=> b!2366821 d!694856))

(declare-fun d!694858 () Bool)

(declare-fun choose!13749 (Int) Bool)

(assert (=> d!694858 (= (Exists!992 lambda!87357) (choose!13749 lambda!87357))))

(declare-fun bs!460977 () Bool)

(assert (= bs!460977 d!694858))

(declare-fun m!2776619 () Bool)

(assert (=> bs!460977 m!2776619))

(assert (=> b!2366821 d!694858))

(declare-fun bs!460978 () Bool)

(declare-fun d!694860 () Bool)

(assert (= bs!460978 (and d!694860 b!2366821)))

(declare-fun lambda!87385 () Int)

(assert (=> bs!460978 (= lambda!87385 lambda!87357)))

(assert (=> bs!460978 (not (= lambda!87385 lambda!87358))))

(declare-fun bs!460979 () Bool)

(assert (= bs!460979 (and d!694860 b!2366918)))

(assert (=> bs!460979 (not (= lambda!87385 lambda!87374))))

(declare-fun bs!460980 () Bool)

(assert (= bs!460980 (and d!694860 b!2366920)))

(assert (=> bs!460980 (not (= lambda!87385 lambda!87375))))

(assert (=> d!694860 true))

(assert (=> d!694860 true))

(assert (=> d!694860 true))

(assert (=> d!694860 (= (isDefined!4301 (findConcatSeparation!581 (regOne!14372 r!13927) (regTwo!14372 r!13927) Nil!28001 s!9460 s!9460)) (Exists!992 lambda!87385))))

(declare-fun lt!865312 () Unit!40895)

(declare-fun choose!13750 (Regex!6930 Regex!6930 List!28099) Unit!40895)

(assert (=> d!694860 (= lt!865312 (choose!13750 (regOne!14372 r!13927) (regTwo!14372 r!13927) s!9460))))

(assert (=> d!694860 (validRegex!2660 (regOne!14372 r!13927))))

(assert (=> d!694860 (= (lemmaFindConcatSeparationEquivalentToExists!581 (regOne!14372 r!13927) (regTwo!14372 r!13927) s!9460) lt!865312)))

(declare-fun bs!460981 () Bool)

(assert (= bs!460981 d!694860))

(declare-fun m!2776621 () Bool)

(assert (=> bs!460981 m!2776621))

(assert (=> bs!460981 m!2776489))

(assert (=> bs!460981 m!2776497))

(assert (=> bs!460981 m!2776489))

(declare-fun m!2776623 () Bool)

(assert (=> bs!460981 m!2776623))

(declare-fun m!2776625 () Bool)

(assert (=> bs!460981 m!2776625))

(assert (=> b!2366821 d!694860))

(declare-fun bs!460982 () Bool)

(declare-fun d!694862 () Bool)

(assert (= bs!460982 (and d!694862 b!2366821)))

(declare-fun lambda!87394 () Int)

(assert (=> bs!460982 (not (= lambda!87394 lambda!87358))))

(declare-fun bs!460983 () Bool)

(assert (= bs!460983 (and d!694862 b!2366920)))

(assert (=> bs!460983 (not (= lambda!87394 lambda!87375))))

(declare-fun bs!460984 () Bool)

(assert (= bs!460984 (and d!694862 b!2366918)))

(assert (=> bs!460984 (not (= lambda!87394 lambda!87374))))

(declare-fun bs!460985 () Bool)

(assert (= bs!460985 (and d!694862 d!694860)))

(assert (=> bs!460985 (= lambda!87394 lambda!87385)))

(assert (=> bs!460982 (= lambda!87394 lambda!87357)))

(assert (=> d!694862 true))

(assert (=> d!694862 true))

(assert (=> d!694862 true))

(declare-fun bs!460986 () Bool)

(assert (= bs!460986 d!694862))

(declare-fun lambda!87395 () Int)

(assert (=> bs!460986 (not (= lambda!87395 lambda!87394))))

(assert (=> bs!460982 (= lambda!87395 lambda!87358)))

(assert (=> bs!460983 (= lambda!87395 lambda!87375)))

(assert (=> bs!460984 (not (= lambda!87395 lambda!87374))))

(assert (=> bs!460985 (not (= lambda!87395 lambda!87385))))

(assert (=> bs!460982 (not (= lambda!87395 lambda!87357))))

(assert (=> d!694862 true))

(assert (=> d!694862 true))

(assert (=> d!694862 true))

(assert (=> d!694862 (= (Exists!992 lambda!87394) (Exists!992 lambda!87395))))

(declare-fun lt!865315 () Unit!40895)

(declare-fun choose!13751 (Regex!6930 Regex!6930 List!28099) Unit!40895)

(assert (=> d!694862 (= lt!865315 (choose!13751 (regOne!14372 r!13927) (regTwo!14372 r!13927) s!9460))))

(assert (=> d!694862 (validRegex!2660 (regOne!14372 r!13927))))

(assert (=> d!694862 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!331 (regOne!14372 r!13927) (regTwo!14372 r!13927) s!9460) lt!865315)))

(declare-fun m!2776627 () Bool)

(assert (=> bs!460986 m!2776627))

(declare-fun m!2776629 () Bool)

(assert (=> bs!460986 m!2776629))

(declare-fun m!2776631 () Bool)

(assert (=> bs!460986 m!2776631))

(assert (=> bs!460986 m!2776621))

(assert (=> b!2366821 d!694862))

(declare-fun b!2367113 () Bool)

(declare-fun e!1511251 () Bool)

(assert (=> b!2367113 (= e!1511251 (matchR!3047 (regTwo!14372 r!13927) s!9460))))

(declare-fun b!2367114 () Bool)

(declare-fun res!1004594 () Bool)

(declare-fun e!1511253 () Bool)

(assert (=> b!2367114 (=> (not res!1004594) (not e!1511253))))

(declare-fun lt!865324 () Option!5473)

(declare-fun get!8506 (Option!5473) tuple2!27724)

(assert (=> b!2367114 (= res!1004594 (matchR!3047 (regTwo!14372 r!13927) (_2!16403 (get!8506 lt!865324))))))

(declare-fun b!2367115 () Bool)

(declare-fun e!1511252 () Bool)

(assert (=> b!2367115 (= e!1511252 (not (isDefined!4301 lt!865324)))))

(declare-fun b!2367117 () Bool)

(declare-fun lt!865323 () Unit!40895)

(declare-fun lt!865322 () Unit!40895)

(assert (=> b!2367117 (= lt!865323 lt!865322)))

(declare-fun ++!6895 (List!28099 List!28099) List!28099)

(assert (=> b!2367117 (= (++!6895 (++!6895 Nil!28001 (Cons!28001 (h!33402 s!9460) Nil!28001)) (t!208076 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!541 (List!28099 C!14018 List!28099 List!28099) Unit!40895)

(assert (=> b!2367117 (= lt!865322 (lemmaMoveElementToOtherListKeepsConcatEq!541 Nil!28001 (h!33402 s!9460) (t!208076 s!9460) s!9460))))

(declare-fun e!1511250 () Option!5473)

(assert (=> b!2367117 (= e!1511250 (findConcatSeparation!581 (regOne!14372 r!13927) (regTwo!14372 r!13927) (++!6895 Nil!28001 (Cons!28001 (h!33402 s!9460) Nil!28001)) (t!208076 s!9460) s!9460))))

(declare-fun b!2367118 () Bool)

(declare-fun e!1511254 () Option!5473)

(assert (=> b!2367118 (= e!1511254 e!1511250)))

(declare-fun c!376254 () Bool)

(assert (=> b!2367118 (= c!376254 (is-Nil!28001 s!9460))))

(declare-fun b!2367119 () Bool)

(assert (=> b!2367119 (= e!1511253 (= (++!6895 (_1!16403 (get!8506 lt!865324)) (_2!16403 (get!8506 lt!865324))) s!9460))))

(declare-fun d!694864 () Bool)

(assert (=> d!694864 e!1511252))

(declare-fun res!1004593 () Bool)

(assert (=> d!694864 (=> res!1004593 e!1511252)))

(assert (=> d!694864 (= res!1004593 e!1511253)))

(declare-fun res!1004597 () Bool)

(assert (=> d!694864 (=> (not res!1004597) (not e!1511253))))

(assert (=> d!694864 (= res!1004597 (isDefined!4301 lt!865324))))

(assert (=> d!694864 (= lt!865324 e!1511254)))

(declare-fun c!376253 () Bool)

(assert (=> d!694864 (= c!376253 e!1511251)))

(declare-fun res!1004596 () Bool)

(assert (=> d!694864 (=> (not res!1004596) (not e!1511251))))

(assert (=> d!694864 (= res!1004596 (matchR!3047 (regOne!14372 r!13927) Nil!28001))))

(assert (=> d!694864 (validRegex!2660 (regOne!14372 r!13927))))

(assert (=> d!694864 (= (findConcatSeparation!581 (regOne!14372 r!13927) (regTwo!14372 r!13927) Nil!28001 s!9460 s!9460) lt!865324)))

(declare-fun b!2367116 () Bool)

(assert (=> b!2367116 (= e!1511250 None!5472)))

(declare-fun b!2367120 () Bool)

(assert (=> b!2367120 (= e!1511254 (Some!5472 (tuple2!27725 Nil!28001 s!9460)))))

(declare-fun b!2367121 () Bool)

(declare-fun res!1004595 () Bool)

(assert (=> b!2367121 (=> (not res!1004595) (not e!1511253))))

(assert (=> b!2367121 (= res!1004595 (matchR!3047 (regOne!14372 r!13927) (_1!16403 (get!8506 lt!865324))))))

(assert (= (and d!694864 res!1004596) b!2367113))

(assert (= (and d!694864 c!376253) b!2367120))

(assert (= (and d!694864 (not c!376253)) b!2367118))

(assert (= (and b!2367118 c!376254) b!2367116))

(assert (= (and b!2367118 (not c!376254)) b!2367117))

(assert (= (and d!694864 res!1004597) b!2367121))

(assert (= (and b!2367121 res!1004595) b!2367114))

(assert (= (and b!2367114 res!1004594) b!2367119))

(assert (= (and d!694864 (not res!1004593)) b!2367115))

(declare-fun m!2776633 () Bool)

(assert (=> b!2367117 m!2776633))

(assert (=> b!2367117 m!2776633))

(declare-fun m!2776635 () Bool)

(assert (=> b!2367117 m!2776635))

(declare-fun m!2776637 () Bool)

(assert (=> b!2367117 m!2776637))

(assert (=> b!2367117 m!2776633))

(declare-fun m!2776639 () Bool)

(assert (=> b!2367117 m!2776639))

(declare-fun m!2776641 () Bool)

(assert (=> b!2367114 m!2776641))

(declare-fun m!2776643 () Bool)

(assert (=> b!2367114 m!2776643))

(assert (=> b!2367119 m!2776641))

(declare-fun m!2776645 () Bool)

(assert (=> b!2367119 m!2776645))

(declare-fun m!2776647 () Bool)

(assert (=> d!694864 m!2776647))

(declare-fun m!2776649 () Bool)

(assert (=> d!694864 m!2776649))

(assert (=> d!694864 m!2776621))

(assert (=> b!2367121 m!2776641))

(declare-fun m!2776651 () Bool)

(assert (=> b!2367121 m!2776651))

(assert (=> b!2367115 m!2776647))

(declare-fun m!2776653 () Bool)

(assert (=> b!2367113 m!2776653))

(assert (=> b!2366821 d!694864))

(declare-fun d!694866 () Bool)

(assert (=> d!694866 (= (Exists!992 lambda!87358) (choose!13749 lambda!87358))))

(declare-fun bs!460990 () Bool)

(assert (= bs!460990 d!694866))

(declare-fun m!2776655 () Bool)

(assert (=> bs!460990 m!2776655))

(assert (=> b!2366821 d!694866))

(declare-fun d!694868 () Bool)

(declare-fun res!1004602 () Bool)

(declare-fun e!1511259 () Bool)

(assert (=> d!694868 (=> res!1004602 e!1511259)))

(assert (=> d!694868 (= res!1004602 (is-Nil!28000 l!9164))))

(assert (=> d!694868 (= (forall!5564 l!9164 lambda!87356) e!1511259)))

(declare-fun b!2367126 () Bool)

(declare-fun e!1511260 () Bool)

(assert (=> b!2367126 (= e!1511259 e!1511260)))

(declare-fun res!1004603 () Bool)

(assert (=> b!2367126 (=> (not res!1004603) (not e!1511260))))

(declare-fun dynLambda!12062 (Int Regex!6930) Bool)

(assert (=> b!2367126 (= res!1004603 (dynLambda!12062 lambda!87356 (h!33401 l!9164)))))

(declare-fun b!2367127 () Bool)

(assert (=> b!2367127 (= e!1511260 (forall!5564 (t!208075 l!9164) lambda!87356))))

(assert (= (and d!694868 (not res!1004602)) b!2367126))

(assert (= (and b!2367126 res!1004603) b!2367127))

(declare-fun b_lambda!73883 () Bool)

(assert (=> (not b_lambda!73883) (not b!2367126)))

(declare-fun m!2776665 () Bool)

(assert (=> b!2367126 m!2776665))

(declare-fun m!2776667 () Bool)

(assert (=> b!2367127 m!2776667))

(assert (=> start!232288 d!694868))

(declare-fun b!2367140 () Bool)

(declare-fun e!1511263 () Bool)

(declare-fun tp!756905 () Bool)

(assert (=> b!2367140 (= e!1511263 tp!756905)))

(assert (=> b!2366823 (= tp!756862 e!1511263)))

(declare-fun b!2367138 () Bool)

(assert (=> b!2367138 (= e!1511263 tp_is_empty!11273)))

(declare-fun b!2367141 () Bool)

(declare-fun tp!756903 () Bool)

(declare-fun tp!756904 () Bool)

(assert (=> b!2367141 (= e!1511263 (and tp!756903 tp!756904))))

(declare-fun b!2367139 () Bool)

(declare-fun tp!756906 () Bool)

(declare-fun tp!756902 () Bool)

(assert (=> b!2367139 (= e!1511263 (and tp!756906 tp!756902))))

(assert (= (and b!2366823 (is-ElementMatch!6930 (regOne!14373 r!13927))) b!2367138))

(assert (= (and b!2366823 (is-Concat!11566 (regOne!14373 r!13927))) b!2367139))

(assert (= (and b!2366823 (is-Star!6930 (regOne!14373 r!13927))) b!2367140))

(assert (= (and b!2366823 (is-Union!6930 (regOne!14373 r!13927))) b!2367141))

(declare-fun b!2367144 () Bool)

(declare-fun e!1511264 () Bool)

(declare-fun tp!756910 () Bool)

(assert (=> b!2367144 (= e!1511264 tp!756910)))

(assert (=> b!2366823 (= tp!756860 e!1511264)))

(declare-fun b!2367142 () Bool)

(assert (=> b!2367142 (= e!1511264 tp_is_empty!11273)))

(declare-fun b!2367145 () Bool)

(declare-fun tp!756908 () Bool)

(declare-fun tp!756909 () Bool)

(assert (=> b!2367145 (= e!1511264 (and tp!756908 tp!756909))))

(declare-fun b!2367143 () Bool)

(declare-fun tp!756911 () Bool)

(declare-fun tp!756907 () Bool)

(assert (=> b!2367143 (= e!1511264 (and tp!756911 tp!756907))))

(assert (= (and b!2366823 (is-ElementMatch!6930 (regTwo!14373 r!13927))) b!2367142))

(assert (= (and b!2366823 (is-Concat!11566 (regTwo!14373 r!13927))) b!2367143))

(assert (= (and b!2366823 (is-Star!6930 (regTwo!14373 r!13927))) b!2367144))

(assert (= (and b!2366823 (is-Union!6930 (regTwo!14373 r!13927))) b!2367145))

(declare-fun b!2367148 () Bool)

(declare-fun e!1511265 () Bool)

(declare-fun tp!756915 () Bool)

(assert (=> b!2367148 (= e!1511265 tp!756915)))

(assert (=> b!2366822 (= tp!756866 e!1511265)))

(declare-fun b!2367146 () Bool)

(assert (=> b!2367146 (= e!1511265 tp_is_empty!11273)))

(declare-fun b!2367149 () Bool)

(declare-fun tp!756913 () Bool)

(declare-fun tp!756914 () Bool)

(assert (=> b!2367149 (= e!1511265 (and tp!756913 tp!756914))))

(declare-fun b!2367147 () Bool)

(declare-fun tp!756916 () Bool)

(declare-fun tp!756912 () Bool)

(assert (=> b!2367147 (= e!1511265 (and tp!756916 tp!756912))))

(assert (= (and b!2366822 (is-ElementMatch!6930 (h!33401 l!9164))) b!2367146))

(assert (= (and b!2366822 (is-Concat!11566 (h!33401 l!9164))) b!2367147))

(assert (= (and b!2366822 (is-Star!6930 (h!33401 l!9164))) b!2367148))

(assert (= (and b!2366822 (is-Union!6930 (h!33401 l!9164))) b!2367149))

(declare-fun b!2367154 () Bool)

(declare-fun e!1511268 () Bool)

(declare-fun tp!756921 () Bool)

(declare-fun tp!756922 () Bool)

(assert (=> b!2367154 (= e!1511268 (and tp!756921 tp!756922))))

(assert (=> b!2366822 (= tp!756865 e!1511268)))

(assert (= (and b!2366822 (is-Cons!28000 (t!208075 l!9164))) b!2367154))

(declare-fun b!2367157 () Bool)

(declare-fun e!1511269 () Bool)

(declare-fun tp!756926 () Bool)

(assert (=> b!2367157 (= e!1511269 tp!756926)))

(assert (=> b!2366820 (= tp!756863 e!1511269)))

(declare-fun b!2367155 () Bool)

(assert (=> b!2367155 (= e!1511269 tp_is_empty!11273)))

(declare-fun b!2367158 () Bool)

(declare-fun tp!756924 () Bool)

(declare-fun tp!756925 () Bool)

(assert (=> b!2367158 (= e!1511269 (and tp!756924 tp!756925))))

(declare-fun b!2367156 () Bool)

(declare-fun tp!756927 () Bool)

(declare-fun tp!756923 () Bool)

(assert (=> b!2367156 (= e!1511269 (and tp!756927 tp!756923))))

(assert (= (and b!2366820 (is-ElementMatch!6930 (reg!7259 r!13927))) b!2367155))

(assert (= (and b!2366820 (is-Concat!11566 (reg!7259 r!13927))) b!2367156))

(assert (= (and b!2366820 (is-Star!6930 (reg!7259 r!13927))) b!2367157))

(assert (= (and b!2366820 (is-Union!6930 (reg!7259 r!13927))) b!2367158))

(declare-fun b!2367161 () Bool)

(declare-fun e!1511270 () Bool)

(declare-fun tp!756931 () Bool)

(assert (=> b!2367161 (= e!1511270 tp!756931)))

(assert (=> b!2366814 (= tp!756861 e!1511270)))

(declare-fun b!2367159 () Bool)

(assert (=> b!2367159 (= e!1511270 tp_is_empty!11273)))

(declare-fun b!2367162 () Bool)

(declare-fun tp!756929 () Bool)

(declare-fun tp!756930 () Bool)

(assert (=> b!2367162 (= e!1511270 (and tp!756929 tp!756930))))

(declare-fun b!2367160 () Bool)

(declare-fun tp!756932 () Bool)

(declare-fun tp!756928 () Bool)

(assert (=> b!2367160 (= e!1511270 (and tp!756932 tp!756928))))

(assert (= (and b!2366814 (is-ElementMatch!6930 (regOne!14372 r!13927))) b!2367159))

(assert (= (and b!2366814 (is-Concat!11566 (regOne!14372 r!13927))) b!2367160))

(assert (= (and b!2366814 (is-Star!6930 (regOne!14372 r!13927))) b!2367161))

(assert (= (and b!2366814 (is-Union!6930 (regOne!14372 r!13927))) b!2367162))

(declare-fun b!2367165 () Bool)

(declare-fun e!1511271 () Bool)

(declare-fun tp!756936 () Bool)

(assert (=> b!2367165 (= e!1511271 tp!756936)))

(assert (=> b!2366814 (= tp!756864 e!1511271)))

(declare-fun b!2367163 () Bool)

(assert (=> b!2367163 (= e!1511271 tp_is_empty!11273)))

(declare-fun b!2367166 () Bool)

(declare-fun tp!756934 () Bool)

(declare-fun tp!756935 () Bool)

(assert (=> b!2367166 (= e!1511271 (and tp!756934 tp!756935))))

(declare-fun b!2367164 () Bool)

(declare-fun tp!756937 () Bool)

(declare-fun tp!756933 () Bool)

(assert (=> b!2367164 (= e!1511271 (and tp!756937 tp!756933))))

(assert (= (and b!2366814 (is-ElementMatch!6930 (regTwo!14372 r!13927))) b!2367163))

(assert (= (and b!2366814 (is-Concat!11566 (regTwo!14372 r!13927))) b!2367164))

(assert (= (and b!2366814 (is-Star!6930 (regTwo!14372 r!13927))) b!2367165))

(assert (= (and b!2366814 (is-Union!6930 (regTwo!14372 r!13927))) b!2367166))

(declare-fun b!2367171 () Bool)

(declare-fun e!1511274 () Bool)

(declare-fun tp!756940 () Bool)

(assert (=> b!2367171 (= e!1511274 (and tp_is_empty!11273 tp!756940))))

(assert (=> b!2366819 (= tp!756867 e!1511274)))

(assert (= (and b!2366819 (is-Cons!28001 (t!208076 s!9460))) b!2367171))

(declare-fun b_lambda!73885 () Bool)

(assert (= b_lambda!73883 (or start!232288 b_lambda!73885)))

(declare-fun bs!460991 () Bool)

(declare-fun d!694872 () Bool)

(assert (= bs!460991 (and d!694872 start!232288)))

(assert (=> bs!460991 (= (dynLambda!12062 lambda!87356 (h!33401 l!9164)) (validRegex!2660 (h!33401 l!9164)))))

(declare-fun m!2776669 () Bool)

(assert (=> bs!460991 m!2776669))

(assert (=> b!2367126 d!694872))

(push 1)

(assert (not b!2366980))

(assert (not b!2367171))

(assert (not bs!460991))

(assert (not b!2366976))

(assert (not b_lambda!73885))

(assert (not b!2367143))

(assert (not b!2367027))

(assert (not b!2367141))

(assert (not b!2367147))

(assert (not b!2367114))

(assert (not b!2367026))

(assert (not b!2367139))

(assert (not b!2367115))

(assert (not b!2367025))

(assert (not b!2366986))

(assert (not b!2367166))

(assert (not d!694860))

(assert (not b!2367031))

(assert (not d!694854))

(assert (not b!2366921))

(assert (not b!2367160))

(assert (not b!2366978))

(assert (not b!2367029))

(assert (not b!2367036))

(assert (not bm!143976))

(assert (not b!2367119))

(assert (not d!694856))

(assert (not d!694858))

(assert (not b!2367020))

(assert (not b!2367140))

(assert (not b!2367164))

(assert (not b!2367021))

(assert (not b!2367144))

(assert (not d!694836))

(assert (not b!2367127))

(assert (not b!2367033))

(assert (not b!2367165))

(assert (not d!694862))

(assert tp_is_empty!11273)

(assert (not b!2367113))

(assert (not b!2367030))

(assert (not b!2366987))

(assert (not b!2367162))

(assert (not bm!143980))

(assert (not b!2367149))

(assert (not b!2367121))

(assert (not b!2367117))

(assert (not b!2367035))

(assert (not b!2367157))

(assert (not d!694842))

(assert (not b!2367037))

(assert (not d!694864))

(assert (not d!694866))

(assert (not b!2367148))

(assert (not b!2366989))

(assert (not b!2367156))

(assert (not b!2367145))

(assert (not b!2367039))

(assert (not d!694838))

(assert (not b!2366924))

(assert (not b!2367023))

(assert (not b!2367154))

(assert (not bm!143977))

(assert (not b!2367158))

(assert (not b!2367161))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

