; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!378432 () Bool)

(assert start!378432)

(declare-fun b!4018318 () Bool)

(declare-fun b_free!111793 () Bool)

(declare-fun b_next!112497 () Bool)

(assert (=> b!4018318 (= b_free!111793 (not b_next!112497))))

(declare-fun tp!1221652 () Bool)

(declare-fun b_and!308695 () Bool)

(assert (=> b!4018318 (= tp!1221652 b_and!308695)))

(declare-fun b_free!111795 () Bool)

(declare-fun b_next!112499 () Bool)

(assert (=> b!4018318 (= b_free!111795 (not b_next!112499))))

(declare-fun tp!1221664 () Bool)

(declare-fun b_and!308697 () Bool)

(assert (=> b!4018318 (= tp!1221664 b_and!308697)))

(declare-fun b!4018292 () Bool)

(declare-fun b_free!111797 () Bool)

(declare-fun b_next!112501 () Bool)

(assert (=> b!4018292 (= b_free!111797 (not b_next!112501))))

(declare-fun tp!1221656 () Bool)

(declare-fun b_and!308699 () Bool)

(assert (=> b!4018292 (= tp!1221656 b_and!308699)))

(declare-fun b_free!111799 () Bool)

(declare-fun b_next!112503 () Bool)

(assert (=> b!4018292 (= b_free!111799 (not b_next!112503))))

(declare-fun tp!1221663 () Bool)

(declare-fun b_and!308701 () Bool)

(assert (=> b!4018292 (= tp!1221663 b_and!308701)))

(declare-fun b!4018282 () Bool)

(declare-fun e!2492474 () Bool)

(declare-fun e!2492450 () Bool)

(assert (=> b!4018282 (= e!2492474 e!2492450)))

(declare-fun res!1634634 () Bool)

(assert (=> b!4018282 (=> res!1634634 e!2492450)))

(declare-datatypes ((C!23700 0))(
  ( (C!23701 (val!13944 Int)) )
))
(declare-datatypes ((List!43130 0))(
  ( (Nil!43006) (Cons!43006 (h!48426 C!23700) (t!333463 List!43130)) )
))
(declare-datatypes ((IArray!26131 0))(
  ( (IArray!26132 (innerList!13123 List!43130)) )
))
(declare-datatypes ((Conc!13063 0))(
  ( (Node!13063 (left!32423 Conc!13063) (right!32753 Conc!13063) (csize!26356 Int) (cheight!13274 Int)) (Leaf!20196 (xs!16369 IArray!26131) (csize!26357 Int)) (Empty!13063) )
))
(declare-datatypes ((BalanceConc!25720 0))(
  ( (BalanceConc!25721 (c!694468 Conc!13063)) )
))
(declare-datatypes ((List!43131 0))(
  ( (Nil!43007) (Cons!43007 (h!48427 (_ BitVec 16)) (t!333464 List!43131)) )
))
(declare-datatypes ((TokenValue!7082 0))(
  ( (FloatLiteralValue!14164 (text!50019 List!43131)) (TokenValueExt!7081 (__x!26381 Int)) (Broken!35410 (value!215890 List!43131)) (Object!7205) (End!7082) (Def!7082) (Underscore!7082) (Match!7082) (Else!7082) (Error!7082) (Case!7082) (If!7082) (Extends!7082) (Abstract!7082) (Class!7082) (Val!7082) (DelimiterValue!14164 (del!7142 List!43131)) (KeywordValue!7088 (value!215891 List!43131)) (CommentValue!14164 (value!215892 List!43131)) (WhitespaceValue!14164 (value!215893 List!43131)) (IndentationValue!7082 (value!215894 List!43131)) (String!49127) (Int32!7082) (Broken!35411 (value!215895 List!43131)) (Boolean!7083) (Unit!62087) (OperatorValue!7085 (op!7142 List!43131)) (IdentifierValue!14164 (value!215896 List!43131)) (IdentifierValue!14165 (value!215897 List!43131)) (WhitespaceValue!14165 (value!215898 List!43131)) (True!14164) (False!14164) (Broken!35412 (value!215899 List!43131)) (Broken!35413 (value!215900 List!43131)) (True!14165) (RightBrace!7082) (RightBracket!7082) (Colon!7082) (Null!7082) (Comma!7082) (LeftBracket!7082) (False!14165) (LeftBrace!7082) (ImaginaryLiteralValue!7082 (text!50020 List!43131)) (StringLiteralValue!21246 (value!215901 List!43131)) (EOFValue!7082 (value!215902 List!43131)) (IdentValue!7082 (value!215903 List!43131)) (DelimiterValue!14165 (value!215904 List!43131)) (DedentValue!7082 (value!215905 List!43131)) (NewLineValue!7082 (value!215906 List!43131)) (IntegerValue!21246 (value!215907 (_ BitVec 32)) (text!50021 List!43131)) (IntegerValue!21247 (value!215908 Int) (text!50022 List!43131)) (Times!7082) (Or!7082) (Equal!7082) (Minus!7082) (Broken!35414 (value!215909 List!43131)) (And!7082) (Div!7082) (LessEqual!7082) (Mod!7082) (Concat!18839) (Not!7082) (Plus!7082) (SpaceValue!7082 (value!215910 List!43131)) (IntegerValue!21248 (value!215911 Int) (text!50023 List!43131)) (StringLiteralValue!21247 (text!50024 List!43131)) (FloatLiteralValue!14165 (text!50025 List!43131)) (BytesLiteralValue!7082 (value!215912 List!43131)) (CommentValue!14165 (value!215913 List!43131)) (StringLiteralValue!21248 (value!215914 List!43131)) (ErrorTokenValue!7082 (msg!7143 List!43131)) )
))
(declare-datatypes ((Regex!11757 0))(
  ( (ElementMatch!11757 (c!694469 C!23700)) (Concat!18840 (regOne!24026 Regex!11757) (regTwo!24026 Regex!11757)) (EmptyExpr!11757) (Star!11757 (reg!12086 Regex!11757)) (EmptyLang!11757) (Union!11757 (regOne!24027 Regex!11757) (regTwo!24027 Regex!11757)) )
))
(declare-datatypes ((String!49128 0))(
  ( (String!49129 (value!215915 String)) )
))
(declare-datatypes ((TokenValueInjection!13592 0))(
  ( (TokenValueInjection!13593 (toValue!9360 Int) (toChars!9219 Int)) )
))
(declare-datatypes ((Rule!13504 0))(
  ( (Rule!13505 (regex!6852 Regex!11757) (tag!7712 String!49128) (isSeparator!6852 Bool) (transformation!6852 TokenValueInjection!13592)) )
))
(declare-datatypes ((Token!12842 0))(
  ( (Token!12843 (value!215916 TokenValue!7082) (rule!9904 Rule!13504) (size!32155 Int) (originalCharacters!7452 List!43130)) )
))
(declare-fun token!484 () Token!12842)

