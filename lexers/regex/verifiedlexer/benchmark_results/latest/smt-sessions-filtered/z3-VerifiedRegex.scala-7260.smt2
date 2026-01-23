; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!386952 () Bool)

(assert start!386952)

(declare-fun b!4089733 () Bool)

(declare-fun b_free!114329 () Bool)

(declare-fun b_next!115033 () Bool)

(assert (=> b!4089733 (= b_free!114329 (not b_next!115033))))

(declare-fun tp!1238201 () Bool)

(declare-fun b_and!315079 () Bool)

(assert (=> b!4089733 (= tp!1238201 b_and!315079)))

(declare-fun b_free!114331 () Bool)

(declare-fun b_next!115035 () Bool)

(assert (=> b!4089733 (= b_free!114331 (not b_next!115035))))

(declare-fun tp!1238204 () Bool)

(declare-fun b_and!315081 () Bool)

(assert (=> b!4089733 (= tp!1238204 b_and!315081)))

(declare-fun b!4089736 () Bool)

(declare-fun b_free!114333 () Bool)

(declare-fun b_next!115037 () Bool)

(assert (=> b!4089736 (= b_free!114333 (not b_next!115037))))

(declare-fun tp!1238208 () Bool)

(declare-fun b_and!315083 () Bool)

(assert (=> b!4089736 (= tp!1238208 b_and!315083)))

(declare-fun b_free!114335 () Bool)

(declare-fun b_next!115039 () Bool)

(assert (=> b!4089736 (= b_free!114335 (not b_next!115039))))

(declare-fun tp!1238206 () Bool)

(declare-fun b_and!315085 () Bool)

(assert (=> b!4089736 (= tp!1238206 b_and!315085)))

(declare-datatypes ((LexerInterface!6681 0))(
  ( (LexerInterfaceExt!6678 (__x!26861 Int)) (Lexer!6679) )
))
(declare-fun thiss!26199 () LexerInterface!6681)

(declare-fun e!2538176 () Bool)

(declare-datatypes ((List!43979 0))(
  ( (Nil!43855) (Cons!43855 (h!49275 (_ BitVec 16)) (t!338530 List!43979)) )
))
(declare-datatypes ((TokenValue!7322 0))(
  ( (FloatLiteralValue!14644 (text!51699 List!43979)) (TokenValueExt!7321 (__x!26862 Int)) (Broken!36610 (value!222748 List!43979)) (Object!7445) (End!7322) (Def!7322) (Underscore!7322) (Match!7322) (Else!7322) (Error!7322) (Case!7322) (If!7322) (Extends!7322) (Abstract!7322) (Class!7322) (Val!7322) (DelimiterValue!14644 (del!7382 List!43979)) (KeywordValue!7328 (value!222749 List!43979)) (CommentValue!14644 (value!222750 List!43979)) (WhitespaceValue!14644 (value!222751 List!43979)) (IndentationValue!7322 (value!222752 List!43979)) (String!50359) (Int32!7322) (Broken!36611 (value!222753 List!43979)) (Boolean!7323) (Unit!63378) (OperatorValue!7325 (op!7382 List!43979)) (IdentifierValue!14644 (value!222754 List!43979)) (IdentifierValue!14645 (value!222755 List!43979)) (WhitespaceValue!14645 (value!222756 List!43979)) (True!14644) (False!14644) (Broken!36612 (value!222757 List!43979)) (Broken!36613 (value!222758 List!43979)) (True!14645) (RightBrace!7322) (RightBracket!7322) (Colon!7322) (Null!7322) (Comma!7322) (LeftBracket!7322) (False!14645) (LeftBrace!7322) (ImaginaryLiteralValue!7322 (text!51700 List!43979)) (StringLiteralValue!21966 (value!222759 List!43979)) (EOFValue!7322 (value!222760 List!43979)) (IdentValue!7322 (value!222761 List!43979)) (DelimiterValue!14645 (value!222762 List!43979)) (DedentValue!7322 (value!222763 List!43979)) (NewLineValue!7322 (value!222764 List!43979)) (IntegerValue!21966 (value!222765 (_ BitVec 32)) (text!51701 List!43979)) (IntegerValue!21967 (value!222766 Int) (text!51702 List!43979)) (Times!7322) (Or!7322) (Equal!7322) (Minus!7322) (Broken!36614 (value!222767 List!43979)) (And!7322) (Div!7322) (LessEqual!7322) (Mod!7322) (Concat!19319) (Not!7322) (Plus!7322) (SpaceValue!7322 (value!222768 List!43979)) (IntegerValue!21968 (value!222769 Int) (text!51703 List!43979)) (StringLiteralValue!21967 (text!51704 List!43979)) (FloatLiteralValue!14645 (text!51705 List!43979)) (BytesLiteralValue!7322 (value!222770 List!43979)) (CommentValue!14645 (value!222771 List!43979)) (StringLiteralValue!21968 (value!222772 List!43979)) (ErrorTokenValue!7322 (msg!7383 List!43979)) )
))
(declare-datatypes ((C!24180 0))(
  ( (C!24181 (val!14200 Int)) )
))
(declare-datatypes ((Regex!11997 0))(
  ( (ElementMatch!11997 (c!704898 C!24180)) (Concat!19320 (regOne!24506 Regex!11997) (regTwo!24506 Regex!11997)) (EmptyExpr!11997) (Star!11997 (reg!12326 Regex!11997)) (EmptyLang!11997) (Union!11997 (regOne!24507 Regex!11997) (regTwo!24507 Regex!11997)) )
))
(declare-datatypes ((String!50360 0))(
  ( (String!50361 (value!222773 String)) )
))
(declare-datatypes ((List!43980 0))(
  ( (Nil!43856) (Cons!43856 (h!49276 C!24180) (t!338531 List!43980)) )
))
(declare-datatypes ((IArray!26611 0))(
  ( (IArray!26612 (innerList!13363 List!43980)) )
))
(declare-datatypes ((Conc!13303 0))(
  ( (Node!13303 (left!32963 Conc!13303) (right!33293 Conc!13303) (csize!26836 Int) (cheight!13514 Int)) (Leaf!20564 (xs!16609 IArray!26611) (csize!26837 Int)) (Empty!13303) )
))
(declare-datatypes ((BalanceConc!26200 0))(
  ( (BalanceConc!26201 (c!704899 Conc!13303)) )
))
(declare-datatypes ((TokenValueInjection!14072 0))(
  ( (TokenValueInjection!14073 (toValue!9680 Int) (toChars!9539 Int)) )
))
(declare-datatypes ((Rule!13984 0))(
  ( (Rule!13985 (regex!7092 Regex!11997) (tag!7952 String!50360) (isSeparator!7092 Bool) (transformation!7092 TokenValueInjection!14072)) )
))
(declare-datatypes ((Token!13310 0))(
  ( (Token!13311 (value!222774 TokenValue!7322) (rule!10230 Rule!13984) (size!32756 Int) (originalCharacters!7686 List!43980)) )
))
(declare-datatypes ((tuple2!42788 0))(
  ( (tuple2!42789 (_1!24528 Token!13310) (_2!24528 List!43980)) )
))
(declare-datatypes ((Option!9498 0))(
  ( (None!9497) (Some!9497 (v!39981 tuple2!42788)) )
))
(declare-fun lt!1462723 () Option!9498)

(declare-datatypes ((List!43981 0))(
  ( (Nil!43857) (Cons!43857 (h!49277 Rule!13984) (t!338532 List!43981)) )
))
(declare-fun rules!3870 () List!43981)

(declare-fun b!4089725 () Bool)

(declare-fun input!3411 () List!43980)

(declare-fun maxPrefix!3971 (LexerInterface!6681 List!43981 List!43980) Option!9498)

(assert (=> b!4089725 (= e!2538176 (= (maxPrefix!3971 thiss!26199 (t!338532 rules!3870) input!3411) lt!1462723))))

(declare-fun b!4089726 () Bool)

(declare-fun res!1671394 () Bool)

(declare-fun e!2538177 () Bool)

(assert (=> b!4089726 (=> (not res!1671394) (not e!2538177))))

(declare-fun suffix!1518 () List!43980)

(declare-fun p!2988 () List!43980)

(declare-fun ++!11498 (List!43980 List!43980) List!43980)

(assert (=> b!4089726 (= res!1671394 (= input!3411 (++!11498 p!2988 suffix!1518)))))

(declare-fun b!4089727 () Bool)

(declare-fun e!2538187 () Bool)

(assert (=> b!4089727 (= e!2538187 e!2538176)))

(declare-fun res!1671387 () Bool)

(assert (=> b!4089727 (=> res!1671387 e!2538176)))

(declare-fun isEmpty!26229 (Option!9498) Bool)

(declare-fun maxPrefixOneRule!2953 (LexerInterface!6681 Rule!13984 List!43980) Option!9498)

(assert (=> b!4089727 (= res!1671387 (not (isEmpty!26229 (maxPrefixOneRule!2953 thiss!26199 (h!49277 rules!3870) input!3411))))))

(declare-fun rulesInvariant!6024 (LexerInterface!6681 List!43981) Bool)

(assert (=> b!4089727 (rulesInvariant!6024 thiss!26199 (t!338532 rules!3870))))

(declare-datatypes ((Unit!63379 0))(
  ( (Unit!63380) )
))
(declare-fun lt!1462720 () Unit!63379)

(declare-fun lemmaInvariantOnRulesThenOnTail!794 (LexerInterface!6681 Rule!13984 List!43981) Unit!63379)

(assert (=> b!4089727 (= lt!1462720 (lemmaInvariantOnRulesThenOnTail!794 thiss!26199 (h!49277 rules!3870) (t!338532 rules!3870)))))

(declare-fun b!4089728 () Bool)

(declare-fun e!2538185 () Bool)

(declare-fun e!2538175 () Bool)

(declare-fun tp!1238210 () Bool)

(assert (=> b!4089728 (= e!2538185 (and e!2538175 tp!1238210))))

(declare-fun b!4089729 () Bool)

(declare-fun res!1671386 () Bool)

(assert (=> b!4089729 (=> (not res!1671386) (not e!2538177))))

(declare-fun isEmpty!26230 (List!43981) Bool)

(assert (=> b!4089729 (= res!1671386 (not (isEmpty!26230 rules!3870)))))

(declare-fun b!4089730 () Bool)

(declare-fun res!1671396 () Bool)

(assert (=> b!4089730 (=> res!1671396 e!2538176)))

(declare-fun r!4213 () Rule!13984)

(declare-fun contains!8771 (List!43981 Rule!13984) Bool)

(assert (=> b!4089730 (= res!1671396 (not (contains!8771 (t!338532 rules!3870) r!4213)))))

(declare-fun b!4089731 () Bool)

(declare-fun e!2538183 () Bool)

(assert (=> b!4089731 (= e!2538177 e!2538183)))

(declare-fun res!1671393 () Bool)

(assert (=> b!4089731 (=> (not res!1671393) (not e!2538183))))

(assert (=> b!4089731 (= res!1671393 (= (maxPrefix!3971 thiss!26199 rules!3870 input!3411) lt!1462723))))

(declare-fun lt!1462721 () BalanceConc!26200)

