; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!390870 () Bool)

(assert start!390870)

(declare-fun b!4122109 () Bool)

(declare-fun b_free!116619 () Bool)

(declare-fun b_next!117323 () Bool)

(assert (=> b!4122109 (= b_free!116619 (not b_next!117323))))

(declare-fun tp!1256193 () Bool)

(declare-fun b_and!318917 () Bool)

(assert (=> b!4122109 (= tp!1256193 b_and!318917)))

(declare-fun b_free!116621 () Bool)

(declare-fun b_next!117325 () Bool)

(assert (=> b!4122109 (= b_free!116621 (not b_next!117325))))

(declare-fun tp!1256189 () Bool)

(declare-fun b_and!318919 () Bool)

(assert (=> b!4122109 (= tp!1256189 b_and!318919)))

(declare-fun b!4122110 () Bool)

(declare-fun b_free!116623 () Bool)

(declare-fun b_next!117327 () Bool)

(assert (=> b!4122110 (= b_free!116623 (not b_next!117327))))

(declare-fun tp!1256186 () Bool)

(declare-fun b_and!318921 () Bool)

(assert (=> b!4122110 (= tp!1256186 b_and!318921)))

(declare-fun b_free!116625 () Bool)

(declare-fun b_next!117329 () Bool)

(assert (=> b!4122110 (= b_free!116625 (not b_next!117329))))

(declare-fun tp!1256183 () Bool)

(declare-fun b_and!318923 () Bool)

(assert (=> b!4122110 (= tp!1256183 b_and!318923)))

(declare-fun b!4122111 () Bool)

(declare-fun b_free!116627 () Bool)

(declare-fun b_next!117331 () Bool)

(assert (=> b!4122111 (= b_free!116627 (not b_next!117331))))

(declare-fun tp!1256190 () Bool)

(declare-fun b_and!318925 () Bool)

(assert (=> b!4122111 (= tp!1256190 b_and!318925)))

(declare-fun b_free!116629 () Bool)

(declare-fun b_next!117333 () Bool)

(assert (=> b!4122111 (= b_free!116629 (not b_next!117333))))

(declare-fun tp!1256191 () Bool)

(declare-fun b_and!318927 () Bool)

(assert (=> b!4122111 (= tp!1256191 b_and!318927)))

(declare-fun b!4122096 () Bool)

(declare-fun e!2557795 () Bool)

(declare-fun e!2557787 () Bool)

(assert (=> b!4122096 (= e!2557795 e!2557787)))

(declare-fun res!1684320 () Bool)

(assert (=> b!4122096 (=> res!1684320 e!2557787)))

(declare-datatypes ((List!44711 0))(
  ( (Nil!44587) (Cons!44587 (h!50007 (_ BitVec 16)) (t!340822 List!44711)) )
))
(declare-datatypes ((TokenValue!7516 0))(
  ( (FloatLiteralValue!15032 (text!53057 List!44711)) (TokenValueExt!7515 (__x!27249 Int)) (Broken!37580 (value!228179 List!44711)) (Object!7639) (End!7516) (Def!7516) (Underscore!7516) (Match!7516) (Else!7516) (Error!7516) (Case!7516) (If!7516) (Extends!7516) (Abstract!7516) (Class!7516) (Val!7516) (DelimiterValue!15032 (del!7576 List!44711)) (KeywordValue!7522 (value!228180 List!44711)) (CommentValue!15032 (value!228181 List!44711)) (WhitespaceValue!15032 (value!228182 List!44711)) (IndentationValue!7516 (value!228183 List!44711)) (String!51329) (Int32!7516) (Broken!37581 (value!228184 List!44711)) (Boolean!7517) (Unit!63934) (OperatorValue!7519 (op!7576 List!44711)) (IdentifierValue!15032 (value!228185 List!44711)) (IdentifierValue!15033 (value!228186 List!44711)) (WhitespaceValue!15033 (value!228187 List!44711)) (True!15032) (False!15032) (Broken!37582 (value!228188 List!44711)) (Broken!37583 (value!228189 List!44711)) (True!15033) (RightBrace!7516) (RightBracket!7516) (Colon!7516) (Null!7516) (Comma!7516) (LeftBracket!7516) (False!15033) (LeftBrace!7516) (ImaginaryLiteralValue!7516 (text!53058 List!44711)) (StringLiteralValue!22548 (value!228190 List!44711)) (EOFValue!7516 (value!228191 List!44711)) (IdentValue!7516 (value!228192 List!44711)) (DelimiterValue!15033 (value!228193 List!44711)) (DedentValue!7516 (value!228194 List!44711)) (NewLineValue!7516 (value!228195 List!44711)) (IntegerValue!22548 (value!228196 (_ BitVec 32)) (text!53059 List!44711)) (IntegerValue!22549 (value!228197 Int) (text!53060 List!44711)) (Times!7516) (Or!7516) (Equal!7516) (Minus!7516) (Broken!37584 (value!228198 List!44711)) (And!7516) (Div!7516) (LessEqual!7516) (Mod!7516) (Concat!19707) (Not!7516) (Plus!7516) (SpaceValue!7516 (value!228199 List!44711)) (IntegerValue!22550 (value!228200 Int) (text!53061 List!44711)) (StringLiteralValue!22549 (text!53062 List!44711)) (FloatLiteralValue!15033 (text!53063 List!44711)) (BytesLiteralValue!7516 (value!228201 List!44711)) (CommentValue!15033 (value!228202 List!44711)) (StringLiteralValue!22550 (value!228203 List!44711)) (ErrorTokenValue!7516 (msg!7577 List!44711)) )
))
(declare-datatypes ((C!24568 0))(
  ( (C!24569 (val!14394 Int)) )
))
(declare-datatypes ((List!44712 0))(
  ( (Nil!44588) (Cons!44588 (h!50008 C!24568) (t!340823 List!44712)) )
))
(declare-datatypes ((IArray!26999 0))(
  ( (IArray!27000 (innerList!13557 List!44712)) )
))
(declare-datatypes ((Conc!13497 0))(
  ( (Node!13497 (left!33394 Conc!13497) (right!33724 Conc!13497) (csize!27224 Int) (cheight!13708 Int)) (Leaf!20855 (xs!16803 IArray!26999) (csize!27225 Int)) (Empty!13497) )
))
(declare-datatypes ((BalanceConc!26588 0))(
  ( (BalanceConc!26589 (c!707696 Conc!13497)) )
))
(declare-datatypes ((Regex!12191 0))(
  ( (ElementMatch!12191 (c!707697 C!24568)) (Concat!19708 (regOne!24894 Regex!12191) (regTwo!24894 Regex!12191)) (EmptyExpr!12191) (Star!12191 (reg!12520 Regex!12191)) (EmptyLang!12191) (Union!12191 (regOne!24895 Regex!12191) (regTwo!24895 Regex!12191)) )
))
(declare-datatypes ((String!51330 0))(
  ( (String!51331 (value!228204 String)) )
))
(declare-datatypes ((TokenValueInjection!14460 0))(
  ( (TokenValueInjection!14461 (toValue!9938 Int) (toChars!9797 Int)) )
))
(declare-datatypes ((Rule!14372 0))(
  ( (Rule!14373 (regex!7286 Regex!12191) (tag!8146 String!51330) (isSeparator!7286 Bool) (transformation!7286 TokenValueInjection!14460)) )
))
(declare-datatypes ((Token!13502 0))(
  ( (Token!13503 (value!228205 TokenValue!7516) (rule!10362 Rule!14372) (size!33008 Int) (originalCharacters!7782 List!44712)) )
))
(declare-datatypes ((tuple2!43050 0))(
  ( (tuple2!43051 (_1!24659 Token!13502) (_2!24659 List!44712)) )
))
(declare-datatypes ((Option!9594 0))(
  ( (None!9593) (Some!9593 (v!40181 tuple2!43050)) )
))
(declare-fun lt!1470696 () Option!9594)

(declare-fun isEmpty!26532 (Option!9594) Bool)

(assert (=> b!4122096 (= res!1684320 (isEmpty!26532 lt!1470696))))

(declare-datatypes ((LexerInterface!6875 0))(
  ( (LexerInterfaceExt!6872 (__x!27250 Int)) (Lexer!6873) )
))
(declare-fun thiss!25645 () LexerInterface!6875)

(declare-fun input!3238 () List!44712)

(declare-fun rBis!149 () Rule!14372)

(declare-fun maxPrefixOneRule!3017 (LexerInterface!6875 Rule!14372 List!44712) Option!9594)

(assert (=> b!4122096 (= lt!1470696 (maxPrefixOneRule!3017 thiss!25645 rBis!149 input!3238))))

(declare-fun r!4008 () Rule!14372)

(assert (=> b!4122096 (not (= rBis!149 r!4008))))

(declare-datatypes ((List!44713 0))(
  ( (Nil!44589) (Cons!44589 (h!50009 Rule!14372) (t!340824 List!44713)) )
))
(declare-fun rules!3756 () List!44713)

(declare-datatypes ((Unit!63935 0))(
  ( (Unit!63936) )
))
(declare-fun lt!1470705 () Unit!63935)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!26 (LexerInterface!6875 List!44713 Rule!14372 Rule!14372) Unit!63935)

(assert (=> b!4122096 (= lt!1470705 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!26 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun contains!8958 (List!44713 Rule!14372) Bool)

(declare-fun tail!6445 (List!44713) List!44713)

(assert (=> b!4122096 (contains!8958 (tail!6445 rules!3756) r!4008)))

(declare-fun lt!1470698 () Unit!63935)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!28 (List!44713 Rule!14372 Rule!14372) Unit!63935)

(assert (=> b!4122096 (= lt!1470698 (lemmaGetIndexBiggerAndHeadEqThenTailContains!28 rules!3756 rBis!149 r!4008))))

(declare-fun b!4122098 () Bool)

(declare-fun res!1684323 () Bool)

(declare-fun e!2557794 () Bool)

(assert (=> b!4122098 (=> (not res!1684323) (not e!2557794))))

(declare-fun p!2912 () List!44712)

(declare-fun matchR!6022 (Regex!12191 List!44712) Bool)

(assert (=> b!4122098 (= res!1684323 (matchR!6022 (regex!7286 r!4008) p!2912))))

(declare-fun tp!1256185 () Bool)

(declare-fun b!4122099 () Bool)

(declare-fun e!2557798 () Bool)

(declare-fun e!2557789 () Bool)

(declare-fun inv!59168 (String!51330) Bool)

(declare-fun inv!59170 (TokenValueInjection!14460) Bool)

(assert (=> b!4122099 (= e!2557798 (and tp!1256185 (inv!59168 (tag!8146 r!4008)) (inv!59170 (transformation!7286 r!4008)) e!2557789))))

(declare-fun b!4122100 () Bool)

(declare-fun res!1684316 () Bool)

(declare-fun e!2557792 () Bool)

(assert (=> b!4122100 (=> (not res!1684316) (not e!2557792))))

(declare-fun isPrefix!4221 (List!44712 List!44712) Bool)

(assert (=> b!4122100 (= res!1684316 (isPrefix!4221 p!2912 input!3238))))

(declare-fun b!4122101 () Bool)

(assert (=> b!4122101 (= e!2557792 e!2557794)))

(declare-fun res!1684328 () Bool)

(assert (=> b!4122101 (=> (not res!1684328) (not e!2557794))))

(declare-fun lt!1470702 () Int)

(declare-fun lt!1470703 () TokenValue!7516)

(declare-fun maxPrefix!4067 (LexerInterface!6875 List!44713 List!44712) Option!9594)

(declare-fun getSuffix!2550 (List!44712 List!44712) List!44712)

(assert (=> b!4122101 (= res!1684328 (= (maxPrefix!4067 thiss!25645 rules!3756 input!3238) (Some!9593 (tuple2!43051 (Token!13503 lt!1470703 r!4008 lt!1470702 p!2912) (getSuffix!2550 input!3238 p!2912)))))))

(declare-fun size!33009 (List!44712) Int)

(assert (=> b!4122101 (= lt!1470702 (size!33009 p!2912))))

(declare-fun lt!1470708 () BalanceConc!26588)

(declare-fun apply!10359 (TokenValueInjection!14460 BalanceConc!26588) TokenValue!7516)

(assert (=> b!4122101 (= lt!1470703 (apply!10359 (transformation!7286 r!4008) lt!1470708))))

(declare-fun lt!1470701 () Unit!63935)

(declare-fun lemmaSemiInverse!2144 (TokenValueInjection!14460 BalanceConc!26588) Unit!63935)

(assert (=> b!4122101 (= lt!1470701 (lemmaSemiInverse!2144 (transformation!7286 r!4008) lt!1470708))))

(declare-fun seqFromList!5403 (List!44712) BalanceConc!26588)

(assert (=> b!4122101 (= lt!1470708 (seqFromList!5403 p!2912))))

(declare-fun b!4122102 () Bool)

(declare-fun res!1684325 () Bool)

(assert (=> b!4122102 (=> (not res!1684325) (not e!2557792))))

(assert (=> b!4122102 (= res!1684325 (contains!8958 rules!3756 rBis!149))))

(declare-fun b!4122103 () Bool)

(declare-fun res!1684321 () Bool)

(assert (=> b!4122103 (=> (not res!1684321) (not e!2557792))))

(declare-fun isEmpty!26533 (List!44713) Bool)

(assert (=> b!4122103 (= res!1684321 (not (isEmpty!26533 rules!3756)))))

(declare-fun b!4122104 () Bool)

(declare-fun res!1684319 () Bool)

(assert (=> b!4122104 (=> (not res!1684319) (not e!2557792))))

(declare-fun rulesInvariant!6172 (LexerInterface!6875 List!44713) Bool)

(assert (=> b!4122104 (= res!1684319 (rulesInvariant!6172 thiss!25645 rules!3756))))

(declare-fun b!4122105 () Bool)

(declare-fun res!1684315 () Bool)

(assert (=> b!4122105 (=> (not res!1684315) (not e!2557792))))

(declare-fun isEmpty!26534 (List!44712) Bool)

(assert (=> b!4122105 (= res!1684315 (not (isEmpty!26534 p!2912)))))

(declare-fun b!4122106 () Bool)

(declare-fun res!1684326 () Bool)

(assert (=> b!4122106 (=> (not res!1684326) (not e!2557792))))

(assert (=> b!4122106 (= res!1684326 (contains!8958 rules!3756 r!4008))))

(declare-fun b!4122107 () Bool)

(declare-fun e!2557790 () Bool)

(declare-fun tp_is_empty!21305 () Bool)

(declare-fun tp!1256192 () Bool)

(assert (=> b!4122107 (= e!2557790 (and tp_is_empty!21305 tp!1256192))))

(declare-fun b!4122108 () Bool)

(declare-fun e!2557791 () Bool)

(assert (=> b!4122108 (= e!2557787 e!2557791)))

(declare-fun res!1684322 () Bool)

(assert (=> b!4122108 (=> res!1684322 e!2557791)))

(declare-fun lt!1470704 () Int)

(assert (=> b!4122108 (= res!1684322 (or (> lt!1470704 lt!1470702) (>= lt!1470704 lt!1470702)))))

(declare-fun lt!1470697 () BalanceConc!26588)

(declare-fun size!33010 (BalanceConc!26588) Int)

(assert (=> b!4122108 (= lt!1470704 (size!33010 lt!1470697))))

(declare-fun lt!1470707 () tuple2!43050)

(declare-fun charsOf!4908 (Token!13502) BalanceConc!26588)

(assert (=> b!4122108 (= lt!1470697 (charsOf!4908 (_1!24659 lt!1470707)))))

(declare-fun get!14547 (Option!9594) tuple2!43050)

(assert (=> b!4122108 (= lt!1470707 (get!14547 lt!1470696))))

(declare-fun b!4122097 () Bool)

(declare-fun validRegex!5482 (Regex!12191) Bool)

(assert (=> b!4122097 (= e!2557791 (validRegex!5482 (regex!7286 rBis!149)))))

(assert (=> b!4122097 (not (matchR!6022 (regex!7286 rBis!149) p!2912))))

(declare-fun lt!1470695 () List!44712)

(declare-fun lt!1470694 () Unit!63935)

(declare-fun lemmaMaxPrefixOneRuleOutputsMaxPrefix!2 (LexerInterface!6875 Rule!14372 List!44712 Token!13502 List!44712 List!44712 List!44712) Unit!63935)

(assert (=> b!4122097 (= lt!1470694 (lemmaMaxPrefixOneRuleOutputsMaxPrefix!2 thiss!25645 rBis!149 lt!1470695 (_1!24659 lt!1470707) input!3238 (_2!24659 lt!1470707) p!2912))))

(declare-fun ++!11558 (List!44712 List!44712) List!44712)

(assert (=> b!4122097 (isPrefix!4221 lt!1470695 (++!11558 lt!1470695 (_2!24659 lt!1470707)))))

(declare-fun lt!1470699 () Unit!63935)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2930 (List!44712 List!44712) Unit!63935)

