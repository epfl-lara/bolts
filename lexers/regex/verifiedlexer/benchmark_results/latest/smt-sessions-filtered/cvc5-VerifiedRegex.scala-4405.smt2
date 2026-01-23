; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!234362 () Bool)

(assert start!234362)

(declare-fun b!2388231 () Bool)

(assert (=> b!2388231 true))

(assert (=> b!2388231 true))

(declare-fun lambda!89338 () Int)

(declare-fun lambda!89337 () Int)

(assert (=> b!2388231 (not (= lambda!89338 lambda!89337))))

(assert (=> b!2388231 true))

(assert (=> b!2388231 true))

(declare-fun b!2388227 () Bool)

(declare-fun res!1014512 () Bool)

(declare-fun e!1522589 () Bool)

(assert (=> b!2388227 (=> res!1014512 e!1522589)))

(declare-datatypes ((C!14162 0))(
  ( (C!14163 (val!8323 Int)) )
))
(declare-datatypes ((Regex!7002 0))(
  ( (ElementMatch!7002 (c!379782 C!14162)) (Concat!11638 (regOne!14516 Regex!7002) (regTwo!14516 Regex!7002)) (EmptyExpr!7002) (Star!7002 (reg!7331 Regex!7002)) (EmptyLang!7002) (Union!7002 (regOne!14517 Regex!7002) (regTwo!14517 Regex!7002)) )
))
(declare-datatypes ((List!28242 0))(
  ( (Nil!28144) (Cons!28144 (h!33545 Regex!7002) (t!208219 List!28242)) )
))
(declare-fun l!9164 () List!28242)

(declare-fun isEmpty!16115 (List!28242) Bool)

(assert (=> b!2388227 (= res!1014512 (isEmpty!16115 l!9164))))

(declare-fun res!1014516 () Bool)

(declare-fun e!1522596 () Bool)

(assert (=> start!234362 (=> (not res!1014516) (not e!1522596))))

(declare-fun lambda!89336 () Int)

(declare-fun forall!5636 (List!28242 Int) Bool)

(assert (=> start!234362 (= res!1014516 (forall!5636 l!9164 lambda!89336))))

(assert (=> start!234362 e!1522596))

(declare-fun e!1522590 () Bool)

(assert (=> start!234362 e!1522590))

(declare-fun e!1522594 () Bool)

(assert (=> start!234362 e!1522594))

(declare-fun e!1522592 () Bool)

(assert (=> start!234362 e!1522592))

(declare-fun b!2388228 () Bool)

(declare-fun e!1522595 () Bool)

(assert (=> b!2388228 (= e!1522596 (not e!1522595))))

(declare-fun res!1014509 () Bool)

(assert (=> b!2388228 (=> res!1014509 e!1522595)))

(declare-fun r!13927 () Regex!7002)

(assert (=> b!2388228 (= res!1014509 (not (is-Concat!11638 r!13927)))))

(declare-fun lt!869777 () Bool)

(declare-fun lt!869775 () Bool)

(assert (=> b!2388228 (= lt!869777 lt!869775)))

(declare-datatypes ((List!28243 0))(
  ( (Nil!28145) (Cons!28145 (h!33546 C!14162) (t!208220 List!28243)) )
))
(declare-fun s!9460 () List!28243)

(declare-fun matchRSpec!851 (Regex!7002 List!28243) Bool)

(assert (=> b!2388228 (= lt!869775 (matchRSpec!851 r!13927 s!9460))))

(declare-fun matchR!3119 (Regex!7002 List!28243) Bool)

(assert (=> b!2388228 (= lt!869777 (matchR!3119 r!13927 s!9460))))

(declare-datatypes ((Unit!41107 0))(
  ( (Unit!41108) )
))
(declare-fun lt!869780 () Unit!41107)

(declare-fun mainMatchTheorem!851 (Regex!7002 List!28243) Unit!41107)

(assert (=> b!2388228 (= lt!869780 (mainMatchTheorem!851 r!13927 s!9460))))

(declare-fun b!2388229 () Bool)

(declare-fun res!1014515 () Bool)

(assert (=> b!2388229 (=> (not res!1014515) (not e!1522596))))

(declare-fun generalisedConcat!103 (List!28242) Regex!7002)

(assert (=> b!2388229 (= res!1014515 (= r!13927 (generalisedConcat!103 l!9164)))))

(declare-fun b!2388230 () Bool)

(declare-fun tp!761629 () Bool)

(declare-fun tp!761633 () Bool)

(assert (=> b!2388230 (= e!1522590 (and tp!761629 tp!761633))))

(assert (=> b!2388231 (= e!1522595 e!1522589)))

(declare-fun res!1014514 () Bool)

(assert (=> b!2388231 (=> res!1014514 e!1522589)))

(declare-fun lt!869776 () Bool)

(assert (=> b!2388231 (= res!1014514 (not (= lt!869775 lt!869776)))))

(declare-fun Exists!1064 (Int) Bool)

(assert (=> b!2388231 (= (Exists!1064 lambda!89337) (Exists!1064 lambda!89338))))

(declare-fun lt!869778 () Unit!41107)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!403 (Regex!7002 Regex!7002 List!28243) Unit!41107)

(assert (=> b!2388231 (= lt!869778 (lemmaExistCutMatchRandMatchRSpecEquivalent!403 (regOne!14516 r!13927) (regTwo!14516 r!13927) s!9460))))

(assert (=> b!2388231 (= lt!869776 (Exists!1064 lambda!89337))))

(declare-datatypes ((tuple2!27868 0))(
  ( (tuple2!27869 (_1!16475 List!28243) (_2!16475 List!28243)) )
))
(declare-datatypes ((Option!5545 0))(
  ( (None!5544) (Some!5544 (v!30952 tuple2!27868)) )
))
(declare-fun isDefined!4373 (Option!5545) Bool)

(declare-fun findConcatSeparation!653 (Regex!7002 Regex!7002 List!28243 List!28243 List!28243) Option!5545)

(assert (=> b!2388231 (= lt!869776 (isDefined!4373 (findConcatSeparation!653 (regOne!14516 r!13927) (regTwo!14516 r!13927) Nil!28145 s!9460 s!9460)))))

(declare-fun lt!869779 () Unit!41107)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!653 (Regex!7002 Regex!7002 List!28243) Unit!41107)

(assert (=> b!2388231 (= lt!869779 (lemmaFindConcatSeparationEquivalentToExists!653 (regOne!14516 r!13927) (regTwo!14516 r!13927) s!9460))))

(declare-fun b!2388232 () Bool)

(declare-fun e!1522593 () Bool)

(assert (=> b!2388232 (= e!1522589 e!1522593)))

(declare-fun res!1014510 () Bool)

(assert (=> b!2388232 (=> res!1014510 e!1522593)))

(declare-fun lt!869781 () List!28242)

(assert (=> b!2388232 (= res!1014510 (isEmpty!16115 lt!869781))))

(declare-fun tail!3506 (List!28242) List!28242)

(assert (=> b!2388232 (= lt!869781 (tail!3506 l!9164))))

(declare-fun b!2388233 () Bool)

(declare-fun tp!761626 () Bool)

(declare-fun tp!761627 () Bool)

(assert (=> b!2388233 (= e!1522594 (and tp!761626 tp!761627))))

(declare-fun b!2388234 () Bool)

(declare-fun e!1522591 () Bool)

(assert (=> b!2388234 (= e!1522593 e!1522591)))

(declare-fun res!1014511 () Bool)

(assert (=> b!2388234 (=> res!1014511 e!1522591)))

(declare-fun validRegex!2727 (Regex!7002) Bool)

(declare-fun head!5236 (List!28242) Regex!7002)

(assert (=> b!2388234 (= res!1014511 (not (validRegex!2727 (head!5236 l!9164))))))

(declare-fun lt!869782 () Regex!7002)

(assert (=> b!2388234 (= lt!869782 (generalisedConcat!103 lt!869781))))

(declare-fun b!2388235 () Bool)

(declare-fun tp!761631 () Bool)

(assert (=> b!2388235 (= e!1522594 tp!761631)))

(declare-fun b!2388236 () Bool)

(declare-fun tp_is_empty!11417 () Bool)

(assert (=> b!2388236 (= e!1522594 tp_is_empty!11417)))

(declare-fun b!2388237 () Bool)

(declare-fun tp!761632 () Bool)

(assert (=> b!2388237 (= e!1522592 (and tp_is_empty!11417 tp!761632))))

(declare-fun b!2388238 () Bool)

(declare-fun ++!6956 (List!28243 List!28243) List!28243)

(assert (=> b!2388238 (= e!1522591 (= (++!6956 Nil!28145 s!9460) s!9460))))

(declare-fun b!2388239 () Bool)

(declare-fun tp!761630 () Bool)

(declare-fun tp!761628 () Bool)

(assert (=> b!2388239 (= e!1522594 (and tp!761630 tp!761628))))

(declare-fun b!2388240 () Bool)

(declare-fun res!1014513 () Bool)

(assert (=> b!2388240 (=> res!1014513 e!1522591)))

(assert (=> b!2388240 (= res!1014513 (not (validRegex!2727 lt!869782)))))

(assert (= (and start!234362 res!1014516) b!2388229))

(assert (= (and b!2388229 res!1014515) b!2388228))

