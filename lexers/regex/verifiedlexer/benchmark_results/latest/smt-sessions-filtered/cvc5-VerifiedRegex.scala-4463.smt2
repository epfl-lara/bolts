; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!237250 () Bool)

(assert start!237250)

(declare-fun b!2422057 () Bool)

(declare-fun res!1028657 () Bool)

(declare-fun e!1540896 () Bool)

(assert (=> b!2422057 (=> (not res!1028657) (not e!1540896))))

(declare-datatypes ((C!14394 0))(
  ( (C!14395 (val!8439 Int)) )
))
(declare-datatypes ((Regex!7118 0))(
  ( (ElementMatch!7118 (c!386154 C!14394)) (Concat!11754 (regOne!14748 Regex!7118) (regTwo!14748 Regex!7118)) (EmptyExpr!7118) (Star!7118 (reg!7447 Regex!7118)) (EmptyLang!7118) (Union!7118 (regOne!14749 Regex!7118) (regTwo!14749 Regex!7118)) )
))
(declare-fun r!13927 () Regex!7118)

(declare-datatypes ((List!28474 0))(
  ( (Nil!28376) (Cons!28376 (h!33777 Regex!7118) (t!208451 List!28474)) )
))
(declare-fun l!9164 () List!28474)

(declare-fun generalisedConcat!219 (List!28474) Regex!7118)

(assert (=> b!2422057 (= res!1028657 (= r!13927 (generalisedConcat!219 l!9164)))))

(declare-fun b!2422058 () Bool)

(declare-fun e!1540886 () Bool)

(declare-fun e!1540891 () Bool)

(assert (=> b!2422058 (= e!1540886 e!1540891)))

(declare-fun res!1028659 () Bool)

(assert (=> b!2422058 (=> res!1028659 e!1540891)))

(assert (=> b!2422058 (= res!1028659 (is-Cons!28376 l!9164))))

(declare-datatypes ((Unit!41567 0))(
  ( (Unit!41568) )
))
(declare-fun lt!875451 () Unit!41567)

(declare-fun e!1540887 () Unit!41567)

(assert (=> b!2422058 (= lt!875451 e!1540887)))

(declare-fun c!386152 () Bool)

(declare-fun lt!875458 () Regex!7118)

(declare-datatypes ((List!28475 0))(
  ( (Nil!28377) (Cons!28377 (h!33778 C!14394) (t!208452 List!28475)) )
))
(declare-fun s!9460 () List!28475)

(declare-fun matchR!3235 (Regex!7118 List!28475) Bool)

(assert (=> b!2422058 (= c!386152 (matchR!3235 lt!875458 s!9460))))

(declare-fun head!5448 (List!28474) Regex!7118)

(assert (=> b!2422058 (= lt!875458 (head!5448 l!9164))))

(declare-fun b!2422059 () Bool)

(declare-fun e!1540890 () Bool)

(assert (=> b!2422059 e!1540890))

(declare-fun res!1028658 () Bool)

(assert (=> b!2422059 (=> (not res!1028658) (not e!1540890))))

(declare-fun call!148044 () Bool)

(assert (=> b!2422059 (= res!1028658 call!148044)))

(declare-fun lt!875457 () Unit!41567)

(declare-datatypes ((tuple2!28016 0))(
  ( (tuple2!28017 (_1!16549 List!28475) (_2!16549 List!28475)) )
))
(declare-fun lt!875448 () tuple2!28016)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!67 (Regex!7118 Regex!7118 List!28475 List!28475 List!28475) Unit!41567)

(assert (=> b!2422059 (= lt!875457 (lemmaFindSeparationIsDefinedThenConcatMatches!67 lt!875458 EmptyExpr!7118 (_1!16549 lt!875448) (_2!16549 lt!875448) s!9460))))

(declare-datatypes ((Option!5619 0))(
  ( (None!5618) (Some!5618 (v!31026 tuple2!28016)) )
))
(declare-fun lt!875449 () Option!5619)

(declare-fun get!8730 (Option!5619) tuple2!28016)

(assert (=> b!2422059 (= lt!875448 (get!8730 lt!875449))))

(declare-fun e!1540895 () Unit!41567)

(declare-fun Unit!41569 () Unit!41567)

(assert (=> b!2422059 (= e!1540895 Unit!41569)))

(declare-fun b!2422060 () Bool)

(declare-fun res!1028660 () Bool)

(declare-fun e!1540892 () Bool)

(assert (=> b!2422060 (=> res!1028660 e!1540892)))

(declare-fun isEmpty!16400 (List!28474) Bool)

(assert (=> b!2422060 (= res!1028660 (isEmpty!16400 l!9164))))

(declare-fun b!2422061 () Bool)

(declare-fun Unit!41570 () Unit!41567)

(assert (=> b!2422061 (= e!1540887 Unit!41570)))

(declare-fun lt!875456 () Unit!41567)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!93 (Regex!7118 Regex!7118 List!28475 List!28475) Unit!41567)

(assert (=> b!2422061 (= lt!875456 (lemmaTwoRegexMatchThenConcatMatchesConcatString!93 lt!875458 EmptyExpr!7118 s!9460 Nil!28377))))

(declare-fun lt!875447 () Regex!7118)

(assert (=> b!2422061 (= lt!875447 (Concat!11754 lt!875458 EmptyExpr!7118))))

(declare-fun res!1028662 () Bool)

(declare-fun call!148048 () List!28475)

(assert (=> b!2422061 (= res!1028662 (matchR!3235 lt!875447 call!148048))))

(declare-fun e!1540894 () Bool)

(assert (=> b!2422061 (=> (not res!1028662) (not e!1540894))))

(assert (=> b!2422061 e!1540894))

(declare-fun lt!875453 () Unit!41567)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!67 (Regex!7118 Regex!7118 List!28475) Unit!41567)

(assert (=> b!2422061 (= lt!875453 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!67 lt!875458 EmptyExpr!7118 s!9460))))

(declare-fun res!1028655 () Bool)

(declare-fun call!148046 () Bool)

(assert (=> b!2422061 (= res!1028655 call!148046)))

(declare-fun e!1540888 () Bool)

(assert (=> b!2422061 (=> (not res!1028655) (not e!1540888))))

(assert (=> b!2422061 e!1540888))

(declare-fun b!2422062 () Bool)

(declare-fun e!1540898 () Bool)

(declare-fun tp_is_empty!11649 () Bool)

(assert (=> b!2422062 (= e!1540898 tp_is_empty!11649)))

(declare-fun b!2422063 () Bool)

(assert (=> b!2422063 (= e!1540890 false)))

(declare-fun b!2422064 () Bool)

(assert (=> b!2422064 (= e!1540894 call!148044)))

(declare-fun bm!148038 () Bool)

(assert (=> bm!148038 (= call!148044 (matchR!3235 (ite c!386152 lt!875447 (Concat!11754 lt!875458 EmptyExpr!7118)) (ite c!386152 s!9460 call!148048)))))

(declare-fun b!2422065 () Bool)

(declare-fun e!1540897 () Bool)

(assert (=> b!2422065 (= e!1540892 e!1540897)))

(declare-fun res!1028663 () Bool)

(assert (=> b!2422065 (=> res!1028663 e!1540897)))

(declare-fun lt!875454 () List!28474)

(assert (=> b!2422065 (= res!1028663 (not (isEmpty!16400 lt!875454)))))

(declare-fun tail!3720 (List!28474) List!28474)

(assert (=> b!2422065 (= lt!875454 (tail!3720 l!9164))))

(declare-fun lt!875459 () Regex!7118)

(declare-fun call!148043 () Option!5619)

(declare-fun bm!148039 () Bool)

(declare-fun findConcatSeparation!727 (Regex!7118 Regex!7118 List!28475 List!28475 List!28475) Option!5619)

(assert (=> bm!148039 (= call!148043 (findConcatSeparation!727 lt!875458 (ite c!386152 lt!875459 EmptyExpr!7118) Nil!28377 s!9460 s!9460))))

(declare-fun b!2422066 () Bool)

(declare-fun validRegex!2838 (Regex!7118) Bool)

(assert (=> b!2422066 (= e!1540891 (validRegex!2838 r!13927))))

(declare-fun b!2422067 () Bool)

(assert (=> b!2422067 (= e!1540897 e!1540886)))

(declare-fun res!1028661 () Bool)

(assert (=> b!2422067 (=> res!1028661 e!1540886)))

(assert (=> b!2422067 (= res!1028661 (not (= lt!875459 EmptyExpr!7118)))))

(assert (=> b!2422067 (= lt!875459 (generalisedConcat!219 lt!875454))))

(declare-fun b!2422068 () Bool)

(assert (=> b!2422068 (= e!1540896 (not e!1540892))))

(declare-fun res!1028665 () Bool)

(assert (=> b!2422068 (=> res!1028665 e!1540892)))

(assert (=> b!2422068 (= res!1028665 (or (is-Concat!11754 r!13927) (is-EmptyExpr!7118 r!13927)))))

(declare-fun matchRSpec!967 (Regex!7118 List!28475) Bool)

(assert (=> b!2422068 (= (matchR!3235 r!13927 s!9460) (matchRSpec!967 r!13927 s!9460))))

(declare-fun lt!875450 () Unit!41567)

(declare-fun mainMatchTheorem!967 (Regex!7118 List!28475) Unit!41567)

(assert (=> b!2422068 (= lt!875450 (mainMatchTheorem!967 r!13927 s!9460))))

(declare-fun res!1028656 () Bool)

(assert (=> start!237250 (=> (not res!1028656) (not e!1540896))))

(declare-fun lambda!91224 () Int)

(declare-fun forall!5752 (List!28474 Int) Bool)

(assert (=> start!237250 (= res!1028656 (forall!5752 l!9164 lambda!91224))))

(assert (=> start!237250 e!1540896))

(declare-fun e!1540889 () Bool)

(assert (=> start!237250 e!1540889))

(assert (=> start!237250 e!1540898))

(declare-fun e!1540885 () Bool)

(assert (=> start!237250 e!1540885))

(declare-fun bm!148040 () Bool)

(declare-fun ++!7039 (List!28475 List!28475) List!28475)

(assert (=> bm!148040 (= call!148048 (++!7039 (ite c!386152 s!9460 (_1!16549 lt!875448)) (ite c!386152 Nil!28377 (_2!16549 lt!875448))))))

(declare-fun call!148045 () Option!5619)

(declare-fun bm!148041 () Bool)

(assert (=> bm!148041 (= call!148045 (findConcatSeparation!727 lt!875458 (ite c!386152 EmptyExpr!7118 lt!875459) Nil!28377 s!9460 s!9460))))

(declare-fun bm!148042 () Bool)

(declare-fun isDefined!4445 (Option!5619) Bool)

(assert (=> bm!148042 (= call!148046 (isDefined!4445 call!148045))))

(declare-fun b!2422069 () Bool)

(declare-fun tp!769609 () Bool)

(declare-fun tp!769610 () Bool)

(assert (=> b!2422069 (= e!1540898 (and tp!769609 tp!769610))))

(declare-fun b!2422070 () Bool)

(declare-fun Unit!41571 () Unit!41567)

(assert (=> b!2422070 (= e!1540887 Unit!41571)))

(assert (=> b!2422070 (= lt!875449 call!148043)))

(declare-fun lt!875455 () Bool)

(declare-fun call!148047 () Bool)

(assert (=> b!2422070 (= lt!875455 call!148047)))

(declare-fun c!386153 () Bool)

(assert (=> b!2422070 (= c!386153 lt!875455)))

(declare-fun lt!875452 () Unit!41567)

(assert (=> b!2422070 (= lt!875452 e!1540895)))

(declare-fun res!1028664 () Bool)

(assert (=> b!2422070 (= res!1028664 (not lt!875455))))

(declare-fun e!1540893 () Bool)

(assert (=> b!2422070 (=> (not res!1028664) (not e!1540893))))

(assert (=> b!2422070 e!1540893))

(declare-fun b!2422071 () Bool)

(declare-fun tp!769611 () Bool)

(declare-fun tp!769605 () Bool)

(assert (=> b!2422071 (= e!1540889 (and tp!769611 tp!769605))))

(declare-fun b!2422072 () Bool)

(declare-fun tp!769607 () Bool)

(assert (=> b!2422072 (= e!1540885 (and tp_is_empty!11649 tp!769607))))

(declare-fun b!2422073 () Bool)

(declare-fun tp!769604 () Bool)

(assert (=> b!2422073 (= e!1540898 tp!769604)))

(declare-fun b!2422074 () Bool)

(assert (=> b!2422074 (= e!1540888 call!148047)))

(declare-fun bm!148043 () Bool)

