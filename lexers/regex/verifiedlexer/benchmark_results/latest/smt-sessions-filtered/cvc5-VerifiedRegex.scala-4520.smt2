; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!239744 () Bool)

(assert start!239744)

(declare-fun bm!151268 () Bool)

(declare-fun call!151273 () Bool)

(declare-datatypes ((C!14622 0))(
  ( (C!14623 (val!8553 Int)) )
))
(declare-datatypes ((List!28700 0))(
  ( (Nil!28602) (Cons!28602 (h!34003 C!14622) (t!208677 List!28700)) )
))
(declare-datatypes ((tuple2!28192 0))(
  ( (tuple2!28193 (_1!16637 List!28700) (_2!16637 List!28700)) )
))
(declare-datatypes ((Option!5707 0))(
  ( (None!5706) (Some!5706 (v!31114 tuple2!28192)) )
))
(declare-fun call!151275 () Option!5707)

(declare-fun isDefined!4533 (Option!5707) Bool)

(assert (=> bm!151268 (= call!151273 (isDefined!4533 call!151275))))

(declare-fun b!2459475 () Bool)

(declare-fun res!1042274 () Bool)

(declare-fun e!1559937 () Bool)

(assert (=> b!2459475 (=> res!1042274 e!1559937)))

(declare-datatypes ((Regex!7232 0))(
  ( (ElementMatch!7232 (c!392523 C!14622)) (Concat!11868 (regOne!14976 Regex!7232) (regTwo!14976 Regex!7232)) (EmptyExpr!7232) (Star!7232 (reg!7561 Regex!7232)) (EmptyLang!7232) (Union!7232 (regOne!14977 Regex!7232) (regTwo!14977 Regex!7232)) )
))
(declare-datatypes ((List!28701 0))(
  ( (Nil!28603) (Cons!28603 (h!34004 Regex!7232) (t!208678 List!28701)) )
))
(declare-fun l!9164 () List!28701)

(declare-fun isEmpty!16626 (List!28701) Bool)

(assert (=> b!2459475 (= res!1042274 (isEmpty!16626 l!9164))))

(declare-fun b!2459476 () Bool)

(declare-fun e!1559939 () Bool)

(declare-fun e!1559941 () Bool)

(assert (=> b!2459476 (= e!1559939 e!1559941)))

(declare-fun res!1042278 () Bool)

(assert (=> b!2459476 (=> res!1042278 e!1559941)))

(declare-fun lt!880674 () Regex!7232)

(assert (=> b!2459476 (= res!1042278 (not (= lt!880674 EmptyExpr!7232)))))

(declare-fun lt!880676 () List!28701)

(declare-fun generalisedConcat!333 (List!28701) Regex!7232)

(assert (=> b!2459476 (= lt!880674 (generalisedConcat!333 lt!880676))))

(declare-fun b!2459477 () Bool)

(declare-fun e!1559933 () Bool)

(assert (=> b!2459477 (= e!1559933 call!151273)))

(declare-fun b!2459479 () Bool)

(declare-fun e!1559934 () Bool)

(declare-fun tp!783087 () Bool)

(declare-fun tp!783088 () Bool)

(assert (=> b!2459479 (= e!1559934 (and tp!783087 tp!783088))))

(declare-fun b!2459480 () Bool)

(declare-fun res!1042280 () Bool)

(declare-fun e!1559945 () Bool)

(assert (=> b!2459480 (=> (not res!1042280) (not e!1559945))))

(declare-fun r!13927 () Regex!7232)

(assert (=> b!2459480 (= res!1042280 (= r!13927 (generalisedConcat!333 l!9164)))))

(declare-fun b!2459481 () Bool)

(declare-datatypes ((Unit!41935 0))(
  ( (Unit!41936) )
))
(declare-fun e!1559942 () Unit!41935)

(declare-fun Unit!41937 () Unit!41935)

(assert (=> b!2459481 (= e!1559942 Unit!41937)))

(declare-fun lt!880670 () Bool)

(declare-fun e!1559940 () Bool)

(declare-fun b!2459482 () Bool)

(declare-fun s!9460 () List!28700)

(declare-fun findConcatSeparation!815 (Regex!7232 Regex!7232 List!28700 List!28700 List!28700) Option!5707)

(assert (=> b!2459482 (= e!1559940 (= lt!880670 (isDefined!4533 (findConcatSeparation!815 (h!34004 l!9164) (generalisedConcat!333 (t!208678 l!9164)) Nil!28602 s!9460 s!9460))))))

(declare-fun call!151274 () List!28700)

(declare-fun lt!880669 () tuple2!28192)

(declare-fun bm!151269 () Bool)

(declare-fun c!392522 () Bool)

(declare-fun ++!7120 (List!28700 List!28700) List!28700)

(assert (=> bm!151269 (= call!151274 (++!7120 (ite c!392522 s!9460 (_1!16637 lt!880669)) (ite c!392522 Nil!28602 (_2!16637 lt!880669))))))

(declare-fun b!2459483 () Bool)

(declare-fun e!1559943 () Unit!41935)

(declare-fun Unit!41938 () Unit!41935)

(assert (=> b!2459483 (= e!1559943 Unit!41938)))

(declare-fun lt!880671 () Option!5707)

(declare-fun call!151277 () Option!5707)

(assert (=> b!2459483 (= lt!880671 call!151277)))

(declare-fun lt!880672 () Bool)

(declare-fun call!151278 () Bool)

(assert (=> b!2459483 (= lt!880672 call!151278)))

(declare-fun c!392520 () Bool)

(assert (=> b!2459483 (= c!392520 lt!880672)))

(declare-fun lt!880667 () Unit!41935)

(assert (=> b!2459483 (= lt!880667 e!1559942)))

(declare-fun res!1042272 () Bool)

(assert (=> b!2459483 (= res!1042272 (not lt!880672))))

(declare-fun e!1559944 () Bool)

(assert (=> b!2459483 (=> (not res!1042272) (not e!1559944))))

(assert (=> b!2459483 e!1559944))

(declare-fun bm!151270 () Bool)

(assert (=> bm!151270 (= call!151278 (isDefined!4533 (ite c!392522 call!151277 lt!880671)))))

(declare-fun bm!151271 () Bool)

(declare-fun lt!880677 () Regex!7232)

(assert (=> bm!151271 (= call!151275 (findConcatSeparation!815 lt!880677 lt!880674 Nil!28602 s!9460 s!9460))))

(declare-fun bm!151272 () Bool)

(assert (=> bm!151272 (= call!151277 (findConcatSeparation!815 lt!880677 EmptyExpr!7232 Nil!28602 s!9460 s!9460))))

(declare-fun b!2459484 () Bool)

(assert (=> b!2459484 (= e!1559945 (not e!1559937))))

(declare-fun res!1042277 () Bool)

(assert (=> b!2459484 (=> res!1042277 e!1559937)))

(assert (=> b!2459484 (= res!1042277 (or (is-Concat!11868 r!13927) (is-EmptyExpr!7232 r!13927)))))

(declare-fun matchRSpec!1079 (Regex!7232 List!28700) Bool)

(assert (=> b!2459484 (= lt!880670 (matchRSpec!1079 r!13927 s!9460))))

(declare-fun matchR!3347 (Regex!7232 List!28700) Bool)

(assert (=> b!2459484 (= lt!880670 (matchR!3347 r!13927 s!9460))))

(declare-fun lt!880678 () Unit!41935)

(declare-fun mainMatchTheorem!1079 (Regex!7232 List!28700) Unit!41935)

(assert (=> b!2459484 (= lt!880678 (mainMatchTheorem!1079 r!13927 s!9460))))

(declare-fun b!2459485 () Bool)

(declare-fun e!1559938 () Bool)

(declare-fun tp_is_empty!11877 () Bool)

(assert (=> b!2459485 (= e!1559938 tp_is_empty!11877)))

(declare-fun b!2459486 () Bool)

(declare-fun e!1559946 () Bool)

(assert (=> b!2459486 e!1559946))

(declare-fun res!1042273 () Bool)

(assert (=> b!2459486 (=> (not res!1042273) (not e!1559946))))

(declare-fun call!151276 () Bool)

(assert (=> b!2459486 (= res!1042273 call!151276)))

(declare-fun lt!880673 () Unit!41935)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!105 (Regex!7232 Regex!7232 List!28700 List!28700 List!28700) Unit!41935)

(assert (=> b!2459486 (= lt!880673 (lemmaFindSeparationIsDefinedThenConcatMatches!105 lt!880677 EmptyExpr!7232 (_1!16637 lt!880669) (_2!16637 lt!880669) s!9460))))

(declare-fun get!8855 (Option!5707) tuple2!28192)

(assert (=> b!2459486 (= lt!880669 (get!8855 lt!880671))))

(declare-fun Unit!41939 () Unit!41935)

(assert (=> b!2459486 (= e!1559942 Unit!41939)))

(declare-fun b!2459478 () Bool)

(assert (=> b!2459478 (= e!1559941 e!1559940)))

(declare-fun c!392521 () Bool)

(assert (=> b!2459478 (= c!392521 (is-Cons!28603 l!9164))))

(declare-fun lt!880668 () Unit!41935)

(assert (=> b!2459478 (= lt!880668 e!1559943)))

(assert (=> b!2459478 (= c!392522 (matchR!3347 lt!880677 s!9460))))

(declare-fun head!5614 (List!28701) Regex!7232)

(assert (=> b!2459478 (= lt!880677 (head!5614 l!9164))))

(declare-fun res!1042279 () Bool)

(assert (=> start!239744 (=> (not res!1042279) (not e!1559945))))

(declare-fun lambda!93088 () Int)

(declare-fun forall!5866 (List!28701 Int) Bool)

(assert (=> start!239744 (= res!1042279 (forall!5866 l!9164 lambda!93088))))

(assert (=> start!239744 e!1559945))

(assert (=> start!239744 e!1559934))

(assert (=> start!239744 e!1559938))

(declare-fun e!1559936 () Bool)

(assert (=> start!239744 e!1559936))

(declare-fun b!2459487 () Bool)

(declare-fun isEmpty!16627 (List!28700) Bool)

(assert (=> b!2459487 (= e!1559940 (= lt!880670 (isEmpty!16627 s!9460)))))

(declare-fun bm!151273 () Bool)

(declare-fun lt!880666 () Regex!7232)

(assert (=> bm!151273 (= call!151276 (matchR!3347 (ite c!392522 lt!880666 (Concat!11868 lt!880677 EmptyExpr!7232)) (ite c!392522 s!9460 call!151274)))))

(declare-fun b!2459488 () Bool)

(assert (=> b!2459488 (= e!1559946 false)))

(declare-fun b!2459489 () Bool)

(declare-fun e!1559935 () Bool)

(assert (=> b!2459489 (= e!1559935 call!151276)))

(declare-fun b!2459490 () Bool)

(declare-fun tp!783082 () Bool)

(declare-fun tp!783089 () Bool)

(assert (=> b!2459490 (= e!1559938 (and tp!783082 tp!783089))))

(declare-fun b!2459491 () Bool)

(declare-fun Unit!41940 () Unit!41935)

(assert (=> b!2459491 (= e!1559943 Unit!41940)))

(declare-fun lt!880675 () Unit!41935)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!135 (Regex!7232 Regex!7232 List!28700 List!28700) Unit!41935)

(assert (=> b!2459491 (= lt!880675 (lemmaTwoRegexMatchThenConcatMatchesConcatString!135 lt!880677 EmptyExpr!7232 s!9460 Nil!28602))))

(assert (=> b!2459491 (= lt!880666 (Concat!11868 lt!880677 EmptyExpr!7232))))

(declare-fun res!1042276 () Bool)

(assert (=> b!2459491 (= res!1042276 (matchR!3347 lt!880666 call!151274))))

(assert (=> b!2459491 (=> (not res!1042276) (not e!1559935))))

(assert (=> b!2459491 e!1559935))

(declare-fun lt!880665 () Unit!41935)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!97 (Regex!7232 Regex!7232 List!28700) Unit!41935)

(assert (=> b!2459491 (= lt!880665 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!97 lt!880677 EmptyExpr!7232 s!9460))))

(declare-fun res!1042271 () Bool)

(assert (=> b!2459491 (= res!1042271 call!151278)))

(assert (=> b!2459491 (=> (not res!1042271) (not e!1559933))))

(assert (=> b!2459491 e!1559933))

(declare-fun b!2459492 () Bool)

(declare-fun tp!783086 () Bool)

(assert (=> b!2459492 (= e!1559938 tp!783086)))

(declare-fun b!2459493 () Bool)

(declare-fun tp!783083 () Bool)

(assert (=> b!2459493 (= e!1559936 (and tp_is_empty!11877 tp!783083))))

(declare-fun b!2459494 () Bool)

(assert (=> b!2459494 (= e!1559937 e!1559939)))

(declare-fun res!1042275 () Bool)

(assert (=> b!2459494 (=> res!1042275 e!1559939)))

(assert (=> b!2459494 (= res!1042275 (not (isEmpty!16626 lt!880676)))))

(declare-fun tail!3887 (List!28701) List!28701)

(assert (=> b!2459494 (= lt!880676 (tail!3887 l!9164))))

(declare-fun b!2459495 () Bool)

(assert (=> b!2459495 (= e!1559944 (not call!151273))))

(declare-fun b!2459496 () Bool)

(declare-fun tp!783085 () Bool)

(declare-fun tp!783084 () Bool)

(assert (=> b!2459496 (= e!1559938 (and tp!783085 tp!783084))))

(assert (= (and start!239744 res!1042279) b!2459480))

(assert (= (and b!2459480 res!1042280) b!2459484))

(assert (= (and b!2459484 (not res!1042277)) b!2459475))

