; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!724294 () Bool)

(assert start!724294)

(declare-fun b!7471318 () Bool)

(assert (=> b!7471318 true))

(assert (=> b!7471318 true))

(assert (=> b!7471318 true))

(declare-fun lambda!462741 () Int)

(declare-fun lambda!462740 () Int)

(assert (=> b!7471318 (not (= lambda!462741 lambda!462740))))

(assert (=> b!7471318 true))

(assert (=> b!7471318 true))

(assert (=> b!7471318 true))

(declare-fun bs!1931177 () Bool)

(declare-fun b!7471309 () Bool)

(assert (= bs!1931177 (and b!7471309 b!7471318)))

(declare-datatypes ((C!39440 0))(
  ( (C!39441 (val!30118 Int)) )
))
(declare-datatypes ((Regex!19583 0))(
  ( (ElementMatch!19583 (c!1380434 C!39440)) (Concat!28428 (regOne!39678 Regex!19583) (regTwo!39678 Regex!19583)) (EmptyExpr!19583) (Star!19583 (reg!19912 Regex!19583)) (EmptyLang!19583) (Union!19583 (regOne!39679 Regex!19583) (regTwo!39679 Regex!19583)) )
))
(declare-fun r2!5783 () Regex!19583)

(declare-fun lambda!462742 () Int)

(declare-fun lt!2625993 () Regex!19583)

(assert (=> bs!1931177 (= (= r2!5783 lt!2625993) (= lambda!462742 lambda!462740))))

(assert (=> bs!1931177 (not (= lambda!462742 lambda!462741))))

(assert (=> b!7471309 true))

(assert (=> b!7471309 true))

(assert (=> b!7471309 true))

(declare-fun lambda!462743 () Int)

(assert (=> bs!1931177 (not (= lambda!462743 lambda!462740))))

(assert (=> bs!1931177 (= (= r2!5783 lt!2625993) (= lambda!462743 lambda!462741))))

(assert (=> b!7471309 (not (= lambda!462743 lambda!462742))))

(assert (=> b!7471309 true))

(assert (=> b!7471309 true))

(assert (=> b!7471309 true))

(declare-fun b!7471299 () Bool)

(declare-fun e!4457523 () Bool)

(declare-fun tp!2166461 () Bool)

(declare-fun tp!2166465 () Bool)

(assert (=> b!7471299 (= e!4457523 (and tp!2166461 tp!2166465))))

(declare-fun b!7471301 () Bool)

(declare-fun e!4457526 () Bool)

(declare-fun e!4457527 () Bool)

(assert (=> b!7471301 (= e!4457526 (not e!4457527))))

(declare-fun res!2997302 () Bool)

(assert (=> b!7471301 (=> res!2997302 e!4457527)))

(declare-fun lt!2625997 () Bool)

(assert (=> b!7471301 (= res!2997302 lt!2625997)))

(declare-fun lt!2625995 () Bool)

(declare-fun lt!2626003 () Regex!19583)

(declare-datatypes ((List!72299 0))(
  ( (Nil!72175) (Cons!72175 (h!78623 C!39440) (t!386868 List!72299)) )
))
(declare-fun s!13591 () List!72299)

(declare-fun matchRSpec!4262 (Regex!19583 List!72299) Bool)

(assert (=> b!7471301 (= lt!2625995 (matchRSpec!4262 lt!2626003 s!13591))))

(declare-fun matchR!9347 (Regex!19583 List!72299) Bool)

(assert (=> b!7471301 (= lt!2625995 (matchR!9347 lt!2626003 s!13591))))

(declare-datatypes ((Unit!166001 0))(
  ( (Unit!166002) )
))
(declare-fun lt!2625991 () Unit!166001)

(declare-fun mainMatchTheorem!4256 (Regex!19583 List!72299) Unit!166001)

(assert (=> b!7471301 (= lt!2625991 (mainMatchTheorem!4256 lt!2626003 s!13591))))

(declare-fun lt!2626000 () Regex!19583)

(assert (=> b!7471301 (= lt!2625997 (matchRSpec!4262 lt!2626000 s!13591))))