(declare-fun lt!1425729 () List!43130)

(declare-fun matchR!5718 (Regex!11757 List!43130) Bool)

(assert (=> b!4018282 (= res!1634634 (not (matchR!5718 (regex!6852 (rule!9904 token!484)) lt!1425729)))))

(declare-fun lt!1425736 () List!43130)

(declare-fun isPrefix!3939 (List!43130 List!43130) Bool)

(assert (=> b!4018282 (isPrefix!3939 lt!1425729 lt!1425736)))

(declare-fun prefix!494 () List!43130)

(declare-fun newSuffix!27 () List!43130)

(declare-datatypes ((Unit!62088 0))(
  ( (Unit!62089) )
))
(declare-fun lt!1425718 () Unit!62088)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!752 (List!43130 List!43130 List!43130) Unit!62088)

(assert (=> b!4018282 (= lt!1425718 (lemmaPrefixStaysPrefixWhenAddingToSuffix!752 lt!1425729 prefix!494 newSuffix!27))))

(declare-fun lt!1425705 () Unit!62088)

(declare-fun suffix!1299 () List!43130)

(assert (=> b!4018282 (= lt!1425705 (lemmaPrefixStaysPrefixWhenAddingToSuffix!752 lt!1425729 prefix!494 suffix!1299))))

(declare-fun b!4018283 () Bool)

(declare-fun e!2492443 () Bool)

(declare-fun e!2492470 () Bool)

(assert (=> b!4018283 (= e!2492443 e!2492470)))

(declare-fun res!1634626 () Bool)

(assert (=> b!4018283 (=> res!1634626 e!2492470)))

(declare-fun lt!1425726 () List!43130)

(declare-fun lt!1425749 () List!43130)

(declare-fun lt!1425746 () List!43130)

(assert (=> b!4018283 (= res!1634626 (or (not (= lt!1425746 lt!1425726)) (not (= lt!1425746 lt!1425749))))))

(assert (=> b!4018283 (= lt!1425726 lt!1425749)))

(declare-fun lt!1425750 () List!43130)

(declare-fun ++!11254 (List!43130 List!43130) List!43130)

(assert (=> b!4018283 (= lt!1425749 (++!11254 lt!1425729 lt!1425750))))

(declare-fun lt!1425693 () List!43130)

(assert (=> b!4018283 (= lt!1425726 (++!11254 lt!1425693 suffix!1299))))

(declare-fun lt!1425702 () List!43130)

(assert (=> b!4018283 (= lt!1425750 (++!11254 lt!1425702 suffix!1299))))

(declare-fun lt!1425708 () Unit!62088)

(declare-fun lemmaConcatAssociativity!2564 (List!43130 List!43130 List!43130) Unit!62088)

(assert (=> b!4018283 (= lt!1425708 (lemmaConcatAssociativity!2564 lt!1425729 lt!1425702 suffix!1299))))

(declare-fun b!4018284 () Bool)

(declare-fun e!2492456 () Bool)

(declare-fun e!2492445 () Bool)

(assert (=> b!4018284 (= e!2492456 e!2492445)))

(declare-fun res!1634636 () Bool)

(assert (=> b!4018284 (=> (not res!1634636) (not e!2492445))))

(declare-datatypes ((LexerInterface!6441 0))(
  ( (LexerInterfaceExt!6438 (__x!26382 Int)) (Lexer!6439) )
))
(declare-fun thiss!21717 () LexerInterface!6441)

(declare-datatypes ((List!43132 0))(
  ( (Nil!43008) (Cons!43008 (h!48428 Rule!13504) (t!333465 List!43132)) )
))
(declare-fun rules!2999 () List!43132)

(declare-datatypes ((tuple2!42142 0))(
  ( (tuple2!42143 (_1!24205 Token!12842) (_2!24205 List!43130)) )
))
(declare-datatypes ((Option!9266 0))(
  ( (None!9265) (Some!9265 (v!39639 tuple2!42142)) )
))
(declare-fun lt!1425727 () Option!9266)

(declare-fun maxPrefix!3739 (LexerInterface!6441 List!43132 List!43130) Option!9266)

(assert (=> b!4018284 (= res!1634636 (= (maxPrefix!3739 thiss!21717 rules!2999 lt!1425746) lt!1425727))))

(declare-fun lt!1425741 () tuple2!42142)

(assert (=> b!4018284 (= lt!1425727 (Some!9265 lt!1425741))))

(declare-fun suffixResult!105 () List!43130)

(assert (=> b!4018284 (= lt!1425741 (tuple2!42143 token!484 suffixResult!105))))

(assert (=> b!4018284 (= lt!1425746 (++!11254 prefix!494 suffix!1299))))

(declare-fun b!4018285 () Bool)

(declare-fun e!2492475 () Bool)

(assert (=> b!4018285 (= e!2492475 false)))

(declare-fun tp!1221658 () Bool)

(declare-fun e!2492463 () Bool)

(declare-fun b!4018286 () Bool)

(declare-fun e!2492457 () Bool)

(declare-fun inv!57441 (String!49128) Bool)

(declare-fun inv!57444 (TokenValueInjection!13592) Bool)

(assert (=> b!4018286 (= e!2492463 (and tp!1221658 (inv!57441 (tag!7712 (rule!9904 token!484))) (inv!57444 (transformation!6852 (rule!9904 token!484))) e!2492457))))

(declare-fun b!4018287 () Bool)

(declare-fun e!2492459 () Bool)

(declare-fun e!2492476 () Bool)

(assert (=> b!4018287 (= e!2492459 e!2492476)))

(declare-fun res!1634622 () Bool)

(assert (=> b!4018287 (=> res!1634622 e!2492476)))

(declare-fun lt!1425734 () Option!9266)

(declare-fun lt!1425742 () Option!9266)