(assert (= (and b!2388228 (not res!1014509)) b!2388231))

(assert (= (and b!2388231 (not res!1014514)) b!2388227))

(assert (= (and b!2388227 (not res!1014512)) b!2388232))

(assert (= (and b!2388232 (not res!1014510)) b!2388234))

(assert (= (and b!2388234 (not res!1014511)) b!2388240))

(assert (= (and b!2388240 (not res!1014513)) b!2388238))

(assert (= (and start!234362 (is-Cons!28144 l!9164)) b!2388230))

(assert (= (and start!234362 (is-ElementMatch!7002 r!13927)) b!2388236))

(assert (= (and start!234362 (is-Concat!11638 r!13927)) b!2388239))

(assert (= (and start!234362 (is-Star!7002 r!13927)) b!2388235))

(assert (= (and start!234362 (is-Union!7002 r!13927)) b!2388233))

(assert (= (and start!234362 (is-Cons!28145 s!9460)) b!2388237))

(declare-fun m!2789141 () Bool)

(assert (=> start!234362 m!2789141))

(declare-fun m!2789143 () Bool)

(assert (=> b!2388229 m!2789143))

(declare-fun m!2789145 () Bool)

(assert (=> b!2388240 m!2789145))

(declare-fun m!2789147 () Bool)

(assert (=> b!2388238 m!2789147))

(declare-fun m!2789149 () Bool)

(assert (=> b!2388231 m!2789149))

(declare-fun m!2789151 () Bool)

(assert (=> b!2388231 m!2789151))

(declare-fun m!2789153 () Bool)

(assert (=> b!2388231 m!2789153))

(assert (=> b!2388231 m!2789149))

(declare-fun m!2789155 () Bool)

(assert (=> b!2388231 m!2789155))

(declare-fun m!2789157 () Bool)

(assert (=> b!2388231 m!2789157))

(declare-fun m!2789159 () Bool)

(assert (=> b!2388231 m!2789159))

(assert (=> b!2388231 m!2789159))

(declare-fun m!2789161 () Bool)

(assert (=> b!2388227 m!2789161))

(declare-fun m!2789163 () Bool)

(assert (=> b!2388228 m!2789163))

(declare-fun m!2789165 () Bool)

(assert (=> b!2388228 m!2789165))

(declare-fun m!2789167 () Bool)

(assert (=> b!2388228 m!2789167))

(declare-fun m!2789169 () Bool)

(assert (=> b!2388232 m!2789169))

(declare-fun m!2789171 () Bool)

(assert (=> b!2388232 m!2789171))

(declare-fun m!2789173 () Bool)

(assert (=> b!2388234 m!2789173))

(assert (=> b!2388234 m!2789173))

(declare-fun m!2789175 () Bool)

(assert (=> b!2388234 m!2789175))

(declare-fun m!2789177 () Bool)

(assert (=> b!2388234 m!2789177))

(push 1)

(assert (not b!2388237))

(assert (not b!2388228))

(assert (not b!2388230))

(assert (not b!2388239))

(assert (not start!234362))

(assert (not b!2388227))

(assert (not b!2388233))

(assert (not b!2388231))

(assert (not b!2388238))

(assert (not b!2388235))

(assert (not b!2388229))

(assert (not b!2388234))

(assert tp_is_empty!11417)

(assert (not b!2388232))

(assert (not b!2388240))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2388320 () Bool)

(declare-fun e!1522637 () Bool)

(declare-fun lt!869809 () List!28243)

(assert (=> b!2388320 (= e!1522637 (or (not (= s!9460 Nil!28145)) (= lt!869809 Nil!28145)))))

(declare-fun b!2388318 () Bool)

(declare-fun e!1522638 () List!28243)

(assert (=> b!2388318 (= e!1522638 (Cons!28145 (h!33546 Nil!28145) (++!6956 (t!208220 Nil!28145) s!9460)))))

(declare-fun b!2388317 () Bool)

(assert (=> b!2388317 (= e!1522638 s!9460)))

(declare-fun d!697756 () Bool)

(assert (=> d!697756 e!1522637))

(declare-fun res!1014563 () Bool)

(assert (=> d!697756 (=> (not res!1014563) (not e!1522637))))

(declare-fun content!3840 (List!28243) (Set C!14162))

(assert (=> d!697756 (= res!1014563 (= (content!3840 lt!869809) (set.union (content!3840 Nil!28145) (content!3840 s!9460))))))

(assert (=> d!697756 (= lt!869809 e!1522638)))

(declare-fun c!379786 () Bool)

(assert (=> d!697756 (= c!379786 (is-Nil!28145 Nil!28145))))

(assert (=> d!697756 (= (++!6956 Nil!28145 s!9460) lt!869809)))

(declare-fun b!2388319 () Bool)

(declare-fun res!1014564 () Bool)

(assert (=> b!2388319 (=> (not res!1014564) (not e!1522637))))

(declare-fun size!22178 (List!28243) Int)

(assert (=> b!2388319 (= res!1014564 (= (size!22178 lt!869809) (+ (size!22178 Nil!28145) (size!22178 s!9460))))))

(assert (= (and d!697756 c!379786) b!2388317))

(assert (= (and d!697756 (not c!379786)) b!2388318))

(assert (= (and d!697756 res!1014563) b!2388319))

(assert (= (and b!2388319 res!1014564) b!2388320))

(declare-fun m!2789221 () Bool)

(assert (=> b!2388318 m!2789221))

(declare-fun m!2789223 () Bool)

(assert (=> d!697756 m!2789223))

(declare-fun m!2789225 () Bool)

(assert (=> d!697756 m!2789225))

(declare-fun m!2789227 () Bool)

(assert (=> d!697756 m!2789227))

(declare-fun m!2789229 () Bool)

(assert (=> b!2388319 m!2789229))

(declare-fun m!2789231 () Bool)

(assert (=> b!2388319 m!2789231))

(declare-fun m!2789233 () Bool)

(assert (=> b!2388319 m!2789233))

(assert (=> b!2388238 d!697756))

(declare-fun d!697760 () Bool)

(assert (=> d!697760 (= (isEmpty!16115 l!9164) (is-Nil!28144 l!9164))))

(assert (=> b!2388227 d!697760))

(declare-fun bs!462365 () Bool)

(declare-fun b!2388366 () Bool)

(assert (= bs!462365 (and b!2388366 b!2388231)))

(declare-fun lambda!89354 () Int)

(assert (=> bs!462365 (not (= lambda!89354 lambda!89337))))

(assert (=> bs!462365 (not (= lambda!89354 lambda!89338))))

(assert (=> b!2388366 true))

(assert (=> b!2388366 true))

(declare-fun bs!462366 () Bool)

(declare-fun b!2388375 () Bool)

(assert (= bs!462366 (and b!2388375 b!2388231)))

(declare-fun lambda!89355 () Int)

(assert (=> bs!462366 (not (= lambda!89355 lambda!89337))))

(assert (=> bs!462366 (= lambda!89355 lambda!89338)))

(declare-fun bs!462367 () Bool)

(assert (= bs!462367 (and b!2388375 b!2388366)))

(assert (=> bs!462367 (not (= lambda!89355 lambda!89354))))

(assert (=> b!2388375 true))

(assert (=> b!2388375 true))

(declare-fun b!2388365 () Bool)

(declare-fun e!1522664 () Bool)

(declare-fun call!145214 () Bool)

(assert (=> b!2388365 (= e!1522664 call!145214)))

(declare-fun e!1522665 () Bool)

(declare-fun call!145213 () Bool)

(assert (=> b!2388366 (= e!1522665 call!145213)))

(declare-fun b!2388367 () Bool)

(declare-fun e!1522663 () Bool)

(declare-fun e!1522667 () Bool)

(assert (=> b!2388367 (= e!1522663 e!1522667)))

(declare-fun c!379801 () Bool)

(assert (=> b!2388367 (= c!379801 (is-Star!7002 r!13927))))

(declare-fun bm!145208 () Bool)

(assert (=> bm!145208 (= call!145213 (Exists!1064 (ite c!379801 lambda!89354 lambda!89355)))))

(declare-fun b!2388368 () Bool)

(declare-fun e!1522666 () Bool)

(assert (=> b!2388368 (= e!1522666 (= s!9460 (Cons!28145 (c!379782 r!13927) Nil!28145)))))

(declare-fun b!2388370 () Bool)

(declare-fun res!1014589 () Bool)

(assert (=> b!2388370 (=> res!1014589 e!1522665)))

(assert (=> b!2388370 (= res!1014589 call!145214)))

(assert (=> b!2388370 (= e!1522667 e!1522665)))

(declare-fun b!2388371 () Bool)

(declare-fun e!1522668 () Bool)

(assert (=> b!2388371 (= e!1522663 e!1522668)))

(declare-fun res!1014588 () Bool)

(assert (=> b!2388371 (= res!1014588 (matchRSpec!851 (regOne!14517 r!13927) s!9460))))

(assert (=> b!2388371 (=> res!1014588 e!1522668)))

(declare-fun b!2388372 () Bool)

(declare-fun e!1522669 () Bool)

(assert (=> b!2388372 (= e!1522664 e!1522669)))

(declare-fun res!1014587 () Bool)

(assert (=> b!2388372 (= res!1014587 (not (is-EmptyLang!7002 r!13927)))))

