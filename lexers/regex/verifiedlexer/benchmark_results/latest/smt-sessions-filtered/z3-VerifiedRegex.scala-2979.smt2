; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!177290 () Bool)

(assert start!177290)

(declare-fun b!1781886 () Bool)

(declare-fun b_free!49479 () Bool)

(declare-fun b_next!50183 () Bool)

(assert (=> b!1781886 (= b_free!49479 (not b_next!50183))))

(declare-fun tp!504450 () Bool)

(declare-fun b_and!136687 () Bool)

(assert (=> b!1781886 (= tp!504450 b_and!136687)))

(declare-fun b_free!49481 () Bool)

(declare-fun b_next!50185 () Bool)

(assert (=> b!1781886 (= b_free!49481 (not b_next!50185))))

(declare-fun tp!504441 () Bool)

(declare-fun b_and!136689 () Bool)

(assert (=> b!1781886 (= tp!504441 b_and!136689)))

(declare-fun b!1781865 () Bool)

(declare-fun b_free!49483 () Bool)

(declare-fun b_next!50187 () Bool)

(assert (=> b!1781865 (= b_free!49483 (not b_next!50187))))

(declare-fun tp!504444 () Bool)

(declare-fun b_and!136691 () Bool)

(assert (=> b!1781865 (= tp!504444 b_and!136691)))

(declare-fun b_free!49485 () Bool)

(declare-fun b_next!50189 () Bool)

(assert (=> b!1781865 (= b_free!49485 (not b_next!50189))))

(declare-fun tp!504446 () Bool)

(declare-fun b_and!136693 () Bool)

(assert (=> b!1781865 (= tp!504446 b_and!136693)))

(declare-fun b!1781884 () Bool)

(declare-fun b_free!49487 () Bool)

(declare-fun b_next!50191 () Bool)

(assert (=> b!1781884 (= b_free!49487 (not b_next!50191))))

(declare-fun tp!504440 () Bool)

(declare-fun b_and!136695 () Bool)

(assert (=> b!1781884 (= tp!504440 b_and!136695)))

(declare-fun b_free!49489 () Bool)

(declare-fun b_next!50193 () Bool)

(assert (=> b!1781884 (= b_free!49489 (not b_next!50193))))

(declare-fun tp!504439 () Bool)

(declare-fun b_and!136697 () Bool)

(assert (=> b!1781884 (= tp!504439 b_and!136697)))

(declare-fun b!1781914 () Bool)

(declare-fun e!1140433 () Bool)

(assert (=> b!1781914 (= e!1140433 true)))

(declare-fun b!1781913 () Bool)

(declare-fun e!1140432 () Bool)

(assert (=> b!1781913 (= e!1140432 e!1140433)))

(declare-fun b!1781912 () Bool)

(declare-fun e!1140431 () Bool)

(assert (=> b!1781912 (= e!1140431 e!1140432)))

(declare-fun b!1781867 () Bool)

(assert (=> b!1781867 e!1140431))

(assert (= b!1781913 b!1781914))

(assert (= b!1781912 b!1781913))

(assert (= b!1781867 b!1781912))

(declare-fun lambda!70686 () Int)

(declare-fun order!12681 () Int)

(declare-fun order!12679 () Int)

(declare-datatypes ((List!19708 0))(
  ( (Nil!19638) (Cons!19638 (h!25039 (_ BitVec 16)) (t!166651 List!19708)) )
))
(declare-datatypes ((TokenValue!3609 0))(
  ( (FloatLiteralValue!7218 (text!25708 List!19708)) (TokenValueExt!3608 (__x!12520 Int)) (Broken!18045 (value!109938 List!19708)) (Object!3678) (End!3609) (Def!3609) (Underscore!3609) (Match!3609) (Else!3609) (Error!3609) (Case!3609) (If!3609) (Extends!3609) (Abstract!3609) (Class!3609) (Val!3609) (DelimiterValue!7218 (del!3669 List!19708)) (KeywordValue!3615 (value!109939 List!19708)) (CommentValue!7218 (value!109940 List!19708)) (WhitespaceValue!7218 (value!109941 List!19708)) (IndentationValue!3609 (value!109942 List!19708)) (String!22376) (Int32!3609) (Broken!18046 (value!109943 List!19708)) (Boolean!3610) (Unit!33944) (OperatorValue!3612 (op!3669 List!19708)) (IdentifierValue!7218 (value!109944 List!19708)) (IdentifierValue!7219 (value!109945 List!19708)) (WhitespaceValue!7219 (value!109946 List!19708)) (True!7218) (False!7218) (Broken!18047 (value!109947 List!19708)) (Broken!18048 (value!109948 List!19708)) (True!7219) (RightBrace!3609) (RightBracket!3609) (Colon!3609) (Null!3609) (Comma!3609) (LeftBracket!3609) (False!7219) (LeftBrace!3609) (ImaginaryLiteralValue!3609 (text!25709 List!19708)) (StringLiteralValue!10827 (value!109949 List!19708)) (EOFValue!3609 (value!109950 List!19708)) (IdentValue!3609 (value!109951 List!19708)) (DelimiterValue!7219 (value!109952 List!19708)) (DedentValue!3609 (value!109953 List!19708)) (NewLineValue!3609 (value!109954 List!19708)) (IntegerValue!10827 (value!109955 (_ BitVec 32)) (text!25710 List!19708)) (IntegerValue!10828 (value!109956 Int) (text!25711 List!19708)) (Times!3609) (Or!3609) (Equal!3609) (Minus!3609) (Broken!18049 (value!109957 List!19708)) (And!3609) (Div!3609) (LessEqual!3609) (Mod!3609) (Concat!8456) (Not!3609) (Plus!3609) (SpaceValue!3609 (value!109958 List!19708)) (IntegerValue!10829 (value!109959 Int) (text!25712 List!19708)) (StringLiteralValue!10828 (text!25713 List!19708)) (FloatLiteralValue!7219 (text!25714 List!19708)) (BytesLiteralValue!3609 (value!109960 List!19708)) (CommentValue!7219 (value!109961 List!19708)) (StringLiteralValue!10829 (value!109962 List!19708)) (ErrorTokenValue!3609 (msg!3670 List!19708)) )
))
(declare-datatypes ((C!9868 0))(
  ( (C!9869 (val!5530 Int)) )
))
(declare-datatypes ((List!19709 0))(
  ( (Nil!19639) (Cons!19639 (h!25040 C!9868) (t!166652 List!19709)) )
))
(declare-datatypes ((String!22377 0))(
  ( (String!22378 (value!109963 String)) )
))
(declare-datatypes ((Regex!4847 0))(
  ( (ElementMatch!4847 (c!289862 C!9868)) (Concat!8457 (regOne!10206 Regex!4847) (regTwo!10206 Regex!4847)) (EmptyExpr!4847) (Star!4847 (reg!5176 Regex!4847)) (EmptyLang!4847) (Union!4847 (regOne!10207 Regex!4847) (regTwo!10207 Regex!4847)) )
))
(declare-datatypes ((IArray!13071 0))(
  ( (IArray!13072 (innerList!6593 List!19709)) )
))
(declare-datatypes ((Conc!6533 0))(
  ( (Node!6533 (left!15742 Conc!6533) (right!16072 Conc!6533) (csize!13296 Int) (cheight!6744 Int)) (Leaf!9513 (xs!9409 IArray!13071) (csize!13297 Int)) (Empty!6533) )
))
(declare-datatypes ((BalanceConc!13010 0))(
  ( (BalanceConc!13011 (c!289863 Conc!6533)) )
))
(declare-datatypes ((TokenValueInjection!6878 0))(
  ( (TokenValueInjection!6879 (toValue!5046 Int) (toChars!4905 Int)) )
))
(declare-datatypes ((Rule!6838 0))(
  ( (Rule!6839 (regex!3519 Regex!4847) (tag!3915 String!22377) (isSeparator!3519 Bool) (transformation!3519 TokenValueInjection!6878)) )
))
(declare-datatypes ((Token!6604 0))(
  ( (Token!6605 (value!109964 TokenValue!3609) (rule!5595 Rule!6838) (size!15602 Int) (originalCharacters!4333 List!19709)) )
))
(declare-datatypes ((tuple2!19230 0))(
  ( (tuple2!19231 (_1!11017 Token!6604) (_2!11017 List!19709)) )
))
(declare-fun lt!692735 () tuple2!19230)

(declare-fun dynLambda!9649 (Int Int) Int)

(declare-fun dynLambda!9650 (Int Int) Int)

(assert (=> b!1781914 (< (dynLambda!9649 order!12679 (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735))))) (dynLambda!9650 order!12681 lambda!70686))))

(declare-fun order!12683 () Int)

(declare-fun dynLambda!9651 (Int Int) Int)

(assert (=> b!1781914 (< (dynLambda!9651 order!12683 (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735))))) (dynLambda!9650 order!12681 lambda!70686))))

(declare-fun res!803223 () Bool)

(declare-fun e!1140407 () Bool)

(assert (=> start!177290 (=> (not res!803223) (not e!1140407))))

(declare-datatypes ((LexerInterface!3148 0))(
  ( (LexerInterfaceExt!3145 (__x!12521 Int)) (Lexer!3146) )
))
(declare-fun thiss!24550 () LexerInterface!3148)

(get-info :version)

(assert (=> start!177290 (= res!803223 ((_ is Lexer!3146) thiss!24550))))

(assert (=> start!177290 e!1140407))

(declare-fun e!1140401 () Bool)

(assert (=> start!177290 e!1140401))

(declare-fun e!1140402 () Bool)

(assert (=> start!177290 e!1140402))

(assert (=> start!177290 true))

(declare-fun token!523 () Token!6604)

(declare-fun e!1140403 () Bool)

(declare-fun inv!25563 (Token!6604) Bool)

(assert (=> start!177290 (and (inv!25563 token!523) e!1140403)))

(declare-fun e!1140424 () Bool)

(assert (=> start!177290 e!1140424))

(declare-fun e!1140398 () Bool)

(assert (=> b!1781865 (= e!1140398 (and tp!504444 tp!504446))))

(declare-fun tp!504445 () Bool)

(declare-fun e!1140416 () Bool)

(declare-fun b!1781866 () Bool)

(declare-fun inv!21 (TokenValue!3609) Bool)

(assert (=> b!1781866 (= e!1140403 (and (inv!21 (value!109964 token!523)) e!1140416 tp!504445))))

(declare-fun e!1140395 () Bool)

(declare-fun e!1140410 () Bool)

(assert (=> b!1781867 (= e!1140395 e!1140410)))

(declare-fun res!803214 () Bool)

(assert (=> b!1781867 (=> res!803214 e!1140410)))

(declare-fun Forall!886 (Int) Bool)

(assert (=> b!1781867 (= res!803214 (not (Forall!886 lambda!70686)))))

(declare-datatypes ((Unit!33945 0))(
  ( (Unit!33946) )
))
(declare-fun lt!692734 () Unit!33945)

(declare-fun lemmaInv!718 (TokenValueInjection!6878) Unit!33945)

(assert (=> b!1781867 (= lt!692734 (lemmaInv!718 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))))))

(declare-fun b!1781868 () Bool)

(declare-fun e!1140423 () Bool)

(declare-fun lt!692762 () List!19709)

(declare-fun isEmpty!12410 (List!19709) Bool)

(assert (=> b!1781868 (= e!1140423 (not (isEmpty!12410 lt!692762)))))

(declare-fun tp!504448 () Bool)

(declare-fun b!1781869 () Bool)

(declare-fun rule!422 () Rule!6838)

(declare-fun inv!25558 (String!22377) Bool)

(declare-fun inv!25564 (TokenValueInjection!6878) Bool)

(assert (=> b!1781869 (= e!1140402 (and tp!504448 (inv!25558 (tag!3915 rule!422)) (inv!25564 (transformation!3519 rule!422)) e!1140398))))

(declare-fun b!1781870 () Bool)

(declare-fun res!803213 () Bool)

(assert (=> b!1781870 (=> (not res!803213) (not e!1140407))))

(declare-datatypes ((List!19710 0))(
  ( (Nil!19640) (Cons!19640 (h!25041 Rule!6838) (t!166653 List!19710)) )
))
(declare-fun rules!3447 () List!19710)

(declare-fun isEmpty!12411 (List!19710) Bool)

(assert (=> b!1781870 (= res!803213 (not (isEmpty!12411 rules!3447)))))

(declare-fun b!1781871 () Bool)

(declare-fun e!1140412 () Bool)

(declare-fun lt!692749 () Rule!6838)

(assert (=> b!1781871 (= e!1140412 (= (rule!5595 (_1!11017 lt!692735)) lt!692749))))

(declare-fun b!1781872 () Bool)

(declare-fun e!1140400 () Unit!33945)

(declare-fun Unit!33947 () Unit!33945)

(assert (=> b!1781872 (= e!1140400 Unit!33947)))

(declare-fun b!1781873 () Bool)

(declare-fun e!1140399 () Bool)

(declare-fun e!1140409 () Bool)

(assert (=> b!1781873 (= e!1140399 (not e!1140409))))

(declare-fun res!803222 () Bool)

(assert (=> b!1781873 (=> res!803222 e!1140409)))

(declare-fun lt!692736 () List!19709)

(declare-fun matchR!2320 (Regex!4847 List!19709) Bool)

(assert (=> b!1781873 (= res!803222 (not (matchR!2320 (regex!3519 rule!422) lt!692736)))))

(declare-fun ruleValid!1017 (LexerInterface!3148 Rule!6838) Bool)

(assert (=> b!1781873 (ruleValid!1017 thiss!24550 rule!422)))

(declare-fun lt!692752 () Unit!33945)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!540 (LexerInterface!3148 Rule!6838 List!19710) Unit!33945)

(assert (=> b!1781873 (= lt!692752 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!540 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1781874 () Bool)

(declare-fun res!803226 () Bool)

(assert (=> b!1781874 (=> (not res!803226) (not e!1140399))))

(assert (=> b!1781874 (= res!803226 (= (rule!5595 token!523) rule!422))))

(declare-fun b!1781875 () Bool)

(declare-fun Unit!33948 () Unit!33945)

(assert (=> b!1781875 (= e!1140400 Unit!33948)))

(declare-fun lt!692767 () List!19709)

(declare-fun lt!692770 () Unit!33945)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!228 (LexerInterface!3148 List!19710 Rule!6838 List!19709 List!19709 List!19709 Rule!6838) Unit!33945)

(assert (=> b!1781875 (= lt!692770 (lemmaMaxPrefixOutputsMaxPrefix!228 thiss!24550 rules!3447 (rule!5595 (_1!11017 lt!692735)) lt!692762 lt!692767 lt!692736 rule!422))))

(assert (=> b!1781875 false))

(declare-fun b!1781876 () Bool)

(declare-fun e!1140397 () Bool)

(declare-fun e!1140408 () Bool)

(assert (=> b!1781876 (= e!1140397 e!1140408)))

(declare-fun res!803211 () Bool)

(assert (=> b!1781876 (=> res!803211 e!1140408)))

(declare-fun lt!692730 () Bool)

(assert (=> b!1781876 (= res!803211 lt!692730)))

(declare-fun lt!692727 () Unit!33945)

(declare-fun e!1140419 () Unit!33945)

(assert (=> b!1781876 (= lt!692727 e!1140419)))

(declare-fun c!289861 () Bool)

(assert (=> b!1781876 (= c!289861 lt!692730)))

(declare-fun lt!692731 () Int)

(declare-fun lt!692747 () Int)

(assert (=> b!1781876 (= lt!692730 (> lt!692731 lt!692747))))

(declare-fun lt!692764 () BalanceConc!13010)

(declare-fun size!15603 (BalanceConc!13010) Int)

(assert (=> b!1781876 (= lt!692747 (size!15603 lt!692764))))

(declare-fun lt!692754 () Regex!4847)

(assert (=> b!1781876 (matchR!2320 lt!692754 lt!692736)))

(declare-fun lt!692751 () Unit!33945)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!226 (LexerInterface!3148 List!19710 List!19709 Token!6604 Rule!6838 List!19709) Unit!33945)

(assert (=> b!1781876 (= lt!692751 (lemmaMaxPrefixThenMatchesRulesRegex!226 thiss!24550 rules!3447 lt!692736 token!523 rule!422 Nil!19639))))

(declare-fun b!1781877 () Bool)

(declare-fun Unit!33949 () Unit!33945)

(assert (=> b!1781877 (= e!1140419 Unit!33949)))

(declare-fun b!1781878 () Bool)

(declare-fun e!1140413 () Bool)

(assert (=> b!1781878 (= e!1140413 e!1140395)))

(declare-fun res!803224 () Bool)

(assert (=> b!1781878 (=> res!803224 e!1140395)))

(declare-fun isPrefix!1759 (List!19709 List!19709) Bool)

(assert (=> b!1781878 (= res!803224 (not (isPrefix!1759 lt!692762 lt!692767)))))

(declare-fun ++!5343 (List!19709 List!19709) List!19709)

(assert (=> b!1781878 (isPrefix!1759 lt!692762 (++!5343 lt!692762 (_2!11017 lt!692735)))))

(declare-fun lt!692745 () Unit!33945)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1268 (List!19709 List!19709) Unit!33945)

(assert (=> b!1781878 (= lt!692745 (lemmaConcatTwoListThenFirstIsPrefix!1268 lt!692762 (_2!11017 lt!692735)))))

(declare-fun lt!692769 () BalanceConc!13010)

(declare-fun list!7985 (BalanceConc!13010) List!19709)

(assert (=> b!1781878 (= lt!692762 (list!7985 lt!692769))))

(declare-fun charsOf!2168 (Token!6604) BalanceConc!13010)

(assert (=> b!1781878 (= lt!692769 (charsOf!2168 (_1!11017 lt!692735)))))

(declare-fun e!1140421 () Bool)

(assert (=> b!1781878 e!1140421))

(declare-fun res!803208 () Bool)

(assert (=> b!1781878 (=> (not res!803208) (not e!1140421))))

(declare-datatypes ((Option!4060 0))(
  ( (None!4059) (Some!4059 (v!25550 Rule!6838)) )
))
(declare-fun lt!692759 () Option!4060)

(declare-fun isDefined!3403 (Option!4060) Bool)

(assert (=> b!1781878 (= res!803208 (isDefined!3403 lt!692759))))

(declare-fun getRuleFromTag!567 (LexerInterface!3148 List!19710 String!22377) Option!4060)

(assert (=> b!1781878 (= lt!692759 (getRuleFromTag!567 thiss!24550 rules!3447 (tag!3915 (rule!5595 (_1!11017 lt!692735)))))))

(declare-fun lt!692737 () Unit!33945)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!567 (LexerInterface!3148 List!19710 List!19709 Token!6604) Unit!33945)

(assert (=> b!1781878 (= lt!692737 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!567 thiss!24550 rules!3447 lt!692767 (_1!11017 lt!692735)))))

(declare-datatypes ((Option!4061 0))(
  ( (None!4060) (Some!4060 (v!25551 tuple2!19230)) )
))
(declare-fun lt!692732 () Option!4061)

(declare-fun get!6037 (Option!4061) tuple2!19230)

(assert (=> b!1781878 (= lt!692735 (get!6037 lt!692732))))

(declare-fun lt!692738 () Unit!33945)

(declare-fun suffix!1421 () List!19709)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!670 (LexerInterface!3148 List!19710 List!19709 List!19709) Unit!33945)

(assert (=> b!1781878 (= lt!692738 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!670 thiss!24550 rules!3447 lt!692736 suffix!1421))))

(declare-fun maxPrefix!1702 (LexerInterface!3148 List!19710 List!19709) Option!4061)

(assert (=> b!1781878 (= lt!692732 (maxPrefix!1702 thiss!24550 rules!3447 lt!692767))))

(assert (=> b!1781878 (isPrefix!1759 lt!692736 lt!692767)))

(declare-fun lt!692740 () Unit!33945)

(assert (=> b!1781878 (= lt!692740 (lemmaConcatTwoListThenFirstIsPrefix!1268 lt!692736 suffix!1421))))

(assert (=> b!1781878 (= lt!692767 (++!5343 lt!692736 suffix!1421))))

(declare-fun b!1781879 () Bool)

(declare-fun e!1140415 () Bool)

(assert (=> b!1781879 (= e!1140415 e!1140397)))

(declare-fun res!803231 () Bool)

(assert (=> b!1781879 (=> res!803231 e!1140397)))

(declare-fun lt!692765 () List!19709)

(declare-fun lt!692748 () Option!4061)

(assert (=> b!1781879 (= res!803231 (or (not (= lt!692765 (_2!11017 lt!692735))) (not (= lt!692748 (Some!4060 (tuple2!19231 (_1!11017 lt!692735) lt!692765))))))))

(assert (=> b!1781879 (= (_2!11017 lt!692735) lt!692765)))

(declare-fun lt!692763 () Unit!33945)

(declare-fun lemmaSamePrefixThenSameSuffix!870 (List!19709 List!19709 List!19709 List!19709 List!19709) Unit!33945)

(assert (=> b!1781879 (= lt!692763 (lemmaSamePrefixThenSameSuffix!870 lt!692762 (_2!11017 lt!692735) lt!692762 lt!692765 lt!692767))))

(declare-fun getSuffix!926 (List!19709 List!19709) List!19709)

(assert (=> b!1781879 (= lt!692765 (getSuffix!926 lt!692767 lt!692762))))

(declare-fun lt!692768 () Int)

(declare-fun lt!692753 () TokenValue!3609)

(assert (=> b!1781879 (= lt!692748 (Some!4060 (tuple2!19231 (Token!6605 lt!692753 (rule!5595 (_1!11017 lt!692735)) lt!692768 lt!692762) (_2!11017 lt!692735))))))

(declare-fun maxPrefixOneRule!1071 (LexerInterface!3148 Rule!6838 List!19709) Option!4061)

(assert (=> b!1781879 (= lt!692748 (maxPrefixOneRule!1071 thiss!24550 (rule!5595 (_1!11017 lt!692735)) lt!692767))))

(declare-fun size!15604 (List!19709) Int)

(assert (=> b!1781879 (= lt!692768 (size!15604 lt!692762))))

(declare-fun apply!5319 (TokenValueInjection!6878 BalanceConc!13010) TokenValue!3609)

(declare-fun seqFromList!2488 (List!19709) BalanceConc!13010)

(assert (=> b!1781879 (= lt!692753 (apply!5319 (transformation!3519 (rule!5595 (_1!11017 lt!692735))) (seqFromList!2488 lt!692762)))))

(declare-fun lt!692756 () Unit!33945)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!449 (LexerInterface!3148 List!19710 List!19709 List!19709 List!19709 Rule!6838) Unit!33945)

(assert (=> b!1781879 (= lt!692756 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!449 thiss!24550 rules!3447 lt!692762 lt!692767 (_2!11017 lt!692735) (rule!5595 (_1!11017 lt!692735))))))

(declare-fun b!1781880 () Bool)

(declare-fun e!1140422 () Bool)

(assert (=> b!1781880 (= e!1140410 e!1140422)))

(declare-fun res!803210 () Bool)

(assert (=> b!1781880 (=> res!803210 e!1140422)))

(declare-fun dynLambda!9652 (Int TokenValue!3609) BalanceConc!13010)

(declare-fun dynLambda!9653 (Int BalanceConc!13010) TokenValue!3609)

(assert (=> b!1781880 (= res!803210 (not (= (list!7985 (dynLambda!9652 (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) (dynLambda!9653 (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) lt!692769))) lt!692762)))))

(declare-fun lt!692757 () Unit!33945)

(declare-fun lemmaSemiInverse!657 (TokenValueInjection!6878 BalanceConc!13010) Unit!33945)

(assert (=> b!1781880 (= lt!692757 (lemmaSemiInverse!657 (transformation!3519 (rule!5595 (_1!11017 lt!692735))) lt!692769))))

(declare-fun b!1781881 () Bool)

(declare-fun res!803225 () Bool)

(assert (=> b!1781881 (=> res!803225 e!1140409)))

(assert (=> b!1781881 (= res!803225 (isEmpty!12410 suffix!1421))))

(declare-fun b!1781882 () Bool)

(assert (=> b!1781882 (= e!1140421 e!1140412)))

(declare-fun res!803219 () Bool)

(assert (=> b!1781882 (=> (not res!803219) (not e!1140412))))

(assert (=> b!1781882 (= res!803219 (matchR!2320 (regex!3519 lt!692749) (list!7985 (charsOf!2168 (_1!11017 lt!692735)))))))

(declare-fun get!6038 (Option!4060) Rule!6838)

(assert (=> b!1781882 (= lt!692749 (get!6038 lt!692759))))

(declare-fun b!1781883 () Bool)

(assert (=> b!1781883 (= e!1140422 e!1140415)))

(declare-fun res!803218 () Bool)

(assert (=> b!1781883 (=> res!803218 e!1140415)))

(declare-fun lt!692733 () TokenValue!3609)

(assert (=> b!1781883 (= res!803218 (not (= lt!692732 (Some!4060 (tuple2!19231 (Token!6605 lt!692733 (rule!5595 (_1!11017 lt!692735)) lt!692731 lt!692762) (_2!11017 lt!692735))))))))

(assert (=> b!1781883 (= lt!692731 (size!15603 lt!692769))))

(assert (=> b!1781883 (= lt!692733 (apply!5319 (transformation!3519 (rule!5595 (_1!11017 lt!692735))) lt!692769))))

(declare-fun lt!692766 () Unit!33945)

(declare-fun lemmaCharactersSize!577 (Token!6604) Unit!33945)

(assert (=> b!1781883 (= lt!692766 (lemmaCharactersSize!577 (_1!11017 lt!692735)))))

(declare-fun lt!692729 () Unit!33945)

(declare-fun lemmaEqSameImage!430 (TokenValueInjection!6878 BalanceConc!13010 BalanceConc!13010) Unit!33945)

(assert (=> b!1781883 (= lt!692729 (lemmaEqSameImage!430 (transformation!3519 (rule!5595 (_1!11017 lt!692735))) lt!692769 (seqFromList!2488 (originalCharacters!4333 (_1!11017 lt!692735)))))))

(declare-fun e!1140406 () Bool)

(assert (=> b!1781884 (= e!1140406 (and tp!504440 tp!504439))))

(declare-fun b!1781885 () Bool)

(declare-fun Unit!33950 () Unit!33945)

(assert (=> b!1781885 (= e!1140419 Unit!33950)))

(declare-fun lt!692758 () Unit!33945)

(assert (=> b!1781885 (= lt!692758 (lemmaMaxPrefixThenMatchesRulesRegex!226 thiss!24550 rules!3447 lt!692767 (_1!11017 lt!692735) (rule!5595 (_1!11017 lt!692735)) (_2!11017 lt!692735)))))

(assert (=> b!1781885 (matchR!2320 lt!692754 lt!692762)))

(declare-fun lt!692728 () List!19709)

(assert (=> b!1781885 (= lt!692728 (getSuffix!926 lt!692767 lt!692736))))

(declare-fun lt!692761 () Unit!33945)

(assert (=> b!1781885 (= lt!692761 (lemmaSamePrefixThenSameSuffix!870 lt!692736 suffix!1421 lt!692736 lt!692728 lt!692767))))

(assert (=> b!1781885 (= suffix!1421 lt!692728)))

(declare-fun lt!692742 () Unit!33945)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!295 (List!19709 List!19709) Unit!33945)

(assert (=> b!1781885 (= lt!692742 (lemmaAddHeadSuffixToPrefixStillPrefix!295 lt!692736 lt!692767))))

(declare-fun head!4166 (List!19709) C!9868)

(assert (=> b!1781885 (isPrefix!1759 (++!5343 lt!692736 (Cons!19639 (head!4166 lt!692728) Nil!19639)) lt!692767)))

(declare-fun lt!692755 () List!19709)

(declare-fun lt!692739 () Unit!33945)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!167 (List!19709 List!19709 List!19709) Unit!33945)

(assert (=> b!1781885 (= lt!692739 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!167 lt!692762 lt!692755 lt!692767))))

(assert (=> b!1781885 (isPrefix!1759 lt!692755 lt!692762)))

(declare-fun lt!692743 () Unit!33945)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!158 (Regex!4847 List!19709 List!19709) Unit!33945)

(assert (=> b!1781885 (= lt!692743 (lemmaNotPrefixMatchThenCannotMatchLonger!158 lt!692754 lt!692755 lt!692762))))

(assert (=> b!1781885 false))

(declare-fun e!1140411 () Bool)

(assert (=> b!1781886 (= e!1140411 (and tp!504450 tp!504441))))

(declare-fun b!1781887 () Bool)

(declare-fun e!1140404 () Bool)

(assert (=> b!1781887 (= e!1140404 e!1140423)))

(declare-fun res!803221 () Bool)

(assert (=> b!1781887 (=> res!803221 e!1140423)))

(assert (=> b!1781887 (= res!803221 (= (rule!5595 (_1!11017 lt!692735)) (rule!5595 token!523)))))

(assert (=> b!1781887 (= suffix!1421 (_2!11017 lt!692735))))

(declare-fun lt!692746 () Unit!33945)

(assert (=> b!1781887 (= lt!692746 (lemmaSamePrefixThenSameSuffix!870 lt!692736 suffix!1421 lt!692736 (_2!11017 lt!692735) lt!692767))))

(assert (=> b!1781887 (= lt!692762 lt!692736)))

(declare-fun lt!692760 () Unit!33945)

(declare-fun lemmaIsPrefixSameLengthThenSameList!255 (List!19709 List!19709 List!19709) Unit!33945)

(assert (=> b!1781887 (= lt!692760 (lemmaIsPrefixSameLengthThenSameList!255 lt!692762 lt!692736 lt!692767))))

(declare-fun b!1781888 () Bool)

(declare-fun tp!504443 () Bool)

(assert (=> b!1781888 (= e!1140416 (and tp!504443 (inv!25558 (tag!3915 (rule!5595 token!523))) (inv!25564 (transformation!3519 (rule!5595 token!523))) e!1140406))))

(declare-fun b!1781889 () Bool)

(declare-fun tp_is_empty!7937 () Bool)

(declare-fun tp!504449 () Bool)

(assert (=> b!1781889 (= e!1140401 (and tp_is_empty!7937 tp!504449))))

(declare-fun b!1781890 () Bool)

(declare-fun e!1140417 () Bool)

(declare-fun tp!504447 () Bool)

(assert (=> b!1781890 (= e!1140424 (and e!1140417 tp!504447))))

(declare-fun b!1781891 () Bool)

(declare-fun e!1140405 () Bool)

(assert (=> b!1781891 (= e!1140407 e!1140405)))

(declare-fun res!803232 () Bool)

(assert (=> b!1781891 (=> (not res!803232) (not e!1140405))))

(declare-fun lt!692744 () Option!4061)

(declare-fun isDefined!3404 (Option!4061) Bool)

(assert (=> b!1781891 (= res!803232 (isDefined!3404 lt!692744))))

(assert (=> b!1781891 (= lt!692744 (maxPrefix!1702 thiss!24550 rules!3447 lt!692736))))

(assert (=> b!1781891 (= lt!692736 (list!7985 lt!692764))))

(assert (=> b!1781891 (= lt!692764 (charsOf!2168 token!523))))

(declare-fun b!1781892 () Bool)

(declare-fun tp!504442 () Bool)