(assert (=> b!4018287 (= res!1634622 (not (= lt!1425734 (Some!9265 (v!39639 lt!1425742)))))))

(declare-fun lt!1425733 () List!43130)

(declare-fun newSuffixResult!27 () List!43130)

(assert (=> b!4018287 (isPrefix!3939 lt!1425733 (++!11254 lt!1425733 newSuffixResult!27))))

(declare-fun lt!1425715 () Unit!62088)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2780 (List!43130 List!43130) Unit!62088)

(assert (=> b!4018287 (= lt!1425715 (lemmaConcatTwoListThenFirstIsPrefix!2780 lt!1425733 newSuffixResult!27))))

(declare-fun lt!1425704 () List!43130)

(assert (=> b!4018287 (isPrefix!3939 lt!1425733 lt!1425704)))

(assert (=> b!4018287 (= lt!1425704 (++!11254 lt!1425733 (_2!24205 (v!39639 lt!1425742))))))

(declare-fun lt!1425739 () Unit!62088)

(assert (=> b!4018287 (= lt!1425739 (lemmaConcatTwoListThenFirstIsPrefix!2780 lt!1425733 (_2!24205 (v!39639 lt!1425742))))))

(declare-fun lt!1425720 () TokenValue!7082)

(declare-fun lt!1425697 () Int)

(assert (=> b!4018287 (= lt!1425734 (Some!9265 (tuple2!42143 (Token!12843 lt!1425720 (rule!9904 (_1!24205 (v!39639 lt!1425742))) lt!1425697 lt!1425733) (_2!24205 (v!39639 lt!1425742)))))))

(declare-fun maxPrefixOneRule!2759 (LexerInterface!6441 Rule!13504 List!43130) Option!9266)

(assert (=> b!4018287 (= lt!1425734 (maxPrefixOneRule!2759 thiss!21717 (rule!9904 (_1!24205 (v!39639 lt!1425742))) lt!1425736))))

(declare-fun size!32156 (List!43130) Int)

(assert (=> b!4018287 (= lt!1425697 (size!32156 lt!1425733))))

(declare-fun apply!10049 (TokenValueInjection!13592 BalanceConc!25720) TokenValue!7082)

(declare-fun seqFromList!5077 (List!43130) BalanceConc!25720)

(assert (=> b!4018287 (= lt!1425720 (apply!10049 (transformation!6852 (rule!9904 (_1!24205 (v!39639 lt!1425742)))) (seqFromList!5077 lt!1425733)))))

(declare-fun lt!1425709 () Unit!62088)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1577 (LexerInterface!6441 List!43132 List!43130 List!43130 List!43130 Rule!13504) Unit!62088)

(assert (=> b!4018287 (= lt!1425709 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1577 thiss!21717 rules!2999 lt!1425733 lt!1425736 (_2!24205 (v!39639 lt!1425742)) (rule!9904 (_1!24205 (v!39639 lt!1425742)))))))

(declare-fun list!15988 (BalanceConc!25720) List!43130)

(declare-fun charsOf!4668 (Token!12842) BalanceConc!25720)

(assert (=> b!4018287 (= lt!1425733 (list!15988 (charsOf!4668 (_1!24205 (v!39639 lt!1425742)))))))

(declare-fun lt!1425751 () Unit!62088)

(declare-fun lemmaInv!1067 (TokenValueInjection!13592) Unit!62088)

(assert (=> b!4018287 (= lt!1425751 (lemmaInv!1067 (transformation!6852 (rule!9904 (_1!24205 (v!39639 lt!1425742))))))))

(declare-fun ruleValid!2784 (LexerInterface!6441 Rule!13504) Bool)

(assert (=> b!4018287 (ruleValid!2784 thiss!21717 (rule!9904 (_1!24205 (v!39639 lt!1425742))))))

(declare-fun lt!1425735 () Unit!62088)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1858 (LexerInterface!6441 Rule!13504 List!43132) Unit!62088)

(assert (=> b!4018287 (= lt!1425735 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1858 thiss!21717 (rule!9904 (_1!24205 (v!39639 lt!1425742))) rules!2999))))

(declare-fun lt!1425724 () Unit!62088)

(declare-fun lemmaCharactersSize!1411 (Token!12842) Unit!62088)

(assert (=> b!4018287 (= lt!1425724 (lemmaCharactersSize!1411 token!484))))

(declare-fun lt!1425694 () Unit!62088)

(assert (=> b!4018287 (= lt!1425694 (lemmaCharactersSize!1411 (_1!24205 (v!39639 lt!1425742))))))

(declare-fun b!4018288 () Bool)

(declare-fun e!2492444 () Bool)

(assert (=> b!4018288 (= e!2492444 e!2492456)))

(declare-fun res!1634635 () Bool)

(assert (=> b!4018288 (=> (not res!1634635) (not e!2492456))))

(declare-fun lt!1425696 () List!43130)

(assert (=> b!4018288 (= res!1634635 (= lt!1425696 lt!1425736))))

(assert (=> b!4018288 (= lt!1425736 (++!11254 prefix!494 newSuffix!27))))

(assert (=> b!4018288 (= lt!1425696 (++!11254 lt!1425729 newSuffixResult!27))))

(declare-fun b!4018289 () Bool)

(declare-fun e!2492467 () Bool)

(declare-fun e!2492460 () Bool)

(assert (=> b!4018289 (= e!2492467 e!2492460)))

(declare-fun res!1634619 () Bool)

(assert (=> b!4018289 (=> res!1634619 e!2492460)))

(assert (=> b!4018289 (= res!1634619 (not (isPrefix!3939 lt!1425733 lt!1425746)))))

(declare-fun lt!1425710 () List!43130)

(assert (=> b!4018289 (isPrefix!3939 lt!1425733 lt!1425710)))

(declare-fun lt!1425747 () List!43130)

(declare-fun lt!1425745 () Unit!62088)

(assert (=> b!4018289 (= lt!1425745 (lemmaPrefixStaysPrefixWhenAddingToSuffix!752 lt!1425733 lt!1425736 lt!1425747))))

(declare-fun b!4018290 () Bool)

(declare-fun e!2492465 () Unit!62088)

(declare-fun Unit!62090 () Unit!62088)

(assert (=> b!4018290 (= e!2492465 Unit!62090)))

(declare-fun b!4018291 () Bool)