(assert (= (and b!2459475 (not res!1042274)) b!2459494))

(assert (= (and b!2459494 (not res!1042275)) b!2459476))

(assert (= (and b!2459476 (not res!1042278)) b!2459478))

(assert (= (and b!2459478 c!392522) b!2459491))

(assert (= (and b!2459478 (not c!392522)) b!2459483))

(assert (= (and b!2459491 res!1042276) b!2459489))

(assert (= (and b!2459491 res!1042271) b!2459477))

(assert (= (and b!2459483 c!392520) b!2459486))

(assert (= (and b!2459483 (not c!392520)) b!2459481))

(assert (= (and b!2459486 res!1042273) b!2459488))

(assert (= (and b!2459483 res!1042272) b!2459495))

(assert (= (or b!2459491 b!2459486) bm!151269))

(assert (= (or b!2459491 b!2459483) bm!151272))

(assert (= (or b!2459477 b!2459495) bm!151271))

(assert (= (or b!2459491 b!2459483) bm!151270))

(assert (= (or b!2459489 b!2459486) bm!151273))

(assert (= (or b!2459477 b!2459495) bm!151268))

(assert (= (and b!2459478 c!392521) b!2459482))

(assert (= (and b!2459478 (not c!392521)) b!2459487))

(assert (= (and start!239744 (is-Cons!28603 l!9164)) b!2459479))

(assert (= (and start!239744 (is-ElementMatch!7232 r!13927)) b!2459485))

(assert (= (and start!239744 (is-Concat!11868 r!13927)) b!2459490))

(assert (= (and start!239744 (is-Star!7232 r!13927)) b!2459492))

(assert (= (and start!239744 (is-Union!7232 r!13927)) b!2459496))

(assert (= (and start!239744 (is-Cons!28602 s!9460)) b!2459493))

(declare-fun m!2829143 () Bool)

(assert (=> b!2459475 m!2829143))

(declare-fun m!2829145 () Bool)

(assert (=> b!2459494 m!2829145))

(declare-fun m!2829147 () Bool)

(assert (=> b!2459494 m!2829147))

(declare-fun m!2829149 () Bool)

(assert (=> b!2459484 m!2829149))

(declare-fun m!2829151 () Bool)

(assert (=> b!2459484 m!2829151))

(declare-fun m!2829153 () Bool)

(assert (=> b!2459484 m!2829153))

(declare-fun m!2829155 () Bool)

(assert (=> bm!151272 m!2829155))

(declare-fun m!2829157 () Bool)

(assert (=> start!239744 m!2829157))

(declare-fun m!2829159 () Bool)

(assert (=> b!2459480 m!2829159))

(declare-fun m!2829161 () Bool)

(assert (=> bm!151269 m!2829161))

(declare-fun m!2829163 () Bool)

(assert (=> bm!151268 m!2829163))

(declare-fun m!2829165 () Bool)

(assert (=> bm!151271 m!2829165))

(declare-fun m!2829167 () Bool)

(assert (=> b!2459482 m!2829167))

(assert (=> b!2459482 m!2829167))

(declare-fun m!2829169 () Bool)

(assert (=> b!2459482 m!2829169))

(assert (=> b!2459482 m!2829169))

(declare-fun m!2829171 () Bool)

(assert (=> b!2459482 m!2829171))

(declare-fun m!2829173 () Bool)

(assert (=> bm!151273 m!2829173))

(declare-fun m!2829175 () Bool)

(assert (=> bm!151270 m!2829175))

(declare-fun m!2829177 () Bool)

(assert (=> b!2459486 m!2829177))

(declare-fun m!2829179 () Bool)

(assert (=> b!2459486 m!2829179))

(declare-fun m!2829181 () Bool)

(assert (=> b!2459476 m!2829181))

(declare-fun m!2829183 () Bool)

(assert (=> b!2459491 m!2829183))

(declare-fun m!2829185 () Bool)

(assert (=> b!2459491 m!2829185))

(declare-fun m!2829187 () Bool)

(assert (=> b!2459491 m!2829187))

(declare-fun m!2829189 () Bool)

(assert (=> b!2459478 m!2829189))

(declare-fun m!2829191 () Bool)

(assert (=> b!2459478 m!2829191))

(declare-fun m!2829193 () Bool)

(assert (=> b!2459487 m!2829193))

(push 1)

(assert (not bm!151272))

(assert (not b!2459475))

(assert (not b!2459479))

(assert (not b!2459484))

(assert (not start!239744))

(assert (not b!2459487))

(assert (not bm!151271))

(assert (not bm!151273))

(assert (not b!2459490))

(assert (not b!2459494))

(assert (not b!2459493))

(assert (not b!2459476))

(assert (not b!2459478))

(assert (not bm!151269))

(assert (not b!2459492))

(assert (not bm!151270))

(assert tp_is_empty!11877)

(assert (not b!2459491))

(assert (not b!2459486))

(assert (not b!2459480))

(assert (not b!2459482))

(assert (not bm!151268))

(assert (not b!2459496))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2459581 () Bool)

(declare-fun e!1560000 () Bool)

(declare-fun lt!880728 () Option!5707)

(assert (=> b!2459581 (= e!1560000 (not (isDefined!4533 lt!880728)))))

(declare-fun b!2459582 () Bool)

(declare-fun res!1042322 () Bool)

(declare-fun e!1560001 () Bool)

(assert (=> b!2459582 (=> (not res!1042322) (not e!1560001))))

(assert (=> b!2459582 (= res!1042322 (matchR!3347 lt!880677 (_1!16637 (get!8855 lt!880728))))))

(declare-fun b!2459583 () Bool)

(declare-fun e!1559999 () Bool)

(assert (=> b!2459583 (= e!1559999 (matchR!3347 EmptyExpr!7232 s!9460))))

(declare-fun b!2459584 () Bool)

(declare-fun e!1560003 () Option!5707)

(declare-fun e!1560002 () Option!5707)

(assert (=> b!2459584 (= e!1560003 e!1560002)))

(declare-fun c!392539 () Bool)

(assert (=> b!2459584 (= c!392539 (is-Nil!28602 s!9460))))

(declare-fun b!2459585 () Bool)

(declare-fun lt!880727 () Unit!41935)

(declare-fun lt!880729 () Unit!41935)

(assert (=> b!2459585 (= lt!880727 lt!880729)))

