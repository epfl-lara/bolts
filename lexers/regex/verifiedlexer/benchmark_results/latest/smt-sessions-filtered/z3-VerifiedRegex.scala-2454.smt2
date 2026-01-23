; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129792 () Bool)

(assert start!129792)

(declare-fun tp!401494 () Bool)

(declare-datatypes ((List!14541 0))(
  ( (Nil!14475) (Cons!14475 (h!19876 (_ BitVec 16)) (t!123956 List!14541)) )
))
(declare-datatypes ((TokenValue!2607 0))(
  ( (FloatLiteralValue!5214 (text!18694 List!14541)) (TokenValueExt!2606 (__x!9029 Int)) (Broken!13035 (value!81341 List!14541)) (Object!2672) (End!2607) (Def!2607) (Underscore!2607) (Match!2607) (Else!2607) (Error!2607) (Case!2607) (If!2607) (Extends!2607) (Abstract!2607) (Class!2607) (Val!2607) (DelimiterValue!5214 (del!2667 List!14541)) (KeywordValue!2613 (value!81342 List!14541)) (CommentValue!5214 (value!81343 List!14541)) (WhitespaceValue!5214 (value!81344 List!14541)) (IndentationValue!2607 (value!81345 List!14541)) (String!17270) (Int32!2607) (Broken!13036 (value!81346 List!14541)) (Boolean!2608) (Unit!21241) (OperatorValue!2610 (op!2667 List!14541)) (IdentifierValue!5214 (value!81347 List!14541)) (IdentifierValue!5215 (value!81348 List!14541)) (WhitespaceValue!5215 (value!81349 List!14541)) (True!5214) (False!5214) (Broken!13037 (value!81350 List!14541)) (Broken!13038 (value!81351 List!14541)) (True!5215) (RightBrace!2607) (RightBracket!2607) (Colon!2607) (Null!2607) (Comma!2607) (LeftBracket!2607) (False!5215) (LeftBrace!2607) (ImaginaryLiteralValue!2607 (text!18695 List!14541)) (StringLiteralValue!7821 (value!81352 List!14541)) (EOFValue!2607 (value!81353 List!14541)) (IdentValue!2607 (value!81354 List!14541)) (DelimiterValue!5215 (value!81355 List!14541)) (DedentValue!2607 (value!81356 List!14541)) (NewLineValue!2607 (value!81357 List!14541)) (IntegerValue!7821 (value!81358 (_ BitVec 32)) (text!18696 List!14541)) (IntegerValue!7822 (value!81359 Int) (text!18697 List!14541)) (Times!2607) (Or!2607) (Equal!2607) (Minus!2607) (Broken!13039 (value!81360 List!14541)) (And!2607) (Div!2607) (LessEqual!2607) (Mod!2607) (Concat!6438) (Not!2607) (Plus!2607) (SpaceValue!2607 (value!81361 List!14541)) (IntegerValue!7823 (value!81362 Int) (text!18698 List!14541)) (StringLiteralValue!7822 (text!18699 List!14541)) (FloatLiteralValue!5215 (text!18700 List!14541)) (BytesLiteralValue!2607 (value!81363 List!14541)) (CommentValue!5215 (value!81364 List!14541)) (StringLiteralValue!7823 (value!81365 List!14541)) (ErrorTokenValue!2607 (msg!2668 List!14541)) )
))
(declare-datatypes ((Regex!3831 0))(
  ( (ElementMatch!3831 (c!232530 (_ BitVec 16))) (Concat!6439 (regOne!8174 Regex!3831) (regTwo!8174 Regex!3831)) (EmptyExpr!3831) (Star!3831 (reg!4160 Regex!3831)) (EmptyLang!3831) (Union!3831 (regOne!8175 Regex!3831) (regTwo!8175 Regex!3831)) )
))
(declare-datatypes ((String!17271 0))(
  ( (String!17272 (value!81366 String)) )
))
(declare-datatypes ((IArray!9655 0))(
  ( (IArray!9656 (innerList!4885 List!14541)) )
))
(declare-datatypes ((Conc!4825 0))(
  ( (Node!4825 (left!12369 Conc!4825) (right!12699 Conc!4825) (csize!9880 Int) (cheight!5036 Int)) (Leaf!7280 (xs!7552 IArray!9655) (csize!9881 Int)) (Empty!4825) )
))
(declare-datatypes ((BalanceConc!9590 0))(
  ( (BalanceConc!9591 (c!232531 Conc!4825)) )
))
(declare-datatypes ((TokenValueInjection!4874 0))(
  ( (TokenValueInjection!4875 (toValue!3816 Int) (toChars!3675 Int)) )
))
(declare-datatypes ((Rule!4834 0))(
  ( (Rule!4835 (regex!2517 Regex!3831) (tag!2779 String!17271) (isSeparator!2517 Bool) (transformation!2517 TokenValueInjection!4874)) )
))
(declare-datatypes ((Token!4696 0))(
  ( (Token!4697 (value!81367 TokenValue!2607) (rule!4280 Rule!4834) (size!11939 Int) (originalCharacters!3379 List!14541)) )
))
(declare-datatypes ((List!14542 0))(
  ( (Nil!14476) (Cons!14476 (h!19877 Token!4696) (t!123957 List!14542)) )
))
(declare-datatypes ((IArray!9657 0))(
  ( (IArray!9658 (innerList!4886 List!14542)) )
))
(declare-datatypes ((Conc!4826 0))(
  ( (Node!4826 (left!12370 Conc!4826) (right!12700 Conc!4826) (csize!9882 Int) (cheight!5037 Int)) (Leaf!7281 (xs!7553 IArray!9657) (csize!9883 Int)) (Empty!4826) )
))
(declare-datatypes ((List!14543 0))(
  ( (Nil!14477) (Cons!14477 (h!19878 Rule!4834) (t!123958 List!14543)) )
))
(declare-datatypes ((BalanceConc!9592 0))(
  ( (BalanceConc!9593 (c!232532 Conc!4826)) )
))
(declare-datatypes ((PrintableTokens!816 0))(
  ( (PrintableTokens!817 (rules!11068 List!14543) (tokens!1786 BalanceConc!9592)) )
))
(declare-fun acc!229 () PrintableTokens!816)

(declare-fun e!903363 () Bool)

(declare-fun b!1415077 () Bool)

(declare-fun e!903356 () Bool)

(declare-fun inv!18978 (BalanceConc!9592) Bool)

(assert (=> b!1415077 (= e!903356 (and tp!401494 (inv!18978 (tokens!1786 acc!229)) e!903363))))

(declare-fun b!1415078 () Bool)

(declare-fun res!640852 () Bool)

(declare-fun e!903358 () Bool)

(assert (=> b!1415078 (=> (not res!640852) (not e!903358))))

(declare-fun usesJsonRules!0 (PrintableTokens!816) Bool)

(assert (=> b!1415078 (= res!640852 (usesJsonRules!0 acc!229))))

(declare-fun b!1415079 () Bool)

(declare-fun e!903361 () Bool)

(assert (=> b!1415079 (= e!903358 e!903361)))

(declare-fun res!640854 () Bool)

(assert (=> b!1415079 (=> (not res!640854) (not e!903361))))

(declare-datatypes ((Option!2778 0))(
  ( (None!2777) (Some!2777 (v!21981 PrintableTokens!816)) )
))
(declare-fun lt!475262 () Option!2778)

(get-info :version)

(assert (=> b!1415079 (= res!640854 ((_ is Some!2777) lt!475262))))

(declare-datatypes ((List!14544 0))(
  ( (Nil!14478) (Cons!14478 (h!19879 PrintableTokens!816) (t!123959 List!14544)) )
))
(declare-datatypes ((IArray!9659 0))(
  ( (IArray!9660 (innerList!4887 List!14544)) )
))
(declare-datatypes ((Conc!4827 0))(
  ( (Node!4827 (left!12371 Conc!4827) (right!12701 Conc!4827) (csize!9884 Int) (cheight!5038 Int)) (Leaf!7282 (xs!7554 IArray!9659) (csize!9885 Int)) (Empty!4827) )
))
(declare-datatypes ((BalanceConc!9594 0))(
  ( (BalanceConc!9595 (c!232533 Conc!4827)) )
))
(declare-fun objs!24 () BalanceConc!9594)

(declare-fun sep!3 () PrintableTokens!816)

(declare-fun append!436 (PrintableTokens!816 PrintableTokens!816) Option!2778)

(declare-fun head!2715 (BalanceConc!9594) PrintableTokens!816)

(assert (=> b!1415079 (= lt!475262 (append!436 (head!2715 objs!24) sep!3))))

(declare-fun b!1415080 () Bool)

(declare-fun res!640856 () Bool)

(assert (=> b!1415080 (=> (not res!640856) (not e!903358))))

(assert (=> b!1415080 (= res!640856 (usesJsonRules!0 sep!3))))

(declare-fun b!1415081 () Bool)

(declare-fun e!903359 () Bool)

(assert (=> b!1415081 (= e!903361 e!903359)))

(declare-fun res!640859 () Bool)

(assert (=> b!1415081 (=> (not res!640859) (not e!903359))))

(declare-fun lt!475261 () Option!2778)

(assert (=> b!1415081 (= res!640859 ((_ is Some!2777) lt!475261))))

(assert (=> b!1415081 (= lt!475261 (append!436 acc!229 (v!21981 lt!475262)))))

(declare-fun b!1415082 () Bool)

(declare-fun e!903355 () Bool)

(declare-fun lt!475260 () Option!2778)

(declare-fun isDefined!2261 (Option!2778) Bool)

(assert (=> b!1415082 (= e!903355 (not (isDefined!2261 lt!475260)))))

(declare-fun res!640857 () Bool)

(assert (=> start!129792 (=> (not res!640857) (not e!903358))))

(declare-fun lambda!62515 () Int)

(declare-fun forall!3569 (BalanceConc!9594 Int) Bool)

(assert (=> start!129792 (= res!640857 (forall!3569 objs!24 lambda!62515))))

(assert (=> start!129792 e!903358))

(declare-fun e!903360 () Bool)

(declare-fun inv!18979 (BalanceConc!9594) Bool)

(assert (=> start!129792 (and (inv!18979 objs!24) e!903360)))

(declare-fun inv!18980 (PrintableTokens!816) Bool)

(assert (=> start!129792 (and (inv!18980 acc!229) e!903356)))

(declare-fun e!903357 () Bool)

(assert (=> start!129792 (and (inv!18980 sep!3) e!903357)))

(declare-fun b!1415083 () Bool)

(declare-fun res!640858 () Bool)

(assert (=> b!1415083 (=> (not res!640858) (not e!903358))))

(declare-fun size!11940 (BalanceConc!9594) Int)

(assert (=> b!1415083 (= res!640858 (not (= (size!11940 objs!24) 1)))))

(declare-fun b!1415084 () Bool)

(assert (=> b!1415084 (= e!903359 e!903355)))

(declare-fun res!640855 () Bool)

(assert (=> b!1415084 (=> (not res!640855) (not e!903355))))

(declare-fun isEmpty!8871 (Option!2778) Bool)

(assert (=> b!1415084 (= res!640855 (not (isEmpty!8871 lt!475260)))))

(declare-fun recombineSlicesWithSep!0 (BalanceConc!9594 PrintableTokens!816 PrintableTokens!816) Option!2778)

(declare-fun tail!2086 (BalanceConc!9594) BalanceConc!9594)

(assert (=> b!1415084 (= lt!475260 (recombineSlicesWithSep!0 (tail!2086 objs!24) sep!3 (v!21981 lt!475261)))))

(declare-fun b!1415085 () Bool)

(declare-fun tp!401490 () Bool)

(declare-fun inv!18981 (Conc!4827) Bool)

(assert (=> b!1415085 (= e!903360 (and (inv!18981 (c!232533 objs!24)) tp!401490))))

(declare-fun b!1415086 () Bool)

(declare-fun tp!401493 () Bool)

(declare-fun inv!18982 (Conc!4826) Bool)

(assert (=> b!1415086 (= e!903363 (and (inv!18982 (c!232532 (tokens!1786 acc!229))) tp!401493))))

(declare-fun b!1415087 () Bool)

(declare-fun e!903362 () Bool)

(declare-fun tp!401491 () Bool)

(assert (=> b!1415087 (= e!903362 (and (inv!18982 (c!232532 (tokens!1786 sep!3))) tp!401491))))

(declare-fun tp!401492 () Bool)

(declare-fun b!1415088 () Bool)

(assert (=> b!1415088 (= e!903357 (and tp!401492 (inv!18978 (tokens!1786 sep!3)) e!903362))))

(declare-fun b!1415089 () Bool)

(declare-fun res!640853 () Bool)

(assert (=> b!1415089 (=> (not res!640853) (not e!903358))))

(declare-fun isEmpty!8872 (BalanceConc!9594) Bool)

(assert (=> b!1415089 (= res!640853 (not (isEmpty!8872 objs!24)))))

(assert (= (and start!129792 res!640857) b!1415078))

(assert (= (and b!1415078 res!640852) b!1415080))

(assert (= (and b!1415080 res!640856) b!1415089))

(assert (= (and b!1415089 res!640853) b!1415083))

(assert (= (and b!1415083 res!640858) b!1415079))

(assert (= (and b!1415079 res!640854) b!1415081))

(assert (= (and b!1415081 res!640859) b!1415084))

(assert (= (and b!1415084 res!640855) b!1415082))

(assert (= start!129792 b!1415085))

(assert (= b!1415077 b!1415086))

(assert (= start!129792 b!1415077))

(assert (= b!1415088 b!1415087))

(assert (= start!129792 b!1415088))

(declare-fun m!1599675 () Bool)

(assert (=> start!129792 m!1599675))

(declare-fun m!1599677 () Bool)

(assert (=> start!129792 m!1599677))

(declare-fun m!1599679 () Bool)

(assert (=> start!129792 m!1599679))

(declare-fun m!1599681 () Bool)

(assert (=> start!129792 m!1599681))

(declare-fun m!1599683 () Bool)

(assert (=> b!1415085 m!1599683))

(declare-fun m!1599685 () Bool)

(assert (=> b!1415088 m!1599685))

(declare-fun m!1599687 () Bool)

(assert (=> b!1415077 m!1599687))

(declare-fun m!1599689 () Bool)

(assert (=> b!1415087 m!1599689))

(declare-fun m!1599691 () Bool)

(assert (=> b!1415079 m!1599691))

(assert (=> b!1415079 m!1599691))

(declare-fun m!1599693 () Bool)

(assert (=> b!1415079 m!1599693))

(declare-fun m!1599695 () Bool)

(assert (=> b!1415083 m!1599695))

(declare-fun m!1599697 () Bool)

(assert (=> b!1415084 m!1599697))

(declare-fun m!1599699 () Bool)

(assert (=> b!1415084 m!1599699))

(assert (=> b!1415084 m!1599699))

(declare-fun m!1599701 () Bool)

(assert (=> b!1415084 m!1599701))

(declare-fun m!1599703 () Bool)

(assert (=> b!1415086 m!1599703))

(declare-fun m!1599705 () Bool)

(assert (=> b!1415078 m!1599705))

(declare-fun m!1599707 () Bool)

(assert (=> b!1415089 m!1599707))

(declare-fun m!1599709 () Bool)

(assert (=> b!1415080 m!1599709))