(declare-fun e!2492455 () Bool)

(assert (=> b!4018291 (= e!2492445 (not e!2492455))))

(declare-fun res!1634633 () Bool)

(assert (=> b!4018291 (=> res!1634633 e!2492455)))

(declare-fun lt!1425706 () List!43130)

(assert (=> b!4018291 (= res!1634633 (not (= lt!1425706 lt!1425746)))))

(assert (=> b!4018291 (= lt!1425706 (++!11254 lt!1425729 suffixResult!105))))

(declare-fun lt!1425731 () Unit!62088)

(assert (=> b!4018291 (= lt!1425731 (lemmaInv!1067 (transformation!6852 (rule!9904 token!484))))))

(assert (=> b!4018291 (ruleValid!2784 thiss!21717 (rule!9904 token!484))))

(declare-fun lt!1425700 () Unit!62088)

(assert (=> b!4018291 (= lt!1425700 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1858 thiss!21717 (rule!9904 token!484) rules!2999))))

(declare-fun e!2492472 () Bool)

(assert (=> b!4018292 (= e!2492472 (and tp!1221656 tp!1221663))))

(declare-fun b!4018294 () Bool)

(declare-fun res!1634613 () Bool)

(declare-fun e!2492454 () Bool)

(assert (=> b!4018294 (=> (not res!1634613) (not e!2492454))))

(assert (=> b!4018294 (= res!1634613 (= (size!32155 token!484) (size!32156 (originalCharacters!7452 token!484))))))

(declare-fun b!4018295 () Bool)

(declare-fun res!1634614 () Bool)

(declare-fun e!2492448 () Bool)

(assert (=> b!4018295 (=> (not res!1634614) (not e!2492448))))

(assert (=> b!4018295 (= res!1634614 (>= (size!32156 suffix!1299) (size!32156 newSuffix!27)))))

(declare-fun e!2492462 () Bool)

(declare-fun tp!1221661 () Bool)

(declare-fun b!4018296 () Bool)

(declare-fun inv!21 (TokenValue!7082) Bool)

(assert (=> b!4018296 (= e!2492462 (and (inv!21 (value!215916 token!484)) e!2492463 tp!1221661))))

(declare-fun b!4018297 () Bool)

(declare-fun res!1634612 () Bool)

(assert (=> b!4018297 (=> (not res!1634612) (not e!2492448))))

(assert (=> b!4018297 (= res!1634612 (isPrefix!3939 newSuffix!27 suffix!1299))))

(declare-fun b!4018298 () Bool)

(declare-fun res!1634623 () Bool)

(assert (=> b!4018298 (=> (not res!1634623) (not e!2492454))))

(declare-fun lt!1425713 () TokenValue!7082)

(assert (=> b!4018298 (= res!1634623 (= (value!215916 token!484) lt!1425713))))

(declare-fun b!4018299 () Bool)

(declare-fun res!1634627 () Bool)

(assert (=> b!4018299 (=> (not res!1634627) (not e!2492448))))

(declare-fun rulesInvariant!5784 (LexerInterface!6441 List!43132) Bool)

(assert (=> b!4018299 (= res!1634627 (rulesInvariant!5784 thiss!21717 rules!2999))))

(declare-fun b!4018300 () Bool)

(declare-fun e!2492449 () Bool)

(declare-fun tp!1221654 () Bool)

(assert (=> b!4018300 (= e!2492449 (and tp!1221654 (inv!57441 (tag!7712 (h!48428 rules!2999))) (inv!57444 (transformation!6852 (h!48428 rules!2999))) e!2492472))))

(declare-fun b!4018301 () Bool)

(declare-fun e!2492464 () Unit!62088)

(declare-fun Unit!62091 () Unit!62088)

(assert (=> b!4018301 (= e!2492464 Unit!62091)))

(declare-fun b!4018302 () Bool)

(declare-fun e!2492446 () Bool)

(assert (=> b!4018302 (= e!2492446 e!2492459)))

(declare-fun res!1634615 () Bool)

(assert (=> b!4018302 (=> res!1634615 e!2492459)))

(get-info :version)

(assert (=> b!4018302 (= res!1634615 (not ((_ is Some!9265) lt!1425742)))))

(assert (=> b!4018302 (= lt!1425742 (maxPrefix!3739 thiss!21717 rules!2999 lt!1425736))))

(declare-fun lt!1425699 () List!43130)

(declare-fun lt!1425701 () Token!12842)

(assert (=> b!4018302 (and (= suffixResult!105 lt!1425699) (= lt!1425741 (tuple2!42143 lt!1425701 lt!1425699)))))

(declare-fun lt!1425723 () Unit!62088)

(declare-fun lemmaSamePrefixThenSameSuffix!2110 (List!43130 List!43130 List!43130 List!43130 List!43130) Unit!62088)

(assert (=> b!4018302 (= lt!1425723 (lemmaSamePrefixThenSameSuffix!2110 lt!1425729 suffixResult!105 lt!1425729 lt!1425699 lt!1425746))))

(declare-fun lt!1425707 () List!43130)

(assert (=> b!4018302 (isPrefix!3939 lt!1425729 lt!1425707)))

(declare-fun lt!1425719 () Unit!62088)

(assert (=> b!4018302 (= lt!1425719 (lemmaConcatTwoListThenFirstIsPrefix!2780 lt!1425729 lt!1425699))))

(declare-fun b!4018303 () Bool)

(declare-fun e!2492447 () Bool)

(assert (=> b!4018303 (= e!2492447 e!2492467)))

(declare-fun res!1634618 () Bool)

(assert (=> b!4018303 (=> res!1634618 e!2492467)))

(assert (=> b!4018303 (= res!1634618 (not (= lt!1425710 lt!1425746)))))

(declare-fun lt!1425732 () List!43130)

(assert (=> b!4018303 (= lt!1425710 (++!11254 prefix!494 lt!1425732))))

(assert (=> b!4018303 (= lt!1425710 (++!11254 lt!1425736 lt!1425747))))

(declare-fun lt!1425711 () Unit!62088)

(assert (=> b!4018303 (= lt!1425711 (lemmaConcatAssociativity!2564 prefix!494 newSuffix!27 lt!1425747))))

(declare-fun b!4018304 () Bool)

(declare-fun e!2492452 () Bool)

(assert (=> b!4018304 (= e!2492455 e!2492452)))