(assert (=> b!1781892 (= e!1140417 (and tp!504442 (inv!25558 (tag!3915 (h!25041 rules!3447))) (inv!25564 (transformation!3519 (h!25041 rules!3447))) e!1140411))))

(declare-fun b!1781893 () Bool)

(declare-fun res!803207 () Bool)

(assert (=> b!1781893 (=> res!803207 e!1140395)))

(assert (=> b!1781893 (= res!803207 (not (matchR!2320 (regex!3519 (rule!5595 (_1!11017 lt!692735))) lt!692762)))))

(declare-fun b!1781894 () Bool)

(declare-fun res!803229 () Bool)

(assert (=> b!1781894 (=> res!803229 e!1140423)))

(declare-fun contains!3551 (List!19710 Rule!6838) Bool)

(assert (=> b!1781894 (= res!803229 (not (contains!3551 rules!3447 (rule!5595 (_1!11017 lt!692735)))))))

(declare-fun b!1781895 () Bool)

(assert (=> b!1781895 (= e!1140409 e!1140413)))

(declare-fun res!803230 () Bool)

(assert (=> b!1781895 (=> res!803230 e!1140413)))

(declare-fun prefixMatch!730 (Regex!4847 List!19709) Bool)

(assert (=> b!1781895 (= res!803230 (prefixMatch!730 lt!692754 lt!692755))))

(assert (=> b!1781895 (= lt!692755 (++!5343 lt!692736 (Cons!19639 (head!4166 suffix!1421) Nil!19639)))))

(declare-fun rulesRegex!875 (LexerInterface!3148 List!19710) Regex!4847)

(assert (=> b!1781895 (= lt!692754 (rulesRegex!875 thiss!24550 rules!3447))))

(declare-fun b!1781896 () Bool)

(assert (=> b!1781896 (= e!1140408 e!1140404)))

(declare-fun res!803227 () Bool)

(assert (=> b!1781896 (=> res!803227 e!1140404)))

(assert (=> b!1781896 (= res!803227 (not (= lt!692731 lt!692747)))))

(declare-fun lt!692741 () Unit!33945)

(assert (=> b!1781896 (= lt!692741 e!1140400)))

(declare-fun c!289860 () Bool)

(assert (=> b!1781896 (= c!289860 (< lt!692731 lt!692747))))

(declare-fun b!1781897 () Bool)

(declare-fun res!803215 () Bool)

(assert (=> b!1781897 (=> res!803215 e!1140423)))

(declare-fun getIndex!184 (List!19710 Rule!6838) Int)

(assert (=> b!1781897 (= res!803215 (>= (getIndex!184 rules!3447 (rule!5595 token!523)) (getIndex!184 rules!3447 (rule!5595 (_1!11017 lt!692735)))))))

(declare-fun b!1781898 () Bool)

(declare-fun res!803220 () Bool)

(assert (=> b!1781898 (=> res!803220 e!1140423)))

(assert (=> b!1781898 (= res!803220 (not (contains!3551 rules!3447 (rule!5595 token!523))))))

(declare-fun b!1781899 () Bool)

(declare-fun res!803228 () Bool)

(assert (=> b!1781899 (=> res!803228 e!1140422)))

(assert (=> b!1781899 (= res!803228 (not (= lt!692769 (dynLambda!9652 (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) (value!109964 (_1!11017 lt!692735))))))))

(declare-fun b!1781900 () Bool)

(declare-fun res!803216 () Bool)

(assert (=> b!1781900 (=> (not res!803216) (not e!1140407))))

(declare-fun rulesInvariant!2817 (LexerInterface!3148 List!19710) Bool)

(assert (=> b!1781900 (= res!803216 (rulesInvariant!2817 thiss!24550 rules!3447))))

(declare-fun b!1781901 () Bool)

(declare-fun res!803212 () Bool)

(assert (=> b!1781901 (=> (not res!803212) (not e!1140407))))

(assert (=> b!1781901 (= res!803212 (contains!3551 rules!3447 rule!422))))

(declare-fun b!1781902 () Bool)

(declare-fun res!803217 () Bool)

(assert (=> b!1781902 (=> (not res!803217) (not e!1140399))))

(declare-fun lt!692750 () tuple2!19230)

(assert (=> b!1781902 (= res!803217 (isEmpty!12410 (_2!11017 lt!692750)))))

(declare-fun b!1781903 () Bool)

(assert (=> b!1781903 (= e!1140405 e!1140399)))

(declare-fun res!803209 () Bool)

(assert (=> b!1781903 (=> (not res!803209) (not e!1140399))))

(assert (=> b!1781903 (= res!803209 (= (_1!11017 lt!692750) token!523))))

(assert (=> b!1781903 (= lt!692750 (get!6037 lt!692744))))

(assert (= (and start!177290 res!803223) b!1781870))

(assert (= (and b!1781870 res!803213) b!1781900))

(assert (= (and b!1781900 res!803216) b!1781901))

(assert (= (and b!1781901 res!803212) b!1781891))

(assert (= (and b!1781891 res!803232) b!1781903))

(assert (= (and b!1781903 res!803209) b!1781902))

(assert (= (and b!1781902 res!803217) b!1781874))

(assert (= (and b!1781874 res!803226) b!1781873))

(assert (= (and b!1781873 (not res!803222)) b!1781881))

(assert (= (and b!1781881 (not res!803225)) b!1781895))

(assert (= (and b!1781895 (not res!803230)) b!1781878))

(assert (= (and b!1781878 res!803208) b!1781882))

(assert (= (and b!1781882 res!803219) b!1781871))

(assert (= (and b!1781878 (not res!803224)) b!1781893))

(assert (= (and b!1781893 (not res!803207)) b!1781867))

(assert (= (and b!1781867 (not res!803214)) b!1781880))

(assert (= (and b!1781880 (not res!803210)) b!1781899))

(assert (= (and b!1781899 (not res!803228)) b!1781883))

(assert (= (and b!1781883 (not res!803218)) b!1781879))

(assert (= (and b!1781879 (not res!803231)) b!1781876))

(assert (= (and b!1781876 c!289861) b!1781885))

(assert (= (and b!1781876 (not c!289861)) b!1781877))

(assert (= (and b!1781876 (not res!803211)) b!1781896))

(assert (= (and b!1781896 c!289860) b!1781875))

(assert (= (and b!1781896 (not c!289860)) b!1781872))

(assert (= (and b!1781896 (not res!803227)) b!1781887))

(assert (= (and b!1781887 (not res!803221)) b!1781897))

(assert (= (and b!1781897 (not res!803215)) b!1781894))

(assert (= (and b!1781894 (not res!803229)) b!1781898))

(assert (= (and b!1781898 (not res!803220)) b!1781868))

(assert (= (and start!177290 ((_ is Cons!19639) suffix!1421)) b!1781889))

(assert (= b!1781869 b!1781865))

(assert (= start!177290 b!1781869))

(assert (= b!1781888 b!1781884))

(assert (= b!1781866 b!1781888))

(assert (= start!177290 b!1781866))

(assert (= b!1781892 b!1781886))

(assert (= b!1781890 b!1781892))

(assert (= (and start!177290 ((_ is Cons!19640) rules!3447)) b!1781890))

(declare-fun b_lambda!58351 () Bool)

(assert (=> (not b_lambda!58351) (not b!1781880)))

(declare-fun t!166634 () Bool)

(declare-fun tb!108335 () Bool)

(assert (=> (and b!1781886 (= (toChars!4905 (transformation!3519 (h!25041 rules!3447))) (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735))))) t!166634) tb!108335))

(declare-fun b!1781919 () Bool)

(declare-fun e!1140436 () Bool)

(declare-fun tp!504453 () Bool)

(declare-fun inv!25565 (Conc!6533) Bool)

(assert (=> b!1781919 (= e!1140436 (and (inv!25565 (c!289863 (dynLambda!9652 (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) (dynLambda!9653 (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) lt!692769)))) tp!504453))))

(declare-fun result!130338 () Bool)

(declare-fun inv!25566 (BalanceConc!13010) Bool)

(assert (=> tb!108335 (= result!130338 (and (inv!25566 (dynLambda!9652 (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) (dynLambda!9653 (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) lt!692769))) e!1140436))))

(assert (= tb!108335 b!1781919))

(declare-fun m!2204201 () Bool)

(assert (=> b!1781919 m!2204201))

(declare-fun m!2204203 () Bool)

(assert (=> tb!108335 m!2204203))

(assert (=> b!1781880 t!166634))

(declare-fun b_and!136699 () Bool)

(assert (= b_and!136689 (and (=> t!166634 result!130338) b_and!136699)))

(declare-fun tb!108337 () Bool)

(declare-fun t!166636 () Bool)

(assert (=> (and b!1781865 (= (toChars!4905 (transformation!3519 rule!422)) (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735))))) t!166636) tb!108337))

(declare-fun result!130342 () Bool)

(assert (= result!130342 result!130338))

(assert (=> b!1781880 t!166636))

(declare-fun b_and!136701 () Bool)

(assert (= b_and!136693 (and (=> t!166636 result!130342) b_and!136701)))

(declare-fun t!166638 () Bool)

(declare-fun tb!108339 () Bool)

(assert (=> (and b!1781884 (= (toChars!4905 (transformation!3519 (rule!5595 token!523))) (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735))))) t!166638) tb!108339))

(declare-fun result!130344 () Bool)

(assert (= result!130344 result!130338))

(assert (=> b!1781880 t!166638))

(declare-fun b_and!136703 () Bool)

(assert (= b_and!136697 (and (=> t!166638 result!130344) b_and!136703)))

(declare-fun b_lambda!58353 () Bool)

(assert (=> (not b_lambda!58353) (not b!1781880)))

(declare-fun t!166640 () Bool)

(declare-fun tb!108341 () Bool)

(assert (=> (and b!1781886 (= (toValue!5046 (transformation!3519 (h!25041 rules!3447))) (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735))))) t!166640) tb!108341))

(declare-fun result!130346 () Bool)

(assert (=> tb!108341 (= result!130346 (inv!21 (dynLambda!9653 (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) lt!692769)))))

(declare-fun m!2204205 () Bool)

(assert (=> tb!108341 m!2204205))

(assert (=> b!1781880 t!166640))

(declare-fun b_and!136705 () Bool)

(assert (= b_and!136687 (and (=> t!166640 result!130346) b_and!136705)))

(declare-fun tb!108343 () Bool)

(declare-fun t!166642 () Bool)

(assert (=> (and b!1781865 (= (toValue!5046 (transformation!3519 rule!422)) (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735))))) t!166642) tb!108343))

(declare-fun result!130350 () Bool)

(assert (= result!130350 result!130346))

(assert (=> b!1781880 t!166642))

(declare-fun b_and!136707 () Bool)

(assert (= b_and!136691 (and (=> t!166642 result!130350) b_and!136707)))

(declare-fun tb!108345 () Bool)

(declare-fun t!166644 () Bool)

(assert (=> (and b!1781884 (= (toValue!5046 (transformation!3519 (rule!5595 token!523))) (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735))))) t!166644) tb!108345))

(declare-fun result!130352 () Bool)

(assert (= result!130352 result!130346))

(assert (=> b!1781880 t!166644))

(declare-fun b_and!136709 () Bool)

(assert (= b_and!136695 (and (=> t!166644 result!130352) b_and!136709)))

(declare-fun b_lambda!58355 () Bool)

(assert (=> (not b_lambda!58355) (not b!1781899)))

(declare-fun tb!108347 () Bool)

(declare-fun t!166646 () Bool)

(assert (=> (and b!1781886 (= (toChars!4905 (transformation!3519 (h!25041 rules!3447))) (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735))))) t!166646) tb!108347))

(declare-fun b!1781922 () Bool)

(declare-fun e!1140440 () Bool)

(declare-fun tp!504454 () Bool)

(assert (=> b!1781922 (= e!1140440 (and (inv!25565 (c!289863 (dynLambda!9652 (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) (value!109964 (_1!11017 lt!692735))))) tp!504454))))

(declare-fun result!130354 () Bool)

(assert (=> tb!108347 (= result!130354 (and (inv!25566 (dynLambda!9652 (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) (value!109964 (_1!11017 lt!692735)))) e!1140440))))

(assert (= tb!108347 b!1781922))

(declare-fun m!2204207 () Bool)

(assert (=> b!1781922 m!2204207))

(declare-fun m!2204209 () Bool)

(assert (=> tb!108347 m!2204209))

(assert (=> b!1781899 t!166646))

(declare-fun b_and!136711 () Bool)

(assert (= b_and!136699 (and (=> t!166646 result!130354) b_and!136711)))

(declare-fun t!166648 () Bool)

(declare-fun tb!108349 () Bool)

(assert (=> (and b!1781865 (= (toChars!4905 (transformation!3519 rule!422)) (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735))))) t!166648) tb!108349))

(declare-fun result!130356 () Bool)

(assert (= result!130356 result!130354))

(assert (=> b!1781899 t!166648))

(declare-fun b_and!136713 () Bool)

(assert (= b_and!136701 (and (=> t!166648 result!130356) b_and!136713)))

(declare-fun t!166650 () Bool)

(declare-fun tb!108351 () Bool)

(assert (=> (and b!1781884 (= (toChars!4905 (transformation!3519 (rule!5595 token!523))) (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735))))) t!166650) tb!108351))

(declare-fun result!130358 () Bool)

(assert (= result!130358 result!130354))

(assert (=> b!1781899 t!166650))

(declare-fun b_and!136715 () Bool)

(assert (= b_and!136703 (and (=> t!166650 result!130358) b_and!136715)))

(declare-fun m!2204211 () Bool)

(assert (=> b!1781897 m!2204211))

(declare-fun m!2204213 () Bool)

(assert (=> b!1781897 m!2204213))

(declare-fun m!2204215 () Bool)

(assert (=> b!1781880 m!2204215))

(assert (=> b!1781880 m!2204215))

(declare-fun m!2204217 () Bool)

(assert (=> b!1781880 m!2204217))

(assert (=> b!1781880 m!2204217))

(declare-fun m!2204219 () Bool)

(assert (=> b!1781880 m!2204219))

(declare-fun m!2204221 () Bool)

(assert (=> b!1781880 m!2204221))

(declare-fun m!2204223 () Bool)

(assert (=> b!1781903 m!2204223))

(declare-fun m!2204225 () Bool)

(assert (=> b!1781869 m!2204225))

(declare-fun m!2204227 () Bool)

(assert (=> b!1781869 m!2204227))

(declare-fun m!2204229 () Bool)

(assert (=> b!1781881 m!2204229))

(declare-fun m!2204231 () Bool)

(assert (=> b!1781868 m!2204231))

(declare-fun m!2204233 () Bool)

(assert (=> b!1781901 m!2204233))

(declare-fun m!2204235 () Bool)

(assert (=> b!1781876 m!2204235))

(declare-fun m!2204237 () Bool)

(assert (=> b!1781876 m!2204237))

(declare-fun m!2204239 () Bool)

(assert (=> b!1781876 m!2204239))

(declare-fun m!2204241 () Bool)

(assert (=> b!1781883 m!2204241))

(declare-fun m!2204243 () Bool)

(assert (=> b!1781883 m!2204243))

(declare-fun m!2204245 () Bool)

(assert (=> b!1781883 m!2204245))

(assert (=> b!1781883 m!2204245))

(declare-fun m!2204247 () Bool)

(assert (=> b!1781883 m!2204247))

(declare-fun m!2204249 () Bool)

(assert (=> b!1781883 m!2204249))

(declare-fun m!2204251 () Bool)

(assert (=> b!1781867 m!2204251))

(declare-fun m!2204253 () Bool)

(assert (=> b!1781867 m!2204253))

(declare-fun m!2204255 () Bool)

(assert (=> b!1781900 m!2204255))

(declare-fun m!2204257 () Bool)

(assert (=> b!1781878 m!2204257))

(declare-fun m!2204259 () Bool)

(assert (=> b!1781878 m!2204259))

(declare-fun m!2204261 () Bool)

(assert (=> b!1781878 m!2204261))

(declare-fun m!2204263 () Bool)

(assert (=> b!1781878 m!2204263))

(declare-fun m!2204265 () Bool)

(assert (=> b!1781878 m!2204265))

(declare-fun m!2204267 () Bool)

(assert (=> b!1781878 m!2204267))

(declare-fun m!2204269 () Bool)

(assert (=> b!1781878 m!2204269))

(declare-fun m!2204271 () Bool)

(assert (=> b!1781878 m!2204271))

(declare-fun m!2204273 () Bool)

(assert (=> b!1781878 m!2204273))

(declare-fun m!2204275 () Bool)

(assert (=> b!1781878 m!2204275))

(declare-fun m!2204277 () Bool)

(assert (=> b!1781878 m!2204277))

(declare-fun m!2204279 () Bool)

(assert (=> b!1781878 m!2204279))

(assert (=> b!1781878 m!2204269))

(declare-fun m!2204281 () Bool)

(assert (=> b!1781878 m!2204281))

(declare-fun m!2204283 () Bool)

(assert (=> b!1781878 m!2204283))

(declare-fun m!2204285 () Bool)

(assert (=> b!1781878 m!2204285))

(declare-fun m!2204287 () Bool)

(assert (=> b!1781898 m!2204287))

(declare-fun m!2204289 () Bool)

(assert (=> b!1781891 m!2204289))

(declare-fun m!2204291 () Bool)

(assert (=> b!1781891 m!2204291))

(declare-fun m!2204293 () Bool)

(assert (=> b!1781891 m!2204293))

(declare-fun m!2204295 () Bool)

(assert (=> b!1781891 m!2204295))

(declare-fun m!2204297 () Bool)

(assert (=> start!177290 m!2204297))

(declare-fun m!2204299 () Bool)

(assert (=> b!1781885 m!2204299))

(declare-fun m!2204301 () Bool)

(assert (=> b!1781885 m!2204301))

(declare-fun m!2204303 () Bool)

(assert (=> b!1781885 m!2204303))

(declare-fun m!2204305 () Bool)

(assert (=> b!1781885 m!2204305))

(assert (=> b!1781885 m!2204303))

(declare-fun m!2204307 () Bool)

(assert (=> b!1781885 m!2204307))

(declare-fun m!2204309 () Bool)

(assert (=> b!1781885 m!2204309))

(declare-fun m!2204311 () Bool)

(assert (=> b!1781885 m!2204311))

(declare-fun m!2204313 () Bool)

(assert (=> b!1781885 m!2204313))

(declare-fun m!2204315 () Bool)

(assert (=> b!1781885 m!2204315))

(declare-fun m!2204317 () Bool)

(assert (=> b!1781885 m!2204317))

(declare-fun m!2204319 () Bool)

(assert (=> b!1781885 m!2204319))

(assert (=> b!1781882 m!2204279))

(assert (=> b!1781882 m!2204279))

(declare-fun m!2204321 () Bool)

(assert (=> b!1781882 m!2204321))

(assert (=> b!1781882 m!2204321))

(declare-fun m!2204323 () Bool)

(assert (=> b!1781882 m!2204323))

(declare-fun m!2204325 () Bool)

(assert (=> b!1781882 m!2204325))

(declare-fun m!2204327 () Bool)

(assert (=> b!1781893 m!2204327))

(declare-fun m!2204329 () Bool)

(assert (=> b!1781888 m!2204329))

(declare-fun m!2204331 () Bool)

(assert (=> b!1781888 m!2204331))

(declare-fun m!2204333 () Bool)

(assert (=> b!1781902 m!2204333))

(declare-fun m!2204335 () Bool)

(assert (=> b!1781895 m!2204335))

(declare-fun m!2204337 () Bool)

(assert (=> b!1781895 m!2204337))

(declare-fun m!2204339 () Bool)

(assert (=> b!1781895 m!2204339))

(declare-fun m!2204341 () Bool)

(assert (=> b!1781895 m!2204341))

(declare-fun m!2204343 () Bool)

(assert (=> b!1781870 m!2204343))

(declare-fun m!2204345 () Bool)

(assert (=> b!1781894 m!2204345))

(declare-fun m!2204347 () Bool)

(assert (=> b!1781873 m!2204347))

(declare-fun m!2204349 () Bool)

(assert (=> b!1781873 m!2204349))

(declare-fun m!2204351 () Bool)

(assert (=> b!1781873 m!2204351))

(declare-fun m!2204353 () Bool)

(assert (=> b!1781892 m!2204353))

(declare-fun m!2204355 () Bool)

(assert (=> b!1781892 m!2204355))

(declare-fun m!2204357 () Bool)

(assert (=> b!1781875 m!2204357))

(declare-fun m!2204359 () Bool)

(assert (=> b!1781866 m!2204359))

(declare-fun m!2204361 () Bool)

(assert (=> b!1781899 m!2204361))

(declare-fun m!2204363 () Bool)

(assert (=> b!1781879 m!2204363))

(declare-fun m!2204365 () Bool)

(assert (=> b!1781879 m!2204365))

(declare-fun m!2204367 () Bool)

(assert (=> b!1781879 m!2204367))

(assert (=> b!1781879 m!2204367))

(declare-fun m!2204369 () Bool)

(assert (=> b!1781879 m!2204369))

(declare-fun m!2204371 () Bool)

(assert (=> b!1781879 m!2204371))

(declare-fun m!2204373 () Bool)

(assert (=> b!1781879 m!2204373))

(declare-fun m!2204375 () Bool)

(assert (=> b!1781879 m!2204375))

(declare-fun m!2204377 () Bool)

(assert (=> b!1781887 m!2204377))

(declare-fun m!2204379 () Bool)

(assert (=> b!1781887 m!2204379))

(check-sat (not b!1781880) (not b!1781890) (not b!1781903) (not b_next!50187) (not b_lambda!58351) (not b_next!50185) tp_is_empty!7937 (not b!1781875) (not b_next!50191) (not b!1781878) (not b!1781922) (not b!1781868) (not b!1781867) b_and!136711 (not b!1781888) (not start!177290) (not b!1781882) (not b!1781887) (not b_next!50193) (not b!1781866) (not b!1781900) (not b!1781895) (not tb!108347) (not tb!108341) (not b!1781894) (not b!1781885) (not tb!108335) (not b!1781870) (not b!1781893) (not b!1781898) (not b!1781876) (not b_lambda!58353) (not b!1781897) (not b!1781891) (not b!1781869) (not b!1781901) (not b_next!50189) b_and!136715 (not b!1781892) (not b_next!50183) (not b!1781883) b_and!136707 (not b!1781902) (not b!1781873) b_and!136713 (not b_lambda!58355) b_and!136705 (not b!1781919) (not b!1781881) b_and!136709 (not b!1781889) (not b!1781879))
(check-sat (not b_next!50193) (not b_next!50187) (not b_next!50185) (not b_next!50191) b_and!136709 b_and!136711 (not b_next!50189) b_and!136715 (not b_next!50183) b_and!136707 b_and!136713 b_and!136705)
(get-model)

(declare-fun d!544062 () Bool)

(declare-fun c!289887 () Bool)

(assert (=> d!544062 (= c!289887 (isEmpty!12410 lt!692755))))

(declare-fun e!1140498 () Bool)

(assert (=> d!544062 (= (prefixMatch!730 lt!692754 lt!692755) e!1140498)))

(declare-fun b!1782010 () Bool)

(declare-fun lostCause!602 (Regex!4847) Bool)

(assert (=> b!1782010 (= e!1140498 (not (lostCause!602 lt!692754)))))

(declare-fun b!1782011 () Bool)

(declare-fun derivativeStep!1260 (Regex!4847 C!9868) Regex!4847)

(declare-fun tail!2667 (List!19709) List!19709)

(assert (=> b!1782011 (= e!1140498 (prefixMatch!730 (derivativeStep!1260 lt!692754 (head!4166 lt!692755)) (tail!2667 lt!692755)))))

(assert (= (and d!544062 c!289887) b!1782010))

(assert (= (and d!544062 (not c!289887)) b!1782011))

(declare-fun m!2204491 () Bool)

(assert (=> d!544062 m!2204491))

(declare-fun m!2204493 () Bool)

(assert (=> b!1782010 m!2204493))

(declare-fun m!2204495 () Bool)

(assert (=> b!1782011 m!2204495))

(assert (=> b!1782011 m!2204495))

(declare-fun m!2204497 () Bool)

(assert (=> b!1782011 m!2204497))

(declare-fun m!2204499 () Bool)

(assert (=> b!1782011 m!2204499))

(assert (=> b!1782011 m!2204497))

(assert (=> b!1782011 m!2204499))

(declare-fun m!2204501 () Bool)

(assert (=> b!1782011 m!2204501))

(assert (=> b!1781895 d!544062))

(declare-fun d!544064 () Bool)

(declare-fun e!1140503 () Bool)

(assert (=> d!544064 e!1140503))

(declare-fun res!803271 () Bool)

(assert (=> d!544064 (=> (not res!803271) (not e!1140503))))

(declare-fun lt!692802 () List!19709)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2858 (List!19709) (InoxSet C!9868))

(assert (=> d!544064 (= res!803271 (= (content!2858 lt!692802) ((_ map or) (content!2858 lt!692736) (content!2858 (Cons!19639 (head!4166 suffix!1421) Nil!19639)))))))

(declare-fun e!1140504 () List!19709)

(assert (=> d!544064 (= lt!692802 e!1140504)))

(declare-fun c!289890 () Bool)

(assert (=> d!544064 (= c!289890 ((_ is Nil!19639) lt!692736))))

(assert (=> d!544064 (= (++!5343 lt!692736 (Cons!19639 (head!4166 suffix!1421) Nil!19639)) lt!692802)))

(declare-fun b!1782021 () Bool)

(assert (=> b!1782021 (= e!1140504 (Cons!19639 (h!25040 lt!692736) (++!5343 (t!166652 lt!692736) (Cons!19639 (head!4166 suffix!1421) Nil!19639))))))

(declare-fun b!1782022 () Bool)

(declare-fun res!803270 () Bool)

(assert (=> b!1782022 (=> (not res!803270) (not e!1140503))))

(assert (=> b!1782022 (= res!803270 (= (size!15604 lt!692802) (+ (size!15604 lt!692736) (size!15604 (Cons!19639 (head!4166 suffix!1421) Nil!19639)))))))

(declare-fun b!1782020 () Bool)

(assert (=> b!1782020 (= e!1140504 (Cons!19639 (head!4166 suffix!1421) Nil!19639))))

(declare-fun b!1782023 () Bool)

(assert (=> b!1782023 (= e!1140503 (or (not (= (Cons!19639 (head!4166 suffix!1421) Nil!19639) Nil!19639)) (= lt!692802 lt!692736)))))

(assert (= (and d!544064 c!289890) b!1782020))

(assert (= (and d!544064 (not c!289890)) b!1782021))

(assert (= (and d!544064 res!803271) b!1782022))

(assert (= (and b!1782022 res!803270) b!1782023))

(declare-fun m!2204503 () Bool)

(assert (=> d!544064 m!2204503))

(declare-fun m!2204505 () Bool)

(assert (=> d!544064 m!2204505))

(declare-fun m!2204507 () Bool)

(assert (=> d!544064 m!2204507))

(declare-fun m!2204509 () Bool)

(assert (=> b!1782021 m!2204509))

(declare-fun m!2204511 () Bool)

(assert (=> b!1782022 m!2204511))

(declare-fun m!2204513 () Bool)

(assert (=> b!1782022 m!2204513))

(declare-fun m!2204515 () Bool)

(assert (=> b!1782022 m!2204515))

(assert (=> b!1781895 d!544064))

(declare-fun d!544066 () Bool)

(assert (=> d!544066 (= (head!4166 suffix!1421) (h!25040 suffix!1421))))

(assert (=> b!1781895 d!544066))

(declare-fun d!544068 () Bool)

(declare-fun lt!692805 () Unit!33945)

(declare-fun lemma!415 (List!19710 LexerInterface!3148 List!19710) Unit!33945)

