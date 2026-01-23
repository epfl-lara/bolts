; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!82596 () Bool)

(assert start!82596)

(declare-fun b!919447 () Bool)

(assert (=> b!919447 true))

(assert (=> b!919447 true))

(declare-fun lambda!29824 () Int)

(declare-fun lambda!29823 () Int)

(assert (=> b!919447 (not (= lambda!29824 lambda!29823))))

(assert (=> b!919447 true))

(assert (=> b!919447 true))

(declare-fun bs!236488 () Bool)

(declare-fun b!919454 () Bool)

(assert (= bs!236488 (and b!919454 b!919447)))

(declare-datatypes ((C!5514 0))(
  ( (C!5515 (val!3005 Int)) )
))
(declare-datatypes ((Regex!2472 0))(
  ( (ElementMatch!2472 (c!149111 C!5514)) (Concat!4305 (regOne!5456 Regex!2472) (regTwo!5456 Regex!2472)) (EmptyExpr!2472) (Star!2472 (reg!2801 Regex!2472)) (EmptyLang!2472) (Union!2472 (regOne!5457 Regex!2472) (regTwo!5457 Regex!2472)) )
))
(declare-fun lt!338145 () Regex!2472)

(declare-fun r!15766 () Regex!2472)

(declare-fun lambda!29825 () Int)

(declare-fun lt!338153 () Regex!2472)

(assert (=> bs!236488 (= (and (= lt!338153 (regOne!5456 r!15766)) (= lt!338145 (regTwo!5456 r!15766))) (= lambda!29825 lambda!29823))))

(assert (=> bs!236488 (not (= lambda!29825 lambda!29824))))

(assert (=> b!919454 true))

(assert (=> b!919454 true))

(assert (=> b!919454 true))

(declare-fun lambda!29826 () Int)

(assert (=> bs!236488 (not (= lambda!29826 lambda!29823))))

(assert (=> bs!236488 (= (and (= lt!338153 (regOne!5456 r!15766)) (= lt!338145 (regTwo!5456 r!15766))) (= lambda!29826 lambda!29824))))

(assert (=> b!919454 (not (= lambda!29826 lambda!29825))))

(assert (=> b!919454 true))

(assert (=> b!919454 true))

(assert (=> b!919454 true))

(declare-fun b!919446 () Bool)

(declare-fun e!598810 () Bool)

(declare-fun e!598815 () Bool)

(assert (=> b!919446 (= e!598810 (not e!598815))))

(declare-fun res!418000 () Bool)

(assert (=> b!919446 (=> res!418000 e!598815)))

(declare-fun lt!338151 () Bool)

(assert (=> b!919446 (= res!418000 (or lt!338151 (and (is-Concat!4305 r!15766) (is-EmptyExpr!2472 (regOne!5456 r!15766))) (and (is-Concat!4305 r!15766) (is-EmptyExpr!2472 (regTwo!5456 r!15766))) (not (is-Concat!4305 r!15766))))))

(declare-datatypes ((List!9702 0))(
  ( (Nil!9686) (Cons!9686 (h!15087 C!5514) (t!100748 List!9702)) )
))
(declare-fun s!10566 () List!9702)

(declare-fun matchRSpec!273 (Regex!2472 List!9702) Bool)

(assert (=> b!919446 (= lt!338151 (matchRSpec!273 r!15766 s!10566))))

(declare-fun matchR!1010 (Regex!2472 List!9702) Bool)

(assert (=> b!919446 (= lt!338151 (matchR!1010 r!15766 s!10566))))

(declare-datatypes ((Unit!14563 0))(
  ( (Unit!14564) )
))
(declare-fun lt!338148 () Unit!14563)

(declare-fun mainMatchTheorem!273 (Regex!2472 List!9702) Unit!14563)

(assert (=> b!919446 (= lt!338148 (mainMatchTheorem!273 r!15766 s!10566))))

(declare-fun e!598811 () Bool)

(assert (=> b!919447 (= e!598815 e!598811)))

(declare-fun res!417999 () Bool)

(assert (=> b!919447 (=> res!417999 e!598811)))

(declare-fun isEmpty!5925 (List!9702) Bool)

(assert (=> b!919447 (= res!417999 (isEmpty!5925 s!10566))))

(declare-fun Exists!243 (Int) Bool)

(assert (=> b!919447 (= (Exists!243 lambda!29823) (Exists!243 lambda!29824))))

(declare-fun lt!338146 () Unit!14563)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!155 (Regex!2472 Regex!2472 List!9702) Unit!14563)

(assert (=> b!919447 (= lt!338146 (lemmaExistCutMatchRandMatchRSpecEquivalent!155 (regOne!5456 r!15766) (regTwo!5456 r!15766) s!10566))))

(declare-datatypes ((tuple2!10930 0))(
  ( (tuple2!10931 (_1!6291 List!9702) (_2!6291 List!9702)) )
))
(declare-datatypes ((Option!2107 0))(
  ( (None!2106) (Some!2106 (v!19523 tuple2!10930)) )
))
(declare-fun isDefined!1749 (Option!2107) Bool)

(declare-fun findConcatSeparation!213 (Regex!2472 Regex!2472 List!9702 List!9702 List!9702) Option!2107)

(assert (=> b!919447 (= (isDefined!1749 (findConcatSeparation!213 (regOne!5456 r!15766) (regTwo!5456 r!15766) Nil!9686 s!10566 s!10566)) (Exists!243 lambda!29823))))

(declare-fun lt!338147 () Unit!14563)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!213 (Regex!2472 Regex!2472 List!9702) Unit!14563)

(assert (=> b!919447 (= lt!338147 (lemmaFindConcatSeparationEquivalentToExists!213 (regOne!5456 r!15766) (regTwo!5456 r!15766) s!10566))))

(declare-fun b!919448 () Bool)

(declare-fun e!598813 () Bool)

(declare-fun tp_is_empty!4587 () Bool)

(assert (=> b!919448 (= e!598813 tp_is_empty!4587)))

(declare-fun b!919449 () Bool)

(declare-fun tp!286656 () Bool)

(assert (=> b!919449 (= e!598813 tp!286656)))

(declare-fun res!418002 () Bool)

(assert (=> start!82596 (=> (not res!418002) (not e!598810))))

(declare-fun validRegex!941 (Regex!2472) Bool)

(assert (=> start!82596 (= res!418002 (validRegex!941 r!15766))))

(assert (=> start!82596 e!598810))

(assert (=> start!82596 e!598813))

(declare-fun e!598812 () Bool)

(assert (=> start!82596 e!598812))

(declare-fun b!919450 () Bool)

(declare-fun tp!286658 () Bool)

(declare-fun tp!286657 () Bool)

(assert (=> b!919450 (= e!598813 (and tp!286658 tp!286657))))

(declare-fun b!919451 () Bool)

(declare-fun e!598814 () Bool)

(assert (=> b!919451 (= e!598811 e!598814)))

(declare-fun res!418001 () Bool)

(assert (=> b!919451 (=> res!418001 e!598814)))

(declare-fun lt!338150 () Regex!2472)

(assert (=> b!919451 (= res!418001 (not (matchR!1010 lt!338150 s!10566)))))

(assert (=> b!919451 (= lt!338150 (Concat!4305 lt!338153 lt!338145))))

(declare-fun removeUselessConcat!149 (Regex!2472) Regex!2472)

(assert (=> b!919451 (= lt!338145 (removeUselessConcat!149 (regTwo!5456 r!15766)))))

(assert (=> b!919451 (= lt!338153 (removeUselessConcat!149 (regOne!5456 r!15766)))))

(declare-fun b!919452 () Bool)

(declare-fun tp!286655 () Bool)

(declare-fun tp!286654 () Bool)

(assert (=> b!919452 (= e!598813 (and tp!286655 tp!286654))))

(declare-fun b!919453 () Bool)

(declare-fun tp!286653 () Bool)

(assert (=> b!919453 (= e!598812 (and tp_is_empty!4587 tp!286653))))

(assert (=> b!919454 (= e!598814 (validRegex!941 (regTwo!5456 r!15766)))))

(assert (=> b!919454 (= (Exists!243 lambda!29825) (Exists!243 lambda!29826))))

(declare-fun lt!338152 () Unit!14563)

(assert (=> b!919454 (= lt!338152 (lemmaExistCutMatchRandMatchRSpecEquivalent!155 lt!338153 lt!338145 s!10566))))

(assert (=> b!919454 (= (isDefined!1749 (findConcatSeparation!213 lt!338153 lt!338145 Nil!9686 s!10566 s!10566)) (Exists!243 lambda!29825))))

(declare-fun lt!338144 () Unit!14563)

(assert (=> b!919454 (= lt!338144 (lemmaFindConcatSeparationEquivalentToExists!213 lt!338153 lt!338145 s!10566))))

(assert (=> b!919454 (matchRSpec!273 lt!338150 s!10566)))

(declare-fun lt!338149 () Unit!14563)

(assert (=> b!919454 (= lt!338149 (mainMatchTheorem!273 lt!338150 s!10566))))

(assert (= (and start!82596 res!418002) b!919446))

(assert (= (and b!919446 (not res!418000)) b!919447))

(assert (= (and b!919447 (not res!417999)) b!919451))

(assert (= (and b!919451 (not res!418001)) b!919454))

(assert (= (and start!82596 (is-ElementMatch!2472 r!15766)) b!919448))

(assert (= (and start!82596 (is-Concat!4305 r!15766)) b!919450))

(assert (= (and start!82596 (is-Star!2472 r!15766)) b!919449))

(assert (= (and start!82596 (is-Union!2472 r!15766)) b!919452))

(assert (= (and start!82596 (is-Cons!9686 s!10566)) b!919453))

(declare-fun m!1147329 () Bool)

(assert (=> b!919446 m!1147329))

(declare-fun m!1147331 () Bool)

(assert (=> b!919446 m!1147331))

(declare-fun m!1147333 () Bool)

(assert (=> b!919446 m!1147333))

(declare-fun m!1147335 () Bool)

(assert (=> start!82596 m!1147335))

(declare-fun m!1147337 () Bool)

(assert (=> b!919454 m!1147337))

(declare-fun m!1147339 () Bool)

(assert (=> b!919454 m!1147339))

(declare-fun m!1147341 () Bool)

(assert (=> b!919454 m!1147341))

(declare-fun m!1147343 () Bool)

(assert (=> b!919454 m!1147343))

(declare-fun m!1147345 () Bool)

(assert (=> b!919454 m!1147345))

(declare-fun m!1147347 () Bool)

(assert (=> b!919454 m!1147347))

(declare-fun m!1147349 () Bool)

(assert (=> b!919454 m!1147349))

(assert (=> b!919454 m!1147345))

(declare-fun m!1147351 () Bool)

(assert (=> b!919454 m!1147351))

(declare-fun m!1147353 () Bool)

(assert (=> b!919454 m!1147353))

(assert (=> b!919454 m!1147349))

(declare-fun m!1147355 () Bool)

(assert (=> b!919447 m!1147355))

(declare-fun m!1147357 () Bool)

(assert (=> b!919447 m!1147357))

(declare-fun m!1147359 () Bool)

(assert (=> b!919447 m!1147359))

(assert (=> b!919447 m!1147355))

(declare-fun m!1147361 () Bool)

(assert (=> b!919447 m!1147361))

(declare-fun m!1147363 () Bool)

(assert (=> b!919447 m!1147363))

(declare-fun m!1147365 () Bool)

(assert (=> b!919447 m!1147365))

(declare-fun m!1147367 () Bool)

(assert (=> b!919447 m!1147367))

(assert (=> b!919447 m!1147357))

(declare-fun m!1147369 () Bool)

(assert (=> b!919451 m!1147369))

(declare-fun m!1147371 () Bool)

(assert (=> b!919451 m!1147371))

(declare-fun m!1147373 () Bool)

(assert (=> b!919451 m!1147373))

(push 1)

(assert (not b!919452))

(assert (not b!919446))

(assert (not b!919449))

(assert tp_is_empty!4587)

(assert (not b!919451))

(assert (not b!919450))

(assert (not start!82596))

(assert (not b!919447))

(assert (not b!919454))

(assert (not b!919453))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!919542 () Bool)

(declare-fun e!598862 () Bool)

(declare-fun e!598865 () Bool)

(assert (=> b!919542 (= e!598862 e!598865)))

(declare-fun c!149119 () Bool)

