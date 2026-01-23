; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!404044 () Bool)

(assert start!404044)

(declare-fun b!4225708 () Bool)

(declare-fun b_free!124411 () Bool)

(declare-fun b_next!125115 () Bool)

(assert (=> b!4225708 (= b_free!124411 (not b_next!125115))))

(declare-fun tp!1293554 () Bool)

(declare-fun b_and!333645 () Bool)

(assert (=> b!4225708 (= tp!1293554 b_and!333645)))

(declare-fun b_free!124413 () Bool)

(declare-fun b_next!125117 () Bool)

(assert (=> b!4225708 (= b_free!124413 (not b_next!125117))))

(declare-fun tp!1293553 () Bool)

(declare-fun b_and!333647 () Bool)

(assert (=> b!4225708 (= tp!1293553 b_and!333647)))

(declare-fun b!4225699 () Bool)

(declare-fun b_free!124415 () Bool)

(declare-fun b_next!125119 () Bool)

(assert (=> b!4225699 (= b_free!124415 (not b_next!125119))))

(declare-fun tp!1293555 () Bool)

(declare-fun b_and!333649 () Bool)

(assert (=> b!4225699 (= tp!1293555 b_and!333649)))

(declare-fun b_free!124417 () Bool)

(declare-fun b_next!125121 () Bool)

(assert (=> b!4225699 (= b_free!124417 (not b_next!125121))))

(declare-fun tp!1293552 () Bool)

(declare-fun b_and!333651 () Bool)

(assert (=> b!4225699 (= tp!1293552 b_and!333651)))

(declare-fun b!4225693 () Bool)

(declare-fun res!1737489 () Bool)

(declare-fun e!2623547 () Bool)

(assert (=> b!4225693 (=> res!1737489 e!2623547)))

(declare-datatypes ((List!46666 0))(
  ( (Nil!46542) (Cons!46542 (h!51962 (_ BitVec 16)) (t!349283 List!46666)) )
))
(declare-datatypes ((TokenValue!8051 0))(
  ( (FloatLiteralValue!16102 (text!56802 List!46666)) (TokenValueExt!8050 (__x!28325 Int)) (Broken!40255 (value!243401 List!46666)) (Object!8174) (End!8051) (Def!8051) (Underscore!8051) (Match!8051) (Else!8051) (Error!8051) (Case!8051) (If!8051) (Extends!8051) (Abstract!8051) (Class!8051) (Val!8051) (DelimiterValue!16102 (del!8111 List!46666)) (KeywordValue!8057 (value!243402 List!46666)) (CommentValue!16102 (value!243403 List!46666)) (WhitespaceValue!16102 (value!243404 List!46666)) (IndentationValue!8051 (value!243405 List!46666)) (String!54126) (Int32!8051) (Broken!40256 (value!243406 List!46666)) (Boolean!8052) (Unit!65701) (OperatorValue!8054 (op!8111 List!46666)) (IdentifierValue!16102 (value!243407 List!46666)) (IdentifierValue!16103 (value!243408 List!46666)) (WhitespaceValue!16103 (value!243409 List!46666)) (True!16102) (False!16102) (Broken!40257 (value!243410 List!46666)) (Broken!40258 (value!243411 List!46666)) (True!16103) (RightBrace!8051) (RightBracket!8051) (Colon!8051) (Null!8051) (Comma!8051) (LeftBracket!8051) (False!16103) (LeftBrace!8051) (ImaginaryLiteralValue!8051 (text!56803 List!46666)) (StringLiteralValue!24153 (value!243412 List!46666)) (EOFValue!8051 (value!243413 List!46666)) (IdentValue!8051 (value!243414 List!46666)) (DelimiterValue!16103 (value!243415 List!46666)) (DedentValue!8051 (value!243416 List!46666)) (NewLineValue!8051 (value!243417 List!46666)) (IntegerValue!24153 (value!243418 (_ BitVec 32)) (text!56804 List!46666)) (IntegerValue!24154 (value!243419 Int) (text!56805 List!46666)) (Times!8051) (Or!8051) (Equal!8051) (Minus!8051) (Broken!40259 (value!243420 List!46666)) (And!8051) (Div!8051) (LessEqual!8051) (Mod!8051) (Concat!20777) (Not!8051) (Plus!8051) (SpaceValue!8051 (value!243421 List!46666)) (IntegerValue!24155 (value!243422 Int) (text!56806 List!46666)) (StringLiteralValue!24154 (text!56807 List!46666)) (FloatLiteralValue!16103 (text!56808 List!46666)) (BytesLiteralValue!8051 (value!243423 List!46666)) (CommentValue!16103 (value!243424 List!46666)) (StringLiteralValue!24155 (value!243425 List!46666)) (ErrorTokenValue!8051 (msg!8112 List!46666)) )
))
(declare-datatypes ((C!25646 0))(
  ( (C!25647 (val!14985 Int)) )
))
(declare-datatypes ((List!46667 0))(
  ( (Nil!46543) (Cons!46543 (h!51963 C!25646) (t!349284 List!46667)) )
))
(declare-datatypes ((IArray!28069 0))(
  ( (IArray!28070 (innerList!14092 List!46667)) )
))
(declare-datatypes ((Conc!14032 0))(
  ( (Node!14032 (left!34610 Conc!14032) (right!34940 Conc!14032) (csize!28294 Int) (cheight!14243 Int)) (Leaf!21687 (xs!17338 IArray!28069) (csize!28295 Int)) (Empty!14032) )
))
(declare-datatypes ((BalanceConc!27658 0))(
  ( (BalanceConc!27659 (c!718623 Conc!14032)) )
))
(declare-datatypes ((TokenValueInjection!15530 0))(
  ( (TokenValueInjection!15531 (toValue!10549 Int) (toChars!10408 Int)) )
))
(declare-datatypes ((Regex!12726 0))(
  ( (ElementMatch!12726 (c!718624 C!25646)) (Concat!20778 (regOne!25964 Regex!12726) (regTwo!25964 Regex!12726)) (EmptyExpr!12726) (Star!12726 (reg!13055 Regex!12726)) (EmptyLang!12726) (Union!12726 (regOne!25965 Regex!12726) (regTwo!25965 Regex!12726)) )
))
(declare-datatypes ((String!54127 0))(
  ( (String!54128 (value!243426 String)) )
))
(declare-datatypes ((Rule!15442 0))(
  ( (Rule!15443 (regex!7821 Regex!12726) (tag!8685 String!54127) (isSeparator!7821 Bool) (transformation!7821 TokenValueInjection!15530)) )
))
(declare-datatypes ((List!46668 0))(
  ( (Nil!46544) (Cons!46544 (h!51964 Rule!15442) (t!349285 List!46668)) )
))
(declare-fun rules!4013 () List!46668)

(declare-fun r!4313 () Rule!15442)

(declare-fun contains!9644 (List!46668 Rule!15442) Bool)

(assert (=> b!4225693 (= res!1737489 (not (contains!9644 (t!349285 rules!4013) r!4313)))))

(declare-fun b!4225694 () Bool)

(declare-fun res!1737481 () Bool)

(declare-fun e!2623544 () Bool)

(assert (=> b!4225694 (=> (not res!1737481) (not e!2623544))))