(assert (=> d!544068 (= lt!692805 (lemma!415 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!70698 () Int)

(declare-datatypes ((List!19713 0))(
  ( (Nil!19643) (Cons!19643 (h!25044 Regex!4847) (t!166716 List!19713)) )
))
(declare-fun generalisedUnion!423 (List!19713) Regex!4847)

(declare-fun map!4054 (List!19710 Int) List!19713)

(assert (=> d!544068 (= (rulesRegex!875 thiss!24550 rules!3447) (generalisedUnion!423 (map!4054 rules!3447 lambda!70698)))))

(declare-fun bs!405212 () Bool)

(assert (= bs!405212 d!544068))

(declare-fun m!2204517 () Bool)

(assert (=> bs!405212 m!2204517))

(declare-fun m!2204519 () Bool)

(assert (=> bs!405212 m!2204519))

(assert (=> bs!405212 m!2204519))

(declare-fun m!2204521 () Bool)

(assert (=> bs!405212 m!2204521))

(assert (=> b!1781895 d!544068))

(declare-fun d!544070 () Bool)

(declare-fun lt!692808 () Bool)

(declare-fun content!2859 (List!19710) (InoxSet Rule!6838))

(assert (=> d!544070 (= lt!692808 (select (content!2859 rules!3447) (rule!5595 (_1!11017 lt!692735))))))

(declare-fun e!1140509 () Bool)

(assert (=> d!544070 (= lt!692808 e!1140509)))

(declare-fun res!803277 () Bool)

(assert (=> d!544070 (=> (not res!803277) (not e!1140509))))

(assert (=> d!544070 (= res!803277 ((_ is Cons!19640) rules!3447))))

(assert (=> d!544070 (= (contains!3551 rules!3447 (rule!5595 (_1!11017 lt!692735))) lt!692808)))

(declare-fun b!1782028 () Bool)

(declare-fun e!1140510 () Bool)

(assert (=> b!1782028 (= e!1140509 e!1140510)))

(declare-fun res!803276 () Bool)

(assert (=> b!1782028 (=> res!803276 e!1140510)))

(assert (=> b!1782028 (= res!803276 (= (h!25041 rules!3447) (rule!5595 (_1!11017 lt!692735))))))

(declare-fun b!1782029 () Bool)

(assert (=> b!1782029 (= e!1140510 (contains!3551 (t!166653 rules!3447) (rule!5595 (_1!11017 lt!692735))))))

(assert (= (and d!544070 res!803277) b!1782028))

(assert (= (and b!1782028 (not res!803276)) b!1782029))

(declare-fun m!2204523 () Bool)

(assert (=> d!544070 m!2204523))

(declare-fun m!2204525 () Bool)

(assert (=> d!544070 m!2204525))

(declare-fun m!2204527 () Bool)

(assert (=> b!1782029 m!2204527))

(assert (=> b!1781894 d!544070))

(declare-fun b!1782058 () Bool)

(declare-fun e!1140528 () Bool)

(declare-fun e!1140529 () Bool)

(assert (=> b!1782058 (= e!1140528 e!1140529)))

(declare-fun c!289898 () Bool)

(assert (=> b!1782058 (= c!289898 ((_ is EmptyLang!4847) (regex!3519 rule!422)))))

(declare-fun b!1782060 () Bool)

(declare-fun e!1140526 () Bool)

(assert (=> b!1782060 (= e!1140526 (= (head!4166 lt!692736) (c!289862 (regex!3519 rule!422))))))

(declare-fun b!1782061 () Bool)

(declare-fun lt!692811 () Bool)

(declare-fun call!111299 () Bool)

(assert (=> b!1782061 (= e!1140528 (= lt!692811 call!111299))))

(declare-fun b!1782062 () Bool)

(declare-fun res!803296 () Bool)

(declare-fun e!1140530 () Bool)

(assert (=> b!1782062 (=> res!803296 e!1140530)))

(assert (=> b!1782062 (= res!803296 e!1140526)))

(declare-fun res!803297 () Bool)

(assert (=> b!1782062 (=> (not res!803297) (not e!1140526))))

(assert (=> b!1782062 (= res!803297 lt!692811)))

(declare-fun b!1782063 () Bool)

(declare-fun res!803300 () Bool)

(assert (=> b!1782063 (=> (not res!803300) (not e!1140526))))

(assert (=> b!1782063 (= res!803300 (isEmpty!12410 (tail!2667 lt!692736)))))

(declare-fun bm!111294 () Bool)

(assert (=> bm!111294 (= call!111299 (isEmpty!12410 lt!692736))))

(declare-fun b!1782059 () Bool)

(declare-fun e!1140527 () Bool)

(declare-fun e!1140525 () Bool)

(assert (=> b!1782059 (= e!1140527 e!1140525)))

(declare-fun res!803295 () Bool)

(assert (=> b!1782059 (=> res!803295 e!1140525)))

(assert (=> b!1782059 (= res!803295 call!111299)))

(declare-fun d!544072 () Bool)

(assert (=> d!544072 e!1140528))

(declare-fun c!289899 () Bool)

(assert (=> d!544072 (= c!289899 ((_ is EmptyExpr!4847) (regex!3519 rule!422)))))

(declare-fun e!1140531 () Bool)

(assert (=> d!544072 (= lt!692811 e!1140531)))

(declare-fun c!289897 () Bool)

(assert (=> d!544072 (= c!289897 (isEmpty!12410 lt!692736))))

(declare-fun validRegex!1964 (Regex!4847) Bool)

(assert (=> d!544072 (validRegex!1964 (regex!3519 rule!422))))

(assert (=> d!544072 (= (matchR!2320 (regex!3519 rule!422) lt!692736) lt!692811)))

(declare-fun b!1782064 () Bool)

(declare-fun res!803294 () Bool)

(assert (=> b!1782064 (=> res!803294 e!1140530)))

(assert (=> b!1782064 (= res!803294 (not ((_ is ElementMatch!4847) (regex!3519 rule!422))))))

(assert (=> b!1782064 (= e!1140529 e!1140530)))

(declare-fun b!1782065 () Bool)

(declare-fun nullable!1491 (Regex!4847) Bool)

(assert (=> b!1782065 (= e!1140531 (nullable!1491 (regex!3519 rule!422)))))

(declare-fun b!1782066 () Bool)

(assert (=> b!1782066 (= e!1140529 (not lt!692811))))

(declare-fun b!1782067 () Bool)

(assert (=> b!1782067 (= e!1140525 (not (= (head!4166 lt!692736) (c!289862 (regex!3519 rule!422)))))))

(declare-fun b!1782068 () Bool)

(assert (=> b!1782068 (= e!1140531 (matchR!2320 (derivativeStep!1260 (regex!3519 rule!422) (head!4166 lt!692736)) (tail!2667 lt!692736)))))

(declare-fun b!1782069 () Bool)

(assert (=> b!1782069 (= e!1140530 e!1140527)))

(declare-fun res!803299 () Bool)

(assert (=> b!1782069 (=> (not res!803299) (not e!1140527))))

(assert (=> b!1782069 (= res!803299 (not lt!692811))))

(declare-fun b!1782070 () Bool)

(declare-fun res!803298 () Bool)

(assert (=> b!1782070 (=> (not res!803298) (not e!1140526))))

(assert (=> b!1782070 (= res!803298 (not call!111299))))

(declare-fun b!1782071 () Bool)

(declare-fun res!803301 () Bool)

(assert (=> b!1782071 (=> res!803301 e!1140525)))

(assert (=> b!1782071 (= res!803301 (not (isEmpty!12410 (tail!2667 lt!692736))))))

(assert (= (and d!544072 c!289897) b!1782065))

(assert (= (and d!544072 (not c!289897)) b!1782068))

(assert (= (and d!544072 c!289899) b!1782061))

(assert (= (and d!544072 (not c!289899)) b!1782058))

(assert (= (and b!1782058 c!289898) b!1782066))

(assert (= (and b!1782058 (not c!289898)) b!1782064))

(assert (= (and b!1782064 (not res!803294)) b!1782062))

(assert (= (and b!1782062 res!803297) b!1782070))

(assert (= (and b!1782070 res!803298) b!1782063))

(assert (= (and b!1782063 res!803300) b!1782060))

(assert (= (and b!1782062 (not res!803296)) b!1782069))

(assert (= (and b!1782069 res!803299) b!1782059))

(assert (= (and b!1782059 (not res!803295)) b!1782071))

(assert (= (and b!1782071 (not res!803301)) b!1782067))

(assert (= (or b!1782061 b!1782059 b!1782070) bm!111294))

(declare-fun m!2204529 () Bool)

(assert (=> b!1782060 m!2204529))

(assert (=> b!1782068 m!2204529))

(assert (=> b!1782068 m!2204529))

(declare-fun m!2204531 () Bool)

(assert (=> b!1782068 m!2204531))

(declare-fun m!2204533 () Bool)

(assert (=> b!1782068 m!2204533))

(assert (=> b!1782068 m!2204531))

(assert (=> b!1782068 m!2204533))

(declare-fun m!2204535 () Bool)

(assert (=> b!1782068 m!2204535))

(assert (=> b!1782067 m!2204529))

(assert (=> b!1782071 m!2204533))

(assert (=> b!1782071 m!2204533))

(declare-fun m!2204537 () Bool)

(assert (=> b!1782071 m!2204537))

(declare-fun m!2204539 () Bool)

(assert (=> d!544072 m!2204539))

(declare-fun m!2204541 () Bool)

(assert (=> d!544072 m!2204541))

(assert (=> bm!111294 m!2204539))

(assert (=> b!1782063 m!2204533))

(assert (=> b!1782063 m!2204533))

(assert (=> b!1782063 m!2204537))

(declare-fun m!2204543 () Bool)

(assert (=> b!1782065 m!2204543))

(assert (=> b!1781873 d!544072))

(declare-fun d!544074 () Bool)

(declare-fun res!803306 () Bool)

(declare-fun e!1140534 () Bool)

(assert (=> d!544074 (=> (not res!803306) (not e!1140534))))

(assert (=> d!544074 (= res!803306 (validRegex!1964 (regex!3519 rule!422)))))

(assert (=> d!544074 (= (ruleValid!1017 thiss!24550 rule!422) e!1140534)))

(declare-fun b!1782076 () Bool)

(declare-fun res!803307 () Bool)

(assert (=> b!1782076 (=> (not res!803307) (not e!1140534))))

(assert (=> b!1782076 (= res!803307 (not (nullable!1491 (regex!3519 rule!422))))))

(declare-fun b!1782077 () Bool)

(assert (=> b!1782077 (= e!1140534 (not (= (tag!3915 rule!422) (String!22378 ""))))))

(assert (= (and d!544074 res!803306) b!1782076))

(assert (= (and b!1782076 res!803307) b!1782077))

(assert (=> d!544074 m!2204541))

(assert (=> b!1782076 m!2204543))

(assert (=> b!1781873 d!544074))

(declare-fun d!544076 () Bool)

(assert (=> d!544076 (ruleValid!1017 thiss!24550 rule!422)))

(declare-fun lt!692814 () Unit!33945)

(declare-fun choose!11190 (LexerInterface!3148 Rule!6838 List!19710) Unit!33945)

(assert (=> d!544076 (= lt!692814 (choose!11190 thiss!24550 rule!422 rules!3447))))

(assert (=> d!544076 (contains!3551 rules!3447 rule!422)))

(assert (=> d!544076 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!540 thiss!24550 rule!422 rules!3447) lt!692814)))

(declare-fun bs!405213 () Bool)

(assert (= bs!405213 d!544076))

(assert (=> bs!405213 m!2204349))

(declare-fun m!2204545 () Bool)

(assert (=> bs!405213 m!2204545))

(assert (=> bs!405213 m!2204233))

(assert (=> b!1781873 d!544076))

(declare-fun b!1782078 () Bool)

(declare-fun e!1140538 () Bool)

(declare-fun e!1140539 () Bool)

(assert (=> b!1782078 (= e!1140538 e!1140539)))

(declare-fun c!289901 () Bool)

(assert (=> b!1782078 (= c!289901 ((_ is EmptyLang!4847) (regex!3519 (rule!5595 (_1!11017 lt!692735)))))))

(declare-fun b!1782080 () Bool)

(declare-fun e!1140536 () Bool)

(assert (=> b!1782080 (= e!1140536 (= (head!4166 lt!692762) (c!289862 (regex!3519 (rule!5595 (_1!11017 lt!692735))))))))

(declare-fun b!1782081 () Bool)

(declare-fun lt!692815 () Bool)

(declare-fun call!111300 () Bool)

(assert (=> b!1782081 (= e!1140538 (= lt!692815 call!111300))))

(declare-fun b!1782082 () Bool)

(declare-fun res!803310 () Bool)

(declare-fun e!1140540 () Bool)

(assert (=> b!1782082 (=> res!803310 e!1140540)))

(assert (=> b!1782082 (= res!803310 e!1140536)))

(declare-fun res!803311 () Bool)

(assert (=> b!1782082 (=> (not res!803311) (not e!1140536))))

(assert (=> b!1782082 (= res!803311 lt!692815)))

(declare-fun b!1782083 () Bool)

(declare-fun res!803314 () Bool)

(assert (=> b!1782083 (=> (not res!803314) (not e!1140536))))

(assert (=> b!1782083 (= res!803314 (isEmpty!12410 (tail!2667 lt!692762)))))

(declare-fun bm!111295 () Bool)

(assert (=> bm!111295 (= call!111300 (isEmpty!12410 lt!692762))))

(declare-fun b!1782079 () Bool)

(declare-fun e!1140537 () Bool)

(declare-fun e!1140535 () Bool)

(assert (=> b!1782079 (= e!1140537 e!1140535)))

(declare-fun res!803309 () Bool)

(assert (=> b!1782079 (=> res!803309 e!1140535)))

(assert (=> b!1782079 (= res!803309 call!111300)))

(declare-fun d!544078 () Bool)

(assert (=> d!544078 e!1140538))

(declare-fun c!289902 () Bool)

(assert (=> d!544078 (= c!289902 ((_ is EmptyExpr!4847) (regex!3519 (rule!5595 (_1!11017 lt!692735)))))))

(declare-fun e!1140541 () Bool)

(assert (=> d!544078 (= lt!692815 e!1140541)))

(declare-fun c!289900 () Bool)

(assert (=> d!544078 (= c!289900 (isEmpty!12410 lt!692762))))

(assert (=> d!544078 (validRegex!1964 (regex!3519 (rule!5595 (_1!11017 lt!692735))))))

(assert (=> d!544078 (= (matchR!2320 (regex!3519 (rule!5595 (_1!11017 lt!692735))) lt!692762) lt!692815)))

(declare-fun b!1782084 () Bool)

(declare-fun res!803308 () Bool)

(assert (=> b!1782084 (=> res!803308 e!1140540)))

(assert (=> b!1782084 (= res!803308 (not ((_ is ElementMatch!4847) (regex!3519 (rule!5595 (_1!11017 lt!692735))))))))

(assert (=> b!1782084 (= e!1140539 e!1140540)))

(declare-fun b!1782085 () Bool)

(assert (=> b!1782085 (= e!1140541 (nullable!1491 (regex!3519 (rule!5595 (_1!11017 lt!692735)))))))

(declare-fun b!1782086 () Bool)

(assert (=> b!1782086 (= e!1140539 (not lt!692815))))

(declare-fun b!1782087 () Bool)

(assert (=> b!1782087 (= e!1140535 (not (= (head!4166 lt!692762) (c!289862 (regex!3519 (rule!5595 (_1!11017 lt!692735)))))))))

(declare-fun b!1782088 () Bool)

(assert (=> b!1782088 (= e!1140541 (matchR!2320 (derivativeStep!1260 (regex!3519 (rule!5595 (_1!11017 lt!692735))) (head!4166 lt!692762)) (tail!2667 lt!692762)))))

(declare-fun b!1782089 () Bool)

(assert (=> b!1782089 (= e!1140540 e!1140537)))

(declare-fun res!803313 () Bool)

(assert (=> b!1782089 (=> (not res!803313) (not e!1140537))))

(assert (=> b!1782089 (= res!803313 (not lt!692815))))

(declare-fun b!1782090 () Bool)

(declare-fun res!803312 () Bool)

(assert (=> b!1782090 (=> (not res!803312) (not e!1140536))))

(assert (=> b!1782090 (= res!803312 (not call!111300))))

(declare-fun b!1782091 () Bool)

(declare-fun res!803315 () Bool)

(assert (=> b!1782091 (=> res!803315 e!1140535)))

(assert (=> b!1782091 (= res!803315 (not (isEmpty!12410 (tail!2667 lt!692762))))))

(assert (= (and d!544078 c!289900) b!1782085))

(assert (= (and d!544078 (not c!289900)) b!1782088))

(assert (= (and d!544078 c!289902) b!1782081))

(assert (= (and d!544078 (not c!289902)) b!1782078))

(assert (= (and b!1782078 c!289901) b!1782086))

(assert (= (and b!1782078 (not c!289901)) b!1782084))

(assert (= (and b!1782084 (not res!803308)) b!1782082))

(assert (= (and b!1782082 res!803311) b!1782090))

(assert (= (and b!1782090 res!803312) b!1782083))

(assert (= (and b!1782083 res!803314) b!1782080))

(assert (= (and b!1782082 (not res!803310)) b!1782089))

(assert (= (and b!1782089 res!803313) b!1782079))

(assert (= (and b!1782079 (not res!803309)) b!1782091))

(assert (= (and b!1782091 (not res!803315)) b!1782087))

(assert (= (or b!1782081 b!1782079 b!1782090) bm!111295))

(declare-fun m!2204547 () Bool)

(assert (=> b!1782080 m!2204547))

(assert (=> b!1782088 m!2204547))

(assert (=> b!1782088 m!2204547))

(declare-fun m!2204549 () Bool)

(assert (=> b!1782088 m!2204549))

(declare-fun m!2204551 () Bool)

(assert (=> b!1782088 m!2204551))

(assert (=> b!1782088 m!2204549))

(assert (=> b!1782088 m!2204551))

(declare-fun m!2204553 () Bool)

(assert (=> b!1782088 m!2204553))

(assert (=> b!1782087 m!2204547))

(assert (=> b!1782091 m!2204551))

(assert (=> b!1782091 m!2204551))

(declare-fun m!2204555 () Bool)

(assert (=> b!1782091 m!2204555))

(assert (=> d!544078 m!2204231))

(declare-fun m!2204557 () Bool)

(assert (=> d!544078 m!2204557))

(assert (=> bm!111295 m!2204231))

(assert (=> b!1782083 m!2204551))

(assert (=> b!1782083 m!2204551))

(assert (=> b!1782083 m!2204555))

(declare-fun m!2204559 () Bool)

(assert (=> b!1782085 m!2204559))

(assert (=> b!1781893 d!544078))

(declare-fun d!544080 () Bool)

(assert (=> d!544080 (= (inv!25558 (tag!3915 (h!25041 rules!3447))) (= (mod (str.len (value!109963 (tag!3915 (h!25041 rules!3447)))) 2) 0))))

(assert (=> b!1781892 d!544080))

(declare-fun d!544082 () Bool)

(declare-fun res!803318 () Bool)

(declare-fun e!1140544 () Bool)

(assert (=> d!544082 (=> (not res!803318) (not e!1140544))))

(declare-fun semiInverseModEq!1406 (Int Int) Bool)

(assert (=> d!544082 (= res!803318 (semiInverseModEq!1406 (toChars!4905 (transformation!3519 (h!25041 rules!3447))) (toValue!5046 (transformation!3519 (h!25041 rules!3447)))))))

(assert (=> d!544082 (= (inv!25564 (transformation!3519 (h!25041 rules!3447))) e!1140544)))

(declare-fun b!1782094 () Bool)

(declare-fun equivClasses!1347 (Int Int) Bool)

(assert (=> b!1782094 (= e!1140544 (equivClasses!1347 (toChars!4905 (transformation!3519 (h!25041 rules!3447))) (toValue!5046 (transformation!3519 (h!25041 rules!3447)))))))

(assert (= (and d!544082 res!803318) b!1782094))

(declare-fun m!2204561 () Bool)

(assert (=> d!544082 m!2204561))

(declare-fun m!2204563 () Bool)

(assert (=> b!1782094 m!2204563))

(assert (=> b!1781892 d!544082))

(declare-fun d!544084 () Bool)

(assert (=> d!544084 (= (isEmpty!12411 rules!3447) ((_ is Nil!19640) rules!3447))))

(assert (=> b!1781870 d!544084))

(declare-fun d!544086 () Bool)

(declare-fun isEmpty!12414 (Option!4061) Bool)

(assert (=> d!544086 (= (isDefined!3404 lt!692744) (not (isEmpty!12414 lt!692744)))))

(declare-fun bs!405214 () Bool)

(assert (= bs!405214 d!544086))

(declare-fun m!2204565 () Bool)

(assert (=> bs!405214 m!2204565))

(assert (=> b!1781891 d!544086))

(declare-fun d!544088 () Bool)

(declare-fun e!1140568 () Bool)

(assert (=> d!544088 e!1140568))

(declare-fun res!803357 () Bool)

(assert (=> d!544088 (=> res!803357 e!1140568)))

(declare-fun lt!692880 () Option!4061)

(assert (=> d!544088 (= res!803357 (isEmpty!12414 lt!692880))))

(declare-fun e!1140566 () Option!4061)

(assert (=> d!544088 (= lt!692880 e!1140566)))

(declare-fun c!289908 () Bool)

(assert (=> d!544088 (= c!289908 (and ((_ is Cons!19640) rules!3447) ((_ is Nil!19640) (t!166653 rules!3447))))))

(declare-fun lt!692884 () Unit!33945)

(declare-fun lt!692882 () Unit!33945)

(assert (=> d!544088 (= lt!692884 lt!692882)))

(assert (=> d!544088 (isPrefix!1759 lt!692736 lt!692736)))

(declare-fun lemmaIsPrefixRefl!1160 (List!19709 List!19709) Unit!33945)

(assert (=> d!544088 (= lt!692882 (lemmaIsPrefixRefl!1160 lt!692736 lt!692736))))

(declare-fun rulesValidInductive!1196 (LexerInterface!3148 List!19710) Bool)

(assert (=> d!544088 (rulesValidInductive!1196 thiss!24550 rules!3447)))

(assert (=> d!544088 (= (maxPrefix!1702 thiss!24550 rules!3447 lt!692736) lt!692880)))

(declare-fun b!1782137 () Bool)

(declare-fun call!111303 () Option!4061)

(assert (=> b!1782137 (= e!1140566 call!111303)))

(declare-fun b!1782138 () Bool)

(declare-fun res!803354 () Bool)

(declare-fun e!1140567 () Bool)

(assert (=> b!1782138 (=> (not res!803354) (not e!1140567))))

(assert (=> b!1782138 (= res!803354 (matchR!2320 (regex!3519 (rule!5595 (_1!11017 (get!6037 lt!692880)))) (list!7985 (charsOf!2168 (_1!11017 (get!6037 lt!692880))))))))

(declare-fun b!1782139 () Bool)

(assert (=> b!1782139 (= e!1140567 (contains!3551 rules!3447 (rule!5595 (_1!11017 (get!6037 lt!692880)))))))

(declare-fun b!1782140 () Bool)

(declare-fun res!803351 () Bool)

(assert (=> b!1782140 (=> (not res!803351) (not e!1140567))))

(assert (=> b!1782140 (= res!803351 (= (++!5343 (list!7985 (charsOf!2168 (_1!11017 (get!6037 lt!692880)))) (_2!11017 (get!6037 lt!692880))) lt!692736))))

(declare-fun b!1782141 () Bool)

(declare-fun res!803353 () Bool)

(assert (=> b!1782141 (=> (not res!803353) (not e!1140567))))

(assert (=> b!1782141 (= res!803353 (< (size!15604 (_2!11017 (get!6037 lt!692880))) (size!15604 lt!692736)))))

(declare-fun b!1782142 () Bool)

(declare-fun lt!692881 () Option!4061)

(declare-fun lt!692883 () Option!4061)

(assert (=> b!1782142 (= e!1140566 (ite (and ((_ is None!4060) lt!692881) ((_ is None!4060) lt!692883)) None!4060 (ite ((_ is None!4060) lt!692883) lt!692881 (ite ((_ is None!4060) lt!692881) lt!692883 (ite (>= (size!15602 (_1!11017 (v!25551 lt!692881))) (size!15602 (_1!11017 (v!25551 lt!692883)))) lt!692881 lt!692883)))))))

(assert (=> b!1782142 (= lt!692881 call!111303)))

(assert (=> b!1782142 (= lt!692883 (maxPrefix!1702 thiss!24550 (t!166653 rules!3447) lt!692736))))

(declare-fun b!1782143 () Bool)

(declare-fun res!803352 () Bool)

(assert (=> b!1782143 (=> (not res!803352) (not e!1140567))))

(assert (=> b!1782143 (= res!803352 (= (value!109964 (_1!11017 (get!6037 lt!692880))) (apply!5319 (transformation!3519 (rule!5595 (_1!11017 (get!6037 lt!692880)))) (seqFromList!2488 (originalCharacters!4333 (_1!11017 (get!6037 lt!692880)))))))))

(declare-fun bm!111298 () Bool)

(assert (=> bm!111298 (= call!111303 (maxPrefixOneRule!1071 thiss!24550 (h!25041 rules!3447) lt!692736))))

(declare-fun b!1782144 () Bool)

(declare-fun res!803355 () Bool)

(assert (=> b!1782144 (=> (not res!803355) (not e!1140567))))

(assert (=> b!1782144 (= res!803355 (= (list!7985 (charsOf!2168 (_1!11017 (get!6037 lt!692880)))) (originalCharacters!4333 (_1!11017 (get!6037 lt!692880)))))))

(declare-fun b!1782145 () Bool)

(assert (=> b!1782145 (= e!1140568 e!1140567)))

(declare-fun res!803356 () Bool)

(assert (=> b!1782145 (=> (not res!803356) (not e!1140567))))

(assert (=> b!1782145 (= res!803356 (isDefined!3404 lt!692880))))

(assert (= (and d!544088 c!289908) b!1782137))

(assert (= (and d!544088 (not c!289908)) b!1782142))

(assert (= (or b!1782137 b!1782142) bm!111298))

(assert (= (and d!544088 (not res!803357)) b!1782145))

(assert (= (and b!1782145 res!803356) b!1782144))

(assert (= (and b!1782144 res!803355) b!1782141))

(assert (= (and b!1782141 res!803353) b!1782140))

(assert (= (and b!1782140 res!803351) b!1782143))

(assert (= (and b!1782143 res!803352) b!1782138))

(assert (= (and b!1782138 res!803354) b!1782139))

(declare-fun m!2204631 () Bool)

(assert (=> b!1782142 m!2204631))

(declare-fun m!2204633 () Bool)

(assert (=> bm!111298 m!2204633))

(declare-fun m!2204635 () Bool)

(assert (=> b!1782141 m!2204635))

(declare-fun m!2204637 () Bool)

(assert (=> b!1782141 m!2204637))

(assert (=> b!1782141 m!2204513))

(assert (=> b!1782139 m!2204635))

(declare-fun m!2204639 () Bool)

(assert (=> b!1782139 m!2204639))

(declare-fun m!2204641 () Bool)

(assert (=> d!544088 m!2204641))

(declare-fun m!2204643 () Bool)

(assert (=> d!544088 m!2204643))

(declare-fun m!2204645 () Bool)

(assert (=> d!544088 m!2204645))

(declare-fun m!2204647 () Bool)

(assert (=> d!544088 m!2204647))

(assert (=> b!1782144 m!2204635))

(declare-fun m!2204649 () Bool)

(assert (=> b!1782144 m!2204649))

(assert (=> b!1782144 m!2204649))

(declare-fun m!2204651 () Bool)

(assert (=> b!1782144 m!2204651))

(assert (=> b!1782140 m!2204635))

(assert (=> b!1782140 m!2204649))

(assert (=> b!1782140 m!2204649))

(assert (=> b!1782140 m!2204651))

(assert (=> b!1782140 m!2204651))

(declare-fun m!2204653 () Bool)

(assert (=> b!1782140 m!2204653))

(declare-fun m!2204655 () Bool)

(assert (=> b!1782145 m!2204655))

(assert (=> b!1782143 m!2204635))

(declare-fun m!2204657 () Bool)

(assert (=> b!1782143 m!2204657))

(assert (=> b!1782143 m!2204657))

(declare-fun m!2204659 () Bool)

(assert (=> b!1782143 m!2204659))

(assert (=> b!1782138 m!2204635))

(assert (=> b!1782138 m!2204649))

(assert (=> b!1782138 m!2204649))

(assert (=> b!1782138 m!2204651))

(assert (=> b!1782138 m!2204651))

(declare-fun m!2204661 () Bool)

(assert (=> b!1782138 m!2204661))

(assert (=> b!1781891 d!544088))

(declare-fun d!544096 () Bool)

(declare-fun list!7988 (Conc!6533) List!19709)

(assert (=> d!544096 (= (list!7985 lt!692764) (list!7988 (c!289863 lt!692764)))))

(declare-fun bs!405216 () Bool)

(assert (= bs!405216 d!544096))

(declare-fun m!2204663 () Bool)

(assert (=> bs!405216 m!2204663))

(assert (=> b!1781891 d!544096))

(declare-fun d!544098 () Bool)

(declare-fun lt!692897 () BalanceConc!13010)

(assert (=> d!544098 (= (list!7985 lt!692897) (originalCharacters!4333 token!523))))

(assert (=> d!544098 (= lt!692897 (dynLambda!9652 (toChars!4905 (transformation!3519 (rule!5595 token!523))) (value!109964 token!523)))))

(assert (=> d!544098 (= (charsOf!2168 token!523) lt!692897)))

(declare-fun b_lambda!58367 () Bool)

(assert (=> (not b_lambda!58367) (not d!544098)))

(declare-fun tb!108359 () Bool)

(declare-fun t!166661 () Bool)

(assert (=> (and b!1781886 (= (toChars!4905 (transformation!3519 (h!25041 rules!3447))) (toChars!4905 (transformation!3519 (rule!5595 token!523)))) t!166661) tb!108359))

(declare-fun b!1782150 () Bool)

(declare-fun e!1140571 () Bool)

(declare-fun tp!504455 () Bool)

(assert (=> b!1782150 (= e!1140571 (and (inv!25565 (c!289863 (dynLambda!9652 (toChars!4905 (transformation!3519 (rule!5595 token!523))) (value!109964 token!523)))) tp!504455))))

(declare-fun result!130366 () Bool)

(assert (=> tb!108359 (= result!130366 (and (inv!25566 (dynLambda!9652 (toChars!4905 (transformation!3519 (rule!5595 token!523))) (value!109964 token!523))) e!1140571))))

(assert (= tb!108359 b!1782150))

(declare-fun m!2204665 () Bool)

(assert (=> b!1782150 m!2204665))

(declare-fun m!2204667 () Bool)

(assert (=> tb!108359 m!2204667))

(assert (=> d!544098 t!166661))

(declare-fun b_and!136747 () Bool)

(assert (= b_and!136711 (and (=> t!166661 result!130366) b_and!136747)))

(declare-fun tb!108361 () Bool)

(declare-fun t!166663 () Bool)

(assert (=> (and b!1781865 (= (toChars!4905 (transformation!3519 rule!422)) (toChars!4905 (transformation!3519 (rule!5595 token!523)))) t!166663) tb!108361))

(declare-fun result!130368 () Bool)

(assert (= result!130368 result!130366))

(assert (=> d!544098 t!166663))

(declare-fun b_and!136749 () Bool)

(assert (= b_and!136713 (and (=> t!166663 result!130368) b_and!136749)))

(declare-fun t!166665 () Bool)

(declare-fun tb!108363 () Bool)

(assert (=> (and b!1781884 (= (toChars!4905 (transformation!3519 (rule!5595 token!523))) (toChars!4905 (transformation!3519 (rule!5595 token!523)))) t!166665) tb!108363))

(declare-fun result!130370 () Bool)

(assert (= result!130370 result!130366))

(assert (=> d!544098 t!166665))

(declare-fun b_and!136751 () Bool)

(assert (= b_and!136715 (and (=> t!166665 result!130370) b_and!136751)))

(declare-fun m!2204669 () Bool)

(assert (=> d!544098 m!2204669))

(declare-fun m!2204671 () Bool)

(assert (=> d!544098 m!2204671))

(assert (=> b!1781891 d!544098))

(declare-fun d!544100 () Bool)

(assert (=> d!544100 (= (inv!25558 (tag!3915 rule!422)) (= (mod (str.len (value!109963 (tag!3915 rule!422))) 2) 0))))

(assert (=> b!1781869 d!544100))

(declare-fun d!544102 () Bool)

(declare-fun res!803370 () Bool)

(declare-fun e!1140576 () Bool)

(assert (=> d!544102 (=> (not res!803370) (not e!1140576))))

(assert (=> d!544102 (= res!803370 (semiInverseModEq!1406 (toChars!4905 (transformation!3519 rule!422)) (toValue!5046 (transformation!3519 rule!422))))))

(assert (=> d!544102 (= (inv!25564 (transformation!3519 rule!422)) e!1140576)))

(declare-fun b!1782161 () Bool)

(assert (=> b!1782161 (= e!1140576 (equivClasses!1347 (toChars!4905 (transformation!3519 rule!422)) (toValue!5046 (transformation!3519 rule!422))))))

(assert (= (and d!544102 res!803370) b!1782161))

(declare-fun m!2204673 () Bool)

(assert (=> d!544102 m!2204673))

(declare-fun m!2204675 () Bool)

(assert (=> b!1782161 m!2204675))

(assert (=> b!1781869 d!544102))

(declare-fun d!544104 () Bool)

(declare-fun res!803375 () Bool)

(declare-fun e!1140579 () Bool)

(assert (=> d!544104 (=> (not res!803375) (not e!1140579))))

(declare-fun rulesValid!1330 (LexerInterface!3148 List!19710) Bool)

(assert (=> d!544104 (= res!803375 (rulesValid!1330 thiss!24550 rules!3447))))

(assert (=> d!544104 (= (rulesInvariant!2817 thiss!24550 rules!3447) e!1140579)))

(declare-fun b!1782168 () Bool)

(declare-datatypes ((List!19714 0))(
  ( (Nil!19644) (Cons!19644 (h!25045 String!22377) (t!166717 List!19714)) )
))
(declare-fun noDuplicateTag!1330 (LexerInterface!3148 List!19710 List!19714) Bool)

(assert (=> b!1782168 (= e!1140579 (noDuplicateTag!1330 thiss!24550 rules!3447 Nil!19644))))

(assert (= (and d!544104 res!803375) b!1782168))

(declare-fun m!2204677 () Bool)

(assert (=> d!544104 m!2204677))

(declare-fun m!2204679 () Bool)

(assert (=> b!1782168 m!2204679))

(assert (=> b!1781900 d!544104))

(declare-fun d!544106 () Bool)

(declare-fun res!803387 () Bool)

(declare-fun e!1140585 () Bool)

(assert (=> d!544106 (=> (not res!803387) (not e!1140585))))

(assert (=> d!544106 (= res!803387 (not (isEmpty!12410 (originalCharacters!4333 token!523))))))

(assert (=> d!544106 (= (inv!25563 token!523) e!1140585)))

(declare-fun b!1782182 () Bool)

(declare-fun res!803388 () Bool)

(assert (=> b!1782182 (=> (not res!803388) (not e!1140585))))

(assert (=> b!1782182 (= res!803388 (= (originalCharacters!4333 token!523) (list!7985 (dynLambda!9652 (toChars!4905 (transformation!3519 (rule!5595 token!523))) (value!109964 token!523)))))))

(declare-fun b!1782183 () Bool)

(assert (=> b!1782183 (= e!1140585 (= (size!15602 token!523) (size!15604 (originalCharacters!4333 token!523))))))

(assert (= (and d!544106 res!803387) b!1782182))

(assert (= (and b!1782182 res!803388) b!1782183))

(declare-fun b_lambda!58369 () Bool)

(assert (=> (not b_lambda!58369) (not b!1782182)))

(assert (=> b!1782182 t!166661))

(declare-fun b_and!136753 () Bool)

(assert (= b_and!136747 (and (=> t!166661 result!130366) b_and!136753)))

(assert (=> b!1782182 t!166663))

(declare-fun b_and!136755 () Bool)

(assert (= b_and!136749 (and (=> t!166663 result!130368) b_and!136755)))

(assert (=> b!1782182 t!166665))

(declare-fun b_and!136757 () Bool)

(assert (= b_and!136751 (and (=> t!166665 result!130370) b_and!136757)))

(declare-fun m!2204681 () Bool)

(assert (=> d!544106 m!2204681))

(assert (=> b!1782182 m!2204671))

(assert (=> b!1782182 m!2204671))

(declare-fun m!2204683 () Bool)

(assert (=> b!1782182 m!2204683))

(declare-fun m!2204685 () Bool)

(assert (=> b!1782183 m!2204685))

(assert (=> start!177290 d!544106))

(declare-fun d!544108 () Bool)

(declare-fun fromListB!1140 (List!19709) BalanceConc!13010)

(assert (=> d!544108 (= (seqFromList!2488 lt!692762) (fromListB!1140 lt!692762))))

(declare-fun bs!405217 () Bool)

(assert (= bs!405217 d!544108))

(declare-fun m!2204711 () Bool)

(assert (=> bs!405217 m!2204711))

(assert (=> b!1781879 d!544108))

(declare-fun d!544110 () Bool)

(assert (=> d!544110 (= (maxPrefixOneRule!1071 thiss!24550 (rule!5595 (_1!11017 lt!692735)) lt!692767) (Some!4060 (tuple2!19231 (Token!6605 (apply!5319 (transformation!3519 (rule!5595 (_1!11017 lt!692735))) (seqFromList!2488 lt!692762)) (rule!5595 (_1!11017 lt!692735)) (size!15604 lt!692762) lt!692762) (_2!11017 lt!692735))))))

(declare-fun lt!692912 () Unit!33945)

(declare-fun choose!11194 (LexerInterface!3148 List!19710 List!19709 List!19709 List!19709 Rule!6838) Unit!33945)

(assert (=> d!544110 (= lt!692912 (choose!11194 thiss!24550 rules!3447 lt!692762 lt!692767 (_2!11017 lt!692735) (rule!5595 (_1!11017 lt!692735))))))

(assert (=> d!544110 (not (isEmpty!12411 rules!3447))))

(assert (=> d!544110 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!449 thiss!24550 rules!3447 lt!692762 lt!692767 (_2!11017 lt!692735) (rule!5595 (_1!11017 lt!692735))) lt!692912)))