(assert (=> bm!148043 (= call!148047 (isDefined!4445 (ite c!386152 call!148043 lt!875449)))))

(declare-fun b!2422075 () Bool)

(assert (=> b!2422075 (= e!1540893 (not call!148046))))

(declare-fun b!2422076 () Bool)

(declare-fun Unit!41572 () Unit!41567)

(assert (=> b!2422076 (= e!1540895 Unit!41572)))

(declare-fun b!2422077 () Bool)

(declare-fun tp!769608 () Bool)

(declare-fun tp!769606 () Bool)

(assert (=> b!2422077 (= e!1540898 (and tp!769608 tp!769606))))

(assert (= (and start!237250 res!1028656) b!2422057))

(assert (= (and b!2422057 res!1028657) b!2422068))

(assert (= (and b!2422068 (not res!1028665)) b!2422060))

(assert (= (and b!2422060 (not res!1028660)) b!2422065))

(assert (= (and b!2422065 (not res!1028663)) b!2422067))

(assert (= (and b!2422067 (not res!1028661)) b!2422058))

(assert (= (and b!2422058 c!386152) b!2422061))

(assert (= (and b!2422058 (not c!386152)) b!2422070))

(assert (= (and b!2422061 res!1028662) b!2422064))

(assert (= (and b!2422061 res!1028655) b!2422074))

(assert (= (and b!2422070 c!386153) b!2422059))

(assert (= (and b!2422070 (not c!386153)) b!2422076))

(assert (= (and b!2422059 res!1028658) b!2422063))

(assert (= (and b!2422070 res!1028664) b!2422075))

(assert (= (or b!2422061 b!2422059) bm!148040))

(assert (= (or b!2422074 b!2422070) bm!148039))

(assert (= (or b!2422061 b!2422075) bm!148041))

(assert (= (or b!2422064 b!2422059) bm!148038))

(assert (= (or b!2422074 b!2422070) bm!148043))

(assert (= (or b!2422061 b!2422075) bm!148042))

(assert (= (and b!2422058 (not res!1028659)) b!2422066))

(assert (= (and start!237250 (is-Cons!28376 l!9164)) b!2422071))

(assert (= (and start!237250 (is-ElementMatch!7118 r!13927)) b!2422062))

(assert (= (and start!237250 (is-Concat!11754 r!13927)) b!2422077))

(assert (= (and start!237250 (is-Star!7118 r!13927)) b!2422073))

(assert (= (and start!237250 (is-Union!7118 r!13927)) b!2422069))

(assert (= (and start!237250 (is-Cons!28377 s!9460)) b!2422072))

(declare-fun m!2808445 () Bool)

(assert (=> bm!148043 m!2808445))

(declare-fun m!2808447 () Bool)

(assert (=> b!2422066 m!2808447))

(declare-fun m!2808449 () Bool)

(assert (=> b!2422068 m!2808449))

(declare-fun m!2808451 () Bool)

(assert (=> b!2422068 m!2808451))

(declare-fun m!2808453 () Bool)

(assert (=> b!2422068 m!2808453))

(declare-fun m!2808455 () Bool)

(assert (=> bm!148041 m!2808455))

(declare-fun m!2808457 () Bool)

(assert (=> b!2422060 m!2808457))

(declare-fun m!2808459 () Bool)

(assert (=> bm!148038 m!2808459))

(declare-fun m!2808461 () Bool)

(assert (=> b!2422058 m!2808461))

(declare-fun m!2808463 () Bool)

(assert (=> b!2422058 m!2808463))

(declare-fun m!2808465 () Bool)

(assert (=> b!2422059 m!2808465))

(declare-fun m!2808467 () Bool)

(assert (=> b!2422059 m!2808467))

(declare-fun m!2808469 () Bool)

(assert (=> b!2422067 m!2808469))

(declare-fun m!2808471 () Bool)

(assert (=> b!2422057 m!2808471))

(declare-fun m!2808473 () Bool)

(assert (=> bm!148040 m!2808473))

(declare-fun m!2808475 () Bool)

(assert (=> b!2422061 m!2808475))

(declare-fun m!2808477 () Bool)

(assert (=> b!2422061 m!2808477))

(declare-fun m!2808479 () Bool)

(assert (=> b!2422061 m!2808479))

(declare-fun m!2808481 () Bool)

(assert (=> bm!148042 m!2808481))

(declare-fun m!2808483 () Bool)

(assert (=> b!2422065 m!2808483))

(declare-fun m!2808485 () Bool)

(assert (=> b!2422065 m!2808485))

(declare-fun m!2808487 () Bool)

(assert (=> bm!148039 m!2808487))

(declare-fun m!2808489 () Bool)

(assert (=> start!237250 m!2808489))

(push 1)

(assert (not start!237250))

(assert (not b!2422059))

(assert (not b!2422060))

(assert (not b!2422071))

(assert (not b!2422069))

(assert (not bm!148038))

(assert (not b!2422073))

(assert (not bm!148039))

(assert (not b!2422067))

(assert (not bm!148040))

(assert (not b!2422065))

(assert (not bm!148042))

(assert (not b!2422072))

(assert (not b!2422061))

(assert (not b!2422077))

(assert (not bm!148041))

(assert (not b!2422057))

(assert (not b!2422066))

(assert (not b!2422058))

(assert (not b!2422068))

(assert (not bm!148043))

(assert tp_is_empty!11649)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!701996 () Bool)

(assert (=> d!701996 (= (isEmpty!16400 lt!875454) (is-Nil!28376 lt!875454))))

(assert (=> b!2422065 d!701996))

(declare-fun d!701998 () Bool)

(assert (=> d!701998 (= (tail!3720 l!9164) (t!208451 l!9164))))

(assert (=> b!2422065 d!701998))

(declare-fun d!702000 () Bool)

(declare-fun e!1540954 () Bool)

(assert (=> d!702000 e!1540954))

(declare-fun res!1028713 () Bool)

(assert (=> d!702000 (=> res!1028713 e!1540954)))

(declare-fun e!1540951 () Bool)

(assert (=> d!702000 (= res!1028713 e!1540951)))

(declare-fun res!1028709 () Bool)

(assert (=> d!702000 (=> (not res!1028709) (not e!1540951))))

(declare-fun lt!875505 () Option!5619)

(assert (=> d!702000 (= res!1028709 (isDefined!4445 lt!875505))))

(declare-fun e!1540955 () Option!5619)

(assert (=> d!702000 (= lt!875505 e!1540955)))

(declare-fun c!386167 () Bool)

(declare-fun e!1540953 () Bool)

(assert (=> d!702000 (= c!386167 e!1540953)))

(declare-fun res!1028710 () Bool)

(assert (=> d!702000 (=> (not res!1028710) (not e!1540953))))

(assert (=> d!702000 (= res!1028710 (matchR!3235 lt!875458 Nil!28377))))

(assert (=> d!702000 (validRegex!2838 lt!875458)))

(assert (=> d!702000 (= (findConcatSeparation!727 lt!875458 (ite c!386152 lt!875459 EmptyExpr!7118) Nil!28377 s!9460 s!9460) lt!875505)))

(declare-fun b!2422159 () Bool)

(declare-fun e!1540952 () Option!5619)

(assert (=> b!2422159 (= e!1540952 None!5618)))

(declare-fun b!2422160 () Bool)

(declare-fun lt!875507 () Unit!41567)

(declare-fun lt!875506 () Unit!41567)

(assert (=> b!2422160 (= lt!875507 lt!875506)))