(declare-fun res!1634628 () Bool)

(assert (=> b!4018304 (=> res!1634628 e!2492452)))

(assert (=> b!4018304 (= res!1634628 (not (isPrefix!3939 lt!1425729 lt!1425746)))))

(assert (=> b!4018304 (isPrefix!3939 prefix!494 lt!1425746)))

(declare-fun lt!1425737 () Unit!62088)

(assert (=> b!4018304 (= lt!1425737 (lemmaConcatTwoListThenFirstIsPrefix!2780 prefix!494 suffix!1299))))

(assert (=> b!4018304 (isPrefix!3939 lt!1425729 lt!1425706)))

(declare-fun lt!1425716 () Unit!62088)

(assert (=> b!4018304 (= lt!1425716 (lemmaConcatTwoListThenFirstIsPrefix!2780 lt!1425729 suffixResult!105))))

(declare-fun b!4018305 () Bool)

(declare-fun Unit!62092 () Unit!62088)

(assert (=> b!4018305 (= e!2492464 Unit!62092)))

(declare-fun lt!1425728 () Unit!62088)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!446 (LexerInterface!6441 List!43132 Rule!13504 List!43130 List!43130 List!43130 Rule!13504) Unit!62088)

(assert (=> b!4018305 (= lt!1425728 (lemmaMaxPrefixOutputsMaxPrefix!446 thiss!21717 rules!2999 (rule!9904 (_1!24205 (v!39639 lt!1425742))) lt!1425733 lt!1425736 lt!1425729 (rule!9904 token!484)))))

(assert (=> b!4018305 false))

(declare-fun b!4018306 () Bool)

(declare-fun e!2492451 () Bool)

(declare-fun tp_is_empty!20485 () Bool)

(declare-fun tp!1221659 () Bool)

(assert (=> b!4018306 (= e!2492451 (and tp_is_empty!20485 tp!1221659))))

(declare-fun b!4018307 () Bool)

(assert (=> b!4018307 (= e!2492452 e!2492443)))

(declare-fun res!1634632 () Bool)

(assert (=> b!4018307 (=> res!1634632 e!2492443)))

(assert (=> b!4018307 (= res!1634632 (not (= lt!1425693 prefix!494)))))

(assert (=> b!4018307 (= lt!1425693 (++!11254 lt!1425729 lt!1425702))))

(declare-fun getSuffix!2364 (List!43130 List!43130) List!43130)

(assert (=> b!4018307 (= lt!1425702 (getSuffix!2364 prefix!494 lt!1425729))))

(assert (=> b!4018307 (isPrefix!3939 lt!1425729 prefix!494)))

(declare-fun lt!1425748 () Unit!62088)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!511 (List!43130 List!43130 List!43130) Unit!62088)

(assert (=> b!4018307 (= lt!1425748 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!511 prefix!494 lt!1425729 lt!1425746))))

(declare-fun b!4018308 () Bool)

(assert (=> b!4018308 (= e!2492470 e!2492474)))

(declare-fun res!1634616 () Bool)

(assert (=> b!4018308 (=> res!1634616 e!2492474)))

(declare-fun lt!1425743 () Option!9266)

(assert (=> b!4018308 (= res!1634616 (not (= lt!1425743 lt!1425727)))))

(assert (=> b!4018308 (= lt!1425743 (Some!9265 (tuple2!42143 lt!1425701 suffixResult!105)))))

(assert (=> b!4018308 (= lt!1425743 (maxPrefixOneRule!2759 thiss!21717 (rule!9904 token!484) lt!1425746))))

(declare-fun lt!1425738 () Int)

(assert (=> b!4018308 (= lt!1425701 (Token!12843 lt!1425713 (rule!9904 token!484) lt!1425738 lt!1425729))))

(assert (=> b!4018308 (= lt!1425713 (apply!10049 (transformation!6852 (rule!9904 token!484)) (seqFromList!5077 lt!1425729)))))

(declare-fun lt!1425714 () Unit!62088)

(assert (=> b!4018308 (= lt!1425714 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1577 thiss!21717 rules!2999 lt!1425729 lt!1425746 suffixResult!105 (rule!9904 token!484)))))

(assert (=> b!4018308 (= lt!1425750 suffixResult!105)))

(declare-fun lt!1425722 () Unit!62088)

(assert (=> b!4018308 (= lt!1425722 (lemmaSamePrefixThenSameSuffix!2110 lt!1425729 lt!1425750 lt!1425729 suffixResult!105 lt!1425746))))

(assert (=> b!4018308 (isPrefix!3939 lt!1425729 lt!1425749)))

(declare-fun lt!1425725 () Unit!62088)

(assert (=> b!4018308 (= lt!1425725 (lemmaConcatTwoListThenFirstIsPrefix!2780 lt!1425729 lt!1425750))))

(declare-fun b!4018309 () Bool)

(declare-fun e!2492469 () Bool)

(declare-fun tp!1221657 () Bool)

(assert (=> b!4018309 (= e!2492469 (and tp_is_empty!20485 tp!1221657))))

(declare-fun b!4018310 () Bool)

(declare-fun e!2492468 () Bool)

(declare-fun tp!1221653 () Bool)

(assert (=> b!4018310 (= e!2492468 (and e!2492449 tp!1221653))))

(declare-fun b!4018311 () Bool)

(declare-fun res!1634624 () Bool)

(assert (=> b!4018311 (=> (not res!1634624) (not e!2492448))))

(declare-fun isEmpty!25684 (List!43132) Bool)

(assert (=> b!4018311 (= res!1634624 (not (isEmpty!25684 rules!2999)))))

(declare-fun b!4018312 () Bool)

(assert (=> b!4018312 (= e!2492448 e!2492444)))

(declare-fun res!1634620 () Bool)

(assert (=> b!4018312 (=> (not res!1634620) (not e!2492444))))

(declare-fun lt!1425740 () Int)

(assert (=> b!4018312 (= res!1634620 (>= lt!1425740 lt!1425738))))

(assert (=> b!4018312 (= lt!1425738 (size!32156 lt!1425729))))

(assert (=> b!4018312 (= lt!1425740 (size!32156 prefix!494))))

(assert (=> b!4018312 (= lt!1425729 (list!15988 (charsOf!4668 token!484)))))

(declare-fun b!4018293 () Bool)