(declare-datatypes ((LexerInterface!7416 0))(
  ( (LexerInterfaceExt!7413 (__x!28326 Int)) (Lexer!7414) )
))
(declare-fun thiss!26728 () LexerInterface!7416)

(declare-fun rulesValidInductive!2925 (LexerInterface!7416 List!46668) Bool)

(assert (=> b!4225694 (= res!1737481 (rulesValidInductive!2925 thiss!26728 rules!4013))))

(declare-fun b!4225695 () Bool)

(declare-fun res!1737485 () Bool)

(assert (=> b!4225695 (=> res!1737485 e!2623547)))

(assert (=> b!4225695 (= res!1737485 (not (rulesValidInductive!2925 thiss!26728 (t!349285 rules!4013))))))

(declare-fun b!4225696 () Bool)

(declare-fun res!1737484 () Bool)

(assert (=> b!4225696 (=> (not res!1737484) (not e!2623544))))

(declare-fun input!3561 () List!46667)

(declare-datatypes ((Token!14340 0))(
  ( (Token!14341 (value!243427 TokenValue!8051) (rule!10965 Rule!15442) (size!34162 Int) (originalCharacters!8201 List!46667)) )
))
(declare-datatypes ((tuple2!44244 0))(
  ( (tuple2!44245 (_1!25256 Token!14340) (_2!25256 List!46667)) )
))
(declare-datatypes ((Option!10007 0))(
  ( (None!10006) (Some!10006 (v!40916 tuple2!44244)) )
))
(declare-fun isEmpty!27582 (Option!10007) Bool)

(declare-fun maxPrefix!4454 (LexerInterface!7416 List!46668 List!46667) Option!10007)

(assert (=> b!4225696 (= res!1737484 (isEmpty!27582 (maxPrefix!4454 thiss!26728 rules!4013 input!3561)))))

(declare-fun b!4225697 () Bool)

(declare-fun res!1737490 () Bool)

(assert (=> b!4225697 (=> res!1737490 e!2623547)))

(assert (=> b!4225697 (= res!1737490 (not (isEmpty!27582 (maxPrefix!4454 thiss!26728 (t!349285 rules!4013) input!3561))))))

(declare-fun tp!1293550 () Bool)

(declare-fun e!2623548 () Bool)

(declare-fun b!4225698 () Bool)

(declare-fun e!2623545 () Bool)

(declare-fun inv!61209 (String!54127) Bool)

(declare-fun inv!61212 (TokenValueInjection!15530) Bool)

(assert (=> b!4225698 (= e!2623545 (and tp!1293550 (inv!61209 (tag!8685 r!4313)) (inv!61212 (transformation!7821 r!4313)) e!2623548))))

(declare-fun e!2623543 () Bool)

(assert (=> b!4225699 (= e!2623543 (and tp!1293555 tp!1293552))))

(declare-fun b!4225700 () Bool)

(declare-fun res!1737482 () Bool)

(assert (=> b!4225700 (=> res!1737482 e!2623547)))

(declare-fun isEmpty!27583 (List!46668) Bool)

(assert (=> b!4225700 (= res!1737482 (isEmpty!27583 (t!349285 rules!4013)))))

(declare-fun b!4225701 () Bool)

(declare-fun ListPrimitiveSize!304 (List!46668) Int)

(assert (=> b!4225701 (= e!2623547 (< (ListPrimitiveSize!304 (t!349285 rules!4013)) (ListPrimitiveSize!304 rules!4013)))))

(declare-fun b!4225702 () Bool)

(declare-fun res!1737488 () Bool)

(assert (=> b!4225702 (=> (not res!1737488) (not e!2623544))))

(assert (=> b!4225702 (= res!1737488 (contains!9644 rules!4013 r!4313))))

(declare-fun b!4225704 () Bool)

(assert (=> b!4225704 (= e!2623544 (not e!2623547))))

(declare-fun res!1737487 () Bool)

(assert (=> b!4225704 (=> res!1737487 e!2623547)))

(assert (=> b!4225704 (= res!1737487 (or (and (is-Cons!46544 rules!4013) (= r!4313 (h!51964 rules!4013))) (not (is-Cons!46544 rules!4013)) (= r!4313 (h!51964 rules!4013))))))

(declare-fun ruleValid!3529 (LexerInterface!7416 Rule!15442) Bool)

(assert (=> b!4225704 (ruleValid!3529 thiss!26728 r!4313)))

(declare-datatypes ((Unit!65702 0))(
  ( (Unit!65703) )
))
(declare-fun lt!1502991 () Unit!65702)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2441 (LexerInterface!7416 Rule!15442 List!46668) Unit!65702)

(assert (=> b!4225704 (= lt!1502991 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2441 thiss!26728 r!4313 rules!4013))))

(declare-fun b!4225705 () Bool)

(declare-fun e!2623550 () Bool)

(declare-fun tp_is_empty!22415 () Bool)

(declare-fun tp!1293549 () Bool)

(assert (=> b!4225705 (= e!2623550 (and tp_is_empty!22415 tp!1293549))))

(declare-fun b!4225706 () Bool)

(declare-fun res!1737486 () Bool)

(assert (=> b!4225706 (=> (not res!1737486) (not e!2623544))))

(assert (=> b!4225706 (= res!1737486 (not (isEmpty!27583 rules!4013)))))

(declare-fun b!4225703 () Bool)

(declare-fun e!2623542 () Bool)

(declare-fun e!2623546 () Bool)

(declare-fun tp!1293551 () Bool)

(assert (=> b!4225703 (= e!2623542 (and e!2623546 tp!1293551))))

(declare-fun res!1737483 () Bool)

(assert (=> start!404044 (=> (not res!1737483) (not e!2623544))))

(assert (=> start!404044 (= res!1737483 (is-Lexer!7414 thiss!26728))))

(assert (=> start!404044 e!2623544))

(assert (=> start!404044 true))

(assert (=> start!404044 e!2623542))

(assert (=> start!404044 e!2623545))

(assert (=> start!404044 e!2623550))

(declare-fun tp!1293556 () Bool)

(declare-fun b!4225707 () Bool)

(assert (=> b!4225707 (= e!2623546 (and tp!1293556 (inv!61209 (tag!8685 (h!51964 rules!4013))) (inv!61212 (transformation!7821 (h!51964 rules!4013))) e!2623543))))

(assert (=> b!4225708 (= e!2623548 (and tp!1293554 tp!1293553))))

(assert (= (and start!404044 res!1737483) b!4225706))

(assert (= (and b!4225706 res!1737486) b!4225694))

(assert (= (and b!4225694 res!1737481) b!4225702))

(assert (= (and b!4225702 res!1737488) b!4225696))

(assert (= (and b!4225696 res!1737484) b!4225704))

(assert (= (and b!4225704 (not res!1737487)) b!4225700))

(assert (= (and b!4225700 (not res!1737482)) b!4225695))

(assert (= (and b!4225695 (not res!1737485)) b!4225693))

(assert (= (and b!4225693 (not res!1737489)) b!4225697))

(assert (= (and b!4225697 (not res!1737490)) b!4225701))

(assert (= b!4225707 b!4225699))

(assert (= b!4225703 b!4225707))

