; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!333362 () Bool)

(assert start!333362)

(declare-fun b!3591785 () Bool)

(declare-fun b_free!92681 () Bool)

(declare-fun b_next!93385 () Bool)

(assert (=> b!3591785 (= b_free!92681 (not b_next!93385))))

(declare-fun tp!1099423 () Bool)

(declare-fun b_and!259851 () Bool)

(assert (=> b!3591785 (= tp!1099423 b_and!259851)))

(declare-fun b_free!92683 () Bool)

(declare-fun b_next!93387 () Bool)

(assert (=> b!3591785 (= b_free!92683 (not b_next!93387))))

(declare-fun tp!1099416 () Bool)

(declare-fun b_and!259853 () Bool)

(assert (=> b!3591785 (= tp!1099416 b_and!259853)))

(declare-fun b!3591779 () Bool)

(declare-fun b_free!92685 () Bool)

(declare-fun b_next!93389 () Bool)

(assert (=> b!3591779 (= b_free!92685 (not b_next!93389))))

(declare-fun tp!1099413 () Bool)

(declare-fun b_and!259855 () Bool)

(assert (=> b!3591779 (= tp!1099413 b_and!259855)))

(declare-fun b_free!92687 () Bool)

(declare-fun b_next!93391 () Bool)

(assert (=> b!3591779 (= b_free!92687 (not b_next!93391))))

(declare-fun tp!1099421 () Bool)

(declare-fun b_and!259857 () Bool)

(assert (=> b!3591779 (= tp!1099421 b_and!259857)))

(declare-fun b!3591783 () Bool)

(declare-fun b_free!92689 () Bool)

(declare-fun b_next!93393 () Bool)

(assert (=> b!3591783 (= b_free!92689 (not b_next!93393))))

(declare-fun tp!1099419 () Bool)

(declare-fun b_and!259859 () Bool)

(assert (=> b!3591783 (= tp!1099419 b_and!259859)))

(declare-fun b_free!92691 () Bool)

(declare-fun b_next!93395 () Bool)

(assert (=> b!3591783 (= b_free!92691 (not b_next!93395))))

(declare-fun tp!1099425 () Bool)

(declare-fun b_and!259861 () Bool)

(assert (=> b!3591783 (= tp!1099425 b_and!259861)))

(declare-fun b!3591784 () Bool)

(declare-fun b_free!92693 () Bool)

(declare-fun b_next!93397 () Bool)

(assert (=> b!3591784 (= b_free!92693 (not b_next!93397))))

(declare-fun tp!1099424 () Bool)

(declare-fun b_and!259863 () Bool)

(assert (=> b!3591784 (= tp!1099424 b_and!259863)))

(declare-fun b_free!92695 () Bool)

(declare-fun b_next!93399 () Bool)

(assert (=> b!3591784 (= b_free!92695 (not b_next!93399))))

(declare-fun tp!1099414 () Bool)

(declare-fun b_and!259865 () Bool)

(assert (=> b!3591784 (= tp!1099414 b_and!259865)))

(declare-fun b!3591770 () Bool)

(declare-fun e!2222478 () Bool)

(declare-datatypes ((C!20864 0))(
  ( (C!20865 (val!12480 Int)) )
))
(declare-datatypes ((List!37887 0))(
  ( (Nil!37763) (Cons!37763 (h!43183 C!20864) (t!291138 List!37887)) )
))
(declare-fun lt!1232382 () List!37887)

(declare-fun lt!1232398 () Int)

(declare-fun size!28766 (List!37887) Int)

(assert (=> b!3591770 (= e!2222478 (>= (size!28766 lt!1232382) lt!1232398))))

(declare-datatypes ((List!37888 0))(
  ( (Nil!37764) (Cons!37764 (h!43184 (_ BitVec 16)) (t!291139 List!37888)) )
))
(declare-datatypes ((TokenValue!5810 0))(
  ( (FloatLiteralValue!11620 (text!41115 List!37888)) (TokenValueExt!5809 (__x!23837 Int)) (Broken!29050 (value!179464 List!37888)) (Object!5933) (End!5810) (Def!5810) (Underscore!5810) (Match!5810) (Else!5810) (Error!5810) (Case!5810) (If!5810) (Extends!5810) (Abstract!5810) (Class!5810) (Val!5810) (DelimiterValue!11620 (del!5870 List!37888)) (KeywordValue!5816 (value!179465 List!37888)) (CommentValue!11620 (value!179466 List!37888)) (WhitespaceValue!11620 (value!179467 List!37888)) (IndentationValue!5810 (value!179468 List!37888)) (String!42383) (Int32!5810) (Broken!29051 (value!179469 List!37888)) (Boolean!5811) (Unit!53764) (OperatorValue!5813 (op!5870 List!37888)) (IdentifierValue!11620 (value!179470 List!37888)) (IdentifierValue!11621 (value!179471 List!37888)) (WhitespaceValue!11621 (value!179472 List!37888)) (True!11620) (False!11620) (Broken!29052 (value!179473 List!37888)) (Broken!29053 (value!179474 List!37888)) (True!11621) (RightBrace!5810) (RightBracket!5810) (Colon!5810) (Null!5810) (Comma!5810) (LeftBracket!5810) (False!11621) (LeftBrace!5810) (ImaginaryLiteralValue!5810 (text!41116 List!37888)) (StringLiteralValue!17430 (value!179475 List!37888)) (EOFValue!5810 (value!179476 List!37888)) (IdentValue!5810 (value!179477 List!37888)) (DelimiterValue!11621 (value!179478 List!37888)) (DedentValue!5810 (value!179479 List!37888)) (NewLineValue!5810 (value!179480 List!37888)) (IntegerValue!17430 (value!179481 (_ BitVec 32)) (text!41117 List!37888)) (IntegerValue!17431 (value!179482 Int) (text!41118 List!37888)) (Times!5810) (Or!5810) (Equal!5810) (Minus!5810) (Broken!29054 (value!179483 List!37888)) (And!5810) (Div!5810) (LessEqual!5810) (Mod!5810) (Concat!16149) (Not!5810) (Plus!5810) (SpaceValue!5810 (value!179484 List!37888)) (IntegerValue!17432 (value!179485 Int) (text!41119 List!37888)) (StringLiteralValue!17431 (text!41120 List!37888)) (FloatLiteralValue!11621 (text!41121 List!37888)) (BytesLiteralValue!5810 (value!179486 List!37888)) (CommentValue!11621 (value!179487 List!37888)) (StringLiteralValue!17432 (value!179488 List!37888)) (ErrorTokenValue!5810 (msg!5871 List!37888)) )
))
(declare-datatypes ((Regex!10339 0))(
  ( (ElementMatch!10339 (c!621962 C!20864)) (Concat!16150 (regOne!21190 Regex!10339) (regTwo!21190 Regex!10339)) (EmptyExpr!10339) (Star!10339 (reg!10668 Regex!10339)) (EmptyLang!10339) (Union!10339 (regOne!21191 Regex!10339) (regTwo!21191 Regex!10339)) )
))
(declare-datatypes ((IArray!22983 0))(
  ( (IArray!22984 (innerList!11549 List!37887)) )
))
(declare-datatypes ((String!42384 0))(
  ( (String!42385 (value!179489 String)) )
))
(declare-datatypes ((Conc!11489 0))(
  ( (Node!11489 (left!29505 Conc!11489) (right!29835 Conc!11489) (csize!23208 Int) (cheight!11700 Int)) (Leaf!17890 (xs!14691 IArray!22983) (csize!23209 Int)) (Empty!11489) )
))
(declare-datatypes ((BalanceConc!22592 0))(
  ( (BalanceConc!22593 (c!621963 Conc!11489)) )
))
(declare-datatypes ((TokenValueInjection!11048 0))(
  ( (TokenValueInjection!11049 (toValue!7864 Int) (toChars!7723 Int)) )
))
(declare-datatypes ((Rule!10960 0))(
  ( (Rule!10961 (regex!5580 Regex!10339) (tag!6254 String!42384) (isSeparator!5580 Bool) (transformation!5580 TokenValueInjection!11048)) )
))
(declare-datatypes ((Token!10526 0))(
  ( (Token!10527 (value!179490 TokenValue!5810) (rule!8298 Rule!10960) (size!28767 Int) (originalCharacters!6294 List!37887)) )
))
(declare-datatypes ((tuple2!37648 0))(
  ( (tuple2!37649 (_1!21958 Token!10526) (_2!21958 List!37887)) )
))
(declare-fun lt!1232391 () tuple2!37648)

(declare-fun lt!1232393 () List!37887)

(assert (=> b!3591770 (= (_2!21958 lt!1232391) lt!1232393)))

(declare-datatypes ((Unit!53765 0))(
  ( (Unit!53766) )
))
(declare-fun lt!1232385 () Unit!53765)

(declare-fun lt!1232400 () List!37887)

(declare-fun lemmaSamePrefixThenSameSuffix!1298 (List!37887 List!37887 List!37887 List!37887 List!37887) Unit!53765)

(assert (=> b!3591770 (= lt!1232385 (lemmaSamePrefixThenSameSuffix!1298 lt!1232400 (_2!21958 lt!1232391) lt!1232400 lt!1232393 lt!1232382))))

(declare-fun getSuffix!1518 (List!37887 List!37887) List!37887)

(assert (=> b!3591770 (= lt!1232393 (getSuffix!1518 lt!1232382 lt!1232400))))

(declare-datatypes ((LexerInterface!5169 0))(
  ( (LexerInterfaceExt!5166 (__x!23838 Int)) (Lexer!5167) )
))
(declare-fun thiss!23823 () LexerInterface!5169)

(declare-fun lt!1232381 () TokenValue!5810)

(declare-datatypes ((Option!7790 0))(
  ( (None!7789) (Some!7789 (v!37467 tuple2!37648)) )
))
(declare-fun maxPrefixOneRule!1847 (LexerInterface!5169 Rule!10960 List!37887) Option!7790)

(assert (=> b!3591770 (= (maxPrefixOneRule!1847 thiss!23823 (rule!8298 (_1!21958 lt!1232391)) lt!1232382) (Some!7789 (tuple2!37649 (Token!10527 lt!1232381 (rule!8298 (_1!21958 lt!1232391)) lt!1232398 lt!1232400) (_2!21958 lt!1232391))))))

(assert (=> b!3591770 (= lt!1232398 (size!28766 lt!1232400))))

(declare-fun apply!9086 (TokenValueInjection!11048 BalanceConc!22592) TokenValue!5810)

(declare-fun seqFromList!4133 (List!37887) BalanceConc!22592)

(assert (=> b!3591770 (= lt!1232381 (apply!9086 (transformation!5580 (rule!8298 (_1!21958 lt!1232391))) (seqFromList!4133 lt!1232400)))))

(declare-datatypes ((List!37889 0))(
  ( (Nil!37765) (Cons!37765 (h!43185 Rule!10960) (t!291140 List!37889)) )
))
(declare-fun rules!3307 () List!37889)

(declare-fun lt!1232379 () Unit!53765)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!919 (LexerInterface!5169 List!37889 List!37887 List!37887 List!37887 Rule!10960) Unit!53765)

(assert (=> b!3591770 (= lt!1232379 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!919 thiss!23823 rules!3307 lt!1232400 lt!1232382 (_2!21958 lt!1232391) (rule!8298 (_1!21958 lt!1232391))))))

(declare-fun b!3591771 () Bool)

(declare-fun e!2222476 () Bool)

(assert (=> b!3591771 (= e!2222476 e!2222478)))

(declare-fun res!1450234 () Bool)

(assert (=> b!3591771 (=> res!1450234 e!2222478)))

(declare-fun lt!1232394 () BalanceConc!22592)

(declare-fun lt!1232402 () Option!7790)

(declare-fun size!28768 (BalanceConc!22592) Int)

(assert (=> b!3591771 (= res!1450234 (not (= lt!1232402 (Some!7789 (tuple2!37649 (Token!10527 (apply!9086 (transformation!5580 (rule!8298 (_1!21958 lt!1232391))) lt!1232394) (rule!8298 (_1!21958 lt!1232391)) (size!28768 lt!1232394) lt!1232400) (_2!21958 lt!1232391))))))))

(declare-fun lt!1232390 () Unit!53765)

(declare-fun lemmaCharactersSize!633 (Token!10526) Unit!53765)

(assert (=> b!3591771 (= lt!1232390 (lemmaCharactersSize!633 (_1!21958 lt!1232391)))))

(declare-fun lt!1232388 () Unit!53765)

(declare-fun lemmaEqSameImage!771 (TokenValueInjection!11048 BalanceConc!22592 BalanceConc!22592) Unit!53765)

(assert (=> b!3591771 (= lt!1232388 (lemmaEqSameImage!771 (transformation!5580 (rule!8298 (_1!21958 lt!1232391))) lt!1232394 (seqFromList!4133 (originalCharacters!6294 (_1!21958 lt!1232391)))))))

(declare-fun lt!1232380 () Unit!53765)

(declare-fun lemmaSemiInverse!1337 (TokenValueInjection!11048 BalanceConc!22592) Unit!53765)

(assert (=> b!3591771 (= lt!1232380 (lemmaSemiInverse!1337 (transformation!5580 (rule!8298 (_1!21958 lt!1232391))) lt!1232394))))

(declare-fun b!3591772 () Bool)

(declare-fun res!1450228 () Bool)

(declare-fun e!2222498 () Bool)

(assert (=> b!3591772 (=> res!1450228 e!2222498)))

(declare-fun suffix!1395 () List!37887)

(declare-fun isEmpty!22258 (List!37887) Bool)

(assert (=> b!3591772 (= res!1450228 (isEmpty!22258 suffix!1395))))

(declare-fun b!3591773 () Bool)

(declare-fun res!1450227 () Bool)

(declare-fun e!2222481 () Bool)

(assert (=> b!3591773 (=> (not res!1450227) (not e!2222481))))

(declare-fun rulesInvariant!4566 (LexerInterface!5169 List!37889) Bool)

(assert (=> b!3591773 (= res!1450227 (rulesInvariant!4566 thiss!23823 rules!3307))))

(declare-fun b!3591774 () Bool)

(declare-fun e!2222480 () Bool)

(assert (=> b!3591774 (= e!2222480 e!2222476)))

(declare-fun res!1450237 () Bool)

(assert (=> b!3591774 (=> res!1450237 e!2222476)))

(declare-fun isPrefix!2943 (List!37887 List!37887) Bool)

(assert (=> b!3591774 (= res!1450237 (not (isPrefix!2943 lt!1232400 lt!1232382)))))

(declare-fun ++!9396 (List!37887 List!37887) List!37887)

(assert (=> b!3591774 (isPrefix!2943 lt!1232400 (++!9396 lt!1232400 (_2!21958 lt!1232391)))))

(declare-fun lt!1232389 () Unit!53765)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1864 (List!37887 List!37887) Unit!53765)

(assert (=> b!3591774 (= lt!1232389 (lemmaConcatTwoListThenFirstIsPrefix!1864 lt!1232400 (_2!21958 lt!1232391)))))

(declare-fun list!13892 (BalanceConc!22592) List!37887)

(assert (=> b!3591774 (= lt!1232400 (list!13892 lt!1232394))))

(declare-fun charsOf!3594 (Token!10526) BalanceConc!22592)

(assert (=> b!3591774 (= lt!1232394 (charsOf!3594 (_1!21958 lt!1232391)))))

(declare-fun e!2222477 () Bool)

(assert (=> b!3591774 e!2222477))

(declare-fun res!1450238 () Bool)

(assert (=> b!3591774 (=> (not res!1450238) (not e!2222477))))

(declare-datatypes ((Option!7791 0))(
  ( (None!7790) (Some!7790 (v!37468 Rule!10960)) )
))
(declare-fun lt!1232392 () Option!7791)

(declare-fun isDefined!6022 (Option!7791) Bool)

(assert (=> b!3591774 (= res!1450238 (isDefined!6022 lt!1232392))))

(declare-fun getRuleFromTag!1186 (LexerInterface!5169 List!37889 String!42384) Option!7791)

(assert (=> b!3591774 (= lt!1232392 (getRuleFromTag!1186 thiss!23823 rules!3307 (tag!6254 (rule!8298 (_1!21958 lt!1232391)))))))

(declare-fun lt!1232397 () Unit!53765)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1186 (LexerInterface!5169 List!37889 List!37887 Token!10526) Unit!53765)

(assert (=> b!3591774 (= lt!1232397 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1186 thiss!23823 rules!3307 lt!1232382 (_1!21958 lt!1232391)))))

(declare-fun get!12190 (Option!7790) tuple2!37648)

(assert (=> b!3591774 (= lt!1232391 (get!12190 lt!1232402))))

(declare-fun lt!1232396 () Unit!53765)

(declare-fun lt!1232399 () List!37887)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!849 (LexerInterface!5169 List!37889 List!37887 List!37887) Unit!53765)

(assert (=> b!3591774 (= lt!1232396 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!849 thiss!23823 rules!3307 lt!1232399 suffix!1395))))

(declare-fun maxPrefix!2703 (LexerInterface!5169 List!37889 List!37887) Option!7790)

(assert (=> b!3591774 (= lt!1232402 (maxPrefix!2703 thiss!23823 rules!3307 lt!1232382))))

(assert (=> b!3591774 (isPrefix!2943 lt!1232399 lt!1232382)))

(declare-fun lt!1232395 () Unit!53765)

(assert (=> b!3591774 (= lt!1232395 (lemmaConcatTwoListThenFirstIsPrefix!1864 lt!1232399 suffix!1395))))

(assert (=> b!3591774 (= lt!1232382 (++!9396 lt!1232399 suffix!1395))))

(declare-fun b!3591775 () Bool)

(declare-fun e!2222475 () Bool)

(assert (=> b!3591775 (= e!2222481 e!2222475)))

(declare-fun res!1450224 () Bool)

(assert (=> b!3591775 (=> (not res!1450224) (not e!2222475))))

(declare-fun lt!1232383 () Option!7790)

(declare-fun isDefined!6023 (Option!7790) Bool)

(assert (=> b!3591775 (= res!1450224 (isDefined!6023 lt!1232383))))

(assert (=> b!3591775 (= lt!1232383 (maxPrefix!2703 thiss!23823 rules!3307 lt!1232399))))

(declare-fun token!511 () Token!10526)

(assert (=> b!3591775 (= lt!1232399 (list!13892 (charsOf!3594 token!511)))))

(declare-fun b!3591776 () Bool)

(declare-fun res!1450220 () Bool)

(declare-fun e!2222497 () Bool)

(assert (=> b!3591776 (=> (not res!1450220) (not e!2222497))))

(declare-fun rule!403 () Rule!10960)

(assert (=> b!3591776 (= res!1450220 (= (rule!8298 token!511) rule!403))))

(declare-fun b!3591777 () Bool)

(declare-fun res!1450225 () Bool)

(assert (=> b!3591777 (=> res!1450225 e!2222480)))

(declare-fun anOtherTypeRule!33 () Rule!10960)

(declare-fun lt!1232386 () C!20864)

(declare-fun contains!7223 (List!37887 C!20864) Bool)

(declare-fun usedCharacters!794 (Regex!10339) List!37887)

(assert (=> b!3591777 (= res!1450225 (not (contains!7223 (usedCharacters!794 (regex!5580 anOtherTypeRule!33)) lt!1232386)))))

(declare-fun b!3591778 () Bool)

(declare-fun res!1450223 () Bool)

(assert (=> b!3591778 (=> (not res!1450223) (not e!2222481))))

(declare-fun contains!7224 (List!37889 Rule!10960) Bool)

(assert (=> b!3591778 (= res!1450223 (contains!7224 rules!3307 anOtherTypeRule!33))))

(declare-fun e!2222495 () Bool)

(assert (=> b!3591779 (= e!2222495 (and tp!1099413 tp!1099421))))

(declare-fun tp!1099420 () Bool)

(declare-fun e!2222490 () Bool)

(declare-fun e!2222491 () Bool)

(declare-fun b!3591780 () Bool)

(declare-fun inv!51104 (String!42384) Bool)

(declare-fun inv!51107 (TokenValueInjection!11048) Bool)

(assert (=> b!3591780 (= e!2222490 (and tp!1099420 (inv!51104 (tag!6254 (h!43185 rules!3307))) (inv!51107 (transformation!5580 (h!43185 rules!3307))) e!2222491))))

(declare-fun b!3591781 () Bool)

(assert (=> b!3591781 (= e!2222497 (not e!2222498))))

(declare-fun res!1450229 () Bool)

(assert (=> b!3591781 (=> res!1450229 e!2222498)))

(declare-fun matchR!4908 (Regex!10339 List!37887) Bool)

(assert (=> b!3591781 (= res!1450229 (not (matchR!4908 (regex!5580 rule!403) lt!1232399)))))

(declare-fun ruleValid!1845 (LexerInterface!5169 Rule!10960) Bool)

(assert (=> b!3591781 (ruleValid!1845 thiss!23823 rule!403)))

(declare-fun lt!1232384 () Unit!53765)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1000 (LexerInterface!5169 Rule!10960 List!37889) Unit!53765)

(assert (=> b!3591781 (= lt!1232384 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1000 thiss!23823 rule!403 rules!3307))))

(declare-fun res!1450226 () Bool)

(assert (=> start!333362 (=> (not res!1450226) (not e!2222481))))

(get-info :version)

(assert (=> start!333362 (= res!1450226 ((_ is Lexer!5167) thiss!23823))))

(assert (=> start!333362 e!2222481))

(declare-fun e!2222486 () Bool)

(assert (=> start!333362 e!2222486))

(declare-fun e!2222484 () Bool)

(assert (=> start!333362 e!2222484))

(assert (=> start!333362 true))

(declare-fun e!2222494 () Bool)

(declare-fun inv!51108 (Token!10526) Bool)

(assert (=> start!333362 (and (inv!51108 token!511) e!2222494)))

(declare-fun e!2222483 () Bool)

(assert (=> start!333362 e!2222483))

(declare-fun e!2222482 () Bool)

(assert (=> start!333362 e!2222482))

(declare-fun b!3591782 () Bool)

(declare-fun tp!1099412 () Bool)

(declare-fun e!2222488 () Bool)

(declare-fun inv!21 (TokenValue!5810) Bool)

(assert (=> b!3591782 (= e!2222494 (and (inv!21 (value!179490 token!511)) e!2222488 tp!1099412))))

(assert (=> b!3591783 (= e!2222491 (and tp!1099419 tp!1099425))))

(declare-fun e!2222474 () Bool)

(assert (=> b!3591784 (= e!2222474 (and tp!1099424 tp!1099414))))

(declare-fun e!2222492 () Bool)

(assert (=> b!3591785 (= e!2222492 (and tp!1099423 tp!1099416))))

(declare-fun b!3591786 () Bool)

(declare-fun res!1450232 () Bool)

(assert (=> b!3591786 (=> (not res!1450232) (not e!2222497))))

(declare-fun lt!1232387 () tuple2!37648)

(assert (=> b!3591786 (= res!1450232 (isEmpty!22258 (_2!21958 lt!1232387)))))

(declare-fun b!3591787 () Bool)

(declare-fun e!2222493 () Bool)

(declare-fun lt!1232401 () Rule!10960)

(assert (=> b!3591787 (= e!2222493 (= (rule!8298 (_1!21958 lt!1232391)) lt!1232401))))

(declare-fun b!3591788 () Bool)

(declare-fun res!1450233 () Bool)

(assert (=> b!3591788 (=> (not res!1450233) (not e!2222481))))

(assert (=> b!3591788 (= res!1450233 (not (= (isSeparator!5580 anOtherTypeRule!33) (isSeparator!5580 rule!403))))))

(declare-fun b!3591789 () Bool)

(declare-fun res!1450235 () Bool)

(assert (=> b!3591789 (=> res!1450235 e!2222480)))

(declare-fun sepAndNonSepRulesDisjointChars!1750 (List!37889 List!37889) Bool)

(assert (=> b!3591789 (= res!1450235 (not (sepAndNonSepRulesDisjointChars!1750 rules!3307 rules!3307)))))

(declare-fun b!3591790 () Bool)

(assert (=> b!3591790 (= e!2222475 e!2222497)))

(declare-fun res!1450222 () Bool)

(assert (=> b!3591790 (=> (not res!1450222) (not e!2222497))))

(assert (=> b!3591790 (= res!1450222 (= (_1!21958 lt!1232387) token!511))))

(assert (=> b!3591790 (= lt!1232387 (get!12190 lt!1232383))))

(declare-fun b!3591791 () Bool)

(declare-fun res!1450231 () Bool)

(assert (=> b!3591791 (=> (not res!1450231) (not e!2222481))))

(assert (=> b!3591791 (= res!1450231 (contains!7224 rules!3307 rule!403))))

(declare-fun b!3591792 () Bool)

(declare-fun res!1450221 () Bool)

(assert (=> b!3591792 (=> res!1450221 e!2222476)))

(assert (=> b!3591792 (= res!1450221 (not (matchR!4908 (regex!5580 (rule!8298 (_1!21958 lt!1232391))) lt!1232400)))))

(declare-fun tp!1099426 () Bool)

(declare-fun b!3591793 () Bool)

(assert (=> b!3591793 (= e!2222483 (and tp!1099426 (inv!51104 (tag!6254 rule!403)) (inv!51107 (transformation!5580 rule!403)) e!2222495))))

(declare-fun b!3591794 () Bool)

(declare-fun tp_is_empty!17761 () Bool)

(declare-fun tp!1099417 () Bool)

(assert (=> b!3591794 (= e!2222484 (and tp_is_empty!17761 tp!1099417))))

(declare-fun b!3591795 () Bool)

(declare-fun tp!1099415 () Bool)

(assert (=> b!3591795 (= e!2222482 (and tp!1099415 (inv!51104 (tag!6254 anOtherTypeRule!33)) (inv!51107 (transformation!5580 anOtherTypeRule!33)) e!2222492))))