(assert (=> b!7471301 (= lt!2625997 (matchR!9347 lt!2626000 s!13591))))

(declare-fun lt!2625994 () Unit!166001)

(assert (=> b!7471301 (= lt!2625994 (mainMatchTheorem!4256 lt!2626000 s!13591))))

(declare-fun lt!2626004 () Regex!19583)

(declare-fun lt!2625998 () Regex!19583)

(assert (=> b!7471301 (= lt!2626003 (Union!19583 lt!2626004 lt!2625998))))

(declare-fun rTail!78 () Regex!19583)

(assert (=> b!7471301 (= lt!2625998 (Concat!28428 r2!5783 rTail!78))))

(declare-fun r1!5845 () Regex!19583)

(assert (=> b!7471301 (= lt!2626004 (Concat!28428 r1!5845 rTail!78))))

(assert (=> b!7471301 (= lt!2626000 (Concat!28428 lt!2625993 rTail!78))))

(assert (=> b!7471301 (= lt!2625993 (Union!19583 r1!5845 r2!5783))))

(declare-fun b!7471302 () Bool)

(declare-fun e!4457530 () Bool)

(declare-fun tp_is_empty!49455 () Bool)

(declare-fun tp!2166463 () Bool)

(assert (=> b!7471302 (= e!4457530 (and tp_is_empty!49455 tp!2166463))))

(declare-fun b!7471303 () Bool)

(declare-fun tp!2166473 () Bool)

(assert (=> b!7471303 (= e!4457523 tp!2166473)))

(declare-fun b!7471304 () Bool)

(declare-fun e!4457525 () Bool)

(declare-fun tp!2166475 () Bool)

(assert (=> b!7471304 (= e!4457525 tp!2166475)))

(declare-fun b!7471305 () Bool)

(declare-fun res!2997299 () Bool)

(assert (=> b!7471305 (=> (not res!2997299) (not e!4457526))))

(declare-fun validRegex!10097 (Regex!19583) Bool)

(assert (=> b!7471305 (= res!2997299 (validRegex!10097 rTail!78))))

(declare-fun b!7471306 () Bool)

(declare-fun res!2997304 () Bool)

(assert (=> b!7471306 (=> (not res!2997304) (not e!4457526))))

(assert (=> b!7471306 (= res!2997304 (validRegex!10097 r2!5783))))

(declare-fun b!7471307 () Bool)

(assert (=> b!7471307 (= e!4457523 tp_is_empty!49455)))

(declare-fun b!7471308 () Bool)

(declare-fun tp!2166468 () Bool)

(declare-fun tp!2166467 () Bool)

(assert (=> b!7471308 (= e!4457525 (and tp!2166468 tp!2166467))))

(declare-fun e!4457522 () Bool)

(declare-fun e!4457524 () Bool)

(assert (=> b!7471309 (= e!4457522 e!4457524)))

(declare-fun res!2997306 () Bool)

(assert (=> b!7471309 (=> res!2997306 e!4457524)))

(declare-datatypes ((tuple2!68616 0))(
  ( (tuple2!68617 (_1!37611 List!72299) (_2!37611 List!72299)) )
))
(declare-fun lt!2625988 () tuple2!68616)

(assert (=> b!7471309 (= res!2997306 (not (matchR!9347 r2!5783 (_1!37611 lt!2625988))))))

(declare-datatypes ((Option!17140 0))(
  ( (None!17139) (Some!17139 (v!54268 tuple2!68616)) )
))
(declare-fun lt!2626005 () Option!17140)

(declare-fun get!25238 (Option!17140) tuple2!68616)

(assert (=> b!7471309 (= lt!2625988 (get!25238 lt!2626005))))

(declare-fun Exists!4202 (Int) Bool)

(assert (=> b!7471309 (= (Exists!4202 lambda!462742) (Exists!4202 lambda!462743))))

(declare-fun lt!2625992 () Unit!166001)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2536 (Regex!19583 Regex!19583 List!72299) Unit!166001)