(assert (= (and start!404044 (is-Cons!46544 rules!4013)) b!4225703))

(assert (= b!4225698 b!4225708))

(assert (= start!404044 b!4225698))

(assert (= (and start!404044 (is-Cons!46543 input!3561)) b!4225705))

(declare-fun m!4813719 () Bool)

(assert (=> b!4225698 m!4813719))

(declare-fun m!4813721 () Bool)

(assert (=> b!4225698 m!4813721))

(declare-fun m!4813723 () Bool)

(assert (=> b!4225700 m!4813723))

(declare-fun m!4813725 () Bool)

(assert (=> b!4225707 m!4813725))

(declare-fun m!4813727 () Bool)

(assert (=> b!4225707 m!4813727))

(declare-fun m!4813729 () Bool)

(assert (=> b!4225693 m!4813729))

(declare-fun m!4813731 () Bool)

(assert (=> b!4225702 m!4813731))

(declare-fun m!4813733 () Bool)

(assert (=> b!4225704 m!4813733))

(declare-fun m!4813735 () Bool)

(assert (=> b!4225704 m!4813735))

(declare-fun m!4813737 () Bool)

(assert (=> b!4225697 m!4813737))

(assert (=> b!4225697 m!4813737))

(declare-fun m!4813739 () Bool)

(assert (=> b!4225697 m!4813739))

(declare-fun m!4813741 () Bool)

(assert (=> b!4225701 m!4813741))

(declare-fun m!4813743 () Bool)

(assert (=> b!4225701 m!4813743))

(declare-fun m!4813745 () Bool)

(assert (=> b!4225706 m!4813745))

(declare-fun m!4813747 () Bool)

(assert (=> b!4225694 m!4813747))

(declare-fun m!4813749 () Bool)

(assert (=> b!4225695 m!4813749))

(declare-fun m!4813751 () Bool)

(assert (=> b!4225696 m!4813751))

(assert (=> b!4225696 m!4813751))

(declare-fun m!4813753 () Bool)

(assert (=> b!4225696 m!4813753))

(push 1)

(assert (not b!4225695))

(assert (not b!4225704))

(assert (not b_next!125117))

(assert (not b!4225707))

(assert tp_is_empty!22415)

(assert b_and!333649)

(assert (not b_next!125115))

(assert (not b!4225705))

(assert (not b!4225696))

(assert b_and!333647)

(assert (not b!4225698))

(assert (not b!4225697))

(assert (not b_next!125119))

(assert (not b!4225701))

(assert b_and!333645)

(assert b_and!333651)

(assert (not b!4225700))

(assert (not b!4225694))

(assert (not b_next!125121))

(assert (not b!4225693))

(assert (not b!4225702))

(assert (not b!4225706))

(assert (not b!4225703))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!125119))

(assert b_and!333645)

(assert b_and!333651)

(assert (not b_next!125117))

(assert (not b_next!125121))

(assert b_and!333649)

(assert (not b_next!125115))

(assert b_and!333647)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1244219 () Bool)

(declare-fun lt!1502997 () Int)

(assert (=> d!1244219 (>= lt!1502997 0)))

(declare-fun e!2623583 () Int)

(assert (=> d!1244219 (= lt!1502997 e!2623583)))

(declare-fun c!718630 () Bool)

(assert (=> d!1244219 (= c!718630 (is-Nil!46544 (t!349285 rules!4013)))))

(assert (=> d!1244219 (= (ListPrimitiveSize!304 (t!349285 rules!4013)) lt!1502997)))

(declare-fun b!4225761 () Bool)

(assert (=> b!4225761 (= e!2623583 0)))

(declare-fun b!4225762 () Bool)

(assert (=> b!4225762 (= e!2623583 (+ 1 (ListPrimitiveSize!304 (t!349285 (t!349285 rules!4013)))))))

(assert (= (and d!1244219 c!718630) b!4225761))

(assert (= (and d!1244219 (not c!718630)) b!4225762))

(declare-fun m!4813791 () Bool)

(assert (=> b!4225762 m!4813791))

(assert (=> b!4225701 d!1244219))

(declare-fun d!1244221 () Bool)

(declare-fun lt!1502998 () Int)

(assert (=> d!1244221 (>= lt!1502998 0)))

(declare-fun e!2623584 () Int)

(assert (=> d!1244221 (= lt!1502998 e!2623584)))

(declare-fun c!718631 () Bool)

(assert (=> d!1244221 (= c!718631 (is-Nil!46544 rules!4013))))

(assert (=> d!1244221 (= (ListPrimitiveSize!304 rules!4013) lt!1502998)))

(declare-fun b!4225763 () Bool)

(assert (=> b!4225763 (= e!2623584 0)))

(declare-fun b!4225764 () Bool)

(assert (=> b!4225764 (= e!2623584 (+ 1 (ListPrimitiveSize!304 (t!349285 rules!4013))))))

(assert (= (and d!1244221 c!718631) b!4225763))

(assert (= (and d!1244221 (not c!718631)) b!4225764))

(assert (=> b!4225764 m!4813741))

(assert (=> b!4225701 d!1244221))

(declare-fun d!1244223 () Bool)

(declare-fun lt!1503001 () Bool)

(declare-fun content!7316 (List!46668) (Set Rule!15442))

(assert (=> d!1244223 (= lt!1503001 (set.member r!4313 (content!7316 rules!4013)))))

(declare-fun e!2623590 () Bool)

(assert (=> d!1244223 (= lt!1503001 e!2623590)))

(declare-fun res!1737532 () Bool)

(assert (=> d!1244223 (=> (not res!1737532) (not e!2623590))))

(assert (=> d!1244223 (= res!1737532 (is-Cons!46544 rules!4013))))

(assert (=> d!1244223 (= (contains!9644 rules!4013 r!4313) lt!1503001)))

(declare-fun b!4225769 () Bool)

(declare-fun e!2623589 () Bool)

(assert (=> b!4225769 (= e!2623590 e!2623589)))

(declare-fun res!1737533 () Bool)

(assert (=> b!4225769 (=> res!1737533 e!2623589)))

(assert (=> b!4225769 (= res!1737533 (= (h!51964 rules!4013) r!4313))))

(declare-fun b!4225770 () Bool)

(assert (=> b!4225770 (= e!2623589 (contains!9644 (t!349285 rules!4013) r!4313))))

(assert (= (and d!1244223 res!1737532) b!4225769))

(assert (= (and b!4225769 (not res!1737533)) b!4225770))

(declare-fun m!4813793 () Bool)

(assert (=> d!1244223 m!4813793))

(declare-fun m!4813795 () Bool)

(assert (=> d!1244223 m!4813795))

(assert (=> b!4225770 m!4813729))

(assert (=> b!4225702 d!1244223))

(declare-fun d!1244227 () Bool)

(assert (=> d!1244227 (= (inv!61209 (tag!8685 r!4313)) (= (mod (str.len (value!243426 (tag!8685 r!4313))) 2) 0))))

(assert (=> b!4225698 d!1244227))

(declare-fun d!1244231 () Bool)

(declare-fun res!1737538 () Bool)

(declare-fun e!2623595 () Bool)

(assert (=> d!1244231 (=> (not res!1737538) (not e!2623595))))