(assert (=> b!919542 (= c!149119 (is-EmptyLang!2472 lt!338150))))

(declare-fun b!919543 () Bool)

(declare-fun e!598864 () Bool)

(declare-fun derivativeStep!494 (Regex!2472 C!5514) Regex!2472)

(declare-fun head!1647 (List!9702) C!5514)

(declare-fun tail!1209 (List!9702) List!9702)

(assert (=> b!919543 (= e!598864 (matchR!1010 (derivativeStep!494 lt!338150 (head!1647 s!10566)) (tail!1209 s!10566)))))

(declare-fun b!919544 () Bool)

(declare-fun res!418061 () Bool)

(declare-fun e!598863 () Bool)

(assert (=> b!919544 (=> res!418061 e!598863)))

(assert (=> b!919544 (= res!418061 (not (is-ElementMatch!2472 lt!338150)))))

(assert (=> b!919544 (= e!598865 e!598863)))

(declare-fun b!919545 () Bool)

(declare-fun res!418057 () Bool)

(assert (=> b!919545 (=> res!418057 e!598863)))

(declare-fun e!598860 () Bool)

(assert (=> b!919545 (= res!418057 e!598860)))

(declare-fun res!418056 () Bool)

(assert (=> b!919545 (=> (not res!418056) (not e!598860))))

(declare-fun lt!338186 () Bool)

(assert (=> b!919545 (= res!418056 lt!338186)))

(declare-fun b!919547 () Bool)

(declare-fun call!55804 () Bool)

(assert (=> b!919547 (= e!598862 (= lt!338186 call!55804))))

(declare-fun b!919548 () Bool)

(declare-fun e!598861 () Bool)

(declare-fun e!598866 () Bool)

(assert (=> b!919548 (= e!598861 e!598866)))

(declare-fun res!418055 () Bool)

(assert (=> b!919548 (=> res!418055 e!598866)))

(assert (=> b!919548 (= res!418055 call!55804)))

(declare-fun bm!55799 () Bool)

(assert (=> bm!55799 (= call!55804 (isEmpty!5925 s!10566))))

(declare-fun b!919549 () Bool)

(assert (=> b!919549 (= e!598860 (= (head!1647 s!10566) (c!149111 lt!338150)))))

(declare-fun b!919550 () Bool)

(declare-fun res!418058 () Bool)

(assert (=> b!919550 (=> (not res!418058) (not e!598860))))

(assert (=> b!919550 (= res!418058 (isEmpty!5925 (tail!1209 s!10566)))))

(declare-fun b!919551 () Bool)

(declare-fun nullable!684 (Regex!2472) Bool)

(assert (=> b!919551 (= e!598864 (nullable!684 lt!338150))))

(declare-fun b!919552 () Bool)

(assert (=> b!919552 (= e!598865 (not lt!338186))))

(declare-fun b!919553 () Bool)

(declare-fun res!418060 () Bool)

(assert (=> b!919553 (=> (not res!418060) (not e!598860))))

(assert (=> b!919553 (= res!418060 (not call!55804))))

(declare-fun d!280204 () Bool)

(assert (=> d!280204 e!598862))

(declare-fun c!149121 () Bool)

(assert (=> d!280204 (= c!149121 (is-EmptyExpr!2472 lt!338150))))

(assert (=> d!280204 (= lt!338186 e!598864)))

(declare-fun c!149120 () Bool)

(assert (=> d!280204 (= c!149120 (isEmpty!5925 s!10566))))

(assert (=> d!280204 (validRegex!941 lt!338150)))

(assert (=> d!280204 (= (matchR!1010 lt!338150 s!10566) lt!338186)))

(declare-fun b!919546 () Bool)

(assert (=> b!919546 (= e!598863 e!598861)))

(declare-fun res!418062 () Bool)

(assert (=> b!919546 (=> (not res!418062) (not e!598861))))

(assert (=> b!919546 (= res!418062 (not lt!338186))))

(declare-fun b!919554 () Bool)

(assert (=> b!919554 (= e!598866 (not (= (head!1647 s!10566) (c!149111 lt!338150))))))

(declare-fun b!919555 () Bool)

(declare-fun res!418059 () Bool)

(assert (=> b!919555 (=> res!418059 e!598866)))

(assert (=> b!919555 (= res!418059 (not (isEmpty!5925 (tail!1209 s!10566))))))

(assert (= (and d!280204 c!149120) b!919551))

(assert (= (and d!280204 (not c!149120)) b!919543))

(assert (= (and d!280204 c!149121) b!919547))

(assert (= (and d!280204 (not c!149121)) b!919542))

(assert (= (and b!919542 c!149119) b!919552))

(assert (= (and b!919542 (not c!149119)) b!919544))

(assert (= (and b!919544 (not res!418061)) b!919545))

(assert (= (and b!919545 res!418056) b!919553))

(assert (= (and b!919553 res!418060) b!919550))

(assert (= (and b!919550 res!418058) b!919549))

(assert (= (and b!919545 (not res!418057)) b!919546))

(assert (= (and b!919546 res!418062) b!919548))

(assert (= (and b!919548 (not res!418055)) b!919555))

(assert (= (and b!919555 (not res!418059)) b!919554))

(assert (= (or b!919547 b!919548 b!919553) bm!55799))

(declare-fun m!1147421 () Bool)

(assert (=> b!919543 m!1147421))

(assert (=> b!919543 m!1147421))

(declare-fun m!1147423 () Bool)

(assert (=> b!919543 m!1147423))

(declare-fun m!1147425 () Bool)

(assert (=> b!919543 m!1147425))

(assert (=> b!919543 m!1147423))

(assert (=> b!919543 m!1147425))

(declare-fun m!1147427 () Bool)

(assert (=> b!919543 m!1147427))

(assert (=> b!919549 m!1147421))

(assert (=> bm!55799 m!1147363))

(declare-fun m!1147429 () Bool)

(assert (=> b!919551 m!1147429))

(assert (=> d!280204 m!1147363))

(declare-fun m!1147431 () Bool)

(assert (=> d!280204 m!1147431))

(assert (=> b!919555 m!1147425))

(assert (=> b!919555 m!1147425))

(declare-fun m!1147433 () Bool)

(assert (=> b!919555 m!1147433))

(assert (=> b!919554 m!1147421))

(assert (=> b!919550 m!1147425))

(assert (=> b!919550 m!1147425))

(assert (=> b!919550 m!1147433))

(assert (=> b!919451 d!280204))

(declare-fun d!280206 () Bool)

(declare-fun e!598880 () Bool)

(assert (=> d!280206 e!598880))

(declare-fun res!418065 () Bool)

(assert (=> d!280206 (=> (not res!418065) (not e!598880))))

(declare-fun lt!338189 () Regex!2472)

(assert (=> d!280206 (= res!418065 (validRegex!941 lt!338189))))

(declare-fun e!598884 () Regex!2472)

(assert (=> d!280206 (= lt!338189 e!598884)))

(declare-fun c!149136 () Bool)

(assert (=> d!280206 (= c!149136 (and (is-Concat!4305 (regTwo!5456 r!15766)) (is-EmptyExpr!2472 (regOne!5456 (regTwo!5456 r!15766)))))))

(assert (=> d!280206 (validRegex!941 (regTwo!5456 r!15766))))

(assert (=> d!280206 (= (removeUselessConcat!149 (regTwo!5456 r!15766)) lt!338189)))

(declare-fun b!919578 () Bool)

(declare-fun e!598879 () Regex!2472)

(declare-fun call!55815 () Regex!2472)

(declare-fun call!55819 () Regex!2472)

(assert (=> b!919578 (= e!598879 (Union!2472 call!55815 call!55819))))

(declare-fun bm!55810 () Bool)

(declare-fun call!55817 () Regex!2472)

(assert (=> bm!55810 (= call!55815 call!55817)))

(declare-fun bm!55811 () Bool)

(declare-fun call!55818 () Regex!2472)

(declare-fun call!55816 () Regex!2472)

(assert (=> bm!55811 (= call!55818 call!55816)))

(declare-fun b!919579 () Bool)

(declare-fun c!149133 () Bool)

(assert (=> b!919579 (= c!149133 (is-Star!2472 (regTwo!5456 r!15766)))))

(declare-fun e!598882 () Regex!2472)

(assert (=> b!919579 (= e!598879 e!598882)))

(declare-fun b!919580 () Bool)

(declare-fun e!598883 () Regex!2472)

(assert (=> b!919580 (= e!598883 e!598879)))

(declare-fun c!149135 () Bool)

(assert (=> b!919580 (= c!149135 (is-Union!2472 (regTwo!5456 r!15766)))))

(declare-fun b!919581 () Bool)

(declare-fun e!598881 () Regex!2472)

(assert (=> b!919581 (= e!598881 call!55817)))

(declare-fun c!149132 () Bool)

(declare-fun bm!55812 () Bool)

(assert (=> bm!55812 (= call!55816 (removeUselessConcat!149 (ite c!149136 (regTwo!5456 (regTwo!5456 r!15766)) (ite c!149132 (regOne!5456 (regTwo!5456 r!15766)) (ite c!149135 (regTwo!5457 (regTwo!5456 r!15766)) (reg!2801 (regTwo!5456 r!15766)))))))))

(declare-fun b!919582 () Bool)

(assert (=> b!919582 (= e!598882 (regTwo!5456 r!15766))))

(declare-fun b!919583 () Bool)

(assert (=> b!919583 (= c!149132 (is-Concat!4305 (regTwo!5456 r!15766)))))

(assert (=> b!919583 (= e!598881 e!598883)))

(declare-fun b!919584 () Bool)

(assert (=> b!919584 (= e!598884 call!55816)))

(declare-fun b!919585 () Bool)

(assert (=> b!919585 (= e!598880 (= (nullable!684 lt!338189) (nullable!684 (regTwo!5456 r!15766))))))

(declare-fun b!919586 () Bool)

(assert (=> b!919586 (= e!598882 (Star!2472 call!55819))))

(declare-fun b!919587 () Bool)

(assert (=> b!919587 (= e!598884 e!598881)))

(declare-fun c!149134 () Bool)

(assert (=> b!919587 (= c!149134 (and (is-Concat!4305 (regTwo!5456 r!15766)) (is-EmptyExpr!2472 (regTwo!5456 (regTwo!5456 r!15766)))))))

(declare-fun bm!55813 () Bool)

(assert (=> bm!55813 (= call!55817 (removeUselessConcat!149 (ite c!149134 (regOne!5456 (regTwo!5456 r!15766)) (ite c!149132 (regTwo!5456 (regTwo!5456 r!15766)) (regOne!5457 (regTwo!5456 r!15766))))))))

(declare-fun bm!55814 () Bool)

(assert (=> bm!55814 (= call!55819 call!55818)))

(declare-fun b!919588 () Bool)

(assert (=> b!919588 (= e!598883 (Concat!4305 call!55818 call!55815))))

(assert (= (and d!280206 c!149136) b!919584))

(assert (= (and d!280206 (not c!149136)) b!919587))

(assert (= (and b!919587 c!149134) b!919581))

(assert (= (and b!919587 (not c!149134)) b!919583))

(assert (= (and b!919583 c!149132) b!919588))

(assert (= (and b!919583 (not c!149132)) b!919580))

(assert (= (and b!919580 c!149135) b!919578))

(assert (= (and b!919580 (not c!149135)) b!919579))

(assert (= (and b!919579 c!149133) b!919586))

(assert (= (and b!919579 (not c!149133)) b!919582))

(assert (= (or b!919578 b!919586) bm!55814))

(assert (= (or b!919588 b!919578) bm!55810))

(assert (= (or b!919588 bm!55814) bm!55811))

(assert (= (or b!919581 bm!55810) bm!55813))

(assert (= (or b!919584 bm!55811) bm!55812))

(assert (= (and d!280206 res!418065) b!919585))

(declare-fun m!1147435 () Bool)

(assert (=> d!280206 m!1147435))

(assert (=> d!280206 m!1147339))

(declare-fun m!1147437 () Bool)

(assert (=> bm!55812 m!1147437))

(declare-fun m!1147439 () Bool)

(assert (=> b!919585 m!1147439))

(declare-fun m!1147441 () Bool)

(assert (=> b!919585 m!1147441))

(declare-fun m!1147443 () Bool)

(assert (=> bm!55813 m!1147443))

(assert (=> b!919451 d!280206))