(declare-fun b!3591796 () Bool)

(declare-fun res!1450219 () Bool)

(assert (=> b!3591796 (=> (not res!1450219) (not e!2222481))))

(declare-fun isEmpty!22259 (List!37889) Bool)

(assert (=> b!3591796 (= res!1450219 (not (isEmpty!22259 rules!3307)))))

(declare-fun b!3591797 () Bool)

(assert (=> b!3591797 (= e!2222498 e!2222480)))

(declare-fun res!1450236 () Bool)

(assert (=> b!3591797 (=> res!1450236 e!2222480)))

(assert (=> b!3591797 (= res!1450236 (contains!7223 (usedCharacters!794 (regex!5580 rule!403)) lt!1232386))))

(declare-fun head!7506 (List!37887) C!20864)

(assert (=> b!3591797 (= lt!1232386 (head!7506 suffix!1395))))

(declare-fun b!3591798 () Bool)

(declare-fun tp!1099422 () Bool)

(assert (=> b!3591798 (= e!2222488 (and tp!1099422 (inv!51104 (tag!6254 (rule!8298 token!511))) (inv!51107 (transformation!5580 (rule!8298 token!511))) e!2222474))))

(declare-fun b!3591799 () Bool)

(assert (=> b!3591799 (= e!2222477 e!2222493)))

(declare-fun res!1450230 () Bool)

(assert (=> b!3591799 (=> (not res!1450230) (not e!2222493))))

(assert (=> b!3591799 (= res!1450230 (matchR!4908 (regex!5580 lt!1232401) (list!13892 (charsOf!3594 (_1!21958 lt!1232391)))))))

(declare-fun get!12191 (Option!7791) Rule!10960)

(assert (=> b!3591799 (= lt!1232401 (get!12191 lt!1232392))))

(declare-fun b!3591800 () Bool)

(declare-fun tp!1099418 () Bool)

(assert (=> b!3591800 (= e!2222486 (and e!2222490 tp!1099418))))

(assert (= (and start!333362 res!1450226) b!3591796))

(assert (= (and b!3591796 res!1450219) b!3591773))

(assert (= (and b!3591773 res!1450227) b!3591791))

(assert (= (and b!3591791 res!1450231) b!3591778))

(assert (= (and b!3591778 res!1450223) b!3591788))

(assert (= (and b!3591788 res!1450233) b!3591775))

(assert (= (and b!3591775 res!1450224) b!3591790))

(assert (= (and b!3591790 res!1450222) b!3591786))

(assert (= (and b!3591786 res!1450232) b!3591776))

(assert (= (and b!3591776 res!1450220) b!3591781))

(assert (= (and b!3591781 (not res!1450229)) b!3591772))

(assert (= (and b!3591772 (not res!1450228)) b!3591797))

(assert (= (and b!3591797 (not res!1450236)) b!3591777))

(assert (= (and b!3591777 (not res!1450225)) b!3591789))

(assert (= (and b!3591789 (not res!1450235)) b!3591774))

(assert (= (and b!3591774 res!1450238) b!3591799))

(assert (= (and b!3591799 res!1450230) b!3591787))

(assert (= (and b!3591774 (not res!1450237)) b!3591792))

(assert (= (and b!3591792 (not res!1450221)) b!3591771))

(assert (= (and b!3591771 (not res!1450234)) b!3591770))

(assert (= b!3591780 b!3591783))

(assert (= b!3591800 b!3591780))

(assert (= (and start!333362 ((_ is Cons!37765) rules!3307)) b!3591800))

(assert (= (and start!333362 ((_ is Cons!37763) suffix!1395)) b!3591794))

(assert (= b!3591798 b!3591784))

(assert (= b!3591782 b!3591798))

(assert (= start!333362 b!3591782))

(assert (= b!3591793 b!3591779))

(assert (= start!333362 b!3591793))

(assert (= b!3591795 b!3591785))

(assert (= start!333362 b!3591795))

(declare-fun m!4085999 () Bool)

(assert (=> b!3591777 m!4085999))

(assert (=> b!3591777 m!4085999))

(declare-fun m!4086001 () Bool)

(assert (=> b!3591777 m!4086001))

(declare-fun m!4086003 () Bool)

(assert (=> b!3591773 m!4086003))

(declare-fun m!4086005 () Bool)

(assert (=> b!3591799 m!4086005))

(assert (=> b!3591799 m!4086005))

(declare-fun m!4086007 () Bool)

(assert (=> b!3591799 m!4086007))

(assert (=> b!3591799 m!4086007))

(declare-fun m!4086009 () Bool)

(assert (=> b!3591799 m!4086009))

(declare-fun m!4086011 () Bool)

(assert (=> b!3591799 m!4086011))

(declare-fun m!4086013 () Bool)

(assert (=> b!3591781 m!4086013))

(declare-fun m!4086015 () Bool)

(assert (=> b!3591781 m!4086015))

(declare-fun m!4086017 () Bool)

(assert (=> b!3591781 m!4086017))

(declare-fun m!4086019 () Bool)

(assert (=> b!3591778 m!4086019))

(declare-fun m!4086021 () Bool)

(assert (=> b!3591793 m!4086021))

(declare-fun m!4086023 () Bool)

(assert (=> b!3591793 m!4086023))

(declare-fun m!4086025 () Bool)

(assert (=> b!3591791 m!4086025))

(declare-fun m!4086027 () Bool)

(assert (=> start!333362 m!4086027))

(declare-fun m!4086029 () Bool)

(assert (=> b!3591771 m!4086029))

(declare-fun m!4086031 () Bool)

(assert (=> b!3591771 m!4086031))

(declare-fun m!4086033 () Bool)

(assert (=> b!3591771 m!4086033))

(declare-fun m!4086035 () Bool)

(assert (=> b!3591771 m!4086035))

(declare-fun m!4086037 () Bool)

(assert (=> b!3591771 m!4086037))

(declare-fun m!4086039 () Bool)

(assert (=> b!3591771 m!4086039))

(assert (=> b!3591771 m!4086031))

(declare-fun m!4086041 () Bool)

(assert (=> b!3591797 m!4086041))

(assert (=> b!3591797 m!4086041))

(declare-fun m!4086043 () Bool)

(assert (=> b!3591797 m!4086043))

(declare-fun m!4086045 () Bool)

(assert (=> b!3591797 m!4086045))

(declare-fun m!4086047 () Bool)

(assert (=> b!3591772 m!4086047))

(declare-fun m!4086049 () Bool)

(assert (=> b!3591770 m!4086049))

(declare-fun m!4086051 () Bool)

(assert (=> b!3591770 m!4086051))

(declare-fun m!4086053 () Bool)

(assert (=> b!3591770 m!4086053))

(declare-fun m!4086055 () Bool)

(assert (=> b!3591770 m!4086055))

(declare-fun m!4086057 () Bool)

(assert (=> b!3591770 m!4086057))

(declare-fun m!4086059 () Bool)

(assert (=> b!3591770 m!4086059))

(declare-fun m!4086061 () Bool)

(assert (=> b!3591770 m!4086061))

(assert (=> b!3591770 m!4086057))

(declare-fun m!4086063 () Bool)

(assert (=> b!3591770 m!4086063))

(declare-fun m!4086065 () Bool)

(assert (=> b!3591780 m!4086065))

(declare-fun m!4086067 () Bool)

(assert (=> b!3591780 m!4086067))

(declare-fun m!4086069 () Bool)

(assert (=> b!3591792 m!4086069))

(declare-fun m!4086071 () Bool)

(assert (=> b!3591796 m!4086071))

(declare-fun m!4086073 () Bool)

(assert (=> b!3591782 m!4086073))

(declare-fun m!4086075 () Bool)

(assert (=> b!3591775 m!4086075))

(declare-fun m!4086077 () Bool)

(assert (=> b!3591775 m!4086077))

(declare-fun m!4086079 () Bool)

(assert (=> b!3591775 m!4086079))

(assert (=> b!3591775 m!4086079))

(declare-fun m!4086081 () Bool)

(assert (=> b!3591775 m!4086081))

(declare-fun m!4086083 () Bool)

(assert (=> b!3591795 m!4086083))

(declare-fun m!4086085 () Bool)

(assert (=> b!3591795 m!4086085))

(declare-fun m!4086087 () Bool)

(assert (=> b!3591798 m!4086087))

(declare-fun m!4086089 () Bool)

(assert (=> b!3591798 m!4086089))

(declare-fun m!4086091 () Bool)

(assert (=> b!3591789 m!4086091))

(declare-fun m!4086093 () Bool)

(assert (=> b!3591786 m!4086093))

(declare-fun m!4086095 () Bool)

(assert (=> b!3591774 m!4086095))

(declare-fun m!4086097 () Bool)

(assert (=> b!3591774 m!4086097))

(declare-fun m!4086099 () Bool)

(assert (=> b!3591774 m!4086099))

(assert (=> b!3591774 m!4086099))

(declare-fun m!4086101 () Bool)

(assert (=> b!3591774 m!4086101))

(declare-fun m!4086103 () Bool)

(assert (=> b!3591774 m!4086103))

(declare-fun m!4086105 () Bool)

(assert (=> b!3591774 m!4086105))

(declare-fun m!4086107 () Bool)

(assert (=> b!3591774 m!4086107))

(declare-fun m!4086109 () Bool)

(assert (=> b!3591774 m!4086109))

(declare-fun m!4086111 () Bool)

(assert (=> b!3591774 m!4086111))

(declare-fun m!4086113 () Bool)

(assert (=> b!3591774 m!4086113))

(declare-fun m!4086115 () Bool)

(assert (=> b!3591774 m!4086115))

(assert (=> b!3591774 m!4086005))

(declare-fun m!4086117 () Bool)

(assert (=> b!3591774 m!4086117))

(declare-fun m!4086119 () Bool)

(assert (=> b!3591774 m!4086119))

(declare-fun m!4086121 () Bool)

(assert (=> b!3591774 m!4086121))

(declare-fun m!4086123 () Bool)

(assert (=> b!3591790 m!4086123))

(check-sat tp_is_empty!17761 (not b!3591772) (not b!3591789) (not b!3591773) (not b!3591797) b_and!259859 (not b!3591800) (not b!3591777) b_and!259851 (not b!3591794) b_and!259857 (not b!3591795) b_and!259855 b_and!259865 (not b_next!93395) (not b!3591775) (not b!3591791) (not b!3591782) (not start!333362) b_and!259861 (not b!3591792) (not b!3591771) (not b_next!93387) b_and!259863 (not b!3591778) (not b!3591786) (not b!3591774) (not b_next!93385) (not b!3591799) (not b_next!93397) (not b_next!93389) (not b!3591770) (not b!3591798) (not b_next!93399) (not b!3591796) (not b_next!93393) (not b!3591790) (not b!3591780) b_and!259853 (not b!3591781) (not b!3591793) (not b_next!93391))
(check-sat b_and!259861 (not b_next!93385) b_and!259859 b_and!259851 b_and!259853 b_and!259857 (not b_next!93391) b_and!259855 b_and!259865 (not b_next!93395) (not b_next!93387) b_and!259863 (not b_next!93397) (not b_next!93389) (not b_next!93399) (not b_next!93393))
(get-model)

(declare-fun d!1058803 () Bool)

(assert (=> d!1058803 (= (isEmpty!22258 (_2!21958 lt!1232387)) ((_ is Nil!37763) (_2!21958 lt!1232387)))))

(assert (=> b!3591786 d!1058803))

(declare-fun d!1058807 () Bool)

(declare-fun res!1450323 () Bool)

(declare-fun e!2222577 () Bool)

(assert (=> d!1058807 (=> res!1450323 e!2222577)))

(assert (=> d!1058807 (= res!1450323 (not ((_ is Cons!37765) rules!3307)))))

(assert (=> d!1058807 (= (sepAndNonSepRulesDisjointChars!1750 rules!3307 rules!3307) e!2222577)))

(declare-fun b!3591942 () Bool)

(declare-fun e!2222578 () Bool)

(assert (=> b!3591942 (= e!2222577 e!2222578)))

(declare-fun res!1450324 () Bool)

(assert (=> b!3591942 (=> (not res!1450324) (not e!2222578))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!790 (Rule!10960 List!37889) Bool)

(assert (=> b!3591942 (= res!1450324 (ruleDisjointCharsFromAllFromOtherType!790 (h!43185 rules!3307) rules!3307))))

(declare-fun b!3591943 () Bool)

(assert (=> b!3591943 (= e!2222578 (sepAndNonSepRulesDisjointChars!1750 rules!3307 (t!291140 rules!3307)))))

(assert (= (and d!1058807 (not res!1450323)) b!3591942))

(assert (= (and b!3591942 res!1450324) b!3591943))

(declare-fun m!4086241 () Bool)

(assert (=> b!3591942 m!4086241))

(declare-fun m!4086243 () Bool)

(assert (=> b!3591943 m!4086243))

(assert (=> b!3591789 d!1058807))

(declare-fun d!1058809 () Bool)

(assert (=> d!1058809 (= (get!12190 lt!1232383) (v!37467 lt!1232383))))

(assert (=> b!3591790 d!1058809))

(declare-fun d!1058811 () Bool)

(declare-fun lt!1232439 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5372 (List!37889) (InoxSet Rule!10960))

(assert (=> d!1058811 (= lt!1232439 (select (content!5372 rules!3307) rule!403))))

(declare-fun e!2222584 () Bool)

(assert (=> d!1058811 (= lt!1232439 e!2222584)))

(declare-fun res!1450329 () Bool)

(assert (=> d!1058811 (=> (not res!1450329) (not e!2222584))))

(assert (=> d!1058811 (= res!1450329 ((_ is Cons!37765) rules!3307))))

(assert (=> d!1058811 (= (contains!7224 rules!3307 rule!403) lt!1232439)))

(declare-fun b!3591948 () Bool)

(declare-fun e!2222583 () Bool)

(assert (=> b!3591948 (= e!2222584 e!2222583)))

(declare-fun res!1450330 () Bool)

(assert (=> b!3591948 (=> res!1450330 e!2222583)))

(assert (=> b!3591948 (= res!1450330 (= (h!43185 rules!3307) rule!403))))

(declare-fun b!3591949 () Bool)

(assert (=> b!3591949 (= e!2222583 (contains!7224 (t!291140 rules!3307) rule!403))))

(assert (= (and d!1058811 res!1450329) b!3591948))

(assert (= (and b!3591948 (not res!1450330)) b!3591949))

(declare-fun m!4086247 () Bool)

(assert (=> d!1058811 m!4086247))

(declare-fun m!4086249 () Bool)

(assert (=> d!1058811 m!4086249))

(declare-fun m!4086251 () Bool)

(assert (=> b!3591949 m!4086251))

(assert (=> b!3591791 d!1058811))

(declare-fun d!1058815 () Bool)

(declare-fun lt!1232442 () Int)

(assert (=> d!1058815 (>= lt!1232442 0)))

(declare-fun e!2222587 () Int)

(assert (=> d!1058815 (= lt!1232442 e!2222587)))

(declare-fun c!621997 () Bool)

(assert (=> d!1058815 (= c!621997 ((_ is Nil!37763) lt!1232400))))

(assert (=> d!1058815 (= (size!28766 lt!1232400) lt!1232442)))

(declare-fun b!3591954 () Bool)

(assert (=> b!3591954 (= e!2222587 0)))

(declare-fun b!3591955 () Bool)

(assert (=> b!3591955 (= e!2222587 (+ 1 (size!28766 (t!291138 lt!1232400))))))

(assert (= (and d!1058815 c!621997) b!3591954))

(assert (= (and d!1058815 (not c!621997)) b!3591955))

(declare-fun m!4086253 () Bool)

(assert (=> b!3591955 m!4086253))

(assert (=> b!3591770 d!1058815))

(declare-fun d!1058817 () Bool)

(declare-fun fromListB!1905 (List!37887) BalanceConc!22592)

(assert (=> d!1058817 (= (seqFromList!4133 lt!1232400) (fromListB!1905 lt!1232400))))

(declare-fun bs!570271 () Bool)

(assert (= bs!570271 d!1058817))

(declare-fun m!4086255 () Bool)

(assert (=> bs!570271 m!4086255))

(assert (=> b!3591770 d!1058817))

(declare-fun d!1058819 () Bool)

(declare-fun dynLambda!16245 (Int BalanceConc!22592) TokenValue!5810)

(assert (=> d!1058819 (= (apply!9086 (transformation!5580 (rule!8298 (_1!21958 lt!1232391))) (seqFromList!4133 lt!1232400)) (dynLambda!16245 (toValue!7864 (transformation!5580 (rule!8298 (_1!21958 lt!1232391)))) (seqFromList!4133 lt!1232400)))))

(declare-fun b_lambda!106119 () Bool)

(assert (=> (not b_lambda!106119) (not d!1058819)))

(declare-fun t!291150 () Bool)

(declare-fun tb!205025 () Bool)

(assert (=> (and b!3591785 (= (toValue!7864 (transformation!5580 anOtherTypeRule!33)) (toValue!7864 (transformation!5580 (rule!8298 (_1!21958 lt!1232391))))) t!291150) tb!205025))

(declare-fun result!249968 () Bool)

(assert (=> tb!205025 (= result!249968 (inv!21 (dynLambda!16245 (toValue!7864 (transformation!5580 (rule!8298 (_1!21958 lt!1232391)))) (seqFromList!4133 lt!1232400))))))

(declare-fun m!4086257 () Bool)

(assert (=> tb!205025 m!4086257))

(assert (=> d!1058819 t!291150))

(declare-fun b_and!259883 () Bool)

(assert (= b_and!259851 (and (=> t!291150 result!249968) b_and!259883)))

(declare-fun t!291152 () Bool)

(declare-fun tb!205027 () Bool)

(assert (=> (and b!3591779 (= (toValue!7864 (transformation!5580 rule!403)) (toValue!7864 (transformation!5580 (rule!8298 (_1!21958 lt!1232391))))) t!291152) tb!205027))

(declare-fun result!249972 () Bool)

(assert (= result!249972 result!249968))

(assert (=> d!1058819 t!291152))

(declare-fun b_and!259885 () Bool)

(assert (= b_and!259855 (and (=> t!291152 result!249972) b_and!259885)))

(declare-fun tb!205029 () Bool)

(declare-fun t!291154 () Bool)

(assert (=> (and b!3591783 (= (toValue!7864 (transformation!5580 (h!43185 rules!3307))) (toValue!7864 (transformation!5580 (rule!8298 (_1!21958 lt!1232391))))) t!291154) tb!205029))

(declare-fun result!249974 () Bool)

(assert (= result!249974 result!249968))

(assert (=> d!1058819 t!291154))

(declare-fun b_and!259887 () Bool)

(assert (= b_and!259859 (and (=> t!291154 result!249974) b_and!259887)))

(declare-fun tb!205031 () Bool)

(declare-fun t!291156 () Bool)

(assert (=> (and b!3591784 (= (toValue!7864 (transformation!5580 (rule!8298 token!511))) (toValue!7864 (transformation!5580 (rule!8298 (_1!21958 lt!1232391))))) t!291156) tb!205031))

(declare-fun result!249976 () Bool)

(assert (= result!249976 result!249968))

(assert (=> d!1058819 t!291156))

(declare-fun b_and!259889 () Bool)

(assert (= b_and!259863 (and (=> t!291156 result!249976) b_and!259889)))

(assert (=> d!1058819 m!4086057))

(declare-fun m!4086259 () Bool)

(assert (=> d!1058819 m!4086259))

(assert (=> b!3591770 d!1058819))

(declare-fun b!3592030 () Bool)

(declare-fun res!1450381 () Bool)

(declare-fun e!2222628 () Bool)

(assert (=> b!3592030 (=> (not res!1450381) (not e!2222628))))

(declare-fun lt!1232480 () Option!7790)

(assert (=> b!3592030 (= res!1450381 (= (rule!8298 (_1!21958 (get!12190 lt!1232480))) (rule!8298 (_1!21958 lt!1232391))))))

(declare-fun b!3592031 () Bool)

(assert (=> b!3592031 (= e!2222628 (= (size!28767 (_1!21958 (get!12190 lt!1232480))) (size!28766 (originalCharacters!6294 (_1!21958 (get!12190 lt!1232480))))))))

(declare-fun b!3592032 () Bool)

(declare-fun e!2222631 () Bool)

(declare-datatypes ((tuple2!37652 0))(
  ( (tuple2!37653 (_1!21960 List!37887) (_2!21960 List!37887)) )
))
(declare-fun findLongestMatchInner!973 (Regex!10339 List!37887 Int List!37887 List!37887 Int) tuple2!37652)

(assert (=> b!3592032 (= e!2222631 (matchR!4908 (regex!5580 (rule!8298 (_1!21958 lt!1232391))) (_1!21960 (findLongestMatchInner!973 (regex!5580 (rule!8298 (_1!21958 lt!1232391))) Nil!37763 (size!28766 Nil!37763) lt!1232382 lt!1232382 (size!28766 lt!1232382)))))))

(declare-fun b!3592033 () Bool)

(declare-fun e!2222630 () Option!7790)

(assert (=> b!3592033 (= e!2222630 None!7789)))

(declare-fun b!3592034 () Bool)

(declare-fun res!1450379 () Bool)

(assert (=> b!3592034 (=> (not res!1450379) (not e!2222628))))

(assert (=> b!3592034 (= res!1450379 (= (value!179490 (_1!21958 (get!12190 lt!1232480))) (apply!9086 (transformation!5580 (rule!8298 (_1!21958 (get!12190 lt!1232480)))) (seqFromList!4133 (originalCharacters!6294 (_1!21958 (get!12190 lt!1232480)))))))))

(declare-fun d!1058821 () Bool)

(declare-fun e!2222629 () Bool)

(assert (=> d!1058821 e!2222629))

(declare-fun res!1450380 () Bool)

(assert (=> d!1058821 (=> res!1450380 e!2222629)))

(declare-fun isEmpty!22261 (Option!7790) Bool)

(assert (=> d!1058821 (= res!1450380 (isEmpty!22261 lt!1232480))))

(assert (=> d!1058821 (= lt!1232480 e!2222630)))

(declare-fun c!622010 () Bool)

(declare-fun lt!1232482 () tuple2!37652)

(assert (=> d!1058821 (= c!622010 (isEmpty!22258 (_1!21960 lt!1232482)))))

(declare-fun findLongestMatch!888 (Regex!10339 List!37887) tuple2!37652)

(assert (=> d!1058821 (= lt!1232482 (findLongestMatch!888 (regex!5580 (rule!8298 (_1!21958 lt!1232391))) lt!1232382))))

(assert (=> d!1058821 (ruleValid!1845 thiss!23823 (rule!8298 (_1!21958 lt!1232391)))))

(assert (=> d!1058821 (= (maxPrefixOneRule!1847 thiss!23823 (rule!8298 (_1!21958 lt!1232391)) lt!1232382) lt!1232480)))

(declare-fun b!3592035 () Bool)

(assert (=> b!3592035 (= e!2222629 e!2222628)))

(declare-fun res!1450377 () Bool)

(assert (=> b!3592035 (=> (not res!1450377) (not e!2222628))))

(assert (=> b!3592035 (= res!1450377 (matchR!4908 (regex!5580 (rule!8298 (_1!21958 lt!1232391))) (list!13892 (charsOf!3594 (_1!21958 (get!12190 lt!1232480))))))))

(declare-fun b!3592036 () Bool)

(declare-fun res!1450382 () Bool)

(assert (=> b!3592036 (=> (not res!1450382) (not e!2222628))))

(assert (=> b!3592036 (= res!1450382 (= (++!9396 (list!13892 (charsOf!3594 (_1!21958 (get!12190 lt!1232480)))) (_2!21958 (get!12190 lt!1232480))) lt!1232382))))

(declare-fun b!3592037 () Bool)

(assert (=> b!3592037 (= e!2222630 (Some!7789 (tuple2!37649 (Token!10527 (apply!9086 (transformation!5580 (rule!8298 (_1!21958 lt!1232391))) (seqFromList!4133 (_1!21960 lt!1232482))) (rule!8298 (_1!21958 lt!1232391)) (size!28768 (seqFromList!4133 (_1!21960 lt!1232482))) (_1!21960 lt!1232482)) (_2!21960 lt!1232482))))))

(declare-fun lt!1232478 () Unit!53765)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!946 (Regex!10339 List!37887) Unit!53765)

(assert (=> b!3592037 (= lt!1232478 (longestMatchIsAcceptedByMatchOrIsEmpty!946 (regex!5580 (rule!8298 (_1!21958 lt!1232391))) lt!1232382))))

(declare-fun res!1450376 () Bool)

(assert (=> b!3592037 (= res!1450376 (isEmpty!22258 (_1!21960 (findLongestMatchInner!973 (regex!5580 (rule!8298 (_1!21958 lt!1232391))) Nil!37763 (size!28766 Nil!37763) lt!1232382 lt!1232382 (size!28766 lt!1232382)))))))

(assert (=> b!3592037 (=> res!1450376 e!2222631)))

(assert (=> b!3592037 e!2222631))

(declare-fun lt!1232479 () Unit!53765)

(assert (=> b!3592037 (= lt!1232479 lt!1232478)))

(declare-fun lt!1232481 () Unit!53765)

(assert (=> b!3592037 (= lt!1232481 (lemmaSemiInverse!1337 (transformation!5580 (rule!8298 (_1!21958 lt!1232391))) (seqFromList!4133 (_1!21960 lt!1232482))))))

(declare-fun b!3592038 () Bool)

(declare-fun res!1450378 () Bool)

(assert (=> b!3592038 (=> (not res!1450378) (not e!2222628))))

(assert (=> b!3592038 (= res!1450378 (< (size!28766 (_2!21958 (get!12190 lt!1232480))) (size!28766 lt!1232382)))))