(declare-fun semiInverseModEq!3404 (Int Int) Bool)

(assert (=> d!1244231 (= res!1737538 (semiInverseModEq!3404 (toChars!10408 (transformation!7821 r!4313)) (toValue!10549 (transformation!7821 r!4313))))))

(assert (=> d!1244231 (= (inv!61212 (transformation!7821 r!4313)) e!2623595)))

(declare-fun b!4225775 () Bool)

(declare-fun equivClasses!3303 (Int Int) Bool)

(assert (=> b!4225775 (= e!2623595 (equivClasses!3303 (toChars!10408 (transformation!7821 r!4313)) (toValue!10549 (transformation!7821 r!4313))))))

(assert (= (and d!1244231 res!1737538) b!4225775))

(declare-fun m!4813797 () Bool)

(assert (=> d!1244231 m!4813797))

(declare-fun m!4813799 () Bool)

(assert (=> b!4225775 m!4813799))

(assert (=> b!4225698 d!1244231))

(declare-fun d!1244233 () Bool)

(assert (=> d!1244233 (= (isEmpty!27583 (t!349285 rules!4013)) (is-Nil!46544 (t!349285 rules!4013)))))

(assert (=> b!4225700 d!1244233))

(declare-fun d!1244237 () Bool)

(assert (=> d!1244237 (= (isEmpty!27582 (maxPrefix!4454 thiss!26728 rules!4013 input!3561)) (not (is-Some!10006 (maxPrefix!4454 thiss!26728 rules!4013 input!3561))))))

(assert (=> b!4225696 d!1244237))

(declare-fun call!293239 () Option!10007)

(declare-fun bm!293234 () Bool)

(declare-fun maxPrefixOneRule!3403 (LexerInterface!7416 Rule!15442 List!46667) Option!10007)

(assert (=> bm!293234 (= call!293239 (maxPrefixOneRule!3403 thiss!26728 (h!51964 rules!4013) input!3561))))

(declare-fun b!4225799 () Bool)

(declare-fun res!1737563 () Bool)

(declare-fun e!2623607 () Bool)

(assert (=> b!4225799 (=> (not res!1737563) (not e!2623607))))

(declare-fun lt!1503014 () Option!10007)

(declare-fun matchR!6403 (Regex!12726 List!46667) Bool)

(declare-fun get!15150 (Option!10007) tuple2!44244)

(declare-fun list!16835 (BalanceConc!27658) List!46667)

(declare-fun charsOf!5234 (Token!14340) BalanceConc!27658)

(assert (=> b!4225799 (= res!1737563 (matchR!6403 (regex!7821 (rule!10965 (_1!25256 (get!15150 lt!1503014)))) (list!16835 (charsOf!5234 (_1!25256 (get!15150 lt!1503014))))))))

(declare-fun d!1244239 () Bool)

(declare-fun e!2623609 () Bool)

(assert (=> d!1244239 e!2623609))

(declare-fun res!1737561 () Bool)

(assert (=> d!1244239 (=> res!1737561 e!2623609)))

(assert (=> d!1244239 (= res!1737561 (isEmpty!27582 lt!1503014))))

(declare-fun e!2623608 () Option!10007)

(assert (=> d!1244239 (= lt!1503014 e!2623608)))

(declare-fun c!718634 () Bool)

(assert (=> d!1244239 (= c!718634 (and (is-Cons!46544 rules!4013) (is-Nil!46544 (t!349285 rules!4013))))))

(declare-fun lt!1503017 () Unit!65702)

(declare-fun lt!1503016 () Unit!65702)

(assert (=> d!1244239 (= lt!1503017 lt!1503016)))

(declare-fun isPrefix!4670 (List!46667 List!46667) Bool)

(assert (=> d!1244239 (isPrefix!4670 input!3561 input!3561)))

(declare-fun lemmaIsPrefixRefl!3087 (List!46667 List!46667) Unit!65702)

(assert (=> d!1244239 (= lt!1503016 (lemmaIsPrefixRefl!3087 input!3561 input!3561))))

(assert (=> d!1244239 (rulesValidInductive!2925 thiss!26728 rules!4013)))

(assert (=> d!1244239 (= (maxPrefix!4454 thiss!26728 rules!4013 input!3561) lt!1503014)))

(declare-fun b!4225800 () Bool)

(declare-fun res!1737558 () Bool)

(assert (=> b!4225800 (=> (not res!1737558) (not e!2623607))))

(assert (=> b!4225800 (= res!1737558 (= (list!16835 (charsOf!5234 (_1!25256 (get!15150 lt!1503014)))) (originalCharacters!8201 (_1!25256 (get!15150 lt!1503014)))))))

(declare-fun b!4225801 () Bool)

(declare-fun res!1737564 () Bool)

(assert (=> b!4225801 (=> (not res!1737564) (not e!2623607))))

(declare-fun apply!10724 (TokenValueInjection!15530 BalanceConc!27658) TokenValue!8051)

(declare-fun seqFromList!5784 (List!46667) BalanceConc!27658)

(assert (=> b!4225801 (= res!1737564 (= (value!243427 (_1!25256 (get!15150 lt!1503014))) (apply!10724 (transformation!7821 (rule!10965 (_1!25256 (get!15150 lt!1503014)))) (seqFromList!5784 (originalCharacters!8201 (_1!25256 (get!15150 lt!1503014)))))))))

(declare-fun b!4225802 () Bool)

(declare-fun res!1737559 () Bool)

(assert (=> b!4225802 (=> (not res!1737559) (not e!2623607))))

(declare-fun ++!11885 (List!46667 List!46667) List!46667)

(assert (=> b!4225802 (= res!1737559 (= (++!11885 (list!16835 (charsOf!5234 (_1!25256 (get!15150 lt!1503014)))) (_2!25256 (get!15150 lt!1503014))) input!3561))))

(declare-fun b!4225803 () Bool)

(assert (=> b!4225803 (= e!2623608 call!293239)))

(declare-fun b!4225804 () Bool)

(assert (=> b!4225804 (= e!2623607 (contains!9644 rules!4013 (rule!10965 (_1!25256 (get!15150 lt!1503014)))))))

(declare-fun b!4225805 () Bool)

(assert (=> b!4225805 (= e!2623609 e!2623607)))

(declare-fun res!1737560 () Bool)

(assert (=> b!4225805 (=> (not res!1737560) (not e!2623607))))

(declare-fun isDefined!7425 (Option!10007) Bool)

(assert (=> b!4225805 (= res!1737560 (isDefined!7425 lt!1503014))))

(declare-fun b!4225806 () Bool)

(declare-fun lt!1503015 () Option!10007)

(declare-fun lt!1503018 () Option!10007)

(assert (=> b!4225806 (= e!2623608 (ite (and (is-None!10006 lt!1503015) (is-None!10006 lt!1503018)) None!10006 (ite (is-None!10006 lt!1503018) lt!1503015 (ite (is-None!10006 lt!1503015) lt!1503018 (ite (>= (size!34162 (_1!25256 (v!40916 lt!1503015))) (size!34162 (_1!25256 (v!40916 lt!1503018)))) lt!1503015 lt!1503018)))))))