(assert (=> b!4018293 (= e!2492454 (and (= (size!32155 token!484) lt!1425738) (= (originalCharacters!7452 token!484) lt!1425729)))))

(declare-fun res!1634637 () Bool)

(assert (=> start!378432 (=> (not res!1634637) (not e!2492448))))

(assert (=> start!378432 (= res!1634637 ((_ is Lexer!6439) thiss!21717))))

(assert (=> start!378432 e!2492448))

(declare-fun e!2492461 () Bool)

(assert (=> start!378432 e!2492461))

(declare-fun inv!57445 (Token!12842) Bool)

(assert (=> start!378432 (and (inv!57445 token!484) e!2492462)))

(assert (=> start!378432 e!2492451))

(declare-fun e!2492458 () Bool)

(assert (=> start!378432 e!2492458))

(assert (=> start!378432 e!2492469))

(assert (=> start!378432 true))

(assert (=> start!378432 e!2492468))

(declare-fun e!2492473 () Bool)

(assert (=> start!378432 e!2492473))

(declare-fun b!4018313 () Bool)

(declare-fun tp!1221660 () Bool)

(assert (=> b!4018313 (= e!2492458 (and tp_is_empty!20485 tp!1221660))))

(declare-fun b!4018314 () Bool)

(declare-fun res!1634629 () Bool)

(assert (=> b!4018314 (=> res!1634629 e!2492460)))

(assert (=> b!4018314 (= res!1634629 (not (= lt!1425704 lt!1425736)))))

(declare-fun b!4018315 () Bool)

(declare-fun e!2492453 () Bool)

(assert (=> b!4018315 (= e!2492460 e!2492453)))

(declare-fun res!1634617 () Bool)

(assert (=> b!4018315 (=> res!1634617 e!2492453)))

(declare-fun lt!1425730 () List!43130)

(assert (=> b!4018315 (= res!1634617 (not (= lt!1425730 lt!1425736)))))

(declare-fun lt!1425695 () List!43130)

(assert (=> b!4018315 (= lt!1425730 (++!11254 lt!1425733 lt!1425695))))

(assert (=> b!4018315 (= lt!1425695 (getSuffix!2364 lt!1425736 lt!1425733))))

(declare-fun b!4018316 () Bool)

(declare-fun Unit!62093 () Unit!62088)

(assert (=> b!4018316 (= e!2492465 Unit!62093)))

(declare-fun lt!1425703 () Unit!62088)

(assert (=> b!4018316 (= lt!1425703 (lemmaMaxPrefixOutputsMaxPrefix!446 thiss!21717 rules!2999 (rule!9904 token!484) lt!1425729 lt!1425746 lt!1425733 (rule!9904 (_1!24205 (v!39639 lt!1425742)))))))

(declare-fun res!1634630 () Bool)

(assert (=> b!4018316 (= res!1634630 (not (matchR!5718 (regex!6852 (rule!9904 (_1!24205 (v!39639 lt!1425742)))) lt!1425733)))))

(assert (=> b!4018316 (=> (not res!1634630) (not e!2492475))))

(assert (=> b!4018316 e!2492475))

(declare-fun b!4018317 () Bool)

(assert (=> b!4018317 (= e!2492450 e!2492446)))

(declare-fun res!1634621 () Bool)

(assert (=> b!4018317 (=> res!1634621 e!2492446)))

(assert (=> b!4018317 (= res!1634621 (not (= lt!1425707 lt!1425746)))))

(assert (=> b!4018317 (= lt!1425707 (++!11254 lt!1425729 lt!1425699))))

(assert (=> b!4018317 (= lt!1425699 (getSuffix!2364 lt!1425746 lt!1425729))))

(assert (=> b!4018317 e!2492454))

(declare-fun res!1634631 () Bool)

(assert (=> b!4018317 (=> (not res!1634631) (not e!2492454))))

(assert (=> b!4018317 (= res!1634631 (isPrefix!3939 lt!1425746 lt!1425746))))

(declare-fun lt!1425712 () Unit!62088)

(declare-fun lemmaIsPrefixRefl!2515 (List!43130 List!43130) Unit!62088)

(assert (=> b!4018317 (= lt!1425712 (lemmaIsPrefixRefl!2515 lt!1425746 lt!1425746))))

(assert (=> b!4018318 (= e!2492457 (and tp!1221652 tp!1221664))))

(declare-fun b!4018319 () Bool)

(declare-fun tp!1221655 () Bool)

(assert (=> b!4018319 (= e!2492461 (and tp_is_empty!20485 tp!1221655))))

(declare-fun b!4018320 () Bool)

(declare-fun tp!1221662 () Bool)

(assert (=> b!4018320 (= e!2492473 (and tp_is_empty!20485 tp!1221662))))

(declare-fun b!4018321 () Bool)

(assert (=> b!4018321 (= e!2492476 e!2492447)))

(declare-fun res!1634625 () Bool)

(assert (=> b!4018321 (=> res!1634625 e!2492447)))

(assert (=> b!4018321 (= res!1634625 (not (= lt!1425732 suffix!1299)))))

(assert (=> b!4018321 (= lt!1425732 (++!11254 newSuffix!27 lt!1425747))))

(assert (=> b!4018321 (= lt!1425747 (getSuffix!2364 suffix!1299 newSuffix!27))))

(declare-fun b!4018322 () Bool)

(assert (=> b!4018322 (= e!2492453 true)))

(declare-fun lt!1425698 () Unit!62088)

(assert (=> b!4018322 (= lt!1425698 e!2492464)))

(declare-fun c!694466 () Bool)

(assert (=> b!4018322 (= c!694466 (< lt!1425697 lt!1425738))))

(declare-fun lt!1425717 () Unit!62088)

(assert (=> b!4018322 (= lt!1425717 e!2492465)))

(declare-fun c!694467 () Bool)

(assert (=> b!4018322 (= c!694467 (> lt!1425697 lt!1425738))))

(assert (=> b!4018322 (= (_2!24205 (v!39639 lt!1425742)) lt!1425695)))

(declare-fun lt!1425744 () Unit!62088)

(assert (=> b!4018322 (= lt!1425744 (lemmaSamePrefixThenSameSuffix!2110 lt!1425733 (_2!24205 (v!39639 lt!1425742)) lt!1425733 lt!1425695 lt!1425736))))

(assert (=> b!4018322 (isPrefix!3939 lt!1425733 lt!1425730)))

