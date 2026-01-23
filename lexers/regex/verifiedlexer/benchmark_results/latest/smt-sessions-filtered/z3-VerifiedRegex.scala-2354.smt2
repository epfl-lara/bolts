; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117558 () Bool)

(assert start!117558)

(declare-fun b!1322702 () Bool)

(declare-fun b_free!31859 () Bool)

(declare-fun b_next!32563 () Bool)

(assert (=> b!1322702 (= b_free!31859 (not b_next!32563))))

(declare-fun tp!383863 () Bool)

(declare-fun b_and!88335 () Bool)

(assert (=> b!1322702 (= tp!383863 b_and!88335)))

(declare-fun b_free!31861 () Bool)

(declare-fun b_next!32565 () Bool)

(assert (=> b!1322702 (= b_free!31861 (not b_next!32565))))

(declare-fun tp!383862 () Bool)

(declare-fun b_and!88337 () Bool)

(assert (=> b!1322702 (= tp!383862 b_and!88337)))

(declare-fun b!1322721 () Bool)

(declare-fun b_free!31863 () Bool)

(declare-fun b_next!32567 () Bool)

(assert (=> b!1322721 (= b_free!31863 (not b_next!32567))))

(declare-fun tp!383860 () Bool)

(declare-fun b_and!88339 () Bool)

(assert (=> b!1322721 (= tp!383860 b_and!88339)))

(declare-fun b_free!31865 () Bool)

(declare-fun b_next!32569 () Bool)

(assert (=> b!1322721 (= b_free!31865 (not b_next!32569))))

(declare-fun tp!383856 () Bool)

(declare-fun b_and!88341 () Bool)

(assert (=> b!1322721 (= tp!383856 b_and!88341)))

(declare-fun b!1322711 () Bool)

(declare-fun b_free!31867 () Bool)

(declare-fun b_next!32571 () Bool)

(assert (=> b!1322711 (= b_free!31867 (not b_next!32571))))

(declare-fun tp!383857 () Bool)

(declare-fun b_and!88343 () Bool)

(assert (=> b!1322711 (= tp!383857 b_and!88343)))

(declare-fun b_free!31869 () Bool)

(declare-fun b_next!32573 () Bool)

(assert (=> b!1322711 (= b_free!31869 (not b_next!32573))))

(declare-fun tp!383855 () Bool)

(declare-fun b_and!88345 () Bool)

(assert (=> b!1322711 (= tp!383855 b_and!88345)))

(declare-fun b!1322703 () Bool)

(assert (=> b!1322703 true))

(assert (=> b!1322703 true))

(declare-fun b!1322737 () Bool)

(assert (=> b!1322737 true))

(declare-fun b!1322717 () Bool)

(assert (=> b!1322717 true))

(declare-fun bs!331190 () Bool)

(declare-fun b!1322704 () Bool)

(assert (= bs!331190 (and b!1322704 b!1322717)))

(declare-fun lambda!54161 () Int)

(declare-fun lambda!54160 () Int)

(assert (=> bs!331190 (not (= lambda!54161 lambda!54160))))

(assert (=> b!1322704 true))

(declare-fun b!1322701 () Bool)

(declare-fun res!594709 () Bool)

(declare-fun e!847611 () Bool)

(assert (=> b!1322701 (=> res!594709 e!847611)))