(declare-fun m!1599711 () Bool)

(assert (=> b!1415081 m!1599711))

(declare-fun m!1599713 () Bool)

(assert (=> b!1415082 m!1599713))

(check-sat (not b!1415077) (not b!1415081) (not b!1415084) (not b!1415082) (not b!1415085) (not b!1415086) (not b!1415079) (not b!1415080) (not start!129792) (not b!1415088) (not b!1415089) (not b!1415078) (not b!1415083) (not b!1415087))
(check-sat)
(get-model)

(declare-fun d!405069 () Bool)

(declare-fun c!232536 () Bool)

(assert (=> d!405069 (= c!232536 ((_ is Node!4827) (c!232533 objs!24)))))

(declare-fun e!903368 () Bool)

(assert (=> d!405069 (= (inv!18981 (c!232533 objs!24)) e!903368)))

(declare-fun b!1415096 () Bool)

(declare-fun inv!18985 (Conc!4827) Bool)

(assert (=> b!1415096 (= e!903368 (inv!18985 (c!232533 objs!24)))))

(declare-fun b!1415097 () Bool)

(declare-fun e!903369 () Bool)

(assert (=> b!1415097 (= e!903368 e!903369)))

(declare-fun res!640864 () Bool)

(assert (=> b!1415097 (= res!640864 (not ((_ is Leaf!7282) (c!232533 objs!24))))))

(assert (=> b!1415097 (=> res!640864 e!903369)))

(declare-fun b!1415098 () Bool)

(declare-fun inv!18986 (Conc!4827) Bool)

(assert (=> b!1415098 (= e!903369 (inv!18986 (c!232533 objs!24)))))

(assert (= (and d!405069 c!232536) b!1415096))

(assert (= (and d!405069 (not c!232536)) b!1415097))

(assert (= (and b!1415097 (not res!640864)) b!1415098))

(declare-fun m!1599721 () Bool)

(assert (=> b!1415096 m!1599721))

(declare-fun m!1599723 () Bool)

(assert (=> b!1415098 m!1599723))

(assert (=> b!1415085 d!405069))

(declare-fun d!405077 () Bool)

(assert (=> d!405077 (= (isEmpty!8871 lt!475260) (not ((_ is Some!2777) lt!475260)))))

(assert (=> b!1415084 d!405077))

(declare-fun bs!339328 () Bool)

(declare-fun d!405079 () Bool)

(assert (= bs!339328 (and d!405079 start!129792)))

(declare-fun lambda!62518 () Int)

(assert (=> bs!339328 (= lambda!62518 lambda!62515)))

(declare-fun b!1415133 () Bool)

(declare-fun e!903390 () Option!2778)

(assert (=> b!1415133 (= e!903390 (Some!2777 (v!21981 lt!475261)))))

(declare-fun e!903388 () Bool)

(assert (=> d!405079 e!903388))

(declare-fun res!640879 () Bool)

(assert (=> d!405079 (=> res!640879 e!903388)))

(declare-fun lt!475278 () Option!2778)

(assert (=> d!405079 (= res!640879 (isEmpty!8871 lt!475278))))

(assert (=> d!405079 (= lt!475278 e!903390)))

(declare-fun c!232550 () Bool)

(assert (=> d!405079 (= c!232550 (isEmpty!8872 (tail!2086 objs!24)))))

(assert (=> d!405079 (forall!3569 (tail!2086 objs!24) lambda!62518)))

(assert (=> d!405079 (= (recombineSlicesWithSep!0 (tail!2086 objs!24) sep!3 (v!21981 lt!475261)) lt!475278)))

(declare-fun b!1415134 () Bool)

(declare-fun e!903387 () Option!2778)

(declare-fun call!95477 () Option!2778)

(assert (=> b!1415134 (= e!903387 call!95477)))

(declare-fun b!1415135 () Bool)

(declare-fun get!4452 (Option!2778) PrintableTokens!816)

(assert (=> b!1415135 (= e!903388 (usesJsonRules!0 (get!4452 lt!475278)))))

(declare-fun b!1415136 () Bool)

(declare-fun c!232548 () Bool)

(declare-fun lt!475279 () Option!2778)

(assert (=> b!1415136 (= c!232548 ((_ is Some!2777) lt!475279))))

(declare-fun call!95474 () PrintableTokens!816)

(assert (=> b!1415136 (= lt!475279 (append!436 call!95474 sep!3))))

(declare-fun e!903391 () Option!2778)

(declare-fun e!903386 () Option!2778)

(assert (=> b!1415136 (= e!903391 e!903386)))

(declare-fun b!1415137 () Bool)

(assert (=> b!1415137 (= e!903387 None!2777)))

(declare-fun b!1415138 () Bool)

(assert (=> b!1415138 (= e!903390 e!903391)))

(declare-fun c!232551 () Bool)

(assert (=> b!1415138 (= c!232551 (= (size!11940 (tail!2086 objs!24)) 1))))

(declare-fun bm!95469 () Bool)

(declare-fun call!95475 () BalanceConc!9594)

(assert (=> bm!95469 (= call!95475 (tail!2086 (tail!2086 objs!24)))))

(declare-fun bm!95470 () Bool)

(declare-fun lt!475277 () Option!2778)

(declare-fun lt!475280 () Option!2778)

(assert (=> bm!95470 (= call!95477 (recombineSlicesWithSep!0 call!95475 sep!3 (ite c!232551 (v!21981 lt!475277) (v!21981 lt!475280))))))

(declare-fun b!1415139 () Bool)

(assert (=> b!1415139 (= e!903386 e!903387)))

(declare-fun call!95476 () Option!2778)

(assert (=> b!1415139 (= lt!475280 call!95476)))

(declare-fun c!232547 () Bool)

(assert (=> b!1415139 (= c!232547 ((_ is Some!2777) lt!475280))))

(declare-fun b!1415140 () Bool)

(assert (=> b!1415140 (= e!903386 None!2777)))

(declare-fun b!1415141 () Bool)

(declare-fun e!903389 () Option!2778)

(assert (=> b!1415141 (= e!903389 call!95477)))

(declare-fun b!1415142 () Bool)

(assert (=> b!1415142 (= e!903389 None!2777)))

(declare-fun bm!95471 () Bool)

(assert (=> bm!95471 (= call!95476 (append!436 (v!21981 lt!475261) (ite c!232551 call!95474 (v!21981 lt!475279))))))

(declare-fun bm!95472 () Bool)

(assert (=> bm!95472 (= call!95474 (head!2715 (tail!2086 objs!24)))))

(declare-fun b!1415143 () Bool)

(declare-fun c!232549 () Bool)

(assert (=> b!1415143 (= c!232549 ((_ is Some!2777) lt!475277))))

(assert (=> b!1415143 (= lt!475277 call!95476)))

(assert (=> b!1415143 (= e!903391 e!903389)))

(assert (= (and d!405079 c!232550) b!1415133))

(assert (= (and d!405079 (not c!232550)) b!1415138))

(assert (= (and b!1415138 c!232551) b!1415143))

(assert (= (and b!1415138 (not c!232551)) b!1415136))

(assert (= (and b!1415143 c!232549) b!1415141))

(assert (= (and b!1415143 (not c!232549)) b!1415142))

(assert (= (and b!1415136 c!232548) b!1415139))

(assert (= (and b!1415136 (not c!232548)) b!1415140))

(assert (= (and b!1415139 c!232547) b!1415134))

(assert (= (and b!1415139 (not c!232547)) b!1415137))

(assert (= (or b!1415143 b!1415136) bm!95472))

(assert (= (or b!1415141 b!1415134) bm!95469))

(assert (= (or b!1415143 b!1415139) bm!95471))

(assert (= (or b!1415141 b!1415134) bm!95470))

(assert (= (and d!405079 (not res!640879)) b!1415135))

(declare-fun m!1599749 () Bool)

(assert (=> bm!95470 m!1599749))

(declare-fun m!1599751 () Bool)

(assert (=> b!1415135 m!1599751))

(assert (=> b!1415135 m!1599751))

(declare-fun m!1599753 () Bool)

(assert (=> b!1415135 m!1599753))

(declare-fun m!1599755 () Bool)

(assert (=> d!405079 m!1599755))

(assert (=> d!405079 m!1599699))

(declare-fun m!1599757 () Bool)

(assert (=> d!405079 m!1599757))

(assert (=> d!405079 m!1599699))

(declare-fun m!1599759 () Bool)

(assert (=> d!405079 m!1599759))

(assert (=> b!1415138 m!1599699))

(declare-fun m!1599761 () Bool)

(assert (=> b!1415138 m!1599761))

(declare-fun m!1599763 () Bool)

(assert (=> b!1415136 m!1599763))

(assert (=> bm!95472 m!1599699))

(declare-fun m!1599765 () Bool)

(assert (=> bm!95472 m!1599765))

(declare-fun m!1599767 () Bool)

(assert (=> bm!95471 m!1599767))

(assert (=> bm!95469 m!1599699))

(declare-fun m!1599769 () Bool)

(assert (=> bm!95469 m!1599769))

(assert (=> b!1415084 d!405079))

(declare-fun d!405093 () Bool)

(declare-fun e!903394 () Bool)

(assert (=> d!405093 e!903394))

(declare-fun res!640882 () Bool)

(assert (=> d!405093 (=> (not res!640882) (not e!903394))))

(declare-fun isBalanced!1431 (Conc!4827) Bool)

(declare-fun tail!2089 (Conc!4827) Conc!4827)

(assert (=> d!405093 (= res!640882 (isBalanced!1431 (tail!2089 (c!232533 objs!24))))))

(declare-fun lt!475283 () BalanceConc!9594)

(assert (=> d!405093 (= lt!475283 (BalanceConc!9595 (tail!2089 (c!232533 objs!24))))))

(assert (=> d!405093 (not (isEmpty!8872 objs!24))))

(assert (=> d!405093 (= (tail!2086 objs!24) lt!475283)))

(declare-fun b!1415146 () Bool)

(declare-fun list!5693 (BalanceConc!9594) List!14544)

(declare-fun tail!2090 (List!14544) List!14544)

(assert (=> b!1415146 (= e!903394 (= (list!5693 lt!475283) (tail!2090 (list!5693 objs!24))))))

(assert (= (and d!405093 res!640882) b!1415146))

(declare-fun m!1599771 () Bool)

(assert (=> d!405093 m!1599771))

(assert (=> d!405093 m!1599771))

(declare-fun m!1599773 () Bool)

(assert (=> d!405093 m!1599773))

(assert (=> d!405093 m!1599707))

(declare-fun m!1599775 () Bool)

(assert (=> b!1415146 m!1599775))

(declare-fun m!1599777 () Bool)

(assert (=> b!1415146 m!1599777))

(assert (=> b!1415146 m!1599777))

(declare-fun m!1599779 () Bool)

(assert (=> b!1415146 m!1599779))

(assert (=> b!1415084 d!405093))

(declare-fun d!405095 () Bool)

(declare-fun lt!475286 () Bool)

(declare-fun forall!3572 (List!14544 Int) Bool)

(assert (=> d!405095 (= lt!475286 (forall!3572 (list!5693 objs!24) lambda!62515))))

(declare-fun forall!3573 (Conc!4827 Int) Bool)

(assert (=> d!405095 (= lt!475286 (forall!3573 (c!232533 objs!24) lambda!62515))))

(assert (=> d!405095 (= (forall!3569 objs!24 lambda!62515) lt!475286)))

(declare-fun bs!339329 () Bool)

(assert (= bs!339329 d!405095))

(assert (=> bs!339329 m!1599777))

(assert (=> bs!339329 m!1599777))

(declare-fun m!1599781 () Bool)

(assert (=> bs!339329 m!1599781))

(declare-fun m!1599783 () Bool)

(assert (=> bs!339329 m!1599783))

(assert (=> start!129792 d!405095))

(declare-fun d!405097 () Bool)

(assert (=> d!405097 (= (inv!18979 objs!24) (isBalanced!1431 (c!232533 objs!24)))))

(declare-fun bs!339330 () Bool)

(assert (= bs!339330 d!405097))

(declare-fun m!1599785 () Bool)

(assert (=> bs!339330 m!1599785))

(assert (=> start!129792 d!405097))

(declare-fun d!405099 () Bool)

(declare-fun res!640892 () Bool)

(declare-fun e!903415 () Bool)

(assert (=> d!405099 (=> (not res!640892) (not e!903415))))

(declare-fun isEmpty!8877 (List!14543) Bool)

(assert (=> d!405099 (= res!640892 (not (isEmpty!8877 (rules!11068 acc!229))))))

(assert (=> d!405099 (= (inv!18980 acc!229) e!903415)))

(declare-fun b!1415186 () Bool)

(declare-fun res!640893 () Bool)

(assert (=> b!1415186 (=> (not res!640893) (not e!903415))))

(declare-datatypes ((LexerInterface!2199 0))(
  ( (LexerInterfaceExt!2196 (__x!9031 Int)) (Lexer!2197) )
))
(declare-fun rulesInvariant!2069 (LexerInterface!2199 List!14543) Bool)

(assert (=> b!1415186 (= res!640893 (rulesInvariant!2069 Lexer!2197 (rules!11068 acc!229)))))

(declare-fun b!1415187 () Bool)

(declare-fun res!640894 () Bool)

(assert (=> b!1415187 (=> (not res!640894) (not e!903415))))

(declare-fun rulesProduceEachTokenIndividually!796 (LexerInterface!2199 List!14543 BalanceConc!9592) Bool)

(assert (=> b!1415187 (= res!640894 (rulesProduceEachTokenIndividually!796 Lexer!2197 (rules!11068 acc!229) (tokens!1786 acc!229)))))

(declare-fun b!1415188 () Bool)

(declare-fun separableTokens!181 (LexerInterface!2199 BalanceConc!9592 List!14543) Bool)

(assert (=> b!1415188 (= e!903415 (separableTokens!181 Lexer!2197 (tokens!1786 acc!229) (rules!11068 acc!229)))))

(assert (= (and d!405099 res!640892) b!1415186))

(assert (= (and b!1415186 res!640893) b!1415187))

(assert (= (and b!1415187 res!640894) b!1415188))

(declare-fun m!1599809 () Bool)

(assert (=> d!405099 m!1599809))

(declare-fun m!1599811 () Bool)

(assert (=> b!1415186 m!1599811))

(declare-fun m!1599813 () Bool)

(assert (=> b!1415187 m!1599813))

(declare-fun m!1599815 () Bool)

(assert (=> b!1415188 m!1599815))

(assert (=> start!129792 d!405099))

(declare-fun d!405103 () Bool)

(declare-fun res!640895 () Bool)

(declare-fun e!903416 () Bool)

(assert (=> d!405103 (=> (not res!640895) (not e!903416))))

(assert (=> d!405103 (= res!640895 (not (isEmpty!8877 (rules!11068 sep!3))))))

(assert (=> d!405103 (= (inv!18980 sep!3) e!903416)))

(declare-fun b!1415189 () Bool)

(declare-fun res!640896 () Bool)

(assert (=> b!1415189 (=> (not res!640896) (not e!903416))))

(assert (=> b!1415189 (= res!640896 (rulesInvariant!2069 Lexer!2197 (rules!11068 sep!3)))))

(declare-fun b!1415190 () Bool)

(declare-fun res!640897 () Bool)