(assert (=> b!2459585 (= (++!7120 (++!7120 Nil!28602 (Cons!28602 (h!34003 s!9460) Nil!28602)) (t!208677 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!713 (List!28700 C!14622 List!28700 List!28700) Unit!41935)

(assert (=> b!2459585 (= lt!880729 (lemmaMoveElementToOtherListKeepsConcatEq!713 Nil!28602 (h!34003 s!9460) (t!208677 s!9460) s!9460))))

(assert (=> b!2459585 (= e!1560002 (findConcatSeparation!815 lt!880677 EmptyExpr!7232 (++!7120 Nil!28602 (Cons!28602 (h!34003 s!9460) Nil!28602)) (t!208677 s!9460) s!9460))))

(declare-fun b!2459586 () Bool)

(assert (=> b!2459586 (= e!1560003 (Some!5706 (tuple2!28193 Nil!28602 s!9460)))))

(declare-fun b!2459587 () Bool)

(declare-fun res!1042321 () Bool)

(assert (=> b!2459587 (=> (not res!1042321) (not e!1560001))))

(assert (=> b!2459587 (= res!1042321 (matchR!3347 EmptyExpr!7232 (_2!16637 (get!8855 lt!880728))))))

(declare-fun b!2459588 () Bool)

(assert (=> b!2459588 (= e!1560002 None!5706)))

(declare-fun b!2459589 () Bool)

(assert (=> b!2459589 (= e!1560001 (= (++!7120 (_1!16637 (get!8855 lt!880728)) (_2!16637 (get!8855 lt!880728))) s!9460))))

(declare-fun d!708159 () Bool)

(assert (=> d!708159 e!1560000))

(declare-fun res!1042324 () Bool)

(assert (=> d!708159 (=> res!1042324 e!1560000)))

(assert (=> d!708159 (= res!1042324 e!1560001)))

(declare-fun res!1042325 () Bool)

(assert (=> d!708159 (=> (not res!1042325) (not e!1560001))))

(assert (=> d!708159 (= res!1042325 (isDefined!4533 lt!880728))))

(assert (=> d!708159 (= lt!880728 e!1560003)))

(declare-fun c!392538 () Bool)

(assert (=> d!708159 (= c!392538 e!1559999)))

(declare-fun res!1042323 () Bool)

(assert (=> d!708159 (=> (not res!1042323) (not e!1559999))))

(assert (=> d!708159 (= res!1042323 (matchR!3347 lt!880677 Nil!28602))))

(declare-fun validRegex!2918 (Regex!7232) Bool)

(assert (=> d!708159 (validRegex!2918 lt!880677)))

(assert (=> d!708159 (= (findConcatSeparation!815 lt!880677 EmptyExpr!7232 Nil!28602 s!9460 s!9460) lt!880728)))

(assert (= (and d!708159 res!1042323) b!2459583))

(assert (= (and d!708159 c!392538) b!2459586))

(assert (= (and d!708159 (not c!392538)) b!2459584))

(assert (= (and b!2459584 c!392539) b!2459588))

(assert (= (and b!2459584 (not c!392539)) b!2459585))

(assert (= (and d!708159 res!1042325) b!2459582))

(assert (= (and b!2459582 res!1042322) b!2459587))

(assert (= (and b!2459587 res!1042321) b!2459589))

(assert (= (and d!708159 (not res!1042324)) b!2459581))

(declare-fun m!2829247 () Bool)

(assert (=> b!2459583 m!2829247))

(declare-fun m!2829249 () Bool)

(assert (=> b!2459589 m!2829249))

(declare-fun m!2829251 () Bool)

(assert (=> b!2459589 m!2829251))

(declare-fun m!2829253 () Bool)

(assert (=> d!708159 m!2829253))

(declare-fun m!2829255 () Bool)

(assert (=> d!708159 m!2829255))

(declare-fun m!2829257 () Bool)

(assert (=> d!708159 m!2829257))

(assert (=> b!2459587 m!2829249))

(declare-fun m!2829259 () Bool)

(assert (=> b!2459587 m!2829259))

(assert (=> b!2459581 m!2829253))

(assert (=> b!2459582 m!2829249))

(declare-fun m!2829261 () Bool)

(assert (=> b!2459582 m!2829261))

(declare-fun m!2829263 () Bool)

(assert (=> b!2459585 m!2829263))

(assert (=> b!2459585 m!2829263))

(declare-fun m!2829265 () Bool)

(assert (=> b!2459585 m!2829265))

(declare-fun m!2829267 () Bool)

(assert (=> b!2459585 m!2829267))

(assert (=> b!2459585 m!2829263))

(declare-fun m!2829269 () Bool)

(assert (=> b!2459585 m!2829269))

(assert (=> bm!151272 d!708159))

(declare-fun bs!466162 () Bool)

(declare-fun d!708163 () Bool)

(assert (= bs!466162 (and d!708163 start!239744)))

(declare-fun lambda!93094 () Int)

(assert (=> bs!466162 (= lambda!93094 lambda!93088)))

(declare-fun b!2459610 () Bool)

(declare-fun e!1560016 () Bool)

(declare-fun lt!880732 () Regex!7232)

(declare-fun isConcat!238 (Regex!7232) Bool)

(assert (=> b!2459610 (= e!1560016 (isConcat!238 lt!880732))))

(declare-fun b!2459611 () Bool)

(declare-fun e!1560020 () Regex!7232)

(assert (=> b!2459611 (= e!1560020 (Concat!11868 (h!34004 lt!880676) (generalisedConcat!333 (t!208678 lt!880676))))))

(declare-fun b!2459612 () Bool)

(assert (=> b!2459612 (= e!1560016 (= lt!880732 (head!5614 lt!880676)))))

(declare-fun b!2459613 () Bool)

(declare-fun e!1560021 () Bool)

(declare-fun e!1560017 () Bool)

(assert (=> b!2459613 (= e!1560021 e!1560017)))

(declare-fun c!392548 () Bool)

(assert (=> b!2459613 (= c!392548 (isEmpty!16626 lt!880676))))

(declare-fun b!2459614 () Bool)

(assert (=> b!2459614 (= e!1560020 EmptyExpr!7232)))

(declare-fun b!2459616 () Bool)

(declare-fun e!1560018 () Regex!7232)

(assert (=> b!2459616 (= e!1560018 (h!34004 lt!880676))))

(declare-fun b!2459617 () Bool)

(declare-fun isEmptyExpr!238 (Regex!7232) Bool)

(assert (=> b!2459617 (= e!1560017 (isEmptyExpr!238 lt!880732))))

(declare-fun b!2459618 () Bool)

(assert (=> b!2459618 (= e!1560017 e!1560016)))

(declare-fun c!392551 () Bool)

(assert (=> b!2459618 (= c!392551 (isEmpty!16626 (tail!3887 lt!880676)))))

(declare-fun b!2459619 () Bool)

(assert (=> b!2459619 (= e!1560018 e!1560020)))

(declare-fun c!392550 () Bool)

(assert (=> b!2459619 (= c!392550 (is-Cons!28603 lt!880676))))

(assert (=> d!708163 e!1560021))

(declare-fun res!1042331 () Bool)

(assert (=> d!708163 (=> (not res!1042331) (not e!1560021))))

(assert (=> d!708163 (= res!1042331 (validRegex!2918 lt!880732))))

(assert (=> d!708163 (= lt!880732 e!1560018)))

(declare-fun c!392549 () Bool)

(declare-fun e!1560019 () Bool)

(assert (=> d!708163 (= c!392549 e!1560019)))

(declare-fun res!1042330 () Bool)

(assert (=> d!708163 (=> (not res!1042330) (not e!1560019))))

(assert (=> d!708163 (= res!1042330 (is-Cons!28603 lt!880676))))

(assert (=> d!708163 (forall!5866 lt!880676 lambda!93094)))

(assert (=> d!708163 (= (generalisedConcat!333 lt!880676) lt!880732)))

(declare-fun b!2459615 () Bool)

(assert (=> b!2459615 (= e!1560019 (isEmpty!16626 (t!208678 lt!880676)))))

(assert (= (and d!708163 res!1042330) b!2459615))

(assert (= (and d!708163 c!392549) b!2459616))

(assert (= (and d!708163 (not c!392549)) b!2459619))

(assert (= (and b!2459619 c!392550) b!2459611))

(assert (= (and b!2459619 (not c!392550)) b!2459614))

(assert (= (and d!708163 res!1042331) b!2459613))

(assert (= (and b!2459613 c!392548) b!2459617))

(assert (= (and b!2459613 (not c!392548)) b!2459618))

(assert (= (and b!2459618 c!392551) b!2459612))

(assert (= (and b!2459618 (not c!392551)) b!2459610))

(assert (=> b!2459613 m!2829145))

(declare-fun m!2829271 () Bool)

(assert (=> b!2459618 m!2829271))

(assert (=> b!2459618 m!2829271))

(declare-fun m!2829273 () Bool)

(assert (=> b!2459618 m!2829273))

(declare-fun m!2829275 () Bool)

(assert (=> b!2459610 m!2829275))

(declare-fun m!2829277 () Bool)

(assert (=> b!2459617 m!2829277))

(declare-fun m!2829279 () Bool)

(assert (=> b!2459612 m!2829279))

(declare-fun m!2829281 () Bool)

(assert (=> b!2459615 m!2829281))

(declare-fun m!2829283 () Bool)

(assert (=> d!708163 m!2829283))

(declare-fun m!2829285 () Bool)

(assert (=> d!708163 m!2829285))

(declare-fun m!2829287 () Bool)

(assert (=> b!2459611 m!2829287))

(assert (=> b!2459476 d!708163))

(declare-fun b!2459620 () Bool)

(declare-fun e!1560023 () Bool)

(declare-fun lt!880734 () Option!5707)

(assert (=> b!2459620 (= e!1560023 (not (isDefined!4533 lt!880734)))))

(declare-fun b!2459621 () Bool)

(declare-fun res!1042333 () Bool)

(declare-fun e!1560024 () Bool)

(assert (=> b!2459621 (=> (not res!1042333) (not e!1560024))))

(assert (=> b!2459621 (= res!1042333 (matchR!3347 lt!880677 (_1!16637 (get!8855 lt!880734))))))

(declare-fun b!2459622 () Bool)

(declare-fun e!1560022 () Bool)

(assert (=> b!2459622 (= e!1560022 (matchR!3347 lt!880674 s!9460))))

(declare-fun b!2459623 () Bool)

(declare-fun e!1560026 () Option!5707)

(declare-fun e!1560025 () Option!5707)

(assert (=> b!2459623 (= e!1560026 e!1560025)))

(declare-fun c!392553 () Bool)

(assert (=> b!2459623 (= c!392553 (is-Nil!28602 s!9460))))

(declare-fun b!2459624 () Bool)

(declare-fun lt!880733 () Unit!41935)

(declare-fun lt!880735 () Unit!41935)

(assert (=> b!2459624 (= lt!880733 lt!880735)))

(assert (=> b!2459624 (= (++!7120 (++!7120 Nil!28602 (Cons!28602 (h!34003 s!9460) Nil!28602)) (t!208677 s!9460)) s!9460)))

(assert (=> b!2459624 (= lt!880735 (lemmaMoveElementToOtherListKeepsConcatEq!713 Nil!28602 (h!34003 s!9460) (t!208677 s!9460) s!9460))))

(assert (=> b!2459624 (= e!1560025 (findConcatSeparation!815 lt!880677 lt!880674 (++!7120 Nil!28602 (Cons!28602 (h!34003 s!9460) Nil!28602)) (t!208677 s!9460) s!9460))))

(declare-fun b!2459625 () Bool)

(assert (=> b!2459625 (= e!1560026 (Some!5706 (tuple2!28193 Nil!28602 s!9460)))))

(declare-fun b!2459626 () Bool)

(declare-fun res!1042332 () Bool)

(assert (=> b!2459626 (=> (not res!1042332) (not e!1560024))))

(assert (=> b!2459626 (= res!1042332 (matchR!3347 lt!880674 (_2!16637 (get!8855 lt!880734))))))

(declare-fun b!2459627 () Bool)

(assert (=> b!2459627 (= e!1560025 None!5706)))

(declare-fun b!2459628 () Bool)

(assert (=> b!2459628 (= e!1560024 (= (++!7120 (_1!16637 (get!8855 lt!880734)) (_2!16637 (get!8855 lt!880734))) s!9460))))

(declare-fun d!708165 () Bool)

(assert (=> d!708165 e!1560023))

(declare-fun res!1042335 () Bool)

(assert (=> d!708165 (=> res!1042335 e!1560023)))

(assert (=> d!708165 (= res!1042335 e!1560024)))

(declare-fun res!1042336 () Bool)

(assert (=> d!708165 (=> (not res!1042336) (not e!1560024))))

(assert (=> d!708165 (= res!1042336 (isDefined!4533 lt!880734))))

(assert (=> d!708165 (= lt!880734 e!1560026)))

(declare-fun c!392552 () Bool)

(assert (=> d!708165 (= c!392552 e!1560022)))

(declare-fun res!1042334 () Bool)

(assert (=> d!708165 (=> (not res!1042334) (not e!1560022))))

(assert (=> d!708165 (= res!1042334 (matchR!3347 lt!880677 Nil!28602))))

(assert (=> d!708165 (validRegex!2918 lt!880677)))

(assert (=> d!708165 (= (findConcatSeparation!815 lt!880677 lt!880674 Nil!28602 s!9460 s!9460) lt!880734)))

(assert (= (and d!708165 res!1042334) b!2459622))

(assert (= (and d!708165 c!392552) b!2459625))

(assert (= (and d!708165 (not c!392552)) b!2459623))

(assert (= (and b!2459623 c!392553) b!2459627))

(assert (= (and b!2459623 (not c!392553)) b!2459624))

(assert (= (and d!708165 res!1042336) b!2459621))

(assert (= (and b!2459621 res!1042333) b!2459626))

(assert (= (and b!2459626 res!1042332) b!2459628))

(assert (= (and d!708165 (not res!1042335)) b!2459620))

(declare-fun m!2829289 () Bool)

(assert (=> b!2459622 m!2829289))

(declare-fun m!2829291 () Bool)

(assert (=> b!2459628 m!2829291))

(declare-fun m!2829293 () Bool)

(assert (=> b!2459628 m!2829293))

(declare-fun m!2829295 () Bool)

(assert (=> d!708165 m!2829295))

(assert (=> d!708165 m!2829255))

(assert (=> d!708165 m!2829257))

(assert (=> b!2459626 m!2829291))

(declare-fun m!2829297 () Bool)

(assert (=> b!2459626 m!2829297))

(assert (=> b!2459620 m!2829295))

(assert (=> b!2459621 m!2829291))

(declare-fun m!2829299 () Bool)

(assert (=> b!2459621 m!2829299))

(assert (=> b!2459624 m!2829263))

(assert (=> b!2459624 m!2829263))

(assert (=> b!2459624 m!2829265))

(assert (=> b!2459624 m!2829267))

(assert (=> b!2459624 m!2829263))

(declare-fun m!2829301 () Bool)

(assert (=> b!2459624 m!2829301))

(assert (=> bm!151271 d!708165))

(declare-fun d!708167 () Bool)

(assert (=> d!708167 (= (isEmpty!16626 l!9164) (is-Nil!28603 l!9164))))

(assert (=> b!2459475 d!708167))

(declare-fun d!708169 () Bool)

(assert (=> d!708169 (matchR!3347 (Concat!11868 lt!880677 EmptyExpr!7232) (++!7120 s!9460 Nil!28602))))

(declare-fun lt!880738 () Unit!41935)

(declare-fun choose!14551 (Regex!7232 Regex!7232 List!28700 List!28700) Unit!41935)

(assert (=> d!708169 (= lt!880738 (choose!14551 lt!880677 EmptyExpr!7232 s!9460 Nil!28602))))

(declare-fun e!1560029 () Bool)

(assert (=> d!708169 e!1560029))

(declare-fun res!1042339 () Bool)

(assert (=> d!708169 (=> (not res!1042339) (not e!1560029))))

(assert (=> d!708169 (= res!1042339 (validRegex!2918 lt!880677))))

(assert (=> d!708169 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!135 lt!880677 EmptyExpr!7232 s!9460 Nil!28602) lt!880738)))

(declare-fun b!2459631 () Bool)

(assert (=> b!2459631 (= e!1560029 (validRegex!2918 EmptyExpr!7232))))

(assert (= (and d!708169 res!1042339) b!2459631))

(declare-fun m!2829303 () Bool)

(assert (=> d!708169 m!2829303))

(assert (=> d!708169 m!2829303))

(declare-fun m!2829305 () Bool)

(assert (=> d!708169 m!2829305))

(declare-fun m!2829307 () Bool)

(assert (=> d!708169 m!2829307))

(assert (=> d!708169 m!2829257))

(declare-fun m!2829309 () Bool)

(assert (=> b!2459631 m!2829309))

(assert (=> b!2459491 d!708169))

(declare-fun bm!151294 () Bool)

(declare-fun call!151299 () Bool)

(assert (=> bm!151294 (= call!151299 (isEmpty!16627 call!151274))))

(declare-fun b!2459678 () Bool)

(declare-fun res!1042366 () Bool)

(declare-fun e!1560057 () Bool)

(assert (=> b!2459678 (=> (not res!1042366) (not e!1560057))))

(assert (=> b!2459678 (= res!1042366 (not call!151299))))

(declare-fun b!2459679 () Bool)

(declare-fun e!1560055 () Bool)

(declare-fun e!1560056 () Bool)

(assert (=> b!2459679 (= e!1560055 e!1560056)))

(declare-fun res!1042372 () Bool)

(assert (=> b!2459679 (=> res!1042372 e!1560056)))

(assert (=> b!2459679 (= res!1042372 call!151299)))

(declare-fun b!2459680 () Bool)

(declare-fun res!1042370 () Bool)

(assert (=> b!2459680 (=> res!1042370 e!1560056)))

(declare-fun tail!3889 (List!28700) List!28700)

(assert (=> b!2459680 (= res!1042370 (not (isEmpty!16627 (tail!3889 call!151274))))))

(declare-fun b!2459681 () Bool)

(declare-fun res!1042367 () Bool)

(declare-fun e!1560054 () Bool)

(assert (=> b!2459681 (=> res!1042367 e!1560054)))

(assert (=> b!2459681 (= res!1042367 e!1560057)))

(declare-fun res!1042371 () Bool)

(assert (=> b!2459681 (=> (not res!1042371) (not e!1560057))))

(declare-fun lt!880747 () Bool)

(assert (=> b!2459681 (= res!1042371 lt!880747)))

(declare-fun b!2459682 () Bool)

(declare-fun e!1560060 () Bool)

(declare-fun e!1560059 () Bool)

(assert (=> b!2459682 (= e!1560060 e!1560059)))

(declare-fun c!392564 () Bool)

(assert (=> b!2459682 (= c!392564 (is-EmptyLang!7232 lt!880666))))

(declare-fun b!2459683 () Bool)

(declare-fun e!1560058 () Bool)

(declare-fun nullable!2219 (Regex!7232) Bool)

(assert (=> b!2459683 (= e!1560058 (nullable!2219 lt!880666))))

(declare-fun b!2459684 () Bool)

(declare-fun head!5616 (List!28700) C!14622)

(assert (=> b!2459684 (= e!1560057 (= (head!5616 call!151274) (c!392523 lt!880666)))))

(declare-fun d!708171 () Bool)

(assert (=> d!708171 e!1560060))

(declare-fun c!392566 () Bool)

(assert (=> d!708171 (= c!392566 (is-EmptyExpr!7232 lt!880666))))

(assert (=> d!708171 (= lt!880747 e!1560058)))

(declare-fun c!392565 () Bool)

(assert (=> d!708171 (= c!392565 (isEmpty!16627 call!151274))))

(assert (=> d!708171 (validRegex!2918 lt!880666)))

(assert (=> d!708171 (= (matchR!3347 lt!880666 call!151274) lt!880747)))

(declare-fun b!2459685 () Bool)

(declare-fun res!1042368 () Bool)

(assert (=> b!2459685 (=> (not res!1042368) (not e!1560057))))

(assert (=> b!2459685 (= res!1042368 (isEmpty!16627 (tail!3889 call!151274)))))

(declare-fun b!2459686 () Bool)

(assert (=> b!2459686 (= e!1560056 (not (= (head!5616 call!151274) (c!392523 lt!880666))))))

(declare-fun b!2459687 () Bool)

(assert (=> b!2459687 (= e!1560060 (= lt!880747 call!151299))))

(declare-fun b!2459688 () Bool)

(declare-fun res!1042373 () Bool)

(assert (=> b!2459688 (=> res!1042373 e!1560054)))

(assert (=> b!2459688 (= res!1042373 (not (is-ElementMatch!7232 lt!880666)))))

(assert (=> b!2459688 (= e!1560059 e!1560054)))

(declare-fun b!2459689 () Bool)

(assert (=> b!2459689 (= e!1560054 e!1560055)))

(declare-fun res!1042369 () Bool)

(assert (=> b!2459689 (=> (not res!1042369) (not e!1560055))))

(assert (=> b!2459689 (= res!1042369 (not lt!880747))))

(declare-fun b!2459690 () Bool)

(declare-fun derivativeStep!1873 (Regex!7232 C!14622) Regex!7232)

(assert (=> b!2459690 (= e!1560058 (matchR!3347 (derivativeStep!1873 lt!880666 (head!5616 call!151274)) (tail!3889 call!151274)))))

(declare-fun b!2459691 () Bool)

(assert (=> b!2459691 (= e!1560059 (not lt!880747))))

(assert (= (and d!708171 c!392565) b!2459683))

(assert (= (and d!708171 (not c!392565)) b!2459690))

(assert (= (and d!708171 c!392566) b!2459687))

(assert (= (and d!708171 (not c!392566)) b!2459682))

(assert (= (and b!2459682 c!392564) b!2459691))

(assert (= (and b!2459682 (not c!392564)) b!2459688))

(assert (= (and b!2459688 (not res!1042373)) b!2459681))

(assert (= (and b!2459681 res!1042371) b!2459678))

(assert (= (and b!2459678 res!1042366) b!2459685))

(assert (= (and b!2459685 res!1042368) b!2459684))

(assert (= (and b!2459681 (not res!1042367)) b!2459689))

(assert (= (and b!2459689 res!1042369) b!2459679))

(assert (= (and b!2459679 (not res!1042372)) b!2459680))

(assert (= (and b!2459680 (not res!1042370)) b!2459686))

(assert (= (or b!2459687 b!2459678 b!2459679) bm!151294))

(declare-fun m!2829311 () Bool)

(assert (=> b!2459685 m!2829311))

(assert (=> b!2459685 m!2829311))

(declare-fun m!2829313 () Bool)

(assert (=> b!2459685 m!2829313))

(assert (=> b!2459680 m!2829311))

(assert (=> b!2459680 m!2829311))

(assert (=> b!2459680 m!2829313))

(declare-fun m!2829315 () Bool)

(assert (=> b!2459690 m!2829315))

(assert (=> b!2459690 m!2829315))

(declare-fun m!2829317 () Bool)

(assert (=> b!2459690 m!2829317))

(assert (=> b!2459690 m!2829311))

(assert (=> b!2459690 m!2829317))

(assert (=> b!2459690 m!2829311))

(declare-fun m!2829319 () Bool)

(assert (=> b!2459690 m!2829319))

(declare-fun m!2829321 () Bool)

(assert (=> d!708171 m!2829321))

(declare-fun m!2829323 () Bool)

(assert (=> d!708171 m!2829323))

(assert (=> bm!151294 m!2829321))

(assert (=> b!2459684 m!2829315))

(declare-fun m!2829325 () Bool)

(assert (=> b!2459683 m!2829325))

(assert (=> b!2459686 m!2829315))

(assert (=> b!2459491 d!708171))

(declare-fun d!708173 () Bool)

(assert (=> d!708173 (isDefined!4533 (findConcatSeparation!815 lt!880677 EmptyExpr!7232 Nil!28602 s!9460 s!9460))))

(declare-fun lt!880750 () Unit!41935)

(declare-fun choose!14552 (Regex!7232 Regex!7232 List!28700) Unit!41935)

(assert (=> d!708173 (= lt!880750 (choose!14552 lt!880677 EmptyExpr!7232 s!9460))))

(assert (=> d!708173 (validRegex!2918 lt!880677)))

(assert (=> d!708173 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!97 lt!880677 EmptyExpr!7232 s!9460) lt!880750)))

