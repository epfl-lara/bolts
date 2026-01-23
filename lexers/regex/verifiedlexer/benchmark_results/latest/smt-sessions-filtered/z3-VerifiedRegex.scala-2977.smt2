; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!177086 () Bool)

(assert start!177086)

(declare-fun b!1780528 () Bool)

(declare-fun b_free!49423 () Bool)

(declare-fun b_next!50127 () Bool)

(assert (=> b!1780528 (= b_free!49423 (not b_next!50127))))

(declare-fun tp!504174 () Bool)

(declare-fun b_and!136451 () Bool)

(assert (=> b!1780528 (= tp!504174 b_and!136451)))

(declare-fun b_free!49425 () Bool)

(declare-fun b_next!50129 () Bool)

(assert (=> b!1780528 (= b_free!49425 (not b_next!50129))))

(declare-fun tp!504177 () Bool)

(declare-fun b_and!136453 () Bool)

(assert (=> b!1780528 (= tp!504177 b_and!136453)))

(declare-fun b!1780510 () Bool)

(declare-fun b_free!49427 () Bool)

(declare-fun b_next!50131 () Bool)

(assert (=> b!1780510 (= b_free!49427 (not b_next!50131))))

(declare-fun tp!504172 () Bool)

(declare-fun b_and!136455 () Bool)

(assert (=> b!1780510 (= tp!504172 b_and!136455)))

(declare-fun b_free!49429 () Bool)

(declare-fun b_next!50133 () Bool)

(assert (=> b!1780510 (= b_free!49429 (not b_next!50133))))

(declare-fun tp!504180 () Bool)

(declare-fun b_and!136457 () Bool)

(assert (=> b!1780510 (= tp!504180 b_and!136457)))

(declare-fun b!1780522 () Bool)

(declare-fun b_free!49431 () Bool)

(declare-fun b_next!50135 () Bool)

(assert (=> b!1780522 (= b_free!49431 (not b_next!50135))))

(declare-fun tp!504179 () Bool)

(declare-fun b_and!136459 () Bool)

(assert (=> b!1780522 (= tp!504179 b_and!136459)))

(declare-fun b_free!49433 () Bool)

(declare-fun b_next!50137 () Bool)

(assert (=> b!1780522 (= b_free!49433 (not b_next!50137))))

(declare-fun tp!504182 () Bool)

(declare-fun b_and!136461 () Bool)

(assert (=> b!1780522 (= tp!504182 b_and!136461)))

(declare-fun b!1780548 () Bool)

(declare-fun e!1139547 () Bool)

(assert (=> b!1780548 (= e!1139547 true)))

(declare-fun b!1780547 () Bool)

(declare-fun e!1139546 () Bool)

(assert (=> b!1780547 (= e!1139546 e!1139547)))

(declare-fun b!1780546 () Bool)

(declare-fun e!1139545 () Bool)

(assert (=> b!1780546 (= e!1139545 e!1139546)))

(declare-fun b!1780515 () Bool)

(assert (=> b!1780515 e!1139545))

(assert (= b!1780547 b!1780548))

(assert (= b!1780546 b!1780547))

(assert (= b!1780515 b!1780546))

(declare-datatypes ((List!19691 0))(
  ( (Nil!19621) (Cons!19621 (h!25022 (_ BitVec 16)) (t!166502 List!19691)) )
))
(declare-datatypes ((TokenValue!3605 0))(
  ( (FloatLiteralValue!7210 (text!25680 List!19691)) (TokenValueExt!3604 (__x!12512 Int)) (Broken!18025 (value!109824 List!19691)) (Object!3674) (End!3605) (Def!3605) (Underscore!3605) (Match!3605) (Else!3605) (Error!3605) (Case!3605) (If!3605) (Extends!3605) (Abstract!3605) (Class!3605) (Val!3605) (DelimiterValue!7210 (del!3665 List!19691)) (KeywordValue!3611 (value!109825 List!19691)) (CommentValue!7210 (value!109826 List!19691)) (WhitespaceValue!7210 (value!109827 List!19691)) (IndentationValue!3605 (value!109828 List!19691)) (String!22356) (Int32!3605) (Broken!18026 (value!109829 List!19691)) (Boolean!3606) (Unit!33909) (OperatorValue!3608 (op!3665 List!19691)) (IdentifierValue!7210 (value!109830 List!19691)) (IdentifierValue!7211 (value!109831 List!19691)) (WhitespaceValue!7211 (value!109832 List!19691)) (True!7210) (False!7210) (Broken!18027 (value!109833 List!19691)) (Broken!18028 (value!109834 List!19691)) (True!7211) (RightBrace!3605) (RightBracket!3605) (Colon!3605) (Null!3605) (Comma!3605) (LeftBracket!3605) (False!7211) (LeftBrace!3605) (ImaginaryLiteralValue!3605 (text!25681 List!19691)) (StringLiteralValue!10815 (value!109835 List!19691)) (EOFValue!3605 (value!109836 List!19691)) (IdentValue!3605 (value!109837 List!19691)) (DelimiterValue!7211 (value!109838 List!19691)) (DedentValue!3605 (value!109839 List!19691)) (NewLineValue!3605 (value!109840 List!19691)) (IntegerValue!10815 (value!109841 (_ BitVec 32)) (text!25682 List!19691)) (IntegerValue!10816 (value!109842 Int) (text!25683 List!19691)) (Times!3605) (Or!3605) (Equal!3605) (Minus!3605) (Broken!18029 (value!109843 List!19691)) (And!3605) (Div!3605) (LessEqual!3605) (Mod!3605) (Concat!8448) (Not!3605) (Plus!3605) (SpaceValue!3605 (value!109844 List!19691)) (IntegerValue!10817 (value!109845 Int) (text!25684 List!19691)) (StringLiteralValue!10816 (text!25685 List!19691)) (FloatLiteralValue!7211 (text!25686 List!19691)) (BytesLiteralValue!3605 (value!109846 List!19691)) (CommentValue!7211 (value!109847 List!19691)) (StringLiteralValue!10817 (value!109848 List!19691)) (ErrorTokenValue!3605 (msg!3666 List!19691)) )
))
(declare-datatypes ((C!9860 0))(
  ( (C!9861 (val!5526 Int)) )
))
(declare-datatypes ((List!19692 0))(
  ( (Nil!19622) (Cons!19622 (h!25023 C!9860) (t!166503 List!19692)) )
))
(declare-datatypes ((Regex!4843 0))(
  ( (ElementMatch!4843 (c!289676 C!9860)) (Concat!8449 (regOne!10198 Regex!4843) (regTwo!10198 Regex!4843)) (EmptyExpr!4843) (Star!4843 (reg!5172 Regex!4843)) (EmptyLang!4843) (Union!4843 (regOne!10199 Regex!4843) (regTwo!10199 Regex!4843)) )
))
(declare-datatypes ((String!22357 0))(
  ( (String!22358 (value!109849 String)) )
))
(declare-datatypes ((IArray!13059 0))(
  ( (IArray!13060 (innerList!6587 List!19692)) )
))
(declare-datatypes ((Conc!6527 0))(
  ( (Node!6527 (left!15726 Conc!6527) (right!16056 Conc!6527) (csize!13284 Int) (cheight!6738 Int)) (Leaf!9505 (xs!9403 IArray!13059) (csize!13285 Int)) (Empty!6527) )
))
(declare-datatypes ((BalanceConc!12998 0))(
  ( (BalanceConc!12999 (c!289677 Conc!6527)) )
))
(declare-datatypes ((TokenValueInjection!6870 0))(
  ( (TokenValueInjection!6871 (toValue!5042 Int) (toChars!4901 Int)) )
))
(declare-datatypes ((Rule!6830 0))(
  ( (Rule!6831 (regex!3515 Regex!4843) (tag!3909 String!22357) (isSeparator!3515 Bool) (transformation!3515 TokenValueInjection!6870)) )
))
(declare-datatypes ((Token!6596 0))(
  ( (Token!6597 (value!109850 TokenValue!3605) (rule!5587 Rule!6830) (size!15588 Int) (originalCharacters!4329 List!19692)) )
))
(declare-datatypes ((tuple2!19214 0))(
  ( (tuple2!19215 (_1!11009 Token!6596) (_2!11009 List!19692)) )
))
(declare-fun lt!691836 () tuple2!19214)

(declare-fun order!12651 () Int)

(declare-fun lambda!70656 () Int)

(declare-fun order!12653 () Int)

(declare-fun dynLambda!9628 (Int Int) Int)

(declare-fun dynLambda!9629 (Int Int) Int)

(assert (=> b!1780548 (< (dynLambda!9628 order!12651 (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836))))) (dynLambda!9629 order!12653 lambda!70656))))

(declare-fun order!12655 () Int)

(declare-fun dynLambda!9630 (Int Int) Int)

(assert (=> b!1780548 (< (dynLambda!9630 order!12655 (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836))))) (dynLambda!9629 order!12653 lambda!70656))))

(declare-fun b!1780501 () Bool)

(declare-fun e!1139515 () Bool)

(declare-fun tp_is_empty!7929 () Bool)

(declare-fun tp!504181 () Bool)

(assert (=> b!1780501 (= e!1139515 (and tp_is_empty!7929 tp!504181))))

(declare-fun rule!422 () Rule!6830)

(declare-fun e!1139512 () Bool)

(declare-fun b!1780502 () Bool)

(declare-fun tp!504176 () Bool)

(declare-fun e!1139525 () Bool)

(declare-fun inv!25531 (String!22357) Bool)

(declare-fun inv!25536 (TokenValueInjection!6870) Bool)

(assert (=> b!1780502 (= e!1139525 (and tp!504176 (inv!25531 (tag!3909 rule!422)) (inv!25536 (transformation!3515 rule!422)) e!1139512))))

(declare-fun b!1780503 () Bool)

(declare-fun e!1139517 () Bool)

(declare-fun e!1139537 () Bool)

(assert (=> b!1780503 (= e!1139517 e!1139537)))

(declare-fun res!802500 () Bool)

(assert (=> b!1780503 (=> res!802500 e!1139537)))

(declare-fun lt!691865 () Regex!4843)

(declare-fun lt!691857 () List!19692)

(declare-fun prefixMatch!726 (Regex!4843 List!19692) Bool)

(assert (=> b!1780503 (= res!802500 (prefixMatch!726 lt!691865 lt!691857))))

(declare-fun lt!691858 () List!19692)

(declare-fun suffix!1421 () List!19692)

(declare-fun ++!5339 (List!19692 List!19692) List!19692)

(declare-fun head!4160 (List!19692) C!9860)

(assert (=> b!1780503 (= lt!691857 (++!5339 lt!691858 (Cons!19622 (head!4160 suffix!1421) Nil!19622)))))

(declare-datatypes ((LexerInterface!3144 0))(
  ( (LexerInterfaceExt!3141 (__x!12513 Int)) (Lexer!3142) )
))
(declare-fun thiss!24550 () LexerInterface!3144)

(declare-datatypes ((List!19693 0))(
  ( (Nil!19623) (Cons!19623 (h!25024 Rule!6830) (t!166504 List!19693)) )
))
(declare-fun rules!3447 () List!19693)

(declare-fun rulesRegex!871 (LexerInterface!3144 List!19693) Regex!4843)

(assert (=> b!1780503 (= lt!691865 (rulesRegex!871 thiss!24550 rules!3447))))

(declare-fun e!1139530 () Bool)

(declare-fun token!523 () Token!6596)

(declare-fun tp!504178 () Bool)

(declare-fun b!1780504 () Bool)

(declare-fun e!1139531 () Bool)

(declare-fun inv!21 (TokenValue!3605) Bool)

(assert (=> b!1780504 (= e!1139530 (and (inv!21 (value!109850 token!523)) e!1139531 tp!504178))))

(declare-fun b!1780505 () Bool)

(declare-fun e!1139533 () Bool)

(declare-fun e!1139524 () Bool)

(assert (=> b!1780505 (= e!1139533 e!1139524)))

(declare-fun res!802504 () Bool)

(assert (=> b!1780505 (=> res!802504 e!1139524)))

(declare-datatypes ((Option!4052 0))(
  ( (None!4051) (Some!4051 (v!25540 tuple2!19214)) )
))
(declare-fun lt!691848 () Option!4052)

(declare-fun lt!691856 () List!19692)

(assert (=> b!1780505 (= res!802504 (or (not (= lt!691856 (_2!11009 lt!691836))) (not (= lt!691848 (Some!4051 (tuple2!19215 (_1!11009 lt!691836) lt!691856))))))))

(assert (=> b!1780505 (= (_2!11009 lt!691836) lt!691856)))

(declare-fun lt!691873 () List!19692)

(declare-fun lt!691872 () List!19692)

(declare-datatypes ((Unit!33910 0))(
  ( (Unit!33911) )
))
(declare-fun lt!691863 () Unit!33910)

(declare-fun lemmaSamePrefixThenSameSuffix!866 (List!19692 List!19692 List!19692 List!19692 List!19692) Unit!33910)

(assert (=> b!1780505 (= lt!691863 (lemmaSamePrefixThenSameSuffix!866 lt!691872 (_2!11009 lt!691836) lt!691872 lt!691856 lt!691873))))

(declare-fun getSuffix!922 (List!19692 List!19692) List!19692)

(assert (=> b!1780505 (= lt!691856 (getSuffix!922 lt!691873 lt!691872))))

(declare-fun lt!691855 () Int)

(declare-fun lt!691864 () TokenValue!3605)

(assert (=> b!1780505 (= lt!691848 (Some!4051 (tuple2!19215 (Token!6597 lt!691864 (rule!5587 (_1!11009 lt!691836)) lt!691855 lt!691872) (_2!11009 lt!691836))))))

(declare-fun maxPrefixOneRule!1067 (LexerInterface!3144 Rule!6830 List!19692) Option!4052)

(assert (=> b!1780505 (= lt!691848 (maxPrefixOneRule!1067 thiss!24550 (rule!5587 (_1!11009 lt!691836)) lt!691873))))

(declare-fun size!15589 (List!19692) Int)

(assert (=> b!1780505 (= lt!691855 (size!15589 lt!691872))))

(declare-fun apply!5315 (TokenValueInjection!6870 BalanceConc!12998) TokenValue!3605)

(declare-fun seqFromList!2484 (List!19692) BalanceConc!12998)

(assert (=> b!1780505 (= lt!691864 (apply!5315 (transformation!3515 (rule!5587 (_1!11009 lt!691836))) (seqFromList!2484 lt!691872)))))

(declare-fun lt!691874 () Unit!33910)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!445 (LexerInterface!3144 List!19693 List!19692 List!19692 List!19692 Rule!6830) Unit!33910)

(assert (=> b!1780505 (= lt!691874 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!445 thiss!24550 rules!3447 lt!691872 lt!691873 (_2!11009 lt!691836) (rule!5587 (_1!11009 lt!691836))))))

(declare-fun b!1780506 () Bool)

(declare-fun res!802517 () Bool)

(declare-fun e!1139511 () Bool)

(assert (=> b!1780506 (=> (not res!802517) (not e!1139511))))

(declare-fun lt!691862 () tuple2!19214)

(declare-fun isEmpty!12398 (List!19692) Bool)

(assert (=> b!1780506 (= res!802517 (isEmpty!12398 (_2!11009 lt!691862)))))

(declare-fun b!1780507 () Bool)

(declare-fun res!802502 () Bool)

(declare-fun e!1139520 () Bool)

(assert (=> b!1780507 (=> (not res!802502) (not e!1139520))))

(declare-fun rulesInvariant!2813 (LexerInterface!3144 List!19693) Bool)

(assert (=> b!1780507 (= res!802502 (rulesInvariant!2813 thiss!24550 rules!3447))))

(declare-fun b!1780508 () Bool)

(declare-fun res!802516 () Bool)

(assert (=> b!1780508 (=> (not res!802516) (not e!1139511))))

(assert (=> b!1780508 (= res!802516 (= (rule!5587 token!523) rule!422))))

(declare-fun b!1780509 () Bool)

(declare-fun e!1139534 () Bool)

(declare-fun e!1139516 () Bool)

(assert (=> b!1780509 (= e!1139534 e!1139516)))

(declare-fun res!802505 () Bool)

(assert (=> b!1780509 (=> res!802505 e!1139516)))

(assert (=> b!1780509 (= res!802505 (= (rule!5587 (_1!11009 lt!691836)) (rule!5587 token!523)))))

(assert (=> b!1780509 (= suffix!1421 (_2!11009 lt!691836))))

(declare-fun lt!691834 () Unit!33910)

(assert (=> b!1780509 (= lt!691834 (lemmaSamePrefixThenSameSuffix!866 lt!691858 suffix!1421 lt!691858 (_2!11009 lt!691836) lt!691873))))

(assert (=> b!1780509 (= lt!691872 lt!691858)))

(declare-fun lt!691841 () Unit!33910)

(declare-fun lemmaIsPrefixSameLengthThenSameList!251 (List!19692 List!19692 List!19692) Unit!33910)

(assert (=> b!1780509 (= lt!691841 (lemmaIsPrefixSameLengthThenSameList!251 lt!691872 lt!691858 lt!691873))))

(declare-fun e!1139532 () Bool)

(assert (=> b!1780510 (= e!1139532 (and tp!504172 tp!504180))))

(declare-fun b!1780511 () Bool)

(declare-fun e!1139521 () Bool)

(declare-fun e!1139510 () Bool)

(assert (=> b!1780511 (= e!1139521 e!1139510)))

(declare-fun res!802498 () Bool)

(assert (=> b!1780511 (=> res!802498 e!1139510)))

(declare-fun lt!691868 () BalanceConc!12998)

(declare-fun list!7977 (BalanceConc!12998) List!19692)

(declare-fun dynLambda!9631 (Int TokenValue!3605) BalanceConc!12998)

(declare-fun dynLambda!9632 (Int BalanceConc!12998) TokenValue!3605)

(assert (=> b!1780511 (= res!802498 (not (= (list!7977 (dynLambda!9631 (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) (dynLambda!9632 (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) lt!691868))) lt!691872)))))

(declare-fun lt!691852 () Unit!33910)

(declare-fun lemmaSemiInverse!653 (TokenValueInjection!6870 BalanceConc!12998) Unit!33910)

(assert (=> b!1780511 (= lt!691852 (lemmaSemiInverse!653 (transformation!3515 (rule!5587 (_1!11009 lt!691836))) lt!691868))))

(declare-fun b!1780512 () Bool)

(declare-fun e!1139529 () Unit!33910)

(declare-fun Unit!33912 () Unit!33910)

(assert (=> b!1780512 (= e!1139529 Unit!33912)))

(declare-fun b!1780513 () Bool)

(declare-fun res!802495 () Bool)

(assert (=> b!1780513 (=> (not res!802495) (not e!1139520))))

(declare-fun isEmpty!12399 (List!19693) Bool)

(assert (=> b!1780513 (= res!802495 (not (isEmpty!12399 rules!3447)))))

(declare-fun b!1780514 () Bool)

(declare-fun e!1139518 () Bool)

(assert (=> b!1780514 (= e!1139518 e!1139534)))

(declare-fun res!802514 () Bool)

(assert (=> b!1780514 (=> res!802514 e!1139534)))

(declare-fun lt!691845 () Int)

(declare-fun lt!691870 () Int)

(assert (=> b!1780514 (= res!802514 (not (= lt!691845 lt!691870)))))

(declare-fun lt!691849 () Unit!33910)

(declare-fun e!1139538 () Unit!33910)

(assert (=> b!1780514 (= lt!691849 e!1139538)))

(declare-fun c!289675 () Bool)

(assert (=> b!1780514 (= c!289675 (< lt!691845 lt!691870))))

(declare-fun e!1139528 () Bool)

(assert (=> b!1780515 (= e!1139528 e!1139521)))

(declare-fun res!802506 () Bool)

(assert (=> b!1780515 (=> res!802506 e!1139521)))

(declare-fun Forall!882 (Int) Bool)

(assert (=> b!1780515 (= res!802506 (not (Forall!882 lambda!70656)))))

(declare-fun lt!691838 () Unit!33910)

(declare-fun lemmaInv!714 (TokenValueInjection!6870) Unit!33910)

(assert (=> b!1780515 (= lt!691838 (lemmaInv!714 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))))))

(declare-fun b!1780516 () Bool)

(declare-fun Unit!33913 () Unit!33910)

(assert (=> b!1780516 (= e!1139538 Unit!33913)))

(declare-fun lt!691840 () Unit!33910)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!224 (LexerInterface!3144 List!19693 Rule!6830 List!19692 List!19692 List!19692 Rule!6830) Unit!33910)

(assert (=> b!1780516 (= lt!691840 (lemmaMaxPrefixOutputsMaxPrefix!224 thiss!24550 rules!3447 (rule!5587 (_1!11009 lt!691836)) lt!691872 lt!691873 lt!691858 rule!422))))

(assert (=> b!1780516 false))

(declare-fun b!1780517 () Bool)

(declare-fun res!802497 () Bool)

(assert (=> b!1780517 (=> res!802497 e!1139528)))

(declare-fun matchR!2316 (Regex!4843 List!19692) Bool)

(assert (=> b!1780517 (= res!802497 (not (matchR!2316 (regex!3515 (rule!5587 (_1!11009 lt!691836))) lt!691872)))))

(declare-fun tp!504171 () Bool)

(declare-fun b!1780518 () Bool)

(assert (=> b!1780518 (= e!1139531 (and tp!504171 (inv!25531 (tag!3909 (rule!5587 token!523))) (inv!25536 (transformation!3515 (rule!5587 token!523))) e!1139532))))

(declare-fun b!1780519 () Bool)

(assert (=> b!1780519 (= e!1139537 e!1139528)))

(declare-fun res!802515 () Bool)

(assert (=> b!1780519 (=> res!802515 e!1139528)))

(declare-fun isPrefix!1755 (List!19692 List!19692) Bool)

(assert (=> b!1780519 (= res!802515 (not (isPrefix!1755 lt!691872 lt!691873)))))

(assert (=> b!1780519 (isPrefix!1755 lt!691872 (++!5339 lt!691872 (_2!11009 lt!691836)))))

(declare-fun lt!691835 () Unit!33910)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1264 (List!19692 List!19692) Unit!33910)

(assert (=> b!1780519 (= lt!691835 (lemmaConcatTwoListThenFirstIsPrefix!1264 lt!691872 (_2!11009 lt!691836)))))

(assert (=> b!1780519 (= lt!691872 (list!7977 lt!691868))))

(declare-fun charsOf!2164 (Token!6596) BalanceConc!12998)

(assert (=> b!1780519 (= lt!691868 (charsOf!2164 (_1!11009 lt!691836)))))

(declare-fun e!1139519 () Bool)

(assert (=> b!1780519 e!1139519))

(declare-fun res!802513 () Bool)

(assert (=> b!1780519 (=> (not res!802513) (not e!1139519))))

(declare-datatypes ((Option!4053 0))(
  ( (None!4052) (Some!4052 (v!25541 Rule!6830)) )
))
(declare-fun lt!691839 () Option!4053)

(declare-fun isDefined!3395 (Option!4053) Bool)

(assert (=> b!1780519 (= res!802513 (isDefined!3395 lt!691839))))

(declare-fun getRuleFromTag!563 (LexerInterface!3144 List!19693 String!22357) Option!4053)

(assert (=> b!1780519 (= lt!691839 (getRuleFromTag!563 thiss!24550 rules!3447 (tag!3909 (rule!5587 (_1!11009 lt!691836)))))))

(declare-fun lt!691842 () Unit!33910)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!563 (LexerInterface!3144 List!19693 List!19692 Token!6596) Unit!33910)

(assert (=> b!1780519 (= lt!691842 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!563 thiss!24550 rules!3447 lt!691873 (_1!11009 lt!691836)))))

(declare-fun lt!691851 () Option!4052)

(declare-fun get!6027 (Option!4052) tuple2!19214)

(assert (=> b!1780519 (= lt!691836 (get!6027 lt!691851))))

(declare-fun lt!691847 () Unit!33910)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!666 (LexerInterface!3144 List!19693 List!19692 List!19692) Unit!33910)

(assert (=> b!1780519 (= lt!691847 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!666 thiss!24550 rules!3447 lt!691858 suffix!1421))))

(declare-fun maxPrefix!1698 (LexerInterface!3144 List!19693 List!19692) Option!4052)

(assert (=> b!1780519 (= lt!691851 (maxPrefix!1698 thiss!24550 rules!3447 lt!691873))))

(assert (=> b!1780519 (isPrefix!1755 lt!691858 lt!691873)))

(declare-fun lt!691831 () Unit!33910)

(assert (=> b!1780519 (= lt!691831 (lemmaConcatTwoListThenFirstIsPrefix!1264 lt!691858 suffix!1421))))

(assert (=> b!1780519 (= lt!691873 (++!5339 lt!691858 suffix!1421))))

(declare-fun b!1780520 () Bool)

(declare-fun e!1139523 () Bool)

(assert (=> b!1780520 (= e!1139520 e!1139523)))

(declare-fun res!802503 () Bool)

(assert (=> b!1780520 (=> (not res!802503) (not e!1139523))))

(declare-fun lt!691859 () Option!4052)

(declare-fun isDefined!3396 (Option!4052) Bool)

(assert (=> b!1780520 (= res!802503 (isDefined!3396 lt!691859))))

(assert (=> b!1780520 (= lt!691859 (maxPrefix!1698 thiss!24550 rules!3447 lt!691858))))

(declare-fun lt!691850 () BalanceConc!12998)

(assert (=> b!1780520 (= lt!691858 (list!7977 lt!691850))))

(assert (=> b!1780520 (= lt!691850 (charsOf!2164 token!523))))

(declare-fun b!1780521 () Bool)

(declare-fun Unit!33914 () Unit!33910)

(assert (=> b!1780521 (= e!1139538 Unit!33914)))

(assert (=> b!1780522 (= e!1139512 (and tp!504179 tp!504182))))

(declare-fun e!1139527 () Bool)

(declare-fun e!1139513 () Bool)

(declare-fun b!1780523 () Bool)

(declare-fun tp!504175 () Bool)

(assert (=> b!1780523 (= e!1139527 (and tp!504175 (inv!25531 (tag!3909 (h!25024 rules!3447))) (inv!25536 (transformation!3515 (h!25024 rules!3447))) e!1139513))))

(declare-fun b!1780524 () Bool)

(declare-fun e!1139535 () Bool)

(declare-fun lt!691861 () Rule!6830)

(assert (=> b!1780524 (= e!1139535 (= (rule!5587 (_1!11009 lt!691836)) lt!691861))))

(declare-fun b!1780525 () Bool)

(assert (=> b!1780525 (= e!1139519 e!1139535)))

(declare-fun res!802499 () Bool)

(assert (=> b!1780525 (=> (not res!802499) (not e!1139535))))

(assert (=> b!1780525 (= res!802499 (matchR!2316 (regex!3515 lt!691861) (list!7977 (charsOf!2164 (_1!11009 lt!691836)))))))

(declare-fun get!6028 (Option!4053) Rule!6830)

(assert (=> b!1780525 (= lt!691861 (get!6028 lt!691839))))

(declare-fun b!1780526 () Bool)

(declare-fun res!802518 () Bool)

(assert (=> b!1780526 (=> (not res!802518) (not e!1139520))))

(declare-fun contains!3547 (List!19693 Rule!6830) Bool)

(assert (=> b!1780526 (= res!802518 (contains!3547 rules!3447 rule!422))))

(declare-fun b!1780527 () Bool)

(assert (=> b!1780527 (= e!1139510 e!1139533)))

(declare-fun res!802512 () Bool)

(assert (=> b!1780527 (=> res!802512 e!1139533)))

(declare-fun lt!691853 () TokenValue!3605)

(assert (=> b!1780527 (= res!802512 (not (= lt!691851 (Some!4051 (tuple2!19215 (Token!6597 lt!691853 (rule!5587 (_1!11009 lt!691836)) lt!691845 lt!691872) (_2!11009 lt!691836))))))))

(declare-fun size!15590 (BalanceConc!12998) Int)

(assert (=> b!1780527 (= lt!691845 (size!15590 lt!691868))))

(assert (=> b!1780527 (= lt!691853 (apply!5315 (transformation!3515 (rule!5587 (_1!11009 lt!691836))) lt!691868))))

(declare-fun lt!691867 () Unit!33910)

(declare-fun lemmaCharactersSize!573 (Token!6596) Unit!33910)

(assert (=> b!1780527 (= lt!691867 (lemmaCharactersSize!573 (_1!11009 lt!691836)))))

(declare-fun lt!691860 () Unit!33910)

(declare-fun lemmaEqSameImage!426 (TokenValueInjection!6870 BalanceConc!12998 BalanceConc!12998) Unit!33910)

(assert (=> b!1780527 (= lt!691860 (lemmaEqSameImage!426 (transformation!3515 (rule!5587 (_1!11009 lt!691836))) lt!691868 (seqFromList!2484 (originalCharacters!4329 (_1!11009 lt!691836)))))))

(declare-fun res!802509 () Bool)

(assert (=> start!177086 (=> (not res!802509) (not e!1139520))))

(get-info :version)

(assert (=> start!177086 (= res!802509 ((_ is Lexer!3142) thiss!24550))))

(assert (=> start!177086 e!1139520))

(assert (=> start!177086 e!1139515))

(assert (=> start!177086 e!1139525))

(assert (=> start!177086 true))

(declare-fun inv!25537 (Token!6596) Bool)

(assert (=> start!177086 (and (inv!25537 token!523) e!1139530)))

(declare-fun e!1139522 () Bool)

(assert (=> start!177086 e!1139522))

(assert (=> b!1780528 (= e!1139513 (and tp!504174 tp!504177))))

(declare-fun b!1780529 () Bool)

(declare-fun tp!504173 () Bool)

(assert (=> b!1780529 (= e!1139522 (and e!1139527 tp!504173))))

(declare-fun b!1780530 () Bool)

(declare-fun res!802511 () Bool)

(assert (=> b!1780530 (=> res!802511 e!1139516)))

(declare-fun getIndex!180 (List!19693 Rule!6830) Int)

(assert (=> b!1780530 (= res!802511 (>= (getIndex!180 rules!3447 (rule!5587 token!523)) (getIndex!180 rules!3447 (rule!5587 (_1!11009 lt!691836)))))))

(declare-fun b!1780531 () Bool)

(declare-fun Unit!33915 () Unit!33910)

(assert (=> b!1780531 (= e!1139529 Unit!33915)))

(declare-fun lt!691846 () Unit!33910)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!222 (LexerInterface!3144 List!19693 List!19692 Token!6596 Rule!6830 List!19692) Unit!33910)

(assert (=> b!1780531 (= lt!691846 (lemmaMaxPrefixThenMatchesRulesRegex!222 thiss!24550 rules!3447 lt!691873 (_1!11009 lt!691836) (rule!5587 (_1!11009 lt!691836)) (_2!11009 lt!691836)))))

(assert (=> b!1780531 (matchR!2316 lt!691865 lt!691872)))