(declare-fun lt!1425721 () Unit!62088)

(assert (=> b!4018322 (= lt!1425721 (lemmaConcatTwoListThenFirstIsPrefix!2780 lt!1425733 lt!1425695))))

(assert (= (and start!378432 res!1634637) b!4018311))

(assert (= (and b!4018311 res!1634624) b!4018299))

(assert (= (and b!4018299 res!1634627) b!4018295))

(assert (= (and b!4018295 res!1634614) b!4018297))

(assert (= (and b!4018297 res!1634612) b!4018312))

(assert (= (and b!4018312 res!1634620) b!4018288))

(assert (= (and b!4018288 res!1634635) b!4018284))

(assert (= (and b!4018284 res!1634636) b!4018291))

(assert (= (and b!4018291 (not res!1634633)) b!4018304))

(assert (= (and b!4018304 (not res!1634628)) b!4018307))

(assert (= (and b!4018307 (not res!1634632)) b!4018283))

(assert (= (and b!4018283 (not res!1634626)) b!4018308))

(assert (= (and b!4018308 (not res!1634616)) b!4018282))

(assert (= (and b!4018282 (not res!1634634)) b!4018317))

(assert (= (and b!4018317 res!1634631) b!4018298))

(assert (= (and b!4018298 res!1634623) b!4018294))

(assert (= (and b!4018294 res!1634613) b!4018293))

(assert (= (and b!4018317 (not res!1634621)) b!4018302))

(assert (= (and b!4018302 (not res!1634615)) b!4018287))

(assert (= (and b!4018287 (not res!1634622)) b!4018321))

(assert (= (and b!4018321 (not res!1634625)) b!4018303))

(assert (= (and b!4018303 (not res!1634618)) b!4018289))

(assert (= (and b!4018289 (not res!1634619)) b!4018314))

(assert (= (and b!4018314 (not res!1634629)) b!4018315))

(assert (= (and b!4018315 (not res!1634617)) b!4018322))

(assert (= (and b!4018322 c!694467) b!4018316))

(assert (= (and b!4018322 (not c!694467)) b!4018290))

(assert (= (and b!4018316 res!1634630) b!4018285))

(assert (= (and b!4018322 c!694466) b!4018305))

(assert (= (and b!4018322 (not c!694466)) b!4018301))

(assert (= (and start!378432 ((_ is Cons!43006) prefix!494)) b!4018319))

(assert (= b!4018286 b!4018318))

(assert (= b!4018296 b!4018286))

(assert (= start!378432 b!4018296))

(assert (= (and start!378432 ((_ is Cons!43006) suffixResult!105)) b!4018306))

(assert (= (and start!378432 ((_ is Cons!43006) suffix!1299)) b!4018313))

(assert (= (and start!378432 ((_ is Cons!43006) newSuffix!27)) b!4018309))

(assert (= b!4018300 b!4018292))

(assert (= b!4018310 b!4018300))

(assert (= (and start!378432 ((_ is Cons!43008) rules!2999)) b!4018310))

(assert (= (and start!378432 ((_ is Cons!43006) newSuffixResult!27)) b!4018320))

(declare-fun m!4607409 () Bool)

(assert (=> b!4018303 m!4607409))

(declare-fun m!4607411 () Bool)

(assert (=> b!4018303 m!4607411))

(declare-fun m!4607413 () Bool)

(assert (=> b!4018303 m!4607413))

(declare-fun m!4607415 () Bool)

(assert (=> b!4018302 m!4607415))

(declare-fun m!4607417 () Bool)

(assert (=> b!4018302 m!4607417))

(declare-fun m!4607419 () Bool)

(assert (=> b!4018302 m!4607419))

(declare-fun m!4607421 () Bool)

(assert (=> b!4018302 m!4607421))

(declare-fun m!4607423 () Bool)

(assert (=> b!4018305 m!4607423))

(declare-fun m!4607425 () Bool)

(assert (=> b!4018294 m!4607425))

(declare-fun m!4607427 () Bool)

(assert (=> b!4018286 m!4607427))

(declare-fun m!4607429 () Bool)

(assert (=> b!4018286 m!4607429))

(declare-fun m!4607431 () Bool)

(assert (=> b!4018316 m!4607431))

(declare-fun m!4607433 () Bool)

(assert (=> b!4018316 m!4607433))

(declare-fun m!4607435 () Bool)

(assert (=> b!4018288 m!4607435))

(declare-fun m!4607437 () Bool)

(assert (=> b!4018288 m!4607437))

(declare-fun m!4607439 () Bool)

(assert (=> b!4018299 m!4607439))

(declare-fun m!4607441 () Bool)

(assert (=> b!4018300 m!4607441))

(declare-fun m!4607443 () Bool)

(assert (=> b!4018300 m!4607443))

(declare-fun m!4607445 () Bool)

(assert (=> start!378432 m!4607445))

(declare-fun m!4607447 () Bool)

(assert (=> b!4018308 m!4607447))

(declare-fun m!4607449 () Bool)

(assert (=> b!4018308 m!4607449))

(declare-fun m!4607451 () Bool)

(assert (=> b!4018308 m!4607451))

(declare-fun m!4607453 () Bool)

(assert (=> b!4018308 m!4607453))

(assert (=> b!4018308 m!4607449))

(declare-fun m!4607455 () Bool)

(assert (=> b!4018308 m!4607455))

(declare-fun m!4607457 () Bool)

(assert (=> b!4018308 m!4607457))

(declare-fun m!4607459 () Bool)

(assert (=> b!4018308 m!4607459))

(declare-fun m!4607461 () Bool)

(assert (=> b!4018311 m!4607461))

(declare-fun m!4607463 () Bool)

(assert (=> b!4018287 m!4607463))

(declare-fun m!4607465 () Bool)

(assert (=> b!4018287 m!4607465))

(assert (=> b!4018287 m!4607463))

(declare-fun m!4607467 () Bool)

(assert (=> b!4018287 m!4607467))

(declare-fun m!4607469 () Bool)

(assert (=> b!4018287 m!4607469))

(declare-fun m!4607471 () Bool)

(assert (=> b!4018287 m!4607471))

(declare-fun m!4607473 () Bool)

(assert (=> b!4018287 m!4607473))

(declare-fun m!4607475 () Bool)

(assert (=> b!4018287 m!4607475))

(declare-fun m!4607477 () Bool)