(assert (=> b!2422160 (= (++!7039 (++!7039 Nil!28377 (Cons!28377 (h!33778 s!9460) Nil!28377)) (t!208452 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!665 (List!28475 C!14394 List!28475 List!28475) Unit!41567)

(assert (=> b!2422160 (= lt!875506 (lemmaMoveElementToOtherListKeepsConcatEq!665 Nil!28377 (h!33778 s!9460) (t!208452 s!9460) s!9460))))

(assert (=> b!2422160 (= e!1540952 (findConcatSeparation!727 lt!875458 (ite c!386152 lt!875459 EmptyExpr!7118) (++!7039 Nil!28377 (Cons!28377 (h!33778 s!9460) Nil!28377)) (t!208452 s!9460) s!9460))))

(declare-fun b!2422161 () Bool)

(assert (=> b!2422161 (= e!1540954 (not (isDefined!4445 lt!875505)))))

(declare-fun b!2422162 () Bool)

(assert (=> b!2422162 (= e!1540955 (Some!5618 (tuple2!28017 Nil!28377 s!9460)))))

(declare-fun b!2422163 () Bool)

(assert (=> b!2422163 (= e!1540953 (matchR!3235 (ite c!386152 lt!875459 EmptyExpr!7118) s!9460))))

(declare-fun b!2422164 () Bool)

(declare-fun res!1028711 () Bool)

(assert (=> b!2422164 (=> (not res!1028711) (not e!1540951))))

(assert (=> b!2422164 (= res!1028711 (matchR!3235 (ite c!386152 lt!875459 EmptyExpr!7118) (_2!16549 (get!8730 lt!875505))))))

(declare-fun b!2422165 () Bool)

(assert (=> b!2422165 (= e!1540955 e!1540952)))

(declare-fun c!386166 () Bool)

(assert (=> b!2422165 (= c!386166 (is-Nil!28377 s!9460))))

(declare-fun b!2422166 () Bool)

(declare-fun res!1028712 () Bool)

(assert (=> b!2422166 (=> (not res!1028712) (not e!1540951))))

(assert (=> b!2422166 (= res!1028712 (matchR!3235 lt!875458 (_1!16549 (get!8730 lt!875505))))))

(declare-fun b!2422167 () Bool)

(assert (=> b!2422167 (= e!1540951 (= (++!7039 (_1!16549 (get!8730 lt!875505)) (_2!16549 (get!8730 lt!875505))) s!9460))))

(assert (= (and d!702000 res!1028710) b!2422163))

(assert (= (and d!702000 c!386167) b!2422162))

(assert (= (and d!702000 (not c!386167)) b!2422165))

(assert (= (and b!2422165 c!386166) b!2422159))

(assert (= (and b!2422165 (not c!386166)) b!2422160))

(assert (= (and d!702000 res!1028709) b!2422166))

(assert (= (and b!2422166 res!1028712) b!2422164))

(assert (= (and b!2422164 res!1028711) b!2422167))

(assert (= (and d!702000 (not res!1028713)) b!2422161))

(declare-fun m!2808537 () Bool)

(assert (=> b!2422167 m!2808537))

(declare-fun m!2808539 () Bool)

(assert (=> b!2422167 m!2808539))

(assert (=> b!2422166 m!2808537))

(declare-fun m!2808541 () Bool)

(assert (=> b!2422166 m!2808541))

(declare-fun m!2808543 () Bool)

(assert (=> d!702000 m!2808543))

(declare-fun m!2808545 () Bool)

(assert (=> d!702000 m!2808545))

(declare-fun m!2808547 () Bool)

(assert (=> d!702000 m!2808547))

(declare-fun m!2808549 () Bool)

(assert (=> b!2422163 m!2808549))

(assert (=> b!2422164 m!2808537))

(declare-fun m!2808551 () Bool)

(assert (=> b!2422164 m!2808551))

(declare-fun m!2808553 () Bool)

(assert (=> b!2422160 m!2808553))

(assert (=> b!2422160 m!2808553))

(declare-fun m!2808555 () Bool)

(assert (=> b!2422160 m!2808555))

(declare-fun m!2808557 () Bool)

(assert (=> b!2422160 m!2808557))

(assert (=> b!2422160 m!2808553))

(declare-fun m!2808559 () Bool)

(assert (=> b!2422160 m!2808559))

(assert (=> b!2422161 m!2808543))

(assert (=> bm!148039 d!702000))

(declare-fun bs!463769 () Bool)

(declare-fun d!702004 () Bool)

(assert (= bs!463769 (and d!702004 start!237250)))

(declare-fun lambda!91232 () Int)

(assert (=> bs!463769 (= lambda!91232 lambda!91224)))

(declare-fun b!2422208 () Bool)

(declare-fun e!1540981 () Bool)

(declare-fun lt!875512 () Regex!7118)

(declare-fun isEmptyExpr!173 (Regex!7118) Bool)

(assert (=> b!2422208 (= e!1540981 (isEmptyExpr!173 lt!875512))))

(declare-fun b!2422209 () Bool)

(declare-fun e!1540980 () Bool)

(assert (=> b!2422209 (= e!1540981 e!1540980)))

(declare-fun c!386185 () Bool)

(assert (=> b!2422209 (= c!386185 (isEmpty!16400 (tail!3720 l!9164)))))

(declare-fun b!2422210 () Bool)

(declare-fun e!1540983 () Regex!7118)

(assert (=> b!2422210 (= e!1540983 (h!33777 l!9164))))

(declare-fun b!2422211 () Bool)

(declare-fun isConcat!173 (Regex!7118) Bool)

(assert (=> b!2422211 (= e!1540980 (isConcat!173 lt!875512))))

(declare-fun b!2422212 () Bool)

(declare-fun e!1540984 () Regex!7118)

(assert (=> b!2422212 (= e!1540984 EmptyExpr!7118)))

(declare-fun b!2422213 () Bool)

(declare-fun e!1540982 () Bool)

(assert (=> b!2422213 (= e!1540982 e!1540981)))

(declare-fun c!386187 () Bool)

(assert (=> b!2422213 (= c!386187 (isEmpty!16400 l!9164))))

(declare-fun b!2422214 () Bool)

(declare-fun e!1540985 () Bool)

(assert (=> b!2422214 (= e!1540985 (isEmpty!16400 (t!208451 l!9164)))))

(declare-fun b!2422215 () Bool)

(assert (=> b!2422215 (= e!1540980 (= lt!875512 (head!5448 l!9164)))))

(declare-fun b!2422216 () Bool)

(assert (=> b!2422216 (= e!1540984 (Concat!11754 (h!33777 l!9164) (generalisedConcat!219 (t!208451 l!9164))))))

(assert (=> d!702004 e!1540982))

(declare-fun res!1028722 () Bool)

(assert (=> d!702004 (=> (not res!1028722) (not e!1540982))))

(assert (=> d!702004 (= res!1028722 (validRegex!2838 lt!875512))))

(assert (=> d!702004 (= lt!875512 e!1540983)))

(declare-fun c!386184 () Bool)

(assert (=> d!702004 (= c!386184 e!1540985)))

(declare-fun res!1028723 () Bool)

(assert (=> d!702004 (=> (not res!1028723) (not e!1540985))))

(assert (=> d!702004 (= res!1028723 (is-Cons!28376 l!9164))))

(assert (=> d!702004 (forall!5752 l!9164 lambda!91232)))

(assert (=> d!702004 (= (generalisedConcat!219 l!9164) lt!875512)))

(declare-fun b!2422217 () Bool)

(assert (=> b!2422217 (= e!1540983 e!1540984)))

(declare-fun c!386186 () Bool)

(assert (=> b!2422217 (= c!386186 (is-Cons!28376 l!9164))))

(assert (= (and d!702004 res!1028723) b!2422214))

(assert (= (and d!702004 c!386184) b!2422210))

(assert (= (and d!702004 (not c!386184)) b!2422217))

(assert (= (and b!2422217 c!386186) b!2422216))

(assert (= (and b!2422217 (not c!386186)) b!2422212))

(assert (= (and d!702004 res!1028722) b!2422213))

(assert (= (and b!2422213 c!386187) b!2422208))

(assert (= (and b!2422213 (not c!386187)) b!2422209))

(assert (= (and b!2422209 c!386185) b!2422215))

(assert (= (and b!2422209 (not c!386185)) b!2422211))

(declare-fun m!2808561 () Bool)

(assert (=> b!2422211 m!2808561))

(assert (=> b!2422213 m!2808457))

(declare-fun m!2808563 () Bool)

(assert (=> b!2422208 m!2808563))

(declare-fun m!2808565 () Bool)

(assert (=> b!2422216 m!2808565))

(assert (=> b!2422215 m!2808463))

(assert (=> b!2422209 m!2808485))

(assert (=> b!2422209 m!2808485))

(declare-fun m!2808567 () Bool)

(assert (=> b!2422209 m!2808567))

(declare-fun m!2808569 () Bool)

(assert (=> d!702004 m!2808569))

(declare-fun m!2808571 () Bool)

(assert (=> d!702004 m!2808571))

(declare-fun m!2808573 () Bool)

(assert (=> b!2422214 m!2808573))

(assert (=> b!2422057 d!702004))

(declare-fun b!2422246 () Bool)

(declare-fun res!1028738 () Bool)

(declare-fun e!1541006 () Bool)

(assert (=> b!2422246 (=> (not res!1028738) (not e!1541006))))

(declare-fun call!148075 () Bool)

(assert (=> b!2422246 (= res!1028738 call!148075)))

(declare-fun e!1541011 () Bool)

(assert (=> b!2422246 (= e!1541011 e!1541006)))

(declare-fun b!2422247 () Bool)

(declare-fun e!1541008 () Bool)

(declare-fun e!1541010 () Bool)

(assert (=> b!2422247 (= e!1541008 e!1541010)))

(declare-fun res!1028736 () Bool)

(declare-fun nullable!2153 (Regex!7118) Bool)

(assert (=> b!2422247 (= res!1028736 (not (nullable!2153 (reg!7447 r!13927))))))

(assert (=> b!2422247 (=> (not res!1028736) (not e!1541010))))

(declare-fun bm!148068 () Bool)

(declare-fun call!148073 () Bool)

(declare-fun c!386196 () Bool)

(assert (=> bm!148068 (= call!148073 (validRegex!2838 (ite c!386196 (regTwo!14749 r!13927) (regOne!14748 r!13927))))))

(declare-fun b!2422248 () Bool)

(declare-fun e!1541007 () Bool)

(declare-fun e!1541009 () Bool)

(assert (=> b!2422248 (= e!1541007 e!1541009)))

(declare-fun res!1028739 () Bool)

(assert (=> b!2422248 (=> (not res!1028739) (not e!1541009))))

(assert (=> b!2422248 (= res!1028739 call!148073)))

(declare-fun bm!148069 () Bool)

(declare-fun call!148074 () Bool)

(assert (=> bm!148069 (= call!148075 call!148074)))

(declare-fun d!702006 () Bool)

(declare-fun res!1028740 () Bool)

(declare-fun e!1541012 () Bool)

(assert (=> d!702006 (=> res!1028740 e!1541012)))

(assert (=> d!702006 (= res!1028740 (is-ElementMatch!7118 r!13927))))

(assert (=> d!702006 (= (validRegex!2838 r!13927) e!1541012)))

(declare-fun b!2422249 () Bool)

(declare-fun res!1028737 () Bool)

(assert (=> b!2422249 (=> res!1028737 e!1541007)))

(assert (=> b!2422249 (= res!1028737 (not (is-Concat!11754 r!13927)))))

(assert (=> b!2422249 (= e!1541011 e!1541007)))

(declare-fun b!2422250 () Bool)

(assert (=> b!2422250 (= e!1541008 e!1541011)))

(assert (=> b!2422250 (= c!386196 (is-Union!7118 r!13927))))

(declare-fun b!2422251 () Bool)

(assert (=> b!2422251 (= e!1541006 call!148073)))

(declare-fun b!2422252 () Bool)

(assert (=> b!2422252 (= e!1541010 call!148074)))

(declare-fun b!2422253 () Bool)

(assert (=> b!2422253 (= e!1541012 e!1541008)))

(declare-fun c!386197 () Bool)

(assert (=> b!2422253 (= c!386197 (is-Star!7118 r!13927))))

(declare-fun b!2422254 () Bool)

(assert (=> b!2422254 (= e!1541009 call!148075)))

(declare-fun bm!148070 () Bool)

(assert (=> bm!148070 (= call!148074 (validRegex!2838 (ite c!386197 (reg!7447 r!13927) (ite c!386196 (regOne!14749 r!13927) (regTwo!14748 r!13927)))))))

(assert (= (and d!702006 (not res!1028740)) b!2422253))

(assert (= (and b!2422253 c!386197) b!2422247))

(assert (= (and b!2422253 (not c!386197)) b!2422250))

(assert (= (and b!2422247 res!1028736) b!2422252))

(assert (= (and b!2422250 c!386196) b!2422246))

(assert (= (and b!2422250 (not c!386196)) b!2422249))

(assert (= (and b!2422246 res!1028738) b!2422251))

(assert (= (and b!2422249 (not res!1028737)) b!2422248))

(assert (= (and b!2422248 res!1028739) b!2422254))

(assert (= (or b!2422246 b!2422254) bm!148069))

(assert (= (or b!2422251 b!2422248) bm!148068))

(assert (= (or b!2422252 bm!148069) bm!148070))

(declare-fun m!2808593 () Bool)

(assert (=> b!2422247 m!2808593))

(declare-fun m!2808595 () Bool)

(assert (=> bm!148068 m!2808595))

(declare-fun m!2808597 () Bool)

(assert (=> bm!148070 m!2808597))

(assert (=> b!2422066 d!702006))

(declare-fun b!2422283 () Bool)

(declare-fun e!1541028 () Bool)

(declare-fun head!5450 (List!28475) C!14394)

(assert (=> b!2422283 (= e!1541028 (= (head!5450 s!9460) (c!386154 lt!875458)))))

(declare-fun b!2422284 () Bool)

(declare-fun res!1028757 () Bool)

(declare-fun e!1541032 () Bool)

(assert (=> b!2422284 (=> res!1028757 e!1541032)))

(assert (=> b!2422284 (= res!1028757 (not (is-ElementMatch!7118 lt!875458)))))

(declare-fun e!1541029 () Bool)

(assert (=> b!2422284 (= e!1541029 e!1541032)))

(declare-fun b!2422285 () Bool)

(declare-fun e!1541033 () Bool)

(declare-fun lt!875516 () Bool)

(declare-fun call!148078 () Bool)

(assert (=> b!2422285 (= e!1541033 (= lt!875516 call!148078))))

(declare-fun b!2422286 () Bool)

(declare-fun e!1541030 () Bool)

(assert (=> b!2422286 (= e!1541030 (nullable!2153 lt!875458))))

(declare-fun b!2422287 () Bool)

(declare-fun e!1541031 () Bool)

(declare-fun e!1541027 () Bool)

(assert (=> b!2422287 (= e!1541031 e!1541027)))

(declare-fun res!1028761 () Bool)

(assert (=> b!2422287 (=> res!1028761 e!1541027)))

(assert (=> b!2422287 (= res!1028761 call!148078)))

(declare-fun b!2422288 () Bool)

(assert (=> b!2422288 (= e!1541029 (not lt!875516))))

(declare-fun b!2422289 () Bool)

(declare-fun res!1028764 () Bool)

(assert (=> b!2422289 (=> (not res!1028764) (not e!1541028))))

(assert (=> b!2422289 (= res!1028764 (not call!148078))))

(declare-fun b!2422291 () Bool)

(assert (=> b!2422291 (= e!1541032 e!1541031)))

(declare-fun res!1028763 () Bool)

(assert (=> b!2422291 (=> (not res!1028763) (not e!1541031))))

(assert (=> b!2422291 (= res!1028763 (not lt!875516))))

(declare-fun bm!148073 () Bool)

(declare-fun isEmpty!16402 (List!28475) Bool)

(assert (=> bm!148073 (= call!148078 (isEmpty!16402 s!9460))))

(declare-fun b!2422292 () Bool)

(assert (=> b!2422292 (= e!1541027 (not (= (head!5450 s!9460) (c!386154 lt!875458))))))

(declare-fun b!2422293 () Bool)

(declare-fun res!1028759 () Bool)

(assert (=> b!2422293 (=> (not res!1028759) (not e!1541028))))

(declare-fun tail!3722 (List!28475) List!28475)

(assert (=> b!2422293 (= res!1028759 (isEmpty!16402 (tail!3722 s!9460)))))

(declare-fun b!2422294 () Bool)

(declare-fun derivativeStep!1810 (Regex!7118 C!14394) Regex!7118)

(assert (=> b!2422294 (= e!1541030 (matchR!3235 (derivativeStep!1810 lt!875458 (head!5450 s!9460)) (tail!3722 s!9460)))))

(declare-fun d!702010 () Bool)

(assert (=> d!702010 e!1541033))

(declare-fun c!386205 () Bool)

(assert (=> d!702010 (= c!386205 (is-EmptyExpr!7118 lt!875458))))

(assert (=> d!702010 (= lt!875516 e!1541030)))

(declare-fun c!386204 () Bool)

(assert (=> d!702010 (= c!386204 (isEmpty!16402 s!9460))))

(assert (=> d!702010 (validRegex!2838 lt!875458)))

(assert (=> d!702010 (= (matchR!3235 lt!875458 s!9460) lt!875516)))

(declare-fun b!2422290 () Bool)

(assert (=> b!2422290 (= e!1541033 e!1541029)))

(declare-fun c!386206 () Bool)

(assert (=> b!2422290 (= c!386206 (is-EmptyLang!7118 lt!875458))))

(declare-fun b!2422295 () Bool)

(declare-fun res!1028760 () Bool)

(assert (=> b!2422295 (=> res!1028760 e!1541032)))

(assert (=> b!2422295 (= res!1028760 e!1541028)))

(declare-fun res!1028762 () Bool)

(assert (=> b!2422295 (=> (not res!1028762) (not e!1541028))))

(assert (=> b!2422295 (= res!1028762 lt!875516)))

(declare-fun b!2422296 () Bool)

(declare-fun res!1028758 () Bool)

(assert (=> b!2422296 (=> res!1028758 e!1541027)))

(assert (=> b!2422296 (= res!1028758 (not (isEmpty!16402 (tail!3722 s!9460))))))

(assert (= (and d!702010 c!386204) b!2422286))

(assert (= (and d!702010 (not c!386204)) b!2422294))

(assert (= (and d!702010 c!386205) b!2422285))

(assert (= (and d!702010 (not c!386205)) b!2422290))

(assert (= (and b!2422290 c!386206) b!2422288))

(assert (= (and b!2422290 (not c!386206)) b!2422284))

(assert (= (and b!2422284 (not res!1028757)) b!2422295))

(assert (= (and b!2422295 res!1028762) b!2422289))

(assert (= (and b!2422289 res!1028764) b!2422293))

(assert (= (and b!2422293 res!1028759) b!2422283))

(assert (= (and b!2422295 (not res!1028760)) b!2422291))

(assert (= (and b!2422291 res!1028763) b!2422287))

(assert (= (and b!2422287 (not res!1028761)) b!2422296))

(assert (= (and b!2422296 (not res!1028758)) b!2422292))

(assert (= (or b!2422285 b!2422287 b!2422289) bm!148073))

(declare-fun m!2808599 () Bool)

(assert (=> b!2422283 m!2808599))

(assert (=> b!2422292 m!2808599))

(declare-fun m!2808601 () Bool)

(assert (=> b!2422293 m!2808601))

(assert (=> b!2422293 m!2808601))

(declare-fun m!2808603 () Bool)

(assert (=> b!2422293 m!2808603))

(declare-fun m!2808605 () Bool)

(assert (=> bm!148073 m!2808605))

(declare-fun m!2808607 () Bool)

(assert (=> b!2422286 m!2808607))

(assert (=> d!702010 m!2808605))

(assert (=> d!702010 m!2808547))

(assert (=> b!2422296 m!2808601))

(assert (=> b!2422296 m!2808601))

(assert (=> b!2422296 m!2808603))

(assert (=> b!2422294 m!2808599))

(assert (=> b!2422294 m!2808599))

(declare-fun m!2808609 () Bool)

(assert (=> b!2422294 m!2808609))

(assert (=> b!2422294 m!2808601))

(assert (=> b!2422294 m!2808609))

(assert (=> b!2422294 m!2808601))

(declare-fun m!2808611 () Bool)

(assert (=> b!2422294 m!2808611))

(assert (=> b!2422058 d!702010))

(declare-fun d!702012 () Bool)

(assert (=> d!702012 (= (head!5448 l!9164) (h!33777 l!9164))))

(assert (=> b!2422058 d!702012))

(declare-fun bs!463771 () Bool)

(declare-fun d!702014 () Bool)

(assert (= bs!463771 (and d!702014 start!237250)))

(declare-fun lambda!91234 () Int)

(assert (=> bs!463771 (= lambda!91234 lambda!91224)))

(declare-fun bs!463772 () Bool)

(assert (= bs!463772 (and d!702014 d!702004)))

(assert (=> bs!463772 (= lambda!91234 lambda!91232)))

(declare-fun b!2422305 () Bool)

(declare-fun e!1541039 () Bool)

(declare-fun lt!875519 () Regex!7118)

(assert (=> b!2422305 (= e!1541039 (isEmptyExpr!173 lt!875519))))

(declare-fun b!2422306 () Bool)

(declare-fun e!1541038 () Bool)

(assert (=> b!2422306 (= e!1541039 e!1541038)))

(declare-fun c!386212 () Bool)

(assert (=> b!2422306 (= c!386212 (isEmpty!16400 (tail!3720 lt!875454)))))

(declare-fun b!2422307 () Bool)

(declare-fun e!1541041 () Regex!7118)

(assert (=> b!2422307 (= e!1541041 (h!33777 lt!875454))))

(declare-fun b!2422308 () Bool)

(assert (=> b!2422308 (= e!1541038 (isConcat!173 lt!875519))))

(declare-fun b!2422309 () Bool)

(declare-fun e!1541042 () Regex!7118)

(assert (=> b!2422309 (= e!1541042 EmptyExpr!7118)))

(declare-fun b!2422310 () Bool)

(declare-fun e!1541040 () Bool)

(assert (=> b!2422310 (= e!1541040 e!1541039)))

(declare-fun c!386214 () Bool)

(assert (=> b!2422310 (= c!386214 (isEmpty!16400 lt!875454))))

(declare-fun b!2422311 () Bool)

(declare-fun e!1541043 () Bool)

(assert (=> b!2422311 (= e!1541043 (isEmpty!16400 (t!208451 lt!875454)))))

(declare-fun b!2422312 () Bool)

(assert (=> b!2422312 (= e!1541038 (= lt!875519 (head!5448 lt!875454)))))

(declare-fun b!2422313 () Bool)

(assert (=> b!2422313 (= e!1541042 (Concat!11754 (h!33777 lt!875454) (generalisedConcat!219 (t!208451 lt!875454))))))

(assert (=> d!702014 e!1541040))

(declare-fun res!1028765 () Bool)

(assert (=> d!702014 (=> (not res!1028765) (not e!1541040))))

(assert (=> d!702014 (= res!1028765 (validRegex!2838 lt!875519))))

(assert (=> d!702014 (= lt!875519 e!1541041)))

(declare-fun c!386211 () Bool)

(assert (=> d!702014 (= c!386211 e!1541043)))

(declare-fun res!1028766 () Bool)

(assert (=> d!702014 (=> (not res!1028766) (not e!1541043))))

(assert (=> d!702014 (= res!1028766 (is-Cons!28376 lt!875454))))

(assert (=> d!702014 (forall!5752 lt!875454 lambda!91234)))

(assert (=> d!702014 (= (generalisedConcat!219 lt!875454) lt!875519)))

(declare-fun b!2422314 () Bool)

(assert (=> b!2422314 (= e!1541041 e!1541042)))

(declare-fun c!386213 () Bool)

(assert (=> b!2422314 (= c!386213 (is-Cons!28376 lt!875454))))

(assert (= (and d!702014 res!1028766) b!2422311))

(assert (= (and d!702014 c!386211) b!2422307))

(assert (= (and d!702014 (not c!386211)) b!2422314))

(assert (= (and b!2422314 c!386213) b!2422313))

(assert (= (and b!2422314 (not c!386213)) b!2422309))

(assert (= (and d!702014 res!1028765) b!2422310))

(assert (= (and b!2422310 c!386214) b!2422305))

(assert (= (and b!2422310 (not c!386214)) b!2422306))

(assert (= (and b!2422306 c!386212) b!2422312))

(assert (= (and b!2422306 (not c!386212)) b!2422308))

(declare-fun m!2808613 () Bool)

(assert (=> b!2422308 m!2808613))

(assert (=> b!2422310 m!2808483))

(declare-fun m!2808615 () Bool)

(assert (=> b!2422305 m!2808615))

(declare-fun m!2808617 () Bool)

(assert (=> b!2422313 m!2808617))

(declare-fun m!2808619 () Bool)

(assert (=> b!2422312 m!2808619))

(declare-fun m!2808621 () Bool)

(assert (=> b!2422306 m!2808621))

(assert (=> b!2422306 m!2808621))

(declare-fun m!2808623 () Bool)

(assert (=> b!2422306 m!2808623))

(declare-fun m!2808625 () Bool)

(assert (=> d!702014 m!2808625))

(declare-fun m!2808627 () Bool)

(assert (=> d!702014 m!2808627))

(declare-fun m!2808629 () Bool)

(assert (=> b!2422311 m!2808629))

(assert (=> b!2422067 d!702014))

(declare-fun d!702016 () Bool)

(declare-fun isEmpty!16403 (Option!5619) Bool)

(assert (=> d!702016 (= (isDefined!4445 (ite c!386152 call!148043 lt!875449)) (not (isEmpty!16403 (ite c!386152 call!148043 lt!875449))))))

(declare-fun bs!463773 () Bool)

(assert (= bs!463773 d!702016))

(declare-fun m!2808631 () Bool)

(assert (=> bs!463773 m!2808631))

(assert (=> bm!148043 d!702016))

(declare-fun d!702018 () Bool)

(assert (=> d!702018 (matchR!3235 (Concat!11754 lt!875458 EmptyExpr!7118) (++!7039 (_1!16549 lt!875448) (_2!16549 lt!875448)))))

(declare-fun lt!875522 () Unit!41567)

(declare-fun choose!14338 (Regex!7118 Regex!7118 List!28475 List!28475 List!28475) Unit!41567)

(assert (=> d!702018 (= lt!875522 (choose!14338 lt!875458 EmptyExpr!7118 (_1!16549 lt!875448) (_2!16549 lt!875448) s!9460))))

(assert (=> d!702018 (validRegex!2838 lt!875458)))

(assert (=> d!702018 (= (lemmaFindSeparationIsDefinedThenConcatMatches!67 lt!875458 EmptyExpr!7118 (_1!16549 lt!875448) (_2!16549 lt!875448) s!9460) lt!875522)))

(declare-fun bs!463774 () Bool)

(assert (= bs!463774 d!702018))

(declare-fun m!2808633 () Bool)

(assert (=> bs!463774 m!2808633))

(assert (=> bs!463774 m!2808633))

(declare-fun m!2808635 () Bool)

(assert (=> bs!463774 m!2808635))

(declare-fun m!2808637 () Bool)

(assert (=> bs!463774 m!2808637))

(assert (=> bs!463774 m!2808547))

(assert (=> b!2422059 d!702018))

(declare-fun d!702020 () Bool)

(assert (=> d!702020 (= (get!8730 lt!875449) (v!31026 lt!875449))))

(assert (=> b!2422059 d!702020))

(declare-fun b!2422335 () Bool)

(declare-fun e!1541055 () Bool)

(assert (=> b!2422335 (= e!1541055 (= (head!5450 s!9460) (c!386154 r!13927)))))

(declare-fun b!2422336 () Bool)

(declare-fun res!1028783 () Bool)

(declare-fun e!1541059 () Bool)

(assert (=> b!2422336 (=> res!1028783 e!1541059)))

(assert (=> b!2422336 (= res!1028783 (not (is-ElementMatch!7118 r!13927)))))

(declare-fun e!1541056 () Bool)

(assert (=> b!2422336 (= e!1541056 e!1541059)))

(declare-fun b!2422337 () Bool)

(declare-fun e!1541060 () Bool)

(declare-fun lt!875523 () Bool)

(declare-fun call!148081 () Bool)

(assert (=> b!2422337 (= e!1541060 (= lt!875523 call!148081))))

(declare-fun b!2422338 () Bool)

(declare-fun e!1541057 () Bool)

(assert (=> b!2422338 (= e!1541057 (nullable!2153 r!13927))))

(declare-fun b!2422339 () Bool)

(declare-fun e!1541058 () Bool)

(declare-fun e!1541054 () Bool)

(assert (=> b!2422339 (= e!1541058 e!1541054)))

(declare-fun res!1028787 () Bool)

(assert (=> b!2422339 (=> res!1028787 e!1541054)))

(assert (=> b!2422339 (= res!1028787 call!148081)))

(declare-fun b!2422340 () Bool)

(assert (=> b!2422340 (= e!1541056 (not lt!875523))))

(declare-fun b!2422341 () Bool)

(declare-fun res!1028790 () Bool)

(assert (=> b!2422341 (=> (not res!1028790) (not e!1541055))))

(assert (=> b!2422341 (= res!1028790 (not call!148081))))

(declare-fun b!2422343 () Bool)

(assert (=> b!2422343 (= e!1541059 e!1541058)))

(declare-fun res!1028789 () Bool)

(assert (=> b!2422343 (=> (not res!1028789) (not e!1541058))))

(assert (=> b!2422343 (= res!1028789 (not lt!875523))))

(declare-fun bm!148076 () Bool)

(assert (=> bm!148076 (= call!148081 (isEmpty!16402 s!9460))))

(declare-fun b!2422344 () Bool)

(assert (=> b!2422344 (= e!1541054 (not (= (head!5450 s!9460) (c!386154 r!13927))))))

(declare-fun b!2422345 () Bool)

(declare-fun res!1028785 () Bool)

(assert (=> b!2422345 (=> (not res!1028785) (not e!1541055))))

(assert (=> b!2422345 (= res!1028785 (isEmpty!16402 (tail!3722 s!9460)))))

(declare-fun b!2422346 () Bool)

(assert (=> b!2422346 (= e!1541057 (matchR!3235 (derivativeStep!1810 r!13927 (head!5450 s!9460)) (tail!3722 s!9460)))))

(declare-fun d!702022 () Bool)

(assert (=> d!702022 e!1541060))

(declare-fun c!386218 () Bool)

(assert (=> d!702022 (= c!386218 (is-EmptyExpr!7118 r!13927))))

(assert (=> d!702022 (= lt!875523 e!1541057)))

(declare-fun c!386217 () Bool)

(assert (=> d!702022 (= c!386217 (isEmpty!16402 s!9460))))

(assert (=> d!702022 (validRegex!2838 r!13927)))

(assert (=> d!702022 (= (matchR!3235 r!13927 s!9460) lt!875523)))

(declare-fun b!2422342 () Bool)

(assert (=> b!2422342 (= e!1541060 e!1541056)))

(declare-fun c!386219 () Bool)

(assert (=> b!2422342 (= c!386219 (is-EmptyLang!7118 r!13927))))

(declare-fun b!2422347 () Bool)

(declare-fun res!1028786 () Bool)

(assert (=> b!2422347 (=> res!1028786 e!1541059)))

(assert (=> b!2422347 (= res!1028786 e!1541055)))

(declare-fun res!1028788 () Bool)

(assert (=> b!2422347 (=> (not res!1028788) (not e!1541055))))

(assert (=> b!2422347 (= res!1028788 lt!875523)))

(declare-fun b!2422348 () Bool)

(declare-fun res!1028784 () Bool)

(assert (=> b!2422348 (=> res!1028784 e!1541054)))

(assert (=> b!2422348 (= res!1028784 (not (isEmpty!16402 (tail!3722 s!9460))))))

(assert (= (and d!702022 c!386217) b!2422338))

(assert (= (and d!702022 (not c!386217)) b!2422346))

(assert (= (and d!702022 c!386218) b!2422337))

(assert (= (and d!702022 (not c!386218)) b!2422342))

(assert (= (and b!2422342 c!386219) b!2422340))

(assert (= (and b!2422342 (not c!386219)) b!2422336))

(assert (= (and b!2422336 (not res!1028783)) b!2422347))

(assert (= (and b!2422347 res!1028788) b!2422341))

(assert (= (and b!2422341 res!1028790) b!2422345))

(assert (= (and b!2422345 res!1028785) b!2422335))

(assert (= (and b!2422347 (not res!1028786)) b!2422343))

(assert (= (and b!2422343 res!1028789) b!2422339))

(assert (= (and b!2422339 (not res!1028787)) b!2422348))

(assert (= (and b!2422348 (not res!1028784)) b!2422344))

(assert (= (or b!2422337 b!2422339 b!2422341) bm!148076))

(assert (=> b!2422335 m!2808599))

(assert (=> b!2422344 m!2808599))

(assert (=> b!2422345 m!2808601))

(assert (=> b!2422345 m!2808601))

(assert (=> b!2422345 m!2808603))

(assert (=> bm!148076 m!2808605))

(declare-fun m!2808639 () Bool)

(assert (=> b!2422338 m!2808639))

(assert (=> d!702022 m!2808605))

(assert (=> d!702022 m!2808447))

(assert (=> b!2422348 m!2808601))

(assert (=> b!2422348 m!2808601))

(assert (=> b!2422348 m!2808603))

(assert (=> b!2422346 m!2808599))

(assert (=> b!2422346 m!2808599))

(declare-fun m!2808641 () Bool)

(assert (=> b!2422346 m!2808641))

(assert (=> b!2422346 m!2808601))

(assert (=> b!2422346 m!2808641))

(assert (=> b!2422346 m!2808601))

(declare-fun m!2808643 () Bool)

(assert (=> b!2422346 m!2808643))

(assert (=> b!2422068 d!702022))

(declare-fun b!2422397 () Bool)

(assert (=> b!2422397 true))

(assert (=> b!2422397 true))

(declare-fun bs!463775 () Bool)

(declare-fun b!2422401 () Bool)

(assert (= bs!463775 (and b!2422401 b!2422397)))

(declare-fun lambda!91240 () Int)

(declare-fun lambda!91239 () Int)

(assert (=> bs!463775 (not (= lambda!91240 lambda!91239))))

(assert (=> b!2422401 true))

(assert (=> b!2422401 true))

(declare-fun bm!148082 () Bool)

(declare-fun call!148088 () Bool)

(declare-fun c!386231 () Bool)

(declare-fun Exists!1158 (Int) Bool)

(assert (=> bm!148082 (= call!148088 (Exists!1158 (ite c!386231 lambda!91239 lambda!91240)))))

(declare-fun b!2422395 () Bool)

(declare-fun e!1541087 () Bool)

(assert (=> b!2422395 (= e!1541087 (= s!9460 (Cons!28377 (c!386154 r!13927) Nil!28377)))))

(declare-fun b!2422396 () Bool)

(declare-fun e!1541086 () Bool)

(declare-fun call!148087 () Bool)

(assert (=> b!2422396 (= e!1541086 call!148087)))

(declare-fun bm!148083 () Bool)

(assert (=> bm!148083 (= call!148087 (isEmpty!16402 s!9460))))

(declare-fun e!1541089 () Bool)

(assert (=> b!2422397 (= e!1541089 call!148088)))

(declare-fun b!2422398 () Bool)

(declare-fun e!1541092 () Bool)

(assert (=> b!2422398 (= e!1541092 (matchRSpec!967 (regTwo!14749 r!13927) s!9460))))

(declare-fun b!2422400 () Bool)

(declare-fun e!1541088 () Bool)

(declare-fun e!1541091 () Bool)

(assert (=> b!2422400 (= e!1541088 e!1541091)))

(assert (=> b!2422400 (= c!386231 (is-Star!7118 r!13927))))

(assert (=> b!2422401 (= e!1541091 call!148088)))

(declare-fun b!2422402 () Bool)

(declare-fun c!386232 () Bool)

(assert (=> b!2422402 (= c!386232 (is-Union!7118 r!13927))))

(assert (=> b!2422402 (= e!1541087 e!1541088)))

(declare-fun b!2422403 () Bool)

(declare-fun res!1028815 () Bool)

(assert (=> b!2422403 (=> res!1028815 e!1541089)))

(assert (=> b!2422403 (= res!1028815 call!148087)))

(assert (=> b!2422403 (= e!1541091 e!1541089)))

(declare-fun b!2422404 () Bool)

(assert (=> b!2422404 (= e!1541088 e!1541092)))

(declare-fun res!1028816 () Bool)

(assert (=> b!2422404 (= res!1028816 (matchRSpec!967 (regOne!14749 r!13927) s!9460))))

(assert (=> b!2422404 (=> res!1028816 e!1541092)))

(declare-fun b!2422405 () Bool)

(declare-fun e!1541090 () Bool)

(assert (=> b!2422405 (= e!1541086 e!1541090)))

(declare-fun res!1028817 () Bool)

(assert (=> b!2422405 (= res!1028817 (not (is-EmptyLang!7118 r!13927)))))

(assert (=> b!2422405 (=> (not res!1028817) (not e!1541090))))

(declare-fun b!2422399 () Bool)

(declare-fun c!386233 () Bool)

(assert (=> b!2422399 (= c!386233 (is-ElementMatch!7118 r!13927))))

(assert (=> b!2422399 (= e!1541090 e!1541087)))

(declare-fun d!702024 () Bool)

(declare-fun c!386234 () Bool)

(assert (=> d!702024 (= c!386234 (is-EmptyExpr!7118 r!13927))))

(assert (=> d!702024 (= (matchRSpec!967 r!13927 s!9460) e!1541086)))

(assert (= (and d!702024 c!386234) b!2422396))

(assert (= (and d!702024 (not c!386234)) b!2422405))

(assert (= (and b!2422405 res!1028817) b!2422399))

(assert (= (and b!2422399 c!386233) b!2422395))

(assert (= (and b!2422399 (not c!386233)) b!2422402))

(assert (= (and b!2422402 c!386232) b!2422404))

(assert (= (and b!2422402 (not c!386232)) b!2422400))

(assert (= (and b!2422404 (not res!1028816)) b!2422398))

(assert (= (and b!2422400 c!386231) b!2422403))

(assert (= (and b!2422400 (not c!386231)) b!2422401))

(assert (= (and b!2422403 (not res!1028815)) b!2422397))

(assert (= (or b!2422397 b!2422401) bm!148082))

(assert (= (or b!2422396 b!2422403) bm!148083))

(declare-fun m!2808661 () Bool)

(assert (=> bm!148082 m!2808661))

(assert (=> bm!148083 m!2808605))

(declare-fun m!2808663 () Bool)

(assert (=> b!2422398 m!2808663))

(declare-fun m!2808665 () Bool)

(assert (=> b!2422404 m!2808665))

(assert (=> b!2422068 d!702024))

(declare-fun d!702030 () Bool)

(assert (=> d!702030 (= (matchR!3235 r!13927 s!9460) (matchRSpec!967 r!13927 s!9460))))

(declare-fun lt!875530 () Unit!41567)

(declare-fun choose!14339 (Regex!7118 List!28475) Unit!41567)

(assert (=> d!702030 (= lt!875530 (choose!14339 r!13927 s!9460))))

(assert (=> d!702030 (validRegex!2838 r!13927)))

(assert (=> d!702030 (= (mainMatchTheorem!967 r!13927 s!9460) lt!875530)))

(declare-fun bs!463776 () Bool)

(assert (= bs!463776 d!702030))

(assert (=> bs!463776 m!2808449))

(assert (=> bs!463776 m!2808451))

(declare-fun m!2808667 () Bool)

(assert (=> bs!463776 m!2808667))

(assert (=> bs!463776 m!2808447))

(assert (=> b!2422068 d!702030))

(declare-fun d!702032 () Bool)

(assert (=> d!702032 (= (isEmpty!16400 l!9164) (is-Nil!28376 l!9164))))

(assert (=> b!2422060 d!702032))

(declare-fun b!2422444 () Bool)

(declare-fun e!1541110 () List!28475)

(assert (=> b!2422444 (= e!1541110 (ite c!386152 Nil!28377 (_2!16549 lt!875448)))))

(declare-fun b!2422445 () Bool)

(assert (=> b!2422445 (= e!1541110 (Cons!28377 (h!33778 (ite c!386152 s!9460 (_1!16549 lt!875448))) (++!7039 (t!208452 (ite c!386152 s!9460 (_1!16549 lt!875448))) (ite c!386152 Nil!28377 (_2!16549 lt!875448)))))))

(declare-fun d!702034 () Bool)

(declare-fun e!1541111 () Bool)

(assert (=> d!702034 e!1541111))

(declare-fun res!1028836 () Bool)

(assert (=> d!702034 (=> (not res!1028836) (not e!1541111))))

(declare-fun lt!875534 () List!28475)

(declare-fun content!3904 (List!28475) (Set C!14394))

(assert (=> d!702034 (= res!1028836 (= (content!3904 lt!875534) (set.union (content!3904 (ite c!386152 s!9460 (_1!16549 lt!875448))) (content!3904 (ite c!386152 Nil!28377 (_2!16549 lt!875448))))))))

(assert (=> d!702034 (= lt!875534 e!1541110)))

(declare-fun c!386243 () Bool)

(assert (=> d!702034 (= c!386243 (is-Nil!28377 (ite c!386152 s!9460 (_1!16549 lt!875448))))))

(assert (=> d!702034 (= (++!7039 (ite c!386152 s!9460 (_1!16549 lt!875448)) (ite c!386152 Nil!28377 (_2!16549 lt!875448))) lt!875534)))

(declare-fun b!2422447 () Bool)

(assert (=> b!2422447 (= e!1541111 (or (not (= (ite c!386152 Nil!28377 (_2!16549 lt!875448)) Nil!28377)) (= lt!875534 (ite c!386152 s!9460 (_1!16549 lt!875448)))))))

(declare-fun b!2422446 () Bool)

(declare-fun res!1028837 () Bool)

(assert (=> b!2422446 (=> (not res!1028837) (not e!1541111))))

(declare-fun size!22242 (List!28475) Int)

(assert (=> b!2422446 (= res!1028837 (= (size!22242 lt!875534) (+ (size!22242 (ite c!386152 s!9460 (_1!16549 lt!875448))) (size!22242 (ite c!386152 Nil!28377 (_2!16549 lt!875448))))))))

(assert (= (and d!702034 c!386243) b!2422444))

(assert (= (and d!702034 (not c!386243)) b!2422445))

(assert (= (and d!702034 res!1028836) b!2422446))

(assert (= (and b!2422446 res!1028837) b!2422447))

(declare-fun m!2808689 () Bool)

(assert (=> b!2422445 m!2808689))

(declare-fun m!2808691 () Bool)

(assert (=> d!702034 m!2808691))

(declare-fun m!2808693 () Bool)

(assert (=> d!702034 m!2808693))

(declare-fun m!2808695 () Bool)

(assert (=> d!702034 m!2808695))

(declare-fun m!2808697 () Bool)

(assert (=> b!2422446 m!2808697))

(declare-fun m!2808699 () Bool)

(assert (=> b!2422446 m!2808699))

(declare-fun m!2808701 () Bool)

(assert (=> b!2422446 m!2808701))

(assert (=> bm!148040 d!702034))

(declare-fun d!702040 () Bool)

(assert (=> d!702040 (matchR!3235 (Concat!11754 lt!875458 EmptyExpr!7118) (++!7039 s!9460 Nil!28377))))

(declare-fun lt!875537 () Unit!41567)

(declare-fun choose!14340 (Regex!7118 Regex!7118 List!28475 List!28475) Unit!41567)

(assert (=> d!702040 (= lt!875537 (choose!14340 lt!875458 EmptyExpr!7118 s!9460 Nil!28377))))

(declare-fun e!1541114 () Bool)

(assert (=> d!702040 e!1541114))

(declare-fun res!1028840 () Bool)

(assert (=> d!702040 (=> (not res!1028840) (not e!1541114))))

(assert (=> d!702040 (= res!1028840 (validRegex!2838 lt!875458))))

(assert (=> d!702040 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!93 lt!875458 EmptyExpr!7118 s!9460 Nil!28377) lt!875537)))

(declare-fun b!2422450 () Bool)

(assert (=> b!2422450 (= e!1541114 (validRegex!2838 EmptyExpr!7118))))

(assert (= (and d!702040 res!1028840) b!2422450))

(declare-fun m!2808703 () Bool)

(assert (=> d!702040 m!2808703))

(assert (=> d!702040 m!2808703))

(declare-fun m!2808705 () Bool)

(assert (=> d!702040 m!2808705))

(declare-fun m!2808707 () Bool)

(assert (=> d!702040 m!2808707))

(assert (=> d!702040 m!2808547))

(declare-fun m!2808709 () Bool)

(assert (=> b!2422450 m!2808709))

(assert (=> b!2422061 d!702040))

(declare-fun b!2422451 () Bool)

(declare-fun e!1541116 () Bool)

(assert (=> b!2422451 (= e!1541116 (= (head!5450 call!148048) (c!386154 lt!875447)))))

(declare-fun b!2422452 () Bool)

(declare-fun res!1028841 () Bool)

(declare-fun e!1541120 () Bool)

(assert (=> b!2422452 (=> res!1028841 e!1541120)))

(assert (=> b!2422452 (= res!1028841 (not (is-ElementMatch!7118 lt!875447)))))

(declare-fun e!1541117 () Bool)

(assert (=> b!2422452 (= e!1541117 e!1541120)))

(declare-fun b!2422453 () Bool)

(declare-fun e!1541121 () Bool)

(declare-fun lt!875538 () Bool)

(declare-fun call!148090 () Bool)

(assert (=> b!2422453 (= e!1541121 (= lt!875538 call!148090))))

(declare-fun b!2422454 () Bool)

(declare-fun e!1541118 () Bool)

(assert (=> b!2422454 (= e!1541118 (nullable!2153 lt!875447))))

(declare-fun b!2422455 () Bool)

(declare-fun e!1541119 () Bool)

(declare-fun e!1541115 () Bool)

(assert (=> b!2422455 (= e!1541119 e!1541115)))

(declare-fun res!1028845 () Bool)

(assert (=> b!2422455 (=> res!1028845 e!1541115)))

(assert (=> b!2422455 (= res!1028845 call!148090)))

(declare-fun b!2422456 () Bool)

(assert (=> b!2422456 (= e!1541117 (not lt!875538))))

(declare-fun b!2422457 () Bool)

(declare-fun res!1028848 () Bool)

(assert (=> b!2422457 (=> (not res!1028848) (not e!1541116))))

(assert (=> b!2422457 (= res!1028848 (not call!148090))))

(declare-fun b!2422459 () Bool)

(assert (=> b!2422459 (= e!1541120 e!1541119)))

(declare-fun res!1028847 () Bool)

(assert (=> b!2422459 (=> (not res!1028847) (not e!1541119))))

(assert (=> b!2422459 (= res!1028847 (not lt!875538))))

(declare-fun bm!148085 () Bool)

(assert (=> bm!148085 (= call!148090 (isEmpty!16402 call!148048))))

(declare-fun b!2422460 () Bool)

(assert (=> b!2422460 (= e!1541115 (not (= (head!5450 call!148048) (c!386154 lt!875447))))))

(declare-fun b!2422461 () Bool)

(declare-fun res!1028843 () Bool)

(assert (=> b!2422461 (=> (not res!1028843) (not e!1541116))))

(assert (=> b!2422461 (= res!1028843 (isEmpty!16402 (tail!3722 call!148048)))))

(declare-fun b!2422462 () Bool)

(assert (=> b!2422462 (= e!1541118 (matchR!3235 (derivativeStep!1810 lt!875447 (head!5450 call!148048)) (tail!3722 call!148048)))))

(declare-fun d!702042 () Bool)

(assert (=> d!702042 e!1541121))

(declare-fun c!386245 () Bool)

(assert (=> d!702042 (= c!386245 (is-EmptyExpr!7118 lt!875447))))

(assert (=> d!702042 (= lt!875538 e!1541118)))

(declare-fun c!386244 () Bool)

(assert (=> d!702042 (= c!386244 (isEmpty!16402 call!148048))))

(assert (=> d!702042 (validRegex!2838 lt!875447)))

(assert (=> d!702042 (= (matchR!3235 lt!875447 call!148048) lt!875538)))

(declare-fun b!2422458 () Bool)

(assert (=> b!2422458 (= e!1541121 e!1541117)))

(declare-fun c!386246 () Bool)

(assert (=> b!2422458 (= c!386246 (is-EmptyLang!7118 lt!875447))))

(declare-fun b!2422463 () Bool)

(declare-fun res!1028844 () Bool)

(assert (=> b!2422463 (=> res!1028844 e!1541120)))

(assert (=> b!2422463 (= res!1028844 e!1541116)))

(declare-fun res!1028846 () Bool)

(assert (=> b!2422463 (=> (not res!1028846) (not e!1541116))))

(assert (=> b!2422463 (= res!1028846 lt!875538)))

(declare-fun b!2422464 () Bool)

(declare-fun res!1028842 () Bool)

(assert (=> b!2422464 (=> res!1028842 e!1541115)))

(assert (=> b!2422464 (= res!1028842 (not (isEmpty!16402 (tail!3722 call!148048))))))

(assert (= (and d!702042 c!386244) b!2422454))

(assert (= (and d!702042 (not c!386244)) b!2422462))

(assert (= (and d!702042 c!386245) b!2422453))

(assert (= (and d!702042 (not c!386245)) b!2422458))

(assert (= (and b!2422458 c!386246) b!2422456))

(assert (= (and b!2422458 (not c!386246)) b!2422452))

(assert (= (and b!2422452 (not res!1028841)) b!2422463))

(assert (= (and b!2422463 res!1028846) b!2422457))

(assert (= (and b!2422457 res!1028848) b!2422461))

(assert (= (and b!2422461 res!1028843) b!2422451))

(assert (= (and b!2422463 (not res!1028844)) b!2422459))

(assert (= (and b!2422459 res!1028847) b!2422455))

(assert (= (and b!2422455 (not res!1028845)) b!2422464))

(assert (= (and b!2422464 (not res!1028842)) b!2422460))

(assert (= (or b!2422453 b!2422455 b!2422457) bm!148085))

(declare-fun m!2808711 () Bool)

(assert (=> b!2422451 m!2808711))

(assert (=> b!2422460 m!2808711))

(declare-fun m!2808713 () Bool)

(assert (=> b!2422461 m!2808713))

(assert (=> b!2422461 m!2808713))

(declare-fun m!2808715 () Bool)

(assert (=> b!2422461 m!2808715))

(declare-fun m!2808717 () Bool)

(assert (=> bm!148085 m!2808717))

(declare-fun m!2808719 () Bool)

(assert (=> b!2422454 m!2808719))

(assert (=> d!702042 m!2808717))

(declare-fun m!2808721 () Bool)

(assert (=> d!702042 m!2808721))

(assert (=> b!2422464 m!2808713))

(assert (=> b!2422464 m!2808713))

(assert (=> b!2422464 m!2808715))

(assert (=> b!2422462 m!2808711))

(assert (=> b!2422462 m!2808711))

(declare-fun m!2808723 () Bool)

(assert (=> b!2422462 m!2808723))

(assert (=> b!2422462 m!2808713))

(assert (=> b!2422462 m!2808723))

(assert (=> b!2422462 m!2808713))

(declare-fun m!2808725 () Bool)

(assert (=> b!2422462 m!2808725))

(assert (=> b!2422061 d!702042))

(declare-fun d!702044 () Bool)

(assert (=> d!702044 (isDefined!4445 (findConcatSeparation!727 lt!875458 EmptyExpr!7118 Nil!28377 s!9460 s!9460))))

(declare-fun lt!875541 () Unit!41567)

(declare-fun choose!14341 (Regex!7118 Regex!7118 List!28475) Unit!41567)

(assert (=> d!702044 (= lt!875541 (choose!14341 lt!875458 EmptyExpr!7118 s!9460))))

(assert (=> d!702044 (validRegex!2838 lt!875458)))

(assert (=> d!702044 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!67 lt!875458 EmptyExpr!7118 s!9460) lt!875541)))