(declare-fun apply!10275 (TokenValueInjection!14072 BalanceConc!26200) TokenValue!7322)

(declare-fun size!32757 (List!43980) Int)

(assert (=> b!4089731 (= lt!1462723 (Some!9497 (tuple2!42789 (Token!13311 (apply!10275 (transformation!7092 r!4213) lt!1462721) r!4213 (size!32757 p!2988) p!2988) suffix!1518)))))

(declare-fun lt!1462719 () Unit!63379)

(declare-fun lemmaSemiInverse!2059 (TokenValueInjection!14072 BalanceConc!26200) Unit!63379)

(assert (=> b!4089731 (= lt!1462719 (lemmaSemiInverse!2059 (transformation!7092 r!4213) lt!1462721))))

(declare-fun seqFromList!5309 (List!43980) BalanceConc!26200)

(assert (=> b!4089731 (= lt!1462721 (seqFromList!5309 p!2988))))

(declare-fun b!4089732 () Bool)

(declare-fun res!1671388 () Bool)

(assert (=> b!4089732 (=> (not res!1671388) (not e!2538177))))

(assert (=> b!4089732 (= res!1671388 (rulesInvariant!6024 thiss!26199 rules!3870))))

(declare-fun res!1671395 () Bool)

(assert (=> start!386952 (=> (not res!1671395) (not e!2538177))))

(get-info :version)

(assert (=> start!386952 (= res!1671395 ((_ is Lexer!6679) thiss!26199))))

(assert (=> start!386952 e!2538177))

(assert (=> start!386952 true))

(declare-fun e!2538178 () Bool)

(assert (=> start!386952 e!2538178))

(assert (=> start!386952 e!2538185))

(declare-fun e!2538184 () Bool)

(assert (=> start!386952 e!2538184))

(declare-fun e!2538182 () Bool)

(assert (=> start!386952 e!2538182))

(declare-fun e!2538188 () Bool)

(assert (=> start!386952 e!2538188))

(declare-fun e!2538186 () Bool)

(assert (=> b!4089733 (= e!2538186 (and tp!1238201 tp!1238204))))

(declare-fun b!4089734 () Bool)

(declare-fun tp!1238202 () Bool)

(declare-fun inv!58553 (String!50360) Bool)

(declare-fun inv!58555 (TokenValueInjection!14072) Bool)

(assert (=> b!4089734 (= e!2538175 (and tp!1238202 (inv!58553 (tag!7952 (h!49277 rules!3870))) (inv!58555 (transformation!7092 (h!49277 rules!3870))) e!2538186))))

(declare-fun b!4089735 () Bool)

(declare-fun res!1671389 () Bool)

(assert (=> b!4089735 (=> res!1671389 e!2538187)))

(assert (=> b!4089735 (= res!1671389 (or (and ((_ is Cons!43857) rules!3870) (= (h!49277 rules!3870) r!4213)) (not ((_ is Cons!43857) rules!3870)) (= (h!49277 rules!3870) r!4213)))))

(declare-fun e!2538180 () Bool)

(assert (=> b!4089736 (= e!2538180 (and tp!1238208 tp!1238206))))

(declare-fun b!4089737 () Bool)

(declare-fun tp_is_empty!20997 () Bool)

(declare-fun tp!1238207 () Bool)

(assert (=> b!4089737 (= e!2538182 (and tp_is_empty!20997 tp!1238207))))

(declare-fun tp!1238203 () Bool)

(declare-fun b!4089738 () Bool)

(assert (=> b!4089738 (= e!2538188 (and tp!1238203 (inv!58553 (tag!7952 r!4213)) (inv!58555 (transformation!7092 r!4213)) e!2538180))))

(declare-fun b!4089739 () Bool)

(assert (=> b!4089739 (= e!2538183 (not e!2538187))))

(declare-fun res!1671385 () Bool)

(assert (=> b!4089739 (=> res!1671385 e!2538187)))

(declare-fun matchR!5938 (Regex!11997 List!43980) Bool)

(assert (=> b!4089739 (= res!1671385 (not (matchR!5938 (regex!7092 r!4213) p!2988)))))

(declare-fun ruleValid!3012 (LexerInterface!6681 Rule!13984) Bool)

(assert (=> b!4089739 (ruleValid!3012 thiss!26199 r!4213)))

(declare-fun lt!1462722 () Unit!63379)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2078 (LexerInterface!6681 Rule!13984 List!43981) Unit!63379)