(declare-fun d!280208 () Bool)

(declare-fun e!598886 () Bool)

(assert (=> d!280208 e!598886))

(declare-fun res!418066 () Bool)

(assert (=> d!280208 (=> (not res!418066) (not e!598886))))

(declare-fun lt!338190 () Regex!2472)

(assert (=> d!280208 (= res!418066 (validRegex!941 lt!338190))))

(declare-fun e!598890 () Regex!2472)

(assert (=> d!280208 (= lt!338190 e!598890)))

(declare-fun c!149141 () Bool)

(assert (=> d!280208 (= c!149141 (and (is-Concat!4305 (regOne!5456 r!15766)) (is-EmptyExpr!2472 (regOne!5456 (regOne!5456 r!15766)))))))

(assert (=> d!280208 (validRegex!941 (regOne!5456 r!15766))))

(assert (=> d!280208 (= (removeUselessConcat!149 (regOne!5456 r!15766)) lt!338190)))

(declare-fun b!919589 () Bool)

(declare-fun e!598885 () Regex!2472)

(declare-fun call!55820 () Regex!2472)

(declare-fun call!55824 () Regex!2472)

(assert (=> b!919589 (= e!598885 (Union!2472 call!55820 call!55824))))

(declare-fun bm!55815 () Bool)

(declare-fun call!55822 () Regex!2472)

(assert (=> bm!55815 (= call!55820 call!55822)))

(declare-fun bm!55816 () Bool)

(declare-fun call!55823 () Regex!2472)

(declare-fun call!55821 () Regex!2472)

(assert (=> bm!55816 (= call!55823 call!55821)))

(declare-fun b!919590 () Bool)

(declare-fun c!149138 () Bool)

(assert (=> b!919590 (= c!149138 (is-Star!2472 (regOne!5456 r!15766)))))

(declare-fun e!598888 () Regex!2472)

(assert (=> b!919590 (= e!598885 e!598888)))

(declare-fun b!919591 () Bool)

(declare-fun e!598889 () Regex!2472)

(assert (=> b!919591 (= e!598889 e!598885)))

(declare-fun c!149140 () Bool)

(assert (=> b!919591 (= c!149140 (is-Union!2472 (regOne!5456 r!15766)))))

(declare-fun b!919592 () Bool)

(declare-fun e!598887 () Regex!2472)

(assert (=> b!919592 (= e!598887 call!55822)))

(declare-fun bm!55817 () Bool)

(declare-fun c!149137 () Bool)

(assert (=> bm!55817 (= call!55821 (removeUselessConcat!149 (ite c!149141 (regTwo!5456 (regOne!5456 r!15766)) (ite c!149137 (regOne!5456 (regOne!5456 r!15766)) (ite c!149140 (regTwo!5457 (regOne!5456 r!15766)) (reg!2801 (regOne!5456 r!15766)))))))))

(declare-fun b!919593 () Bool)

(assert (=> b!919593 (= e!598888 (regOne!5456 r!15766))))

(declare-fun b!919594 () Bool)

(assert (=> b!919594 (= c!149137 (is-Concat!4305 (regOne!5456 r!15766)))))

(assert (=> b!919594 (= e!598887 e!598889)))

(declare-fun b!919595 () Bool)

(assert (=> b!919595 (= e!598890 call!55821)))

(declare-fun b!919596 () Bool)

(assert (=> b!919596 (= e!598886 (= (nullable!684 lt!338190) (nullable!684 (regOne!5456 r!15766))))))

(declare-fun b!919597 () Bool)

(assert (=> b!919597 (= e!598888 (Star!2472 call!55824))))

(declare-fun b!919598 () Bool)

(assert (=> b!919598 (= e!598890 e!598887)))

(declare-fun c!149139 () Bool)

(assert (=> b!919598 (= c!149139 (and (is-Concat!4305 (regOne!5456 r!15766)) (is-EmptyExpr!2472 (regTwo!5456 (regOne!5456 r!15766)))))))

(declare-fun bm!55818 () Bool)

(assert (=> bm!55818 (= call!55822 (removeUselessConcat!149 (ite c!149139 (regOne!5456 (regOne!5456 r!15766)) (ite c!149137 (regTwo!5456 (regOne!5456 r!15766)) (regOne!5457 (regOne!5456 r!15766))))))))

(declare-fun bm!55819 () Bool)

(assert (=> bm!55819 (= call!55824 call!55823)))

(declare-fun b!919599 () Bool)

(assert (=> b!919599 (= e!598889 (Concat!4305 call!55823 call!55820))))

(assert (= (and d!280208 c!149141) b!919595))

(assert (= (and d!280208 (not c!149141)) b!919598))

(assert (= (and b!919598 c!149139) b!919592))

(assert (= (and b!919598 (not c!149139)) b!919594))

(assert (= (and b!919594 c!149137) b!919599))

(assert (= (and b!919594 (not c!149137)) b!919591))

(assert (= (and b!919591 c!149140) b!919589))

(assert (= (and b!919591 (not c!149140)) b!919590))

(assert (= (and b!919590 c!149138) b!919597))

(assert (= (and b!919590 (not c!149138)) b!919593))

(assert (= (or b!919589 b!919597) bm!55819))

(assert (= (or b!919599 b!919589) bm!55815))

(assert (= (or b!919599 bm!55819) bm!55816))

(assert (= (or b!919592 bm!55815) bm!55818))

(assert (= (or b!919595 bm!55816) bm!55817))

(assert (= (and d!280208 res!418066) b!919596))

(declare-fun m!1147445 () Bool)

(assert (=> d!280208 m!1147445))

(declare-fun m!1147447 () Bool)

(assert (=> d!280208 m!1147447))

(declare-fun m!1147449 () Bool)

(assert (=> bm!55817 m!1147449))

(declare-fun m!1147451 () Bool)

(assert (=> b!919596 m!1147451))

(declare-fun m!1147453 () Bool)

(assert (=> b!919596 m!1147453))

(declare-fun m!1147455 () Bool)

(assert (=> bm!55818 m!1147455))

(assert (=> b!919451 d!280208))

(declare-fun bs!236492 () Bool)

(declare-fun b!919638 () Bool)

(assert (= bs!236492 (and b!919638 b!919447)))

(declare-fun lambda!29847 () Int)

(assert (=> bs!236492 (not (= lambda!29847 lambda!29823))))

(assert (=> bs!236492 (not (= lambda!29847 lambda!29824))))

(declare-fun bs!236493 () Bool)

(assert (= bs!236493 (and b!919638 b!919454)))

(assert (=> bs!236493 (not (= lambda!29847 lambda!29825))))

(assert (=> bs!236493 (not (= lambda!29847 lambda!29826))))

(assert (=> b!919638 true))

(assert (=> b!919638 true))

(declare-fun bs!236494 () Bool)

(declare-fun b!919633 () Bool)

(assert (= bs!236494 (and b!919633 b!919447)))

(declare-fun lambda!29848 () Int)

(assert (=> bs!236494 (= lambda!29848 lambda!29824)))

(declare-fun bs!236495 () Bool)

(assert (= bs!236495 (and b!919633 b!919454)))

(assert (=> bs!236495 (= (and (= (regOne!5456 r!15766) lt!338153) (= (regTwo!5456 r!15766) lt!338145)) (= lambda!29848 lambda!29826))))

(assert (=> bs!236494 (not (= lambda!29848 lambda!29823))))

(declare-fun bs!236496 () Bool)

(assert (= bs!236496 (and b!919633 b!919638)))

(assert (=> bs!236496 (not (= lambda!29848 lambda!29847))))

(assert (=> bs!236495 (not (= lambda!29848 lambda!29825))))

(assert (=> b!919633 true))

(assert (=> b!919633 true))

(declare-fun b!919632 () Bool)

(declare-fun e!598911 () Bool)

(assert (=> b!919632 (= e!598911 (= s!10566 (Cons!9686 (c!149111 r!15766) Nil!9686)))))

(declare-fun e!598909 () Bool)

(declare-fun call!55830 () Bool)

(assert (=> b!919633 (= e!598909 call!55830)))

(declare-fun b!919634 () Bool)

(declare-fun c!149152 () Bool)

(assert (=> b!919634 (= c!149152 (is-Union!2472 r!15766))))

(declare-fun e!598915 () Bool)

(assert (=> b!919634 (= e!598911 e!598915)))

(declare-fun b!919635 () Bool)

(declare-fun e!598912 () Bool)

(assert (=> b!919635 (= e!598915 e!598912)))

(declare-fun res!418084 () Bool)

(assert (=> b!919635 (= res!418084 (matchRSpec!273 (regOne!5457 r!15766) s!10566))))

(assert (=> b!919635 (=> res!418084 e!598912)))

(declare-fun bm!55824 () Bool)

(declare-fun call!55829 () Bool)

(assert (=> bm!55824 (= call!55829 (isEmpty!5925 s!10566))))

(declare-fun b!919636 () Bool)

(assert (=> b!919636 (= e!598912 (matchRSpec!273 (regTwo!5457 r!15766) s!10566))))

(declare-fun b!919637 () Bool)

(declare-fun e!598913 () Bool)

(declare-fun e!598914 () Bool)

(assert (=> b!919637 (= e!598913 e!598914)))

(declare-fun res!418083 () Bool)

(assert (=> b!919637 (= res!418083 (not (is-EmptyLang!2472 r!15766)))))

(assert (=> b!919637 (=> (not res!418083) (not e!598914))))

(declare-fun bm!55825 () Bool)

(declare-fun c!149151 () Bool)

(assert (=> bm!55825 (= call!55830 (Exists!243 (ite c!149151 lambda!29847 lambda!29848)))))

(declare-fun e!598910 () Bool)

(assert (=> b!919638 (= e!598910 call!55830)))

(declare-fun b!919639 () Bool)

(assert (=> b!919639 (= e!598915 e!598909)))

(assert (=> b!919639 (= c!149151 (is-Star!2472 r!15766))))

(declare-fun b!919640 () Bool)

(declare-fun res!418085 () Bool)

(assert (=> b!919640 (=> res!418085 e!598910)))

(assert (=> b!919640 (= res!418085 call!55829)))

(assert (=> b!919640 (= e!598909 e!598910)))

(declare-fun d!280210 () Bool)

(declare-fun c!149150 () Bool)

(assert (=> d!280210 (= c!149150 (is-EmptyExpr!2472 r!15766))))

(assert (=> d!280210 (= (matchRSpec!273 r!15766 s!10566) e!598913)))

(declare-fun b!919641 () Bool)

(declare-fun c!149153 () Bool)

(assert (=> b!919641 (= c!149153 (is-ElementMatch!2472 r!15766))))

(assert (=> b!919641 (= e!598914 e!598911)))

(declare-fun b!919642 () Bool)

(assert (=> b!919642 (= e!598913 call!55829)))

(assert (= (and d!280210 c!149150) b!919642))

(assert (= (and d!280210 (not c!149150)) b!919637))

(assert (= (and b!919637 res!418083) b!919641))

(assert (= (and b!919641 c!149153) b!919632))

(assert (= (and b!919641 (not c!149153)) b!919634))

(assert (= (and b!919634 c!149152) b!919635))

(assert (= (and b!919634 (not c!149152)) b!919639))

(assert (= (and b!919635 (not res!418084)) b!919636))

(assert (= (and b!919639 c!149151) b!919640))

(assert (= (and b!919639 (not c!149151)) b!919633))

(assert (= (and b!919640 (not res!418085)) b!919638))

(assert (= (or b!919638 b!919633) bm!55825))

(assert (= (or b!919642 b!919640) bm!55824))

(declare-fun m!1147461 () Bool)

(assert (=> b!919635 m!1147461))

(assert (=> bm!55824 m!1147363))

(declare-fun m!1147463 () Bool)

(assert (=> b!919636 m!1147463))

(declare-fun m!1147465 () Bool)

(assert (=> bm!55825 m!1147465))

(assert (=> b!919446 d!280210))

(declare-fun b!919643 () Bool)

(declare-fun e!598918 () Bool)

(declare-fun e!598921 () Bool)

(assert (=> b!919643 (= e!598918 e!598921)))

(declare-fun c!149154 () Bool)

(assert (=> b!919643 (= c!149154 (is-EmptyLang!2472 r!15766))))

(declare-fun b!919644 () Bool)

(declare-fun e!598920 () Bool)

