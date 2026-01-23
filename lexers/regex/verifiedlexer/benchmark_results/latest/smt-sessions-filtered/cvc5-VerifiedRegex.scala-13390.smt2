; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!725312 () Bool)

(assert start!725312)

(declare-fun b!7493501 () Bool)

(assert (=> b!7493501 true))

(assert (=> b!7493501 true))

(assert (=> b!7493501 true))

(declare-fun lambda!464275 () Int)

(declare-fun lambda!464274 () Int)

(assert (=> b!7493501 (not (= lambda!464275 lambda!464274))))

(assert (=> b!7493501 true))

(assert (=> b!7493501 true))

(assert (=> b!7493501 true))

(declare-fun b!7493487 () Bool)

(declare-fun e!4468219 () Bool)

(declare-fun tp!2175193 () Bool)

(declare-fun tp!2175188 () Bool)

(assert (=> b!7493487 (= e!4468219 (and tp!2175193 tp!2175188))))

(declare-fun b!7493488 () Bool)

(declare-fun e!4468221 () Bool)

(declare-fun tp!2175194 () Bool)

(declare-fun tp!2175185 () Bool)

(assert (=> b!7493488 (= e!4468221 (and tp!2175194 tp!2175185))))

(declare-fun b!7493489 () Bool)

(declare-fun tp!2175191 () Bool)

(declare-fun tp!2175189 () Bool)

(assert (=> b!7493489 (= e!4468219 (and tp!2175191 tp!2175189))))

(declare-fun b!7493490 () Bool)

(declare-fun tp!2175192 () Bool)

(assert (=> b!7493490 (= e!4468221 tp!2175192)))

(declare-fun b!7493491 () Bool)

(declare-fun tp_is_empty!49573 () Bool)

(assert (=> b!7493491 (= e!4468221 tp_is_empty!49573)))

(declare-fun b!7493492 () Bool)

(declare-fun res!3005853 () Bool)

(declare-fun e!4468218 () Bool)

(assert (=> b!7493492 (=> (not res!3005853) (not e!4468218))))

(declare-datatypes ((C!39558 0))(
  ( (C!39559 (val!30177 Int)) )
))
(declare-datatypes ((Regex!19642 0))(
  ( (ElementMatch!19642 (c!1383579 C!39558)) (Concat!28487 (regOne!39796 Regex!19642) (regTwo!39796 Regex!19642)) (EmptyExpr!19642) (Star!19642 (reg!19971 Regex!19642)) (EmptyLang!19642) (Union!19642 (regOne!39797 Regex!19642) (regTwo!39797 Regex!19642)) )
))
(declare-fun rTail!78 () Regex!19642)

(declare-fun validRegex!10156 (Regex!19642) Bool)

(assert (=> b!7493492 (= res!3005853 (validRegex!10156 rTail!78))))

(declare-fun b!7493493 () Bool)

(declare-fun e!4468217 () Bool)

(assert (=> b!7493493 (= e!4468218 (not e!4468217))))

(declare-fun res!3005851 () Bool)

(assert (=> b!7493493 (=> res!3005851 e!4468217)))

(declare-fun lt!2630045 () Bool)

(assert (=> b!7493493 (= res!3005851 lt!2630045)))

(declare-fun lt!2630051 () Bool)

(declare-fun lt!2630047 () Regex!19642)

(declare-datatypes ((List!72356 0))(
  ( (Nil!72232) (Cons!72232 (h!78680 C!39558) (t!386925 List!72356)) )
))
(declare-fun s!13591 () List!72356)

(declare-fun matchRSpec!4319 (Regex!19642 List!72356) Bool)

(assert (=> b!7493493 (= lt!2630051 (matchRSpec!4319 lt!2630047 s!13591))))

(declare-fun matchR!9404 (Regex!19642 List!72356) Bool)

(assert (=> b!7493493 (= lt!2630051 (matchR!9404 lt!2630047 s!13591))))

(declare-datatypes ((Unit!166115 0))(
  ( (Unit!166116) )
))
(declare-fun lt!2630052 () Unit!166115)

(declare-fun mainMatchTheorem!4313 (Regex!19642 List!72356) Unit!166115)

(assert (=> b!7493493 (= lt!2630052 (mainMatchTheorem!4313 lt!2630047 s!13591))))

(declare-fun lt!2630053 () Regex!19642)

(assert (=> b!7493493 (= lt!2630045 (matchRSpec!4319 lt!2630053 s!13591))))

(assert (=> b!7493493 (= lt!2630045 (matchR!9404 lt!2630053 s!13591))))

(declare-fun lt!2630044 () Unit!166115)

(assert (=> b!7493493 (= lt!2630044 (mainMatchTheorem!4313 lt!2630053 s!13591))))

(declare-fun r2!5783 () Regex!19642)

(declare-fun lt!2630046 () Regex!19642)

(assert (=> b!7493493 (= lt!2630047 (Union!19642 lt!2630046 (Concat!28487 r2!5783 rTail!78)))))

(declare-fun r1!5845 () Regex!19642)

(assert (=> b!7493493 (= lt!2630046 (Concat!28487 r1!5845 rTail!78))))

(declare-fun lt!2630048 () Regex!19642)

(assert (=> b!7493493 (= lt!2630053 (Concat!28487 lt!2630048 rTail!78))))

(assert (=> b!7493493 (= lt!2630048 (Union!19642 r1!5845 r2!5783))))

(declare-fun b!7493494 () Bool)

(declare-fun e!4468216 () Bool)

(declare-fun tp!2175184 () Bool)

(declare-fun tp!2175187 () Bool)

(assert (=> b!7493494 (= e!4468216 (and tp!2175184 tp!2175187))))

(declare-fun b!7493495 () Bool)

(declare-fun e!4468220 () Bool)

(assert (=> b!7493495 (= e!4468220 (validRegex!10156 lt!2630046))))

(declare-fun b!7493496 () Bool)

(declare-fun e!4468215 () Bool)

(declare-fun tp!2175197 () Bool)

(assert (=> b!7493496 (= e!4468215 (and tp_is_empty!49573 tp!2175197))))

(declare-fun b!7493486 () Bool)

(declare-fun tp!2175195 () Bool)

(assert (=> b!7493486 (= e!4468216 tp!2175195)))

(declare-fun res!3005850 () Bool)

(assert (=> start!725312 (=> (not res!3005850) (not e!4468218))))

(assert (=> start!725312 (= res!3005850 (validRegex!10156 r1!5845))))

(assert (=> start!725312 e!4468218))

(assert (=> start!725312 e!4468221))

(assert (=> start!725312 e!4468216))

(assert (=> start!725312 e!4468219))

(assert (=> start!725312 e!4468215))

(declare-fun b!7493497 () Bool)

(assert (=> b!7493497 (= e!4468216 tp_is_empty!49573)))

(declare-fun b!7493498 () Bool)

(declare-fun tp!2175186 () Bool)

(assert (=> b!7493498 (= e!4468219 tp!2175186)))

(declare-fun b!7493499 () Bool)

(declare-fun res!3005849 () Bool)

(assert (=> b!7493499 (=> (not res!3005849) (not e!4468218))))

(assert (=> b!7493499 (= res!3005849 (validRegex!10156 r2!5783))))

(declare-fun b!7493500 () Bool)

(assert (=> b!7493500 (= e!4468219 tp_is_empty!49573)))

(assert (=> b!7493501 (= e!4468217 e!4468220)))

(declare-fun res!3005852 () Bool)

(assert (=> b!7493501 (=> res!3005852 e!4468220)))

(declare-fun lt!2630049 () Bool)

(assert (=> b!7493501 (= res!3005852 (or lt!2630049 (not lt!2630051)))))

(declare-fun Exists!4259 (Int) Bool)

(assert (=> b!7493501 (= (Exists!4259 lambda!464274) (Exists!4259 lambda!464275))))

(declare-fun lt!2630054 () Unit!166115)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2583 (Regex!19642 Regex!19642 List!72356) Unit!166115)

(assert (=> b!7493501 (= lt!2630054 (lemmaExistCutMatchRandMatchRSpecEquivalent!2583 lt!2630048 rTail!78 s!13591))))

(assert (=> b!7493501 (= lt!2630049 (Exists!4259 lambda!464274))))

(declare-datatypes ((tuple2!68718 0))(
  ( (tuple2!68719 (_1!37662 List!72356) (_2!37662 List!72356)) )
))
(declare-datatypes ((Option!17191 0))(
  ( (None!17190) (Some!17190 (v!54319 tuple2!68718)) )
))
(declare-fun isDefined!13880 (Option!17191) Bool)

(declare-fun findConcatSeparation!3313 (Regex!19642 Regex!19642 List!72356 List!72356 List!72356) Option!17191)

(assert (=> b!7493501 (= lt!2630049 (isDefined!13880 (findConcatSeparation!3313 lt!2630048 rTail!78 Nil!72232 s!13591 s!13591)))))

(declare-fun lt!2630050 () Unit!166115)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3071 (Regex!19642 Regex!19642 List!72356) Unit!166115)

(assert (=> b!7493501 (= lt!2630050 (lemmaFindConcatSeparationEquivalentToExists!3071 lt!2630048 rTail!78 s!13591))))

(declare-fun b!7493502 () Bool)

(declare-fun tp!2175182 () Bool)

(declare-fun tp!2175190 () Bool)

(assert (=> b!7493502 (= e!4468221 (and tp!2175182 tp!2175190))))

(declare-fun b!7493503 () Bool)

(declare-fun tp!2175196 () Bool)

(declare-fun tp!2175183 () Bool)

(assert (=> b!7493503 (= e!4468216 (and tp!2175196 tp!2175183))))

(assert (= (and start!725312 res!3005850) b!7493499))

(assert (= (and b!7493499 res!3005849) b!7493492))

(assert (= (and b!7493492 res!3005853) b!7493493))

(assert (= (and b!7493493 (not res!3005851)) b!7493501))

(assert (= (and b!7493501 (not res!3005852)) b!7493495))

(assert (= (and start!725312 (is-ElementMatch!19642 r1!5845)) b!7493491))

(assert (= (and start!725312 (is-Concat!28487 r1!5845)) b!7493502))

(assert (= (and start!725312 (is-Star!19642 r1!5845)) b!7493490))

(assert (= (and start!725312 (is-Union!19642 r1!5845)) b!7493488))

(assert (= (and start!725312 (is-ElementMatch!19642 r2!5783)) b!7493497))

(assert (= (and start!725312 (is-Concat!28487 r2!5783)) b!7493503))

(assert (= (and start!725312 (is-Star!19642 r2!5783)) b!7493486))

(assert (= (and start!725312 (is-Union!19642 r2!5783)) b!7493494))

(assert (= (and start!725312 (is-ElementMatch!19642 rTail!78)) b!7493500))

(assert (= (and start!725312 (is-Concat!28487 rTail!78)) b!7493489))

(assert (= (and start!725312 (is-Star!19642 rTail!78)) b!7493498))

(assert (= (and start!725312 (is-Union!19642 rTail!78)) b!7493487))

(assert (= (and start!725312 (is-Cons!72232 s!13591)) b!7493496))

(declare-fun m!8078608 () Bool)

(assert (=> b!7493492 m!8078608))

(declare-fun m!8078610 () Bool)

(assert (=> b!7493495 m!8078610))

(declare-fun m!8078612 () Bool)

(assert (=> b!7493501 m!8078612))

(declare-fun m!8078614 () Bool)

(assert (=> b!7493501 m!8078614))

(declare-fun m!8078616 () Bool)

(assert (=> b!7493501 m!8078616))

(declare-fun m!8078618 () Bool)

(assert (=> b!7493501 m!8078618))

(declare-fun m!8078620 () Bool)

(assert (=> b!7493501 m!8078620))

(declare-fun m!8078622 () Bool)

(assert (=> b!7493501 m!8078622))

(assert (=> b!7493501 m!8078612))

(assert (=> b!7493501 m!8078616))

(declare-fun m!8078624 () Bool)

(assert (=> b!7493499 m!8078624))

(declare-fun m!8078626 () Bool)

(assert (=> b!7493493 m!8078626))

