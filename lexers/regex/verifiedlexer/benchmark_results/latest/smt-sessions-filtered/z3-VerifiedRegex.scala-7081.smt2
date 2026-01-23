; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!375380 () Bool)

(assert start!375380)

(declare-fun b!3988738 () Bool)

(declare-fun b_free!110785 () Bool)

(declare-fun b_next!111489 () Bool)

(assert (=> b!3988738 (= b_free!110785 (not b_next!111489))))

(declare-fun tp!1215233 () Bool)

(declare-fun b_and!306495 () Bool)

(assert (=> b!3988738 (= tp!1215233 b_and!306495)))

(declare-fun b_free!110787 () Bool)

(declare-fun b_next!111491 () Bool)

(assert (=> b!3988738 (= b_free!110787 (not b_next!111491))))

(declare-fun tp!1215230 () Bool)

(declare-fun b_and!306497 () Bool)

(assert (=> b!3988738 (= tp!1215230 b_and!306497)))

(declare-fun b!3988748 () Bool)

(declare-fun b_free!110789 () Bool)

(declare-fun b_next!111493 () Bool)

(assert (=> b!3988748 (= b_free!110789 (not b_next!111493))))

(declare-fun tp!1215223 () Bool)

(declare-fun b_and!306499 () Bool)

(assert (=> b!3988748 (= tp!1215223 b_and!306499)))

(declare-fun b_free!110791 () Bool)

(declare-fun b_next!111495 () Bool)

(assert (=> b!3988748 (= b_free!110791 (not b_next!111495))))

(declare-fun tp!1215232 () Bool)

(declare-fun b_and!306501 () Bool)

(assert (=> b!3988748 (= tp!1215232 b_and!306501)))

(declare-fun b!3988728 () Bool)

(declare-fun e!2472515 () Bool)

(declare-fun e!2472525 () Bool)

(assert (=> b!3988728 (= e!2472515 e!2472525)))

(declare-fun res!1618319 () Bool)

(assert (=> b!3988728 (=> res!1618319 e!2472525)))

(declare-datatypes ((C!23496 0))(
  ( (C!23497 (val!13842 Int)) )
))
(declare-datatypes ((List!42786 0))(
  ( (Nil!42662) (Cons!42662 (h!48082 C!23496) (t!331681 List!42786)) )
))
(declare-fun lt!1405222 () List!42786)

(declare-fun lt!1405186 () List!42786)

(declare-fun isPrefix!3837 (List!42786 List!42786) Bool)

(assert (=> b!3988728 (= res!1618319 (not (isPrefix!3837 lt!1405222 lt!1405186)))))

(declare-fun prefix!494 () List!42786)

(assert (=> b!3988728 (isPrefix!3837 prefix!494 lt!1405186)))

(declare-datatypes ((Unit!61398 0))(
  ( (Unit!61399) )
))
(declare-fun lt!1405183 () Unit!61398)

(declare-fun suffix!1299 () List!42786)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2680 (List!42786 List!42786) Unit!61398)

(assert (=> b!3988728 (= lt!1405183 (lemmaConcatTwoListThenFirstIsPrefix!2680 prefix!494 suffix!1299))))

(declare-fun lt!1405228 () List!42786)

(assert (=> b!3988728 (isPrefix!3837 lt!1405222 lt!1405228)))

(declare-fun lt!1405235 () Unit!61398)

(declare-fun suffixResult!105 () List!42786)

(assert (=> b!3988728 (= lt!1405235 (lemmaConcatTwoListThenFirstIsPrefix!2680 lt!1405222 suffixResult!105))))

(declare-fun b!3988729 () Bool)

(declare-fun e!2472508 () Bool)

(declare-fun e!2472519 () Bool)

(declare-fun tp!1215227 () Bool)

(assert (=> b!3988729 (= e!2472508 (and e!2472519 tp!1215227))))

(declare-fun b!3988730 () Bool)

(declare-fun res!1618343 () Bool)

(declare-fun e!2472511 () Bool)

(assert (=> b!3988730 (=> (not res!1618343) (not e!2472511))))

(declare-datatypes ((IArray!25927 0))(
  ( (IArray!25928 (innerList!13021 List!42786)) )
))
(declare-datatypes ((Conc!12961 0))(
  ( (Node!12961 (left!32238 Conc!12961) (right!32568 Conc!12961) (csize!26152 Int) (cheight!13172 Int)) (Leaf!20043 (xs!16267 IArray!25927) (csize!26153 Int)) (Empty!12961) )
))
(declare-datatypes ((BalanceConc!25516 0))(
  ( (BalanceConc!25517 (c!690440 Conc!12961)) )
))
(declare-datatypes ((String!48617 0))(
  ( (String!48618 (value!212983 String)) )
))
(declare-datatypes ((List!42787 0))(
  ( (Nil!42663) (Cons!42663 (h!48083 (_ BitVec 16)) (t!331682 List!42787)) )
))
(declare-datatypes ((TokenValue!6980 0))(
  ( (FloatLiteralValue!13960 (text!49305 List!42787)) (TokenValueExt!6979 (__x!26177 Int)) (Broken!34900 (value!212984 List!42787)) (Object!7103) (End!6980) (Def!6980) (Underscore!6980) (Match!6980) (Else!6980) (Error!6980) (Case!6980) (If!6980) (Extends!6980) (Abstract!6980) (Class!6980) (Val!6980) (DelimiterValue!13960 (del!7040 List!42787)) (KeywordValue!6986 (value!212985 List!42787)) (CommentValue!13960 (value!212986 List!42787)) (WhitespaceValue!13960 (value!212987 List!42787)) (IndentationValue!6980 (value!212988 List!42787)) (String!48619) (Int32!6980) (Broken!34901 (value!212989 List!42787)) (Boolean!6981) (Unit!61400) (OperatorValue!6983 (op!7040 List!42787)) (IdentifierValue!13960 (value!212990 List!42787)) (IdentifierValue!13961 (value!212991 List!42787)) (WhitespaceValue!13961 (value!212992 List!42787)) (True!13960) (False!13960) (Broken!34902 (value!212993 List!42787)) (Broken!34903 (value!212994 List!42787)) (True!13961) (RightBrace!6980) (RightBracket!6980) (Colon!6980) (Null!6980) (Comma!6980) (LeftBracket!6980) (False!13961) (LeftBrace!6980) (ImaginaryLiteralValue!6980 (text!49306 List!42787)) (StringLiteralValue!20940 (value!212995 List!42787)) (EOFValue!6980 (value!212996 List!42787)) (IdentValue!6980 (value!212997 List!42787)) (DelimiterValue!13961 (value!212998 List!42787)) (DedentValue!6980 (value!212999 List!42787)) (NewLineValue!6980 (value!213000 List!42787)) (IntegerValue!20940 (value!213001 (_ BitVec 32)) (text!49307 List!42787)) (IntegerValue!20941 (value!213002 Int) (text!49308 List!42787)) (Times!6980) (Or!6980) (Equal!6980) (Minus!6980) (Broken!34904 (value!213003 List!42787)) (And!6980) (Div!6980) (LessEqual!6980) (Mod!6980) (Concat!18635) (Not!6980) (Plus!6980) (SpaceValue!6980 (value!213004 List!42787)) (IntegerValue!20942 (value!213005 Int) (text!49309 List!42787)) (StringLiteralValue!20941 (text!49310 List!42787)) (FloatLiteralValue!13961 (text!49311 List!42787)) (BytesLiteralValue!6980 (value!213006 List!42787)) (CommentValue!13961 (value!213007 List!42787)) (StringLiteralValue!20942 (value!213008 List!42787)) (ErrorTokenValue!6980 (msg!7041 List!42787)) )
))
(declare-datatypes ((Regex!11655 0))(
  ( (ElementMatch!11655 (c!690441 C!23496)) (Concat!18636 (regOne!23822 Regex!11655) (regTwo!23822 Regex!11655)) (EmptyExpr!11655) (Star!11655 (reg!11984 Regex!11655)) (EmptyLang!11655) (Union!11655 (regOne!23823 Regex!11655) (regTwo!23823 Regex!11655)) )
))
(declare-datatypes ((TokenValueInjection!13388 0))(
  ( (TokenValueInjection!13389 (toValue!9238 Int) (toChars!9097 Int)) )
))
(declare-datatypes ((Rule!13300 0))(
  ( (Rule!13301 (regex!6750 Regex!11655) (tag!7610 String!48617) (isSeparator!6750 Bool) (transformation!6750 TokenValueInjection!13388)) )
))
(declare-datatypes ((List!42788 0))(
  ( (Nil!42664) (Cons!42664 (h!48084 Rule!13300) (t!331683 List!42788)) )
))
(declare-fun rules!2999 () List!42788)