(assert (=> b!1415190 (=> (not res!640897) (not e!903416))))

(assert (=> b!1415190 (= res!640897 (rulesProduceEachTokenIndividually!796 Lexer!2197 (rules!11068 sep!3) (tokens!1786 sep!3)))))

(declare-fun b!1415191 () Bool)

(assert (=> b!1415191 (= e!903416 (separableTokens!181 Lexer!2197 (tokens!1786 sep!3) (rules!11068 sep!3)))))

(assert (= (and d!405103 res!640895) b!1415189))

(assert (= (and b!1415189 res!640896) b!1415190))

(assert (= (and b!1415190 res!640897) b!1415191))

(declare-fun m!1599817 () Bool)

(assert (=> d!405103 m!1599817))

(declare-fun m!1599819 () Bool)

(assert (=> b!1415189 m!1599819))

(declare-fun m!1599821 () Bool)

(assert (=> b!1415190 m!1599821))

(declare-fun m!1599823 () Bool)

(assert (=> b!1415191 m!1599823))

(assert (=> start!129792 d!405103))

(declare-fun d!405105 () Bool)

(assert (=> d!405105 (= (isDefined!2261 lt!475260) (not (isEmpty!8871 lt!475260)))))

(declare-fun bs!339332 () Bool)

(assert (= bs!339332 d!405105))

(assert (=> bs!339332 m!1599697))

(assert (=> b!1415082 d!405105))

(declare-fun d!405107 () Bool)

(declare-fun lt!475301 () Int)

(declare-fun size!11941 (List!14544) Int)

(assert (=> d!405107 (= lt!475301 (size!11941 (list!5693 objs!24)))))

(declare-fun size!11942 (Conc!4827) Int)

(assert (=> d!405107 (= lt!475301 (size!11942 (c!232533 objs!24)))))

(assert (=> d!405107 (= (size!11940 objs!24) lt!475301)))

(declare-fun bs!339333 () Bool)

(assert (= bs!339333 d!405107))

(assert (=> bs!339333 m!1599777))

(assert (=> bs!339333 m!1599777))

(declare-fun m!1599825 () Bool)

(assert (=> bs!339333 m!1599825))

(declare-fun m!1599827 () Bool)

(assert (=> bs!339333 m!1599827))

(assert (=> b!1415083 d!405107))

(declare-fun bm!95680 () Bool)

(declare-fun call!95712 () BalanceConc!9590)

(declare-fun print!969 (LexerInterface!2199 BalanceConc!9592) BalanceConc!9590)

(assert (=> bm!95680 (= call!95712 (print!969 Lexer!2197 (tokens!1786 acc!229)))))

(declare-fun bm!95681 () Bool)

(declare-fun lt!475660 () List!14542)

(declare-fun lt!475676 () List!14542)

(declare-fun c!232614 () Bool)

(declare-fun c!232610 () Bool)

(declare-fun call!95707 () List!14541)

(declare-fun lt!475673 () LexerInterface!2199)

(declare-fun printList!657 (LexerInterface!2199 List!14542) List!14541)

(assert (=> bm!95681 (= call!95707 (printList!657 (ite (or c!232610 c!232614) Lexer!2197 lt!475673) (ite c!232610 Nil!14476 (ite c!232614 (t!123957 lt!475660) lt!475676))))))

(declare-fun bm!95682 () Bool)

(declare-fun call!95694 () BalanceConc!9590)

(declare-fun printTailRec!639 (LexerInterface!2199 BalanceConc!9592 Int BalanceConc!9590) BalanceConc!9590)

(assert (=> bm!95682 (= call!95694 (printTailRec!639 Lexer!2197 (tokens!1786 (v!21981 lt!475262)) 0 (BalanceConc!9591 Empty!4825)))))

(declare-fun lt!475652 () Option!2778)

(declare-fun e!903479 () Bool)

(declare-fun b!1415289 () Bool)

(declare-fun list!5694 (BalanceConc!9590) List!14541)

(declare-fun print!970 (PrintableTokens!816) BalanceConc!9590)

(declare-fun ++!3787 (List!14541 List!14541) List!14541)

(assert (=> b!1415289 (= e!903479 (= (list!5694 (print!970 (get!4452 lt!475652))) (++!3787 (list!5694 (print!970 acc!229)) (list!5694 (print!970 (v!21981 lt!475262))))))))

(declare-fun bm!95683 () Bool)

(declare-datatypes ((Unit!21270 0))(
  ( (Unit!21271) )
))
(declare-fun call!95692 () Unit!21270)

(declare-fun call!95703 () Unit!21270)

(assert (=> bm!95683 (= call!95692 call!95703)))

(declare-fun bm!95684 () Bool)

(declare-fun call!95705 () List!14541)

(declare-fun call!95690 () List!14541)

(assert (=> bm!95684 (= call!95705 call!95690)))

(declare-fun call!95723 () List!14541)

(declare-fun bm!95685 () Bool)

(declare-fun call!95702 () List!14542)

(declare-fun call!95719 () List!14542)

(declare-fun call!95718 () List!14542)

(declare-fun lt!475684 () LexerInterface!2199)

(assert (=> bm!95685 (= call!95723 (printList!657 (ite (or c!232610 c!232614) Lexer!2197 lt!475684) (ite c!232610 call!95718 (ite c!232614 call!95702 call!95719))))))

(declare-fun bm!95686 () Bool)

(declare-fun call!95711 () List!14541)

(declare-fun call!95720 () List!14541)

(assert (=> bm!95686 (= call!95711 call!95720)))

(declare-fun bm!95687 () Bool)

(declare-fun call!95701 () Unit!21270)

(declare-fun call!95686 () Unit!21270)

(assert (=> bm!95687 (= call!95701 call!95686)))

(declare-fun b!1415290 () Bool)

(declare-fun c!232611 () Bool)

(declare-fun separableTokensPredicate!480 (LexerInterface!2199 Token!4696 Token!4696 List!14543) Bool)

(declare-fun last!73 (BalanceConc!9592) Token!4696)

(declare-fun head!2719 (BalanceConc!9592) Token!4696)

(assert (=> b!1415290 (= c!232611 (separableTokensPredicate!480 Lexer!2197 (last!73 (tokens!1786 acc!229)) (head!2719 (tokens!1786 (v!21981 lt!475262))) (rules!11068 acc!229)))))

(declare-fun lt!475636 () Unit!21270)

(declare-fun lt!475625 () Unit!21270)

(assert (=> b!1415290 (= lt!475636 lt!475625)))

(declare-fun lt!475678 () LexerInterface!2199)

(declare-fun lt!475653 () Token!4696)

(declare-fun rulesProduceIndividualToken!1166 (LexerInterface!2199 List!14543 Token!4696) Bool)

(assert (=> b!1415290 (rulesProduceIndividualToken!1166 lt!475678 (rules!11068 acc!229) lt!475653)))

(declare-fun lt!475665 () List!14542)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!351 (LexerInterface!2199 List!14543 List!14542 Token!4696) Unit!21270)

(assert (=> b!1415290 (= lt!475625 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!351 lt!475678 (rules!11068 acc!229) lt!475665 lt!475653))))

(assert (=> b!1415290 (= lt!475653 (head!2719 (tokens!1786 (v!21981 lt!475262))))))

(assert (=> b!1415290 (= lt!475665 call!95702)))

(assert (=> b!1415290 (= lt!475678 Lexer!2197)))

(declare-fun lt!475635 () Unit!21270)

(declare-fun lt!475680 () Unit!21270)

(assert (=> b!1415290 (= lt!475635 lt!475680)))

(declare-fun lt!475626 () LexerInterface!2199)

(declare-fun lt!475674 () Token!4696)

(assert (=> b!1415290 (rulesProduceIndividualToken!1166 lt!475626 (rules!11068 acc!229) lt!475674)))

(declare-fun lt!475645 () List!14542)

(assert (=> b!1415290 (= lt!475680 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!351 lt!475626 (rules!11068 acc!229) lt!475645 lt!475674))))

(assert (=> b!1415290 (= lt!475674 (last!73 (tokens!1786 acc!229)))))

(declare-fun call!95706 () List!14542)

(assert (=> b!1415290 (= lt!475645 call!95706)))

(assert (=> b!1415290 (= lt!475626 Lexer!2197)))

(declare-fun e!903475 () Option!2778)

(declare-fun e!903476 () Option!2778)

(assert (=> b!1415290 (= e!903475 e!903476)))

(declare-fun bm!95688 () Bool)

(declare-fun call!95698 () List!14542)

(declare-fun theoremInvertabilityWhenTokenListSeparable!27 (LexerInterface!2199 List!14543 List!14542) Unit!21270)

(assert (=> bm!95688 (= call!95686 (theoremInvertabilityWhenTokenListSeparable!27 Lexer!2197 (rules!11068 acc!229) (ite c!232610 call!95698 call!95706)))))

(declare-fun bm!95689 () Bool)

(declare-fun call!95715 () List!14541)

(assert (=> bm!95689 (= call!95715 call!95707)))

(declare-fun bm!95690 () Bool)

(assert (=> bm!95690 (= call!95702 call!95718)))

(declare-fun lt!475639 () List!14542)

(declare-fun bm!95691 () Bool)

(declare-fun call!95691 () BalanceConc!9590)

(declare-fun charsOf!1474 (Token!4696) BalanceConc!9590)

(assert (=> bm!95691 (= call!95691 (charsOf!1474 (ite c!232610 (h!19877 lt!475639) (h!19877 lt!475660))))))

(declare-fun lt!475629 () LexerInterface!2199)

(declare-fun call!95717 () List!14541)

(declare-fun e!903471 () List!14542)

(declare-fun lt!475649 () LexerInterface!2199)

(declare-fun bm!95692 () Bool)

(declare-fun call!95704 () List!14542)

(assert (=> bm!95692 (= call!95717 (printList!657 (ite c!232610 lt!475649 (ite c!232614 lt!475629 lt!475673)) (ite c!232610 call!95704 e!903471)))))

(declare-fun bm!95693 () Bool)

(declare-fun call!95713 () BalanceConc!9590)

(declare-fun call!95685 () BalanceConc!9590)

(assert (=> bm!95693 (= call!95713 call!95685)))

(declare-fun b!1415291 () Bool)

(declare-fun e!903474 () List!14541)

(assert (=> b!1415291 (= e!903474 Nil!14475)))

(declare-fun b!1415292 () Bool)

(declare-fun e!903477 () Bool)

(assert (=> b!1415292 (= e!903477 e!903479)))

(declare-fun res!640919 () Bool)

(assert (=> b!1415292 (=> (not res!640919) (not e!903479))))

(assert (=> b!1415292 (= res!640919 (= (rules!11068 (get!4452 lt!475652)) (rules!11068 acc!229)))))

(declare-fun b!1415293 () Bool)

(declare-fun call!95716 () List!14541)

(assert (=> b!1415293 (= e!903474 call!95716)))

(declare-fun bm!95694 () Bool)

(declare-fun c!232609 () Bool)

(assert (=> bm!95694 (= c!232609 c!232614)))

(declare-fun call!95721 () List!14541)

(assert (=> bm!95694 (= call!95721 call!95716)))

(declare-fun bm!95695 () Bool)

(declare-fun call!95687 () List!14541)

(declare-fun call!95700 () List!14541)

(assert (=> bm!95695 (= call!95687 call!95700)))

(declare-fun bm!95696 () Bool)

(declare-fun lt!475664 () List!14542)

(declare-fun lt!475686 () List!14542)

(declare-fun lt!475659 () List!14542)

(declare-fun lt!475679 () List!14542)

(declare-fun ++!3788 (List!14542 List!14542) List!14542)

(assert (=> bm!95696 (= call!95704 (++!3788 (ite c!232610 lt!475679 lt!475664) (ite c!232610 lt!475659 lt!475686)))))

(declare-fun b!1415294 () Bool)

(declare-fun e!903478 () List!14541)

(declare-fun call!95722 () List!14541)

(assert (=> b!1415294 (= e!903478 call!95722)))

(declare-fun b!1415295 () Bool)

(declare-fun e!903472 () List!14541)

(assert (=> b!1415295 (= e!903472 call!95721)))

(declare-fun b!1415296 () Bool)

(declare-fun ++!3789 (BalanceConc!9592 BalanceConc!9592) BalanceConc!9592)

(assert (=> b!1415296 (= e!903476 (Some!2777 (PrintableTokens!817 (rules!11068 acc!229) (++!3789 (tokens!1786 acc!229) (tokens!1786 (v!21981 lt!475262))))))))

(declare-fun lt!475638 () LexerInterface!2199)

(assert (=> b!1415296 (= lt!475638 Lexer!2197)))

(assert (=> b!1415296 (= lt!475664 call!95706)))

(assert (=> b!1415296 (= lt!475686 call!95702)))

(declare-fun lt!475683 () Unit!21270)

(declare-fun tokensListTwoByTwoPredicateConcatSeparableTokensList!22 (LexerInterface!2199 List!14542 List!14542 List!14543) Unit!21270)

(assert (=> b!1415296 (= lt!475683 (tokensListTwoByTwoPredicateConcatSeparableTokensList!22 lt!475638 lt!475664 lt!475686 (rules!11068 acc!229)))))

(declare-fun lt!475682 () Unit!21270)

(declare-fun lemmaRulesProduceEachTokenIndividuallyConcat!22 (LexerInterface!2199 List!14543 List!14542 List!14542) Unit!21270)

(assert (=> b!1415296 (= lt!475682 (lemmaRulesProduceEachTokenIndividuallyConcat!22 lt!475638 (rules!11068 acc!229) lt!475664 lt!475686))))

(declare-fun rulesProduceEachTokenIndividuallyList!682 (LexerInterface!2199 List!14543 List!14542) Bool)

(assert (=> b!1415296 (rulesProduceEachTokenIndividuallyList!682 lt!475638 (rules!11068 acc!229) call!95704)))

(declare-fun lt!475657 () Unit!21270)

(assert (=> b!1415296 (= lt!475657 lt!475682)))

(declare-fun tokensListTwoByTwoPredicateSeparableList!203 (LexerInterface!2199 List!14542 List!14543) Bool)

(assert (=> b!1415296 (tokensListTwoByTwoPredicateSeparableList!203 lt!475638 call!95704 (rules!11068 acc!229))))

(declare-fun lt!475658 () Unit!21270)

(assert (=> b!1415296 (= lt!475658 lt!475683)))

(assert (=> b!1415296 (= lt!475684 Lexer!2197)))

(declare-fun lt!475633 () List!14542)

(assert (=> b!1415296 (= lt!475633 call!95706)))

(declare-fun lt!475651 () List!14542)

(assert (=> b!1415296 (= lt!475651 call!95702)))

(declare-fun lt!475628 () Unit!21270)

(declare-fun lemmaPrintConcatSameAsConcatPrint!22 (LexerInterface!2199 List!14542 List!14542) Unit!21270)

(assert (=> b!1415296 (= lt!475628 (lemmaPrintConcatSameAsConcatPrint!22 lt!475684 lt!475633 lt!475651))))

(declare-fun call!95689 () List!14541)

(assert (=> b!1415296 (= call!95689 call!95721)))

(declare-fun lt!475661 () Unit!21270)

(assert (=> b!1415296 (= lt!475661 lt!475628)))

