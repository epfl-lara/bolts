; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!549704 () Bool)

(assert start!549704)

(declare-fun b!5194454 () Bool)

(assert (=> b!5194454 true))

(assert (=> b!5194454 true))

(declare-fun lambda!259835 () Int)

(declare-fun lambda!259834 () Int)

(assert (=> b!5194454 (not (= lambda!259835 lambda!259834))))

(assert (=> b!5194454 true))

(assert (=> b!5194454 true))

(declare-fun b!5194436 () Bool)

(declare-fun e!3235265 () Bool)

(declare-fun tp!1457154 () Bool)

(assert (=> b!5194436 (= e!3235265 tp!1457154)))

(declare-fun b!5194437 () Bool)

(declare-fun res!2206357 () Bool)

(declare-fun e!3235264 () Bool)

(assert (=> b!5194437 (=> (not res!2206357) (not e!3235264))))

(declare-datatypes ((C!29762 0))(
  ( (C!29763 (val!24583 Int)) )
))
(declare-datatypes ((Regex!14746 0))(
  ( (ElementMatch!14746 (c!895377 C!29762)) (Concat!23591 (regOne!30004 Regex!14746) (regTwo!30004 Regex!14746)) (EmptyExpr!14746) (Star!14746 (reg!15075 Regex!14746)) (EmptyLang!14746) (Union!14746 (regOne!30005 Regex!14746) (regTwo!30005 Regex!14746)) )
))
(declare-datatypes ((List!60537 0))(
  ( (Nil!60413) (Cons!60413 (h!66861 Regex!14746) (t!373690 List!60537)) )
))
(declare-datatypes ((Context!8260 0))(
  ( (Context!8261 (exprs!4630 List!60537)) )
))
(declare-fun z!1189 () (Set Context!8260))

(declare-datatypes ((List!60538 0))(
  ( (Nil!60414) (Cons!60414 (h!66862 Context!8260) (t!373691 List!60538)) )
))
(declare-fun zl!343 () List!60538)

(declare-fun toList!8530 ((Set Context!8260)) List!60538)

(assert (=> b!5194437 (= res!2206357 (= (toList!8530 z!1189) zl!343))))

(declare-fun b!5194438 () Bool)

(declare-fun e!3235262 () Bool)

(declare-datatypes ((List!60539 0))(
  ( (Nil!60415) (Cons!60415 (h!66863 C!29762) (t!373692 List!60539)) )
))
(declare-fun s!2326 () List!60539)

(declare-fun ++!13186 (List!60539 List!60539) List!60539)

(assert (=> b!5194438 (= e!3235262 (= (++!13186 Nil!60415 s!2326) s!2326))))

(declare-fun res!2206364 () Bool)

(assert (=> start!549704 (=> (not res!2206364) (not e!3235264))))

(declare-fun r!7292 () Regex!14746)

(declare-fun validRegex!6482 (Regex!14746) Bool)

(assert (=> start!549704 (= res!2206364 (validRegex!6482 r!7292))))

(assert (=> start!549704 e!3235264))

(declare-fun e!3235268 () Bool)

(assert (=> start!549704 e!3235268))

(declare-fun condSetEmpty!32845 () Bool)

(assert (=> start!549704 (= condSetEmpty!32845 (= z!1189 (as set.empty (Set Context!8260))))))

(declare-fun setRes!32845 () Bool)

(assert (=> start!549704 setRes!32845))

(declare-fun e!3235263 () Bool)

(assert (=> start!549704 e!3235263))

(declare-fun e!3235266 () Bool)

(assert (=> start!549704 e!3235266))

(declare-fun setIsEmpty!32845 () Bool)

(assert (=> setIsEmpty!32845 setRes!32845))

(declare-fun b!5194439 () Bool)

(declare-fun res!2206362 () Bool)

(declare-fun e!3235269 () Bool)

(assert (=> b!5194439 (=> res!2206362 e!3235269)))

(assert (=> b!5194439 (= res!2206362 (not (is-Cons!60413 (exprs!4630 (h!66862 zl!343)))))))

(declare-fun b!5194440 () Bool)

(declare-fun tp_is_empty!38745 () Bool)

(assert (=> b!5194440 (= e!3235268 tp_is_empty!38745)))

(declare-fun b!5194441 () Bool)

(declare-fun res!2206366 () Bool)

(assert (=> b!5194441 (=> res!2206366 e!3235269)))

(assert (=> b!5194441 (= res!2206366 (or (is-EmptyExpr!14746 r!7292) (is-EmptyLang!14746 r!7292) (is-ElementMatch!14746 r!7292) (is-Union!14746 r!7292) (not (is-Concat!23591 r!7292))))))

(declare-fun b!5194442 () Bool)

(declare-fun tp!1457147 () Bool)

(declare-fun inv!80113 (Context!8260) Bool)

(assert (=> b!5194442 (= e!3235263 (and (inv!80113 (h!66862 zl!343)) e!3235265 tp!1457147))))

(declare-fun b!5194443 () Bool)

(declare-fun tp!1457146 () Bool)

(assert (=> b!5194443 (= e!3235266 (and tp_is_empty!38745 tp!1457146))))

(declare-fun b!5194444 () Bool)

(declare-fun res!2206359 () Bool)

(assert (=> b!5194444 (=> res!2206359 e!3235269)))

(declare-fun isEmpty!32346 (List!60538) Bool)

(assert (=> b!5194444 (= res!2206359 (not (isEmpty!32346 (t!373691 zl!343))))))

(declare-fun b!5194445 () Bool)

(declare-fun res!2206363 () Bool)

(assert (=> b!5194445 (=> res!2206363 e!3235269)))

(declare-fun generalisedConcat!415 (List!60537) Regex!14746)

(assert (=> b!5194445 (= res!2206363 (not (= r!7292 (generalisedConcat!415 (exprs!4630 (h!66862 zl!343))))))))

(declare-fun b!5194446 () Bool)

(declare-fun res!2206365 () Bool)

(assert (=> b!5194446 (=> res!2206365 e!3235269)))

(declare-fun generalisedUnion!675 (List!60537) Regex!14746)

(declare-fun unfocusZipperList!188 (List!60538) List!60537)

(assert (=> b!5194446 (= res!2206365 (not (= r!7292 (generalisedUnion!675 (unfocusZipperList!188 zl!343)))))))

(declare-fun b!5194447 () Bool)

(declare-fun tp!1457148 () Bool)

(assert (=> b!5194447 (= e!3235268 tp!1457148)))

(declare-fun b!5194448 () Bool)

(declare-fun e!3235267 () Bool)

(declare-fun tp!1457149 () Bool)

(assert (=> b!5194448 (= e!3235267 tp!1457149)))

(declare-fun setElem!32845 () Context!8260)

(declare-fun setNonEmpty!32845 () Bool)

(declare-fun tp!1457153 () Bool)

(assert (=> setNonEmpty!32845 (= setRes!32845 (and tp!1457153 (inv!80113 setElem!32845) e!3235267))))

(declare-fun setRest!32845 () (Set Context!8260))

(assert (=> setNonEmpty!32845 (= z!1189 (set.union (set.insert setElem!32845 (as set.empty (Set Context!8260))) setRest!32845))))

(declare-fun b!5194449 () Bool)

(declare-fun tp!1457152 () Bool)

(declare-fun tp!1457151 () Bool)

(assert (=> b!5194449 (= e!3235268 (and tp!1457152 tp!1457151))))

(declare-fun b!5194450 () Bool)

(assert (=> b!5194450 (= e!3235264 (not e!3235269))))

(declare-fun res!2206367 () Bool)

(assert (=> b!5194450 (=> res!2206367 e!3235269)))

(assert (=> b!5194450 (= res!2206367 (not (is-Cons!60414 zl!343)))))

(declare-fun matchR!6931 (Regex!14746 List!60539) Bool)

(declare-fun matchRSpec!1849 (Regex!14746 List!60539) Bool)

(assert (=> b!5194450 (= (matchR!6931 r!7292 s!2326) (matchRSpec!1849 r!7292 s!2326))))

(declare-datatypes ((Unit!152326 0))(
  ( (Unit!152327) )
))
(declare-fun lt!2138535 () Unit!152326)

(declare-fun mainMatchTheorem!1849 (Regex!14746 List!60539) Unit!152326)

(assert (=> b!5194450 (= lt!2138535 (mainMatchTheorem!1849 r!7292 s!2326))))

(declare-fun b!5194451 () Bool)

(declare-fun res!2206360 () Bool)

(assert (=> b!5194451 (=> res!2206360 e!3235262)))

(assert (=> b!5194451 (= res!2206360 (not (validRegex!6482 (regTwo!30004 r!7292))))))

(declare-fun b!5194452 () Bool)

(declare-fun res!2206358 () Bool)

(assert (=> b!5194452 (=> (not res!2206358) (not e!3235264))))

(declare-fun unfocusZipper!488 (List!60538) Regex!14746)

(assert (=> b!5194452 (= res!2206358 (= r!7292 (unfocusZipper!488 zl!343)))))

(declare-fun b!5194453 () Bool)

(declare-fun tp!1457150 () Bool)

(declare-fun tp!1457155 () Bool)

(assert (=> b!5194453 (= e!3235268 (and tp!1457150 tp!1457155))))

(assert (=> b!5194454 (= e!3235269 e!3235262)))

(declare-fun res!2206361 () Bool)

(assert (=> b!5194454 (=> res!2206361 e!3235262)))

(assert (=> b!5194454 (= res!2206361 (not (validRegex!6482 (regOne!30004 r!7292))))))

(declare-fun Exists!1927 (Int) Bool)

(assert (=> b!5194454 (= (Exists!1927 lambda!259834) (Exists!1927 lambda!259835))))

(declare-fun lt!2138534 () Unit!152326)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!581 (Regex!14746 Regex!14746 List!60539) Unit!152326)

(assert (=> b!5194454 (= lt!2138534 (lemmaExistCutMatchRandMatchRSpecEquivalent!581 (regOne!30004 r!7292) (regTwo!30004 r!7292) s!2326))))

(declare-datatypes ((tuple2!63890 0))(
  ( (tuple2!63891 (_1!35248 List!60539) (_2!35248 List!60539)) )
))
(declare-datatypes ((Option!14857 0))(
  ( (None!14856) (Some!14856 (v!50885 tuple2!63890)) )
))
(declare-fun isDefined!11560 (Option!14857) Bool)

(declare-fun findConcatSeparation!1271 (Regex!14746 Regex!14746 List!60539 List!60539 List!60539) Option!14857)

(assert (=> b!5194454 (= (isDefined!11560 (findConcatSeparation!1271 (regOne!30004 r!7292) (regTwo!30004 r!7292) Nil!60415 s!2326 s!2326)) (Exists!1927 lambda!259834))))

(declare-fun lt!2138536 () Unit!152326)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1035 (Regex!14746 Regex!14746 List!60539) Unit!152326)

(assert (=> b!5194454 (= lt!2138536 (lemmaFindConcatSeparationEquivalentToExists!1035 (regOne!30004 r!7292) (regTwo!30004 r!7292) s!2326))))