(assert (=> b!2388372 (=> (not res!1014587) (not e!1522669))))

(declare-fun b!2388369 () Bool)

(declare-fun c!379799 () Bool)

(assert (=> b!2388369 (= c!379799 (is-ElementMatch!7002 r!13927))))

(assert (=> b!2388369 (= e!1522669 e!1522666)))

(declare-fun d!697762 () Bool)

(declare-fun c!379800 () Bool)

(assert (=> d!697762 (= c!379800 (is-EmptyExpr!7002 r!13927))))

(assert (=> d!697762 (= (matchRSpec!851 r!13927 s!9460) e!1522664)))

(declare-fun b!2388373 () Bool)

(declare-fun c!379798 () Bool)

(assert (=> b!2388373 (= c!379798 (is-Union!7002 r!13927))))

(assert (=> b!2388373 (= e!1522666 e!1522663)))

(declare-fun b!2388374 () Bool)

(assert (=> b!2388374 (= e!1522668 (matchRSpec!851 (regTwo!14517 r!13927) s!9460))))

(assert (=> b!2388375 (= e!1522667 call!145213)))

(declare-fun bm!145209 () Bool)

(declare-fun isEmpty!16117 (List!28243) Bool)

(assert (=> bm!145209 (= call!145214 (isEmpty!16117 s!9460))))

(assert (= (and d!697762 c!379800) b!2388365))

(assert (= (and d!697762 (not c!379800)) b!2388372))

(assert (= (and b!2388372 res!1014587) b!2388369))

(assert (= (and b!2388369 c!379799) b!2388368))

(assert (= (and b!2388369 (not c!379799)) b!2388373))

(assert (= (and b!2388373 c!379798) b!2388371))

(assert (= (and b!2388373 (not c!379798)) b!2388367))

(assert (= (and b!2388371 (not res!1014588)) b!2388374))

(assert (= (and b!2388367 c!379801) b!2388370))

(assert (= (and b!2388367 (not c!379801)) b!2388375))

(assert (= (and b!2388370 (not res!1014589)) b!2388366))

(assert (= (or b!2388366 b!2388375) bm!145208))

(assert (= (or b!2388365 b!2388370) bm!145209))

(declare-fun m!2789249 () Bool)

(assert (=> bm!145208 m!2789249))

(declare-fun m!2789251 () Bool)

(assert (=> b!2388371 m!2789251))

(declare-fun m!2789253 () Bool)

(assert (=> b!2388374 m!2789253))

(declare-fun m!2789255 () Bool)

(assert (=> bm!145209 m!2789255))

(assert (=> b!2388228 d!697762))

(declare-fun b!2388431 () Bool)

(declare-fun res!1014625 () Bool)

(declare-fun e!1522711 () Bool)

(assert (=> b!2388431 (=> (not res!1014625) (not e!1522711))))

(declare-fun tail!3508 (List!28243) List!28243)

(assert (=> b!2388431 (= res!1014625 (isEmpty!16117 (tail!3508 s!9460)))))

(declare-fun b!2388432 () Bool)

(declare-fun res!1014627 () Bool)

(declare-fun e!1522708 () Bool)

(assert (=> b!2388432 (=> res!1014627 e!1522708)))

(assert (=> b!2388432 (= res!1014627 (not (is-ElementMatch!7002 r!13927)))))

(declare-fun e!1522705 () Bool)

(assert (=> b!2388432 (= e!1522705 e!1522708)))

(declare-fun bm!145221 () Bool)

(declare-fun call!145226 () Bool)

(assert (=> bm!145221 (= call!145226 (isEmpty!16117 s!9460))))

(declare-fun b!2388433 () Bool)

(declare-fun res!1014622 () Bool)

(assert (=> b!2388433 (=> (not res!1014622) (not e!1522711))))

(assert (=> b!2388433 (= res!1014622 (not call!145226))))

(declare-fun b!2388434 () Bool)

(declare-fun e!1522709 () Bool)

(declare-fun e!1522710 () Bool)

(assert (=> b!2388434 (= e!1522709 e!1522710)))

(declare-fun res!1014628 () Bool)

(assert (=> b!2388434 (=> res!1014628 e!1522710)))

(assert (=> b!2388434 (= res!1014628 call!145226)))

(declare-fun b!2388435 () Bool)

(declare-fun lt!869815 () Bool)

(assert (=> b!2388435 (= e!1522705 (not lt!869815))))

(declare-fun b!2388437 () Bool)

(declare-fun e!1522706 () Bool)

(declare-fun nullable!2051 (Regex!7002) Bool)

(assert (=> b!2388437 (= e!1522706 (nullable!2051 r!13927))))

(declare-fun b!2388438 () Bool)

(declare-fun e!1522707 () Bool)

(assert (=> b!2388438 (= e!1522707 e!1522705)))

(declare-fun c!379816 () Bool)

(assert (=> b!2388438 (= c!379816 (is-EmptyLang!7002 r!13927))))

(declare-fun b!2388439 () Bool)

(assert (=> b!2388439 (= e!1522708 e!1522709)))

(declare-fun res!1014621 () Bool)

(assert (=> b!2388439 (=> (not res!1014621) (not e!1522709))))

(assert (=> b!2388439 (= res!1014621 (not lt!869815))))

(declare-fun b!2388440 () Bool)

(declare-fun derivativeStep!1709 (Regex!7002 C!14162) Regex!7002)

(declare-fun head!5238 (List!28243) C!14162)

(assert (=> b!2388440 (= e!1522706 (matchR!3119 (derivativeStep!1709 r!13927 (head!5238 s!9460)) (tail!3508 s!9460)))))

(declare-fun b!2388441 () Bool)

(assert (=> b!2388441 (= e!1522711 (= (head!5238 s!9460) (c!379782 r!13927)))))

(declare-fun b!2388442 () Bool)

(declare-fun res!1014626 () Bool)

(assert (=> b!2388442 (=> res!1014626 e!1522708)))

(assert (=> b!2388442 (= res!1014626 e!1522711)))

(declare-fun res!1014623 () Bool)

(assert (=> b!2388442 (=> (not res!1014623) (not e!1522711))))

(assert (=> b!2388442 (= res!1014623 lt!869815)))

(declare-fun b!2388443 () Bool)

(assert (=> b!2388443 (= e!1522710 (not (= (head!5238 s!9460) (c!379782 r!13927))))))

(declare-fun b!2388444 () Bool)

(declare-fun res!1014624 () Bool)

(assert (=> b!2388444 (=> res!1014624 e!1522710)))

(assert (=> b!2388444 (= res!1014624 (not (isEmpty!16117 (tail!3508 s!9460))))))

(declare-fun d!697772 () Bool)

(assert (=> d!697772 e!1522707))

(declare-fun c!379814 () Bool)

(assert (=> d!697772 (= c!379814 (is-EmptyExpr!7002 r!13927))))

(assert (=> d!697772 (= lt!869815 e!1522706)))

(declare-fun c!379815 () Bool)

(assert (=> d!697772 (= c!379815 (isEmpty!16117 s!9460))))

(assert (=> d!697772 (validRegex!2727 r!13927)))

(assert (=> d!697772 (= (matchR!3119 r!13927 s!9460) lt!869815)))

(declare-fun b!2388436 () Bool)

(assert (=> b!2388436 (= e!1522707 (= lt!869815 call!145226))))

(assert (= (and d!697772 c!379815) b!2388437))

(assert (= (and d!697772 (not c!379815)) b!2388440))

(assert (= (and d!697772 c!379814) b!2388436))

(assert (= (and d!697772 (not c!379814)) b!2388438))

(assert (= (and b!2388438 c!379816) b!2388435))

(assert (= (and b!2388438 (not c!379816)) b!2388432))

(assert (= (and b!2388432 (not res!1014627)) b!2388442))

(assert (= (and b!2388442 res!1014623) b!2388433))

(assert (= (and b!2388433 res!1014622) b!2388431))

(assert (= (and b!2388431 res!1014625) b!2388441))

(assert (= (and b!2388442 (not res!1014626)) b!2388439))

(assert (= (and b!2388439 res!1014621) b!2388434))

(assert (= (and b!2388434 (not res!1014628)) b!2388444))

(assert (= (and b!2388444 (not res!1014624)) b!2388443))

(assert (= (or b!2388436 b!2388433 b!2388434) bm!145221))

(declare-fun m!2789257 () Bool)

(assert (=> b!2388440 m!2789257))

(assert (=> b!2388440 m!2789257))

(declare-fun m!2789259 () Bool)

(assert (=> b!2388440 m!2789259))

(declare-fun m!2789261 () Bool)

(assert (=> b!2388440 m!2789261))

(assert (=> b!2388440 m!2789259))

(assert (=> b!2388440 m!2789261))

(declare-fun m!2789263 () Bool)

(assert (=> b!2388440 m!2789263))

(assert (=> b!2388444 m!2789261))

(assert (=> b!2388444 m!2789261))

(declare-fun m!2789265 () Bool)

(assert (=> b!2388444 m!2789265))

(assert (=> b!2388431 m!2789261))

(assert (=> b!2388431 m!2789261))

(assert (=> b!2388431 m!2789265))

(assert (=> b!2388441 m!2789257))

(declare-fun m!2789267 () Bool)

(assert (=> b!2388437 m!2789267))