(assert (=> b!919644 (= e!598920 (matchR!1010 (derivativeStep!494 r!15766 (head!1647 s!10566)) (tail!1209 s!10566)))))

(declare-fun b!919645 () Bool)

(declare-fun res!418092 () Bool)

(declare-fun e!598919 () Bool)

(assert (=> b!919645 (=> res!418092 e!598919)))

(assert (=> b!919645 (= res!418092 (not (is-ElementMatch!2472 r!15766)))))

(assert (=> b!919645 (= e!598921 e!598919)))

(declare-fun b!919646 () Bool)

(declare-fun res!418088 () Bool)

(assert (=> b!919646 (=> res!418088 e!598919)))

(declare-fun e!598916 () Bool)

(assert (=> b!919646 (= res!418088 e!598916)))

(declare-fun res!418087 () Bool)

(assert (=> b!919646 (=> (not res!418087) (not e!598916))))

(declare-fun lt!338193 () Bool)

(assert (=> b!919646 (= res!418087 lt!338193)))

(declare-fun b!919648 () Bool)

(declare-fun call!55831 () Bool)

(assert (=> b!919648 (= e!598918 (= lt!338193 call!55831))))

(declare-fun b!919649 () Bool)

(declare-fun e!598917 () Bool)

(declare-fun e!598922 () Bool)

(assert (=> b!919649 (= e!598917 e!598922)))

(declare-fun res!418086 () Bool)

(assert (=> b!919649 (=> res!418086 e!598922)))

(assert (=> b!919649 (= res!418086 call!55831)))

(declare-fun bm!55826 () Bool)

(assert (=> bm!55826 (= call!55831 (isEmpty!5925 s!10566))))

(declare-fun b!919650 () Bool)

(assert (=> b!919650 (= e!598916 (= (head!1647 s!10566) (c!149111 r!15766)))))

(declare-fun b!919651 () Bool)

(declare-fun res!418089 () Bool)

(assert (=> b!919651 (=> (not res!418089) (not e!598916))))

(assert (=> b!919651 (= res!418089 (isEmpty!5925 (tail!1209 s!10566)))))

(declare-fun b!919652 () Bool)

(assert (=> b!919652 (= e!598920 (nullable!684 r!15766))))

(declare-fun b!919653 () Bool)

(assert (=> b!919653 (= e!598921 (not lt!338193))))

(declare-fun b!919654 () Bool)

(declare-fun res!418091 () Bool)

(assert (=> b!919654 (=> (not res!418091) (not e!598916))))

(assert (=> b!919654 (= res!418091 (not call!55831))))

(declare-fun d!280220 () Bool)

(assert (=> d!280220 e!598918))

(declare-fun c!149156 () Bool)

(assert (=> d!280220 (= c!149156 (is-EmptyExpr!2472 r!15766))))

(assert (=> d!280220 (= lt!338193 e!598920)))

(declare-fun c!149155 () Bool)

(assert (=> d!280220 (= c!149155 (isEmpty!5925 s!10566))))

(assert (=> d!280220 (validRegex!941 r!15766)))

(assert (=> d!280220 (= (matchR!1010 r!15766 s!10566) lt!338193)))

(declare-fun b!919647 () Bool)

(assert (=> b!919647 (= e!598919 e!598917)))

(declare-fun res!418093 () Bool)

(assert (=> b!919647 (=> (not res!418093) (not e!598917))))

(assert (=> b!919647 (= res!418093 (not lt!338193))))

(declare-fun b!919655 () Bool)

(assert (=> b!919655 (= e!598922 (not (= (head!1647 s!10566) (c!149111 r!15766))))))

(declare-fun b!919656 () Bool)

(declare-fun res!418090 () Bool)

(assert (=> b!919656 (=> res!418090 e!598922)))

(assert (=> b!919656 (= res!418090 (not (isEmpty!5925 (tail!1209 s!10566))))))

(assert (= (and d!280220 c!149155) b!919652))

(assert (= (and d!280220 (not c!149155)) b!919644))

(assert (= (and d!280220 c!149156) b!919648))

(assert (= (and d!280220 (not c!149156)) b!919643))

(assert (= (and b!919643 c!149154) b!919653))

(assert (= (and b!919643 (not c!149154)) b!919645))

(assert (= (and b!919645 (not res!418092)) b!919646))

(assert (= (and b!919646 res!418087) b!919654))

(assert (= (and b!919654 res!418091) b!919651))

(assert (= (and b!919651 res!418089) b!919650))

(assert (= (and b!919646 (not res!418088)) b!919647))

(assert (= (and b!919647 res!418093) b!919649))

(assert (= (and b!919649 (not res!418086)) b!919656))

(assert (= (and b!919656 (not res!418090)) b!919655))

(assert (= (or b!919648 b!919649 b!919654) bm!55826))

(assert (=> b!919644 m!1147421))

(assert (=> b!919644 m!1147421))

(declare-fun m!1147467 () Bool)

(assert (=> b!919644 m!1147467))

(assert (=> b!919644 m!1147425))

(assert (=> b!919644 m!1147467))

(assert (=> b!919644 m!1147425))

(declare-fun m!1147469 () Bool)

(assert (=> b!919644 m!1147469))

(assert (=> b!919650 m!1147421))

(assert (=> bm!55826 m!1147363))

(declare-fun m!1147471 () Bool)

(assert (=> b!919652 m!1147471))

(assert (=> d!280220 m!1147363))

(assert (=> d!280220 m!1147335))

(assert (=> b!919656 m!1147425))

(assert (=> b!919656 m!1147425))

(assert (=> b!919656 m!1147433))

(assert (=> b!919655 m!1147421))

(assert (=> b!919651 m!1147425))

(assert (=> b!919651 m!1147425))

(assert (=> b!919651 m!1147433))

(assert (=> b!919446 d!280220))

(declare-fun d!280222 () Bool)

(assert (=> d!280222 (= (matchR!1010 r!15766 s!10566) (matchRSpec!273 r!15766 s!10566))))

(declare-fun lt!338196 () Unit!14563)

(declare-fun choose!5624 (Regex!2472 List!9702) Unit!14563)

(assert (=> d!280222 (= lt!338196 (choose!5624 r!15766 s!10566))))

(assert (=> d!280222 (validRegex!941 r!15766)))

(assert (=> d!280222 (= (mainMatchTheorem!273 r!15766 s!10566) lt!338196)))

(declare-fun bs!236497 () Bool)

(assert (= bs!236497 d!280222))

(assert (=> bs!236497 m!1147331))

(assert (=> bs!236497 m!1147329))

(declare-fun m!1147473 () Bool)

(assert (=> bs!236497 m!1147473))

(assert (=> bs!236497 m!1147335))

(assert (=> b!919446 d!280222))

(declare-fun b!919679 () Bool)

(declare-fun e!598942 () Bool)

(declare-fun call!55839 () Bool)

(assert (=> b!919679 (= e!598942 call!55839)))

(declare-fun d!280224 () Bool)

(declare-fun res!418111 () Bool)

(declare-fun e!598945 () Bool)

(assert (=> d!280224 (=> res!418111 e!598945)))

(assert (=> d!280224 (= res!418111 (is-ElementMatch!2472 r!15766))))

(assert (=> d!280224 (= (validRegex!941 r!15766) e!598945)))

(declare-fun b!919680 () Bool)

(declare-fun e!598944 () Bool)

(declare-fun e!598943 () Bool)

(assert (=> b!919680 (= e!598944 e!598943)))

(declare-fun res!418110 () Bool)

(assert (=> b!919680 (= res!418110 (not (nullable!684 (reg!2801 r!15766))))))

(assert (=> b!919680 (=> (not res!418110) (not e!598943))))

(declare-fun b!919681 () Bool)

(declare-fun e!598939 () Bool)

(assert (=> b!919681 (= e!598944 e!598939)))

(declare-fun c!149162 () Bool)

(assert (=> b!919681 (= c!149162 (is-Union!2472 r!15766))))

(declare-fun b!919682 () Bool)

(declare-fun res!418108 () Bool)

(declare-fun e!598941 () Bool)

(assert (=> b!919682 (=> res!418108 e!598941)))

(assert (=> b!919682 (= res!418108 (not (is-Concat!4305 r!15766)))))

(assert (=> b!919682 (= e!598939 e!598941)))

(declare-fun b!919683 () Bool)

(declare-fun e!598940 () Bool)

(assert (=> b!919683 (= e!598940 call!55839)))

(declare-fun call!55840 () Bool)

(declare-fun bm!55833 () Bool)

(declare-fun c!149161 () Bool)

(assert (=> bm!55833 (= call!55840 (validRegex!941 (ite c!149161 (reg!2801 r!15766) (ite c!149162 (regTwo!5457 r!15766) (regTwo!5456 r!15766)))))))

(declare-fun bm!55834 () Bool)

(declare-fun call!55838 () Bool)

(assert (=> bm!55834 (= call!55838 (validRegex!941 (ite c!149162 (regOne!5457 r!15766) (regOne!5456 r!15766))))))

(declare-fun b!919684 () Bool)

(assert (=> b!919684 (= e!598945 e!598944)))

(assert (=> b!919684 (= c!149161 (is-Star!2472 r!15766))))

(declare-fun b!919685 () Bool)

(assert (=> b!919685 (= e!598943 call!55840)))

(declare-fun bm!55835 () Bool)

(assert (=> bm!55835 (= call!55839 call!55840)))

(declare-fun b!919686 () Bool)

(declare-fun res!418109 () Bool)

(assert (=> b!919686 (=> (not res!418109) (not e!598940))))

(assert (=> b!919686 (= res!418109 call!55838)))

(assert (=> b!919686 (= e!598939 e!598940)))

(declare-fun b!919687 () Bool)

(assert (=> b!919687 (= e!598941 e!598942)))

(declare-fun res!418112 () Bool)

(assert (=> b!919687 (=> (not res!418112) (not e!598942))))

(assert (=> b!919687 (= res!418112 call!55838)))

(assert (= (and d!280224 (not res!418111)) b!919684))

(assert (= (and b!919684 c!149161) b!919680))

(assert (= (and b!919684 (not c!149161)) b!919681))

(assert (= (and b!919680 res!418110) b!919685))

(assert (= (and b!919681 c!149162) b!919686))

(assert (= (and b!919681 (not c!149162)) b!919682))

(assert (= (and b!919686 res!418109) b!919683))

(assert (= (and b!919682 (not res!418108)) b!919687))

(assert (= (and b!919687 res!418112) b!919679))

(assert (= (or b!919683 b!919679) bm!55835))

(assert (= (or b!919686 b!919687) bm!55834))

(assert (= (or b!919685 bm!55835) bm!55833))

(declare-fun m!1147481 () Bool)

(assert (=> b!919680 m!1147481))

(declare-fun m!1147483 () Bool)

(assert (=> bm!55833 m!1147483))

(declare-fun m!1147485 () Bool)

(assert (=> bm!55834 m!1147485))

(assert (=> start!82596 d!280224))

(declare-fun d!280228 () Bool)

(declare-fun choose!5625 (Int) Bool)

(assert (=> d!280228 (= (Exists!243 lambda!29826) (choose!5625 lambda!29826))))

(declare-fun bs!236501 () Bool)

(assert (= bs!236501 d!280228))

(declare-fun m!1147487 () Bool)

(assert (=> bs!236501 m!1147487))

(assert (=> b!919454 d!280228))

(declare-fun b!919688 () Bool)

(declare-fun e!598949 () Bool)

(declare-fun call!55842 () Bool)

(assert (=> b!919688 (= e!598949 call!55842)))

(declare-fun d!280230 () Bool)

(declare-fun res!418116 () Bool)

(declare-fun e!598952 () Bool)

(assert (=> d!280230 (=> res!418116 e!598952)))

(assert (=> d!280230 (= res!418116 (is-ElementMatch!2472 (regTwo!5456 r!15766)))))

(assert (=> d!280230 (= (validRegex!941 (regTwo!5456 r!15766)) e!598952)))

(declare-fun b!919689 () Bool)

(declare-fun e!598951 () Bool)

(declare-fun e!598950 () Bool)

(assert (=> b!919689 (= e!598951 e!598950)))

(declare-fun res!418115 () Bool)

(assert (=> b!919689 (= res!418115 (not (nullable!684 (reg!2801 (regTwo!5456 r!15766)))))))

(assert (=> b!919689 (=> (not res!418115) (not e!598950))))