(declare-fun lt!691866 () List!19692)

(assert (=> b!1780531 (= lt!691866 (getSuffix!922 lt!691873 lt!691858))))

(declare-fun lt!691833 () Unit!33910)

(assert (=> b!1780531 (= lt!691833 (lemmaSamePrefixThenSameSuffix!866 lt!691858 suffix!1421 lt!691858 lt!691866 lt!691873))))

(assert (=> b!1780531 (= suffix!1421 lt!691866)))

(declare-fun lt!691832 () Unit!33910)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!291 (List!19692 List!19692) Unit!33910)

(assert (=> b!1780531 (= lt!691832 (lemmaAddHeadSuffixToPrefixStillPrefix!291 lt!691858 lt!691873))))

(assert (=> b!1780531 (isPrefix!1755 (++!5339 lt!691858 (Cons!19622 (head!4160 lt!691866) Nil!19622)) lt!691873)))

(declare-fun lt!691837 () Unit!33910)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!163 (List!19692 List!19692 List!19692) Unit!33910)

(assert (=> b!1780531 (= lt!691837 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!163 lt!691872 lt!691857 lt!691873))))

(assert (=> b!1780531 (isPrefix!1755 lt!691857 lt!691872)))

(declare-fun lt!691871 () Unit!33910)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!154 (Regex!4843 List!19692 List!19692) Unit!33910)

(assert (=> b!1780531 (= lt!691871 (lemmaNotPrefixMatchThenCannotMatchLonger!154 lt!691865 lt!691857 lt!691872))))

(assert (=> b!1780531 false))

(declare-fun b!1780532 () Bool)

(assert (=> b!1780532 (= e!1139511 (not e!1139517))))

(declare-fun res!802510 () Bool)

(assert (=> b!1780532 (=> res!802510 e!1139517)))

(assert (=> b!1780532 (= res!802510 (not (matchR!2316 (regex!3515 rule!422) lt!691858)))))

(declare-fun ruleValid!1013 (LexerInterface!3144 Rule!6830) Bool)

(assert (=> b!1780532 (ruleValid!1013 thiss!24550 rule!422)))

(declare-fun lt!691869 () Unit!33910)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!536 (LexerInterface!3144 Rule!6830 List!19693) Unit!33910)

(assert (=> b!1780532 (= lt!691869 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!536 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1780533 () Bool)

(assert (=> b!1780533 (= e!1139516 (contains!3547 rules!3447 (rule!5587 (_1!11009 lt!691836))))))

(declare-fun b!1780534 () Bool)

(declare-fun res!802507 () Bool)

(assert (=> b!1780534 (=> res!802507 e!1139517)))

(assert (=> b!1780534 (= res!802507 (isEmpty!12398 suffix!1421))))

(declare-fun b!1780535 () Bool)

(declare-fun res!802496 () Bool)

(assert (=> b!1780535 (=> res!802496 e!1139510)))

(assert (=> b!1780535 (= res!802496 (not (= lt!691868 (dynLambda!9631 (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) (value!109850 (_1!11009 lt!691836))))))))

(declare-fun b!1780536 () Bool)

(assert (=> b!1780536 (= e!1139524 e!1139518)))

(declare-fun res!802508 () Bool)

(assert (=> b!1780536 (=> res!802508 e!1139518)))

(declare-fun lt!691843 () Bool)

(assert (=> b!1780536 (= res!802508 lt!691843)))

(declare-fun lt!691844 () Unit!33910)

(assert (=> b!1780536 (= lt!691844 e!1139529)))

(declare-fun c!289674 () Bool)

(assert (=> b!1780536 (= c!289674 lt!691843)))

(assert (=> b!1780536 (= lt!691843 (> lt!691845 lt!691870))))

(assert (=> b!1780536 (= lt!691870 (size!15590 lt!691850))))

(assert (=> b!1780536 (matchR!2316 lt!691865 lt!691858)))

(declare-fun lt!691854 () Unit!33910)

(assert (=> b!1780536 (= lt!691854 (lemmaMaxPrefixThenMatchesRulesRegex!222 thiss!24550 rules!3447 lt!691858 token!523 rule!422 Nil!19622))))

(declare-fun b!1780537 () Bool)

(assert (=> b!1780537 (= e!1139523 e!1139511)))

(declare-fun res!802501 () Bool)

(assert (=> b!1780537 (=> (not res!802501) (not e!1139511))))

(assert (=> b!1780537 (= res!802501 (= (_1!11009 lt!691862) token!523))))

(assert (=> b!1780537 (= lt!691862 (get!6027 lt!691859))))

(assert (= (and start!177086 res!802509) b!1780513))

(assert (= (and b!1780513 res!802495) b!1780507))

(assert (= (and b!1780507 res!802502) b!1780526))

(assert (= (and b!1780526 res!802518) b!1780520))

(assert (= (and b!1780520 res!802503) b!1780537))

(assert (= (and b!1780537 res!802501) b!1780506))

(assert (= (and b!1780506 res!802517) b!1780508))

(assert (= (and b!1780508 res!802516) b!1780532))

(assert (= (and b!1780532 (not res!802510)) b!1780534))

(assert (= (and b!1780534 (not res!802507)) b!1780503))

(assert (= (and b!1780503 (not res!802500)) b!1780519))

(assert (= (and b!1780519 res!802513) b!1780525))

(assert (= (and b!1780525 res!802499) b!1780524))

(assert (= (and b!1780519 (not res!802515)) b!1780517))

(assert (= (and b!1780517 (not res!802497)) b!1780515))

(assert (= (and b!1780515 (not res!802506)) b!1780511))

(assert (= (and b!1780511 (not res!802498)) b!1780535))

(assert (= (and b!1780535 (not res!802496)) b!1780527))

(assert (= (and b!1780527 (not res!802512)) b!1780505))

(assert (= (and b!1780505 (not res!802504)) b!1780536))

(assert (= (and b!1780536 c!289674) b!1780531))

(assert (= (and b!1780536 (not c!289674)) b!1780512))

(assert (= (and b!1780536 (not res!802508)) b!1780514))

(assert (= (and b!1780514 c!289675) b!1780516))

(assert (= (and b!1780514 (not c!289675)) b!1780521))

(assert (= (and b!1780514 (not res!802514)) b!1780509))

(assert (= (and b!1780509 (not res!802505)) b!1780530))

(assert (= (and b!1780530 (not res!802511)) b!1780533))

(assert (= (and start!177086 ((_ is Cons!19622) suffix!1421)) b!1780501))

(assert (= b!1780502 b!1780522))

(assert (= start!177086 b!1780502))

(assert (= b!1780518 b!1780510))

(assert (= b!1780504 b!1780518))

(assert (= start!177086 b!1780504))

(assert (= b!1780523 b!1780528))

(assert (= b!1780529 b!1780523))

(assert (= (and start!177086 ((_ is Cons!19623) rules!3447)) b!1780529))

(declare-fun b_lambda!58271 () Bool)

(assert (=> (not b_lambda!58271) (not b!1780511)))

(declare-fun t!166485 () Bool)

(declare-fun tb!108203 () Bool)

(assert (=> (and b!1780528 (= (toChars!4901 (transformation!3515 (h!25024 rules!3447))) (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836))))) t!166485) tb!108203))

(declare-fun e!1139550 () Bool)

(declare-fun tp!504185 () Bool)

(declare-fun b!1780553 () Bool)

(declare-fun inv!25538 (Conc!6527) Bool)

(assert (=> b!1780553 (= e!1139550 (and (inv!25538 (c!289677 (dynLambda!9631 (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) (dynLambda!9632 (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) lt!691868)))) tp!504185))))

(declare-fun result!130174 () Bool)

(declare-fun inv!25539 (BalanceConc!12998) Bool)

(assert (=> tb!108203 (= result!130174 (and (inv!25539 (dynLambda!9631 (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) (dynLambda!9632 (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) lt!691868))) e!1139550))))

(assert (= tb!108203 b!1780553))

(declare-fun m!2202457 () Bool)

(assert (=> b!1780553 m!2202457))

(declare-fun m!2202459 () Bool)

(assert (=> tb!108203 m!2202459))

(assert (=> b!1780511 t!166485))

(declare-fun b_and!136463 () Bool)

(assert (= b_and!136453 (and (=> t!166485 result!130174) b_and!136463)))

(declare-fun tb!108205 () Bool)

(declare-fun t!166487 () Bool)

(assert (=> (and b!1780510 (= (toChars!4901 (transformation!3515 (rule!5587 token!523))) (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836))))) t!166487) tb!108205))

(declare-fun result!130178 () Bool)

(assert (= result!130178 result!130174))

(assert (=> b!1780511 t!166487))

(declare-fun b_and!136465 () Bool)

(assert (= b_and!136457 (and (=> t!166487 result!130178) b_and!136465)))

(declare-fun tb!108207 () Bool)

(declare-fun t!166489 () Bool)

(assert (=> (and b!1780522 (= (toChars!4901 (transformation!3515 rule!422)) (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836))))) t!166489) tb!108207))

(declare-fun result!130180 () Bool)

(assert (= result!130180 result!130174))

(assert (=> b!1780511 t!166489))

(declare-fun b_and!136467 () Bool)

(assert (= b_and!136461 (and (=> t!166489 result!130180) b_and!136467)))

(declare-fun b_lambda!58273 () Bool)

(assert (=> (not b_lambda!58273) (not b!1780511)))

(declare-fun t!166491 () Bool)

(declare-fun tb!108209 () Bool)

(assert (=> (and b!1780528 (= (toValue!5042 (transformation!3515 (h!25024 rules!3447))) (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836))))) t!166491) tb!108209))

(declare-fun result!130182 () Bool)

(assert (=> tb!108209 (= result!130182 (inv!21 (dynLambda!9632 (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) lt!691868)))))

(declare-fun m!2202461 () Bool)

(assert (=> tb!108209 m!2202461))

(assert (=> b!1780511 t!166491))

(declare-fun b_and!136469 () Bool)

(assert (= b_and!136451 (and (=> t!166491 result!130182) b_and!136469)))

(declare-fun t!166493 () Bool)

(declare-fun tb!108211 () Bool)

(assert (=> (and b!1780510 (= (toValue!5042 (transformation!3515 (rule!5587 token!523))) (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836))))) t!166493) tb!108211))

(declare-fun result!130186 () Bool)

(assert (= result!130186 result!130182))

(assert (=> b!1780511 t!166493))

(declare-fun b_and!136471 () Bool)

(assert (= b_and!136455 (and (=> t!166493 result!130186) b_and!136471)))

(declare-fun tb!108213 () Bool)

(declare-fun t!166495 () Bool)

(assert (=> (and b!1780522 (= (toValue!5042 (transformation!3515 rule!422)) (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836))))) t!166495) tb!108213))

(declare-fun result!130188 () Bool)

(assert (= result!130188 result!130182))

(assert (=> b!1780511 t!166495))

(declare-fun b_and!136473 () Bool)

(assert (= b_and!136459 (and (=> t!166495 result!130188) b_and!136473)))

(declare-fun b_lambda!58275 () Bool)

(assert (=> (not b_lambda!58275) (not b!1780535)))

(declare-fun tb!108215 () Bool)

(declare-fun t!166497 () Bool)

(assert (=> (and b!1780528 (= (toChars!4901 (transformation!3515 (h!25024 rules!3447))) (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836))))) t!166497) tb!108215))

(declare-fun b!1780556 () Bool)

(declare-fun e!1139554 () Bool)

(declare-fun tp!504186 () Bool)

(assert (=> b!1780556 (= e!1139554 (and (inv!25538 (c!289677 (dynLambda!9631 (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) (value!109850 (_1!11009 lt!691836))))) tp!504186))))

(declare-fun result!130190 () Bool)

(assert (=> tb!108215 (= result!130190 (and (inv!25539 (dynLambda!9631 (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) (value!109850 (_1!11009 lt!691836)))) e!1139554))))

(assert (= tb!108215 b!1780556))

(declare-fun m!2202463 () Bool)

(assert (=> b!1780556 m!2202463))

(declare-fun m!2202465 () Bool)

(assert (=> tb!108215 m!2202465))

(assert (=> b!1780535 t!166497))

(declare-fun b_and!136475 () Bool)

(assert (= b_and!136463 (and (=> t!166497 result!130190) b_and!136475)))

(declare-fun tb!108217 () Bool)

(declare-fun t!166499 () Bool)

(assert (=> (and b!1780510 (= (toChars!4901 (transformation!3515 (rule!5587 token!523))) (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836))))) t!166499) tb!108217))

(declare-fun result!130192 () Bool)

(assert (= result!130192 result!130190))

(assert (=> b!1780535 t!166499))

(declare-fun b_and!136477 () Bool)

(assert (= b_and!136465 (and (=> t!166499 result!130192) b_and!136477)))

(declare-fun tb!108219 () Bool)

(declare-fun t!166501 () Bool)

(assert (=> (and b!1780522 (= (toChars!4901 (transformation!3515 rule!422)) (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836))))) t!166501) tb!108219))

(declare-fun result!130194 () Bool)

(assert (= result!130194 result!130190))

(assert (=> b!1780535 t!166501))

(declare-fun b_and!136479 () Bool)

(assert (= b_and!136467 (and (=> t!166501 result!130194) b_and!136479)))

(declare-fun m!2202467 () Bool)

(assert (=> b!1780511 m!2202467))

(assert (=> b!1780511 m!2202467))

(declare-fun m!2202469 () Bool)

(assert (=> b!1780511 m!2202469))

(assert (=> b!1780511 m!2202469))

(declare-fun m!2202471 () Bool)

(assert (=> b!1780511 m!2202471))

(declare-fun m!2202473 () Bool)

(assert (=> b!1780511 m!2202473))

(declare-fun m!2202475 () Bool)

(assert (=> b!1780534 m!2202475))

(declare-fun m!2202477 () Bool)

(assert (=> b!1780527 m!2202477))

(declare-fun m!2202479 () Bool)

(assert (=> b!1780527 m!2202479))

(declare-fun m!2202481 () Bool)

(assert (=> b!1780527 m!2202481))

(declare-fun m!2202483 () Bool)

(assert (=> b!1780527 m!2202483))

(assert (=> b!1780527 m!2202479))

(declare-fun m!2202485 () Bool)

(assert (=> b!1780527 m!2202485))

(declare-fun m!2202487 () Bool)

(assert (=> b!1780518 m!2202487))

(declare-fun m!2202489 () Bool)

(assert (=> b!1780518 m!2202489))

(declare-fun m!2202491 () Bool)

(assert (=> b!1780533 m!2202491))

(declare-fun m!2202493 () Bool)

(assert (=> b!1780516 m!2202493))

(declare-fun m!2202495 () Bool)

(assert (=> b!1780513 m!2202495))

(declare-fun m!2202497 () Bool)

(assert (=> b!1780515 m!2202497))

(declare-fun m!2202499 () Bool)

(assert (=> b!1780515 m!2202499))

(declare-fun m!2202501 () Bool)

(assert (=> b!1780532 m!2202501))

(declare-fun m!2202503 () Bool)

(assert (=> b!1780532 m!2202503))

(declare-fun m!2202505 () Bool)

(assert (=> b!1780532 m!2202505))

(declare-fun m!2202507 () Bool)

(assert (=> b!1780530 m!2202507))

(declare-fun m!2202509 () Bool)

(assert (=> b!1780530 m!2202509))

(declare-fun m!2202511 () Bool)

(assert (=> b!1780536 m!2202511))

(declare-fun m!2202513 () Bool)

(assert (=> b!1780536 m!2202513))

(declare-fun m!2202515 () Bool)

(assert (=> b!1780536 m!2202515))

(declare-fun m!2202517 () Bool)

(assert (=> b!1780535 m!2202517))

(declare-fun m!2202519 () Bool)

(assert (=> b!1780502 m!2202519))

(declare-fun m!2202521 () Bool)

(assert (=> b!1780502 m!2202521))

(declare-fun m!2202523 () Bool)

(assert (=> b!1780523 m!2202523))

(declare-fun m!2202525 () Bool)

(assert (=> b!1780523 m!2202525))

(declare-fun m!2202527 () Bool)

(assert (=> start!177086 m!2202527))

(declare-fun m!2202529 () Bool)

(assert (=> b!1780517 m!2202529))

(declare-fun m!2202531 () Bool)

(assert (=> b!1780506 m!2202531))

(declare-fun m!2202533 () Bool)

(assert (=> b!1780504 m!2202533))

(declare-fun m!2202535 () Bool)

(assert (=> b!1780520 m!2202535))

(declare-fun m!2202537 () Bool)

(assert (=> b!1780520 m!2202537))

(declare-fun m!2202539 () Bool)

(assert (=> b!1780520 m!2202539))

(declare-fun m!2202541 () Bool)

(assert (=> b!1780520 m!2202541))

(declare-fun m!2202543 () Bool)

(assert (=> b!1780526 m!2202543))

(declare-fun m!2202545 () Bool)

(assert (=> b!1780509 m!2202545))

(declare-fun m!2202547 () Bool)

(assert (=> b!1780509 m!2202547))

(declare-fun m!2202549 () Bool)

(assert (=> b!1780519 m!2202549))

(declare-fun m!2202551 () Bool)

(assert (=> b!1780519 m!2202551))

(declare-fun m!2202553 () Bool)

(assert (=> b!1780519 m!2202553))

(declare-fun m!2202555 () Bool)

(assert (=> b!1780519 m!2202555))

(declare-fun m!2202557 () Bool)

(assert (=> b!1780519 m!2202557))

(declare-fun m!2202559 () Bool)

(assert (=> b!1780519 m!2202559))

(declare-fun m!2202561 () Bool)

(assert (=> b!1780519 m!2202561))

(declare-fun m!2202563 () Bool)

(assert (=> b!1780519 m!2202563))

(declare-fun m!2202565 () Bool)

(assert (=> b!1780519 m!2202565))

(declare-fun m!2202567 () Bool)

(assert (=> b!1780519 m!2202567))

(declare-fun m!2202569 () Bool)

(assert (=> b!1780519 m!2202569))

(declare-fun m!2202571 () Bool)

(assert (=> b!1780519 m!2202571))

(assert (=> b!1780519 m!2202551))

(declare-fun m!2202573 () Bool)

(assert (=> b!1780519 m!2202573))

(declare-fun m!2202575 () Bool)

(assert (=> b!1780519 m!2202575))

(declare-fun m!2202577 () Bool)

(assert (=> b!1780519 m!2202577))

(assert (=> b!1780525 m!2202555))

(assert (=> b!1780525 m!2202555))

(declare-fun m!2202579 () Bool)

(assert (=> b!1780525 m!2202579))

(assert (=> b!1780525 m!2202579))

(declare-fun m!2202581 () Bool)

(assert (=> b!1780525 m!2202581))

(declare-fun m!2202583 () Bool)

(assert (=> b!1780525 m!2202583))

(declare-fun m!2202585 () Bool)

(assert (=> b!1780505 m!2202585))

(declare-fun m!2202587 () Bool)

(assert (=> b!1780505 m!2202587))

(declare-fun m!2202589 () Bool)

(assert (=> b!1780505 m!2202589))

(declare-fun m!2202591 () Bool)

(assert (=> b!1780505 m!2202591))

(assert (=> b!1780505 m!2202589))

(declare-fun m!2202593 () Bool)

(assert (=> b!1780505 m!2202593))

(declare-fun m!2202595 () Bool)

(assert (=> b!1780505 m!2202595))

(declare-fun m!2202597 () Bool)

(assert (=> b!1780505 m!2202597))

(declare-fun m!2202599 () Bool)

(assert (=> b!1780507 m!2202599))

(declare-fun m!2202601 () Bool)

(assert (=> b!1780531 m!2202601))

(declare-fun m!2202603 () Bool)

(assert (=> b!1780531 m!2202603))

(declare-fun m!2202605 () Bool)

(assert (=> b!1780531 m!2202605))

(declare-fun m!2202607 () Bool)

(assert (=> b!1780531 m!2202607))

(declare-fun m!2202609 () Bool)

(assert (=> b!1780531 m!2202609))

(declare-fun m!2202611 () Bool)

(assert (=> b!1780531 m!2202611))

(declare-fun m!2202613 () Bool)

(assert (=> b!1780531 m!2202613))

(assert (=> b!1780531 m!2202607))

(declare-fun m!2202615 () Bool)

(assert (=> b!1780531 m!2202615))

(declare-fun m!2202617 () Bool)

(assert (=> b!1780531 m!2202617))

(declare-fun m!2202619 () Bool)

(assert (=> b!1780531 m!2202619))

(declare-fun m!2202621 () Bool)

(assert (=> b!1780531 m!2202621))

(declare-fun m!2202623 () Bool)

(assert (=> b!1780503 m!2202623))

(declare-fun m!2202625 () Bool)

(assert (=> b!1780503 m!2202625))

(declare-fun m!2202627 () Bool)

(assert (=> b!1780503 m!2202627))

(declare-fun m!2202629 () Bool)

(assert (=> b!1780503 m!2202629))

(declare-fun m!2202631 () Bool)

(assert (=> b!1780537 m!2202631))

(check-sat (not b_next!50133) (not b!1780504) (not b!1780534) (not b!1780527) (not b_lambda!58273) (not b_next!50131) (not start!177086) (not b!1780529) (not b!1780506) (not b!1780511) (not b!1780516) (not b!1780553) (not tb!108203) (not b_next!50135) b_and!136477 (not b!1780530) (not b!1780532) (not b_lambda!58275) (not b!1780502) (not b_next!50127) (not b!1780537) b_and!136473 b_and!136479 b_and!136471 (not b!1780536) (not b!1780518) (not b!1780517) (not b!1780533) (not b_lambda!58271) (not tb!108209) (not b!1780501) (not b!1780523) (not b!1780505) (not b!1780503) (not tb!108215) (not b!1780531) (not b_next!50129) (not b!1780525) (not b_next!50137) (not b!1780509) (not b!1780556) (not b!1780515) (not b!1780507) (not b!1780526) (not b!1780519) tp_is_empty!7929 b_and!136475 (not b!1780520) b_and!136469 (not b!1780513))
(check-sat (not b_next!50133) b_and!136471 (not b_next!50131) (not b_next!50129) (not b_next!50137) b_and!136475 b_and!136469 (not b_next!50135) b_and!136477 (not b_next!50127) b_and!136473 b_and!136479)
(get-model)

(declare-fun d!543672 () Bool)

(declare-fun isEmpty!12400 (Option!4052) Bool)

(assert (=> d!543672 (= (isDefined!3396 lt!691859) (not (isEmpty!12400 lt!691859)))))

(declare-fun bs!405140 () Bool)

(assert (= bs!405140 d!543672))

(declare-fun m!2202633 () Bool)

(assert (=> bs!405140 m!2202633))

(assert (=> b!1780520 d!543672))

(declare-fun b!1780679 () Bool)

(declare-fun res!802600 () Bool)

(declare-fun e!1139624 () Bool)

(assert (=> b!1780679 (=> (not res!802600) (not e!1139624))))

(declare-fun lt!691905 () Option!4052)

(assert (=> b!1780679 (= res!802600 (< (size!15589 (_2!11009 (get!6027 lt!691905))) (size!15589 lt!691858)))))

(declare-fun b!1780680 () Bool)

(declare-fun res!802599 () Bool)

(assert (=> b!1780680 (=> (not res!802599) (not e!1139624))))

(assert (=> b!1780680 (= res!802599 (= (++!5339 (list!7977 (charsOf!2164 (_1!11009 (get!6027 lt!691905)))) (_2!11009 (get!6027 lt!691905))) lt!691858))))

(declare-fun b!1780681 () Bool)

(declare-fun e!1139623 () Option!4052)

(declare-fun call!111281 () Option!4052)

(assert (=> b!1780681 (= e!1139623 call!111281)))

(declare-fun b!1780682 () Bool)

(assert (=> b!1780682 (= e!1139624 (contains!3547 rules!3447 (rule!5587 (_1!11009 (get!6027 lt!691905)))))))

(declare-fun b!1780683 () Bool)

(declare-fun e!1139622 () Bool)

(assert (=> b!1780683 (= e!1139622 e!1139624)))

(declare-fun res!802595 () Bool)

(assert (=> b!1780683 (=> (not res!802595) (not e!1139624))))

(assert (=> b!1780683 (= res!802595 (isDefined!3396 lt!691905))))

(declare-fun b!1780684 () Bool)

(declare-fun res!802597 () Bool)

(assert (=> b!1780684 (=> (not res!802597) (not e!1139624))))

(assert (=> b!1780684 (= res!802597 (= (value!109850 (_1!11009 (get!6027 lt!691905))) (apply!5315 (transformation!3515 (rule!5587 (_1!11009 (get!6027 lt!691905)))) (seqFromList!2484 (originalCharacters!4329 (_1!11009 (get!6027 lt!691905)))))))))

(declare-fun b!1780685 () Bool)

(declare-fun res!802594 () Bool)

(assert (=> b!1780685 (=> (not res!802594) (not e!1139624))))

(assert (=> b!1780685 (= res!802594 (matchR!2316 (regex!3515 (rule!5587 (_1!11009 (get!6027 lt!691905)))) (list!7977 (charsOf!2164 (_1!11009 (get!6027 lt!691905))))))))

(declare-fun b!1780686 () Bool)

(declare-fun lt!691906 () Option!4052)

(declare-fun lt!691908 () Option!4052)

(assert (=> b!1780686 (= e!1139623 (ite (and ((_ is None!4051) lt!691906) ((_ is None!4051) lt!691908)) None!4051 (ite ((_ is None!4051) lt!691908) lt!691906 (ite ((_ is None!4051) lt!691906) lt!691908 (ite (>= (size!15588 (_1!11009 (v!25540 lt!691906))) (size!15588 (_1!11009 (v!25540 lt!691908)))) lt!691906 lt!691908)))))))

(assert (=> b!1780686 (= lt!691906 call!111281)))

(assert (=> b!1780686 (= lt!691908 (maxPrefix!1698 thiss!24550 (t!166504 rules!3447) lt!691858))))

(declare-fun bm!111276 () Bool)

(assert (=> bm!111276 (= call!111281 (maxPrefixOneRule!1067 thiss!24550 (h!25024 rules!3447) lt!691858))))

(declare-fun b!1780687 () Bool)

(declare-fun res!802598 () Bool)

(assert (=> b!1780687 (=> (not res!802598) (not e!1139624))))

(assert (=> b!1780687 (= res!802598 (= (list!7977 (charsOf!2164 (_1!11009 (get!6027 lt!691905)))) (originalCharacters!4329 (_1!11009 (get!6027 lt!691905)))))))

(declare-fun d!543674 () Bool)

(assert (=> d!543674 e!1139622))

(declare-fun res!802596 () Bool)

(assert (=> d!543674 (=> res!802596 e!1139622)))

(assert (=> d!543674 (= res!802596 (isEmpty!12400 lt!691905))))

(assert (=> d!543674 (= lt!691905 e!1139623)))

(declare-fun c!289701 () Bool)

(assert (=> d!543674 (= c!289701 (and ((_ is Cons!19623) rules!3447) ((_ is Nil!19623) (t!166504 rules!3447))))))

(declare-fun lt!691909 () Unit!33910)

(declare-fun lt!691907 () Unit!33910)

(assert (=> d!543674 (= lt!691909 lt!691907)))

(assert (=> d!543674 (isPrefix!1755 lt!691858 lt!691858)))

(declare-fun lemmaIsPrefixRefl!1157 (List!19692 List!19692) Unit!33910)

(assert (=> d!543674 (= lt!691907 (lemmaIsPrefixRefl!1157 lt!691858 lt!691858))))

(declare-fun rulesValidInductive!1193 (LexerInterface!3144 List!19693) Bool)

(assert (=> d!543674 (rulesValidInductive!1193 thiss!24550 rules!3447)))

(assert (=> d!543674 (= (maxPrefix!1698 thiss!24550 rules!3447 lt!691858) lt!691905)))

(assert (= (and d!543674 c!289701) b!1780681))

(assert (= (and d!543674 (not c!289701)) b!1780686))

(assert (= (or b!1780681 b!1780686) bm!111276))

(assert (= (and d!543674 (not res!802596)) b!1780683))

(assert (= (and b!1780683 res!802595) b!1780687))

(assert (= (and b!1780687 res!802598) b!1780679))

(assert (= (and b!1780679 res!802600) b!1780680))

(assert (= (and b!1780680 res!802599) b!1780684))

(assert (= (and b!1780684 res!802597) b!1780685))

(assert (= (and b!1780685 res!802594) b!1780682))

(declare-fun m!2202713 () Bool)

(assert (=> b!1780680 m!2202713))

(declare-fun m!2202715 () Bool)

(assert (=> b!1780680 m!2202715))

(assert (=> b!1780680 m!2202715))

(declare-fun m!2202717 () Bool)

(assert (=> b!1780680 m!2202717))

(assert (=> b!1780680 m!2202717))

(declare-fun m!2202719 () Bool)

(assert (=> b!1780680 m!2202719))

(declare-fun m!2202721 () Bool)

(assert (=> d!543674 m!2202721))

(declare-fun m!2202723 () Bool)

(assert (=> d!543674 m!2202723))

(declare-fun m!2202725 () Bool)

(assert (=> d!543674 m!2202725))

(declare-fun m!2202727 () Bool)

(assert (=> d!543674 m!2202727))

(assert (=> b!1780679 m!2202713))

(declare-fun m!2202733 () Bool)

(assert (=> b!1780679 m!2202733))

(declare-fun m!2202735 () Bool)

(assert (=> b!1780679 m!2202735))

(assert (=> b!1780685 m!2202713))

(assert (=> b!1780685 m!2202715))

(assert (=> b!1780685 m!2202715))

(assert (=> b!1780685 m!2202717))

(assert (=> b!1780685 m!2202717))

(declare-fun m!2202739 () Bool)

(assert (=> b!1780685 m!2202739))

(assert (=> b!1780687 m!2202713))

(assert (=> b!1780687 m!2202715))

(assert (=> b!1780687 m!2202715))

(assert (=> b!1780687 m!2202717))

(assert (=> b!1780682 m!2202713))

(declare-fun m!2202741 () Bool)

(assert (=> b!1780682 m!2202741))

(declare-fun m!2202743 () Bool)

(assert (=> b!1780686 m!2202743))

(assert (=> b!1780684 m!2202713))

(declare-fun m!2202745 () Bool)

(assert (=> b!1780684 m!2202745))

(assert (=> b!1780684 m!2202745))

(declare-fun m!2202747 () Bool)

(assert (=> b!1780684 m!2202747))

(declare-fun m!2202749 () Bool)

(assert (=> b!1780683 m!2202749))

(declare-fun m!2202751 () Bool)

(assert (=> bm!111276 m!2202751))

(assert (=> b!1780520 d!543674))

(declare-fun d!543716 () Bool)

(declare-fun list!7979 (Conc!6527) List!19692)

(assert (=> d!543716 (= (list!7977 lt!691850) (list!7979 (c!289677 lt!691850)))))