(assert (=> b!7471309 (= lt!2625992 (lemmaExistCutMatchRandMatchRSpecEquivalent!2536 r2!5783 rTail!78 s!13591))))

(declare-fun isDefined!13829 (Option!17140) Bool)

(assert (=> b!7471309 (= (isDefined!13829 lt!2626005) (Exists!4202 lambda!462742))))

(declare-fun findConcatSeparation!3262 (Regex!19583 Regex!19583 List!72299 List!72299 List!72299) Option!17140)

(assert (=> b!7471309 (= lt!2626005 (findConcatSeparation!3262 r2!5783 rTail!78 Nil!72175 s!13591 s!13591))))

(declare-fun lt!2626001 () Unit!166001)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3020 (Regex!19583 Regex!19583 List!72299) Unit!166001)

(assert (=> b!7471309 (= lt!2626001 (lemmaFindConcatSeparationEquivalentToExists!3020 r2!5783 rTail!78 s!13591))))

(declare-fun b!7471310 () Bool)

(declare-fun e!4457529 () Bool)

(declare-fun tp!2166460 () Bool)

(assert (=> b!7471310 (= e!4457529 tp!2166460)))

(declare-fun b!7471311 () Bool)

(assert (=> b!7471311 (= e!4457529 tp_is_empty!49455)))

(declare-fun b!7471312 () Bool)

(declare-fun tp!2166469 () Bool)

(declare-fun tp!2166471 () Bool)

(assert (=> b!7471312 (= e!4457525 (and tp!2166469 tp!2166471))))

(declare-fun b!7471300 () Bool)

(declare-fun tp!2166462 () Bool)

(declare-fun tp!2166472 () Bool)

(assert (=> b!7471300 (= e!4457523 (and tp!2166462 tp!2166472))))

(declare-fun res!2997300 () Bool)

(assert (=> start!724294 (=> (not res!2997300) (not e!4457526))))

(assert (=> start!724294 (= res!2997300 (validRegex!10097 r1!5845))))

(assert (=> start!724294 e!4457526))

(assert (=> start!724294 e!4457529))

(assert (=> start!724294 e!4457525))

(assert (=> start!724294 e!4457523))

(assert (=> start!724294 e!4457530))

(declare-fun b!7471313 () Bool)

(assert (=> b!7471313 (= e!4457525 tp_is_empty!49455)))

(declare-fun b!7471314 () Bool)

(assert (=> b!7471314 (= e!4457524 true)))

(assert (=> b!7471314 (= (matchR!9347 r1!5845 (_1!37611 lt!2625988)) (matchRSpec!4262 r1!5845 (_1!37611 lt!2625988)))))

(declare-fun lt!2626006 () Unit!166001)

(assert (=> b!7471314 (= lt!2626006 (mainMatchTheorem!4256 r1!5845 (_1!37611 lt!2625988)))))

(assert (=> b!7471314 (= (matchR!9347 lt!2625993 (_1!37611 lt!2625988)) (matchRSpec!4262 lt!2625993 (_1!37611 lt!2625988)))))

(declare-fun lt!2626002 () Unit!166001)

(assert (=> b!7471314 (= lt!2626002 (mainMatchTheorem!4256 lt!2625993 (_1!37611 lt!2625988)))))

(declare-fun b!7471315 () Bool)

(declare-fun e!4457528 () Bool)

(assert (=> b!7471315 (= e!4457528 e!4457522)))

(declare-fun res!2997305 () Bool)

(assert (=> b!7471315 (=> res!2997305 e!4457522)))

(declare-fun lt!2626007 () Bool)

(declare-fun lt!2626009 () Bool)

(assert (=> b!7471315 (= res!2997305 (or (and (not lt!2626007) (not lt!2626009)) lt!2626007))))

(assert (=> b!7471315 (= lt!2626009 (matchRSpec!4262 lt!2625998 s!13591))))

(assert (=> b!7471315 (= lt!2626009 (matchR!9347 lt!2625998 s!13591))))

(declare-fun lt!2625996 () Unit!166001)

(assert (=> b!7471315 (= lt!2625996 (mainMatchTheorem!4256 lt!2625998 s!13591))))

