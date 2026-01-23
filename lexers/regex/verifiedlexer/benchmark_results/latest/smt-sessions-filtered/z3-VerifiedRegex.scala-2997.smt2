; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!179426 () Bool)

(assert start!179426)

(declare-fun b!1814295 () Bool)

(declare-fun b_free!49999 () Bool)

(declare-fun b_next!50703 () Bool)

(assert (=> b!1814295 (= b_free!49999 (not b_next!50703))))

(declare-fun tp!512364 () Bool)

(declare-fun b_and!140247 () Bool)

(assert (=> b!1814295 (= tp!512364 b_and!140247)))

(declare-fun b_free!50001 () Bool)

(declare-fun b_next!50705 () Bool)

(assert (=> b!1814295 (= b_free!50001 (not b_next!50705))))

(declare-fun tp!512366 () Bool)

(declare-fun b_and!140249 () Bool)

(assert (=> b!1814295 (= tp!512366 b_and!140249)))

(declare-fun b!1814293 () Bool)

(declare-fun b_free!50003 () Bool)

(declare-fun b_next!50707 () Bool)

(assert (=> b!1814293 (= b_free!50003 (not b_next!50707))))

(declare-fun tp!512359 () Bool)

(declare-fun b_and!140251 () Bool)

(assert (=> b!1814293 (= tp!512359 b_and!140251)))

(declare-fun b_free!50005 () Bool)

(declare-fun b_next!50709 () Bool)

(assert (=> b!1814293 (= b_free!50005 (not b_next!50709))))

(declare-fun tp!512367 () Bool)

(declare-fun b_and!140253 () Bool)

(assert (=> b!1814293 (= tp!512367 b_and!140253)))

(declare-fun b!1814321 () Bool)

(declare-fun b_free!50007 () Bool)

(declare-fun b_next!50711 () Bool)

(assert (=> b!1814321 (= b_free!50007 (not b_next!50711))))

(declare-fun tp!512365 () Bool)

(declare-fun b_and!140255 () Bool)

(assert (=> b!1814321 (= tp!512365 b_and!140255)))

(declare-fun b_free!50009 () Bool)

(declare-fun b_next!50713 () Bool)

(assert (=> b!1814321 (= b_free!50009 (not b_next!50713))))

(declare-fun tp!512369 () Bool)

(declare-fun b_and!140257 () Bool)

(assert (=> b!1814321 (= tp!512369 b_and!140257)))

(declare-fun b!1814336 () Bool)

(declare-fun e!1159097 () Bool)

(assert (=> b!1814336 (= e!1159097 true)))

(declare-fun b!1814335 () Bool)

(declare-fun e!1159096 () Bool)

(assert (=> b!1814335 (= e!1159096 e!1159097)))

(declare-fun b!1814334 () Bool)

(declare-fun e!1159095 () Bool)

(assert (=> b!1814334 (= e!1159095 e!1159096)))

(declare-fun b!1814319 () Bool)

(assert (=> b!1814319 e!1159095))

(assert (= b!1814335 b!1814336))

(assert (= b!1814334 b!1814335))

(assert (= b!1814319 b!1814334))

(declare-fun order!12929 () Int)

(declare-fun order!12927 () Int)

(declare-fun lambda!71042 () Int)

(declare-datatypes ((List!19863 0))(
  ( (Nil!19793) (Cons!19793 (h!25194 (_ BitVec 16)) (t!169400 List!19863)) )
))
(declare-datatypes ((TokenValue!3645 0))(
  ( (FloatLiteralValue!7290 (text!25960 List!19863)) (TokenValueExt!3644 (__x!12592 Int)) (Broken!18225 (value!110964 List!19863)) (Object!3714) (End!3645) (Def!3645) (Underscore!3645) (Match!3645) (Else!3645) (Error!3645) (Case!3645) (If!3645) (Extends!3645) (Abstract!3645) (Class!3645) (Val!3645) (DelimiterValue!7290 (del!3705 List!19863)) (KeywordValue!3651 (value!110965 List!19863)) (CommentValue!7290 (value!110966 List!19863)) (WhitespaceValue!7290 (value!110967 List!19863)) (IndentationValue!3645 (value!110968 List!19863)) (String!22556) (Int32!3645) (Broken!18226 (value!110969 List!19863)) (Boolean!3646) (Unit!34446) (OperatorValue!3648 (op!3705 List!19863)) (IdentifierValue!7290 (value!110970 List!19863)) (IdentifierValue!7291 (value!110971 List!19863)) (WhitespaceValue!7291 (value!110972 List!19863)) (True!7290) (False!7290) (Broken!18227 (value!110973 List!19863)) (Broken!18228 (value!110974 List!19863)) (True!7291) (RightBrace!3645) (RightBracket!3645) (Colon!3645) (Null!3645) (Comma!3645) (LeftBracket!3645) (False!7291) (LeftBrace!3645) (ImaginaryLiteralValue!3645 (text!25961 List!19863)) (StringLiteralValue!10935 (value!110975 List!19863)) (EOFValue!3645 (value!110976 List!19863)) (IdentValue!3645 (value!110977 List!19863)) (DelimiterValue!7291 (value!110978 List!19863)) (DedentValue!3645 (value!110979 List!19863)) (NewLineValue!3645 (value!110980 List!19863)) (IntegerValue!10935 (value!110981 (_ BitVec 32)) (text!25962 List!19863)) (IntegerValue!10936 (value!110982 Int) (text!25963 List!19863)) (Times!3645) (Or!3645) (Equal!3645) (Minus!3645) (Broken!18229 (value!110983 List!19863)) (And!3645) (Div!3645) (LessEqual!3645) (Mod!3645) (Concat!8528) (Not!3645) (Plus!3645) (SpaceValue!3645 (value!110984 List!19863)) (IntegerValue!10937 (value!110985 Int) (text!25964 List!19863)) (StringLiteralValue!10936 (text!25965 List!19863)) (FloatLiteralValue!7291 (text!25966 List!19863)) (BytesLiteralValue!3645 (value!110986 List!19863)) (CommentValue!7291 (value!110987 List!19863)) (StringLiteralValue!10937 (value!110988 List!19863)) (ErrorTokenValue!3645 (msg!3706 List!19863)) )
))
(declare-datatypes ((C!9940 0))(
  ( (C!9941 (val!5566 Int)) )
))
(declare-datatypes ((List!19864 0))(
  ( (Nil!19794) (Cons!19794 (h!25195 C!9940) (t!169401 List!19864)) )
))
(declare-datatypes ((Regex!4883 0))(
  ( (ElementMatch!4883 (c!296356 C!9940)) (Concat!8529 (regOne!10278 Regex!4883) (regTwo!10278 Regex!4883)) (EmptyExpr!4883) (Star!4883 (reg!5212 Regex!4883)) (EmptyLang!4883) (Union!4883 (regOne!10279 Regex!4883) (regTwo!10279 Regex!4883)) )
))
(declare-datatypes ((String!22557 0))(
  ( (String!22558 (value!110989 String)) )
))
(declare-datatypes ((IArray!13175 0))(
  ( (IArray!13176 (innerList!6645 List!19864)) )
))
(declare-datatypes ((Conc!6585 0))(
  ( (Node!6585 (left!15884 Conc!6585) (right!16214 Conc!6585) (csize!13400 Int) (cheight!6796 Int)) (Leaf!9583 (xs!9461 IArray!13175) (csize!13401 Int)) (Empty!6585) )
))
(declare-datatypes ((BalanceConc!13114 0))(
  ( (BalanceConc!13115 (c!296357 Conc!6585)) )
))
(declare-datatypes ((TokenValueInjection!6950 0))(
  ( (TokenValueInjection!6951 (toValue!5086 Int) (toChars!4945 Int)) )
))
(declare-datatypes ((Rule!6910 0))(
  ( (Rule!6911 (regex!3555 Regex!4883) (tag!3967 String!22557) (isSeparator!3555 Bool) (transformation!3555 TokenValueInjection!6950)) )
))
(declare-datatypes ((Token!6676 0))(
  ( (Token!6677 (value!110990 TokenValue!3645) (rule!5665 Rule!6910) (size!15736 Int) (originalCharacters!4369 List!19864)) )
))
(declare-datatypes ((tuple2!19374 0))(
  ( (tuple2!19375 (_1!11089 Token!6676) (_2!11089 List!19864)) )
))
(declare-fun lt!704927 () tuple2!19374)