(declare-datatypes ((List!13458 0))(
  ( (Nil!13392) (Cons!13392 (h!18793 (_ BitVec 16)) (t!118687 List!13458)) )
))
(declare-datatypes ((TokenValue!2407 0))(
  ( (FloatLiteralValue!4814 (text!17294 List!13458)) (TokenValueExt!2406 (__x!8643 Int)) (Broken!12035 (value!75641 List!13458)) (Object!2472) (End!2407) (Def!2407) (Underscore!2407) (Match!2407) (Else!2407) (Error!2407) (Case!2407) (If!2407) (Extends!2407) (Abstract!2407) (Class!2407) (Val!2407) (DelimiterValue!4814 (del!2467 List!13458)) (KeywordValue!2413 (value!75642 List!13458)) (CommentValue!4814 (value!75643 List!13458)) (WhitespaceValue!4814 (value!75644 List!13458)) (IndentationValue!2407 (value!75645 List!13458)) (String!16270) (Int32!2407) (Broken!12036 (value!75646 List!13458)) (Boolean!2408) (Unit!19467) (OperatorValue!2410 (op!2467 List!13458)) (IdentifierValue!4814 (value!75647 List!13458)) (IdentifierValue!4815 (value!75648 List!13458)) (WhitespaceValue!4815 (value!75649 List!13458)) (True!4814) (False!4814) (Broken!12037 (value!75650 List!13458)) (Broken!12038 (value!75651 List!13458)) (True!4815) (RightBrace!2407) (RightBracket!2407) (Colon!2407) (Null!2407) (Comma!2407) (LeftBracket!2407) (False!4815) (LeftBrace!2407) (ImaginaryLiteralValue!2407 (text!17295 List!13458)) (StringLiteralValue!7221 (value!75652 List!13458)) (EOFValue!2407 (value!75653 List!13458)) (IdentValue!2407 (value!75654 List!13458)) (DelimiterValue!4815 (value!75655 List!13458)) (DedentValue!2407 (value!75656 List!13458)) (NewLineValue!2407 (value!75657 List!13458)) (IntegerValue!7221 (value!75658 (_ BitVec 32)) (text!17296 List!13458)) (IntegerValue!7222 (value!75659 Int) (text!17297 List!13458)) (Times!2407) (Or!2407) (Equal!2407) (Minus!2407) (Broken!12039 (value!75660 List!13458)) (And!2407) (Div!2407) (LessEqual!2407) (Mod!2407) (Concat!6038) (Not!2407) (Plus!2407) (SpaceValue!2407 (value!75661 List!13458)) (IntegerValue!7223 (value!75662 Int) (text!17298 List!13458)) (StringLiteralValue!7222 (text!17299 List!13458)) (FloatLiteralValue!4815 (text!17300 List!13458)) (BytesLiteralValue!2407 (value!75663 List!13458)) (CommentValue!4815 (value!75664 List!13458)) (StringLiteralValue!7223 (value!75665 List!13458)) (ErrorTokenValue!2407 (msg!2468 List!13458)) )
))
(declare-datatypes ((C!7552 0))(
  ( (C!7553 (val!4336 Int)) )
))
(declare-datatypes ((List!13459 0))(
  ( (Nil!13393) (Cons!13393 (h!18794 C!7552) (t!118688 List!13459)) )
))
(declare-datatypes ((IArray!8813 0))(
  ( (IArray!8814 (innerList!4464 List!13459)) )
))
(declare-datatypes ((Conc!4404 0))(
  ( (Node!4404 (left!11504 Conc!4404) (right!11834 Conc!4404) (csize!9038 Int) (cheight!4615 Int)) (Leaf!6759 (xs!7119 IArray!8813) (csize!9039 Int)) (Empty!4404) )
))
(declare-datatypes ((BalanceConc!8748 0))(
  ( (BalanceConc!8749 (c!217134 Conc!4404)) )
))
(declare-datatypes ((Regex!3631 0))(
  ( (ElementMatch!3631 (c!217135 C!7552)) (Concat!6039 (regOne!7774 Regex!3631) (regTwo!7774 Regex!3631)) (EmptyExpr!3631) (Star!3631 (reg!3960 Regex!3631)) (EmptyLang!3631) (Union!3631 (regOne!7775 Regex!3631) (regTwo!7775 Regex!3631)) )
))
(declare-datatypes ((String!16271 0))(
  ( (String!16272 (value!75666 String)) )
))
(declare-datatypes ((TokenValueInjection!4474 0))(
  ( (TokenValueInjection!4475 (toValue!3548 Int) (toChars!3407 Int)) )
))
(declare-datatypes ((Rule!4434 0))(
  ( (Rule!4435 (regex!2317 Regex!3631) (tag!2579 String!16271) (isSeparator!2317 Bool) (transformation!2317 TokenValueInjection!4474)) )
))
(declare-datatypes ((Token!4296 0))(
  ( (Token!4297 (value!75667 TokenValue!2407) (rule!4062 Rule!4434) (size!10916 Int) (originalCharacters!3179 List!13459)) )
))
(declare-datatypes ((List!13460 0))(
  ( (Nil!13394) (Cons!13394 (h!18795 Token!4296) (t!118689 List!13460)) )
))
(declare-datatypes ((IArray!8815 0))(
  ( (IArray!8816 (innerList!4465 List!13460)) )
))
(declare-datatypes ((Conc!4405 0))(
  ( (Node!4405 (left!11505 Conc!4405) (right!11835 Conc!4405) (csize!9040 Int) (cheight!4616 Int)) (Leaf!6760 (xs!7120 IArray!8815) (csize!9041 Int)) (Empty!4405) )
))
(declare-datatypes ((BalanceConc!8750 0))(
  ( (BalanceConc!8751 (c!217136 Conc!4405)) )
))
(declare-datatypes ((tuple2!13022 0))(
  ( (tuple2!13023 (_1!7397 BalanceConc!8750) (_2!7397 BalanceConc!8748)) )
))
(declare-fun lt!436719 () tuple2!13022)

(declare-fun isEmpty!7970 (BalanceConc!8748) Bool)

(assert (=> b!1322701 (= res!594709 (not (isEmpty!7970 (_2!7397 lt!436719))))))

(declare-fun e!847592 () Bool)

(assert (=> b!1322702 (= e!847592 (and tp!383863 tp!383862))))

(declare-fun e!847597 () Bool)

(declare-fun e!847604 () Bool)

(assert (=> b!1322703 (= e!847597 (not e!847604))))

(declare-fun res!594699 () Bool)

(assert (=> b!1322703 (=> res!594699 e!847604)))

(declare-fun lambda!54157 () Int)

(declare-fun Exists!789 (Int) Bool)

(assert (=> b!1322703 (= res!594699 (not (Exists!789 lambda!54157)))))

(assert (=> b!1322703 (Exists!789 lambda!54157)))

(declare-datatypes ((Unit!19468 0))(
  ( (Unit!19469) )
))
(declare-fun lt!436729 () Unit!19468)

(declare-fun lt!436717 () Regex!3631)

(declare-fun lt!436709 () List!13459)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!107 (Regex!3631 List!13459) Unit!19468)

(assert (=> b!1322703 (= lt!436729 (lemmaPrefixMatchThenExistsStringThatMatches!107 lt!436717 lt!436709))))

(declare-fun e!847599 () Bool)

(declare-fun e!847586 () Bool)

(assert (=> b!1322704 (= e!847599 e!847586)))

(declare-fun res!594727 () Bool)

(assert (=> b!1322704 (=> res!594727 e!847586)))

(declare-fun t1!34 () Token!4296)

(declare-fun lt!436720 () List!13459)

(declare-fun matchR!1633 (Regex!3631 List!13459) Bool)