(declare-fun bs!466163 () Bool)

(assert (= bs!466163 d!708173))

(assert (=> bs!466163 m!2829155))

(assert (=> bs!466163 m!2829155))

(declare-fun m!2829327 () Bool)

(assert (=> bs!466163 m!2829327))

(declare-fun m!2829329 () Bool)

(assert (=> bs!466163 m!2829329))

(assert (=> bs!466163 m!2829257))

(assert (=> b!2459491 d!708173))

(declare-fun d!708175 () Bool)

(declare-fun isEmpty!16630 (Option!5707) Bool)

(assert (=> d!708175 (= (isDefined!4533 (ite c!392522 call!151277 lt!880671)) (not (isEmpty!16630 (ite c!392522 call!151277 lt!880671))))))

(declare-fun bs!466164 () Bool)

(assert (= bs!466164 d!708175))

(declare-fun m!2829331 () Bool)

(assert (=> bs!466164 m!2829331))

(assert (=> bm!151270 d!708175))

(declare-fun d!708177 () Bool)

(assert (=> d!708177 (= (isDefined!4533 call!151275) (not (isEmpty!16630 call!151275)))))

(declare-fun bs!466165 () Bool)

(assert (= bs!466165 d!708177))

(declare-fun m!2829333 () Bool)

(assert (=> bs!466165 m!2829333))

(assert (=> bm!151268 d!708177))

(declare-fun lt!880756 () List!28700)

(declare-fun b!2459712 () Bool)

(declare-fun e!1560071 () Bool)

(assert (=> b!2459712 (= e!1560071 (or (not (= (ite c!392522 Nil!28602 (_2!16637 lt!880669)) Nil!28602)) (= lt!880756 (ite c!392522 s!9460 (_1!16637 lt!880669)))))))

(declare-fun b!2459711 () Bool)

(declare-fun res!1042383 () Bool)

(assert (=> b!2459711 (=> (not res!1042383) (not e!1560071))))

(declare-fun size!22277 (List!28700) Int)

(assert (=> b!2459711 (= res!1042383 (= (size!22277 lt!880756) (+ (size!22277 (ite c!392522 s!9460 (_1!16637 lt!880669))) (size!22277 (ite c!392522 Nil!28602 (_2!16637 lt!880669))))))))

(declare-fun b!2459710 () Bool)

(declare-fun e!1560070 () List!28700)

(assert (=> b!2459710 (= e!1560070 (Cons!28602 (h!34003 (ite c!392522 s!9460 (_1!16637 lt!880669))) (++!7120 (t!208677 (ite c!392522 s!9460 (_1!16637 lt!880669))) (ite c!392522 Nil!28602 (_2!16637 lt!880669)))))))

(declare-fun b!2459709 () Bool)

(assert (=> b!2459709 (= e!1560070 (ite c!392522 Nil!28602 (_2!16637 lt!880669)))))

(declare-fun d!708179 () Bool)

(assert (=> d!708179 e!1560071))

(declare-fun res!1042384 () Bool)

(assert (=> d!708179 (=> (not res!1042384) (not e!1560071))))

(declare-fun content!3939 (List!28700) (Set C!14622))

(assert (=> d!708179 (= res!1042384 (= (content!3939 lt!880756) (set.union (content!3939 (ite c!392522 s!9460 (_1!16637 lt!880669))) (content!3939 (ite c!392522 Nil!28602 (_2!16637 lt!880669))))))))

(assert (=> d!708179 (= lt!880756 e!1560070)))

(declare-fun c!392571 () Bool)

(assert (=> d!708179 (= c!392571 (is-Nil!28602 (ite c!392522 s!9460 (_1!16637 lt!880669))))))

(assert (=> d!708179 (= (++!7120 (ite c!392522 s!9460 (_1!16637 lt!880669)) (ite c!392522 Nil!28602 (_2!16637 lt!880669))) lt!880756)))

(assert (= (and d!708179 c!392571) b!2459709))

(assert (= (and d!708179 (not c!392571)) b!2459710))

(assert (= (and d!708179 res!1042384) b!2459711))

(assert (= (and b!2459711 res!1042383) b!2459712))

(declare-fun m!2829335 () Bool)

(assert (=> b!2459711 m!2829335))

(declare-fun m!2829337 () Bool)

(assert (=> b!2459711 m!2829337))

(declare-fun m!2829339 () Bool)

(assert (=> b!2459711 m!2829339))

(declare-fun m!2829341 () Bool)

(assert (=> b!2459710 m!2829341))

(declare-fun m!2829343 () Bool)

(assert (=> d!708179 m!2829343))

(declare-fun m!2829345 () Bool)

(assert (=> d!708179 m!2829345))

(declare-fun m!2829347 () Bool)

(assert (=> d!708179 m!2829347))

(assert (=> bm!151269 d!708179))

(declare-fun d!708181 () Bool)

(assert (=> d!708181 (= (isDefined!4533 (findConcatSeparation!815 (h!34004 l!9164) (generalisedConcat!333 (t!208678 l!9164)) Nil!28602 s!9460 s!9460)) (not (isEmpty!16630 (findConcatSeparation!815 (h!34004 l!9164) (generalisedConcat!333 (t!208678 l!9164)) Nil!28602 s!9460 s!9460))))))

(declare-fun bs!466166 () Bool)

(assert (= bs!466166 d!708181))

(assert (=> bs!466166 m!2829169))

(declare-fun m!2829353 () Bool)

(assert (=> bs!466166 m!2829353))

(assert (=> b!2459482 d!708181))

(declare-fun b!2459713 () Bool)

(declare-fun e!1560073 () Bool)

(declare-fun lt!880758 () Option!5707)

(assert (=> b!2459713 (= e!1560073 (not (isDefined!4533 lt!880758)))))

(declare-fun b!2459714 () Bool)

(declare-fun res!1042386 () Bool)

(declare-fun e!1560074 () Bool)

(assert (=> b!2459714 (=> (not res!1042386) (not e!1560074))))

(assert (=> b!2459714 (= res!1042386 (matchR!3347 (h!34004 l!9164) (_1!16637 (get!8855 lt!880758))))))

(declare-fun b!2459715 () Bool)

(declare-fun e!1560072 () Bool)

(assert (=> b!2459715 (= e!1560072 (matchR!3347 (generalisedConcat!333 (t!208678 l!9164)) s!9460))))

(declare-fun b!2459716 () Bool)

(declare-fun e!1560076 () Option!5707)

(declare-fun e!1560075 () Option!5707)

(assert (=> b!2459716 (= e!1560076 e!1560075)))

(declare-fun c!392573 () Bool)

(assert (=> b!2459716 (= c!392573 (is-Nil!28602 s!9460))))

(declare-fun b!2459717 () Bool)

(declare-fun lt!880757 () Unit!41935)

(declare-fun lt!880759 () Unit!41935)

(assert (=> b!2459717 (= lt!880757 lt!880759)))

(assert (=> b!2459717 (= (++!7120 (++!7120 Nil!28602 (Cons!28602 (h!34003 s!9460) Nil!28602)) (t!208677 s!9460)) s!9460)))

(assert (=> b!2459717 (= lt!880759 (lemmaMoveElementToOtherListKeepsConcatEq!713 Nil!28602 (h!34003 s!9460) (t!208677 s!9460) s!9460))))

(assert (=> b!2459717 (= e!1560075 (findConcatSeparation!815 (h!34004 l!9164) (generalisedConcat!333 (t!208678 l!9164)) (++!7120 Nil!28602 (Cons!28602 (h!34003 s!9460) Nil!28602)) (t!208677 s!9460) s!9460))))

(declare-fun b!2459718 () Bool)

(assert (=> b!2459718 (= e!1560076 (Some!5706 (tuple2!28193 Nil!28602 s!9460)))))

(declare-fun b!2459719 () Bool)

(declare-fun res!1042385 () Bool)

(assert (=> b!2459719 (=> (not res!1042385) (not e!1560074))))

(assert (=> b!2459719 (= res!1042385 (matchR!3347 (generalisedConcat!333 (t!208678 l!9164)) (_2!16637 (get!8855 lt!880758))))))

(declare-fun b!2459720 () Bool)

(assert (=> b!2459720 (= e!1560075 None!5706)))

(declare-fun b!2459721 () Bool)

(assert (=> b!2459721 (= e!1560074 (= (++!7120 (_1!16637 (get!8855 lt!880758)) (_2!16637 (get!8855 lt!880758))) s!9460))))

(declare-fun d!708183 () Bool)

(assert (=> d!708183 e!1560073))

(declare-fun res!1042388 () Bool)

(assert (=> d!708183 (=> res!1042388 e!1560073)))

(assert (=> d!708183 (= res!1042388 e!1560074)))

(declare-fun res!1042389 () Bool)

(assert (=> d!708183 (=> (not res!1042389) (not e!1560074))))

(assert (=> d!708183 (= res!1042389 (isDefined!4533 lt!880758))))

(assert (=> d!708183 (= lt!880758 e!1560076)))

(declare-fun c!392572 () Bool)

(assert (=> d!708183 (= c!392572 e!1560072)))

(declare-fun res!1042387 () Bool)

(assert (=> d!708183 (=> (not res!1042387) (not e!1560072))))

(assert (=> d!708183 (= res!1042387 (matchR!3347 (h!34004 l!9164) Nil!28602))))

(assert (=> d!708183 (validRegex!2918 (h!34004 l!9164))))

(assert (=> d!708183 (= (findConcatSeparation!815 (h!34004 l!9164) (generalisedConcat!333 (t!208678 l!9164)) Nil!28602 s!9460 s!9460) lt!880758)))

(assert (= (and d!708183 res!1042387) b!2459715))

(assert (= (and d!708183 c!392572) b!2459718))

(assert (= (and d!708183 (not c!392572)) b!2459716))

(assert (= (and b!2459716 c!392573) b!2459720))

(assert (= (and b!2459716 (not c!392573)) b!2459717))

(assert (= (and d!708183 res!1042389) b!2459714))

(assert (= (and b!2459714 res!1042386) b!2459719))

(assert (= (and b!2459719 res!1042385) b!2459721))

(assert (= (and d!708183 (not res!1042388)) b!2459713))