(declare-fun lt!475663 () Unit!21270)

(assert (=> b!1415296 (= lt!475663 call!95701)))

(declare-fun call!95699 () BalanceConc!9590)

(declare-fun call!95693 () BalanceConc!9590)

(assert (=> b!1415296 (= call!95699 call!95693)))

(declare-fun lt!475648 () Unit!21270)

(declare-fun Unit!21272 () Unit!21270)

(assert (=> b!1415296 (= lt!475648 Unit!21272)))

(declare-fun lt!475650 () Unit!21270)

(declare-fun call!95695 () Unit!21270)

(assert (=> b!1415296 (= lt!475650 call!95695)))

(declare-fun call!95688 () BalanceConc!9590)

(assert (=> b!1415296 (= call!95688 call!95713)))

(declare-fun lt!475644 () Unit!21270)

(declare-fun Unit!21273 () Unit!21270)

(assert (=> b!1415296 (= lt!475644 Unit!21273)))

(declare-fun lt!475668 () PrintableTokens!816)

(assert (=> b!1415296 (= lt!475668 (PrintableTokens!817 (rules!11068 acc!229) (++!3789 (tokens!1786 acc!229) (tokens!1786 (v!21981 lt!475262)))))))

(declare-fun lt!475672 () BalanceConc!9592)

(assert (=> b!1415296 (= lt!475672 (++!3789 (tokens!1786 acc!229) (tokens!1786 (v!21981 lt!475262))))))

(declare-fun lt!475669 () Unit!21270)

(declare-fun list!5695 (BalanceConc!9592) List!14542)

(assert (=> b!1415296 (= lt!475669 (theoremInvertabilityWhenTokenListSeparable!27 Lexer!2197 (rules!11068 acc!229) (list!5695 (++!3789 (tokens!1786 acc!229) (tokens!1786 (v!21981 lt!475262))))))))

(assert (=> b!1415296 (= (print!970 (PrintableTokens!817 (rules!11068 acc!229) (++!3789 (tokens!1786 acc!229) (tokens!1786 (v!21981 lt!475262))))) (print!969 Lexer!2197 (++!3789 (tokens!1786 acc!229) (tokens!1786 (v!21981 lt!475262)))))))

(declare-fun lt!475631 () Unit!21270)

(declare-fun Unit!21274 () Unit!21270)

(assert (=> b!1415296 (= lt!475631 Unit!21274)))

(assert (=> b!1415296 (= lt!475673 Lexer!2197)))

(declare-fun lt!475642 () List!14542)

(assert (=> b!1415296 (= lt!475642 call!95706)))

(assert (=> b!1415296 (= lt!475676 call!95702)))

(declare-fun lt!475640 () Unit!21270)

(assert (=> b!1415296 (= lt!475640 call!95692)))

(declare-fun call!95714 () List!14541)

(assert (=> b!1415296 (= call!95714 call!95705)))

(declare-fun lt!475634 () Unit!21270)

(assert (=> b!1415296 (= lt!475634 lt!475640)))

(declare-fun lt!475677 () List!14542)

(declare-fun bm!95697 () Bool)

(assert (=> bm!95697 (= call!95720 (printList!657 (ite c!232610 Lexer!2197 (ite c!232614 lt!475629 lt!475673)) (ite c!232610 (t!123957 lt!475639) (ite c!232614 lt!475677 lt!475642))))))

(declare-fun lt!475627 () List!14542)

(declare-fun bm!95698 () Bool)

(assert (=> bm!95698 (= call!95700 (printList!657 (ite c!232610 lt!475649 (ite c!232614 lt!475629 lt!475684)) (ite c!232610 lt!475659 (ite c!232614 lt!475627 lt!475633))))))

(declare-fun bm!95699 () Bool)

(declare-fun call!95696 () List!14541)

(declare-fun call!95709 () List!14541)

(assert (=> bm!95699 (= call!95696 call!95709)))

(declare-fun bm!95700 () Bool)

(declare-fun call!95708 () BalanceConc!9590)

(assert (=> bm!95700 (= call!95699 call!95708)))

(declare-fun bm!95701 () Bool)

(declare-fun call!95697 () Unit!21270)

(assert (=> bm!95701 (= call!95695 call!95697)))

(declare-fun b!1415297 () Bool)

(assert (=> b!1415297 (= e!903472 Nil!14475)))

(declare-fun bm!95702 () Bool)

(declare-fun call!95710 () BalanceConc!9590)

(assert (=> bm!95702 (= call!95710 (print!970 (ite c!232610 acc!229 (v!21981 lt!475262))))))

(declare-fun bm!95703 () Bool)

(assert (=> bm!95703 (= call!95722 (list!5694 call!95691))))

(declare-fun b!1415298 () Bool)

(assert (=> b!1415298 (= e!903478 call!95687)))

(declare-fun d!405109 () Bool)

(assert (=> d!405109 e!903477))

(declare-fun res!640921 () Bool)

(assert (=> d!405109 (=> res!640921 e!903477)))

(assert (=> d!405109 (= res!640921 (isEmpty!8871 lt!475652))))

(declare-fun e!903473 () Option!2778)

(assert (=> d!405109 (= lt!475652 e!903473)))

(declare-fun isEmpty!8878 (BalanceConc!9592) Bool)

(assert (=> d!405109 (= c!232610 (isEmpty!8878 (tokens!1786 (v!21981 lt!475262))))))

(declare-fun lt!475671 () Unit!21270)

(declare-fun lemmaInvariant!229 (PrintableTokens!816) Unit!21270)

(assert (=> d!405109 (= lt!475671 (lemmaInvariant!229 acc!229))))

(declare-fun lt!475681 () Unit!21270)

(assert (=> d!405109 (= lt!475681 (lemmaInvariant!229 (v!21981 lt!475262)))))

(assert (=> d!405109 (= (rules!11068 acc!229) (rules!11068 (v!21981 lt!475262)))))

(assert (=> d!405109 (= (append!436 acc!229 (v!21981 lt!475262)) lt!475652)))

(declare-fun bm!95704 () Bool)

(assert (=> bm!95704 (= call!95690 (++!3787 (ite c!232610 call!95709 (ite c!232614 call!95687 call!95711)) (ite c!232610 call!95700 (ite c!232614 call!95711 call!95715))))))

(declare-fun bm!95705 () Bool)

(assert (=> bm!95705 (= call!95689 call!95723)))

(declare-fun bm!95706 () Bool)

(assert (=> bm!95706 (= call!95709 (printList!657 (ite c!232610 lt!475649 (ite c!232614 Lexer!2197 lt!475684)) (ite c!232610 lt!475679 (ite c!232614 Nil!14476 lt!475651))))))

(declare-fun b!1415299 () Bool)

(declare-fun lt!475667 () Unit!21270)

(declare-fun Unit!21275 () Unit!21270)

(assert (=> b!1415299 (= lt!475667 Unit!21275)))

(assert (=> b!1415299 (= call!95689 e!903472)))

(declare-fun c!232613 () Bool)

(assert (=> b!1415299 (= c!232613 ((_ is Cons!14476) lt!475660))))

(assert (=> b!1415299 (= lt!475660 call!95702)))

(declare-fun lt!475662 () Unit!21270)

(declare-fun Unit!21276 () Unit!21270)

(assert (=> b!1415299 (= lt!475662 Unit!21276)))

(assert (=> b!1415299 (= call!95713 call!95694)))

(declare-fun lt!475687 () Unit!21270)

(declare-fun Unit!21277 () Unit!21270)

(assert (=> b!1415299 (= lt!475687 Unit!21277)))

(assert (=> b!1415299 (= call!95688 call!95713)))

(declare-fun lt!475656 () Unit!21270)

(assert (=> b!1415299 (= lt!475656 call!95695)))

(declare-fun lt!475675 () Unit!21270)

(declare-fun Unit!21278 () Unit!21270)

(assert (=> b!1415299 (= lt!475675 Unit!21278)))

(assert (=> b!1415299 (= call!95699 call!95693)))

(declare-fun lt!475637 () Unit!21270)

(assert (=> b!1415299 (= lt!475637 call!95701)))

(declare-fun lt!475670 () Unit!21270)

(declare-fun Unit!21279 () Unit!21270)

(assert (=> b!1415299 (= lt!475670 Unit!21279)))

(assert (=> b!1415299 (= call!95696 Nil!14475)))

(declare-fun lt!475632 () Unit!21270)

(declare-fun lt!475646 () Unit!21270)

(assert (=> b!1415299 (= lt!475632 lt!475646)))

(assert (=> b!1415299 (= call!95714 call!95705)))

(assert (=> b!1415299 (= lt!475646 call!95692)))

(assert (=> b!1415299 (= lt!475677 call!95702)))

(assert (=> b!1415299 (= lt!475627 Nil!14476)))

(assert (=> b!1415299 (= lt!475629 Lexer!2197)))

(assert (=> b!1415299 (= e!903475 (Some!2777 (v!21981 lt!475262)))))

(declare-fun b!1415300 () Bool)

(assert (=> b!1415300 (= e!903473 (Some!2777 acc!229))))

(assert (=> b!1415300 (= lt!475649 Lexer!2197)))

(assert (=> b!1415300 (= lt!475679 call!95698)))

(assert (=> b!1415300 (= lt!475659 Nil!14476)))

(declare-fun lt!475688 () Unit!21270)

(assert (=> b!1415300 (= lt!475688 call!95703)))

(assert (=> b!1415300 (= call!95717 call!95690)))

(declare-fun lt!475666 () Unit!21270)

(assert (=> b!1415300 (= lt!475666 lt!475688)))

(assert (=> b!1415300 (= call!95707 Nil!14475)))

(declare-fun lt!475643 () Unit!21270)

(declare-fun Unit!21280 () Unit!21270)

(assert (=> b!1415300 (= lt!475643 Unit!21280)))

(declare-fun lt!475685 () Unit!21270)

(assert (=> b!1415300 (= lt!475685 call!95686)))

(assert (=> b!1415300 (= call!95710 call!95712)))

(declare-fun lt!475655 () Unit!21270)

(declare-fun Unit!21281 () Unit!21270)

(assert (=> b!1415300 (= lt!475655 Unit!21281)))

(declare-fun lt!475630 () Unit!21270)

(assert (=> b!1415300 (= lt!475630 call!95697)))

(assert (=> b!1415300 (= call!95708 call!95685)))

(declare-fun lt!475647 () Unit!21270)

(declare-fun Unit!21282 () Unit!21270)

(assert (=> b!1415300 (= lt!475647 Unit!21282)))

(assert (=> b!1415300 (= call!95685 call!95694)))

(declare-fun lt!475654 () Unit!21270)

(declare-fun Unit!21283 () Unit!21270)

(assert (=> b!1415300 (= lt!475654 Unit!21283)))

(assert (=> b!1415300 (= lt!475639 call!95718)))

(declare-fun c!232612 () Bool)

(assert (=> b!1415300 (= c!232612 ((_ is Cons!14476) lt!475639))))

(assert (=> b!1415300 (= call!95723 e!903474)))

(declare-fun lt!475641 () Unit!21270)

(declare-fun Unit!21284 () Unit!21270)

(assert (=> b!1415300 (= lt!475641 Unit!21284)))

(declare-fun bm!95707 () Bool)

(assert (=> bm!95707 (= call!95703 (lemmaPrintConcatSameAsConcatPrint!22 (ite c!232610 lt!475649 (ite c!232614 lt!475629 lt!475673)) (ite c!232610 lt!475679 (ite c!232614 lt!475627 lt!475642)) (ite c!232610 lt!475659 (ite c!232614 lt!475677 lt!475676))))))

(declare-fun b!1415301 () Bool)

(assert (=> b!1415301 (= e!903476 None!2777)))

(declare-fun bm!95708 () Bool)

(assert (=> bm!95708 (= call!95688 call!95710)))

(declare-fun bm!95709 () Bool)

(assert (=> bm!95709 (= call!95693 call!95712)))

(declare-fun b!1415302 () Bool)

(assert (=> b!1415302 (= e!903471 call!95719)))

(declare-fun b!1415303 () Bool)

(assert (=> b!1415303 (= e!903471 (++!3788 lt!475642 lt!475676))))

(declare-fun b!1415304 () Bool)

(assert (=> b!1415304 (= e!903473 e!903475)))

(assert (=> b!1415304 (= c!232614 (isEmpty!8878 (tokens!1786 acc!229)))))

(declare-fun bm!95710 () Bool)

(assert (=> bm!95710 (= call!95708 (print!970 (ite c!232610 (v!21981 lt!475262) acc!229)))))

(declare-fun bm!95711 () Bool)

(assert (=> bm!95711 (= call!95706 call!95698)))

(declare-fun bm!95712 () Bool)

(assert (=> bm!95712 (= call!95698 (list!5695 (tokens!1786 acc!229)))))

(declare-fun b!1415305 () Bool)

(declare-fun res!640920 () Bool)

(assert (=> b!1415305 (=> (not res!640920) (not e!903479))))

(assert (=> b!1415305 (= res!640920 (= (list!5695 (tokens!1786 (get!4452 lt!475652))) (++!3788 (list!5695 (tokens!1786 acc!229)) (list!5695 (tokens!1786 (v!21981 lt!475262))))))))

(declare-fun bm!95713 () Bool)

(assert (=> bm!95713 (= call!95716 (++!3787 (ite c!232610 call!95722 e!903478) (ite c!232610 call!95720 (ite c!232614 call!95715 call!95696))))))

(declare-fun bm!95714 () Bool)

(assert (=> bm!95714 (= call!95719 (++!3788 (ite c!232614 lt!475627 lt!475633) (ite c!232614 lt!475677 lt!475651)))))

(declare-fun bm!95715 () Bool)

(assert (=> bm!95715 (= call!95697 (theoremInvertabilityWhenTokenListSeparable!27 Lexer!2197 (rules!11068 (v!21981 lt!475262)) (ite c!232610 call!95718 call!95702)))))

(declare-fun bm!95716 () Bool)

(assert (=> bm!95716 (= call!95718 (list!5695 (tokens!1786 (v!21981 lt!475262))))))

(declare-fun bm!95717 () Bool)

(assert (=> bm!95717 (= call!95685 (print!969 Lexer!2197 (tokens!1786 (v!21981 lt!475262))))))

(declare-fun bm!95718 () Bool)

(declare-fun c!232615 () Bool)

(assert (=> bm!95718 (= c!232615 c!232614)))

(assert (=> bm!95718 (= call!95714 call!95717)))

(assert (= (and d!405109 c!232610) b!1415300))

(assert (= (and d!405109 (not c!232610)) b!1415304))

(assert (= (and b!1415300 c!232612) b!1415293))

(assert (= (and b!1415300 (not c!232612)) b!1415291))

(assert (= (and b!1415304 c!232614) b!1415299))

(assert (= (and b!1415304 (not c!232614)) b!1415290))

(assert (= (and b!1415299 c!232613) b!1415295))

(assert (= (and b!1415299 (not c!232613)) b!1415297))

(assert (= (and b!1415290 c!232611) b!1415296))

(assert (= (and b!1415290 (not c!232611)) b!1415301))

(assert (= (or b!1415299 b!1415296) bm!95708))

(assert (= (or b!1415299 b!1415296) bm!95714))

(assert (= (or b!1415295 b!1415296) bm!95689))