(declare-fun isEmpty!25498 (List!42788) Bool)

(assert (=> b!3988730 (= res!1618343 (not (isEmpty!25498 rules!2999)))))

(declare-fun b!3988731 () Bool)

(declare-fun e!2472497 () Bool)

(declare-fun e!2472521 () Bool)

(assert (=> b!3988731 (= e!2472497 e!2472521)))

(declare-fun res!1618325 () Bool)

(assert (=> b!3988731 (=> (not res!1618325) (not e!2472521))))

(declare-datatypes ((Token!12638 0))(
  ( (Token!12639 (value!213009 TokenValue!6980) (rule!9766 Rule!13300) (size!31908 Int) (originalCharacters!7350 List!42786)) )
))
(declare-datatypes ((tuple2!41868 0))(
  ( (tuple2!41869 (_1!24068 Token!12638) (_2!24068 List!42786)) )
))
(declare-datatypes ((Option!9164 0))(
  ( (None!9163) (Some!9163 (v!39519 tuple2!41868)) )
))
(declare-fun lt!1405178 () Option!9164)

(declare-datatypes ((LexerInterface!6339 0))(
  ( (LexerInterfaceExt!6336 (__x!26178 Int)) (Lexer!6337) )
))
(declare-fun thiss!21717 () LexerInterface!6339)

(declare-fun maxPrefix!3637 (LexerInterface!6339 List!42788 List!42786) Option!9164)

(assert (=> b!3988731 (= res!1618325 (= (maxPrefix!3637 thiss!21717 rules!2999 lt!1405186) lt!1405178))))

(declare-fun lt!1405214 () tuple2!41868)

(assert (=> b!3988731 (= lt!1405178 (Some!9163 lt!1405214))))

(declare-fun token!484 () Token!12638)

(assert (=> b!3988731 (= lt!1405214 (tuple2!41869 token!484 suffixResult!105))))

(declare-fun ++!11152 (List!42786 List!42786) List!42786)

(assert (=> b!3988731 (= lt!1405186 (++!11152 prefix!494 suffix!1299))))

(declare-fun b!3988732 () Bool)

(declare-fun e!2472522 () Bool)

(declare-fun tp_is_empty!20281 () Bool)

(declare-fun tp!1215225 () Bool)

(assert (=> b!3988732 (= e!2472522 (and tp_is_empty!20281 tp!1215225))))

(declare-fun b!3988733 () Bool)

(declare-fun e!2472498 () Bool)

(declare-fun tp!1215228 () Bool)

(declare-fun e!2472520 () Bool)

(declare-fun inv!21 (TokenValue!6980) Bool)

(assert (=> b!3988733 (= e!2472498 (and (inv!21 (value!213009 token!484)) e!2472520 tp!1215228))))

(declare-fun b!3988735 () Bool)

(declare-fun e!2472516 () Bool)

(declare-fun tp!1215222 () Bool)

(assert (=> b!3988735 (= e!2472516 (and tp_is_empty!20281 tp!1215222))))

(declare-fun b!3988736 () Bool)

(declare-fun res!1618318 () Bool)

(assert (=> b!3988736 (=> (not res!1618318) (not e!2472511))))

(declare-fun newSuffix!27 () List!42786)

(declare-fun size!31909 (List!42786) Int)

(assert (=> b!3988736 (= res!1618318 (>= (size!31909 suffix!1299) (size!31909 newSuffix!27)))))

(declare-fun b!3988737 () Bool)

(declare-fun res!1618336 () Bool)

(assert (=> b!3988737 (=> (not res!1618336) (not e!2472511))))

(declare-fun rulesInvariant!5682 (LexerInterface!6339 List!42788) Bool)

(assert (=> b!3988737 (= res!1618336 (rulesInvariant!5682 thiss!21717 rules!2999))))

(declare-fun e!2472501 () Bool)

(assert (=> b!3988738 (= e!2472501 (and tp!1215233 tp!1215230))))

(declare-fun b!3988739 () Bool)

(declare-fun res!1618330 () Bool)

(assert (=> b!3988739 (=> (not res!1618330) (not e!2472511))))

(assert (=> b!3988739 (= res!1618330 (isPrefix!3837 newSuffix!27 suffix!1299))))

(declare-fun b!3988740 () Bool)

(declare-fun e!2472505 () Unit!61398)

(declare-fun Unit!61401 () Unit!61398)

(assert (=> b!3988740 (= e!2472505 Unit!61401)))

(declare-fun lt!1405218 () List!42786)

(declare-fun lt!1405203 () List!42786)

(declare-fun lt!1405212 () Unit!61398)