(assert (=> b!4225806 (= lt!1503015 call!293239)))

(assert (=> b!4225806 (= lt!1503018 (maxPrefix!4454 thiss!26728 (t!349285 rules!4013) input!3561))))

(declare-fun b!4225807 () Bool)

(declare-fun res!1737562 () Bool)

(assert (=> b!4225807 (=> (not res!1737562) (not e!2623607))))

(declare-fun size!34164 (List!46667) Int)

(assert (=> b!4225807 (= res!1737562 (< (size!34164 (_2!25256 (get!15150 lt!1503014))) (size!34164 input!3561)))))

(assert (= (and d!1244239 c!718634) b!4225803))

(assert (= (and d!1244239 (not c!718634)) b!4225806))

(assert (= (or b!4225803 b!4225806) bm!293234))

(assert (= (and d!1244239 (not res!1737561)) b!4225805))

(assert (= (and b!4225805 res!1737560) b!4225800))

(assert (= (and b!4225800 res!1737558) b!4225807))

(assert (= (and b!4225807 res!1737562) b!4225802))

(assert (= (and b!4225802 res!1737559) b!4225801))

(assert (= (and b!4225801 res!1737564) b!4225799))

(assert (= (and b!4225799 res!1737563) b!4225804))

(declare-fun m!4813805 () Bool)

(assert (=> b!4225804 m!4813805))

(declare-fun m!4813807 () Bool)

(assert (=> b!4225804 m!4813807))

(assert (=> b!4225806 m!4813737))

(declare-fun m!4813809 () Bool)

(assert (=> b!4225805 m!4813809))

(declare-fun m!4813811 () Bool)

(assert (=> d!1244239 m!4813811))

(declare-fun m!4813813 () Bool)

(assert (=> d!1244239 m!4813813))

(declare-fun m!4813815 () Bool)

(assert (=> d!1244239 m!4813815))

(assert (=> d!1244239 m!4813747))

(assert (=> b!4225807 m!4813805))

(declare-fun m!4813817 () Bool)

(assert (=> b!4225807 m!4813817))

(declare-fun m!4813819 () Bool)

(assert (=> b!4225807 m!4813819))

(assert (=> b!4225800 m!4813805))

(declare-fun m!4813821 () Bool)

(assert (=> b!4225800 m!4813821))

(assert (=> b!4225800 m!4813821))

(declare-fun m!4813823 () Bool)

(assert (=> b!4225800 m!4813823))

(declare-fun m!4813825 () Bool)

(assert (=> bm!293234 m!4813825))

(assert (=> b!4225801 m!4813805))

(declare-fun m!4813827 () Bool)

(assert (=> b!4225801 m!4813827))

(assert (=> b!4225801 m!4813827))

(declare-fun m!4813829 () Bool)

(assert (=> b!4225801 m!4813829))

(assert (=> b!4225802 m!4813805))

(assert (=> b!4225802 m!4813821))

(assert (=> b!4225802 m!4813821))

(assert (=> b!4225802 m!4813823))

(assert (=> b!4225802 m!4813823))

(declare-fun m!4813831 () Bool)

(assert (=> b!4225802 m!4813831))

(assert (=> b!4225799 m!4813805))

(assert (=> b!4225799 m!4813821))

(assert (=> b!4225799 m!4813821))

(assert (=> b!4225799 m!4813823))

(assert (=> b!4225799 m!4813823))

(declare-fun m!4813833 () Bool)

(assert (=> b!4225799 m!4813833))

(assert (=> b!4225696 d!1244239))

(declare-fun d!1244241 () Bool)

(assert (=> d!1244241 (= (inv!61209 (tag!8685 (h!51964 rules!4013))) (= (mod (str.len (value!243426 (tag!8685 (h!51964 rules!4013)))) 2) 0))))

(assert (=> b!4225707 d!1244241))

(declare-fun d!1244243 () Bool)

(declare-fun res!1737565 () Bool)

(declare-fun e!2623610 () Bool)

(assert (=> d!1244243 (=> (not res!1737565) (not e!2623610))))

(assert (=> d!1244243 (= res!1737565 (semiInverseModEq!3404 (toChars!10408 (transformation!7821 (h!51964 rules!4013))) (toValue!10549 (transformation!7821 (h!51964 rules!4013)))))))

(assert (=> d!1244243 (= (inv!61212 (transformation!7821 (h!51964 rules!4013))) e!2623610)))

(declare-fun b!4225808 () Bool)

(assert (=> b!4225808 (= e!2623610 (equivClasses!3303 (toChars!10408 (transformation!7821 (h!51964 rules!4013))) (toValue!10549 (transformation!7821 (h!51964 rules!4013)))))))

(assert (= (and d!1244243 res!1737565) b!4225808))

(declare-fun m!4813835 () Bool)

(assert (=> d!1244243 m!4813835))

(declare-fun m!4813837 () Bool)

(assert (=> b!4225808 m!4813837))

(assert (=> b!4225707 d!1244243))

(declare-fun d!1244245 () Bool)

(assert (=> d!1244245 (= (isEmpty!27583 rules!4013) (is-Nil!46544 rules!4013))))

(assert (=> b!4225706 d!1244245))

(declare-fun d!1244247 () Bool)

(assert (=> d!1244247 (= (isEmpty!27582 (maxPrefix!4454 thiss!26728 (t!349285 rules!4013) input!3561)) (not (is-Some!10006 (maxPrefix!4454 thiss!26728 (t!349285 rules!4013) input!3561))))))

(assert (=> b!4225697 d!1244247))

(declare-fun bm!293235 () Bool)

(declare-fun call!293240 () Option!10007)

(assert (=> bm!293235 (= call!293240 (maxPrefixOneRule!3403 thiss!26728 (h!51964 (t!349285 rules!4013)) input!3561))))

(declare-fun b!4225809 () Bool)

(declare-fun res!1737571 () Bool)

(declare-fun e!2623611 () Bool)

(assert (=> b!4225809 (=> (not res!1737571) (not e!2623611))))

(declare-fun lt!1503019 () Option!10007)

(assert (=> b!4225809 (= res!1737571 (matchR!6403 (regex!7821 (rule!10965 (_1!25256 (get!15150 lt!1503019)))) (list!16835 (charsOf!5234 (_1!25256 (get!15150 lt!1503019))))))))

(declare-fun d!1244249 () Bool)

(declare-fun e!2623613 () Bool)

(assert (=> d!1244249 e!2623613))

(declare-fun res!1737569 () Bool)

(assert (=> d!1244249 (=> res!1737569 e!2623613)))

(assert (=> d!1244249 (= res!1737569 (isEmpty!27582 lt!1503019))))

(declare-fun e!2623612 () Option!10007)

(assert (=> d!1244249 (= lt!1503019 e!2623612)))

(declare-fun c!718635 () Bool)

(assert (=> d!1244249 (= c!718635 (and (is-Cons!46544 (t!349285 rules!4013)) (is-Nil!46544 (t!349285 (t!349285 rules!4013)))))))

(declare-fun lt!1503022 () Unit!65702)

(declare-fun lt!1503021 () Unit!65702)

(assert (=> d!1244249 (= lt!1503022 lt!1503021)))

(assert (=> d!1244249 (isPrefix!4670 input!3561 input!3561)))