(assert (=> b!4122097 (= lt!1470699 (lemmaConcatTwoListThenFirstIsPrefix!2930 lt!1470695 (_2!24659 lt!1470707)))))

(declare-fun list!16361 (BalanceConc!26588) List!44712)

(assert (=> b!4122097 (= lt!1470695 (list!16361 lt!1470697))))

(declare-fun res!1684317 () Bool)

(assert (=> start!390870 (=> (not res!1684317) (not e!2557792))))

(get-info :version)

(assert (=> start!390870 (= res!1684317 ((_ is Lexer!6873) thiss!25645))))

(assert (=> start!390870 e!2557792))

(declare-fun e!2557783 () Bool)

(assert (=> start!390870 e!2557783))

(declare-fun e!2557793 () Bool)

(assert (=> start!390870 e!2557793))

(assert (=> start!390870 true))

(assert (=> start!390870 e!2557798))

(assert (=> start!390870 e!2557790))

(declare-fun e!2557782 () Bool)

(assert (=> start!390870 e!2557782))

(assert (=> b!4122109 (= e!2557789 (and tp!1256193 tp!1256189))))

(declare-fun e!2557784 () Bool)

(assert (=> b!4122110 (= e!2557784 (and tp!1256186 tp!1256183))))

(declare-fun e!2557796 () Bool)

(assert (=> b!4122111 (= e!2557796 (and tp!1256190 tp!1256191))))

(declare-fun b!4122112 () Bool)

(declare-fun e!2557788 () Bool)

(declare-fun tp!1256187 () Bool)

(assert (=> b!4122112 (= e!2557783 (and e!2557788 tp!1256187))))

(declare-fun tp!1256188 () Bool)

(declare-fun b!4122113 () Bool)

(assert (=> b!4122113 (= e!2557788 (and tp!1256188 (inv!59168 (tag!8146 (h!50009 rules!3756))) (inv!59170 (transformation!7286 (h!50009 rules!3756))) e!2557784))))

(declare-fun b!4122114 () Bool)

(declare-fun tp!1256194 () Bool)

(assert (=> b!4122114 (= e!2557793 (and tp_is_empty!21305 tp!1256194))))

(declare-fun tp!1256184 () Bool)

(declare-fun b!4122115 () Bool)

(assert (=> b!4122115 (= e!2557782 (and tp!1256184 (inv!59168 (tag!8146 rBis!149)) (inv!59170 (transformation!7286 rBis!149)) e!2557796))))

(declare-fun b!4122116 () Bool)

(declare-fun res!1684324 () Bool)

(assert (=> b!4122116 (=> (not res!1684324) (not e!2557794))))

(declare-fun getIndex!634 (List!44713 Rule!14372) Int)

(assert (=> b!4122116 (= res!1684324 (< (getIndex!634 rules!3756 rBis!149) (getIndex!634 rules!3756 r!4008)))))

(declare-fun b!4122117 () Bool)

(assert (=> b!4122117 (= e!2557794 (not e!2557795))))

(declare-fun res!1684318 () Bool)

(assert (=> b!4122117 (=> res!1684318 e!2557795)))

(assert (=> b!4122117 (= res!1684318 (or (not ((_ is Cons!44589) rules!3756)) (not (= (h!50009 rules!3756) rBis!149))))))

(declare-fun lt!1470700 () Unit!63935)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2138 (LexerInterface!6875 Rule!14372 List!44713) Unit!63935)

(assert (=> b!4122117 (= lt!1470700 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2138 thiss!25645 r!4008 rules!3756))))

(declare-fun ruleValid!3094 (LexerInterface!6875 Rule!14372) Bool)

(assert (=> b!4122117 (ruleValid!3094 thiss!25645 rBis!149)))

(declare-fun lt!1470706 () Unit!63935)