(declare-fun dynLambda!9855 (Int Int) Int)

(declare-fun dynLambda!9856 (Int Int) Int)

(assert (=> b!1814336 (< (dynLambda!9855 order!12927 (toValue!5086 (transformation!3555 (rule!5665 (_1!11089 lt!704927))))) (dynLambda!9856 order!12929 lambda!71042))))

(declare-fun order!12931 () Int)

(declare-fun dynLambda!9857 (Int Int) Int)

(assert (=> b!1814336 (< (dynLambda!9857 order!12931 (toChars!4945 (transformation!3555 (rule!5665 (_1!11089 lt!704927))))) (dynLambda!9856 order!12929 lambda!71042))))

(declare-fun b!1814283 () Bool)

(declare-fun res!815699 () Bool)

(declare-fun e!1159061 () Bool)

(assert (=> b!1814283 (=> (not res!815699) (not e!1159061))))

(declare-fun lt!704895 () tuple2!19374)

(declare-fun isEmpty!12526 (List!19864) Bool)

(assert (=> b!1814283 (= res!815699 (isEmpty!12526 (_2!11089 lt!704895)))))

(declare-fun b!1814284 () Bool)

(declare-fun res!815702 () Bool)

(assert (=> b!1814284 (=> (not res!815702) (not e!1159061))))

(declare-fun token!523 () Token!6676)

(declare-fun rule!422 () Rule!6910)

(assert (=> b!1814284 (= res!815702 (= (rule!5665 token!523) rule!422))))

(declare-fun b!1814285 () Bool)

(declare-fun e!1159086 () Bool)

(assert (=> b!1814285 (= e!1159061 (not e!1159086))))

(declare-fun res!815690 () Bool)

(assert (=> b!1814285 (=> res!815690 e!1159086)))

(declare-fun lt!704912 () List!19864)

(declare-fun matchR!2356 (Regex!4883 List!19864) Bool)

(assert (=> b!1814285 (= res!815690 (not (matchR!2356 (regex!3555 rule!422) lt!704912)))))

(declare-datatypes ((LexerInterface!3184 0))(
  ( (LexerInterfaceExt!3181 (__x!12593 Int)) (Lexer!3182) )
))
(declare-fun thiss!24550 () LexerInterface!3184)

(declare-fun ruleValid!1053 (LexerInterface!3184 Rule!6910) Bool)

(assert (=> b!1814285 (ruleValid!1053 thiss!24550 rule!422)))

(declare-datatypes ((List!19865 0))(
  ( (Nil!19795) (Cons!19795 (h!25196 Rule!6910) (t!169402 List!19865)) )
))
(declare-fun rules!3447 () List!19865)

(declare-datatypes ((Unit!34447 0))(
  ( (Unit!34448) )
))
(declare-fun lt!704923 () Unit!34447)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!576 (LexerInterface!3184 Rule!6910 List!19865) Unit!34447)

(assert (=> b!1814285 (= lt!704923 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!576 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1814286 () Bool)

(declare-fun res!815698 () Bool)

(declare-fun e!1159079 () Bool)

(assert (=> b!1814286 (=> (not res!815698) (not e!1159079))))

(declare-fun isEmpty!12527 (List!19865) Bool)

(assert (=> b!1814286 (= res!815698 (not (isEmpty!12527 rules!3447)))))

(declare-fun b!1814287 () Bool)

(declare-fun tp!512360 () Bool)

(declare-fun e!1159062 () Bool)

(declare-fun e!1159067 () Bool)

(declare-fun inv!21 (TokenValue!3645) Bool)

(assert (=> b!1814287 (= e!1159067 (and (inv!21 (value!110990 token!523)) e!1159062 tp!512360))))

(declare-fun b!1814288 () Bool)

(declare-fun e!1159082 () Bool)

(declare-fun e!1159056 () Bool)

(assert (=> b!1814288 (= e!1159082 e!1159056)))

(declare-fun res!815703 () Bool)

(assert (=> b!1814288 (=> res!815703 e!1159056)))

(assert (=> b!1814288 (= res!815703 (= (rule!5665 (_1!11089 lt!704927)) (rule!5665 token!523)))))

(declare-fun suffix!1421 () List!19864)

(assert (=> b!1814288 (= suffix!1421 (_2!11089 lt!704927))))

(declare-fun lt!704910 () List!19864)

(declare-fun lt!704929 () Unit!34447)

(declare-fun lemmaSamePrefixThenSameSuffix!906 (List!19864 List!19864 List!19864 List!19864 List!19864) Unit!34447)

(assert (=> b!1814288 (= lt!704929 (lemmaSamePrefixThenSameSuffix!906 lt!704912 suffix!1421 lt!704912 (_2!11089 lt!704927) lt!704910))))

(declare-fun lt!704905 () List!19864)

(assert (=> b!1814288 (= lt!704905 lt!704912)))

(declare-fun lt!704932 () Unit!34447)

(declare-fun lemmaIsPrefixSameLengthThenSameList!291 (List!19864 List!19864 List!19864) Unit!34447)

(assert (=> b!1814288 (= lt!704932 (lemmaIsPrefixSameLengthThenSameList!291 lt!704905 lt!704912 lt!704910))))

(declare-fun b!1814289 () Bool)

(declare-fun res!815701 () Bool)

(declare-fun e!1159074 () Bool)

(assert (=> b!1814289 (=> res!815701 e!1159074)))

(assert (=> b!1814289 (= res!815701 (not (matchR!2356 (regex!3555 (rule!5665 (_1!11089 lt!704927))) lt!704905)))))

(declare-fun b!1814290 () Bool)

(declare-fun e!1159072 () Bool)

(declare-fun lt!704896 () Rule!6910)

(assert (=> b!1814290 (= e!1159072 (= (rule!5665 (_1!11089 lt!704927)) lt!704896))))

(declare-fun tp!512368 () Bool)

(declare-fun e!1159083 () Bool)

(declare-fun b!1814292 () Bool)

(declare-fun inv!25803 (String!22557) Bool)

(declare-fun inv!25808 (TokenValueInjection!6950) Bool)

(assert (=> b!1814292 (= e!1159062 (and tp!512368 (inv!25803 (tag!3967 (rule!5665 token!523))) (inv!25808 (transformation!3555 (rule!5665 token!523))) e!1159083))))

(assert (=> b!1814293 (= e!1159083 (and tp!512359 tp!512367))))

(declare-fun b!1814294 () Bool)

(declare-fun e!1159065 () Bool)

(assert (=> b!1814294 (= e!1159065 false)))

(declare-fun e!1159076 () Bool)

(assert (=> b!1814295 (= e!1159076 (and tp!512364 tp!512366))))

(declare-fun b!1814296 () Bool)

(declare-fun e!1159055 () Unit!34447)

(declare-fun Unit!34449 () Unit!34447)

(assert (=> b!1814296 (= e!1159055 Unit!34449)))

(declare-fun b!1814297 () Bool)

(declare-fun e!1159085 () Bool)

(assert (=> b!1814297 (= e!1159085 e!1159061)))

(declare-fun res!815689 () Bool)

(assert (=> b!1814297 (=> (not res!815689) (not e!1159061))))

(assert (=> b!1814297 (= res!815689 (= (_1!11089 lt!704895) token!523))))

(declare-datatypes ((Option!4136 0))(
  ( (None!4135) (Some!4135 (v!25656 tuple2!19374)) )
))
(declare-fun lt!704934 () Option!4136)

(declare-fun get!6129 (Option!4136) tuple2!19374)

(assert (=> b!1814297 (= lt!704895 (get!6129 lt!704934))))

(declare-fun b!1814298 () Bool)

(declare-fun e!1159057 () Unit!34447)

(declare-fun Unit!34450 () Unit!34447)

(assert (=> b!1814298 (= e!1159057 Unit!34450)))

(declare-fun b!1814299 () Bool)

(declare-fun Unit!34451 () Unit!34447)

(assert (=> b!1814299 (= e!1159055 Unit!34451)))

(declare-fun lt!704926 () Unit!34447)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!262 (LexerInterface!3184 List!19865 List!19864 Token!6676 Rule!6910 List!19864) Unit!34447)

(assert (=> b!1814299 (= lt!704926 (lemmaMaxPrefixThenMatchesRulesRegex!262 thiss!24550 rules!3447 lt!704910 (_1!11089 lt!704927) (rule!5665 (_1!11089 lt!704927)) (_2!11089 lt!704927)))))

(declare-fun lt!704885 () Regex!4883)

(assert (=> b!1814299 (matchR!2356 lt!704885 lt!704905)))

(declare-fun lt!704907 () List!19864)

(declare-fun getSuffix!962 (List!19864 List!19864) List!19864)

(assert (=> b!1814299 (= lt!704907 (getSuffix!962 lt!704910 lt!704912))))

(declare-fun lt!704911 () Unit!34447)

(assert (=> b!1814299 (= lt!704911 (lemmaSamePrefixThenSameSuffix!906 lt!704912 suffix!1421 lt!704912 lt!704907 lt!704910))))

(assert (=> b!1814299 (= suffix!1421 lt!704907)))

(declare-fun lt!704933 () Unit!34447)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!331 (List!19864 List!19864) Unit!34447)

