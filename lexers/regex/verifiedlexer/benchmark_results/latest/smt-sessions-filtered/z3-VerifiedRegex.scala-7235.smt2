; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!385288 () Bool)

(assert start!385288)

(declare-fun b!4078744 () Bool)

(declare-fun b_free!113769 () Bool)

(declare-fun b_next!114473 () Bool)

(assert (=> b!4078744 (= b_free!113769 (not b_next!114473))))

(declare-fun tp!1234737 () Bool)

(declare-fun b_and!313667 () Bool)

(assert (=> b!4078744 (= tp!1234737 b_and!313667)))

(declare-fun b_free!113771 () Bool)

(declare-fun b_next!114475 () Bool)

(assert (=> b!4078744 (= b_free!113771 (not b_next!114475))))

(declare-fun tp!1234742 () Bool)

(declare-fun b_and!313669 () Bool)

(assert (=> b!4078744 (= tp!1234742 b_and!313669)))

(declare-fun b!4078746 () Bool)

(declare-fun b_free!113773 () Bool)

(declare-fun b_next!114477 () Bool)

(assert (=> b!4078746 (= b_free!113773 (not b_next!114477))))

(declare-fun tp!1234743 () Bool)

(declare-fun b_and!313671 () Bool)

(assert (=> b!4078746 (= tp!1234743 b_and!313671)))

(declare-fun b_free!113775 () Bool)

(declare-fun b_next!114479 () Bool)

(assert (=> b!4078746 (= b_free!113775 (not b_next!114479))))

(declare-fun tp!1234746 () Bool)

(declare-fun b_and!313673 () Bool)

(assert (=> b!4078746 (= tp!1234746 b_and!313673)))

(declare-fun b!4078732 () Bool)

(declare-fun res!1666191 () Bool)

(declare-fun e!2531529 () Bool)

(assert (=> b!4078732 (=> res!1666191 e!2531529)))

(declare-datatypes ((List!43799 0))(
  ( (Nil!43675) (Cons!43675 (h!49095 (_ BitVec 16)) (t!337534 List!43799)) )
))
(declare-datatypes ((TokenValue!7272 0))(
  ( (FloatLiteralValue!14544 (text!51349 List!43799)) (TokenValueExt!7271 (__x!26761 Int)) (Broken!36360 (value!221323 List!43799)) (Object!7395) (End!7272) (Def!7272) (Underscore!7272) (Match!7272) (Else!7272) (Error!7272) (Case!7272) (If!7272) (Extends!7272) (Abstract!7272) (Class!7272) (Val!7272) (DelimiterValue!14544 (del!7332 List!43799)) (KeywordValue!7278 (value!221324 List!43799)) (CommentValue!14544 (value!221325 List!43799)) (WhitespaceValue!14544 (value!221326 List!43799)) (IndentationValue!7272 (value!221327 List!43799)) (String!50109) (Int32!7272) (Broken!36361 (value!221328 List!43799)) (Boolean!7273) (Unit!63210) (OperatorValue!7275 (op!7332 List!43799)) (IdentifierValue!14544 (value!221329 List!43799)) (IdentifierValue!14545 (value!221330 List!43799)) (WhitespaceValue!14545 (value!221331 List!43799)) (True!14544) (False!14544) (Broken!36362 (value!221332 List!43799)) (Broken!36363 (value!221333 List!43799)) (True!14545) (RightBrace!7272) (RightBracket!7272) (Colon!7272) (Null!7272) (Comma!7272) (LeftBracket!7272) (False!14545) (LeftBrace!7272) (ImaginaryLiteralValue!7272 (text!51350 List!43799)) (StringLiteralValue!21816 (value!221334 List!43799)) (EOFValue!7272 (value!221335 List!43799)) (IdentValue!7272 (value!221336 List!43799)) (DelimiterValue!14545 (value!221337 List!43799)) (DedentValue!7272 (value!221338 List!43799)) (NewLineValue!7272 (value!221339 List!43799)) (IntegerValue!21816 (value!221340 (_ BitVec 32)) (text!51351 List!43799)) (IntegerValue!21817 (value!221341 Int) (text!51352 List!43799)) (Times!7272) (Or!7272) (Equal!7272) (Minus!7272) (Broken!36364 (value!221342 List!43799)) (And!7272) (Div!7272) (LessEqual!7272) (Mod!7272) (Concat!19219) (Not!7272) (Plus!7272) (SpaceValue!7272 (value!221343 List!43799)) (IntegerValue!21818 (value!221344 Int) (text!51353 List!43799)) (StringLiteralValue!21817 (text!51354 List!43799)) (FloatLiteralValue!14545 (text!51355 List!43799)) (BytesLiteralValue!7272 (value!221345 List!43799)) (CommentValue!14545 (value!221346 List!43799)) (StringLiteralValue!21818 (value!221347 List!43799)) (ErrorTokenValue!7272 (msg!7333 List!43799)) )
))
(declare-datatypes ((String!50110 0))(
  ( (String!50111 (value!221348 String)) )
))
(declare-datatypes ((C!24080 0))(
  ( (C!24081 (val!14150 Int)) )
))
(declare-datatypes ((Regex!11947 0))(
  ( (ElementMatch!11947 (c!703468 C!24080)) (Concat!19220 (regOne!24406 Regex!11947) (regTwo!24406 Regex!11947)) (EmptyExpr!11947) (Star!11947 (reg!12276 Regex!11947)) (EmptyLang!11947) (Union!11947 (regOne!24407 Regex!11947) (regTwo!24407 Regex!11947)) )
))
(declare-datatypes ((List!43800 0))(
  ( (Nil!43676) (Cons!43676 (h!49096 C!24080) (t!337535 List!43800)) )
))
(declare-datatypes ((IArray!26511 0))(
  ( (IArray!26512 (innerList!13313 List!43800)) )
))
(declare-datatypes ((Conc!13253 0))(
  ( (Node!13253 (left!32828 Conc!13253) (right!33158 Conc!13253) (csize!26736 Int) (cheight!13464 Int)) (Leaf!20489 (xs!16559 IArray!26511) (csize!26737 Int)) (Empty!13253) )
))
(declare-datatypes ((BalanceConc!26100 0))(
  ( (BalanceConc!26101 (c!703469 Conc!13253)) )
))
(declare-datatypes ((TokenValueInjection!13972 0))(
  ( (TokenValueInjection!13973 (toValue!9610 Int) (toChars!9469 Int)) )
))
(declare-datatypes ((Rule!13884 0))(
  ( (Rule!13885 (regex!7042 Regex!11947) (tag!7902 String!50110) (isSeparator!7042 Bool) (transformation!7042 TokenValueInjection!13972)) )
))
(declare-datatypes ((List!43801 0))(
  ( (Nil!43677) (Cons!43677 (h!49097 Rule!13884) (t!337536 List!43801)) )
))
(declare-fun rules!3870 () List!43801)

(declare-fun r!4213 () Rule!13884)

(get-info :version)

(assert (=> b!4078732 (= res!1666191 (or (and ((_ is Cons!43677) rules!3870) (= (h!49097 rules!3870) r!4213)) (not ((_ is Cons!43677) rules!3870)) (= (h!49097 rules!3870) r!4213)))))

(declare-fun b!4078733 () Bool)

(declare-fun e!2531535 () Bool)

(declare-fun e!2531540 () Bool)

(assert (=> b!4078733 (= e!2531535 e!2531540)))

(declare-fun res!1666190 () Bool)

(assert (=> b!4078733 (=> res!1666190 e!2531540)))

(declare-datatypes ((Token!13210 0))(
  ( (Token!13211 (value!221349 TokenValue!7272) (rule!10156 Rule!13884) (size!32625 Int) (originalCharacters!7636 List!43800)) )
))
(declare-datatypes ((tuple2!42646 0))(
  ( (tuple2!42647 (_1!24457 Token!13210) (_2!24457 List!43800)) )
))
(declare-fun lt!1459365 () tuple2!42646)

(declare-datatypes ((Option!9450 0))(
  ( (None!9449) (Some!9449 (v!39903 tuple2!42646)) )
))
(declare-fun lt!1459364 () Option!9450)

(declare-fun lt!1459366 () Option!9450)

(assert (=> b!4078733 (= res!1666190 (or (not (= (rule!10156 (_1!24457 lt!1459365)) (h!49097 rules!3870))) (= (rule!10156 (_1!24457 lt!1459365)) r!4213) (= lt!1459366 lt!1459364)))))

(declare-fun get!14321 (Option!9450) tuple2!42646)

(assert (=> b!4078733 (= lt!1459365 (get!14321 lt!1459366))))

(declare-fun e!2531532 () Bool)

(declare-fun b!4078734 () Bool)

(declare-fun tp!1234744 () Bool)

(declare-fun e!2531530 () Bool)

(declare-fun inv!58331 (String!50110) Bool)

(declare-fun inv!58333 (TokenValueInjection!13972) Bool)

(assert (=> b!4078734 (= e!2531530 (and tp!1234744 (inv!58331 (tag!7902 (h!49097 rules!3870))) (inv!58333 (transformation!7042 (h!49097 rules!3870))) e!2531532))))

(declare-fun b!4078735 () Bool)

(declare-fun e!2531539 () Bool)

(declare-fun tp_is_empty!20897 () Bool)

(declare-fun tp!1234740 () Bool)

(assert (=> b!4078735 (= e!2531539 (and tp_is_empty!20897 tp!1234740))))

(declare-fun b!4078736 () Bool)

(declare-fun res!1666199 () Bool)

(declare-fun e!2531527 () Bool)

(assert (=> b!4078736 (=> (not res!1666199) (not e!2531527))))

(declare-fun contains!8711 (List!43801 Rule!13884) Bool)

(assert (=> b!4078736 (= res!1666199 (contains!8711 rules!3870 r!4213))))

(declare-fun b!4078738 () Bool)

(declare-fun e!2531534 () Bool)

(declare-fun tp!1234738 () Bool)

(assert (=> b!4078738 (= e!2531534 (and tp_is_empty!20897 tp!1234738))))

(declare-fun b!4078739 () Bool)

(declare-fun res!1666196 () Bool)

(assert (=> b!4078739 (=> (not res!1666196) (not e!2531527))))

(declare-fun isEmpty!26091 (List!43801) Bool)

(assert (=> b!4078739 (= res!1666196 (not (isEmpty!26091 rules!3870)))))

(declare-fun b!4078740 () Bool)

(declare-fun res!1666189 () Bool)

(assert (=> b!4078740 (=> (not res!1666189) (not e!2531527))))

(declare-fun suffix!1518 () List!43800)

(declare-fun p!2988 () List!43800)

(declare-fun input!3411 () List!43800)

(declare-fun ++!11448 (List!43800 List!43800) List!43800)

(assert (=> b!4078740 (= res!1666189 (= input!3411 (++!11448 p!2988 suffix!1518)))))

(declare-fun b!4078741 () Bool)

(declare-fun e!2531533 () Bool)

(declare-fun tp!1234745 () Bool)

(assert (=> b!4078741 (= e!2531533 (and tp_is_empty!20897 tp!1234745))))

(declare-fun b!4078742 () Bool)

(declare-fun res!1666195 () Bool)

(assert (=> b!4078742 (=> (not res!1666195) (not e!2531527))))

(declare-datatypes ((LexerInterface!6631 0))(
  ( (LexerInterfaceExt!6628 (__x!26762 Int)) (Lexer!6629) )
))
(declare-fun thiss!26199 () LexerInterface!6631)

(declare-fun rulesInvariant!5974 (LexerInterface!6631 List!43801) Bool)

(assert (=> b!4078742 (= res!1666195 (rulesInvariant!5974 thiss!26199 rules!3870))))

(declare-fun b!4078743 () Bool)

(assert (=> b!4078743 (= e!2531529 e!2531535)))

(declare-fun res!1666194 () Bool)

(assert (=> b!4078743 (=> res!1666194 e!2531535)))

(declare-fun isEmpty!26092 (Option!9450) Bool)

(assert (=> b!4078743 (= res!1666194 (isEmpty!26092 lt!1459366))))

(declare-fun maxPrefixOneRule!2917 (LexerInterface!6631 Rule!13884 List!43800) Option!9450)

(assert (=> b!4078743 (= lt!1459366 (maxPrefixOneRule!2917 thiss!26199 (h!49097 rules!3870) input!3411))))

(assert (=> b!4078743 (rulesInvariant!5974 thiss!26199 (t!337536 rules!3870))))

(declare-datatypes ((Unit!63211 0))(
  ( (Unit!63212) )
))
(declare-fun lt!1459367 () Unit!63211)

(declare-fun lemmaInvariantOnRulesThenOnTail!760 (LexerInterface!6631 Rule!13884 List!43801) Unit!63211)

(assert (=> b!4078743 (= lt!1459367 (lemmaInvariantOnRulesThenOnTail!760 thiss!26199 (h!49097 rules!3870) (t!337536 rules!3870)))))

(declare-fun e!2531526 () Bool)

(assert (=> b!4078744 (= e!2531526 (and tp!1234737 tp!1234742))))

(declare-fun b!4078745 () Bool)

(declare-fun e!2531537 () Bool)

(assert (=> b!4078745 (= e!2531527 e!2531537)))

(declare-fun res!1666197 () Bool)

(assert (=> b!4078745 (=> (not res!1666197) (not e!2531537))))

(declare-fun maxPrefix!3923 (LexerInterface!6631 List!43801 List!43800) Option!9450)

(assert (=> b!4078745 (= res!1666197 (= (maxPrefix!3923 thiss!26199 rules!3870 input!3411) lt!1459364))))

(declare-fun lt!1459362 () BalanceConc!26100)

(declare-fun apply!10225 (TokenValueInjection!13972 BalanceConc!26100) TokenValue!7272)

(declare-fun size!32626 (List!43800) Int)

(assert (=> b!4078745 (= lt!1459364 (Some!9449 (tuple2!42647 (Token!13211 (apply!10225 (transformation!7042 r!4213) lt!1459362) r!4213 (size!32626 p!2988) p!2988) suffix!1518)))))

(declare-fun lt!1459361 () Unit!63211)

(declare-fun lemmaSemiInverse!2009 (TokenValueInjection!13972 BalanceConc!26100) Unit!63211)

(assert (=> b!4078745 (= lt!1459361 (lemmaSemiInverse!2009 (transformation!7042 r!4213) lt!1459362))))

(declare-fun seqFromList!5259 (List!43800) BalanceConc!26100)

(assert (=> b!4078745 (= lt!1459362 (seqFromList!5259 p!2988))))

(assert (=> b!4078746 (= e!2531532 (and tp!1234743 tp!1234746))))

(declare-fun b!4078747 () Bool)

(declare-fun e!2531538 () Bool)

(declare-fun tp!1234739 () Bool)

(assert (=> b!4078747 (= e!2531538 (and tp!1234739 (inv!58331 (tag!7902 r!4213)) (inv!58333 (transformation!7042 r!4213)) e!2531526))))

(declare-fun b!4078748 () Bool)

(declare-fun rulesValidInductive!2591 (LexerInterface!6631 List!43801) Bool)

(assert (=> b!4078748 (= e!2531540 (rulesValidInductive!2591 thiss!26199 (t!337536 rules!3870)))))

(declare-fun b!4078749 () Bool)

(declare-fun res!1666198 () Bool)

(assert (=> b!4078749 (=> (not res!1666198) (not e!2531527))))

(declare-fun isEmpty!26093 (List!43800) Bool)

(assert (=> b!4078749 (= res!1666198 (not (isEmpty!26093 p!2988)))))

(declare-fun b!4078750 () Bool)

(declare-fun e!2531531 () Bool)

(declare-fun tp!1234741 () Bool)

(assert (=> b!4078750 (= e!2531531 (and e!2531530 tp!1234741))))

(declare-fun b!4078737 () Bool)

(assert (=> b!4078737 (= e!2531537 (not e!2531529))))

(declare-fun res!1666193 () Bool)

(assert (=> b!4078737 (=> res!1666193 e!2531529)))

(declare-fun matchR!5892 (Regex!11947 List!43800) Bool)

(assert (=> b!4078737 (= res!1666193 (not (matchR!5892 (regex!7042 r!4213) p!2988)))))

(declare-fun ruleValid!2966 (LexerInterface!6631 Rule!13884) Bool)

(assert (=> b!4078737 (ruleValid!2966 thiss!26199 r!4213)))

(declare-fun lt!1459363 () Unit!63211)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2034 (LexerInterface!6631 Rule!13884 List!43801) Unit!63211)

(assert (=> b!4078737 (= lt!1459363 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2034 thiss!26199 r!4213 rules!3870))))

(declare-fun res!1666192 () Bool)

(assert (=> start!385288 (=> (not res!1666192) (not e!2531527))))

(assert (=> start!385288 (= res!1666192 ((_ is Lexer!6629) thiss!26199))))

(assert (=> start!385288 e!2531527))

(assert (=> start!385288 true))

(assert (=> start!385288 e!2531539))

(assert (=> start!385288 e!2531531))

(assert (=> start!385288 e!2531534))

(assert (=> start!385288 e!2531533))

(assert (=> start!385288 e!2531538))

(assert (= (and start!385288 res!1666192) b!4078739))

(assert (= (and b!4078739 res!1666196) b!4078742))

(assert (= (and b!4078742 res!1666195) b!4078736))

(assert (= (and b!4078736 res!1666199) b!4078740))

(assert (= (and b!4078740 res!1666189) b!4078749))

(assert (= (and b!4078749 res!1666198) b!4078745))

(assert (= (and b!4078745 res!1666197) b!4078737))

(assert (= (and b!4078737 (not res!1666193)) b!4078732))

(assert (= (and b!4078732 (not res!1666191)) b!4078743))

(assert (= (and b!4078743 (not res!1666194)) b!4078733))

(assert (= (and b!4078733 (not res!1666190)) b!4078748))

(assert (= (and start!385288 ((_ is Cons!43676) suffix!1518)) b!4078735))

(assert (= b!4078734 b!4078746))

(assert (= b!4078750 b!4078734))

(assert (= (and start!385288 ((_ is Cons!43677) rules!3870)) b!4078750))

(assert (= (and start!385288 ((_ is Cons!43676) p!2988)) b!4078738))

(assert (= (and start!385288 ((_ is Cons!43676) input!3411)) b!4078741))

(assert (= b!4078747 b!4078744))

(assert (= start!385288 b!4078747))

(declare-fun m!4686635 () Bool)

(assert (=> b!4078742 m!4686635))

(declare-fun m!4686637 () Bool)

(assert (=> b!4078736 m!4686637))

(declare-fun m!4686639 () Bool)

(assert (=> b!4078745 m!4686639))

(declare-fun m!4686641 () Bool)

(assert (=> b!4078745 m!4686641))

(declare-fun m!4686643 () Bool)

(assert (=> b!4078745 m!4686643))

(declare-fun m!4686645 () Bool)

(assert (=> b!4078745 m!4686645))

(declare-fun m!4686647 () Bool)

(assert (=> b!4078745 m!4686647))

(declare-fun m!4686649 () Bool)

(assert (=> b!4078740 m!4686649))

(declare-fun m!4686651 () Bool)

(assert (=> b!4078743 m!4686651))

(declare-fun m!4686653 () Bool)

(assert (=> b!4078743 m!4686653))

(declare-fun m!4686655 () Bool)

(assert (=> b!4078743 m!4686655))

(declare-fun m!4686657 () Bool)

(assert (=> b!4078743 m!4686657))

(declare-fun m!4686659 () Bool)

(assert (=> b!4078749 m!4686659))

(declare-fun m!4686661 () Bool)

(assert (=> b!4078747 m!4686661))

(declare-fun m!4686663 () Bool)

(assert (=> b!4078747 m!4686663))

(declare-fun m!4686665 () Bool)

(assert (=> b!4078734 m!4686665))

(declare-fun m!4686667 () Bool)

(assert (=> b!4078734 m!4686667))

(declare-fun m!4686669 () Bool)

(assert (=> b!4078733 m!4686669))

(declare-fun m!4686671 () Bool)

(assert (=> b!4078748 m!4686671))

(declare-fun m!4686673 () Bool)

(assert (=> b!4078737 m!4686673))

(declare-fun m!4686675 () Bool)

(assert (=> b!4078737 m!4686675))

(declare-fun m!4686677 () Bool)

(assert (=> b!4078737 m!4686677))

(declare-fun m!4686679 () Bool)

(assert (=> b!4078739 m!4686679))

(check-sat (not b!4078743) (not b!4078739) (not b!4078738) (not b!4078735) (not b_next!114479) (not b!4078733) (not b!4078749) (not b!4078742) b_and!313671 b_and!313667 (not b!4078748) (not b!4078750) (not b!4078740) (not b!4078747) b_and!313673 (not b!4078734) (not b_next!114475) (not b!4078737) tp_is_empty!20897 (not b!4078741) (not b!4078745) (not b_next!114477) (not b!4078736) (not b_next!114473) b_and!313669)
(check-sat (not b_next!114479) b_and!313671 b_and!313667 (not b_next!114477) b_and!313673 (not b_next!114475) (not b_next!114473) b_and!313669)
(get-model)

(declare-fun b!4078761 () Bool)

(declare-fun res!1666212 () Bool)

(declare-fun e!2531546 () Bool)

(assert (=> b!4078761 (=> (not res!1666212) (not e!2531546))))

(declare-fun lt!1459370 () List!43800)

(assert (=> b!4078761 (= res!1666212 (= (size!32626 lt!1459370) (+ (size!32626 p!2988) (size!32626 suffix!1518))))))

(declare-fun b!4078762 () Bool)

(assert (=> b!4078762 (= e!2531546 (or (not (= suffix!1518 Nil!43676)) (= lt!1459370 p!2988)))))

(declare-fun d!1211596 () Bool)

(assert (=> d!1211596 e!2531546))

(declare-fun res!1666211 () Bool)

(assert (=> d!1211596 (=> (not res!1666211) (not e!2531546))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6693 (List!43800) (InoxSet C!24080))

(assert (=> d!1211596 (= res!1666211 (= (content!6693 lt!1459370) ((_ map or) (content!6693 p!2988) (content!6693 suffix!1518))))))

(declare-fun e!2531545 () List!43800)

(assert (=> d!1211596 (= lt!1459370 e!2531545)))

(declare-fun c!703472 () Bool)

(assert (=> d!1211596 (= c!703472 ((_ is Nil!43676) p!2988))))

(assert (=> d!1211596 (= (++!11448 p!2988 suffix!1518) lt!1459370)))

(declare-fun b!4078760 () Bool)

(assert (=> b!4078760 (= e!2531545 (Cons!43676 (h!49096 p!2988) (++!11448 (t!337535 p!2988) suffix!1518)))))

(declare-fun b!4078759 () Bool)

(assert (=> b!4078759 (= e!2531545 suffix!1518)))

(assert (= (and d!1211596 c!703472) b!4078759))

(assert (= (and d!1211596 (not c!703472)) b!4078760))

(assert (= (and d!1211596 res!1666211) b!4078761))

(assert (= (and b!4078761 res!1666212) b!4078762))

(declare-fun m!4686681 () Bool)

(assert (=> b!4078761 m!4686681))

(assert (=> b!4078761 m!4686645))

(declare-fun m!4686683 () Bool)

(assert (=> b!4078761 m!4686683))

(declare-fun m!4686685 () Bool)

(assert (=> d!1211596 m!4686685))

(declare-fun m!4686687 () Bool)

(assert (=> d!1211596 m!4686687))

(declare-fun m!4686689 () Bool)

(assert (=> d!1211596 m!4686689))

(declare-fun m!4686691 () Bool)

(assert (=> b!4078760 m!4686691))

(assert (=> b!4078740 d!1211596))

(declare-fun d!1211602 () Bool)

(assert (=> d!1211602 (= (isEmpty!26091 rules!3870) ((_ is Nil!43677) rules!3870))))

(assert (=> b!4078739 d!1211602))

(declare-fun d!1211604 () Bool)

(assert (=> d!1211604 (= (isEmpty!26093 p!2988) ((_ is Nil!43676) p!2988))))

(assert (=> b!4078749 d!1211604))

(declare-fun d!1211606 () Bool)

(assert (=> d!1211606 (= (isEmpty!26092 lt!1459366) (not ((_ is Some!9449) lt!1459366)))))

(assert (=> b!4078743 d!1211606))

(declare-fun b!4078872 () Bool)

(declare-fun e!2531602 () Option!9450)

(declare-datatypes ((tuple2!42650 0))(
  ( (tuple2!42651 (_1!24459 List!43800) (_2!24459 List!43800)) )
))
(declare-fun lt!1459410 () tuple2!42650)

(declare-fun size!32628 (BalanceConc!26100) Int)

(assert (=> b!4078872 (= e!2531602 (Some!9449 (tuple2!42647 (Token!13211 (apply!10225 (transformation!7042 (h!49097 rules!3870)) (seqFromList!5259 (_1!24459 lt!1459410))) (h!49097 rules!3870) (size!32628 (seqFromList!5259 (_1!24459 lt!1459410))) (_1!24459 lt!1459410)) (_2!24459 lt!1459410))))))

(declare-fun lt!1459407 () Unit!63211)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1408 (Regex!11947 List!43800) Unit!63211)

(assert (=> b!4078872 (= lt!1459407 (longestMatchIsAcceptedByMatchOrIsEmpty!1408 (regex!7042 (h!49097 rules!3870)) input!3411))))

(declare-fun res!1666290 () Bool)

(declare-fun findLongestMatchInner!1435 (Regex!11947 List!43800 Int List!43800 List!43800 Int) tuple2!42650)

(assert (=> b!4078872 (= res!1666290 (isEmpty!26093 (_1!24459 (findLongestMatchInner!1435 (regex!7042 (h!49097 rules!3870)) Nil!43676 (size!32626 Nil!43676) input!3411 input!3411 (size!32626 input!3411)))))))

(declare-fun e!2531603 () Bool)

(assert (=> b!4078872 (=> res!1666290 e!2531603)))

(assert (=> b!4078872 e!2531603))

(declare-fun lt!1459409 () Unit!63211)

(assert (=> b!4078872 (= lt!1459409 lt!1459407)))

(declare-fun lt!1459408 () Unit!63211)

(assert (=> b!4078872 (= lt!1459408 (lemmaSemiInverse!2009 (transformation!7042 (h!49097 rules!3870)) (seqFromList!5259 (_1!24459 lt!1459410))))))

(declare-fun b!4078873 () Bool)

(declare-fun res!1666292 () Bool)

(declare-fun e!2531604 () Bool)

(assert (=> b!4078873 (=> (not res!1666292) (not e!2531604))))

(declare-fun lt!1459411 () Option!9450)

(assert (=> b!4078873 (= res!1666292 (< (size!32626 (_2!24457 (get!14321 lt!1459411))) (size!32626 input!3411)))))

(declare-fun d!1211608 () Bool)

(declare-fun e!2531601 () Bool)

(assert (=> d!1211608 e!2531601))

(declare-fun res!1666289 () Bool)

(assert (=> d!1211608 (=> res!1666289 e!2531601)))

(assert (=> d!1211608 (= res!1666289 (isEmpty!26092 lt!1459411))))

(assert (=> d!1211608 (= lt!1459411 e!2531602)))

(declare-fun c!703490 () Bool)

(assert (=> d!1211608 (= c!703490 (isEmpty!26093 (_1!24459 lt!1459410)))))

(declare-fun findLongestMatch!1348 (Regex!11947 List!43800) tuple2!42650)

(assert (=> d!1211608 (= lt!1459410 (findLongestMatch!1348 (regex!7042 (h!49097 rules!3870)) input!3411))))

(assert (=> d!1211608 (ruleValid!2966 thiss!26199 (h!49097 rules!3870))))

(assert (=> d!1211608 (= (maxPrefixOneRule!2917 thiss!26199 (h!49097 rules!3870) input!3411) lt!1459411)))

(declare-fun b!4078874 () Bool)

(declare-fun res!1666288 () Bool)

(assert (=> b!4078874 (=> (not res!1666288) (not e!2531604))))

(declare-fun list!16240 (BalanceConc!26100) List!43800)

(declare-fun charsOf!4824 (Token!13210) BalanceConc!26100)

(assert (=> b!4078874 (= res!1666288 (= (++!11448 (list!16240 (charsOf!4824 (_1!24457 (get!14321 lt!1459411)))) (_2!24457 (get!14321 lt!1459411))) input!3411))))

(declare-fun b!4078875 () Bool)

(assert (=> b!4078875 (= e!2531603 (matchR!5892 (regex!7042 (h!49097 rules!3870)) (_1!24459 (findLongestMatchInner!1435 (regex!7042 (h!49097 rules!3870)) Nil!43676 (size!32626 Nil!43676) input!3411 input!3411 (size!32626 input!3411)))))))

(declare-fun b!4078876 () Bool)

(assert (=> b!4078876 (= e!2531601 e!2531604)))

(declare-fun res!1666293 () Bool)

(assert (=> b!4078876 (=> (not res!1666293) (not e!2531604))))

(assert (=> b!4078876 (= res!1666293 (matchR!5892 (regex!7042 (h!49097 rules!3870)) (list!16240 (charsOf!4824 (_1!24457 (get!14321 lt!1459411))))))))

(declare-fun b!4078877 () Bool)

(declare-fun res!1666294 () Bool)

(assert (=> b!4078877 (=> (not res!1666294) (not e!2531604))))

(assert (=> b!4078877 (= res!1666294 (= (rule!10156 (_1!24457 (get!14321 lt!1459411))) (h!49097 rules!3870)))))

(declare-fun b!4078878 () Bool)

(assert (=> b!4078878 (= e!2531602 None!9449)))

(declare-fun b!4078879 () Bool)

(assert (=> b!4078879 (= e!2531604 (= (size!32625 (_1!24457 (get!14321 lt!1459411))) (size!32626 (originalCharacters!7636 (_1!24457 (get!14321 lt!1459411))))))))

(declare-fun b!4078880 () Bool)

(declare-fun res!1666291 () Bool)

(assert (=> b!4078880 (=> (not res!1666291) (not e!2531604))))

(assert (=> b!4078880 (= res!1666291 (= (value!221349 (_1!24457 (get!14321 lt!1459411))) (apply!10225 (transformation!7042 (rule!10156 (_1!24457 (get!14321 lt!1459411)))) (seqFromList!5259 (originalCharacters!7636 (_1!24457 (get!14321 lt!1459411)))))))))

(assert (= (and d!1211608 c!703490) b!4078878))

(assert (= (and d!1211608 (not c!703490)) b!4078872))

(assert (= (and b!4078872 (not res!1666290)) b!4078875))

(assert (= (and d!1211608 (not res!1666289)) b!4078876))

(assert (= (and b!4078876 res!1666293) b!4078874))

(assert (= (and b!4078874 res!1666288) b!4078873))

(assert (= (and b!4078873 res!1666292) b!4078877))

(assert (= (and b!4078877 res!1666294) b!4078880))

(assert (= (and b!4078880 res!1666291) b!4078879))

(declare-fun m!4686779 () Bool)

(assert (=> b!4078879 m!4686779))

(declare-fun m!4686781 () Bool)

(assert (=> b!4078879 m!4686781))

(declare-fun m!4686783 () Bool)

(assert (=> b!4078872 m!4686783))

(declare-fun m!4686785 () Bool)

(assert (=> b!4078872 m!4686785))

(declare-fun m!4686787 () Bool)

(assert (=> b!4078872 m!4686787))

(declare-fun m!4686789 () Bool)

(assert (=> b!4078872 m!4686789))

(declare-fun m!4686791 () Bool)

(assert (=> b!4078872 m!4686791))

(assert (=> b!4078872 m!4686783))

(declare-fun m!4686793 () Bool)

(assert (=> b!4078872 m!4686793))

(assert (=> b!4078872 m!4686789))

(declare-fun m!4686795 () Bool)

(assert (=> b!4078872 m!4686795))

(assert (=> b!4078872 m!4686789))

(declare-fun m!4686797 () Bool)

(assert (=> b!4078872 m!4686797))

(assert (=> b!4078872 m!4686789))

(declare-fun m!4686799 () Bool)

(assert (=> b!4078872 m!4686799))

(assert (=> b!4078872 m!4686785))

(assert (=> b!4078873 m!4686779))

(declare-fun m!4686801 () Bool)

(assert (=> b!4078873 m!4686801))

(assert (=> b!4078873 m!4686785))

(assert (=> b!4078880 m!4686779))

(declare-fun m!4686803 () Bool)

(assert (=> b!4078880 m!4686803))

(assert (=> b!4078880 m!4686803))

(declare-fun m!4686805 () Bool)

(assert (=> b!4078880 m!4686805))

(assert (=> b!4078874 m!4686779))

(declare-fun m!4686807 () Bool)

(assert (=> b!4078874 m!4686807))

(assert (=> b!4078874 m!4686807))

(declare-fun m!4686809 () Bool)

(assert (=> b!4078874 m!4686809))

(assert (=> b!4078874 m!4686809))

(declare-fun m!4686811 () Bool)

(assert (=> b!4078874 m!4686811))

(assert (=> b!4078875 m!4686783))

(assert (=> b!4078875 m!4686785))

(assert (=> b!4078875 m!4686783))

(assert (=> b!4078875 m!4686785))

(assert (=> b!4078875 m!4686787))

(declare-fun m!4686813 () Bool)

(assert (=> b!4078875 m!4686813))

(assert (=> b!4078877 m!4686779))

(assert (=> b!4078876 m!4686779))

(assert (=> b!4078876 m!4686807))

(assert (=> b!4078876 m!4686807))

(assert (=> b!4078876 m!4686809))

(assert (=> b!4078876 m!4686809))

(declare-fun m!4686815 () Bool)

(assert (=> b!4078876 m!4686815))

(declare-fun m!4686817 () Bool)

(assert (=> d!1211608 m!4686817))

(declare-fun m!4686819 () Bool)

(assert (=> d!1211608 m!4686819))

(declare-fun m!4686821 () Bool)

(assert (=> d!1211608 m!4686821))

(declare-fun m!4686823 () Bool)

(assert (=> d!1211608 m!4686823))

(assert (=> b!4078743 d!1211608))

(declare-fun d!1211632 () Bool)

(declare-fun res!1666301 () Bool)

(declare-fun e!2531611 () Bool)

(assert (=> d!1211632 (=> (not res!1666301) (not e!2531611))))

(declare-fun rulesValid!2750 (LexerInterface!6631 List!43801) Bool)

(assert (=> d!1211632 (= res!1666301 (rulesValid!2750 thiss!26199 (t!337536 rules!3870)))))

(assert (=> d!1211632 (= (rulesInvariant!5974 thiss!26199 (t!337536 rules!3870)) e!2531611)))

(declare-fun b!4078887 () Bool)

(declare-datatypes ((List!43803 0))(
  ( (Nil!43679) (Cons!43679 (h!49099 String!50110) (t!337562 List!43803)) )
))
(declare-fun noDuplicateTag!2751 (LexerInterface!6631 List!43801 List!43803) Bool)

(assert (=> b!4078887 (= e!2531611 (noDuplicateTag!2751 thiss!26199 (t!337536 rules!3870) Nil!43679))))