(assert (=> b!4122117 (= lt!1470706 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2138 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4122118 () Bool)

(declare-fun res!1684327 () Bool)

(assert (=> b!4122118 (=> (not res!1684327) (not e!2557794))))

(assert (=> b!4122118 (= res!1684327 (ruleValid!3094 thiss!25645 r!4008))))

(assert (= (and start!390870 res!1684317) b!4122100))

(assert (= (and b!4122100 res!1684316) b!4122103))

(assert (= (and b!4122103 res!1684321) b!4122104))

(assert (= (and b!4122104 res!1684319) b!4122106))

(assert (= (and b!4122106 res!1684326) b!4122102))

(assert (= (and b!4122102 res!1684325) b!4122105))

(assert (= (and b!4122105 res!1684315) b!4122101))

(assert (= (and b!4122101 res!1684328) b!4122098))

(assert (= (and b!4122098 res!1684323) b!4122116))

(assert (= (and b!4122116 res!1684324) b!4122118))

(assert (= (and b!4122118 res!1684327) b!4122117))

(assert (= (and b!4122117 (not res!1684318)) b!4122096))

(assert (= (and b!4122096 (not res!1684320)) b!4122108))

(assert (= (and b!4122108 (not res!1684322)) b!4122097))

(assert (= b!4122113 b!4122110))

(assert (= b!4122112 b!4122113))

(assert (= (and start!390870 ((_ is Cons!44589) rules!3756)) b!4122112))

(assert (= (and start!390870 ((_ is Cons!44588) p!2912)) b!4122114))

(assert (= b!4122099 b!4122109))

(assert (= start!390870 b!4122099))

(assert (= (and start!390870 ((_ is Cons!44588) input!3238)) b!4122107))

(assert (= b!4122115 b!4122111))

(assert (= start!390870 b!4122115))

(declare-fun m!4721223 () Bool)

(assert (=> b!4122098 m!4721223))

(declare-fun m!4721225 () Bool)

(assert (=> b!4122101 m!4721225))

(declare-fun m!4721227 () Bool)

(assert (=> b!4122101 m!4721227))

(declare-fun m!4721229 () Bool)

(assert (=> b!4122101 m!4721229))

(declare-fun m!4721231 () Bool)

(assert (=> b!4122101 m!4721231))

(declare-fun m!4721233 () Bool)

(assert (=> b!4122101 m!4721233))

(declare-fun m!4721235 () Bool)

(assert (=> b!4122101 m!4721235))

(declare-fun m!4721237 () Bool)

(assert (=> b!4122116 m!4721237))

(declare-fun m!4721239 () Bool)

(assert (=> b!4122116 m!4721239))

(declare-fun m!4721241 () Bool)

(assert (=> b!4122105 m!4721241))

(declare-fun m!4721243 () Bool)

(assert (=> b!4122104 m!4721243))

(declare-fun m!4721245 () Bool)

(assert (=> b!4122115 m!4721245))

(declare-fun m!4721247 () Bool)

(assert (=> b!4122115 m!4721247))

(declare-fun m!4721249 () Bool)

(assert (=> b!4122118 m!4721249))

(declare-fun m!4721251 () Bool)

(assert (=> b!4122100 m!4721251))

(declare-fun m!4721253 () Bool)

(assert (=> b!4122108 m!4721253))

(declare-fun m!4721255 () Bool)

(assert (=> b!4122108 m!4721255))

(declare-fun m!4721257 () Bool)

(assert (=> b!4122108 m!4721257))

(declare-fun m!4721259 () Bool)

(assert (=> b!4122106 m!4721259))

(declare-fun m!4721261 () Bool)

(assert (=> b!4122096 m!4721261))

(declare-fun m!4721263 () Bool)

(assert (=> b!4122096 m!4721263))

(declare-fun m!4721265 () Bool)

(assert (=> b!4122096 m!4721265))

(assert (=> b!4122096 m!4721261))

(declare-fun m!4721267 () Bool)

(assert (=> b!4122096 m!4721267))

(declare-fun m!4721269 () Bool)

(assert (=> b!4122096 m!4721269))

(declare-fun m!4721271 () Bool)

(assert (=> b!4122096 m!4721271))

(declare-fun m!4721273 () Bool)

(assert (=> b!4122117 m!4721273))

(declare-fun m!4721275 () Bool)

(assert (=> b!4122117 m!4721275))

(declare-fun m!4721277 () Bool)

(assert (=> b!4122117 m!4721277))

(declare-fun m!4721279 () Bool)

(assert (=> b!4122113 m!4721279))

(declare-fun m!4721281 () Bool)

(assert (=> b!4122113 m!4721281))

(declare-fun m!4721283 () Bool)

(assert (=> b!4122097 m!4721283))

(declare-fun m!4721285 () Bool)

(assert (=> b!4122097 m!4721285))

(declare-fun m!4721287 () Bool)

(assert (=> b!4122097 m!4721287))

(declare-fun m!4721289 () Bool)

(assert (=> b!4122097 m!4721289))

(declare-fun m!4721291 () Bool)

(assert (=> b!4122097 m!4721291))

(declare-fun m!4721293 () Bool)

(assert (=> b!4122097 m!4721293))

(assert (=> b!4122097 m!4721291))

(declare-fun m!4721295 () Bool)

(assert (=> b!4122097 m!4721295))

(declare-fun m!4721297 () Bool)

(assert (=> b!4122102 m!4721297))

(declare-fun m!4721299 () Bool)

(assert (=> b!4122103 m!4721299))

(declare-fun m!4721301 () Bool)

(assert (=> b!4122099 m!4721301))

(declare-fun m!4721303 () Bool)

(assert (=> b!4122099 m!4721303))

(check-sat (not b!4122101) b_and!318927 (not b_next!117327) (not b!4122115) (not b!4122108) (not b!4122097) (not b!4122103) b_and!318925 (not b!4122102) (not b!4122106) (not b!4122105) b_and!318921 (not b!4122100) (not b_next!117329) (not b!4122117) (not b!4122107) (not b!4122114) (not b!4122104) (not b!4122116) tp_is_empty!21305 (not b_next!117323) (not b_next!117331) (not b!4122113) (not b!4122112) (not b!4122098) b_and!318917 (not b!4122118) (not b_next!117333) (not b!4122099) (not b!4122096) b_and!318923 b_and!318919 (not b_next!117325))
(check-sat b_and!318927 (not b_next!117327) b_and!318925 (not b_next!117323) (not b_next!117331) b_and!318921 b_and!318923 (not b_next!117329) b_and!318917 (not b_next!117333) b_and!318919 (not b_next!117325))
(get-model)

(declare-fun d!1221864 () Bool)

(declare-fun lt!1470717 () Int)

(assert (=> d!1221864 (= lt!1470717 (size!33009 (list!16361 lt!1470697)))))

(declare-fun size!33012 (Conc!13497) Int)

(assert (=> d!1221864 (= lt!1470717 (size!33012 (c!707696 lt!1470697)))))

(assert (=> d!1221864 (= (size!33010 lt!1470697) lt!1470717)))

(declare-fun bs!594717 () Bool)

(assert (= bs!594717 d!1221864))

(assert (=> bs!594717 m!4721285))

(assert (=> bs!594717 m!4721285))

(declare-fun m!4721313 () Bool)

(assert (=> bs!594717 m!4721313))

(declare-fun m!4721315 () Bool)

(assert (=> bs!594717 m!4721315))

(assert (=> b!4122108 d!1221864))

(declare-fun d!1221870 () Bool)

(declare-fun lt!1470720 () BalanceConc!26588)

(assert (=> d!1221870 (= (list!16361 lt!1470720) (originalCharacters!7782 (_1!24659 lt!1470707)))))

(declare-fun dynLambda!19053 (Int TokenValue!7516) BalanceConc!26588)

(assert (=> d!1221870 (= lt!1470720 (dynLambda!19053 (toChars!9797 (transformation!7286 (rule!10362 (_1!24659 lt!1470707)))) (value!228205 (_1!24659 lt!1470707))))))

(assert (=> d!1221870 (= (charsOf!4908 (_1!24659 lt!1470707)) lt!1470720)))

(declare-fun b_lambda!120949 () Bool)

(assert (=> (not b_lambda!120949) (not d!1221870)))

(declare-fun tb!247341 () Bool)

(declare-fun t!340832 () Bool)

(assert (=> (and b!4122109 (= (toChars!9797 (transformation!7286 r!4008)) (toChars!9797 (transformation!7286 (rule!10362 (_1!24659 lt!1470707))))) t!340832) tb!247341))

(declare-fun b!4122143 () Bool)

(declare-fun e!2557811 () Bool)

(declare-fun tp!1256200 () Bool)

(declare-fun inv!59173 (Conc!13497) Bool)

(assert (=> b!4122143 (= e!2557811 (and (inv!59173 (c!707696 (dynLambda!19053 (toChars!9797 (transformation!7286 (rule!10362 (_1!24659 lt!1470707)))) (value!228205 (_1!24659 lt!1470707))))) tp!1256200))))

(declare-fun result!300508 () Bool)

(declare-fun inv!59174 (BalanceConc!26588) Bool)

(assert (=> tb!247341 (= result!300508 (and (inv!59174 (dynLambda!19053 (toChars!9797 (transformation!7286 (rule!10362 (_1!24659 lt!1470707)))) (value!228205 (_1!24659 lt!1470707)))) e!2557811))))

(assert (= tb!247341 b!4122143))

(declare-fun m!4721325 () Bool)

(assert (=> b!4122143 m!4721325))

(declare-fun m!4721327 () Bool)

(assert (=> tb!247341 m!4721327))

(assert (=> d!1221870 t!340832))

(declare-fun b_and!318935 () Bool)

(assert (= b_and!318919 (and (=> t!340832 result!300508) b_and!318935)))

(declare-fun tb!247343 () Bool)

(declare-fun t!340834 () Bool)

(assert (=> (and b!4122110 (= (toChars!9797 (transformation!7286 (h!50009 rules!3756))) (toChars!9797 (transformation!7286 (rule!10362 (_1!24659 lt!1470707))))) t!340834) tb!247343))

(declare-fun result!300512 () Bool)

(assert (= result!300512 result!300508))

(assert (=> d!1221870 t!340834))

(declare-fun b_and!318937 () Bool)

(assert (= b_and!318923 (and (=> t!340834 result!300512) b_and!318937)))

(declare-fun tb!247345 () Bool)

(declare-fun t!340836 () Bool)

(assert (=> (and b!4122111 (= (toChars!9797 (transformation!7286 rBis!149)) (toChars!9797 (transformation!7286 (rule!10362 (_1!24659 lt!1470707))))) t!340836) tb!247345))

(declare-fun result!300514 () Bool)

(assert (= result!300514 result!300508))

(assert (=> d!1221870 t!340836))

(declare-fun b_and!318939 () Bool)

(assert (= b_and!318927 (and (=> t!340836 result!300514) b_and!318939)))

(declare-fun m!4721329 () Bool)

(assert (=> d!1221870 m!4721329))

(declare-fun m!4721331 () Bool)

(assert (=> d!1221870 m!4721331))

(assert (=> b!4122108 d!1221870))

(declare-fun d!1221876 () Bool)

(assert (=> d!1221876 (= (get!14547 lt!1470696) (v!40181 lt!1470696))))

(assert (=> b!4122108 d!1221876))

(declare-fun d!1221878 () Bool)

(declare-fun list!16363 (Conc!13497) List!44712)

(assert (=> d!1221878 (= (list!16361 lt!1470697) (list!16363 (c!707696 lt!1470697)))))

(declare-fun bs!594718 () Bool)

(assert (= bs!594718 d!1221878))

(declare-fun m!4721333 () Bool)

(assert (=> bs!594718 m!4721333))

(assert (=> b!4122097 d!1221878))

(declare-fun d!1221880 () Bool)

(assert (=> d!1221880 (isPrefix!4221 lt!1470695 (++!11558 lt!1470695 (_2!24659 lt!1470707)))))

(declare-fun lt!1470726 () Unit!63935)

(declare-fun choose!25191 (List!44712 List!44712) Unit!63935)

(assert (=> d!1221880 (= lt!1470726 (choose!25191 lt!1470695 (_2!24659 lt!1470707)))))

(assert (=> d!1221880 (= (lemmaConcatTwoListThenFirstIsPrefix!2930 lt!1470695 (_2!24659 lt!1470707)) lt!1470726)))

(declare-fun bs!594719 () Bool)

(assert (= bs!594719 d!1221880))

(assert (=> bs!594719 m!4721291))

(assert (=> bs!594719 m!4721291))

(assert (=> bs!594719 m!4721293))

(declare-fun m!4721349 () Bool)

(assert (=> bs!594719 m!4721349))

(assert (=> b!4122097 d!1221880))

(declare-fun b!4122202 () Bool)

(declare-fun e!2557856 () Bool)

(declare-fun call!289978 () Bool)

(assert (=> b!4122202 (= e!2557856 call!289978)))

(declare-fun b!4122203 () Bool)

(declare-fun e!2557850 () Bool)

(declare-fun e!2557854 () Bool)

(assert (=> b!4122203 (= e!2557850 e!2557854)))

(declare-fun res!1684386 () Bool)

(assert (=> b!4122203 (=> (not res!1684386) (not e!2557854))))

(declare-fun call!289976 () Bool)

(assert (=> b!4122203 (= res!1684386 call!289976)))

(declare-fun b!4122204 () Bool)

(declare-fun res!1684385 () Bool)

(declare-fun e!2557855 () Bool)

(assert (=> b!4122204 (=> (not res!1684385) (not e!2557855))))

(assert (=> b!4122204 (= res!1684385 call!289976)))

(declare-fun e!2557853 () Bool)

(assert (=> b!4122204 (= e!2557853 e!2557855)))

(declare-fun b!4122205 () Bool)

(declare-fun e!2557851 () Bool)

(declare-fun e!2557852 () Bool)

(assert (=> b!4122205 (= e!2557851 e!2557852)))

(declare-fun c!707713 () Bool)

(assert (=> b!4122205 (= c!707713 ((_ is Star!12191) (regex!7286 rBis!149)))))

(declare-fun b!4122206 () Bool)

(assert (=> b!4122206 (= e!2557852 e!2557853)))

(declare-fun c!707712 () Bool)

(assert (=> b!4122206 (= c!707712 ((_ is Union!12191) (regex!7286 rBis!149)))))

(declare-fun b!4122207 () Bool)

(declare-fun call!289977 () Bool)

(assert (=> b!4122207 (= e!2557854 call!289977)))

(declare-fun b!4122208 () Bool)

(assert (=> b!4122208 (= e!2557855 call!289977)))

(declare-fun b!4122209 () Bool)

(assert (=> b!4122209 (= e!2557852 e!2557856)))

(declare-fun res!1684387 () Bool)

(declare-fun nullable!4276 (Regex!12191) Bool)

(assert (=> b!4122209 (= res!1684387 (not (nullable!4276 (reg!12520 (regex!7286 rBis!149)))))))

(assert (=> b!4122209 (=> (not res!1684387) (not e!2557856))))

(declare-fun b!4122210 () Bool)

(declare-fun res!1684389 () Bool)

(assert (=> b!4122210 (=> res!1684389 e!2557850)))

(assert (=> b!4122210 (= res!1684389 (not ((_ is Concat!19708) (regex!7286 rBis!149))))))

(assert (=> b!4122210 (= e!2557853 e!2557850)))

(declare-fun d!1221888 () Bool)

(declare-fun res!1684388 () Bool)

(assert (=> d!1221888 (=> res!1684388 e!2557851)))

(assert (=> d!1221888 (= res!1684388 ((_ is ElementMatch!12191) (regex!7286 rBis!149)))))

(assert (=> d!1221888 (= (validRegex!5482 (regex!7286 rBis!149)) e!2557851)))

(declare-fun bm!289971 () Bool)

(assert (=> bm!289971 (= call!289976 call!289978)))

(declare-fun bm!289972 () Bool)

(assert (=> bm!289972 (= call!289977 (validRegex!5482 (ite c!707712 (regTwo!24895 (regex!7286 rBis!149)) (regTwo!24894 (regex!7286 rBis!149)))))))

(declare-fun bm!289973 () Bool)

(assert (=> bm!289973 (= call!289978 (validRegex!5482 (ite c!707713 (reg!12520 (regex!7286 rBis!149)) (ite c!707712 (regOne!24895 (regex!7286 rBis!149)) (regOne!24894 (regex!7286 rBis!149))))))))

(assert (= (and d!1221888 (not res!1684388)) b!4122205))

(assert (= (and b!4122205 c!707713) b!4122209))

(assert (= (and b!4122205 (not c!707713)) b!4122206))

(assert (= (and b!4122209 res!1684387) b!4122202))

(assert (= (and b!4122206 c!707712) b!4122204))

(assert (= (and b!4122206 (not c!707712)) b!4122210))

(assert (= (and b!4122204 res!1684385) b!4122208))

(assert (= (and b!4122210 (not res!1684389)) b!4122203))

(assert (= (and b!4122203 res!1684386) b!4122207))

(assert (= (or b!4122204 b!4122203) bm!289971))

(assert (= (or b!4122208 b!4122207) bm!289972))

(assert (= (or b!4122202 bm!289971) bm!289973))

(declare-fun m!4721359 () Bool)

(assert (=> b!4122209 m!4721359))

(declare-fun m!4721361 () Bool)

(assert (=> bm!289972 m!4721361))

(declare-fun m!4721363 () Bool)

(assert (=> bm!289973 m!4721363))

(assert (=> b!4122097 d!1221888))

(declare-fun lt!1470731 () List!44712)

(declare-fun e!2557861 () Bool)

(declare-fun b!4122222 () Bool)

(assert (=> b!4122222 (= e!2557861 (or (not (= (_2!24659 lt!1470707) Nil!44588)) (= lt!1470731 lt!1470695)))))

(declare-fun d!1221898 () Bool)

(assert (=> d!1221898 e!2557861))

(declare-fun res!1684395 () Bool)

(assert (=> d!1221898 (=> (not res!1684395) (not e!2557861))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6872 (List!44712) (InoxSet C!24568))

(assert (=> d!1221898 (= res!1684395 (= (content!6872 lt!1470731) ((_ map or) (content!6872 lt!1470695) (content!6872 (_2!24659 lt!1470707)))))))

(declare-fun e!2557862 () List!44712)

(assert (=> d!1221898 (= lt!1470731 e!2557862)))

(declare-fun c!707716 () Bool)

(assert (=> d!1221898 (= c!707716 ((_ is Nil!44588) lt!1470695))))

(assert (=> d!1221898 (= (++!11558 lt!1470695 (_2!24659 lt!1470707)) lt!1470731)))

(declare-fun b!4122219 () Bool)

(assert (=> b!4122219 (= e!2557862 (_2!24659 lt!1470707))))

(declare-fun b!4122221 () Bool)

(declare-fun res!1684394 () Bool)

(assert (=> b!4122221 (=> (not res!1684394) (not e!2557861))))

(assert (=> b!4122221 (= res!1684394 (= (size!33009 lt!1470731) (+ (size!33009 lt!1470695) (size!33009 (_2!24659 lt!1470707)))))))

(declare-fun b!4122220 () Bool)

(assert (=> b!4122220 (= e!2557862 (Cons!44588 (h!50008 lt!1470695) (++!11558 (t!340823 lt!1470695) (_2!24659 lt!1470707))))))

(assert (= (and d!1221898 c!707716) b!4122219))

(assert (= (and d!1221898 (not c!707716)) b!4122220))

(assert (= (and d!1221898 res!1684395) b!4122221))

(assert (= (and b!4122221 res!1684394) b!4122222))

(declare-fun m!4721365 () Bool)

(assert (=> d!1221898 m!4721365))

(declare-fun m!4721367 () Bool)

(assert (=> d!1221898 m!4721367))

(declare-fun m!4721369 () Bool)

(assert (=> d!1221898 m!4721369))

(declare-fun m!4721371 () Bool)

(assert (=> b!4122221 m!4721371))

(declare-fun m!4721373 () Bool)

(assert (=> b!4122221 m!4721373))

(declare-fun m!4721375 () Bool)

(assert (=> b!4122221 m!4721375))

(declare-fun m!4721377 () Bool)

(assert (=> b!4122220 m!4721377))

(assert (=> b!4122097 d!1221898))

(declare-fun d!1221900 () Bool)

(assert (=> d!1221900 (not (matchR!6022 (regex!7286 rBis!149) p!2912))))

(declare-fun lt!1470734 () Unit!63935)

(declare-fun choose!25193 (LexerInterface!6875 Rule!14372 List!44712 Token!13502 List!44712 List!44712 List!44712) Unit!63935)

(assert (=> d!1221900 (= lt!1470734 (choose!25193 thiss!25645 rBis!149 lt!1470695 (_1!24659 lt!1470707) input!3238 (_2!24659 lt!1470707) p!2912))))

(assert (=> d!1221900 (= (lemmaMaxPrefixOneRuleOutputsMaxPrefix!2 thiss!25645 rBis!149 lt!1470695 (_1!24659 lt!1470707) input!3238 (_2!24659 lt!1470707) p!2912) lt!1470734)))

(declare-fun bs!594720 () Bool)

(assert (= bs!594720 d!1221900))

(assert (=> bs!594720 m!4721287))

(declare-fun m!4721379 () Bool)

(assert (=> bs!594720 m!4721379))

(assert (=> b!4122097 d!1221900))

(declare-fun b!4122231 () Bool)

(declare-fun e!2557869 () Bool)

(declare-fun e!2557870 () Bool)

(assert (=> b!4122231 (= e!2557869 e!2557870)))

(declare-fun res!1684407 () Bool)

(assert (=> b!4122231 (=> (not res!1684407) (not e!2557870))))

(assert (=> b!4122231 (= res!1684407 (not ((_ is Nil!44588) (++!11558 lt!1470695 (_2!24659 lt!1470707)))))))

(declare-fun d!1221902 () Bool)

(declare-fun e!2557871 () Bool)

(assert (=> d!1221902 e!2557871))

(declare-fun res!1684405 () Bool)

(assert (=> d!1221902 (=> res!1684405 e!2557871)))

(declare-fun lt!1470737 () Bool)

(assert (=> d!1221902 (= res!1684405 (not lt!1470737))))

(assert (=> d!1221902 (= lt!1470737 e!2557869)))

(declare-fun res!1684406 () Bool)

(assert (=> d!1221902 (=> res!1684406 e!2557869)))

(assert (=> d!1221902 (= res!1684406 ((_ is Nil!44588) lt!1470695))))

(assert (=> d!1221902 (= (isPrefix!4221 lt!1470695 (++!11558 lt!1470695 (_2!24659 lt!1470707))) lt!1470737)))

(declare-fun b!4122234 () Bool)

(assert (=> b!4122234 (= e!2557871 (>= (size!33009 (++!11558 lt!1470695 (_2!24659 lt!1470707))) (size!33009 lt!1470695)))))

(declare-fun b!4122233 () Bool)

(declare-fun tail!6447 (List!44712) List!44712)

(assert (=> b!4122233 (= e!2557870 (isPrefix!4221 (tail!6447 lt!1470695) (tail!6447 (++!11558 lt!1470695 (_2!24659 lt!1470707)))))))

(declare-fun b!4122232 () Bool)

(declare-fun res!1684404 () Bool)

(assert (=> b!4122232 (=> (not res!1684404) (not e!2557870))))

(declare-fun head!8684 (List!44712) C!24568)

(assert (=> b!4122232 (= res!1684404 (= (head!8684 lt!1470695) (head!8684 (++!11558 lt!1470695 (_2!24659 lt!1470707)))))))

(assert (= (and d!1221902 (not res!1684406)) b!4122231))

(assert (= (and b!4122231 res!1684407) b!4122232))

(assert (= (and b!4122232 res!1684404) b!4122233))

(assert (= (and d!1221902 (not res!1684405)) b!4122234))

(assert (=> b!4122234 m!4721291))

(declare-fun m!4721381 () Bool)

(assert (=> b!4122234 m!4721381))

(assert (=> b!4122234 m!4721373))

(declare-fun m!4721383 () Bool)

(assert (=> b!4122233 m!4721383))

(assert (=> b!4122233 m!4721291))

(declare-fun m!4721385 () Bool)

(assert (=> b!4122233 m!4721385))

(assert (=> b!4122233 m!4721383))

(assert (=> b!4122233 m!4721385))

(declare-fun m!4721387 () Bool)

(assert (=> b!4122233 m!4721387))

(declare-fun m!4721389 () Bool)

(assert (=> b!4122232 m!4721389))

(assert (=> b!4122232 m!4721291))

(declare-fun m!4721391 () Bool)

(assert (=> b!4122232 m!4721391))

(assert (=> b!4122097 d!1221902))

(declare-fun b!4122263 () Bool)

(declare-fun e!2557889 () Bool)

(declare-fun derivativeStep!3671 (Regex!12191 C!24568) Regex!12191)

(assert (=> b!4122263 (= e!2557889 (matchR!6022 (derivativeStep!3671 (regex!7286 rBis!149) (head!8684 p!2912)) (tail!6447 p!2912)))))

(declare-fun b!4122264 () Bool)

(declare-fun e!2557891 () Bool)

(declare-fun e!2557890 () Bool)

(assert (=> b!4122264 (= e!2557891 e!2557890)))

(declare-fun res!1684429 () Bool)

(assert (=> b!4122264 (=> (not res!1684429) (not e!2557890))))

(declare-fun lt!1470740 () Bool)

(assert (=> b!4122264 (= res!1684429 (not lt!1470740))))

(declare-fun b!4122265 () Bool)

(declare-fun e!2557886 () Bool)

(assert (=> b!4122265 (= e!2557886 (= (head!8684 p!2912) (c!707697 (regex!7286 rBis!149))))))

(declare-fun b!4122266 () Bool)

(declare-fun e!2557887 () Bool)

(assert (=> b!4122266 (= e!2557890 e!2557887)))

(declare-fun res!1684424 () Bool)

(assert (=> b!4122266 (=> res!1684424 e!2557887)))

(declare-fun call!289981 () Bool)

(assert (=> b!4122266 (= res!1684424 call!289981)))

(declare-fun b!4122267 () Bool)

(assert (=> b!4122267 (= e!2557889 (nullable!4276 (regex!7286 rBis!149)))))

(declare-fun b!4122268 () Bool)

(declare-fun e!2557888 () Bool)

(assert (=> b!4122268 (= e!2557888 (not lt!1470740))))

(declare-fun d!1221904 () Bool)

(declare-fun e!2557892 () Bool)

(assert (=> d!1221904 e!2557892))

(declare-fun c!707724 () Bool)

(assert (=> d!1221904 (= c!707724 ((_ is EmptyExpr!12191) (regex!7286 rBis!149)))))

(assert (=> d!1221904 (= lt!1470740 e!2557889)))

(declare-fun c!707723 () Bool)

(assert (=> d!1221904 (= c!707723 (isEmpty!26534 p!2912))))

(assert (=> d!1221904 (validRegex!5482 (regex!7286 rBis!149))))

(assert (=> d!1221904 (= (matchR!6022 (regex!7286 rBis!149) p!2912) lt!1470740)))

(declare-fun b!4122269 () Bool)

(assert (=> b!4122269 (= e!2557892 (= lt!1470740 call!289981))))

(declare-fun b!4122270 () Bool)

(declare-fun res!1684426 () Bool)

(assert (=> b!4122270 (=> res!1684426 e!2557891)))

(assert (=> b!4122270 (= res!1684426 (not ((_ is ElementMatch!12191) (regex!7286 rBis!149))))))

(assert (=> b!4122270 (= e!2557888 e!2557891)))

(declare-fun b!4122271 () Bool)

(declare-fun res!1684425 () Bool)

(assert (=> b!4122271 (=> res!1684425 e!2557887)))

(assert (=> b!4122271 (= res!1684425 (not (isEmpty!26534 (tail!6447 p!2912))))))

(declare-fun b!4122272 () Bool)

(declare-fun res!1684430 () Bool)

(assert (=> b!4122272 (=> res!1684430 e!2557891)))

(assert (=> b!4122272 (= res!1684430 e!2557886)))

(declare-fun res!1684428 () Bool)

(assert (=> b!4122272 (=> (not res!1684428) (not e!2557886))))

(assert (=> b!4122272 (= res!1684428 lt!1470740)))

(declare-fun bm!289976 () Bool)

(assert (=> bm!289976 (= call!289981 (isEmpty!26534 p!2912))))

(declare-fun b!4122273 () Bool)

(declare-fun res!1684431 () Bool)

(assert (=> b!4122273 (=> (not res!1684431) (not e!2557886))))

(assert (=> b!4122273 (= res!1684431 (isEmpty!26534 (tail!6447 p!2912)))))

(declare-fun b!4122274 () Bool)

(assert (=> b!4122274 (= e!2557887 (not (= (head!8684 p!2912) (c!707697 (regex!7286 rBis!149)))))))

(declare-fun b!4122275 () Bool)

(declare-fun res!1684427 () Bool)

(assert (=> b!4122275 (=> (not res!1684427) (not e!2557886))))

(assert (=> b!4122275 (= res!1684427 (not call!289981))))

(declare-fun b!4122276 () Bool)

(assert (=> b!4122276 (= e!2557892 e!2557888)))

(declare-fun c!707725 () Bool)

(assert (=> b!4122276 (= c!707725 ((_ is EmptyLang!12191) (regex!7286 rBis!149)))))

(assert (= (and d!1221904 c!707723) b!4122267))

(assert (= (and d!1221904 (not c!707723)) b!4122263))

(assert (= (and d!1221904 c!707724) b!4122269))

(assert (= (and d!1221904 (not c!707724)) b!4122276))

(assert (= (and b!4122276 c!707725) b!4122268))

(assert (= (and b!4122276 (not c!707725)) b!4122270))

(assert (= (and b!4122270 (not res!1684426)) b!4122272))

(assert (= (and b!4122272 res!1684428) b!4122275))

(assert (= (and b!4122275 res!1684427) b!4122273))

(assert (= (and b!4122273 res!1684431) b!4122265))

(assert (= (and b!4122272 (not res!1684430)) b!4122264))

(assert (= (and b!4122264 res!1684429) b!4122266))

(assert (= (and b!4122266 (not res!1684424)) b!4122271))

(assert (= (and b!4122271 (not res!1684425)) b!4122274))

(assert (= (or b!4122269 b!4122266 b!4122275) bm!289976))

(declare-fun m!4721393 () Bool)

(assert (=> b!4122273 m!4721393))

(assert (=> b!4122273 m!4721393))

(declare-fun m!4721395 () Bool)

(assert (=> b!4122273 m!4721395))

(declare-fun m!4721397 () Bool)

(assert (=> b!4122267 m!4721397))

(assert (=> bm!289976 m!4721241))

(assert (=> b!4122271 m!4721393))

(assert (=> b!4122271 m!4721393))

(assert (=> b!4122271 m!4721395))

(declare-fun m!4721399 () Bool)

(assert (=> b!4122263 m!4721399))

(assert (=> b!4122263 m!4721399))

(declare-fun m!4721401 () Bool)

(assert (=> b!4122263 m!4721401))

(assert (=> b!4122263 m!4721393))

(assert (=> b!4122263 m!4721401))

(assert (=> b!4122263 m!4721393))

(declare-fun m!4721403 () Bool)

(assert (=> b!4122263 m!4721403))

(assert (=> b!4122265 m!4721399))

(assert (=> b!4122274 m!4721399))

(assert (=> d!1221904 m!4721241))

(assert (=> d!1221904 m!4721283))

(assert (=> b!4122097 d!1221904))

(declare-fun d!1221906 () Bool)

(declare-fun res!1684436 () Bool)

(declare-fun e!2557895 () Bool)

(assert (=> d!1221906 (=> (not res!1684436) (not e!2557895))))

(assert (=> d!1221906 (= res!1684436 (validRegex!5482 (regex!7286 r!4008)))))

(assert (=> d!1221906 (= (ruleValid!3094 thiss!25645 r!4008) e!2557895)))

(declare-fun b!4122281 () Bool)

(declare-fun res!1684437 () Bool)

(assert (=> b!4122281 (=> (not res!1684437) (not e!2557895))))

(assert (=> b!4122281 (= res!1684437 (not (nullable!4276 (regex!7286 r!4008))))))

(declare-fun b!4122282 () Bool)

(assert (=> b!4122282 (= e!2557895 (not (= (tag!8146 r!4008) (String!51331 ""))))))

(assert (= (and d!1221906 res!1684436) b!4122281))

(assert (= (and b!4122281 res!1684437) b!4122282))

(declare-fun m!4721405 () Bool)

(assert (=> d!1221906 m!4721405))

(declare-fun m!4721407 () Bool)

(assert (=> b!4122281 m!4721407))

(assert (=> b!4122118 d!1221906))

(declare-fun d!1221908 () Bool)

(assert (=> d!1221908 (= (tail!6445 rules!3756) (t!340824 rules!3756))))

(assert (=> b!4122096 d!1221908))

(declare-fun d!1221910 () Bool)

(assert (=> d!1221910 (contains!8958 (tail!6445 rules!3756) r!4008)))

(declare-fun lt!1470743 () Unit!63935)

(declare-fun choose!25195 (List!44713 Rule!14372 Rule!14372) Unit!63935)

(assert (=> d!1221910 (= lt!1470743 (choose!25195 rules!3756 rBis!149 r!4008))))

(declare-fun e!2557898 () Bool)

(assert (=> d!1221910 e!2557898))

(declare-fun res!1684440 () Bool)

(assert (=> d!1221910 (=> (not res!1684440) (not e!2557898))))

(assert (=> d!1221910 (= res!1684440 (contains!8958 rules!3756 rBis!149))))

(assert (=> d!1221910 (= (lemmaGetIndexBiggerAndHeadEqThenTailContains!28 rules!3756 rBis!149 r!4008) lt!1470743)))

(declare-fun b!4122285 () Bool)

(assert (=> b!4122285 (= e!2557898 (contains!8958 rules!3756 r!4008))))

(assert (= (and d!1221910 res!1684440) b!4122285))

(assert (=> d!1221910 m!4721261))

(assert (=> d!1221910 m!4721261))

(assert (=> d!1221910 m!4721263))

(declare-fun m!4721409 () Bool)

(assert (=> d!1221910 m!4721409))

(assert (=> d!1221910 m!4721297))

(assert (=> b!4122285 m!4721259))

(assert (=> b!4122096 d!1221910))

(declare-fun b!4122304 () Bool)

(declare-fun e!2557908 () Bool)

(declare-datatypes ((tuple2!43054 0))(
  ( (tuple2!43055 (_1!24661 List!44712) (_2!24661 List!44712)) )
))
(declare-fun findLongestMatchInner!1492 (Regex!12191 List!44712 Int List!44712 List!44712 Int) tuple2!43054)

(assert (=> b!4122304 (= e!2557908 (matchR!6022 (regex!7286 rBis!149) (_1!24661 (findLongestMatchInner!1492 (regex!7286 rBis!149) Nil!44588 (size!33009 Nil!44588) input!3238 input!3238 (size!33009 input!3238)))))))

(declare-fun b!4122305 () Bool)

(declare-fun e!2557910 () Bool)

(declare-fun e!2557907 () Bool)

(assert (=> b!4122305 (= e!2557910 e!2557907)))

(declare-fun res!1684457 () Bool)

(assert (=> b!4122305 (=> (not res!1684457) (not e!2557907))))

(declare-fun lt!1470758 () Option!9594)

(assert (=> b!4122305 (= res!1684457 (matchR!6022 (regex!7286 rBis!149) (list!16361 (charsOf!4908 (_1!24659 (get!14547 lt!1470758))))))))

(declare-fun b!4122306 () Bool)

(declare-fun res!1684456 () Bool)

(assert (=> b!4122306 (=> (not res!1684456) (not e!2557907))))

(assert (=> b!4122306 (= res!1684456 (= (rule!10362 (_1!24659 (get!14547 lt!1470758))) rBis!149))))

(declare-fun b!4122307 () Bool)

(declare-fun e!2557909 () Option!9594)

(assert (=> b!4122307 (= e!2557909 None!9593)))

(declare-fun d!1221912 () Bool)

(assert (=> d!1221912 e!2557910))

(declare-fun res!1684460 () Bool)

(assert (=> d!1221912 (=> res!1684460 e!2557910)))

(assert (=> d!1221912 (= res!1684460 (isEmpty!26532 lt!1470758))))

(assert (=> d!1221912 (= lt!1470758 e!2557909)))

(declare-fun c!707728 () Bool)

(declare-fun lt!1470756 () tuple2!43054)

(assert (=> d!1221912 (= c!707728 (isEmpty!26534 (_1!24661 lt!1470756)))))

(declare-fun findLongestMatch!1406 (Regex!12191 List!44712) tuple2!43054)

(assert (=> d!1221912 (= lt!1470756 (findLongestMatch!1406 (regex!7286 rBis!149) input!3238))))

(assert (=> d!1221912 (ruleValid!3094 thiss!25645 rBis!149)))

(assert (=> d!1221912 (= (maxPrefixOneRule!3017 thiss!25645 rBis!149 input!3238) lt!1470758)))

(declare-fun b!4122308 () Bool)

(assert (=> b!4122308 (= e!2557909 (Some!9593 (tuple2!43051 (Token!13503 (apply!10359 (transformation!7286 rBis!149) (seqFromList!5403 (_1!24661 lt!1470756))) rBis!149 (size!33010 (seqFromList!5403 (_1!24661 lt!1470756))) (_1!24661 lt!1470756)) (_2!24661 lt!1470756))))))

(declare-fun lt!1470757 () Unit!63935)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1466 (Regex!12191 List!44712) Unit!63935)

(assert (=> b!4122308 (= lt!1470757 (longestMatchIsAcceptedByMatchOrIsEmpty!1466 (regex!7286 rBis!149) input!3238))))

(declare-fun res!1684461 () Bool)

(assert (=> b!4122308 (= res!1684461 (isEmpty!26534 (_1!24661 (findLongestMatchInner!1492 (regex!7286 rBis!149) Nil!44588 (size!33009 Nil!44588) input!3238 input!3238 (size!33009 input!3238)))))))

(assert (=> b!4122308 (=> res!1684461 e!2557908)))

(assert (=> b!4122308 e!2557908))

(declare-fun lt!1470754 () Unit!63935)

(assert (=> b!4122308 (= lt!1470754 lt!1470757)))

(declare-fun lt!1470755 () Unit!63935)

(assert (=> b!4122308 (= lt!1470755 (lemmaSemiInverse!2144 (transformation!7286 rBis!149) (seqFromList!5403 (_1!24661 lt!1470756))))))

(declare-fun b!4122309 () Bool)

(assert (=> b!4122309 (= e!2557907 (= (size!33008 (_1!24659 (get!14547 lt!1470758))) (size!33009 (originalCharacters!7782 (_1!24659 (get!14547 lt!1470758))))))))

(declare-fun b!4122310 () Bool)

(declare-fun res!1684458 () Bool)

(assert (=> b!4122310 (=> (not res!1684458) (not e!2557907))))

(assert (=> b!4122310 (= res!1684458 (= (value!228205 (_1!24659 (get!14547 lt!1470758))) (apply!10359 (transformation!7286 (rule!10362 (_1!24659 (get!14547 lt!1470758)))) (seqFromList!5403 (originalCharacters!7782 (_1!24659 (get!14547 lt!1470758)))))))))

(declare-fun b!4122311 () Bool)

(declare-fun res!1684459 () Bool)

(assert (=> b!4122311 (=> (not res!1684459) (not e!2557907))))

(assert (=> b!4122311 (= res!1684459 (= (++!11558 (list!16361 (charsOf!4908 (_1!24659 (get!14547 lt!1470758)))) (_2!24659 (get!14547 lt!1470758))) input!3238))))

(declare-fun b!4122312 () Bool)

(declare-fun res!1684455 () Bool)

(assert (=> b!4122312 (=> (not res!1684455) (not e!2557907))))

(assert (=> b!4122312 (= res!1684455 (< (size!33009 (_2!24659 (get!14547 lt!1470758))) (size!33009 input!3238)))))

(assert (= (and d!1221912 c!707728) b!4122307))

(assert (= (and d!1221912 (not c!707728)) b!4122308))

(assert (= (and b!4122308 (not res!1684461)) b!4122304))

(assert (= (and d!1221912 (not res!1684460)) b!4122305))

(assert (= (and b!4122305 res!1684457) b!4122311))

(assert (= (and b!4122311 res!1684459) b!4122312))

(assert (= (and b!4122312 res!1684455) b!4122306))

(assert (= (and b!4122306 res!1684456) b!4122310))

(assert (= (and b!4122310 res!1684458) b!4122309))

(declare-fun m!4721411 () Bool)

(assert (=> b!4122312 m!4721411))

(declare-fun m!4721413 () Bool)

(assert (=> b!4122312 m!4721413))

(declare-fun m!4721415 () Bool)

(assert (=> b!4122312 m!4721415))

(assert (=> b!4122305 m!4721411))

(declare-fun m!4721417 () Bool)

(assert (=> b!4122305 m!4721417))

(assert (=> b!4122305 m!4721417))

(declare-fun m!4721419 () Bool)

(assert (=> b!4122305 m!4721419))

(assert (=> b!4122305 m!4721419))

(declare-fun m!4721421 () Bool)

(assert (=> b!4122305 m!4721421))

(assert (=> b!4122306 m!4721411))

(declare-fun m!4721423 () Bool)

(assert (=> d!1221912 m!4721423))

(declare-fun m!4721425 () Bool)

(assert (=> d!1221912 m!4721425))

(declare-fun m!4721427 () Bool)

(assert (=> d!1221912 m!4721427))

(assert (=> d!1221912 m!4721275))

(declare-fun m!4721429 () Bool)

(assert (=> b!4122304 m!4721429))

(assert (=> b!4122304 m!4721415))

(assert (=> b!4122304 m!4721429))

(assert (=> b!4122304 m!4721415))

(declare-fun m!4721431 () Bool)

(assert (=> b!4122304 m!4721431))

(declare-fun m!4721433 () Bool)

(assert (=> b!4122304 m!4721433))

(assert (=> b!4122311 m!4721411))

(assert (=> b!4122311 m!4721417))

(assert (=> b!4122311 m!4721417))

(assert (=> b!4122311 m!4721419))

(assert (=> b!4122311 m!4721419))

(declare-fun m!4721435 () Bool)

(assert (=> b!4122311 m!4721435))

(assert (=> b!4122309 m!4721411))

(declare-fun m!4721437 () Bool)

(assert (=> b!4122309 m!4721437))

(assert (=> b!4122310 m!4721411))

(declare-fun m!4721439 () Bool)

(assert (=> b!4122310 m!4721439))

(assert (=> b!4122310 m!4721439))

(declare-fun m!4721441 () Bool)

(assert (=> b!4122310 m!4721441))

(declare-fun m!4721443 () Bool)

(assert (=> b!4122308 m!4721443))

(declare-fun m!4721445 () Bool)

(assert (=> b!4122308 m!4721445))

(assert (=> b!4122308 m!4721429))

(assert (=> b!4122308 m!4721443))

(declare-fun m!4721447 () Bool)

(assert (=> b!4122308 m!4721447))

(assert (=> b!4122308 m!4721429))

(assert (=> b!4122308 m!4721415))

(assert (=> b!4122308 m!4721431))

(declare-fun m!4721449 () Bool)

(assert (=> b!4122308 m!4721449))

(assert (=> b!4122308 m!4721415))

(assert (=> b!4122308 m!4721443))

(declare-fun m!4721451 () Bool)

(assert (=> b!4122308 m!4721451))

(assert (=> b!4122308 m!4721443))

(declare-fun m!4721453 () Bool)

(assert (=> b!4122308 m!4721453))

(assert (=> b!4122096 d!1221912))

(declare-fun d!1221914 () Bool)

(assert (=> d!1221914 (not (= rBis!149 r!4008))))

(declare-fun lt!1470761 () Unit!63935)

(declare-fun choose!25197 (LexerInterface!6875 List!44713 Rule!14372 Rule!14372) Unit!63935)

(assert (=> d!1221914 (= lt!1470761 (choose!25197 thiss!25645 rules!3756 rBis!149 r!4008))))

(assert (=> d!1221914 (contains!8958 rules!3756 rBis!149)))

(assert (=> d!1221914 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!26 thiss!25645 rules!3756 rBis!149 r!4008) lt!1470761)))