(assert (=> b!7471315 (= lt!2626007 (matchRSpec!4262 lt!2626004 s!13591))))

(assert (=> b!7471315 (= lt!2626007 (matchR!9347 lt!2626004 s!13591))))

(declare-fun lt!2626008 () Unit!166001)

(assert (=> b!7471315 (= lt!2626008 (mainMatchTheorem!4256 lt!2626004 s!13591))))

(declare-fun b!7471316 () Bool)

(declare-fun tp!2166464 () Bool)

(declare-fun tp!2166470 () Bool)

(assert (=> b!7471316 (= e!4457529 (and tp!2166464 tp!2166470))))

(declare-fun b!7471317 () Bool)

(declare-fun res!2997303 () Bool)

(assert (=> b!7471317 (=> res!2997303 e!4457524)))

(assert (=> b!7471317 (= res!2997303 (not (matchR!9347 rTail!78 (_2!37611 lt!2625988))))))

(assert (=> b!7471318 (= e!4457527 e!4457528)))

(declare-fun res!2997301 () Bool)

(assert (=> b!7471318 (=> res!2997301 e!4457528)))

(declare-fun lt!2625989 () Bool)

(assert (=> b!7471318 (= res!2997301 (or lt!2625989 (not lt!2625995)))))

(assert (=> b!7471318 (= (Exists!4202 lambda!462740) (Exists!4202 lambda!462741))))

(declare-fun lt!2625990 () Unit!166001)

(assert (=> b!7471318 (= lt!2625990 (lemmaExistCutMatchRandMatchRSpecEquivalent!2536 lt!2625993 rTail!78 s!13591))))

(assert (=> b!7471318 (= lt!2625989 (Exists!4202 lambda!462740))))

(assert (=> b!7471318 (= lt!2625989 (isDefined!13829 (findConcatSeparation!3262 lt!2625993 rTail!78 Nil!72175 s!13591 s!13591)))))

(declare-fun lt!2625999 () Unit!166001)

(assert (=> b!7471318 (= lt!2625999 (lemmaFindConcatSeparationEquivalentToExists!3020 lt!2625993 rTail!78 s!13591))))

(declare-fun b!7471319 () Bool)

(declare-fun tp!2166474 () Bool)

(declare-fun tp!2166466 () Bool)

(assert (=> b!7471319 (= e!4457529 (and tp!2166474 tp!2166466))))

(assert (= (and start!724294 res!2997300) b!7471306))

(assert (= (and b!7471306 res!2997304) b!7471305))

(assert (= (and b!7471305 res!2997299) b!7471301))

(assert (= (and b!7471301 (not res!2997302)) b!7471318))

(assert (= (and b!7471318 (not res!2997301)) b!7471315))

(assert (= (and b!7471315 (not res!2997305)) b!7471309))

(assert (= (and b!7471309 (not res!2997306)) b!7471317))

(assert (= (and b!7471317 (not res!2997303)) b!7471314))

(get-info :version)

(assert (= (and start!724294 ((_ is ElementMatch!19583) r1!5845)) b!7471311))

(assert (= (and start!724294 ((_ is Concat!28428) r1!5845)) b!7471319))

(assert (= (and start!724294 ((_ is Star!19583) r1!5845)) b!7471310))

(assert (= (and start!724294 ((_ is Union!19583) r1!5845)) b!7471316))

(assert (= (and start!724294 ((_ is ElementMatch!19583) r2!5783)) b!7471313))

(assert (= (and start!724294 ((_ is Concat!28428) r2!5783)) b!7471312))

(assert (= (and start!724294 ((_ is Star!19583) r2!5783)) b!7471304))

(assert (= (and start!724294 ((_ is Union!19583) r2!5783)) b!7471308))

(assert (= (and start!724294 ((_ is ElementMatch!19583) rTail!78)) b!7471307))

(assert (= (and start!724294 ((_ is Concat!28428) rTail!78)) b!7471300))

(assert (= (and start!724294 ((_ is Star!19583) rTail!78)) b!7471303))

(assert (= (and start!724294 ((_ is Union!19583) rTail!78)) b!7471299))