(declare-fun m!8078628 () Bool)

(assert (=> b!7493493 m!8078628))

(declare-fun m!8078630 () Bool)

(assert (=> b!7493493 m!8078630))

(declare-fun m!8078632 () Bool)

(assert (=> b!7493493 m!8078632))

(declare-fun m!8078634 () Bool)

(assert (=> b!7493493 m!8078634))

(declare-fun m!8078636 () Bool)

(assert (=> b!7493493 m!8078636))

(declare-fun m!8078638 () Bool)

(assert (=> start!725312 m!8078638))

(push 1)

(assert (not b!7493488))

(assert (not b!7493494))

(assert (not b!7493503))

(assert (not b!7493486))

(assert (not b!7493492))

(assert (not b!7493489))

(assert (not start!725312))

(assert (not b!7493487))

(assert tp_is_empty!49573)

(assert (not b!7493495))

(assert (not b!7493501))

(assert (not b!7493493))

(assert (not b!7493490))

(assert (not b!7493502))

(assert (not b!7493496))

(assert (not b!7493499))

(assert (not b!7493498))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2301503 () Bool)

(assert (=> d!2301503 (= (matchR!9404 lt!2630053 s!13591) (matchRSpec!4319 lt!2630053 s!13591))))

(declare-fun lt!2630090 () Unit!166115)

(declare-fun choose!57920 (Regex!19642 List!72356) Unit!166115)

(assert (=> d!2301503 (= lt!2630090 (choose!57920 lt!2630053 s!13591))))

(assert (=> d!2301503 (validRegex!10156 lt!2630053)))

(assert (=> d!2301503 (= (mainMatchTheorem!4313 lt!2630053 s!13591) lt!2630090)))

(declare-fun bs!1935452 () Bool)

(assert (= bs!1935452 d!2301503))

(assert (=> bs!1935452 m!8078636))

(assert (=> bs!1935452 m!8078626))

(declare-fun m!8078672 () Bool)

(assert (=> bs!1935452 m!8078672))

(declare-fun m!8078674 () Bool)

(assert (=> bs!1935452 m!8078674))

(assert (=> b!7493493 d!2301503))

(declare-fun bs!1935453 () Bool)

(declare-fun b!7493616 () Bool)

(assert (= bs!1935453 (and b!7493616 b!7493501)))

(declare-fun lambda!464288 () Int)

(assert (=> bs!1935453 (not (= lambda!464288 lambda!464274))))

(assert (=> bs!1935453 (not (= lambda!464288 lambda!464275))))

(assert (=> b!7493616 true))

(assert (=> b!7493616 true))

(declare-fun bs!1935454 () Bool)

(declare-fun b!7493612 () Bool)

(assert (= bs!1935454 (and b!7493612 b!7493501)))

(declare-fun lambda!464289 () Int)

(assert (=> bs!1935454 (not (= lambda!464289 lambda!464274))))

(assert (=> bs!1935454 (= (and (= (regOne!39796 lt!2630047) lt!2630048) (= (regTwo!39796 lt!2630047) rTail!78)) (= lambda!464289 lambda!464275))))

(declare-fun bs!1935455 () Bool)

(assert (= bs!1935455 (and b!7493612 b!7493616)))

(assert (=> bs!1935455 (not (= lambda!464289 lambda!464288))))

(assert (=> b!7493612 true))

(assert (=> b!7493612 true))

(declare-fun b!7493610 () Bool)

(declare-fun e!4468272 () Bool)

(assert (=> b!7493610 (= e!4468272 (matchRSpec!4319 (regTwo!39797 lt!2630047) s!13591))))

(declare-fun b!7493611 () Bool)

(declare-fun e!4468271 () Bool)

(assert (=> b!7493611 (= e!4468271 (= s!13591 (Cons!72232 (c!1383579 lt!2630047) Nil!72232)))))

(declare-fun e!4468267 () Bool)

(declare-fun call!687916 () Bool)

(assert (=> b!7493612 (= e!4468267 call!687916)))

(declare-fun b!7493613 () Bool)

(declare-fun res!3005898 () Bool)

(declare-fun e!4468269 () Bool)

(assert (=> b!7493613 (=> res!3005898 e!4468269)))

(declare-fun call!687915 () Bool)

(assert (=> b!7493613 (= res!3005898 call!687915)))

(assert (=> b!7493613 (= e!4468267 e!4468269)))

(declare-fun bm!687910 () Bool)

(declare-fun isEmpty!41261 (List!72356) Bool)

(assert (=> bm!687910 (= call!687915 (isEmpty!41261 s!13591))))

(declare-fun b!7493615 () Bool)

(declare-fun e!4468273 () Bool)

(assert (=> b!7493615 (= e!4468273 e!4468267)))

(declare-fun c!1383591 () Bool)

(assert (=> b!7493615 (= c!1383591 (is-Star!19642 lt!2630047))))

(assert (=> b!7493616 (= e!4468269 call!687916)))

(declare-fun b!7493617 () Bool)

(assert (=> b!7493617 (= e!4468273 e!4468272)))

(declare-fun res!3005899 () Bool)

(assert (=> b!7493617 (= res!3005899 (matchRSpec!4319 (regOne!39797 lt!2630047) s!13591))))

(assert (=> b!7493617 (=> res!3005899 e!4468272)))

(declare-fun b!7493618 () Bool)

(declare-fun e!4468268 () Bool)

(assert (=> b!7493618 (= e!4468268 call!687915)))

(declare-fun b!7493614 () Bool)

(declare-fun e!4468270 () Bool)

(assert (=> b!7493614 (= e!4468268 e!4468270)))

(declare-fun res!3005897 () Bool)

(assert (=> b!7493614 (= res!3005897 (not (is-EmptyLang!19642 lt!2630047)))))

(assert (=> b!7493614 (=> (not res!3005897) (not e!4468270))))

(declare-fun d!2301505 () Bool)

(declare-fun c!1383590 () Bool)

(assert (=> d!2301505 (= c!1383590 (is-EmptyExpr!19642 lt!2630047))))

(assert (=> d!2301505 (= (matchRSpec!4319 lt!2630047 s!13591) e!4468268)))

(declare-fun b!7493619 () Bool)

(declare-fun c!1383592 () Bool)

(assert (=> b!7493619 (= c!1383592 (is-Union!19642 lt!2630047))))

(assert (=> b!7493619 (= e!4468271 e!4468273)))

(declare-fun bm!687911 () Bool)

(assert (=> bm!687911 (= call!687916 (Exists!4259 (ite c!1383591 lambda!464288 lambda!464289)))))

(declare-fun b!7493620 () Bool)

(declare-fun c!1383589 () Bool)

(assert (=> b!7493620 (= c!1383589 (is-ElementMatch!19642 lt!2630047))))

(assert (=> b!7493620 (= e!4468270 e!4468271)))

(assert (= (and d!2301505 c!1383590) b!7493618))

(assert (= (and d!2301505 (not c!1383590)) b!7493614))

(assert (= (and b!7493614 res!3005897) b!7493620))

(assert (= (and b!7493620 c!1383589) b!7493611))

(assert (= (and b!7493620 (not c!1383589)) b!7493619))

(assert (= (and b!7493619 c!1383592) b!7493617))

(assert (= (and b!7493619 (not c!1383592)) b!7493615))

(assert (= (and b!7493617 (not res!3005899)) b!7493610))

(assert (= (and b!7493615 c!1383591) b!7493613))

(assert (= (and b!7493615 (not c!1383591)) b!7493612))

(assert (= (and b!7493613 (not res!3005898)) b!7493616))

(assert (= (or b!7493616 b!7493612) bm!687911))

(assert (= (or b!7493618 b!7493613) bm!687910))

(declare-fun m!8078676 () Bool)

(assert (=> b!7493610 m!8078676))

(declare-fun m!8078678 () Bool)

(assert (=> bm!687910 m!8078678))

(declare-fun m!8078680 () Bool)

(assert (=> b!7493617 m!8078680))

(declare-fun m!8078682 () Bool)

(assert (=> bm!687911 m!8078682))

(assert (=> b!7493493 d!2301505))

(declare-fun d!2301509 () Bool)

(assert (=> d!2301509 (= (matchR!9404 lt!2630047 s!13591) (matchRSpec!4319 lt!2630047 s!13591))))

(declare-fun lt!2630091 () Unit!166115)

(assert (=> d!2301509 (= lt!2630091 (choose!57920 lt!2630047 s!13591))))

(assert (=> d!2301509 (validRegex!10156 lt!2630047)))

(assert (=> d!2301509 (= (mainMatchTheorem!4313 lt!2630047 s!13591) lt!2630091)))

(declare-fun bs!1935456 () Bool)

(assert (= bs!1935456 d!2301509))

(assert (=> bs!1935456 m!8078628))

(assert (=> bs!1935456 m!8078634))

(declare-fun m!8078684 () Bool)

(assert (=> bs!1935456 m!8078684))

(declare-fun m!8078686 () Bool)

(assert (=> bs!1935456 m!8078686))

(assert (=> b!7493493 d!2301509))

(declare-fun bs!1935457 () Bool)

(declare-fun b!7493645 () Bool)

(assert (= bs!1935457 (and b!7493645 b!7493501)))

(declare-fun lambda!464290 () Int)

(assert (=> bs!1935457 (not (= lambda!464290 lambda!464274))))

(assert (=> bs!1935457 (not (= lambda!464290 lambda!464275))))

(declare-fun bs!1935458 () Bool)

(assert (= bs!1935458 (and b!7493645 b!7493616)))

(assert (=> bs!1935458 (= (and (= (reg!19971 lt!2630053) (reg!19971 lt!2630047)) (= lt!2630053 lt!2630047)) (= lambda!464290 lambda!464288))))

(declare-fun bs!1935459 () Bool)

(assert (= bs!1935459 (and b!7493645 b!7493612)))

(assert (=> bs!1935459 (not (= lambda!464290 lambda!464289))))

(assert (=> b!7493645 true))

(assert (=> b!7493645 true))

(declare-fun bs!1935460 () Bool)

(declare-fun b!7493641 () Bool)

(assert (= bs!1935460 (and b!7493641 b!7493501)))

(declare-fun lambda!464291 () Int)

(assert (=> bs!1935460 (= (and (= (regOne!39796 lt!2630053) lt!2630048) (= (regTwo!39796 lt!2630053) rTail!78)) (= lambda!464291 lambda!464275))))

(declare-fun bs!1935461 () Bool)

(assert (= bs!1935461 (and b!7493641 b!7493645)))

(assert (=> bs!1935461 (not (= lambda!464291 lambda!464290))))

(assert (=> bs!1935460 (not (= lambda!464291 lambda!464274))))

(declare-fun bs!1935462 () Bool)

(assert (= bs!1935462 (and b!7493641 b!7493612)))

(assert (=> bs!1935462 (= (and (= (regOne!39796 lt!2630053) (regOne!39796 lt!2630047)) (= (regTwo!39796 lt!2630053) (regTwo!39796 lt!2630047))) (= lambda!464291 lambda!464289))))

(declare-fun bs!1935463 () Bool)

(assert (= bs!1935463 (and b!7493641 b!7493616)))

(assert (=> bs!1935463 (not (= lambda!464291 lambda!464288))))

(assert (=> b!7493641 true))

(assert (=> b!7493641 true))

(declare-fun b!7493639 () Bool)

(declare-fun e!4468293 () Bool)

(assert (=> b!7493639 (= e!4468293 (matchRSpec!4319 (regTwo!39797 lt!2630053) s!13591))))

(declare-fun b!7493640 () Bool)

(declare-fun e!4468292 () Bool)

(assert (=> b!7493640 (= e!4468292 (= s!13591 (Cons!72232 (c!1383579 lt!2630053) Nil!72232)))))

(declare-fun e!4468288 () Bool)

(declare-fun call!687918 () Bool)

(assert (=> b!7493641 (= e!4468288 call!687918)))

(declare-fun b!7493642 () Bool)

(declare-fun res!3005911 () Bool)

(declare-fun e!4468290 () Bool)

(assert (=> b!7493642 (=> res!3005911 e!4468290)))

(declare-fun call!687917 () Bool)