(assert (= (or b!1415299 b!1415296) bm!95699))

(assert (= (or b!1415299 b!1415290 b!1415296) bm!95711))

(assert (= (or b!1415299 b!1415290 b!1415296) bm!95690))

(assert (= (or b!1415299 b!1415296) bm!95695))

(assert (= (or b!1415299 b!1415296) bm!95700))

(assert (= (or b!1415299 b!1415296) bm!95686))

(assert (= (or b!1415299 b!1415296) bm!95693))

(assert (= (or b!1415299 b!1415296) bm!95683))

(assert (= (or b!1415299 b!1415296) bm!95709))

(assert (= (or b!1415299 b!1415296) bm!95701))

(assert (= (or b!1415299 b!1415296) bm!95718))

(assert (= (and bm!95718 c!232615) b!1415302))

(assert (= (and bm!95718 (not c!232615)) b!1415303))

(assert (= (or b!1415299 b!1415296) bm!95687))

(assert (= (or b!1415299 b!1415296) bm!95705))

(assert (= (or b!1415299 b!1415296) bm!95684))

(assert (= (or b!1415295 b!1415296) bm!95694))

(assert (= (and bm!95694 c!232609) b!1415294))

(assert (= (and bm!95694 (not c!232609)) b!1415298))

(assert (= (or b!1415300 bm!95709) bm!95680))

(assert (= (or b!1415300 b!1415296) bm!95696))

(assert (= (or b!1415300 bm!95708) bm!95702))

(assert (= (or b!1415300 bm!95695) bm!95698))

(assert (= (or b!1415300 b!1415299) bm!95682))

(assert (= (or b!1415300 bm!95690) bm!95716))

(assert (= (or b!1415293 b!1415294) bm!95691))

(assert (= (or b!1415300 bm!95711) bm!95712))

(assert (= (or b!1415300 bm!95700) bm!95710))

(assert (= (or b!1415300 bm!95699) bm!95706))

(assert (= (or b!1415300 bm!95693) bm!95717))

(assert (= (or b!1415300 bm!95689) bm!95681))

(assert (= (or b!1415300 bm!95683) bm!95707))

(assert (= (or b!1415293 bm!95686) bm!95697))

(assert (= (or b!1415300 bm!95687) bm!95688))

(assert (= (or b!1415300 bm!95718) bm!95692))

(assert (= (or b!1415300 bm!95705) bm!95685))

(assert (= (or b!1415300 bm!95701) bm!95715))

(assert (= (or b!1415293 b!1415294) bm!95703))

(assert (= (or b!1415300 bm!95684) bm!95704))

(assert (= (or b!1415293 bm!95694) bm!95713))

(assert (= (and d!405109 (not res!640921)) b!1415292))

(assert (= (and b!1415292 res!640919) b!1415305))

(assert (= (and b!1415305 res!640920) b!1415289))

(declare-fun m!1599963 () Bool)

(assert (=> bm!95698 m!1599963))

(declare-fun m!1599965 () Bool)

(assert (=> b!1415305 m!1599965))

(declare-fun m!1599967 () Bool)

(assert (=> b!1415305 m!1599967))

(declare-fun m!1599969 () Bool)

(assert (=> b!1415305 m!1599969))

(assert (=> b!1415305 m!1599969))

(declare-fun m!1599971 () Bool)

(assert (=> b!1415305 m!1599971))

(declare-fun m!1599973 () Bool)

(assert (=> b!1415305 m!1599973))

(assert (=> b!1415305 m!1599971))

(declare-fun m!1599975 () Bool)

(assert (=> bm!95692 m!1599975))

(declare-fun m!1599977 () Bool)

(assert (=> bm!95710 m!1599977))

(declare-fun m!1599979 () Bool)

(assert (=> b!1415296 m!1599979))

(declare-fun m!1599981 () Bool)

(assert (=> b!1415296 m!1599981))

(assert (=> b!1415296 m!1599979))

(declare-fun m!1599983 () Bool)

(assert (=> b!1415296 m!1599983))

(declare-fun m!1599985 () Bool)

(assert (=> b!1415296 m!1599985))

(declare-fun m!1599987 () Bool)

(assert (=> b!1415296 m!1599987))

(declare-fun m!1599989 () Bool)

(assert (=> b!1415296 m!1599989))

(declare-fun m!1599991 () Bool)

(assert (=> b!1415296 m!1599991))

(declare-fun m!1599993 () Bool)

(assert (=> b!1415296 m!1599993))

(declare-fun m!1599995 () Bool)

(assert (=> b!1415296 m!1599995))

(assert (=> b!1415296 m!1599979))

(assert (=> b!1415296 m!1599983))

(declare-fun m!1599997 () Bool)

(assert (=> b!1415296 m!1599997))

(declare-fun m!1599999 () Bool)

(assert (=> bm!95706 m!1599999))

(declare-fun m!1600001 () Bool)

(assert (=> bm!95704 m!1600001))

(declare-fun m!1600003 () Bool)

(assert (=> bm!95715 m!1600003))

(declare-fun m!1600005 () Bool)

(assert (=> bm!95691 m!1600005))

(declare-fun m!1600007 () Bool)

(assert (=> bm!95713 m!1600007))

(declare-fun m!1600009 () Bool)

(assert (=> bm!95680 m!1600009))

(declare-fun m!1600011 () Bool)

(assert (=> bm!95697 m!1600011))

(declare-fun m!1600013 () Bool)

(assert (=> d!405109 m!1600013))

(declare-fun m!1600015 () Bool)

(assert (=> d!405109 m!1600015))

(declare-fun m!1600017 () Bool)

(assert (=> d!405109 m!1600017))

(declare-fun m!1600019 () Bool)

(assert (=> d!405109 m!1600019))

(declare-fun m!1600021 () Bool)

(assert (=> bm!95688 m!1600021))

(declare-fun m!1600023 () Bool)

(assert (=> bm!95696 m!1600023))

(declare-fun m!1600025 () Bool)

(assert (=> b!1415289 m!1600025))

(declare-fun m!1600027 () Bool)

(assert (=> b!1415289 m!1600027))

(declare-fun m!1600029 () Bool)

(assert (=> b!1415289 m!1600029))

(declare-fun m!1600031 () Bool)

(assert (=> b!1415289 m!1600031))

(declare-fun m!1600033 () Bool)

(assert (=> b!1415289 m!1600033))

(assert (=> b!1415289 m!1600025))

(assert (=> b!1415289 m!1599967))

(assert (=> b!1415289 m!1599967))

(declare-fun m!1600035 () Bool)

(assert (=> b!1415289 m!1600035))

(assert (=> b!1415289 m!1600033))

(assert (=> b!1415289 m!1600031))

(assert (=> b!1415289 m!1600027))

(assert (=> b!1415289 m!1600035))

(declare-fun m!1600037 () Bool)

(assert (=> b!1415289 m!1600037))

(declare-fun m!1600039 () Bool)

(assert (=> bm!95714 m!1600039))

(declare-fun m!1600041 () Bool)

(assert (=> b!1415303 m!1600041))

(declare-fun m!1600043 () Bool)

(assert (=> bm!95707 m!1600043))

(declare-fun m!1600045 () Bool)

(assert (=> b!1415290 m!1600045))

(declare-fun m!1600047 () Bool)

(assert (=> b!1415290 m!1600047))

(declare-fun m!1600049 () Bool)

(assert (=> b!1415290 m!1600049))

(declare-fun m!1600051 () Bool)

(assert (=> b!1415290 m!1600051))

(assert (=> b!1415290 m!1600045))

(assert (=> b!1415290 m!1600051))

(declare-fun m!1600053 () Bool)

(assert (=> b!1415290 m!1600053))

(declare-fun m!1600055 () Bool)

(assert (=> b!1415290 m!1600055))

(declare-fun m!1600057 () Bool)

(assert (=> b!1415290 m!1600057))

(assert (=> bm!95712 m!1599969))

(declare-fun m!1600059 () Bool)

(assert (=> bm!95682 m!1600059))

(declare-fun m!1600061 () Bool)

(assert (=> bm!95681 m!1600061))

(declare-fun m!1600063 () Bool)

(assert (=> bm!95702 m!1600063))

(declare-fun m!1600065 () Bool)

(assert (=> bm!95717 m!1600065))

(declare-fun m!1600069 () Bool)

(assert (=> bm!95685 m!1600069))

(assert (=> b!1415292 m!1599967))

(declare-fun m!1600073 () Bool)

(assert (=> bm!95703 m!1600073))

(assert (=> bm!95716 m!1599971))

(declare-fun m!1600077 () Bool)

(assert (=> b!1415304 m!1600077))

(assert (=> b!1415081 d!405109))

(declare-fun d!405123 () Bool)

(declare-datatypes ((JsonLexer!402 0))(
  ( (JsonLexer!403) )
))
(declare-fun rules!109 (JsonLexer!402) List!14543)

(assert (=> d!405123 (= (usesJsonRules!0 sep!3) (= (rules!11068 sep!3) (rules!109 JsonLexer!403)))))

(declare-fun bs!339339 () Bool)

(assert (= bs!339339 d!405123))

(declare-fun m!1600225 () Bool)

(assert (=> bs!339339 m!1600225))

(assert (=> b!1415080 d!405123))

(declare-fun d!405133 () Bool)

(assert (=> d!405133 (= (usesJsonRules!0 acc!229) (= (rules!11068 acc!229) (rules!109 JsonLexer!403)))))

(declare-fun bs!339340 () Bool)

(assert (= bs!339340 d!405133))

(assert (=> bs!339340 m!1600225))

(assert (=> b!1415078 d!405133))

(declare-fun d!405135 () Bool)

(declare-fun lt!475761 () Bool)

(declare-fun isEmpty!8879 (List!14544) Bool)

(assert (=> d!405135 (= lt!475761 (isEmpty!8879 (list!5693 objs!24)))))

(declare-fun isEmpty!8880 (Conc!4827) Bool)

(assert (=> d!405135 (= lt!475761 (isEmpty!8880 (c!232533 objs!24)))))

(assert (=> d!405135 (= (isEmpty!8872 objs!24) lt!475761)))

(declare-fun bs!339341 () Bool)

(assert (= bs!339341 d!405135))

(assert (=> bs!339341 m!1599777))

(assert (=> bs!339341 m!1599777))

(declare-fun m!1600227 () Bool)

(assert (=> bs!339341 m!1600227))

(declare-fun m!1600229 () Bool)

(assert (=> bs!339341 m!1600229))

(assert (=> b!1415089 d!405135))

(declare-fun bm!95758 () Bool)

(declare-fun call!95790 () BalanceConc!9590)

(assert (=> bm!95758 (= call!95790 (print!969 Lexer!2197 (tokens!1786 (head!2715 objs!24))))))

(declare-fun c!232628 () Bool)

(declare-fun bm!95759 () Bool)

(declare-fun call!95785 () List!14541)

(declare-fun lt!475813 () List!14542)

(declare-fun lt!475810 () LexerInterface!2199)

(declare-fun c!232632 () Bool)

(declare-fun lt!475797 () List!14542)

(assert (=> bm!95759 (= call!95785 (printList!657 (ite (or c!232628 c!232632) Lexer!2197 lt!475810) (ite c!232628 Nil!14476 (ite c!232632 (t!123957 lt!475797) lt!475813))))))

(declare-fun bm!95760 () Bool)

(declare-fun call!95772 () BalanceConc!9590)

(assert (=> bm!95760 (= call!95772 (printTailRec!639 Lexer!2197 (tokens!1786 sep!3) 0 (BalanceConc!9591 Empty!4825)))))

(declare-fun lt!475789 () Option!2778)

(declare-fun b!1415374 () Bool)

(declare-fun e!903535 () Bool)

(assert (=> b!1415374 (= e!903535 (= (list!5694 (print!970 (get!4452 lt!475789))) (++!3787 (list!5694 (print!970 (head!2715 objs!24))) (list!5694 (print!970 sep!3)))))))

(declare-fun bm!95761 () Bool)

(declare-fun call!95770 () Unit!21270)

(declare-fun call!95781 () Unit!21270)

(assert (=> bm!95761 (= call!95770 call!95781)))

(declare-fun bm!95762 () Bool)

(declare-fun call!95783 () List!14541)

(declare-fun call!95768 () List!14541)

(assert (=> bm!95762 (= call!95783 call!95768)))

(declare-fun bm!95763 () Bool)

(declare-fun call!95801 () List!14541)

(declare-fun call!95796 () List!14542)

(declare-fun call!95797 () List!14542)

(declare-fun lt!475821 () LexerInterface!2199)

(declare-fun call!95780 () List!14542)

(assert (=> bm!95763 (= call!95801 (printList!657 (ite (or c!232628 c!232632) Lexer!2197 lt!475821) (ite c!232628 call!95796 (ite c!232632 call!95780 call!95797))))))

(declare-fun bm!95764 () Bool)

(declare-fun call!95789 () List!14541)

(declare-fun call!95798 () List!14541)

(assert (=> bm!95764 (= call!95789 call!95798)))

(declare-fun bm!95765 () Bool)

(declare-fun call!95779 () Unit!21270)

(declare-fun call!95764 () Unit!21270)

(assert (=> bm!95765 (= call!95779 call!95764)))

(declare-fun b!1415375 () Bool)

(declare-fun c!232629 () Bool)

(assert (=> b!1415375 (= c!232629 (separableTokensPredicate!480 Lexer!2197 (last!73 (tokens!1786 (head!2715 objs!24))) (head!2719 (tokens!1786 sep!3)) (rules!11068 (head!2715 objs!24))))))

(declare-fun lt!475773 () Unit!21270)

(declare-fun lt!475762 () Unit!21270)

(assert (=> b!1415375 (= lt!475773 lt!475762)))

(declare-fun lt!475815 () LexerInterface!2199)

(declare-fun lt!475790 () Token!4696)

(assert (=> b!1415375 (rulesProduceIndividualToken!1166 lt!475815 (rules!11068 (head!2715 objs!24)) lt!475790)))

(declare-fun lt!475802 () List!14542)

(assert (=> b!1415375 (= lt!475762 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!351 lt!475815 (rules!11068 (head!2715 objs!24)) lt!475802 lt!475790))))

(assert (=> b!1415375 (= lt!475790 (head!2719 (tokens!1786 sep!3)))))

(assert (=> b!1415375 (= lt!475802 call!95780)))

(assert (=> b!1415375 (= lt!475815 Lexer!2197)))

(declare-fun lt!475772 () Unit!21270)

(declare-fun lt!475817 () Unit!21270)

(assert (=> b!1415375 (= lt!475772 lt!475817)))

(declare-fun lt!475763 () LexerInterface!2199)

(declare-fun lt!475811 () Token!4696)

(assert (=> b!1415375 (rulesProduceIndividualToken!1166 lt!475763 (rules!11068 (head!2715 objs!24)) lt!475811)))

(declare-fun lt!475782 () List!14542)

(assert (=> b!1415375 (= lt!475817 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!351 lt!475763 (rules!11068 (head!2715 objs!24)) lt!475782 lt!475811))))

(assert (=> b!1415375 (= lt!475811 (last!73 (tokens!1786 (head!2715 objs!24))))))

(declare-fun call!95784 () List!14542)

(assert (=> b!1415375 (= lt!475782 call!95784)))