(assert (=> b!4089739 (= lt!1462722 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2078 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4089740 () Bool)

(declare-fun tp!1238209 () Bool)

(assert (=> b!4089740 (= e!2538178 (and tp_is_empty!20997 tp!1238209))))

(declare-fun b!4089741 () Bool)

(declare-fun res!1671390 () Bool)

(assert (=> b!4089741 (=> (not res!1671390) (not e!2538177))))

(assert (=> b!4089741 (= res!1671390 (contains!8771 rules!3870 r!4213))))

(declare-fun b!4089742 () Bool)

(declare-fun res!1671391 () Bool)

(assert (=> b!4089742 (=> (not res!1671391) (not e!2538177))))

(declare-fun isEmpty!26231 (List!43980) Bool)

(assert (=> b!4089742 (= res!1671391 (not (isEmpty!26231 p!2988)))))

(declare-fun b!4089743 () Bool)

(declare-fun res!1671392 () Bool)

(assert (=> b!4089743 (=> res!1671392 e!2538176)))

(assert (=> b!4089743 (= res!1671392 (isEmpty!26230 (t!338532 rules!3870)))))

(declare-fun b!4089744 () Bool)

(declare-fun tp!1238205 () Bool)

(assert (=> b!4089744 (= e!2538184 (and tp_is_empty!20997 tp!1238205))))

(assert (= (and start!386952 res!1671395) b!4089729))

(assert (= (and b!4089729 res!1671386) b!4089732))

(assert (= (and b!4089732 res!1671388) b!4089741))

(assert (= (and b!4089741 res!1671390) b!4089726))

(assert (= (and b!4089726 res!1671394) b!4089742))

(assert (= (and b!4089742 res!1671391) b!4089731))

(assert (= (and b!4089731 res!1671393) b!4089739))

(assert (= (and b!4089739 (not res!1671385)) b!4089735))

(assert (= (and b!4089735 (not res!1671389)) b!4089727))

(assert (= (and b!4089727 (not res!1671387)) b!4089743))

(assert (= (and b!4089743 (not res!1671392)) b!4089730))

(assert (= (and b!4089730 (not res!1671396)) b!4089725))

(assert (= (and start!386952 ((_ is Cons!43856) suffix!1518)) b!4089740))

(assert (= b!4089734 b!4089733))

(assert (= b!4089728 b!4089734))

(assert (= (and start!386952 ((_ is Cons!43857) rules!3870)) b!4089728))

(assert (= (and start!386952 ((_ is Cons!43856) p!2988)) b!4089744))

(assert (= (and start!386952 ((_ is Cons!43856) input!3411)) b!4089737))

(assert (= b!4089738 b!4089736))

(assert (= start!386952 b!4089738))

(declare-fun m!4696509 () Bool)

(assert (=> b!4089739 m!4696509))

(declare-fun m!4696511 () Bool)

(assert (=> b!4089739 m!4696511))

(declare-fun m!4696513 () Bool)

(assert (=> b!4089739 m!4696513))

(declare-fun m!4696515 () Bool)

(assert (=> b!4089734 m!4696515))

(declare-fun m!4696517 () Bool)

(assert (=> b!4089734 m!4696517))

(declare-fun m!4696519 () Bool)

(assert (=> b!4089732 m!4696519))

(declare-fun m!4696521 () Bool)

(assert (=> b!4089725 m!4696521))

(declare-fun m!4696523 () Bool)

(assert (=> b!4089742 m!4696523))

(declare-fun m!4696525 () Bool)

(assert (=> b!4089729 m!4696525))

(declare-fun m!4696527 () Bool)

(assert (=> b!4089727 m!4696527))

(assert (=> b!4089727 m!4696527))

(declare-fun m!4696529 () Bool)

(assert (=> b!4089727 m!4696529))

(declare-fun m!4696531 () Bool)

(assert (=> b!4089727 m!4696531))

(declare-fun m!4696533 () Bool)

(assert (=> b!4089727 m!4696533))

(declare-fun m!4696535 () Bool)

(assert (=> b!4089738 m!4696535))

(declare-fun m!4696537 () Bool)

(assert (=> b!4089738 m!4696537))

(declare-fun m!4696539 () Bool)

(assert (=> b!4089726 m!4696539))

(declare-fun m!4696541 () Bool)

(assert (=> b!4089743 m!4696541))

(declare-fun m!4696543 () Bool)

(assert (=> b!4089731 m!4696543))

(declare-fun m!4696545 () Bool)

(assert (=> b!4089731 m!4696545))

(declare-fun m!4696547 () Bool)

(assert (=> b!4089731 m!4696547))

(declare-fun m!4696549 () Bool)

(assert (=> b!4089731 m!4696549))

(declare-fun m!4696551 () Bool)

(assert (=> b!4089731 m!4696551))

(declare-fun m!4696553 () Bool)

(assert (=> b!4089741 m!4696553))

(declare-fun m!4696555 () Bool)

(assert (=> b!4089730 m!4696555))

(check-sat (not b_next!115035) (not b!4089730) (not b!4089744) (not b!4089729) (not b!4089731) (not b!4089743) tp_is_empty!20997 (not b_next!115037) b_and!315081 (not b!4089732) (not b!4089725) (not b!4089738) (not b!4089734) b_and!315085 b_and!315079 (not b!4089739) (not b!4089737) (not b_next!115033) (not b_next!115039) (not b!4089726) (not b!4089742) (not b!4089727) (not b!4089740) b_and!315083 (not b!4089728) (not b!4089741))
(check-sat (not b_next!115035) b_and!315085 b_and!315079 (not b_next!115033) (not b_next!115039) (not b_next!115037) b_and!315083 b_and!315081)
(get-model)

(declare-fun d!1214255 () Bool)

(assert (=> d!1214255 (= (isEmpty!26231 p!2988) ((_ is Nil!43856) p!2988))))

(assert (=> b!4089742 d!1214255))

(declare-fun d!1214257 () Bool)

(declare-fun res!1671406 () Bool)

(declare-fun e!2538191 () Bool)

(assert (=> d!1214257 (=> (not res!1671406) (not e!2538191))))

(declare-fun rulesValid!2779 (LexerInterface!6681 List!43981) Bool)

(assert (=> d!1214257 (= res!1671406 (rulesValid!2779 thiss!26199 rules!3870))))

(assert (=> d!1214257 (= (rulesInvariant!6024 thiss!26199 rules!3870) e!2538191)))

(declare-fun b!4089747 () Bool)

(declare-datatypes ((List!43982 0))(
  ( (Nil!43858) (Cons!43858 (h!49278 String!50360) (t!338557 List!43982)) )
))
(declare-fun noDuplicateTag!2780 (LexerInterface!6681 List!43981 List!43982) Bool)

(assert (=> b!4089747 (= e!2538191 (noDuplicateTag!2780 thiss!26199 rules!3870 Nil!43858))))

(assert (= (and d!1214257 res!1671406) b!4089747))

(declare-fun m!4696557 () Bool)

(assert (=> d!1214257 m!4696557))

(declare-fun m!4696559 () Bool)

(assert (=> b!4089747 m!4696559))

(assert (=> b!4089732 d!1214257))

(declare-fun d!1214259 () Bool)

(assert (=> d!1214259 (= (isEmpty!26230 (t!338532 rules!3870)) ((_ is Nil!43857) (t!338532 rules!3870)))))

(assert (=> b!4089743 d!1214259))

(declare-fun d!1214261 () Bool)

(declare-fun lt!1462726 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6754 (List!43981) (InoxSet Rule!13984))

(assert (=> d!1214261 (= lt!1462726 (select (content!6754 (t!338532 rules!3870)) r!4213))))

(declare-fun e!2538196 () Bool)

(assert (=> d!1214261 (= lt!1462726 e!2538196)))

(declare-fun res!1671411 () Bool)

(assert (=> d!1214261 (=> (not res!1671411) (not e!2538196))))

(assert (=> d!1214261 (= res!1671411 ((_ is Cons!43857) (t!338532 rules!3870)))))

(assert (=> d!1214261 (= (contains!8771 (t!338532 rules!3870) r!4213) lt!1462726)))

(declare-fun b!4089752 () Bool)

(declare-fun e!2538197 () Bool)

(assert (=> b!4089752 (= e!2538196 e!2538197)))

(declare-fun res!1671412 () Bool)

(assert (=> b!4089752 (=> res!1671412 e!2538197)))

(assert (=> b!4089752 (= res!1671412 (= (h!49277 (t!338532 rules!3870)) r!4213))))

(declare-fun b!4089753 () Bool)

(assert (=> b!4089753 (= e!2538197 (contains!8771 (t!338532 (t!338532 rules!3870)) r!4213))))

(assert (= (and d!1214261 res!1671411) b!4089752))

(assert (= (and b!4089752 (not res!1671412)) b!4089753))

(declare-fun m!4696561 () Bool)

(assert (=> d!1214261 m!4696561))

(declare-fun m!4696563 () Bool)

(assert (=> d!1214261 m!4696563))

(declare-fun m!4696565 () Bool)

(assert (=> b!4089753 m!4696565))

(assert (=> b!4089730 d!1214261))

(declare-fun d!1214263 () Bool)

(declare-fun lt!1462727 () Bool)

(assert (=> d!1214263 (= lt!1462727 (select (content!6754 rules!3870) r!4213))))

(declare-fun e!2538198 () Bool)

(assert (=> d!1214263 (= lt!1462727 e!2538198)))

(declare-fun res!1671413 () Bool)

(assert (=> d!1214263 (=> (not res!1671413) (not e!2538198))))

(assert (=> d!1214263 (= res!1671413 ((_ is Cons!43857) rules!3870))))

(assert (=> d!1214263 (= (contains!8771 rules!3870 r!4213) lt!1462727)))

(declare-fun b!4089754 () Bool)

(declare-fun e!2538199 () Bool)

(assert (=> b!4089754 (= e!2538198 e!2538199)))

(declare-fun res!1671414 () Bool)

(assert (=> b!4089754 (=> res!1671414 e!2538199)))

(assert (=> b!4089754 (= res!1671414 (= (h!49277 rules!3870) r!4213))))

(declare-fun b!4089755 () Bool)

(assert (=> b!4089755 (= e!2538199 (contains!8771 (t!338532 rules!3870) r!4213))))

(assert (= (and d!1214263 res!1671413) b!4089754))

(assert (= (and b!4089754 (not res!1671414)) b!4089755))

(declare-fun m!4696567 () Bool)

(assert (=> d!1214263 m!4696567))

(declare-fun m!4696569 () Bool)

(assert (=> d!1214263 m!4696569))

(assert (=> b!4089755 m!4696555))

(assert (=> b!4089741 d!1214263))

(declare-fun d!1214265 () Bool)

(declare-fun e!2538219 () Bool)

(assert (=> d!1214265 e!2538219))

(declare-fun res!1671452 () Bool)

(assert (=> d!1214265 (=> res!1671452 e!2538219)))

(declare-fun lt!1462760 () Option!9498)

(assert (=> d!1214265 (= res!1671452 (isEmpty!26229 lt!1462760))))

(declare-fun e!2538218 () Option!9498)

(assert (=> d!1214265 (= lt!1462760 e!2538218)))

(declare-fun c!704909 () Bool)

(assert (=> d!1214265 (= c!704909 (and ((_ is Cons!43857) rules!3870) ((_ is Nil!43857) (t!338532 rules!3870))))))

(declare-fun lt!1462758 () Unit!63379)

(declare-fun lt!1462759 () Unit!63379)

(assert (=> d!1214265 (= lt!1462758 lt!1462759)))

(declare-fun isPrefix!4139 (List!43980 List!43980) Bool)

(assert (=> d!1214265 (isPrefix!4139 input!3411 input!3411)))

(declare-fun lemmaIsPrefixRefl!2690 (List!43980 List!43980) Unit!63379)

(assert (=> d!1214265 (= lt!1462759 (lemmaIsPrefixRefl!2690 input!3411 input!3411))))

(declare-fun rulesValidInductive!2621 (LexerInterface!6681 List!43981) Bool)

(assert (=> d!1214265 (rulesValidInductive!2621 thiss!26199 rules!3870)))

(assert (=> d!1214265 (= (maxPrefix!3971 thiss!26199 rules!3870 input!3411) lt!1462760)))

(declare-fun b!4089807 () Bool)

(declare-fun e!2538220 () Bool)

(declare-fun get!14382 (Option!9498) tuple2!42788)

(assert (=> b!4089807 (= e!2538220 (contains!8771 rules!3870 (rule!10230 (_1!24528 (get!14382 lt!1462760)))))))

(declare-fun b!4089808 () Bool)

(declare-fun res!1671454 () Bool)

(assert (=> b!4089808 (=> (not res!1671454) (not e!2538220))))

(assert (=> b!4089808 (= res!1671454 (= (value!222774 (_1!24528 (get!14382 lt!1462760))) (apply!10275 (transformation!7092 (rule!10230 (_1!24528 (get!14382 lt!1462760)))) (seqFromList!5309 (originalCharacters!7686 (_1!24528 (get!14382 lt!1462760)))))))))

(declare-fun b!4089809 () Bool)

(declare-fun res!1671453 () Bool)

(assert (=> b!4089809 (=> (not res!1671453) (not e!2538220))))

(declare-fun list!16280 (BalanceConc!26200) List!43980)

(declare-fun charsOf!4852 (Token!13310) BalanceConc!26200)

(assert (=> b!4089809 (= res!1671453 (= (++!11498 (list!16280 (charsOf!4852 (_1!24528 (get!14382 lt!1462760)))) (_2!24528 (get!14382 lt!1462760))) input!3411))))

(declare-fun call!289072 () Option!9498)

(declare-fun bm!289067 () Bool)

(assert (=> bm!289067 (= call!289072 (maxPrefixOneRule!2953 thiss!26199 (h!49277 rules!3870) input!3411))))

(declare-fun b!4089810 () Bool)

(declare-fun res!1671455 () Bool)

(assert (=> b!4089810 (=> (not res!1671455) (not e!2538220))))

(assert (=> b!4089810 (= res!1671455 (matchR!5938 (regex!7092 (rule!10230 (_1!24528 (get!14382 lt!1462760)))) (list!16280 (charsOf!4852 (_1!24528 (get!14382 lt!1462760))))))))

(declare-fun b!4089811 () Bool)

(declare-fun lt!1462762 () Option!9498)

(declare-fun lt!1462761 () Option!9498)

(assert (=> b!4089811 (= e!2538218 (ite (and ((_ is None!9497) lt!1462762) ((_ is None!9497) lt!1462761)) None!9497 (ite ((_ is None!9497) lt!1462761) lt!1462762 (ite ((_ is None!9497) lt!1462762) lt!1462761 (ite (>= (size!32756 (_1!24528 (v!39981 lt!1462762))) (size!32756 (_1!24528 (v!39981 lt!1462761)))) lt!1462762 lt!1462761)))))))

(assert (=> b!4089811 (= lt!1462762 call!289072)))

(assert (=> b!4089811 (= lt!1462761 (maxPrefix!3971 thiss!26199 (t!338532 rules!3870) input!3411))))

(declare-fun b!4089812 () Bool)

(declare-fun res!1671451 () Bool)

(assert (=> b!4089812 (=> (not res!1671451) (not e!2538220))))

(assert (=> b!4089812 (= res!1671451 (= (list!16280 (charsOf!4852 (_1!24528 (get!14382 lt!1462760)))) (originalCharacters!7686 (_1!24528 (get!14382 lt!1462760)))))))

(declare-fun b!4089813 () Bool)

(assert (=> b!4089813 (= e!2538218 call!289072)))

(declare-fun b!4089814 () Bool)

(declare-fun res!1671456 () Bool)

(assert (=> b!4089814 (=> (not res!1671456) (not e!2538220))))

(assert (=> b!4089814 (= res!1671456 (< (size!32757 (_2!24528 (get!14382 lt!1462760))) (size!32757 input!3411)))))

(declare-fun b!4089815 () Bool)

(assert (=> b!4089815 (= e!2538219 e!2538220)))

(declare-fun res!1671450 () Bool)

(assert (=> b!4089815 (=> (not res!1671450) (not e!2538220))))

(declare-fun isDefined!7188 (Option!9498) Bool)

(assert (=> b!4089815 (= res!1671450 (isDefined!7188 lt!1462760))))

(assert (= (and d!1214265 c!704909) b!4089813))

(assert (= (and d!1214265 (not c!704909)) b!4089811))

(assert (= (or b!4089813 b!4089811) bm!289067))

(assert (= (and d!1214265 (not res!1671452)) b!4089815))

(assert (= (and b!4089815 res!1671450) b!4089812))

(assert (= (and b!4089812 res!1671451) b!4089814))

(assert (= (and b!4089814 res!1671456) b!4089809))

(assert (= (and b!4089809 res!1671453) b!4089808))

(assert (= (and b!4089808 res!1671454) b!4089810))

(assert (= (and b!4089810 res!1671455) b!4089807))

(declare-fun m!4696605 () Bool)

(assert (=> b!4089808 m!4696605))

(declare-fun m!4696607 () Bool)

(assert (=> b!4089808 m!4696607))

(assert (=> b!4089808 m!4696607))

(declare-fun m!4696609 () Bool)

(assert (=> b!4089808 m!4696609))

(assert (=> bm!289067 m!4696527))

(assert (=> b!4089812 m!4696605))

(declare-fun m!4696611 () Bool)

(assert (=> b!4089812 m!4696611))

(assert (=> b!4089812 m!4696611))

(declare-fun m!4696613 () Bool)

(assert (=> b!4089812 m!4696613))

(assert (=> b!4089809 m!4696605))

(assert (=> b!4089809 m!4696611))

(assert (=> b!4089809 m!4696611))

(assert (=> b!4089809 m!4696613))

(assert (=> b!4089809 m!4696613))

(declare-fun m!4696615 () Bool)

(assert (=> b!4089809 m!4696615))

(assert (=> b!4089810 m!4696605))

(assert (=> b!4089810 m!4696611))

(assert (=> b!4089810 m!4696611))

(assert (=> b!4089810 m!4696613))

(assert (=> b!4089810 m!4696613))

(declare-fun m!4696617 () Bool)

(assert (=> b!4089810 m!4696617))

(assert (=> b!4089811 m!4696521))

(assert (=> b!4089814 m!4696605))

(declare-fun m!4696619 () Bool)

(assert (=> b!4089814 m!4696619))

(declare-fun m!4696621 () Bool)

(assert (=> b!4089814 m!4696621))

(declare-fun m!4696623 () Bool)

(assert (=> d!1214265 m!4696623))

(declare-fun m!4696625 () Bool)

(assert (=> d!1214265 m!4696625))

(declare-fun m!4696627 () Bool)

(assert (=> d!1214265 m!4696627))

(declare-fun m!4696629 () Bool)

(assert (=> d!1214265 m!4696629))

(assert (=> b!4089807 m!4696605))

(declare-fun m!4696631 () Bool)

(assert (=> b!4089807 m!4696631))

(declare-fun m!4696633 () Bool)

(assert (=> b!4089815 m!4696633))

(assert (=> b!4089731 d!1214265))

(declare-fun d!1214273 () Bool)

(declare-fun fromListB!2432 (List!43980) BalanceConc!26200)

(assert (=> d!1214273 (= (seqFromList!5309 p!2988) (fromListB!2432 p!2988))))

(declare-fun bs!593246 () Bool)

(assert (= bs!593246 d!1214273))

(declare-fun m!4696635 () Bool)

(assert (=> bs!593246 m!4696635))

(assert (=> b!4089731 d!1214273))

(declare-fun d!1214275 () Bool)

(declare-fun dynLambda!18756 (Int BalanceConc!26200) TokenValue!7322)

(assert (=> d!1214275 (= (apply!10275 (transformation!7092 r!4213) lt!1462721) (dynLambda!18756 (toValue!9680 (transformation!7092 r!4213)) lt!1462721))))

(declare-fun b_lambda!119831 () Bool)

(assert (=> (not b_lambda!119831) (not d!1214275)))

(declare-fun tb!245777 () Bool)

(declare-fun t!338534 () Bool)

(assert (=> (and b!4089733 (= (toValue!9680 (transformation!7092 (h!49277 rules!3870))) (toValue!9680 (transformation!7092 r!4213))) t!338534) tb!245777))

(declare-fun result!298226 () Bool)

(declare-fun inv!21 (TokenValue!7322) Bool)

(assert (=> tb!245777 (= result!298226 (inv!21 (dynLambda!18756 (toValue!9680 (transformation!7092 r!4213)) lt!1462721)))))

(declare-fun m!4696637 () Bool)

(assert (=> tb!245777 m!4696637))

(assert (=> d!1214275 t!338534))

(declare-fun b_and!315087 () Bool)

(assert (= b_and!315079 (and (=> t!338534 result!298226) b_and!315087)))

(declare-fun t!338536 () Bool)

(declare-fun tb!245779 () Bool)

(assert (=> (and b!4089736 (= (toValue!9680 (transformation!7092 r!4213)) (toValue!9680 (transformation!7092 r!4213))) t!338536) tb!245779))

(declare-fun result!298230 () Bool)

(assert (= result!298230 result!298226))

(assert (=> d!1214275 t!338536))

(declare-fun b_and!315089 () Bool)

(assert (= b_and!315083 (and (=> t!338536 result!298230) b_and!315089)))

(declare-fun m!4696639 () Bool)

(assert (=> d!1214275 m!4696639))

(assert (=> b!4089731 d!1214275))

(declare-fun b!4089931 () Bool)

(declare-fun e!2538286 () Bool)

(assert (=> b!4089931 (= e!2538286 true)))

(declare-fun d!1214277 () Bool)

(assert (=> d!1214277 e!2538286))

(assert (= d!1214277 b!4089931))

(declare-fun order!23055 () Int)

(declare-fun lambda!127989 () Int)

(declare-fun order!23053 () Int)

(declare-fun dynLambda!18757 (Int Int) Int)

(declare-fun dynLambda!18758 (Int Int) Int)

(assert (=> b!4089931 (< (dynLambda!18757 order!23053 (toValue!9680 (transformation!7092 r!4213))) (dynLambda!18758 order!23055 lambda!127989))))

(declare-fun order!23057 () Int)

(declare-fun dynLambda!18759 (Int Int) Int)

(assert (=> b!4089931 (< (dynLambda!18759 order!23057 (toChars!9539 (transformation!7092 r!4213))) (dynLambda!18758 order!23055 lambda!127989))))

(declare-fun dynLambda!18760 (Int TokenValue!7322) BalanceConc!26200)

(assert (=> d!1214277 (= (list!16280 (dynLambda!18760 (toChars!9539 (transformation!7092 r!4213)) (dynLambda!18756 (toValue!9680 (transformation!7092 r!4213)) lt!1462721))) (list!16280 lt!1462721))))

(declare-fun lt!1462793 () Unit!63379)

(declare-fun ForallOf!885 (Int BalanceConc!26200) Unit!63379)

(assert (=> d!1214277 (= lt!1462793 (ForallOf!885 lambda!127989 lt!1462721))))

(assert (=> d!1214277 (= (lemmaSemiInverse!2059 (transformation!7092 r!4213) lt!1462721) lt!1462793)))

(declare-fun b_lambda!119839 () Bool)

(assert (=> (not b_lambda!119839) (not d!1214277)))

(declare-fun t!338546 () Bool)

(declare-fun tb!245789 () Bool)

(assert (=> (and b!4089733 (= (toChars!9539 (transformation!7092 (h!49277 rules!3870))) (toChars!9539 (transformation!7092 r!4213))) t!338546) tb!245789))

(declare-fun tp!1238216 () Bool)

(declare-fun e!2538289 () Bool)

(declare-fun b!4089936 () Bool)

(declare-fun inv!58558 (Conc!13303) Bool)

(assert (=> b!4089936 (= e!2538289 (and (inv!58558 (c!704899 (dynLambda!18760 (toChars!9539 (transformation!7092 r!4213)) (dynLambda!18756 (toValue!9680 (transformation!7092 r!4213)) lt!1462721)))) tp!1238216))))

(declare-fun result!298244 () Bool)

(declare-fun inv!58559 (BalanceConc!26200) Bool)

(assert (=> tb!245789 (= result!298244 (and (inv!58559 (dynLambda!18760 (toChars!9539 (transformation!7092 r!4213)) (dynLambda!18756 (toValue!9680 (transformation!7092 r!4213)) lt!1462721))) e!2538289))))

(assert (= tb!245789 b!4089936))

(declare-fun m!4696727 () Bool)

(assert (=> b!4089936 m!4696727))

(declare-fun m!4696729 () Bool)

(assert (=> tb!245789 m!4696729))

(assert (=> d!1214277 t!338546))

(declare-fun b_and!315103 () Bool)

(assert (= b_and!315081 (and (=> t!338546 result!298244) b_and!315103)))

(declare-fun t!338548 () Bool)

(declare-fun tb!245791 () Bool)

(assert (=> (and b!4089736 (= (toChars!9539 (transformation!7092 r!4213)) (toChars!9539 (transformation!7092 r!4213))) t!338548) tb!245791))

(declare-fun result!298248 () Bool)

(assert (= result!298248 result!298244))

(assert (=> d!1214277 t!338548))

(declare-fun b_and!315105 () Bool)

(assert (= b_and!315085 (and (=> t!338548 result!298248) b_and!315105)))

(declare-fun b_lambda!119841 () Bool)

(assert (=> (not b_lambda!119841) (not d!1214277)))

(assert (=> d!1214277 t!338534))

(declare-fun b_and!315107 () Bool)

(assert (= b_and!315087 (and (=> t!338534 result!298226) b_and!315107)))

(assert (=> d!1214277 t!338536))

(declare-fun b_and!315109 () Bool)

(assert (= b_and!315089 (and (=> t!338536 result!298230) b_and!315109)))

(assert (=> d!1214277 m!4696639))

(declare-fun m!4696731 () Bool)

(assert (=> d!1214277 m!4696731))

(assert (=> d!1214277 m!4696639))

(declare-fun m!4696733 () Bool)

(assert (=> d!1214277 m!4696733))

(declare-fun m!4696735 () Bool)

(assert (=> d!1214277 m!4696735))

(assert (=> d!1214277 m!4696731))

(declare-fun m!4696737 () Bool)

(assert (=> d!1214277 m!4696737))

(assert (=> b!4089731 d!1214277))

(declare-fun d!1214309 () Bool)

(declare-fun lt!1462801 () Int)

(assert (=> d!1214309 (>= lt!1462801 0)))

(declare-fun e!2538296 () Int)

(assert (=> d!1214309 (= lt!1462801 e!2538296)))

(declare-fun c!704929 () Bool)

(assert (=> d!1214309 (= c!704929 ((_ is Nil!43856) p!2988))))

(assert (=> d!1214309 (= (size!32757 p!2988) lt!1462801)))

(declare-fun b!4089950 () Bool)

(assert (=> b!4089950 (= e!2538296 0)))

(declare-fun b!4089951 () Bool)

(assert (=> b!4089951 (= e!2538296 (+ 1 (size!32757 (t!338531 p!2988))))))

(assert (= (and d!1214309 c!704929) b!4089950))

(assert (= (and d!1214309 (not c!704929)) b!4089951))

(declare-fun m!4696739 () Bool)

(assert (=> b!4089951 m!4696739))

(assert (=> b!4089731 d!1214309))

(declare-fun d!1214311 () Bool)

(assert (=> d!1214311 (= (inv!58553 (tag!7952 (h!49277 rules!3870))) (= (mod (str.len (value!222773 (tag!7952 (h!49277 rules!3870)))) 2) 0))))

(assert (=> b!4089734 d!1214311))

(declare-fun d!1214313 () Bool)

(declare-fun res!1671536 () Bool)

(declare-fun e!2538302 () Bool)

(assert (=> d!1214313 (=> (not res!1671536) (not e!2538302))))

(declare-fun semiInverseModEq!3046 (Int Int) Bool)

(assert (=> d!1214313 (= res!1671536 (semiInverseModEq!3046 (toChars!9539 (transformation!7092 (h!49277 rules!3870))) (toValue!9680 (transformation!7092 (h!49277 rules!3870)))))))

(assert (=> d!1214313 (= (inv!58555 (transformation!7092 (h!49277 rules!3870))) e!2538302)))

(declare-fun b!4089957 () Bool)

(declare-fun equivClasses!2945 (Int Int) Bool)

(assert (=> b!4089957 (= e!2538302 (equivClasses!2945 (toChars!9539 (transformation!7092 (h!49277 rules!3870))) (toValue!9680 (transformation!7092 (h!49277 rules!3870)))))))

(assert (= (and d!1214313 res!1671536) b!4089957))

(declare-fun m!4696789 () Bool)

(assert (=> d!1214313 m!4696789))

(declare-fun m!4696791 () Bool)

(assert (=> b!4089957 m!4696791))

(assert (=> b!4089734 d!1214313))

(declare-fun b!4090003 () Bool)

(declare-fun e!2538330 () Bool)

(declare-fun lt!1462808 () List!43980)

(assert (=> b!4090003 (= e!2538330 (or (not (= suffix!1518 Nil!43856)) (= lt!1462808 p!2988)))))

(declare-fun b!4090000 () Bool)

(declare-fun e!2538329 () List!43980)

(assert (=> b!4090000 (= e!2538329 suffix!1518)))

(declare-fun b!4090001 () Bool)

(assert (=> b!4090001 (= e!2538329 (Cons!43856 (h!49276 p!2988) (++!11498 (t!338531 p!2988) suffix!1518)))))

(declare-fun b!4090002 () Bool)

(declare-fun res!1671545 () Bool)

(assert (=> b!4090002 (=> (not res!1671545) (not e!2538330))))

(assert (=> b!4090002 (= res!1671545 (= (size!32757 lt!1462808) (+ (size!32757 p!2988) (size!32757 suffix!1518))))))

(declare-fun d!1214319 () Bool)

(assert (=> d!1214319 e!2538330))

(declare-fun res!1671544 () Bool)

(assert (=> d!1214319 (=> (not res!1671544) (not e!2538330))))

(declare-fun content!6755 (List!43980) (InoxSet C!24180))

(assert (=> d!1214319 (= res!1671544 (= (content!6755 lt!1462808) ((_ map or) (content!6755 p!2988) (content!6755 suffix!1518))))))

(assert (=> d!1214319 (= lt!1462808 e!2538329)))

(declare-fun c!704932 () Bool)

(assert (=> d!1214319 (= c!704932 ((_ is Nil!43856) p!2988))))

(assert (=> d!1214319 (= (++!11498 p!2988 suffix!1518) lt!1462808)))

(assert (= (and d!1214319 c!704932) b!4090000))

(assert (= (and d!1214319 (not c!704932)) b!4090001))

(assert (= (and d!1214319 res!1671544) b!4090002))

(assert (= (and b!4090002 res!1671545) b!4090003))

(declare-fun m!4696805 () Bool)

(assert (=> b!4090001 m!4696805))

(declare-fun m!4696807 () Bool)

(assert (=> b!4090002 m!4696807))

(assert (=> b!4090002 m!4696551))

(declare-fun m!4696809 () Bool)

(assert (=> b!4090002 m!4696809))

(declare-fun m!4696811 () Bool)

(assert (=> d!1214319 m!4696811))

(declare-fun m!4696813 () Bool)

(assert (=> d!1214319 m!4696813))

(declare-fun m!4696815 () Bool)

(assert (=> d!1214319 m!4696815))

(assert (=> b!4089726 d!1214319))

(declare-fun d!1214327 () Bool)

(assert (=> d!1214327 (= (isEmpty!26229 (maxPrefixOneRule!2953 thiss!26199 (h!49277 rules!3870) input!3411)) (not ((_ is Some!9497) (maxPrefixOneRule!2953 thiss!26199 (h!49277 rules!3870) input!3411))))))

(assert (=> b!4089727 d!1214327))

(declare-fun b!4090027 () Bool)

(declare-fun res!1671565 () Bool)

(declare-fun e!2538342 () Bool)

(assert (=> b!4090027 (=> (not res!1671565) (not e!2538342))))

(declare-fun lt!1462823 () Option!9498)

(assert (=> b!4090027 (= res!1671565 (= (rule!10230 (_1!24528 (get!14382 lt!1462823))) (h!49277 rules!3870)))))

(declare-fun b!4090028 () Bool)

(declare-fun res!1671566 () Bool)

(assert (=> b!4090028 (=> (not res!1671566) (not e!2538342))))

(assert (=> b!4090028 (= res!1671566 (= (++!11498 (list!16280 (charsOf!4852 (_1!24528 (get!14382 lt!1462823)))) (_2!24528 (get!14382 lt!1462823))) input!3411))))

(declare-fun b!4090029 () Bool)

(declare-fun e!2538341 () Bool)

(assert (=> b!4090029 (= e!2538341 e!2538342)))

(declare-fun res!1671561 () Bool)

(assert (=> b!4090029 (=> (not res!1671561) (not e!2538342))))

(assert (=> b!4090029 (= res!1671561 (matchR!5938 (regex!7092 (h!49277 rules!3870)) (list!16280 (charsOf!4852 (_1!24528 (get!14382 lt!1462823))))))))

(declare-fun b!4090031 () Bool)

(declare-fun e!2538343 () Option!9498)

(declare-datatypes ((tuple2!42792 0))(
  ( (tuple2!42793 (_1!24530 List!43980) (_2!24530 List!43980)) )
))
(declare-fun lt!1462819 () tuple2!42792)

(declare-fun size!32759 (BalanceConc!26200) Int)

(assert (=> b!4090031 (= e!2538343 (Some!9497 (tuple2!42789 (Token!13311 (apply!10275 (transformation!7092 (h!49277 rules!3870)) (seqFromList!5309 (_1!24530 lt!1462819))) (h!49277 rules!3870) (size!32759 (seqFromList!5309 (_1!24530 lt!1462819))) (_1!24530 lt!1462819)) (_2!24530 lt!1462819))))))

(declare-fun lt!1462822 () Unit!63379)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1431 (Regex!11997 List!43980) Unit!63379)

(assert (=> b!4090031 (= lt!1462822 (longestMatchIsAcceptedByMatchOrIsEmpty!1431 (regex!7092 (h!49277 rules!3870)) input!3411))))

(declare-fun res!1671560 () Bool)

(declare-fun findLongestMatchInner!1458 (Regex!11997 List!43980 Int List!43980 List!43980 Int) tuple2!42792)

(assert (=> b!4090031 (= res!1671560 (isEmpty!26231 (_1!24530 (findLongestMatchInner!1458 (regex!7092 (h!49277 rules!3870)) Nil!43856 (size!32757 Nil!43856) input!3411 input!3411 (size!32757 input!3411)))))))

(declare-fun e!2538344 () Bool)

(assert (=> b!4090031 (=> res!1671560 e!2538344)))

(assert (=> b!4090031 e!2538344))

(declare-fun lt!1462820 () Unit!63379)

(assert (=> b!4090031 (= lt!1462820 lt!1462822)))

(declare-fun lt!1462821 () Unit!63379)

(assert (=> b!4090031 (= lt!1462821 (lemmaSemiInverse!2059 (transformation!7092 (h!49277 rules!3870)) (seqFromList!5309 (_1!24530 lt!1462819))))))

(declare-fun b!4090032 () Bool)

(assert (=> b!4090032 (= e!2538343 None!9497)))

(declare-fun b!4090033 () Bool)

(assert (=> b!4090033 (= e!2538342 (= (size!32756 (_1!24528 (get!14382 lt!1462823))) (size!32757 (originalCharacters!7686 (_1!24528 (get!14382 lt!1462823))))))))

(declare-fun b!4090034 () Bool)

(assert (=> b!4090034 (= e!2538344 (matchR!5938 (regex!7092 (h!49277 rules!3870)) (_1!24530 (findLongestMatchInner!1458 (regex!7092 (h!49277 rules!3870)) Nil!43856 (size!32757 Nil!43856) input!3411 input!3411 (size!32757 input!3411)))))))

(declare-fun b!4090035 () Bool)

(declare-fun res!1671562 () Bool)

(assert (=> b!4090035 (=> (not res!1671562) (not e!2538342))))

(assert (=> b!4090035 (= res!1671562 (< (size!32757 (_2!24528 (get!14382 lt!1462823))) (size!32757 input!3411)))))

(declare-fun d!1214329 () Bool)

(assert (=> d!1214329 e!2538341))

(declare-fun res!1671564 () Bool)

(assert (=> d!1214329 (=> res!1671564 e!2538341)))

(assert (=> d!1214329 (= res!1671564 (isEmpty!26229 lt!1462823))))

(assert (=> d!1214329 (= lt!1462823 e!2538343)))

(declare-fun c!704935 () Bool)

(assert (=> d!1214329 (= c!704935 (isEmpty!26231 (_1!24530 lt!1462819)))))

(declare-fun findLongestMatch!1371 (Regex!11997 List!43980) tuple2!42792)

(assert (=> d!1214329 (= lt!1462819 (findLongestMatch!1371 (regex!7092 (h!49277 rules!3870)) input!3411))))

(assert (=> d!1214329 (ruleValid!3012 thiss!26199 (h!49277 rules!3870))))

(assert (=> d!1214329 (= (maxPrefixOneRule!2953 thiss!26199 (h!49277 rules!3870) input!3411) lt!1462823)))

(declare-fun b!4090030 () Bool)

(declare-fun res!1671563 () Bool)

(assert (=> b!4090030 (=> (not res!1671563) (not e!2538342))))

(assert (=> b!4090030 (= res!1671563 (= (value!222774 (_1!24528 (get!14382 lt!1462823))) (apply!10275 (transformation!7092 (rule!10230 (_1!24528 (get!14382 lt!1462823)))) (seqFromList!5309 (originalCharacters!7686 (_1!24528 (get!14382 lt!1462823)))))))))

(assert (= (and d!1214329 c!704935) b!4090032))

(assert (= (and d!1214329 (not c!704935)) b!4090031))

(assert (= (and b!4090031 (not res!1671560)) b!4090034))

(assert (= (and d!1214329 (not res!1671564)) b!4090029))

(assert (= (and b!4090029 res!1671561) b!4090028))

(assert (= (and b!4090028 res!1671566) b!4090035))

(assert (= (and b!4090035 res!1671562) b!4090027))

(assert (= (and b!4090027 res!1671565) b!4090030))

(assert (= (and b!4090030 res!1671563) b!4090033))

(declare-fun m!4696821 () Bool)

(assert (=> b!4090027 m!4696821))

(assert (=> b!4090033 m!4696821))

(declare-fun m!4696823 () Bool)

(assert (=> b!4090033 m!4696823))

(declare-fun m!4696825 () Bool)

(assert (=> d!1214329 m!4696825))

(declare-fun m!4696827 () Bool)

(assert (=> d!1214329 m!4696827))

(declare-fun m!4696829 () Bool)

(assert (=> d!1214329 m!4696829))

(declare-fun m!4696831 () Bool)

(assert (=> d!1214329 m!4696831))

(declare-fun m!4696833 () Bool)

(assert (=> b!4090031 m!4696833))

(declare-fun m!4696835 () Bool)

(assert (=> b!4090031 m!4696835))

(assert (=> b!4090031 m!4696835))

(declare-fun m!4696837 () Bool)

(assert (=> b!4090031 m!4696837))

(declare-fun m!4696839 () Bool)

(assert (=> b!4090031 m!4696839))

(assert (=> b!4090031 m!4696833))

(assert (=> b!4090031 m!4696621))

(declare-fun m!4696841 () Bool)

(assert (=> b!4090031 m!4696841))

(declare-fun m!4696843 () Bool)

(assert (=> b!4090031 m!4696843))

(assert (=> b!4090031 m!4696621))

(assert (=> b!4090031 m!4696835))

(declare-fun m!4696845 () Bool)

(assert (=> b!4090031 m!4696845))

(assert (=> b!4090031 m!4696835))

(declare-fun m!4696847 () Bool)

(assert (=> b!4090031 m!4696847))

(assert (=> b!4090029 m!4696821))

(declare-fun m!4696849 () Bool)

(assert (=> b!4090029 m!4696849))

(assert (=> b!4090029 m!4696849))

(declare-fun m!4696851 () Bool)

(assert (=> b!4090029 m!4696851))

(assert (=> b!4090029 m!4696851))

(declare-fun m!4696853 () Bool)

(assert (=> b!4090029 m!4696853))

(assert (=> b!4090034 m!4696833))

(assert (=> b!4090034 m!4696621))

(assert (=> b!4090034 m!4696833))

(assert (=> b!4090034 m!4696621))

(assert (=> b!4090034 m!4696841))

(declare-fun m!4696855 () Bool)

(assert (=> b!4090034 m!4696855))

(assert (=> b!4090030 m!4696821))

(declare-fun m!4696857 () Bool)

(assert (=> b!4090030 m!4696857))

(assert (=> b!4090030 m!4696857))

(declare-fun m!4696859 () Bool)

(assert (=> b!4090030 m!4696859))

(assert (=> b!4090035 m!4696821))

(declare-fun m!4696861 () Bool)

(assert (=> b!4090035 m!4696861))

(assert (=> b!4090035 m!4696621))

(assert (=> b!4090028 m!4696821))

(assert (=> b!4090028 m!4696849))

(assert (=> b!4090028 m!4696849))

(assert (=> b!4090028 m!4696851))

(assert (=> b!4090028 m!4696851))

(declare-fun m!4696863 () Bool)

(assert (=> b!4090028 m!4696863))

(assert (=> b!4089727 d!1214329))

(declare-fun d!1214331 () Bool)

(declare-fun res!1671567 () Bool)

(declare-fun e!2538345 () Bool)

(assert (=> d!1214331 (=> (not res!1671567) (not e!2538345))))

(assert (=> d!1214331 (= res!1671567 (rulesValid!2779 thiss!26199 (t!338532 rules!3870)))))

(assert (=> d!1214331 (= (rulesInvariant!6024 thiss!26199 (t!338532 rules!3870)) e!2538345)))

(declare-fun b!4090036 () Bool)

(assert (=> b!4090036 (= e!2538345 (noDuplicateTag!2780 thiss!26199 (t!338532 rules!3870) Nil!43858))))

(assert (= (and d!1214331 res!1671567) b!4090036))

(declare-fun m!4696865 () Bool)

(assert (=> d!1214331 m!4696865))

(declare-fun m!4696867 () Bool)

(assert (=> b!4090036 m!4696867))

(assert (=> b!4089727 d!1214331))

(declare-fun d!1214333 () Bool)

(assert (=> d!1214333 (rulesInvariant!6024 thiss!26199 (t!338532 rules!3870))))

(declare-fun lt!1462826 () Unit!63379)

(declare-fun choose!24978 (LexerInterface!6681 Rule!13984 List!43981) Unit!63379)

(assert (=> d!1214333 (= lt!1462826 (choose!24978 thiss!26199 (h!49277 rules!3870) (t!338532 rules!3870)))))

(assert (=> d!1214333 (rulesInvariant!6024 thiss!26199 (Cons!43857 (h!49277 rules!3870) (t!338532 rules!3870)))))

(assert (=> d!1214333 (= (lemmaInvariantOnRulesThenOnTail!794 thiss!26199 (h!49277 rules!3870) (t!338532 rules!3870)) lt!1462826)))

(declare-fun bs!593249 () Bool)

(assert (= bs!593249 d!1214333))

(assert (=> bs!593249 m!4696531))

(declare-fun m!4696869 () Bool)

(assert (=> bs!593249 m!4696869))

(declare-fun m!4696871 () Bool)

(assert (=> bs!593249 m!4696871))

(assert (=> b!4089727 d!1214333))

(declare-fun d!1214335 () Bool)

(declare-fun e!2538347 () Bool)

(assert (=> d!1214335 e!2538347))

(declare-fun res!1671570 () Bool)

(assert (=> d!1214335 (=> res!1671570 e!2538347)))

(declare-fun lt!1462829 () Option!9498)

(assert (=> d!1214335 (= res!1671570 (isEmpty!26229 lt!1462829))))

(declare-fun e!2538346 () Option!9498)

(assert (=> d!1214335 (= lt!1462829 e!2538346)))

(declare-fun c!704936 () Bool)

(assert (=> d!1214335 (= c!704936 (and ((_ is Cons!43857) (t!338532 rules!3870)) ((_ is Nil!43857) (t!338532 (t!338532 rules!3870)))))))

(declare-fun lt!1462827 () Unit!63379)

(declare-fun lt!1462828 () Unit!63379)

(assert (=> d!1214335 (= lt!1462827 lt!1462828)))

(assert (=> d!1214335 (isPrefix!4139 input!3411 input!3411)))

(assert (=> d!1214335 (= lt!1462828 (lemmaIsPrefixRefl!2690 input!3411 input!3411))))

(assert (=> d!1214335 (rulesValidInductive!2621 thiss!26199 (t!338532 rules!3870))))

(assert (=> d!1214335 (= (maxPrefix!3971 thiss!26199 (t!338532 rules!3870) input!3411) lt!1462829)))

(declare-fun b!4090037 () Bool)

(declare-fun e!2538348 () Bool)

(assert (=> b!4090037 (= e!2538348 (contains!8771 (t!338532 rules!3870) (rule!10230 (_1!24528 (get!14382 lt!1462829)))))))

(declare-fun b!4090038 () Bool)

(declare-fun res!1671572 () Bool)

(assert (=> b!4090038 (=> (not res!1671572) (not e!2538348))))

(assert (=> b!4090038 (= res!1671572 (= (value!222774 (_1!24528 (get!14382 lt!1462829))) (apply!10275 (transformation!7092 (rule!10230 (_1!24528 (get!14382 lt!1462829)))) (seqFromList!5309 (originalCharacters!7686 (_1!24528 (get!14382 lt!1462829)))))))))

(declare-fun b!4090039 () Bool)

(declare-fun res!1671571 () Bool)

(assert (=> b!4090039 (=> (not res!1671571) (not e!2538348))))

(assert (=> b!4090039 (= res!1671571 (= (++!11498 (list!16280 (charsOf!4852 (_1!24528 (get!14382 lt!1462829)))) (_2!24528 (get!14382 lt!1462829))) input!3411))))

(declare-fun call!289077 () Option!9498)

(declare-fun bm!289072 () Bool)

(assert (=> bm!289072 (= call!289077 (maxPrefixOneRule!2953 thiss!26199 (h!49277 (t!338532 rules!3870)) input!3411))))

(declare-fun b!4090040 () Bool)

(declare-fun res!1671573 () Bool)

(assert (=> b!4090040 (=> (not res!1671573) (not e!2538348))))

(assert (=> b!4090040 (= res!1671573 (matchR!5938 (regex!7092 (rule!10230 (_1!24528 (get!14382 lt!1462829)))) (list!16280 (charsOf!4852 (_1!24528 (get!14382 lt!1462829))))))))

(declare-fun b!4090041 () Bool)

(declare-fun lt!1462831 () Option!9498)

(declare-fun lt!1462830 () Option!9498)

(assert (=> b!4090041 (= e!2538346 (ite (and ((_ is None!9497) lt!1462831) ((_ is None!9497) lt!1462830)) None!9497 (ite ((_ is None!9497) lt!1462830) lt!1462831 (ite ((_ is None!9497) lt!1462831) lt!1462830 (ite (>= (size!32756 (_1!24528 (v!39981 lt!1462831))) (size!32756 (_1!24528 (v!39981 lt!1462830)))) lt!1462831 lt!1462830)))))))

(assert (=> b!4090041 (= lt!1462831 call!289077)))

(assert (=> b!4090041 (= lt!1462830 (maxPrefix!3971 thiss!26199 (t!338532 (t!338532 rules!3870)) input!3411))))

(declare-fun b!4090042 () Bool)

(declare-fun res!1671569 () Bool)

(assert (=> b!4090042 (=> (not res!1671569) (not e!2538348))))

(assert (=> b!4090042 (= res!1671569 (= (list!16280 (charsOf!4852 (_1!24528 (get!14382 lt!1462829)))) (originalCharacters!7686 (_1!24528 (get!14382 lt!1462829)))))))

(declare-fun b!4090043 () Bool)

(assert (=> b!4090043 (= e!2538346 call!289077)))

(declare-fun b!4090044 () Bool)

(declare-fun res!1671574 () Bool)

(assert (=> b!4090044 (=> (not res!1671574) (not e!2538348))))

(assert (=> b!4090044 (= res!1671574 (< (size!32757 (_2!24528 (get!14382 lt!1462829))) (size!32757 input!3411)))))

(declare-fun b!4090045 () Bool)

(assert (=> b!4090045 (= e!2538347 e!2538348)))

(declare-fun res!1671568 () Bool)

(assert (=> b!4090045 (=> (not res!1671568) (not e!2538348))))

(assert (=> b!4090045 (= res!1671568 (isDefined!7188 lt!1462829))))

(assert (= (and d!1214335 c!704936) b!4090043))

(assert (= (and d!1214335 (not c!704936)) b!4090041))

(assert (= (or b!4090043 b!4090041) bm!289072))

(assert (= (and d!1214335 (not res!1671570)) b!4090045))

(assert (= (and b!4090045 res!1671568) b!4090042))

(assert (= (and b!4090042 res!1671569) b!4090044))

(assert (= (and b!4090044 res!1671574) b!4090039))

(assert (= (and b!4090039 res!1671571) b!4090038))

(assert (= (and b!4090038 res!1671572) b!4090040))

(assert (= (and b!4090040 res!1671573) b!4090037))

(declare-fun m!4696873 () Bool)

(assert (=> b!4090038 m!4696873))

(declare-fun m!4696875 () Bool)

(assert (=> b!4090038 m!4696875))

(assert (=> b!4090038 m!4696875))

(declare-fun m!4696877 () Bool)

(assert (=> b!4090038 m!4696877))

(declare-fun m!4696879 () Bool)

(assert (=> bm!289072 m!4696879))

(assert (=> b!4090042 m!4696873))

(declare-fun m!4696881 () Bool)

(assert (=> b!4090042 m!4696881))

(assert (=> b!4090042 m!4696881))

(declare-fun m!4696883 () Bool)

(assert (=> b!4090042 m!4696883))

(assert (=> b!4090039 m!4696873))

(assert (=> b!4090039 m!4696881))

(assert (=> b!4090039 m!4696881))

(assert (=> b!4090039 m!4696883))

(assert (=> b!4090039 m!4696883))

(declare-fun m!4696885 () Bool)

(assert (=> b!4090039 m!4696885))

(assert (=> b!4090040 m!4696873))

(assert (=> b!4090040 m!4696881))

(assert (=> b!4090040 m!4696881))

(assert (=> b!4090040 m!4696883))

(assert (=> b!4090040 m!4696883))

(declare-fun m!4696887 () Bool)

(assert (=> b!4090040 m!4696887))

(declare-fun m!4696889 () Bool)

(assert (=> b!4090041 m!4696889))

(assert (=> b!4090044 m!4696873))

(declare-fun m!4696891 () Bool)

(assert (=> b!4090044 m!4696891))

(assert (=> b!4090044 m!4696621))

(declare-fun m!4696893 () Bool)

(assert (=> d!1214335 m!4696893))

(assert (=> d!1214335 m!4696625))

(assert (=> d!1214335 m!4696627))

(declare-fun m!4696895 () Bool)

(assert (=> d!1214335 m!4696895))

(assert (=> b!4090037 m!4696873))

(declare-fun m!4696897 () Bool)

(assert (=> b!4090037 m!4696897))

(declare-fun m!4696899 () Bool)

(assert (=> b!4090045 m!4696899))

(assert (=> b!4089725 d!1214335))

(declare-fun d!1214337 () Bool)

(assert (=> d!1214337 (= (isEmpty!26230 rules!3870) ((_ is Nil!43857) rules!3870))))

(assert (=> b!4089729 d!1214337))

(declare-fun d!1214339 () Bool)

(assert (=> d!1214339 (= (inv!58553 (tag!7952 r!4213)) (= (mod (str.len (value!222773 (tag!7952 r!4213))) 2) 0))))

(assert (=> b!4089738 d!1214339))

(declare-fun d!1214341 () Bool)

(declare-fun res!1671575 () Bool)

(declare-fun e!2538349 () Bool)

(assert (=> d!1214341 (=> (not res!1671575) (not e!2538349))))

(assert (=> d!1214341 (= res!1671575 (semiInverseModEq!3046 (toChars!9539 (transformation!7092 r!4213)) (toValue!9680 (transformation!7092 r!4213))))))

(assert (=> d!1214341 (= (inv!58555 (transformation!7092 r!4213)) e!2538349)))

(declare-fun b!4090046 () Bool)

(assert (=> b!4090046 (= e!2538349 (equivClasses!2945 (toChars!9539 (transformation!7092 r!4213)) (toValue!9680 (transformation!7092 r!4213))))))

(assert (= (and d!1214341 res!1671575) b!4090046))

(declare-fun m!4696901 () Bool)

(assert (=> d!1214341 m!4696901))

(declare-fun m!4696903 () Bool)

(assert (=> b!4090046 m!4696903))

(assert (=> b!4089738 d!1214341))

(declare-fun b!4090075 () Bool)

(declare-fun res!1671596 () Bool)

(declare-fun e!2538367 () Bool)

(assert (=> b!4090075 (=> (not res!1671596) (not e!2538367))))

(declare-fun tail!6379 (List!43980) List!43980)

(assert (=> b!4090075 (= res!1671596 (isEmpty!26231 (tail!6379 p!2988)))))

(declare-fun b!4090076 () Bool)

(declare-fun res!1671595 () Bool)

(assert (=> b!4090076 (=> (not res!1671595) (not e!2538367))))

(declare-fun call!289080 () Bool)

(assert (=> b!4090076 (= res!1671595 (not call!289080))))

(declare-fun d!1214343 () Bool)

(declare-fun e!2538369 () Bool)

(assert (=> d!1214343 e!2538369))

(declare-fun c!704945 () Bool)

(assert (=> d!1214343 (= c!704945 ((_ is EmptyExpr!11997) (regex!7092 r!4213)))))

(declare-fun lt!1462834 () Bool)

(declare-fun e!2538370 () Bool)

(assert (=> d!1214343 (= lt!1462834 e!2538370)))

(declare-fun c!704944 () Bool)

(assert (=> d!1214343 (= c!704944 (isEmpty!26231 p!2988))))

(declare-fun validRegex!5434 (Regex!11997) Bool)

(assert (=> d!1214343 (validRegex!5434 (regex!7092 r!4213))))

(assert (=> d!1214343 (= (matchR!5938 (regex!7092 r!4213) p!2988) lt!1462834)))

(declare-fun b!4090077 () Bool)

(declare-fun e!2538365 () Bool)

(declare-fun head!8645 (List!43980) C!24180)

(assert (=> b!4090077 (= e!2538365 (not (= (head!8645 p!2988) (c!704898 (regex!7092 r!4213)))))))

(declare-fun b!4090078 () Bool)

(declare-fun derivativeStep!3635 (Regex!11997 C!24180) Regex!11997)

(assert (=> b!4090078 (= e!2538370 (matchR!5938 (derivativeStep!3635 (regex!7092 r!4213) (head!8645 p!2988)) (tail!6379 p!2988)))))

(declare-fun b!4090079 () Bool)

(declare-fun e!2538364 () Bool)

(assert (=> b!4090079 (= e!2538369 e!2538364)))

(declare-fun c!704943 () Bool)

(assert (=> b!4090079 (= c!704943 ((_ is EmptyLang!11997) (regex!7092 r!4213)))))

(declare-fun b!4090080 () Bool)

(declare-fun e!2538368 () Bool)

(declare-fun e!2538366 () Bool)

(assert (=> b!4090080 (= e!2538368 e!2538366)))

(declare-fun res!1671594 () Bool)

(assert (=> b!4090080 (=> (not res!1671594) (not e!2538366))))

(assert (=> b!4090080 (= res!1671594 (not lt!1462834))))

(declare-fun b!4090081 () Bool)

(assert (=> b!4090081 (= e!2538367 (= (head!8645 p!2988) (c!704898 (regex!7092 r!4213))))))

(declare-fun b!4090082 () Bool)

(declare-fun res!1671597 () Bool)

(assert (=> b!4090082 (=> res!1671597 e!2538365)))

(assert (=> b!4090082 (= res!1671597 (not (isEmpty!26231 (tail!6379 p!2988))))))

(declare-fun b!4090083 () Bool)

(assert (=> b!4090083 (= e!2538369 (= lt!1462834 call!289080))))

(declare-fun b!4090084 () Bool)

(assert (=> b!4090084 (= e!2538364 (not lt!1462834))))

(declare-fun b!4090085 () Bool)

(assert (=> b!4090085 (= e!2538366 e!2538365)))

(declare-fun res!1671592 () Bool)

(assert (=> b!4090085 (=> res!1671592 e!2538365)))

(assert (=> b!4090085 (= res!1671592 call!289080)))

(declare-fun b!4090086 () Bool)

(declare-fun nullable!4234 (Regex!11997) Bool)

(assert (=> b!4090086 (= e!2538370 (nullable!4234 (regex!7092 r!4213)))))

(declare-fun b!4090087 () Bool)

(declare-fun res!1671593 () Bool)

(assert (=> b!4090087 (=> res!1671593 e!2538368)))

(assert (=> b!4090087 (= res!1671593 (not ((_ is ElementMatch!11997) (regex!7092 r!4213))))))

(assert (=> b!4090087 (= e!2538364 e!2538368)))

(declare-fun bm!289075 () Bool)

(assert (=> bm!289075 (= call!289080 (isEmpty!26231 p!2988))))

(declare-fun b!4090088 () Bool)

(declare-fun res!1671598 () Bool)

(assert (=> b!4090088 (=> res!1671598 e!2538368)))

(assert (=> b!4090088 (= res!1671598 e!2538367)))

(declare-fun res!1671599 () Bool)

(assert (=> b!4090088 (=> (not res!1671599) (not e!2538367))))

(assert (=> b!4090088 (= res!1671599 lt!1462834)))

(assert (= (and d!1214343 c!704944) b!4090086))

(assert (= (and d!1214343 (not c!704944)) b!4090078))

(assert (= (and d!1214343 c!704945) b!4090083))

(assert (= (and d!1214343 (not c!704945)) b!4090079))

(assert (= (and b!4090079 c!704943) b!4090084))

(assert (= (and b!4090079 (not c!704943)) b!4090087))

(assert (= (and b!4090087 (not res!1671593)) b!4090088))

(assert (= (and b!4090088 res!1671599) b!4090076))

(assert (= (and b!4090076 res!1671595) b!4090075))

(assert (= (and b!4090075 res!1671596) b!4090081))

(assert (= (and b!4090088 (not res!1671598)) b!4090080))

(assert (= (and b!4090080 res!1671594) b!4090085))

(assert (= (and b!4090085 (not res!1671592)) b!4090082))

(assert (= (and b!4090082 (not res!1671597)) b!4090077))

(assert (= (or b!4090083 b!4090076 b!4090085) bm!289075))

(declare-fun m!4696905 () Bool)

(assert (=> b!4090075 m!4696905))

(assert (=> b!4090075 m!4696905))

(declare-fun m!4696907 () Bool)

(assert (=> b!4090075 m!4696907))

(declare-fun m!4696909 () Bool)

(assert (=> b!4090086 m!4696909))

(declare-fun m!4696911 () Bool)

(assert (=> b!4090081 m!4696911))

(assert (=> bm!289075 m!4696523))

(assert (=> b!4090077 m!4696911))

(assert (=> b!4090082 m!4696905))

(assert (=> b!4090082 m!4696905))

(assert (=> b!4090082 m!4696907))

(assert (=> b!4090078 m!4696911))

(assert (=> b!4090078 m!4696911))

(declare-fun m!4696913 () Bool)

(assert (=> b!4090078 m!4696913))

(assert (=> b!4090078 m!4696905))

(assert (=> b!4090078 m!4696913))

(assert (=> b!4090078 m!4696905))

(declare-fun m!4696915 () Bool)

(assert (=> b!4090078 m!4696915))

(assert (=> d!1214343 m!4696523))

(declare-fun m!4696917 () Bool)

(assert (=> d!1214343 m!4696917))

(assert (=> b!4089739 d!1214343))

(declare-fun d!1214345 () Bool)

(declare-fun res!1671604 () Bool)

(declare-fun e!2538373 () Bool)

(assert (=> d!1214345 (=> (not res!1671604) (not e!2538373))))

(assert (=> d!1214345 (= res!1671604 (validRegex!5434 (regex!7092 r!4213)))))

(assert (=> d!1214345 (= (ruleValid!3012 thiss!26199 r!4213) e!2538373)))

(declare-fun b!4090093 () Bool)

(declare-fun res!1671605 () Bool)

(assert (=> b!4090093 (=> (not res!1671605) (not e!2538373))))

(assert (=> b!4090093 (= res!1671605 (not (nullable!4234 (regex!7092 r!4213))))))

(declare-fun b!4090094 () Bool)

(assert (=> b!4090094 (= e!2538373 (not (= (tag!7952 r!4213) (String!50361 ""))))))

(assert (= (and d!1214345 res!1671604) b!4090093))

(assert (= (and b!4090093 res!1671605) b!4090094))

(assert (=> d!1214345 m!4696917))

(assert (=> b!4090093 m!4696909))

(assert (=> b!4089739 d!1214345))

(declare-fun d!1214347 () Bool)

(assert (=> d!1214347 (ruleValid!3012 thiss!26199 r!4213)))

(declare-fun lt!1462837 () Unit!63379)

(declare-fun choose!24979 (LexerInterface!6681 Rule!13984 List!43981) Unit!63379)

(assert (=> d!1214347 (= lt!1462837 (choose!24979 thiss!26199 r!4213 rules!3870))))

(assert (=> d!1214347 (contains!8771 rules!3870 r!4213)))

(assert (=> d!1214347 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2078 thiss!26199 r!4213 rules!3870) lt!1462837)))