(assert (=> b!1814299 (= lt!704933 (lemmaAddHeadSuffixToPrefixStillPrefix!331 lt!704912 lt!704910))))

(declare-fun isPrefix!1795 (List!19864 List!19864) Bool)

(declare-fun ++!5385 (List!19864 List!19864) List!19864)

(declare-fun head!4220 (List!19864) C!9940)

(assert (=> b!1814299 (isPrefix!1795 (++!5385 lt!704912 (Cons!19794 (head!4220 lt!704907) Nil!19794)) lt!704910)))

(declare-fun lt!704916 () Unit!34447)

(declare-fun lt!704893 () List!19864)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!203 (List!19864 List!19864 List!19864) Unit!34447)

(assert (=> b!1814299 (= lt!704916 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!203 lt!704905 lt!704893 lt!704910))))

(assert (=> b!1814299 (isPrefix!1795 lt!704893 lt!704905)))

(declare-fun lt!704894 () Unit!34447)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!194 (Regex!4883 List!19864 List!19864) Unit!34447)

(assert (=> b!1814299 (= lt!704894 (lemmaNotPrefixMatchThenCannotMatchLonger!194 lt!704885 lt!704893 lt!704905))))

(assert (=> b!1814299 false))

(declare-fun b!1814300 () Bool)

(declare-fun res!815700 () Bool)

(assert (=> b!1814300 (=> res!815700 e!1159086)))

(assert (=> b!1814300 (= res!815700 (isEmpty!12526 suffix!1421))))

(declare-fun b!1814301 () Bool)

(declare-fun e!1159064 () Bool)

(assert (=> b!1814301 (= e!1159064 e!1159074)))

(declare-fun res!815708 () Bool)

(assert (=> b!1814301 (=> res!815708 e!1159074)))

(assert (=> b!1814301 (= res!815708 (not (isPrefix!1795 lt!704905 lt!704910)))))

(assert (=> b!1814301 (isPrefix!1795 lt!704905 (++!5385 lt!704905 (_2!11089 lt!704927)))))

(declare-fun lt!704925 () Unit!34447)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1304 (List!19864 List!19864) Unit!34447)

(assert (=> b!1814301 (= lt!704925 (lemmaConcatTwoListThenFirstIsPrefix!1304 lt!704905 (_2!11089 lt!704927)))))

(declare-fun lt!704900 () BalanceConc!13114)

(declare-fun list!8059 (BalanceConc!13114) List!19864)

(assert (=> b!1814301 (= lt!704905 (list!8059 lt!704900))))

(declare-fun charsOf!2204 (Token!6676) BalanceConc!13114)

(assert (=> b!1814301 (= lt!704900 (charsOf!2204 (_1!11089 lt!704927)))))

(declare-fun e!1159081 () Bool)

(assert (=> b!1814301 e!1159081))

(declare-fun res!815684 () Bool)

(assert (=> b!1814301 (=> (not res!815684) (not e!1159081))))

(declare-datatypes ((Option!4137 0))(
  ( (None!4136) (Some!4136 (v!25657 Rule!6910)) )
))
(declare-fun lt!704888 () Option!4137)

(declare-fun isDefined!3477 (Option!4137) Bool)

(assert (=> b!1814301 (= res!815684 (isDefined!3477 lt!704888))))

(declare-fun getRuleFromTag!603 (LexerInterface!3184 List!19865 String!22557) Option!4137)

(assert (=> b!1814301 (= lt!704888 (getRuleFromTag!603 thiss!24550 rules!3447 (tag!3967 (rule!5665 (_1!11089 lt!704927)))))))

(declare-fun lt!704908 () Unit!34447)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!603 (LexerInterface!3184 List!19865 List!19864 Token!6676) Unit!34447)

(assert (=> b!1814301 (= lt!704908 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!603 thiss!24550 rules!3447 lt!704910 (_1!11089 lt!704927)))))

(declare-fun lt!704909 () Option!4136)

(assert (=> b!1814301 (= lt!704927 (get!6129 lt!704909))))

(declare-fun lt!704903 () Unit!34447)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!706 (LexerInterface!3184 List!19865 List!19864 List!19864) Unit!34447)

(assert (=> b!1814301 (= lt!704903 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!706 thiss!24550 rules!3447 lt!704912 suffix!1421))))

(declare-fun maxPrefix!1738 (LexerInterface!3184 List!19865 List!19864) Option!4136)

(assert (=> b!1814301 (= lt!704909 (maxPrefix!1738 thiss!24550 rules!3447 lt!704910))))

(assert (=> b!1814301 (isPrefix!1795 lt!704912 lt!704910)))

(declare-fun lt!704887 () Unit!34447)

(assert (=> b!1814301 (= lt!704887 (lemmaConcatTwoListThenFirstIsPrefix!1304 lt!704912 suffix!1421))))

(assert (=> b!1814301 (= lt!704910 (++!5385 lt!704912 suffix!1421))))

(declare-fun b!1814302 () Bool)

(declare-fun e!1159088 () Bool)

(assert (=> b!1814302 (= e!1159088 true)))

(assert (=> b!1814302 false))

(declare-fun lt!704889 () Unit!34447)