(declare-fun bs!463777 () Bool)

(assert (= bs!463777 d!702044))

(declare-fun m!2808727 () Bool)

(assert (=> bs!463777 m!2808727))

(assert (=> bs!463777 m!2808727))

(declare-fun m!2808729 () Bool)

(assert (=> bs!463777 m!2808729))

(declare-fun m!2808731 () Bool)

(assert (=> bs!463777 m!2808731))

(assert (=> bs!463777 m!2808547))

(assert (=> b!2422061 d!702044))

(declare-fun d!702046 () Bool)

(declare-fun e!1541125 () Bool)

(assert (=> d!702046 e!1541125))

(declare-fun res!1028853 () Bool)

(assert (=> d!702046 (=> res!1028853 e!1541125)))

(declare-fun e!1541122 () Bool)

(assert (=> d!702046 (= res!1028853 e!1541122)))

(declare-fun res!1028849 () Bool)

(assert (=> d!702046 (=> (not res!1028849) (not e!1541122))))

(declare-fun lt!875542 () Option!5619)

(assert (=> d!702046 (= res!1028849 (isDefined!4445 lt!875542))))

(declare-fun e!1541126 () Option!5619)

(assert (=> d!702046 (= lt!875542 e!1541126)))

(declare-fun c!386248 () Bool)