(declare-fun bs!405145 () Bool)

(assert (= bs!405145 d!543716))

(declare-fun m!2202753 () Bool)

(assert (=> bs!405145 m!2202753))

(assert (=> b!1780520 d!543716))

(declare-fun d!543718 () Bool)

(declare-fun lt!691918 () BalanceConc!12998)

(assert (=> d!543718 (= (list!7977 lt!691918) (originalCharacters!4329 token!523))))

(assert (=> d!543718 (= lt!691918 (dynLambda!9631 (toChars!4901 (transformation!3515 (rule!5587 token!523))) (value!109850 token!523)))))

(assert (=> d!543718 (= (charsOf!2164 token!523) lt!691918)))

(declare-fun b_lambda!58281 () Bool)

(assert (=> (not b_lambda!58281) (not d!543718)))

(declare-fun t!166512 () Bool)

(declare-fun tb!108227 () Bool)

(assert (=> (and b!1780528 (= (toChars!4901 (transformation!3515 (h!25024 rules!3447))) (toChars!4901 (transformation!3515 (rule!5587 token!523)))) t!166512) tb!108227))

(declare-fun b!1780718 () Bool)

(declare-fun e!1139641 () Bool)

(declare-fun tp!504188 () Bool)

(assert (=> b!1780718 (= e!1139641 (and (inv!25538 (c!289677 (dynLambda!9631 (toChars!4901 (transformation!3515 (rule!5587 token!523))) (value!109850 token!523)))) tp!504188))))

(declare-fun result!130202 () Bool)

(assert (=> tb!108227 (= result!130202 (and (inv!25539 (dynLambda!9631 (toChars!4901 (transformation!3515 (rule!5587 token!523))) (value!109850 token!523))) e!1139641))))

(assert (= tb!108227 b!1780718))

(declare-fun m!2202767 () Bool)

(assert (=> b!1780718 m!2202767))

(declare-fun m!2202769 () Bool)

(assert (=> tb!108227 m!2202769))

(assert (=> d!543718 t!166512))

(declare-fun b_and!136493 () Bool)

(assert (= b_and!136475 (and (=> t!166512 result!130202) b_and!136493)))

(declare-fun t!166514 () Bool)

(declare-fun tb!108229 () Bool)

(assert (=> (and b!1780510 (= (toChars!4901 (transformation!3515 (rule!5587 token!523))) (toChars!4901 (transformation!3515 (rule!5587 token!523)))) t!166514) tb!108229))

(declare-fun result!130204 () Bool)

(assert (= result!130204 result!130202))

(assert (=> d!543718 t!166514))

(declare-fun b_and!136495 () Bool)

(assert (= b_and!136477 (and (=> t!166514 result!130204) b_and!136495)))

(declare-fun t!166516 () Bool)

(declare-fun tb!108231 () Bool)

(assert (=> (and b!1780522 (= (toChars!4901 (transformation!3515 rule!422)) (toChars!4901 (transformation!3515 (rule!5587 token!523)))) t!166516) tb!108231))

(declare-fun result!130206 () Bool)

(assert (= result!130206 result!130202))

(assert (=> d!543718 t!166516))

(declare-fun b_and!136497 () Bool)

(assert (= b_and!136479 (and (=> t!166516 result!130206) b_and!136497)))

(declare-fun m!2202771 () Bool)

(assert (=> d!543718 m!2202771))

(declare-fun m!2202773 () Bool)

(assert (=> d!543718 m!2202773))

(assert (=> b!1780520 d!543718))

(declare-fun d!543722 () Bool)

(declare-fun c!289718 () Bool)

(assert (=> d!543722 (= c!289718 (isEmpty!12398 lt!691857))))

(declare-fun e!1139646 () Bool)

(assert (=> d!543722 (= (prefixMatch!726 lt!691865 lt!691857) e!1139646)))

(declare-fun b!1780727 () Bool)

(declare-fun lostCause!599 (Regex!4843) Bool)

(assert (=> b!1780727 (= e!1139646 (not (lostCause!599 lt!691865)))))

(declare-fun b!1780728 () Bool)

(declare-fun derivativeStep!1258 (Regex!4843 C!9860) Regex!4843)

(declare-fun tail!2665 (List!19692) List!19692)

(assert (=> b!1780728 (= e!1139646 (prefixMatch!726 (derivativeStep!1258 lt!691865 (head!4160 lt!691857)) (tail!2665 lt!691857)))))

(assert (= (and d!543722 c!289718) b!1780727))

(assert (= (and d!543722 (not c!289718)) b!1780728))

(declare-fun m!2202795 () Bool)

(assert (=> d!543722 m!2202795))

(declare-fun m!2202797 () Bool)

(assert (=> b!1780727 m!2202797))

(declare-fun m!2202799 () Bool)

(assert (=> b!1780728 m!2202799))

(assert (=> b!1780728 m!2202799))

(declare-fun m!2202801 () Bool)

(assert (=> b!1780728 m!2202801))

(declare-fun m!2202803 () Bool)

(assert (=> b!1780728 m!2202803))

(assert (=> b!1780728 m!2202801))

(assert (=> b!1780728 m!2202803))

(declare-fun m!2202805 () Bool)

(assert (=> b!1780728 m!2202805))

(assert (=> b!1780503 d!543722))

(declare-fun b!1780754 () Bool)

(declare-fun lt!691933 () List!19692)

(declare-fun e!1139658 () Bool)

(assert (=> b!1780754 (= e!1139658 (or (not (= (Cons!19622 (head!4160 suffix!1421) Nil!19622) Nil!19622)) (= lt!691933 lt!691858)))))

(declare-fun d!543732 () Bool)

(assert (=> d!543732 e!1139658))

(declare-fun res!802620 () Bool)

(assert (=> d!543732 (=> (not res!802620) (not e!1139658))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2853 (List!19692) (InoxSet C!9860))

(assert (=> d!543732 (= res!802620 (= (content!2853 lt!691933) ((_ map or) (content!2853 lt!691858) (content!2853 (Cons!19622 (head!4160 suffix!1421) Nil!19622)))))))

(declare-fun e!1139659 () List!19692)

(assert (=> d!543732 (= lt!691933 e!1139659)))

(declare-fun c!289724 () Bool)

(assert (=> d!543732 (= c!289724 ((_ is Nil!19622) lt!691858))))

(assert (=> d!543732 (= (++!5339 lt!691858 (Cons!19622 (head!4160 suffix!1421) Nil!19622)) lt!691933)))

(declare-fun b!1780753 () Bool)

(declare-fun res!802619 () Bool)

(assert (=> b!1780753 (=> (not res!802619) (not e!1139658))))

(assert (=> b!1780753 (= res!802619 (= (size!15589 lt!691933) (+ (size!15589 lt!691858) (size!15589 (Cons!19622 (head!4160 suffix!1421) Nil!19622)))))))

(declare-fun b!1780752 () Bool)

(assert (=> b!1780752 (= e!1139659 (Cons!19622 (h!25023 lt!691858) (++!5339 (t!166503 lt!691858) (Cons!19622 (head!4160 suffix!1421) Nil!19622))))))

(declare-fun b!1780751 () Bool)

(assert (=> b!1780751 (= e!1139659 (Cons!19622 (head!4160 suffix!1421) Nil!19622))))

(assert (= (and d!543732 c!289724) b!1780751))

(assert (= (and d!543732 (not c!289724)) b!1780752))

(assert (= (and d!543732 res!802620) b!1780753))

(assert (= (and b!1780753 res!802619) b!1780754))

(declare-fun m!2202831 () Bool)

(assert (=> d!543732 m!2202831))

(declare-fun m!2202833 () Bool)

(assert (=> d!543732 m!2202833))

(declare-fun m!2202835 () Bool)

(assert (=> d!543732 m!2202835))

(declare-fun m!2202837 () Bool)

(assert (=> b!1780753 m!2202837))

(assert (=> b!1780753 m!2202735))

(declare-fun m!2202839 () Bool)

(assert (=> b!1780753 m!2202839))

(declare-fun m!2202841 () Bool)

(assert (=> b!1780752 m!2202841))

(assert (=> b!1780503 d!543732))

(declare-fun d!543744 () Bool)

(assert (=> d!543744 (= (head!4160 suffix!1421) (h!25023 suffix!1421))))

(assert (=> b!1780503 d!543744))

(declare-fun d!543746 () Bool)

(declare-fun lt!691943 () Unit!33910)

(declare-fun lemma!412 (List!19693 LexerInterface!3144 List!19693) Unit!33910)

(assert (=> d!543746 (= lt!691943 (lemma!412 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!70662 () Int)

(declare-datatypes ((List!19694 0))(
  ( (Nil!19624) (Cons!19624 (h!25025 Regex!4843) (t!166565 List!19694)) )
))
(declare-fun generalisedUnion!420 (List!19694) Regex!4843)

(declare-fun map!4049 (List!19693 Int) List!19694)

(assert (=> d!543746 (= (rulesRegex!871 thiss!24550 rules!3447) (generalisedUnion!420 (map!4049 rules!3447 lambda!70662)))))

(declare-fun bs!405151 () Bool)

(assert (= bs!405151 d!543746))

(declare-fun m!2202863 () Bool)

(assert (=> bs!405151 m!2202863))

(declare-fun m!2202865 () Bool)

(assert (=> bs!405151 m!2202865))

(assert (=> bs!405151 m!2202865))

(declare-fun m!2202867 () Bool)

(assert (=> bs!405151 m!2202867))

(assert (=> b!1780503 d!543746))

(declare-fun d!543754 () Bool)

(assert (=> d!543754 (= (inv!25531 (tag!3909 rule!422)) (= (mod (str.len (value!109849 (tag!3909 rule!422))) 2) 0))))

(assert (=> b!1780502 d!543754))

(declare-fun d!543758 () Bool)

(declare-fun res!802641 () Bool)

(declare-fun e!1139679 () Bool)

(assert (=> d!543758 (=> (not res!802641) (not e!1139679))))

(declare-fun semiInverseModEq!1403 (Int Int) Bool)

(assert (=> d!543758 (= res!802641 (semiInverseModEq!1403 (toChars!4901 (transformation!3515 rule!422)) (toValue!5042 (transformation!3515 rule!422))))))

(assert (=> d!543758 (= (inv!25536 (transformation!3515 rule!422)) e!1139679)))

(declare-fun b!1780783 () Bool)

(declare-fun equivClasses!1344 (Int Int) Bool)

(assert (=> b!1780783 (= e!1139679 (equivClasses!1344 (toChars!4901 (transformation!3515 rule!422)) (toValue!5042 (transformation!3515 rule!422))))))

(assert (= (and d!543758 res!802641) b!1780783))

(declare-fun m!2202881 () Bool)

(assert (=> d!543758 m!2202881))

(declare-fun m!2202883 () Bool)

(assert (=> b!1780783 m!2202883))

(assert (=> b!1780502 d!543758))

(declare-fun d!543762 () Bool)

(assert (=> d!543762 (= (inv!25531 (tag!3909 (h!25024 rules!3447))) (= (mod (str.len (value!109849 (tag!3909 (h!25024 rules!3447)))) 2) 0))))

(assert (=> b!1780523 d!543762))

(declare-fun d!543764 () Bool)

(declare-fun res!802642 () Bool)

(declare-fun e!1139680 () Bool)

(assert (=> d!543764 (=> (not res!802642) (not e!1139680))))

(assert (=> d!543764 (= res!802642 (semiInverseModEq!1403 (toChars!4901 (transformation!3515 (h!25024 rules!3447))) (toValue!5042 (transformation!3515 (h!25024 rules!3447)))))))

(assert (=> d!543764 (= (inv!25536 (transformation!3515 (h!25024 rules!3447))) e!1139680)))

(declare-fun b!1780784 () Bool)

(assert (=> b!1780784 (= e!1139680 (equivClasses!1344 (toChars!4901 (transformation!3515 (h!25024 rules!3447))) (toValue!5042 (transformation!3515 (h!25024 rules!3447)))))))

(assert (= (and d!543764 res!802642) b!1780784))

(declare-fun m!2202895 () Bool)

(assert (=> d!543764 m!2202895))

(declare-fun m!2202897 () Bool)

(assert (=> b!1780784 m!2202897))

(assert (=> b!1780523 d!543764))

(declare-fun d!543768 () Bool)

(assert (=> d!543768 (not (matchR!2316 (regex!3515 rule!422) lt!691858))))

(declare-fun lt!691956 () Unit!33910)

(declare-fun choose!11163 (LexerInterface!3144 List!19693 Rule!6830 List!19692 List!19692 List!19692 Rule!6830) Unit!33910)

(assert (=> d!543768 (= lt!691956 (choose!11163 thiss!24550 rules!3447 (rule!5587 (_1!11009 lt!691836)) lt!691872 lt!691873 lt!691858 rule!422))))

(assert (=> d!543768 (isPrefix!1755 lt!691872 lt!691873)))

(assert (=> d!543768 (= (lemmaMaxPrefixOutputsMaxPrefix!224 thiss!24550 rules!3447 (rule!5587 (_1!11009 lt!691836)) lt!691872 lt!691873 lt!691858 rule!422) lt!691956)))

(declare-fun bs!405155 () Bool)

(assert (= bs!405155 d!543768))

(assert (=> bs!405155 m!2202501))

(declare-fun m!2202905 () Bool)

(assert (=> bs!405155 m!2202905))

(assert (=> bs!405155 m!2202559))

(assert (=> b!1780516 d!543768))

(declare-fun d!543774 () Bool)

(assert (=> d!543774 (= (get!6027 lt!691859) (v!25540 lt!691859))))

(assert (=> b!1780537 d!543774))

(declare-fun b!1780823 () Bool)

(declare-fun e!1139701 () Bool)

(declare-fun inv!15 (TokenValue!3605) Bool)

(assert (=> b!1780823 (= e!1139701 (inv!15 (dynLambda!9632 (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) lt!691868)))))

(declare-fun d!543776 () Bool)

(declare-fun c!289739 () Bool)

(assert (=> d!543776 (= c!289739 ((_ is IntegerValue!10815) (dynLambda!9632 (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) lt!691868)))))

(declare-fun e!1139703 () Bool)

(assert (=> d!543776 (= (inv!21 (dynLambda!9632 (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) lt!691868)) e!1139703)))

(declare-fun b!1780824 () Bool)

(declare-fun res!802661 () Bool)

(assert (=> b!1780824 (=> res!802661 e!1139701)))

(assert (=> b!1780824 (= res!802661 (not ((_ is IntegerValue!10817) (dynLambda!9632 (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) lt!691868))))))

(declare-fun e!1139702 () Bool)

(assert (=> b!1780824 (= e!1139702 e!1139701)))

(declare-fun b!1780825 () Bool)

(declare-fun inv!16 (TokenValue!3605) Bool)

(assert (=> b!1780825 (= e!1139703 (inv!16 (dynLambda!9632 (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) lt!691868)))))

(declare-fun b!1780826 () Bool)

(assert (=> b!1780826 (= e!1139703 e!1139702)))

(declare-fun c!289740 () Bool)

(assert (=> b!1780826 (= c!289740 ((_ is IntegerValue!10816) (dynLambda!9632 (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) lt!691868)))))

(declare-fun b!1780827 () Bool)

(declare-fun inv!17 (TokenValue!3605) Bool)

(assert (=> b!1780827 (= e!1139702 (inv!17 (dynLambda!9632 (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) lt!691868)))))

(assert (= (and d!543776 c!289739) b!1780825))

(assert (= (and d!543776 (not c!289739)) b!1780826))

(assert (= (and b!1780826 c!289740) b!1780827))

(assert (= (and b!1780826 (not c!289740)) b!1780824))

(assert (= (and b!1780824 (not res!802661)) b!1780823))

(declare-fun m!2202925 () Bool)

(assert (=> b!1780823 m!2202925))

(declare-fun m!2202927 () Bool)

(assert (=> b!1780825 m!2202927))

(declare-fun m!2202929 () Bool)

(assert (=> b!1780827 m!2202929))

(assert (=> tb!108209 d!543776))

(declare-fun d!543784 () Bool)

(declare-fun choose!11165 (Int) Bool)

(assert (=> d!543784 (= (Forall!882 lambda!70656) (choose!11165 lambda!70656))))

(declare-fun bs!405157 () Bool)

(assert (= bs!405157 d!543784))

(declare-fun m!2202933 () Bool)

(assert (=> bs!405157 m!2202933))

(assert (=> b!1780515 d!543784))

(declare-fun d!543786 () Bool)

(declare-fun e!1139706 () Bool)

(assert (=> d!543786 e!1139706))

(declare-fun res!802664 () Bool)

(assert (=> d!543786 (=> (not res!802664) (not e!1139706))))

(assert (=> d!543786 (= res!802664 (semiInverseModEq!1403 (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836))))))))

(declare-fun Unit!33916 () Unit!33910)

(assert (=> d!543786 (= (lemmaInv!714 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) Unit!33916)))

(declare-fun b!1780830 () Bool)

(assert (=> b!1780830 (= e!1139706 (equivClasses!1344 (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836))))))))

(assert (= (and d!543786 res!802664) b!1780830))

(declare-fun m!2202937 () Bool)

(assert (=> d!543786 m!2202937))

(declare-fun m!2202939 () Bool)

(assert (=> b!1780830 m!2202939))

(assert (=> b!1780515 d!543786))

(declare-fun d!543792 () Bool)

(declare-fun c!289743 () Bool)

(assert (=> d!543792 (= c!289743 ((_ is Node!6527) (c!289677 (dynLambda!9631 (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) (value!109850 (_1!11009 lt!691836))))))))

(declare-fun e!1139711 () Bool)

(assert (=> d!543792 (= (inv!25538 (c!289677 (dynLambda!9631 (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) (value!109850 (_1!11009 lt!691836))))) e!1139711)))

(declare-fun b!1780837 () Bool)

(declare-fun inv!25541 (Conc!6527) Bool)

(assert (=> b!1780837 (= e!1139711 (inv!25541 (c!289677 (dynLambda!9631 (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) (value!109850 (_1!11009 lt!691836))))))))

(declare-fun b!1780838 () Bool)

(declare-fun e!1139712 () Bool)

(assert (=> b!1780838 (= e!1139711 e!1139712)))

(declare-fun res!802667 () Bool)

(assert (=> b!1780838 (= res!802667 (not ((_ is Leaf!9505) (c!289677 (dynLambda!9631 (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) (value!109850 (_1!11009 lt!691836)))))))))

(assert (=> b!1780838 (=> res!802667 e!1139712)))

(declare-fun b!1780839 () Bool)

(declare-fun inv!25542 (Conc!6527) Bool)

(assert (=> b!1780839 (= e!1139712 (inv!25542 (c!289677 (dynLambda!9631 (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) (value!109850 (_1!11009 lt!691836))))))))

(assert (= (and d!543792 c!289743) b!1780837))

(assert (= (and d!543792 (not c!289743)) b!1780838))

(assert (= (and b!1780838 (not res!802667)) b!1780839))

(declare-fun m!2202941 () Bool)

(assert (=> b!1780837 m!2202941))

(declare-fun m!2202943 () Bool)

(assert (=> b!1780839 m!2202943))

(assert (=> b!1780556 d!543792))

(declare-fun d!543794 () Bool)

(declare-fun lt!691963 () Int)

(assert (=> d!543794 (= lt!691963 (size!15589 (list!7977 lt!691850)))))

(declare-fun size!15591 (Conc!6527) Int)

(assert (=> d!543794 (= lt!691963 (size!15591 (c!289677 lt!691850)))))

(assert (=> d!543794 (= (size!15590 lt!691850) lt!691963)))

(declare-fun bs!405160 () Bool)

(assert (= bs!405160 d!543794))

(assert (=> bs!405160 m!2202539))

(assert (=> bs!405160 m!2202539))

(declare-fun m!2202945 () Bool)

(assert (=> bs!405160 m!2202945))

(declare-fun m!2202947 () Bool)

(assert (=> bs!405160 m!2202947))

(assert (=> b!1780536 d!543794))

(declare-fun b!1780868 () Bool)

(declare-fun e!1139729 () Bool)

(declare-fun e!1139728 () Bool)

(assert (=> b!1780868 (= e!1139729 e!1139728)))

(declare-fun res!802688 () Bool)

(assert (=> b!1780868 (=> (not res!802688) (not e!1139728))))

(declare-fun lt!691966 () Bool)

(assert (=> b!1780868 (= res!802688 (not lt!691966))))

(declare-fun b!1780869 () Bool)

(declare-fun e!1139730 () Bool)

(assert (=> b!1780869 (= e!1139730 (not lt!691966))))

(declare-fun b!1780870 () Bool)

(declare-fun e!1139731 () Bool)

(assert (=> b!1780870 (= e!1139731 (= (head!4160 lt!691858) (c!289676 lt!691865)))))

(declare-fun b!1780871 () Bool)

(declare-fun res!802690 () Bool)

(assert (=> b!1780871 (=> (not res!802690) (not e!1139731))))

(assert (=> b!1780871 (= res!802690 (isEmpty!12398 (tail!2665 lt!691858)))))

(declare-fun b!1780872 () Bool)

(declare-fun e!1139733 () Bool)

(assert (=> b!1780872 (= e!1139733 e!1139730)))

(declare-fun c!289752 () Bool)

(assert (=> b!1780872 (= c!289752 ((_ is EmptyLang!4843) lt!691865))))

(declare-fun b!1780873 () Bool)

(declare-fun res!802687 () Bool)

(assert (=> b!1780873 (=> res!802687 e!1139729)))

(assert (=> b!1780873 (= res!802687 (not ((_ is ElementMatch!4843) lt!691865)))))

(assert (=> b!1780873 (= e!1139730 e!1139729)))

(declare-fun b!1780874 () Bool)

(declare-fun call!111287 () Bool)

(assert (=> b!1780874 (= e!1139733 (= lt!691966 call!111287))))

(declare-fun b!1780876 () Bool)

(declare-fun res!802685 () Bool)

(assert (=> b!1780876 (=> res!802685 e!1139729)))

(assert (=> b!1780876 (= res!802685 e!1139731)))

(declare-fun res!802686 () Bool)

(assert (=> b!1780876 (=> (not res!802686) (not e!1139731))))

(assert (=> b!1780876 (= res!802686 lt!691966)))

(declare-fun b!1780877 () Bool)

(declare-fun res!802689 () Bool)

(declare-fun e!1139727 () Bool)

(assert (=> b!1780877 (=> res!802689 e!1139727)))

(assert (=> b!1780877 (= res!802689 (not (isEmpty!12398 (tail!2665 lt!691858))))))

(declare-fun bm!111282 () Bool)

(assert (=> bm!111282 (= call!111287 (isEmpty!12398 lt!691858))))

(declare-fun b!1780878 () Bool)

(declare-fun res!802691 () Bool)

(assert (=> b!1780878 (=> (not res!802691) (not e!1139731))))

(assert (=> b!1780878 (= res!802691 (not call!111287))))

(declare-fun b!1780879 () Bool)

(assert (=> b!1780879 (= e!1139728 e!1139727)))

(declare-fun res!802684 () Bool)

(assert (=> b!1780879 (=> res!802684 e!1139727)))

(assert (=> b!1780879 (= res!802684 call!111287)))

(declare-fun b!1780875 () Bool)

(assert (=> b!1780875 (= e!1139727 (not (= (head!4160 lt!691858) (c!289676 lt!691865))))))

(declare-fun d!543796 () Bool)

(assert (=> d!543796 e!1139733))

(declare-fun c!289750 () Bool)

(assert (=> d!543796 (= c!289750 ((_ is EmptyExpr!4843) lt!691865))))

(declare-fun e!1139732 () Bool)

(assert (=> d!543796 (= lt!691966 e!1139732)))

(declare-fun c!289751 () Bool)

(assert (=> d!543796 (= c!289751 (isEmpty!12398 lt!691858))))

(declare-fun validRegex!1963 (Regex!4843) Bool)

(assert (=> d!543796 (validRegex!1963 lt!691865)))

(assert (=> d!543796 (= (matchR!2316 lt!691865 lt!691858) lt!691966)))

(declare-fun b!1780880 () Bool)

(assert (=> b!1780880 (= e!1139732 (matchR!2316 (derivativeStep!1258 lt!691865 (head!4160 lt!691858)) (tail!2665 lt!691858)))))

(declare-fun b!1780881 () Bool)

(declare-fun nullable!1489 (Regex!4843) Bool)

(assert (=> b!1780881 (= e!1139732 (nullable!1489 lt!691865))))

(assert (= (and d!543796 c!289751) b!1780881))

(assert (= (and d!543796 (not c!289751)) b!1780880))

(assert (= (and d!543796 c!289750) b!1780874))

(assert (= (and d!543796 (not c!289750)) b!1780872))

(assert (= (and b!1780872 c!289752) b!1780869))

(assert (= (and b!1780872 (not c!289752)) b!1780873))

(assert (= (and b!1780873 (not res!802687)) b!1780876))

(assert (= (and b!1780876 res!802686) b!1780878))

(assert (= (and b!1780878 res!802691) b!1780871))

(assert (= (and b!1780871 res!802690) b!1780870))

(assert (= (and b!1780876 (not res!802685)) b!1780868))

(assert (= (and b!1780868 res!802688) b!1780879))

(assert (= (and b!1780879 (not res!802684)) b!1780877))

(assert (= (and b!1780877 (not res!802689)) b!1780875))

(assert (= (or b!1780874 b!1780878 b!1780879) bm!111282))

(declare-fun m!2202949 () Bool)

(assert (=> b!1780875 m!2202949))

(declare-fun m!2202951 () Bool)

(assert (=> b!1780877 m!2202951))

(assert (=> b!1780877 m!2202951))

(declare-fun m!2202953 () Bool)

(assert (=> b!1780877 m!2202953))

(declare-fun m!2202955 () Bool)

(assert (=> d!543796 m!2202955))

(declare-fun m!2202957 () Bool)

(assert (=> d!543796 m!2202957))

(declare-fun m!2202959 () Bool)

(assert (=> b!1780881 m!2202959))

(assert (=> bm!111282 m!2202955))

(assert (=> b!1780871 m!2202951))

(assert (=> b!1780871 m!2202951))

(assert (=> b!1780871 m!2202953))

(assert (=> b!1780870 m!2202949))

(assert (=> b!1780880 m!2202949))

(assert (=> b!1780880 m!2202949))

(declare-fun m!2202961 () Bool)

(assert (=> b!1780880 m!2202961))

(assert (=> b!1780880 m!2202951))

(assert (=> b!1780880 m!2202961))

(assert (=> b!1780880 m!2202951))

(declare-fun m!2202963 () Bool)

(assert (=> b!1780880 m!2202963))

(assert (=> b!1780536 d!543796))

(declare-fun d!543798 () Bool)

(assert (=> d!543798 (matchR!2316 (rulesRegex!871 thiss!24550 rules!3447) (list!7977 (charsOf!2164 token!523)))))

(declare-fun lt!691969 () Unit!33910)

(declare-fun choose!11167 (LexerInterface!3144 List!19693 List!19692 Token!6596 Rule!6830 List!19692) Unit!33910)

(assert (=> d!543798 (= lt!691969 (choose!11167 thiss!24550 rules!3447 lt!691858 token!523 rule!422 Nil!19622))))

(assert (=> d!543798 (not (isEmpty!12399 rules!3447))))

(assert (=> d!543798 (= (lemmaMaxPrefixThenMatchesRulesRegex!222 thiss!24550 rules!3447 lt!691858 token!523 rule!422 Nil!19622) lt!691969)))

(declare-fun bs!405161 () Bool)

(assert (= bs!405161 d!543798))

(assert (=> bs!405161 m!2202495))

(assert (=> bs!405161 m!2202541))

(declare-fun m!2202965 () Bool)

(assert (=> bs!405161 m!2202965))

(assert (=> bs!405161 m!2202629))

(assert (=> bs!405161 m!2202629))

(assert (=> bs!405161 m!2202965))

(declare-fun m!2202967 () Bool)

(assert (=> bs!405161 m!2202967))

(declare-fun m!2202969 () Bool)

(assert (=> bs!405161 m!2202969))

(assert (=> bs!405161 m!2202541))

(assert (=> b!1780536 d!543798))

(declare-fun d!543800 () Bool)

(assert (=> d!543800 (isPrefix!1755 lt!691858 (++!5339 lt!691858 suffix!1421))))

(declare-fun lt!691972 () Unit!33910)

(declare-fun choose!11168 (List!19692 List!19692) Unit!33910)

(assert (=> d!543800 (= lt!691972 (choose!11168 lt!691858 suffix!1421))))

(assert (=> d!543800 (= (lemmaConcatTwoListThenFirstIsPrefix!1264 lt!691858 suffix!1421) lt!691972)))

(declare-fun bs!405162 () Bool)

(assert (= bs!405162 d!543800))

(assert (=> bs!405162 m!2202553))

(assert (=> bs!405162 m!2202553))

(declare-fun m!2202971 () Bool)

(assert (=> bs!405162 m!2202971))

(declare-fun m!2202973 () Bool)

(assert (=> bs!405162 m!2202973))

(assert (=> b!1780519 d!543800))

(declare-fun b!1780885 () Bool)

(declare-fun lt!691973 () List!19692)

(declare-fun e!1139734 () Bool)

(assert (=> b!1780885 (= e!1139734 (or (not (= (_2!11009 lt!691836) Nil!19622)) (= lt!691973 lt!691872)))))

(declare-fun d!543802 () Bool)

(assert (=> d!543802 e!1139734))

(declare-fun res!802693 () Bool)

(assert (=> d!543802 (=> (not res!802693) (not e!1139734))))

(assert (=> d!543802 (= res!802693 (= (content!2853 lt!691973) ((_ map or) (content!2853 lt!691872) (content!2853 (_2!11009 lt!691836)))))))

(declare-fun e!1139735 () List!19692)

(assert (=> d!543802 (= lt!691973 e!1139735)))

(declare-fun c!289753 () Bool)

(assert (=> d!543802 (= c!289753 ((_ is Nil!19622) lt!691872))))

(assert (=> d!543802 (= (++!5339 lt!691872 (_2!11009 lt!691836)) lt!691973)))

(declare-fun b!1780884 () Bool)

(declare-fun res!802692 () Bool)

(assert (=> b!1780884 (=> (not res!802692) (not e!1139734))))

(assert (=> b!1780884 (= res!802692 (= (size!15589 lt!691973) (+ (size!15589 lt!691872) (size!15589 (_2!11009 lt!691836)))))))

(declare-fun b!1780883 () Bool)

(assert (=> b!1780883 (= e!1139735 (Cons!19622 (h!25023 lt!691872) (++!5339 (t!166503 lt!691872) (_2!11009 lt!691836))))))

(declare-fun b!1780882 () Bool)

(assert (=> b!1780882 (= e!1139735 (_2!11009 lt!691836))))

(assert (= (and d!543802 c!289753) b!1780882))

(assert (= (and d!543802 (not c!289753)) b!1780883))

(assert (= (and d!543802 res!802693) b!1780884))