(assert (=> d!1244249 (= lt!1503021 (lemmaIsPrefixRefl!3087 input!3561 input!3561))))

(assert (=> d!1244249 (rulesValidInductive!2925 thiss!26728 (t!349285 rules!4013))))

(assert (=> d!1244249 (= (maxPrefix!4454 thiss!26728 (t!349285 rules!4013) input!3561) lt!1503019)))

(declare-fun b!4225810 () Bool)

(declare-fun res!1737566 () Bool)

(assert (=> b!4225810 (=> (not res!1737566) (not e!2623611))))

(assert (=> b!4225810 (= res!1737566 (= (list!16835 (charsOf!5234 (_1!25256 (get!15150 lt!1503019)))) (originalCharacters!8201 (_1!25256 (get!15150 lt!1503019)))))))

(declare-fun b!4225811 () Bool)

(declare-fun res!1737572 () Bool)

(assert (=> b!4225811 (=> (not res!1737572) (not e!2623611))))

(assert (=> b!4225811 (= res!1737572 (= (value!243427 (_1!25256 (get!15150 lt!1503019))) (apply!10724 (transformation!7821 (rule!10965 (_1!25256 (get!15150 lt!1503019)))) (seqFromList!5784 (originalCharacters!8201 (_1!25256 (get!15150 lt!1503019)))))))))

(declare-fun b!4225812 () Bool)

(declare-fun res!1737567 () Bool)

(assert (=> b!4225812 (=> (not res!1737567) (not e!2623611))))

(assert (=> b!4225812 (= res!1737567 (= (++!11885 (list!16835 (charsOf!5234 (_1!25256 (get!15150 lt!1503019)))) (_2!25256 (get!15150 lt!1503019))) input!3561))))

(declare-fun b!4225813 () Bool)

(assert (=> b!4225813 (= e!2623612 call!293240)))

(declare-fun b!4225814 () Bool)

(assert (=> b!4225814 (= e!2623611 (contains!9644 (t!349285 rules!4013) (rule!10965 (_1!25256 (get!15150 lt!1503019)))))))

(declare-fun b!4225815 () Bool)

(assert (=> b!4225815 (= e!2623613 e!2623611)))

(declare-fun res!1737568 () Bool)

(assert (=> b!4225815 (=> (not res!1737568) (not e!2623611))))

(assert (=> b!4225815 (= res!1737568 (isDefined!7425 lt!1503019))))

(declare-fun b!4225816 () Bool)

(declare-fun lt!1503020 () Option!10007)

(declare-fun lt!1503023 () Option!10007)

(assert (=> b!4225816 (= e!2623612 (ite (and (is-None!10006 lt!1503020) (is-None!10006 lt!1503023)) None!10006 (ite (is-None!10006 lt!1503023) lt!1503020 (ite (is-None!10006 lt!1503020) lt!1503023 (ite (>= (size!34162 (_1!25256 (v!40916 lt!1503020))) (size!34162 (_1!25256 (v!40916 lt!1503023)))) lt!1503020 lt!1503023)))))))

(assert (=> b!4225816 (= lt!1503020 call!293240)))

(assert (=> b!4225816 (= lt!1503023 (maxPrefix!4454 thiss!26728 (t!349285 (t!349285 rules!4013)) input!3561))))

(declare-fun b!4225817 () Bool)

(declare-fun res!1737570 () Bool)

(assert (=> b!4225817 (=> (not res!1737570) (not e!2623611))))

(assert (=> b!4225817 (= res!1737570 (< (size!34164 (_2!25256 (get!15150 lt!1503019))) (size!34164 input!3561)))))

(assert (= (and d!1244249 c!718635) b!4225813))

(assert (= (and d!1244249 (not c!718635)) b!4225816))

(assert (= (or b!4225813 b!4225816) bm!293235))

(assert (= (and d!1244249 (not res!1737569)) b!4225815))

(assert (= (and b!4225815 res!1737568) b!4225810))

(assert (= (and b!4225810 res!1737566) b!4225817))

(assert (= (and b!4225817 res!1737570) b!4225812))

(assert (= (and b!4225812 res!1737567) b!4225811))

(assert (= (and b!4225811 res!1737572) b!4225809))

(assert (= (and b!4225809 res!1737571) b!4225814))

(declare-fun m!4813839 () Bool)

(assert (=> b!4225814 m!4813839))

(declare-fun m!4813841 () Bool)

(assert (=> b!4225814 m!4813841))

(declare-fun m!4813843 () Bool)

(assert (=> b!4225816 m!4813843))

(declare-fun m!4813845 () Bool)

(assert (=> b!4225815 m!4813845))

(declare-fun m!4813847 () Bool)

(assert (=> d!1244249 m!4813847))

(assert (=> d!1244249 m!4813813))

(assert (=> d!1244249 m!4813815))

(assert (=> d!1244249 m!4813749))

(assert (=> b!4225817 m!4813839))

(declare-fun m!4813849 () Bool)

(assert (=> b!4225817 m!4813849))

(assert (=> b!4225817 m!4813819))

(assert (=> b!4225810 m!4813839))

(declare-fun m!4813851 () Bool)

(assert (=> b!4225810 m!4813851))

(assert (=> b!4225810 m!4813851))

(declare-fun m!4813853 () Bool)

(assert (=> b!4225810 m!4813853))

(declare-fun m!4813855 () Bool)

(assert (=> bm!293235 m!4813855))

(assert (=> b!4225811 m!4813839))

(declare-fun m!4813857 () Bool)

(assert (=> b!4225811 m!4813857))

(assert (=> b!4225811 m!4813857))

(declare-fun m!4813859 () Bool)

(assert (=> b!4225811 m!4813859))

(assert (=> b!4225812 m!4813839))

(assert (=> b!4225812 m!4813851))

(assert (=> b!4225812 m!4813851))

(assert (=> b!4225812 m!4813853))

(assert (=> b!4225812 m!4813853))

(declare-fun m!4813861 () Bool)

(assert (=> b!4225812 m!4813861))

(assert (=> b!4225809 m!4813839))

(assert (=> b!4225809 m!4813851))

(assert (=> b!4225809 m!4813851))

(assert (=> b!4225809 m!4813853))

(assert (=> b!4225809 m!4813853))

(declare-fun m!4813863 () Bool)

(assert (=> b!4225809 m!4813863))

(assert (=> b!4225697 d!1244249))

(declare-fun d!1244251 () Bool)

(declare-fun res!1737577 () Bool)

(declare-fun e!2623616 () Bool)

(assert (=> d!1244251 (=> (not res!1737577) (not e!2623616))))

(declare-fun validRegex!5778 (Regex!12726) Bool)

(assert (=> d!1244251 (= res!1737577 (validRegex!5778 (regex!7821 r!4313)))))

(assert (=> d!1244251 (= (ruleValid!3529 thiss!26728 r!4313) e!2623616)))

(declare-fun b!4225822 () Bool)

(declare-fun res!1737578 () Bool)

(assert (=> b!4225822 (=> (not res!1737578) (not e!2623616))))

(declare-fun nullable!4491 (Regex!12726) Bool)