(assert (=> b!7493642 (= res!3005911 call!687917)))

(assert (=> b!7493642 (= e!4468288 e!4468290)))

(declare-fun bm!687912 () Bool)

(assert (=> bm!687912 (= call!687917 (isEmpty!41261 s!13591))))

(declare-fun b!7493644 () Bool)

(declare-fun e!4468294 () Bool)

(assert (=> b!7493644 (= e!4468294 e!4468288)))

(declare-fun c!1383599 () Bool)

(assert (=> b!7493644 (= c!1383599 (is-Star!19642 lt!2630053))))

(assert (=> b!7493645 (= e!4468290 call!687918)))

(declare-fun b!7493646 () Bool)

(assert (=> b!7493646 (= e!4468294 e!4468293)))

(declare-fun res!3005912 () Bool)

(assert (=> b!7493646 (= res!3005912 (matchRSpec!4319 (regOne!39797 lt!2630053) s!13591))))

(assert (=> b!7493646 (=> res!3005912 e!4468293)))

(declare-fun b!7493647 () Bool)

(declare-fun e!4468289 () Bool)

(assert (=> b!7493647 (= e!4468289 call!687917)))

(declare-fun b!7493643 () Bool)

(declare-fun e!4468291 () Bool)

(assert (=> b!7493643 (= e!4468289 e!4468291)))

(declare-fun res!3005910 () Bool)

(assert (=> b!7493643 (= res!3005910 (not (is-EmptyLang!19642 lt!2630053)))))

(assert (=> b!7493643 (=> (not res!3005910) (not e!4468291))))

(declare-fun d!2301511 () Bool)

(declare-fun c!1383598 () Bool)

(assert (=> d!2301511 (= c!1383598 (is-EmptyExpr!19642 lt!2630053))))

(assert (=> d!2301511 (= (matchRSpec!4319 lt!2630053 s!13591) e!4468289)))

(declare-fun b!7493648 () Bool)

(declare-fun c!1383600 () Bool)

(assert (=> b!7493648 (= c!1383600 (is-Union!19642 lt!2630053))))

(assert (=> b!7493648 (= e!4468292 e!4468294)))

(declare-fun bm!687913 () Bool)

(assert (=> bm!687913 (= call!687918 (Exists!4259 (ite c!1383599 lambda!464290 lambda!464291)))))

(declare-fun b!7493649 () Bool)

(declare-fun c!1383597 () Bool)

(assert (=> b!7493649 (= c!1383597 (is-ElementMatch!19642 lt!2630053))))

(assert (=> b!7493649 (= e!4468291 e!4468292)))

(assert (= (and d!2301511 c!1383598) b!7493647))

(assert (= (and d!2301511 (not c!1383598)) b!7493643))

(assert (= (and b!7493643 res!3005910) b!7493649))

(assert (= (and b!7493649 c!1383597) b!7493640))

(assert (= (and b!7493649 (not c!1383597)) b!7493648))

(assert (= (and b!7493648 c!1383600) b!7493646))

(assert (= (and b!7493648 (not c!1383600)) b!7493644))

(assert (= (and b!7493646 (not res!3005912)) b!7493639))

(assert (= (and b!7493644 c!1383599) b!7493642))

(assert (= (and b!7493644 (not c!1383599)) b!7493641))

(assert (= (and b!7493642 (not res!3005911)) b!7493645))

(assert (= (or b!7493645 b!7493641) bm!687913))

(assert (= (or b!7493647 b!7493642) bm!687912))

(declare-fun m!8078688 () Bool)

(assert (=> b!7493639 m!8078688))

(assert (=> bm!687912 m!8078678))

(declare-fun m!8078690 () Bool)

(assert (=> b!7493646 m!8078690))

(declare-fun m!8078692 () Bool)

(assert (=> bm!687913 m!8078692))

(assert (=> b!7493493 d!2301511))

(declare-fun b!7493696 () Bool)

(declare-fun res!3005939 () Bool)

(declare-fun e!4468327 () Bool)

(assert (=> b!7493696 (=> res!3005939 e!4468327)))

(assert (=> b!7493696 (= res!3005939 (not (is-ElementMatch!19642 lt!2630053)))))

(declare-fun e!4468325 () Bool)

(assert (=> b!7493696 (= e!4468325 e!4468327)))

(declare-fun b!7493697 () Bool)

(declare-fun res!3005940 () Bool)

(declare-fun e!4468323 () Bool)

(assert (=> b!7493697 (=> (not res!3005940) (not e!4468323))))

(declare-fun tail!14944 (List!72356) List!72356)

(assert (=> b!7493697 (= res!3005940 (isEmpty!41261 (tail!14944 s!13591)))))

(declare-fun b!7493698 () Bool)

(declare-fun res!3005944 () Bool)

(assert (=> b!7493698 (=> (not res!3005944) (not e!4468323))))

(declare-fun call!687933 () Bool)

(assert (=> b!7493698 (= res!3005944 (not call!687933))))

(declare-fun b!7493699 () Bool)

(declare-fun e!4468326 () Bool)

(declare-fun nullable!8578 (Regex!19642) Bool)

(assert (=> b!7493699 (= e!4468326 (nullable!8578 lt!2630053))))

(declare-fun b!7493700 () Bool)

(declare-fun e!4468324 () Bool)

(declare-fun lt!2630094 () Bool)

(assert (=> b!7493700 (= e!4468324 (= lt!2630094 call!687933))))

(declare-fun d!2301513 () Bool)

(assert (=> d!2301513 e!4468324))

(declare-fun c!1383611 () Bool)

(assert (=> d!2301513 (= c!1383611 (is-EmptyExpr!19642 lt!2630053))))

(assert (=> d!2301513 (= lt!2630094 e!4468326)))

(declare-fun c!1383613 () Bool)

(assert (=> d!2301513 (= c!1383613 (isEmpty!41261 s!13591))))

(assert (=> d!2301513 (validRegex!10156 lt!2630053)))

(assert (=> d!2301513 (= (matchR!9404 lt!2630053 s!13591) lt!2630094)))

(declare-fun b!7493701 () Bool)

(assert (=> b!7493701 (= e!4468325 (not lt!2630094))))

(declare-fun b!7493702 () Bool)

(assert (=> b!7493702 (= e!4468324 e!4468325)))

(declare-fun c!1383612 () Bool)

(assert (=> b!7493702 (= c!1383612 (is-EmptyLang!19642 lt!2630053))))

(declare-fun b!7493703 () Bool)

(declare-fun e!4468329 () Bool)

(declare-fun head!15375 (List!72356) C!39558)

(assert (=> b!7493703 (= e!4468329 (not (= (head!15375 s!13591) (c!1383579 lt!2630053))))))

(declare-fun b!7493704 () Bool)

(declare-fun res!3005946 () Bool)

(assert (=> b!7493704 (=> res!3005946 e!4468327)))

(assert (=> b!7493704 (= res!3005946 e!4468323)))

(declare-fun res!3005945 () Bool)

(assert (=> b!7493704 (=> (not res!3005945) (not e!4468323))))

(assert (=> b!7493704 (= res!3005945 lt!2630094)))

(declare-fun b!7493705 () Bool)

(declare-fun e!4468328 () Bool)

(assert (=> b!7493705 (= e!4468327 e!4468328)))

(declare-fun res!3005942 () Bool)

(assert (=> b!7493705 (=> (not res!3005942) (not e!4468328))))

(assert (=> b!7493705 (= res!3005942 (not lt!2630094))))

(declare-fun b!7493706 () Bool)

(assert (=> b!7493706 (= e!4468323 (= (head!15375 s!13591) (c!1383579 lt!2630053)))))

(declare-fun bm!687928 () Bool)

(assert (=> bm!687928 (= call!687933 (isEmpty!41261 s!13591))))

(declare-fun b!7493707 () Bool)

(assert (=> b!7493707 (= e!4468328 e!4468329)))

(declare-fun res!3005943 () Bool)

(assert (=> b!7493707 (=> res!3005943 e!4468329)))

(assert (=> b!7493707 (= res!3005943 call!687933)))

(declare-fun b!7493708 () Bool)

(declare-fun res!3005941 () Bool)

(assert (=> b!7493708 (=> res!3005941 e!4468329)))

(assert (=> b!7493708 (= res!3005941 (not (isEmpty!41261 (tail!14944 s!13591))))))

(declare-fun b!7493709 () Bool)

(declare-fun derivativeStep!5635 (Regex!19642 C!39558) Regex!19642)

(assert (=> b!7493709 (= e!4468326 (matchR!9404 (derivativeStep!5635 lt!2630053 (head!15375 s!13591)) (tail!14944 s!13591)))))

(assert (= (and d!2301513 c!1383613) b!7493699))

(assert (= (and d!2301513 (not c!1383613)) b!7493709))

(assert (= (and d!2301513 c!1383611) b!7493700))

(assert (= (and d!2301513 (not c!1383611)) b!7493702))

(assert (= (and b!7493702 c!1383612) b!7493701))

(assert (= (and b!7493702 (not c!1383612)) b!7493696))

(assert (= (and b!7493696 (not res!3005939)) b!7493704))

(assert (= (and b!7493704 res!3005945) b!7493698))

(assert (= (and b!7493698 res!3005944) b!7493697))

(assert (= (and b!7493697 res!3005940) b!7493706))

(assert (= (and b!7493704 (not res!3005946)) b!7493705))

(assert (= (and b!7493705 res!3005942) b!7493707))

(assert (= (and b!7493707 (not res!3005943)) b!7493708))

(assert (= (and b!7493708 (not res!3005941)) b!7493703))

(assert (= (or b!7493700 b!7493698 b!7493707) bm!687928))

(assert (=> d!2301513 m!8078678))

(assert (=> d!2301513 m!8078674))

(declare-fun m!8078706 () Bool)

(assert (=> b!7493709 m!8078706))

(assert (=> b!7493709 m!8078706))

(declare-fun m!8078708 () Bool)

(assert (=> b!7493709 m!8078708))

(declare-fun m!8078710 () Bool)

(assert (=> b!7493709 m!8078710))

(assert (=> b!7493709 m!8078708))

(assert (=> b!7493709 m!8078710))

(declare-fun m!8078712 () Bool)

(assert (=> b!7493709 m!8078712))

(assert (=> b!7493697 m!8078710))

(assert (=> b!7493697 m!8078710))

(declare-fun m!8078714 () Bool)

(assert (=> b!7493697 m!8078714))

(assert (=> b!7493703 m!8078706))

(assert (=> b!7493708 m!8078710))

(assert (=> b!7493708 m!8078710))

(assert (=> b!7493708 m!8078714))

(assert (=> bm!687928 m!8078678))

(assert (=> b!7493706 m!8078706))

(declare-fun m!8078716 () Bool)

(assert (=> b!7493699 m!8078716))

(assert (=> b!7493493 d!2301513))

(declare-fun b!7493710 () Bool)

(declare-fun res!3005947 () Bool)

(declare-fun e!4468334 () Bool)

(assert (=> b!7493710 (=> res!3005947 e!4468334)))

(assert (=> b!7493710 (= res!3005947 (not (is-ElementMatch!19642 lt!2630047)))))

(declare-fun e!4468332 () Bool)

(assert (=> b!7493710 (= e!4468332 e!4468334)))

(declare-fun b!7493711 () Bool)

(declare-fun res!3005948 () Bool)

(declare-fun e!4468330 () Bool)

(assert (=> b!7493711 (=> (not res!3005948) (not e!4468330))))

(assert (=> b!7493711 (= res!3005948 (isEmpty!41261 (tail!14944 s!13591)))))

(declare-fun b!7493712 () Bool)

(declare-fun res!3005952 () Bool)

(assert (=> b!7493712 (=> (not res!3005952) (not e!4468330))))

(declare-fun call!687934 () Bool)

(assert (=> b!7493712 (= res!3005952 (not call!687934))))

(declare-fun b!7493713 () Bool)

(declare-fun e!4468333 () Bool)

(assert (=> b!7493713 (= e!4468333 (nullable!8578 lt!2630047))))

(declare-fun b!7493714 () Bool)

(declare-fun e!4468331 () Bool)