(declare-fun bs!593250 () Bool)

(assert (= bs!593250 d!1214347))

(assert (=> bs!593250 m!4696511))

(declare-fun m!4696919 () Bool)

(assert (=> bs!593250 m!4696919))

(assert (=> bs!593250 m!4696553))

(assert (=> b!4089739 d!1214347))

(declare-fun b!4090099 () Bool)

(declare-fun e!2538376 () Bool)

(declare-fun tp!1238256 () Bool)

(assert (=> b!4090099 (= e!2538376 (and tp_is_empty!20997 tp!1238256))))

(assert (=> b!4089737 (= tp!1238207 e!2538376)))

(assert (= (and b!4089737 ((_ is Cons!43856) (t!338531 input!3411))) b!4090099))

(declare-fun b!4090112 () Bool)

(declare-fun e!2538379 () Bool)

(declare-fun tp!1238268 () Bool)

(assert (=> b!4090112 (= e!2538379 tp!1238268)))

(declare-fun b!4090110 () Bool)

(assert (=> b!4090110 (= e!2538379 tp_is_empty!20997)))

(assert (=> b!4089734 (= tp!1238202 e!2538379)))

(declare-fun b!4090113 () Bool)

(declare-fun tp!1238271 () Bool)

(declare-fun tp!1238269 () Bool)