(assert (=> b!1415375 (= lt!475763 Lexer!2197)))

(declare-fun e!903531 () Option!2778)

(declare-fun e!903532 () Option!2778)

(assert (=> b!1415375 (= e!903531 e!903532)))

(declare-fun bm!95766 () Bool)

(declare-fun call!95776 () List!14542)

(assert (=> bm!95766 (= call!95764 (theoremInvertabilityWhenTokenListSeparable!27 Lexer!2197 (rules!11068 (head!2715 objs!24)) (ite c!232628 call!95776 call!95784)))))

(declare-fun bm!95767 () Bool)

(declare-fun call!95793 () List!14541)

(assert (=> bm!95767 (= call!95793 call!95785)))

(declare-fun bm!95768 () Bool)

(assert (=> bm!95768 (= call!95780 call!95796)))

(declare-fun lt!475776 () List!14542)

(declare-fun call!95769 () BalanceConc!9590)

(declare-fun bm!95769 () Bool)

(assert (=> bm!95769 (= call!95769 (charsOf!1474 (ite c!232628 (h!19877 lt!475776) (h!19877 lt!475797))))))

(declare-fun call!95795 () List!14541)

(declare-fun lt!475766 () LexerInterface!2199)

(declare-fun lt!475786 () LexerInterface!2199)

(declare-fun e!903527 () List!14542)

(declare-fun bm!95770 () Bool)

(declare-fun call!95782 () List!14542)

(assert (=> bm!95770 (= call!95795 (printList!657 (ite c!232628 lt!475786 (ite c!232632 lt!475766 lt!475810)) (ite c!232628 call!95782 e!903527)))))

(declare-fun bm!95771 () Bool)

(declare-fun call!95791 () BalanceConc!9590)

(declare-fun call!95763 () BalanceConc!9590)

(assert (=> bm!95771 (= call!95791 call!95763)))

(declare-fun b!1415376 () Bool)

(declare-fun e!903530 () List!14541)

(assert (=> b!1415376 (= e!903530 Nil!14475)))

(declare-fun b!1415377 () Bool)

(declare-fun e!903533 () Bool)

(assert (=> b!1415377 (= e!903533 e!903535)))

(declare-fun res!640929 () Bool)

(assert (=> b!1415377 (=> (not res!640929) (not e!903535))))

(assert (=> b!1415377 (= res!640929 (= (rules!11068 (get!4452 lt!475789)) (rules!11068 (head!2715 objs!24))))))

(declare-fun b!1415378 () Bool)

(declare-fun call!95794 () List!14541)

(assert (=> b!1415378 (= e!903530 call!95794)))

(declare-fun bm!95772 () Bool)

(declare-fun c!232627 () Bool)

(assert (=> bm!95772 (= c!232627 c!232632)))

(declare-fun call!95799 () List!14541)

(assert (=> bm!95772 (= call!95799 call!95794)))

(declare-fun bm!95773 () Bool)

(declare-fun call!95765 () List!14541)

(declare-fun call!95778 () List!14541)

(assert (=> bm!95773 (= call!95765 call!95778)))

(declare-fun lt!475823 () List!14542)

(declare-fun lt!475816 () List!14542)

(declare-fun lt!475796 () List!14542)

(declare-fun lt!475801 () List!14542)

(declare-fun bm!95774 () Bool)

(assert (=> bm!95774 (= call!95782 (++!3788 (ite c!232628 lt!475816 lt!475801) (ite c!232628 lt!475796 lt!475823)))))

(declare-fun b!1415379 () Bool)

(declare-fun e!903534 () List!14541)

(declare-fun call!95800 () List!14541)

(assert (=> b!1415379 (= e!903534 call!95800)))

(declare-fun b!1415380 () Bool)

(declare-fun e!903528 () List!14541)

(assert (=> b!1415380 (= e!903528 call!95799)))

(declare-fun b!1415381 () Bool)

(assert (=> b!1415381 (= e!903532 (Some!2777 (PrintableTokens!817 (rules!11068 (head!2715 objs!24)) (++!3789 (tokens!1786 (head!2715 objs!24)) (tokens!1786 sep!3)))))))

(declare-fun lt!475775 () LexerInterface!2199)

(assert (=> b!1415381 (= lt!475775 Lexer!2197)))

(assert (=> b!1415381 (= lt!475801 call!95784)))

(assert (=> b!1415381 (= lt!475823 call!95780)))

(declare-fun lt!475820 () Unit!21270)

(assert (=> b!1415381 (= lt!475820 (tokensListTwoByTwoPredicateConcatSeparableTokensList!22 lt!475775 lt!475801 lt!475823 (rules!11068 (head!2715 objs!24))))))

(declare-fun lt!475819 () Unit!21270)

(assert (=> b!1415381 (= lt!475819 (lemmaRulesProduceEachTokenIndividuallyConcat!22 lt!475775 (rules!11068 (head!2715 objs!24)) lt!475801 lt!475823))))

(assert (=> b!1415381 (rulesProduceEachTokenIndividuallyList!682 lt!475775 (rules!11068 (head!2715 objs!24)) call!95782)))

(declare-fun lt!475794 () Unit!21270)

(assert (=> b!1415381 (= lt!475794 lt!475819)))

(assert (=> b!1415381 (tokensListTwoByTwoPredicateSeparableList!203 lt!475775 call!95782 (rules!11068 (head!2715 objs!24)))))

(declare-fun lt!475795 () Unit!21270)

(assert (=> b!1415381 (= lt!475795 lt!475820)))

(assert (=> b!1415381 (= lt!475821 Lexer!2197)))

(declare-fun lt!475770 () List!14542)

(assert (=> b!1415381 (= lt!475770 call!95784)))

(declare-fun lt!475788 () List!14542)

(assert (=> b!1415381 (= lt!475788 call!95780)))

(declare-fun lt!475765 () Unit!21270)

(assert (=> b!1415381 (= lt!475765 (lemmaPrintConcatSameAsConcatPrint!22 lt!475821 lt!475770 lt!475788))))

(declare-fun call!95767 () List!14541)

(assert (=> b!1415381 (= call!95767 call!95799)))

(declare-fun lt!475798 () Unit!21270)

(assert (=> b!1415381 (= lt!475798 lt!475765)))

(declare-fun lt!475800 () Unit!21270)

(assert (=> b!1415381 (= lt!475800 call!95779)))

(declare-fun call!95777 () BalanceConc!9590)

(declare-fun call!95771 () BalanceConc!9590)

(assert (=> b!1415381 (= call!95777 call!95771)))

(declare-fun lt!475785 () Unit!21270)

(declare-fun Unit!21285 () Unit!21270)

(assert (=> b!1415381 (= lt!475785 Unit!21285)))

(declare-fun lt!475787 () Unit!21270)

(declare-fun call!95773 () Unit!21270)

(assert (=> b!1415381 (= lt!475787 call!95773)))

(declare-fun call!95766 () BalanceConc!9590)

(assert (=> b!1415381 (= call!95766 call!95791)))

(declare-fun lt!475781 () Unit!21270)

(declare-fun Unit!21286 () Unit!21270)

(assert (=> b!1415381 (= lt!475781 Unit!21286)))

(declare-fun lt!475805 () PrintableTokens!816)

(assert (=> b!1415381 (= lt!475805 (PrintableTokens!817 (rules!11068 (head!2715 objs!24)) (++!3789 (tokens!1786 (head!2715 objs!24)) (tokens!1786 sep!3))))))

(declare-fun lt!475809 () BalanceConc!9592)

(assert (=> b!1415381 (= lt!475809 (++!3789 (tokens!1786 (head!2715 objs!24)) (tokens!1786 sep!3)))))

(declare-fun lt!475806 () Unit!21270)

(assert (=> b!1415381 (= lt!475806 (theoremInvertabilityWhenTokenListSeparable!27 Lexer!2197 (rules!11068 (head!2715 objs!24)) (list!5695 (++!3789 (tokens!1786 (head!2715 objs!24)) (tokens!1786 sep!3)))))))

(assert (=> b!1415381 (= (print!970 (PrintableTokens!817 (rules!11068 (head!2715 objs!24)) (++!3789 (tokens!1786 (head!2715 objs!24)) (tokens!1786 sep!3)))) (print!969 Lexer!2197 (++!3789 (tokens!1786 (head!2715 objs!24)) (tokens!1786 sep!3))))))

(declare-fun lt!475768 () Unit!21270)

(declare-fun Unit!21287 () Unit!21270)

(assert (=> b!1415381 (= lt!475768 Unit!21287)))

(assert (=> b!1415381 (= lt!475810 Lexer!2197)))

(declare-fun lt!475779 () List!14542)

(assert (=> b!1415381 (= lt!475779 call!95784)))

(assert (=> b!1415381 (= lt!475813 call!95780)))

(declare-fun lt!475777 () Unit!21270)

(assert (=> b!1415381 (= lt!475777 call!95770)))

(declare-fun call!95792 () List!14541)

(assert (=> b!1415381 (= call!95792 call!95783)))

(declare-fun lt!475771 () Unit!21270)

(assert (=> b!1415381 (= lt!475771 lt!475777)))

(declare-fun lt!475814 () List!14542)

(declare-fun bm!95775 () Bool)

(assert (=> bm!95775 (= call!95798 (printList!657 (ite c!232628 Lexer!2197 (ite c!232632 lt!475766 lt!475810)) (ite c!232628 (t!123957 lt!475776) (ite c!232632 lt!475814 lt!475779))))))

(declare-fun bm!95776 () Bool)

(declare-fun lt!475764 () List!14542)

(assert (=> bm!95776 (= call!95778 (printList!657 (ite c!232628 lt!475786 (ite c!232632 lt!475766 lt!475821)) (ite c!232628 lt!475796 (ite c!232632 lt!475764 lt!475770))))))

(declare-fun bm!95777 () Bool)

(declare-fun call!95774 () List!14541)

(declare-fun call!95787 () List!14541)

(assert (=> bm!95777 (= call!95774 call!95787)))

(declare-fun bm!95778 () Bool)

(declare-fun call!95786 () BalanceConc!9590)

(assert (=> bm!95778 (= call!95777 call!95786)))

(declare-fun bm!95779 () Bool)

(declare-fun call!95775 () Unit!21270)

(assert (=> bm!95779 (= call!95773 call!95775)))

(declare-fun b!1415382 () Bool)

(assert (=> b!1415382 (= e!903528 Nil!14475)))

(declare-fun bm!95780 () Bool)

(declare-fun call!95788 () BalanceConc!9590)

(assert (=> bm!95780 (= call!95788 (print!970 (ite c!232628 (head!2715 objs!24) sep!3)))))

(declare-fun bm!95781 () Bool)

(assert (=> bm!95781 (= call!95800 (list!5694 call!95769))))

(declare-fun b!1415383 () Bool)

(assert (=> b!1415383 (= e!903534 call!95765)))

(declare-fun d!405137 () Bool)

(assert (=> d!405137 e!903533))

(declare-fun res!640931 () Bool)

(assert (=> d!405137 (=> res!640931 e!903533)))

(assert (=> d!405137 (= res!640931 (isEmpty!8871 lt!475789))))

(declare-fun e!903529 () Option!2778)

(assert (=> d!405137 (= lt!475789 e!903529)))

(assert (=> d!405137 (= c!232628 (isEmpty!8878 (tokens!1786 sep!3)))))

(declare-fun lt!475808 () Unit!21270)

(assert (=> d!405137 (= lt!475808 (lemmaInvariant!229 (head!2715 objs!24)))))

(declare-fun lt!475818 () Unit!21270)

(assert (=> d!405137 (= lt!475818 (lemmaInvariant!229 sep!3))))

(assert (=> d!405137 (= (rules!11068 (head!2715 objs!24)) (rules!11068 sep!3))))

(assert (=> d!405137 (= (append!436 (head!2715 objs!24) sep!3) lt!475789)))

(declare-fun bm!95782 () Bool)

(assert (=> bm!95782 (= call!95768 (++!3787 (ite c!232628 call!95787 (ite c!232632 call!95765 call!95789)) (ite c!232628 call!95778 (ite c!232632 call!95789 call!95793))))))

(declare-fun bm!95783 () Bool)

(assert (=> bm!95783 (= call!95767 call!95801)))

(declare-fun bm!95784 () Bool)

(assert (=> bm!95784 (= call!95787 (printList!657 (ite c!232628 lt!475786 (ite c!232632 Lexer!2197 lt!475821)) (ite c!232628 lt!475816 (ite c!232632 Nil!14476 lt!475788))))))

(declare-fun b!1415384 () Bool)

(declare-fun lt!475804 () Unit!21270)

(declare-fun Unit!21288 () Unit!21270)

(assert (=> b!1415384 (= lt!475804 Unit!21288)))

(assert (=> b!1415384 (= call!95767 e!903528)))

(declare-fun c!232631 () Bool)

(assert (=> b!1415384 (= c!232631 ((_ is Cons!14476) lt!475797))))

(assert (=> b!1415384 (= lt!475797 call!95780)))

(declare-fun lt!475799 () Unit!21270)

(declare-fun Unit!21289 () Unit!21270)

(assert (=> b!1415384 (= lt!475799 Unit!21289)))

(assert (=> b!1415384 (= call!95791 call!95772)))

(declare-fun lt!475824 () Unit!21270)

(declare-fun Unit!21290 () Unit!21270)

(assert (=> b!1415384 (= lt!475824 Unit!21290)))

(assert (=> b!1415384 (= call!95766 call!95791)))

(declare-fun lt!475793 () Unit!21270)

(assert (=> b!1415384 (= lt!475793 call!95773)))

(declare-fun lt!475812 () Unit!21270)

(declare-fun Unit!21291 () Unit!21270)

(assert (=> b!1415384 (= lt!475812 Unit!21291)))

(assert (=> b!1415384 (= call!95777 call!95771)))

(declare-fun lt!475774 () Unit!21270)

(assert (=> b!1415384 (= lt!475774 call!95779)))

(declare-fun lt!475807 () Unit!21270)

(declare-fun Unit!21292 () Unit!21270)

(assert (=> b!1415384 (= lt!475807 Unit!21292)))

(assert (=> b!1415384 (= call!95774 Nil!14475)))

(declare-fun lt!475769 () Unit!21270)

(declare-fun lt!475783 () Unit!21270)

(assert (=> b!1415384 (= lt!475769 lt!475783)))

(assert (=> b!1415384 (= call!95792 call!95783)))

(assert (=> b!1415384 (= lt!475783 call!95770)))

(assert (=> b!1415384 (= lt!475814 call!95780)))

(assert (=> b!1415384 (= lt!475764 Nil!14476)))

(assert (=> b!1415384 (= lt!475766 Lexer!2197)))

(assert (=> b!1415384 (= e!903531 (Some!2777 sep!3))))

(declare-fun b!1415385 () Bool)

(assert (=> b!1415385 (= e!903529 (Some!2777 (head!2715 objs!24)))))

(assert (=> b!1415385 (= lt!475786 Lexer!2197)))

(assert (=> b!1415385 (= lt!475816 call!95776)))

(assert (=> b!1415385 (= lt!475796 Nil!14476)))

(declare-fun lt!475825 () Unit!21270)

(assert (=> b!1415385 (= lt!475825 call!95781)))

(assert (=> b!1415385 (= call!95795 call!95768)))

(declare-fun lt!475803 () Unit!21270)