(declare-fun bs!405219 () Bool)

(assert (= bs!405219 d!544110))

(assert (=> bs!405219 m!2204343))

(assert (=> bs!405219 m!2204365))

(assert (=> bs!405219 m!2204375))

(assert (=> bs!405219 m!2204367))

(assert (=> bs!405219 m!2204369))

(declare-fun m!2204739 () Bool)

(assert (=> bs!405219 m!2204739))

(assert (=> bs!405219 m!2204367))

(assert (=> b!1781879 d!544110))

(declare-fun d!544120 () Bool)

(assert (=> d!544120 (= (apply!5319 (transformation!3519 (rule!5595 (_1!11017 lt!692735))) (seqFromList!2488 lt!692762)) (dynLambda!9653 (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) (seqFromList!2488 lt!692762)))))

(declare-fun b_lambda!58371 () Bool)

(assert (=> (not b_lambda!58371) (not d!544120)))

(declare-fun tb!108365 () Bool)

(declare-fun t!166667 () Bool)

(assert (=> (and b!1781886 (= (toValue!5046 (transformation!3519 (h!25041 rules!3447))) (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735))))) t!166667) tb!108365))

(declare-fun result!130372 () Bool)

(assert (=> tb!108365 (= result!130372 (inv!21 (dynLambda!9653 (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) (seqFromList!2488 lt!692762))))))

(declare-fun m!2204749 () Bool)

(assert (=> tb!108365 m!2204749))

(assert (=> d!544120 t!166667))

(declare-fun b_and!136759 () Bool)

(assert (= b_and!136705 (and (=> t!166667 result!130372) b_and!136759)))

(declare-fun t!166669 () Bool)

(declare-fun tb!108367 () Bool)

(assert (=> (and b!1781865 (= (toValue!5046 (transformation!3519 rule!422)) (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735))))) t!166669) tb!108367))

(declare-fun result!130374 () Bool)

(assert (= result!130374 result!130372))

(assert (=> d!544120 t!166669))

(declare-fun b_and!136761 () Bool)

(assert (= b_and!136707 (and (=> t!166669 result!130374) b_and!136761)))

(declare-fun tb!108369 () Bool)

(declare-fun t!166671 () Bool)

(assert (=> (and b!1781884 (= (toValue!5046 (transformation!3519 (rule!5595 token!523))) (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735))))) t!166671) tb!108369))

(declare-fun result!130376 () Bool)

(assert (= result!130376 result!130372))

(assert (=> d!544120 t!166671))

(declare-fun b_and!136763 () Bool)

(assert (= b_and!136709 (and (=> t!166671 result!130376) b_and!136763)))

(assert (=> d!544120 m!2204367))

(declare-fun m!2204751 () Bool)

(assert (=> d!544120 m!2204751))

(assert (=> b!1781879 d!544120))

(declare-fun d!544124 () Bool)

(declare-fun lt!692920 () Int)

(assert (=> d!544124 (>= lt!692920 0)))

(declare-fun e!1140598 () Int)

(assert (=> d!544124 (= lt!692920 e!1140598)))

(declare-fun c!289914 () Bool)

(assert (=> d!544124 (= c!289914 ((_ is Nil!19639) lt!692762))))

(assert (=> d!544124 (= (size!15604 lt!692762) lt!692920)))

(declare-fun b!1782202 () Bool)

(assert (=> b!1782202 (= e!1140598 0)))

(declare-fun b!1782203 () Bool)

(assert (=> b!1782203 (= e!1140598 (+ 1 (size!15604 (t!166652 lt!692762))))))

(assert (= (and d!544124 c!289914) b!1782202))

(assert (= (and d!544124 (not c!289914)) b!1782203))

(declare-fun m!2204759 () Bool)

(assert (=> b!1782203 m!2204759))

(assert (=> b!1781879 d!544124))

(declare-fun d!544132 () Bool)

(assert (=> d!544132 (= (_2!11017 lt!692735) lt!692765)))

(declare-fun lt!692924 () Unit!33945)

(declare-fun choose!11197 (List!19709 List!19709 List!19709 List!19709 List!19709) Unit!33945)

(assert (=> d!544132 (= lt!692924 (choose!11197 lt!692762 (_2!11017 lt!692735) lt!692762 lt!692765 lt!692767))))

(assert (=> d!544132 (isPrefix!1759 lt!692762 lt!692767)))

(assert (=> d!544132 (= (lemmaSamePrefixThenSameSuffix!870 lt!692762 (_2!11017 lt!692735) lt!692762 lt!692765 lt!692767) lt!692924)))

(declare-fun bs!405222 () Bool)

(assert (= bs!405222 d!544132))

(declare-fun m!2204765 () Bool)

(assert (=> bs!405222 m!2204765))

(assert (=> bs!405222 m!2204267))

(assert (=> b!1781879 d!544132))

(declare-fun d!544136 () Bool)

(declare-fun lt!692927 () List!19709)

(assert (=> d!544136 (= (++!5343 lt!692762 lt!692927) lt!692767)))

(declare-fun e!1140610 () List!19709)

(assert (=> d!544136 (= lt!692927 e!1140610)))

(declare-fun c!289920 () Bool)

(assert (=> d!544136 (= c!289920 ((_ is Cons!19639) lt!692762))))

(assert (=> d!544136 (>= (size!15604 lt!692767) (size!15604 lt!692762))))

(assert (=> d!544136 (= (getSuffix!926 lt!692767 lt!692762) lt!692927)))

(declare-fun b!1782220 () Bool)

(assert (=> b!1782220 (= e!1140610 (getSuffix!926 (tail!2667 lt!692767) (t!166652 lt!692762)))))

(declare-fun b!1782221 () Bool)

(assert (=> b!1782221 (= e!1140610 lt!692767)))

(assert (= (and d!544136 c!289920) b!1782220))

(assert (= (and d!544136 (not c!289920)) b!1782221))

(declare-fun m!2204775 () Bool)

(assert (=> d!544136 m!2204775))

(declare-fun m!2204777 () Bool)

(assert (=> d!544136 m!2204777))

(assert (=> d!544136 m!2204365))

(declare-fun m!2204779 () Bool)

(assert (=> b!1782220 m!2204779))

(assert (=> b!1782220 m!2204779))

(declare-fun m!2204781 () Bool)

(assert (=> b!1782220 m!2204781))

(assert (=> b!1781879 d!544136))

(declare-fun b!1782350 () Bool)

(declare-fun res!803485 () Bool)

(declare-fun e!1140681 () Bool)

(assert (=> b!1782350 (=> (not res!803485) (not e!1140681))))

(declare-fun lt!692973 () Option!4061)

(assert (=> b!1782350 (= res!803485 (= (value!109964 (_1!11017 (get!6037 lt!692973))) (apply!5319 (transformation!3519 (rule!5595 (_1!11017 (get!6037 lt!692973)))) (seqFromList!2488 (originalCharacters!4333 (_1!11017 (get!6037 lt!692973)))))))))

(declare-fun b!1782351 () Bool)

(assert (=> b!1782351 (= e!1140681 (= (size!15602 (_1!11017 (get!6037 lt!692973))) (size!15604 (originalCharacters!4333 (_1!11017 (get!6037 lt!692973))))))))

(declare-fun b!1782352 () Bool)

(declare-fun res!803481 () Bool)

(assert (=> b!1782352 (=> (not res!803481) (not e!1140681))))

(assert (=> b!1782352 (= res!803481 (= (++!5343 (list!7985 (charsOf!2168 (_1!11017 (get!6037 lt!692973)))) (_2!11017 (get!6037 lt!692973))) lt!692767))))

(declare-fun b!1782353 () Bool)

(declare-fun e!1140680 () Option!4061)

(assert (=> b!1782353 (= e!1140680 None!4060)))

(declare-fun b!1782355 () Bool)

(declare-fun res!803483 () Bool)

(assert (=> b!1782355 (=> (not res!803483) (not e!1140681))))

(assert (=> b!1782355 (= res!803483 (= (rule!5595 (_1!11017 (get!6037 lt!692973))) (rule!5595 (_1!11017 lt!692735))))))

(declare-fun b!1782356 () Bool)

(declare-fun e!1140682 () Bool)

(assert (=> b!1782356 (= e!1140682 e!1140681)))

(declare-fun res!803482 () Bool)

(assert (=> b!1782356 (=> (not res!803482) (not e!1140681))))

(assert (=> b!1782356 (= res!803482 (matchR!2320 (regex!3519 (rule!5595 (_1!11017 lt!692735))) (list!7985 (charsOf!2168 (_1!11017 (get!6037 lt!692973))))))))

(declare-fun b!1782358 () Bool)

(declare-datatypes ((tuple2!19234 0))(
  ( (tuple2!19235 (_1!11019 List!19709) (_2!11019 List!19709)) )
))
(declare-fun lt!692976 () tuple2!19234)

(assert (=> b!1782358 (= e!1140680 (Some!4060 (tuple2!19231 (Token!6605 (apply!5319 (transformation!3519 (rule!5595 (_1!11017 lt!692735))) (seqFromList!2488 (_1!11019 lt!692976))) (rule!5595 (_1!11017 lt!692735)) (size!15603 (seqFromList!2488 (_1!11019 lt!692976))) (_1!11019 lt!692976)) (_2!11019 lt!692976))))))

(declare-fun lt!692975 () Unit!33945)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!452 (Regex!4847 List!19709) Unit!33945)

(assert (=> b!1782358 (= lt!692975 (longestMatchIsAcceptedByMatchOrIsEmpty!452 (regex!3519 (rule!5595 (_1!11017 lt!692735))) lt!692767))))

(declare-fun res!803480 () Bool)

(declare-fun findLongestMatchInner!468 (Regex!4847 List!19709 Int List!19709 List!19709 Int) tuple2!19234)

(assert (=> b!1782358 (= res!803480 (isEmpty!12410 (_1!11019 (findLongestMatchInner!468 (regex!3519 (rule!5595 (_1!11017 lt!692735))) Nil!19639 (size!15604 Nil!19639) lt!692767 lt!692767 (size!15604 lt!692767)))))))

(declare-fun e!1140679 () Bool)

(assert (=> b!1782358 (=> res!803480 e!1140679)))

(assert (=> b!1782358 e!1140679))

(declare-fun lt!692977 () Unit!33945)

(assert (=> b!1782358 (= lt!692977 lt!692975)))

(declare-fun lt!692974 () Unit!33945)

(assert (=> b!1782358 (= lt!692974 (lemmaSemiInverse!657 (transformation!3519 (rule!5595 (_1!11017 lt!692735))) (seqFromList!2488 (_1!11019 lt!692976))))))

(declare-fun b!1782360 () Bool)

(declare-fun res!803477 () Bool)

(assert (=> b!1782360 (=> (not res!803477) (not e!1140681))))

(assert (=> b!1782360 (= res!803477 (< (size!15604 (_2!11017 (get!6037 lt!692973))) (size!15604 lt!692767)))))

(declare-fun d!544146 () Bool)

(assert (=> d!544146 e!1140682))

(declare-fun res!803484 () Bool)

(assert (=> d!544146 (=> res!803484 e!1140682)))

(assert (=> d!544146 (= res!803484 (isEmpty!12414 lt!692973))))

(assert (=> d!544146 (= lt!692973 e!1140680)))

(declare-fun c!289951 () Bool)

(assert (=> d!544146 (= c!289951 (isEmpty!12410 (_1!11019 lt!692976)))))

(declare-fun findLongestMatch!395 (Regex!4847 List!19709) tuple2!19234)

(assert (=> d!544146 (= lt!692976 (findLongestMatch!395 (regex!3519 (rule!5595 (_1!11017 lt!692735))) lt!692767))))

(assert (=> d!544146 (ruleValid!1017 thiss!24550 (rule!5595 (_1!11017 lt!692735)))))

(assert (=> d!544146 (= (maxPrefixOneRule!1071 thiss!24550 (rule!5595 (_1!11017 lt!692735)) lt!692767) lt!692973)))

(declare-fun b!1782354 () Bool)

(assert (=> b!1782354 (= e!1140679 (matchR!2320 (regex!3519 (rule!5595 (_1!11017 lt!692735))) (_1!11019 (findLongestMatchInner!468 (regex!3519 (rule!5595 (_1!11017 lt!692735))) Nil!19639 (size!15604 Nil!19639) lt!692767 lt!692767 (size!15604 lt!692767)))))))

(assert (= (and d!544146 c!289951) b!1782353))

(assert (= (and d!544146 (not c!289951)) b!1782358))

(assert (= (and b!1782358 (not res!803480)) b!1782354))

(assert (= (and d!544146 (not res!803484)) b!1782356))

(assert (= (and b!1782356 res!803482) b!1782352))

(assert (= (and b!1782352 res!803481) b!1782360))

(assert (= (and b!1782360 res!803477) b!1782355))

(assert (= (and b!1782355 res!803483) b!1782350))

(assert (= (and b!1782350 res!803485) b!1782351))

(declare-fun m!2204893 () Bool)

(assert (=> b!1782352 m!2204893))

(declare-fun m!2204895 () Bool)

(assert (=> b!1782352 m!2204895))

(assert (=> b!1782352 m!2204895))

(declare-fun m!2204897 () Bool)

(assert (=> b!1782352 m!2204897))

(assert (=> b!1782352 m!2204897))

(declare-fun m!2204903 () Bool)

(assert (=> b!1782352 m!2204903))

(declare-fun m!2204907 () Bool)

(assert (=> b!1782358 m!2204907))

(declare-fun m!2204911 () Bool)

(assert (=> b!1782358 m!2204911))

(declare-fun m!2204913 () Bool)

(assert (=> b!1782358 m!2204913))

(assert (=> b!1782358 m!2204911))

(declare-fun m!2204915 () Bool)

(assert (=> b!1782358 m!2204915))

(declare-fun m!2204917 () Bool)

(assert (=> b!1782358 m!2204917))

(declare-fun m!2204919 () Bool)

(assert (=> b!1782358 m!2204919))

(assert (=> b!1782358 m!2204911))

(declare-fun m!2204921 () Bool)

(assert (=> b!1782358 m!2204921))

(assert (=> b!1782358 m!2204777))

(assert (=> b!1782358 m!2204907))

(assert (=> b!1782358 m!2204777))

(declare-fun m!2204925 () Bool)

(assert (=> b!1782358 m!2204925))

(assert (=> b!1782358 m!2204911))

(assert (=> b!1782356 m!2204893))

(assert (=> b!1782356 m!2204895))

(assert (=> b!1782356 m!2204895))

(assert (=> b!1782356 m!2204897))

(assert (=> b!1782356 m!2204897))

(declare-fun m!2204929 () Bool)

(assert (=> b!1782356 m!2204929))

(assert (=> b!1782355 m!2204893))

(assert (=> b!1782351 m!2204893))

(declare-fun m!2204931 () Bool)

(assert (=> b!1782351 m!2204931))

(assert (=> b!1782350 m!2204893))

(declare-fun m!2204933 () Bool)

(assert (=> b!1782350 m!2204933))

(assert (=> b!1782350 m!2204933))

(declare-fun m!2204935 () Bool)

(assert (=> b!1782350 m!2204935))

(declare-fun m!2204937 () Bool)

(assert (=> d!544146 m!2204937))

(declare-fun m!2204939 () Bool)

(assert (=> d!544146 m!2204939))

(declare-fun m!2204941 () Bool)

(assert (=> d!544146 m!2204941))

(declare-fun m!2204943 () Bool)

(assert (=> d!544146 m!2204943))

(assert (=> b!1782360 m!2204893))

(declare-fun m!2204945 () Bool)

(assert (=> b!1782360 m!2204945))

(assert (=> b!1782360 m!2204777))

(assert (=> b!1782354 m!2204907))

(assert (=> b!1782354 m!2204777))

(assert (=> b!1782354 m!2204907))

(assert (=> b!1782354 m!2204777))

(assert (=> b!1782354 m!2204925))

(declare-fun m!2204947 () Bool)

(assert (=> b!1782354 m!2204947))

(assert (=> b!1781879 d!544146))

(declare-fun b!1782394 () Bool)

(declare-fun e!1140705 () Bool)

(assert (=> b!1782394 (= e!1140705 (>= (size!15604 lt!692767) (size!15604 lt!692762)))))

(declare-fun b!1782391 () Bool)

(declare-fun e!1140703 () Bool)

(declare-fun e!1140704 () Bool)

(assert (=> b!1782391 (= e!1140703 e!1140704)))

(declare-fun res!803510 () Bool)

(assert (=> b!1782391 (=> (not res!803510) (not e!1140704))))

(assert (=> b!1782391 (= res!803510 (not ((_ is Nil!19639) lt!692767)))))

(declare-fun b!1782392 () Bool)

(declare-fun res!803509 () Bool)

(assert (=> b!1782392 (=> (not res!803509) (not e!1140704))))

(assert (=> b!1782392 (= res!803509 (= (head!4166 lt!692762) (head!4166 lt!692767)))))

(declare-fun b!1782393 () Bool)

(assert (=> b!1782393 (= e!1140704 (isPrefix!1759 (tail!2667 lt!692762) (tail!2667 lt!692767)))))

(declare-fun d!544200 () Bool)

(assert (=> d!544200 e!1140705))

(declare-fun res!803511 () Bool)

(assert (=> d!544200 (=> res!803511 e!1140705)))

(declare-fun lt!692982 () Bool)

(assert (=> d!544200 (= res!803511 (not lt!692982))))

(assert (=> d!544200 (= lt!692982 e!1140703)))

(declare-fun res!803512 () Bool)

(assert (=> d!544200 (=> res!803512 e!1140703)))

(assert (=> d!544200 (= res!803512 ((_ is Nil!19639) lt!692762))))

(assert (=> d!544200 (= (isPrefix!1759 lt!692762 lt!692767) lt!692982)))

(assert (= (and d!544200 (not res!803512)) b!1782391))

(assert (= (and b!1782391 res!803510) b!1782392))

(assert (= (and b!1782392 res!803509) b!1782393))

(assert (= (and d!544200 (not res!803511)) b!1782394))

(assert (=> b!1782394 m!2204777))

(assert (=> b!1782394 m!2204365))

(assert (=> b!1782392 m!2204547))

(declare-fun m!2204961 () Bool)

(assert (=> b!1782392 m!2204961))

(assert (=> b!1782393 m!2204551))

(assert (=> b!1782393 m!2204779))

(assert (=> b!1782393 m!2204551))

(assert (=> b!1782393 m!2204779))

(declare-fun m!2204963 () Bool)

(assert (=> b!1782393 m!2204963))

(assert (=> b!1781878 d!544200))

(declare-fun d!544208 () Bool)

(declare-fun e!1140712 () Bool)

(assert (=> d!544208 e!1140712))

(declare-fun res!803517 () Bool)

(assert (=> d!544208 (=> (not res!803517) (not e!1140712))))

(assert (=> d!544208 (= res!803517 (isDefined!3403 (getRuleFromTag!567 thiss!24550 rules!3447 (tag!3915 (rule!5595 (_1!11017 lt!692735))))))))

(declare-fun lt!692990 () Unit!33945)

(declare-fun choose!11198 (LexerInterface!3148 List!19710 List!19709 Token!6604) Unit!33945)

(assert (=> d!544208 (= lt!692990 (choose!11198 thiss!24550 rules!3447 lt!692767 (_1!11017 lt!692735)))))

(assert (=> d!544208 (rulesInvariant!2817 thiss!24550 rules!3447)))

(assert (=> d!544208 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!567 thiss!24550 rules!3447 lt!692767 (_1!11017 lt!692735)) lt!692990)))

(declare-fun b!1782407 () Bool)

(declare-fun res!803518 () Bool)

(assert (=> b!1782407 (=> (not res!803518) (not e!1140712))))

(assert (=> b!1782407 (= res!803518 (matchR!2320 (regex!3519 (get!6038 (getRuleFromTag!567 thiss!24550 rules!3447 (tag!3915 (rule!5595 (_1!11017 lt!692735)))))) (list!7985 (charsOf!2168 (_1!11017 lt!692735)))))))

(declare-fun b!1782408 () Bool)

(assert (=> b!1782408 (= e!1140712 (= (rule!5595 (_1!11017 lt!692735)) (get!6038 (getRuleFromTag!567 thiss!24550 rules!3447 (tag!3915 (rule!5595 (_1!11017 lt!692735)))))))))

(assert (= (and d!544208 res!803517) b!1782407))

(assert (= (and b!1782407 res!803518) b!1782408))

(assert (=> d!544208 m!2204273))

(assert (=> d!544208 m!2204273))

(declare-fun m!2204973 () Bool)

(assert (=> d!544208 m!2204973))

(declare-fun m!2204975 () Bool)

(assert (=> d!544208 m!2204975))

(assert (=> d!544208 m!2204255))

(assert (=> b!1782407 m!2204279))

(assert (=> b!1782407 m!2204279))

(assert (=> b!1782407 m!2204321))

(assert (=> b!1782407 m!2204273))

(declare-fun m!2204977 () Bool)

(assert (=> b!1782407 m!2204977))

(assert (=> b!1782407 m!2204321))

(declare-fun m!2204979 () Bool)

(assert (=> b!1782407 m!2204979))

(assert (=> b!1782407 m!2204273))

(assert (=> b!1782408 m!2204273))

(assert (=> b!1782408 m!2204273))

(assert (=> b!1782408 m!2204977))

(assert (=> b!1781878 d!544208))

(declare-fun b!1782421 () Bool)

(declare-fun e!1140723 () Option!4060)

(assert (=> b!1782421 (= e!1140723 None!4059)))

(declare-fun b!1782422 () Bool)

(declare-fun e!1140722 () Bool)

(declare-fun lt!692999 () Option!4060)

(assert (=> b!1782422 (= e!1140722 (= (tag!3915 (get!6038 lt!692999)) (tag!3915 (rule!5595 (_1!11017 lt!692735)))))))

(declare-fun b!1782423 () Bool)

(declare-fun lt!692997 () Unit!33945)

(declare-fun lt!692998 () Unit!33945)

(assert (=> b!1782423 (= lt!692997 lt!692998)))