(declare-fun e!1541124 () Bool)

(assert (=> d!702046 (= c!386248 e!1541124)))

(declare-fun res!1028850 () Bool)

(assert (=> d!702046 (=> (not res!1028850) (not e!1541124))))

(assert (=> d!702046 (= res!1028850 (matchR!3235 lt!875458 Nil!28377))))

(assert (=> d!702046 (validRegex!2838 lt!875458)))

(assert (=> d!702046 (= (findConcatSeparation!727 lt!875458 (ite c!386152 EmptyExpr!7118 lt!875459) Nil!28377 s!9460 s!9460) lt!875542)))

(declare-fun b!2422465 () Bool)

(declare-fun e!1541123 () Option!5619)

(assert (=> b!2422465 (= e!1541123 None!5618)))

(declare-fun b!2422466 () Bool)

(declare-fun lt!875544 () Unit!41567)

(declare-fun lt!875543 () Unit!41567)

(assert (=> b!2422466 (= lt!875544 lt!875543)))

(assert (=> b!2422466 (= (++!7039 (++!7039 Nil!28377 (Cons!28377 (h!33778 s!9460) Nil!28377)) (t!208452 s!9460)) s!9460)))

(assert (=> b!2422466 (= lt!875543 (lemmaMoveElementToOtherListKeepsConcatEq!665 Nil!28377 (h!33778 s!9460) (t!208452 s!9460) s!9460))))