(assert (= (and d!1058821 c!622010) b!3592033))

(assert (= (and d!1058821 (not c!622010)) b!3592037))

(assert (= (and b!3592037 (not res!1450376)) b!3592032))

(assert (= (and d!1058821 (not res!1450380)) b!3592035))

(assert (= (and b!3592035 res!1450377) b!3592036))

(assert (= (and b!3592036 res!1450382) b!3592038))

(assert (= (and b!3592038 res!1450378) b!3592030))

(assert (= (and b!3592030 res!1450381) b!3592034))

(assert (= (and b!3592034 res!1450379) b!3592031))

(declare-fun m!4086347 () Bool)

(assert (=> b!3592035 m!4086347))

(declare-fun m!4086349 () Bool)

(assert (=> b!3592035 m!4086349))

(assert (=> b!3592035 m!4086349))

(declare-fun m!4086351 () Bool)

(assert (=> b!3592035 m!4086351))

(assert (=> b!3592035 m!4086351))

(declare-fun m!4086353 () Bool)

(assert (=> b!3592035 m!4086353))

(assert (=> b!3592036 m!4086347))

(assert (=> b!3592036 m!4086349))

(assert (=> b!3592036 m!4086349))

(assert (=> b!3592036 m!4086351))

(assert (=> b!3592036 m!4086351))

(declare-fun m!4086355 () Bool)

(assert (=> b!3592036 m!4086355))

(assert (=> b!3592037 m!4086059))

(declare-fun m!4086357 () Bool)

(assert (=> b!3592037 m!4086357))

(declare-fun m!4086359 () Bool)

(assert (=> b!3592037 m!4086359))

(declare-fun m!4086361 () Bool)

(assert (=> b!3592037 m!4086361))

(assert (=> b!3592037 m!4086359))

(declare-fun m!4086363 () Bool)

(assert (=> b!3592037 m!4086363))

(assert (=> b!3592037 m!4086359))

(declare-fun m!4086365 () Bool)

(assert (=> b!3592037 m!4086365))

(declare-fun m!4086367 () Bool)

(assert (=> b!3592037 m!4086367))

(assert (=> b!3592037 m!4086367))

(assert (=> b!3592037 m!4086059))

(declare-fun m!4086369 () Bool)

(assert (=> b!3592037 m!4086369))

(assert (=> b!3592037 m!4086359))

(declare-fun m!4086371 () Bool)

(assert (=> b!3592037 m!4086371))

(assert (=> b!3592031 m!4086347))

(declare-fun m!4086373 () Bool)

(assert (=> b!3592031 m!4086373))

(assert (=> b!3592038 m!4086347))

(declare-fun m!4086375 () Bool)

(assert (=> b!3592038 m!4086375))

(assert (=> b!3592038 m!4086059))

(assert (=> b!3592030 m!4086347))

(assert (=> b!3592034 m!4086347))

(declare-fun m!4086377 () Bool)

(assert (=> b!3592034 m!4086377))

(assert (=> b!3592034 m!4086377))

(declare-fun m!4086379 () Bool)

(assert (=> b!3592034 m!4086379))

(declare-fun m!4086381 () Bool)

(assert (=> d!1058821 m!4086381))

(declare-fun m!4086383 () Bool)

(assert (=> d!1058821 m!4086383))

(declare-fun m!4086385 () Bool)

(assert (=> d!1058821 m!4086385))

(declare-fun m!4086387 () Bool)

(assert (=> d!1058821 m!4086387))

(assert (=> b!3592032 m!4086367))

(assert (=> b!3592032 m!4086059))

(assert (=> b!3592032 m!4086367))

(assert (=> b!3592032 m!4086059))

(assert (=> b!3592032 m!4086369))

(declare-fun m!4086389 () Bool)

(assert (=> b!3592032 m!4086389))

(assert (=> b!3591770 d!1058821))

(declare-fun d!1058847 () Bool)

(assert (=> d!1058847 (= (_2!21958 lt!1232391) lt!1232393)))

(declare-fun lt!1232485 () Unit!53765)

(declare-fun choose!20899 (List!37887 List!37887 List!37887 List!37887 List!37887) Unit!53765)

(assert (=> d!1058847 (= lt!1232485 (choose!20899 lt!1232400 (_2!21958 lt!1232391) lt!1232400 lt!1232393 lt!1232382))))

(assert (=> d!1058847 (isPrefix!2943 lt!1232400 lt!1232382)))

(assert (=> d!1058847 (= (lemmaSamePrefixThenSameSuffix!1298 lt!1232400 (_2!21958 lt!1232391) lt!1232400 lt!1232393 lt!1232382) lt!1232485)))

(declare-fun bs!570275 () Bool)

(assert (= bs!570275 d!1058847))

(declare-fun m!4086391 () Bool)

(assert (=> bs!570275 m!4086391))

(assert (=> bs!570275 m!4086103))

(assert (=> b!3591770 d!1058847))

(declare-fun d!1058849 () Bool)

(assert (=> d!1058849 (= (maxPrefixOneRule!1847 thiss!23823 (rule!8298 (_1!21958 lt!1232391)) lt!1232382) (Some!7789 (tuple2!37649 (Token!10527 (apply!9086 (transformation!5580 (rule!8298 (_1!21958 lt!1232391))) (seqFromList!4133 lt!1232400)) (rule!8298 (_1!21958 lt!1232391)) (size!28766 lt!1232400) lt!1232400) (_2!21958 lt!1232391))))))

(declare-fun lt!1232488 () Unit!53765)

(declare-fun choose!20900 (LexerInterface!5169 List!37889 List!37887 List!37887 List!37887 Rule!10960) Unit!53765)

(assert (=> d!1058849 (= lt!1232488 (choose!20900 thiss!23823 rules!3307 lt!1232400 lt!1232382 (_2!21958 lt!1232391) (rule!8298 (_1!21958 lt!1232391))))))

(assert (=> d!1058849 (not (isEmpty!22259 rules!3307))))

(assert (=> d!1058849 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!919 thiss!23823 rules!3307 lt!1232400 lt!1232382 (_2!21958 lt!1232391) (rule!8298 (_1!21958 lt!1232391))) lt!1232488)))

(declare-fun bs!570276 () Bool)

(assert (= bs!570276 d!1058849))

(assert (=> bs!570276 m!4086057))

(assert (=> bs!570276 m!4086053))

(assert (=> bs!570276 m!4086057))

(assert (=> bs!570276 m!4086063))

(assert (=> bs!570276 m!4086071))

(declare-fun m!4086393 () Bool)

(assert (=> bs!570276 m!4086393))

(assert (=> bs!570276 m!4086049))

(assert (=> b!3591770 d!1058849))

(declare-fun d!1058851 () Bool)

(declare-fun lt!1232489 () Int)

(assert (=> d!1058851 (>= lt!1232489 0)))

(declare-fun e!2222632 () Int)

(assert (=> d!1058851 (= lt!1232489 e!2222632)))

(declare-fun c!622011 () Bool)

(assert (=> d!1058851 (= c!622011 ((_ is Nil!37763) lt!1232382))))

(assert (=> d!1058851 (= (size!28766 lt!1232382) lt!1232489)))

(declare-fun b!3592039 () Bool)

(assert (=> b!3592039 (= e!2222632 0)))

(declare-fun b!3592040 () Bool)

(assert (=> b!3592040 (= e!2222632 (+ 1 (size!28766 (t!291138 lt!1232382))))))

(assert (= (and d!1058851 c!622011) b!3592039))

(assert (= (and d!1058851 (not c!622011)) b!3592040))

(declare-fun m!4086395 () Bool)

(assert (=> b!3592040 m!4086395))

(assert (=> b!3591770 d!1058851))

(declare-fun d!1058853 () Bool)

(declare-fun lt!1232492 () List!37887)

(assert (=> d!1058853 (= (++!9396 lt!1232400 lt!1232492) lt!1232382)))

(declare-fun e!2222635 () List!37887)

(assert (=> d!1058853 (= lt!1232492 e!2222635)))

(declare-fun c!622014 () Bool)

(assert (=> d!1058853 (= c!622014 ((_ is Cons!37763) lt!1232400))))

(assert (=> d!1058853 (>= (size!28766 lt!1232382) (size!28766 lt!1232400))))

(assert (=> d!1058853 (= (getSuffix!1518 lt!1232382 lt!1232400) lt!1232492)))

(declare-fun b!3592045 () Bool)

(declare-fun tail!5565 (List!37887) List!37887)

(assert (=> b!3592045 (= e!2222635 (getSuffix!1518 (tail!5565 lt!1232382) (t!291138 lt!1232400)))))

(declare-fun b!3592046 () Bool)

(assert (=> b!3592046 (= e!2222635 lt!1232382)))

(assert (= (and d!1058853 c!622014) b!3592045))

(assert (= (and d!1058853 (not c!622014)) b!3592046))

(declare-fun m!4086397 () Bool)

(assert (=> d!1058853 m!4086397))

(assert (=> d!1058853 m!4086059))

(assert (=> d!1058853 m!4086053))

(declare-fun m!4086399 () Bool)

(assert (=> b!3592045 m!4086399))

(assert (=> b!3592045 m!4086399))

(declare-fun m!4086401 () Bool)

(assert (=> b!3592045 m!4086401))

(assert (=> b!3591770 d!1058853))

(declare-fun d!1058855 () Bool)

(assert (=> d!1058855 (= (apply!9086 (transformation!5580 (rule!8298 (_1!21958 lt!1232391))) lt!1232394) (dynLambda!16245 (toValue!7864 (transformation!5580 (rule!8298 (_1!21958 lt!1232391)))) lt!1232394))))

(declare-fun b_lambda!106125 () Bool)

(assert (=> (not b_lambda!106125) (not d!1058855)))

(declare-fun tb!205049 () Bool)

(declare-fun t!291174 () Bool)

(assert (=> (and b!3591785 (= (toValue!7864 (transformation!5580 anOtherTypeRule!33)) (toValue!7864 (transformation!5580 (rule!8298 (_1!21958 lt!1232391))))) t!291174) tb!205049))

(declare-fun result!249996 () Bool)

(assert (=> tb!205049 (= result!249996 (inv!21 (dynLambda!16245 (toValue!7864 (transformation!5580 (rule!8298 (_1!21958 lt!1232391)))) lt!1232394)))))

(declare-fun m!4086403 () Bool)

(assert (=> tb!205049 m!4086403))

(assert (=> d!1058855 t!291174))

(declare-fun b_and!259907 () Bool)

(assert (= b_and!259883 (and (=> t!291174 result!249996) b_and!259907)))

(declare-fun tb!205051 () Bool)

(declare-fun t!291176 () Bool)

(assert (=> (and b!3591779 (= (toValue!7864 (transformation!5580 rule!403)) (toValue!7864 (transformation!5580 (rule!8298 (_1!21958 lt!1232391))))) t!291176) tb!205051))

(declare-fun result!249998 () Bool)

(assert (= result!249998 result!249996))

(assert (=> d!1058855 t!291176))

(declare-fun b_and!259909 () Bool)

(assert (= b_and!259885 (and (=> t!291176 result!249998) b_and!259909)))

(declare-fun t!291178 () Bool)

(declare-fun tb!205053 () Bool)

(assert (=> (and b!3591783 (= (toValue!7864 (transformation!5580 (h!43185 rules!3307))) (toValue!7864 (transformation!5580 (rule!8298 (_1!21958 lt!1232391))))) t!291178) tb!205053))

(declare-fun result!250000 () Bool)

(assert (= result!250000 result!249996))

(assert (=> d!1058855 t!291178))

(declare-fun b_and!259911 () Bool)

(assert (= b_and!259887 (and (=> t!291178 result!250000) b_and!259911)))

(declare-fun t!291180 () Bool)

(declare-fun tb!205055 () Bool)

(assert (=> (and b!3591784 (= (toValue!7864 (transformation!5580 (rule!8298 token!511))) (toValue!7864 (transformation!5580 (rule!8298 (_1!21958 lt!1232391))))) t!291180) tb!205055))

(declare-fun result!250002 () Bool)

(assert (= result!250002 result!249996))

(assert (=> d!1058855 t!291180))

(declare-fun b_and!259913 () Bool)

(assert (= b_and!259889 (and (=> t!291180 result!250002) b_and!259913)))

(declare-fun m!4086405 () Bool)

(assert (=> d!1058855 m!4086405))

(assert (=> b!3591771 d!1058855))

(declare-fun d!1058857 () Bool)

(assert (=> d!1058857 (= (seqFromList!4133 (originalCharacters!6294 (_1!21958 lt!1232391))) (fromListB!1905 (originalCharacters!6294 (_1!21958 lt!1232391))))))

(declare-fun bs!570277 () Bool)

(assert (= bs!570277 d!1058857))

(declare-fun m!4086407 () Bool)

(assert (=> bs!570277 m!4086407))

(assert (=> b!3591771 d!1058857))

(declare-fun b!3592177 () Bool)

(declare-fun e!2222715 () Bool)

(assert (=> b!3592177 (= e!2222715 true)))

(declare-fun d!1058859 () Bool)

(assert (=> d!1058859 e!2222715))

(assert (= d!1058859 b!3592177))

(declare-fun order!20501 () Int)

(declare-fun lambda!123864 () Int)

(declare-fun order!20499 () Int)

(declare-fun dynLambda!16246 (Int Int) Int)

(declare-fun dynLambda!16247 (Int Int) Int)

(assert (=> b!3592177 (< (dynLambda!16246 order!20499 (toValue!7864 (transformation!5580 (rule!8298 (_1!21958 lt!1232391))))) (dynLambda!16247 order!20501 lambda!123864))))

(declare-fun order!20503 () Int)

(declare-fun dynLambda!16248 (Int Int) Int)

(assert (=> b!3592177 (< (dynLambda!16248 order!20503 (toChars!7723 (transformation!5580 (rule!8298 (_1!21958 lt!1232391))))) (dynLambda!16247 order!20501 lambda!123864))))

(declare-fun dynLambda!16249 (Int TokenValue!5810) BalanceConc!22592)

(assert (=> d!1058859 (= (list!13892 (dynLambda!16249 (toChars!7723 (transformation!5580 (rule!8298 (_1!21958 lt!1232391)))) (dynLambda!16245 (toValue!7864 (transformation!5580 (rule!8298 (_1!21958 lt!1232391)))) lt!1232394))) (list!13892 lt!1232394))))

(declare-fun lt!1232582 () Unit!53765)

(declare-fun ForallOf!625 (Int BalanceConc!22592) Unit!53765)

(assert (=> d!1058859 (= lt!1232582 (ForallOf!625 lambda!123864 lt!1232394))))

(assert (=> d!1058859 (= (lemmaSemiInverse!1337 (transformation!5580 (rule!8298 (_1!21958 lt!1232391))) lt!1232394) lt!1232582)))

(declare-fun b_lambda!106127 () Bool)

(assert (=> (not b_lambda!106127) (not d!1058859)))

(declare-fun t!291182 () Bool)

(declare-fun tb!205057 () Bool)

(assert (=> (and b!3591785 (= (toChars!7723 (transformation!5580 anOtherTypeRule!33)) (toChars!7723 (transformation!5580 (rule!8298 (_1!21958 lt!1232391))))) t!291182) tb!205057))

(declare-fun tp!1099433 () Bool)

(declare-fun b!3592182 () Bool)

(declare-fun e!2222718 () Bool)

(declare-fun inv!51111 (Conc!11489) Bool)

(assert (=> b!3592182 (= e!2222718 (and (inv!51111 (c!621963 (dynLambda!16249 (toChars!7723 (transformation!5580 (rule!8298 (_1!21958 lt!1232391)))) (dynLambda!16245 (toValue!7864 (transformation!5580 (rule!8298 (_1!21958 lt!1232391)))) lt!1232394)))) tp!1099433))))

(declare-fun result!250004 () Bool)

(declare-fun inv!51112 (BalanceConc!22592) Bool)

(assert (=> tb!205057 (= result!250004 (and (inv!51112 (dynLambda!16249 (toChars!7723 (transformation!5580 (rule!8298 (_1!21958 lt!1232391)))) (dynLambda!16245 (toValue!7864 (transformation!5580 (rule!8298 (_1!21958 lt!1232391)))) lt!1232394))) e!2222718))))

(assert (= tb!205057 b!3592182))

(declare-fun m!4086593 () Bool)

(assert (=> b!3592182 m!4086593))

(declare-fun m!4086595 () Bool)

(assert (=> tb!205057 m!4086595))

(assert (=> d!1058859 t!291182))

(declare-fun b_and!259915 () Bool)

(assert (= b_and!259853 (and (=> t!291182 result!250004) b_and!259915)))

(declare-fun tb!205059 () Bool)

(declare-fun t!291184 () Bool)

(assert (=> (and b!3591779 (= (toChars!7723 (transformation!5580 rule!403)) (toChars!7723 (transformation!5580 (rule!8298 (_1!21958 lt!1232391))))) t!291184) tb!205059))

(declare-fun result!250008 () Bool)

(assert (= result!250008 result!250004))

(assert (=> d!1058859 t!291184))

(declare-fun b_and!259917 () Bool)

(assert (= b_and!259857 (and (=> t!291184 result!250008) b_and!259917)))

(declare-fun t!291186 () Bool)

(declare-fun tb!205061 () Bool)

(assert (=> (and b!3591783 (= (toChars!7723 (transformation!5580 (h!43185 rules!3307))) (toChars!7723 (transformation!5580 (rule!8298 (_1!21958 lt!1232391))))) t!291186) tb!205061))

(declare-fun result!250010 () Bool)

(assert (= result!250010 result!250004))

(assert (=> d!1058859 t!291186))

(declare-fun b_and!259919 () Bool)

(assert (= b_and!259861 (and (=> t!291186 result!250010) b_and!259919)))

(declare-fun tb!205063 () Bool)

(declare-fun t!291188 () Bool)

(assert (=> (and b!3591784 (= (toChars!7723 (transformation!5580 (rule!8298 token!511))) (toChars!7723 (transformation!5580 (rule!8298 (_1!21958 lt!1232391))))) t!291188) tb!205063))

(declare-fun result!250012 () Bool)

(assert (= result!250012 result!250004))

(assert (=> d!1058859 t!291188))

(declare-fun b_and!259921 () Bool)

(assert (= b_and!259865 (and (=> t!291188 result!250012) b_and!259921)))

(declare-fun b_lambda!106129 () Bool)

(assert (=> (not b_lambda!106129) (not d!1058859)))

(assert (=> d!1058859 t!291174))

(declare-fun b_and!259923 () Bool)

(assert (= b_and!259907 (and (=> t!291174 result!249996) b_and!259923)))

(assert (=> d!1058859 t!291176))

(declare-fun b_and!259925 () Bool)

(assert (= b_and!259909 (and (=> t!291176 result!249998) b_and!259925)))

(assert (=> d!1058859 t!291178))

(declare-fun b_and!259927 () Bool)

(assert (= b_and!259911 (and (=> t!291178 result!250000) b_and!259927)))

(assert (=> d!1058859 t!291180))

(declare-fun b_and!259929 () Bool)

(assert (= b_and!259913 (and (=> t!291180 result!250002) b_and!259929)))

(assert (=> d!1058859 m!4086405))

(declare-fun m!4086597 () Bool)

(assert (=> d!1058859 m!4086597))

(assert (=> d!1058859 m!4086597))

(declare-fun m!4086599 () Bool)

(assert (=> d!1058859 m!4086599))

(declare-fun m!4086601 () Bool)

(assert (=> d!1058859 m!4086601))

(assert (=> d!1058859 m!4086405))

(assert (=> d!1058859 m!4086111))

(assert (=> b!3591771 d!1058859))

(declare-fun d!1058909 () Bool)

(assert (=> d!1058909 (= (size!28767 (_1!21958 lt!1232391)) (size!28766 (originalCharacters!6294 (_1!21958 lt!1232391))))))

(declare-fun Unit!53769 () Unit!53765)

(assert (=> d!1058909 (= (lemmaCharactersSize!633 (_1!21958 lt!1232391)) Unit!53769)))

(declare-fun bs!570283 () Bool)

(assert (= bs!570283 d!1058909))

(declare-fun m!4086603 () Bool)

(assert (=> bs!570283 m!4086603))

(assert (=> b!3591771 d!1058909))

(declare-fun b!3592189 () Bool)

(declare-fun e!2222723 () Bool)

(assert (=> b!3592189 (= e!2222723 true)))

(declare-fun d!1058911 () Bool)

(assert (=> d!1058911 e!2222723))

(assert (= d!1058911 b!3592189))

(declare-fun lambda!123867 () Int)

(declare-fun order!20505 () Int)

(declare-fun dynLambda!16250 (Int Int) Int)

(assert (=> b!3592189 (< (dynLambda!16246 order!20499 (toValue!7864 (transformation!5580 (rule!8298 (_1!21958 lt!1232391))))) (dynLambda!16250 order!20505 lambda!123867))))

(assert (=> b!3592189 (< (dynLambda!16248 order!20503 (toChars!7723 (transformation!5580 (rule!8298 (_1!21958 lt!1232391))))) (dynLambda!16250 order!20505 lambda!123867))))

(assert (=> d!1058911 (= (dynLambda!16245 (toValue!7864 (transformation!5580 (rule!8298 (_1!21958 lt!1232391)))) lt!1232394) (dynLambda!16245 (toValue!7864 (transformation!5580 (rule!8298 (_1!21958 lt!1232391)))) (seqFromList!4133 (originalCharacters!6294 (_1!21958 lt!1232391)))))))

(declare-fun lt!1232585 () Unit!53765)

(declare-fun Forall2of!284 (Int BalanceConc!22592 BalanceConc!22592) Unit!53765)

(assert (=> d!1058911 (= lt!1232585 (Forall2of!284 lambda!123867 lt!1232394 (seqFromList!4133 (originalCharacters!6294 (_1!21958 lt!1232391)))))))

(assert (=> d!1058911 (= (list!13892 lt!1232394) (list!13892 (seqFromList!4133 (originalCharacters!6294 (_1!21958 lt!1232391)))))))

(assert (=> d!1058911 (= (lemmaEqSameImage!771 (transformation!5580 (rule!8298 (_1!21958 lt!1232391))) lt!1232394 (seqFromList!4133 (originalCharacters!6294 (_1!21958 lt!1232391)))) lt!1232585)))

(declare-fun b_lambda!106131 () Bool)

(assert (=> (not b_lambda!106131) (not d!1058911)))

(assert (=> d!1058911 t!291174))

(declare-fun b_and!259931 () Bool)

(assert (= b_and!259923 (and (=> t!291174 result!249996) b_and!259931)))

(assert (=> d!1058911 t!291176))

(declare-fun b_and!259933 () Bool)

(assert (= b_and!259925 (and (=> t!291176 result!249998) b_and!259933)))

(assert (=> d!1058911 t!291178))

(declare-fun b_and!259935 () Bool)

(assert (= b_and!259927 (and (=> t!291178 result!250000) b_and!259935)))

(assert (=> d!1058911 t!291180))

(declare-fun b_and!259937 () Bool)

(assert (= b_and!259929 (and (=> t!291180 result!250002) b_and!259937)))

(declare-fun b_lambda!106133 () Bool)

(assert (=> (not b_lambda!106133) (not d!1058911)))

(declare-fun tb!205065 () Bool)

(declare-fun t!291190 () Bool)

(assert (=> (and b!3591785 (= (toValue!7864 (transformation!5580 anOtherTypeRule!33)) (toValue!7864 (transformation!5580 (rule!8298 (_1!21958 lt!1232391))))) t!291190) tb!205065))

(declare-fun result!250014 () Bool)

(assert (=> tb!205065 (= result!250014 (inv!21 (dynLambda!16245 (toValue!7864 (transformation!5580 (rule!8298 (_1!21958 lt!1232391)))) (seqFromList!4133 (originalCharacters!6294 (_1!21958 lt!1232391))))))))

(declare-fun m!4086605 () Bool)

(assert (=> tb!205065 m!4086605))

(assert (=> d!1058911 t!291190))

(declare-fun b_and!259939 () Bool)

(assert (= b_and!259931 (and (=> t!291190 result!250014) b_and!259939)))

(declare-fun t!291192 () Bool)

(declare-fun tb!205067 () Bool)

(assert (=> (and b!3591779 (= (toValue!7864 (transformation!5580 rule!403)) (toValue!7864 (transformation!5580 (rule!8298 (_1!21958 lt!1232391))))) t!291192) tb!205067))

(declare-fun result!250016 () Bool)

(assert (= result!250016 result!250014))

(assert (=> d!1058911 t!291192))

(declare-fun b_and!259941 () Bool)

(assert (= b_and!259933 (and (=> t!291192 result!250016) b_and!259941)))

(declare-fun tb!205069 () Bool)

(declare-fun t!291194 () Bool)

(assert (=> (and b!3591783 (= (toValue!7864 (transformation!5580 (h!43185 rules!3307))) (toValue!7864 (transformation!5580 (rule!8298 (_1!21958 lt!1232391))))) t!291194) tb!205069))

(declare-fun result!250018 () Bool)

(assert (= result!250018 result!250014))

(assert (=> d!1058911 t!291194))

(declare-fun b_and!259943 () Bool)

(assert (= b_and!259935 (and (=> t!291194 result!250018) b_and!259943)))

(declare-fun tb!205071 () Bool)

(declare-fun t!291196 () Bool)

(assert (=> (and b!3591784 (= (toValue!7864 (transformation!5580 (rule!8298 token!511))) (toValue!7864 (transformation!5580 (rule!8298 (_1!21958 lt!1232391))))) t!291196) tb!205071))

(declare-fun result!250020 () Bool)

(assert (= result!250020 result!250014))

(assert (=> d!1058911 t!291196))

(declare-fun b_and!259945 () Bool)

(assert (= b_and!259937 (and (=> t!291196 result!250020) b_and!259945)))