(assert (=> b!1782423 (rulesInvariant!2817 thiss!24550 (t!166653 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!220 (LexerInterface!3148 Rule!6838 List!19710) Unit!33945)

(assert (=> b!1782423 (= lt!692998 (lemmaInvariantOnRulesThenOnTail!220 thiss!24550 (h!25041 rules!3447) (t!166653 rules!3447)))))

(assert (=> b!1782423 (= e!1140723 (getRuleFromTag!567 thiss!24550 (t!166653 rules!3447) (tag!3915 (rule!5595 (_1!11017 lt!692735)))))))

(declare-fun d!544216 () Bool)

(declare-fun e!1140721 () Bool)

(assert (=> d!544216 e!1140721))

(declare-fun res!803523 () Bool)

(assert (=> d!544216 (=> res!803523 e!1140721)))

(declare-fun isEmpty!12415 (Option!4060) Bool)

(assert (=> d!544216 (= res!803523 (isEmpty!12415 lt!692999))))

(declare-fun e!1140724 () Option!4060)

(assert (=> d!544216 (= lt!692999 e!1140724)))

(declare-fun c!289964 () Bool)

(assert (=> d!544216 (= c!289964 (and ((_ is Cons!19640) rules!3447) (= (tag!3915 (h!25041 rules!3447)) (tag!3915 (rule!5595 (_1!11017 lt!692735))))))))

(assert (=> d!544216 (rulesInvariant!2817 thiss!24550 rules!3447)))

(assert (=> d!544216 (= (getRuleFromTag!567 thiss!24550 rules!3447 (tag!3915 (rule!5595 (_1!11017 lt!692735)))) lt!692999)))

(declare-fun b!1782424 () Bool)

(assert (=> b!1782424 (= e!1140724 e!1140723)))

(declare-fun c!289963 () Bool)

(assert (=> b!1782424 (= c!289963 (and ((_ is Cons!19640) rules!3447) (not (= (tag!3915 (h!25041 rules!3447)) (tag!3915 (rule!5595 (_1!11017 lt!692735)))))))))

(declare-fun b!1782425 () Bool)

(assert (=> b!1782425 (= e!1140724 (Some!4059 (h!25041 rules!3447)))))

(declare-fun b!1782426 () Bool)

(assert (=> b!1782426 (= e!1140721 e!1140722)))

(declare-fun res!803524 () Bool)

(assert (=> b!1782426 (=> (not res!803524) (not e!1140722))))

(assert (=> b!1782426 (= res!803524 (contains!3551 rules!3447 (get!6038 lt!692999)))))

(assert (= (and d!544216 c!289964) b!1782425))

(assert (= (and d!544216 (not c!289964)) b!1782424))

(assert (= (and b!1782424 c!289963) b!1782423))

(assert (= (and b!1782424 (not c!289963)) b!1782421))

(assert (= (and d!544216 (not res!803523)) b!1782426))

(assert (= (and b!1782426 res!803524) b!1782422))

(declare-fun m!2204981 () Bool)

(assert (=> b!1782422 m!2204981))

(declare-fun m!2204983 () Bool)

(assert (=> b!1782423 m!2204983))

(declare-fun m!2204985 () Bool)

(assert (=> b!1782423 m!2204985))

(declare-fun m!2204987 () Bool)

(assert (=> b!1782423 m!2204987))

(declare-fun m!2204989 () Bool)

(assert (=> d!544216 m!2204989))

(assert (=> d!544216 m!2204255))

(assert (=> b!1782426 m!2204981))

(assert (=> b!1782426 m!2204981))

(declare-fun m!2204991 () Bool)

(assert (=> b!1782426 m!2204991))

(assert (=> b!1781878 d!544216))

(declare-fun d!544218 () Bool)

(assert (=> d!544218 (= (list!7985 lt!692769) (list!7988 (c!289863 lt!692769)))))

(declare-fun bs!405234 () Bool)

(assert (= bs!405234 d!544218))

(declare-fun m!2204993 () Bool)

(assert (=> bs!405234 m!2204993))

(assert (=> b!1781878 d!544218))

(declare-fun d!544220 () Bool)

(declare-fun e!1140725 () Bool)

(assert (=> d!544220 e!1140725))

(declare-fun res!803526 () Bool)

(assert (=> d!544220 (=> (not res!803526) (not e!1140725))))

(declare-fun lt!693000 () List!19709)

(assert (=> d!544220 (= res!803526 (= (content!2858 lt!693000) ((_ map or) (content!2858 lt!692736) (content!2858 suffix!1421))))))

(declare-fun e!1140726 () List!19709)

(assert (=> d!544220 (= lt!693000 e!1140726)))

(declare-fun c!289965 () Bool)

(assert (=> d!544220 (= c!289965 ((_ is Nil!19639) lt!692736))))

(assert (=> d!544220 (= (++!5343 lt!692736 suffix!1421) lt!693000)))

(declare-fun b!1782428 () Bool)

(assert (=> b!1782428 (= e!1140726 (Cons!19639 (h!25040 lt!692736) (++!5343 (t!166652 lt!692736) suffix!1421)))))

(declare-fun b!1782429 () Bool)

(declare-fun res!803525 () Bool)

(assert (=> b!1782429 (=> (not res!803525) (not e!1140725))))

(assert (=> b!1782429 (= res!803525 (= (size!15604 lt!693000) (+ (size!15604 lt!692736) (size!15604 suffix!1421))))))

(declare-fun b!1782427 () Bool)

(assert (=> b!1782427 (= e!1140726 suffix!1421)))

(declare-fun b!1782430 () Bool)

(assert (=> b!1782430 (= e!1140725 (or (not (= suffix!1421 Nil!19639)) (= lt!693000 lt!692736)))))

(assert (= (and d!544220 c!289965) b!1782427))

(assert (= (and d!544220 (not c!289965)) b!1782428))

(assert (= (and d!544220 res!803526) b!1782429))

(assert (= (and b!1782429 res!803525) b!1782430))

(declare-fun m!2204995 () Bool)

(assert (=> d!544220 m!2204995))

(assert (=> d!544220 m!2204505))

(declare-fun m!2204997 () Bool)

(assert (=> d!544220 m!2204997))

(declare-fun m!2204999 () Bool)

(assert (=> b!1782428 m!2204999))

(declare-fun m!2205001 () Bool)

(assert (=> b!1782429 m!2205001))

(assert (=> b!1782429 m!2204513))

(declare-fun m!2205003 () Bool)

(assert (=> b!1782429 m!2205003))

(assert (=> b!1781878 d!544220))

(declare-fun b!1782434 () Bool)

(declare-fun e!1140729 () Bool)

(assert (=> b!1782434 (= e!1140729 (>= (size!15604 (++!5343 lt!692762 (_2!11017 lt!692735))) (size!15604 lt!692762)))))

(declare-fun b!1782431 () Bool)

(declare-fun e!1140727 () Bool)

(declare-fun e!1140728 () Bool)

(assert (=> b!1782431 (= e!1140727 e!1140728)))

(declare-fun res!803528 () Bool)

(assert (=> b!1782431 (=> (not res!803528) (not e!1140728))))

(assert (=> b!1782431 (= res!803528 (not ((_ is Nil!19639) (++!5343 lt!692762 (_2!11017 lt!692735)))))))

(declare-fun b!1782432 () Bool)

(declare-fun res!803527 () Bool)

(assert (=> b!1782432 (=> (not res!803527) (not e!1140728))))

(assert (=> b!1782432 (= res!803527 (= (head!4166 lt!692762) (head!4166 (++!5343 lt!692762 (_2!11017 lt!692735)))))))

(declare-fun b!1782433 () Bool)

(assert (=> b!1782433 (= e!1140728 (isPrefix!1759 (tail!2667 lt!692762) (tail!2667 (++!5343 lt!692762 (_2!11017 lt!692735)))))))

(declare-fun d!544222 () Bool)

(assert (=> d!544222 e!1140729))

(declare-fun res!803529 () Bool)

(assert (=> d!544222 (=> res!803529 e!1140729)))

(declare-fun lt!693001 () Bool)

(assert (=> d!544222 (= res!803529 (not lt!693001))))

(assert (=> d!544222 (= lt!693001 e!1140727)))

(declare-fun res!803530 () Bool)

(assert (=> d!544222 (=> res!803530 e!1140727)))

(assert (=> d!544222 (= res!803530 ((_ is Nil!19639) lt!692762))))

(assert (=> d!544222 (= (isPrefix!1759 lt!692762 (++!5343 lt!692762 (_2!11017 lt!692735))) lt!693001)))

(assert (= (and d!544222 (not res!803530)) b!1782431))

(assert (= (and b!1782431 res!803528) b!1782432))

(assert (= (and b!1782432 res!803527) b!1782433))

(assert (= (and d!544222 (not res!803529)) b!1782434))

(assert (=> b!1782434 m!2204269))

(declare-fun m!2205005 () Bool)

(assert (=> b!1782434 m!2205005))

(assert (=> b!1782434 m!2204365))

(assert (=> b!1782432 m!2204547))

(assert (=> b!1782432 m!2204269))

(declare-fun m!2205007 () Bool)

(assert (=> b!1782432 m!2205007))

(assert (=> b!1782433 m!2204551))

(assert (=> b!1782433 m!2204269))

(declare-fun m!2205009 () Bool)

(assert (=> b!1782433 m!2205009))

(assert (=> b!1782433 m!2204551))

(assert (=> b!1782433 m!2205009))

(declare-fun m!2205011 () Bool)

(assert (=> b!1782433 m!2205011))

(assert (=> b!1781878 d!544222))

(declare-fun d!544224 () Bool)

(assert (=> d!544224 (= (get!6037 lt!692732) (v!25551 lt!692732))))

(assert (=> b!1781878 d!544224))

(declare-fun d!544226 () Bool)

(assert (=> d!544226 (isPrefix!1759 lt!692762 (++!5343 lt!692762 (_2!11017 lt!692735)))))

(declare-fun lt!693004 () Unit!33945)

(declare-fun choose!11199 (List!19709 List!19709) Unit!33945)

(assert (=> d!544226 (= lt!693004 (choose!11199 lt!692762 (_2!11017 lt!692735)))))

(assert (=> d!544226 (= (lemmaConcatTwoListThenFirstIsPrefix!1268 lt!692762 (_2!11017 lt!692735)) lt!693004)))

(declare-fun bs!405235 () Bool)

(assert (= bs!405235 d!544226))

(assert (=> bs!405235 m!2204269))

(assert (=> bs!405235 m!2204269))

(assert (=> bs!405235 m!2204271))

(declare-fun m!2205013 () Bool)

(assert (=> bs!405235 m!2205013))

(assert (=> b!1781878 d!544226))

(declare-fun d!544228 () Bool)

(assert (=> d!544228 (isPrefix!1759 lt!692736 (++!5343 lt!692736 suffix!1421))))

(declare-fun lt!693005 () Unit!33945)

(assert (=> d!544228 (= lt!693005 (choose!11199 lt!692736 suffix!1421))))

(assert (=> d!544228 (= (lemmaConcatTwoListThenFirstIsPrefix!1268 lt!692736 suffix!1421) lt!693005)))

(declare-fun bs!405236 () Bool)

(assert (= bs!405236 d!544228))

(assert (=> bs!405236 m!2204261))

(assert (=> bs!405236 m!2204261))

(declare-fun m!2205015 () Bool)

(assert (=> bs!405236 m!2205015))

(declare-fun m!2205017 () Bool)

(assert (=> bs!405236 m!2205017))

(assert (=> b!1781878 d!544228))

(declare-fun d!544230 () Bool)

(assert (=> d!544230 (isDefined!3404 (maxPrefix!1702 thiss!24550 rules!3447 (++!5343 lt!692736 suffix!1421)))))

(declare-fun lt!693081 () Unit!33945)

(declare-fun e!1140792 () Unit!33945)

(assert (=> d!544230 (= lt!693081 e!1140792)))

(declare-fun c!289977 () Bool)

(assert (=> d!544230 (= c!289977 (isEmpty!12414 (maxPrefix!1702 thiss!24550 rules!3447 (++!5343 lt!692736 suffix!1421))))))

(declare-fun lt!693086 () Unit!33945)

(declare-fun lt!693078 () Unit!33945)

(assert (=> d!544230 (= lt!693086 lt!693078)))

(declare-fun e!1140793 () Bool)

(assert (=> d!544230 e!1140793))

(declare-fun res!803578 () Bool)

(assert (=> d!544230 (=> (not res!803578) (not e!1140793))))

(declare-fun lt!693082 () Token!6604)

(assert (=> d!544230 (= res!803578 (isDefined!3403 (getRuleFromTag!567 thiss!24550 rules!3447 (tag!3915 (rule!5595 lt!693082)))))))

(assert (=> d!544230 (= lt!693078 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!567 thiss!24550 rules!3447 lt!692736 lt!693082))))

(declare-fun lt!693084 () Unit!33945)

(declare-fun lt!693085 () Unit!33945)

(assert (=> d!544230 (= lt!693084 lt!693085)))

(declare-fun lt!693087 () List!19709)

(assert (=> d!544230 (isPrefix!1759 lt!693087 (++!5343 lt!692736 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!341 (List!19709 List!19709 List!19709) Unit!33945)

(assert (=> d!544230 (= lt!693085 (lemmaPrefixStaysPrefixWhenAddingToSuffix!341 lt!693087 lt!692736 suffix!1421))))

(assert (=> d!544230 (= lt!693087 (list!7985 (charsOf!2168 lt!693082)))))

(declare-fun lt!693074 () Unit!33945)

(declare-fun lt!693083 () Unit!33945)

(assert (=> d!544230 (= lt!693074 lt!693083)))

(declare-fun lt!693080 () List!19709)

(declare-fun lt!693076 () List!19709)

(assert (=> d!544230 (isPrefix!1759 lt!693080 (++!5343 lt!693080 lt!693076))))

(assert (=> d!544230 (= lt!693083 (lemmaConcatTwoListThenFirstIsPrefix!1268 lt!693080 lt!693076))))

(assert (=> d!544230 (= lt!693076 (_2!11017 (get!6037 (maxPrefix!1702 thiss!24550 rules!3447 lt!692736))))))

(assert (=> d!544230 (= lt!693080 (list!7985 (charsOf!2168 lt!693082)))))

(declare-datatypes ((List!19716 0))(
  ( (Nil!19646) (Cons!19646 (h!25047 Token!6604) (t!166719 List!19716)) )
))
(declare-fun head!4168 (List!19716) Token!6604)

(declare-datatypes ((IArray!13075 0))(
  ( (IArray!13076 (innerList!6595 List!19716)) )
))
(declare-datatypes ((Conc!6535 0))(
  ( (Node!6535 (left!15744 Conc!6535) (right!16074 Conc!6535) (csize!13300 Int) (cheight!6746 Int)) (Leaf!9515 (xs!9411 IArray!13075) (csize!13301 Int)) (Empty!6535) )
))
(declare-datatypes ((BalanceConc!13014 0))(
  ( (BalanceConc!13015 (c!290013 Conc!6535)) )
))
(declare-fun list!7989 (BalanceConc!13014) List!19716)

(declare-datatypes ((tuple2!19238 0))(
  ( (tuple2!19239 (_1!11021 BalanceConc!13014) (_2!11021 BalanceConc!13010)) )
))
(declare-fun lex!1480 (LexerInterface!3148 List!19710 BalanceConc!13010) tuple2!19238)

(assert (=> d!544230 (= lt!693082 (head!4168 (list!7989 (_1!11021 (lex!1480 thiss!24550 rules!3447 (seqFromList!2488 lt!692736))))))))

(assert (=> d!544230 (not (isEmpty!12411 rules!3447))))

(assert (=> d!544230 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!670 thiss!24550 rules!3447 lt!692736 suffix!1421) lt!693081)))

(declare-fun b!1782560 () Bool)

(declare-fun Unit!33955 () Unit!33945)

(assert (=> b!1782560 (= e!1140792 Unit!33955)))

(declare-fun b!1782559 () Bool)

(declare-fun Unit!33956 () Unit!33945)

(assert (=> b!1782559 (= e!1140792 Unit!33956)))

(declare-fun lt!693072 () List!19709)

(assert (=> b!1782559 (= lt!693072 (++!5343 lt!692736 suffix!1421))))

(declare-fun lt!693077 () Unit!33945)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!349 (LexerInterface!3148 Rule!6838 List!19710 List!19709) Unit!33945)

(assert (=> b!1782559 (= lt!693077 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!349 thiss!24550 (rule!5595 lt!693082) rules!3447 lt!693072))))

(assert (=> b!1782559 (isEmpty!12414 (maxPrefixOneRule!1071 thiss!24550 (rule!5595 lt!693082) lt!693072))))

(declare-fun lt!693075 () Unit!33945)

(assert (=> b!1782559 (= lt!693075 lt!693077)))

(declare-fun lt!693088 () List!19709)

(assert (=> b!1782559 (= lt!693088 (list!7985 (charsOf!2168 lt!693082)))))

(declare-fun lt!693073 () Unit!33945)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!345 (LexerInterface!3148 Rule!6838 List!19709 List!19709) Unit!33945)

(assert (=> b!1782559 (= lt!693073 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!345 thiss!24550 (rule!5595 lt!693082) lt!693088 (++!5343 lt!692736 suffix!1421)))))

(assert (=> b!1782559 (not (matchR!2320 (regex!3519 (rule!5595 lt!693082)) lt!693088))))

(declare-fun lt!693079 () Unit!33945)

(assert (=> b!1782559 (= lt!693079 lt!693073)))

(assert (=> b!1782559 false))

(declare-fun b!1782557 () Bool)

(declare-fun res!803579 () Bool)

(assert (=> b!1782557 (=> (not res!803579) (not e!1140793))))

(assert (=> b!1782557 (= res!803579 (matchR!2320 (regex!3519 (get!6038 (getRuleFromTag!567 thiss!24550 rules!3447 (tag!3915 (rule!5595 lt!693082))))) (list!7985 (charsOf!2168 lt!693082))))))

(declare-fun b!1782558 () Bool)

(assert (=> b!1782558 (= e!1140793 (= (rule!5595 lt!693082) (get!6038 (getRuleFromTag!567 thiss!24550 rules!3447 (tag!3915 (rule!5595 lt!693082))))))))

(assert (= (and d!544230 res!803578) b!1782557))

(assert (= (and b!1782557 res!803579) b!1782558))

(assert (= (and d!544230 c!289977) b!1782559))

(assert (= (and d!544230 (not c!289977)) b!1782560))

(declare-fun m!2205143 () Bool)

(assert (=> d!544230 m!2205143))

(declare-fun m!2205145 () Bool)

(assert (=> d!544230 m!2205145))

(declare-fun m!2205147 () Bool)

(assert (=> d!544230 m!2205147))

(assert (=> d!544230 m!2204291))

(declare-fun m!2205149 () Bool)

(assert (=> d!544230 m!2205149))

(declare-fun m!2205151 () Bool)

(assert (=> d!544230 m!2205151))

(assert (=> d!544230 m!2205145))

(assert (=> d!544230 m!2204261))

(declare-fun m!2205153 () Bool)

(assert (=> d!544230 m!2205153))

(declare-fun m!2205155 () Bool)

(assert (=> d!544230 m!2205155))

(declare-fun m!2205157 () Bool)

(assert (=> d!544230 m!2205157))

(declare-fun m!2205159 () Bool)

(assert (=> d!544230 m!2205159))

(declare-fun m!2205161 () Bool)

(assert (=> d!544230 m!2205161))

(declare-fun m!2205163 () Bool)

(assert (=> d!544230 m!2205163))

(assert (=> d!544230 m!2204291))

(assert (=> d!544230 m!2204261))

(assert (=> d!544230 m!2205155))

(assert (=> d!544230 m!2205155))

(declare-fun m!2205165 () Bool)

(assert (=> d!544230 m!2205165))

(assert (=> d!544230 m!2205161))

(declare-fun m!2205167 () Bool)

(assert (=> d!544230 m!2205167))

(assert (=> d!544230 m!2204261))

(assert (=> d!544230 m!2205167))

(declare-fun m!2205169 () Bool)

(assert (=> d!544230 m!2205169))

(declare-fun m!2205171 () Bool)

(assert (=> d!544230 m!2205171))

(assert (=> d!544230 m!2205151))

(declare-fun m!2205173 () Bool)

(assert (=> d!544230 m!2205173))

(assert (=> d!544230 m!2204343))

(assert (=> d!544230 m!2205143))

(declare-fun m!2205175 () Bool)

(assert (=> d!544230 m!2205175))

(declare-fun m!2205177 () Bool)

(assert (=> d!544230 m!2205177))

(declare-fun m!2205179 () Bool)

(assert (=> b!1782559 m!2205179))

(declare-fun m!2205181 () Bool)

(assert (=> b!1782559 m!2205181))

(assert (=> b!1782559 m!2205179))

(assert (=> b!1782559 m!2205167))

(assert (=> b!1782559 m!2205169))

(assert (=> b!1782559 m!2204261))

(declare-fun m!2205183 () Bool)

(assert (=> b!1782559 m!2205183))

(declare-fun m!2205185 () Bool)

(assert (=> b!1782559 m!2205185))

(declare-fun m!2205187 () Bool)

(assert (=> b!1782559 m!2205187))

(assert (=> b!1782559 m!2205167))

(assert (=> b!1782559 m!2204261))

(assert (=> b!1782557 m!2205161))

(assert (=> b!1782557 m!2205167))

(assert (=> b!1782557 m!2205169))

(declare-fun m!2205189 () Bool)

(assert (=> b!1782557 m!2205189))

(assert (=> b!1782557 m!2205167))

(assert (=> b!1782557 m!2205169))

(assert (=> b!1782557 m!2205161))

(declare-fun m!2205191 () Bool)

(assert (=> b!1782557 m!2205191))

(assert (=> b!1782558 m!2205161))

(assert (=> b!1782558 m!2205161))

(assert (=> b!1782558 m!2205191))

(assert (=> b!1781878 d!544230))

(declare-fun b!1782564 () Bool)

(declare-fun e!1140796 () Bool)

(assert (=> b!1782564 (= e!1140796 (>= (size!15604 lt!692767) (size!15604 lt!692736)))))

(declare-fun b!1782561 () Bool)

(declare-fun e!1140794 () Bool)

(declare-fun e!1140795 () Bool)

(assert (=> b!1782561 (= e!1140794 e!1140795)))

(declare-fun res!803581 () Bool)

(assert (=> b!1782561 (=> (not res!803581) (not e!1140795))))

(assert (=> b!1782561 (= res!803581 (not ((_ is Nil!19639) lt!692767)))))

(declare-fun b!1782562 () Bool)

(declare-fun res!803580 () Bool)

(assert (=> b!1782562 (=> (not res!803580) (not e!1140795))))

(assert (=> b!1782562 (= res!803580 (= (head!4166 lt!692736) (head!4166 lt!692767)))))

(declare-fun b!1782563 () Bool)

(assert (=> b!1782563 (= e!1140795 (isPrefix!1759 (tail!2667 lt!692736) (tail!2667 lt!692767)))))

(declare-fun d!544262 () Bool)

(assert (=> d!544262 e!1140796))

(declare-fun res!803582 () Bool)

(assert (=> d!544262 (=> res!803582 e!1140796)))

(declare-fun lt!693089 () Bool)

(assert (=> d!544262 (= res!803582 (not lt!693089))))

(assert (=> d!544262 (= lt!693089 e!1140794)))

(declare-fun res!803583 () Bool)

(assert (=> d!544262 (=> res!803583 e!1140794)))

(assert (=> d!544262 (= res!803583 ((_ is Nil!19639) lt!692736))))

(assert (=> d!544262 (= (isPrefix!1759 lt!692736 lt!692767) lt!693089)))

(assert (= (and d!544262 (not res!803583)) b!1782561))

(assert (= (and b!1782561 res!803581) b!1782562))

(assert (= (and b!1782562 res!803580) b!1782563))

(assert (= (and d!544262 (not res!803582)) b!1782564))

(assert (=> b!1782564 m!2204777))

(assert (=> b!1782564 m!2204513))

(assert (=> b!1782562 m!2204529))

(assert (=> b!1782562 m!2204961))

(assert (=> b!1782563 m!2204533))

(assert (=> b!1782563 m!2204779))

(assert (=> b!1782563 m!2204533))

(assert (=> b!1782563 m!2204779))

(declare-fun m!2205193 () Bool)

(assert (=> b!1782563 m!2205193))

(assert (=> b!1781878 d!544262))

(declare-fun d!544264 () Bool)

(assert (=> d!544264 (= (isDefined!3403 lt!692759) (not (isEmpty!12415 lt!692759)))))

(declare-fun bs!405244 () Bool)

(assert (= bs!405244 d!544264))

(declare-fun m!2205195 () Bool)

(assert (=> bs!405244 m!2205195))

(assert (=> b!1781878 d!544264))

(declare-fun d!544266 () Bool)

(declare-fun e!1140797 () Bool)

(assert (=> d!544266 e!1140797))

(declare-fun res!803585 () Bool)

(assert (=> d!544266 (=> (not res!803585) (not e!1140797))))

(declare-fun lt!693090 () List!19709)

(assert (=> d!544266 (= res!803585 (= (content!2858 lt!693090) ((_ map or) (content!2858 lt!692762) (content!2858 (_2!11017 lt!692735)))))))

(declare-fun e!1140798 () List!19709)

(assert (=> d!544266 (= lt!693090 e!1140798)))

(declare-fun c!289978 () Bool)

(assert (=> d!544266 (= c!289978 ((_ is Nil!19639) lt!692762))))

(assert (=> d!544266 (= (++!5343 lt!692762 (_2!11017 lt!692735)) lt!693090)))

(declare-fun b!1782566 () Bool)

(assert (=> b!1782566 (= e!1140798 (Cons!19639 (h!25040 lt!692762) (++!5343 (t!166652 lt!692762) (_2!11017 lt!692735))))))

(declare-fun b!1782567 () Bool)

(declare-fun res!803584 () Bool)

(assert (=> b!1782567 (=> (not res!803584) (not e!1140797))))

(assert (=> b!1782567 (= res!803584 (= (size!15604 lt!693090) (+ (size!15604 lt!692762) (size!15604 (_2!11017 lt!692735)))))))

(declare-fun b!1782565 () Bool)

(assert (=> b!1782565 (= e!1140798 (_2!11017 lt!692735))))

(declare-fun b!1782568 () Bool)

(assert (=> b!1782568 (= e!1140797 (or (not (= (_2!11017 lt!692735) Nil!19639)) (= lt!693090 lt!692762)))))

(assert (= (and d!544266 c!289978) b!1782565))

(assert (= (and d!544266 (not c!289978)) b!1782566))

(assert (= (and d!544266 res!803585) b!1782567))

(assert (= (and b!1782567 res!803584) b!1782568))

(declare-fun m!2205197 () Bool)

(assert (=> d!544266 m!2205197))

(declare-fun m!2205199 () Bool)

(assert (=> d!544266 m!2205199))

(declare-fun m!2205201 () Bool)

(assert (=> d!544266 m!2205201))

(declare-fun m!2205203 () Bool)

(assert (=> b!1782566 m!2205203))

(declare-fun m!2205205 () Bool)

(assert (=> b!1782567 m!2205205))

(assert (=> b!1782567 m!2204365))

(declare-fun m!2205207 () Bool)

(assert (=> b!1782567 m!2205207))

(assert (=> b!1781878 d!544266))

(declare-fun d!544268 () Bool)

(declare-fun lt!693091 () BalanceConc!13010)

(assert (=> d!544268 (= (list!7985 lt!693091) (originalCharacters!4333 (_1!11017 lt!692735)))))

(assert (=> d!544268 (= lt!693091 (dynLambda!9652 (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) (value!109964 (_1!11017 lt!692735))))))

(assert (=> d!544268 (= (charsOf!2168 (_1!11017 lt!692735)) lt!693091)))

(declare-fun b_lambda!58391 () Bool)

(assert (=> (not b_lambda!58391) (not d!544268)))

(assert (=> d!544268 t!166646))

(declare-fun b_and!136793 () Bool)

(assert (= b_and!136753 (and (=> t!166646 result!130354) b_and!136793)))

(assert (=> d!544268 t!166648))

(declare-fun b_and!136795 () Bool)

(assert (= b_and!136755 (and (=> t!166648 result!130356) b_and!136795)))

(assert (=> d!544268 t!166650))

(declare-fun b_and!136797 () Bool)

(assert (= b_and!136757 (and (=> t!166650 result!130358) b_and!136797)))

(declare-fun m!2205209 () Bool)

(assert (=> d!544268 m!2205209))

(assert (=> d!544268 m!2204361))

(assert (=> b!1781878 d!544268))

(declare-fun d!544270 () Bool)

(declare-fun e!1140801 () Bool)

(assert (=> d!544270 e!1140801))

(declare-fun res!803592 () Bool)

(assert (=> d!544270 (=> res!803592 e!1140801)))

(declare-fun lt!693092 () Option!4061)

(assert (=> d!544270 (= res!803592 (isEmpty!12414 lt!693092))))

(declare-fun e!1140799 () Option!4061)

(assert (=> d!544270 (= lt!693092 e!1140799)))

(declare-fun c!289979 () Bool)

(assert (=> d!544270 (= c!289979 (and ((_ is Cons!19640) rules!3447) ((_ is Nil!19640) (t!166653 rules!3447))))))

(declare-fun lt!693096 () Unit!33945)

(declare-fun lt!693094 () Unit!33945)

(assert (=> d!544270 (= lt!693096 lt!693094)))

(assert (=> d!544270 (isPrefix!1759 lt!692767 lt!692767)))

(assert (=> d!544270 (= lt!693094 (lemmaIsPrefixRefl!1160 lt!692767 lt!692767))))

(assert (=> d!544270 (rulesValidInductive!1196 thiss!24550 rules!3447)))

(assert (=> d!544270 (= (maxPrefix!1702 thiss!24550 rules!3447 lt!692767) lt!693092)))

(declare-fun b!1782569 () Bool)

(declare-fun call!111315 () Option!4061)

(assert (=> b!1782569 (= e!1140799 call!111315)))

(declare-fun b!1782570 () Bool)

(declare-fun res!803589 () Bool)

(declare-fun e!1140800 () Bool)

(assert (=> b!1782570 (=> (not res!803589) (not e!1140800))))

(assert (=> b!1782570 (= res!803589 (matchR!2320 (regex!3519 (rule!5595 (_1!11017 (get!6037 lt!693092)))) (list!7985 (charsOf!2168 (_1!11017 (get!6037 lt!693092))))))))

(declare-fun b!1782571 () Bool)

(assert (=> b!1782571 (= e!1140800 (contains!3551 rules!3447 (rule!5595 (_1!11017 (get!6037 lt!693092)))))))

(declare-fun b!1782572 () Bool)

(declare-fun res!803586 () Bool)

(assert (=> b!1782572 (=> (not res!803586) (not e!1140800))))

(assert (=> b!1782572 (= res!803586 (= (++!5343 (list!7985 (charsOf!2168 (_1!11017 (get!6037 lt!693092)))) (_2!11017 (get!6037 lt!693092))) lt!692767))))

(declare-fun b!1782573 () Bool)

(declare-fun res!803588 () Bool)

(assert (=> b!1782573 (=> (not res!803588) (not e!1140800))))

(assert (=> b!1782573 (= res!803588 (< (size!15604 (_2!11017 (get!6037 lt!693092))) (size!15604 lt!692767)))))

(declare-fun b!1782574 () Bool)

(declare-fun lt!693093 () Option!4061)

(declare-fun lt!693095 () Option!4061)

(assert (=> b!1782574 (= e!1140799 (ite (and ((_ is None!4060) lt!693093) ((_ is None!4060) lt!693095)) None!4060 (ite ((_ is None!4060) lt!693095) lt!693093 (ite ((_ is None!4060) lt!693093) lt!693095 (ite (>= (size!15602 (_1!11017 (v!25551 lt!693093))) (size!15602 (_1!11017 (v!25551 lt!693095)))) lt!693093 lt!693095)))))))

(assert (=> b!1782574 (= lt!693093 call!111315)))

(assert (=> b!1782574 (= lt!693095 (maxPrefix!1702 thiss!24550 (t!166653 rules!3447) lt!692767))))

(declare-fun b!1782575 () Bool)

(declare-fun res!803587 () Bool)

(assert (=> b!1782575 (=> (not res!803587) (not e!1140800))))

(assert (=> b!1782575 (= res!803587 (= (value!109964 (_1!11017 (get!6037 lt!693092))) (apply!5319 (transformation!3519 (rule!5595 (_1!11017 (get!6037 lt!693092)))) (seqFromList!2488 (originalCharacters!4333 (_1!11017 (get!6037 lt!693092)))))))))

(declare-fun bm!111310 () Bool)

(assert (=> bm!111310 (= call!111315 (maxPrefixOneRule!1071 thiss!24550 (h!25041 rules!3447) lt!692767))))

(declare-fun b!1782576 () Bool)

(declare-fun res!803590 () Bool)

(assert (=> b!1782576 (=> (not res!803590) (not e!1140800))))

(assert (=> b!1782576 (= res!803590 (= (list!7985 (charsOf!2168 (_1!11017 (get!6037 lt!693092)))) (originalCharacters!4333 (_1!11017 (get!6037 lt!693092)))))))

(declare-fun b!1782577 () Bool)

(assert (=> b!1782577 (= e!1140801 e!1140800)))

(declare-fun res!803591 () Bool)

(assert (=> b!1782577 (=> (not res!803591) (not e!1140800))))

(assert (=> b!1782577 (= res!803591 (isDefined!3404 lt!693092))))

(assert (= (and d!544270 c!289979) b!1782569))

(assert (= (and d!544270 (not c!289979)) b!1782574))

(assert (= (or b!1782569 b!1782574) bm!111310))

(assert (= (and d!544270 (not res!803592)) b!1782577))

(assert (= (and b!1782577 res!803591) b!1782576))

(assert (= (and b!1782576 res!803590) b!1782573))

(assert (= (and b!1782573 res!803588) b!1782572))

(assert (= (and b!1782572 res!803586) b!1782575))

(assert (= (and b!1782575 res!803587) b!1782570))

(assert (= (and b!1782570 res!803589) b!1782571))

(declare-fun m!2205211 () Bool)

(assert (=> b!1782574 m!2205211))

(declare-fun m!2205213 () Bool)

(assert (=> bm!111310 m!2205213))

(declare-fun m!2205215 () Bool)

(assert (=> b!1782573 m!2205215))

(declare-fun m!2205217 () Bool)

(assert (=> b!1782573 m!2205217))

(assert (=> b!1782573 m!2204777))

(assert (=> b!1782571 m!2205215))

(declare-fun m!2205219 () Bool)

(assert (=> b!1782571 m!2205219))

(declare-fun m!2205221 () Bool)

(assert (=> d!544270 m!2205221))

(declare-fun m!2205223 () Bool)

(assert (=> d!544270 m!2205223))

(declare-fun m!2205225 () Bool)

(assert (=> d!544270 m!2205225))

(assert (=> d!544270 m!2204647))

(assert (=> b!1782576 m!2205215))

(declare-fun m!2205227 () Bool)

(assert (=> b!1782576 m!2205227))

(assert (=> b!1782576 m!2205227))

(declare-fun m!2205229 () Bool)

(assert (=> b!1782576 m!2205229))

(assert (=> b!1782572 m!2205215))

(assert (=> b!1782572 m!2205227))

(assert (=> b!1782572 m!2205227))

(assert (=> b!1782572 m!2205229))

(assert (=> b!1782572 m!2205229))

(declare-fun m!2205231 () Bool)

(assert (=> b!1782572 m!2205231))

(declare-fun m!2205233 () Bool)

(assert (=> b!1782577 m!2205233))

(assert (=> b!1782575 m!2205215))

(declare-fun m!2205235 () Bool)

(assert (=> b!1782575 m!2205235))

(assert (=> b!1782575 m!2205235))

(declare-fun m!2205237 () Bool)

(assert (=> b!1782575 m!2205237))

(assert (=> b!1782570 m!2205215))

(assert (=> b!1782570 m!2205227))

(assert (=> b!1782570 m!2205227))

(assert (=> b!1782570 m!2205229))

(assert (=> b!1782570 m!2205229))

(declare-fun m!2205239 () Bool)

(assert (=> b!1782570 m!2205239))

(assert (=> b!1781878 d!544270))

(declare-fun d!544272 () Bool)

(declare-fun lt!693097 () Bool)

(assert (=> d!544272 (= lt!693097 (select (content!2859 rules!3447) (rule!5595 token!523)))))