(assert (=> b!2422466 (= e!1541123 (findConcatSeparation!727 lt!875458 (ite c!386152 EmptyExpr!7118 lt!875459) (++!7039 Nil!28377 (Cons!28377 (h!33778 s!9460) Nil!28377)) (t!208452 s!9460) s!9460))))

(declare-fun b!2422467 () Bool)

(assert (=> b!2422467 (= e!1541125 (not (isDefined!4445 lt!875542)))))

(declare-fun b!2422468 () Bool)

(assert (=> b!2422468 (= e!1541126 (Some!5618 (tuple2!28017 Nil!28377 s!9460)))))

(declare-fun b!2422469 () Bool)

(assert (=> b!2422469 (= e!1541124 (matchR!3235 (ite c!386152 EmptyExpr!7118 lt!875459) s!9460))))

(declare-fun b!2422470 () Bool)

(declare-fun res!1028851 () Bool)

(assert (=> b!2422470 (=> (not res!1028851) (not e!1541122))))

(assert (=> b!2422470 (= res!1028851 (matchR!3235 (ite c!386152 EmptyExpr!7118 lt!875459) (_2!16549 (get!8730 lt!875542))))))

(declare-fun b!2422471 () Bool)

(assert (=> b!2422471 (= e!1541126 e!1541123)))