(assert (= (and d!1211632 res!1666301) b!4078887))

(declare-fun m!4686825 () Bool)

(assert (=> d!1211632 m!4686825))

(declare-fun m!4686827 () Bool)

(assert (=> b!4078887 m!4686827))

(assert (=> b!4078743 d!1211632))

(declare-fun d!1211634 () Bool)

(assert (=> d!1211634 (rulesInvariant!5974 thiss!26199 (t!337536 rules!3870))))

(declare-fun lt!1459417 () Unit!63211)

(declare-fun choose!24903 (LexerInterface!6631 Rule!13884 List!43801) Unit!63211)

(assert (=> d!1211634 (= lt!1459417 (choose!24903 thiss!26199 (h!49097 rules!3870) (t!337536 rules!3870)))))

(assert (=> d!1211634 (rulesInvariant!5974 thiss!26199 (Cons!43677 (h!49097 rules!3870) (t!337536 rules!3870)))))

(assert (=> d!1211634 (= (lemmaInvariantOnRulesThenOnTail!760 thiss!26199 (h!49097 rules!3870) (t!337536 rules!3870)) lt!1459417)))

(declare-fun bs!592807 () Bool)

(assert (= bs!592807 d!1211634))

(assert (=> bs!592807 m!4686655))

(declare-fun m!4686829 () Bool)

(assert (=> bs!592807 m!4686829))

(declare-fun m!4686831 () Bool)

(assert (=> bs!592807 m!4686831))

(assert (=> b!4078743 d!1211634))

(declare-fun d!1211636 () Bool)

(declare-fun res!1666302 () Bool)

(declare-fun e!2531612 () Bool)

(assert (=> d!1211636 (=> (not res!1666302) (not e!2531612))))

(assert (=> d!1211636 (= res!1666302 (rulesValid!2750 thiss!26199 rules!3870))))

(assert (=> d!1211636 (= (rulesInvariant!5974 thiss!26199 rules!3870) e!2531612)))

(declare-fun b!4078888 () Bool)

(assert (=> b!4078888 (= e!2531612 (noDuplicateTag!2751 thiss!26199 rules!3870 Nil!43679))))

(assert (= (and d!1211636 res!1666302) b!4078888))

(declare-fun m!4686833 () Bool)

(assert (=> d!1211636 m!4686833))

(declare-fun m!4686835 () Bool)

(assert (=> b!4078888 m!4686835))

(assert (=> b!4078742 d!1211636))

(declare-fun d!1211638 () Bool)

(declare-fun dynLambda!18581 (Int BalanceConc!26100) TokenValue!7272)

(assert (=> d!1211638 (= (apply!10225 (transformation!7042 r!4213) lt!1459362) (dynLambda!18581 (toValue!9610 (transformation!7042 r!4213)) lt!1459362))))

(declare-fun b_lambda!119215 () Bool)

(assert (=> (not b_lambda!119215) (not d!1211638)))

(declare-fun t!337538 () Bool)

(declare-fun tb!244961 () Bool)

(assert (=> (and b!4078744 (= (toValue!9610 (transformation!7042 r!4213)) (toValue!9610 (transformation!7042 r!4213))) t!337538) tb!244961))

(declare-fun result!297090 () Bool)

(declare-fun inv!21 (TokenValue!7272) Bool)

(assert (=> tb!244961 (= result!297090 (inv!21 (dynLambda!18581 (toValue!9610 (transformation!7042 r!4213)) lt!1459362)))))

(declare-fun m!4686837 () Bool)

(assert (=> tb!244961 m!4686837))

(assert (=> d!1211638 t!337538))

(declare-fun b_and!313675 () Bool)

(assert (= b_and!313667 (and (=> t!337538 result!297090) b_and!313675)))

(declare-fun t!337540 () Bool)

(declare-fun tb!244963 () Bool)

(assert (=> (and b!4078746 (= (toValue!9610 (transformation!7042 (h!49097 rules!3870))) (toValue!9610 (transformation!7042 r!4213))) t!337540) tb!244963))

(declare-fun result!297094 () Bool)

(assert (= result!297094 result!297090))

(assert (=> d!1211638 t!337540))

(declare-fun b_and!313677 () Bool)

(assert (= b_and!313671 (and (=> t!337540 result!297094) b_and!313677)))

(declare-fun m!4686839 () Bool)

(assert (=> d!1211638 m!4686839))

(assert (=> b!4078745 d!1211638))

(declare-fun b!4078913 () Bool)

(declare-fun e!2531632 () Bool)

(assert (=> b!4078913 (= e!2531632 true)))

(declare-fun d!1211640 () Bool)

(assert (=> d!1211640 e!2531632))

(assert (= d!1211640 b!4078913))

(declare-fun order!22849 () Int)

(declare-fun order!22847 () Int)

(declare-fun lambda!127735 () Int)

(declare-fun dynLambda!18582 (Int Int) Int)

(declare-fun dynLambda!18583 (Int Int) Int)

(assert (=> b!4078913 (< (dynLambda!18582 order!22847 (toValue!9610 (transformation!7042 r!4213))) (dynLambda!18583 order!22849 lambda!127735))))

(declare-fun order!22851 () Int)

(declare-fun dynLambda!18584 (Int Int) Int)

(assert (=> b!4078913 (< (dynLambda!18584 order!22851 (toChars!9469 (transformation!7042 r!4213))) (dynLambda!18583 order!22849 lambda!127735))))

(declare-fun dynLambda!18585 (Int TokenValue!7272) BalanceConc!26100)

(assert (=> d!1211640 (= (list!16240 (dynLambda!18585 (toChars!9469 (transformation!7042 r!4213)) (dynLambda!18581 (toValue!9610 (transformation!7042 r!4213)) lt!1459362))) (list!16240 lt!1459362))))

(declare-fun lt!1459424 () Unit!63211)

(declare-fun ForallOf!854 (Int BalanceConc!26100) Unit!63211)

(assert (=> d!1211640 (= lt!1459424 (ForallOf!854 lambda!127735 lt!1459362))))

(assert (=> d!1211640 (= (lemmaSemiInverse!2009 (transformation!7042 r!4213) lt!1459362) lt!1459424)))

(declare-fun b_lambda!119217 () Bool)

(assert (=> (not b_lambda!119217) (not d!1211640)))

(declare-fun t!337542 () Bool)

(declare-fun tb!244965 () Bool)

(assert (=> (and b!4078744 (= (toChars!9469 (transformation!7042 r!4213)) (toChars!9469 (transformation!7042 r!4213))) t!337542) tb!244965))

(declare-fun e!2531639 () Bool)

(declare-fun b!4078932 () Bool)

(declare-fun tp!1234749 () Bool)

(declare-fun inv!58334 (Conc!13253) Bool)

(assert (=> b!4078932 (= e!2531639 (and (inv!58334 (c!703469 (dynLambda!18585 (toChars!9469 (transformation!7042 r!4213)) (dynLambda!18581 (toValue!9610 (transformation!7042 r!4213)) lt!1459362)))) tp!1234749))))

(declare-fun result!297096 () Bool)

(declare-fun inv!58335 (BalanceConc!26100) Bool)

(assert (=> tb!244965 (= result!297096 (and (inv!58335 (dynLambda!18585 (toChars!9469 (transformation!7042 r!4213)) (dynLambda!18581 (toValue!9610 (transformation!7042 r!4213)) lt!1459362))) e!2531639))))

(assert (= tb!244965 b!4078932))

(declare-fun m!4686861 () Bool)

(assert (=> b!4078932 m!4686861))

(declare-fun m!4686863 () Bool)

(assert (=> tb!244965 m!4686863))

(assert (=> d!1211640 t!337542))

(declare-fun b_and!313679 () Bool)

(assert (= b_and!313669 (and (=> t!337542 result!297096) b_and!313679)))

(declare-fun tb!244967 () Bool)

(declare-fun t!337544 () Bool)

(assert (=> (and b!4078746 (= (toChars!9469 (transformation!7042 (h!49097 rules!3870))) (toChars!9469 (transformation!7042 r!4213))) t!337544) tb!244967))

(declare-fun result!297100 () Bool)

(assert (= result!297100 result!297096))

(assert (=> d!1211640 t!337544))

(declare-fun b_and!313681 () Bool)

(assert (= b_and!313673 (and (=> t!337544 result!297100) b_and!313681)))

(declare-fun b_lambda!119219 () Bool)

(assert (=> (not b_lambda!119219) (not d!1211640)))

(assert (=> d!1211640 t!337538))

(declare-fun b_and!313683 () Bool)

(assert (= b_and!313675 (and (=> t!337538 result!297090) b_and!313683)))

(assert (=> d!1211640 t!337540))

(declare-fun b_and!313685 () Bool)

(assert (= b_and!313677 (and (=> t!337540 result!297094) b_and!313685)))

(assert (=> d!1211640 m!4686839))

(declare-fun m!4686865 () Bool)

(assert (=> d!1211640 m!4686865))

(declare-fun m!4686867 () Bool)

(assert (=> d!1211640 m!4686867))

(assert (=> d!1211640 m!4686839))

(assert (=> d!1211640 m!4686865))

(declare-fun m!4686869 () Bool)

(assert (=> d!1211640 m!4686869))

(declare-fun m!4686871 () Bool)

(assert (=> d!1211640 m!4686871))

(assert (=> b!4078745 d!1211640))

(declare-fun b!4079014 () Bool)

(declare-fun res!1666354 () Bool)

(declare-fun e!2531684 () Bool)

(assert (=> b!4079014 (=> (not res!1666354) (not e!2531684))))

(declare-fun lt!1459457 () Option!9450)

(assert (=> b!4079014 (= res!1666354 (< (size!32626 (_2!24457 (get!14321 lt!1459457))) (size!32626 input!3411)))))

(declare-fun b!4079015 () Bool)

(assert (=> b!4079015 (= e!2531684 (contains!8711 rules!3870 (rule!10156 (_1!24457 (get!14321 lt!1459457)))))))

(declare-fun b!4079016 () Bool)

(declare-fun res!1666356 () Bool)

(assert (=> b!4079016 (=> (not res!1666356) (not e!2531684))))

(assert (=> b!4079016 (= res!1666356 (matchR!5892 (regex!7042 (rule!10156 (_1!24457 (get!14321 lt!1459457)))) (list!16240 (charsOf!4824 (_1!24457 (get!14321 lt!1459457))))))))

(declare-fun b!4079017 () Bool)

(declare-fun e!2531682 () Option!9450)

(declare-fun lt!1459458 () Option!9450)

(declare-fun lt!1459460 () Option!9450)

(assert (=> b!4079017 (= e!2531682 (ite (and ((_ is None!9449) lt!1459458) ((_ is None!9449) lt!1459460)) None!9449 (ite ((_ is None!9449) lt!1459460) lt!1459458 (ite ((_ is None!9449) lt!1459458) lt!1459460 (ite (>= (size!32625 (_1!24457 (v!39903 lt!1459458))) (size!32625 (_1!24457 (v!39903 lt!1459460)))) lt!1459458 lt!1459460)))))))

(declare-fun call!288557 () Option!9450)

(assert (=> b!4079017 (= lt!1459458 call!288557)))

(assert (=> b!4079017 (= lt!1459460 (maxPrefix!3923 thiss!26199 (t!337536 rules!3870) input!3411))))

(declare-fun b!4079018 () Bool)

(declare-fun e!2531683 () Bool)

(assert (=> b!4079018 (= e!2531683 e!2531684)))

(declare-fun res!1666355 () Bool)

(assert (=> b!4079018 (=> (not res!1666355) (not e!2531684))))

(declare-fun isDefined!7160 (Option!9450) Bool)

(assert (=> b!4079018 (= res!1666355 (isDefined!7160 lt!1459457))))

(declare-fun b!4079019 () Bool)

(declare-fun res!1666351 () Bool)

(assert (=> b!4079019 (=> (not res!1666351) (not e!2531684))))

(assert (=> b!4079019 (= res!1666351 (= (list!16240 (charsOf!4824 (_1!24457 (get!14321 lt!1459457)))) (originalCharacters!7636 (_1!24457 (get!14321 lt!1459457)))))))

(declare-fun d!1211654 () Bool)

(assert (=> d!1211654 e!2531683))

(declare-fun res!1666350 () Bool)

(assert (=> d!1211654 (=> res!1666350 e!2531683)))

(assert (=> d!1211654 (= res!1666350 (isEmpty!26092 lt!1459457))))

(assert (=> d!1211654 (= lt!1459457 e!2531682)))

(declare-fun c!703501 () Bool)

(assert (=> d!1211654 (= c!703501 (and ((_ is Cons!43677) rules!3870) ((_ is Nil!43677) (t!337536 rules!3870))))))

(declare-fun lt!1459456 () Unit!63211)

(declare-fun lt!1459459 () Unit!63211)

(assert (=> d!1211654 (= lt!1459456 lt!1459459)))

(declare-fun isPrefix!4111 (List!43800 List!43800) Bool)

(assert (=> d!1211654 (isPrefix!4111 input!3411 input!3411)))

(declare-fun lemmaIsPrefixRefl!2662 (List!43800 List!43800) Unit!63211)

(assert (=> d!1211654 (= lt!1459459 (lemmaIsPrefixRefl!2662 input!3411 input!3411))))

(assert (=> d!1211654 (rulesValidInductive!2591 thiss!26199 rules!3870)))

(assert (=> d!1211654 (= (maxPrefix!3923 thiss!26199 rules!3870 input!3411) lt!1459457)))

(declare-fun b!4079020 () Bool)

(declare-fun res!1666353 () Bool)

(assert (=> b!4079020 (=> (not res!1666353) (not e!2531684))))

(assert (=> b!4079020 (= res!1666353 (= (value!221349 (_1!24457 (get!14321 lt!1459457))) (apply!10225 (transformation!7042 (rule!10156 (_1!24457 (get!14321 lt!1459457)))) (seqFromList!5259 (originalCharacters!7636 (_1!24457 (get!14321 lt!1459457)))))))))

(declare-fun bm!288552 () Bool)

(assert (=> bm!288552 (= call!288557 (maxPrefixOneRule!2917 thiss!26199 (h!49097 rules!3870) input!3411))))

(declare-fun b!4079021 () Bool)

(assert (=> b!4079021 (= e!2531682 call!288557)))

(declare-fun b!4079022 () Bool)

(declare-fun res!1666352 () Bool)

(assert (=> b!4079022 (=> (not res!1666352) (not e!2531684))))

(assert (=> b!4079022 (= res!1666352 (= (++!11448 (list!16240 (charsOf!4824 (_1!24457 (get!14321 lt!1459457)))) (_2!24457 (get!14321 lt!1459457))) input!3411))))

(assert (= (and d!1211654 c!703501) b!4079021))

(assert (= (and d!1211654 (not c!703501)) b!4079017))

(assert (= (or b!4079021 b!4079017) bm!288552))

(assert (= (and d!1211654 (not res!1666350)) b!4079018))

(assert (= (and b!4079018 res!1666355) b!4079019))

(assert (= (and b!4079019 res!1666351) b!4079014))

(assert (= (and b!4079014 res!1666354) b!4079022))

(assert (= (and b!4079022 res!1666352) b!4079020))

(assert (= (and b!4079020 res!1666353) b!4079016))

(assert (= (and b!4079016 res!1666356) b!4079015))

(declare-fun m!4686927 () Bool)

(assert (=> b!4079015 m!4686927))

(declare-fun m!4686929 () Bool)

(assert (=> b!4079015 m!4686929))

(declare-fun m!4686931 () Bool)

(assert (=> b!4079017 m!4686931))

(assert (=> b!4079016 m!4686927))

(declare-fun m!4686933 () Bool)

(assert (=> b!4079016 m!4686933))

(assert (=> b!4079016 m!4686933))

(declare-fun m!4686935 () Bool)

(assert (=> b!4079016 m!4686935))

(assert (=> b!4079016 m!4686935))

(declare-fun m!4686937 () Bool)

(assert (=> b!4079016 m!4686937))

(declare-fun m!4686939 () Bool)

(assert (=> b!4079018 m!4686939))

(assert (=> b!4079022 m!4686927))

(assert (=> b!4079022 m!4686933))

(assert (=> b!4079022 m!4686933))

(assert (=> b!4079022 m!4686935))

(assert (=> b!4079022 m!4686935))

(declare-fun m!4686941 () Bool)

(assert (=> b!4079022 m!4686941))

(assert (=> b!4079014 m!4686927))

(declare-fun m!4686943 () Bool)

(assert (=> b!4079014 m!4686943))

(assert (=> b!4079014 m!4686785))

(declare-fun m!4686945 () Bool)

(assert (=> d!1211654 m!4686945))

(declare-fun m!4686947 () Bool)

(assert (=> d!1211654 m!4686947))

(declare-fun m!4686949 () Bool)

(assert (=> d!1211654 m!4686949))

(declare-fun m!4686951 () Bool)

(assert (=> d!1211654 m!4686951))

(assert (=> b!4079020 m!4686927))

(declare-fun m!4686953 () Bool)

(assert (=> b!4079020 m!4686953))

(assert (=> b!4079020 m!4686953))

(declare-fun m!4686955 () Bool)

(assert (=> b!4079020 m!4686955))

(assert (=> bm!288552 m!4686653))

(assert (=> b!4079019 m!4686927))

(assert (=> b!4079019 m!4686933))

(assert (=> b!4079019 m!4686933))

(assert (=> b!4079019 m!4686935))

(assert (=> b!4078745 d!1211654))

(declare-fun d!1211664 () Bool)

(declare-fun lt!1459463 () Int)

(assert (=> d!1211664 (>= lt!1459463 0)))

(declare-fun e!2531687 () Int)

(assert (=> d!1211664 (= lt!1459463 e!2531687)))

(declare-fun c!703504 () Bool)

(assert (=> d!1211664 (= c!703504 ((_ is Nil!43676) p!2988))))

(assert (=> d!1211664 (= (size!32626 p!2988) lt!1459463)))

(declare-fun b!4079027 () Bool)

(assert (=> b!4079027 (= e!2531687 0)))

(declare-fun b!4079028 () Bool)

(assert (=> b!4079028 (= e!2531687 (+ 1 (size!32626 (t!337535 p!2988))))))

(assert (= (and d!1211664 c!703504) b!4079027))

(assert (= (and d!1211664 (not c!703504)) b!4079028))

(declare-fun m!4686957 () Bool)

(assert (=> b!4079028 m!4686957))

(assert (=> b!4078745 d!1211664))

(declare-fun d!1211666 () Bool)

(declare-fun fromListB!2402 (List!43800) BalanceConc!26100)

(assert (=> d!1211666 (= (seqFromList!5259 p!2988) (fromListB!2402 p!2988))))

(declare-fun bs!592809 () Bool)

(assert (= bs!592809 d!1211666))

(declare-fun m!4686959 () Bool)

(assert (=> bs!592809 m!4686959))

(assert (=> b!4078745 d!1211666))

(declare-fun d!1211668 () Bool)

(assert (=> d!1211668 (= (inv!58331 (tag!7902 (h!49097 rules!3870))) (= (mod (str.len (value!221348 (tag!7902 (h!49097 rules!3870)))) 2) 0))))

(assert (=> b!4078734 d!1211668))

(declare-fun d!1211670 () Bool)

(declare-fun res!1666359 () Bool)

(declare-fun e!2531690 () Bool)

(assert (=> d!1211670 (=> (not res!1666359) (not e!2531690))))

(declare-fun semiInverseModEq!3016 (Int Int) Bool)

(assert (=> d!1211670 (= res!1666359 (semiInverseModEq!3016 (toChars!9469 (transformation!7042 (h!49097 rules!3870))) (toValue!9610 (transformation!7042 (h!49097 rules!3870)))))))

(assert (=> d!1211670 (= (inv!58333 (transformation!7042 (h!49097 rules!3870))) e!2531690)))

(declare-fun b!4079031 () Bool)

(declare-fun equivClasses!2915 (Int Int) Bool)

(assert (=> b!4079031 (= e!2531690 (equivClasses!2915 (toChars!9469 (transformation!7042 (h!49097 rules!3870))) (toValue!9610 (transformation!7042 (h!49097 rules!3870)))))))

(assert (= (and d!1211670 res!1666359) b!4079031))

(declare-fun m!4686961 () Bool)

(assert (=> d!1211670 m!4686961))

(declare-fun m!4686963 () Bool)

(assert (=> b!4079031 m!4686963))

(assert (=> b!4078734 d!1211670))

(declare-fun d!1211672 () Bool)

(assert (=> d!1211672 (= (get!14321 lt!1459366) (v!39903 lt!1459366))))

(assert (=> b!4078733 d!1211672))

(declare-fun b!4079060 () Bool)

(declare-fun e!2531710 () Bool)

(declare-fun nullable!4208 (Regex!11947) Bool)

(assert (=> b!4079060 (= e!2531710 (nullable!4208 (regex!7042 r!4213)))))

(declare-fun d!1211674 () Bool)

(declare-fun e!2531708 () Bool)

(assert (=> d!1211674 e!2531708))

(declare-fun c!703513 () Bool)

(assert (=> d!1211674 (= c!703513 ((_ is EmptyExpr!11947) (regex!7042 r!4213)))))

(declare-fun lt!1459466 () Bool)

(assert (=> d!1211674 (= lt!1459466 e!2531710)))

(declare-fun c!703511 () Bool)

(assert (=> d!1211674 (= c!703511 (isEmpty!26093 p!2988))))

(declare-fun validRegex!5408 (Regex!11947) Bool)

(assert (=> d!1211674 (validRegex!5408 (regex!7042 r!4213))))

(assert (=> d!1211674 (= (matchR!5892 (regex!7042 r!4213) p!2988) lt!1459466)))

(declare-fun b!4079061 () Bool)

(declare-fun res!1666376 () Bool)

(declare-fun e!2531711 () Bool)

(assert (=> b!4079061 (=> (not res!1666376) (not e!2531711))))

(declare-fun call!288560 () Bool)

(assert (=> b!4079061 (= res!1666376 (not call!288560))))

(declare-fun b!4079062 () Bool)

(declare-fun e!2531707 () Bool)

(declare-fun e!2531709 () Bool)

(assert (=> b!4079062 (= e!2531707 e!2531709)))

(declare-fun res!1666381 () Bool)

(assert (=> b!4079062 (=> (not res!1666381) (not e!2531709))))

(assert (=> b!4079062 (= res!1666381 (not lt!1459466))))

(declare-fun b!4079063 () Bool)

(declare-fun e!2531706 () Bool)

(assert (=> b!4079063 (= e!2531709 e!2531706)))

(declare-fun res!1666380 () Bool)

(assert (=> b!4079063 (=> res!1666380 e!2531706)))

(assert (=> b!4079063 (= res!1666380 call!288560)))

(declare-fun b!4079064 () Bool)

(assert (=> b!4079064 (= e!2531708 (= lt!1459466 call!288560))))

(declare-fun b!4079065 () Bool)

(declare-fun e!2531705 () Bool)

(assert (=> b!4079065 (= e!2531705 (not lt!1459466))))

(declare-fun bm!288555 () Bool)

(assert (=> bm!288555 (= call!288560 (isEmpty!26093 p!2988))))

(declare-fun b!4079066 () Bool)

(declare-fun head!8619 (List!43800) C!24080)

(assert (=> b!4079066 (= e!2531706 (not (= (head!8619 p!2988) (c!703468 (regex!7042 r!4213)))))))

(declare-fun b!4079067 () Bool)

(assert (=> b!4079067 (= e!2531708 e!2531705)))

(declare-fun c!703512 () Bool)

(assert (=> b!4079067 (= c!703512 ((_ is EmptyLang!11947) (regex!7042 r!4213)))))

(declare-fun b!4079068 () Bool)

(declare-fun res!1666382 () Bool)

(assert (=> b!4079068 (=> (not res!1666382) (not e!2531711))))

(declare-fun tail!6353 (List!43800) List!43800)

(assert (=> b!4079068 (= res!1666382 (isEmpty!26093 (tail!6353 p!2988)))))

(declare-fun b!4079069 () Bool)

(declare-fun res!1666378 () Bool)

(assert (=> b!4079069 (=> res!1666378 e!2531706)))

(assert (=> b!4079069 (= res!1666378 (not (isEmpty!26093 (tail!6353 p!2988))))))

(declare-fun b!4079070 () Bool)

(declare-fun res!1666377 () Bool)

(assert (=> b!4079070 (=> res!1666377 e!2531707)))

(assert (=> b!4079070 (= res!1666377 (not ((_ is ElementMatch!11947) (regex!7042 r!4213))))))

(assert (=> b!4079070 (= e!2531705 e!2531707)))

(declare-fun b!4079071 () Bool)

(assert (=> b!4079071 (= e!2531711 (= (head!8619 p!2988) (c!703468 (regex!7042 r!4213))))))

(declare-fun b!4079072 () Bool)

(declare-fun res!1666379 () Bool)

(assert (=> b!4079072 (=> res!1666379 e!2531707)))

(assert (=> b!4079072 (= res!1666379 e!2531711)))

(declare-fun res!1666383 () Bool)

(assert (=> b!4079072 (=> (not res!1666383) (not e!2531711))))

(assert (=> b!4079072 (= res!1666383 lt!1459466)))

(declare-fun b!4079073 () Bool)

(declare-fun derivativeStep!3609 (Regex!11947 C!24080) Regex!11947)

(assert (=> b!4079073 (= e!2531710 (matchR!5892 (derivativeStep!3609 (regex!7042 r!4213) (head!8619 p!2988)) (tail!6353 p!2988)))))

(assert (= (and d!1211674 c!703511) b!4079060))

(assert (= (and d!1211674 (not c!703511)) b!4079073))

(assert (= (and d!1211674 c!703513) b!4079064))

(assert (= (and d!1211674 (not c!703513)) b!4079067))

(assert (= (and b!4079067 c!703512) b!4079065))

(assert (= (and b!4079067 (not c!703512)) b!4079070))

(assert (= (and b!4079070 (not res!1666377)) b!4079072))

(assert (= (and b!4079072 res!1666383) b!4079061))

(assert (= (and b!4079061 res!1666376) b!4079068))

(assert (= (and b!4079068 res!1666382) b!4079071))

(assert (= (and b!4079072 (not res!1666379)) b!4079062))

(assert (= (and b!4079062 res!1666381) b!4079063))

(assert (= (and b!4079063 (not res!1666380)) b!4079069))

(assert (= (and b!4079069 (not res!1666378)) b!4079066))

(assert (= (or b!4079064 b!4079061 b!4079063) bm!288555))

(assert (=> d!1211674 m!4686659))

(declare-fun m!4686965 () Bool)

(assert (=> d!1211674 m!4686965))

(declare-fun m!4686967 () Bool)

(assert (=> b!4079066 m!4686967))

(declare-fun m!4686969 () Bool)

(assert (=> b!4079060 m!4686969))

(declare-fun m!4686971 () Bool)

(assert (=> b!4079068 m!4686971))

(assert (=> b!4079068 m!4686971))

(declare-fun m!4686973 () Bool)

(assert (=> b!4079068 m!4686973))

(assert (=> b!4079073 m!4686967))

(assert (=> b!4079073 m!4686967))

(declare-fun m!4686975 () Bool)

(assert (=> b!4079073 m!4686975))

(assert (=> b!4079073 m!4686971))

(assert (=> b!4079073 m!4686975))

(assert (=> b!4079073 m!4686971))

(declare-fun m!4686977 () Bool)

(assert (=> b!4079073 m!4686977))

(assert (=> bm!288555 m!4686659))

(assert (=> b!4079069 m!4686971))

(assert (=> b!4079069 m!4686971))

(assert (=> b!4079069 m!4686973))

(assert (=> b!4079071 m!4686967))

(assert (=> b!4078737 d!1211674))

(declare-fun d!1211676 () Bool)

(declare-fun res!1666388 () Bool)

(declare-fun e!2531714 () Bool)

(assert (=> d!1211676 (=> (not res!1666388) (not e!2531714))))

(assert (=> d!1211676 (= res!1666388 (validRegex!5408 (regex!7042 r!4213)))))

(assert (=> d!1211676 (= (ruleValid!2966 thiss!26199 r!4213) e!2531714)))

(declare-fun b!4079078 () Bool)

(declare-fun res!1666389 () Bool)

(assert (=> b!4079078 (=> (not res!1666389) (not e!2531714))))

(assert (=> b!4079078 (= res!1666389 (not (nullable!4208 (regex!7042 r!4213))))))

(declare-fun b!4079079 () Bool)

(assert (=> b!4079079 (= e!2531714 (not (= (tag!7902 r!4213) (String!50111 ""))))))

(assert (= (and d!1211676 res!1666388) b!4079078))

(assert (= (and b!4079078 res!1666389) b!4079079))

(assert (=> d!1211676 m!4686965))

(assert (=> b!4079078 m!4686969))

(assert (=> b!4078737 d!1211676))

(declare-fun d!1211678 () Bool)

(assert (=> d!1211678 (ruleValid!2966 thiss!26199 r!4213)))

(declare-fun lt!1459469 () Unit!63211)

(declare-fun choose!24904 (LexerInterface!6631 Rule!13884 List!43801) Unit!63211)

(assert (=> d!1211678 (= lt!1459469 (choose!24904 thiss!26199 r!4213 rules!3870))))

(assert (=> d!1211678 (contains!8711 rules!3870 r!4213)))

(assert (=> d!1211678 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2034 thiss!26199 r!4213 rules!3870) lt!1459469)))

(declare-fun bs!592810 () Bool)

(assert (= bs!592810 d!1211678))

(assert (=> bs!592810 m!4686675))

(declare-fun m!4686979 () Bool)

(assert (=> bs!592810 m!4686979))

(assert (=> bs!592810 m!4686637))

(assert (=> b!4078737 d!1211678))

(declare-fun d!1211680 () Bool)

(assert (=> d!1211680 true))

(declare-fun lt!1459472 () Bool)

(declare-fun lambda!127741 () Int)

(declare-fun forall!8398 (List!43801 Int) Bool)

(assert (=> d!1211680 (= lt!1459472 (forall!8398 (t!337536 rules!3870) lambda!127741))))

(declare-fun e!2531720 () Bool)

(assert (=> d!1211680 (= lt!1459472 e!2531720)))

(declare-fun res!1666395 () Bool)

(assert (=> d!1211680 (=> res!1666395 e!2531720)))

(assert (=> d!1211680 (= res!1666395 (not ((_ is Cons!43677) (t!337536 rules!3870))))))

(assert (=> d!1211680 (= (rulesValidInductive!2591 thiss!26199 (t!337536 rules!3870)) lt!1459472)))

(declare-fun b!4079084 () Bool)

(declare-fun e!2531719 () Bool)

(assert (=> b!4079084 (= e!2531720 e!2531719)))

(declare-fun res!1666394 () Bool)

(assert (=> b!4079084 (=> (not res!1666394) (not e!2531719))))

(assert (=> b!4079084 (= res!1666394 (ruleValid!2966 thiss!26199 (h!49097 (t!337536 rules!3870))))))

(declare-fun b!4079085 () Bool)

(assert (=> b!4079085 (= e!2531719 (rulesValidInductive!2591 thiss!26199 (t!337536 (t!337536 rules!3870))))))

(assert (= (and d!1211680 (not res!1666395)) b!4079084))

(assert (= (and b!4079084 res!1666394) b!4079085))

(declare-fun m!4686981 () Bool)

(assert (=> d!1211680 m!4686981))

(declare-fun m!4686983 () Bool)

(assert (=> b!4079084 m!4686983))

(declare-fun m!4686985 () Bool)

(assert (=> b!4079085 m!4686985))

(assert (=> b!4078748 d!1211680))

(declare-fun d!1211682 () Bool)

(assert (=> d!1211682 (= (inv!58331 (tag!7902 r!4213)) (= (mod (str.len (value!221348 (tag!7902 r!4213))) 2) 0))))

(assert (=> b!4078747 d!1211682))

(declare-fun d!1211684 () Bool)

(declare-fun res!1666396 () Bool)

(declare-fun e!2531721 () Bool)

(assert (=> d!1211684 (=> (not res!1666396) (not e!2531721))))

(assert (=> d!1211684 (= res!1666396 (semiInverseModEq!3016 (toChars!9469 (transformation!7042 r!4213)) (toValue!9610 (transformation!7042 r!4213))))))

(assert (=> d!1211684 (= (inv!58333 (transformation!7042 r!4213)) e!2531721)))

(declare-fun b!4079088 () Bool)

(assert (=> b!4079088 (= e!2531721 (equivClasses!2915 (toChars!9469 (transformation!7042 r!4213)) (toValue!9610 (transformation!7042 r!4213))))))

(assert (= (and d!1211684 res!1666396) b!4079088))

(declare-fun m!4686987 () Bool)

(assert (=> d!1211684 m!4686987))

(declare-fun m!4686989 () Bool)

(assert (=> b!4079088 m!4686989))

(assert (=> b!4078747 d!1211684))

(declare-fun d!1211686 () Bool)

(declare-fun lt!1459475 () Bool)

(declare-fun content!6695 (List!43801) (InoxSet Rule!13884))

(assert (=> d!1211686 (= lt!1459475 (select (content!6695 rules!3870) r!4213))))

(declare-fun e!2531726 () Bool)

(assert (=> d!1211686 (= lt!1459475 e!2531726)))

(declare-fun res!1666402 () Bool)

(assert (=> d!1211686 (=> (not res!1666402) (not e!2531726))))

(assert (=> d!1211686 (= res!1666402 ((_ is Cons!43677) rules!3870))))

(assert (=> d!1211686 (= (contains!8711 rules!3870 r!4213) lt!1459475)))

(declare-fun b!4079093 () Bool)

(declare-fun e!2531727 () Bool)

(assert (=> b!4079093 (= e!2531726 e!2531727)))

(declare-fun res!1666401 () Bool)

(assert (=> b!4079093 (=> res!1666401 e!2531727)))

(assert (=> b!4079093 (= res!1666401 (= (h!49097 rules!3870) r!4213))))

(declare-fun b!4079094 () Bool)

(assert (=> b!4079094 (= e!2531727 (contains!8711 (t!337536 rules!3870) r!4213))))

(assert (= (and d!1211686 res!1666402) b!4079093))

(assert (= (and b!4079093 (not res!1666401)) b!4079094))

(declare-fun m!4686991 () Bool)

(assert (=> d!1211686 m!4686991))

(declare-fun m!4686993 () Bool)

(assert (=> d!1211686 m!4686993))

(declare-fun m!4686995 () Bool)

(assert (=> b!4079094 m!4686995))

(assert (=> b!4078736 d!1211686))

(declare-fun b!4079099 () Bool)

(declare-fun e!2531730 () Bool)

(declare-fun tp!1234792 () Bool)

(assert (=> b!4079099 (= e!2531730 (and tp_is_empty!20897 tp!1234792))))

(assert (=> b!4078735 (= tp!1234740 e!2531730)))

(assert (= (and b!4078735 ((_ is Cons!43676) (t!337535 suffix!1518))) b!4079099))

(declare-fun b!4079111 () Bool)