(assert (= (and start!549704 res!2206364) b!5194437))

(assert (= (and b!5194437 res!2206357) b!5194452))

(assert (= (and b!5194452 res!2206358) b!5194450))

(assert (= (and b!5194450 (not res!2206367)) b!5194444))

(assert (= (and b!5194444 (not res!2206359)) b!5194445))

(assert (= (and b!5194445 (not res!2206363)) b!5194439))

(assert (= (and b!5194439 (not res!2206362)) b!5194446))

(assert (= (and b!5194446 (not res!2206365)) b!5194441))

(assert (= (and b!5194441 (not res!2206366)) b!5194454))

(assert (= (and b!5194454 (not res!2206361)) b!5194451))

(assert (= (and b!5194451 (not res!2206360)) b!5194438))

(assert (= (and start!549704 (is-ElementMatch!14746 r!7292)) b!5194440))

(assert (= (and start!549704 (is-Concat!23591 r!7292)) b!5194453))

(assert (= (and start!549704 (is-Star!14746 r!7292)) b!5194447))

(assert (= (and start!549704 (is-Union!14746 r!7292)) b!5194449))

(assert (= (and start!549704 condSetEmpty!32845) setIsEmpty!32845))

(assert (= (and start!549704 (not condSetEmpty!32845)) setNonEmpty!32845))

(assert (= setNonEmpty!32845 b!5194448))

(assert (= b!5194442 b!5194436))

(assert (= (and start!549704 (is-Cons!60414 zl!343)) b!5194442))

(assert (= (and start!549704 (is-Cons!60415 s!2326)) b!5194443))

(declare-fun m!6249234 () Bool)

(assert (=> setNonEmpty!32845 m!6249234))

(declare-fun m!6249236 () Bool)

(assert (=> b!5194442 m!6249236))

(declare-fun m!6249238 () Bool)

(assert (=> b!5194452 m!6249238))

(declare-fun m!6249240 () Bool)

(assert (=> b!5194444 m!6249240))

(declare-fun m!6249242 () Bool)

(assert (=> b!5194445 m!6249242))

(declare-fun m!6249244 () Bool)

(assert (=> b!5194438 m!6249244))

(declare-fun m!6249246 () Bool)

(assert (=> start!549704 m!6249246))

(declare-fun m!6249248 () Bool)

(assert (=> b!5194446 m!6249248))

(assert (=> b!5194446 m!6249248))

(declare-fun m!6249250 () Bool)

(assert (=> b!5194446 m!6249250))

(declare-fun m!6249252 () Bool)

(assert (=> b!5194454 m!6249252))

(declare-fun m!6249254 () Bool)

(assert (=> b!5194454 m!6249254))

(assert (=> b!5194454 m!6249252))

(declare-fun m!6249256 () Bool)

(assert (=> b!5194454 m!6249256))

(declare-fun m!6249258 () Bool)

(assert (=> b!5194454 m!6249258))

(assert (=> b!5194454 m!6249256))

(declare-fun m!6249260 () Bool)

(assert (=> b!5194454 m!6249260))

(declare-fun m!6249262 () Bool)

(assert (=> b!5194454 m!6249262))

(declare-fun m!6249264 () Bool)

(assert (=> b!5194454 m!6249264))

(declare-fun m!6249266 () Bool)

(assert (=> b!5194437 m!6249266))

(declare-fun m!6249268 () Bool)

(assert (=> b!5194451 m!6249268))

(declare-fun m!6249270 () Bool)

(assert (=> b!5194450 m!6249270))

(declare-fun m!6249272 () Bool)

(assert (=> b!5194450 m!6249272))

(declare-fun m!6249274 () Bool)

(assert (=> b!5194450 m!6249274))

(push 1)

(assert (not b!5194447))

(assert (not b!5194450))

(assert (not b!5194451))

(assert (not b!5194445))

(assert (not b!5194448))

(assert (not b!5194444))

(assert (not b!5194437))

(assert (not setNonEmpty!32845))

(assert (not b!5194454))

(assert (not b!5194436))

(assert (not b!5194449))

(assert (not b!5194443))

(assert (not start!549704))

(assert tp_is_empty!38745)

(assert (not b!5194446))

(assert (not b!5194438))

(assert (not b!5194453))

(assert (not b!5194442))

(assert (not b!5194452))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5194560 () Bool)

(declare-fun e!3235315 () Bool)

(declare-fun e!3235320 () Bool)

(assert (=> b!5194560 (= e!3235315 e!3235320)))

(declare-fun res!2206431 () Bool)

(assert (=> b!5194560 (=> (not res!2206431) (not e!3235320))))

(declare-fun lt!2138548 () Bool)

(assert (=> b!5194560 (= res!2206431 (not lt!2138548))))

(declare-fun b!5194561 () Bool)

(declare-fun e!3235314 () Bool)

(assert (=> b!5194561 (= e!3235314 (not lt!2138548))))

(declare-fun b!5194563 () Bool)

(declare-fun res!2206435 () Bool)

(assert (=> b!5194563 (=> res!2206435 e!3235315)))

(declare-fun e!3235317 () Bool)

(assert (=> b!5194563 (= res!2206435 e!3235317)))

(declare-fun res!2206433 () Bool)

(assert (=> b!5194563 (=> (not res!2206433) (not e!3235317))))

(assert (=> b!5194563 (= res!2206433 lt!2138548)))

(declare-fun b!5194564 () Bool)

(declare-fun res!2206430 () Bool)

(assert (=> b!5194564 (=> (not res!2206430) (not e!3235317))))

(declare-fun isEmpty!32348 (List!60539) Bool)

(declare-fun tail!10230 (List!60539) List!60539)

(assert (=> b!5194564 (= res!2206430 (isEmpty!32348 (tail!10230 s!2326)))))

(declare-fun bm!365187 () Bool)

(declare-fun call!365192 () Bool)

(assert (=> bm!365187 (= call!365192 (isEmpty!32348 s!2326))))

(declare-fun b!5194565 () Bool)

(declare-fun res!2206432 () Bool)

(assert (=> b!5194565 (=> (not res!2206432) (not e!3235317))))

(assert (=> b!5194565 (= res!2206432 (not call!365192))))

(declare-fun b!5194566 () Bool)

(declare-fun res!2206429 () Bool)

(declare-fun e!3235319 () Bool)

(assert (=> b!5194566 (=> res!2206429 e!3235319)))

(assert (=> b!5194566 (= res!2206429 (not (isEmpty!32348 (tail!10230 s!2326))))))

(declare-fun b!5194567 () Bool)

(declare-fun head!11133 (List!60539) C!29762)

(assert (=> b!5194567 (= e!3235317 (= (head!11133 s!2326) (c!895377 r!7292)))))

(declare-fun b!5194568 () Bool)

(declare-fun e!3235318 () Bool)

(assert (=> b!5194568 (= e!3235318 (= lt!2138548 call!365192))))

(declare-fun b!5194569 () Bool)

(assert (=> b!5194569 (= e!3235320 e!3235319)))

(declare-fun res!2206436 () Bool)

(assert (=> b!5194569 (=> res!2206436 e!3235319)))

(assert (=> b!5194569 (= res!2206436 call!365192)))

(declare-fun b!5194570 () Bool)

(assert (=> b!5194570 (= e!3235318 e!3235314)))

(declare-fun c!895387 () Bool)

(assert (=> b!5194570 (= c!895387 (is-EmptyLang!14746 r!7292))))

(declare-fun b!5194571 () Bool)

(assert (=> b!5194571 (= e!3235319 (not (= (head!11133 s!2326) (c!895377 r!7292))))))

(declare-fun b!5194562 () Bool)

(declare-fun res!2206434 () Bool)

(assert (=> b!5194562 (=> res!2206434 e!3235315)))

(assert (=> b!5194562 (= res!2206434 (not (is-ElementMatch!14746 r!7292)))))

(assert (=> b!5194562 (= e!3235314 e!3235315)))

(declare-fun d!1677085 () Bool)

(assert (=> d!1677085 e!3235318))

(declare-fun c!895386 () Bool)

(assert (=> d!1677085 (= c!895386 (is-EmptyExpr!14746 r!7292))))

(declare-fun e!3235316 () Bool)

(assert (=> d!1677085 (= lt!2138548 e!3235316)))

(declare-fun c!895385 () Bool)

(assert (=> d!1677085 (= c!895385 (isEmpty!32348 s!2326))))

(assert (=> d!1677085 (validRegex!6482 r!7292)))

(assert (=> d!1677085 (= (matchR!6931 r!7292 s!2326) lt!2138548)))

(declare-fun b!5194572 () Bool)

(declare-fun derivativeStep!4029 (Regex!14746 C!29762) Regex!14746)

(assert (=> b!5194572 (= e!3235316 (matchR!6931 (derivativeStep!4029 r!7292 (head!11133 s!2326)) (tail!10230 s!2326)))))

(declare-fun b!5194573 () Bool)

(declare-fun nullable!4927 (Regex!14746) Bool)

(assert (=> b!5194573 (= e!3235316 (nullable!4927 r!7292))))

(assert (= (and d!1677085 c!895385) b!5194573))

(assert (= (and d!1677085 (not c!895385)) b!5194572))

(assert (= (and d!1677085 c!895386) b!5194568))

(assert (= (and d!1677085 (not c!895386)) b!5194570))

(assert (= (and b!5194570 c!895387) b!5194561))

(assert (= (and b!5194570 (not c!895387)) b!5194562))

(assert (= (and b!5194562 (not res!2206434)) b!5194563))

(assert (= (and b!5194563 res!2206433) b!5194565))

(assert (= (and b!5194565 res!2206432) b!5194564))

(assert (= (and b!5194564 res!2206430) b!5194567))

(assert (= (and b!5194563 (not res!2206435)) b!5194560))

(assert (= (and b!5194560 res!2206431) b!5194569))

(assert (= (and b!5194569 (not res!2206436)) b!5194566))

(assert (= (and b!5194566 (not res!2206429)) b!5194571))

(assert (= (or b!5194568 b!5194565 b!5194569) bm!365187))

(declare-fun m!6249318 () Bool)

(assert (=> b!5194572 m!6249318))

(assert (=> b!5194572 m!6249318))

(declare-fun m!6249320 () Bool)

(assert (=> b!5194572 m!6249320))

(declare-fun m!6249322 () Bool)

(assert (=> b!5194572 m!6249322))

(assert (=> b!5194572 m!6249320))

(assert (=> b!5194572 m!6249322))

(declare-fun m!6249324 () Bool)

(assert (=> b!5194572 m!6249324))

(assert (=> b!5194567 m!6249318))

(declare-fun m!6249326 () Bool)

(assert (=> bm!365187 m!6249326))

(assert (=> b!5194566 m!6249322))

(assert (=> b!5194566 m!6249322))

(declare-fun m!6249328 () Bool)

(assert (=> b!5194566 m!6249328))

(assert (=> b!5194571 m!6249318))

(assert (=> b!5194564 m!6249322))

(assert (=> b!5194564 m!6249322))

(assert (=> b!5194564 m!6249328))

(assert (=> d!1677085 m!6249326))

(assert (=> d!1677085 m!6249246))