(assert (=> b!1415385 (= lt!475803 lt!475825)))

(assert (=> b!1415385 (= call!95785 Nil!14475)))

(declare-fun lt!475780 () Unit!21270)

(declare-fun Unit!21293 () Unit!21270)

(assert (=> b!1415385 (= lt!475780 Unit!21293)))

(declare-fun lt!475822 () Unit!21270)

(assert (=> b!1415385 (= lt!475822 call!95764)))

(assert (=> b!1415385 (= call!95788 call!95790)))

(declare-fun lt!475792 () Unit!21270)

(declare-fun Unit!21294 () Unit!21270)

(assert (=> b!1415385 (= lt!475792 Unit!21294)))

(declare-fun lt!475767 () Unit!21270)

(assert (=> b!1415385 (= lt!475767 call!95775)))

(assert (=> b!1415385 (= call!95786 call!95763)))

(declare-fun lt!475784 () Unit!21270)

(declare-fun Unit!21295 () Unit!21270)

(assert (=> b!1415385 (= lt!475784 Unit!21295)))

(assert (=> b!1415385 (= call!95763 call!95772)))

(declare-fun lt!475791 () Unit!21270)

(declare-fun Unit!21296 () Unit!21270)

(assert (=> b!1415385 (= lt!475791 Unit!21296)))

(assert (=> b!1415385 (= lt!475776 call!95796)))

(declare-fun c!232630 () Bool)

(assert (=> b!1415385 (= c!232630 ((_ is Cons!14476) lt!475776))))

(assert (=> b!1415385 (= call!95801 e!903530)))

(declare-fun lt!475778 () Unit!21270)

(declare-fun Unit!21297 () Unit!21270)

(assert (=> b!1415385 (= lt!475778 Unit!21297)))

(declare-fun bm!95785 () Bool)

(assert (=> bm!95785 (= call!95781 (lemmaPrintConcatSameAsConcatPrint!22 (ite c!232628 lt!475786 (ite c!232632 lt!475766 lt!475810)) (ite c!232628 lt!475816 (ite c!232632 lt!475764 lt!475779)) (ite c!232628 lt!475796 (ite c!232632 lt!475814 lt!475813))))))

(declare-fun b!1415386 () Bool)

(assert (=> b!1415386 (= e!903532 None!2777)))

(declare-fun bm!95786 () Bool)

(assert (=> bm!95786 (= call!95766 call!95788)))

(declare-fun bm!95787 () Bool)

(assert (=> bm!95787 (= call!95771 call!95790)))

(declare-fun b!1415387 () Bool)

(assert (=> b!1415387 (= e!903527 call!95797)))

(declare-fun b!1415388 () Bool)

(assert (=> b!1415388 (= e!903527 (++!3788 lt!475779 lt!475813))))

(declare-fun b!1415389 () Bool)

(assert (=> b!1415389 (= e!903529 e!903531)))

(assert (=> b!1415389 (= c!232632 (isEmpty!8878 (tokens!1786 (head!2715 objs!24))))))

(declare-fun bm!95788 () Bool)

(assert (=> bm!95788 (= call!95786 (print!970 (ite c!232628 sep!3 (head!2715 objs!24))))))

(declare-fun bm!95789 () Bool)

(assert (=> bm!95789 (= call!95784 call!95776)))

(declare-fun bm!95790 () Bool)

(assert (=> bm!95790 (= call!95776 (list!5695 (tokens!1786 (head!2715 objs!24))))))

(declare-fun b!1415390 () Bool)

(declare-fun res!640930 () Bool)

(assert (=> b!1415390 (=> (not res!640930) (not e!903535))))

(assert (=> b!1415390 (= res!640930 (= (list!5695 (tokens!1786 (get!4452 lt!475789))) (++!3788 (list!5695 (tokens!1786 (head!2715 objs!24))) (list!5695 (tokens!1786 sep!3)))))))

(declare-fun bm!95791 () Bool)

(assert (=> bm!95791 (= call!95794 (++!3787 (ite c!232628 call!95800 e!903534) (ite c!232628 call!95798 (ite c!232632 call!95793 call!95774))))))

(declare-fun bm!95792 () Bool)

(assert (=> bm!95792 (= call!95797 (++!3788 (ite c!232632 lt!475764 lt!475770) (ite c!232632 lt!475814 lt!475788)))))

(declare-fun bm!95793 () Bool)

(assert (=> bm!95793 (= call!95775 (theoremInvertabilityWhenTokenListSeparable!27 Lexer!2197 (rules!11068 sep!3) (ite c!232628 call!95796 call!95780)))))

(declare-fun bm!95794 () Bool)

(assert (=> bm!95794 (= call!95796 (list!5695 (tokens!1786 sep!3)))))

(declare-fun bm!95795 () Bool)

(assert (=> bm!95795 (= call!95763 (print!969 Lexer!2197 (tokens!1786 sep!3)))))

(declare-fun bm!95796 () Bool)

(declare-fun c!232633 () Bool)

(assert (=> bm!95796 (= c!232633 c!232632)))

(assert (=> bm!95796 (= call!95792 call!95795)))

(assert (= (and d!405137 c!232628) b!1415385))

(assert (= (and d!405137 (not c!232628)) b!1415389))

(assert (= (and b!1415385 c!232630) b!1415378))

(assert (= (and b!1415385 (not c!232630)) b!1415376))

(assert (= (and b!1415389 c!232632) b!1415384))

(assert (= (and b!1415389 (not c!232632)) b!1415375))

(assert (= (and b!1415384 c!232631) b!1415380))

(assert (= (and b!1415384 (not c!232631)) b!1415382))

(assert (= (and b!1415375 c!232629) b!1415381))

(assert (= (and b!1415375 (not c!232629)) b!1415386))

(assert (= (or b!1415384 b!1415381) bm!95786))

(assert (= (or b!1415384 b!1415381) bm!95792))

(assert (= (or b!1415380 b!1415381) bm!95767))

(assert (= (or b!1415384 b!1415381) bm!95777))

(assert (= (or b!1415384 b!1415375 b!1415381) bm!95789))

(assert (= (or b!1415384 b!1415375 b!1415381) bm!95768))

(assert (= (or b!1415384 b!1415381) bm!95773))

(assert (= (or b!1415384 b!1415381) bm!95778))

(assert (= (or b!1415384 b!1415381) bm!95764))

(assert (= (or b!1415384 b!1415381) bm!95771))

(assert (= (or b!1415384 b!1415381) bm!95761))

(assert (= (or b!1415384 b!1415381) bm!95787))

(assert (= (or b!1415384 b!1415381) bm!95779))

(assert (= (or b!1415384 b!1415381) bm!95796))

(assert (= (and bm!95796 c!232633) b!1415387))

(assert (= (and bm!95796 (not c!232633)) b!1415388))

(assert (= (or b!1415384 b!1415381) bm!95765))

(assert (= (or b!1415384 b!1415381) bm!95783))

(assert (= (or b!1415384 b!1415381) bm!95762))

(assert (= (or b!1415380 b!1415381) bm!95772))

(assert (= (and bm!95772 c!232627) b!1415379))

(assert (= (and bm!95772 (not c!232627)) b!1415383))

(assert (= (or b!1415385 bm!95787) bm!95758))

(assert (= (or b!1415385 b!1415381) bm!95774))

(assert (= (or b!1415385 bm!95786) bm!95780))

(assert (= (or b!1415385 bm!95773) bm!95776))

(assert (= (or b!1415385 b!1415384) bm!95760))

(assert (= (or b!1415385 bm!95768) bm!95794))

(assert (= (or b!1415378 b!1415379) bm!95769))

(assert (= (or b!1415385 bm!95789) bm!95790))

(assert (= (or b!1415385 bm!95778) bm!95788))

(assert (= (or b!1415385 bm!95777) bm!95784))

(assert (= (or b!1415385 bm!95771) bm!95795))

(assert (= (or b!1415385 bm!95767) bm!95759))

(assert (= (or b!1415385 bm!95761) bm!95785))

(assert (= (or b!1415378 bm!95764) bm!95775))

(assert (= (or b!1415385 bm!95765) bm!95766))

(assert (= (or b!1415385 bm!95796) bm!95770))

(assert (= (or b!1415385 bm!95783) bm!95763))

(assert (= (or b!1415385 bm!95779) bm!95793))

(assert (= (or b!1415378 b!1415379) bm!95781))

(assert (= (or b!1415385 bm!95762) bm!95782))

(assert (= (or b!1415378 bm!95772) bm!95791))

(assert (= (and d!405137 (not res!640931)) b!1415377))

(assert (= (and b!1415377 res!640929) b!1415390))

(assert (= (and b!1415390 res!640930) b!1415374))

(declare-fun m!1600231 () Bool)

(assert (=> bm!95776 m!1600231))

(declare-fun m!1600233 () Bool)

(assert (=> b!1415390 m!1600233))

(declare-fun m!1600235 () Bool)

(assert (=> b!1415390 m!1600235))

(declare-fun m!1600237 () Bool)

(assert (=> b!1415390 m!1600237))

(assert (=> b!1415390 m!1600237))

(declare-fun m!1600239 () Bool)

(assert (=> b!1415390 m!1600239))

(declare-fun m!1600241 () Bool)

(assert (=> b!1415390 m!1600241))

(assert (=> b!1415390 m!1600239))

(declare-fun m!1600243 () Bool)

(assert (=> bm!95770 m!1600243))

(declare-fun m!1600245 () Bool)

(assert (=> bm!95788 m!1600245))

(declare-fun m!1600247 () Bool)

(assert (=> b!1415381 m!1600247))

(declare-fun m!1600249 () Bool)

(assert (=> b!1415381 m!1600249))

(assert (=> b!1415381 m!1600247))

(declare-fun m!1600251 () Bool)

(assert (=> b!1415381 m!1600251))

(declare-fun m!1600253 () Bool)

(assert (=> b!1415381 m!1600253))

(declare-fun m!1600255 () Bool)

(assert (=> b!1415381 m!1600255))

(declare-fun m!1600257 () Bool)

(assert (=> b!1415381 m!1600257))

(declare-fun m!1600259 () Bool)

(assert (=> b!1415381 m!1600259))

(declare-fun m!1600261 () Bool)

(assert (=> b!1415381 m!1600261))

(declare-fun m!1600263 () Bool)

(assert (=> b!1415381 m!1600263))

(assert (=> b!1415381 m!1600247))

(assert (=> b!1415381 m!1600251))

(declare-fun m!1600265 () Bool)

(assert (=> b!1415381 m!1600265))

(declare-fun m!1600267 () Bool)

(assert (=> bm!95784 m!1600267))

(declare-fun m!1600269 () Bool)

(assert (=> bm!95782 m!1600269))

(declare-fun m!1600271 () Bool)

(assert (=> bm!95793 m!1600271))

(declare-fun m!1600273 () Bool)

(assert (=> bm!95769 m!1600273))

(declare-fun m!1600275 () Bool)

(assert (=> bm!95791 m!1600275))

(declare-fun m!1600277 () Bool)

(assert (=> bm!95758 m!1600277))

(declare-fun m!1600279 () Bool)

(assert (=> bm!95775 m!1600279))

(declare-fun m!1600281 () Bool)

(assert (=> d!405137 m!1600281))

(declare-fun m!1600283 () Bool)

(assert (=> d!405137 m!1600283))

(assert (=> d!405137 m!1599691))

(declare-fun m!1600285 () Bool)

(assert (=> d!405137 m!1600285))

(declare-fun m!1600287 () Bool)

(assert (=> d!405137 m!1600287))

(declare-fun m!1600289 () Bool)

(assert (=> bm!95766 m!1600289))

(declare-fun m!1600291 () Bool)

(assert (=> bm!95774 m!1600291))

(declare-fun m!1600293 () Bool)

(assert (=> b!1415374 m!1600293))

(declare-fun m!1600295 () Bool)

(assert (=> b!1415374 m!1600295))

(declare-fun m!1600297 () Bool)

(assert (=> b!1415374 m!1600297))

(declare-fun m!1600299 () Bool)

(assert (=> b!1415374 m!1600299))

(declare-fun m!1600301 () Bool)

(assert (=> b!1415374 m!1600301))

(assert (=> b!1415374 m!1600293))

(assert (=> b!1415374 m!1600235))

(assert (=> b!1415374 m!1600235))

(declare-fun m!1600303 () Bool)

(assert (=> b!1415374 m!1600303))

(assert (=> b!1415374 m!1599691))

(assert (=> b!1415374 m!1600301))

(assert (=> b!1415374 m!1600299))

(assert (=> b!1415374 m!1600295))

(assert (=> b!1415374 m!1600303))

(declare-fun m!1600305 () Bool)

(assert (=> b!1415374 m!1600305))

(declare-fun m!1600307 () Bool)

(assert (=> bm!95792 m!1600307))

(declare-fun m!1600309 () Bool)

(assert (=> b!1415388 m!1600309))

(declare-fun m!1600311 () Bool)

(assert (=> bm!95785 m!1600311))

(declare-fun m!1600313 () Bool)

(assert (=> b!1415375 m!1600313))

(declare-fun m!1600315 () Bool)

(assert (=> b!1415375 m!1600315))

(declare-fun m!1600317 () Bool)

(assert (=> b!1415375 m!1600317))

(declare-fun m!1600319 () Bool)

(assert (=> b!1415375 m!1600319))

(assert (=> b!1415375 m!1600313))

(assert (=> b!1415375 m!1600319))

(declare-fun m!1600321 () Bool)

(assert (=> b!1415375 m!1600321))

(declare-fun m!1600323 () Bool)

(assert (=> b!1415375 m!1600323))

(declare-fun m!1600325 () Bool)

(assert (=> b!1415375 m!1600325))

(assert (=> bm!95790 m!1600237))

(declare-fun m!1600327 () Bool)

(assert (=> bm!95760 m!1600327))

(declare-fun m!1600329 () Bool)

(assert (=> bm!95759 m!1600329))

(declare-fun m!1600331 () Bool)

(assert (=> bm!95780 m!1600331))

(declare-fun m!1600333 () Bool)

(assert (=> bm!95795 m!1600333))

(declare-fun m!1600335 () Bool)

(assert (=> bm!95763 m!1600335))

(assert (=> b!1415377 m!1600235))

(declare-fun m!1600337 () Bool)

(assert (=> bm!95781 m!1600337))

(assert (=> bm!95794 m!1600239))

(declare-fun m!1600339 () Bool)

(assert (=> b!1415389 m!1600339))

(assert (=> b!1415079 d!405137))

(declare-fun d!405139 () Bool)

(declare-fun lt!475828 () PrintableTokens!816)

(declare-fun head!2720 (List!14544) PrintableTokens!816)

(assert (=> d!405139 (= lt!475828 (head!2720 (list!5693 objs!24)))))

(declare-fun head!2721 (Conc!4827) PrintableTokens!816)

(assert (=> d!405139 (= lt!475828 (head!2721 (c!232533 objs!24)))))

(assert (=> d!405139 (not (isEmpty!8872 objs!24))))

(assert (=> d!405139 (= (head!2715 objs!24) lt!475828)))

(declare-fun bs!339342 () Bool)

(assert (= bs!339342 d!405139))

(assert (=> bs!339342 m!1599777))

(assert (=> bs!339342 m!1599777))