(assert (=> b!4090113 (= e!2538379 (and tp!1238271 tp!1238269))))

(declare-fun b!4090111 () Bool)

(declare-fun tp!1238270 () Bool)

(declare-fun tp!1238267 () Bool)

(assert (=> b!4090111 (= e!2538379 (and tp!1238270 tp!1238267))))

(assert (= (and b!4089734 ((_ is ElementMatch!11997) (regex!7092 (h!49277 rules!3870)))) b!4090110))

(assert (= (and b!4089734 ((_ is Concat!19320) (regex!7092 (h!49277 rules!3870)))) b!4090111))

(assert (= (and b!4089734 ((_ is Star!11997) (regex!7092 (h!49277 rules!3870)))) b!4090112))

(assert (= (and b!4089734 ((_ is Union!11997) (regex!7092 (h!49277 rules!3870)))) b!4090113))

(declare-fun b!4090114 () Bool)

(declare-fun e!2538380 () Bool)

(declare-fun tp!1238272 () Bool)

(assert (=> b!4090114 (= e!2538380 (and tp_is_empty!20997 tp!1238272))))

(assert (=> b!4089740 (= tp!1238209 e!2538380)))

(assert (= (and b!4089740 ((_ is Cons!43856) (t!338531 suffix!1518))) b!4090114))