(declare-fun b!919690 () Bool)

(declare-fun e!598946 () Bool)

(assert (=> b!919690 (= e!598951 e!598946)))

(declare-fun c!149164 () Bool)

(assert (=> b!919690 (= c!149164 (is-Union!2472 (regTwo!5456 r!15766)))))

(declare-fun b!919691 () Bool)

(declare-fun res!418113 () Bool)

(declare-fun e!598948 () Bool)

(assert (=> b!919691 (=> res!418113 e!598948)))

(assert (=> b!919691 (= res!418113 (not (is-Concat!4305 (regTwo!5456 r!15766))))))

(assert (=> b!919691 (= e!598946 e!598948)))

(declare-fun b!919692 () Bool)

(declare-fun e!598947 () Bool)

(assert (=> b!919692 (= e!598947 call!55842)))

(declare-fun c!149163 () Bool)

(declare-fun bm!55836 () Bool)

(declare-fun call!55843 () Bool)

(assert (=> bm!55836 (= call!55843 (validRegex!941 (ite c!149163 (reg!2801 (regTwo!5456 r!15766)) (ite c!149164 (regTwo!5457 (regTwo!5456 r!15766)) (regTwo!5456 (regTwo!5456 r!15766))))))))

(declare-fun bm!55837 () Bool)

(declare-fun call!55841 () Bool)

(assert (=> bm!55837 (= call!55841 (validRegex!941 (ite c!149164 (regOne!5457 (regTwo!5456 r!15766)) (regOne!5456 (regTwo!5456 r!15766)))))))

(declare-fun b!919693 () Bool)

(assert (=> b!919693 (= e!598952 e!598951)))

(assert (=> b!919693 (= c!149163 (is-Star!2472 (regTwo!5456 r!15766)))))

(declare-fun b!919694 () Bool)

(assert (=> b!919694 (= e!598950 call!55843)))

(declare-fun bm!55838 () Bool)

(assert (=> bm!55838 (= call!55842 call!55843)))

(declare-fun b!919695 () Bool)

(declare-fun res!418114 () Bool)

(assert (=> b!919695 (=> (not res!418114) (not e!598947))))

(assert (=> b!919695 (= res!418114 call!55841)))

(assert (=> b!919695 (= e!598946 e!598947)))

(declare-fun b!919696 () Bool)

(assert (=> b!919696 (= e!598948 e!598949)))

(declare-fun res!418117 () Bool)

(assert (=> b!919696 (=> (not res!418117) (not e!598949))))

(assert (=> b!919696 (= res!418117 call!55841)))

(assert (= (and d!280230 (not res!418116)) b!919693))

(assert (= (and b!919693 c!149163) b!919689))

(assert (= (and b!919693 (not c!149163)) b!919690))

(assert (= (and b!919689 res!418115) b!919694))

(assert (= (and b!919690 c!149164) b!919695))

(assert (= (and b!919690 (not c!149164)) b!919691))

(assert (= (and b!919695 res!418114) b!919692))

(assert (= (and b!919691 (not res!418113)) b!919696))

(assert (= (and b!919696 res!418117) b!919688))

(assert (= (or b!919692 b!919688) bm!55838))

(assert (= (or b!919695 b!919696) bm!55837))

(assert (= (or b!919694 bm!55838) bm!55836))

(declare-fun m!1147489 () Bool)

(assert (=> b!919689 m!1147489))

(declare-fun m!1147491 () Bool)

(assert (=> bm!55836 m!1147491))

(declare-fun m!1147493 () Bool)

(assert (=> bm!55837 m!1147493))

(assert (=> b!919454 d!280230))

(declare-fun d!280232 () Bool)

(assert (=> d!280232 (= (Exists!243 lambda!29825) (choose!5625 lambda!29825))))

(declare-fun bs!236502 () Bool)

(assert (= bs!236502 d!280232))

(declare-fun m!1147495 () Bool)

(assert (=> bs!236502 m!1147495))

(assert (=> b!919454 d!280232))

(declare-fun d!280234 () Bool)

(assert (=> d!280234 (= (matchR!1010 lt!338150 s!10566) (matchRSpec!273 lt!338150 s!10566))))

(declare-fun lt!338198 () Unit!14563)

(assert (=> d!280234 (= lt!338198 (choose!5624 lt!338150 s!10566))))

(assert (=> d!280234 (validRegex!941 lt!338150)))

(assert (=> d!280234 (= (mainMatchTheorem!273 lt!338150 s!10566) lt!338198)))

(declare-fun bs!236503 () Bool)

(assert (= bs!236503 d!280234))

(assert (=> bs!236503 m!1147369))

(assert (=> bs!236503 m!1147351))

(declare-fun m!1147497 () Bool)

(assert (=> bs!236503 m!1147497))

(assert (=> bs!236503 m!1147431))

(assert (=> b!919454 d!280234))

(declare-fun bs!236504 () Bool)

(declare-fun d!280236 () Bool)

(assert (= bs!236504 (and d!280236 b!919447)))

(declare-fun lambda!29854 () Int)

(assert (=> bs!236504 (not (= lambda!29854 lambda!29824))))

(declare-fun bs!236505 () Bool)

(assert (= bs!236505 (and d!280236 b!919633)))

(assert (=> bs!236505 (not (= lambda!29854 lambda!29848))))

(declare-fun bs!236506 () Bool)

(assert (= bs!236506 (and d!280236 b!919454)))

(assert (=> bs!236506 (not (= lambda!29854 lambda!29826))))

(assert (=> bs!236504 (= (and (= lt!338153 (regOne!5456 r!15766)) (= lt!338145 (regTwo!5456 r!15766))) (= lambda!29854 lambda!29823))))

(declare-fun bs!236507 () Bool)

(assert (= bs!236507 (and d!280236 b!919638)))

(assert (=> bs!236507 (not (= lambda!29854 lambda!29847))))

(assert (=> bs!236506 (= lambda!29854 lambda!29825)))

(assert (=> d!280236 true))

(assert (=> d!280236 true))

(assert (=> d!280236 true))

(assert (=> d!280236 (= (isDefined!1749 (findConcatSeparation!213 lt!338153 lt!338145 Nil!9686 s!10566 s!10566)) (Exists!243 lambda!29854))))

(declare-fun lt!338201 () Unit!14563)

(declare-fun choose!5626 (Regex!2472 Regex!2472 List!9702) Unit!14563)

(assert (=> d!280236 (= lt!338201 (choose!5626 lt!338153 lt!338145 s!10566))))

(assert (=> d!280236 (validRegex!941 lt!338153)))

(assert (=> d!280236 (= (lemmaFindConcatSeparationEquivalentToExists!213 lt!338153 lt!338145 s!10566) lt!338201)))

(declare-fun bs!236508 () Bool)

(assert (= bs!236508 d!280236))

(assert (=> bs!236508 m!1147345))

(declare-fun m!1147499 () Bool)

(assert (=> bs!236508 m!1147499))

(declare-fun m!1147501 () Bool)

(assert (=> bs!236508 m!1147501))

(declare-fun m!1147503 () Bool)

(assert (=> bs!236508 m!1147503))

(assert (=> bs!236508 m!1147345))

(assert (=> bs!236508 m!1147347))

(assert (=> b!919454 d!280236))

(declare-fun bs!236509 () Bool)

(declare-fun d!280238 () Bool)

(assert (= bs!236509 (and d!280238 b!919447)))

(declare-fun lambda!29859 () Int)

(assert (=> bs!236509 (not (= lambda!29859 lambda!29824))))

(declare-fun bs!236510 () Bool)

(assert (= bs!236510 (and d!280238 d!280236)))

(assert (=> bs!236510 (= lambda!29859 lambda!29854)))

(declare-fun bs!236511 () Bool)

(assert (= bs!236511 (and d!280238 b!919633)))

(assert (=> bs!236511 (not (= lambda!29859 lambda!29848))))

(declare-fun bs!236512 () Bool)

(assert (= bs!236512 (and d!280238 b!919454)))

(assert (=> bs!236512 (not (= lambda!29859 lambda!29826))))

(assert (=> bs!236509 (= (and (= lt!338153 (regOne!5456 r!15766)) (= lt!338145 (regTwo!5456 r!15766))) (= lambda!29859 lambda!29823))))

(declare-fun bs!236513 () Bool)

(assert (= bs!236513 (and d!280238 b!919638)))

(assert (=> bs!236513 (not (= lambda!29859 lambda!29847))))

(assert (=> bs!236512 (= lambda!29859 lambda!29825)))

(assert (=> d!280238 true))

(assert (=> d!280238 true))

(assert (=> d!280238 true))

(declare-fun lambda!29860 () Int)

(assert (=> bs!236509 (= (and (= lt!338153 (regOne!5456 r!15766)) (= lt!338145 (regTwo!5456 r!15766))) (= lambda!29860 lambda!29824))))

(assert (=> bs!236510 (not (= lambda!29860 lambda!29854))))

(assert (=> bs!236511 (= (and (= lt!338153 (regOne!5456 r!15766)) (= lt!338145 (regTwo!5456 r!15766))) (= lambda!29860 lambda!29848))))

(assert (=> bs!236512 (= lambda!29860 lambda!29826)))

(assert (=> bs!236509 (not (= lambda!29860 lambda!29823))))

(declare-fun bs!236514 () Bool)

(assert (= bs!236514 d!280238))

(assert (=> bs!236514 (not (= lambda!29860 lambda!29859))))

(assert (=> bs!236513 (not (= lambda!29860 lambda!29847))))

(assert (=> bs!236512 (not (= lambda!29860 lambda!29825))))

(assert (=> d!280238 true))

(assert (=> d!280238 true))

(assert (=> d!280238 true))

(assert (=> d!280238 (= (Exists!243 lambda!29859) (Exists!243 lambda!29860))))

(declare-fun lt!338210 () Unit!14563)

(declare-fun choose!5627 (Regex!2472 Regex!2472 List!9702) Unit!14563)

(assert (=> d!280238 (= lt!338210 (choose!5627 lt!338153 lt!338145 s!10566))))

(assert (=> d!280238 (validRegex!941 lt!338153)))

(assert (=> d!280238 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!155 lt!338153 lt!338145 s!10566) lt!338210)))

(declare-fun m!1147505 () Bool)

(assert (=> bs!236514 m!1147505))

(declare-fun m!1147507 () Bool)

(assert (=> bs!236514 m!1147507))

(declare-fun m!1147509 () Bool)

(assert (=> bs!236514 m!1147509))

(assert (=> bs!236514 m!1147503))

(assert (=> b!919454 d!280238))

(declare-fun bs!236515 () Bool)

(declare-fun b!919733 () Bool)

(assert (= bs!236515 (and b!919733 b!919447)))

(declare-fun lambda!29861 () Int)

(assert (=> bs!236515 (not (= lambda!29861 lambda!29824))))

(declare-fun bs!236516 () Bool)

(assert (= bs!236516 (and b!919733 d!280236)))

(assert (=> bs!236516 (not (= lambda!29861 lambda!29854))))

(declare-fun bs!236517 () Bool)

(assert (= bs!236517 (and b!919733 b!919633)))

(assert (=> bs!236517 (not (= lambda!29861 lambda!29848))))

(declare-fun bs!236518 () Bool)

(assert (= bs!236518 (and b!919733 b!919454)))

(assert (=> bs!236518 (not (= lambda!29861 lambda!29826))))

(assert (=> bs!236515 (not (= lambda!29861 lambda!29823))))

(declare-fun bs!236519 () Bool)

(assert (= bs!236519 (and b!919733 d!280238)))

(assert (=> bs!236519 (not (= lambda!29861 lambda!29860))))

(assert (=> bs!236519 (not (= lambda!29861 lambda!29859))))

(declare-fun bs!236520 () Bool)

(assert (= bs!236520 (and b!919733 b!919638)))

(assert (=> bs!236520 (= (and (= (reg!2801 lt!338150) (reg!2801 r!15766)) (= lt!338150 r!15766)) (= lambda!29861 lambda!29847))))

(assert (=> bs!236518 (not (= lambda!29861 lambda!29825))))

(assert (=> b!919733 true))

(assert (=> b!919733 true))

(declare-fun bs!236521 () Bool)

(declare-fun b!919728 () Bool)

(assert (= bs!236521 (and b!919728 b!919447)))

(declare-fun lambda!29862 () Int)