(declare-fun e!1140802 () Bool)

(assert (=> d!544272 (= lt!693097 e!1140802)))

(declare-fun res!803594 () Bool)

(assert (=> d!544272 (=> (not res!803594) (not e!1140802))))

(assert (=> d!544272 (= res!803594 ((_ is Cons!19640) rules!3447))))

(assert (=> d!544272 (= (contains!3551 rules!3447 (rule!5595 token!523)) lt!693097)))

(declare-fun b!1782578 () Bool)

(declare-fun e!1140803 () Bool)

(assert (=> b!1782578 (= e!1140802 e!1140803)))

(declare-fun res!803593 () Bool)

(assert (=> b!1782578 (=> res!803593 e!1140803)))

(assert (=> b!1782578 (= res!803593 (= (h!25041 rules!3447) (rule!5595 token!523)))))

(declare-fun b!1782579 () Bool)

(assert (=> b!1782579 (= e!1140803 (contains!3551 (t!166653 rules!3447) (rule!5595 token!523)))))

(assert (= (and d!544272 res!803594) b!1782578))

(assert (= (and b!1782578 (not res!803593)) b!1782579))

(assert (=> d!544272 m!2204523))

(declare-fun m!2205241 () Bool)

(assert (=> d!544272 m!2205241))

(declare-fun m!2205243 () Bool)

(assert (=> b!1782579 m!2205243))

(assert (=> b!1781898 d!544272))

(declare-fun d!544274 () Bool)

(declare-fun lt!693100 () Int)

(assert (=> d!544274 (= lt!693100 (size!15604 (list!7985 lt!692764)))))

(declare-fun size!15606 (Conc!6533) Int)

(assert (=> d!544274 (= lt!693100 (size!15606 (c!289863 lt!692764)))))

(assert (=> d!544274 (= (size!15603 lt!692764) lt!693100)))

(declare-fun bs!405245 () Bool)

(assert (= bs!405245 d!544274))

(assert (=> bs!405245 m!2204293))

(assert (=> bs!405245 m!2204293))

(declare-fun m!2205245 () Bool)

(assert (=> bs!405245 m!2205245))

(declare-fun m!2205247 () Bool)

(assert (=> bs!405245 m!2205247))

(assert (=> b!1781876 d!544274))

(declare-fun b!1782580 () Bool)

(declare-fun e!1140807 () Bool)

(declare-fun e!1140808 () Bool)

(assert (=> b!1782580 (= e!1140807 e!1140808)))

(declare-fun c!289981 () Bool)

(assert (=> b!1782580 (= c!289981 ((_ is EmptyLang!4847) lt!692754))))

(declare-fun b!1782582 () Bool)

(declare-fun e!1140805 () Bool)

(assert (=> b!1782582 (= e!1140805 (= (head!4166 lt!692736) (c!289862 lt!692754)))))

(declare-fun b!1782583 () Bool)

(declare-fun lt!693101 () Bool)

(declare-fun call!111316 () Bool)

(assert (=> b!1782583 (= e!1140807 (= lt!693101 call!111316))))

(declare-fun b!1782584 () Bool)

(declare-fun res!803597 () Bool)

(declare-fun e!1140809 () Bool)

(assert (=> b!1782584 (=> res!803597 e!1140809)))

(assert (=> b!1782584 (= res!803597 e!1140805)))

(declare-fun res!803598 () Bool)

(assert (=> b!1782584 (=> (not res!803598) (not e!1140805))))

(assert (=> b!1782584 (= res!803598 lt!693101)))

(declare-fun b!1782585 () Bool)

(declare-fun res!803601 () Bool)

(assert (=> b!1782585 (=> (not res!803601) (not e!1140805))))

(assert (=> b!1782585 (= res!803601 (isEmpty!12410 (tail!2667 lt!692736)))))

(declare-fun bm!111311 () Bool)

(assert (=> bm!111311 (= call!111316 (isEmpty!12410 lt!692736))))

(declare-fun b!1782581 () Bool)

(declare-fun e!1140806 () Bool)

(declare-fun e!1140804 () Bool)

(assert (=> b!1782581 (= e!1140806 e!1140804)))

(declare-fun res!803596 () Bool)

(assert (=> b!1782581 (=> res!803596 e!1140804)))

(assert (=> b!1782581 (= res!803596 call!111316)))

(declare-fun d!544276 () Bool)

(assert (=> d!544276 e!1140807))

(declare-fun c!289982 () Bool)

(assert (=> d!544276 (= c!289982 ((_ is EmptyExpr!4847) lt!692754))))

(declare-fun e!1140810 () Bool)

(assert (=> d!544276 (= lt!693101 e!1140810)))

(declare-fun c!289980 () Bool)

(assert (=> d!544276 (= c!289980 (isEmpty!12410 lt!692736))))

(assert (=> d!544276 (validRegex!1964 lt!692754)))

(assert (=> d!544276 (= (matchR!2320 lt!692754 lt!692736) lt!693101)))

(declare-fun b!1782586 () Bool)

(declare-fun res!803595 () Bool)

(assert (=> b!1782586 (=> res!803595 e!1140809)))

(assert (=> b!1782586 (= res!803595 (not ((_ is ElementMatch!4847) lt!692754)))))

(assert (=> b!1782586 (= e!1140808 e!1140809)))

(declare-fun b!1782587 () Bool)

(assert (=> b!1782587 (= e!1140810 (nullable!1491 lt!692754))))

(declare-fun b!1782588 () Bool)

(assert (=> b!1782588 (= e!1140808 (not lt!693101))))

(declare-fun b!1782589 () Bool)

(assert (=> b!1782589 (= e!1140804 (not (= (head!4166 lt!692736) (c!289862 lt!692754))))))

(declare-fun b!1782590 () Bool)

(assert (=> b!1782590 (= e!1140810 (matchR!2320 (derivativeStep!1260 lt!692754 (head!4166 lt!692736)) (tail!2667 lt!692736)))))

(declare-fun b!1782591 () Bool)

(assert (=> b!1782591 (= e!1140809 e!1140806)))

(declare-fun res!803600 () Bool)

(assert (=> b!1782591 (=> (not res!803600) (not e!1140806))))

(assert (=> b!1782591 (= res!803600 (not lt!693101))))

(declare-fun b!1782592 () Bool)

(declare-fun res!803599 () Bool)

(assert (=> b!1782592 (=> (not res!803599) (not e!1140805))))

(assert (=> b!1782592 (= res!803599 (not call!111316))))

(declare-fun b!1782593 () Bool)

(declare-fun res!803602 () Bool)

(assert (=> b!1782593 (=> res!803602 e!1140804)))

(assert (=> b!1782593 (= res!803602 (not (isEmpty!12410 (tail!2667 lt!692736))))))

(assert (= (and d!544276 c!289980) b!1782587))

(assert (= (and d!544276 (not c!289980)) b!1782590))

(assert (= (and d!544276 c!289982) b!1782583))

(assert (= (and d!544276 (not c!289982)) b!1782580))

(assert (= (and b!1782580 c!289981) b!1782588))

(assert (= (and b!1782580 (not c!289981)) b!1782586))

(assert (= (and b!1782586 (not res!803595)) b!1782584))

(assert (= (and b!1782584 res!803598) b!1782592))

(assert (= (and b!1782592 res!803599) b!1782585))

(assert (= (and b!1782585 res!803601) b!1782582))

(assert (= (and b!1782584 (not res!803597)) b!1782591))

(assert (= (and b!1782591 res!803600) b!1782581))

(assert (= (and b!1782581 (not res!803596)) b!1782593))

(assert (= (and b!1782593 (not res!803602)) b!1782589))

(assert (= (or b!1782583 b!1782581 b!1782592) bm!111311))

(assert (=> b!1782582 m!2204529))

(assert (=> b!1782590 m!2204529))

(assert (=> b!1782590 m!2204529))

(declare-fun m!2205249 () Bool)

(assert (=> b!1782590 m!2205249))

(assert (=> b!1782590 m!2204533))

(assert (=> b!1782590 m!2205249))

(assert (=> b!1782590 m!2204533))

(declare-fun m!2205251 () Bool)

(assert (=> b!1782590 m!2205251))

(assert (=> b!1782589 m!2204529))

(assert (=> b!1782593 m!2204533))

(assert (=> b!1782593 m!2204533))

(assert (=> b!1782593 m!2204537))

(assert (=> d!544276 m!2204539))

(declare-fun m!2205253 () Bool)

(assert (=> d!544276 m!2205253))

(assert (=> bm!111311 m!2204539))

(assert (=> b!1782585 m!2204533))

(assert (=> b!1782585 m!2204533))

(assert (=> b!1782585 m!2204537))

(declare-fun m!2205255 () Bool)

(assert (=> b!1782587 m!2205255))

(assert (=> b!1781876 d!544276))

(declare-fun d!544278 () Bool)

(assert (=> d!544278 (matchR!2320 (rulesRegex!875 thiss!24550 rules!3447) (list!7985 (charsOf!2168 token!523)))))

(declare-fun lt!693104 () Unit!33945)

(declare-fun choose!11202 (LexerInterface!3148 List!19710 List!19709 Token!6604 Rule!6838 List!19709) Unit!33945)

(assert (=> d!544278 (= lt!693104 (choose!11202 thiss!24550 rules!3447 lt!692736 token!523 rule!422 Nil!19639))))

(assert (=> d!544278 (not (isEmpty!12411 rules!3447))))

(assert (=> d!544278 (= (lemmaMaxPrefixThenMatchesRulesRegex!226 thiss!24550 rules!3447 lt!692736 token!523 rule!422 Nil!19639) lt!693104)))

(declare-fun bs!405246 () Bool)

(assert (= bs!405246 d!544278))

(assert (=> bs!405246 m!2204343))

(assert (=> bs!405246 m!2204295))

(assert (=> bs!405246 m!2204295))

(declare-fun m!2205257 () Bool)

(assert (=> bs!405246 m!2205257))

(assert (=> bs!405246 m!2204341))

(assert (=> bs!405246 m!2205257))

(declare-fun m!2205259 () Bool)

(assert (=> bs!405246 m!2205259))

(assert (=> bs!405246 m!2204341))

(declare-fun m!2205261 () Bool)

(assert (=> bs!405246 m!2205261))

(assert (=> b!1781876 d!544278))

(declare-fun d!544280 () Bool)

(declare-fun isBalanced!2044 (Conc!6533) Bool)

(assert (=> d!544280 (= (inv!25566 (dynLambda!9652 (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) (value!109964 (_1!11017 lt!692735)))) (isBalanced!2044 (c!289863 (dynLambda!9652 (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) (value!109964 (_1!11017 lt!692735))))))))

(declare-fun bs!405247 () Bool)

(assert (= bs!405247 d!544280))

(declare-fun m!2205263 () Bool)

(assert (=> bs!405247 m!2205263))

(assert (=> tb!108347 d!544280))

(declare-fun b!1782604 () Bool)

(declare-fun e!1140817 () Int)

(assert (=> b!1782604 (= e!1140817 (+ 1 (getIndex!184 (t!166653 rules!3447) (rule!5595 token!523))))))

(declare-fun b!1782605 () Bool)

(assert (=> b!1782605 (= e!1140817 (- 1))))

(declare-fun b!1782603 () Bool)

(declare-fun e!1140816 () Int)

(assert (=> b!1782603 (= e!1140816 e!1140817)))

(declare-fun c!289988 () Bool)

(assert (=> b!1782603 (= c!289988 (and ((_ is Cons!19640) rules!3447) (not (= (h!25041 rules!3447) (rule!5595 token!523)))))))

(declare-fun b!1782602 () Bool)

(assert (=> b!1782602 (= e!1140816 0)))

(declare-fun d!544282 () Bool)

(declare-fun lt!693107 () Int)

(assert (=> d!544282 (>= lt!693107 0)))

(assert (=> d!544282 (= lt!693107 e!1140816)))

(declare-fun c!289987 () Bool)

(assert (=> d!544282 (= c!289987 (and ((_ is Cons!19640) rules!3447) (= (h!25041 rules!3447) (rule!5595 token!523))))))

(assert (=> d!544282 (contains!3551 rules!3447 (rule!5595 token!523))))

(assert (=> d!544282 (= (getIndex!184 rules!3447 (rule!5595 token!523)) lt!693107)))

(assert (= (and d!544282 c!289987) b!1782602))

(assert (= (and d!544282 (not c!289987)) b!1782603))

(assert (= (and b!1782603 c!289988) b!1782604))

(assert (= (and b!1782603 (not c!289988)) b!1782605))

(declare-fun m!2205265 () Bool)

(assert (=> b!1782604 m!2205265))

(assert (=> d!544282 m!2204287))

(assert (=> b!1781897 d!544282))

(declare-fun b!1782608 () Bool)

(declare-fun e!1140819 () Int)

(assert (=> b!1782608 (= e!1140819 (+ 1 (getIndex!184 (t!166653 rules!3447) (rule!5595 (_1!11017 lt!692735)))))))

(declare-fun b!1782609 () Bool)

(assert (=> b!1782609 (= e!1140819 (- 1))))

(declare-fun b!1782607 () Bool)

(declare-fun e!1140818 () Int)

(assert (=> b!1782607 (= e!1140818 e!1140819)))

(declare-fun c!289990 () Bool)

(assert (=> b!1782607 (= c!289990 (and ((_ is Cons!19640) rules!3447) (not (= (h!25041 rules!3447) (rule!5595 (_1!11017 lt!692735))))))))

(declare-fun b!1782606 () Bool)

(assert (=> b!1782606 (= e!1140818 0)))

(declare-fun d!544284 () Bool)

(declare-fun lt!693108 () Int)

(assert (=> d!544284 (>= lt!693108 0)))

(assert (=> d!544284 (= lt!693108 e!1140818)))

(declare-fun c!289989 () Bool)

(assert (=> d!544284 (= c!289989 (and ((_ is Cons!19640) rules!3447) (= (h!25041 rules!3447) (rule!5595 (_1!11017 lt!692735)))))))

(assert (=> d!544284 (contains!3551 rules!3447 (rule!5595 (_1!11017 lt!692735)))))

(assert (=> d!544284 (= (getIndex!184 rules!3447 (rule!5595 (_1!11017 lt!692735))) lt!693108)))

(assert (= (and d!544284 c!289989) b!1782606))

(assert (= (and d!544284 (not c!289989)) b!1782607))

(assert (= (and b!1782607 c!289990) b!1782608))

(assert (= (and b!1782607 (not c!289990)) b!1782609))

(declare-fun m!2205267 () Bool)

(assert (=> b!1782608 m!2205267))

(assert (=> d!544284 m!2204345))

(assert (=> b!1781897 d!544284))

(declare-fun d!544286 () Bool)

(assert (=> d!544286 (not (matchR!2320 (regex!3519 rule!422) lt!692736))))

(declare-fun lt!693111 () Unit!33945)

(declare-fun choose!11204 (LexerInterface!3148 List!19710 Rule!6838 List!19709 List!19709 List!19709 Rule!6838) Unit!33945)

(assert (=> d!544286 (= lt!693111 (choose!11204 thiss!24550 rules!3447 (rule!5595 (_1!11017 lt!692735)) lt!692762 lt!692767 lt!692736 rule!422))))

(assert (=> d!544286 (isPrefix!1759 lt!692762 lt!692767)))

(assert (=> d!544286 (= (lemmaMaxPrefixOutputsMaxPrefix!228 thiss!24550 rules!3447 (rule!5595 (_1!11017 lt!692735)) lt!692762 lt!692767 lt!692736 rule!422) lt!693111)))

(declare-fun bs!405248 () Bool)

(assert (= bs!405248 d!544286))

(assert (=> bs!405248 m!2204347))

(declare-fun m!2205269 () Bool)

(assert (=> bs!405248 m!2205269))

(assert (=> bs!405248 m!2204267))

(assert (=> b!1781875 d!544286))

(declare-fun d!544288 () Bool)

(declare-fun c!289994 () Bool)

(assert (=> d!544288 (= c!289994 ((_ is Node!6533) (c!289863 (dynLambda!9652 (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) (dynLambda!9653 (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) lt!692769)))))))

(declare-fun e!1140824 () Bool)

(assert (=> d!544288 (= (inv!25565 (c!289863 (dynLambda!9652 (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) (dynLambda!9653 (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) lt!692769)))) e!1140824)))

(declare-fun b!1782616 () Bool)

(declare-fun inv!25570 (Conc!6533) Bool)

(assert (=> b!1782616 (= e!1140824 (inv!25570 (c!289863 (dynLambda!9652 (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) (dynLambda!9653 (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) lt!692769)))))))

(declare-fun b!1782617 () Bool)

(declare-fun e!1140825 () Bool)

(assert (=> b!1782617 (= e!1140824 e!1140825)))

(declare-fun res!803605 () Bool)

(assert (=> b!1782617 (= res!803605 (not ((_ is Leaf!9513) (c!289863 (dynLambda!9652 (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) (dynLambda!9653 (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) lt!692769))))))))

(assert (=> b!1782617 (=> res!803605 e!1140825)))

(declare-fun b!1782618 () Bool)

(declare-fun inv!25571 (Conc!6533) Bool)

(assert (=> b!1782618 (= e!1140825 (inv!25571 (c!289863 (dynLambda!9652 (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) (dynLambda!9653 (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) lt!692769)))))))

(assert (= (and d!544288 c!289994) b!1782616))

(assert (= (and d!544288 (not c!289994)) b!1782617))

(assert (= (and b!1782617 (not res!803605)) b!1782618))

(declare-fun m!2205271 () Bool)

(assert (=> b!1782616 m!2205271))

(declare-fun m!2205273 () Bool)

(assert (=> b!1782618 m!2205273))

(assert (=> b!1781919 d!544288))

(declare-fun d!544290 () Bool)

(assert (=> d!544290 (= (size!15602 (_1!11017 lt!692735)) (size!15604 (originalCharacters!4333 (_1!11017 lt!692735))))))

(declare-fun Unit!33957 () Unit!33945)

(assert (=> d!544290 (= (lemmaCharactersSize!577 (_1!11017 lt!692735)) Unit!33957)))

(declare-fun bs!405249 () Bool)

(assert (= bs!405249 d!544290))

(declare-fun m!2205275 () Bool)

(assert (=> bs!405249 m!2205275))

(assert (=> b!1781883 d!544290))

(declare-fun b!1782625 () Bool)

(declare-fun e!1140830 () Bool)

(assert (=> b!1782625 (= e!1140830 true)))

(declare-fun d!544292 () Bool)

(assert (=> d!544292 e!1140830))

(assert (= d!544292 b!1782625))

(declare-fun lambda!70701 () Int)

(declare-fun order!12687 () Int)

(declare-fun dynLambda!9655 (Int Int) Int)

(assert (=> b!1782625 (< (dynLambda!9649 order!12679 (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735))))) (dynLambda!9655 order!12687 lambda!70701))))

(assert (=> b!1782625 (< (dynLambda!9651 order!12683 (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735))))) (dynLambda!9655 order!12687 lambda!70701))))

(assert (=> d!544292 (= (dynLambda!9653 (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) lt!692769) (dynLambda!9653 (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) (seqFromList!2488 (originalCharacters!4333 (_1!11017 lt!692735)))))))

(declare-fun lt!693114 () Unit!33945)

(declare-fun Forall2of!151 (Int BalanceConc!13010 BalanceConc!13010) Unit!33945)

(assert (=> d!544292 (= lt!693114 (Forall2of!151 lambda!70701 lt!692769 (seqFromList!2488 (originalCharacters!4333 (_1!11017 lt!692735)))))))

(assert (=> d!544292 (= (list!7985 lt!692769) (list!7985 (seqFromList!2488 (originalCharacters!4333 (_1!11017 lt!692735)))))))

(assert (=> d!544292 (= (lemmaEqSameImage!430 (transformation!3519 (rule!5595 (_1!11017 lt!692735))) lt!692769 (seqFromList!2488 (originalCharacters!4333 (_1!11017 lt!692735)))) lt!693114)))

(declare-fun b_lambda!58393 () Bool)

(assert (=> (not b_lambda!58393) (not d!544292)))

(assert (=> d!544292 t!166640))

(declare-fun b_and!136799 () Bool)

(assert (= b_and!136759 (and (=> t!166640 result!130346) b_and!136799)))

(assert (=> d!544292 t!166642))

(declare-fun b_and!136801 () Bool)

(assert (= b_and!136761 (and (=> t!166642 result!130350) b_and!136801)))

(assert (=> d!544292 t!166644))

(declare-fun b_and!136803 () Bool)

(assert (= b_and!136763 (and (=> t!166644 result!130352) b_and!136803)))

(declare-fun b_lambda!58395 () Bool)

(assert (=> (not b_lambda!58395) (not d!544292)))

(declare-fun t!166699 () Bool)

(declare-fun tb!108395 () Bool)

(assert (=> (and b!1781886 (= (toValue!5046 (transformation!3519 (h!25041 rules!3447))) (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735))))) t!166699) tb!108395))

(declare-fun result!130410 () Bool)

(assert (=> tb!108395 (= result!130410 (inv!21 (dynLambda!9653 (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) (seqFromList!2488 (originalCharacters!4333 (_1!11017 lt!692735))))))))

(declare-fun m!2205277 () Bool)

(assert (=> tb!108395 m!2205277))

(assert (=> d!544292 t!166699))

(declare-fun b_and!136805 () Bool)

(assert (= b_and!136799 (and (=> t!166699 result!130410) b_and!136805)))

(declare-fun t!166701 () Bool)

(declare-fun tb!108397 () Bool)

(assert (=> (and b!1781865 (= (toValue!5046 (transformation!3519 rule!422)) (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735))))) t!166701) tb!108397))

(declare-fun result!130412 () Bool)

(assert (= result!130412 result!130410))

(assert (=> d!544292 t!166701))

(declare-fun b_and!136807 () Bool)

(assert (= b_and!136801 (and (=> t!166701 result!130412) b_and!136807)))

(declare-fun tb!108399 () Bool)

(declare-fun t!166703 () Bool)

(assert (=> (and b!1781884 (= (toValue!5046 (transformation!3519 (rule!5595 token!523))) (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735))))) t!166703) tb!108399))

(declare-fun result!130414 () Bool)

(assert (= result!130414 result!130410))

(assert (=> d!544292 t!166703))

(declare-fun b_and!136809 () Bool)

(assert (= b_and!136803 (and (=> t!166703 result!130414) b_and!136809)))

(assert (=> d!544292 m!2204245))

(declare-fun m!2205279 () Bool)

(assert (=> d!544292 m!2205279))

(assert (=> d!544292 m!2204245))

(declare-fun m!2205281 () Bool)

(assert (=> d!544292 m!2205281))

(assert (=> d!544292 m!2204215))

(assert (=> d!544292 m!2204259))

(assert (=> d!544292 m!2204245))

(declare-fun m!2205283 () Bool)

(assert (=> d!544292 m!2205283))

(assert (=> b!1781883 d!544292))

(declare-fun d!544294 () Bool)

(assert (=> d!544294 (= (apply!5319 (transformation!3519 (rule!5595 (_1!11017 lt!692735))) lt!692769) (dynLambda!9653 (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) lt!692769))))

(declare-fun b_lambda!58397 () Bool)

(assert (=> (not b_lambda!58397) (not d!544294)))

(assert (=> d!544294 t!166640))

(declare-fun b_and!136811 () Bool)

(assert (= b_and!136805 (and (=> t!166640 result!130346) b_and!136811)))

(assert (=> d!544294 t!166642))

(declare-fun b_and!136813 () Bool)

(assert (= b_and!136807 (and (=> t!166642 result!130350) b_and!136813)))

(assert (=> d!544294 t!166644))

(declare-fun b_and!136815 () Bool)

(assert (= b_and!136809 (and (=> t!166644 result!130352) b_and!136815)))

(assert (=> d!544294 m!2204215))

(assert (=> b!1781883 d!544294))

(declare-fun d!544296 () Bool)

(declare-fun lt!693115 () Int)

(assert (=> d!544296 (= lt!693115 (size!15604 (list!7985 lt!692769)))))

(assert (=> d!544296 (= lt!693115 (size!15606 (c!289863 lt!692769)))))

(assert (=> d!544296 (= (size!15603 lt!692769) lt!693115)))

(declare-fun bs!405250 () Bool)

(assert (= bs!405250 d!544296))

(assert (=> bs!405250 m!2204259))

(assert (=> bs!405250 m!2204259))

(declare-fun m!2205285 () Bool)

(assert (=> bs!405250 m!2205285))

(declare-fun m!2205287 () Bool)

(assert (=> bs!405250 m!2205287))

(assert (=> b!1781883 d!544296))

(declare-fun d!544298 () Bool)

(assert (=> d!544298 (= (seqFromList!2488 (originalCharacters!4333 (_1!11017 lt!692735))) (fromListB!1140 (originalCharacters!4333 (_1!11017 lt!692735))))))

(declare-fun bs!405251 () Bool)

(assert (= bs!405251 d!544298))

(declare-fun m!2205289 () Bool)

(assert (=> bs!405251 m!2205289))

(assert (=> b!1781883 d!544298))

(declare-fun b!1782626 () Bool)

(declare-fun e!1140835 () Bool)

(declare-fun e!1140836 () Bool)

(assert (=> b!1782626 (= e!1140835 e!1140836)))

(declare-fun c!289996 () Bool)

(assert (=> b!1782626 (= c!289996 ((_ is EmptyLang!4847) (regex!3519 lt!692749)))))

(declare-fun b!1782628 () Bool)

(declare-fun e!1140833 () Bool)

(assert (=> b!1782628 (= e!1140833 (= (head!4166 (list!7985 (charsOf!2168 (_1!11017 lt!692735)))) (c!289862 (regex!3519 lt!692749))))))

(declare-fun b!1782629 () Bool)

(declare-fun lt!693116 () Bool)

(declare-fun call!111317 () Bool)

(assert (=> b!1782629 (= e!1140835 (= lt!693116 call!111317))))

(declare-fun b!1782630 () Bool)

(declare-fun res!803610 () Bool)

(declare-fun e!1140837 () Bool)

(assert (=> b!1782630 (=> res!803610 e!1140837)))

(assert (=> b!1782630 (= res!803610 e!1140833)))

(declare-fun res!803611 () Bool)

(assert (=> b!1782630 (=> (not res!803611) (not e!1140833))))

(assert (=> b!1782630 (= res!803611 lt!693116)))

(declare-fun b!1782631 () Bool)

(declare-fun res!803614 () Bool)

(assert (=> b!1782631 (=> (not res!803614) (not e!1140833))))

(assert (=> b!1782631 (= res!803614 (isEmpty!12410 (tail!2667 (list!7985 (charsOf!2168 (_1!11017 lt!692735))))))))

(declare-fun bm!111312 () Bool)

(assert (=> bm!111312 (= call!111317 (isEmpty!12410 (list!7985 (charsOf!2168 (_1!11017 lt!692735)))))))

(declare-fun b!1782627 () Bool)

(declare-fun e!1140834 () Bool)

(declare-fun e!1140832 () Bool)

(assert (=> b!1782627 (= e!1140834 e!1140832)))

(declare-fun res!803609 () Bool)

(assert (=> b!1782627 (=> res!803609 e!1140832)))

(assert (=> b!1782627 (= res!803609 call!111317)))

(declare-fun d!544300 () Bool)

(assert (=> d!544300 e!1140835))

(declare-fun c!289997 () Bool)

(assert (=> d!544300 (= c!289997 ((_ is EmptyExpr!4847) (regex!3519 lt!692749)))))

(declare-fun e!1140838 () Bool)

(assert (=> d!544300 (= lt!693116 e!1140838)))

(declare-fun c!289995 () Bool)

(assert (=> d!544300 (= c!289995 (isEmpty!12410 (list!7985 (charsOf!2168 (_1!11017 lt!692735)))))))

(assert (=> d!544300 (validRegex!1964 (regex!3519 lt!692749))))

(assert (=> d!544300 (= (matchR!2320 (regex!3519 lt!692749) (list!7985 (charsOf!2168 (_1!11017 lt!692735)))) lt!693116)))

(declare-fun b!1782632 () Bool)

(declare-fun res!803608 () Bool)

(assert (=> b!1782632 (=> res!803608 e!1140837)))

(assert (=> b!1782632 (= res!803608 (not ((_ is ElementMatch!4847) (regex!3519 lt!692749))))))

(assert (=> b!1782632 (= e!1140836 e!1140837)))

(declare-fun b!1782633 () Bool)

(assert (=> b!1782633 (= e!1140838 (nullable!1491 (regex!3519 lt!692749)))))

(declare-fun b!1782634 () Bool)

(assert (=> b!1782634 (= e!1140836 (not lt!693116))))

(declare-fun b!1782635 () Bool)

(assert (=> b!1782635 (= e!1140832 (not (= (head!4166 (list!7985 (charsOf!2168 (_1!11017 lt!692735)))) (c!289862 (regex!3519 lt!692749)))))))

(declare-fun b!1782636 () Bool)

(assert (=> b!1782636 (= e!1140838 (matchR!2320 (derivativeStep!1260 (regex!3519 lt!692749) (head!4166 (list!7985 (charsOf!2168 (_1!11017 lt!692735))))) (tail!2667 (list!7985 (charsOf!2168 (_1!11017 lt!692735))))))))

(declare-fun b!1782637 () Bool)

(assert (=> b!1782637 (= e!1140837 e!1140834)))

(declare-fun res!803613 () Bool)

(assert (=> b!1782637 (=> (not res!803613) (not e!1140834))))

(assert (=> b!1782637 (= res!803613 (not lt!693116))))

(declare-fun b!1782638 () Bool)

(declare-fun res!803612 () Bool)

(assert (=> b!1782638 (=> (not res!803612) (not e!1140833))))

(assert (=> b!1782638 (= res!803612 (not call!111317))))

(declare-fun b!1782639 () Bool)

(declare-fun res!803615 () Bool)

(assert (=> b!1782639 (=> res!803615 e!1140832)))

(assert (=> b!1782639 (= res!803615 (not (isEmpty!12410 (tail!2667 (list!7985 (charsOf!2168 (_1!11017 lt!692735)))))))))

(assert (= (and d!544300 c!289995) b!1782633))

(assert (= (and d!544300 (not c!289995)) b!1782636))

(assert (= (and d!544300 c!289997) b!1782629))

(assert (= (and d!544300 (not c!289997)) b!1782626))

(assert (= (and b!1782626 c!289996) b!1782634))

(assert (= (and b!1782626 (not c!289996)) b!1782632))

(assert (= (and b!1782632 (not res!803608)) b!1782630))

(assert (= (and b!1782630 res!803611) b!1782638))

(assert (= (and b!1782638 res!803612) b!1782631))

(assert (= (and b!1782631 res!803614) b!1782628))

(assert (= (and b!1782630 (not res!803610)) b!1782637))

(assert (= (and b!1782637 res!803613) b!1782627))

(assert (= (and b!1782627 (not res!803609)) b!1782639))

(assert (= (and b!1782639 (not res!803615)) b!1782635))

(assert (= (or b!1782629 b!1782627 b!1782638) bm!111312))

(assert (=> b!1782628 m!2204321))

(declare-fun m!2205291 () Bool)

(assert (=> b!1782628 m!2205291))

(assert (=> b!1782636 m!2204321))

(assert (=> b!1782636 m!2205291))