(assert (= (and b!1780884 res!802692) b!1780885))

(declare-fun m!2202975 () Bool)

(assert (=> d!543802 m!2202975))

(declare-fun m!2202977 () Bool)

(assert (=> d!543802 m!2202977))

(declare-fun m!2202979 () Bool)

(assert (=> d!543802 m!2202979))

(declare-fun m!2202981 () Bool)

(assert (=> b!1780884 m!2202981))

(assert (=> b!1780884 m!2202587))

(declare-fun m!2202983 () Bool)

(assert (=> b!1780884 m!2202983))

(declare-fun m!2202985 () Bool)

(assert (=> b!1780883 m!2202985))

(assert (=> b!1780519 d!543802))

(declare-fun d!543804 () Bool)

(assert (=> d!543804 (= (list!7977 lt!691868) (list!7979 (c!289677 lt!691868)))))

(declare-fun bs!405163 () Bool)

(assert (= bs!405163 d!543804))

(declare-fun m!2202987 () Bool)

(assert (=> bs!405163 m!2202987))

(assert (=> b!1780519 d!543804))

(declare-fun d!543806 () Bool)

(assert (=> d!543806 (isPrefix!1755 lt!691872 (++!5339 lt!691872 (_2!11009 lt!691836)))))

(declare-fun lt!691974 () Unit!33910)

(assert (=> d!543806 (= lt!691974 (choose!11168 lt!691872 (_2!11009 lt!691836)))))

(assert (=> d!543806 (= (lemmaConcatTwoListThenFirstIsPrefix!1264 lt!691872 (_2!11009 lt!691836)) lt!691974)))

(declare-fun bs!405164 () Bool)

(assert (= bs!405164 d!543806))

(assert (=> bs!405164 m!2202551))

(assert (=> bs!405164 m!2202551))

(assert (=> bs!405164 m!2202573))

(declare-fun m!2202989 () Bool)

(assert (=> bs!405164 m!2202989))

(assert (=> b!1780519 d!543806))

(declare-fun d!543808 () Bool)

(assert (=> d!543808 (= (get!6027 lt!691851) (v!25540 lt!691851))))

(assert (=> b!1780519 d!543808))

(declare-fun b!1780896 () Bool)

(declare-fun e!1139744 () Bool)

(assert (=> b!1780896 (= e!1139744 (isPrefix!1755 (tail!2665 lt!691872) (tail!2665 lt!691873)))))

(declare-fun d!543810 () Bool)

(declare-fun e!1139743 () Bool)

(assert (=> d!543810 e!1139743))

(declare-fun res!802704 () Bool)

(assert (=> d!543810 (=> res!802704 e!1139743)))

(declare-fun lt!691977 () Bool)

(assert (=> d!543810 (= res!802704 (not lt!691977))))

(declare-fun e!1139742 () Bool)

(assert (=> d!543810 (= lt!691977 e!1139742)))

(declare-fun res!802702 () Bool)

(assert (=> d!543810 (=> res!802702 e!1139742)))

(assert (=> d!543810 (= res!802702 ((_ is Nil!19622) lt!691872))))

(assert (=> d!543810 (= (isPrefix!1755 lt!691872 lt!691873) lt!691977)))

(declare-fun b!1780897 () Bool)

(assert (=> b!1780897 (= e!1139743 (>= (size!15589 lt!691873) (size!15589 lt!691872)))))

(declare-fun b!1780894 () Bool)

(assert (=> b!1780894 (= e!1139742 e!1139744)))

(declare-fun res!802703 () Bool)

(assert (=> b!1780894 (=> (not res!802703) (not e!1139744))))

(assert (=> b!1780894 (= res!802703 (not ((_ is Nil!19622) lt!691873)))))

(declare-fun b!1780895 () Bool)

(declare-fun res!802705 () Bool)

(assert (=> b!1780895 (=> (not res!802705) (not e!1139744))))

(assert (=> b!1780895 (= res!802705 (= (head!4160 lt!691872) (head!4160 lt!691873)))))

(assert (= (and d!543810 (not res!802702)) b!1780894))

(assert (= (and b!1780894 res!802703) b!1780895))

(assert (= (and b!1780895 res!802705) b!1780896))

(assert (= (and d!543810 (not res!802704)) b!1780897))

(declare-fun m!2202991 () Bool)

(assert (=> b!1780896 m!2202991))

(declare-fun m!2202993 () Bool)

(assert (=> b!1780896 m!2202993))

(assert (=> b!1780896 m!2202991))

(assert (=> b!1780896 m!2202993))

(declare-fun m!2202995 () Bool)

(assert (=> b!1780896 m!2202995))

(declare-fun m!2202997 () Bool)

(assert (=> b!1780897 m!2202997))

(assert (=> b!1780897 m!2202587))

(declare-fun m!2202999 () Bool)

(assert (=> b!1780895 m!2202999))

(declare-fun m!2203001 () Bool)

(assert (=> b!1780895 m!2203001))

(assert (=> b!1780519 d!543810))

(declare-fun d!543812 () Bool)

(declare-fun lt!691978 () BalanceConc!12998)

(assert (=> d!543812 (= (list!7977 lt!691978) (originalCharacters!4329 (_1!11009 lt!691836)))))

(assert (=> d!543812 (= lt!691978 (dynLambda!9631 (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) (value!109850 (_1!11009 lt!691836))))))

(assert (=> d!543812 (= (charsOf!2164 (_1!11009 lt!691836)) lt!691978)))

(declare-fun b_lambda!58283 () Bool)

(assert (=> (not b_lambda!58283) (not d!543812)))

(assert (=> d!543812 t!166497))

(declare-fun b_and!136499 () Bool)

(assert (= b_and!136493 (and (=> t!166497 result!130190) b_and!136499)))

(assert (=> d!543812 t!166499))

(declare-fun b_and!136501 () Bool)

(assert (= b_and!136495 (and (=> t!166499 result!130192) b_and!136501)))

(assert (=> d!543812 t!166501))

(declare-fun b_and!136503 () Bool)

(assert (= b_and!136497 (and (=> t!166501 result!130194) b_and!136503)))

(declare-fun m!2203003 () Bool)

(assert (=> d!543812 m!2203003))

(assert (=> d!543812 m!2202517))

(assert (=> b!1780519 d!543812))

(declare-fun d!543814 () Bool)

(assert (=> d!543814 (isDefined!3396 (maxPrefix!1698 thiss!24550 rules!3447 (++!5339 lt!691858 suffix!1421)))))

(declare-fun lt!692088 () Unit!33910)

(declare-fun e!1139806 () Unit!33910)

(assert (=> d!543814 (= lt!692088 e!1139806)))

(declare-fun c!289774 () Bool)

(assert (=> d!543814 (= c!289774 (isEmpty!12400 (maxPrefix!1698 thiss!24550 rules!3447 (++!5339 lt!691858 suffix!1421))))))

(declare-fun lt!692079 () Unit!33910)

(declare-fun lt!692082 () Unit!33910)

(assert (=> d!543814 (= lt!692079 lt!692082)))

(declare-fun e!1139805 () Bool)

(assert (=> d!543814 e!1139805))

(declare-fun res!802776 () Bool)

(assert (=> d!543814 (=> (not res!802776) (not e!1139805))))

(declare-fun lt!692084 () Token!6596)

(assert (=> d!543814 (= res!802776 (isDefined!3395 (getRuleFromTag!563 thiss!24550 rules!3447 (tag!3909 (rule!5587 lt!692084)))))))

(assert (=> d!543814 (= lt!692082 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!563 thiss!24550 rules!3447 lt!691858 lt!692084))))

(declare-fun lt!692087 () Unit!33910)

(declare-fun lt!692074 () Unit!33910)

(assert (=> d!543814 (= lt!692087 lt!692074)))

(declare-fun lt!692081 () List!19692)

(assert (=> d!543814 (isPrefix!1755 lt!692081 (++!5339 lt!691858 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!338 (List!19692 List!19692 List!19692) Unit!33910)

(assert (=> d!543814 (= lt!692074 (lemmaPrefixStaysPrefixWhenAddingToSuffix!338 lt!692081 lt!691858 suffix!1421))))

(assert (=> d!543814 (= lt!692081 (list!7977 (charsOf!2164 lt!692084)))))

(declare-fun lt!692075 () Unit!33910)

(declare-fun lt!692078 () Unit!33910)

(assert (=> d!543814 (= lt!692075 lt!692078)))

(declare-fun lt!692086 () List!19692)

(declare-fun lt!692083 () List!19692)

(assert (=> d!543814 (isPrefix!1755 lt!692086 (++!5339 lt!692086 lt!692083))))

(assert (=> d!543814 (= lt!692078 (lemmaConcatTwoListThenFirstIsPrefix!1264 lt!692086 lt!692083))))

(assert (=> d!543814 (= lt!692083 (_2!11009 (get!6027 (maxPrefix!1698 thiss!24550 rules!3447 lt!691858))))))

(assert (=> d!543814 (= lt!692086 (list!7977 (charsOf!2164 lt!692084)))))

(declare-datatypes ((List!19696 0))(
  ( (Nil!19626) (Cons!19626 (h!25027 Token!6596) (t!166567 List!19696)) )
))
(declare-fun head!4161 (List!19696) Token!6596)

(declare-datatypes ((IArray!13061 0))(
  ( (IArray!13062 (innerList!6588 List!19696)) )
))
(declare-datatypes ((Conc!6528 0))(
  ( (Node!6528 (left!15727 Conc!6528) (right!16057 Conc!6528) (csize!13286 Int) (cheight!6739 Int)) (Leaf!9506 (xs!9404 IArray!13061) (csize!13287 Int)) (Empty!6528) )
))
(declare-datatypes ((BalanceConc!13000 0))(
  ( (BalanceConc!13001 (c!289826 Conc!6528)) )
))
(declare-fun list!7980 (BalanceConc!13000) List!19696)

(declare-datatypes ((tuple2!19216 0))(
  ( (tuple2!19217 (_1!11010 BalanceConc!13000) (_2!11010 BalanceConc!12998)) )
))
(declare-fun lex!1477 (LexerInterface!3144 List!19693 BalanceConc!12998) tuple2!19216)

(assert (=> d!543814 (= lt!692084 (head!4161 (list!7980 (_1!11010 (lex!1477 thiss!24550 rules!3447 (seqFromList!2484 lt!691858))))))))

(assert (=> d!543814 (not (isEmpty!12399 rules!3447))))

(assert (=> d!543814 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!666 thiss!24550 rules!3447 lt!691858 suffix!1421) lt!692088)))

(declare-fun b!1781010 () Bool)

(declare-fun res!802775 () Bool)

(assert (=> b!1781010 (=> (not res!802775) (not e!1139805))))

(assert (=> b!1781010 (= res!802775 (matchR!2316 (regex!3515 (get!6028 (getRuleFromTag!563 thiss!24550 rules!3447 (tag!3909 (rule!5587 lt!692084))))) (list!7977 (charsOf!2164 lt!692084))))))

(declare-fun b!1781011 () Bool)

(assert (=> b!1781011 (= e!1139805 (= (rule!5587 lt!692084) (get!6028 (getRuleFromTag!563 thiss!24550 rules!3447 (tag!3909 (rule!5587 lt!692084))))))))

(declare-fun b!1781012 () Bool)

(declare-fun Unit!33917 () Unit!33910)

(assert (=> b!1781012 (= e!1139806 Unit!33917)))

(declare-fun lt!692072 () List!19692)

(assert (=> b!1781012 (= lt!692072 (++!5339 lt!691858 suffix!1421))))

(declare-fun lt!692076 () Unit!33910)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!346 (LexerInterface!3144 Rule!6830 List!19693 List!19692) Unit!33910)

(assert (=> b!1781012 (= lt!692076 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!346 thiss!24550 (rule!5587 lt!692084) rules!3447 lt!692072))))

(assert (=> b!1781012 (isEmpty!12400 (maxPrefixOneRule!1067 thiss!24550 (rule!5587 lt!692084) lt!692072))))

(declare-fun lt!692073 () Unit!33910)

(assert (=> b!1781012 (= lt!692073 lt!692076)))

(declare-fun lt!692077 () List!19692)

(assert (=> b!1781012 (= lt!692077 (list!7977 (charsOf!2164 lt!692084)))))

(declare-fun lt!692085 () Unit!33910)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!342 (LexerInterface!3144 Rule!6830 List!19692 List!19692) Unit!33910)

(assert (=> b!1781012 (= lt!692085 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!342 thiss!24550 (rule!5587 lt!692084) lt!692077 (++!5339 lt!691858 suffix!1421)))))

(assert (=> b!1781012 (not (matchR!2316 (regex!3515 (rule!5587 lt!692084)) lt!692077))))

(declare-fun lt!692080 () Unit!33910)

(assert (=> b!1781012 (= lt!692080 lt!692085)))

(assert (=> b!1781012 false))

(declare-fun b!1781013 () Bool)

(declare-fun Unit!33918 () Unit!33910)

(assert (=> b!1781013 (= e!1139806 Unit!33918)))

(assert (= (and d!543814 res!802776) b!1781010))

(assert (= (and b!1781010 res!802775) b!1781011))

(assert (= (and d!543814 c!289774) b!1781012))

(assert (= (and d!543814 (not c!289774)) b!1781013))

(assert (=> d!543814 m!2202553))

(assert (=> d!543814 m!2202495))

(declare-fun m!2203149 () Bool)

(assert (=> d!543814 m!2203149))

(declare-fun m!2203151 () Bool)

(assert (=> d!543814 m!2203151))

(declare-fun m!2203153 () Bool)

(assert (=> d!543814 m!2203153))

(assert (=> d!543814 m!2202537))

(declare-fun m!2203155 () Bool)

(assert (=> d!543814 m!2203155))

(declare-fun m!2203157 () Bool)

(assert (=> d!543814 m!2203157))

(declare-fun m!2203159 () Bool)

(assert (=> d!543814 m!2203159))

(assert (=> d!543814 m!2202553))

(assert (=> d!543814 m!2203149))

(assert (=> d!543814 m!2202553))

(declare-fun m!2203161 () Bool)

(assert (=> d!543814 m!2203161))

(declare-fun m!2203163 () Bool)

(assert (=> d!543814 m!2203163))

(declare-fun m!2203165 () Bool)

(assert (=> d!543814 m!2203165))

(declare-fun m!2203167 () Bool)

(assert (=> d!543814 m!2203167))

(declare-fun m!2203169 () Bool)

(assert (=> d!543814 m!2203169))

(assert (=> d!543814 m!2203153))

(declare-fun m!2203171 () Bool)

(assert (=> d!543814 m!2203171))

(declare-fun m!2203173 () Bool)

(assert (=> d!543814 m!2203173))

(assert (=> d!543814 m!2203157))

(assert (=> d!543814 m!2203163))

(declare-fun m!2203175 () Bool)

(assert (=> d!543814 m!2203175))

(declare-fun m!2203177 () Bool)

(assert (=> d!543814 m!2203177))

(assert (=> d!543814 m!2203167))

(declare-fun m!2203179 () Bool)

(assert (=> d!543814 m!2203179))

(assert (=> d!543814 m!2203149))

(declare-fun m!2203181 () Bool)

(assert (=> d!543814 m!2203181))

(declare-fun m!2203183 () Bool)

(assert (=> d!543814 m!2203183))

(assert (=> d!543814 m!2202537))

(assert (=> d!543814 m!2203175))

(assert (=> b!1781010 m!2203169))

(declare-fun m!2203185 () Bool)

(assert (=> b!1781010 m!2203185))

(assert (=> b!1781010 m!2203167))

(assert (=> b!1781010 m!2203167))

(assert (=> b!1781010 m!2203169))

(assert (=> b!1781010 m!2203175))

(assert (=> b!1781010 m!2203175))

(declare-fun m!2203187 () Bool)

(assert (=> b!1781010 m!2203187))

(assert (=> b!1781011 m!2203175))

(assert (=> b!1781011 m!2203175))

(assert (=> b!1781011 m!2203187))

(assert (=> b!1781012 m!2202553))

(declare-fun m!2203189 () Bool)

(assert (=> b!1781012 m!2203189))

(assert (=> b!1781012 m!2202553))

(declare-fun m!2203191 () Bool)

(assert (=> b!1781012 m!2203191))

(declare-fun m!2203193 () Bool)

(assert (=> b!1781012 m!2203193))

(assert (=> b!1781012 m!2203167))

(declare-fun m!2203195 () Bool)

(assert (=> b!1781012 m!2203195))

(assert (=> b!1781012 m!2203189))

(declare-fun m!2203197 () Bool)

(assert (=> b!1781012 m!2203197))

(assert (=> b!1781012 m!2203167))

(assert (=> b!1781012 m!2203169))

(assert (=> b!1780519 d!543814))

(declare-fun d!543866 () Bool)

(declare-fun e!1139809 () Bool)

(assert (=> d!543866 e!1139809))

(declare-fun res!802781 () Bool)

(assert (=> d!543866 (=> (not res!802781) (not e!1139809))))

(assert (=> d!543866 (= res!802781 (isDefined!3395 (getRuleFromTag!563 thiss!24550 rules!3447 (tag!3909 (rule!5587 (_1!11009 lt!691836))))))))

(declare-fun lt!692091 () Unit!33910)

(declare-fun choose!11170 (LexerInterface!3144 List!19693 List!19692 Token!6596) Unit!33910)

(assert (=> d!543866 (= lt!692091 (choose!11170 thiss!24550 rules!3447 lt!691873 (_1!11009 lt!691836)))))

(assert (=> d!543866 (rulesInvariant!2813 thiss!24550 rules!3447)))

(assert (=> d!543866 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!563 thiss!24550 rules!3447 lt!691873 (_1!11009 lt!691836)) lt!692091)))

(declare-fun b!1781018 () Bool)

(declare-fun res!802782 () Bool)

(assert (=> b!1781018 (=> (not res!802782) (not e!1139809))))

(assert (=> b!1781018 (= res!802782 (matchR!2316 (regex!3515 (get!6028 (getRuleFromTag!563 thiss!24550 rules!3447 (tag!3909 (rule!5587 (_1!11009 lt!691836)))))) (list!7977 (charsOf!2164 (_1!11009 lt!691836)))))))

(declare-fun b!1781019 () Bool)

(assert (=> b!1781019 (= e!1139809 (= (rule!5587 (_1!11009 lt!691836)) (get!6028 (getRuleFromTag!563 thiss!24550 rules!3447 (tag!3909 (rule!5587 (_1!11009 lt!691836)))))))))

(assert (= (and d!543866 res!802781) b!1781018))

(assert (= (and b!1781018 res!802782) b!1781019))

(assert (=> d!543866 m!2202567))

(assert (=> d!543866 m!2202567))

(declare-fun m!2203199 () Bool)

(assert (=> d!543866 m!2203199))

(declare-fun m!2203201 () Bool)

(assert (=> d!543866 m!2203201))

(assert (=> d!543866 m!2202599))

(assert (=> b!1781018 m!2202579))

(declare-fun m!2203203 () Bool)

(assert (=> b!1781018 m!2203203))

(assert (=> b!1781018 m!2202555))

(assert (=> b!1781018 m!2202567))

(declare-fun m!2203205 () Bool)

(assert (=> b!1781018 m!2203205))

(assert (=> b!1781018 m!2202567))

(assert (=> b!1781018 m!2202555))

(assert (=> b!1781018 m!2202579))

(assert (=> b!1781019 m!2202567))

(assert (=> b!1781019 m!2202567))

(assert (=> b!1781019 m!2203205))

(assert (=> b!1780519 d!543866))

(declare-fun b!1781022 () Bool)

(declare-fun e!1139812 () Bool)

(assert (=> b!1781022 (= e!1139812 (isPrefix!1755 (tail!2665 lt!691872) (tail!2665 (++!5339 lt!691872 (_2!11009 lt!691836)))))))

(declare-fun d!543868 () Bool)

(declare-fun e!1139811 () Bool)

(assert (=> d!543868 e!1139811))

(declare-fun res!802785 () Bool)

(assert (=> d!543868 (=> res!802785 e!1139811)))

(declare-fun lt!692092 () Bool)

(assert (=> d!543868 (= res!802785 (not lt!692092))))

(declare-fun e!1139810 () Bool)

(assert (=> d!543868 (= lt!692092 e!1139810)))

(declare-fun res!802783 () Bool)

(assert (=> d!543868 (=> res!802783 e!1139810)))

(assert (=> d!543868 (= res!802783 ((_ is Nil!19622) lt!691872))))

(assert (=> d!543868 (= (isPrefix!1755 lt!691872 (++!5339 lt!691872 (_2!11009 lt!691836))) lt!692092)))

(declare-fun b!1781023 () Bool)

(assert (=> b!1781023 (= e!1139811 (>= (size!15589 (++!5339 lt!691872 (_2!11009 lt!691836))) (size!15589 lt!691872)))))

(declare-fun b!1781020 () Bool)

(assert (=> b!1781020 (= e!1139810 e!1139812)))

(declare-fun res!802784 () Bool)

(assert (=> b!1781020 (=> (not res!802784) (not e!1139812))))

(assert (=> b!1781020 (= res!802784 (not ((_ is Nil!19622) (++!5339 lt!691872 (_2!11009 lt!691836)))))))

(declare-fun b!1781021 () Bool)

(declare-fun res!802786 () Bool)

(assert (=> b!1781021 (=> (not res!802786) (not e!1139812))))

(assert (=> b!1781021 (= res!802786 (= (head!4160 lt!691872) (head!4160 (++!5339 lt!691872 (_2!11009 lt!691836)))))))

(assert (= (and d!543868 (not res!802783)) b!1781020))

(assert (= (and b!1781020 res!802784) b!1781021))

(assert (= (and b!1781021 res!802786) b!1781022))

(assert (= (and d!543868 (not res!802785)) b!1781023))

(assert (=> b!1781022 m!2202991))

(assert (=> b!1781022 m!2202551))

(declare-fun m!2203207 () Bool)

(assert (=> b!1781022 m!2203207))

(assert (=> b!1781022 m!2202991))

(assert (=> b!1781022 m!2203207))

(declare-fun m!2203209 () Bool)

(assert (=> b!1781022 m!2203209))

(assert (=> b!1781023 m!2202551))

(declare-fun m!2203211 () Bool)

(assert (=> b!1781023 m!2203211))

(assert (=> b!1781023 m!2202587))

(assert (=> b!1781021 m!2202999))

(assert (=> b!1781021 m!2202551))

(declare-fun m!2203213 () Bool)

(assert (=> b!1781021 m!2203213))

(assert (=> b!1780519 d!543868))

(declare-fun b!1781024 () Bool)

(declare-fun res!802793 () Bool)

(declare-fun e!1139815 () Bool)

(assert (=> b!1781024 (=> (not res!802793) (not e!1139815))))

(declare-fun lt!692093 () Option!4052)

(assert (=> b!1781024 (= res!802793 (< (size!15589 (_2!11009 (get!6027 lt!692093))) (size!15589 lt!691873)))))

(declare-fun b!1781025 () Bool)

(declare-fun res!802792 () Bool)

(assert (=> b!1781025 (=> (not res!802792) (not e!1139815))))

(assert (=> b!1781025 (= res!802792 (= (++!5339 (list!7977 (charsOf!2164 (_1!11009 (get!6027 lt!692093)))) (_2!11009 (get!6027 lt!692093))) lt!691873))))

(declare-fun b!1781026 () Bool)

(declare-fun e!1139814 () Option!4052)

(declare-fun call!111291 () Option!4052)

(assert (=> b!1781026 (= e!1139814 call!111291)))

(declare-fun b!1781027 () Bool)

(assert (=> b!1781027 (= e!1139815 (contains!3547 rules!3447 (rule!5587 (_1!11009 (get!6027 lt!692093)))))))

(declare-fun b!1781028 () Bool)

(declare-fun e!1139813 () Bool)

(assert (=> b!1781028 (= e!1139813 e!1139815)))

(declare-fun res!802788 () Bool)

(assert (=> b!1781028 (=> (not res!802788) (not e!1139815))))

(assert (=> b!1781028 (= res!802788 (isDefined!3396 lt!692093))))

(declare-fun b!1781029 () Bool)

(declare-fun res!802790 () Bool)

(assert (=> b!1781029 (=> (not res!802790) (not e!1139815))))

(assert (=> b!1781029 (= res!802790 (= (value!109850 (_1!11009 (get!6027 lt!692093))) (apply!5315 (transformation!3515 (rule!5587 (_1!11009 (get!6027 lt!692093)))) (seqFromList!2484 (originalCharacters!4329 (_1!11009 (get!6027 lt!692093)))))))))

(declare-fun b!1781030 () Bool)

(declare-fun res!802787 () Bool)

(assert (=> b!1781030 (=> (not res!802787) (not e!1139815))))

(assert (=> b!1781030 (= res!802787 (matchR!2316 (regex!3515 (rule!5587 (_1!11009 (get!6027 lt!692093)))) (list!7977 (charsOf!2164 (_1!11009 (get!6027 lt!692093))))))))

(declare-fun b!1781031 () Bool)

(declare-fun lt!692094 () Option!4052)

(declare-fun lt!692096 () Option!4052)

(assert (=> b!1781031 (= e!1139814 (ite (and ((_ is None!4051) lt!692094) ((_ is None!4051) lt!692096)) None!4051 (ite ((_ is None!4051) lt!692096) lt!692094 (ite ((_ is None!4051) lt!692094) lt!692096 (ite (>= (size!15588 (_1!11009 (v!25540 lt!692094))) (size!15588 (_1!11009 (v!25540 lt!692096)))) lt!692094 lt!692096)))))))

(assert (=> b!1781031 (= lt!692094 call!111291)))

(assert (=> b!1781031 (= lt!692096 (maxPrefix!1698 thiss!24550 (t!166504 rules!3447) lt!691873))))

(declare-fun bm!111286 () Bool)

(assert (=> bm!111286 (= call!111291 (maxPrefixOneRule!1067 thiss!24550 (h!25024 rules!3447) lt!691873))))

(declare-fun b!1781032 () Bool)

(declare-fun res!802791 () Bool)

(assert (=> b!1781032 (=> (not res!802791) (not e!1139815))))

(assert (=> b!1781032 (= res!802791 (= (list!7977 (charsOf!2164 (_1!11009 (get!6027 lt!692093)))) (originalCharacters!4329 (_1!11009 (get!6027 lt!692093)))))))

(declare-fun d!543870 () Bool)

(assert (=> d!543870 e!1139813))

(declare-fun res!802789 () Bool)

(assert (=> d!543870 (=> res!802789 e!1139813)))

(assert (=> d!543870 (= res!802789 (isEmpty!12400 lt!692093))))

(assert (=> d!543870 (= lt!692093 e!1139814)))

(declare-fun c!289775 () Bool)

(assert (=> d!543870 (= c!289775 (and ((_ is Cons!19623) rules!3447) ((_ is Nil!19623) (t!166504 rules!3447))))))

(declare-fun lt!692097 () Unit!33910)

(declare-fun lt!692095 () Unit!33910)

(assert (=> d!543870 (= lt!692097 lt!692095)))

(assert (=> d!543870 (isPrefix!1755 lt!691873 lt!691873)))

(assert (=> d!543870 (= lt!692095 (lemmaIsPrefixRefl!1157 lt!691873 lt!691873))))

(assert (=> d!543870 (rulesValidInductive!1193 thiss!24550 rules!3447)))

(assert (=> d!543870 (= (maxPrefix!1698 thiss!24550 rules!3447 lt!691873) lt!692093)))

(assert (= (and d!543870 c!289775) b!1781026))

(assert (= (and d!543870 (not c!289775)) b!1781031))

(assert (= (or b!1781026 b!1781031) bm!111286))

(assert (= (and d!543870 (not res!802789)) b!1781028))

(assert (= (and b!1781028 res!802788) b!1781032))

(assert (= (and b!1781032 res!802791) b!1781024))

(assert (= (and b!1781024 res!802793) b!1781025))

(assert (= (and b!1781025 res!802792) b!1781029))

(assert (= (and b!1781029 res!802790) b!1781030))

(assert (= (and b!1781030 res!802787) b!1781027))

(declare-fun m!2203215 () Bool)

(assert (=> b!1781025 m!2203215))

(declare-fun m!2203217 () Bool)

(assert (=> b!1781025 m!2203217))

(assert (=> b!1781025 m!2203217))

(declare-fun m!2203219 () Bool)

(assert (=> b!1781025 m!2203219))

(assert (=> b!1781025 m!2203219))

(declare-fun m!2203221 () Bool)

(assert (=> b!1781025 m!2203221))

(declare-fun m!2203223 () Bool)

(assert (=> d!543870 m!2203223))

(declare-fun m!2203225 () Bool)

(assert (=> d!543870 m!2203225))

(declare-fun m!2203227 () Bool)

(assert (=> d!543870 m!2203227))

(assert (=> d!543870 m!2202727))

(assert (=> b!1781024 m!2203215))

(declare-fun m!2203229 () Bool)

(assert (=> b!1781024 m!2203229))

(assert (=> b!1781024 m!2202997))

(assert (=> b!1781030 m!2203215))

(assert (=> b!1781030 m!2203217))

(assert (=> b!1781030 m!2203217))

(assert (=> b!1781030 m!2203219))

(assert (=> b!1781030 m!2203219))

(declare-fun m!2203231 () Bool)

(assert (=> b!1781030 m!2203231))

(assert (=> b!1781032 m!2203215))

(assert (=> b!1781032 m!2203217))

(assert (=> b!1781032 m!2203217))

(assert (=> b!1781032 m!2203219))

(assert (=> b!1781027 m!2203215))

(declare-fun m!2203233 () Bool)

(assert (=> b!1781027 m!2203233))

(declare-fun m!2203235 () Bool)

(assert (=> b!1781031 m!2203235))

(assert (=> b!1781029 m!2203215))

(declare-fun m!2203237 () Bool)

(assert (=> b!1781029 m!2203237))

(assert (=> b!1781029 m!2203237))

(declare-fun m!2203239 () Bool)

(assert (=> b!1781029 m!2203239))

(declare-fun m!2203241 () Bool)

(assert (=> b!1781028 m!2203241))

(declare-fun m!2203243 () Bool)

(assert (=> bm!111286 m!2203243))

(assert (=> b!1780519 d!543870))

(declare-fun b!1781035 () Bool)

(declare-fun e!1139818 () Bool)

(assert (=> b!1781035 (= e!1139818 (isPrefix!1755 (tail!2665 lt!691858) (tail!2665 lt!691873)))))

(declare-fun d!543872 () Bool)

(declare-fun e!1139817 () Bool)

(assert (=> d!543872 e!1139817))

(declare-fun res!802796 () Bool)

(assert (=> d!543872 (=> res!802796 e!1139817)))

(declare-fun lt!692098 () Bool)

(assert (=> d!543872 (= res!802796 (not lt!692098))))

(declare-fun e!1139816 () Bool)

(assert (=> d!543872 (= lt!692098 e!1139816)))