(declare-fun e!2531733 () Bool)

(declare-fun tp!1234804 () Bool)

(declare-fun tp!1234805 () Bool)

(assert (=> b!4079111 (= e!2531733 (and tp!1234804 tp!1234805))))

(assert (=> b!4078734 (= tp!1234744 e!2531733)))

(declare-fun b!4079110 () Bool)

(assert (=> b!4079110 (= e!2531733 tp_is_empty!20897)))

(declare-fun b!4079113 () Bool)

(declare-fun tp!1234803 () Bool)

(declare-fun tp!1234806 () Bool)

(assert (=> b!4079113 (= e!2531733 (and tp!1234803 tp!1234806))))

(declare-fun b!4079112 () Bool)

(declare-fun tp!1234807 () Bool)

(assert (=> b!4079112 (= e!2531733 tp!1234807)))

(assert (= (and b!4078734 ((_ is ElementMatch!11947) (regex!7042 (h!49097 rules!3870)))) b!4079110))

(assert (= (and b!4078734 ((_ is Concat!19220) (regex!7042 (h!49097 rules!3870)))) b!4079111))

(assert (= (and b!4078734 ((_ is Star!11947) (regex!7042 (h!49097 rules!3870)))) b!4079112))

(assert (= (and b!4078734 ((_ is Union!11947) (regex!7042 (h!49097 rules!3870)))) b!4079113))

(declare-fun b!4079124 () Bool)

(declare-fun b_free!113781 () Bool)

(declare-fun b_next!114485 () Bool)

(assert (=> b!4079124 (= b_free!113781 (not b_next!114485))))

(declare-fun tb!244981 () Bool)

(declare-fun t!337559 () Bool)

(assert (=> (and b!4079124 (= (toValue!9610 (transformation!7042 (h!49097 (t!337536 rules!3870)))) (toValue!9610 (transformation!7042 r!4213))) t!337559) tb!244981))

(declare-fun result!297130 () Bool)

(assert (= result!297130 result!297090))

(assert (=> d!1211638 t!337559))

(assert (=> d!1211640 t!337559))

(declare-fun b_and!313703 () Bool)

(declare-fun tp!1234816 () Bool)

(assert (=> b!4079124 (= tp!1234816 (and (=> t!337559 result!297130) b_and!313703))))

(declare-fun b_free!113783 () Bool)

(declare-fun b_next!114487 () Bool)

(assert (=> b!4079124 (= b_free!113783 (not b_next!114487))))

(declare-fun tb!244983 () Bool)

(declare-fun t!337561 () Bool)

(assert (=> (and b!4079124 (= (toChars!9469 (transformation!7042 (h!49097 (t!337536 rules!3870)))) (toChars!9469 (transformation!7042 r!4213))) t!337561) tb!244983))

(declare-fun result!297132 () Bool)

(assert (= result!297132 result!297096))

(assert (=> d!1211640 t!337561))

(declare-fun tp!1234819 () Bool)

(declare-fun b_and!313705 () Bool)

(assert (=> b!4079124 (= tp!1234819 (and (=> t!337561 result!297132) b_and!313705))))

(declare-fun e!2531743 () Bool)

(assert (=> b!4079124 (= e!2531743 (and tp!1234816 tp!1234819))))

(declare-fun b!4079123 () Bool)

(declare-fun tp!1234817 () Bool)

(declare-fun e!2531745 () Bool)

(assert (=> b!4079123 (= e!2531745 (and tp!1234817 (inv!58331 (tag!7902 (h!49097 (t!337536 rules!3870)))) (inv!58333 (transformation!7042 (h!49097 (t!337536 rules!3870)))) e!2531743))))

(declare-fun b!4079122 () Bool)

(declare-fun e!2531742 () Bool)

(declare-fun tp!1234818 () Bool)

(assert (=> b!4079122 (= e!2531742 (and e!2531745 tp!1234818))))

(assert (=> b!4078750 (= tp!1234741 e!2531742)))

(assert (= b!4079123 b!4079124))

(assert (= b!4079122 b!4079123))

(assert (= (and b!4078750 ((_ is Cons!43677) (t!337536 rules!3870))) b!4079122))

(declare-fun m!4686997 () Bool)

(assert (=> b!4079123 m!4686997))

(declare-fun m!4686999 () Bool)

(assert (=> b!4079123 m!4686999))

(declare-fun b!4079125 () Bool)

(declare-fun e!2531746 () Bool)

(declare-fun tp!1234820 () Bool)

(assert (=> b!4079125 (= e!2531746 (and tp_is_empty!20897 tp!1234820))))

(assert (=> b!4078738 (= tp!1234738 e!2531746)))

(assert (= (and b!4078738 ((_ is Cons!43676) (t!337535 p!2988))) b!4079125))

(declare-fun b!4079127 () Bool)

(declare-fun e!2531747 () Bool)

(declare-fun tp!1234822 () Bool)

(declare-fun tp!1234823 () Bool)

(assert (=> b!4079127 (= e!2531747 (and tp!1234822 tp!1234823))))

(assert (=> b!4078747 (= tp!1234739 e!2531747)))

(declare-fun b!4079126 () Bool)

(assert (=> b!4079126 (= e!2531747 tp_is_empty!20897)))

(declare-fun b!4079129 () Bool)

(declare-fun tp!1234821 () Bool)

(declare-fun tp!1234824 () Bool)

(assert (=> b!4079129 (= e!2531747 (and tp!1234821 tp!1234824))))

(declare-fun b!4079128 () Bool)

(declare-fun tp!1234825 () Bool)

(assert (=> b!4079128 (= e!2531747 tp!1234825)))

(assert (= (and b!4078747 ((_ is ElementMatch!11947) (regex!7042 r!4213))) b!4079126))

(assert (= (and b!4078747 ((_ is Concat!19220) (regex!7042 r!4213))) b!4079127))

(assert (= (and b!4078747 ((_ is Star!11947) (regex!7042 r!4213))) b!4079128))

(assert (= (and b!4078747 ((_ is Union!11947) (regex!7042 r!4213))) b!4079129))

(declare-fun b!4079130 () Bool)

(declare-fun e!2531748 () Bool)

(declare-fun tp!1234826 () Bool)

(assert (=> b!4079130 (= e!2531748 (and tp_is_empty!20897 tp!1234826))))

(assert (=> b!4078741 (= tp!1234745 e!2531748)))

(assert (= (and b!4078741 ((_ is Cons!43676) (t!337535 input!3411))) b!4079130))

(declare-fun b_lambda!119233 () Bool)

(assert (= b_lambda!119215 (or (and b!4078744 b_free!113769) (and b!4078746 b_free!113773 (= (toValue!9610 (transformation!7042 (h!49097 rules!3870))) (toValue!9610 (transformation!7042 r!4213)))) (and b!4079124 b_free!113781 (= (toValue!9610 (transformation!7042 (h!49097 (t!337536 rules!3870)))) (toValue!9610 (transformation!7042 r!4213)))) b_lambda!119233)))

(declare-fun b_lambda!119235 () Bool)

(assert (= b_lambda!119219 (or (and b!4078744 b_free!113769) (and b!4078746 b_free!113773 (= (toValue!9610 (transformation!7042 (h!49097 rules!3870))) (toValue!9610 (transformation!7042 r!4213)))) (and b!4079124 b_free!113781 (= (toValue!9610 (transformation!7042 (h!49097 (t!337536 rules!3870)))) (toValue!9610 (transformation!7042 r!4213)))) b_lambda!119235)))

(declare-fun b_lambda!119237 () Bool)

(assert (= b_lambda!119217 (or (and b!4078744 b_free!113771) (and b!4078746 b_free!113775 (= (toChars!9469 (transformation!7042 (h!49097 rules!3870))) (toChars!9469 (transformation!7042 r!4213)))) (and b!4079124 b_free!113783 (= (toChars!9469 (transformation!7042 (h!49097 (t!337536 rules!3870)))) (toChars!9469 (transformation!7042 r!4213)))) b_lambda!119237)))

(check-sat (not b_next!114485) b_and!313703 (not d!1211678) (not b!4079128) (not b!4079094) (not bm!288552) (not b!4079071) (not b!4079073) (not b!4079066) (not b!4079099) (not b!4079084) (not b!4079068) (not b!4079015) b_and!313679 (not b!4079113) (not b!4078877) (not b!4079031) b_and!313705 (not b_lambda!119233) (not b!4079085) b_and!313685 (not tb!244961) (not b!4079022) (not b!4079060) (not tb!244965) (not d!1211676) (not b!4079111) (not d!1211596) (not b!4079017) (not d!1211654) (not b!4079020) (not b!4079127) b_and!313681 (not b!4078876) (not b!4078880) (not b!4078872) (not d!1211686) tp_is_empty!20897 (not b!4079018) (not b_next!114479) (not d!1211680) (not b!4079069) (not b!4078875) (not b!4079122) (not b!4079028) (not b_lambda!119237) (not d!1211666) (not b!4079123) (not b!4079019) (not b_lambda!119235) (not b!4078873) (not b!4079125) (not b!4079088) (not d!1211670) (not b!4079016) (not b_next!114487) (not d!1211608) (not b!4079078) (not d!1211674) (not b!4078932) (not b!4079014) (not b!4079130) (not b!4078874) (not b_next!114477) (not d!1211684) (not b!4079129) b_and!313683 (not b_next!114473) (not d!1211640) (not d!1211632) (not d!1211636) (not b!4078879) (not b!4078888) (not b!4078887) (not b!4078761) (not b!4079112) (not bm!288555) (not b!4078760) (not b_next!114475) (not d!1211634))
(check-sat (not b_next!114485) b_and!313679 b_and!313705 b_and!313685 b_and!313703 b_and!313681 (not b_next!114479) (not b_next!114487) (not b_next!114477) (not b_next!114475) b_and!313683 (not b_next!114473))
(get-model)

(declare-fun d!1211694 () Bool)

(declare-fun c!703516 () Bool)

(assert (=> d!1211694 (= c!703516 ((_ is Node!13253) (c!703469 (dynLambda!18585 (toChars!9469 (transformation!7042 r!4213)) (dynLambda!18581 (toValue!9610 (transformation!7042 r!4213)) lt!1459362)))))))

(declare-fun e!2531753 () Bool)

(assert (=> d!1211694 (= (inv!58334 (c!703469 (dynLambda!18585 (toChars!9469 (transformation!7042 r!4213)) (dynLambda!18581 (toValue!9610 (transformation!7042 r!4213)) lt!1459362)))) e!2531753)))

(declare-fun b!4079137 () Bool)

(declare-fun inv!58338 (Conc!13253) Bool)

(assert (=> b!4079137 (= e!2531753 (inv!58338 (c!703469 (dynLambda!18585 (toChars!9469 (transformation!7042 r!4213)) (dynLambda!18581 (toValue!9610 (transformation!7042 r!4213)) lt!1459362)))))))

(declare-fun b!4079138 () Bool)

(declare-fun e!2531754 () Bool)

(assert (=> b!4079138 (= e!2531753 e!2531754)))

(declare-fun res!1666405 () Bool)

(assert (=> b!4079138 (= res!1666405 (not ((_ is Leaf!20489) (c!703469 (dynLambda!18585 (toChars!9469 (transformation!7042 r!4213)) (dynLambda!18581 (toValue!9610 (transformation!7042 r!4213)) lt!1459362))))))))

(assert (=> b!4079138 (=> res!1666405 e!2531754)))

(declare-fun b!4079139 () Bool)

(declare-fun inv!58339 (Conc!13253) Bool)

(assert (=> b!4079139 (= e!2531754 (inv!58339 (c!703469 (dynLambda!18585 (toChars!9469 (transformation!7042 r!4213)) (dynLambda!18581 (toValue!9610 (transformation!7042 r!4213)) lt!1459362)))))))

(assert (= (and d!1211694 c!703516) b!4079137))

(assert (= (and d!1211694 (not c!703516)) b!4079138))

(assert (= (and b!4079138 (not res!1666405)) b!4079139))

(declare-fun m!4687003 () Bool)

(assert (=> b!4079137 m!4687003))

(declare-fun m!4687005 () Bool)

(assert (=> b!4079139 m!4687005))

(assert (=> b!4078932 d!1211694))

(declare-fun d!1211698 () Bool)

(declare-fun nullableFct!1177 (Regex!11947) Bool)

(assert (=> d!1211698 (= (nullable!4208 (regex!7042 r!4213)) (nullableFct!1177 (regex!7042 r!4213)))))

(declare-fun bs!592813 () Bool)

(assert (= bs!592813 d!1211698))

(declare-fun m!4687007 () Bool)

(assert (=> bs!592813 m!4687007))

(assert (=> b!4079078 d!1211698))

(declare-fun b!4079140 () Bool)

(declare-fun res!1666410 () Bool)

(declare-fun e!2531757 () Bool)

(assert (=> b!4079140 (=> (not res!1666410) (not e!2531757))))

(declare-fun lt!1459480 () Option!9450)

(assert (=> b!4079140 (= res!1666410 (< (size!32626 (_2!24457 (get!14321 lt!1459480))) (size!32626 input!3411)))))

(declare-fun b!4079141 () Bool)

(assert (=> b!4079141 (= e!2531757 (contains!8711 (t!337536 rules!3870) (rule!10156 (_1!24457 (get!14321 lt!1459480)))))))

(declare-fun b!4079142 () Bool)

(declare-fun res!1666412 () Bool)

(assert (=> b!4079142 (=> (not res!1666412) (not e!2531757))))

(assert (=> b!4079142 (= res!1666412 (matchR!5892 (regex!7042 (rule!10156 (_1!24457 (get!14321 lt!1459480)))) (list!16240 (charsOf!4824 (_1!24457 (get!14321 lt!1459480))))))))

(declare-fun b!4079143 () Bool)

(declare-fun e!2531755 () Option!9450)

(declare-fun lt!1459481 () Option!9450)

(declare-fun lt!1459483 () Option!9450)

(assert (=> b!4079143 (= e!2531755 (ite (and ((_ is None!9449) lt!1459481) ((_ is None!9449) lt!1459483)) None!9449 (ite ((_ is None!9449) lt!1459483) lt!1459481 (ite ((_ is None!9449) lt!1459481) lt!1459483 (ite (>= (size!32625 (_1!24457 (v!39903 lt!1459481))) (size!32625 (_1!24457 (v!39903 lt!1459483)))) lt!1459481 lt!1459483)))))))

(declare-fun call!288561 () Option!9450)

(assert (=> b!4079143 (= lt!1459481 call!288561)))

(assert (=> b!4079143 (= lt!1459483 (maxPrefix!3923 thiss!26199 (t!337536 (t!337536 rules!3870)) input!3411))))

(declare-fun b!4079144 () Bool)

(declare-fun e!2531756 () Bool)

(assert (=> b!4079144 (= e!2531756 e!2531757)))

(declare-fun res!1666411 () Bool)

(assert (=> b!4079144 (=> (not res!1666411) (not e!2531757))))

(assert (=> b!4079144 (= res!1666411 (isDefined!7160 lt!1459480))))

(declare-fun b!4079145 () Bool)

(declare-fun res!1666407 () Bool)

(assert (=> b!4079145 (=> (not res!1666407) (not e!2531757))))

(assert (=> b!4079145 (= res!1666407 (= (list!16240 (charsOf!4824 (_1!24457 (get!14321 lt!1459480)))) (originalCharacters!7636 (_1!24457 (get!14321 lt!1459480)))))))

(declare-fun d!1211700 () Bool)

(assert (=> d!1211700 e!2531756))

(declare-fun res!1666406 () Bool)

(assert (=> d!1211700 (=> res!1666406 e!2531756)))

(assert (=> d!1211700 (= res!1666406 (isEmpty!26092 lt!1459480))))

(assert (=> d!1211700 (= lt!1459480 e!2531755)))

(declare-fun c!703517 () Bool)

(assert (=> d!1211700 (= c!703517 (and ((_ is Cons!43677) (t!337536 rules!3870)) ((_ is Nil!43677) (t!337536 (t!337536 rules!3870)))))))

(declare-fun lt!1459479 () Unit!63211)

(declare-fun lt!1459482 () Unit!63211)

(assert (=> d!1211700 (= lt!1459479 lt!1459482)))

(assert (=> d!1211700 (isPrefix!4111 input!3411 input!3411)))

(assert (=> d!1211700 (= lt!1459482 (lemmaIsPrefixRefl!2662 input!3411 input!3411))))

(assert (=> d!1211700 (rulesValidInductive!2591 thiss!26199 (t!337536 rules!3870))))

(assert (=> d!1211700 (= (maxPrefix!3923 thiss!26199 (t!337536 rules!3870) input!3411) lt!1459480)))

(declare-fun b!4079146 () Bool)

(declare-fun res!1666409 () Bool)

(assert (=> b!4079146 (=> (not res!1666409) (not e!2531757))))

(assert (=> b!4079146 (= res!1666409 (= (value!221349 (_1!24457 (get!14321 lt!1459480))) (apply!10225 (transformation!7042 (rule!10156 (_1!24457 (get!14321 lt!1459480)))) (seqFromList!5259 (originalCharacters!7636 (_1!24457 (get!14321 lt!1459480)))))))))

(declare-fun bm!288556 () Bool)

(assert (=> bm!288556 (= call!288561 (maxPrefixOneRule!2917 thiss!26199 (h!49097 (t!337536 rules!3870)) input!3411))))

(declare-fun b!4079147 () Bool)

(assert (=> b!4079147 (= e!2531755 call!288561)))

(declare-fun b!4079148 () Bool)

(declare-fun res!1666408 () Bool)

(assert (=> b!4079148 (=> (not res!1666408) (not e!2531757))))

(assert (=> b!4079148 (= res!1666408 (= (++!11448 (list!16240 (charsOf!4824 (_1!24457 (get!14321 lt!1459480)))) (_2!24457 (get!14321 lt!1459480))) input!3411))))

(assert (= (and d!1211700 c!703517) b!4079147))

(assert (= (and d!1211700 (not c!703517)) b!4079143))

(assert (= (or b!4079147 b!4079143) bm!288556))

(assert (= (and d!1211700 (not res!1666406)) b!4079144))

(assert (= (and b!4079144 res!1666411) b!4079145))

(assert (= (and b!4079145 res!1666407) b!4079140))

(assert (= (and b!4079140 res!1666410) b!4079148))

(assert (= (and b!4079148 res!1666408) b!4079146))

(assert (= (and b!4079146 res!1666409) b!4079142))

(assert (= (and b!4079142 res!1666412) b!4079141))

(declare-fun m!4687009 () Bool)

(assert (=> b!4079141 m!4687009))

(declare-fun m!4687011 () Bool)

(assert (=> b!4079141 m!4687011))

(declare-fun m!4687013 () Bool)

(assert (=> b!4079143 m!4687013))

(assert (=> b!4079142 m!4687009))

(declare-fun m!4687015 () Bool)

(assert (=> b!4079142 m!4687015))

(assert (=> b!4079142 m!4687015))

(declare-fun m!4687017 () Bool)

(assert (=> b!4079142 m!4687017))

(assert (=> b!4079142 m!4687017))

(declare-fun m!4687019 () Bool)

(assert (=> b!4079142 m!4687019))

(declare-fun m!4687021 () Bool)

(assert (=> b!4079144 m!4687021))

(assert (=> b!4079148 m!4687009))

(assert (=> b!4079148 m!4687015))

(assert (=> b!4079148 m!4687015))

(assert (=> b!4079148 m!4687017))

(assert (=> b!4079148 m!4687017))

(declare-fun m!4687023 () Bool)

(assert (=> b!4079148 m!4687023))

(assert (=> b!4079140 m!4687009))

(declare-fun m!4687025 () Bool)

(assert (=> b!4079140 m!4687025))

(assert (=> b!4079140 m!4686785))

(declare-fun m!4687027 () Bool)

(assert (=> d!1211700 m!4687027))

(assert (=> d!1211700 m!4686947))

(assert (=> d!1211700 m!4686949))

(assert (=> d!1211700 m!4686671))

(assert (=> b!4079146 m!4687009))

(declare-fun m!4687029 () Bool)

(assert (=> b!4079146 m!4687029))

(assert (=> b!4079146 m!4687029))

(declare-fun m!4687031 () Bool)

(assert (=> b!4079146 m!4687031))

(declare-fun m!4687033 () Bool)

(assert (=> bm!288556 m!4687033))

(assert (=> b!4079145 m!4687009))

(assert (=> b!4079145 m!4687015))

(assert (=> b!4079145 m!4687015))

(assert (=> b!4079145 m!4687017))

(assert (=> b!4079017 d!1211700))

(declare-fun d!1211702 () Bool)

(declare-fun lt!1459484 () Bool)

(assert (=> d!1211702 (= lt!1459484 (select (content!6695 rules!3870) (rule!10156 (_1!24457 (get!14321 lt!1459457)))))))

(declare-fun e!2531760 () Bool)

(assert (=> d!1211702 (= lt!1459484 e!2531760)))

(declare-fun res!1666416 () Bool)

(assert (=> d!1211702 (=> (not res!1666416) (not e!2531760))))

(assert (=> d!1211702 (= res!1666416 ((_ is Cons!43677) rules!3870))))

(assert (=> d!1211702 (= (contains!8711 rules!3870 (rule!10156 (_1!24457 (get!14321 lt!1459457)))) lt!1459484)))

(declare-fun b!4079151 () Bool)

(declare-fun e!2531761 () Bool)

(assert (=> b!4079151 (= e!2531760 e!2531761)))

(declare-fun res!1666415 () Bool)

(assert (=> b!4079151 (=> res!1666415 e!2531761)))

(assert (=> b!4079151 (= res!1666415 (= (h!49097 rules!3870) (rule!10156 (_1!24457 (get!14321 lt!1459457)))))))

(declare-fun b!4079152 () Bool)

(assert (=> b!4079152 (= e!2531761 (contains!8711 (t!337536 rules!3870) (rule!10156 (_1!24457 (get!14321 lt!1459457)))))))

(assert (= (and d!1211702 res!1666416) b!4079151))

(assert (= (and b!4079151 (not res!1666415)) b!4079152))

(assert (=> d!1211702 m!4686991))

(declare-fun m!4687035 () Bool)

(assert (=> d!1211702 m!4687035))

(declare-fun m!4687037 () Bool)

(assert (=> b!4079152 m!4687037))

(assert (=> b!4079015 d!1211702))

(declare-fun d!1211704 () Bool)

(assert (=> d!1211704 (= (get!14321 lt!1459457) (v!39903 lt!1459457))))

(assert (=> b!4079015 d!1211704))

(declare-fun b!4079173 () Bool)

(declare-fun e!2531782 () Bool)

(declare-fun e!2531777 () Bool)

(assert (=> b!4079173 (= e!2531782 e!2531777)))

(declare-fun c!703522 () Bool)

(assert (=> b!4079173 (= c!703522 ((_ is Star!11947) (regex!7042 r!4213)))))

(declare-fun b!4079174 () Bool)

(declare-fun e!2531780 () Bool)

(assert (=> b!4079174 (= e!2531777 e!2531780)))

(declare-fun res!1666428 () Bool)

(assert (=> b!4079174 (= res!1666428 (not (nullable!4208 (reg!12276 (regex!7042 r!4213)))))))

(assert (=> b!4079174 (=> (not res!1666428) (not e!2531780))))

(declare-fun b!4079175 () Bool)

(declare-fun e!2531778 () Bool)

(declare-fun e!2531776 () Bool)

(assert (=> b!4079175 (= e!2531778 e!2531776)))

(declare-fun res!1666427 () Bool)

(assert (=> b!4079175 (=> (not res!1666427) (not e!2531776))))

(declare-fun call!288570 () Bool)

(assert (=> b!4079175 (= res!1666427 call!288570)))

(declare-fun bm!288564 () Bool)

(declare-fun call!288569 () Bool)

(declare-fun c!703523 () Bool)

(assert (=> bm!288564 (= call!288569 (validRegex!5408 (ite c!703523 (regTwo!24407 (regex!7042 r!4213)) (regTwo!24406 (regex!7042 r!4213)))))))

(declare-fun b!4079176 () Bool)

(declare-fun e!2531779 () Bool)

(assert (=> b!4079176 (= e!2531779 call!288569)))

(declare-fun bm!288565 () Bool)

(declare-fun call!288568 () Bool)

(assert (=> bm!288565 (= call!288568 (validRegex!5408 (ite c!703522 (reg!12276 (regex!7042 r!4213)) (ite c!703523 (regOne!24407 (regex!7042 r!4213)) (regOne!24406 (regex!7042 r!4213))))))))

(declare-fun b!4079177 () Bool)

(declare-fun e!2531781 () Bool)

(assert (=> b!4079177 (= e!2531777 e!2531781)))

(assert (=> b!4079177 (= c!703523 ((_ is Union!11947) (regex!7042 r!4213)))))

(declare-fun b!4079178 () Bool)

(assert (=> b!4079178 (= e!2531780 call!288568)))

(declare-fun b!4079179 () Bool)

(declare-fun res!1666431 () Bool)

(assert (=> b!4079179 (=> (not res!1666431) (not e!2531779))))

(assert (=> b!4079179 (= res!1666431 call!288570)))

(assert (=> b!4079179 (= e!2531781 e!2531779)))

(declare-fun d!1211706 () Bool)

(declare-fun res!1666430 () Bool)

(assert (=> d!1211706 (=> res!1666430 e!2531782)))

(assert (=> d!1211706 (= res!1666430 ((_ is ElementMatch!11947) (regex!7042 r!4213)))))

(assert (=> d!1211706 (= (validRegex!5408 (regex!7042 r!4213)) e!2531782)))

(declare-fun bm!288563 () Bool)

(assert (=> bm!288563 (= call!288570 call!288568)))

(declare-fun b!4079180 () Bool)

(assert (=> b!4079180 (= e!2531776 call!288569)))

(declare-fun b!4079181 () Bool)

(declare-fun res!1666429 () Bool)

(assert (=> b!4079181 (=> res!1666429 e!2531778)))

(assert (=> b!4079181 (= res!1666429 (not ((_ is Concat!19220) (regex!7042 r!4213))))))

(assert (=> b!4079181 (= e!2531781 e!2531778)))

(assert (= (and d!1211706 (not res!1666430)) b!4079173))

(assert (= (and b!4079173 c!703522) b!4079174))

(assert (= (and b!4079173 (not c!703522)) b!4079177))

(assert (= (and b!4079174 res!1666428) b!4079178))

(assert (= (and b!4079177 c!703523) b!4079179))

(assert (= (and b!4079177 (not c!703523)) b!4079181))

(assert (= (and b!4079179 res!1666431) b!4079176))

(assert (= (and b!4079181 (not res!1666429)) b!4079175))

(assert (= (and b!4079175 res!1666427) b!4079180))

(assert (= (or b!4079176 b!4079180) bm!288564))

(assert (= (or b!4079179 b!4079175) bm!288563))

(assert (= (or b!4079178 bm!288563) bm!288565))

(declare-fun m!4687041 () Bool)

(assert (=> b!4079174 m!4687041))

(declare-fun m!4687043 () Bool)

(assert (=> bm!288564 m!4687043))

(declare-fun m!4687045 () Bool)

(assert (=> bm!288565 m!4687045))

(assert (=> d!1211676 d!1211706))

(declare-fun d!1211710 () Bool)

(declare-fun list!16241 (Conc!13253) List!43800)

(assert (=> d!1211710 (= (list!16240 (charsOf!4824 (_1!24457 (get!14321 lt!1459457)))) (list!16241 (c!703469 (charsOf!4824 (_1!24457 (get!14321 lt!1459457))))))))

(declare-fun bs!592815 () Bool)

(assert (= bs!592815 d!1211710))

(declare-fun m!4687047 () Bool)

(assert (=> bs!592815 m!4687047))

(assert (=> b!4079019 d!1211710))

(declare-fun d!1211712 () Bool)

(declare-fun lt!1459488 () BalanceConc!26100)

(assert (=> d!1211712 (= (list!16240 lt!1459488) (originalCharacters!7636 (_1!24457 (get!14321 lt!1459457))))))

(assert (=> d!1211712 (= lt!1459488 (dynLambda!18585 (toChars!9469 (transformation!7042 (rule!10156 (_1!24457 (get!14321 lt!1459457))))) (value!221349 (_1!24457 (get!14321 lt!1459457)))))))

(assert (=> d!1211712 (= (charsOf!4824 (_1!24457 (get!14321 lt!1459457))) lt!1459488)))

(declare-fun b_lambda!119239 () Bool)

(assert (=> (not b_lambda!119239) (not d!1211712)))

(declare-fun t!337564 () Bool)

(declare-fun tb!244985 () Bool)

(assert (=> (and b!4078744 (= (toChars!9469 (transformation!7042 r!4213)) (toChars!9469 (transformation!7042 (rule!10156 (_1!24457 (get!14321 lt!1459457)))))) t!337564) tb!244985))

(declare-fun b!4079188 () Bool)

(declare-fun e!2531784 () Bool)

(declare-fun tp!1234827 () Bool)

(assert (=> b!4079188 (= e!2531784 (and (inv!58334 (c!703469 (dynLambda!18585 (toChars!9469 (transformation!7042 (rule!10156 (_1!24457 (get!14321 lt!1459457))))) (value!221349 (_1!24457 (get!14321 lt!1459457)))))) tp!1234827))))

(declare-fun result!297134 () Bool)

(assert (=> tb!244985 (= result!297134 (and (inv!58335 (dynLambda!18585 (toChars!9469 (transformation!7042 (rule!10156 (_1!24457 (get!14321 lt!1459457))))) (value!221349 (_1!24457 (get!14321 lt!1459457))))) e!2531784))))

(assert (= tb!244985 b!4079188))

(declare-fun m!4687053 () Bool)

(assert (=> b!4079188 m!4687053))

(declare-fun m!4687055 () Bool)

(assert (=> tb!244985 m!4687055))

(assert (=> d!1211712 t!337564))

(declare-fun b_and!313707 () Bool)

(assert (= b_and!313679 (and (=> t!337564 result!297134) b_and!313707)))

(declare-fun t!337566 () Bool)

(declare-fun tb!244987 () Bool)

(assert (=> (and b!4078746 (= (toChars!9469 (transformation!7042 (h!49097 rules!3870))) (toChars!9469 (transformation!7042 (rule!10156 (_1!24457 (get!14321 lt!1459457)))))) t!337566) tb!244987))

(declare-fun result!297136 () Bool)

(assert (= result!297136 result!297134))

(assert (=> d!1211712 t!337566))

(declare-fun b_and!313709 () Bool)

(assert (= b_and!313681 (and (=> t!337566 result!297136) b_and!313709)))

(declare-fun tb!244989 () Bool)

(declare-fun t!337568 () Bool)

(assert (=> (and b!4079124 (= (toChars!9469 (transformation!7042 (h!49097 (t!337536 rules!3870)))) (toChars!9469 (transformation!7042 (rule!10156 (_1!24457 (get!14321 lt!1459457)))))) t!337568) tb!244989))

(declare-fun result!297138 () Bool)

(assert (= result!297138 result!297134))

(assert (=> d!1211712 t!337568))

(declare-fun b_and!313711 () Bool)

(assert (= b_and!313705 (and (=> t!337568 result!297138) b_and!313711)))

(declare-fun m!4687057 () Bool)

(assert (=> d!1211712 m!4687057))

(declare-fun m!4687059 () Bool)

(assert (=> d!1211712 m!4687059))

(assert (=> b!4079019 d!1211712))

(assert (=> b!4079019 d!1211704))

(declare-fun d!1211718 () Bool)

(assert (=> d!1211718 true))

(declare-fun lambda!127753 () Int)

(declare-fun order!22861 () Int)

(declare-fun dynLambda!18592 (Int Int) Int)

(assert (=> d!1211718 (< (dynLambda!18582 order!22847 (toValue!9610 (transformation!7042 r!4213))) (dynLambda!18592 order!22861 lambda!127753))))

(declare-fun Forall2!1105 (Int) Bool)

(assert (=> d!1211718 (= (equivClasses!2915 (toChars!9469 (transformation!7042 r!4213)) (toValue!9610 (transformation!7042 r!4213))) (Forall2!1105 lambda!127753))))

(declare-fun bs!592818 () Bool)

(assert (= bs!592818 d!1211718))

(declare-fun m!4687061 () Bool)

(assert (=> bs!592818 m!4687061))

(assert (=> b!4079088 d!1211718))

(declare-fun d!1211720 () Bool)

(declare-fun res!1666441 () Bool)

(declare-fun e!2531796 () Bool)

(assert (=> d!1211720 (=> res!1666441 e!2531796)))

(assert (=> d!1211720 (= res!1666441 ((_ is Nil!43677) rules!3870))))

(assert (=> d!1211720 (= (noDuplicateTag!2751 thiss!26199 rules!3870 Nil!43679) e!2531796)))

(declare-fun b!4079204 () Bool)

(declare-fun e!2531797 () Bool)

(assert (=> b!4079204 (= e!2531796 e!2531797)))

(declare-fun res!1666442 () Bool)

(assert (=> b!4079204 (=> (not res!1666442) (not e!2531797))))

(declare-fun contains!8712 (List!43803 String!50110) Bool)

(assert (=> b!4079204 (= res!1666442 (not (contains!8712 Nil!43679 (tag!7902 (h!49097 rules!3870)))))))

(declare-fun b!4079205 () Bool)

(assert (=> b!4079205 (= e!2531797 (noDuplicateTag!2751 thiss!26199 (t!337536 rules!3870) (Cons!43679 (tag!7902 (h!49097 rules!3870)) Nil!43679)))))

(assert (= (and d!1211720 (not res!1666441)) b!4079204))

(assert (= (and b!4079204 res!1666442) b!4079205))

(declare-fun m!4687069 () Bool)

(assert (=> b!4079204 m!4687069))

(declare-fun m!4687071 () Bool)

(assert (=> b!4079205 m!4687071))

(assert (=> b!4078888 d!1211720))

(declare-fun b!4079208 () Bool)

(declare-fun res!1666444 () Bool)

(declare-fun e!2531799 () Bool)

(assert (=> b!4079208 (=> (not res!1666444) (not e!2531799))))

(declare-fun lt!1459492 () List!43800)

(assert (=> b!4079208 (= res!1666444 (= (size!32626 lt!1459492) (+ (size!32626 (t!337535 p!2988)) (size!32626 suffix!1518))))))

(declare-fun b!4079209 () Bool)

(assert (=> b!4079209 (= e!2531799 (or (not (= suffix!1518 Nil!43676)) (= lt!1459492 (t!337535 p!2988))))))

(declare-fun d!1211724 () Bool)

(assert (=> d!1211724 e!2531799))

(declare-fun res!1666443 () Bool)

(assert (=> d!1211724 (=> (not res!1666443) (not e!2531799))))

(assert (=> d!1211724 (= res!1666443 (= (content!6693 lt!1459492) ((_ map or) (content!6693 (t!337535 p!2988)) (content!6693 suffix!1518))))))

(declare-fun e!2531798 () List!43800)

(assert (=> d!1211724 (= lt!1459492 e!2531798)))