(declare-fun c!386247 () Bool)

(assert (=> b!2422471 (= c!386247 (is-Nil!28377 s!9460))))

(declare-fun b!2422472 () Bool)

(declare-fun res!1028852 () Bool)

(assert (=> b!2422472 (=> (not res!1028852) (not e!1541122))))

(assert (=> b!2422472 (= res!1028852 (matchR!3235 lt!875458 (_1!16549 (get!8730 lt!875542))))))

(declare-fun b!2422473 () Bool)

(assert (=> b!2422473 (= e!1541122 (= (++!7039 (_1!16549 (get!8730 lt!875542)) (_2!16549 (get!8730 lt!875542))) s!9460))))

(assert (= (and d!702046 res!1028850) b!2422469))

(assert (= (and d!702046 c!386248) b!2422468))

(assert (= (and d!702046 (not c!386248)) b!2422471))

(assert (= (and b!2422471 c!386247) b!2422465))

(assert (= (and b!2422471 (not c!386247)) b!2422466))

(assert (= (and d!702046 res!1028849) b!2422472))

(assert (= (and b!2422472 res!1028852) b!2422470))

(assert (= (and b!2422470 res!1028851) b!2422473))

(assert (= (and d!702046 (not res!1028853)) b!2422467))

(declare-fun m!2808733 () Bool)

(assert (=> b!2422473 m!2808733))

(declare-fun m!2808735 () Bool)

(assert (=> b!2422473 m!2808735))

(assert (=> b!2422472 m!2808733))

(declare-fun m!2808737 () Bool)

(assert (=> b!2422472 m!2808737))

(declare-fun m!2808739 () Bool)

(assert (=> d!702046 m!2808739))

(assert (=> d!702046 m!2808545))

(assert (=> d!702046 m!2808547))

(declare-fun m!2808741 () Bool)

(assert (=> b!2422469 m!2808741))

(assert (=> b!2422470 m!2808733))

(declare-fun m!2808743 () Bool)

(assert (=> b!2422470 m!2808743))

(assert (=> b!2422466 m!2808553))

(assert (=> b!2422466 m!2808553))

(assert (=> b!2422466 m!2808555))

(assert (=> b!2422466 m!2808557))

(assert (=> b!2422466 m!2808553))

(declare-fun m!2808745 () Bool)

(assert (=> b!2422466 m!2808745))

(assert (=> b!2422467 m!2808739))

(assert (=> bm!148041 d!702046))

(declare-fun d!702048 () Bool)

(assert (=> d!702048 (= (isDefined!4445 call!148045) (not (isEmpty!16403 call!148045)))))

(declare-fun bs!463778 () Bool)

(assert (= bs!463778 d!702048))

(declare-fun m!2808747 () Bool)

(assert (=> bs!463778 m!2808747))

(assert (=> bm!148042 d!702048))

(declare-fun d!702050 () Bool)

(declare-fun res!1028864 () Bool)

(declare-fun e!1541145 () Bool)

(assert (=> d!702050 (=> res!1028864 e!1541145)))

(assert (=> d!702050 (= res!1028864 (is-Nil!28376 l!9164))))

(assert (=> d!702050 (= (forall!5752 l!9164 lambda!91224) e!1541145)))

(declare-fun b!2422500 () Bool)

(declare-fun e!1541146 () Bool)

(assert (=> b!2422500 (= e!1541145 e!1541146)))

(declare-fun res!1028865 () Bool)

(assert (=> b!2422500 (=> (not res!1028865) (not e!1541146))))

(declare-fun dynLambda!12213 (Int Regex!7118) Bool)

(assert (=> b!2422500 (= res!1028865 (dynLambda!12213 lambda!91224 (h!33777 l!9164)))))

(declare-fun b!2422501 () Bool)

(assert (=> b!2422501 (= e!1541146 (forall!5752 (t!208451 l!9164) lambda!91224))))

(assert (= (and d!702050 (not res!1028864)) b!2422500))

(assert (= (and b!2422500 res!1028865) b!2422501))

(declare-fun b_lambda!74651 () Bool)

(assert (=> (not b_lambda!74651) (not b!2422500)))

(declare-fun m!2808749 () Bool)

(assert (=> b!2422500 m!2808749))

(declare-fun m!2808751 () Bool)

(assert (=> b!2422501 m!2808751))

(assert (=> start!237250 d!702050))

(declare-fun e!1541148 () Bool)

(declare-fun b!2422502 () Bool)

(assert (=> b!2422502 (= e!1541148 (= (head!5450 (ite c!386152 s!9460 call!148048)) (c!386154 (ite c!386152 lt!875447 (Concat!11754 lt!875458 EmptyExpr!7118)))))))

(declare-fun b!2422503 () Bool)

(declare-fun res!1028866 () Bool)

(declare-fun e!1541152 () Bool)

(assert (=> b!2422503 (=> res!1028866 e!1541152)))

(assert (=> b!2422503 (= res!1028866 (not (is-ElementMatch!7118 (ite c!386152 lt!875447 (Concat!11754 lt!875458 EmptyExpr!7118)))))))

(declare-fun e!1541149 () Bool)

(assert (=> b!2422503 (= e!1541149 e!1541152)))

(declare-fun b!2422504 () Bool)

(declare-fun e!1541153 () Bool)

(declare-fun lt!875545 () Bool)

(declare-fun call!148091 () Bool)

(assert (=> b!2422504 (= e!1541153 (= lt!875545 call!148091))))

(declare-fun e!1541150 () Bool)

(declare-fun b!2422505 () Bool)

(assert (=> b!2422505 (= e!1541150 (nullable!2153 (ite c!386152 lt!875447 (Concat!11754 lt!875458 EmptyExpr!7118))))))

(declare-fun b!2422506 () Bool)

(declare-fun e!1541151 () Bool)

(declare-fun e!1541147 () Bool)

(assert (=> b!2422506 (= e!1541151 e!1541147)))

(declare-fun res!1028870 () Bool)

(assert (=> b!2422506 (=> res!1028870 e!1541147)))

(assert (=> b!2422506 (= res!1028870 call!148091)))

(declare-fun b!2422507 () Bool)

(assert (=> b!2422507 (= e!1541149 (not lt!875545))))

(declare-fun b!2422508 () Bool)

(declare-fun res!1028873 () Bool)

(assert (=> b!2422508 (=> (not res!1028873) (not e!1541148))))

(assert (=> b!2422508 (= res!1028873 (not call!148091))))

(declare-fun b!2422510 () Bool)

(assert (=> b!2422510 (= e!1541152 e!1541151)))

(declare-fun res!1028872 () Bool)

(assert (=> b!2422510 (=> (not res!1028872) (not e!1541151))))

(assert (=> b!2422510 (= res!1028872 (not lt!875545))))

(declare-fun bm!148086 () Bool)

(assert (=> bm!148086 (= call!148091 (isEmpty!16402 (ite c!386152 s!9460 call!148048)))))

(declare-fun b!2422511 () Bool)

(assert (=> b!2422511 (= e!1541147 (not (= (head!5450 (ite c!386152 s!9460 call!148048)) (c!386154 (ite c!386152 lt!875447 (Concat!11754 lt!875458 EmptyExpr!7118))))))))

(declare-fun b!2422512 () Bool)

(declare-fun res!1028868 () Bool)

(assert (=> b!2422512 (=> (not res!1028868) (not e!1541148))))

(assert (=> b!2422512 (= res!1028868 (isEmpty!16402 (tail!3722 (ite c!386152 s!9460 call!148048))))))

(declare-fun b!2422513 () Bool)

(assert (=> b!2422513 (= e!1541150 (matchR!3235 (derivativeStep!1810 (ite c!386152 lt!875447 (Concat!11754 lt!875458 EmptyExpr!7118)) (head!5450 (ite c!386152 s!9460 call!148048))) (tail!3722 (ite c!386152 s!9460 call!148048))))))

(declare-fun d!702052 () Bool)

(assert (=> d!702052 e!1541153))

(declare-fun c!386258 () Bool)

(assert (=> d!702052 (= c!386258 (is-EmptyExpr!7118 (ite c!386152 lt!875447 (Concat!11754 lt!875458 EmptyExpr!7118))))))

(assert (=> d!702052 (= lt!875545 e!1541150)))

(declare-fun c!386257 () Bool)

(assert (=> d!702052 (= c!386257 (isEmpty!16402 (ite c!386152 s!9460 call!148048)))))

(assert (=> d!702052 (validRegex!2838 (ite c!386152 lt!875447 (Concat!11754 lt!875458 EmptyExpr!7118)))))

(assert (=> d!702052 (= (matchR!3235 (ite c!386152 lt!875447 (Concat!11754 lt!875458 EmptyExpr!7118)) (ite c!386152 s!9460 call!148048)) lt!875545)))

(declare-fun b!2422509 () Bool)

(assert (=> b!2422509 (= e!1541153 e!1541149)))

(declare-fun c!386259 () Bool)

(assert (=> b!2422509 (= c!386259 (is-EmptyLang!7118 (ite c!386152 lt!875447 (Concat!11754 lt!875458 EmptyExpr!7118))))))

(declare-fun b!2422514 () Bool)

(declare-fun res!1028869 () Bool)

(assert (=> b!2422514 (=> res!1028869 e!1541152)))

(assert (=> b!2422514 (= res!1028869 e!1541148)))

(declare-fun res!1028871 () Bool)

(assert (=> b!2422514 (=> (not res!1028871) (not e!1541148))))

(assert (=> b!2422514 (= res!1028871 lt!875545)))

(declare-fun b!2422515 () Bool)

(declare-fun res!1028867 () Bool)

(assert (=> b!2422515 (=> res!1028867 e!1541147)))

(assert (=> b!2422515 (= res!1028867 (not (isEmpty!16402 (tail!3722 (ite c!386152 s!9460 call!148048)))))))

(assert (= (and d!702052 c!386257) b!2422505))

(assert (= (and d!702052 (not c!386257)) b!2422513))

(assert (= (and d!702052 c!386258) b!2422504))

(assert (= (and d!702052 (not c!386258)) b!2422509))

(assert (= (and b!2422509 c!386259) b!2422507))

(assert (= (and b!2422509 (not c!386259)) b!2422503))

(assert (= (and b!2422503 (not res!1028866)) b!2422514))

(assert (= (and b!2422514 res!1028871) b!2422508))

(assert (= (and b!2422508 res!1028873) b!2422512))

(assert (= (and b!2422512 res!1028868) b!2422502))

(assert (= (and b!2422514 (not res!1028869)) b!2422510))

(assert (= (and b!2422510 res!1028872) b!2422506))

(assert (= (and b!2422506 (not res!1028870)) b!2422515))

(assert (= (and b!2422515 (not res!1028867)) b!2422511))

(assert (= (or b!2422504 b!2422506 b!2422508) bm!148086))

(declare-fun m!2808753 () Bool)

(assert (=> b!2422502 m!2808753))

(assert (=> b!2422511 m!2808753))

(declare-fun m!2808755 () Bool)

(assert (=> b!2422512 m!2808755))

(assert (=> b!2422512 m!2808755))

(declare-fun m!2808757 () Bool)

(assert (=> b!2422512 m!2808757))

(declare-fun m!2808759 () Bool)

(assert (=> bm!148086 m!2808759))

(declare-fun m!2808761 () Bool)

(assert (=> b!2422505 m!2808761))

(assert (=> d!702052 m!2808759))

(declare-fun m!2808763 () Bool)

(assert (=> d!702052 m!2808763))

(assert (=> b!2422515 m!2808755))