(declare-fun b!4090117 () Bool)

(declare-fun e!2538381 () Bool)

(declare-fun tp!1238274 () Bool)

(assert (=> b!4090117 (= e!2538381 tp!1238274)))

(declare-fun b!4090115 () Bool)

(assert (=> b!4090115 (= e!2538381 tp_is_empty!20997)))

(assert (=> b!4089738 (= tp!1238203 e!2538381)))

(declare-fun b!4090118 () Bool)

(declare-fun tp!1238277 () Bool)

(declare-fun tp!1238275 () Bool)

(assert (=> b!4090118 (= e!2538381 (and tp!1238277 tp!1238275))))

(declare-fun b!4090116 () Bool)

(declare-fun tp!1238276 () Bool)

(declare-fun tp!1238273 () Bool)

(assert (=> b!4090116 (= e!2538381 (and tp!1238276 tp!1238273))))

(assert (= (and b!4089738 ((_ is ElementMatch!11997) (regex!7092 r!4213))) b!4090115))

(assert (= (and b!4089738 ((_ is Concat!19320) (regex!7092 r!4213))) b!4090116))

(assert (= (and b!4089738 ((_ is Star!11997) (regex!7092 r!4213))) b!4090117))

(assert (= (and b!4089738 ((_ is Union!11997) (regex!7092 r!4213))) b!4090118))