(assert (=> b!4018287 m!4607477))

(declare-fun m!4607479 () Bool)

(assert (=> b!4018287 m!4607479))

(declare-fun m!4607481 () Bool)

(assert (=> b!4018287 m!4607481))

(declare-fun m!4607483 () Bool)

(assert (=> b!4018287 m!4607483))

(declare-fun m!4607485 () Bool)

(assert (=> b!4018287 m!4607485))

(declare-fun m!4607487 () Bool)

(assert (=> b!4018287 m!4607487))

(declare-fun m!4607489 () Bool)

(assert (=> b!4018287 m!4607489))

(declare-fun m!4607491 () Bool)

(assert (=> b!4018287 m!4607491))

(assert (=> b!4018287 m!4607473))

(declare-fun m!4607493 () Bool)

(assert (=> b!4018287 m!4607493))

(declare-fun m!4607495 () Bool)

(assert (=> b!4018287 m!4607495))

(declare-fun m!4607497 () Bool)

(assert (=> b!4018287 m!4607497))

(assert (=> b!4018287 m!4607495))

(declare-fun m!4607499 () Bool)

(assert (=> b!4018296 m!4607499))

(declare-fun m!4607501 () Bool)

(assert (=> b!4018282 m!4607501))

(declare-fun m!4607503 () Bool)

(assert (=> b!4018282 m!4607503))

(declare-fun m!4607505 () Bool)

(assert (=> b!4018282 m!4607505))

(declare-fun m!4607507 () Bool)

(assert (=> b!4018282 m!4607507))

(declare-fun m!4607509 () Bool)

(assert (=> b!4018307 m!4607509))

(declare-fun m!4607511 () Bool)

(assert (=> b!4018307 m!4607511))

(declare-fun m!4607513 () Bool)

(assert (=> b!4018307 m!4607513))

(declare-fun m!4607515 () Bool)

(assert (=> b!4018307 m!4607515))

(declare-fun m!4607517 () Bool)

(assert (=> b!4018312 m!4607517))

(declare-fun m!4607519 () Bool)

(assert (=> b!4018312 m!4607519))

(declare-fun m!4607521 () Bool)

(assert (=> b!4018312 m!4607521))

(assert (=> b!4018312 m!4607521))

(declare-fun m!4607523 () Bool)

(assert (=> b!4018312 m!4607523))

(declare-fun m!4607525 () Bool)

(assert (=> b!4018284 m!4607525))

(declare-fun m!4607527 () Bool)

(assert (=> b!4018284 m!4607527))

(declare-fun m!4607529 () Bool)

(assert (=> b!4018289 m!4607529))

(declare-fun m!4607531 () Bool)

(assert (=> b!4018289 m!4607531))

(declare-fun m!4607533 () Bool)

(assert (=> b!4018289 m!4607533))

(declare-fun m!4607535 () Bool)

(assert (=> b!4018322 m!4607535))

(declare-fun m!4607537 () Bool)

(assert (=> b!4018322 m!4607537))

(declare-fun m!4607539 () Bool)

(assert (=> b!4018322 m!4607539))

(declare-fun m!4607541 () Bool)

(assert (=> b!4018317 m!4607541))

(declare-fun m!4607543 () Bool)

(assert (=> b!4018317 m!4607543))

(declare-fun m!4607545 () Bool)

(assert (=> b!4018317 m!4607545))

(declare-fun m!4607547 () Bool)

(assert (=> b!4018317 m!4607547))

(declare-fun m!4607549 () Bool)

(assert (=> b!4018304 m!4607549))

(declare-fun m!4607551 () Bool)

(assert (=> b!4018304 m!4607551))

(declare-fun m!4607553 () Bool)

(assert (=> b!4018304 m!4607553))

(declare-fun m!4607555 () Bool)

(assert (=> b!4018304 m!4607555))

(declare-fun m!4607557 () Bool)

(assert (=> b!4018304 m!4607557))

(declare-fun m!4607559 () Bool)

(assert (=> b!4018291 m!4607559))

(declare-fun m!4607561 () Bool)

(assert (=> b!4018291 m!4607561))

(declare-fun m!4607563 () Bool)

(assert (=> b!4018291 m!4607563))

(declare-fun m!4607565 () Bool)

(assert (=> b!4018291 m!4607565))

(declare-fun m!4607567 () Bool)

(assert (=> b!4018297 m!4607567))

(declare-fun m!4607569 () Bool)

(assert (=> b!4018283 m!4607569))

(declare-fun m!4607571 () Bool)

(assert (=> b!4018283 m!4607571))

(declare-fun m!4607573 () Bool)

(assert (=> b!4018283 m!4607573))

(declare-fun m!4607575 () Bool)

(assert (=> b!4018283 m!4607575))

(declare-fun m!4607577 () Bool)

(assert (=> b!4018321 m!4607577))

(declare-fun m!4607579 () Bool)

(assert (=> b!4018321 m!4607579))

(declare-fun m!4607581 () Bool)

(assert (=> b!4018295 m!4607581))

(declare-fun m!4607583 () Bool)

(assert (=> b!4018295 m!4607583))

(declare-fun m!4607585 () Bool)

(assert (=> b!4018315 m!4607585))

(declare-fun m!4607587 () Bool)

(assert (=> b!4018315 m!4607587))

(check-sat b_and!308699 (not b!4018300) (not b_next!112503) (not b!4018284) (not b_next!112499) tp_is_empty!20485 (not b_next!112501) (not b!4018297) (not b!4018299) (not b!4018313) (not b!4018312) b_and!308697 (not b!4018321) (not b!4018295) (not b!4018283) (not b!4018320) (not b!4018319) (not b!4018286) b_and!308695 (not b!4018282) (not b!4018316) (not b!4018308) (not b!4018287) (not b!4018315) (not b!4018305) (not b!4018307) (not start!378432) (not b!4018303) (not b!4018294) (not b!4018304) (not b!4018306) (not b!4018317) b_and!308701 (not b!4018288) (not b!4018322) (not b!4018311) (not b!4018310) (not b!4018289) (not b_next!112497) (not b!4018291) (not b!4018296) (not b!4018309) (not b!4018302))
(check-sat b_and!308699 (not b_next!112503) b_and!308697 b_and!308695 (not b_next!112499) b_and!308701 (not b_next!112501) (not b_next!112497))