(declare-fun res!802794 () Bool)

(assert (=> d!543872 (=> res!802794 e!1139816)))

(assert (=> d!543872 (= res!802794 ((_ is Nil!19622) lt!691858))))

(assert (=> d!543872 (= (isPrefix!1755 lt!691858 lt!691873) lt!692098)))

(declare-fun b!1781036 () Bool)

(assert (=> b!1781036 (= e!1139817 (>= (size!15589 lt!691873) (size!15589 lt!691858)))))

(declare-fun b!1781033 () Bool)

(assert (=> b!1781033 (= e!1139816 e!1139818)))

(declare-fun res!802795 () Bool)

(assert (=> b!1781033 (=> (not res!802795) (not e!1139818))))

(assert (=> b!1781033 (= res!802795 (not ((_ is Nil!19622) lt!691873)))))

(declare-fun b!1781034 () Bool)

(declare-fun res!802797 () Bool)

(assert (=> b!1781034 (=> (not res!802797) (not e!1139818))))

(assert (=> b!1781034 (= res!802797 (= (head!4160 lt!691858) (head!4160 lt!691873)))))

(assert (= (and d!543872 (not res!802794)) b!1781033))

(assert (= (and b!1781033 res!802795) b!1781034))

(assert (= (and b!1781034 res!802797) b!1781035))

(assert (= (and d!543872 (not res!802796)) b!1781036))

(assert (=> b!1781035 m!2202951))

(assert (=> b!1781035 m!2202993))

(assert (=> b!1781035 m!2202951))

(assert (=> b!1781035 m!2202993))

(declare-fun m!2203245 () Bool)

(assert (=> b!1781035 m!2203245))

(assert (=> b!1781036 m!2202997))

(assert (=> b!1781036 m!2202735))

(assert (=> b!1781034 m!2202949))

(assert (=> b!1781034 m!2203001))

(assert (=> b!1780519 d!543872))

(declare-fun b!1781049 () Bool)

(declare-fun e!1139829 () Bool)

(declare-fun e!1139828 () Bool)

(assert (=> b!1781049 (= e!1139829 e!1139828)))

(declare-fun res!802803 () Bool)

(assert (=> b!1781049 (=> (not res!802803) (not e!1139828))))

(declare-fun lt!692107 () Option!4053)

(assert (=> b!1781049 (= res!802803 (contains!3547 rules!3447 (get!6028 lt!692107)))))

(declare-fun b!1781050 () Bool)

(declare-fun e!1139830 () Option!4053)

(assert (=> b!1781050 (= e!1139830 (Some!4052 (h!25024 rules!3447)))))

(declare-fun d!543874 () Bool)

(assert (=> d!543874 e!1139829))

(declare-fun res!802802 () Bool)

(assert (=> d!543874 (=> res!802802 e!1139829)))

(declare-fun isEmpty!12401 (Option!4053) Bool)

(assert (=> d!543874 (= res!802802 (isEmpty!12401 lt!692107))))

(assert (=> d!543874 (= lt!692107 e!1139830)))

(declare-fun c!289780 () Bool)

(assert (=> d!543874 (= c!289780 (and ((_ is Cons!19623) rules!3447) (= (tag!3909 (h!25024 rules!3447)) (tag!3909 (rule!5587 (_1!11009 lt!691836))))))))

(assert (=> d!543874 (rulesInvariant!2813 thiss!24550 rules!3447)))

(assert (=> d!543874 (= (getRuleFromTag!563 thiss!24550 rules!3447 (tag!3909 (rule!5587 (_1!11009 lt!691836)))) lt!692107)))

(declare-fun b!1781051 () Bool)

(declare-fun lt!692106 () Unit!33910)

(declare-fun lt!692105 () Unit!33910)

(assert (=> b!1781051 (= lt!692106 lt!692105)))

(assert (=> b!1781051 (rulesInvariant!2813 thiss!24550 (t!166504 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!217 (LexerInterface!3144 Rule!6830 List!19693) Unit!33910)

(assert (=> b!1781051 (= lt!692105 (lemmaInvariantOnRulesThenOnTail!217 thiss!24550 (h!25024 rules!3447) (t!166504 rules!3447)))))

(declare-fun e!1139827 () Option!4053)

(assert (=> b!1781051 (= e!1139827 (getRuleFromTag!563 thiss!24550 (t!166504 rules!3447) (tag!3909 (rule!5587 (_1!11009 lt!691836)))))))

(declare-fun b!1781052 () Bool)

(assert (=> b!1781052 (= e!1139828 (= (tag!3909 (get!6028 lt!692107)) (tag!3909 (rule!5587 (_1!11009 lt!691836)))))))

(declare-fun b!1781053 () Bool)

(assert (=> b!1781053 (= e!1139830 e!1139827)))

(declare-fun c!289781 () Bool)

(assert (=> b!1781053 (= c!289781 (and ((_ is Cons!19623) rules!3447) (not (= (tag!3909 (h!25024 rules!3447)) (tag!3909 (rule!5587 (_1!11009 lt!691836)))))))))

(declare-fun b!1781054 () Bool)

(assert (=> b!1781054 (= e!1139827 None!4052)))

(assert (= (and d!543874 c!289780) b!1781050))

(assert (= (and d!543874 (not c!289780)) b!1781053))

(assert (= (and b!1781053 c!289781) b!1781051))

(assert (= (and b!1781053 (not c!289781)) b!1781054))

(assert (= (and d!543874 (not res!802802)) b!1781049))

(assert (= (and b!1781049 res!802803) b!1781052))

(declare-fun m!2203247 () Bool)

(assert (=> b!1781049 m!2203247))

(assert (=> b!1781049 m!2203247))

(declare-fun m!2203249 () Bool)

(assert (=> b!1781049 m!2203249))

(declare-fun m!2203251 () Bool)

(assert (=> d!543874 m!2203251))

(assert (=> d!543874 m!2202599))

(declare-fun m!2203253 () Bool)

(assert (=> b!1781051 m!2203253))

(declare-fun m!2203255 () Bool)

(assert (=> b!1781051 m!2203255))

(declare-fun m!2203257 () Bool)

(assert (=> b!1781051 m!2203257))

(assert (=> b!1781052 m!2203247))

(assert (=> b!1780519 d!543874))

(declare-fun d!543876 () Bool)

(assert (=> d!543876 (= (isDefined!3395 lt!691839) (not (isEmpty!12401 lt!691839)))))

(declare-fun bs!405174 () Bool)

(assert (= bs!405174 d!543876))

(declare-fun m!2203259 () Bool)

(assert (=> bs!405174 m!2203259))

(assert (=> b!1780519 d!543876))

(declare-fun e!1139831 () Bool)

(declare-fun lt!692108 () List!19692)

(declare-fun b!1781058 () Bool)

(assert (=> b!1781058 (= e!1139831 (or (not (= suffix!1421 Nil!19622)) (= lt!692108 lt!691858)))))

(declare-fun d!543878 () Bool)

(assert (=> d!543878 e!1139831))

(declare-fun res!802805 () Bool)

(assert (=> d!543878 (=> (not res!802805) (not e!1139831))))

(assert (=> d!543878 (= res!802805 (= (content!2853 lt!692108) ((_ map or) (content!2853 lt!691858) (content!2853 suffix!1421))))))

(declare-fun e!1139832 () List!19692)

(assert (=> d!543878 (= lt!692108 e!1139832)))

(declare-fun c!289782 () Bool)

(assert (=> d!543878 (= c!289782 ((_ is Nil!19622) lt!691858))))

(assert (=> d!543878 (= (++!5339 lt!691858 suffix!1421) lt!692108)))

(declare-fun b!1781057 () Bool)

(declare-fun res!802804 () Bool)

(assert (=> b!1781057 (=> (not res!802804) (not e!1139831))))

(assert (=> b!1781057 (= res!802804 (= (size!15589 lt!692108) (+ (size!15589 lt!691858) (size!15589 suffix!1421))))))

(declare-fun b!1781056 () Bool)

(assert (=> b!1781056 (= e!1139832 (Cons!19622 (h!25023 lt!691858) (++!5339 (t!166503 lt!691858) suffix!1421)))))

(declare-fun b!1781055 () Bool)

(assert (=> b!1781055 (= e!1139832 suffix!1421)))

(assert (= (and d!543878 c!289782) b!1781055))

(assert (= (and d!543878 (not c!289782)) b!1781056))

(assert (= (and d!543878 res!802805) b!1781057))

(assert (= (and b!1781057 res!802804) b!1781058))

(declare-fun m!2203261 () Bool)

(assert (=> d!543878 m!2203261))

(assert (=> d!543878 m!2202833))

(declare-fun m!2203263 () Bool)

(assert (=> d!543878 m!2203263))

(declare-fun m!2203265 () Bool)

(assert (=> b!1781057 m!2203265))

(assert (=> b!1781057 m!2202735))

(declare-fun m!2203267 () Bool)

(assert (=> b!1781057 m!2203267))

(declare-fun m!2203269 () Bool)

(assert (=> b!1781056 m!2203269))

(assert (=> b!1780519 d!543878))

(declare-fun d!543880 () Bool)

(assert (=> d!543880 (= (inv!25531 (tag!3909 (rule!5587 token!523))) (= (mod (str.len (value!109849 (tag!3909 (rule!5587 token!523)))) 2) 0))))

(assert (=> b!1780518 d!543880))

(declare-fun d!543882 () Bool)

(declare-fun res!802806 () Bool)

(declare-fun e!1139833 () Bool)

(assert (=> d!543882 (=> (not res!802806) (not e!1139833))))

(assert (=> d!543882 (= res!802806 (semiInverseModEq!1403 (toChars!4901 (transformation!3515 (rule!5587 token!523))) (toValue!5042 (transformation!3515 (rule!5587 token!523)))))))

(assert (=> d!543882 (= (inv!25536 (transformation!3515 (rule!5587 token!523))) e!1139833)))

(declare-fun b!1781059 () Bool)

(assert (=> b!1781059 (= e!1139833 (equivClasses!1344 (toChars!4901 (transformation!3515 (rule!5587 token!523))) (toValue!5042 (transformation!3515 (rule!5587 token!523)))))))

(assert (= (and d!543882 res!802806) b!1781059))

(declare-fun m!2203271 () Bool)

(assert (=> d!543882 m!2203271))

(declare-fun m!2203273 () Bool)

(assert (=> b!1781059 m!2203273))

(assert (=> b!1780518 d!543882))

(declare-fun b!1781060 () Bool)

(declare-fun e!1139836 () Bool)

(declare-fun e!1139835 () Bool)

(assert (=> b!1781060 (= e!1139836 e!1139835)))

(declare-fun res!802811 () Bool)

(assert (=> b!1781060 (=> (not res!802811) (not e!1139835))))

(declare-fun lt!692109 () Bool)

(assert (=> b!1781060 (= res!802811 (not lt!692109))))

(declare-fun b!1781061 () Bool)

(declare-fun e!1139837 () Bool)

(assert (=> b!1781061 (= e!1139837 (not lt!692109))))

(declare-fun b!1781062 () Bool)

(declare-fun e!1139838 () Bool)

(assert (=> b!1781062 (= e!1139838 (= (head!4160 lt!691872) (c!289676 (regex!3515 (rule!5587 (_1!11009 lt!691836))))))))

(declare-fun b!1781063 () Bool)

(declare-fun res!802813 () Bool)

(assert (=> b!1781063 (=> (not res!802813) (not e!1139838))))

(assert (=> b!1781063 (= res!802813 (isEmpty!12398 (tail!2665 lt!691872)))))

(declare-fun b!1781064 () Bool)

(declare-fun e!1139840 () Bool)

(assert (=> b!1781064 (= e!1139840 e!1139837)))

(declare-fun c!289785 () Bool)

(assert (=> b!1781064 (= c!289785 ((_ is EmptyLang!4843) (regex!3515 (rule!5587 (_1!11009 lt!691836)))))))

(declare-fun b!1781065 () Bool)

(declare-fun res!802810 () Bool)

(assert (=> b!1781065 (=> res!802810 e!1139836)))

(assert (=> b!1781065 (= res!802810 (not ((_ is ElementMatch!4843) (regex!3515 (rule!5587 (_1!11009 lt!691836))))))))

(assert (=> b!1781065 (= e!1139837 e!1139836)))

(declare-fun b!1781066 () Bool)

(declare-fun call!111292 () Bool)

(assert (=> b!1781066 (= e!1139840 (= lt!692109 call!111292))))

(declare-fun b!1781068 () Bool)

(declare-fun res!802808 () Bool)

(assert (=> b!1781068 (=> res!802808 e!1139836)))

(assert (=> b!1781068 (= res!802808 e!1139838)))

(declare-fun res!802809 () Bool)

(assert (=> b!1781068 (=> (not res!802809) (not e!1139838))))

(assert (=> b!1781068 (= res!802809 lt!692109)))

(declare-fun b!1781069 () Bool)

(declare-fun res!802812 () Bool)

(declare-fun e!1139834 () Bool)

(assert (=> b!1781069 (=> res!802812 e!1139834)))

(assert (=> b!1781069 (= res!802812 (not (isEmpty!12398 (tail!2665 lt!691872))))))

(declare-fun bm!111287 () Bool)

(assert (=> bm!111287 (= call!111292 (isEmpty!12398 lt!691872))))

(declare-fun b!1781070 () Bool)

(declare-fun res!802814 () Bool)

(assert (=> b!1781070 (=> (not res!802814) (not e!1139838))))

(assert (=> b!1781070 (= res!802814 (not call!111292))))

(declare-fun b!1781071 () Bool)

(assert (=> b!1781071 (= e!1139835 e!1139834)))

(declare-fun res!802807 () Bool)

(assert (=> b!1781071 (=> res!802807 e!1139834)))

(assert (=> b!1781071 (= res!802807 call!111292)))

(declare-fun b!1781067 () Bool)

(assert (=> b!1781067 (= e!1139834 (not (= (head!4160 lt!691872) (c!289676 (regex!3515 (rule!5587 (_1!11009 lt!691836)))))))))

(declare-fun d!543884 () Bool)

(assert (=> d!543884 e!1139840))

(declare-fun c!289783 () Bool)

(assert (=> d!543884 (= c!289783 ((_ is EmptyExpr!4843) (regex!3515 (rule!5587 (_1!11009 lt!691836)))))))

(declare-fun e!1139839 () Bool)

(assert (=> d!543884 (= lt!692109 e!1139839)))

(declare-fun c!289784 () Bool)

(assert (=> d!543884 (= c!289784 (isEmpty!12398 lt!691872))))

(assert (=> d!543884 (validRegex!1963 (regex!3515 (rule!5587 (_1!11009 lt!691836))))))

(assert (=> d!543884 (= (matchR!2316 (regex!3515 (rule!5587 (_1!11009 lt!691836))) lt!691872) lt!692109)))

(declare-fun b!1781072 () Bool)

(assert (=> b!1781072 (= e!1139839 (matchR!2316 (derivativeStep!1258 (regex!3515 (rule!5587 (_1!11009 lt!691836))) (head!4160 lt!691872)) (tail!2665 lt!691872)))))

(declare-fun b!1781073 () Bool)

(assert (=> b!1781073 (= e!1139839 (nullable!1489 (regex!3515 (rule!5587 (_1!11009 lt!691836)))))))

(assert (= (and d!543884 c!289784) b!1781073))

(assert (= (and d!543884 (not c!289784)) b!1781072))

(assert (= (and d!543884 c!289783) b!1781066))

(assert (= (and d!543884 (not c!289783)) b!1781064))

(assert (= (and b!1781064 c!289785) b!1781061))

(assert (= (and b!1781064 (not c!289785)) b!1781065))

(assert (= (and b!1781065 (not res!802810)) b!1781068))

(assert (= (and b!1781068 res!802809) b!1781070))

(assert (= (and b!1781070 res!802814) b!1781063))

(assert (= (and b!1781063 res!802813) b!1781062))

(assert (= (and b!1781068 (not res!802808)) b!1781060))

(assert (= (and b!1781060 res!802811) b!1781071))

(assert (= (and b!1781071 (not res!802807)) b!1781069))

(assert (= (and b!1781069 (not res!802812)) b!1781067))

(assert (= (or b!1781066 b!1781070 b!1781071) bm!111287))

(assert (=> b!1781067 m!2202999))

(assert (=> b!1781069 m!2202991))

(assert (=> b!1781069 m!2202991))

(declare-fun m!2203275 () Bool)

(assert (=> b!1781069 m!2203275))

(declare-fun m!2203277 () Bool)

(assert (=> d!543884 m!2203277))

(declare-fun m!2203279 () Bool)

(assert (=> d!543884 m!2203279))

(declare-fun m!2203281 () Bool)

(assert (=> b!1781073 m!2203281))

(assert (=> bm!111287 m!2203277))

(assert (=> b!1781063 m!2202991))

(assert (=> b!1781063 m!2202991))

(assert (=> b!1781063 m!2203275))

(assert (=> b!1781062 m!2202999))

(assert (=> b!1781072 m!2202999))

(assert (=> b!1781072 m!2202999))

(declare-fun m!2203283 () Bool)

(assert (=> b!1781072 m!2203283))

(assert (=> b!1781072 m!2202991))

(assert (=> b!1781072 m!2203283))

(assert (=> b!1781072 m!2202991))

(declare-fun m!2203285 () Bool)

(assert (=> b!1781072 m!2203285))

(assert (=> b!1780517 d!543884))

(declare-fun d!543886 () Bool)

(assert (=> d!543886 (= (list!7977 (dynLambda!9631 (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) (dynLambda!9632 (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) lt!691868))) (list!7979 (c!289677 (dynLambda!9631 (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) (dynLambda!9632 (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) lt!691868)))))))

(declare-fun bs!405175 () Bool)

(assert (= bs!405175 d!543886))

(declare-fun m!2203287 () Bool)

(assert (=> bs!405175 m!2203287))

(assert (=> b!1780511 d!543886))

(declare-fun bs!405176 () Bool)

(declare-fun d!543888 () Bool)

(assert (= bs!405176 (and d!543888 b!1780515)))

(declare-fun lambda!70668 () Int)

(assert (=> bs!405176 (= lambda!70668 lambda!70656)))

(declare-fun b!1781078 () Bool)

(declare-fun e!1139843 () Bool)

(assert (=> b!1781078 (= e!1139843 true)))

(assert (=> d!543888 e!1139843))

(assert (= d!543888 b!1781078))

(assert (=> b!1781078 (< (dynLambda!9628 order!12651 (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836))))) (dynLambda!9629 order!12653 lambda!70668))))

(assert (=> b!1781078 (< (dynLambda!9630 order!12655 (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836))))) (dynLambda!9629 order!12653 lambda!70668))))

(assert (=> d!543888 (= (list!7977 (dynLambda!9631 (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) (dynLambda!9632 (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) lt!691868))) (list!7977 lt!691868))))

(declare-fun lt!692112 () Unit!33910)

(declare-fun ForallOf!340 (Int BalanceConc!12998) Unit!33910)

(assert (=> d!543888 (= lt!692112 (ForallOf!340 lambda!70668 lt!691868))))

(assert (=> d!543888 (= (lemmaSemiInverse!653 (transformation!3515 (rule!5587 (_1!11009 lt!691836))) lt!691868) lt!692112)))

(declare-fun b_lambda!58293 () Bool)

(assert (=> (not b_lambda!58293) (not d!543888)))

(assert (=> d!543888 t!166485))

(declare-fun b_and!136529 () Bool)

(assert (= b_and!136499 (and (=> t!166485 result!130174) b_and!136529)))

(assert (=> d!543888 t!166487))

(declare-fun b_and!136531 () Bool)

(assert (= b_and!136501 (and (=> t!166487 result!130178) b_and!136531)))

(assert (=> d!543888 t!166489))

(declare-fun b_and!136533 () Bool)

(assert (= b_and!136503 (and (=> t!166489 result!130180) b_and!136533)))

(declare-fun b_lambda!58295 () Bool)

(assert (=> (not b_lambda!58295) (not d!543888)))

(assert (=> d!543888 t!166491))

(declare-fun b_and!136535 () Bool)

(assert (= b_and!136469 (and (=> t!166491 result!130182) b_and!136535)))

(assert (=> d!543888 t!166493))

(declare-fun b_and!136537 () Bool)

(assert (= b_and!136471 (and (=> t!166493 result!130186) b_and!136537)))

(assert (=> d!543888 t!166495))

(declare-fun b_and!136539 () Bool)

(assert (= b_and!136473 (and (=> t!166495 result!130188) b_and!136539)))

(declare-fun m!2203289 () Bool)

(assert (=> d!543888 m!2203289))

(assert (=> d!543888 m!2202467))

(assert (=> d!543888 m!2202469))

(assert (=> d!543888 m!2202565))

(assert (=> d!543888 m!2202469))

(assert (=> d!543888 m!2202471))

(assert (=> d!543888 m!2202467))

(assert (=> b!1780511 d!543888))

(declare-fun b!1781079 () Bool)

(declare-fun e!1139846 () Bool)

(declare-fun e!1139845 () Bool)

(assert (=> b!1781079 (= e!1139846 e!1139845)))

(declare-fun res!802819 () Bool)

(assert (=> b!1781079 (=> (not res!802819) (not e!1139845))))

(declare-fun lt!692113 () Bool)

(assert (=> b!1781079 (= res!802819 (not lt!692113))))

(declare-fun b!1781080 () Bool)

(declare-fun e!1139847 () Bool)

(assert (=> b!1781080 (= e!1139847 (not lt!692113))))

(declare-fun b!1781081 () Bool)

(declare-fun e!1139848 () Bool)

(assert (=> b!1781081 (= e!1139848 (= (head!4160 lt!691858) (c!289676 (regex!3515 rule!422))))))

(declare-fun b!1781082 () Bool)

(declare-fun res!802821 () Bool)

(assert (=> b!1781082 (=> (not res!802821) (not e!1139848))))

(assert (=> b!1781082 (= res!802821 (isEmpty!12398 (tail!2665 lt!691858)))))

(declare-fun b!1781083 () Bool)

(declare-fun e!1139850 () Bool)

(assert (=> b!1781083 (= e!1139850 e!1139847)))

(declare-fun c!289789 () Bool)

(assert (=> b!1781083 (= c!289789 ((_ is EmptyLang!4843) (regex!3515 rule!422)))))

(declare-fun b!1781084 () Bool)

(declare-fun res!802818 () Bool)

(assert (=> b!1781084 (=> res!802818 e!1139846)))

(assert (=> b!1781084 (= res!802818 (not ((_ is ElementMatch!4843) (regex!3515 rule!422))))))

(assert (=> b!1781084 (= e!1139847 e!1139846)))

(declare-fun b!1781085 () Bool)

(declare-fun call!111293 () Bool)

(assert (=> b!1781085 (= e!1139850 (= lt!692113 call!111293))))

(declare-fun b!1781087 () Bool)

(declare-fun res!802816 () Bool)

(assert (=> b!1781087 (=> res!802816 e!1139846)))

(assert (=> b!1781087 (= res!802816 e!1139848)))

(declare-fun res!802817 () Bool)

(assert (=> b!1781087 (=> (not res!802817) (not e!1139848))))

(assert (=> b!1781087 (= res!802817 lt!692113)))

(declare-fun b!1781088 () Bool)

(declare-fun res!802820 () Bool)

(declare-fun e!1139844 () Bool)

(assert (=> b!1781088 (=> res!802820 e!1139844)))

(assert (=> b!1781088 (= res!802820 (not (isEmpty!12398 (tail!2665 lt!691858))))))

(declare-fun bm!111288 () Bool)

(assert (=> bm!111288 (= call!111293 (isEmpty!12398 lt!691858))))

(declare-fun b!1781089 () Bool)

(declare-fun res!802822 () Bool)

(assert (=> b!1781089 (=> (not res!802822) (not e!1139848))))

(assert (=> b!1781089 (= res!802822 (not call!111293))))

(declare-fun b!1781090 () Bool)

(assert (=> b!1781090 (= e!1139845 e!1139844)))

(declare-fun res!802815 () Bool)

(assert (=> b!1781090 (=> res!802815 e!1139844)))

(assert (=> b!1781090 (= res!802815 call!111293)))

(declare-fun b!1781086 () Bool)

(assert (=> b!1781086 (= e!1139844 (not (= (head!4160 lt!691858) (c!289676 (regex!3515 rule!422)))))))

(declare-fun d!543890 () Bool)

(assert (=> d!543890 e!1139850))

(declare-fun c!289787 () Bool)

(assert (=> d!543890 (= c!289787 ((_ is EmptyExpr!4843) (regex!3515 rule!422)))))

(declare-fun e!1139849 () Bool)

(assert (=> d!543890 (= lt!692113 e!1139849)))

(declare-fun c!289788 () Bool)

(assert (=> d!543890 (= c!289788 (isEmpty!12398 lt!691858))))

(assert (=> d!543890 (validRegex!1963 (regex!3515 rule!422))))

(assert (=> d!543890 (= (matchR!2316 (regex!3515 rule!422) lt!691858) lt!692113)))

(declare-fun b!1781091 () Bool)

(assert (=> b!1781091 (= e!1139849 (matchR!2316 (derivativeStep!1258 (regex!3515 rule!422) (head!4160 lt!691858)) (tail!2665 lt!691858)))))

(declare-fun b!1781092 () Bool)

(assert (=> b!1781092 (= e!1139849 (nullable!1489 (regex!3515 rule!422)))))

(assert (= (and d!543890 c!289788) b!1781092))

(assert (= (and d!543890 (not c!289788)) b!1781091))

(assert (= (and d!543890 c!289787) b!1781085))

(assert (= (and d!543890 (not c!289787)) b!1781083))

(assert (= (and b!1781083 c!289789) b!1781080))

(assert (= (and b!1781083 (not c!289789)) b!1781084))

(assert (= (and b!1781084 (not res!802818)) b!1781087))

(assert (= (and b!1781087 res!802817) b!1781089))

(assert (= (and b!1781089 res!802822) b!1781082))

(assert (= (and b!1781082 res!802821) b!1781081))

(assert (= (and b!1781087 (not res!802816)) b!1781079))

(assert (= (and b!1781079 res!802819) b!1781090))

(assert (= (and b!1781090 (not res!802815)) b!1781088))

(assert (= (and b!1781088 (not res!802820)) b!1781086))

(assert (= (or b!1781085 b!1781089 b!1781090) bm!111288))

(assert (=> b!1781086 m!2202949))

(assert (=> b!1781088 m!2202951))

(assert (=> b!1781088 m!2202951))

(assert (=> b!1781088 m!2202953))

(assert (=> d!543890 m!2202955))

(declare-fun m!2203291 () Bool)

(assert (=> d!543890 m!2203291))

(declare-fun m!2203293 () Bool)

(assert (=> b!1781092 m!2203293))

(assert (=> bm!111288 m!2202955))

(assert (=> b!1781082 m!2202951))

(assert (=> b!1781082 m!2202951))

(assert (=> b!1781082 m!2202953))

(assert (=> b!1781081 m!2202949))

(assert (=> b!1781091 m!2202949))

(assert (=> b!1781091 m!2202949))

(declare-fun m!2203295 () Bool)

(assert (=> b!1781091 m!2203295))

(assert (=> b!1781091 m!2202951))

(assert (=> b!1781091 m!2203295))

(assert (=> b!1781091 m!2202951))

(declare-fun m!2203297 () Bool)

(assert (=> b!1781091 m!2203297))

(assert (=> b!1780532 d!543890))

(declare-fun d!543892 () Bool)

(declare-fun res!802827 () Bool)

(declare-fun e!1139853 () Bool)

(assert (=> d!543892 (=> (not res!802827) (not e!1139853))))

(assert (=> d!543892 (= res!802827 (validRegex!1963 (regex!3515 rule!422)))))

(assert (=> d!543892 (= (ruleValid!1013 thiss!24550 rule!422) e!1139853)))

(declare-fun b!1781097 () Bool)

(declare-fun res!802828 () Bool)

(assert (=> b!1781097 (=> (not res!802828) (not e!1139853))))

(assert (=> b!1781097 (= res!802828 (not (nullable!1489 (regex!3515 rule!422))))))

(declare-fun b!1781098 () Bool)

(assert (=> b!1781098 (= e!1139853 (not (= (tag!3909 rule!422) (String!22358 ""))))))

(assert (= (and d!543892 res!802827) b!1781097))

(assert (= (and b!1781097 res!802828) b!1781098))

(assert (=> d!543892 m!2203291))

(assert (=> b!1781097 m!2203293))

(assert (=> b!1780532 d!543892))

(declare-fun d!543894 () Bool)

(assert (=> d!543894 (ruleValid!1013 thiss!24550 rule!422)))

(declare-fun lt!692116 () Unit!33910)

(declare-fun choose!11174 (LexerInterface!3144 Rule!6830 List!19693) Unit!33910)

(assert (=> d!543894 (= lt!692116 (choose!11174 thiss!24550 rule!422 rules!3447))))

(assert (=> d!543894 (contains!3547 rules!3447 rule!422)))

(assert (=> d!543894 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!536 thiss!24550 rule!422 rules!3447) lt!692116)))

(declare-fun bs!405177 () Bool)

(assert (= bs!405177 d!543894))

(assert (=> bs!405177 m!2202503))

(declare-fun m!2203299 () Bool)

(assert (=> bs!405177 m!2203299))

(assert (=> bs!405177 m!2202543))

(assert (=> b!1780532 d!543894))

(declare-fun d!543896 () Bool)

(declare-fun isBalanced!2042 (Conc!6527) Bool)

(assert (=> d!543896 (= (inv!25539 (dynLambda!9631 (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) (value!109850 (_1!11009 lt!691836)))) (isBalanced!2042 (c!289677 (dynLambda!9631 (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) (value!109850 (_1!11009 lt!691836))))))))

(declare-fun bs!405178 () Bool)

(assert (= bs!405178 d!543896))

(declare-fun m!2203301 () Bool)

(assert (=> bs!405178 m!2203301))

(assert (=> tb!108215 d!543896))

(declare-fun b!1781101 () Bool)

(declare-fun e!1139856 () Bool)

(assert (=> b!1781101 (= e!1139856 (isPrefix!1755 (tail!2665 (++!5339 lt!691858 (Cons!19622 (head!4160 lt!691866) Nil!19622))) (tail!2665 lt!691873)))))

(declare-fun d!543898 () Bool)

(declare-fun e!1139855 () Bool)

(assert (=> d!543898 e!1139855))

(declare-fun res!802831 () Bool)

(assert (=> d!543898 (=> res!802831 e!1139855)))

(declare-fun lt!692117 () Bool)

(assert (=> d!543898 (= res!802831 (not lt!692117))))

(declare-fun e!1139854 () Bool)

(assert (=> d!543898 (= lt!692117 e!1139854)))

(declare-fun res!802829 () Bool)

(assert (=> d!543898 (=> res!802829 e!1139854)))

(assert (=> d!543898 (= res!802829 ((_ is Nil!19622) (++!5339 lt!691858 (Cons!19622 (head!4160 lt!691866) Nil!19622))))))