(declare-fun lt!2630095 () Bool)

(assert (=> b!7493714 (= e!4468331 (= lt!2630095 call!687934))))

(declare-fun d!2301519 () Bool)

(assert (=> d!2301519 e!4468331))

(declare-fun c!1383614 () Bool)

(assert (=> d!2301519 (= c!1383614 (is-EmptyExpr!19642 lt!2630047))))

(assert (=> d!2301519 (= lt!2630095 e!4468333)))

(declare-fun c!1383616 () Bool)

(assert (=> d!2301519 (= c!1383616 (isEmpty!41261 s!13591))))

(assert (=> d!2301519 (validRegex!10156 lt!2630047)))

(assert (=> d!2301519 (= (matchR!9404 lt!2630047 s!13591) lt!2630095)))

(declare-fun b!7493715 () Bool)

(assert (=> b!7493715 (= e!4468332 (not lt!2630095))))

(declare-fun b!7493716 () Bool)

(assert (=> b!7493716 (= e!4468331 e!4468332)))

(declare-fun c!1383615 () Bool)

(assert (=> b!7493716 (= c!1383615 (is-EmptyLang!19642 lt!2630047))))

(declare-fun b!7493717 () Bool)

(declare-fun e!4468336 () Bool)

(assert (=> b!7493717 (= e!4468336 (not (= (head!15375 s!13591) (c!1383579 lt!2630047))))))

(declare-fun b!7493718 () Bool)

(declare-fun res!3005954 () Bool)

(assert (=> b!7493718 (=> res!3005954 e!4468334)))

(assert (=> b!7493718 (= res!3005954 e!4468330)))

(declare-fun res!3005953 () Bool)

(assert (=> b!7493718 (=> (not res!3005953) (not e!4468330))))

(assert (=> b!7493718 (= res!3005953 lt!2630095)))

(declare-fun b!7493719 () Bool)

(declare-fun e!4468335 () Bool)

(assert (=> b!7493719 (= e!4468334 e!4468335)))

(declare-fun res!3005950 () Bool)

(assert (=> b!7493719 (=> (not res!3005950) (not e!4468335))))

(assert (=> b!7493719 (= res!3005950 (not lt!2630095))))

(declare-fun b!7493720 () Bool)

(assert (=> b!7493720 (= e!4468330 (= (head!15375 s!13591) (c!1383579 lt!2630047)))))

(declare-fun bm!687929 () Bool)

(assert (=> bm!687929 (= call!687934 (isEmpty!41261 s!13591))))

(declare-fun b!7493721 () Bool)

(assert (=> b!7493721 (= e!4468335 e!4468336)))

(declare-fun res!3005951 () Bool)

(assert (=> b!7493721 (=> res!3005951 e!4468336)))

(assert (=> b!7493721 (= res!3005951 call!687934)))

(declare-fun b!7493722 () Bool)

(declare-fun res!3005949 () Bool)

(assert (=> b!7493722 (=> res!3005949 e!4468336)))

(assert (=> b!7493722 (= res!3005949 (not (isEmpty!41261 (tail!14944 s!13591))))))

(declare-fun b!7493723 () Bool)

(assert (=> b!7493723 (= e!4468333 (matchR!9404 (derivativeStep!5635 lt!2630047 (head!15375 s!13591)) (tail!14944 s!13591)))))

(assert (= (and d!2301519 c!1383616) b!7493713))

(assert (= (and d!2301519 (not c!1383616)) b!7493723))

(assert (= (and d!2301519 c!1383614) b!7493714))

(assert (= (and d!2301519 (not c!1383614)) b!7493716))

(assert (= (and b!7493716 c!1383615) b!7493715))

(assert (= (and b!7493716 (not c!1383615)) b!7493710))

(assert (= (and b!7493710 (not res!3005947)) b!7493718))

(assert (= (and b!7493718 res!3005953) b!7493712))

(assert (= (and b!7493712 res!3005952) b!7493711))

(assert (= (and b!7493711 res!3005948) b!7493720))

(assert (= (and b!7493718 (not res!3005954)) b!7493719))

(assert (= (and b!7493719 res!3005950) b!7493721))

(assert (= (and b!7493721 (not res!3005951)) b!7493722))

(assert (= (and b!7493722 (not res!3005949)) b!7493717))

(assert (= (or b!7493714 b!7493712 b!7493721) bm!687929))

(assert (=> d!2301519 m!8078678))

(assert (=> d!2301519 m!8078686))

(assert (=> b!7493723 m!8078706))

(assert (=> b!7493723 m!8078706))

(declare-fun m!8078718 () Bool)

(assert (=> b!7493723 m!8078718))

(assert (=> b!7493723 m!8078710))

(assert (=> b!7493723 m!8078718))

(assert (=> b!7493723 m!8078710))

(declare-fun m!8078720 () Bool)

(assert (=> b!7493723 m!8078720))

(assert (=> b!7493711 m!8078710))

(assert (=> b!7493711 m!8078710))

(assert (=> b!7493711 m!8078714))

(assert (=> b!7493717 m!8078706))

(assert (=> b!7493722 m!8078710))

(assert (=> b!7493722 m!8078710))

(assert (=> b!7493722 m!8078714))

(assert (=> bm!687929 m!8078678))

(assert (=> b!7493720 m!8078706))

(declare-fun m!8078722 () Bool)

(assert (=> b!7493713 m!8078722))

(assert (=> b!7493493 d!2301519))

(declare-fun b!7493742 () Bool)

(declare-fun e!4468352 () Bool)

(declare-fun call!687942 () Bool)

(assert (=> b!7493742 (= e!4468352 call!687942)))

(declare-fun bm!687936 () Bool)

(declare-fun call!687941 () Bool)

(declare-fun call!687943 () Bool)

(assert (=> bm!687936 (= call!687941 call!687943)))

(declare-fun d!2301521 () Bool)

(declare-fun res!3005968 () Bool)

(declare-fun e!4468357 () Bool)

(assert (=> d!2301521 (=> res!3005968 e!4468357)))

(assert (=> d!2301521 (= res!3005968 (is-ElementMatch!19642 r1!5845))))

(assert (=> d!2301521 (= (validRegex!10156 r1!5845) e!4468357)))

(declare-fun b!7493743 () Bool)

(declare-fun e!4468353 () Bool)

(declare-fun e!4468355 () Bool)

(assert (=> b!7493743 (= e!4468353 e!4468355)))

(declare-fun res!3005966 () Bool)

(assert (=> b!7493743 (=> (not res!3005966) (not e!4468355))))

(assert (=> b!7493743 (= res!3005966 call!687941)))

(declare-fun b!7493744 () Bool)

(declare-fun e!4468351 () Bool)

(assert (=> b!7493744 (= e!4468357 e!4468351)))

(declare-fun c!1383622 () Bool)

(assert (=> b!7493744 (= c!1383622 (is-Star!19642 r1!5845))))

(declare-fun bm!687937 () Bool)

(declare-fun c!1383621 () Bool)

(assert (=> bm!687937 (= call!687943 (validRegex!10156 (ite c!1383622 (reg!19971 r1!5845) (ite c!1383621 (regOne!39797 r1!5845) (regOne!39796 r1!5845)))))))

(declare-fun b!7493745 () Bool)

(declare-fun e!4468356 () Bool)

(assert (=> b!7493745 (= e!4468351 e!4468356)))

(declare-fun res!3005969 () Bool)

(assert (=> b!7493745 (= res!3005969 (not (nullable!8578 (reg!19971 r1!5845))))))

(assert (=> b!7493745 (=> (not res!3005969) (not e!4468356))))

(declare-fun b!7493746 () Bool)

(declare-fun e!4468354 () Bool)

(assert (=> b!7493746 (= e!4468351 e!4468354)))

(assert (=> b!7493746 (= c!1383621 (is-Union!19642 r1!5845))))

(declare-fun b!7493747 () Bool)

(assert (=> b!7493747 (= e!4468356 call!687943)))

(declare-fun b!7493748 () Bool)

(declare-fun res!3005967 () Bool)

(assert (=> b!7493748 (=> res!3005967 e!4468353)))

(assert (=> b!7493748 (= res!3005967 (not (is-Concat!28487 r1!5845)))))

(assert (=> b!7493748 (= e!4468354 e!4468353)))

(declare-fun b!7493749 () Bool)

(declare-fun res!3005965 () Bool)

(assert (=> b!7493749 (=> (not res!3005965) (not e!4468352))))

(assert (=> b!7493749 (= res!3005965 call!687941)))

(assert (=> b!7493749 (= e!4468354 e!4468352)))

(declare-fun bm!687938 () Bool)

(assert (=> bm!687938 (= call!687942 (validRegex!10156 (ite c!1383621 (regTwo!39797 r1!5845) (regTwo!39796 r1!5845))))))

(declare-fun b!7493750 () Bool)

(assert (=> b!7493750 (= e!4468355 call!687942)))

(assert (= (and d!2301521 (not res!3005968)) b!7493744))

(assert (= (and b!7493744 c!1383622) b!7493745))

(assert (= (and b!7493744 (not c!1383622)) b!7493746))

(assert (= (and b!7493745 res!3005969) b!7493747))

(assert (= (and b!7493746 c!1383621) b!7493749))

(assert (= (and b!7493746 (not c!1383621)) b!7493748))

(assert (= (and b!7493749 res!3005965) b!7493742))

(assert (= (and b!7493748 (not res!3005967)) b!7493743))

(assert (= (and b!7493743 res!3005966) b!7493750))

(assert (= (or b!7493742 b!7493750) bm!687938))

(assert (= (or b!7493749 b!7493743) bm!687936))

(assert (= (or b!7493747 bm!687936) bm!687937))

(declare-fun m!8078724 () Bool)

(assert (=> bm!687937 m!8078724))

(declare-fun m!8078726 () Bool)

(assert (=> b!7493745 m!8078726))

(declare-fun m!8078728 () Bool)

(assert (=> bm!687938 m!8078728))

(assert (=> start!725312 d!2301521))

(declare-fun b!7493751 () Bool)

(declare-fun e!4468359 () Bool)

(declare-fun call!687945 () Bool)

(assert (=> b!7493751 (= e!4468359 call!687945)))

(declare-fun bm!687939 () Bool)

(declare-fun call!687944 () Bool)

(declare-fun call!687946 () Bool)

(assert (=> bm!687939 (= call!687944 call!687946)))

(declare-fun d!2301523 () Bool)

(declare-fun res!3005973 () Bool)

(declare-fun e!4468364 () Bool)

(assert (=> d!2301523 (=> res!3005973 e!4468364)))

(assert (=> d!2301523 (= res!3005973 (is-ElementMatch!19642 r2!5783))))

(assert (=> d!2301523 (= (validRegex!10156 r2!5783) e!4468364)))

(declare-fun b!7493752 () Bool)

(declare-fun e!4468360 () Bool)

(declare-fun e!4468362 () Bool)

(assert (=> b!7493752 (= e!4468360 e!4468362)))

(declare-fun res!3005971 () Bool)

(assert (=> b!7493752 (=> (not res!3005971) (not e!4468362))))

(assert (=> b!7493752 (= res!3005971 call!687944)))

(declare-fun b!7493753 () Bool)

(declare-fun e!4468358 () Bool)

(assert (=> b!7493753 (= e!4468364 e!4468358)))

(declare-fun c!1383624 () Bool)

(assert (=> b!7493753 (= c!1383624 (is-Star!19642 r2!5783))))

(declare-fun c!1383623 () Bool)

(declare-fun bm!687940 () Bool)

(assert (=> bm!687940 (= call!687946 (validRegex!10156 (ite c!1383624 (reg!19971 r2!5783) (ite c!1383623 (regOne!39797 r2!5783) (regOne!39796 r2!5783)))))))

(declare-fun b!7493754 () Bool)

(declare-fun e!4468363 () Bool)

(assert (=> b!7493754 (= e!4468358 e!4468363)))

(declare-fun res!3005974 () Bool)

(assert (=> b!7493754 (= res!3005974 (not (nullable!8578 (reg!19971 r2!5783))))))

(assert (=> b!7493754 (=> (not res!3005974) (not e!4468363))))