(declare-fun bs!594721 () Bool)

(assert (= bs!594721 d!1221914))

(declare-fun m!4721455 () Bool)

(assert (=> bs!594721 m!4721455))

(assert (=> bs!594721 m!4721297))

(assert (=> b!4122096 d!1221914))

(declare-fun d!1221916 () Bool)

(declare-fun lt!1470764 () Bool)

(declare-fun content!6874 (List!44713) (InoxSet Rule!14372))

(assert (=> d!1221916 (= lt!1470764 (select (content!6874 (tail!6445 rules!3756)) r!4008))))

(declare-fun e!2557916 () Bool)

(assert (=> d!1221916 (= lt!1470764 e!2557916)))

(declare-fun res!1684466 () Bool)

(assert (=> d!1221916 (=> (not res!1684466) (not e!2557916))))

(assert (=> d!1221916 (= res!1684466 ((_ is Cons!44589) (tail!6445 rules!3756)))))

(assert (=> d!1221916 (= (contains!8958 (tail!6445 rules!3756) r!4008) lt!1470764)))

(declare-fun b!4122317 () Bool)

(declare-fun e!2557915 () Bool)

(assert (=> b!4122317 (= e!2557916 e!2557915)))

(declare-fun res!1684467 () Bool)

(assert (=> b!4122317 (=> res!1684467 e!2557915)))