(declare-fun lt!1405215 () Option!9164)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!404 (LexerInterface!6339 List!42788 Rule!13300 List!42786 List!42786 List!42786 Rule!13300) Unit!61398)

(assert (=> b!3988740 (= lt!1405212 (lemmaMaxPrefixOutputsMaxPrefix!404 thiss!21717 rules!2999 (rule!9766 (_1!24068 (v!39519 lt!1405215))) lt!1405218 lt!1405203 lt!1405222 (rule!9766 token!484)))))

(assert (=> b!3988740 false))

(declare-fun b!3988741 () Bool)

(declare-fun e!2472517 () Bool)

(assert (=> b!3988741 (= e!2472517 false)))

(declare-fun b!3988742 () Bool)

(declare-fun e!2472500 () Bool)

(declare-fun e!2472494 () Bool)

(assert (=> b!3988742 (= e!2472500 e!2472494)))

(declare-fun res!1618328 () Bool)

(assert (=> b!3988742 (=> res!1618328 e!2472494)))

(assert (=> b!3988742 (= res!1618328 (not (isPrefix!3837 lt!1405218 lt!1405186)))))

(declare-fun lt!1405229 () List!42786)

(assert (=> b!3988742 (isPrefix!3837 lt!1405218 lt!1405229)))

(declare-fun lt!1405194 () List!42786)

(declare-fun lt!1405216 () Unit!61398)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!670 (List!42786 List!42786 List!42786) Unit!61398)

(assert (=> b!3988742 (= lt!1405216 (lemmaPrefixStaysPrefixWhenAddingToSuffix!670 lt!1405218 lt!1405203 lt!1405194))))

(declare-fun b!3988743 () Bool)

(declare-fun res!1618333 () Bool)

(assert (=> b!3988743 (=> res!1618333 e!2472494)))

(declare-fun lt!1405202 () List!42786)

(assert (=> b!3988743 (= res!1618333 (not (= lt!1405202 lt!1405203)))))

(declare-fun b!3988744 () Bool)

(declare-fun e!2472514 () Bool)

(declare-fun e!2472495 () Bool)

(assert (=> b!3988744 (= e!2472514 e!2472495)))

(declare-fun res!1618332 () Bool)

(assert (=> b!3988744 (=> res!1618332 e!2472495)))

(get-info :version)

(assert (=> b!3988744 (= res!1618332 (not ((_ is Some!9163) lt!1405215)))))

(assert (=> b!3988744 (= lt!1405215 (maxPrefix!3637 thiss!21717 rules!2999 lt!1405203))))

(declare-fun lt!1405188 () Token!12638)

(declare-fun lt!1405238 () List!42786)

(assert (=> b!3988744 (and (= suffixResult!105 lt!1405238) (= lt!1405214 (tuple2!41869 lt!1405188 lt!1405238)))))

(declare-fun lt!1405226 () Unit!61398)

(declare-fun lemmaSamePrefixThenSameSuffix!2024 (List!42786 List!42786 List!42786 List!42786 List!42786) Unit!61398)

(assert (=> b!3988744 (= lt!1405226 (lemmaSamePrefixThenSameSuffix!2024 lt!1405222 suffixResult!105 lt!1405222 lt!1405238 lt!1405186))))

(declare-fun lt!1405223 () List!42786)

(assert (=> b!3988744 (isPrefix!3837 lt!1405222 lt!1405223)))

(declare-fun lt!1405205 () Unit!61398)

(assert (=> b!3988744 (= lt!1405205 (lemmaConcatTwoListThenFirstIsPrefix!2680 lt!1405222 lt!1405238))))

(declare-fun b!3988745 () Bool)

(declare-fun e!2472509 () Unit!61398)

(declare-fun Unit!61402 () Unit!61398)

(assert (=> b!3988745 (= e!2472509 Unit!61402)))

(declare-fun lt!1405211 () Unit!61398)

(assert (=> b!3988745 (= lt!1405211 (lemmaMaxPrefixOutputsMaxPrefix!404 thiss!21717 rules!2999 (rule!9766 token!484) lt!1405222 lt!1405186 lt!1405218 (rule!9766 (_1!24068 (v!39519 lt!1405215)))))))

(declare-fun res!1618324 () Bool)

(declare-fun matchR!5632 (Regex!11655 List!42786) Bool)

(assert (=> b!3988745 (= res!1618324 (not (matchR!5632 (regex!6750 (rule!9766 (_1!24068 (v!39519 lt!1405215)))) lt!1405218)))))

(assert (=> b!3988745 (=> (not res!1618324) (not e!2472517))))

(assert (=> b!3988745 e!2472517))

(declare-fun b!3988746 () Bool)

(declare-fun e!2472526 () Bool)

(declare-fun tp!1215229 () Bool)

(assert (=> b!3988746 (= e!2472526 (and tp_is_empty!20281 tp!1215229))))

(declare-fun b!3988747 () Bool)

(declare-fun e!2472513 () Bool)

(assert (=> b!3988747 (= e!2472494 e!2472513)))

(declare-fun res!1618341 () Bool)

(assert (=> b!3988747 (=> res!1618341 e!2472513)))

(declare-fun lt!1405213 () List!42786)

(assert (=> b!3988747 (= res!1618341 (not (= lt!1405213 lt!1405203)))))

(declare-fun lt!1405190 () List!42786)

(assert (=> b!3988747 (= lt!1405213 (++!11152 lt!1405218 lt!1405190))))

(declare-fun getSuffix!2268 (List!42786 List!42786) List!42786)

(assert (=> b!3988747 (= lt!1405190 (getSuffix!2268 lt!1405203 lt!1405218))))

(declare-fun e!2472496 () Bool)

(assert (=> b!3988748 (= e!2472496 (and tp!1215223 tp!1215232))))

(declare-fun b!3988749 () Bool)

(assert (=> b!3988749 (= e!2472521 (not e!2472515))))

(declare-fun res!1618334 () Bool)

(assert (=> b!3988749 (=> res!1618334 e!2472515)))

(assert (=> b!3988749 (= res!1618334 (not (= lt!1405228 lt!1405186)))))

(assert (=> b!3988749 (= lt!1405228 (++!11152 lt!1405222 suffixResult!105))))

(declare-fun lt!1405185 () Unit!61398)

(declare-fun lemmaInv!965 (TokenValueInjection!13388) Unit!61398)

(assert (=> b!3988749 (= lt!1405185 (lemmaInv!965 (transformation!6750 (rule!9766 token!484))))))

(declare-fun ruleValid!2682 (LexerInterface!6339 Rule!13300) Bool)

(assert (=> b!3988749 (ruleValid!2682 thiss!21717 (rule!9766 token!484))))