(assert (=> b!2459715 m!2829167))

(declare-fun m!2829375 () Bool)

(assert (=> b!2459715 m!2829375))

(declare-fun m!2829377 () Bool)

(assert (=> b!2459721 m!2829377))

(declare-fun m!2829379 () Bool)

(assert (=> b!2459721 m!2829379))

(declare-fun m!2829381 () Bool)

(assert (=> d!708183 m!2829381))

(declare-fun m!2829383 () Bool)

(assert (=> d!708183 m!2829383))

(declare-fun m!2829385 () Bool)

(assert (=> d!708183 m!2829385))

(assert (=> b!2459719 m!2829377))

(assert (=> b!2459719 m!2829167))

(declare-fun m!2829387 () Bool)

(assert (=> b!2459719 m!2829387))

(assert (=> b!2459713 m!2829381))

(assert (=> b!2459714 m!2829377))

(declare-fun m!2829389 () Bool)

(assert (=> b!2459714 m!2829389))

(assert (=> b!2459717 m!2829263))

(assert (=> b!2459717 m!2829263))

(assert (=> b!2459717 m!2829265))

(assert (=> b!2459717 m!2829267))

(assert (=> b!2459717 m!2829167))

(assert (=> b!2459717 m!2829263))

(declare-fun m!2829391 () Bool)

(assert (=> b!2459717 m!2829391))

(assert (=> b!2459482 d!708183))

(declare-fun bs!466167 () Bool)

(declare-fun d!708187 () Bool)

(assert (= bs!466167 (and d!708187 start!239744)))

(declare-fun lambda!93095 () Int)

(assert (=> bs!466167 (= lambda!93095 lambda!93088)))

(declare-fun bs!466168 () Bool)

(assert (= bs!466168 (and d!708187 d!708163)))

(assert (=> bs!466168 (= lambda!93095 lambda!93094)))

(declare-fun b!2459722 () Bool)

(declare-fun e!1560077 () Bool)

(declare-fun lt!880760 () Regex!7232)

(assert (=> b!2459722 (= e!1560077 (isConcat!238 lt!880760))))

(declare-fun b!2459723 () Bool)

(declare-fun e!1560081 () Regex!7232)

(assert (=> b!2459723 (= e!1560081 (Concat!11868 (h!34004 (t!208678 l!9164)) (generalisedConcat!333 (t!208678 (t!208678 l!9164)))))))

(declare-fun b!2459724 () Bool)

(assert (=> b!2459724 (= e!1560077 (= lt!880760 (head!5614 (t!208678 l!9164))))))

(declare-fun b!2459725 () Bool)

(declare-fun e!1560082 () Bool)

(declare-fun e!1560078 () Bool)

(assert (=> b!2459725 (= e!1560082 e!1560078)))

(declare-fun c!392574 () Bool)

(assert (=> b!2459725 (= c!392574 (isEmpty!16626 (t!208678 l!9164)))))

(declare-fun b!2459726 () Bool)

(assert (=> b!2459726 (= e!1560081 EmptyExpr!7232)))

(declare-fun b!2459728 () Bool)

(declare-fun e!1560079 () Regex!7232)

(assert (=> b!2459728 (= e!1560079 (h!34004 (t!208678 l!9164)))))

(declare-fun b!2459729 () Bool)

(assert (=> b!2459729 (= e!1560078 (isEmptyExpr!238 lt!880760))))

(declare-fun b!2459730 () Bool)

(assert (=> b!2459730 (= e!1560078 e!1560077)))

(declare-fun c!392577 () Bool)

(assert (=> b!2459730 (= c!392577 (isEmpty!16626 (tail!3887 (t!208678 l!9164))))))

(declare-fun b!2459731 () Bool)

(assert (=> b!2459731 (= e!1560079 e!1560081)))

(declare-fun c!392576 () Bool)

(assert (=> b!2459731 (= c!392576 (is-Cons!28603 (t!208678 l!9164)))))

(assert (=> d!708187 e!1560082))

(declare-fun res!1042391 () Bool)

(assert (=> d!708187 (=> (not res!1042391) (not e!1560082))))

(assert (=> d!708187 (= res!1042391 (validRegex!2918 lt!880760))))

(assert (=> d!708187 (= lt!880760 e!1560079)))

(declare-fun c!392575 () Bool)

(declare-fun e!1560080 () Bool)

(assert (=> d!708187 (= c!392575 e!1560080)))

(declare-fun res!1042390 () Bool)

(assert (=> d!708187 (=> (not res!1042390) (not e!1560080))))

(assert (=> d!708187 (= res!1042390 (is-Cons!28603 (t!208678 l!9164)))))

(assert (=> d!708187 (forall!5866 (t!208678 l!9164) lambda!93095)))

(assert (=> d!708187 (= (generalisedConcat!333 (t!208678 l!9164)) lt!880760)))

(declare-fun b!2459727 () Bool)

(assert (=> b!2459727 (= e!1560080 (isEmpty!16626 (t!208678 (t!208678 l!9164))))))

(assert (= (and d!708187 res!1042390) b!2459727))

(assert (= (and d!708187 c!392575) b!2459728))

(assert (= (and d!708187 (not c!392575)) b!2459731))

(assert (= (and b!2459731 c!392576) b!2459723))

(assert (= (and b!2459731 (not c!392576)) b!2459726))

(assert (= (and d!708187 res!1042391) b!2459725))

(assert (= (and b!2459725 c!392574) b!2459729))

(assert (= (and b!2459725 (not c!392574)) b!2459730))

(assert (= (and b!2459730 c!392577) b!2459724))

(assert (= (and b!2459730 (not c!392577)) b!2459722))

(declare-fun m!2829395 () Bool)

(assert (=> b!2459725 m!2829395))

(declare-fun m!2829397 () Bool)

(assert (=> b!2459730 m!2829397))

(assert (=> b!2459730 m!2829397))

(declare-fun m!2829399 () Bool)

(assert (=> b!2459730 m!2829399))

(declare-fun m!2829401 () Bool)

(assert (=> b!2459722 m!2829401))

(declare-fun m!2829403 () Bool)

(assert (=> b!2459729 m!2829403))

(declare-fun m!2829405 () Bool)

(assert (=> b!2459724 m!2829405))

(declare-fun m!2829407 () Bool)

(assert (=> b!2459727 m!2829407))

(declare-fun m!2829409 () Bool)

(assert (=> d!708187 m!2829409))

(declare-fun m!2829411 () Bool)

(assert (=> d!708187 m!2829411))

(declare-fun m!2829413 () Bool)

(assert (=> b!2459723 m!2829413))

(assert (=> b!2459482 d!708187))

(declare-fun call!151300 () Bool)

(declare-fun bm!151295 () Bool)

(assert (=> bm!151295 (= call!151300 (isEmpty!16627 (ite c!392522 s!9460 call!151274)))))

(declare-fun b!2459732 () Bool)

(declare-fun res!1042392 () Bool)

(declare-fun e!1560086 () Bool)

(assert (=> b!2459732 (=> (not res!1042392) (not e!1560086))))

(assert (=> b!2459732 (= res!1042392 (not call!151300))))

(declare-fun b!2459733 () Bool)

(declare-fun e!1560084 () Bool)

(declare-fun e!1560085 () Bool)

(assert (=> b!2459733 (= e!1560084 e!1560085)))

(declare-fun res!1042398 () Bool)

(assert (=> b!2459733 (=> res!1042398 e!1560085)))

(assert (=> b!2459733 (= res!1042398 call!151300)))

(declare-fun b!2459734 () Bool)

(declare-fun res!1042396 () Bool)

(assert (=> b!2459734 (=> res!1042396 e!1560085)))

(assert (=> b!2459734 (= res!1042396 (not (isEmpty!16627 (tail!3889 (ite c!392522 s!9460 call!151274)))))))

(declare-fun b!2459735 () Bool)

(declare-fun res!1042393 () Bool)

(declare-fun e!1560083 () Bool)

(assert (=> b!2459735 (=> res!1042393 e!1560083)))

(assert (=> b!2459735 (= res!1042393 e!1560086)))

(declare-fun res!1042397 () Bool)

(assert (=> b!2459735 (=> (not res!1042397) (not e!1560086))))

(declare-fun lt!880761 () Bool)

(assert (=> b!2459735 (= res!1042397 lt!880761)))

(declare-fun b!2459736 () Bool)

(declare-fun e!1560089 () Bool)

(declare-fun e!1560088 () Bool)

(assert (=> b!2459736 (= e!1560089 e!1560088)))

(declare-fun c!392578 () Bool)

(assert (=> b!2459736 (= c!392578 (is-EmptyLang!7232 (ite c!392522 lt!880666 (Concat!11868 lt!880677 EmptyExpr!7232))))))

(declare-fun b!2459737 () Bool)

(declare-fun e!1560087 () Bool)

(assert (=> b!2459737 (= e!1560087 (nullable!2219 (ite c!392522 lt!880666 (Concat!11868 lt!880677 EmptyExpr!7232))))))

(declare-fun b!2459738 () Bool)

(assert (=> b!2459738 (= e!1560086 (= (head!5616 (ite c!392522 s!9460 call!151274)) (c!392523 (ite c!392522 lt!880666 (Concat!11868 lt!880677 EmptyExpr!7232)))))))

(declare-fun d!708191 () Bool)

(assert (=> d!708191 e!1560089))

(declare-fun c!392580 () Bool)

(assert (=> d!708191 (= c!392580 (is-EmptyExpr!7232 (ite c!392522 lt!880666 (Concat!11868 lt!880677 EmptyExpr!7232))))))

(assert (=> d!708191 (= lt!880761 e!1560087)))

(declare-fun c!392579 () Bool)

(assert (=> d!708191 (= c!392579 (isEmpty!16627 (ite c!392522 s!9460 call!151274)))))

(assert (=> d!708191 (validRegex!2918 (ite c!392522 lt!880666 (Concat!11868 lt!880677 EmptyExpr!7232)))))

(assert (=> d!708191 (= (matchR!3347 (ite c!392522 lt!880666 (Concat!11868 lt!880677 EmptyExpr!7232)) (ite c!392522 s!9460 call!151274)) lt!880761)))

(declare-fun b!2459739 () Bool)

(declare-fun res!1042394 () Bool)

(assert (=> b!2459739 (=> (not res!1042394) (not e!1560086))))

(assert (=> b!2459739 (= res!1042394 (isEmpty!16627 (tail!3889 (ite c!392522 s!9460 call!151274))))))

(declare-fun b!2459740 () Bool)

(assert (=> b!2459740 (= e!1560085 (not (= (head!5616 (ite c!392522 s!9460 call!151274)) (c!392523 (ite c!392522 lt!880666 (Concat!11868 lt!880677 EmptyExpr!7232))))))))

(declare-fun b!2459741 () Bool)

(assert (=> b!2459741 (= e!1560089 (= lt!880761 call!151300))))

(declare-fun b!2459742 () Bool)

(declare-fun res!1042399 () Bool)

(assert (=> b!2459742 (=> res!1042399 e!1560083)))

(assert (=> b!2459742 (= res!1042399 (not (is-ElementMatch!7232 (ite c!392522 lt!880666 (Concat!11868 lt!880677 EmptyExpr!7232)))))))

(assert (=> b!2459742 (= e!1560088 e!1560083)))

(declare-fun b!2459743 () Bool)

(assert (=> b!2459743 (= e!1560083 e!1560084)))

(declare-fun res!1042395 () Bool)

(assert (=> b!2459743 (=> (not res!1042395) (not e!1560084))))

(assert (=> b!2459743 (= res!1042395 (not lt!880761))))

(declare-fun b!2459744 () Bool)

(assert (=> b!2459744 (= e!1560087 (matchR!3347 (derivativeStep!1873 (ite c!392522 lt!880666 (Concat!11868 lt!880677 EmptyExpr!7232)) (head!5616 (ite c!392522 s!9460 call!151274))) (tail!3889 (ite c!392522 s!9460 call!151274))))))

(declare-fun b!2459745 () Bool)

(assert (=> b!2459745 (= e!1560088 (not lt!880761))))

(assert (= (and d!708191 c!392579) b!2459737))

(assert (= (and d!708191 (not c!392579)) b!2459744))

(assert (= (and d!708191 c!392580) b!2459741))

(assert (= (and d!708191 (not c!392580)) b!2459736))

(assert (= (and b!2459736 c!392578) b!2459745))

(assert (= (and b!2459736 (not c!392578)) b!2459742))

(assert (= (and b!2459742 (not res!1042399)) b!2459735))

(assert (= (and b!2459735 res!1042397) b!2459732))

(assert (= (and b!2459732 res!1042392) b!2459739))

(assert (= (and b!2459739 res!1042394) b!2459738))

(assert (= (and b!2459735 (not res!1042393)) b!2459743))

(assert (= (and b!2459743 res!1042395) b!2459733))

(assert (= (and b!2459733 (not res!1042398)) b!2459734))

(assert (= (and b!2459734 (not res!1042396)) b!2459740))

(assert (= (or b!2459741 b!2459732 b!2459733) bm!151295))

(declare-fun m!2829415 () Bool)

(assert (=> b!2459739 m!2829415))

(assert (=> b!2459739 m!2829415))

(declare-fun m!2829417 () Bool)

(assert (=> b!2459739 m!2829417))

(assert (=> b!2459734 m!2829415))

(assert (=> b!2459734 m!2829415))

(assert (=> b!2459734 m!2829417))

(declare-fun m!2829419 () Bool)

(assert (=> b!2459744 m!2829419))

(assert (=> b!2459744 m!2829419))

(declare-fun m!2829421 () Bool)

(assert (=> b!2459744 m!2829421))

(assert (=> b!2459744 m!2829415))