(declare-fun lemmaSameIndexThenSameElement!112 (List!19865 Rule!6910 Rule!6910) Unit!34447)

(assert (=> b!1814302 (= lt!704889 (lemmaSameIndexThenSameElement!112 rules!3447 (rule!5665 (_1!11089 lt!704927)) (rule!5665 token!523)))))

(declare-fun b!1814303 () Bool)

(declare-fun e!1159078 () Bool)

(declare-fun e!1159063 () Bool)

(assert (=> b!1814303 (= e!1159078 e!1159063)))

(declare-fun res!815683 () Bool)

(assert (=> b!1814303 (=> res!815683 e!1159063)))

(declare-fun lt!704884 () Int)

(declare-fun lt!704915 () TokenValue!3645)

(assert (=> b!1814303 (= res!815683 (not (= lt!704909 (Some!4135 (tuple2!19375 (Token!6677 lt!704915 (rule!5665 (_1!11089 lt!704927)) lt!704884 lt!704905) (_2!11089 lt!704927))))))))

(declare-fun size!15737 (BalanceConc!13114) Int)

(assert (=> b!1814303 (= lt!704884 (size!15737 lt!704900))))

(declare-fun apply!5355 (TokenValueInjection!6950 BalanceConc!13114) TokenValue!3645)

(assert (=> b!1814303 (= lt!704915 (apply!5355 (transformation!3555 (rule!5665 (_1!11089 lt!704927))) lt!704900))))

(declare-fun lt!704902 () Unit!34447)

(declare-fun lemmaCharactersSize!613 (Token!6676) Unit!34447)

(assert (=> b!1814303 (= lt!704902 (lemmaCharactersSize!613 (_1!11089 lt!704927)))))

(declare-fun lt!704891 () Unit!34447)

(declare-fun lemmaEqSameImage!466 (TokenValueInjection!6950 BalanceConc!13114 BalanceConc!13114) Unit!34447)

(declare-fun seqFromList!2524 (List!19864) BalanceConc!13114)

(assert (=> b!1814303 (= lt!704891 (lemmaEqSameImage!466 (transformation!3555 (rule!5665 (_1!11089 lt!704927))) lt!704900 (seqFromList!2524 (originalCharacters!4369 (_1!11089 lt!704927)))))))

(declare-fun b!1814304 () Bool)

(declare-fun Unit!34452 () Unit!34447)

(assert (=> b!1814304 (= e!1159057 Unit!34452)))

(declare-fun lt!704914 () Unit!34447)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!264 (LexerInterface!3184 List!19865 Rule!6910 List!19864 List!19864 List!19864 Rule!6910) Unit!34447)

(assert (=> b!1814304 (= lt!704914 (lemmaMaxPrefixOutputsMaxPrefix!264 thiss!24550 rules!3447 (rule!5665 (_1!11089 lt!704927)) lt!704905 lt!704910 lt!704912 rule!422))))

(assert (=> b!1814304 false))

(declare-fun b!1814305 () Bool)

(declare-fun e!1159087 () Bool)

(assert (=> b!1814305 (= e!1159087 false)))

(declare-fun e!1159084 () Bool)

(declare-fun tp!512362 () Bool)

(declare-fun b!1814306 () Bool)

(declare-fun e!1159070 () Bool)

(assert (=> b!1814306 (= e!1159084 (and tp!512362 (inv!25803 (tag!3967 (h!25196 rules!3447))) (inv!25808 (transformation!3555 (h!25196 rules!3447))) e!1159070))))

(declare-fun b!1814307 () Bool)

(declare-fun e!1159058 () Bool)

(assert (=> b!1814307 (= e!1159063 e!1159058)))

(declare-fun res!815688 () Bool)

(assert (=> b!1814307 (=> res!815688 e!1159058)))

(declare-fun lt!704892 () Option!4136)

(declare-fun lt!704904 () List!19864)

(assert (=> b!1814307 (= res!815688 (or (not (= lt!704904 (_2!11089 lt!704927))) (not (= lt!704892 (Some!4135 (tuple2!19375 (_1!11089 lt!704927) lt!704904))))))))

(assert (=> b!1814307 (= (_2!11089 lt!704927) lt!704904)))

(declare-fun lt!704928 () Unit!34447)

(assert (=> b!1814307 (= lt!704928 (lemmaSamePrefixThenSameSuffix!906 lt!704905 (_2!11089 lt!704927) lt!704905 lt!704904 lt!704910))))

(assert (=> b!1814307 (= lt!704904 (getSuffix!962 lt!704910 lt!704905))))

(declare-fun lt!704919 () Int)

(declare-fun lt!704930 () TokenValue!3645)

(assert (=> b!1814307 (= lt!704892 (Some!4135 (tuple2!19375 (Token!6677 lt!704930 (rule!5665 (_1!11089 lt!704927)) lt!704919 lt!704905) (_2!11089 lt!704927))))))

(declare-fun maxPrefixOneRule!1107 (LexerInterface!3184 Rule!6910 List!19864) Option!4136)

(assert (=> b!1814307 (= lt!704892 (maxPrefixOneRule!1107 thiss!24550 (rule!5665 (_1!11089 lt!704927)) lt!704910))))

(declare-fun size!15738 (List!19864) Int)

(assert (=> b!1814307 (= lt!704919 (size!15738 lt!704905))))

(assert (=> b!1814307 (= lt!704930 (apply!5355 (transformation!3555 (rule!5665 (_1!11089 lt!704927))) (seqFromList!2524 lt!704905)))))

(declare-fun lt!704922 () Unit!34447)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!485 (LexerInterface!3184 List!19865 List!19864 List!19864 List!19864 Rule!6910) Unit!34447)

(assert (=> b!1814307 (= lt!704922 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!485 thiss!24550 rules!3447 lt!704905 lt!704910 (_2!11089 lt!704927) (rule!5665 (_1!11089 lt!704927))))))

(declare-fun b!1814308 () Bool)

(declare-fun e!1159069 () Bool)

(declare-fun tp_is_empty!8009 () Bool)

(declare-fun tp!512361 () Bool)

(assert (=> b!1814308 (= e!1159069 (and tp_is_empty!8009 tp!512361))))

(declare-fun b!1814309 () Bool)

(assert (=> b!1814309 (= e!1159056 e!1159088)))

(declare-fun res!815697 () Bool)

(assert (=> b!1814309 (=> res!815697 e!1159088)))

(declare-fun lt!704890 () Int)

(declare-fun lt!704917 () Int)

(assert (=> b!1814309 (= res!815697 (not (= lt!704890 lt!704917)))))

(declare-fun lt!704913 () Unit!34447)

(declare-fun e!1159066 () Unit!34447)

(assert (=> b!1814309 (= lt!704913 e!1159066)))

(declare-fun c!296352 () Bool)

(assert (=> b!1814309 (= c!296352 (< lt!704890 lt!704917))))

(declare-fun lt!704920 () Unit!34447)

(declare-fun e!1159059 () Unit!34447)

(assert (=> b!1814309 (= lt!704920 e!1159059)))

(declare-fun c!296354 () Bool)

(assert (=> b!1814309 (= c!296354 (< lt!704917 lt!704890))))

(declare-fun getIndex!220 (List!19865 Rule!6910) Int)

(assert (=> b!1814309 (= lt!704890 (getIndex!220 rules!3447 (rule!5665 (_1!11089 lt!704927))))))

(assert (=> b!1814309 (= lt!704917 (getIndex!220 rules!3447 (rule!5665 token!523)))))

(declare-fun res!815692 () Bool)