(assert (=> b!2388443 m!2789257))

(assert (=> d!697772 m!2789255))

(declare-fun m!2789269 () Bool)

(assert (=> d!697772 m!2789269))

(assert (=> bm!145221 m!2789255))

(assert (=> b!2388228 d!697772))

(declare-fun d!697774 () Bool)

(assert (=> d!697774 (= (matchR!3119 r!13927 s!9460) (matchRSpec!851 r!13927 s!9460))))

(declare-fun lt!869818 () Unit!41107)

(declare-fun choose!14037 (Regex!7002 List!28243) Unit!41107)

(assert (=> d!697774 (= lt!869818 (choose!14037 r!13927 s!9460))))

(assert (=> d!697774 (validRegex!2727 r!13927)))

(assert (=> d!697774 (= (mainMatchTheorem!851 r!13927 s!9460) lt!869818)))

(declare-fun bs!462368 () Bool)

(assert (= bs!462368 d!697774))

(assert (=> bs!462368 m!2789165))

(assert (=> bs!462368 m!2789163))

(declare-fun m!2789277 () Bool)

(assert (=> bs!462368 m!2789277))

(assert (=> bs!462368 m!2789269))

(assert (=> b!2388228 d!697774))

(declare-fun d!697780 () Bool)

(declare-fun isEmpty!16118 (Option!5545) Bool)

(assert (=> d!697780 (= (isDefined!4373 (findConcatSeparation!653 (regOne!14516 r!13927) (regTwo!14516 r!13927) Nil!28145 s!9460 s!9460)) (not (isEmpty!16118 (findConcatSeparation!653 (regOne!14516 r!13927) (regTwo!14516 r!13927) Nil!28145 s!9460 s!9460))))))

(declare-fun bs!462369 () Bool)

(assert (= bs!462369 d!697780))

(assert (=> bs!462369 m!2789149))

(declare-fun m!2789279 () Bool)

(assert (=> bs!462369 m!2789279))

(assert (=> b!2388231 d!697780))

(declare-fun d!697782 () Bool)

(declare-fun choose!14038 (Int) Bool)

(assert (=> d!697782 (= (Exists!1064 lambda!89338) (choose!14038 lambda!89338))))

(declare-fun bs!462370 () Bool)

(assert (= bs!462370 d!697782))

(declare-fun m!2789281 () Bool)

(assert (=> bs!462370 m!2789281))

(assert (=> b!2388231 d!697782))

(declare-fun bs!462371 () Bool)

(declare-fun d!697784 () Bool)

(assert (= bs!462371 (and d!697784 b!2388231)))

(declare-fun lambda!89360 () Int)

(assert (=> bs!462371 (= lambda!89360 lambda!89337)))

(assert (=> bs!462371 (not (= lambda!89360 lambda!89338))))

(declare-fun bs!462372 () Bool)

(assert (= bs!462372 (and d!697784 b!2388366)))

(assert (=> bs!462372 (not (= lambda!89360 lambda!89354))))

(declare-fun bs!462373 () Bool)

(assert (= bs!462373 (and d!697784 b!2388375)))

(assert (=> bs!462373 (not (= lambda!89360 lambda!89355))))

(assert (=> d!697784 true))

(assert (=> d!697784 true))

(assert (=> d!697784 true))

(assert (=> d!697784 (= (isDefined!4373 (findConcatSeparation!653 (regOne!14516 r!13927) (regTwo!14516 r!13927) Nil!28145 s!9460 s!9460)) (Exists!1064 lambda!89360))))

(declare-fun lt!869821 () Unit!41107)

(declare-fun choose!14039 (Regex!7002 Regex!7002 List!28243) Unit!41107)

(assert (=> d!697784 (= lt!869821 (choose!14039 (regOne!14516 r!13927) (regTwo!14516 r!13927) s!9460))))

(assert (=> d!697784 (validRegex!2727 (regOne!14516 r!13927))))

(assert (=> d!697784 (= (lemmaFindConcatSeparationEquivalentToExists!653 (regOne!14516 r!13927) (regTwo!14516 r!13927) s!9460) lt!869821)))

(declare-fun bs!462374 () Bool)

(assert (= bs!462374 d!697784))

(assert (=> bs!462374 m!2789149))

(assert (=> bs!462374 m!2789151))

(declare-fun m!2789283 () Bool)

(assert (=> bs!462374 m!2789283))

(declare-fun m!2789285 () Bool)

(assert (=> bs!462374 m!2789285))

(assert (=> bs!462374 m!2789149))

(declare-fun m!2789287 () Bool)

(assert (=> bs!462374 m!2789287))

(assert (=> b!2388231 d!697784))

(declare-fun bs!462376 () Bool)

(declare-fun d!697786 () Bool)

(assert (= bs!462376 (and d!697786 b!2388366)))

(declare-fun lambda!89366 () Int)

(assert (=> bs!462376 (not (= lambda!89366 lambda!89354))))

(declare-fun bs!462377 () Bool)

(assert (= bs!462377 (and d!697786 b!2388231)))

(assert (=> bs!462377 (not (= lambda!89366 lambda!89338))))

(declare-fun bs!462378 () Bool)

(assert (= bs!462378 (and d!697786 b!2388375)))

(assert (=> bs!462378 (not (= lambda!89366 lambda!89355))))

(declare-fun bs!462379 () Bool)

(assert (= bs!462379 (and d!697786 d!697784)))

(assert (=> bs!462379 (= lambda!89366 lambda!89360)))

(assert (=> bs!462377 (= lambda!89366 lambda!89337)))

(assert (=> d!697786 true))

(assert (=> d!697786 true))

(assert (=> d!697786 true))

(declare-fun lambda!89367 () Int)

(assert (=> bs!462376 (not (= lambda!89367 lambda!89354))))

(declare-fun bs!462380 () Bool)

(assert (= bs!462380 d!697786))

(assert (=> bs!462380 (not (= lambda!89367 lambda!89366))))

(assert (=> bs!462377 (= lambda!89367 lambda!89338)))

(assert (=> bs!462378 (= lambda!89367 lambda!89355)))

(assert (=> bs!462379 (not (= lambda!89367 lambda!89360))))

(assert (=> bs!462377 (not (= lambda!89367 lambda!89337))))

(assert (=> d!697786 true))

(assert (=> d!697786 true))

(assert (=> d!697786 true))

(assert (=> d!697786 (= (Exists!1064 lambda!89366) (Exists!1064 lambda!89367))))

(declare-fun lt!869827 () Unit!41107)

(declare-fun choose!14040 (Regex!7002 Regex!7002 List!28243) Unit!41107)

(assert (=> d!697786 (= lt!869827 (choose!14040 (regOne!14516 r!13927) (regTwo!14516 r!13927) s!9460))))

(assert (=> d!697786 (validRegex!2727 (regOne!14516 r!13927))))

(assert (=> d!697786 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!403 (regOne!14516 r!13927) (regTwo!14516 r!13927) s!9460) lt!869827)))

(declare-fun m!2789305 () Bool)

(assert (=> bs!462380 m!2789305))

(declare-fun m!2789309 () Bool)

(assert (=> bs!462380 m!2789309))

(declare-fun m!2789311 () Bool)

(assert (=> bs!462380 m!2789311))

(assert (=> bs!462380 m!2789283))

(assert (=> b!2388231 d!697786))

(declare-fun d!697788 () Bool)

(assert (=> d!697788 (= (Exists!1064 lambda!89337) (choose!14038 lambda!89337))))

(declare-fun bs!462381 () Bool)

(assert (= bs!462381 d!697788))

(declare-fun m!2789313 () Bool)

(assert (=> bs!462381 m!2789313))

(assert (=> b!2388231 d!697788))

(declare-fun d!697792 () Bool)

(declare-fun e!1522747 () Bool)

(assert (=> d!697792 e!1522747))

(declare-fun res!1014659 () Bool)

(assert (=> d!697792 (=> res!1014659 e!1522747)))

(declare-fun e!1522750 () Bool)

(assert (=> d!697792 (= res!1014659 e!1522750)))

(declare-fun res!1014660 () Bool)

(assert (=> d!697792 (=> (not res!1014660) (not e!1522750))))

(declare-fun lt!869835 () Option!5545)

(assert (=> d!697792 (= res!1014660 (isDefined!4373 lt!869835))))

(declare-fun e!1522749 () Option!5545)

(assert (=> d!697792 (= lt!869835 e!1522749)))

(declare-fun c!379834 () Bool)

(declare-fun e!1522748 () Bool)

(assert (=> d!697792 (= c!379834 e!1522748)))

(declare-fun res!1014661 () Bool)

(assert (=> d!697792 (=> (not res!1014661) (not e!1522748))))

(assert (=> d!697792 (= res!1014661 (matchR!3119 (regOne!14516 r!13927) Nil!28145))))

(assert (=> d!697792 (validRegex!2727 (regOne!14516 r!13927))))

(assert (=> d!697792 (= (findConcatSeparation!653 (regOne!14516 r!13927) (regTwo!14516 r!13927) Nil!28145 s!9460 s!9460) lt!869835)))

(declare-fun b!2388505 () Bool)

(declare-fun lt!869834 () Unit!41107)

(declare-fun lt!869836 () Unit!41107)

(assert (=> b!2388505 (= lt!869834 lt!869836)))