(assert (=> b!2459744 m!2829421))

(assert (=> b!2459744 m!2829415))

(declare-fun m!2829423 () Bool)

(assert (=> b!2459744 m!2829423))

(declare-fun m!2829425 () Bool)

(assert (=> d!708191 m!2829425))

(declare-fun m!2829427 () Bool)

(assert (=> d!708191 m!2829427))

(assert (=> bm!151295 m!2829425))

(assert (=> b!2459738 m!2829419))

(declare-fun m!2829429 () Bool)

(assert (=> b!2459737 m!2829429))

(assert (=> b!2459740 m!2829419))

(assert (=> bm!151273 d!708191))

(declare-fun d!708193 () Bool)

(assert (=> d!708193 (= (isEmpty!16627 s!9460) (is-Nil!28602 s!9460))))

(assert (=> b!2459487 d!708193))

(declare-fun bs!466170 () Bool)

(declare-fun d!708195 () Bool)

(assert (= bs!466170 (and d!708195 start!239744)))

(declare-fun lambda!93096 () Int)

(assert (=> bs!466170 (= lambda!93096 lambda!93088)))

(declare-fun bs!466171 () Bool)

(assert (= bs!466171 (and d!708195 d!708163)))

(assert (=> bs!466171 (= lambda!93096 lambda!93094)))

(declare-fun bs!466172 () Bool)

(assert (= bs!466172 (and d!708195 d!708187)))

(assert (=> bs!466172 (= lambda!93096 lambda!93095)))

(declare-fun b!2459746 () Bool)

(declare-fun e!1560090 () Bool)

(declare-fun lt!880762 () Regex!7232)

(assert (=> b!2459746 (= e!1560090 (isConcat!238 lt!880762))))

(declare-fun b!2459747 () Bool)

(declare-fun e!1560094 () Regex!7232)

(assert (=> b!2459747 (= e!1560094 (Concat!11868 (h!34004 l!9164) (generalisedConcat!333 (t!208678 l!9164))))))

(declare-fun b!2459748 () Bool)

(assert (=> b!2459748 (= e!1560090 (= lt!880762 (head!5614 l!9164)))))

(declare-fun b!2459749 () Bool)

(declare-fun e!1560095 () Bool)

(declare-fun e!1560091 () Bool)

(assert (=> b!2459749 (= e!1560095 e!1560091)))

(declare-fun c!392581 () Bool)

(assert (=> b!2459749 (= c!392581 (isEmpty!16626 l!9164))))

(declare-fun b!2459750 () Bool)

(assert (=> b!2459750 (= e!1560094 EmptyExpr!7232)))

(declare-fun b!2459752 () Bool)

(declare-fun e!1560092 () Regex!7232)

(assert (=> b!2459752 (= e!1560092 (h!34004 l!9164))))

(declare-fun b!2459753 () Bool)

(assert (=> b!2459753 (= e!1560091 (isEmptyExpr!238 lt!880762))))

(declare-fun b!2459754 () Bool)

(assert (=> b!2459754 (= e!1560091 e!1560090)))

(declare-fun c!392584 () Bool)

(assert (=> b!2459754 (= c!392584 (isEmpty!16626 (tail!3887 l!9164)))))

(declare-fun b!2459755 () Bool)

(assert (=> b!2459755 (= e!1560092 e!1560094)))

(declare-fun c!392583 () Bool)

(assert (=> b!2459755 (= c!392583 (is-Cons!28603 l!9164))))

(assert (=> d!708195 e!1560095))

(declare-fun res!1042401 () Bool)

(assert (=> d!708195 (=> (not res!1042401) (not e!1560095))))

(assert (=> d!708195 (= res!1042401 (validRegex!2918 lt!880762))))

(assert (=> d!708195 (= lt!880762 e!1560092)))

(declare-fun c!392582 () Bool)

(declare-fun e!1560093 () Bool)

(assert (=> d!708195 (= c!392582 e!1560093)))

(declare-fun res!1042400 () Bool)

(assert (=> d!708195 (=> (not res!1042400) (not e!1560093))))

(assert (=> d!708195 (= res!1042400 (is-Cons!28603 l!9164))))

(assert (=> d!708195 (forall!5866 l!9164 lambda!93096)))

(assert (=> d!708195 (= (generalisedConcat!333 l!9164) lt!880762)))

(declare-fun b!2459751 () Bool)

(assert (=> b!2459751 (= e!1560093 (isEmpty!16626 (t!208678 l!9164)))))

(assert (= (and d!708195 res!1042400) b!2459751))

(assert (= (and d!708195 c!392582) b!2459752))

(assert (= (and d!708195 (not c!392582)) b!2459755))

(assert (= (and b!2459755 c!392583) b!2459747))

(assert (= (and b!2459755 (not c!392583)) b!2459750))

(assert (= (and d!708195 res!1042401) b!2459749))

(assert (= (and b!2459749 c!392581) b!2459753))

(assert (= (and b!2459749 (not c!392581)) b!2459754))

(assert (= (and b!2459754 c!392584) b!2459748))

(assert (= (and b!2459754 (not c!392584)) b!2459746))

(assert (=> b!2459749 m!2829143))

(assert (=> b!2459754 m!2829147))

(assert (=> b!2459754 m!2829147))

(declare-fun m!2829431 () Bool)

(assert (=> b!2459754 m!2829431))

(declare-fun m!2829433 () Bool)

(assert (=> b!2459746 m!2829433))

(declare-fun m!2829435 () Bool)

(assert (=> b!2459753 m!2829435))

(assert (=> b!2459748 m!2829191))

(assert (=> b!2459751 m!2829395))

(declare-fun m!2829437 () Bool)

(assert (=> d!708195 m!2829437))

(declare-fun m!2829439 () Bool)

(assert (=> d!708195 m!2829439))

(assert (=> b!2459747 m!2829167))

(assert (=> b!2459480 d!708195))

(declare-fun d!708197 () Bool)

(assert (=> d!708197 (matchR!3347 (Concat!11868 lt!880677 EmptyExpr!7232) (++!7120 (_1!16637 lt!880669) (_2!16637 lt!880669)))))

(declare-fun lt!880767 () Unit!41935)

(declare-fun choose!14553 (Regex!7232 Regex!7232 List!28700 List!28700 List!28700) Unit!41935)

(assert (=> d!708197 (= lt!880767 (choose!14553 lt!880677 EmptyExpr!7232 (_1!16637 lt!880669) (_2!16637 lt!880669) s!9460))))

(assert (=> d!708197 (validRegex!2918 lt!880677)))

(assert (=> d!708197 (= (lemmaFindSeparationIsDefinedThenConcatMatches!105 lt!880677 EmptyExpr!7232 (_1!16637 lt!880669) (_2!16637 lt!880669) s!9460) lt!880767)))

(declare-fun bs!466173 () Bool)

(assert (= bs!466173 d!708197))

(declare-fun m!2829441 () Bool)

(assert (=> bs!466173 m!2829441))

(assert (=> bs!466173 m!2829441))

(declare-fun m!2829443 () Bool)

(assert (=> bs!466173 m!2829443))

(declare-fun m!2829445 () Bool)

(assert (=> bs!466173 m!2829445))

(assert (=> bs!466173 m!2829257))

(assert (=> b!2459486 d!708197))

(declare-fun d!708199 () Bool)

(assert (=> d!708199 (= (get!8855 lt!880671) (v!31114 lt!880671))))

(assert (=> b!2459486 d!708199))

(declare-fun bm!151296 () Bool)

(declare-fun call!151301 () Bool)

(assert (=> bm!151296 (= call!151301 (isEmpty!16627 s!9460))))

(declare-fun b!2459758 () Bool)

(declare-fun res!1042404 () Bool)

(declare-fun e!1560101 () Bool)

(assert (=> b!2459758 (=> (not res!1042404) (not e!1560101))))

(assert (=> b!2459758 (= res!1042404 (not call!151301))))

(declare-fun b!2459759 () Bool)

(declare-fun e!1560099 () Bool)

(declare-fun e!1560100 () Bool)

(assert (=> b!2459759 (= e!1560099 e!1560100)))

(declare-fun res!1042410 () Bool)

(assert (=> b!2459759 (=> res!1042410 e!1560100)))

(assert (=> b!2459759 (= res!1042410 call!151301)))

(declare-fun b!2459760 () Bool)

(declare-fun res!1042408 () Bool)

(assert (=> b!2459760 (=> res!1042408 e!1560100)))

(assert (=> b!2459760 (= res!1042408 (not (isEmpty!16627 (tail!3889 s!9460))))))

(declare-fun b!2459761 () Bool)

(declare-fun res!1042405 () Bool)

(declare-fun e!1560098 () Bool)

(assert (=> b!2459761 (=> res!1042405 e!1560098)))

(assert (=> b!2459761 (= res!1042405 e!1560101)))

(declare-fun res!1042409 () Bool)

(assert (=> b!2459761 (=> (not res!1042409) (not e!1560101))))

(declare-fun lt!880768 () Bool)

(assert (=> b!2459761 (= res!1042409 lt!880768)))

(declare-fun b!2459762 () Bool)

(declare-fun e!1560104 () Bool)

(declare-fun e!1560103 () Bool)

(assert (=> b!2459762 (= e!1560104 e!1560103)))

(declare-fun c!392585 () Bool)

(assert (=> b!2459762 (= c!392585 (is-EmptyLang!7232 lt!880677))))

(declare-fun b!2459763 () Bool)

(declare-fun e!1560102 () Bool)

(assert (=> b!2459763 (= e!1560102 (nullable!2219 lt!880677))))

(declare-fun b!2459764 () Bool)

(assert (=> b!2459764 (= e!1560101 (= (head!5616 s!9460) (c!392523 lt!880677)))))

(declare-fun d!708201 () Bool)

(assert (=> d!708201 e!1560104))

(declare-fun c!392587 () Bool)

(assert (=> d!708201 (= c!392587 (is-EmptyExpr!7232 lt!880677))))

(assert (=> d!708201 (= lt!880768 e!1560102)))

(declare-fun c!392586 () Bool)

(assert (=> d!708201 (= c!392586 (isEmpty!16627 s!9460))))

(assert (=> d!708201 (validRegex!2918 lt!880677)))

(assert (=> d!708201 (= (matchR!3347 lt!880677 s!9460) lt!880768)))

(declare-fun b!2459765 () Bool)

(declare-fun res!1042406 () Bool)

(assert (=> b!2459765 (=> (not res!1042406) (not e!1560101))))

(assert (=> b!2459765 (= res!1042406 (isEmpty!16627 (tail!3889 s!9460)))))

(declare-fun b!2459766 () Bool)

(assert (=> b!2459766 (= e!1560100 (not (= (head!5616 s!9460) (c!392523 lt!880677))))))

(declare-fun b!2459767 () Bool)

(assert (=> b!2459767 (= e!1560104 (= lt!880768 call!151301))))

(declare-fun b!2459768 () Bool)

(declare-fun res!1042411 () Bool)

(assert (=> b!2459768 (=> res!1042411 e!1560098)))

(assert (=> b!2459768 (= res!1042411 (not (is-ElementMatch!7232 lt!880677)))))

(assert (=> b!2459768 (= e!1560103 e!1560098)))

(declare-fun b!2459769 () Bool)

(assert (=> b!2459769 (= e!1560098 e!1560099)))

(declare-fun res!1042407 () Bool)

(assert (=> b!2459769 (=> (not res!1042407) (not e!1560099))))

(assert (=> b!2459769 (= res!1042407 (not lt!880768))))

(declare-fun b!2459770 () Bool)

(assert (=> b!2459770 (= e!1560102 (matchR!3347 (derivativeStep!1873 lt!880677 (head!5616 s!9460)) (tail!3889 s!9460)))))

(declare-fun b!2459771 () Bool)

(assert (=> b!2459771 (= e!1560103 (not lt!880768))))

(assert (= (and d!708201 c!392586) b!2459763))

(assert (= (and d!708201 (not c!392586)) b!2459770))

(assert (= (and d!708201 c!392587) b!2459767))

(assert (= (and d!708201 (not c!392587)) b!2459762))

(assert (= (and b!2459762 c!392585) b!2459771))

(assert (= (and b!2459762 (not c!392585)) b!2459768))

(assert (= (and b!2459768 (not res!1042411)) b!2459761))

(assert (= (and b!2459761 res!1042409) b!2459758))

(assert (= (and b!2459758 res!1042404) b!2459765))

(assert (= (and b!2459765 res!1042406) b!2459764))

(assert (= (and b!2459761 (not res!1042405)) b!2459769))

(assert (= (and b!2459769 res!1042407) b!2459759))

(assert (= (and b!2459759 (not res!1042410)) b!2459760))

(assert (= (and b!2459760 (not res!1042408)) b!2459766))

(assert (= (or b!2459767 b!2459758 b!2459759) bm!151296))

(declare-fun m!2829447 () Bool)

(assert (=> b!2459765 m!2829447))

(assert (=> b!2459765 m!2829447))

(declare-fun m!2829449 () Bool)

(assert (=> b!2459765 m!2829449))

(assert (=> b!2459760 m!2829447))

(assert (=> b!2459760 m!2829447))

(assert (=> b!2459760 m!2829449))

(declare-fun m!2829451 () Bool)

(assert (=> b!2459770 m!2829451))

(assert (=> b!2459770 m!2829451))

(declare-fun m!2829453 () Bool)

(assert (=> b!2459770 m!2829453))

(assert (=> b!2459770 m!2829447))

(assert (=> b!2459770 m!2829453))

(assert (=> b!2459770 m!2829447))

(declare-fun m!2829455 () Bool)

(assert (=> b!2459770 m!2829455))