(assert (=> d!1058911 m!4086031))

(declare-fun m!4086607 () Bool)

(assert (=> d!1058911 m!4086607))

(assert (=> d!1058911 m!4086111))

(assert (=> d!1058911 m!4086031))

(declare-fun m!4086609 () Bool)

(assert (=> d!1058911 m!4086609))

(assert (=> d!1058911 m!4086031))

(declare-fun m!4086611 () Bool)

(assert (=> d!1058911 m!4086611))

(assert (=> d!1058911 m!4086405))

(assert (=> b!3591771 d!1058911))

(declare-fun d!1058913 () Bool)

(declare-fun lt!1232588 () Int)

(assert (=> d!1058913 (= lt!1232588 (size!28766 (list!13892 lt!1232394)))))

(declare-fun size!28769 (Conc!11489) Int)

(assert (=> d!1058913 (= lt!1232588 (size!28769 (c!621963 lt!1232394)))))

(assert (=> d!1058913 (= (size!28768 lt!1232394) lt!1232588)))

(declare-fun bs!570284 () Bool)

(assert (= bs!570284 d!1058913))

(assert (=> bs!570284 m!4086111))

(assert (=> bs!570284 m!4086111))

(declare-fun m!4086613 () Bool)

(assert (=> bs!570284 m!4086613))

(declare-fun m!4086615 () Bool)

(assert (=> bs!570284 m!4086615))

(assert (=> b!3591771 d!1058913))

(declare-fun b!3592218 () Bool)

(declare-fun res!1450481 () Bool)

(declare-fun e!2222744 () Bool)

(assert (=> b!3592218 (=> res!1450481 e!2222744)))

(assert (=> b!3592218 (= res!1450481 (not ((_ is ElementMatch!10339) (regex!5580 (rule!8298 (_1!21958 lt!1232391))))))))

(declare-fun e!2222745 () Bool)

(assert (=> b!3592218 (= e!2222745 e!2222744)))

(declare-fun bm!259989 () Bool)

(declare-fun call!259994 () Bool)

(assert (=> bm!259989 (= call!259994 (isEmpty!22258 lt!1232400))))

(declare-fun b!3592219 () Bool)

(declare-fun e!2222742 () Bool)

(declare-fun derivativeStep!3116 (Regex!10339 C!20864) Regex!10339)

(assert (=> b!3592219 (= e!2222742 (matchR!4908 (derivativeStep!3116 (regex!5580 (rule!8298 (_1!21958 lt!1232391))) (head!7506 lt!1232400)) (tail!5565 lt!1232400)))))

(declare-fun b!3592220 () Bool)

(declare-fun nullable!3567 (Regex!10339) Bool)

(assert (=> b!3592220 (= e!2222742 (nullable!3567 (regex!5580 (rule!8298 (_1!21958 lt!1232391)))))))

(declare-fun d!1058915 () Bool)

(declare-fun e!2222743 () Bool)

(assert (=> d!1058915 e!2222743))

(declare-fun c!622046 () Bool)

(assert (=> d!1058915 (= c!622046 ((_ is EmptyExpr!10339) (regex!5580 (rule!8298 (_1!21958 lt!1232391)))))))

(declare-fun lt!1232591 () Bool)

(assert (=> d!1058915 (= lt!1232591 e!2222742)))

(declare-fun c!622048 () Bool)

(assert (=> d!1058915 (= c!622048 (isEmpty!22258 lt!1232400))))

(declare-fun validRegex!4723 (Regex!10339) Bool)

(assert (=> d!1058915 (validRegex!4723 (regex!5580 (rule!8298 (_1!21958 lt!1232391))))))

(assert (=> d!1058915 (= (matchR!4908 (regex!5580 (rule!8298 (_1!21958 lt!1232391))) lt!1232400) lt!1232591)))

(declare-fun b!3592221 () Bool)

(assert (=> b!3592221 (= e!2222743 e!2222745)))

(declare-fun c!622047 () Bool)

(assert (=> b!3592221 (= c!622047 ((_ is EmptyLang!10339) (regex!5580 (rule!8298 (_1!21958 lt!1232391)))))))

(declare-fun b!3592222 () Bool)

(declare-fun res!1450484 () Bool)

(declare-fun e!2222740 () Bool)

(assert (=> b!3592222 (=> res!1450484 e!2222740)))

(assert (=> b!3592222 (= res!1450484 (not (isEmpty!22258 (tail!5565 lt!1232400))))))

(declare-fun b!3592223 () Bool)

(declare-fun e!2222741 () Bool)

(assert (=> b!3592223 (= e!2222741 (= (head!7506 lt!1232400) (c!621962 (regex!5580 (rule!8298 (_1!21958 lt!1232391))))))))

(declare-fun b!3592224 () Bool)

(declare-fun res!1450486 () Bool)

(assert (=> b!3592224 (=> (not res!1450486) (not e!2222741))))

(assert (=> b!3592224 (= res!1450486 (isEmpty!22258 (tail!5565 lt!1232400)))))

(declare-fun b!3592225 () Bool)

(declare-fun e!2222739 () Bool)

(assert (=> b!3592225 (= e!2222739 e!2222740)))

(declare-fun res!1450485 () Bool)

(assert (=> b!3592225 (=> res!1450485 e!2222740)))

(assert (=> b!3592225 (= res!1450485 call!259994)))

(declare-fun b!3592226 () Bool)

(assert (=> b!3592226 (= e!2222744 e!2222739)))

(declare-fun res!1450487 () Bool)

(assert (=> b!3592226 (=> (not res!1450487) (not e!2222739))))

(assert (=> b!3592226 (= res!1450487 (not lt!1232591))))

(declare-fun b!3592227 () Bool)

(declare-fun res!1450488 () Bool)

(assert (=> b!3592227 (=> (not res!1450488) (not e!2222741))))

(assert (=> b!3592227 (= res!1450488 (not call!259994))))

(declare-fun b!3592228 () Bool)

(declare-fun res!1450483 () Bool)

(assert (=> b!3592228 (=> res!1450483 e!2222744)))

(assert (=> b!3592228 (= res!1450483 e!2222741)))

(declare-fun res!1450482 () Bool)

(assert (=> b!3592228 (=> (not res!1450482) (not e!2222741))))

(assert (=> b!3592228 (= res!1450482 lt!1232591)))

(declare-fun b!3592229 () Bool)

(assert (=> b!3592229 (= e!2222745 (not lt!1232591))))

(declare-fun b!3592230 () Bool)

(assert (=> b!3592230 (= e!2222743 (= lt!1232591 call!259994))))

(declare-fun b!3592231 () Bool)

(assert (=> b!3592231 (= e!2222740 (not (= (head!7506 lt!1232400) (c!621962 (regex!5580 (rule!8298 (_1!21958 lt!1232391)))))))))

(assert (= (and d!1058915 c!622048) b!3592220))

(assert (= (and d!1058915 (not c!622048)) b!3592219))

(assert (= (and d!1058915 c!622046) b!3592230))

(assert (= (and d!1058915 (not c!622046)) b!3592221))

(assert (= (and b!3592221 c!622047) b!3592229))

(assert (= (and b!3592221 (not c!622047)) b!3592218))

(assert (= (and b!3592218 (not res!1450481)) b!3592228))

(assert (= (and b!3592228 res!1450482) b!3592227))

(assert (= (and b!3592227 res!1450488) b!3592224))

(assert (= (and b!3592224 res!1450486) b!3592223))

(assert (= (and b!3592228 (not res!1450483)) b!3592226))

(assert (= (and b!3592226 res!1450487) b!3592225))

(assert (= (and b!3592225 (not res!1450485)) b!3592222))

(assert (= (and b!3592222 (not res!1450484)) b!3592231))

(assert (= (or b!3592230 b!3592225 b!3592227) bm!259989))

(declare-fun m!4086617 () Bool)

(assert (=> b!3592219 m!4086617))

(assert (=> b!3592219 m!4086617))

(declare-fun m!4086619 () Bool)

(assert (=> b!3592219 m!4086619))

(declare-fun m!4086621 () Bool)

(assert (=> b!3592219 m!4086621))

(assert (=> b!3592219 m!4086619))

(assert (=> b!3592219 m!4086621))

(declare-fun m!4086623 () Bool)

(assert (=> b!3592219 m!4086623))

(declare-fun m!4086625 () Bool)

(assert (=> d!1058915 m!4086625))

(declare-fun m!4086627 () Bool)

(assert (=> d!1058915 m!4086627))

(assert (=> b!3592223 m!4086617))

(assert (=> bm!259989 m!4086625))

(declare-fun m!4086629 () Bool)

(assert (=> b!3592220 m!4086629))

(assert (=> b!3592222 m!4086621))

(assert (=> b!3592222 m!4086621))

(declare-fun m!4086631 () Bool)

(assert (=> b!3592222 m!4086631))

(assert (=> b!3592231 m!4086617))

(assert (=> b!3592224 m!4086621))

(assert (=> b!3592224 m!4086621))

(assert (=> b!3592224 m!4086631))

(assert (=> b!3591792 d!1058915))

(declare-fun d!1058917 () Bool)

(assert (=> d!1058917 (= (inv!51104 (tag!6254 rule!403)) (= (mod (str.len (value!179489 (tag!6254 rule!403))) 2) 0))))

(assert (=> b!3591793 d!1058917))

(declare-fun d!1058919 () Bool)

(declare-fun res!1450491 () Bool)

(declare-fun e!2222748 () Bool)

(assert (=> d!1058919 (=> (not res!1450491) (not e!2222748))))

(declare-fun semiInverseModEq!2365 (Int Int) Bool)

(assert (=> d!1058919 (= res!1450491 (semiInverseModEq!2365 (toChars!7723 (transformation!5580 rule!403)) (toValue!7864 (transformation!5580 rule!403))))))

(assert (=> d!1058919 (= (inv!51107 (transformation!5580 rule!403)) e!2222748)))

(declare-fun b!3592234 () Bool)

(declare-fun equivClasses!2264 (Int Int) Bool)

(assert (=> b!3592234 (= e!2222748 (equivClasses!2264 (toChars!7723 (transformation!5580 rule!403)) (toValue!7864 (transformation!5580 rule!403))))))

(assert (= (and d!1058919 res!1450491) b!3592234))

(declare-fun m!4086633 () Bool)

(assert (=> d!1058919 m!4086633))

(declare-fun m!4086635 () Bool)

(assert (=> b!3592234 m!4086635))

(assert (=> b!3591793 d!1058919))

(declare-fun d!1058921 () Bool)

(declare-fun res!1450496 () Bool)

(declare-fun e!2222751 () Bool)

(assert (=> d!1058921 (=> (not res!1450496) (not e!2222751))))

(assert (=> d!1058921 (= res!1450496 (not (isEmpty!22258 (originalCharacters!6294 token!511))))))

(assert (=> d!1058921 (= (inv!51108 token!511) e!2222751)))

(declare-fun b!3592239 () Bool)

(declare-fun res!1450497 () Bool)

(assert (=> b!3592239 (=> (not res!1450497) (not e!2222751))))

(assert (=> b!3592239 (= res!1450497 (= (originalCharacters!6294 token!511) (list!13892 (dynLambda!16249 (toChars!7723 (transformation!5580 (rule!8298 token!511))) (value!179490 token!511)))))))

(declare-fun b!3592240 () Bool)

(assert (=> b!3592240 (= e!2222751 (= (size!28767 token!511) (size!28766 (originalCharacters!6294 token!511))))))

(assert (= (and d!1058921 res!1450496) b!3592239))

(assert (= (and b!3592239 res!1450497) b!3592240))

(declare-fun b_lambda!106135 () Bool)

(assert (=> (not b_lambda!106135) (not b!3592239)))

(declare-fun tb!205073 () Bool)

(declare-fun t!291198 () Bool)

(assert (=> (and b!3591785 (= (toChars!7723 (transformation!5580 anOtherTypeRule!33)) (toChars!7723 (transformation!5580 (rule!8298 token!511)))) t!291198) tb!205073))

(declare-fun b!3592241 () Bool)

(declare-fun e!2222752 () Bool)

(declare-fun tp!1099434 () Bool)

(assert (=> b!3592241 (= e!2222752 (and (inv!51111 (c!621963 (dynLambda!16249 (toChars!7723 (transformation!5580 (rule!8298 token!511))) (value!179490 token!511)))) tp!1099434))))

(declare-fun result!250022 () Bool)

(assert (=> tb!205073 (= result!250022 (and (inv!51112 (dynLambda!16249 (toChars!7723 (transformation!5580 (rule!8298 token!511))) (value!179490 token!511))) e!2222752))))

(assert (= tb!205073 b!3592241))

(declare-fun m!4086637 () Bool)

(assert (=> b!3592241 m!4086637))

(declare-fun m!4086639 () Bool)

(assert (=> tb!205073 m!4086639))

(assert (=> b!3592239 t!291198))

(declare-fun b_and!259947 () Bool)

(assert (= b_and!259915 (and (=> t!291198 result!250022) b_and!259947)))

(declare-fun tb!205075 () Bool)

(declare-fun t!291200 () Bool)

(assert (=> (and b!3591779 (= (toChars!7723 (transformation!5580 rule!403)) (toChars!7723 (transformation!5580 (rule!8298 token!511)))) t!291200) tb!205075))

(declare-fun result!250024 () Bool)

(assert (= result!250024 result!250022))

(assert (=> b!3592239 t!291200))

(declare-fun b_and!259949 () Bool)

(assert (= b_and!259917 (and (=> t!291200 result!250024) b_and!259949)))

(declare-fun tb!205077 () Bool)

(declare-fun t!291202 () Bool)

(assert (=> (and b!3591783 (= (toChars!7723 (transformation!5580 (h!43185 rules!3307))) (toChars!7723 (transformation!5580 (rule!8298 token!511)))) t!291202) tb!205077))

(declare-fun result!250026 () Bool)

(assert (= result!250026 result!250022))

(assert (=> b!3592239 t!291202))

(declare-fun b_and!259951 () Bool)

(assert (= b_and!259919 (and (=> t!291202 result!250026) b_and!259951)))

(declare-fun t!291204 () Bool)

(declare-fun tb!205079 () Bool)

(assert (=> (and b!3591784 (= (toChars!7723 (transformation!5580 (rule!8298 token!511))) (toChars!7723 (transformation!5580 (rule!8298 token!511)))) t!291204) tb!205079))

(declare-fun result!250028 () Bool)

(assert (= result!250028 result!250022))

(assert (=> b!3592239 t!291204))

(declare-fun b_and!259953 () Bool)

(assert (= b_and!259921 (and (=> t!291204 result!250028) b_and!259953)))

(declare-fun m!4086641 () Bool)

(assert (=> d!1058921 m!4086641))

(declare-fun m!4086643 () Bool)

(assert (=> b!3592239 m!4086643))

(assert (=> b!3592239 m!4086643))

(declare-fun m!4086645 () Bool)

(assert (=> b!3592239 m!4086645))

(declare-fun m!4086647 () Bool)

(assert (=> b!3592240 m!4086647))

(assert (=> start!333362 d!1058921))

(declare-fun d!1058923 () Bool)

(assert (=> d!1058923 (= (isEmpty!22258 suffix!1395) ((_ is Nil!37763) suffix!1395))))

(assert (=> b!3591772 d!1058923))

(declare-fun d!1058925 () Bool)

(declare-fun res!1450500 () Bool)

(declare-fun e!2222755 () Bool)

(assert (=> d!1058925 (=> (not res!1450500) (not e!2222755))))

(declare-fun rulesValid!2123 (LexerInterface!5169 List!37889) Bool)

(assert (=> d!1058925 (= res!1450500 (rulesValid!2123 thiss!23823 rules!3307))))

(assert (=> d!1058925 (= (rulesInvariant!4566 thiss!23823 rules!3307) e!2222755)))

(declare-fun b!3592244 () Bool)

(declare-datatypes ((List!37891 0))(
  ( (Nil!37767) (Cons!37767 (h!43187 String!42384) (t!291262 List!37891)) )
))
(declare-fun noDuplicateTag!2119 (LexerInterface!5169 List!37889 List!37891) Bool)

(assert (=> b!3592244 (= e!2222755 (noDuplicateTag!2119 thiss!23823 rules!3307 Nil!37767))))

(assert (= (and d!1058925 res!1450500) b!3592244))

(declare-fun m!4086649 () Bool)

(assert (=> d!1058925 m!4086649))

(declare-fun m!4086651 () Bool)

(assert (=> b!3592244 m!4086651))

(assert (=> b!3591773 d!1058925))

(declare-fun d!1058927 () Bool)