(assert (=> b!4225822 (= res!1737578 (not (nullable!4491 (regex!7821 r!4313))))))

(declare-fun b!4225823 () Bool)

(assert (=> b!4225823 (= e!2623616 (not (= (tag!8685 r!4313) (String!54128 ""))))))

(assert (= (and d!1244251 res!1737577) b!4225822))

(assert (= (and b!4225822 res!1737578) b!4225823))

(declare-fun m!4813865 () Bool)

(assert (=> d!1244251 m!4813865))

(declare-fun m!4813867 () Bool)

(assert (=> b!4225822 m!4813867))

(assert (=> b!4225704 d!1244251))

(declare-fun d!1244253 () Bool)

(assert (=> d!1244253 (ruleValid!3529 thiss!26728 r!4313)))

(declare-fun lt!1503026 () Unit!65702)

(declare-fun choose!25887 (LexerInterface!7416 Rule!15442 List!46668) Unit!65702)

(assert (=> d!1244253 (= lt!1503026 (choose!25887 thiss!26728 r!4313 rules!4013))))

(assert (=> d!1244253 (contains!9644 rules!4013 r!4313)))

(assert (=> d!1244253 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2441 thiss!26728 r!4313 rules!4013) lt!1503026)))

(declare-fun bs!597832 () Bool)

(assert (= bs!597832 d!1244253))

(assert (=> bs!597832 m!4813733))

(declare-fun m!4813869 () Bool)

(assert (=> bs!597832 m!4813869))

(assert (=> bs!597832 m!4813731))

(assert (=> b!4225704 d!1244253))

(declare-fun d!1244255 () Bool)

(declare-fun lt!1503027 () Bool)

(assert (=> d!1244255 (= lt!1503027 (set.member r!4313 (content!7316 (t!349285 rules!4013))))))

(declare-fun e!2623618 () Bool)

(assert (=> d!1244255 (= lt!1503027 e!2623618)))

(declare-fun res!1737579 () Bool)

(assert (=> d!1244255 (=> (not res!1737579) (not e!2623618))))

(assert (=> d!1244255 (= res!1737579 (is-Cons!46544 (t!349285 rules!4013)))))

(assert (=> d!1244255 (= (contains!9644 (t!349285 rules!4013) r!4313) lt!1503027)))

(declare-fun b!4225824 () Bool)

(declare-fun e!2623617 () Bool)

(assert (=> b!4225824 (= e!2623618 e!2623617)))

(declare-fun res!1737580 () Bool)

(assert (=> b!4225824 (=> res!1737580 e!2623617)))

(assert (=> b!4225824 (= res!1737580 (= (h!51964 (t!349285 rules!4013)) r!4313))))

(declare-fun b!4225825 () Bool)

(assert (=> b!4225825 (= e!2623617 (contains!9644 (t!349285 (t!349285 rules!4013)) r!4313))))

(assert (= (and d!1244255 res!1737579) b!4225824))

(assert (= (and b!4225824 (not res!1737580)) b!4225825))

(declare-fun m!4813871 () Bool)

(assert (=> d!1244255 m!4813871))

(declare-fun m!4813873 () Bool)

(assert (=> d!1244255 m!4813873))

(declare-fun m!4813875 () Bool)

(assert (=> b!4225825 m!4813875))

(assert (=> b!4225693 d!1244255))

(declare-fun d!1244257 () Bool)

(assert (=> d!1244257 true))

(declare-fun lt!1503030 () Bool)

(declare-fun lambda!129904 () Int)

(declare-fun forall!8511 (List!46668 Int) Bool)

(assert (=> d!1244257 (= lt!1503030 (forall!8511 (t!349285 rules!4013) lambda!129904))))

(declare-fun e!2623624 () Bool)

(assert (=> d!1244257 (= lt!1503030 e!2623624)))

(declare-fun res!1737586 () Bool)

(assert (=> d!1244257 (=> res!1737586 e!2623624)))

(assert (=> d!1244257 (= res!1737586 (not (is-Cons!46544 (t!349285 rules!4013))))))

(assert (=> d!1244257 (= (rulesValidInductive!2925 thiss!26728 (t!349285 rules!4013)) lt!1503030)))

(declare-fun b!4225830 () Bool)

(declare-fun e!2623623 () Bool)

(assert (=> b!4225830 (= e!2623624 e!2623623)))

(declare-fun res!1737585 () Bool)

(assert (=> b!4225830 (=> (not res!1737585) (not e!2623623))))

(assert (=> b!4225830 (= res!1737585 (ruleValid!3529 thiss!26728 (h!51964 (t!349285 rules!4013))))))

(declare-fun b!4225831 () Bool)

(assert (=> b!4225831 (= e!2623623 (rulesValidInductive!2925 thiss!26728 (t!349285 (t!349285 rules!4013))))))

(assert (= (and d!1244257 (not res!1737586)) b!4225830))

(assert (= (and b!4225830 res!1737585) b!4225831))

(declare-fun m!4813877 () Bool)

(assert (=> d!1244257 m!4813877))

(declare-fun m!4813879 () Bool)

(assert (=> b!4225830 m!4813879))

(declare-fun m!4813881 () Bool)

(assert (=> b!4225831 m!4813881))

(assert (=> b!4225695 d!1244257))

(declare-fun bs!597833 () Bool)

(declare-fun d!1244259 () Bool)

(assert (= bs!597833 (and d!1244259 d!1244257)))

(declare-fun lambda!129905 () Int)

(assert (=> bs!597833 (= lambda!129905 lambda!129904)))

(assert (=> d!1244259 true))

(declare-fun lt!1503031 () Bool)

(assert (=> d!1244259 (= lt!1503031 (forall!8511 rules!4013 lambda!129905))))

(declare-fun e!2623626 () Bool)

(assert (=> d!1244259 (= lt!1503031 e!2623626)))

(declare-fun res!1737588 () Bool)

(assert (=> d!1244259 (=> res!1737588 e!2623626)))

(assert (=> d!1244259 (= res!1737588 (not (is-Cons!46544 rules!4013)))))

(assert (=> d!1244259 (= (rulesValidInductive!2925 thiss!26728 rules!4013) lt!1503031)))

(declare-fun b!4225834 () Bool)

(declare-fun e!2623625 () Bool)

(assert (=> b!4225834 (= e!2623626 e!2623625)))

(declare-fun res!1737587 () Bool)

(assert (=> b!4225834 (=> (not res!1737587) (not e!2623625))))

(assert (=> b!4225834 (= res!1737587 (ruleValid!3529 thiss!26728 (h!51964 rules!4013)))))

(declare-fun b!4225835 () Bool)

(assert (=> b!4225835 (= e!2623625 (rulesValidInductive!2925 thiss!26728 (t!349285 rules!4013)))))

(assert (= (and d!1244259 (not res!1737588)) b!4225834))

(assert (= (and b!4225834 res!1737587) b!4225835))

(declare-fun m!4813883 () Bool)

(assert (=> d!1244259 m!4813883))

(declare-fun m!4813885 () Bool)

(assert (=> b!4225834 m!4813885))

(assert (=> b!4225835 m!4813749))

(assert (=> b!4225694 d!1244259))

(declare-fun b!4225848 () Bool)

(declare-fun e!2623629 () Bool)