(assert (=> b!1322704 (= res!594727 (not (matchR!1633 (regex!2317 (rule!4062 t1!34)) lt!436720)))))

(declare-fun lt!436715 () Unit!19468)

(declare-datatypes ((List!13461 0))(
  ( (Nil!13395) (Cons!13395 (h!18796 Rule!4434) (t!118690 List!13461)) )
))
(declare-fun rules!2550 () List!13461)

(declare-fun t2!34 () Token!4296)

(declare-fun forallContained!568 (List!13461 Int Rule!4434) Unit!19468)

(assert (=> b!1322704 (= lt!436715 (forallContained!568 rules!2550 lambda!54161 (rule!4062 t2!34)))))

(declare-fun lt!436708 () Unit!19468)

(assert (=> b!1322704 (= lt!436708 (forallContained!568 rules!2550 lambda!54161 (rule!4062 t1!34)))))

(declare-fun lt!436711 () Unit!19468)

(declare-fun lt!436721 () Rule!4434)

(assert (=> b!1322704 (= lt!436711 (forallContained!568 rules!2550 lambda!54161 lt!436721))))

(declare-fun b!1322705 () Bool)

(declare-fun res!594696 () Bool)

(declare-fun e!847608 () Bool)

(assert (=> b!1322705 (=> (not res!594696) (not e!847608))))

(declare-datatypes ((LexerInterface!2012 0))(
  ( (LexerInterfaceExt!2009 (__x!8644 Int)) (Lexer!2010) )
))
(declare-fun thiss!19762 () LexerInterface!2012)

(declare-fun rulesProduceIndividualToken!981 (LexerInterface!2012 List!13461 Token!4296) Bool)