(declare-fun b!7493755 () Bool)

(declare-fun e!4468361 () Bool)

(assert (=> b!7493755 (= e!4468358 e!4468361)))

(assert (=> b!7493755 (= c!1383623 (is-Union!19642 r2!5783))))

(declare-fun b!7493756 () Bool)

(assert (=> b!7493756 (= e!4468363 call!687946)))

(declare-fun b!7493757 () Bool)

(declare-fun res!3005972 () Bool)

(assert (=> b!7493757 (=> res!3005972 e!4468360)))

(assert (=> b!7493757 (= res!3005972 (not (is-Concat!28487 r2!5783)))))

(assert (=> b!7493757 (= e!4468361 e!4468360)))

(declare-fun b!7493758 () Bool)

(declare-fun res!3005970 () Bool)

(assert (=> b!7493758 (=> (not res!3005970) (not e!4468359))))

(assert (=> b!7493758 (= res!3005970 call!687944)))

(assert (=> b!7493758 (= e!4468361 e!4468359)))

(declare-fun bm!687941 () Bool)

(assert (=> bm!687941 (= call!687945 (validRegex!10156 (ite c!1383623 (regTwo!39797 r2!5783) (regTwo!39796 r2!5783))))))

(declare-fun b!7493759 () Bool)

(assert (=> b!7493759 (= e!4468362 call!687945)))

(assert (= (and d!2301523 (not res!3005973)) b!7493753))

(assert (= (and b!7493753 c!1383624) b!7493754))

(assert (= (and b!7493753 (not c!1383624)) b!7493755))

(assert (= (and b!7493754 res!3005974) b!7493756))

(assert (= (and b!7493755 c!1383623) b!7493758))

(assert (= (and b!7493755 (not c!1383623)) b!7493757))

(assert (= (and b!7493758 res!3005970) b!7493751))

(assert (= (and b!7493757 (not res!3005972)) b!7493752))

(assert (= (and b!7493752 res!3005971) b!7493759))

(assert (= (or b!7493751 b!7493759) bm!687941))

(assert (= (or b!7493758 b!7493752) bm!687939))

(assert (= (or b!7493756 bm!687939) bm!687940))

(declare-fun m!8078730 () Bool)

(assert (=> bm!687940 m!8078730))

(declare-fun m!8078732 () Bool)

(assert (=> b!7493754 m!8078732))

(declare-fun m!8078734 () Bool)

(assert (=> bm!687941 m!8078734))

(assert (=> b!7493499 d!2301523))

(declare-fun b!7493760 () Bool)

(declare-fun e!4468366 () Bool)

(declare-fun call!687948 () Bool)

(assert (=> b!7493760 (= e!4468366 call!687948)))

(declare-fun bm!687942 () Bool)

(declare-fun call!687947 () Bool)

(declare-fun call!687949 () Bool)

(assert (=> bm!687942 (= call!687947 call!687949)))

(declare-fun d!2301525 () Bool)

(declare-fun res!3005978 () Bool)

(declare-fun e!4468371 () Bool)

(assert (=> d!2301525 (=> res!3005978 e!4468371)))

(assert (=> d!2301525 (= res!3005978 (is-ElementMatch!19642 lt!2630046))))

(assert (=> d!2301525 (= (validRegex!10156 lt!2630046) e!4468371)))

(declare-fun b!7493761 () Bool)

(declare-fun e!4468367 () Bool)

(declare-fun e!4468369 () Bool)

(assert (=> b!7493761 (= e!4468367 e!4468369)))

(declare-fun res!3005976 () Bool)

(assert (=> b!7493761 (=> (not res!3005976) (not e!4468369))))

(assert (=> b!7493761 (= res!3005976 call!687947)))

(declare-fun b!7493762 () Bool)

(declare-fun e!4468365 () Bool)

(assert (=> b!7493762 (= e!4468371 e!4468365)))

(declare-fun c!1383626 () Bool)

(assert (=> b!7493762 (= c!1383626 (is-Star!19642 lt!2630046))))

(declare-fun bm!687943 () Bool)

(declare-fun c!1383625 () Bool)

(assert (=> bm!687943 (= call!687949 (validRegex!10156 (ite c!1383626 (reg!19971 lt!2630046) (ite c!1383625 (regOne!39797 lt!2630046) (regOne!39796 lt!2630046)))))))

(declare-fun b!7493763 () Bool)

(declare-fun e!4468370 () Bool)

(assert (=> b!7493763 (= e!4468365 e!4468370)))

(declare-fun res!3005979 () Bool)

(assert (=> b!7493763 (= res!3005979 (not (nullable!8578 (reg!19971 lt!2630046))))))

(assert (=> b!7493763 (=> (not res!3005979) (not e!4468370))))

(declare-fun b!7493764 () Bool)

(declare-fun e!4468368 () Bool)

(assert (=> b!7493764 (= e!4468365 e!4468368)))

(assert (=> b!7493764 (= c!1383625 (is-Union!19642 lt!2630046))))

(declare-fun b!7493765 () Bool)

(assert (=> b!7493765 (= e!4468370 call!687949)))

(declare-fun b!7493766 () Bool)

(declare-fun res!3005977 () Bool)

(assert (=> b!7493766 (=> res!3005977 e!4468367)))

(assert (=> b!7493766 (= res!3005977 (not (is-Concat!28487 lt!2630046)))))

(assert (=> b!7493766 (= e!4468368 e!4468367)))

(declare-fun b!7493767 () Bool)

(declare-fun res!3005975 () Bool)

(assert (=> b!7493767 (=> (not res!3005975) (not e!4468366))))

(assert (=> b!7493767 (= res!3005975 call!687947)))

(assert (=> b!7493767 (= e!4468368 e!4468366)))

(declare-fun bm!687944 () Bool)

(assert (=> bm!687944 (= call!687948 (validRegex!10156 (ite c!1383625 (regTwo!39797 lt!2630046) (regTwo!39796 lt!2630046))))))

(declare-fun b!7493768 () Bool)

(assert (=> b!7493768 (= e!4468369 call!687948)))

(assert (= (and d!2301525 (not res!3005978)) b!7493762))

(assert (= (and b!7493762 c!1383626) b!7493763))

(assert (= (and b!7493762 (not c!1383626)) b!7493764))

(assert (= (and b!7493763 res!3005979) b!7493765))

(assert (= (and b!7493764 c!1383625) b!7493767))

(assert (= (and b!7493764 (not c!1383625)) b!7493766))

(assert (= (and b!7493767 res!3005975) b!7493760))

(assert (= (and b!7493766 (not res!3005977)) b!7493761))

(assert (= (and b!7493761 res!3005976) b!7493768))

(assert (= (or b!7493760 b!7493768) bm!687944))

(assert (= (or b!7493767 b!7493761) bm!687942))

(assert (= (or b!7493765 bm!687942) bm!687943))

(declare-fun m!8078736 () Bool)

(assert (=> bm!687943 m!8078736))

(declare-fun m!8078738 () Bool)

(assert (=> b!7493763 m!8078738))

(declare-fun m!8078740 () Bool)

(assert (=> bm!687944 m!8078740))

(assert (=> b!7493495 d!2301525))

(declare-fun d!2301527 () Bool)

(declare-fun choose!57921 (Int) Bool)

(assert (=> d!2301527 (= (Exists!4259 lambda!464275) (choose!57921 lambda!464275))))

(declare-fun bs!1935464 () Bool)

(assert (= bs!1935464 d!2301527))

(declare-fun m!8078742 () Bool)

(assert (=> bs!1935464 m!8078742))

(assert (=> b!7493501 d!2301527))

(declare-fun bs!1935466 () Bool)

(declare-fun d!2301529 () Bool)

(assert (= bs!1935466 (and d!2301529 b!7493501)))

(declare-fun lambda!464297 () Int)

(assert (=> bs!1935466 (not (= lambda!464297 lambda!464275))))

(declare-fun bs!1935467 () Bool)

(assert (= bs!1935467 (and d!2301529 b!7493645)))

(assert (=> bs!1935467 (not (= lambda!464297 lambda!464290))))

(assert (=> bs!1935466 (= lambda!464297 lambda!464274)))

(declare-fun bs!1935469 () Bool)

(assert (= bs!1935469 (and d!2301529 b!7493641)))

(assert (=> bs!1935469 (not (= lambda!464297 lambda!464291))))

(declare-fun bs!1935470 () Bool)

(assert (= bs!1935470 (and d!2301529 b!7493612)))

(assert (=> bs!1935470 (not (= lambda!464297 lambda!464289))))

(declare-fun bs!1935471 () Bool)

(assert (= bs!1935471 (and d!2301529 b!7493616)))

(assert (=> bs!1935471 (not (= lambda!464297 lambda!464288))))

(assert (=> d!2301529 true))

(assert (=> d!2301529 true))

(assert (=> d!2301529 true))

(assert (=> d!2301529 (= (isDefined!13880 (findConcatSeparation!3313 lt!2630048 rTail!78 Nil!72232 s!13591 s!13591)) (Exists!4259 lambda!464297))))

(declare-fun lt!2630101 () Unit!166115)

(declare-fun choose!57922 (Regex!19642 Regex!19642 List!72356) Unit!166115)

(assert (=> d!2301529 (= lt!2630101 (choose!57922 lt!2630048 rTail!78 s!13591))))

(assert (=> d!2301529 (validRegex!10156 lt!2630048)))

(assert (=> d!2301529 (= (lemmaFindConcatSeparationEquivalentToExists!3071 lt!2630048 rTail!78 s!13591) lt!2630101)))

(declare-fun bs!1935472 () Bool)

(assert (= bs!1935472 d!2301529))

(declare-fun m!8078750 () Bool)

(assert (=> bs!1935472 m!8078750))

(declare-fun m!8078752 () Bool)

(assert (=> bs!1935472 m!8078752))

(assert (=> bs!1935472 m!8078612))

(assert (=> bs!1935472 m!8078612))

(assert (=> bs!1935472 m!8078614))

(declare-fun m!8078754 () Bool)

(assert (=> bs!1935472 m!8078754))

(assert (=> b!7493501 d!2301529))

(declare-fun d!2301533 () Bool)

(assert (=> d!2301533 (= (Exists!4259 lambda!464274) (choose!57921 lambda!464274))))

(declare-fun bs!1935473 () Bool)

(assert (= bs!1935473 d!2301533))

(declare-fun m!8078756 () Bool)

(assert (=> bs!1935473 m!8078756))

(assert (=> b!7493501 d!2301533))

(declare-fun d!2301535 () Bool)

(declare-fun isEmpty!41262 (Option!17191) Bool)

(assert (=> d!2301535 (= (isDefined!13880 (findConcatSeparation!3313 lt!2630048 rTail!78 Nil!72232 s!13591 s!13591)) (not (isEmpty!41262 (findConcatSeparation!3313 lt!2630048 rTail!78 Nil!72232 s!13591 s!13591))))))

(declare-fun bs!1935474 () Bool)

(assert (= bs!1935474 d!2301535))

(assert (=> bs!1935474 m!8078612))

(declare-fun m!8078758 () Bool)

(assert (=> bs!1935474 m!8078758))

(assert (=> b!7493501 d!2301535))

(declare-fun b!7493799 () Bool)

(declare-fun e!4468389 () Option!17191)

(declare-fun e!4468390 () Option!17191)

(assert (=> b!7493799 (= e!4468389 e!4468390)))

(declare-fun c!1383632 () Bool)

(assert (=> b!7493799 (= c!1383632 (is-Nil!72232 s!13591))))

(declare-fun b!7493800 () Bool)

(declare-fun e!4468388 () Bool)

(declare-fun lt!2630110 () Option!17191)

(assert (=> b!7493800 (= e!4468388 (not (isDefined!13880 lt!2630110)))))

(declare-fun b!7493801 () Bool)

(declare-fun e!4468391 () Bool)

(declare-fun ++!17248 (List!72356 List!72356) List!72356)

(declare-fun get!25319 (Option!17191) tuple2!68718)

(assert (=> b!7493801 (= e!4468391 (= (++!17248 (_1!37662 (get!25319 lt!2630110)) (_2!37662 (get!25319 lt!2630110))) s!13591))))