(assert (=> b!4122317 (= res!1684467 (= (h!50009 (tail!6445 rules!3756)) r!4008))))

(declare-fun b!4122318 () Bool)

(assert (=> b!4122318 (= e!2557915 (contains!8958 (t!340824 (tail!6445 rules!3756)) r!4008))))

(assert (= (and d!1221916 res!1684466) b!4122317))

(assert (= (and b!4122317 (not res!1684467)) b!4122318))

(assert (=> d!1221916 m!4721261))

(declare-fun m!4721457 () Bool)

(assert (=> d!1221916 m!4721457))

(declare-fun m!4721459 () Bool)

(assert (=> d!1221916 m!4721459))

(declare-fun m!4721461 () Bool)

(assert (=> b!4122318 m!4721461))

(assert (=> b!4122096 d!1221916))

(declare-fun d!1221918 () Bool)

(assert (=> d!1221918 (= (isEmpty!26532 lt!1470696) (not ((_ is Some!9593) lt!1470696)))))

(assert (=> b!4122096 d!1221918))

(declare-fun d!1221920 () Bool)

(assert (=> d!1221920 (ruleValid!3094 thiss!25645 r!4008)))

(declare-fun lt!1470767 () Unit!63935)

(declare-fun choose!25198 (LexerInterface!6875 Rule!14372 List!44713) Unit!63935)

(assert (=> d!1221920 (= lt!1470767 (choose!25198 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1221920 (contains!8958 rules!3756 r!4008)))

(assert (=> d!1221920 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2138 thiss!25645 r!4008 rules!3756) lt!1470767)))

(declare-fun bs!594722 () Bool)

(assert (= bs!594722 d!1221920))

(assert (=> bs!594722 m!4721249))

(declare-fun m!4721463 () Bool)

(assert (=> bs!594722 m!4721463))

(assert (=> bs!594722 m!4721259))

(assert (=> b!4122117 d!1221920))

(declare-fun d!1221922 () Bool)

(declare-fun res!1684468 () Bool)

(declare-fun e!2557917 () Bool)

(assert (=> d!1221922 (=> (not res!1684468) (not e!2557917))))

(assert (=> d!1221922 (= res!1684468 (validRegex!5482 (regex!7286 rBis!149)))))

(assert (=> d!1221922 (= (ruleValid!3094 thiss!25645 rBis!149) e!2557917)))

(declare-fun b!4122319 () Bool)

(declare-fun res!1684469 () Bool)

(assert (=> b!4122319 (=> (not res!1684469) (not e!2557917))))

(assert (=> b!4122319 (= res!1684469 (not (nullable!4276 (regex!7286 rBis!149))))))

(declare-fun b!4122320 () Bool)

(assert (=> b!4122320 (= e!2557917 (not (= (tag!8146 rBis!149) (String!51331 ""))))))

(assert (= (and d!1221922 res!1684468) b!4122319))

(assert (= (and b!4122319 res!1684469) b!4122320))

(assert (=> d!1221922 m!4721283))

(assert (=> b!4122319 m!4721397))

(assert (=> b!4122117 d!1221922))

(declare-fun d!1221924 () Bool)

(assert (=> d!1221924 (ruleValid!3094 thiss!25645 rBis!149)))

(declare-fun lt!1470768 () Unit!63935)

(assert (=> d!1221924 (= lt!1470768 (choose!25198 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1221924 (contains!8958 rules!3756 rBis!149)))

(assert (=> d!1221924 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2138 thiss!25645 rBis!149 rules!3756) lt!1470768)))

(declare-fun bs!594723 () Bool)

(assert (= bs!594723 d!1221924))

(assert (=> bs!594723 m!4721275))

(declare-fun m!4721465 () Bool)

(assert (=> bs!594723 m!4721465))

(assert (=> bs!594723 m!4721297))

(assert (=> b!4122117 d!1221924))

(declare-fun d!1221926 () Bool)

(declare-fun lt!1470769 () Bool)

(assert (=> d!1221926 (= lt!1470769 (select (content!6874 rules!3756) r!4008))))

(declare-fun e!2557919 () Bool)

(assert (=> d!1221926 (= lt!1470769 e!2557919)))

(declare-fun res!1684470 () Bool)

(assert (=> d!1221926 (=> (not res!1684470) (not e!2557919))))

(assert (=> d!1221926 (= res!1684470 ((_ is Cons!44589) rules!3756))))

(assert (=> d!1221926 (= (contains!8958 rules!3756 r!4008) lt!1470769)))

(declare-fun b!4122321 () Bool)

(declare-fun e!2557918 () Bool)

(assert (=> b!4122321 (= e!2557919 e!2557918)))

(declare-fun res!1684471 () Bool)

(assert (=> b!4122321 (=> res!1684471 e!2557918)))

(assert (=> b!4122321 (= res!1684471 (= (h!50009 rules!3756) r!4008))))

(declare-fun b!4122322 () Bool)

(assert (=> b!4122322 (= e!2557918 (contains!8958 (t!340824 rules!3756) r!4008))))

(assert (= (and d!1221926 res!1684470) b!4122321))

(assert (= (and b!4122321 (not res!1684471)) b!4122322))

(declare-fun m!4721467 () Bool)

(assert (=> d!1221926 m!4721467))

(declare-fun m!4721469 () Bool)

(assert (=> d!1221926 m!4721469))

(declare-fun m!4721471 () Bool)

(assert (=> b!4122322 m!4721471))

(assert (=> b!4122106 d!1221926))

(declare-fun d!1221928 () Bool)

(declare-fun lt!1470772 () Int)

(assert (=> d!1221928 (>= lt!1470772 0)))

(declare-fun e!2557925 () Int)

(assert (=> d!1221928 (= lt!1470772 e!2557925)))

(declare-fun c!707733 () Bool)

(assert (=> d!1221928 (= c!707733 (and ((_ is Cons!44589) rules!3756) (= (h!50009 rules!3756) rBis!149)))))

(assert (=> d!1221928 (contains!8958 rules!3756 rBis!149)))

(assert (=> d!1221928 (= (getIndex!634 rules!3756 rBis!149) lt!1470772)))

(declare-fun b!4122332 () Bool)

(declare-fun e!2557926 () Int)

(assert (=> b!4122332 (= e!2557925 e!2557926)))

(declare-fun c!707734 () Bool)

(assert (=> b!4122332 (= c!707734 (and ((_ is Cons!44589) rules!3756) (not (= (h!50009 rules!3756) rBis!149))))))

(declare-fun b!4122334 () Bool)

(assert (=> b!4122334 (= e!2557926 (- 1))))

(declare-fun b!4122331 () Bool)

(assert (=> b!4122331 (= e!2557925 0)))

(declare-fun b!4122333 () Bool)

(assert (=> b!4122333 (= e!2557926 (+ 1 (getIndex!634 (t!340824 rules!3756) rBis!149)))))

(assert (= (and d!1221928 c!707733) b!4122331))

(assert (= (and d!1221928 (not c!707733)) b!4122332))

(assert (= (and b!4122332 c!707734) b!4122333))

(assert (= (and b!4122332 (not c!707734)) b!4122334))

(assert (=> d!1221928 m!4721297))

(declare-fun m!4721473 () Bool)

(assert (=> b!4122333 m!4721473))

(assert (=> b!4122116 d!1221928))

(declare-fun d!1221930 () Bool)

(declare-fun lt!1470773 () Int)

(assert (=> d!1221930 (>= lt!1470773 0)))

(declare-fun e!2557927 () Int)

(assert (=> d!1221930 (= lt!1470773 e!2557927)))

(declare-fun c!707735 () Bool)

(assert (=> d!1221930 (= c!707735 (and ((_ is Cons!44589) rules!3756) (= (h!50009 rules!3756) r!4008)))))

(assert (=> d!1221930 (contains!8958 rules!3756 r!4008)))

(assert (=> d!1221930 (= (getIndex!634 rules!3756 r!4008) lt!1470773)))

(declare-fun b!4122336 () Bool)

(declare-fun e!2557928 () Int)

(assert (=> b!4122336 (= e!2557927 e!2557928)))

(declare-fun c!707736 () Bool)

(assert (=> b!4122336 (= c!707736 (and ((_ is Cons!44589) rules!3756) (not (= (h!50009 rules!3756) r!4008))))))

(declare-fun b!4122338 () Bool)

(assert (=> b!4122338 (= e!2557928 (- 1))))

(declare-fun b!4122335 () Bool)

(assert (=> b!4122335 (= e!2557927 0)))

(declare-fun b!4122337 () Bool)

(assert (=> b!4122337 (= e!2557928 (+ 1 (getIndex!634 (t!340824 rules!3756) r!4008)))))

(assert (= (and d!1221930 c!707735) b!4122335))

(assert (= (and d!1221930 (not c!707735)) b!4122336))

(assert (= (and b!4122336 c!707736) b!4122337))

(assert (= (and b!4122336 (not c!707736)) b!4122338))

(assert (=> d!1221930 m!4721259))

(declare-fun m!4721475 () Bool)

(assert (=> b!4122337 m!4721475))

(assert (=> b!4122116 d!1221930))

(declare-fun d!1221932 () Bool)

(assert (=> d!1221932 (= (isEmpty!26534 p!2912) ((_ is Nil!44588) p!2912))))

(assert (=> b!4122105 d!1221932))

(declare-fun d!1221934 () Bool)

(assert (=> d!1221934 (= (inv!59168 (tag!8146 rBis!149)) (= (mod (str.len (value!228204 (tag!8146 rBis!149))) 2) 0))))

(assert (=> b!4122115 d!1221934))

(declare-fun d!1221936 () Bool)

(declare-fun res!1684474 () Bool)

(declare-fun e!2557931 () Bool)

(assert (=> d!1221936 (=> (not res!1684474) (not e!2557931))))

(declare-fun semiInverseModEq!3138 (Int Int) Bool)

(assert (=> d!1221936 (= res!1684474 (semiInverseModEq!3138 (toChars!9797 (transformation!7286 rBis!149)) (toValue!9938 (transformation!7286 rBis!149))))))

(assert (=> d!1221936 (= (inv!59170 (transformation!7286 rBis!149)) e!2557931)))

(declare-fun b!4122341 () Bool)

(declare-fun equivClasses!3037 (Int Int) Bool)

(assert (=> b!4122341 (= e!2557931 (equivClasses!3037 (toChars!9797 (transformation!7286 rBis!149)) (toValue!9938 (transformation!7286 rBis!149))))))

(assert (= (and d!1221936 res!1684474) b!4122341))

(declare-fun m!4721477 () Bool)

(assert (=> d!1221936 m!4721477))

(declare-fun m!4721479 () Bool)

(assert (=> b!4122341 m!4721479))

(assert (=> b!4122115 d!1221936))

(declare-fun d!1221938 () Bool)

(declare-fun res!1684477 () Bool)

(declare-fun e!2557934 () Bool)

(assert (=> d!1221938 (=> (not res!1684477) (not e!2557934))))

(declare-fun rulesValid!2852 (LexerInterface!6875 List!44713) Bool)

(assert (=> d!1221938 (= res!1684477 (rulesValid!2852 thiss!25645 rules!3756))))