(assert (=> bs!236521 (= (and (= (regOne!5456 lt!338150) (regOne!5456 r!15766)) (= (regTwo!5456 lt!338150) (regTwo!5456 r!15766))) (= lambda!29862 lambda!29824))))

(declare-fun bs!236522 () Bool)

(assert (= bs!236522 (and b!919728 b!919733)))

(assert (=> bs!236522 (not (= lambda!29862 lambda!29861))))

(declare-fun bs!236523 () Bool)

(assert (= bs!236523 (and b!919728 d!280236)))

(assert (=> bs!236523 (not (= lambda!29862 lambda!29854))))

(declare-fun bs!236524 () Bool)

(assert (= bs!236524 (and b!919728 b!919633)))

(assert (=> bs!236524 (= (and (= (regOne!5456 lt!338150) (regOne!5456 r!15766)) (= (regTwo!5456 lt!338150) (regTwo!5456 r!15766))) (= lambda!29862 lambda!29848))))

(declare-fun bs!236525 () Bool)

(assert (= bs!236525 (and b!919728 b!919454)))

(assert (=> bs!236525 (= (and (= (regOne!5456 lt!338150) lt!338153) (= (regTwo!5456 lt!338150) lt!338145)) (= lambda!29862 lambda!29826))))

(assert (=> bs!236521 (not (= lambda!29862 lambda!29823))))

(declare-fun bs!236526 () Bool)

(assert (= bs!236526 (and b!919728 d!280238)))

(assert (=> bs!236526 (= (and (= (regOne!5456 lt!338150) lt!338153) (= (regTwo!5456 lt!338150) lt!338145)) (= lambda!29862 lambda!29860))))

(assert (=> bs!236526 (not (= lambda!29862 lambda!29859))))

(declare-fun bs!236527 () Bool)

(assert (= bs!236527 (and b!919728 b!919638)))

(assert (=> bs!236527 (not (= lambda!29862 lambda!29847))))

(assert (=> bs!236525 (not (= lambda!29862 lambda!29825))))

(assert (=> b!919728 true))

(assert (=> b!919728 true))

(declare-fun b!919727 () Bool)

(declare-fun e!598971 () Bool)

(assert (=> b!919727 (= e!598971 (= s!10566 (Cons!9686 (c!149111 lt!338150) Nil!9686)))))

(declare-fun e!598969 () Bool)

(declare-fun call!55845 () Bool)

(assert (=> b!919728 (= e!598969 call!55845)))

(declare-fun b!919729 () Bool)

(declare-fun c!149171 () Bool)

(assert (=> b!919729 (= c!149171 (is-Union!2472 lt!338150))))

(declare-fun e!598975 () Bool)

(assert (=> b!919729 (= e!598971 e!598975)))

(declare-fun b!919730 () Bool)

(declare-fun e!598972 () Bool)

(assert (=> b!919730 (= e!598975 e!598972)))

(declare-fun res!418141 () Bool)

(assert (=> b!919730 (= res!418141 (matchRSpec!273 (regOne!5457 lt!338150) s!10566))))

(assert (=> b!919730 (=> res!418141 e!598972)))

(declare-fun bm!55839 () Bool)

(declare-fun call!55844 () Bool)

(assert (=> bm!55839 (= call!55844 (isEmpty!5925 s!10566))))

(declare-fun b!919731 () Bool)

(assert (=> b!919731 (= e!598972 (matchRSpec!273 (regTwo!5457 lt!338150) s!10566))))

(declare-fun b!919732 () Bool)

(declare-fun e!598973 () Bool)

(declare-fun e!598974 () Bool)

(assert (=> b!919732 (= e!598973 e!598974)))

(declare-fun res!418140 () Bool)

(assert (=> b!919732 (= res!418140 (not (is-EmptyLang!2472 lt!338150)))))

(assert (=> b!919732 (=> (not res!418140) (not e!598974))))

(declare-fun bm!55840 () Bool)

(declare-fun c!149170 () Bool)

(assert (=> bm!55840 (= call!55845 (Exists!243 (ite c!149170 lambda!29861 lambda!29862)))))

(declare-fun e!598970 () Bool)

(assert (=> b!919733 (= e!598970 call!55845)))

(declare-fun b!919734 () Bool)

(assert (=> b!919734 (= e!598975 e!598969)))

(assert (=> b!919734 (= c!149170 (is-Star!2472 lt!338150))))

(declare-fun b!919735 () Bool)

(declare-fun res!418142 () Bool)

(assert (=> b!919735 (=> res!418142 e!598970)))

(assert (=> b!919735 (= res!418142 call!55844)))

(assert (=> b!919735 (= e!598969 e!598970)))

(declare-fun d!280240 () Bool)

(declare-fun c!149169 () Bool)

(assert (=> d!280240 (= c!149169 (is-EmptyExpr!2472 lt!338150))))

(assert (=> d!280240 (= (matchRSpec!273 lt!338150 s!10566) e!598973)))

(declare-fun b!919736 () Bool)

(declare-fun c!149172 () Bool)

(assert (=> b!919736 (= c!149172 (is-ElementMatch!2472 lt!338150))))

(assert (=> b!919736 (= e!598974 e!598971)))

(declare-fun b!919737 () Bool)

(assert (=> b!919737 (= e!598973 call!55844)))

(assert (= (and d!280240 c!149169) b!919737))

(assert (= (and d!280240 (not c!149169)) b!919732))

(assert (= (and b!919732 res!418140) b!919736))

(assert (= (and b!919736 c!149172) b!919727))

(assert (= (and b!919736 (not c!149172)) b!919729))

(assert (= (and b!919729 c!149171) b!919730))

(assert (= (and b!919729 (not c!149171)) b!919734))

(assert (= (and b!919730 (not res!418141)) b!919731))

(assert (= (and b!919734 c!149170) b!919735))

(assert (= (and b!919734 (not c!149170)) b!919728))

(assert (= (and b!919735 (not res!418142)) b!919733))

(assert (= (or b!919733 b!919728) bm!55840))

(assert (= (or b!919737 b!919735) bm!55839))

(declare-fun m!1147511 () Bool)

(assert (=> b!919730 m!1147511))

(assert (=> bm!55839 m!1147363))

(declare-fun m!1147513 () Bool)

(assert (=> b!919731 m!1147513))

(declare-fun m!1147515 () Bool)

(assert (=> bm!55840 m!1147515))

(assert (=> b!919454 d!280240))

(declare-fun d!280242 () Bool)

(declare-fun isEmpty!5928 (Option!2107) Bool)

(assert (=> d!280242 (= (isDefined!1749 (findConcatSeparation!213 lt!338153 lt!338145 Nil!9686 s!10566 s!10566)) (not (isEmpty!5928 (findConcatSeparation!213 lt!338153 lt!338145 Nil!9686 s!10566 s!10566))))))

(declare-fun bs!236528 () Bool)

(assert (= bs!236528 d!280242))

(assert (=> bs!236528 m!1147345))

(declare-fun m!1147517 () Bool)

(assert (=> bs!236528 m!1147517))

(assert (=> b!919454 d!280242))

(declare-fun b!919765 () Bool)

(declare-fun e!598993 () Bool)

(assert (=> b!919765 (= e!598993 (matchR!1010 lt!338145 s!10566))))

(declare-fun b!919767 () Bool)

(declare-fun lt!338221 () Unit!14563)

(declare-fun lt!338220 () Unit!14563)

(assert (=> b!919767 (= lt!338221 lt!338220)))

(declare-fun ++!2560 (List!9702 List!9702) List!9702)