(assert (=> start!179426 (=> (not res!815692) (not e!1159079))))

(get-info :version)

(assert (=> start!179426 (= res!815692 ((_ is Lexer!3182) thiss!24550))))

(assert (=> start!179426 e!1159079))

(assert (=> start!179426 e!1159069))

(declare-fun e!1159080 () Bool)

(assert (=> start!179426 e!1159080))

(assert (=> start!179426 true))

(declare-fun inv!25809 (Token!6676) Bool)

(assert (=> start!179426 (and (inv!25809 token!523) e!1159067)))

(declare-fun e!1159075 () Bool)

(assert (=> start!179426 e!1159075))

(declare-fun b!1814291 () Bool)

(declare-fun e!1159060 () Bool)

(assert (=> b!1814291 (= e!1159060 e!1159082)))

(declare-fun res!815695 () Bool)

(assert (=> b!1814291 (=> res!815695 e!1159082)))

(declare-fun lt!704886 () Int)

(assert (=> b!1814291 (= res!815695 (not (= lt!704884 lt!704886)))))

(declare-fun lt!704918 () Unit!34447)

(assert (=> b!1814291 (= lt!704918 e!1159057)))

(declare-fun c!296353 () Bool)

(assert (=> b!1814291 (= c!296353 (< lt!704884 lt!704886))))

(declare-fun b!1814310 () Bool)

(assert (=> b!1814310 (= e!1159058 e!1159060)))

(declare-fun res!815693 () Bool)

(assert (=> b!1814310 (=> res!815693 e!1159060)))

(declare-fun lt!704899 () Bool)

(assert (=> b!1814310 (= res!815693 lt!704899)))

(declare-fun lt!704901 () Unit!34447)

(assert (=> b!1814310 (= lt!704901 e!1159055)))

(declare-fun c!296355 () Bool)

(assert (=> b!1814310 (= c!296355 lt!704899)))

(assert (=> b!1814310 (= lt!704899 (> lt!704884 lt!704886))))

(declare-fun lt!704924 () BalanceConc!13114)

(assert (=> b!1814310 (= lt!704886 (size!15737 lt!704924))))

(assert (=> b!1814310 (matchR!2356 lt!704885 lt!704912)))

(declare-fun lt!704897 () Unit!34447)

(assert (=> b!1814310 (= lt!704897 (lemmaMaxPrefixThenMatchesRulesRegex!262 thiss!24550 rules!3447 lt!704912 token!523 rule!422 Nil!19794))))

(declare-fun b!1814311 () Bool)

(declare-fun Unit!34453 () Unit!34447)

(assert (=> b!1814311 (= e!1159059 Unit!34453)))

(declare-fun lt!704931 () Unit!34447)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!176 (LexerInterface!3184 List!19865 Rule!6910 List!19864 List!19864 Rule!6910) Unit!34447)

(assert (=> b!1814311 (= lt!704931 (lemmaMaxPrefNoSmallerRuleMatches!176 thiss!24550 rules!3447 (rule!5665 (_1!11089 lt!704927)) lt!704905 lt!704910 (rule!5665 token!523)))))

(declare-fun res!815694 () Bool)

(assert (=> b!1814311 (= res!815694 (not (matchR!2356 (regex!3555 (rule!5665 token!523)) lt!704905)))))

(assert (=> b!1814311 (=> (not res!815694) (not e!1159065))))

(assert (=> b!1814311 e!1159065))

(declare-fun tp!512363 () Bool)

(declare-fun b!1814312 () Bool)

(assert (=> b!1814312 (= e!1159080 (and tp!512363 (inv!25803 (tag!3967 rule!422)) (inv!25808 (transformation!3555 rule!422)) e!1159076))))

(declare-fun b!1814313 () Bool)

(declare-fun e!1159068 () Bool)

(assert (=> b!1814313 (= e!1159068 e!1159078)))

(declare-fun res!815696 () Bool)

(assert (=> b!1814313 (=> res!815696 e!1159078)))

(declare-fun dynLambda!9858 (Int TokenValue!3645) BalanceConc!13114)

(declare-fun dynLambda!9859 (Int BalanceConc!13114) TokenValue!3645)

(assert (=> b!1814313 (= res!815696 (not (= (list!8059 (dynLambda!9858 (toChars!4945 (transformation!3555 (rule!5665 (_1!11089 lt!704927)))) (dynLambda!9859 (toValue!5086 (transformation!3555 (rule!5665 (_1!11089 lt!704927)))) lt!704900))) lt!704905)))))

(declare-fun lt!704906 () Unit!34447)

(declare-fun lemmaSemiInverse!693 (TokenValueInjection!6950 BalanceConc!13114) Unit!34447)

(assert (=> b!1814313 (= lt!704906 (lemmaSemiInverse!693 (transformation!3555 (rule!5665 (_1!11089 lt!704927))) lt!704900))))

(declare-fun b!1814314 () Bool)

(assert (=> b!1814314 (= e!1159079 e!1159085)))

(declare-fun res!815707 () Bool)

(assert (=> b!1814314 (=> (not res!815707) (not e!1159085))))

(declare-fun isDefined!3478 (Option!4136) Bool)

(assert (=> b!1814314 (= res!815707 (isDefined!3478 lt!704934))))

(assert (=> b!1814314 (= lt!704934 (maxPrefix!1738 thiss!24550 rules!3447 lt!704912))))

(assert (=> b!1814314 (= lt!704912 (list!8059 lt!704924))))

(assert (=> b!1814314 (= lt!704924 (charsOf!2204 token!523))))

(declare-fun b!1814315 () Bool)

(declare-fun res!815686 () Bool)

(assert (=> b!1814315 (=> (not res!815686) (not e!1159079))))

(declare-fun contains!3589 (List!19865 Rule!6910) Bool)

(assert (=> b!1814315 (= res!815686 (contains!3589 rules!3447 rule!422))))

(declare-fun b!1814316 () Bool)

(assert (=> b!1814316 (= e!1159081 e!1159072)))

(declare-fun res!815705 () Bool)

(assert (=> b!1814316 (=> (not res!815705) (not e!1159072))))

(assert (=> b!1814316 (= res!815705 (matchR!2356 (regex!3555 lt!704896) (list!8059 (charsOf!2204 (_1!11089 lt!704927)))))))

(declare-fun get!6130 (Option!4137) Rule!6910)

(assert (=> b!1814316 (= lt!704896 (get!6130 lt!704888))))

(declare-fun b!1814317 () Bool)

(declare-fun Unit!34454 () Unit!34447)

(assert (=> b!1814317 (= e!1159059 Unit!34454)))

(declare-fun b!1814318 () Bool)

(assert (=> b!1814318 (= e!1159086 e!1159064)))

(declare-fun res!815706 () Bool)

(assert (=> b!1814318 (=> res!815706 e!1159064)))

(declare-fun prefixMatch!766 (Regex!4883 List!19864) Bool)

(assert (=> b!1814318 (= res!815706 (prefixMatch!766 lt!704885 lt!704893))))

(assert (=> b!1814318 (= lt!704893 (++!5385 lt!704912 (Cons!19794 (head!4220 suffix!1421) Nil!19794)))))

(declare-fun rulesRegex!911 (LexerInterface!3184 List!19865) Regex!4883)

(assert (=> b!1814318 (= lt!704885 (rulesRegex!911 thiss!24550 rules!3447))))

(assert (=> b!1814319 (= e!1159074 e!1159068)))

(declare-fun res!815691 () Bool)

(assert (=> b!1814319 (=> res!815691 e!1159068)))

(declare-fun Forall!922 (Int) Bool)