(declare-fun c!703528 () Bool)

(assert (=> d!1211724 (= c!703528 ((_ is Nil!43676) (t!337535 p!2988)))))

(assert (=> d!1211724 (= (++!11448 (t!337535 p!2988) suffix!1518) lt!1459492)))

(declare-fun b!4079207 () Bool)

(assert (=> b!4079207 (= e!2531798 (Cons!43676 (h!49096 (t!337535 p!2988)) (++!11448 (t!337535 (t!337535 p!2988)) suffix!1518)))))

(declare-fun b!4079206 () Bool)

(assert (=> b!4079206 (= e!2531798 suffix!1518)))

(assert (= (and d!1211724 c!703528) b!4079206))

(assert (= (and d!1211724 (not c!703528)) b!4079207))

(assert (= (and d!1211724 res!1666443) b!4079208))

(assert (= (and b!4079208 res!1666444) b!4079209))

(declare-fun m!4687073 () Bool)

(assert (=> b!4079208 m!4687073))

(assert (=> b!4079208 m!4686957))

(assert (=> b!4079208 m!4686683))

(declare-fun m!4687075 () Bool)

(assert (=> d!1211724 m!4687075))

(declare-fun m!4687077 () Bool)

(assert (=> d!1211724 m!4687077))

(assert (=> d!1211724 m!4686689))

(declare-fun m!4687079 () Bool)

(assert (=> b!4079207 m!4687079))

(assert (=> b!4078760 d!1211724))

(declare-fun bs!592819 () Bool)

(declare-fun d!1211726 () Bool)

(assert (= bs!592819 (and d!1211726 d!1211718)))

(declare-fun lambda!127754 () Int)

(assert (=> bs!592819 (= (= (toValue!9610 (transformation!7042 (h!49097 rules!3870))) (toValue!9610 (transformation!7042 r!4213))) (= lambda!127754 lambda!127753))))

(assert (=> d!1211726 true))

(assert (=> d!1211726 (< (dynLambda!18582 order!22847 (toValue!9610 (transformation!7042 (h!49097 rules!3870)))) (dynLambda!18592 order!22861 lambda!127754))))

(assert (=> d!1211726 (= (equivClasses!2915 (toChars!9469 (transformation!7042 (h!49097 rules!3870))) (toValue!9610 (transformation!7042 (h!49097 rules!3870)))) (Forall2!1105 lambda!127754))))

(declare-fun bs!592820 () Bool)

(assert (= bs!592820 d!1211726))

(declare-fun m!4687085 () Bool)

(assert (=> bs!592820 m!4687085))

(assert (=> b!4079031 d!1211726))

(declare-fun d!1211730 () Bool)

(assert (=> d!1211730 (= (inv!58331 (tag!7902 (h!49097 (t!337536 rules!3870)))) (= (mod (str.len (value!221348 (tag!7902 (h!49097 (t!337536 rules!3870))))) 2) 0))))

(assert (=> b!4079123 d!1211730))

(declare-fun d!1211732 () Bool)

(declare-fun res!1666445 () Bool)

(declare-fun e!2531801 () Bool)

(assert (=> d!1211732 (=> (not res!1666445) (not e!2531801))))

(assert (=> d!1211732 (= res!1666445 (semiInverseModEq!3016 (toChars!9469 (transformation!7042 (h!49097 (t!337536 rules!3870)))) (toValue!9610 (transformation!7042 (h!49097 (t!337536 rules!3870))))))))

(assert (=> d!1211732 (= (inv!58333 (transformation!7042 (h!49097 (t!337536 rules!3870)))) e!2531801)))

(declare-fun b!4079212 () Bool)

(assert (=> b!4079212 (= e!2531801 (equivClasses!2915 (toChars!9469 (transformation!7042 (h!49097 (t!337536 rules!3870)))) (toValue!9610 (transformation!7042 (h!49097 (t!337536 rules!3870))))))))

(assert (= (and d!1211732 res!1666445) b!4079212))

(declare-fun m!4687087 () Bool)

(assert (=> d!1211732 m!4687087))

(declare-fun m!4687089 () Bool)

(assert (=> b!4079212 m!4687089))

(assert (=> b!4079123 d!1211732))

(assert (=> b!4079060 d!1211698))

(declare-fun d!1211734 () Bool)

(declare-fun lt!1459493 () Int)

(assert (=> d!1211734 (>= lt!1459493 0)))

(declare-fun e!2531802 () Int)

(assert (=> d!1211734 (= lt!1459493 e!2531802)))

(declare-fun c!703530 () Bool)

(assert (=> d!1211734 (= c!703530 ((_ is Nil!43676) input!3411))))

(assert (=> d!1211734 (= (size!32626 input!3411) lt!1459493)))

(declare-fun b!4079213 () Bool)

(assert (=> b!4079213 (= e!2531802 0)))

(declare-fun b!4079214 () Bool)

(assert (=> b!4079214 (= e!2531802 (+ 1 (size!32626 (t!337535 input!3411))))))

(assert (= (and d!1211734 c!703530) b!4079213))

(assert (= (and d!1211734 (not c!703530)) b!4079214))

(declare-fun m!4687091 () Bool)

(assert (=> b!4079214 m!4687091))

(assert (=> b!4078872 d!1211734))

(declare-fun bs!592821 () Bool)

(declare-fun d!1211736 () Bool)

(assert (= bs!592821 (and d!1211736 d!1211640)))

(declare-fun lambda!127755 () Int)

(assert (=> bs!592821 (= (and (= (toChars!9469 (transformation!7042 (h!49097 rules!3870))) (toChars!9469 (transformation!7042 r!4213))) (= (toValue!9610 (transformation!7042 (h!49097 rules!3870))) (toValue!9610 (transformation!7042 r!4213)))) (= lambda!127755 lambda!127735))))

(declare-fun b!4079215 () Bool)

(declare-fun e!2531803 () Bool)

(assert (=> b!4079215 (= e!2531803 true)))

(assert (=> d!1211736 e!2531803))

(assert (= d!1211736 b!4079215))

(assert (=> b!4079215 (< (dynLambda!18582 order!22847 (toValue!9610 (transformation!7042 (h!49097 rules!3870)))) (dynLambda!18583 order!22849 lambda!127755))))

(assert (=> b!4079215 (< (dynLambda!18584 order!22851 (toChars!9469 (transformation!7042 (h!49097 rules!3870)))) (dynLambda!18583 order!22849 lambda!127755))))

(assert (=> d!1211736 (= (list!16240 (dynLambda!18585 (toChars!9469 (transformation!7042 (h!49097 rules!3870))) (dynLambda!18581 (toValue!9610 (transformation!7042 (h!49097 rules!3870))) (seqFromList!5259 (_1!24459 lt!1459410))))) (list!16240 (seqFromList!5259 (_1!24459 lt!1459410))))))

(declare-fun lt!1459494 () Unit!63211)

(assert (=> d!1211736 (= lt!1459494 (ForallOf!854 lambda!127755 (seqFromList!5259 (_1!24459 lt!1459410))))))

(assert (=> d!1211736 (= (lemmaSemiInverse!2009 (transformation!7042 (h!49097 rules!3870)) (seqFromList!5259 (_1!24459 lt!1459410))) lt!1459494)))

(declare-fun b_lambda!119241 () Bool)

(assert (=> (not b_lambda!119241) (not d!1211736)))

(declare-fun t!337570 () Bool)

(declare-fun tb!244991 () Bool)

(assert (=> (and b!4078744 (= (toChars!9469 (transformation!7042 r!4213)) (toChars!9469 (transformation!7042 (h!49097 rules!3870)))) t!337570) tb!244991))

(declare-fun e!2531804 () Bool)

(declare-fun b!4079216 () Bool)

(declare-fun tp!1234828 () Bool)

(assert (=> b!4079216 (= e!2531804 (and (inv!58334 (c!703469 (dynLambda!18585 (toChars!9469 (transformation!7042 (h!49097 rules!3870))) (dynLambda!18581 (toValue!9610 (transformation!7042 (h!49097 rules!3870))) (seqFromList!5259 (_1!24459 lt!1459410)))))) tp!1234828))))

(declare-fun result!297140 () Bool)

(assert (=> tb!244991 (= result!297140 (and (inv!58335 (dynLambda!18585 (toChars!9469 (transformation!7042 (h!49097 rules!3870))) (dynLambda!18581 (toValue!9610 (transformation!7042 (h!49097 rules!3870))) (seqFromList!5259 (_1!24459 lt!1459410))))) e!2531804))))

(assert (= tb!244991 b!4079216))

(declare-fun m!4687093 () Bool)

(assert (=> b!4079216 m!4687093))

(declare-fun m!4687095 () Bool)

(assert (=> tb!244991 m!4687095))

(assert (=> d!1211736 t!337570))

(declare-fun b_and!313713 () Bool)

(assert (= b_and!313707 (and (=> t!337570 result!297140) b_and!313713)))

(declare-fun t!337572 () Bool)

(declare-fun tb!244993 () Bool)

(assert (=> (and b!4078746 (= (toChars!9469 (transformation!7042 (h!49097 rules!3870))) (toChars!9469 (transformation!7042 (h!49097 rules!3870)))) t!337572) tb!244993))

(declare-fun result!297142 () Bool)

(assert (= result!297142 result!297140))

(assert (=> d!1211736 t!337572))

(declare-fun b_and!313715 () Bool)

(assert (= b_and!313709 (and (=> t!337572 result!297142) b_and!313715)))

(declare-fun t!337574 () Bool)

(declare-fun tb!244995 () Bool)

(assert (=> (and b!4079124 (= (toChars!9469 (transformation!7042 (h!49097 (t!337536 rules!3870)))) (toChars!9469 (transformation!7042 (h!49097 rules!3870)))) t!337574) tb!244995))

(declare-fun result!297144 () Bool)

(assert (= result!297144 result!297140))

(assert (=> d!1211736 t!337574))

(declare-fun b_and!313717 () Bool)

(assert (= b_and!313711 (and (=> t!337574 result!297144) b_and!313717)))

(declare-fun b_lambda!119243 () Bool)

(assert (=> (not b_lambda!119243) (not d!1211736)))

(declare-fun t!337576 () Bool)

(declare-fun tb!244997 () Bool)

(assert (=> (and b!4078744 (= (toValue!9610 (transformation!7042 r!4213)) (toValue!9610 (transformation!7042 (h!49097 rules!3870)))) t!337576) tb!244997))

(declare-fun result!297146 () Bool)

(assert (=> tb!244997 (= result!297146 (inv!21 (dynLambda!18581 (toValue!9610 (transformation!7042 (h!49097 rules!3870))) (seqFromList!5259 (_1!24459 lt!1459410)))))))

(declare-fun m!4687097 () Bool)

(assert (=> tb!244997 m!4687097))

(assert (=> d!1211736 t!337576))

(declare-fun b_and!313719 () Bool)

(assert (= b_and!313683 (and (=> t!337576 result!297146) b_and!313719)))

(declare-fun t!337578 () Bool)

(declare-fun tb!244999 () Bool)

(assert (=> (and b!4078746 (= (toValue!9610 (transformation!7042 (h!49097 rules!3870))) (toValue!9610 (transformation!7042 (h!49097 rules!3870)))) t!337578) tb!244999))

(declare-fun result!297148 () Bool)

(assert (= result!297148 result!297146))

(assert (=> d!1211736 t!337578))

(declare-fun b_and!313721 () Bool)

(assert (= b_and!313685 (and (=> t!337578 result!297148) b_and!313721)))

(declare-fun t!337580 () Bool)

(declare-fun tb!245001 () Bool)

(assert (=> (and b!4079124 (= (toValue!9610 (transformation!7042 (h!49097 (t!337536 rules!3870)))) (toValue!9610 (transformation!7042 (h!49097 rules!3870)))) t!337580) tb!245001))

(declare-fun result!297150 () Bool)

(assert (= result!297150 result!297146))

(assert (=> d!1211736 t!337580))

(declare-fun b_and!313723 () Bool)

(assert (= b_and!313703 (and (=> t!337580 result!297150) b_and!313723)))

(declare-fun m!4687099 () Bool)

(assert (=> d!1211736 m!4687099))

(declare-fun m!4687101 () Bool)

(assert (=> d!1211736 m!4687101))

(assert (=> d!1211736 m!4686789))

(declare-fun m!4687103 () Bool)

(assert (=> d!1211736 m!4687103))

(assert (=> d!1211736 m!4686789))

(assert (=> d!1211736 m!4687099))

(assert (=> d!1211736 m!4687101))

(declare-fun m!4687105 () Bool)

(assert (=> d!1211736 m!4687105))

(assert (=> d!1211736 m!4686789))

(declare-fun m!4687107 () Bool)

(assert (=> d!1211736 m!4687107))

(assert (=> b!4078872 d!1211736))

(declare-fun d!1211738 () Bool)

(assert (=> d!1211738 (= (apply!10225 (transformation!7042 (h!49097 rules!3870)) (seqFromList!5259 (_1!24459 lt!1459410))) (dynLambda!18581 (toValue!9610 (transformation!7042 (h!49097 rules!3870))) (seqFromList!5259 (_1!24459 lt!1459410))))))

(declare-fun b_lambda!119245 () Bool)

(assert (=> (not b_lambda!119245) (not d!1211738)))

(assert (=> d!1211738 t!337576))

(declare-fun b_and!313725 () Bool)

(assert (= b_and!313719 (and (=> t!337576 result!297146) b_and!313725)))

(assert (=> d!1211738 t!337578))

(declare-fun b_and!313727 () Bool)

(assert (= b_and!313721 (and (=> t!337578 result!297148) b_and!313727)))

(assert (=> d!1211738 t!337580))

(declare-fun b_and!313729 () Bool)

(assert (= b_and!313723 (and (=> t!337580 result!297150) b_and!313729)))

(assert (=> d!1211738 m!4686789))

(assert (=> d!1211738 m!4687099))

(assert (=> b!4078872 d!1211738))

(declare-fun b!4079317 () Bool)

(declare-fun e!2531884 () tuple2!42650)

(declare-fun lt!1459598 () tuple2!42650)

(assert (=> b!4079317 (= e!2531884 lt!1459598)))

(declare-fun bm!288591 () Bool)

(declare-fun call!288600 () Unit!63211)

(declare-fun lemmaIsPrefixSameLengthThenSameList!958 (List!43800 List!43800 List!43800) Unit!63211)

(assert (=> bm!288591 (= call!288600 (lemmaIsPrefixSameLengthThenSameList!958 input!3411 Nil!43676 input!3411))))

(declare-fun b!4079318 () Bool)

(declare-fun e!2531887 () Bool)

(declare-fun lt!1459578 () tuple2!42650)

(assert (=> b!4079318 (= e!2531887 (>= (size!32626 (_1!24459 lt!1459578)) (size!32626 Nil!43676)))))

(declare-fun bm!288592 () Bool)

(declare-fun call!288599 () Bool)

(assert (=> bm!288592 (= call!288599 (isPrefix!4111 input!3411 input!3411))))

(declare-fun d!1211740 () Bool)

(declare-fun e!2531885 () Bool)

(assert (=> d!1211740 e!2531885))

(declare-fun res!1666500 () Bool)

(assert (=> d!1211740 (=> (not res!1666500) (not e!2531885))))

(assert (=> d!1211740 (= res!1666500 (= (++!11448 (_1!24459 lt!1459578) (_2!24459 lt!1459578)) input!3411))))

(declare-fun e!2531889 () tuple2!42650)

(assert (=> d!1211740 (= lt!1459578 e!2531889)))

(declare-fun c!703554 () Bool)

(declare-fun lostCause!1020 (Regex!11947) Bool)

(assert (=> d!1211740 (= c!703554 (lostCause!1020 (regex!7042 (h!49097 rules!3870))))))

(declare-fun lt!1459583 () Unit!63211)

(declare-fun Unit!63213 () Unit!63211)

(assert (=> d!1211740 (= lt!1459583 Unit!63213)))

(declare-fun getSuffix!2493 (List!43800 List!43800) List!43800)

(assert (=> d!1211740 (= (getSuffix!2493 input!3411 Nil!43676) input!3411)))

(declare-fun lt!1459592 () Unit!63211)

(declare-fun lt!1459594 () Unit!63211)

(assert (=> d!1211740 (= lt!1459592 lt!1459594)))

(declare-fun lt!1459593 () List!43800)

(assert (=> d!1211740 (= input!3411 lt!1459593)))

(declare-fun lemmaSamePrefixThenSameSuffix!2237 (List!43800 List!43800 List!43800 List!43800 List!43800) Unit!63211)

(assert (=> d!1211740 (= lt!1459594 (lemmaSamePrefixThenSameSuffix!2237 Nil!43676 input!3411 Nil!43676 lt!1459593 input!3411))))

(assert (=> d!1211740 (= lt!1459593 (getSuffix!2493 input!3411 Nil!43676))))

(declare-fun lt!1459590 () Unit!63211)

(declare-fun lt!1459579 () Unit!63211)

(assert (=> d!1211740 (= lt!1459590 lt!1459579)))