(assert (=> d!543898 (= (isPrefix!1755 (++!5339 lt!691858 (Cons!19622 (head!4160 lt!691866) Nil!19622)) lt!691873) lt!692117)))

(declare-fun b!1781102 () Bool)

(assert (=> b!1781102 (= e!1139855 (>= (size!15589 lt!691873) (size!15589 (++!5339 lt!691858 (Cons!19622 (head!4160 lt!691866) Nil!19622)))))))

(declare-fun b!1781099 () Bool)

(assert (=> b!1781099 (= e!1139854 e!1139856)))

(declare-fun res!802830 () Bool)

(assert (=> b!1781099 (=> (not res!802830) (not e!1139856))))

(assert (=> b!1781099 (= res!802830 (not ((_ is Nil!19622) lt!691873)))))

(declare-fun b!1781100 () Bool)

(declare-fun res!802832 () Bool)

(assert (=> b!1781100 (=> (not res!802832) (not e!1139856))))

(assert (=> b!1781100 (= res!802832 (= (head!4160 (++!5339 lt!691858 (Cons!19622 (head!4160 lt!691866) Nil!19622))) (head!4160 lt!691873)))))

(assert (= (and d!543898 (not res!802829)) b!1781099))

(assert (= (and b!1781099 res!802830) b!1781100))

(assert (= (and b!1781100 res!802832) b!1781101))

(assert (= (and d!543898 (not res!802831)) b!1781102))

(assert (=> b!1781101 m!2202607))

(declare-fun m!2203303 () Bool)

(assert (=> b!1781101 m!2203303))

(assert (=> b!1781101 m!2202993))

(assert (=> b!1781101 m!2203303))

(assert (=> b!1781101 m!2202993))

(declare-fun m!2203305 () Bool)

(assert (=> b!1781101 m!2203305))

(assert (=> b!1781102 m!2202997))

(assert (=> b!1781102 m!2202607))

(declare-fun m!2203307 () Bool)

(assert (=> b!1781102 m!2203307))

(assert (=> b!1781100 m!2202607))

(declare-fun m!2203309 () Bool)

(assert (=> b!1781100 m!2203309))

(assert (=> b!1781100 m!2203001))

(assert (=> b!1780531 d!543898))

(declare-fun d!543900 () Bool)

(assert (=> d!543900 (isPrefix!1755 lt!691857 lt!691872)))

(declare-fun lt!692120 () Unit!33910)

(declare-fun choose!11175 (List!19692 List!19692 List!19692) Unit!33910)

(assert (=> d!543900 (= lt!692120 (choose!11175 lt!691872 lt!691857 lt!691873))))

(assert (=> d!543900 (isPrefix!1755 lt!691872 lt!691873)))

(assert (=> d!543900 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!163 lt!691872 lt!691857 lt!691873) lt!692120)))

(declare-fun bs!405179 () Bool)

(assert (= bs!405179 d!543900))

(assert (=> bs!405179 m!2202603))

(declare-fun m!2203311 () Bool)

(assert (=> bs!405179 m!2203311))

(assert (=> bs!405179 m!2202559))

(assert (=> b!1780531 d!543900))

(declare-fun b!1781106 () Bool)

(declare-fun lt!692121 () List!19692)

(declare-fun e!1139857 () Bool)

(assert (=> b!1781106 (= e!1139857 (or (not (= (Cons!19622 (head!4160 lt!691866) Nil!19622) Nil!19622)) (= lt!692121 lt!691858)))))

(declare-fun d!543902 () Bool)

(assert (=> d!543902 e!1139857))

(declare-fun res!802834 () Bool)

(assert (=> d!543902 (=> (not res!802834) (not e!1139857))))

(assert (=> d!543902 (= res!802834 (= (content!2853 lt!692121) ((_ map or) (content!2853 lt!691858) (content!2853 (Cons!19622 (head!4160 lt!691866) Nil!19622)))))))

(declare-fun e!1139858 () List!19692)

(assert (=> d!543902 (= lt!692121 e!1139858)))

(declare-fun c!289790 () Bool)

(assert (=> d!543902 (= c!289790 ((_ is Nil!19622) lt!691858))))

(assert (=> d!543902 (= (++!5339 lt!691858 (Cons!19622 (head!4160 lt!691866) Nil!19622)) lt!692121)))

(declare-fun b!1781105 () Bool)

(declare-fun res!802833 () Bool)

(assert (=> b!1781105 (=> (not res!802833) (not e!1139857))))

(assert (=> b!1781105 (= res!802833 (= (size!15589 lt!692121) (+ (size!15589 lt!691858) (size!15589 (Cons!19622 (head!4160 lt!691866) Nil!19622)))))))

(declare-fun b!1781104 () Bool)

(assert (=> b!1781104 (= e!1139858 (Cons!19622 (h!25023 lt!691858) (++!5339 (t!166503 lt!691858) (Cons!19622 (head!4160 lt!691866) Nil!19622))))))

(declare-fun b!1781103 () Bool)

(assert (=> b!1781103 (= e!1139858 (Cons!19622 (head!4160 lt!691866) Nil!19622))))

(assert (= (and d!543902 c!289790) b!1781103))

(assert (= (and d!543902 (not c!289790)) b!1781104))

(assert (= (and d!543902 res!802834) b!1781105))

(assert (= (and b!1781105 res!802833) b!1781106))

(declare-fun m!2203313 () Bool)

(assert (=> d!543902 m!2203313))

(assert (=> d!543902 m!2202833))

(declare-fun m!2203315 () Bool)

(assert (=> d!543902 m!2203315))

(declare-fun m!2203317 () Bool)

(assert (=> b!1781105 m!2203317))

(assert (=> b!1781105 m!2202735))

(declare-fun m!2203319 () Bool)

(assert (=> b!1781105 m!2203319))

(declare-fun m!2203321 () Bool)

(assert (=> b!1781104 m!2203321))

(assert (=> b!1780531 d!543902))

(declare-fun d!543904 () Bool)

(assert (=> d!543904 (not (matchR!2316 lt!691865 lt!691872))))

(declare-fun lt!692124 () Unit!33910)

(declare-fun choose!11176 (Regex!4843 List!19692 List!19692) Unit!33910)

(assert (=> d!543904 (= lt!692124 (choose!11176 lt!691865 lt!691857 lt!691872))))

(assert (=> d!543904 (validRegex!1963 lt!691865)))

(assert (=> d!543904 (= (lemmaNotPrefixMatchThenCannotMatchLonger!154 lt!691865 lt!691857 lt!691872) lt!692124)))

(declare-fun bs!405180 () Bool)

(assert (= bs!405180 d!543904))

(assert (=> bs!405180 m!2202601))

(declare-fun m!2203323 () Bool)

(assert (=> bs!405180 m!2203323))

(assert (=> bs!405180 m!2202957))

(assert (=> b!1780531 d!543904))

(declare-fun b!1781107 () Bool)

(declare-fun e!1139861 () Bool)

(declare-fun e!1139860 () Bool)

(assert (=> b!1781107 (= e!1139861 e!1139860)))

(declare-fun res!802839 () Bool)

(assert (=> b!1781107 (=> (not res!802839) (not e!1139860))))

(declare-fun lt!692125 () Bool)

(assert (=> b!1781107 (= res!802839 (not lt!692125))))

(declare-fun b!1781108 () Bool)

(declare-fun e!1139862 () Bool)

(assert (=> b!1781108 (= e!1139862 (not lt!692125))))

(declare-fun b!1781109 () Bool)

(declare-fun e!1139863 () Bool)

(assert (=> b!1781109 (= e!1139863 (= (head!4160 lt!691872) (c!289676 lt!691865)))))

(declare-fun b!1781110 () Bool)

(declare-fun res!802841 () Bool)

(assert (=> b!1781110 (=> (not res!802841) (not e!1139863))))

(assert (=> b!1781110 (= res!802841 (isEmpty!12398 (tail!2665 lt!691872)))))

(declare-fun b!1781111 () Bool)

(declare-fun e!1139865 () Bool)

(assert (=> b!1781111 (= e!1139865 e!1139862)))

(declare-fun c!289793 () Bool)

(assert (=> b!1781111 (= c!289793 ((_ is EmptyLang!4843) lt!691865))))

(declare-fun b!1781112 () Bool)

(declare-fun res!802838 () Bool)

(assert (=> b!1781112 (=> res!802838 e!1139861)))

(assert (=> b!1781112 (= res!802838 (not ((_ is ElementMatch!4843) lt!691865)))))

(assert (=> b!1781112 (= e!1139862 e!1139861)))

(declare-fun b!1781113 () Bool)

(declare-fun call!111294 () Bool)

(assert (=> b!1781113 (= e!1139865 (= lt!692125 call!111294))))

(declare-fun b!1781115 () Bool)

(declare-fun res!802836 () Bool)

(assert (=> b!1781115 (=> res!802836 e!1139861)))

(assert (=> b!1781115 (= res!802836 e!1139863)))

(declare-fun res!802837 () Bool)

(assert (=> b!1781115 (=> (not res!802837) (not e!1139863))))

(assert (=> b!1781115 (= res!802837 lt!692125)))

(declare-fun b!1781116 () Bool)

(declare-fun res!802840 () Bool)

(declare-fun e!1139859 () Bool)

(assert (=> b!1781116 (=> res!802840 e!1139859)))

(assert (=> b!1781116 (= res!802840 (not (isEmpty!12398 (tail!2665 lt!691872))))))

(declare-fun bm!111289 () Bool)

(assert (=> bm!111289 (= call!111294 (isEmpty!12398 lt!691872))))

(declare-fun b!1781117 () Bool)

(declare-fun res!802842 () Bool)

(assert (=> b!1781117 (=> (not res!802842) (not e!1139863))))

(assert (=> b!1781117 (= res!802842 (not call!111294))))

(declare-fun b!1781118 () Bool)

(assert (=> b!1781118 (= e!1139860 e!1139859)))

(declare-fun res!802835 () Bool)

(assert (=> b!1781118 (=> res!802835 e!1139859)))

(assert (=> b!1781118 (= res!802835 call!111294)))

(declare-fun b!1781114 () Bool)

(assert (=> b!1781114 (= e!1139859 (not (= (head!4160 lt!691872) (c!289676 lt!691865))))))

(declare-fun d!543906 () Bool)

(assert (=> d!543906 e!1139865))

(declare-fun c!289791 () Bool)

(assert (=> d!543906 (= c!289791 ((_ is EmptyExpr!4843) lt!691865))))

(declare-fun e!1139864 () Bool)

(assert (=> d!543906 (= lt!692125 e!1139864)))

(declare-fun c!289792 () Bool)

(assert (=> d!543906 (= c!289792 (isEmpty!12398 lt!691872))))

(assert (=> d!543906 (validRegex!1963 lt!691865)))

(assert (=> d!543906 (= (matchR!2316 lt!691865 lt!691872) lt!692125)))

(declare-fun b!1781119 () Bool)

(assert (=> b!1781119 (= e!1139864 (matchR!2316 (derivativeStep!1258 lt!691865 (head!4160 lt!691872)) (tail!2665 lt!691872)))))

(declare-fun b!1781120 () Bool)

(assert (=> b!1781120 (= e!1139864 (nullable!1489 lt!691865))))

(assert (= (and d!543906 c!289792) b!1781120))

(assert (= (and d!543906 (not c!289792)) b!1781119))

(assert (= (and d!543906 c!289791) b!1781113))

(assert (= (and d!543906 (not c!289791)) b!1781111))

(assert (= (and b!1781111 c!289793) b!1781108))

(assert (= (and b!1781111 (not c!289793)) b!1781112))

(assert (= (and b!1781112 (not res!802838)) b!1781115))

(assert (= (and b!1781115 res!802837) b!1781117))

(assert (= (and b!1781117 res!802842) b!1781110))

(assert (= (and b!1781110 res!802841) b!1781109))

(assert (= (and b!1781115 (not res!802836)) b!1781107))

(assert (= (and b!1781107 res!802839) b!1781118))

(assert (= (and b!1781118 (not res!802835)) b!1781116))

(assert (= (and b!1781116 (not res!802840)) b!1781114))

(assert (= (or b!1781113 b!1781117 b!1781118) bm!111289))

(assert (=> b!1781114 m!2202999))

(assert (=> b!1781116 m!2202991))

(assert (=> b!1781116 m!2202991))

(assert (=> b!1781116 m!2203275))

(assert (=> d!543906 m!2203277))

(assert (=> d!543906 m!2202957))

(assert (=> b!1781120 m!2202959))

(assert (=> bm!111289 m!2203277))

(assert (=> b!1781110 m!2202991))

(assert (=> b!1781110 m!2202991))

(assert (=> b!1781110 m!2203275))

(assert (=> b!1781109 m!2202999))

(assert (=> b!1781119 m!2202999))

(assert (=> b!1781119 m!2202999))

(declare-fun m!2203325 () Bool)

(assert (=> b!1781119 m!2203325))

(assert (=> b!1781119 m!2202991))

(assert (=> b!1781119 m!2203325))

(assert (=> b!1781119 m!2202991))

(declare-fun m!2203327 () Bool)

(assert (=> b!1781119 m!2203327))

(assert (=> b!1780531 d!543906))

(declare-fun d!543908 () Bool)

(declare-fun lt!692128 () List!19692)

(assert (=> d!543908 (= (++!5339 lt!691858 lt!692128) lt!691873)))

(declare-fun e!1139868 () List!19692)

(assert (=> d!543908 (= lt!692128 e!1139868)))

(declare-fun c!289796 () Bool)

(assert (=> d!543908 (= c!289796 ((_ is Cons!19622) lt!691858))))

(assert (=> d!543908 (>= (size!15589 lt!691873) (size!15589 lt!691858))))

(assert (=> d!543908 (= (getSuffix!922 lt!691873 lt!691858) lt!692128)))

(declare-fun b!1781125 () Bool)

(assert (=> b!1781125 (= e!1139868 (getSuffix!922 (tail!2665 lt!691873) (t!166503 lt!691858)))))

(declare-fun b!1781126 () Bool)

(assert (=> b!1781126 (= e!1139868 lt!691873)))

(assert (= (and d!543908 c!289796) b!1781125))

(assert (= (and d!543908 (not c!289796)) b!1781126))

(declare-fun m!2203329 () Bool)

(assert (=> d!543908 m!2203329))

(assert (=> d!543908 m!2202997))

(assert (=> d!543908 m!2202735))

(assert (=> b!1781125 m!2202993))

(assert (=> b!1781125 m!2202993))

(declare-fun m!2203331 () Bool)

(assert (=> b!1781125 m!2203331))

(assert (=> b!1780531 d!543908))

(declare-fun d!543910 () Bool)

(assert (=> d!543910 (= suffix!1421 lt!691866)))

(declare-fun lt!692131 () Unit!33910)

(declare-fun choose!11177 (List!19692 List!19692 List!19692 List!19692 List!19692) Unit!33910)

(assert (=> d!543910 (= lt!692131 (choose!11177 lt!691858 suffix!1421 lt!691858 lt!691866 lt!691873))))

(assert (=> d!543910 (isPrefix!1755 lt!691858 lt!691873)))

(assert (=> d!543910 (= (lemmaSamePrefixThenSameSuffix!866 lt!691858 suffix!1421 lt!691858 lt!691866 lt!691873) lt!692131)))

(declare-fun bs!405181 () Bool)

(assert (= bs!405181 d!543910))

(declare-fun m!2203333 () Bool)

(assert (=> bs!405181 m!2203333))

(assert (=> bs!405181 m!2202575))

(assert (=> b!1780531 d!543910))

(declare-fun b!1781129 () Bool)

(declare-fun e!1139871 () Bool)

(assert (=> b!1781129 (= e!1139871 (isPrefix!1755 (tail!2665 lt!691857) (tail!2665 lt!691872)))))

(declare-fun d!543912 () Bool)

(declare-fun e!1139870 () Bool)

(assert (=> d!543912 e!1139870))

(declare-fun res!802845 () Bool)

(assert (=> d!543912 (=> res!802845 e!1139870)))

(declare-fun lt!692132 () Bool)

(assert (=> d!543912 (= res!802845 (not lt!692132))))

(declare-fun e!1139869 () Bool)

(assert (=> d!543912 (= lt!692132 e!1139869)))

(declare-fun res!802843 () Bool)

(assert (=> d!543912 (=> res!802843 e!1139869)))

(assert (=> d!543912 (= res!802843 ((_ is Nil!19622) lt!691857))))

(assert (=> d!543912 (= (isPrefix!1755 lt!691857 lt!691872) lt!692132)))

(declare-fun b!1781130 () Bool)

(assert (=> b!1781130 (= e!1139870 (>= (size!15589 lt!691872) (size!15589 lt!691857)))))

(declare-fun b!1781127 () Bool)

(assert (=> b!1781127 (= e!1139869 e!1139871)))

(declare-fun res!802844 () Bool)

(assert (=> b!1781127 (=> (not res!802844) (not e!1139871))))

(assert (=> b!1781127 (= res!802844 (not ((_ is Nil!19622) lt!691872)))))

(declare-fun b!1781128 () Bool)

(declare-fun res!802846 () Bool)

(assert (=> b!1781128 (=> (not res!802846) (not e!1139871))))

(assert (=> b!1781128 (= res!802846 (= (head!4160 lt!691857) (head!4160 lt!691872)))))

(assert (= (and d!543912 (not res!802843)) b!1781127))

(assert (= (and b!1781127 res!802844) b!1781128))

(assert (= (and b!1781128 res!802846) b!1781129))

(assert (= (and d!543912 (not res!802845)) b!1781130))

(assert (=> b!1781129 m!2202803))

(assert (=> b!1781129 m!2202991))

(assert (=> b!1781129 m!2202803))

(assert (=> b!1781129 m!2202991))

(declare-fun m!2203335 () Bool)

(assert (=> b!1781129 m!2203335))

(assert (=> b!1781130 m!2202587))

(declare-fun m!2203337 () Bool)

(assert (=> b!1781130 m!2203337))

(assert (=> b!1781128 m!2202799))

(assert (=> b!1781128 m!2202999))

(assert (=> b!1780531 d!543912))

(declare-fun d!543914 () Bool)

(assert (=> d!543914 (matchR!2316 (rulesRegex!871 thiss!24550 rules!3447) (list!7977 (charsOf!2164 (_1!11009 lt!691836))))))

(declare-fun lt!692133 () Unit!33910)

(assert (=> d!543914 (= lt!692133 (choose!11167 thiss!24550 rules!3447 lt!691873 (_1!11009 lt!691836) (rule!5587 (_1!11009 lt!691836)) (_2!11009 lt!691836)))))

(assert (=> d!543914 (not (isEmpty!12399 rules!3447))))

(assert (=> d!543914 (= (lemmaMaxPrefixThenMatchesRulesRegex!222 thiss!24550 rules!3447 lt!691873 (_1!11009 lt!691836) (rule!5587 (_1!11009 lt!691836)) (_2!11009 lt!691836)) lt!692133)))

(declare-fun bs!405182 () Bool)

(assert (= bs!405182 d!543914))

(assert (=> bs!405182 m!2202495))

(assert (=> bs!405182 m!2202555))

(assert (=> bs!405182 m!2202579))

(assert (=> bs!405182 m!2202629))

(assert (=> bs!405182 m!2202629))

(assert (=> bs!405182 m!2202579))

(declare-fun m!2203339 () Bool)

(assert (=> bs!405182 m!2203339))

(declare-fun m!2203341 () Bool)

(assert (=> bs!405182 m!2203341))

(assert (=> bs!405182 m!2202555))

(assert (=> b!1780531 d!543914))

(declare-fun d!543916 () Bool)

(assert (=> d!543916 (= (head!4160 lt!691866) (h!25023 lt!691866))))

(assert (=> b!1780531 d!543916))

(declare-fun d!543918 () Bool)

(assert (=> d!543918 (isPrefix!1755 (++!5339 lt!691858 (Cons!19622 (head!4160 (getSuffix!922 lt!691873 lt!691858)) Nil!19622)) lt!691873)))

(declare-fun lt!692136 () Unit!33910)

(declare-fun choose!11178 (List!19692 List!19692) Unit!33910)

(assert (=> d!543918 (= lt!692136 (choose!11178 lt!691858 lt!691873))))

(assert (=> d!543918 (isPrefix!1755 lt!691858 lt!691873)))

(assert (=> d!543918 (= (lemmaAddHeadSuffixToPrefixStillPrefix!291 lt!691858 lt!691873) lt!692136)))

(declare-fun bs!405183 () Bool)

(assert (= bs!405183 d!543918))

(assert (=> bs!405183 m!2202609))

(assert (=> bs!405183 m!2202575))

(assert (=> bs!405183 m!2202609))

(declare-fun m!2203343 () Bool)

(assert (=> bs!405183 m!2203343))

(declare-fun m!2203345 () Bool)

(assert (=> bs!405183 m!2203345))

(declare-fun m!2203347 () Bool)

(assert (=> bs!405183 m!2203347))

(assert (=> bs!405183 m!2203345))

(declare-fun m!2203349 () Bool)

(assert (=> bs!405183 m!2203349))

(assert (=> b!1780531 d!543918))

(declare-fun d!543920 () Bool)

(assert (=> d!543920 (= suffix!1421 (_2!11009 lt!691836))))

(declare-fun lt!692137 () Unit!33910)

(assert (=> d!543920 (= lt!692137 (choose!11177 lt!691858 suffix!1421 lt!691858 (_2!11009 lt!691836) lt!691873))))

(assert (=> d!543920 (isPrefix!1755 lt!691858 lt!691873)))

(assert (=> d!543920 (= (lemmaSamePrefixThenSameSuffix!866 lt!691858 suffix!1421 lt!691858 (_2!11009 lt!691836) lt!691873) lt!692137)))

(declare-fun bs!405184 () Bool)

(assert (= bs!405184 d!543920))

(declare-fun m!2203351 () Bool)

(assert (=> bs!405184 m!2203351))

(assert (=> bs!405184 m!2202575))

(assert (=> b!1780509 d!543920))

(declare-fun d!543922 () Bool)

(assert (=> d!543922 (= lt!691872 lt!691858)))

(declare-fun lt!692140 () Unit!33910)

(declare-fun choose!11179 (List!19692 List!19692 List!19692) Unit!33910)

(assert (=> d!543922 (= lt!692140 (choose!11179 lt!691872 lt!691858 lt!691873))))

(assert (=> d!543922 (isPrefix!1755 lt!691872 lt!691873)))

(assert (=> d!543922 (= (lemmaIsPrefixSameLengthThenSameList!251 lt!691872 lt!691858 lt!691873) lt!692140)))

(declare-fun bs!405185 () Bool)

(assert (= bs!405185 d!543922))

(declare-fun m!2203353 () Bool)

(assert (=> bs!405185 m!2203353))

(assert (=> bs!405185 m!2202559))

(assert (=> b!1780509 d!543922))

(declare-fun d!543924 () Bool)

(declare-fun c!289797 () Bool)

(assert (=> d!543924 (= c!289797 ((_ is Node!6527) (c!289677 (dynLambda!9631 (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) (dynLambda!9632 (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) lt!691868)))))))

(declare-fun e!1139872 () Bool)

(assert (=> d!543924 (= (inv!25538 (c!289677 (dynLambda!9631 (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) (dynLambda!9632 (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) lt!691868)))) e!1139872)))

(declare-fun b!1781131 () Bool)

(assert (=> b!1781131 (= e!1139872 (inv!25541 (c!289677 (dynLambda!9631 (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) (dynLambda!9632 (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) lt!691868)))))))

(declare-fun b!1781132 () Bool)

(declare-fun e!1139873 () Bool)

(assert (=> b!1781132 (= e!1139872 e!1139873)))

(declare-fun res!802847 () Bool)

(assert (=> b!1781132 (= res!802847 (not ((_ is Leaf!9505) (c!289677 (dynLambda!9631 (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) (dynLambda!9632 (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) lt!691868))))))))

(assert (=> b!1781132 (=> res!802847 e!1139873)))

(declare-fun b!1781133 () Bool)

(assert (=> b!1781133 (= e!1139873 (inv!25542 (c!289677 (dynLambda!9631 (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) (dynLambda!9632 (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) lt!691868)))))))

(assert (= (and d!543924 c!289797) b!1781131))

(assert (= (and d!543924 (not c!289797)) b!1781132))

(assert (= (and b!1781132 (not res!802847)) b!1781133))

(declare-fun m!2203355 () Bool)

(assert (=> b!1781131 m!2203355))

(declare-fun m!2203357 () Bool)

(assert (=> b!1781133 m!2203357))

(assert (=> b!1780553 d!543924))

(declare-fun d!543926 () Bool)

(assert (=> d!543926 (= (inv!25539 (dynLambda!9631 (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) (dynLambda!9632 (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) lt!691868))) (isBalanced!2042 (c!289677 (dynLambda!9631 (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) (dynLambda!9632 (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) lt!691868)))))))

(declare-fun bs!405186 () Bool)

(assert (= bs!405186 d!543926))

(declare-fun m!2203359 () Bool)

(assert (=> bs!405186 m!2203359))

(assert (=> tb!108203 d!543926))

(declare-fun d!543928 () Bool)

(assert (=> d!543928 (= (isEmpty!12399 rules!3447) ((_ is Nil!19623) rules!3447))))

(assert (=> b!1780513 d!543928))

(declare-fun d!543930 () Bool)

(assert (=> d!543930 (= (isEmpty!12398 suffix!1421) ((_ is Nil!19622) suffix!1421))))

(assert (=> b!1780534 d!543930))

(declare-fun d!543932 () Bool)

(declare-fun lt!692143 () Bool)

(declare-fun content!2855 (List!19693) (InoxSet Rule!6830))

(assert (=> d!543932 (= lt!692143 (select (content!2855 rules!3447) (rule!5587 (_1!11009 lt!691836))))))

(declare-fun e!1139878 () Bool)

(assert (=> d!543932 (= lt!692143 e!1139878)))

(declare-fun res!802853 () Bool)

(assert (=> d!543932 (=> (not res!802853) (not e!1139878))))

(assert (=> d!543932 (= res!802853 ((_ is Cons!19623) rules!3447))))

(assert (=> d!543932 (= (contains!3547 rules!3447 (rule!5587 (_1!11009 lt!691836))) lt!692143)))

(declare-fun b!1781138 () Bool)

(declare-fun e!1139879 () Bool)

(assert (=> b!1781138 (= e!1139878 e!1139879)))

(declare-fun res!802852 () Bool)

(assert (=> b!1781138 (=> res!802852 e!1139879)))

(assert (=> b!1781138 (= res!802852 (= (h!25024 rules!3447) (rule!5587 (_1!11009 lt!691836))))))

(declare-fun b!1781139 () Bool)

(assert (=> b!1781139 (= e!1139879 (contains!3547 (t!166504 rules!3447) (rule!5587 (_1!11009 lt!691836))))))

(assert (= (and d!543932 res!802853) b!1781138))

(assert (= (and b!1781138 (not res!802852)) b!1781139))

(declare-fun m!2203361 () Bool)

(assert (=> d!543932 m!2203361))

(declare-fun m!2203363 () Bool)

(assert (=> d!543932 m!2203363))

(declare-fun m!2203365 () Bool)

(assert (=> b!1781139 m!2203365))

(assert (=> b!1780533 d!543932))

(declare-fun d!543934 () Bool)

(assert (=> d!543934 (= (isEmpty!12398 (_2!11009 lt!691862)) ((_ is Nil!19622) (_2!11009 lt!691862)))))

(assert (=> b!1780506 d!543934))

(declare-fun d!543936 () Bool)

(assert (=> d!543936 (= (size!15588 (_1!11009 lt!691836)) (size!15589 (originalCharacters!4329 (_1!11009 lt!691836))))))

(declare-fun Unit!33919 () Unit!33910)

(assert (=> d!543936 (= (lemmaCharactersSize!573 (_1!11009 lt!691836)) Unit!33919)))

(declare-fun bs!405187 () Bool)

(assert (= bs!405187 d!543936))

(declare-fun m!2203367 () Bool)

(assert (=> bs!405187 m!2203367))

(assert (=> b!1780527 d!543936))

(declare-fun b!1781146 () Bool)

(declare-fun e!1139884 () Bool)

(assert (=> b!1781146 (= e!1139884 true)))

(declare-fun d!543938 () Bool)

(assert (=> d!543938 e!1139884))

(assert (= d!543938 b!1781146))

(declare-fun lambda!70671 () Int)

(declare-fun order!12657 () Int)

(declare-fun dynLambda!9633 (Int Int) Int)

(assert (=> b!1781146 (< (dynLambda!9628 order!12651 (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836))))) (dynLambda!9633 order!12657 lambda!70671))))

(assert (=> b!1781146 (< (dynLambda!9630 order!12655 (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836))))) (dynLambda!9633 order!12657 lambda!70671))))

(assert (=> d!543938 (= (dynLambda!9632 (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) lt!691868) (dynLambda!9632 (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) (seqFromList!2484 (originalCharacters!4329 (_1!11009 lt!691836)))))))

(declare-fun lt!692146 () Unit!33910)

(declare-fun Forall2of!149 (Int BalanceConc!12998 BalanceConc!12998) Unit!33910)

(assert (=> d!543938 (= lt!692146 (Forall2of!149 lambda!70671 lt!691868 (seqFromList!2484 (originalCharacters!4329 (_1!11009 lt!691836)))))))

(assert (=> d!543938 (= (list!7977 lt!691868) (list!7977 (seqFromList!2484 (originalCharacters!4329 (_1!11009 lt!691836)))))))

(assert (=> d!543938 (= (lemmaEqSameImage!426 (transformation!3515 (rule!5587 (_1!11009 lt!691836))) lt!691868 (seqFromList!2484 (originalCharacters!4329 (_1!11009 lt!691836)))) lt!692146)))

(declare-fun b_lambda!58297 () Bool)

(assert (=> (not b_lambda!58297) (not d!543938)))

(assert (=> d!543938 t!166491))

(declare-fun b_and!136541 () Bool)

(assert (= b_and!136535 (and (=> t!166491 result!130182) b_and!136541)))

(assert (=> d!543938 t!166493))

(declare-fun b_and!136543 () Bool)

(assert (= b_and!136537 (and (=> t!166493 result!130186) b_and!136543)))

(assert (=> d!543938 t!166495))

(declare-fun b_and!136545 () Bool)

(assert (= b_and!136539 (and (=> t!166495 result!130188) b_and!136545)))

(declare-fun b_lambda!58299 () Bool)

(assert (=> (not b_lambda!58299) (not d!543938)))

(declare-fun tb!108239 () Bool)

(declare-fun t!166524 () Bool)

(assert (=> (and b!1780528 (= (toValue!5042 (transformation!3515 (h!25024 rules!3447))) (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836))))) t!166524) tb!108239))

(declare-fun result!130214 () Bool)

(assert (=> tb!108239 (= result!130214 (inv!21 (dynLambda!9632 (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) (seqFromList!2484 (originalCharacters!4329 (_1!11009 lt!691836))))))))