(assert (=> d!1221938 (= (rulesInvariant!6172 thiss!25645 rules!3756) e!2557934)))

(declare-fun b!4122344 () Bool)

(declare-datatypes ((List!44715 0))(
  ( (Nil!44591) (Cons!44591 (h!50011 String!51330) (t!340876 List!44715)) )
))
(declare-fun noDuplicateTag!2931 (LexerInterface!6875 List!44713 List!44715) Bool)

(assert (=> b!4122344 (= e!2557934 (noDuplicateTag!2931 thiss!25645 rules!3756 Nil!44591))))

(assert (= (and d!1221938 res!1684477) b!4122344))

(declare-fun m!4721481 () Bool)

(assert (=> d!1221938 m!4721481))

(declare-fun m!4721483 () Bool)

(assert (=> b!4122344 m!4721483))

(assert (=> b!4122104 d!1221938))

(declare-fun d!1221940 () Bool)

(assert (=> d!1221940 (= (isEmpty!26533 rules!3756) ((_ is Nil!44589) rules!3756))))

(assert (=> b!4122103 d!1221940))

(declare-fun d!1221942 () Bool)

(assert (=> d!1221942 (= (inv!59168 (tag!8146 (h!50009 rules!3756))) (= (mod (str.len (value!228204 (tag!8146 (h!50009 rules!3756)))) 2) 0))))

(assert (=> b!4122113 d!1221942))

(declare-fun d!1221944 () Bool)

(declare-fun res!1684478 () Bool)

(declare-fun e!2557935 () Bool)

(assert (=> d!1221944 (=> (not res!1684478) (not e!2557935))))

(assert (=> d!1221944 (= res!1684478 (semiInverseModEq!3138 (toChars!9797 (transformation!7286 (h!50009 rules!3756))) (toValue!9938 (transformation!7286 (h!50009 rules!3756)))))))

(assert (=> d!1221944 (= (inv!59170 (transformation!7286 (h!50009 rules!3756))) e!2557935)))

(declare-fun b!4122345 () Bool)

(assert (=> b!4122345 (= e!2557935 (equivClasses!3037 (toChars!9797 (transformation!7286 (h!50009 rules!3756))) (toValue!9938 (transformation!7286 (h!50009 rules!3756)))))))

(assert (= (and d!1221944 res!1684478) b!4122345))

(declare-fun m!4721485 () Bool)

(assert (=> d!1221944 m!4721485))

(declare-fun m!4721487 () Bool)

(assert (=> b!4122345 m!4721487))

(assert (=> b!4122113 d!1221944))

(declare-fun d!1221946 () Bool)

(declare-fun lt!1470774 () Bool)

(assert (=> d!1221946 (= lt!1470774 (select (content!6874 rules!3756) rBis!149))))

(declare-fun e!2557937 () Bool)

(assert (=> d!1221946 (= lt!1470774 e!2557937)))

(declare-fun res!1684479 () Bool)

(assert (=> d!1221946 (=> (not res!1684479) (not e!2557937))))

(assert (=> d!1221946 (= res!1684479 ((_ is Cons!44589) rules!3756))))

(assert (=> d!1221946 (= (contains!8958 rules!3756 rBis!149) lt!1470774)))

(declare-fun b!4122346 () Bool)

(declare-fun e!2557936 () Bool)

(assert (=> b!4122346 (= e!2557937 e!2557936)))

(declare-fun res!1684480 () Bool)

(assert (=> b!4122346 (=> res!1684480 e!2557936)))

(assert (=> b!4122346 (= res!1684480 (= (h!50009 rules!3756) rBis!149))))

(declare-fun b!4122347 () Bool)

(assert (=> b!4122347 (= e!2557936 (contains!8958 (t!340824 rules!3756) rBis!149))))

(assert (= (and d!1221946 res!1684479) b!4122346))

(assert (= (and b!4122346 (not res!1684480)) b!4122347))

(assert (=> d!1221946 m!4721467))

(declare-fun m!4721489 () Bool)

(assert (=> d!1221946 m!4721489))

(declare-fun m!4721491 () Bool)

(assert (=> b!4122347 m!4721491))

(assert (=> b!4122102 d!1221946))

(declare-fun d!1221948 () Bool)

(declare-fun dynLambda!19054 (Int BalanceConc!26588) TokenValue!7516)

(assert (=> d!1221948 (= (apply!10359 (transformation!7286 r!4008) lt!1470708) (dynLambda!19054 (toValue!9938 (transformation!7286 r!4008)) lt!1470708))))

(declare-fun b_lambda!120951 () Bool)

(assert (=> (not b_lambda!120951) (not d!1221948)))

(declare-fun t!340839 () Bool)

(declare-fun tb!247347 () Bool)

(assert (=> (and b!4122109 (= (toValue!9938 (transformation!7286 r!4008)) (toValue!9938 (transformation!7286 r!4008))) t!340839) tb!247347))

(declare-fun result!300516 () Bool)

(declare-fun inv!21 (TokenValue!7516) Bool)

(assert (=> tb!247347 (= result!300516 (inv!21 (dynLambda!19054 (toValue!9938 (transformation!7286 r!4008)) lt!1470708)))))

(declare-fun m!4721493 () Bool)

(assert (=> tb!247347 m!4721493))

(assert (=> d!1221948 t!340839))

(declare-fun b_and!318941 () Bool)

(assert (= b_and!318917 (and (=> t!340839 result!300516) b_and!318941)))

(declare-fun t!340841 () Bool)

(declare-fun tb!247349 () Bool)

(assert (=> (and b!4122110 (= (toValue!9938 (transformation!7286 (h!50009 rules!3756))) (toValue!9938 (transformation!7286 r!4008))) t!340841) tb!247349))

(declare-fun result!300520 () Bool)

(assert (= result!300520 result!300516))

(assert (=> d!1221948 t!340841))

(declare-fun b_and!318943 () Bool)

(assert (= b_and!318921 (and (=> t!340841 result!300520) b_and!318943)))

(declare-fun t!340843 () Bool)

(declare-fun tb!247351 () Bool)

(assert (=> (and b!4122111 (= (toValue!9938 (transformation!7286 rBis!149)) (toValue!9938 (transformation!7286 r!4008))) t!340843) tb!247351))

(declare-fun result!300522 () Bool)

(assert (= result!300522 result!300516))

(assert (=> d!1221948 t!340843))

(declare-fun b_and!318945 () Bool)

(assert (= b_and!318925 (and (=> t!340843 result!300522) b_and!318945)))

(declare-fun m!4721495 () Bool)

(assert (=> d!1221948 m!4721495))

(assert (=> b!4122101 d!1221948))

(declare-fun b!4122568 () Bool)

(declare-fun e!2558068 () Bool)

(assert (=> b!4122568 (= e!2558068 true)))

(declare-fun d!1221950 () Bool)

(assert (=> d!1221950 e!2558068))

(assert (= d!1221950 b!4122568))

(declare-fun lambda!128685 () Int)

(declare-fun order!23453 () Int)

(declare-fun order!23455 () Int)

(declare-fun dynLambda!19055 (Int Int) Int)

(declare-fun dynLambda!19056 (Int Int) Int)

(assert (=> b!4122568 (< (dynLambda!19055 order!23453 (toValue!9938 (transformation!7286 r!4008))) (dynLambda!19056 order!23455 lambda!128685))))

(declare-fun order!23457 () Int)

(declare-fun dynLambda!19057 (Int Int) Int)

(assert (=> b!4122568 (< (dynLambda!19057 order!23457 (toChars!9797 (transformation!7286 r!4008))) (dynLambda!19056 order!23455 lambda!128685))))

(assert (=> d!1221950 (= (list!16361 (dynLambda!19053 (toChars!9797 (transformation!7286 r!4008)) (dynLambda!19054 (toValue!9938 (transformation!7286 r!4008)) lt!1470708))) (list!16361 lt!1470708))))

(declare-fun lt!1470847 () Unit!63935)

(declare-fun ForallOf!921 (Int BalanceConc!26588) Unit!63935)

(assert (=> d!1221950 (= lt!1470847 (ForallOf!921 lambda!128685 lt!1470708))))

(assert (=> d!1221950 (= (lemmaSemiInverse!2144 (transformation!7286 r!4008) lt!1470708) lt!1470847)))

(declare-fun b_lambda!120965 () Bool)

(assert (=> (not b_lambda!120965) (not d!1221950)))

(declare-fun t!340865 () Bool)

(declare-fun tb!247371 () Bool)

(assert (=> (and b!4122109 (= (toChars!9797 (transformation!7286 r!4008)) (toChars!9797 (transformation!7286 r!4008))) t!340865) tb!247371))

(declare-fun e!2558069 () Bool)

(declare-fun tp!1256243 () Bool)

(declare-fun b!4122569 () Bool)

(assert (=> b!4122569 (= e!2558069 (and (inv!59173 (c!707696 (dynLambda!19053 (toChars!9797 (transformation!7286 r!4008)) (dynLambda!19054 (toValue!9938 (transformation!7286 r!4008)) lt!1470708)))) tp!1256243))))

(declare-fun result!300550 () Bool)

(assert (=> tb!247371 (= result!300550 (and (inv!59174 (dynLambda!19053 (toChars!9797 (transformation!7286 r!4008)) (dynLambda!19054 (toValue!9938 (transformation!7286 r!4008)) lt!1470708))) e!2558069))))

(assert (= tb!247371 b!4122569))

(declare-fun m!4721683 () Bool)

(assert (=> b!4122569 m!4721683))

(declare-fun m!4721685 () Bool)

(assert (=> tb!247371 m!4721685))

(assert (=> d!1221950 t!340865))

(declare-fun b_and!318969 () Bool)

(assert (= b_and!318935 (and (=> t!340865 result!300550) b_and!318969)))

(declare-fun tb!247373 () Bool)

(declare-fun t!340867 () Bool)

(assert (=> (and b!4122110 (= (toChars!9797 (transformation!7286 (h!50009 rules!3756))) (toChars!9797 (transformation!7286 r!4008))) t!340867) tb!247373))

(declare-fun result!300552 () Bool)

(assert (= result!300552 result!300550))

(assert (=> d!1221950 t!340867))

(declare-fun b_and!318971 () Bool)

(assert (= b_and!318937 (and (=> t!340867 result!300552) b_and!318971)))

(declare-fun t!340869 () Bool)

(declare-fun tb!247375 () Bool)

(assert (=> (and b!4122111 (= (toChars!9797 (transformation!7286 rBis!149)) (toChars!9797 (transformation!7286 r!4008))) t!340869) tb!247375))

(declare-fun result!300554 () Bool)

(assert (= result!300554 result!300550))

(assert (=> d!1221950 t!340869))

(declare-fun b_and!318973 () Bool)

(assert (= b_and!318939 (and (=> t!340869 result!300554) b_and!318973)))

(declare-fun b_lambda!120967 () Bool)

(assert (=> (not b_lambda!120967) (not d!1221950)))

(assert (=> d!1221950 t!340839))

(declare-fun b_and!318975 () Bool)

(assert (= b_and!318941 (and (=> t!340839 result!300516) b_and!318975)))

(assert (=> d!1221950 t!340841))

(declare-fun b_and!318977 () Bool)

(assert (= b_and!318943 (and (=> t!340841 result!300520) b_and!318977)))

(assert (=> d!1221950 t!340843))

(declare-fun b_and!318979 () Bool)

(assert (= b_and!318945 (and (=> t!340843 result!300522) b_and!318979)))

(assert (=> d!1221950 m!4721495))

(declare-fun m!4721687 () Bool)

(assert (=> d!1221950 m!4721687))

(assert (=> d!1221950 m!4721495))

(declare-fun m!4721689 () Bool)

(assert (=> d!1221950 m!4721689))

(declare-fun m!4721691 () Bool)

(assert (=> d!1221950 m!4721691))

(assert (=> d!1221950 m!4721689))

(declare-fun m!4721693 () Bool)

(assert (=> d!1221950 m!4721693))

(assert (=> b!4122101 d!1221950))

(declare-fun d!1222010 () Bool)

(declare-fun lt!1470850 () List!44712)

(assert (=> d!1222010 (= (++!11558 p!2912 lt!1470850) input!3238)))

(declare-fun e!2558072 () List!44712)

(assert (=> d!1222010 (= lt!1470850 e!2558072)))

(declare-fun c!707772 () Bool)

(assert (=> d!1222010 (= c!707772 ((_ is Cons!44588) p!2912))))

(assert (=> d!1222010 (>= (size!33009 input!3238) (size!33009 p!2912))))

(assert (=> d!1222010 (= (getSuffix!2550 input!3238 p!2912) lt!1470850)))

(declare-fun b!4122574 () Bool)

(assert (=> b!4122574 (= e!2558072 (getSuffix!2550 (tail!6447 input!3238) (t!340823 p!2912)))))

(declare-fun b!4122575 () Bool)

(assert (=> b!4122575 (= e!2558072 input!3238)))

(assert (= (and d!1222010 c!707772) b!4122574))

(assert (= (and d!1222010 (not c!707772)) b!4122575))

(declare-fun m!4721695 () Bool)

(assert (=> d!1222010 m!4721695))

(assert (=> d!1222010 m!4721415))

(assert (=> d!1222010 m!4721225))

(declare-fun m!4721697 () Bool)

(assert (=> b!4122574 m!4721697))

(assert (=> b!4122574 m!4721697))

(declare-fun m!4721699 () Bool)

(assert (=> b!4122574 m!4721699))

(assert (=> b!4122101 d!1222010))

(declare-fun b!4122594 () Bool)

(declare-fun e!2558079 () Option!9594)

(declare-fun call!289997 () Option!9594)

(assert (=> b!4122594 (= e!2558079 call!289997)))

(declare-fun b!4122595 () Bool)

(declare-fun res!1684601 () Bool)

(declare-fun e!2558081 () Bool)

(assert (=> b!4122595 (=> (not res!1684601) (not e!2558081))))

(declare-fun lt!1470865 () Option!9594)

(assert (=> b!4122595 (= res!1684601 (= (value!228205 (_1!24659 (get!14547 lt!1470865))) (apply!10359 (transformation!7286 (rule!10362 (_1!24659 (get!14547 lt!1470865)))) (seqFromList!5403 (originalCharacters!7782 (_1!24659 (get!14547 lt!1470865)))))))))

(declare-fun d!1222012 () Bool)

(declare-fun e!2558080 () Bool)

(assert (=> d!1222012 e!2558080))

(declare-fun res!1684599 () Bool)

(assert (=> d!1222012 (=> res!1684599 e!2558080)))

(assert (=> d!1222012 (= res!1684599 (isEmpty!26532 lt!1470865))))

(assert (=> d!1222012 (= lt!1470865 e!2558079)))

(declare-fun c!707775 () Bool)

(assert (=> d!1222012 (= c!707775 (and ((_ is Cons!44589) rules!3756) ((_ is Nil!44589) (t!340824 rules!3756))))))

(declare-fun lt!1470862 () Unit!63935)

(declare-fun lt!1470863 () Unit!63935)

(assert (=> d!1222012 (= lt!1470862 lt!1470863)))