(declare-fun b!4090129 () Bool)

(declare-fun b_free!114341 () Bool)

(declare-fun b_next!115045 () Bool)

(assert (=> b!4090129 (= b_free!114341 (not b_next!115045))))

(declare-fun tb!245797 () Bool)

(declare-fun t!338554 () Bool)

(assert (=> (and b!4090129 (= (toValue!9680 (transformation!7092 (h!49277 (t!338532 rules!3870)))) (toValue!9680 (transformation!7092 r!4213))) t!338554) tb!245797))

(declare-fun result!298266 () Bool)

(assert (= result!298266 result!298226))

(assert (=> d!1214275 t!338554))

(assert (=> d!1214277 t!338554))

(declare-fun tp!1238286 () Bool)

(declare-fun b_and!315115 () Bool)

(assert (=> b!4090129 (= tp!1238286 (and (=> t!338554 result!298266) b_and!315115))))

(declare-fun b_free!114343 () Bool)

(declare-fun b_next!115047 () Bool)

(assert (=> b!4090129 (= b_free!114343 (not b_next!115047))))

(declare-fun tb!245799 () Bool)

(declare-fun t!338556 () Bool)

(assert (=> (and b!4090129 (= (toChars!9539 (transformation!7092 (h!49277 (t!338532 rules!3870)))) (toChars!9539 (transformation!7092 r!4213))) t!338556) tb!245799))