(declare-fun m!1600341 () Bool)

(assert (=> bs!339342 m!1600341))

(declare-fun m!1600343 () Bool)

(assert (=> bs!339342 m!1600343))

(assert (=> bs!339342 m!1599707))

(assert (=> b!1415079 d!405139))

(declare-fun d!405141 () Bool)

(declare-fun isBalanced!1432 (Conc!4826) Bool)

(assert (=> d!405141 (= (inv!18978 (tokens!1786 acc!229)) (isBalanced!1432 (c!232532 (tokens!1786 acc!229))))))

(declare-fun bs!339343 () Bool)

(assert (= bs!339343 d!405141))

(declare-fun m!1600345 () Bool)

(assert (=> bs!339343 m!1600345))

(assert (=> b!1415077 d!405141))

(declare-fun d!405143 () Bool)

(assert (=> d!405143 (= (inv!18978 (tokens!1786 sep!3)) (isBalanced!1432 (c!232532 (tokens!1786 sep!3))))))

(declare-fun bs!339344 () Bool)

(assert (= bs!339344 d!405143))

(declare-fun m!1600347 () Bool)

(assert (=> bs!339344 m!1600347))

(assert (=> b!1415088 d!405143))

(declare-fun d!405145 () Bool)

(declare-fun c!232636 () Bool)

(assert (=> d!405145 (= c!232636 ((_ is Node!4826) (c!232532 (tokens!1786 acc!229))))))

(declare-fun e!903540 () Bool)

(assert (=> d!405145 (= (inv!18982 (c!232532 (tokens!1786 acc!229))) e!903540)))

(declare-fun b!1415397 () Bool)

(declare-fun inv!18992 (Conc!4826) Bool)

(assert (=> b!1415397 (= e!903540 (inv!18992 (c!232532 (tokens!1786 acc!229))))))

(declare-fun b!1415398 () Bool)

(declare-fun e!903541 () Bool)

(assert (=> b!1415398 (= e!903540 e!903541)))

(declare-fun res!640934 () Bool)

(assert (=> b!1415398 (= res!640934 (not ((_ is Leaf!7281) (c!232532 (tokens!1786 acc!229)))))))

(assert (=> b!1415398 (=> res!640934 e!903541)))

(declare-fun b!1415399 () Bool)

(declare-fun inv!18993 (Conc!4826) Bool)

(assert (=> b!1415399 (= e!903541 (inv!18993 (c!232532 (tokens!1786 acc!229))))))

(assert (= (and d!405145 c!232636) b!1415397))

(assert (= (and d!405145 (not c!232636)) b!1415398))

(assert (= (and b!1415398 (not res!640934)) b!1415399))

(declare-fun m!1600349 () Bool)

(assert (=> b!1415397 m!1600349))

(declare-fun m!1600351 () Bool)

(assert (=> b!1415399 m!1600351))

(assert (=> b!1415086 d!405145))

(declare-fun d!405147 () Bool)

(declare-fun c!232637 () Bool)

(assert (=> d!405147 (= c!232637 ((_ is Node!4826) (c!232532 (tokens!1786 sep!3))))))

(declare-fun e!903542 () Bool)

(assert (=> d!405147 (= (inv!18982 (c!232532 (tokens!1786 sep!3))) e!903542)))

(declare-fun b!1415400 () Bool)

(assert (=> b!1415400 (= e!903542 (inv!18992 (c!232532 (tokens!1786 sep!3))))))

(declare-fun b!1415401 () Bool)

(declare-fun e!903543 () Bool)

(assert (=> b!1415401 (= e!903542 e!903543)))

(declare-fun res!640935 () Bool)

(assert (=> b!1415401 (= res!640935 (not ((_ is Leaf!7281) (c!232532 (tokens!1786 sep!3)))))))

(assert (=> b!1415401 (=> res!640935 e!903543)))

(declare-fun b!1415402 () Bool)

(assert (=> b!1415402 (= e!903543 (inv!18993 (c!232532 (tokens!1786 sep!3))))))

(assert (= (and d!405147 c!232637) b!1415400))

(assert (= (and d!405147 (not c!232637)) b!1415401))

(assert (= (and b!1415401 (not res!640935)) b!1415402))

(declare-fun m!1600353 () Bool)

(assert (=> b!1415400 m!1600353))

(declare-fun m!1600355 () Bool)

(assert (=> b!1415402 m!1600355))

(assert (=> b!1415087 d!405147))

(declare-fun tp!401535 () Bool)

(declare-fun tp!401536 () Bool)

(declare-fun b!1415411 () Bool)

(declare-fun e!903548 () Bool)

(assert (=> b!1415411 (= e!903548 (and (inv!18981 (left!12371 (c!232533 objs!24))) tp!401535 (inv!18981 (right!12701 (c!232533 objs!24))) tp!401536))))

(declare-fun b!1415413 () Bool)

(declare-fun e!903549 () Bool)

(declare-fun tp!401534 () Bool)

(assert (=> b!1415413 (= e!903549 tp!401534)))

(declare-fun b!1415412 () Bool)

(declare-fun inv!18994 (IArray!9659) Bool)

(assert (=> b!1415412 (= e!903548 (and (inv!18994 (xs!7554 (c!232533 objs!24))) e!903549))))

(assert (=> b!1415085 (= tp!401490 (and (inv!18981 (c!232533 objs!24)) e!903548))))

(assert (= (and b!1415085 ((_ is Node!4827) (c!232533 objs!24))) b!1415411))

(assert (= b!1415412 b!1415413))

(assert (= (and b!1415085 ((_ is Leaf!7282) (c!232533 objs!24))) b!1415412))

(declare-fun m!1600357 () Bool)

(assert (=> b!1415411 m!1600357))

(declare-fun m!1600359 () Bool)

(assert (=> b!1415411 m!1600359))

(declare-fun m!1600361 () Bool)

(assert (=> b!1415412 m!1600361))

(assert (=> b!1415085 m!1599683))

(declare-fun b!1415424 () Bool)

(declare-fun b_free!34815 () Bool)

(declare-fun b_next!35519 () Bool)

(assert (=> b!1415424 (= b_free!34815 (not b_next!35519))))

(declare-fun tp!401543 () Bool)

(declare-fun b_and!94807 () Bool)

(assert (=> b!1415424 (= tp!401543 b_and!94807)))

(declare-fun b_free!34817 () Bool)

(declare-fun b_next!35521 () Bool)

(assert (=> b!1415424 (= b_free!34817 (not b_next!35521))))

(declare-fun tp!401545 () Bool)

(declare-fun b_and!94809 () Bool)

(assert (=> b!1415424 (= tp!401545 b_and!94809)))

(declare-fun e!903561 () Bool)

(assert (=> b!1415424 (= e!903561 (and tp!401543 tp!401545))))

(declare-fun b!1415423 () Bool)

(declare-fun e!903560 () Bool)

(declare-fun inv!18972 (String!17271) Bool)

(declare-fun inv!18995 (TokenValueInjection!4874) Bool)

(assert (=> b!1415423 (= e!903560 (and (inv!18972 (tag!2779 (h!19878 (rules!11068 acc!229)))) (inv!18995 (transformation!2517 (h!19878 (rules!11068 acc!229)))) e!903561))))

(declare-fun b!1415422 () Bool)

(declare-fun e!903558 () Bool)

(declare-fun tp!401544 () Bool)

(assert (=> b!1415422 (= e!903558 (and e!903560 tp!401544))))

(assert (=> b!1415077 (= tp!401494 e!903558)))

(assert (= b!1415423 b!1415424))

(assert (= b!1415422 b!1415423))

(assert (= (and b!1415077 ((_ is Cons!14477) (rules!11068 acc!229))) b!1415422))

(declare-fun m!1600363 () Bool)

(assert (=> b!1415423 m!1600363))

(declare-fun m!1600365 () Bool)

(assert (=> b!1415423 m!1600365))

(declare-fun b!1415427 () Bool)

(declare-fun b_free!34819 () Bool)

(declare-fun b_next!35523 () Bool)

(assert (=> b!1415427 (= b_free!34819 (not b_next!35523))))

(declare-fun tp!401546 () Bool)

(declare-fun b_and!94811 () Bool)

(assert (=> b!1415427 (= tp!401546 b_and!94811)))

(declare-fun b_free!34821 () Bool)

(declare-fun b_next!35525 () Bool)

(assert (=> b!1415427 (= b_free!34821 (not b_next!35525))))

(declare-fun tp!401548 () Bool)

(declare-fun b_and!94813 () Bool)

(assert (=> b!1415427 (= tp!401548 b_and!94813)))

(declare-fun e!903565 () Bool)

(assert (=> b!1415427 (= e!903565 (and tp!401546 tp!401548))))

(declare-fun b!1415426 () Bool)

(declare-fun e!903564 () Bool)

(assert (=> b!1415426 (= e!903564 (and (inv!18972 (tag!2779 (h!19878 (rules!11068 sep!3)))) (inv!18995 (transformation!2517 (h!19878 (rules!11068 sep!3)))) e!903565))))

(declare-fun b!1415425 () Bool)

(declare-fun e!903562 () Bool)

(declare-fun tp!401547 () Bool)

(assert (=> b!1415425 (= e!903562 (and e!903564 tp!401547))))

(assert (=> b!1415088 (= tp!401492 e!903562)))

(assert (= b!1415426 b!1415427))

(assert (= b!1415425 b!1415426))

(assert (= (and b!1415088 ((_ is Cons!14477) (rules!11068 sep!3))) b!1415425))

(declare-fun m!1600367 () Bool)

(assert (=> b!1415426 m!1600367))

(declare-fun m!1600369 () Bool)

(assert (=> b!1415426 m!1600369))

(declare-fun tp!401557 () Bool)

(declare-fun tp!401556 () Bool)

(declare-fun e!903571 () Bool)

(declare-fun b!1415436 () Bool)

(assert (=> b!1415436 (= e!903571 (and (inv!18982 (left!12370 (c!232532 (tokens!1786 acc!229)))) tp!401556 (inv!18982 (right!12700 (c!232532 (tokens!1786 acc!229)))) tp!401557))))

(declare-fun b!1415438 () Bool)

(declare-fun e!903570 () Bool)

(declare-fun tp!401555 () Bool)

(assert (=> b!1415438 (= e!903570 tp!401555)))

(declare-fun b!1415437 () Bool)

(declare-fun inv!18996 (IArray!9657) Bool)

(assert (=> b!1415437 (= e!903571 (and (inv!18996 (xs!7553 (c!232532 (tokens!1786 acc!229)))) e!903570))))

(assert (=> b!1415086 (= tp!401493 (and (inv!18982 (c!232532 (tokens!1786 acc!229))) e!903571))))

(assert (= (and b!1415086 ((_ is Node!4826) (c!232532 (tokens!1786 acc!229)))) b!1415436))

(assert (= b!1415437 b!1415438))

(assert (= (and b!1415086 ((_ is Leaf!7281) (c!232532 (tokens!1786 acc!229)))) b!1415437))

(declare-fun m!1600371 () Bool)

(assert (=> b!1415436 m!1600371))

(declare-fun m!1600373 () Bool)

(assert (=> b!1415436 m!1600373))

(declare-fun m!1600375 () Bool)

(assert (=> b!1415437 m!1600375))

(assert (=> b!1415086 m!1599703))

(declare-fun tp!401559 () Bool)

(declare-fun b!1415439 () Bool)

(declare-fun e!903573 () Bool)

(declare-fun tp!401560 () Bool)

(assert (=> b!1415439 (= e!903573 (and (inv!18982 (left!12370 (c!232532 (tokens!1786 sep!3)))) tp!401559 (inv!18982 (right!12700 (c!232532 (tokens!1786 sep!3)))) tp!401560))))

(declare-fun b!1415441 () Bool)

(declare-fun e!903572 () Bool)

(declare-fun tp!401558 () Bool)

(assert (=> b!1415441 (= e!903572 tp!401558)))

(declare-fun b!1415440 () Bool)

(assert (=> b!1415440 (= e!903573 (and (inv!18996 (xs!7553 (c!232532 (tokens!1786 sep!3)))) e!903572))))

(assert (=> b!1415087 (= tp!401491 (and (inv!18982 (c!232532 (tokens!1786 sep!3))) e!903573))))

(assert (= (and b!1415087 ((_ is Node!4826) (c!232532 (tokens!1786 sep!3)))) b!1415439))

(assert (= b!1415440 b!1415441))

(assert (= (and b!1415087 ((_ is Leaf!7281) (c!232532 (tokens!1786 sep!3)))) b!1415440))

(declare-fun m!1600377 () Bool)

(assert (=> b!1415439 m!1600377))

(declare-fun m!1600379 () Bool)

(assert (=> b!1415439 m!1600379))

(declare-fun m!1600381 () Bool)

(assert (=> b!1415440 m!1600381))

(assert (=> b!1415087 m!1599689))

(check-sat (not bm!95716) (not bm!95469) (not bm!95685) (not d!405097) (not bm!95691) (not bm!95706) (not bm!95681) (not bm!95710) (not bm!95717) (not b!1415135) (not b!1415290) (not d!405141) (not bm!95714) (not bm!95697) (not bm!95696) (not d!405105) (not bm!95792) (not b!1415296) (not b!1415438) (not b_next!35521) (not bm!95785) b_and!94809 (not bm!95782) (not d!405133) (not d!405139) (not bm!95713) (not bm!95470) (not bm!95775) (not bm!95795) (not d!405143) (not b!1415098) (not bm!95776) (not b!1415187) (not b_next!35519) (not d!405103) (not b!1415190) (not bm!95759) (not b!1415305) (not b_next!35525) (not bm!95698) (not bm!95758) (not bm!95788) (not b!1415146) b_and!94811 (not bm!95703) (not b!1415426) (not d!405135) (not b!1415303) (not bm!95760) (not b!1415425) (not bm!95715) (not b!1415381) (not b!1415402) (not b!1415136) (not bm!95793) (not bm!95702) (not b!1415423) (not bm!95794) (not b!1415191) (not bm!95682) (not b!1415304) (not bm!95712) (not d!405095) (not bm!95692) (not b!1415388) (not b!1415397) (not b!1415096) (not bm!95780) (not d!405093) (not bm!95770) (not d!405099) (not d!405109) (not b!1415441) b_and!94807 (not bm!95704) (not b!1415085) (not d!405107) (not b!1415411) (not bm!95680) (not bm!95471) (not b!1415437) (not bm!95790) (not b!1415400) (not b!1415374) (not b!1415399) (not bm!95791) (not b!1415389) (not bm!95769) (not b!1415087) (not bm!95766) (not b!1415375) (not bm!95774) (not b!1415436) (not b!1415422) (not d!405137) (not bm!95781) (not b!1415440) (not b!1415412) (not b!1415189) (not b!1415138) (not d!405123) (not b!1415377) (not b!1415086) (not b!1415289) b_and!94813 (not bm!95784) (not b!1415390) (not bm!95472) (not bm!95763) (not b_next!35523) (not bm!95707) (not bm!95688) (not b!1415439) (not b!1415413) (not d!405079) (not b!1415292) (not b!1415188) (not b!1415186))
(check-sat (not b_next!35521) b_and!94809 (not b_next!35519) (not b_next!35525) b_and!94811 b_and!94807 b_and!94813 (not b_next!35523))