(assert (=> b!919767 (= (++!2560 (++!2560 Nil!9686 (Cons!9686 (h!15087 s!10566) Nil!9686)) (t!100748 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!175 (List!9702 C!5514 List!9702 List!9702) Unit!14563)

(assert (=> b!919767 (= lt!338220 (lemmaMoveElementToOtherListKeepsConcatEq!175 Nil!9686 (h!15087 s!10566) (t!100748 s!10566) s!10566))))

(declare-fun e!598992 () Option!2107)

(assert (=> b!919767 (= e!598992 (findConcatSeparation!213 lt!338153 lt!338145 (++!2560 Nil!9686 (Cons!9686 (h!15087 s!10566) Nil!9686)) (t!100748 s!10566) s!10566))))

(declare-fun b!919768 () Bool)

(declare-fun e!598995 () Bool)

(declare-fun lt!338222 () Option!2107)

(assert (=> b!919768 (= e!598995 (not (isDefined!1749 lt!338222)))))

(declare-fun b!919769 () Bool)

(declare-fun res!418162 () Bool)

(declare-fun e!598994 () Bool)

(assert (=> b!919769 (=> (not res!418162) (not e!598994))))

(declare-fun get!3153 (Option!2107) tuple2!10930)

(assert (=> b!919769 (= res!418162 (matchR!1010 lt!338145 (_2!6291 (get!3153 lt!338222))))))

(declare-fun b!919770 () Bool)

(assert (=> b!919770 (= e!598994 (= (++!2560 (_1!6291 (get!3153 lt!338222)) (_2!6291 (get!3153 lt!338222))) s!10566))))

(declare-fun b!919771 () Bool)

(assert (=> b!919771 (= e!598992 None!2106)))

(declare-fun b!919772 () Bool)

(declare-fun e!598991 () Option!2107)

(assert (=> b!919772 (= e!598991 e!598992)))

(declare-fun c!149179 () Bool)

(assert (=> b!919772 (= c!149179 (is-Nil!9686 s!10566))))

(declare-fun b!919773 () Bool)

(declare-fun res!418160 () Bool)

(assert (=> b!919773 (=> (not res!418160) (not e!598994))))

(assert (=> b!919773 (= res!418160 (matchR!1010 lt!338153 (_1!6291 (get!3153 lt!338222))))))

(declare-fun d!280244 () Bool)

(assert (=> d!280244 e!598995))

(declare-fun res!418159 () Bool)

(assert (=> d!280244 (=> res!418159 e!598995)))

(assert (=> d!280244 (= res!418159 e!598994)))

(declare-fun res!418158 () Bool)

(assert (=> d!280244 (=> (not res!418158) (not e!598994))))

(assert (=> d!280244 (= res!418158 (isDefined!1749 lt!338222))))

(assert (=> d!280244 (= lt!338222 e!598991)))

(declare-fun c!149180 () Bool)

(assert (=> d!280244 (= c!149180 e!598993)))

(declare-fun res!418161 () Bool)

(assert (=> d!280244 (=> (not res!418161) (not e!598993))))

(assert (=> d!280244 (= res!418161 (matchR!1010 lt!338153 Nil!9686))))

(assert (=> d!280244 (validRegex!941 lt!338153)))

(assert (=> d!280244 (= (findConcatSeparation!213 lt!338153 lt!338145 Nil!9686 s!10566 s!10566) lt!338222)))

(declare-fun b!919766 () Bool)

(assert (=> b!919766 (= e!598991 (Some!2106 (tuple2!10931 Nil!9686 s!10566)))))

(assert (= (and d!280244 res!418161) b!919765))

(assert (= (and d!280244 c!149180) b!919766))

(assert (= (and d!280244 (not c!149180)) b!919772))

(assert (= (and b!919772 c!149179) b!919771))

(assert (= (and b!919772 (not c!149179)) b!919767))

(assert (= (and d!280244 res!418158) b!919773))

(assert (= (and b!919773 res!418160) b!919769))

(assert (= (and b!919769 res!418162) b!919770))

(assert (= (and d!280244 (not res!418159)) b!919768))

(declare-fun m!1147543 () Bool)

(assert (=> b!919765 m!1147543))

(declare-fun m!1147545 () Bool)

(assert (=> b!919769 m!1147545))

(declare-fun m!1147547 () Bool)

(assert (=> b!919769 m!1147547))

(declare-fun m!1147549 () Bool)

(assert (=> b!919768 m!1147549))

(declare-fun m!1147551 () Bool)

(assert (=> b!919767 m!1147551))

(assert (=> b!919767 m!1147551))

(declare-fun m!1147553 () Bool)

(assert (=> b!919767 m!1147553))

(declare-fun m!1147555 () Bool)

(assert (=> b!919767 m!1147555))

(assert (=> b!919767 m!1147551))

(declare-fun m!1147557 () Bool)

(assert (=> b!919767 m!1147557))

(assert (=> d!280244 m!1147549))

(declare-fun m!1147559 () Bool)

(assert (=> d!280244 m!1147559))

(assert (=> d!280244 m!1147503))

(assert (=> b!919770 m!1147545))

(declare-fun m!1147561 () Bool)

(assert (=> b!919770 m!1147561))

(assert (=> b!919773 m!1147545))

(declare-fun m!1147563 () Bool)

(assert (=> b!919773 m!1147563))

(assert (=> b!919454 d!280244))

(declare-fun d!280250 () Bool)

(assert (=> d!280250 (= (isEmpty!5925 s!10566) (is-Nil!9686 s!10566))))

(assert (=> b!919447 d!280250))

(declare-fun bs!236530 () Bool)

(declare-fun d!280252 () Bool)

(assert (= bs!236530 (and d!280252 b!919447)))

(declare-fun lambda!29863 () Int)

(assert (=> bs!236530 (not (= lambda!29863 lambda!29824))))

(declare-fun bs!236531 () Bool)

(assert (= bs!236531 (and d!280252 b!919733)))

(assert (=> bs!236531 (not (= lambda!29863 lambda!29861))))

(declare-fun bs!236532 () Bool)

(assert (= bs!236532 (and d!280252 d!280236)))

(assert (=> bs!236532 (= (and (= (regOne!5456 r!15766) lt!338153) (= (regTwo!5456 r!15766) lt!338145)) (= lambda!29863 lambda!29854))))

(declare-fun bs!236533 () Bool)

(assert (= bs!236533 (and d!280252 b!919633)))

(assert (=> bs!236533 (not (= lambda!29863 lambda!29848))))

(assert (=> bs!236530 (= lambda!29863 lambda!29823)))

(declare-fun bs!236534 () Bool)

(assert (= bs!236534 (and d!280252 d!280238)))

(assert (=> bs!236534 (not (= lambda!29863 lambda!29860))))

(assert (=> bs!236534 (= (and (= (regOne!5456 r!15766) lt!338153) (= (regTwo!5456 r!15766) lt!338145)) (= lambda!29863 lambda!29859))))

(declare-fun bs!236535 () Bool)

(assert (= bs!236535 (and d!280252 b!919638)))

(assert (=> bs!236535 (not (= lambda!29863 lambda!29847))))

(declare-fun bs!236536 () Bool)

(assert (= bs!236536 (and d!280252 b!919454)))

(assert (=> bs!236536 (= (and (= (regOne!5456 r!15766) lt!338153) (= (regTwo!5456 r!15766) lt!338145)) (= lambda!29863 lambda!29825))))

(assert (=> bs!236536 (not (= lambda!29863 lambda!29826))))

(declare-fun bs!236537 () Bool)

(assert (= bs!236537 (and d!280252 b!919728)))

(assert (=> bs!236537 (not (= lambda!29863 lambda!29862))))

(assert (=> d!280252 true))

(assert (=> d!280252 true))

(assert (=> d!280252 true))

(assert (=> d!280252 (= (isDefined!1749 (findConcatSeparation!213 (regOne!5456 r!15766) (regTwo!5456 r!15766) Nil!9686 s!10566 s!10566)) (Exists!243 lambda!29863))))

(declare-fun lt!338223 () Unit!14563)

(assert (=> d!280252 (= lt!338223 (choose!5626 (regOne!5456 r!15766) (regTwo!5456 r!15766) s!10566))))

(assert (=> d!280252 (validRegex!941 (regOne!5456 r!15766))))

(assert (=> d!280252 (= (lemmaFindConcatSeparationEquivalentToExists!213 (regOne!5456 r!15766) (regTwo!5456 r!15766) s!10566) lt!338223)))

(declare-fun bs!236538 () Bool)

(assert (= bs!236538 d!280252))

(assert (=> bs!236538 m!1147357))

(declare-fun m!1147565 () Bool)

(assert (=> bs!236538 m!1147565))

(declare-fun m!1147567 () Bool)

(assert (=> bs!236538 m!1147567))

(assert (=> bs!236538 m!1147447))

(assert (=> bs!236538 m!1147357))

(assert (=> bs!236538 m!1147359))

(assert (=> b!919447 d!280252))

(declare-fun b!919774 () Bool)

(declare-fun e!598998 () Bool)

(assert (=> b!919774 (= e!598998 (matchR!1010 (regTwo!5456 r!15766) s!10566))))

(declare-fun b!919776 () Bool)

(declare-fun lt!338227 () Unit!14563)

(declare-fun lt!338226 () Unit!14563)

(assert (=> b!919776 (= lt!338227 lt!338226)))

(assert (=> b!919776 (= (++!2560 (++!2560 Nil!9686 (Cons!9686 (h!15087 s!10566) Nil!9686)) (t!100748 s!10566)) s!10566)))

(assert (=> b!919776 (= lt!338226 (lemmaMoveElementToOtherListKeepsConcatEq!175 Nil!9686 (h!15087 s!10566) (t!100748 s!10566) s!10566))))

(declare-fun e!598997 () Option!2107)

(assert (=> b!919776 (= e!598997 (findConcatSeparation!213 (regOne!5456 r!15766) (regTwo!5456 r!15766) (++!2560 Nil!9686 (Cons!9686 (h!15087 s!10566) Nil!9686)) (t!100748 s!10566) s!10566))))

(declare-fun b!919777 () Bool)

(declare-fun e!599000 () Bool)

(declare-fun lt!338228 () Option!2107)

(assert (=> b!919777 (= e!599000 (not (isDefined!1749 lt!338228)))))

(declare-fun b!919778 () Bool)

(declare-fun res!418167 () Bool)

(declare-fun e!598999 () Bool)

(assert (=> b!919778 (=> (not res!418167) (not e!598999))))

(assert (=> b!919778 (= res!418167 (matchR!1010 (regTwo!5456 r!15766) (_2!6291 (get!3153 lt!338228))))))

(declare-fun b!919779 () Bool)

(assert (=> b!919779 (= e!598999 (= (++!2560 (_1!6291 (get!3153 lt!338228)) (_2!6291 (get!3153 lt!338228))) s!10566))))

(declare-fun b!919780 () Bool)

(assert (=> b!919780 (= e!598997 None!2106)))

(declare-fun b!919781 () Bool)

(declare-fun e!598996 () Option!2107)

(assert (=> b!919781 (= e!598996 e!598997)))

(declare-fun c!149181 () Bool)

(assert (=> b!919781 (= c!149181 (is-Nil!9686 s!10566))))

(declare-fun b!919782 () Bool)

(declare-fun res!418165 () Bool)

(assert (=> b!919782 (=> (not res!418165) (not e!598999))))

(assert (=> b!919782 (= res!418165 (matchR!1010 (regOne!5456 r!15766) (_1!6291 (get!3153 lt!338228))))))

(declare-fun d!280254 () Bool)

(assert (=> d!280254 e!599000))

(declare-fun res!418164 () Bool)

(assert (=> d!280254 (=> res!418164 e!599000)))

(assert (=> d!280254 (= res!418164 e!598999)))

(declare-fun res!418163 () Bool)

(assert (=> d!280254 (=> (not res!418163) (not e!598999))))

(assert (=> d!280254 (= res!418163 (isDefined!1749 lt!338228))))

(assert (=> d!280254 (= lt!338228 e!598996)))

(declare-fun c!149182 () Bool)

(assert (=> d!280254 (= c!149182 e!598998)))

(declare-fun res!418166 () Bool)

(assert (=> d!280254 (=> (not res!418166) (not e!598998))))

(assert (=> d!280254 (= res!418166 (matchR!1010 (regOne!5456 r!15766) Nil!9686))))

(assert (=> d!280254 (validRegex!941 (regOne!5456 r!15766))))

(assert (=> d!280254 (= (findConcatSeparation!213 (regOne!5456 r!15766) (regTwo!5456 r!15766) Nil!9686 s!10566 s!10566) lt!338228)))

(declare-fun b!919775 () Bool)

(assert (=> b!919775 (= e!598996 (Some!2106 (tuple2!10931 Nil!9686 s!10566)))))

(assert (= (and d!280254 res!418166) b!919774))

(assert (= (and d!280254 c!149182) b!919775))

(assert (= (and d!280254 (not c!149182)) b!919781))

(assert (= (and b!919781 c!149181) b!919780))

(assert (= (and b!919781 (not c!149181)) b!919776))

(assert (= (and d!280254 res!418163) b!919782))

(assert (= (and b!919782 res!418165) b!919778))

(assert (= (and b!919778 res!418167) b!919779))

(assert (= (and d!280254 (not res!418164)) b!919777))

(declare-fun m!1147569 () Bool)

(assert (=> b!919774 m!1147569))

(declare-fun m!1147571 () Bool)

(assert (=> b!919778 m!1147571))

(declare-fun m!1147573 () Bool)

(assert (=> b!919778 m!1147573))

(declare-fun m!1147575 () Bool)

(assert (=> b!919777 m!1147575))

(assert (=> b!919776 m!1147551))

(assert (=> b!919776 m!1147551))

(assert (=> b!919776 m!1147553))

(assert (=> b!919776 m!1147555))

(assert (=> b!919776 m!1147551))

(declare-fun m!1147577 () Bool)

(assert (=> b!919776 m!1147577))

(assert (=> d!280254 m!1147575))

(declare-fun m!1147579 () Bool)

(assert (=> d!280254 m!1147579))

(assert (=> d!280254 m!1147447))

(assert (=> b!919779 m!1147571))

(declare-fun m!1147581 () Bool)

(assert (=> b!919779 m!1147581))

(assert (=> b!919782 m!1147571))

(declare-fun m!1147583 () Bool)

(assert (=> b!919782 m!1147583))

(assert (=> b!919447 d!280254))

(declare-fun d!280256 () Bool)

(assert (=> d!280256 (= (Exists!243 lambda!29823) (choose!5625 lambda!29823))))

(declare-fun bs!236539 () Bool)

(assert (= bs!236539 d!280256))

(declare-fun m!1147585 () Bool)

(assert (=> bs!236539 m!1147585))

(assert (=> b!919447 d!280256))

(declare-fun bs!236540 () Bool)

(declare-fun d!280258 () Bool)

(assert (= bs!236540 (and d!280258 b!919447)))

(declare-fun lambda!29866 () Int)

(assert (=> bs!236540 (not (= lambda!29866 lambda!29824))))

(declare-fun bs!236541 () Bool)

(assert (= bs!236541 (and d!280258 b!919733)))

(assert (=> bs!236541 (not (= lambda!29866 lambda!29861))))

(declare-fun bs!236542 () Bool)

(assert (= bs!236542 (and d!280258 b!919633)))

(assert (=> bs!236542 (not (= lambda!29866 lambda!29848))))

(assert (=> bs!236540 (= lambda!29866 lambda!29823)))

(declare-fun bs!236543 () Bool)

(assert (= bs!236543 (and d!280258 d!280238)))

(assert (=> bs!236543 (not (= lambda!29866 lambda!29860))))

(assert (=> bs!236543 (= (and (= (regOne!5456 r!15766) lt!338153) (= (regTwo!5456 r!15766) lt!338145)) (= lambda!29866 lambda!29859))))

(declare-fun bs!236544 () Bool)

(assert (= bs!236544 (and d!280258 b!919638)))

(assert (=> bs!236544 (not (= lambda!29866 lambda!29847))))

(declare-fun bs!236545 () Bool)

(assert (= bs!236545 (and d!280258 b!919454)))

(assert (=> bs!236545 (= (and (= (regOne!5456 r!15766) lt!338153) (= (regTwo!5456 r!15766) lt!338145)) (= lambda!29866 lambda!29825))))

(declare-fun bs!236546 () Bool)

(assert (= bs!236546 (and d!280258 d!280252)))

(assert (=> bs!236546 (= lambda!29866 lambda!29863)))

(declare-fun bs!236547 () Bool)

(assert (= bs!236547 (and d!280258 d!280236)))

(assert (=> bs!236547 (= (and (= (regOne!5456 r!15766) lt!338153) (= (regTwo!5456 r!15766) lt!338145)) (= lambda!29866 lambda!29854))))

(assert (=> bs!236545 (not (= lambda!29866 lambda!29826))))

(declare-fun bs!236548 () Bool)

(assert (= bs!236548 (and d!280258 b!919728)))

(assert (=> bs!236548 (not (= lambda!29866 lambda!29862))))

(assert (=> d!280258 true))

(assert (=> d!280258 true))

(assert (=> d!280258 true))

(declare-fun lambda!29867 () Int)

(assert (=> bs!236540 (= lambda!29867 lambda!29824)))

(assert (=> bs!236541 (not (= lambda!29867 lambda!29861))))

(assert (=> bs!236542 (= lambda!29867 lambda!29848)))

(assert (=> bs!236540 (not (= lambda!29867 lambda!29823))))

(declare-fun bs!236549 () Bool)

(assert (= bs!236549 d!280258))

(assert (=> bs!236549 (not (= lambda!29867 lambda!29866))))

(assert (=> bs!236543 (= (and (= (regOne!5456 r!15766) lt!338153) (= (regTwo!5456 r!15766) lt!338145)) (= lambda!29867 lambda!29860))))

(assert (=> bs!236543 (not (= lambda!29867 lambda!29859))))

(assert (=> bs!236544 (not (= lambda!29867 lambda!29847))))

(assert (=> bs!236545 (not (= lambda!29867 lambda!29825))))

(assert (=> bs!236546 (not (= lambda!29867 lambda!29863))))

(assert (=> bs!236547 (not (= lambda!29867 lambda!29854))))

(assert (=> bs!236545 (= (and (= (regOne!5456 r!15766) lt!338153) (= (regTwo!5456 r!15766) lt!338145)) (= lambda!29867 lambda!29826))))

(assert (=> bs!236548 (= (and (= (regOne!5456 r!15766) (regOne!5456 lt!338150)) (= (regTwo!5456 r!15766) (regTwo!5456 lt!338150))) (= lambda!29867 lambda!29862))))

(assert (=> d!280258 true))

(assert (=> d!280258 true))

(assert (=> d!280258 true))

(assert (=> d!280258 (= (Exists!243 lambda!29866) (Exists!243 lambda!29867))))

(declare-fun lt!338229 () Unit!14563)

(assert (=> d!280258 (= lt!338229 (choose!5627 (regOne!5456 r!15766) (regTwo!5456 r!15766) s!10566))))

(assert (=> d!280258 (validRegex!941 (regOne!5456 r!15766))))

(assert (=> d!280258 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!155 (regOne!5456 r!15766) (regTwo!5456 r!15766) s!10566) lt!338229)))

(declare-fun m!1147587 () Bool)

(assert (=> bs!236549 m!1147587))

(declare-fun m!1147589 () Bool)

(assert (=> bs!236549 m!1147589))

(declare-fun m!1147591 () Bool)

(assert (=> bs!236549 m!1147591))

(assert (=> bs!236549 m!1147447))

(assert (=> b!919447 d!280258))

(declare-fun d!280260 () Bool)

(assert (=> d!280260 (= (isDefined!1749 (findConcatSeparation!213 (regOne!5456 r!15766) (regTwo!5456 r!15766) Nil!9686 s!10566 s!10566)) (not (isEmpty!5928 (findConcatSeparation!213 (regOne!5456 r!15766) (regTwo!5456 r!15766) Nil!9686 s!10566 s!10566))))))

(declare-fun bs!236550 () Bool)

(assert (= bs!236550 d!280260))

(assert (=> bs!236550 m!1147357))

(declare-fun m!1147593 () Bool)

(assert (=> bs!236550 m!1147593))

(assert (=> b!919447 d!280260))

(declare-fun d!280262 () Bool)

(assert (=> d!280262 (= (Exists!243 lambda!29824) (choose!5625 lambda!29824))))

(declare-fun bs!236551 () Bool)

(assert (= bs!236551 d!280262))

(declare-fun m!1147595 () Bool)

(assert (=> bs!236551 m!1147595))

(assert (=> b!919447 d!280262))

(declare-fun b!919804 () Bool)

(declare-fun e!599007 () Bool)

(declare-fun tp!286689 () Bool)

(declare-fun tp!286688 () Bool)

(assert (=> b!919804 (= e!599007 (and tp!286689 tp!286688))))

(declare-fun b!919803 () Bool)

(declare-fun tp!286690 () Bool)

(assert (=> b!919803 (= e!599007 tp!286690)))

(declare-fun b!919801 () Bool)

(assert (=> b!919801 (= e!599007 tp_is_empty!4587)))

(declare-fun b!919802 () Bool)

(declare-fun tp!286691 () Bool)

(declare-fun tp!286687 () Bool)

(assert (=> b!919802 (= e!599007 (and tp!286691 tp!286687))))

(assert (=> b!919450 (= tp!286658 e!599007)))

(assert (= (and b!919450 (is-ElementMatch!2472 (regOne!5456 r!15766))) b!919801))

(assert (= (and b!919450 (is-Concat!4305 (regOne!5456 r!15766))) b!919802))

(assert (= (and b!919450 (is-Star!2472 (regOne!5456 r!15766))) b!919803))

(assert (= (and b!919450 (is-Union!2472 (regOne!5456 r!15766))) b!919804))

(declare-fun b!919808 () Bool)

(declare-fun e!599008 () Bool)

(declare-fun tp!286694 () Bool)

(declare-fun tp!286693 () Bool)

(assert (=> b!919808 (= e!599008 (and tp!286694 tp!286693))))

(declare-fun b!919807 () Bool)

(declare-fun tp!286695 () Bool)

(assert (=> b!919807 (= e!599008 tp!286695)))

(declare-fun b!919805 () Bool)

(assert (=> b!919805 (= e!599008 tp_is_empty!4587)))

(declare-fun b!919806 () Bool)

(declare-fun tp!286696 () Bool)

(declare-fun tp!286692 () Bool)

(assert (=> b!919806 (= e!599008 (and tp!286696 tp!286692))))

(assert (=> b!919450 (= tp!286657 e!599008)))

(assert (= (and b!919450 (is-ElementMatch!2472 (regTwo!5456 r!15766))) b!919805))

(assert (= (and b!919450 (is-Concat!4305 (regTwo!5456 r!15766))) b!919806))

(assert (= (and b!919450 (is-Star!2472 (regTwo!5456 r!15766))) b!919807))

(assert (= (and b!919450 (is-Union!2472 (regTwo!5456 r!15766))) b!919808))

(declare-fun b!919812 () Bool)

(declare-fun e!599009 () Bool)

(declare-fun tp!286699 () Bool)

(declare-fun tp!286698 () Bool)

(assert (=> b!919812 (= e!599009 (and tp!286699 tp!286698))))

(declare-fun b!919811 () Bool)

(declare-fun tp!286700 () Bool)

(assert (=> b!919811 (= e!599009 tp!286700)))

(declare-fun b!919809 () Bool)

(assert (=> b!919809 (= e!599009 tp_is_empty!4587)))

(declare-fun b!919810 () Bool)

(declare-fun tp!286701 () Bool)

(declare-fun tp!286697 () Bool)

(assert (=> b!919810 (= e!599009 (and tp!286701 tp!286697))))

(assert (=> b!919449 (= tp!286656 e!599009)))

(assert (= (and b!919449 (is-ElementMatch!2472 (reg!2801 r!15766))) b!919809))

(assert (= (and b!919449 (is-Concat!4305 (reg!2801 r!15766))) b!919810))

(assert (= (and b!919449 (is-Star!2472 (reg!2801 r!15766))) b!919811))

(assert (= (and b!919449 (is-Union!2472 (reg!2801 r!15766))) b!919812))

(declare-fun b!919816 () Bool)

(declare-fun e!599010 () Bool)

(declare-fun tp!286704 () Bool)

(declare-fun tp!286703 () Bool)

(assert (=> b!919816 (= e!599010 (and tp!286704 tp!286703))))

(declare-fun b!919815 () Bool)

(declare-fun tp!286705 () Bool)

(assert (=> b!919815 (= e!599010 tp!286705)))

(declare-fun b!919813 () Bool)

(assert (=> b!919813 (= e!599010 tp_is_empty!4587)))

(declare-fun b!919814 () Bool)

(declare-fun tp!286706 () Bool)

(declare-fun tp!286702 () Bool)

(assert (=> b!919814 (= e!599010 (and tp!286706 tp!286702))))

(assert (=> b!919452 (= tp!286655 e!599010)))

(assert (= (and b!919452 (is-ElementMatch!2472 (regOne!5457 r!15766))) b!919813))

(assert (= (and b!919452 (is-Concat!4305 (regOne!5457 r!15766))) b!919814))

(assert (= (and b!919452 (is-Star!2472 (regOne!5457 r!15766))) b!919815))

(assert (= (and b!919452 (is-Union!2472 (regOne!5457 r!15766))) b!919816))

(declare-fun b!919820 () Bool)

(declare-fun e!599011 () Bool)

(declare-fun tp!286709 () Bool)

(declare-fun tp!286708 () Bool)

(assert (=> b!919820 (= e!599011 (and tp!286709 tp!286708))))

(declare-fun b!919819 () Bool)

(declare-fun tp!286710 () Bool)

(assert (=> b!919819 (= e!599011 tp!286710)))

(declare-fun b!919817 () Bool)

(assert (=> b!919817 (= e!599011 tp_is_empty!4587)))

(declare-fun b!919818 () Bool)

(declare-fun tp!286711 () Bool)

(declare-fun tp!286707 () Bool)

(assert (=> b!919818 (= e!599011 (and tp!286711 tp!286707))))

(assert (=> b!919452 (= tp!286654 e!599011)))

(assert (= (and b!919452 (is-ElementMatch!2472 (regTwo!5457 r!15766))) b!919817))

(assert (= (and b!919452 (is-Concat!4305 (regTwo!5457 r!15766))) b!919818))

(assert (= (and b!919452 (is-Star!2472 (regTwo!5457 r!15766))) b!919819))

(assert (= (and b!919452 (is-Union!2472 (regTwo!5457 r!15766))) b!919820))

(declare-fun b!919825 () Bool)

(declare-fun e!599014 () Bool)

(declare-fun tp!286714 () Bool)

(assert (=> b!919825 (= e!599014 (and tp_is_empty!4587 tp!286714))))

(assert (=> b!919453 (= tp!286653 e!599014)))

(assert (= (and b!919453 (is-Cons!9686 (t!100748 s!10566))) b!919825))

(push 1)

(assert (not b!919730))

(assert (not b!919636))

(assert (not b!919825))

(assert (not b!919806))

(assert (not d!280232))

(assert (not b!919680))

(assert (not bm!55817))

(assert (not b!919812))

(assert (not bm!55813))

(assert (not b!919819))

(assert (not b!919768))

(assert (not b!919770))

(assert (not bm!55839))

(assert (not b!919551))

(assert (not d!280262))

(assert (not bm!55799))

(assert (not b!919774))

(assert (not bm!55833))

(assert (not b!919635))

(assert (not b!919807))

(assert (not b!919815))

(assert (not b!919689))

(assert (not b!919731))

(assert (not bm!55812))

(assert (not d!280234))

(assert (not b!919782))

(assert (not d!280238))

(assert (not b!919655))

(assert (not bm!55818))

(assert (not b!919596))

(assert (not b!919651))

(assert (not d!280258))

(assert (not b!919808))

(assert (not b!919554))

(assert (not b!919802))

(assert (not d!280204))

(assert (not d!280228))

(assert (not d!280260))

(assert (not b!919803))

(assert (not b!919816))

(assert (not d!280252))

(assert (not b!919585))

(assert (not b!919776))

(assert (not d!280208))

(assert (not bm!55824))

(assert (not b!919652))

(assert (not b!919549))

(assert (not b!919811))

(assert (not bm!55825))

(assert (not b!919550))

(assert (not b!919778))

(assert (not d!280220))

(assert (not b!919820))

(assert (not bm!55836))

(assert (not b!919810))

(assert (not b!919555))

(assert (not d!280244))

(assert (not d!280242))

(assert (not d!280256))

(assert tp_is_empty!4587)

(assert (not bm!55840))

(assert (not b!919650))

(assert (not b!919777))

(assert (not bm!55834))

(assert (not bm!55826))

(assert (not d!280254))

(assert (not b!919656))

(assert (not b!919773))

(assert (not b!919644))

(assert (not b!919779))

(assert (not bm!55837))

(assert (not b!919769))

(assert (not b!919818))

(assert (not b!919767))

(assert (not b!919804))

(assert (not d!280222))

(assert (not b!919765))

(assert (not b!919814))

(assert (not d!280206))

(assert (not b!919543))

(assert (not d!280236))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