(declare-fun result!298268 () Bool)

(assert (= result!298268 result!298244))

(assert (=> d!1214277 t!338556))

(declare-fun tp!1238288 () Bool)

(declare-fun b_and!315117 () Bool)

(assert (=> b!4090129 (= tp!1238288 (and (=> t!338556 result!298268) b_and!315117))))

(declare-fun e!2538393 () Bool)

(assert (=> b!4090129 (= e!2538393 (and tp!1238286 tp!1238288))))

(declare-fun b!4090128 () Bool)

(declare-fun tp!1238287 () Bool)

(declare-fun e!2538392 () Bool)

(assert (=> b!4090128 (= e!2538392 (and tp!1238287 (inv!58553 (tag!7952 (h!49277 (t!338532 rules!3870)))) (inv!58555 (transformation!7092 (h!49277 (t!338532 rules!3870)))) e!2538393))))

(declare-fun b!4090127 () Bool)

(declare-fun e!2538391 () Bool)

(declare-fun tp!1238289 () Bool)

(assert (=> b!4090127 (= e!2538391 (and e!2538392 tp!1238289))))

(assert (=> b!4089728 (= tp!1238210 e!2538391)))

(assert (= b!4090128 b!4090129))

(assert (= b!4090127 b!4090128))

(assert (= (and b!4089728 ((_ is Cons!43857) (t!338532 rules!3870))) b!4090127))

(declare-fun m!4696921 () Bool)

(assert (=> b!4090128 m!4696921))

(declare-fun m!4696923 () Bool)

(assert (=> b!4090128 m!4696923))

(declare-fun b!4090130 () Bool)

(declare-fun e!2538394 () Bool)

(declare-fun tp!1238290 () Bool)

(assert (=> b!4090130 (= e!2538394 (and tp_is_empty!20997 tp!1238290))))

(assert (=> b!4089744 (= tp!1238205 e!2538394)))

(assert (= (and b!4089744 ((_ is Cons!43856) (t!338531 p!2988))) b!4090130))

(declare-fun b_lambda!119849 () Bool)

(assert (= b_lambda!119839 (or (and b!4089733 b_free!114331 (= (toChars!9539 (transformation!7092 (h!49277 rules!3870))) (toChars!9539 (transformation!7092 r!4213)))) (and b!4089736 b_free!114335) (and b!4090129 b_free!114343 (= (toChars!9539 (transformation!7092 (h!49277 (t!338532 rules!3870)))) (toChars!9539 (transformation!7092 r!4213)))) b_lambda!119849)))

(declare-fun b_lambda!119851 () Bool)

(assert (= b_lambda!119841 (or (and b!4089733 b_free!114329 (= (toValue!9680 (transformation!7092 (h!49277 rules!3870))) (toValue!9680 (transformation!7092 r!4213)))) (and b!4089736 b_free!114333) (and b!4090129 b_free!114341 (= (toValue!9680 (transformation!7092 (h!49277 (t!338532 rules!3870)))) (toValue!9680 (transformation!7092 r!4213)))) b_lambda!119851)))

(declare-fun b_lambda!119853 () Bool)

(assert (= b_lambda!119831 (or (and b!4089733 b_free!114329 (= (toValue!9680 (transformation!7092 (h!49277 rules!3870))) (toValue!9680 (transformation!7092 r!4213)))) (and b!4089736 b_free!114333) (and b!4090129 b_free!114341 (= (toValue!9680 (transformation!7092 (h!49277 (t!338532 rules!3870)))) (toValue!9680 (transformation!7092 r!4213)))) b_lambda!119853)))

(check-sat (not b!4090117) (not d!1214331) (not b!4090038) (not d!1214263) (not b_next!115045) (not b_next!115035) b_and!315109 (not b!4090028) (not b_lambda!119853) (not b!4090099) (not b!4089951) (not b!4090114) (not d!1214341) (not b!4090029) (not b_lambda!119849) (not b!4090130) (not bm!289067) (not b!4090127) (not d!1214343) (not b!4090030) (not b!4090040) (not b!4090116) (not tb!245789) (not bm!289072) (not b!4089811) (not b!4090046) (not d!1214261) (not b!4090112) (not b!4089809) (not b!4090086) (not b!4090075) (not b!4090002) (not b!4090128) b_and!315103 (not b!4089747) (not b!4090042) (not b_next!115033) (not b!4090001) (not d!1214313) (not b!4090111) (not b!4089808) (not b_next!115039) (not b!4090081) (not b!4090113) (not d!1214257) (not b_next!115047) tp_is_empty!20997 b_and!315117 (not d!1214273) (not b!4089815) (not d!1214319) (not b_lambda!119851) (not b!4090036) (not b!4089812) (not b!4089936) (not d!1214345) (not b!4090031) (not b!4090077) (not b!4089814) (not tb!245777) (not b!4090044) (not b_next!115037) (not b!4090034) (not d!1214335) (not b!4090045) (not b!4090118) b_and!315107 (not b!4089753) (not d!1214347) (not d!1214277) b_and!315105 (not b!4090033) (not b!4090035) (not d!1214333) (not b!4089957) (not b!4090037) (not bm!289075) (not b!4089755) (not b!4090078) (not b!4090039) (not b!4090093) b_and!315115 (not b!4090027) (not b!4090041) (not b!4090082) (not b!4089810) (not b!4089807) (not d!1214265) (not d!1214329))
(check-sat (not b_next!115039) (not b_next!115047) b_and!315117 (not b_next!115037) b_and!315107 b_and!315105 b_and!315115 (not b_next!115045) (not b_next!115035) b_and!315109 b_and!315103 (not b_next!115033))