(declare-fun m!2203369 () Bool)

(assert (=> tb!108239 m!2203369))

(assert (=> d!543938 t!166524))

(declare-fun b_and!136547 () Bool)

(assert (= b_and!136541 (and (=> t!166524 result!130214) b_and!136547)))

(declare-fun t!166526 () Bool)

(declare-fun tb!108241 () Bool)

(assert (=> (and b!1780510 (= (toValue!5042 (transformation!3515 (rule!5587 token!523))) (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836))))) t!166526) tb!108241))

(declare-fun result!130216 () Bool)

(assert (= result!130216 result!130214))

(assert (=> d!543938 t!166526))

(declare-fun b_and!136549 () Bool)

(assert (= b_and!136543 (and (=> t!166526 result!130216) b_and!136549)))

(declare-fun t!166528 () Bool)

(declare-fun tb!108243 () Bool)

(assert (=> (and b!1780522 (= (toValue!5042 (transformation!3515 rule!422)) (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836))))) t!166528) tb!108243))

(declare-fun result!130218 () Bool)

(assert (= result!130218 result!130214))

(assert (=> d!543938 t!166528))

(declare-fun b_and!136551 () Bool)

(assert (= b_and!136545 (and (=> t!166528 result!130218) b_and!136551)))

(assert (=> d!543938 m!2202467))

(assert (=> d!543938 m!2202479))

(declare-fun m!2203371 () Bool)

(assert (=> d!543938 m!2203371))

(assert (=> d!543938 m!2202479))

(declare-fun m!2203373 () Bool)

(assert (=> d!543938 m!2203373))

(assert (=> d!543938 m!2202479))

(declare-fun m!2203375 () Bool)

(assert (=> d!543938 m!2203375))

(assert (=> d!543938 m!2202565))

(assert (=> b!1780527 d!543938))

(declare-fun d!543940 () Bool)

(declare-fun lt!692147 () Int)

(assert (=> d!543940 (= lt!692147 (size!15589 (list!7977 lt!691868)))))

(assert (=> d!543940 (= lt!692147 (size!15591 (c!289677 lt!691868)))))

(assert (=> d!543940 (= (size!15590 lt!691868) lt!692147)))

(declare-fun bs!405188 () Bool)

(assert (= bs!405188 d!543940))

(assert (=> bs!405188 m!2202565))

(assert (=> bs!405188 m!2202565))

(declare-fun m!2203377 () Bool)

(assert (=> bs!405188 m!2203377))

(declare-fun m!2203379 () Bool)

(assert (=> bs!405188 m!2203379))

(assert (=> b!1780527 d!543940))

(declare-fun d!543942 () Bool)

(declare-fun fromListB!1138 (List!19692) BalanceConc!12998)

(assert (=> d!543942 (= (seqFromList!2484 (originalCharacters!4329 (_1!11009 lt!691836))) (fromListB!1138 (originalCharacters!4329 (_1!11009 lt!691836))))))

(declare-fun bs!405189 () Bool)

(assert (= bs!405189 d!543942))

(declare-fun m!2203381 () Bool)

(assert (=> bs!405189 m!2203381))

(assert (=> b!1780527 d!543942))

(declare-fun d!543944 () Bool)

(assert (=> d!543944 (= (apply!5315 (transformation!3515 (rule!5587 (_1!11009 lt!691836))) lt!691868) (dynLambda!9632 (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) lt!691868))))

(declare-fun b_lambda!58301 () Bool)

(assert (=> (not b_lambda!58301) (not d!543944)))

(assert (=> d!543944 t!166491))

(declare-fun b_and!136553 () Bool)

(assert (= b_and!136547 (and (=> t!166491 result!130182) b_and!136553)))

(assert (=> d!543944 t!166493))

(declare-fun b_and!136555 () Bool)

(assert (= b_and!136549 (and (=> t!166493 result!130186) b_and!136555)))

(assert (=> d!543944 t!166495))

(declare-fun b_and!136557 () Bool)

(assert (= b_and!136551 (and (=> t!166495 result!130188) b_and!136557)))

(assert (=> d!543944 m!2202467))

(assert (=> b!1780527 d!543944))

(declare-fun d!543946 () Bool)

(declare-fun lt!692148 () List!19692)

(assert (=> d!543946 (= (++!5339 lt!691872 lt!692148) lt!691873)))

(declare-fun e!1139886 () List!19692)

(assert (=> d!543946 (= lt!692148 e!1139886)))

(declare-fun c!289798 () Bool)

(assert (=> d!543946 (= c!289798 ((_ is Cons!19622) lt!691872))))

(assert (=> d!543946 (>= (size!15589 lt!691873) (size!15589 lt!691872))))

(assert (=> d!543946 (= (getSuffix!922 lt!691873 lt!691872) lt!692148)))

(declare-fun b!1781147 () Bool)

(assert (=> b!1781147 (= e!1139886 (getSuffix!922 (tail!2665 lt!691873) (t!166503 lt!691872)))))

(declare-fun b!1781148 () Bool)

(assert (=> b!1781148 (= e!1139886 lt!691873)))

(assert (= (and d!543946 c!289798) b!1781147))

(assert (= (and d!543946 (not c!289798)) b!1781148))

(declare-fun m!2203383 () Bool)

(assert (=> d!543946 m!2203383))

(assert (=> d!543946 m!2202997))

(assert (=> d!543946 m!2202587))

(assert (=> b!1781147 m!2202993))

(assert (=> b!1781147 m!2202993))

(declare-fun m!2203385 () Bool)

(assert (=> b!1781147 m!2203385))

(assert (=> b!1780505 d!543946))

(declare-fun d!543948 () Bool)

(assert (=> d!543948 (= (seqFromList!2484 lt!691872) (fromListB!1138 lt!691872))))

(declare-fun bs!405190 () Bool)

(assert (= bs!405190 d!543948))

(declare-fun m!2203387 () Bool)

(assert (=> bs!405190 m!2203387))

(assert (=> b!1780505 d!543948))

(declare-fun d!543950 () Bool)

(assert (=> d!543950 (= (apply!5315 (transformation!3515 (rule!5587 (_1!11009 lt!691836))) (seqFromList!2484 lt!691872)) (dynLambda!9632 (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) (seqFromList!2484 lt!691872)))))

(declare-fun b_lambda!58303 () Bool)

(assert (=> (not b_lambda!58303) (not d!543950)))

(declare-fun t!166530 () Bool)

(declare-fun tb!108245 () Bool)

(assert (=> (and b!1780528 (= (toValue!5042 (transformation!3515 (h!25024 rules!3447))) (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836))))) t!166530) tb!108245))

(declare-fun result!130220 () Bool)

(assert (=> tb!108245 (= result!130220 (inv!21 (dynLambda!9632 (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) (seqFromList!2484 lt!691872))))))

(declare-fun m!2203389 () Bool)

(assert (=> tb!108245 m!2203389))

(assert (=> d!543950 t!166530))

(declare-fun b_and!136559 () Bool)

(assert (= b_and!136553 (and (=> t!166530 result!130220) b_and!136559)))

(declare-fun tb!108247 () Bool)

(declare-fun t!166532 () Bool)

(assert (=> (and b!1780510 (= (toValue!5042 (transformation!3515 (rule!5587 token!523))) (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836))))) t!166532) tb!108247))

(declare-fun result!130222 () Bool)

(assert (= result!130222 result!130220))

(assert (=> d!543950 t!166532))

(declare-fun b_and!136561 () Bool)

(assert (= b_and!136555 (and (=> t!166532 result!130222) b_and!136561)))

(declare-fun t!166534 () Bool)

(declare-fun tb!108249 () Bool)

(assert (=> (and b!1780522 (= (toValue!5042 (transformation!3515 rule!422)) (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836))))) t!166534) tb!108249))

(declare-fun result!130224 () Bool)

(assert (= result!130224 result!130220))

(assert (=> d!543950 t!166534))

(declare-fun b_and!136563 () Bool)

(assert (= b_and!136557 (and (=> t!166534 result!130224) b_and!136563)))

(assert (=> d!543950 m!2202589))

(declare-fun m!2203391 () Bool)

(assert (=> d!543950 m!2203391))

(assert (=> b!1780505 d!543950))

(declare-fun d!543952 () Bool)

(assert (=> d!543952 (= (maxPrefixOneRule!1067 thiss!24550 (rule!5587 (_1!11009 lt!691836)) lt!691873) (Some!4051 (tuple2!19215 (Token!6597 (apply!5315 (transformation!3515 (rule!5587 (_1!11009 lt!691836))) (seqFromList!2484 lt!691872)) (rule!5587 (_1!11009 lt!691836)) (size!15589 lt!691872) lt!691872) (_2!11009 lt!691836))))))

(declare-fun lt!692185 () Unit!33910)

(declare-fun choose!11182 (LexerInterface!3144 List!19693 List!19692 List!19692 List!19692 Rule!6830) Unit!33910)

(assert (=> d!543952 (= lt!692185 (choose!11182 thiss!24550 rules!3447 lt!691872 lt!691873 (_2!11009 lt!691836) (rule!5587 (_1!11009 lt!691836))))))

(assert (=> d!543952 (not (isEmpty!12399 rules!3447))))

(assert (=> d!543952 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!445 thiss!24550 rules!3447 lt!691872 lt!691873 (_2!11009 lt!691836) (rule!5587 (_1!11009 lt!691836))) lt!692185)))

(declare-fun bs!405191 () Bool)

(assert (= bs!405191 d!543952))

(assert (=> bs!405191 m!2202495))

(declare-fun m!2203393 () Bool)

(assert (=> bs!405191 m!2203393))

(assert (=> bs!405191 m!2202589))

(assert (=> bs!405191 m!2202591))

(assert (=> bs!405191 m!2202587))

(assert (=> bs!405191 m!2202595))

(assert (=> bs!405191 m!2202589))

(assert (=> b!1780505 d!543952))

(declare-fun b!1781271 () Bool)

(declare-fun e!1139957 () Bool)

(declare-fun lt!692228 () Option!4052)

(assert (=> b!1781271 (= e!1139957 (= (size!15588 (_1!11009 (get!6027 lt!692228))) (size!15589 (originalCharacters!4329 (_1!11009 (get!6027 lt!692228))))))))

(declare-fun b!1781272 () Bool)

(declare-fun e!1139955 () Bool)

(assert (=> b!1781272 (= e!1139955 e!1139957)))

(declare-fun res!802901 () Bool)

(assert (=> b!1781272 (=> (not res!802901) (not e!1139957))))

(assert (=> b!1781272 (= res!802901 (matchR!2316 (regex!3515 (rule!5587 (_1!11009 lt!691836))) (list!7977 (charsOf!2164 (_1!11009 (get!6027 lt!692228))))))))

(declare-fun b!1781273 () Bool)

(declare-fun res!802904 () Bool)

(assert (=> b!1781273 (=> (not res!802904) (not e!1139957))))

(assert (=> b!1781273 (= res!802904 (= (value!109850 (_1!11009 (get!6027 lt!692228))) (apply!5315 (transformation!3515 (rule!5587 (_1!11009 (get!6027 lt!692228)))) (seqFromList!2484 (originalCharacters!4329 (_1!11009 (get!6027 lt!692228)))))))))

(declare-fun d!543954 () Bool)

(assert (=> d!543954 e!1139955))

(declare-fun res!802902 () Bool)

(assert (=> d!543954 (=> res!802902 e!1139955)))

(assert (=> d!543954 (= res!802902 (isEmpty!12400 lt!692228))))

(declare-fun e!1139954 () Option!4052)

(assert (=> d!543954 (= lt!692228 e!1139954)))

(declare-fun c!289809 () Bool)

(declare-datatypes ((tuple2!19220 0))(
  ( (tuple2!19221 (_1!11012 List!19692) (_2!11012 List!19692)) )
))
(declare-fun lt!692232 () tuple2!19220)

(assert (=> d!543954 (= c!289809 (isEmpty!12398 (_1!11012 lt!692232)))))

(declare-fun findLongestMatch!394 (Regex!4843 List!19692) tuple2!19220)

(assert (=> d!543954 (= lt!692232 (findLongestMatch!394 (regex!3515 (rule!5587 (_1!11009 lt!691836))) lt!691873))))

(assert (=> d!543954 (ruleValid!1013 thiss!24550 (rule!5587 (_1!11009 lt!691836)))))

(assert (=> d!543954 (= (maxPrefixOneRule!1067 thiss!24550 (rule!5587 (_1!11009 lt!691836)) lt!691873) lt!692228)))

(declare-fun b!1781274 () Bool)

(assert (=> b!1781274 (= e!1139954 (Some!4051 (tuple2!19215 (Token!6597 (apply!5315 (transformation!3515 (rule!5587 (_1!11009 lt!691836))) (seqFromList!2484 (_1!11012 lt!692232))) (rule!5587 (_1!11009 lt!691836)) (size!15590 (seqFromList!2484 (_1!11012 lt!692232))) (_1!11012 lt!692232)) (_2!11012 lt!692232))))))

(declare-fun lt!692230 () Unit!33910)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!451 (Regex!4843 List!19692) Unit!33910)

(assert (=> b!1781274 (= lt!692230 (longestMatchIsAcceptedByMatchOrIsEmpty!451 (regex!3515 (rule!5587 (_1!11009 lt!691836))) lt!691873))))

(declare-fun res!802903 () Bool)

(declare-fun findLongestMatchInner!467 (Regex!4843 List!19692 Int List!19692 List!19692 Int) tuple2!19220)

(assert (=> b!1781274 (= res!802903 (isEmpty!12398 (_1!11012 (findLongestMatchInner!467 (regex!3515 (rule!5587 (_1!11009 lt!691836))) Nil!19622 (size!15589 Nil!19622) lt!691873 lt!691873 (size!15589 lt!691873)))))))

(declare-fun e!1139956 () Bool)

(assert (=> b!1781274 (=> res!802903 e!1139956)))

(assert (=> b!1781274 e!1139956))

(declare-fun lt!692229 () Unit!33910)

(assert (=> b!1781274 (= lt!692229 lt!692230)))

(declare-fun lt!692231 () Unit!33910)

(assert (=> b!1781274 (= lt!692231 (lemmaSemiInverse!653 (transformation!3515 (rule!5587 (_1!11009 lt!691836))) (seqFromList!2484 (_1!11012 lt!692232))))))

(declare-fun b!1781275 () Bool)

(declare-fun res!802906 () Bool)

(assert (=> b!1781275 (=> (not res!802906) (not e!1139957))))

(assert (=> b!1781275 (= res!802906 (= (++!5339 (list!7977 (charsOf!2164 (_1!11009 (get!6027 lt!692228)))) (_2!11009 (get!6027 lt!692228))) lt!691873))))

(declare-fun b!1781276 () Bool)

(assert (=> b!1781276 (= e!1139954 None!4051)))

(declare-fun b!1781277 () Bool)

(declare-fun res!802900 () Bool)

(assert (=> b!1781277 (=> (not res!802900) (not e!1139957))))

(assert (=> b!1781277 (= res!802900 (< (size!15589 (_2!11009 (get!6027 lt!692228))) (size!15589 lt!691873)))))

(declare-fun b!1781278 () Bool)

(declare-fun res!802905 () Bool)

(assert (=> b!1781278 (=> (not res!802905) (not e!1139957))))

(assert (=> b!1781278 (= res!802905 (= (rule!5587 (_1!11009 (get!6027 lt!692228))) (rule!5587 (_1!11009 lt!691836))))))

(declare-fun b!1781279 () Bool)

(assert (=> b!1781279 (= e!1139956 (matchR!2316 (regex!3515 (rule!5587 (_1!11009 lt!691836))) (_1!11012 (findLongestMatchInner!467 (regex!3515 (rule!5587 (_1!11009 lt!691836))) Nil!19622 (size!15589 Nil!19622) lt!691873 lt!691873 (size!15589 lt!691873)))))))

(assert (= (and d!543954 c!289809) b!1781276))

(assert (= (and d!543954 (not c!289809)) b!1781274))

(assert (= (and b!1781274 (not res!802903)) b!1781279))

(assert (= (and d!543954 (not res!802902)) b!1781272))

(assert (= (and b!1781272 res!802901) b!1781275))

(assert (= (and b!1781275 res!802906) b!1781277))

(assert (= (and b!1781277 res!802900) b!1781278))

(assert (= (and b!1781278 res!802905) b!1781273))

(assert (= (and b!1781273 res!802904) b!1781271))

(declare-fun m!2203557 () Bool)

(assert (=> b!1781273 m!2203557))

(declare-fun m!2203559 () Bool)

(assert (=> b!1781273 m!2203559))

(assert (=> b!1781273 m!2203559))

(declare-fun m!2203561 () Bool)

(assert (=> b!1781273 m!2203561))

(assert (=> b!1781275 m!2203557))

(declare-fun m!2203563 () Bool)

(assert (=> b!1781275 m!2203563))

(assert (=> b!1781275 m!2203563))

(declare-fun m!2203565 () Bool)

(assert (=> b!1781275 m!2203565))

(assert (=> b!1781275 m!2203565))

(declare-fun m!2203567 () Bool)

(assert (=> b!1781275 m!2203567))

(assert (=> b!1781271 m!2203557))

(declare-fun m!2203569 () Bool)

(assert (=> b!1781271 m!2203569))

(declare-fun m!2203571 () Bool)

(assert (=> b!1781274 m!2203571))

(declare-fun m!2203573 () Bool)

(assert (=> b!1781274 m!2203573))

(declare-fun m!2203575 () Bool)

(assert (=> b!1781274 m!2203575))

(assert (=> b!1781274 m!2203571))

(declare-fun m!2203577 () Bool)

(assert (=> b!1781274 m!2203577))

(declare-fun m!2203579 () Bool)

(assert (=> b!1781274 m!2203579))

(assert (=> b!1781274 m!2202997))

(assert (=> b!1781274 m!2203571))

(declare-fun m!2203581 () Bool)

(assert (=> b!1781274 m!2203581))

(assert (=> b!1781274 m!2203571))

(assert (=> b!1781274 m!2203575))

(assert (=> b!1781274 m!2202997))

(declare-fun m!2203583 () Bool)

(assert (=> b!1781274 m!2203583))

(declare-fun m!2203585 () Bool)

(assert (=> b!1781274 m!2203585))

(assert (=> b!1781272 m!2203557))

(assert (=> b!1781272 m!2203563))

(assert (=> b!1781272 m!2203563))

(assert (=> b!1781272 m!2203565))

(assert (=> b!1781272 m!2203565))

(declare-fun m!2203587 () Bool)

(assert (=> b!1781272 m!2203587))

(assert (=> b!1781279 m!2203575))

(assert (=> b!1781279 m!2202997))

(assert (=> b!1781279 m!2203575))

(assert (=> b!1781279 m!2202997))

(assert (=> b!1781279 m!2203583))

(declare-fun m!2203589 () Bool)

(assert (=> b!1781279 m!2203589))

(assert (=> b!1781277 m!2203557))

(declare-fun m!2203591 () Bool)

(assert (=> b!1781277 m!2203591))

(assert (=> b!1781277 m!2202997))

(declare-fun m!2203593 () Bool)

(assert (=> d!543954 m!2203593))

(declare-fun m!2203595 () Bool)

(assert (=> d!543954 m!2203595))

(declare-fun m!2203597 () Bool)

(assert (=> d!543954 m!2203597))

(declare-fun m!2203599 () Bool)

(assert (=> d!543954 m!2203599))

(assert (=> b!1781278 m!2203557))

(assert (=> b!1780505 d!543954))

(declare-fun d!543990 () Bool)

(assert (=> d!543990 (= (_2!11009 lt!691836) lt!691856)))

(declare-fun lt!692233 () Unit!33910)

(assert (=> d!543990 (= lt!692233 (choose!11177 lt!691872 (_2!11009 lt!691836) lt!691872 lt!691856 lt!691873))))

(assert (=> d!543990 (isPrefix!1755 lt!691872 lt!691873)))

(assert (=> d!543990 (= (lemmaSamePrefixThenSameSuffix!866 lt!691872 (_2!11009 lt!691836) lt!691872 lt!691856 lt!691873) lt!692233)))

(declare-fun bs!405198 () Bool)

(assert (= bs!405198 d!543990))

(declare-fun m!2203601 () Bool)

(assert (=> bs!405198 m!2203601))

(assert (=> bs!405198 m!2202559))

(assert (=> b!1780505 d!543990))

(declare-fun d!543992 () Bool)

(declare-fun lt!692236 () Int)

(assert (=> d!543992 (>= lt!692236 0)))

(declare-fun e!1139960 () Int)

(assert (=> d!543992 (= lt!692236 e!1139960)))

(declare-fun c!289812 () Bool)

(assert (=> d!543992 (= c!289812 ((_ is Nil!19622) lt!691872))))

(assert (=> d!543992 (= (size!15589 lt!691872) lt!692236)))

(declare-fun b!1781284 () Bool)

(assert (=> b!1781284 (= e!1139960 0)))

(declare-fun b!1781285 () Bool)

(assert (=> b!1781285 (= e!1139960 (+ 1 (size!15589 (t!166503 lt!691872))))))

(assert (= (and d!543992 c!289812) b!1781284))

(assert (= (and d!543992 (not c!289812)) b!1781285))

(declare-fun m!2203603 () Bool)

(assert (=> b!1781285 m!2203603))

(assert (=> b!1780505 d!543992))

(declare-fun d!543994 () Bool)

(declare-fun lt!692237 () Bool)

(assert (=> d!543994 (= lt!692237 (select (content!2855 rules!3447) rule!422))))

(declare-fun e!1139961 () Bool)

(assert (=> d!543994 (= lt!692237 e!1139961)))

(declare-fun res!802908 () Bool)

(assert (=> d!543994 (=> (not res!802908) (not e!1139961))))

(assert (=> d!543994 (= res!802908 ((_ is Cons!19623) rules!3447))))

(assert (=> d!543994 (= (contains!3547 rules!3447 rule!422) lt!692237)))

(declare-fun b!1781286 () Bool)

(declare-fun e!1139962 () Bool)

(assert (=> b!1781286 (= e!1139961 e!1139962)))

(declare-fun res!802907 () Bool)

(assert (=> b!1781286 (=> res!802907 e!1139962)))

(assert (=> b!1781286 (= res!802907 (= (h!25024 rules!3447) rule!422))))

(declare-fun b!1781287 () Bool)

(assert (=> b!1781287 (= e!1139962 (contains!3547 (t!166504 rules!3447) rule!422))))

(assert (= (and d!543994 res!802908) b!1781286))

(assert (= (and b!1781286 (not res!802907)) b!1781287))

(assert (=> d!543994 m!2203361))

(declare-fun m!2203605 () Bool)

(assert (=> d!543994 m!2203605))

(declare-fun m!2203607 () Bool)

(assert (=> b!1781287 m!2203607))

(assert (=> b!1780526 d!543994))

(declare-fun b!1781288 () Bool)

(declare-fun e!1139963 () Bool)

(assert (=> b!1781288 (= e!1139963 (inv!15 (value!109850 token!523)))))

(declare-fun d!543996 () Bool)

(declare-fun c!289813 () Bool)

(assert (=> d!543996 (= c!289813 ((_ is IntegerValue!10815) (value!109850 token!523)))))

(declare-fun e!1139965 () Bool)

(assert (=> d!543996 (= (inv!21 (value!109850 token!523)) e!1139965)))

(declare-fun b!1781289 () Bool)

(declare-fun res!802909 () Bool)

(assert (=> b!1781289 (=> res!802909 e!1139963)))

(assert (=> b!1781289 (= res!802909 (not ((_ is IntegerValue!10817) (value!109850 token!523))))))

(declare-fun e!1139964 () Bool)

(assert (=> b!1781289 (= e!1139964 e!1139963)))

(declare-fun b!1781290 () Bool)

(assert (=> b!1781290 (= e!1139965 (inv!16 (value!109850 token!523)))))

(declare-fun b!1781291 () Bool)

(assert (=> b!1781291 (= e!1139965 e!1139964)))

(declare-fun c!289814 () Bool)

(assert (=> b!1781291 (= c!289814 ((_ is IntegerValue!10816) (value!109850 token!523)))))

(declare-fun b!1781292 () Bool)

(assert (=> b!1781292 (= e!1139964 (inv!17 (value!109850 token!523)))))

(assert (= (and d!543996 c!289813) b!1781290))

(assert (= (and d!543996 (not c!289813)) b!1781291))

(assert (= (and b!1781291 c!289814) b!1781292))

(assert (= (and b!1781291 (not c!289814)) b!1781289))

(assert (= (and b!1781289 (not res!802909)) b!1781288))

(declare-fun m!2203609 () Bool)

(assert (=> b!1781288 m!2203609))

(declare-fun m!2203611 () Bool)

(assert (=> b!1781290 m!2203611))

(declare-fun m!2203613 () Bool)

(assert (=> b!1781292 m!2203613))

(assert (=> b!1780504 d!543996))

(declare-fun d!543998 () Bool)

(declare-fun res!802914 () Bool)

(declare-fun e!1139968 () Bool)

(assert (=> d!543998 (=> (not res!802914) (not e!1139968))))

(assert (=> d!543998 (= res!802914 (not (isEmpty!12398 (originalCharacters!4329 token!523))))))

(assert (=> d!543998 (= (inv!25537 token!523) e!1139968)))

(declare-fun b!1781297 () Bool)

(declare-fun res!802915 () Bool)

(assert (=> b!1781297 (=> (not res!802915) (not e!1139968))))

(assert (=> b!1781297 (= res!802915 (= (originalCharacters!4329 token!523) (list!7977 (dynLambda!9631 (toChars!4901 (transformation!3515 (rule!5587 token!523))) (value!109850 token!523)))))))

(declare-fun b!1781298 () Bool)

(assert (=> b!1781298 (= e!1139968 (= (size!15588 token!523) (size!15589 (originalCharacters!4329 token!523))))))

(assert (= (and d!543998 res!802914) b!1781297))

(assert (= (and b!1781297 res!802915) b!1781298))

(declare-fun b_lambda!58321 () Bool)

(assert (=> (not b_lambda!58321) (not b!1781297)))

(assert (=> b!1781297 t!166512))

(declare-fun b_and!136587 () Bool)

(assert (= b_and!136529 (and (=> t!166512 result!130202) b_and!136587)))

(assert (=> b!1781297 t!166514))

(declare-fun b_and!136589 () Bool)

(assert (= b_and!136531 (and (=> t!166514 result!130204) b_and!136589)))

(assert (=> b!1781297 t!166516))

(declare-fun b_and!136591 () Bool)

(assert (= b_and!136533 (and (=> t!166516 result!130206) b_and!136591)))

(declare-fun m!2203615 () Bool)

(assert (=> d!543998 m!2203615))

(assert (=> b!1781297 m!2202773))

(assert (=> b!1781297 m!2202773))

(declare-fun m!2203617 () Bool)

(assert (=> b!1781297 m!2203617))

(declare-fun m!2203619 () Bool)

(assert (=> b!1781298 m!2203619))

(assert (=> start!177086 d!543998))

(declare-fun b!1781299 () Bool)

(declare-fun e!1139971 () Bool)

(declare-fun e!1139970 () Bool)

(assert (=> b!1781299 (= e!1139971 e!1139970)))

(declare-fun res!802920 () Bool)

(assert (=> b!1781299 (=> (not res!802920) (not e!1139970))))

(declare-fun lt!692238 () Bool)

(assert (=> b!1781299 (= res!802920 (not lt!692238))))

(declare-fun b!1781300 () Bool)

(declare-fun e!1139972 () Bool)

(assert (=> b!1781300 (= e!1139972 (not lt!692238))))

(declare-fun b!1781301 () Bool)

(declare-fun e!1139973 () Bool)

(assert (=> b!1781301 (= e!1139973 (= (head!4160 (list!7977 (charsOf!2164 (_1!11009 lt!691836)))) (c!289676 (regex!3515 lt!691861))))))

(declare-fun b!1781302 () Bool)

(declare-fun res!802922 () Bool)

(assert (=> b!1781302 (=> (not res!802922) (not e!1139973))))

(assert (=> b!1781302 (= res!802922 (isEmpty!12398 (tail!2665 (list!7977 (charsOf!2164 (_1!11009 lt!691836))))))))

(declare-fun b!1781303 () Bool)

(declare-fun e!1139975 () Bool)

(assert (=> b!1781303 (= e!1139975 e!1139972)))

(declare-fun c!289817 () Bool)

(assert (=> b!1781303 (= c!289817 ((_ is EmptyLang!4843) (regex!3515 lt!691861)))))

(declare-fun b!1781304 () Bool)

(declare-fun res!802919 () Bool)

(assert (=> b!1781304 (=> res!802919 e!1139971)))

(assert (=> b!1781304 (= res!802919 (not ((_ is ElementMatch!4843) (regex!3515 lt!691861))))))

(assert (=> b!1781304 (= e!1139972 e!1139971)))

(declare-fun b!1781305 () Bool)

(declare-fun call!111296 () Bool)

(assert (=> b!1781305 (= e!1139975 (= lt!692238 call!111296))))

(declare-fun b!1781307 () Bool)

(declare-fun res!802917 () Bool)

(assert (=> b!1781307 (=> res!802917 e!1139971)))

(assert (=> b!1781307 (= res!802917 e!1139973)))

(declare-fun res!802918 () Bool)

(assert (=> b!1781307 (=> (not res!802918) (not e!1139973))))

(assert (=> b!1781307 (= res!802918 lt!692238)))

(declare-fun b!1781308 () Bool)

(declare-fun res!802921 () Bool)

(declare-fun e!1139969 () Bool)

(assert (=> b!1781308 (=> res!802921 e!1139969)))

(assert (=> b!1781308 (= res!802921 (not (isEmpty!12398 (tail!2665 (list!7977 (charsOf!2164 (_1!11009 lt!691836)))))))))

(declare-fun bm!111291 () Bool)

(assert (=> bm!111291 (= call!111296 (isEmpty!12398 (list!7977 (charsOf!2164 (_1!11009 lt!691836)))))))

(declare-fun b!1781309 () Bool)

(declare-fun res!802923 () Bool)

(assert (=> b!1781309 (=> (not res!802923) (not e!1139973))))

(assert (=> b!1781309 (= res!802923 (not call!111296))))

(declare-fun b!1781310 () Bool)

(assert (=> b!1781310 (= e!1139970 e!1139969)))

(declare-fun res!802916 () Bool)

(assert (=> b!1781310 (=> res!802916 e!1139969)))

(assert (=> b!1781310 (= res!802916 call!111296)))

(declare-fun b!1781306 () Bool)

(assert (=> b!1781306 (= e!1139969 (not (= (head!4160 (list!7977 (charsOf!2164 (_1!11009 lt!691836)))) (c!289676 (regex!3515 lt!691861)))))))

(declare-fun d!544000 () Bool)

(assert (=> d!544000 e!1139975))

(declare-fun c!289815 () Bool)