(assert (=> d!708201 m!2829193))

(assert (=> d!708201 m!2829257))

(assert (=> bm!151296 m!2829193))

(assert (=> b!2459764 m!2829451))

(declare-fun m!2829457 () Bool)

(assert (=> b!2459763 m!2829457))

(assert (=> b!2459766 m!2829451))

(assert (=> b!2459478 d!708201))

(declare-fun d!708203 () Bool)

(assert (=> d!708203 (= (head!5614 l!9164) (h!34004 l!9164))))

(assert (=> b!2459478 d!708203))

(declare-fun d!708205 () Bool)

(declare-fun res!1042417 () Bool)

(declare-fun e!1560110 () Bool)

(assert (=> d!708205 (=> res!1042417 e!1560110)))

(assert (=> d!708205 (= res!1042417 (is-Nil!28603 l!9164))))

(assert (=> d!708205 (= (forall!5866 l!9164 lambda!93088) e!1560110)))

(declare-fun b!2459777 () Bool)

(declare-fun e!1560111 () Bool)

(assert (=> b!2459777 (= e!1560110 e!1560111)))

(declare-fun res!1042418 () Bool)

(assert (=> b!2459777 (=> (not res!1042418) (not e!1560111))))

(declare-fun dynLambda!12275 (Int Regex!7232) Bool)

(assert (=> b!2459777 (= res!1042418 (dynLambda!12275 lambda!93088 (h!34004 l!9164)))))

(declare-fun b!2459778 () Bool)

(assert (=> b!2459778 (= e!1560111 (forall!5866 (t!208678 l!9164) lambda!93088))))

(assert (= (and d!708205 (not res!1042417)) b!2459777))

(assert (= (and b!2459777 res!1042418) b!2459778))

(declare-fun b_lambda!75223 () Bool)

(assert (=> (not b_lambda!75223) (not b!2459777)))

(declare-fun m!2829467 () Bool)

(assert (=> b!2459777 m!2829467))

(declare-fun m!2829469 () Bool)

(assert (=> b!2459778 m!2829469))

(assert (=> start!239744 d!708205))

(declare-fun d!708209 () Bool)

(assert (=> d!708209 (= (isEmpty!16626 lt!880676) (is-Nil!28603 lt!880676))))

(assert (=> b!2459494 d!708209))

(declare-fun d!708211 () Bool)

(assert (=> d!708211 (= (tail!3887 l!9164) (t!208678 l!9164))))

(assert (=> b!2459494 d!708211))

(declare-fun b!2459842 () Bool)

(assert (=> b!2459842 true))

(assert (=> b!2459842 true))

(declare-fun bs!466174 () Bool)

(declare-fun b!2459843 () Bool)

(assert (= bs!466174 (and b!2459843 b!2459842)))

(declare-fun lambda!93102 () Int)

(declare-fun lambda!93101 () Int)

(assert (=> bs!466174 (not (= lambda!93102 lambda!93101))))

(assert (=> b!2459843 true))

(assert (=> b!2459843 true))

(declare-fun b!2459839 () Bool)

(declare-fun e!1560147 () Bool)

(declare-fun e!1560148 () Bool)

(assert (=> b!2459839 (= e!1560147 e!1560148)))

(declare-fun res!1042451 () Bool)

(assert (=> b!2459839 (= res!1042451 (not (is-EmptyLang!7232 r!13927)))))

(assert (=> b!2459839 (=> (not res!1042451) (not e!1560148))))

(declare-fun b!2459840 () Bool)

(declare-fun e!1560145 () Bool)

(declare-fun e!1560149 () Bool)

(assert (=> b!2459840 (= e!1560145 e!1560149)))

(declare-fun res!1042453 () Bool)

(assert (=> b!2459840 (= res!1042453 (matchRSpec!1079 (regOne!14977 r!13927) s!9460))))

(assert (=> b!2459840 (=> res!1042453 e!1560149)))

(declare-fun b!2459841 () Bool)

(declare-fun call!151308 () Bool)

(assert (=> b!2459841 (= e!1560147 call!151308)))

(declare-fun e!1560150 () Bool)

(declare-fun call!151309 () Bool)

(assert (=> b!2459842 (= e!1560150 call!151309)))

(declare-fun bm!151301 () Bool)

(assert (=> bm!151301 (= call!151308 (isEmpty!16627 s!9460))))

(declare-fun c!392602 () Bool)

(declare-fun bm!151302 () Bool)

(declare-fun Exists!1245 (Int) Bool)

(assert (=> bm!151302 (= call!151309 (Exists!1245 (ite c!392602 lambda!93101 lambda!93102)))))

(declare-fun b!2459844 () Bool)

(declare-fun e!1560146 () Bool)

(assert (=> b!2459844 (= e!1560145 e!1560146)))

(assert (=> b!2459844 (= c!392602 (is-Star!7232 r!13927))))

(declare-fun b!2459845 () Bool)

(declare-fun e!1560144 () Bool)

(assert (=> b!2459845 (= e!1560144 (= s!9460 (Cons!28602 (c!392523 r!13927) Nil!28602)))))

(declare-fun b!2459846 () Bool)

(declare-fun c!392604 () Bool)

(assert (=> b!2459846 (= c!392604 (is-Union!7232 r!13927))))

(assert (=> b!2459846 (= e!1560144 e!1560145)))

(declare-fun b!2459847 () Bool)

(declare-fun res!1042452 () Bool)

(assert (=> b!2459847 (=> res!1042452 e!1560150)))

(assert (=> b!2459847 (= res!1042452 call!151308)))

(assert (=> b!2459847 (= e!1560146 e!1560150)))

(assert (=> b!2459843 (= e!1560146 call!151309)))

(declare-fun d!708213 () Bool)

(declare-fun c!392605 () Bool)

(assert (=> d!708213 (= c!392605 (is-EmptyExpr!7232 r!13927))))

(assert (=> d!708213 (= (matchRSpec!1079 r!13927 s!9460) e!1560147)))

(declare-fun b!2459848 () Bool)

(declare-fun c!392603 () Bool)

(assert (=> b!2459848 (= c!392603 (is-ElementMatch!7232 r!13927))))

(assert (=> b!2459848 (= e!1560148 e!1560144)))

(declare-fun b!2459849 () Bool)

(assert (=> b!2459849 (= e!1560149 (matchRSpec!1079 (regTwo!14977 r!13927) s!9460))))

(assert (= (and d!708213 c!392605) b!2459841))

(assert (= (and d!708213 (not c!392605)) b!2459839))

(assert (= (and b!2459839 res!1042451) b!2459848))

(assert (= (and b!2459848 c!392603) b!2459845))

(assert (= (and b!2459848 (not c!392603)) b!2459846))

(assert (= (and b!2459846 c!392604) b!2459840))

(assert (= (and b!2459846 (not c!392604)) b!2459844))

(assert (= (and b!2459840 (not res!1042453)) b!2459849))

(assert (= (and b!2459844 c!392602) b!2459847))

(assert (= (and b!2459844 (not c!392602)) b!2459843))

(assert (= (and b!2459847 (not res!1042452)) b!2459842))

(assert (= (or b!2459842 b!2459843) bm!151302))

(assert (= (or b!2459841 b!2459847) bm!151301))

(declare-fun m!2829471 () Bool)

(assert (=> b!2459840 m!2829471))

(assert (=> bm!151301 m!2829193))

(declare-fun m!2829473 () Bool)

(assert (=> bm!151302 m!2829473))

(declare-fun m!2829475 () Bool)

(assert (=> b!2459849 m!2829475))

(assert (=> b!2459484 d!708213))

(declare-fun bm!151305 () Bool)

(declare-fun call!151310 () Bool)

(assert (=> bm!151305 (= call!151310 (isEmpty!16627 s!9460))))

(declare-fun b!2459854 () Bool)

(declare-fun res!1042454 () Bool)

(declare-fun e!1560154 () Bool)

(assert (=> b!2459854 (=> (not res!1042454) (not e!1560154))))

(assert (=> b!2459854 (= res!1042454 (not call!151310))))

(declare-fun b!2459855 () Bool)

(declare-fun e!1560152 () Bool)

(declare-fun e!1560153 () Bool)

(assert (=> b!2459855 (= e!1560152 e!1560153)))

(declare-fun res!1042460 () Bool)

(assert (=> b!2459855 (=> res!1042460 e!1560153)))

(assert (=> b!2459855 (= res!1042460 call!151310)))

(declare-fun b!2459856 () Bool)

(declare-fun res!1042458 () Bool)

(assert (=> b!2459856 (=> res!1042458 e!1560153)))

(assert (=> b!2459856 (= res!1042458 (not (isEmpty!16627 (tail!3889 s!9460))))))

(declare-fun b!2459857 () Bool)

(declare-fun res!1042455 () Bool)

(declare-fun e!1560151 () Bool)

(assert (=> b!2459857 (=> res!1042455 e!1560151)))

(assert (=> b!2459857 (= res!1042455 e!1560154)))

(declare-fun res!1042459 () Bool)

(assert (=> b!2459857 (=> (not res!1042459) (not e!1560154))))

(declare-fun lt!880772 () Bool)

(assert (=> b!2459857 (= res!1042459 lt!880772)))

(declare-fun b!2459858 () Bool)

(declare-fun e!1560157 () Bool)

(declare-fun e!1560156 () Bool)

(assert (=> b!2459858 (= e!1560157 e!1560156)))

(declare-fun c!392606 () Bool)

(assert (=> b!2459858 (= c!392606 (is-EmptyLang!7232 r!13927))))

(declare-fun b!2459859 () Bool)

(declare-fun e!1560155 () Bool)

(assert (=> b!2459859 (= e!1560155 (nullable!2219 r!13927))))

(declare-fun b!2459860 () Bool)

(assert (=> b!2459860 (= e!1560154 (= (head!5616 s!9460) (c!392523 r!13927)))))

(declare-fun d!708215 () Bool)

(assert (=> d!708215 e!1560157))

(declare-fun c!392608 () Bool)

(assert (=> d!708215 (= c!392608 (is-EmptyExpr!7232 r!13927))))

(assert (=> d!708215 (= lt!880772 e!1560155)))

(declare-fun c!392607 () Bool)

(assert (=> d!708215 (= c!392607 (isEmpty!16627 s!9460))))

(assert (=> d!708215 (validRegex!2918 r!13927)))

(assert (=> d!708215 (= (matchR!3347 r!13927 s!9460) lt!880772)))

(declare-fun b!2459861 () Bool)

(declare-fun res!1042456 () Bool)

(assert (=> b!2459861 (=> (not res!1042456) (not e!1560154))))

(assert (=> b!2459861 (= res!1042456 (isEmpty!16627 (tail!3889 s!9460)))))

(declare-fun b!2459862 () Bool)

(assert (=> b!2459862 (= e!1560153 (not (= (head!5616 s!9460) (c!392523 r!13927))))))

(declare-fun b!2459863 () Bool)

(assert (=> b!2459863 (= e!1560157 (= lt!880772 call!151310))))

(declare-fun b!2459864 () Bool)

(declare-fun res!1042461 () Bool)

(assert (=> b!2459864 (=> res!1042461 e!1560151)))

(assert (=> b!2459864 (= res!1042461 (not (is-ElementMatch!7232 r!13927)))))

(assert (=> b!2459864 (= e!1560156 e!1560151)))

(declare-fun b!2459865 () Bool)

(assert (=> b!2459865 (= e!1560151 e!1560152)))

(declare-fun res!1042457 () Bool)

(assert (=> b!2459865 (=> (not res!1042457) (not e!1560152))))

(assert (=> b!2459865 (= res!1042457 (not lt!880772))))

(declare-fun b!2459866 () Bool)

(assert (=> b!2459866 (= e!1560155 (matchR!3347 (derivativeStep!1873 r!13927 (head!5616 s!9460)) (tail!3889 s!9460)))))

(declare-fun b!2459867 () Bool)

(assert (=> b!2459867 (= e!1560156 (not lt!880772))))

(assert (= (and d!708215 c!392607) b!2459859))

(assert (= (and d!708215 (not c!392607)) b!2459866))

(assert (= (and d!708215 c!392608) b!2459863))

(assert (= (and d!708215 (not c!392608)) b!2459858))

(assert (= (and b!2459858 c!392606) b!2459867))

(assert (= (and b!2459858 (not c!392606)) b!2459864))

(assert (= (and b!2459864 (not res!1042461)) b!2459857))

(assert (= (and b!2459857 res!1042459) b!2459854))

(assert (= (and b!2459854 res!1042454) b!2459861))

(assert (= (and b!2459861 res!1042456) b!2459860))

(assert (= (and b!2459857 (not res!1042455)) b!2459865))

(assert (= (and b!2459865 res!1042457) b!2459855))

(assert (= (and b!2459855 (not res!1042460)) b!2459856))

(assert (= (and b!2459856 (not res!1042458)) b!2459862))

(assert (= (or b!2459863 b!2459854 b!2459855) bm!151305))

(assert (=> b!2459861 m!2829447))

(assert (=> b!2459861 m!2829447))

(assert (=> b!2459861 m!2829449))

(assert (=> b!2459856 m!2829447))

(assert (=> b!2459856 m!2829447))

(assert (=> b!2459856 m!2829449))

(assert (=> b!2459866 m!2829451))

(assert (=> b!2459866 m!2829451))

(declare-fun m!2829477 () Bool)

(assert (=> b!2459866 m!2829477))

(assert (=> b!2459866 m!2829447))

(assert (=> b!2459866 m!2829477))

(assert (=> b!2459866 m!2829447))

(declare-fun m!2829479 () Bool)

(assert (=> b!2459866 m!2829479))

(assert (=> d!708215 m!2829193))