(declare-fun b!7493802 () Bool)

(assert (=> b!7493802 (= e!4468389 (Some!17190 (tuple2!68719 Nil!72232 s!13591)))))

(declare-fun b!7493803 () Bool)

(declare-fun lt!2630112 () Unit!166115)

(declare-fun lt!2630111 () Unit!166115)

(assert (=> b!7493803 (= lt!2630112 lt!2630111)))

(assert (=> b!7493803 (= (++!17248 (++!17248 Nil!72232 (Cons!72232 (h!78680 s!13591) Nil!72232)) (t!386925 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3122 (List!72356 C!39558 List!72356 List!72356) Unit!166115)

(assert (=> b!7493803 (= lt!2630111 (lemmaMoveElementToOtherListKeepsConcatEq!3122 Nil!72232 (h!78680 s!13591) (t!386925 s!13591) s!13591))))

(assert (=> b!7493803 (= e!4468390 (findConcatSeparation!3313 lt!2630048 rTail!78 (++!17248 Nil!72232 (Cons!72232 (h!78680 s!13591) Nil!72232)) (t!386925 s!13591) s!13591))))

(declare-fun b!7493805 () Bool)

(declare-fun res!3006006 () Bool)

(assert (=> b!7493805 (=> (not res!3006006) (not e!4468391))))

(assert (=> b!7493805 (= res!3006006 (matchR!9404 rTail!78 (_2!37662 (get!25319 lt!2630110))))))

(declare-fun b!7493806 () Bool)

(declare-fun res!3006002 () Bool)

(assert (=> b!7493806 (=> (not res!3006002) (not e!4468391))))

(assert (=> b!7493806 (= res!3006002 (matchR!9404 lt!2630048 (_1!37662 (get!25319 lt!2630110))))))

(declare-fun b!7493807 () Bool)

(declare-fun e!4468392 () Bool)

(assert (=> b!7493807 (= e!4468392 (matchR!9404 rTail!78 s!13591))))

(declare-fun b!7493804 () Bool)

(assert (=> b!7493804 (= e!4468390 None!17190)))

(declare-fun d!2301537 () Bool)

(assert (=> d!2301537 e!4468388))

(declare-fun res!3006003 () Bool)

(assert (=> d!2301537 (=> res!3006003 e!4468388)))

(assert (=> d!2301537 (= res!3006003 e!4468391)))

(declare-fun res!3006005 () Bool)

(assert (=> d!2301537 (=> (not res!3006005) (not e!4468391))))

(assert (=> d!2301537 (= res!3006005 (isDefined!13880 lt!2630110))))

(assert (=> d!2301537 (= lt!2630110 e!4468389)))

(declare-fun c!1383631 () Bool)

(assert (=> d!2301537 (= c!1383631 e!4468392)))

(declare-fun res!3006004 () Bool)

(assert (=> d!2301537 (=> (not res!3006004) (not e!4468392))))

(assert (=> d!2301537 (= res!3006004 (matchR!9404 lt!2630048 Nil!72232))))

(assert (=> d!2301537 (validRegex!10156 lt!2630048)))

(assert (=> d!2301537 (= (findConcatSeparation!3313 lt!2630048 rTail!78 Nil!72232 s!13591 s!13591) lt!2630110)))

(assert (= (and d!2301537 res!3006004) b!7493807))

(assert (= (and d!2301537 c!1383631) b!7493802))

(assert (= (and d!2301537 (not c!1383631)) b!7493799))

(assert (= (and b!7493799 c!1383632) b!7493804))

(assert (= (and b!7493799 (not c!1383632)) b!7493803))

(assert (= (and d!2301537 res!3006005) b!7493806))

(assert (= (and b!7493806 res!3006002) b!7493805))

(assert (= (and b!7493805 res!3006006) b!7493801))

(assert (= (and d!2301537 (not res!3006003)) b!7493800))

(declare-fun m!8078762 () Bool)

(assert (=> b!7493807 m!8078762))

(declare-fun m!8078764 () Bool)

(assert (=> b!7493800 m!8078764))

(declare-fun m!8078766 () Bool)

(assert (=> b!7493805 m!8078766))

(declare-fun m!8078768 () Bool)

(assert (=> b!7493805 m!8078768))

(assert (=> b!7493806 m!8078766))

(declare-fun m!8078770 () Bool)

(assert (=> b!7493806 m!8078770))

(declare-fun m!8078772 () Bool)

(assert (=> b!7493803 m!8078772))

(assert (=> b!7493803 m!8078772))

(declare-fun m!8078774 () Bool)

(assert (=> b!7493803 m!8078774))

(declare-fun m!8078776 () Bool)

(assert (=> b!7493803 m!8078776))

(assert (=> b!7493803 m!8078772))

(declare-fun m!8078778 () Bool)

(assert (=> b!7493803 m!8078778))

(assert (=> d!2301537 m!8078764))

(declare-fun m!8078780 () Bool)

(assert (=> d!2301537 m!8078780))

(assert (=> d!2301537 m!8078752))

(assert (=> b!7493801 m!8078766))

(declare-fun m!8078782 () Bool)

(assert (=> b!7493801 m!8078782))

(assert (=> b!7493501 d!2301537))

(declare-fun bs!1935478 () Bool)

(declare-fun d!2301541 () Bool)

(assert (= bs!1935478 (and d!2301541 b!7493501)))

(declare-fun lambda!464308 () Int)

(assert (=> bs!1935478 (not (= lambda!464308 lambda!464275))))

(declare-fun bs!1935479 () Bool)

(assert (= bs!1935479 (and d!2301541 d!2301529)))

(assert (=> bs!1935479 (= lambda!464308 lambda!464297)))

(declare-fun bs!1935480 () Bool)

(assert (= bs!1935480 (and d!2301541 b!7493645)))

(assert (=> bs!1935480 (not (= lambda!464308 lambda!464290))))

(assert (=> bs!1935478 (= lambda!464308 lambda!464274)))

(declare-fun bs!1935482 () Bool)

(assert (= bs!1935482 (and d!2301541 b!7493641)))

(assert (=> bs!1935482 (not (= lambda!464308 lambda!464291))))

(declare-fun bs!1935483 () Bool)

(assert (= bs!1935483 (and d!2301541 b!7493612)))

(assert (=> bs!1935483 (not (= lambda!464308 lambda!464289))))

(declare-fun bs!1935484 () Bool)

(assert (= bs!1935484 (and d!2301541 b!7493616)))

(assert (=> bs!1935484 (not (= lambda!464308 lambda!464288))))

(assert (=> d!2301541 true))

(assert (=> d!2301541 true))

(assert (=> d!2301541 true))

(declare-fun lambda!464309 () Int)

(assert (=> bs!1935478 (= lambda!464309 lambda!464275)))

(assert (=> bs!1935479 (not (= lambda!464309 lambda!464297))))

(assert (=> bs!1935480 (not (= lambda!464309 lambda!464290))))

(assert (=> bs!1935478 (not (= lambda!464309 lambda!464274))))

(assert (=> bs!1935482 (= (and (= lt!2630048 (regOne!39796 lt!2630053)) (= rTail!78 (regTwo!39796 lt!2630053))) (= lambda!464309 lambda!464291))))

(assert (=> bs!1935483 (= (and (= lt!2630048 (regOne!39796 lt!2630047)) (= rTail!78 (regTwo!39796 lt!2630047))) (= lambda!464309 lambda!464289))))

(assert (=> bs!1935484 (not (= lambda!464309 lambda!464288))))

(declare-fun bs!1935486 () Bool)

(assert (= bs!1935486 d!2301541))

(assert (=> bs!1935486 (not (= lambda!464309 lambda!464308))))

(assert (=> d!2301541 true))

(assert (=> d!2301541 true))

(assert (=> d!2301541 true))

(assert (=> d!2301541 (= (Exists!4259 lambda!464308) (Exists!4259 lambda!464309))))

(declare-fun lt!2630116 () Unit!166115)

(declare-fun choose!57923 (Regex!19642 Regex!19642 List!72356) Unit!166115)

(assert (=> d!2301541 (= lt!2630116 (choose!57923 lt!2630048 rTail!78 s!13591))))

(assert (=> d!2301541 (validRegex!10156 lt!2630048)))

(assert (=> d!2301541 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2583 lt!2630048 rTail!78 s!13591) lt!2630116)))

(declare-fun m!8078792 () Bool)

(assert (=> bs!1935486 m!8078792))

(declare-fun m!8078794 () Bool)

(assert (=> bs!1935486 m!8078794))

(declare-fun m!8078796 () Bool)

(assert (=> bs!1935486 m!8078796))

(assert (=> bs!1935486 m!8078752))

(assert (=> b!7493501 d!2301541))

(declare-fun b!7493820 () Bool)

(declare-fun e!4468400 () Bool)

(declare-fun call!687951 () Bool)

(assert (=> b!7493820 (= e!4468400 call!687951)))

(declare-fun bm!687945 () Bool)

(declare-fun call!687950 () Bool)

(declare-fun call!687952 () Bool)

(assert (=> bm!687945 (= call!687950 call!687952)))

(declare-fun d!2301547 () Bool)

(declare-fun res!3006022 () Bool)

(declare-fun e!4468405 () Bool)

(assert (=> d!2301547 (=> res!3006022 e!4468405)))

(assert (=> d!2301547 (= res!3006022 (is-ElementMatch!19642 rTail!78))))

(assert (=> d!2301547 (= (validRegex!10156 rTail!78) e!4468405)))

(declare-fun b!7493821 () Bool)

(declare-fun e!4468401 () Bool)

(declare-fun e!4468403 () Bool)

(assert (=> b!7493821 (= e!4468401 e!4468403)))

(declare-fun res!3006020 () Bool)

(assert (=> b!7493821 (=> (not res!3006020) (not e!4468403))))

(assert (=> b!7493821 (= res!3006020 call!687950)))

(declare-fun b!7493822 () Bool)

(declare-fun e!4468399 () Bool)

(assert (=> b!7493822 (= e!4468405 e!4468399)))

(declare-fun c!1383634 () Bool)

(assert (=> b!7493822 (= c!1383634 (is-Star!19642 rTail!78))))

(declare-fun c!1383633 () Bool)

(declare-fun bm!687946 () Bool)

(assert (=> bm!687946 (= call!687952 (validRegex!10156 (ite c!1383634 (reg!19971 rTail!78) (ite c!1383633 (regOne!39797 rTail!78) (regOne!39796 rTail!78)))))))

(declare-fun b!7493823 () Bool)

(declare-fun e!4468404 () Bool)

(assert (=> b!7493823 (= e!4468399 e!4468404)))

(declare-fun res!3006023 () Bool)

(assert (=> b!7493823 (= res!3006023 (not (nullable!8578 (reg!19971 rTail!78))))))

(assert (=> b!7493823 (=> (not res!3006023) (not e!4468404))))

(declare-fun b!7493824 () Bool)

(declare-fun e!4468402 () Bool)

(assert (=> b!7493824 (= e!4468399 e!4468402)))

(assert (=> b!7493824 (= c!1383633 (is-Union!19642 rTail!78))))

(declare-fun b!7493825 () Bool)

(assert (=> b!7493825 (= e!4468404 call!687952)))

(declare-fun b!7493826 () Bool)

(declare-fun res!3006021 () Bool)

(assert (=> b!7493826 (=> res!3006021 e!4468401)))

(assert (=> b!7493826 (= res!3006021 (not (is-Concat!28487 rTail!78)))))

(assert (=> b!7493826 (= e!4468402 e!4468401)))

(declare-fun b!7493827 () Bool)

(declare-fun res!3006019 () Bool)

(assert (=> b!7493827 (=> (not res!3006019) (not e!4468400))))

(assert (=> b!7493827 (= res!3006019 call!687950)))

(assert (=> b!7493827 (= e!4468402 e!4468400)))

(declare-fun bm!687947 () Bool)

(assert (=> bm!687947 (= call!687951 (validRegex!10156 (ite c!1383633 (regTwo!39797 rTail!78) (regTwo!39796 rTail!78))))))

(declare-fun b!7493828 () Bool)

(assert (=> b!7493828 (= e!4468403 call!687951)))

(assert (= (and d!2301547 (not res!3006022)) b!7493822))

(assert (= (and b!7493822 c!1383634) b!7493823))

(assert (= (and b!7493822 (not c!1383634)) b!7493824))

(assert (= (and b!7493823 res!3006023) b!7493825))

(assert (= (and b!7493824 c!1383633) b!7493827))

(assert (= (and b!7493824 (not c!1383633)) b!7493826))

(assert (= (and b!7493827 res!3006019) b!7493820))

(assert (= (and b!7493826 (not res!3006021)) b!7493821))

(assert (= (and b!7493821 res!3006020) b!7493828))

(assert (= (or b!7493820 b!7493828) bm!687947))

(assert (= (or b!7493827 b!7493821) bm!687945))

(assert (= (or b!7493825 bm!687945) bm!687946))

(declare-fun m!8078798 () Bool)

(assert (=> bm!687946 m!8078798))

(declare-fun m!8078802 () Bool)

(assert (=> b!7493823 m!8078802))

(declare-fun m!8078804 () Bool)

(assert (=> bm!687947 m!8078804))

(assert (=> b!7493492 d!2301547))

(declare-fun b!7493839 () Bool)

(declare-fun e!4468408 () Bool)

(assert (=> b!7493839 (= e!4468408 tp_is_empty!49573)))

(declare-fun b!7493842 () Bool)

(declare-fun tp!2175256 () Bool)

(declare-fun tp!2175259 () Bool)

(assert (=> b!7493842 (= e!4468408 (and tp!2175256 tp!2175259))))

(assert (=> b!7493487 (= tp!2175193 e!4468408)))

(declare-fun b!7493840 () Bool)

(declare-fun tp!2175257 () Bool)

(declare-fun tp!2175260 () Bool)

(assert (=> b!7493840 (= e!4468408 (and tp!2175257 tp!2175260))))

(declare-fun b!7493841 () Bool)

(declare-fun tp!2175258 () Bool)

(assert (=> b!7493841 (= e!4468408 tp!2175258)))

(assert (= (and b!7493487 (is-ElementMatch!19642 (regOne!39797 rTail!78))) b!7493839))

(assert (= (and b!7493487 (is-Concat!28487 (regOne!39797 rTail!78))) b!7493840))

(assert (= (and b!7493487 (is-Star!19642 (regOne!39797 rTail!78))) b!7493841))

(assert (= (and b!7493487 (is-Union!19642 (regOne!39797 rTail!78))) b!7493842))

(declare-fun b!7493843 () Bool)

(declare-fun e!4468409 () Bool)

(assert (=> b!7493843 (= e!4468409 tp_is_empty!49573)))

(declare-fun b!7493846 () Bool)

(declare-fun tp!2175261 () Bool)

(declare-fun tp!2175264 () Bool)

(assert (=> b!7493846 (= e!4468409 (and tp!2175261 tp!2175264))))

(assert (=> b!7493487 (= tp!2175188 e!4468409)))

(declare-fun b!7493844 () Bool)

(declare-fun tp!2175262 () Bool)

(declare-fun tp!2175265 () Bool)

(assert (=> b!7493844 (= e!4468409 (and tp!2175262 tp!2175265))))

(declare-fun b!7493845 () Bool)

(declare-fun tp!2175263 () Bool)

(assert (=> b!7493845 (= e!4468409 tp!2175263)))

(assert (= (and b!7493487 (is-ElementMatch!19642 (regTwo!39797 rTail!78))) b!7493843))

(assert (= (and b!7493487 (is-Concat!28487 (regTwo!39797 rTail!78))) b!7493844))

(assert (= (and b!7493487 (is-Star!19642 (regTwo!39797 rTail!78))) b!7493845))

(assert (= (and b!7493487 (is-Union!19642 (regTwo!39797 rTail!78))) b!7493846))

(declare-fun b!7493847 () Bool)

(declare-fun e!4468410 () Bool)

(assert (=> b!7493847 (= e!4468410 tp_is_empty!49573)))

(declare-fun b!7493850 () Bool)

(declare-fun tp!2175266 () Bool)

(declare-fun tp!2175269 () Bool)

(assert (=> b!7493850 (= e!4468410 (and tp!2175266 tp!2175269))))

(assert (=> b!7493503 (= tp!2175196 e!4468410)))

(declare-fun b!7493848 () Bool)

(declare-fun tp!2175267 () Bool)

(declare-fun tp!2175270 () Bool)

(assert (=> b!7493848 (= e!4468410 (and tp!2175267 tp!2175270))))

(declare-fun b!7493849 () Bool)

(declare-fun tp!2175268 () Bool)

(assert (=> b!7493849 (= e!4468410 tp!2175268)))

(assert (= (and b!7493503 (is-ElementMatch!19642 (regOne!39796 r2!5783))) b!7493847))

(assert (= (and b!7493503 (is-Concat!28487 (regOne!39796 r2!5783))) b!7493848))

(assert (= (and b!7493503 (is-Star!19642 (regOne!39796 r2!5783))) b!7493849))

(assert (= (and b!7493503 (is-Union!19642 (regOne!39796 r2!5783))) b!7493850))

(declare-fun b!7493851 () Bool)

(declare-fun e!4468411 () Bool)

(assert (=> b!7493851 (= e!4468411 tp_is_empty!49573)))

(declare-fun b!7493854 () Bool)

(declare-fun tp!2175271 () Bool)

(declare-fun tp!2175274 () Bool)

(assert (=> b!7493854 (= e!4468411 (and tp!2175271 tp!2175274))))

(assert (=> b!7493503 (= tp!2175183 e!4468411)))

(declare-fun b!7493852 () Bool)

(declare-fun tp!2175272 () Bool)

(declare-fun tp!2175275 () Bool)

(assert (=> b!7493852 (= e!4468411 (and tp!2175272 tp!2175275))))

(declare-fun b!7493853 () Bool)

(declare-fun tp!2175273 () Bool)

(assert (=> b!7493853 (= e!4468411 tp!2175273)))

(assert (= (and b!7493503 (is-ElementMatch!19642 (regTwo!39796 r2!5783))) b!7493851))

(assert (= (and b!7493503 (is-Concat!28487 (regTwo!39796 r2!5783))) b!7493852))

(assert (= (and b!7493503 (is-Star!19642 (regTwo!39796 r2!5783))) b!7493853))

(assert (= (and b!7493503 (is-Union!19642 (regTwo!39796 r2!5783))) b!7493854))

(declare-fun b!7493855 () Bool)

(declare-fun e!4468412 () Bool)

(assert (=> b!7493855 (= e!4468412 tp_is_empty!49573)))

(declare-fun b!7493858 () Bool)

(declare-fun tp!2175276 () Bool)

(declare-fun tp!2175279 () Bool)

(assert (=> b!7493858 (= e!4468412 (and tp!2175276 tp!2175279))))

(assert (=> b!7493498 (= tp!2175186 e!4468412)))

(declare-fun b!7493856 () Bool)

(declare-fun tp!2175277 () Bool)

(declare-fun tp!2175280 () Bool)

(assert (=> b!7493856 (= e!4468412 (and tp!2175277 tp!2175280))))

(declare-fun b!7493857 () Bool)

(declare-fun tp!2175278 () Bool)

(assert (=> b!7493857 (= e!4468412 tp!2175278)))

(assert (= (and b!7493498 (is-ElementMatch!19642 (reg!19971 rTail!78))) b!7493855))

(assert (= (and b!7493498 (is-Concat!28487 (reg!19971 rTail!78))) b!7493856))

(assert (= (and b!7493498 (is-Star!19642 (reg!19971 rTail!78))) b!7493857))

(assert (= (and b!7493498 (is-Union!19642 (reg!19971 rTail!78))) b!7493858))

(declare-fun b!7493859 () Bool)

(declare-fun e!4468413 () Bool)

(assert (=> b!7493859 (= e!4468413 tp_is_empty!49573)))

(declare-fun b!7493862 () Bool)

(declare-fun tp!2175281 () Bool)

(declare-fun tp!2175284 () Bool)

(assert (=> b!7493862 (= e!4468413 (and tp!2175281 tp!2175284))))

(assert (=> b!7493488 (= tp!2175194 e!4468413)))

(declare-fun b!7493860 () Bool)

(declare-fun tp!2175282 () Bool)

(declare-fun tp!2175285 () Bool)

(assert (=> b!7493860 (= e!4468413 (and tp!2175282 tp!2175285))))

(declare-fun b!7493861 () Bool)

(declare-fun tp!2175283 () Bool)

(assert (=> b!7493861 (= e!4468413 tp!2175283)))

(assert (= (and b!7493488 (is-ElementMatch!19642 (regOne!39797 r1!5845))) b!7493859))

(assert (= (and b!7493488 (is-Concat!28487 (regOne!39797 r1!5845))) b!7493860))

(assert (= (and b!7493488 (is-Star!19642 (regOne!39797 r1!5845))) b!7493861))

(assert (= (and b!7493488 (is-Union!19642 (regOne!39797 r1!5845))) b!7493862))

(declare-fun b!7493863 () Bool)

(declare-fun e!4468414 () Bool)

(assert (=> b!7493863 (= e!4468414 tp_is_empty!49573)))

(declare-fun b!7493866 () Bool)

(declare-fun tp!2175286 () Bool)

(declare-fun tp!2175289 () Bool)

(assert (=> b!7493866 (= e!4468414 (and tp!2175286 tp!2175289))))

(assert (=> b!7493488 (= tp!2175185 e!4468414)))

(declare-fun b!7493864 () Bool)

(declare-fun tp!2175287 () Bool)

(declare-fun tp!2175290 () Bool)

(assert (=> b!7493864 (= e!4468414 (and tp!2175287 tp!2175290))))

(declare-fun b!7493865 () Bool)

(declare-fun tp!2175288 () Bool)

(assert (=> b!7493865 (= e!4468414 tp!2175288)))

(assert (= (and b!7493488 (is-ElementMatch!19642 (regTwo!39797 r1!5845))) b!7493863))

(assert (= (and b!7493488 (is-Concat!28487 (regTwo!39797 r1!5845))) b!7493864))

(assert (= (and b!7493488 (is-Star!19642 (regTwo!39797 r1!5845))) b!7493865))

(assert (= (and b!7493488 (is-Union!19642 (regTwo!39797 r1!5845))) b!7493866))

(declare-fun b!7493867 () Bool)

(declare-fun e!4468415 () Bool)

(assert (=> b!7493867 (= e!4468415 tp_is_empty!49573)))

(declare-fun b!7493870 () Bool)

(declare-fun tp!2175291 () Bool)

(declare-fun tp!2175294 () Bool)

(assert (=> b!7493870 (= e!4468415 (and tp!2175291 tp!2175294))))

(assert (=> b!7493494 (= tp!2175184 e!4468415)))

(declare-fun b!7493868 () Bool)

(declare-fun tp!2175292 () Bool)

(declare-fun tp!2175295 () Bool)

(assert (=> b!7493868 (= e!4468415 (and tp!2175292 tp!2175295))))

(declare-fun b!7493869 () Bool)

(declare-fun tp!2175293 () Bool)

(assert (=> b!7493869 (= e!4468415 tp!2175293)))

(assert (= (and b!7493494 (is-ElementMatch!19642 (regOne!39797 r2!5783))) b!7493867))

(assert (= (and b!7493494 (is-Concat!28487 (regOne!39797 r2!5783))) b!7493868))

(assert (= (and b!7493494 (is-Star!19642 (regOne!39797 r2!5783))) b!7493869))

(assert (= (and b!7493494 (is-Union!19642 (regOne!39797 r2!5783))) b!7493870))

(declare-fun b!7493871 () Bool)

(declare-fun e!4468416 () Bool)

(assert (=> b!7493871 (= e!4468416 tp_is_empty!49573)))

(declare-fun b!7493874 () Bool)

(declare-fun tp!2175296 () Bool)

(declare-fun tp!2175299 () Bool)

(assert (=> b!7493874 (= e!4468416 (and tp!2175296 tp!2175299))))

(assert (=> b!7493494 (= tp!2175187 e!4468416)))

(declare-fun b!7493872 () Bool)

(declare-fun tp!2175297 () Bool)

(declare-fun tp!2175300 () Bool)

(assert (=> b!7493872 (= e!4468416 (and tp!2175297 tp!2175300))))

(declare-fun b!7493873 () Bool)

(declare-fun tp!2175298 () Bool)

(assert (=> b!7493873 (= e!4468416 tp!2175298)))

(assert (= (and b!7493494 (is-ElementMatch!19642 (regTwo!39797 r2!5783))) b!7493871))

(assert (= (and b!7493494 (is-Concat!28487 (regTwo!39797 r2!5783))) b!7493872))

(assert (= (and b!7493494 (is-Star!19642 (regTwo!39797 r2!5783))) b!7493873))

(assert (= (and b!7493494 (is-Union!19642 (regTwo!39797 r2!5783))) b!7493874))

(declare-fun b!7493875 () Bool)

(declare-fun e!4468417 () Bool)

(assert (=> b!7493875 (= e!4468417 tp_is_empty!49573)))

(declare-fun b!7493878 () Bool)

(declare-fun tp!2175301 () Bool)

(declare-fun tp!2175304 () Bool)

(assert (=> b!7493878 (= e!4468417 (and tp!2175301 tp!2175304))))

(assert (=> b!7493489 (= tp!2175191 e!4468417)))

(declare-fun b!7493876 () Bool)

(declare-fun tp!2175302 () Bool)

(declare-fun tp!2175305 () Bool)

(assert (=> b!7493876 (= e!4468417 (and tp!2175302 tp!2175305))))

(declare-fun b!7493877 () Bool)

(declare-fun tp!2175303 () Bool)

(assert (=> b!7493877 (= e!4468417 tp!2175303)))

(assert (= (and b!7493489 (is-ElementMatch!19642 (regOne!39796 rTail!78))) b!7493875))

(assert (= (and b!7493489 (is-Concat!28487 (regOne!39796 rTail!78))) b!7493876))

(assert (= (and b!7493489 (is-Star!19642 (regOne!39796 rTail!78))) b!7493877))

(assert (= (and b!7493489 (is-Union!19642 (regOne!39796 rTail!78))) b!7493878))

(declare-fun b!7493879 () Bool)

(declare-fun e!4468418 () Bool)

(assert (=> b!7493879 (= e!4468418 tp_is_empty!49573)))

(declare-fun b!7493882 () Bool)

(declare-fun tp!2175306 () Bool)

(declare-fun tp!2175309 () Bool)

(assert (=> b!7493882 (= e!4468418 (and tp!2175306 tp!2175309))))

(assert (=> b!7493489 (= tp!2175189 e!4468418)))

(declare-fun b!7493880 () Bool)

(declare-fun tp!2175307 () Bool)

(declare-fun tp!2175310 () Bool)

(assert (=> b!7493880 (= e!4468418 (and tp!2175307 tp!2175310))))

(declare-fun b!7493881 () Bool)

(declare-fun tp!2175308 () Bool)

(assert (=> b!7493881 (= e!4468418 tp!2175308)))

(assert (= (and b!7493489 (is-ElementMatch!19642 (regTwo!39796 rTail!78))) b!7493879))

(assert (= (and b!7493489 (is-Concat!28487 (regTwo!39796 rTail!78))) b!7493880))

(assert (= (and b!7493489 (is-Star!19642 (regTwo!39796 rTail!78))) b!7493881))

(assert (= (and b!7493489 (is-Union!19642 (regTwo!39796 rTail!78))) b!7493882))

(declare-fun b!7493883 () Bool)

(declare-fun e!4468419 () Bool)

(assert (=> b!7493883 (= e!4468419 tp_is_empty!49573)))

(declare-fun b!7493886 () Bool)

(declare-fun tp!2175311 () Bool)

(declare-fun tp!2175314 () Bool)

(assert (=> b!7493886 (= e!4468419 (and tp!2175311 tp!2175314))))

(assert (=> b!7493490 (= tp!2175192 e!4468419)))

(declare-fun b!7493884 () Bool)

(declare-fun tp!2175312 () Bool)

(declare-fun tp!2175315 () Bool)

(assert (=> b!7493884 (= e!4468419 (and tp!2175312 tp!2175315))))

(declare-fun b!7493885 () Bool)

(declare-fun tp!2175313 () Bool)

(assert (=> b!7493885 (= e!4468419 tp!2175313)))

(assert (= (and b!7493490 (is-ElementMatch!19642 (reg!19971 r1!5845))) b!7493883))

(assert (= (and b!7493490 (is-Concat!28487 (reg!19971 r1!5845))) b!7493884))

(assert (= (and b!7493490 (is-Star!19642 (reg!19971 r1!5845))) b!7493885))

(assert (= (and b!7493490 (is-Union!19642 (reg!19971 r1!5845))) b!7493886))

(declare-fun b!7493891 () Bool)

(declare-fun e!4468422 () Bool)

(declare-fun tp!2175318 () Bool)

(assert (=> b!7493891 (= e!4468422 (and tp_is_empty!49573 tp!2175318))))

(assert (=> b!7493496 (= tp!2175197 e!4468422)))

(assert (= (and b!7493496 (is-Cons!72232 (t!386925 s!13591))) b!7493891))

(declare-fun b!7493892 () Bool)

(declare-fun e!4468423 () Bool)

(assert (=> b!7493892 (= e!4468423 tp_is_empty!49573)))

(declare-fun b!7493895 () Bool)

(declare-fun tp!2175319 () Bool)

(declare-fun tp!2175322 () Bool)

(assert (=> b!7493895 (= e!4468423 (and tp!2175319 tp!2175322))))

(assert (=> b!7493486 (= tp!2175195 e!4468423)))

(declare-fun b!7493893 () Bool)

(declare-fun tp!2175320 () Bool)

(declare-fun tp!2175323 () Bool)

(assert (=> b!7493893 (= e!4468423 (and tp!2175320 tp!2175323))))

(declare-fun b!7493894 () Bool)

(declare-fun tp!2175321 () Bool)

(assert (=> b!7493894 (= e!4468423 tp!2175321)))

(assert (= (and b!7493486 (is-ElementMatch!19642 (reg!19971 r2!5783))) b!7493892))

(assert (= (and b!7493486 (is-Concat!28487 (reg!19971 r2!5783))) b!7493893))

(assert (= (and b!7493486 (is-Star!19642 (reg!19971 r2!5783))) b!7493894))

(assert (= (and b!7493486 (is-Union!19642 (reg!19971 r2!5783))) b!7493895))

(declare-fun b!7493896 () Bool)

(declare-fun e!4468424 () Bool)

(assert (=> b!7493896 (= e!4468424 tp_is_empty!49573)))

(declare-fun b!7493899 () Bool)

(declare-fun tp!2175324 () Bool)

(declare-fun tp!2175327 () Bool)

(assert (=> b!7493899 (= e!4468424 (and tp!2175324 tp!2175327))))

(assert (=> b!7493502 (= tp!2175182 e!4468424)))

(declare-fun b!7493897 () Bool)

(declare-fun tp!2175325 () Bool)

(declare-fun tp!2175328 () Bool)

(assert (=> b!7493897 (= e!4468424 (and tp!2175325 tp!2175328))))

(declare-fun b!7493898 () Bool)

(declare-fun tp!2175326 () Bool)

(assert (=> b!7493898 (= e!4468424 tp!2175326)))

(assert (= (and b!7493502 (is-ElementMatch!19642 (regOne!39796 r1!5845))) b!7493896))

(assert (= (and b!7493502 (is-Concat!28487 (regOne!39796 r1!5845))) b!7493897))

(assert (= (and b!7493502 (is-Star!19642 (regOne!39796 r1!5845))) b!7493898))

(assert (= (and b!7493502 (is-Union!19642 (regOne!39796 r1!5845))) b!7493899))

(declare-fun b!7493900 () Bool)

(declare-fun e!4468425 () Bool)

(assert (=> b!7493900 (= e!4468425 tp_is_empty!49573)))

(declare-fun b!7493903 () Bool)

(declare-fun tp!2175329 () Bool)

(declare-fun tp!2175332 () Bool)

(assert (=> b!7493903 (= e!4468425 (and tp!2175329 tp!2175332))))

(assert (=> b!7493502 (= tp!2175190 e!4468425)))

(declare-fun b!7493901 () Bool)

(declare-fun tp!2175330 () Bool)

(declare-fun tp!2175333 () Bool)

(assert (=> b!7493901 (= e!4468425 (and tp!2175330 tp!2175333))))

(declare-fun b!7493902 () Bool)

(declare-fun tp!2175331 () Bool)

(assert (=> b!7493902 (= e!4468425 tp!2175331)))

(assert (= (and b!7493502 (is-ElementMatch!19642 (regTwo!39796 r1!5845))) b!7493900))

(assert (= (and b!7493502 (is-Concat!28487 (regTwo!39796 r1!5845))) b!7493901))

(assert (= (and b!7493502 (is-Star!19642 (regTwo!39796 r1!5845))) b!7493902))

(assert (= (and b!7493502 (is-Union!19642 (regTwo!39796 r1!5845))) b!7493903))

(push 1)

(assert (not d!2301509))

(assert (not b!7493807))

(assert (not d!2301535))

(assert (not b!7493617))

(assert (not b!7493842))

(assert (not b!7493874))

(assert (not b!7493850))

(assert (not b!7493902))

(assert (not bm!687929))

(assert (not b!7493903))

(assert (not b!7493711))

(assert (not b!7493841))

(assert (not bm!687911))

(assert (not b!7493893))

(assert (not b!7493853))

(assert (not b!7493880))

(assert (not b!7493754))

(assert (not b!7493865))

(assert (not bm!687944))

(assert (not b!7493886))

(assert (not bm!687941))

(assert (not b!7493897))

(assert (not b!7493639))

(assert (not b!7493876))

(assert (not b!7493852))

(assert (not d!2301519))

(assert (not b!7493877))

(assert (not d!2301541))

(assert (not b!7493806))

(assert (not b!7493709))

(assert (not b!7493872))

(assert (not b!7493864))

(assert (not b!7493844))

(assert (not b!7493801))

(assert (not b!7493901))

(assert (not b!7493723))

(assert (not b!7493713))

(assert (not bm!687946))

(assert (not bm!687912))

(assert (not b!7493866))

(assert (not d!2301513))

(assert (not b!7493894))

(assert (not b!7493856))

(assert (not b!7493860))

(assert (not b!7493861))

(assert (not bm!687943))

(assert (not b!7493878))

(assert tp_is_empty!49573)

(assert (not d!2301537))

(assert (not b!7493895))

(assert (not b!7493899))

(assert (not d!2301533))

(assert (not bm!687913))

(assert (not b!7493870))

(assert (not b!7493891))

(assert (not b!7493845))

(assert (not d!2301503))

(assert (not b!7493610))

(assert (not b!7493881))

(assert (not b!7493722))

(assert (not b!7493848))

(assert (not b!7493858))

(assert (not b!7493800))

(assert (not b!7493869))

(assert (not b!7493699))

(assert (not b!7493898))

(assert (not bm!687937))

(assert (not b!7493703))

(assert (not b!7493868))

(assert (not b!7493882))

(assert (not bm!687910))

(assert (not b!7493862))

(assert (not bm!687938))

(assert (not b!7493717))

(assert (not bm!687940))

(assert (not d!2301527))

(assert (not bm!687947))

(assert (not b!7493885))

(assert (not b!7493805))

(assert (not b!7493854))

(assert (not b!7493763))

(assert (not b!7493846))

(assert (not b!7493857))

(assert (not b!7493803))

(assert (not b!7493720))

(assert (not b!7493849))

(assert (not bm!687928))

(assert (not b!7493745))

(assert (not b!7493884))

(assert (not d!2301529))

(assert (not b!7493873))

(assert (not b!7493706))

(assert (not b!7493840))

(assert (not b!7493823))

(assert (not b!7493708))

(assert (not b!7493697))

(assert (not b!7493646))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