(declare-fun lt!1405236 () Unit!61398)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1756 (LexerInterface!6339 Rule!13300 List!42788) Unit!61398)

(assert (=> b!3988749 (= lt!1405236 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1756 thiss!21717 (rule!9766 token!484) rules!2999))))

(declare-fun b!3988750 () Bool)

(declare-fun res!1618317 () Bool)

(declare-fun e!2472491 () Bool)

(assert (=> b!3988750 (=> (not res!1618317) (not e!2472491))))

(assert (=> b!3988750 (= res!1618317 (= (size!31908 token!484) (size!31909 (originalCharacters!7350 token!484))))))

(declare-fun b!3988751 () Bool)

(declare-fun e!2472524 () Bool)

(assert (=> b!3988751 (= e!2472511 e!2472524)))

(declare-fun res!1618323 () Bool)

(assert (=> b!3988751 (=> (not res!1618323) (not e!2472524))))

(declare-fun lt!1405217 () Int)

(declare-fun lt!1405231 () Int)

(assert (=> b!3988751 (= res!1618323 (>= lt!1405217 lt!1405231))))

(assert (=> b!3988751 (= lt!1405231 (size!31909 lt!1405222))))

(assert (=> b!3988751 (= lt!1405217 (size!31909 prefix!494))))

(declare-fun list!15838 (BalanceConc!25516) List!42786)

(declare-fun charsOf!4566 (Token!12638) BalanceConc!25516)

(assert (=> b!3988751 (= lt!1405222 (list!15838 (charsOf!4566 token!484)))))

(declare-fun b!3988752 () Bool)

(declare-fun res!1618342 () Bool)

(declare-fun e!2472512 () Bool)

(assert (=> b!3988752 (=> res!1618342 e!2472512)))

(assert (=> b!3988752 (= res!1618342 (not (isPrefix!3837 lt!1405218 lt!1405203)))))

(declare-fun b!3988753 () Bool)

(declare-fun e!2472504 () Bool)

(declare-fun e!2472502 () Bool)

(assert (=> b!3988753 (= e!2472504 e!2472502)))

(declare-fun res!1618337 () Bool)

(assert (=> b!3988753 (=> res!1618337 e!2472502)))

(declare-fun lt!1405199 () Option!9164)

(assert (=> b!3988753 (= res!1618337 (not (= lt!1405199 lt!1405178)))))