(assert (=> b!1814319 (= res!815691 (not (Forall!922 lambda!71042)))))

(declare-fun lt!704921 () Unit!34447)

(declare-fun lemmaInv!754 (TokenValueInjection!6950) Unit!34447)

(assert (=> b!1814319 (= lt!704921 (lemmaInv!754 (transformation!3555 (rule!5665 (_1!11089 lt!704927)))))))

(declare-fun b!1814320 () Bool)

(declare-fun res!815704 () Bool)

(assert (=> b!1814320 (=> (not res!815704) (not e!1159079))))

(declare-fun rulesInvariant!2853 (LexerInterface!3184 List!19865) Bool)

(assert (=> b!1814320 (= res!815704 (rulesInvariant!2853 thiss!24550 rules!3447))))

(assert (=> b!1814321 (= e!1159070 (and tp!512365 tp!512369))))

(declare-fun b!1814322 () Bool)

(declare-fun res!815687 () Bool)

(assert (=> b!1814322 (=> res!815687 e!1159078)))

(assert (=> b!1814322 (= res!815687 (not (= lt!704900 (dynLambda!9858 (toChars!4945 (transformation!3555 (rule!5665 (_1!11089 lt!704927)))) (value!110990 (_1!11089 lt!704927))))))))

(declare-fun b!1814323 () Bool)

(declare-fun Unit!34455 () Unit!34447)

(assert (=> b!1814323 (= e!1159066 Unit!34455)))

(declare-fun lt!704898 () Unit!34447)

(assert (=> b!1814323 (= lt!704898 (lemmaMaxPrefNoSmallerRuleMatches!176 thiss!24550 rules!3447 (rule!5665 token!523) lt!704912 lt!704912 (rule!5665 (_1!11089 lt!704927))))))

(declare-fun res!815685 () Bool)

(assert (=> b!1814323 (= res!815685 (not (matchR!2356 (regex!3555 (rule!5665 (_1!11089 lt!704927))) lt!704912)))))

(assert (=> b!1814323 (=> (not res!815685) (not e!1159087))))

(assert (=> b!1814323 e!1159087))

(declare-fun b!1814324 () Bool)

(declare-fun tp!512370 () Bool)

(assert (=> b!1814324 (= e!1159075 (and e!1159084 tp!512370))))

(declare-fun b!1814325 () Bool)

(declare-fun Unit!34456 () Unit!34447)

(assert (=> b!1814325 (= e!1159066 Unit!34456)))

(assert (= (and start!179426 res!815692) b!1814286))

(assert (= (and b!1814286 res!815698) b!1814320))

(assert (= (and b!1814320 res!815704) b!1814315))

(assert (= (and b!1814315 res!815686) b!1814314))

(assert (= (and b!1814314 res!815707) b!1814297))

(assert (= (and b!1814297 res!815689) b!1814283))

(assert (= (and b!1814283 res!815699) b!1814284))

(assert (= (and b!1814284 res!815702) b!1814285))

(assert (= (and b!1814285 (not res!815690)) b!1814300))

(assert (= (and b!1814300 (not res!815700)) b!1814318))

(assert (= (and b!1814318 (not res!815706)) b!1814301))

(assert (= (and b!1814301 res!815684) b!1814316))

(assert (= (and b!1814316 res!815705) b!1814290))

(assert (= (and b!1814301 (not res!815708)) b!1814289))

(assert (= (and b!1814289 (not res!815701)) b!1814319))

(assert (= (and b!1814319 (not res!815691)) b!1814313))

(assert (= (and b!1814313 (not res!815696)) b!1814322))

(assert (= (and b!1814322 (not res!815687)) b!1814303))

(assert (= (and b!1814303 (not res!815683)) b!1814307))

(assert (= (and b!1814307 (not res!815688)) b!1814310))

(assert (= (and b!1814310 c!296355) b!1814299))

(assert (= (and b!1814310 (not c!296355)) b!1814296))

(assert (= (and b!1814310 (not res!815693)) b!1814291))

(assert (= (and b!1814291 c!296353) b!1814304))

(assert (= (and b!1814291 (not c!296353)) b!1814298))

(assert (= (and b!1814291 (not res!815695)) b!1814288))

(assert (= (and b!1814288 (not res!815703)) b!1814309))

(assert (= (and b!1814309 c!296354) b!1814311))

(assert (= (and b!1814309 (not c!296354)) b!1814317))

(assert (= (and b!1814311 res!815694) b!1814294))

(assert (= (and b!1814309 c!296352) b!1814323))

(assert (= (and b!1814309 (not c!296352)) b!1814325))

(assert (= (and b!1814323 res!815685) b!1814305))

(assert (= (and b!1814309 (not res!815697)) b!1814302))

(assert (= (and start!179426 ((_ is Cons!19794) suffix!1421)) b!1814308))

(assert (= b!1814312 b!1814295))

(assert (= start!179426 b!1814312))

(assert (= b!1814292 b!1814293))

(assert (= b!1814287 b!1814292))

(assert (= start!179426 b!1814287))

(assert (= b!1814306 b!1814321))

(assert (= b!1814324 b!1814306))

(assert (= (and start!179426 ((_ is Cons!19795) rules!3447)) b!1814324))

(declare-fun b_lambda!59843 () Bool)

(assert (=> (not b_lambda!59843) (not b!1814313)))

(declare-fun t!169383 () Bool)

(declare-fun tb!110911 () Bool)

(assert (=> (and b!1814295 (= (toChars!4945 (transformation!3555 rule!422)) (toChars!4945 (transformation!3555 (rule!5665 (_1!11089 lt!704927))))) t!169383) tb!110911))

(declare-fun e!1159100 () Bool)

(declare-fun b!1814341 () Bool)

(declare-fun tp!512373 () Bool)

(declare-fun inv!25810 (Conc!6585) Bool)

(assert (=> b!1814341 (= e!1159100 (and (inv!25810 (c!296357 (dynLambda!9858 (toChars!4945 (transformation!3555 (rule!5665 (_1!11089 lt!704927)))) (dynLambda!9859 (toValue!5086 (transformation!3555 (rule!5665 (_1!11089 lt!704927)))) lt!704900)))) tp!512373))))

(declare-fun result!133186 () Bool)

(declare-fun inv!25811 (BalanceConc!13114) Bool)

(assert (=> tb!110911 (= result!133186 (and (inv!25811 (dynLambda!9858 (toChars!4945 (transformation!3555 (rule!5665 (_1!11089 lt!704927)))) (dynLambda!9859 (toValue!5086 (transformation!3555 (rule!5665 (_1!11089 lt!704927)))) lt!704900))) e!1159100))))

(assert (= tb!110911 b!1814341))

(declare-fun m!2243701 () Bool)

(assert (=> b!1814341 m!2243701))

(declare-fun m!2243703 () Bool)

(assert (=> tb!110911 m!2243703))

(assert (=> b!1814313 t!169383))

(declare-fun b_and!140259 () Bool)

(assert (= b_and!140249 (and (=> t!169383 result!133186) b_and!140259)))

(declare-fun tb!110913 () Bool)

(declare-fun t!169385 () Bool)

(assert (=> (and b!1814293 (= (toChars!4945 (transformation!3555 (rule!5665 token!523))) (toChars!4945 (transformation!3555 (rule!5665 (_1!11089 lt!704927))))) t!169385) tb!110913))

(declare-fun result!133190 () Bool)

(assert (= result!133190 result!133186))

(assert (=> b!1814313 t!169385))

(declare-fun b_and!140261 () Bool)

(assert (= b_and!140253 (and (=> t!169385 result!133190) b_and!140261)))