(assert (=> b!1782636 m!2205291))

(declare-fun m!2205293 () Bool)

(assert (=> b!1782636 m!2205293))

(assert (=> b!1782636 m!2204321))

(declare-fun m!2205295 () Bool)

(assert (=> b!1782636 m!2205295))

(assert (=> b!1782636 m!2205293))

(assert (=> b!1782636 m!2205295))

(declare-fun m!2205297 () Bool)

(assert (=> b!1782636 m!2205297))

(assert (=> b!1782635 m!2204321))

(assert (=> b!1782635 m!2205291))

(assert (=> b!1782639 m!2204321))

(assert (=> b!1782639 m!2205295))

(assert (=> b!1782639 m!2205295))

(declare-fun m!2205299 () Bool)

(assert (=> b!1782639 m!2205299))

(assert (=> d!544300 m!2204321))

(declare-fun m!2205301 () Bool)

(assert (=> d!544300 m!2205301))

(declare-fun m!2205303 () Bool)

(assert (=> d!544300 m!2205303))

(assert (=> bm!111312 m!2204321))

(assert (=> bm!111312 m!2205301))

(assert (=> b!1782631 m!2204321))

(assert (=> b!1782631 m!2205295))

(assert (=> b!1782631 m!2205295))

(assert (=> b!1782631 m!2205299))

(declare-fun m!2205305 () Bool)

(assert (=> b!1782633 m!2205305))

(assert (=> b!1781882 d!544300))

(declare-fun d!544302 () Bool)

(assert (=> d!544302 (= (list!7985 (charsOf!2168 (_1!11017 lt!692735))) (list!7988 (c!289863 (charsOf!2168 (_1!11017 lt!692735)))))))

(declare-fun bs!405252 () Bool)

(assert (= bs!405252 d!544302))

(declare-fun m!2205307 () Bool)

(assert (=> bs!405252 m!2205307))

(assert (=> b!1781882 d!544302))

(assert (=> b!1781882 d!544268))

(declare-fun d!544304 () Bool)

(assert (=> d!544304 (= (get!6038 lt!692759) (v!25550 lt!692759))))

(assert (=> b!1781882 d!544304))

(declare-fun d!544306 () Bool)

(assert (=> d!544306 (= (get!6037 lt!692744) (v!25551 lt!692744))))

(assert (=> b!1781903 d!544306))

(declare-fun d!544308 () Bool)

(declare-fun c!290002 () Bool)

(assert (=> d!544308 (= c!290002 ((_ is IntegerValue!10827) (dynLambda!9653 (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) lt!692769)))))

(declare-fun e!1140845 () Bool)

(assert (=> d!544308 (= (inv!21 (dynLambda!9653 (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) lt!692769)) e!1140845)))

(declare-fun b!1782650 () Bool)

(declare-fun e!1140846 () Bool)

(declare-fun inv!15 (TokenValue!3609) Bool)

(assert (=> b!1782650 (= e!1140846 (inv!15 (dynLambda!9653 (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) lt!692769)))))

(declare-fun b!1782651 () Bool)

(declare-fun e!1140847 () Bool)

(assert (=> b!1782651 (= e!1140845 e!1140847)))

(declare-fun c!290003 () Bool)

(assert (=> b!1782651 (= c!290003 ((_ is IntegerValue!10828) (dynLambda!9653 (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) lt!692769)))))

(declare-fun b!1782652 () Bool)

(declare-fun res!803618 () Bool)

(assert (=> b!1782652 (=> res!803618 e!1140846)))

(assert (=> b!1782652 (= res!803618 (not ((_ is IntegerValue!10829) (dynLambda!9653 (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) lt!692769))))))

(assert (=> b!1782652 (= e!1140847 e!1140846)))

(declare-fun b!1782653 () Bool)

(declare-fun inv!16 (TokenValue!3609) Bool)

(assert (=> b!1782653 (= e!1140845 (inv!16 (dynLambda!9653 (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) lt!692769)))))

(declare-fun b!1782654 () Bool)

(declare-fun inv!17 (TokenValue!3609) Bool)

(assert (=> b!1782654 (= e!1140847 (inv!17 (dynLambda!9653 (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) lt!692769)))))

(assert (= (and d!544308 c!290002) b!1782653))

(assert (= (and d!544308 (not c!290002)) b!1782651))

(assert (= (and b!1782651 c!290003) b!1782654))

(assert (= (and b!1782651 (not c!290003)) b!1782652))

(assert (= (and b!1782652 (not res!803618)) b!1782650))

(declare-fun m!2205309 () Bool)

(assert (=> b!1782650 m!2205309))

(declare-fun m!2205311 () Bool)

(assert (=> b!1782653 m!2205311))

(declare-fun m!2205313 () Bool)

(assert (=> b!1782654 m!2205313))

(assert (=> tb!108341 d!544308))

(declare-fun d!544310 () Bool)

(assert (=> d!544310 (= (isEmpty!12410 (_2!11017 lt!692750)) ((_ is Nil!19639) (_2!11017 lt!692750)))))

(assert (=> b!1781902 d!544310))

(declare-fun d!544312 () Bool)

(assert (=> d!544312 (= (isEmpty!12410 suffix!1421) ((_ is Nil!19639) suffix!1421))))

(assert (=> b!1781881 d!544312))

(declare-fun d!544314 () Bool)

(declare-fun c!290004 () Bool)

(assert (=> d!544314 (= c!290004 ((_ is Node!6533) (c!289863 (dynLambda!9652 (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) (value!109964 (_1!11017 lt!692735))))))))

(declare-fun e!1140848 () Bool)

(assert (=> d!544314 (= (inv!25565 (c!289863 (dynLambda!9652 (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) (value!109964 (_1!11017 lt!692735))))) e!1140848)))

(declare-fun b!1782655 () Bool)

(assert (=> b!1782655 (= e!1140848 (inv!25570 (c!289863 (dynLambda!9652 (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) (value!109964 (_1!11017 lt!692735))))))))

(declare-fun b!1782656 () Bool)

(declare-fun e!1140849 () Bool)

(assert (=> b!1782656 (= e!1140848 e!1140849)))

(declare-fun res!803619 () Bool)

(assert (=> b!1782656 (= res!803619 (not ((_ is Leaf!9513) (c!289863 (dynLambda!9652 (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) (value!109964 (_1!11017 lt!692735)))))))))

(assert (=> b!1782656 (=> res!803619 e!1140849)))

(declare-fun b!1782657 () Bool)

(assert (=> b!1782657 (= e!1140849 (inv!25571 (c!289863 (dynLambda!9652 (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) (value!109964 (_1!11017 lt!692735))))))))

(assert (= (and d!544314 c!290004) b!1782655))

(assert (= (and d!544314 (not c!290004)) b!1782656))

(assert (= (and b!1782656 (not res!803619)) b!1782657))

(declare-fun m!2205315 () Bool)

(assert (=> b!1782655 m!2205315))

(declare-fun m!2205317 () Bool)

(assert (=> b!1782657 m!2205317))

(assert (=> b!1781922 d!544314))

(declare-fun d!544316 () Bool)

(assert (=> d!544316 (= (list!7985 (dynLambda!9652 (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) (dynLambda!9653 (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) lt!692769))) (list!7988 (c!289863 (dynLambda!9652 (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) (dynLambda!9653 (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) lt!692769)))))))

(declare-fun bs!405253 () Bool)

(assert (= bs!405253 d!544316))

(declare-fun m!2205319 () Bool)

(assert (=> bs!405253 m!2205319))

(assert (=> b!1781880 d!544316))

(declare-fun bs!405254 () Bool)

(declare-fun d!544318 () Bool)

(assert (= bs!405254 (and d!544318 b!1781867)))

(declare-fun lambda!70704 () Int)

(assert (=> bs!405254 (= lambda!70704 lambda!70686)))

(declare-fun b!1782662 () Bool)

(declare-fun e!1140852 () Bool)

(assert (=> b!1782662 (= e!1140852 true)))

(assert (=> d!544318 e!1140852))

(assert (= d!544318 b!1782662))

(assert (=> b!1782662 (< (dynLambda!9649 order!12679 (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735))))) (dynLambda!9650 order!12681 lambda!70704))))

(assert (=> b!1782662 (< (dynLambda!9651 order!12683 (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735))))) (dynLambda!9650 order!12681 lambda!70704))))

(assert (=> d!544318 (= (list!7985 (dynLambda!9652 (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) (dynLambda!9653 (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) lt!692769))) (list!7985 lt!692769))))

(declare-fun lt!693119 () Unit!33945)

(declare-fun ForallOf!343 (Int BalanceConc!13010) Unit!33945)

(assert (=> d!544318 (= lt!693119 (ForallOf!343 lambda!70704 lt!692769))))

(assert (=> d!544318 (= (lemmaSemiInverse!657 (transformation!3519 (rule!5595 (_1!11017 lt!692735))) lt!692769) lt!693119)))

(declare-fun b_lambda!58399 () Bool)

(assert (=> (not b_lambda!58399) (not d!544318)))

(assert (=> d!544318 t!166634))

(declare-fun b_and!136817 () Bool)

(assert (= b_and!136793 (and (=> t!166634 result!130338) b_and!136817)))

(assert (=> d!544318 t!166636))

(declare-fun b_and!136819 () Bool)

(assert (= b_and!136795 (and (=> t!166636 result!130342) b_and!136819)))

(assert (=> d!544318 t!166638))

(declare-fun b_and!136821 () Bool)

(assert (= b_and!136797 (and (=> t!166638 result!130344) b_and!136821)))

(declare-fun b_lambda!58401 () Bool)

(assert (=> (not b_lambda!58401) (not d!544318)))

(assert (=> d!544318 t!166640))

(declare-fun b_and!136823 () Bool)

(assert (= b_and!136811 (and (=> t!166640 result!130346) b_and!136823)))

(assert (=> d!544318 t!166642))

(declare-fun b_and!136825 () Bool)

(assert (= b_and!136813 (and (=> t!166642 result!130350) b_and!136825)))

(assert (=> d!544318 t!166644))

(declare-fun b_and!136827 () Bool)

(assert (= b_and!136815 (and (=> t!166644 result!130352) b_and!136827)))

(assert (=> d!544318 m!2204215))

(assert (=> d!544318 m!2204215))

(assert (=> d!544318 m!2204217))

(assert (=> d!544318 m!2204259))

(declare-fun m!2205321 () Bool)

(assert (=> d!544318 m!2205321))

(assert (=> d!544318 m!2204217))

(assert (=> d!544318 m!2204219))

(assert (=> b!1781880 d!544318))

(declare-fun d!544320 () Bool)

(assert (=> d!544320 (= (inv!25566 (dynLambda!9652 (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) (dynLambda!9653 (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) lt!692769))) (isBalanced!2044 (c!289863 (dynLambda!9652 (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) (dynLambda!9653 (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) lt!692769)))))))

(declare-fun bs!405255 () Bool)

(assert (= bs!405255 d!544320))

(declare-fun m!2205323 () Bool)

(assert (=> bs!405255 m!2205323))

(assert (=> tb!108335 d!544320))

(declare-fun d!544322 () Bool)

(declare-fun lt!693120 () Bool)

(assert (=> d!544322 (= lt!693120 (select (content!2859 rules!3447) rule!422))))

(declare-fun e!1140853 () Bool)

(assert (=> d!544322 (= lt!693120 e!1140853)))

(declare-fun res!803621 () Bool)

(assert (=> d!544322 (=> (not res!803621) (not e!1140853))))

(assert (=> d!544322 (= res!803621 ((_ is Cons!19640) rules!3447))))

(assert (=> d!544322 (= (contains!3551 rules!3447 rule!422) lt!693120)))

(declare-fun b!1782663 () Bool)

(declare-fun e!1140854 () Bool)

(assert (=> b!1782663 (= e!1140853 e!1140854)))

(declare-fun res!803620 () Bool)

(assert (=> b!1782663 (=> res!803620 e!1140854)))

(assert (=> b!1782663 (= res!803620 (= (h!25041 rules!3447) rule!422))))

(declare-fun b!1782664 () Bool)

(assert (=> b!1782664 (= e!1140854 (contains!3551 (t!166653 rules!3447) rule!422))))

(assert (= (and d!544322 res!803621) b!1782663))

(assert (= (and b!1782663 (not res!803620)) b!1782664))

(assert (=> d!544322 m!2204523))

(declare-fun m!2205325 () Bool)

(assert (=> d!544322 m!2205325))

(declare-fun m!2205327 () Bool)

(assert (=> b!1782664 m!2205327))

(assert (=> b!1781901 d!544322))

(declare-fun d!544324 () Bool)

(assert (=> d!544324 (= (isEmpty!12410 lt!692762) ((_ is Nil!19639) lt!692762))))

(assert (=> b!1781868 d!544324))

(declare-fun d!544326 () Bool)

(assert (=> d!544326 (= (inv!25558 (tag!3915 (rule!5595 token!523))) (= (mod (str.len (value!109963 (tag!3915 (rule!5595 token!523)))) 2) 0))))

(assert (=> b!1781888 d!544326))

(declare-fun d!544328 () Bool)

(declare-fun res!803622 () Bool)

(declare-fun e!1140855 () Bool)

(assert (=> d!544328 (=> (not res!803622) (not e!1140855))))

(assert (=> d!544328 (= res!803622 (semiInverseModEq!1406 (toChars!4905 (transformation!3519 (rule!5595 token!523))) (toValue!5046 (transformation!3519 (rule!5595 token!523)))))))

(assert (=> d!544328 (= (inv!25564 (transformation!3519 (rule!5595 token!523))) e!1140855)))

(declare-fun b!1782665 () Bool)

(assert (=> b!1782665 (= e!1140855 (equivClasses!1347 (toChars!4905 (transformation!3519 (rule!5595 token!523))) (toValue!5046 (transformation!3519 (rule!5595 token!523)))))))

(assert (= (and d!544328 res!803622) b!1782665))

(declare-fun m!2205329 () Bool)

(assert (=> d!544328 m!2205329))

(declare-fun m!2205331 () Bool)

(assert (=> b!1782665 m!2205331))

(assert (=> b!1781888 d!544328))

(declare-fun d!544330 () Bool)

(declare-fun choose!11205 (Int) Bool)

(assert (=> d!544330 (= (Forall!886 lambda!70686) (choose!11205 lambda!70686))))

(declare-fun bs!405256 () Bool)

(assert (= bs!405256 d!544330))

(declare-fun m!2205333 () Bool)

(assert (=> bs!405256 m!2205333))

(assert (=> b!1781867 d!544330))

(declare-fun d!544332 () Bool)

(declare-fun e!1140858 () Bool)

(assert (=> d!544332 e!1140858))

(declare-fun res!803625 () Bool)

(assert (=> d!544332 (=> (not res!803625) (not e!1140858))))

(assert (=> d!544332 (= res!803625 (semiInverseModEq!1406 (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735))))))))

(declare-fun Unit!33958 () Unit!33945)

(assert (=> d!544332 (= (lemmaInv!718 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) Unit!33958)))

(declare-fun b!1782668 () Bool)

(assert (=> b!1782668 (= e!1140858 (equivClasses!1347 (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735))))))))

(assert (= (and d!544332 res!803625) b!1782668))

(declare-fun m!2205335 () Bool)

(assert (=> d!544332 m!2205335))

(declare-fun m!2205337 () Bool)

(assert (=> b!1782668 m!2205337))

(assert (=> b!1781867 d!544332))

(declare-fun d!544334 () Bool)

(declare-fun c!290006 () Bool)

(assert (=> d!544334 (= c!290006 ((_ is IntegerValue!10827) (value!109964 token!523)))))

(declare-fun e!1140859 () Bool)

(assert (=> d!544334 (= (inv!21 (value!109964 token!523)) e!1140859)))

(declare-fun b!1782669 () Bool)

(declare-fun e!1140860 () Bool)

(assert (=> b!1782669 (= e!1140860 (inv!15 (value!109964 token!523)))))

(declare-fun b!1782670 () Bool)

(declare-fun e!1140861 () Bool)

(assert (=> b!1782670 (= e!1140859 e!1140861)))

(declare-fun c!290007 () Bool)

(assert (=> b!1782670 (= c!290007 ((_ is IntegerValue!10828) (value!109964 token!523)))))

(declare-fun b!1782671 () Bool)

(declare-fun res!803626 () Bool)

(assert (=> b!1782671 (=> res!803626 e!1140860)))

(assert (=> b!1782671 (= res!803626 (not ((_ is IntegerValue!10829) (value!109964 token!523))))))

(assert (=> b!1782671 (= e!1140861 e!1140860)))

(declare-fun b!1782672 () Bool)

(assert (=> b!1782672 (= e!1140859 (inv!16 (value!109964 token!523)))))

(declare-fun b!1782673 () Bool)

(assert (=> b!1782673 (= e!1140861 (inv!17 (value!109964 token!523)))))

(assert (= (and d!544334 c!290006) b!1782672))

(assert (= (and d!544334 (not c!290006)) b!1782670))

(assert (= (and b!1782670 c!290007) b!1782673))

(assert (= (and b!1782670 (not c!290007)) b!1782671))

(assert (= (and b!1782671 (not res!803626)) b!1782669))

(declare-fun m!2205339 () Bool)

(assert (=> b!1782669 m!2205339))

(declare-fun m!2205341 () Bool)

(assert (=> b!1782672 m!2205341))

(declare-fun m!2205343 () Bool)

(assert (=> b!1782673 m!2205343))

(assert (=> b!1781866 d!544334))

(declare-fun d!544336 () Bool)

(assert (=> d!544336 (= suffix!1421 (_2!11017 lt!692735))))

(declare-fun lt!693121 () Unit!33945)

(assert (=> d!544336 (= lt!693121 (choose!11197 lt!692736 suffix!1421 lt!692736 (_2!11017 lt!692735) lt!692767))))

(assert (=> d!544336 (isPrefix!1759 lt!692736 lt!692767)))

(assert (=> d!544336 (= (lemmaSamePrefixThenSameSuffix!870 lt!692736 suffix!1421 lt!692736 (_2!11017 lt!692735) lt!692767) lt!693121)))

(declare-fun bs!405257 () Bool)

(assert (= bs!405257 d!544336))

(declare-fun m!2205345 () Bool)

(assert (=> bs!405257 m!2205345))

(assert (=> bs!405257 m!2204277))

(assert (=> b!1781887 d!544336))

(declare-fun d!544338 () Bool)

(assert (=> d!544338 (= lt!692762 lt!692736)))

(declare-fun lt!693124 () Unit!33945)

(declare-fun choose!11206 (List!19709 List!19709 List!19709) Unit!33945)

(assert (=> d!544338 (= lt!693124 (choose!11206 lt!692762 lt!692736 lt!692767))))

(assert (=> d!544338 (isPrefix!1759 lt!692762 lt!692767)))

(assert (=> d!544338 (= (lemmaIsPrefixSameLengthThenSameList!255 lt!692762 lt!692736 lt!692767) lt!693124)))

(declare-fun bs!405258 () Bool)

(assert (= bs!405258 d!544338))

(declare-fun m!2205347 () Bool)

(assert (=> bs!405258 m!2205347))

(assert (=> bs!405258 m!2204267))

(assert (=> b!1781887 d!544338))

(declare-fun d!544340 () Bool)

(assert (=> d!544340 (matchR!2320 (rulesRegex!875 thiss!24550 rules!3447) (list!7985 (charsOf!2168 (_1!11017 lt!692735))))))

(declare-fun lt!693125 () Unit!33945)

(assert (=> d!544340 (= lt!693125 (choose!11202 thiss!24550 rules!3447 lt!692767 (_1!11017 lt!692735) (rule!5595 (_1!11017 lt!692735)) (_2!11017 lt!692735)))))

(assert (=> d!544340 (not (isEmpty!12411 rules!3447))))

(assert (=> d!544340 (= (lemmaMaxPrefixThenMatchesRulesRegex!226 thiss!24550 rules!3447 lt!692767 (_1!11017 lt!692735) (rule!5595 (_1!11017 lt!692735)) (_2!11017 lt!692735)) lt!693125)))

(declare-fun bs!405259 () Bool)

(assert (= bs!405259 d!544340))

(assert (=> bs!405259 m!2204343))

(assert (=> bs!405259 m!2204279))

(assert (=> bs!405259 m!2204279))

(assert (=> bs!405259 m!2204321))

(assert (=> bs!405259 m!2204341))

(assert (=> bs!405259 m!2204321))

(declare-fun m!2205349 () Bool)

(assert (=> bs!405259 m!2205349))

(assert (=> bs!405259 m!2204341))

(declare-fun m!2205351 () Bool)

(assert (=> bs!405259 m!2205351))

(assert (=> b!1781885 d!544340))

(declare-fun b!1782677 () Bool)

(declare-fun e!1140864 () Bool)

(assert (=> b!1782677 (= e!1140864 (>= (size!15604 lt!692762) (size!15604 lt!692755)))))

(declare-fun b!1782674 () Bool)

(declare-fun e!1140862 () Bool)

(declare-fun e!1140863 () Bool)

(assert (=> b!1782674 (= e!1140862 e!1140863)))

(declare-fun res!803628 () Bool)

(assert (=> b!1782674 (=> (not res!803628) (not e!1140863))))

(assert (=> b!1782674 (= res!803628 (not ((_ is Nil!19639) lt!692762)))))

(declare-fun b!1782675 () Bool)

(declare-fun res!803627 () Bool)

(assert (=> b!1782675 (=> (not res!803627) (not e!1140863))))

(assert (=> b!1782675 (= res!803627 (= (head!4166 lt!692755) (head!4166 lt!692762)))))

(declare-fun b!1782676 () Bool)

(assert (=> b!1782676 (= e!1140863 (isPrefix!1759 (tail!2667 lt!692755) (tail!2667 lt!692762)))))

(declare-fun d!544342 () Bool)

(assert (=> d!544342 e!1140864))

(declare-fun res!803629 () Bool)

(assert (=> d!544342 (=> res!803629 e!1140864)))

(declare-fun lt!693126 () Bool)

(assert (=> d!544342 (= res!803629 (not lt!693126))))

(assert (=> d!544342 (= lt!693126 e!1140862)))

(declare-fun res!803630 () Bool)

(assert (=> d!544342 (=> res!803630 e!1140862)))

(assert (=> d!544342 (= res!803630 ((_ is Nil!19639) lt!692755))))

(assert (=> d!544342 (= (isPrefix!1759 lt!692755 lt!692762) lt!693126)))

(assert (= (and d!544342 (not res!803630)) b!1782674))

(assert (= (and b!1782674 res!803628) b!1782675))

(assert (= (and b!1782675 res!803627) b!1782676))

(assert (= (and d!544342 (not res!803629)) b!1782677))

(assert (=> b!1782677 m!2204365))

(declare-fun m!2205353 () Bool)

(assert (=> b!1782677 m!2205353))

(assert (=> b!1782675 m!2204495))

(assert (=> b!1782675 m!2204547))

(assert (=> b!1782676 m!2204499))

(assert (=> b!1782676 m!2204551))

(assert (=> b!1782676 m!2204499))

(assert (=> b!1782676 m!2204551))

(declare-fun m!2205355 () Bool)

(assert (=> b!1782676 m!2205355))

(assert (=> b!1781885 d!544342))

(declare-fun e!1140867 () Bool)

(declare-fun b!1782681 () Bool)

(assert (=> b!1782681 (= e!1140867 (>= (size!15604 lt!692767) (size!15604 (++!5343 lt!692736 (Cons!19639 (head!4166 lt!692728) Nil!19639)))))))

(declare-fun b!1782678 () Bool)

(declare-fun e!1140865 () Bool)

(declare-fun e!1140866 () Bool)

(assert (=> b!1782678 (= e!1140865 e!1140866)))

(declare-fun res!803632 () Bool)

(assert (=> b!1782678 (=> (not res!803632) (not e!1140866))))

(assert (=> b!1782678 (= res!803632 (not ((_ is Nil!19639) lt!692767)))))

(declare-fun b!1782679 () Bool)

(declare-fun res!803631 () Bool)

(assert (=> b!1782679 (=> (not res!803631) (not e!1140866))))

(assert (=> b!1782679 (= res!803631 (= (head!4166 (++!5343 lt!692736 (Cons!19639 (head!4166 lt!692728) Nil!19639))) (head!4166 lt!692767)))))

(declare-fun b!1782680 () Bool)

(assert (=> b!1782680 (= e!1140866 (isPrefix!1759 (tail!2667 (++!5343 lt!692736 (Cons!19639 (head!4166 lt!692728) Nil!19639))) (tail!2667 lt!692767)))))

(declare-fun d!544344 () Bool)

(assert (=> d!544344 e!1140867))

(declare-fun res!803633 () Bool)

(assert (=> d!544344 (=> res!803633 e!1140867)))

(declare-fun lt!693127 () Bool)

(assert (=> d!544344 (= res!803633 (not lt!693127))))

(assert (=> d!544344 (= lt!693127 e!1140865)))

(declare-fun res!803634 () Bool)

(assert (=> d!544344 (=> res!803634 e!1140865)))

(assert (=> d!544344 (= res!803634 ((_ is Nil!19639) (++!5343 lt!692736 (Cons!19639 (head!4166 lt!692728) Nil!19639))))))

(assert (=> d!544344 (= (isPrefix!1759 (++!5343 lt!692736 (Cons!19639 (head!4166 lt!692728) Nil!19639)) lt!692767) lt!693127)))

(assert (= (and d!544344 (not res!803634)) b!1782678))

(assert (= (and b!1782678 res!803632) b!1782679))

(assert (= (and b!1782679 res!803631) b!1782680))

(assert (= (and d!544344 (not res!803633)) b!1782681))

(assert (=> b!1782681 m!2204777))

(assert (=> b!1782681 m!2204303))

(declare-fun m!2205357 () Bool)

(assert (=> b!1782681 m!2205357))

(assert (=> b!1782679 m!2204303))

(declare-fun m!2205359 () Bool)

(assert (=> b!1782679 m!2205359))

(assert (=> b!1782679 m!2204961))

(assert (=> b!1782680 m!2204303))

(declare-fun m!2205361 () Bool)

(assert (=> b!1782680 m!2205361))

(assert (=> b!1782680 m!2204779))

(assert (=> b!1782680 m!2205361))

(assert (=> b!1782680 m!2204779))

(declare-fun m!2205363 () Bool)

(assert (=> b!1782680 m!2205363))

(assert (=> b!1781885 d!544344))

(declare-fun d!544346 () Bool)

(assert (=> d!544346 (isPrefix!1759 lt!692755 lt!692762)))

(declare-fun lt!693130 () Unit!33945)

(declare-fun choose!11207 (List!19709 List!19709 List!19709) Unit!33945)

(assert (=> d!544346 (= lt!693130 (choose!11207 lt!692762 lt!692755 lt!692767))))

(assert (=> d!544346 (isPrefix!1759 lt!692762 lt!692767)))

(assert (=> d!544346 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!167 lt!692762 lt!692755 lt!692767) lt!693130)))

(declare-fun bs!405260 () Bool)

(assert (= bs!405260 d!544346))

(assert (=> bs!405260 m!2204313))

(declare-fun m!2205365 () Bool)

(assert (=> bs!405260 m!2205365))

(assert (=> bs!405260 m!2204267))

(assert (=> b!1781885 d!544346))

(declare-fun b!1782682 () Bool)

(declare-fun e!1140871 () Bool)

(declare-fun e!1140872 () Bool)

(assert (=> b!1782682 (= e!1140871 e!1140872)))

(declare-fun c!290009 () Bool)

(assert (=> b!1782682 (= c!290009 ((_ is EmptyLang!4847) lt!692754))))

(declare-fun b!1782684 () Bool)

(declare-fun e!1140869 () Bool)

(assert (=> b!1782684 (= e!1140869 (= (head!4166 lt!692762) (c!289862 lt!692754)))))

(declare-fun b!1782685 () Bool)

(declare-fun lt!693131 () Bool)

(declare-fun call!111318 () Bool)

(assert (=> b!1782685 (= e!1140871 (= lt!693131 call!111318))))

(declare-fun b!1782686 () Bool)

(declare-fun res!803637 () Bool)

(declare-fun e!1140873 () Bool)

(assert (=> b!1782686 (=> res!803637 e!1140873)))

(assert (=> b!1782686 (= res!803637 e!1140869)))

(declare-fun res!803638 () Bool)

(assert (=> b!1782686 (=> (not res!803638) (not e!1140869))))

(assert (=> b!1782686 (= res!803638 lt!693131)))

(declare-fun b!1782687 () Bool)

(declare-fun res!803641 () Bool)

(assert (=> b!1782687 (=> (not res!803641) (not e!1140869))))

(assert (=> b!1782687 (= res!803641 (isEmpty!12410 (tail!2667 lt!692762)))))

(declare-fun bm!111313 () Bool)

(assert (=> bm!111313 (= call!111318 (isEmpty!12410 lt!692762))))

(declare-fun b!1782683 () Bool)

(declare-fun e!1140870 () Bool)

(declare-fun e!1140868 () Bool)

(assert (=> b!1782683 (= e!1140870 e!1140868)))

(declare-fun res!803636 () Bool)

(assert (=> b!1782683 (=> res!803636 e!1140868)))

(assert (=> b!1782683 (= res!803636 call!111318)))

(declare-fun d!544348 () Bool)

(assert (=> d!544348 e!1140871))

(declare-fun c!290010 () Bool)

(assert (=> d!544348 (= c!290010 ((_ is EmptyExpr!4847) lt!692754))))

(declare-fun e!1140874 () Bool)

(assert (=> d!544348 (= lt!693131 e!1140874)))

(declare-fun c!290008 () Bool)

(assert (=> d!544348 (= c!290008 (isEmpty!12410 lt!692762))))

(assert (=> d!544348 (validRegex!1964 lt!692754)))

(assert (=> d!544348 (= (matchR!2320 lt!692754 lt!692762) lt!693131)))

(declare-fun b!1782688 () Bool)

(declare-fun res!803635 () Bool)

(assert (=> b!1782688 (=> res!803635 e!1140873)))

(assert (=> b!1782688 (= res!803635 (not ((_ is ElementMatch!4847) lt!692754)))))

(assert (=> b!1782688 (= e!1140872 e!1140873)))

(declare-fun b!1782689 () Bool)

(assert (=> b!1782689 (= e!1140874 (nullable!1491 lt!692754))))

(declare-fun b!1782690 () Bool)

(assert (=> b!1782690 (= e!1140872 (not lt!693131))))

(declare-fun b!1782691 () Bool)

(assert (=> b!1782691 (= e!1140868 (not (= (head!4166 lt!692762) (c!289862 lt!692754))))))

(declare-fun b!1782692 () Bool)

(assert (=> b!1782692 (= e!1140874 (matchR!2320 (derivativeStep!1260 lt!692754 (head!4166 lt!692762)) (tail!2667 lt!692762)))))

(declare-fun b!1782693 () Bool)

(assert (=> b!1782693 (= e!1140873 e!1140870)))

(declare-fun res!803640 () Bool)

(assert (=> b!1782693 (=> (not res!803640) (not e!1140870))))

(assert (=> b!1782693 (= res!803640 (not lt!693131))))

(declare-fun b!1782694 () Bool)

(declare-fun res!803639 () Bool)

(assert (=> b!1782694 (=> (not res!803639) (not e!1140869))))

