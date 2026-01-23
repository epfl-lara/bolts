; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!723852 () Bool)

(assert start!723852)

(declare-fun b!7460859 () Bool)

(assert (=> b!7460859 true))

(assert (=> b!7460859 true))

(assert (=> b!7460859 true))

(declare-fun lambda!461607 () Int)

(declare-fun lambda!461606 () Int)

(assert (=> b!7460859 (not (= lambda!461607 lambda!461606))))

(assert (=> b!7460859 true))

(assert (=> b!7460859 true))

(assert (=> b!7460859 true))

(declare-fun b!7460844 () Bool)

(declare-fun res!2992705 () Bool)

(declare-fun e!4452541 () Bool)

(assert (=> b!7460844 (=> (not res!2992705) (not e!4452541))))

(declare-datatypes ((C!39334 0))(
  ( (C!39335 (val!30065 Int)) )
))
(declare-datatypes ((Regex!19530 0))(
  ( (ElementMatch!19530 (c!1379265 C!39334)) (Concat!28375 (regOne!39572 Regex!19530) (regTwo!39572 Regex!19530)) (EmptyExpr!19530) (Star!19530 (reg!19859 Regex!19530)) (EmptyLang!19530) (Union!19530 (regOne!39573 Regex!19530) (regTwo!39573 Regex!19530)) )
))
(declare-fun r2!5783 () Regex!19530)

(declare-fun validRegex!10044 (Regex!19530) Bool)

(assert (=> b!7460844 (= res!2992705 (validRegex!10044 r2!5783))))

(declare-fun b!7460845 () Bool)

(declare-fun e!4452542 () Bool)

(declare-fun tp_is_empty!49349 () Bool)

(assert (=> b!7460845 (= e!4452542 tp_is_empty!49349)))

(declare-fun b!7460846 () Bool)

(declare-fun e!4452543 () Bool)

(declare-fun tp!2162333 () Bool)

(assert (=> b!7460846 (= e!4452543 tp!2162333)))

(declare-fun b!7460847 () Bool)

(declare-fun e!4452545 () Bool)

(declare-fun tp!2162339 () Bool)

(declare-fun tp!2162343 () Bool)

(assert (=> b!7460847 (= e!4452545 (and tp!2162339 tp!2162343))))

(declare-fun b!7460849 () Bool)

(declare-fun tp!2162334 () Bool)

(declare-fun tp!2162336 () Bool)

(assert (=> b!7460849 (= e!4452543 (and tp!2162334 tp!2162336))))

(declare-fun b!7460850 () Bool)

(declare-fun e!4452544 () Bool)

(declare-fun lt!2622523 () Regex!19530)

(assert (=> b!7460850 (= e!4452544 (validRegex!10044 lt!2622523))))

(declare-fun b!7460851 () Bool)

(declare-fun tp!2162344 () Bool)

(declare-fun tp!2162347 () Bool)

(assert (=> b!7460851 (= e!4452542 (and tp!2162344 tp!2162347))))

(declare-fun b!7460852 () Bool)

(declare-fun tp!2162345 () Bool)

(declare-fun tp!2162337 () Bool)

(assert (=> b!7460852 (= e!4452543 (and tp!2162345 tp!2162337))))

(declare-fun b!7460853 () Bool)

(declare-fun e!4452539 () Bool)

(declare-fun tp!2162335 () Bool)

(assert (=> b!7460853 (= e!4452539 (and tp_is_empty!49349 tp!2162335))))

(declare-fun b!7460854 () Bool)

(declare-fun tp!2162346 () Bool)

(declare-fun tp!2162341 () Bool)

(assert (=> b!7460854 (= e!4452545 (and tp!2162346 tp!2162341))))

(declare-fun b!7460855 () Bool)

(assert (=> b!7460855 (= e!4452543 tp_is_empty!49349)))

(declare-fun b!7460856 () Bool)

(declare-fun tp!2162332 () Bool)

(assert (=> b!7460856 (= e!4452545 tp!2162332)))

(declare-fun b!7460857 () Bool)

(declare-fun e!4452540 () Bool)

(assert (=> b!7460857 (= e!4452541 (not e!4452540))))

(declare-fun res!2992709 () Bool)

(assert (=> b!7460857 (=> res!2992709 e!4452540)))

(declare-fun lt!2622524 () Bool)

(assert (=> b!7460857 (= res!2992709 lt!2622524)))

(declare-datatypes ((List!72246 0))(
  ( (Nil!72122) (Cons!72122 (h!78570 C!39334) (t!386815 List!72246)) )
))
(declare-fun s!13591 () List!72246)

(declare-fun matchR!9294 (Regex!19530 List!72246) Bool)

(declare-fun matchRSpec!4209 (Regex!19530 List!72246) Bool)

(assert (=> b!7460857 (= (matchR!9294 lt!2622523 s!13591) (matchRSpec!4209 lt!2622523 s!13591))))

(declare-datatypes ((Unit!165895 0))(
  ( (Unit!165896) )
))
(declare-fun lt!2622522 () Unit!165895)

(declare-fun mainMatchTheorem!4203 (Regex!19530 List!72246) Unit!165895)

(assert (=> b!7460857 (= lt!2622522 (mainMatchTheorem!4203 lt!2622523 s!13591))))

(declare-fun lt!2622529 () Regex!19530)

(assert (=> b!7460857 (= lt!2622524 (matchRSpec!4209 lt!2622529 s!13591))))

(assert (=> b!7460857 (= lt!2622524 (matchR!9294 lt!2622529 s!13591))))

(declare-fun lt!2622528 () Unit!165895)

(assert (=> b!7460857 (= lt!2622528 (mainMatchTheorem!4203 lt!2622529 s!13591))))

(declare-fun r1!5845 () Regex!19530)

(declare-fun rTail!78 () Regex!19530)

(assert (=> b!7460857 (= lt!2622523 (Union!19530 (Concat!28375 r1!5845 rTail!78) (Concat!28375 r2!5783 rTail!78)))))

(declare-fun lt!2622525 () Regex!19530)

(assert (=> b!7460857 (= lt!2622529 (Concat!28375 lt!2622525 rTail!78))))

(assert (=> b!7460857 (= lt!2622525 (Union!19530 r1!5845 r2!5783))))

(declare-fun b!7460858 () Bool)

(assert (=> b!7460858 (= e!4452545 tp_is_empty!49349)))

(assert (=> b!7460859 (= e!4452540 e!4452544)))

(declare-fun res!2992706 () Bool)

(assert (=> b!7460859 (=> res!2992706 e!4452544)))

(declare-fun lt!2622527 () Bool)

(assert (=> b!7460859 (= res!2992706 lt!2622527)))

(declare-fun Exists!4149 (Int) Bool)

(assert (=> b!7460859 (= (Exists!4149 lambda!461606) (Exists!4149 lambda!461607))))

(declare-fun lt!2622530 () Unit!165895)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2483 (Regex!19530 Regex!19530 List!72246) Unit!165895)

(assert (=> b!7460859 (= lt!2622530 (lemmaExistCutMatchRandMatchRSpecEquivalent!2483 lt!2622525 rTail!78 s!13591))))

(assert (=> b!7460859 (= lt!2622527 (Exists!4149 lambda!461606))))

(declare-datatypes ((tuple2!68510 0))(
  ( (tuple2!68511 (_1!37558 List!72246) (_2!37558 List!72246)) )
))
(declare-datatypes ((Option!17087 0))(
  ( (None!17086) (Some!17086 (v!54215 tuple2!68510)) )
))
(declare-fun isDefined!13776 (Option!17087) Bool)

(declare-fun findConcatSeparation!3209 (Regex!19530 Regex!19530 List!72246 List!72246 List!72246) Option!17087)

(assert (=> b!7460859 (= lt!2622527 (isDefined!13776 (findConcatSeparation!3209 lt!2622525 rTail!78 Nil!72122 s!13591 s!13591)))))

(declare-fun lt!2622526 () Unit!165895)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2967 (Regex!19530 Regex!19530 List!72246) Unit!165895)

(assert (=> b!7460859 (= lt!2622526 (lemmaFindConcatSeparationEquivalentToExists!2967 lt!2622525 rTail!78 s!13591))))

(declare-fun res!2992708 () Bool)

(assert (=> start!723852 (=> (not res!2992708) (not e!4452541))))

(assert (=> start!723852 (= res!2992708 (validRegex!10044 r1!5845))))

(assert (=> start!723852 e!4452541))

(assert (=> start!723852 e!4452543))

(assert (=> start!723852 e!4452542))

(assert (=> start!723852 e!4452545))

(assert (=> start!723852 e!4452539))

(declare-fun b!7460848 () Bool)

(declare-fun tp!2162340 () Bool)

(declare-fun tp!2162342 () Bool)

(assert (=> b!7460848 (= e!4452542 (and tp!2162340 tp!2162342))))

(declare-fun b!7460860 () Bool)

(declare-fun tp!2162338 () Bool)

(assert (=> b!7460860 (= e!4452542 tp!2162338)))

(declare-fun b!7460861 () Bool)

(declare-fun res!2992707 () Bool)

(assert (=> b!7460861 (=> (not res!2992707) (not e!4452541))))

(assert (=> b!7460861 (= res!2992707 (validRegex!10044 rTail!78))))

(assert (= (and start!723852 res!2992708) b!7460844))

(assert (= (and b!7460844 res!2992705) b!7460861))

(assert (= (and b!7460861 res!2992707) b!7460857))

(assert (= (and b!7460857 (not res!2992709)) b!7460859))

(assert (= (and b!7460859 (not res!2992706)) b!7460850))

(assert (= (and start!723852 (is-ElementMatch!19530 r1!5845)) b!7460855))

(assert (= (and start!723852 (is-Concat!28375 r1!5845)) b!7460849))

(assert (= (and start!723852 (is-Star!19530 r1!5845)) b!7460846))

(assert (= (and start!723852 (is-Union!19530 r1!5845)) b!7460852))

(assert (= (and start!723852 (is-ElementMatch!19530 r2!5783)) b!7460845))

(assert (= (and start!723852 (is-Concat!28375 r2!5783)) b!7460851))

(assert (= (and start!723852 (is-Star!19530 r2!5783)) b!7460860))

(assert (= (and start!723852 (is-Union!19530 r2!5783)) b!7460848))

(assert (= (and start!723852 (is-ElementMatch!19530 rTail!78)) b!7460858))

(assert (= (and start!723852 (is-Concat!28375 rTail!78)) b!7460854))

(assert (= (and start!723852 (is-Star!19530 rTail!78)) b!7460856))

(assert (= (and start!723852 (is-Union!19530 rTail!78)) b!7460847))

(assert (= (and start!723852 (is-Cons!72122 s!13591)) b!7460853))

(declare-fun m!8062344 () Bool)

(assert (=> b!7460859 m!8062344))

(declare-fun m!8062346 () Bool)

(assert (=> b!7460859 m!8062346))

(assert (=> b!7460859 m!8062344))

(declare-fun m!8062348 () Bool)

(assert (=> b!7460859 m!8062348))

(declare-fun m!8062350 () Bool)

(assert (=> b!7460859 m!8062350))

(declare-fun m!8062352 () Bool)

(assert (=> b!7460859 m!8062352))

(declare-fun m!8062354 () Bool)

(assert (=> b!7460859 m!8062354))

(assert (=> b!7460859 m!8062350))

(declare-fun m!8062356 () Bool)

(assert (=> b!7460844 m!8062356))

(declare-fun m!8062358 () Bool)

(assert (=> b!7460861 m!8062358))

(declare-fun m!8062360 () Bool)

(assert (=> start!723852 m!8062360))

(declare-fun m!8062362 () Bool)

(assert (=> b!7460857 m!8062362))

(declare-fun m!8062364 () Bool)

(assert (=> b!7460857 m!8062364))

(declare-fun m!8062366 () Bool)

(assert (=> b!7460857 m!8062366))

(declare-fun m!8062368 () Bool)

(assert (=> b!7460857 m!8062368))

(declare-fun m!8062370 () Bool)

(assert (=> b!7460857 m!8062370))