(assert (=> d!1058927 (= (inv!51104 (tag!6254 anOtherTypeRule!33)) (= (mod (str.len (value!179489 (tag!6254 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3591795 d!1058927))

(declare-fun d!1058929 () Bool)

(declare-fun res!1450501 () Bool)

(declare-fun e!2222756 () Bool)

(assert (=> d!1058929 (=> (not res!1450501) (not e!2222756))))

(assert (=> d!1058929 (= res!1450501 (semiInverseModEq!2365 (toChars!7723 (transformation!5580 anOtherTypeRule!33)) (toValue!7864 (transformation!5580 anOtherTypeRule!33))))))

(assert (=> d!1058929 (= (inv!51107 (transformation!5580 anOtherTypeRule!33)) e!2222756)))

(declare-fun b!3592245 () Bool)

(assert (=> b!3592245 (= e!2222756 (equivClasses!2264 (toChars!7723 (transformation!5580 anOtherTypeRule!33)) (toValue!7864 (transformation!5580 anOtherTypeRule!33))))))

(assert (= (and d!1058929 res!1450501) b!3592245))

(declare-fun m!4086653 () Bool)

(assert (=> d!1058929 m!4086653))

(declare-fun m!4086655 () Bool)

(assert (=> b!3592245 m!4086655))

(assert (=> b!3591795 d!1058929))

(declare-fun d!1058931 () Bool)

(declare-fun lt!1232594 () BalanceConc!22592)

(assert (=> d!1058931 (= (list!13892 lt!1232594) (originalCharacters!6294 (_1!21958 lt!1232391)))))

(assert (=> d!1058931 (= lt!1232594 (dynLambda!16249 (toChars!7723 (transformation!5580 (rule!8298 (_1!21958 lt!1232391)))) (value!179490 (_1!21958 lt!1232391))))))

(assert (=> d!1058931 (= (charsOf!3594 (_1!21958 lt!1232391)) lt!1232594)))

(declare-fun b_lambda!106137 () Bool)

(assert (=> (not b_lambda!106137) (not d!1058931)))

(declare-fun t!291206 () Bool)

(declare-fun tb!205081 () Bool)

(assert (=> (and b!3591785 (= (toChars!7723 (transformation!5580 anOtherTypeRule!33)) (toChars!7723 (transformation!5580 (rule!8298 (_1!21958 lt!1232391))))) t!291206) tb!205081))

(declare-fun b!3592246 () Bool)

(declare-fun e!2222757 () Bool)

(declare-fun tp!1099435 () Bool)

(assert (=> b!3592246 (= e!2222757 (and (inv!51111 (c!621963 (dynLambda!16249 (toChars!7723 (transformation!5580 (rule!8298 (_1!21958 lt!1232391)))) (value!179490 (_1!21958 lt!1232391))))) tp!1099435))))

(declare-fun result!250030 () Bool)

(assert (=> tb!205081 (= result!250030 (and (inv!51112 (dynLambda!16249 (toChars!7723 (transformation!5580 (rule!8298 (_1!21958 lt!1232391)))) (value!179490 (_1!21958 lt!1232391)))) e!2222757))))

(assert (= tb!205081 b!3592246))

(declare-fun m!4086657 () Bool)

(assert (=> b!3592246 m!4086657))

(declare-fun m!4086659 () Bool)

(assert (=> tb!205081 m!4086659))

(assert (=> d!1058931 t!291206))

(declare-fun b_and!259955 () Bool)

(assert (= b_and!259947 (and (=> t!291206 result!250030) b_and!259955)))

(declare-fun tb!205083 () Bool)

(declare-fun t!291208 () Bool)

(assert (=> (and b!3591779 (= (toChars!7723 (transformation!5580 rule!403)) (toChars!7723 (transformation!5580 (rule!8298 (_1!21958 lt!1232391))))) t!291208) tb!205083))

(declare-fun result!250032 () Bool)

(assert (= result!250032 result!250030))

(assert (=> d!1058931 t!291208))

(declare-fun b_and!259957 () Bool)

(assert (= b_and!259949 (and (=> t!291208 result!250032) b_and!259957)))

(declare-fun t!291210 () Bool)

(declare-fun tb!205085 () Bool)

(assert (=> (and b!3591783 (= (toChars!7723 (transformation!5580 (h!43185 rules!3307))) (toChars!7723 (transformation!5580 (rule!8298 (_1!21958 lt!1232391))))) t!291210) tb!205085))

(declare-fun result!250034 () Bool)

(assert (= result!250034 result!250030))

(assert (=> d!1058931 t!291210))

(declare-fun b_and!259959 () Bool)

(assert (= b_and!259951 (and (=> t!291210 result!250034) b_and!259959)))

(declare-fun tb!205087 () Bool)

(declare-fun t!291212 () Bool)

(assert (=> (and b!3591784 (= (toChars!7723 (transformation!5580 (rule!8298 token!511))) (toChars!7723 (transformation!5580 (rule!8298 (_1!21958 lt!1232391))))) t!291212) tb!205087))

(declare-fun result!250036 () Bool)

(assert (= result!250036 result!250030))

(assert (=> d!1058931 t!291212))

(declare-fun b_and!259961 () Bool)

(assert (= b_and!259953 (and (=> t!291212 result!250036) b_and!259961)))

(declare-fun m!4086661 () Bool)

(assert (=> d!1058931 m!4086661))

(declare-fun m!4086663 () Bool)

(assert (=> d!1058931 m!4086663))

(assert (=> b!3591774 d!1058931))

(declare-fun d!1058933 () Bool)

(declare-fun e!2222767 () Bool)

(assert (=> d!1058933 e!2222767))

(declare-fun res!1450507 () Bool)

(assert (=> d!1058933 (=> res!1450507 e!2222767)))

(declare-fun lt!1232603 () Option!7791)

(declare-fun isEmpty!22263 (Option!7791) Bool)

(assert (=> d!1058933 (= res!1450507 (isEmpty!22263 lt!1232603))))

(declare-fun e!2222768 () Option!7791)

(assert (=> d!1058933 (= lt!1232603 e!2222768)))

(declare-fun c!622054 () Bool)

(assert (=> d!1058933 (= c!622054 (and ((_ is Cons!37765) rules!3307) (= (tag!6254 (h!43185 rules!3307)) (tag!6254 (rule!8298 (_1!21958 lt!1232391))))))))

(assert (=> d!1058933 (rulesInvariant!4566 thiss!23823 rules!3307)))

(assert (=> d!1058933 (= (getRuleFromTag!1186 thiss!23823 rules!3307 (tag!6254 (rule!8298 (_1!21958 lt!1232391)))) lt!1232603)))

(declare-fun b!3592259 () Bool)

(declare-fun e!2222769 () Option!7791)

(assert (=> b!3592259 (= e!2222768 e!2222769)))

(declare-fun c!622053 () Bool)

(assert (=> b!3592259 (= c!622053 (and ((_ is Cons!37765) rules!3307) (not (= (tag!6254 (h!43185 rules!3307)) (tag!6254 (rule!8298 (_1!21958 lt!1232391)))))))))

(declare-fun b!3592260 () Bool)

(declare-fun e!2222766 () Bool)

(assert (=> b!3592260 (= e!2222767 e!2222766)))

(declare-fun res!1450506 () Bool)

(assert (=> b!3592260 (=> (not res!1450506) (not e!2222766))))

(assert (=> b!3592260 (= res!1450506 (contains!7224 rules!3307 (get!12191 lt!1232603)))))

(declare-fun b!3592261 () Bool)

(assert (=> b!3592261 (= e!2222769 None!7790)))

(declare-fun b!3592262 () Bool)

(assert (=> b!3592262 (= e!2222768 (Some!7790 (h!43185 rules!3307)))))

(declare-fun b!3592263 () Bool)

(assert (=> b!3592263 (= e!2222766 (= (tag!6254 (get!12191 lt!1232603)) (tag!6254 (rule!8298 (_1!21958 lt!1232391)))))))

(declare-fun b!3592264 () Bool)

(declare-fun lt!1232601 () Unit!53765)

(declare-fun lt!1232602 () Unit!53765)

(assert (=> b!3592264 (= lt!1232601 lt!1232602)))

(assert (=> b!3592264 (rulesInvariant!4566 thiss!23823 (t!291140 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!498 (LexerInterface!5169 Rule!10960 List!37889) Unit!53765)

(assert (=> b!3592264 (= lt!1232602 (lemmaInvariantOnRulesThenOnTail!498 thiss!23823 (h!43185 rules!3307) (t!291140 rules!3307)))))

(assert (=> b!3592264 (= e!2222769 (getRuleFromTag!1186 thiss!23823 (t!291140 rules!3307) (tag!6254 (rule!8298 (_1!21958 lt!1232391)))))))

(assert (= (and d!1058933 c!622054) b!3592262))

(assert (= (and d!1058933 (not c!622054)) b!3592259))

(assert (= (and b!3592259 c!622053) b!3592264))

(assert (= (and b!3592259 (not c!622053)) b!3592261))

(assert (= (and d!1058933 (not res!1450507)) b!3592260))

(assert (= (and b!3592260 res!1450506) b!3592263))

(declare-fun m!4086665 () Bool)

(assert (=> d!1058933 m!4086665))

(assert (=> d!1058933 m!4086003))

(declare-fun m!4086667 () Bool)

(assert (=> b!3592260 m!4086667))

(assert (=> b!3592260 m!4086667))

(declare-fun m!4086669 () Bool)

(assert (=> b!3592260 m!4086669))

(assert (=> b!3592263 m!4086667))

(declare-fun m!4086671 () Bool)

(assert (=> b!3592264 m!4086671))

(declare-fun m!4086673 () Bool)

(assert (=> b!3592264 m!4086673))

(declare-fun m!4086675 () Bool)

(assert (=> b!3592264 m!4086675))

(assert (=> b!3591774 d!1058933))

(declare-fun b!3592329 () Bool)

(declare-fun res!1450515 () Bool)

(declare-fun e!2222807 () Bool)

(assert (=> b!3592329 (=> (not res!1450515) (not e!2222807))))

(declare-fun lt!1232658 () Token!10526)

(assert (=> b!3592329 (= res!1450515 (matchR!4908 (regex!5580 (get!12191 (getRuleFromTag!1186 thiss!23823 rules!3307 (tag!6254 (rule!8298 lt!1232658))))) (list!13892 (charsOf!3594 lt!1232658))))))

(declare-fun b!3592332 () Bool)

(declare-fun e!2222808 () Unit!53765)

(declare-fun Unit!53770 () Unit!53765)

(assert (=> b!3592332 (= e!2222808 Unit!53770)))

(declare-fun b!3592330 () Bool)

(assert (=> b!3592330 (= e!2222807 (= (rule!8298 lt!1232658) (get!12191 (getRuleFromTag!1186 thiss!23823 rules!3307 (tag!6254 (rule!8298 lt!1232658))))))))

(declare-fun d!1058935 () Bool)

(assert (=> d!1058935 (isDefined!6023 (maxPrefix!2703 thiss!23823 rules!3307 (++!9396 lt!1232399 suffix!1395)))))

(declare-fun lt!1232653 () Unit!53765)

(assert (=> d!1058935 (= lt!1232653 e!2222808)))

(declare-fun c!622057 () Bool)

(assert (=> d!1058935 (= c!622057 (isEmpty!22261 (maxPrefix!2703 thiss!23823 rules!3307 (++!9396 lt!1232399 suffix!1395))))))

(declare-fun lt!1232649 () Unit!53765)

(declare-fun lt!1232645 () Unit!53765)

(assert (=> d!1058935 (= lt!1232649 lt!1232645)))

(assert (=> d!1058935 e!2222807))

(declare-fun res!1450514 () Bool)

(assert (=> d!1058935 (=> (not res!1450514) (not e!2222807))))

(assert (=> d!1058935 (= res!1450514 (isDefined!6022 (getRuleFromTag!1186 thiss!23823 rules!3307 (tag!6254 (rule!8298 lt!1232658)))))))

(assert (=> d!1058935 (= lt!1232645 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1186 thiss!23823 rules!3307 lt!1232399 lt!1232658))))

(declare-fun lt!1232647 () Unit!53765)

(declare-fun lt!1232652 () Unit!53765)

(assert (=> d!1058935 (= lt!1232647 lt!1232652)))

(declare-fun lt!1232656 () List!37887)

(assert (=> d!1058935 (isPrefix!2943 lt!1232656 (++!9396 lt!1232399 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!418 (List!37887 List!37887 List!37887) Unit!53765)

(assert (=> d!1058935 (= lt!1232652 (lemmaPrefixStaysPrefixWhenAddingToSuffix!418 lt!1232656 lt!1232399 suffix!1395))))

(assert (=> d!1058935 (= lt!1232656 (list!13892 (charsOf!3594 lt!1232658)))))

(declare-fun lt!1232657 () Unit!53765)

(declare-fun lt!1232659 () Unit!53765)

(assert (=> d!1058935 (= lt!1232657 lt!1232659)))

(declare-fun lt!1232646 () List!37887)

(declare-fun lt!1232650 () List!37887)

(assert (=> d!1058935 (isPrefix!2943 lt!1232646 (++!9396 lt!1232646 lt!1232650))))

(assert (=> d!1058935 (= lt!1232659 (lemmaConcatTwoListThenFirstIsPrefix!1864 lt!1232646 lt!1232650))))

(assert (=> d!1058935 (= lt!1232650 (_2!21958 (get!12190 (maxPrefix!2703 thiss!23823 rules!3307 lt!1232399))))))

(assert (=> d!1058935 (= lt!1232646 (list!13892 (charsOf!3594 lt!1232658)))))

(declare-datatypes ((List!37893 0))(
  ( (Nil!37769) (Cons!37769 (h!43189 Token!10526) (t!291264 List!37893)) )
))
(declare-fun head!7508 (List!37893) Token!10526)

(declare-datatypes ((IArray!22987 0))(
  ( (IArray!22988 (innerList!11551 List!37893)) )
))
(declare-datatypes ((Conc!11491 0))(
  ( (Node!11491 (left!29511 Conc!11491) (right!29841 Conc!11491) (csize!23212 Int) (cheight!11702 Int)) (Leaf!17892 (xs!14693 IArray!22987) (csize!23213 Int)) (Empty!11491) )
))
(declare-datatypes ((BalanceConc!22596 0))(
  ( (BalanceConc!22597 (c!622095 Conc!11491)) )
))
(declare-fun list!13895 (BalanceConc!22596) List!37893)

(declare-datatypes ((tuple2!37656 0))(
  ( (tuple2!37657 (_1!21962 BalanceConc!22596) (_2!21962 BalanceConc!22592)) )
))
(declare-fun lex!2450 (LexerInterface!5169 List!37889 BalanceConc!22592) tuple2!37656)

(assert (=> d!1058935 (= lt!1232658 (head!7508 (list!13895 (_1!21962 (lex!2450 thiss!23823 rules!3307 (seqFromList!4133 lt!1232399))))))))

(assert (=> d!1058935 (not (isEmpty!22259 rules!3307))))

(assert (=> d!1058935 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!849 thiss!23823 rules!3307 lt!1232399 suffix!1395) lt!1232653)))

(declare-fun b!3592331 () Bool)

(declare-fun Unit!53771 () Unit!53765)

(assert (=> b!3592331 (= e!2222808 Unit!53771)))

(declare-fun lt!1232654 () List!37887)

(assert (=> b!3592331 (= lt!1232654 (++!9396 lt!1232399 suffix!1395))))

(declare-fun lt!1232660 () Unit!53765)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!454 (LexerInterface!5169 Rule!10960 List!37889 List!37887) Unit!53765)

(assert (=> b!3592331 (= lt!1232660 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!454 thiss!23823 (rule!8298 lt!1232658) rules!3307 lt!1232654))))

(assert (=> b!3592331 (isEmpty!22261 (maxPrefixOneRule!1847 thiss!23823 (rule!8298 lt!1232658) lt!1232654))))

(declare-fun lt!1232648 () Unit!53765)

(assert (=> b!3592331 (= lt!1232648 lt!1232660)))

(declare-fun lt!1232661 () List!37887)

(assert (=> b!3592331 (= lt!1232661 (list!13892 (charsOf!3594 lt!1232658)))))

(declare-fun lt!1232651 () Unit!53765)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!442 (LexerInterface!5169 Rule!10960 List!37887 List!37887) Unit!53765)

(assert (=> b!3592331 (= lt!1232651 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!442 thiss!23823 (rule!8298 lt!1232658) lt!1232661 (++!9396 lt!1232399 suffix!1395)))))

(assert (=> b!3592331 (not (matchR!4908 (regex!5580 (rule!8298 lt!1232658)) lt!1232661))))

(declare-fun lt!1232655 () Unit!53765)

(assert (=> b!3592331 (= lt!1232655 lt!1232651)))

(assert (=> b!3592331 false))

(assert (= (and d!1058935 res!1450514) b!3592329))

(assert (= (and b!3592329 res!1450515) b!3592330))

(assert (= (and d!1058935 c!622057) b!3592331))

(assert (= (and d!1058935 (not c!622057)) b!3592332))

(declare-fun m!4086711 () Bool)

(assert (=> b!3592329 m!4086711))

(declare-fun m!4086713 () Bool)

(assert (=> b!3592329 m!4086713))

(assert (=> b!3592329 m!4086711))

(declare-fun m!4086715 () Bool)

(assert (=> b!3592329 m!4086715))

(declare-fun m!4086717 () Bool)

(assert (=> b!3592329 m!4086717))

(declare-fun m!4086719 () Bool)

(assert (=> b!3592329 m!4086719))

(assert (=> b!3592329 m!4086719))

(assert (=> b!3592329 m!4086715))

(assert (=> b!3592330 m!4086711))

(assert (=> b!3592330 m!4086711))

(assert (=> b!3592330 m!4086713))

(assert (=> d!1058935 m!4086071))

(declare-fun m!4086721 () Bool)

(assert (=> d!1058935 m!4086721))

(declare-fun m!4086723 () Bool)

(assert (=> d!1058935 m!4086723))

(assert (=> d!1058935 m!4086711))

(declare-fun m!4086725 () Bool)

(assert (=> d!1058935 m!4086725))

(declare-fun m!4086727 () Bool)

(assert (=> d!1058935 m!4086727))

(assert (=> d!1058935 m!4086711))

(declare-fun m!4086729 () Bool)

(assert (=> d!1058935 m!4086729))

(assert (=> d!1058935 m!4086077))

(declare-fun m!4086731 () Bool)

(assert (=> d!1058935 m!4086731))

(declare-fun m!4086733 () Bool)

(assert (=> d!1058935 m!4086733))

(declare-fun m!4086735 () Bool)

(assert (=> d!1058935 m!4086735))

(assert (=> d!1058935 m!4086733))

(declare-fun m!4086737 () Bool)

(assert (=> d!1058935 m!4086737))

(assert (=> d!1058935 m!4086115))

(assert (=> d!1058935 m!4086733))

(assert (=> d!1058935 m!4086719))

(assert (=> d!1058935 m!4086715))

(assert (=> d!1058935 m!4086727))

(declare-fun m!4086739 () Bool)

(assert (=> d!1058935 m!4086739))

(assert (=> d!1058935 m!4086077))

(assert (=> d!1058935 m!4086115))

(declare-fun m!4086741 () Bool)

(assert (=> d!1058935 m!4086741))

(declare-fun m!4086743 () Bool)

(assert (=> d!1058935 m!4086743))

(declare-fun m!4086745 () Bool)

(assert (=> d!1058935 m!4086745))

(assert (=> d!1058935 m!4086115))

(declare-fun m!4086747 () Bool)

(assert (=> d!1058935 m!4086747))

(assert (=> d!1058935 m!4086723))

(declare-fun m!4086749 () Bool)

(assert (=> d!1058935 m!4086749))

(assert (=> d!1058935 m!4086719))

(assert (=> d!1058935 m!4086743))

(declare-fun m!4086751 () Bool)

(assert (=> b!3592331 m!4086751))

(declare-fun m!4086753 () Bool)

(assert (=> b!3592331 m!4086753))

(assert (=> b!3592331 m!4086753))

(declare-fun m!4086755 () Bool)

(assert (=> b!3592331 m!4086755))

(assert (=> b!3592331 m!4086719))

(assert (=> b!3592331 m!4086115))

(declare-fun m!4086757 () Bool)

(assert (=> b!3592331 m!4086757))

(assert (=> b!3592331 m!4086719))

(assert (=> b!3592331 m!4086715))

(declare-fun m!4086759 () Bool)

(assert (=> b!3592331 m!4086759))

(assert (=> b!3592331 m!4086115))

(assert (=> b!3591774 d!1058935))

(declare-fun b!3592344 () Bool)

(declare-fun e!2222816 () Bool)

(assert (=> b!3592344 (= e!2222816 (>= (size!28766 (++!9396 lt!1232400 (_2!21958 lt!1232391))) (size!28766 lt!1232400)))))

(declare-fun b!3592342 () Bool)

(declare-fun res!1450526 () Bool)

(declare-fun e!2222815 () Bool)

(assert (=> b!3592342 (=> (not res!1450526) (not e!2222815))))

(assert (=> b!3592342 (= res!1450526 (= (head!7506 lt!1232400) (head!7506 (++!9396 lt!1232400 (_2!21958 lt!1232391)))))))

(declare-fun b!3592341 () Bool)

(declare-fun e!2222817 () Bool)

(assert (=> b!3592341 (= e!2222817 e!2222815)))

(declare-fun res!1450527 () Bool)

(assert (=> b!3592341 (=> (not res!1450527) (not e!2222815))))

(assert (=> b!3592341 (= res!1450527 (not ((_ is Nil!37763) (++!9396 lt!1232400 (_2!21958 lt!1232391)))))))

(declare-fun b!3592343 () Bool)

(assert (=> b!3592343 (= e!2222815 (isPrefix!2943 (tail!5565 lt!1232400) (tail!5565 (++!9396 lt!1232400 (_2!21958 lt!1232391)))))))

(declare-fun d!1058947 () Bool)

(assert (=> d!1058947 e!2222816))

(declare-fun res!1450524 () Bool)

(assert (=> d!1058947 (=> res!1450524 e!2222816)))

(declare-fun lt!1232664 () Bool)

(assert (=> d!1058947 (= res!1450524 (not lt!1232664))))

(assert (=> d!1058947 (= lt!1232664 e!2222817)))

(declare-fun res!1450525 () Bool)

(assert (=> d!1058947 (=> res!1450525 e!2222817)))

(assert (=> d!1058947 (= res!1450525 ((_ is Nil!37763) lt!1232400))))

(assert (=> d!1058947 (= (isPrefix!2943 lt!1232400 (++!9396 lt!1232400 (_2!21958 lt!1232391))) lt!1232664)))

(assert (= (and d!1058947 (not res!1450525)) b!3592341))

(assert (= (and b!3592341 res!1450527) b!3592342))

(assert (= (and b!3592342 res!1450526) b!3592343))

(assert (= (and d!1058947 (not res!1450524)) b!3592344))

(assert (=> b!3592344 m!4086099))

(declare-fun m!4086761 () Bool)

(assert (=> b!3592344 m!4086761))

(assert (=> b!3592344 m!4086053))

(assert (=> b!3592342 m!4086617))

(assert (=> b!3592342 m!4086099))

(declare-fun m!4086763 () Bool)

(assert (=> b!3592342 m!4086763))

(assert (=> b!3592343 m!4086621))

(assert (=> b!3592343 m!4086099))

(declare-fun m!4086765 () Bool)

(assert (=> b!3592343 m!4086765))

(assert (=> b!3592343 m!4086621))

(assert (=> b!3592343 m!4086765))

(declare-fun m!4086767 () Bool)

(assert (=> b!3592343 m!4086767))

(assert (=> b!3591774 d!1058947))

(declare-fun d!1058949 () Bool)

(assert (=> d!1058949 (isPrefix!2943 lt!1232399 (++!9396 lt!1232399 suffix!1395))))

(declare-fun lt!1232667 () Unit!53765)

(declare-fun choose!20904 (List!37887 List!37887) Unit!53765)

(assert (=> d!1058949 (= lt!1232667 (choose!20904 lt!1232399 suffix!1395))))

(assert (=> d!1058949 (= (lemmaConcatTwoListThenFirstIsPrefix!1864 lt!1232399 suffix!1395) lt!1232667)))

(declare-fun bs!570288 () Bool)

(assert (= bs!570288 d!1058949))

(assert (=> bs!570288 m!4086115))

(assert (=> bs!570288 m!4086115))

(declare-fun m!4086769 () Bool)

(assert (=> bs!570288 m!4086769))

(declare-fun m!4086771 () Bool)

(assert (=> bs!570288 m!4086771))

(assert (=> b!3591774 d!1058949))

(declare-fun b!3592363 () Bool)

(declare-fun res!1450543 () Bool)

(declare-fun e!2222826 () Bool)

(assert (=> b!3592363 (=> (not res!1450543) (not e!2222826))))

(declare-fun lt!1232682 () Option!7790)

(assert (=> b!3592363 (= res!1450543 (= (list!13892 (charsOf!3594 (_1!21958 (get!12190 lt!1232682)))) (originalCharacters!6294 (_1!21958 (get!12190 lt!1232682)))))))

(declare-fun b!3592364 () Bool)

(declare-fun e!2222825 () Bool)

(assert (=> b!3592364 (= e!2222825 e!2222826)))

(declare-fun res!1450547 () Bool)

(assert (=> b!3592364 (=> (not res!1450547) (not e!2222826))))

(assert (=> b!3592364 (= res!1450547 (isDefined!6023 lt!1232682))))

(declare-fun b!3592365 () Bool)

(declare-fun res!1450546 () Bool)

(assert (=> b!3592365 (=> (not res!1450546) (not e!2222826))))

(assert (=> b!3592365 (= res!1450546 (= (++!9396 (list!13892 (charsOf!3594 (_1!21958 (get!12190 lt!1232682)))) (_2!21958 (get!12190 lt!1232682))) lt!1232382))))

(declare-fun b!3592366 () Bool)

(declare-fun res!1450542 () Bool)

(assert (=> b!3592366 (=> (not res!1450542) (not e!2222826))))

(assert (=> b!3592366 (= res!1450542 (= (value!179490 (_1!21958 (get!12190 lt!1232682))) (apply!9086 (transformation!5580 (rule!8298 (_1!21958 (get!12190 lt!1232682)))) (seqFromList!4133 (originalCharacters!6294 (_1!21958 (get!12190 lt!1232682)))))))))

(declare-fun b!3592367 () Bool)

(declare-fun res!1450544 () Bool)

(assert (=> b!3592367 (=> (not res!1450544) (not e!2222826))))

(assert (=> b!3592367 (= res!1450544 (matchR!4908 (regex!5580 (rule!8298 (_1!21958 (get!12190 lt!1232682)))) (list!13892 (charsOf!3594 (_1!21958 (get!12190 lt!1232682))))))))

(declare-fun b!3592368 () Bool)

(declare-fun res!1450548 () Bool)

(assert (=> b!3592368 (=> (not res!1450548) (not e!2222826))))

(assert (=> b!3592368 (= res!1450548 (< (size!28766 (_2!21958 (get!12190 lt!1232682))) (size!28766 lt!1232382)))))

(declare-fun b!3592369 () Bool)

(declare-fun e!2222824 () Option!7790)

(declare-fun lt!1232679 () Option!7790)

(declare-fun lt!1232680 () Option!7790)

(assert (=> b!3592369 (= e!2222824 (ite (and ((_ is None!7789) lt!1232679) ((_ is None!7789) lt!1232680)) None!7789 (ite ((_ is None!7789) lt!1232680) lt!1232679 (ite ((_ is None!7789) lt!1232679) lt!1232680 (ite (>= (size!28767 (_1!21958 (v!37467 lt!1232679))) (size!28767 (_1!21958 (v!37467 lt!1232680)))) lt!1232679 lt!1232680)))))))

(declare-fun call!259997 () Option!7790)

(assert (=> b!3592369 (= lt!1232679 call!259997)))

(assert (=> b!3592369 (= lt!1232680 (maxPrefix!2703 thiss!23823 (t!291140 rules!3307) lt!1232382))))

(declare-fun b!3592370 () Bool)

(assert (=> b!3592370 (= e!2222824 call!259997)))

(declare-fun b!3592371 () Bool)

(assert (=> b!3592371 (= e!2222826 (contains!7224 rules!3307 (rule!8298 (_1!21958 (get!12190 lt!1232682)))))))

(declare-fun d!1058951 () Bool)

(assert (=> d!1058951 e!2222825))

(declare-fun res!1450545 () Bool)

(assert (=> d!1058951 (=> res!1450545 e!2222825)))

(assert (=> d!1058951 (= res!1450545 (isEmpty!22261 lt!1232682))))

(assert (=> d!1058951 (= lt!1232682 e!2222824)))

(declare-fun c!622060 () Bool)

(assert (=> d!1058951 (= c!622060 (and ((_ is Cons!37765) rules!3307) ((_ is Nil!37765) (t!291140 rules!3307))))))

(declare-fun lt!1232681 () Unit!53765)

(declare-fun lt!1232678 () Unit!53765)

(assert (=> d!1058951 (= lt!1232681 lt!1232678)))

(assert (=> d!1058951 (isPrefix!2943 lt!1232382 lt!1232382)))

(declare-fun lemmaIsPrefixRefl!1884 (List!37887 List!37887) Unit!53765)

(assert (=> d!1058951 (= lt!1232678 (lemmaIsPrefixRefl!1884 lt!1232382 lt!1232382))))

(declare-fun rulesValidInductive!1949 (LexerInterface!5169 List!37889) Bool)

(assert (=> d!1058951 (rulesValidInductive!1949 thiss!23823 rules!3307)))

(assert (=> d!1058951 (= (maxPrefix!2703 thiss!23823 rules!3307 lt!1232382) lt!1232682)))

(declare-fun bm!259992 () Bool)

(assert (=> bm!259992 (= call!259997 (maxPrefixOneRule!1847 thiss!23823 (h!43185 rules!3307) lt!1232382))))

(assert (= (and d!1058951 c!622060) b!3592370))

(assert (= (and d!1058951 (not c!622060)) b!3592369))

(assert (= (or b!3592370 b!3592369) bm!259992))

(assert (= (and d!1058951 (not res!1450545)) b!3592364))

(assert (= (and b!3592364 res!1450547) b!3592363))

(assert (= (and b!3592363 res!1450543) b!3592368))

(assert (= (and b!3592368 res!1450548) b!3592365))

(assert (= (and b!3592365 res!1450546) b!3592366))

(assert (= (and b!3592366 res!1450542) b!3592367))

(assert (= (and b!3592367 res!1450544) b!3592371))

(declare-fun m!4086773 () Bool)

(assert (=> b!3592369 m!4086773))

(declare-fun m!4086775 () Bool)

(assert (=> b!3592363 m!4086775))

(declare-fun m!4086777 () Bool)

(assert (=> b!3592363 m!4086777))

(assert (=> b!3592363 m!4086777))

(declare-fun m!4086779 () Bool)

(assert (=> b!3592363 m!4086779))

(declare-fun m!4086781 () Bool)

(assert (=> d!1058951 m!4086781))

(declare-fun m!4086783 () Bool)

(assert (=> d!1058951 m!4086783))

(declare-fun m!4086785 () Bool)

(assert (=> d!1058951 m!4086785))

(declare-fun m!4086787 () Bool)

(assert (=> d!1058951 m!4086787))

(assert (=> b!3592368 m!4086775))

(declare-fun m!4086789 () Bool)

(assert (=> b!3592368 m!4086789))

(assert (=> b!3592368 m!4086059))

(assert (=> b!3592366 m!4086775))

(declare-fun m!4086791 () Bool)

(assert (=> b!3592366 m!4086791))

(assert (=> b!3592366 m!4086791))

(declare-fun m!4086793 () Bool)

(assert (=> b!3592366 m!4086793))

(declare-fun m!4086795 () Bool)

(assert (=> bm!259992 m!4086795))

(declare-fun m!4086797 () Bool)

(assert (=> b!3592364 m!4086797))

(assert (=> b!3592367 m!4086775))

(assert (=> b!3592367 m!4086777))

(assert (=> b!3592367 m!4086777))

(assert (=> b!3592367 m!4086779))

(assert (=> b!3592367 m!4086779))

(declare-fun m!4086799 () Bool)

(assert (=> b!3592367 m!4086799))

(assert (=> b!3592365 m!4086775))

(assert (=> b!3592365 m!4086777))

(assert (=> b!3592365 m!4086777))

(assert (=> b!3592365 m!4086779))

(assert (=> b!3592365 m!4086779))

(declare-fun m!4086801 () Bool)

(assert (=> b!3592365 m!4086801))

(assert (=> b!3592371 m!4086775))

(declare-fun m!4086803 () Bool)

(assert (=> b!3592371 m!4086803))

(assert (=> b!3591774 d!1058951))

(declare-fun d!1058953 () Bool)

(assert (=> d!1058953 (isPrefix!2943 lt!1232400 (++!9396 lt!1232400 (_2!21958 lt!1232391)))))

(declare-fun lt!1232683 () Unit!53765)

(assert (=> d!1058953 (= lt!1232683 (choose!20904 lt!1232400 (_2!21958 lt!1232391)))))

(assert (=> d!1058953 (= (lemmaConcatTwoListThenFirstIsPrefix!1864 lt!1232400 (_2!21958 lt!1232391)) lt!1232683)))

(declare-fun bs!570289 () Bool)

(assert (= bs!570289 d!1058953))

(assert (=> bs!570289 m!4086099))

(assert (=> bs!570289 m!4086099))

(assert (=> bs!570289 m!4086101))

(declare-fun m!4086805 () Bool)

(assert (=> bs!570289 m!4086805))

(assert (=> b!3591774 d!1058953))

(declare-fun d!1058955 () Bool)

(declare-fun list!13896 (Conc!11489) List!37887)

(assert (=> d!1058955 (= (list!13892 lt!1232394) (list!13896 (c!621963 lt!1232394)))))

(declare-fun bs!570290 () Bool)

(assert (= bs!570290 d!1058955))

(declare-fun m!4086807 () Bool)

(assert (=> bs!570290 m!4086807))

(assert (=> b!3591774 d!1058955))

(declare-fun d!1058957 () Bool)

(declare-fun e!2222829 () Bool)

(assert (=> d!1058957 e!2222829))

(declare-fun res!1450553 () Bool)

(assert (=> d!1058957 (=> (not res!1450553) (not e!2222829))))

(assert (=> d!1058957 (= res!1450553 (isDefined!6022 (getRuleFromTag!1186 thiss!23823 rules!3307 (tag!6254 (rule!8298 (_1!21958 lt!1232391))))))))

(declare-fun lt!1232686 () Unit!53765)

(declare-fun choose!20905 (LexerInterface!5169 List!37889 List!37887 Token!10526) Unit!53765)

(assert (=> d!1058957 (= lt!1232686 (choose!20905 thiss!23823 rules!3307 lt!1232382 (_1!21958 lt!1232391)))))

(assert (=> d!1058957 (rulesInvariant!4566 thiss!23823 rules!3307)))

(assert (=> d!1058957 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1186 thiss!23823 rules!3307 lt!1232382 (_1!21958 lt!1232391)) lt!1232686)))

(declare-fun b!3592376 () Bool)

(declare-fun res!1450554 () Bool)

(assert (=> b!3592376 (=> (not res!1450554) (not e!2222829))))

(assert (=> b!3592376 (= res!1450554 (matchR!4908 (regex!5580 (get!12191 (getRuleFromTag!1186 thiss!23823 rules!3307 (tag!6254 (rule!8298 (_1!21958 lt!1232391)))))) (list!13892 (charsOf!3594 (_1!21958 lt!1232391)))))))

(declare-fun b!3592377 () Bool)

(assert (=> b!3592377 (= e!2222829 (= (rule!8298 (_1!21958 lt!1232391)) (get!12191 (getRuleFromTag!1186 thiss!23823 rules!3307 (tag!6254 (rule!8298 (_1!21958 lt!1232391)))))))))

(assert (= (and d!1058957 res!1450553) b!3592376))

(assert (= (and b!3592376 res!1450554) b!3592377))

(assert (=> d!1058957 m!4086095))

(assert (=> d!1058957 m!4086095))

(declare-fun m!4086809 () Bool)

(assert (=> d!1058957 m!4086809))

(declare-fun m!4086811 () Bool)

(assert (=> d!1058957 m!4086811))

(assert (=> d!1058957 m!4086003))

(assert (=> b!3592376 m!4086005))

(assert (=> b!3592376 m!4086007))

(assert (=> b!3592376 m!4086095))

(assert (=> b!3592376 m!4086005))

(assert (=> b!3592376 m!4086095))

(declare-fun m!4086813 () Bool)

(assert (=> b!3592376 m!4086813))

(assert (=> b!3592376 m!4086007))

(declare-fun m!4086815 () Bool)

(assert (=> b!3592376 m!4086815))

(assert (=> b!3592377 m!4086095))

(assert (=> b!3592377 m!4086095))

(assert (=> b!3592377 m!4086813))

(assert (=> b!3591774 d!1058957))

(declare-fun b!3592381 () Bool)

(declare-fun e!2222831 () Bool)

(assert (=> b!3592381 (= e!2222831 (>= (size!28766 lt!1232382) (size!28766 lt!1232399)))))

(declare-fun b!3592379 () Bool)

(declare-fun res!1450557 () Bool)

(declare-fun e!2222830 () Bool)

(assert (=> b!3592379 (=> (not res!1450557) (not e!2222830))))

(assert (=> b!3592379 (= res!1450557 (= (head!7506 lt!1232399) (head!7506 lt!1232382)))))

(declare-fun b!3592378 () Bool)

(declare-fun e!2222832 () Bool)

(assert (=> b!3592378 (= e!2222832 e!2222830)))

(declare-fun res!1450558 () Bool)

(assert (=> b!3592378 (=> (not res!1450558) (not e!2222830))))

(assert (=> b!3592378 (= res!1450558 (not ((_ is Nil!37763) lt!1232382)))))

(declare-fun b!3592380 () Bool)

(assert (=> b!3592380 (= e!2222830 (isPrefix!2943 (tail!5565 lt!1232399) (tail!5565 lt!1232382)))))

(declare-fun d!1058959 () Bool)

(assert (=> d!1058959 e!2222831))

(declare-fun res!1450555 () Bool)

(assert (=> d!1058959 (=> res!1450555 e!2222831)))

(declare-fun lt!1232687 () Bool)

(assert (=> d!1058959 (= res!1450555 (not lt!1232687))))

(assert (=> d!1058959 (= lt!1232687 e!2222832)))

(declare-fun res!1450556 () Bool)

(assert (=> d!1058959 (=> res!1450556 e!2222832)))

(assert (=> d!1058959 (= res!1450556 ((_ is Nil!37763) lt!1232399))))

(assert (=> d!1058959 (= (isPrefix!2943 lt!1232399 lt!1232382) lt!1232687)))

(assert (= (and d!1058959 (not res!1450556)) b!3592378))

(assert (= (and b!3592378 res!1450558) b!3592379))

(assert (= (and b!3592379 res!1450557) b!3592380))

(assert (= (and d!1058959 (not res!1450555)) b!3592381))

(assert (=> b!3592381 m!4086059))

(declare-fun m!4086817 () Bool)

(assert (=> b!3592381 m!4086817))

(declare-fun m!4086819 () Bool)

(assert (=> b!3592379 m!4086819))

(declare-fun m!4086821 () Bool)

(assert (=> b!3592379 m!4086821))

(declare-fun m!4086823 () Bool)

(assert (=> b!3592380 m!4086823))

(assert (=> b!3592380 m!4086399))

(assert (=> b!3592380 m!4086823))

(assert (=> b!3592380 m!4086399))

(declare-fun m!4086825 () Bool)

(assert (=> b!3592380 m!4086825))

(assert (=> b!3591774 d!1058959))

(declare-fun b!3592390 () Bool)

(declare-fun e!2222838 () List!37887)

(assert (=> b!3592390 (= e!2222838 suffix!1395)))

(declare-fun b!3592391 () Bool)

(assert (=> b!3592391 (= e!2222838 (Cons!37763 (h!43183 lt!1232399) (++!9396 (t!291138 lt!1232399) suffix!1395)))))

(declare-fun d!1058961 () Bool)

(declare-fun e!2222837 () Bool)

(assert (=> d!1058961 e!2222837))

(declare-fun res!1450564 () Bool)

(assert (=> d!1058961 (=> (not res!1450564) (not e!2222837))))

(declare-fun lt!1232690 () List!37887)

(declare-fun content!5373 (List!37887) (InoxSet C!20864))

(assert (=> d!1058961 (= res!1450564 (= (content!5373 lt!1232690) ((_ map or) (content!5373 lt!1232399) (content!5373 suffix!1395))))))

(assert (=> d!1058961 (= lt!1232690 e!2222838)))

(declare-fun c!622063 () Bool)

(assert (=> d!1058961 (= c!622063 ((_ is Nil!37763) lt!1232399))))

(assert (=> d!1058961 (= (++!9396 lt!1232399 suffix!1395) lt!1232690)))

(declare-fun b!3592393 () Bool)

(assert (=> b!3592393 (= e!2222837 (or (not (= suffix!1395 Nil!37763)) (= lt!1232690 lt!1232399)))))

(declare-fun b!3592392 () Bool)

(declare-fun res!1450563 () Bool)

(assert (=> b!3592392 (=> (not res!1450563) (not e!2222837))))

(assert (=> b!3592392 (= res!1450563 (= (size!28766 lt!1232690) (+ (size!28766 lt!1232399) (size!28766 suffix!1395))))))

(assert (= (and d!1058961 c!622063) b!3592390))

(assert (= (and d!1058961 (not c!622063)) b!3592391))

(assert (= (and d!1058961 res!1450564) b!3592392))

(assert (= (and b!3592392 res!1450563) b!3592393))

(declare-fun m!4086827 () Bool)

(assert (=> b!3592391 m!4086827))

(declare-fun m!4086829 () Bool)

(assert (=> d!1058961 m!4086829))

(declare-fun m!4086831 () Bool)

(assert (=> d!1058961 m!4086831))

(declare-fun m!4086833 () Bool)

(assert (=> d!1058961 m!4086833))

(declare-fun m!4086835 () Bool)

(assert (=> b!3592392 m!4086835))

(assert (=> b!3592392 m!4086817))

(declare-fun m!4086837 () Bool)

(assert (=> b!3592392 m!4086837))

(assert (=> b!3591774 d!1058961))

(declare-fun d!1058963 () Bool)

(assert (=> d!1058963 (= (isDefined!6022 lt!1232392) (not (isEmpty!22263 lt!1232392)))))

(declare-fun bs!570291 () Bool)

(assert (= bs!570291 d!1058963))

(declare-fun m!4086839 () Bool)

(assert (=> bs!570291 m!4086839))

(assert (=> b!3591774 d!1058963))

(declare-fun b!3592394 () Bool)

(declare-fun e!2222840 () List!37887)

(assert (=> b!3592394 (= e!2222840 (_2!21958 lt!1232391))))

(declare-fun b!3592395 () Bool)

(assert (=> b!3592395 (= e!2222840 (Cons!37763 (h!43183 lt!1232400) (++!9396 (t!291138 lt!1232400) (_2!21958 lt!1232391))))))

(declare-fun d!1058965 () Bool)

(declare-fun e!2222839 () Bool)

(assert (=> d!1058965 e!2222839))

(declare-fun res!1450566 () Bool)

(assert (=> d!1058965 (=> (not res!1450566) (not e!2222839))))

(declare-fun lt!1232691 () List!37887)

(assert (=> d!1058965 (= res!1450566 (= (content!5373 lt!1232691) ((_ map or) (content!5373 lt!1232400) (content!5373 (_2!21958 lt!1232391)))))))

(assert (=> d!1058965 (= lt!1232691 e!2222840)))

(declare-fun c!622064 () Bool)

(assert (=> d!1058965 (= c!622064 ((_ is Nil!37763) lt!1232400))))

(assert (=> d!1058965 (= (++!9396 lt!1232400 (_2!21958 lt!1232391)) lt!1232691)))

(declare-fun b!3592397 () Bool)

(assert (=> b!3592397 (= e!2222839 (or (not (= (_2!21958 lt!1232391) Nil!37763)) (= lt!1232691 lt!1232400)))))

(declare-fun b!3592396 () Bool)

(declare-fun res!1450565 () Bool)

(assert (=> b!3592396 (=> (not res!1450565) (not e!2222839))))

(assert (=> b!3592396 (= res!1450565 (= (size!28766 lt!1232691) (+ (size!28766 lt!1232400) (size!28766 (_2!21958 lt!1232391)))))))

(assert (= (and d!1058965 c!622064) b!3592394))

(assert (= (and d!1058965 (not c!622064)) b!3592395))

(assert (= (and d!1058965 res!1450566) b!3592396))

(assert (= (and b!3592396 res!1450565) b!3592397))

(declare-fun m!4086841 () Bool)

(assert (=> b!3592395 m!4086841))

(declare-fun m!4086843 () Bool)

(assert (=> d!1058965 m!4086843))

(declare-fun m!4086845 () Bool)

(assert (=> d!1058965 m!4086845))

(declare-fun m!4086847 () Bool)

(assert (=> d!1058965 m!4086847))

(declare-fun m!4086849 () Bool)

(assert (=> b!3592396 m!4086849))

(assert (=> b!3592396 m!4086053))

(declare-fun m!4086851 () Bool)

(assert (=> b!3592396 m!4086851))

(assert (=> b!3591774 d!1058965))

(declare-fun d!1058967 () Bool)

(assert (=> d!1058967 (= (get!12190 lt!1232402) (v!37467 lt!1232402))))

(assert (=> b!3591774 d!1058967))

(declare-fun b!3592401 () Bool)

(declare-fun e!2222842 () Bool)

(assert (=> b!3592401 (= e!2222842 (>= (size!28766 lt!1232382) (size!28766 lt!1232400)))))

(declare-fun b!3592399 () Bool)

(declare-fun res!1450569 () Bool)

(declare-fun e!2222841 () Bool)

(assert (=> b!3592399 (=> (not res!1450569) (not e!2222841))))

(assert (=> b!3592399 (= res!1450569 (= (head!7506 lt!1232400) (head!7506 lt!1232382)))))

(declare-fun b!3592398 () Bool)

(declare-fun e!2222843 () Bool)

(assert (=> b!3592398 (= e!2222843 e!2222841)))

(declare-fun res!1450570 () Bool)

(assert (=> b!3592398 (=> (not res!1450570) (not e!2222841))))

(assert (=> b!3592398 (= res!1450570 (not ((_ is Nil!37763) lt!1232382)))))

(declare-fun b!3592400 () Bool)

(assert (=> b!3592400 (= e!2222841 (isPrefix!2943 (tail!5565 lt!1232400) (tail!5565 lt!1232382)))))

(declare-fun d!1058969 () Bool)

(assert (=> d!1058969 e!2222842))

(declare-fun res!1450567 () Bool)

(assert (=> d!1058969 (=> res!1450567 e!2222842)))

(declare-fun lt!1232692 () Bool)

(assert (=> d!1058969 (= res!1450567 (not lt!1232692))))

(assert (=> d!1058969 (= lt!1232692 e!2222843)))

(declare-fun res!1450568 () Bool)

(assert (=> d!1058969 (=> res!1450568 e!2222843)))

(assert (=> d!1058969 (= res!1450568 ((_ is Nil!37763) lt!1232400))))

(assert (=> d!1058969 (= (isPrefix!2943 lt!1232400 lt!1232382) lt!1232692)))

(assert (= (and d!1058969 (not res!1450568)) b!3592398))

(assert (= (and b!3592398 res!1450570) b!3592399))

(assert (= (and b!3592399 res!1450569) b!3592400))

(assert (= (and d!1058969 (not res!1450567)) b!3592401))

(assert (=> b!3592401 m!4086059))

(assert (=> b!3592401 m!4086053))

(assert (=> b!3592399 m!4086617))

(assert (=> b!3592399 m!4086821))

(assert (=> b!3592400 m!4086621))

(assert (=> b!3592400 m!4086399))

(assert (=> b!3592400 m!4086621))

(assert (=> b!3592400 m!4086399))

(declare-fun m!4086853 () Bool)

(assert (=> b!3592400 m!4086853))

(assert (=> b!3591774 d!1058969))

(declare-fun d!1058971 () Bool)

(assert (=> d!1058971 (= (isDefined!6023 lt!1232383) (not (isEmpty!22261 lt!1232383)))))

(declare-fun bs!570292 () Bool)

(assert (= bs!570292 d!1058971))

(declare-fun m!4086855 () Bool)

(assert (=> bs!570292 m!4086855))

(assert (=> b!3591775 d!1058971))

(declare-fun b!3592402 () Bool)

(declare-fun res!1450572 () Bool)

(declare-fun e!2222846 () Bool)

(assert (=> b!3592402 (=> (not res!1450572) (not e!2222846))))

(declare-fun lt!1232697 () Option!7790)

(assert (=> b!3592402 (= res!1450572 (= (list!13892 (charsOf!3594 (_1!21958 (get!12190 lt!1232697)))) (originalCharacters!6294 (_1!21958 (get!12190 lt!1232697)))))))

(declare-fun b!3592403 () Bool)

(declare-fun e!2222845 () Bool)

(assert (=> b!3592403 (= e!2222845 e!2222846)))

(declare-fun res!1450576 () Bool)

(assert (=> b!3592403 (=> (not res!1450576) (not e!2222846))))

(assert (=> b!3592403 (= res!1450576 (isDefined!6023 lt!1232697))))

(declare-fun b!3592404 () Bool)

(declare-fun res!1450575 () Bool)

(assert (=> b!3592404 (=> (not res!1450575) (not e!2222846))))

(assert (=> b!3592404 (= res!1450575 (= (++!9396 (list!13892 (charsOf!3594 (_1!21958 (get!12190 lt!1232697)))) (_2!21958 (get!12190 lt!1232697))) lt!1232399))))

(declare-fun b!3592405 () Bool)

(declare-fun res!1450571 () Bool)

(assert (=> b!3592405 (=> (not res!1450571) (not e!2222846))))

(assert (=> b!3592405 (= res!1450571 (= (value!179490 (_1!21958 (get!12190 lt!1232697))) (apply!9086 (transformation!5580 (rule!8298 (_1!21958 (get!12190 lt!1232697)))) (seqFromList!4133 (originalCharacters!6294 (_1!21958 (get!12190 lt!1232697)))))))))

(declare-fun b!3592406 () Bool)

(declare-fun res!1450573 () Bool)

(assert (=> b!3592406 (=> (not res!1450573) (not e!2222846))))

(assert (=> b!3592406 (= res!1450573 (matchR!4908 (regex!5580 (rule!8298 (_1!21958 (get!12190 lt!1232697)))) (list!13892 (charsOf!3594 (_1!21958 (get!12190 lt!1232697))))))))

(declare-fun b!3592407 () Bool)

(declare-fun res!1450577 () Bool)

(assert (=> b!3592407 (=> (not res!1450577) (not e!2222846))))

(assert (=> b!3592407 (= res!1450577 (< (size!28766 (_2!21958 (get!12190 lt!1232697))) (size!28766 lt!1232399)))))

(declare-fun b!3592408 () Bool)

(declare-fun e!2222844 () Option!7790)

(declare-fun lt!1232694 () Option!7790)

(declare-fun lt!1232695 () Option!7790)

(assert (=> b!3592408 (= e!2222844 (ite (and ((_ is None!7789) lt!1232694) ((_ is None!7789) lt!1232695)) None!7789 (ite ((_ is None!7789) lt!1232695) lt!1232694 (ite ((_ is None!7789) lt!1232694) lt!1232695 (ite (>= (size!28767 (_1!21958 (v!37467 lt!1232694))) (size!28767 (_1!21958 (v!37467 lt!1232695)))) lt!1232694 lt!1232695)))))))

(declare-fun call!259998 () Option!7790)

(assert (=> b!3592408 (= lt!1232694 call!259998)))

(assert (=> b!3592408 (= lt!1232695 (maxPrefix!2703 thiss!23823 (t!291140 rules!3307) lt!1232399))))

(declare-fun b!3592409 () Bool)

(assert (=> b!3592409 (= e!2222844 call!259998)))

(declare-fun b!3592410 () Bool)

(assert (=> b!3592410 (= e!2222846 (contains!7224 rules!3307 (rule!8298 (_1!21958 (get!12190 lt!1232697)))))))

(declare-fun d!1058973 () Bool)

(assert (=> d!1058973 e!2222845))

(declare-fun res!1450574 () Bool)

(assert (=> d!1058973 (=> res!1450574 e!2222845)))

(assert (=> d!1058973 (= res!1450574 (isEmpty!22261 lt!1232697))))

(assert (=> d!1058973 (= lt!1232697 e!2222844)))

(declare-fun c!622065 () Bool)

(assert (=> d!1058973 (= c!622065 (and ((_ is Cons!37765) rules!3307) ((_ is Nil!37765) (t!291140 rules!3307))))))

(declare-fun lt!1232696 () Unit!53765)

(declare-fun lt!1232693 () Unit!53765)

(assert (=> d!1058973 (= lt!1232696 lt!1232693)))

(assert (=> d!1058973 (isPrefix!2943 lt!1232399 lt!1232399)))

(assert (=> d!1058973 (= lt!1232693 (lemmaIsPrefixRefl!1884 lt!1232399 lt!1232399))))

(assert (=> d!1058973 (rulesValidInductive!1949 thiss!23823 rules!3307)))

(assert (=> d!1058973 (= (maxPrefix!2703 thiss!23823 rules!3307 lt!1232399) lt!1232697)))

(declare-fun bm!259993 () Bool)

(assert (=> bm!259993 (= call!259998 (maxPrefixOneRule!1847 thiss!23823 (h!43185 rules!3307) lt!1232399))))

(assert (= (and d!1058973 c!622065) b!3592409))

(assert (= (and d!1058973 (not c!622065)) b!3592408))

(assert (= (or b!3592409 b!3592408) bm!259993))

(assert (= (and d!1058973 (not res!1450574)) b!3592403))

(assert (= (and b!3592403 res!1450576) b!3592402))

(assert (= (and b!3592402 res!1450572) b!3592407))

(assert (= (and b!3592407 res!1450577) b!3592404))

(assert (= (and b!3592404 res!1450575) b!3592405))

(assert (= (and b!3592405 res!1450571) b!3592406))

(assert (= (and b!3592406 res!1450573) b!3592410))

(declare-fun m!4086857 () Bool)

(assert (=> b!3592408 m!4086857))

(declare-fun m!4086859 () Bool)

(assert (=> b!3592402 m!4086859))

(declare-fun m!4086861 () Bool)

(assert (=> b!3592402 m!4086861))

(assert (=> b!3592402 m!4086861))

(declare-fun m!4086863 () Bool)

(assert (=> b!3592402 m!4086863))

(declare-fun m!4086865 () Bool)

(assert (=> d!1058973 m!4086865))

(declare-fun m!4086867 () Bool)

(assert (=> d!1058973 m!4086867))

(declare-fun m!4086869 () Bool)

(assert (=> d!1058973 m!4086869))

(assert (=> d!1058973 m!4086787))

(assert (=> b!3592407 m!4086859))

(declare-fun m!4086871 () Bool)

(assert (=> b!3592407 m!4086871))

(assert (=> b!3592407 m!4086817))

(assert (=> b!3592405 m!4086859))

(declare-fun m!4086873 () Bool)

(assert (=> b!3592405 m!4086873))

(assert (=> b!3592405 m!4086873))

(declare-fun m!4086875 () Bool)

(assert (=> b!3592405 m!4086875))

(declare-fun m!4086877 () Bool)

(assert (=> bm!259993 m!4086877))

(declare-fun m!4086879 () Bool)

(assert (=> b!3592403 m!4086879))

(assert (=> b!3592406 m!4086859))

(assert (=> b!3592406 m!4086861))

(assert (=> b!3592406 m!4086861))

(assert (=> b!3592406 m!4086863))

(assert (=> b!3592406 m!4086863))

(declare-fun m!4086881 () Bool)

(assert (=> b!3592406 m!4086881))

(assert (=> b!3592404 m!4086859))

(assert (=> b!3592404 m!4086861))

(assert (=> b!3592404 m!4086861))

(assert (=> b!3592404 m!4086863))

(assert (=> b!3592404 m!4086863))

(declare-fun m!4086883 () Bool)

(assert (=> b!3592404 m!4086883))

(assert (=> b!3592410 m!4086859))

(declare-fun m!4086885 () Bool)

(assert (=> b!3592410 m!4086885))

(assert (=> b!3591775 d!1058973))

(declare-fun d!1058975 () Bool)

(assert (=> d!1058975 (= (list!13892 (charsOf!3594 token!511)) (list!13896 (c!621963 (charsOf!3594 token!511))))))

(declare-fun bs!570293 () Bool)

(assert (= bs!570293 d!1058975))

(declare-fun m!4086887 () Bool)

(assert (=> bs!570293 m!4086887))

(assert (=> b!3591775 d!1058975))

(declare-fun d!1058977 () Bool)

(declare-fun lt!1232698 () BalanceConc!22592)

(assert (=> d!1058977 (= (list!13892 lt!1232698) (originalCharacters!6294 token!511))))

(assert (=> d!1058977 (= lt!1232698 (dynLambda!16249 (toChars!7723 (transformation!5580 (rule!8298 token!511))) (value!179490 token!511)))))

(assert (=> d!1058977 (= (charsOf!3594 token!511) lt!1232698)))

(declare-fun b_lambda!106153 () Bool)

(assert (=> (not b_lambda!106153) (not d!1058977)))

(assert (=> d!1058977 t!291198))

(declare-fun b_and!260007 () Bool)

(assert (= b_and!259955 (and (=> t!291198 result!250022) b_and!260007)))

(assert (=> d!1058977 t!291200))

(declare-fun b_and!260009 () Bool)

(assert (= b_and!259957 (and (=> t!291200 result!250024) b_and!260009)))

(assert (=> d!1058977 t!291202))

(declare-fun b_and!260011 () Bool)

(assert (= b_and!259959 (and (=> t!291202 result!250026) b_and!260011)))

(assert (=> d!1058977 t!291204))

(declare-fun b_and!260013 () Bool)

(assert (= b_and!259961 (and (=> t!291204 result!250028) b_and!260013)))

(declare-fun m!4086889 () Bool)

(assert (=> d!1058977 m!4086889))

(assert (=> d!1058977 m!4086643))

(assert (=> b!3591775 d!1058977))

(declare-fun d!1058979 () Bool)

(assert (=> d!1058979 (= (isEmpty!22259 rules!3307) ((_ is Nil!37765) rules!3307))))

(assert (=> b!3591796 d!1058979))

(declare-fun d!1058981 () Bool)

(declare-fun lt!1232701 () Bool)

(assert (=> d!1058981 (= lt!1232701 (select (content!5373 (usedCharacters!794 (regex!5580 rule!403))) lt!1232386))))

(declare-fun e!2222852 () Bool)

(assert (=> d!1058981 (= lt!1232701 e!2222852)))

(declare-fun res!1450583 () Bool)

(assert (=> d!1058981 (=> (not res!1450583) (not e!2222852))))

(assert (=> d!1058981 (= res!1450583 ((_ is Cons!37763) (usedCharacters!794 (regex!5580 rule!403))))))

(assert (=> d!1058981 (= (contains!7223 (usedCharacters!794 (regex!5580 rule!403)) lt!1232386) lt!1232701)))

(declare-fun b!3592415 () Bool)

(declare-fun e!2222851 () Bool)

(assert (=> b!3592415 (= e!2222852 e!2222851)))

(declare-fun res!1450582 () Bool)

(assert (=> b!3592415 (=> res!1450582 e!2222851)))

(assert (=> b!3592415 (= res!1450582 (= (h!43183 (usedCharacters!794 (regex!5580 rule!403))) lt!1232386))))

(declare-fun b!3592416 () Bool)

(assert (=> b!3592416 (= e!2222851 (contains!7223 (t!291138 (usedCharacters!794 (regex!5580 rule!403))) lt!1232386))))

(assert (= (and d!1058981 res!1450583) b!3592415))

(assert (= (and b!3592415 (not res!1450582)) b!3592416))

(assert (=> d!1058981 m!4086041))

(declare-fun m!4086891 () Bool)

(assert (=> d!1058981 m!4086891))

(declare-fun m!4086893 () Bool)

(assert (=> d!1058981 m!4086893))

(declare-fun m!4086895 () Bool)

(assert (=> b!3592416 m!4086895))

(assert (=> b!3591797 d!1058981))

(declare-fun call!260009 () List!37887)

(declare-fun call!260008 () List!37887)

(declare-fun bm!260002 () Bool)

(declare-fun c!622075 () Bool)

(declare-fun call!260010 () List!37887)

(assert (=> bm!260002 (= call!260010 (++!9396 (ite c!622075 call!260008 call!260009) (ite c!622075 call!260009 call!260008)))))

(declare-fun b!3592433 () Bool)

(declare-fun e!2222861 () List!37887)

(assert (=> b!3592433 (= e!2222861 Nil!37763)))

(declare-fun b!3592434 () Bool)

(declare-fun e!2222863 () List!37887)

(assert (=> b!3592434 (= e!2222863 (Cons!37763 (c!621962 (regex!5580 rule!403)) Nil!37763))))

(declare-fun d!1058983 () Bool)

(declare-fun c!622077 () Bool)

(assert (=> d!1058983 (= c!622077 (or ((_ is EmptyExpr!10339) (regex!5580 rule!403)) ((_ is EmptyLang!10339) (regex!5580 rule!403))))))

(assert (=> d!1058983 (= (usedCharacters!794 (regex!5580 rule!403)) e!2222861)))

(declare-fun b!3592435 () Bool)

(declare-fun e!2222864 () List!37887)

(assert (=> b!3592435 (= e!2222864 call!260010)))

(declare-fun b!3592436 () Bool)

(assert (=> b!3592436 (= e!2222861 e!2222863)))

(declare-fun c!622074 () Bool)

(assert (=> b!3592436 (= c!622074 ((_ is ElementMatch!10339) (regex!5580 rule!403)))))

(declare-fun bm!260003 () Bool)

(declare-fun c!622076 () Bool)

(declare-fun call!260007 () List!37887)

(assert (=> bm!260003 (= call!260007 (usedCharacters!794 (ite c!622076 (reg!10668 (regex!5580 rule!403)) (ite c!622075 (regTwo!21191 (regex!5580 rule!403)) (regOne!21190 (regex!5580 rule!403))))))))

(declare-fun b!3592437 () Bool)

(assert (=> b!3592437 (= e!2222864 call!260010)))

(declare-fun b!3592438 () Bool)

(assert (=> b!3592438 (= c!622076 ((_ is Star!10339) (regex!5580 rule!403)))))

(declare-fun e!2222862 () List!37887)

(assert (=> b!3592438 (= e!2222863 e!2222862)))

(declare-fun bm!260004 () Bool)

(assert (=> bm!260004 (= call!260009 call!260007)))

(declare-fun b!3592439 () Bool)

(assert (=> b!3592439 (= e!2222862 call!260007)))

(declare-fun b!3592440 () Bool)

(assert (=> b!3592440 (= e!2222862 e!2222864)))

(assert (=> b!3592440 (= c!622075 ((_ is Union!10339) (regex!5580 rule!403)))))

(declare-fun bm!260005 () Bool)

(assert (=> bm!260005 (= call!260008 (usedCharacters!794 (ite c!622075 (regOne!21191 (regex!5580 rule!403)) (regTwo!21190 (regex!5580 rule!403)))))))

(assert (= (and d!1058983 c!622077) b!3592433))

(assert (= (and d!1058983 (not c!622077)) b!3592436))

(assert (= (and b!3592436 c!622074) b!3592434))

(assert (= (and b!3592436 (not c!622074)) b!3592438))

(assert (= (and b!3592438 c!622076) b!3592439))

(assert (= (and b!3592438 (not c!622076)) b!3592440))

(assert (= (and b!3592440 c!622075) b!3592435))

(assert (= (and b!3592440 (not c!622075)) b!3592437))

(assert (= (or b!3592435 b!3592437) bm!260005))

(assert (= (or b!3592435 b!3592437) bm!260004))

(assert (= (or b!3592435 b!3592437) bm!260002))

(assert (= (or b!3592439 bm!260004) bm!260003))

(declare-fun m!4086897 () Bool)

(assert (=> bm!260002 m!4086897))

(declare-fun m!4086899 () Bool)

(assert (=> bm!260003 m!4086899))

(declare-fun m!4086901 () Bool)

(assert (=> bm!260005 m!4086901))

(assert (=> b!3591797 d!1058983))

(declare-fun d!1058985 () Bool)

(assert (=> d!1058985 (= (head!7506 suffix!1395) (h!43183 suffix!1395))))

(assert (=> b!3591797 d!1058985))

(declare-fun d!1058987 () Bool)

(declare-fun lt!1232702 () Bool)

(assert (=> d!1058987 (= lt!1232702 (select (content!5373 (usedCharacters!794 (regex!5580 anOtherTypeRule!33))) lt!1232386))))

(declare-fun e!2222866 () Bool)

(assert (=> d!1058987 (= lt!1232702 e!2222866)))

(declare-fun res!1450585 () Bool)

(assert (=> d!1058987 (=> (not res!1450585) (not e!2222866))))

(assert (=> d!1058987 (= res!1450585 ((_ is Cons!37763) (usedCharacters!794 (regex!5580 anOtherTypeRule!33))))))

(assert (=> d!1058987 (= (contains!7223 (usedCharacters!794 (regex!5580 anOtherTypeRule!33)) lt!1232386) lt!1232702)))

(declare-fun b!3592441 () Bool)

(declare-fun e!2222865 () Bool)

(assert (=> b!3592441 (= e!2222866 e!2222865)))

(declare-fun res!1450584 () Bool)

(assert (=> b!3592441 (=> res!1450584 e!2222865)))

(assert (=> b!3592441 (= res!1450584 (= (h!43183 (usedCharacters!794 (regex!5580 anOtherTypeRule!33))) lt!1232386))))

(declare-fun b!3592442 () Bool)

(assert (=> b!3592442 (= e!2222865 (contains!7223 (t!291138 (usedCharacters!794 (regex!5580 anOtherTypeRule!33))) lt!1232386))))

(assert (= (and d!1058987 res!1450585) b!3592441))

(assert (= (and b!3592441 (not res!1450584)) b!3592442))

(assert (=> d!1058987 m!4085999))

(declare-fun m!4086903 () Bool)

(assert (=> d!1058987 m!4086903))

(declare-fun m!4086905 () Bool)

(assert (=> d!1058987 m!4086905))

(declare-fun m!4086907 () Bool)

(assert (=> b!3592442 m!4086907))

(assert (=> b!3591777 d!1058987))

(declare-fun call!260012 () List!37887)

(declare-fun call!260013 () List!37887)

(declare-fun call!260014 () List!37887)

(declare-fun c!622079 () Bool)

(declare-fun bm!260006 () Bool)

(assert (=> bm!260006 (= call!260014 (++!9396 (ite c!622079 call!260012 call!260013) (ite c!622079 call!260013 call!260012)))))

(declare-fun b!3592443 () Bool)

(declare-fun e!2222867 () List!37887)

(assert (=> b!3592443 (= e!2222867 Nil!37763)))

(declare-fun b!3592444 () Bool)

(declare-fun e!2222869 () List!37887)

(assert (=> b!3592444 (= e!2222869 (Cons!37763 (c!621962 (regex!5580 anOtherTypeRule!33)) Nil!37763))))

(declare-fun d!1058989 () Bool)

(declare-fun c!622081 () Bool)

(assert (=> d!1058989 (= c!622081 (or ((_ is EmptyExpr!10339) (regex!5580 anOtherTypeRule!33)) ((_ is EmptyLang!10339) (regex!5580 anOtherTypeRule!33))))))

(assert (=> d!1058989 (= (usedCharacters!794 (regex!5580 anOtherTypeRule!33)) e!2222867)))

(declare-fun b!3592445 () Bool)

(declare-fun e!2222870 () List!37887)

(assert (=> b!3592445 (= e!2222870 call!260014)))

(declare-fun b!3592446 () Bool)

(assert (=> b!3592446 (= e!2222867 e!2222869)))

(declare-fun c!622078 () Bool)

(assert (=> b!3592446 (= c!622078 ((_ is ElementMatch!10339) (regex!5580 anOtherTypeRule!33)))))

(declare-fun c!622080 () Bool)

(declare-fun bm!260007 () Bool)

(declare-fun call!260011 () List!37887)

(assert (=> bm!260007 (= call!260011 (usedCharacters!794 (ite c!622080 (reg!10668 (regex!5580 anOtherTypeRule!33)) (ite c!622079 (regTwo!21191 (regex!5580 anOtherTypeRule!33)) (regOne!21190 (regex!5580 anOtherTypeRule!33))))))))

(declare-fun b!3592447 () Bool)

(assert (=> b!3592447 (= e!2222870 call!260014)))

(declare-fun b!3592448 () Bool)

(assert (=> b!3592448 (= c!622080 ((_ is Star!10339) (regex!5580 anOtherTypeRule!33)))))

(declare-fun e!2222868 () List!37887)

(assert (=> b!3592448 (= e!2222869 e!2222868)))

(declare-fun bm!260008 () Bool)

(assert (=> bm!260008 (= call!260013 call!260011)))

(declare-fun b!3592449 () Bool)

(assert (=> b!3592449 (= e!2222868 call!260011)))

(declare-fun b!3592450 () Bool)

(assert (=> b!3592450 (= e!2222868 e!2222870)))

(assert (=> b!3592450 (= c!622079 ((_ is Union!10339) (regex!5580 anOtherTypeRule!33)))))

(declare-fun bm!260009 () Bool)

(assert (=> bm!260009 (= call!260012 (usedCharacters!794 (ite c!622079 (regOne!21191 (regex!5580 anOtherTypeRule!33)) (regTwo!21190 (regex!5580 anOtherTypeRule!33)))))))

(assert (= (and d!1058989 c!622081) b!3592443))

(assert (= (and d!1058989 (not c!622081)) b!3592446))

(assert (= (and b!3592446 c!622078) b!3592444))

(assert (= (and b!3592446 (not c!622078)) b!3592448))

(assert (= (and b!3592448 c!622080) b!3592449))

(assert (= (and b!3592448 (not c!622080)) b!3592450))

(assert (= (and b!3592450 c!622079) b!3592445))

(assert (= (and b!3592450 (not c!622079)) b!3592447))

(assert (= (or b!3592445 b!3592447) bm!260009))

(assert (= (or b!3592445 b!3592447) bm!260008))

(assert (= (or b!3592445 b!3592447) bm!260006))

(assert (= (or b!3592449 bm!260008) bm!260007))

(declare-fun m!4086909 () Bool)

(assert (=> bm!260006 m!4086909))

(declare-fun m!4086911 () Bool)

(assert (=> bm!260007 m!4086911))

(declare-fun m!4086913 () Bool)

(assert (=> bm!260009 m!4086913))

(assert (=> b!3591777 d!1058989))

(declare-fun d!1058991 () Bool)

(assert (=> d!1058991 (= (inv!51104 (tag!6254 (rule!8298 token!511))) (= (mod (str.len (value!179489 (tag!6254 (rule!8298 token!511)))) 2) 0))))

(assert (=> b!3591798 d!1058991))

(declare-fun d!1058993 () Bool)

(declare-fun res!1450586 () Bool)

(declare-fun e!2222871 () Bool)

(assert (=> d!1058993 (=> (not res!1450586) (not e!2222871))))

(assert (=> d!1058993 (= res!1450586 (semiInverseModEq!2365 (toChars!7723 (transformation!5580 (rule!8298 token!511))) (toValue!7864 (transformation!5580 (rule!8298 token!511)))))))

(assert (=> d!1058993 (= (inv!51107 (transformation!5580 (rule!8298 token!511))) e!2222871)))

(declare-fun b!3592451 () Bool)

(assert (=> b!3592451 (= e!2222871 (equivClasses!2264 (toChars!7723 (transformation!5580 (rule!8298 token!511))) (toValue!7864 (transformation!5580 (rule!8298 token!511)))))))

(assert (= (and d!1058993 res!1450586) b!3592451))

(declare-fun m!4086915 () Bool)

(assert (=> d!1058993 m!4086915))

(declare-fun m!4086917 () Bool)

(assert (=> b!3592451 m!4086917))

(assert (=> b!3591798 d!1058993))

(declare-fun b!3592452 () Bool)

(declare-fun res!1450587 () Bool)

(declare-fun e!2222877 () Bool)

(assert (=> b!3592452 (=> res!1450587 e!2222877)))

(assert (=> b!3592452 (= res!1450587 (not ((_ is ElementMatch!10339) (regex!5580 lt!1232401))))))

(declare-fun e!2222878 () Bool)

(assert (=> b!3592452 (= e!2222878 e!2222877)))

(declare-fun bm!260010 () Bool)

(declare-fun call!260015 () Bool)

(assert (=> bm!260010 (= call!260015 (isEmpty!22258 (list!13892 (charsOf!3594 (_1!21958 lt!1232391)))))))

(declare-fun b!3592453 () Bool)

(declare-fun e!2222875 () Bool)

(assert (=> b!3592453 (= e!2222875 (matchR!4908 (derivativeStep!3116 (regex!5580 lt!1232401) (head!7506 (list!13892 (charsOf!3594 (_1!21958 lt!1232391))))) (tail!5565 (list!13892 (charsOf!3594 (_1!21958 lt!1232391))))))))

(declare-fun b!3592454 () Bool)

(assert (=> b!3592454 (= e!2222875 (nullable!3567 (regex!5580 lt!1232401)))))

(declare-fun d!1058995 () Bool)

(declare-fun e!2222876 () Bool)

(assert (=> d!1058995 e!2222876))

(declare-fun c!622082 () Bool)

(assert (=> d!1058995 (= c!622082 ((_ is EmptyExpr!10339) (regex!5580 lt!1232401)))))

(declare-fun lt!1232703 () Bool)

(assert (=> d!1058995 (= lt!1232703 e!2222875)))

(declare-fun c!622084 () Bool)

(assert (=> d!1058995 (= c!622084 (isEmpty!22258 (list!13892 (charsOf!3594 (_1!21958 lt!1232391)))))))

(assert (=> d!1058995 (validRegex!4723 (regex!5580 lt!1232401))))

(assert (=> d!1058995 (= (matchR!4908 (regex!5580 lt!1232401) (list!13892 (charsOf!3594 (_1!21958 lt!1232391)))) lt!1232703)))

(declare-fun b!3592455 () Bool)

(assert (=> b!3592455 (= e!2222876 e!2222878)))

(declare-fun c!622083 () Bool)

(assert (=> b!3592455 (= c!622083 ((_ is EmptyLang!10339) (regex!5580 lt!1232401)))))

(declare-fun b!3592456 () Bool)

(declare-fun res!1450590 () Bool)

(declare-fun e!2222873 () Bool)

(assert (=> b!3592456 (=> res!1450590 e!2222873)))

(assert (=> b!3592456 (= res!1450590 (not (isEmpty!22258 (tail!5565 (list!13892 (charsOf!3594 (_1!21958 lt!1232391)))))))))

(declare-fun b!3592457 () Bool)

(declare-fun e!2222874 () Bool)

(assert (=> b!3592457 (= e!2222874 (= (head!7506 (list!13892 (charsOf!3594 (_1!21958 lt!1232391)))) (c!621962 (regex!5580 lt!1232401))))))

(declare-fun b!3592458 () Bool)

(declare-fun res!1450592 () Bool)

(assert (=> b!3592458 (=> (not res!1450592) (not e!2222874))))

(assert (=> b!3592458 (= res!1450592 (isEmpty!22258 (tail!5565 (list!13892 (charsOf!3594 (_1!21958 lt!1232391))))))))

(declare-fun b!3592459 () Bool)

(declare-fun e!2222872 () Bool)

(assert (=> b!3592459 (= e!2222872 e!2222873)))

(declare-fun res!1450591 () Bool)

(assert (=> b!3592459 (=> res!1450591 e!2222873)))

(assert (=> b!3592459 (= res!1450591 call!260015)))

(declare-fun b!3592460 () Bool)

(assert (=> b!3592460 (= e!2222877 e!2222872)))

(declare-fun res!1450593 () Bool)

(assert (=> b!3592460 (=> (not res!1450593) (not e!2222872))))

(assert (=> b!3592460 (= res!1450593 (not lt!1232703))))

(declare-fun b!3592461 () Bool)

(declare-fun res!1450594 () Bool)

(assert (=> b!3592461 (=> (not res!1450594) (not e!2222874))))

(assert (=> b!3592461 (= res!1450594 (not call!260015))))

(declare-fun b!3592462 () Bool)

(declare-fun res!1450589 () Bool)

(assert (=> b!3592462 (=> res!1450589 e!2222877)))

(assert (=> b!3592462 (= res!1450589 e!2222874)))

(declare-fun res!1450588 () Bool)

(assert (=> b!3592462 (=> (not res!1450588) (not e!2222874))))

(assert (=> b!3592462 (= res!1450588 lt!1232703)))

(declare-fun b!3592463 () Bool)

(assert (=> b!3592463 (= e!2222878 (not lt!1232703))))

(declare-fun b!3592464 () Bool)

(assert (=> b!3592464 (= e!2222876 (= lt!1232703 call!260015))))

(declare-fun b!3592465 () Bool)

(assert (=> b!3592465 (= e!2222873 (not (= (head!7506 (list!13892 (charsOf!3594 (_1!21958 lt!1232391)))) (c!621962 (regex!5580 lt!1232401)))))))

(assert (= (and d!1058995 c!622084) b!3592454))

(assert (= (and d!1058995 (not c!622084)) b!3592453))

(assert (= (and d!1058995 c!622082) b!3592464))

(assert (= (and d!1058995 (not c!622082)) b!3592455))

(assert (= (and b!3592455 c!622083) b!3592463))

(assert (= (and b!3592455 (not c!622083)) b!3592452))

(assert (= (and b!3592452 (not res!1450587)) b!3592462))

(assert (= (and b!3592462 res!1450588) b!3592461))

(assert (= (and b!3592461 res!1450594) b!3592458))

(assert (= (and b!3592458 res!1450592) b!3592457))

(assert (= (and b!3592462 (not res!1450589)) b!3592460))

(assert (= (and b!3592460 res!1450593) b!3592459))

(assert (= (and b!3592459 (not res!1450591)) b!3592456))

(assert (= (and b!3592456 (not res!1450590)) b!3592465))

(assert (= (or b!3592464 b!3592459 b!3592461) bm!260010))

(assert (=> b!3592453 m!4086007))

(declare-fun m!4086919 () Bool)

(assert (=> b!3592453 m!4086919))

(assert (=> b!3592453 m!4086919))

(declare-fun m!4086921 () Bool)

(assert (=> b!3592453 m!4086921))

(assert (=> b!3592453 m!4086007))

(declare-fun m!4086923 () Bool)

(assert (=> b!3592453 m!4086923))

(assert (=> b!3592453 m!4086921))

(assert (=> b!3592453 m!4086923))

(declare-fun m!4086925 () Bool)

(assert (=> b!3592453 m!4086925))

(assert (=> d!1058995 m!4086007))

(declare-fun m!4086927 () Bool)

(assert (=> d!1058995 m!4086927))

(declare-fun m!4086929 () Bool)

(assert (=> d!1058995 m!4086929))

(assert (=> b!3592457 m!4086007))

(assert (=> b!3592457 m!4086919))

(assert (=> bm!260010 m!4086007))

(assert (=> bm!260010 m!4086927))

(declare-fun m!4086931 () Bool)

(assert (=> b!3592454 m!4086931))

(assert (=> b!3592456 m!4086007))

(assert (=> b!3592456 m!4086923))

(assert (=> b!3592456 m!4086923))

(declare-fun m!4086933 () Bool)

(assert (=> b!3592456 m!4086933))

(assert (=> b!3592465 m!4086007))

(assert (=> b!3592465 m!4086919))

(assert (=> b!3592458 m!4086007))

(assert (=> b!3592458 m!4086923))

(assert (=> b!3592458 m!4086923))

(assert (=> b!3592458 m!4086933))

(assert (=> b!3591799 d!1058995))

(declare-fun d!1058997 () Bool)

(assert (=> d!1058997 (= (list!13892 (charsOf!3594 (_1!21958 lt!1232391))) (list!13896 (c!621963 (charsOf!3594 (_1!21958 lt!1232391)))))))

(declare-fun bs!570294 () Bool)

(assert (= bs!570294 d!1058997))

(declare-fun m!4086935 () Bool)

(assert (=> bs!570294 m!4086935))

(assert (=> b!3591799 d!1058997))

(assert (=> b!3591799 d!1058931))

(declare-fun d!1058999 () Bool)

(assert (=> d!1058999 (= (get!12191 lt!1232392) (v!37468 lt!1232392))))

(assert (=> b!3591799 d!1058999))

(declare-fun d!1059001 () Bool)

(declare-fun lt!1232704 () Bool)

(assert (=> d!1059001 (= lt!1232704 (select (content!5372 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2222880 () Bool)

(assert (=> d!1059001 (= lt!1232704 e!2222880)))

(declare-fun res!1450595 () Bool)

(assert (=> d!1059001 (=> (not res!1450595) (not e!2222880))))

(assert (=> d!1059001 (= res!1450595 ((_ is Cons!37765) rules!3307))))

(assert (=> d!1059001 (= (contains!7224 rules!3307 anOtherTypeRule!33) lt!1232704)))

(declare-fun b!3592466 () Bool)

(declare-fun e!2222879 () Bool)

(assert (=> b!3592466 (= e!2222880 e!2222879)))

(declare-fun res!1450596 () Bool)

(assert (=> b!3592466 (=> res!1450596 e!2222879)))

(assert (=> b!3592466 (= res!1450596 (= (h!43185 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3592467 () Bool)

(assert (=> b!3592467 (= e!2222879 (contains!7224 (t!291140 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1059001 res!1450595) b!3592466))

(assert (= (and b!3592466 (not res!1450596)) b!3592467))

(assert (=> d!1059001 m!4086247))

(declare-fun m!4086937 () Bool)

(assert (=> d!1059001 m!4086937))

(declare-fun m!4086939 () Bool)

(assert (=> b!3592467 m!4086939))

(assert (=> b!3591778 d!1059001))

(declare-fun d!1059003 () Bool)

(assert (=> d!1059003 (= (inv!51104 (tag!6254 (h!43185 rules!3307))) (= (mod (str.len (value!179489 (tag!6254 (h!43185 rules!3307)))) 2) 0))))

(assert (=> b!3591780 d!1059003))

(declare-fun d!1059005 () Bool)

(declare-fun res!1450597 () Bool)

(declare-fun e!2222881 () Bool)

(assert (=> d!1059005 (=> (not res!1450597) (not e!2222881))))

(assert (=> d!1059005 (= res!1450597 (semiInverseModEq!2365 (toChars!7723 (transformation!5580 (h!43185 rules!3307))) (toValue!7864 (transformation!5580 (h!43185 rules!3307)))))))

(assert (=> d!1059005 (= (inv!51107 (transformation!5580 (h!43185 rules!3307))) e!2222881)))

(declare-fun b!3592468 () Bool)

(assert (=> b!3592468 (= e!2222881 (equivClasses!2264 (toChars!7723 (transformation!5580 (h!43185 rules!3307))) (toValue!7864 (transformation!5580 (h!43185 rules!3307)))))))

(assert (= (and d!1059005 res!1450597) b!3592468))

(declare-fun m!4086941 () Bool)

(assert (=> d!1059005 m!4086941))

(declare-fun m!4086943 () Bool)

(assert (=> b!3592468 m!4086943))

(assert (=> b!3591780 d!1059005))

(declare-fun b!3592469 () Bool)

(declare-fun res!1450598 () Bool)

(declare-fun e!2222887 () Bool)

(assert (=> b!3592469 (=> res!1450598 e!2222887)))

(assert (=> b!3592469 (= res!1450598 (not ((_ is ElementMatch!10339) (regex!5580 rule!403))))))

(declare-fun e!2222888 () Bool)

(assert (=> b!3592469 (= e!2222888 e!2222887)))

(declare-fun bm!260011 () Bool)

(declare-fun call!260016 () Bool)

(assert (=> bm!260011 (= call!260016 (isEmpty!22258 lt!1232399))))

(declare-fun b!3592470 () Bool)

(declare-fun e!2222885 () Bool)

(assert (=> b!3592470 (= e!2222885 (matchR!4908 (derivativeStep!3116 (regex!5580 rule!403) (head!7506 lt!1232399)) (tail!5565 lt!1232399)))))

(declare-fun b!3592471 () Bool)

(assert (=> b!3592471 (= e!2222885 (nullable!3567 (regex!5580 rule!403)))))

(declare-fun d!1059007 () Bool)

(declare-fun e!2222886 () Bool)

(assert (=> d!1059007 e!2222886))

(declare-fun c!622085 () Bool)

(assert (=> d!1059007 (= c!622085 ((_ is EmptyExpr!10339) (regex!5580 rule!403)))))

(declare-fun lt!1232705 () Bool)

(assert (=> d!1059007 (= lt!1232705 e!2222885)))

(declare-fun c!622087 () Bool)

(assert (=> d!1059007 (= c!622087 (isEmpty!22258 lt!1232399))))

(assert (=> d!1059007 (validRegex!4723 (regex!5580 rule!403))))

(assert (=> d!1059007 (= (matchR!4908 (regex!5580 rule!403) lt!1232399) lt!1232705)))

(declare-fun b!3592472 () Bool)

(assert (=> b!3592472 (= e!2222886 e!2222888)))

(declare-fun c!622086 () Bool)

(assert (=> b!3592472 (= c!622086 ((_ is EmptyLang!10339) (regex!5580 rule!403)))))

(declare-fun b!3592473 () Bool)

(declare-fun res!1450601 () Bool)

(declare-fun e!2222883 () Bool)

(assert (=> b!3592473 (=> res!1450601 e!2222883)))

(assert (=> b!3592473 (= res!1450601 (not (isEmpty!22258 (tail!5565 lt!1232399))))))

(declare-fun b!3592474 () Bool)

(declare-fun e!2222884 () Bool)

(assert (=> b!3592474 (= e!2222884 (= (head!7506 lt!1232399) (c!621962 (regex!5580 rule!403))))))

(declare-fun b!3592475 () Bool)

(declare-fun res!1450603 () Bool)

(assert (=> b!3592475 (=> (not res!1450603) (not e!2222884))))

(assert (=> b!3592475 (= res!1450603 (isEmpty!22258 (tail!5565 lt!1232399)))))

(declare-fun b!3592476 () Bool)

(declare-fun e!2222882 () Bool)

(assert (=> b!3592476 (= e!2222882 e!2222883)))

(declare-fun res!1450602 () Bool)

(assert (=> b!3592476 (=> res!1450602 e!2222883)))

(assert (=> b!3592476 (= res!1450602 call!260016)))

(declare-fun b!3592477 () Bool)

(assert (=> b!3592477 (= e!2222887 e!2222882)))

(declare-fun res!1450604 () Bool)

(assert (=> b!3592477 (=> (not res!1450604) (not e!2222882))))

(assert (=> b!3592477 (= res!1450604 (not lt!1232705))))

(declare-fun b!3592478 () Bool)

(declare-fun res!1450605 () Bool)

(assert (=> b!3592478 (=> (not res!1450605) (not e!2222884))))

(assert (=> b!3592478 (= res!1450605 (not call!260016))))

(declare-fun b!3592479 () Bool)

(declare-fun res!1450600 () Bool)

(assert (=> b!3592479 (=> res!1450600 e!2222887)))

(assert (=> b!3592479 (= res!1450600 e!2222884)))

(declare-fun res!1450599 () Bool)

(assert (=> b!3592479 (=> (not res!1450599) (not e!2222884))))

(assert (=> b!3592479 (= res!1450599 lt!1232705)))

(declare-fun b!3592480 () Bool)

(assert (=> b!3592480 (= e!2222888 (not lt!1232705))))

(declare-fun b!3592481 () Bool)

(assert (=> b!3592481 (= e!2222886 (= lt!1232705 call!260016))))

(declare-fun b!3592482 () Bool)

(assert (=> b!3592482 (= e!2222883 (not (= (head!7506 lt!1232399) (c!621962 (regex!5580 rule!403)))))))

(assert (= (and d!1059007 c!622087) b!3592471))

(assert (= (and d!1059007 (not c!622087)) b!3592470))

(assert (= (and d!1059007 c!622085) b!3592481))

(assert (= (and d!1059007 (not c!622085)) b!3592472))

(assert (= (and b!3592472 c!622086) b!3592480))

(assert (= (and b!3592472 (not c!622086)) b!3592469))

(assert (= (and b!3592469 (not res!1450598)) b!3592479))

(assert (= (and b!3592479 res!1450599) b!3592478))

(assert (= (and b!3592478 res!1450605) b!3592475))

(assert (= (and b!3592475 res!1450603) b!3592474))

(assert (= (and b!3592479 (not res!1450600)) b!3592477))

(assert (= (and b!3592477 res!1450604) b!3592476))

(assert (= (and b!3592476 (not res!1450602)) b!3592473))

(assert (= (and b!3592473 (not res!1450601)) b!3592482))

(assert (= (or b!3592481 b!3592476 b!3592478) bm!260011))

(assert (=> b!3592470 m!4086819))

(assert (=> b!3592470 m!4086819))

(declare-fun m!4086945 () Bool)

(assert (=> b!3592470 m!4086945))

(assert (=> b!3592470 m!4086823))

(assert (=> b!3592470 m!4086945))

(assert (=> b!3592470 m!4086823))

(declare-fun m!4086947 () Bool)

(assert (=> b!3592470 m!4086947))

(declare-fun m!4086949 () Bool)

(assert (=> d!1059007 m!4086949))

(declare-fun m!4086951 () Bool)

(assert (=> d!1059007 m!4086951))

(assert (=> b!3592474 m!4086819))

(assert (=> bm!260011 m!4086949))

(declare-fun m!4086953 () Bool)

(assert (=> b!3592471 m!4086953))

(assert (=> b!3592473 m!4086823))

(assert (=> b!3592473 m!4086823))

(declare-fun m!4086955 () Bool)

(assert (=> b!3592473 m!4086955))

(assert (=> b!3592482 m!4086819))

(assert (=> b!3592475 m!4086823))

(assert (=> b!3592475 m!4086823))

(assert (=> b!3592475 m!4086955))

(assert (=> b!3591781 d!1059007))

(declare-fun d!1059009 () Bool)

(declare-fun res!1450610 () Bool)

(declare-fun e!2222891 () Bool)

(assert (=> d!1059009 (=> (not res!1450610) (not e!2222891))))

(assert (=> d!1059009 (= res!1450610 (validRegex!4723 (regex!5580 rule!403)))))

(assert (=> d!1059009 (= (ruleValid!1845 thiss!23823 rule!403) e!2222891)))

(declare-fun b!3592487 () Bool)

(declare-fun res!1450611 () Bool)

(assert (=> b!3592487 (=> (not res!1450611) (not e!2222891))))

(assert (=> b!3592487 (= res!1450611 (not (nullable!3567 (regex!5580 rule!403))))))

(declare-fun b!3592488 () Bool)

(assert (=> b!3592488 (= e!2222891 (not (= (tag!6254 rule!403) (String!42385 ""))))))

(assert (= (and d!1059009 res!1450610) b!3592487))

(assert (= (and b!3592487 res!1450611) b!3592488))

(assert (=> d!1059009 m!4086951))

(assert (=> b!3592487 m!4086953))

(assert (=> b!3591781 d!1059009))

(declare-fun d!1059011 () Bool)

(assert (=> d!1059011 (ruleValid!1845 thiss!23823 rule!403)))

(declare-fun lt!1232708 () Unit!53765)

(declare-fun choose!20906 (LexerInterface!5169 Rule!10960 List!37889) Unit!53765)

(assert (=> d!1059011 (= lt!1232708 (choose!20906 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1059011 (contains!7224 rules!3307 rule!403)))

(assert (=> d!1059011 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1000 thiss!23823 rule!403 rules!3307) lt!1232708)))

(declare-fun bs!570295 () Bool)

(assert (= bs!570295 d!1059011))

(assert (=> bs!570295 m!4086015))

(declare-fun m!4086957 () Bool)

(assert (=> bs!570295 m!4086957))

(assert (=> bs!570295 m!4086025))

(assert (=> b!3591781 d!1059011))

(declare-fun b!3592499 () Bool)

(declare-fun e!2222898 () Bool)

(declare-fun inv!15 (TokenValue!5810) Bool)

(assert (=> b!3592499 (= e!2222898 (inv!15 (value!179490 token!511)))))

(declare-fun b!3592500 () Bool)

(declare-fun e!2222900 () Bool)

(declare-fun inv!16 (TokenValue!5810) Bool)

(assert (=> b!3592500 (= e!2222900 (inv!16 (value!179490 token!511)))))

(declare-fun d!1059013 () Bool)

(declare-fun c!622092 () Bool)

(assert (=> d!1059013 (= c!622092 ((_ is IntegerValue!17430) (value!179490 token!511)))))

(assert (=> d!1059013 (= (inv!21 (value!179490 token!511)) e!2222900)))

(declare-fun b!3592501 () Bool)

(declare-fun res!1450614 () Bool)

(assert (=> b!3592501 (=> res!1450614 e!2222898)))

(assert (=> b!3592501 (= res!1450614 (not ((_ is IntegerValue!17432) (value!179490 token!511))))))

(declare-fun e!2222899 () Bool)

(assert (=> b!3592501 (= e!2222899 e!2222898)))

(declare-fun b!3592502 () Bool)

(assert (=> b!3592502 (= e!2222900 e!2222899)))

(declare-fun c!622093 () Bool)

(assert (=> b!3592502 (= c!622093 ((_ is IntegerValue!17431) (value!179490 token!511)))))

(declare-fun b!3592503 () Bool)

(declare-fun inv!17 (TokenValue!5810) Bool)

(assert (=> b!3592503 (= e!2222899 (inv!17 (value!179490 token!511)))))

(assert (= (and d!1059013 c!622092) b!3592500))

(assert (= (and d!1059013 (not c!622092)) b!3592502))

(assert (= (and b!3592502 c!622093) b!3592503))

(assert (= (and b!3592502 (not c!622093)) b!3592501))

(assert (= (and b!3592501 (not res!1450614)) b!3592499))

(declare-fun m!4086959 () Bool)

(assert (=> b!3592499 m!4086959))

(declare-fun m!4086961 () Bool)

(assert (=> b!3592500 m!4086961))

(declare-fun m!4086963 () Bool)

(assert (=> b!3592503 m!4086963))

(assert (=> b!3591782 d!1059013))

(declare-fun b!3592508 () Bool)

(declare-fun e!2222903 () Bool)

(declare-fun tp!1099485 () Bool)

(assert (=> b!3592508 (= e!2222903 (and tp_is_empty!17761 tp!1099485))))

(assert (=> b!3591794 (= tp!1099417 e!2222903)))

(assert (= (and b!3591794 ((_ is Cons!37763) (t!291138 suffix!1395))) b!3592508))

(declare-fun b!3592522 () Bool)

(declare-fun e!2222906 () Bool)

(declare-fun tp!1099497 () Bool)

(declare-fun tp!1099496 () Bool)

(assert (=> b!3592522 (= e!2222906 (and tp!1099497 tp!1099496))))

(declare-fun b!3592521 () Bool)

(declare-fun tp!1099499 () Bool)

(assert (=> b!3592521 (= e!2222906 tp!1099499)))

(declare-fun b!3592519 () Bool)

(assert (=> b!3592519 (= e!2222906 tp_is_empty!17761)))

(declare-fun b!3592520 () Bool)

(declare-fun tp!1099498 () Bool)

(declare-fun tp!1099500 () Bool)

(assert (=> b!3592520 (= e!2222906 (and tp!1099498 tp!1099500))))

(assert (=> b!3591795 (= tp!1099415 e!2222906)))

(assert (= (and b!3591795 ((_ is ElementMatch!10339) (regex!5580 anOtherTypeRule!33))) b!3592519))

(assert (= (and b!3591795 ((_ is Concat!16150) (regex!5580 anOtherTypeRule!33))) b!3592520))

(assert (= (and b!3591795 ((_ is Star!10339) (regex!5580 anOtherTypeRule!33))) b!3592521))

(assert (= (and b!3591795 ((_ is Union!10339) (regex!5580 anOtherTypeRule!33))) b!3592522))

(declare-fun b!3592533 () Bool)

(declare-fun b_free!92701 () Bool)

(declare-fun b_next!93405 () Bool)

(assert (=> b!3592533 (= b_free!92701 (not b_next!93405))))

(declare-fun tb!205125 () Bool)

(declare-fun t!291250 () Bool)

(assert (=> (and b!3592533 (= (toValue!7864 (transformation!5580 (h!43185 (t!291140 rules!3307)))) (toValue!7864 (transformation!5580 (rule!8298 (_1!21958 lt!1232391))))) t!291250) tb!205125))

(declare-fun result!250086 () Bool)

(assert (= result!250086 result!249968))

(assert (=> d!1058819 t!291250))

(declare-fun tb!205127 () Bool)

(declare-fun t!291252 () Bool)

(assert (=> (and b!3592533 (= (toValue!7864 (transformation!5580 (h!43185 (t!291140 rules!3307)))) (toValue!7864 (transformation!5580 (rule!8298 (_1!21958 lt!1232391))))) t!291252) tb!205127))

(declare-fun result!250088 () Bool)

(assert (= result!250088 result!249996))

(assert (=> d!1058855 t!291252))

(assert (=> d!1058911 t!291252))

(declare-fun t!291254 () Bool)

(declare-fun tb!205129 () Bool)

(assert (=> (and b!3592533 (= (toValue!7864 (transformation!5580 (h!43185 (t!291140 rules!3307)))) (toValue!7864 (transformation!5580 (rule!8298 (_1!21958 lt!1232391))))) t!291254) tb!205129))

(declare-fun result!250090 () Bool)

(assert (= result!250090 result!250014))

(assert (=> d!1058911 t!291254))

(assert (=> d!1058859 t!291252))

(declare-fun b_and!260015 () Bool)

(declare-fun tp!1099510 () Bool)

(assert (=> b!3592533 (= tp!1099510 (and (=> t!291252 result!250088) (=> t!291250 result!250086) (=> t!291254 result!250090) b_and!260015))))

(declare-fun b_free!92703 () Bool)

(declare-fun b_next!93407 () Bool)

(assert (=> b!3592533 (= b_free!92703 (not b_next!93407))))

(declare-fun tb!205131 () Bool)

(declare-fun t!291256 () Bool)

(assert (=> (and b!3592533 (= (toChars!7723 (transformation!5580 (h!43185 (t!291140 rules!3307)))) (toChars!7723 (transformation!5580 (rule!8298 (_1!21958 lt!1232391))))) t!291256) tb!205131))

(declare-fun result!250092 () Bool)

(assert (= result!250092 result!250004))

(assert (=> d!1058859 t!291256))

(declare-fun tb!205133 () Bool)

(declare-fun t!291258 () Bool)

(assert (=> (and b!3592533 (= (toChars!7723 (transformation!5580 (h!43185 (t!291140 rules!3307)))) (toChars!7723 (transformation!5580 (rule!8298 token!511)))) t!291258) tb!205133))

(declare-fun result!250094 () Bool)

(assert (= result!250094 result!250022))

(assert (=> b!3592239 t!291258))

(declare-fun t!291260 () Bool)

(declare-fun tb!205135 () Bool)

(assert (=> (and b!3592533 (= (toChars!7723 (transformation!5580 (h!43185 (t!291140 rules!3307)))) (toChars!7723 (transformation!5580 (rule!8298 (_1!21958 lt!1232391))))) t!291260) tb!205135))

(declare-fun result!250096 () Bool)

(assert (= result!250096 result!250030))

(assert (=> d!1058931 t!291260))

(assert (=> d!1058977 t!291258))

(declare-fun b_and!260017 () Bool)

(declare-fun tp!1099512 () Bool)

(assert (=> b!3592533 (= tp!1099512 (and (=> t!291256 result!250092) (=> t!291258 result!250094) (=> t!291260 result!250096) b_and!260017))))

(declare-fun e!2222918 () Bool)

(assert (=> b!3592533 (= e!2222918 (and tp!1099510 tp!1099512))))

(declare-fun e!2222917 () Bool)

(declare-fun tp!1099509 () Bool)

(declare-fun b!3592532 () Bool)

(assert (=> b!3592532 (= e!2222917 (and tp!1099509 (inv!51104 (tag!6254 (h!43185 (t!291140 rules!3307)))) (inv!51107 (transformation!5580 (h!43185 (t!291140 rules!3307)))) e!2222918))))

(declare-fun b!3592531 () Bool)

(declare-fun e!2222916 () Bool)

(declare-fun tp!1099511 () Bool)

(assert (=> b!3592531 (= e!2222916 (and e!2222917 tp!1099511))))

(assert (=> b!3591800 (= tp!1099418 e!2222916)))

(assert (= b!3592532 b!3592533))

(assert (= b!3592531 b!3592532))

(assert (= (and b!3591800 ((_ is Cons!37765) (t!291140 rules!3307))) b!3592531))

(declare-fun m!4086965 () Bool)

(assert (=> b!3592532 m!4086965))

(declare-fun m!4086967 () Bool)

(assert (=> b!3592532 m!4086967))

(declare-fun b!3592537 () Bool)

(declare-fun e!2222919 () Bool)

(declare-fun tp!1099514 () Bool)

(declare-fun tp!1099513 () Bool)

(assert (=> b!3592537 (= e!2222919 (and tp!1099514 tp!1099513))))

(declare-fun b!3592536 () Bool)

(declare-fun tp!1099516 () Bool)

(assert (=> b!3592536 (= e!2222919 tp!1099516)))

(declare-fun b!3592534 () Bool)

(assert (=> b!3592534 (= e!2222919 tp_is_empty!17761)))

(declare-fun b!3592535 () Bool)

(declare-fun tp!1099515 () Bool)

(declare-fun tp!1099517 () Bool)

(assert (=> b!3592535 (= e!2222919 (and tp!1099515 tp!1099517))))

(assert (=> b!3591780 (= tp!1099420 e!2222919)))

(assert (= (and b!3591780 ((_ is ElementMatch!10339) (regex!5580 (h!43185 rules!3307)))) b!3592534))

(assert (= (and b!3591780 ((_ is Concat!16150) (regex!5580 (h!43185 rules!3307)))) b!3592535))

(assert (= (and b!3591780 ((_ is Star!10339) (regex!5580 (h!43185 rules!3307)))) b!3592536))

(assert (= (and b!3591780 ((_ is Union!10339) (regex!5580 (h!43185 rules!3307)))) b!3592537))

(declare-fun b!3592541 () Bool)

(declare-fun e!2222920 () Bool)

(declare-fun tp!1099519 () Bool)

(declare-fun tp!1099518 () Bool)

(assert (=> b!3592541 (= e!2222920 (and tp!1099519 tp!1099518))))

(declare-fun b!3592540 () Bool)

(declare-fun tp!1099521 () Bool)

(assert (=> b!3592540 (= e!2222920 tp!1099521)))

(declare-fun b!3592538 () Bool)

(assert (=> b!3592538 (= e!2222920 tp_is_empty!17761)))

(declare-fun b!3592539 () Bool)

(declare-fun tp!1099520 () Bool)

(declare-fun tp!1099522 () Bool)

(assert (=> b!3592539 (= e!2222920 (and tp!1099520 tp!1099522))))

(assert (=> b!3591793 (= tp!1099426 e!2222920)))

(assert (= (and b!3591793 ((_ is ElementMatch!10339) (regex!5580 rule!403))) b!3592538))

(assert (= (and b!3591793 ((_ is Concat!16150) (regex!5580 rule!403))) b!3592539))

(assert (= (and b!3591793 ((_ is Star!10339) (regex!5580 rule!403))) b!3592540))

(assert (= (and b!3591793 ((_ is Union!10339) (regex!5580 rule!403))) b!3592541))

(declare-fun b!3592545 () Bool)

(declare-fun e!2222921 () Bool)

(declare-fun tp!1099524 () Bool)

(declare-fun tp!1099523 () Bool)

(assert (=> b!3592545 (= e!2222921 (and tp!1099524 tp!1099523))))

(declare-fun b!3592544 () Bool)

(declare-fun tp!1099526 () Bool)

(assert (=> b!3592544 (= e!2222921 tp!1099526)))

(declare-fun b!3592542 () Bool)

(assert (=> b!3592542 (= e!2222921 tp_is_empty!17761)))

(declare-fun b!3592543 () Bool)

(declare-fun tp!1099525 () Bool)

(declare-fun tp!1099527 () Bool)

(assert (=> b!3592543 (= e!2222921 (and tp!1099525 tp!1099527))))

(assert (=> b!3591798 (= tp!1099422 e!2222921)))

(assert (= (and b!3591798 ((_ is ElementMatch!10339) (regex!5580 (rule!8298 token!511)))) b!3592542))

(assert (= (and b!3591798 ((_ is Concat!16150) (regex!5580 (rule!8298 token!511)))) b!3592543))

(assert (= (and b!3591798 ((_ is Star!10339) (regex!5580 (rule!8298 token!511)))) b!3592544))

(assert (= (and b!3591798 ((_ is Union!10339) (regex!5580 (rule!8298 token!511)))) b!3592545))

(declare-fun b!3592546 () Bool)

(declare-fun e!2222922 () Bool)

(declare-fun tp!1099528 () Bool)

(assert (=> b!3592546 (= e!2222922 (and tp_is_empty!17761 tp!1099528))))

(assert (=> b!3591782 (= tp!1099412 e!2222922)))

(assert (= (and b!3591782 ((_ is Cons!37763) (originalCharacters!6294 token!511))) b!3592546))

(declare-fun b_lambda!106155 () Bool)

(assert (= b_lambda!106135 (or (and b!3591783 b_free!92691 (= (toChars!7723 (transformation!5580 (h!43185 rules!3307))) (toChars!7723 (transformation!5580 (rule!8298 token!511))))) (and b!3591779 b_free!92687 (= (toChars!7723 (transformation!5580 rule!403)) (toChars!7723 (transformation!5580 (rule!8298 token!511))))) (and b!3591785 b_free!92683 (= (toChars!7723 (transformation!5580 anOtherTypeRule!33)) (toChars!7723 (transformation!5580 (rule!8298 token!511))))) (and b!3591784 b_free!92695) (and b!3592533 b_free!92703 (= (toChars!7723 (transformation!5580 (h!43185 (t!291140 rules!3307)))) (toChars!7723 (transformation!5580 (rule!8298 token!511))))) b_lambda!106155)))

(declare-fun b_lambda!106157 () Bool)

(assert (= b_lambda!106153 (or (and b!3591783 b_free!92691 (= (toChars!7723 (transformation!5580 (h!43185 rules!3307))) (toChars!7723 (transformation!5580 (rule!8298 token!511))))) (and b!3591779 b_free!92687 (= (toChars!7723 (transformation!5580 rule!403)) (toChars!7723 (transformation!5580 (rule!8298 token!511))))) (and b!3591785 b_free!92683 (= (toChars!7723 (transformation!5580 anOtherTypeRule!33)) (toChars!7723 (transformation!5580 (rule!8298 token!511))))) (and b!3591784 b_free!92695) (and b!3592533 b_free!92703 (= (toChars!7723 (transformation!5580 (h!43185 (t!291140 rules!3307)))) (toChars!7723 (transformation!5580 (rule!8298 token!511))))) b_lambda!106157)))

(check-sat (not b!3592451) (not d!1058911) tp_is_empty!17761 (not b!3592457) (not bm!260005) (not b!3592404) (not b!3592402) (not b!3592537) (not b!3592365) (not tb!205081) (not bm!260007) (not b!3592522) (not b!3592399) (not d!1059001) (not b!3592329) (not b_lambda!106129) (not d!1058977) (not d!1058847) (not b!3592331) (not b_next!93387) (not b!3592031) (not b_lambda!106125) (not b!3592366) (not d!1058933) (not bm!259992) (not b!3592038) b_and!260017 (not b!3591949) (not b!3592244) (not b_next!93385) (not b!3592234) (not b!3592503) (not b_lambda!106133) (not b_next!93397) (not b!3592330) (not b!3592408) (not b!3592246) (not b_next!93389) (not b!3592453) (not b!3592364) (not b!3592045) (not d!1058987) (not b!3592470) (not d!1058817) (not b!3592473) (not b!3592532) (not b!3591942) (not d!1058961) (not d!1058935) (not b!3592543) b_and!259941 (not d!1059009) (not b!3591943) (not b!3592263) (not d!1059011) (not b!3592379) (not d!1058949) b_and!259939 (not b!3592245) (not b!3592416) (not b!3592220) (not tb!205065) (not b!3592454) (not b!3592442) (not d!1058821) (not d!1058921) (not d!1058995) (not b!3592407) (not b!3592231) (not b!3592405) (not b!3592036) (not b!3592368) (not d!1058953) (not d!1058965) (not d!1058929) (not b!3592545) (not b_lambda!106131) (not b!3592467) (not b!3592371) (not d!1058951) (not b!3592499) (not b!3592260) (not b!3592240) (not b!3592406) (not d!1058955) (not b_next!93393) (not b_next!93399) (not d!1058913) (not b!3592391) (not b!3592342) (not d!1058975) (not b_lambda!106137) (not b!3592032) (not b!3592456) b_and!259945 (not d!1058811) (not b!3592395) (not d!1058853) (not b!3592369) (not d!1058909) (not b_lambda!106155) (not b!3592403) (not d!1059005) (not b!3592264) (not b!3592482) (not b!3592410) (not b!3592487) (not bm!259989) b_and!260009 (not b!3592401) (not b!3592541) (not b!3592219) (not b!3592396) (not b!3592040) (not tb!205025) (not b!3592471) (not d!1058997) (not d!1058973) (not bm!260006) (not b!3592475) (not b!3592468) (not b!3592380) (not b!3592223) (not b!3592531) (not b!3592465) (not b!3592343) (not b!3592535) (not d!1058993) (not d!1059007) (not b!3592536) (not b!3592381) (not b!3592239) (not b!3592544) (not d!1058963) (not d!1058857) (not b!3592458) (not b!3592540) (not d!1058971) (not b!3592539) (not b!3592376) (not b!3592030) b_and!260011 (not b_next!93391) (not b!3591955) (not b!3592363) (not b!3592241) (not b!3592400) (not b!3592474) (not b_next!93405) (not d!1058931) b_and!260013 (not bm!260002) (not bm!260010) (not b_next!93407) (not b_lambda!106157) (not b!3592182) (not b_lambda!106119) (not b!3592035) (not b!3592500) (not d!1058859) (not b!3592392) (not b!3592508) (not d!1058919) (not b!3592520) (not b!3592377) b_and!259943 (not tb!205049) (not d!1058849) (not tb!205073) (not b!3592222) (not b!3592344) (not bm!260003) (not tb!205057) (not b!3592034) (not b!3592037) (not b_lambda!106127) (not bm!259993) (not d!1058981) (not d!1058957) b_and!260015 (not bm!260009) (not b!3592546) (not b!3592224) b_and!260007 (not b!3592521) (not d!1058925) (not b_next!93395) (not bm!260011) (not d!1058915) (not b!3592367))
(check-sat (not b_next!93387) b_and!259941 b_and!259939 b_and!259945 b_and!260009 b_and!259943 b_and!260015 b_and!260017 (not b_next!93385) (not b_next!93397) (not b_next!93389) (not b_next!93399) (not b_next!93393) b_and!260011 (not b_next!93391) (not b_next!93405) b_and!260013 (not b_next!93407) b_and!260007 (not b_next!93395))