(declare-fun m!6249330 () Bool)

(assert (=> b!5194573 m!6249330))

(assert (=> b!5194450 d!1677085))

(declare-fun bs!1208851 () Bool)

(declare-fun b!5194626 () Bool)

(assert (= bs!1208851 (and b!5194626 b!5194454)))

(declare-fun lambda!259848 () Int)

(assert (=> bs!1208851 (not (= lambda!259848 lambda!259834))))

(assert (=> bs!1208851 (not (= lambda!259848 lambda!259835))))

(assert (=> b!5194626 true))

(assert (=> b!5194626 true))

(declare-fun bs!1208852 () Bool)

(declare-fun b!5194618 () Bool)

(assert (= bs!1208852 (and b!5194618 b!5194454)))

(declare-fun lambda!259849 () Int)

(assert (=> bs!1208852 (not (= lambda!259849 lambda!259834))))

(assert (=> bs!1208852 (= lambda!259849 lambda!259835)))

(declare-fun bs!1208853 () Bool)

(assert (= bs!1208853 (and b!5194618 b!5194626)))

(assert (=> bs!1208853 (not (= lambda!259849 lambda!259848))))

(assert (=> b!5194618 true))

(assert (=> b!5194618 true))

(declare-fun e!3235349 () Bool)

(declare-fun call!365198 () Bool)

(assert (=> b!5194618 (= e!3235349 call!365198)))

(declare-fun b!5194619 () Bool)

(declare-fun res!2206459 () Bool)

(declare-fun e!3235348 () Bool)

(assert (=> b!5194619 (=> res!2206459 e!3235348)))

(declare-fun call!365197 () Bool)

(assert (=> b!5194619 (= res!2206459 call!365197)))

(assert (=> b!5194619 (= e!3235349 e!3235348)))

(declare-fun b!5194620 () Bool)

(declare-fun c!895400 () Bool)

(assert (=> b!5194620 (= c!895400 (is-Union!14746 r!7292))))

(declare-fun e!3235345 () Bool)

(declare-fun e!3235351 () Bool)

(assert (=> b!5194620 (= e!3235345 e!3235351)))

(declare-fun b!5194621 () Bool)

(declare-fun e!3235346 () Bool)

(assert (=> b!5194621 (= e!3235346 call!365197)))

(declare-fun b!5194622 () Bool)

(declare-fun e!3235347 () Bool)

(assert (=> b!5194622 (= e!3235346 e!3235347)))

(declare-fun res!2206461 () Bool)

(assert (=> b!5194622 (= res!2206461 (not (is-EmptyLang!14746 r!7292)))))

(assert (=> b!5194622 (=> (not res!2206461) (not e!3235347))))

(declare-fun b!5194623 () Bool)

(assert (=> b!5194623 (= e!3235351 e!3235349)))

(declare-fun c!895399 () Bool)

(assert (=> b!5194623 (= c!895399 (is-Star!14746 r!7292))))

(declare-fun b!5194624 () Bool)

(assert (=> b!5194624 (= e!3235345 (= s!2326 (Cons!60415 (c!895377 r!7292) Nil!60415)))))

(declare-fun b!5194625 () Bool)

(declare-fun e!3235350 () Bool)

(assert (=> b!5194625 (= e!3235350 (matchRSpec!1849 (regTwo!30005 r!7292) s!2326))))

(assert (=> b!5194626 (= e!3235348 call!365198)))

(declare-fun b!5194627 () Bool)

(declare-fun c!895402 () Bool)

(assert (=> b!5194627 (= c!895402 (is-ElementMatch!14746 r!7292))))

(assert (=> b!5194627 (= e!3235347 e!3235345)))

(declare-fun bm!365192 () Bool)

(assert (=> bm!365192 (= call!365198 (Exists!1927 (ite c!895399 lambda!259848 lambda!259849)))))

(declare-fun d!1677089 () Bool)

(declare-fun c!895401 () Bool)

(assert (=> d!1677089 (= c!895401 (is-EmptyExpr!14746 r!7292))))

(assert (=> d!1677089 (= (matchRSpec!1849 r!7292 s!2326) e!3235346)))

(declare-fun b!5194628 () Bool)

(assert (=> b!5194628 (= e!3235351 e!3235350)))

(declare-fun res!2206460 () Bool)

(assert (=> b!5194628 (= res!2206460 (matchRSpec!1849 (regOne!30005 r!7292) s!2326))))

(assert (=> b!5194628 (=> res!2206460 e!3235350)))

(declare-fun bm!365193 () Bool)

(assert (=> bm!365193 (= call!365197 (isEmpty!32348 s!2326))))

(assert (= (and d!1677089 c!895401) b!5194621))

(assert (= (and d!1677089 (not c!895401)) b!5194622))

(assert (= (and b!5194622 res!2206461) b!5194627))

(assert (= (and b!5194627 c!895402) b!5194624))

(assert (= (and b!5194627 (not c!895402)) b!5194620))

(assert (= (and b!5194620 c!895400) b!5194628))

(assert (= (and b!5194620 (not c!895400)) b!5194623))

(assert (= (and b!5194628 (not res!2206460)) b!5194625))

(assert (= (and b!5194623 c!895399) b!5194619))

(assert (= (and b!5194623 (not c!895399)) b!5194618))

(assert (= (and b!5194619 (not res!2206459)) b!5194626))

(assert (= (or b!5194626 b!5194618) bm!365192))

(assert (= (or b!5194621 b!5194619) bm!365193))

(declare-fun m!6249348 () Bool)

(assert (=> b!5194625 m!6249348))

(declare-fun m!6249350 () Bool)

(assert (=> bm!365192 m!6249350))

(declare-fun m!6249352 () Bool)

(assert (=> b!5194628 m!6249352))

(assert (=> bm!365193 m!6249326))

(assert (=> b!5194450 d!1677089))

(declare-fun d!1677097 () Bool)

(assert (=> d!1677097 (= (matchR!6931 r!7292 s!2326) (matchRSpec!1849 r!7292 s!2326))))

(declare-fun lt!2138557 () Unit!152326)

(declare-fun choose!38591 (Regex!14746 List!60539) Unit!152326)

(assert (=> d!1677097 (= lt!2138557 (choose!38591 r!7292 s!2326))))

(assert (=> d!1677097 (validRegex!6482 r!7292)))

(assert (=> d!1677097 (= (mainMatchTheorem!1849 r!7292 s!2326) lt!2138557)))

(declare-fun bs!1208854 () Bool)

(assert (= bs!1208854 d!1677097))

(assert (=> bs!1208854 m!6249270))

(assert (=> bs!1208854 m!6249272))

(declare-fun m!6249354 () Bool)

(assert (=> bs!1208854 m!6249354))

(assert (=> bs!1208854 m!6249246))

(assert (=> b!5194450 d!1677097))

(declare-fun b!5194647 () Bool)

(declare-fun e!3235368 () Bool)

(declare-fun call!365207 () Bool)

(assert (=> b!5194647 (= e!3235368 call!365207)))

(declare-fun bm!365200 () Bool)

(declare-fun c!895407 () Bool)

(assert (=> bm!365200 (= call!365207 (validRegex!6482 (ite c!895407 (regTwo!30005 r!7292) (regTwo!30004 r!7292))))))

(declare-fun d!1677099 () Bool)

(declare-fun res!2206474 () Bool)

(declare-fun e!3235367 () Bool)

(assert (=> d!1677099 (=> res!2206474 e!3235367)))

(assert (=> d!1677099 (= res!2206474 (is-ElementMatch!14746 r!7292))))

(assert (=> d!1677099 (= (validRegex!6482 r!7292) e!3235367)))

(declare-fun b!5194648 () Bool)

(declare-fun e!3235371 () Bool)

(assert (=> b!5194648 (= e!3235371 call!365207)))

(declare-fun b!5194649 () Bool)

(declare-fun e!3235370 () Bool)

(assert (=> b!5194649 (= e!3235370 e!3235368)))

(declare-fun res!2206476 () Bool)

(assert (=> b!5194649 (=> (not res!2206476) (not e!3235368))))

(declare-fun call!365206 () Bool)

(assert (=> b!5194649 (= res!2206476 call!365206)))

(declare-fun bm!365201 () Bool)

(declare-fun call!365205 () Bool)

(assert (=> bm!365201 (= call!365206 call!365205)))

(declare-fun b!5194650 () Bool)

(declare-fun e!3235366 () Bool)

(declare-fun e!3235369 () Bool)

(assert (=> b!5194650 (= e!3235366 e!3235369)))

(assert (=> b!5194650 (= c!895407 (is-Union!14746 r!7292))))

(declare-fun c!895408 () Bool)

(declare-fun bm!365202 () Bool)

(assert (=> bm!365202 (= call!365205 (validRegex!6482 (ite c!895408 (reg!15075 r!7292) (ite c!895407 (regOne!30005 r!7292) (regOne!30004 r!7292)))))))

(declare-fun b!5194651 () Bool)

(declare-fun e!3235372 () Bool)

(assert (=> b!5194651 (= e!3235366 e!3235372)))

(declare-fun res!2206473 () Bool)

(assert (=> b!5194651 (= res!2206473 (not (nullable!4927 (reg!15075 r!7292))))))

(assert (=> b!5194651 (=> (not res!2206473) (not e!3235372))))

(declare-fun b!5194652 () Bool)

(declare-fun res!2206475 () Bool)

(assert (=> b!5194652 (=> res!2206475 e!3235370)))

(assert (=> b!5194652 (= res!2206475 (not (is-Concat!23591 r!7292)))))

(assert (=> b!5194652 (= e!3235369 e!3235370)))

(declare-fun b!5194653 () Bool)

(declare-fun res!2206472 () Bool)

(assert (=> b!5194653 (=> (not res!2206472) (not e!3235371))))

(assert (=> b!5194653 (= res!2206472 call!365206)))

(assert (=> b!5194653 (= e!3235369 e!3235371)))

(declare-fun b!5194654 () Bool)

(assert (=> b!5194654 (= e!3235372 call!365205)))

(declare-fun b!5194655 () Bool)

(assert (=> b!5194655 (= e!3235367 e!3235366)))

(assert (=> b!5194655 (= c!895408 (is-Star!14746 r!7292))))

(assert (= (and d!1677099 (not res!2206474)) b!5194655))

(assert (= (and b!5194655 c!895408) b!5194651))

(assert (= (and b!5194655 (not c!895408)) b!5194650))

(assert (= (and b!5194651 res!2206473) b!5194654))

(assert (= (and b!5194650 c!895407) b!5194653))

(assert (= (and b!5194650 (not c!895407)) b!5194652))

(assert (= (and b!5194653 res!2206472) b!5194648))

(assert (= (and b!5194652 (not res!2206475)) b!5194649))

(assert (= (and b!5194649 res!2206476) b!5194647))

(assert (= (or b!5194648 b!5194647) bm!365200))

(assert (= (or b!5194653 b!5194649) bm!365201))

(assert (= (or b!5194654 bm!365201) bm!365202))

(declare-fun m!6249356 () Bool)

(assert (=> bm!365200 m!6249356))

(declare-fun m!6249358 () Bool)