(assert (=> b!2422515 m!2808755))

(assert (=> b!2422515 m!2808757))

(assert (=> b!2422513 m!2808753))

(assert (=> b!2422513 m!2808753))

(declare-fun m!2808765 () Bool)

(assert (=> b!2422513 m!2808765))

(assert (=> b!2422513 m!2808755))

(assert (=> b!2422513 m!2808765))

(assert (=> b!2422513 m!2808755))

(declare-fun m!2808767 () Bool)

(assert (=> b!2422513 m!2808767))

(assert (=> bm!148038 d!702052))

(declare-fun b!2422526 () Bool)

(declare-fun e!1541158 () Bool)

(declare-fun tp!769638 () Bool)

(assert (=> b!2422526 (= e!1541158 (and tp_is_empty!11649 tp!769638))))

(assert (=> b!2422072 (= tp!769607 e!1541158)))

(assert (= (and b!2422072 (is-Cons!28377 (t!208452 s!9460))) b!2422526))

(declare-fun e!1541161 () Bool)

(assert (=> b!2422077 (= tp!769608 e!1541161)))

(declare-fun b!2422538 () Bool)

(declare-fun tp!769653 () Bool)

(declare-fun tp!769652 () Bool)

(assert (=> b!2422538 (= e!1541161 (and tp!769653 tp!769652))))

(declare-fun b!2422539 () Bool)

(declare-fun tp!769651 () Bool)

(assert (=> b!2422539 (= e!1541161 tp!769651)))

(declare-fun b!2422540 () Bool)

(declare-fun tp!769649 () Bool)

(declare-fun tp!769650 () Bool)

(assert (=> b!2422540 (= e!1541161 (and tp!769649 tp!769650))))

(declare-fun b!2422537 () Bool)

(assert (=> b!2422537 (= e!1541161 tp_is_empty!11649)))

(assert (= (and b!2422077 (is-ElementMatch!7118 (regOne!14748 r!13927))) b!2422537))

(assert (= (and b!2422077 (is-Concat!11754 (regOne!14748 r!13927))) b!2422538))

(assert (= (and b!2422077 (is-Star!7118 (regOne!14748 r!13927))) b!2422539))

(assert (= (and b!2422077 (is-Union!7118 (regOne!14748 r!13927))) b!2422540))

(declare-fun e!1541162 () Bool)

(assert (=> b!2422077 (= tp!769606 e!1541162)))

(declare-fun b!2422542 () Bool)

(declare-fun tp!769658 () Bool)

(declare-fun tp!769657 () Bool)

(assert (=> b!2422542 (= e!1541162 (and tp!769658 tp!769657))))

(declare-fun b!2422543 () Bool)

(declare-fun tp!769656 () Bool)

(assert (=> b!2422543 (= e!1541162 tp!769656)))

(declare-fun b!2422544 () Bool)

(declare-fun tp!769654 () Bool)

(declare-fun tp!769655 () Bool)

(assert (=> b!2422544 (= e!1541162 (and tp!769654 tp!769655))))

(declare-fun b!2422541 () Bool)

(assert (=> b!2422541 (= e!1541162 tp_is_empty!11649)))

(assert (= (and b!2422077 (is-ElementMatch!7118 (regTwo!14748 r!13927))) b!2422541))

(assert (= (and b!2422077 (is-Concat!11754 (regTwo!14748 r!13927))) b!2422542))

(assert (= (and b!2422077 (is-Star!7118 (regTwo!14748 r!13927))) b!2422543))

(assert (= (and b!2422077 (is-Union!7118 (regTwo!14748 r!13927))) b!2422544))

(declare-fun e!1541163 () Bool)

(assert (=> b!2422073 (= tp!769604 e!1541163)))

(declare-fun b!2422546 () Bool)

(declare-fun tp!769663 () Bool)

(declare-fun tp!769662 () Bool)

(assert (=> b!2422546 (= e!1541163 (and tp!769663 tp!769662))))

(declare-fun b!2422547 () Bool)

(declare-fun tp!769661 () Bool)

(assert (=> b!2422547 (= e!1541163 tp!769661)))

(declare-fun b!2422548 () Bool)

(declare-fun tp!769659 () Bool)

(declare-fun tp!769660 () Bool)

(assert (=> b!2422548 (= e!1541163 (and tp!769659 tp!769660))))

(declare-fun b!2422545 () Bool)

(assert (=> b!2422545 (= e!1541163 tp_is_empty!11649)))

(assert (= (and b!2422073 (is-ElementMatch!7118 (reg!7447 r!13927))) b!2422545))

(assert (= (and b!2422073 (is-Concat!11754 (reg!7447 r!13927))) b!2422546))

(assert (= (and b!2422073 (is-Star!7118 (reg!7447 r!13927))) b!2422547))

(assert (= (and b!2422073 (is-Union!7118 (reg!7447 r!13927))) b!2422548))

(declare-fun e!1541164 () Bool)

(assert (=> b!2422069 (= tp!769609 e!1541164)))

(declare-fun b!2422550 () Bool)

(declare-fun tp!769668 () Bool)

(declare-fun tp!769667 () Bool)

(assert (=> b!2422550 (= e!1541164 (and tp!769668 tp!769667))))

(declare-fun b!2422551 () Bool)

(declare-fun tp!769666 () Bool)

(assert (=> b!2422551 (= e!1541164 tp!769666)))

(declare-fun b!2422552 () Bool)

(declare-fun tp!769664 () Bool)

(declare-fun tp!769665 () Bool)

(assert (=> b!2422552 (= e!1541164 (and tp!769664 tp!769665))))

(declare-fun b!2422549 () Bool)

(assert (=> b!2422549 (= e!1541164 tp_is_empty!11649)))

(assert (= (and b!2422069 (is-ElementMatch!7118 (regOne!14749 r!13927))) b!2422549))

(assert (= (and b!2422069 (is-Concat!11754 (regOne!14749 r!13927))) b!2422550))

(assert (= (and b!2422069 (is-Star!7118 (regOne!14749 r!13927))) b!2422551))

(assert (= (and b!2422069 (is-Union!7118 (regOne!14749 r!13927))) b!2422552))

(declare-fun e!1541165 () Bool)

(assert (=> b!2422069 (= tp!769610 e!1541165)))

(declare-fun b!2422554 () Bool)

(declare-fun tp!769673 () Bool)

(declare-fun tp!769672 () Bool)

(assert (=> b!2422554 (= e!1541165 (and tp!769673 tp!769672))))

(declare-fun b!2422555 () Bool)

(declare-fun tp!769671 () Bool)

(assert (=> b!2422555 (= e!1541165 tp!769671)))

(declare-fun b!2422556 () Bool)

(declare-fun tp!769669 () Bool)

(declare-fun tp!769670 () Bool)

(assert (=> b!2422556 (= e!1541165 (and tp!769669 tp!769670))))

(declare-fun b!2422553 () Bool)

(assert (=> b!2422553 (= e!1541165 tp_is_empty!11649)))

(assert (= (and b!2422069 (is-ElementMatch!7118 (regTwo!14749 r!13927))) b!2422553))

(assert (= (and b!2422069 (is-Concat!11754 (regTwo!14749 r!13927))) b!2422554))

(assert (= (and b!2422069 (is-Star!7118 (regTwo!14749 r!13927))) b!2422555))

(assert (= (and b!2422069 (is-Union!7118 (regTwo!14749 r!13927))) b!2422556))

(declare-fun e!1541166 () Bool)

(assert (=> b!2422071 (= tp!769611 e!1541166)))

(declare-fun b!2422558 () Bool)

(declare-fun tp!769678 () Bool)

(declare-fun tp!769677 () Bool)

(assert (=> b!2422558 (= e!1541166 (and tp!769678 tp!769677))))

(declare-fun b!2422559 () Bool)

(declare-fun tp!769676 () Bool)

(assert (=> b!2422559 (= e!1541166 tp!769676)))

(declare-fun b!2422560 () Bool)

(declare-fun tp!769674 () Bool)

(declare-fun tp!769675 () Bool)

(assert (=> b!2422560 (= e!1541166 (and tp!769674 tp!769675))))

(declare-fun b!2422557 () Bool)

(assert (=> b!2422557 (= e!1541166 tp_is_empty!11649)))

(assert (= (and b!2422071 (is-ElementMatch!7118 (h!33777 l!9164))) b!2422557))

(assert (= (and b!2422071 (is-Concat!11754 (h!33777 l!9164))) b!2422558))

(assert (= (and b!2422071 (is-Star!7118 (h!33777 l!9164))) b!2422559))

(assert (= (and b!2422071 (is-Union!7118 (h!33777 l!9164))) b!2422560))

(declare-fun b!2422565 () Bool)

(declare-fun e!1541169 () Bool)

(declare-fun tp!769683 () Bool)

(declare-fun tp!769684 () Bool)

(assert (=> b!2422565 (= e!1541169 (and tp!769683 tp!769684))))

(assert (=> b!2422071 (= tp!769605 e!1541169)))

(assert (= (and b!2422071 (is-Cons!28376 (t!208451 l!9164))) b!2422565))

(declare-fun b_lambda!74653 () Bool)

(assert (= b_lambda!74651 (or start!237250 b_lambda!74653)))

(declare-fun bs!463779 () Bool)

(declare-fun d!702054 () Bool)

(assert (= bs!463779 (and d!702054 start!237250)))

(assert (=> bs!463779 (= (dynLambda!12213 lambda!91224 (h!33777 l!9164)) (validRegex!2838 (h!33777 l!9164)))))

(declare-fun m!2808769 () Bool)

(assert (=> bs!463779 m!2808769))

(assert (=> b!2422500 d!702054))

(push 1)

(assert (not b!2422446))

(assert (not b!2422450))

(assert (not bm!148085))

(assert (not b!2422515))

(assert (not b!2422512))

(assert (not b!2422460))

(assert (not b!2422540))

(assert (not b!2422467))

(assert (not d!702042))

(assert (not b!2422308))

(assert (not b!2422548))

(assert (not b!2422466))

(assert (not b!2422464))

(assert (not b!2422550))

(assert (not b!2422469))

(assert (not b!2422208))

(assert (not b!2422311))

(assert (not b!2422473))

(assert (not b!2422213))

(assert (not bm!148068))

(assert (not d!702030))

(assert (not b!2422551))

(assert (not b!2422454))

(assert (not d!702004))

(assert (not d!702034))

(assert (not b!2422345))

(assert (not d!702000))

(assert (not b!2422542))

(assert (not d!702010))

(assert (not b!2422539))

(assert (not d!702018))

(assert (not b!2422558))

(assert (not b!2422292))

(assert (not b!2422470))

(assert (not bm!148083))

(assert (not b!2422505))

(assert (not d!702044))

(assert (not b!2422160))

(assert (not b!2422445))

(assert (not b!2422502))

(assert (not b!2422398))

(assert (not b!2422163))

(assert (not b!2422161))

(assert (not b!2422560))

(assert (not b!2422556))

(assert (not b!2422164))

(assert (not b!2422526))

(assert (not b!2422546))

(assert (not b!2422538))

(assert (not b!2422346))

(assert (not b!2422286))

(assert (not bm!148082))

(assert (not b!2422543))

(assert (not b!2422547))

(assert (not b!2422348))

(assert (not b!2422513))

(assert (not b!2422335))

(assert (not bm!148073))

(assert (not b!2422167))

(assert (not b!2422554))

(assert (not b!2422215))

(assert (not b!2422501))

(assert (not b!2422472))

(assert (not b!2422565))

(assert (not b!2422544))

(assert (not b!2422344))

(assert (not b!2422461))

(assert (not b!2422451))

(assert (not b!2422555))

(assert (not b!2422313))

(assert (not b!2422166))

(assert (not b!2422305))

(assert (not b!2422283))

(assert (not d!702052))

(assert (not b!2422306))

(assert (not b!2422312))

(assert (not b!2422404))

(assert (not b!2422462))

(assert (not b!2422216))

(assert (not bs!463779))

(assert (not d!702014))

(assert (not b!2422294))

(assert (not b!2422209))

(assert (not b!2422293))

(assert (not b!2422552))

(assert (not b_lambda!74653))

(assert (not d!702016))

(assert (not b!2422559))

(assert (not d!702040))

(assert (not b!2422247))

(assert tp_is_empty!11649)

(assert (not b!2422214))

(assert (not b!2422296))

(assert (not b!2422338))

(assert (not bm!148070))

(assert (not b!2422310))

(assert (not b!2422211))

(assert (not d!702022))

(assert (not d!702048))

(assert (not bm!148076))

(assert (not d!702046))

(assert (not bm!148086))

(assert (not b!2422511))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