(assert (=> b!2388505 (= (++!6956 (++!6956 Nil!28145 (Cons!28145 (h!33546 s!9460) Nil!28145)) (t!208220 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!598 (List!28243 C!14162 List!28243 List!28243) Unit!41107)

(assert (=> b!2388505 (= lt!869836 (lemmaMoveElementToOtherListKeepsConcatEq!598 Nil!28145 (h!33546 s!9460) (t!208220 s!9460) s!9460))))

(declare-fun e!1522746 () Option!5545)

(assert (=> b!2388505 (= e!1522746 (findConcatSeparation!653 (regOne!14516 r!13927) (regTwo!14516 r!13927) (++!6956 Nil!28145 (Cons!28145 (h!33546 s!9460) Nil!28145)) (t!208220 s!9460) s!9460))))

(declare-fun b!2388506 () Bool)

(declare-fun res!1014658 () Bool)

(assert (=> b!2388506 (=> (not res!1014658) (not e!1522750))))

(declare-fun get!8601 (Option!5545) tuple2!27868)

(assert (=> b!2388506 (= res!1014658 (matchR!3119 (regOne!14516 r!13927) (_1!16475 (get!8601 lt!869835))))))

(declare-fun b!2388507 () Bool)

(assert (=> b!2388507 (= e!1522746 None!5544)))

(declare-fun b!2388508 () Bool)

(assert (=> b!2388508 (= e!1522750 (= (++!6956 (_1!16475 (get!8601 lt!869835)) (_2!16475 (get!8601 lt!869835))) s!9460))))

(declare-fun b!2388509 () Bool)

(declare-fun res!1014657 () Bool)

(assert (=> b!2388509 (=> (not res!1014657) (not e!1522750))))

(assert (=> b!2388509 (= res!1014657 (matchR!3119 (regTwo!14516 r!13927) (_2!16475 (get!8601 lt!869835))))))

(declare-fun b!2388510 () Bool)

(assert (=> b!2388510 (= e!1522749 (Some!5544 (tuple2!27869 Nil!28145 s!9460)))))

(declare-fun b!2388511 () Bool)

(assert (=> b!2388511 (= e!1522747 (not (isDefined!4373 lt!869835)))))

(declare-fun b!2388512 () Bool)

(assert (=> b!2388512 (= e!1522749 e!1522746)))

(declare-fun c!379833 () Bool)

(assert (=> b!2388512 (= c!379833 (is-Nil!28145 s!9460))))

(declare-fun b!2388513 () Bool)

(assert (=> b!2388513 (= e!1522748 (matchR!3119 (regTwo!14516 r!13927) s!9460))))

(assert (= (and d!697792 res!1014661) b!2388513))

(assert (= (and d!697792 c!379834) b!2388510))

(assert (= (and d!697792 (not c!379834)) b!2388512))

(assert (= (and b!2388512 c!379833) b!2388507))

(assert (= (and b!2388512 (not c!379833)) b!2388505))

(assert (= (and d!697792 res!1014660) b!2388506))

(assert (= (and b!2388506 res!1014658) b!2388509))

(assert (= (and b!2388509 res!1014657) b!2388508))

(assert (= (and d!697792 (not res!1014659)) b!2388511))

(declare-fun m!2789319 () Bool)

(assert (=> b!2388506 m!2789319))

(declare-fun m!2789321 () Bool)

(assert (=> b!2388506 m!2789321))

(assert (=> b!2388509 m!2789319))

(declare-fun m!2789323 () Bool)

(assert (=> b!2388509 m!2789323))

(assert (=> b!2388508 m!2789319))

(declare-fun m!2789325 () Bool)

(assert (=> b!2388508 m!2789325))

(declare-fun m!2789327 () Bool)

(assert (=> b!2388513 m!2789327))

(declare-fun m!2789329 () Bool)

(assert (=> b!2388505 m!2789329))

(assert (=> b!2388505 m!2789329))

(declare-fun m!2789331 () Bool)

(assert (=> b!2388505 m!2789331))

(declare-fun m!2789333 () Bool)

(assert (=> b!2388505 m!2789333))

(assert (=> b!2388505 m!2789329))

(declare-fun m!2789335 () Bool)

(assert (=> b!2388505 m!2789335))

(declare-fun m!2789337 () Bool)

(assert (=> b!2388511 m!2789337))

(assert (=> d!697792 m!2789337))

(declare-fun m!2789339 () Bool)

(assert (=> d!697792 m!2789339))

(assert (=> d!697792 m!2789283))

(assert (=> b!2388231 d!697792))

(declare-fun d!697798 () Bool)

(assert (=> d!697798 (= (isEmpty!16115 lt!869781) (is-Nil!28144 lt!869781))))

(assert (=> b!2388232 d!697798))

(declare-fun d!697800 () Bool)

(assert (=> d!697800 (= (tail!3506 l!9164) (t!208219 l!9164))))

(assert (=> b!2388232 d!697800))

(declare-fun d!697802 () Bool)

(declare-fun res!1014666 () Bool)

(declare-fun e!1522755 () Bool)

(assert (=> d!697802 (=> res!1014666 e!1522755)))

(assert (=> d!697802 (= res!1014666 (is-Nil!28144 l!9164))))

(assert (=> d!697802 (= (forall!5636 l!9164 lambda!89336) e!1522755)))

(declare-fun b!2388518 () Bool)

(declare-fun e!1522756 () Bool)

(assert (=> b!2388518 (= e!1522755 e!1522756)))

(declare-fun res!1014667 () Bool)

(assert (=> b!2388518 (=> (not res!1014667) (not e!1522756))))

(declare-fun dynLambda!12118 (Int Regex!7002) Bool)

(assert (=> b!2388518 (= res!1014667 (dynLambda!12118 lambda!89336 (h!33545 l!9164)))))

(declare-fun b!2388519 () Bool)

(assert (=> b!2388519 (= e!1522756 (forall!5636 (t!208219 l!9164) lambda!89336))))

(assert (= (and d!697802 (not res!1014666)) b!2388518))

(assert (= (and b!2388518 res!1014667) b!2388519))

(declare-fun b_lambda!74165 () Bool)

(assert (=> (not b_lambda!74165) (not b!2388518)))

(declare-fun m!2789341 () Bool)

(assert (=> b!2388518 m!2789341))

(declare-fun m!2789343 () Bool)

(assert (=> b!2388519 m!2789343))

(assert (=> start!234362 d!697802))

(declare-fun b!2388542 () Bool)

(declare-fun e!1522779 () Bool)

(declare-fun call!145234 () Bool)

(assert (=> b!2388542 (= e!1522779 call!145234)))

(declare-fun b!2388543 () Bool)

(declare-fun e!1522773 () Bool)

(declare-fun call!145233 () Bool)

(assert (=> b!2388543 (= e!1522773 call!145233)))

(declare-fun d!697804 () Bool)

(declare-fun res!1014686 () Bool)

(declare-fun e!1522774 () Bool)

(assert (=> d!697804 (=> res!1014686 e!1522774)))

(assert (=> d!697804 (= res!1014686 (is-ElementMatch!7002 (head!5236 l!9164)))))

(assert (=> d!697804 (= (validRegex!2727 (head!5236 l!9164)) e!1522774)))

(declare-fun bm!145228 () Bool)

(declare-fun c!379839 () Bool)

(assert (=> bm!145228 (= call!145234 (validRegex!2727 (ite c!379839 (regOne!14517 (head!5236 l!9164)) (regTwo!14516 (head!5236 l!9164)))))))

(declare-fun c!379840 () Bool)

(declare-fun bm!145229 () Bool)

(assert (=> bm!145229 (= call!145233 (validRegex!2727 (ite c!379840 (reg!7331 (head!5236 l!9164)) (ite c!379839 (regTwo!14517 (head!5236 l!9164)) (regOne!14516 (head!5236 l!9164))))))))

(declare-fun b!2388544 () Bool)

(declare-fun e!1522776 () Bool)

(declare-fun call!145235 () Bool)

(assert (=> b!2388544 (= e!1522776 call!145235)))

(declare-fun b!2388545 () Bool)

(declare-fun e!1522777 () Bool)

(assert (=> b!2388545 (= e!1522774 e!1522777)))

(assert (=> b!2388545 (= c!379840 (is-Star!7002 (head!5236 l!9164)))))

(declare-fun bm!145230 () Bool)

(assert (=> bm!145230 (= call!145235 call!145233)))

(declare-fun b!2388546 () Bool)

(declare-fun res!1014685 () Bool)

(assert (=> b!2388546 (=> (not res!1014685) (not e!1522776))))

(assert (=> b!2388546 (= res!1014685 call!145234)))

(declare-fun e!1522775 () Bool)

(assert (=> b!2388546 (= e!1522775 e!1522776)))

(declare-fun b!2388547 () Bool)

(declare-fun e!1522778 () Bool)

(assert (=> b!2388547 (= e!1522778 e!1522779)))

(declare-fun res!1014682 () Bool)

(assert (=> b!2388547 (=> (not res!1014682) (not e!1522779))))

(assert (=> b!2388547 (= res!1014682 call!145235)))

(declare-fun b!2388548 () Bool)

(declare-fun res!1014684 () Bool)

(assert (=> b!2388548 (=> res!1014684 e!1522778)))

(assert (=> b!2388548 (= res!1014684 (not (is-Concat!11638 (head!5236 l!9164))))))

(assert (=> b!2388548 (= e!1522775 e!1522778)))

(declare-fun b!2388549 () Bool)

(assert (=> b!2388549 (= e!1522777 e!1522775)))

(assert (=> b!2388549 (= c!379839 (is-Union!7002 (head!5236 l!9164)))))

(declare-fun b!2388550 () Bool)

(assert (=> b!2388550 (= e!1522777 e!1522773)))

(declare-fun res!1014683 () Bool)

(assert (=> b!2388550 (= res!1014683 (not (nullable!2051 (reg!7331 (head!5236 l!9164)))))))

(assert (=> b!2388550 (=> (not res!1014683) (not e!1522773))))

(assert (= (and d!697804 (not res!1014686)) b!2388545))

(assert (= (and b!2388545 c!379840) b!2388550))

(assert (= (and b!2388545 (not c!379840)) b!2388549))

(assert (= (and b!2388550 res!1014683) b!2388543))

(assert (= (and b!2388549 c!379839) b!2388546))

(assert (= (and b!2388549 (not c!379839)) b!2388548))

(assert (= (and b!2388546 res!1014685) b!2388544))

(assert (= (and b!2388548 (not res!1014684)) b!2388547))

(assert (= (and b!2388547 res!1014682) b!2388542))

(assert (= (or b!2388546 b!2388542) bm!145228))

(assert (= (or b!2388544 b!2388547) bm!145230))

(assert (= (or b!2388543 bm!145230) bm!145229))

(declare-fun m!2789345 () Bool)

(assert (=> bm!145228 m!2789345))

(declare-fun m!2789347 () Bool)

(assert (=> bm!145229 m!2789347))

(declare-fun m!2789349 () Bool)

(assert (=> b!2388550 m!2789349))

(assert (=> b!2388234 d!697804))

(declare-fun d!697806 () Bool)

(assert (=> d!697806 (= (head!5236 l!9164) (h!33545 l!9164))))

(assert (=> b!2388234 d!697806))

(declare-fun bs!462386 () Bool)

(declare-fun d!697808 () Bool)

(assert (= bs!462386 (and d!697808 start!234362)))

(declare-fun lambda!89373 () Int)

(assert (=> bs!462386 (= lambda!89373 lambda!89336)))

(declare-fun b!2388571 () Bool)

(declare-fun e!1522794 () Bool)

(declare-fun e!1522793 () Bool)

(assert (=> b!2388571 (= e!1522794 e!1522793)))

(declare-fun c!379852 () Bool)

(assert (=> b!2388571 (= c!379852 (isEmpty!16115 (tail!3506 lt!869781)))))

(declare-fun b!2388572 () Bool)

(declare-fun e!1522792 () Regex!7002)

(declare-fun e!1522796 () Regex!7002)

(assert (=> b!2388572 (= e!1522792 e!1522796)))

(declare-fun c!379851 () Bool)

(assert (=> b!2388572 (= c!379851 (is-Cons!28144 lt!869781))))

(declare-fun b!2388573 () Bool)

(declare-fun lt!869842 () Regex!7002)

(declare-fun isConcat!72 (Regex!7002) Bool)

(assert (=> b!2388573 (= e!1522793 (isConcat!72 lt!869842))))

(declare-fun b!2388574 () Bool)

(declare-fun isEmptyExpr!72 (Regex!7002) Bool)

(assert (=> b!2388574 (= e!1522794 (isEmptyExpr!72 lt!869842))))

(declare-fun b!2388575 () Bool)

(declare-fun e!1522797 () Bool)

(assert (=> b!2388575 (= e!1522797 e!1522794)))

(declare-fun c!379849 () Bool)

(assert (=> b!2388575 (= c!379849 (isEmpty!16115 lt!869781))))

(declare-fun b!2388576 () Bool)

(assert (=> b!2388576 (= e!1522792 (h!33545 lt!869781))))

(assert (=> d!697808 e!1522797))

(declare-fun res!1014691 () Bool)

(assert (=> d!697808 (=> (not res!1014691) (not e!1522797))))

(assert (=> d!697808 (= res!1014691 (validRegex!2727 lt!869842))))

(assert (=> d!697808 (= lt!869842 e!1522792)))

(declare-fun c!379850 () Bool)

(declare-fun e!1522795 () Bool)

(assert (=> d!697808 (= c!379850 e!1522795)))

(declare-fun res!1014692 () Bool)

(assert (=> d!697808 (=> (not res!1014692) (not e!1522795))))

(assert (=> d!697808 (= res!1014692 (is-Cons!28144 lt!869781))))

(assert (=> d!697808 (forall!5636 lt!869781 lambda!89373)))

(assert (=> d!697808 (= (generalisedConcat!103 lt!869781) lt!869842)))

(declare-fun b!2388577 () Bool)

(assert (=> b!2388577 (= e!1522796 EmptyExpr!7002)))

(declare-fun b!2388578 () Bool)

(assert (=> b!2388578 (= e!1522793 (= lt!869842 (head!5236 lt!869781)))))

(declare-fun b!2388579 () Bool)

(assert (=> b!2388579 (= e!1522796 (Concat!11638 (h!33545 lt!869781) (generalisedConcat!103 (t!208219 lt!869781))))))

(declare-fun b!2388580 () Bool)

(assert (=> b!2388580 (= e!1522795 (isEmpty!16115 (t!208219 lt!869781)))))

(assert (= (and d!697808 res!1014692) b!2388580))

(assert (= (and d!697808 c!379850) b!2388576))

(assert (= (and d!697808 (not c!379850)) b!2388572))

(assert (= (and b!2388572 c!379851) b!2388579))

(assert (= (and b!2388572 (not c!379851)) b!2388577))

(assert (= (and d!697808 res!1014691) b!2388575))

(assert (= (and b!2388575 c!379849) b!2388574))

(assert (= (and b!2388575 (not c!379849)) b!2388571))

(assert (= (and b!2388571 c!379852) b!2388578))

(assert (= (and b!2388571 (not c!379852)) b!2388573))

(declare-fun m!2789357 () Bool)

(assert (=> b!2388573 m!2789357))

(declare-fun m!2789359 () Bool)

(assert (=> b!2388580 m!2789359))

(declare-fun m!2789361 () Bool)

(assert (=> b!2388571 m!2789361))

(assert (=> b!2388571 m!2789361))

(declare-fun m!2789363 () Bool)

(assert (=> b!2388571 m!2789363))

(declare-fun m!2789365 () Bool)

(assert (=> b!2388574 m!2789365))

(declare-fun m!2789367 () Bool)

(assert (=> d!697808 m!2789367))

(declare-fun m!2789369 () Bool)

(assert (=> d!697808 m!2789369))

(assert (=> b!2388575 m!2789169))

(declare-fun m!2789371 () Bool)

(assert (=> b!2388579 m!2789371))

(declare-fun m!2789373 () Bool)

(assert (=> b!2388578 m!2789373))

(assert (=> b!2388234 d!697808))

(declare-fun b!2388581 () Bool)

(declare-fun e!1522804 () Bool)

(declare-fun call!145237 () Bool)

(assert (=> b!2388581 (= e!1522804 call!145237)))

(declare-fun b!2388582 () Bool)

(declare-fun e!1522798 () Bool)

(declare-fun call!145236 () Bool)

(assert (=> b!2388582 (= e!1522798 call!145236)))

(declare-fun d!697812 () Bool)

(declare-fun res!1014697 () Bool)

(declare-fun e!1522799 () Bool)

(assert (=> d!697812 (=> res!1014697 e!1522799)))

(assert (=> d!697812 (= res!1014697 (is-ElementMatch!7002 lt!869782))))

(assert (=> d!697812 (= (validRegex!2727 lt!869782) e!1522799)))

(declare-fun bm!145231 () Bool)

(declare-fun c!379853 () Bool)

(assert (=> bm!145231 (= call!145237 (validRegex!2727 (ite c!379853 (regOne!14517 lt!869782) (regTwo!14516 lt!869782))))))

(declare-fun c!379854 () Bool)

(declare-fun bm!145232 () Bool)

(assert (=> bm!145232 (= call!145236 (validRegex!2727 (ite c!379854 (reg!7331 lt!869782) (ite c!379853 (regTwo!14517 lt!869782) (regOne!14516 lt!869782)))))))

(declare-fun b!2388583 () Bool)

(declare-fun e!1522801 () Bool)

(declare-fun call!145238 () Bool)

(assert (=> b!2388583 (= e!1522801 call!145238)))

(declare-fun b!2388584 () Bool)

(declare-fun e!1522802 () Bool)

(assert (=> b!2388584 (= e!1522799 e!1522802)))

(assert (=> b!2388584 (= c!379854 (is-Star!7002 lt!869782))))

(declare-fun bm!145233 () Bool)

(assert (=> bm!145233 (= call!145238 call!145236)))

(declare-fun b!2388585 () Bool)

(declare-fun res!1014696 () Bool)

(assert (=> b!2388585 (=> (not res!1014696) (not e!1522801))))

(assert (=> b!2388585 (= res!1014696 call!145237)))

(declare-fun e!1522800 () Bool)

(assert (=> b!2388585 (= e!1522800 e!1522801)))

(declare-fun b!2388586 () Bool)

(declare-fun e!1522803 () Bool)

(assert (=> b!2388586 (= e!1522803 e!1522804)))

(declare-fun res!1014693 () Bool)

(assert (=> b!2388586 (=> (not res!1014693) (not e!1522804))))

(assert (=> b!2388586 (= res!1014693 call!145238)))

(declare-fun b!2388587 () Bool)

(declare-fun res!1014695 () Bool)

(assert (=> b!2388587 (=> res!1014695 e!1522803)))

(assert (=> b!2388587 (= res!1014695 (not (is-Concat!11638 lt!869782)))))

(assert (=> b!2388587 (= e!1522800 e!1522803)))

(declare-fun b!2388588 () Bool)

(assert (=> b!2388588 (= e!1522802 e!1522800)))

(assert (=> b!2388588 (= c!379853 (is-Union!7002 lt!869782))))

(declare-fun b!2388589 () Bool)

(assert (=> b!2388589 (= e!1522802 e!1522798)))

(declare-fun res!1014694 () Bool)

(assert (=> b!2388589 (= res!1014694 (not (nullable!2051 (reg!7331 lt!869782))))))

(assert (=> b!2388589 (=> (not res!1014694) (not e!1522798))))

(assert (= (and d!697812 (not res!1014697)) b!2388584))

(assert (= (and b!2388584 c!379854) b!2388589))

(assert (= (and b!2388584 (not c!379854)) b!2388588))

(assert (= (and b!2388589 res!1014694) b!2388582))

(assert (= (and b!2388588 c!379853) b!2388585))

(assert (= (and b!2388588 (not c!379853)) b!2388587))

(assert (= (and b!2388585 res!1014696) b!2388583))

(assert (= (and b!2388587 (not res!1014695)) b!2388586))

(assert (= (and b!2388586 res!1014693) b!2388581))

(assert (= (or b!2388585 b!2388581) bm!145231))

(assert (= (or b!2388583 b!2388586) bm!145233))

(assert (= (or b!2388582 bm!145233) bm!145232))

(declare-fun m!2789375 () Bool)

(assert (=> bm!145231 m!2789375))

(declare-fun m!2789377 () Bool)

(assert (=> bm!145232 m!2789377))

(declare-fun m!2789379 () Bool)

(assert (=> b!2388589 m!2789379))

(assert (=> b!2388240 d!697812))

(declare-fun bs!462387 () Bool)

(declare-fun d!697814 () Bool)

(assert (= bs!462387 (and d!697814 start!234362)))

(declare-fun lambda!89374 () Int)

(assert (=> bs!462387 (= lambda!89374 lambda!89336)))

(declare-fun bs!462388 () Bool)

(assert (= bs!462388 (and d!697814 d!697808)))

(assert (=> bs!462388 (= lambda!89374 lambda!89373)))

(declare-fun b!2388590 () Bool)

(declare-fun e!1522807 () Bool)

(declare-fun e!1522806 () Bool)

(assert (=> b!2388590 (= e!1522807 e!1522806)))

(declare-fun c!379858 () Bool)

(assert (=> b!2388590 (= c!379858 (isEmpty!16115 (tail!3506 l!9164)))))

(declare-fun b!2388591 () Bool)

(declare-fun e!1522805 () Regex!7002)

(declare-fun e!1522809 () Regex!7002)

(assert (=> b!2388591 (= e!1522805 e!1522809)))

(declare-fun c!379857 () Bool)

(assert (=> b!2388591 (= c!379857 (is-Cons!28144 l!9164))))

(declare-fun b!2388592 () Bool)

(declare-fun lt!869843 () Regex!7002)

(assert (=> b!2388592 (= e!1522806 (isConcat!72 lt!869843))))

(declare-fun b!2388593 () Bool)

(assert (=> b!2388593 (= e!1522807 (isEmptyExpr!72 lt!869843))))

(declare-fun b!2388594 () Bool)

(declare-fun e!1522810 () Bool)

(assert (=> b!2388594 (= e!1522810 e!1522807)))

(declare-fun c!379855 () Bool)

(assert (=> b!2388594 (= c!379855 (isEmpty!16115 l!9164))))

(declare-fun b!2388595 () Bool)

(assert (=> b!2388595 (= e!1522805 (h!33545 l!9164))))

(assert (=> d!697814 e!1522810))

(declare-fun res!1014698 () Bool)

(assert (=> d!697814 (=> (not res!1014698) (not e!1522810))))

(assert (=> d!697814 (= res!1014698 (validRegex!2727 lt!869843))))

(assert (=> d!697814 (= lt!869843 e!1522805)))

(declare-fun c!379856 () Bool)

(declare-fun e!1522808 () Bool)

(assert (=> d!697814 (= c!379856 e!1522808)))

(declare-fun res!1014699 () Bool)

(assert (=> d!697814 (=> (not res!1014699) (not e!1522808))))

(assert (=> d!697814 (= res!1014699 (is-Cons!28144 l!9164))))

(assert (=> d!697814 (forall!5636 l!9164 lambda!89374)))

(assert (=> d!697814 (= (generalisedConcat!103 l!9164) lt!869843)))

(declare-fun b!2388596 () Bool)

(assert (=> b!2388596 (= e!1522809 EmptyExpr!7002)))

(declare-fun b!2388597 () Bool)

(assert (=> b!2388597 (= e!1522806 (= lt!869843 (head!5236 l!9164)))))

(declare-fun b!2388598 () Bool)

(assert (=> b!2388598 (= e!1522809 (Concat!11638 (h!33545 l!9164) (generalisedConcat!103 (t!208219 l!9164))))))

(declare-fun b!2388599 () Bool)

(assert (=> b!2388599 (= e!1522808 (isEmpty!16115 (t!208219 l!9164)))))

(assert (= (and d!697814 res!1014699) b!2388599))

(assert (= (and d!697814 c!379856) b!2388595))

(assert (= (and d!697814 (not c!379856)) b!2388591))

(assert (= (and b!2388591 c!379857) b!2388598))

(assert (= (and b!2388591 (not c!379857)) b!2388596))

(assert (= (and d!697814 res!1014698) b!2388594))

(assert (= (and b!2388594 c!379855) b!2388593))

(assert (= (and b!2388594 (not c!379855)) b!2388590))

(assert (= (and b!2388590 c!379858) b!2388597))

(assert (= (and b!2388590 (not c!379858)) b!2388592))

(declare-fun m!2789381 () Bool)

(assert (=> b!2388592 m!2789381))

(declare-fun m!2789383 () Bool)

(assert (=> b!2388599 m!2789383))

(assert (=> b!2388590 m!2789171))

(assert (=> b!2388590 m!2789171))

(declare-fun m!2789385 () Bool)

(assert (=> b!2388590 m!2789385))

(declare-fun m!2789387 () Bool)

(assert (=> b!2388593 m!2789387))

(declare-fun m!2789389 () Bool)

(assert (=> d!697814 m!2789389))

(declare-fun m!2789391 () Bool)

(assert (=> d!697814 m!2789391))

(assert (=> b!2388594 m!2789161))

(declare-fun m!2789393 () Bool)

(assert (=> b!2388598 m!2789393))

(assert (=> b!2388597 m!2789173))

(assert (=> b!2388229 d!697814))

(declare-fun b!2388612 () Bool)

(declare-fun e!1522813 () Bool)

(declare-fun tp!761670 () Bool)

(assert (=> b!2388612 (= e!1522813 tp!761670)))

(declare-fun b!2388610 () Bool)

(assert (=> b!2388610 (= e!1522813 tp_is_empty!11417)))

(declare-fun b!2388611 () Bool)

(declare-fun tp!761671 () Bool)

(declare-fun tp!761669 () Bool)

(assert (=> b!2388611 (= e!1522813 (and tp!761671 tp!761669))))

(assert (=> b!2388233 (= tp!761626 e!1522813)))

(declare-fun b!2388613 () Bool)

(declare-fun tp!761672 () Bool)

(declare-fun tp!761668 () Bool)

(assert (=> b!2388613 (= e!1522813 (and tp!761672 tp!761668))))

(assert (= (and b!2388233 (is-ElementMatch!7002 (regOne!14517 r!13927))) b!2388610))

(assert (= (and b!2388233 (is-Concat!11638 (regOne!14517 r!13927))) b!2388611))

(assert (= (and b!2388233 (is-Star!7002 (regOne!14517 r!13927))) b!2388612))

(assert (= (and b!2388233 (is-Union!7002 (regOne!14517 r!13927))) b!2388613))

(declare-fun b!2388616 () Bool)

(declare-fun e!1522814 () Bool)

(declare-fun tp!761675 () Bool)

(assert (=> b!2388616 (= e!1522814 tp!761675)))

(declare-fun b!2388614 () Bool)

(assert (=> b!2388614 (= e!1522814 tp_is_empty!11417)))

(declare-fun b!2388615 () Bool)

(declare-fun tp!761676 () Bool)

(declare-fun tp!761674 () Bool)

(assert (=> b!2388615 (= e!1522814 (and tp!761676 tp!761674))))

(assert (=> b!2388233 (= tp!761627 e!1522814)))

(declare-fun b!2388617 () Bool)

(declare-fun tp!761677 () Bool)

(declare-fun tp!761673 () Bool)

(assert (=> b!2388617 (= e!1522814 (and tp!761677 tp!761673))))

(assert (= (and b!2388233 (is-ElementMatch!7002 (regTwo!14517 r!13927))) b!2388614))

(assert (= (and b!2388233 (is-Concat!11638 (regTwo!14517 r!13927))) b!2388615))

(assert (= (and b!2388233 (is-Star!7002 (regTwo!14517 r!13927))) b!2388616))

(assert (= (and b!2388233 (is-Union!7002 (regTwo!14517 r!13927))) b!2388617))

(declare-fun b!2388622 () Bool)

(declare-fun e!1522817 () Bool)

(declare-fun tp!761680 () Bool)

(assert (=> b!2388622 (= e!1522817 (and tp_is_empty!11417 tp!761680))))

(assert (=> b!2388237 (= tp!761632 e!1522817)))

(assert (= (and b!2388237 (is-Cons!28145 (t!208220 s!9460))) b!2388622))

(declare-fun b!2388625 () Bool)

(declare-fun e!1522818 () Bool)

(declare-fun tp!761683 () Bool)

(assert (=> b!2388625 (= e!1522818 tp!761683)))

(declare-fun b!2388623 () Bool)

(assert (=> b!2388623 (= e!1522818 tp_is_empty!11417)))

(declare-fun b!2388624 () Bool)

(declare-fun tp!761684 () Bool)

(declare-fun tp!761682 () Bool)

(assert (=> b!2388624 (= e!1522818 (and tp!761684 tp!761682))))

(assert (=> b!2388230 (= tp!761629 e!1522818)))

(declare-fun b!2388626 () Bool)

(declare-fun tp!761685 () Bool)

(declare-fun tp!761681 () Bool)

(assert (=> b!2388626 (= e!1522818 (and tp!761685 tp!761681))))

(assert (= (and b!2388230 (is-ElementMatch!7002 (h!33545 l!9164))) b!2388623))

(assert (= (and b!2388230 (is-Concat!11638 (h!33545 l!9164))) b!2388624))

(assert (= (and b!2388230 (is-Star!7002 (h!33545 l!9164))) b!2388625))

(assert (= (and b!2388230 (is-Union!7002 (h!33545 l!9164))) b!2388626))

(declare-fun b!2388631 () Bool)

(declare-fun e!1522821 () Bool)

(declare-fun tp!761690 () Bool)

(declare-fun tp!761691 () Bool)

(assert (=> b!2388631 (= e!1522821 (and tp!761690 tp!761691))))

(assert (=> b!2388230 (= tp!761633 e!1522821)))

(assert (= (and b!2388230 (is-Cons!28144 (t!208219 l!9164))) b!2388631))

(declare-fun b!2388634 () Bool)

(declare-fun e!1522822 () Bool)

(declare-fun tp!761694 () Bool)

(assert (=> b!2388634 (= e!1522822 tp!761694)))

(declare-fun b!2388632 () Bool)

(assert (=> b!2388632 (= e!1522822 tp_is_empty!11417)))

(declare-fun b!2388633 () Bool)

(declare-fun tp!761695 () Bool)

(declare-fun tp!761693 () Bool)

(assert (=> b!2388633 (= e!1522822 (and tp!761695 tp!761693))))

(assert (=> b!2388235 (= tp!761631 e!1522822)))

(declare-fun b!2388635 () Bool)

(declare-fun tp!761696 () Bool)

(declare-fun tp!761692 () Bool)

(assert (=> b!2388635 (= e!1522822 (and tp!761696 tp!761692))))

(assert (= (and b!2388235 (is-ElementMatch!7002 (reg!7331 r!13927))) b!2388632))

(assert (= (and b!2388235 (is-Concat!11638 (reg!7331 r!13927))) b!2388633))

(assert (= (and b!2388235 (is-Star!7002 (reg!7331 r!13927))) b!2388634))

(assert (= (and b!2388235 (is-Union!7002 (reg!7331 r!13927))) b!2388635))

(declare-fun b!2388638 () Bool)

(declare-fun e!1522823 () Bool)

(declare-fun tp!761699 () Bool)

(assert (=> b!2388638 (= e!1522823 tp!761699)))

(declare-fun b!2388636 () Bool)

(assert (=> b!2388636 (= e!1522823 tp_is_empty!11417)))

(declare-fun b!2388637 () Bool)

(declare-fun tp!761700 () Bool)

(declare-fun tp!761698 () Bool)

(assert (=> b!2388637 (= e!1522823 (and tp!761700 tp!761698))))

(assert (=> b!2388239 (= tp!761630 e!1522823)))

(declare-fun b!2388639 () Bool)

(declare-fun tp!761701 () Bool)

(declare-fun tp!761697 () Bool)

(assert (=> b!2388639 (= e!1522823 (and tp!761701 tp!761697))))

(assert (= (and b!2388239 (is-ElementMatch!7002 (regOne!14516 r!13927))) b!2388636))

(assert (= (and b!2388239 (is-Concat!11638 (regOne!14516 r!13927))) b!2388637))

(assert (= (and b!2388239 (is-Star!7002 (regOne!14516 r!13927))) b!2388638))

(assert (= (and b!2388239 (is-Union!7002 (regOne!14516 r!13927))) b!2388639))

(declare-fun b!2388642 () Bool)

(declare-fun e!1522824 () Bool)

(declare-fun tp!761704 () Bool)

(assert (=> b!2388642 (= e!1522824 tp!761704)))

(declare-fun b!2388640 () Bool)

(assert (=> b!2388640 (= e!1522824 tp_is_empty!11417)))

(declare-fun b!2388641 () Bool)

(declare-fun tp!761705 () Bool)

(declare-fun tp!761703 () Bool)

(assert (=> b!2388641 (= e!1522824 (and tp!761705 tp!761703))))

(assert (=> b!2388239 (= tp!761628 e!1522824)))

(declare-fun b!2388643 () Bool)

(declare-fun tp!761706 () Bool)

(declare-fun tp!761702 () Bool)

(assert (=> b!2388643 (= e!1522824 (and tp!761706 tp!761702))))

(assert (= (and b!2388239 (is-ElementMatch!7002 (regTwo!14516 r!13927))) b!2388640))

(assert (= (and b!2388239 (is-Concat!11638 (regTwo!14516 r!13927))) b!2388641))

(assert (= (and b!2388239 (is-Star!7002 (regTwo!14516 r!13927))) b!2388642))

(assert (= (and b!2388239 (is-Union!7002 (regTwo!14516 r!13927))) b!2388643))

(declare-fun b_lambda!74167 () Bool)

(assert (= b_lambda!74165 (or start!234362 b_lambda!74167)))

(declare-fun bs!462389 () Bool)

(declare-fun d!697816 () Bool)

(assert (= bs!462389 (and d!697816 start!234362)))

(assert (=> bs!462389 (= (dynLambda!12118 lambda!89336 (h!33545 l!9164)) (validRegex!2727 (h!33545 l!9164)))))

(declare-fun m!2789395 () Bool)

(assert (=> bs!462389 m!2789395))

(assert (=> b!2388518 d!697816))

(push 1)

(assert (not b!2388593))

(assert (not b!2388550))

(assert (not b!2388592))

(assert (not b!2388505))

(assert (not b!2388374))

(assert (not b!2388519))

(assert (not b!2388579))

(assert (not bm!145208))

(assert (not b!2388578))

(assert (not b!2388633))

(assert (not d!697792))

(assert (not d!697784))

(assert (not b!2388571))

(assert (not b!2388509))

(assert (not d!697782))

(assert (not d!697814))

(assert (not b!2388613))

(assert (not d!697788))

(assert (not d!697786))

(assert (not b!2388513))

(assert (not bm!145231))

(assert (not b!2388594))

(assert (not b!2388625))

(assert (not bm!145232))

(assert (not bm!145221))

(assert (not b!2388635))

(assert (not b!2388599))

(assert (not bm!145229))

(assert (not b!2388598))

(assert (not b!2388511))

(assert (not b!2388626))

(assert (not b!2388506))

(assert (not b!2388642))

(assert (not d!697756))

(assert (not bm!145228))

(assert (not d!697772))

(assert (not b!2388573))

(assert (not b!2388589))

(assert (not b!2388622))

(assert (not b!2388615))

(assert (not b!2388318))

(assert (not b!2388443))

(assert (not b!2388431))

(assert (not b!2388574))

(assert (not b!2388371))

(assert (not b!2388637))

(assert (not b!2388638))

(assert (not b!2388634))

(assert (not b!2388437))

(assert (not b!2388444))

(assert (not b!2388440))

(assert (not b!2388643))

(assert (not b!2388580))

(assert (not b!2388616))

(assert tp_is_empty!11417)

(assert (not bs!462389))

(assert (not b!2388639))

(assert (not b!2388319))

(assert (not b!2388590))

(assert (not b!2388612))

(assert (not bm!145209))

(assert (not d!697774))

(assert (not b!2388597))

(assert (not d!697780))

(assert (not b!2388631))

(assert (not b_lambda!74167))

(assert (not b!2388508))

(assert (not b!2388617))

(assert (not b!2388611))

(assert (not d!697808))

(assert (not b!2388441))

(assert (not b!2388575))

(assert (not b!2388641))

(assert (not b!2388624))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