(assert (=> d!544000 (= c!289815 ((_ is EmptyExpr!4843) (regex!3515 lt!691861)))))

(declare-fun e!1139974 () Bool)

(assert (=> d!544000 (= lt!692238 e!1139974)))

(declare-fun c!289816 () Bool)

(assert (=> d!544000 (= c!289816 (isEmpty!12398 (list!7977 (charsOf!2164 (_1!11009 lt!691836)))))))

(assert (=> d!544000 (validRegex!1963 (regex!3515 lt!691861))))

(assert (=> d!544000 (= (matchR!2316 (regex!3515 lt!691861) (list!7977 (charsOf!2164 (_1!11009 lt!691836)))) lt!692238)))

(declare-fun b!1781311 () Bool)

(assert (=> b!1781311 (= e!1139974 (matchR!2316 (derivativeStep!1258 (regex!3515 lt!691861) (head!4160 (list!7977 (charsOf!2164 (_1!11009 lt!691836))))) (tail!2665 (list!7977 (charsOf!2164 (_1!11009 lt!691836))))))))

(declare-fun b!1781312 () Bool)

(assert (=> b!1781312 (= e!1139974 (nullable!1489 (regex!3515 lt!691861)))))

(assert (= (and d!544000 c!289816) b!1781312))

(assert (= (and d!544000 (not c!289816)) b!1781311))

(assert (= (and d!544000 c!289815) b!1781305))

(assert (= (and d!544000 (not c!289815)) b!1781303))

(assert (= (and b!1781303 c!289817) b!1781300))

(assert (= (and b!1781303 (not c!289817)) b!1781304))

(assert (= (and b!1781304 (not res!802919)) b!1781307))

(assert (= (and b!1781307 res!802918) b!1781309))

(assert (= (and b!1781309 res!802923) b!1781302))

(assert (= (and b!1781302 res!802922) b!1781301))

(assert (= (and b!1781307 (not res!802917)) b!1781299))

(assert (= (and b!1781299 res!802920) b!1781310))

(assert (= (and b!1781310 (not res!802916)) b!1781308))

(assert (= (and b!1781308 (not res!802921)) b!1781306))

(assert (= (or b!1781305 b!1781309 b!1781310) bm!111291))

(assert (=> b!1781306 m!2202579))

(declare-fun m!2203621 () Bool)

(assert (=> b!1781306 m!2203621))

(assert (=> b!1781308 m!2202579))

(declare-fun m!2203623 () Bool)

(assert (=> b!1781308 m!2203623))

(assert (=> b!1781308 m!2203623))

(declare-fun m!2203625 () Bool)

(assert (=> b!1781308 m!2203625))

(assert (=> d!544000 m!2202579))

(declare-fun m!2203627 () Bool)

(assert (=> d!544000 m!2203627))

(declare-fun m!2203629 () Bool)

(assert (=> d!544000 m!2203629))

(declare-fun m!2203631 () Bool)

(assert (=> b!1781312 m!2203631))

(assert (=> bm!111291 m!2202579))

(assert (=> bm!111291 m!2203627))

(assert (=> b!1781302 m!2202579))

(assert (=> b!1781302 m!2203623))

(assert (=> b!1781302 m!2203623))

(assert (=> b!1781302 m!2203625))

(assert (=> b!1781301 m!2202579))

(assert (=> b!1781301 m!2203621))

(assert (=> b!1781311 m!2202579))

(assert (=> b!1781311 m!2203621))

(assert (=> b!1781311 m!2203621))

(declare-fun m!2203633 () Bool)

(assert (=> b!1781311 m!2203633))

(assert (=> b!1781311 m!2202579))

(assert (=> b!1781311 m!2203623))

(assert (=> b!1781311 m!2203633))

(assert (=> b!1781311 m!2203623))

(declare-fun m!2203635 () Bool)

(assert (=> b!1781311 m!2203635))

(assert (=> b!1780525 d!544000))

(declare-fun d!544002 () Bool)

(assert (=> d!544002 (= (list!7977 (charsOf!2164 (_1!11009 lt!691836))) (list!7979 (c!289677 (charsOf!2164 (_1!11009 lt!691836)))))))

(declare-fun bs!405199 () Bool)

(assert (= bs!405199 d!544002))

(declare-fun m!2203637 () Bool)

(assert (=> bs!405199 m!2203637))

(assert (=> b!1780525 d!544002))

(assert (=> b!1780525 d!543812))

(declare-fun d!544004 () Bool)

(assert (=> d!544004 (= (get!6028 lt!691839) (v!25541 lt!691839))))

(assert (=> b!1780525 d!544004))

(declare-fun b!1781322 () Bool)

(declare-fun e!1139981 () Int)

(declare-fun e!1139982 () Int)

(assert (=> b!1781322 (= e!1139981 e!1139982)))

(declare-fun c!289822 () Bool)

(assert (=> b!1781322 (= c!289822 (and ((_ is Cons!19623) rules!3447) (not (= (h!25024 rules!3447) (rule!5587 token!523)))))))

(declare-fun b!1781323 () Bool)

(assert (=> b!1781323 (= e!1139982 (+ 1 (getIndex!180 (t!166504 rules!3447) (rule!5587 token!523))))))

(declare-fun b!1781324 () Bool)

(assert (=> b!1781324 (= e!1139982 (- 1))))

(declare-fun d!544006 () Bool)

(declare-fun lt!692241 () Int)

(assert (=> d!544006 (>= lt!692241 0)))

(assert (=> d!544006 (= lt!692241 e!1139981)))

(declare-fun c!289823 () Bool)

(assert (=> d!544006 (= c!289823 (and ((_ is Cons!19623) rules!3447) (= (h!25024 rules!3447) (rule!5587 token!523))))))

(assert (=> d!544006 (contains!3547 rules!3447 (rule!5587 token!523))))

(assert (=> d!544006 (= (getIndex!180 rules!3447 (rule!5587 token!523)) lt!692241)))

(declare-fun b!1781321 () Bool)

(assert (=> b!1781321 (= e!1139981 0)))

(assert (= (and d!544006 c!289823) b!1781321))

(assert (= (and d!544006 (not c!289823)) b!1781322))

(assert (= (and b!1781322 c!289822) b!1781323))

(assert (= (and b!1781322 (not c!289822)) b!1781324))

(declare-fun m!2203639 () Bool)

(assert (=> b!1781323 m!2203639))

(declare-fun m!2203641 () Bool)

(assert (=> d!544006 m!2203641))

(assert (=> b!1780530 d!544006))

(declare-fun b!1781326 () Bool)

(declare-fun e!1139983 () Int)

(declare-fun e!1139984 () Int)

(assert (=> b!1781326 (= e!1139983 e!1139984)))

(declare-fun c!289824 () Bool)

(assert (=> b!1781326 (= c!289824 (and ((_ is Cons!19623) rules!3447) (not (= (h!25024 rules!3447) (rule!5587 (_1!11009 lt!691836))))))))

(declare-fun b!1781327 () Bool)

(assert (=> b!1781327 (= e!1139984 (+ 1 (getIndex!180 (t!166504 rules!3447) (rule!5587 (_1!11009 lt!691836)))))))

(declare-fun b!1781328 () Bool)

(assert (=> b!1781328 (= e!1139984 (- 1))))

(declare-fun d!544008 () Bool)

(declare-fun lt!692242 () Int)

(assert (=> d!544008 (>= lt!692242 0)))

(assert (=> d!544008 (= lt!692242 e!1139983)))

(declare-fun c!289825 () Bool)

(assert (=> d!544008 (= c!289825 (and ((_ is Cons!19623) rules!3447) (= (h!25024 rules!3447) (rule!5587 (_1!11009 lt!691836)))))))

(assert (=> d!544008 (contains!3547 rules!3447 (rule!5587 (_1!11009 lt!691836)))))

(assert (=> d!544008 (= (getIndex!180 rules!3447 (rule!5587 (_1!11009 lt!691836))) lt!692242)))

(declare-fun b!1781325 () Bool)

(assert (=> b!1781325 (= e!1139983 0)))

(assert (= (and d!544008 c!289825) b!1781325))

(assert (= (and d!544008 (not c!289825)) b!1781326))

(assert (= (and b!1781326 c!289824) b!1781327))

(assert (= (and b!1781326 (not c!289824)) b!1781328))

(declare-fun m!2203643 () Bool)

(assert (=> b!1781327 m!2203643))

(assert (=> d!544008 m!2202491))

(assert (=> b!1780530 d!544008))

(declare-fun d!544010 () Bool)

(declare-fun res!802926 () Bool)

(declare-fun e!1139987 () Bool)

(assert (=> d!544010 (=> (not res!802926) (not e!1139987))))

(declare-fun rulesValid!1329 (LexerInterface!3144 List!19693) Bool)

(assert (=> d!544010 (= res!802926 (rulesValid!1329 thiss!24550 rules!3447))))

(assert (=> d!544010 (= (rulesInvariant!2813 thiss!24550 rules!3447) e!1139987)))

(declare-fun b!1781331 () Bool)

(declare-datatypes ((List!19697 0))(
  ( (Nil!19627) (Cons!19627 (h!25028 String!22357) (t!166568 List!19697)) )
))
(declare-fun noDuplicateTag!1329 (LexerInterface!3144 List!19693 List!19697) Bool)

(assert (=> b!1781331 (= e!1139987 (noDuplicateTag!1329 thiss!24550 rules!3447 Nil!19627))))

(assert (= (and d!544010 res!802926) b!1781331))

(declare-fun m!2203645 () Bool)

(assert (=> d!544010 m!2203645))

(declare-fun m!2203647 () Bool)

(assert (=> b!1781331 m!2203647))

(assert (=> b!1780507 d!544010))

(declare-fun tp!504248 () Bool)

(declare-fun b!1781340 () Bool)

(declare-fun tp!504250 () Bool)

(declare-fun e!1139992 () Bool)

(assert (=> b!1781340 (= e!1139992 (and (inv!25538 (left!15726 (c!289677 (dynLambda!9631 (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) (value!109850 (_1!11009 lt!691836)))))) tp!504250 (inv!25538 (right!16056 (c!289677 (dynLambda!9631 (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) (value!109850 (_1!11009 lt!691836)))))) tp!504248))))

(declare-fun b!1781342 () Bool)

(declare-fun e!1139993 () Bool)

(declare-fun tp!504249 () Bool)

(assert (=> b!1781342 (= e!1139993 tp!504249)))

(declare-fun b!1781341 () Bool)

(declare-fun inv!25544 (IArray!13059) Bool)

(assert (=> b!1781341 (= e!1139992 (and (inv!25544 (xs!9403 (c!289677 (dynLambda!9631 (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) (value!109850 (_1!11009 lt!691836)))))) e!1139993))))

(assert (=> b!1780556 (= tp!504186 (and (inv!25538 (c!289677 (dynLambda!9631 (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) (value!109850 (_1!11009 lt!691836))))) e!1139992))))

(assert (= (and b!1780556 ((_ is Node!6527) (c!289677 (dynLambda!9631 (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) (value!109850 (_1!11009 lt!691836)))))) b!1781340))

(assert (= b!1781341 b!1781342))

(assert (= (and b!1780556 ((_ is Leaf!9505) (c!289677 (dynLambda!9631 (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) (value!109850 (_1!11009 lt!691836)))))) b!1781341))

(declare-fun m!2203649 () Bool)

(assert (=> b!1781340 m!2203649))

(declare-fun m!2203651 () Bool)

(assert (=> b!1781340 m!2203651))

(declare-fun m!2203653 () Bool)

(assert (=> b!1781341 m!2203653))

(assert (=> b!1780556 m!2202463))

(declare-fun b!1781347 () Bool)

(declare-fun e!1139996 () Bool)

(declare-fun tp!504253 () Bool)

(assert (=> b!1781347 (= e!1139996 (and tp_is_empty!7929 tp!504253))))

(assert (=> b!1780504 (= tp!504178 e!1139996)))

(assert (= (and b!1780504 ((_ is Cons!19622) (originalCharacters!4329 token!523))) b!1781347))

(declare-fun tp!504256 () Bool)

(declare-fun b!1781348 () Bool)

(declare-fun e!1139997 () Bool)

(declare-fun tp!504254 () Bool)

(assert (=> b!1781348 (= e!1139997 (and (inv!25538 (left!15726 (c!289677 (dynLambda!9631 (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) (dynLambda!9632 (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) lt!691868))))) tp!504256 (inv!25538 (right!16056 (c!289677 (dynLambda!9631 (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) (dynLambda!9632 (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) lt!691868))))) tp!504254))))

(declare-fun b!1781350 () Bool)

(declare-fun e!1139998 () Bool)

(declare-fun tp!504255 () Bool)

(assert (=> b!1781350 (= e!1139998 tp!504255)))

(declare-fun b!1781349 () Bool)

(assert (=> b!1781349 (= e!1139997 (and (inv!25544 (xs!9403 (c!289677 (dynLambda!9631 (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) (dynLambda!9632 (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) lt!691868))))) e!1139998))))

(assert (=> b!1780553 (= tp!504185 (and (inv!25538 (c!289677 (dynLambda!9631 (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) (dynLambda!9632 (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) lt!691868)))) e!1139997))))

(assert (= (and b!1780553 ((_ is Node!6527) (c!289677 (dynLambda!9631 (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) (dynLambda!9632 (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) lt!691868))))) b!1781348))

(assert (= b!1781349 b!1781350))

(assert (= (and b!1780553 ((_ is Leaf!9505) (c!289677 (dynLambda!9631 (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) (dynLambda!9632 (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))) lt!691868))))) b!1781349))

(declare-fun m!2203655 () Bool)

(assert (=> b!1781348 m!2203655))

(declare-fun m!2203657 () Bool)

(assert (=> b!1781348 m!2203657))

(declare-fun m!2203659 () Bool)

(assert (=> b!1781349 m!2203659))

(assert (=> b!1780553 m!2202457))

(declare-fun b!1781361 () Bool)

(declare-fun b_free!49439 () Bool)

(declare-fun b_next!50143 () Bool)

(assert (=> b!1781361 (= b_free!49439 (not b_next!50143))))

(declare-fun tb!108269 () Bool)

(declare-fun t!166554 () Bool)

(assert (=> (and b!1781361 (= (toValue!5042 (transformation!3515 (h!25024 (t!166504 rules!3447)))) (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836))))) t!166554) tb!108269))

(declare-fun result!130258 () Bool)

(assert (= result!130258 result!130182))

(assert (=> d!543944 t!166554))

(assert (=> d!543938 t!166554))

(declare-fun tb!108271 () Bool)

(declare-fun t!166556 () Bool)

(assert (=> (and b!1781361 (= (toValue!5042 (transformation!3515 (h!25024 (t!166504 rules!3447)))) (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836))))) t!166556) tb!108271))

(declare-fun result!130260 () Bool)

(assert (= result!130260 result!130214))

(assert (=> d!543938 t!166556))

(assert (=> b!1780511 t!166554))

(assert (=> d!543888 t!166554))

(declare-fun t!166558 () Bool)

(declare-fun tb!108273 () Bool)

(assert (=> (and b!1781361 (= (toValue!5042 (transformation!3515 (h!25024 (t!166504 rules!3447)))) (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836))))) t!166558) tb!108273))

(declare-fun result!130262 () Bool)

(assert (= result!130262 result!130220))

(assert (=> d!543950 t!166558))

(declare-fun b_and!136593 () Bool)

(declare-fun tp!504265 () Bool)

(assert (=> b!1781361 (= tp!504265 (and (=> t!166556 result!130260) (=> t!166554 result!130258) (=> t!166558 result!130262) b_and!136593))))

(declare-fun b_free!49441 () Bool)

(declare-fun b_next!50145 () Bool)

(assert (=> b!1781361 (= b_free!49441 (not b_next!50145))))

(declare-fun t!166560 () Bool)

(declare-fun tb!108275 () Bool)

(assert (=> (and b!1781361 (= (toChars!4901 (transformation!3515 (h!25024 (t!166504 rules!3447)))) (toChars!4901 (transformation!3515 (rule!5587 token!523)))) t!166560) tb!108275))

(declare-fun result!130264 () Bool)

(assert (= result!130264 result!130202))

(assert (=> d!543718 t!166560))

(declare-fun t!166562 () Bool)

(declare-fun tb!108277 () Bool)

(assert (=> (and b!1781361 (= (toChars!4901 (transformation!3515 (h!25024 (t!166504 rules!3447)))) (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836))))) t!166562) tb!108277))

(declare-fun result!130266 () Bool)

(assert (= result!130266 result!130190))

(assert (=> b!1780535 t!166562))

(assert (=> d!543812 t!166562))

(declare-fun t!166564 () Bool)

(declare-fun tb!108279 () Bool)

(assert (=> (and b!1781361 (= (toChars!4901 (transformation!3515 (h!25024 (t!166504 rules!3447)))) (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836))))) t!166564) tb!108279))

(declare-fun result!130268 () Bool)

(assert (= result!130268 result!130174))

(assert (=> d!543888 t!166564))

(assert (=> b!1780511 t!166564))

(assert (=> b!1781297 t!166560))

(declare-fun tp!504268 () Bool)

(declare-fun b_and!136595 () Bool)

(assert (=> b!1781361 (= tp!504268 (and (=> t!166562 result!130266) (=> t!166564 result!130268) (=> t!166560 result!130264) b_and!136595))))

(declare-fun e!1140008 () Bool)

(assert (=> b!1781361 (= e!1140008 (and tp!504265 tp!504268))))

(declare-fun tp!504267 () Bool)

(declare-fun e!1140007 () Bool)

(declare-fun b!1781360 () Bool)

(assert (=> b!1781360 (= e!1140007 (and tp!504267 (inv!25531 (tag!3909 (h!25024 (t!166504 rules!3447)))) (inv!25536 (transformation!3515 (h!25024 (t!166504 rules!3447)))) e!1140008))))

(declare-fun b!1781359 () Bool)

(declare-fun e!1140010 () Bool)

(declare-fun tp!504266 () Bool)

(assert (=> b!1781359 (= e!1140010 (and e!1140007 tp!504266))))

(assert (=> b!1780529 (= tp!504173 e!1140010)))

(assert (= b!1781360 b!1781361))

(assert (= b!1781359 b!1781360))

(assert (= (and b!1780529 ((_ is Cons!19623) (t!166504 rules!3447))) b!1781359))

(declare-fun m!2203661 () Bool)

(assert (=> b!1781360 m!2203661))

(declare-fun m!2203663 () Bool)

(assert (=> b!1781360 m!2203663))

(declare-fun b!1781372 () Bool)

(declare-fun e!1140013 () Bool)

(assert (=> b!1781372 (= e!1140013 tp_is_empty!7929)))

(assert (=> b!1780502 (= tp!504176 e!1140013)))

(declare-fun b!1781373 () Bool)

(declare-fun tp!504283 () Bool)

(declare-fun tp!504279 () Bool)

(assert (=> b!1781373 (= e!1140013 (and tp!504283 tp!504279))))

(declare-fun b!1781375 () Bool)

(declare-fun tp!504281 () Bool)

(declare-fun tp!504280 () Bool)

(assert (=> b!1781375 (= e!1140013 (and tp!504281 tp!504280))))

(declare-fun b!1781374 () Bool)

(declare-fun tp!504282 () Bool)

(assert (=> b!1781374 (= e!1140013 tp!504282)))

(assert (= (and b!1780502 ((_ is ElementMatch!4843) (regex!3515 rule!422))) b!1781372))

(assert (= (and b!1780502 ((_ is Concat!8449) (regex!3515 rule!422))) b!1781373))

(assert (= (and b!1780502 ((_ is Star!4843) (regex!3515 rule!422))) b!1781374))

(assert (= (and b!1780502 ((_ is Union!4843) (regex!3515 rule!422))) b!1781375))

(declare-fun b!1781376 () Bool)

(declare-fun e!1140014 () Bool)

(assert (=> b!1781376 (= e!1140014 tp_is_empty!7929)))

(assert (=> b!1780518 (= tp!504171 e!1140014)))

(declare-fun b!1781377 () Bool)

(declare-fun tp!504288 () Bool)

(declare-fun tp!504284 () Bool)

(assert (=> b!1781377 (= e!1140014 (and tp!504288 tp!504284))))

(declare-fun b!1781379 () Bool)

(declare-fun tp!504286 () Bool)

(declare-fun tp!504285 () Bool)

(assert (=> b!1781379 (= e!1140014 (and tp!504286 tp!504285))))

(declare-fun b!1781378 () Bool)

(declare-fun tp!504287 () Bool)

(assert (=> b!1781378 (= e!1140014 tp!504287)))

(assert (= (and b!1780518 ((_ is ElementMatch!4843) (regex!3515 (rule!5587 token!523)))) b!1781376))

(assert (= (and b!1780518 ((_ is Concat!8449) (regex!3515 (rule!5587 token!523)))) b!1781377))

(assert (= (and b!1780518 ((_ is Star!4843) (regex!3515 (rule!5587 token!523)))) b!1781378))

(assert (= (and b!1780518 ((_ is Union!4843) (regex!3515 (rule!5587 token!523)))) b!1781379))

(declare-fun b!1781380 () Bool)

(declare-fun e!1140015 () Bool)

(assert (=> b!1781380 (= e!1140015 tp_is_empty!7929)))

(assert (=> b!1780523 (= tp!504175 e!1140015)))

(declare-fun b!1781381 () Bool)

(declare-fun tp!504293 () Bool)

(declare-fun tp!504289 () Bool)

(assert (=> b!1781381 (= e!1140015 (and tp!504293 tp!504289))))

(declare-fun b!1781383 () Bool)

(declare-fun tp!504291 () Bool)

(declare-fun tp!504290 () Bool)

(assert (=> b!1781383 (= e!1140015 (and tp!504291 tp!504290))))

(declare-fun b!1781382 () Bool)

(declare-fun tp!504292 () Bool)

(assert (=> b!1781382 (= e!1140015 tp!504292)))

(assert (= (and b!1780523 ((_ is ElementMatch!4843) (regex!3515 (h!25024 rules!3447)))) b!1781380))

(assert (= (and b!1780523 ((_ is Concat!8449) (regex!3515 (h!25024 rules!3447)))) b!1781381))

(assert (= (and b!1780523 ((_ is Star!4843) (regex!3515 (h!25024 rules!3447)))) b!1781382))

(assert (= (and b!1780523 ((_ is Union!4843) (regex!3515 (h!25024 rules!3447)))) b!1781383))

(declare-fun b!1781384 () Bool)

(declare-fun e!1140016 () Bool)

(declare-fun tp!504294 () Bool)

(assert (=> b!1781384 (= e!1140016 (and tp_is_empty!7929 tp!504294))))

(assert (=> b!1780501 (= tp!504181 e!1140016)))

(assert (= (and b!1780501 ((_ is Cons!19622) (t!166503 suffix!1421))) b!1781384))

(declare-fun b_lambda!58323 () Bool)

(assert (= b_lambda!58273 (or (and b!1780528 b_free!49423 (= (toValue!5042 (transformation!3515 (h!25024 rules!3447))) (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))))) (and b!1780510 b_free!49427 (= (toValue!5042 (transformation!3515 (rule!5587 token!523))) (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))))) (and b!1780522 b_free!49431 (= (toValue!5042 (transformation!3515 rule!422)) (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))))) (and b!1781361 b_free!49439 (= (toValue!5042 (transformation!3515 (h!25024 (t!166504 rules!3447)))) (toValue!5042 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))))) b_lambda!58323)))

(declare-fun b_lambda!58325 () Bool)

(assert (= b_lambda!58271 (or (and b!1780528 b_free!49425 (= (toChars!4901 (transformation!3515 (h!25024 rules!3447))) (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))))) (and b!1780510 b_free!49429 (= (toChars!4901 (transformation!3515 (rule!5587 token!523))) (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))))) (and b!1780522 b_free!49433 (= (toChars!4901 (transformation!3515 rule!422)) (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))))) (and b!1781361 b_free!49441 (= (toChars!4901 (transformation!3515 (h!25024 (t!166504 rules!3447)))) (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))))) b_lambda!58325)))

(declare-fun b_lambda!58327 () Bool)

(assert (= b_lambda!58281 (or (and b!1780528 b_free!49425 (= (toChars!4901 (transformation!3515 (h!25024 rules!3447))) (toChars!4901 (transformation!3515 (rule!5587 token!523))))) (and b!1780510 b_free!49429) (and b!1780522 b_free!49433 (= (toChars!4901 (transformation!3515 rule!422)) (toChars!4901 (transformation!3515 (rule!5587 token!523))))) (and b!1781361 b_free!49441 (= (toChars!4901 (transformation!3515 (h!25024 (t!166504 rules!3447)))) (toChars!4901 (transformation!3515 (rule!5587 token!523))))) b_lambda!58327)))

(declare-fun b_lambda!58329 () Bool)

(assert (= b_lambda!58321 (or (and b!1780528 b_free!49425 (= (toChars!4901 (transformation!3515 (h!25024 rules!3447))) (toChars!4901 (transformation!3515 (rule!5587 token!523))))) (and b!1780510 b_free!49429) (and b!1780522 b_free!49433 (= (toChars!4901 (transformation!3515 rule!422)) (toChars!4901 (transformation!3515 (rule!5587 token!523))))) (and b!1781361 b_free!49441 (= (toChars!4901 (transformation!3515 (h!25024 (t!166504 rules!3447)))) (toChars!4901 (transformation!3515 (rule!5587 token!523))))) b_lambda!58329)))

(declare-fun b_lambda!58331 () Bool)

(assert (= b_lambda!58275 (or (and b!1780528 b_free!49425 (= (toChars!4901 (transformation!3515 (h!25024 rules!3447))) (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))))) (and b!1780510 b_free!49429 (= (toChars!4901 (transformation!3515 (rule!5587 token!523))) (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))))) (and b!1780522 b_free!49433 (= (toChars!4901 (transformation!3515 rule!422)) (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))))) (and b!1781361 b_free!49441 (= (toChars!4901 (transformation!3515 (h!25024 (t!166504 rules!3447)))) (toChars!4901 (transformation!3515 (rule!5587 (_1!11009 lt!691836)))))) b_lambda!58331)))

(check-sat (not b!1781100) (not b_next!50135) (not b!1781011) (not d!543814) (not b!1781105) (not d!543874) (not d!543948) (not b!1781327) (not b!1781067) (not b!1780870) (not b_lambda!58303) (not b!1780884) (not b!1780881) (not b!1781110) (not b!1780680) (not b_lambda!58325) (not bm!111276) (not b_next!50143) (not d!544000) (not b!1781049) (not d!543932) (not d!544006) (not b!1781373) (not b!1781272) (not b_next!50133) (not b!1781277) (not b!1781119) (not d!543938) (not b!1780827) (not d!543886) (not b!1781298) (not bm!111286) (not b!1781292) (not b_lambda!58327) (not d!543954) (not b!1781381) (not b!1780686) (not b!1781290) (not b_next!50127) (not b!1781027) (not b!1781097) (not d!543942) (not d!544010) (not b!1781069) (not d!543732) (not bm!111289) (not b!1781131) (not d!543902) (not b!1780896) (not b!1781323) (not b!1781025) (not b_lambda!58295) (not b!1780895) (not b!1781297) (not b!1781302) (not b!1781273) (not d!543936) (not d!543784) (not d!543918) (not b!1780839) (not d!543894) (not b!1781342) (not b!1780687) (not d!543900) (not b!1781104) (not b!1781271) (not b!1781012) (not b!1781139) (not b!1781133) (not b!1781278) (not b!1781022) (not b_next!50145) (not b!1781091) (not d!543906) (not d!543866) (not b!1781059) (not d!543674) (not d!543920) (not b_lambda!58283) (not b!1781308) (not b!1781347) (not b!1780871) (not b!1781035) (not b!1780685) b_and!136561 (not d!543746) (not b!1781341) (not b!1781350) (not b!1780837) (not tb!108245) (not d!543672) (not d!543994) (not d!543716) b_and!136593 (not b!1781379) (not b!1781109) (not b!1781072) (not b!1780823) (not b!1781092) b_and!136589 (not b!1781029) (not b!1780883) (not d!543718) (not b!1781073) (not d!543764) b_and!136595 (not d!543768) (not d!543878) (not b!1781102) (not d!543758) (not b!1780830) (not d!543888) (not d!543802) (not b_next!50131) (not d!543896) b_and!136591 (not d!543890) (not b!1781275) (not bm!111287) (not b!1781032) (not b!1781331) (not b!1781301) (not d!543946) (not b!1780683) (not tb!108227) (not d!543952) (not b!1781360) (not bm!111282) (not b!1781374) (not d!543876) (not b!1780727) (not b!1780718) (not b_next!50129) (not d!543812) (not d!543908) (not b!1781082) (not b!1781378) (not b!1781383) (not b!1781377) (not b!1781036) (not d!543998) (not b!1780684) (not b!1781349) (not b_next!50137) (not b!1780783) (not b!1781312) (not b_lambda!58323) (not d!543914) (not b!1781062) (not d!543904) (not b!1780825) (not b_lambda!58329) b_and!136563 (not b!1781147) (not b!1781306) (not bm!111291) (not b!1781010) (not b!1781279) (not d!543794) (not b!1781287) (not b!1781034) (not d!543804) (not b!1781348) (not b!1781028) (not b!1781130) (not b!1780897) (not b!1781274) (not b!1781120) (not b!1780679) (not b!1781056) (not d!543910) (not b_lambda!58299) (not d!543806) (not b!1781023) (not b!1780784) (not b!1781125) (not b!1781024) (not b!1781375) (not d!543882) (not b!1781288) (not b!1781359) (not b_lambda!58331) (not b!1780880) (not b!1781128) (not b!1781081) (not d!543870) (not d!543798) (not b!1780556) (not b!1781129) (not b!1781086) (not b!1781384) (not b!1781340) (not d!543990) (not b!1780752) (not b!1781114) (not d!543796) (not d!543892) (not b!1780728) (not b!1781019) (not d!543786) (not d!543922) (not b!1781051) (not b!1781031) (not b!1781057) (not b_lambda!58293) (not b!1780682) (not b!1780553) (not d!543940) tp_is_empty!7929 (not d!543800) (not b_lambda!58297) (not b!1780877) (not b!1781116) (not d!543926) (not b!1781063) (not b!1781030) (not d!543884) (not b_lambda!58301) (not b!1781088) (not b!1781052) (not b!1780753) (not b!1780875) (not b!1781285) (not d!543722) b_and!136587 (not b!1781382) (not b!1781311) (not b!1781021) (not d!544008) (not d!544002) (not b!1781101) (not b!1781018) (not tb!108239) (not bm!111288) b_and!136559)
(check-sat (not b_next!50135) (not b_next!50143) (not b_next!50133) (not b_next!50127) (not b_next!50145) b_and!136561 b_and!136595 (not b_next!50131) b_and!136591 (not b_next!50129) (not b_next!50137) b_and!136563 b_and!136587 b_and!136559 b_and!136593 b_and!136589)