(assert (=> b!1782694 (= res!803639 (not call!111318))))

(declare-fun b!1782695 () Bool)

(declare-fun res!803642 () Bool)

(assert (=> b!1782695 (=> res!803642 e!1140868)))

(assert (=> b!1782695 (= res!803642 (not (isEmpty!12410 (tail!2667 lt!692762))))))

(assert (= (and d!544348 c!290008) b!1782689))

(assert (= (and d!544348 (not c!290008)) b!1782692))

(assert (= (and d!544348 c!290010) b!1782685))

(assert (= (and d!544348 (not c!290010)) b!1782682))

(assert (= (and b!1782682 c!290009) b!1782690))

(assert (= (and b!1782682 (not c!290009)) b!1782688))

(assert (= (and b!1782688 (not res!803635)) b!1782686))

(assert (= (and b!1782686 res!803638) b!1782694))

(assert (= (and b!1782694 res!803639) b!1782687))

(assert (= (and b!1782687 res!803641) b!1782684))

(assert (= (and b!1782686 (not res!803637)) b!1782693))

(assert (= (and b!1782693 res!803640) b!1782683))

(assert (= (and b!1782683 (not res!803636)) b!1782695))

(assert (= (and b!1782695 (not res!803642)) b!1782691))

(assert (= (or b!1782685 b!1782683 b!1782694) bm!111313))

(assert (=> b!1782684 m!2204547))

(assert (=> b!1782692 m!2204547))

(assert (=> b!1782692 m!2204547))

(declare-fun m!2205367 () Bool)

(assert (=> b!1782692 m!2205367))

(assert (=> b!1782692 m!2204551))

(assert (=> b!1782692 m!2205367))

(assert (=> b!1782692 m!2204551))

(declare-fun m!2205369 () Bool)

(assert (=> b!1782692 m!2205369))

(assert (=> b!1782691 m!2204547))

(assert (=> b!1782695 m!2204551))

(assert (=> b!1782695 m!2204551))

(assert (=> b!1782695 m!2204555))

(assert (=> d!544348 m!2204231))

(assert (=> d!544348 m!2205253))

(assert (=> bm!111313 m!2204231))

(assert (=> b!1782687 m!2204551))

(assert (=> b!1782687 m!2204551))

(assert (=> b!1782687 m!2204555))

(assert (=> b!1782689 m!2205255))

(assert (=> b!1781885 d!544348))

(declare-fun d!544350 () Bool)

(assert (=> d!544350 (= suffix!1421 lt!692728)))

(declare-fun lt!693132 () Unit!33945)

(assert (=> d!544350 (= lt!693132 (choose!11197 lt!692736 suffix!1421 lt!692736 lt!692728 lt!692767))))

(assert (=> d!544350 (isPrefix!1759 lt!692736 lt!692767)))

(assert (=> d!544350 (= (lemmaSamePrefixThenSameSuffix!870 lt!692736 suffix!1421 lt!692736 lt!692728 lt!692767) lt!693132)))

(declare-fun bs!405261 () Bool)

(assert (= bs!405261 d!544350))

(declare-fun m!2205371 () Bool)

(assert (=> bs!405261 m!2205371))

(assert (=> bs!405261 m!2204277))

(assert (=> b!1781885 d!544350))

(declare-fun d!544352 () Bool)

(assert (=> d!544352 (= (head!4166 lt!692728) (h!25040 lt!692728))))

(assert (=> b!1781885 d!544352))

(declare-fun d!544354 () Bool)

(declare-fun lt!693133 () List!19709)

(assert (=> d!544354 (= (++!5343 lt!692736 lt!693133) lt!692767)))

(declare-fun e!1140875 () List!19709)

(assert (=> d!544354 (= lt!693133 e!1140875)))

(declare-fun c!290011 () Bool)

(assert (=> d!544354 (= c!290011 ((_ is Cons!19639) lt!692736))))

(assert (=> d!544354 (>= (size!15604 lt!692767) (size!15604 lt!692736))))

(assert (=> d!544354 (= (getSuffix!926 lt!692767 lt!692736) lt!693133)))

(declare-fun b!1782696 () Bool)

(assert (=> b!1782696 (= e!1140875 (getSuffix!926 (tail!2667 lt!692767) (t!166652 lt!692736)))))

(declare-fun b!1782697 () Bool)

(assert (=> b!1782697 (= e!1140875 lt!692767)))

(assert (= (and d!544354 c!290011) b!1782696))

(assert (= (and d!544354 (not c!290011)) b!1782697))

(declare-fun m!2205373 () Bool)

(assert (=> d!544354 m!2205373))

(assert (=> d!544354 m!2204777))

(assert (=> d!544354 m!2204513))

(assert (=> b!1782696 m!2204779))

(assert (=> b!1782696 m!2204779))

(declare-fun m!2205375 () Bool)

(assert (=> b!1782696 m!2205375))

(assert (=> b!1781885 d!544354))

(declare-fun d!544356 () Bool)

(declare-fun e!1140876 () Bool)

(assert (=> d!544356 e!1140876))

(declare-fun res!803644 () Bool)

(assert (=> d!544356 (=> (not res!803644) (not e!1140876))))

(declare-fun lt!693134 () List!19709)

(assert (=> d!544356 (= res!803644 (= (content!2858 lt!693134) ((_ map or) (content!2858 lt!692736) (content!2858 (Cons!19639 (head!4166 lt!692728) Nil!19639)))))))

(declare-fun e!1140877 () List!19709)

(assert (=> d!544356 (= lt!693134 e!1140877)))

(declare-fun c!290012 () Bool)

(assert (=> d!544356 (= c!290012 ((_ is Nil!19639) lt!692736))))

(assert (=> d!544356 (= (++!5343 lt!692736 (Cons!19639 (head!4166 lt!692728) Nil!19639)) lt!693134)))

(declare-fun b!1782699 () Bool)

(assert (=> b!1782699 (= e!1140877 (Cons!19639 (h!25040 lt!692736) (++!5343 (t!166652 lt!692736) (Cons!19639 (head!4166 lt!692728) Nil!19639))))))

(declare-fun b!1782700 () Bool)

(declare-fun res!803643 () Bool)

(assert (=> b!1782700 (=> (not res!803643) (not e!1140876))))

(assert (=> b!1782700 (= res!803643 (= (size!15604 lt!693134) (+ (size!15604 lt!692736) (size!15604 (Cons!19639 (head!4166 lt!692728) Nil!19639)))))))

(declare-fun b!1782698 () Bool)

(assert (=> b!1782698 (= e!1140877 (Cons!19639 (head!4166 lt!692728) Nil!19639))))

(declare-fun b!1782701 () Bool)

(assert (=> b!1782701 (= e!1140876 (or (not (= (Cons!19639 (head!4166 lt!692728) Nil!19639) Nil!19639)) (= lt!693134 lt!692736)))))

(assert (= (and d!544356 c!290012) b!1782698))

(assert (= (and d!544356 (not c!290012)) b!1782699))

(assert (= (and d!544356 res!803644) b!1782700))

(assert (= (and b!1782700 res!803643) b!1782701))

(declare-fun m!2205377 () Bool)

(assert (=> d!544356 m!2205377))

(assert (=> d!544356 m!2204505))

(declare-fun m!2205379 () Bool)

(assert (=> d!544356 m!2205379))

(declare-fun m!2205381 () Bool)

(assert (=> b!1782699 m!2205381))

(declare-fun m!2205383 () Bool)

(assert (=> b!1782700 m!2205383))

(assert (=> b!1782700 m!2204513))

(declare-fun m!2205385 () Bool)

(assert (=> b!1782700 m!2205385))

(assert (=> b!1781885 d!544356))

(declare-fun d!544358 () Bool)

(assert (=> d!544358 (not (matchR!2320 lt!692754 lt!692762))))

(declare-fun lt!693137 () Unit!33945)

(declare-fun choose!11208 (Regex!4847 List!19709 List!19709) Unit!33945)

(assert (=> d!544358 (= lt!693137 (choose!11208 lt!692754 lt!692755 lt!692762))))

(assert (=> d!544358 (validRegex!1964 lt!692754)))

(assert (=> d!544358 (= (lemmaNotPrefixMatchThenCannotMatchLonger!158 lt!692754 lt!692755 lt!692762) lt!693137)))

(declare-fun bs!405262 () Bool)

(assert (= bs!405262 d!544358))

(assert (=> bs!405262 m!2204301))

(declare-fun m!2205387 () Bool)

(assert (=> bs!405262 m!2205387))

(assert (=> bs!405262 m!2205253))

(assert (=> b!1781885 d!544358))

(declare-fun d!544360 () Bool)

(assert (=> d!544360 (isPrefix!1759 (++!5343 lt!692736 (Cons!19639 (head!4166 (getSuffix!926 lt!692767 lt!692736)) Nil!19639)) lt!692767)))

(declare-fun lt!693140 () Unit!33945)

(declare-fun choose!11209 (List!19709 List!19709) Unit!33945)

(assert (=> d!544360 (= lt!693140 (choose!11209 lt!692736 lt!692767))))

(assert (=> d!544360 (isPrefix!1759 lt!692736 lt!692767)))

(assert (=> d!544360 (= (lemmaAddHeadSuffixToPrefixStillPrefix!295 lt!692736 lt!692767) lt!693140)))

(declare-fun bs!405263 () Bool)

(assert (= bs!405263 d!544360))

(declare-fun m!2205389 () Bool)

(assert (=> bs!405263 m!2205389))

(assert (=> bs!405263 m!2204315))

(assert (=> bs!405263 m!2205389))

(declare-fun m!2205391 () Bool)

(assert (=> bs!405263 m!2205391))

(assert (=> bs!405263 m!2204277))

(declare-fun m!2205393 () Bool)

(assert (=> bs!405263 m!2205393))

(assert (=> bs!405263 m!2204315))

(declare-fun m!2205395 () Bool)

(assert (=> bs!405263 m!2205395))

(assert (=> b!1781885 d!544360))

(declare-fun b!1782706 () Bool)

(declare-fun e!1140880 () Bool)

(declare-fun tp!504512 () Bool)

(assert (=> b!1782706 (= e!1140880 (and tp_is_empty!7937 tp!504512))))

(assert (=> b!1781889 (= tp!504449 e!1140880)))

(assert (= (and b!1781889 ((_ is Cons!19639) (t!166652 suffix!1421))) b!1782706))

(declare-fun b!1782719 () Bool)

(declare-fun e!1140883 () Bool)

(declare-fun tp!504525 () Bool)

(assert (=> b!1782719 (= e!1140883 tp!504525)))

(declare-fun b!1782720 () Bool)

(declare-fun tp!504524 () Bool)

(declare-fun tp!504527 () Bool)

(assert (=> b!1782720 (= e!1140883 (and tp!504524 tp!504527))))

(declare-fun b!1782717 () Bool)

(assert (=> b!1782717 (= e!1140883 tp_is_empty!7937)))

(declare-fun b!1782718 () Bool)

(declare-fun tp!504523 () Bool)

(declare-fun tp!504526 () Bool)

(assert (=> b!1782718 (= e!1140883 (and tp!504523 tp!504526))))

(assert (=> b!1781888 (= tp!504443 e!1140883)))

(assert (= (and b!1781888 ((_ is ElementMatch!4847) (regex!3519 (rule!5595 token!523)))) b!1782717))

(assert (= (and b!1781888 ((_ is Concat!8457) (regex!3519 (rule!5595 token!523)))) b!1782718))

(assert (= (and b!1781888 ((_ is Star!4847) (regex!3519 (rule!5595 token!523)))) b!1782719))

(assert (= (and b!1781888 ((_ is Union!4847) (regex!3519 (rule!5595 token!523)))) b!1782720))

(declare-fun b!1782721 () Bool)

(declare-fun e!1140884 () Bool)

(declare-fun tp!504528 () Bool)

(assert (=> b!1782721 (= e!1140884 (and tp_is_empty!7937 tp!504528))))

(assert (=> b!1781866 (= tp!504445 e!1140884)))

(assert (= (and b!1781866 ((_ is Cons!19639) (originalCharacters!4333 token!523))) b!1782721))

(declare-fun b!1782724 () Bool)

(declare-fun e!1140885 () Bool)

(declare-fun tp!504531 () Bool)

(assert (=> b!1782724 (= e!1140885 tp!504531)))

(declare-fun b!1782725 () Bool)

(declare-fun tp!504530 () Bool)

(declare-fun tp!504533 () Bool)

(assert (=> b!1782725 (= e!1140885 (and tp!504530 tp!504533))))

(declare-fun b!1782722 () Bool)

(assert (=> b!1782722 (= e!1140885 tp_is_empty!7937)))

(declare-fun b!1782723 () Bool)

(declare-fun tp!504529 () Bool)

(declare-fun tp!504532 () Bool)

(assert (=> b!1782723 (= e!1140885 (and tp!504529 tp!504532))))

(assert (=> b!1781892 (= tp!504442 e!1140885)))

(assert (= (and b!1781892 ((_ is ElementMatch!4847) (regex!3519 (h!25041 rules!3447)))) b!1782722))

(assert (= (and b!1781892 ((_ is Concat!8457) (regex!3519 (h!25041 rules!3447)))) b!1782723))

(assert (= (and b!1781892 ((_ is Star!4847) (regex!3519 (h!25041 rules!3447)))) b!1782724))

(assert (= (and b!1781892 ((_ is Union!4847) (regex!3519 (h!25041 rules!3447)))) b!1782725))

(declare-fun b!1782734 () Bool)

(declare-fun tp!504542 () Bool)

(declare-fun tp!504541 () Bool)

(declare-fun e!1140891 () Bool)

(assert (=> b!1782734 (= e!1140891 (and (inv!25565 (left!15742 (c!289863 (dynLambda!9652 (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) (value!109964 (_1!11017 lt!692735)))))) tp!504542 (inv!25565 (right!16072 (c!289863 (dynLambda!9652 (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) (value!109964 (_1!11017 lt!692735)))))) tp!504541))))

(declare-fun b!1782736 () Bool)

(declare-fun e!1140890 () Bool)

(declare-fun tp!504540 () Bool)

(assert (=> b!1782736 (= e!1140890 tp!504540)))

(declare-fun b!1782735 () Bool)

(declare-fun inv!25572 (IArray!13071) Bool)

(assert (=> b!1782735 (= e!1140891 (and (inv!25572 (xs!9409 (c!289863 (dynLambda!9652 (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) (value!109964 (_1!11017 lt!692735)))))) e!1140890))))

(assert (=> b!1781922 (= tp!504454 (and (inv!25565 (c!289863 (dynLambda!9652 (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) (value!109964 (_1!11017 lt!692735))))) e!1140891))))

(assert (= (and b!1781922 ((_ is Node!6533) (c!289863 (dynLambda!9652 (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) (value!109964 (_1!11017 lt!692735)))))) b!1782734))

(assert (= b!1782735 b!1782736))

(assert (= (and b!1781922 ((_ is Leaf!9513) (c!289863 (dynLambda!9652 (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) (value!109964 (_1!11017 lt!692735)))))) b!1782735))

(declare-fun m!2205397 () Bool)

(assert (=> b!1782734 m!2205397))

(declare-fun m!2205399 () Bool)

(assert (=> b!1782734 m!2205399))

(declare-fun m!2205401 () Bool)

(assert (=> b!1782735 m!2205401))

(assert (=> b!1781922 m!2204207))

(declare-fun tp!504544 () Bool)

(declare-fun tp!504545 () Bool)

(declare-fun e!1140893 () Bool)

(declare-fun b!1782737 () Bool)

(assert (=> b!1782737 (= e!1140893 (and (inv!25565 (left!15742 (c!289863 (dynLambda!9652 (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) (dynLambda!9653 (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) lt!692769))))) tp!504545 (inv!25565 (right!16072 (c!289863 (dynLambda!9652 (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) (dynLambda!9653 (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) lt!692769))))) tp!504544))))

(declare-fun b!1782739 () Bool)

(declare-fun e!1140892 () Bool)

(declare-fun tp!504543 () Bool)

(assert (=> b!1782739 (= e!1140892 tp!504543)))

(declare-fun b!1782738 () Bool)

(assert (=> b!1782738 (= e!1140893 (and (inv!25572 (xs!9409 (c!289863 (dynLambda!9652 (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) (dynLambda!9653 (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) lt!692769))))) e!1140892))))

(assert (=> b!1781919 (= tp!504453 (and (inv!25565 (c!289863 (dynLambda!9652 (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) (dynLambda!9653 (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) lt!692769)))) e!1140893))))

(assert (= (and b!1781919 ((_ is Node!6533) (c!289863 (dynLambda!9652 (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) (dynLambda!9653 (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) lt!692769))))) b!1782737))

(assert (= b!1782738 b!1782739))

(assert (= (and b!1781919 ((_ is Leaf!9513) (c!289863 (dynLambda!9652 (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) (dynLambda!9653 (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))) lt!692769))))) b!1782738))

(declare-fun m!2205403 () Bool)

(assert (=> b!1782737 m!2205403))

(declare-fun m!2205405 () Bool)

(assert (=> b!1782737 m!2205405))

(declare-fun m!2205407 () Bool)

(assert (=> b!1782738 m!2205407))

(assert (=> b!1781919 m!2204201))

(declare-fun b!1782750 () Bool)

(declare-fun b_free!49495 () Bool)

(declare-fun b_next!50199 () Bool)

(assert (=> b!1782750 (= b_free!49495 (not b_next!50199))))

(declare-fun tb!108401 () Bool)

(declare-fun t!166705 () Bool)

(assert (=> (and b!1782750 (= (toValue!5046 (transformation!3519 (h!25041 (t!166653 rules!3447)))) (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735))))) t!166705) tb!108401))

(declare-fun result!130424 () Bool)

(assert (= result!130424 result!130346))

(assert (=> b!1781880 t!166705))

(assert (=> d!544294 t!166705))

(declare-fun t!166707 () Bool)

(declare-fun tb!108403 () Bool)

(assert (=> (and b!1782750 (= (toValue!5046 (transformation!3519 (h!25041 (t!166653 rules!3447)))) (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735))))) t!166707) tb!108403))

(declare-fun result!130426 () Bool)

(assert (= result!130426 result!130410))

(assert (=> d!544292 t!166707))

(declare-fun tb!108405 () Bool)

(declare-fun t!166709 () Bool)

(assert (=> (and b!1782750 (= (toValue!5046 (transformation!3519 (h!25041 (t!166653 rules!3447)))) (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735))))) t!166709) tb!108405))

(declare-fun result!130428 () Bool)

(assert (= result!130428 result!130372))

(assert (=> d!544120 t!166709))

(assert (=> d!544292 t!166705))

(assert (=> d!544318 t!166705))

(declare-fun b_and!136829 () Bool)

(declare-fun tp!504557 () Bool)

(assert (=> b!1782750 (= tp!504557 (and (=> t!166709 result!130428) (=> t!166707 result!130426) (=> t!166705 result!130424) b_and!136829))))

(declare-fun b_free!49497 () Bool)

(declare-fun b_next!50201 () Bool)

(assert (=> b!1782750 (= b_free!49497 (not b_next!50201))))

(declare-fun t!166711 () Bool)

(declare-fun tb!108407 () Bool)

(assert (=> (and b!1782750 (= (toChars!4905 (transformation!3519 (h!25041 (t!166653 rules!3447)))) (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735))))) t!166711) tb!108407))

(declare-fun result!130430 () Bool)

(assert (= result!130430 result!130338))

(assert (=> b!1781880 t!166711))

(declare-fun t!166713 () Bool)

(declare-fun tb!108409 () Bool)

(assert (=> (and b!1782750 (= (toChars!4905 (transformation!3519 (h!25041 (t!166653 rules!3447)))) (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735))))) t!166713) tb!108409))

(declare-fun result!130432 () Bool)

(assert (= result!130432 result!130354))

(assert (=> b!1781899 t!166713))

(assert (=> d!544268 t!166713))

(declare-fun tb!108411 () Bool)

(declare-fun t!166715 () Bool)

(assert (=> (and b!1782750 (= (toChars!4905 (transformation!3519 (h!25041 (t!166653 rules!3447)))) (toChars!4905 (transformation!3519 (rule!5595 token!523)))) t!166715) tb!108411))

(declare-fun result!130434 () Bool)

(assert (= result!130434 result!130366))

(assert (=> b!1782182 t!166715))

(assert (=> d!544098 t!166715))

(assert (=> d!544318 t!166711))

(declare-fun tp!504556 () Bool)

(declare-fun b_and!136831 () Bool)

(assert (=> b!1782750 (= tp!504556 (and (=> t!166711 result!130430) (=> t!166715 result!130434) (=> t!166713 result!130432) b_and!136831))))

(declare-fun e!1140902 () Bool)

(assert (=> b!1782750 (= e!1140902 (and tp!504557 tp!504556))))

(declare-fun e!1140903 () Bool)

(declare-fun tp!504554 () Bool)

(declare-fun b!1782749 () Bool)

(assert (=> b!1782749 (= e!1140903 (and tp!504554 (inv!25558 (tag!3915 (h!25041 (t!166653 rules!3447)))) (inv!25564 (transformation!3519 (h!25041 (t!166653 rules!3447)))) e!1140902))))

(declare-fun b!1782748 () Bool)

(declare-fun e!1140905 () Bool)

(declare-fun tp!504555 () Bool)

(assert (=> b!1782748 (= e!1140905 (and e!1140903 tp!504555))))

(assert (=> b!1781890 (= tp!504447 e!1140905)))

(assert (= b!1782749 b!1782750))

(assert (= b!1782748 b!1782749))

(assert (= (and b!1781890 ((_ is Cons!19640) (t!166653 rules!3447))) b!1782748))

(declare-fun m!2205409 () Bool)

(assert (=> b!1782749 m!2205409))

(declare-fun m!2205411 () Bool)

(assert (=> b!1782749 m!2205411))

(declare-fun b!1782753 () Bool)

(declare-fun e!1140906 () Bool)

(declare-fun tp!504560 () Bool)

(assert (=> b!1782753 (= e!1140906 tp!504560)))

(declare-fun b!1782754 () Bool)

(declare-fun tp!504559 () Bool)

(declare-fun tp!504562 () Bool)

(assert (=> b!1782754 (= e!1140906 (and tp!504559 tp!504562))))

(declare-fun b!1782751 () Bool)

(assert (=> b!1782751 (= e!1140906 tp_is_empty!7937)))

(declare-fun b!1782752 () Bool)

(declare-fun tp!504558 () Bool)

(declare-fun tp!504561 () Bool)

(assert (=> b!1782752 (= e!1140906 (and tp!504558 tp!504561))))

(assert (=> b!1781869 (= tp!504448 e!1140906)))

(assert (= (and b!1781869 ((_ is ElementMatch!4847) (regex!3519 rule!422))) b!1782751))

(assert (= (and b!1781869 ((_ is Concat!8457) (regex!3519 rule!422))) b!1782752))

(assert (= (and b!1781869 ((_ is Star!4847) (regex!3519 rule!422))) b!1782753))

(assert (= (and b!1781869 ((_ is Union!4847) (regex!3519 rule!422))) b!1782754))

(declare-fun b_lambda!58403 () Bool)

(assert (= b_lambda!58355 (or (and b!1781886 b_free!49481 (= (toChars!4905 (transformation!3519 (h!25041 rules!3447))) (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))))) (and b!1781865 b_free!49485 (= (toChars!4905 (transformation!3519 rule!422)) (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))))) (and b!1781884 b_free!49489 (= (toChars!4905 (transformation!3519 (rule!5595 token!523))) (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))))) (and b!1782750 b_free!49497 (= (toChars!4905 (transformation!3519 (h!25041 (t!166653 rules!3447)))) (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))))) b_lambda!58403)))

(declare-fun b_lambda!58405 () Bool)

(assert (= b_lambda!58367 (or (and b!1781886 b_free!49481 (= (toChars!4905 (transformation!3519 (h!25041 rules!3447))) (toChars!4905 (transformation!3519 (rule!5595 token!523))))) (and b!1781865 b_free!49485 (= (toChars!4905 (transformation!3519 rule!422)) (toChars!4905 (transformation!3519 (rule!5595 token!523))))) (and b!1781884 b_free!49489) (and b!1782750 b_free!49497 (= (toChars!4905 (transformation!3519 (h!25041 (t!166653 rules!3447)))) (toChars!4905 (transformation!3519 (rule!5595 token!523))))) b_lambda!58405)))

(declare-fun b_lambda!58407 () Bool)

(assert (= b_lambda!58353 (or (and b!1781886 b_free!49479 (= (toValue!5046 (transformation!3519 (h!25041 rules!3447))) (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))))) (and b!1781865 b_free!49483 (= (toValue!5046 (transformation!3519 rule!422)) (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))))) (and b!1781884 b_free!49487 (= (toValue!5046 (transformation!3519 (rule!5595 token!523))) (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))))) (and b!1782750 b_free!49495 (= (toValue!5046 (transformation!3519 (h!25041 (t!166653 rules!3447)))) (toValue!5046 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))))) b_lambda!58407)))

(declare-fun b_lambda!58409 () Bool)

(assert (= b_lambda!58369 (or (and b!1781886 b_free!49481 (= (toChars!4905 (transformation!3519 (h!25041 rules!3447))) (toChars!4905 (transformation!3519 (rule!5595 token!523))))) (and b!1781865 b_free!49485 (= (toChars!4905 (transformation!3519 rule!422)) (toChars!4905 (transformation!3519 (rule!5595 token!523))))) (and b!1781884 b_free!49489) (and b!1782750 b_free!49497 (= (toChars!4905 (transformation!3519 (h!25041 (t!166653 rules!3447)))) (toChars!4905 (transformation!3519 (rule!5595 token!523))))) b_lambda!58409)))

(declare-fun b_lambda!58411 () Bool)

(assert (= b_lambda!58351 (or (and b!1781886 b_free!49481 (= (toChars!4905 (transformation!3519 (h!25041 rules!3447))) (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))))) (and b!1781865 b_free!49485 (= (toChars!4905 (transformation!3519 rule!422)) (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))))) (and b!1781884 b_free!49489 (= (toChars!4905 (transformation!3519 (rule!5595 token!523))) (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))))) (and b!1782750 b_free!49497 (= (toChars!4905 (transformation!3519 (h!25041 (t!166653 rules!3447)))) (toChars!4905 (transformation!3519 (rule!5595 (_1!11017 lt!692735)))))) b_lambda!58411)))

(check-sat (not bm!111294) (not b!1782669) (not b_next!50193) b_and!136819 (not b!1782351) (not d!544318) (not d!544296) (not b!1782562) (not b_lambda!58405) (not b!1782559) (not b!1782429) (not b!1782672) (not b!1782423) (not b!1782691) (not b!1782570) (not b!1782753) (not b_lambda!58393) (not b!1782720) (not b!1782589) (not d!544216) (not b!1782393) (not b!1782657) (not b!1782579) (not b!1782718) (not b!1782203) (not d!544230) b_and!136821 (not d!544284) (not b!1782142) (not b!1782616) (not tb!108365) (not d!544320) (not d!544328) (not b!1782739) (not b!1782428) (not b!1782677) (not b!1782091) (not b!1782352) (not d!544076) (not d!544132) (not b!1782576) (not d!544102) (not d!544070) (not b!1782749) (not b!1782143) (not b!1782063) (not b_lambda!58399) (not b!1782676) (not d!544286) (not b!1782582) (not b_next!50187) (not d!544316) (not d!544110) (not bm!111298) (not b_lambda!58407) (not bm!111313) (not d!544354) (not b!1782354) (not bm!111310) (not d!544358) (not b!1782695) (not b!1782138) (not d!544332) (not b!1782636) (not d!544062) (not b!1782665) b_and!136823 (not b!1782080) (not b_next!50185) (not d!544264) (not d!544338) (not b!1782182) (not b!1782639) (not b!1782675) (not d!544268) (not b!1782725) (not b!1782577) (not b_next!50199) (not b!1782706) tp_is_empty!7937 (not d!544340) (not b!1782736) (not b!1782564) (not d!544108) b_and!136827 (not b!1782141) (not d!544074) b_and!136831 b_and!136817 (not d!544290) (not d!544282) (not d!544348) (not b!1782426) (not b!1782628) (not bm!111311) (not d!544082) (not b!1782721) (not b!1782434) (not b!1782734) (not b!1782724) (not b!1782010) (not b!1782392) (not b!1782350) (not b!1782631) (not b!1782664) (not d!544272) (not b!1782723) (not tb!108359) (not b!1782680) (not b!1782700) (not d!544072) (not b!1782633) (not d!544136) (not b!1782358) (not b!1782140) (not d!544360) (not b!1782668) (not tb!108395) (not d!544228) (not b!1782572) (not b!1782076) (not b!1782754) (not b!1782433) (not b!1782692) (not b!1782360) (not b!1782653) (not b_lambda!58395) (not b!1782681) (not b!1782220) (not b!1782635) (not b_next!50191) (not b!1782618) (not b!1782566) (not b!1782748) (not b!1782679) (not b!1782150) (not b!1782407) (not b!1782655) (not d!544096) (not b_next!50189) (not b!1782432) (not d!544274) (not d!544276) (not b!1782071) (not d!544226) b_and!136829 (not b_next!50183) (not b!1782355) (not b_lambda!58371) (not d!544298) (not b!1782608) (not d!544278) (not b!1782738) (not b!1782139) (not d!544292) (not b!1782590) (not b!1782356) (not b!1782654) (not b!1782593) (not b_lambda!58391) (not b!1782585) (not b!1782183) (not b!1782563) (not b!1782558) (not d!544086) (not b!1782408) (not b!1782673) (not d!544280) (not b!1782144) (not b!1782394) (not b!1782021) (not b!1782573) (not b!1782145) (not d!544346) (not b!1782699) (not d!544104) (not b!1782567) (not d!544300) (not b!1782557) (not bm!111312) (not b!1782067) (not b!1781922) (not d!544350) b_and!136825 (not d!544064) (not b!1782689) (not d!544336) (not d!544146) (not d!544098) (not d!544068) (not b!1781919) (not b_lambda!58403) (not b!1782575) (not b!1782094) (not b!1782065) (not d!544270) (not b_lambda!58411) (not d!544218) (not b!1782587) (not b!1782083) (not d!544208) (not b!1782029) (not d!544356) (not b!1782022) (not b_lambda!58409) (not d!544302) (not b!1782068) (not b!1782719) (not b!1782571) (not b!1782735) (not b!1782161) (not b!1782737) (not b_lambda!58397) (not b!1782650) (not d!544078) (not b!1782085) (not b_lambda!58401) (not b!1782011) (not b!1782684) (not d!544322) (not d!544266) (not b!1782687) (not d!544088) (not d!544220) (not b!1782422) (not b_next!50201) (not b!1782060) (not b!1782604) (not b!1782574) (not b!1782087) (not b!1782752) (not d!544330) (not b!1782088) (not bm!111295) (not d!544106) (not b!1782696) (not b!1782168))
(check-sat b_and!136821 (not b_next!50187) b_and!136823 (not b_next!50185) (not b_next!50199) (not b_next!50191) (not b_next!50183) b_and!136825 (not b_next!50201) (not b_next!50193) b_and!136819 b_and!136827 b_and!136831 b_and!136817 (not b_next!50189) b_and!136829)