(assert (=> b!3988753 (= lt!1405199 (Some!9163 (tuple2!41869 lt!1405188 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2671 (LexerInterface!6339 Rule!13300 List!42786) Option!9164)

(assert (=> b!3988753 (= lt!1405199 (maxPrefixOneRule!2671 thiss!21717 (rule!9766 token!484) lt!1405186))))

(declare-fun lt!1405195 () TokenValue!6980)

(assert (=> b!3988753 (= lt!1405188 (Token!12639 lt!1405195 (rule!9766 token!484) lt!1405231 lt!1405222))))

(declare-fun apply!9961 (TokenValueInjection!13388 BalanceConc!25516) TokenValue!6980)

(declare-fun seqFromList!4989 (List!42786) BalanceConc!25516)

(assert (=> b!3988753 (= lt!1405195 (apply!9961 (transformation!6750 (rule!9766 token!484)) (seqFromList!4989 lt!1405222)))))

(declare-fun lt!1405200 () Unit!61398)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1493 (LexerInterface!6339 List!42788 List!42786 List!42786 List!42786 Rule!13300) Unit!61398)

(assert (=> b!3988753 (= lt!1405200 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1493 thiss!21717 rules!2999 lt!1405222 lt!1405186 suffixResult!105 (rule!9766 token!484)))))

(declare-fun lt!1405233 () List!42786)

(assert (=> b!3988753 (= lt!1405233 suffixResult!105)))

(declare-fun lt!1405207 () Unit!61398)

(assert (=> b!3988753 (= lt!1405207 (lemmaSamePrefixThenSameSuffix!2024 lt!1405222 lt!1405233 lt!1405222 suffixResult!105 lt!1405186))))

(declare-fun lt!1405208 () List!42786)

(assert (=> b!3988753 (isPrefix!3837 lt!1405222 lt!1405208)))

(declare-fun lt!1405227 () Unit!61398)

(assert (=> b!3988753 (= lt!1405227 (lemmaConcatTwoListThenFirstIsPrefix!2680 lt!1405222 lt!1405233))))

(declare-fun b!3988754 () Bool)

(declare-fun e!2472510 () Bool)

(declare-fun e!2472492 () Bool)

(assert (=> b!3988754 (= e!2472510 e!2472492)))

(declare-fun res!1618344 () Bool)

(assert (=> b!3988754 (=> res!1618344 e!2472492)))

(declare-fun lt!1405198 () List!42786)

(assert (=> b!3988754 (= res!1618344 (not (= lt!1405198 suffix!1299)))))

(assert (=> b!3988754 (= lt!1405198 (++!11152 newSuffix!27 lt!1405194))))

(assert (=> b!3988754 (= lt!1405194 (getSuffix!2268 suffix!1299 newSuffix!27))))

(declare-fun b!3988755 () Bool)

(declare-fun e!2472507 () Bool)

(assert (=> b!3988755 (= e!2472507 e!2472514)))

(declare-fun res!1618326 () Bool)

(assert (=> b!3988755 (=> res!1618326 e!2472514)))

(assert (=> b!3988755 (= res!1618326 (not (= lt!1405223 lt!1405186)))))

(assert (=> b!3988755 (= lt!1405223 (++!11152 lt!1405222 lt!1405238))))

(assert (=> b!3988755 (= lt!1405238 (getSuffix!2268 lt!1405186 lt!1405222))))

(assert (=> b!3988755 e!2472491))

(declare-fun res!1618340 () Bool)

(assert (=> b!3988755 (=> (not res!1618340) (not e!2472491))))

(assert (=> b!3988755 (= res!1618340 (isPrefix!3837 lt!1405186 lt!1405186))))

(declare-fun lt!1405210 () Unit!61398)

(declare-fun lemmaIsPrefixRefl!2429 (List!42786 List!42786) Unit!61398)

(assert (=> b!3988755 (= lt!1405210 (lemmaIsPrefixRefl!2429 lt!1405186 lt!1405186))))

(declare-fun tp!1215231 () Bool)

(declare-fun b!3988756 () Bool)

(declare-fun inv!56981 (String!48617) Bool)

(declare-fun inv!56984 (TokenValueInjection!13388) Bool)

(assert (=> b!3988756 (= e!2472520 (and tp!1215231 (inv!56981 (tag!7610 (rule!9766 token!484))) (inv!56984 (transformation!6750 (rule!9766 token!484))) e!2472501))))

(declare-fun b!3988757 () Bool)

(declare-fun Unit!61403 () Unit!61398)

(assert (=> b!3988757 (= e!2472509 Unit!61403)))

(declare-fun b!3988758 () Bool)

(assert (=> b!3988758 (= e!2472524 e!2472497)))

(declare-fun res!1618327 () Bool)

(assert (=> b!3988758 (=> (not res!1618327) (not e!2472497))))

(declare-fun lt!1405225 () List!42786)

(assert (=> b!3988758 (= res!1618327 (= lt!1405225 lt!1405203))))

(assert (=> b!3988758 (= lt!1405203 (++!11152 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!42786)

(assert (=> b!3988758 (= lt!1405225 (++!11152 lt!1405222 newSuffixResult!27))))

(declare-fun b!3988759 () Bool)

(declare-fun res!1618339 () Bool)

(assert (=> b!3988759 (=> (not res!1618339) (not e!2472491))))

(assert (=> b!3988759 (= res!1618339 (= (value!213009 token!484) lt!1405195))))

(declare-fun b!3988760 () Bool)

(declare-fun e!2472493 () Bool)

(assert (=> b!3988760 (= e!2472493 e!2472504)))

(declare-fun res!1618321 () Bool)

(assert (=> b!3988760 (=> res!1618321 e!2472504)))

(declare-fun lt!1405237 () List!42786)

(assert (=> b!3988760 (= res!1618321 (or (not (= lt!1405186 lt!1405237)) (not (= lt!1405186 lt!1405208))))))

(assert (=> b!3988760 (= lt!1405237 lt!1405208)))

(assert (=> b!3988760 (= lt!1405208 (++!11152 lt!1405222 lt!1405233))))

(declare-fun lt!1405182 () List!42786)

(assert (=> b!3988760 (= lt!1405237 (++!11152 lt!1405182 suffix!1299))))

(declare-fun lt!1405221 () List!42786)

(assert (=> b!3988760 (= lt!1405233 (++!11152 lt!1405221 suffix!1299))))

(declare-fun lt!1405230 () Unit!61398)

(declare-fun lemmaConcatAssociativity!2472 (List!42786 List!42786 List!42786) Unit!61398)

(assert (=> b!3988760 (= lt!1405230 (lemmaConcatAssociativity!2472 lt!1405222 lt!1405221 suffix!1299))))

(declare-fun b!3988761 () Bool)

(assert (=> b!3988761 (= e!2472492 e!2472500)))

(declare-fun res!1618322 () Bool)

(assert (=> b!3988761 (=> res!1618322 e!2472500)))

(assert (=> b!3988761 (= res!1618322 (not (= lt!1405229 lt!1405186)))))

(assert (=> b!3988761 (= lt!1405229 (++!11152 prefix!494 lt!1405198))))

(assert (=> b!3988761 (= lt!1405229 (++!11152 lt!1405203 lt!1405194))))

(declare-fun lt!1405187 () Unit!61398)

(assert (=> b!3988761 (= lt!1405187 (lemmaConcatAssociativity!2472 prefix!494 newSuffix!27 lt!1405194))))

(declare-fun b!3988762 () Bool)

(declare-fun e!2472503 () Bool)

(declare-fun tp!1215234 () Bool)

(assert (=> b!3988762 (= e!2472503 (and tp_is_empty!20281 tp!1215234))))

(declare-fun b!3988763 () Bool)

(assert (=> b!3988763 (= e!2472502 e!2472507)))

(declare-fun res!1618331 () Bool)

(assert (=> b!3988763 (=> res!1618331 e!2472507)))

(assert (=> b!3988763 (= res!1618331 (not (matchR!5632 (regex!6750 (rule!9766 token!484)) lt!1405222)))))

(assert (=> b!3988763 (isPrefix!3837 lt!1405222 lt!1405203)))

(declare-fun lt!1405193 () Unit!61398)

(assert (=> b!3988763 (= lt!1405193 (lemmaPrefixStaysPrefixWhenAddingToSuffix!670 lt!1405222 prefix!494 newSuffix!27))))

(declare-fun lt!1405209 () Unit!61398)

(assert (=> b!3988763 (= lt!1405209 (lemmaPrefixStaysPrefixWhenAddingToSuffix!670 lt!1405222 prefix!494 suffix!1299))))

(declare-fun b!3988764 () Bool)

(declare-fun Unit!61404 () Unit!61398)

(assert (=> b!3988764 (= e!2472505 Unit!61404)))

(declare-fun b!3988765 () Bool)

(assert (=> b!3988765 (= e!2472491 (and (= (size!31908 token!484) lt!1405231) (= (originalCharacters!7350 token!484) lt!1405222)))))

(declare-fun b!3988766 () Bool)

(assert (=> b!3988766 (= e!2472513 e!2472512)))

(declare-fun res!1618329 () Bool)

(assert (=> b!3988766 (=> res!1618329 e!2472512)))

(declare-fun lt!1405181 () Int)

(assert (=> b!3988766 (= res!1618329 (not (= lt!1405231 lt!1405181)))))

(declare-fun lt!1405204 () Unit!61398)

(assert (=> b!3988766 (= lt!1405204 e!2472505)))

(declare-fun c!690439 () Bool)

(assert (=> b!3988766 (= c!690439 (< lt!1405181 lt!1405231))))

(declare-fun lt!1405184 () Unit!61398)

(assert (=> b!3988766 (= lt!1405184 e!2472509)))

(declare-fun c!690438 () Bool)

(assert (=> b!3988766 (= c!690438 (> lt!1405181 lt!1405231))))

(assert (=> b!3988766 (= (_2!24068 (v!39519 lt!1405215)) lt!1405190)))

(declare-fun lt!1405189 () Unit!61398)

(assert (=> b!3988766 (= lt!1405189 (lemmaSamePrefixThenSameSuffix!2024 lt!1405218 (_2!24068 (v!39519 lt!1405215)) lt!1405218 lt!1405190 lt!1405203))))

(assert (=> b!3988766 (isPrefix!3837 lt!1405218 lt!1405213)))

(declare-fun lt!1405232 () Unit!61398)

(assert (=> b!3988766 (= lt!1405232 (lemmaConcatTwoListThenFirstIsPrefix!2680 lt!1405218 lt!1405190))))

(declare-fun b!3988767 () Bool)

(assert (=> b!3988767 (= e!2472525 e!2472493)))

(declare-fun res!1618338 () Bool)

(assert (=> b!3988767 (=> res!1618338 e!2472493)))

(assert (=> b!3988767 (= res!1618338 (not (= lt!1405182 prefix!494)))))

(assert (=> b!3988767 (= lt!1405182 (++!11152 lt!1405222 lt!1405221))))

(assert (=> b!3988767 (= lt!1405221 (getSuffix!2268 prefix!494 lt!1405222))))

(assert (=> b!3988767 (isPrefix!3837 lt!1405222 prefix!494)))

(declare-fun lt!1405180 () Unit!61398)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!415 (List!42786 List!42786 List!42786) Unit!61398)

(assert (=> b!3988767 (= lt!1405180 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!415 prefix!494 lt!1405222 lt!1405186))))

(declare-fun b!3988768 () Bool)

(assert (=> b!3988768 (= e!2472512 true)))

(declare-fun lt!1405179 () Int)

(declare-fun getIndex!520 (List!42788 Rule!13300) Int)

(assert (=> b!3988768 (= lt!1405179 (getIndex!520 rules!2999 (rule!9766 token!484)))))

(declare-fun lt!1405196 () Int)

(assert (=> b!3988768 (= lt!1405196 (getIndex!520 rules!2999 (rule!9766 (_1!24068 (v!39519 lt!1405215)))))))

(assert (=> b!3988768 (= (_2!24068 (v!39519 lt!1405215)) newSuffixResult!27)))

(declare-fun lt!1405220 () Unit!61398)

(assert (=> b!3988768 (= lt!1405220 (lemmaSamePrefixThenSameSuffix!2024 lt!1405218 (_2!24068 (v!39519 lt!1405215)) lt!1405222 newSuffixResult!27 lt!1405203))))

(assert (=> b!3988768 (= lt!1405218 lt!1405222)))

(declare-fun lt!1405191 () Unit!61398)

(declare-fun lemmaIsPrefixSameLengthThenSameList!859 (List!42786 List!42786 List!42786) Unit!61398)

(assert (=> b!3988768 (= lt!1405191 (lemmaIsPrefixSameLengthThenSameList!859 lt!1405218 lt!1405222 lt!1405203))))

(declare-fun res!1618335 () Bool)

(assert (=> start!375380 (=> (not res!1618335) (not e!2472511))))

(assert (=> start!375380 (= res!1618335 ((_ is Lexer!6337) thiss!21717))))

(assert (=> start!375380 e!2472511))

(assert (=> start!375380 e!2472516))

(declare-fun inv!56985 (Token!12638) Bool)

(assert (=> start!375380 (and (inv!56985 token!484) e!2472498)))

(assert (=> start!375380 e!2472526))

(assert (=> start!375380 e!2472503))

(assert (=> start!375380 e!2472522))

(assert (=> start!375380 true))

(assert (=> start!375380 e!2472508))

(declare-fun e!2472499 () Bool)

(assert (=> start!375380 e!2472499))

(declare-fun b!3988734 () Bool)

(declare-fun tp!1215224 () Bool)

(assert (=> b!3988734 (= e!2472519 (and tp!1215224 (inv!56981 (tag!7610 (h!48084 rules!2999))) (inv!56984 (transformation!6750 (h!48084 rules!2999))) e!2472496))))

(declare-fun b!3988769 () Bool)

(assert (=> b!3988769 (= e!2472495 e!2472510)))

(declare-fun res!1618320 () Bool)

(assert (=> b!3988769 (=> res!1618320 e!2472510)))

(declare-fun lt!1405224 () Option!9164)

(assert (=> b!3988769 (= res!1618320 (not (= lt!1405224 (Some!9163 (v!39519 lt!1405215)))))))

(assert (=> b!3988769 (isPrefix!3837 lt!1405218 (++!11152 lt!1405218 newSuffixResult!27))))

(declare-fun lt!1405192 () Unit!61398)

(assert (=> b!3988769 (= lt!1405192 (lemmaConcatTwoListThenFirstIsPrefix!2680 lt!1405218 newSuffixResult!27))))

(assert (=> b!3988769 (isPrefix!3837 lt!1405218 lt!1405202)))

(assert (=> b!3988769 (= lt!1405202 (++!11152 lt!1405218 (_2!24068 (v!39519 lt!1405215))))))

(declare-fun lt!1405219 () Unit!61398)

(assert (=> b!3988769 (= lt!1405219 (lemmaConcatTwoListThenFirstIsPrefix!2680 lt!1405218 (_2!24068 (v!39519 lt!1405215))))))

(declare-fun lt!1405197 () TokenValue!6980)

(assert (=> b!3988769 (= lt!1405224 (Some!9163 (tuple2!41869 (Token!12639 lt!1405197 (rule!9766 (_1!24068 (v!39519 lt!1405215))) lt!1405181 lt!1405218) (_2!24068 (v!39519 lt!1405215)))))))

(assert (=> b!3988769 (= lt!1405224 (maxPrefixOneRule!2671 thiss!21717 (rule!9766 (_1!24068 (v!39519 lt!1405215))) lt!1405203))))

(assert (=> b!3988769 (= lt!1405181 (size!31909 lt!1405218))))

(assert (=> b!3988769 (= lt!1405197 (apply!9961 (transformation!6750 (rule!9766 (_1!24068 (v!39519 lt!1405215)))) (seqFromList!4989 lt!1405218)))))

(declare-fun lt!1405206 () Unit!61398)

(assert (=> b!3988769 (= lt!1405206 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1493 thiss!21717 rules!2999 lt!1405218 lt!1405203 (_2!24068 (v!39519 lt!1405215)) (rule!9766 (_1!24068 (v!39519 lt!1405215)))))))

(assert (=> b!3988769 (= lt!1405218 (list!15838 (charsOf!4566 (_1!24068 (v!39519 lt!1405215)))))))

(declare-fun lt!1405234 () Unit!61398)

(assert (=> b!3988769 (= lt!1405234 (lemmaInv!965 (transformation!6750 (rule!9766 (_1!24068 (v!39519 lt!1405215))))))))

(assert (=> b!3988769 (ruleValid!2682 thiss!21717 (rule!9766 (_1!24068 (v!39519 lt!1405215))))))

(declare-fun lt!1405201 () Unit!61398)

(assert (=> b!3988769 (= lt!1405201 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1756 thiss!21717 (rule!9766 (_1!24068 (v!39519 lt!1405215))) rules!2999))))

(declare-fun lt!1405177 () Unit!61398)

(declare-fun lemmaCharactersSize!1345 (Token!12638) Unit!61398)

(assert (=> b!3988769 (= lt!1405177 (lemmaCharactersSize!1345 token!484))))

(declare-fun lt!1405239 () Unit!61398)

(assert (=> b!3988769 (= lt!1405239 (lemmaCharactersSize!1345 (_1!24068 (v!39519 lt!1405215))))))

(declare-fun b!3988770 () Bool)

(declare-fun tp!1215226 () Bool)

(assert (=> b!3988770 (= e!2472499 (and tp_is_empty!20281 tp!1215226))))

(assert (= (and start!375380 res!1618335) b!3988730))

(assert (= (and b!3988730 res!1618343) b!3988737))

(assert (= (and b!3988737 res!1618336) b!3988736))

(assert (= (and b!3988736 res!1618318) b!3988739))

(assert (= (and b!3988739 res!1618330) b!3988751))

(assert (= (and b!3988751 res!1618323) b!3988758))

(assert (= (and b!3988758 res!1618327) b!3988731))

(assert (= (and b!3988731 res!1618325) b!3988749))

(assert (= (and b!3988749 (not res!1618334)) b!3988728))

(assert (= (and b!3988728 (not res!1618319)) b!3988767))

(assert (= (and b!3988767 (not res!1618338)) b!3988760))

(assert (= (and b!3988760 (not res!1618321)) b!3988753))

(assert (= (and b!3988753 (not res!1618337)) b!3988763))

(assert (= (and b!3988763 (not res!1618331)) b!3988755))

(assert (= (and b!3988755 res!1618340) b!3988759))

(assert (= (and b!3988759 res!1618339) b!3988750))

(assert (= (and b!3988750 res!1618317) b!3988765))

(assert (= (and b!3988755 (not res!1618326)) b!3988744))

(assert (= (and b!3988744 (not res!1618332)) b!3988769))

(assert (= (and b!3988769 (not res!1618320)) b!3988754))

(assert (= (and b!3988754 (not res!1618344)) b!3988761))

(assert (= (and b!3988761 (not res!1618322)) b!3988742))

(assert (= (and b!3988742 (not res!1618328)) b!3988743))

(assert (= (and b!3988743 (not res!1618333)) b!3988747))

(assert (= (and b!3988747 (not res!1618341)) b!3988766))

(assert (= (and b!3988766 c!690438) b!3988745))

(assert (= (and b!3988766 (not c!690438)) b!3988757))

(assert (= (and b!3988745 res!1618324) b!3988741))

(assert (= (and b!3988766 c!690439) b!3988740))

(assert (= (and b!3988766 (not c!690439)) b!3988764))

(assert (= (and b!3988766 (not res!1618329)) b!3988752))

(assert (= (and b!3988752 (not res!1618342)) b!3988768))

(assert (= (and start!375380 ((_ is Cons!42662) prefix!494)) b!3988735))

(assert (= b!3988756 b!3988738))

(assert (= b!3988733 b!3988756))

(assert (= start!375380 b!3988733))

(assert (= (and start!375380 ((_ is Cons!42662) suffixResult!105)) b!3988746))

(assert (= (and start!375380 ((_ is Cons!42662) suffix!1299)) b!3988762))

(assert (= (and start!375380 ((_ is Cons!42662) newSuffix!27)) b!3988732))

(assert (= b!3988734 b!3988748))

(assert (= b!3988729 b!3988734))

(assert (= (and start!375380 ((_ is Cons!42664) rules!2999)) b!3988729))

(assert (= (and start!375380 ((_ is Cons!42662) newSuffixResult!27)) b!3988770))

(declare-fun m!4566187 () Bool)

(assert (=> b!3988750 m!4566187))

(declare-fun m!4566189 () Bool)

(assert (=> b!3988766 m!4566189))

(declare-fun m!4566191 () Bool)

(assert (=> b!3988766 m!4566191))

(declare-fun m!4566193 () Bool)

(assert (=> b!3988766 m!4566193))

(declare-fun m!4566195 () Bool)

(assert (=> start!375380 m!4566195))

(declare-fun m!4566197 () Bool)

(assert (=> b!3988749 m!4566197))

(declare-fun m!4566199 () Bool)

(assert (=> b!3988749 m!4566199))

(declare-fun m!4566201 () Bool)

(assert (=> b!3988749 m!4566201))

(declare-fun m!4566203 () Bool)

(assert (=> b!3988749 m!4566203))

(declare-fun m!4566205 () Bool)

(assert (=> b!3988753 m!4566205))

(declare-fun m!4566207 () Bool)

(assert (=> b!3988753 m!4566207))

(declare-fun m!4566209 () Bool)

(assert (=> b!3988753 m!4566209))

(declare-fun m!4566211 () Bool)

(assert (=> b!3988753 m!4566211))

(declare-fun m!4566213 () Bool)

(assert (=> b!3988753 m!4566213))

(declare-fun m!4566215 () Bool)

(assert (=> b!3988753 m!4566215))

(assert (=> b!3988753 m!4566211))

(declare-fun m!4566217 () Bool)

(assert (=> b!3988753 m!4566217))

(declare-fun m!4566219 () Bool)

(assert (=> b!3988768 m!4566219))

(declare-fun m!4566221 () Bool)

(assert (=> b!3988768 m!4566221))

(declare-fun m!4566223 () Bool)

(assert (=> b!3988768 m!4566223))

(declare-fun m!4566225 () Bool)

(assert (=> b!3988768 m!4566225))

(declare-fun m!4566227 () Bool)

(assert (=> b!3988730 m!4566227))

(declare-fun m!4566229 () Bool)

(assert (=> b!3988733 m!4566229))

(declare-fun m!4566231 () Bool)

(assert (=> b!3988728 m!4566231))

(declare-fun m!4566233 () Bool)

(assert (=> b!3988728 m!4566233))

(declare-fun m!4566235 () Bool)

(assert (=> b!3988728 m!4566235))

(declare-fun m!4566237 () Bool)

(assert (=> b!3988728 m!4566237))

(declare-fun m!4566239 () Bool)

(assert (=> b!3988728 m!4566239))

(declare-fun m!4566241 () Bool)

(assert (=> b!3988769 m!4566241))

(declare-fun m!4566243 () Bool)

(assert (=> b!3988769 m!4566243))

(declare-fun m!4566245 () Bool)

(assert (=> b!3988769 m!4566245))

(declare-fun m!4566247 () Bool)

(assert (=> b!3988769 m!4566247))

(declare-fun m!4566249 () Bool)

(assert (=> b!3988769 m!4566249))

(declare-fun m!4566251 () Bool)

(assert (=> b!3988769 m!4566251))

(declare-fun m!4566253 () Bool)

(assert (=> b!3988769 m!4566253))

(declare-fun m!4566255 () Bool)

(assert (=> b!3988769 m!4566255))

(assert (=> b!3988769 m!4566241))

(declare-fun m!4566257 () Bool)

(assert (=> b!3988769 m!4566257))

(declare-fun m!4566259 () Bool)

(assert (=> b!3988769 m!4566259))

(assert (=> b!3988769 m!4566251))

(declare-fun m!4566261 () Bool)

(assert (=> b!3988769 m!4566261))

(declare-fun m!4566263 () Bool)

(assert (=> b!3988769 m!4566263))

(declare-fun m!4566265 () Bool)

(assert (=> b!3988769 m!4566265))

(declare-fun m!4566267 () Bool)

(assert (=> b!3988769 m!4566267))

(declare-fun m!4566269 () Bool)

(assert (=> b!3988769 m!4566269))

(declare-fun m!4566271 () Bool)

(assert (=> b!3988769 m!4566271))

(declare-fun m!4566273 () Bool)

(assert (=> b!3988769 m!4566273))

(assert (=> b!3988769 m!4566269))

(declare-fun m!4566275 () Bool)

(assert (=> b!3988769 m!4566275))

(declare-fun m!4566277 () Bool)

(assert (=> b!3988761 m!4566277))

(declare-fun m!4566279 () Bool)

(assert (=> b!3988761 m!4566279))

(declare-fun m!4566281 () Bool)

(assert (=> b!3988761 m!4566281))

(declare-fun m!4566283 () Bool)

(assert (=> b!3988754 m!4566283))

(declare-fun m!4566285 () Bool)

(assert (=> b!3988754 m!4566285))

(declare-fun m!4566287 () Bool)

(assert (=> b!3988745 m!4566287))

(declare-fun m!4566289 () Bool)

(assert (=> b!3988745 m!4566289))

(declare-fun m!4566291 () Bool)

(assert (=> b!3988755 m!4566291))

(declare-fun m!4566293 () Bool)

(assert (=> b!3988755 m!4566293))

(declare-fun m!4566295 () Bool)

(assert (=> b!3988755 m!4566295))

(declare-fun m!4566297 () Bool)

(assert (=> b!3988755 m!4566297))

(declare-fun m!4566299 () Bool)

(assert (=> b!3988756 m!4566299))

(declare-fun m!4566301 () Bool)

(assert (=> b!3988756 m!4566301))

(declare-fun m!4566303 () Bool)

(assert (=> b!3988767 m!4566303))

(declare-fun m!4566305 () Bool)

(assert (=> b!3988767 m!4566305))

(declare-fun m!4566307 () Bool)

(assert (=> b!3988767 m!4566307))

(declare-fun m!4566309 () Bool)

(assert (=> b!3988767 m!4566309))

(declare-fun m!4566311 () Bool)

(assert (=> b!3988737 m!4566311))

(declare-fun m!4566313 () Bool)

(assert (=> b!3988739 m!4566313))

(declare-fun m!4566315 () Bool)

(assert (=> b!3988744 m!4566315))

(declare-fun m!4566317 () Bool)

(assert (=> b!3988744 m!4566317))

(declare-fun m!4566319 () Bool)

(assert (=> b!3988744 m!4566319))

(declare-fun m!4566321 () Bool)

(assert (=> b!3988744 m!4566321))

(declare-fun m!4566323 () Bool)

(assert (=> b!3988740 m!4566323))

(declare-fun m!4566325 () Bool)

(assert (=> b!3988751 m!4566325))

(declare-fun m!4566327 () Bool)

(assert (=> b!3988751 m!4566327))

(declare-fun m!4566329 () Bool)

(assert (=> b!3988751 m!4566329))

(assert (=> b!3988751 m!4566329))

(declare-fun m!4566331 () Bool)

(assert (=> b!3988751 m!4566331))

(declare-fun m!4566333 () Bool)

(assert (=> b!3988760 m!4566333))

(declare-fun m!4566335 () Bool)

(assert (=> b!3988760 m!4566335))

(declare-fun m!4566337 () Bool)

(assert (=> b!3988760 m!4566337))

(declare-fun m!4566339 () Bool)

(assert (=> b!3988760 m!4566339))

(declare-fun m!4566341 () Bool)

(assert (=> b!3988752 m!4566341))

(declare-fun m!4566343 () Bool)

(assert (=> b!3988763 m!4566343))

(declare-fun m!4566345 () Bool)

(assert (=> b!3988763 m!4566345))

(declare-fun m!4566347 () Bool)

(assert (=> b!3988763 m!4566347))

(declare-fun m!4566349 () Bool)

(assert (=> b!3988763 m!4566349))

(declare-fun m!4566351 () Bool)

(assert (=> b!3988758 m!4566351))

(declare-fun m!4566353 () Bool)

(assert (=> b!3988758 m!4566353))

(declare-fun m!4566355 () Bool)

(assert (=> b!3988742 m!4566355))

(declare-fun m!4566357 () Bool)

(assert (=> b!3988742 m!4566357))

(declare-fun m!4566359 () Bool)

(assert (=> b!3988742 m!4566359))

(declare-fun m!4566361 () Bool)

(assert (=> b!3988734 m!4566361))

(declare-fun m!4566363 () Bool)

(assert (=> b!3988734 m!4566363))

(declare-fun m!4566365 () Bool)

(assert (=> b!3988736 m!4566365))

(declare-fun m!4566367 () Bool)

(assert (=> b!3988736 m!4566367))

(declare-fun m!4566369 () Bool)

(assert (=> b!3988747 m!4566369))

(declare-fun m!4566371 () Bool)

(assert (=> b!3988747 m!4566371))

(declare-fun m!4566373 () Bool)

(assert (=> b!3988731 m!4566373))

(declare-fun m!4566375 () Bool)

(assert (=> b!3988731 m!4566375))

(check-sat (not b!3988763) b_and!306501 (not b!3988737) (not b!3988736) b_and!306497 (not b!3988740) b_and!306495 (not b_next!111493) (not b!3988754) (not b!3988729) (not b!3988762) (not b!3988745) (not b!3988755) (not b!3988734) (not b!3988749) (not b!3988758) (not b!3988742) (not b!3988732) (not b!3988747) (not b!3988761) (not b!3988770) (not b!3988739) (not b!3988733) (not b!3988766) (not b!3988753) (not b!3988746) (not b!3988756) (not b!3988744) (not b_next!111491) (not b!3988730) (not b!3988769) (not b!3988750) (not b!3988728) (not b!3988760) (not b_next!111489) b_and!306499 (not start!375380) (not b!3988731) (not b_next!111495) (not b!3988767) (not b!3988735) (not b!3988768) (not b!3988751) (not b!3988752) tp_is_empty!20281)
(check-sat b_and!306501 b_and!306497 (not b_next!111491) b_and!306495 (not b_next!111493) (not b_next!111495) (not b_next!111489) b_and!306499)