(declare-fun t!169387 () Bool)

(declare-fun tb!110915 () Bool)

(assert (=> (and b!1814321 (= (toChars!4945 (transformation!3555 (h!25196 rules!3447))) (toChars!4945 (transformation!3555 (rule!5665 (_1!11089 lt!704927))))) t!169387) tb!110915))

(declare-fun result!133192 () Bool)

(assert (= result!133192 result!133186))

(assert (=> b!1814313 t!169387))

(declare-fun b_and!140263 () Bool)

(assert (= b_and!140257 (and (=> t!169387 result!133192) b_and!140263)))

(declare-fun b_lambda!59845 () Bool)

(assert (=> (not b_lambda!59845) (not b!1814313)))

(declare-fun t!169389 () Bool)

(declare-fun tb!110917 () Bool)

(assert (=> (and b!1814295 (= (toValue!5086 (transformation!3555 rule!422)) (toValue!5086 (transformation!3555 (rule!5665 (_1!11089 lt!704927))))) t!169389) tb!110917))

(declare-fun result!133194 () Bool)

(assert (=> tb!110917 (= result!133194 (inv!21 (dynLambda!9859 (toValue!5086 (transformation!3555 (rule!5665 (_1!11089 lt!704927)))) lt!704900)))))

(declare-fun m!2243705 () Bool)

(assert (=> tb!110917 m!2243705))

(assert (=> b!1814313 t!169389))

(declare-fun b_and!140265 () Bool)

(assert (= b_and!140247 (and (=> t!169389 result!133194) b_and!140265)))

(declare-fun t!169391 () Bool)

(declare-fun tb!110919 () Bool)

(assert (=> (and b!1814293 (= (toValue!5086 (transformation!3555 (rule!5665 token!523))) (toValue!5086 (transformation!3555 (rule!5665 (_1!11089 lt!704927))))) t!169391) tb!110919))

(declare-fun result!133198 () Bool)

(assert (= result!133198 result!133194))

(assert (=> b!1814313 t!169391))

(declare-fun b_and!140267 () Bool)

(assert (= b_and!140251 (and (=> t!169391 result!133198) b_and!140267)))

(declare-fun t!169393 () Bool)

(declare-fun tb!110921 () Bool)

(assert (=> (and b!1814321 (= (toValue!5086 (transformation!3555 (h!25196 rules!3447))) (toValue!5086 (transformation!3555 (rule!5665 (_1!11089 lt!704927))))) t!169393) tb!110921))

(declare-fun result!133200 () Bool)

(assert (= result!133200 result!133194))

(assert (=> b!1814313 t!169393))

(declare-fun b_and!140269 () Bool)

(assert (= b_and!140255 (and (=> t!169393 result!133200) b_and!140269)))

(declare-fun b_lambda!59847 () Bool)

(assert (=> (not b_lambda!59847) (not b!1814322)))

(declare-fun t!169395 () Bool)

(declare-fun tb!110923 () Bool)

(assert (=> (and b!1814295 (= (toChars!4945 (transformation!3555 rule!422)) (toChars!4945 (transformation!3555 (rule!5665 (_1!11089 lt!704927))))) t!169395) tb!110923))

(declare-fun b!1814344 () Bool)

(declare-fun e!1159104 () Bool)

(declare-fun tp!512374 () Bool)

(assert (=> b!1814344 (= e!1159104 (and (inv!25810 (c!296357 (dynLambda!9858 (toChars!4945 (transformation!3555 (rule!5665 (_1!11089 lt!704927)))) (value!110990 (_1!11089 lt!704927))))) tp!512374))))

(declare-fun result!133202 () Bool)

(assert (=> tb!110923 (= result!133202 (and (inv!25811 (dynLambda!9858 (toChars!4945 (transformation!3555 (rule!5665 (_1!11089 lt!704927)))) (value!110990 (_1!11089 lt!704927)))) e!1159104))))

(assert (= tb!110923 b!1814344))

(declare-fun m!2243707 () Bool)

(assert (=> b!1814344 m!2243707))

(declare-fun m!2243709 () Bool)

(assert (=> tb!110923 m!2243709))

(assert (=> b!1814322 t!169395))

(declare-fun b_and!140271 () Bool)

(assert (= b_and!140259 (and (=> t!169395 result!133202) b_and!140271)))

(declare-fun tb!110925 () Bool)

(declare-fun t!169397 () Bool)

(assert (=> (and b!1814293 (= (toChars!4945 (transformation!3555 (rule!5665 token!523))) (toChars!4945 (transformation!3555 (rule!5665 (_1!11089 lt!704927))))) t!169397) tb!110925))

(declare-fun result!133204 () Bool)

(assert (= result!133204 result!133202))

(assert (=> b!1814322 t!169397))

(declare-fun b_and!140273 () Bool)

(assert (= b_and!140261 (and (=> t!169397 result!133204) b_and!140273)))

(declare-fun t!169399 () Bool)

(declare-fun tb!110927 () Bool)

(assert (=> (and b!1814321 (= (toChars!4945 (transformation!3555 (h!25196 rules!3447))) (toChars!4945 (transformation!3555 (rule!5665 (_1!11089 lt!704927))))) t!169399) tb!110927))

(declare-fun result!133206 () Bool)

(assert (= result!133206 result!133202))

(assert (=> b!1814322 t!169399))

(declare-fun b_and!140275 () Bool)

(assert (= b_and!140263 (and (=> t!169399 result!133206) b_and!140275)))

(declare-fun m!2243711 () Bool)

(assert (=> b!1814292 m!2243711))

(declare-fun m!2243713 () Bool)

(assert (=> b!1814292 m!2243713))

(declare-fun m!2243715 () Bool)

(assert (=> b!1814283 m!2243715))

(declare-fun m!2243717 () Bool)

(assert (=> b!1814322 m!2243717))

(declare-fun m!2243719 () Bool)

(assert (=> b!1814318 m!2243719))

(declare-fun m!2243721 () Bool)

(assert (=> b!1814318 m!2243721))

(declare-fun m!2243723 () Bool)

(assert (=> b!1814318 m!2243723))

(declare-fun m!2243725 () Bool)

(assert (=> b!1814318 m!2243725))

(declare-fun m!2243727 () Bool)

(assert (=> b!1814300 m!2243727))

(declare-fun m!2243729 () Bool)

(assert (=> b!1814288 m!2243729))

(declare-fun m!2243731 () Bool)

(assert (=> b!1814288 m!2243731))

(declare-fun m!2243733 () Bool)

(assert (=> b!1814311 m!2243733))

(declare-fun m!2243735 () Bool)

(assert (=> b!1814311 m!2243735))

(declare-fun m!2243737 () Bool)

(assert (=> b!1814314 m!2243737))

(declare-fun m!2243739 () Bool)

(assert (=> b!1814314 m!2243739))

(declare-fun m!2243741 () Bool)

(assert (=> b!1814314 m!2243741))

(declare-fun m!2243743 () Bool)

(assert (=> b!1814314 m!2243743))

(declare-fun m!2243745 () Bool)

(assert (=> b!1814310 m!2243745))

(declare-fun m!2243747 () Bool)

(assert (=> b!1814310 m!2243747))

(declare-fun m!2243749 () Bool)

(assert (=> b!1814310 m!2243749))

(declare-fun m!2243751 () Bool)

(assert (=> b!1814316 m!2243751))

(assert (=> b!1814316 m!2243751))

(declare-fun m!2243753 () Bool)

(assert (=> b!1814316 m!2243753))

(assert (=> b!1814316 m!2243753))

(declare-fun m!2243755 () Bool)