(assert (=> b!1322705 (= res!594696 (rulesProduceIndividualToken!981 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1322706 () Bool)

(declare-fun res!594716 () Bool)

(assert (=> b!1322706 (=> res!594716 e!847599)))

(declare-fun contains!2367 (List!13461 Rule!4434) Bool)

(assert (=> b!1322706 (= res!594716 (not (contains!2367 rules!2550 (rule!4062 t2!34))))))

(declare-fun b!1322707 () Bool)

(declare-fun res!594723 () Bool)

(assert (=> b!1322707 (=> res!594723 e!847611)))

(declare-datatypes ((tuple2!13024 0))(
  ( (tuple2!13025 (_1!7398 Token!4296) (_2!7398 List!13459)) )
))
(declare-datatypes ((Option!2588 0))(
  ( (None!2587) (Some!2587 (v!21176 tuple2!13024)) )
))
(declare-fun maxPrefix!1022 (LexerInterface!2012 List!13461 List!13459) Option!2588)

(assert (=> b!1322707 (= res!594723 (not (= (maxPrefix!1022 thiss!19762 rules!2550 lt!436720) (Some!2587 (tuple2!13025 t1!34 Nil!13393)))))))

(declare-fun b!1322708 () Bool)

(declare-fun res!594721 () Bool)

(declare-fun e!847605 () Bool)

(assert (=> b!1322708 (=> res!594721 e!847605)))

(declare-fun lt!436710 () C!7552)

(declare-fun contains!2368 (List!13459 C!7552) Bool)

(assert (=> b!1322708 (= res!594721 (not (contains!2368 lt!436720 lt!436710)))))

(declare-fun b!1322709 () Bool)

(declare-fun res!594724 () Bool)

(declare-fun e!847600 () Bool)

(assert (=> b!1322709 (=> res!594724 e!847600)))

(declare-fun lt!436728 () List!13459)

(declare-fun lt!436713 () C!7552)

(assert (=> b!1322709 (= res!594724 (not (contains!2368 lt!436728 lt!436713)))))

(declare-fun b!1322710 () Bool)

(declare-fun e!847593 () Bool)

(assert (=> b!1322710 (= e!847593 e!847605)))

(declare-fun res!594698 () Bool)

(assert (=> b!1322710 (=> res!594698 e!847605)))

(declare-fun validRegex!1557 (Regex!3631) Bool)

(assert (=> b!1322710 (= res!594698 (not (validRegex!1557 (regex!2317 (rule!4062 t1!34)))))))

(declare-fun head!2300 (List!13459) C!7552)

(assert (=> b!1322710 (= lt!436710 (head!2300 lt!436720))))

(declare-fun e!847595 () Bool)

(assert (=> b!1322711 (= e!847595 (and tp!383857 tp!383855))))

(declare-fun e!847606 () Bool)

(declare-fun tp!383864 () Bool)

(declare-fun e!847601 () Bool)

(declare-fun b!1322712 () Bool)

(declare-fun inv!17767 (String!16271) Bool)

(declare-fun inv!17770 (TokenValueInjection!4474) Bool)

(assert (=> b!1322712 (= e!847606 (and tp!383864 (inv!17767 (tag!2579 (h!18796 rules!2550))) (inv!17770 (transformation!2317 (h!18796 rules!2550))) e!847601))))

(declare-fun b!1322713 () Bool)

(declare-fun tp!383853 () Bool)

(declare-fun e!847587 () Bool)

(declare-fun e!847594 () Bool)

(declare-fun inv!21 (TokenValue!2407) Bool)

(assert (=> b!1322713 (= e!847587 (and (inv!21 (value!75667 t1!34)) e!847594 tp!383853))))

(declare-fun b!1322714 () Bool)

(declare-fun e!847610 () Bool)

(declare-fun tp!383858 () Bool)

(assert (=> b!1322714 (= e!847610 (and e!847606 tp!383858))))

(declare-fun b!1322715 () Bool)

(declare-fun res!594730 () Bool)

(assert (=> b!1322715 (=> (not res!594730) (not e!847608))))

(declare-fun isEmpty!7971 (List!13461) Bool)

(assert (=> b!1322715 (= res!594730 (not (isEmpty!7971 rules!2550)))))

(declare-fun b!1322716 () Bool)

(declare-fun res!594707 () Bool)

(assert (=> b!1322716 (=> res!594707 e!847600)))

(declare-fun lt!436726 () C!7552)

(assert (=> b!1322716 (= res!594707 (not (contains!2368 lt!436728 lt!436726)))))

(declare-fun e!847612 () Bool)

(declare-fun e!847589 () Bool)

(assert (=> b!1322717 (= e!847612 e!847589)))

(declare-fun res!594697 () Bool)

(assert (=> b!1322717 (=> res!594697 e!847589)))

(declare-fun exists!336 (List!13461 Int) Bool)

(assert (=> b!1322717 (= res!594697 (not (exists!336 rules!2550 lambda!54160)))))

(assert (=> b!1322717 (exists!336 rules!2550 lambda!54160)))

(declare-fun lt!436718 () Unit!19468)

(declare-fun lt!436712 () Regex!3631)

(declare-fun lambda!54158 () Int)

(declare-fun lemmaMapContains!60 (List!13461 Int Regex!3631) Unit!19468)

(assert (=> b!1322717 (= lt!436718 (lemmaMapContains!60 rules!2550 lambda!54158 lt!436712))))

(declare-fun b!1322718 () Bool)

(declare-fun res!594700 () Bool)

(assert (=> b!1322718 (=> (not res!594700) (not e!847608))))

(declare-fun rulesInvariant!1882 (LexerInterface!2012 List!13461) Bool)

(assert (=> b!1322718 (= res!594700 (rulesInvariant!1882 thiss!19762 rules!2550))))

(declare-fun b!1322719 () Bool)

(declare-fun res!594726 () Bool)

(assert (=> b!1322719 (=> res!594726 e!847611)))

(declare-fun lt!436727 () List!13460)

(declare-fun lt!436731 () BalanceConc!8748)

(declare-datatypes ((tuple2!13026 0))(
  ( (tuple2!13027 (_1!7399 List!13460) (_2!7399 List!13459)) )
))
(declare-fun lexList!550 (LexerInterface!2012 List!13461 List!13459) tuple2!13026)

(declare-fun list!5062 (BalanceConc!8748) List!13459)

(assert (=> b!1322719 (= res!594726 (not (= (lexList!550 thiss!19762 rules!2550 (list!5062 lt!436731)) (tuple2!13027 lt!436727 Nil!13393))))))

(declare-fun b!1322720 () Bool)

(declare-fun res!594706 () Bool)

(declare-fun e!847590 () Bool)

(assert (=> b!1322720 (=> res!594706 e!847590)))

(declare-fun lt!436732 () BalanceConc!8748)

(declare-fun lt!436716 () List!13460)

(assert (=> b!1322720 (= res!594706 (not (= (lexList!550 thiss!19762 rules!2550 (list!5062 lt!436732)) (tuple2!13027 lt!436716 Nil!13393))))))

(assert (=> b!1322721 (= e!847601 (and tp!383860 tp!383856))))

(declare-fun b!1322722 () Bool)

(declare-fun e!847609 () Bool)

(assert (=> b!1322722 (= e!847609 e!847600)))

(declare-fun res!594704 () Bool)

(assert (=> b!1322722 (=> res!594704 e!847600)))

(assert (=> b!1322722 (= res!594704 (not (contains!2368 lt!436709 lt!436726)))))

(declare-fun lt!436723 () BalanceConc!8748)

(declare-fun apply!3079 (BalanceConc!8748 Int) C!7552)

(assert (=> b!1322722 (= lt!436726 (apply!3079 lt!436723 0))))

(declare-fun b!1322723 () Bool)

(assert (=> b!1322723 (= e!847605 true)))

(declare-fun lt!436714 () Bool)

(declare-fun lt!436730 () List!13459)

(assert (=> b!1322723 (= lt!436714 (contains!2368 lt!436730 lt!436710))))

(declare-fun b!1322724 () Bool)

(declare-fun e!847603 () Bool)

(assert (=> b!1322724 (= e!847603 e!847597)))

(declare-fun res!594701 () Bool)

(assert (=> b!1322724 (=> (not res!594701) (not e!847597))))

(declare-fun prefixMatch!144 (Regex!3631 List!13459) Bool)

(assert (=> b!1322724 (= res!594701 (prefixMatch!144 lt!436717 lt!436709))))

(declare-fun rulesRegex!202 (LexerInterface!2012 List!13461) Regex!3631)

(assert (=> b!1322724 (= lt!436717 (rulesRegex!202 thiss!19762 rules!2550))))

(declare-fun ++!3422 (List!13459 List!13459) List!13459)

(assert (=> b!1322724 (= lt!436709 (++!3422 lt!436720 (Cons!13393 lt!436713 Nil!13393)))))

(declare-fun lt!436706 () BalanceConc!8748)

(assert (=> b!1322724 (= lt!436713 (apply!3079 lt!436706 0))))

(assert (=> b!1322724 (= lt!436720 (list!5062 lt!436723))))

(declare-fun charsOf!1289 (Token!4296) BalanceConc!8748)

(assert (=> b!1322724 (= lt!436723 (charsOf!1289 t1!34))))

(declare-fun b!1322725 () Bool)

(declare-fun res!594731 () Bool)

(assert (=> b!1322725 (=> res!594731 e!847600)))

(assert (=> b!1322725 (= res!594731 (not (matchR!1633 lt!436717 lt!436728)))))

(declare-fun e!847591 () Bool)

(declare-fun b!1322726 () Bool)

(declare-fun tp!383861 () Bool)

(assert (=> b!1322726 (= e!847591 (and tp!383861 (inv!17767 (tag!2579 (rule!4062 t2!34))) (inv!17770 (transformation!2317 (rule!4062 t2!34))) e!847595))))

(declare-fun b!1322727 () Bool)

(assert (=> b!1322727 (= e!847611 e!847590)))

(declare-fun res!594717 () Bool)

(assert (=> b!1322727 (=> res!594717 e!847590)))

(declare-fun lt!436725 () tuple2!13022)

(declare-fun list!5063 (BalanceConc!8750) List!13460)

(assert (=> b!1322727 (= res!594717 (not (= (list!5063 (_1!7397 lt!436725)) lt!436716)))))

(assert (=> b!1322727 (= lt!436716 (Cons!13394 t2!34 Nil!13394))))

(declare-fun lex!847 (LexerInterface!2012 List!13461 BalanceConc!8748) tuple2!13022)

(assert (=> b!1322727 (= lt!436725 (lex!847 thiss!19762 rules!2550 lt!436732))))

(declare-fun print!786 (LexerInterface!2012 BalanceConc!8750) BalanceConc!8748)

(declare-fun singletonSeq!904 (Token!4296) BalanceConc!8750)

(assert (=> b!1322727 (= lt!436732 (print!786 thiss!19762 (singletonSeq!904 t2!34)))))

(declare-fun b!1322728 () Bool)

(assert (=> b!1322728 (= e!847590 e!847599)))

(declare-fun res!594725 () Bool)

(assert (=> b!1322728 (=> res!594725 e!847599)))

(declare-fun lt!436722 () List!13459)

(assert (=> b!1322728 (= res!594725 (not (= (maxPrefix!1022 thiss!19762 rules!2550 lt!436722) (Some!2587 (tuple2!13025 t2!34 Nil!13393)))))))

(assert (=> b!1322728 (= lt!436722 (list!5062 lt!436706))))

(declare-fun b!1322729 () Bool)

(declare-fun res!594702 () Bool)

(assert (=> b!1322729 (=> (not res!594702) (not e!847608))))

(assert (=> b!1322729 (= res!594702 (rulesProduceIndividualToken!981 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1322730 () Bool)

(declare-fun res!594720 () Bool)

(assert (=> b!1322730 (=> (not res!594720) (not e!847608))))

(assert (=> b!1322730 (= res!594720 (not (= (isSeparator!2317 (rule!4062 t1!34)) (isSeparator!2317 (rule!4062 t2!34)))))))

(declare-fun b!1322731 () Bool)

(declare-fun res!594722 () Bool)

(assert (=> b!1322731 (=> res!594722 e!847599)))

(assert (=> b!1322731 (= res!594722 (not (contains!2367 rules!2550 lt!436721)))))

(declare-fun b!1322732 () Bool)

(assert (=> b!1322732 (= e!847589 e!847611)))

(declare-fun res!594728 () Bool)

(assert (=> b!1322732 (=> res!594728 e!847611)))

(assert (=> b!1322732 (= res!594728 (not (= (list!5063 (_1!7397 lt!436719)) lt!436727)))))

(assert (=> b!1322732 (= lt!436727 (Cons!13394 t1!34 Nil!13394))))

(assert (=> b!1322732 (= lt!436719 (lex!847 thiss!19762 rules!2550 lt!436731))))

(assert (=> b!1322732 (= lt!436731 (print!786 thiss!19762 (singletonSeq!904 t1!34)))))

(declare-fun getWitness!228 (List!13461 Int) Rule!4434)

(assert (=> b!1322732 (= lt!436721 (getWitness!228 rules!2550 lambda!54160))))

(declare-fun b!1322733 () Bool)

(declare-fun res!594715 () Bool)

(assert (=> b!1322733 (=> (not res!594715) (not e!847603))))

(declare-fun sepAndNonSepRulesDisjointChars!690 (List!13461 List!13461) Bool)

(assert (=> b!1322733 (= res!594715 (sepAndNonSepRulesDisjointChars!690 rules!2550 rules!2550))))

(declare-fun b!1322734 () Bool)

(assert (=> b!1322734 (= e!847604 e!847609)))

(declare-fun res!594714 () Bool)

(assert (=> b!1322734 (=> res!594714 e!847609)))

(declare-fun getSuffix!487 (List!13459 List!13459) List!13459)

(assert (=> b!1322734 (= res!594714 (not (= lt!436728 (++!3422 lt!436709 (getSuffix!487 lt!436728 lt!436709)))))))

(declare-fun pickWitness!94 (Int) List!13459)

(assert (=> b!1322734 (= lt!436728 (pickWitness!94 lambda!54157))))

(declare-fun b!1322735 () Bool)

(declare-fun res!594729 () Bool)

(assert (=> b!1322735 (=> res!594729 e!847590)))

(assert (=> b!1322735 (= res!594729 (not (isEmpty!7970 (_2!7397 lt!436725))))))

(declare-fun res!594713 () Bool)

(assert (=> start!117558 (=> (not res!594713) (not e!847608))))

(get-info :version)

(assert (=> start!117558 (= res!594713 ((_ is Lexer!2010) thiss!19762))))

(assert (=> start!117558 e!847608))

(assert (=> start!117558 true))

(assert (=> start!117558 e!847610))

(declare-fun inv!17771 (Token!4296) Bool)

(assert (=> start!117558 (and (inv!17771 t1!34) e!847587)))

(declare-fun e!847613 () Bool)

(assert (=> start!117558 (and (inv!17771 t2!34) e!847613)))

(declare-fun b!1322736 () Bool)

(assert (=> b!1322736 (= e!847608 e!847603)))

(declare-fun res!594703 () Bool)

(assert (=> b!1322736 (=> (not res!594703) (not e!847603))))

(declare-fun size!10917 (BalanceConc!8748) Int)

(assert (=> b!1322736 (= res!594703 (> (size!10917 lt!436706) 0))))

(assert (=> b!1322736 (= lt!436706 (charsOf!1289 t2!34))))

(declare-fun e!847588 () Bool)

(assert (=> b!1322737 (= e!847600 e!847588)))

(declare-fun res!594719 () Bool)

(assert (=> b!1322737 (=> res!594719 e!847588)))

(declare-fun lambda!54159 () Int)

(declare-datatypes ((List!13462 0))(
  ( (Nil!13396) (Cons!13396 (h!18797 Regex!3631) (t!118691 List!13462)) )
))
(declare-fun exists!337 (List!13462 Int) Bool)

(declare-fun map!2942 (List!13461 Int) List!13462)

(assert (=> b!1322737 (= res!594719 (not (exists!337 (map!2942 rules!2550 lambda!54158) lambda!54159)))))

(declare-fun lt!436707 () List!13462)

(assert (=> b!1322737 (exists!337 lt!436707 lambda!54159)))

(declare-fun lt!436724 () Unit!19468)

(declare-fun matchRGenUnionSpec!68 (Regex!3631 List!13462 List!13459) Unit!19468)

(assert (=> b!1322737 (= lt!436724 (matchRGenUnionSpec!68 lt!436717 lt!436707 lt!436728))))

(assert (=> b!1322737 (= lt!436707 (map!2942 rules!2550 lambda!54158))))

(declare-fun b!1322738 () Bool)

(declare-fun res!594710 () Bool)

(assert (=> b!1322738 (=> res!594710 e!847600)))

(assert (=> b!1322738 (= res!594710 (not (contains!2368 lt!436709 lt!436713)))))

(declare-fun b!1322739 () Bool)

(declare-fun res!594718 () Bool)

(assert (=> b!1322739 (=> (not res!594718) (not e!847603))))

(declare-fun separableTokensPredicate!295 (LexerInterface!2012 Token!4296 Token!4296 List!13461) Bool)

(assert (=> b!1322739 (= res!594718 (not (separableTokensPredicate!295 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1322740 () Bool)

(assert (=> b!1322740 (= e!847588 e!847612)))

(declare-fun res!594708 () Bool)

(assert (=> b!1322740 (=> res!594708 e!847612)))

(declare-fun contains!2369 (List!13462 Regex!3631) Bool)

(assert (=> b!1322740 (= res!594708 (not (contains!2369 (map!2942 rules!2550 lambda!54158) lt!436712)))))

(declare-fun getWitness!229 (List!13462 Int) Regex!3631)

(assert (=> b!1322740 (= lt!436712 (getWitness!229 (map!2942 rules!2550 lambda!54158) lambda!54159))))

(declare-fun b!1322741 () Bool)

(declare-fun res!594705 () Bool)

(assert (=> b!1322741 (=> res!594705 e!847611)))

(assert (=> b!1322741 (= res!594705 (not (contains!2367 rules!2550 (rule!4062 t1!34))))))

(declare-fun b!1322742 () Bool)

(declare-fun res!594712 () Bool)

(assert (=> b!1322742 (=> res!594712 e!847586)))

(assert (=> b!1322742 (= res!594712 (not (matchR!1633 (regex!2317 (rule!4062 t2!34)) lt!436722)))))

(declare-fun b!1322743 () Bool)

(declare-fun tp!383854 () Bool)

(assert (=> b!1322743 (= e!847613 (and (inv!21 (value!75667 t2!34)) e!847591 tp!383854))))

(declare-fun b!1322744 () Bool)

(assert (=> b!1322744 (= e!847586 e!847593)))

(declare-fun res!594711 () Bool)

(assert (=> b!1322744 (=> res!594711 e!847593)))

(assert (=> b!1322744 (= res!594711 (contains!2368 lt!436730 lt!436726))))

(declare-fun usedCharacters!182 (Regex!3631) List!13459)

(assert (=> b!1322744 (= lt!436730 (usedCharacters!182 (regex!2317 (rule!4062 t1!34))))))

(declare-fun b!1322745 () Bool)

(declare-fun tp!383859 () Bool)

(assert (=> b!1322745 (= e!847594 (and tp!383859 (inv!17767 (tag!2579 (rule!4062 t1!34))) (inv!17770 (transformation!2317 (rule!4062 t1!34))) e!847592))))

(assert (= (and start!117558 res!594713) b!1322715))

(assert (= (and b!1322715 res!594730) b!1322718))

(assert (= (and b!1322718 res!594700) b!1322705))

(assert (= (and b!1322705 res!594696) b!1322729))

(assert (= (and b!1322729 res!594702) b!1322730))

(assert (= (and b!1322730 res!594720) b!1322736))

(assert (= (and b!1322736 res!594703) b!1322733))

(assert (= (and b!1322733 res!594715) b!1322739))

(assert (= (and b!1322739 res!594718) b!1322724))

(assert (= (and b!1322724 res!594701) b!1322703))

(assert (= (and b!1322703 (not res!594699)) b!1322734))

(assert (= (and b!1322734 (not res!594714)) b!1322722))

(assert (= (and b!1322722 (not res!594704)) b!1322716))

(assert (= (and b!1322716 (not res!594707)) b!1322738))

(assert (= (and b!1322738 (not res!594710)) b!1322709))

(assert (= (and b!1322709 (not res!594724)) b!1322725))

(assert (= (and b!1322725 (not res!594731)) b!1322737))

(assert (= (and b!1322737 (not res!594719)) b!1322740))

(assert (= (and b!1322740 (not res!594708)) b!1322717))

(assert (= (and b!1322717 (not res!594697)) b!1322732))

(assert (= (and b!1322732 (not res!594728)) b!1322701))

(assert (= (and b!1322701 (not res!594709)) b!1322719))

(assert (= (and b!1322719 (not res!594726)) b!1322707))

(assert (= (and b!1322707 (not res!594723)) b!1322741))

(assert (= (and b!1322741 (not res!594705)) b!1322727))

(assert (= (and b!1322727 (not res!594717)) b!1322735))

(assert (= (and b!1322735 (not res!594729)) b!1322720))

(assert (= (and b!1322720 (not res!594706)) b!1322728))

(assert (= (and b!1322728 (not res!594725)) b!1322706))

(assert (= (and b!1322706 (not res!594716)) b!1322731))

(assert (= (and b!1322731 (not res!594722)) b!1322704))

(assert (= (and b!1322704 (not res!594727)) b!1322742))

(assert (= (and b!1322742 (not res!594712)) b!1322744))

(assert (= (and b!1322744 (not res!594711)) b!1322710))

(assert (= (and b!1322710 (not res!594698)) b!1322708))

(assert (= (and b!1322708 (not res!594721)) b!1322723))

(assert (= b!1322712 b!1322721))

(assert (= b!1322714 b!1322712))

(assert (= (and start!117558 ((_ is Cons!13395) rules!2550)) b!1322714))

(assert (= b!1322745 b!1322702))

(assert (= b!1322713 b!1322745))

(assert (= start!117558 b!1322713))

(assert (= b!1322726 b!1322711))

(assert (= b!1322743 b!1322726))

(assert (= start!117558 b!1322743))

(declare-fun m!1478953 () Bool)

(assert (=> b!1322707 m!1478953))

(declare-fun m!1478955 () Bool)

(assert (=> b!1322706 m!1478955))

(declare-fun m!1478957 () Bool)

(assert (=> b!1322738 m!1478957))

(declare-fun m!1478959 () Bool)

(assert (=> b!1322701 m!1478959))

(declare-fun m!1478961 () Bool)

(assert (=> b!1322717 m!1478961))

(assert (=> b!1322717 m!1478961))

(declare-fun m!1478963 () Bool)

(assert (=> b!1322717 m!1478963))

(declare-fun m!1478965 () Bool)

(assert (=> b!1322733 m!1478965))

(declare-fun m!1478967 () Bool)

(assert (=> b!1322718 m!1478967))

(declare-fun m!1478969 () Bool)

(assert (=> b!1322744 m!1478969))

(declare-fun m!1478971 () Bool)

(assert (=> b!1322744 m!1478971))

(declare-fun m!1478973 () Bool)

(assert (=> b!1322710 m!1478973))

(declare-fun m!1478975 () Bool)

(assert (=> b!1322710 m!1478975))

(declare-fun m!1478977 () Bool)

(assert (=> b!1322741 m!1478977))

(declare-fun m!1478979 () Bool)

(assert (=> b!1322715 m!1478979))

(declare-fun m!1478981 () Bool)

(assert (=> b!1322743 m!1478981))

(declare-fun m!1478983 () Bool)

(assert (=> b!1322739 m!1478983))

(declare-fun m!1478985 () Bool)

(assert (=> b!1322709 m!1478985))

(declare-fun m!1478987 () Bool)

(assert (=> b!1322727 m!1478987))

(declare-fun m!1478989 () Bool)

(assert (=> b!1322727 m!1478989))

(declare-fun m!1478991 () Bool)

(assert (=> b!1322727 m!1478991))

(assert (=> b!1322727 m!1478991))

(declare-fun m!1478993 () Bool)

(assert (=> b!1322727 m!1478993))

(declare-fun m!1478995 () Bool)

(assert (=> b!1322737 m!1478995))

(assert (=> b!1322737 m!1478995))

(declare-fun m!1478997 () Bool)

(assert (=> b!1322737 m!1478997))

(declare-fun m!1478999 () Bool)

(assert (=> b!1322737 m!1478999))

(assert (=> b!1322737 m!1478995))

(declare-fun m!1479001 () Bool)

(assert (=> b!1322737 m!1479001))

(declare-fun m!1479003 () Bool)

(assert (=> b!1322726 m!1479003))

(declare-fun m!1479005 () Bool)

(assert (=> b!1322726 m!1479005))

(declare-fun m!1479007 () Bool)

(assert (=> start!117558 m!1479007))

(declare-fun m!1479009 () Bool)

(assert (=> start!117558 m!1479009))

(declare-fun m!1479011 () Bool)

(assert (=> b!1322719 m!1479011))

(assert (=> b!1322719 m!1479011))

(declare-fun m!1479013 () Bool)

(assert (=> b!1322719 m!1479013))

(declare-fun m!1479015 () Bool)

(assert (=> b!1322708 m!1479015))

(declare-fun m!1479017 () Bool)

(assert (=> b!1322722 m!1479017))

(declare-fun m!1479019 () Bool)

(assert (=> b!1322722 m!1479019))

(declare-fun m!1479021 () Bool)

(assert (=> b!1322745 m!1479021))

(declare-fun m!1479023 () Bool)

(assert (=> b!1322745 m!1479023))

(declare-fun m!1479025 () Bool)

(assert (=> b!1322732 m!1479025))

(declare-fun m!1479027 () Bool)

(assert (=> b!1322732 m!1479027))

(declare-fun m!1479029 () Bool)

(assert (=> b!1322732 m!1479029))

(assert (=> b!1322732 m!1479027))

(declare-fun m!1479031 () Bool)

(assert (=> b!1322732 m!1479031))

(declare-fun m!1479033 () Bool)

(assert (=> b!1322732 m!1479033))

(declare-fun m!1479035 () Bool)

(assert (=> b!1322712 m!1479035))

(declare-fun m!1479037 () Bool)

(assert (=> b!1322712 m!1479037))

(declare-fun m!1479039 () Bool)

(assert (=> b!1322728 m!1479039))

(declare-fun m!1479041 () Bool)

(assert (=> b!1322728 m!1479041))

(declare-fun m!1479043 () Bool)

(assert (=> b!1322716 m!1479043))

(declare-fun m!1479045 () Bool)

(assert (=> b!1322704 m!1479045))

(declare-fun m!1479047 () Bool)

(assert (=> b!1322704 m!1479047))

(declare-fun m!1479049 () Bool)

(assert (=> b!1322704 m!1479049))

(declare-fun m!1479051 () Bool)

(assert (=> b!1322704 m!1479051))

(declare-fun m!1479053 () Bool)

(assert (=> b!1322731 m!1479053))

(declare-fun m!1479055 () Bool)

(assert (=> b!1322734 m!1479055))

(assert (=> b!1322734 m!1479055))

(declare-fun m!1479057 () Bool)

(assert (=> b!1322734 m!1479057))

(declare-fun m!1479059 () Bool)

(assert (=> b!1322734 m!1479059))

(declare-fun m!1479061 () Bool)

(assert (=> b!1322723 m!1479061))

(declare-fun m!1479063 () Bool)

(assert (=> b!1322705 m!1479063))

(declare-fun m!1479065 () Bool)

(assert (=> b!1322720 m!1479065))

(assert (=> b!1322720 m!1479065))

(declare-fun m!1479067 () Bool)

(assert (=> b!1322720 m!1479067))

(declare-fun m!1479069 () Bool)

(assert (=> b!1322725 m!1479069))

(declare-fun m!1479071 () Bool)

(assert (=> b!1322729 m!1479071))

(declare-fun m!1479073 () Bool)

(assert (=> b!1322724 m!1479073))

(declare-fun m!1479075 () Bool)

(assert (=> b!1322724 m!1479075))

(declare-fun m!1479077 () Bool)

(assert (=> b!1322724 m!1479077))

(declare-fun m!1479079 () Bool)

(assert (=> b!1322724 m!1479079))

(declare-fun m!1479081 () Bool)

(assert (=> b!1322724 m!1479081))

(declare-fun m!1479083 () Bool)

(assert (=> b!1322724 m!1479083))

(assert (=> b!1322740 m!1478995))

(assert (=> b!1322740 m!1478995))

(declare-fun m!1479085 () Bool)

(assert (=> b!1322740 m!1479085))

(assert (=> b!1322740 m!1478995))

(assert (=> b!1322740 m!1478995))

(declare-fun m!1479087 () Bool)

(assert (=> b!1322740 m!1479087))

(declare-fun m!1479089 () Bool)

(assert (=> b!1322735 m!1479089))

(declare-fun m!1479091 () Bool)

(assert (=> b!1322742 m!1479091))

(declare-fun m!1479093 () Bool)

(assert (=> b!1322713 m!1479093))

(declare-fun m!1479095 () Bool)

(assert (=> b!1322736 m!1479095))

(declare-fun m!1479097 () Bool)

(assert (=> b!1322736 m!1479097))

(declare-fun m!1479099 () Bool)

(assert (=> b!1322703 m!1479099))

(assert (=> b!1322703 m!1479099))

(declare-fun m!1479101 () Bool)

(assert (=> b!1322703 m!1479101))

(check-sat (not b!1322737) (not b!1322703) (not b!1322744) (not b!1322701) (not b!1322729) (not b!1322724) (not b!1322717) (not b_next!32565) (not b!1322712) (not b!1322715) b_and!88343 (not b!1322732) (not b!1322734) b_and!88341 (not b!1322705) (not b!1322733) (not b!1322716) (not b!1322714) (not b_next!32569) (not b_next!32567) (not b!1322710) (not start!117558) b_and!88337 (not b_next!32563) (not b!1322722) (not b!1322741) (not b!1322735) (not b!1322738) (not b!1322726) (not b_next!32571) b_and!88345 b_and!88339 (not b!1322713) b_and!88335 (not b!1322731) (not b!1322718) (not b!1322709) (not b!1322728) (not b!1322736) (not b!1322740) (not b!1322725) (not b!1322719) (not b!1322723) (not b!1322743) (not b!1322706) (not b!1322704) (not b!1322707) (not b!1322708) (not b!1322727) (not b_next!32573) (not b!1322739) (not b!1322742) (not b!1322745) (not b!1322720))
(check-sat (not b_next!32565) b_and!88343 b_and!88341 (not b_next!32569) (not b_next!32567) b_and!88337 (not b_next!32563) b_and!88339 b_and!88335 (not b_next!32573) (not b_next!32571) b_and!88345)