(assert (=> bm!365202 m!6249358))

(declare-fun m!6249360 () Bool)

(assert (=> b!5194651 m!6249360))

(assert (=> start!549704 d!1677099))

(declare-fun b!5194656 () Bool)

(declare-fun e!3235375 () Bool)

(declare-fun call!365210 () Bool)

(assert (=> b!5194656 (= e!3235375 call!365210)))

(declare-fun bm!365203 () Bool)

(declare-fun c!895409 () Bool)

(assert (=> bm!365203 (= call!365210 (validRegex!6482 (ite c!895409 (regTwo!30005 (regTwo!30004 r!7292)) (regTwo!30004 (regTwo!30004 r!7292)))))))

(declare-fun d!1677101 () Bool)

(declare-fun res!2206479 () Bool)

(declare-fun e!3235374 () Bool)

(assert (=> d!1677101 (=> res!2206479 e!3235374)))

(assert (=> d!1677101 (= res!2206479 (is-ElementMatch!14746 (regTwo!30004 r!7292)))))

(assert (=> d!1677101 (= (validRegex!6482 (regTwo!30004 r!7292)) e!3235374)))

(declare-fun b!5194657 () Bool)

(declare-fun e!3235378 () Bool)

(assert (=> b!5194657 (= e!3235378 call!365210)))

(declare-fun b!5194658 () Bool)

(declare-fun e!3235377 () Bool)

(assert (=> b!5194658 (= e!3235377 e!3235375)))

(declare-fun res!2206481 () Bool)

(assert (=> b!5194658 (=> (not res!2206481) (not e!3235375))))

(declare-fun call!365209 () Bool)

(assert (=> b!5194658 (= res!2206481 call!365209)))

(declare-fun bm!365204 () Bool)

(declare-fun call!365208 () Bool)

(assert (=> bm!365204 (= call!365209 call!365208)))

(declare-fun b!5194659 () Bool)

(declare-fun e!3235373 () Bool)

(declare-fun e!3235376 () Bool)

(assert (=> b!5194659 (= e!3235373 e!3235376)))

(assert (=> b!5194659 (= c!895409 (is-Union!14746 (regTwo!30004 r!7292)))))

(declare-fun c!895410 () Bool)

(declare-fun bm!365205 () Bool)

(assert (=> bm!365205 (= call!365208 (validRegex!6482 (ite c!895410 (reg!15075 (regTwo!30004 r!7292)) (ite c!895409 (regOne!30005 (regTwo!30004 r!7292)) (regOne!30004 (regTwo!30004 r!7292))))))))

(declare-fun b!5194660 () Bool)

(declare-fun e!3235379 () Bool)

(assert (=> b!5194660 (= e!3235373 e!3235379)))

(declare-fun res!2206478 () Bool)

(assert (=> b!5194660 (= res!2206478 (not (nullable!4927 (reg!15075 (regTwo!30004 r!7292)))))))

(assert (=> b!5194660 (=> (not res!2206478) (not e!3235379))))

(declare-fun b!5194661 () Bool)

(declare-fun res!2206480 () Bool)

(assert (=> b!5194661 (=> res!2206480 e!3235377)))

(assert (=> b!5194661 (= res!2206480 (not (is-Concat!23591 (regTwo!30004 r!7292))))))

(assert (=> b!5194661 (= e!3235376 e!3235377)))

(declare-fun b!5194662 () Bool)

(declare-fun res!2206477 () Bool)

(assert (=> b!5194662 (=> (not res!2206477) (not e!3235378))))

(assert (=> b!5194662 (= res!2206477 call!365209)))

(assert (=> b!5194662 (= e!3235376 e!3235378)))

(declare-fun b!5194663 () Bool)

(assert (=> b!5194663 (= e!3235379 call!365208)))

(declare-fun b!5194664 () Bool)

(assert (=> b!5194664 (= e!3235374 e!3235373)))

(assert (=> b!5194664 (= c!895410 (is-Star!14746 (regTwo!30004 r!7292)))))

(assert (= (and d!1677101 (not res!2206479)) b!5194664))

(assert (= (and b!5194664 c!895410) b!5194660))

(assert (= (and b!5194664 (not c!895410)) b!5194659))

(assert (= (and b!5194660 res!2206478) b!5194663))

(assert (= (and b!5194659 c!895409) b!5194662))

(assert (= (and b!5194659 (not c!895409)) b!5194661))

(assert (= (and b!5194662 res!2206477) b!5194657))

(assert (= (and b!5194661 (not res!2206480)) b!5194658))

(assert (= (and b!5194658 res!2206481) b!5194656))

(assert (= (or b!5194657 b!5194656) bm!365203))

(assert (= (or b!5194662 b!5194658) bm!365204))

(assert (= (or b!5194663 bm!365204) bm!365205))

(declare-fun m!6249362 () Bool)

(assert (=> bm!365203 m!6249362))

(declare-fun m!6249364 () Bool)

(assert (=> bm!365205 m!6249364))

(declare-fun m!6249366 () Bool)

(assert (=> b!5194660 m!6249366))

(assert (=> b!5194451 d!1677101))

(declare-fun d!1677103 () Bool)

(declare-fun lambda!259854 () Int)

(declare-fun forall!14215 (List!60537 Int) Bool)

(assert (=> d!1677103 (= (inv!80113 setElem!32845) (forall!14215 (exprs!4630 setElem!32845) lambda!259854))))

(declare-fun bs!1208855 () Bool)

(assert (= bs!1208855 d!1677103))

(declare-fun m!6249368 () Bool)

(assert (=> bs!1208855 m!6249368))

(assert (=> setNonEmpty!32845 d!1677103))

(declare-fun b!5194695 () Bool)

(declare-fun res!2206491 () Bool)

(declare-fun e!3235396 () Bool)

(assert (=> b!5194695 (=> (not res!2206491) (not e!3235396))))

(declare-fun lt!2138562 () List!60539)

(declare-fun size!39706 (List!60539) Int)

(assert (=> b!5194695 (= res!2206491 (= (size!39706 lt!2138562) (+ (size!39706 Nil!60415) (size!39706 s!2326))))))

(declare-fun b!5194696 () Bool)

(assert (=> b!5194696 (= e!3235396 (or (not (= s!2326 Nil!60415)) (= lt!2138562 Nil!60415)))))

(declare-fun d!1677105 () Bool)

(assert (=> d!1677105 e!3235396))

(declare-fun res!2206490 () Bool)

(assert (=> d!1677105 (=> (not res!2206490) (not e!3235396))))

(declare-fun content!10699 (List!60539) (Set C!29762))

(assert (=> d!1677105 (= res!2206490 (= (content!10699 lt!2138562) (set.union (content!10699 Nil!60415) (content!10699 s!2326))))))

(declare-fun e!3235397 () List!60539)

(assert (=> d!1677105 (= lt!2138562 e!3235397)))

(declare-fun c!895421 () Bool)

(assert (=> d!1677105 (= c!895421 (is-Nil!60415 Nil!60415))))

(assert (=> d!1677105 (= (++!13186 Nil!60415 s!2326) lt!2138562)))

(declare-fun b!5194693 () Bool)

(assert (=> b!5194693 (= e!3235397 s!2326)))

(declare-fun b!5194694 () Bool)

(assert (=> b!5194694 (= e!3235397 (Cons!60415 (h!66863 Nil!60415) (++!13186 (t!373692 Nil!60415) s!2326)))))

(assert (= (and d!1677105 c!895421) b!5194693))

(assert (= (and d!1677105 (not c!895421)) b!5194694))

(assert (= (and d!1677105 res!2206490) b!5194695))

(assert (= (and b!5194695 res!2206491) b!5194696))

(declare-fun m!6249370 () Bool)

(assert (=> b!5194695 m!6249370))

(declare-fun m!6249372 () Bool)

(assert (=> b!5194695 m!6249372))

(declare-fun m!6249374 () Bool)

(assert (=> b!5194695 m!6249374))

(declare-fun m!6249376 () Bool)

(assert (=> d!1677105 m!6249376))

(declare-fun m!6249378 () Bool)

(assert (=> d!1677105 m!6249378))

(declare-fun m!6249380 () Bool)

(assert (=> d!1677105 m!6249380))

(declare-fun m!6249382 () Bool)

(assert (=> b!5194694 m!6249382))

(assert (=> b!5194438 d!1677105))

(declare-fun bs!1208856 () Bool)

(declare-fun d!1677107 () Bool)

(assert (= bs!1208856 (and d!1677107 d!1677103)))

(declare-fun lambda!259858 () Int)

(assert (=> bs!1208856 (= lambda!259858 lambda!259854)))

(declare-fun e!3235421 () Bool)

(assert (=> d!1677107 e!3235421))

(declare-fun res!2206498 () Bool)

(assert (=> d!1677107 (=> (not res!2206498) (not e!3235421))))

(declare-fun lt!2138566 () Regex!14746)

(assert (=> d!1677107 (= res!2206498 (validRegex!6482 lt!2138566))))

(declare-fun e!3235419 () Regex!14746)

(assert (=> d!1677107 (= lt!2138566 e!3235419)))

(declare-fun c!895435 () Bool)

(declare-fun e!3235416 () Bool)

(assert (=> d!1677107 (= c!895435 e!3235416)))

(declare-fun res!2206499 () Bool)

(assert (=> d!1677107 (=> (not res!2206499) (not e!3235416))))

(assert (=> d!1677107 (= res!2206499 (is-Cons!60413 (unfocusZipperList!188 zl!343)))))

(assert (=> d!1677107 (forall!14215 (unfocusZipperList!188 zl!343) lambda!259858)))

(assert (=> d!1677107 (= (generalisedUnion!675 (unfocusZipperList!188 zl!343)) lt!2138566)))

(declare-fun b!5194727 () Bool)

(declare-fun isEmpty!32349 (List!60537) Bool)

(assert (=> b!5194727 (= e!3235416 (isEmpty!32349 (t!373690 (unfocusZipperList!188 zl!343))))))

(declare-fun b!5194728 () Bool)

(declare-fun e!3235418 () Regex!14746)

(assert (=> b!5194728 (= e!3235418 EmptyLang!14746)))

(declare-fun b!5194729 () Bool)

(declare-fun e!3235420 () Bool)

(assert (=> b!5194729 (= e!3235421 e!3235420)))

(declare-fun c!895436 () Bool)

(assert (=> b!5194729 (= c!895436 (isEmpty!32349 (unfocusZipperList!188 zl!343)))))

(declare-fun b!5194730 () Bool)

(assert (=> b!5194730 (= e!3235419 (h!66861 (unfocusZipperList!188 zl!343)))))

(declare-fun b!5194731 () Bool)

(assert (=> b!5194731 (= e!3235419 e!3235418)))

(declare-fun c!895434 () Bool)

(assert (=> b!5194731 (= c!895434 (is-Cons!60413 (unfocusZipperList!188 zl!343)))))

(declare-fun b!5194732 () Bool)

(declare-fun e!3235417 () Bool)

(assert (=> b!5194732 (= e!3235420 e!3235417)))

(declare-fun c!895437 () Bool)