(assert (=> d!1222012 (isPrefix!4221 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2738 (List!44712 List!44712) Unit!63935)

(assert (=> d!1222012 (= lt!1470863 (lemmaIsPrefixRefl!2738 input!3238 input!3238))))

(declare-fun rulesValidInductive!2689 (LexerInterface!6875 List!44713) Bool)

(assert (=> d!1222012 (rulesValidInductive!2689 thiss!25645 rules!3756)))

(assert (=> d!1222012 (= (maxPrefix!4067 thiss!25645 rules!3756 input!3238) lt!1470865)))

(declare-fun bm!289992 () Bool)

(assert (=> bm!289992 (= call!289997 (maxPrefixOneRule!3017 thiss!25645 (h!50009 rules!3756) input!3238))))

(declare-fun b!4122596 () Bool)

(declare-fun res!1684603 () Bool)

(assert (=> b!4122596 (=> (not res!1684603) (not e!2558081))))

(assert (=> b!4122596 (= res!1684603 (= (list!16361 (charsOf!4908 (_1!24659 (get!14547 lt!1470865)))) (originalCharacters!7782 (_1!24659 (get!14547 lt!1470865)))))))

(declare-fun b!4122597 () Bool)

(declare-fun res!1684598 () Bool)

(assert (=> b!4122597 (=> (not res!1684598) (not e!2558081))))

(assert (=> b!4122597 (= res!1684598 (matchR!6022 (regex!7286 (rule!10362 (_1!24659 (get!14547 lt!1470865)))) (list!16361 (charsOf!4908 (_1!24659 (get!14547 lt!1470865))))))))

(declare-fun b!4122598 () Bool)

(declare-fun lt!1470864 () Option!9594)

(declare-fun lt!1470861 () Option!9594)

(assert (=> b!4122598 (= e!2558079 (ite (and ((_ is None!9593) lt!1470864) ((_ is None!9593) lt!1470861)) None!9593 (ite ((_ is None!9593) lt!1470861) lt!1470864 (ite ((_ is None!9593) lt!1470864) lt!1470861 (ite (>= (size!33008 (_1!24659 (v!40181 lt!1470864))) (size!33008 (_1!24659 (v!40181 lt!1470861)))) lt!1470864 lt!1470861)))))))

(assert (=> b!4122598 (= lt!1470864 call!289997)))

(assert (=> b!4122598 (= lt!1470861 (maxPrefix!4067 thiss!25645 (t!340824 rules!3756) input!3238))))

(declare-fun b!4122599 () Bool)

(declare-fun res!1684604 () Bool)

(assert (=> b!4122599 (=> (not res!1684604) (not e!2558081))))

(assert (=> b!4122599 (= res!1684604 (= (++!11558 (list!16361 (charsOf!4908 (_1!24659 (get!14547 lt!1470865)))) (_2!24659 (get!14547 lt!1470865))) input!3238))))

(declare-fun b!4122600 () Bool)

(assert (=> b!4122600 (= e!2558080 e!2558081)))

(declare-fun res!1684600 () Bool)

(assert (=> b!4122600 (=> (not res!1684600) (not e!2558081))))

(declare-fun isDefined!7232 (Option!9594) Bool)

(assert (=> b!4122600 (= res!1684600 (isDefined!7232 lt!1470865))))

(declare-fun b!4122601 () Bool)

(assert (=> b!4122601 (= e!2558081 (contains!8958 rules!3756 (rule!10362 (_1!24659 (get!14547 lt!1470865)))))))

(declare-fun b!4122602 () Bool)

(declare-fun res!1684602 () Bool)

(assert (=> b!4122602 (=> (not res!1684602) (not e!2558081))))

(assert (=> b!4122602 (= res!1684602 (< (size!33009 (_2!24659 (get!14547 lt!1470865))) (size!33009 input!3238)))))

(assert (= (and d!1222012 c!707775) b!4122594))

(assert (= (and d!1222012 (not c!707775)) b!4122598))

(assert (= (or b!4122594 b!4122598) bm!289992))

(assert (= (and d!1222012 (not res!1684599)) b!4122600))

(assert (= (and b!4122600 res!1684600) b!4122596))

(assert (= (and b!4122596 res!1684603) b!4122602))

(assert (= (and b!4122602 res!1684602) b!4122599))

(assert (= (and b!4122599 res!1684604) b!4122595))

(assert (= (and b!4122595 res!1684601) b!4122597))

(assert (= (and b!4122597 res!1684598) b!4122601))

(declare-fun m!4721701 () Bool)

(assert (=> b!4122600 m!4721701))

(declare-fun m!4721703 () Bool)

(assert (=> b!4122595 m!4721703))

(declare-fun m!4721705 () Bool)

(assert (=> b!4122595 m!4721705))

(assert (=> b!4122595 m!4721705))

(declare-fun m!4721707 () Bool)

(assert (=> b!4122595 m!4721707))

(declare-fun m!4721709 () Bool)

(assert (=> bm!289992 m!4721709))

(declare-fun m!4721711 () Bool)

(assert (=> d!1222012 m!4721711))

(declare-fun m!4721713 () Bool)

(assert (=> d!1222012 m!4721713))

(declare-fun m!4721715 () Bool)

(assert (=> d!1222012 m!4721715))

(declare-fun m!4721717 () Bool)

(assert (=> d!1222012 m!4721717))

(declare-fun m!4721719 () Bool)

(assert (=> b!4122598 m!4721719))

(assert (=> b!4122602 m!4721703))

(declare-fun m!4721721 () Bool)

(assert (=> b!4122602 m!4721721))

(assert (=> b!4122602 m!4721415))

(assert (=> b!4122596 m!4721703))

(declare-fun m!4721723 () Bool)

(assert (=> b!4122596 m!4721723))

(assert (=> b!4122596 m!4721723))

(declare-fun m!4721725 () Bool)

(assert (=> b!4122596 m!4721725))

(assert (=> b!4122601 m!4721703))

(declare-fun m!4721727 () Bool)

(assert (=> b!4122601 m!4721727))

(assert (=> b!4122597 m!4721703))

(assert (=> b!4122597 m!4721723))

(assert (=> b!4122597 m!4721723))

(assert (=> b!4122597 m!4721725))

(assert (=> b!4122597 m!4721725))

(declare-fun m!4721729 () Bool)

(assert (=> b!4122597 m!4721729))

(assert (=> b!4122599 m!4721703))

(assert (=> b!4122599 m!4721723))

(assert (=> b!4122599 m!4721723))

(assert (=> b!4122599 m!4721725))

(assert (=> b!4122599 m!4721725))

(declare-fun m!4721731 () Bool)

(assert (=> b!4122599 m!4721731))

(assert (=> b!4122101 d!1222012))

(declare-fun d!1222014 () Bool)

(declare-fun fromListB!2471 (List!44712) BalanceConc!26588)

(assert (=> d!1222014 (= (seqFromList!5403 p!2912) (fromListB!2471 p!2912))))

(declare-fun bs!594731 () Bool)

(assert (= bs!594731 d!1222014))

(declare-fun m!4721733 () Bool)

(assert (=> bs!594731 m!4721733))

(assert (=> b!4122101 d!1222014))

(declare-fun d!1222016 () Bool)

(declare-fun lt!1470868 () Int)

(assert (=> d!1222016 (>= lt!1470868 0)))

(declare-fun e!2558084 () Int)

(assert (=> d!1222016 (= lt!1470868 e!2558084)))

(declare-fun c!707778 () Bool)

(assert (=> d!1222016 (= c!707778 ((_ is Nil!44588) p!2912))))

(assert (=> d!1222016 (= (size!33009 p!2912) lt!1470868)))

(declare-fun b!4122607 () Bool)

(assert (=> b!4122607 (= e!2558084 0)))

(declare-fun b!4122608 () Bool)

(assert (=> b!4122608 (= e!2558084 (+ 1 (size!33009 (t!340823 p!2912))))))

(assert (= (and d!1222016 c!707778) b!4122607))

(assert (= (and d!1222016 (not c!707778)) b!4122608))

(declare-fun m!4721735 () Bool)

(assert (=> b!4122608 m!4721735))

(assert (=> b!4122101 d!1222016))

(declare-fun b!4122609 () Bool)

(declare-fun e!2558085 () Bool)

(declare-fun e!2558086 () Bool)

(assert (=> b!4122609 (= e!2558085 e!2558086)))

(declare-fun res!1684608 () Bool)

(assert (=> b!4122609 (=> (not res!1684608) (not e!2558086))))

(assert (=> b!4122609 (= res!1684608 (not ((_ is Nil!44588) input!3238)))))

(declare-fun d!1222018 () Bool)

(declare-fun e!2558087 () Bool)

(assert (=> d!1222018 e!2558087))

(declare-fun res!1684606 () Bool)

(assert (=> d!1222018 (=> res!1684606 e!2558087)))

(declare-fun lt!1470869 () Bool)

(assert (=> d!1222018 (= res!1684606 (not lt!1470869))))

(assert (=> d!1222018 (= lt!1470869 e!2558085)))

(declare-fun res!1684607 () Bool)

(assert (=> d!1222018 (=> res!1684607 e!2558085)))

(assert (=> d!1222018 (= res!1684607 ((_ is Nil!44588) p!2912))))

(assert (=> d!1222018 (= (isPrefix!4221 p!2912 input!3238) lt!1470869)))

(declare-fun b!4122612 () Bool)

(assert (=> b!4122612 (= e!2558087 (>= (size!33009 input!3238) (size!33009 p!2912)))))

(declare-fun b!4122611 () Bool)

(assert (=> b!4122611 (= e!2558086 (isPrefix!4221 (tail!6447 p!2912) (tail!6447 input!3238)))))

(declare-fun b!4122610 () Bool)

(declare-fun res!1684605 () Bool)

(assert (=> b!4122610 (=> (not res!1684605) (not e!2558086))))

(assert (=> b!4122610 (= res!1684605 (= (head!8684 p!2912) (head!8684 input!3238)))))

(assert (= (and d!1222018 (not res!1684607)) b!4122609))

(assert (= (and b!4122609 res!1684608) b!4122610))

(assert (= (and b!4122610 res!1684605) b!4122611))

(assert (= (and d!1222018 (not res!1684606)) b!4122612))

(assert (=> b!4122612 m!4721415))

(assert (=> b!4122612 m!4721225))

(assert (=> b!4122611 m!4721393))

(assert (=> b!4122611 m!4721697))

(assert (=> b!4122611 m!4721393))

(assert (=> b!4122611 m!4721697))

(declare-fun m!4721737 () Bool)

(assert (=> b!4122611 m!4721737))

(assert (=> b!4122610 m!4721399))

(declare-fun m!4721739 () Bool)

(assert (=> b!4122610 m!4721739))

(assert (=> b!4122100 d!1222018))

(declare-fun d!1222020 () Bool)

(assert (=> d!1222020 (= (inv!59168 (tag!8146 r!4008)) (= (mod (str.len (value!228204 (tag!8146 r!4008))) 2) 0))))

(assert (=> b!4122099 d!1222020))

(declare-fun d!1222022 () Bool)

(declare-fun res!1684609 () Bool)

(declare-fun e!2558088 () Bool)

(assert (=> d!1222022 (=> (not res!1684609) (not e!2558088))))

(assert (=> d!1222022 (= res!1684609 (semiInverseModEq!3138 (toChars!9797 (transformation!7286 r!4008)) (toValue!9938 (transformation!7286 r!4008))))))

(assert (=> d!1222022 (= (inv!59170 (transformation!7286 r!4008)) e!2558088)))

(declare-fun b!4122613 () Bool)

(assert (=> b!4122613 (= e!2558088 (equivClasses!3037 (toChars!9797 (transformation!7286 r!4008)) (toValue!9938 (transformation!7286 r!4008))))))

(assert (= (and d!1222022 res!1684609) b!4122613))

(declare-fun m!4721741 () Bool)

(assert (=> d!1222022 m!4721741))

(declare-fun m!4721743 () Bool)

(assert (=> b!4122613 m!4721743))

(assert (=> b!4122099 d!1222022))

(declare-fun b!4122614 () Bool)

(declare-fun e!2558092 () Bool)

(assert (=> b!4122614 (= e!2558092 (matchR!6022 (derivativeStep!3671 (regex!7286 r!4008) (head!8684 p!2912)) (tail!6447 p!2912)))))

(declare-fun b!4122615 () Bool)

(declare-fun e!2558094 () Bool)

(declare-fun e!2558093 () Bool)

(assert (=> b!4122615 (= e!2558094 e!2558093)))

(declare-fun res!1684615 () Bool)

(assert (=> b!4122615 (=> (not res!1684615) (not e!2558093))))

(declare-fun lt!1470870 () Bool)

(assert (=> b!4122615 (= res!1684615 (not lt!1470870))))

(declare-fun b!4122616 () Bool)

(declare-fun e!2558089 () Bool)

(assert (=> b!4122616 (= e!2558089 (= (head!8684 p!2912) (c!707697 (regex!7286 r!4008))))))

(declare-fun b!4122617 () Bool)

(declare-fun e!2558090 () Bool)

(assert (=> b!4122617 (= e!2558093 e!2558090)))

(declare-fun res!1684610 () Bool)

(assert (=> b!4122617 (=> res!1684610 e!2558090)))

(declare-fun call!289998 () Bool)

(assert (=> b!4122617 (= res!1684610 call!289998)))

(declare-fun b!4122618 () Bool)

(assert (=> b!4122618 (= e!2558092 (nullable!4276 (regex!7286 r!4008)))))

(declare-fun b!4122619 () Bool)

(declare-fun e!2558091 () Bool)

(assert (=> b!4122619 (= e!2558091 (not lt!1470870))))

(declare-fun d!1222024 () Bool)

(declare-fun e!2558095 () Bool)

(assert (=> d!1222024 e!2558095))

(declare-fun c!707780 () Bool)

(assert (=> d!1222024 (= c!707780 ((_ is EmptyExpr!12191) (regex!7286 r!4008)))))

(assert (=> d!1222024 (= lt!1470870 e!2558092)))

(declare-fun c!707779 () Bool)

(assert (=> d!1222024 (= c!707779 (isEmpty!26534 p!2912))))

(assert (=> d!1222024 (validRegex!5482 (regex!7286 r!4008))))

(assert (=> d!1222024 (= (matchR!6022 (regex!7286 r!4008) p!2912) lt!1470870)))

(declare-fun b!4122620 () Bool)

(assert (=> b!4122620 (= e!2558095 (= lt!1470870 call!289998))))

(declare-fun b!4122621 () Bool)

(declare-fun res!1684612 () Bool)

(assert (=> b!4122621 (=> res!1684612 e!2558094)))

(assert (=> b!4122621 (= res!1684612 (not ((_ is ElementMatch!12191) (regex!7286 r!4008))))))

(assert (=> b!4122621 (= e!2558091 e!2558094)))

(declare-fun b!4122622 () Bool)

(declare-fun res!1684611 () Bool)

(assert (=> b!4122622 (=> res!1684611 e!2558090)))

(assert (=> b!4122622 (= res!1684611 (not (isEmpty!26534 (tail!6447 p!2912))))))

(declare-fun b!4122623 () Bool)

(declare-fun res!1684616 () Bool)

(assert (=> b!4122623 (=> res!1684616 e!2558094)))

(assert (=> b!4122623 (= res!1684616 e!2558089)))

(declare-fun res!1684614 () Bool)

(assert (=> b!4122623 (=> (not res!1684614) (not e!2558089))))

(assert (=> b!4122623 (= res!1684614 lt!1470870)))

(declare-fun bm!289993 () Bool)

(assert (=> bm!289993 (= call!289998 (isEmpty!26534 p!2912))))

(declare-fun b!4122624 () Bool)

(declare-fun res!1684617 () Bool)

(assert (=> b!4122624 (=> (not res!1684617) (not e!2558089))))

(assert (=> b!4122624 (= res!1684617 (isEmpty!26534 (tail!6447 p!2912)))))

(declare-fun b!4122625 () Bool)

(assert (=> b!4122625 (= e!2558090 (not (= (head!8684 p!2912) (c!707697 (regex!7286 r!4008)))))))

(declare-fun b!4122626 () Bool)

(declare-fun res!1684613 () Bool)

(assert (=> b!4122626 (=> (not res!1684613) (not e!2558089))))

(assert (=> b!4122626 (= res!1684613 (not call!289998))))

(declare-fun b!4122627 () Bool)

(assert (=> b!4122627 (= e!2558095 e!2558091)))

(declare-fun c!707781 () Bool)

(assert (=> b!4122627 (= c!707781 ((_ is EmptyLang!12191) (regex!7286 r!4008)))))

(assert (= (and d!1222024 c!707779) b!4122618))

(assert (= (and d!1222024 (not c!707779)) b!4122614))

(assert (= (and d!1222024 c!707780) b!4122620))

(assert (= (and d!1222024 (not c!707780)) b!4122627))

(assert (= (and b!4122627 c!707781) b!4122619))

(assert (= (and b!4122627 (not c!707781)) b!4122621))

(assert (= (and b!4122621 (not res!1684612)) b!4122623))

(assert (= (and b!4122623 res!1684614) b!4122626))

(assert (= (and b!4122626 res!1684613) b!4122624))

(assert (= (and b!4122624 res!1684617) b!4122616))

(assert (= (and b!4122623 (not res!1684616)) b!4122615))

(assert (= (and b!4122615 res!1684615) b!4122617))

(assert (= (and b!4122617 (not res!1684610)) b!4122622))

(assert (= (and b!4122622 (not res!1684611)) b!4122625))

(assert (= (or b!4122620 b!4122617 b!4122626) bm!289993))

(assert (=> b!4122624 m!4721393))

(assert (=> b!4122624 m!4721393))

(assert (=> b!4122624 m!4721395))

(assert (=> b!4122618 m!4721407))

(assert (=> bm!289993 m!4721241))

(assert (=> b!4122622 m!4721393))

(assert (=> b!4122622 m!4721393))

(assert (=> b!4122622 m!4721395))

(assert (=> b!4122614 m!4721399))

(assert (=> b!4122614 m!4721399))

(declare-fun m!4721745 () Bool)

(assert (=> b!4122614 m!4721745))

(assert (=> b!4122614 m!4721393))

(assert (=> b!4122614 m!4721745))

(assert (=> b!4122614 m!4721393))

(declare-fun m!4721747 () Bool)

(assert (=> b!4122614 m!4721747))

(assert (=> b!4122616 m!4721399))

(assert (=> b!4122625 m!4721399))

(assert (=> d!1222024 m!4721241))

(assert (=> d!1222024 m!4721405))

(assert (=> b!4122098 d!1222024))

(declare-fun b!4122638 () Bool)

(declare-fun e!2558098 () Bool)

(assert (=> b!4122638 (= e!2558098 tp_is_empty!21305)))

(declare-fun b!4122639 () Bool)

(declare-fun tp!1256254 () Bool)

(declare-fun tp!1256257 () Bool)

(assert (=> b!4122639 (= e!2558098 (and tp!1256254 tp!1256257))))

(declare-fun b!4122641 () Bool)

(declare-fun tp!1256255 () Bool)

(declare-fun tp!1256256 () Bool)

(assert (=> b!4122641 (= e!2558098 (and tp!1256255 tp!1256256))))

(assert (=> b!4122113 (= tp!1256188 e!2558098)))

(declare-fun b!4122640 () Bool)

(declare-fun tp!1256258 () Bool)

(assert (=> b!4122640 (= e!2558098 tp!1256258)))

(assert (= (and b!4122113 ((_ is ElementMatch!12191) (regex!7286 (h!50009 rules!3756)))) b!4122638))

(assert (= (and b!4122113 ((_ is Concat!19708) (regex!7286 (h!50009 rules!3756)))) b!4122639))

(assert (= (and b!4122113 ((_ is Star!12191) (regex!7286 (h!50009 rules!3756)))) b!4122640))

(assert (= (and b!4122113 ((_ is Union!12191) (regex!7286 (h!50009 rules!3756)))) b!4122641))

(declare-fun b!4122646 () Bool)

(declare-fun e!2558101 () Bool)

(declare-fun tp!1256261 () Bool)

(assert (=> b!4122646 (= e!2558101 (and tp_is_empty!21305 tp!1256261))))

(assert (=> b!4122107 (= tp!1256192 e!2558101)))

(assert (= (and b!4122107 ((_ is Cons!44588) (t!340823 input!3238))) b!4122646))

(declare-fun b!4122657 () Bool)

(declare-fun b_free!116635 () Bool)

(declare-fun b_next!117339 () Bool)

(assert (=> b!4122657 (= b_free!116635 (not b_next!117339))))

(declare-fun t!340871 () Bool)

(declare-fun tb!247377 () Bool)

(assert (=> (and b!4122657 (= (toValue!9938 (transformation!7286 (h!50009 (t!340824 rules!3756)))) (toValue!9938 (transformation!7286 r!4008))) t!340871) tb!247377))

(declare-fun result!300562 () Bool)

(assert (= result!300562 result!300516))

(assert (=> d!1221948 t!340871))

(assert (=> d!1221950 t!340871))

(declare-fun b_and!318981 () Bool)

(declare-fun tp!1256270 () Bool)

(assert (=> b!4122657 (= tp!1256270 (and (=> t!340871 result!300562) b_and!318981))))

(declare-fun b_free!116637 () Bool)

(declare-fun b_next!117341 () Bool)

(assert (=> b!4122657 (= b_free!116637 (not b_next!117341))))

(declare-fun t!340873 () Bool)

(declare-fun tb!247379 () Bool)

(assert (=> (and b!4122657 (= (toChars!9797 (transformation!7286 (h!50009 (t!340824 rules!3756)))) (toChars!9797 (transformation!7286 (rule!10362 (_1!24659 lt!1470707))))) t!340873) tb!247379))

(declare-fun result!300564 () Bool)

(assert (= result!300564 result!300508))

(assert (=> d!1221870 t!340873))

(declare-fun t!340875 () Bool)

(declare-fun tb!247381 () Bool)

(assert (=> (and b!4122657 (= (toChars!9797 (transformation!7286 (h!50009 (t!340824 rules!3756)))) (toChars!9797 (transformation!7286 r!4008))) t!340875) tb!247381))

(declare-fun result!300566 () Bool)

(assert (= result!300566 result!300550))

(assert (=> d!1221950 t!340875))

(declare-fun b_and!318983 () Bool)

(declare-fun tp!1256273 () Bool)

(assert (=> b!4122657 (= tp!1256273 (and (=> t!340873 result!300564) (=> t!340875 result!300566) b_and!318983))))

(declare-fun e!2558113 () Bool)

(assert (=> b!4122657 (= e!2558113 (and tp!1256270 tp!1256273))))

(declare-fun b!4122656 () Bool)

(declare-fun e!2558110 () Bool)

(declare-fun tp!1256272 () Bool)

(assert (=> b!4122656 (= e!2558110 (and tp!1256272 (inv!59168 (tag!8146 (h!50009 (t!340824 rules!3756)))) (inv!59170 (transformation!7286 (h!50009 (t!340824 rules!3756)))) e!2558113))))

(declare-fun b!4122655 () Bool)

(declare-fun e!2558111 () Bool)

(declare-fun tp!1256271 () Bool)

(assert (=> b!4122655 (= e!2558111 (and e!2558110 tp!1256271))))

(assert (=> b!4122112 (= tp!1256187 e!2558111)))

(assert (= b!4122656 b!4122657))

(assert (= b!4122655 b!4122656))

(assert (= (and b!4122112 ((_ is Cons!44589) (t!340824 rules!3756))) b!4122655))

(declare-fun m!4721749 () Bool)

(assert (=> b!4122656 m!4721749))

(declare-fun m!4721751 () Bool)

(assert (=> b!4122656 m!4721751))

(declare-fun b!4122658 () Bool)

(declare-fun e!2558114 () Bool)

(assert (=> b!4122658 (= e!2558114 tp_is_empty!21305)))

(declare-fun b!4122659 () Bool)

(declare-fun tp!1256274 () Bool)

(declare-fun tp!1256277 () Bool)

(assert (=> b!4122659 (= e!2558114 (and tp!1256274 tp!1256277))))

(declare-fun b!4122661 () Bool)

(declare-fun tp!1256275 () Bool)

(declare-fun tp!1256276 () Bool)

(assert (=> b!4122661 (= e!2558114 (and tp!1256275 tp!1256276))))

(assert (=> b!4122115 (= tp!1256184 e!2558114)))

(declare-fun b!4122660 () Bool)

(declare-fun tp!1256278 () Bool)

(assert (=> b!4122660 (= e!2558114 tp!1256278)))

(assert (= (and b!4122115 ((_ is ElementMatch!12191) (regex!7286 rBis!149))) b!4122658))

(assert (= (and b!4122115 ((_ is Concat!19708) (regex!7286 rBis!149))) b!4122659))

(assert (= (and b!4122115 ((_ is Star!12191) (regex!7286 rBis!149))) b!4122660))

(assert (= (and b!4122115 ((_ is Union!12191) (regex!7286 rBis!149))) b!4122661))

(declare-fun b!4122662 () Bool)

(declare-fun e!2558115 () Bool)

(assert (=> b!4122662 (= e!2558115 tp_is_empty!21305)))

(declare-fun b!4122663 () Bool)

(declare-fun tp!1256279 () Bool)

(declare-fun tp!1256282 () Bool)

(assert (=> b!4122663 (= e!2558115 (and tp!1256279 tp!1256282))))

(declare-fun b!4122665 () Bool)

(declare-fun tp!1256280 () Bool)

(declare-fun tp!1256281 () Bool)

(assert (=> b!4122665 (= e!2558115 (and tp!1256280 tp!1256281))))

(assert (=> b!4122099 (= tp!1256185 e!2558115)))

(declare-fun b!4122664 () Bool)

(declare-fun tp!1256283 () Bool)

(assert (=> b!4122664 (= e!2558115 tp!1256283)))

(assert (= (and b!4122099 ((_ is ElementMatch!12191) (regex!7286 r!4008))) b!4122662))

(assert (= (and b!4122099 ((_ is Concat!19708) (regex!7286 r!4008))) b!4122663))

(assert (= (and b!4122099 ((_ is Star!12191) (regex!7286 r!4008))) b!4122664))

(assert (= (and b!4122099 ((_ is Union!12191) (regex!7286 r!4008))) b!4122665))

(declare-fun b!4122666 () Bool)

(declare-fun e!2558116 () Bool)

(declare-fun tp!1256284 () Bool)

(assert (=> b!4122666 (= e!2558116 (and tp_is_empty!21305 tp!1256284))))

(assert (=> b!4122114 (= tp!1256194 e!2558116)))

(assert (= (and b!4122114 ((_ is Cons!44588) (t!340823 p!2912))) b!4122666))

(declare-fun b_lambda!120969 () Bool)

(assert (= b_lambda!120951 (or (and b!4122109 b_free!116619) (and b!4122110 b_free!116623 (= (toValue!9938 (transformation!7286 (h!50009 rules!3756))) (toValue!9938 (transformation!7286 r!4008)))) (and b!4122111 b_free!116627 (= (toValue!9938 (transformation!7286 rBis!149)) (toValue!9938 (transformation!7286 r!4008)))) (and b!4122657 b_free!116635 (= (toValue!9938 (transformation!7286 (h!50009 (t!340824 rules!3756)))) (toValue!9938 (transformation!7286 r!4008)))) b_lambda!120969)))

(declare-fun b_lambda!120971 () Bool)

(assert (= b_lambda!120965 (or (and b!4122109 b_free!116621) (and b!4122110 b_free!116625 (= (toChars!9797 (transformation!7286 (h!50009 rules!3756))) (toChars!9797 (transformation!7286 r!4008)))) (and b!4122111 b_free!116629 (= (toChars!9797 (transformation!7286 rBis!149)) (toChars!9797 (transformation!7286 r!4008)))) (and b!4122657 b_free!116637 (= (toChars!9797 (transformation!7286 (h!50009 (t!340824 rules!3756)))) (toChars!9797 (transformation!7286 r!4008)))) b_lambda!120971)))

(declare-fun b_lambda!120973 () Bool)

(assert (= b_lambda!120967 (or (and b!4122109 b_free!116619) (and b!4122110 b_free!116623 (= (toValue!9938 (transformation!7286 (h!50009 rules!3756))) (toValue!9938 (transformation!7286 r!4008)))) (and b!4122111 b_free!116627 (= (toValue!9938 (transformation!7286 rBis!149)) (toValue!9938 (transformation!7286 r!4008)))) (and b!4122657 b_free!116635 (= (toValue!9938 (transformation!7286 (h!50009 (t!340824 rules!3756)))) (toValue!9938 (transformation!7286 r!4008)))) b_lambda!120973)))

(check-sat (not b!4122659) (not b!4122614) (not d!1221906) (not d!1222010) (not b!4122595) (not b!4122625) (not b!4122285) (not d!1221920) (not b!4122341) (not tb!247347) (not b_next!117339) (not d!1221912) (not b!4122600) (not b!4122281) (not b!4122319) (not tb!247341) (not b!4122618) (not b!4122308) (not b!4122347) (not b!4122598) (not b!4122337) b_and!318977 (not d!1222022) (not b!4122305) (not d!1221864) (not d!1221914) (not b!4122209) (not b!4122666) (not b!4122641) (not b_next!117327) (not b!4122612) (not d!1221900) (not b!4122574) (not b!4122639) (not b!4122344) (not d!1221944) (not bm!289976) (not bm!289973) (not b!4122311) (not d!1221930) (not b!4122655) (not d!1221950) (not b!4122601) (not bm!289972) (not b_next!117341) (not b!4122263) (not b!4122610) (not b!4122613) (not d!1221946) (not b!4122664) (not b!4122661) (not b!4122665) (not b!4122345) (not b!4122622) (not d!1221878) (not d!1221880) b_and!318983 (not b!4122309) (not b!4122660) (not b!4122271) b_and!318971 (not b!4122596) (not bm!289993) (not b!4122333) (not tb!247371) (not b!4122143) b_and!318979 (not b!4122265) (not b!4122616) (not b!4122599) tp_is_empty!21305 (not b_next!117323) (not b_lambda!120971) (not d!1221936) (not d!1221870) (not b!4122310) (not b_lambda!120969) (not b!4122318) b_and!318969 (not d!1221928) (not b!4122569) (not d!1221922) b_and!318981 (not d!1221924) (not b_next!117331) (not b_lambda!120973) (not b!4122611) (not b_lambda!120949) b_and!318973 (not b!4122234) (not b!4122312) (not b_next!117333) (not d!1221916) (not d!1222012) (not b!4122656) (not b!4122663) (not b!4122274) (not d!1221904) (not b!4122646) (not b!4122597) (not b!4122232) (not b!4122304) (not b!4122624) (not b!4122220) (not b!4122640) (not b!4122233) (not d!1222014) (not d!1221938) (not b!4122273) (not b!4122608) (not b!4122267) (not b_next!117329) (not b!4122602) (not d!1221926) (not b!4122221) (not b_next!117325) (not d!1222024) (not b!4122306) (not bm!289992) (not d!1221910) b_and!318975 (not b!4122322) (not d!1221898))
(check-sat (not b_next!117339) b_and!318977 (not b_next!117327) (not b_next!117341) b_and!318983 b_and!318971 b_and!318979 (not b_next!117323) b_and!318969 b_and!318981 (not b_next!117331) b_and!318973 (not b_next!117333) (not b_next!117329) (not b_next!117325) b_and!318975)