(assert (= (and start!724294 ((_ is Cons!72175) s!13591)) b!7471302))

(declare-fun m!8068120 () Bool)

(assert (=> b!7471315 m!8068120))

(declare-fun m!8068122 () Bool)

(assert (=> b!7471315 m!8068122))

(declare-fun m!8068124 () Bool)

(assert (=> b!7471315 m!8068124))

(declare-fun m!8068126 () Bool)

(assert (=> b!7471315 m!8068126))

(declare-fun m!8068128 () Bool)

(assert (=> b!7471315 m!8068128))

(declare-fun m!8068130 () Bool)

(assert (=> b!7471315 m!8068130))

(declare-fun m!8068132 () Bool)

(assert (=> b!7471301 m!8068132))

(declare-fun m!8068134 () Bool)

(assert (=> b!7471301 m!8068134))

(declare-fun m!8068136 () Bool)

(assert (=> b!7471301 m!8068136))

(declare-fun m!8068138 () Bool)

(assert (=> b!7471301 m!8068138))

(declare-fun m!8068140 () Bool)

(assert (=> b!7471301 m!8068140))

(declare-fun m!8068142 () Bool)

(assert (=> b!7471301 m!8068142))

(declare-fun m!8068144 () Bool)

(assert (=> b!7471306 m!8068144))

(declare-fun m!8068146 () Bool)

(assert (=> b!7471317 m!8068146))

(declare-fun m!8068148 () Bool)

(assert (=> b!7471305 m!8068148))

(declare-fun m!8068150 () Bool)

(assert (=> b!7471314 m!8068150))

(declare-fun m!8068152 () Bool)

(assert (=> b!7471314 m!8068152))

(declare-fun m!8068154 () Bool)

(assert (=> b!7471314 m!8068154))

(declare-fun m!8068156 () Bool)

(assert (=> b!7471314 m!8068156))

(declare-fun m!8068158 () Bool)

(assert (=> b!7471314 m!8068158))

(declare-fun m!8068160 () Bool)

(assert (=> b!7471314 m!8068160))

(declare-fun m!8068162 () Bool)

(assert (=> b!7471309 m!8068162))

(declare-fun m!8068164 () Bool)

(assert (=> b!7471309 m!8068164))

(declare-fun m!8068166 () Bool)

(assert (=> b!7471309 m!8068166))

(declare-fun m!8068168 () Bool)

(assert (=> b!7471309 m!8068168))

(assert (=> b!7471309 m!8068164))

(declare-fun m!8068170 () Bool)

(assert (=> b!7471309 m!8068170))

(declare-fun m!8068172 () Bool)

(assert (=> b!7471309 m!8068172))

(declare-fun m!8068174 () Bool)

(assert (=> b!7471309 m!8068174))

(declare-fun m!8068176 () Bool)

(assert (=> b!7471309 m!8068176))

(declare-fun m!8068178 () Bool)

(assert (=> start!724294 m!8068178))

(declare-fun m!8068180 () Bool)

(assert (=> b!7471318 m!8068180))

(declare-fun m!8068182 () Bool)

(assert (=> b!7471318 m!8068182))

(declare-fun m!8068184 () Bool)

(assert (=> b!7471318 m!8068184))

(declare-fun m!8068186 () Bool)

(assert (=> b!7471318 m!8068186))

(assert (=> b!7471318 m!8068184))

(declare-fun m!8068188 () Bool)

(assert (=> b!7471318 m!8068188))

(declare-fun m!8068190 () Bool)

(assert (=> b!7471318 m!8068190))

(assert (=> b!7471318 m!8068182))

(check-sat tp_is_empty!49455 (not b!7471314) (not b!7471305) (not b!7471315) (not b!7471317) (not b!7471300) (not b!7471306) (not b!7471302) (not b!7471301) (not b!7471309) (not b!7471318) (not b!7471316) (not b!7471303) (not b!7471304) (not start!724294) (not b!7471308) (not b!7471299) (not b!7471319) (not b!7471312) (not b!7471310))
(check-sat)