(declare-fun m!2829481 () Bool)

(assert (=> d!708215 m!2829481))

(assert (=> bm!151305 m!2829193))

(assert (=> b!2459860 m!2829451))

(declare-fun m!2829483 () Bool)

(assert (=> b!2459859 m!2829483))

(assert (=> b!2459862 m!2829451))

(assert (=> b!2459484 d!708215))

(declare-fun d!708217 () Bool)

(assert (=> d!708217 (= (matchR!3347 r!13927 s!9460) (matchRSpec!1079 r!13927 s!9460))))

(declare-fun lt!880775 () Unit!41935)

(declare-fun choose!14554 (Regex!7232 List!28700) Unit!41935)

(assert (=> d!708217 (= lt!880775 (choose!14554 r!13927 s!9460))))

(assert (=> d!708217 (validRegex!2918 r!13927)))

(assert (=> d!708217 (= (mainMatchTheorem!1079 r!13927 s!9460) lt!880775)))

(declare-fun bs!466175 () Bool)

(assert (= bs!466175 d!708217))

(assert (=> bs!466175 m!2829151))

(assert (=> bs!466175 m!2829149))

(declare-fun m!2829485 () Bool)

(assert (=> bs!466175 m!2829485))

(assert (=> bs!466175 m!2829481))

(assert (=> b!2459484 d!708217))

(declare-fun b!2459872 () Bool)

(declare-fun e!1560160 () Bool)

(declare-fun tp!783116 () Bool)

(assert (=> b!2459872 (= e!1560160 (and tp_is_empty!11877 tp!783116))))

(assert (=> b!2459493 (= tp!783083 e!1560160)))

(assert (= (and b!2459493 (is-Cons!28602 (t!208677 s!9460))) b!2459872))

(declare-fun b!2459896 () Bool)

(declare-fun e!1560170 () Bool)

(declare-fun tp!783131 () Bool)

(assert (=> b!2459896 (= e!1560170 tp!783131)))

(assert (=> b!2459492 (= tp!783086 e!1560170)))

(declare-fun b!2459892 () Bool)

(assert (=> b!2459892 (= e!1560170 tp_is_empty!11877)))

(declare-fun b!2459898 () Bool)

(declare-fun tp!783128 () Bool)

(declare-fun tp!783127 () Bool)

(assert (=> b!2459898 (= e!1560170 (and tp!783128 tp!783127))))

(declare-fun b!2459894 () Bool)

(declare-fun tp!783130 () Bool)

(declare-fun tp!783129 () Bool)

(assert (=> b!2459894 (= e!1560170 (and tp!783130 tp!783129))))

(assert (= (and b!2459492 (is-ElementMatch!7232 (reg!7561 r!13927))) b!2459892))

(assert (= (and b!2459492 (is-Concat!11868 (reg!7561 r!13927))) b!2459894))

(assert (= (and b!2459492 (is-Star!7232 (reg!7561 r!13927))) b!2459896))

(assert (= (and b!2459492 (is-Union!7232 (reg!7561 r!13927))) b!2459898))

(declare-fun b!2459903 () Bool)

(declare-fun e!1560171 () Bool)

(declare-fun tp!783136 () Bool)

(assert (=> b!2459903 (= e!1560171 tp!783136)))

(assert (=> b!2459496 (= tp!783085 e!1560171)))

(declare-fun b!2459901 () Bool)

(assert (=> b!2459901 (= e!1560171 tp_is_empty!11877)))

(declare-fun b!2459904 () Bool)

(declare-fun tp!783133 () Bool)

(declare-fun tp!783132 () Bool)

(assert (=> b!2459904 (= e!1560171 (and tp!783133 tp!783132))))

(declare-fun b!2459902 () Bool)

(declare-fun tp!783135 () Bool)

(declare-fun tp!783134 () Bool)

(assert (=> b!2459902 (= e!1560171 (and tp!783135 tp!783134))))

(assert (= (and b!2459496 (is-ElementMatch!7232 (regOne!14977 r!13927))) b!2459901))

(assert (= (and b!2459496 (is-Concat!11868 (regOne!14977 r!13927))) b!2459902))

(assert (= (and b!2459496 (is-Star!7232 (regOne!14977 r!13927))) b!2459903))

(assert (= (and b!2459496 (is-Union!7232 (regOne!14977 r!13927))) b!2459904))

(declare-fun b!2459907 () Bool)

(declare-fun e!1560172 () Bool)

(declare-fun tp!783141 () Bool)

(assert (=> b!2459907 (= e!1560172 tp!783141)))

(assert (=> b!2459496 (= tp!783084 e!1560172)))

(declare-fun b!2459905 () Bool)

(assert (=> b!2459905 (= e!1560172 tp_is_empty!11877)))

(declare-fun b!2459908 () Bool)

(declare-fun tp!783138 () Bool)

(declare-fun tp!783137 () Bool)

(assert (=> b!2459908 (= e!1560172 (and tp!783138 tp!783137))))

(declare-fun b!2459906 () Bool)

(declare-fun tp!783140 () Bool)

(declare-fun tp!783139 () Bool)

(assert (=> b!2459906 (= e!1560172 (and tp!783140 tp!783139))))

(assert (= (and b!2459496 (is-ElementMatch!7232 (regTwo!14977 r!13927))) b!2459905))

(assert (= (and b!2459496 (is-Concat!11868 (regTwo!14977 r!13927))) b!2459906))

(assert (= (and b!2459496 (is-Star!7232 (regTwo!14977 r!13927))) b!2459907))

(assert (= (and b!2459496 (is-Union!7232 (regTwo!14977 r!13927))) b!2459908))

(declare-fun b!2459911 () Bool)

(declare-fun e!1560173 () Bool)

(declare-fun tp!783146 () Bool)

(assert (=> b!2459911 (= e!1560173 tp!783146)))

(assert (=> b!2459490 (= tp!783082 e!1560173)))

(declare-fun b!2459909 () Bool)

(assert (=> b!2459909 (= e!1560173 tp_is_empty!11877)))

(declare-fun b!2459912 () Bool)

(declare-fun tp!783143 () Bool)

(declare-fun tp!783142 () Bool)

(assert (=> b!2459912 (= e!1560173 (and tp!783143 tp!783142))))

(declare-fun b!2459910 () Bool)

(declare-fun tp!783145 () Bool)

(declare-fun tp!783144 () Bool)

(assert (=> b!2459910 (= e!1560173 (and tp!783145 tp!783144))))

(assert (= (and b!2459490 (is-ElementMatch!7232 (regOne!14976 r!13927))) b!2459909))

(assert (= (and b!2459490 (is-Concat!11868 (regOne!14976 r!13927))) b!2459910))

(assert (= (and b!2459490 (is-Star!7232 (regOne!14976 r!13927))) b!2459911))

(assert (= (and b!2459490 (is-Union!7232 (regOne!14976 r!13927))) b!2459912))

(declare-fun b!2459915 () Bool)

(declare-fun e!1560174 () Bool)

(declare-fun tp!783151 () Bool)

(assert (=> b!2459915 (= e!1560174 tp!783151)))

(assert (=> b!2459490 (= tp!783089 e!1560174)))

(declare-fun b!2459913 () Bool)

(assert (=> b!2459913 (= e!1560174 tp_is_empty!11877)))

(declare-fun b!2459916 () Bool)

(declare-fun tp!783148 () Bool)

(declare-fun tp!783147 () Bool)

(assert (=> b!2459916 (= e!1560174 (and tp!783148 tp!783147))))

(declare-fun b!2459914 () Bool)

(declare-fun tp!783150 () Bool)

(declare-fun tp!783149 () Bool)

(assert (=> b!2459914 (= e!1560174 (and tp!783150 tp!783149))))

(assert (= (and b!2459490 (is-ElementMatch!7232 (regTwo!14976 r!13927))) b!2459913))

(assert (= (and b!2459490 (is-Concat!11868 (regTwo!14976 r!13927))) b!2459914))

(assert (= (and b!2459490 (is-Star!7232 (regTwo!14976 r!13927))) b!2459915))

(assert (= (and b!2459490 (is-Union!7232 (regTwo!14976 r!13927))) b!2459916))

(declare-fun b!2459919 () Bool)

(declare-fun e!1560175 () Bool)

(declare-fun tp!783156 () Bool)

(assert (=> b!2459919 (= e!1560175 tp!783156)))

(assert (=> b!2459479 (= tp!783087 e!1560175)))

(declare-fun b!2459917 () Bool)

(assert (=> b!2459917 (= e!1560175 tp_is_empty!11877)))

(declare-fun b!2459920 () Bool)

(declare-fun tp!783153 () Bool)

(declare-fun tp!783152 () Bool)

(assert (=> b!2459920 (= e!1560175 (and tp!783153 tp!783152))))

(declare-fun b!2459918 () Bool)

(declare-fun tp!783155 () Bool)

(declare-fun tp!783154 () Bool)

(assert (=> b!2459918 (= e!1560175 (and tp!783155 tp!783154))))

(assert (= (and b!2459479 (is-ElementMatch!7232 (h!34004 l!9164))) b!2459917))

(assert (= (and b!2459479 (is-Concat!11868 (h!34004 l!9164))) b!2459918))

(assert (= (and b!2459479 (is-Star!7232 (h!34004 l!9164))) b!2459919))

(assert (= (and b!2459479 (is-Union!7232 (h!34004 l!9164))) b!2459920))

(declare-fun b!2459925 () Bool)

(declare-fun e!1560178 () Bool)

(declare-fun tp!783161 () Bool)

(declare-fun tp!783162 () Bool)

(assert (=> b!2459925 (= e!1560178 (and tp!783161 tp!783162))))

(assert (=> b!2459479 (= tp!783088 e!1560178)))

(assert (= (and b!2459479 (is-Cons!28603 (t!208678 l!9164))) b!2459925))

(declare-fun b_lambda!75225 () Bool)

(assert (= b_lambda!75223 (or start!239744 b_lambda!75225)))

(declare-fun bs!466176 () Bool)

(declare-fun d!708219 () Bool)

(assert (= bs!466176 (and d!708219 start!239744)))

(assert (=> bs!466176 (= (dynLambda!12275 lambda!93088 (h!34004 l!9164)) (validRegex!2918 (h!34004 l!9164)))))

(assert (=> bs!466176 m!2829385))

(assert (=> b!2459777 d!708219))

(push 1)

(assert (not b!2459587))

(assert (not b!2459711))

(assert (not b!2459719))

(assert (not b_lambda!75225))

(assert (not b!2459918))

(assert (not b!2459915))

(assert (not d!708201))

(assert (not b!2459624))

(assert (not b!2459628))

(assert (not b!2459770))

(assert (not b!2459907))

(assert (not b!2459911))

(assert (not d!708181))

(assert (not b!2459914))

(assert (not b!2459717))

(assert (not b!2459739))

(assert (not b!2459680))

(assert (not d!708169))

(assert (not b!2459910))

(assert (not bm!151295))

(assert (not d!708197))

(assert (not b!2459920))

(assert (not b!2459753))

(assert (not b!2459620))

(assert (not b!2459912))

(assert (not d!708195))

(assert (not b!2459754))

(assert (not d!708191))

(assert (not bm!151302))

(assert (not b!2459744))

(assert (not b!2459862))

(assert (not b!2459849))

(assert (not b!2459748))

(assert (not b!2459727))

(assert (not b!2459840))

(assert (not b!2459710))

(assert (not b!2459747))

(assert (not b!2459690))

(assert (not b!2459778))

(assert (not b!2459751))

(assert (not b!2459763))

(assert (not b!2459715))

(assert (not b!2459734))

(assert (not b!2459730))

(assert (not d!708217))

(assert (not b!2459737))

(assert (not b!2459722))

(assert (not b!2459622))

(assert (not b!2459729))

(assert (not b!2459612))

(assert (not b!2459746))

(assert (not b!2459916))

(assert (not b!2459724))

(assert (not b!2459585))

(assert (not d!708183))

(assert (not b!2459684))

(assert (not b!2459626))

(assert (not b!2459919))

(assert (not b!2459925))

(assert (not b!2459581))

(assert (not b!2459861))

(assert (not b!2459683))

(assert (not d!708163))

(assert (not bm!151294))

(assert (not d!708173))

(assert (not bm!151296))

(assert (not b!2459872))

(assert (not b!2459766))

(assert (not b!2459686))

(assert (not b!2459860))

(assert (not d!708175))

(assert (not d!708179))

(assert (not b!2459894))

(assert (not d!708215))

(assert (not b!2459725))

(assert (not d!708165))

(assert (not b!2459621))

(assert (not b!2459906))

(assert (not b!2459749))

(assert (not b!2459723))

(assert (not b!2459738))

(assert (not b!2459764))

(assert (not b!2459611))

(assert (not b!2459631))

(assert (not b!2459618))

(assert (not d!708171))

(assert (not b!2459615))

(assert (not b!2459896))

(assert (not d!708159))

(assert (not b!2459685))

(assert (not b!2459908))

(assert (not b!2459613))

(assert (not b!2459904))

(assert (not b!2459765))

(assert (not b!2459610))

(assert (not b!2459898))

(assert (not b!2459583))

(assert (not b!2459903))

(assert (not b!2459740))

(assert (not b!2459721))

(assert (not b!2459589))

(assert (not b!2459902))

(assert tp_is_empty!11877)

(assert (not b!2459617))

(assert (not b!2459714))

(assert (not bs!466176))

(assert (not b!2459713))

(assert (not bm!151305))

(assert (not bm!151301))

(assert (not b!2459856))

(assert (not b!2459582))

(assert (not b!2459760))

(assert (not b!2459859))

(assert (not d!708187))

(assert (not b!2459866))

(assert (not d!708177))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