(declare-fun m!8062372 () Bool)

(assert (=> b!7460857 m!8062372))

(declare-fun m!8062374 () Bool)

(assert (=> b!7460850 m!8062374))

(push 1)

(assert (not b!7460856))

(assert (not b!7460846))

(assert (not b!7460847))

(assert (not b!7460848))

(assert tp_is_empty!49349)

(assert (not b!7460861))

(assert (not b!7460849))

(assert (not start!723852))

(assert (not b!7460853))

(assert (not b!7460850))

(assert (not b!7460851))

(assert (not b!7460860))

(assert (not b!7460857))

(assert (not b!7460859))

(assert (not b!7460844))

(assert (not b!7460852))

(assert (not b!7460854))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2298083 () Bool)

(declare-fun choose!57674 (Int) Bool)

(assert (=> d!2298083 (= (Exists!4149 lambda!461606) (choose!57674 lambda!461606))))

(declare-fun bs!1929402 () Bool)

(assert (= bs!1929402 d!2298083))

(declare-fun m!8062408 () Bool)

(assert (=> bs!1929402 m!8062408))

(assert (=> b!7460859 d!2298083))

(declare-fun bs!1929403 () Bool)

(declare-fun d!2298085 () Bool)

(assert (= bs!1929403 (and d!2298085 b!7460859)))

(declare-fun lambda!461618 () Int)

(assert (=> bs!1929403 (= lambda!461618 lambda!461606)))

(assert (=> bs!1929403 (not (= lambda!461618 lambda!461607))))

(assert (=> d!2298085 true))

(assert (=> d!2298085 true))

(assert (=> d!2298085 true))

(assert (=> d!2298085 (= (isDefined!13776 (findConcatSeparation!3209 lt!2622525 rTail!78 Nil!72122 s!13591 s!13591)) (Exists!4149 lambda!461618))))

(declare-fun lt!2622560 () Unit!165895)

(declare-fun choose!57675 (Regex!19530 Regex!19530 List!72246) Unit!165895)

(assert (=> d!2298085 (= lt!2622560 (choose!57675 lt!2622525 rTail!78 s!13591))))

(assert (=> d!2298085 (validRegex!10044 lt!2622525)))

(assert (=> d!2298085 (= (lemmaFindConcatSeparationEquivalentToExists!2967 lt!2622525 rTail!78 s!13591) lt!2622560)))

(declare-fun bs!1929404 () Bool)

(assert (= bs!1929404 d!2298085))

(assert (=> bs!1929404 m!8062344))

(declare-fun m!8062410 () Bool)

(assert (=> bs!1929404 m!8062410))

(declare-fun m!8062412 () Bool)

(assert (=> bs!1929404 m!8062412))

(assert (=> bs!1929404 m!8062344))

(assert (=> bs!1929404 m!8062348))

(declare-fun m!8062414 () Bool)

(assert (=> bs!1929404 m!8062414))

(assert (=> b!7460859 d!2298085))

(declare-fun d!2298089 () Bool)

(declare-fun isEmpty!41135 (Option!17087) Bool)

(assert (=> d!2298089 (= (isDefined!13776 (findConcatSeparation!3209 lt!2622525 rTail!78 Nil!72122 s!13591 s!13591)) (not (isEmpty!41135 (findConcatSeparation!3209 lt!2622525 rTail!78 Nil!72122 s!13591 s!13591))))))

(declare-fun bs!1929405 () Bool)

(assert (= bs!1929405 d!2298089))

(assert (=> bs!1929405 m!8062344))

(declare-fun m!8062416 () Bool)

(assert (=> bs!1929405 m!8062416))

(assert (=> b!7460859 d!2298089))

(declare-fun b!7460962 () Bool)

(declare-fun res!2992756 () Bool)

(declare-fun e!4452588 () Bool)

(assert (=> b!7460962 (=> (not res!2992756) (not e!4452588))))

(declare-fun lt!2622571 () Option!17087)

(declare-fun get!25173 (Option!17087) tuple2!68510)

(assert (=> b!7460962 (= res!2992756 (matchR!9294 lt!2622525 (_1!37558 (get!25173 lt!2622571))))))

(declare-fun b!7460963 () Bool)

(declare-fun e!4452590 () Option!17087)

(declare-fun e!4452591 () Option!17087)

(assert (=> b!7460963 (= e!4452590 e!4452591)))

(declare-fun c!1379272 () Bool)

(assert (=> b!7460963 (= c!1379272 (is-Nil!72122 s!13591))))

(declare-fun b!7460964 () Bool)

(assert (=> b!7460964 (= e!4452590 (Some!17086 (tuple2!68511 Nil!72122 s!13591)))))

(declare-fun b!7460965 () Bool)

(declare-fun ++!17182 (List!72246 List!72246) List!72246)

(assert (=> b!7460965 (= e!4452588 (= (++!17182 (_1!37558 (get!25173 lt!2622571)) (_2!37558 (get!25173 lt!2622571))) s!13591))))

(declare-fun b!7460966 () Bool)

(declare-fun res!2992759 () Bool)

(assert (=> b!7460966 (=> (not res!2992759) (not e!4452588))))

(assert (=> b!7460966 (= res!2992759 (matchR!9294 rTail!78 (_2!37558 (get!25173 lt!2622571))))))

(declare-fun b!7460967 () Bool)

(declare-fun e!4452589 () Bool)

(assert (=> b!7460967 (= e!4452589 (not (isDefined!13776 lt!2622571)))))

(declare-fun d!2298091 () Bool)

(assert (=> d!2298091 e!4452589))

(declare-fun res!2992757 () Bool)

(assert (=> d!2298091 (=> res!2992757 e!4452589)))

(assert (=> d!2298091 (= res!2992757 e!4452588)))

(declare-fun res!2992758 () Bool)

(assert (=> d!2298091 (=> (not res!2992758) (not e!4452588))))

(assert (=> d!2298091 (= res!2992758 (isDefined!13776 lt!2622571))))

(assert (=> d!2298091 (= lt!2622571 e!4452590)))

(declare-fun c!1379271 () Bool)

(declare-fun e!4452587 () Bool)

(assert (=> d!2298091 (= c!1379271 e!4452587)))

(declare-fun res!2992755 () Bool)

(assert (=> d!2298091 (=> (not res!2992755) (not e!4452587))))

(assert (=> d!2298091 (= res!2992755 (matchR!9294 lt!2622525 Nil!72122))))

(assert (=> d!2298091 (validRegex!10044 lt!2622525)))

(assert (=> d!2298091 (= (findConcatSeparation!3209 lt!2622525 rTail!78 Nil!72122 s!13591 s!13591) lt!2622571)))

(declare-fun b!7460968 () Bool)

(assert (=> b!7460968 (= e!4452591 None!17086)))

(declare-fun b!7460969 () Bool)

(declare-fun lt!2622569 () Unit!165895)

(declare-fun lt!2622570 () Unit!165895)

(assert (=> b!7460969 (= lt!2622569 lt!2622570)))