(declare-fun tail!10231 (List!60537) List!60537)

(assert (=> b!5194732 (= c!895437 (isEmpty!32349 (tail!10231 (unfocusZipperList!188 zl!343))))))

(declare-fun b!5194733 () Bool)

(declare-fun isUnion!184 (Regex!14746) Bool)

(assert (=> b!5194733 (= e!3235417 (isUnion!184 lt!2138566))))

(declare-fun b!5194734 () Bool)

(declare-fun isEmptyLang!752 (Regex!14746) Bool)

(assert (=> b!5194734 (= e!3235420 (isEmptyLang!752 lt!2138566))))

(declare-fun b!5194735 () Bool)

(assert (=> b!5194735 (= e!3235418 (Union!14746 (h!66861 (unfocusZipperList!188 zl!343)) (generalisedUnion!675 (t!373690 (unfocusZipperList!188 zl!343)))))))

(declare-fun b!5194736 () Bool)

(declare-fun head!11134 (List!60537) Regex!14746)

(assert (=> b!5194736 (= e!3235417 (= lt!2138566 (head!11134 (unfocusZipperList!188 zl!343))))))

(assert (= (and d!1677107 res!2206499) b!5194727))

(assert (= (and d!1677107 c!895435) b!5194730))

(assert (= (and d!1677107 (not c!895435)) b!5194731))

(assert (= (and b!5194731 c!895434) b!5194735))

(assert (= (and b!5194731 (not c!895434)) b!5194728))

(assert (= (and d!1677107 res!2206498) b!5194729))

(assert (= (and b!5194729 c!895436) b!5194734))

(assert (= (and b!5194729 (not c!895436)) b!5194732))

(assert (= (and b!5194732 c!895437) b!5194736))

(assert (= (and b!5194732 (not c!895437)) b!5194733))

(assert (=> b!5194732 m!6249248))

(declare-fun m!6249404 () Bool)

(assert (=> b!5194732 m!6249404))

(assert (=> b!5194732 m!6249404))

(declare-fun m!6249406 () Bool)

(assert (=> b!5194732 m!6249406))

(declare-fun m!6249408 () Bool)

(assert (=> b!5194733 m!6249408))

(declare-fun m!6249410 () Bool)

(assert (=> b!5194727 m!6249410))

(assert (=> b!5194729 m!6249248))

(declare-fun m!6249412 () Bool)

(assert (=> b!5194729 m!6249412))

(declare-fun m!6249414 () Bool)

(assert (=> b!5194734 m!6249414))

(declare-fun m!6249416 () Bool)

(assert (=> d!1677107 m!6249416))

(assert (=> d!1677107 m!6249248))

(declare-fun m!6249418 () Bool)

(assert (=> d!1677107 m!6249418))

(declare-fun m!6249420 () Bool)

(assert (=> b!5194735 m!6249420))

(assert (=> b!5194736 m!6249248))

(declare-fun m!6249422 () Bool)

(assert (=> b!5194736 m!6249422))

(assert (=> b!5194446 d!1677107))

(declare-fun bs!1208857 () Bool)

(declare-fun d!1677111 () Bool)

(assert (= bs!1208857 (and d!1677111 d!1677103)))

(declare-fun lambda!259861 () Int)

(assert (=> bs!1208857 (= lambda!259861 lambda!259854)))

(declare-fun bs!1208858 () Bool)

(assert (= bs!1208858 (and d!1677111 d!1677107)))

(assert (=> bs!1208858 (= lambda!259861 lambda!259858)))

(declare-fun lt!2138569 () List!60537)

(assert (=> d!1677111 (forall!14215 lt!2138569 lambda!259861)))

(declare-fun e!3235438 () List!60537)

(assert (=> d!1677111 (= lt!2138569 e!3235438)))

(declare-fun c!895444 () Bool)

(assert (=> d!1677111 (= c!895444 (is-Cons!60414 zl!343))))

(assert (=> d!1677111 (= (unfocusZipperList!188 zl!343) lt!2138569)))

(declare-fun b!5194759 () Bool)

(assert (=> b!5194759 (= e!3235438 (Cons!60413 (generalisedConcat!415 (exprs!4630 (h!66862 zl!343))) (unfocusZipperList!188 (t!373691 zl!343))))))

(declare-fun b!5194760 () Bool)

(assert (=> b!5194760 (= e!3235438 Nil!60413)))

(assert (= (and d!1677111 c!895444) b!5194759))

(assert (= (and d!1677111 (not c!895444)) b!5194760))

(declare-fun m!6249424 () Bool)

(assert (=> d!1677111 m!6249424))

(assert (=> b!5194759 m!6249242))

(declare-fun m!6249426 () Bool)

(assert (=> b!5194759 m!6249426))

(assert (=> b!5194446 d!1677111))

(declare-fun d!1677113 () Bool)

(declare-fun e!3235441 () Bool)

(assert (=> d!1677113 e!3235441))

(declare-fun res!2206512 () Bool)

(assert (=> d!1677113 (=> (not res!2206512) (not e!3235441))))

(declare-fun lt!2138572 () List!60538)

(declare-fun noDuplicate!1163 (List!60538) Bool)

(assert (=> d!1677113 (= res!2206512 (noDuplicate!1163 lt!2138572))))

(declare-fun choose!38592 ((Set Context!8260)) List!60538)

(assert (=> d!1677113 (= lt!2138572 (choose!38592 z!1189))))

(assert (=> d!1677113 (= (toList!8530 z!1189) lt!2138572)))

(declare-fun b!5194763 () Bool)

(declare-fun content!10700 (List!60538) (Set Context!8260))

(assert (=> b!5194763 (= e!3235441 (= (content!10700 lt!2138572) z!1189))))

(assert (= (and d!1677113 res!2206512) b!5194763))

(declare-fun m!6249428 () Bool)

(assert (=> d!1677113 m!6249428))

(declare-fun m!6249430 () Bool)

(assert (=> d!1677113 m!6249430))

(declare-fun m!6249432 () Bool)

(assert (=> b!5194763 m!6249432))

(assert (=> b!5194437 d!1677113))

(declare-fun b!5194791 () Bool)

(declare-fun e!3235463 () Bool)

(declare-fun lt!2138579 () Option!14857)

(declare-fun get!20765 (Option!14857) tuple2!63890)

(assert (=> b!5194791 (= e!3235463 (= (++!13186 (_1!35248 (get!20765 lt!2138579)) (_2!35248 (get!20765 lt!2138579))) s!2326))))

(declare-fun b!5194792 () Bool)

(declare-fun e!3235460 () Option!14857)

(declare-fun e!3235459 () Option!14857)

(assert (=> b!5194792 (= e!3235460 e!3235459)))

(declare-fun c!895452 () Bool)

(assert (=> b!5194792 (= c!895452 (is-Nil!60415 s!2326))))

(declare-fun b!5194793 () Bool)

(declare-fun lt!2138581 () Unit!152326)

(declare-fun lt!2138580 () Unit!152326)

(assert (=> b!5194793 (= lt!2138581 lt!2138580)))