(assert (=> d!1211740 (isPrefix!4111 Nil!43676 (++!11448 Nil!43676 input!3411))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2911 (List!43800 List!43800) Unit!63211)

(assert (=> d!1211740 (= lt!1459579 (lemmaConcatTwoListThenFirstIsPrefix!2911 Nil!43676 input!3411))))

(assert (=> d!1211740 (validRegex!5408 (regex!7042 (h!49097 rules!3870)))))

(assert (=> d!1211740 (= (findLongestMatchInner!1435 (regex!7042 (h!49097 rules!3870)) Nil!43676 (size!32626 Nil!43676) input!3411 input!3411 (size!32626 input!3411)) lt!1459578)))

(declare-fun bm!288593 () Bool)

(declare-fun call!288597 () Unit!63211)

(assert (=> bm!288593 (= call!288597 (lemmaIsPrefixRefl!2662 input!3411 input!3411))))

(declare-fun b!4079319 () Bool)

(declare-fun e!2531886 () tuple2!42650)

(assert (=> b!4079319 (= e!2531886 (tuple2!42651 Nil!43676 Nil!43676))))

(declare-fun b!4079320 () Bool)

(declare-fun e!2531888 () Unit!63211)

(declare-fun Unit!63214 () Unit!63211)

(assert (=> b!4079320 (= e!2531888 Unit!63214)))

(declare-fun lt!1459576 () Unit!63211)

(assert (=> b!4079320 (= lt!1459576 call!288597)))

(assert (=> b!4079320 call!288599))

(declare-fun lt!1459584 () Unit!63211)

(assert (=> b!4079320 (= lt!1459584 lt!1459576)))

(declare-fun lt!1459586 () Unit!63211)

(assert (=> b!4079320 (= lt!1459586 call!288600)))

(assert (=> b!4079320 (= input!3411 Nil!43676)))

(declare-fun lt!1459575 () Unit!63211)

(assert (=> b!4079320 (= lt!1459575 lt!1459586)))

(assert (=> b!4079320 false))

(declare-fun b!4079321 () Bool)

(assert (=> b!4079321 (= e!2531889 (tuple2!42651 Nil!43676 input!3411))))

(declare-fun b!4079322 () Bool)

(declare-fun c!703555 () Bool)

(declare-fun call!288601 () Bool)

(assert (=> b!4079322 (= c!703555 call!288601)))

(declare-fun lt!1459589 () Unit!63211)

(declare-fun lt!1459599 () Unit!63211)

(assert (=> b!4079322 (= lt!1459589 lt!1459599)))

(assert (=> b!4079322 (= input!3411 Nil!43676)))

(assert (=> b!4079322 (= lt!1459599 call!288600)))

(declare-fun lt!1459585 () Unit!63211)

(declare-fun lt!1459588 () Unit!63211)

(assert (=> b!4079322 (= lt!1459585 lt!1459588)))

(assert (=> b!4079322 call!288599))

(assert (=> b!4079322 (= lt!1459588 call!288597)))

(declare-fun e!2531882 () tuple2!42650)

(assert (=> b!4079322 (= e!2531882 e!2531886)))

(declare-fun b!4079323 () Bool)

(declare-fun c!703557 () Bool)

(assert (=> b!4079323 (= c!703557 call!288601)))

(declare-fun lt!1459597 () Unit!63211)

(declare-fun lt!1459581 () Unit!63211)

(assert (=> b!4079323 (= lt!1459597 lt!1459581)))

(declare-fun lt!1459596 () C!24080)

(declare-fun lt!1459591 () List!43800)

(assert (=> b!4079323 (= (++!11448 (++!11448 Nil!43676 (Cons!43676 lt!1459596 Nil!43676)) lt!1459591) input!3411)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1264 (List!43800 C!24080 List!43800 List!43800) Unit!63211)

(assert (=> b!4079323 (= lt!1459581 (lemmaMoveElementToOtherListKeepsConcatEq!1264 Nil!43676 lt!1459596 lt!1459591 input!3411))))

(assert (=> b!4079323 (= lt!1459591 (tail!6353 input!3411))))

(assert (=> b!4079323 (= lt!1459596 (head!8619 input!3411))))

(declare-fun lt!1459582 () Unit!63211)

(declare-fun lt!1459587 () Unit!63211)

(assert (=> b!4079323 (= lt!1459582 lt!1459587)))

(assert (=> b!4079323 (isPrefix!4111 (++!11448 Nil!43676 (Cons!43676 (head!8619 (getSuffix!2493 input!3411 Nil!43676)) Nil!43676)) input!3411)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!646 (List!43800 List!43800) Unit!63211)

(assert (=> b!4079323 (= lt!1459587 (lemmaAddHeadSuffixToPrefixStillPrefix!646 Nil!43676 input!3411))))

(declare-fun lt!1459573 () Unit!63211)

(declare-fun lt!1459595 () Unit!63211)

(assert (=> b!4079323 (= lt!1459573 lt!1459595)))

(assert (=> b!4079323 (= lt!1459595 (lemmaAddHeadSuffixToPrefixStillPrefix!646 Nil!43676 input!3411))))

(declare-fun lt!1459574 () List!43800)

(assert (=> b!4079323 (= lt!1459574 (++!11448 Nil!43676 (Cons!43676 (head!8619 input!3411) Nil!43676)))))

(declare-fun lt!1459580 () Unit!63211)

(assert (=> b!4079323 (= lt!1459580 e!2531888)))

(declare-fun c!703553 () Bool)

(assert (=> b!4079323 (= c!703553 (= (size!32626 Nil!43676) (size!32626 input!3411)))))

(declare-fun lt!1459572 () Unit!63211)

(declare-fun lt!1459577 () Unit!63211)

(assert (=> b!4079323 (= lt!1459572 lt!1459577)))

(assert (=> b!4079323 (<= (size!32626 Nil!43676) (size!32626 input!3411))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!454 (List!43800 List!43800) Unit!63211)

(assert (=> b!4079323 (= lt!1459577 (lemmaIsPrefixThenSmallerEqSize!454 Nil!43676 input!3411))))

(declare-fun e!2531883 () tuple2!42650)

(assert (=> b!4079323 (= e!2531882 e!2531883)))

(declare-fun bm!288594 () Bool)

(declare-fun call!288598 () Regex!11947)

(declare-fun call!288603 () C!24080)

(assert (=> bm!288594 (= call!288598 (derivativeStep!3609 (regex!7042 (h!49097 rules!3870)) call!288603))))

(declare-fun b!4079324 () Bool)

(assert (=> b!4079324 (= e!2531885 e!2531887)))

(declare-fun res!1666501 () Bool)

(assert (=> b!4079324 (=> res!1666501 e!2531887)))

(assert (=> b!4079324 (= res!1666501 (isEmpty!26093 (_1!24459 lt!1459578)))))

(declare-fun bm!288595 () Bool)

(assert (=> bm!288595 (= call!288603 (head!8619 input!3411))))

(declare-fun b!4079325 () Bool)

(assert (=> b!4079325 (= e!2531889 e!2531882)))

(declare-fun c!703558 () Bool)

(assert (=> b!4079325 (= c!703558 (= (size!32626 Nil!43676) (size!32626 input!3411)))))

(declare-fun bm!288596 () Bool)

(assert (=> bm!288596 (= call!288601 (nullable!4208 (regex!7042 (h!49097 rules!3870))))))

(declare-fun bm!288597 () Bool)

(declare-fun call!288602 () List!43800)

(assert (=> bm!288597 (= call!288602 (tail!6353 input!3411))))

(declare-fun b!4079326 () Bool)

(declare-fun call!288596 () tuple2!42650)

(assert (=> b!4079326 (= e!2531883 call!288596)))

(declare-fun b!4079327 () Bool)

(assert (=> b!4079327 (= e!2531883 e!2531884)))

(assert (=> b!4079327 (= lt!1459598 call!288596)))

(declare-fun c!703556 () Bool)

(assert (=> b!4079327 (= c!703556 (isEmpty!26093 (_1!24459 lt!1459598)))))

(declare-fun b!4079328 () Bool)

(declare-fun Unit!63215 () Unit!63211)

(assert (=> b!4079328 (= e!2531888 Unit!63215)))

(declare-fun b!4079329 () Bool)

(assert (=> b!4079329 (= e!2531884 (tuple2!42651 Nil!43676 input!3411))))

(declare-fun b!4079330 () Bool)

(assert (=> b!4079330 (= e!2531886 (tuple2!42651 Nil!43676 input!3411))))

(declare-fun bm!288598 () Bool)

(assert (=> bm!288598 (= call!288596 (findLongestMatchInner!1435 call!288598 lt!1459574 (+ (size!32626 Nil!43676) 1) call!288602 input!3411 (size!32626 input!3411)))))

(assert (= (and d!1211740 c!703554) b!4079321))

(assert (= (and d!1211740 (not c!703554)) b!4079325))

(assert (= (and b!4079325 c!703558) b!4079322))

(assert (= (and b!4079325 (not c!703558)) b!4079323))

(assert (= (and b!4079322 c!703555) b!4079319))

(assert (= (and b!4079322 (not c!703555)) b!4079330))

(assert (= (and b!4079323 c!703553) b!4079320))

(assert (= (and b!4079323 (not c!703553)) b!4079328))

(assert (= (and b!4079323 c!703557) b!4079327))

(assert (= (and b!4079323 (not c!703557)) b!4079326))

(assert (= (and b!4079327 c!703556) b!4079329))

(assert (= (and b!4079327 (not c!703556)) b!4079317))

(assert (= (or b!4079327 b!4079326) bm!288595))

(assert (= (or b!4079327 b!4079326) bm!288597))

(assert (= (or b!4079327 b!4079326) bm!288594))

(assert (= (or b!4079327 b!4079326) bm!288598))

(assert (= (or b!4079322 b!4079320) bm!288592))

(assert (= (or b!4079322 b!4079320) bm!288593))

(assert (= (or b!4079322 b!4079323) bm!288596))

(assert (= (or b!4079322 b!4079320) bm!288591))

(assert (= (and d!1211740 res!1666500) b!4079324))

(assert (= (and b!4079324 (not res!1666501)) b!4079318))

(declare-fun m!4687203 () Bool)

(assert (=> bm!288594 m!4687203))

(assert (=> bm!288592 m!4686947))

(declare-fun m!4687205 () Bool)

(assert (=> b!4079327 m!4687205))

(declare-fun m!4687207 () Bool)

(assert (=> bm!288595 m!4687207))

(declare-fun m!4687209 () Bool)

(assert (=> bm!288591 m!4687209))

(declare-fun m!4687211 () Bool)

(assert (=> d!1211740 m!4687211))

(declare-fun m!4687213 () Bool)

(assert (=> d!1211740 m!4687213))

(declare-fun m!4687215 () Bool)

(assert (=> d!1211740 m!4687215))

(declare-fun m!4687217 () Bool)

(assert (=> d!1211740 m!4687217))

(declare-fun m!4687219 () Bool)

(assert (=> d!1211740 m!4687219))

(declare-fun m!4687221 () Bool)

(assert (=> d!1211740 m!4687221))

(assert (=> d!1211740 m!4687215))

(declare-fun m!4687223 () Bool)

(assert (=> d!1211740 m!4687223))

(declare-fun m!4687225 () Bool)

(assert (=> d!1211740 m!4687225))

(declare-fun m!4687227 () Bool)

(assert (=> b!4079318 m!4687227))

(assert (=> b!4079318 m!4686783))

(assert (=> bm!288593 m!4686949))

(declare-fun m!4687229 () Bool)

(assert (=> b!4079324 m!4687229))

(assert (=> bm!288598 m!4686785))

(declare-fun m!4687231 () Bool)

(assert (=> bm!288598 m!4687231))

(declare-fun m!4687233 () Bool)

(assert (=> bm!288596 m!4687233))

(declare-fun m!4687235 () Bool)

(assert (=> b!4079323 m!4687235))

(declare-fun m!4687237 () Bool)

(assert (=> b!4079323 m!4687237))

(assert (=> b!4079323 m!4687235))

(declare-fun m!4687239 () Bool)

(assert (=> b!4079323 m!4687239))

(declare-fun m!4687241 () Bool)

(assert (=> b!4079323 m!4687241))

(declare-fun m!4687243 () Bool)

(assert (=> b!4079323 m!4687243))

(assert (=> b!4079323 m!4687241))

(declare-fun m!4687245 () Bool)

(assert (=> b!4079323 m!4687245))

(declare-fun m!4687247 () Bool)

(assert (=> b!4079323 m!4687247))

(assert (=> b!4079323 m!4687207))

(assert (=> b!4079323 m!4686785))

(assert (=> b!4079323 m!4686783))

(declare-fun m!4687249 () Bool)

(assert (=> b!4079323 m!4687249))

(declare-fun m!4687251 () Bool)

(assert (=> b!4079323 m!4687251))

(assert (=> b!4079323 m!4687217))

(assert (=> b!4079323 m!4687217))

(declare-fun m!4687253 () Bool)

(assert (=> b!4079323 m!4687253))

(assert (=> bm!288597 m!4687249))

(assert (=> b!4078872 d!1211740))

(declare-fun d!1211802 () Bool)

(assert (=> d!1211802 (= (isEmpty!26093 (_1!24459 (findLongestMatchInner!1435 (regex!7042 (h!49097 rules!3870)) Nil!43676 (size!32626 Nil!43676) input!3411 input!3411 (size!32626 input!3411)))) ((_ is Nil!43676) (_1!24459 (findLongestMatchInner!1435 (regex!7042 (h!49097 rules!3870)) Nil!43676 (size!32626 Nil!43676) input!3411 input!3411 (size!32626 input!3411)))))))

(assert (=> b!4078872 d!1211802))

(declare-fun d!1211804 () Bool)

(assert (=> d!1211804 (= (seqFromList!5259 (_1!24459 lt!1459410)) (fromListB!2402 (_1!24459 lt!1459410)))))

(declare-fun bs!592839 () Bool)

(assert (= bs!592839 d!1211804))

(declare-fun m!4687255 () Bool)

(assert (=> bs!592839 m!4687255))

(assert (=> b!4078872 d!1211804))

(declare-fun d!1211806 () Bool)

(declare-fun e!2531892 () Bool)

(assert (=> d!1211806 e!2531892))

(declare-fun res!1666504 () Bool)

(assert (=> d!1211806 (=> res!1666504 e!2531892)))

(assert (=> d!1211806 (= res!1666504 (isEmpty!26093 (_1!24459 (findLongestMatchInner!1435 (regex!7042 (h!49097 rules!3870)) Nil!43676 (size!32626 Nil!43676) input!3411 input!3411 (size!32626 input!3411)))))))

(declare-fun lt!1459602 () Unit!63211)

(declare-fun choose!24907 (Regex!11947 List!43800) Unit!63211)

(assert (=> d!1211806 (= lt!1459602 (choose!24907 (regex!7042 (h!49097 rules!3870)) input!3411))))

(assert (=> d!1211806 (validRegex!5408 (regex!7042 (h!49097 rules!3870)))))

(assert (=> d!1211806 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1408 (regex!7042 (h!49097 rules!3870)) input!3411) lt!1459602)))

(declare-fun b!4079333 () Bool)

(assert (=> b!4079333 (= e!2531892 (matchR!5892 (regex!7042 (h!49097 rules!3870)) (_1!24459 (findLongestMatchInner!1435 (regex!7042 (h!49097 rules!3870)) Nil!43676 (size!32626 Nil!43676) input!3411 input!3411 (size!32626 input!3411)))))))

(assert (= (and d!1211806 (not res!1666504)) b!4079333))

(assert (=> d!1211806 m!4686783))

(assert (=> d!1211806 m!4686785))

(assert (=> d!1211806 m!4686787))

(assert (=> d!1211806 m!4686783))

(assert (=> d!1211806 m!4687213))

(assert (=> d!1211806 m!4686797))

(assert (=> d!1211806 m!4686785))

(declare-fun m!4687257 () Bool)

(assert (=> d!1211806 m!4687257))

(assert (=> b!4079333 m!4686783))

(assert (=> b!4079333 m!4686785))

(assert (=> b!4079333 m!4686783))

(assert (=> b!4079333 m!4686785))

(assert (=> b!4079333 m!4686787))

(assert (=> b!4079333 m!4686813))

(assert (=> b!4078872 d!1211806))

(declare-fun d!1211808 () Bool)

(declare-fun lt!1459605 () Int)

(assert (=> d!1211808 (= lt!1459605 (size!32626 (list!16240 (seqFromList!5259 (_1!24459 lt!1459410)))))))

(declare-fun size!32629 (Conc!13253) Int)

(assert (=> d!1211808 (= lt!1459605 (size!32629 (c!703469 (seqFromList!5259 (_1!24459 lt!1459410)))))))

(assert (=> d!1211808 (= (size!32628 (seqFromList!5259 (_1!24459 lt!1459410))) lt!1459605)))

(declare-fun bs!592840 () Bool)

(assert (= bs!592840 d!1211808))

(assert (=> bs!592840 m!4686789))

(assert (=> bs!592840 m!4687103))

(assert (=> bs!592840 m!4687103))

(declare-fun m!4687259 () Bool)

(assert (=> bs!592840 m!4687259))

(declare-fun m!4687261 () Bool)

(assert (=> bs!592840 m!4687261))

(assert (=> b!4078872 d!1211808))

(declare-fun d!1211810 () Bool)

(declare-fun lt!1459606 () Int)

(assert (=> d!1211810 (>= lt!1459606 0)))

(declare-fun e!2531893 () Int)

(assert (=> d!1211810 (= lt!1459606 e!2531893)))

(declare-fun c!703559 () Bool)

(assert (=> d!1211810 (= c!703559 ((_ is Nil!43676) Nil!43676))))

(assert (=> d!1211810 (= (size!32626 Nil!43676) lt!1459606)))

(declare-fun b!4079334 () Bool)

(assert (=> b!4079334 (= e!2531893 0)))

(declare-fun b!4079335 () Bool)

(assert (=> b!4079335 (= e!2531893 (+ 1 (size!32626 (t!337535 Nil!43676))))))

(assert (= (and d!1211810 c!703559) b!4079334))

(assert (= (and d!1211810 (not c!703559)) b!4079335))

(declare-fun m!4687263 () Bool)

(assert (=> b!4079335 m!4687263))

(assert (=> b!4078872 d!1211810))

(declare-fun d!1211812 () Bool)

(declare-fun res!1666505 () Bool)

(declare-fun e!2531894 () Bool)

(assert (=> d!1211812 (=> (not res!1666505) (not e!2531894))))

(assert (=> d!1211812 (= res!1666505 (validRegex!5408 (regex!7042 (h!49097 (t!337536 rules!3870)))))))

(assert (=> d!1211812 (= (ruleValid!2966 thiss!26199 (h!49097 (t!337536 rules!3870))) e!2531894)))

(declare-fun b!4079336 () Bool)

(declare-fun res!1666506 () Bool)

(assert (=> b!4079336 (=> (not res!1666506) (not e!2531894))))

(assert (=> b!4079336 (= res!1666506 (not (nullable!4208 (regex!7042 (h!49097 (t!337536 rules!3870))))))))

(declare-fun b!4079337 () Bool)

(assert (=> b!4079337 (= e!2531894 (not (= (tag!7902 (h!49097 (t!337536 rules!3870))) (String!50111 ""))))))

(assert (= (and d!1211812 res!1666505) b!4079336))

(assert (= (and b!4079336 res!1666506) b!4079337))

(declare-fun m!4687265 () Bool)

(assert (=> d!1211812 m!4687265))

(declare-fun m!4687267 () Bool)

(assert (=> b!4079336 m!4687267))

(assert (=> b!4079084 d!1211812))

(assert (=> bm!288552 d!1211608))

(declare-fun b!4079340 () Bool)

(declare-fun res!1666508 () Bool)

(declare-fun e!2531896 () Bool)

(assert (=> b!4079340 (=> (not res!1666508) (not e!2531896))))

(declare-fun lt!1459607 () List!43800)

(assert (=> b!4079340 (= res!1666508 (= (size!32626 lt!1459607) (+ (size!32626 (list!16240 (charsOf!4824 (_1!24457 (get!14321 lt!1459411))))) (size!32626 (_2!24457 (get!14321 lt!1459411))))))))

(declare-fun b!4079341 () Bool)

(assert (=> b!4079341 (= e!2531896 (or (not (= (_2!24457 (get!14321 lt!1459411)) Nil!43676)) (= lt!1459607 (list!16240 (charsOf!4824 (_1!24457 (get!14321 lt!1459411)))))))))

(declare-fun d!1211814 () Bool)

(assert (=> d!1211814 e!2531896))

(declare-fun res!1666507 () Bool)

(assert (=> d!1211814 (=> (not res!1666507) (not e!2531896))))

(assert (=> d!1211814 (= res!1666507 (= (content!6693 lt!1459607) ((_ map or) (content!6693 (list!16240 (charsOf!4824 (_1!24457 (get!14321 lt!1459411))))) (content!6693 (_2!24457 (get!14321 lt!1459411))))))))

(declare-fun e!2531895 () List!43800)

(assert (=> d!1211814 (= lt!1459607 e!2531895)))

(declare-fun c!703560 () Bool)

(assert (=> d!1211814 (= c!703560 ((_ is Nil!43676) (list!16240 (charsOf!4824 (_1!24457 (get!14321 lt!1459411))))))))

(assert (=> d!1211814 (= (++!11448 (list!16240 (charsOf!4824 (_1!24457 (get!14321 lt!1459411)))) (_2!24457 (get!14321 lt!1459411))) lt!1459607)))

(declare-fun b!4079339 () Bool)

(assert (=> b!4079339 (= e!2531895 (Cons!43676 (h!49096 (list!16240 (charsOf!4824 (_1!24457 (get!14321 lt!1459411))))) (++!11448 (t!337535 (list!16240 (charsOf!4824 (_1!24457 (get!14321 lt!1459411))))) (_2!24457 (get!14321 lt!1459411)))))))

(declare-fun b!4079338 () Bool)

(assert (=> b!4079338 (= e!2531895 (_2!24457 (get!14321 lt!1459411)))))

(assert (= (and d!1211814 c!703560) b!4079338))

(assert (= (and d!1211814 (not c!703560)) b!4079339))

(assert (= (and d!1211814 res!1666507) b!4079340))

(assert (= (and b!4079340 res!1666508) b!4079341))

(declare-fun m!4687269 () Bool)

(assert (=> b!4079340 m!4687269))

(assert (=> b!4079340 m!4686809))

(declare-fun m!4687271 () Bool)

(assert (=> b!4079340 m!4687271))

(assert (=> b!4079340 m!4686801))

(declare-fun m!4687273 () Bool)

(assert (=> d!1211814 m!4687273))

(assert (=> d!1211814 m!4686809))

(declare-fun m!4687275 () Bool)

(assert (=> d!1211814 m!4687275))

(declare-fun m!4687277 () Bool)

(assert (=> d!1211814 m!4687277))

(declare-fun m!4687279 () Bool)

(assert (=> b!4079339 m!4687279))

(assert (=> b!4078874 d!1211814))

(declare-fun d!1211816 () Bool)

(assert (=> d!1211816 (= (list!16240 (charsOf!4824 (_1!24457 (get!14321 lt!1459411)))) (list!16241 (c!703469 (charsOf!4824 (_1!24457 (get!14321 lt!1459411))))))))

(declare-fun bs!592841 () Bool)

(assert (= bs!592841 d!1211816))

(declare-fun m!4687281 () Bool)

(assert (=> bs!592841 m!4687281))

(assert (=> b!4078874 d!1211816))

(declare-fun d!1211818 () Bool)

(declare-fun lt!1459608 () BalanceConc!26100)

(assert (=> d!1211818 (= (list!16240 lt!1459608) (originalCharacters!7636 (_1!24457 (get!14321 lt!1459411))))))

(assert (=> d!1211818 (= lt!1459608 (dynLambda!18585 (toChars!9469 (transformation!7042 (rule!10156 (_1!24457 (get!14321 lt!1459411))))) (value!221349 (_1!24457 (get!14321 lt!1459411)))))))

(assert (=> d!1211818 (= (charsOf!4824 (_1!24457 (get!14321 lt!1459411))) lt!1459608)))

(declare-fun b_lambda!119259 () Bool)

(assert (=> (not b_lambda!119259) (not d!1211818)))

(declare-fun tb!245021 () Bool)

(declare-fun t!337600 () Bool)

(assert (=> (and b!4078744 (= (toChars!9469 (transformation!7042 r!4213)) (toChars!9469 (transformation!7042 (rule!10156 (_1!24457 (get!14321 lt!1459411)))))) t!337600) tb!245021))

(declare-fun b!4079342 () Bool)

(declare-fun e!2531897 () Bool)

(declare-fun tp!1234830 () Bool)

(assert (=> b!4079342 (= e!2531897 (and (inv!58334 (c!703469 (dynLambda!18585 (toChars!9469 (transformation!7042 (rule!10156 (_1!24457 (get!14321 lt!1459411))))) (value!221349 (_1!24457 (get!14321 lt!1459411)))))) tp!1234830))))

(declare-fun result!297170 () Bool)

(assert (=> tb!245021 (= result!297170 (and (inv!58335 (dynLambda!18585 (toChars!9469 (transformation!7042 (rule!10156 (_1!24457 (get!14321 lt!1459411))))) (value!221349 (_1!24457 (get!14321 lt!1459411))))) e!2531897))))

(assert (= tb!245021 b!4079342))

(declare-fun m!4687283 () Bool)

(assert (=> b!4079342 m!4687283))

(declare-fun m!4687285 () Bool)

(assert (=> tb!245021 m!4687285))

(assert (=> d!1211818 t!337600))

(declare-fun b_and!313755 () Bool)

(assert (= b_and!313713 (and (=> t!337600 result!297170) b_and!313755)))

(declare-fun tb!245023 () Bool)

(declare-fun t!337602 () Bool)

(assert (=> (and b!4078746 (= (toChars!9469 (transformation!7042 (h!49097 rules!3870))) (toChars!9469 (transformation!7042 (rule!10156 (_1!24457 (get!14321 lt!1459411)))))) t!337602) tb!245023))

(declare-fun result!297172 () Bool)

(assert (= result!297172 result!297170))

(assert (=> d!1211818 t!337602))

(declare-fun b_and!313757 () Bool)

(assert (= b_and!313715 (and (=> t!337602 result!297172) b_and!313757)))

(declare-fun t!337604 () Bool)

(declare-fun tb!245025 () Bool)

(assert (=> (and b!4079124 (= (toChars!9469 (transformation!7042 (h!49097 (t!337536 rules!3870)))) (toChars!9469 (transformation!7042 (rule!10156 (_1!24457 (get!14321 lt!1459411)))))) t!337604) tb!245025))

(declare-fun result!297174 () Bool)

(assert (= result!297174 result!297170))

(assert (=> d!1211818 t!337604))

(declare-fun b_and!313759 () Bool)

(assert (= b_and!313717 (and (=> t!337604 result!297174) b_and!313759)))

(declare-fun m!4687287 () Bool)

(assert (=> d!1211818 m!4687287))

(declare-fun m!4687289 () Bool)

(assert (=> d!1211818 m!4687289))

(assert (=> b!4078874 d!1211818))

(declare-fun d!1211820 () Bool)

(assert (=> d!1211820 (= (get!14321 lt!1459411) (v!39903 lt!1459411))))

(assert (=> b!4078874 d!1211820))

(declare-fun b!4079345 () Bool)

(declare-fun res!1666510 () Bool)

(declare-fun e!2531899 () Bool)

(assert (=> b!4079345 (=> (not res!1666510) (not e!2531899))))

(declare-fun lt!1459609 () List!43800)

(assert (=> b!4079345 (= res!1666510 (= (size!32626 lt!1459609) (+ (size!32626 (list!16240 (charsOf!4824 (_1!24457 (get!14321 lt!1459457))))) (size!32626 (_2!24457 (get!14321 lt!1459457))))))))

(declare-fun b!4079346 () Bool)

(assert (=> b!4079346 (= e!2531899 (or (not (= (_2!24457 (get!14321 lt!1459457)) Nil!43676)) (= lt!1459609 (list!16240 (charsOf!4824 (_1!24457 (get!14321 lt!1459457)))))))))

(declare-fun d!1211822 () Bool)

(assert (=> d!1211822 e!2531899))

(declare-fun res!1666509 () Bool)

(assert (=> d!1211822 (=> (not res!1666509) (not e!2531899))))

(assert (=> d!1211822 (= res!1666509 (= (content!6693 lt!1459609) ((_ map or) (content!6693 (list!16240 (charsOf!4824 (_1!24457 (get!14321 lt!1459457))))) (content!6693 (_2!24457 (get!14321 lt!1459457))))))))

(declare-fun e!2531898 () List!43800)

(assert (=> d!1211822 (= lt!1459609 e!2531898)))

(declare-fun c!703561 () Bool)

(assert (=> d!1211822 (= c!703561 ((_ is Nil!43676) (list!16240 (charsOf!4824 (_1!24457 (get!14321 lt!1459457))))))))

(assert (=> d!1211822 (= (++!11448 (list!16240 (charsOf!4824 (_1!24457 (get!14321 lt!1459457)))) (_2!24457 (get!14321 lt!1459457))) lt!1459609)))

(declare-fun b!4079344 () Bool)

(assert (=> b!4079344 (= e!2531898 (Cons!43676 (h!49096 (list!16240 (charsOf!4824 (_1!24457 (get!14321 lt!1459457))))) (++!11448 (t!337535 (list!16240 (charsOf!4824 (_1!24457 (get!14321 lt!1459457))))) (_2!24457 (get!14321 lt!1459457)))))))

(declare-fun b!4079343 () Bool)

(assert (=> b!4079343 (= e!2531898 (_2!24457 (get!14321 lt!1459457)))))

(assert (= (and d!1211822 c!703561) b!4079343))

(assert (= (and d!1211822 (not c!703561)) b!4079344))

(assert (= (and d!1211822 res!1666509) b!4079345))

(assert (= (and b!4079345 res!1666510) b!4079346))

(declare-fun m!4687291 () Bool)

(assert (=> b!4079345 m!4687291))

(assert (=> b!4079345 m!4686935))

(declare-fun m!4687293 () Bool)

(assert (=> b!4079345 m!4687293))

(assert (=> b!4079345 m!4686943))

(declare-fun m!4687295 () Bool)

(assert (=> d!1211822 m!4687295))

(assert (=> d!1211822 m!4686935))

(declare-fun m!4687297 () Bool)

(assert (=> d!1211822 m!4687297))

(declare-fun m!4687299 () Bool)

(assert (=> d!1211822 m!4687299))

(declare-fun m!4687301 () Bool)

(assert (=> b!4079344 m!4687301))

(assert (=> b!4079022 d!1211822))

(assert (=> b!4079022 d!1211710))

(assert (=> b!4079022 d!1211712))

(assert (=> b!4079022 d!1211704))

(assert (=> bm!288555 d!1211604))

(declare-fun d!1211824 () Bool)

(declare-fun c!703564 () Bool)

(assert (=> d!1211824 (= c!703564 ((_ is Nil!43677) rules!3870))))

(declare-fun e!2531902 () (InoxSet Rule!13884))

(assert (=> d!1211824 (= (content!6695 rules!3870) e!2531902)))

(declare-fun b!4079351 () Bool)

(assert (=> b!4079351 (= e!2531902 ((as const (Array Rule!13884 Bool)) false))))

(declare-fun b!4079352 () Bool)

(assert (=> b!4079352 (= e!2531902 ((_ map or) (store ((as const (Array Rule!13884 Bool)) false) (h!49097 rules!3870) true) (content!6695 (t!337536 rules!3870))))))

(assert (= (and d!1211824 c!703564) b!4079351))

(assert (= (and d!1211824 (not c!703564)) b!4079352))

(declare-fun m!4687303 () Bool)

(assert (=> b!4079352 m!4687303))

(declare-fun m!4687305 () Bool)

(assert (=> b!4079352 m!4687305))

(assert (=> d!1211686 d!1211824))

(declare-fun b!4079353 () Bool)

(declare-fun e!2531908 () Bool)

(assert (=> b!4079353 (= e!2531908 (nullable!4208 (regex!7042 (h!49097 rules!3870))))))

(declare-fun d!1211826 () Bool)

(declare-fun e!2531906 () Bool)

(assert (=> d!1211826 e!2531906))

(declare-fun c!703567 () Bool)

(assert (=> d!1211826 (= c!703567 ((_ is EmptyExpr!11947) (regex!7042 (h!49097 rules!3870))))))

(declare-fun lt!1459610 () Bool)

(assert (=> d!1211826 (= lt!1459610 e!2531908)))

(declare-fun c!703565 () Bool)

(assert (=> d!1211826 (= c!703565 (isEmpty!26093 (list!16240 (charsOf!4824 (_1!24457 (get!14321 lt!1459411))))))))

(assert (=> d!1211826 (validRegex!5408 (regex!7042 (h!49097 rules!3870)))))

(assert (=> d!1211826 (= (matchR!5892 (regex!7042 (h!49097 rules!3870)) (list!16240 (charsOf!4824 (_1!24457 (get!14321 lt!1459411))))) lt!1459610)))

(declare-fun b!4079354 () Bool)

(declare-fun res!1666511 () Bool)

(declare-fun e!2531909 () Bool)

(assert (=> b!4079354 (=> (not res!1666511) (not e!2531909))))

(declare-fun call!288604 () Bool)

(assert (=> b!4079354 (= res!1666511 (not call!288604))))

(declare-fun b!4079355 () Bool)

(declare-fun e!2531905 () Bool)

(declare-fun e!2531907 () Bool)

(assert (=> b!4079355 (= e!2531905 e!2531907)))

(declare-fun res!1666516 () Bool)

(assert (=> b!4079355 (=> (not res!1666516) (not e!2531907))))

(assert (=> b!4079355 (= res!1666516 (not lt!1459610))))

(declare-fun b!4079356 () Bool)

(declare-fun e!2531904 () Bool)

(assert (=> b!4079356 (= e!2531907 e!2531904)))

(declare-fun res!1666515 () Bool)

(assert (=> b!4079356 (=> res!1666515 e!2531904)))

(assert (=> b!4079356 (= res!1666515 call!288604)))

(declare-fun b!4079357 () Bool)

(assert (=> b!4079357 (= e!2531906 (= lt!1459610 call!288604))))

(declare-fun b!4079358 () Bool)

(declare-fun e!2531903 () Bool)

(assert (=> b!4079358 (= e!2531903 (not lt!1459610))))

(declare-fun bm!288599 () Bool)

(assert (=> bm!288599 (= call!288604 (isEmpty!26093 (list!16240 (charsOf!4824 (_1!24457 (get!14321 lt!1459411))))))))

(declare-fun b!4079359 () Bool)

(assert (=> b!4079359 (= e!2531904 (not (= (head!8619 (list!16240 (charsOf!4824 (_1!24457 (get!14321 lt!1459411))))) (c!703468 (regex!7042 (h!49097 rules!3870))))))))

(declare-fun b!4079360 () Bool)

(assert (=> b!4079360 (= e!2531906 e!2531903)))

(declare-fun c!703566 () Bool)

(assert (=> b!4079360 (= c!703566 ((_ is EmptyLang!11947) (regex!7042 (h!49097 rules!3870))))))

(declare-fun b!4079361 () Bool)

(declare-fun res!1666517 () Bool)

(assert (=> b!4079361 (=> (not res!1666517) (not e!2531909))))

(assert (=> b!4079361 (= res!1666517 (isEmpty!26093 (tail!6353 (list!16240 (charsOf!4824 (_1!24457 (get!14321 lt!1459411)))))))))

(declare-fun b!4079362 () Bool)

(declare-fun res!1666513 () Bool)

(assert (=> b!4079362 (=> res!1666513 e!2531904)))

(assert (=> b!4079362 (= res!1666513 (not (isEmpty!26093 (tail!6353 (list!16240 (charsOf!4824 (_1!24457 (get!14321 lt!1459411))))))))))

(declare-fun b!4079363 () Bool)

(declare-fun res!1666512 () Bool)

(assert (=> b!4079363 (=> res!1666512 e!2531905)))

(assert (=> b!4079363 (= res!1666512 (not ((_ is ElementMatch!11947) (regex!7042 (h!49097 rules!3870)))))))

(assert (=> b!4079363 (= e!2531903 e!2531905)))

(declare-fun b!4079364 () Bool)

(assert (=> b!4079364 (= e!2531909 (= (head!8619 (list!16240 (charsOf!4824 (_1!24457 (get!14321 lt!1459411))))) (c!703468 (regex!7042 (h!49097 rules!3870)))))))

(declare-fun b!4079365 () Bool)

(declare-fun res!1666514 () Bool)

(assert (=> b!4079365 (=> res!1666514 e!2531905)))

(assert (=> b!4079365 (= res!1666514 e!2531909)))

(declare-fun res!1666518 () Bool)

(assert (=> b!4079365 (=> (not res!1666518) (not e!2531909))))

(assert (=> b!4079365 (= res!1666518 lt!1459610)))

(declare-fun b!4079366 () Bool)

(assert (=> b!4079366 (= e!2531908 (matchR!5892 (derivativeStep!3609 (regex!7042 (h!49097 rules!3870)) (head!8619 (list!16240 (charsOf!4824 (_1!24457 (get!14321 lt!1459411)))))) (tail!6353 (list!16240 (charsOf!4824 (_1!24457 (get!14321 lt!1459411)))))))))

(assert (= (and d!1211826 c!703565) b!4079353))

(assert (= (and d!1211826 (not c!703565)) b!4079366))

(assert (= (and d!1211826 c!703567) b!4079357))

(assert (= (and d!1211826 (not c!703567)) b!4079360))

(assert (= (and b!4079360 c!703566) b!4079358))

(assert (= (and b!4079360 (not c!703566)) b!4079363))

(assert (= (and b!4079363 (not res!1666512)) b!4079365))

(assert (= (and b!4079365 res!1666518) b!4079354))

(assert (= (and b!4079354 res!1666511) b!4079361))

(assert (= (and b!4079361 res!1666517) b!4079364))

(assert (= (and b!4079365 (not res!1666514)) b!4079355))

(assert (= (and b!4079355 res!1666516) b!4079356))

(assert (= (and b!4079356 (not res!1666515)) b!4079362))

(assert (= (and b!4079362 (not res!1666513)) b!4079359))

(assert (= (or b!4079357 b!4079354 b!4079356) bm!288599))

(assert (=> d!1211826 m!4686809))

(declare-fun m!4687307 () Bool)

(assert (=> d!1211826 m!4687307))

(assert (=> d!1211826 m!4687213))

(assert (=> b!4079359 m!4686809))

(declare-fun m!4687309 () Bool)

(assert (=> b!4079359 m!4687309))

(assert (=> b!4079353 m!4687233))

(assert (=> b!4079361 m!4686809))

(declare-fun m!4687311 () Bool)

(assert (=> b!4079361 m!4687311))

(assert (=> b!4079361 m!4687311))

(declare-fun m!4687313 () Bool)

(assert (=> b!4079361 m!4687313))

(assert (=> b!4079366 m!4686809))

(assert (=> b!4079366 m!4687309))

(assert (=> b!4079366 m!4687309))

(declare-fun m!4687315 () Bool)

(assert (=> b!4079366 m!4687315))

(assert (=> b!4079366 m!4686809))

(assert (=> b!4079366 m!4687311))

(assert (=> b!4079366 m!4687315))

(assert (=> b!4079366 m!4687311))

(declare-fun m!4687317 () Bool)

(assert (=> b!4079366 m!4687317))

(assert (=> bm!288599 m!4686809))

(assert (=> bm!288599 m!4687307))

(assert (=> b!4079362 m!4686809))

(assert (=> b!4079362 m!4687311))

(assert (=> b!4079362 m!4687311))

(assert (=> b!4079362 m!4687313))

(assert (=> b!4079364 m!4686809))

(assert (=> b!4079364 m!4687309))

(assert (=> b!4078876 d!1211826))

(assert (=> b!4078876 d!1211816))

(assert (=> b!4078876 d!1211818))

(assert (=> b!4078876 d!1211820))

(declare-fun d!1211828 () Bool)

(declare-fun lt!1459611 () Bool)

(assert (=> d!1211828 (= lt!1459611 (select (content!6695 (t!337536 rules!3870)) r!4213))))

(declare-fun e!2531910 () Bool)

(assert (=> d!1211828 (= lt!1459611 e!2531910)))

(declare-fun res!1666520 () Bool)

(assert (=> d!1211828 (=> (not res!1666520) (not e!2531910))))

(assert (=> d!1211828 (= res!1666520 ((_ is Cons!43677) (t!337536 rules!3870)))))

(assert (=> d!1211828 (= (contains!8711 (t!337536 rules!3870) r!4213) lt!1459611)))

(declare-fun b!4079367 () Bool)

(declare-fun e!2531911 () Bool)

(assert (=> b!4079367 (= e!2531910 e!2531911)))

(declare-fun res!1666519 () Bool)

(assert (=> b!4079367 (=> res!1666519 e!2531911)))

(assert (=> b!4079367 (= res!1666519 (= (h!49097 (t!337536 rules!3870)) r!4213))))

(declare-fun b!4079368 () Bool)

(assert (=> b!4079368 (= e!2531911 (contains!8711 (t!337536 (t!337536 rules!3870)) r!4213))))

(assert (= (and d!1211828 res!1666520) b!4079367))

(assert (= (and b!4079367 (not res!1666519)) b!4079368))

(assert (=> d!1211828 m!4687305))

(declare-fun m!4687319 () Bool)

(assert (=> d!1211828 m!4687319))

(declare-fun m!4687321 () Bool)

(assert (=> b!4079368 m!4687321))

(assert (=> b!4079094 d!1211828))

(declare-fun bs!592842 () Bool)

(declare-fun d!1211830 () Bool)

(assert (= bs!592842 (and d!1211830 d!1211640)))

(declare-fun lambda!127762 () Int)

(assert (=> bs!592842 (= (and (= (toChars!9469 (transformation!7042 (h!49097 rules!3870))) (toChars!9469 (transformation!7042 r!4213))) (= (toValue!9610 (transformation!7042 (h!49097 rules!3870))) (toValue!9610 (transformation!7042 r!4213)))) (= lambda!127762 lambda!127735))))

(declare-fun bs!592843 () Bool)

(assert (= bs!592843 (and d!1211830 d!1211736)))

(assert (=> bs!592843 (= lambda!127762 lambda!127755)))

(assert (=> d!1211830 true))

(assert (=> d!1211830 (< (dynLambda!18584 order!22851 (toChars!9469 (transformation!7042 (h!49097 rules!3870)))) (dynLambda!18583 order!22849 lambda!127762))))

(assert (=> d!1211830 true))

(assert (=> d!1211830 (< (dynLambda!18582 order!22847 (toValue!9610 (transformation!7042 (h!49097 rules!3870)))) (dynLambda!18583 order!22849 lambda!127762))))

(declare-fun Forall!1505 (Int) Bool)

(assert (=> d!1211830 (= (semiInverseModEq!3016 (toChars!9469 (transformation!7042 (h!49097 rules!3870))) (toValue!9610 (transformation!7042 (h!49097 rules!3870)))) (Forall!1505 lambda!127762))))

(declare-fun bs!592844 () Bool)

(assert (= bs!592844 d!1211830))

(declare-fun m!4687323 () Bool)

(assert (=> bs!592844 m!4687323))

(assert (=> d!1211670 d!1211830))

(assert (=> b!4078880 d!1211820))

(declare-fun d!1211832 () Bool)

(assert (=> d!1211832 (= (apply!10225 (transformation!7042 (rule!10156 (_1!24457 (get!14321 lt!1459411)))) (seqFromList!5259 (originalCharacters!7636 (_1!24457 (get!14321 lt!1459411))))) (dynLambda!18581 (toValue!9610 (transformation!7042 (rule!10156 (_1!24457 (get!14321 lt!1459411))))) (seqFromList!5259 (originalCharacters!7636 (_1!24457 (get!14321 lt!1459411))))))))

(declare-fun b_lambda!119261 () Bool)

(assert (=> (not b_lambda!119261) (not d!1211832)))

(declare-fun t!337606 () Bool)

(declare-fun tb!245027 () Bool)

(assert (=> (and b!4078744 (= (toValue!9610 (transformation!7042 r!4213)) (toValue!9610 (transformation!7042 (rule!10156 (_1!24457 (get!14321 lt!1459411)))))) t!337606) tb!245027))

(declare-fun result!297176 () Bool)

(assert (=> tb!245027 (= result!297176 (inv!21 (dynLambda!18581 (toValue!9610 (transformation!7042 (rule!10156 (_1!24457 (get!14321 lt!1459411))))) (seqFromList!5259 (originalCharacters!7636 (_1!24457 (get!14321 lt!1459411)))))))))

(declare-fun m!4687325 () Bool)

(assert (=> tb!245027 m!4687325))

(assert (=> d!1211832 t!337606))

(declare-fun b_and!313761 () Bool)

(assert (= b_and!313725 (and (=> t!337606 result!297176) b_and!313761)))

(declare-fun t!337608 () Bool)

(declare-fun tb!245029 () Bool)

(assert (=> (and b!4078746 (= (toValue!9610 (transformation!7042 (h!49097 rules!3870))) (toValue!9610 (transformation!7042 (rule!10156 (_1!24457 (get!14321 lt!1459411)))))) t!337608) tb!245029))

(declare-fun result!297178 () Bool)

(assert (= result!297178 result!297176))

(assert (=> d!1211832 t!337608))

(declare-fun b_and!313763 () Bool)

(assert (= b_and!313727 (and (=> t!337608 result!297178) b_and!313763)))

(declare-fun tb!245031 () Bool)

(declare-fun t!337610 () Bool)

(assert (=> (and b!4079124 (= (toValue!9610 (transformation!7042 (h!49097 (t!337536 rules!3870)))) (toValue!9610 (transformation!7042 (rule!10156 (_1!24457 (get!14321 lt!1459411)))))) t!337610) tb!245031))

(declare-fun result!297180 () Bool)

(assert (= result!297180 result!297176))

(assert (=> d!1211832 t!337610))

(declare-fun b_and!313765 () Bool)

(assert (= b_and!313729 (and (=> t!337610 result!297180) b_and!313765)))

(assert (=> d!1211832 m!4686803))

(declare-fun m!4687327 () Bool)

(assert (=> d!1211832 m!4687327))

(assert (=> b!4078880 d!1211832))

(declare-fun d!1211834 () Bool)

(assert (=> d!1211834 (= (seqFromList!5259 (originalCharacters!7636 (_1!24457 (get!14321 lt!1459411)))) (fromListB!2402 (originalCharacters!7636 (_1!24457 (get!14321 lt!1459411)))))))

(declare-fun bs!592845 () Bool)

(assert (= bs!592845 d!1211834))

(declare-fun m!4687329 () Bool)

(assert (=> bs!592845 m!4687329))

(assert (=> b!4078880 d!1211834))

(declare-fun d!1211836 () Bool)

(declare-fun res!1666525 () Bool)

(declare-fun e!2531929 () Bool)

(assert (=> d!1211836 (=> res!1666525 e!2531929)))

(assert (=> d!1211836 (= res!1666525 ((_ is Nil!43677) (t!337536 rules!3870)))))

(assert (=> d!1211836 (= (forall!8398 (t!337536 rules!3870) lambda!127741) e!2531929)))

(declare-fun b!4079401 () Bool)

(declare-fun e!2531930 () Bool)

(assert (=> b!4079401 (= e!2531929 e!2531930)))

(declare-fun res!1666526 () Bool)

(assert (=> b!4079401 (=> (not res!1666526) (not e!2531930))))

(declare-fun dynLambda!18595 (Int Rule!13884) Bool)

(assert (=> b!4079401 (= res!1666526 (dynLambda!18595 lambda!127741 (h!49097 (t!337536 rules!3870))))))

(declare-fun b!4079402 () Bool)

(assert (=> b!4079402 (= e!2531930 (forall!8398 (t!337536 (t!337536 rules!3870)) lambda!127741))))

(assert (= (and d!1211836 (not res!1666525)) b!4079401))

(assert (= (and b!4079401 res!1666526) b!4079402))

(declare-fun b_lambda!119263 () Bool)

(assert (=> (not b_lambda!119263) (not b!4079401)))

(declare-fun m!4687331 () Bool)

(assert (=> b!4079401 m!4687331))

(declare-fun m!4687333 () Bool)

(assert (=> b!4079402 m!4687333))

(assert (=> d!1211680 d!1211836))

(declare-fun d!1211838 () Bool)

(declare-fun isBalanced!3694 (Conc!13253) Bool)

(assert (=> d!1211838 (= (inv!58335 (dynLambda!18585 (toChars!9469 (transformation!7042 r!4213)) (dynLambda!18581 (toValue!9610 (transformation!7042 r!4213)) lt!1459362))) (isBalanced!3694 (c!703469 (dynLambda!18585 (toChars!9469 (transformation!7042 r!4213)) (dynLambda!18581 (toValue!9610 (transformation!7042 r!4213)) lt!1459362)))))))

(declare-fun bs!592846 () Bool)

(assert (= bs!592846 d!1211838))

(declare-fun m!4687335 () Bool)

(assert (=> bs!592846 m!4687335))

(assert (=> tb!244965 d!1211838))

(declare-fun d!1211840 () Bool)

(assert (=> d!1211840 (= (isEmpty!26092 lt!1459411) (not ((_ is Some!9449) lt!1459411)))))

(assert (=> d!1211608 d!1211840))

(declare-fun d!1211842 () Bool)

(assert (=> d!1211842 (= (isEmpty!26093 (_1!24459 lt!1459410)) ((_ is Nil!43676) (_1!24459 lt!1459410)))))

(assert (=> d!1211608 d!1211842))

(declare-fun d!1211844 () Bool)

(declare-fun lt!1459719 () tuple2!42650)

(assert (=> d!1211844 (= (++!11448 (_1!24459 lt!1459719) (_2!24459 lt!1459719)) input!3411)))

(declare-fun sizeTr!283 (List!43800 Int) Int)

(assert (=> d!1211844 (= lt!1459719 (findLongestMatchInner!1435 (regex!7042 (h!49097 rules!3870)) Nil!43676 0 input!3411 input!3411 (sizeTr!283 input!3411 0)))))

(declare-fun lt!1459714 () Unit!63211)

(declare-fun lt!1459713 () Unit!63211)

(assert (=> d!1211844 (= lt!1459714 lt!1459713)))

(declare-fun lt!1459715 () List!43800)

(declare-fun lt!1459718 () Int)

(assert (=> d!1211844 (= (sizeTr!283 lt!1459715 lt!1459718) (+ (size!32626 lt!1459715) lt!1459718))))

(declare-fun lemmaSizeTrEqualsSize!282 (List!43800 Int) Unit!63211)

(assert (=> d!1211844 (= lt!1459713 (lemmaSizeTrEqualsSize!282 lt!1459715 lt!1459718))))

(assert (=> d!1211844 (= lt!1459718 0)))

(assert (=> d!1211844 (= lt!1459715 Nil!43676)))

(declare-fun lt!1459716 () Unit!63211)

(declare-fun lt!1459712 () Unit!63211)

(assert (=> d!1211844 (= lt!1459716 lt!1459712)))

(declare-fun lt!1459717 () Int)

(assert (=> d!1211844 (= (sizeTr!283 input!3411 lt!1459717) (+ (size!32626 input!3411) lt!1459717))))

(assert (=> d!1211844 (= lt!1459712 (lemmaSizeTrEqualsSize!282 input!3411 lt!1459717))))

(assert (=> d!1211844 (= lt!1459717 0)))

(assert (=> d!1211844 (validRegex!5408 (regex!7042 (h!49097 rules!3870)))))

(assert (=> d!1211844 (= (findLongestMatch!1348 (regex!7042 (h!49097 rules!3870)) input!3411) lt!1459719)))

(declare-fun bs!592847 () Bool)

(assert (= bs!592847 d!1211844))

(assert (=> bs!592847 m!4686785))

(declare-fun m!4687337 () Bool)

(assert (=> bs!592847 m!4687337))

(declare-fun m!4687339 () Bool)

(assert (=> bs!592847 m!4687339))

(declare-fun m!4687341 () Bool)

(assert (=> bs!592847 m!4687341))

(declare-fun m!4687343 () Bool)

(assert (=> bs!592847 m!4687343))

(declare-fun m!4687345 () Bool)

(assert (=> bs!592847 m!4687345))

(assert (=> bs!592847 m!4687337))

(assert (=> bs!592847 m!4687213))

(declare-fun m!4687347 () Bool)

(assert (=> bs!592847 m!4687347))

(declare-fun m!4687349 () Bool)

(assert (=> bs!592847 m!4687349))

(declare-fun m!4687351 () Bool)

(assert (=> bs!592847 m!4687351))

(assert (=> d!1211608 d!1211844))

(declare-fun d!1211846 () Bool)

(declare-fun res!1666533 () Bool)

(declare-fun e!2531943 () Bool)

(assert (=> d!1211846 (=> (not res!1666533) (not e!2531943))))

(assert (=> d!1211846 (= res!1666533 (validRegex!5408 (regex!7042 (h!49097 rules!3870))))))

(assert (=> d!1211846 (= (ruleValid!2966 thiss!26199 (h!49097 rules!3870)) e!2531943)))

(declare-fun b!4079421 () Bool)

(declare-fun res!1666534 () Bool)

(assert (=> b!4079421 (=> (not res!1666534) (not e!2531943))))

(assert (=> b!4079421 (= res!1666534 (not (nullable!4208 (regex!7042 (h!49097 rules!3870)))))))

(declare-fun b!4079422 () Bool)

(assert (=> b!4079422 (= e!2531943 (not (= (tag!7902 (h!49097 rules!3870)) (String!50111 ""))))))

(assert (= (and d!1211846 res!1666533) b!4079421))

(assert (= (and b!4079421 res!1666534) b!4079422))

(assert (=> d!1211846 m!4687213))

(assert (=> b!4079421 m!4687233))

(assert (=> d!1211608 d!1211846))

(declare-fun d!1211848 () Bool)

(assert (=> d!1211848 (= (isEmpty!26093 (tail!6353 p!2988)) ((_ is Nil!43676) (tail!6353 p!2988)))))

(assert (=> b!4079069 d!1211848))

(declare-fun d!1211850 () Bool)

(assert (=> d!1211850 (= (tail!6353 p!2988) (t!337535 p!2988))))

(assert (=> b!4079069 d!1211850))

(declare-fun d!1211852 () Bool)

(declare-fun lt!1459720 () Int)

(assert (=> d!1211852 (>= lt!1459720 0)))

(declare-fun e!2531944 () Int)

(assert (=> d!1211852 (= lt!1459720 e!2531944)))

(declare-fun c!703586 () Bool)

(assert (=> d!1211852 (= c!703586 ((_ is Nil!43676) (_2!24457 (get!14321 lt!1459457))))))

(assert (=> d!1211852 (= (size!32626 (_2!24457 (get!14321 lt!1459457))) lt!1459720)))

(declare-fun b!4079423 () Bool)

(assert (=> b!4079423 (= e!2531944 0)))

(declare-fun b!4079424 () Bool)

(assert (=> b!4079424 (= e!2531944 (+ 1 (size!32626 (t!337535 (_2!24457 (get!14321 lt!1459457))))))))

(assert (= (and d!1211852 c!703586) b!4079423))

(assert (= (and d!1211852 (not c!703586)) b!4079424))

(declare-fun m!4687385 () Bool)

(assert (=> b!4079424 m!4687385))

(assert (=> b!4079014 d!1211852))

(assert (=> b!4079014 d!1211704))

(assert (=> b!4079014 d!1211734))

(declare-fun b!4079425 () Bool)

(declare-fun e!2531950 () Bool)

(assert (=> b!4079425 (= e!2531950 (nullable!4208 (derivativeStep!3609 (regex!7042 r!4213) (head!8619 p!2988))))))

(declare-fun d!1211854 () Bool)

(declare-fun e!2531948 () Bool)

(assert (=> d!1211854 e!2531948))

(declare-fun c!703589 () Bool)

(assert (=> d!1211854 (= c!703589 ((_ is EmptyExpr!11947) (derivativeStep!3609 (regex!7042 r!4213) (head!8619 p!2988))))))

(declare-fun lt!1459721 () Bool)

(assert (=> d!1211854 (= lt!1459721 e!2531950)))

(declare-fun c!703587 () Bool)

(assert (=> d!1211854 (= c!703587 (isEmpty!26093 (tail!6353 p!2988)))))

(assert (=> d!1211854 (validRegex!5408 (derivativeStep!3609 (regex!7042 r!4213) (head!8619 p!2988)))))

(assert (=> d!1211854 (= (matchR!5892 (derivativeStep!3609 (regex!7042 r!4213) (head!8619 p!2988)) (tail!6353 p!2988)) lt!1459721)))

(declare-fun b!4079426 () Bool)

(declare-fun res!1666535 () Bool)

(declare-fun e!2531951 () Bool)

(assert (=> b!4079426 (=> (not res!1666535) (not e!2531951))))

(declare-fun call!288629 () Bool)

(assert (=> b!4079426 (= res!1666535 (not call!288629))))

(declare-fun b!4079427 () Bool)

(declare-fun e!2531947 () Bool)

(declare-fun e!2531949 () Bool)

(assert (=> b!4079427 (= e!2531947 e!2531949)))

(declare-fun res!1666540 () Bool)

(assert (=> b!4079427 (=> (not res!1666540) (not e!2531949))))

(assert (=> b!4079427 (= res!1666540 (not lt!1459721))))

(declare-fun b!4079428 () Bool)

(declare-fun e!2531946 () Bool)

(assert (=> b!4079428 (= e!2531949 e!2531946)))

(declare-fun res!1666539 () Bool)

(assert (=> b!4079428 (=> res!1666539 e!2531946)))

(assert (=> b!4079428 (= res!1666539 call!288629)))

(declare-fun b!4079429 () Bool)

(assert (=> b!4079429 (= e!2531948 (= lt!1459721 call!288629))))

(declare-fun b!4079430 () Bool)

(declare-fun e!2531945 () Bool)

(assert (=> b!4079430 (= e!2531945 (not lt!1459721))))

(declare-fun bm!288624 () Bool)

(assert (=> bm!288624 (= call!288629 (isEmpty!26093 (tail!6353 p!2988)))))

(declare-fun b!4079431 () Bool)

(assert (=> b!4079431 (= e!2531946 (not (= (head!8619 (tail!6353 p!2988)) (c!703468 (derivativeStep!3609 (regex!7042 r!4213) (head!8619 p!2988))))))))

(declare-fun b!4079432 () Bool)

(assert (=> b!4079432 (= e!2531948 e!2531945)))

(declare-fun c!703588 () Bool)

(assert (=> b!4079432 (= c!703588 ((_ is EmptyLang!11947) (derivativeStep!3609 (regex!7042 r!4213) (head!8619 p!2988))))))

(declare-fun b!4079433 () Bool)

(declare-fun res!1666541 () Bool)

(assert (=> b!4079433 (=> (not res!1666541) (not e!2531951))))

(assert (=> b!4079433 (= res!1666541 (isEmpty!26093 (tail!6353 (tail!6353 p!2988))))))

(declare-fun b!4079434 () Bool)

(declare-fun res!1666537 () Bool)

(assert (=> b!4079434 (=> res!1666537 e!2531946)))

(assert (=> b!4079434 (= res!1666537 (not (isEmpty!26093 (tail!6353 (tail!6353 p!2988)))))))

(declare-fun b!4079435 () Bool)

(declare-fun res!1666536 () Bool)

(assert (=> b!4079435 (=> res!1666536 e!2531947)))

(assert (=> b!4079435 (= res!1666536 (not ((_ is ElementMatch!11947) (derivativeStep!3609 (regex!7042 r!4213) (head!8619 p!2988)))))))

(assert (=> b!4079435 (= e!2531945 e!2531947)))

(declare-fun b!4079436 () Bool)

(assert (=> b!4079436 (= e!2531951 (= (head!8619 (tail!6353 p!2988)) (c!703468 (derivativeStep!3609 (regex!7042 r!4213) (head!8619 p!2988)))))))

(declare-fun b!4079437 () Bool)

(declare-fun res!1666538 () Bool)

(assert (=> b!4079437 (=> res!1666538 e!2531947)))

(assert (=> b!4079437 (= res!1666538 e!2531951)))

(declare-fun res!1666542 () Bool)

(assert (=> b!4079437 (=> (not res!1666542) (not e!2531951))))

(assert (=> b!4079437 (= res!1666542 lt!1459721)))

(declare-fun b!4079438 () Bool)

(assert (=> b!4079438 (= e!2531950 (matchR!5892 (derivativeStep!3609 (derivativeStep!3609 (regex!7042 r!4213) (head!8619 p!2988)) (head!8619 (tail!6353 p!2988))) (tail!6353 (tail!6353 p!2988))))))

(assert (= (and d!1211854 c!703587) b!4079425))

(assert (= (and d!1211854 (not c!703587)) b!4079438))

(assert (= (and d!1211854 c!703589) b!4079429))

(assert (= (and d!1211854 (not c!703589)) b!4079432))

(assert (= (and b!4079432 c!703588) b!4079430))

(assert (= (and b!4079432 (not c!703588)) b!4079435))

(assert (= (and b!4079435 (not res!1666536)) b!4079437))

(assert (= (and b!4079437 res!1666542) b!4079426))

(assert (= (and b!4079426 res!1666535) b!4079433))

(assert (= (and b!4079433 res!1666541) b!4079436))

(assert (= (and b!4079437 (not res!1666538)) b!4079427))

(assert (= (and b!4079427 res!1666540) b!4079428))

(assert (= (and b!4079428 (not res!1666539)) b!4079434))

(assert (= (and b!4079434 (not res!1666537)) b!4079431))

(assert (= (or b!4079429 b!4079426 b!4079428) bm!288624))

(assert (=> d!1211854 m!4686971))

(assert (=> d!1211854 m!4686973))

(assert (=> d!1211854 m!4686975))

(declare-fun m!4687405 () Bool)

(assert (=> d!1211854 m!4687405))

(assert (=> b!4079431 m!4686971))

(declare-fun m!4687407 () Bool)

(assert (=> b!4079431 m!4687407))

(assert (=> b!4079425 m!4686975))

(declare-fun m!4687409 () Bool)

(assert (=> b!4079425 m!4687409))

(assert (=> b!4079433 m!4686971))

(declare-fun m!4687411 () Bool)

(assert (=> b!4079433 m!4687411))

(assert (=> b!4079433 m!4687411))

(declare-fun m!4687413 () Bool)

(assert (=> b!4079433 m!4687413))

(assert (=> b!4079438 m!4686971))

(assert (=> b!4079438 m!4687407))

(assert (=> b!4079438 m!4686975))

(assert (=> b!4079438 m!4687407))

(declare-fun m!4687415 () Bool)

(assert (=> b!4079438 m!4687415))

(assert (=> b!4079438 m!4686971))

(assert (=> b!4079438 m!4687411))

(assert (=> b!4079438 m!4687415))

(assert (=> b!4079438 m!4687411))

(declare-fun m!4687417 () Bool)

(assert (=> b!4079438 m!4687417))

(assert (=> bm!288624 m!4686971))

(assert (=> bm!288624 m!4686973))

(assert (=> b!4079434 m!4686971))

(assert (=> b!4079434 m!4687411))

(assert (=> b!4079434 m!4687411))

(assert (=> b!4079434 m!4687413))

(assert (=> b!4079436 m!4686971))

(assert (=> b!4079436 m!4687407))

(assert (=> b!4079073 d!1211854))

(declare-fun b!4079476 () Bool)

(declare-fun e!2531973 () Regex!11947)

(assert (=> b!4079476 (= e!2531973 (ite (= (head!8619 p!2988) (c!703468 (regex!7042 r!4213))) EmptyExpr!11947 EmptyLang!11947))))

(declare-fun b!4079477 () Bool)

(declare-fun e!2531975 () Regex!11947)

(declare-fun call!288639 () Regex!11947)

(assert (=> b!4079477 (= e!2531975 (Concat!19220 call!288639 (regex!7042 r!4213)))))

(declare-fun b!4079478 () Bool)

(declare-fun e!2531972 () Regex!11947)

(assert (=> b!4079478 (= e!2531972 e!2531973)))

(declare-fun c!703606 () Bool)

(assert (=> b!4079478 (= c!703606 ((_ is ElementMatch!11947) (regex!7042 r!4213)))))

(declare-fun b!4079479 () Bool)

(declare-fun e!2531976 () Regex!11947)

(declare-fun call!288640 () Regex!11947)

(declare-fun call!288641 () Regex!11947)

(assert (=> b!4079479 (= e!2531976 (Union!11947 call!288640 call!288641))))

(declare-fun b!4079480 () Bool)

(declare-fun c!703604 () Bool)

(assert (=> b!4079480 (= c!703604 (nullable!4208 (regOne!24406 (regex!7042 r!4213))))))

(declare-fun e!2531974 () Regex!11947)

(assert (=> b!4079480 (= e!2531975 e!2531974)))

(declare-fun b!4079481 () Bool)

(assert (=> b!4079481 (= e!2531972 EmptyLang!11947)))

(declare-fun b!4079482 () Bool)

(declare-fun c!703603 () Bool)

(assert (=> b!4079482 (= c!703603 ((_ is Union!11947) (regex!7042 r!4213)))))

(assert (=> b!4079482 (= e!2531973 e!2531976)))

(declare-fun b!4079483 () Bool)

(assert (=> b!4079483 (= e!2531976 e!2531975)))

(declare-fun c!703607 () Bool)

(assert (=> b!4079483 (= c!703607 ((_ is Star!11947) (regex!7042 r!4213)))))

(declare-fun d!1211862 () Bool)

(declare-fun lt!1459728 () Regex!11947)

(assert (=> d!1211862 (validRegex!5408 lt!1459728)))

(assert (=> d!1211862 (= lt!1459728 e!2531972)))

(declare-fun c!703605 () Bool)

(assert (=> d!1211862 (= c!703605 (or ((_ is EmptyExpr!11947) (regex!7042 r!4213)) ((_ is EmptyLang!11947) (regex!7042 r!4213))))))

(assert (=> d!1211862 (validRegex!5408 (regex!7042 r!4213))))

(assert (=> d!1211862 (= (derivativeStep!3609 (regex!7042 r!4213) (head!8619 p!2988)) lt!1459728)))

(declare-fun bm!288634 () Bool)

(declare-fun call!288642 () Regex!11947)

(assert (=> bm!288634 (= call!288642 call!288639)))

(declare-fun b!4079484 () Bool)

(assert (=> b!4079484 (= e!2531974 (Union!11947 (Concat!19220 call!288642 (regTwo!24406 (regex!7042 r!4213))) EmptyLang!11947))))

(declare-fun bm!288635 () Bool)

(assert (=> bm!288635 (= call!288640 (derivativeStep!3609 (ite c!703603 (regOne!24407 (regex!7042 r!4213)) (regTwo!24406 (regex!7042 r!4213))) (head!8619 p!2988)))))

(declare-fun bm!288636 () Bool)

(assert (=> bm!288636 (= call!288641 (derivativeStep!3609 (ite c!703603 (regTwo!24407 (regex!7042 r!4213)) (ite c!703607 (reg!12276 (regex!7042 r!4213)) (regOne!24406 (regex!7042 r!4213)))) (head!8619 p!2988)))))

(declare-fun bm!288637 () Bool)

(assert (=> bm!288637 (= call!288639 call!288641)))

(declare-fun b!4079485 () Bool)

(assert (=> b!4079485 (= e!2531974 (Union!11947 (Concat!19220 call!288642 (regTwo!24406 (regex!7042 r!4213))) call!288640))))

(assert (= (and d!1211862 c!703605) b!4079481))

(assert (= (and d!1211862 (not c!703605)) b!4079478))

(assert (= (and b!4079478 c!703606) b!4079476))

(assert (= (and b!4079478 (not c!703606)) b!4079482))

(assert (= (and b!4079482 c!703603) b!4079479))

(assert (= (and b!4079482 (not c!703603)) b!4079483))

(assert (= (and b!4079483 c!703607) b!4079477))

(assert (= (and b!4079483 (not c!703607)) b!4079480))

(assert (= (and b!4079480 c!703604) b!4079485))

(assert (= (and b!4079480 (not c!703604)) b!4079484))

(assert (= (or b!4079485 b!4079484) bm!288634))

(assert (= (or b!4079477 bm!288634) bm!288637))

(assert (= (or b!4079479 b!4079485) bm!288635))

(assert (= (or b!4079479 bm!288637) bm!288636))

(declare-fun m!4687435 () Bool)

(assert (=> b!4079480 m!4687435))

(declare-fun m!4687437 () Bool)

(assert (=> d!1211862 m!4687437))

(assert (=> d!1211862 m!4686965))

(assert (=> bm!288635 m!4686967))

(declare-fun m!4687439 () Bool)

(assert (=> bm!288635 m!4687439))

(assert (=> bm!288636 m!4686967))

(declare-fun m!4687441 () Bool)

(assert (=> bm!288636 m!4687441))

(assert (=> b!4079073 d!1211862))

(declare-fun d!1211870 () Bool)

(assert (=> d!1211870 (= (head!8619 p!2988) (h!49096 p!2988))))

(assert (=> b!4079073 d!1211870))

(assert (=> b!4079073 d!1211850))

(assert (=> b!4079071 d!1211870))

(declare-fun b!4079497 () Bool)

(declare-fun res!1666556 () Bool)

(declare-fun e!2531984 () Bool)

(assert (=> b!4079497 (=> res!1666556 e!2531984)))

(assert (=> b!4079497 (= res!1666556 (not ((_ is IntegerValue!21818) (dynLambda!18581 (toValue!9610 (transformation!7042 r!4213)) lt!1459362))))))

(declare-fun e!2531986 () Bool)

(assert (=> b!4079497 (= e!2531986 e!2531984)))

(declare-fun b!4079498 () Bool)

(declare-fun e!2531985 () Bool)

(assert (=> b!4079498 (= e!2531985 e!2531986)))

(declare-fun c!703612 () Bool)

(assert (=> b!4079498 (= c!703612 ((_ is IntegerValue!21817) (dynLambda!18581 (toValue!9610 (transformation!7042 r!4213)) lt!1459362)))))

(declare-fun b!4079499 () Bool)

(declare-fun inv!16 (TokenValue!7272) Bool)

(assert (=> b!4079499 (= e!2531985 (inv!16 (dynLambda!18581 (toValue!9610 (transformation!7042 r!4213)) lt!1459362)))))

(declare-fun d!1211872 () Bool)

(declare-fun c!703613 () Bool)

(assert (=> d!1211872 (= c!703613 ((_ is IntegerValue!21816) (dynLambda!18581 (toValue!9610 (transformation!7042 r!4213)) lt!1459362)))))

(assert (=> d!1211872 (= (inv!21 (dynLambda!18581 (toValue!9610 (transformation!7042 r!4213)) lt!1459362)) e!2531985)))

(declare-fun b!4079500 () Bool)

(declare-fun inv!15 (TokenValue!7272) Bool)

(assert (=> b!4079500 (= e!2531984 (inv!15 (dynLambda!18581 (toValue!9610 (transformation!7042 r!4213)) lt!1459362)))))

(declare-fun b!4079501 () Bool)

(declare-fun inv!17 (TokenValue!7272) Bool)

(assert (=> b!4079501 (= e!2531986 (inv!17 (dynLambda!18581 (toValue!9610 (transformation!7042 r!4213)) lt!1459362)))))

(assert (= (and d!1211872 c!703613) b!4079499))

(assert (= (and d!1211872 (not c!703613)) b!4079498))

(assert (= (and b!4079498 c!703612) b!4079501))

(assert (= (and b!4079498 (not c!703612)) b!4079497))

(assert (= (and b!4079497 (not res!1666556)) b!4079500))

(declare-fun m!4687451 () Bool)

(assert (=> b!4079499 m!4687451))

(declare-fun m!4687453 () Bool)

(assert (=> b!4079500 m!4687453))

(declare-fun m!4687455 () Bool)

(assert (=> b!4079501 m!4687455))

(assert (=> tb!244961 d!1211872))

(declare-fun d!1211876 () Bool)

(declare-fun lt!1459732 () Int)

(assert (=> d!1211876 (>= lt!1459732 0)))

(declare-fun e!2531991 () Int)

(assert (=> d!1211876 (= lt!1459732 e!2531991)))

(declare-fun c!703616 () Bool)

(assert (=> d!1211876 (= c!703616 ((_ is Nil!43676) (t!337535 p!2988)))))

(assert (=> d!1211876 (= (size!32626 (t!337535 p!2988)) lt!1459732)))

(declare-fun b!4079508 () Bool)

(assert (=> b!4079508 (= e!2531991 0)))

(declare-fun b!4079509 () Bool)

(assert (=> b!4079509 (= e!2531991 (+ 1 (size!32626 (t!337535 (t!337535 p!2988)))))))

(assert (= (and d!1211876 c!703616) b!4079508))

(assert (= (and d!1211876 (not c!703616)) b!4079509))

(declare-fun m!4687457 () Bool)

(assert (=> b!4079509 m!4687457))

(assert (=> b!4079028 d!1211876))

(declare-fun bs!592850 () Bool)

(declare-fun d!1211878 () Bool)

(assert (= bs!592850 (and d!1211878 d!1211640)))

(declare-fun lambda!127763 () Int)

(assert (=> bs!592850 (= lambda!127763 lambda!127735)))

(declare-fun bs!592851 () Bool)

(assert (= bs!592851 (and d!1211878 d!1211736)))

(assert (=> bs!592851 (= (and (= (toChars!9469 (transformation!7042 r!4213)) (toChars!9469 (transformation!7042 (h!49097 rules!3870)))) (= (toValue!9610 (transformation!7042 r!4213)) (toValue!9610 (transformation!7042 (h!49097 rules!3870))))) (= lambda!127763 lambda!127755))))

(declare-fun bs!592852 () Bool)

(assert (= bs!592852 (and d!1211878 d!1211830)))

(assert (=> bs!592852 (= (and (= (toChars!9469 (transformation!7042 r!4213)) (toChars!9469 (transformation!7042 (h!49097 rules!3870)))) (= (toValue!9610 (transformation!7042 r!4213)) (toValue!9610 (transformation!7042 (h!49097 rules!3870))))) (= lambda!127763 lambda!127762))))

(assert (=> d!1211878 true))

(assert (=> d!1211878 (< (dynLambda!18584 order!22851 (toChars!9469 (transformation!7042 r!4213))) (dynLambda!18583 order!22849 lambda!127763))))

(assert (=> d!1211878 true))

(assert (=> d!1211878 (< (dynLambda!18582 order!22847 (toValue!9610 (transformation!7042 r!4213))) (dynLambda!18583 order!22849 lambda!127763))))

(assert (=> d!1211878 (= (semiInverseModEq!3016 (toChars!9469 (transformation!7042 r!4213)) (toValue!9610 (transformation!7042 r!4213))) (Forall!1505 lambda!127763))))

(declare-fun bs!592853 () Bool)

(assert (= bs!592853 d!1211878))

(declare-fun m!4687463 () Bool)

(assert (=> bs!592853 m!4687463))

(assert (=> d!1211684 d!1211878))

(declare-fun d!1211882 () Bool)

(declare-fun e!2531996 () Bool)

(assert (=> d!1211882 e!2531996))

(declare-fun res!1666562 () Bool)

(assert (=> d!1211882 (=> (not res!1666562) (not e!2531996))))

(declare-fun lt!1459735 () BalanceConc!26100)

(assert (=> d!1211882 (= res!1666562 (= (list!16240 lt!1459735) p!2988))))

(declare-fun fromList!874 (List!43800) Conc!13253)

(assert (=> d!1211882 (= lt!1459735 (BalanceConc!26101 (fromList!874 p!2988)))))

(assert (=> d!1211882 (= (fromListB!2402 p!2988) lt!1459735)))

(declare-fun b!4079515 () Bool)

(assert (=> b!4079515 (= e!2531996 (isBalanced!3694 (fromList!874 p!2988)))))

(assert (= (and d!1211882 res!1666562) b!4079515))

(declare-fun m!4687467 () Bool)

(assert (=> d!1211882 m!4687467))

(declare-fun m!4687469 () Bool)

(assert (=> d!1211882 m!4687469))

(assert (=> b!4079515 m!4687469))

(assert (=> b!4079515 m!4687469))

(declare-fun m!4687471 () Bool)

(assert (=> b!4079515 m!4687471))

(assert (=> d!1211666 d!1211882))

(declare-fun d!1211890 () Bool)

(declare-fun res!1666563 () Bool)

(declare-fun e!2531997 () Bool)

(assert (=> d!1211890 (=> res!1666563 e!2531997)))

(assert (=> d!1211890 (= res!1666563 ((_ is Nil!43677) (t!337536 rules!3870)))))

(assert (=> d!1211890 (= (noDuplicateTag!2751 thiss!26199 (t!337536 rules!3870) Nil!43679) e!2531997)))

(declare-fun b!4079516 () Bool)

(declare-fun e!2531998 () Bool)

(assert (=> b!4079516 (= e!2531997 e!2531998)))

(declare-fun res!1666564 () Bool)

(assert (=> b!4079516 (=> (not res!1666564) (not e!2531998))))

(assert (=> b!4079516 (= res!1666564 (not (contains!8712 Nil!43679 (tag!7902 (h!49097 (t!337536 rules!3870))))))))

(declare-fun b!4079517 () Bool)

(assert (=> b!4079517 (= e!2531998 (noDuplicateTag!2751 thiss!26199 (t!337536 (t!337536 rules!3870)) (Cons!43679 (tag!7902 (h!49097 (t!337536 rules!3870))) Nil!43679)))))

(assert (= (and d!1211890 (not res!1666563)) b!4079516))

(assert (= (and b!4079516 res!1666564) b!4079517))

(declare-fun m!4687473 () Bool)

(assert (=> b!4079516 m!4687473))

(declare-fun m!4687475 () Bool)

(assert (=> b!4079517 m!4687475))

(assert (=> b!4078887 d!1211890))

(declare-fun bs!592855 () Bool)

(declare-fun d!1211892 () Bool)

(assert (= bs!592855 (and d!1211892 d!1211680)))

(declare-fun lambda!127766 () Int)

(assert (=> bs!592855 (= lambda!127766 lambda!127741)))

(assert (=> d!1211892 true))

(declare-fun lt!1459738 () Bool)

(assert (=> d!1211892 (= lt!1459738 (rulesValidInductive!2591 thiss!26199 rules!3870))))

(assert (=> d!1211892 (= lt!1459738 (forall!8398 rules!3870 lambda!127766))))

(assert (=> d!1211892 (= (rulesValid!2750 thiss!26199 rules!3870) lt!1459738)))

(declare-fun bs!592856 () Bool)

(assert (= bs!592856 d!1211892))

(assert (=> bs!592856 m!4686951))

(declare-fun m!4687477 () Bool)

(assert (=> bs!592856 m!4687477))

(assert (=> d!1211636 d!1211892))

(assert (=> d!1211678 d!1211676))

(declare-fun d!1211894 () Bool)

(assert (=> d!1211894 (ruleValid!2966 thiss!26199 r!4213)))

(assert (=> d!1211894 true))

(declare-fun _$65!1552 () Unit!63211)

(assert (=> d!1211894 (= (choose!24904 thiss!26199 r!4213 rules!3870) _$65!1552)))

(declare-fun bs!592857 () Bool)

(assert (= bs!592857 d!1211894))

(assert (=> bs!592857 m!4686675))

(assert (=> d!1211678 d!1211894))

(assert (=> d!1211678 d!1211686))

(declare-fun b!4079518 () Bool)

(declare-fun e!2532004 () Bool)

(assert (=> b!4079518 (= e!2532004 (nullable!4208 (regex!7042 (rule!10156 (_1!24457 (get!14321 lt!1459457))))))))

(declare-fun d!1211896 () Bool)

(declare-fun e!2532002 () Bool)

(assert (=> d!1211896 e!2532002))

(declare-fun c!703621 () Bool)

(assert (=> d!1211896 (= c!703621 ((_ is EmptyExpr!11947) (regex!7042 (rule!10156 (_1!24457 (get!14321 lt!1459457))))))))

(declare-fun lt!1459739 () Bool)

(assert (=> d!1211896 (= lt!1459739 e!2532004)))

(declare-fun c!703619 () Bool)

(assert (=> d!1211896 (= c!703619 (isEmpty!26093 (list!16240 (charsOf!4824 (_1!24457 (get!14321 lt!1459457))))))))

(assert (=> d!1211896 (validRegex!5408 (regex!7042 (rule!10156 (_1!24457 (get!14321 lt!1459457)))))))

(assert (=> d!1211896 (= (matchR!5892 (regex!7042 (rule!10156 (_1!24457 (get!14321 lt!1459457)))) (list!16240 (charsOf!4824 (_1!24457 (get!14321 lt!1459457))))) lt!1459739)))

(declare-fun b!4079519 () Bool)

(declare-fun res!1666565 () Bool)

(declare-fun e!2532005 () Bool)

(assert (=> b!4079519 (=> (not res!1666565) (not e!2532005))))

(declare-fun call!288643 () Bool)

(assert (=> b!4079519 (= res!1666565 (not call!288643))))

(declare-fun b!4079520 () Bool)

(declare-fun e!2532001 () Bool)

(declare-fun e!2532003 () Bool)

(assert (=> b!4079520 (= e!2532001 e!2532003)))

(declare-fun res!1666570 () Bool)

(assert (=> b!4079520 (=> (not res!1666570) (not e!2532003))))

(assert (=> b!4079520 (= res!1666570 (not lt!1459739))))

(declare-fun b!4079521 () Bool)

(declare-fun e!2532000 () Bool)

(assert (=> b!4079521 (= e!2532003 e!2532000)))

(declare-fun res!1666569 () Bool)

(assert (=> b!4079521 (=> res!1666569 e!2532000)))

(assert (=> b!4079521 (= res!1666569 call!288643)))

(declare-fun b!4079522 () Bool)

(assert (=> b!4079522 (= e!2532002 (= lt!1459739 call!288643))))

(declare-fun b!4079523 () Bool)

(declare-fun e!2531999 () Bool)

(assert (=> b!4079523 (= e!2531999 (not lt!1459739))))

(declare-fun bm!288638 () Bool)

(assert (=> bm!288638 (= call!288643 (isEmpty!26093 (list!16240 (charsOf!4824 (_1!24457 (get!14321 lt!1459457))))))))

(declare-fun b!4079524 () Bool)

(assert (=> b!4079524 (= e!2532000 (not (= (head!8619 (list!16240 (charsOf!4824 (_1!24457 (get!14321 lt!1459457))))) (c!703468 (regex!7042 (rule!10156 (_1!24457 (get!14321 lt!1459457))))))))))

(declare-fun b!4079525 () Bool)

(assert (=> b!4079525 (= e!2532002 e!2531999)))

(declare-fun c!703620 () Bool)

(assert (=> b!4079525 (= c!703620 ((_ is EmptyLang!11947) (regex!7042 (rule!10156 (_1!24457 (get!14321 lt!1459457))))))))

(declare-fun b!4079526 () Bool)

(declare-fun res!1666571 () Bool)

(assert (=> b!4079526 (=> (not res!1666571) (not e!2532005))))

(assert (=> b!4079526 (= res!1666571 (isEmpty!26093 (tail!6353 (list!16240 (charsOf!4824 (_1!24457 (get!14321 lt!1459457)))))))))

(declare-fun b!4079527 () Bool)

(declare-fun res!1666567 () Bool)

(assert (=> b!4079527 (=> res!1666567 e!2532000)))

(assert (=> b!4079527 (= res!1666567 (not (isEmpty!26093 (tail!6353 (list!16240 (charsOf!4824 (_1!24457 (get!14321 lt!1459457))))))))))

(declare-fun b!4079528 () Bool)

(declare-fun res!1666566 () Bool)

(assert (=> b!4079528 (=> res!1666566 e!2532001)))

(assert (=> b!4079528 (= res!1666566 (not ((_ is ElementMatch!11947) (regex!7042 (rule!10156 (_1!24457 (get!14321 lt!1459457)))))))))

(assert (=> b!4079528 (= e!2531999 e!2532001)))

(declare-fun b!4079529 () Bool)

(assert (=> b!4079529 (= e!2532005 (= (head!8619 (list!16240 (charsOf!4824 (_1!24457 (get!14321 lt!1459457))))) (c!703468 (regex!7042 (rule!10156 (_1!24457 (get!14321 lt!1459457)))))))))

(declare-fun b!4079530 () Bool)

(declare-fun res!1666568 () Bool)

(assert (=> b!4079530 (=> res!1666568 e!2532001)))

(assert (=> b!4079530 (= res!1666568 e!2532005)))

(declare-fun res!1666572 () Bool)

(assert (=> b!4079530 (=> (not res!1666572) (not e!2532005))))

(assert (=> b!4079530 (= res!1666572 lt!1459739)))

(declare-fun b!4079531 () Bool)

(assert (=> b!4079531 (= e!2532004 (matchR!5892 (derivativeStep!3609 (regex!7042 (rule!10156 (_1!24457 (get!14321 lt!1459457)))) (head!8619 (list!16240 (charsOf!4824 (_1!24457 (get!14321 lt!1459457)))))) (tail!6353 (list!16240 (charsOf!4824 (_1!24457 (get!14321 lt!1459457)))))))))

(assert (= (and d!1211896 c!703619) b!4079518))

(assert (= (and d!1211896 (not c!703619)) b!4079531))

(assert (= (and d!1211896 c!703621) b!4079522))

(assert (= (and d!1211896 (not c!703621)) b!4079525))

(assert (= (and b!4079525 c!703620) b!4079523))

(assert (= (and b!4079525 (not c!703620)) b!4079528))

(assert (= (and b!4079528 (not res!1666566)) b!4079530))

(assert (= (and b!4079530 res!1666572) b!4079519))

(assert (= (and b!4079519 res!1666565) b!4079526))

(assert (= (and b!4079526 res!1666571) b!4079529))

(assert (= (and b!4079530 (not res!1666568)) b!4079520))

(assert (= (and b!4079520 res!1666570) b!4079521))

(assert (= (and b!4079521 (not res!1666569)) b!4079527))

(assert (= (and b!4079527 (not res!1666567)) b!4079524))

(assert (= (or b!4079522 b!4079519 b!4079521) bm!288638))

(assert (=> d!1211896 m!4686935))

(declare-fun m!4687479 () Bool)

(assert (=> d!1211896 m!4687479))

(declare-fun m!4687481 () Bool)

(assert (=> d!1211896 m!4687481))

(assert (=> b!4079524 m!4686935))

(declare-fun m!4687483 () Bool)

(assert (=> b!4079524 m!4687483))

(declare-fun m!4687485 () Bool)

(assert (=> b!4079518 m!4687485))

(assert (=> b!4079526 m!4686935))

(declare-fun m!4687487 () Bool)

(assert (=> b!4079526 m!4687487))

(assert (=> b!4079526 m!4687487))

(declare-fun m!4687489 () Bool)

(assert (=> b!4079526 m!4687489))

(assert (=> b!4079531 m!4686935))

(assert (=> b!4079531 m!4687483))

(assert (=> b!4079531 m!4687483))

(declare-fun m!4687491 () Bool)

(assert (=> b!4079531 m!4687491))

(assert (=> b!4079531 m!4686935))

(assert (=> b!4079531 m!4687487))

(assert (=> b!4079531 m!4687491))

(assert (=> b!4079531 m!4687487))

(declare-fun m!4687493 () Bool)

(assert (=> b!4079531 m!4687493))

(assert (=> bm!288638 m!4686935))

(assert (=> bm!288638 m!4687479))

(assert (=> b!4079527 m!4686935))

(assert (=> b!4079527 m!4687487))

(assert (=> b!4079527 m!4687487))

(assert (=> b!4079527 m!4687489))

(assert (=> b!4079529 m!4686935))

(assert (=> b!4079529 m!4687483))

(assert (=> b!4079016 d!1211896))

(assert (=> b!4079016 d!1211704))

(assert (=> b!4079016 d!1211710))

(assert (=> b!4079016 d!1211712))

(declare-fun d!1211898 () Bool)

(assert (=> d!1211898 (= (list!16240 (dynLambda!18585 (toChars!9469 (transformation!7042 r!4213)) (dynLambda!18581 (toValue!9610 (transformation!7042 r!4213)) lt!1459362))) (list!16241 (c!703469 (dynLambda!18585 (toChars!9469 (transformation!7042 r!4213)) (dynLambda!18581 (toValue!9610 (transformation!7042 r!4213)) lt!1459362)))))))

(declare-fun bs!592858 () Bool)

(assert (= bs!592858 d!1211898))

(declare-fun m!4687495 () Bool)

(assert (=> bs!592858 m!4687495))

(assert (=> d!1211640 d!1211898))

(declare-fun d!1211900 () Bool)

(assert (=> d!1211900 (= (list!16240 lt!1459362) (list!16241 (c!703469 lt!1459362)))))

(declare-fun bs!592859 () Bool)

(assert (= bs!592859 d!1211900))

(declare-fun m!4687497 () Bool)

(assert (=> bs!592859 m!4687497))

(assert (=> d!1211640 d!1211900))

(declare-fun d!1211902 () Bool)

(declare-fun dynLambda!18596 (Int BalanceConc!26100) Bool)

(assert (=> d!1211902 (dynLambda!18596 lambda!127735 lt!1459362)))

(declare-fun lt!1459758 () Unit!63211)

(declare-fun choose!24909 (Int BalanceConc!26100) Unit!63211)

(assert (=> d!1211902 (= lt!1459758 (choose!24909 lambda!127735 lt!1459362))))

(assert (=> d!1211902 (Forall!1505 lambda!127735)))

(assert (=> d!1211902 (= (ForallOf!854 lambda!127735 lt!1459362) lt!1459758)))

(declare-fun b_lambda!119267 () Bool)

(assert (=> (not b_lambda!119267) (not d!1211902)))

(declare-fun bs!592860 () Bool)

(assert (= bs!592860 d!1211902))

(declare-fun m!4687499 () Bool)

(assert (=> bs!592860 m!4687499))

(declare-fun m!4687501 () Bool)

(assert (=> bs!592860 m!4687501))

(declare-fun m!4687503 () Bool)

(assert (=> bs!592860 m!4687503))

(assert (=> d!1211640 d!1211902))

(assert (=> b!4079020 d!1211704))

(declare-fun d!1211904 () Bool)

(assert (=> d!1211904 (= (apply!10225 (transformation!7042 (rule!10156 (_1!24457 (get!14321 lt!1459457)))) (seqFromList!5259 (originalCharacters!7636 (_1!24457 (get!14321 lt!1459457))))) (dynLambda!18581 (toValue!9610 (transformation!7042 (rule!10156 (_1!24457 (get!14321 lt!1459457))))) (seqFromList!5259 (originalCharacters!7636 (_1!24457 (get!14321 lt!1459457))))))))

(declare-fun b_lambda!119269 () Bool)

(assert (=> (not b_lambda!119269) (not d!1211904)))

(declare-fun tb!245039 () Bool)

(declare-fun t!337618 () Bool)

(assert (=> (and b!4078744 (= (toValue!9610 (transformation!7042 r!4213)) (toValue!9610 (transformation!7042 (rule!10156 (_1!24457 (get!14321 lt!1459457)))))) t!337618) tb!245039))

(declare-fun result!297188 () Bool)

(assert (=> tb!245039 (= result!297188 (inv!21 (dynLambda!18581 (toValue!9610 (transformation!7042 (rule!10156 (_1!24457 (get!14321 lt!1459457))))) (seqFromList!5259 (originalCharacters!7636 (_1!24457 (get!14321 lt!1459457)))))))))

(declare-fun m!4687505 () Bool)

(assert (=> tb!245039 m!4687505))

(assert (=> d!1211904 t!337618))

(declare-fun b_and!313773 () Bool)

(assert (= b_and!313761 (and (=> t!337618 result!297188) b_and!313773)))

(declare-fun t!337620 () Bool)

(declare-fun tb!245041 () Bool)

(assert (=> (and b!4078746 (= (toValue!9610 (transformation!7042 (h!49097 rules!3870))) (toValue!9610 (transformation!7042 (rule!10156 (_1!24457 (get!14321 lt!1459457)))))) t!337620) tb!245041))

(declare-fun result!297190 () Bool)

(assert (= result!297190 result!297188))

(assert (=> d!1211904 t!337620))

(declare-fun b_and!313775 () Bool)

(assert (= b_and!313763 (and (=> t!337620 result!297190) b_and!313775)))

(declare-fun tb!245043 () Bool)

(declare-fun t!337622 () Bool)

(assert (=> (and b!4079124 (= (toValue!9610 (transformation!7042 (h!49097 (t!337536 rules!3870)))) (toValue!9610 (transformation!7042 (rule!10156 (_1!24457 (get!14321 lt!1459457)))))) t!337622) tb!245043))

(declare-fun result!297192 () Bool)

(assert (= result!297192 result!297188))

(assert (=> d!1211904 t!337622))

(declare-fun b_and!313777 () Bool)

(assert (= b_and!313765 (and (=> t!337622 result!297192) b_and!313777)))

(assert (=> d!1211904 m!4686953))

(declare-fun m!4687523 () Bool)

(assert (=> d!1211904 m!4687523))

(assert (=> b!4079020 d!1211904))

(declare-fun d!1211908 () Bool)

(assert (=> d!1211908 (= (seqFromList!5259 (originalCharacters!7636 (_1!24457 (get!14321 lt!1459457)))) (fromListB!2402 (originalCharacters!7636 (_1!24457 (get!14321 lt!1459457)))))))

(declare-fun bs!592862 () Bool)

(assert (= bs!592862 d!1211908))

(declare-fun m!4687525 () Bool)

(assert (=> bs!592862 m!4687525))

(assert (=> b!4079020 d!1211908))

(declare-fun d!1211911 () Bool)

(assert (=> d!1211911 (= (isDefined!7160 lt!1459457) (not (isEmpty!26092 lt!1459457)))))

(declare-fun bs!592863 () Bool)

(assert (= bs!592863 d!1211911))

(assert (=> bs!592863 m!4686945))

(assert (=> b!4079018 d!1211911))

(assert (=> d!1211634 d!1211632))

(declare-fun d!1211914 () Bool)

(assert (=> d!1211914 (rulesInvariant!5974 thiss!26199 (t!337536 rules!3870))))

(assert (=> d!1211914 true))

(declare-fun _$66!569 () Unit!63211)

(assert (=> d!1211914 (= (choose!24903 thiss!26199 (h!49097 rules!3870) (t!337536 rules!3870)) _$66!569)))

(declare-fun bs!592868 () Bool)

(assert (= bs!592868 d!1211914))

(assert (=> bs!592868 m!4686655))

(assert (=> d!1211634 d!1211914))

(declare-fun d!1211918 () Bool)

(declare-fun res!1666575 () Bool)

(declare-fun e!2532010 () Bool)

(assert (=> d!1211918 (=> (not res!1666575) (not e!2532010))))

(assert (=> d!1211918 (= res!1666575 (rulesValid!2750 thiss!26199 (Cons!43677 (h!49097 rules!3870) (t!337536 rules!3870))))))

(assert (=> d!1211918 (= (rulesInvariant!5974 thiss!26199 (Cons!43677 (h!49097 rules!3870) (t!337536 rules!3870))) e!2532010)))

(declare-fun b!4079538 () Bool)

(assert (=> b!4079538 (= e!2532010 (noDuplicateTag!2751 thiss!26199 (Cons!43677 (h!49097 rules!3870) (t!337536 rules!3870)) Nil!43679))))

(assert (= (and d!1211918 res!1666575) b!4079538))

(declare-fun m!4687529 () Bool)

(assert (=> d!1211918 m!4687529))

(declare-fun m!4687531 () Bool)

(assert (=> b!4079538 m!4687531))

(assert (=> d!1211634 d!1211918))

(declare-fun d!1211920 () Bool)

(assert (=> d!1211920 (= (isEmpty!26092 lt!1459457) (not ((_ is Some!9449) lt!1459457)))))

(assert (=> d!1211654 d!1211920))

(declare-fun b!4079570 () Bool)

(declare-fun res!1666595 () Bool)

(declare-fun e!2532028 () Bool)

(assert (=> b!4079570 (=> (not res!1666595) (not e!2532028))))

(assert (=> b!4079570 (= res!1666595 (= (head!8619 input!3411) (head!8619 input!3411)))))

(declare-fun b!4079572 () Bool)

(declare-fun e!2532030 () Bool)

(assert (=> b!4079572 (= e!2532030 (>= (size!32626 input!3411) (size!32626 input!3411)))))

(declare-fun b!4079569 () Bool)

(declare-fun e!2532029 () Bool)

(assert (=> b!4079569 (= e!2532029 e!2532028)))

(declare-fun res!1666597 () Bool)

(assert (=> b!4079569 (=> (not res!1666597) (not e!2532028))))

(assert (=> b!4079569 (= res!1666597 (not ((_ is Nil!43676) input!3411)))))

(declare-fun b!4079571 () Bool)

(assert (=> b!4079571 (= e!2532028 (isPrefix!4111 (tail!6353 input!3411) (tail!6353 input!3411)))))

(declare-fun d!1211922 () Bool)

(assert (=> d!1211922 e!2532030))

(declare-fun res!1666594 () Bool)

(assert (=> d!1211922 (=> res!1666594 e!2532030)))

(declare-fun lt!1459771 () Bool)

(assert (=> d!1211922 (= res!1666594 (not lt!1459771))))

(assert (=> d!1211922 (= lt!1459771 e!2532029)))

(declare-fun res!1666596 () Bool)

(assert (=> d!1211922 (=> res!1666596 e!2532029)))

(assert (=> d!1211922 (= res!1666596 ((_ is Nil!43676) input!3411))))

(assert (=> d!1211922 (= (isPrefix!4111 input!3411 input!3411) lt!1459771)))

(assert (= (and d!1211922 (not res!1666596)) b!4079569))

(assert (= (and b!4079569 res!1666597) b!4079570))

(assert (= (and b!4079570 res!1666595) b!4079571))

(assert (= (and d!1211922 (not res!1666594)) b!4079572))

(assert (=> b!4079570 m!4687207))

(assert (=> b!4079570 m!4687207))

(assert (=> b!4079572 m!4686785))

(assert (=> b!4079572 m!4686785))

(assert (=> b!4079571 m!4687249))

(assert (=> b!4079571 m!4687249))

(assert (=> b!4079571 m!4687249))

(assert (=> b!4079571 m!4687249))

(declare-fun m!4687567 () Bool)

(assert (=> b!4079571 m!4687567))

(assert (=> d!1211654 d!1211922))

(declare-fun d!1211938 () Bool)

(assert (=> d!1211938 (isPrefix!4111 input!3411 input!3411)))

(declare-fun lt!1459777 () Unit!63211)

(declare-fun choose!24910 (List!43800 List!43800) Unit!63211)

(assert (=> d!1211938 (= lt!1459777 (choose!24910 input!3411 input!3411))))

(assert (=> d!1211938 (= (lemmaIsPrefixRefl!2662 input!3411 input!3411) lt!1459777)))

(declare-fun bs!592876 () Bool)

(assert (= bs!592876 d!1211938))

(assert (=> bs!592876 m!4686947))

(declare-fun m!4687583 () Bool)

(assert (=> bs!592876 m!4687583))

(assert (=> d!1211654 d!1211938))

(declare-fun bs!592877 () Bool)

(declare-fun d!1211948 () Bool)

(assert (= bs!592877 (and d!1211948 d!1211680)))

(declare-fun lambda!127769 () Int)

(assert (=> bs!592877 (= lambda!127769 lambda!127741)))

(declare-fun bs!592878 () Bool)

(assert (= bs!592878 (and d!1211948 d!1211892)))

(assert (=> bs!592878 (= lambda!127769 lambda!127766)))

(assert (=> d!1211948 true))

(declare-fun lt!1459778 () Bool)

(assert (=> d!1211948 (= lt!1459778 (forall!8398 rules!3870 lambda!127769))))

(declare-fun e!2532036 () Bool)

(assert (=> d!1211948 (= lt!1459778 e!2532036)))

(declare-fun res!1666600 () Bool)

(assert (=> d!1211948 (=> res!1666600 e!2532036)))

(assert (=> d!1211948 (= res!1666600 (not ((_ is Cons!43677) rules!3870)))))

(assert (=> d!1211948 (= (rulesValidInductive!2591 thiss!26199 rules!3870) lt!1459778)))

(declare-fun b!4079578 () Bool)

(declare-fun e!2532034 () Bool)

(assert (=> b!4079578 (= e!2532036 e!2532034)))

(declare-fun res!1666598 () Bool)

(assert (=> b!4079578 (=> (not res!1666598) (not e!2532034))))

(assert (=> b!4079578 (= res!1666598 (ruleValid!2966 thiss!26199 (h!49097 rules!3870)))))

(declare-fun b!4079579 () Bool)

(assert (=> b!4079579 (= e!2532034 (rulesValidInductive!2591 thiss!26199 (t!337536 rules!3870)))))

(assert (= (and d!1211948 (not res!1666600)) b!4079578))

(assert (= (and b!4079578 res!1666598) b!4079579))

(declare-fun m!4687585 () Bool)

(assert (=> d!1211948 m!4687585))

(assert (=> b!4079578 m!4686823))

(assert (=> b!4079579 m!4686671))

(assert (=> d!1211654 d!1211948))

(declare-fun bs!592879 () Bool)

(declare-fun d!1211950 () Bool)

(assert (= bs!592879 (and d!1211950 d!1211680)))

(declare-fun lambda!127770 () Int)

(assert (=> bs!592879 (= lambda!127770 lambda!127741)))

(declare-fun bs!592880 () Bool)

(assert (= bs!592880 (and d!1211950 d!1211892)))

(assert (=> bs!592880 (= lambda!127770 lambda!127766)))

(declare-fun bs!592881 () Bool)

(assert (= bs!592881 (and d!1211950 d!1211948)))

(assert (=> bs!592881 (= lambda!127770 lambda!127769)))

(assert (=> d!1211950 true))

(declare-fun lt!1459780 () Bool)

(assert (=> d!1211950 (= lt!1459780 (forall!8398 (t!337536 (t!337536 rules!3870)) lambda!127770))))

(declare-fun e!2532044 () Bool)

(assert (=> d!1211950 (= lt!1459780 e!2532044)))

(declare-fun res!1666609 () Bool)

(assert (=> d!1211950 (=> res!1666609 e!2532044)))

(assert (=> d!1211950 (= res!1666609 (not ((_ is Cons!43677) (t!337536 (t!337536 rules!3870)))))))

(assert (=> d!1211950 (= (rulesValidInductive!2591 thiss!26199 (t!337536 (t!337536 rules!3870))) lt!1459780)))

(declare-fun b!4079594 () Bool)

(declare-fun e!2532043 () Bool)

(assert (=> b!4079594 (= e!2532044 e!2532043)))

(declare-fun res!1666608 () Bool)

(assert (=> b!4079594 (=> (not res!1666608) (not e!2532043))))

(assert (=> b!4079594 (= res!1666608 (ruleValid!2966 thiss!26199 (h!49097 (t!337536 (t!337536 rules!3870)))))))

(declare-fun b!4079595 () Bool)

(assert (=> b!4079595 (= e!2532043 (rulesValidInductive!2591 thiss!26199 (t!337536 (t!337536 (t!337536 rules!3870)))))))

(assert (= (and d!1211950 (not res!1666609)) b!4079594))

(assert (= (and b!4079594 res!1666608) b!4079595))

(declare-fun m!4687597 () Bool)

(assert (=> d!1211950 m!4687597))

(declare-fun m!4687599 () Bool)

(assert (=> b!4079594 m!4687599))

(declare-fun m!4687601 () Bool)

(assert (=> b!4079595 m!4687601))

(assert (=> b!4079085 d!1211950))

(declare-fun bs!592882 () Bool)

(declare-fun d!1211954 () Bool)

(assert (= bs!592882 (and d!1211954 d!1211680)))

(declare-fun lambda!127771 () Int)

(assert (=> bs!592882 (= lambda!127771 lambda!127741)))

(declare-fun bs!592883 () Bool)

(assert (= bs!592883 (and d!1211954 d!1211892)))

(assert (=> bs!592883 (= lambda!127771 lambda!127766)))

(declare-fun bs!592884 () Bool)

(assert (= bs!592884 (and d!1211954 d!1211948)))

(assert (=> bs!592884 (= lambda!127771 lambda!127769)))

(declare-fun bs!592885 () Bool)

(assert (= bs!592885 (and d!1211954 d!1211950)))

(assert (=> bs!592885 (= lambda!127771 lambda!127770)))

(assert (=> d!1211954 true))

(declare-fun lt!1459782 () Bool)

(assert (=> d!1211954 (= lt!1459782 (rulesValidInductive!2591 thiss!26199 (t!337536 rules!3870)))))

(assert (=> d!1211954 (= lt!1459782 (forall!8398 (t!337536 rules!3870) lambda!127771))))

(assert (=> d!1211954 (= (rulesValid!2750 thiss!26199 (t!337536 rules!3870)) lt!1459782)))

(declare-fun bs!592886 () Bool)

(assert (= bs!592886 d!1211954))

(assert (=> bs!592886 m!4686671))

(declare-fun m!4687615 () Bool)

(assert (=> bs!592886 m!4687615))

(assert (=> d!1211632 d!1211954))

(declare-fun d!1211958 () Bool)

(declare-fun lt!1459784 () Int)

(assert (=> d!1211958 (>= lt!1459784 0)))

(declare-fun e!2532048 () Int)

(assert (=> d!1211958 (= lt!1459784 e!2532048)))

(declare-fun c!703637 () Bool)

(assert (=> d!1211958 (= c!703637 ((_ is Nil!43676) lt!1459370))))

(assert (=> d!1211958 (= (size!32626 lt!1459370) lt!1459784)))

(declare-fun b!4079602 () Bool)

(assert (=> b!4079602 (= e!2532048 0)))

(declare-fun b!4079603 () Bool)

(assert (=> b!4079603 (= e!2532048 (+ 1 (size!32626 (t!337535 lt!1459370))))))

(assert (= (and d!1211958 c!703637) b!4079602))

(assert (= (and d!1211958 (not c!703637)) b!4079603))

(declare-fun m!4687618 () Bool)

(assert (=> b!4079603 m!4687618))

(assert (=> b!4078761 d!1211958))

(assert (=> b!4078761 d!1211664))

(declare-fun d!1211960 () Bool)

(declare-fun lt!1459785 () Int)

(assert (=> d!1211960 (>= lt!1459785 0)))

(declare-fun e!2532049 () Int)

(assert (=> d!1211960 (= lt!1459785 e!2532049)))

(declare-fun c!703638 () Bool)

(assert (=> d!1211960 (= c!703638 ((_ is Nil!43676) suffix!1518))))

(assert (=> d!1211960 (= (size!32626 suffix!1518) lt!1459785)))

(declare-fun b!4079604 () Bool)

(assert (=> b!4079604 (= e!2532049 0)))

(declare-fun b!4079605 () Bool)

(assert (=> b!4079605 (= e!2532049 (+ 1 (size!32626 (t!337535 suffix!1518))))))

(assert (= (and d!1211960 c!703638) b!4079604))

(assert (= (and d!1211960 (not c!703638)) b!4079605))

(declare-fun m!4687621 () Bool)

(assert (=> b!4079605 m!4687621))

(assert (=> b!4078761 d!1211960))

(declare-fun d!1211964 () Bool)

(declare-fun lt!1459786 () Int)

(assert (=> d!1211964 (>= lt!1459786 0)))

(declare-fun e!2532050 () Int)

(assert (=> d!1211964 (= lt!1459786 e!2532050)))

(declare-fun c!703639 () Bool)

(assert (=> d!1211964 (= c!703639 ((_ is Nil!43676) (_2!24457 (get!14321 lt!1459411))))))

(assert (=> d!1211964 (= (size!32626 (_2!24457 (get!14321 lt!1459411))) lt!1459786)))

(declare-fun b!4079606 () Bool)

(assert (=> b!4079606 (= e!2532050 0)))

(declare-fun b!4079607 () Bool)

(assert (=> b!4079607 (= e!2532050 (+ 1 (size!32626 (t!337535 (_2!24457 (get!14321 lt!1459411))))))))

(assert (= (and d!1211964 c!703639) b!4079606))

(assert (= (and d!1211964 (not c!703639)) b!4079607))

(declare-fun m!4687623 () Bool)

(assert (=> b!4079607 m!4687623))

(assert (=> b!4078873 d!1211964))

(assert (=> b!4078873 d!1211820))

(assert (=> b!4078873 d!1211734))

(assert (=> b!4078877 d!1211820))

(declare-fun b!4079608 () Bool)

(declare-fun e!2532056 () Bool)

(assert (=> b!4079608 (= e!2532056 (nullable!4208 (regex!7042 (h!49097 rules!3870))))))

(declare-fun d!1211966 () Bool)

(declare-fun e!2532054 () Bool)

(assert (=> d!1211966 e!2532054))

(declare-fun c!703642 () Bool)

(assert (=> d!1211966 (= c!703642 ((_ is EmptyExpr!11947) (regex!7042 (h!49097 rules!3870))))))

(declare-fun lt!1459787 () Bool)

(assert (=> d!1211966 (= lt!1459787 e!2532056)))

(declare-fun c!703640 () Bool)

(assert (=> d!1211966 (= c!703640 (isEmpty!26093 (_1!24459 (findLongestMatchInner!1435 (regex!7042 (h!49097 rules!3870)) Nil!43676 (size!32626 Nil!43676) input!3411 input!3411 (size!32626 input!3411)))))))

(assert (=> d!1211966 (validRegex!5408 (regex!7042 (h!49097 rules!3870)))))

(assert (=> d!1211966 (= (matchR!5892 (regex!7042 (h!49097 rules!3870)) (_1!24459 (findLongestMatchInner!1435 (regex!7042 (h!49097 rules!3870)) Nil!43676 (size!32626 Nil!43676) input!3411 input!3411 (size!32626 input!3411)))) lt!1459787)))

(declare-fun b!4079609 () Bool)

(declare-fun res!1666612 () Bool)

(declare-fun e!2532057 () Bool)

(assert (=> b!4079609 (=> (not res!1666612) (not e!2532057))))

(declare-fun call!288646 () Bool)

(assert (=> b!4079609 (= res!1666612 (not call!288646))))

(declare-fun b!4079610 () Bool)

(declare-fun e!2532053 () Bool)

(declare-fun e!2532055 () Bool)

(assert (=> b!4079610 (= e!2532053 e!2532055)))

(declare-fun res!1666617 () Bool)

(assert (=> b!4079610 (=> (not res!1666617) (not e!2532055))))

(assert (=> b!4079610 (= res!1666617 (not lt!1459787))))

(declare-fun b!4079611 () Bool)

(declare-fun e!2532052 () Bool)

(assert (=> b!4079611 (= e!2532055 e!2532052)))

(declare-fun res!1666616 () Bool)

(assert (=> b!4079611 (=> res!1666616 e!2532052)))

(assert (=> b!4079611 (= res!1666616 call!288646)))

(declare-fun b!4079612 () Bool)

(assert (=> b!4079612 (= e!2532054 (= lt!1459787 call!288646))))

(declare-fun b!4079613 () Bool)

(declare-fun e!2532051 () Bool)

(assert (=> b!4079613 (= e!2532051 (not lt!1459787))))

(declare-fun bm!288641 () Bool)

(assert (=> bm!288641 (= call!288646 (isEmpty!26093 (_1!24459 (findLongestMatchInner!1435 (regex!7042 (h!49097 rules!3870)) Nil!43676 (size!32626 Nil!43676) input!3411 input!3411 (size!32626 input!3411)))))))

(declare-fun b!4079614 () Bool)

(assert (=> b!4079614 (= e!2532052 (not (= (head!8619 (_1!24459 (findLongestMatchInner!1435 (regex!7042 (h!49097 rules!3870)) Nil!43676 (size!32626 Nil!43676) input!3411 input!3411 (size!32626 input!3411)))) (c!703468 (regex!7042 (h!49097 rules!3870))))))))

(declare-fun b!4079615 () Bool)

(assert (=> b!4079615 (= e!2532054 e!2532051)))

(declare-fun c!703641 () Bool)

(assert (=> b!4079615 (= c!703641 ((_ is EmptyLang!11947) (regex!7042 (h!49097 rules!3870))))))

(declare-fun b!4079616 () Bool)

(declare-fun res!1666618 () Bool)

(assert (=> b!4079616 (=> (not res!1666618) (not e!2532057))))

(assert (=> b!4079616 (= res!1666618 (isEmpty!26093 (tail!6353 (_1!24459 (findLongestMatchInner!1435 (regex!7042 (h!49097 rules!3870)) Nil!43676 (size!32626 Nil!43676) input!3411 input!3411 (size!32626 input!3411))))))))

(declare-fun b!4079617 () Bool)

(declare-fun res!1666614 () Bool)

(assert (=> b!4079617 (=> res!1666614 e!2532052)))

(assert (=> b!4079617 (= res!1666614 (not (isEmpty!26093 (tail!6353 (_1!24459 (findLongestMatchInner!1435 (regex!7042 (h!49097 rules!3870)) Nil!43676 (size!32626 Nil!43676) input!3411 input!3411 (size!32626 input!3411)))))))))

(declare-fun b!4079618 () Bool)

(declare-fun res!1666613 () Bool)

(assert (=> b!4079618 (=> res!1666613 e!2532053)))

(assert (=> b!4079618 (= res!1666613 (not ((_ is ElementMatch!11947) (regex!7042 (h!49097 rules!3870)))))))

(assert (=> b!4079618 (= e!2532051 e!2532053)))

(declare-fun b!4079619 () Bool)

(assert (=> b!4079619 (= e!2532057 (= (head!8619 (_1!24459 (findLongestMatchInner!1435 (regex!7042 (h!49097 rules!3870)) Nil!43676 (size!32626 Nil!43676) input!3411 input!3411 (size!32626 input!3411)))) (c!703468 (regex!7042 (h!49097 rules!3870)))))))

(declare-fun b!4079620 () Bool)

(declare-fun res!1666615 () Bool)

(assert (=> b!4079620 (=> res!1666615 e!2532053)))

(assert (=> b!4079620 (= res!1666615 e!2532057)))

(declare-fun res!1666619 () Bool)

(assert (=> b!4079620 (=> (not res!1666619) (not e!2532057))))

(assert (=> b!4079620 (= res!1666619 lt!1459787)))

(declare-fun b!4079621 () Bool)

(assert (=> b!4079621 (= e!2532056 (matchR!5892 (derivativeStep!3609 (regex!7042 (h!49097 rules!3870)) (head!8619 (_1!24459 (findLongestMatchInner!1435 (regex!7042 (h!49097 rules!3870)) Nil!43676 (size!32626 Nil!43676) input!3411 input!3411 (size!32626 input!3411))))) (tail!6353 (_1!24459 (findLongestMatchInner!1435 (regex!7042 (h!49097 rules!3870)) Nil!43676 (size!32626 Nil!43676) input!3411 input!3411 (size!32626 input!3411))))))))

(assert (= (and d!1211966 c!703640) b!4079608))

(assert (= (and d!1211966 (not c!703640)) b!4079621))

(assert (= (and d!1211966 c!703642) b!4079612))

(assert (= (and d!1211966 (not c!703642)) b!4079615))

(assert (= (and b!4079615 c!703641) b!4079613))

(assert (= (and b!4079615 (not c!703641)) b!4079618))

(assert (= (and b!4079618 (not res!1666613)) b!4079620))

(assert (= (and b!4079620 res!1666619) b!4079609))

(assert (= (and b!4079609 res!1666612) b!4079616))

(assert (= (and b!4079616 res!1666618) b!4079619))

(assert (= (and b!4079620 (not res!1666615)) b!4079610))

(assert (= (and b!4079610 res!1666617) b!4079611))

(assert (= (and b!4079611 (not res!1666616)) b!4079617))

(assert (= (and b!4079617 (not res!1666614)) b!4079614))

(assert (= (or b!4079612 b!4079609 b!4079611) bm!288641))

(assert (=> d!1211966 m!4686797))

(assert (=> d!1211966 m!4687213))

(declare-fun m!4687625 () Bool)

(assert (=> b!4079614 m!4687625))

(assert (=> b!4079608 m!4687233))

(declare-fun m!4687627 () Bool)

(assert (=> b!4079616 m!4687627))

(assert (=> b!4079616 m!4687627))

(declare-fun m!4687629 () Bool)

(assert (=> b!4079616 m!4687629))

(assert (=> b!4079621 m!4687625))

(assert (=> b!4079621 m!4687625))

(declare-fun m!4687631 () Bool)

(assert (=> b!4079621 m!4687631))

(assert (=> b!4079621 m!4687627))

(assert (=> b!4079621 m!4687631))

(assert (=> b!4079621 m!4687627))

(declare-fun m!4687633 () Bool)

(assert (=> b!4079621 m!4687633))

(assert (=> bm!288641 m!4686797))

(assert (=> b!4079617 m!4687627))

(assert (=> b!4079617 m!4687627))

(assert (=> b!4079617 m!4687629))

(assert (=> b!4079619 m!4687625))

(assert (=> b!4078875 d!1211966))

(assert (=> b!4078875 d!1211740))

(assert (=> b!4078875 d!1211810))

(assert (=> b!4078875 d!1211734))

(declare-fun d!1211968 () Bool)

(declare-fun c!703651 () Bool)

(assert (=> d!1211968 (= c!703651 ((_ is Nil!43676) lt!1459370))))

(declare-fun e!2532069 () (InoxSet C!24080))

(assert (=> d!1211968 (= (content!6693 lt!1459370) e!2532069)))

(declare-fun b!4079641 () Bool)

(assert (=> b!4079641 (= e!2532069 ((as const (Array C!24080 Bool)) false))))

(declare-fun b!4079642 () Bool)

(assert (=> b!4079642 (= e!2532069 ((_ map or) (store ((as const (Array C!24080 Bool)) false) (h!49096 lt!1459370) true) (content!6693 (t!337535 lt!1459370))))))

(assert (= (and d!1211968 c!703651) b!4079641))

(assert (= (and d!1211968 (not c!703651)) b!4079642))

(declare-fun m!4687641 () Bool)

(assert (=> b!4079642 m!4687641))

(declare-fun m!4687643 () Bool)

(assert (=> b!4079642 m!4687643))

(assert (=> d!1211596 d!1211968))

(declare-fun d!1211972 () Bool)

(declare-fun c!703652 () Bool)

(assert (=> d!1211972 (= c!703652 ((_ is Nil!43676) p!2988))))

(declare-fun e!2532070 () (InoxSet C!24080))

(assert (=> d!1211972 (= (content!6693 p!2988) e!2532070)))

(declare-fun b!4079643 () Bool)

(assert (=> b!4079643 (= e!2532070 ((as const (Array C!24080 Bool)) false))))

(declare-fun b!4079644 () Bool)

(assert (=> b!4079644 (= e!2532070 ((_ map or) (store ((as const (Array C!24080 Bool)) false) (h!49096 p!2988) true) (content!6693 (t!337535 p!2988))))))

(assert (= (and d!1211972 c!703652) b!4079643))

(assert (= (and d!1211972 (not c!703652)) b!4079644))

(declare-fun m!4687645 () Bool)

(assert (=> b!4079644 m!4687645))

(assert (=> b!4079644 m!4687077))

(assert (=> d!1211596 d!1211972))

(declare-fun d!1211974 () Bool)

(declare-fun c!703653 () Bool)

(assert (=> d!1211974 (= c!703653 ((_ is Nil!43676) suffix!1518))))

(declare-fun e!2532071 () (InoxSet C!24080))

(assert (=> d!1211974 (= (content!6693 suffix!1518) e!2532071)))

(declare-fun b!4079645 () Bool)

(assert (=> b!4079645 (= e!2532071 ((as const (Array C!24080 Bool)) false))))

(declare-fun b!4079646 () Bool)

(assert (=> b!4079646 (= e!2532071 ((_ map or) (store ((as const (Array C!24080 Bool)) false) (h!49096 suffix!1518) true) (content!6693 (t!337535 suffix!1518))))))

(assert (= (and d!1211974 c!703653) b!4079645))

(assert (= (and d!1211974 (not c!703653)) b!4079646))

(declare-fun m!4687647 () Bool)

(assert (=> b!4079646 m!4687647))

(declare-fun m!4687649 () Bool)

(assert (=> b!4079646 m!4687649))

(assert (=> d!1211596 d!1211974))

(assert (=> b!4078879 d!1211820))

(declare-fun d!1211976 () Bool)

(declare-fun lt!1459788 () Int)

(assert (=> d!1211976 (>= lt!1459788 0)))

(declare-fun e!2532073 () Int)

(assert (=> d!1211976 (= lt!1459788 e!2532073)))

(declare-fun c!703654 () Bool)

(assert (=> d!1211976 (= c!703654 ((_ is Nil!43676) (originalCharacters!7636 (_1!24457 (get!14321 lt!1459411)))))))

(assert (=> d!1211976 (= (size!32626 (originalCharacters!7636 (_1!24457 (get!14321 lt!1459411)))) lt!1459788)))

(declare-fun b!4079647 () Bool)

(assert (=> b!4079647 (= e!2532073 0)))

(declare-fun b!4079648 () Bool)

(assert (=> b!4079648 (= e!2532073 (+ 1 (size!32626 (t!337535 (originalCharacters!7636 (_1!24457 (get!14321 lt!1459411)))))))))

(assert (= (and d!1211976 c!703654) b!4079647))

(assert (= (and d!1211976 (not c!703654)) b!4079648))

(declare-fun m!4687653 () Bool)

(assert (=> b!4079648 m!4687653))

(assert (=> b!4078879 d!1211976))

(assert (=> b!4079066 d!1211870))

(assert (=> d!1211674 d!1211604))

(assert (=> d!1211674 d!1211706))

(assert (=> b!4079068 d!1211848))

(assert (=> b!4079068 d!1211850))

(declare-fun b!4079649 () Bool)

(declare-fun e!2532074 () Bool)

(declare-fun tp!1234833 () Bool)

(assert (=> b!4079649 (= e!2532074 (and tp_is_empty!20897 tp!1234833))))

(assert (=> b!4079130 (= tp!1234826 e!2532074)))

(assert (= (and b!4079130 ((_ is Cons!43676) (t!337535 (t!337535 input!3411)))) b!4079649))

(declare-fun e!2532084 () Bool)

(declare-fun tp!1234841 () Bool)

(declare-fun tp!1234840 () Bool)

(declare-fun b!4079664 () Bool)

(assert (=> b!4079664 (= e!2532084 (and (inv!58334 (left!32828 (c!703469 (dynLambda!18585 (toChars!9469 (transformation!7042 r!4213)) (dynLambda!18581 (toValue!9610 (transformation!7042 r!4213)) lt!1459362))))) tp!1234840 (inv!58334 (right!33158 (c!703469 (dynLambda!18585 (toChars!9469 (transformation!7042 r!4213)) (dynLambda!18581 (toValue!9610 (transformation!7042 r!4213)) lt!1459362))))) tp!1234841))))

(declare-fun b!4079666 () Bool)

(declare-fun e!2532083 () Bool)

(declare-fun tp!1234842 () Bool)

(assert (=> b!4079666 (= e!2532083 tp!1234842)))

(declare-fun b!4079665 () Bool)

(declare-fun inv!58342 (IArray!26511) Bool)

(assert (=> b!4079665 (= e!2532084 (and (inv!58342 (xs!16559 (c!703469 (dynLambda!18585 (toChars!9469 (transformation!7042 r!4213)) (dynLambda!18581 (toValue!9610 (transformation!7042 r!4213)) lt!1459362))))) e!2532083))))

(assert (=> b!4078932 (= tp!1234749 (and (inv!58334 (c!703469 (dynLambda!18585 (toChars!9469 (transformation!7042 r!4213)) (dynLambda!18581 (toValue!9610 (transformation!7042 r!4213)) lt!1459362)))) e!2532084))))

(assert (= (and b!4078932 ((_ is Node!13253) (c!703469 (dynLambda!18585 (toChars!9469 (transformation!7042 r!4213)) (dynLambda!18581 (toValue!9610 (transformation!7042 r!4213)) lt!1459362))))) b!4079664))

(assert (= b!4079665 b!4079666))

(assert (= (and b!4078932 ((_ is Leaf!20489) (c!703469 (dynLambda!18585 (toChars!9469 (transformation!7042 r!4213)) (dynLambda!18581 (toValue!9610 (transformation!7042 r!4213)) lt!1459362))))) b!4079665))

(declare-fun m!4687675 () Bool)

(assert (=> b!4079664 m!4687675))

(declare-fun m!4687677 () Bool)

(assert (=> b!4079664 m!4687677))

(declare-fun m!4687679 () Bool)

(assert (=> b!4079665 m!4687679))

(assert (=> b!4078932 m!4686861))

(declare-fun b!4079677 () Bool)

(declare-fun e!2532088 () Bool)

(declare-fun tp!1234844 () Bool)

(declare-fun tp!1234845 () Bool)

(assert (=> b!4079677 (= e!2532088 (and tp!1234844 tp!1234845))))

(assert (=> b!4079113 (= tp!1234803 e!2532088)))

(declare-fun b!4079676 () Bool)

(assert (=> b!4079676 (= e!2532088 tp_is_empty!20897)))

(declare-fun b!4079679 () Bool)

(declare-fun tp!1234843 () Bool)

(declare-fun tp!1234846 () Bool)

(assert (=> b!4079679 (= e!2532088 (and tp!1234843 tp!1234846))))

(declare-fun b!4079678 () Bool)

(declare-fun tp!1234847 () Bool)

(assert (=> b!4079678 (= e!2532088 tp!1234847)))

(assert (= (and b!4079113 ((_ is ElementMatch!11947) (regOne!24407 (regex!7042 (h!49097 rules!3870))))) b!4079676))

(assert (= (and b!4079113 ((_ is Concat!19220) (regOne!24407 (regex!7042 (h!49097 rules!3870))))) b!4079677))

(assert (= (and b!4079113 ((_ is Star!11947) (regOne!24407 (regex!7042 (h!49097 rules!3870))))) b!4079678))

(assert (= (and b!4079113 ((_ is Union!11947) (regOne!24407 (regex!7042 (h!49097 rules!3870))))) b!4079679))

(declare-fun b!4079681 () Bool)

(declare-fun e!2532089 () Bool)

(declare-fun tp!1234849 () Bool)

(declare-fun tp!1234850 () Bool)

(assert (=> b!4079681 (= e!2532089 (and tp!1234849 tp!1234850))))

(assert (=> b!4079113 (= tp!1234806 e!2532089)))

(declare-fun b!4079680 () Bool)

(assert (=> b!4079680 (= e!2532089 tp_is_empty!20897)))

(declare-fun b!4079683 () Bool)

(declare-fun tp!1234848 () Bool)

(declare-fun tp!1234851 () Bool)

(assert (=> b!4079683 (= e!2532089 (and tp!1234848 tp!1234851))))

(declare-fun b!4079682 () Bool)

(declare-fun tp!1234852 () Bool)

(assert (=> b!4079682 (= e!2532089 tp!1234852)))

(assert (= (and b!4079113 ((_ is ElementMatch!11947) (regTwo!24407 (regex!7042 (h!49097 rules!3870))))) b!4079680))

(assert (= (and b!4079113 ((_ is Concat!19220) (regTwo!24407 (regex!7042 (h!49097 rules!3870))))) b!4079681))

(assert (= (and b!4079113 ((_ is Star!11947) (regTwo!24407 (regex!7042 (h!49097 rules!3870))))) b!4079682))

(assert (= (and b!4079113 ((_ is Union!11947) (regTwo!24407 (regex!7042 (h!49097 rules!3870))))) b!4079683))

(declare-fun b!4079685 () Bool)

(declare-fun e!2532090 () Bool)

(declare-fun tp!1234854 () Bool)

(declare-fun tp!1234855 () Bool)

(assert (=> b!4079685 (= e!2532090 (and tp!1234854 tp!1234855))))

(assert (=> b!4079127 (= tp!1234822 e!2532090)))

(declare-fun b!4079684 () Bool)

(assert (=> b!4079684 (= e!2532090 tp_is_empty!20897)))

(declare-fun b!4079687 () Bool)

(declare-fun tp!1234853 () Bool)

(declare-fun tp!1234856 () Bool)

(assert (=> b!4079687 (= e!2532090 (and tp!1234853 tp!1234856))))

(declare-fun b!4079686 () Bool)

(declare-fun tp!1234857 () Bool)

(assert (=> b!4079686 (= e!2532090 tp!1234857)))

(assert (= (and b!4079127 ((_ is ElementMatch!11947) (regOne!24406 (regex!7042 r!4213)))) b!4079684))

(assert (= (and b!4079127 ((_ is Concat!19220) (regOne!24406 (regex!7042 r!4213)))) b!4079685))

(assert (= (and b!4079127 ((_ is Star!11947) (regOne!24406 (regex!7042 r!4213)))) b!4079686))

(assert (= (and b!4079127 ((_ is Union!11947) (regOne!24406 (regex!7042 r!4213)))) b!4079687))

(declare-fun b!4079689 () Bool)

(declare-fun e!2532091 () Bool)

(declare-fun tp!1234859 () Bool)

(declare-fun tp!1234860 () Bool)

(assert (=> b!4079689 (= e!2532091 (and tp!1234859 tp!1234860))))

(assert (=> b!4079127 (= tp!1234823 e!2532091)))

(declare-fun b!4079688 () Bool)

(assert (=> b!4079688 (= e!2532091 tp_is_empty!20897)))

(declare-fun b!4079691 () Bool)

(declare-fun tp!1234858 () Bool)

(declare-fun tp!1234861 () Bool)

(assert (=> b!4079691 (= e!2532091 (and tp!1234858 tp!1234861))))

(declare-fun b!4079690 () Bool)

(declare-fun tp!1234862 () Bool)

(assert (=> b!4079690 (= e!2532091 tp!1234862)))

(assert (= (and b!4079127 ((_ is ElementMatch!11947) (regTwo!24406 (regex!7042 r!4213)))) b!4079688))

(assert (= (and b!4079127 ((_ is Concat!19220) (regTwo!24406 (regex!7042 r!4213)))) b!4079689))

(assert (= (and b!4079127 ((_ is Star!11947) (regTwo!24406 (regex!7042 r!4213)))) b!4079690))

(assert (= (and b!4079127 ((_ is Union!11947) (regTwo!24406 (regex!7042 r!4213)))) b!4079691))

(declare-fun b!4079692 () Bool)

(declare-fun e!2532092 () Bool)

(declare-fun tp!1234863 () Bool)

(assert (=> b!4079692 (= e!2532092 (and tp_is_empty!20897 tp!1234863))))

(assert (=> b!4079099 (= tp!1234792 e!2532092)))

(assert (= (and b!4079099 ((_ is Cons!43676) (t!337535 (t!337535 suffix!1518)))) b!4079692))

(declare-fun b!4079694 () Bool)

(declare-fun e!2532093 () Bool)

(declare-fun tp!1234865 () Bool)

(declare-fun tp!1234866 () Bool)

(assert (=> b!4079694 (= e!2532093 (and tp!1234865 tp!1234866))))

(assert (=> b!4079111 (= tp!1234804 e!2532093)))

(declare-fun b!4079693 () Bool)

(assert (=> b!4079693 (= e!2532093 tp_is_empty!20897)))

(declare-fun b!4079696 () Bool)

(declare-fun tp!1234864 () Bool)

(declare-fun tp!1234867 () Bool)

(assert (=> b!4079696 (= e!2532093 (and tp!1234864 tp!1234867))))

(declare-fun b!4079695 () Bool)

(declare-fun tp!1234868 () Bool)

(assert (=> b!4079695 (= e!2532093 tp!1234868)))

(assert (= (and b!4079111 ((_ is ElementMatch!11947) (regOne!24406 (regex!7042 (h!49097 rules!3870))))) b!4079693))

(assert (= (and b!4079111 ((_ is Concat!19220) (regOne!24406 (regex!7042 (h!49097 rules!3870))))) b!4079694))

(assert (= (and b!4079111 ((_ is Star!11947) (regOne!24406 (regex!7042 (h!49097 rules!3870))))) b!4079695))

(assert (= (and b!4079111 ((_ is Union!11947) (regOne!24406 (regex!7042 (h!49097 rules!3870))))) b!4079696))

(declare-fun b!4079698 () Bool)

(declare-fun e!2532094 () Bool)

(declare-fun tp!1234870 () Bool)

(declare-fun tp!1234871 () Bool)

(assert (=> b!4079698 (= e!2532094 (and tp!1234870 tp!1234871))))

(assert (=> b!4079111 (= tp!1234805 e!2532094)))

(declare-fun b!4079697 () Bool)

(assert (=> b!4079697 (= e!2532094 tp_is_empty!20897)))

(declare-fun b!4079700 () Bool)

(declare-fun tp!1234869 () Bool)

(declare-fun tp!1234872 () Bool)

(assert (=> b!4079700 (= e!2532094 (and tp!1234869 tp!1234872))))

(declare-fun b!4079699 () Bool)

(declare-fun tp!1234873 () Bool)

(assert (=> b!4079699 (= e!2532094 tp!1234873)))

(assert (= (and b!4079111 ((_ is ElementMatch!11947) (regTwo!24406 (regex!7042 (h!49097 rules!3870))))) b!4079697))

(assert (= (and b!4079111 ((_ is Concat!19220) (regTwo!24406 (regex!7042 (h!49097 rules!3870))))) b!4079698))

(assert (= (and b!4079111 ((_ is Star!11947) (regTwo!24406 (regex!7042 (h!49097 rules!3870))))) b!4079699))

(assert (= (and b!4079111 ((_ is Union!11947) (regTwo!24406 (regex!7042 (h!49097 rules!3870))))) b!4079700))

(declare-fun b!4079702 () Bool)

(declare-fun e!2532095 () Bool)

(declare-fun tp!1234875 () Bool)

(declare-fun tp!1234876 () Bool)

(assert (=> b!4079702 (= e!2532095 (and tp!1234875 tp!1234876))))

(assert (=> b!4079123 (= tp!1234817 e!2532095)))

(declare-fun b!4079701 () Bool)

(assert (=> b!4079701 (= e!2532095 tp_is_empty!20897)))

(declare-fun b!4079704 () Bool)

(declare-fun tp!1234874 () Bool)

(declare-fun tp!1234877 () Bool)

(assert (=> b!4079704 (= e!2532095 (and tp!1234874 tp!1234877))))

(declare-fun b!4079703 () Bool)

(declare-fun tp!1234878 () Bool)

(assert (=> b!4079703 (= e!2532095 tp!1234878)))

(assert (= (and b!4079123 ((_ is ElementMatch!11947) (regex!7042 (h!49097 (t!337536 rules!3870))))) b!4079701))

(assert (= (and b!4079123 ((_ is Concat!19220) (regex!7042 (h!49097 (t!337536 rules!3870))))) b!4079702))

(assert (= (and b!4079123 ((_ is Star!11947) (regex!7042 (h!49097 (t!337536 rules!3870))))) b!4079703))

(assert (= (and b!4079123 ((_ is Union!11947) (regex!7042 (h!49097 (t!337536 rules!3870))))) b!4079704))

(declare-fun b!4079705 () Bool)

(declare-fun e!2532096 () Bool)

(declare-fun tp!1234879 () Bool)

(assert (=> b!4079705 (= e!2532096 (and tp_is_empty!20897 tp!1234879))))

(assert (=> b!4079125 (= tp!1234820 e!2532096)))

(assert (= (and b!4079125 ((_ is Cons!43676) (t!337535 (t!337535 p!2988)))) b!4079705))

(declare-fun b!4079707 () Bool)

(declare-fun e!2532097 () Bool)

(declare-fun tp!1234881 () Bool)

(declare-fun tp!1234882 () Bool)

(assert (=> b!4079707 (= e!2532097 (and tp!1234881 tp!1234882))))

(assert (=> b!4079112 (= tp!1234807 e!2532097)))

(declare-fun b!4079706 () Bool)

(assert (=> b!4079706 (= e!2532097 tp_is_empty!20897)))

(declare-fun b!4079709 () Bool)

(declare-fun tp!1234880 () Bool)

(declare-fun tp!1234883 () Bool)

(assert (=> b!4079709 (= e!2532097 (and tp!1234880 tp!1234883))))

(declare-fun b!4079708 () Bool)

(declare-fun tp!1234884 () Bool)

(assert (=> b!4079708 (= e!2532097 tp!1234884)))

(assert (= (and b!4079112 ((_ is ElementMatch!11947) (reg!12276 (regex!7042 (h!49097 rules!3870))))) b!4079706))

(assert (= (and b!4079112 ((_ is Concat!19220) (reg!12276 (regex!7042 (h!49097 rules!3870))))) b!4079707))

(assert (= (and b!4079112 ((_ is Star!11947) (reg!12276 (regex!7042 (h!49097 rules!3870))))) b!4079708))

(assert (= (and b!4079112 ((_ is Union!11947) (reg!12276 (regex!7042 (h!49097 rules!3870))))) b!4079709))

(declare-fun b!4079711 () Bool)

(declare-fun e!2532098 () Bool)

(declare-fun tp!1234886 () Bool)

(declare-fun tp!1234887 () Bool)

(assert (=> b!4079711 (= e!2532098 (and tp!1234886 tp!1234887))))

(assert (=> b!4079128 (= tp!1234825 e!2532098)))

(declare-fun b!4079710 () Bool)

(assert (=> b!4079710 (= e!2532098 tp_is_empty!20897)))

(declare-fun b!4079713 () Bool)

(declare-fun tp!1234885 () Bool)

(declare-fun tp!1234888 () Bool)

(assert (=> b!4079713 (= e!2532098 (and tp!1234885 tp!1234888))))

(declare-fun b!4079712 () Bool)

(declare-fun tp!1234889 () Bool)

(assert (=> b!4079712 (= e!2532098 tp!1234889)))

(assert (= (and b!4079128 ((_ is ElementMatch!11947) (reg!12276 (regex!7042 r!4213)))) b!4079710))

(assert (= (and b!4079128 ((_ is Concat!19220) (reg!12276 (regex!7042 r!4213)))) b!4079711))

(assert (= (and b!4079128 ((_ is Star!11947) (reg!12276 (regex!7042 r!4213)))) b!4079712))

(assert (= (and b!4079128 ((_ is Union!11947) (reg!12276 (regex!7042 r!4213)))) b!4079713))

(declare-fun b!4079716 () Bool)

(declare-fun b_free!113785 () Bool)

(declare-fun b_next!114489 () Bool)

(assert (=> b!4079716 (= b_free!113785 (not b_next!114489))))

(declare-fun tb!245057 () Bool)

(declare-fun t!337636 () Bool)

(assert (=> (and b!4079716 (= (toValue!9610 (transformation!7042 (h!49097 (t!337536 (t!337536 rules!3870))))) (toValue!9610 (transformation!7042 (rule!10156 (_1!24457 (get!14321 lt!1459457)))))) t!337636) tb!245057))

(declare-fun result!297208 () Bool)

(assert (= result!297208 result!297188))

(assert (=> d!1211904 t!337636))

(declare-fun t!337638 () Bool)

(declare-fun tb!245059 () Bool)

(assert (=> (and b!4079716 (= (toValue!9610 (transformation!7042 (h!49097 (t!337536 (t!337536 rules!3870))))) (toValue!9610 (transformation!7042 (h!49097 rules!3870)))) t!337638) tb!245059))

(declare-fun result!297210 () Bool)

(assert (= result!297210 result!297146))

(assert (=> d!1211736 t!337638))

(declare-fun t!337640 () Bool)

(declare-fun tb!245061 () Bool)

(assert (=> (and b!4079716 (= (toValue!9610 (transformation!7042 (h!49097 (t!337536 (t!337536 rules!3870))))) (toValue!9610 (transformation!7042 (rule!10156 (_1!24457 (get!14321 lt!1459411)))))) t!337640) tb!245061))

(declare-fun result!297212 () Bool)

(assert (= result!297212 result!297176))

(assert (=> d!1211832 t!337640))

(declare-fun tb!245063 () Bool)

(declare-fun t!337642 () Bool)

(assert (=> (and b!4079716 (= (toValue!9610 (transformation!7042 (h!49097 (t!337536 (t!337536 rules!3870))))) (toValue!9610 (transformation!7042 r!4213))) t!337642) tb!245063))

(declare-fun result!297214 () Bool)

(assert (= result!297214 result!297090))

(assert (=> d!1211638 t!337642))

(assert (=> d!1211640 t!337642))

(assert (=> d!1211738 t!337638))

(declare-fun tp!1234890 () Bool)

(declare-fun b_and!313791 () Bool)

(assert (=> b!4079716 (= tp!1234890 (and (=> t!337642 result!297214) (=> t!337638 result!297210) (=> t!337640 result!297212) (=> t!337636 result!297208) b_and!313791))))

(declare-fun b_free!113787 () Bool)

(declare-fun b_next!114491 () Bool)

(assert (=> b!4079716 (= b_free!113787 (not b_next!114491))))

(declare-fun t!337644 () Bool)

(declare-fun tb!245065 () Bool)

(assert (=> (and b!4079716 (= (toChars!9469 (transformation!7042 (h!49097 (t!337536 (t!337536 rules!3870))))) (toChars!9469 (transformation!7042 r!4213))) t!337644) tb!245065))

(declare-fun result!297216 () Bool)

(assert (= result!297216 result!297096))

(assert (=> d!1211640 t!337644))

(declare-fun t!337646 () Bool)

(declare-fun tb!245067 () Bool)

(assert (=> (and b!4079716 (= (toChars!9469 (transformation!7042 (h!49097 (t!337536 (t!337536 rules!3870))))) (toChars!9469 (transformation!7042 (rule!10156 (_1!24457 (get!14321 lt!1459457)))))) t!337646) tb!245067))

(declare-fun result!297218 () Bool)

(assert (= result!297218 result!297134))

(assert (=> d!1211712 t!337646))

(declare-fun t!337648 () Bool)

(declare-fun tb!245069 () Bool)

(assert (=> (and b!4079716 (= (toChars!9469 (transformation!7042 (h!49097 (t!337536 (t!337536 rules!3870))))) (toChars!9469 (transformation!7042 (h!49097 rules!3870)))) t!337648) tb!245069))

(declare-fun result!297220 () Bool)

(assert (= result!297220 result!297140))

(assert (=> d!1211736 t!337648))

(declare-fun t!337650 () Bool)

(declare-fun tb!245071 () Bool)

(assert (=> (and b!4079716 (= (toChars!9469 (transformation!7042 (h!49097 (t!337536 (t!337536 rules!3870))))) (toChars!9469 (transformation!7042 (rule!10156 (_1!24457 (get!14321 lt!1459411)))))) t!337650) tb!245071))

(declare-fun result!297222 () Bool)

(assert (= result!297222 result!297170))

(assert (=> d!1211818 t!337650))

(declare-fun b_and!313793 () Bool)

(declare-fun tp!1234893 () Bool)

(assert (=> b!4079716 (= tp!1234893 (and (=> t!337644 result!297216) (=> t!337646 result!297218) (=> t!337648 result!297220) (=> t!337650 result!297222) b_and!313793))))

(declare-fun e!2532100 () Bool)

(assert (=> b!4079716 (= e!2532100 (and tp!1234890 tp!1234893))))

(declare-fun e!2532102 () Bool)

(declare-fun b!4079715 () Bool)

(declare-fun tp!1234891 () Bool)

(assert (=> b!4079715 (= e!2532102 (and tp!1234891 (inv!58331 (tag!7902 (h!49097 (t!337536 (t!337536 rules!3870))))) (inv!58333 (transformation!7042 (h!49097 (t!337536 (t!337536 rules!3870))))) e!2532100))))

(declare-fun b!4079714 () Bool)

(declare-fun e!2532099 () Bool)

(declare-fun tp!1234892 () Bool)

(assert (=> b!4079714 (= e!2532099 (and e!2532102 tp!1234892))))

(assert (=> b!4079122 (= tp!1234818 e!2532099)))

(assert (= b!4079715 b!4079716))

(assert (= b!4079714 b!4079715))

(assert (= (and b!4079122 ((_ is Cons!43677) (t!337536 (t!337536 rules!3870)))) b!4079714))

(declare-fun m!4687709 () Bool)

(assert (=> b!4079715 m!4687709))

(declare-fun m!4687711 () Bool)

(assert (=> b!4079715 m!4687711))

(declare-fun b!4079720 () Bool)

(declare-fun e!2532104 () Bool)

(declare-fun tp!1234895 () Bool)

(declare-fun tp!1234896 () Bool)

(assert (=> b!4079720 (= e!2532104 (and tp!1234895 tp!1234896))))

(assert (=> b!4079129 (= tp!1234821 e!2532104)))

(declare-fun b!4079719 () Bool)

(assert (=> b!4079719 (= e!2532104 tp_is_empty!20897)))

(declare-fun b!4079722 () Bool)

(declare-fun tp!1234894 () Bool)

(declare-fun tp!1234897 () Bool)

(assert (=> b!4079722 (= e!2532104 (and tp!1234894 tp!1234897))))

(declare-fun b!4079721 () Bool)

(declare-fun tp!1234898 () Bool)

(assert (=> b!4079721 (= e!2532104 tp!1234898)))

(assert (= (and b!4079129 ((_ is ElementMatch!11947) (regOne!24407 (regex!7042 r!4213)))) b!4079719))

(assert (= (and b!4079129 ((_ is Concat!19220) (regOne!24407 (regex!7042 r!4213)))) b!4079720))

(assert (= (and b!4079129 ((_ is Star!11947) (regOne!24407 (regex!7042 r!4213)))) b!4079721))

(assert (= (and b!4079129 ((_ is Union!11947) (regOne!24407 (regex!7042 r!4213)))) b!4079722))

(declare-fun b!4079724 () Bool)

(declare-fun e!2532105 () Bool)

(declare-fun tp!1234900 () Bool)

(declare-fun tp!1234901 () Bool)

(assert (=> b!4079724 (= e!2532105 (and tp!1234900 tp!1234901))))

(assert (=> b!4079129 (= tp!1234824 e!2532105)))

(declare-fun b!4079723 () Bool)

(assert (=> b!4079723 (= e!2532105 tp_is_empty!20897)))

(declare-fun b!4079726 () Bool)

(declare-fun tp!1234899 () Bool)

(declare-fun tp!1234902 () Bool)

(assert (=> b!4079726 (= e!2532105 (and tp!1234899 tp!1234902))))

(declare-fun b!4079725 () Bool)

(declare-fun tp!1234903 () Bool)

(assert (=> b!4079725 (= e!2532105 tp!1234903)))

(assert (= (and b!4079129 ((_ is ElementMatch!11947) (regTwo!24407 (regex!7042 r!4213)))) b!4079723))

(assert (= (and b!4079129 ((_ is Concat!19220) (regTwo!24407 (regex!7042 r!4213)))) b!4079724))

(assert (= (and b!4079129 ((_ is Star!11947) (regTwo!24407 (regex!7042 r!4213)))) b!4079725))

(assert (= (and b!4079129 ((_ is Union!11947) (regTwo!24407 (regex!7042 r!4213)))) b!4079726))

(declare-fun b_lambda!119275 () Bool)

(assert (= b_lambda!119267 (or d!1211640 b_lambda!119275)))

(declare-fun bs!592888 () Bool)

(declare-fun d!1211990 () Bool)

(assert (= bs!592888 (and d!1211990 d!1211640)))

(assert (=> bs!592888 (= (dynLambda!18596 lambda!127735 lt!1459362) (= (list!16240 (dynLambda!18585 (toChars!9469 (transformation!7042 r!4213)) (dynLambda!18581 (toValue!9610 (transformation!7042 r!4213)) lt!1459362))) (list!16240 lt!1459362)))))

(declare-fun b_lambda!119285 () Bool)

(assert (=> (not b_lambda!119285) (not bs!592888)))

(assert (=> bs!592888 t!337542))

(declare-fun b_and!313795 () Bool)

(assert (= b_and!313755 (and (=> t!337542 result!297096) b_and!313795)))

(assert (=> bs!592888 t!337544))

(declare-fun b_and!313797 () Bool)

(assert (= b_and!313757 (and (=> t!337544 result!297100) b_and!313797)))

(assert (=> bs!592888 t!337561))

(declare-fun b_and!313799 () Bool)

(assert (= b_and!313759 (and (=> t!337561 result!297132) b_and!313799)))

(assert (=> bs!592888 t!337644))

(declare-fun b_and!313801 () Bool)

(assert (= b_and!313793 (and (=> t!337644 result!297216) b_and!313801)))

(declare-fun b_lambda!119287 () Bool)

(assert (=> (not b_lambda!119287) (not bs!592888)))

(assert (=> bs!592888 t!337538))

(declare-fun b_and!313803 () Bool)

(assert (= b_and!313773 (and (=> t!337538 result!297090) b_and!313803)))

(assert (=> bs!592888 t!337540))

(declare-fun b_and!313805 () Bool)

(assert (= b_and!313775 (and (=> t!337540 result!297094) b_and!313805)))

(assert (=> bs!592888 t!337559))

(declare-fun b_and!313807 () Bool)

(assert (= b_and!313777 (and (=> t!337559 result!297130) b_and!313807)))

(assert (=> bs!592888 t!337642))

(declare-fun b_and!313809 () Bool)

(assert (= b_and!313791 (and (=> t!337642 result!297214) b_and!313809)))

(assert (=> bs!592888 m!4686867))

(assert (=> bs!592888 m!4686839))

(assert (=> bs!592888 m!4686839))

(assert (=> bs!592888 m!4686865))

(assert (=> bs!592888 m!4686865))

(assert (=> bs!592888 m!4686869))

(assert (=> d!1211902 d!1211990))

(declare-fun b_lambda!119277 () Bool)

(assert (= b_lambda!119243 (or (and b!4078744 b_free!113769 (= (toValue!9610 (transformation!7042 r!4213)) (toValue!9610 (transformation!7042 (h!49097 rules!3870))))) (and b!4078746 b_free!113773) (and b!4079124 b_free!113781 (= (toValue!9610 (transformation!7042 (h!49097 (t!337536 rules!3870)))) (toValue!9610 (transformation!7042 (h!49097 rules!3870))))) (and b!4079716 b_free!113785 (= (toValue!9610 (transformation!7042 (h!49097 (t!337536 (t!337536 rules!3870))))) (toValue!9610 (transformation!7042 (h!49097 rules!3870))))) b_lambda!119277)))

(declare-fun b_lambda!119279 () Bool)

(assert (= b_lambda!119241 (or (and b!4078744 b_free!113771 (= (toChars!9469 (transformation!7042 r!4213)) (toChars!9469 (transformation!7042 (h!49097 rules!3870))))) (and b!4078746 b_free!113775) (and b!4079124 b_free!113783 (= (toChars!9469 (transformation!7042 (h!49097 (t!337536 rules!3870)))) (toChars!9469 (transformation!7042 (h!49097 rules!3870))))) (and b!4079716 b_free!113787 (= (toChars!9469 (transformation!7042 (h!49097 (t!337536 (t!337536 rules!3870))))) (toChars!9469 (transformation!7042 (h!49097 rules!3870))))) b_lambda!119279)))

(declare-fun b_lambda!119281 () Bool)

(assert (= b_lambda!119263 (or d!1211680 b_lambda!119281)))

(declare-fun bs!592890 () Bool)

(declare-fun d!1211996 () Bool)

(assert (= bs!592890 (and d!1211996 d!1211680)))

(assert (=> bs!592890 (= (dynLambda!18595 lambda!127741 (h!49097 (t!337536 rules!3870))) (ruleValid!2966 thiss!26199 (h!49097 (t!337536 rules!3870))))))

(assert (=> bs!592890 m!4686983))

(assert (=> b!4079401 d!1211996))

(declare-fun b_lambda!119283 () Bool)

(assert (= b_lambda!119245 (or (and b!4078744 b_free!113769 (= (toValue!9610 (transformation!7042 r!4213)) (toValue!9610 (transformation!7042 (h!49097 rules!3870))))) (and b!4078746 b_free!113773) (and b!4079124 b_free!113781 (= (toValue!9610 (transformation!7042 (h!49097 (t!337536 rules!3870)))) (toValue!9610 (transformation!7042 (h!49097 rules!3870))))) (and b!4079716 b_free!113785 (= (toValue!9610 (transformation!7042 (h!49097 (t!337536 (t!337536 rules!3870))))) (toValue!9610 (transformation!7042 (h!49097 rules!3870))))) b_lambda!119283)))

(check-sat (not d!1211948) (not b!4079678) (not b!4079642) (not b_next!114485) (not b!4079324) (not b!4079681) (not bm!288636) (not bm!288595) (not bm!288624) (not d!1211892) (not b!4079715) (not b!4079708) (not b!4079527) (not b!4079402) (not b!4079713) (not b_next!114491) (not d!1211834) (not d!1211828) (not b_lambda!119261) (not b_lambda!119233) (not bm!288593) (not b!4079685) (not d!1211740) (not b!4079526) (not b!4079516) (not b!4079205) (not b!4079709) (not bm!288638) (not b!4079499) (not b!4079700) (not tb!245039) (not b!4079702) (not b!4079143) (not b!4079359) (not bm!288592) (not b!4079538) (not b!4079572) (not b!4079345) (not b_lambda!119269) (not b!4079696) (not b!4079436) (not b!4079595) (not b!4079368) (not d!1211732) (not bm!288596) (not bs!592890) (not b!4079152) (not b!4079686) (not b_lambda!119287) (not tb!244997) (not d!1211918) b_and!313801 (not b!4079362) (not b!4079501) (not b_lambda!119275) b_and!313807 (not d!1211826) (not b!4079212) (not b!4079515) tp_is_empty!20897 (not b!4079579) (not b_next!114479) (not b!4079691) (not d!1211966) (not d!1211816) (not b!4079711) (not b!4079682) (not b_lambda!119237) (not b!4079142) (not b!4079333) (not d!1211882) (not d!1211894) (not b!4079646) (not b_lambda!119285) (not b!4079361) (not bm!288599) b_and!313803 (not d!1211908) (not bm!288597) (not b!4079694) (not d!1211898) (not b!4079689) b_and!313799 (not d!1211804) (not d!1211878) (not bm!288565) (not d!1211854) (not b!4079323) (not b!4079342) (not bm!288594) (not b!4079571) (not b!4079698) (not b_lambda!119283) (not b!4079725) (not b!4079721) (not b_lambda!119235) (not b!4079518) (not d!1211814) (not b!4079531) (not bm!288556) (not d!1211700) (not b!4079699) (not b!4079677) (not bm!288598) (not b!4079720) (not b!4079344) b_and!313797 (not b!4079517) (not b!4079336) (not bm!288591) (not b!4079500) (not b!4079425) (not d!1211822) (not b!4079148) (not b!4079141) (not b_next!114487) (not tb!244991) (not b!4079214) (not b_next!114489) (not b!4079424) (not b!4079616) (not b!4079139) (not b!4079594) (not b!4079644) (not d!1211830) (not b!4079137) (not b!4079607) (not b!4079434) (not b!4079509) (not b!4079529) (not b!4079480) (not b!4079703) (not b_lambda!119239) (not b!4079683) (not bm!288641) (not b_lambda!119277) (not b!4078932) (not b!4079340) (not b!4079603) (not d!1211812) (not b!4079690) (not b!4079608) (not b!4079679) (not b!4079648) (not b!4079695) (not b!4079666) (not b_next!114477) (not b!4079188) (not b!4079726) (not d!1211911) (not b!4079438) (not b!4079704) (not b!4079145) (not d!1211818) (not b!4079692) (not d!1211902) (not b!4079208) (not d!1211736) (not d!1211698) (not d!1211896) (not b!4079353) (not b!4079621) (not d!1211718) (not d!1211862) (not b!4079140) (not d!1211724) (not b!4079144) (not b!4079707) (not b!4079204) (not d!1211914) (not d!1211710) (not d!1211712) (not d!1211726) (not bm!288635) (not b_next!114473) (not b!4079207) (not b_lambda!119279) (not b!4079339) (not b!4079714) (not d!1211702) (not d!1211950) (not b!4079665) (not d!1211954) (not b!4079216) (not d!1211806) (not b!4079724) (not b_lambda!119281) (not b!4079619) (not b!4079605) (not b!4079433) (not b!4079524) (not d!1211808) (not b!4079570) (not d!1211838) (not b!4079617) (not tb!245027) (not b!4079431) (not b!4079146) (not b!4079327) (not b!4079687) (not bs!592888) (not b!4079649) (not tb!244985) (not b!4079318) b_and!313805 (not b!4079174) (not d!1211844) (not b!4079578) (not b!4079614) (not b!4079712) (not b_lambda!119259) (not b!4079335) (not d!1211846) (not b!4079705) (not b!4079722) (not b!4079366) (not b!4079364) (not bm!288564) (not d!1211938) (not b!4079421) (not b_next!114475) (not d!1211900) (not tb!245021) b_and!313809 b_and!313795 (not b!4079352) (not b!4079664))
(check-sat (not b_next!114485) (not b_next!114491) b_and!313801 b_and!313807 (not b_next!114479) b_and!313803 b_and!313799 b_and!313797 (not b_next!114487) (not b_next!114489) (not b_next!114477) (not b_next!114473) b_and!313805 (not b_next!114475) b_and!313809 b_and!313795)