(assert (=> b!1814316 m!2243755))

(declare-fun m!2243757 () Bool)

(assert (=> b!1814316 m!2243757))

(declare-fun m!2243759 () Bool)

(assert (=> b!1814312 m!2243759))

(declare-fun m!2243761 () Bool)

(assert (=> b!1814312 m!2243761))

(declare-fun m!2243763 () Bool)

(assert (=> b!1814309 m!2243763))

(declare-fun m!2243765 () Bool)

(assert (=> b!1814309 m!2243765))

(declare-fun m!2243767 () Bool)

(assert (=> b!1814299 m!2243767))

(declare-fun m!2243769 () Bool)

(assert (=> b!1814299 m!2243769))

(declare-fun m!2243771 () Bool)

(assert (=> b!1814299 m!2243771))

(declare-fun m!2243773 () Bool)

(assert (=> b!1814299 m!2243773))

(assert (=> b!1814299 m!2243769))

(declare-fun m!2243775 () Bool)

(assert (=> b!1814299 m!2243775))

(declare-fun m!2243777 () Bool)

(assert (=> b!1814299 m!2243777))

(declare-fun m!2243779 () Bool)

(assert (=> b!1814299 m!2243779))

(declare-fun m!2243781 () Bool)

(assert (=> b!1814299 m!2243781))

(declare-fun m!2243783 () Bool)

(assert (=> b!1814299 m!2243783))

(declare-fun m!2243785 () Bool)

(assert (=> b!1814299 m!2243785))

(declare-fun m!2243787 () Bool)

(assert (=> b!1814299 m!2243787))

(declare-fun m!2243789 () Bool)

(assert (=> b!1814307 m!2243789))

(declare-fun m!2243791 () Bool)

(assert (=> b!1814307 m!2243791))

(declare-fun m!2243793 () Bool)

(assert (=> b!1814307 m!2243793))

(declare-fun m!2243795 () Bool)

(assert (=> b!1814307 m!2243795))

(declare-fun m!2243797 () Bool)

(assert (=> b!1814307 m!2243797))

(assert (=> b!1814307 m!2243789))

(declare-fun m!2243799 () Bool)

(assert (=> b!1814307 m!2243799))

(declare-fun m!2243801 () Bool)

(assert (=> b!1814307 m!2243801))

(declare-fun m!2243803 () Bool)

(assert (=> b!1814302 m!2243803))

(declare-fun m!2243805 () Bool)

(assert (=> b!1814315 m!2243805))

(declare-fun m!2243807 () Bool)

(assert (=> b!1814286 m!2243807))

(declare-fun m!2243809 () Bool)

(assert (=> b!1814301 m!2243809))

(declare-fun m!2243811 () Bool)

(assert (=> b!1814301 m!2243811))

(declare-fun m!2243813 () Bool)

(assert (=> b!1814301 m!2243813))

(declare-fun m!2243815 () Bool)

(assert (=> b!1814301 m!2243815))

(declare-fun m!2243817 () Bool)

(assert (=> b!1814301 m!2243817))

(declare-fun m!2243819 () Bool)

(assert (=> b!1814301 m!2243819))

(declare-fun m!2243821 () Bool)

(assert (=> b!1814301 m!2243821))

(declare-fun m!2243823 () Bool)

(assert (=> b!1814301 m!2243823))

(assert (=> b!1814301 m!2243815))

(declare-fun m!2243825 () Bool)

(assert (=> b!1814301 m!2243825))

(declare-fun m!2243827 () Bool)

(assert (=> b!1814301 m!2243827))

(declare-fun m!2243829 () Bool)

(assert (=> b!1814301 m!2243829))

(declare-fun m!2243831 () Bool)

(assert (=> b!1814301 m!2243831))

(declare-fun m!2243833 () Bool)

(assert (=> b!1814301 m!2243833))

(assert (=> b!1814301 m!2243751))

(declare-fun m!2243835 () Bool)

(assert (=> b!1814301 m!2243835))

(declare-fun m!2243837 () Bool)

(assert (=> b!1814306 m!2243837))

(declare-fun m!2243839 () Bool)

(assert (=> b!1814306 m!2243839))

(declare-fun m!2243841 () Bool)

(assert (=> start!179426 m!2243841))

(declare-fun m!2243843 () Bool)

(assert (=> b!1814304 m!2243843))

(declare-fun m!2243845 () Bool)

(assert (=> b!1814303 m!2243845))

(declare-fun m!2243847 () Bool)

(assert (=> b!1814303 m!2243847))

(declare-fun m!2243849 () Bool)

(assert (=> b!1814303 m!2243849))

(declare-fun m!2243851 () Bool)

(assert (=> b!1814303 m!2243851))

(assert (=> b!1814303 m!2243845))

(declare-fun m!2243853 () Bool)

(assert (=> b!1814303 m!2243853))

(declare-fun m!2243855 () Bool)

(assert (=> b!1814320 m!2243855))

(declare-fun m!2243857 () Bool)

(assert (=> b!1814289 m!2243857))

(declare-fun m!2243859 () Bool)

(assert (=> b!1814319 m!2243859))

(declare-fun m!2243861 () Bool)

(assert (=> b!1814319 m!2243861))

(declare-fun m!2243863 () Bool)

(assert (=> b!1814297 m!2243863))

(declare-fun m!2243865 () Bool)

(assert (=> b!1814323 m!2243865))

(declare-fun m!2243867 () Bool)

(assert (=> b!1814323 m!2243867))

(declare-fun m!2243869 () Bool)

(assert (=> b!1814313 m!2243869))

(assert (=> b!1814313 m!2243869))

(declare-fun m!2243871 () Bool)

(assert (=> b!1814313 m!2243871))

(assert (=> b!1814313 m!2243871))

(declare-fun m!2243873 () Bool)

(assert (=> b!1814313 m!2243873))

(declare-fun m!2243875 () Bool)

(assert (=> b!1814313 m!2243875))

(declare-fun m!2243877 () Bool)

(assert (=> b!1814285 m!2243877))

(declare-fun m!2243879 () Bool)

(assert (=> b!1814285 m!2243879))

(declare-fun m!2243881 () Bool)

(assert (=> b!1814285 m!2243881))

(declare-fun m!2243883 () Bool)

(assert (=> b!1814287 m!2243883))

(check-sat (not b!1814299) (not tb!110911) (not b!1814315) (not b!1814289) (not b!1814306) (not b_next!50707) b_and!140267 (not b!1814297) (not tb!110923) (not b!1814300) (not b!1814309) (not b!1814302) (not b!1814320) (not b!1814314) (not b_next!50703) (not b!1814286) b_and!140273 (not b!1814287) (not tb!110917) (not b_next!50709) (not b!1814311) tp_is_empty!8009 (not b!1814288) (not b!1814324) (not b!1814308) (not b!1814283) (not b!1814312) (not b!1814316) (not b!1814292) (not b_next!50713) (not b!1814318) b_and!140265 (not b!1814344) b_and!140269 (not b!1814341) (not start!179426) (not b!1814303) (not b_next!50705) (not b_next!50711) (not b_lambda!59843) (not b!1814285) (not b!1814304) (not b!1814310) (not b!1814301) (not b_lambda!59845) b_and!140271 (not b!1814319) (not b!1814313) (not b_lambda!59847) (not b!1814323) b_and!140275 (not b!1814307))
(check-sat (not b_next!50703) b_and!140269 (not b_next!50707) b_and!140267 b_and!140271 b_and!140275 b_and!140273 (not b_next!50709) (not b_next!50713) b_and!140265 (not b_next!50705) (not b_next!50711))