(assert (=> b!5194793 (= (++!13186 (++!13186 Nil!60415 (Cons!60415 (h!66863 s!2326) Nil!60415)) (t!373692 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1601 (List!60539 C!29762 List!60539 List!60539) Unit!152326)

(assert (=> b!5194793 (= lt!2138580 (lemmaMoveElementToOtherListKeepsConcatEq!1601 Nil!60415 (h!66863 s!2326) (t!373692 s!2326) s!2326))))

(assert (=> b!5194793 (= e!3235459 (findConcatSeparation!1271 (regOne!30004 r!7292) (regTwo!30004 r!7292) (++!13186 Nil!60415 (Cons!60415 (h!66863 s!2326) Nil!60415)) (t!373692 s!2326) s!2326))))

(declare-fun b!5194794 () Bool)

(declare-fun res!2206528 () Bool)

(assert (=> b!5194794 (=> (not res!2206528) (not e!3235463))))

(assert (=> b!5194794 (= res!2206528 (matchR!6931 (regOne!30004 r!7292) (_1!35248 (get!20765 lt!2138579))))))

(declare-fun b!5194795 () Bool)

(assert (=> b!5194795 (= e!3235459 None!14856)))

(declare-fun d!1677115 () Bool)

(declare-fun e!3235461 () Bool)

(assert (=> d!1677115 e!3235461))

(declare-fun res!2206531 () Bool)

(assert (=> d!1677115 (=> res!2206531 e!3235461)))

(assert (=> d!1677115 (= res!2206531 e!3235463)))

(declare-fun res!2206530 () Bool)

(assert (=> d!1677115 (=> (not res!2206530) (not e!3235463))))

(assert (=> d!1677115 (= res!2206530 (isDefined!11560 lt!2138579))))

(assert (=> d!1677115 (= lt!2138579 e!3235460)))

(declare-fun c!895451 () Bool)

(declare-fun e!3235462 () Bool)

(assert (=> d!1677115 (= c!895451 e!3235462)))

(declare-fun res!2206529 () Bool)

(assert (=> d!1677115 (=> (not res!2206529) (not e!3235462))))

(assert (=> d!1677115 (= res!2206529 (matchR!6931 (regOne!30004 r!7292) Nil!60415))))

(assert (=> d!1677115 (validRegex!6482 (regOne!30004 r!7292))))

(assert (=> d!1677115 (= (findConcatSeparation!1271 (regOne!30004 r!7292) (regTwo!30004 r!7292) Nil!60415 s!2326 s!2326) lt!2138579)))

(declare-fun b!5194796 () Bool)

(assert (=> b!5194796 (= e!3235460 (Some!14856 (tuple2!63891 Nil!60415 s!2326)))))

(declare-fun b!5194797 () Bool)

(declare-fun res!2206532 () Bool)

(assert (=> b!5194797 (=> (not res!2206532) (not e!3235463))))

(assert (=> b!5194797 (= res!2206532 (matchR!6931 (regTwo!30004 r!7292) (_2!35248 (get!20765 lt!2138579))))))

(declare-fun b!5194798 () Bool)

(assert (=> b!5194798 (= e!3235461 (not (isDefined!11560 lt!2138579)))))

(declare-fun b!5194799 () Bool)

(assert (=> b!5194799 (= e!3235462 (matchR!6931 (regTwo!30004 r!7292) s!2326))))

(assert (= (and d!1677115 res!2206529) b!5194799))

(assert (= (and d!1677115 c!895451) b!5194796))

(assert (= (and d!1677115 (not c!895451)) b!5194792))

(assert (= (and b!5194792 c!895452) b!5194795))

(assert (= (and b!5194792 (not c!895452)) b!5194793))

(assert (= (and d!1677115 res!2206530) b!5194794))

(assert (= (and b!5194794 res!2206528) b!5194797))

(assert (= (and b!5194797 res!2206532) b!5194791))

(assert (= (and d!1677115 (not res!2206531)) b!5194798))

(declare-fun m!6249440 () Bool)

(assert (=> b!5194798 m!6249440))

(declare-fun m!6249442 () Bool)

(assert (=> b!5194794 m!6249442))

(declare-fun m!6249444 () Bool)

(assert (=> b!5194794 m!6249444))

(assert (=> b!5194791 m!6249442))

(declare-fun m!6249446 () Bool)

(assert (=> b!5194791 m!6249446))

(declare-fun m!6249448 () Bool)

(assert (=> b!5194799 m!6249448))

(assert (=> b!5194797 m!6249442))

(declare-fun m!6249450 () Bool)

(assert (=> b!5194797 m!6249450))

(assert (=> d!1677115 m!6249440))

(declare-fun m!6249452 () Bool)

(assert (=> d!1677115 m!6249452))

(assert (=> d!1677115 m!6249254))

(declare-fun m!6249454 () Bool)

(assert (=> b!5194793 m!6249454))

(assert (=> b!5194793 m!6249454))

(declare-fun m!6249456 () Bool)

(assert (=> b!5194793 m!6249456))

(declare-fun m!6249458 () Bool)

(assert (=> b!5194793 m!6249458))

(assert (=> b!5194793 m!6249454))

(declare-fun m!6249460 () Bool)

(assert (=> b!5194793 m!6249460))

(assert (=> b!5194454 d!1677115))

(declare-fun d!1677119 () Bool)

(declare-fun choose!38593 (Int) Bool)

(assert (=> d!1677119 (= (Exists!1927 lambda!259834) (choose!38593 lambda!259834))))

(declare-fun bs!1208859 () Bool)

(assert (= bs!1208859 d!1677119))

(declare-fun m!6249462 () Bool)

(assert (=> bs!1208859 m!6249462))

(assert (=> b!5194454 d!1677119))

(declare-fun b!5194800 () Bool)

(declare-fun e!3235466 () Bool)

(declare-fun call!365222 () Bool)

(assert (=> b!5194800 (= e!3235466 call!365222)))

(declare-fun bm!365215 () Bool)

(declare-fun c!895453 () Bool)

(assert (=> bm!365215 (= call!365222 (validRegex!6482 (ite c!895453 (regTwo!30005 (regOne!30004 r!7292)) (regTwo!30004 (regOne!30004 r!7292)))))))

(declare-fun d!1677121 () Bool)

(declare-fun res!2206535 () Bool)

(declare-fun e!3235465 () Bool)

(assert (=> d!1677121 (=> res!2206535 e!3235465)))

(assert (=> d!1677121 (= res!2206535 (is-ElementMatch!14746 (regOne!30004 r!7292)))))

(assert (=> d!1677121 (= (validRegex!6482 (regOne!30004 r!7292)) e!3235465)))

(declare-fun b!5194801 () Bool)

(declare-fun e!3235469 () Bool)

(assert (=> b!5194801 (= e!3235469 call!365222)))

(declare-fun b!5194802 () Bool)

(declare-fun e!3235468 () Bool)

(assert (=> b!5194802 (= e!3235468 e!3235466)))

(declare-fun res!2206537 () Bool)

(assert (=> b!5194802 (=> (not res!2206537) (not e!3235466))))

(declare-fun call!365221 () Bool)

(assert (=> b!5194802 (= res!2206537 call!365221)))

(declare-fun bm!365216 () Bool)

(declare-fun call!365220 () Bool)

(assert (=> bm!365216 (= call!365221 call!365220)))

(declare-fun b!5194803 () Bool)

(declare-fun e!3235464 () Bool)

(declare-fun e!3235467 () Bool)

(assert (=> b!5194803 (= e!3235464 e!3235467)))

(assert (=> b!5194803 (= c!895453 (is-Union!14746 (regOne!30004 r!7292)))))

(declare-fun bm!365217 () Bool)

(declare-fun c!895454 () Bool)

(assert (=> bm!365217 (= call!365220 (validRegex!6482 (ite c!895454 (reg!15075 (regOne!30004 r!7292)) (ite c!895453 (regOne!30005 (regOne!30004 r!7292)) (regOne!30004 (regOne!30004 r!7292))))))))

(declare-fun b!5194804 () Bool)

(declare-fun e!3235470 () Bool)

(assert (=> b!5194804 (= e!3235464 e!3235470)))

(declare-fun res!2206534 () Bool)

(assert (=> b!5194804 (= res!2206534 (not (nullable!4927 (reg!15075 (regOne!30004 r!7292)))))))

(assert (=> b!5194804 (=> (not res!2206534) (not e!3235470))))

(declare-fun b!5194805 () Bool)

(declare-fun res!2206536 () Bool)

(assert (=> b!5194805 (=> res!2206536 e!3235468)))

(assert (=> b!5194805 (= res!2206536 (not (is-Concat!23591 (regOne!30004 r!7292))))))

(assert (=> b!5194805 (= e!3235467 e!3235468)))

(declare-fun b!5194806 () Bool)

(declare-fun res!2206533 () Bool)

(assert (=> b!5194806 (=> (not res!2206533) (not e!3235469))))

(assert (=> b!5194806 (= res!2206533 call!365221)))

(assert (=> b!5194806 (= e!3235467 e!3235469)))

(declare-fun b!5194807 () Bool)

(assert (=> b!5194807 (= e!3235470 call!365220)))

(declare-fun b!5194808 () Bool)

(assert (=> b!5194808 (= e!3235465 e!3235464)))

(assert (=> b!5194808 (= c!895454 (is-Star!14746 (regOne!30004 r!7292)))))

(assert (= (and d!1677121 (not res!2206535)) b!5194808))

(assert (= (and b!5194808 c!895454) b!5194804))

(assert (= (and b!5194808 (not c!895454)) b!5194803))

(assert (= (and b!5194804 res!2206534) b!5194807))

(assert (= (and b!5194803 c!895453) b!5194806))

(assert (= (and b!5194803 (not c!895453)) b!5194805))

(assert (= (and b!5194806 res!2206533) b!5194801))

(assert (= (and b!5194805 (not res!2206536)) b!5194802))

(assert (= (and b!5194802 res!2206537) b!5194800))

(assert (= (or b!5194801 b!5194800) bm!365215))

(assert (= (or b!5194806 b!5194802) bm!365216))

(assert (= (or b!5194807 bm!365216) bm!365217))

(declare-fun m!6249464 () Bool)

(assert (=> bm!365215 m!6249464))

(declare-fun m!6249466 () Bool)

(assert (=> bm!365217 m!6249466))

(declare-fun m!6249468 () Bool)

(assert (=> b!5194804 m!6249468))

(assert (=> b!5194454 d!1677121))

(declare-fun d!1677123 () Bool)

(assert (=> d!1677123 (= (Exists!1927 lambda!259835) (choose!38593 lambda!259835))))

(declare-fun bs!1208860 () Bool)

(assert (= bs!1208860 d!1677123))

(declare-fun m!6249470 () Bool)

(assert (=> bs!1208860 m!6249470))

(assert (=> b!5194454 d!1677123))

(declare-fun bs!1208861 () Bool)

(declare-fun d!1677125 () Bool)

(assert (= bs!1208861 (and d!1677125 b!5194454)))

(declare-fun lambda!259864 () Int)

(assert (=> bs!1208861 (= lambda!259864 lambda!259834)))

(assert (=> bs!1208861 (not (= lambda!259864 lambda!259835))))

(declare-fun bs!1208862 () Bool)

(assert (= bs!1208862 (and d!1677125 b!5194626)))

(assert (=> bs!1208862 (not (= lambda!259864 lambda!259848))))

(declare-fun bs!1208863 () Bool)

(assert (= bs!1208863 (and d!1677125 b!5194618)))

(assert (=> bs!1208863 (not (= lambda!259864 lambda!259849))))

(assert (=> d!1677125 true))

(assert (=> d!1677125 true))

(assert (=> d!1677125 true))

(assert (=> d!1677125 (= (isDefined!11560 (findConcatSeparation!1271 (regOne!30004 r!7292) (regTwo!30004 r!7292) Nil!60415 s!2326 s!2326)) (Exists!1927 lambda!259864))))

(declare-fun lt!2138584 () Unit!152326)

(declare-fun choose!38594 (Regex!14746 Regex!14746 List!60539) Unit!152326)

(assert (=> d!1677125 (= lt!2138584 (choose!38594 (regOne!30004 r!7292) (regTwo!30004 r!7292) s!2326))))

(assert (=> d!1677125 (validRegex!6482 (regOne!30004 r!7292))))

(assert (=> d!1677125 (= (lemmaFindConcatSeparationEquivalentToExists!1035 (regOne!30004 r!7292) (regTwo!30004 r!7292) s!2326) lt!2138584)))

(declare-fun bs!1208864 () Bool)

(assert (= bs!1208864 d!1677125))

(declare-fun m!6249472 () Bool)

(assert (=> bs!1208864 m!6249472))

(declare-fun m!6249474 () Bool)

(assert (=> bs!1208864 m!6249474))

(assert (=> bs!1208864 m!6249256))

(assert (=> bs!1208864 m!6249258))

(assert (=> bs!1208864 m!6249256))

(assert (=> bs!1208864 m!6249254))

(assert (=> b!5194454 d!1677125))

(declare-fun bs!1208865 () Bool)

(declare-fun d!1677127 () Bool)

(assert (= bs!1208865 (and d!1677127 b!5194618)))

(declare-fun lambda!259869 () Int)

(assert (=> bs!1208865 (not (= lambda!259869 lambda!259849))))

(declare-fun bs!1208866 () Bool)

(assert (= bs!1208866 (and d!1677127 b!5194626)))

(assert (=> bs!1208866 (not (= lambda!259869 lambda!259848))))

(declare-fun bs!1208867 () Bool)

(assert (= bs!1208867 (and d!1677127 d!1677125)))

(assert (=> bs!1208867 (= lambda!259869 lambda!259864)))

(declare-fun bs!1208868 () Bool)

(assert (= bs!1208868 (and d!1677127 b!5194454)))

(assert (=> bs!1208868 (= lambda!259869 lambda!259834)))

(assert (=> bs!1208868 (not (= lambda!259869 lambda!259835))))

(assert (=> d!1677127 true))

(assert (=> d!1677127 true))

(assert (=> d!1677127 true))

(declare-fun lambda!259870 () Int)

(assert (=> bs!1208865 (= lambda!259870 lambda!259849)))

(declare-fun bs!1208869 () Bool)

(assert (= bs!1208869 d!1677127))

(assert (=> bs!1208869 (not (= lambda!259870 lambda!259869))))

(assert (=> bs!1208866 (not (= lambda!259870 lambda!259848))))

(assert (=> bs!1208867 (not (= lambda!259870 lambda!259864))))

(assert (=> bs!1208868 (not (= lambda!259870 lambda!259834))))

(assert (=> bs!1208868 (= lambda!259870 lambda!259835)))

(assert (=> d!1677127 true))

(assert (=> d!1677127 true))

(assert (=> d!1677127 true))

(assert (=> d!1677127 (= (Exists!1927 lambda!259869) (Exists!1927 lambda!259870))))

(declare-fun lt!2138593 () Unit!152326)

(declare-fun choose!38595 (Regex!14746 Regex!14746 List!60539) Unit!152326)

(assert (=> d!1677127 (= lt!2138593 (choose!38595 (regOne!30004 r!7292) (regTwo!30004 r!7292) s!2326))))

(assert (=> d!1677127 (validRegex!6482 (regOne!30004 r!7292))))

(assert (=> d!1677127 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!581 (regOne!30004 r!7292) (regTwo!30004 r!7292) s!2326) lt!2138593)))

(declare-fun m!6249476 () Bool)

(assert (=> bs!1208869 m!6249476))

(declare-fun m!6249478 () Bool)

(assert (=> bs!1208869 m!6249478))

(declare-fun m!6249480 () Bool)

(assert (=> bs!1208869 m!6249480))

(assert (=> bs!1208869 m!6249254))

(assert (=> b!5194454 d!1677127))

(declare-fun d!1677129 () Bool)

(declare-fun isEmpty!32350 (Option!14857) Bool)

(assert (=> d!1677129 (= (isDefined!11560 (findConcatSeparation!1271 (regOne!30004 r!7292) (regTwo!30004 r!7292) Nil!60415 s!2326 s!2326)) (not (isEmpty!32350 (findConcatSeparation!1271 (regOne!30004 r!7292) (regTwo!30004 r!7292) Nil!60415 s!2326 s!2326))))))

(declare-fun bs!1208870 () Bool)

(assert (= bs!1208870 d!1677129))

(assert (=> bs!1208870 m!6249256))

(declare-fun m!6249482 () Bool)

(assert (=> bs!1208870 m!6249482))

(assert (=> b!5194454 d!1677129))

(declare-fun bs!1208871 () Bool)

(declare-fun d!1677131 () Bool)

(assert (= bs!1208871 (and d!1677131 d!1677103)))

(declare-fun lambda!259873 () Int)

(assert (=> bs!1208871 (= lambda!259873 lambda!259854)))

(declare-fun bs!1208872 () Bool)

(assert (= bs!1208872 (and d!1677131 d!1677107)))

(assert (=> bs!1208872 (= lambda!259873 lambda!259858)))

(declare-fun bs!1208873 () Bool)

(assert (= bs!1208873 (and d!1677131 d!1677111)))

(assert (=> bs!1208873 (= lambda!259873 lambda!259861)))

(declare-fun b!5194868 () Bool)

(declare-fun e!3235506 () Regex!14746)

(declare-fun e!3235508 () Regex!14746)

(assert (=> b!5194868 (= e!3235506 e!3235508)))

(declare-fun c!895469 () Bool)

(assert (=> b!5194868 (= c!895469 (is-Cons!60413 (exprs!4630 (h!66862 zl!343))))))

(declare-fun b!5194869 () Bool)

(declare-fun e!3235507 () Bool)

(assert (=> b!5194869 (= e!3235507 (isEmpty!32349 (t!373690 (exprs!4630 (h!66862 zl!343)))))))

(declare-fun b!5194870 () Bool)

(declare-fun e!3235504 () Bool)

(declare-fun lt!2138599 () Regex!14746)

(declare-fun isEmptyExpr!743 (Regex!14746) Bool)

(assert (=> b!5194870 (= e!3235504 (isEmptyExpr!743 lt!2138599))))

(declare-fun b!5194871 () Bool)

(assert (=> b!5194871 (= e!3235508 EmptyExpr!14746)))

(declare-fun b!5194872 () Bool)

(declare-fun e!3235509 () Bool)

(assert (=> b!5194872 (= e!3235504 e!3235509)))

(declare-fun c!895472 () Bool)

(assert (=> b!5194872 (= c!895472 (isEmpty!32349 (tail!10231 (exprs!4630 (h!66862 zl!343)))))))

(declare-fun e!3235505 () Bool)

(assert (=> d!1677131 e!3235505))

(declare-fun res!2206569 () Bool)

(assert (=> d!1677131 (=> (not res!2206569) (not e!3235505))))

(assert (=> d!1677131 (= res!2206569 (validRegex!6482 lt!2138599))))

(assert (=> d!1677131 (= lt!2138599 e!3235506)))

(declare-fun c!895470 () Bool)

(assert (=> d!1677131 (= c!895470 e!3235507)))

(declare-fun res!2206570 () Bool)

(assert (=> d!1677131 (=> (not res!2206570) (not e!3235507))))

(assert (=> d!1677131 (= res!2206570 (is-Cons!60413 (exprs!4630 (h!66862 zl!343))))))

(assert (=> d!1677131 (forall!14215 (exprs!4630 (h!66862 zl!343)) lambda!259873)))

(assert (=> d!1677131 (= (generalisedConcat!415 (exprs!4630 (h!66862 zl!343))) lt!2138599)))

(declare-fun b!5194873 () Bool)

(assert (=> b!5194873 (= e!3235508 (Concat!23591 (h!66861 (exprs!4630 (h!66862 zl!343))) (generalisedConcat!415 (t!373690 (exprs!4630 (h!66862 zl!343))))))))

(declare-fun b!5194874 () Bool)

(declare-fun isConcat!266 (Regex!14746) Bool)

(assert (=> b!5194874 (= e!3235509 (isConcat!266 lt!2138599))))

(declare-fun b!5194875 () Bool)

(assert (=> b!5194875 (= e!3235505 e!3235504)))

(declare-fun c!895471 () Bool)

(assert (=> b!5194875 (= c!895471 (isEmpty!32349 (exprs!4630 (h!66862 zl!343))))))

(declare-fun b!5194876 () Bool)

(assert (=> b!5194876 (= e!3235506 (h!66861 (exprs!4630 (h!66862 zl!343))))))

(declare-fun b!5194877 () Bool)

(assert (=> b!5194877 (= e!3235509 (= lt!2138599 (head!11134 (exprs!4630 (h!66862 zl!343)))))))

(assert (= (and d!1677131 res!2206570) b!5194869))

(assert (= (and d!1677131 c!895470) b!5194876))

(assert (= (and d!1677131 (not c!895470)) b!5194868))

(assert (= (and b!5194868 c!895469) b!5194873))

(assert (= (and b!5194868 (not c!895469)) b!5194871))

(assert (= (and d!1677131 res!2206569) b!5194875))

(assert (= (and b!5194875 c!895471) b!5194870))

(assert (= (and b!5194875 (not c!895471)) b!5194872))

(assert (= (and b!5194872 c!895472) b!5194877))

(assert (= (and b!5194872 (not c!895472)) b!5194874))

(declare-fun m!6249500 () Bool)

(assert (=> b!5194872 m!6249500))

(assert (=> b!5194872 m!6249500))

(declare-fun m!6249502 () Bool)

(assert (=> b!5194872 m!6249502))

(declare-fun m!6249504 () Bool)

(assert (=> b!5194875 m!6249504))

(declare-fun m!6249506 () Bool)

(assert (=> d!1677131 m!6249506))

(declare-fun m!6249508 () Bool)

(assert (=> d!1677131 m!6249508))

(declare-fun m!6249510 () Bool)

(assert (=> b!5194869 m!6249510))

(declare-fun m!6249512 () Bool)

(assert (=> b!5194877 m!6249512))

(declare-fun m!6249516 () Bool)

(assert (=> b!5194873 m!6249516))

(declare-fun m!6249518 () Bool)

(assert (=> b!5194870 m!6249518))

(declare-fun m!6249520 () Bool)

(assert (=> b!5194874 m!6249520))

(assert (=> b!5194445 d!1677131))

(declare-fun d!1677133 () Bool)

(assert (=> d!1677133 (= (isEmpty!32346 (t!373691 zl!343)) (is-Nil!60414 (t!373691 zl!343)))))

(assert (=> b!5194444 d!1677133))

(declare-fun bs!1208874 () Bool)

(declare-fun d!1677137 () Bool)

(assert (= bs!1208874 (and d!1677137 d!1677103)))

(declare-fun lambda!259874 () Int)

(assert (=> bs!1208874 (= lambda!259874 lambda!259854)))

(declare-fun bs!1208875 () Bool)

(assert (= bs!1208875 (and d!1677137 d!1677107)))

(assert (=> bs!1208875 (= lambda!259874 lambda!259858)))

(declare-fun bs!1208876 () Bool)

(assert (= bs!1208876 (and d!1677137 d!1677111)))

(assert (=> bs!1208876 (= lambda!259874 lambda!259861)))

(declare-fun bs!1208877 () Bool)

(assert (= bs!1208877 (and d!1677137 d!1677131)))

(assert (=> bs!1208877 (= lambda!259874 lambda!259873)))

(assert (=> d!1677137 (= (inv!80113 (h!66862 zl!343)) (forall!14215 (exprs!4630 (h!66862 zl!343)) lambda!259874))))

(declare-fun bs!1208878 () Bool)

(assert (= bs!1208878 d!1677137))

(declare-fun m!6249526 () Bool)

(assert (=> bs!1208878 m!6249526))

(assert (=> b!5194442 d!1677137))

(declare-fun d!1677139 () Bool)

(declare-fun lt!2138602 () Regex!14746)

(assert (=> d!1677139 (validRegex!6482 lt!2138602)))

(assert (=> d!1677139 (= lt!2138602 (generalisedUnion!675 (unfocusZipperList!188 zl!343)))))

(assert (=> d!1677139 (= (unfocusZipper!488 zl!343) lt!2138602)))

(declare-fun bs!1208880 () Bool)

(assert (= bs!1208880 d!1677139))

(declare-fun m!6249530 () Bool)

(assert (=> bs!1208880 m!6249530))

(assert (=> bs!1208880 m!6249248))

(assert (=> bs!1208880 m!6249248))

(assert (=> bs!1208880 m!6249250))

(assert (=> b!5194452 d!1677139))

(declare-fun b!5194891 () Bool)

(declare-fun e!3235519 () Bool)

(declare-fun tp!1457190 () Bool)

(declare-fun tp!1457191 () Bool)

(assert (=> b!5194891 (= e!3235519 (and tp!1457190 tp!1457191))))

(assert (=> b!5194436 (= tp!1457154 e!3235519)))

(assert (= (and b!5194436 (is-Cons!60413 (exprs!4630 (h!66862 zl!343)))) b!5194891))

(declare-fun b!5194904 () Bool)

(declare-fun e!3235522 () Bool)

(declare-fun tp!1457202 () Bool)

(assert (=> b!5194904 (= e!3235522 tp!1457202)))

(declare-fun b!5194902 () Bool)

(assert (=> b!5194902 (= e!3235522 tp_is_empty!38745)))

(declare-fun b!5194905 () Bool)

(declare-fun tp!1457205 () Bool)

(declare-fun tp!1457206 () Bool)

(assert (=> b!5194905 (= e!3235522 (and tp!1457205 tp!1457206))))

(assert (=> b!5194449 (= tp!1457152 e!3235522)))

(declare-fun b!5194903 () Bool)

(declare-fun tp!1457204 () Bool)

(declare-fun tp!1457203 () Bool)

(assert (=> b!5194903 (= e!3235522 (and tp!1457204 tp!1457203))))

(assert (= (and b!5194449 (is-ElementMatch!14746 (regOne!30005 r!7292))) b!5194902))

(assert (= (and b!5194449 (is-Concat!23591 (regOne!30005 r!7292))) b!5194903))

(assert (= (and b!5194449 (is-Star!14746 (regOne!30005 r!7292))) b!5194904))

(assert (= (and b!5194449 (is-Union!14746 (regOne!30005 r!7292))) b!5194905))

(declare-fun b!5194908 () Bool)

(declare-fun e!3235523 () Bool)

(declare-fun tp!1457207 () Bool)

(assert (=> b!5194908 (= e!3235523 tp!1457207)))

(declare-fun b!5194906 () Bool)

(assert (=> b!5194906 (= e!3235523 tp_is_empty!38745)))

(declare-fun b!5194909 () Bool)

(declare-fun tp!1457210 () Bool)

(declare-fun tp!1457211 () Bool)

(assert (=> b!5194909 (= e!3235523 (and tp!1457210 tp!1457211))))

(assert (=> b!5194449 (= tp!1457151 e!3235523)))

(declare-fun b!5194907 () Bool)

(declare-fun tp!1457209 () Bool)

(declare-fun tp!1457208 () Bool)

(assert (=> b!5194907 (= e!3235523 (and tp!1457209 tp!1457208))))

(assert (= (and b!5194449 (is-ElementMatch!14746 (regTwo!30005 r!7292))) b!5194906))

(assert (= (and b!5194449 (is-Concat!23591 (regTwo!30005 r!7292))) b!5194907))

(assert (= (and b!5194449 (is-Star!14746 (regTwo!30005 r!7292))) b!5194908))

(assert (= (and b!5194449 (is-Union!14746 (regTwo!30005 r!7292))) b!5194909))

(declare-fun b!5194912 () Bool)

(declare-fun e!3235524 () Bool)

(declare-fun tp!1457212 () Bool)

(assert (=> b!5194912 (= e!3235524 tp!1457212)))

(declare-fun b!5194910 () Bool)

(assert (=> b!5194910 (= e!3235524 tp_is_empty!38745)))

(declare-fun b!5194913 () Bool)

(declare-fun tp!1457215 () Bool)

(declare-fun tp!1457216 () Bool)

(assert (=> b!5194913 (= e!3235524 (and tp!1457215 tp!1457216))))

(assert (=> b!5194453 (= tp!1457150 e!3235524)))

(declare-fun b!5194911 () Bool)

(declare-fun tp!1457214 () Bool)

(declare-fun tp!1457213 () Bool)

(assert (=> b!5194911 (= e!3235524 (and tp!1457214 tp!1457213))))

(assert (= (and b!5194453 (is-ElementMatch!14746 (regOne!30004 r!7292))) b!5194910))

(assert (= (and b!5194453 (is-Concat!23591 (regOne!30004 r!7292))) b!5194911))

(assert (= (and b!5194453 (is-Star!14746 (regOne!30004 r!7292))) b!5194912))

(assert (= (and b!5194453 (is-Union!14746 (regOne!30004 r!7292))) b!5194913))

(declare-fun b!5194916 () Bool)

(declare-fun e!3235525 () Bool)

(declare-fun tp!1457217 () Bool)

(assert (=> b!5194916 (= e!3235525 tp!1457217)))

(declare-fun b!5194914 () Bool)

(assert (=> b!5194914 (= e!3235525 tp_is_empty!38745)))

(declare-fun b!5194917 () Bool)

(declare-fun tp!1457220 () Bool)

(declare-fun tp!1457221 () Bool)

(assert (=> b!5194917 (= e!3235525 (and tp!1457220 tp!1457221))))

(assert (=> b!5194453 (= tp!1457155 e!3235525)))

(declare-fun b!5194915 () Bool)

(declare-fun tp!1457219 () Bool)

(declare-fun tp!1457218 () Bool)

(assert (=> b!5194915 (= e!3235525 (and tp!1457219 tp!1457218))))

(assert (= (and b!5194453 (is-ElementMatch!14746 (regTwo!30004 r!7292))) b!5194914))

(assert (= (and b!5194453 (is-Concat!23591 (regTwo!30004 r!7292))) b!5194915))

(assert (= (and b!5194453 (is-Star!14746 (regTwo!30004 r!7292))) b!5194916))

(assert (= (and b!5194453 (is-Union!14746 (regTwo!30004 r!7292))) b!5194917))

(declare-fun b!5194922 () Bool)

(declare-fun e!3235528 () Bool)

(declare-fun tp!1457224 () Bool)

(assert (=> b!5194922 (= e!3235528 (and tp_is_empty!38745 tp!1457224))))

(assert (=> b!5194443 (= tp!1457146 e!3235528)))

(assert (= (and b!5194443 (is-Cons!60415 (t!373692 s!2326))) b!5194922))

(declare-fun condSetEmpty!32851 () Bool)

(assert (=> setNonEmpty!32845 (= condSetEmpty!32851 (= setRest!32845 (as set.empty (Set Context!8260))))))

(declare-fun setRes!32851 () Bool)

(assert (=> setNonEmpty!32845 (= tp!1457153 setRes!32851)))

(declare-fun setIsEmpty!32851 () Bool)

(assert (=> setIsEmpty!32851 setRes!32851))

(declare-fun e!3235531 () Bool)

(declare-fun tp!1457230 () Bool)

(declare-fun setNonEmpty!32851 () Bool)

(declare-fun setElem!32851 () Context!8260)

(assert (=> setNonEmpty!32851 (= setRes!32851 (and tp!1457230 (inv!80113 setElem!32851) e!3235531))))

(declare-fun setRest!32851 () (Set Context!8260))

(assert (=> setNonEmpty!32851 (= setRest!32845 (set.union (set.insert setElem!32851 (as set.empty (Set Context!8260))) setRest!32851))))

(declare-fun b!5194927 () Bool)

(declare-fun tp!1457229 () Bool)

(assert (=> b!5194927 (= e!3235531 tp!1457229)))

(assert (= (and setNonEmpty!32845 condSetEmpty!32851) setIsEmpty!32851))

(assert (= (and setNonEmpty!32845 (not condSetEmpty!32851)) setNonEmpty!32851))

(assert (= setNonEmpty!32851 b!5194927))

(declare-fun m!6249540 () Bool)

(assert (=> setNonEmpty!32851 m!6249540))

(declare-fun b!5194935 () Bool)

(declare-fun e!3235537 () Bool)

(declare-fun tp!1457235 () Bool)

(assert (=> b!5194935 (= e!3235537 tp!1457235)))

(declare-fun e!3235536 () Bool)

(declare-fun tp!1457236 () Bool)

(declare-fun b!5194934 () Bool)

(assert (=> b!5194934 (= e!3235536 (and (inv!80113 (h!66862 (t!373691 zl!343))) e!3235537 tp!1457236))))

(assert (=> b!5194442 (= tp!1457147 e!3235536)))

(assert (= b!5194934 b!5194935))

(assert (= (and b!5194442 (is-Cons!60414 (t!373691 zl!343))) b!5194934))

(declare-fun m!6249542 () Bool)

(assert (=> b!5194934 m!6249542))

(declare-fun b!5194938 () Bool)

(declare-fun e!3235538 () Bool)

(declare-fun tp!1457237 () Bool)

(assert (=> b!5194938 (= e!3235538 tp!1457237)))

(declare-fun b!5194936 () Bool)

(assert (=> b!5194936 (= e!3235538 tp_is_empty!38745)))

(declare-fun b!5194939 () Bool)

(declare-fun tp!1457240 () Bool)

(declare-fun tp!1457241 () Bool)

(assert (=> b!5194939 (= e!3235538 (and tp!1457240 tp!1457241))))

(assert (=> b!5194447 (= tp!1457148 e!3235538)))

(declare-fun b!5194937 () Bool)

(declare-fun tp!1457239 () Bool)

(declare-fun tp!1457238 () Bool)

(assert (=> b!5194937 (= e!3235538 (and tp!1457239 tp!1457238))))

(assert (= (and b!5194447 (is-ElementMatch!14746 (reg!15075 r!7292))) b!5194936))

(assert (= (and b!5194447 (is-Concat!23591 (reg!15075 r!7292))) b!5194937))

(assert (= (and b!5194447 (is-Star!14746 (reg!15075 r!7292))) b!5194938))

(assert (= (and b!5194447 (is-Union!14746 (reg!15075 r!7292))) b!5194939))

(declare-fun b!5194940 () Bool)

(declare-fun e!3235539 () Bool)

(declare-fun tp!1457242 () Bool)

(declare-fun tp!1457243 () Bool)

(assert (=> b!5194940 (= e!3235539 (and tp!1457242 tp!1457243))))

(assert (=> b!5194448 (= tp!1457149 e!3235539)))

(assert (= (and b!5194448 (is-Cons!60413 (exprs!4630 setElem!32845))) b!5194940))

(push 1)

(assert (not bm!365192))

(assert (not setNonEmpty!32851))

(assert (not b!5194567))

(assert (not b!5194735))

(assert (not b!5194869))

(assert (not d!1677131))

(assert (not b!5194804))

(assert (not b!5194935))

(assert (not b!5194727))

(assert (not d!1677125))

(assert (not b!5194891))

(assert (not b!5194733))

(assert (not d!1677085))

(assert (not b!5194797))

(assert (not bm!365187))

(assert (not bm!365193))

(assert (not b!5194564))

(assert (not b!5194907))

(assert (not b!5194927))

(assert (not b!5194872))

(assert (not b!5194660))

(assert (not b!5194736))

(assert (not d!1677103))

(assert (not b!5194572))

(assert (not b!5194912))

(assert (not b!5194791))

(assert (not b!5194908))

(assert (not b!5194798))

(assert (not b!5194915))

(assert (not bm!365202))

(assert (not b!5194729))

(assert (not bm!365217))

(assert (not b!5194939))

(assert (not b!5194873))

(assert (not b!5194799))

(assert (not b!5194875))

(assert tp_is_empty!38745)

(assert (not b!5194903))

(assert (not d!1677119))

(assert (not d!1677137))

(assert (not d!1677105))

(assert (not b!5194940))

(assert (not b!5194628))

(assert (not b!5194917))

(assert (not b!5194759))

(assert (not b!5194913))

(assert (not b!5194905))

(assert (not d!1677107))

(assert (not bm!365203))

(assert (not d!1677127))

(assert (not b!5194904))

(assert (not b!5194934))

(assert (not bm!365200))

(assert (not d!1677123))

(assert (not b!5194625))

(assert (not b!5194566))

(assert (not b!5194938))

(assert (not b!5194870))

(assert (not b!5194695))

(assert (not b!5194874))

(assert (not bm!365205))

(assert (not d!1677113))

(assert (not d!1677115))

(assert (not b!5194937))

(assert (not b!5194571))

(assert (not d!1677129))

(assert (not b!5194732))

(assert (not d!1677111))

(assert (not b!5194922))

(assert (not d!1677097))

(assert (not b!5194573))

(assert (not b!5194651))

(assert (not b!5194794))

(assert (not b!5194916))

(assert (not b!5194911))

(assert (not b!5194763))

(assert (not b!5194909))

(assert (not b!5194877))

(assert (not b!5194694))

(assert (not b!5194734))

(assert (not d!1677139))

(assert (not bm!365215))

(assert (not b!5194793))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