(declare-fun tp!1293591 () Bool)

(assert (=> b!4225848 (= e!2623629 tp!1293591)))

(declare-fun b!4225849 () Bool)

(declare-fun tp!1293593 () Bool)

(declare-fun tp!1293595 () Bool)

(assert (=> b!4225849 (= e!2623629 (and tp!1293593 tp!1293595))))

(declare-fun b!4225847 () Bool)

(declare-fun tp!1293594 () Bool)

(declare-fun tp!1293592 () Bool)

(assert (=> b!4225847 (= e!2623629 (and tp!1293594 tp!1293592))))

(declare-fun b!4225846 () Bool)

(assert (=> b!4225846 (= e!2623629 tp_is_empty!22415)))

(assert (=> b!4225707 (= tp!1293556 e!2623629)))

(assert (= (and b!4225707 (is-ElementMatch!12726 (regex!7821 (h!51964 rules!4013)))) b!4225846))

(assert (= (and b!4225707 (is-Concat!20778 (regex!7821 (h!51964 rules!4013)))) b!4225847))

(assert (= (and b!4225707 (is-Star!12726 (regex!7821 (h!51964 rules!4013)))) b!4225848))

(assert (= (and b!4225707 (is-Union!12726 (regex!7821 (h!51964 rules!4013)))) b!4225849))

(declare-fun b!4225860 () Bool)

(declare-fun b_free!124427 () Bool)

(declare-fun b_next!125131 () Bool)

(assert (=> b!4225860 (= b_free!124427 (not b_next!125131))))

(declare-fun tp!1293607 () Bool)

(declare-fun b_and!333661 () Bool)

(assert (=> b!4225860 (= tp!1293607 b_and!333661)))

(declare-fun b_free!124429 () Bool)

(declare-fun b_next!125133 () Bool)

(assert (=> b!4225860 (= b_free!124429 (not b_next!125133))))

(declare-fun tp!1293606 () Bool)

(declare-fun b_and!333663 () Bool)

(assert (=> b!4225860 (= tp!1293606 b_and!333663)))

(declare-fun e!2623638 () Bool)

(assert (=> b!4225860 (= e!2623638 (and tp!1293607 tp!1293606))))

(declare-fun b!4225859 () Bool)

(declare-fun e!2623641 () Bool)

(declare-fun tp!1293605 () Bool)

(assert (=> b!4225859 (= e!2623641 (and tp!1293605 (inv!61209 (tag!8685 (h!51964 (t!349285 rules!4013)))) (inv!61212 (transformation!7821 (h!51964 (t!349285 rules!4013)))) e!2623638))))

(declare-fun b!4225858 () Bool)

(declare-fun e!2623640 () Bool)

(declare-fun tp!1293604 () Bool)

(assert (=> b!4225858 (= e!2623640 (and e!2623641 tp!1293604))))

(assert (=> b!4225703 (= tp!1293551 e!2623640)))

(assert (= b!4225859 b!4225860))

(assert (= b!4225858 b!4225859))

(assert (= (and b!4225703 (is-Cons!46544 (t!349285 rules!4013))) b!4225858))

(declare-fun m!4813887 () Bool)

(assert (=> b!4225859 m!4813887))

(declare-fun m!4813889 () Bool)

(assert (=> b!4225859 m!4813889))

(declare-fun b!4225863 () Bool)

(declare-fun e!2623642 () Bool)

(declare-fun tp!1293608 () Bool)

(assert (=> b!4225863 (= e!2623642 tp!1293608)))

(declare-fun b!4225864 () Bool)

(declare-fun tp!1293610 () Bool)

(declare-fun tp!1293612 () Bool)

(assert (=> b!4225864 (= e!2623642 (and tp!1293610 tp!1293612))))

(declare-fun b!4225862 () Bool)

(declare-fun tp!1293611 () Bool)

(declare-fun tp!1293609 () Bool)

(assert (=> b!4225862 (= e!2623642 (and tp!1293611 tp!1293609))))

(declare-fun b!4225861 () Bool)

(assert (=> b!4225861 (= e!2623642 tp_is_empty!22415)))

(assert (=> b!4225698 (= tp!1293550 e!2623642)))

(assert (= (and b!4225698 (is-ElementMatch!12726 (regex!7821 r!4313))) b!4225861))

(assert (= (and b!4225698 (is-Concat!20778 (regex!7821 r!4313))) b!4225862))

(assert (= (and b!4225698 (is-Star!12726 (regex!7821 r!4313))) b!4225863))

(assert (= (and b!4225698 (is-Union!12726 (regex!7821 r!4313))) b!4225864))

(declare-fun b!4225869 () Bool)

(declare-fun e!2623645 () Bool)

(declare-fun tp!1293615 () Bool)

(assert (=> b!4225869 (= e!2623645 (and tp_is_empty!22415 tp!1293615))))

(assert (=> b!4225705 (= tp!1293549 e!2623645)))

(assert (= (and b!4225705 (is-Cons!46543 (t!349284 input!3561))) b!4225869))

(push 1)

(assert b_and!333651)

(assert (not d!1244231))

(assert (not b!4225816))

(assert tp_is_empty!22415)

(assert (not d!1244249))

(assert (not b!4225812))

(assert (not b!4225801))

(assert (not b!4225815))

(assert b_and!333647)

(assert (not b!4225834))

(assert (not b!4225805))

(assert (not b_next!125119))

(assert (not b!4225764))

(assert (not b!4225807))

(assert (not b!4225810))

(assert (not b!4225847))

(assert b_and!333645)

(assert (not b!4225822))

(assert b_and!333663)

(assert (not d!1244223))

(assert (not b!4225808))

(assert (not d!1244243))

(assert (not b_next!125117))

(assert (not b!4225775))

(assert (not b!4225830))

(assert (not b!4225848))

(assert (not b_next!125131))

(assert (not b!4225800))

(assert (not b!4225814))

(assert (not d!1244257))

(assert (not d!1244251))

(assert (not b!4225831))

(assert (not d!1244259))

(assert (not b_next!125121))

(assert (not d!1244253))

(assert (not b!4225802))

(assert (not b!4225859))

(assert (not b_next!125133))

(assert (not b!4225825))

(assert (not b!4225811))

(assert (not b!4225809))

(assert (not b!4225770))

(assert b_and!333649)

(assert (not b!4225762))

(assert (not b_next!125115))

(assert (not b!4225869))

(assert (not b!4225817))

(assert (not b!4225799))

(assert (not bm!293235))

(assert (not b!4225862))

(assert (not b!4225849))

(assert (not b!4225864))

(assert (not b!4225806))

(assert (not b!4225858))

(assert (not d!1244255))

(assert (not b!4225835))

(assert (not d!1244239))

(assert (not b!4225863))

(assert b_and!333661)

(assert (not bm!293234))

(assert (not b!4225804))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!125119))

(assert b_and!333645)

(assert b_and!333651)

(assert b_and!333663)

(assert (not b_next!125117))

(assert (not b_next!125131))

(assert (not b_next!125121))

(assert (not b_next!125133))

(assert b_and!333649)

(assert (not b_next!125115))

(assert b_and!333647)

(assert b_and!333661)

(check-sat)

(pop 1)