(assert (=> b!7460969 (= (++!17182 (++!17182 Nil!72122 (Cons!72122 (h!78570 s!13591) Nil!72122)) (t!386815 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3062 (List!72246 C!39334 List!72246 List!72246) Unit!165895)

(assert (=> b!7460969 (= lt!2622570 (lemmaMoveElementToOtherListKeepsConcatEq!3062 Nil!72122 (h!78570 s!13591) (t!386815 s!13591) s!13591))))

(assert (=> b!7460969 (= e!4452591 (findConcatSeparation!3209 lt!2622525 rTail!78 (++!17182 Nil!72122 (Cons!72122 (h!78570 s!13591) Nil!72122)) (t!386815 s!13591) s!13591))))

(declare-fun b!7460970 () Bool)

(assert (=> b!7460970 (= e!4452587 (matchR!9294 rTail!78 s!13591))))

(assert (= (and d!2298091 res!2992755) b!7460970))

(assert (= (and d!2298091 c!1379271) b!7460964))

(assert (= (and d!2298091 (not c!1379271)) b!7460963))

(assert (= (and b!7460963 c!1379272) b!7460968))

(assert (= (and b!7460963 (not c!1379272)) b!7460969))

(assert (= (and d!2298091 res!2992758) b!7460962))

(assert (= (and b!7460962 res!2992756) b!7460966))

(assert (= (and b!7460966 res!2992759) b!7460965))

(assert (= (and d!2298091 (not res!2992757)) b!7460967))

(declare-fun m!8062418 () Bool)

(assert (=> d!2298091 m!8062418))

(declare-fun m!8062420 () Bool)

(assert (=> d!2298091 m!8062420))

(assert (=> d!2298091 m!8062410))

(declare-fun m!8062422 () Bool)

(assert (=> b!7460969 m!8062422))

(assert (=> b!7460969 m!8062422))

(declare-fun m!8062424 () Bool)

(assert (=> b!7460969 m!8062424))

(declare-fun m!8062426 () Bool)

(assert (=> b!7460969 m!8062426))

(assert (=> b!7460969 m!8062422))

(declare-fun m!8062428 () Bool)

(assert (=> b!7460969 m!8062428))

(declare-fun m!8062430 () Bool)

(assert (=> b!7460965 m!8062430))

(declare-fun m!8062432 () Bool)

(assert (=> b!7460965 m!8062432))

(assert (=> b!7460966 m!8062430))

(declare-fun m!8062434 () Bool)

(assert (=> b!7460966 m!8062434))

(assert (=> b!7460967 m!8062418))

(assert (=> b!7460962 m!8062430))

(declare-fun m!8062436 () Bool)

(assert (=> b!7460962 m!8062436))

(declare-fun m!8062438 () Bool)

(assert (=> b!7460970 m!8062438))

(assert (=> b!7460859 d!2298091))

(declare-fun bs!1929408 () Bool)

(declare-fun d!2298093 () Bool)

(assert (= bs!1929408 (and d!2298093 b!7460859)))

(declare-fun lambda!461626 () Int)

(assert (=> bs!1929408 (= lambda!461626 lambda!461606)))

(assert (=> bs!1929408 (not (= lambda!461626 lambda!461607))))

(declare-fun bs!1929409 () Bool)

(assert (= bs!1929409 (and d!2298093 d!2298085)))

(assert (=> bs!1929409 (= lambda!461626 lambda!461618)))

(assert (=> d!2298093 true))

(assert (=> d!2298093 true))

(assert (=> d!2298093 true))

(declare-fun lambda!461627 () Int)

(assert (=> bs!1929408 (not (= lambda!461627 lambda!461606))))

(assert (=> bs!1929408 (= lambda!461627 lambda!461607)))

(assert (=> bs!1929409 (not (= lambda!461627 lambda!461618))))

(declare-fun bs!1929410 () Bool)

(assert (= bs!1929410 d!2298093))

(assert (=> bs!1929410 (not (= lambda!461627 lambda!461626))))

(assert (=> d!2298093 true))

(assert (=> d!2298093 true))

(assert (=> d!2298093 true))

(assert (=> d!2298093 (= (Exists!4149 lambda!461626) (Exists!4149 lambda!461627))))

(declare-fun lt!2622575 () Unit!165895)

(declare-fun choose!57676 (Regex!19530 Regex!19530 List!72246) Unit!165895)

(assert (=> d!2298093 (= lt!2622575 (choose!57676 lt!2622525 rTail!78 s!13591))))

(assert (=> d!2298093 (validRegex!10044 lt!2622525)))

(assert (=> d!2298093 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2483 lt!2622525 rTail!78 s!13591) lt!2622575)))

(declare-fun m!8062446 () Bool)

(assert (=> bs!1929410 m!8062446))

(declare-fun m!8062448 () Bool)

(assert (=> bs!1929410 m!8062448))

(declare-fun m!8062450 () Bool)

(assert (=> bs!1929410 m!8062450))

(assert (=> bs!1929410 m!8062410))

(assert (=> b!7460859 d!2298093))

(declare-fun d!2298097 () Bool)

(assert (=> d!2298097 (= (Exists!4149 lambda!461607) (choose!57674 lambda!461607))))

(declare-fun bs!1929411 () Bool)

(assert (= bs!1929411 d!2298097))

(declare-fun m!8062452 () Bool)

(assert (=> bs!1929411 m!8062452))

(assert (=> b!7460859 d!2298097))

(declare-fun c!1379277 () Bool)

(declare-fun call!685391 () Bool)

(declare-fun c!1379278 () Bool)

(declare-fun bm!685386 () Bool)

(assert (=> bm!685386 (= call!685391 (validRegex!10044 (ite c!1379278 (reg!19859 rTail!78) (ite c!1379277 (regTwo!39573 rTail!78) (regTwo!39572 rTail!78)))))))

(declare-fun b!7460997 () Bool)

(declare-fun e!4452612 () Bool)

(declare-fun e!4452611 () Bool)

(assert (=> b!7460997 (= e!4452612 e!4452611)))

(declare-fun res!2992779 () Bool)

(assert (=> b!7460997 (=> (not res!2992779) (not e!4452611))))

(declare-fun call!685392 () Bool)

(assert (=> b!7460997 (= res!2992779 call!685392)))

(declare-fun b!7460998 () Bool)

(declare-fun e!4452615 () Bool)

(declare-fun e!4452610 () Bool)

(assert (=> b!7460998 (= e!4452615 e!4452610)))

(declare-fun res!2992778 () Bool)

(declare-fun nullable!8510 (Regex!19530) Bool)

(assert (=> b!7460998 (= res!2992778 (not (nullable!8510 (reg!19859 rTail!78))))))

(assert (=> b!7460998 (=> (not res!2992778) (not e!4452610))))

(declare-fun b!7460999 () Bool)

(declare-fun e!4452616 () Bool)

(assert (=> b!7460999 (= e!4452615 e!4452616)))

(assert (=> b!7460999 (= c!1379277 (is-Union!19530 rTail!78))))

(declare-fun b!7461000 () Bool)

(declare-fun call!685393 () Bool)

(assert (=> b!7461000 (= e!4452611 call!685393)))

(declare-fun b!7461001 () Bool)

(declare-fun e!4452614 () Bool)

(assert (=> b!7461001 (= e!4452614 e!4452615)))

(assert (=> b!7461001 (= c!1379278 (is-Star!19530 rTail!78))))

(declare-fun b!7461002 () Bool)

(declare-fun e!4452613 () Bool)

(assert (=> b!7461002 (= e!4452613 call!685393)))

(declare-fun b!7461003 () Bool)

(declare-fun res!2992780 () Bool)

(assert (=> b!7461003 (=> (not res!2992780) (not e!4452613))))

(assert (=> b!7461003 (= res!2992780 call!685392)))

(assert (=> b!7461003 (= e!4452616 e!4452613)))

(declare-fun b!7461004 () Bool)

(declare-fun res!2992782 () Bool)

(assert (=> b!7461004 (=> res!2992782 e!4452612)))

(assert (=> b!7461004 (= res!2992782 (not (is-Concat!28375 rTail!78)))))

(assert (=> b!7461004 (= e!4452616 e!4452612)))

(declare-fun bm!685388 () Bool)

(assert (=> bm!685388 (= call!685392 (validRegex!10044 (ite c!1379277 (regOne!39573 rTail!78) (regOne!39572 rTail!78))))))

(declare-fun b!7461005 () Bool)

(assert (=> b!7461005 (= e!4452610 call!685391)))

(declare-fun d!2298099 () Bool)

(declare-fun res!2992781 () Bool)

(assert (=> d!2298099 (=> res!2992781 e!4452614)))

(assert (=> d!2298099 (= res!2992781 (is-ElementMatch!19530 rTail!78))))

(assert (=> d!2298099 (= (validRegex!10044 rTail!78) e!4452614)))

(declare-fun bm!685387 () Bool)

(assert (=> bm!685387 (= call!685393 call!685391)))

(assert (= (and d!2298099 (not res!2992781)) b!7461001))

(assert (= (and b!7461001 c!1379278) b!7460998))

(assert (= (and b!7461001 (not c!1379278)) b!7460999))

(assert (= (and b!7460998 res!2992778) b!7461005))

(assert (= (and b!7460999 c!1379277) b!7461003))

(assert (= (and b!7460999 (not c!1379277)) b!7461004))

(assert (= (and b!7461003 res!2992780) b!7461002))

(assert (= (and b!7461004 (not res!2992782)) b!7460997))

(assert (= (and b!7460997 res!2992779) b!7461000))

(assert (= (or b!7461002 b!7461000) bm!685387))

(assert (= (or b!7461003 b!7460997) bm!685388))

(assert (= (or b!7461005 bm!685387) bm!685386))

(declare-fun m!8062454 () Bool)

(assert (=> bm!685386 m!8062454))

(declare-fun m!8062456 () Bool)

(assert (=> b!7460998 m!8062456))

(declare-fun m!8062458 () Bool)

(assert (=> bm!685388 m!8062458))

(assert (=> b!7460861 d!2298099))

(declare-fun c!1379280 () Bool)

(declare-fun call!685394 () Bool)

(declare-fun c!1379279 () Bool)

(declare-fun bm!685389 () Bool)

(assert (=> bm!685389 (= call!685394 (validRegex!10044 (ite c!1379280 (reg!19859 lt!2622523) (ite c!1379279 (regTwo!39573 lt!2622523) (regTwo!39572 lt!2622523)))))))

(declare-fun b!7461006 () Bool)

(declare-fun e!4452619 () Bool)

(declare-fun e!4452618 () Bool)

(assert (=> b!7461006 (= e!4452619 e!4452618)))

(declare-fun res!2992784 () Bool)

(assert (=> b!7461006 (=> (not res!2992784) (not e!4452618))))

(declare-fun call!685395 () Bool)

(assert (=> b!7461006 (= res!2992784 call!685395)))

(declare-fun b!7461007 () Bool)

(declare-fun e!4452622 () Bool)

(declare-fun e!4452617 () Bool)

(assert (=> b!7461007 (= e!4452622 e!4452617)))

(declare-fun res!2992783 () Bool)

(assert (=> b!7461007 (= res!2992783 (not (nullable!8510 (reg!19859 lt!2622523))))))

(assert (=> b!7461007 (=> (not res!2992783) (not e!4452617))))

(declare-fun b!7461008 () Bool)

(declare-fun e!4452623 () Bool)

(assert (=> b!7461008 (= e!4452622 e!4452623)))

(assert (=> b!7461008 (= c!1379279 (is-Union!19530 lt!2622523))))

(declare-fun b!7461009 () Bool)

(declare-fun call!685396 () Bool)

(assert (=> b!7461009 (= e!4452618 call!685396)))

(declare-fun b!7461010 () Bool)

(declare-fun e!4452621 () Bool)

(assert (=> b!7461010 (= e!4452621 e!4452622)))

(assert (=> b!7461010 (= c!1379280 (is-Star!19530 lt!2622523))))

(declare-fun b!7461011 () Bool)

(declare-fun e!4452620 () Bool)

(assert (=> b!7461011 (= e!4452620 call!685396)))

(declare-fun b!7461012 () Bool)

(declare-fun res!2992785 () Bool)

(assert (=> b!7461012 (=> (not res!2992785) (not e!4452620))))

(assert (=> b!7461012 (= res!2992785 call!685395)))

(assert (=> b!7461012 (= e!4452623 e!4452620)))

(declare-fun b!7461013 () Bool)

(declare-fun res!2992787 () Bool)

(assert (=> b!7461013 (=> res!2992787 e!4452619)))

(assert (=> b!7461013 (= res!2992787 (not (is-Concat!28375 lt!2622523)))))

(assert (=> b!7461013 (= e!4452623 e!4452619)))

(declare-fun bm!685391 () Bool)

(assert (=> bm!685391 (= call!685395 (validRegex!10044 (ite c!1379279 (regOne!39573 lt!2622523) (regOne!39572 lt!2622523))))))

(declare-fun b!7461014 () Bool)

(assert (=> b!7461014 (= e!4452617 call!685394)))

(declare-fun d!2298101 () Bool)

(declare-fun res!2992786 () Bool)

(assert (=> d!2298101 (=> res!2992786 e!4452621)))

(assert (=> d!2298101 (= res!2992786 (is-ElementMatch!19530 lt!2622523))))

(assert (=> d!2298101 (= (validRegex!10044 lt!2622523) e!4452621)))

(declare-fun bm!685390 () Bool)

(assert (=> bm!685390 (= call!685396 call!685394)))

(assert (= (and d!2298101 (not res!2992786)) b!7461010))

(assert (= (and b!7461010 c!1379280) b!7461007))

(assert (= (and b!7461010 (not c!1379280)) b!7461008))

(assert (= (and b!7461007 res!2992783) b!7461014))

(assert (= (and b!7461008 c!1379279) b!7461012))

(assert (= (and b!7461008 (not c!1379279)) b!7461013))

(assert (= (and b!7461012 res!2992785) b!7461011))

(assert (= (and b!7461013 (not res!2992787)) b!7461006))

(assert (= (and b!7461006 res!2992784) b!7461009))

(assert (= (or b!7461011 b!7461009) bm!685390))

(assert (= (or b!7461012 b!7461006) bm!685391))

(assert (= (or b!7461014 bm!685390) bm!685389))

(declare-fun m!8062460 () Bool)

(assert (=> bm!685389 m!8062460))

(declare-fun m!8062462 () Bool)

(assert (=> b!7461007 m!8062462))

(declare-fun m!8062464 () Bool)

(assert (=> bm!685391 m!8062464))

(assert (=> b!7460850 d!2298101))

(declare-fun bm!685392 () Bool)

(declare-fun c!1379281 () Bool)

(declare-fun call!685397 () Bool)

(declare-fun c!1379282 () Bool)

(assert (=> bm!685392 (= call!685397 (validRegex!10044 (ite c!1379282 (reg!19859 r2!5783) (ite c!1379281 (regTwo!39573 r2!5783) (regTwo!39572 r2!5783)))))))

(declare-fun b!7461015 () Bool)

(declare-fun e!4452626 () Bool)

(declare-fun e!4452625 () Bool)

(assert (=> b!7461015 (= e!4452626 e!4452625)))

(declare-fun res!2992789 () Bool)

(assert (=> b!7461015 (=> (not res!2992789) (not e!4452625))))

(declare-fun call!685398 () Bool)

(assert (=> b!7461015 (= res!2992789 call!685398)))

(declare-fun b!7461016 () Bool)

(declare-fun e!4452629 () Bool)

(declare-fun e!4452624 () Bool)

(assert (=> b!7461016 (= e!4452629 e!4452624)))

(declare-fun res!2992788 () Bool)

(assert (=> b!7461016 (= res!2992788 (not (nullable!8510 (reg!19859 r2!5783))))))

(assert (=> b!7461016 (=> (not res!2992788) (not e!4452624))))

(declare-fun b!7461017 () Bool)

(declare-fun e!4452630 () Bool)

(assert (=> b!7461017 (= e!4452629 e!4452630)))

(assert (=> b!7461017 (= c!1379281 (is-Union!19530 r2!5783))))

(declare-fun b!7461018 () Bool)

(declare-fun call!685399 () Bool)

(assert (=> b!7461018 (= e!4452625 call!685399)))

(declare-fun b!7461019 () Bool)

(declare-fun e!4452628 () Bool)

(assert (=> b!7461019 (= e!4452628 e!4452629)))

(assert (=> b!7461019 (= c!1379282 (is-Star!19530 r2!5783))))

(declare-fun b!7461020 () Bool)

(declare-fun e!4452627 () Bool)

(assert (=> b!7461020 (= e!4452627 call!685399)))

(declare-fun b!7461021 () Bool)

(declare-fun res!2992790 () Bool)

(assert (=> b!7461021 (=> (not res!2992790) (not e!4452627))))

(assert (=> b!7461021 (= res!2992790 call!685398)))

(assert (=> b!7461021 (= e!4452630 e!4452627)))

(declare-fun b!7461022 () Bool)

(declare-fun res!2992792 () Bool)

(assert (=> b!7461022 (=> res!2992792 e!4452626)))

(assert (=> b!7461022 (= res!2992792 (not (is-Concat!28375 r2!5783)))))

(assert (=> b!7461022 (= e!4452630 e!4452626)))

(declare-fun bm!685394 () Bool)

(assert (=> bm!685394 (= call!685398 (validRegex!10044 (ite c!1379281 (regOne!39573 r2!5783) (regOne!39572 r2!5783))))))

(declare-fun b!7461023 () Bool)

(assert (=> b!7461023 (= e!4452624 call!685397)))

(declare-fun d!2298103 () Bool)

(declare-fun res!2992791 () Bool)

(assert (=> d!2298103 (=> res!2992791 e!4452628)))

(assert (=> d!2298103 (= res!2992791 (is-ElementMatch!19530 r2!5783))))

(assert (=> d!2298103 (= (validRegex!10044 r2!5783) e!4452628)))

(declare-fun bm!685393 () Bool)

(assert (=> bm!685393 (= call!685399 call!685397)))

(assert (= (and d!2298103 (not res!2992791)) b!7461019))

(assert (= (and b!7461019 c!1379282) b!7461016))

(assert (= (and b!7461019 (not c!1379282)) b!7461017))

(assert (= (and b!7461016 res!2992788) b!7461023))

(assert (= (and b!7461017 c!1379281) b!7461021))

(assert (= (and b!7461017 (not c!1379281)) b!7461022))

(assert (= (and b!7461021 res!2992790) b!7461020))

(assert (= (and b!7461022 (not res!2992792)) b!7461015))

(assert (= (and b!7461015 res!2992789) b!7461018))

(assert (= (or b!7461020 b!7461018) bm!685393))

(assert (= (or b!7461021 b!7461015) bm!685394))

(assert (= (or b!7461023 bm!685393) bm!685392))

(declare-fun m!8062466 () Bool)

(assert (=> bm!685392 m!8062466))

(declare-fun m!8062468 () Bool)

(assert (=> b!7461016 m!8062468))

(declare-fun m!8062470 () Bool)

(assert (=> bm!685394 m!8062470))

(assert (=> b!7460844 d!2298103))

(declare-fun b!7461070 () Bool)

(declare-fun res!2992823 () Bool)

(declare-fun e!4452660 () Bool)

(assert (=> b!7461070 (=> (not res!2992823) (not e!4452660))))

(declare-fun call!685402 () Bool)

(assert (=> b!7461070 (= res!2992823 (not call!685402))))

(declare-fun b!7461071 () Bool)

(declare-fun e!4452658 () Bool)

(declare-fun lt!2622584 () Bool)

(assert (=> b!7461071 (= e!4452658 (= lt!2622584 call!685402))))

(declare-fun b!7461072 () Bool)

(declare-fun head!15309 (List!72246) C!39334)

(assert (=> b!7461072 (= e!4452660 (= (head!15309 s!13591) (c!1379265 lt!2622523)))))

(declare-fun b!7461073 () Bool)

(declare-fun e!4452659 () Bool)

(declare-fun derivativeStep!5569 (Regex!19530 C!39334) Regex!19530)

(declare-fun tail!14878 (List!72246) List!72246)

(assert (=> b!7461073 (= e!4452659 (matchR!9294 (derivativeStep!5569 lt!2622523 (head!15309 s!13591)) (tail!14878 s!13591)))))

(declare-fun b!7461074 () Bool)

(declare-fun res!2992826 () Bool)

(declare-fun e!4452656 () Bool)

(assert (=> b!7461074 (=> res!2992826 e!4452656)))

(assert (=> b!7461074 (= res!2992826 (not (is-ElementMatch!19530 lt!2622523)))))

(declare-fun e!4452657 () Bool)

(assert (=> b!7461074 (= e!4452657 e!4452656)))

(declare-fun bm!685397 () Bool)

(declare-fun isEmpty!41136 (List!72246) Bool)

(assert (=> bm!685397 (= call!685402 (isEmpty!41136 s!13591))))

(declare-fun b!7461075 () Bool)

(assert (=> b!7461075 (= e!4452658 e!4452657)))

(declare-fun c!1379293 () Bool)

(assert (=> b!7461075 (= c!1379293 (is-EmptyLang!19530 lt!2622523))))

(declare-fun d!2298105 () Bool)

(assert (=> d!2298105 e!4452658))

(declare-fun c!1379294 () Bool)

(assert (=> d!2298105 (= c!1379294 (is-EmptyExpr!19530 lt!2622523))))

(assert (=> d!2298105 (= lt!2622584 e!4452659)))

(declare-fun c!1379295 () Bool)

(assert (=> d!2298105 (= c!1379295 (isEmpty!41136 s!13591))))

(assert (=> d!2298105 (validRegex!10044 lt!2622523)))

(assert (=> d!2298105 (= (matchR!9294 lt!2622523 s!13591) lt!2622584)))

(declare-fun b!7461076 () Bool)

(declare-fun res!2992822 () Bool)

(declare-fun e!4452655 () Bool)

(assert (=> b!7461076 (=> res!2992822 e!4452655)))

(assert (=> b!7461076 (= res!2992822 (not (isEmpty!41136 (tail!14878 s!13591))))))

(declare-fun b!7461077 () Bool)

(assert (=> b!7461077 (= e!4452655 (not (= (head!15309 s!13591) (c!1379265 lt!2622523))))))

(declare-fun b!7461078 () Bool)

(declare-fun e!4452661 () Bool)

(assert (=> b!7461078 (= e!4452661 e!4452655)))

(declare-fun res!2992820 () Bool)

(assert (=> b!7461078 (=> res!2992820 e!4452655)))

(assert (=> b!7461078 (= res!2992820 call!685402)))

(declare-fun b!7461079 () Bool)

(declare-fun res!2992824 () Bool)

(assert (=> b!7461079 (=> res!2992824 e!4452656)))

(assert (=> b!7461079 (= res!2992824 e!4452660)))

(declare-fun res!2992819 () Bool)

(assert (=> b!7461079 (=> (not res!2992819) (not e!4452660))))

(assert (=> b!7461079 (= res!2992819 lt!2622584)))

(declare-fun b!7461080 () Bool)

(assert (=> b!7461080 (= e!4452657 (not lt!2622584))))

(declare-fun b!7461081 () Bool)

(declare-fun res!2992821 () Bool)

(assert (=> b!7461081 (=> (not res!2992821) (not e!4452660))))

(assert (=> b!7461081 (= res!2992821 (isEmpty!41136 (tail!14878 s!13591)))))

(declare-fun b!7461082 () Bool)

(assert (=> b!7461082 (= e!4452659 (nullable!8510 lt!2622523))))

(declare-fun b!7461083 () Bool)

(assert (=> b!7461083 (= e!4452656 e!4452661)))

(declare-fun res!2992825 () Bool)

(assert (=> b!7461083 (=> (not res!2992825) (not e!4452661))))

(assert (=> b!7461083 (= res!2992825 (not lt!2622584))))

(assert (= (and d!2298105 c!1379295) b!7461082))

(assert (= (and d!2298105 (not c!1379295)) b!7461073))

(assert (= (and d!2298105 c!1379294) b!7461071))

(assert (= (and d!2298105 (not c!1379294)) b!7461075))

(assert (= (and b!7461075 c!1379293) b!7461080))

(assert (= (and b!7461075 (not c!1379293)) b!7461074))

(assert (= (and b!7461074 (not res!2992826)) b!7461079))

(assert (= (and b!7461079 res!2992819) b!7461070))

(assert (= (and b!7461070 res!2992823) b!7461081))

(assert (= (and b!7461081 res!2992821) b!7461072))

(assert (= (and b!7461079 (not res!2992824)) b!7461083))

(assert (= (and b!7461083 res!2992825) b!7461078))

(assert (= (and b!7461078 (not res!2992820)) b!7461076))

(assert (= (and b!7461076 (not res!2992822)) b!7461077))

(assert (= (or b!7461071 b!7461070 b!7461078) bm!685397))

(declare-fun m!8062472 () Bool)

(assert (=> b!7461081 m!8062472))

(assert (=> b!7461081 m!8062472))

(declare-fun m!8062474 () Bool)

(assert (=> b!7461081 m!8062474))

(declare-fun m!8062476 () Bool)

(assert (=> b!7461077 m!8062476))

(declare-fun m!8062478 () Bool)

(assert (=> d!2298105 m!8062478))

(assert (=> d!2298105 m!8062374))

(assert (=> b!7461076 m!8062472))

(assert (=> b!7461076 m!8062472))

(assert (=> b!7461076 m!8062474))

(assert (=> b!7461072 m!8062476))

(assert (=> bm!685397 m!8062478))

(declare-fun m!8062480 () Bool)

(assert (=> b!7461082 m!8062480))

(assert (=> b!7461073 m!8062476))

(assert (=> b!7461073 m!8062476))

(declare-fun m!8062482 () Bool)

(assert (=> b!7461073 m!8062482))

(assert (=> b!7461073 m!8062472))

(assert (=> b!7461073 m!8062482))

(assert (=> b!7461073 m!8062472))

(declare-fun m!8062484 () Bool)

(assert (=> b!7461073 m!8062484))

(assert (=> b!7460857 d!2298105))

(declare-fun bs!1929414 () Bool)

(declare-fun b!7461125 () Bool)

(assert (= bs!1929414 (and b!7461125 b!7460859)))

(declare-fun lambda!461632 () Int)

(assert (=> bs!1929414 (not (= lambda!461632 lambda!461607))))

(declare-fun bs!1929415 () Bool)

(assert (= bs!1929415 (and b!7461125 d!2298093)))

(assert (=> bs!1929415 (not (= lambda!461632 lambda!461627))))

(assert (=> bs!1929415 (not (= lambda!461632 lambda!461626))))

(assert (=> bs!1929414 (not (= lambda!461632 lambda!461606))))

(declare-fun bs!1929416 () Bool)

(assert (= bs!1929416 (and b!7461125 d!2298085)))

(assert (=> bs!1929416 (not (= lambda!461632 lambda!461618))))

(assert (=> b!7461125 true))

(assert (=> b!7461125 true))

(declare-fun bs!1929417 () Bool)

(declare-fun b!7461131 () Bool)

(assert (= bs!1929417 (and b!7461131 d!2298093)))

(declare-fun lambda!461633 () Int)

(assert (=> bs!1929417 (= (and (= (regOne!39572 lt!2622529) lt!2622525) (= (regTwo!39572 lt!2622529) rTail!78)) (= lambda!461633 lambda!461627))))

(assert (=> bs!1929417 (not (= lambda!461633 lambda!461626))))

(declare-fun bs!1929418 () Bool)

(assert (= bs!1929418 (and b!7461131 b!7460859)))

(assert (=> bs!1929418 (not (= lambda!461633 lambda!461606))))

(declare-fun bs!1929419 () Bool)

(assert (= bs!1929419 (and b!7461131 d!2298085)))

(assert (=> bs!1929419 (not (= lambda!461633 lambda!461618))))

(assert (=> bs!1929418 (= (and (= (regOne!39572 lt!2622529) lt!2622525) (= (regTwo!39572 lt!2622529) rTail!78)) (= lambda!461633 lambda!461607))))

(declare-fun bs!1929420 () Bool)

(assert (= bs!1929420 (and b!7461131 b!7461125)))

(assert (=> bs!1929420 (not (= lambda!461633 lambda!461632))))

(assert (=> b!7461131 true))

(assert (=> b!7461131 true))

(declare-fun e!4452687 () Bool)

(declare-fun call!685408 () Bool)

(assert (=> b!7461125 (= e!4452687 call!685408)))

(declare-fun d!2298107 () Bool)

(declare-fun c!1379308 () Bool)

(assert (=> d!2298107 (= c!1379308 (is-EmptyExpr!19530 lt!2622529))))

(declare-fun e!4452690 () Bool)

(assert (=> d!2298107 (= (matchRSpec!4209 lt!2622529 s!13591) e!4452690)))

(declare-fun b!7461126 () Bool)

(declare-fun c!1379307 () Bool)

(assert (=> b!7461126 (= c!1379307 (is-ElementMatch!19530 lt!2622529))))

(declare-fun e!4452686 () Bool)

(declare-fun e!4452691 () Bool)

(assert (=> b!7461126 (= e!4452686 e!4452691)))

(declare-fun b!7461127 () Bool)

(declare-fun e!4452689 () Bool)

(declare-fun e!4452685 () Bool)

(assert (=> b!7461127 (= e!4452689 e!4452685)))

(declare-fun c!1379306 () Bool)

(assert (=> b!7461127 (= c!1379306 (is-Star!19530 lt!2622529))))

(declare-fun b!7461128 () Bool)

(declare-fun e!4452688 () Bool)

(assert (=> b!7461128 (= e!4452689 e!4452688)))

(declare-fun res!2992848 () Bool)

(assert (=> b!7461128 (= res!2992848 (matchRSpec!4209 (regOne!39573 lt!2622529) s!13591))))

(assert (=> b!7461128 (=> res!2992848 e!4452688)))

(declare-fun b!7461129 () Bool)

(assert (=> b!7461129 (= e!4452691 (= s!13591 (Cons!72122 (c!1379265 lt!2622529) Nil!72122)))))

(declare-fun b!7461130 () Bool)

(assert (=> b!7461130 (= e!4452690 e!4452686)))

(declare-fun res!2992849 () Bool)

(assert (=> b!7461130 (= res!2992849 (not (is-EmptyLang!19530 lt!2622529)))))

(assert (=> b!7461130 (=> (not res!2992849) (not e!4452686))))

(assert (=> b!7461131 (= e!4452685 call!685408)))

(declare-fun bm!685402 () Bool)

(assert (=> bm!685402 (= call!685408 (Exists!4149 (ite c!1379306 lambda!461632 lambda!461633)))))

(declare-fun b!7461132 () Bool)

(declare-fun call!685407 () Bool)

(assert (=> b!7461132 (= e!4452690 call!685407)))

(declare-fun bm!685403 () Bool)

(assert (=> bm!685403 (= call!685407 (isEmpty!41136 s!13591))))

(declare-fun b!7461133 () Bool)

(declare-fun c!1379309 () Bool)

(assert (=> b!7461133 (= c!1379309 (is-Union!19530 lt!2622529))))

(assert (=> b!7461133 (= e!4452691 e!4452689)))

(declare-fun b!7461134 () Bool)

(declare-fun res!2992850 () Bool)

(assert (=> b!7461134 (=> res!2992850 e!4452687)))

(assert (=> b!7461134 (= res!2992850 call!685407)))

(assert (=> b!7461134 (= e!4452685 e!4452687)))

(declare-fun b!7461135 () Bool)

(assert (=> b!7461135 (= e!4452688 (matchRSpec!4209 (regTwo!39573 lt!2622529) s!13591))))

(assert (= (and d!2298107 c!1379308) b!7461132))

(assert (= (and d!2298107 (not c!1379308)) b!7461130))

(assert (= (and b!7461130 res!2992849) b!7461126))

(assert (= (and b!7461126 c!1379307) b!7461129))

(assert (= (and b!7461126 (not c!1379307)) b!7461133))

(assert (= (and b!7461133 c!1379309) b!7461128))

(assert (= (and b!7461133 (not c!1379309)) b!7461127))

(assert (= (and b!7461128 (not res!2992848)) b!7461135))

(assert (= (and b!7461127 c!1379306) b!7461134))

(assert (= (and b!7461127 (not c!1379306)) b!7461131))

(assert (= (and b!7461134 (not res!2992850)) b!7461125))

(assert (= (or b!7461125 b!7461131) bm!685402))

(assert (= (or b!7461132 b!7461134) bm!685403))

(declare-fun m!8062512 () Bool)

(assert (=> b!7461128 m!8062512))

(declare-fun m!8062514 () Bool)

(assert (=> bm!685402 m!8062514))

(assert (=> bm!685403 m!8062478))

(declare-fun m!8062516 () Bool)

(assert (=> b!7461135 m!8062516))

(assert (=> b!7460857 d!2298107))

(declare-fun bs!1929421 () Bool)

(declare-fun b!7461136 () Bool)

(assert (= bs!1929421 (and b!7461136 d!2298093)))

(declare-fun lambda!461634 () Int)

(assert (=> bs!1929421 (not (= lambda!461634 lambda!461627))))

(assert (=> bs!1929421 (not (= lambda!461634 lambda!461626))))

(declare-fun bs!1929422 () Bool)

(assert (= bs!1929422 (and b!7461136 b!7461131)))

(assert (=> bs!1929422 (not (= lambda!461634 lambda!461633))))

(declare-fun bs!1929423 () Bool)

(assert (= bs!1929423 (and b!7461136 b!7460859)))

(assert (=> bs!1929423 (not (= lambda!461634 lambda!461606))))

(declare-fun bs!1929424 () Bool)

(assert (= bs!1929424 (and b!7461136 d!2298085)))

(assert (=> bs!1929424 (not (= lambda!461634 lambda!461618))))

(assert (=> bs!1929423 (not (= lambda!461634 lambda!461607))))

(declare-fun bs!1929425 () Bool)

(assert (= bs!1929425 (and b!7461136 b!7461125)))

(assert (=> bs!1929425 (= (and (= (reg!19859 lt!2622523) (reg!19859 lt!2622529)) (= lt!2622523 lt!2622529)) (= lambda!461634 lambda!461632))))

(assert (=> b!7461136 true))

(assert (=> b!7461136 true))

(declare-fun bs!1929426 () Bool)

(declare-fun b!7461142 () Bool)

(assert (= bs!1929426 (and b!7461142 d!2298093)))

(declare-fun lambda!461635 () Int)

(assert (=> bs!1929426 (= (and (= (regOne!39572 lt!2622523) lt!2622525) (= (regTwo!39572 lt!2622523) rTail!78)) (= lambda!461635 lambda!461627))))

(assert (=> bs!1929426 (not (= lambda!461635 lambda!461626))))

(declare-fun bs!1929427 () Bool)

(assert (= bs!1929427 (and b!7461142 b!7461131)))

(assert (=> bs!1929427 (= (and (= (regOne!39572 lt!2622523) (regOne!39572 lt!2622529)) (= (regTwo!39572 lt!2622523) (regTwo!39572 lt!2622529))) (= lambda!461635 lambda!461633))))

(declare-fun bs!1929428 () Bool)

(assert (= bs!1929428 (and b!7461142 b!7460859)))

(assert (=> bs!1929428 (not (= lambda!461635 lambda!461606))))

(declare-fun bs!1929429 () Bool)

(assert (= bs!1929429 (and b!7461142 b!7461136)))

(assert (=> bs!1929429 (not (= lambda!461635 lambda!461634))))

(declare-fun bs!1929430 () Bool)

(assert (= bs!1929430 (and b!7461142 d!2298085)))

(assert (=> bs!1929430 (not (= lambda!461635 lambda!461618))))

(assert (=> bs!1929428 (= (and (= (regOne!39572 lt!2622523) lt!2622525) (= (regTwo!39572 lt!2622523) rTail!78)) (= lambda!461635 lambda!461607))))

(declare-fun bs!1929431 () Bool)

(assert (= bs!1929431 (and b!7461142 b!7461125)))

(assert (=> bs!1929431 (not (= lambda!461635 lambda!461632))))

(assert (=> b!7461142 true))

(assert (=> b!7461142 true))

(declare-fun e!4452694 () Bool)

(declare-fun call!685410 () Bool)

(assert (=> b!7461136 (= e!4452694 call!685410)))

(declare-fun d!2298115 () Bool)

(declare-fun c!1379312 () Bool)

(assert (=> d!2298115 (= c!1379312 (is-EmptyExpr!19530 lt!2622523))))

(declare-fun e!4452697 () Bool)

(assert (=> d!2298115 (= (matchRSpec!4209 lt!2622523 s!13591) e!4452697)))

(declare-fun b!7461137 () Bool)

(declare-fun c!1379311 () Bool)

(assert (=> b!7461137 (= c!1379311 (is-ElementMatch!19530 lt!2622523))))

(declare-fun e!4452693 () Bool)

(declare-fun e!4452698 () Bool)

(assert (=> b!7461137 (= e!4452693 e!4452698)))

(declare-fun b!7461138 () Bool)

(declare-fun e!4452696 () Bool)

(declare-fun e!4452692 () Bool)

(assert (=> b!7461138 (= e!4452696 e!4452692)))

(declare-fun c!1379310 () Bool)

(assert (=> b!7461138 (= c!1379310 (is-Star!19530 lt!2622523))))

(declare-fun b!7461139 () Bool)

(declare-fun e!4452695 () Bool)

(assert (=> b!7461139 (= e!4452696 e!4452695)))

(declare-fun res!2992851 () Bool)

(assert (=> b!7461139 (= res!2992851 (matchRSpec!4209 (regOne!39573 lt!2622523) s!13591))))

(assert (=> b!7461139 (=> res!2992851 e!4452695)))

(declare-fun b!7461140 () Bool)

(assert (=> b!7461140 (= e!4452698 (= s!13591 (Cons!72122 (c!1379265 lt!2622523) Nil!72122)))))

(declare-fun b!7461141 () Bool)

(assert (=> b!7461141 (= e!4452697 e!4452693)))

(declare-fun res!2992852 () Bool)

(assert (=> b!7461141 (= res!2992852 (not (is-EmptyLang!19530 lt!2622523)))))

(assert (=> b!7461141 (=> (not res!2992852) (not e!4452693))))

(assert (=> b!7461142 (= e!4452692 call!685410)))

(declare-fun bm!685404 () Bool)

(assert (=> bm!685404 (= call!685410 (Exists!4149 (ite c!1379310 lambda!461634 lambda!461635)))))

(declare-fun b!7461143 () Bool)

(declare-fun call!685409 () Bool)

(assert (=> b!7461143 (= e!4452697 call!685409)))

(declare-fun bm!685405 () Bool)

(assert (=> bm!685405 (= call!685409 (isEmpty!41136 s!13591))))

(declare-fun b!7461144 () Bool)

(declare-fun c!1379313 () Bool)

(assert (=> b!7461144 (= c!1379313 (is-Union!19530 lt!2622523))))

(assert (=> b!7461144 (= e!4452698 e!4452696)))

(declare-fun b!7461145 () Bool)

(declare-fun res!2992853 () Bool)

(assert (=> b!7461145 (=> res!2992853 e!4452694)))

(assert (=> b!7461145 (= res!2992853 call!685409)))

(assert (=> b!7461145 (= e!4452692 e!4452694)))

(declare-fun b!7461146 () Bool)

(assert (=> b!7461146 (= e!4452695 (matchRSpec!4209 (regTwo!39573 lt!2622523) s!13591))))

(assert (= (and d!2298115 c!1379312) b!7461143))

(assert (= (and d!2298115 (not c!1379312)) b!7461141))

(assert (= (and b!7461141 res!2992852) b!7461137))

(assert (= (and b!7461137 c!1379311) b!7461140))

(assert (= (and b!7461137 (not c!1379311)) b!7461144))

(assert (= (and b!7461144 c!1379313) b!7461139))

(assert (= (and b!7461144 (not c!1379313)) b!7461138))

(assert (= (and b!7461139 (not res!2992851)) b!7461146))

(assert (= (and b!7461138 c!1379310) b!7461145))

(assert (= (and b!7461138 (not c!1379310)) b!7461142))

(assert (= (and b!7461145 (not res!2992853)) b!7461136))

(assert (= (or b!7461136 b!7461142) bm!685404))

(assert (= (or b!7461143 b!7461145) bm!685405))

(declare-fun m!8062518 () Bool)

(assert (=> b!7461139 m!8062518))

(declare-fun m!8062520 () Bool)

(assert (=> bm!685404 m!8062520))

(assert (=> bm!685405 m!8062478))

(declare-fun m!8062522 () Bool)

(assert (=> b!7461146 m!8062522))

(assert (=> b!7460857 d!2298115))

(declare-fun d!2298117 () Bool)

(assert (=> d!2298117 (= (matchR!9294 lt!2622529 s!13591) (matchRSpec!4209 lt!2622529 s!13591))))

(declare-fun lt!2622592 () Unit!165895)

(declare-fun choose!57677 (Regex!19530 List!72246) Unit!165895)

(assert (=> d!2298117 (= lt!2622592 (choose!57677 lt!2622529 s!13591))))

(assert (=> d!2298117 (validRegex!10044 lt!2622529)))

(assert (=> d!2298117 (= (mainMatchTheorem!4203 lt!2622529 s!13591) lt!2622592)))

(declare-fun bs!1929432 () Bool)

(assert (= bs!1929432 d!2298117))

(assert (=> bs!1929432 m!8062368))

(assert (=> bs!1929432 m!8062372))

(declare-fun m!8062524 () Bool)

(assert (=> bs!1929432 m!8062524))

(declare-fun m!8062526 () Bool)

(assert (=> bs!1929432 m!8062526))

(assert (=> b!7460857 d!2298117))

(declare-fun d!2298119 () Bool)

(assert (=> d!2298119 (= (matchR!9294 lt!2622523 s!13591) (matchRSpec!4209 lt!2622523 s!13591))))

(declare-fun lt!2622593 () Unit!165895)

(assert (=> d!2298119 (= lt!2622593 (choose!57677 lt!2622523 s!13591))))

(assert (=> d!2298119 (validRegex!10044 lt!2622523)))

(assert (=> d!2298119 (= (mainMatchTheorem!4203 lt!2622523 s!13591) lt!2622593)))

(declare-fun bs!1929433 () Bool)

(assert (= bs!1929433 d!2298119))

(assert (=> bs!1929433 m!8062364))

(assert (=> bs!1929433 m!8062370))

(declare-fun m!8062528 () Bool)

(assert (=> bs!1929433 m!8062528))

(assert (=> bs!1929433 m!8062374))

(assert (=> b!7460857 d!2298119))

(declare-fun b!7461147 () Bool)

(declare-fun res!2992858 () Bool)

(declare-fun e!4452704 () Bool)

(assert (=> b!7461147 (=> (not res!2992858) (not e!4452704))))

(declare-fun call!685411 () Bool)

(assert (=> b!7461147 (= res!2992858 (not call!685411))))

(declare-fun b!7461148 () Bool)

(declare-fun e!4452702 () Bool)

(declare-fun lt!2622594 () Bool)

(assert (=> b!7461148 (= e!4452702 (= lt!2622594 call!685411))))

(declare-fun b!7461149 () Bool)

(assert (=> b!7461149 (= e!4452704 (= (head!15309 s!13591) (c!1379265 lt!2622529)))))

(declare-fun b!7461150 () Bool)

(declare-fun e!4452703 () Bool)

(assert (=> b!7461150 (= e!4452703 (matchR!9294 (derivativeStep!5569 lt!2622529 (head!15309 s!13591)) (tail!14878 s!13591)))))

(declare-fun b!7461151 () Bool)

(declare-fun res!2992861 () Bool)

(declare-fun e!4452700 () Bool)

(assert (=> b!7461151 (=> res!2992861 e!4452700)))

(assert (=> b!7461151 (= res!2992861 (not (is-ElementMatch!19530 lt!2622529)))))

(declare-fun e!4452701 () Bool)

(assert (=> b!7461151 (= e!4452701 e!4452700)))

(declare-fun bm!685406 () Bool)

(assert (=> bm!685406 (= call!685411 (isEmpty!41136 s!13591))))

(declare-fun b!7461152 () Bool)

(assert (=> b!7461152 (= e!4452702 e!4452701)))

(declare-fun c!1379314 () Bool)

(assert (=> b!7461152 (= c!1379314 (is-EmptyLang!19530 lt!2622529))))

(declare-fun d!2298121 () Bool)

(assert (=> d!2298121 e!4452702))

(declare-fun c!1379315 () Bool)

(assert (=> d!2298121 (= c!1379315 (is-EmptyExpr!19530 lt!2622529))))

(assert (=> d!2298121 (= lt!2622594 e!4452703)))

(declare-fun c!1379316 () Bool)

(assert (=> d!2298121 (= c!1379316 (isEmpty!41136 s!13591))))

(assert (=> d!2298121 (validRegex!10044 lt!2622529)))

(assert (=> d!2298121 (= (matchR!9294 lt!2622529 s!13591) lt!2622594)))

(declare-fun b!7461153 () Bool)

(declare-fun res!2992857 () Bool)

(declare-fun e!4452699 () Bool)

(assert (=> b!7461153 (=> res!2992857 e!4452699)))

(assert (=> b!7461153 (= res!2992857 (not (isEmpty!41136 (tail!14878 s!13591))))))

(declare-fun b!7461154 () Bool)

(assert (=> b!7461154 (= e!4452699 (not (= (head!15309 s!13591) (c!1379265 lt!2622529))))))

(declare-fun b!7461155 () Bool)

(declare-fun e!4452705 () Bool)

(assert (=> b!7461155 (= e!4452705 e!4452699)))

(declare-fun res!2992855 () Bool)

(assert (=> b!7461155 (=> res!2992855 e!4452699)))

(assert (=> b!7461155 (= res!2992855 call!685411)))

(declare-fun b!7461156 () Bool)

(declare-fun res!2992859 () Bool)

(assert (=> b!7461156 (=> res!2992859 e!4452700)))

(assert (=> b!7461156 (= res!2992859 e!4452704)))

(declare-fun res!2992854 () Bool)

(assert (=> b!7461156 (=> (not res!2992854) (not e!4452704))))

(assert (=> b!7461156 (= res!2992854 lt!2622594)))

(declare-fun b!7461157 () Bool)

(assert (=> b!7461157 (= e!4452701 (not lt!2622594))))

(declare-fun b!7461158 () Bool)

(declare-fun res!2992856 () Bool)

(assert (=> b!7461158 (=> (not res!2992856) (not e!4452704))))

(assert (=> b!7461158 (= res!2992856 (isEmpty!41136 (tail!14878 s!13591)))))

(declare-fun b!7461159 () Bool)

(assert (=> b!7461159 (= e!4452703 (nullable!8510 lt!2622529))))

(declare-fun b!7461160 () Bool)

(assert (=> b!7461160 (= e!4452700 e!4452705)))

(declare-fun res!2992860 () Bool)

(assert (=> b!7461160 (=> (not res!2992860) (not e!4452705))))

(assert (=> b!7461160 (= res!2992860 (not lt!2622594))))

(assert (= (and d!2298121 c!1379316) b!7461159))

(assert (= (and d!2298121 (not c!1379316)) b!7461150))

(assert (= (and d!2298121 c!1379315) b!7461148))

(assert (= (and d!2298121 (not c!1379315)) b!7461152))

(assert (= (and b!7461152 c!1379314) b!7461157))

(assert (= (and b!7461152 (not c!1379314)) b!7461151))

(assert (= (and b!7461151 (not res!2992861)) b!7461156))

(assert (= (and b!7461156 res!2992854) b!7461147))

(assert (= (and b!7461147 res!2992858) b!7461158))

(assert (= (and b!7461158 res!2992856) b!7461149))

(assert (= (and b!7461156 (not res!2992859)) b!7461160))

(assert (= (and b!7461160 res!2992860) b!7461155))

(assert (= (and b!7461155 (not res!2992855)) b!7461153))

(assert (= (and b!7461153 (not res!2992857)) b!7461154))

(assert (= (or b!7461148 b!7461147 b!7461155) bm!685406))

(assert (=> b!7461158 m!8062472))

(assert (=> b!7461158 m!8062472))

(assert (=> b!7461158 m!8062474))

(assert (=> b!7461154 m!8062476))

(assert (=> d!2298121 m!8062478))

(assert (=> d!2298121 m!8062526))

(assert (=> b!7461153 m!8062472))

(assert (=> b!7461153 m!8062472))

(assert (=> b!7461153 m!8062474))

(assert (=> b!7461149 m!8062476))

(assert (=> bm!685406 m!8062478))

(declare-fun m!8062530 () Bool)

(assert (=> b!7461159 m!8062530))

(assert (=> b!7461150 m!8062476))

(assert (=> b!7461150 m!8062476))

(declare-fun m!8062532 () Bool)

(assert (=> b!7461150 m!8062532))

(assert (=> b!7461150 m!8062472))

(assert (=> b!7461150 m!8062532))

(assert (=> b!7461150 m!8062472))

(declare-fun m!8062534 () Bool)

(assert (=> b!7461150 m!8062534))

(assert (=> b!7460857 d!2298121))

(declare-fun bm!685407 () Bool)

(declare-fun call!685412 () Bool)

(declare-fun c!1379317 () Bool)

(declare-fun c!1379318 () Bool)

(assert (=> bm!685407 (= call!685412 (validRegex!10044 (ite c!1379318 (reg!19859 r1!5845) (ite c!1379317 (regTwo!39573 r1!5845) (regTwo!39572 r1!5845)))))))

(declare-fun b!7461165 () Bool)

(declare-fun e!4452710 () Bool)

(declare-fun e!4452709 () Bool)

(assert (=> b!7461165 (= e!4452710 e!4452709)))

(declare-fun res!2992867 () Bool)

(assert (=> b!7461165 (=> (not res!2992867) (not e!4452709))))

(declare-fun call!685413 () Bool)

(assert (=> b!7461165 (= res!2992867 call!685413)))

(declare-fun b!7461166 () Bool)

(declare-fun e!4452713 () Bool)

(declare-fun e!4452708 () Bool)

(assert (=> b!7461166 (= e!4452713 e!4452708)))

(declare-fun res!2992866 () Bool)

(assert (=> b!7461166 (= res!2992866 (not (nullable!8510 (reg!19859 r1!5845))))))

(assert (=> b!7461166 (=> (not res!2992866) (not e!4452708))))

(declare-fun b!7461167 () Bool)

(declare-fun e!4452714 () Bool)

(assert (=> b!7461167 (= e!4452713 e!4452714)))

(assert (=> b!7461167 (= c!1379317 (is-Union!19530 r1!5845))))

(declare-fun b!7461168 () Bool)

(declare-fun call!685414 () Bool)

(assert (=> b!7461168 (= e!4452709 call!685414)))

(declare-fun b!7461169 () Bool)

(declare-fun e!4452712 () Bool)

(assert (=> b!7461169 (= e!4452712 e!4452713)))

(assert (=> b!7461169 (= c!1379318 (is-Star!19530 r1!5845))))

(declare-fun b!7461170 () Bool)

(declare-fun e!4452711 () Bool)

(assert (=> b!7461170 (= e!4452711 call!685414)))

(declare-fun b!7461171 () Bool)

(declare-fun res!2992868 () Bool)

(assert (=> b!7461171 (=> (not res!2992868) (not e!4452711))))

(assert (=> b!7461171 (= res!2992868 call!685413)))

(assert (=> b!7461171 (= e!4452714 e!4452711)))

(declare-fun b!7461172 () Bool)

(declare-fun res!2992870 () Bool)

(assert (=> b!7461172 (=> res!2992870 e!4452710)))

(assert (=> b!7461172 (= res!2992870 (not (is-Concat!28375 r1!5845)))))

(assert (=> b!7461172 (= e!4452714 e!4452710)))

(declare-fun bm!685409 () Bool)

(assert (=> bm!685409 (= call!685413 (validRegex!10044 (ite c!1379317 (regOne!39573 r1!5845) (regOne!39572 r1!5845))))))

(declare-fun b!7461173 () Bool)

(assert (=> b!7461173 (= e!4452708 call!685412)))

(declare-fun d!2298123 () Bool)

(declare-fun res!2992869 () Bool)

(assert (=> d!2298123 (=> res!2992869 e!4452712)))

(assert (=> d!2298123 (= res!2992869 (is-ElementMatch!19530 r1!5845))))

(assert (=> d!2298123 (= (validRegex!10044 r1!5845) e!4452712)))

(declare-fun bm!685408 () Bool)

(assert (=> bm!685408 (= call!685414 call!685412)))

(assert (= (and d!2298123 (not res!2992869)) b!7461169))

(assert (= (and b!7461169 c!1379318) b!7461166))

(assert (= (and b!7461169 (not c!1379318)) b!7461167))

(assert (= (and b!7461166 res!2992866) b!7461173))

(assert (= (and b!7461167 c!1379317) b!7461171))

(assert (= (and b!7461167 (not c!1379317)) b!7461172))

(assert (= (and b!7461171 res!2992868) b!7461170))

(assert (= (and b!7461172 (not res!2992870)) b!7461165))

(assert (= (and b!7461165 res!2992867) b!7461168))

(assert (= (or b!7461170 b!7461168) bm!685408))

(assert (= (or b!7461171 b!7461165) bm!685409))

(assert (= (or b!7461173 bm!685408) bm!685407))

(declare-fun m!8062536 () Bool)

(assert (=> bm!685407 m!8062536))

(declare-fun m!8062538 () Bool)

(assert (=> b!7461166 m!8062538))

(declare-fun m!8062540 () Bool)

(assert (=> bm!685409 m!8062540))

(assert (=> start!723852 d!2298123))

(declare-fun b!7461184 () Bool)

(declare-fun e!4452717 () Bool)

(assert (=> b!7461184 (= e!4452717 tp_is_empty!49349)))

(declare-fun b!7461186 () Bool)

(declare-fun tp!2162406 () Bool)

(assert (=> b!7461186 (= e!4452717 tp!2162406)))

(declare-fun b!7461187 () Bool)

(declare-fun tp!2162409 () Bool)

(declare-fun tp!2162410 () Bool)

(assert (=> b!7461187 (= e!4452717 (and tp!2162409 tp!2162410))))

(assert (=> b!7460849 (= tp!2162334 e!4452717)))

(declare-fun b!7461185 () Bool)

(declare-fun tp!2162407 () Bool)

(declare-fun tp!2162408 () Bool)

(assert (=> b!7461185 (= e!4452717 (and tp!2162407 tp!2162408))))

(assert (= (and b!7460849 (is-ElementMatch!19530 (regOne!39572 r1!5845))) b!7461184))

(assert (= (and b!7460849 (is-Concat!28375 (regOne!39572 r1!5845))) b!7461185))

(assert (= (and b!7460849 (is-Star!19530 (regOne!39572 r1!5845))) b!7461186))

(assert (= (and b!7460849 (is-Union!19530 (regOne!39572 r1!5845))) b!7461187))

(declare-fun b!7461188 () Bool)

(declare-fun e!4452718 () Bool)

(assert (=> b!7461188 (= e!4452718 tp_is_empty!49349)))

(declare-fun b!7461190 () Bool)

(declare-fun tp!2162411 () Bool)

(assert (=> b!7461190 (= e!4452718 tp!2162411)))

(declare-fun b!7461191 () Bool)

(declare-fun tp!2162414 () Bool)

(declare-fun tp!2162415 () Bool)

(assert (=> b!7461191 (= e!4452718 (and tp!2162414 tp!2162415))))

(assert (=> b!7460849 (= tp!2162336 e!4452718)))

(declare-fun b!7461189 () Bool)

(declare-fun tp!2162412 () Bool)

(declare-fun tp!2162413 () Bool)

(assert (=> b!7461189 (= e!4452718 (and tp!2162412 tp!2162413))))

(assert (= (and b!7460849 (is-ElementMatch!19530 (regTwo!39572 r1!5845))) b!7461188))

(assert (= (and b!7460849 (is-Concat!28375 (regTwo!39572 r1!5845))) b!7461189))

(assert (= (and b!7460849 (is-Star!19530 (regTwo!39572 r1!5845))) b!7461190))

(assert (= (and b!7460849 (is-Union!19530 (regTwo!39572 r1!5845))) b!7461191))

(declare-fun b!7461192 () Bool)

(declare-fun e!4452719 () Bool)

(assert (=> b!7461192 (= e!4452719 tp_is_empty!49349)))

(declare-fun b!7461194 () Bool)

(declare-fun tp!2162416 () Bool)

(assert (=> b!7461194 (= e!4452719 tp!2162416)))

(declare-fun b!7461195 () Bool)

(declare-fun tp!2162419 () Bool)

(declare-fun tp!2162420 () Bool)

(assert (=> b!7461195 (= e!4452719 (and tp!2162419 tp!2162420))))

(assert (=> b!7460854 (= tp!2162346 e!4452719)))

(declare-fun b!7461193 () Bool)

(declare-fun tp!2162417 () Bool)

(declare-fun tp!2162418 () Bool)

(assert (=> b!7461193 (= e!4452719 (and tp!2162417 tp!2162418))))

(assert (= (and b!7460854 (is-ElementMatch!19530 (regOne!39572 rTail!78))) b!7461192))

(assert (= (and b!7460854 (is-Concat!28375 (regOne!39572 rTail!78))) b!7461193))

(assert (= (and b!7460854 (is-Star!19530 (regOne!39572 rTail!78))) b!7461194))

(assert (= (and b!7460854 (is-Union!19530 (regOne!39572 rTail!78))) b!7461195))

(declare-fun b!7461196 () Bool)

(declare-fun e!4452720 () Bool)

(assert (=> b!7461196 (= e!4452720 tp_is_empty!49349)))

(declare-fun b!7461198 () Bool)

(declare-fun tp!2162421 () Bool)

(assert (=> b!7461198 (= e!4452720 tp!2162421)))

(declare-fun b!7461199 () Bool)

(declare-fun tp!2162424 () Bool)

(declare-fun tp!2162425 () Bool)

(assert (=> b!7461199 (= e!4452720 (and tp!2162424 tp!2162425))))

(assert (=> b!7460854 (= tp!2162341 e!4452720)))

(declare-fun b!7461197 () Bool)

(declare-fun tp!2162422 () Bool)

(declare-fun tp!2162423 () Bool)

(assert (=> b!7461197 (= e!4452720 (and tp!2162422 tp!2162423))))

(assert (= (and b!7460854 (is-ElementMatch!19530 (regTwo!39572 rTail!78))) b!7461196))

(assert (= (and b!7460854 (is-Concat!28375 (regTwo!39572 rTail!78))) b!7461197))

(assert (= (and b!7460854 (is-Star!19530 (regTwo!39572 rTail!78))) b!7461198))

(assert (= (and b!7460854 (is-Union!19530 (regTwo!39572 rTail!78))) b!7461199))

(declare-fun b!7461200 () Bool)

(declare-fun e!4452721 () Bool)

(assert (=> b!7461200 (= e!4452721 tp_is_empty!49349)))

(declare-fun b!7461202 () Bool)

(declare-fun tp!2162426 () Bool)

(assert (=> b!7461202 (= e!4452721 tp!2162426)))

(declare-fun b!7461203 () Bool)

(declare-fun tp!2162429 () Bool)

(declare-fun tp!2162430 () Bool)

(assert (=> b!7461203 (= e!4452721 (and tp!2162429 tp!2162430))))

(assert (=> b!7460848 (= tp!2162340 e!4452721)))

(declare-fun b!7461201 () Bool)

(declare-fun tp!2162427 () Bool)

(declare-fun tp!2162428 () Bool)

(assert (=> b!7461201 (= e!4452721 (and tp!2162427 tp!2162428))))

(assert (= (and b!7460848 (is-ElementMatch!19530 (regOne!39573 r2!5783))) b!7461200))

(assert (= (and b!7460848 (is-Concat!28375 (regOne!39573 r2!5783))) b!7461201))

(assert (= (and b!7460848 (is-Star!19530 (regOne!39573 r2!5783))) b!7461202))

(assert (= (and b!7460848 (is-Union!19530 (regOne!39573 r2!5783))) b!7461203))

(declare-fun b!7461204 () Bool)

(declare-fun e!4452722 () Bool)

(assert (=> b!7461204 (= e!4452722 tp_is_empty!49349)))

(declare-fun b!7461206 () Bool)

(declare-fun tp!2162431 () Bool)

(assert (=> b!7461206 (= e!4452722 tp!2162431)))

(declare-fun b!7461207 () Bool)

(declare-fun tp!2162434 () Bool)

(declare-fun tp!2162435 () Bool)

(assert (=> b!7461207 (= e!4452722 (and tp!2162434 tp!2162435))))

(assert (=> b!7460848 (= tp!2162342 e!4452722)))

(declare-fun b!7461205 () Bool)

(declare-fun tp!2162432 () Bool)

(declare-fun tp!2162433 () Bool)

(assert (=> b!7461205 (= e!4452722 (and tp!2162432 tp!2162433))))

(assert (= (and b!7460848 (is-ElementMatch!19530 (regTwo!39573 r2!5783))) b!7461204))

(assert (= (and b!7460848 (is-Concat!28375 (regTwo!39573 r2!5783))) b!7461205))

(assert (= (and b!7460848 (is-Star!19530 (regTwo!39573 r2!5783))) b!7461206))

(assert (= (and b!7460848 (is-Union!19530 (regTwo!39573 r2!5783))) b!7461207))

(declare-fun b!7461208 () Bool)

(declare-fun e!4452723 () Bool)

(assert (=> b!7461208 (= e!4452723 tp_is_empty!49349)))

(declare-fun b!7461210 () Bool)

(declare-fun tp!2162436 () Bool)

(assert (=> b!7461210 (= e!4452723 tp!2162436)))

(declare-fun b!7461211 () Bool)

(declare-fun tp!2162439 () Bool)

(declare-fun tp!2162440 () Bool)

(assert (=> b!7461211 (= e!4452723 (and tp!2162439 tp!2162440))))

(assert (=> b!7460860 (= tp!2162338 e!4452723)))

(declare-fun b!7461209 () Bool)

(declare-fun tp!2162437 () Bool)

(declare-fun tp!2162438 () Bool)

(assert (=> b!7461209 (= e!4452723 (and tp!2162437 tp!2162438))))

(assert (= (and b!7460860 (is-ElementMatch!19530 (reg!19859 r2!5783))) b!7461208))

(assert (= (and b!7460860 (is-Concat!28375 (reg!19859 r2!5783))) b!7461209))

(assert (= (and b!7460860 (is-Star!19530 (reg!19859 r2!5783))) b!7461210))

(assert (= (and b!7460860 (is-Union!19530 (reg!19859 r2!5783))) b!7461211))

(declare-fun b!7461212 () Bool)

(declare-fun e!4452724 () Bool)

(assert (=> b!7461212 (= e!4452724 tp_is_empty!49349)))

(declare-fun b!7461214 () Bool)

(declare-fun tp!2162441 () Bool)

(assert (=> b!7461214 (= e!4452724 tp!2162441)))

(declare-fun b!7461215 () Bool)

(declare-fun tp!2162444 () Bool)

(declare-fun tp!2162445 () Bool)

(assert (=> b!7461215 (= e!4452724 (and tp!2162444 tp!2162445))))

(assert (=> b!7460846 (= tp!2162333 e!4452724)))

(declare-fun b!7461213 () Bool)

(declare-fun tp!2162442 () Bool)

(declare-fun tp!2162443 () Bool)

(assert (=> b!7461213 (= e!4452724 (and tp!2162442 tp!2162443))))

(assert (= (and b!7460846 (is-ElementMatch!19530 (reg!19859 r1!5845))) b!7461212))

(assert (= (and b!7460846 (is-Concat!28375 (reg!19859 r1!5845))) b!7461213))

(assert (= (and b!7460846 (is-Star!19530 (reg!19859 r1!5845))) b!7461214))

(assert (= (and b!7460846 (is-Union!19530 (reg!19859 r1!5845))) b!7461215))

(declare-fun b!7461216 () Bool)

(declare-fun e!4452725 () Bool)

(assert (=> b!7461216 (= e!4452725 tp_is_empty!49349)))

(declare-fun b!7461218 () Bool)

(declare-fun tp!2162446 () Bool)

(assert (=> b!7461218 (= e!4452725 tp!2162446)))

(declare-fun b!7461219 () Bool)

(declare-fun tp!2162449 () Bool)

(declare-fun tp!2162450 () Bool)

(assert (=> b!7461219 (= e!4452725 (and tp!2162449 tp!2162450))))

(assert (=> b!7460851 (= tp!2162344 e!4452725)))

(declare-fun b!7461217 () Bool)

(declare-fun tp!2162447 () Bool)

(declare-fun tp!2162448 () Bool)

(assert (=> b!7461217 (= e!4452725 (and tp!2162447 tp!2162448))))

(assert (= (and b!7460851 (is-ElementMatch!19530 (regOne!39572 r2!5783))) b!7461216))

(assert (= (and b!7460851 (is-Concat!28375 (regOne!39572 r2!5783))) b!7461217))

(assert (= (and b!7460851 (is-Star!19530 (regOne!39572 r2!5783))) b!7461218))

(assert (= (and b!7460851 (is-Union!19530 (regOne!39572 r2!5783))) b!7461219))

(declare-fun b!7461220 () Bool)

(declare-fun e!4452726 () Bool)

(assert (=> b!7461220 (= e!4452726 tp_is_empty!49349)))

(declare-fun b!7461222 () Bool)

(declare-fun tp!2162451 () Bool)

(assert (=> b!7461222 (= e!4452726 tp!2162451)))

(declare-fun b!7461223 () Bool)

(declare-fun tp!2162454 () Bool)

(declare-fun tp!2162455 () Bool)

(assert (=> b!7461223 (= e!4452726 (and tp!2162454 tp!2162455))))

(assert (=> b!7460851 (= tp!2162347 e!4452726)))

(declare-fun b!7461221 () Bool)

(declare-fun tp!2162452 () Bool)

(declare-fun tp!2162453 () Bool)

(assert (=> b!7461221 (= e!4452726 (and tp!2162452 tp!2162453))))

(assert (= (and b!7460851 (is-ElementMatch!19530 (regTwo!39572 r2!5783))) b!7461220))

(assert (= (and b!7460851 (is-Concat!28375 (regTwo!39572 r2!5783))) b!7461221))

(assert (= (and b!7460851 (is-Star!19530 (regTwo!39572 r2!5783))) b!7461222))

(assert (= (and b!7460851 (is-Union!19530 (regTwo!39572 r2!5783))) b!7461223))

(declare-fun b!7461224 () Bool)

(declare-fun e!4452727 () Bool)

(assert (=> b!7461224 (= e!4452727 tp_is_empty!49349)))

(declare-fun b!7461226 () Bool)

(declare-fun tp!2162456 () Bool)

(assert (=> b!7461226 (= e!4452727 tp!2162456)))

(declare-fun b!7461227 () Bool)

(declare-fun tp!2162459 () Bool)

(declare-fun tp!2162460 () Bool)

(assert (=> b!7461227 (= e!4452727 (and tp!2162459 tp!2162460))))

(assert (=> b!7460856 (= tp!2162332 e!4452727)))

(declare-fun b!7461225 () Bool)

(declare-fun tp!2162457 () Bool)

(declare-fun tp!2162458 () Bool)

(assert (=> b!7461225 (= e!4452727 (and tp!2162457 tp!2162458))))

(assert (= (and b!7460856 (is-ElementMatch!19530 (reg!19859 rTail!78))) b!7461224))

(assert (= (and b!7460856 (is-Concat!28375 (reg!19859 rTail!78))) b!7461225))

(assert (= (and b!7460856 (is-Star!19530 (reg!19859 rTail!78))) b!7461226))

(assert (= (and b!7460856 (is-Union!19530 (reg!19859 rTail!78))) b!7461227))

(declare-fun b!7461236 () Bool)

(declare-fun e!4452732 () Bool)

(declare-fun tp!2162463 () Bool)

(assert (=> b!7461236 (= e!4452732 (and tp_is_empty!49349 tp!2162463))))

(assert (=> b!7460853 (= tp!2162335 e!4452732)))

(assert (= (and b!7460853 (is-Cons!72122 (t!386815 s!13591))) b!7461236))

(declare-fun b!7461237 () Bool)

(declare-fun e!4452733 () Bool)

(assert (=> b!7461237 (= e!4452733 tp_is_empty!49349)))

(declare-fun b!7461239 () Bool)

(declare-fun tp!2162464 () Bool)

(assert (=> b!7461239 (= e!4452733 tp!2162464)))

(declare-fun b!7461240 () Bool)

(declare-fun tp!2162467 () Bool)

(declare-fun tp!2162468 () Bool)

(assert (=> b!7461240 (= e!4452733 (and tp!2162467 tp!2162468))))

(assert (=> b!7460847 (= tp!2162339 e!4452733)))

(declare-fun b!7461238 () Bool)

(declare-fun tp!2162465 () Bool)

(declare-fun tp!2162466 () Bool)

(assert (=> b!7461238 (= e!4452733 (and tp!2162465 tp!2162466))))

(assert (= (and b!7460847 (is-ElementMatch!19530 (regOne!39573 rTail!78))) b!7461237))

(assert (= (and b!7460847 (is-Concat!28375 (regOne!39573 rTail!78))) b!7461238))

(assert (= (and b!7460847 (is-Star!19530 (regOne!39573 rTail!78))) b!7461239))

(assert (= (and b!7460847 (is-Union!19530 (regOne!39573 rTail!78))) b!7461240))

(declare-fun b!7461241 () Bool)

(declare-fun e!4452734 () Bool)

(assert (=> b!7461241 (= e!4452734 tp_is_empty!49349)))

(declare-fun b!7461243 () Bool)

(declare-fun tp!2162469 () Bool)

(assert (=> b!7461243 (= e!4452734 tp!2162469)))

(declare-fun b!7461244 () Bool)

(declare-fun tp!2162472 () Bool)

(declare-fun tp!2162473 () Bool)

(assert (=> b!7461244 (= e!4452734 (and tp!2162472 tp!2162473))))

(assert (=> b!7460847 (= tp!2162343 e!4452734)))

(declare-fun b!7461242 () Bool)

(declare-fun tp!2162470 () Bool)

(declare-fun tp!2162471 () Bool)

(assert (=> b!7461242 (= e!4452734 (and tp!2162470 tp!2162471))))

(assert (= (and b!7460847 (is-ElementMatch!19530 (regTwo!39573 rTail!78))) b!7461241))

(assert (= (and b!7460847 (is-Concat!28375 (regTwo!39573 rTail!78))) b!7461242))

(assert (= (and b!7460847 (is-Star!19530 (regTwo!39573 rTail!78))) b!7461243))

(assert (= (and b!7460847 (is-Union!19530 (regTwo!39573 rTail!78))) b!7461244))

(declare-fun b!7461245 () Bool)

(declare-fun e!4452735 () Bool)

(assert (=> b!7461245 (= e!4452735 tp_is_empty!49349)))

(declare-fun b!7461247 () Bool)

(declare-fun tp!2162474 () Bool)

(assert (=> b!7461247 (= e!4452735 tp!2162474)))

(declare-fun b!7461248 () Bool)

(declare-fun tp!2162477 () Bool)

(declare-fun tp!2162478 () Bool)

(assert (=> b!7461248 (= e!4452735 (and tp!2162477 tp!2162478))))

(assert (=> b!7460852 (= tp!2162345 e!4452735)))

(declare-fun b!7461246 () Bool)

(declare-fun tp!2162475 () Bool)

(declare-fun tp!2162476 () Bool)

(assert (=> b!7461246 (= e!4452735 (and tp!2162475 tp!2162476))))

(assert (= (and b!7460852 (is-ElementMatch!19530 (regOne!39573 r1!5845))) b!7461245))

(assert (= (and b!7460852 (is-Concat!28375 (regOne!39573 r1!5845))) b!7461246))

(assert (= (and b!7460852 (is-Star!19530 (regOne!39573 r1!5845))) b!7461247))

(assert (= (and b!7460852 (is-Union!19530 (regOne!39573 r1!5845))) b!7461248))

(declare-fun b!7461249 () Bool)

(declare-fun e!4452736 () Bool)

(assert (=> b!7461249 (= e!4452736 tp_is_empty!49349)))

(declare-fun b!7461251 () Bool)

(declare-fun tp!2162479 () Bool)

(assert (=> b!7461251 (= e!4452736 tp!2162479)))

(declare-fun b!7461252 () Bool)

(declare-fun tp!2162482 () Bool)

(declare-fun tp!2162483 () Bool)

(assert (=> b!7461252 (= e!4452736 (and tp!2162482 tp!2162483))))

(assert (=> b!7460852 (= tp!2162337 e!4452736)))

(declare-fun b!7461250 () Bool)

(declare-fun tp!2162480 () Bool)

(declare-fun tp!2162481 () Bool)

(assert (=> b!7461250 (= e!4452736 (and tp!2162480 tp!2162481))))

(assert (= (and b!7460852 (is-ElementMatch!19530 (regTwo!39573 r1!5845))) b!7461249))

(assert (= (and b!7460852 (is-Concat!28375 (regTwo!39573 r1!5845))) b!7461250))

(assert (= (and b!7460852 (is-Star!19530 (regTwo!39573 r1!5845))) b!7461251))

(assert (= (and b!7460852 (is-Union!19530 (regTwo!39573 r1!5845))) b!7461252))

(push 1)

(assert (not d!2298119))

(assert (not b!7461223))

(assert (not bm!685403))

(assert (not b!7461150))

(assert (not b!7461016))

(assert (not b!7461246))

(assert (not bm!685407))

(assert (not b!7461252))

(assert (not b!7460998))

(assert (not b!7461189))

(assert (not b!7461205))

(assert (not b!7461166))

(assert (not b!7461076))

(assert (not b!7461007))

(assert (not d!2298121))

(assert (not b!7461239))

(assert (not b!7461153))

(assert (not d!2298091))

(assert (not b!7461135))

(assert (not b!7461158))

(assert (not bm!685406))

(assert (not bm!685389))

(assert (not b!7461236))

(assert (not b!7461149))

(assert (not b!7461159))

(assert (not b!7461213))

(assert (not b!7461203))

(assert (not bm!685402))

(assert (not d!2298089))

(assert (not b!7461187))

(assert (not b!7461251))

(assert (not b!7461215))

(assert (not b!7461242))

(assert (not b!7460966))

(assert (not b!7461247))

(assert (not b!7461186))

(assert (not b!7461250))

(assert (not bm!685391))

(assert (not b!7461198))

(assert (not b!7461194))

(assert (not bm!685404))

(assert (not b!7461244))

(assert (not b!7461210))

(assert (not b!7461221))

(assert (not d!2298097))

(assert tp_is_empty!49349)

(assert (not b!7461195))

(assert (not b!7461139))

(assert (not bm!685397))

(assert (not bm!685392))

(assert (not b!7460970))

(assert (not b!7460967))

(assert (not b!7461154))

(assert (not b!7461193))

(assert (not b!7461209))

(assert (not b!7461077))

(assert (not b!7461201))

(assert (not b!7461081))

(assert (not b!7461190))

(assert (not d!2298085))

(assert (not b!7461243))

(assert (not b!7460965))

(assert (not d!2298105))

(assert (not bm!685386))

(assert (not b!7461146))

(assert (not d!2298093))

(assert (not b!7461238))

(assert (not b!7460969))

(assert (not b!7461202))

(assert (not b!7461128))

(assert (not b!7461206))

(assert (not b!7461225))

(assert (not b!7461248))

(assert (not b!7461082))

(assert (not b!7461072))

(assert (not bm!685394))

(assert (not b!7461217))

(assert (not b!7461207))

(assert (not bm!685409))

(assert (not b!7461199))

(assert (not b!7461211))

(assert (not b!7461227))

(assert (not b!7461214))

(assert (not bm!685405))

(assert (not b!7461191))

(assert (not b!7461218))

(assert (not b!7461219))

(assert (not b!7461240))

(assert (not bm!685388))

(assert (not b!7461185))

(assert (not d!2298083))

(assert (not b!7461222))

(assert (not b!7461226))

(assert (not b!7460962))

(assert (not b!7461197))

(assert (not b!7461073))

(assert (not d!2298117))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

