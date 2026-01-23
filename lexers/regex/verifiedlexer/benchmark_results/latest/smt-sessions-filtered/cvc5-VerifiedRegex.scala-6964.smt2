; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!368534 () Bool)

(assert start!368534)

(declare-fun b!3929093 () Bool)

(declare-fun b_free!107225 () Bool)

(declare-fun b_next!107929 () Bool)

(assert (=> b!3929093 (= b_free!107225 (not b_next!107929))))

(declare-fun tp!1196225 () Bool)

(declare-fun b_and!299723 () Bool)

(assert (=> b!3929093 (= tp!1196225 b_and!299723)))

(declare-fun b_free!107227 () Bool)

(declare-fun b_next!107931 () Bool)

(assert (=> b!3929093 (= b_free!107227 (not b_next!107931))))

(declare-fun tp!1196227 () Bool)

(declare-fun b_and!299725 () Bool)

(assert (=> b!3929093 (= tp!1196227 b_and!299725)))

(declare-fun b!3929087 () Bool)

(declare-fun b_free!107229 () Bool)

(declare-fun b_next!107933 () Bool)

(assert (=> b!3929087 (= b_free!107229 (not b_next!107933))))

(declare-fun tp!1196236 () Bool)

(declare-fun b_and!299727 () Bool)

(assert (=> b!3929087 (= tp!1196236 b_and!299727)))

(declare-fun b_free!107231 () Bool)

(declare-fun b_next!107935 () Bool)

(assert (=> b!3929087 (= b_free!107231 (not b_next!107935))))

(declare-fun tp!1196230 () Bool)

(declare-fun b_and!299729 () Bool)

(assert (=> b!3929087 (= tp!1196230 b_and!299729)))

(declare-fun b!3929105 () Bool)

(declare-fun b_free!107233 () Bool)

(declare-fun b_next!107937 () Bool)

(assert (=> b!3929105 (= b_free!107233 (not b_next!107937))))

(declare-fun tp!1196235 () Bool)

(declare-fun b_and!299731 () Bool)

(assert (=> b!3929105 (= tp!1196235 b_and!299731)))

(declare-fun b_free!107235 () Bool)

(declare-fun b_next!107939 () Bool)

(assert (=> b!3929105 (= b_free!107235 (not b_next!107939))))

(declare-fun tp!1196232 () Bool)

(declare-fun b_and!299733 () Bool)

(assert (=> b!3929105 (= tp!1196232 b_and!299733)))

(declare-fun b!3929069 () Bool)

(declare-fun e!2430683 () Bool)

(assert (=> b!3929069 (= e!2430683 false)))

(declare-fun b!3929070 () Bool)

(declare-datatypes ((Unit!60127 0))(
  ( (Unit!60128) )
))
(declare-fun e!2430688 () Unit!60127)

(declare-fun Unit!60129 () Unit!60127)

(assert (=> b!3929070 (= e!2430688 Unit!60129)))

(declare-fun lt!1372220 () Unit!60127)

(declare-datatypes ((C!23026 0))(
  ( (C!23027 (val!13607 Int)) )
))
(declare-datatypes ((List!41855 0))(
  ( (Nil!41731) (Cons!41731 (h!47151 C!23026) (t!325278 List!41855)) )
))
(declare-fun prefix!426 () List!41855)

(declare-fun suffix!1176 () List!41855)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2473 (List!41855 List!41855) Unit!60127)

(assert (=> b!3929070 (= lt!1372220 (lemmaConcatTwoListThenFirstIsPrefix!2473 prefix!426 suffix!1176))))

(declare-fun lt!1372223 () List!41855)

(declare-fun isPrefix!3610 (List!41855 List!41855) Bool)

(assert (=> b!3929070 (isPrefix!3610 prefix!426 lt!1372223)))

(declare-fun lt!1372189 () Unit!60127)

(declare-fun lt!1372190 () List!41855)

(declare-fun lemmaIsPrefixSameLengthThenSameList!806 (List!41855 List!41855 List!41855) Unit!60127)

(assert (=> b!3929070 (= lt!1372189 (lemmaIsPrefixSameLengthThenSameList!806 lt!1372190 prefix!426 lt!1372223))))

(assert (=> b!3929070 (= lt!1372190 prefix!426)))

(declare-datatypes ((String!47444 0))(
  ( (String!47445 (value!206287 String)) )
))
(declare-datatypes ((List!41856 0))(
  ( (Nil!41732) (Cons!41732 (h!47152 (_ BitVec 16)) (t!325279 List!41856)) )
))
(declare-datatypes ((TokenValue!6745 0))(
  ( (FloatLiteralValue!13490 (text!47660 List!41856)) (TokenValueExt!6744 (__x!25707 Int)) (Broken!33725 (value!206288 List!41856)) (Object!6868) (End!6745) (Def!6745) (Underscore!6745) (Match!6745) (Else!6745) (Error!6745) (Case!6745) (If!6745) (Extends!6745) (Abstract!6745) (Class!6745) (Val!6745) (DelimiterValue!13490 (del!6805 List!41856)) (KeywordValue!6751 (value!206289 List!41856)) (CommentValue!13490 (value!206290 List!41856)) (WhitespaceValue!13490 (value!206291 List!41856)) (IndentationValue!6745 (value!206292 List!41856)) (String!47446) (Int32!6745) (Broken!33726 (value!206293 List!41856)) (Boolean!6746) (Unit!60130) (OperatorValue!6748 (op!6805 List!41856)) (IdentifierValue!13490 (value!206294 List!41856)) (IdentifierValue!13491 (value!206295 List!41856)) (WhitespaceValue!13491 (value!206296 List!41856)) (True!13490) (False!13490) (Broken!33727 (value!206297 List!41856)) (Broken!33728 (value!206298 List!41856)) (True!13491) (RightBrace!6745) (RightBracket!6745) (Colon!6745) (Null!6745) (Comma!6745) (LeftBracket!6745) (False!13491) (LeftBrace!6745) (ImaginaryLiteralValue!6745 (text!47661 List!41856)) (StringLiteralValue!20235 (value!206299 List!41856)) (EOFValue!6745 (value!206300 List!41856)) (IdentValue!6745 (value!206301 List!41856)) (DelimiterValue!13491 (value!206302 List!41856)) (DedentValue!6745 (value!206303 List!41856)) (NewLineValue!6745 (value!206304 List!41856)) (IntegerValue!20235 (value!206305 (_ BitVec 32)) (text!47662 List!41856)) (IntegerValue!20236 (value!206306 Int) (text!47663 List!41856)) (Times!6745) (Or!6745) (Equal!6745) (Minus!6745) (Broken!33729 (value!206307 List!41856)) (And!6745) (Div!6745) (LessEqual!6745) (Mod!6745) (Concat!18165) (Not!6745) (Plus!6745) (SpaceValue!6745 (value!206308 List!41856)) (IntegerValue!20237 (value!206309 Int) (text!47664 List!41856)) (StringLiteralValue!20236 (text!47665 List!41856)) (FloatLiteralValue!13491 (text!47666 List!41856)) (BytesLiteralValue!6745 (value!206310 List!41856)) (CommentValue!13491 (value!206311 List!41856)) (StringLiteralValue!20237 (value!206312 List!41856)) (ErrorTokenValue!6745 (msg!6806 List!41856)) )
))
(declare-datatypes ((Regex!11420 0))(
  ( (ElementMatch!11420 (c!682586 C!23026)) (Concat!18166 (regOne!23352 Regex!11420) (regTwo!23352 Regex!11420)) (EmptyExpr!11420) (Star!11420 (reg!11749 Regex!11420)) (EmptyLang!11420) (Union!11420 (regOne!23353 Regex!11420) (regTwo!23353 Regex!11420)) )
))
(declare-datatypes ((IArray!25457 0))(
  ( (IArray!25458 (innerList!12786 List!41855)) )
))
(declare-datatypes ((Conc!12726 0))(
  ( (Node!12726 (left!31834 Conc!12726) (right!32164 Conc!12726) (csize!25682 Int) (cheight!12937 Int)) (Leaf!19691 (xs!16032 IArray!25457) (csize!25683 Int)) (Empty!12726) )
))
(declare-datatypes ((BalanceConc!25046 0))(
  ( (BalanceConc!25047 (c!682587 Conc!12726)) )
))
(declare-datatypes ((TokenValueInjection!12918 0))(
  ( (TokenValueInjection!12919 (toValue!8967 Int) (toChars!8826 Int)) )
))
(declare-datatypes ((Rule!12830 0))(
  ( (Rule!12831 (regex!6515 Regex!11420) (tag!7375 String!47444) (isSeparator!6515 Bool) (transformation!6515 TokenValueInjection!12918)) )
))
(declare-datatypes ((Token!12168 0))(
  ( (Token!12169 (value!206313 TokenValue!6745) (rule!9459 Rule!12830) (size!31307 Int) (originalCharacters!7115 List!41855)) )
))
(declare-datatypes ((tuple2!41006 0))(
  ( (tuple2!41007 (_1!23637 Token!12168) (_2!23637 List!41855)) )
))
(declare-datatypes ((Option!8935 0))(
  ( (None!8934) (Some!8934 (v!39260 tuple2!41006)) )
))
(declare-fun lt!1372235 () Option!8935)

(declare-fun lt!1372198 () Unit!60127)

(declare-fun lemmaSamePrefixThenSameSuffix!1831 (List!41855 List!41855 List!41855 List!41855 List!41855) Unit!60127)

(assert (=> b!3929070 (= lt!1372198 (lemmaSamePrefixThenSameSuffix!1831 lt!1372190 (_2!23637 (v!39260 lt!1372235)) prefix!426 suffix!1176 lt!1372223))))

(assert (=> b!3929070 false))

(declare-fun b!3929071 () Bool)

(declare-fun res!1589756 () Bool)

(declare-fun e!2430702 () Bool)

(assert (=> b!3929071 (=> res!1589756 e!2430702)))

(declare-datatypes ((List!41857 0))(
  ( (Nil!41733) (Cons!41733 (h!47153 Token!12168) (t!325280 List!41857)) )
))
(declare-fun prefixTokens!80 () List!41857)

(declare-fun head!8340 (List!41857) Token!12168)

(assert (=> b!3929071 (= res!1589756 (not (= (head!8340 prefixTokens!80) (_1!23637 (v!39260 lt!1372235)))))))

(declare-fun b!3929072 () Bool)

(declare-fun e!2430697 () Unit!60127)

(declare-fun Unit!60131 () Unit!60127)

(assert (=> b!3929072 (= e!2430697 Unit!60131)))

(declare-fun suffixResult!91 () List!41855)

(declare-datatypes ((LexerInterface!6104 0))(
  ( (LexerInterfaceExt!6101 (__x!25708 Int)) (Lexer!6102) )
))
(declare-fun thiss!20629 () LexerInterface!6104)

(declare-datatypes ((List!41858 0))(
  ( (Nil!41734) (Cons!41734 (h!47154 Rule!12830) (t!325281 List!41858)) )
))
(declare-fun rules!2768 () List!41858)

(declare-fun suffixTokens!72 () List!41857)

(declare-fun lt!1372225 () Unit!60127)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!115 (LexerInterface!6104 List!41858 List!41855 List!41855 List!41857 List!41855) Unit!60127)

(assert (=> b!3929072 (= lt!1372225 (lemmaLexWithSmallerInputCannotProduceSameResults!115 thiss!20629 rules!2768 (_2!23637 (v!39260 lt!1372235)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> b!3929072 false))

(declare-fun b!3929073 () Bool)

(declare-fun e!2430682 () Unit!60127)

(declare-fun Unit!60132 () Unit!60127)

(assert (=> b!3929073 (= e!2430682 Unit!60132)))

(declare-fun lt!1372217 () List!41857)

(declare-fun lt!1372230 () tuple2!41006)

(declare-fun lt!1372221 () Unit!60127)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!115 (LexerInterface!6104 List!41858 List!41855 List!41855 List!41857 List!41855 List!41857) Unit!60127)

(assert (=> b!3929073 (= lt!1372221 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!115 thiss!20629 rules!2768 suffix!1176 (_2!23637 lt!1372230) suffixTokens!72 suffixResult!91 lt!1372217))))

(declare-fun res!1589762 () Bool)

(declare-datatypes ((tuple2!41008 0))(
  ( (tuple2!41009 (_1!23638 List!41857) (_2!23638 List!41855)) )
))
(declare-fun call!284767 () tuple2!41008)

(declare-fun ++!10787 (List!41857 List!41857) List!41857)

(assert (=> b!3929073 (= res!1589762 (not (= call!284767 (tuple2!41009 (++!10787 lt!1372217 suffixTokens!72) suffixResult!91))))))

(declare-fun e!2430675 () Bool)

(assert (=> b!3929073 (=> (not res!1589762) (not e!2430675))))

(assert (=> b!3929073 e!2430675))

(declare-fun b!3929074 () Bool)

(declare-fun res!1589760 () Bool)

(declare-fun e!2430696 () Bool)

(assert (=> b!3929074 (=> res!1589760 e!2430696)))

(declare-fun isEmpty!24875 (List!41855) Bool)

(assert (=> b!3929074 (= res!1589760 (not (isEmpty!24875 suffix!1176)))))

(declare-fun b!3929075 () Bool)

(declare-fun e!2430698 () Bool)

(declare-fun e!2430678 () Bool)

(assert (=> b!3929075 (= e!2430698 e!2430678)))

(declare-fun res!1589770 () Bool)

(assert (=> b!3929075 (=> res!1589770 e!2430678)))

(declare-fun lt!1372227 () List!41855)

(assert (=> b!3929075 (= res!1589770 (not (= lt!1372227 (_2!23637 (v!39260 lt!1372235)))))))

(assert (=> b!3929075 (= (_2!23637 (v!39260 lt!1372235)) lt!1372227)))

(declare-fun lt!1372213 () Unit!60127)

(assert (=> b!3929075 (= lt!1372213 (lemmaSamePrefixThenSameSuffix!1831 lt!1372190 (_2!23637 (v!39260 lt!1372235)) lt!1372190 lt!1372227 lt!1372223))))

(declare-fun lt!1372212 () List!41855)

(assert (=> b!3929075 (isPrefix!3610 lt!1372190 lt!1372212)))

(declare-fun lt!1372194 () Unit!60127)

(assert (=> b!3929075 (= lt!1372194 (lemmaConcatTwoListThenFirstIsPrefix!2473 lt!1372190 lt!1372227))))

(declare-fun b!3929076 () Bool)

(declare-fun e!2430690 () Bool)

(declare-fun e!2430709 () Bool)

(assert (=> b!3929076 (= e!2430690 e!2430709)))

(declare-fun res!1589752 () Bool)

(assert (=> b!3929076 (=> (not res!1589752) (not e!2430709))))

(declare-fun lt!1372226 () List!41857)

(declare-fun lt!1372199 () tuple2!41008)

(assert (=> b!3929076 (= res!1589752 (= lt!1372199 (tuple2!41009 lt!1372226 suffixResult!91)))))

(declare-fun lexList!1872 (LexerInterface!6104 List!41858 List!41855) tuple2!41008)

(assert (=> b!3929076 (= lt!1372199 (lexList!1872 thiss!20629 rules!2768 lt!1372223))))

(assert (=> b!3929076 (= lt!1372226 (++!10787 prefixTokens!80 suffixTokens!72))))

(declare-fun ++!10788 (List!41855 List!41855) List!41855)

(assert (=> b!3929076 (= lt!1372223 (++!10788 prefix!426 suffix!1176))))

(declare-fun bm!284762 () Bool)

(assert (=> bm!284762 (= call!284767 (lexList!1872 thiss!20629 rules!2768 (_2!23637 lt!1372230)))))

(declare-fun b!3929078 () Bool)

(declare-fun e!2430693 () Bool)

(declare-fun e!2430699 () Bool)

(declare-fun tp!1196231 () Bool)

(assert (=> b!3929078 (= e!2430693 (and e!2430699 tp!1196231))))

(declare-fun b!3929079 () Bool)

(declare-fun e!2430704 () Bool)

(declare-fun e!2430689 () Bool)

(assert (=> b!3929079 (= e!2430704 e!2430689)))

(declare-fun res!1589763 () Bool)

(assert (=> b!3929079 (=> res!1589763 e!2430689)))

(declare-fun lt!1372211 () List!41855)

(declare-fun lt!1372224 () List!41855)

(assert (=> b!3929079 (= res!1589763 (or (not (= lt!1372224 lt!1372223)) (not (= lt!1372224 lt!1372211))))))

(declare-fun lt!1372193 () List!41855)

(assert (=> b!3929079 (= lt!1372224 (++!10788 lt!1372193 suffix!1176))))

(declare-fun e!2430672 () Bool)

(declare-fun b!3929080 () Bool)

(declare-fun tp!1196229 () Bool)

(declare-fun e!2430676 () Bool)

(declare-fun inv!55924 (Token!12168) Bool)

(assert (=> b!3929080 (= e!2430672 (and (inv!55924 (h!47153 suffixTokens!72)) e!2430676 tp!1196229))))

(declare-fun b!3929081 () Bool)

(declare-fun e!2430695 () Bool)

(assert (=> b!3929081 (= e!2430695 e!2430696)))

(declare-fun res!1589767 () Bool)

(assert (=> b!3929081 (=> res!1589767 e!2430696)))

(assert (=> b!3929081 (= res!1589767 (not (= lt!1372235 (Some!8934 (tuple2!41007 (_1!23637 (v!39260 lt!1372235)) (_2!23637 (v!39260 lt!1372235)))))))))

(declare-fun lt!1372222 () List!41857)

(declare-fun lt!1372187 () List!41855)

(assert (=> b!3929081 (= (lexList!1872 thiss!20629 rules!2768 lt!1372187) (tuple2!41009 lt!1372222 Nil!41731))))

(declare-fun lt!1372202 () Unit!60127)

(declare-fun lemmaLexThenLexPrefix!600 (LexerInterface!6104 List!41858 List!41855 List!41855 List!41857 List!41857 List!41855) Unit!60127)

(assert (=> b!3929081 (= lt!1372202 (lemmaLexThenLexPrefix!600 thiss!20629 rules!2768 lt!1372187 suffix!1176 lt!1372222 suffixTokens!72 suffixResult!91))))

(declare-fun b!3929082 () Bool)

(assert (=> b!3929082 (= e!2430689 e!2430698)))

(declare-fun res!1589773 () Bool)

(assert (=> b!3929082 (=> res!1589773 e!2430698)))

(assert (=> b!3929082 (= res!1589773 (or (not (= lt!1372223 lt!1372224)) (not (= lt!1372223 lt!1372212)) (not (= lt!1372211 lt!1372212))))))

(assert (=> b!3929082 (= lt!1372224 lt!1372212)))

(assert (=> b!3929082 (= lt!1372212 (++!10788 lt!1372190 lt!1372227))))

(assert (=> b!3929082 (= lt!1372227 (++!10788 lt!1372187 suffix!1176))))

(declare-fun lt!1372197 () Unit!60127)

(declare-fun lemmaConcatAssociativity!2317 (List!41855 List!41855 List!41855) Unit!60127)

(assert (=> b!3929082 (= lt!1372197 (lemmaConcatAssociativity!2317 lt!1372190 lt!1372187 suffix!1176))))

(declare-fun b!3929083 () Bool)

(declare-fun e!2430706 () Bool)

(assert (=> b!3929083 (= e!2430702 e!2430706)))

(declare-fun res!1589771 () Bool)

(assert (=> b!3929083 (=> res!1589771 e!2430706)))

(declare-fun lt!1372208 () Int)

(declare-fun size!31308 (List!41855) Int)

(assert (=> b!3929083 (= res!1589771 (>= lt!1372208 (size!31308 prefix!426)))))

(assert (=> b!3929083 (isPrefix!3610 lt!1372190 prefix!426)))

(declare-fun lt!1372218 () Unit!60127)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!288 (List!41855 List!41855 List!41855) Unit!60127)

(assert (=> b!3929083 (= lt!1372218 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!288 prefix!426 lt!1372190 lt!1372223))))

(assert (=> b!3929083 (isPrefix!3610 prefix!426 lt!1372223)))

(declare-fun lt!1372192 () Unit!60127)

(assert (=> b!3929083 (= lt!1372192 (lemmaConcatTwoListThenFirstIsPrefix!2473 prefix!426 suffix!1176))))

(declare-fun b!3929084 () Bool)

(declare-fun e!2430707 () Unit!60127)

(declare-fun Unit!60133 () Unit!60127)

(assert (=> b!3929084 (= e!2430707 Unit!60133)))

(declare-fun lt!1372231 () Int)

(assert (=> b!3929084 (= lt!1372231 (size!31308 lt!1372223))))

(declare-fun lt!1372195 () Unit!60127)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1346 (LexerInterface!6104 List!41858 List!41855 List!41855 List!41855 Rule!12830) Unit!60127)

(assert (=> b!3929084 (= lt!1372195 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1346 thiss!20629 rules!2768 lt!1372190 lt!1372223 (_2!23637 (v!39260 lt!1372235)) (rule!9459 (_1!23637 (v!39260 lt!1372235)))))))

(declare-fun lt!1372196 () TokenValue!6745)

(declare-fun maxPrefixOneRule!2478 (LexerInterface!6104 Rule!12830 List!41855) Option!8935)

(assert (=> b!3929084 (= (maxPrefixOneRule!2478 thiss!20629 (rule!9459 (_1!23637 (v!39260 lt!1372235))) lt!1372223) (Some!8934 (tuple2!41007 (Token!12169 lt!1372196 (rule!9459 (_1!23637 (v!39260 lt!1372235))) lt!1372208 lt!1372190) (_2!23637 (v!39260 lt!1372235)))))))

(declare-fun get!13793 (Option!8935) tuple2!41006)

(assert (=> b!3929084 (= lt!1372230 (get!13793 lt!1372235))))

(declare-fun c!682581 () Bool)

(declare-fun lt!1372207 () Int)

(assert (=> b!3929084 (= c!682581 (< (size!31308 (_2!23637 lt!1372230)) lt!1372207))))

(declare-fun lt!1372200 () Unit!60127)

(declare-fun e!2430679 () Unit!60127)

(assert (=> b!3929084 (= lt!1372200 e!2430679)))

(assert (=> b!3929084 false))

(declare-fun b!3929085 () Bool)

(declare-fun Unit!60134 () Unit!60127)

(assert (=> b!3929085 (= e!2430707 Unit!60134)))

(declare-fun b!3929086 () Bool)

(declare-fun e!2430670 () Bool)

(assert (=> b!3929086 (= e!2430678 e!2430670)))

(declare-fun res!1589765 () Bool)

(assert (=> b!3929086 (=> res!1589765 e!2430670)))

(declare-fun lt!1372229 () tuple2!41008)

(declare-fun lt!1372209 () tuple2!41008)

(assert (=> b!3929086 (= res!1589765 (not (= lt!1372229 lt!1372209)))))

(declare-fun lt!1372216 () List!41857)

(assert (=> b!3929086 (= lt!1372209 (tuple2!41009 lt!1372216 suffixResult!91))))

(assert (=> b!3929086 (= lt!1372216 (++!10787 lt!1372222 suffixTokens!72))))

(declare-fun tail!6066 (List!41857) List!41857)

(assert (=> b!3929086 (= lt!1372222 (tail!6066 prefixTokens!80))))

(assert (=> b!3929086 (isPrefix!3610 lt!1372187 lt!1372227)))

(declare-fun lt!1372203 () Unit!60127)

(assert (=> b!3929086 (= lt!1372203 (lemmaConcatTwoListThenFirstIsPrefix!2473 lt!1372187 suffix!1176))))

(declare-fun e!2430710 () Bool)

(assert (=> b!3929087 (= e!2430710 (and tp!1196236 tp!1196230))))

(declare-fun b!3929088 () Bool)

(declare-fun e!2430701 () Bool)

(declare-fun e!2430681 () Bool)

(declare-fun tp!1196233 () Bool)

(declare-fun inv!21 (TokenValue!6745) Bool)

(assert (=> b!3929088 (= e!2430681 (and (inv!21 (value!206313 (h!47153 prefixTokens!80))) e!2430701 tp!1196233))))

(declare-fun b!3929089 () Bool)

(declare-fun e!2430694 () Bool)

(assert (=> b!3929089 (= e!2430694 (= (size!31307 (_1!23637 (v!39260 lt!1372235))) (size!31308 (originalCharacters!7115 (_1!23637 (v!39260 lt!1372235))))))))

(declare-fun b!3929090 () Bool)

(declare-fun e!2430671 () Bool)

(declare-fun tp_is_empty!19811 () Bool)

(declare-fun tp!1196238 () Bool)

(assert (=> b!3929090 (= e!2430671 (and tp_is_empty!19811 tp!1196238))))

(declare-fun b!3929091 () Bool)

(declare-fun res!1589758 () Bool)

(assert (=> b!3929091 (=> res!1589758 e!2430695)))

(assert (=> b!3929091 (= res!1589758 (not (= (lexList!1872 thiss!20629 rules!2768 lt!1372227) lt!1372209)))))

(declare-fun tp!1196234 () Bool)

(declare-fun e!2430700 () Bool)

(declare-fun b!3929092 () Bool)

(assert (=> b!3929092 (= e!2430676 (and (inv!21 (value!206313 (h!47153 suffixTokens!72))) e!2430700 tp!1196234))))

(declare-fun e!2430684 () Bool)

(assert (=> b!3929093 (= e!2430684 (and tp!1196225 tp!1196227))))

(declare-fun b!3929094 () Bool)

(assert (=> b!3929094 (= e!2430675 false)))

(declare-fun b!3929095 () Bool)

(declare-fun e!2430669 () Bool)

(assert (=> b!3929095 (= e!2430709 e!2430669)))

(declare-fun res!1589768 () Bool)

(assert (=> b!3929095 (=> (not res!1589768) (not e!2430669))))

(declare-fun lt!1372233 () tuple2!41008)

(assert (=> b!3929095 (= res!1589768 (= (lexList!1872 thiss!20629 rules!2768 suffix!1176) lt!1372233))))

(assert (=> b!3929095 (= lt!1372233 (tuple2!41009 suffixTokens!72 suffixResult!91))))

(declare-fun b!3929096 () Bool)

(declare-fun Unit!60135 () Unit!60127)

(assert (=> b!3929096 (= e!2430697 Unit!60135)))

(declare-fun b!3929097 () Bool)

(declare-fun e!2430692 () Bool)

(declare-fun tp!1196239 () Bool)

(assert (=> b!3929097 (= e!2430692 (and tp_is_empty!19811 tp!1196239))))

(declare-fun b!3929098 () Bool)

(declare-fun e!2430687 () Bool)

(declare-fun e!2430691 () Bool)

(assert (=> b!3929098 (= e!2430687 (not e!2430691))))

(declare-fun res!1589755 () Bool)

(assert (=> b!3929098 (=> res!1589755 e!2430691)))

(assert (=> b!3929098 (= res!1589755 (not (= lt!1372211 lt!1372223)))))

(assert (=> b!3929098 (= lt!1372229 (lexList!1872 thiss!20629 rules!2768 (_2!23637 (v!39260 lt!1372235))))))

(declare-fun lt!1372206 () List!41855)

(assert (=> b!3929098 (and (= (size!31307 (_1!23637 (v!39260 lt!1372235))) lt!1372208) (= (originalCharacters!7115 (_1!23637 (v!39260 lt!1372235))) lt!1372190) (= (tuple2!41007 (_1!23637 (v!39260 lt!1372235)) (_2!23637 (v!39260 lt!1372235))) (tuple2!41007 (Token!12169 lt!1372196 (rule!9459 (_1!23637 (v!39260 lt!1372235))) lt!1372208 lt!1372190) lt!1372206)))))

(assert (=> b!3929098 (= lt!1372208 (size!31308 lt!1372190))))

(assert (=> b!3929098 e!2430694))

(declare-fun res!1589751 () Bool)

(assert (=> b!3929098 (=> (not res!1589751) (not e!2430694))))

(assert (=> b!3929098 (= res!1589751 (= (value!206313 (_1!23637 (v!39260 lt!1372235))) lt!1372196))))

(declare-fun apply!9754 (TokenValueInjection!12918 BalanceConc!25046) TokenValue!6745)

(declare-fun seqFromList!4782 (List!41855) BalanceConc!25046)

(assert (=> b!3929098 (= lt!1372196 (apply!9754 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))) (seqFromList!4782 lt!1372190)))))

(assert (=> b!3929098 (= (_2!23637 (v!39260 lt!1372235)) lt!1372206)))

(declare-fun lt!1372228 () Unit!60127)

(assert (=> b!3929098 (= lt!1372228 (lemmaSamePrefixThenSameSuffix!1831 lt!1372190 (_2!23637 (v!39260 lt!1372235)) lt!1372190 lt!1372206 lt!1372223))))

(declare-fun getSuffix!2065 (List!41855 List!41855) List!41855)

(assert (=> b!3929098 (= lt!1372206 (getSuffix!2065 lt!1372223 lt!1372190))))

(assert (=> b!3929098 (isPrefix!3610 lt!1372190 lt!1372211)))

(assert (=> b!3929098 (= lt!1372211 (++!10788 lt!1372190 (_2!23637 (v!39260 lt!1372235))))))

(declare-fun lt!1372219 () Unit!60127)

(assert (=> b!3929098 (= lt!1372219 (lemmaConcatTwoListThenFirstIsPrefix!2473 lt!1372190 (_2!23637 (v!39260 lt!1372235))))))

(declare-fun list!15504 (BalanceConc!25046) List!41855)

(declare-fun charsOf!4339 (Token!12168) BalanceConc!25046)

(assert (=> b!3929098 (= lt!1372190 (list!15504 (charsOf!4339 (_1!23637 (v!39260 lt!1372235)))))))

(declare-fun ruleValid!2463 (LexerInterface!6104 Rule!12830) Bool)

(assert (=> b!3929098 (ruleValid!2463 thiss!20629 (rule!9459 (_1!23637 (v!39260 lt!1372235))))))

(declare-fun lt!1372188 () Unit!60127)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1543 (LexerInterface!6104 Rule!12830 List!41858) Unit!60127)

(assert (=> b!3929098 (= lt!1372188 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1543 thiss!20629 (rule!9459 (_1!23637 (v!39260 lt!1372235))) rules!2768))))

(declare-fun lt!1372186 () Unit!60127)

(declare-fun lemmaCharactersSize!1172 (Token!12168) Unit!60127)

(assert (=> b!3929098 (= lt!1372186 (lemmaCharactersSize!1172 (_1!23637 (v!39260 lt!1372235))))))

(declare-fun b!3929099 () Bool)

(declare-fun res!1589766 () Bool)

(assert (=> b!3929099 (=> (not res!1589766) (not e!2430690))))

(declare-fun isEmpty!24876 (List!41858) Bool)

(assert (=> b!3929099 (= res!1589766 (not (isEmpty!24876 rules!2768)))))

(declare-fun b!3929100 () Bool)

(declare-fun Unit!60136 () Unit!60127)

(assert (=> b!3929100 (= e!2430688 Unit!60136)))

(declare-fun b!3929101 () Bool)

(declare-fun res!1589757 () Bool)

(declare-fun e!2430685 () Bool)

(assert (=> b!3929101 (=> res!1589757 e!2430685)))

(assert (=> b!3929101 (= res!1589757 (or (not (= lt!1372229 (tuple2!41009 (_1!23638 lt!1372229) (_2!23638 lt!1372229)))) (= (_2!23637 (v!39260 lt!1372235)) suffix!1176)))))

(declare-fun b!3929102 () Bool)

(declare-fun res!1589769 () Bool)

(assert (=> b!3929102 (=> (not res!1589769) (not e!2430690))))

(declare-fun rulesInvariant!5447 (LexerInterface!6104 List!41858) Bool)

(assert (=> b!3929102 (= res!1589769 (rulesInvariant!5447 thiss!20629 rules!2768))))

(declare-fun b!3929103 () Bool)

(declare-fun e!2430677 () Bool)

(declare-fun tp!1196226 () Bool)

(assert (=> b!3929103 (= e!2430677 (and tp_is_empty!19811 tp!1196226))))

(declare-fun b!3929104 () Bool)

(assert (=> b!3929104 (= e!2430670 e!2430695)))

(declare-fun res!1589753 () Bool)

(assert (=> b!3929104 (=> res!1589753 e!2430695)))

(declare-fun lt!1372204 () List!41857)

(assert (=> b!3929104 (= res!1589753 (not (= lt!1372204 lt!1372226)))))

(declare-fun lt!1372210 () List!41857)

(assert (=> b!3929104 (= lt!1372204 (++!10787 lt!1372210 lt!1372216))))

(assert (=> b!3929104 (= lt!1372204 (++!10787 (++!10787 lt!1372210 lt!1372222) suffixTokens!72))))

(declare-fun lt!1372205 () Unit!60127)

(declare-fun lemmaConcatAssociativity!2318 (List!41857 List!41857 List!41857) Unit!60127)

(assert (=> b!3929104 (= lt!1372205 (lemmaConcatAssociativity!2318 lt!1372210 lt!1372222 suffixTokens!72))))

(declare-fun lt!1372201 () Unit!60127)

(assert (=> b!3929104 (= lt!1372201 e!2430697)))

(declare-fun c!682584 () Bool)

(declare-fun isEmpty!24877 (List!41857) Bool)

(assert (=> b!3929104 (= c!682584 (isEmpty!24877 lt!1372222))))

(declare-fun e!2430680 () Bool)

(assert (=> b!3929105 (= e!2430680 (and tp!1196235 tp!1196232))))

(declare-fun b!3929106 () Bool)

(declare-fun res!1589776 () Bool)

(assert (=> b!3929106 (=> (not res!1589776) (not e!2430690))))

(assert (=> b!3929106 (= res!1589776 (not (isEmpty!24875 prefix!426)))))

(declare-fun b!3929107 () Bool)

(declare-fun c!682583 () Bool)

(assert (=> b!3929107 (= c!682583 (isEmpty!24877 lt!1372217))))

(assert (=> b!3929107 (= lt!1372217 (tail!6066 prefixTokens!80))))

(assert (=> b!3929107 (= e!2430679 e!2430682)))

(declare-fun tp!1196237 () Bool)

(declare-fun b!3929108 () Bool)

(declare-fun inv!55921 (String!47444) Bool)

(declare-fun inv!55925 (TokenValueInjection!12918) Bool)

(assert (=> b!3929108 (= e!2430699 (and tp!1196237 (inv!55921 (tag!7375 (h!47154 rules!2768))) (inv!55925 (transformation!6515 (h!47154 rules!2768))) e!2430684))))

(declare-fun b!3929109 () Bool)

(declare-fun tp!1196241 () Bool)

(assert (=> b!3929109 (= e!2430700 (and tp!1196241 (inv!55921 (tag!7375 (rule!9459 (h!47153 suffixTokens!72)))) (inv!55925 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) e!2430680))))

(declare-fun b!3929110 () Bool)

(declare-fun tp!1196228 () Bool)

(declare-fun e!2430673 () Bool)

(assert (=> b!3929110 (= e!2430673 (and (inv!55924 (h!47153 prefixTokens!80)) e!2430681 tp!1196228))))

(declare-fun b!3929111 () Bool)

(assert (=> b!3929111 (= e!2430669 e!2430687)))

(declare-fun res!1589759 () Bool)

(assert (=> b!3929111 (=> (not res!1589759) (not e!2430687))))

(assert (=> b!3929111 (= res!1589759 (is-Some!8934 lt!1372235))))

(declare-fun maxPrefix!3408 (LexerInterface!6104 List!41858 List!41855) Option!8935)

(assert (=> b!3929111 (= lt!1372235 (maxPrefix!3408 thiss!20629 rules!2768 lt!1372223))))

(declare-fun b!3929077 () Bool)

(declare-fun Unit!60137 () Unit!60127)

(assert (=> b!3929077 (= e!2430679 Unit!60137)))

(declare-fun res!1589774 () Bool)

(assert (=> start!368534 (=> (not res!1589774) (not e!2430690))))

(assert (=> start!368534 (= res!1589774 (is-Lexer!6102 thiss!20629))))

(assert (=> start!368534 e!2430690))

(assert (=> start!368534 e!2430677))

(assert (=> start!368534 true))

(assert (=> start!368534 e!2430671))

(assert (=> start!368534 e!2430693))

(assert (=> start!368534 e!2430673))

(assert (=> start!368534 e!2430672))

(assert (=> start!368534 e!2430692))

(declare-fun b!3929112 () Bool)

(assert (=> b!3929112 (= e!2430685 e!2430702)))

(declare-fun res!1589772 () Bool)

(assert (=> b!3929112 (=> res!1589772 e!2430702)))

(declare-fun lt!1372234 () Int)

(assert (=> b!3929112 (= res!1589772 (<= lt!1372234 lt!1372207))))

(declare-fun lt!1372191 () Unit!60127)

(assert (=> b!3929112 (= lt!1372191 e!2430688)))

(declare-fun c!682585 () Bool)

(assert (=> b!3929112 (= c!682585 (= lt!1372234 lt!1372207))))

(declare-fun lt!1372232 () Unit!60127)

(assert (=> b!3929112 (= lt!1372232 e!2430707)))

(declare-fun c!682582 () Bool)

(assert (=> b!3929112 (= c!682582 (< lt!1372234 lt!1372207))))

(assert (=> b!3929112 (= lt!1372207 (size!31308 suffix!1176))))

(assert (=> b!3929112 (= lt!1372234 (size!31308 (_2!23637 (v!39260 lt!1372235))))))

(declare-fun tp!1196240 () Bool)

(declare-fun b!3929113 () Bool)

(assert (=> b!3929113 (= e!2430701 (and tp!1196240 (inv!55921 (tag!7375 (rule!9459 (h!47153 prefixTokens!80)))) (inv!55925 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) e!2430710))))

(declare-fun b!3929114 () Bool)

(assert (=> b!3929114 (= e!2430706 e!2430704)))

(declare-fun res!1589761 () Bool)

(assert (=> b!3929114 (=> res!1589761 e!2430704)))

(assert (=> b!3929114 (= res!1589761 (not (= lt!1372193 prefix!426)))))

(assert (=> b!3929114 (= lt!1372193 (++!10788 lt!1372190 lt!1372187))))

(assert (=> b!3929114 (= lt!1372187 (getSuffix!2065 prefix!426 lt!1372190))))

(declare-fun b!3929115 () Bool)

(declare-fun Unit!60138 () Unit!60127)

(assert (=> b!3929115 (= e!2430682 Unit!60138)))

(declare-fun lt!1372214 () Unit!60127)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!563 (List!41855 List!41855 List!41855 List!41855) Unit!60127)

(assert (=> b!3929115 (= lt!1372214 (lemmaConcatSameAndSameSizesThenSameLists!563 lt!1372190 (_2!23637 (v!39260 lt!1372235)) lt!1372190 (_2!23637 lt!1372230)))))

(assert (=> b!3929115 (= (_2!23637 (v!39260 lt!1372235)) (_2!23637 lt!1372230))))

(declare-fun lt!1372215 () Unit!60127)

(assert (=> b!3929115 (= lt!1372215 (lemmaLexWithSmallerInputCannotProduceSameResults!115 thiss!20629 rules!2768 suffix!1176 (_2!23637 lt!1372230) suffixTokens!72 suffixResult!91))))

(declare-fun res!1589775 () Bool)

(assert (=> b!3929115 (= res!1589775 (not (= call!284767 lt!1372233)))))

(assert (=> b!3929115 (=> (not res!1589775) (not e!2430683))))

(assert (=> b!3929115 e!2430683))

(declare-fun b!3929116 () Bool)

(assert (=> b!3929116 (= e!2430691 e!2430685)))

(declare-fun res!1589764 () Bool)

(assert (=> b!3929116 (=> res!1589764 e!2430685)))

(assert (=> b!3929116 (= res!1589764 (not (= lt!1372199 (tuple2!41009 (++!10787 lt!1372210 (_1!23638 lt!1372229)) (_2!23638 lt!1372229)))))))

(assert (=> b!3929116 (= lt!1372210 (Cons!41733 (_1!23637 (v!39260 lt!1372235)) Nil!41733))))

(declare-fun b!3929117 () Bool)

(declare-fun res!1589754 () Bool)

(assert (=> b!3929117 (=> (not res!1589754) (not e!2430690))))

(assert (=> b!3929117 (= res!1589754 (not (isEmpty!24877 prefixTokens!80)))))

(declare-fun b!3929118 () Bool)

(assert (=> b!3929118 (= e!2430696 (isEmpty!24877 suffixTokens!72))))

(assert (= (and start!368534 res!1589774) b!3929099))

(assert (= (and b!3929099 res!1589766) b!3929102))

(assert (= (and b!3929102 res!1589769) b!3929117))

(assert (= (and b!3929117 res!1589754) b!3929106))

(assert (= (and b!3929106 res!1589776) b!3929076))

(assert (= (and b!3929076 res!1589752) b!3929095))

(assert (= (and b!3929095 res!1589768) b!3929111))

(assert (= (and b!3929111 res!1589759) b!3929098))

(assert (= (and b!3929098 res!1589751) b!3929089))

(assert (= (and b!3929098 (not res!1589755)) b!3929116))

(assert (= (and b!3929116 (not res!1589764)) b!3929101))

(assert (= (and b!3929101 (not res!1589757)) b!3929112))

(assert (= (and b!3929112 c!682582) b!3929084))

(assert (= (and b!3929112 (not c!682582)) b!3929085))

(assert (= (and b!3929084 c!682581) b!3929107))

(assert (= (and b!3929084 (not c!682581)) b!3929077))

(assert (= (and b!3929107 c!682583) b!3929115))

(assert (= (and b!3929107 (not c!682583)) b!3929073))

(assert (= (and b!3929115 res!1589775) b!3929069))

(assert (= (and b!3929073 res!1589762) b!3929094))

(assert (= (or b!3929115 b!3929073) bm!284762))

(assert (= (and b!3929112 c!682585) b!3929070))

(assert (= (and b!3929112 (not c!682585)) b!3929100))

(assert (= (and b!3929112 (not res!1589772)) b!3929071))

(assert (= (and b!3929071 (not res!1589756)) b!3929083))

(assert (= (and b!3929083 (not res!1589771)) b!3929114))

(assert (= (and b!3929114 (not res!1589761)) b!3929079))

(assert (= (and b!3929079 (not res!1589763)) b!3929082))

(assert (= (and b!3929082 (not res!1589773)) b!3929075))

(assert (= (and b!3929075 (not res!1589770)) b!3929086))

(assert (= (and b!3929086 (not res!1589765)) b!3929104))

(assert (= (and b!3929104 c!682584) b!3929072))

(assert (= (and b!3929104 (not c!682584)) b!3929096))

(assert (= (and b!3929104 (not res!1589753)) b!3929091))

(assert (= (and b!3929091 (not res!1589758)) b!3929081))

(assert (= (and b!3929081 (not res!1589767)) b!3929074))

(assert (= (and b!3929074 (not res!1589760)) b!3929118))

(assert (= (and start!368534 (is-Cons!41731 suffixResult!91)) b!3929103))

(assert (= (and start!368534 (is-Cons!41731 suffix!1176)) b!3929090))

(assert (= b!3929108 b!3929093))

(assert (= b!3929078 b!3929108))

(assert (= (and start!368534 (is-Cons!41734 rules!2768)) b!3929078))

(assert (= b!3929113 b!3929087))

(assert (= b!3929088 b!3929113))

(assert (= b!3929110 b!3929088))

(assert (= (and start!368534 (is-Cons!41733 prefixTokens!80)) b!3929110))

(assert (= b!3929109 b!3929105))

(assert (= b!3929092 b!3929109))

(assert (= b!3929080 b!3929092))

(assert (= (and start!368534 (is-Cons!41733 suffixTokens!72)) b!3929080))

(assert (= (and start!368534 (is-Cons!41731 prefix!426)) b!3929097))

(declare-fun m!4493965 () Bool)

(assert (=> b!3929116 m!4493965))

(declare-fun m!4493967 () Bool)

(assert (=> b!3929112 m!4493967))

(declare-fun m!4493969 () Bool)

(assert (=> b!3929112 m!4493969))

(declare-fun m!4493971 () Bool)

(assert (=> b!3929073 m!4493971))

(declare-fun m!4493973 () Bool)

(assert (=> b!3929073 m!4493973))

(declare-fun m!4493975 () Bool)

(assert (=> b!3929117 m!4493975))

(declare-fun m!4493977 () Bool)

(assert (=> b!3929072 m!4493977))

(declare-fun m!4493979 () Bool)

(assert (=> b!3929074 m!4493979))

(declare-fun m!4493981 () Bool)

(assert (=> b!3929076 m!4493981))

(declare-fun m!4493983 () Bool)

(assert (=> b!3929076 m!4493983))

(declare-fun m!4493985 () Bool)

(assert (=> b!3929076 m!4493985))

(declare-fun m!4493987 () Bool)

(assert (=> b!3929104 m!4493987))

(declare-fun m!4493989 () Bool)

(assert (=> b!3929104 m!4493989))

(declare-fun m!4493991 () Bool)

(assert (=> b!3929104 m!4493991))

(assert (=> b!3929104 m!4493989))

(declare-fun m!4493993 () Bool)

(assert (=> b!3929104 m!4493993))

(declare-fun m!4493995 () Bool)

(assert (=> b!3929104 m!4493995))

(declare-fun m!4493997 () Bool)

(assert (=> b!3929080 m!4493997))

(declare-fun m!4493999 () Bool)

(assert (=> b!3929110 m!4493999))

(declare-fun m!4494001 () Bool)

(assert (=> b!3929118 m!4494001))

(declare-fun m!4494003 () Bool)

(assert (=> b!3929075 m!4494003))

(declare-fun m!4494005 () Bool)

(assert (=> b!3929075 m!4494005))

(declare-fun m!4494007 () Bool)

(assert (=> b!3929075 m!4494007))

(declare-fun m!4494009 () Bool)

(assert (=> b!3929092 m!4494009))

(declare-fun m!4494011 () Bool)

(assert (=> b!3929083 m!4494011))

(declare-fun m!4494013 () Bool)

(assert (=> b!3929083 m!4494013))

(declare-fun m!4494015 () Bool)

(assert (=> b!3929083 m!4494015))

(declare-fun m!4494017 () Bool)

(assert (=> b!3929083 m!4494017))

(declare-fun m!4494019 () Bool)

(assert (=> b!3929083 m!4494019))

(declare-fun m!4494021 () Bool)

(assert (=> b!3929114 m!4494021))

(declare-fun m!4494023 () Bool)

(assert (=> b!3929114 m!4494023))

(declare-fun m!4494025 () Bool)

(assert (=> b!3929099 m!4494025))

(declare-fun m!4494027 () Bool)

(assert (=> b!3929079 m!4494027))

(declare-fun m!4494029 () Bool)

(assert (=> b!3929081 m!4494029))

(declare-fun m!4494031 () Bool)

(assert (=> b!3929081 m!4494031))

(declare-fun m!4494033 () Bool)

(assert (=> b!3929106 m!4494033))

(declare-fun m!4494035 () Bool)

(assert (=> bm!284762 m!4494035))

(declare-fun m!4494037 () Bool)

(assert (=> b!3929102 m!4494037))

(declare-fun m!4494039 () Bool)

(assert (=> b!3929107 m!4494039))

(declare-fun m!4494041 () Bool)

(assert (=> b!3929107 m!4494041))

(declare-fun m!4494043 () Bool)

(assert (=> b!3929084 m!4494043))

(declare-fun m!4494045 () Bool)

(assert (=> b!3929084 m!4494045))

(declare-fun m!4494047 () Bool)

(assert (=> b!3929084 m!4494047))

(declare-fun m!4494049 () Bool)

(assert (=> b!3929084 m!4494049))

(declare-fun m!4494051 () Bool)

(assert (=> b!3929084 m!4494051))

(declare-fun m!4494053 () Bool)

(assert (=> b!3929108 m!4494053))

(declare-fun m!4494055 () Bool)

(assert (=> b!3929108 m!4494055))

(declare-fun m!4494057 () Bool)

(assert (=> b!3929115 m!4494057))

(declare-fun m!4494059 () Bool)

(assert (=> b!3929115 m!4494059))

(declare-fun m!4494061 () Bool)

(assert (=> b!3929082 m!4494061))

(declare-fun m!4494063 () Bool)

(assert (=> b!3929082 m!4494063))

(declare-fun m!4494065 () Bool)

(assert (=> b!3929082 m!4494065))

(declare-fun m!4494067 () Bool)

(assert (=> b!3929089 m!4494067))

(declare-fun m!4494069 () Bool)

(assert (=> b!3929111 m!4494069))

(declare-fun m!4494071 () Bool)

(assert (=> b!3929095 m!4494071))

(declare-fun m!4494073 () Bool)

(assert (=> b!3929088 m!4494073))

(declare-fun m!4494075 () Bool)

(assert (=> b!3929071 m!4494075))

(declare-fun m!4494077 () Bool)

(assert (=> b!3929091 m!4494077))

(declare-fun m!4494079 () Bool)

(assert (=> b!3929113 m!4494079))

(declare-fun m!4494081 () Bool)

(assert (=> b!3929113 m!4494081))

(declare-fun m!4494083 () Bool)

(assert (=> b!3929098 m!4494083))

(declare-fun m!4494085 () Bool)

(assert (=> b!3929098 m!4494085))

(declare-fun m!4494087 () Bool)

(assert (=> b!3929098 m!4494087))

(declare-fun m!4494089 () Bool)

(assert (=> b!3929098 m!4494089))

(declare-fun m!4494091 () Bool)

(assert (=> b!3929098 m!4494091))

(declare-fun m!4494093 () Bool)

(assert (=> b!3929098 m!4494093))

(declare-fun m!4494095 () Bool)

(assert (=> b!3929098 m!4494095))

(declare-fun m!4494097 () Bool)

(assert (=> b!3929098 m!4494097))

(assert (=> b!3929098 m!4494091))

(declare-fun m!4494099 () Bool)

(assert (=> b!3929098 m!4494099))

(declare-fun m!4494101 () Bool)

(assert (=> b!3929098 m!4494101))

(declare-fun m!4494103 () Bool)

(assert (=> b!3929098 m!4494103))

(declare-fun m!4494105 () Bool)

(assert (=> b!3929098 m!4494105))

(declare-fun m!4494107 () Bool)

(assert (=> b!3929098 m!4494107))

(declare-fun m!4494109 () Bool)

(assert (=> b!3929098 m!4494109))

(assert (=> b!3929098 m!4494093))

(declare-fun m!4494111 () Bool)

(assert (=> b!3929086 m!4494111))

(assert (=> b!3929086 m!4494041))

(declare-fun m!4494113 () Bool)

(assert (=> b!3929086 m!4494113))

(declare-fun m!4494115 () Bool)

(assert (=> b!3929086 m!4494115))

(assert (=> b!3929070 m!4494013))

(assert (=> b!3929070 m!4494017))

(declare-fun m!4494117 () Bool)

(assert (=> b!3929070 m!4494117))

(declare-fun m!4494119 () Bool)

(assert (=> b!3929070 m!4494119))

(declare-fun m!4494121 () Bool)

(assert (=> b!3929109 m!4494121))

(declare-fun m!4494123 () Bool)

(assert (=> b!3929109 m!4494123))

(push 1)

(assert (not b!3929098))

(assert b_and!299731)

(assert (not b!3929079))

(assert (not b!3929086))

(assert (not b!3929088))

(assert (not b!3929074))

(assert b_and!299725)

(assert tp_is_empty!19811)

(assert (not b!3929102))

(assert (not b!3929107))

(assert (not b_next!107939))

(assert (not b!3929097))

(assert (not b!3929070))

(assert (not b!3929112))

(assert (not b!3929091))

(assert (not b!3929103))

(assert (not b!3929110))

(assert (not b!3929118))

(assert (not b!3929104))

(assert (not b!3929092))

(assert (not b!3929078))

(assert b_and!299727)

(assert (not bm!284762))

(assert (not b_next!107937))

(assert (not b!3929076))

(assert b_and!299723)

(assert (not b!3929081))

(assert (not b!3929075))

(assert (not b!3929117))

(assert (not b!3929071))

(assert (not b!3929072))

(assert (not b!3929073))

(assert (not b!3929084))

(assert (not b!3929083))

(assert (not b!3929089))

(assert (not b!3929106))

(assert (not b!3929108))

(assert (not b!3929080))

(assert (not b!3929109))

(assert (not b!3929111))

(assert b_and!299733)

(assert (not b_next!107931))

(assert (not b_next!107935))

(assert (not b!3929113))

(assert (not b!3929082))

(assert (not b_next!107933))

(assert (not b!3929090))

(assert (not b!3929099))

(assert (not b!3929116))

(assert (not b!3929115))

(assert (not b!3929114))

(assert b_and!299729)

(assert (not b_next!107929))

(assert (not b!3929095))

(check-sat)

(pop 1)

(push 1)

(assert b_and!299731)

(assert (not b_next!107939))

(assert b_and!299727)

(assert (not b_next!107937))

(assert b_and!299723)

(assert b_and!299733)

(assert (not b_next!107933))

(assert b_and!299729)

(assert (not b_next!107929))

(assert b_and!299725)

(assert (not b_next!107931))

(assert (not b_next!107935))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1164465 () Bool)

(assert (=> d!1164465 (= (isEmpty!24876 rules!2768) (is-Nil!41734 rules!2768))))

(assert (=> b!3929099 d!1164465))

(declare-fun d!1164467 () Bool)

(declare-fun list!15506 (Conc!12726) List!41855)

(assert (=> d!1164467 (= (list!15504 (charsOf!4339 (_1!23637 (v!39260 lt!1372235)))) (list!15506 (c!682587 (charsOf!4339 (_1!23637 (v!39260 lt!1372235))))))))

(declare-fun bs!586093 () Bool)

(assert (= bs!586093 d!1164467))

(declare-fun m!4494285 () Bool)

(assert (=> bs!586093 m!4494285))

(assert (=> b!3929098 d!1164467))

(declare-fun d!1164469 () Bool)

(declare-fun lt!1372388 () List!41855)

(assert (=> d!1164469 (= (++!10788 lt!1372190 lt!1372388) lt!1372223)))

(declare-fun e!2430839 () List!41855)

(assert (=> d!1164469 (= lt!1372388 e!2430839)))

(declare-fun c!682608 () Bool)

(assert (=> d!1164469 (= c!682608 (is-Cons!41731 lt!1372190))))

(assert (=> d!1164469 (>= (size!31308 lt!1372223) (size!31308 lt!1372190))))

(assert (=> d!1164469 (= (getSuffix!2065 lt!1372223 lt!1372190) lt!1372388)))

(declare-fun b!3929273 () Bool)

(declare-fun tail!6068 (List!41855) List!41855)

(assert (=> b!3929273 (= e!2430839 (getSuffix!2065 (tail!6068 lt!1372223) (t!325278 lt!1372190)))))

(declare-fun b!3929274 () Bool)

(assert (=> b!3929274 (= e!2430839 lt!1372223)))

(assert (= (and d!1164469 c!682608) b!3929273))

(assert (= (and d!1164469 (not c!682608)) b!3929274))

(declare-fun m!4494287 () Bool)

(assert (=> d!1164469 m!4494287))

(assert (=> d!1164469 m!4494049))

(assert (=> d!1164469 m!4494105))

(declare-fun m!4494289 () Bool)

(assert (=> b!3929273 m!4494289))

(assert (=> b!3929273 m!4494289))

(declare-fun m!4494291 () Bool)

(assert (=> b!3929273 m!4494291))

(assert (=> b!3929098 d!1164469))

(declare-fun d!1164471 () Bool)

(assert (=> d!1164471 (ruleValid!2463 thiss!20629 (rule!9459 (_1!23637 (v!39260 lt!1372235))))))

(declare-fun lt!1372391 () Unit!60127)

(declare-fun choose!23349 (LexerInterface!6104 Rule!12830 List!41858) Unit!60127)

(assert (=> d!1164471 (= lt!1372391 (choose!23349 thiss!20629 (rule!9459 (_1!23637 (v!39260 lt!1372235))) rules!2768))))

(declare-fun contains!8362 (List!41858 Rule!12830) Bool)

(assert (=> d!1164471 (contains!8362 rules!2768 (rule!9459 (_1!23637 (v!39260 lt!1372235))))))

(assert (=> d!1164471 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1543 thiss!20629 (rule!9459 (_1!23637 (v!39260 lt!1372235))) rules!2768) lt!1372391)))

(declare-fun bs!586094 () Bool)

(assert (= bs!586094 d!1164471))

(assert (=> bs!586094 m!4494109))

(declare-fun m!4494293 () Bool)

(assert (=> bs!586094 m!4494293))

(declare-fun m!4494295 () Bool)

(assert (=> bs!586094 m!4494295))

(assert (=> b!3929098 d!1164471))

(declare-fun d!1164473 () Bool)

(assert (=> d!1164473 (isPrefix!3610 lt!1372190 (++!10788 lt!1372190 (_2!23637 (v!39260 lt!1372235))))))

(declare-fun lt!1372394 () Unit!60127)

(declare-fun choose!23350 (List!41855 List!41855) Unit!60127)

(assert (=> d!1164473 (= lt!1372394 (choose!23350 lt!1372190 (_2!23637 (v!39260 lt!1372235))))))

(assert (=> d!1164473 (= (lemmaConcatTwoListThenFirstIsPrefix!2473 lt!1372190 (_2!23637 (v!39260 lt!1372235))) lt!1372394)))

(declare-fun bs!586095 () Bool)

(assert (= bs!586095 d!1164473))

(assert (=> bs!586095 m!4494087))

(assert (=> bs!586095 m!4494087))

(declare-fun m!4494297 () Bool)

(assert (=> bs!586095 m!4494297))

(declare-fun m!4494299 () Bool)

(assert (=> bs!586095 m!4494299))

(assert (=> b!3929098 d!1164473))

(declare-fun d!1164475 () Bool)

(assert (=> d!1164475 (= (size!31307 (_1!23637 (v!39260 lt!1372235))) (size!31308 (originalCharacters!7115 (_1!23637 (v!39260 lt!1372235)))))))

(declare-fun Unit!60151 () Unit!60127)

(assert (=> d!1164475 (= (lemmaCharactersSize!1172 (_1!23637 (v!39260 lt!1372235))) Unit!60151)))

(declare-fun bs!586096 () Bool)

(assert (= bs!586096 d!1164475))

(assert (=> bs!586096 m!4494067))

(assert (=> b!3929098 d!1164475))

(declare-fun d!1164477 () Bool)

(declare-fun lt!1372397 () Int)

(assert (=> d!1164477 (>= lt!1372397 0)))

(declare-fun e!2430842 () Int)

(assert (=> d!1164477 (= lt!1372397 e!2430842)))

(declare-fun c!682611 () Bool)

(assert (=> d!1164477 (= c!682611 (is-Nil!41731 lt!1372190))))

(assert (=> d!1164477 (= (size!31308 lt!1372190) lt!1372397)))

(declare-fun b!3929279 () Bool)

(assert (=> b!3929279 (= e!2430842 0)))

(declare-fun b!3929280 () Bool)

(assert (=> b!3929280 (= e!2430842 (+ 1 (size!31308 (t!325278 lt!1372190))))))

(assert (= (and d!1164477 c!682611) b!3929279))

(assert (= (and d!1164477 (not c!682611)) b!3929280))

(declare-fun m!4494301 () Bool)

(assert (=> b!3929280 m!4494301))

(assert (=> b!3929098 d!1164477))

(declare-fun d!1164479 () Bool)

(declare-fun lt!1372400 () BalanceConc!25046)

(assert (=> d!1164479 (= (list!15504 lt!1372400) (originalCharacters!7115 (_1!23637 (v!39260 lt!1372235))))))

(declare-fun dynLambda!17875 (Int TokenValue!6745) BalanceConc!25046)

(assert (=> d!1164479 (= lt!1372400 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))) (value!206313 (_1!23637 (v!39260 lt!1372235)))))))

(assert (=> d!1164479 (= (charsOf!4339 (_1!23637 (v!39260 lt!1372235))) lt!1372400)))

(declare-fun b_lambda!114943 () Bool)

(assert (=> (not b_lambda!114943) (not d!1164479)))

(declare-fun tb!234701 () Bool)

(declare-fun t!325287 () Bool)

(assert (=> (and b!3929093 (= (toChars!8826 (transformation!6515 (h!47154 rules!2768))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))) t!325287) tb!234701))

(declare-fun b!3929285 () Bool)

(declare-fun e!2430845 () Bool)

(declare-fun tp!1196295 () Bool)

(declare-fun inv!55928 (Conc!12726) Bool)

(assert (=> b!3929285 (= e!2430845 (and (inv!55928 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))) (value!206313 (_1!23637 (v!39260 lt!1372235)))))) tp!1196295))))

(declare-fun result!284422 () Bool)

(declare-fun inv!55929 (BalanceConc!25046) Bool)

(assert (=> tb!234701 (= result!284422 (and (inv!55929 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))) (value!206313 (_1!23637 (v!39260 lt!1372235))))) e!2430845))))

(assert (= tb!234701 b!3929285))

(declare-fun m!4494303 () Bool)

(assert (=> b!3929285 m!4494303))

(declare-fun m!4494305 () Bool)

(assert (=> tb!234701 m!4494305))

(assert (=> d!1164479 t!325287))

(declare-fun b_and!299747 () Bool)

(assert (= b_and!299725 (and (=> t!325287 result!284422) b_and!299747)))

(declare-fun t!325289 () Bool)

(declare-fun tb!234703 () Bool)

(assert (=> (and b!3929087 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))) t!325289) tb!234703))

(declare-fun result!284426 () Bool)

(assert (= result!284426 result!284422))

(assert (=> d!1164479 t!325289))

(declare-fun b_and!299749 () Bool)

(assert (= b_and!299729 (and (=> t!325289 result!284426) b_and!299749)))

(declare-fun tb!234705 () Bool)

(declare-fun t!325291 () Bool)

(assert (=> (and b!3929105 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))) t!325291) tb!234705))

(declare-fun result!284428 () Bool)

(assert (= result!284428 result!284422))

(assert (=> d!1164479 t!325291))

(declare-fun b_and!299751 () Bool)

(assert (= b_and!299733 (and (=> t!325291 result!284428) b_and!299751)))

(declare-fun m!4494307 () Bool)

(assert (=> d!1164479 m!4494307))

(declare-fun m!4494309 () Bool)

(assert (=> d!1164479 m!4494309))

(assert (=> b!3929098 d!1164479))

(declare-fun d!1164481 () Bool)

(declare-fun fromListB!2207 (List!41855) BalanceConc!25046)

(assert (=> d!1164481 (= (seqFromList!4782 lt!1372190) (fromListB!2207 lt!1372190))))

(declare-fun bs!586097 () Bool)

(assert (= bs!586097 d!1164481))

(declare-fun m!4494311 () Bool)

(assert (=> bs!586097 m!4494311))

(assert (=> b!3929098 d!1164481))

(declare-fun d!1164483 () Bool)

(declare-fun e!2430853 () Bool)

(assert (=> d!1164483 e!2430853))

(declare-fun res!1589871 () Bool)

(assert (=> d!1164483 (=> res!1589871 e!2430853)))

(declare-fun lt!1372403 () Bool)

(assert (=> d!1164483 (= res!1589871 (not lt!1372403))))

(declare-fun e!2430852 () Bool)

(assert (=> d!1164483 (= lt!1372403 e!2430852)))

(declare-fun res!1589874 () Bool)

(assert (=> d!1164483 (=> res!1589874 e!2430852)))

(assert (=> d!1164483 (= res!1589874 (is-Nil!41731 lt!1372190))))

(assert (=> d!1164483 (= (isPrefix!3610 lt!1372190 lt!1372211) lt!1372403)))

(declare-fun b!3929294 () Bool)

(declare-fun e!2430854 () Bool)

(assert (=> b!3929294 (= e!2430852 e!2430854)))

(declare-fun res!1589873 () Bool)

(assert (=> b!3929294 (=> (not res!1589873) (not e!2430854))))

(assert (=> b!3929294 (= res!1589873 (not (is-Nil!41731 lt!1372211)))))

(declare-fun b!3929295 () Bool)

(declare-fun res!1589872 () Bool)

(assert (=> b!3929295 (=> (not res!1589872) (not e!2430854))))

(declare-fun head!8342 (List!41855) C!23026)

(assert (=> b!3929295 (= res!1589872 (= (head!8342 lt!1372190) (head!8342 lt!1372211)))))

(declare-fun b!3929297 () Bool)

(assert (=> b!3929297 (= e!2430853 (>= (size!31308 lt!1372211) (size!31308 lt!1372190)))))

(declare-fun b!3929296 () Bool)

(assert (=> b!3929296 (= e!2430854 (isPrefix!3610 (tail!6068 lt!1372190) (tail!6068 lt!1372211)))))

(assert (= (and d!1164483 (not res!1589874)) b!3929294))

(assert (= (and b!3929294 res!1589873) b!3929295))

(assert (= (and b!3929295 res!1589872) b!3929296))

(assert (= (and d!1164483 (not res!1589871)) b!3929297))

(declare-fun m!4494313 () Bool)

(assert (=> b!3929295 m!4494313))

(declare-fun m!4494315 () Bool)

(assert (=> b!3929295 m!4494315))

(declare-fun m!4494317 () Bool)

(assert (=> b!3929297 m!4494317))

(assert (=> b!3929297 m!4494105))

(declare-fun m!4494319 () Bool)

(assert (=> b!3929296 m!4494319))

(declare-fun m!4494321 () Bool)

(assert (=> b!3929296 m!4494321))

(assert (=> b!3929296 m!4494319))

(assert (=> b!3929296 m!4494321))

(declare-fun m!4494323 () Bool)

(assert (=> b!3929296 m!4494323))

(assert (=> b!3929098 d!1164483))

(declare-fun b!3929306 () Bool)

(declare-fun e!2430860 () List!41855)

(assert (=> b!3929306 (= e!2430860 (_2!23637 (v!39260 lt!1372235)))))

(declare-fun b!3929308 () Bool)

(declare-fun res!1589879 () Bool)

(declare-fun e!2430859 () Bool)

(assert (=> b!3929308 (=> (not res!1589879) (not e!2430859))))

(declare-fun lt!1372406 () List!41855)

(assert (=> b!3929308 (= res!1589879 (= (size!31308 lt!1372406) (+ (size!31308 lt!1372190) (size!31308 (_2!23637 (v!39260 lt!1372235))))))))

(declare-fun b!3929309 () Bool)

(assert (=> b!3929309 (= e!2430859 (or (not (= (_2!23637 (v!39260 lt!1372235)) Nil!41731)) (= lt!1372406 lt!1372190)))))

(declare-fun b!3929307 () Bool)

(assert (=> b!3929307 (= e!2430860 (Cons!41731 (h!47151 lt!1372190) (++!10788 (t!325278 lt!1372190) (_2!23637 (v!39260 lt!1372235)))))))

(declare-fun d!1164485 () Bool)

(assert (=> d!1164485 e!2430859))

(declare-fun res!1589880 () Bool)

(assert (=> d!1164485 (=> (not res!1589880) (not e!2430859))))

(declare-fun content!6281 (List!41855) (Set C!23026))

(assert (=> d!1164485 (= res!1589880 (= (content!6281 lt!1372406) (set.union (content!6281 lt!1372190) (content!6281 (_2!23637 (v!39260 lt!1372235))))))))

(assert (=> d!1164485 (= lt!1372406 e!2430860)))

(declare-fun c!682614 () Bool)

(assert (=> d!1164485 (= c!682614 (is-Nil!41731 lt!1372190))))

(assert (=> d!1164485 (= (++!10788 lt!1372190 (_2!23637 (v!39260 lt!1372235))) lt!1372406)))

(assert (= (and d!1164485 c!682614) b!3929306))

(assert (= (and d!1164485 (not c!682614)) b!3929307))

(assert (= (and d!1164485 res!1589880) b!3929308))

(assert (= (and b!3929308 res!1589879) b!3929309))

(declare-fun m!4494325 () Bool)

(assert (=> b!3929308 m!4494325))

(assert (=> b!3929308 m!4494105))

(assert (=> b!3929308 m!4493969))

(declare-fun m!4494327 () Bool)

(assert (=> b!3929307 m!4494327))

(declare-fun m!4494329 () Bool)

(assert (=> d!1164485 m!4494329))

(declare-fun m!4494331 () Bool)

(assert (=> d!1164485 m!4494331))

(declare-fun m!4494333 () Bool)

(assert (=> d!1164485 m!4494333))

(assert (=> b!3929098 d!1164485))

(declare-fun d!1164487 () Bool)

(declare-fun res!1589885 () Bool)

(declare-fun e!2430863 () Bool)

(assert (=> d!1164487 (=> (not res!1589885) (not e!2430863))))

(declare-fun validRegex!5197 (Regex!11420) Bool)

(assert (=> d!1164487 (= res!1589885 (validRegex!5197 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))))))

(assert (=> d!1164487 (= (ruleValid!2463 thiss!20629 (rule!9459 (_1!23637 (v!39260 lt!1372235)))) e!2430863)))

(declare-fun b!3929314 () Bool)

(declare-fun res!1589886 () Bool)

(assert (=> b!3929314 (=> (not res!1589886) (not e!2430863))))

(declare-fun nullable!3998 (Regex!11420) Bool)

(assert (=> b!3929314 (= res!1589886 (not (nullable!3998 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))))))

(declare-fun b!3929315 () Bool)

(assert (=> b!3929315 (= e!2430863 (not (= (tag!7375 (rule!9459 (_1!23637 (v!39260 lt!1372235)))) (String!47445 ""))))))

(assert (= (and d!1164487 res!1589885) b!3929314))

(assert (= (and b!3929314 res!1589886) b!3929315))

(declare-fun m!4494335 () Bool)

(assert (=> d!1164487 m!4494335))

(declare-fun m!4494337 () Bool)

(assert (=> b!3929314 m!4494337))

(assert (=> b!3929098 d!1164487))

(declare-fun d!1164491 () Bool)

(declare-fun dynLambda!17876 (Int BalanceConc!25046) TokenValue!6745)

(assert (=> d!1164491 (= (apply!9754 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))) (seqFromList!4782 lt!1372190)) (dynLambda!17876 (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))) (seqFromList!4782 lt!1372190)))))

(declare-fun b_lambda!114945 () Bool)

(assert (=> (not b_lambda!114945) (not d!1164491)))

(declare-fun t!325293 () Bool)

(declare-fun tb!234707 () Bool)

(assert (=> (and b!3929093 (= (toValue!8967 (transformation!6515 (h!47154 rules!2768))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))) t!325293) tb!234707))

(declare-fun result!284430 () Bool)

(assert (=> tb!234707 (= result!284430 (inv!21 (dynLambda!17876 (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))) (seqFromList!4782 lt!1372190))))))

(declare-fun m!4494339 () Bool)

(assert (=> tb!234707 m!4494339))

(assert (=> d!1164491 t!325293))

(declare-fun b_and!299753 () Bool)

(assert (= b_and!299723 (and (=> t!325293 result!284430) b_and!299753)))

(declare-fun tb!234709 () Bool)

(declare-fun t!325295 () Bool)

(assert (=> (and b!3929087 (= (toValue!8967 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))) t!325295) tb!234709))

(declare-fun result!284434 () Bool)

(assert (= result!284434 result!284430))

(assert (=> d!1164491 t!325295))

(declare-fun b_and!299755 () Bool)

(assert (= b_and!299727 (and (=> t!325295 result!284434) b_and!299755)))

(declare-fun tb!234711 () Bool)

(declare-fun t!325297 () Bool)

(assert (=> (and b!3929105 (= (toValue!8967 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))) t!325297) tb!234711))

(declare-fun result!284436 () Bool)

(assert (= result!284436 result!284430))

(assert (=> d!1164491 t!325297))

(declare-fun b_and!299757 () Bool)

(assert (= b_and!299731 (and (=> t!325297 result!284436) b_and!299757)))

(assert (=> d!1164491 m!4494091))

(declare-fun m!4494341 () Bool)

(assert (=> d!1164491 m!4494341))

(assert (=> b!3929098 d!1164491))

(declare-fun b!3929348 () Bool)

(declare-fun e!2430886 () tuple2!41008)

(assert (=> b!3929348 (= e!2430886 (tuple2!41009 Nil!41733 (_2!23637 (v!39260 lt!1372235))))))

(declare-fun b!3929349 () Bool)

(declare-fun e!2430887 () Bool)

(declare-fun e!2430885 () Bool)

(assert (=> b!3929349 (= e!2430887 e!2430885)))

(declare-fun res!1589894 () Bool)

(declare-fun lt!1372416 () tuple2!41008)

(assert (=> b!3929349 (= res!1589894 (< (size!31308 (_2!23638 lt!1372416)) (size!31308 (_2!23637 (v!39260 lt!1372235)))))))

(assert (=> b!3929349 (=> (not res!1589894) (not e!2430885))))

(declare-fun b!3929350 () Bool)

(assert (=> b!3929350 (= e!2430887 (= (_2!23638 lt!1372416) (_2!23637 (v!39260 lt!1372235))))))

(declare-fun b!3929351 () Bool)

(assert (=> b!3929351 (= e!2430885 (not (isEmpty!24877 (_1!23638 lt!1372416))))))

(declare-fun b!3929347 () Bool)

(declare-fun lt!1372417 () Option!8935)

(declare-fun lt!1372418 () tuple2!41008)

(assert (=> b!3929347 (= e!2430886 (tuple2!41009 (Cons!41733 (_1!23637 (v!39260 lt!1372417)) (_1!23638 lt!1372418)) (_2!23638 lt!1372418)))))

(assert (=> b!3929347 (= lt!1372418 (lexList!1872 thiss!20629 rules!2768 (_2!23637 (v!39260 lt!1372417))))))

(declare-fun d!1164493 () Bool)

(assert (=> d!1164493 e!2430887))

(declare-fun c!682627 () Bool)

(declare-fun size!31311 (List!41857) Int)

(assert (=> d!1164493 (= c!682627 (> (size!31311 (_1!23638 lt!1372416)) 0))))

(assert (=> d!1164493 (= lt!1372416 e!2430886)))

(declare-fun c!682626 () Bool)

(assert (=> d!1164493 (= c!682626 (is-Some!8934 lt!1372417))))

(assert (=> d!1164493 (= lt!1372417 (maxPrefix!3408 thiss!20629 rules!2768 (_2!23637 (v!39260 lt!1372235))))))

(assert (=> d!1164493 (= (lexList!1872 thiss!20629 rules!2768 (_2!23637 (v!39260 lt!1372235))) lt!1372416)))

(assert (= (and d!1164493 c!682626) b!3929347))

(assert (= (and d!1164493 (not c!682626)) b!3929348))

(assert (= (and d!1164493 c!682627) b!3929349))

(assert (= (and d!1164493 (not c!682627)) b!3929350))

(assert (= (and b!3929349 res!1589894) b!3929351))

(declare-fun m!4494349 () Bool)

(assert (=> b!3929349 m!4494349))

(assert (=> b!3929349 m!4493969))

(declare-fun m!4494351 () Bool)

(assert (=> b!3929351 m!4494351))

(declare-fun m!4494353 () Bool)

(assert (=> b!3929347 m!4494353))

(declare-fun m!4494355 () Bool)

(assert (=> d!1164493 m!4494355))

(declare-fun m!4494357 () Bool)

(assert (=> d!1164493 m!4494357))

(assert (=> b!3929098 d!1164493))

(declare-fun d!1164501 () Bool)

(assert (=> d!1164501 (= (_2!23637 (v!39260 lt!1372235)) lt!1372206)))

(declare-fun lt!1372421 () Unit!60127)

(declare-fun choose!23351 (List!41855 List!41855 List!41855 List!41855 List!41855) Unit!60127)

(assert (=> d!1164501 (= lt!1372421 (choose!23351 lt!1372190 (_2!23637 (v!39260 lt!1372235)) lt!1372190 lt!1372206 lt!1372223))))

(assert (=> d!1164501 (isPrefix!3610 lt!1372190 lt!1372223)))

(assert (=> d!1164501 (= (lemmaSamePrefixThenSameSuffix!1831 lt!1372190 (_2!23637 (v!39260 lt!1372235)) lt!1372190 lt!1372206 lt!1372223) lt!1372421)))

(declare-fun bs!586098 () Bool)

(assert (= bs!586098 d!1164501))

(declare-fun m!4494365 () Bool)

(assert (=> bs!586098 m!4494365))

(declare-fun m!4494367 () Bool)

(assert (=> bs!586098 m!4494367))

(assert (=> b!3929098 d!1164501))

(declare-fun b!3929358 () Bool)

(declare-fun e!2430892 () tuple2!41008)

(assert (=> b!3929358 (= e!2430892 (tuple2!41009 Nil!41733 (_2!23637 lt!1372230)))))

(declare-fun b!3929359 () Bool)

(declare-fun e!2430893 () Bool)

(declare-fun e!2430891 () Bool)

(assert (=> b!3929359 (= e!2430893 e!2430891)))

(declare-fun res!1589896 () Bool)

(declare-fun lt!1372422 () tuple2!41008)

(assert (=> b!3929359 (= res!1589896 (< (size!31308 (_2!23638 lt!1372422)) (size!31308 (_2!23637 lt!1372230))))))

(assert (=> b!3929359 (=> (not res!1589896) (not e!2430891))))

(declare-fun b!3929360 () Bool)

(assert (=> b!3929360 (= e!2430893 (= (_2!23638 lt!1372422) (_2!23637 lt!1372230)))))

(declare-fun b!3929361 () Bool)

(assert (=> b!3929361 (= e!2430891 (not (isEmpty!24877 (_1!23638 lt!1372422))))))

(declare-fun b!3929357 () Bool)

(declare-fun lt!1372423 () Option!8935)

(declare-fun lt!1372424 () tuple2!41008)

(assert (=> b!3929357 (= e!2430892 (tuple2!41009 (Cons!41733 (_1!23637 (v!39260 lt!1372423)) (_1!23638 lt!1372424)) (_2!23638 lt!1372424)))))

(assert (=> b!3929357 (= lt!1372424 (lexList!1872 thiss!20629 rules!2768 (_2!23637 (v!39260 lt!1372423))))))

(declare-fun d!1164505 () Bool)

(assert (=> d!1164505 e!2430893))

(declare-fun c!682631 () Bool)

(assert (=> d!1164505 (= c!682631 (> (size!31311 (_1!23638 lt!1372422)) 0))))

(assert (=> d!1164505 (= lt!1372422 e!2430892)))

(declare-fun c!682630 () Bool)

(assert (=> d!1164505 (= c!682630 (is-Some!8934 lt!1372423))))

(assert (=> d!1164505 (= lt!1372423 (maxPrefix!3408 thiss!20629 rules!2768 (_2!23637 lt!1372230)))))

(assert (=> d!1164505 (= (lexList!1872 thiss!20629 rules!2768 (_2!23637 lt!1372230)) lt!1372422)))

(assert (= (and d!1164505 c!682630) b!3929357))

(assert (= (and d!1164505 (not c!682630)) b!3929358))

(assert (= (and d!1164505 c!682631) b!3929359))

(assert (= (and d!1164505 (not c!682631)) b!3929360))

(assert (= (and b!3929359 res!1589896) b!3929361))

(declare-fun m!4494369 () Bool)

(assert (=> b!3929359 m!4494369))

(assert (=> b!3929359 m!4494051))

(declare-fun m!4494371 () Bool)

(assert (=> b!3929361 m!4494371))

(declare-fun m!4494373 () Bool)

(assert (=> b!3929357 m!4494373))

(declare-fun m!4494375 () Bool)

(assert (=> d!1164505 m!4494375))

(declare-fun m!4494377 () Bool)

(assert (=> d!1164505 m!4494377))

(assert (=> bm!284762 d!1164505))

(declare-fun b!3929363 () Bool)

(declare-fun e!2430895 () tuple2!41008)

(assert (=> b!3929363 (= e!2430895 (tuple2!41009 Nil!41733 lt!1372187))))

(declare-fun b!3929364 () Bool)

(declare-fun e!2430896 () Bool)

(declare-fun e!2430894 () Bool)

(assert (=> b!3929364 (= e!2430896 e!2430894)))

(declare-fun res!1589897 () Bool)

(declare-fun lt!1372425 () tuple2!41008)

(assert (=> b!3929364 (= res!1589897 (< (size!31308 (_2!23638 lt!1372425)) (size!31308 lt!1372187)))))

(assert (=> b!3929364 (=> (not res!1589897) (not e!2430894))))

(declare-fun b!3929365 () Bool)

(assert (=> b!3929365 (= e!2430896 (= (_2!23638 lt!1372425) lt!1372187))))

(declare-fun b!3929366 () Bool)

(assert (=> b!3929366 (= e!2430894 (not (isEmpty!24877 (_1!23638 lt!1372425))))))

(declare-fun b!3929362 () Bool)

(declare-fun lt!1372426 () Option!8935)

(declare-fun lt!1372427 () tuple2!41008)

(assert (=> b!3929362 (= e!2430895 (tuple2!41009 (Cons!41733 (_1!23637 (v!39260 lt!1372426)) (_1!23638 lt!1372427)) (_2!23638 lt!1372427)))))

(assert (=> b!3929362 (= lt!1372427 (lexList!1872 thiss!20629 rules!2768 (_2!23637 (v!39260 lt!1372426))))))

(declare-fun d!1164507 () Bool)

(assert (=> d!1164507 e!2430896))

(declare-fun c!682633 () Bool)

(assert (=> d!1164507 (= c!682633 (> (size!31311 (_1!23638 lt!1372425)) 0))))

(assert (=> d!1164507 (= lt!1372425 e!2430895)))

(declare-fun c!682632 () Bool)

(assert (=> d!1164507 (= c!682632 (is-Some!8934 lt!1372426))))

(assert (=> d!1164507 (= lt!1372426 (maxPrefix!3408 thiss!20629 rules!2768 lt!1372187))))

(assert (=> d!1164507 (= (lexList!1872 thiss!20629 rules!2768 lt!1372187) lt!1372425)))

(assert (= (and d!1164507 c!682632) b!3929362))

(assert (= (and d!1164507 (not c!682632)) b!3929363))

(assert (= (and d!1164507 c!682633) b!3929364))

(assert (= (and d!1164507 (not c!682633)) b!3929365))

(assert (= (and b!3929364 res!1589897) b!3929366))

(declare-fun m!4494379 () Bool)

(assert (=> b!3929364 m!4494379))

(declare-fun m!4494381 () Bool)

(assert (=> b!3929364 m!4494381))

(declare-fun m!4494383 () Bool)

(assert (=> b!3929366 m!4494383))

(declare-fun m!4494385 () Bool)

(assert (=> b!3929362 m!4494385))

(declare-fun m!4494387 () Bool)

(assert (=> d!1164507 m!4494387))

(declare-fun m!4494389 () Bool)

(assert (=> d!1164507 m!4494389))

(assert (=> b!3929081 d!1164507))

(declare-fun d!1164509 () Bool)

(assert (=> d!1164509 (= (lexList!1872 thiss!20629 rules!2768 lt!1372187) (tuple2!41009 lt!1372222 Nil!41731))))

(declare-fun lt!1372430 () Unit!60127)

(declare-fun choose!23352 (LexerInterface!6104 List!41858 List!41855 List!41855 List!41857 List!41857 List!41855) Unit!60127)

(assert (=> d!1164509 (= lt!1372430 (choose!23352 thiss!20629 rules!2768 lt!1372187 suffix!1176 lt!1372222 suffixTokens!72 suffixResult!91))))

(assert (=> d!1164509 (not (isEmpty!24876 rules!2768))))

(assert (=> d!1164509 (= (lemmaLexThenLexPrefix!600 thiss!20629 rules!2768 lt!1372187 suffix!1176 lt!1372222 suffixTokens!72 suffixResult!91) lt!1372430)))

(declare-fun bs!586099 () Bool)

(assert (= bs!586099 d!1164509))

(assert (=> bs!586099 m!4494029))

(declare-fun m!4494391 () Bool)

(assert (=> bs!586099 m!4494391))

(assert (=> bs!586099 m!4494025))

(assert (=> b!3929081 d!1164509))

(declare-fun d!1164511 () Bool)

(declare-fun res!1589900 () Bool)

(declare-fun e!2430899 () Bool)

(assert (=> d!1164511 (=> (not res!1589900) (not e!2430899))))

(declare-fun rulesValid!2532 (LexerInterface!6104 List!41858) Bool)

(assert (=> d!1164511 (= res!1589900 (rulesValid!2532 thiss!20629 rules!2768))))

(assert (=> d!1164511 (= (rulesInvariant!5447 thiss!20629 rules!2768) e!2430899)))

(declare-fun b!3929369 () Bool)

(declare-datatypes ((List!41863 0))(
  ( (Nil!41739) (Cons!41739 (h!47159 String!47444) (t!325352 List!41863)) )
))
(declare-fun noDuplicateTag!2533 (LexerInterface!6104 List!41858 List!41863) Bool)

(assert (=> b!3929369 (= e!2430899 (noDuplicateTag!2533 thiss!20629 rules!2768 Nil!41739))))

(assert (= (and d!1164511 res!1589900) b!3929369))

(declare-fun m!4494393 () Bool)

(assert (=> d!1164511 m!4494393))

(declare-fun m!4494395 () Bool)

(assert (=> b!3929369 m!4494395))

(assert (=> b!3929102 d!1164511))

(declare-fun d!1164513 () Bool)

(declare-fun res!1589905 () Bool)

(declare-fun e!2430902 () Bool)

(assert (=> d!1164513 (=> (not res!1589905) (not e!2430902))))

(assert (=> d!1164513 (= res!1589905 (not (isEmpty!24875 (originalCharacters!7115 (h!47153 suffixTokens!72)))))))

(assert (=> d!1164513 (= (inv!55924 (h!47153 suffixTokens!72)) e!2430902)))

(declare-fun b!3929374 () Bool)

(declare-fun res!1589906 () Bool)

(assert (=> b!3929374 (=> (not res!1589906) (not e!2430902))))

(assert (=> b!3929374 (= res!1589906 (= (originalCharacters!7115 (h!47153 suffixTokens!72)) (list!15504 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) (value!206313 (h!47153 suffixTokens!72))))))))

(declare-fun b!3929375 () Bool)

(assert (=> b!3929375 (= e!2430902 (= (size!31307 (h!47153 suffixTokens!72)) (size!31308 (originalCharacters!7115 (h!47153 suffixTokens!72)))))))

(assert (= (and d!1164513 res!1589905) b!3929374))

(assert (= (and b!3929374 res!1589906) b!3929375))

(declare-fun b_lambda!114947 () Bool)

(assert (=> (not b_lambda!114947) (not b!3929374)))

(declare-fun t!325299 () Bool)

(declare-fun tb!234713 () Bool)

(assert (=> (and b!3929093 (= (toChars!8826 (transformation!6515 (h!47154 rules!2768))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72))))) t!325299) tb!234713))

(declare-fun b!3929376 () Bool)

(declare-fun e!2430903 () Bool)

(declare-fun tp!1196296 () Bool)

(assert (=> b!3929376 (= e!2430903 (and (inv!55928 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) (value!206313 (h!47153 suffixTokens!72))))) tp!1196296))))

(declare-fun result!284438 () Bool)

(assert (=> tb!234713 (= result!284438 (and (inv!55929 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) (value!206313 (h!47153 suffixTokens!72)))) e!2430903))))

(assert (= tb!234713 b!3929376))

(declare-fun m!4494397 () Bool)

(assert (=> b!3929376 m!4494397))

(declare-fun m!4494399 () Bool)

(assert (=> tb!234713 m!4494399))

(assert (=> b!3929374 t!325299))

(declare-fun b_and!299759 () Bool)

(assert (= b_and!299747 (and (=> t!325299 result!284438) b_and!299759)))

(declare-fun tb!234715 () Bool)

(declare-fun t!325301 () Bool)

(assert (=> (and b!3929087 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72))))) t!325301) tb!234715))

(declare-fun result!284440 () Bool)

(assert (= result!284440 result!284438))

(assert (=> b!3929374 t!325301))

(declare-fun b_and!299761 () Bool)

(assert (= b_and!299749 (and (=> t!325301 result!284440) b_and!299761)))

(declare-fun t!325303 () Bool)

(declare-fun tb!234717 () Bool)

(assert (=> (and b!3929105 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72))))) t!325303) tb!234717))

(declare-fun result!284442 () Bool)

(assert (= result!284442 result!284438))

(assert (=> b!3929374 t!325303))

(declare-fun b_and!299763 () Bool)

(assert (= b_and!299751 (and (=> t!325303 result!284442) b_and!299763)))

(declare-fun m!4494401 () Bool)

(assert (=> d!1164513 m!4494401))

(declare-fun m!4494403 () Bool)

(assert (=> b!3929374 m!4494403))

(assert (=> b!3929374 m!4494403))

(declare-fun m!4494405 () Bool)

(assert (=> b!3929374 m!4494405))

(declare-fun m!4494407 () Bool)

(assert (=> b!3929375 m!4494407))

(assert (=> b!3929080 d!1164513))

(declare-fun b!3929377 () Bool)

(declare-fun e!2430905 () List!41855)

(assert (=> b!3929377 (= e!2430905 suffix!1176)))

(declare-fun b!3929379 () Bool)

(declare-fun res!1589907 () Bool)

(declare-fun e!2430904 () Bool)

(assert (=> b!3929379 (=> (not res!1589907) (not e!2430904))))

(declare-fun lt!1372431 () List!41855)

(assert (=> b!3929379 (= res!1589907 (= (size!31308 lt!1372431) (+ (size!31308 lt!1372193) (size!31308 suffix!1176))))))

(declare-fun b!3929380 () Bool)

(assert (=> b!3929380 (= e!2430904 (or (not (= suffix!1176 Nil!41731)) (= lt!1372431 lt!1372193)))))

(declare-fun b!3929378 () Bool)

(assert (=> b!3929378 (= e!2430905 (Cons!41731 (h!47151 lt!1372193) (++!10788 (t!325278 lt!1372193) suffix!1176)))))

(declare-fun d!1164515 () Bool)

(assert (=> d!1164515 e!2430904))

(declare-fun res!1589908 () Bool)

(assert (=> d!1164515 (=> (not res!1589908) (not e!2430904))))

(assert (=> d!1164515 (= res!1589908 (= (content!6281 lt!1372431) (set.union (content!6281 lt!1372193) (content!6281 suffix!1176))))))

(assert (=> d!1164515 (= lt!1372431 e!2430905)))

(declare-fun c!682634 () Bool)

(assert (=> d!1164515 (= c!682634 (is-Nil!41731 lt!1372193))))

(assert (=> d!1164515 (= (++!10788 lt!1372193 suffix!1176) lt!1372431)))

(assert (= (and d!1164515 c!682634) b!3929377))

(assert (= (and d!1164515 (not c!682634)) b!3929378))

(assert (= (and d!1164515 res!1589908) b!3929379))

(assert (= (and b!3929379 res!1589907) b!3929380))

(declare-fun m!4494409 () Bool)

(assert (=> b!3929379 m!4494409))

(declare-fun m!4494411 () Bool)

(assert (=> b!3929379 m!4494411))

(assert (=> b!3929379 m!4493967))

(declare-fun m!4494413 () Bool)

(assert (=> b!3929378 m!4494413))

(declare-fun m!4494415 () Bool)

(assert (=> d!1164515 m!4494415))

(declare-fun m!4494417 () Bool)

(assert (=> d!1164515 m!4494417))

(declare-fun m!4494419 () Bool)

(assert (=> d!1164515 m!4494419))

(assert (=> b!3929079 d!1164515))

(declare-fun d!1164517 () Bool)

(assert (=> d!1164517 (= (isEmpty!24875 suffix!1176) (is-Nil!41731 suffix!1176))))

(assert (=> b!3929074 d!1164517))

(declare-fun d!1164519 () Bool)

(assert (=> d!1164519 (and (= lt!1372190 lt!1372190) (= (_2!23637 (v!39260 lt!1372235)) (_2!23637 lt!1372230)))))

(declare-fun lt!1372434 () Unit!60127)

(declare-fun choose!23353 (List!41855 List!41855 List!41855 List!41855) Unit!60127)

(assert (=> d!1164519 (= lt!1372434 (choose!23353 lt!1372190 (_2!23637 (v!39260 lt!1372235)) lt!1372190 (_2!23637 lt!1372230)))))

(assert (=> d!1164519 (= (++!10788 lt!1372190 (_2!23637 (v!39260 lt!1372235))) (++!10788 lt!1372190 (_2!23637 lt!1372230)))))

(assert (=> d!1164519 (= (lemmaConcatSameAndSameSizesThenSameLists!563 lt!1372190 (_2!23637 (v!39260 lt!1372235)) lt!1372190 (_2!23637 lt!1372230)) lt!1372434)))

(declare-fun bs!586100 () Bool)

(assert (= bs!586100 d!1164519))

(declare-fun m!4494421 () Bool)

(assert (=> bs!586100 m!4494421))

(assert (=> bs!586100 m!4494087))

(declare-fun m!4494423 () Bool)

(assert (=> bs!586100 m!4494423))

(assert (=> b!3929115 d!1164519))

(declare-fun d!1164521 () Bool)

(assert (=> d!1164521 (not (= (lexList!1872 thiss!20629 rules!2768 (_2!23637 lt!1372230)) (tuple2!41009 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1372440 () Unit!60127)

(declare-fun choose!23354 (LexerInterface!6104 List!41858 List!41855 List!41855 List!41857 List!41855) Unit!60127)

(assert (=> d!1164521 (= lt!1372440 (choose!23354 thiss!20629 rules!2768 suffix!1176 (_2!23637 lt!1372230) suffixTokens!72 suffixResult!91))))

(assert (=> d!1164521 (not (isEmpty!24876 rules!2768))))

(assert (=> d!1164521 (= (lemmaLexWithSmallerInputCannotProduceSameResults!115 thiss!20629 rules!2768 suffix!1176 (_2!23637 lt!1372230) suffixTokens!72 suffixResult!91) lt!1372440)))

(declare-fun bs!586102 () Bool)

(assert (= bs!586102 d!1164521))

(assert (=> bs!586102 m!4494035))

(declare-fun m!4494427 () Bool)

(assert (=> bs!586102 m!4494427))

(assert (=> bs!586102 m!4494025))

(assert (=> b!3929115 d!1164521))

(declare-fun d!1164525 () Bool)

(assert (=> d!1164525 (not (= (lexList!1872 thiss!20629 rules!2768 (_2!23637 lt!1372230)) (tuple2!41009 (++!10787 lt!1372217 suffixTokens!72) suffixResult!91)))))

(declare-fun lt!1372446 () Unit!60127)

(declare-fun choose!23355 (LexerInterface!6104 List!41858 List!41855 List!41855 List!41857 List!41855 List!41857) Unit!60127)

(assert (=> d!1164525 (= lt!1372446 (choose!23355 thiss!20629 rules!2768 suffix!1176 (_2!23637 lt!1372230) suffixTokens!72 suffixResult!91 lt!1372217))))

(assert (=> d!1164525 (not (isEmpty!24876 rules!2768))))

(assert (=> d!1164525 (= (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!115 thiss!20629 rules!2768 suffix!1176 (_2!23637 lt!1372230) suffixTokens!72 suffixResult!91 lt!1372217) lt!1372446)))

(declare-fun bs!586103 () Bool)

(assert (= bs!586103 d!1164525))

(assert (=> bs!586103 m!4494035))

(assert (=> bs!586103 m!4493973))

(declare-fun m!4494443 () Bool)

(assert (=> bs!586103 m!4494443))

(assert (=> bs!586103 m!4494025))

(assert (=> b!3929073 d!1164525))

(declare-fun b!3929401 () Bool)

(declare-fun e!2430916 () List!41857)

(assert (=> b!3929401 (= e!2430916 suffixTokens!72)))

(declare-fun b!3929403 () Bool)

(declare-fun res!1589920 () Bool)

(declare-fun e!2430917 () Bool)

(assert (=> b!3929403 (=> (not res!1589920) (not e!2430917))))

(declare-fun lt!1372449 () List!41857)

(assert (=> b!3929403 (= res!1589920 (= (size!31311 lt!1372449) (+ (size!31311 lt!1372217) (size!31311 suffixTokens!72))))))

(declare-fun d!1164529 () Bool)

(assert (=> d!1164529 e!2430917))

(declare-fun res!1589919 () Bool)

(assert (=> d!1164529 (=> (not res!1589919) (not e!2430917))))

(declare-fun content!6282 (List!41857) (Set Token!12168))

(assert (=> d!1164529 (= res!1589919 (= (content!6282 lt!1372449) (set.union (content!6282 lt!1372217) (content!6282 suffixTokens!72))))))

(assert (=> d!1164529 (= lt!1372449 e!2430916)))

(declare-fun c!682640 () Bool)

(assert (=> d!1164529 (= c!682640 (is-Nil!41733 lt!1372217))))

(assert (=> d!1164529 (= (++!10787 lt!1372217 suffixTokens!72) lt!1372449)))

(declare-fun b!3929402 () Bool)

(assert (=> b!3929402 (= e!2430916 (Cons!41733 (h!47153 lt!1372217) (++!10787 (t!325280 lt!1372217) suffixTokens!72)))))

(declare-fun b!3929404 () Bool)

(assert (=> b!3929404 (= e!2430917 (or (not (= suffixTokens!72 Nil!41733)) (= lt!1372449 lt!1372217)))))

(assert (= (and d!1164529 c!682640) b!3929401))

(assert (= (and d!1164529 (not c!682640)) b!3929402))

(assert (= (and d!1164529 res!1589919) b!3929403))

(assert (= (and b!3929403 res!1589920) b!3929404))

(declare-fun m!4494445 () Bool)

(assert (=> b!3929403 m!4494445))

(declare-fun m!4494447 () Bool)

(assert (=> b!3929403 m!4494447))

(declare-fun m!4494449 () Bool)

(assert (=> b!3929403 m!4494449))

(declare-fun m!4494451 () Bool)

(assert (=> d!1164529 m!4494451))

(declare-fun m!4494453 () Bool)

(assert (=> d!1164529 m!4494453))

(declare-fun m!4494455 () Bool)

(assert (=> d!1164529 m!4494455))

(declare-fun m!4494457 () Bool)

(assert (=> b!3929402 m!4494457))

(assert (=> b!3929073 d!1164529))

(declare-fun b!3929405 () Bool)

(declare-fun e!2430919 () List!41855)

(assert (=> b!3929405 (= e!2430919 lt!1372187)))

(declare-fun b!3929407 () Bool)

(declare-fun res!1589921 () Bool)

(declare-fun e!2430918 () Bool)

(assert (=> b!3929407 (=> (not res!1589921) (not e!2430918))))

(declare-fun lt!1372450 () List!41855)

(assert (=> b!3929407 (= res!1589921 (= (size!31308 lt!1372450) (+ (size!31308 lt!1372190) (size!31308 lt!1372187))))))

(declare-fun b!3929408 () Bool)

(assert (=> b!3929408 (= e!2430918 (or (not (= lt!1372187 Nil!41731)) (= lt!1372450 lt!1372190)))))

(declare-fun b!3929406 () Bool)

(assert (=> b!3929406 (= e!2430919 (Cons!41731 (h!47151 lt!1372190) (++!10788 (t!325278 lt!1372190) lt!1372187)))))

(declare-fun d!1164531 () Bool)

(assert (=> d!1164531 e!2430918))

(declare-fun res!1589922 () Bool)

(assert (=> d!1164531 (=> (not res!1589922) (not e!2430918))))

(assert (=> d!1164531 (= res!1589922 (= (content!6281 lt!1372450) (set.union (content!6281 lt!1372190) (content!6281 lt!1372187))))))

(assert (=> d!1164531 (= lt!1372450 e!2430919)))

(declare-fun c!682641 () Bool)

(assert (=> d!1164531 (= c!682641 (is-Nil!41731 lt!1372190))))

(assert (=> d!1164531 (= (++!10788 lt!1372190 lt!1372187) lt!1372450)))

(assert (= (and d!1164531 c!682641) b!3929405))

(assert (= (and d!1164531 (not c!682641)) b!3929406))

(assert (= (and d!1164531 res!1589922) b!3929407))

(assert (= (and b!3929407 res!1589921) b!3929408))

(declare-fun m!4494459 () Bool)

(assert (=> b!3929407 m!4494459))

(assert (=> b!3929407 m!4494105))

(assert (=> b!3929407 m!4494381))

(declare-fun m!4494461 () Bool)

(assert (=> b!3929406 m!4494461))

(declare-fun m!4494463 () Bool)

(assert (=> d!1164531 m!4494463))

(assert (=> d!1164531 m!4494331))

(declare-fun m!4494465 () Bool)

(assert (=> d!1164531 m!4494465))

(assert (=> b!3929114 d!1164531))

(declare-fun d!1164533 () Bool)

(declare-fun lt!1372451 () List!41855)

(assert (=> d!1164533 (= (++!10788 lt!1372190 lt!1372451) prefix!426)))

(declare-fun e!2430920 () List!41855)

(assert (=> d!1164533 (= lt!1372451 e!2430920)))

(declare-fun c!682642 () Bool)

(assert (=> d!1164533 (= c!682642 (is-Cons!41731 lt!1372190))))

(assert (=> d!1164533 (>= (size!31308 prefix!426) (size!31308 lt!1372190))))

(assert (=> d!1164533 (= (getSuffix!2065 prefix!426 lt!1372190) lt!1372451)))

(declare-fun b!3929409 () Bool)

(assert (=> b!3929409 (= e!2430920 (getSuffix!2065 (tail!6068 prefix!426) (t!325278 lt!1372190)))))

(declare-fun b!3929410 () Bool)

(assert (=> b!3929410 (= e!2430920 prefix!426)))

(assert (= (and d!1164533 c!682642) b!3929409))

(assert (= (and d!1164533 (not c!682642)) b!3929410))

(declare-fun m!4494467 () Bool)

(assert (=> d!1164533 m!4494467))

(assert (=> d!1164533 m!4494011))

(assert (=> d!1164533 m!4494105))

(declare-fun m!4494469 () Bool)

(assert (=> b!3929409 m!4494469))

(assert (=> b!3929409 m!4494469))

(declare-fun m!4494471 () Bool)

(assert (=> b!3929409 m!4494471))

(assert (=> b!3929114 d!1164533))

(declare-fun d!1164535 () Bool)

(assert (=> d!1164535 (not (= (lexList!1872 thiss!20629 rules!2768 suffix!1176) (tuple2!41009 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1372452 () Unit!60127)

(assert (=> d!1164535 (= lt!1372452 (choose!23354 thiss!20629 rules!2768 (_2!23637 (v!39260 lt!1372235)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> d!1164535 (not (isEmpty!24876 rules!2768))))

(assert (=> d!1164535 (= (lemmaLexWithSmallerInputCannotProduceSameResults!115 thiss!20629 rules!2768 (_2!23637 (v!39260 lt!1372235)) suffix!1176 suffixTokens!72 suffixResult!91) lt!1372452)))

(declare-fun bs!586104 () Bool)

(assert (= bs!586104 d!1164535))

(assert (=> bs!586104 m!4494071))

(declare-fun m!4494473 () Bool)

(assert (=> bs!586104 m!4494473))

(assert (=> bs!586104 m!4494025))

(assert (=> b!3929072 d!1164535))

(declare-fun d!1164537 () Bool)

(declare-fun c!682648 () Bool)

(assert (=> d!1164537 (= c!682648 (is-IntegerValue!20235 (value!206313 (h!47153 suffixTokens!72))))))

(declare-fun e!2430928 () Bool)

(assert (=> d!1164537 (= (inv!21 (value!206313 (h!47153 suffixTokens!72))) e!2430928)))

(declare-fun b!3929421 () Bool)

(declare-fun e!2430927 () Bool)

(declare-fun inv!17 (TokenValue!6745) Bool)

(assert (=> b!3929421 (= e!2430927 (inv!17 (value!206313 (h!47153 suffixTokens!72))))))

(declare-fun b!3929422 () Bool)

(declare-fun res!1589925 () Bool)

(declare-fun e!2430929 () Bool)

(assert (=> b!3929422 (=> res!1589925 e!2430929)))

(assert (=> b!3929422 (= res!1589925 (not (is-IntegerValue!20237 (value!206313 (h!47153 suffixTokens!72)))))))

(assert (=> b!3929422 (= e!2430927 e!2430929)))

(declare-fun b!3929423 () Bool)

(declare-fun inv!16 (TokenValue!6745) Bool)

(assert (=> b!3929423 (= e!2430928 (inv!16 (value!206313 (h!47153 suffixTokens!72))))))

(declare-fun b!3929424 () Bool)

(declare-fun inv!15 (TokenValue!6745) Bool)

(assert (=> b!3929424 (= e!2430929 (inv!15 (value!206313 (h!47153 suffixTokens!72))))))

(declare-fun b!3929425 () Bool)

(assert (=> b!3929425 (= e!2430928 e!2430927)))

(declare-fun c!682647 () Bool)

(assert (=> b!3929425 (= c!682647 (is-IntegerValue!20236 (value!206313 (h!47153 suffixTokens!72))))))

(assert (= (and d!1164537 c!682648) b!3929423))

(assert (= (and d!1164537 (not c!682648)) b!3929425))

(assert (= (and b!3929425 c!682647) b!3929421))

(assert (= (and b!3929425 (not c!682647)) b!3929422))

(assert (= (and b!3929422 (not res!1589925)) b!3929424))

(declare-fun m!4494475 () Bool)

(assert (=> b!3929421 m!4494475))

(declare-fun m!4494477 () Bool)

(assert (=> b!3929423 m!4494477))

(declare-fun m!4494479 () Bool)

(assert (=> b!3929424 m!4494479))

(assert (=> b!3929092 d!1164537))

(declare-fun d!1164539 () Bool)

(assert (=> d!1164539 (= (isEmpty!24877 suffixTokens!72) (is-Nil!41733 suffixTokens!72))))

(assert (=> b!3929118 d!1164539))

(declare-fun b!3929427 () Bool)

(declare-fun e!2430931 () tuple2!41008)

(assert (=> b!3929427 (= e!2430931 (tuple2!41009 Nil!41733 lt!1372223))))

(declare-fun b!3929428 () Bool)

(declare-fun e!2430932 () Bool)

(declare-fun e!2430930 () Bool)

(assert (=> b!3929428 (= e!2430932 e!2430930)))

(declare-fun res!1589926 () Bool)

(declare-fun lt!1372453 () tuple2!41008)

(assert (=> b!3929428 (= res!1589926 (< (size!31308 (_2!23638 lt!1372453)) (size!31308 lt!1372223)))))

(assert (=> b!3929428 (=> (not res!1589926) (not e!2430930))))

(declare-fun b!3929429 () Bool)

(assert (=> b!3929429 (= e!2430932 (= (_2!23638 lt!1372453) lt!1372223))))

(declare-fun b!3929430 () Bool)

(assert (=> b!3929430 (= e!2430930 (not (isEmpty!24877 (_1!23638 lt!1372453))))))

(declare-fun b!3929426 () Bool)

(declare-fun lt!1372454 () Option!8935)

(declare-fun lt!1372455 () tuple2!41008)

(assert (=> b!3929426 (= e!2430931 (tuple2!41009 (Cons!41733 (_1!23637 (v!39260 lt!1372454)) (_1!23638 lt!1372455)) (_2!23638 lt!1372455)))))

(assert (=> b!3929426 (= lt!1372455 (lexList!1872 thiss!20629 rules!2768 (_2!23637 (v!39260 lt!1372454))))))

(declare-fun d!1164541 () Bool)

(assert (=> d!1164541 e!2430932))

(declare-fun c!682650 () Bool)

(assert (=> d!1164541 (= c!682650 (> (size!31311 (_1!23638 lt!1372453)) 0))))

(assert (=> d!1164541 (= lt!1372453 e!2430931)))

(declare-fun c!682649 () Bool)

(assert (=> d!1164541 (= c!682649 (is-Some!8934 lt!1372454))))

(assert (=> d!1164541 (= lt!1372454 (maxPrefix!3408 thiss!20629 rules!2768 lt!1372223))))

(assert (=> d!1164541 (= (lexList!1872 thiss!20629 rules!2768 lt!1372223) lt!1372453)))

(assert (= (and d!1164541 c!682649) b!3929426))

(assert (= (and d!1164541 (not c!682649)) b!3929427))

(assert (= (and d!1164541 c!682650) b!3929428))

(assert (= (and d!1164541 (not c!682650)) b!3929429))

(assert (= (and b!3929428 res!1589926) b!3929430))

(declare-fun m!4494481 () Bool)

(assert (=> b!3929428 m!4494481))

(assert (=> b!3929428 m!4494049))

(declare-fun m!4494483 () Bool)

(assert (=> b!3929430 m!4494483))

(declare-fun m!4494485 () Bool)

(assert (=> b!3929426 m!4494485))

(declare-fun m!4494487 () Bool)

(assert (=> d!1164541 m!4494487))

(assert (=> d!1164541 m!4494069))

(assert (=> b!3929076 d!1164541))

(declare-fun b!3929431 () Bool)

(declare-fun e!2430933 () List!41857)

(assert (=> b!3929431 (= e!2430933 suffixTokens!72)))

(declare-fun b!3929433 () Bool)

(declare-fun res!1589928 () Bool)

(declare-fun e!2430934 () Bool)

(assert (=> b!3929433 (=> (not res!1589928) (not e!2430934))))

(declare-fun lt!1372456 () List!41857)

(assert (=> b!3929433 (= res!1589928 (= (size!31311 lt!1372456) (+ (size!31311 prefixTokens!80) (size!31311 suffixTokens!72))))))

(declare-fun d!1164543 () Bool)

(assert (=> d!1164543 e!2430934))

(declare-fun res!1589927 () Bool)

(assert (=> d!1164543 (=> (not res!1589927) (not e!2430934))))

(assert (=> d!1164543 (= res!1589927 (= (content!6282 lt!1372456) (set.union (content!6282 prefixTokens!80) (content!6282 suffixTokens!72))))))

(assert (=> d!1164543 (= lt!1372456 e!2430933)))

(declare-fun c!682651 () Bool)

(assert (=> d!1164543 (= c!682651 (is-Nil!41733 prefixTokens!80))))

(assert (=> d!1164543 (= (++!10787 prefixTokens!80 suffixTokens!72) lt!1372456)))

(declare-fun b!3929432 () Bool)

(assert (=> b!3929432 (= e!2430933 (Cons!41733 (h!47153 prefixTokens!80) (++!10787 (t!325280 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3929434 () Bool)

(assert (=> b!3929434 (= e!2430934 (or (not (= suffixTokens!72 Nil!41733)) (= lt!1372456 prefixTokens!80)))))

(assert (= (and d!1164543 c!682651) b!3929431))

(assert (= (and d!1164543 (not c!682651)) b!3929432))

(assert (= (and d!1164543 res!1589927) b!3929433))

(assert (= (and b!3929433 res!1589928) b!3929434))

(declare-fun m!4494489 () Bool)

(assert (=> b!3929433 m!4494489))

(declare-fun m!4494491 () Bool)

(assert (=> b!3929433 m!4494491))

(assert (=> b!3929433 m!4494449))

(declare-fun m!4494493 () Bool)

(assert (=> d!1164543 m!4494493))

(declare-fun m!4494495 () Bool)

(assert (=> d!1164543 m!4494495))

(assert (=> d!1164543 m!4494455))

(declare-fun m!4494497 () Bool)

(assert (=> b!3929432 m!4494497))

(assert (=> b!3929076 d!1164543))

(declare-fun b!3929435 () Bool)

(declare-fun e!2430936 () List!41855)

(assert (=> b!3929435 (= e!2430936 suffix!1176)))

(declare-fun b!3929437 () Bool)

(declare-fun res!1589929 () Bool)

(declare-fun e!2430935 () Bool)

(assert (=> b!3929437 (=> (not res!1589929) (not e!2430935))))

(declare-fun lt!1372457 () List!41855)

(assert (=> b!3929437 (= res!1589929 (= (size!31308 lt!1372457) (+ (size!31308 prefix!426) (size!31308 suffix!1176))))))

(declare-fun b!3929438 () Bool)

(assert (=> b!3929438 (= e!2430935 (or (not (= suffix!1176 Nil!41731)) (= lt!1372457 prefix!426)))))

(declare-fun b!3929436 () Bool)

(assert (=> b!3929436 (= e!2430936 (Cons!41731 (h!47151 prefix!426) (++!10788 (t!325278 prefix!426) suffix!1176)))))

(declare-fun d!1164545 () Bool)

(assert (=> d!1164545 e!2430935))

(declare-fun res!1589930 () Bool)

(assert (=> d!1164545 (=> (not res!1589930) (not e!2430935))))

(assert (=> d!1164545 (= res!1589930 (= (content!6281 lt!1372457) (set.union (content!6281 prefix!426) (content!6281 suffix!1176))))))

(assert (=> d!1164545 (= lt!1372457 e!2430936)))

(declare-fun c!682652 () Bool)

(assert (=> d!1164545 (= c!682652 (is-Nil!41731 prefix!426))))

(assert (=> d!1164545 (= (++!10788 prefix!426 suffix!1176) lt!1372457)))

(assert (= (and d!1164545 c!682652) b!3929435))

(assert (= (and d!1164545 (not c!682652)) b!3929436))

(assert (= (and d!1164545 res!1589930) b!3929437))

(assert (= (and b!3929437 res!1589929) b!3929438))

(declare-fun m!4494499 () Bool)

(assert (=> b!3929437 m!4494499))

(assert (=> b!3929437 m!4494011))

(assert (=> b!3929437 m!4493967))

(declare-fun m!4494501 () Bool)

(assert (=> b!3929436 m!4494501))

(declare-fun m!4494503 () Bool)

(assert (=> d!1164545 m!4494503))

(declare-fun m!4494505 () Bool)

(assert (=> d!1164545 m!4494505))

(assert (=> d!1164545 m!4494419))

(assert (=> b!3929076 d!1164545))

(declare-fun d!1164547 () Bool)

(assert (=> d!1164547 (= (isEmpty!24877 prefixTokens!80) (is-Nil!41733 prefixTokens!80))))

(assert (=> b!3929117 d!1164547))

(declare-fun d!1164549 () Bool)

(assert (=> d!1164549 (= (_2!23637 (v!39260 lt!1372235)) lt!1372227)))

(declare-fun lt!1372458 () Unit!60127)

(assert (=> d!1164549 (= lt!1372458 (choose!23351 lt!1372190 (_2!23637 (v!39260 lt!1372235)) lt!1372190 lt!1372227 lt!1372223))))

(assert (=> d!1164549 (isPrefix!3610 lt!1372190 lt!1372223)))

(assert (=> d!1164549 (= (lemmaSamePrefixThenSameSuffix!1831 lt!1372190 (_2!23637 (v!39260 lt!1372235)) lt!1372190 lt!1372227 lt!1372223) lt!1372458)))

(declare-fun bs!586105 () Bool)

(assert (= bs!586105 d!1164549))

(declare-fun m!4494507 () Bool)

(assert (=> bs!586105 m!4494507))

(assert (=> bs!586105 m!4494367))

(assert (=> b!3929075 d!1164549))

(declare-fun d!1164551 () Bool)

(declare-fun e!2430938 () Bool)

(assert (=> d!1164551 e!2430938))

(declare-fun res!1589931 () Bool)

(assert (=> d!1164551 (=> res!1589931 e!2430938)))

(declare-fun lt!1372459 () Bool)

(assert (=> d!1164551 (= res!1589931 (not lt!1372459))))

(declare-fun e!2430937 () Bool)

(assert (=> d!1164551 (= lt!1372459 e!2430937)))

(declare-fun res!1589934 () Bool)

(assert (=> d!1164551 (=> res!1589934 e!2430937)))

(assert (=> d!1164551 (= res!1589934 (is-Nil!41731 lt!1372190))))

(assert (=> d!1164551 (= (isPrefix!3610 lt!1372190 lt!1372212) lt!1372459)))

(declare-fun b!3929439 () Bool)

(declare-fun e!2430939 () Bool)

(assert (=> b!3929439 (= e!2430937 e!2430939)))

(declare-fun res!1589933 () Bool)

(assert (=> b!3929439 (=> (not res!1589933) (not e!2430939))))

(assert (=> b!3929439 (= res!1589933 (not (is-Nil!41731 lt!1372212)))))

(declare-fun b!3929440 () Bool)

(declare-fun res!1589932 () Bool)

(assert (=> b!3929440 (=> (not res!1589932) (not e!2430939))))

(assert (=> b!3929440 (= res!1589932 (= (head!8342 lt!1372190) (head!8342 lt!1372212)))))

(declare-fun b!3929442 () Bool)

(assert (=> b!3929442 (= e!2430938 (>= (size!31308 lt!1372212) (size!31308 lt!1372190)))))

(declare-fun b!3929441 () Bool)

(assert (=> b!3929441 (= e!2430939 (isPrefix!3610 (tail!6068 lt!1372190) (tail!6068 lt!1372212)))))

(assert (= (and d!1164551 (not res!1589934)) b!3929439))

(assert (= (and b!3929439 res!1589933) b!3929440))

(assert (= (and b!3929440 res!1589932) b!3929441))

(assert (= (and d!1164551 (not res!1589931)) b!3929442))

(assert (=> b!3929440 m!4494313))

(declare-fun m!4494509 () Bool)

(assert (=> b!3929440 m!4494509))

(declare-fun m!4494511 () Bool)

(assert (=> b!3929442 m!4494511))

(assert (=> b!3929442 m!4494105))

(assert (=> b!3929441 m!4494319))

(declare-fun m!4494513 () Bool)

(assert (=> b!3929441 m!4494513))

(assert (=> b!3929441 m!4494319))

(assert (=> b!3929441 m!4494513))

(declare-fun m!4494515 () Bool)

(assert (=> b!3929441 m!4494515))

(assert (=> b!3929075 d!1164551))

(declare-fun d!1164553 () Bool)

(assert (=> d!1164553 (isPrefix!3610 lt!1372190 (++!10788 lt!1372190 lt!1372227))))

(declare-fun lt!1372460 () Unit!60127)

(assert (=> d!1164553 (= lt!1372460 (choose!23350 lt!1372190 lt!1372227))))

(assert (=> d!1164553 (= (lemmaConcatTwoListThenFirstIsPrefix!2473 lt!1372190 lt!1372227) lt!1372460)))

(declare-fun bs!586106 () Bool)

(assert (= bs!586106 d!1164553))

(assert (=> bs!586106 m!4494061))

(assert (=> bs!586106 m!4494061))

(declare-fun m!4494517 () Bool)

(assert (=> bs!586106 m!4494517))

(declare-fun m!4494519 () Bool)

(assert (=> bs!586106 m!4494519))

(assert (=> b!3929075 d!1164553))

(declare-fun b!3929444 () Bool)

(declare-fun e!2430941 () tuple2!41008)

(assert (=> b!3929444 (= e!2430941 (tuple2!41009 Nil!41733 suffix!1176))))

(declare-fun b!3929445 () Bool)

(declare-fun e!2430942 () Bool)

(declare-fun e!2430940 () Bool)

(assert (=> b!3929445 (= e!2430942 e!2430940)))

(declare-fun res!1589935 () Bool)

(declare-fun lt!1372461 () tuple2!41008)

(assert (=> b!3929445 (= res!1589935 (< (size!31308 (_2!23638 lt!1372461)) (size!31308 suffix!1176)))))

(assert (=> b!3929445 (=> (not res!1589935) (not e!2430940))))

(declare-fun b!3929446 () Bool)

(assert (=> b!3929446 (= e!2430942 (= (_2!23638 lt!1372461) suffix!1176))))

(declare-fun b!3929447 () Bool)

(assert (=> b!3929447 (= e!2430940 (not (isEmpty!24877 (_1!23638 lt!1372461))))))

(declare-fun b!3929443 () Bool)

(declare-fun lt!1372462 () Option!8935)

(declare-fun lt!1372463 () tuple2!41008)

(assert (=> b!3929443 (= e!2430941 (tuple2!41009 (Cons!41733 (_1!23637 (v!39260 lt!1372462)) (_1!23638 lt!1372463)) (_2!23638 lt!1372463)))))

(assert (=> b!3929443 (= lt!1372463 (lexList!1872 thiss!20629 rules!2768 (_2!23637 (v!39260 lt!1372462))))))

(declare-fun d!1164555 () Bool)

(assert (=> d!1164555 e!2430942))

(declare-fun c!682654 () Bool)

(assert (=> d!1164555 (= c!682654 (> (size!31311 (_1!23638 lt!1372461)) 0))))

(assert (=> d!1164555 (= lt!1372461 e!2430941)))

(declare-fun c!682653 () Bool)

(assert (=> d!1164555 (= c!682653 (is-Some!8934 lt!1372462))))

(assert (=> d!1164555 (= lt!1372462 (maxPrefix!3408 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1164555 (= (lexList!1872 thiss!20629 rules!2768 suffix!1176) lt!1372461)))

(assert (= (and d!1164555 c!682653) b!3929443))

(assert (= (and d!1164555 (not c!682653)) b!3929444))

(assert (= (and d!1164555 c!682654) b!3929445))

(assert (= (and d!1164555 (not c!682654)) b!3929446))

(assert (= (and b!3929445 res!1589935) b!3929447))

(declare-fun m!4494521 () Bool)

(assert (=> b!3929445 m!4494521))

(assert (=> b!3929445 m!4493967))

(declare-fun m!4494523 () Bool)

(assert (=> b!3929447 m!4494523))

(declare-fun m!4494525 () Bool)

(assert (=> b!3929443 m!4494525))

(declare-fun m!4494527 () Bool)

(assert (=> d!1164555 m!4494527))

(declare-fun m!4494529 () Bool)

(assert (=> d!1164555 m!4494529))

(assert (=> b!3929095 d!1164555))

(declare-fun b!3929448 () Bool)

(declare-fun e!2430943 () List!41857)

(assert (=> b!3929448 (= e!2430943 (_1!23638 lt!1372229))))

(declare-fun b!3929450 () Bool)

(declare-fun res!1589937 () Bool)

(declare-fun e!2430944 () Bool)

(assert (=> b!3929450 (=> (not res!1589937) (not e!2430944))))

(declare-fun lt!1372464 () List!41857)

(assert (=> b!3929450 (= res!1589937 (= (size!31311 lt!1372464) (+ (size!31311 lt!1372210) (size!31311 (_1!23638 lt!1372229)))))))

(declare-fun d!1164557 () Bool)

(assert (=> d!1164557 e!2430944))

(declare-fun res!1589936 () Bool)

(assert (=> d!1164557 (=> (not res!1589936) (not e!2430944))))

(assert (=> d!1164557 (= res!1589936 (= (content!6282 lt!1372464) (set.union (content!6282 lt!1372210) (content!6282 (_1!23638 lt!1372229)))))))

(assert (=> d!1164557 (= lt!1372464 e!2430943)))

(declare-fun c!682655 () Bool)

(assert (=> d!1164557 (= c!682655 (is-Nil!41733 lt!1372210))))

(assert (=> d!1164557 (= (++!10787 lt!1372210 (_1!23638 lt!1372229)) lt!1372464)))

(declare-fun b!3929449 () Bool)

(assert (=> b!3929449 (= e!2430943 (Cons!41733 (h!47153 lt!1372210) (++!10787 (t!325280 lt!1372210) (_1!23638 lt!1372229))))))

(declare-fun b!3929451 () Bool)

(assert (=> b!3929451 (= e!2430944 (or (not (= (_1!23638 lt!1372229) Nil!41733)) (= lt!1372464 lt!1372210)))))

(assert (= (and d!1164557 c!682655) b!3929448))

(assert (= (and d!1164557 (not c!682655)) b!3929449))

(assert (= (and d!1164557 res!1589936) b!3929450))

(assert (= (and b!3929450 res!1589937) b!3929451))

(declare-fun m!4494531 () Bool)

(assert (=> b!3929450 m!4494531))

(declare-fun m!4494533 () Bool)

(assert (=> b!3929450 m!4494533))

(declare-fun m!4494535 () Bool)

(assert (=> b!3929450 m!4494535))

(declare-fun m!4494537 () Bool)

(assert (=> d!1164557 m!4494537))

(declare-fun m!4494539 () Bool)

(assert (=> d!1164557 m!4494539))

(declare-fun m!4494541 () Bool)

(assert (=> d!1164557 m!4494541))

(declare-fun m!4494543 () Bool)

(assert (=> b!3929449 m!4494543))

(assert (=> b!3929116 d!1164557))

(declare-fun d!1164559 () Bool)

(declare-fun lt!1372465 () Int)

(assert (=> d!1164559 (>= lt!1372465 0)))

(declare-fun e!2430945 () Int)

(assert (=> d!1164559 (= lt!1372465 e!2430945)))

(declare-fun c!682656 () Bool)

(assert (=> d!1164559 (= c!682656 (is-Nil!41731 (originalCharacters!7115 (_1!23637 (v!39260 lt!1372235)))))))

(assert (=> d!1164559 (= (size!31308 (originalCharacters!7115 (_1!23637 (v!39260 lt!1372235)))) lt!1372465)))

(declare-fun b!3929452 () Bool)

(assert (=> b!3929452 (= e!2430945 0)))

(declare-fun b!3929453 () Bool)

(assert (=> b!3929453 (= e!2430945 (+ 1 (size!31308 (t!325278 (originalCharacters!7115 (_1!23637 (v!39260 lt!1372235)))))))))

(assert (= (and d!1164559 c!682656) b!3929452))

(assert (= (and d!1164559 (not c!682656)) b!3929453))

(declare-fun m!4494545 () Bool)

(assert (=> b!3929453 m!4494545))

(assert (=> b!3929089 d!1164559))

(declare-fun d!1164561 () Bool)

(declare-fun res!1589938 () Bool)

(declare-fun e!2430946 () Bool)

(assert (=> d!1164561 (=> (not res!1589938) (not e!2430946))))

(assert (=> d!1164561 (= res!1589938 (not (isEmpty!24875 (originalCharacters!7115 (h!47153 prefixTokens!80)))))))

(assert (=> d!1164561 (= (inv!55924 (h!47153 prefixTokens!80)) e!2430946)))

(declare-fun b!3929454 () Bool)

(declare-fun res!1589939 () Bool)

(assert (=> b!3929454 (=> (not res!1589939) (not e!2430946))))

(assert (=> b!3929454 (= res!1589939 (= (originalCharacters!7115 (h!47153 prefixTokens!80)) (list!15504 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (value!206313 (h!47153 prefixTokens!80))))))))

(declare-fun b!3929455 () Bool)

(assert (=> b!3929455 (= e!2430946 (= (size!31307 (h!47153 prefixTokens!80)) (size!31308 (originalCharacters!7115 (h!47153 prefixTokens!80)))))))

(assert (= (and d!1164561 res!1589938) b!3929454))

(assert (= (and b!3929454 res!1589939) b!3929455))

(declare-fun b_lambda!114949 () Bool)

(assert (=> (not b_lambda!114949) (not b!3929454)))

(declare-fun tb!234719 () Bool)

(declare-fun t!325305 () Bool)

(assert (=> (and b!3929093 (= (toChars!8826 (transformation!6515 (h!47154 rules!2768))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80))))) t!325305) tb!234719))

(declare-fun b!3929456 () Bool)

(declare-fun e!2430947 () Bool)

(declare-fun tp!1196297 () Bool)

(assert (=> b!3929456 (= e!2430947 (and (inv!55928 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (value!206313 (h!47153 prefixTokens!80))))) tp!1196297))))

(declare-fun result!284444 () Bool)

(assert (=> tb!234719 (= result!284444 (and (inv!55929 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (value!206313 (h!47153 prefixTokens!80)))) e!2430947))))

(assert (= tb!234719 b!3929456))

(declare-fun m!4494547 () Bool)

(assert (=> b!3929456 m!4494547))

(declare-fun m!4494549 () Bool)

(assert (=> tb!234719 m!4494549))

(assert (=> b!3929454 t!325305))

(declare-fun b_and!299765 () Bool)

(assert (= b_and!299759 (and (=> t!325305 result!284444) b_and!299765)))

(declare-fun t!325307 () Bool)

(declare-fun tb!234721 () Bool)

(assert (=> (and b!3929087 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80))))) t!325307) tb!234721))

(declare-fun result!284446 () Bool)

(assert (= result!284446 result!284444))

(assert (=> b!3929454 t!325307))

(declare-fun b_and!299767 () Bool)

(assert (= b_and!299761 (and (=> t!325307 result!284446) b_and!299767)))

(declare-fun t!325309 () Bool)

(declare-fun tb!234723 () Bool)

(assert (=> (and b!3929105 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80))))) t!325309) tb!234723))

(declare-fun result!284448 () Bool)

(assert (= result!284448 result!284444))

(assert (=> b!3929454 t!325309))

(declare-fun b_and!299769 () Bool)

(assert (= b_and!299763 (and (=> t!325309 result!284448) b_and!299769)))

(declare-fun m!4494551 () Bool)

(assert (=> d!1164561 m!4494551))

(declare-fun m!4494553 () Bool)

(assert (=> b!3929454 m!4494553))

(assert (=> b!3929454 m!4494553))

(declare-fun m!4494555 () Bool)

(assert (=> b!3929454 m!4494555))

(declare-fun m!4494557 () Bool)

(assert (=> b!3929455 m!4494557))

(assert (=> b!3929110 d!1164561))

(declare-fun d!1164563 () Bool)

(declare-fun c!682658 () Bool)

(assert (=> d!1164563 (= c!682658 (is-IntegerValue!20235 (value!206313 (h!47153 prefixTokens!80))))))

(declare-fun e!2430949 () Bool)

(assert (=> d!1164563 (= (inv!21 (value!206313 (h!47153 prefixTokens!80))) e!2430949)))

(declare-fun b!3929457 () Bool)

(declare-fun e!2430948 () Bool)

(assert (=> b!3929457 (= e!2430948 (inv!17 (value!206313 (h!47153 prefixTokens!80))))))

(declare-fun b!3929458 () Bool)

(declare-fun res!1589940 () Bool)

(declare-fun e!2430950 () Bool)

(assert (=> b!3929458 (=> res!1589940 e!2430950)))

(assert (=> b!3929458 (= res!1589940 (not (is-IntegerValue!20237 (value!206313 (h!47153 prefixTokens!80)))))))

(assert (=> b!3929458 (= e!2430948 e!2430950)))

(declare-fun b!3929459 () Bool)

(assert (=> b!3929459 (= e!2430949 (inv!16 (value!206313 (h!47153 prefixTokens!80))))))

(declare-fun b!3929460 () Bool)

(assert (=> b!3929460 (= e!2430950 (inv!15 (value!206313 (h!47153 prefixTokens!80))))))

(declare-fun b!3929461 () Bool)

(assert (=> b!3929461 (= e!2430949 e!2430948)))

(declare-fun c!682657 () Bool)

(assert (=> b!3929461 (= c!682657 (is-IntegerValue!20236 (value!206313 (h!47153 prefixTokens!80))))))

(assert (= (and d!1164563 c!682658) b!3929459))

(assert (= (and d!1164563 (not c!682658)) b!3929461))

(assert (= (and b!3929461 c!682657) b!3929457))

(assert (= (and b!3929461 (not c!682657)) b!3929458))

(assert (= (and b!3929458 (not res!1589940)) b!3929460))

(declare-fun m!4494559 () Bool)

(assert (=> b!3929457 m!4494559))

(declare-fun m!4494561 () Bool)

(assert (=> b!3929459 m!4494561))

(declare-fun m!4494563 () Bool)

(assert (=> b!3929460 m!4494563))

(assert (=> b!3929088 d!1164563))

(declare-fun d!1164565 () Bool)

(assert (=> d!1164565 (= (inv!55921 (tag!7375 (rule!9459 (h!47153 suffixTokens!72)))) (= (mod (str.len (value!206287 (tag!7375 (rule!9459 (h!47153 suffixTokens!72))))) 2) 0))))

(assert (=> b!3929109 d!1164565))

(declare-fun d!1164567 () Bool)

(declare-fun res!1589943 () Bool)

(declare-fun e!2430953 () Bool)

(assert (=> d!1164567 (=> (not res!1589943) (not e!2430953))))

(declare-fun semiInverseModEq!2798 (Int Int) Bool)

(assert (=> d!1164567 (= res!1589943 (semiInverseModEq!2798 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) (toValue!8967 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72))))))))

(assert (=> d!1164567 (= (inv!55925 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) e!2430953)))

(declare-fun b!3929464 () Bool)

(declare-fun equivClasses!2697 (Int Int) Bool)

(assert (=> b!3929464 (= e!2430953 (equivClasses!2697 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) (toValue!8967 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72))))))))

(assert (= (and d!1164567 res!1589943) b!3929464))

(declare-fun m!4494565 () Bool)

(assert (=> d!1164567 m!4494565))

(declare-fun m!4494567 () Bool)

(assert (=> b!3929464 m!4494567))

(assert (=> b!3929109 d!1164567))

(declare-fun d!1164569 () Bool)

(assert (=> d!1164569 (= (inv!55921 (tag!7375 (h!47154 rules!2768))) (= (mod (str.len (value!206287 (tag!7375 (h!47154 rules!2768)))) 2) 0))))

(assert (=> b!3929108 d!1164569))

(declare-fun d!1164571 () Bool)

(declare-fun res!1589944 () Bool)

(declare-fun e!2430954 () Bool)

(assert (=> d!1164571 (=> (not res!1589944) (not e!2430954))))

(assert (=> d!1164571 (= res!1589944 (semiInverseModEq!2798 (toChars!8826 (transformation!6515 (h!47154 rules!2768))) (toValue!8967 (transformation!6515 (h!47154 rules!2768)))))))

(assert (=> d!1164571 (= (inv!55925 (transformation!6515 (h!47154 rules!2768))) e!2430954)))

(declare-fun b!3929465 () Bool)

(assert (=> b!3929465 (= e!2430954 (equivClasses!2697 (toChars!8826 (transformation!6515 (h!47154 rules!2768))) (toValue!8967 (transformation!6515 (h!47154 rules!2768)))))))

(assert (= (and d!1164571 res!1589944) b!3929465))

(declare-fun m!4494569 () Bool)

(assert (=> d!1164571 m!4494569))

(declare-fun m!4494571 () Bool)

(assert (=> b!3929465 m!4494571))

(assert (=> b!3929108 d!1164571))

(declare-fun d!1164573 () Bool)

(assert (=> d!1164573 (= (inv!55921 (tag!7375 (rule!9459 (h!47153 prefixTokens!80)))) (= (mod (str.len (value!206287 (tag!7375 (rule!9459 (h!47153 prefixTokens!80))))) 2) 0))))

(assert (=> b!3929113 d!1164573))

(declare-fun d!1164575 () Bool)

(declare-fun res!1589945 () Bool)

(declare-fun e!2430955 () Bool)

(assert (=> d!1164575 (=> (not res!1589945) (not e!2430955))))

(assert (=> d!1164575 (= res!1589945 (semiInverseModEq!2798 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (toValue!8967 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80))))))))

(assert (=> d!1164575 (= (inv!55925 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) e!2430955)))

(declare-fun b!3929466 () Bool)

(assert (=> b!3929466 (= e!2430955 (equivClasses!2697 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (toValue!8967 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80))))))))

(assert (= (and d!1164575 res!1589945) b!3929466))

(declare-fun m!4494573 () Bool)

(assert (=> d!1164575 m!4494573))

(declare-fun m!4494575 () Bool)

(assert (=> b!3929466 m!4494575))

(assert (=> b!3929113 d!1164575))

(declare-fun d!1164577 () Bool)

(assert (=> d!1164577 (= (head!8340 prefixTokens!80) (h!47153 prefixTokens!80))))

(assert (=> b!3929071 d!1164577))

(declare-fun b!3929468 () Bool)

(declare-fun e!2430957 () tuple2!41008)

(assert (=> b!3929468 (= e!2430957 (tuple2!41009 Nil!41733 lt!1372227))))

(declare-fun b!3929469 () Bool)

(declare-fun e!2430958 () Bool)

(declare-fun e!2430956 () Bool)

(assert (=> b!3929469 (= e!2430958 e!2430956)))

(declare-fun res!1589946 () Bool)

(declare-fun lt!1372466 () tuple2!41008)

(assert (=> b!3929469 (= res!1589946 (< (size!31308 (_2!23638 lt!1372466)) (size!31308 lt!1372227)))))

(assert (=> b!3929469 (=> (not res!1589946) (not e!2430956))))

(declare-fun b!3929470 () Bool)

(assert (=> b!3929470 (= e!2430958 (= (_2!23638 lt!1372466) lt!1372227))))

(declare-fun b!3929471 () Bool)

(assert (=> b!3929471 (= e!2430956 (not (isEmpty!24877 (_1!23638 lt!1372466))))))

(declare-fun b!3929467 () Bool)

(declare-fun lt!1372467 () Option!8935)

(declare-fun lt!1372468 () tuple2!41008)

(assert (=> b!3929467 (= e!2430957 (tuple2!41009 (Cons!41733 (_1!23637 (v!39260 lt!1372467)) (_1!23638 lt!1372468)) (_2!23638 lt!1372468)))))

(assert (=> b!3929467 (= lt!1372468 (lexList!1872 thiss!20629 rules!2768 (_2!23637 (v!39260 lt!1372467))))))

(declare-fun d!1164579 () Bool)

(assert (=> d!1164579 e!2430958))

(declare-fun c!682660 () Bool)

(assert (=> d!1164579 (= c!682660 (> (size!31311 (_1!23638 lt!1372466)) 0))))

(assert (=> d!1164579 (= lt!1372466 e!2430957)))

(declare-fun c!682659 () Bool)

(assert (=> d!1164579 (= c!682659 (is-Some!8934 lt!1372467))))

(assert (=> d!1164579 (= lt!1372467 (maxPrefix!3408 thiss!20629 rules!2768 lt!1372227))))

(assert (=> d!1164579 (= (lexList!1872 thiss!20629 rules!2768 lt!1372227) lt!1372466)))

(assert (= (and d!1164579 c!682659) b!3929467))

(assert (= (and d!1164579 (not c!682659)) b!3929468))

(assert (= (and d!1164579 c!682660) b!3929469))

(assert (= (and d!1164579 (not c!682660)) b!3929470))

(assert (= (and b!3929469 res!1589946) b!3929471))

(declare-fun m!4494577 () Bool)

(assert (=> b!3929469 m!4494577))

(declare-fun m!4494579 () Bool)

(assert (=> b!3929469 m!4494579))

(declare-fun m!4494581 () Bool)

(assert (=> b!3929471 m!4494581))

(declare-fun m!4494583 () Bool)

(assert (=> b!3929467 m!4494583))

(declare-fun m!4494585 () Bool)

(assert (=> d!1164579 m!4494585))

(declare-fun m!4494587 () Bool)

(assert (=> d!1164579 m!4494587))

(assert (=> b!3929091 d!1164579))

(declare-fun d!1164581 () Bool)

(declare-fun lt!1372469 () Int)

(assert (=> d!1164581 (>= lt!1372469 0)))

(declare-fun e!2430959 () Int)

(assert (=> d!1164581 (= lt!1372469 e!2430959)))

(declare-fun c!682661 () Bool)

(assert (=> d!1164581 (= c!682661 (is-Nil!41731 suffix!1176))))

(assert (=> d!1164581 (= (size!31308 suffix!1176) lt!1372469)))

(declare-fun b!3929472 () Bool)

(assert (=> b!3929472 (= e!2430959 0)))

(declare-fun b!3929473 () Bool)

(assert (=> b!3929473 (= e!2430959 (+ 1 (size!31308 (t!325278 suffix!1176))))))

(assert (= (and d!1164581 c!682661) b!3929472))

(assert (= (and d!1164581 (not c!682661)) b!3929473))

(declare-fun m!4494589 () Bool)

(assert (=> b!3929473 m!4494589))

(assert (=> b!3929112 d!1164581))

(declare-fun d!1164583 () Bool)

(declare-fun lt!1372470 () Int)

(assert (=> d!1164583 (>= lt!1372470 0)))

(declare-fun e!2430960 () Int)

(assert (=> d!1164583 (= lt!1372470 e!2430960)))

(declare-fun c!682662 () Bool)

(assert (=> d!1164583 (= c!682662 (is-Nil!41731 (_2!23637 (v!39260 lt!1372235))))))

(assert (=> d!1164583 (= (size!31308 (_2!23637 (v!39260 lt!1372235))) lt!1372470)))

(declare-fun b!3929474 () Bool)

(assert (=> b!3929474 (= e!2430960 0)))

(declare-fun b!3929475 () Bool)

(assert (=> b!3929475 (= e!2430960 (+ 1 (size!31308 (t!325278 (_2!23637 (v!39260 lt!1372235))))))))

(assert (= (and d!1164583 c!682662) b!3929474))

(assert (= (and d!1164583 (not c!682662)) b!3929475))

(declare-fun m!4494591 () Bool)

(assert (=> b!3929475 m!4494591))

(assert (=> b!3929112 d!1164583))

(declare-fun d!1164585 () Bool)

(assert (=> d!1164585 (isPrefix!3610 prefix!426 (++!10788 prefix!426 suffix!1176))))

(declare-fun lt!1372471 () Unit!60127)

(assert (=> d!1164585 (= lt!1372471 (choose!23350 prefix!426 suffix!1176))))

(assert (=> d!1164585 (= (lemmaConcatTwoListThenFirstIsPrefix!2473 prefix!426 suffix!1176) lt!1372471)))

(declare-fun bs!586107 () Bool)

(assert (= bs!586107 d!1164585))

(assert (=> bs!586107 m!4493985))

(assert (=> bs!586107 m!4493985))

(declare-fun m!4494593 () Bool)

(assert (=> bs!586107 m!4494593))

(declare-fun m!4494595 () Bool)

(assert (=> bs!586107 m!4494595))

(assert (=> b!3929070 d!1164585))

(declare-fun d!1164587 () Bool)

(declare-fun e!2430962 () Bool)

(assert (=> d!1164587 e!2430962))

(declare-fun res!1589947 () Bool)

(assert (=> d!1164587 (=> res!1589947 e!2430962)))

(declare-fun lt!1372472 () Bool)

(assert (=> d!1164587 (= res!1589947 (not lt!1372472))))

(declare-fun e!2430961 () Bool)

(assert (=> d!1164587 (= lt!1372472 e!2430961)))

(declare-fun res!1589950 () Bool)

(assert (=> d!1164587 (=> res!1589950 e!2430961)))

(assert (=> d!1164587 (= res!1589950 (is-Nil!41731 prefix!426))))

(assert (=> d!1164587 (= (isPrefix!3610 prefix!426 lt!1372223) lt!1372472)))

(declare-fun b!3929476 () Bool)

(declare-fun e!2430963 () Bool)

(assert (=> b!3929476 (= e!2430961 e!2430963)))

(declare-fun res!1589949 () Bool)

(assert (=> b!3929476 (=> (not res!1589949) (not e!2430963))))

(assert (=> b!3929476 (= res!1589949 (not (is-Nil!41731 lt!1372223)))))

(declare-fun b!3929477 () Bool)

(declare-fun res!1589948 () Bool)

(assert (=> b!3929477 (=> (not res!1589948) (not e!2430963))))

(assert (=> b!3929477 (= res!1589948 (= (head!8342 prefix!426) (head!8342 lt!1372223)))))

(declare-fun b!3929479 () Bool)

(assert (=> b!3929479 (= e!2430962 (>= (size!31308 lt!1372223) (size!31308 prefix!426)))))

(declare-fun b!3929478 () Bool)

(assert (=> b!3929478 (= e!2430963 (isPrefix!3610 (tail!6068 prefix!426) (tail!6068 lt!1372223)))))

(assert (= (and d!1164587 (not res!1589950)) b!3929476))

(assert (= (and b!3929476 res!1589949) b!3929477))

(assert (= (and b!3929477 res!1589948) b!3929478))

(assert (= (and d!1164587 (not res!1589947)) b!3929479))

(declare-fun m!4494597 () Bool)

(assert (=> b!3929477 m!4494597))

(declare-fun m!4494599 () Bool)

(assert (=> b!3929477 m!4494599))

(assert (=> b!3929479 m!4494049))

(assert (=> b!3929479 m!4494011))

(assert (=> b!3929478 m!4494469))

(assert (=> b!3929478 m!4494289))

(assert (=> b!3929478 m!4494469))

(assert (=> b!3929478 m!4494289))

(declare-fun m!4494601 () Bool)

(assert (=> b!3929478 m!4494601))

(assert (=> b!3929070 d!1164587))

(declare-fun d!1164589 () Bool)

(assert (=> d!1164589 (= lt!1372190 prefix!426)))

(declare-fun lt!1372475 () Unit!60127)

(declare-fun choose!23358 (List!41855 List!41855 List!41855) Unit!60127)

(assert (=> d!1164589 (= lt!1372475 (choose!23358 lt!1372190 prefix!426 lt!1372223))))

(assert (=> d!1164589 (isPrefix!3610 lt!1372190 lt!1372223)))

(assert (=> d!1164589 (= (lemmaIsPrefixSameLengthThenSameList!806 lt!1372190 prefix!426 lt!1372223) lt!1372475)))

(declare-fun bs!586108 () Bool)

(assert (= bs!586108 d!1164589))

(declare-fun m!4494603 () Bool)

(assert (=> bs!586108 m!4494603))

(assert (=> bs!586108 m!4494367))

(assert (=> b!3929070 d!1164589))

(declare-fun d!1164591 () Bool)

(assert (=> d!1164591 (= (_2!23637 (v!39260 lt!1372235)) suffix!1176)))

(declare-fun lt!1372476 () Unit!60127)

(assert (=> d!1164591 (= lt!1372476 (choose!23351 lt!1372190 (_2!23637 (v!39260 lt!1372235)) prefix!426 suffix!1176 lt!1372223))))

(assert (=> d!1164591 (isPrefix!3610 lt!1372190 lt!1372223)))

(assert (=> d!1164591 (= (lemmaSamePrefixThenSameSuffix!1831 lt!1372190 (_2!23637 (v!39260 lt!1372235)) prefix!426 suffix!1176 lt!1372223) lt!1372476)))

(declare-fun bs!586109 () Bool)

(assert (= bs!586109 d!1164591))

(declare-fun m!4494605 () Bool)

(assert (=> bs!586109 m!4494605))

(assert (=> bs!586109 m!4494367))

(assert (=> b!3929070 d!1164591))

(declare-fun b!3929513 () Bool)

(declare-fun res!1589969 () Bool)

(declare-fun e!2430980 () Bool)

(assert (=> b!3929513 (=> (not res!1589969) (not e!2430980))))

(declare-fun lt!1372501 () Option!8935)

(assert (=> b!3929513 (= res!1589969 (= (++!10788 (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372501)))) (_2!23637 (get!13793 lt!1372501))) lt!1372223))))

(declare-fun b!3929514 () Bool)

(declare-fun e!2430981 () Bool)

(assert (=> b!3929514 (= e!2430981 e!2430980)))

(declare-fun res!1589973 () Bool)

(assert (=> b!3929514 (=> (not res!1589973) (not e!2430980))))

(declare-fun isDefined!6946 (Option!8935) Bool)

(assert (=> b!3929514 (= res!1589973 (isDefined!6946 lt!1372501))))

(declare-fun b!3929515 () Bool)

(declare-fun e!2430979 () Option!8935)

(declare-fun call!284773 () Option!8935)

(assert (=> b!3929515 (= e!2430979 call!284773)))

(declare-fun b!3929516 () Bool)

(declare-fun res!1589971 () Bool)

(assert (=> b!3929516 (=> (not res!1589971) (not e!2430980))))

(assert (=> b!3929516 (= res!1589971 (= (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372501)))) (originalCharacters!7115 (_1!23637 (get!13793 lt!1372501)))))))

(declare-fun b!3929517 () Bool)

(declare-fun lt!1372499 () Option!8935)

(declare-fun lt!1372500 () Option!8935)

(assert (=> b!3929517 (= e!2430979 (ite (and (is-None!8934 lt!1372499) (is-None!8934 lt!1372500)) None!8934 (ite (is-None!8934 lt!1372500) lt!1372499 (ite (is-None!8934 lt!1372499) lt!1372500 (ite (>= (size!31307 (_1!23637 (v!39260 lt!1372499))) (size!31307 (_1!23637 (v!39260 lt!1372500)))) lt!1372499 lt!1372500)))))))

(assert (=> b!3929517 (= lt!1372499 call!284773)))

(assert (=> b!3929517 (= lt!1372500 (maxPrefix!3408 thiss!20629 (t!325281 rules!2768) lt!1372223))))

(declare-fun d!1164593 () Bool)

(assert (=> d!1164593 e!2430981))

(declare-fun res!1589972 () Bool)

(assert (=> d!1164593 (=> res!1589972 e!2430981)))

(declare-fun isEmpty!24881 (Option!8935) Bool)

(assert (=> d!1164593 (= res!1589972 (isEmpty!24881 lt!1372501))))

(assert (=> d!1164593 (= lt!1372501 e!2430979)))

(declare-fun c!682671 () Bool)

(assert (=> d!1164593 (= c!682671 (and (is-Cons!41734 rules!2768) (is-Nil!41734 (t!325281 rules!2768))))))

(declare-fun lt!1372503 () Unit!60127)

(declare-fun lt!1372502 () Unit!60127)

(assert (=> d!1164593 (= lt!1372503 lt!1372502)))

(assert (=> d!1164593 (isPrefix!3610 lt!1372223 lt!1372223)))

(declare-fun lemmaIsPrefixRefl!2277 (List!41855 List!41855) Unit!60127)

(assert (=> d!1164593 (= lt!1372502 (lemmaIsPrefixRefl!2277 lt!1372223 lt!1372223))))

(declare-fun rulesValidInductive!2347 (LexerInterface!6104 List!41858) Bool)

(assert (=> d!1164593 (rulesValidInductive!2347 thiss!20629 rules!2768)))

(assert (=> d!1164593 (= (maxPrefix!3408 thiss!20629 rules!2768 lt!1372223) lt!1372501)))

(declare-fun b!3929518 () Bool)

(declare-fun res!1589970 () Bool)

(assert (=> b!3929518 (=> (not res!1589970) (not e!2430980))))

(declare-fun matchR!5479 (Regex!11420 List!41855) Bool)

(assert (=> b!3929518 (= res!1589970 (matchR!5479 (regex!6515 (rule!9459 (_1!23637 (get!13793 lt!1372501)))) (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372501))))))))

(declare-fun b!3929519 () Bool)

(declare-fun res!1589974 () Bool)

(assert (=> b!3929519 (=> (not res!1589974) (not e!2430980))))

(assert (=> b!3929519 (= res!1589974 (< (size!31308 (_2!23637 (get!13793 lt!1372501))) (size!31308 lt!1372223)))))

(declare-fun bm!284768 () Bool)

(assert (=> bm!284768 (= call!284773 (maxPrefixOneRule!2478 thiss!20629 (h!47154 rules!2768) lt!1372223))))

(declare-fun b!3929520 () Bool)

(declare-fun res!1589968 () Bool)

(assert (=> b!3929520 (=> (not res!1589968) (not e!2430980))))

(assert (=> b!3929520 (= res!1589968 (= (value!206313 (_1!23637 (get!13793 lt!1372501))) (apply!9754 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372501)))) (seqFromList!4782 (originalCharacters!7115 (_1!23637 (get!13793 lt!1372501)))))))))

(declare-fun b!3929521 () Bool)

(assert (=> b!3929521 (= e!2430980 (contains!8362 rules!2768 (rule!9459 (_1!23637 (get!13793 lt!1372501)))))))

(assert (= (and d!1164593 c!682671) b!3929515))

(assert (= (and d!1164593 (not c!682671)) b!3929517))

(assert (= (or b!3929515 b!3929517) bm!284768))

(assert (= (and d!1164593 (not res!1589972)) b!3929514))

(assert (= (and b!3929514 res!1589973) b!3929516))

(assert (= (and b!3929516 res!1589971) b!3929519))

(assert (= (and b!3929519 res!1589974) b!3929513))

(assert (= (and b!3929513 res!1589969) b!3929520))

(assert (= (and b!3929520 res!1589968) b!3929518))

(assert (= (and b!3929518 res!1589970) b!3929521))

(declare-fun m!4494621 () Bool)

(assert (=> b!3929517 m!4494621))

(declare-fun m!4494623 () Bool)

(assert (=> d!1164593 m!4494623))

(declare-fun m!4494625 () Bool)

(assert (=> d!1164593 m!4494625))

(declare-fun m!4494627 () Bool)

(assert (=> d!1164593 m!4494627))

(declare-fun m!4494629 () Bool)

(assert (=> d!1164593 m!4494629))

(declare-fun m!4494631 () Bool)

(assert (=> b!3929518 m!4494631))

(declare-fun m!4494633 () Bool)

(assert (=> b!3929518 m!4494633))

(assert (=> b!3929518 m!4494633))

(declare-fun m!4494635 () Bool)

(assert (=> b!3929518 m!4494635))

(assert (=> b!3929518 m!4494635))

(declare-fun m!4494637 () Bool)

(assert (=> b!3929518 m!4494637))

(assert (=> b!3929513 m!4494631))

(assert (=> b!3929513 m!4494633))

(assert (=> b!3929513 m!4494633))

(assert (=> b!3929513 m!4494635))

(assert (=> b!3929513 m!4494635))

(declare-fun m!4494639 () Bool)

(assert (=> b!3929513 m!4494639))

(declare-fun m!4494641 () Bool)

(assert (=> b!3929514 m!4494641))

(assert (=> b!3929520 m!4494631))

(declare-fun m!4494643 () Bool)

(assert (=> b!3929520 m!4494643))

(assert (=> b!3929520 m!4494643))

(declare-fun m!4494645 () Bool)

(assert (=> b!3929520 m!4494645))

(assert (=> b!3929521 m!4494631))

(declare-fun m!4494647 () Bool)

(assert (=> b!3929521 m!4494647))

(assert (=> b!3929516 m!4494631))

(assert (=> b!3929516 m!4494633))

(assert (=> b!3929516 m!4494633))

(assert (=> b!3929516 m!4494635))

(assert (=> b!3929519 m!4494631))

(declare-fun m!4494649 () Bool)

(assert (=> b!3929519 m!4494649))

(assert (=> b!3929519 m!4494049))

(declare-fun m!4494651 () Bool)

(assert (=> bm!284768 m!4494651))

(assert (=> b!3929111 d!1164593))

(declare-fun d!1164599 () Bool)

(declare-fun e!2430983 () Bool)

(assert (=> d!1164599 e!2430983))

(declare-fun res!1589975 () Bool)

(assert (=> d!1164599 (=> res!1589975 e!2430983)))

(declare-fun lt!1372504 () Bool)

(assert (=> d!1164599 (= res!1589975 (not lt!1372504))))

(declare-fun e!2430982 () Bool)

(assert (=> d!1164599 (= lt!1372504 e!2430982)))

(declare-fun res!1589978 () Bool)

(assert (=> d!1164599 (=> res!1589978 e!2430982)))

(assert (=> d!1164599 (= res!1589978 (is-Nil!41731 lt!1372190))))

(assert (=> d!1164599 (= (isPrefix!3610 lt!1372190 prefix!426) lt!1372504)))

(declare-fun b!3929522 () Bool)

(declare-fun e!2430984 () Bool)

(assert (=> b!3929522 (= e!2430982 e!2430984)))

(declare-fun res!1589977 () Bool)

(assert (=> b!3929522 (=> (not res!1589977) (not e!2430984))))

(assert (=> b!3929522 (= res!1589977 (not (is-Nil!41731 prefix!426)))))

(declare-fun b!3929523 () Bool)

(declare-fun res!1589976 () Bool)

(assert (=> b!3929523 (=> (not res!1589976) (not e!2430984))))

(assert (=> b!3929523 (= res!1589976 (= (head!8342 lt!1372190) (head!8342 prefix!426)))))

(declare-fun b!3929525 () Bool)

(assert (=> b!3929525 (= e!2430983 (>= (size!31308 prefix!426) (size!31308 lt!1372190)))))

(declare-fun b!3929524 () Bool)

(assert (=> b!3929524 (= e!2430984 (isPrefix!3610 (tail!6068 lt!1372190) (tail!6068 prefix!426)))))

(assert (= (and d!1164599 (not res!1589978)) b!3929522))

(assert (= (and b!3929522 res!1589977) b!3929523))

(assert (= (and b!3929523 res!1589976) b!3929524))

(assert (= (and d!1164599 (not res!1589975)) b!3929525))

(assert (=> b!3929523 m!4494313))

(assert (=> b!3929523 m!4494597))

(assert (=> b!3929525 m!4494011))

(assert (=> b!3929525 m!4494105))

(assert (=> b!3929524 m!4494319))

(assert (=> b!3929524 m!4494469))

(assert (=> b!3929524 m!4494319))

(assert (=> b!3929524 m!4494469))

(declare-fun m!4494653 () Bool)

(assert (=> b!3929524 m!4494653))

(assert (=> b!3929083 d!1164599))

(assert (=> b!3929083 d!1164587))

(declare-fun d!1164601 () Bool)

(assert (=> d!1164601 (isPrefix!3610 lt!1372190 prefix!426)))

(declare-fun lt!1372507 () Unit!60127)

(declare-fun choose!23362 (List!41855 List!41855 List!41855) Unit!60127)

(assert (=> d!1164601 (= lt!1372507 (choose!23362 prefix!426 lt!1372190 lt!1372223))))

(assert (=> d!1164601 (isPrefix!3610 prefix!426 lt!1372223)))

(assert (=> d!1164601 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!288 prefix!426 lt!1372190 lt!1372223) lt!1372507)))

(declare-fun bs!586111 () Bool)

(assert (= bs!586111 d!1164601))

(assert (=> bs!586111 m!4494019))

(declare-fun m!4494655 () Bool)

(assert (=> bs!586111 m!4494655))

(assert (=> bs!586111 m!4494017))

(assert (=> b!3929083 d!1164601))

(assert (=> b!3929083 d!1164585))

(declare-fun d!1164603 () Bool)

(declare-fun lt!1372508 () Int)

(assert (=> d!1164603 (>= lt!1372508 0)))

(declare-fun e!2430985 () Int)

(assert (=> d!1164603 (= lt!1372508 e!2430985)))

(declare-fun c!682672 () Bool)

(assert (=> d!1164603 (= c!682672 (is-Nil!41731 prefix!426))))

(assert (=> d!1164603 (= (size!31308 prefix!426) lt!1372508)))

(declare-fun b!3929526 () Bool)

(assert (=> b!3929526 (= e!2430985 0)))

(declare-fun b!3929527 () Bool)

(assert (=> b!3929527 (= e!2430985 (+ 1 (size!31308 (t!325278 prefix!426))))))

(assert (= (and d!1164603 c!682672) b!3929526))

(assert (= (and d!1164603 (not c!682672)) b!3929527))

(declare-fun m!4494657 () Bool)

(assert (=> b!3929527 m!4494657))

(assert (=> b!3929083 d!1164603))

(declare-fun d!1164605 () Bool)

(assert (=> d!1164605 (= (++!10787 (++!10787 lt!1372210 lt!1372222) suffixTokens!72) (++!10787 lt!1372210 (++!10787 lt!1372222 suffixTokens!72)))))

(declare-fun lt!1372511 () Unit!60127)

(declare-fun choose!23363 (List!41857 List!41857 List!41857) Unit!60127)

(assert (=> d!1164605 (= lt!1372511 (choose!23363 lt!1372210 lt!1372222 suffixTokens!72))))

(assert (=> d!1164605 (= (lemmaConcatAssociativity!2318 lt!1372210 lt!1372222 suffixTokens!72) lt!1372511)))

(declare-fun bs!586112 () Bool)

(assert (= bs!586112 d!1164605))

(assert (=> bs!586112 m!4493989))

(assert (=> bs!586112 m!4493991))

(assert (=> bs!586112 m!4493989))

(assert (=> bs!586112 m!4494111))

(declare-fun m!4494659 () Bool)

(assert (=> bs!586112 m!4494659))

(assert (=> bs!586112 m!4494111))

(declare-fun m!4494661 () Bool)

(assert (=> bs!586112 m!4494661))

(assert (=> b!3929104 d!1164605))

(declare-fun b!3929528 () Bool)

(declare-fun e!2430986 () List!41857)

(assert (=> b!3929528 (= e!2430986 lt!1372222)))

(declare-fun b!3929530 () Bool)

(declare-fun res!1589980 () Bool)

(declare-fun e!2430987 () Bool)

(assert (=> b!3929530 (=> (not res!1589980) (not e!2430987))))

(declare-fun lt!1372512 () List!41857)

(assert (=> b!3929530 (= res!1589980 (= (size!31311 lt!1372512) (+ (size!31311 lt!1372210) (size!31311 lt!1372222))))))

(declare-fun d!1164607 () Bool)

(assert (=> d!1164607 e!2430987))

(declare-fun res!1589979 () Bool)

(assert (=> d!1164607 (=> (not res!1589979) (not e!2430987))))

(assert (=> d!1164607 (= res!1589979 (= (content!6282 lt!1372512) (set.union (content!6282 lt!1372210) (content!6282 lt!1372222))))))

(assert (=> d!1164607 (= lt!1372512 e!2430986)))

(declare-fun c!682673 () Bool)

(assert (=> d!1164607 (= c!682673 (is-Nil!41733 lt!1372210))))

(assert (=> d!1164607 (= (++!10787 lt!1372210 lt!1372222) lt!1372512)))

(declare-fun b!3929529 () Bool)

(assert (=> b!3929529 (= e!2430986 (Cons!41733 (h!47153 lt!1372210) (++!10787 (t!325280 lt!1372210) lt!1372222)))))

(declare-fun b!3929531 () Bool)

(assert (=> b!3929531 (= e!2430987 (or (not (= lt!1372222 Nil!41733)) (= lt!1372512 lt!1372210)))))

(assert (= (and d!1164607 c!682673) b!3929528))

(assert (= (and d!1164607 (not c!682673)) b!3929529))

(assert (= (and d!1164607 res!1589979) b!3929530))

(assert (= (and b!3929530 res!1589980) b!3929531))

(declare-fun m!4494663 () Bool)

(assert (=> b!3929530 m!4494663))

(assert (=> b!3929530 m!4494533))

(declare-fun m!4494665 () Bool)

(assert (=> b!3929530 m!4494665))

(declare-fun m!4494667 () Bool)

(assert (=> d!1164607 m!4494667))

(assert (=> d!1164607 m!4494539))

(declare-fun m!4494669 () Bool)

(assert (=> d!1164607 m!4494669))

(declare-fun m!4494671 () Bool)

(assert (=> b!3929529 m!4494671))

(assert (=> b!3929104 d!1164607))

(declare-fun d!1164609 () Bool)

(assert (=> d!1164609 (= (isEmpty!24877 lt!1372222) (is-Nil!41733 lt!1372222))))

(assert (=> b!3929104 d!1164609))

(declare-fun b!3929532 () Bool)

(declare-fun e!2430988 () List!41857)

(assert (=> b!3929532 (= e!2430988 suffixTokens!72)))

(declare-fun b!3929534 () Bool)

(declare-fun res!1589982 () Bool)

(declare-fun e!2430989 () Bool)

(assert (=> b!3929534 (=> (not res!1589982) (not e!2430989))))

(declare-fun lt!1372513 () List!41857)

(assert (=> b!3929534 (= res!1589982 (= (size!31311 lt!1372513) (+ (size!31311 (++!10787 lt!1372210 lt!1372222)) (size!31311 suffixTokens!72))))))

(declare-fun d!1164611 () Bool)

(assert (=> d!1164611 e!2430989))

(declare-fun res!1589981 () Bool)

(assert (=> d!1164611 (=> (not res!1589981) (not e!2430989))))

(assert (=> d!1164611 (= res!1589981 (= (content!6282 lt!1372513) (set.union (content!6282 (++!10787 lt!1372210 lt!1372222)) (content!6282 suffixTokens!72))))))

(assert (=> d!1164611 (= lt!1372513 e!2430988)))

(declare-fun c!682674 () Bool)

(assert (=> d!1164611 (= c!682674 (is-Nil!41733 (++!10787 lt!1372210 lt!1372222)))))

(assert (=> d!1164611 (= (++!10787 (++!10787 lt!1372210 lt!1372222) suffixTokens!72) lt!1372513)))

(declare-fun b!3929533 () Bool)

(assert (=> b!3929533 (= e!2430988 (Cons!41733 (h!47153 (++!10787 lt!1372210 lt!1372222)) (++!10787 (t!325280 (++!10787 lt!1372210 lt!1372222)) suffixTokens!72)))))

(declare-fun b!3929535 () Bool)

(assert (=> b!3929535 (= e!2430989 (or (not (= suffixTokens!72 Nil!41733)) (= lt!1372513 (++!10787 lt!1372210 lt!1372222))))))

(assert (= (and d!1164611 c!682674) b!3929532))

(assert (= (and d!1164611 (not c!682674)) b!3929533))

(assert (= (and d!1164611 res!1589981) b!3929534))

(assert (= (and b!3929534 res!1589982) b!3929535))

(declare-fun m!4494673 () Bool)

(assert (=> b!3929534 m!4494673))

(assert (=> b!3929534 m!4493989))

(declare-fun m!4494675 () Bool)

(assert (=> b!3929534 m!4494675))

(assert (=> b!3929534 m!4494449))

(declare-fun m!4494677 () Bool)

(assert (=> d!1164611 m!4494677))

(assert (=> d!1164611 m!4493989))

(declare-fun m!4494679 () Bool)

(assert (=> d!1164611 m!4494679))

(assert (=> d!1164611 m!4494455))

(declare-fun m!4494681 () Bool)

(assert (=> b!3929533 m!4494681))

(assert (=> b!3929104 d!1164611))

(declare-fun b!3929536 () Bool)

(declare-fun e!2430990 () List!41857)

(assert (=> b!3929536 (= e!2430990 lt!1372216)))

(declare-fun b!3929538 () Bool)

(declare-fun res!1589984 () Bool)

(declare-fun e!2430991 () Bool)

(assert (=> b!3929538 (=> (not res!1589984) (not e!2430991))))

(declare-fun lt!1372514 () List!41857)

(assert (=> b!3929538 (= res!1589984 (= (size!31311 lt!1372514) (+ (size!31311 lt!1372210) (size!31311 lt!1372216))))))

(declare-fun d!1164613 () Bool)

(assert (=> d!1164613 e!2430991))

(declare-fun res!1589983 () Bool)

(assert (=> d!1164613 (=> (not res!1589983) (not e!2430991))))

(assert (=> d!1164613 (= res!1589983 (= (content!6282 lt!1372514) (set.union (content!6282 lt!1372210) (content!6282 lt!1372216))))))

(assert (=> d!1164613 (= lt!1372514 e!2430990)))

(declare-fun c!682675 () Bool)

(assert (=> d!1164613 (= c!682675 (is-Nil!41733 lt!1372210))))

(assert (=> d!1164613 (= (++!10787 lt!1372210 lt!1372216) lt!1372514)))

(declare-fun b!3929537 () Bool)

(assert (=> b!3929537 (= e!2430990 (Cons!41733 (h!47153 lt!1372210) (++!10787 (t!325280 lt!1372210) lt!1372216)))))

(declare-fun b!3929539 () Bool)

(assert (=> b!3929539 (= e!2430991 (or (not (= lt!1372216 Nil!41733)) (= lt!1372514 lt!1372210)))))

(assert (= (and d!1164613 c!682675) b!3929536))

(assert (= (and d!1164613 (not c!682675)) b!3929537))

(assert (= (and d!1164613 res!1589983) b!3929538))

(assert (= (and b!3929538 res!1589984) b!3929539))

(declare-fun m!4494683 () Bool)

(assert (=> b!3929538 m!4494683))

(assert (=> b!3929538 m!4494533))

(declare-fun m!4494685 () Bool)

(assert (=> b!3929538 m!4494685))

(declare-fun m!4494687 () Bool)

(assert (=> d!1164613 m!4494687))

(assert (=> d!1164613 m!4494539))

(declare-fun m!4494689 () Bool)

(assert (=> d!1164613 m!4494689))

(declare-fun m!4494691 () Bool)

(assert (=> b!3929537 m!4494691))

(assert (=> b!3929104 d!1164613))

(declare-fun b!3929540 () Bool)

(declare-fun e!2430993 () List!41855)

(assert (=> b!3929540 (= e!2430993 lt!1372227)))

(declare-fun b!3929542 () Bool)

(declare-fun res!1589985 () Bool)

(declare-fun e!2430992 () Bool)

(assert (=> b!3929542 (=> (not res!1589985) (not e!2430992))))

(declare-fun lt!1372515 () List!41855)

(assert (=> b!3929542 (= res!1589985 (= (size!31308 lt!1372515) (+ (size!31308 lt!1372190) (size!31308 lt!1372227))))))

(declare-fun b!3929543 () Bool)

(assert (=> b!3929543 (= e!2430992 (or (not (= lt!1372227 Nil!41731)) (= lt!1372515 lt!1372190)))))

(declare-fun b!3929541 () Bool)

(assert (=> b!3929541 (= e!2430993 (Cons!41731 (h!47151 lt!1372190) (++!10788 (t!325278 lt!1372190) lt!1372227)))))

(declare-fun d!1164615 () Bool)

(assert (=> d!1164615 e!2430992))

(declare-fun res!1589986 () Bool)

(assert (=> d!1164615 (=> (not res!1589986) (not e!2430992))))

(assert (=> d!1164615 (= res!1589986 (= (content!6281 lt!1372515) (set.union (content!6281 lt!1372190) (content!6281 lt!1372227))))))

(assert (=> d!1164615 (= lt!1372515 e!2430993)))

(declare-fun c!682676 () Bool)

(assert (=> d!1164615 (= c!682676 (is-Nil!41731 lt!1372190))))

(assert (=> d!1164615 (= (++!10788 lt!1372190 lt!1372227) lt!1372515)))

(assert (= (and d!1164615 c!682676) b!3929540))

(assert (= (and d!1164615 (not c!682676)) b!3929541))

(assert (= (and d!1164615 res!1589986) b!3929542))

(assert (= (and b!3929542 res!1589985) b!3929543))

(declare-fun m!4494693 () Bool)

(assert (=> b!3929542 m!4494693))

(assert (=> b!3929542 m!4494105))

(assert (=> b!3929542 m!4494579))

(declare-fun m!4494695 () Bool)

(assert (=> b!3929541 m!4494695))

(declare-fun m!4494697 () Bool)

(assert (=> d!1164615 m!4494697))

(assert (=> d!1164615 m!4494331))

(declare-fun m!4494699 () Bool)

(assert (=> d!1164615 m!4494699))

(assert (=> b!3929082 d!1164615))

(declare-fun b!3929544 () Bool)

(declare-fun e!2430995 () List!41855)

(assert (=> b!3929544 (= e!2430995 suffix!1176)))

(declare-fun b!3929546 () Bool)

(declare-fun res!1589987 () Bool)

(declare-fun e!2430994 () Bool)

(assert (=> b!3929546 (=> (not res!1589987) (not e!2430994))))

(declare-fun lt!1372516 () List!41855)

(assert (=> b!3929546 (= res!1589987 (= (size!31308 lt!1372516) (+ (size!31308 lt!1372187) (size!31308 suffix!1176))))))

(declare-fun b!3929547 () Bool)

(assert (=> b!3929547 (= e!2430994 (or (not (= suffix!1176 Nil!41731)) (= lt!1372516 lt!1372187)))))

(declare-fun b!3929545 () Bool)

(assert (=> b!3929545 (= e!2430995 (Cons!41731 (h!47151 lt!1372187) (++!10788 (t!325278 lt!1372187) suffix!1176)))))

(declare-fun d!1164617 () Bool)

(assert (=> d!1164617 e!2430994))

(declare-fun res!1589988 () Bool)

(assert (=> d!1164617 (=> (not res!1589988) (not e!2430994))))

(assert (=> d!1164617 (= res!1589988 (= (content!6281 lt!1372516) (set.union (content!6281 lt!1372187) (content!6281 suffix!1176))))))

(assert (=> d!1164617 (= lt!1372516 e!2430995)))

(declare-fun c!682677 () Bool)

(assert (=> d!1164617 (= c!682677 (is-Nil!41731 lt!1372187))))

(assert (=> d!1164617 (= (++!10788 lt!1372187 suffix!1176) lt!1372516)))

(assert (= (and d!1164617 c!682677) b!3929544))

(assert (= (and d!1164617 (not c!682677)) b!3929545))

(assert (= (and d!1164617 res!1589988) b!3929546))

(assert (= (and b!3929546 res!1589987) b!3929547))

(declare-fun m!4494701 () Bool)

(assert (=> b!3929546 m!4494701))

(assert (=> b!3929546 m!4494381))

(assert (=> b!3929546 m!4493967))

(declare-fun m!4494703 () Bool)

(assert (=> b!3929545 m!4494703))

(declare-fun m!4494705 () Bool)

(assert (=> d!1164617 m!4494705))

(assert (=> d!1164617 m!4494465))

(assert (=> d!1164617 m!4494419))

(assert (=> b!3929082 d!1164617))

(declare-fun d!1164619 () Bool)

(assert (=> d!1164619 (= (++!10788 (++!10788 lt!1372190 lt!1372187) suffix!1176) (++!10788 lt!1372190 (++!10788 lt!1372187 suffix!1176)))))

(declare-fun lt!1372519 () Unit!60127)

(declare-fun choose!23364 (List!41855 List!41855 List!41855) Unit!60127)

(assert (=> d!1164619 (= lt!1372519 (choose!23364 lt!1372190 lt!1372187 suffix!1176))))

(assert (=> d!1164619 (= (lemmaConcatAssociativity!2317 lt!1372190 lt!1372187 suffix!1176) lt!1372519)))

(declare-fun bs!586113 () Bool)

(assert (= bs!586113 d!1164619))

(declare-fun m!4494707 () Bool)

(assert (=> bs!586113 m!4494707))

(assert (=> bs!586113 m!4494021))

(assert (=> bs!586113 m!4494063))

(declare-fun m!4494709 () Bool)

(assert (=> bs!586113 m!4494709))

(assert (=> bs!586113 m!4494021))

(declare-fun m!4494711 () Bool)

(assert (=> bs!586113 m!4494711))

(assert (=> bs!586113 m!4494063))

(assert (=> b!3929082 d!1164619))

(declare-fun b!3929548 () Bool)

(declare-fun e!2430996 () List!41857)

(assert (=> b!3929548 (= e!2430996 suffixTokens!72)))

(declare-fun b!3929550 () Bool)

(declare-fun res!1589990 () Bool)

(declare-fun e!2430997 () Bool)

(assert (=> b!3929550 (=> (not res!1589990) (not e!2430997))))

(declare-fun lt!1372520 () List!41857)

(assert (=> b!3929550 (= res!1589990 (= (size!31311 lt!1372520) (+ (size!31311 lt!1372222) (size!31311 suffixTokens!72))))))

(declare-fun d!1164621 () Bool)

(assert (=> d!1164621 e!2430997))

(declare-fun res!1589989 () Bool)

(assert (=> d!1164621 (=> (not res!1589989) (not e!2430997))))

(assert (=> d!1164621 (= res!1589989 (= (content!6282 lt!1372520) (set.union (content!6282 lt!1372222) (content!6282 suffixTokens!72))))))

(assert (=> d!1164621 (= lt!1372520 e!2430996)))

(declare-fun c!682678 () Bool)

(assert (=> d!1164621 (= c!682678 (is-Nil!41733 lt!1372222))))

(assert (=> d!1164621 (= (++!10787 lt!1372222 suffixTokens!72) lt!1372520)))

(declare-fun b!3929549 () Bool)

(assert (=> b!3929549 (= e!2430996 (Cons!41733 (h!47153 lt!1372222) (++!10787 (t!325280 lt!1372222) suffixTokens!72)))))

(declare-fun b!3929551 () Bool)

(assert (=> b!3929551 (= e!2430997 (or (not (= suffixTokens!72 Nil!41733)) (= lt!1372520 lt!1372222)))))

(assert (= (and d!1164621 c!682678) b!3929548))

(assert (= (and d!1164621 (not c!682678)) b!3929549))

(assert (= (and d!1164621 res!1589989) b!3929550))

(assert (= (and b!3929550 res!1589990) b!3929551))

(declare-fun m!4494713 () Bool)

(assert (=> b!3929550 m!4494713))

(assert (=> b!3929550 m!4494665))

(assert (=> b!3929550 m!4494449))

(declare-fun m!4494715 () Bool)

(assert (=> d!1164621 m!4494715))

(assert (=> d!1164621 m!4494669))

(assert (=> d!1164621 m!4494455))

(declare-fun m!4494717 () Bool)

(assert (=> b!3929549 m!4494717))

(assert (=> b!3929086 d!1164621))

(declare-fun d!1164623 () Bool)

(assert (=> d!1164623 (= (tail!6066 prefixTokens!80) (t!325280 prefixTokens!80))))

(assert (=> b!3929086 d!1164623))

(declare-fun d!1164625 () Bool)

(declare-fun e!2430999 () Bool)

(assert (=> d!1164625 e!2430999))

(declare-fun res!1589991 () Bool)

(assert (=> d!1164625 (=> res!1589991 e!2430999)))

(declare-fun lt!1372523 () Bool)

(assert (=> d!1164625 (= res!1589991 (not lt!1372523))))

(declare-fun e!2430998 () Bool)

(assert (=> d!1164625 (= lt!1372523 e!2430998)))

(declare-fun res!1589994 () Bool)

(assert (=> d!1164625 (=> res!1589994 e!2430998)))

(assert (=> d!1164625 (= res!1589994 (is-Nil!41731 lt!1372187))))

(assert (=> d!1164625 (= (isPrefix!3610 lt!1372187 lt!1372227) lt!1372523)))

(declare-fun b!3929552 () Bool)

(declare-fun e!2431000 () Bool)

(assert (=> b!3929552 (= e!2430998 e!2431000)))

(declare-fun res!1589993 () Bool)

(assert (=> b!3929552 (=> (not res!1589993) (not e!2431000))))

(assert (=> b!3929552 (= res!1589993 (not (is-Nil!41731 lt!1372227)))))

(declare-fun b!3929553 () Bool)

(declare-fun res!1589992 () Bool)

(assert (=> b!3929553 (=> (not res!1589992) (not e!2431000))))

(assert (=> b!3929553 (= res!1589992 (= (head!8342 lt!1372187) (head!8342 lt!1372227)))))

(declare-fun b!3929555 () Bool)

(assert (=> b!3929555 (= e!2430999 (>= (size!31308 lt!1372227) (size!31308 lt!1372187)))))

(declare-fun b!3929554 () Bool)

(assert (=> b!3929554 (= e!2431000 (isPrefix!3610 (tail!6068 lt!1372187) (tail!6068 lt!1372227)))))

(assert (= (and d!1164625 (not res!1589994)) b!3929552))

(assert (= (and b!3929552 res!1589993) b!3929553))

(assert (= (and b!3929553 res!1589992) b!3929554))

(assert (= (and d!1164625 (not res!1589991)) b!3929555))

(declare-fun m!4494719 () Bool)

(assert (=> b!3929553 m!4494719))

(declare-fun m!4494721 () Bool)

(assert (=> b!3929553 m!4494721))

(assert (=> b!3929555 m!4494579))

(assert (=> b!3929555 m!4494381))

(declare-fun m!4494723 () Bool)

(assert (=> b!3929554 m!4494723))

(declare-fun m!4494725 () Bool)

(assert (=> b!3929554 m!4494725))

(assert (=> b!3929554 m!4494723))

(assert (=> b!3929554 m!4494725))

(declare-fun m!4494727 () Bool)

(assert (=> b!3929554 m!4494727))

(assert (=> b!3929086 d!1164625))

(declare-fun d!1164627 () Bool)

(assert (=> d!1164627 (isPrefix!3610 lt!1372187 (++!10788 lt!1372187 suffix!1176))))

(declare-fun lt!1372524 () Unit!60127)

(assert (=> d!1164627 (= lt!1372524 (choose!23350 lt!1372187 suffix!1176))))

(assert (=> d!1164627 (= (lemmaConcatTwoListThenFirstIsPrefix!2473 lt!1372187 suffix!1176) lt!1372524)))

(declare-fun bs!586114 () Bool)

(assert (= bs!586114 d!1164627))

(assert (=> bs!586114 m!4494063))

(assert (=> bs!586114 m!4494063))

(declare-fun m!4494729 () Bool)

(assert (=> bs!586114 m!4494729))

(declare-fun m!4494731 () Bool)

(assert (=> bs!586114 m!4494731))

(assert (=> b!3929086 d!1164627))

(declare-fun d!1164629 () Bool)

(assert (=> d!1164629 (= (isEmpty!24877 lt!1372217) (is-Nil!41733 lt!1372217))))

(assert (=> b!3929107 d!1164629))

(assert (=> b!3929107 d!1164623))

(declare-fun d!1164631 () Bool)

(assert (=> d!1164631 (= (isEmpty!24875 prefix!426) (is-Nil!41731 prefix!426))))

(assert (=> b!3929106 d!1164631))

(declare-fun d!1164633 () Bool)

(assert (=> d!1164633 (= (get!13793 lt!1372235) (v!39260 lt!1372235))))

(assert (=> b!3929084 d!1164633))

(declare-fun d!1164635 () Bool)

(declare-fun lt!1372526 () Int)

(assert (=> d!1164635 (>= lt!1372526 0)))

(declare-fun e!2431001 () Int)

(assert (=> d!1164635 (= lt!1372526 e!2431001)))

(declare-fun c!682679 () Bool)

(assert (=> d!1164635 (= c!682679 (is-Nil!41731 lt!1372223))))

(assert (=> d!1164635 (= (size!31308 lt!1372223) lt!1372526)))

(declare-fun b!3929556 () Bool)

(assert (=> b!3929556 (= e!2431001 0)))

(declare-fun b!3929557 () Bool)

(assert (=> b!3929557 (= e!2431001 (+ 1 (size!31308 (t!325278 lt!1372223))))))

(assert (= (and d!1164635 c!682679) b!3929556))

(assert (= (and d!1164635 (not c!682679)) b!3929557))

(declare-fun m!4494735 () Bool)

(assert (=> b!3929557 m!4494735))

(assert (=> b!3929084 d!1164635))

(declare-fun d!1164639 () Bool)

(declare-fun lt!1372529 () Int)

(assert (=> d!1164639 (>= lt!1372529 0)))

(declare-fun e!2431005 () Int)

(assert (=> d!1164639 (= lt!1372529 e!2431005)))

(declare-fun c!682682 () Bool)

(assert (=> d!1164639 (= c!682682 (is-Nil!41731 (_2!23637 lt!1372230)))))

(assert (=> d!1164639 (= (size!31308 (_2!23637 lt!1372230)) lt!1372529)))

(declare-fun b!3929559 () Bool)

(assert (=> b!3929559 (= e!2431005 0)))

(declare-fun b!3929561 () Bool)

(assert (=> b!3929561 (= e!2431005 (+ 1 (size!31308 (t!325278 (_2!23637 lt!1372230)))))))

(assert (= (and d!1164639 c!682682) b!3929559))

(assert (= (and d!1164639 (not c!682682)) b!3929561))

(declare-fun m!4494737 () Bool)

(assert (=> b!3929561 m!4494737))

(assert (=> b!3929084 d!1164639))

(declare-fun d!1164641 () Bool)

(assert (=> d!1164641 (= (maxPrefixOneRule!2478 thiss!20629 (rule!9459 (_1!23637 (v!39260 lt!1372235))) lt!1372223) (Some!8934 (tuple2!41007 (Token!12169 (apply!9754 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))) (seqFromList!4782 lt!1372190)) (rule!9459 (_1!23637 (v!39260 lt!1372235))) (size!31308 lt!1372190) lt!1372190) (_2!23637 (v!39260 lt!1372235)))))))

(declare-fun lt!1372540 () Unit!60127)

(declare-fun choose!23366 (LexerInterface!6104 List!41858 List!41855 List!41855 List!41855 Rule!12830) Unit!60127)

(assert (=> d!1164641 (= lt!1372540 (choose!23366 thiss!20629 rules!2768 lt!1372190 lt!1372223 (_2!23637 (v!39260 lt!1372235)) (rule!9459 (_1!23637 (v!39260 lt!1372235)))))))

(assert (=> d!1164641 (not (isEmpty!24876 rules!2768))))

(assert (=> d!1164641 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1346 thiss!20629 rules!2768 lt!1372190 lt!1372223 (_2!23637 (v!39260 lt!1372235)) (rule!9459 (_1!23637 (v!39260 lt!1372235)))) lt!1372540)))

(declare-fun bs!586119 () Bool)

(assert (= bs!586119 d!1164641))

(assert (=> bs!586119 m!4494105))

(assert (=> bs!586119 m!4494091))

(assert (=> bs!586119 m!4494099))

(assert (=> bs!586119 m!4494025))

(declare-fun m!4494773 () Bool)

(assert (=> bs!586119 m!4494773))

(assert (=> bs!586119 m!4494091))

(assert (=> bs!586119 m!4494047))

(assert (=> b!3929084 d!1164641))

(declare-fun b!3929660 () Bool)

(declare-fun e!2431061 () Bool)

(declare-fun e!2431060 () Bool)

(assert (=> b!3929660 (= e!2431061 e!2431060)))

(declare-fun res!1590053 () Bool)

(assert (=> b!3929660 (=> (not res!1590053) (not e!2431060))))

(declare-fun lt!1372587 () Option!8935)

(assert (=> b!3929660 (= res!1590053 (matchR!5479 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))) (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372587))))))))

(declare-fun b!3929661 () Bool)

(assert (=> b!3929661 (= e!2431060 (= (size!31307 (_1!23637 (get!13793 lt!1372587))) (size!31308 (originalCharacters!7115 (_1!23637 (get!13793 lt!1372587))))))))

(declare-fun b!3929662 () Bool)

(declare-fun res!1590059 () Bool)

(assert (=> b!3929662 (=> (not res!1590059) (not e!2431060))))

(assert (=> b!3929662 (= res!1590059 (= (rule!9459 (_1!23637 (get!13793 lt!1372587))) (rule!9459 (_1!23637 (v!39260 lt!1372235)))))))

(declare-fun b!3929663 () Bool)

(declare-fun e!2431063 () Bool)

(declare-datatypes ((tuple2!41014 0))(
  ( (tuple2!41015 (_1!23641 List!41855) (_2!23641 List!41855)) )
))
(declare-fun findLongestMatchInner!1259 (Regex!11420 List!41855 Int List!41855 List!41855 Int) tuple2!41014)

(assert (=> b!3929663 (= e!2431063 (matchR!5479 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))) (_1!23641 (findLongestMatchInner!1259 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))) Nil!41731 (size!31308 Nil!41731) lt!1372223 lt!1372223 (size!31308 lt!1372223)))))))

(declare-fun b!3929664 () Bool)

(declare-fun e!2431062 () Option!8935)

(declare-fun lt!1372586 () tuple2!41014)

(declare-fun size!31313 (BalanceConc!25046) Int)

(assert (=> b!3929664 (= e!2431062 (Some!8934 (tuple2!41007 (Token!12169 (apply!9754 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))) (seqFromList!4782 (_1!23641 lt!1372586))) (rule!9459 (_1!23637 (v!39260 lt!1372235))) (size!31313 (seqFromList!4782 (_1!23641 lt!1372586))) (_1!23641 lt!1372586)) (_2!23641 lt!1372586))))))

(declare-fun lt!1372583 () Unit!60127)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1232 (Regex!11420 List!41855) Unit!60127)

(assert (=> b!3929664 (= lt!1372583 (longestMatchIsAcceptedByMatchOrIsEmpty!1232 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))) lt!1372223))))

(declare-fun res!1590058 () Bool)

(assert (=> b!3929664 (= res!1590058 (isEmpty!24875 (_1!23641 (findLongestMatchInner!1259 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))) Nil!41731 (size!31308 Nil!41731) lt!1372223 lt!1372223 (size!31308 lt!1372223)))))))

(assert (=> b!3929664 (=> res!1590058 e!2431063)))

(assert (=> b!3929664 e!2431063))

(declare-fun lt!1372585 () Unit!60127)

(assert (=> b!3929664 (= lt!1372585 lt!1372583)))

(declare-fun lt!1372584 () Unit!60127)

(declare-fun lemmaSemiInverse!1765 (TokenValueInjection!12918 BalanceConc!25046) Unit!60127)

(assert (=> b!3929664 (= lt!1372584 (lemmaSemiInverse!1765 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))) (seqFromList!4782 (_1!23641 lt!1372586))))))

(declare-fun b!3929666 () Bool)

(declare-fun res!1590054 () Bool)

(assert (=> b!3929666 (=> (not res!1590054) (not e!2431060))))

(assert (=> b!3929666 (= res!1590054 (= (value!206313 (_1!23637 (get!13793 lt!1372587))) (apply!9754 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372587)))) (seqFromList!4782 (originalCharacters!7115 (_1!23637 (get!13793 lt!1372587)))))))))

(declare-fun b!3929667 () Bool)

(declare-fun res!1590057 () Bool)

(assert (=> b!3929667 (=> (not res!1590057) (not e!2431060))))

(assert (=> b!3929667 (= res!1590057 (< (size!31308 (_2!23637 (get!13793 lt!1372587))) (size!31308 lt!1372223)))))

(declare-fun b!3929668 () Bool)

(declare-fun res!1590056 () Bool)

(assert (=> b!3929668 (=> (not res!1590056) (not e!2431060))))

(assert (=> b!3929668 (= res!1590056 (= (++!10788 (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372587)))) (_2!23637 (get!13793 lt!1372587))) lt!1372223))))

(declare-fun d!1164653 () Bool)

(assert (=> d!1164653 e!2431061))

(declare-fun res!1590055 () Bool)

(assert (=> d!1164653 (=> res!1590055 e!2431061)))

(assert (=> d!1164653 (= res!1590055 (isEmpty!24881 lt!1372587))))

(assert (=> d!1164653 (= lt!1372587 e!2431062)))

(declare-fun c!682698 () Bool)

(assert (=> d!1164653 (= c!682698 (isEmpty!24875 (_1!23641 lt!1372586)))))

(declare-fun findLongestMatch!1172 (Regex!11420 List!41855) tuple2!41014)

(assert (=> d!1164653 (= lt!1372586 (findLongestMatch!1172 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))) lt!1372223))))

(assert (=> d!1164653 (ruleValid!2463 thiss!20629 (rule!9459 (_1!23637 (v!39260 lt!1372235))))))

(assert (=> d!1164653 (= (maxPrefixOneRule!2478 thiss!20629 (rule!9459 (_1!23637 (v!39260 lt!1372235))) lt!1372223) lt!1372587)))

(declare-fun b!3929665 () Bool)

(assert (=> b!3929665 (= e!2431062 None!8934)))

(assert (= (and d!1164653 c!682698) b!3929665))

(assert (= (and d!1164653 (not c!682698)) b!3929664))

(assert (= (and b!3929664 (not res!1590058)) b!3929663))

(assert (= (and d!1164653 (not res!1590055)) b!3929660))

(assert (= (and b!3929660 res!1590053) b!3929668))

(assert (= (and b!3929668 res!1590056) b!3929667))

(assert (= (and b!3929667 res!1590057) b!3929662))

(assert (= (and b!3929662 res!1590059) b!3929666))

(assert (= (and b!3929666 res!1590054) b!3929661))

(declare-fun m!4494901 () Bool)

(assert (=> b!3929663 m!4494901))

(assert (=> b!3929663 m!4494049))

(assert (=> b!3929663 m!4494901))

(assert (=> b!3929663 m!4494049))

(declare-fun m!4494903 () Bool)

(assert (=> b!3929663 m!4494903))

(declare-fun m!4494905 () Bool)

(assert (=> b!3929663 m!4494905))

(declare-fun m!4494907 () Bool)

(assert (=> b!3929662 m!4494907))

(assert (=> b!3929661 m!4494907))

(declare-fun m!4494909 () Bool)

(assert (=> b!3929661 m!4494909))

(assert (=> b!3929664 m!4494901))

(assert (=> b!3929664 m!4494901))

(assert (=> b!3929664 m!4494049))

(assert (=> b!3929664 m!4494903))

(declare-fun m!4494911 () Bool)

(assert (=> b!3929664 m!4494911))

(declare-fun m!4494913 () Bool)

(assert (=> b!3929664 m!4494913))

(declare-fun m!4494915 () Bool)

(assert (=> b!3929664 m!4494915))

(assert (=> b!3929664 m!4494911))

(assert (=> b!3929664 m!4494049))

(assert (=> b!3929664 m!4494911))

(declare-fun m!4494917 () Bool)

(assert (=> b!3929664 m!4494917))

(declare-fun m!4494919 () Bool)

(assert (=> b!3929664 m!4494919))

(assert (=> b!3929664 m!4494911))

(declare-fun m!4494921 () Bool)

(assert (=> b!3929664 m!4494921))

(declare-fun m!4494923 () Bool)

(assert (=> d!1164653 m!4494923))

(declare-fun m!4494925 () Bool)

(assert (=> d!1164653 m!4494925))

(declare-fun m!4494927 () Bool)

(assert (=> d!1164653 m!4494927))

(assert (=> d!1164653 m!4494109))

(assert (=> b!3929660 m!4494907))

(declare-fun m!4494929 () Bool)

(assert (=> b!3929660 m!4494929))

(assert (=> b!3929660 m!4494929))

(declare-fun m!4494931 () Bool)

(assert (=> b!3929660 m!4494931))

(assert (=> b!3929660 m!4494931))

(declare-fun m!4494933 () Bool)

(assert (=> b!3929660 m!4494933))

(assert (=> b!3929668 m!4494907))

(assert (=> b!3929668 m!4494929))

(assert (=> b!3929668 m!4494929))

(assert (=> b!3929668 m!4494931))

(assert (=> b!3929668 m!4494931))

(declare-fun m!4494935 () Bool)

(assert (=> b!3929668 m!4494935))

(assert (=> b!3929667 m!4494907))

(declare-fun m!4494937 () Bool)

(assert (=> b!3929667 m!4494937))

(assert (=> b!3929667 m!4494049))

(assert (=> b!3929666 m!4494907))

(declare-fun m!4494939 () Bool)

(assert (=> b!3929666 m!4494939))

(assert (=> b!3929666 m!4494939))

(declare-fun m!4494941 () Bool)

(assert (=> b!3929666 m!4494941))

(assert (=> b!3929084 d!1164653))

(declare-fun b!3929679 () Bool)

(declare-fun b_free!107249 () Bool)

(declare-fun b_next!107953 () Bool)

(assert (=> b!3929679 (= b_free!107249 (not b_next!107953))))

(declare-fun tb!234743 () Bool)

(declare-fun t!325329 () Bool)

(assert (=> (and b!3929679 (= (toValue!8967 (transformation!6515 (h!47154 (t!325281 rules!2768)))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))) t!325329) tb!234743))

(declare-fun result!284474 () Bool)

(assert (= result!284474 result!284430))

(assert (=> d!1164491 t!325329))

(declare-fun tp!1196313 () Bool)

(declare-fun b_and!299789 () Bool)

(assert (=> b!3929679 (= tp!1196313 (and (=> t!325329 result!284474) b_and!299789))))

(declare-fun b_free!107251 () Bool)

(declare-fun b_next!107955 () Bool)

(assert (=> b!3929679 (= b_free!107251 (not b_next!107955))))

(declare-fun t!325331 () Bool)

(declare-fun tb!234745 () Bool)

(assert (=> (and b!3929679 (= (toChars!8826 (transformation!6515 (h!47154 (t!325281 rules!2768)))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))) t!325331) tb!234745))

(declare-fun result!284476 () Bool)

(assert (= result!284476 result!284422))

(assert (=> d!1164479 t!325331))

(declare-fun t!325333 () Bool)

(declare-fun tb!234747 () Bool)

(assert (=> (and b!3929679 (= (toChars!8826 (transformation!6515 (h!47154 (t!325281 rules!2768)))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72))))) t!325333) tb!234747))

(declare-fun result!284478 () Bool)

(assert (= result!284478 result!284438))

(assert (=> b!3929374 t!325333))

(declare-fun tb!234749 () Bool)

(declare-fun t!325335 () Bool)

(assert (=> (and b!3929679 (= (toChars!8826 (transformation!6515 (h!47154 (t!325281 rules!2768)))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80))))) t!325335) tb!234749))

(declare-fun result!284480 () Bool)

(assert (= result!284480 result!284444))

(assert (=> b!3929454 t!325335))

(declare-fun b_and!299791 () Bool)

(declare-fun tp!1196311 () Bool)

(assert (=> b!3929679 (= tp!1196311 (and (=> t!325331 result!284476) (=> t!325333 result!284478) (=> t!325335 result!284480) b_and!299791))))

(declare-fun e!2431072 () Bool)

(assert (=> b!3929679 (= e!2431072 (and tp!1196313 tp!1196311))))

(declare-fun b!3929678 () Bool)

(declare-fun e!2431075 () Bool)

(declare-fun tp!1196310 () Bool)

(assert (=> b!3929678 (= e!2431075 (and tp!1196310 (inv!55921 (tag!7375 (h!47154 (t!325281 rules!2768)))) (inv!55925 (transformation!6515 (h!47154 (t!325281 rules!2768)))) e!2431072))))

(declare-fun b!3929677 () Bool)

(declare-fun e!2431074 () Bool)

(declare-fun tp!1196312 () Bool)

(assert (=> b!3929677 (= e!2431074 (and e!2431075 tp!1196312))))

(assert (=> b!3929078 (= tp!1196231 e!2431074)))

(assert (= b!3929678 b!3929679))

(assert (= b!3929677 b!3929678))

(assert (= (and b!3929078 (is-Cons!41734 (t!325281 rules!2768))) b!3929677))

(declare-fun m!4494943 () Bool)

(assert (=> b!3929678 m!4494943))

(declare-fun m!4494945 () Bool)

(assert (=> b!3929678 m!4494945))

(declare-fun b!3929693 () Bool)

(declare-fun b_free!107253 () Bool)

(declare-fun b_next!107957 () Bool)

(assert (=> b!3929693 (= b_free!107253 (not b_next!107957))))

(declare-fun t!325337 () Bool)

(declare-fun tb!234751 () Bool)

(assert (=> (and b!3929693 (= (toValue!8967 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80))))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))) t!325337) tb!234751))

(declare-fun result!284484 () Bool)

(assert (= result!284484 result!284430))

(assert (=> d!1164491 t!325337))

(declare-fun tp!1196327 () Bool)

(declare-fun b_and!299793 () Bool)

(assert (=> b!3929693 (= tp!1196327 (and (=> t!325337 result!284484) b_and!299793))))

(declare-fun b_free!107255 () Bool)

(declare-fun b_next!107959 () Bool)

(assert (=> b!3929693 (= b_free!107255 (not b_next!107959))))

(declare-fun tb!234753 () Bool)

(declare-fun t!325339 () Bool)

(assert (=> (and b!3929693 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80))))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))) t!325339) tb!234753))

(declare-fun result!284486 () Bool)

(assert (= result!284486 result!284422))

(assert (=> d!1164479 t!325339))

(declare-fun tb!234755 () Bool)

(declare-fun t!325341 () Bool)

(assert (=> (and b!3929693 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80))))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72))))) t!325341) tb!234755))

(declare-fun result!284488 () Bool)

(assert (= result!284488 result!284438))

(assert (=> b!3929374 t!325341))

(declare-fun t!325343 () Bool)

(declare-fun tb!234757 () Bool)

(assert (=> (and b!3929693 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80))))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80))))) t!325343) tb!234757))

(declare-fun result!284490 () Bool)

(assert (= result!284490 result!284444))

(assert (=> b!3929454 t!325343))

(declare-fun b_and!299795 () Bool)

(declare-fun tp!1196325 () Bool)

(assert (=> b!3929693 (= tp!1196325 (and (=> t!325339 result!284486) (=> t!325341 result!284488) (=> t!325343 result!284490) b_and!299795))))

(declare-fun e!2431092 () Bool)

(assert (=> b!3929110 (= tp!1196228 e!2431092)))

(declare-fun e!2431090 () Bool)

(declare-fun e!2431091 () Bool)

(declare-fun b!3929692 () Bool)

(declare-fun tp!1196324 () Bool)

(assert (=> b!3929692 (= e!2431091 (and tp!1196324 (inv!55921 (tag!7375 (rule!9459 (h!47153 (t!325280 prefixTokens!80))))) (inv!55925 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80))))) e!2431090))))

(declare-fun b!3929691 () Bool)

(declare-fun tp!1196328 () Bool)

(declare-fun e!2431093 () Bool)

(assert (=> b!3929691 (= e!2431093 (and (inv!21 (value!206313 (h!47153 (t!325280 prefixTokens!80)))) e!2431091 tp!1196328))))

(declare-fun b!3929690 () Bool)

(declare-fun tp!1196326 () Bool)

(assert (=> b!3929690 (= e!2431092 (and (inv!55924 (h!47153 (t!325280 prefixTokens!80))) e!2431093 tp!1196326))))

(assert (=> b!3929693 (= e!2431090 (and tp!1196327 tp!1196325))))

(assert (= b!3929692 b!3929693))

(assert (= b!3929691 b!3929692))

(assert (= b!3929690 b!3929691))

(assert (= (and b!3929110 (is-Cons!41733 (t!325280 prefixTokens!80))) b!3929690))

(declare-fun m!4494947 () Bool)

(assert (=> b!3929692 m!4494947))

(declare-fun m!4494949 () Bool)

(assert (=> b!3929692 m!4494949))

(declare-fun m!4494951 () Bool)

(assert (=> b!3929691 m!4494951))

(declare-fun m!4494953 () Bool)

(assert (=> b!3929690 m!4494953))

(declare-fun b!3929698 () Bool)

(declare-fun e!2431096 () Bool)

(declare-fun tp!1196331 () Bool)

(assert (=> b!3929698 (= e!2431096 (and tp_is_empty!19811 tp!1196331))))

(assert (=> b!3929088 (= tp!1196233 e!2431096)))

(assert (= (and b!3929088 (is-Cons!41731 (originalCharacters!7115 (h!47153 prefixTokens!80)))) b!3929698))

(declare-fun b!3929709 () Bool)

(declare-fun e!2431099 () Bool)

(assert (=> b!3929709 (= e!2431099 tp_is_empty!19811)))

(declare-fun b!3929711 () Bool)

(declare-fun tp!1196342 () Bool)

(assert (=> b!3929711 (= e!2431099 tp!1196342)))

(declare-fun b!3929710 () Bool)

(declare-fun tp!1196343 () Bool)

(declare-fun tp!1196345 () Bool)

(assert (=> b!3929710 (= e!2431099 (and tp!1196343 tp!1196345))))

(assert (=> b!3929109 (= tp!1196241 e!2431099)))

(declare-fun b!3929712 () Bool)

(declare-fun tp!1196346 () Bool)

(declare-fun tp!1196344 () Bool)

(assert (=> b!3929712 (= e!2431099 (and tp!1196346 tp!1196344))))

(assert (= (and b!3929109 (is-ElementMatch!11420 (regex!6515 (rule!9459 (h!47153 suffixTokens!72))))) b!3929709))

(assert (= (and b!3929109 (is-Concat!18166 (regex!6515 (rule!9459 (h!47153 suffixTokens!72))))) b!3929710))

(assert (= (and b!3929109 (is-Star!11420 (regex!6515 (rule!9459 (h!47153 suffixTokens!72))))) b!3929711))

(assert (= (and b!3929109 (is-Union!11420 (regex!6515 (rule!9459 (h!47153 suffixTokens!72))))) b!3929712))

(declare-fun b!3929713 () Bool)

(declare-fun e!2431100 () Bool)

(assert (=> b!3929713 (= e!2431100 tp_is_empty!19811)))

(declare-fun b!3929715 () Bool)

(declare-fun tp!1196347 () Bool)

(assert (=> b!3929715 (= e!2431100 tp!1196347)))

(declare-fun b!3929714 () Bool)

(declare-fun tp!1196348 () Bool)

(declare-fun tp!1196350 () Bool)

(assert (=> b!3929714 (= e!2431100 (and tp!1196348 tp!1196350))))

(assert (=> b!3929108 (= tp!1196237 e!2431100)))

(declare-fun b!3929716 () Bool)

(declare-fun tp!1196351 () Bool)

(declare-fun tp!1196349 () Bool)

(assert (=> b!3929716 (= e!2431100 (and tp!1196351 tp!1196349))))

(assert (= (and b!3929108 (is-ElementMatch!11420 (regex!6515 (h!47154 rules!2768)))) b!3929713))

(assert (= (and b!3929108 (is-Concat!18166 (regex!6515 (h!47154 rules!2768)))) b!3929714))

(assert (= (and b!3929108 (is-Star!11420 (regex!6515 (h!47154 rules!2768)))) b!3929715))

(assert (= (and b!3929108 (is-Union!11420 (regex!6515 (h!47154 rules!2768)))) b!3929716))

(declare-fun b!3929717 () Bool)

(declare-fun e!2431101 () Bool)

(assert (=> b!3929717 (= e!2431101 tp_is_empty!19811)))

(declare-fun b!3929719 () Bool)

(declare-fun tp!1196352 () Bool)

(assert (=> b!3929719 (= e!2431101 tp!1196352)))

(declare-fun b!3929718 () Bool)

(declare-fun tp!1196353 () Bool)

(declare-fun tp!1196355 () Bool)

(assert (=> b!3929718 (= e!2431101 (and tp!1196353 tp!1196355))))

(assert (=> b!3929113 (= tp!1196240 e!2431101)))

(declare-fun b!3929720 () Bool)

(declare-fun tp!1196356 () Bool)

(declare-fun tp!1196354 () Bool)

(assert (=> b!3929720 (= e!2431101 (and tp!1196356 tp!1196354))))

(assert (= (and b!3929113 (is-ElementMatch!11420 (regex!6515 (rule!9459 (h!47153 prefixTokens!80))))) b!3929717))

(assert (= (and b!3929113 (is-Concat!18166 (regex!6515 (rule!9459 (h!47153 prefixTokens!80))))) b!3929718))

(assert (= (and b!3929113 (is-Star!11420 (regex!6515 (rule!9459 (h!47153 prefixTokens!80))))) b!3929719))

(assert (= (and b!3929113 (is-Union!11420 (regex!6515 (rule!9459 (h!47153 prefixTokens!80))))) b!3929720))

(declare-fun b!3929724 () Bool)

(declare-fun b_free!107257 () Bool)

(declare-fun b_next!107961 () Bool)

(assert (=> b!3929724 (= b_free!107257 (not b_next!107961))))

(declare-fun t!325345 () Bool)

(declare-fun tb!234759 () Bool)

(assert (=> (and b!3929724 (= (toValue!8967 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72))))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))) t!325345) tb!234759))

(declare-fun result!284496 () Bool)

(assert (= result!284496 result!284430))

(assert (=> d!1164491 t!325345))

(declare-fun b_and!299797 () Bool)

(declare-fun tp!1196360 () Bool)

(assert (=> b!3929724 (= tp!1196360 (and (=> t!325345 result!284496) b_and!299797))))

(declare-fun b_free!107259 () Bool)

(declare-fun b_next!107963 () Bool)

(assert (=> b!3929724 (= b_free!107259 (not b_next!107963))))

(declare-fun tb!234761 () Bool)

(declare-fun t!325347 () Bool)

(assert (=> (and b!3929724 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72))))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))) t!325347) tb!234761))

(declare-fun result!284498 () Bool)

(assert (= result!284498 result!284422))

(assert (=> d!1164479 t!325347))

(declare-fun t!325349 () Bool)

(declare-fun tb!234763 () Bool)

(assert (=> (and b!3929724 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72))))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72))))) t!325349) tb!234763))

(declare-fun result!284500 () Bool)

(assert (= result!284500 result!284438))

(assert (=> b!3929374 t!325349))

(declare-fun t!325351 () Bool)

(declare-fun tb!234765 () Bool)

(assert (=> (and b!3929724 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72))))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80))))) t!325351) tb!234765))

(declare-fun result!284502 () Bool)

(assert (= result!284502 result!284444))

(assert (=> b!3929454 t!325351))

(declare-fun tp!1196358 () Bool)

(declare-fun b_and!299799 () Bool)

(assert (=> b!3929724 (= tp!1196358 (and (=> t!325347 result!284498) (=> t!325349 result!284500) (=> t!325351 result!284502) b_and!299799))))

(declare-fun e!2431106 () Bool)

(assert (=> b!3929080 (= tp!1196229 e!2431106)))

(declare-fun tp!1196357 () Bool)

(declare-fun b!3929723 () Bool)

(declare-fun e!2431105 () Bool)

(declare-fun e!2431104 () Bool)

(assert (=> b!3929723 (= e!2431105 (and tp!1196357 (inv!55921 (tag!7375 (rule!9459 (h!47153 (t!325280 suffixTokens!72))))) (inv!55925 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72))))) e!2431104))))

(declare-fun tp!1196361 () Bool)

(declare-fun e!2431107 () Bool)

(declare-fun b!3929722 () Bool)

(assert (=> b!3929722 (= e!2431107 (and (inv!21 (value!206313 (h!47153 (t!325280 suffixTokens!72)))) e!2431105 tp!1196361))))

(declare-fun tp!1196359 () Bool)

(declare-fun b!3929721 () Bool)

(assert (=> b!3929721 (= e!2431106 (and (inv!55924 (h!47153 (t!325280 suffixTokens!72))) e!2431107 tp!1196359))))

(assert (=> b!3929724 (= e!2431104 (and tp!1196360 tp!1196358))))

(assert (= b!3929723 b!3929724))

(assert (= b!3929722 b!3929723))

(assert (= b!3929721 b!3929722))

(assert (= (and b!3929080 (is-Cons!41733 (t!325280 suffixTokens!72))) b!3929721))

(declare-fun m!4494955 () Bool)

(assert (=> b!3929723 m!4494955))

(declare-fun m!4494957 () Bool)

(assert (=> b!3929723 m!4494957))

(declare-fun m!4494959 () Bool)

(assert (=> b!3929722 m!4494959))

(declare-fun m!4494961 () Bool)

(assert (=> b!3929721 m!4494961))

(declare-fun b!3929725 () Bool)

(declare-fun e!2431108 () Bool)

(declare-fun tp!1196362 () Bool)

(assert (=> b!3929725 (= e!2431108 (and tp_is_empty!19811 tp!1196362))))

(assert (=> b!3929090 (= tp!1196238 e!2431108)))

(assert (= (and b!3929090 (is-Cons!41731 (t!325278 suffix!1176))) b!3929725))

(declare-fun b!3929726 () Bool)

(declare-fun e!2431109 () Bool)

(declare-fun tp!1196363 () Bool)

(assert (=> b!3929726 (= e!2431109 (and tp_is_empty!19811 tp!1196363))))

(assert (=> b!3929103 (= tp!1196226 e!2431109)))

(assert (= (and b!3929103 (is-Cons!41731 (t!325278 suffixResult!91))) b!3929726))

(declare-fun b!3929727 () Bool)

(declare-fun e!2431110 () Bool)

(declare-fun tp!1196364 () Bool)

(assert (=> b!3929727 (= e!2431110 (and tp_is_empty!19811 tp!1196364))))

(assert (=> b!3929092 (= tp!1196234 e!2431110)))

(assert (= (and b!3929092 (is-Cons!41731 (originalCharacters!7115 (h!47153 suffixTokens!72)))) b!3929727))

(declare-fun b!3929728 () Bool)

(declare-fun e!2431111 () Bool)

(declare-fun tp!1196365 () Bool)

(assert (=> b!3929728 (= e!2431111 (and tp_is_empty!19811 tp!1196365))))

(assert (=> b!3929097 (= tp!1196239 e!2431111)))

(assert (= (and b!3929097 (is-Cons!41731 (t!325278 prefix!426))) b!3929728))

(declare-fun b_lambda!114957 () Bool)

(assert (= b_lambda!114949 (or (and b!3929724 b_free!107259 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72))))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))))) (and b!3929693 b_free!107255 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80))))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))))) (and b!3929087 b_free!107231) (and b!3929679 b_free!107251 (= (toChars!8826 (transformation!6515 (h!47154 (t!325281 rules!2768)))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))))) (and b!3929105 b_free!107235 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))))) (and b!3929093 b_free!107227 (= (toChars!8826 (transformation!6515 (h!47154 rules!2768))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))))) b_lambda!114957)))

(declare-fun b_lambda!114959 () Bool)

(assert (= b_lambda!114947 (or (and b!3929093 b_free!107227 (= (toChars!8826 (transformation!6515 (h!47154 rules!2768))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))))) (and b!3929693 b_free!107255 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80))))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))))) (and b!3929679 b_free!107251 (= (toChars!8826 (transformation!6515 (h!47154 (t!325281 rules!2768)))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))))) (and b!3929087 b_free!107231 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))))) (and b!3929105 b_free!107235) (and b!3929724 b_free!107259 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72))))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))))) b_lambda!114959)))

(push 1)

(assert (not d!1164515))

(assert (not d!1164605))

(assert (not b!3929726))

(assert (not d!1164487))

(assert (not b!3929477))

(assert (not b!3929479))

(assert (not d!1164509))

(assert (not b!3929460))

(assert (not tb!234713))

(assert (not b!3929459))

(assert (not b!3929359))

(assert (not b_lambda!114945))

(assert (not b!3929727))

(assert (not b_next!107957))

(assert (not b!3929407))

(assert (not d!1164561))

(assert (not b!3929661))

(assert b_and!299769)

(assert (not b!3929524))

(assert (not b!3929442))

(assert (not d!1164653))

(assert (not d!1164507))

(assert (not b!3929530))

(assert (not b!3929513))

(assert (not d!1164541))

(assert b_and!299755)

(assert (not d!1164533))

(assert (not b_next!107963))

(assert (not d!1164607))

(assert (not b!3929545))

(assert (not b_next!107939))

(assert (not d!1164627))

(assert (not b!3929375))

(assert (not b!3929719))

(assert (not d!1164575))

(assert (not d!1164535))

(assert (not d!1164549))

(assert (not b!3929725))

(assert (not d!1164475))

(assert (not d!1164579))

(assert (not b!3929690))

(assert (not b!3929437))

(assert b_and!299757)

(assert (not b!3929403))

(assert (not b!3929668))

(assert (not d!1164601))

(assert (not b!3929426))

(assert (not b!3929430))

(assert (not b!3929715))

(assert b_and!299791)

(assert (not b!3929428))

(assert (not d!1164567))

(assert (not b!3929349))

(assert (not tb!234701))

(assert (not b!3929538))

(assert (not b!3929714))

(assert (not d!1164621))

(assert (not b!3929677))

(assert (not b!3929402))

(assert (not b!3929553))

(assert (not b!3929374))

(assert (not b!3929447))

(assert b_and!299795)

(assert (not b!3929542))

(assert (not b!3929347))

(assert (not b!3929441))

(assert (not d!1164529))

(assert (not d!1164611))

(assert (not b_next!107953))

(assert (not b!3929273))

(assert (not b!3929541))

(assert (not b!3929443))

(assert (not b!3929667))

(assert (not b!3929678))

(assert (not b!3929445))

(assert (not b!3929455))

(assert (not b!3929561))

(assert (not b!3929465))

(assert (not b!3929440))

(assert (not b!3929720))

(assert (not b!3929457))

(assert (not d!1164545))

(assert (not b!3929692))

(assert (not b!3929362))

(assert (not b_next!107937))

(assert (not b!3929550))

(assert (not d!1164501))

(assert (not b!3929523))

(assert (not b!3929423))

(assert (not d!1164589))

(assert (not d!1164485))

(assert (not b!3929666))

(assert (not d!1164519))

(assert (not b!3929529))

(assert (not b!3929464))

(assert (not d!1164615))

(assert (not b!3929518))

(assert (not d!1164511))

(assert (not d!1164641))

(assert (not b!3929521))

(assert (not b!3929456))

(assert (not b_next!107959))

(assert (not d!1164543))

(assert (not d!1164553))

(assert (not b!3929297))

(assert (not b!3929546))

(assert (not b!3929718))

(assert (not b!3929534))

(assert (not d!1164467))

(assert (not b!3929280))

(assert (not b!3929537))

(assert (not b!3929357))

(assert (not d!1164617))

(assert (not b!3929364))

(assert (not d!1164613))

(assert b_and!299767)

(assert (not tb!234719))

(assert (not b!3929473))

(assert (not b!3929517))

(assert (not b!3929453))

(assert (not b!3929379))

(assert (not b!3929433))

(assert (not d!1164531))

(assert (not d!1164525))

(assert (not bm!284768))

(assert (not b!3929533))

(assert b_and!299799)

(assert (not d!1164473))

(assert (not b!3929449))

(assert (not b!3929527))

(assert (not b!3929436))

(assert (not b!3929519))

(assert (not d!1164493))

(assert (not d!1164557))

(assert (not b!3929554))

(assert (not b!3929409))

(assert b_and!299789)

(assert (not b!3929478))

(assert (not b_lambda!114957))

(assert (not b_next!107955))

(assert (not d!1164593))

(assert (not d!1164481))

(assert (not b!3929721))

(assert (not d!1164521))

(assert (not b!3929663))

(assert (not b!3929712))

(assert (not b!3929722))

(assert (not d!1164585))

(assert (not b!3929351))

(assert (not d!1164479))

(assert (not b!3929369))

(assert b_and!299765)

(assert (not tb!234707))

(assert (not b!3929421))

(assert (not b!3929314))

(assert (not b!3929516))

(assert (not b!3929424))

(assert (not b!3929307))

(assert (not b!3929376))

(assert (not b!3929555))

(assert (not b!3929723))

(assert (not b_next!107931))

(assert (not b_next!107935))

(assert (not b!3929475))

(assert b_and!299793)

(assert (not b!3929454))

(assert (not b!3929698))

(assert (not b!3929716))

(assert (not b!3929557))

(assert (not b!3929378))

(assert (not b!3929525))

(assert (not b!3929467))

(assert (not b_next!107933))

(assert (not b!3929366))

(assert (not b!3929664))

(assert b_and!299797)

(assert (not d!1164619))

(assert (not b!3929296))

(assert (not b!3929471))

(assert (not b!3929361))

(assert (not d!1164555))

(assert (not d!1164571))

(assert (not d!1164591))

(assert (not b!3929660))

(assert (not b!3929514))

(assert (not b!3929711))

(assert (not b!3929295))

(assert (not b!3929432))

(assert (not d!1164505))

(assert (not b!3929728))

(assert (not b!3929691))

(assert (not b_next!107961))

(assert (not d!1164471))

(assert (not b!3929549))

(assert (not b!3929285))

(assert (not d!1164469))

(assert (not b!3929466))

(assert (not b_next!107929))

(assert b_and!299753)

(assert (not b!3929662))

(assert (not d!1164513))

(assert (not b!3929520))

(assert (not b_lambda!114959))

(assert tp_is_empty!19811)

(assert (not b!3929308))

(assert (not b!3929450))

(assert (not b!3929406))

(assert (not b_lambda!114943))

(assert (not b!3929710))

(assert (not b!3929469))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!107957))

(assert b_and!299769)

(assert b_and!299757)

(assert b_and!299791)

(assert b_and!299795)

(assert (not b_next!107953))

(assert (not b_next!107937))

(assert (not b_next!107959))

(assert b_and!299767)

(assert b_and!299799)

(assert b_and!299789)

(assert (not b_next!107955))

(assert b_and!299765)

(assert (not b_next!107933))

(assert b_and!299797)

(assert (not b_next!107961))

(assert (not b_next!107939))

(assert b_and!299755)

(assert (not b_next!107963))

(assert (not b_next!107931))

(assert (not b_next!107935))

(assert b_and!299793)

(assert (not b_next!107929))

(assert b_and!299753)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1164785 () Bool)

(declare-fun e!2431230 () Bool)

(assert (=> d!1164785 e!2431230))

(declare-fun res!1590139 () Bool)

(assert (=> d!1164785 (=> res!1590139 e!2431230)))

(declare-fun lt!1372658 () Bool)

(assert (=> d!1164785 (= res!1590139 (not lt!1372658))))

(declare-fun e!2431229 () Bool)

(assert (=> d!1164785 (= lt!1372658 e!2431229)))

(declare-fun res!1590142 () Bool)

(assert (=> d!1164785 (=> res!1590142 e!2431229)))

(assert (=> d!1164785 (= res!1590142 (is-Nil!41731 (tail!6068 lt!1372190)))))

(assert (=> d!1164785 (= (isPrefix!3610 (tail!6068 lt!1372190) (tail!6068 lt!1372212)) lt!1372658)))

(declare-fun b!3929923 () Bool)

(declare-fun e!2431231 () Bool)

(assert (=> b!3929923 (= e!2431229 e!2431231)))

(declare-fun res!1590141 () Bool)

(assert (=> b!3929923 (=> (not res!1590141) (not e!2431231))))

(assert (=> b!3929923 (= res!1590141 (not (is-Nil!41731 (tail!6068 lt!1372212))))))

(declare-fun b!3929924 () Bool)

(declare-fun res!1590140 () Bool)

(assert (=> b!3929924 (=> (not res!1590140) (not e!2431231))))

(assert (=> b!3929924 (= res!1590140 (= (head!8342 (tail!6068 lt!1372190)) (head!8342 (tail!6068 lt!1372212))))))

(declare-fun b!3929926 () Bool)

(assert (=> b!3929926 (= e!2431230 (>= (size!31308 (tail!6068 lt!1372212)) (size!31308 (tail!6068 lt!1372190))))))

(declare-fun b!3929925 () Bool)

(assert (=> b!3929925 (= e!2431231 (isPrefix!3610 (tail!6068 (tail!6068 lt!1372190)) (tail!6068 (tail!6068 lt!1372212))))))

(assert (= (and d!1164785 (not res!1590142)) b!3929923))

(assert (= (and b!3929923 res!1590141) b!3929924))

(assert (= (and b!3929924 res!1590140) b!3929925))

(assert (= (and d!1164785 (not res!1590139)) b!3929926))

(assert (=> b!3929924 m!4494319))

(declare-fun m!4495233 () Bool)

(assert (=> b!3929924 m!4495233))

(assert (=> b!3929924 m!4494513))

(declare-fun m!4495235 () Bool)

(assert (=> b!3929924 m!4495235))

(assert (=> b!3929926 m!4494513))

(declare-fun m!4495237 () Bool)

(assert (=> b!3929926 m!4495237))

(assert (=> b!3929926 m!4494319))

(declare-fun m!4495239 () Bool)

(assert (=> b!3929926 m!4495239))

(assert (=> b!3929925 m!4494319))

(declare-fun m!4495241 () Bool)

(assert (=> b!3929925 m!4495241))

(assert (=> b!3929925 m!4494513))

(declare-fun m!4495243 () Bool)

(assert (=> b!3929925 m!4495243))

(assert (=> b!3929925 m!4495241))

(assert (=> b!3929925 m!4495243))

(declare-fun m!4495245 () Bool)

(assert (=> b!3929925 m!4495245))

(assert (=> b!3929441 d!1164785))

(declare-fun d!1164787 () Bool)

(assert (=> d!1164787 (= (tail!6068 lt!1372190) (t!325278 lt!1372190))))

(assert (=> b!3929441 d!1164787))

(declare-fun d!1164789 () Bool)

(assert (=> d!1164789 (= (tail!6068 lt!1372212) (t!325278 lt!1372212))))

(assert (=> b!3929441 d!1164789))

(declare-fun d!1164791 () Bool)

(declare-fun e!2431233 () Bool)

(assert (=> d!1164791 e!2431233))

(declare-fun res!1590143 () Bool)

(assert (=> d!1164791 (=> res!1590143 e!2431233)))

(declare-fun lt!1372659 () Bool)

(assert (=> d!1164791 (= res!1590143 (not lt!1372659))))

(declare-fun e!2431232 () Bool)

(assert (=> d!1164791 (= lt!1372659 e!2431232)))

(declare-fun res!1590146 () Bool)

(assert (=> d!1164791 (=> res!1590146 e!2431232)))

(assert (=> d!1164791 (= res!1590146 (is-Nil!41731 (tail!6068 lt!1372187)))))

(assert (=> d!1164791 (= (isPrefix!3610 (tail!6068 lt!1372187) (tail!6068 lt!1372227)) lt!1372659)))

(declare-fun b!3929927 () Bool)

(declare-fun e!2431234 () Bool)

(assert (=> b!3929927 (= e!2431232 e!2431234)))

(declare-fun res!1590145 () Bool)

(assert (=> b!3929927 (=> (not res!1590145) (not e!2431234))))

(assert (=> b!3929927 (= res!1590145 (not (is-Nil!41731 (tail!6068 lt!1372227))))))

(declare-fun b!3929928 () Bool)

(declare-fun res!1590144 () Bool)

(assert (=> b!3929928 (=> (not res!1590144) (not e!2431234))))

(assert (=> b!3929928 (= res!1590144 (= (head!8342 (tail!6068 lt!1372187)) (head!8342 (tail!6068 lt!1372227))))))

(declare-fun b!3929930 () Bool)

(assert (=> b!3929930 (= e!2431233 (>= (size!31308 (tail!6068 lt!1372227)) (size!31308 (tail!6068 lt!1372187))))))

(declare-fun b!3929929 () Bool)

(assert (=> b!3929929 (= e!2431234 (isPrefix!3610 (tail!6068 (tail!6068 lt!1372187)) (tail!6068 (tail!6068 lt!1372227))))))

(assert (= (and d!1164791 (not res!1590146)) b!3929927))

(assert (= (and b!3929927 res!1590145) b!3929928))

(assert (= (and b!3929928 res!1590144) b!3929929))

(assert (= (and d!1164791 (not res!1590143)) b!3929930))

(assert (=> b!3929928 m!4494723))

(declare-fun m!4495247 () Bool)

(assert (=> b!3929928 m!4495247))

(assert (=> b!3929928 m!4494725))

(declare-fun m!4495249 () Bool)

(assert (=> b!3929928 m!4495249))

(assert (=> b!3929930 m!4494725))

(declare-fun m!4495251 () Bool)

(assert (=> b!3929930 m!4495251))

(assert (=> b!3929930 m!4494723))

(declare-fun m!4495253 () Bool)

(assert (=> b!3929930 m!4495253))

(assert (=> b!3929929 m!4494723))

(declare-fun m!4495255 () Bool)

(assert (=> b!3929929 m!4495255))

(assert (=> b!3929929 m!4494725))

(declare-fun m!4495257 () Bool)

(assert (=> b!3929929 m!4495257))

(assert (=> b!3929929 m!4495255))

(assert (=> b!3929929 m!4495257))

(declare-fun m!4495259 () Bool)

(assert (=> b!3929929 m!4495259))

(assert (=> b!3929554 d!1164791))

(declare-fun d!1164793 () Bool)

(assert (=> d!1164793 (= (tail!6068 lt!1372187) (t!325278 lt!1372187))))

(assert (=> b!3929554 d!1164793))

(declare-fun d!1164795 () Bool)

(assert (=> d!1164795 (= (tail!6068 lt!1372227) (t!325278 lt!1372227))))

(assert (=> b!3929554 d!1164795))

(declare-fun b!3929931 () Bool)

(declare-fun e!2431236 () Bool)

(declare-fun e!2431235 () Bool)

(assert (=> b!3929931 (= e!2431236 e!2431235)))

(declare-fun res!1590147 () Bool)

(assert (=> b!3929931 (=> (not res!1590147) (not e!2431235))))

(declare-fun lt!1372664 () Option!8935)

(assert (=> b!3929931 (= res!1590147 (matchR!5479 (regex!6515 (h!47154 rules!2768)) (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372664))))))))

(declare-fun b!3929932 () Bool)

(assert (=> b!3929932 (= e!2431235 (= (size!31307 (_1!23637 (get!13793 lt!1372664))) (size!31308 (originalCharacters!7115 (_1!23637 (get!13793 lt!1372664))))))))

(declare-fun b!3929933 () Bool)

(declare-fun res!1590153 () Bool)

(assert (=> b!3929933 (=> (not res!1590153) (not e!2431235))))

(assert (=> b!3929933 (= res!1590153 (= (rule!9459 (_1!23637 (get!13793 lt!1372664))) (h!47154 rules!2768)))))

(declare-fun b!3929934 () Bool)

(declare-fun e!2431238 () Bool)

(assert (=> b!3929934 (= e!2431238 (matchR!5479 (regex!6515 (h!47154 rules!2768)) (_1!23641 (findLongestMatchInner!1259 (regex!6515 (h!47154 rules!2768)) Nil!41731 (size!31308 Nil!41731) lt!1372223 lt!1372223 (size!31308 lt!1372223)))))))

(declare-fun b!3929935 () Bool)

(declare-fun e!2431237 () Option!8935)

(declare-fun lt!1372663 () tuple2!41014)

(assert (=> b!3929935 (= e!2431237 (Some!8934 (tuple2!41007 (Token!12169 (apply!9754 (transformation!6515 (h!47154 rules!2768)) (seqFromList!4782 (_1!23641 lt!1372663))) (h!47154 rules!2768) (size!31313 (seqFromList!4782 (_1!23641 lt!1372663))) (_1!23641 lt!1372663)) (_2!23641 lt!1372663))))))

(declare-fun lt!1372660 () Unit!60127)

(assert (=> b!3929935 (= lt!1372660 (longestMatchIsAcceptedByMatchOrIsEmpty!1232 (regex!6515 (h!47154 rules!2768)) lt!1372223))))

(declare-fun res!1590152 () Bool)

(assert (=> b!3929935 (= res!1590152 (isEmpty!24875 (_1!23641 (findLongestMatchInner!1259 (regex!6515 (h!47154 rules!2768)) Nil!41731 (size!31308 Nil!41731) lt!1372223 lt!1372223 (size!31308 lt!1372223)))))))

(assert (=> b!3929935 (=> res!1590152 e!2431238)))

(assert (=> b!3929935 e!2431238))

(declare-fun lt!1372662 () Unit!60127)

(assert (=> b!3929935 (= lt!1372662 lt!1372660)))

(declare-fun lt!1372661 () Unit!60127)

(assert (=> b!3929935 (= lt!1372661 (lemmaSemiInverse!1765 (transformation!6515 (h!47154 rules!2768)) (seqFromList!4782 (_1!23641 lt!1372663))))))

(declare-fun b!3929937 () Bool)

(declare-fun res!1590148 () Bool)

(assert (=> b!3929937 (=> (not res!1590148) (not e!2431235))))

(assert (=> b!3929937 (= res!1590148 (= (value!206313 (_1!23637 (get!13793 lt!1372664))) (apply!9754 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372664)))) (seqFromList!4782 (originalCharacters!7115 (_1!23637 (get!13793 lt!1372664)))))))))

(declare-fun b!3929938 () Bool)

(declare-fun res!1590151 () Bool)

(assert (=> b!3929938 (=> (not res!1590151) (not e!2431235))))

(assert (=> b!3929938 (= res!1590151 (< (size!31308 (_2!23637 (get!13793 lt!1372664))) (size!31308 lt!1372223)))))

(declare-fun b!3929939 () Bool)

(declare-fun res!1590150 () Bool)

(assert (=> b!3929939 (=> (not res!1590150) (not e!2431235))))

(assert (=> b!3929939 (= res!1590150 (= (++!10788 (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372664)))) (_2!23637 (get!13793 lt!1372664))) lt!1372223))))

(declare-fun d!1164797 () Bool)

(assert (=> d!1164797 e!2431236))

(declare-fun res!1590149 () Bool)

(assert (=> d!1164797 (=> res!1590149 e!2431236)))

(assert (=> d!1164797 (= res!1590149 (isEmpty!24881 lt!1372664))))

(assert (=> d!1164797 (= lt!1372664 e!2431237)))

(declare-fun c!682726 () Bool)

(assert (=> d!1164797 (= c!682726 (isEmpty!24875 (_1!23641 lt!1372663)))))

(assert (=> d!1164797 (= lt!1372663 (findLongestMatch!1172 (regex!6515 (h!47154 rules!2768)) lt!1372223))))

(assert (=> d!1164797 (ruleValid!2463 thiss!20629 (h!47154 rules!2768))))

(assert (=> d!1164797 (= (maxPrefixOneRule!2478 thiss!20629 (h!47154 rules!2768) lt!1372223) lt!1372664)))

(declare-fun b!3929936 () Bool)

(assert (=> b!3929936 (= e!2431237 None!8934)))

(assert (= (and d!1164797 c!682726) b!3929936))

(assert (= (and d!1164797 (not c!682726)) b!3929935))

(assert (= (and b!3929935 (not res!1590152)) b!3929934))

(assert (= (and d!1164797 (not res!1590149)) b!3929931))

(assert (= (and b!3929931 res!1590147) b!3929939))

(assert (= (and b!3929939 res!1590150) b!3929938))

(assert (= (and b!3929938 res!1590151) b!3929933))

(assert (= (and b!3929933 res!1590153) b!3929937))

(assert (= (and b!3929937 res!1590148) b!3929932))

(assert (=> b!3929934 m!4494901))

(assert (=> b!3929934 m!4494049))

(assert (=> b!3929934 m!4494901))

(assert (=> b!3929934 m!4494049))

(declare-fun m!4495261 () Bool)

(assert (=> b!3929934 m!4495261))

(declare-fun m!4495263 () Bool)

(assert (=> b!3929934 m!4495263))

(declare-fun m!4495265 () Bool)

(assert (=> b!3929933 m!4495265))

(assert (=> b!3929932 m!4495265))

(declare-fun m!4495267 () Bool)

(assert (=> b!3929932 m!4495267))

(assert (=> b!3929935 m!4494901))

(assert (=> b!3929935 m!4494901))

(assert (=> b!3929935 m!4494049))

(assert (=> b!3929935 m!4495261))

(declare-fun m!4495269 () Bool)

(assert (=> b!3929935 m!4495269))

(declare-fun m!4495271 () Bool)

(assert (=> b!3929935 m!4495271))

(declare-fun m!4495273 () Bool)

(assert (=> b!3929935 m!4495273))

(assert (=> b!3929935 m!4495269))

(assert (=> b!3929935 m!4494049))

(assert (=> b!3929935 m!4495269))

(declare-fun m!4495275 () Bool)

(assert (=> b!3929935 m!4495275))

(declare-fun m!4495277 () Bool)

(assert (=> b!3929935 m!4495277))

(assert (=> b!3929935 m!4495269))

(declare-fun m!4495279 () Bool)

(assert (=> b!3929935 m!4495279))

(declare-fun m!4495281 () Bool)

(assert (=> d!1164797 m!4495281))

(declare-fun m!4495283 () Bool)

(assert (=> d!1164797 m!4495283))

(declare-fun m!4495285 () Bool)

(assert (=> d!1164797 m!4495285))

(declare-fun m!4495287 () Bool)

(assert (=> d!1164797 m!4495287))

(assert (=> b!3929931 m!4495265))

(declare-fun m!4495289 () Bool)

(assert (=> b!3929931 m!4495289))

(assert (=> b!3929931 m!4495289))

(declare-fun m!4495291 () Bool)

(assert (=> b!3929931 m!4495291))

(assert (=> b!3929931 m!4495291))

(declare-fun m!4495293 () Bool)

(assert (=> b!3929931 m!4495293))

(assert (=> b!3929939 m!4495265))

(assert (=> b!3929939 m!4495289))

(assert (=> b!3929939 m!4495289))

(assert (=> b!3929939 m!4495291))

(assert (=> b!3929939 m!4495291))

(declare-fun m!4495295 () Bool)

(assert (=> b!3929939 m!4495295))

(assert (=> b!3929938 m!4495265))

(declare-fun m!4495297 () Bool)

(assert (=> b!3929938 m!4495297))

(assert (=> b!3929938 m!4494049))

(assert (=> b!3929937 m!4495265))

(declare-fun m!4495299 () Bool)

(assert (=> b!3929937 m!4495299))

(assert (=> b!3929937 m!4495299))

(declare-fun m!4495301 () Bool)

(assert (=> b!3929937 m!4495301))

(assert (=> bm!284768 d!1164797))

(declare-fun d!1164799 () Bool)

(assert (=> d!1164799 (= (list!15504 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (value!206313 (h!47153 prefixTokens!80)))) (list!15506 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (value!206313 (h!47153 prefixTokens!80))))))))

(declare-fun bs!586135 () Bool)

(assert (= bs!586135 d!1164799))

(declare-fun m!4495303 () Bool)

(assert (=> bs!586135 m!4495303))

(assert (=> b!3929454 d!1164799))

(declare-fun d!1164801 () Bool)

(assert (=> d!1164801 true))

(declare-fun order!22289 () Int)

(declare-fun lambda!126556 () Int)

(declare-fun order!22287 () Int)

(declare-fun dynLambda!17879 (Int Int) Int)

(declare-fun dynLambda!17880 (Int Int) Int)

(assert (=> d!1164801 (< (dynLambda!17879 order!22287 (toChars!8826 (transformation!6515 (h!47154 rules!2768)))) (dynLambda!17880 order!22289 lambda!126556))))

(assert (=> d!1164801 true))

(declare-fun order!22291 () Int)

(declare-fun dynLambda!17881 (Int Int) Int)

(assert (=> d!1164801 (< (dynLambda!17881 order!22291 (toValue!8967 (transformation!6515 (h!47154 rules!2768)))) (dynLambda!17880 order!22289 lambda!126556))))

(declare-fun Forall!1449 (Int) Bool)

(assert (=> d!1164801 (= (semiInverseModEq!2798 (toChars!8826 (transformation!6515 (h!47154 rules!2768))) (toValue!8967 (transformation!6515 (h!47154 rules!2768)))) (Forall!1449 lambda!126556))))

(declare-fun bs!586136 () Bool)

(assert (= bs!586136 d!1164801))

(declare-fun m!4495305 () Bool)

(assert (=> bs!586136 m!4495305))

(assert (=> d!1164571 d!1164801))

(declare-fun d!1164803 () Bool)

(assert (=> d!1164803 (= (isEmpty!24875 (originalCharacters!7115 (h!47153 prefixTokens!80))) (is-Nil!41731 (originalCharacters!7115 (h!47153 prefixTokens!80))))))

(assert (=> d!1164561 d!1164803))

(declare-fun b!3929944 () Bool)

(declare-fun e!2431239 () List!41857)

(assert (=> b!3929944 (= e!2431239 lt!1372216)))

(declare-fun b!3929946 () Bool)

(declare-fun res!1590155 () Bool)

(declare-fun e!2431240 () Bool)

(assert (=> b!3929946 (=> (not res!1590155) (not e!2431240))))

(declare-fun lt!1372665 () List!41857)

(assert (=> b!3929946 (= res!1590155 (= (size!31311 lt!1372665) (+ (size!31311 (t!325280 lt!1372210)) (size!31311 lt!1372216))))))

(declare-fun d!1164805 () Bool)

(assert (=> d!1164805 e!2431240))

(declare-fun res!1590154 () Bool)

(assert (=> d!1164805 (=> (not res!1590154) (not e!2431240))))

(assert (=> d!1164805 (= res!1590154 (= (content!6282 lt!1372665) (set.union (content!6282 (t!325280 lt!1372210)) (content!6282 lt!1372216))))))

(assert (=> d!1164805 (= lt!1372665 e!2431239)))

(declare-fun c!682727 () Bool)

(assert (=> d!1164805 (= c!682727 (is-Nil!41733 (t!325280 lt!1372210)))))

(assert (=> d!1164805 (= (++!10787 (t!325280 lt!1372210) lt!1372216) lt!1372665)))

(declare-fun b!3929945 () Bool)

(assert (=> b!3929945 (= e!2431239 (Cons!41733 (h!47153 (t!325280 lt!1372210)) (++!10787 (t!325280 (t!325280 lt!1372210)) lt!1372216)))))

(declare-fun b!3929947 () Bool)

(assert (=> b!3929947 (= e!2431240 (or (not (= lt!1372216 Nil!41733)) (= lt!1372665 (t!325280 lt!1372210))))))

(assert (= (and d!1164805 c!682727) b!3929944))

(assert (= (and d!1164805 (not c!682727)) b!3929945))

(assert (= (and d!1164805 res!1590154) b!3929946))

(assert (= (and b!3929946 res!1590155) b!3929947))

(declare-fun m!4495307 () Bool)

(assert (=> b!3929946 m!4495307))

(declare-fun m!4495309 () Bool)

(assert (=> b!3929946 m!4495309))

(assert (=> b!3929946 m!4494685))

(declare-fun m!4495311 () Bool)

(assert (=> d!1164805 m!4495311))

(declare-fun m!4495313 () Bool)

(assert (=> d!1164805 m!4495313))

(assert (=> d!1164805 m!4494689))

(declare-fun m!4495315 () Bool)

(assert (=> b!3929945 m!4495315))

(assert (=> b!3929537 d!1164805))

(declare-fun d!1164807 () Bool)

(declare-fun lt!1372668 () Int)

(assert (=> d!1164807 (>= lt!1372668 0)))

(declare-fun e!2431243 () Int)

(assert (=> d!1164807 (= lt!1372668 e!2431243)))

(declare-fun c!682730 () Bool)

(assert (=> d!1164807 (= c!682730 (is-Nil!41733 lt!1372513))))

(assert (=> d!1164807 (= (size!31311 lt!1372513) lt!1372668)))

(declare-fun b!3929952 () Bool)

(assert (=> b!3929952 (= e!2431243 0)))

(declare-fun b!3929953 () Bool)

(assert (=> b!3929953 (= e!2431243 (+ 1 (size!31311 (t!325280 lt!1372513))))))

(assert (= (and d!1164807 c!682730) b!3929952))

(assert (= (and d!1164807 (not c!682730)) b!3929953))

(declare-fun m!4495317 () Bool)

(assert (=> b!3929953 m!4495317))

(assert (=> b!3929534 d!1164807))

(declare-fun d!1164809 () Bool)

(declare-fun lt!1372669 () Int)

(assert (=> d!1164809 (>= lt!1372669 0)))

(declare-fun e!2431244 () Int)

(assert (=> d!1164809 (= lt!1372669 e!2431244)))

(declare-fun c!682731 () Bool)

(assert (=> d!1164809 (= c!682731 (is-Nil!41733 (++!10787 lt!1372210 lt!1372222)))))

(assert (=> d!1164809 (= (size!31311 (++!10787 lt!1372210 lt!1372222)) lt!1372669)))

(declare-fun b!3929954 () Bool)

(assert (=> b!3929954 (= e!2431244 0)))

(declare-fun b!3929955 () Bool)

(assert (=> b!3929955 (= e!2431244 (+ 1 (size!31311 (t!325280 (++!10787 lt!1372210 lt!1372222)))))))

(assert (= (and d!1164809 c!682731) b!3929954))

(assert (= (and d!1164809 (not c!682731)) b!3929955))

(declare-fun m!4495319 () Bool)

(assert (=> b!3929955 m!4495319))

(assert (=> b!3929534 d!1164809))

(declare-fun d!1164811 () Bool)

(declare-fun lt!1372670 () Int)

(assert (=> d!1164811 (>= lt!1372670 0)))

(declare-fun e!2431245 () Int)

(assert (=> d!1164811 (= lt!1372670 e!2431245)))

(declare-fun c!682732 () Bool)

(assert (=> d!1164811 (= c!682732 (is-Nil!41733 suffixTokens!72))))

(assert (=> d!1164811 (= (size!31311 suffixTokens!72) lt!1372670)))

(declare-fun b!3929956 () Bool)

(assert (=> b!3929956 (= e!2431245 0)))

(declare-fun b!3929957 () Bool)

(assert (=> b!3929957 (= e!2431245 (+ 1 (size!31311 (t!325280 suffixTokens!72))))))

(assert (= (and d!1164811 c!682732) b!3929956))

(assert (= (and d!1164811 (not c!682732)) b!3929957))

(declare-fun m!4495321 () Bool)

(assert (=> b!3929957 m!4495321))

(assert (=> b!3929534 d!1164811))

(declare-fun d!1164813 () Bool)

(assert (=> d!1164813 true))

(declare-fun lambda!126559 () Int)

(declare-fun order!22293 () Int)

(declare-fun dynLambda!17882 (Int Int) Int)

(assert (=> d!1164813 (< (dynLambda!17881 order!22291 (toValue!8967 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72))))) (dynLambda!17882 order!22293 lambda!126559))))

(declare-fun Forall2!1047 (Int) Bool)

(assert (=> d!1164813 (= (equivClasses!2697 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) (toValue!8967 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72))))) (Forall2!1047 lambda!126559))))

(declare-fun bs!586137 () Bool)

(assert (= bs!586137 d!1164813))

(declare-fun m!4495323 () Bool)

(assert (=> bs!586137 m!4495323))

(assert (=> b!3929464 d!1164813))

(declare-fun d!1164815 () Bool)

(declare-fun lt!1372671 () Int)

(assert (=> d!1164815 (>= lt!1372671 0)))

(declare-fun e!2431248 () Int)

(assert (=> d!1164815 (= lt!1372671 e!2431248)))

(declare-fun c!682733 () Bool)

(assert (=> d!1164815 (= c!682733 (is-Nil!41731 (originalCharacters!7115 (h!47153 suffixTokens!72))))))

(assert (=> d!1164815 (= (size!31308 (originalCharacters!7115 (h!47153 suffixTokens!72))) lt!1372671)))

(declare-fun b!3929962 () Bool)

(assert (=> b!3929962 (= e!2431248 0)))

(declare-fun b!3929963 () Bool)

(assert (=> b!3929963 (= e!2431248 (+ 1 (size!31308 (t!325278 (originalCharacters!7115 (h!47153 suffixTokens!72))))))))

(assert (= (and d!1164815 c!682733) b!3929962))

(assert (= (and d!1164815 (not c!682733)) b!3929963))

(declare-fun m!4495325 () Bool)

(assert (=> b!3929963 m!4495325))

(assert (=> b!3929375 d!1164815))

(declare-fun b!3929964 () Bool)

(declare-fun e!2431250 () List!41855)

(assert (=> b!3929964 (= e!2431250 suffix!1176)))

(declare-fun b!3929966 () Bool)

(declare-fun res!1590158 () Bool)

(declare-fun e!2431249 () Bool)

(assert (=> b!3929966 (=> (not res!1590158) (not e!2431249))))

(declare-fun lt!1372672 () List!41855)

(assert (=> b!3929966 (= res!1590158 (= (size!31308 lt!1372672) (+ (size!31308 (t!325278 lt!1372187)) (size!31308 suffix!1176))))))

(declare-fun b!3929967 () Bool)

(assert (=> b!3929967 (= e!2431249 (or (not (= suffix!1176 Nil!41731)) (= lt!1372672 (t!325278 lt!1372187))))))

(declare-fun b!3929965 () Bool)

(assert (=> b!3929965 (= e!2431250 (Cons!41731 (h!47151 (t!325278 lt!1372187)) (++!10788 (t!325278 (t!325278 lt!1372187)) suffix!1176)))))

(declare-fun d!1164817 () Bool)

(assert (=> d!1164817 e!2431249))

(declare-fun res!1590159 () Bool)

(assert (=> d!1164817 (=> (not res!1590159) (not e!2431249))))

(assert (=> d!1164817 (= res!1590159 (= (content!6281 lt!1372672) (set.union (content!6281 (t!325278 lt!1372187)) (content!6281 suffix!1176))))))

(assert (=> d!1164817 (= lt!1372672 e!2431250)))

(declare-fun c!682734 () Bool)

(assert (=> d!1164817 (= c!682734 (is-Nil!41731 (t!325278 lt!1372187)))))

(assert (=> d!1164817 (= (++!10788 (t!325278 lt!1372187) suffix!1176) lt!1372672)))

(assert (= (and d!1164817 c!682734) b!3929964))

(assert (= (and d!1164817 (not c!682734)) b!3929965))

(assert (= (and d!1164817 res!1590159) b!3929966))

(assert (= (and b!3929966 res!1590158) b!3929967))

(declare-fun m!4495327 () Bool)

(assert (=> b!3929966 m!4495327))

(declare-fun m!4495329 () Bool)

(assert (=> b!3929966 m!4495329))

(assert (=> b!3929966 m!4493967))

(declare-fun m!4495331 () Bool)

(assert (=> b!3929965 m!4495331))

(declare-fun m!4495333 () Bool)

(assert (=> d!1164817 m!4495333))

(declare-fun m!4495335 () Bool)

(assert (=> d!1164817 m!4495335))

(assert (=> d!1164817 m!4494419))

(assert (=> b!3929545 d!1164817))

(assert (=> d!1164521 d!1164505))

(declare-fun d!1164819 () Bool)

(assert (=> d!1164819 (not (= (lexList!1872 thiss!20629 rules!2768 (_2!23637 lt!1372230)) (tuple2!41009 suffixTokens!72 suffixResult!91)))))

(assert (=> d!1164819 true))

(declare-fun _$44!1323 () Unit!60127)

(assert (=> d!1164819 (= (choose!23354 thiss!20629 rules!2768 suffix!1176 (_2!23637 lt!1372230) suffixTokens!72 suffixResult!91) _$44!1323)))

(declare-fun bs!586138 () Bool)

(assert (= bs!586138 d!1164819))

(assert (=> bs!586138 m!4494035))

(assert (=> d!1164521 d!1164819))

(assert (=> d!1164521 d!1164465))

(declare-fun d!1164821 () Bool)

(assert (=> d!1164821 (= (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372501)))) (list!15506 (c!682587 (charsOf!4339 (_1!23637 (get!13793 lt!1372501))))))))

(declare-fun bs!586139 () Bool)

(assert (= bs!586139 d!1164821))

(declare-fun m!4495337 () Bool)

(assert (=> bs!586139 m!4495337))

(assert (=> b!3929516 d!1164821))

(declare-fun d!1164823 () Bool)

(declare-fun lt!1372673 () BalanceConc!25046)

(assert (=> d!1164823 (= (list!15504 lt!1372673) (originalCharacters!7115 (_1!23637 (get!13793 lt!1372501))))))

(assert (=> d!1164823 (= lt!1372673 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372501))))) (value!206313 (_1!23637 (get!13793 lt!1372501)))))))

(assert (=> d!1164823 (= (charsOf!4339 (_1!23637 (get!13793 lt!1372501))) lt!1372673)))

(declare-fun b_lambda!114967 () Bool)

(assert (=> (not b_lambda!114967) (not d!1164823)))

(declare-fun t!325385 () Bool)

(declare-fun tb!234797 () Bool)

(assert (=> (and b!3929724 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72))))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372501)))))) t!325385) tb!234797))

(declare-fun b!3929968 () Bool)

(declare-fun e!2431251 () Bool)

(declare-fun tp!1196431 () Bool)

(assert (=> b!3929968 (= e!2431251 (and (inv!55928 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372501))))) (value!206313 (_1!23637 (get!13793 lt!1372501)))))) tp!1196431))))

(declare-fun result!284542 () Bool)

(assert (=> tb!234797 (= result!284542 (and (inv!55929 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372501))))) (value!206313 (_1!23637 (get!13793 lt!1372501))))) e!2431251))))

(assert (= tb!234797 b!3929968))

(declare-fun m!4495339 () Bool)

(assert (=> b!3929968 m!4495339))

(declare-fun m!4495341 () Bool)

(assert (=> tb!234797 m!4495341))

(assert (=> d!1164823 t!325385))

(declare-fun b_and!299819 () Bool)

(assert (= b_and!299799 (and (=> t!325385 result!284542) b_and!299819)))

(declare-fun tb!234799 () Bool)

(declare-fun t!325387 () Bool)

(assert (=> (and b!3929093 (= (toChars!8826 (transformation!6515 (h!47154 rules!2768))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372501)))))) t!325387) tb!234799))

(declare-fun result!284544 () Bool)

(assert (= result!284544 result!284542))

(assert (=> d!1164823 t!325387))

(declare-fun b_and!299821 () Bool)

(assert (= b_and!299765 (and (=> t!325387 result!284544) b_and!299821)))

(declare-fun t!325389 () Bool)

(declare-fun tb!234801 () Bool)

(assert (=> (and b!3929105 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372501)))))) t!325389) tb!234801))

(declare-fun result!284546 () Bool)

(assert (= result!284546 result!284542))

(assert (=> d!1164823 t!325389))

(declare-fun b_and!299823 () Bool)

(assert (= b_and!299769 (and (=> t!325389 result!284546) b_and!299823)))

(declare-fun t!325391 () Bool)

(declare-fun tb!234803 () Bool)

(assert (=> (and b!3929679 (= (toChars!8826 (transformation!6515 (h!47154 (t!325281 rules!2768)))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372501)))))) t!325391) tb!234803))

(declare-fun result!284548 () Bool)

(assert (= result!284548 result!284542))

(assert (=> d!1164823 t!325391))

(declare-fun b_and!299825 () Bool)

(assert (= b_and!299791 (and (=> t!325391 result!284548) b_and!299825)))

(declare-fun t!325393 () Bool)

(declare-fun tb!234805 () Bool)

(assert (=> (and b!3929087 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372501)))))) t!325393) tb!234805))

(declare-fun result!284550 () Bool)

(assert (= result!284550 result!284542))

(assert (=> d!1164823 t!325393))

(declare-fun b_and!299827 () Bool)

(assert (= b_and!299767 (and (=> t!325393 result!284550) b_and!299827)))

(declare-fun tb!234807 () Bool)

(declare-fun t!325395 () Bool)

(assert (=> (and b!3929693 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80))))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372501)))))) t!325395) tb!234807))

(declare-fun result!284552 () Bool)

(assert (= result!284552 result!284542))

(assert (=> d!1164823 t!325395))

(declare-fun b_and!299829 () Bool)

(assert (= b_and!299795 (and (=> t!325395 result!284552) b_and!299829)))

(declare-fun m!4495343 () Bool)

(assert (=> d!1164823 m!4495343))

(declare-fun m!4495345 () Bool)

(assert (=> d!1164823 m!4495345))

(assert (=> b!3929516 d!1164823))

(declare-fun d!1164825 () Bool)

(assert (=> d!1164825 (= (get!13793 lt!1372501) (v!39260 lt!1372501))))

(assert (=> b!3929516 d!1164825))

(declare-fun d!1164827 () Bool)

(declare-fun lt!1372674 () Int)

(assert (=> d!1164827 (>= lt!1372674 0)))

(declare-fun e!2431252 () Int)

(assert (=> d!1164827 (= lt!1372674 e!2431252)))

(declare-fun c!682735 () Bool)

(assert (=> d!1164827 (= c!682735 (is-Nil!41731 (_2!23637 (get!13793 lt!1372587))))))

(assert (=> d!1164827 (= (size!31308 (_2!23637 (get!13793 lt!1372587))) lt!1372674)))

(declare-fun b!3929969 () Bool)

(assert (=> b!3929969 (= e!2431252 0)))

(declare-fun b!3929970 () Bool)

(assert (=> b!3929970 (= e!2431252 (+ 1 (size!31308 (t!325278 (_2!23637 (get!13793 lt!1372587))))))))

(assert (= (and d!1164827 c!682735) b!3929969))

(assert (= (and d!1164827 (not c!682735)) b!3929970))

(declare-fun m!4495347 () Bool)

(assert (=> b!3929970 m!4495347))

(assert (=> b!3929667 d!1164827))

(declare-fun d!1164829 () Bool)

(assert (=> d!1164829 (= (get!13793 lt!1372587) (v!39260 lt!1372587))))

(assert (=> b!3929667 d!1164829))

(assert (=> b!3929667 d!1164635))

(declare-fun d!1164831 () Bool)

(assert (=> d!1164831 (= (inv!55921 (tag!7375 (rule!9459 (h!47153 (t!325280 prefixTokens!80))))) (= (mod (str.len (value!206287 (tag!7375 (rule!9459 (h!47153 (t!325280 prefixTokens!80)))))) 2) 0))))

(assert (=> b!3929692 d!1164831))

(declare-fun d!1164833 () Bool)

(declare-fun res!1590160 () Bool)

(declare-fun e!2431253 () Bool)

(assert (=> d!1164833 (=> (not res!1590160) (not e!2431253))))

(assert (=> d!1164833 (= res!1590160 (semiInverseModEq!2798 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80))))) (toValue!8967 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80)))))))))

(assert (=> d!1164833 (= (inv!55925 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80))))) e!2431253)))

(declare-fun b!3929971 () Bool)

(assert (=> b!3929971 (= e!2431253 (equivClasses!2697 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80))))) (toValue!8967 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80)))))))))

(assert (= (and d!1164833 res!1590160) b!3929971))

(declare-fun m!4495349 () Bool)

(assert (=> d!1164833 m!4495349))

(declare-fun m!4495351 () Bool)

(assert (=> b!3929971 m!4495351))

(assert (=> b!3929692 d!1164833))

(declare-fun b!3929973 () Bool)

(declare-fun e!2431255 () tuple2!41008)

(assert (=> b!3929973 (= e!2431255 (tuple2!41009 Nil!41733 (_2!23637 (v!39260 lt!1372454))))))

(declare-fun b!3929974 () Bool)

(declare-fun e!2431256 () Bool)

(declare-fun e!2431254 () Bool)

(assert (=> b!3929974 (= e!2431256 e!2431254)))

(declare-fun res!1590161 () Bool)

(declare-fun lt!1372675 () tuple2!41008)

(assert (=> b!3929974 (= res!1590161 (< (size!31308 (_2!23638 lt!1372675)) (size!31308 (_2!23637 (v!39260 lt!1372454)))))))

(assert (=> b!3929974 (=> (not res!1590161) (not e!2431254))))

(declare-fun b!3929975 () Bool)

(assert (=> b!3929975 (= e!2431256 (= (_2!23638 lt!1372675) (_2!23637 (v!39260 lt!1372454))))))

(declare-fun b!3929976 () Bool)

(assert (=> b!3929976 (= e!2431254 (not (isEmpty!24877 (_1!23638 lt!1372675))))))

(declare-fun b!3929972 () Bool)

(declare-fun lt!1372676 () Option!8935)

(declare-fun lt!1372677 () tuple2!41008)

(assert (=> b!3929972 (= e!2431255 (tuple2!41009 (Cons!41733 (_1!23637 (v!39260 lt!1372676)) (_1!23638 lt!1372677)) (_2!23638 lt!1372677)))))

(assert (=> b!3929972 (= lt!1372677 (lexList!1872 thiss!20629 rules!2768 (_2!23637 (v!39260 lt!1372676))))))

(declare-fun d!1164835 () Bool)

(assert (=> d!1164835 e!2431256))

(declare-fun c!682737 () Bool)

(assert (=> d!1164835 (= c!682737 (> (size!31311 (_1!23638 lt!1372675)) 0))))

(assert (=> d!1164835 (= lt!1372675 e!2431255)))

(declare-fun c!682736 () Bool)

(assert (=> d!1164835 (= c!682736 (is-Some!8934 lt!1372676))))

(assert (=> d!1164835 (= lt!1372676 (maxPrefix!3408 thiss!20629 rules!2768 (_2!23637 (v!39260 lt!1372454))))))

(assert (=> d!1164835 (= (lexList!1872 thiss!20629 rules!2768 (_2!23637 (v!39260 lt!1372454))) lt!1372675)))

(assert (= (and d!1164835 c!682736) b!3929972))

(assert (= (and d!1164835 (not c!682736)) b!3929973))

(assert (= (and d!1164835 c!682737) b!3929974))

(assert (= (and d!1164835 (not c!682737)) b!3929975))

(assert (= (and b!3929974 res!1590161) b!3929976))

(declare-fun m!4495353 () Bool)

(assert (=> b!3929974 m!4495353))

(declare-fun m!4495355 () Bool)

(assert (=> b!3929974 m!4495355))

(declare-fun m!4495357 () Bool)

(assert (=> b!3929976 m!4495357))

(declare-fun m!4495359 () Bool)

(assert (=> b!3929972 m!4495359))

(declare-fun m!4495361 () Bool)

(assert (=> d!1164835 m!4495361))

(declare-fun m!4495363 () Bool)

(assert (=> d!1164835 m!4495363))

(assert (=> b!3929426 d!1164835))

(declare-fun d!1164837 () Bool)

(declare-fun e!2431258 () Bool)

(assert (=> d!1164837 e!2431258))

(declare-fun res!1590162 () Bool)

(assert (=> d!1164837 (=> res!1590162 e!2431258)))

(declare-fun lt!1372678 () Bool)

(assert (=> d!1164837 (= res!1590162 (not lt!1372678))))

(declare-fun e!2431257 () Bool)

(assert (=> d!1164837 (= lt!1372678 e!2431257)))

(declare-fun res!1590165 () Bool)

(assert (=> d!1164837 (=> res!1590165 e!2431257)))

(assert (=> d!1164837 (= res!1590165 (is-Nil!41731 lt!1372187))))

(assert (=> d!1164837 (= (isPrefix!3610 lt!1372187 (++!10788 lt!1372187 suffix!1176)) lt!1372678)))

(declare-fun b!3929977 () Bool)

(declare-fun e!2431259 () Bool)

(assert (=> b!3929977 (= e!2431257 e!2431259)))

(declare-fun res!1590164 () Bool)

(assert (=> b!3929977 (=> (not res!1590164) (not e!2431259))))

(assert (=> b!3929977 (= res!1590164 (not (is-Nil!41731 (++!10788 lt!1372187 suffix!1176))))))

(declare-fun b!3929978 () Bool)

(declare-fun res!1590163 () Bool)

(assert (=> b!3929978 (=> (not res!1590163) (not e!2431259))))

(assert (=> b!3929978 (= res!1590163 (= (head!8342 lt!1372187) (head!8342 (++!10788 lt!1372187 suffix!1176))))))

(declare-fun b!3929980 () Bool)

(assert (=> b!3929980 (= e!2431258 (>= (size!31308 (++!10788 lt!1372187 suffix!1176)) (size!31308 lt!1372187)))))

(declare-fun b!3929979 () Bool)

(assert (=> b!3929979 (= e!2431259 (isPrefix!3610 (tail!6068 lt!1372187) (tail!6068 (++!10788 lt!1372187 suffix!1176))))))

(assert (= (and d!1164837 (not res!1590165)) b!3929977))

(assert (= (and b!3929977 res!1590164) b!3929978))

(assert (= (and b!3929978 res!1590163) b!3929979))

(assert (= (and d!1164837 (not res!1590162)) b!3929980))

(assert (=> b!3929978 m!4494719))

(assert (=> b!3929978 m!4494063))

(declare-fun m!4495365 () Bool)

(assert (=> b!3929978 m!4495365))

(assert (=> b!3929980 m!4494063))

(declare-fun m!4495367 () Bool)

(assert (=> b!3929980 m!4495367))

(assert (=> b!3929980 m!4494381))

(assert (=> b!3929979 m!4494723))

(assert (=> b!3929979 m!4494063))

(declare-fun m!4495369 () Bool)

(assert (=> b!3929979 m!4495369))

(assert (=> b!3929979 m!4494723))

(assert (=> b!3929979 m!4495369))

(declare-fun m!4495371 () Bool)

(assert (=> b!3929979 m!4495371))

(assert (=> d!1164627 d!1164837))

(assert (=> d!1164627 d!1164617))

(declare-fun d!1164839 () Bool)

(assert (=> d!1164839 (isPrefix!3610 lt!1372187 (++!10788 lt!1372187 suffix!1176))))

(assert (=> d!1164839 true))

(declare-fun _$46!1564 () Unit!60127)

(assert (=> d!1164839 (= (choose!23350 lt!1372187 suffix!1176) _$46!1564)))

(declare-fun bs!586140 () Bool)

(assert (= bs!586140 d!1164839))

(assert (=> bs!586140 m!4494063))

(assert (=> bs!586140 m!4494063))

(assert (=> bs!586140 m!4494729))

(assert (=> d!1164627 d!1164839))

(declare-fun d!1164841 () Bool)

(assert (=> d!1164841 (= (isEmpty!24877 (_1!23638 lt!1372453)) (is-Nil!41733 (_1!23638 lt!1372453)))))

(assert (=> b!3929430 d!1164841))

(declare-fun d!1164843 () Bool)

(declare-fun lt!1372679 () Int)

(assert (=> d!1164843 (>= lt!1372679 0)))

(declare-fun e!2431260 () Int)

(assert (=> d!1164843 (= lt!1372679 e!2431260)))

(declare-fun c!682738 () Bool)

(assert (=> d!1164843 (= c!682738 (is-Nil!41731 (t!325278 (originalCharacters!7115 (_1!23637 (v!39260 lt!1372235))))))))

(assert (=> d!1164843 (= (size!31308 (t!325278 (originalCharacters!7115 (_1!23637 (v!39260 lt!1372235))))) lt!1372679)))

(declare-fun b!3929981 () Bool)

(assert (=> b!3929981 (= e!2431260 0)))

(declare-fun b!3929982 () Bool)

(assert (=> b!3929982 (= e!2431260 (+ 1 (size!31308 (t!325278 (t!325278 (originalCharacters!7115 (_1!23637 (v!39260 lt!1372235))))))))))

(assert (= (and d!1164843 c!682738) b!3929981))

(assert (= (and d!1164843 (not c!682738)) b!3929982))

(declare-fun m!4495373 () Bool)

(assert (=> b!3929982 m!4495373))

(assert (=> b!3929453 d!1164843))

(assert (=> d!1164471 d!1164487))

(declare-fun d!1164845 () Bool)

(assert (=> d!1164845 (ruleValid!2463 thiss!20629 (rule!9459 (_1!23637 (v!39260 lt!1372235))))))

(assert (=> d!1164845 true))

(declare-fun _$65!1377 () Unit!60127)

(assert (=> d!1164845 (= (choose!23349 thiss!20629 (rule!9459 (_1!23637 (v!39260 lt!1372235))) rules!2768) _$65!1377)))

(declare-fun bs!586141 () Bool)

(assert (= bs!586141 d!1164845))

(assert (=> bs!586141 m!4494109))

(assert (=> d!1164471 d!1164845))

(declare-fun d!1164847 () Bool)

(declare-fun lt!1372682 () Bool)

(declare-fun content!6285 (List!41858) (Set Rule!12830))

(assert (=> d!1164847 (= lt!1372682 (set.member (rule!9459 (_1!23637 (v!39260 lt!1372235))) (content!6285 rules!2768)))))

(declare-fun e!2431265 () Bool)

(assert (=> d!1164847 (= lt!1372682 e!2431265)))

(declare-fun res!1590170 () Bool)

(assert (=> d!1164847 (=> (not res!1590170) (not e!2431265))))

(assert (=> d!1164847 (= res!1590170 (is-Cons!41734 rules!2768))))

(assert (=> d!1164847 (= (contains!8362 rules!2768 (rule!9459 (_1!23637 (v!39260 lt!1372235)))) lt!1372682)))

(declare-fun b!3929987 () Bool)

(declare-fun e!2431266 () Bool)

(assert (=> b!3929987 (= e!2431265 e!2431266)))

(declare-fun res!1590171 () Bool)

(assert (=> b!3929987 (=> res!1590171 e!2431266)))

(assert (=> b!3929987 (= res!1590171 (= (h!47154 rules!2768) (rule!9459 (_1!23637 (v!39260 lt!1372235)))))))

(declare-fun b!3929988 () Bool)

(assert (=> b!3929988 (= e!2431266 (contains!8362 (t!325281 rules!2768) (rule!9459 (_1!23637 (v!39260 lt!1372235)))))))

(assert (= (and d!1164847 res!1590170) b!3929987))

(assert (= (and b!3929987 (not res!1590171)) b!3929988))

(declare-fun m!4495375 () Bool)

(assert (=> d!1164847 m!4495375))

(declare-fun m!4495377 () Bool)

(assert (=> d!1164847 m!4495377))

(declare-fun m!4495379 () Bool)

(assert (=> b!3929988 m!4495379))

(assert (=> d!1164471 d!1164847))

(declare-fun b!3929989 () Bool)

(declare-fun e!2431267 () List!41857)

(assert (=> b!3929989 (= e!2431267 lt!1372222)))

(declare-fun b!3929991 () Bool)

(declare-fun res!1590173 () Bool)

(declare-fun e!2431268 () Bool)

(assert (=> b!3929991 (=> (not res!1590173) (not e!2431268))))

(declare-fun lt!1372683 () List!41857)

(assert (=> b!3929991 (= res!1590173 (= (size!31311 lt!1372683) (+ (size!31311 (t!325280 lt!1372210)) (size!31311 lt!1372222))))))

(declare-fun d!1164849 () Bool)

(assert (=> d!1164849 e!2431268))

(declare-fun res!1590172 () Bool)

(assert (=> d!1164849 (=> (not res!1590172) (not e!2431268))))

(assert (=> d!1164849 (= res!1590172 (= (content!6282 lt!1372683) (set.union (content!6282 (t!325280 lt!1372210)) (content!6282 lt!1372222))))))

(assert (=> d!1164849 (= lt!1372683 e!2431267)))

(declare-fun c!682739 () Bool)

(assert (=> d!1164849 (= c!682739 (is-Nil!41733 (t!325280 lt!1372210)))))

(assert (=> d!1164849 (= (++!10787 (t!325280 lt!1372210) lt!1372222) lt!1372683)))

(declare-fun b!3929990 () Bool)

(assert (=> b!3929990 (= e!2431267 (Cons!41733 (h!47153 (t!325280 lt!1372210)) (++!10787 (t!325280 (t!325280 lt!1372210)) lt!1372222)))))

(declare-fun b!3929992 () Bool)

(assert (=> b!3929992 (= e!2431268 (or (not (= lt!1372222 Nil!41733)) (= lt!1372683 (t!325280 lt!1372210))))))

(assert (= (and d!1164849 c!682739) b!3929989))

(assert (= (and d!1164849 (not c!682739)) b!3929990))

(assert (= (and d!1164849 res!1590172) b!3929991))

(assert (= (and b!3929991 res!1590173) b!3929992))

(declare-fun m!4495381 () Bool)

(assert (=> b!3929991 m!4495381))

(assert (=> b!3929991 m!4495309))

(assert (=> b!3929991 m!4494665))

(declare-fun m!4495383 () Bool)

(assert (=> d!1164849 m!4495383))

(assert (=> d!1164849 m!4495313))

(assert (=> d!1164849 m!4494669))

(declare-fun m!4495385 () Bool)

(assert (=> b!3929990 m!4495385))

(assert (=> b!3929529 d!1164849))

(declare-fun d!1164851 () Bool)

(assert (=> d!1164851 (= (isEmpty!24881 lt!1372501) (not (is-Some!8934 lt!1372501)))))

(assert (=> d!1164593 d!1164851))

(declare-fun d!1164853 () Bool)

(declare-fun e!2431270 () Bool)

(assert (=> d!1164853 e!2431270))

(declare-fun res!1590174 () Bool)

(assert (=> d!1164853 (=> res!1590174 e!2431270)))

(declare-fun lt!1372684 () Bool)

(assert (=> d!1164853 (= res!1590174 (not lt!1372684))))

(declare-fun e!2431269 () Bool)

(assert (=> d!1164853 (= lt!1372684 e!2431269)))

(declare-fun res!1590177 () Bool)

(assert (=> d!1164853 (=> res!1590177 e!2431269)))

(assert (=> d!1164853 (= res!1590177 (is-Nil!41731 lt!1372223))))

(assert (=> d!1164853 (= (isPrefix!3610 lt!1372223 lt!1372223) lt!1372684)))

(declare-fun b!3929993 () Bool)

(declare-fun e!2431271 () Bool)

(assert (=> b!3929993 (= e!2431269 e!2431271)))

(declare-fun res!1590176 () Bool)

(assert (=> b!3929993 (=> (not res!1590176) (not e!2431271))))

(assert (=> b!3929993 (= res!1590176 (not (is-Nil!41731 lt!1372223)))))

(declare-fun b!3929994 () Bool)

(declare-fun res!1590175 () Bool)

(assert (=> b!3929994 (=> (not res!1590175) (not e!2431271))))

(assert (=> b!3929994 (= res!1590175 (= (head!8342 lt!1372223) (head!8342 lt!1372223)))))

(declare-fun b!3929996 () Bool)

(assert (=> b!3929996 (= e!2431270 (>= (size!31308 lt!1372223) (size!31308 lt!1372223)))))

(declare-fun b!3929995 () Bool)

(assert (=> b!3929995 (= e!2431271 (isPrefix!3610 (tail!6068 lt!1372223) (tail!6068 lt!1372223)))))

(assert (= (and d!1164853 (not res!1590177)) b!3929993))

(assert (= (and b!3929993 res!1590176) b!3929994))

(assert (= (and b!3929994 res!1590175) b!3929995))

(assert (= (and d!1164853 (not res!1590174)) b!3929996))

(assert (=> b!3929994 m!4494599))

(assert (=> b!3929994 m!4494599))

(assert (=> b!3929996 m!4494049))

(assert (=> b!3929996 m!4494049))

(assert (=> b!3929995 m!4494289))

(assert (=> b!3929995 m!4494289))

(assert (=> b!3929995 m!4494289))

(assert (=> b!3929995 m!4494289))

(declare-fun m!4495387 () Bool)

(assert (=> b!3929995 m!4495387))

(assert (=> d!1164593 d!1164853))

(declare-fun d!1164855 () Bool)

(assert (=> d!1164855 (isPrefix!3610 lt!1372223 lt!1372223)))

(declare-fun lt!1372687 () Unit!60127)

(declare-fun choose!23373 (List!41855 List!41855) Unit!60127)

(assert (=> d!1164855 (= lt!1372687 (choose!23373 lt!1372223 lt!1372223))))

(assert (=> d!1164855 (= (lemmaIsPrefixRefl!2277 lt!1372223 lt!1372223) lt!1372687)))

(declare-fun bs!586142 () Bool)

(assert (= bs!586142 d!1164855))

(assert (=> bs!586142 m!4494625))

(declare-fun m!4495389 () Bool)

(assert (=> bs!586142 m!4495389))

(assert (=> d!1164593 d!1164855))

(declare-fun d!1164857 () Bool)

(assert (=> d!1164857 true))

(declare-fun lt!1372690 () Bool)

(declare-fun lambda!126562 () Int)

(declare-fun forall!8313 (List!41858 Int) Bool)

(assert (=> d!1164857 (= lt!1372690 (forall!8313 rules!2768 lambda!126562))))

(declare-fun e!2431276 () Bool)

(assert (=> d!1164857 (= lt!1372690 e!2431276)))

(declare-fun res!1590182 () Bool)

(assert (=> d!1164857 (=> res!1590182 e!2431276)))

(assert (=> d!1164857 (= res!1590182 (not (is-Cons!41734 rules!2768)))))

(assert (=> d!1164857 (= (rulesValidInductive!2347 thiss!20629 rules!2768) lt!1372690)))

(declare-fun b!3930001 () Bool)

(declare-fun e!2431277 () Bool)

(assert (=> b!3930001 (= e!2431276 e!2431277)))

(declare-fun res!1590183 () Bool)

(assert (=> b!3930001 (=> (not res!1590183) (not e!2431277))))

(assert (=> b!3930001 (= res!1590183 (ruleValid!2463 thiss!20629 (h!47154 rules!2768)))))

(declare-fun b!3930002 () Bool)

(assert (=> b!3930002 (= e!2431277 (rulesValidInductive!2347 thiss!20629 (t!325281 rules!2768)))))

(assert (= (and d!1164857 (not res!1590182)) b!3930001))

(assert (= (and b!3930001 res!1590183) b!3930002))

(declare-fun m!4495391 () Bool)

(assert (=> d!1164857 m!4495391))

(assert (=> b!3930001 m!4495287))

(declare-fun m!4495393 () Bool)

(assert (=> b!3930002 m!4495393))

(assert (=> d!1164593 d!1164857))

(declare-fun d!1164859 () Bool)

(assert (=> d!1164859 (= (inv!55921 (tag!7375 (rule!9459 (h!47153 (t!325280 suffixTokens!72))))) (= (mod (str.len (value!206287 (tag!7375 (rule!9459 (h!47153 (t!325280 suffixTokens!72)))))) 2) 0))))

(assert (=> b!3929723 d!1164859))

(declare-fun d!1164861 () Bool)

(declare-fun res!1590184 () Bool)

(declare-fun e!2431278 () Bool)

(assert (=> d!1164861 (=> (not res!1590184) (not e!2431278))))

(assert (=> d!1164861 (= res!1590184 (semiInverseModEq!2798 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72))))) (toValue!8967 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72)))))))))

(assert (=> d!1164861 (= (inv!55925 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72))))) e!2431278)))

(declare-fun b!3930005 () Bool)

(assert (=> b!3930005 (= e!2431278 (equivClasses!2697 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72))))) (toValue!8967 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72)))))))))

(assert (= (and d!1164861 res!1590184) b!3930005))

(declare-fun m!4495395 () Bool)

(assert (=> d!1164861 m!4495395))

(declare-fun m!4495397 () Bool)

(assert (=> b!3930005 m!4495397))

(assert (=> b!3929723 d!1164861))

(declare-fun d!1164863 () Bool)

(declare-fun e!2431280 () Bool)

(assert (=> d!1164863 e!2431280))

(declare-fun res!1590185 () Bool)

(assert (=> d!1164863 (=> res!1590185 e!2431280)))

(declare-fun lt!1372691 () Bool)

(assert (=> d!1164863 (= res!1590185 (not lt!1372691))))

(declare-fun e!2431279 () Bool)

(assert (=> d!1164863 (= lt!1372691 e!2431279)))

(declare-fun res!1590188 () Bool)

(assert (=> d!1164863 (=> res!1590188 e!2431279)))

(assert (=> d!1164863 (= res!1590188 (is-Nil!41731 (tail!6068 lt!1372190)))))

(assert (=> d!1164863 (= (isPrefix!3610 (tail!6068 lt!1372190) (tail!6068 prefix!426)) lt!1372691)))

(declare-fun b!3930006 () Bool)

(declare-fun e!2431281 () Bool)

(assert (=> b!3930006 (= e!2431279 e!2431281)))

(declare-fun res!1590187 () Bool)

(assert (=> b!3930006 (=> (not res!1590187) (not e!2431281))))

(assert (=> b!3930006 (= res!1590187 (not (is-Nil!41731 (tail!6068 prefix!426))))))

(declare-fun b!3930007 () Bool)

(declare-fun res!1590186 () Bool)

(assert (=> b!3930007 (=> (not res!1590186) (not e!2431281))))

(assert (=> b!3930007 (= res!1590186 (= (head!8342 (tail!6068 lt!1372190)) (head!8342 (tail!6068 prefix!426))))))

(declare-fun b!3930009 () Bool)

(assert (=> b!3930009 (= e!2431280 (>= (size!31308 (tail!6068 prefix!426)) (size!31308 (tail!6068 lt!1372190))))))

(declare-fun b!3930008 () Bool)

(assert (=> b!3930008 (= e!2431281 (isPrefix!3610 (tail!6068 (tail!6068 lt!1372190)) (tail!6068 (tail!6068 prefix!426))))))

(assert (= (and d!1164863 (not res!1590188)) b!3930006))

(assert (= (and b!3930006 res!1590187) b!3930007))

(assert (= (and b!3930007 res!1590186) b!3930008))

(assert (= (and d!1164863 (not res!1590185)) b!3930009))

(assert (=> b!3930007 m!4494319))

(assert (=> b!3930007 m!4495233))

(assert (=> b!3930007 m!4494469))

(declare-fun m!4495399 () Bool)

(assert (=> b!3930007 m!4495399))

(assert (=> b!3930009 m!4494469))

(declare-fun m!4495401 () Bool)

(assert (=> b!3930009 m!4495401))

(assert (=> b!3930009 m!4494319))

(assert (=> b!3930009 m!4495239))

(assert (=> b!3930008 m!4494319))

(assert (=> b!3930008 m!4495241))

(assert (=> b!3930008 m!4494469))

(declare-fun m!4495403 () Bool)

(assert (=> b!3930008 m!4495403))

(assert (=> b!3930008 m!4495241))

(assert (=> b!3930008 m!4495403))

(declare-fun m!4495405 () Bool)

(assert (=> b!3930008 m!4495405))

(assert (=> b!3929524 d!1164863))

(assert (=> b!3929524 d!1164787))

(declare-fun d!1164865 () Bool)

(assert (=> d!1164865 (= (tail!6068 prefix!426) (t!325278 prefix!426))))

(assert (=> b!3929524 d!1164865))

(assert (=> d!1164641 d!1164465))

(assert (=> d!1164641 d!1164477))

(assert (=> d!1164641 d!1164653))

(assert (=> d!1164641 d!1164481))

(declare-fun d!1164867 () Bool)

(assert (=> d!1164867 (= (maxPrefixOneRule!2478 thiss!20629 (rule!9459 (_1!23637 (v!39260 lt!1372235))) lt!1372223) (Some!8934 (tuple2!41007 (Token!12169 (apply!9754 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))) (seqFromList!4782 lt!1372190)) (rule!9459 (_1!23637 (v!39260 lt!1372235))) (size!31308 lt!1372190) lt!1372190) (_2!23637 (v!39260 lt!1372235)))))))

(assert (=> d!1164867 true))

(declare-fun _$59!614 () Unit!60127)

(assert (=> d!1164867 (= (choose!23366 thiss!20629 rules!2768 lt!1372190 lt!1372223 (_2!23637 (v!39260 lt!1372235)) (rule!9459 (_1!23637 (v!39260 lt!1372235)))) _$59!614)))

(declare-fun bs!586143 () Bool)

(assert (= bs!586143 d!1164867))

(assert (=> bs!586143 m!4494047))

(assert (=> bs!586143 m!4494091))

(assert (=> bs!586143 m!4494091))

(assert (=> bs!586143 m!4494099))

(assert (=> bs!586143 m!4494105))

(assert (=> d!1164641 d!1164867))

(assert (=> d!1164641 d!1164491))

(declare-fun d!1164869 () Bool)

(declare-fun e!2431283 () Bool)

(assert (=> d!1164869 e!2431283))

(declare-fun res!1590189 () Bool)

(assert (=> d!1164869 (=> res!1590189 e!2431283)))

(declare-fun lt!1372692 () Bool)

(assert (=> d!1164869 (= res!1590189 (not lt!1372692))))

(declare-fun e!2431282 () Bool)

(assert (=> d!1164869 (= lt!1372692 e!2431282)))

(declare-fun res!1590192 () Bool)

(assert (=> d!1164869 (=> res!1590192 e!2431282)))

(assert (=> d!1164869 (= res!1590192 (is-Nil!41731 (tail!6068 lt!1372190)))))

(assert (=> d!1164869 (= (isPrefix!3610 (tail!6068 lt!1372190) (tail!6068 lt!1372211)) lt!1372692)))

(declare-fun b!3930010 () Bool)

(declare-fun e!2431284 () Bool)

(assert (=> b!3930010 (= e!2431282 e!2431284)))

(declare-fun res!1590191 () Bool)

(assert (=> b!3930010 (=> (not res!1590191) (not e!2431284))))

(assert (=> b!3930010 (= res!1590191 (not (is-Nil!41731 (tail!6068 lt!1372211))))))

(declare-fun b!3930011 () Bool)

(declare-fun res!1590190 () Bool)

(assert (=> b!3930011 (=> (not res!1590190) (not e!2431284))))

(assert (=> b!3930011 (= res!1590190 (= (head!8342 (tail!6068 lt!1372190)) (head!8342 (tail!6068 lt!1372211))))))

(declare-fun b!3930013 () Bool)

(assert (=> b!3930013 (= e!2431283 (>= (size!31308 (tail!6068 lt!1372211)) (size!31308 (tail!6068 lt!1372190))))))

(declare-fun b!3930012 () Bool)

(assert (=> b!3930012 (= e!2431284 (isPrefix!3610 (tail!6068 (tail!6068 lt!1372190)) (tail!6068 (tail!6068 lt!1372211))))))

(assert (= (and d!1164869 (not res!1590192)) b!3930010))

(assert (= (and b!3930010 res!1590191) b!3930011))

(assert (= (and b!3930011 res!1590190) b!3930012))

(assert (= (and d!1164869 (not res!1590189)) b!3930013))

(assert (=> b!3930011 m!4494319))

(assert (=> b!3930011 m!4495233))

(assert (=> b!3930011 m!4494321))

(declare-fun m!4495407 () Bool)

(assert (=> b!3930011 m!4495407))

(assert (=> b!3930013 m!4494321))

(declare-fun m!4495409 () Bool)

(assert (=> b!3930013 m!4495409))

(assert (=> b!3930013 m!4494319))

(assert (=> b!3930013 m!4495239))

(assert (=> b!3930012 m!4494319))

(assert (=> b!3930012 m!4495241))

(assert (=> b!3930012 m!4494321))

(declare-fun m!4495411 () Bool)

(assert (=> b!3930012 m!4495411))

(assert (=> b!3930012 m!4495241))

(assert (=> b!3930012 m!4495411))

(declare-fun m!4495413 () Bool)

(assert (=> b!3930012 m!4495413))

(assert (=> b!3929296 d!1164869))

(assert (=> b!3929296 d!1164787))

(declare-fun d!1164871 () Bool)

(assert (=> d!1164871 (= (tail!6068 lt!1372211) (t!325278 lt!1372211))))

(assert (=> b!3929296 d!1164871))

(assert (=> d!1164509 d!1164507))

(declare-fun d!1164873 () Bool)

(assert (=> d!1164873 (= (lexList!1872 thiss!20629 rules!2768 lt!1372187) (tuple2!41009 lt!1372222 Nil!41731))))

(assert (=> d!1164873 true))

(declare-fun _$42!339 () Unit!60127)

(assert (=> d!1164873 (= (choose!23352 thiss!20629 rules!2768 lt!1372187 suffix!1176 lt!1372222 suffixTokens!72 suffixResult!91) _$42!339)))

(declare-fun bs!586144 () Bool)

(assert (= bs!586144 d!1164873))

(assert (=> bs!586144 m!4494029))

(assert (=> d!1164509 d!1164873))

(assert (=> d!1164509 d!1164465))

(declare-fun b!3930042 () Bool)

(declare-fun e!2431300 () Bool)

(assert (=> b!3930042 (= e!2431300 (nullable!3998 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))))))

(declare-fun b!3930043 () Bool)

(declare-fun e!2431299 () Bool)

(assert (=> b!3930043 (= e!2431299 (= (head!8342 (_1!23641 (findLongestMatchInner!1259 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))) Nil!41731 (size!31308 Nil!41731) lt!1372223 lt!1372223 (size!31308 lt!1372223)))) (c!682586 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))))))

(declare-fun bm!284774 () Bool)

(declare-fun call!284779 () Bool)

(assert (=> bm!284774 (= call!284779 (isEmpty!24875 (_1!23641 (findLongestMatchInner!1259 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))) Nil!41731 (size!31308 Nil!41731) lt!1372223 lt!1372223 (size!31308 lt!1372223)))))))

(declare-fun b!3930044 () Bool)

(declare-fun e!2431304 () Bool)

(declare-fun lt!1372695 () Bool)

(assert (=> b!3930044 (= e!2431304 (not lt!1372695))))

(declare-fun d!1164875 () Bool)

(declare-fun e!2431302 () Bool)

(assert (=> d!1164875 e!2431302))

(declare-fun c!682746 () Bool)

(assert (=> d!1164875 (= c!682746 (is-EmptyExpr!11420 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))))))

(assert (=> d!1164875 (= lt!1372695 e!2431300)))

(declare-fun c!682747 () Bool)

(assert (=> d!1164875 (= c!682747 (isEmpty!24875 (_1!23641 (findLongestMatchInner!1259 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))) Nil!41731 (size!31308 Nil!41731) lt!1372223 lt!1372223 (size!31308 lt!1372223)))))))

(assert (=> d!1164875 (validRegex!5197 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))))

(assert (=> d!1164875 (= (matchR!5479 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))) (_1!23641 (findLongestMatchInner!1259 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))) Nil!41731 (size!31308 Nil!41731) lt!1372223 lt!1372223 (size!31308 lt!1372223)))) lt!1372695)))

(declare-fun b!3930045 () Bool)

(assert (=> b!3930045 (= e!2431302 e!2431304)))

(declare-fun c!682748 () Bool)

(assert (=> b!3930045 (= c!682748 (is-EmptyLang!11420 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))))))

(declare-fun b!3930046 () Bool)

(declare-fun e!2431303 () Bool)

(declare-fun e!2431305 () Bool)

(assert (=> b!3930046 (= e!2431303 e!2431305)))

(declare-fun res!1590210 () Bool)

(assert (=> b!3930046 (=> res!1590210 e!2431305)))

(assert (=> b!3930046 (= res!1590210 call!284779)))

(declare-fun b!3930047 () Bool)

(declare-fun derivativeStep!3451 (Regex!11420 C!23026) Regex!11420)

(assert (=> b!3930047 (= e!2431300 (matchR!5479 (derivativeStep!3451 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))) (head!8342 (_1!23641 (findLongestMatchInner!1259 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))) Nil!41731 (size!31308 Nil!41731) lt!1372223 lt!1372223 (size!31308 lt!1372223))))) (tail!6068 (_1!23641 (findLongestMatchInner!1259 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))) Nil!41731 (size!31308 Nil!41731) lt!1372223 lt!1372223 (size!31308 lt!1372223))))))))

(declare-fun b!3930048 () Bool)

(declare-fun res!1590213 () Bool)

(assert (=> b!3930048 (=> res!1590213 e!2431305)))

(assert (=> b!3930048 (= res!1590213 (not (isEmpty!24875 (tail!6068 (_1!23641 (findLongestMatchInner!1259 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))) Nil!41731 (size!31308 Nil!41731) lt!1372223 lt!1372223 (size!31308 lt!1372223)))))))))

(declare-fun b!3930049 () Bool)

(assert (=> b!3930049 (= e!2431305 (not (= (head!8342 (_1!23641 (findLongestMatchInner!1259 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))) Nil!41731 (size!31308 Nil!41731) lt!1372223 lt!1372223 (size!31308 lt!1372223)))) (c!682586 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))))))))

(declare-fun b!3930050 () Bool)

(declare-fun e!2431301 () Bool)

(assert (=> b!3930050 (= e!2431301 e!2431303)))

(declare-fun res!1590209 () Bool)

(assert (=> b!3930050 (=> (not res!1590209) (not e!2431303))))

(assert (=> b!3930050 (= res!1590209 (not lt!1372695))))

(declare-fun b!3930051 () Bool)

(declare-fun res!1590211 () Bool)

(assert (=> b!3930051 (=> res!1590211 e!2431301)))

(assert (=> b!3930051 (= res!1590211 e!2431299)))

(declare-fun res!1590214 () Bool)

(assert (=> b!3930051 (=> (not res!1590214) (not e!2431299))))

(assert (=> b!3930051 (= res!1590214 lt!1372695)))

(declare-fun b!3930052 () Bool)

(declare-fun res!1590216 () Bool)

(assert (=> b!3930052 (=> (not res!1590216) (not e!2431299))))

(assert (=> b!3930052 (= res!1590216 (not call!284779))))

(declare-fun b!3930053 () Bool)

(declare-fun res!1590215 () Bool)

(assert (=> b!3930053 (=> res!1590215 e!2431301)))

(assert (=> b!3930053 (= res!1590215 (not (is-ElementMatch!11420 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))))))

(assert (=> b!3930053 (= e!2431304 e!2431301)))

(declare-fun b!3930054 () Bool)

(assert (=> b!3930054 (= e!2431302 (= lt!1372695 call!284779))))

(declare-fun b!3930055 () Bool)

(declare-fun res!1590212 () Bool)

(assert (=> b!3930055 (=> (not res!1590212) (not e!2431299))))

(assert (=> b!3930055 (= res!1590212 (isEmpty!24875 (tail!6068 (_1!23641 (findLongestMatchInner!1259 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))) Nil!41731 (size!31308 Nil!41731) lt!1372223 lt!1372223 (size!31308 lt!1372223))))))))

(assert (= (and d!1164875 c!682747) b!3930042))

(assert (= (and d!1164875 (not c!682747)) b!3930047))

(assert (= (and d!1164875 c!682746) b!3930054))

(assert (= (and d!1164875 (not c!682746)) b!3930045))

(assert (= (and b!3930045 c!682748) b!3930044))

(assert (= (and b!3930045 (not c!682748)) b!3930053))

(assert (= (and b!3930053 (not res!1590215)) b!3930051))

(assert (= (and b!3930051 res!1590214) b!3930052))

(assert (= (and b!3930052 res!1590216) b!3930055))

(assert (= (and b!3930055 res!1590212) b!3930043))

(assert (= (and b!3930051 (not res!1590211)) b!3930050))

(assert (= (and b!3930050 res!1590209) b!3930046))

(assert (= (and b!3930046 (not res!1590210)) b!3930048))

(assert (= (and b!3930048 (not res!1590213)) b!3930049))

(assert (= (or b!3930054 b!3930046 b!3930052) bm!284774))

(declare-fun m!4495415 () Bool)

(assert (=> b!3930047 m!4495415))

(assert (=> b!3930047 m!4495415))

(declare-fun m!4495417 () Bool)

(assert (=> b!3930047 m!4495417))

(declare-fun m!4495419 () Bool)

(assert (=> b!3930047 m!4495419))

(assert (=> b!3930047 m!4495417))

(assert (=> b!3930047 m!4495419))

(declare-fun m!4495421 () Bool)

(assert (=> b!3930047 m!4495421))

(assert (=> b!3930048 m!4495419))

(assert (=> b!3930048 m!4495419))

(declare-fun m!4495423 () Bool)

(assert (=> b!3930048 m!4495423))

(assert (=> b!3930049 m!4495415))

(assert (=> b!3930055 m!4495419))

(assert (=> b!3930055 m!4495419))

(assert (=> b!3930055 m!4495423))

(assert (=> b!3930043 m!4495415))

(assert (=> b!3930042 m!4494337))

(assert (=> d!1164875 m!4494919))

(assert (=> d!1164875 m!4494335))

(assert (=> bm!284774 m!4494919))

(assert (=> b!3929663 d!1164875))

(declare-fun b!3930084 () Bool)

(declare-fun e!2431326 () tuple2!41014)

(declare-fun e!2431327 () tuple2!41014)

(assert (=> b!3930084 (= e!2431326 e!2431327)))

(declare-fun c!682765 () Bool)

(assert (=> b!3930084 (= c!682765 (= (size!31308 Nil!41731) (size!31308 lt!1372223)))))

(declare-fun b!3930085 () Bool)

(declare-fun e!2431324 () Unit!60127)

(declare-fun Unit!60153 () Unit!60127)

(assert (=> b!3930085 (= e!2431324 Unit!60153)))

(declare-fun b!3930086 () Bool)

(declare-fun e!2431325 () tuple2!41014)

(assert (=> b!3930086 (= e!2431325 (tuple2!41015 Nil!41731 Nil!41731))))

(declare-fun b!3930087 () Bool)

(assert (=> b!3930087 (= e!2431326 (tuple2!41015 Nil!41731 lt!1372223))))

(declare-fun b!3930088 () Bool)

(declare-fun e!2431329 () Bool)

(declare-fun e!2431323 () Bool)

(assert (=> b!3930088 (= e!2431329 e!2431323)))

(declare-fun res!1590221 () Bool)

(assert (=> b!3930088 (=> res!1590221 e!2431323)))

(declare-fun lt!1372773 () tuple2!41014)

(assert (=> b!3930088 (= res!1590221 (isEmpty!24875 (_1!23641 lt!1372773)))))

(declare-fun bm!284791 () Bool)

(declare-fun call!284798 () Bool)

(assert (=> bm!284791 (= call!284798 (isPrefix!3610 lt!1372223 lt!1372223))))

(declare-fun bm!284792 () Bool)

(declare-fun call!284803 () Unit!60127)

(assert (=> bm!284792 (= call!284803 (lemmaIsPrefixSameLengthThenSameList!806 lt!1372223 Nil!41731 lt!1372223))))

(declare-fun bm!284793 () Bool)

(declare-fun call!284802 () Unit!60127)

(assert (=> bm!284793 (= call!284802 (lemmaIsPrefixRefl!2277 lt!1372223 lt!1372223))))

(declare-fun b!3930089 () Bool)

(declare-fun e!2431328 () tuple2!41014)

(assert (=> b!3930089 (= e!2431328 (tuple2!41015 Nil!41731 lt!1372223))))

(declare-fun b!3930090 () Bool)

(declare-fun c!682761 () Bool)

(declare-fun call!284801 () Bool)

(assert (=> b!3930090 (= c!682761 call!284801)))

(declare-fun lt!1372756 () Unit!60127)

(declare-fun lt!1372752 () Unit!60127)

(assert (=> b!3930090 (= lt!1372756 lt!1372752)))

(assert (=> b!3930090 (= lt!1372223 Nil!41731)))

(assert (=> b!3930090 (= lt!1372752 call!284803)))

(declare-fun lt!1372770 () Unit!60127)

(declare-fun lt!1372767 () Unit!60127)

(assert (=> b!3930090 (= lt!1372770 lt!1372767)))

(assert (=> b!3930090 call!284798))

(assert (=> b!3930090 (= lt!1372767 call!284802)))

(assert (=> b!3930090 (= e!2431327 e!2431325)))

(declare-fun bm!284794 () Bool)

(declare-fun call!284800 () C!23026)

(assert (=> bm!284794 (= call!284800 (head!8342 lt!1372223))))

(declare-fun bm!284795 () Bool)

(assert (=> bm!284795 (= call!284801 (nullable!3998 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))))))

(declare-fun bm!284796 () Bool)

(declare-fun call!284796 () Regex!11420)

(assert (=> bm!284796 (= call!284796 (derivativeStep!3451 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))) call!284800))))

(declare-fun b!3930092 () Bool)

(assert (=> b!3930092 (= e!2431323 (>= (size!31308 (_1!23641 lt!1372773)) (size!31308 Nil!41731)))))

(declare-fun b!3930093 () Bool)

(assert (=> b!3930093 (= e!2431325 (tuple2!41015 Nil!41731 lt!1372223))))

(declare-fun b!3930094 () Bool)

(declare-fun e!2431322 () tuple2!41014)

(assert (=> b!3930094 (= e!2431322 e!2431328)))

(declare-fun lt!1372761 () tuple2!41014)

(declare-fun call!284799 () tuple2!41014)

(assert (=> b!3930094 (= lt!1372761 call!284799)))

(declare-fun c!682762 () Bool)

(assert (=> b!3930094 (= c!682762 (isEmpty!24875 (_1!23641 lt!1372761)))))

(declare-fun b!3930095 () Bool)

(assert (=> b!3930095 (= e!2431328 lt!1372761)))

(declare-fun bm!284797 () Bool)

(declare-fun call!284797 () List!41855)

(assert (=> bm!284797 (= call!284797 (tail!6068 lt!1372223))))

(declare-fun b!3930096 () Bool)

(assert (=> b!3930096 (= e!2431322 call!284799)))

(declare-fun lt!1372779 () List!41855)

(declare-fun bm!284798 () Bool)

(assert (=> bm!284798 (= call!284799 (findLongestMatchInner!1259 call!284796 lt!1372779 (+ (size!31308 Nil!41731) 1) call!284797 lt!1372223 (size!31308 lt!1372223)))))

(declare-fun b!3930097 () Bool)

(declare-fun Unit!60154 () Unit!60127)

(assert (=> b!3930097 (= e!2431324 Unit!60154)))

(declare-fun lt!1372774 () Unit!60127)

(assert (=> b!3930097 (= lt!1372774 call!284802)))

(assert (=> b!3930097 call!284798))

(declare-fun lt!1372775 () Unit!60127)

(assert (=> b!3930097 (= lt!1372775 lt!1372774)))

(declare-fun lt!1372766 () Unit!60127)

(assert (=> b!3930097 (= lt!1372766 call!284803)))

(assert (=> b!3930097 (= lt!1372223 Nil!41731)))

(declare-fun lt!1372759 () Unit!60127)

(assert (=> b!3930097 (= lt!1372759 lt!1372766)))

(assert (=> b!3930097 false))

(declare-fun d!1164877 () Bool)

(assert (=> d!1164877 e!2431329))

(declare-fun res!1590222 () Bool)

(assert (=> d!1164877 (=> (not res!1590222) (not e!2431329))))

(assert (=> d!1164877 (= res!1590222 (= (++!10788 (_1!23641 lt!1372773) (_2!23641 lt!1372773)) lt!1372223))))

(assert (=> d!1164877 (= lt!1372773 e!2431326)))

(declare-fun c!682764 () Bool)

(declare-fun lostCause!987 (Regex!11420) Bool)

(assert (=> d!1164877 (= c!682764 (lostCause!987 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))))))

(declare-fun lt!1372769 () Unit!60127)

(declare-fun Unit!60155 () Unit!60127)

(assert (=> d!1164877 (= lt!1372769 Unit!60155)))

(assert (=> d!1164877 (= (getSuffix!2065 lt!1372223 Nil!41731) lt!1372223)))

(declare-fun lt!1372763 () Unit!60127)

(declare-fun lt!1372777 () Unit!60127)

(assert (=> d!1164877 (= lt!1372763 lt!1372777)))

(declare-fun lt!1372760 () List!41855)

(assert (=> d!1164877 (= lt!1372223 lt!1372760)))

(assert (=> d!1164877 (= lt!1372777 (lemmaSamePrefixThenSameSuffix!1831 Nil!41731 lt!1372223 Nil!41731 lt!1372760 lt!1372223))))

(assert (=> d!1164877 (= lt!1372760 (getSuffix!2065 lt!1372223 Nil!41731))))

(declare-fun lt!1372764 () Unit!60127)

(declare-fun lt!1372758 () Unit!60127)

(assert (=> d!1164877 (= lt!1372764 lt!1372758)))

(assert (=> d!1164877 (isPrefix!3610 Nil!41731 (++!10788 Nil!41731 lt!1372223))))

(assert (=> d!1164877 (= lt!1372758 (lemmaConcatTwoListThenFirstIsPrefix!2473 Nil!41731 lt!1372223))))

(assert (=> d!1164877 (validRegex!5197 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))))

(assert (=> d!1164877 (= (findLongestMatchInner!1259 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))) Nil!41731 (size!31308 Nil!41731) lt!1372223 lt!1372223 (size!31308 lt!1372223)) lt!1372773)))

(declare-fun b!3930091 () Bool)

(declare-fun c!682766 () Bool)

(assert (=> b!3930091 (= c!682766 call!284801)))

(declare-fun lt!1372765 () Unit!60127)

(declare-fun lt!1372778 () Unit!60127)

(assert (=> b!3930091 (= lt!1372765 lt!1372778)))

(declare-fun lt!1372771 () C!23026)

(declare-fun lt!1372768 () List!41855)

(assert (=> b!3930091 (= (++!10788 (++!10788 Nil!41731 (Cons!41731 lt!1372771 Nil!41731)) lt!1372768) lt!1372223)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1231 (List!41855 C!23026 List!41855 List!41855) Unit!60127)

(assert (=> b!3930091 (= lt!1372778 (lemmaMoveElementToOtherListKeepsConcatEq!1231 Nil!41731 lt!1372771 lt!1372768 lt!1372223))))

(assert (=> b!3930091 (= lt!1372768 (tail!6068 lt!1372223))))

(assert (=> b!3930091 (= lt!1372771 (head!8342 lt!1372223))))

(declare-fun lt!1372753 () Unit!60127)

(declare-fun lt!1372762 () Unit!60127)

(assert (=> b!3930091 (= lt!1372753 lt!1372762)))

(assert (=> b!3930091 (isPrefix!3610 (++!10788 Nil!41731 (Cons!41731 (head!8342 (getSuffix!2065 lt!1372223 Nil!41731)) Nil!41731)) lt!1372223)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!613 (List!41855 List!41855) Unit!60127)

(assert (=> b!3930091 (= lt!1372762 (lemmaAddHeadSuffixToPrefixStillPrefix!613 Nil!41731 lt!1372223))))

(declare-fun lt!1372776 () Unit!60127)

(declare-fun lt!1372755 () Unit!60127)

(assert (=> b!3930091 (= lt!1372776 lt!1372755)))

(assert (=> b!3930091 (= lt!1372755 (lemmaAddHeadSuffixToPrefixStillPrefix!613 Nil!41731 lt!1372223))))

(assert (=> b!3930091 (= lt!1372779 (++!10788 Nil!41731 (Cons!41731 (head!8342 lt!1372223) Nil!41731)))))

(declare-fun lt!1372757 () Unit!60127)

(assert (=> b!3930091 (= lt!1372757 e!2431324)))

(declare-fun c!682763 () Bool)

(assert (=> b!3930091 (= c!682763 (= (size!31308 Nil!41731) (size!31308 lt!1372223)))))

(declare-fun lt!1372772 () Unit!60127)

(declare-fun lt!1372754 () Unit!60127)

(assert (=> b!3930091 (= lt!1372772 lt!1372754)))

(assert (=> b!3930091 (<= (size!31308 Nil!41731) (size!31308 lt!1372223))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!421 (List!41855 List!41855) Unit!60127)

(assert (=> b!3930091 (= lt!1372754 (lemmaIsPrefixThenSmallerEqSize!421 Nil!41731 lt!1372223))))

(assert (=> b!3930091 (= e!2431327 e!2431322)))

(assert (= (and d!1164877 c!682764) b!3930087))

(assert (= (and d!1164877 (not c!682764)) b!3930084))

(assert (= (and b!3930084 c!682765) b!3930090))

(assert (= (and b!3930084 (not c!682765)) b!3930091))

(assert (= (and b!3930090 c!682761) b!3930086))

(assert (= (and b!3930090 (not c!682761)) b!3930093))

(assert (= (and b!3930091 c!682763) b!3930097))

(assert (= (and b!3930091 (not c!682763)) b!3930085))

(assert (= (and b!3930091 c!682766) b!3930094))

(assert (= (and b!3930091 (not c!682766)) b!3930096))

(assert (= (and b!3930094 c!682762) b!3930089))

(assert (= (and b!3930094 (not c!682762)) b!3930095))

(assert (= (or b!3930094 b!3930096) bm!284794))

(assert (= (or b!3930094 b!3930096) bm!284797))

(assert (= (or b!3930094 b!3930096) bm!284796))

(assert (= (or b!3930094 b!3930096) bm!284798))

(assert (= (or b!3930090 b!3930097) bm!284792))

(assert (= (or b!3930090 b!3930091) bm!284795))

(assert (= (or b!3930090 b!3930097) bm!284791))

(assert (= (or b!3930090 b!3930097) bm!284793))

(assert (= (and d!1164877 res!1590222) b!3930088))

(assert (= (and b!3930088 (not res!1590221)) b!3930092))

(declare-fun m!4495425 () Bool)

(assert (=> bm!284796 m!4495425))

(assert (=> bm!284795 m!4494337))

(declare-fun m!4495427 () Bool)

(assert (=> b!3930092 m!4495427))

(assert (=> b!3930092 m!4494901))

(declare-fun m!4495429 () Bool)

(assert (=> b!3930088 m!4495429))

(declare-fun m!4495431 () Bool)

(assert (=> b!3930091 m!4495431))

(declare-fun m!4495433 () Bool)

(assert (=> b!3930091 m!4495433))

(declare-fun m!4495435 () Bool)

(assert (=> b!3930091 m!4495435))

(assert (=> b!3930091 m!4494289))

(declare-fun m!4495437 () Bool)

(assert (=> b!3930091 m!4495437))

(declare-fun m!4495439 () Bool)

(assert (=> b!3930091 m!4495439))

(assert (=> b!3930091 m!4494901))

(assert (=> b!3930091 m!4495431))

(declare-fun m!4495441 () Bool)

(assert (=> b!3930091 m!4495441))

(assert (=> b!3930091 m!4495433))

(declare-fun m!4495443 () Bool)

(assert (=> b!3930091 m!4495443))

(assert (=> b!3930091 m!4494049))

(declare-fun m!4495445 () Bool)

(assert (=> b!3930091 m!4495445))

(assert (=> b!3930091 m!4494599))

(declare-fun m!4495447 () Bool)

(assert (=> b!3930091 m!4495447))

(assert (=> b!3930091 m!4495435))

(declare-fun m!4495449 () Bool)

(assert (=> b!3930091 m!4495449))

(declare-fun m!4495451 () Bool)

(assert (=> bm!284792 m!4495451))

(assert (=> bm!284798 m!4494049))

(declare-fun m!4495453 () Bool)

(assert (=> bm!284798 m!4495453))

(assert (=> bm!284791 m!4494625))

(assert (=> bm!284793 m!4494627))

(declare-fun m!4495455 () Bool)

(assert (=> d!1164877 m!4495455))

(declare-fun m!4495457 () Bool)

(assert (=> d!1164877 m!4495457))

(declare-fun m!4495459 () Bool)

(assert (=> d!1164877 m!4495459))

(assert (=> d!1164877 m!4495435))

(declare-fun m!4495461 () Bool)

(assert (=> d!1164877 m!4495461))

(assert (=> d!1164877 m!4495455))

(declare-fun m!4495463 () Bool)

(assert (=> d!1164877 m!4495463))

(declare-fun m!4495465 () Bool)

(assert (=> d!1164877 m!4495465))

(assert (=> d!1164877 m!4494335))

(assert (=> bm!284794 m!4494599))

(declare-fun m!4495467 () Bool)

(assert (=> b!3930094 m!4495467))

(assert (=> bm!284797 m!4494289))

(assert (=> b!3929663 d!1164877))

(declare-fun d!1164879 () Bool)

(declare-fun lt!1372780 () Int)

(assert (=> d!1164879 (>= lt!1372780 0)))

(declare-fun e!2431330 () Int)

(assert (=> d!1164879 (= lt!1372780 e!2431330)))

(declare-fun c!682767 () Bool)

(assert (=> d!1164879 (= c!682767 (is-Nil!41731 Nil!41731))))

(assert (=> d!1164879 (= (size!31308 Nil!41731) lt!1372780)))

(declare-fun b!3930098 () Bool)

(assert (=> b!3930098 (= e!2431330 0)))

(declare-fun b!3930099 () Bool)

(assert (=> b!3930099 (= e!2431330 (+ 1 (size!31308 (t!325278 Nil!41731))))))

(assert (= (and d!1164879 c!682767) b!3930098))

(assert (= (and d!1164879 (not c!682767)) b!3930099))

(declare-fun m!4495469 () Bool)

(assert (=> b!3930099 m!4495469))

(assert (=> b!3929663 d!1164879))

(assert (=> b!3929663 d!1164635))

(declare-fun d!1164881 () Bool)

(declare-fun lt!1372781 () Int)

(assert (=> d!1164881 (>= lt!1372781 0)))

(declare-fun e!2431331 () Int)

(assert (=> d!1164881 (= lt!1372781 e!2431331)))

(declare-fun c!682768 () Bool)

(assert (=> d!1164881 (= c!682768 (is-Nil!41731 (_2!23638 lt!1372422)))))

(assert (=> d!1164881 (= (size!31308 (_2!23638 lt!1372422)) lt!1372781)))

(declare-fun b!3930100 () Bool)

(assert (=> b!3930100 (= e!2431331 0)))

(declare-fun b!3930101 () Bool)

(assert (=> b!3930101 (= e!2431331 (+ 1 (size!31308 (t!325278 (_2!23638 lt!1372422)))))))

(assert (= (and d!1164881 c!682768) b!3930100))

(assert (= (and d!1164881 (not c!682768)) b!3930101))

(declare-fun m!4495471 () Bool)

(assert (=> b!3930101 m!4495471))

(assert (=> b!3929359 d!1164881))

(assert (=> b!3929359 d!1164639))

(declare-fun d!1164883 () Bool)

(declare-fun c!682771 () Bool)

(assert (=> d!1164883 (= c!682771 (is-Nil!41733 lt!1372512))))

(declare-fun e!2431334 () (Set Token!12168))

(assert (=> d!1164883 (= (content!6282 lt!1372512) e!2431334)))

(declare-fun b!3930106 () Bool)

(assert (=> b!3930106 (= e!2431334 (as set.empty (Set Token!12168)))))

(declare-fun b!3930107 () Bool)

(assert (=> b!3930107 (= e!2431334 (set.union (set.insert (h!47153 lt!1372512) (as set.empty (Set Token!12168))) (content!6282 (t!325280 lt!1372512))))))

(assert (= (and d!1164883 c!682771) b!3930106))

(assert (= (and d!1164883 (not c!682771)) b!3930107))

(declare-fun m!4495473 () Bool)

(assert (=> b!3930107 m!4495473))

(declare-fun m!4495475 () Bool)

(assert (=> b!3930107 m!4495475))

(assert (=> d!1164607 d!1164883))

(declare-fun d!1164885 () Bool)

(declare-fun c!682772 () Bool)

(assert (=> d!1164885 (= c!682772 (is-Nil!41733 lt!1372210))))

(declare-fun e!2431335 () (Set Token!12168))

(assert (=> d!1164885 (= (content!6282 lt!1372210) e!2431335)))

(declare-fun b!3930108 () Bool)

(assert (=> b!3930108 (= e!2431335 (as set.empty (Set Token!12168)))))

(declare-fun b!3930109 () Bool)

(assert (=> b!3930109 (= e!2431335 (set.union (set.insert (h!47153 lt!1372210) (as set.empty (Set Token!12168))) (content!6282 (t!325280 lt!1372210))))))

(assert (= (and d!1164885 c!682772) b!3930108))

(assert (= (and d!1164885 (not c!682772)) b!3930109))

(declare-fun m!4495477 () Bool)

(assert (=> b!3930109 m!4495477))

(assert (=> b!3930109 m!4495313))

(assert (=> d!1164607 d!1164885))

(declare-fun d!1164887 () Bool)

(declare-fun c!682773 () Bool)

(assert (=> d!1164887 (= c!682773 (is-Nil!41733 lt!1372222))))

(declare-fun e!2431336 () (Set Token!12168))

(assert (=> d!1164887 (= (content!6282 lt!1372222) e!2431336)))

(declare-fun b!3930110 () Bool)

(assert (=> b!3930110 (= e!2431336 (as set.empty (Set Token!12168)))))

(declare-fun b!3930111 () Bool)

(assert (=> b!3930111 (= e!2431336 (set.union (set.insert (h!47153 lt!1372222) (as set.empty (Set Token!12168))) (content!6282 (t!325280 lt!1372222))))))

(assert (= (and d!1164887 c!682773) b!3930110))

(assert (= (and d!1164887 (not c!682773)) b!3930111))

(declare-fun m!4495479 () Bool)

(assert (=> b!3930111 m!4495479))

(declare-fun m!4495481 () Bool)

(assert (=> b!3930111 m!4495481))

(assert (=> d!1164607 d!1164887))

(declare-fun d!1164889 () Bool)

(assert (=> d!1164889 (= (head!8342 prefix!426) (h!47151 prefix!426))))

(assert (=> b!3929477 d!1164889))

(declare-fun d!1164891 () Bool)

(assert (=> d!1164891 (= (head!8342 lt!1372223) (h!47151 lt!1372223))))

(assert (=> b!3929477 d!1164891))

(declare-fun d!1164893 () Bool)

(declare-fun c!682774 () Bool)

(assert (=> d!1164893 (= c!682774 (is-Nil!41733 lt!1372514))))

(declare-fun e!2431337 () (Set Token!12168))

(assert (=> d!1164893 (= (content!6282 lt!1372514) e!2431337)))

(declare-fun b!3930112 () Bool)

(assert (=> b!3930112 (= e!2431337 (as set.empty (Set Token!12168)))))

(declare-fun b!3930113 () Bool)

(assert (=> b!3930113 (= e!2431337 (set.union (set.insert (h!47153 lt!1372514) (as set.empty (Set Token!12168))) (content!6282 (t!325280 lt!1372514))))))

(assert (= (and d!1164893 c!682774) b!3930112))

(assert (= (and d!1164893 (not c!682774)) b!3930113))

(declare-fun m!4495483 () Bool)

(assert (=> b!3930113 m!4495483))

(declare-fun m!4495485 () Bool)

(assert (=> b!3930113 m!4495485))

(assert (=> d!1164613 d!1164893))

(assert (=> d!1164613 d!1164885))

(declare-fun d!1164895 () Bool)

(declare-fun c!682775 () Bool)

(assert (=> d!1164895 (= c!682775 (is-Nil!41733 lt!1372216))))

(declare-fun e!2431338 () (Set Token!12168))

(assert (=> d!1164895 (= (content!6282 lt!1372216) e!2431338)))

(declare-fun b!3930114 () Bool)

(assert (=> b!3930114 (= e!2431338 (as set.empty (Set Token!12168)))))

(declare-fun b!3930115 () Bool)

(assert (=> b!3930115 (= e!2431338 (set.union (set.insert (h!47153 lt!1372216) (as set.empty (Set Token!12168))) (content!6282 (t!325280 lt!1372216))))))

(assert (= (and d!1164895 c!682775) b!3930114))

(assert (= (and d!1164895 (not c!682775)) b!3930115))

(declare-fun m!4495487 () Bool)

(assert (=> b!3930115 m!4495487))

(declare-fun m!4495489 () Bool)

(assert (=> b!3930115 m!4495489))

(assert (=> d!1164613 d!1164895))

(declare-fun d!1164897 () Bool)

(declare-fun charsToInt!0 (List!41856) (_ BitVec 32))

(assert (=> d!1164897 (= (inv!16 (value!206313 (h!47153 suffixTokens!72))) (= (charsToInt!0 (text!47662 (value!206313 (h!47153 suffixTokens!72)))) (value!206305 (value!206313 (h!47153 suffixTokens!72)))))))

(declare-fun bs!586145 () Bool)

(assert (= bs!586145 d!1164897))

(declare-fun m!4495491 () Bool)

(assert (=> bs!586145 m!4495491))

(assert (=> b!3929423 d!1164897))

(declare-fun d!1164899 () Bool)

(declare-fun charsToBigInt!1 (List!41856) Int)

(assert (=> d!1164899 (= (inv!17 (value!206313 (h!47153 prefixTokens!80))) (= (charsToBigInt!1 (text!47663 (value!206313 (h!47153 prefixTokens!80)))) (value!206306 (value!206313 (h!47153 prefixTokens!80)))))))

(declare-fun bs!586146 () Bool)

(assert (= bs!586146 d!1164899))

(declare-fun m!4495493 () Bool)

(assert (=> bs!586146 m!4495493))

(assert (=> b!3929457 d!1164899))

(declare-fun d!1164901 () Bool)

(declare-fun c!682778 () Bool)

(assert (=> d!1164901 (= c!682778 (is-Nil!41731 lt!1372516))))

(declare-fun e!2431341 () (Set C!23026))

(assert (=> d!1164901 (= (content!6281 lt!1372516) e!2431341)))

(declare-fun b!3930120 () Bool)

(assert (=> b!3930120 (= e!2431341 (as set.empty (Set C!23026)))))

(declare-fun b!3930121 () Bool)

(assert (=> b!3930121 (= e!2431341 (set.union (set.insert (h!47151 lt!1372516) (as set.empty (Set C!23026))) (content!6281 (t!325278 lt!1372516))))))

(assert (= (and d!1164901 c!682778) b!3930120))

(assert (= (and d!1164901 (not c!682778)) b!3930121))

(declare-fun m!4495495 () Bool)

(assert (=> b!3930121 m!4495495))

(declare-fun m!4495497 () Bool)

(assert (=> b!3930121 m!4495497))

(assert (=> d!1164617 d!1164901))

(declare-fun d!1164903 () Bool)

(declare-fun c!682779 () Bool)

(assert (=> d!1164903 (= c!682779 (is-Nil!41731 lt!1372187))))

(declare-fun e!2431342 () (Set C!23026))

(assert (=> d!1164903 (= (content!6281 lt!1372187) e!2431342)))

(declare-fun b!3930122 () Bool)

(assert (=> b!3930122 (= e!2431342 (as set.empty (Set C!23026)))))

(declare-fun b!3930123 () Bool)

(assert (=> b!3930123 (= e!2431342 (set.union (set.insert (h!47151 lt!1372187) (as set.empty (Set C!23026))) (content!6281 (t!325278 lt!1372187))))))

(assert (= (and d!1164903 c!682779) b!3930122))

(assert (= (and d!1164903 (not c!682779)) b!3930123))

(declare-fun m!4495499 () Bool)

(assert (=> b!3930123 m!4495499))

(assert (=> b!3930123 m!4495335))

(assert (=> d!1164617 d!1164903))

(declare-fun d!1164905 () Bool)

(declare-fun c!682780 () Bool)

(assert (=> d!1164905 (= c!682780 (is-Nil!41731 suffix!1176))))

(declare-fun e!2431343 () (Set C!23026))

(assert (=> d!1164905 (= (content!6281 suffix!1176) e!2431343)))

(declare-fun b!3930124 () Bool)

(assert (=> b!3930124 (= e!2431343 (as set.empty (Set C!23026)))))

(declare-fun b!3930125 () Bool)

(assert (=> b!3930125 (= e!2431343 (set.union (set.insert (h!47151 suffix!1176) (as set.empty (Set C!23026))) (content!6281 (t!325278 suffix!1176))))))

(assert (= (and d!1164905 c!682780) b!3930124))

(assert (= (and d!1164905 (not c!682780)) b!3930125))

(declare-fun m!4495501 () Bool)

(assert (=> b!3930125 m!4495501))

(declare-fun m!4495503 () Bool)

(assert (=> b!3930125 m!4495503))

(assert (=> d!1164617 d!1164905))

(declare-fun bs!586147 () Bool)

(declare-fun d!1164907 () Bool)

(assert (= bs!586147 (and d!1164907 d!1164857)))

(declare-fun lambda!126565 () Int)

(assert (=> bs!586147 (= lambda!126565 lambda!126562)))

(assert (=> d!1164907 true))

(declare-fun lt!1372784 () Bool)

(assert (=> d!1164907 (= lt!1372784 (rulesValidInductive!2347 thiss!20629 rules!2768))))

(assert (=> d!1164907 (= lt!1372784 (forall!8313 rules!2768 lambda!126565))))

(assert (=> d!1164907 (= (rulesValid!2532 thiss!20629 rules!2768) lt!1372784)))

(declare-fun bs!586148 () Bool)

(assert (= bs!586148 d!1164907))

(assert (=> bs!586148 m!4494629))

(declare-fun m!4495505 () Bool)

(assert (=> bs!586148 m!4495505))

(assert (=> d!1164511 d!1164907))

(declare-fun d!1164909 () Bool)

(declare-fun lt!1372785 () Int)

(assert (=> d!1164909 (>= lt!1372785 0)))

(declare-fun e!2431344 () Int)

(assert (=> d!1164909 (= lt!1372785 e!2431344)))

(declare-fun c!682781 () Bool)

(assert (=> d!1164909 (= c!682781 (is-Nil!41731 lt!1372212))))

(assert (=> d!1164909 (= (size!31308 lt!1372212) lt!1372785)))

(declare-fun b!3930126 () Bool)

(assert (=> b!3930126 (= e!2431344 0)))

(declare-fun b!3930127 () Bool)

(assert (=> b!3930127 (= e!2431344 (+ 1 (size!31308 (t!325278 lt!1372212))))))

(assert (= (and d!1164909 c!682781) b!3930126))

(assert (= (and d!1164909 (not c!682781)) b!3930127))

(declare-fun m!4495507 () Bool)

(assert (=> b!3930127 m!4495507))

(assert (=> b!3929442 d!1164909))

(assert (=> b!3929442 d!1164477))

(declare-fun d!1164911 () Bool)

(declare-fun lt!1372786 () Int)

(assert (=> d!1164911 (>= lt!1372786 0)))

(declare-fun e!2431345 () Int)

(assert (=> d!1164911 (= lt!1372786 e!2431345)))

(declare-fun c!682782 () Bool)

(assert (=> d!1164911 (= c!682782 (is-Nil!41731 (originalCharacters!7115 (h!47153 prefixTokens!80))))))

(assert (=> d!1164911 (= (size!31308 (originalCharacters!7115 (h!47153 prefixTokens!80))) lt!1372786)))

(declare-fun b!3930128 () Bool)

(assert (=> b!3930128 (= e!2431345 0)))

(declare-fun b!3930129 () Bool)

(assert (=> b!3930129 (= e!2431345 (+ 1 (size!31308 (t!325278 (originalCharacters!7115 (h!47153 prefixTokens!80))))))))

(assert (= (and d!1164911 c!682782) b!3930128))

(assert (= (and d!1164911 (not c!682782)) b!3930129))

(declare-fun m!4495509 () Bool)

(assert (=> b!3930129 m!4495509))

(assert (=> b!3929455 d!1164911))

(declare-fun bs!586149 () Bool)

(declare-fun d!1164913 () Bool)

(assert (= bs!586149 (and d!1164913 d!1164801)))

(declare-fun lambda!126566 () Int)

(assert (=> bs!586149 (= (and (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) (toChars!8826 (transformation!6515 (h!47154 rules!2768)))) (= (toValue!8967 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) (toValue!8967 (transformation!6515 (h!47154 rules!2768))))) (= lambda!126566 lambda!126556))))

(assert (=> d!1164913 true))

(assert (=> d!1164913 (< (dynLambda!17879 order!22287 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72))))) (dynLambda!17880 order!22289 lambda!126566))))

(assert (=> d!1164913 true))

(assert (=> d!1164913 (< (dynLambda!17881 order!22291 (toValue!8967 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72))))) (dynLambda!17880 order!22289 lambda!126566))))

(assert (=> d!1164913 (= (semiInverseModEq!2798 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) (toValue!8967 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72))))) (Forall!1449 lambda!126566))))

(declare-fun bs!586150 () Bool)

(assert (= bs!586150 d!1164913))

(declare-fun m!4495511 () Bool)

(assert (=> bs!586150 m!4495511))

(assert (=> d!1164567 d!1164913))

(declare-fun b!3930130 () Bool)

(declare-fun e!2431347 () List!41855)

(assert (=> b!3930130 (= e!2431347 suffix!1176)))

(declare-fun b!3930132 () Bool)

(declare-fun res!1590223 () Bool)

(declare-fun e!2431346 () Bool)

(assert (=> b!3930132 (=> (not res!1590223) (not e!2431346))))

(declare-fun lt!1372787 () List!41855)

(assert (=> b!3930132 (= res!1590223 (= (size!31308 lt!1372787) (+ (size!31308 (t!325278 lt!1372193)) (size!31308 suffix!1176))))))

(declare-fun b!3930133 () Bool)

(assert (=> b!3930133 (= e!2431346 (or (not (= suffix!1176 Nil!41731)) (= lt!1372787 (t!325278 lt!1372193))))))

(declare-fun b!3930131 () Bool)

(assert (=> b!3930131 (= e!2431347 (Cons!41731 (h!47151 (t!325278 lt!1372193)) (++!10788 (t!325278 (t!325278 lt!1372193)) suffix!1176)))))

(declare-fun d!1164915 () Bool)

(assert (=> d!1164915 e!2431346))

(declare-fun res!1590224 () Bool)

(assert (=> d!1164915 (=> (not res!1590224) (not e!2431346))))

(assert (=> d!1164915 (= res!1590224 (= (content!6281 lt!1372787) (set.union (content!6281 (t!325278 lt!1372193)) (content!6281 suffix!1176))))))

(assert (=> d!1164915 (= lt!1372787 e!2431347)))

(declare-fun c!682783 () Bool)

(assert (=> d!1164915 (= c!682783 (is-Nil!41731 (t!325278 lt!1372193)))))

(assert (=> d!1164915 (= (++!10788 (t!325278 lt!1372193) suffix!1176) lt!1372787)))

(assert (= (and d!1164915 c!682783) b!3930130))

(assert (= (and d!1164915 (not c!682783)) b!3930131))

(assert (= (and d!1164915 res!1590224) b!3930132))

(assert (= (and b!3930132 res!1590223) b!3930133))

(declare-fun m!4495513 () Bool)

(assert (=> b!3930132 m!4495513))

(declare-fun m!4495515 () Bool)

(assert (=> b!3930132 m!4495515))

(assert (=> b!3930132 m!4493967))

(declare-fun m!4495517 () Bool)

(assert (=> b!3930131 m!4495517))

(declare-fun m!4495519 () Bool)

(assert (=> d!1164915 m!4495519))

(declare-fun m!4495521 () Bool)

(assert (=> d!1164915 m!4495521))

(assert (=> d!1164915 m!4494419))

(assert (=> b!3929378 d!1164915))

(declare-fun d!1164917 () Bool)

(declare-fun lt!1372788 () Int)

(assert (=> d!1164917 (>= lt!1372788 0)))

(declare-fun e!2431348 () Int)

(assert (=> d!1164917 (= lt!1372788 e!2431348)))

(declare-fun c!682784 () Bool)

(assert (=> d!1164917 (= c!682784 (is-Nil!41731 lt!1372227))))

(assert (=> d!1164917 (= (size!31308 lt!1372227) lt!1372788)))

(declare-fun b!3930134 () Bool)

(assert (=> b!3930134 (= e!2431348 0)))

(declare-fun b!3930135 () Bool)

(assert (=> b!3930135 (= e!2431348 (+ 1 (size!31308 (t!325278 lt!1372227))))))

(assert (= (and d!1164917 c!682784) b!3930134))

(assert (= (and d!1164917 (not c!682784)) b!3930135))

(declare-fun m!4495523 () Bool)

(assert (=> b!3930135 m!4495523))

(assert (=> b!3929555 d!1164917))

(declare-fun d!1164919 () Bool)

(declare-fun lt!1372789 () Int)

(assert (=> d!1164919 (>= lt!1372789 0)))

(declare-fun e!2431349 () Int)

(assert (=> d!1164919 (= lt!1372789 e!2431349)))

(declare-fun c!682785 () Bool)

(assert (=> d!1164919 (= c!682785 (is-Nil!41731 lt!1372187))))

(assert (=> d!1164919 (= (size!31308 lt!1372187) lt!1372789)))

(declare-fun b!3930136 () Bool)

(assert (=> b!3930136 (= e!2431349 0)))

(declare-fun b!3930137 () Bool)

(assert (=> b!3930137 (= e!2431349 (+ 1 (size!31308 (t!325278 lt!1372187))))))

(assert (= (and d!1164919 c!682785) b!3930136))

(assert (= (and d!1164919 (not c!682785)) b!3930137))

(assert (=> b!3930137 m!4495329))

(assert (=> b!3929555 d!1164919))

(assert (=> b!3929520 d!1164825))

(declare-fun d!1164921 () Bool)

(assert (=> d!1164921 (= (apply!9754 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372501)))) (seqFromList!4782 (originalCharacters!7115 (_1!23637 (get!13793 lt!1372501))))) (dynLambda!17876 (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372501))))) (seqFromList!4782 (originalCharacters!7115 (_1!23637 (get!13793 lt!1372501))))))))

(declare-fun b_lambda!114969 () Bool)

(assert (=> (not b_lambda!114969) (not d!1164921)))

(declare-fun t!325397 () Bool)

(declare-fun tb!234809 () Bool)

(assert (=> (and b!3929105 (= (toValue!8967 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372501)))))) t!325397) tb!234809))

(declare-fun result!284554 () Bool)

(assert (=> tb!234809 (= result!284554 (inv!21 (dynLambda!17876 (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372501))))) (seqFromList!4782 (originalCharacters!7115 (_1!23637 (get!13793 lt!1372501)))))))))

(declare-fun m!4495525 () Bool)

(assert (=> tb!234809 m!4495525))

(assert (=> d!1164921 t!325397))

(declare-fun b_and!299831 () Bool)

(assert (= b_and!299757 (and (=> t!325397 result!284554) b_and!299831)))

(declare-fun t!325399 () Bool)

(declare-fun tb!234811 () Bool)

(assert (=> (and b!3929093 (= (toValue!8967 (transformation!6515 (h!47154 rules!2768))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372501)))))) t!325399) tb!234811))

(declare-fun result!284556 () Bool)

(assert (= result!284556 result!284554))

(assert (=> d!1164921 t!325399))

(declare-fun b_and!299833 () Bool)

(assert (= b_and!299753 (and (=> t!325399 result!284556) b_and!299833)))

(declare-fun t!325401 () Bool)

(declare-fun tb!234813 () Bool)

(assert (=> (and b!3929724 (= (toValue!8967 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72))))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372501)))))) t!325401) tb!234813))

(declare-fun result!284558 () Bool)

(assert (= result!284558 result!284554))

(assert (=> d!1164921 t!325401))

(declare-fun b_and!299835 () Bool)

(assert (= b_and!299797 (and (=> t!325401 result!284558) b_and!299835)))

(declare-fun t!325403 () Bool)

(declare-fun tb!234815 () Bool)

(assert (=> (and b!3929693 (= (toValue!8967 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80))))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372501)))))) t!325403) tb!234815))

(declare-fun result!284560 () Bool)

(assert (= result!284560 result!284554))

(assert (=> d!1164921 t!325403))

(declare-fun b_and!299837 () Bool)

(assert (= b_and!299793 (and (=> t!325403 result!284560) b_and!299837)))

(declare-fun t!325405 () Bool)

(declare-fun tb!234817 () Bool)

(assert (=> (and b!3929679 (= (toValue!8967 (transformation!6515 (h!47154 (t!325281 rules!2768)))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372501)))))) t!325405) tb!234817))

(declare-fun result!284562 () Bool)

(assert (= result!284562 result!284554))

(assert (=> d!1164921 t!325405))

(declare-fun b_and!299839 () Bool)

(assert (= b_and!299789 (and (=> t!325405 result!284562) b_and!299839)))

(declare-fun tb!234819 () Bool)

(declare-fun t!325407 () Bool)

(assert (=> (and b!3929087 (= (toValue!8967 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372501)))))) t!325407) tb!234819))

(declare-fun result!284564 () Bool)

(assert (= result!284564 result!284554))

(assert (=> d!1164921 t!325407))

(declare-fun b_and!299841 () Bool)

(assert (= b_and!299755 (and (=> t!325407 result!284564) b_and!299841)))

(assert (=> d!1164921 m!4494643))

(declare-fun m!4495527 () Bool)

(assert (=> d!1164921 m!4495527))

(assert (=> b!3929520 d!1164921))

(declare-fun d!1164923 () Bool)

(assert (=> d!1164923 (= (seqFromList!4782 (originalCharacters!7115 (_1!23637 (get!13793 lt!1372501)))) (fromListB!2207 (originalCharacters!7115 (_1!23637 (get!13793 lt!1372501)))))))

(declare-fun bs!586151 () Bool)

(assert (= bs!586151 d!1164923))

(declare-fun m!4495529 () Bool)

(assert (=> bs!586151 m!4495529))

(assert (=> b!3929520 d!1164923))

(declare-fun d!1164925 () Bool)

(assert (=> d!1164925 (and (= lt!1372190 lt!1372190) (= (_2!23637 (v!39260 lt!1372235)) (_2!23637 lt!1372230)))))

(assert (=> d!1164925 true))

(declare-fun _$50!367 () Unit!60127)

(assert (=> d!1164925 (= (choose!23353 lt!1372190 (_2!23637 (v!39260 lt!1372235)) lt!1372190 (_2!23637 lt!1372230)) _$50!367)))

(assert (=> d!1164519 d!1164925))

(assert (=> d!1164519 d!1164485))

(declare-fun b!3930138 () Bool)

(declare-fun e!2431352 () List!41855)

(assert (=> b!3930138 (= e!2431352 (_2!23637 lt!1372230))))

(declare-fun b!3930140 () Bool)

(declare-fun res!1590225 () Bool)

(declare-fun e!2431351 () Bool)

(assert (=> b!3930140 (=> (not res!1590225) (not e!2431351))))

(declare-fun lt!1372790 () List!41855)

(assert (=> b!3930140 (= res!1590225 (= (size!31308 lt!1372790) (+ (size!31308 lt!1372190) (size!31308 (_2!23637 lt!1372230)))))))

(declare-fun b!3930141 () Bool)

(assert (=> b!3930141 (= e!2431351 (or (not (= (_2!23637 lt!1372230) Nil!41731)) (= lt!1372790 lt!1372190)))))

(declare-fun b!3930139 () Bool)

(assert (=> b!3930139 (= e!2431352 (Cons!41731 (h!47151 lt!1372190) (++!10788 (t!325278 lt!1372190) (_2!23637 lt!1372230))))))

(declare-fun d!1164927 () Bool)

(assert (=> d!1164927 e!2431351))

(declare-fun res!1590226 () Bool)

(assert (=> d!1164927 (=> (not res!1590226) (not e!2431351))))

(assert (=> d!1164927 (= res!1590226 (= (content!6281 lt!1372790) (set.union (content!6281 lt!1372190) (content!6281 (_2!23637 lt!1372230)))))))

(assert (=> d!1164927 (= lt!1372790 e!2431352)))

(declare-fun c!682786 () Bool)

(assert (=> d!1164927 (= c!682786 (is-Nil!41731 lt!1372190))))

(assert (=> d!1164927 (= (++!10788 lt!1372190 (_2!23637 lt!1372230)) lt!1372790)))

(assert (= (and d!1164927 c!682786) b!3930138))

(assert (= (and d!1164927 (not c!682786)) b!3930139))

(assert (= (and d!1164927 res!1590226) b!3930140))

(assert (= (and b!3930140 res!1590225) b!3930141))

(declare-fun m!4495531 () Bool)

(assert (=> b!3930140 m!4495531))

(assert (=> b!3930140 m!4494105))

(assert (=> b!3930140 m!4494051))

(declare-fun m!4495533 () Bool)

(assert (=> b!3930139 m!4495533))

(declare-fun m!4495535 () Bool)

(assert (=> d!1164927 m!4495535))

(assert (=> d!1164927 m!4494331))

(declare-fun m!4495537 () Bool)

(assert (=> d!1164927 m!4495537))

(assert (=> d!1164519 d!1164927))

(declare-fun d!1164929 () Bool)

(declare-fun c!682787 () Bool)

(assert (=> d!1164929 (= c!682787 (is-Nil!41731 lt!1372431))))

(declare-fun e!2431353 () (Set C!23026))

(assert (=> d!1164929 (= (content!6281 lt!1372431) e!2431353)))

(declare-fun b!3930142 () Bool)

(assert (=> b!3930142 (= e!2431353 (as set.empty (Set C!23026)))))

(declare-fun b!3930143 () Bool)

(assert (=> b!3930143 (= e!2431353 (set.union (set.insert (h!47151 lt!1372431) (as set.empty (Set C!23026))) (content!6281 (t!325278 lt!1372431))))))

(assert (= (and d!1164929 c!682787) b!3930142))

(assert (= (and d!1164929 (not c!682787)) b!3930143))

(declare-fun m!4495539 () Bool)

(assert (=> b!3930143 m!4495539))

(declare-fun m!4495541 () Bool)

(assert (=> b!3930143 m!4495541))

(assert (=> d!1164515 d!1164929))

(declare-fun d!1164931 () Bool)

(declare-fun c!682788 () Bool)

(assert (=> d!1164931 (= c!682788 (is-Nil!41731 lt!1372193))))

(declare-fun e!2431354 () (Set C!23026))

(assert (=> d!1164931 (= (content!6281 lt!1372193) e!2431354)))

(declare-fun b!3930144 () Bool)

(assert (=> b!3930144 (= e!2431354 (as set.empty (Set C!23026)))))

(declare-fun b!3930145 () Bool)

(assert (=> b!3930145 (= e!2431354 (set.union (set.insert (h!47151 lt!1372193) (as set.empty (Set C!23026))) (content!6281 (t!325278 lt!1372193))))))

(assert (= (and d!1164931 c!682788) b!3930144))

(assert (= (and d!1164931 (not c!682788)) b!3930145))

(declare-fun m!4495543 () Bool)

(assert (=> b!3930145 m!4495543))

(assert (=> b!3930145 m!4495521))

(assert (=> d!1164515 d!1164931))

(assert (=> d!1164515 d!1164905))

(declare-fun d!1164933 () Bool)

(declare-fun lt!1372791 () Int)

(assert (=> d!1164933 (>= lt!1372791 0)))

(declare-fun e!2431355 () Int)

(assert (=> d!1164933 (= lt!1372791 e!2431355)))

(declare-fun c!682789 () Bool)

(assert (=> d!1164933 (= c!682789 (is-Nil!41731 lt!1372516))))

(assert (=> d!1164933 (= (size!31308 lt!1372516) lt!1372791)))

(declare-fun b!3930146 () Bool)

(assert (=> b!3930146 (= e!2431355 0)))

(declare-fun b!3930147 () Bool)

(assert (=> b!3930147 (= e!2431355 (+ 1 (size!31308 (t!325278 lt!1372516))))))

(assert (= (and d!1164933 c!682789) b!3930146))

(assert (= (and d!1164933 (not c!682789)) b!3930147))

(declare-fun m!4495545 () Bool)

(assert (=> b!3930147 m!4495545))

(assert (=> b!3929546 d!1164933))

(assert (=> b!3929546 d!1164919))

(assert (=> b!3929546 d!1164581))

(declare-fun b!3930148 () Bool)

(declare-fun e!2431357 () List!41855)

(assert (=> b!3930148 (= e!2431357 lt!1372227)))

(declare-fun b!3930150 () Bool)

(declare-fun res!1590227 () Bool)

(declare-fun e!2431356 () Bool)

(assert (=> b!3930150 (=> (not res!1590227) (not e!2431356))))

(declare-fun lt!1372792 () List!41855)

(assert (=> b!3930150 (= res!1590227 (= (size!31308 lt!1372792) (+ (size!31308 (t!325278 lt!1372190)) (size!31308 lt!1372227))))))

(declare-fun b!3930151 () Bool)

(assert (=> b!3930151 (= e!2431356 (or (not (= lt!1372227 Nil!41731)) (= lt!1372792 (t!325278 lt!1372190))))))

(declare-fun b!3930149 () Bool)

(assert (=> b!3930149 (= e!2431357 (Cons!41731 (h!47151 (t!325278 lt!1372190)) (++!10788 (t!325278 (t!325278 lt!1372190)) lt!1372227)))))

(declare-fun d!1164935 () Bool)

(assert (=> d!1164935 e!2431356))

(declare-fun res!1590228 () Bool)

(assert (=> d!1164935 (=> (not res!1590228) (not e!2431356))))

(assert (=> d!1164935 (= res!1590228 (= (content!6281 lt!1372792) (set.union (content!6281 (t!325278 lt!1372190)) (content!6281 lt!1372227))))))

(assert (=> d!1164935 (= lt!1372792 e!2431357)))

(declare-fun c!682790 () Bool)

(assert (=> d!1164935 (= c!682790 (is-Nil!41731 (t!325278 lt!1372190)))))

(assert (=> d!1164935 (= (++!10788 (t!325278 lt!1372190) lt!1372227) lt!1372792)))

(assert (= (and d!1164935 c!682790) b!3930148))

(assert (= (and d!1164935 (not c!682790)) b!3930149))

(assert (= (and d!1164935 res!1590228) b!3930150))

(assert (= (and b!3930150 res!1590227) b!3930151))

(declare-fun m!4495547 () Bool)

(assert (=> b!3930150 m!4495547))

(assert (=> b!3930150 m!4494301))

(assert (=> b!3930150 m!4494579))

(declare-fun m!4495549 () Bool)

(assert (=> b!3930149 m!4495549))

(declare-fun m!4495551 () Bool)

(assert (=> d!1164935 m!4495551))

(declare-fun m!4495553 () Bool)

(assert (=> d!1164935 m!4495553))

(assert (=> d!1164935 m!4494699))

(assert (=> b!3929541 d!1164935))

(declare-fun d!1164937 () Bool)

(declare-fun lt!1372793 () Int)

(assert (=> d!1164937 (>= lt!1372793 0)))

(declare-fun e!2431358 () Int)

(assert (=> d!1164937 (= lt!1372793 e!2431358)))

(declare-fun c!682791 () Bool)

(assert (=> d!1164937 (= c!682791 (is-Nil!41733 lt!1372514))))

(assert (=> d!1164937 (= (size!31311 lt!1372514) lt!1372793)))

(declare-fun b!3930152 () Bool)

(assert (=> b!3930152 (= e!2431358 0)))

(declare-fun b!3930153 () Bool)

(assert (=> b!3930153 (= e!2431358 (+ 1 (size!31311 (t!325280 lt!1372514))))))

(assert (= (and d!1164937 c!682791) b!3930152))

(assert (= (and d!1164937 (not c!682791)) b!3930153))

(declare-fun m!4495555 () Bool)

(assert (=> b!3930153 m!4495555))

(assert (=> b!3929538 d!1164937))

(declare-fun d!1164939 () Bool)

(declare-fun lt!1372794 () Int)

(assert (=> d!1164939 (>= lt!1372794 0)))

(declare-fun e!2431359 () Int)

(assert (=> d!1164939 (= lt!1372794 e!2431359)))

(declare-fun c!682792 () Bool)

(assert (=> d!1164939 (= c!682792 (is-Nil!41733 lt!1372210))))

(assert (=> d!1164939 (= (size!31311 lt!1372210) lt!1372794)))

(declare-fun b!3930154 () Bool)

(assert (=> b!3930154 (= e!2431359 0)))

(declare-fun b!3930155 () Bool)

(assert (=> b!3930155 (= e!2431359 (+ 1 (size!31311 (t!325280 lt!1372210))))))

(assert (= (and d!1164939 c!682792) b!3930154))

(assert (= (and d!1164939 (not c!682792)) b!3930155))

(assert (=> b!3930155 m!4495309))

(assert (=> b!3929538 d!1164939))

(declare-fun d!1164941 () Bool)

(declare-fun lt!1372795 () Int)

(assert (=> d!1164941 (>= lt!1372795 0)))

(declare-fun e!2431360 () Int)

(assert (=> d!1164941 (= lt!1372795 e!2431360)))

(declare-fun c!682793 () Bool)

(assert (=> d!1164941 (= c!682793 (is-Nil!41733 lt!1372216))))

(assert (=> d!1164941 (= (size!31311 lt!1372216) lt!1372795)))

(declare-fun b!3930156 () Bool)

(assert (=> b!3930156 (= e!2431360 0)))

(declare-fun b!3930157 () Bool)

(assert (=> b!3930157 (= e!2431360 (+ 1 (size!31311 (t!325280 lt!1372216))))))

(assert (= (and d!1164941 c!682793) b!3930156))

(assert (= (and d!1164941 (not c!682793)) b!3930157))

(declare-fun m!4495557 () Bool)

(assert (=> b!3930157 m!4495557))

(assert (=> b!3929538 d!1164941))

(declare-fun b!3930159 () Bool)

(declare-fun e!2431362 () tuple2!41008)

(assert (=> b!3930159 (= e!2431362 (tuple2!41009 Nil!41733 (_2!23637 (v!39260 lt!1372467))))))

(declare-fun b!3930160 () Bool)

(declare-fun e!2431363 () Bool)

(declare-fun e!2431361 () Bool)

(assert (=> b!3930160 (= e!2431363 e!2431361)))

(declare-fun res!1590229 () Bool)

(declare-fun lt!1372796 () tuple2!41008)

(assert (=> b!3930160 (= res!1590229 (< (size!31308 (_2!23638 lt!1372796)) (size!31308 (_2!23637 (v!39260 lt!1372467)))))))

(assert (=> b!3930160 (=> (not res!1590229) (not e!2431361))))

(declare-fun b!3930161 () Bool)

(assert (=> b!3930161 (= e!2431363 (= (_2!23638 lt!1372796) (_2!23637 (v!39260 lt!1372467))))))

(declare-fun b!3930162 () Bool)

(assert (=> b!3930162 (= e!2431361 (not (isEmpty!24877 (_1!23638 lt!1372796))))))

(declare-fun b!3930158 () Bool)

(declare-fun lt!1372797 () Option!8935)

(declare-fun lt!1372798 () tuple2!41008)

(assert (=> b!3930158 (= e!2431362 (tuple2!41009 (Cons!41733 (_1!23637 (v!39260 lt!1372797)) (_1!23638 lt!1372798)) (_2!23638 lt!1372798)))))

(assert (=> b!3930158 (= lt!1372798 (lexList!1872 thiss!20629 rules!2768 (_2!23637 (v!39260 lt!1372797))))))

(declare-fun d!1164943 () Bool)

(assert (=> d!1164943 e!2431363))

(declare-fun c!682795 () Bool)

(assert (=> d!1164943 (= c!682795 (> (size!31311 (_1!23638 lt!1372796)) 0))))

(assert (=> d!1164943 (= lt!1372796 e!2431362)))

(declare-fun c!682794 () Bool)

(assert (=> d!1164943 (= c!682794 (is-Some!8934 lt!1372797))))

(assert (=> d!1164943 (= lt!1372797 (maxPrefix!3408 thiss!20629 rules!2768 (_2!23637 (v!39260 lt!1372467))))))

(assert (=> d!1164943 (= (lexList!1872 thiss!20629 rules!2768 (_2!23637 (v!39260 lt!1372467))) lt!1372796)))

(assert (= (and d!1164943 c!682794) b!3930158))

(assert (= (and d!1164943 (not c!682794)) b!3930159))

(assert (= (and d!1164943 c!682795) b!3930160))

(assert (= (and d!1164943 (not c!682795)) b!3930161))

(assert (= (and b!3930160 res!1590229) b!3930162))

(declare-fun m!4495559 () Bool)

(assert (=> b!3930160 m!4495559))

(declare-fun m!4495561 () Bool)

(assert (=> b!3930160 m!4495561))

(declare-fun m!4495563 () Bool)

(assert (=> b!3930162 m!4495563))

(declare-fun m!4495565 () Bool)

(assert (=> b!3930158 m!4495565))

(declare-fun m!4495567 () Bool)

(assert (=> d!1164943 m!4495567))

(declare-fun m!4495569 () Bool)

(assert (=> d!1164943 m!4495569))

(assert (=> b!3929467 d!1164943))

(declare-fun bs!586152 () Bool)

(declare-fun d!1164945 () Bool)

(assert (= bs!586152 (and d!1164945 d!1164813)))

(declare-fun lambda!126567 () Int)

(assert (=> bs!586152 (= (= (toValue!8967 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (toValue!8967 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72))))) (= lambda!126567 lambda!126559))))

(assert (=> d!1164945 true))

(assert (=> d!1164945 (< (dynLambda!17881 order!22291 (toValue!8967 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80))))) (dynLambda!17882 order!22293 lambda!126567))))

(assert (=> d!1164945 (= (equivClasses!2697 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (toValue!8967 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80))))) (Forall2!1047 lambda!126567))))

(declare-fun bs!586153 () Bool)

(assert (= bs!586153 d!1164945))

(declare-fun m!4495571 () Bool)

(assert (=> bs!586153 m!4495571))

(assert (=> b!3929466 d!1164945))

(declare-fun b!3930163 () Bool)

(declare-fun e!2431365 () List!41855)

(assert (=> b!3930163 (= e!2431365 (_2!23637 (get!13793 lt!1372501)))))

(declare-fun b!3930165 () Bool)

(declare-fun res!1590230 () Bool)

(declare-fun e!2431364 () Bool)

(assert (=> b!3930165 (=> (not res!1590230) (not e!2431364))))

(declare-fun lt!1372799 () List!41855)

(assert (=> b!3930165 (= res!1590230 (= (size!31308 lt!1372799) (+ (size!31308 (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372501))))) (size!31308 (_2!23637 (get!13793 lt!1372501))))))))

(declare-fun b!3930166 () Bool)

(assert (=> b!3930166 (= e!2431364 (or (not (= (_2!23637 (get!13793 lt!1372501)) Nil!41731)) (= lt!1372799 (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372501)))))))))

(declare-fun b!3930164 () Bool)

(assert (=> b!3930164 (= e!2431365 (Cons!41731 (h!47151 (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372501))))) (++!10788 (t!325278 (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372501))))) (_2!23637 (get!13793 lt!1372501)))))))

(declare-fun d!1164947 () Bool)

(assert (=> d!1164947 e!2431364))

(declare-fun res!1590231 () Bool)

(assert (=> d!1164947 (=> (not res!1590231) (not e!2431364))))

(assert (=> d!1164947 (= res!1590231 (= (content!6281 lt!1372799) (set.union (content!6281 (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372501))))) (content!6281 (_2!23637 (get!13793 lt!1372501))))))))

(assert (=> d!1164947 (= lt!1372799 e!2431365)))

(declare-fun c!682796 () Bool)

(assert (=> d!1164947 (= c!682796 (is-Nil!41731 (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372501))))))))

(assert (=> d!1164947 (= (++!10788 (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372501)))) (_2!23637 (get!13793 lt!1372501))) lt!1372799)))

(assert (= (and d!1164947 c!682796) b!3930163))

(assert (= (and d!1164947 (not c!682796)) b!3930164))

(assert (= (and d!1164947 res!1590231) b!3930165))

(assert (= (and b!3930165 res!1590230) b!3930166))

(declare-fun m!4495573 () Bool)

(assert (=> b!3930165 m!4495573))

(assert (=> b!3930165 m!4494635))

(declare-fun m!4495575 () Bool)

(assert (=> b!3930165 m!4495575))

(assert (=> b!3930165 m!4494649))

(declare-fun m!4495577 () Bool)

(assert (=> b!3930164 m!4495577))

(declare-fun m!4495579 () Bool)

(assert (=> d!1164947 m!4495579))

(assert (=> d!1164947 m!4494635))

(declare-fun m!4495581 () Bool)

(assert (=> d!1164947 m!4495581))

(declare-fun m!4495583 () Bool)

(assert (=> d!1164947 m!4495583))

(assert (=> b!3929513 d!1164947))

(assert (=> b!3929513 d!1164821))

(assert (=> b!3929513 d!1164823))

(assert (=> b!3929513 d!1164825))

(declare-fun d!1164949 () Bool)

(assert (=> d!1164949 (= (isEmpty!24877 (_1!23638 lt!1372466)) (is-Nil!41733 (_1!23638 lt!1372466)))))

(assert (=> b!3929471 d!1164949))

(declare-fun b!3930167 () Bool)

(declare-fun res!1590233 () Bool)

(declare-fun e!2431367 () Bool)

(assert (=> b!3930167 (=> (not res!1590233) (not e!2431367))))

(declare-fun lt!1372802 () Option!8935)

(assert (=> b!3930167 (= res!1590233 (= (++!10788 (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372802)))) (_2!23637 (get!13793 lt!1372802))) lt!1372223))))

(declare-fun b!3930168 () Bool)

(declare-fun e!2431368 () Bool)

(assert (=> b!3930168 (= e!2431368 e!2431367)))

(declare-fun res!1590237 () Bool)

(assert (=> b!3930168 (=> (not res!1590237) (not e!2431367))))

(assert (=> b!3930168 (= res!1590237 (isDefined!6946 lt!1372802))))

(declare-fun b!3930169 () Bool)

(declare-fun e!2431366 () Option!8935)

(declare-fun call!284804 () Option!8935)

(assert (=> b!3930169 (= e!2431366 call!284804)))

(declare-fun b!3930170 () Bool)

(declare-fun res!1590235 () Bool)

(assert (=> b!3930170 (=> (not res!1590235) (not e!2431367))))

(assert (=> b!3930170 (= res!1590235 (= (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372802)))) (originalCharacters!7115 (_1!23637 (get!13793 lt!1372802)))))))

(declare-fun b!3930171 () Bool)

(declare-fun lt!1372800 () Option!8935)

(declare-fun lt!1372801 () Option!8935)

(assert (=> b!3930171 (= e!2431366 (ite (and (is-None!8934 lt!1372800) (is-None!8934 lt!1372801)) None!8934 (ite (is-None!8934 lt!1372801) lt!1372800 (ite (is-None!8934 lt!1372800) lt!1372801 (ite (>= (size!31307 (_1!23637 (v!39260 lt!1372800))) (size!31307 (_1!23637 (v!39260 lt!1372801)))) lt!1372800 lt!1372801)))))))

(assert (=> b!3930171 (= lt!1372800 call!284804)))

(assert (=> b!3930171 (= lt!1372801 (maxPrefix!3408 thiss!20629 (t!325281 (t!325281 rules!2768)) lt!1372223))))

(declare-fun d!1164951 () Bool)

(assert (=> d!1164951 e!2431368))

(declare-fun res!1590236 () Bool)

(assert (=> d!1164951 (=> res!1590236 e!2431368)))

(assert (=> d!1164951 (= res!1590236 (isEmpty!24881 lt!1372802))))

(assert (=> d!1164951 (= lt!1372802 e!2431366)))

(declare-fun c!682797 () Bool)

(assert (=> d!1164951 (= c!682797 (and (is-Cons!41734 (t!325281 rules!2768)) (is-Nil!41734 (t!325281 (t!325281 rules!2768)))))))

(declare-fun lt!1372804 () Unit!60127)

(declare-fun lt!1372803 () Unit!60127)

(assert (=> d!1164951 (= lt!1372804 lt!1372803)))

(assert (=> d!1164951 (isPrefix!3610 lt!1372223 lt!1372223)))

(assert (=> d!1164951 (= lt!1372803 (lemmaIsPrefixRefl!2277 lt!1372223 lt!1372223))))

(assert (=> d!1164951 (rulesValidInductive!2347 thiss!20629 (t!325281 rules!2768))))

(assert (=> d!1164951 (= (maxPrefix!3408 thiss!20629 (t!325281 rules!2768) lt!1372223) lt!1372802)))

(declare-fun b!3930172 () Bool)

(declare-fun res!1590234 () Bool)

(assert (=> b!3930172 (=> (not res!1590234) (not e!2431367))))

(assert (=> b!3930172 (= res!1590234 (matchR!5479 (regex!6515 (rule!9459 (_1!23637 (get!13793 lt!1372802)))) (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372802))))))))

(declare-fun b!3930173 () Bool)

(declare-fun res!1590238 () Bool)

(assert (=> b!3930173 (=> (not res!1590238) (not e!2431367))))

(assert (=> b!3930173 (= res!1590238 (< (size!31308 (_2!23637 (get!13793 lt!1372802))) (size!31308 lt!1372223)))))

(declare-fun bm!284799 () Bool)

(assert (=> bm!284799 (= call!284804 (maxPrefixOneRule!2478 thiss!20629 (h!47154 (t!325281 rules!2768)) lt!1372223))))

(declare-fun b!3930174 () Bool)

(declare-fun res!1590232 () Bool)

(assert (=> b!3930174 (=> (not res!1590232) (not e!2431367))))

(assert (=> b!3930174 (= res!1590232 (= (value!206313 (_1!23637 (get!13793 lt!1372802))) (apply!9754 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372802)))) (seqFromList!4782 (originalCharacters!7115 (_1!23637 (get!13793 lt!1372802)))))))))

(declare-fun b!3930175 () Bool)

(assert (=> b!3930175 (= e!2431367 (contains!8362 (t!325281 rules!2768) (rule!9459 (_1!23637 (get!13793 lt!1372802)))))))

(assert (= (and d!1164951 c!682797) b!3930169))

(assert (= (and d!1164951 (not c!682797)) b!3930171))

(assert (= (or b!3930169 b!3930171) bm!284799))

(assert (= (and d!1164951 (not res!1590236)) b!3930168))

(assert (= (and b!3930168 res!1590237) b!3930170))

(assert (= (and b!3930170 res!1590235) b!3930173))

(assert (= (and b!3930173 res!1590238) b!3930167))

(assert (= (and b!3930167 res!1590233) b!3930174))

(assert (= (and b!3930174 res!1590232) b!3930172))

(assert (= (and b!3930172 res!1590234) b!3930175))

(declare-fun m!4495585 () Bool)

(assert (=> b!3930171 m!4495585))

(declare-fun m!4495587 () Bool)

(assert (=> d!1164951 m!4495587))

(assert (=> d!1164951 m!4494625))

(assert (=> d!1164951 m!4494627))

(assert (=> d!1164951 m!4495393))

(declare-fun m!4495589 () Bool)

(assert (=> b!3930172 m!4495589))

(declare-fun m!4495591 () Bool)

(assert (=> b!3930172 m!4495591))

(assert (=> b!3930172 m!4495591))

(declare-fun m!4495593 () Bool)

(assert (=> b!3930172 m!4495593))

(assert (=> b!3930172 m!4495593))

(declare-fun m!4495595 () Bool)

(assert (=> b!3930172 m!4495595))

(assert (=> b!3930167 m!4495589))

(assert (=> b!3930167 m!4495591))

(assert (=> b!3930167 m!4495591))

(assert (=> b!3930167 m!4495593))

(assert (=> b!3930167 m!4495593))

(declare-fun m!4495597 () Bool)

(assert (=> b!3930167 m!4495597))

(declare-fun m!4495599 () Bool)

(assert (=> b!3930168 m!4495599))

(assert (=> b!3930174 m!4495589))

(declare-fun m!4495601 () Bool)

(assert (=> b!3930174 m!4495601))

(assert (=> b!3930174 m!4495601))

(declare-fun m!4495603 () Bool)

(assert (=> b!3930174 m!4495603))

(assert (=> b!3930175 m!4495589))

(declare-fun m!4495605 () Bool)

(assert (=> b!3930175 m!4495605))

(assert (=> b!3930170 m!4495589))

(assert (=> b!3930170 m!4495591))

(assert (=> b!3930170 m!4495591))

(assert (=> b!3930170 m!4495593))

(assert (=> b!3930173 m!4495589))

(declare-fun m!4495607 () Bool)

(assert (=> b!3930173 m!4495607))

(assert (=> b!3930173 m!4494049))

(declare-fun m!4495609 () Bool)

(assert (=> bm!284799 m!4495609))

(assert (=> b!3929517 d!1164951))

(declare-fun b!3930176 () Bool)

(declare-fun e!2431370 () List!41855)

(assert (=> b!3930176 (= e!2431370 (_2!23637 (v!39260 lt!1372235)))))

(declare-fun b!3930178 () Bool)

(declare-fun res!1590239 () Bool)

(declare-fun e!2431369 () Bool)

(assert (=> b!3930178 (=> (not res!1590239) (not e!2431369))))

(declare-fun lt!1372805 () List!41855)

(assert (=> b!3930178 (= res!1590239 (= (size!31308 lt!1372805) (+ (size!31308 (t!325278 lt!1372190)) (size!31308 (_2!23637 (v!39260 lt!1372235))))))))

(declare-fun b!3930179 () Bool)

(assert (=> b!3930179 (= e!2431369 (or (not (= (_2!23637 (v!39260 lt!1372235)) Nil!41731)) (= lt!1372805 (t!325278 lt!1372190))))))

(declare-fun b!3930177 () Bool)

(assert (=> b!3930177 (= e!2431370 (Cons!41731 (h!47151 (t!325278 lt!1372190)) (++!10788 (t!325278 (t!325278 lt!1372190)) (_2!23637 (v!39260 lt!1372235)))))))

(declare-fun d!1164953 () Bool)

(assert (=> d!1164953 e!2431369))

(declare-fun res!1590240 () Bool)

(assert (=> d!1164953 (=> (not res!1590240) (not e!2431369))))

(assert (=> d!1164953 (= res!1590240 (= (content!6281 lt!1372805) (set.union (content!6281 (t!325278 lt!1372190)) (content!6281 (_2!23637 (v!39260 lt!1372235))))))))

(assert (=> d!1164953 (= lt!1372805 e!2431370)))

(declare-fun c!682798 () Bool)

(assert (=> d!1164953 (= c!682798 (is-Nil!41731 (t!325278 lt!1372190)))))

(assert (=> d!1164953 (= (++!10788 (t!325278 lt!1372190) (_2!23637 (v!39260 lt!1372235))) lt!1372805)))

(assert (= (and d!1164953 c!682798) b!3930176))

(assert (= (and d!1164953 (not c!682798)) b!3930177))

(assert (= (and d!1164953 res!1590240) b!3930178))

(assert (= (and b!3930178 res!1590239) b!3930179))

(declare-fun m!4495611 () Bool)

(assert (=> b!3930178 m!4495611))

(assert (=> b!3930178 m!4494301))

(assert (=> b!3930178 m!4493969))

(declare-fun m!4495613 () Bool)

(assert (=> b!3930177 m!4495613))

(declare-fun m!4495615 () Bool)

(assert (=> d!1164953 m!4495615))

(assert (=> d!1164953 m!4495553))

(assert (=> d!1164953 m!4494333))

(assert (=> b!3929307 d!1164953))

(declare-fun b!3930180 () Bool)

(declare-fun e!2431371 () List!41857)

(assert (=> b!3930180 (= e!2431371 suffixTokens!72)))

(declare-fun b!3930182 () Bool)

(declare-fun res!1590242 () Bool)

(declare-fun e!2431372 () Bool)

(assert (=> b!3930182 (=> (not res!1590242) (not e!2431372))))

(declare-fun lt!1372806 () List!41857)

(assert (=> b!3930182 (= res!1590242 (= (size!31311 lt!1372806) (+ (size!31311 (t!325280 prefixTokens!80)) (size!31311 suffixTokens!72))))))

(declare-fun d!1164955 () Bool)

(assert (=> d!1164955 e!2431372))

(declare-fun res!1590241 () Bool)

(assert (=> d!1164955 (=> (not res!1590241) (not e!2431372))))

(assert (=> d!1164955 (= res!1590241 (= (content!6282 lt!1372806) (set.union (content!6282 (t!325280 prefixTokens!80)) (content!6282 suffixTokens!72))))))

(assert (=> d!1164955 (= lt!1372806 e!2431371)))

(declare-fun c!682799 () Bool)

(assert (=> d!1164955 (= c!682799 (is-Nil!41733 (t!325280 prefixTokens!80)))))

(assert (=> d!1164955 (= (++!10787 (t!325280 prefixTokens!80) suffixTokens!72) lt!1372806)))

(declare-fun b!3930181 () Bool)

(assert (=> b!3930181 (= e!2431371 (Cons!41733 (h!47153 (t!325280 prefixTokens!80)) (++!10787 (t!325280 (t!325280 prefixTokens!80)) suffixTokens!72)))))

(declare-fun b!3930183 () Bool)

(assert (=> b!3930183 (= e!2431372 (or (not (= suffixTokens!72 Nil!41733)) (= lt!1372806 (t!325280 prefixTokens!80))))))

(assert (= (and d!1164955 c!682799) b!3930180))

(assert (= (and d!1164955 (not c!682799)) b!3930181))

(assert (= (and d!1164955 res!1590241) b!3930182))

(assert (= (and b!3930182 res!1590242) b!3930183))

(declare-fun m!4495617 () Bool)

(assert (=> b!3930182 m!4495617))

(declare-fun m!4495619 () Bool)

(assert (=> b!3930182 m!4495619))

(assert (=> b!3930182 m!4494449))

(declare-fun m!4495621 () Bool)

(assert (=> d!1164955 m!4495621))

(declare-fun m!4495623 () Bool)

(assert (=> d!1164955 m!4495623))

(assert (=> d!1164955 m!4494455))

(declare-fun m!4495625 () Bool)

(assert (=> b!3930181 m!4495625))

(assert (=> b!3929432 d!1164955))

(declare-fun d!1164957 () Bool)

(declare-fun lt!1372807 () Int)

(assert (=> d!1164957 (>= lt!1372807 0)))

(declare-fun e!2431373 () Int)

(assert (=> d!1164957 (= lt!1372807 e!2431373)))

(declare-fun c!682800 () Bool)

(assert (=> d!1164957 (= c!682800 (is-Nil!41731 (_2!23638 lt!1372425)))))

(assert (=> d!1164957 (= (size!31308 (_2!23638 lt!1372425)) lt!1372807)))

(declare-fun b!3930184 () Bool)

(assert (=> b!3930184 (= e!2431373 0)))

(declare-fun b!3930185 () Bool)

(assert (=> b!3930185 (= e!2431373 (+ 1 (size!31308 (t!325278 (_2!23638 lt!1372425)))))))

(assert (= (and d!1164957 c!682800) b!3930184))

(assert (= (and d!1164957 (not c!682800)) b!3930185))

(declare-fun m!4495627 () Bool)

(assert (=> b!3930185 m!4495627))

(assert (=> b!3929364 d!1164957))

(assert (=> b!3929364 d!1164919))

(declare-fun d!1164959 () Bool)

(declare-fun nullableFct!1129 (Regex!11420) Bool)

(assert (=> d!1164959 (= (nullable!3998 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))) (nullableFct!1129 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))))))

(declare-fun bs!586154 () Bool)

(assert (= bs!586154 d!1164959))

(declare-fun m!4495629 () Bool)

(assert (=> bs!586154 m!4495629))

(assert (=> b!3929314 d!1164959))

(declare-fun d!1164961 () Bool)

(declare-fun lt!1372808 () Int)

(assert (=> d!1164961 (>= lt!1372808 0)))

(declare-fun e!2431374 () Int)

(assert (=> d!1164961 (= lt!1372808 e!2431374)))

(declare-fun c!682801 () Bool)

(assert (=> d!1164961 (= c!682801 (is-Nil!41731 (_2!23638 lt!1372461)))))

(assert (=> d!1164961 (= (size!31308 (_2!23638 lt!1372461)) lt!1372808)))

(declare-fun b!3930186 () Bool)

(assert (=> b!3930186 (= e!2431374 0)))

(declare-fun b!3930187 () Bool)

(assert (=> b!3930187 (= e!2431374 (+ 1 (size!31308 (t!325278 (_2!23638 lt!1372461)))))))

(assert (= (and d!1164961 c!682801) b!3930186))

(assert (= (and d!1164961 (not c!682801)) b!3930187))

(declare-fun m!4495631 () Bool)

(assert (=> b!3930187 m!4495631))

(assert (=> b!3929445 d!1164961))

(assert (=> b!3929445 d!1164581))

(declare-fun b!3930188 () Bool)

(declare-fun e!2431376 () List!41855)

(assert (=> b!3930188 (= e!2431376 (_2!23637 (get!13793 lt!1372587)))))

(declare-fun b!3930190 () Bool)

(declare-fun res!1590243 () Bool)

(declare-fun e!2431375 () Bool)

(assert (=> b!3930190 (=> (not res!1590243) (not e!2431375))))

(declare-fun lt!1372809 () List!41855)

(assert (=> b!3930190 (= res!1590243 (= (size!31308 lt!1372809) (+ (size!31308 (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372587))))) (size!31308 (_2!23637 (get!13793 lt!1372587))))))))

(declare-fun b!3930191 () Bool)

(assert (=> b!3930191 (= e!2431375 (or (not (= (_2!23637 (get!13793 lt!1372587)) Nil!41731)) (= lt!1372809 (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372587)))))))))

(declare-fun b!3930189 () Bool)

(assert (=> b!3930189 (= e!2431376 (Cons!41731 (h!47151 (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372587))))) (++!10788 (t!325278 (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372587))))) (_2!23637 (get!13793 lt!1372587)))))))

(declare-fun d!1164963 () Bool)

(assert (=> d!1164963 e!2431375))

(declare-fun res!1590244 () Bool)

(assert (=> d!1164963 (=> (not res!1590244) (not e!2431375))))

(assert (=> d!1164963 (= res!1590244 (= (content!6281 lt!1372809) (set.union (content!6281 (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372587))))) (content!6281 (_2!23637 (get!13793 lt!1372587))))))))

(assert (=> d!1164963 (= lt!1372809 e!2431376)))

(declare-fun c!682802 () Bool)

(assert (=> d!1164963 (= c!682802 (is-Nil!41731 (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372587))))))))

(assert (=> d!1164963 (= (++!10788 (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372587)))) (_2!23637 (get!13793 lt!1372587))) lt!1372809)))

(assert (= (and d!1164963 c!682802) b!3930188))

(assert (= (and d!1164963 (not c!682802)) b!3930189))

(assert (= (and d!1164963 res!1590244) b!3930190))

(assert (= (and b!3930190 res!1590243) b!3930191))

(declare-fun m!4495633 () Bool)

(assert (=> b!3930190 m!4495633))

(assert (=> b!3930190 m!4494931))

(declare-fun m!4495635 () Bool)

(assert (=> b!3930190 m!4495635))

(assert (=> b!3930190 m!4494937))

(declare-fun m!4495637 () Bool)

(assert (=> b!3930189 m!4495637))

(declare-fun m!4495639 () Bool)

(assert (=> d!1164963 m!4495639))

(assert (=> d!1164963 m!4494931))

(declare-fun m!4495641 () Bool)

(assert (=> d!1164963 m!4495641))

(declare-fun m!4495643 () Bool)

(assert (=> d!1164963 m!4495643))

(assert (=> b!3929668 d!1164963))

(declare-fun d!1164965 () Bool)

(assert (=> d!1164965 (= (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372587)))) (list!15506 (c!682587 (charsOf!4339 (_1!23637 (get!13793 lt!1372587))))))))

(declare-fun bs!586155 () Bool)

(assert (= bs!586155 d!1164965))

(declare-fun m!4495645 () Bool)

(assert (=> bs!586155 m!4495645))

(assert (=> b!3929668 d!1164965))

(declare-fun d!1164967 () Bool)

(declare-fun lt!1372810 () BalanceConc!25046)

(assert (=> d!1164967 (= (list!15504 lt!1372810) (originalCharacters!7115 (_1!23637 (get!13793 lt!1372587))))))

(assert (=> d!1164967 (= lt!1372810 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372587))))) (value!206313 (_1!23637 (get!13793 lt!1372587)))))))

(assert (=> d!1164967 (= (charsOf!4339 (_1!23637 (get!13793 lt!1372587))) lt!1372810)))

(declare-fun b_lambda!114971 () Bool)

(assert (=> (not b_lambda!114971) (not d!1164967)))

(declare-fun t!325409 () Bool)

(declare-fun tb!234821 () Bool)

(assert (=> (and b!3929724 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72))))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372587)))))) t!325409) tb!234821))

(declare-fun b!3930192 () Bool)

(declare-fun e!2431377 () Bool)

(declare-fun tp!1196432 () Bool)

(assert (=> b!3930192 (= e!2431377 (and (inv!55928 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372587))))) (value!206313 (_1!23637 (get!13793 lt!1372587)))))) tp!1196432))))

(declare-fun result!284566 () Bool)

(assert (=> tb!234821 (= result!284566 (and (inv!55929 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372587))))) (value!206313 (_1!23637 (get!13793 lt!1372587))))) e!2431377))))

(assert (= tb!234821 b!3930192))

(declare-fun m!4495647 () Bool)

(assert (=> b!3930192 m!4495647))

(declare-fun m!4495649 () Bool)

(assert (=> tb!234821 m!4495649))

(assert (=> d!1164967 t!325409))

(declare-fun b_and!299843 () Bool)

(assert (= b_and!299819 (and (=> t!325409 result!284566) b_and!299843)))

(declare-fun t!325411 () Bool)

(declare-fun tb!234823 () Bool)

(assert (=> (and b!3929105 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372587)))))) t!325411) tb!234823))

(declare-fun result!284568 () Bool)

(assert (= result!284568 result!284566))

(assert (=> d!1164967 t!325411))

(declare-fun b_and!299845 () Bool)

(assert (= b_and!299823 (and (=> t!325411 result!284568) b_and!299845)))

(declare-fun t!325413 () Bool)

(declare-fun tb!234825 () Bool)

(assert (=> (and b!3929087 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372587)))))) t!325413) tb!234825))

(declare-fun result!284570 () Bool)

(assert (= result!284570 result!284566))

(assert (=> d!1164967 t!325413))

(declare-fun b_and!299847 () Bool)

(assert (= b_and!299827 (and (=> t!325413 result!284570) b_and!299847)))

(declare-fun tb!234827 () Bool)

(declare-fun t!325415 () Bool)

(assert (=> (and b!3929693 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80))))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372587)))))) t!325415) tb!234827))

(declare-fun result!284572 () Bool)

(assert (= result!284572 result!284566))

(assert (=> d!1164967 t!325415))

(declare-fun b_and!299849 () Bool)

(assert (= b_and!299829 (and (=> t!325415 result!284572) b_and!299849)))

(declare-fun t!325417 () Bool)

(declare-fun tb!234829 () Bool)

(assert (=> (and b!3929093 (= (toChars!8826 (transformation!6515 (h!47154 rules!2768))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372587)))))) t!325417) tb!234829))

(declare-fun result!284574 () Bool)

(assert (= result!284574 result!284566))

(assert (=> d!1164967 t!325417))

(declare-fun b_and!299851 () Bool)

(assert (= b_and!299821 (and (=> t!325417 result!284574) b_and!299851)))

(declare-fun tb!234831 () Bool)

(declare-fun t!325419 () Bool)

(assert (=> (and b!3929679 (= (toChars!8826 (transformation!6515 (h!47154 (t!325281 rules!2768)))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372587)))))) t!325419) tb!234831))

(declare-fun result!284576 () Bool)

(assert (= result!284576 result!284566))

(assert (=> d!1164967 t!325419))

(declare-fun b_and!299853 () Bool)

(assert (= b_and!299825 (and (=> t!325419 result!284576) b_and!299853)))

(declare-fun m!4495651 () Bool)

(assert (=> d!1164967 m!4495651))

(declare-fun m!4495653 () Bool)

(assert (=> d!1164967 m!4495653))

(assert (=> b!3929668 d!1164967))

(assert (=> b!3929668 d!1164829))

(assert (=> d!1164601 d!1164599))

(declare-fun d!1164969 () Bool)

(assert (=> d!1164969 (isPrefix!3610 lt!1372190 prefix!426)))

(assert (=> d!1164969 true))

(declare-fun _$69!205 () Unit!60127)

(assert (=> d!1164969 (= (choose!23362 prefix!426 lt!1372190 lt!1372223) _$69!205)))

(declare-fun bs!586156 () Bool)

(assert (= bs!586156 d!1164969))

(assert (=> bs!586156 m!4494019))

(assert (=> d!1164601 d!1164969))

(assert (=> d!1164601 d!1164587))

(declare-fun d!1164971 () Bool)

(declare-fun lt!1372811 () Int)

(assert (=> d!1164971 (>= lt!1372811 0)))

(declare-fun e!2431378 () Int)

(assert (=> d!1164971 (= lt!1372811 e!2431378)))

(declare-fun c!682803 () Bool)

(assert (=> d!1164971 (= c!682803 (is-Nil!41733 lt!1372512))))

(assert (=> d!1164971 (= (size!31311 lt!1372512) lt!1372811)))

(declare-fun b!3930193 () Bool)

(assert (=> b!3930193 (= e!2431378 0)))

(declare-fun b!3930194 () Bool)

(assert (=> b!3930194 (= e!2431378 (+ 1 (size!31311 (t!325280 lt!1372512))))))

(assert (= (and d!1164971 c!682803) b!3930193))

(assert (= (and d!1164971 (not c!682803)) b!3930194))

(declare-fun m!4495655 () Bool)

(assert (=> b!3930194 m!4495655))

(assert (=> b!3929530 d!1164971))

(assert (=> b!3929530 d!1164939))

(declare-fun d!1164973 () Bool)

(declare-fun lt!1372812 () Int)

(assert (=> d!1164973 (>= lt!1372812 0)))

(declare-fun e!2431379 () Int)

(assert (=> d!1164973 (= lt!1372812 e!2431379)))

(declare-fun c!682804 () Bool)

(assert (=> d!1164973 (= c!682804 (is-Nil!41733 lt!1372222))))

(assert (=> d!1164973 (= (size!31311 lt!1372222) lt!1372812)))

(declare-fun b!3930195 () Bool)

(assert (=> b!3930195 (= e!2431379 0)))

(declare-fun b!3930196 () Bool)

(assert (=> b!3930196 (= e!2431379 (+ 1 (size!31311 (t!325280 lt!1372222))))))

(assert (= (and d!1164973 c!682804) b!3930195))

(assert (= (and d!1164973 (not c!682804)) b!3930196))

(declare-fun m!4495657 () Bool)

(assert (=> b!3930196 m!4495657))

(assert (=> b!3929530 d!1164973))

(declare-fun d!1164975 () Bool)

(assert (=> d!1164975 (= (isEmpty!24881 lt!1372587) (not (is-Some!8934 lt!1372587)))))

(assert (=> d!1164653 d!1164975))

(declare-fun d!1164977 () Bool)

(assert (=> d!1164977 (= (isEmpty!24875 (_1!23641 lt!1372586)) (is-Nil!41731 (_1!23641 lt!1372586)))))

(assert (=> d!1164653 d!1164977))

(declare-fun d!1164979 () Bool)

(declare-fun lt!1372830 () tuple2!41014)

(assert (=> d!1164979 (= (++!10788 (_1!23641 lt!1372830) (_2!23641 lt!1372830)) lt!1372223)))

(declare-fun sizeTr!250 (List!41855 Int) Int)

(assert (=> d!1164979 (= lt!1372830 (findLongestMatchInner!1259 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))) Nil!41731 0 lt!1372223 lt!1372223 (sizeTr!250 lt!1372223 0)))))

(declare-fun lt!1372832 () Unit!60127)

(declare-fun lt!1372834 () Unit!60127)

(assert (=> d!1164979 (= lt!1372832 lt!1372834)))

(declare-fun lt!1372835 () List!41855)

(declare-fun lt!1372829 () Int)

(assert (=> d!1164979 (= (sizeTr!250 lt!1372835 lt!1372829) (+ (size!31308 lt!1372835) lt!1372829))))

(declare-fun lemmaSizeTrEqualsSize!249 (List!41855 Int) Unit!60127)

(assert (=> d!1164979 (= lt!1372834 (lemmaSizeTrEqualsSize!249 lt!1372835 lt!1372829))))

(assert (=> d!1164979 (= lt!1372829 0)))

(assert (=> d!1164979 (= lt!1372835 Nil!41731)))

(declare-fun lt!1372831 () Unit!60127)

(declare-fun lt!1372836 () Unit!60127)

(assert (=> d!1164979 (= lt!1372831 lt!1372836)))

(declare-fun lt!1372833 () Int)

(assert (=> d!1164979 (= (sizeTr!250 lt!1372223 lt!1372833) (+ (size!31308 lt!1372223) lt!1372833))))

(assert (=> d!1164979 (= lt!1372836 (lemmaSizeTrEqualsSize!249 lt!1372223 lt!1372833))))

(assert (=> d!1164979 (= lt!1372833 0)))

(assert (=> d!1164979 (validRegex!5197 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))))

(assert (=> d!1164979 (= (findLongestMatch!1172 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))) lt!1372223) lt!1372830)))

(declare-fun bs!586157 () Bool)

(assert (= bs!586157 d!1164979))

(declare-fun m!4495659 () Bool)

(assert (=> bs!586157 m!4495659))

(declare-fun m!4495661 () Bool)

(assert (=> bs!586157 m!4495661))

(declare-fun m!4495663 () Bool)

(assert (=> bs!586157 m!4495663))

(declare-fun m!4495665 () Bool)

(assert (=> bs!586157 m!4495665))

(declare-fun m!4495667 () Bool)

(assert (=> bs!586157 m!4495667))

(assert (=> bs!586157 m!4494049))

(declare-fun m!4495669 () Bool)

(assert (=> bs!586157 m!4495669))

(declare-fun m!4495671 () Bool)

(assert (=> bs!586157 m!4495671))

(assert (=> bs!586157 m!4494335))

(assert (=> bs!586157 m!4495661))

(declare-fun m!4495673 () Bool)

(assert (=> bs!586157 m!4495673))

(assert (=> d!1164653 d!1164979))

(assert (=> d!1164653 d!1164487))

(declare-fun d!1164981 () Bool)

(declare-fun lt!1372837 () Int)

(assert (=> d!1164981 (>= lt!1372837 0)))

(declare-fun e!2431380 () Int)

(assert (=> d!1164981 (= lt!1372837 e!2431380)))

(declare-fun c!682805 () Bool)

(assert (=> d!1164981 (= c!682805 (is-Nil!41733 (_1!23638 lt!1372422)))))

(assert (=> d!1164981 (= (size!31311 (_1!23638 lt!1372422)) lt!1372837)))

(declare-fun b!3930197 () Bool)

(assert (=> b!3930197 (= e!2431380 0)))

(declare-fun b!3930198 () Bool)

(assert (=> b!3930198 (= e!2431380 (+ 1 (size!31311 (t!325280 (_1!23638 lt!1372422)))))))

(assert (= (and d!1164981 c!682805) b!3930197))

(assert (= (and d!1164981 (not c!682805)) b!3930198))

(declare-fun m!4495675 () Bool)

(assert (=> b!3930198 m!4495675))

(assert (=> d!1164505 d!1164981))

(declare-fun b!3930199 () Bool)

(declare-fun res!1590246 () Bool)

(declare-fun e!2431382 () Bool)

(assert (=> b!3930199 (=> (not res!1590246) (not e!2431382))))

(declare-fun lt!1372840 () Option!8935)

(assert (=> b!3930199 (= res!1590246 (= (++!10788 (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372840)))) (_2!23637 (get!13793 lt!1372840))) (_2!23637 lt!1372230)))))

(declare-fun b!3930200 () Bool)

(declare-fun e!2431383 () Bool)

(assert (=> b!3930200 (= e!2431383 e!2431382)))

(declare-fun res!1590250 () Bool)

(assert (=> b!3930200 (=> (not res!1590250) (not e!2431382))))

(assert (=> b!3930200 (= res!1590250 (isDefined!6946 lt!1372840))))

(declare-fun b!3930201 () Bool)

(declare-fun e!2431381 () Option!8935)

(declare-fun call!284805 () Option!8935)

(assert (=> b!3930201 (= e!2431381 call!284805)))

(declare-fun b!3930202 () Bool)

(declare-fun res!1590248 () Bool)

(assert (=> b!3930202 (=> (not res!1590248) (not e!2431382))))

(assert (=> b!3930202 (= res!1590248 (= (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372840)))) (originalCharacters!7115 (_1!23637 (get!13793 lt!1372840)))))))

(declare-fun b!3930203 () Bool)

(declare-fun lt!1372838 () Option!8935)

(declare-fun lt!1372839 () Option!8935)

(assert (=> b!3930203 (= e!2431381 (ite (and (is-None!8934 lt!1372838) (is-None!8934 lt!1372839)) None!8934 (ite (is-None!8934 lt!1372839) lt!1372838 (ite (is-None!8934 lt!1372838) lt!1372839 (ite (>= (size!31307 (_1!23637 (v!39260 lt!1372838))) (size!31307 (_1!23637 (v!39260 lt!1372839)))) lt!1372838 lt!1372839)))))))

(assert (=> b!3930203 (= lt!1372838 call!284805)))

(assert (=> b!3930203 (= lt!1372839 (maxPrefix!3408 thiss!20629 (t!325281 rules!2768) (_2!23637 lt!1372230)))))

(declare-fun d!1164983 () Bool)

(assert (=> d!1164983 e!2431383))

(declare-fun res!1590249 () Bool)

(assert (=> d!1164983 (=> res!1590249 e!2431383)))

(assert (=> d!1164983 (= res!1590249 (isEmpty!24881 lt!1372840))))

(assert (=> d!1164983 (= lt!1372840 e!2431381)))

(declare-fun c!682806 () Bool)

(assert (=> d!1164983 (= c!682806 (and (is-Cons!41734 rules!2768) (is-Nil!41734 (t!325281 rules!2768))))))

(declare-fun lt!1372842 () Unit!60127)

(declare-fun lt!1372841 () Unit!60127)

(assert (=> d!1164983 (= lt!1372842 lt!1372841)))

(assert (=> d!1164983 (isPrefix!3610 (_2!23637 lt!1372230) (_2!23637 lt!1372230))))

(assert (=> d!1164983 (= lt!1372841 (lemmaIsPrefixRefl!2277 (_2!23637 lt!1372230) (_2!23637 lt!1372230)))))

(assert (=> d!1164983 (rulesValidInductive!2347 thiss!20629 rules!2768)))

(assert (=> d!1164983 (= (maxPrefix!3408 thiss!20629 rules!2768 (_2!23637 lt!1372230)) lt!1372840)))

(declare-fun b!3930204 () Bool)

(declare-fun res!1590247 () Bool)

(assert (=> b!3930204 (=> (not res!1590247) (not e!2431382))))

(assert (=> b!3930204 (= res!1590247 (matchR!5479 (regex!6515 (rule!9459 (_1!23637 (get!13793 lt!1372840)))) (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372840))))))))

(declare-fun b!3930205 () Bool)

(declare-fun res!1590251 () Bool)

(assert (=> b!3930205 (=> (not res!1590251) (not e!2431382))))

(assert (=> b!3930205 (= res!1590251 (< (size!31308 (_2!23637 (get!13793 lt!1372840))) (size!31308 (_2!23637 lt!1372230))))))

(declare-fun bm!284800 () Bool)

(assert (=> bm!284800 (= call!284805 (maxPrefixOneRule!2478 thiss!20629 (h!47154 rules!2768) (_2!23637 lt!1372230)))))

(declare-fun b!3930206 () Bool)

(declare-fun res!1590245 () Bool)

(assert (=> b!3930206 (=> (not res!1590245) (not e!2431382))))

(assert (=> b!3930206 (= res!1590245 (= (value!206313 (_1!23637 (get!13793 lt!1372840))) (apply!9754 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372840)))) (seqFromList!4782 (originalCharacters!7115 (_1!23637 (get!13793 lt!1372840)))))))))

(declare-fun b!3930207 () Bool)

(assert (=> b!3930207 (= e!2431382 (contains!8362 rules!2768 (rule!9459 (_1!23637 (get!13793 lt!1372840)))))))

(assert (= (and d!1164983 c!682806) b!3930201))

(assert (= (and d!1164983 (not c!682806)) b!3930203))

(assert (= (or b!3930201 b!3930203) bm!284800))

(assert (= (and d!1164983 (not res!1590249)) b!3930200))

(assert (= (and b!3930200 res!1590250) b!3930202))

(assert (= (and b!3930202 res!1590248) b!3930205))

(assert (= (and b!3930205 res!1590251) b!3930199))

(assert (= (and b!3930199 res!1590246) b!3930206))

(assert (= (and b!3930206 res!1590245) b!3930204))

(assert (= (and b!3930204 res!1590247) b!3930207))

(declare-fun m!4495677 () Bool)

(assert (=> b!3930203 m!4495677))

(declare-fun m!4495679 () Bool)

(assert (=> d!1164983 m!4495679))

(declare-fun m!4495681 () Bool)

(assert (=> d!1164983 m!4495681))

(declare-fun m!4495683 () Bool)

(assert (=> d!1164983 m!4495683))

(assert (=> d!1164983 m!4494629))

(declare-fun m!4495685 () Bool)

(assert (=> b!3930204 m!4495685))

(declare-fun m!4495687 () Bool)

(assert (=> b!3930204 m!4495687))

(assert (=> b!3930204 m!4495687))

(declare-fun m!4495689 () Bool)

(assert (=> b!3930204 m!4495689))

(assert (=> b!3930204 m!4495689))

(declare-fun m!4495691 () Bool)

(assert (=> b!3930204 m!4495691))

(assert (=> b!3930199 m!4495685))

(assert (=> b!3930199 m!4495687))

(assert (=> b!3930199 m!4495687))

(assert (=> b!3930199 m!4495689))

(assert (=> b!3930199 m!4495689))

(declare-fun m!4495693 () Bool)

(assert (=> b!3930199 m!4495693))

(declare-fun m!4495695 () Bool)

(assert (=> b!3930200 m!4495695))

(assert (=> b!3930206 m!4495685))

(declare-fun m!4495697 () Bool)

(assert (=> b!3930206 m!4495697))

(assert (=> b!3930206 m!4495697))

(declare-fun m!4495699 () Bool)

(assert (=> b!3930206 m!4495699))

(assert (=> b!3930207 m!4495685))

(declare-fun m!4495701 () Bool)

(assert (=> b!3930207 m!4495701))

(assert (=> b!3930202 m!4495685))

(assert (=> b!3930202 m!4495687))

(assert (=> b!3930202 m!4495687))

(assert (=> b!3930202 m!4495689))

(assert (=> b!3930205 m!4495685))

(declare-fun m!4495703 () Bool)

(assert (=> b!3930205 m!4495703))

(assert (=> b!3930205 m!4494051))

(declare-fun m!4495705 () Bool)

(assert (=> bm!284800 m!4495705))

(assert (=> d!1164505 d!1164983))

(declare-fun d!1164985 () Bool)

(declare-fun res!1590256 () Bool)

(declare-fun e!2431388 () Bool)

(assert (=> d!1164985 (=> res!1590256 e!2431388)))

(assert (=> d!1164985 (= res!1590256 (is-Nil!41734 rules!2768))))

(assert (=> d!1164985 (= (noDuplicateTag!2533 thiss!20629 rules!2768 Nil!41739) e!2431388)))

(declare-fun b!3930212 () Bool)

(declare-fun e!2431389 () Bool)

(assert (=> b!3930212 (= e!2431388 e!2431389)))

(declare-fun res!1590257 () Bool)

(assert (=> b!3930212 (=> (not res!1590257) (not e!2431389))))

(declare-fun contains!8364 (List!41863 String!47444) Bool)

(assert (=> b!3930212 (= res!1590257 (not (contains!8364 Nil!41739 (tag!7375 (h!47154 rules!2768)))))))

(declare-fun b!3930213 () Bool)

(assert (=> b!3930213 (= e!2431389 (noDuplicateTag!2533 thiss!20629 (t!325281 rules!2768) (Cons!41739 (tag!7375 (h!47154 rules!2768)) Nil!41739)))))

(assert (= (and d!1164985 (not res!1590256)) b!3930212))

(assert (= (and b!3930212 res!1590257) b!3930213))

(declare-fun m!4495707 () Bool)

(assert (=> b!3930212 m!4495707))

(declare-fun m!4495709 () Bool)

(assert (=> b!3930213 m!4495709))

(assert (=> b!3929369 d!1164985))

(declare-fun d!1164987 () Bool)

(declare-fun isBalanced!3639 (Conc!12726) Bool)

(assert (=> d!1164987 (= (inv!55929 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))) (value!206313 (_1!23637 (v!39260 lt!1372235))))) (isBalanced!3639 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))) (value!206313 (_1!23637 (v!39260 lt!1372235)))))))))

(declare-fun bs!586158 () Bool)

(assert (= bs!586158 d!1164987))

(declare-fun m!4495711 () Bool)

(assert (=> bs!586158 m!4495711))

(assert (=> tb!234701 d!1164987))

(declare-fun d!1164989 () Bool)

(declare-fun c!682808 () Bool)

(assert (=> d!1164989 (= c!682808 (is-IntegerValue!20235 (dynLambda!17876 (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))) (seqFromList!4782 lt!1372190))))))

(declare-fun e!2431391 () Bool)

(assert (=> d!1164989 (= (inv!21 (dynLambda!17876 (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))) (seqFromList!4782 lt!1372190))) e!2431391)))

(declare-fun b!3930214 () Bool)

(declare-fun e!2431390 () Bool)

(assert (=> b!3930214 (= e!2431390 (inv!17 (dynLambda!17876 (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))) (seqFromList!4782 lt!1372190))))))

(declare-fun b!3930215 () Bool)

(declare-fun res!1590258 () Bool)

(declare-fun e!2431392 () Bool)

(assert (=> b!3930215 (=> res!1590258 e!2431392)))

(assert (=> b!3930215 (= res!1590258 (not (is-IntegerValue!20237 (dynLambda!17876 (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))) (seqFromList!4782 lt!1372190)))))))

(assert (=> b!3930215 (= e!2431390 e!2431392)))

(declare-fun b!3930216 () Bool)

(assert (=> b!3930216 (= e!2431391 (inv!16 (dynLambda!17876 (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))) (seqFromList!4782 lt!1372190))))))

(declare-fun b!3930217 () Bool)

(assert (=> b!3930217 (= e!2431392 (inv!15 (dynLambda!17876 (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))) (seqFromList!4782 lt!1372190))))))

(declare-fun b!3930218 () Bool)

(assert (=> b!3930218 (= e!2431391 e!2431390)))

(declare-fun c!682807 () Bool)

(assert (=> b!3930218 (= c!682807 (is-IntegerValue!20236 (dynLambda!17876 (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))) (seqFromList!4782 lt!1372190))))))

(assert (= (and d!1164989 c!682808) b!3930216))

(assert (= (and d!1164989 (not c!682808)) b!3930218))

(assert (= (and b!3930218 c!682807) b!3930214))

(assert (= (and b!3930218 (not c!682807)) b!3930215))

(assert (= (and b!3930215 (not res!1590258)) b!3930217))

(declare-fun m!4495713 () Bool)

(assert (=> b!3930214 m!4495713))

(declare-fun m!4495715 () Bool)

(assert (=> b!3930216 m!4495715))

(declare-fun m!4495717 () Bool)

(assert (=> b!3930217 m!4495717))

(assert (=> tb!234707 d!1164989))

(declare-fun d!1164991 () Bool)

(declare-fun e!2431394 () Bool)

(assert (=> d!1164991 e!2431394))

(declare-fun res!1590259 () Bool)

(assert (=> d!1164991 (=> res!1590259 e!2431394)))

(declare-fun lt!1372843 () Bool)

(assert (=> d!1164991 (= res!1590259 (not lt!1372843))))

(declare-fun e!2431393 () Bool)

(assert (=> d!1164991 (= lt!1372843 e!2431393)))

(declare-fun res!1590262 () Bool)

(assert (=> d!1164991 (=> res!1590262 e!2431393)))

(assert (=> d!1164991 (= res!1590262 (is-Nil!41731 (tail!6068 prefix!426)))))

(assert (=> d!1164991 (= (isPrefix!3610 (tail!6068 prefix!426) (tail!6068 lt!1372223)) lt!1372843)))

(declare-fun b!3930219 () Bool)

(declare-fun e!2431395 () Bool)

(assert (=> b!3930219 (= e!2431393 e!2431395)))

(declare-fun res!1590261 () Bool)

(assert (=> b!3930219 (=> (not res!1590261) (not e!2431395))))

(assert (=> b!3930219 (= res!1590261 (not (is-Nil!41731 (tail!6068 lt!1372223))))))

(declare-fun b!3930220 () Bool)

(declare-fun res!1590260 () Bool)

(assert (=> b!3930220 (=> (not res!1590260) (not e!2431395))))

(assert (=> b!3930220 (= res!1590260 (= (head!8342 (tail!6068 prefix!426)) (head!8342 (tail!6068 lt!1372223))))))

(declare-fun b!3930222 () Bool)

(assert (=> b!3930222 (= e!2431394 (>= (size!31308 (tail!6068 lt!1372223)) (size!31308 (tail!6068 prefix!426))))))

(declare-fun b!3930221 () Bool)

(assert (=> b!3930221 (= e!2431395 (isPrefix!3610 (tail!6068 (tail!6068 prefix!426)) (tail!6068 (tail!6068 lt!1372223))))))

(assert (= (and d!1164991 (not res!1590262)) b!3930219))

(assert (= (and b!3930219 res!1590261) b!3930220))

(assert (= (and b!3930220 res!1590260) b!3930221))

(assert (= (and d!1164991 (not res!1590259)) b!3930222))

(assert (=> b!3930220 m!4494469))

(assert (=> b!3930220 m!4495399))

(assert (=> b!3930220 m!4494289))

(declare-fun m!4495719 () Bool)

(assert (=> b!3930220 m!4495719))

(assert (=> b!3930222 m!4494289))

(declare-fun m!4495721 () Bool)

(assert (=> b!3930222 m!4495721))

(assert (=> b!3930222 m!4494469))

(assert (=> b!3930222 m!4495401))

(assert (=> b!3930221 m!4494469))

(assert (=> b!3930221 m!4495403))

(assert (=> b!3930221 m!4494289))

(declare-fun m!4495723 () Bool)

(assert (=> b!3930221 m!4495723))

(assert (=> b!3930221 m!4495403))

(assert (=> b!3930221 m!4495723))

(declare-fun m!4495725 () Bool)

(assert (=> b!3930221 m!4495725))

(assert (=> b!3929478 d!1164991))

(assert (=> b!3929478 d!1164865))

(declare-fun d!1164993 () Bool)

(assert (=> d!1164993 (= (tail!6068 lt!1372223) (t!325278 lt!1372223))))

(assert (=> b!3929478 d!1164993))

(assert (=> b!3929525 d!1164603))

(assert (=> b!3929525 d!1164477))

(assert (=> d!1164619 d!1164617))

(declare-fun b!3930223 () Bool)

(declare-fun e!2431397 () List!41855)

(assert (=> b!3930223 (= e!2431397 (++!10788 lt!1372187 suffix!1176))))

(declare-fun b!3930225 () Bool)

(declare-fun res!1590263 () Bool)

(declare-fun e!2431396 () Bool)

(assert (=> b!3930225 (=> (not res!1590263) (not e!2431396))))

(declare-fun lt!1372844 () List!41855)

(assert (=> b!3930225 (= res!1590263 (= (size!31308 lt!1372844) (+ (size!31308 lt!1372190) (size!31308 (++!10788 lt!1372187 suffix!1176)))))))

(declare-fun b!3930226 () Bool)

(assert (=> b!3930226 (= e!2431396 (or (not (= (++!10788 lt!1372187 suffix!1176) Nil!41731)) (= lt!1372844 lt!1372190)))))

(declare-fun b!3930224 () Bool)

(assert (=> b!3930224 (= e!2431397 (Cons!41731 (h!47151 lt!1372190) (++!10788 (t!325278 lt!1372190) (++!10788 lt!1372187 suffix!1176))))))

(declare-fun d!1164995 () Bool)

(assert (=> d!1164995 e!2431396))

(declare-fun res!1590264 () Bool)

(assert (=> d!1164995 (=> (not res!1590264) (not e!2431396))))

(assert (=> d!1164995 (= res!1590264 (= (content!6281 lt!1372844) (set.union (content!6281 lt!1372190) (content!6281 (++!10788 lt!1372187 suffix!1176)))))))

(assert (=> d!1164995 (= lt!1372844 e!2431397)))

(declare-fun c!682809 () Bool)

(assert (=> d!1164995 (= c!682809 (is-Nil!41731 lt!1372190))))

(assert (=> d!1164995 (= (++!10788 lt!1372190 (++!10788 lt!1372187 suffix!1176)) lt!1372844)))

(assert (= (and d!1164995 c!682809) b!3930223))

(assert (= (and d!1164995 (not c!682809)) b!3930224))

(assert (= (and d!1164995 res!1590264) b!3930225))

(assert (= (and b!3930225 res!1590263) b!3930226))

(declare-fun m!4495727 () Bool)

(assert (=> b!3930225 m!4495727))

(assert (=> b!3930225 m!4494105))

(assert (=> b!3930225 m!4494063))

(assert (=> b!3930225 m!4495367))

(assert (=> b!3930224 m!4494063))

(declare-fun m!4495729 () Bool)

(assert (=> b!3930224 m!4495729))

(declare-fun m!4495731 () Bool)

(assert (=> d!1164995 m!4495731))

(assert (=> d!1164995 m!4494331))

(assert (=> d!1164995 m!4494063))

(declare-fun m!4495733 () Bool)

(assert (=> d!1164995 m!4495733))

(assert (=> d!1164619 d!1164995))

(declare-fun d!1164997 () Bool)

(assert (=> d!1164997 (= (++!10788 (++!10788 lt!1372190 lt!1372187) suffix!1176) (++!10788 lt!1372190 (++!10788 lt!1372187 suffix!1176)))))

(assert (=> d!1164997 true))

(declare-fun _$52!2207 () Unit!60127)

(assert (=> d!1164997 (= (choose!23364 lt!1372190 lt!1372187 suffix!1176) _$52!2207)))

(declare-fun bs!586159 () Bool)

(assert (= bs!586159 d!1164997))

(assert (=> bs!586159 m!4494021))

(assert (=> bs!586159 m!4494021))

(assert (=> bs!586159 m!4494711))

(assert (=> bs!586159 m!4494063))

(assert (=> bs!586159 m!4494063))

(assert (=> bs!586159 m!4494709))

(assert (=> d!1164619 d!1164997))

(assert (=> d!1164619 d!1164531))

(declare-fun b!3930227 () Bool)

(declare-fun e!2431399 () List!41855)

(assert (=> b!3930227 (= e!2431399 suffix!1176)))

(declare-fun b!3930229 () Bool)

(declare-fun res!1590265 () Bool)

(declare-fun e!2431398 () Bool)

(assert (=> b!3930229 (=> (not res!1590265) (not e!2431398))))

(declare-fun lt!1372845 () List!41855)

(assert (=> b!3930229 (= res!1590265 (= (size!31308 lt!1372845) (+ (size!31308 (++!10788 lt!1372190 lt!1372187)) (size!31308 suffix!1176))))))

(declare-fun b!3930230 () Bool)

(assert (=> b!3930230 (= e!2431398 (or (not (= suffix!1176 Nil!41731)) (= lt!1372845 (++!10788 lt!1372190 lt!1372187))))))

(declare-fun b!3930228 () Bool)

(assert (=> b!3930228 (= e!2431399 (Cons!41731 (h!47151 (++!10788 lt!1372190 lt!1372187)) (++!10788 (t!325278 (++!10788 lt!1372190 lt!1372187)) suffix!1176)))))

(declare-fun d!1164999 () Bool)

(assert (=> d!1164999 e!2431398))

(declare-fun res!1590266 () Bool)

(assert (=> d!1164999 (=> (not res!1590266) (not e!2431398))))

(assert (=> d!1164999 (= res!1590266 (= (content!6281 lt!1372845) (set.union (content!6281 (++!10788 lt!1372190 lt!1372187)) (content!6281 suffix!1176))))))

(assert (=> d!1164999 (= lt!1372845 e!2431399)))

(declare-fun c!682810 () Bool)

(assert (=> d!1164999 (= c!682810 (is-Nil!41731 (++!10788 lt!1372190 lt!1372187)))))

(assert (=> d!1164999 (= (++!10788 (++!10788 lt!1372190 lt!1372187) suffix!1176) lt!1372845)))

(assert (= (and d!1164999 c!682810) b!3930227))

(assert (= (and d!1164999 (not c!682810)) b!3930228))

(assert (= (and d!1164999 res!1590266) b!3930229))

(assert (= (and b!3930229 res!1590265) b!3930230))

(declare-fun m!4495735 () Bool)

(assert (=> b!3930229 m!4495735))

(assert (=> b!3930229 m!4494021))

(declare-fun m!4495737 () Bool)

(assert (=> b!3930229 m!4495737))

(assert (=> b!3930229 m!4493967))

(declare-fun m!4495739 () Bool)

(assert (=> b!3930228 m!4495739))

(declare-fun m!4495741 () Bool)

(assert (=> d!1164999 m!4495741))

(assert (=> d!1164999 m!4494021))

(declare-fun m!4495743 () Bool)

(assert (=> d!1164999 m!4495743))

(assert (=> d!1164999 m!4494419))

(assert (=> d!1164619 d!1164999))

(declare-fun d!1165001 () Bool)

(assert (=> d!1165001 (= (inv!55921 (tag!7375 (h!47154 (t!325281 rules!2768)))) (= (mod (str.len (value!206287 (tag!7375 (h!47154 (t!325281 rules!2768))))) 2) 0))))

(assert (=> b!3929678 d!1165001))

(declare-fun d!1165003 () Bool)

(declare-fun res!1590267 () Bool)

(declare-fun e!2431400 () Bool)

(assert (=> d!1165003 (=> (not res!1590267) (not e!2431400))))

(assert (=> d!1165003 (= res!1590267 (semiInverseModEq!2798 (toChars!8826 (transformation!6515 (h!47154 (t!325281 rules!2768)))) (toValue!8967 (transformation!6515 (h!47154 (t!325281 rules!2768))))))))

(assert (=> d!1165003 (= (inv!55925 (transformation!6515 (h!47154 (t!325281 rules!2768)))) e!2431400)))

(declare-fun b!3930231 () Bool)

(assert (=> b!3930231 (= e!2431400 (equivClasses!2697 (toChars!8826 (transformation!6515 (h!47154 (t!325281 rules!2768)))) (toValue!8967 (transformation!6515 (h!47154 (t!325281 rules!2768))))))))

(assert (= (and d!1165003 res!1590267) b!3930231))

(declare-fun m!4495745 () Bool)

(assert (=> d!1165003 m!4495745))

(declare-fun m!4495747 () Bool)

(assert (=> b!3930231 m!4495747))

(assert (=> b!3929678 d!1165003))

(declare-fun d!1165005 () Bool)

(declare-fun c!682811 () Bool)

(assert (=> d!1165005 (= c!682811 (is-Nil!41731 lt!1372515))))

(declare-fun e!2431401 () (Set C!23026))

(assert (=> d!1165005 (= (content!6281 lt!1372515) e!2431401)))

(declare-fun b!3930232 () Bool)

(assert (=> b!3930232 (= e!2431401 (as set.empty (Set C!23026)))))

(declare-fun b!3930233 () Bool)

(assert (=> b!3930233 (= e!2431401 (set.union (set.insert (h!47151 lt!1372515) (as set.empty (Set C!23026))) (content!6281 (t!325278 lt!1372515))))))

(assert (= (and d!1165005 c!682811) b!3930232))

(assert (= (and d!1165005 (not c!682811)) b!3930233))

(declare-fun m!4495749 () Bool)

(assert (=> b!3930233 m!4495749))

(declare-fun m!4495751 () Bool)

(assert (=> b!3930233 m!4495751))

(assert (=> d!1164615 d!1165005))

(declare-fun d!1165007 () Bool)

(declare-fun c!682812 () Bool)

(assert (=> d!1165007 (= c!682812 (is-Nil!41731 lt!1372190))))

(declare-fun e!2431402 () (Set C!23026))

(assert (=> d!1165007 (= (content!6281 lt!1372190) e!2431402)))

(declare-fun b!3930234 () Bool)

(assert (=> b!3930234 (= e!2431402 (as set.empty (Set C!23026)))))

(declare-fun b!3930235 () Bool)

(assert (=> b!3930235 (= e!2431402 (set.union (set.insert (h!47151 lt!1372190) (as set.empty (Set C!23026))) (content!6281 (t!325278 lt!1372190))))))

(assert (= (and d!1165007 c!682812) b!3930234))

(assert (= (and d!1165007 (not c!682812)) b!3930235))

(declare-fun m!4495753 () Bool)

(assert (=> b!3930235 m!4495753))

(assert (=> b!3930235 m!4495553))

(assert (=> d!1164615 d!1165007))

(declare-fun d!1165009 () Bool)

(declare-fun c!682813 () Bool)

(assert (=> d!1165009 (= c!682813 (is-Nil!41731 lt!1372227))))

(declare-fun e!2431403 () (Set C!23026))

(assert (=> d!1165009 (= (content!6281 lt!1372227) e!2431403)))

(declare-fun b!3930236 () Bool)

(assert (=> b!3930236 (= e!2431403 (as set.empty (Set C!23026)))))

(declare-fun b!3930237 () Bool)

(assert (=> b!3930237 (= e!2431403 (set.union (set.insert (h!47151 lt!1372227) (as set.empty (Set C!23026))) (content!6281 (t!325278 lt!1372227))))))

(assert (= (and d!1165009 c!682813) b!3930236))

(assert (= (and d!1165009 (not c!682813)) b!3930237))

(declare-fun m!4495755 () Bool)

(assert (=> b!3930237 m!4495755))

(declare-fun m!4495757 () Bool)

(assert (=> b!3930237 m!4495757))

(assert (=> d!1164615 d!1165009))

(declare-fun d!1165011 () Bool)

(declare-fun e!2431406 () Bool)

(assert (=> d!1165011 e!2431406))

(declare-fun res!1590270 () Bool)

(assert (=> d!1165011 (=> res!1590270 e!2431406)))

(assert (=> d!1165011 (= res!1590270 (isEmpty!24875 (_1!23641 (findLongestMatchInner!1259 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))) Nil!41731 (size!31308 Nil!41731) lt!1372223 lt!1372223 (size!31308 lt!1372223)))))))

(declare-fun lt!1372848 () Unit!60127)

(declare-fun choose!23374 (Regex!11420 List!41855) Unit!60127)

(assert (=> d!1165011 (= lt!1372848 (choose!23374 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))) lt!1372223))))

(assert (=> d!1165011 (validRegex!5197 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))))

(assert (=> d!1165011 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1232 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))) lt!1372223) lt!1372848)))

(declare-fun b!3930240 () Bool)

(assert (=> b!3930240 (= e!2431406 (matchR!5479 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))) (_1!23641 (findLongestMatchInner!1259 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))) Nil!41731 (size!31308 Nil!41731) lt!1372223 lt!1372223 (size!31308 lt!1372223)))))))

(assert (= (and d!1165011 (not res!1590270)) b!3930240))

(assert (=> d!1165011 m!4494901))

(declare-fun m!4495759 () Bool)

(assert (=> d!1165011 m!4495759))

(assert (=> d!1165011 m!4494901))

(assert (=> d!1165011 m!4494049))

(assert (=> d!1165011 m!4494903))

(assert (=> d!1165011 m!4494049))

(assert (=> d!1165011 m!4494919))

(assert (=> d!1165011 m!4494335))

(assert (=> b!3930240 m!4494901))

(assert (=> b!3930240 m!4494049))

(assert (=> b!3930240 m!4494901))

(assert (=> b!3930240 m!4494049))

(assert (=> b!3930240 m!4494903))

(assert (=> b!3930240 m!4494905))

(assert (=> b!3929664 d!1165011))

(declare-fun d!1165013 () Bool)

(assert (=> d!1165013 (= (seqFromList!4782 (_1!23641 lt!1372586)) (fromListB!2207 (_1!23641 lt!1372586)))))

(declare-fun bs!586160 () Bool)

(assert (= bs!586160 d!1165013))

(declare-fun m!4495761 () Bool)

(assert (=> bs!586160 m!4495761))

(assert (=> b!3929664 d!1165013))

(declare-fun d!1165015 () Bool)

(declare-fun lt!1372851 () Int)

(assert (=> d!1165015 (= lt!1372851 (size!31308 (list!15504 (seqFromList!4782 (_1!23641 lt!1372586)))))))

(declare-fun size!31315 (Conc!12726) Int)

(assert (=> d!1165015 (= lt!1372851 (size!31315 (c!682587 (seqFromList!4782 (_1!23641 lt!1372586)))))))

(assert (=> d!1165015 (= (size!31313 (seqFromList!4782 (_1!23641 lt!1372586))) lt!1372851)))

(declare-fun bs!586161 () Bool)

(assert (= bs!586161 d!1165015))

(assert (=> bs!586161 m!4494911))

(declare-fun m!4495763 () Bool)

(assert (=> bs!586161 m!4495763))

(assert (=> bs!586161 m!4495763))

(declare-fun m!4495765 () Bool)

(assert (=> bs!586161 m!4495765))

(declare-fun m!4495767 () Bool)

(assert (=> bs!586161 m!4495767))

(assert (=> b!3929664 d!1165015))

(declare-fun d!1165017 () Bool)

(assert (=> d!1165017 (= (isEmpty!24875 (_1!23641 (findLongestMatchInner!1259 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))) Nil!41731 (size!31308 Nil!41731) lt!1372223 lt!1372223 (size!31308 lt!1372223)))) (is-Nil!41731 (_1!23641 (findLongestMatchInner!1259 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))) Nil!41731 (size!31308 Nil!41731) lt!1372223 lt!1372223 (size!31308 lt!1372223)))))))

(assert (=> b!3929664 d!1165017))

(declare-fun bs!586162 () Bool)

(declare-fun d!1165019 () Bool)

(assert (= bs!586162 (and d!1165019 d!1164801)))

(declare-fun lambda!126570 () Int)

(assert (=> bs!586162 (= (and (= (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))) (toChars!8826 (transformation!6515 (h!47154 rules!2768)))) (= (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))) (toValue!8967 (transformation!6515 (h!47154 rules!2768))))) (= lambda!126570 lambda!126556))))

(declare-fun bs!586163 () Bool)

(assert (= bs!586163 (and d!1165019 d!1164913)))

(assert (=> bs!586163 (= (and (= (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72))))) (= (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))) (toValue!8967 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))))) (= lambda!126570 lambda!126566))))

(declare-fun b!3930245 () Bool)

(declare-fun e!2431409 () Bool)

(assert (=> b!3930245 (= e!2431409 true)))

(assert (=> d!1165019 e!2431409))

(assert (= d!1165019 b!3930245))

(assert (=> b!3930245 (< (dynLambda!17881 order!22291 (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))) (dynLambda!17880 order!22289 lambda!126570))))

(assert (=> b!3930245 (< (dynLambda!17879 order!22287 (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))) (dynLambda!17880 order!22289 lambda!126570))))

(assert (=> d!1165019 (= (list!15504 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))) (dynLambda!17876 (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))) (seqFromList!4782 (_1!23641 lt!1372586))))) (list!15504 (seqFromList!4782 (_1!23641 lt!1372586))))))

(declare-fun lt!1372854 () Unit!60127)

(declare-fun ForallOf!795 (Int BalanceConc!25046) Unit!60127)

(assert (=> d!1165019 (= lt!1372854 (ForallOf!795 lambda!126570 (seqFromList!4782 (_1!23641 lt!1372586))))))

(assert (=> d!1165019 (= (lemmaSemiInverse!1765 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))) (seqFromList!4782 (_1!23641 lt!1372586))) lt!1372854)))

(declare-fun b_lambda!114973 () Bool)

(assert (=> (not b_lambda!114973) (not d!1165019)))

(declare-fun t!325421 () Bool)

(declare-fun tb!234833 () Bool)

(assert (=> (and b!3929087 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))) t!325421) tb!234833))

(declare-fun e!2431410 () Bool)

(declare-fun tp!1196433 () Bool)

(declare-fun b!3930246 () Bool)

(assert (=> b!3930246 (= e!2431410 (and (inv!55928 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))) (dynLambda!17876 (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))) (seqFromList!4782 (_1!23641 lt!1372586)))))) tp!1196433))))

(declare-fun result!284578 () Bool)

(assert (=> tb!234833 (= result!284578 (and (inv!55929 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))) (dynLambda!17876 (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))) (seqFromList!4782 (_1!23641 lt!1372586))))) e!2431410))))

(assert (= tb!234833 b!3930246))

(declare-fun m!4495769 () Bool)

(assert (=> b!3930246 m!4495769))

(declare-fun m!4495771 () Bool)

(assert (=> tb!234833 m!4495771))

(assert (=> d!1165019 t!325421))

(declare-fun b_and!299855 () Bool)

(assert (= b_and!299847 (and (=> t!325421 result!284578) b_and!299855)))

(declare-fun tb!234835 () Bool)

(declare-fun t!325423 () Bool)

(assert (=> (and b!3929105 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))) t!325423) tb!234835))

(declare-fun result!284580 () Bool)

(assert (= result!284580 result!284578))

(assert (=> d!1165019 t!325423))

(declare-fun b_and!299857 () Bool)

(assert (= b_and!299845 (and (=> t!325423 result!284580) b_and!299857)))

(declare-fun t!325425 () Bool)

(declare-fun tb!234837 () Bool)

(assert (=> (and b!3929679 (= (toChars!8826 (transformation!6515 (h!47154 (t!325281 rules!2768)))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))) t!325425) tb!234837))

(declare-fun result!284582 () Bool)

(assert (= result!284582 result!284578))

(assert (=> d!1165019 t!325425))

(declare-fun b_and!299859 () Bool)

(assert (= b_and!299853 (and (=> t!325425 result!284582) b_and!299859)))

(declare-fun tb!234839 () Bool)

(declare-fun t!325427 () Bool)

(assert (=> (and b!3929093 (= (toChars!8826 (transformation!6515 (h!47154 rules!2768))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))) t!325427) tb!234839))

(declare-fun result!284584 () Bool)

(assert (= result!284584 result!284578))

(assert (=> d!1165019 t!325427))

(declare-fun b_and!299861 () Bool)

(assert (= b_and!299851 (and (=> t!325427 result!284584) b_and!299861)))

(declare-fun tb!234841 () Bool)

(declare-fun t!325429 () Bool)

(assert (=> (and b!3929693 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80))))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))) t!325429) tb!234841))

(declare-fun result!284586 () Bool)

(assert (= result!284586 result!284578))

(assert (=> d!1165019 t!325429))

(declare-fun b_and!299863 () Bool)

(assert (= b_and!299849 (and (=> t!325429 result!284586) b_and!299863)))

(declare-fun t!325431 () Bool)

(declare-fun tb!234843 () Bool)

(assert (=> (and b!3929724 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72))))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))) t!325431) tb!234843))

(declare-fun result!284588 () Bool)

(assert (= result!284588 result!284578))

(assert (=> d!1165019 t!325431))

(declare-fun b_and!299865 () Bool)

(assert (= b_and!299843 (and (=> t!325431 result!284588) b_and!299865)))

(declare-fun b_lambda!114975 () Bool)

(assert (=> (not b_lambda!114975) (not d!1165019)))

(declare-fun t!325433 () Bool)

(declare-fun tb!234845 () Bool)

(assert (=> (and b!3929093 (= (toValue!8967 (transformation!6515 (h!47154 rules!2768))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))) t!325433) tb!234845))

(declare-fun result!284590 () Bool)

(assert (=> tb!234845 (= result!284590 (inv!21 (dynLambda!17876 (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))) (seqFromList!4782 (_1!23641 lt!1372586)))))))

(declare-fun m!4495773 () Bool)

(assert (=> tb!234845 m!4495773))

(assert (=> d!1165019 t!325433))

(declare-fun b_and!299867 () Bool)

(assert (= b_and!299833 (and (=> t!325433 result!284590) b_and!299867)))

(declare-fun t!325435 () Bool)

(declare-fun tb!234847 () Bool)

(assert (=> (and b!3929679 (= (toValue!8967 (transformation!6515 (h!47154 (t!325281 rules!2768)))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))) t!325435) tb!234847))

(declare-fun result!284592 () Bool)

(assert (= result!284592 result!284590))

(assert (=> d!1165019 t!325435))

(declare-fun b_and!299869 () Bool)

(assert (= b_and!299839 (and (=> t!325435 result!284592) b_and!299869)))

(declare-fun t!325437 () Bool)

(declare-fun tb!234849 () Bool)

(assert (=> (and b!3929105 (= (toValue!8967 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))) t!325437) tb!234849))

(declare-fun result!284594 () Bool)

(assert (= result!284594 result!284590))

(assert (=> d!1165019 t!325437))

(declare-fun b_and!299871 () Bool)

(assert (= b_and!299831 (and (=> t!325437 result!284594) b_and!299871)))

(declare-fun tb!234851 () Bool)

(declare-fun t!325439 () Bool)

(assert (=> (and b!3929724 (= (toValue!8967 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72))))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))) t!325439) tb!234851))

(declare-fun result!284596 () Bool)

(assert (= result!284596 result!284590))

(assert (=> d!1165019 t!325439))

(declare-fun b_and!299873 () Bool)

(assert (= b_and!299835 (and (=> t!325439 result!284596) b_and!299873)))

(declare-fun t!325441 () Bool)

(declare-fun tb!234853 () Bool)

(assert (=> (and b!3929693 (= (toValue!8967 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80))))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))) t!325441) tb!234853))

(declare-fun result!284598 () Bool)

(assert (= result!284598 result!284590))

(assert (=> d!1165019 t!325441))

(declare-fun b_and!299875 () Bool)

(assert (= b_and!299837 (and (=> t!325441 result!284598) b_and!299875)))

(declare-fun t!325443 () Bool)

(declare-fun tb!234855 () Bool)

(assert (=> (and b!3929087 (= (toValue!8967 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))) t!325443) tb!234855))

(declare-fun result!284600 () Bool)

(assert (= result!284600 result!284590))

(assert (=> d!1165019 t!325443))

(declare-fun b_and!299877 () Bool)

(assert (= b_and!299841 (and (=> t!325443 result!284600) b_and!299877)))

(assert (=> d!1165019 m!4494911))

(assert (=> d!1165019 m!4495763))

(declare-fun m!4495775 () Bool)

(assert (=> d!1165019 m!4495775))

(declare-fun m!4495777 () Bool)

(assert (=> d!1165019 m!4495777))

(assert (=> d!1165019 m!4494911))

(declare-fun m!4495779 () Bool)

(assert (=> d!1165019 m!4495779))

(declare-fun m!4495781 () Bool)

(assert (=> d!1165019 m!4495781))

(assert (=> d!1165019 m!4495775))

(assert (=> d!1165019 m!4494911))

(assert (=> d!1165019 m!4495781))

(assert (=> b!3929664 d!1165019))

(assert (=> b!3929664 d!1164877))

(declare-fun d!1165021 () Bool)

(assert (=> d!1165021 (= (apply!9754 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))) (seqFromList!4782 (_1!23641 lt!1372586))) (dynLambda!17876 (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))) (seqFromList!4782 (_1!23641 lt!1372586))))))

(declare-fun b_lambda!114977 () Bool)

(assert (=> (not b_lambda!114977) (not d!1165021)))

(assert (=> d!1165021 t!325435))

(declare-fun b_and!299879 () Bool)

(assert (= b_and!299869 (and (=> t!325435 result!284592) b_and!299879)))

(assert (=> d!1165021 t!325443))

(declare-fun b_and!299881 () Bool)

(assert (= b_and!299877 (and (=> t!325443 result!284600) b_and!299881)))

(assert (=> d!1165021 t!325437))

(declare-fun b_and!299883 () Bool)

(assert (= b_and!299871 (and (=> t!325437 result!284594) b_and!299883)))

(assert (=> d!1165021 t!325433))

(declare-fun b_and!299885 () Bool)

(assert (= b_and!299867 (and (=> t!325433 result!284590) b_and!299885)))

(assert (=> d!1165021 t!325439))

(declare-fun b_and!299887 () Bool)

(assert (= b_and!299873 (and (=> t!325439 result!284596) b_and!299887)))

(assert (=> d!1165021 t!325441))

(declare-fun b_and!299889 () Bool)

(assert (= b_and!299875 (and (=> t!325441 result!284598) b_and!299889)))

(assert (=> d!1165021 m!4494911))

(assert (=> d!1165021 m!4495781))

(assert (=> b!3929664 d!1165021))

(assert (=> b!3929664 d!1164879))

(assert (=> b!3929664 d!1164635))

(declare-fun d!1165023 () Bool)

(declare-fun lt!1372855 () Int)

(assert (=> d!1165023 (>= lt!1372855 0)))

(declare-fun e!2431412 () Int)

(assert (=> d!1165023 (= lt!1372855 e!2431412)))

(declare-fun c!682815 () Bool)

(assert (=> d!1165023 (= c!682815 (is-Nil!41731 (_2!23638 lt!1372416)))))

(assert (=> d!1165023 (= (size!31308 (_2!23638 lt!1372416)) lt!1372855)))

(declare-fun b!3930247 () Bool)

(assert (=> b!3930247 (= e!2431412 0)))

(declare-fun b!3930248 () Bool)

(assert (=> b!3930248 (= e!2431412 (+ 1 (size!31308 (t!325278 (_2!23638 lt!1372416)))))))

(assert (= (and d!1165023 c!682815) b!3930247))

(assert (= (and d!1165023 (not c!682815)) b!3930248))

(declare-fun m!4495783 () Bool)

(assert (=> b!3930248 m!4495783))

(assert (=> b!3929349 d!1165023))

(assert (=> b!3929349 d!1164583))

(declare-fun d!1165025 () Bool)

(declare-fun lt!1372856 () Int)

(assert (=> d!1165025 (>= lt!1372856 0)))

(declare-fun e!2431413 () Int)

(assert (=> d!1165025 (= lt!1372856 e!2431413)))

(declare-fun c!682816 () Bool)

(assert (=> d!1165025 (= c!682816 (is-Nil!41731 lt!1372211))))

(assert (=> d!1165025 (= (size!31308 lt!1372211) lt!1372856)))

(declare-fun b!3930249 () Bool)

(assert (=> b!3930249 (= e!2431413 0)))

(declare-fun b!3930250 () Bool)

(assert (=> b!3930250 (= e!2431413 (+ 1 (size!31308 (t!325278 lt!1372211))))))

(assert (= (and d!1165025 c!682816) b!3930249))

(assert (= (and d!1165025 (not c!682816)) b!3930250))

(declare-fun m!4495785 () Bool)

(assert (=> b!3930250 m!4495785))

(assert (=> b!3929297 d!1165025))

(assert (=> b!3929297 d!1164477))

(declare-fun d!1165027 () Bool)

(declare-fun charsToBigInt!0 (List!41856 Int) Int)

(assert (=> d!1165027 (= (inv!15 (value!206313 (h!47153 suffixTokens!72))) (= (charsToBigInt!0 (text!47664 (value!206313 (h!47153 suffixTokens!72))) 0) (value!206309 (value!206313 (h!47153 suffixTokens!72)))))))

(declare-fun bs!586164 () Bool)

(assert (= bs!586164 d!1165027))

(declare-fun m!4495787 () Bool)

(assert (=> bs!586164 m!4495787))

(assert (=> b!3929424 d!1165027))

(declare-fun b!3930251 () Bool)

(declare-fun e!2431414 () List!41857)

(assert (=> b!3930251 (= e!2431414 suffixTokens!72)))

(declare-fun b!3930253 () Bool)

(declare-fun res!1590272 () Bool)

(declare-fun e!2431415 () Bool)

(assert (=> b!3930253 (=> (not res!1590272) (not e!2431415))))

(declare-fun lt!1372857 () List!41857)

(assert (=> b!3930253 (= res!1590272 (= (size!31311 lt!1372857) (+ (size!31311 (t!325280 lt!1372222)) (size!31311 suffixTokens!72))))))

(declare-fun d!1165029 () Bool)

(assert (=> d!1165029 e!2431415))

(declare-fun res!1590271 () Bool)

(assert (=> d!1165029 (=> (not res!1590271) (not e!2431415))))

(assert (=> d!1165029 (= res!1590271 (= (content!6282 lt!1372857) (set.union (content!6282 (t!325280 lt!1372222)) (content!6282 suffixTokens!72))))))

(assert (=> d!1165029 (= lt!1372857 e!2431414)))

(declare-fun c!682817 () Bool)

(assert (=> d!1165029 (= c!682817 (is-Nil!41733 (t!325280 lt!1372222)))))

(assert (=> d!1165029 (= (++!10787 (t!325280 lt!1372222) suffixTokens!72) lt!1372857)))

(declare-fun b!3930252 () Bool)

(assert (=> b!3930252 (= e!2431414 (Cons!41733 (h!47153 (t!325280 lt!1372222)) (++!10787 (t!325280 (t!325280 lt!1372222)) suffixTokens!72)))))

(declare-fun b!3930254 () Bool)

(assert (=> b!3930254 (= e!2431415 (or (not (= suffixTokens!72 Nil!41733)) (= lt!1372857 (t!325280 lt!1372222))))))

(assert (= (and d!1165029 c!682817) b!3930251))

(assert (= (and d!1165029 (not c!682817)) b!3930252))

(assert (= (and d!1165029 res!1590271) b!3930253))

(assert (= (and b!3930253 res!1590272) b!3930254))

(declare-fun m!4495789 () Bool)

(assert (=> b!3930253 m!4495789))

(assert (=> b!3930253 m!4495657))

(assert (=> b!3930253 m!4494449))

(declare-fun m!4495791 () Bool)

(assert (=> d!1165029 m!4495791))

(assert (=> d!1165029 m!4495481))

(assert (=> d!1165029 m!4494455))

(declare-fun m!4495793 () Bool)

(assert (=> b!3930252 m!4495793))

(assert (=> b!3929549 d!1165029))

(declare-fun d!1165031 () Bool)

(assert (=> d!1165031 (= (inv!55929 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) (value!206313 (h!47153 suffixTokens!72)))) (isBalanced!3639 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) (value!206313 (h!47153 suffixTokens!72))))))))

(declare-fun bs!586165 () Bool)

(assert (= bs!586165 d!1165031))

(declare-fun m!4495795 () Bool)

(assert (=> bs!586165 m!4495795))

(assert (=> tb!234713 d!1165031))

(declare-fun d!1165033 () Bool)

(declare-fun lt!1372858 () List!41855)

(assert (=> d!1165033 (= (++!10788 (t!325278 lt!1372190) lt!1372858) (tail!6068 prefix!426))))

(declare-fun e!2431416 () List!41855)

(assert (=> d!1165033 (= lt!1372858 e!2431416)))

(declare-fun c!682818 () Bool)

(assert (=> d!1165033 (= c!682818 (is-Cons!41731 (t!325278 lt!1372190)))))

(assert (=> d!1165033 (>= (size!31308 (tail!6068 prefix!426)) (size!31308 (t!325278 lt!1372190)))))

(assert (=> d!1165033 (= (getSuffix!2065 (tail!6068 prefix!426) (t!325278 lt!1372190)) lt!1372858)))

(declare-fun b!3930255 () Bool)

(assert (=> b!3930255 (= e!2431416 (getSuffix!2065 (tail!6068 (tail!6068 prefix!426)) (t!325278 (t!325278 lt!1372190))))))

(declare-fun b!3930256 () Bool)

(assert (=> b!3930256 (= e!2431416 (tail!6068 prefix!426))))

(assert (= (and d!1165033 c!682818) b!3930255))

(assert (= (and d!1165033 (not c!682818)) b!3930256))

(declare-fun m!4495797 () Bool)

(assert (=> d!1165033 m!4495797))

(assert (=> d!1165033 m!4494469))

(assert (=> d!1165033 m!4495401))

(assert (=> d!1165033 m!4494301))

(assert (=> b!3930255 m!4494469))

(assert (=> b!3930255 m!4495403))

(assert (=> b!3930255 m!4495403))

(declare-fun m!4495799 () Bool)

(assert (=> b!3930255 m!4495799))

(assert (=> b!3929409 d!1165033))

(assert (=> b!3929409 d!1164865))

(declare-fun b!3930257 () Bool)

(declare-fun e!2431417 () List!41857)

(assert (=> b!3930257 (= e!2431417 suffixTokens!72)))

(declare-fun b!3930259 () Bool)

(declare-fun res!1590274 () Bool)

(declare-fun e!2431418 () Bool)

(assert (=> b!3930259 (=> (not res!1590274) (not e!2431418))))

(declare-fun lt!1372859 () List!41857)

(assert (=> b!3930259 (= res!1590274 (= (size!31311 lt!1372859) (+ (size!31311 (t!325280 lt!1372217)) (size!31311 suffixTokens!72))))))

(declare-fun d!1165035 () Bool)

(assert (=> d!1165035 e!2431418))

(declare-fun res!1590273 () Bool)

(assert (=> d!1165035 (=> (not res!1590273) (not e!2431418))))

(assert (=> d!1165035 (= res!1590273 (= (content!6282 lt!1372859) (set.union (content!6282 (t!325280 lt!1372217)) (content!6282 suffixTokens!72))))))

(assert (=> d!1165035 (= lt!1372859 e!2431417)))

(declare-fun c!682819 () Bool)

(assert (=> d!1165035 (= c!682819 (is-Nil!41733 (t!325280 lt!1372217)))))

(assert (=> d!1165035 (= (++!10787 (t!325280 lt!1372217) suffixTokens!72) lt!1372859)))

(declare-fun b!3930258 () Bool)

(assert (=> b!3930258 (= e!2431417 (Cons!41733 (h!47153 (t!325280 lt!1372217)) (++!10787 (t!325280 (t!325280 lt!1372217)) suffixTokens!72)))))

(declare-fun b!3930260 () Bool)

(assert (=> b!3930260 (= e!2431418 (or (not (= suffixTokens!72 Nil!41733)) (= lt!1372859 (t!325280 lt!1372217))))))

(assert (= (and d!1165035 c!682819) b!3930257))

(assert (= (and d!1165035 (not c!682819)) b!3930258))

(assert (= (and d!1165035 res!1590273) b!3930259))

(assert (= (and b!3930259 res!1590274) b!3930260))

(declare-fun m!4495801 () Bool)

(assert (=> b!3930259 m!4495801))

(declare-fun m!4495803 () Bool)

(assert (=> b!3930259 m!4495803))

(assert (=> b!3930259 m!4494449))

(declare-fun m!4495805 () Bool)

(assert (=> d!1165035 m!4495805))

(declare-fun m!4495807 () Bool)

(assert (=> d!1165035 m!4495807))

(assert (=> d!1165035 m!4494455))

(declare-fun m!4495809 () Bool)

(assert (=> b!3930258 m!4495809))

(assert (=> b!3929402 d!1165035))

(declare-fun b!3930261 () Bool)

(declare-fun e!2431420 () Bool)

(assert (=> b!3930261 (= e!2431420 (nullable!3998 (regex!6515 (rule!9459 (_1!23637 (get!13793 lt!1372501))))))))

(declare-fun b!3930262 () Bool)

(declare-fun e!2431419 () Bool)

(assert (=> b!3930262 (= e!2431419 (= (head!8342 (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372501))))) (c!682586 (regex!6515 (rule!9459 (_1!23637 (get!13793 lt!1372501)))))))))

(declare-fun bm!284801 () Bool)

(declare-fun call!284806 () Bool)

(assert (=> bm!284801 (= call!284806 (isEmpty!24875 (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372501))))))))

(declare-fun b!3930263 () Bool)

(declare-fun e!2431424 () Bool)

(declare-fun lt!1372860 () Bool)

(assert (=> b!3930263 (= e!2431424 (not lt!1372860))))

(declare-fun d!1165037 () Bool)

(declare-fun e!2431422 () Bool)

(assert (=> d!1165037 e!2431422))

(declare-fun c!682820 () Bool)

(assert (=> d!1165037 (= c!682820 (is-EmptyExpr!11420 (regex!6515 (rule!9459 (_1!23637 (get!13793 lt!1372501))))))))

(assert (=> d!1165037 (= lt!1372860 e!2431420)))

(declare-fun c!682821 () Bool)

(assert (=> d!1165037 (= c!682821 (isEmpty!24875 (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372501))))))))

(assert (=> d!1165037 (validRegex!5197 (regex!6515 (rule!9459 (_1!23637 (get!13793 lt!1372501)))))))

(assert (=> d!1165037 (= (matchR!5479 (regex!6515 (rule!9459 (_1!23637 (get!13793 lt!1372501)))) (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372501))))) lt!1372860)))

(declare-fun b!3930264 () Bool)

(assert (=> b!3930264 (= e!2431422 e!2431424)))

(declare-fun c!682822 () Bool)

(assert (=> b!3930264 (= c!682822 (is-EmptyLang!11420 (regex!6515 (rule!9459 (_1!23637 (get!13793 lt!1372501))))))))

(declare-fun b!3930265 () Bool)

(declare-fun e!2431423 () Bool)

(declare-fun e!2431425 () Bool)

(assert (=> b!3930265 (= e!2431423 e!2431425)))

(declare-fun res!1590276 () Bool)

(assert (=> b!3930265 (=> res!1590276 e!2431425)))

(assert (=> b!3930265 (= res!1590276 call!284806)))

(declare-fun b!3930266 () Bool)

(assert (=> b!3930266 (= e!2431420 (matchR!5479 (derivativeStep!3451 (regex!6515 (rule!9459 (_1!23637 (get!13793 lt!1372501)))) (head!8342 (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372501)))))) (tail!6068 (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372501)))))))))

(declare-fun b!3930267 () Bool)

(declare-fun res!1590279 () Bool)

(assert (=> b!3930267 (=> res!1590279 e!2431425)))

(assert (=> b!3930267 (= res!1590279 (not (isEmpty!24875 (tail!6068 (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372501))))))))))

(declare-fun b!3930268 () Bool)

(assert (=> b!3930268 (= e!2431425 (not (= (head!8342 (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372501))))) (c!682586 (regex!6515 (rule!9459 (_1!23637 (get!13793 lt!1372501))))))))))

(declare-fun b!3930269 () Bool)

(declare-fun e!2431421 () Bool)

(assert (=> b!3930269 (= e!2431421 e!2431423)))

(declare-fun res!1590275 () Bool)

(assert (=> b!3930269 (=> (not res!1590275) (not e!2431423))))

(assert (=> b!3930269 (= res!1590275 (not lt!1372860))))

(declare-fun b!3930270 () Bool)

(declare-fun res!1590277 () Bool)

(assert (=> b!3930270 (=> res!1590277 e!2431421)))

(assert (=> b!3930270 (= res!1590277 e!2431419)))

(declare-fun res!1590280 () Bool)

(assert (=> b!3930270 (=> (not res!1590280) (not e!2431419))))

(assert (=> b!3930270 (= res!1590280 lt!1372860)))

(declare-fun b!3930271 () Bool)

(declare-fun res!1590282 () Bool)

(assert (=> b!3930271 (=> (not res!1590282) (not e!2431419))))

(assert (=> b!3930271 (= res!1590282 (not call!284806))))

(declare-fun b!3930272 () Bool)

(declare-fun res!1590281 () Bool)

(assert (=> b!3930272 (=> res!1590281 e!2431421)))

(assert (=> b!3930272 (= res!1590281 (not (is-ElementMatch!11420 (regex!6515 (rule!9459 (_1!23637 (get!13793 lt!1372501)))))))))

(assert (=> b!3930272 (= e!2431424 e!2431421)))

(declare-fun b!3930273 () Bool)

(assert (=> b!3930273 (= e!2431422 (= lt!1372860 call!284806))))

(declare-fun b!3930274 () Bool)

(declare-fun res!1590278 () Bool)

(assert (=> b!3930274 (=> (not res!1590278) (not e!2431419))))

(assert (=> b!3930274 (= res!1590278 (isEmpty!24875 (tail!6068 (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372501)))))))))

(assert (= (and d!1165037 c!682821) b!3930261))

(assert (= (and d!1165037 (not c!682821)) b!3930266))

(assert (= (and d!1165037 c!682820) b!3930273))

(assert (= (and d!1165037 (not c!682820)) b!3930264))

(assert (= (and b!3930264 c!682822) b!3930263))

(assert (= (and b!3930264 (not c!682822)) b!3930272))

(assert (= (and b!3930272 (not res!1590281)) b!3930270))

(assert (= (and b!3930270 res!1590280) b!3930271))

(assert (= (and b!3930271 res!1590282) b!3930274))

(assert (= (and b!3930274 res!1590278) b!3930262))

(assert (= (and b!3930270 (not res!1590277)) b!3930269))

(assert (= (and b!3930269 res!1590275) b!3930265))

(assert (= (and b!3930265 (not res!1590276)) b!3930267))

(assert (= (and b!3930267 (not res!1590279)) b!3930268))

(assert (= (or b!3930273 b!3930265 b!3930271) bm!284801))

(assert (=> b!3930266 m!4494635))

(declare-fun m!4495811 () Bool)

(assert (=> b!3930266 m!4495811))

(assert (=> b!3930266 m!4495811))

(declare-fun m!4495813 () Bool)

(assert (=> b!3930266 m!4495813))

(assert (=> b!3930266 m!4494635))

(declare-fun m!4495815 () Bool)

(assert (=> b!3930266 m!4495815))

(assert (=> b!3930266 m!4495813))

(assert (=> b!3930266 m!4495815))

(declare-fun m!4495817 () Bool)

(assert (=> b!3930266 m!4495817))

(assert (=> b!3930267 m!4494635))

(assert (=> b!3930267 m!4495815))

(assert (=> b!3930267 m!4495815))

(declare-fun m!4495819 () Bool)

(assert (=> b!3930267 m!4495819))

(assert (=> b!3930268 m!4494635))

(assert (=> b!3930268 m!4495811))

(assert (=> b!3930274 m!4494635))

(assert (=> b!3930274 m!4495815))

(assert (=> b!3930274 m!4495815))

(assert (=> b!3930274 m!4495819))

(assert (=> b!3930262 m!4494635))

(assert (=> b!3930262 m!4495811))

(declare-fun m!4495821 () Bool)

(assert (=> b!3930261 m!4495821))

(assert (=> d!1165037 m!4494635))

(declare-fun m!4495823 () Bool)

(assert (=> d!1165037 m!4495823))

(declare-fun m!4495825 () Bool)

(assert (=> d!1165037 m!4495825))

(assert (=> bm!284801 m!4494635))

(assert (=> bm!284801 m!4495823))

(assert (=> b!3929518 d!1165037))

(assert (=> b!3929518 d!1164825))

(assert (=> b!3929518 d!1164821))

(assert (=> b!3929518 d!1164823))

(declare-fun d!1165039 () Bool)

(declare-fun c!682823 () Bool)

(assert (=> d!1165039 (= c!682823 (is-Nil!41733 lt!1372520))))

(declare-fun e!2431426 () (Set Token!12168))

(assert (=> d!1165039 (= (content!6282 lt!1372520) e!2431426)))

(declare-fun b!3930275 () Bool)

(assert (=> b!3930275 (= e!2431426 (as set.empty (Set Token!12168)))))

(declare-fun b!3930276 () Bool)

(assert (=> b!3930276 (= e!2431426 (set.union (set.insert (h!47153 lt!1372520) (as set.empty (Set Token!12168))) (content!6282 (t!325280 lt!1372520))))))

(assert (= (and d!1165039 c!682823) b!3930275))

(assert (= (and d!1165039 (not c!682823)) b!3930276))

(declare-fun m!4495827 () Bool)

(assert (=> b!3930276 m!4495827))

(declare-fun m!4495829 () Bool)

(assert (=> b!3930276 m!4495829))

(assert (=> d!1164621 d!1165039))

(assert (=> d!1164621 d!1164887))

(declare-fun d!1165041 () Bool)

(declare-fun c!682824 () Bool)

(assert (=> d!1165041 (= c!682824 (is-Nil!41733 suffixTokens!72))))

(declare-fun e!2431427 () (Set Token!12168))

(assert (=> d!1165041 (= (content!6282 suffixTokens!72) e!2431427)))

(declare-fun b!3930277 () Bool)

(assert (=> b!3930277 (= e!2431427 (as set.empty (Set Token!12168)))))

(declare-fun b!3930278 () Bool)

(assert (=> b!3930278 (= e!2431427 (set.union (set.insert (h!47153 suffixTokens!72) (as set.empty (Set Token!12168))) (content!6282 (t!325280 suffixTokens!72))))))

(assert (= (and d!1165041 c!682824) b!3930277))

(assert (= (and d!1165041 (not c!682824)) b!3930278))

(declare-fun m!4495831 () Bool)

(assert (=> b!3930278 m!4495831))

(declare-fun m!4495833 () Bool)

(assert (=> b!3930278 m!4495833))

(assert (=> d!1164621 d!1165041))

(declare-fun d!1165043 () Bool)

(declare-fun c!682825 () Bool)

(assert (=> d!1165043 (= c!682825 (is-Nil!41733 lt!1372456))))

(declare-fun e!2431428 () (Set Token!12168))

(assert (=> d!1165043 (= (content!6282 lt!1372456) e!2431428)))

(declare-fun b!3930279 () Bool)

(assert (=> b!3930279 (= e!2431428 (as set.empty (Set Token!12168)))))

(declare-fun b!3930280 () Bool)

(assert (=> b!3930280 (= e!2431428 (set.union (set.insert (h!47153 lt!1372456) (as set.empty (Set Token!12168))) (content!6282 (t!325280 lt!1372456))))))

(assert (= (and d!1165043 c!682825) b!3930279))

(assert (= (and d!1165043 (not c!682825)) b!3930280))

(declare-fun m!4495835 () Bool)

(assert (=> b!3930280 m!4495835))

(declare-fun m!4495837 () Bool)

(assert (=> b!3930280 m!4495837))

(assert (=> d!1164543 d!1165043))

(declare-fun d!1165045 () Bool)

(declare-fun c!682826 () Bool)

(assert (=> d!1165045 (= c!682826 (is-Nil!41733 prefixTokens!80))))

(declare-fun e!2431429 () (Set Token!12168))

(assert (=> d!1165045 (= (content!6282 prefixTokens!80) e!2431429)))

(declare-fun b!3930281 () Bool)

(assert (=> b!3930281 (= e!2431429 (as set.empty (Set Token!12168)))))

(declare-fun b!3930282 () Bool)

(assert (=> b!3930282 (= e!2431429 (set.union (set.insert (h!47153 prefixTokens!80) (as set.empty (Set Token!12168))) (content!6282 (t!325280 prefixTokens!80))))))

(assert (= (and d!1165045 c!682826) b!3930281))

(assert (= (and d!1165045 (not c!682826)) b!3930282))

(declare-fun m!4495839 () Bool)

(assert (=> b!3930282 m!4495839))

(assert (=> b!3930282 m!4495623))

(assert (=> d!1164543 d!1165045))

(assert (=> d!1164543 d!1165041))

(declare-fun d!1165047 () Bool)

(declare-fun lt!1372861 () Bool)

(assert (=> d!1165047 (= lt!1372861 (set.member (rule!9459 (_1!23637 (get!13793 lt!1372501))) (content!6285 rules!2768)))))

(declare-fun e!2431430 () Bool)

(assert (=> d!1165047 (= lt!1372861 e!2431430)))

(declare-fun res!1590283 () Bool)

(assert (=> d!1165047 (=> (not res!1590283) (not e!2431430))))

(assert (=> d!1165047 (= res!1590283 (is-Cons!41734 rules!2768))))

(assert (=> d!1165047 (= (contains!8362 rules!2768 (rule!9459 (_1!23637 (get!13793 lt!1372501)))) lt!1372861)))

(declare-fun b!3930283 () Bool)

(declare-fun e!2431431 () Bool)

(assert (=> b!3930283 (= e!2431430 e!2431431)))

(declare-fun res!1590284 () Bool)

(assert (=> b!3930283 (=> res!1590284 e!2431431)))

(assert (=> b!3930283 (= res!1590284 (= (h!47154 rules!2768) (rule!9459 (_1!23637 (get!13793 lt!1372501)))))))

(declare-fun b!3930284 () Bool)

(assert (=> b!3930284 (= e!2431431 (contains!8362 (t!325281 rules!2768) (rule!9459 (_1!23637 (get!13793 lt!1372501)))))))

(assert (= (and d!1165047 res!1590283) b!3930283))

(assert (= (and b!3930283 (not res!1590284)) b!3930284))

(assert (=> d!1165047 m!4495375))

(declare-fun m!4495841 () Bool)

(assert (=> d!1165047 m!4495841))

(declare-fun m!4495843 () Bool)

(assert (=> b!3930284 m!4495843))

(assert (=> b!3929521 d!1165047))

(assert (=> b!3929521 d!1164825))

(declare-fun d!1165049 () Bool)

(declare-fun lt!1372862 () Int)

(assert (=> d!1165049 (>= lt!1372862 0)))

(declare-fun e!2431432 () Int)

(assert (=> d!1165049 (= lt!1372862 e!2431432)))

(declare-fun c!682827 () Bool)

(assert (=> d!1165049 (= c!682827 (is-Nil!41731 lt!1372431))))

(assert (=> d!1165049 (= (size!31308 lt!1372431) lt!1372862)))

(declare-fun b!3930285 () Bool)

(assert (=> b!3930285 (= e!2431432 0)))

(declare-fun b!3930286 () Bool)

(assert (=> b!3930286 (= e!2431432 (+ 1 (size!31308 (t!325278 lt!1372431))))))

(assert (= (and d!1165049 c!682827) b!3930285))

(assert (= (and d!1165049 (not c!682827)) b!3930286))

(declare-fun m!4495845 () Bool)

(assert (=> b!3930286 m!4495845))

(assert (=> b!3929379 d!1165049))

(declare-fun d!1165051 () Bool)

(declare-fun lt!1372863 () Int)

(assert (=> d!1165051 (>= lt!1372863 0)))

(declare-fun e!2431433 () Int)

(assert (=> d!1165051 (= lt!1372863 e!2431433)))

(declare-fun c!682828 () Bool)

(assert (=> d!1165051 (= c!682828 (is-Nil!41731 lt!1372193))))

(assert (=> d!1165051 (= (size!31308 lt!1372193) lt!1372863)))

(declare-fun b!3930287 () Bool)

(assert (=> b!3930287 (= e!2431433 0)))

(declare-fun b!3930288 () Bool)

(assert (=> b!3930288 (= e!2431433 (+ 1 (size!31308 (t!325278 lt!1372193))))))

(assert (= (and d!1165051 c!682828) b!3930287))

(assert (= (and d!1165051 (not c!682828)) b!3930288))

(assert (=> b!3930288 m!4495515))

(assert (=> b!3929379 d!1165051))

(assert (=> b!3929379 d!1164581))

(declare-fun b!3930289 () Bool)

(declare-fun e!2431435 () Bool)

(assert (=> b!3930289 (= e!2431435 (nullable!3998 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))))))

(declare-fun b!3930290 () Bool)

(declare-fun e!2431434 () Bool)

(assert (=> b!3930290 (= e!2431434 (= (head!8342 (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372587))))) (c!682586 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))))))

(declare-fun bm!284802 () Bool)

(declare-fun call!284807 () Bool)

(assert (=> bm!284802 (= call!284807 (isEmpty!24875 (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372587))))))))

(declare-fun b!3930291 () Bool)

(declare-fun e!2431439 () Bool)

(declare-fun lt!1372864 () Bool)

(assert (=> b!3930291 (= e!2431439 (not lt!1372864))))

(declare-fun d!1165053 () Bool)

(declare-fun e!2431437 () Bool)

(assert (=> d!1165053 e!2431437))

(declare-fun c!682829 () Bool)

(assert (=> d!1165053 (= c!682829 (is-EmptyExpr!11420 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))))))

(assert (=> d!1165053 (= lt!1372864 e!2431435)))

(declare-fun c!682830 () Bool)

(assert (=> d!1165053 (= c!682830 (isEmpty!24875 (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372587))))))))

(assert (=> d!1165053 (validRegex!5197 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))))

(assert (=> d!1165053 (= (matchR!5479 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))) (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372587))))) lt!1372864)))

(declare-fun b!3930292 () Bool)

(assert (=> b!3930292 (= e!2431437 e!2431439)))

(declare-fun c!682831 () Bool)

(assert (=> b!3930292 (= c!682831 (is-EmptyLang!11420 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))))))

(declare-fun b!3930293 () Bool)

(declare-fun e!2431438 () Bool)

(declare-fun e!2431440 () Bool)

(assert (=> b!3930293 (= e!2431438 e!2431440)))

(declare-fun res!1590286 () Bool)

(assert (=> b!3930293 (=> res!1590286 e!2431440)))

(assert (=> b!3930293 (= res!1590286 call!284807)))

(declare-fun b!3930294 () Bool)

(assert (=> b!3930294 (= e!2431435 (matchR!5479 (derivativeStep!3451 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))) (head!8342 (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372587)))))) (tail!6068 (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372587)))))))))

(declare-fun b!3930295 () Bool)

(declare-fun res!1590289 () Bool)

(assert (=> b!3930295 (=> res!1590289 e!2431440)))

(assert (=> b!3930295 (= res!1590289 (not (isEmpty!24875 (tail!6068 (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372587))))))))))

(declare-fun b!3930296 () Bool)

(assert (=> b!3930296 (= e!2431440 (not (= (head!8342 (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372587))))) (c!682586 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))))))))

(declare-fun b!3930297 () Bool)

(declare-fun e!2431436 () Bool)

(assert (=> b!3930297 (= e!2431436 e!2431438)))

(declare-fun res!1590285 () Bool)

(assert (=> b!3930297 (=> (not res!1590285) (not e!2431438))))

(assert (=> b!3930297 (= res!1590285 (not lt!1372864))))

(declare-fun b!3930298 () Bool)

(declare-fun res!1590287 () Bool)

(assert (=> b!3930298 (=> res!1590287 e!2431436)))

(assert (=> b!3930298 (= res!1590287 e!2431434)))

(declare-fun res!1590290 () Bool)

(assert (=> b!3930298 (=> (not res!1590290) (not e!2431434))))

(assert (=> b!3930298 (= res!1590290 lt!1372864)))

(declare-fun b!3930299 () Bool)

(declare-fun res!1590292 () Bool)

(assert (=> b!3930299 (=> (not res!1590292) (not e!2431434))))

(assert (=> b!3930299 (= res!1590292 (not call!284807))))

(declare-fun b!3930300 () Bool)

(declare-fun res!1590291 () Bool)

(assert (=> b!3930300 (=> res!1590291 e!2431436)))

(assert (=> b!3930300 (= res!1590291 (not (is-ElementMatch!11420 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))))))

(assert (=> b!3930300 (= e!2431439 e!2431436)))

(declare-fun b!3930301 () Bool)

(assert (=> b!3930301 (= e!2431437 (= lt!1372864 call!284807))))

(declare-fun b!3930302 () Bool)

(declare-fun res!1590288 () Bool)

(assert (=> b!3930302 (=> (not res!1590288) (not e!2431434))))

(assert (=> b!3930302 (= res!1590288 (isEmpty!24875 (tail!6068 (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372587)))))))))

(assert (= (and d!1165053 c!682830) b!3930289))

(assert (= (and d!1165053 (not c!682830)) b!3930294))

(assert (= (and d!1165053 c!682829) b!3930301))

(assert (= (and d!1165053 (not c!682829)) b!3930292))

(assert (= (and b!3930292 c!682831) b!3930291))

(assert (= (and b!3930292 (not c!682831)) b!3930300))

(assert (= (and b!3930300 (not res!1590291)) b!3930298))

(assert (= (and b!3930298 res!1590290) b!3930299))

(assert (= (and b!3930299 res!1590292) b!3930302))

(assert (= (and b!3930302 res!1590288) b!3930290))

(assert (= (and b!3930298 (not res!1590287)) b!3930297))

(assert (= (and b!3930297 res!1590285) b!3930293))

(assert (= (and b!3930293 (not res!1590286)) b!3930295))

(assert (= (and b!3930295 (not res!1590289)) b!3930296))

(assert (= (or b!3930301 b!3930293 b!3930299) bm!284802))

(assert (=> b!3930294 m!4494931))

(declare-fun m!4495847 () Bool)

(assert (=> b!3930294 m!4495847))

(assert (=> b!3930294 m!4495847))

(declare-fun m!4495849 () Bool)

(assert (=> b!3930294 m!4495849))

(assert (=> b!3930294 m!4494931))

(declare-fun m!4495851 () Bool)

(assert (=> b!3930294 m!4495851))

(assert (=> b!3930294 m!4495849))

(assert (=> b!3930294 m!4495851))

(declare-fun m!4495853 () Bool)

(assert (=> b!3930294 m!4495853))

(assert (=> b!3930295 m!4494931))

(assert (=> b!3930295 m!4495851))

(assert (=> b!3930295 m!4495851))

(declare-fun m!4495855 () Bool)

(assert (=> b!3930295 m!4495855))

(assert (=> b!3930296 m!4494931))

(assert (=> b!3930296 m!4495847))

(assert (=> b!3930302 m!4494931))

(assert (=> b!3930302 m!4495851))

(assert (=> b!3930302 m!4495851))

(assert (=> b!3930302 m!4495855))

(assert (=> b!3930290 m!4494931))

(assert (=> b!3930290 m!4495847))

(assert (=> b!3930289 m!4494337))

(assert (=> d!1165053 m!4494931))

(declare-fun m!4495857 () Bool)

(assert (=> d!1165053 m!4495857))

(assert (=> d!1165053 m!4494335))

(assert (=> bm!284802 m!4494931))

(assert (=> bm!284802 m!4495857))

(assert (=> b!3929660 d!1165053))

(assert (=> b!3929660 d!1164965))

(assert (=> b!3929660 d!1164967))

(assert (=> b!3929660 d!1164829))

(declare-fun d!1165055 () Bool)

(assert (=> d!1165055 (= (isDefined!6946 lt!1372501) (not (isEmpty!24881 lt!1372501)))))

(declare-fun bs!586166 () Bool)

(assert (= bs!586166 d!1165055))

(assert (=> bs!586166 m!4494623))

(assert (=> b!3929514 d!1165055))

(declare-fun d!1165057 () Bool)

(declare-fun e!2431443 () Bool)

(assert (=> d!1165057 e!2431443))

(declare-fun res!1590295 () Bool)

(assert (=> d!1165057 (=> (not res!1590295) (not e!2431443))))

(declare-fun lt!1372867 () BalanceConc!25046)

(assert (=> d!1165057 (= res!1590295 (= (list!15504 lt!1372867) lt!1372190))))

(declare-fun fromList!829 (List!41855) Conc!12726)

(assert (=> d!1165057 (= lt!1372867 (BalanceConc!25047 (fromList!829 lt!1372190)))))

(assert (=> d!1165057 (= (fromListB!2207 lt!1372190) lt!1372867)))

(declare-fun b!3930305 () Bool)

(assert (=> b!3930305 (= e!2431443 (isBalanced!3639 (fromList!829 lt!1372190)))))

(assert (= (and d!1165057 res!1590295) b!3930305))

(declare-fun m!4495859 () Bool)

(assert (=> d!1165057 m!4495859))

(declare-fun m!4495861 () Bool)

(assert (=> d!1165057 m!4495861))

(assert (=> b!3930305 m!4495861))

(assert (=> b!3930305 m!4495861))

(declare-fun m!4495863 () Bool)

(assert (=> b!3930305 m!4495863))

(assert (=> d!1164481 d!1165057))

(declare-fun d!1165059 () Bool)

(assert (=> d!1165059 (= lt!1372190 prefix!426)))

(assert (=> d!1165059 true))

(declare-fun _$60!798 () Unit!60127)

(assert (=> d!1165059 (= (choose!23358 lt!1372190 prefix!426 lt!1372223) _$60!798)))

(assert (=> d!1164589 d!1165059))

(declare-fun d!1165061 () Bool)

(declare-fun e!2431445 () Bool)

(assert (=> d!1165061 e!2431445))

(declare-fun res!1590296 () Bool)

(assert (=> d!1165061 (=> res!1590296 e!2431445)))

(declare-fun lt!1372868 () Bool)

(assert (=> d!1165061 (= res!1590296 (not lt!1372868))))

(declare-fun e!2431444 () Bool)

(assert (=> d!1165061 (= lt!1372868 e!2431444)))

(declare-fun res!1590299 () Bool)

(assert (=> d!1165061 (=> res!1590299 e!2431444)))

(assert (=> d!1165061 (= res!1590299 (is-Nil!41731 lt!1372190))))

(assert (=> d!1165061 (= (isPrefix!3610 lt!1372190 lt!1372223) lt!1372868)))

(declare-fun b!3930306 () Bool)

(declare-fun e!2431446 () Bool)

(assert (=> b!3930306 (= e!2431444 e!2431446)))

(declare-fun res!1590298 () Bool)

(assert (=> b!3930306 (=> (not res!1590298) (not e!2431446))))

(assert (=> b!3930306 (= res!1590298 (not (is-Nil!41731 lt!1372223)))))

(declare-fun b!3930307 () Bool)

(declare-fun res!1590297 () Bool)

(assert (=> b!3930307 (=> (not res!1590297) (not e!2431446))))

(assert (=> b!3930307 (= res!1590297 (= (head!8342 lt!1372190) (head!8342 lt!1372223)))))

(declare-fun b!3930309 () Bool)

(assert (=> b!3930309 (= e!2431445 (>= (size!31308 lt!1372223) (size!31308 lt!1372190)))))

(declare-fun b!3930308 () Bool)

(assert (=> b!3930308 (= e!2431446 (isPrefix!3610 (tail!6068 lt!1372190) (tail!6068 lt!1372223)))))

(assert (= (and d!1165061 (not res!1590299)) b!3930306))

(assert (= (and b!3930306 res!1590298) b!3930307))

(assert (= (and b!3930307 res!1590297) b!3930308))

(assert (= (and d!1165061 (not res!1590296)) b!3930309))

(assert (=> b!3930307 m!4494313))

(assert (=> b!3930307 m!4494599))

(assert (=> b!3930309 m!4494049))

(assert (=> b!3930309 m!4494105))

(assert (=> b!3930308 m!4494319))

(assert (=> b!3930308 m!4494289))

(assert (=> b!3930308 m!4494319))

(assert (=> b!3930308 m!4494289))

(declare-fun m!4495865 () Bool)

(assert (=> b!3930308 m!4495865))

(assert (=> d!1164589 d!1165061))

(declare-fun d!1165063 () Bool)

(declare-fun lt!1372869 () Int)

(assert (=> d!1165063 (>= lt!1372869 0)))

(declare-fun e!2431447 () Int)

(assert (=> d!1165063 (= lt!1372869 e!2431447)))

(declare-fun c!682833 () Bool)

(assert (=> d!1165063 (= c!682833 (is-Nil!41733 (_1!23638 lt!1372425)))))

(assert (=> d!1165063 (= (size!31311 (_1!23638 lt!1372425)) lt!1372869)))

(declare-fun b!3930310 () Bool)

(assert (=> b!3930310 (= e!2431447 0)))

(declare-fun b!3930311 () Bool)

(assert (=> b!3930311 (= e!2431447 (+ 1 (size!31311 (t!325280 (_1!23638 lt!1372425)))))))

(assert (= (and d!1165063 c!682833) b!3930310))

(assert (= (and d!1165063 (not c!682833)) b!3930311))

(declare-fun m!4495867 () Bool)

(assert (=> b!3930311 m!4495867))

(assert (=> d!1164507 d!1165063))

(declare-fun b!3930312 () Bool)

(declare-fun res!1590301 () Bool)

(declare-fun e!2431449 () Bool)

(assert (=> b!3930312 (=> (not res!1590301) (not e!2431449))))

(declare-fun lt!1372872 () Option!8935)

(assert (=> b!3930312 (= res!1590301 (= (++!10788 (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372872)))) (_2!23637 (get!13793 lt!1372872))) lt!1372187))))

(declare-fun b!3930313 () Bool)

(declare-fun e!2431450 () Bool)

(assert (=> b!3930313 (= e!2431450 e!2431449)))

(declare-fun res!1590305 () Bool)

(assert (=> b!3930313 (=> (not res!1590305) (not e!2431449))))

(assert (=> b!3930313 (= res!1590305 (isDefined!6946 lt!1372872))))

(declare-fun b!3930314 () Bool)

(declare-fun e!2431448 () Option!8935)

(declare-fun call!284808 () Option!8935)

(assert (=> b!3930314 (= e!2431448 call!284808)))

(declare-fun b!3930315 () Bool)

(declare-fun res!1590303 () Bool)

(assert (=> b!3930315 (=> (not res!1590303) (not e!2431449))))

(assert (=> b!3930315 (= res!1590303 (= (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372872)))) (originalCharacters!7115 (_1!23637 (get!13793 lt!1372872)))))))

(declare-fun b!3930316 () Bool)

(declare-fun lt!1372870 () Option!8935)

(declare-fun lt!1372871 () Option!8935)

(assert (=> b!3930316 (= e!2431448 (ite (and (is-None!8934 lt!1372870) (is-None!8934 lt!1372871)) None!8934 (ite (is-None!8934 lt!1372871) lt!1372870 (ite (is-None!8934 lt!1372870) lt!1372871 (ite (>= (size!31307 (_1!23637 (v!39260 lt!1372870))) (size!31307 (_1!23637 (v!39260 lt!1372871)))) lt!1372870 lt!1372871)))))))

(assert (=> b!3930316 (= lt!1372870 call!284808)))

(assert (=> b!3930316 (= lt!1372871 (maxPrefix!3408 thiss!20629 (t!325281 rules!2768) lt!1372187))))

(declare-fun d!1165065 () Bool)

(assert (=> d!1165065 e!2431450))

(declare-fun res!1590304 () Bool)

(assert (=> d!1165065 (=> res!1590304 e!2431450)))

(assert (=> d!1165065 (= res!1590304 (isEmpty!24881 lt!1372872))))

(assert (=> d!1165065 (= lt!1372872 e!2431448)))

(declare-fun c!682834 () Bool)

(assert (=> d!1165065 (= c!682834 (and (is-Cons!41734 rules!2768) (is-Nil!41734 (t!325281 rules!2768))))))

(declare-fun lt!1372874 () Unit!60127)

(declare-fun lt!1372873 () Unit!60127)

(assert (=> d!1165065 (= lt!1372874 lt!1372873)))

(assert (=> d!1165065 (isPrefix!3610 lt!1372187 lt!1372187)))

(assert (=> d!1165065 (= lt!1372873 (lemmaIsPrefixRefl!2277 lt!1372187 lt!1372187))))

(assert (=> d!1165065 (rulesValidInductive!2347 thiss!20629 rules!2768)))

(assert (=> d!1165065 (= (maxPrefix!3408 thiss!20629 rules!2768 lt!1372187) lt!1372872)))

(declare-fun b!3930317 () Bool)

(declare-fun res!1590302 () Bool)

(assert (=> b!3930317 (=> (not res!1590302) (not e!2431449))))

(assert (=> b!3930317 (= res!1590302 (matchR!5479 (regex!6515 (rule!9459 (_1!23637 (get!13793 lt!1372872)))) (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372872))))))))

(declare-fun b!3930318 () Bool)

(declare-fun res!1590306 () Bool)

(assert (=> b!3930318 (=> (not res!1590306) (not e!2431449))))

(assert (=> b!3930318 (= res!1590306 (< (size!31308 (_2!23637 (get!13793 lt!1372872))) (size!31308 lt!1372187)))))

(declare-fun bm!284803 () Bool)

(assert (=> bm!284803 (= call!284808 (maxPrefixOneRule!2478 thiss!20629 (h!47154 rules!2768) lt!1372187))))

(declare-fun b!3930319 () Bool)

(declare-fun res!1590300 () Bool)

(assert (=> b!3930319 (=> (not res!1590300) (not e!2431449))))

(assert (=> b!3930319 (= res!1590300 (= (value!206313 (_1!23637 (get!13793 lt!1372872))) (apply!9754 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372872)))) (seqFromList!4782 (originalCharacters!7115 (_1!23637 (get!13793 lt!1372872)))))))))

(declare-fun b!3930320 () Bool)

(assert (=> b!3930320 (= e!2431449 (contains!8362 rules!2768 (rule!9459 (_1!23637 (get!13793 lt!1372872)))))))

(assert (= (and d!1165065 c!682834) b!3930314))

(assert (= (and d!1165065 (not c!682834)) b!3930316))

(assert (= (or b!3930314 b!3930316) bm!284803))

(assert (= (and d!1165065 (not res!1590304)) b!3930313))

(assert (= (and b!3930313 res!1590305) b!3930315))

(assert (= (and b!3930315 res!1590303) b!3930318))

(assert (= (and b!3930318 res!1590306) b!3930312))

(assert (= (and b!3930312 res!1590301) b!3930319))

(assert (= (and b!3930319 res!1590300) b!3930317))

(assert (= (and b!3930317 res!1590302) b!3930320))

(declare-fun m!4495869 () Bool)

(assert (=> b!3930316 m!4495869))

(declare-fun m!4495871 () Bool)

(assert (=> d!1165065 m!4495871))

(declare-fun m!4495873 () Bool)

(assert (=> d!1165065 m!4495873))

(declare-fun m!4495875 () Bool)

(assert (=> d!1165065 m!4495875))

(assert (=> d!1165065 m!4494629))

(declare-fun m!4495877 () Bool)

(assert (=> b!3930317 m!4495877))

(declare-fun m!4495879 () Bool)

(assert (=> b!3930317 m!4495879))

(assert (=> b!3930317 m!4495879))

(declare-fun m!4495881 () Bool)

(assert (=> b!3930317 m!4495881))

(assert (=> b!3930317 m!4495881))

(declare-fun m!4495883 () Bool)

(assert (=> b!3930317 m!4495883))

(assert (=> b!3930312 m!4495877))

(assert (=> b!3930312 m!4495879))

(assert (=> b!3930312 m!4495879))

(assert (=> b!3930312 m!4495881))

(assert (=> b!3930312 m!4495881))

(declare-fun m!4495885 () Bool)

(assert (=> b!3930312 m!4495885))

(declare-fun m!4495887 () Bool)

(assert (=> b!3930313 m!4495887))

(assert (=> b!3930319 m!4495877))

(declare-fun m!4495889 () Bool)

(assert (=> b!3930319 m!4495889))

(assert (=> b!3930319 m!4495889))

(declare-fun m!4495891 () Bool)

(assert (=> b!3930319 m!4495891))

(assert (=> b!3930320 m!4495877))

(declare-fun m!4495893 () Bool)

(assert (=> b!3930320 m!4495893))

(assert (=> b!3930315 m!4495877))

(assert (=> b!3930315 m!4495879))

(assert (=> b!3930315 m!4495879))

(assert (=> b!3930315 m!4495881))

(assert (=> b!3930318 m!4495877))

(declare-fun m!4495895 () Bool)

(assert (=> b!3930318 m!4495895))

(assert (=> b!3930318 m!4494381))

(declare-fun m!4495897 () Bool)

(assert (=> bm!284803 m!4495897))

(assert (=> d!1164507 d!1165065))

(declare-fun d!1165067 () Bool)

(declare-fun lt!1372875 () Int)

(assert (=> d!1165067 (>= lt!1372875 0)))

(declare-fun e!2431451 () Int)

(assert (=> d!1165067 (= lt!1372875 e!2431451)))

(declare-fun c!682835 () Bool)

(assert (=> d!1165067 (= c!682835 (is-Nil!41733 (_1!23638 lt!1372461)))))

(assert (=> d!1165067 (= (size!31311 (_1!23638 lt!1372461)) lt!1372875)))

(declare-fun b!3930321 () Bool)

(assert (=> b!3930321 (= e!2431451 0)))

(declare-fun b!3930322 () Bool)

(assert (=> b!3930322 (= e!2431451 (+ 1 (size!31311 (t!325280 (_1!23638 lt!1372461)))))))

(assert (= (and d!1165067 c!682835) b!3930321))

(assert (= (and d!1165067 (not c!682835)) b!3930322))

(declare-fun m!4495899 () Bool)

(assert (=> b!3930322 m!4495899))

(assert (=> d!1164555 d!1165067))

(declare-fun b!3930323 () Bool)

(declare-fun res!1590308 () Bool)

(declare-fun e!2431453 () Bool)

(assert (=> b!3930323 (=> (not res!1590308) (not e!2431453))))

(declare-fun lt!1372878 () Option!8935)

(assert (=> b!3930323 (= res!1590308 (= (++!10788 (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372878)))) (_2!23637 (get!13793 lt!1372878))) suffix!1176))))

(declare-fun b!3930324 () Bool)

(declare-fun e!2431454 () Bool)

(assert (=> b!3930324 (= e!2431454 e!2431453)))

(declare-fun res!1590312 () Bool)

(assert (=> b!3930324 (=> (not res!1590312) (not e!2431453))))

(assert (=> b!3930324 (= res!1590312 (isDefined!6946 lt!1372878))))

(declare-fun b!3930325 () Bool)

(declare-fun e!2431452 () Option!8935)

(declare-fun call!284809 () Option!8935)

(assert (=> b!3930325 (= e!2431452 call!284809)))

(declare-fun b!3930326 () Bool)

(declare-fun res!1590310 () Bool)

(assert (=> b!3930326 (=> (not res!1590310) (not e!2431453))))

(assert (=> b!3930326 (= res!1590310 (= (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372878)))) (originalCharacters!7115 (_1!23637 (get!13793 lt!1372878)))))))

(declare-fun b!3930327 () Bool)

(declare-fun lt!1372876 () Option!8935)

(declare-fun lt!1372877 () Option!8935)

(assert (=> b!3930327 (= e!2431452 (ite (and (is-None!8934 lt!1372876) (is-None!8934 lt!1372877)) None!8934 (ite (is-None!8934 lt!1372877) lt!1372876 (ite (is-None!8934 lt!1372876) lt!1372877 (ite (>= (size!31307 (_1!23637 (v!39260 lt!1372876))) (size!31307 (_1!23637 (v!39260 lt!1372877)))) lt!1372876 lt!1372877)))))))

(assert (=> b!3930327 (= lt!1372876 call!284809)))

(assert (=> b!3930327 (= lt!1372877 (maxPrefix!3408 thiss!20629 (t!325281 rules!2768) suffix!1176))))

(declare-fun d!1165069 () Bool)

(assert (=> d!1165069 e!2431454))

(declare-fun res!1590311 () Bool)

(assert (=> d!1165069 (=> res!1590311 e!2431454)))

(assert (=> d!1165069 (= res!1590311 (isEmpty!24881 lt!1372878))))

(assert (=> d!1165069 (= lt!1372878 e!2431452)))

(declare-fun c!682836 () Bool)

(assert (=> d!1165069 (= c!682836 (and (is-Cons!41734 rules!2768) (is-Nil!41734 (t!325281 rules!2768))))))

(declare-fun lt!1372880 () Unit!60127)

(declare-fun lt!1372879 () Unit!60127)

(assert (=> d!1165069 (= lt!1372880 lt!1372879)))

(assert (=> d!1165069 (isPrefix!3610 suffix!1176 suffix!1176)))

(assert (=> d!1165069 (= lt!1372879 (lemmaIsPrefixRefl!2277 suffix!1176 suffix!1176))))

(assert (=> d!1165069 (rulesValidInductive!2347 thiss!20629 rules!2768)))

(assert (=> d!1165069 (= (maxPrefix!3408 thiss!20629 rules!2768 suffix!1176) lt!1372878)))

(declare-fun b!3930328 () Bool)

(declare-fun res!1590309 () Bool)

(assert (=> b!3930328 (=> (not res!1590309) (not e!2431453))))

(assert (=> b!3930328 (= res!1590309 (matchR!5479 (regex!6515 (rule!9459 (_1!23637 (get!13793 lt!1372878)))) (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372878))))))))

(declare-fun b!3930329 () Bool)

(declare-fun res!1590313 () Bool)

(assert (=> b!3930329 (=> (not res!1590313) (not e!2431453))))

(assert (=> b!3930329 (= res!1590313 (< (size!31308 (_2!23637 (get!13793 lt!1372878))) (size!31308 suffix!1176)))))

(declare-fun bm!284804 () Bool)

(assert (=> bm!284804 (= call!284809 (maxPrefixOneRule!2478 thiss!20629 (h!47154 rules!2768) suffix!1176))))

(declare-fun b!3930330 () Bool)

(declare-fun res!1590307 () Bool)

(assert (=> b!3930330 (=> (not res!1590307) (not e!2431453))))

(assert (=> b!3930330 (= res!1590307 (= (value!206313 (_1!23637 (get!13793 lt!1372878))) (apply!9754 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372878)))) (seqFromList!4782 (originalCharacters!7115 (_1!23637 (get!13793 lt!1372878)))))))))

(declare-fun b!3930331 () Bool)

(assert (=> b!3930331 (= e!2431453 (contains!8362 rules!2768 (rule!9459 (_1!23637 (get!13793 lt!1372878)))))))

(assert (= (and d!1165069 c!682836) b!3930325))

(assert (= (and d!1165069 (not c!682836)) b!3930327))

(assert (= (or b!3930325 b!3930327) bm!284804))

(assert (= (and d!1165069 (not res!1590311)) b!3930324))

(assert (= (and b!3930324 res!1590312) b!3930326))

(assert (= (and b!3930326 res!1590310) b!3930329))

(assert (= (and b!3930329 res!1590313) b!3930323))

(assert (= (and b!3930323 res!1590308) b!3930330))

(assert (= (and b!3930330 res!1590307) b!3930328))

(assert (= (and b!3930328 res!1590309) b!3930331))

(declare-fun m!4495901 () Bool)

(assert (=> b!3930327 m!4495901))

(declare-fun m!4495903 () Bool)

(assert (=> d!1165069 m!4495903))

(declare-fun m!4495905 () Bool)

(assert (=> d!1165069 m!4495905))

(declare-fun m!4495907 () Bool)

(assert (=> d!1165069 m!4495907))

(assert (=> d!1165069 m!4494629))

(declare-fun m!4495909 () Bool)

(assert (=> b!3930328 m!4495909))

(declare-fun m!4495911 () Bool)

(assert (=> b!3930328 m!4495911))

(assert (=> b!3930328 m!4495911))

(declare-fun m!4495913 () Bool)

(assert (=> b!3930328 m!4495913))

(assert (=> b!3930328 m!4495913))

(declare-fun m!4495915 () Bool)

(assert (=> b!3930328 m!4495915))

(assert (=> b!3930323 m!4495909))

(assert (=> b!3930323 m!4495911))

(assert (=> b!3930323 m!4495911))

(assert (=> b!3930323 m!4495913))

(assert (=> b!3930323 m!4495913))

(declare-fun m!4495917 () Bool)

(assert (=> b!3930323 m!4495917))

(declare-fun m!4495919 () Bool)

(assert (=> b!3930324 m!4495919))

(assert (=> b!3930330 m!4495909))

(declare-fun m!4495921 () Bool)

(assert (=> b!3930330 m!4495921))

(assert (=> b!3930330 m!4495921))

(declare-fun m!4495923 () Bool)

(assert (=> b!3930330 m!4495923))

(assert (=> b!3930331 m!4495909))

(declare-fun m!4495925 () Bool)

(assert (=> b!3930331 m!4495925))

(assert (=> b!3930326 m!4495909))

(assert (=> b!3930326 m!4495911))

(assert (=> b!3930326 m!4495911))

(assert (=> b!3930326 m!4495913))

(assert (=> b!3930329 m!4495909))

(declare-fun m!4495927 () Bool)

(assert (=> b!3930329 m!4495927))

(assert (=> b!3930329 m!4493967))

(declare-fun m!4495929 () Bool)

(assert (=> bm!284804 m!4495929))

(assert (=> d!1164555 d!1165069))

(declare-fun d!1165071 () Bool)

(declare-fun lt!1372881 () Int)

(assert (=> d!1165071 (>= lt!1372881 0)))

(declare-fun e!2431455 () Int)

(assert (=> d!1165071 (= lt!1372881 e!2431455)))

(declare-fun c!682837 () Bool)

(assert (=> d!1165071 (= c!682837 (is-Nil!41731 lt!1372406))))

(assert (=> d!1165071 (= (size!31308 lt!1372406) lt!1372881)))

(declare-fun b!3930332 () Bool)

(assert (=> b!3930332 (= e!2431455 0)))

(declare-fun b!3930333 () Bool)

(assert (=> b!3930333 (= e!2431455 (+ 1 (size!31308 (t!325278 lt!1372406))))))

(assert (= (and d!1165071 c!682837) b!3930332))

(assert (= (and d!1165071 (not c!682837)) b!3930333))

(declare-fun m!4495931 () Bool)

(assert (=> b!3930333 m!4495931))

(assert (=> b!3929308 d!1165071))

(assert (=> b!3929308 d!1164477))

(assert (=> b!3929308 d!1164583))

(declare-fun b!3930334 () Bool)

(declare-fun e!2431457 () List!41855)

(assert (=> b!3930334 (= e!2431457 lt!1372451)))

(declare-fun b!3930336 () Bool)

(declare-fun res!1590314 () Bool)

(declare-fun e!2431456 () Bool)

(assert (=> b!3930336 (=> (not res!1590314) (not e!2431456))))

(declare-fun lt!1372882 () List!41855)

(assert (=> b!3930336 (= res!1590314 (= (size!31308 lt!1372882) (+ (size!31308 lt!1372190) (size!31308 lt!1372451))))))

(declare-fun b!3930337 () Bool)

(assert (=> b!3930337 (= e!2431456 (or (not (= lt!1372451 Nil!41731)) (= lt!1372882 lt!1372190)))))

(declare-fun b!3930335 () Bool)

(assert (=> b!3930335 (= e!2431457 (Cons!41731 (h!47151 lt!1372190) (++!10788 (t!325278 lt!1372190) lt!1372451)))))

(declare-fun d!1165073 () Bool)

(assert (=> d!1165073 e!2431456))

(declare-fun res!1590315 () Bool)

(assert (=> d!1165073 (=> (not res!1590315) (not e!2431456))))

(assert (=> d!1165073 (= res!1590315 (= (content!6281 lt!1372882) (set.union (content!6281 lt!1372190) (content!6281 lt!1372451))))))

(assert (=> d!1165073 (= lt!1372882 e!2431457)))

(declare-fun c!682838 () Bool)

(assert (=> d!1165073 (= c!682838 (is-Nil!41731 lt!1372190))))

(assert (=> d!1165073 (= (++!10788 lt!1372190 lt!1372451) lt!1372882)))

(assert (= (and d!1165073 c!682838) b!3930334))

(assert (= (and d!1165073 (not c!682838)) b!3930335))

(assert (= (and d!1165073 res!1590315) b!3930336))

(assert (= (and b!3930336 res!1590314) b!3930337))

(declare-fun m!4495933 () Bool)

(assert (=> b!3930336 m!4495933))

(assert (=> b!3930336 m!4494105))

(declare-fun m!4495935 () Bool)

(assert (=> b!3930336 m!4495935))

(declare-fun m!4495937 () Bool)

(assert (=> b!3930335 m!4495937))

(declare-fun m!4495939 () Bool)

(assert (=> d!1165073 m!4495939))

(assert (=> d!1165073 m!4494331))

(declare-fun m!4495941 () Bool)

(assert (=> d!1165073 m!4495941))

(assert (=> d!1164533 d!1165073))

(assert (=> d!1164533 d!1164603))

(assert (=> d!1164533 d!1164477))

(declare-fun d!1165075 () Bool)

(declare-fun lt!1372883 () Int)

(assert (=> d!1165075 (>= lt!1372883 0)))

(declare-fun e!2431458 () Int)

(assert (=> d!1165075 (= lt!1372883 e!2431458)))

(declare-fun c!682839 () Bool)

(assert (=> d!1165075 (= c!682839 (is-Nil!41731 lt!1372515))))

(assert (=> d!1165075 (= (size!31308 lt!1372515) lt!1372883)))

(declare-fun b!3930338 () Bool)

(assert (=> b!3930338 (= e!2431458 0)))

(declare-fun b!3930339 () Bool)

(assert (=> b!3930339 (= e!2431458 (+ 1 (size!31308 (t!325278 lt!1372515))))))

(assert (= (and d!1165075 c!682839) b!3930338))

(assert (= (and d!1165075 (not c!682839)) b!3930339))

(declare-fun m!4495943 () Bool)

(assert (=> b!3930339 m!4495943))

(assert (=> b!3929542 d!1165075))

(assert (=> b!3929542 d!1164477))

(assert (=> b!3929542 d!1164917))

(declare-fun d!1165077 () Bool)

(declare-fun lt!1372884 () Int)

(assert (=> d!1165077 (>= lt!1372884 0)))

(declare-fun e!2431459 () Int)

(assert (=> d!1165077 (= lt!1372884 e!2431459)))

(declare-fun c!682840 () Bool)

(assert (=> d!1165077 (= c!682840 (is-Nil!41731 (t!325278 (_2!23637 lt!1372230))))))

(assert (=> d!1165077 (= (size!31308 (t!325278 (_2!23637 lt!1372230))) lt!1372884)))

(declare-fun b!3930340 () Bool)

(assert (=> b!3930340 (= e!2431459 0)))

(declare-fun b!3930341 () Bool)

(assert (=> b!3930341 (= e!2431459 (+ 1 (size!31308 (t!325278 (t!325278 (_2!23637 lt!1372230))))))))

(assert (= (and d!1165077 c!682840) b!3930340))

(assert (= (and d!1165077 (not c!682840)) b!3930341))

(declare-fun m!4495945 () Bool)

(assert (=> b!3930341 m!4495945))

(assert (=> b!3929561 d!1165077))

(declare-fun d!1165079 () Bool)

(assert (=> d!1165079 (= (list!15504 lt!1372400) (list!15506 (c!682587 lt!1372400)))))

(declare-fun bs!586167 () Bool)

(assert (= bs!586167 d!1165079))

(declare-fun m!4495947 () Bool)

(assert (=> bs!586167 m!4495947))

(assert (=> d!1164479 d!1165079))

(declare-fun d!1165081 () Bool)

(declare-fun res!1590330 () Bool)

(declare-fun e!2431479 () Bool)

(assert (=> d!1165081 (=> res!1590330 e!2431479)))

(assert (=> d!1165081 (= res!1590330 (is-ElementMatch!11420 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))))))

(assert (=> d!1165081 (= (validRegex!5197 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))) e!2431479)))

(declare-fun b!3930360 () Bool)

(declare-fun e!2431474 () Bool)

(declare-fun e!2431480 () Bool)

(assert (=> b!3930360 (= e!2431474 e!2431480)))

(declare-fun c!682845 () Bool)

(assert (=> b!3930360 (= c!682845 (is-Union!11420 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))))))

(declare-fun b!3930361 () Bool)

(declare-fun e!2431478 () Bool)

(declare-fun e!2431475 () Bool)

(assert (=> b!3930361 (= e!2431478 e!2431475)))

(declare-fun res!1590327 () Bool)

(assert (=> b!3930361 (=> (not res!1590327) (not e!2431475))))

(declare-fun call!284817 () Bool)

(assert (=> b!3930361 (= res!1590327 call!284817)))

(declare-fun bm!284811 () Bool)

(declare-fun call!284818 () Bool)

(assert (=> bm!284811 (= call!284818 (validRegex!5197 (ite c!682845 (regOne!23353 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))) (regTwo!23352 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))))))))

(declare-fun bm!284812 () Bool)

(declare-fun call!284816 () Bool)

(declare-fun c!682846 () Bool)

(assert (=> bm!284812 (= call!284816 (validRegex!5197 (ite c!682846 (reg!11749 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))) (ite c!682845 (regTwo!23353 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))) (regOne!23352 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))))))))

(declare-fun b!3930362 () Bool)

(assert (=> b!3930362 (= e!2431479 e!2431474)))

(assert (=> b!3930362 (= c!682846 (is-Star!11420 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))))))

(declare-fun b!3930363 () Bool)

(declare-fun res!1590328 () Bool)

(declare-fun e!2431477 () Bool)

(assert (=> b!3930363 (=> (not res!1590328) (not e!2431477))))

(assert (=> b!3930363 (= res!1590328 call!284818)))

(assert (=> b!3930363 (= e!2431480 e!2431477)))

(declare-fun b!3930364 () Bool)

(declare-fun e!2431476 () Bool)

(assert (=> b!3930364 (= e!2431476 call!284816)))

(declare-fun b!3930365 () Bool)

(declare-fun res!1590329 () Bool)

(assert (=> b!3930365 (=> res!1590329 e!2431478)))

(assert (=> b!3930365 (= res!1590329 (not (is-Concat!18166 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))))))

(assert (=> b!3930365 (= e!2431480 e!2431478)))

(declare-fun b!3930366 () Bool)

(assert (=> b!3930366 (= e!2431477 call!284817)))

(declare-fun b!3930367 () Bool)

(assert (=> b!3930367 (= e!2431475 call!284818)))

(declare-fun b!3930368 () Bool)

(assert (=> b!3930368 (= e!2431474 e!2431476)))

(declare-fun res!1590326 () Bool)

(assert (=> b!3930368 (= res!1590326 (not (nullable!3998 (reg!11749 (regex!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))))))))

(assert (=> b!3930368 (=> (not res!1590326) (not e!2431476))))

(declare-fun bm!284813 () Bool)

(assert (=> bm!284813 (= call!284817 call!284816)))

(assert (= (and d!1165081 (not res!1590330)) b!3930362))

(assert (= (and b!3930362 c!682846) b!3930368))

(assert (= (and b!3930362 (not c!682846)) b!3930360))

(assert (= (and b!3930368 res!1590326) b!3930364))

(assert (= (and b!3930360 c!682845) b!3930363))

(assert (= (and b!3930360 (not c!682845)) b!3930365))

(assert (= (and b!3930363 res!1590328) b!3930366))

(assert (= (and b!3930365 (not res!1590329)) b!3930361))

(assert (= (and b!3930361 res!1590327) b!3930367))

(assert (= (or b!3930366 b!3930361) bm!284813))

(assert (= (or b!3930363 b!3930367) bm!284811))

(assert (= (or b!3930364 bm!284813) bm!284812))

(declare-fun m!4495949 () Bool)

(assert (=> bm!284811 m!4495949))

(declare-fun m!4495951 () Bool)

(assert (=> bm!284812 m!4495951))

(declare-fun m!4495953 () Bool)

(assert (=> b!3930368 m!4495953))

(assert (=> d!1164487 d!1165081))

(declare-fun d!1165083 () Bool)

(declare-fun e!2431482 () Bool)

(assert (=> d!1165083 e!2431482))

(declare-fun res!1590331 () Bool)

(assert (=> d!1165083 (=> res!1590331 e!2431482)))

(declare-fun lt!1372885 () Bool)

(assert (=> d!1165083 (= res!1590331 (not lt!1372885))))

(declare-fun e!2431481 () Bool)

(assert (=> d!1165083 (= lt!1372885 e!2431481)))

(declare-fun res!1590334 () Bool)

(assert (=> d!1165083 (=> res!1590334 e!2431481)))

(assert (=> d!1165083 (= res!1590334 (is-Nil!41731 lt!1372190))))

(assert (=> d!1165083 (= (isPrefix!3610 lt!1372190 (++!10788 lt!1372190 (_2!23637 (v!39260 lt!1372235)))) lt!1372885)))

(declare-fun b!3930369 () Bool)

(declare-fun e!2431483 () Bool)

(assert (=> b!3930369 (= e!2431481 e!2431483)))

(declare-fun res!1590333 () Bool)

(assert (=> b!3930369 (=> (not res!1590333) (not e!2431483))))

(assert (=> b!3930369 (= res!1590333 (not (is-Nil!41731 (++!10788 lt!1372190 (_2!23637 (v!39260 lt!1372235))))))))

(declare-fun b!3930370 () Bool)

(declare-fun res!1590332 () Bool)

(assert (=> b!3930370 (=> (not res!1590332) (not e!2431483))))

(assert (=> b!3930370 (= res!1590332 (= (head!8342 lt!1372190) (head!8342 (++!10788 lt!1372190 (_2!23637 (v!39260 lt!1372235))))))))

(declare-fun b!3930372 () Bool)

(assert (=> b!3930372 (= e!2431482 (>= (size!31308 (++!10788 lt!1372190 (_2!23637 (v!39260 lt!1372235)))) (size!31308 lt!1372190)))))

(declare-fun b!3930371 () Bool)

(assert (=> b!3930371 (= e!2431483 (isPrefix!3610 (tail!6068 lt!1372190) (tail!6068 (++!10788 lt!1372190 (_2!23637 (v!39260 lt!1372235))))))))

(assert (= (and d!1165083 (not res!1590334)) b!3930369))

(assert (= (and b!3930369 res!1590333) b!3930370))

(assert (= (and b!3930370 res!1590332) b!3930371))

(assert (= (and d!1165083 (not res!1590331)) b!3930372))

(assert (=> b!3930370 m!4494313))

(assert (=> b!3930370 m!4494087))

(declare-fun m!4495955 () Bool)

(assert (=> b!3930370 m!4495955))

(assert (=> b!3930372 m!4494087))

(declare-fun m!4495957 () Bool)

(assert (=> b!3930372 m!4495957))

(assert (=> b!3930372 m!4494105))

(assert (=> b!3930371 m!4494319))

(assert (=> b!3930371 m!4494087))

(declare-fun m!4495959 () Bool)

(assert (=> b!3930371 m!4495959))

(assert (=> b!3930371 m!4494319))

(assert (=> b!3930371 m!4495959))

(declare-fun m!4495961 () Bool)

(assert (=> b!3930371 m!4495961))

(assert (=> d!1164473 d!1165083))

(assert (=> d!1164473 d!1164485))

(declare-fun d!1165085 () Bool)

(assert (=> d!1165085 (isPrefix!3610 lt!1372190 (++!10788 lt!1372190 (_2!23637 (v!39260 lt!1372235))))))

(assert (=> d!1165085 true))

(declare-fun _$46!1565 () Unit!60127)

(assert (=> d!1165085 (= (choose!23350 lt!1372190 (_2!23637 (v!39260 lt!1372235))) _$46!1565)))

(declare-fun bs!586168 () Bool)

(assert (= bs!586168 d!1165085))

(assert (=> bs!586168 m!4494087))

(assert (=> bs!586168 m!4494087))

(assert (=> bs!586168 m!4494297))

(assert (=> d!1164473 d!1165085))

(declare-fun d!1165087 () Bool)

(declare-fun e!2431485 () Bool)

(assert (=> d!1165087 e!2431485))

(declare-fun res!1590335 () Bool)

(assert (=> d!1165087 (=> res!1590335 e!2431485)))

(declare-fun lt!1372886 () Bool)

(assert (=> d!1165087 (= res!1590335 (not lt!1372886))))

(declare-fun e!2431484 () Bool)

(assert (=> d!1165087 (= lt!1372886 e!2431484)))

(declare-fun res!1590338 () Bool)

(assert (=> d!1165087 (=> res!1590338 e!2431484)))

(assert (=> d!1165087 (= res!1590338 (is-Nil!41731 lt!1372190))))

(assert (=> d!1165087 (= (isPrefix!3610 lt!1372190 (++!10788 lt!1372190 lt!1372227)) lt!1372886)))

(declare-fun b!3930373 () Bool)

(declare-fun e!2431486 () Bool)

(assert (=> b!3930373 (= e!2431484 e!2431486)))

(declare-fun res!1590337 () Bool)

(assert (=> b!3930373 (=> (not res!1590337) (not e!2431486))))

(assert (=> b!3930373 (= res!1590337 (not (is-Nil!41731 (++!10788 lt!1372190 lt!1372227))))))

(declare-fun b!3930374 () Bool)

(declare-fun res!1590336 () Bool)

(assert (=> b!3930374 (=> (not res!1590336) (not e!2431486))))

(assert (=> b!3930374 (= res!1590336 (= (head!8342 lt!1372190) (head!8342 (++!10788 lt!1372190 lt!1372227))))))

(declare-fun b!3930376 () Bool)

(assert (=> b!3930376 (= e!2431485 (>= (size!31308 (++!10788 lt!1372190 lt!1372227)) (size!31308 lt!1372190)))))

(declare-fun b!3930375 () Bool)

(assert (=> b!3930375 (= e!2431486 (isPrefix!3610 (tail!6068 lt!1372190) (tail!6068 (++!10788 lt!1372190 lt!1372227))))))

(assert (= (and d!1165087 (not res!1590338)) b!3930373))

(assert (= (and b!3930373 res!1590337) b!3930374))

(assert (= (and b!3930374 res!1590336) b!3930375))

(assert (= (and d!1165087 (not res!1590335)) b!3930376))

(assert (=> b!3930374 m!4494313))

(assert (=> b!3930374 m!4494061))

(declare-fun m!4495963 () Bool)

(assert (=> b!3930374 m!4495963))

(assert (=> b!3930376 m!4494061))

(declare-fun m!4495965 () Bool)

(assert (=> b!3930376 m!4495965))

(assert (=> b!3930376 m!4494105))

(assert (=> b!3930375 m!4494319))

(assert (=> b!3930375 m!4494061))

(declare-fun m!4495967 () Bool)

(assert (=> b!3930375 m!4495967))

(assert (=> b!3930375 m!4494319))

(assert (=> b!3930375 m!4495967))

(declare-fun m!4495969 () Bool)

(assert (=> b!3930375 m!4495969))

(assert (=> d!1164553 d!1165087))

(assert (=> d!1164553 d!1164615))

(declare-fun d!1165089 () Bool)

(assert (=> d!1165089 (isPrefix!3610 lt!1372190 (++!10788 lt!1372190 lt!1372227))))

(assert (=> d!1165089 true))

(declare-fun _$46!1566 () Unit!60127)

(assert (=> d!1165089 (= (choose!23350 lt!1372190 lt!1372227) _$46!1566)))

(declare-fun bs!586169 () Bool)

(assert (= bs!586169 d!1165089))

(assert (=> bs!586169 m!4494061))

(assert (=> bs!586169 m!4494061))

(assert (=> bs!586169 m!4494517))

(assert (=> d!1164553 d!1165089))

(assert (=> d!1164605 d!1164621))

(declare-fun d!1165091 () Bool)

(assert (=> d!1165091 (= (++!10787 (++!10787 lt!1372210 lt!1372222) suffixTokens!72) (++!10787 lt!1372210 (++!10787 lt!1372222 suffixTokens!72)))))

(assert (=> d!1165091 true))

(declare-fun _$52!2210 () Unit!60127)

(assert (=> d!1165091 (= (choose!23363 lt!1372210 lt!1372222 suffixTokens!72) _$52!2210)))

(declare-fun bs!586170 () Bool)

(assert (= bs!586170 d!1165091))

(assert (=> bs!586170 m!4493989))

(assert (=> bs!586170 m!4493989))

(assert (=> bs!586170 m!4493991))

(assert (=> bs!586170 m!4494111))

(assert (=> bs!586170 m!4494111))

(assert (=> bs!586170 m!4494661))

(assert (=> d!1164605 d!1165091))

(assert (=> d!1164605 d!1164607))

(declare-fun b!3930377 () Bool)

(declare-fun e!2431487 () List!41857)

(assert (=> b!3930377 (= e!2431487 (++!10787 lt!1372222 suffixTokens!72))))

(declare-fun b!3930379 () Bool)

(declare-fun res!1590340 () Bool)

(declare-fun e!2431488 () Bool)

(assert (=> b!3930379 (=> (not res!1590340) (not e!2431488))))

(declare-fun lt!1372887 () List!41857)

(assert (=> b!3930379 (= res!1590340 (= (size!31311 lt!1372887) (+ (size!31311 lt!1372210) (size!31311 (++!10787 lt!1372222 suffixTokens!72)))))))

(declare-fun d!1165093 () Bool)

(assert (=> d!1165093 e!2431488))

(declare-fun res!1590339 () Bool)

(assert (=> d!1165093 (=> (not res!1590339) (not e!2431488))))

(assert (=> d!1165093 (= res!1590339 (= (content!6282 lt!1372887) (set.union (content!6282 lt!1372210) (content!6282 (++!10787 lt!1372222 suffixTokens!72)))))))

(assert (=> d!1165093 (= lt!1372887 e!2431487)))

(declare-fun c!682847 () Bool)

(assert (=> d!1165093 (= c!682847 (is-Nil!41733 lt!1372210))))

(assert (=> d!1165093 (= (++!10787 lt!1372210 (++!10787 lt!1372222 suffixTokens!72)) lt!1372887)))

(declare-fun b!3930378 () Bool)

(assert (=> b!3930378 (= e!2431487 (Cons!41733 (h!47153 lt!1372210) (++!10787 (t!325280 lt!1372210) (++!10787 lt!1372222 suffixTokens!72))))))

(declare-fun b!3930380 () Bool)

(assert (=> b!3930380 (= e!2431488 (or (not (= (++!10787 lt!1372222 suffixTokens!72) Nil!41733)) (= lt!1372887 lt!1372210)))))

(assert (= (and d!1165093 c!682847) b!3930377))

(assert (= (and d!1165093 (not c!682847)) b!3930378))

(assert (= (and d!1165093 res!1590339) b!3930379))

(assert (= (and b!3930379 res!1590340) b!3930380))

(declare-fun m!4495971 () Bool)

(assert (=> b!3930379 m!4495971))

(assert (=> b!3930379 m!4494533))

(assert (=> b!3930379 m!4494111))

(declare-fun m!4495973 () Bool)

(assert (=> b!3930379 m!4495973))

(declare-fun m!4495975 () Bool)

(assert (=> d!1165093 m!4495975))

(assert (=> d!1165093 m!4494539))

(assert (=> d!1165093 m!4494111))

(declare-fun m!4495977 () Bool)

(assert (=> d!1165093 m!4495977))

(assert (=> b!3930378 m!4494111))

(declare-fun m!4495979 () Bool)

(assert (=> b!3930378 m!4495979))

(assert (=> d!1164605 d!1165093))

(assert (=> d!1164605 d!1164611))

(declare-fun b!3930381 () Bool)

(declare-fun e!2431490 () List!41855)

(assert (=> b!3930381 (= e!2431490 suffix!1176)))

(declare-fun b!3930383 () Bool)

(declare-fun res!1590341 () Bool)

(declare-fun e!2431489 () Bool)

(assert (=> b!3930383 (=> (not res!1590341) (not e!2431489))))

(declare-fun lt!1372888 () List!41855)

(assert (=> b!3930383 (= res!1590341 (= (size!31308 lt!1372888) (+ (size!31308 (t!325278 prefix!426)) (size!31308 suffix!1176))))))

(declare-fun b!3930384 () Bool)

(assert (=> b!3930384 (= e!2431489 (or (not (= suffix!1176 Nil!41731)) (= lt!1372888 (t!325278 prefix!426))))))

(declare-fun b!3930382 () Bool)

(assert (=> b!3930382 (= e!2431490 (Cons!41731 (h!47151 (t!325278 prefix!426)) (++!10788 (t!325278 (t!325278 prefix!426)) suffix!1176)))))

(declare-fun d!1165095 () Bool)

(assert (=> d!1165095 e!2431489))

(declare-fun res!1590342 () Bool)

(assert (=> d!1165095 (=> (not res!1590342) (not e!2431489))))

(assert (=> d!1165095 (= res!1590342 (= (content!6281 lt!1372888) (set.union (content!6281 (t!325278 prefix!426)) (content!6281 suffix!1176))))))

(assert (=> d!1165095 (= lt!1372888 e!2431490)))

(declare-fun c!682848 () Bool)

(assert (=> d!1165095 (= c!682848 (is-Nil!41731 (t!325278 prefix!426)))))

(assert (=> d!1165095 (= (++!10788 (t!325278 prefix!426) suffix!1176) lt!1372888)))

(assert (= (and d!1165095 c!682848) b!3930381))

(assert (= (and d!1165095 (not c!682848)) b!3930382))

(assert (= (and d!1165095 res!1590342) b!3930383))

(assert (= (and b!3930383 res!1590341) b!3930384))

(declare-fun m!4495981 () Bool)

(assert (=> b!3930383 m!4495981))

(assert (=> b!3930383 m!4494657))

(assert (=> b!3930383 m!4493967))

(declare-fun m!4495983 () Bool)

(assert (=> b!3930382 m!4495983))

(declare-fun m!4495985 () Bool)

(assert (=> d!1165095 m!4495985))

(declare-fun m!4495987 () Bool)

(assert (=> d!1165095 m!4495987))

(assert (=> d!1165095 m!4494419))

(assert (=> b!3929436 d!1165095))

(declare-fun d!1165097 () Bool)

(declare-fun res!1590343 () Bool)

(declare-fun e!2431491 () Bool)

(assert (=> d!1165097 (=> (not res!1590343) (not e!2431491))))

(assert (=> d!1165097 (= res!1590343 (not (isEmpty!24875 (originalCharacters!7115 (h!47153 (t!325280 prefixTokens!80))))))))

(assert (=> d!1165097 (= (inv!55924 (h!47153 (t!325280 prefixTokens!80))) e!2431491)))

(declare-fun b!3930385 () Bool)

(declare-fun res!1590344 () Bool)

(assert (=> b!3930385 (=> (not res!1590344) (not e!2431491))))

(assert (=> b!3930385 (= res!1590344 (= (originalCharacters!7115 (h!47153 (t!325280 prefixTokens!80))) (list!15504 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80))))) (value!206313 (h!47153 (t!325280 prefixTokens!80)))))))))

(declare-fun b!3930386 () Bool)

(assert (=> b!3930386 (= e!2431491 (= (size!31307 (h!47153 (t!325280 prefixTokens!80))) (size!31308 (originalCharacters!7115 (h!47153 (t!325280 prefixTokens!80))))))))

(assert (= (and d!1165097 res!1590343) b!3930385))

(assert (= (and b!3930385 res!1590344) b!3930386))

(declare-fun b_lambda!114979 () Bool)

(assert (=> (not b_lambda!114979) (not b!3930385)))

(declare-fun t!325445 () Bool)

(declare-fun tb!234857 () Bool)

(assert (=> (and b!3929693 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80))))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80)))))) t!325445) tb!234857))

(declare-fun b!3930387 () Bool)

(declare-fun e!2431492 () Bool)

(declare-fun tp!1196434 () Bool)

(assert (=> b!3930387 (= e!2431492 (and (inv!55928 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80))))) (value!206313 (h!47153 (t!325280 prefixTokens!80)))))) tp!1196434))))

(declare-fun result!284602 () Bool)

(assert (=> tb!234857 (= result!284602 (and (inv!55929 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80))))) (value!206313 (h!47153 (t!325280 prefixTokens!80))))) e!2431492))))

(assert (= tb!234857 b!3930387))

(declare-fun m!4495989 () Bool)

(assert (=> b!3930387 m!4495989))

(declare-fun m!4495991 () Bool)

(assert (=> tb!234857 m!4495991))

(assert (=> b!3930385 t!325445))

(declare-fun b_and!299891 () Bool)

(assert (= b_and!299863 (and (=> t!325445 result!284602) b_and!299891)))

(declare-fun t!325447 () Bool)

(declare-fun tb!234859 () Bool)

(assert (=> (and b!3929093 (= (toChars!8826 (transformation!6515 (h!47154 rules!2768))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80)))))) t!325447) tb!234859))

(declare-fun result!284604 () Bool)

(assert (= result!284604 result!284602))

(assert (=> b!3930385 t!325447))

(declare-fun b_and!299893 () Bool)

(assert (= b_and!299861 (and (=> t!325447 result!284604) b_and!299893)))

(declare-fun tb!234861 () Bool)

(declare-fun t!325449 () Bool)

(assert (=> (and b!3929105 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80)))))) t!325449) tb!234861))

(declare-fun result!284606 () Bool)

(assert (= result!284606 result!284602))

(assert (=> b!3930385 t!325449))

(declare-fun b_and!299895 () Bool)

(assert (= b_and!299857 (and (=> t!325449 result!284606) b_and!299895)))

(declare-fun t!325451 () Bool)

(declare-fun tb!234863 () Bool)

(assert (=> (and b!3929724 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72))))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80)))))) t!325451) tb!234863))

(declare-fun result!284608 () Bool)

(assert (= result!284608 result!284602))

(assert (=> b!3930385 t!325451))

(declare-fun b_and!299897 () Bool)

(assert (= b_and!299865 (and (=> t!325451 result!284608) b_and!299897)))

(declare-fun t!325453 () Bool)

(declare-fun tb!234865 () Bool)

(assert (=> (and b!3929087 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80)))))) t!325453) tb!234865))

(declare-fun result!284610 () Bool)

(assert (= result!284610 result!284602))

(assert (=> b!3930385 t!325453))

(declare-fun b_and!299899 () Bool)

(assert (= b_and!299855 (and (=> t!325453 result!284610) b_and!299899)))

(declare-fun tb!234867 () Bool)

(declare-fun t!325455 () Bool)

(assert (=> (and b!3929679 (= (toChars!8826 (transformation!6515 (h!47154 (t!325281 rules!2768)))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80)))))) t!325455) tb!234867))

(declare-fun result!284612 () Bool)

(assert (= result!284612 result!284602))

(assert (=> b!3930385 t!325455))

(declare-fun b_and!299901 () Bool)

(assert (= b_and!299859 (and (=> t!325455 result!284612) b_and!299901)))

(declare-fun m!4495993 () Bool)

(assert (=> d!1165097 m!4495993))

(declare-fun m!4495995 () Bool)

(assert (=> b!3930385 m!4495995))

(assert (=> b!3930385 m!4495995))

(declare-fun m!4495997 () Bool)

(assert (=> b!3930385 m!4495997))

(declare-fun m!4495999 () Bool)

(assert (=> b!3930386 m!4495999))

(assert (=> b!3929690 d!1165097))

(assert (=> d!1164535 d!1164555))

(declare-fun d!1165099 () Bool)

(assert (=> d!1165099 (not (= (lexList!1872 thiss!20629 rules!2768 suffix!1176) (tuple2!41009 suffixTokens!72 suffixResult!91)))))

(assert (=> d!1165099 true))

(declare-fun _$44!1324 () Unit!60127)

(assert (=> d!1165099 (= (choose!23354 thiss!20629 rules!2768 (_2!23637 (v!39260 lt!1372235)) suffix!1176 suffixTokens!72 suffixResult!91) _$44!1324)))

(declare-fun bs!586171 () Bool)

(assert (= bs!586171 d!1165099))

(assert (=> bs!586171 m!4494071))

(assert (=> d!1164535 d!1165099))

(assert (=> d!1164535 d!1164465))

(declare-fun d!1165101 () Bool)

(declare-fun c!682851 () Bool)

(assert (=> d!1165101 (= c!682851 (is-Node!12726 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))) (value!206313 (_1!23637 (v!39260 lt!1372235)))))))))

(declare-fun e!2431497 () Bool)

(assert (=> d!1165101 (= (inv!55928 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))) (value!206313 (_1!23637 (v!39260 lt!1372235)))))) e!2431497)))

(declare-fun b!3930394 () Bool)

(declare-fun inv!55932 (Conc!12726) Bool)

(assert (=> b!3930394 (= e!2431497 (inv!55932 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))) (value!206313 (_1!23637 (v!39260 lt!1372235)))))))))

(declare-fun b!3930395 () Bool)

(declare-fun e!2431498 () Bool)

(assert (=> b!3930395 (= e!2431497 e!2431498)))

(declare-fun res!1590347 () Bool)

(assert (=> b!3930395 (= res!1590347 (not (is-Leaf!19691 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))) (value!206313 (_1!23637 (v!39260 lt!1372235))))))))))

(assert (=> b!3930395 (=> res!1590347 e!2431498)))

(declare-fun b!3930396 () Bool)

(declare-fun inv!55933 (Conc!12726) Bool)

(assert (=> b!3930396 (= e!2431498 (inv!55933 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))) (value!206313 (_1!23637 (v!39260 lt!1372235)))))))))

(assert (= (and d!1165101 c!682851) b!3930394))

(assert (= (and d!1165101 (not c!682851)) b!3930395))

(assert (= (and b!3930395 (not res!1590347)) b!3930396))

(declare-fun m!4496001 () Bool)

(assert (=> b!3930394 m!4496001))

(declare-fun m!4496003 () Bool)

(assert (=> b!3930396 m!4496003))

(assert (=> b!3929285 d!1165101))

(declare-fun d!1165103 () Bool)

(declare-fun res!1590348 () Bool)

(declare-fun e!2431499 () Bool)

(assert (=> d!1165103 (=> (not res!1590348) (not e!2431499))))

(assert (=> d!1165103 (= res!1590348 (not (isEmpty!24875 (originalCharacters!7115 (h!47153 (t!325280 suffixTokens!72))))))))

(assert (=> d!1165103 (= (inv!55924 (h!47153 (t!325280 suffixTokens!72))) e!2431499)))

(declare-fun b!3930397 () Bool)

(declare-fun res!1590349 () Bool)

(assert (=> b!3930397 (=> (not res!1590349) (not e!2431499))))

(assert (=> b!3930397 (= res!1590349 (= (originalCharacters!7115 (h!47153 (t!325280 suffixTokens!72))) (list!15504 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72))))) (value!206313 (h!47153 (t!325280 suffixTokens!72)))))))))

(declare-fun b!3930398 () Bool)

(assert (=> b!3930398 (= e!2431499 (= (size!31307 (h!47153 (t!325280 suffixTokens!72))) (size!31308 (originalCharacters!7115 (h!47153 (t!325280 suffixTokens!72))))))))

(assert (= (and d!1165103 res!1590348) b!3930397))

(assert (= (and b!3930397 res!1590349) b!3930398))

(declare-fun b_lambda!114981 () Bool)

(assert (=> (not b_lambda!114981) (not b!3930397)))

(declare-fun t!325457 () Bool)

(declare-fun tb!234869 () Bool)

(assert (=> (and b!3929093 (= (toChars!8826 (transformation!6515 (h!47154 rules!2768))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72)))))) t!325457) tb!234869))

(declare-fun b!3930399 () Bool)

(declare-fun e!2431500 () Bool)

(declare-fun tp!1196435 () Bool)

(assert (=> b!3930399 (= e!2431500 (and (inv!55928 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72))))) (value!206313 (h!47153 (t!325280 suffixTokens!72)))))) tp!1196435))))

(declare-fun result!284614 () Bool)

(assert (=> tb!234869 (= result!284614 (and (inv!55929 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72))))) (value!206313 (h!47153 (t!325280 suffixTokens!72))))) e!2431500))))

(assert (= tb!234869 b!3930399))

(declare-fun m!4496005 () Bool)

(assert (=> b!3930399 m!4496005))

(declare-fun m!4496007 () Bool)

(assert (=> tb!234869 m!4496007))

(assert (=> b!3930397 t!325457))

(declare-fun b_and!299903 () Bool)

(assert (= b_and!299893 (and (=> t!325457 result!284614) b_and!299903)))

(declare-fun t!325459 () Bool)

(declare-fun tb!234871 () Bool)

(assert (=> (and b!3929087 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72)))))) t!325459) tb!234871))

(declare-fun result!284616 () Bool)

(assert (= result!284616 result!284614))

(assert (=> b!3930397 t!325459))

(declare-fun b_and!299905 () Bool)

(assert (= b_and!299899 (and (=> t!325459 result!284616) b_and!299905)))

(declare-fun t!325461 () Bool)

(declare-fun tb!234873 () Bool)

(assert (=> (and b!3929724 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72))))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72)))))) t!325461) tb!234873))

(declare-fun result!284618 () Bool)

(assert (= result!284618 result!284614))

(assert (=> b!3930397 t!325461))

(declare-fun b_and!299907 () Bool)

(assert (= b_and!299897 (and (=> t!325461 result!284618) b_and!299907)))

(declare-fun t!325463 () Bool)

(declare-fun tb!234875 () Bool)

(assert (=> (and b!3929105 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72)))))) t!325463) tb!234875))

(declare-fun result!284620 () Bool)

(assert (= result!284620 result!284614))

(assert (=> b!3930397 t!325463))

(declare-fun b_and!299909 () Bool)

(assert (= b_and!299895 (and (=> t!325463 result!284620) b_and!299909)))

(declare-fun tb!234877 () Bool)

(declare-fun t!325465 () Bool)

(assert (=> (and b!3929679 (= (toChars!8826 (transformation!6515 (h!47154 (t!325281 rules!2768)))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72)))))) t!325465) tb!234877))

(declare-fun result!284622 () Bool)

(assert (= result!284622 result!284614))

(assert (=> b!3930397 t!325465))

(declare-fun b_and!299911 () Bool)

(assert (= b_and!299901 (and (=> t!325465 result!284622) b_and!299911)))

(declare-fun tb!234879 () Bool)

(declare-fun t!325467 () Bool)

(assert (=> (and b!3929693 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80))))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72)))))) t!325467) tb!234879))

(declare-fun result!284624 () Bool)

(assert (= result!284624 result!284614))

(assert (=> b!3930397 t!325467))

(declare-fun b_and!299913 () Bool)

(assert (= b_and!299891 (and (=> t!325467 result!284624) b_and!299913)))

(declare-fun m!4496009 () Bool)

(assert (=> d!1165103 m!4496009))

(declare-fun m!4496011 () Bool)

(assert (=> b!3930397 m!4496011))

(assert (=> b!3930397 m!4496011))

(declare-fun m!4496013 () Bool)

(assert (=> b!3930397 m!4496013))

(declare-fun m!4496015 () Bool)

(assert (=> b!3930398 m!4496015))

(assert (=> b!3929721 d!1165103))

(declare-fun b!3930400 () Bool)

(declare-fun e!2431501 () List!41857)

(assert (=> b!3930400 (= e!2431501 (_1!23638 lt!1372229))))

(declare-fun b!3930402 () Bool)

(declare-fun res!1590351 () Bool)

(declare-fun e!2431502 () Bool)

(assert (=> b!3930402 (=> (not res!1590351) (not e!2431502))))

(declare-fun lt!1372889 () List!41857)

(assert (=> b!3930402 (= res!1590351 (= (size!31311 lt!1372889) (+ (size!31311 (t!325280 lt!1372210)) (size!31311 (_1!23638 lt!1372229)))))))

(declare-fun d!1165105 () Bool)

(assert (=> d!1165105 e!2431502))

(declare-fun res!1590350 () Bool)

(assert (=> d!1165105 (=> (not res!1590350) (not e!2431502))))

(assert (=> d!1165105 (= res!1590350 (= (content!6282 lt!1372889) (set.union (content!6282 (t!325280 lt!1372210)) (content!6282 (_1!23638 lt!1372229)))))))

(assert (=> d!1165105 (= lt!1372889 e!2431501)))

(declare-fun c!682852 () Bool)

(assert (=> d!1165105 (= c!682852 (is-Nil!41733 (t!325280 lt!1372210)))))

(assert (=> d!1165105 (= (++!10787 (t!325280 lt!1372210) (_1!23638 lt!1372229)) lt!1372889)))

(declare-fun b!3930401 () Bool)

(assert (=> b!3930401 (= e!2431501 (Cons!41733 (h!47153 (t!325280 lt!1372210)) (++!10787 (t!325280 (t!325280 lt!1372210)) (_1!23638 lt!1372229))))))

(declare-fun b!3930403 () Bool)

(assert (=> b!3930403 (= e!2431502 (or (not (= (_1!23638 lt!1372229) Nil!41733)) (= lt!1372889 (t!325280 lt!1372210))))))

(assert (= (and d!1165105 c!682852) b!3930400))

(assert (= (and d!1165105 (not c!682852)) b!3930401))

(assert (= (and d!1165105 res!1590350) b!3930402))

(assert (= (and b!3930402 res!1590351) b!3930403))

(declare-fun m!4496017 () Bool)

(assert (=> b!3930402 m!4496017))

(assert (=> b!3930402 m!4495309))

(assert (=> b!3930402 m!4494535))

(declare-fun m!4496019 () Bool)

(assert (=> d!1165105 m!4496019))

(assert (=> d!1165105 m!4495313))

(assert (=> d!1165105 m!4494541))

(declare-fun m!4496021 () Bool)

(assert (=> b!3930401 m!4496021))

(assert (=> b!3929449 d!1165105))

(declare-fun d!1165107 () Bool)

(declare-fun lt!1372890 () Int)

(assert (=> d!1165107 (>= lt!1372890 0)))

(declare-fun e!2431503 () Int)

(assert (=> d!1165107 (= lt!1372890 e!2431503)))

(declare-fun c!682853 () Bool)

(assert (=> d!1165107 (= c!682853 (is-Nil!41731 (t!325278 lt!1372190)))))

(assert (=> d!1165107 (= (size!31308 (t!325278 lt!1372190)) lt!1372890)))

(declare-fun b!3930404 () Bool)

(assert (=> b!3930404 (= e!2431503 0)))

(declare-fun b!3930405 () Bool)

(assert (=> b!3930405 (= e!2431503 (+ 1 (size!31308 (t!325278 (t!325278 lt!1372190)))))))

(assert (= (and d!1165107 c!682853) b!3930404))

(assert (= (and d!1165107 (not c!682853)) b!3930405))

(declare-fun m!4496023 () Bool)

(assert (=> b!3930405 m!4496023))

(assert (=> b!3929280 d!1165107))

(declare-fun d!1165109 () Bool)

(declare-fun lt!1372891 () Int)

(assert (=> d!1165109 (>= lt!1372891 0)))

(declare-fun e!2431504 () Int)

(assert (=> d!1165109 (= lt!1372891 e!2431504)))

(declare-fun c!682854 () Bool)

(assert (=> d!1165109 (= c!682854 (is-Nil!41733 lt!1372456))))

(assert (=> d!1165109 (= (size!31311 lt!1372456) lt!1372891)))

(declare-fun b!3930406 () Bool)

(assert (=> b!3930406 (= e!2431504 0)))

(declare-fun b!3930407 () Bool)

(assert (=> b!3930407 (= e!2431504 (+ 1 (size!31311 (t!325280 lt!1372456))))))

(assert (= (and d!1165109 c!682854) b!3930406))

(assert (= (and d!1165109 (not c!682854)) b!3930407))

(declare-fun m!4496025 () Bool)

(assert (=> b!3930407 m!4496025))

(assert (=> b!3929433 d!1165109))

(declare-fun d!1165111 () Bool)

(declare-fun lt!1372892 () Int)

(assert (=> d!1165111 (>= lt!1372892 0)))

(declare-fun e!2431505 () Int)

(assert (=> d!1165111 (= lt!1372892 e!2431505)))

(declare-fun c!682855 () Bool)

(assert (=> d!1165111 (= c!682855 (is-Nil!41733 prefixTokens!80))))

(assert (=> d!1165111 (= (size!31311 prefixTokens!80) lt!1372892)))

(declare-fun b!3930408 () Bool)

(assert (=> b!3930408 (= e!2431505 0)))

(declare-fun b!3930409 () Bool)

(assert (=> b!3930409 (= e!2431505 (+ 1 (size!31311 (t!325280 prefixTokens!80))))))

(assert (= (and d!1165111 c!682855) b!3930408))

(assert (= (and d!1165111 (not c!682855)) b!3930409))

(assert (=> b!3930409 m!4495619))

(assert (=> b!3929433 d!1165111))

(assert (=> b!3929433 d!1164811))

(declare-fun d!1165113 () Bool)

(declare-fun lt!1372893 () Int)

(assert (=> d!1165113 (>= lt!1372893 0)))

(declare-fun e!2431506 () Int)

(assert (=> d!1165113 (= lt!1372893 e!2431506)))

(declare-fun c!682856 () Bool)

(assert (=> d!1165113 (= c!682856 (is-Nil!41731 (_2!23638 lt!1372453)))))

(assert (=> d!1165113 (= (size!31308 (_2!23638 lt!1372453)) lt!1372893)))

(declare-fun b!3930410 () Bool)

(assert (=> b!3930410 (= e!2431506 0)))

(declare-fun b!3930411 () Bool)

(assert (=> b!3930411 (= e!2431506 (+ 1 (size!31308 (t!325278 (_2!23638 lt!1372453)))))))

(assert (= (and d!1165113 c!682856) b!3930410))

(assert (= (and d!1165113 (not c!682856)) b!3930411))

(declare-fun m!4496027 () Bool)

(assert (=> b!3930411 m!4496027))

(assert (=> b!3929428 d!1165113))

(assert (=> b!3929428 d!1164635))

(declare-fun bs!586172 () Bool)

(declare-fun d!1165115 () Bool)

(assert (= bs!586172 (and d!1165115 d!1164801)))

(declare-fun lambda!126571 () Int)

(assert (=> bs!586172 (= (and (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (toChars!8826 (transformation!6515 (h!47154 rules!2768)))) (= (toValue!8967 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (toValue!8967 (transformation!6515 (h!47154 rules!2768))))) (= lambda!126571 lambda!126556))))

(declare-fun bs!586173 () Bool)

(assert (= bs!586173 (and d!1165115 d!1164913)))

(assert (=> bs!586173 (= (and (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72))))) (= (toValue!8967 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (toValue!8967 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))))) (= lambda!126571 lambda!126566))))

(declare-fun bs!586174 () Bool)

(assert (= bs!586174 (and d!1165115 d!1165019)))

(assert (=> bs!586174 (= (and (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))) (= (toValue!8967 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))))) (= lambda!126571 lambda!126570))))

(assert (=> d!1165115 true))

(assert (=> d!1165115 (< (dynLambda!17879 order!22287 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80))))) (dynLambda!17880 order!22289 lambda!126571))))

(assert (=> d!1165115 true))

(assert (=> d!1165115 (< (dynLambda!17881 order!22291 (toValue!8967 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80))))) (dynLambda!17880 order!22289 lambda!126571))))

(assert (=> d!1165115 (= (semiInverseModEq!2798 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (toValue!8967 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80))))) (Forall!1449 lambda!126571))))

(declare-fun bs!586175 () Bool)

(assert (= bs!586175 d!1165115))

(declare-fun m!4496029 () Bool)

(assert (=> bs!586175 m!4496029))

(assert (=> d!1164575 d!1165115))

(declare-fun d!1165117 () Bool)

(declare-fun c!682857 () Bool)

(assert (=> d!1165117 (= c!682857 (is-Node!12726 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) (value!206313 (h!47153 suffixTokens!72))))))))

(declare-fun e!2431507 () Bool)

(assert (=> d!1165117 (= (inv!55928 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) (value!206313 (h!47153 suffixTokens!72))))) e!2431507)))

(declare-fun b!3930412 () Bool)

(assert (=> b!3930412 (= e!2431507 (inv!55932 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) (value!206313 (h!47153 suffixTokens!72))))))))

(declare-fun b!3930413 () Bool)

(declare-fun e!2431508 () Bool)

(assert (=> b!3930413 (= e!2431507 e!2431508)))

(declare-fun res!1590352 () Bool)

(assert (=> b!3930413 (= res!1590352 (not (is-Leaf!19691 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) (value!206313 (h!47153 suffixTokens!72)))))))))

(assert (=> b!3930413 (=> res!1590352 e!2431508)))

(declare-fun b!3930414 () Bool)

(assert (=> b!3930414 (= e!2431508 (inv!55933 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) (value!206313 (h!47153 suffixTokens!72))))))))

(assert (= (and d!1165117 c!682857) b!3930412))

(assert (= (and d!1165117 (not c!682857)) b!3930413))

(assert (= (and b!3930413 (not res!1590352)) b!3930414))

(declare-fun m!4496031 () Bool)

(assert (=> b!3930412 m!4496031))

(declare-fun m!4496033 () Bool)

(assert (=> b!3930414 m!4496033))

(assert (=> b!3929376 d!1165117))

(declare-fun d!1165119 () Bool)

(assert (=> d!1165119 (= (inv!55929 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (value!206313 (h!47153 prefixTokens!80)))) (isBalanced!3639 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (value!206313 (h!47153 prefixTokens!80))))))))

(declare-fun bs!586176 () Bool)

(assert (= bs!586176 d!1165119))

(declare-fun m!4496035 () Bool)

(assert (=> bs!586176 m!4496035))

(assert (=> tb!234719 d!1165119))

(declare-fun b!3930415 () Bool)

(declare-fun e!2431510 () List!41855)

(assert (=> b!3930415 (= e!2431510 lt!1372187)))

(declare-fun b!3930417 () Bool)

(declare-fun res!1590353 () Bool)

(declare-fun e!2431509 () Bool)

(assert (=> b!3930417 (=> (not res!1590353) (not e!2431509))))

(declare-fun lt!1372894 () List!41855)

(assert (=> b!3930417 (= res!1590353 (= (size!31308 lt!1372894) (+ (size!31308 (t!325278 lt!1372190)) (size!31308 lt!1372187))))))

(declare-fun b!3930418 () Bool)

(assert (=> b!3930418 (= e!2431509 (or (not (= lt!1372187 Nil!41731)) (= lt!1372894 (t!325278 lt!1372190))))))

(declare-fun b!3930416 () Bool)

(assert (=> b!3930416 (= e!2431510 (Cons!41731 (h!47151 (t!325278 lt!1372190)) (++!10788 (t!325278 (t!325278 lt!1372190)) lt!1372187)))))

(declare-fun d!1165121 () Bool)

(assert (=> d!1165121 e!2431509))

(declare-fun res!1590354 () Bool)

(assert (=> d!1165121 (=> (not res!1590354) (not e!2431509))))

(assert (=> d!1165121 (= res!1590354 (= (content!6281 lt!1372894) (set.union (content!6281 (t!325278 lt!1372190)) (content!6281 lt!1372187))))))

(assert (=> d!1165121 (= lt!1372894 e!2431510)))

(declare-fun c!682858 () Bool)

(assert (=> d!1165121 (= c!682858 (is-Nil!41731 (t!325278 lt!1372190)))))

(assert (=> d!1165121 (= (++!10788 (t!325278 lt!1372190) lt!1372187) lt!1372894)))

(assert (= (and d!1165121 c!682858) b!3930415))

(assert (= (and d!1165121 (not c!682858)) b!3930416))

(assert (= (and d!1165121 res!1590354) b!3930417))

(assert (= (and b!3930417 res!1590353) b!3930418))

(declare-fun m!4496037 () Bool)

(assert (=> b!3930417 m!4496037))

(assert (=> b!3930417 m!4494301))

(assert (=> b!3930417 m!4494381))

(declare-fun m!4496039 () Bool)

(assert (=> b!3930416 m!4496039))

(declare-fun m!4496041 () Bool)

(assert (=> d!1165121 m!4496041))

(assert (=> d!1165121 m!4495553))

(assert (=> d!1165121 m!4494465))

(assert (=> b!3929406 d!1165121))

(assert (=> b!3929661 d!1164829))

(declare-fun d!1165123 () Bool)

(declare-fun lt!1372895 () Int)

(assert (=> d!1165123 (>= lt!1372895 0)))

(declare-fun e!2431511 () Int)

(assert (=> d!1165123 (= lt!1372895 e!2431511)))

(declare-fun c!682859 () Bool)

(assert (=> d!1165123 (= c!682859 (is-Nil!41731 (originalCharacters!7115 (_1!23637 (get!13793 lt!1372587)))))))

(assert (=> d!1165123 (= (size!31308 (originalCharacters!7115 (_1!23637 (get!13793 lt!1372587)))) lt!1372895)))

(declare-fun b!3930419 () Bool)

(assert (=> b!3930419 (= e!2431511 0)))

(declare-fun b!3930420 () Bool)

(assert (=> b!3930420 (= e!2431511 (+ 1 (size!31308 (t!325278 (originalCharacters!7115 (_1!23637 (get!13793 lt!1372587)))))))))

(assert (= (and d!1165123 c!682859) b!3930419))

(assert (= (and d!1165123 (not c!682859)) b!3930420))

(declare-fun m!4496043 () Bool)

(assert (=> b!3930420 m!4496043))

(assert (=> b!3929661 d!1165123))

(declare-fun bs!586177 () Bool)

(declare-fun d!1165125 () Bool)

(assert (= bs!586177 (and d!1165125 d!1164813)))

(declare-fun lambda!126572 () Int)

(assert (=> bs!586177 (= (= (toValue!8967 (transformation!6515 (h!47154 rules!2768))) (toValue!8967 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72))))) (= lambda!126572 lambda!126559))))

(declare-fun bs!586178 () Bool)

(assert (= bs!586178 (and d!1165125 d!1164945)))

(assert (=> bs!586178 (= (= (toValue!8967 (transformation!6515 (h!47154 rules!2768))) (toValue!8967 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80))))) (= lambda!126572 lambda!126567))))

(assert (=> d!1165125 true))

(assert (=> d!1165125 (< (dynLambda!17881 order!22291 (toValue!8967 (transformation!6515 (h!47154 rules!2768)))) (dynLambda!17882 order!22293 lambda!126572))))

(assert (=> d!1165125 (= (equivClasses!2697 (toChars!8826 (transformation!6515 (h!47154 rules!2768))) (toValue!8967 (transformation!6515 (h!47154 rules!2768)))) (Forall2!1047 lambda!126572))))

(declare-fun bs!586179 () Bool)

(assert (= bs!586179 d!1165125))

(declare-fun m!4496045 () Bool)

(assert (=> bs!586179 m!4496045))

(assert (=> b!3929465 d!1165125))

(declare-fun d!1165127 () Bool)

(assert (=> d!1165127 (= (inv!17 (value!206313 (h!47153 suffixTokens!72))) (= (charsToBigInt!1 (text!47663 (value!206313 (h!47153 suffixTokens!72)))) (value!206306 (value!206313 (h!47153 suffixTokens!72)))))))

(declare-fun bs!586180 () Bool)

(assert (= bs!586180 d!1165127))

(declare-fun m!4496047 () Bool)

(assert (=> bs!586180 m!4496047))

(assert (=> b!3929421 d!1165127))

(declare-fun d!1165129 () Bool)

(declare-fun lt!1372896 () Int)

(assert (=> d!1165129 (>= lt!1372896 0)))

(declare-fun e!2431512 () Int)

(assert (=> d!1165129 (= lt!1372896 e!2431512)))

(declare-fun c!682860 () Bool)

(assert (=> d!1165129 (= c!682860 (is-Nil!41733 lt!1372520))))

(assert (=> d!1165129 (= (size!31311 lt!1372520) lt!1372896)))

(declare-fun b!3930421 () Bool)

(assert (=> b!3930421 (= e!2431512 0)))

(declare-fun b!3930422 () Bool)

(assert (=> b!3930422 (= e!2431512 (+ 1 (size!31311 (t!325280 lt!1372520))))))

(assert (= (and d!1165129 c!682860) b!3930421))

(assert (= (and d!1165129 (not c!682860)) b!3930422))

(declare-fun m!4496049 () Bool)

(assert (=> b!3930422 m!4496049))

(assert (=> b!3929550 d!1165129))

(assert (=> b!3929550 d!1164973))

(assert (=> b!3929550 d!1164811))

(declare-fun d!1165131 () Bool)

(assert (=> d!1165131 (= (inv!16 (value!206313 (h!47153 prefixTokens!80))) (= (charsToInt!0 (text!47662 (value!206313 (h!47153 prefixTokens!80)))) (value!206305 (value!206313 (h!47153 prefixTokens!80)))))))

(declare-fun bs!586181 () Bool)

(assert (= bs!586181 d!1165131))

(declare-fun m!4496051 () Bool)

(assert (=> bs!586181 m!4496051))

(assert (=> b!3929459 d!1165131))

(declare-fun d!1165133 () Bool)

(assert (=> d!1165133 (= (isEmpty!24877 (_1!23638 lt!1372422)) (is-Nil!41733 (_1!23638 lt!1372422)))))

(assert (=> b!3929361 d!1165133))

(declare-fun d!1165135 () Bool)

(assert (=> d!1165135 (= (_2!23637 (v!39260 lt!1372235)) suffix!1176)))

(assert (=> d!1165135 true))

(declare-fun _$63!986 () Unit!60127)

(assert (=> d!1165135 (= (choose!23351 lt!1372190 (_2!23637 (v!39260 lt!1372235)) prefix!426 suffix!1176 lt!1372223) _$63!986)))

(assert (=> d!1164591 d!1165135))

(assert (=> d!1164591 d!1165061))

(declare-fun d!1165137 () Bool)

(declare-fun lt!1372897 () Int)

(assert (=> d!1165137 (>= lt!1372897 0)))

(declare-fun e!2431513 () Int)

(assert (=> d!1165137 (= lt!1372897 e!2431513)))

(declare-fun c!682861 () Bool)

(assert (=> d!1165137 (= c!682861 (is-Nil!41731 (t!325278 prefix!426)))))

(assert (=> d!1165137 (= (size!31308 (t!325278 prefix!426)) lt!1372897)))

(declare-fun b!3930423 () Bool)

(assert (=> b!3930423 (= e!2431513 0)))

(declare-fun b!3930424 () Bool)

(assert (=> b!3930424 (= e!2431513 (+ 1 (size!31308 (t!325278 (t!325278 prefix!426)))))))

(assert (= (and d!1165137 c!682861) b!3930423))

(assert (= (and d!1165137 (not c!682861)) b!3930424))

(declare-fun m!4496053 () Bool)

(assert (=> b!3930424 m!4496053))

(assert (=> b!3929527 d!1165137))

(assert (=> b!3929479 d!1164635))

(assert (=> b!3929479 d!1164603))

(declare-fun b!3930425 () Bool)

(declare-fun e!2431515 () List!41855)

(assert (=> b!3930425 (= e!2431515 lt!1372388)))

(declare-fun b!3930427 () Bool)

(declare-fun res!1590355 () Bool)

(declare-fun e!2431514 () Bool)

(assert (=> b!3930427 (=> (not res!1590355) (not e!2431514))))

(declare-fun lt!1372898 () List!41855)

(assert (=> b!3930427 (= res!1590355 (= (size!31308 lt!1372898) (+ (size!31308 lt!1372190) (size!31308 lt!1372388))))))

(declare-fun b!3930428 () Bool)

(assert (=> b!3930428 (= e!2431514 (or (not (= lt!1372388 Nil!41731)) (= lt!1372898 lt!1372190)))))

(declare-fun b!3930426 () Bool)

(assert (=> b!3930426 (= e!2431515 (Cons!41731 (h!47151 lt!1372190) (++!10788 (t!325278 lt!1372190) lt!1372388)))))

(declare-fun d!1165139 () Bool)

(assert (=> d!1165139 e!2431514))

(declare-fun res!1590356 () Bool)

(assert (=> d!1165139 (=> (not res!1590356) (not e!2431514))))

(assert (=> d!1165139 (= res!1590356 (= (content!6281 lt!1372898) (set.union (content!6281 lt!1372190) (content!6281 lt!1372388))))))

(assert (=> d!1165139 (= lt!1372898 e!2431515)))

(declare-fun c!682862 () Bool)

(assert (=> d!1165139 (= c!682862 (is-Nil!41731 lt!1372190))))

(assert (=> d!1165139 (= (++!10788 lt!1372190 lt!1372388) lt!1372898)))

(assert (= (and d!1165139 c!682862) b!3930425))

(assert (= (and d!1165139 (not c!682862)) b!3930426))

(assert (= (and d!1165139 res!1590356) b!3930427))

(assert (= (and b!3930427 res!1590355) b!3930428))

(declare-fun m!4496055 () Bool)

(assert (=> b!3930427 m!4496055))

(assert (=> b!3930427 m!4494105))

(declare-fun m!4496057 () Bool)

(assert (=> b!3930427 m!4496057))

(declare-fun m!4496059 () Bool)

(assert (=> b!3930426 m!4496059))

(declare-fun m!4496061 () Bool)

(assert (=> d!1165139 m!4496061))

(assert (=> d!1165139 m!4494331))

(declare-fun m!4496063 () Bool)

(assert (=> d!1165139 m!4496063))

(assert (=> d!1164469 d!1165139))

(assert (=> d!1164469 d!1164635))

(assert (=> d!1164469 d!1164477))

(declare-fun d!1165141 () Bool)

(assert (=> d!1165141 (= (head!8342 lt!1372187) (h!47151 lt!1372187))))

(assert (=> b!3929553 d!1165141))

(declare-fun d!1165143 () Bool)

(assert (=> d!1165143 (= (head!8342 lt!1372227) (h!47151 lt!1372227))))

(assert (=> b!3929553 d!1165143))

(declare-fun d!1165145 () Bool)

(declare-fun lt!1372899 () Int)

(assert (=> d!1165145 (>= lt!1372899 0)))

(declare-fun e!2431516 () Int)

(assert (=> d!1165145 (= lt!1372899 e!2431516)))

(declare-fun c!682863 () Bool)

(assert (=> d!1165145 (= c!682863 (is-Nil!41731 (_2!23637 (get!13793 lt!1372501))))))

(assert (=> d!1165145 (= (size!31308 (_2!23637 (get!13793 lt!1372501))) lt!1372899)))

(declare-fun b!3930429 () Bool)

(assert (=> b!3930429 (= e!2431516 0)))

(declare-fun b!3930430 () Bool)

(assert (=> b!3930430 (= e!2431516 (+ 1 (size!31308 (t!325278 (_2!23637 (get!13793 lt!1372501))))))))

(assert (= (and d!1165145 c!682863) b!3930429))

(assert (= (and d!1165145 (not c!682863)) b!3930430))

(declare-fun m!4496065 () Bool)

(assert (=> b!3930430 m!4496065))

(assert (=> b!3929519 d!1165145))

(assert (=> b!3929519 d!1164825))

(assert (=> b!3929519 d!1164635))

(declare-fun d!1165147 () Bool)

(declare-fun lt!1372900 () Int)

(assert (=> d!1165147 (>= lt!1372900 0)))

(declare-fun e!2431517 () Int)

(assert (=> d!1165147 (= lt!1372900 e!2431517)))

(declare-fun c!682864 () Bool)

(assert (=> d!1165147 (= c!682864 (is-Nil!41733 (_1!23638 lt!1372453)))))

(assert (=> d!1165147 (= (size!31311 (_1!23638 lt!1372453)) lt!1372900)))

(declare-fun b!3930431 () Bool)

(assert (=> b!3930431 (= e!2431517 0)))

(declare-fun b!3930432 () Bool)

(assert (=> b!3930432 (= e!2431517 (+ 1 (size!31311 (t!325280 (_1!23638 lt!1372453)))))))

(assert (= (and d!1165147 c!682864) b!3930431))

(assert (= (and d!1165147 (not c!682864)) b!3930432))

(declare-fun m!4496067 () Bool)

(assert (=> b!3930432 m!4496067))

(assert (=> d!1164541 d!1165147))

(assert (=> d!1164541 d!1164593))

(declare-fun d!1165149 () Bool)

(assert (=> d!1165149 (= (head!8342 lt!1372190) (h!47151 lt!1372190))))

(assert (=> b!3929440 d!1165149))

(declare-fun d!1165151 () Bool)

(assert (=> d!1165151 (= (head!8342 lt!1372212) (h!47151 lt!1372212))))

(assert (=> b!3929440 d!1165151))

(declare-fun d!1165153 () Bool)

(assert (=> d!1165153 (= (_2!23637 (v!39260 lt!1372235)) lt!1372206)))

(assert (=> d!1165153 true))

(declare-fun _$63!987 () Unit!60127)

(assert (=> d!1165153 (= (choose!23351 lt!1372190 (_2!23637 (v!39260 lt!1372235)) lt!1372190 lt!1372206 lt!1372223) _$63!987)))

(assert (=> d!1164501 d!1165153))

(assert (=> d!1164501 d!1165061))

(declare-fun d!1165155 () Bool)

(declare-fun c!682865 () Bool)

(assert (=> d!1165155 (= c!682865 (is-Nil!41731 lt!1372406))))

(declare-fun e!2431518 () (Set C!23026))

(assert (=> d!1165155 (= (content!6281 lt!1372406) e!2431518)))

(declare-fun b!3930433 () Bool)

(assert (=> b!3930433 (= e!2431518 (as set.empty (Set C!23026)))))

(declare-fun b!3930434 () Bool)

(assert (=> b!3930434 (= e!2431518 (set.union (set.insert (h!47151 lt!1372406) (as set.empty (Set C!23026))) (content!6281 (t!325278 lt!1372406))))))

(assert (= (and d!1165155 c!682865) b!3930433))

(assert (= (and d!1165155 (not c!682865)) b!3930434))

(declare-fun m!4496069 () Bool)

(assert (=> b!3930434 m!4496069))

(declare-fun m!4496071 () Bool)

(assert (=> b!3930434 m!4496071))

(assert (=> d!1164485 d!1165155))

(assert (=> d!1164485 d!1165007))

(declare-fun d!1165157 () Bool)

(declare-fun c!682866 () Bool)

(assert (=> d!1165157 (= c!682866 (is-Nil!41731 (_2!23637 (v!39260 lt!1372235))))))

(declare-fun e!2431519 () (Set C!23026))

(assert (=> d!1165157 (= (content!6281 (_2!23637 (v!39260 lt!1372235))) e!2431519)))

(declare-fun b!3930435 () Bool)

(assert (=> b!3930435 (= e!2431519 (as set.empty (Set C!23026)))))

(declare-fun b!3930436 () Bool)

(assert (=> b!3930436 (= e!2431519 (set.union (set.insert (h!47151 (_2!23637 (v!39260 lt!1372235))) (as set.empty (Set C!23026))) (content!6281 (t!325278 (_2!23637 (v!39260 lt!1372235))))))))

(assert (= (and d!1165157 c!682866) b!3930435))

(assert (= (and d!1165157 (not c!682866)) b!3930436))

(declare-fun m!4496073 () Bool)

(assert (=> b!3930436 m!4496073))

(declare-fun m!4496075 () Bool)

(assert (=> b!3930436 m!4496075))

(assert (=> d!1164485 d!1165157))

(declare-fun b!3930448 () Bool)

(declare-fun e!2431525 () List!41855)

(assert (=> b!3930448 (= e!2431525 (++!10788 (list!15506 (left!31834 (c!682587 (charsOf!4339 (_1!23637 (v!39260 lt!1372235)))))) (list!15506 (right!32164 (c!682587 (charsOf!4339 (_1!23637 (v!39260 lt!1372235))))))))))

(declare-fun d!1165159 () Bool)

(declare-fun c!682871 () Bool)

(assert (=> d!1165159 (= c!682871 (is-Empty!12726 (c!682587 (charsOf!4339 (_1!23637 (v!39260 lt!1372235))))))))

(declare-fun e!2431524 () List!41855)

(assert (=> d!1165159 (= (list!15506 (c!682587 (charsOf!4339 (_1!23637 (v!39260 lt!1372235))))) e!2431524)))

(declare-fun b!3930446 () Bool)

(assert (=> b!3930446 (= e!2431524 e!2431525)))

(declare-fun c!682872 () Bool)

(assert (=> b!3930446 (= c!682872 (is-Leaf!19691 (c!682587 (charsOf!4339 (_1!23637 (v!39260 lt!1372235))))))))

(declare-fun b!3930445 () Bool)

(assert (=> b!3930445 (= e!2431524 Nil!41731)))

(declare-fun b!3930447 () Bool)

(declare-fun list!15508 (IArray!25457) List!41855)

(assert (=> b!3930447 (= e!2431525 (list!15508 (xs!16032 (c!682587 (charsOf!4339 (_1!23637 (v!39260 lt!1372235)))))))))

(assert (= (and d!1165159 c!682871) b!3930445))

(assert (= (and d!1165159 (not c!682871)) b!3930446))

(assert (= (and b!3930446 c!682872) b!3930447))

(assert (= (and b!3930446 (not c!682872)) b!3930448))

(declare-fun m!4496077 () Bool)

(assert (=> b!3930448 m!4496077))

(declare-fun m!4496079 () Bool)

(assert (=> b!3930448 m!4496079))

(assert (=> b!3930448 m!4496077))

(assert (=> b!3930448 m!4496079))

(declare-fun m!4496081 () Bool)

(assert (=> b!3930448 m!4496081))

(declare-fun m!4496083 () Bool)

(assert (=> b!3930447 m!4496083))

(assert (=> d!1164467 d!1165159))

(declare-fun b!3930450 () Bool)

(declare-fun e!2431527 () tuple2!41008)

(assert (=> b!3930450 (= e!2431527 (tuple2!41009 Nil!41733 (_2!23637 (v!39260 lt!1372423))))))

(declare-fun b!3930451 () Bool)

(declare-fun e!2431528 () Bool)

(declare-fun e!2431526 () Bool)

(assert (=> b!3930451 (= e!2431528 e!2431526)))

(declare-fun res!1590357 () Bool)

(declare-fun lt!1372901 () tuple2!41008)

(assert (=> b!3930451 (= res!1590357 (< (size!31308 (_2!23638 lt!1372901)) (size!31308 (_2!23637 (v!39260 lt!1372423)))))))

(assert (=> b!3930451 (=> (not res!1590357) (not e!2431526))))

(declare-fun b!3930452 () Bool)

(assert (=> b!3930452 (= e!2431528 (= (_2!23638 lt!1372901) (_2!23637 (v!39260 lt!1372423))))))

(declare-fun b!3930453 () Bool)

(assert (=> b!3930453 (= e!2431526 (not (isEmpty!24877 (_1!23638 lt!1372901))))))

(declare-fun b!3930449 () Bool)

(declare-fun lt!1372902 () Option!8935)

(declare-fun lt!1372903 () tuple2!41008)

(assert (=> b!3930449 (= e!2431527 (tuple2!41009 (Cons!41733 (_1!23637 (v!39260 lt!1372902)) (_1!23638 lt!1372903)) (_2!23638 lt!1372903)))))

(assert (=> b!3930449 (= lt!1372903 (lexList!1872 thiss!20629 rules!2768 (_2!23637 (v!39260 lt!1372902))))))

(declare-fun d!1165161 () Bool)

(assert (=> d!1165161 e!2431528))

(declare-fun c!682874 () Bool)

(assert (=> d!1165161 (= c!682874 (> (size!31311 (_1!23638 lt!1372901)) 0))))

(assert (=> d!1165161 (= lt!1372901 e!2431527)))

(declare-fun c!682873 () Bool)

(assert (=> d!1165161 (= c!682873 (is-Some!8934 lt!1372902))))

(assert (=> d!1165161 (= lt!1372902 (maxPrefix!3408 thiss!20629 rules!2768 (_2!23637 (v!39260 lt!1372423))))))

(assert (=> d!1165161 (= (lexList!1872 thiss!20629 rules!2768 (_2!23637 (v!39260 lt!1372423))) lt!1372901)))

(assert (= (and d!1165161 c!682873) b!3930449))

(assert (= (and d!1165161 (not c!682873)) b!3930450))

(assert (= (and d!1165161 c!682874) b!3930451))

(assert (= (and d!1165161 (not c!682874)) b!3930452))

(assert (= (and b!3930451 res!1590357) b!3930453))

(declare-fun m!4496085 () Bool)

(assert (=> b!3930451 m!4496085))

(declare-fun m!4496087 () Bool)

(assert (=> b!3930451 m!4496087))

(declare-fun m!4496089 () Bool)

(assert (=> b!3930453 m!4496089))

(declare-fun m!4496091 () Bool)

(assert (=> b!3930449 m!4496091))

(declare-fun m!4496093 () Bool)

(assert (=> d!1165161 m!4496093))

(declare-fun m!4496095 () Bool)

(assert (=> d!1165161 m!4496095))

(assert (=> b!3929357 d!1165161))

(declare-fun d!1165163 () Bool)

(declare-fun c!682875 () Bool)

(assert (=> d!1165163 (= c!682875 (is-Nil!41731 lt!1372457))))

(declare-fun e!2431529 () (Set C!23026))

(assert (=> d!1165163 (= (content!6281 lt!1372457) e!2431529)))

(declare-fun b!3930454 () Bool)

(assert (=> b!3930454 (= e!2431529 (as set.empty (Set C!23026)))))

(declare-fun b!3930455 () Bool)

(assert (=> b!3930455 (= e!2431529 (set.union (set.insert (h!47151 lt!1372457) (as set.empty (Set C!23026))) (content!6281 (t!325278 lt!1372457))))))

(assert (= (and d!1165163 c!682875) b!3930454))

(assert (= (and d!1165163 (not c!682875)) b!3930455))

(declare-fun m!4496097 () Bool)

(assert (=> b!3930455 m!4496097))

(declare-fun m!4496099 () Bool)

(assert (=> b!3930455 m!4496099))

(assert (=> d!1164545 d!1165163))

(declare-fun d!1165165 () Bool)

(declare-fun c!682876 () Bool)

(assert (=> d!1165165 (= c!682876 (is-Nil!41731 prefix!426))))

(declare-fun e!2431530 () (Set C!23026))

(assert (=> d!1165165 (= (content!6281 prefix!426) e!2431530)))

(declare-fun b!3930456 () Bool)

(assert (=> b!3930456 (= e!2431530 (as set.empty (Set C!23026)))))

(declare-fun b!3930457 () Bool)

(assert (=> b!3930457 (= e!2431530 (set.union (set.insert (h!47151 prefix!426) (as set.empty (Set C!23026))) (content!6281 (t!325278 prefix!426))))))

(assert (= (and d!1165165 c!682876) b!3930456))

(assert (= (and d!1165165 (not c!682876)) b!3930457))

(declare-fun m!4496101 () Bool)

(assert (=> b!3930457 m!4496101))

(assert (=> b!3930457 m!4495987))

(assert (=> d!1164545 d!1165165))

(assert (=> d!1164545 d!1164905))

(declare-fun d!1165167 () Bool)

(declare-fun lt!1372904 () Int)

(assert (=> d!1165167 (>= lt!1372904 0)))

(declare-fun e!2431531 () Int)

(assert (=> d!1165167 (= lt!1372904 e!2431531)))

(declare-fun c!682877 () Bool)

(assert (=> d!1165167 (= c!682877 (is-Nil!41733 lt!1372449))))

(assert (=> d!1165167 (= (size!31311 lt!1372449) lt!1372904)))

(declare-fun b!3930458 () Bool)

(assert (=> b!3930458 (= e!2431531 0)))

(declare-fun b!3930459 () Bool)

(assert (=> b!3930459 (= e!2431531 (+ 1 (size!31311 (t!325280 lt!1372449))))))

(assert (= (and d!1165167 c!682877) b!3930458))

(assert (= (and d!1165167 (not c!682877)) b!3930459))

(declare-fun m!4496103 () Bool)

(assert (=> b!3930459 m!4496103))

(assert (=> b!3929403 d!1165167))

(declare-fun d!1165169 () Bool)

(declare-fun lt!1372905 () Int)

(assert (=> d!1165169 (>= lt!1372905 0)))

(declare-fun e!2431532 () Int)

(assert (=> d!1165169 (= lt!1372905 e!2431532)))

(declare-fun c!682878 () Bool)

(assert (=> d!1165169 (= c!682878 (is-Nil!41733 lt!1372217))))

(assert (=> d!1165169 (= (size!31311 lt!1372217) lt!1372905)))

(declare-fun b!3930460 () Bool)

(assert (=> b!3930460 (= e!2431532 0)))

(declare-fun b!3930461 () Bool)

(assert (=> b!3930461 (= e!2431532 (+ 1 (size!31311 (t!325280 lt!1372217))))))

(assert (= (and d!1165169 c!682878) b!3930460))

(assert (= (and d!1165169 (not c!682878)) b!3930461))

(assert (=> b!3930461 m!4495803))

(assert (=> b!3929403 d!1165169))

(assert (=> b!3929403 d!1164811))

(declare-fun d!1165171 () Bool)

(declare-fun c!682879 () Bool)

(assert (=> d!1165171 (= c!682879 (is-Nil!41733 lt!1372464))))

(declare-fun e!2431533 () (Set Token!12168))

(assert (=> d!1165171 (= (content!6282 lt!1372464) e!2431533)))

(declare-fun b!3930462 () Bool)

(assert (=> b!3930462 (= e!2431533 (as set.empty (Set Token!12168)))))

(declare-fun b!3930463 () Bool)

(assert (=> b!3930463 (= e!2431533 (set.union (set.insert (h!47153 lt!1372464) (as set.empty (Set Token!12168))) (content!6282 (t!325280 lt!1372464))))))

(assert (= (and d!1165171 c!682879) b!3930462))

(assert (= (and d!1165171 (not c!682879)) b!3930463))

(declare-fun m!4496105 () Bool)

(assert (=> b!3930463 m!4496105))

(declare-fun m!4496107 () Bool)

(assert (=> b!3930463 m!4496107))

(assert (=> d!1164557 d!1165171))

(assert (=> d!1164557 d!1164885))

(declare-fun d!1165173 () Bool)

(declare-fun c!682880 () Bool)

(assert (=> d!1165173 (= c!682880 (is-Nil!41733 (_1!23638 lt!1372229)))))

(declare-fun e!2431534 () (Set Token!12168))

(assert (=> d!1165173 (= (content!6282 (_1!23638 lt!1372229)) e!2431534)))

(declare-fun b!3930464 () Bool)

(assert (=> b!3930464 (= e!2431534 (as set.empty (Set Token!12168)))))

(declare-fun b!3930465 () Bool)

(assert (=> b!3930465 (= e!2431534 (set.union (set.insert (h!47153 (_1!23638 lt!1372229)) (as set.empty (Set Token!12168))) (content!6282 (t!325280 (_1!23638 lt!1372229)))))))

(assert (= (and d!1165173 c!682880) b!3930464))

(assert (= (and d!1165173 (not c!682880)) b!3930465))

(declare-fun m!4496109 () Bool)

(assert (=> b!3930465 m!4496109))

(declare-fun m!4496111 () Bool)

(assert (=> b!3930465 m!4496111))

(assert (=> d!1164557 d!1165173))

(declare-fun d!1165175 () Bool)

(declare-fun lt!1372906 () Int)

(assert (=> d!1165175 (>= lt!1372906 0)))

(declare-fun e!2431535 () Int)

(assert (=> d!1165175 (= lt!1372906 e!2431535)))

(declare-fun c!682881 () Bool)

(assert (=> d!1165175 (= c!682881 (is-Nil!41731 (t!325278 suffix!1176)))))

(assert (=> d!1165175 (= (size!31308 (t!325278 suffix!1176)) lt!1372906)))

(declare-fun b!3930466 () Bool)

(assert (=> b!3930466 (= e!2431535 0)))

(declare-fun b!3930467 () Bool)

(assert (=> b!3930467 (= e!2431535 (+ 1 (size!31308 (t!325278 (t!325278 suffix!1176)))))))

(assert (= (and d!1165175 c!682881) b!3930466))

(assert (= (and d!1165175 (not c!682881)) b!3930467))

(declare-fun m!4496113 () Bool)

(assert (=> b!3930467 m!4496113))

(assert (=> b!3929473 d!1165175))

(declare-fun d!1165177 () Bool)

(declare-fun lt!1372907 () Int)

(assert (=> d!1165177 (>= lt!1372907 0)))

(declare-fun e!2431536 () Int)

(assert (=> d!1165177 (= lt!1372907 e!2431536)))

(declare-fun c!682882 () Bool)

(assert (=> d!1165177 (= c!682882 (is-Nil!41731 (_2!23638 lt!1372466)))))

(assert (=> d!1165177 (= (size!31308 (_2!23638 lt!1372466)) lt!1372907)))

(declare-fun b!3930468 () Bool)

(assert (=> b!3930468 (= e!2431536 0)))

(declare-fun b!3930469 () Bool)

(assert (=> b!3930469 (= e!2431536 (+ 1 (size!31308 (t!325278 (_2!23638 lt!1372466)))))))

(assert (= (and d!1165177 c!682882) b!3930468))

(assert (= (and d!1165177 (not c!682882)) b!3930469))

(declare-fun m!4496115 () Bool)

(assert (=> b!3930469 m!4496115))

(assert (=> b!3929469 d!1165177))

(assert (=> b!3929469 d!1164917))

(declare-fun d!1165179 () Bool)

(assert (=> d!1165179 (= (list!15504 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) (value!206313 (h!47153 suffixTokens!72)))) (list!15506 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) (value!206313 (h!47153 suffixTokens!72))))))))

(declare-fun bs!586182 () Bool)

(assert (= bs!586182 d!1165179))

(declare-fun m!4496117 () Bool)

(assert (=> bs!586182 m!4496117))

(assert (=> b!3929374 d!1165179))

(declare-fun d!1165181 () Bool)

(declare-fun lt!1372908 () Int)

(assert (=> d!1165181 (>= lt!1372908 0)))

(declare-fun e!2431537 () Int)

(assert (=> d!1165181 (= lt!1372908 e!2431537)))

(declare-fun c!682883 () Bool)

(assert (=> d!1165181 (= c!682883 (is-Nil!41731 (t!325278 lt!1372223)))))

(assert (=> d!1165181 (= (size!31308 (t!325278 lt!1372223)) lt!1372908)))

(declare-fun b!3930470 () Bool)

(assert (=> b!3930470 (= e!2431537 0)))

(declare-fun b!3930471 () Bool)

(assert (=> b!3930471 (= e!2431537 (+ 1 (size!31308 (t!325278 (t!325278 lt!1372223)))))))

(assert (= (and d!1165181 c!682883) b!3930470))

(assert (= (and d!1165181 (not c!682883)) b!3930471))

(declare-fun m!4496119 () Bool)

(assert (=> b!3930471 m!4496119))

(assert (=> b!3929557 d!1165181))

(declare-fun b!3930472 () Bool)

(declare-fun e!2431538 () List!41857)

(assert (=> b!3930472 (= e!2431538 suffixTokens!72)))

(declare-fun b!3930474 () Bool)

(declare-fun res!1590359 () Bool)

(declare-fun e!2431539 () Bool)

(assert (=> b!3930474 (=> (not res!1590359) (not e!2431539))))

(declare-fun lt!1372909 () List!41857)

(assert (=> b!3930474 (= res!1590359 (= (size!31311 lt!1372909) (+ (size!31311 (t!325280 (++!10787 lt!1372210 lt!1372222))) (size!31311 suffixTokens!72))))))

(declare-fun d!1165183 () Bool)

(assert (=> d!1165183 e!2431539))

(declare-fun res!1590358 () Bool)

(assert (=> d!1165183 (=> (not res!1590358) (not e!2431539))))

(assert (=> d!1165183 (= res!1590358 (= (content!6282 lt!1372909) (set.union (content!6282 (t!325280 (++!10787 lt!1372210 lt!1372222))) (content!6282 suffixTokens!72))))))

(assert (=> d!1165183 (= lt!1372909 e!2431538)))

(declare-fun c!682884 () Bool)

(assert (=> d!1165183 (= c!682884 (is-Nil!41733 (t!325280 (++!10787 lt!1372210 lt!1372222))))))

(assert (=> d!1165183 (= (++!10787 (t!325280 (++!10787 lt!1372210 lt!1372222)) suffixTokens!72) lt!1372909)))

(declare-fun b!3930473 () Bool)

(assert (=> b!3930473 (= e!2431538 (Cons!41733 (h!47153 (t!325280 (++!10787 lt!1372210 lt!1372222))) (++!10787 (t!325280 (t!325280 (++!10787 lt!1372210 lt!1372222))) suffixTokens!72)))))

(declare-fun b!3930475 () Bool)

(assert (=> b!3930475 (= e!2431539 (or (not (= suffixTokens!72 Nil!41733)) (= lt!1372909 (t!325280 (++!10787 lt!1372210 lt!1372222)))))))

(assert (= (and d!1165183 c!682884) b!3930472))

(assert (= (and d!1165183 (not c!682884)) b!3930473))

(assert (= (and d!1165183 res!1590358) b!3930474))

(assert (= (and b!3930474 res!1590359) b!3930475))

(declare-fun m!4496121 () Bool)

(assert (=> b!3930474 m!4496121))

(assert (=> b!3930474 m!4495319))

(assert (=> b!3930474 m!4494449))

(declare-fun m!4496123 () Bool)

(assert (=> d!1165183 m!4496123))

(declare-fun m!4496125 () Bool)

(assert (=> d!1165183 m!4496125))

(assert (=> d!1165183 m!4494455))

(declare-fun m!4496127 () Bool)

(assert (=> b!3930473 m!4496127))

(assert (=> b!3929533 d!1165183))

(declare-fun d!1165185 () Bool)

(assert (=> d!1165185 (= (isEmpty!24875 (originalCharacters!7115 (h!47153 suffixTokens!72))) (is-Nil!41731 (originalCharacters!7115 (h!47153 suffixTokens!72))))))

(assert (=> d!1164513 d!1165185))

(declare-fun d!1165187 () Bool)

(declare-fun lt!1372910 () Int)

(assert (=> d!1165187 (>= lt!1372910 0)))

(declare-fun e!2431540 () Int)

(assert (=> d!1165187 (= lt!1372910 e!2431540)))

(declare-fun c!682885 () Bool)

(assert (=> d!1165187 (= c!682885 (is-Nil!41733 (_1!23638 lt!1372416)))))

(assert (=> d!1165187 (= (size!31311 (_1!23638 lt!1372416)) lt!1372910)))

(declare-fun b!3930476 () Bool)

(assert (=> b!3930476 (= e!2431540 0)))

(declare-fun b!3930477 () Bool)

(assert (=> b!3930477 (= e!2431540 (+ 1 (size!31311 (t!325280 (_1!23638 lt!1372416)))))))

(assert (= (and d!1165187 c!682885) b!3930476))

(assert (= (and d!1165187 (not c!682885)) b!3930477))

(declare-fun m!4496129 () Bool)

(assert (=> b!3930477 m!4496129))

(assert (=> d!1164493 d!1165187))

(declare-fun b!3930478 () Bool)

(declare-fun res!1590361 () Bool)

(declare-fun e!2431542 () Bool)

(assert (=> b!3930478 (=> (not res!1590361) (not e!2431542))))

(declare-fun lt!1372913 () Option!8935)

(assert (=> b!3930478 (= res!1590361 (= (++!10788 (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372913)))) (_2!23637 (get!13793 lt!1372913))) (_2!23637 (v!39260 lt!1372235))))))

(declare-fun b!3930479 () Bool)

(declare-fun e!2431543 () Bool)

(assert (=> b!3930479 (= e!2431543 e!2431542)))

(declare-fun res!1590365 () Bool)

(assert (=> b!3930479 (=> (not res!1590365) (not e!2431542))))

(assert (=> b!3930479 (= res!1590365 (isDefined!6946 lt!1372913))))

(declare-fun b!3930480 () Bool)

(declare-fun e!2431541 () Option!8935)

(declare-fun call!284819 () Option!8935)

(assert (=> b!3930480 (= e!2431541 call!284819)))

(declare-fun b!3930481 () Bool)

(declare-fun res!1590363 () Bool)

(assert (=> b!3930481 (=> (not res!1590363) (not e!2431542))))

(assert (=> b!3930481 (= res!1590363 (= (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372913)))) (originalCharacters!7115 (_1!23637 (get!13793 lt!1372913)))))))

(declare-fun b!3930482 () Bool)

(declare-fun lt!1372911 () Option!8935)

(declare-fun lt!1372912 () Option!8935)

(assert (=> b!3930482 (= e!2431541 (ite (and (is-None!8934 lt!1372911) (is-None!8934 lt!1372912)) None!8934 (ite (is-None!8934 lt!1372912) lt!1372911 (ite (is-None!8934 lt!1372911) lt!1372912 (ite (>= (size!31307 (_1!23637 (v!39260 lt!1372911))) (size!31307 (_1!23637 (v!39260 lt!1372912)))) lt!1372911 lt!1372912)))))))

(assert (=> b!3930482 (= lt!1372911 call!284819)))

(assert (=> b!3930482 (= lt!1372912 (maxPrefix!3408 thiss!20629 (t!325281 rules!2768) (_2!23637 (v!39260 lt!1372235))))))

(declare-fun d!1165189 () Bool)

(assert (=> d!1165189 e!2431543))

(declare-fun res!1590364 () Bool)

(assert (=> d!1165189 (=> res!1590364 e!2431543)))

(assert (=> d!1165189 (= res!1590364 (isEmpty!24881 lt!1372913))))

(assert (=> d!1165189 (= lt!1372913 e!2431541)))

(declare-fun c!682886 () Bool)

(assert (=> d!1165189 (= c!682886 (and (is-Cons!41734 rules!2768) (is-Nil!41734 (t!325281 rules!2768))))))

(declare-fun lt!1372915 () Unit!60127)

(declare-fun lt!1372914 () Unit!60127)

(assert (=> d!1165189 (= lt!1372915 lt!1372914)))

(assert (=> d!1165189 (isPrefix!3610 (_2!23637 (v!39260 lt!1372235)) (_2!23637 (v!39260 lt!1372235)))))

(assert (=> d!1165189 (= lt!1372914 (lemmaIsPrefixRefl!2277 (_2!23637 (v!39260 lt!1372235)) (_2!23637 (v!39260 lt!1372235))))))

(assert (=> d!1165189 (rulesValidInductive!2347 thiss!20629 rules!2768)))

(assert (=> d!1165189 (= (maxPrefix!3408 thiss!20629 rules!2768 (_2!23637 (v!39260 lt!1372235))) lt!1372913)))

(declare-fun b!3930483 () Bool)

(declare-fun res!1590362 () Bool)

(assert (=> b!3930483 (=> (not res!1590362) (not e!2431542))))

(assert (=> b!3930483 (= res!1590362 (matchR!5479 (regex!6515 (rule!9459 (_1!23637 (get!13793 lt!1372913)))) (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372913))))))))

(declare-fun b!3930484 () Bool)

(declare-fun res!1590366 () Bool)

(assert (=> b!3930484 (=> (not res!1590366) (not e!2431542))))

(assert (=> b!3930484 (= res!1590366 (< (size!31308 (_2!23637 (get!13793 lt!1372913))) (size!31308 (_2!23637 (v!39260 lt!1372235)))))))

(declare-fun bm!284814 () Bool)

(assert (=> bm!284814 (= call!284819 (maxPrefixOneRule!2478 thiss!20629 (h!47154 rules!2768) (_2!23637 (v!39260 lt!1372235))))))

(declare-fun b!3930485 () Bool)

(declare-fun res!1590360 () Bool)

(assert (=> b!3930485 (=> (not res!1590360) (not e!2431542))))

(assert (=> b!3930485 (= res!1590360 (= (value!206313 (_1!23637 (get!13793 lt!1372913))) (apply!9754 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372913)))) (seqFromList!4782 (originalCharacters!7115 (_1!23637 (get!13793 lt!1372913)))))))))

(declare-fun b!3930486 () Bool)

(assert (=> b!3930486 (= e!2431542 (contains!8362 rules!2768 (rule!9459 (_1!23637 (get!13793 lt!1372913)))))))

(assert (= (and d!1165189 c!682886) b!3930480))

(assert (= (and d!1165189 (not c!682886)) b!3930482))

(assert (= (or b!3930480 b!3930482) bm!284814))

(assert (= (and d!1165189 (not res!1590364)) b!3930479))

(assert (= (and b!3930479 res!1590365) b!3930481))

(assert (= (and b!3930481 res!1590363) b!3930484))

(assert (= (and b!3930484 res!1590366) b!3930478))

(assert (= (and b!3930478 res!1590361) b!3930485))

(assert (= (and b!3930485 res!1590360) b!3930483))

(assert (= (and b!3930483 res!1590362) b!3930486))

(declare-fun m!4496131 () Bool)

(assert (=> b!3930482 m!4496131))

(declare-fun m!4496133 () Bool)

(assert (=> d!1165189 m!4496133))

(declare-fun m!4496135 () Bool)

(assert (=> d!1165189 m!4496135))

(declare-fun m!4496137 () Bool)

(assert (=> d!1165189 m!4496137))

(assert (=> d!1165189 m!4494629))

(declare-fun m!4496139 () Bool)

(assert (=> b!3930483 m!4496139))

(declare-fun m!4496141 () Bool)

(assert (=> b!3930483 m!4496141))

(assert (=> b!3930483 m!4496141))

(declare-fun m!4496143 () Bool)

(assert (=> b!3930483 m!4496143))

(assert (=> b!3930483 m!4496143))

(declare-fun m!4496145 () Bool)

(assert (=> b!3930483 m!4496145))

(assert (=> b!3930478 m!4496139))

(assert (=> b!3930478 m!4496141))

(assert (=> b!3930478 m!4496141))

(assert (=> b!3930478 m!4496143))

(assert (=> b!3930478 m!4496143))

(declare-fun m!4496147 () Bool)

(assert (=> b!3930478 m!4496147))

(declare-fun m!4496149 () Bool)

(assert (=> b!3930479 m!4496149))

(assert (=> b!3930485 m!4496139))

(declare-fun m!4496151 () Bool)

(assert (=> b!3930485 m!4496151))

(assert (=> b!3930485 m!4496151))

(declare-fun m!4496153 () Bool)

(assert (=> b!3930485 m!4496153))

(assert (=> b!3930486 m!4496139))

(declare-fun m!4496155 () Bool)

(assert (=> b!3930486 m!4496155))

(assert (=> b!3930481 m!4496139))

(assert (=> b!3930481 m!4496141))

(assert (=> b!3930481 m!4496141))

(assert (=> b!3930481 m!4496143))

(assert (=> b!3930484 m!4496139))

(declare-fun m!4496157 () Bool)

(assert (=> b!3930484 m!4496157))

(assert (=> b!3930484 m!4493969))

(declare-fun m!4496159 () Bool)

(assert (=> bm!284814 m!4496159))

(assert (=> d!1164493 d!1165189))

(declare-fun d!1165191 () Bool)

(declare-fun c!682887 () Bool)

(assert (=> d!1165191 (= c!682887 (is-Nil!41731 lt!1372450))))

(declare-fun e!2431544 () (Set C!23026))

(assert (=> d!1165191 (= (content!6281 lt!1372450) e!2431544)))

(declare-fun b!3930487 () Bool)

(assert (=> b!3930487 (= e!2431544 (as set.empty (Set C!23026)))))

(declare-fun b!3930488 () Bool)

(assert (=> b!3930488 (= e!2431544 (set.union (set.insert (h!47151 lt!1372450) (as set.empty (Set C!23026))) (content!6281 (t!325278 lt!1372450))))))

(assert (= (and d!1165191 c!682887) b!3930487))

(assert (= (and d!1165191 (not c!682887)) b!3930488))

(declare-fun m!4496161 () Bool)

(assert (=> b!3930488 m!4496161))

(declare-fun m!4496163 () Bool)

(assert (=> b!3930488 m!4496163))

(assert (=> d!1164531 d!1165191))

(assert (=> d!1164531 d!1165007))

(assert (=> d!1164531 d!1164903))

(declare-fun d!1165193 () Bool)

(declare-fun c!682888 () Bool)

(assert (=> d!1165193 (= c!682888 (is-Node!12726 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (value!206313 (h!47153 prefixTokens!80))))))))

(declare-fun e!2431545 () Bool)

(assert (=> d!1165193 (= (inv!55928 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (value!206313 (h!47153 prefixTokens!80))))) e!2431545)))

(declare-fun b!3930489 () Bool)

(assert (=> b!3930489 (= e!2431545 (inv!55932 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (value!206313 (h!47153 prefixTokens!80))))))))

(declare-fun b!3930490 () Bool)

(declare-fun e!2431546 () Bool)

(assert (=> b!3930490 (= e!2431545 e!2431546)))

(declare-fun res!1590367 () Bool)

(assert (=> b!3930490 (= res!1590367 (not (is-Leaf!19691 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (value!206313 (h!47153 prefixTokens!80)))))))))

(assert (=> b!3930490 (=> res!1590367 e!2431546)))

(declare-fun b!3930491 () Bool)

(assert (=> b!3930491 (= e!2431546 (inv!55933 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (value!206313 (h!47153 prefixTokens!80))))))))

(assert (= (and d!1165193 c!682888) b!3930489))

(assert (= (and d!1165193 (not c!682888)) b!3930490))

(assert (= (and b!3930490 (not res!1590367)) b!3930491))

(declare-fun m!4496165 () Bool)

(assert (=> b!3930489 m!4496165))

(declare-fun m!4496167 () Bool)

(assert (=> b!3930491 m!4496167))

(assert (=> b!3929456 d!1165193))

(declare-fun d!1165195 () Bool)

(declare-fun c!682890 () Bool)

(assert (=> d!1165195 (= c!682890 (is-IntegerValue!20235 (value!206313 (h!47153 (t!325280 prefixTokens!80)))))))

(declare-fun e!2431548 () Bool)

(assert (=> d!1165195 (= (inv!21 (value!206313 (h!47153 (t!325280 prefixTokens!80)))) e!2431548)))

(declare-fun b!3930492 () Bool)

(declare-fun e!2431547 () Bool)

(assert (=> b!3930492 (= e!2431547 (inv!17 (value!206313 (h!47153 (t!325280 prefixTokens!80)))))))

(declare-fun b!3930493 () Bool)

(declare-fun res!1590368 () Bool)

(declare-fun e!2431549 () Bool)

(assert (=> b!3930493 (=> res!1590368 e!2431549)))

(assert (=> b!3930493 (= res!1590368 (not (is-IntegerValue!20237 (value!206313 (h!47153 (t!325280 prefixTokens!80))))))))

(assert (=> b!3930493 (= e!2431547 e!2431549)))

(declare-fun b!3930494 () Bool)

(assert (=> b!3930494 (= e!2431548 (inv!16 (value!206313 (h!47153 (t!325280 prefixTokens!80)))))))

(declare-fun b!3930495 () Bool)

(assert (=> b!3930495 (= e!2431549 (inv!15 (value!206313 (h!47153 (t!325280 prefixTokens!80)))))))

(declare-fun b!3930496 () Bool)

(assert (=> b!3930496 (= e!2431548 e!2431547)))

(declare-fun c!682889 () Bool)

(assert (=> b!3930496 (= c!682889 (is-IntegerValue!20236 (value!206313 (h!47153 (t!325280 prefixTokens!80)))))))

(assert (= (and d!1165195 c!682890) b!3930494))

(assert (= (and d!1165195 (not c!682890)) b!3930496))

(assert (= (and b!3930496 c!682889) b!3930492))

(assert (= (and b!3930496 (not c!682889)) b!3930493))

(assert (= (and b!3930493 (not res!1590368)) b!3930495))

(declare-fun m!4496169 () Bool)

(assert (=> b!3930492 m!4496169))

(declare-fun m!4496171 () Bool)

(assert (=> b!3930494 m!4496171))

(declare-fun m!4496173 () Bool)

(assert (=> b!3930495 m!4496173))

(assert (=> b!3929691 d!1165195))

(declare-fun d!1165197 () Bool)

(assert (=> d!1165197 (= (isEmpty!24877 (_1!23638 lt!1372425)) (is-Nil!41733 (_1!23638 lt!1372425)))))

(assert (=> b!3929366 d!1165197))

(declare-fun d!1165199 () Bool)

(declare-fun lt!1372916 () Int)

(assert (=> d!1165199 (>= lt!1372916 0)))

(declare-fun e!2431550 () Int)

(assert (=> d!1165199 (= lt!1372916 e!2431550)))

(declare-fun c!682891 () Bool)

(assert (=> d!1165199 (= c!682891 (is-Nil!41733 lt!1372464))))

(assert (=> d!1165199 (= (size!31311 lt!1372464) lt!1372916)))

(declare-fun b!3930497 () Bool)

(assert (=> b!3930497 (= e!2431550 0)))

(declare-fun b!3930498 () Bool)

(assert (=> b!3930498 (= e!2431550 (+ 1 (size!31311 (t!325280 lt!1372464))))))

(assert (= (and d!1165199 c!682891) b!3930497))

(assert (= (and d!1165199 (not c!682891)) b!3930498))

(declare-fun m!4496175 () Bool)

(assert (=> b!3930498 m!4496175))

(assert (=> b!3929450 d!1165199))

(assert (=> b!3929450 d!1164939))

(declare-fun d!1165201 () Bool)

(declare-fun lt!1372917 () Int)

(assert (=> d!1165201 (>= lt!1372917 0)))

(declare-fun e!2431551 () Int)

(assert (=> d!1165201 (= lt!1372917 e!2431551)))

(declare-fun c!682892 () Bool)

(assert (=> d!1165201 (= c!682892 (is-Nil!41733 (_1!23638 lt!1372229)))))

(assert (=> d!1165201 (= (size!31311 (_1!23638 lt!1372229)) lt!1372917)))

(declare-fun b!3930499 () Bool)

(assert (=> b!3930499 (= e!2431551 0)))

(declare-fun b!3930500 () Bool)

(assert (=> b!3930500 (= e!2431551 (+ 1 (size!31311 (t!325280 (_1!23638 lt!1372229)))))))

(assert (= (and d!1165201 c!682892) b!3930499))

(assert (= (and d!1165201 (not c!682892)) b!3930500))

(declare-fun m!4496177 () Bool)

(assert (=> b!3930500 m!4496177))

(assert (=> b!3929450 d!1165201))

(declare-fun d!1165203 () Bool)

(assert (=> d!1165203 (= (isEmpty!24877 (_1!23638 lt!1372461)) (is-Nil!41733 (_1!23638 lt!1372461)))))

(assert (=> b!3929447 d!1165203))

(declare-fun d!1165205 () Bool)

(declare-fun c!682893 () Bool)

(assert (=> d!1165205 (= c!682893 (is-Nil!41733 lt!1372449))))

(declare-fun e!2431552 () (Set Token!12168))

(assert (=> d!1165205 (= (content!6282 lt!1372449) e!2431552)))

(declare-fun b!3930501 () Bool)

(assert (=> b!3930501 (= e!2431552 (as set.empty (Set Token!12168)))))

(declare-fun b!3930502 () Bool)

(assert (=> b!3930502 (= e!2431552 (set.union (set.insert (h!47153 lt!1372449) (as set.empty (Set Token!12168))) (content!6282 (t!325280 lt!1372449))))))

(assert (= (and d!1165205 c!682893) b!3930501))

(assert (= (and d!1165205 (not c!682893)) b!3930502))

(declare-fun m!4496179 () Bool)

(assert (=> b!3930502 m!4496179))

(declare-fun m!4496181 () Bool)

(assert (=> b!3930502 m!4496181))

(assert (=> d!1164529 d!1165205))

(declare-fun d!1165207 () Bool)

(declare-fun c!682894 () Bool)

(assert (=> d!1165207 (= c!682894 (is-Nil!41733 lt!1372217))))

(declare-fun e!2431553 () (Set Token!12168))

(assert (=> d!1165207 (= (content!6282 lt!1372217) e!2431553)))

(declare-fun b!3930503 () Bool)

(assert (=> b!3930503 (= e!2431553 (as set.empty (Set Token!12168)))))

(declare-fun b!3930504 () Bool)

(assert (=> b!3930504 (= e!2431553 (set.union (set.insert (h!47153 lt!1372217) (as set.empty (Set Token!12168))) (content!6282 (t!325280 lt!1372217))))))

(assert (= (and d!1165207 c!682894) b!3930503))

(assert (= (and d!1165207 (not c!682894)) b!3930504))

(declare-fun m!4496183 () Bool)

(assert (=> b!3930504 m!4496183))

(assert (=> b!3930504 m!4495807))

(assert (=> d!1164529 d!1165207))

(assert (=> d!1164529 d!1165041))

(declare-fun d!1165209 () Bool)

(assert (=> d!1165209 (= (inv!15 (value!206313 (h!47153 prefixTokens!80))) (= (charsToBigInt!0 (text!47664 (value!206313 (h!47153 prefixTokens!80))) 0) (value!206309 (value!206313 (h!47153 prefixTokens!80)))))))

(declare-fun bs!586183 () Bool)

(assert (= bs!586183 d!1165209))

(declare-fun m!4496185 () Bool)

(assert (=> bs!586183 m!4496185))

(assert (=> b!3929460 d!1165209))

(declare-fun d!1165211 () Bool)

(declare-fun c!682896 () Bool)

(assert (=> d!1165211 (= c!682896 (is-IntegerValue!20235 (value!206313 (h!47153 (t!325280 suffixTokens!72)))))))

(declare-fun e!2431555 () Bool)

(assert (=> d!1165211 (= (inv!21 (value!206313 (h!47153 (t!325280 suffixTokens!72)))) e!2431555)))

(declare-fun b!3930505 () Bool)

(declare-fun e!2431554 () Bool)

(assert (=> b!3930505 (= e!2431554 (inv!17 (value!206313 (h!47153 (t!325280 suffixTokens!72)))))))

(declare-fun b!3930506 () Bool)

(declare-fun res!1590369 () Bool)

(declare-fun e!2431556 () Bool)

(assert (=> b!3930506 (=> res!1590369 e!2431556)))

(assert (=> b!3930506 (= res!1590369 (not (is-IntegerValue!20237 (value!206313 (h!47153 (t!325280 suffixTokens!72))))))))

(assert (=> b!3930506 (= e!2431554 e!2431556)))

(declare-fun b!3930507 () Bool)

(assert (=> b!3930507 (= e!2431555 (inv!16 (value!206313 (h!47153 (t!325280 suffixTokens!72)))))))

(declare-fun b!3930508 () Bool)

(assert (=> b!3930508 (= e!2431556 (inv!15 (value!206313 (h!47153 (t!325280 suffixTokens!72)))))))

(declare-fun b!3930509 () Bool)

(assert (=> b!3930509 (= e!2431555 e!2431554)))

(declare-fun c!682895 () Bool)

(assert (=> b!3930509 (= c!682895 (is-IntegerValue!20236 (value!206313 (h!47153 (t!325280 suffixTokens!72)))))))

(assert (= (and d!1165211 c!682896) b!3930507))

(assert (= (and d!1165211 (not c!682896)) b!3930509))

(assert (= (and b!3930509 c!682895) b!3930505))

(assert (= (and b!3930509 (not c!682895)) b!3930506))

(assert (= (and b!3930506 (not res!1590369)) b!3930508))

(declare-fun m!4496187 () Bool)

(assert (=> b!3930505 m!4496187))

(declare-fun m!4496189 () Bool)

(assert (=> b!3930507 m!4496189))

(declare-fun m!4496191 () Bool)

(assert (=> b!3930508 m!4496191))

(assert (=> b!3929722 d!1165211))

(declare-fun d!1165213 () Bool)

(declare-fun lt!1372918 () Int)

(assert (=> d!1165213 (>= lt!1372918 0)))

(declare-fun e!2431557 () Int)

(assert (=> d!1165213 (= lt!1372918 e!2431557)))

(declare-fun c!682897 () Bool)

(assert (=> d!1165213 (= c!682897 (is-Nil!41731 lt!1372457))))

(assert (=> d!1165213 (= (size!31308 lt!1372457) lt!1372918)))

(declare-fun b!3930510 () Bool)

(assert (=> b!3930510 (= e!2431557 0)))

(declare-fun b!3930511 () Bool)

(assert (=> b!3930511 (= e!2431557 (+ 1 (size!31308 (t!325278 lt!1372457))))))

(assert (= (and d!1165213 c!682897) b!3930510))

(assert (= (and d!1165213 (not c!682897)) b!3930511))

(declare-fun m!4496193 () Bool)

(assert (=> b!3930511 m!4496193))

(assert (=> b!3929437 d!1165213))

(assert (=> b!3929437 d!1164603))

(assert (=> b!3929437 d!1164581))

(assert (=> b!3929662 d!1164829))

(declare-fun d!1165215 () Bool)

(declare-fun lt!1372919 () List!41855)

(assert (=> d!1165215 (= (++!10788 (t!325278 lt!1372190) lt!1372919) (tail!6068 lt!1372223))))

(declare-fun e!2431558 () List!41855)

(assert (=> d!1165215 (= lt!1372919 e!2431558)))

(declare-fun c!682898 () Bool)

(assert (=> d!1165215 (= c!682898 (is-Cons!41731 (t!325278 lt!1372190)))))

(assert (=> d!1165215 (>= (size!31308 (tail!6068 lt!1372223)) (size!31308 (t!325278 lt!1372190)))))

(assert (=> d!1165215 (= (getSuffix!2065 (tail!6068 lt!1372223) (t!325278 lt!1372190)) lt!1372919)))

(declare-fun b!3930512 () Bool)

(assert (=> b!3930512 (= e!2431558 (getSuffix!2065 (tail!6068 (tail!6068 lt!1372223)) (t!325278 (t!325278 lt!1372190))))))

(declare-fun b!3930513 () Bool)

(assert (=> b!3930513 (= e!2431558 (tail!6068 lt!1372223))))

(assert (= (and d!1165215 c!682898) b!3930512))

(assert (= (and d!1165215 (not c!682898)) b!3930513))

(declare-fun m!4496195 () Bool)

(assert (=> d!1165215 m!4496195))

(assert (=> d!1165215 m!4494289))

(assert (=> d!1165215 m!4495721))

(assert (=> d!1165215 m!4494301))

(assert (=> b!3930512 m!4494289))

(assert (=> b!3930512 m!4495723))

(assert (=> b!3930512 m!4495723))

(declare-fun m!4496197 () Bool)

(assert (=> b!3930512 m!4496197))

(assert (=> b!3929273 d!1165215))

(assert (=> b!3929273 d!1164993))

(declare-fun d!1165217 () Bool)

(assert (=> d!1165217 (= (_2!23637 (v!39260 lt!1372235)) lt!1372227)))

(assert (=> d!1165217 true))

(declare-fun _$63!988 () Unit!60127)

(assert (=> d!1165217 (= (choose!23351 lt!1372190 (_2!23637 (v!39260 lt!1372235)) lt!1372190 lt!1372227 lt!1372223) _$63!988)))

(assert (=> d!1164549 d!1165217))

(assert (=> d!1164549 d!1165061))

(assert (=> b!3929523 d!1165149))

(assert (=> b!3929523 d!1164889))

(declare-fun d!1165219 () Bool)

(declare-fun lt!1372920 () Int)

(assert (=> d!1165219 (>= lt!1372920 0)))

(declare-fun e!2431559 () Int)

(assert (=> d!1165219 (= lt!1372920 e!2431559)))

(declare-fun c!682899 () Bool)

(assert (=> d!1165219 (= c!682899 (is-Nil!41731 (t!325278 (_2!23637 (v!39260 lt!1372235)))))))

(assert (=> d!1165219 (= (size!31308 (t!325278 (_2!23637 (v!39260 lt!1372235)))) lt!1372920)))

(declare-fun b!3930514 () Bool)

(assert (=> b!3930514 (= e!2431559 0)))

(declare-fun b!3930515 () Bool)

(assert (=> b!3930515 (= e!2431559 (+ 1 (size!31308 (t!325278 (t!325278 (_2!23637 (v!39260 lt!1372235)))))))))

(assert (= (and d!1165219 c!682899) b!3930514))

(assert (= (and d!1165219 (not c!682899)) b!3930515))

(declare-fun m!4496199 () Bool)

(assert (=> b!3930515 m!4496199))

(assert (=> b!3929475 d!1165219))

(declare-fun b!3930517 () Bool)

(declare-fun e!2431561 () tuple2!41008)

(assert (=> b!3930517 (= e!2431561 (tuple2!41009 Nil!41733 (_2!23637 (v!39260 lt!1372417))))))

(declare-fun b!3930518 () Bool)

(declare-fun e!2431562 () Bool)

(declare-fun e!2431560 () Bool)

(assert (=> b!3930518 (= e!2431562 e!2431560)))

(declare-fun res!1590370 () Bool)

(declare-fun lt!1372921 () tuple2!41008)

(assert (=> b!3930518 (= res!1590370 (< (size!31308 (_2!23638 lt!1372921)) (size!31308 (_2!23637 (v!39260 lt!1372417)))))))

(assert (=> b!3930518 (=> (not res!1590370) (not e!2431560))))

(declare-fun b!3930519 () Bool)

(assert (=> b!3930519 (= e!2431562 (= (_2!23638 lt!1372921) (_2!23637 (v!39260 lt!1372417))))))

(declare-fun b!3930520 () Bool)

(assert (=> b!3930520 (= e!2431560 (not (isEmpty!24877 (_1!23638 lt!1372921))))))

(declare-fun b!3930516 () Bool)

(declare-fun lt!1372922 () Option!8935)

(declare-fun lt!1372923 () tuple2!41008)

(assert (=> b!3930516 (= e!2431561 (tuple2!41009 (Cons!41733 (_1!23637 (v!39260 lt!1372922)) (_1!23638 lt!1372923)) (_2!23638 lt!1372923)))))

(assert (=> b!3930516 (= lt!1372923 (lexList!1872 thiss!20629 rules!2768 (_2!23637 (v!39260 lt!1372922))))))

(declare-fun d!1165221 () Bool)

(assert (=> d!1165221 e!2431562))

(declare-fun c!682901 () Bool)

(assert (=> d!1165221 (= c!682901 (> (size!31311 (_1!23638 lt!1372921)) 0))))

(assert (=> d!1165221 (= lt!1372921 e!2431561)))

(declare-fun c!682900 () Bool)

(assert (=> d!1165221 (= c!682900 (is-Some!8934 lt!1372922))))

(assert (=> d!1165221 (= lt!1372922 (maxPrefix!3408 thiss!20629 rules!2768 (_2!23637 (v!39260 lt!1372417))))))

(assert (=> d!1165221 (= (lexList!1872 thiss!20629 rules!2768 (_2!23637 (v!39260 lt!1372417))) lt!1372921)))

(assert (= (and d!1165221 c!682900) b!3930516))

(assert (= (and d!1165221 (not c!682900)) b!3930517))

(assert (= (and d!1165221 c!682901) b!3930518))

(assert (= (and d!1165221 (not c!682901)) b!3930519))

(assert (= (and b!3930518 res!1590370) b!3930520))

(declare-fun m!4496201 () Bool)

(assert (=> b!3930518 m!4496201))

(declare-fun m!4496203 () Bool)

(assert (=> b!3930518 m!4496203))

(declare-fun m!4496205 () Bool)

(assert (=> b!3930520 m!4496205))

(declare-fun m!4496207 () Bool)

(assert (=> b!3930516 m!4496207))

(declare-fun m!4496209 () Bool)

(assert (=> d!1165221 m!4496209))

(declare-fun m!4496211 () Bool)

(assert (=> d!1165221 m!4496211))

(assert (=> b!3929347 d!1165221))

(assert (=> b!3929295 d!1165149))

(declare-fun d!1165223 () Bool)

(assert (=> d!1165223 (= (head!8342 lt!1372211) (h!47151 lt!1372211))))

(assert (=> b!3929295 d!1165223))

(declare-fun d!1165225 () Bool)

(declare-fun lt!1372924 () Int)

(assert (=> d!1165225 (>= lt!1372924 0)))

(declare-fun e!2431563 () Int)

(assert (=> d!1165225 (= lt!1372924 e!2431563)))

(declare-fun c!682902 () Bool)

(assert (=> d!1165225 (= c!682902 (is-Nil!41733 (_1!23638 lt!1372466)))))

(assert (=> d!1165225 (= (size!31311 (_1!23638 lt!1372466)) lt!1372924)))

(declare-fun b!3930521 () Bool)

(assert (=> b!3930521 (= e!2431563 0)))

(declare-fun b!3930522 () Bool)

(assert (=> b!3930522 (= e!2431563 (+ 1 (size!31311 (t!325280 (_1!23638 lt!1372466)))))))

(assert (= (and d!1165225 c!682902) b!3930521))

(assert (= (and d!1165225 (not c!682902)) b!3930522))

(declare-fun m!4496213 () Bool)

(assert (=> b!3930522 m!4496213))

(assert (=> d!1164579 d!1165225))

(declare-fun b!3930523 () Bool)

(declare-fun res!1590372 () Bool)

(declare-fun e!2431565 () Bool)

(assert (=> b!3930523 (=> (not res!1590372) (not e!2431565))))

(declare-fun lt!1372927 () Option!8935)

(assert (=> b!3930523 (= res!1590372 (= (++!10788 (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372927)))) (_2!23637 (get!13793 lt!1372927))) lt!1372227))))

(declare-fun b!3930524 () Bool)

(declare-fun e!2431566 () Bool)

(assert (=> b!3930524 (= e!2431566 e!2431565)))

(declare-fun res!1590376 () Bool)

(assert (=> b!3930524 (=> (not res!1590376) (not e!2431565))))

(assert (=> b!3930524 (= res!1590376 (isDefined!6946 lt!1372927))))

(declare-fun b!3930525 () Bool)

(declare-fun e!2431564 () Option!8935)

(declare-fun call!284820 () Option!8935)

(assert (=> b!3930525 (= e!2431564 call!284820)))

(declare-fun b!3930526 () Bool)

(declare-fun res!1590374 () Bool)

(assert (=> b!3930526 (=> (not res!1590374) (not e!2431565))))

(assert (=> b!3930526 (= res!1590374 (= (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372927)))) (originalCharacters!7115 (_1!23637 (get!13793 lt!1372927)))))))

(declare-fun b!3930527 () Bool)

(declare-fun lt!1372925 () Option!8935)

(declare-fun lt!1372926 () Option!8935)

(assert (=> b!3930527 (= e!2431564 (ite (and (is-None!8934 lt!1372925) (is-None!8934 lt!1372926)) None!8934 (ite (is-None!8934 lt!1372926) lt!1372925 (ite (is-None!8934 lt!1372925) lt!1372926 (ite (>= (size!31307 (_1!23637 (v!39260 lt!1372925))) (size!31307 (_1!23637 (v!39260 lt!1372926)))) lt!1372925 lt!1372926)))))))

(assert (=> b!3930527 (= lt!1372925 call!284820)))

(assert (=> b!3930527 (= lt!1372926 (maxPrefix!3408 thiss!20629 (t!325281 rules!2768) lt!1372227))))

(declare-fun d!1165227 () Bool)

(assert (=> d!1165227 e!2431566))

(declare-fun res!1590375 () Bool)

(assert (=> d!1165227 (=> res!1590375 e!2431566)))

(assert (=> d!1165227 (= res!1590375 (isEmpty!24881 lt!1372927))))

(assert (=> d!1165227 (= lt!1372927 e!2431564)))

(declare-fun c!682903 () Bool)

(assert (=> d!1165227 (= c!682903 (and (is-Cons!41734 rules!2768) (is-Nil!41734 (t!325281 rules!2768))))))

(declare-fun lt!1372929 () Unit!60127)

(declare-fun lt!1372928 () Unit!60127)

(assert (=> d!1165227 (= lt!1372929 lt!1372928)))

(assert (=> d!1165227 (isPrefix!3610 lt!1372227 lt!1372227)))

(assert (=> d!1165227 (= lt!1372928 (lemmaIsPrefixRefl!2277 lt!1372227 lt!1372227))))

(assert (=> d!1165227 (rulesValidInductive!2347 thiss!20629 rules!2768)))

(assert (=> d!1165227 (= (maxPrefix!3408 thiss!20629 rules!2768 lt!1372227) lt!1372927)))

(declare-fun b!3930528 () Bool)

(declare-fun res!1590373 () Bool)

(assert (=> b!3930528 (=> (not res!1590373) (not e!2431565))))

(assert (=> b!3930528 (= res!1590373 (matchR!5479 (regex!6515 (rule!9459 (_1!23637 (get!13793 lt!1372927)))) (list!15504 (charsOf!4339 (_1!23637 (get!13793 lt!1372927))))))))

(declare-fun b!3930529 () Bool)

(declare-fun res!1590377 () Bool)

(assert (=> b!3930529 (=> (not res!1590377) (not e!2431565))))

(assert (=> b!3930529 (= res!1590377 (< (size!31308 (_2!23637 (get!13793 lt!1372927))) (size!31308 lt!1372227)))))

(declare-fun bm!284815 () Bool)

(assert (=> bm!284815 (= call!284820 (maxPrefixOneRule!2478 thiss!20629 (h!47154 rules!2768) lt!1372227))))

(declare-fun b!3930530 () Bool)

(declare-fun res!1590371 () Bool)

(assert (=> b!3930530 (=> (not res!1590371) (not e!2431565))))

(assert (=> b!3930530 (= res!1590371 (= (value!206313 (_1!23637 (get!13793 lt!1372927))) (apply!9754 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372927)))) (seqFromList!4782 (originalCharacters!7115 (_1!23637 (get!13793 lt!1372927)))))))))

(declare-fun b!3930531 () Bool)

(assert (=> b!3930531 (= e!2431565 (contains!8362 rules!2768 (rule!9459 (_1!23637 (get!13793 lt!1372927)))))))

(assert (= (and d!1165227 c!682903) b!3930525))

(assert (= (and d!1165227 (not c!682903)) b!3930527))

(assert (= (or b!3930525 b!3930527) bm!284815))

(assert (= (and d!1165227 (not res!1590375)) b!3930524))

(assert (= (and b!3930524 res!1590376) b!3930526))

(assert (= (and b!3930526 res!1590374) b!3930529))

(assert (= (and b!3930529 res!1590377) b!3930523))

(assert (= (and b!3930523 res!1590372) b!3930530))

(assert (= (and b!3930530 res!1590371) b!3930528))

(assert (= (and b!3930528 res!1590373) b!3930531))

(declare-fun m!4496215 () Bool)

(assert (=> b!3930527 m!4496215))

(declare-fun m!4496217 () Bool)

(assert (=> d!1165227 m!4496217))

(declare-fun m!4496219 () Bool)

(assert (=> d!1165227 m!4496219))

(declare-fun m!4496221 () Bool)

(assert (=> d!1165227 m!4496221))

(assert (=> d!1165227 m!4494629))

(declare-fun m!4496223 () Bool)

(assert (=> b!3930528 m!4496223))

(declare-fun m!4496225 () Bool)

(assert (=> b!3930528 m!4496225))

(assert (=> b!3930528 m!4496225))

(declare-fun m!4496227 () Bool)

(assert (=> b!3930528 m!4496227))

(assert (=> b!3930528 m!4496227))

(declare-fun m!4496229 () Bool)

(assert (=> b!3930528 m!4496229))

(assert (=> b!3930523 m!4496223))

(assert (=> b!3930523 m!4496225))

(assert (=> b!3930523 m!4496225))

(assert (=> b!3930523 m!4496227))

(assert (=> b!3930523 m!4496227))

(declare-fun m!4496231 () Bool)

(assert (=> b!3930523 m!4496231))

(declare-fun m!4496233 () Bool)

(assert (=> b!3930524 m!4496233))

(assert (=> b!3930530 m!4496223))

(declare-fun m!4496235 () Bool)

(assert (=> b!3930530 m!4496235))

(assert (=> b!3930530 m!4496235))

(declare-fun m!4496237 () Bool)

(assert (=> b!3930530 m!4496237))

(assert (=> b!3930531 m!4496223))

(declare-fun m!4496239 () Bool)

(assert (=> b!3930531 m!4496239))

(assert (=> b!3930526 m!4496223))

(assert (=> b!3930526 m!4496225))

(assert (=> b!3930526 m!4496225))

(assert (=> b!3930526 m!4496227))

(assert (=> b!3930529 m!4496223))

(declare-fun m!4496241 () Bool)

(assert (=> b!3930529 m!4496241))

(assert (=> b!3930529 m!4494579))

(declare-fun m!4496243 () Bool)

(assert (=> bm!284815 m!4496243))

(assert (=> d!1164579 d!1165227))

(declare-fun d!1165229 () Bool)

(declare-fun e!2431568 () Bool)

(assert (=> d!1165229 e!2431568))

(declare-fun res!1590378 () Bool)

(assert (=> d!1165229 (=> res!1590378 e!2431568)))

(declare-fun lt!1372930 () Bool)

(assert (=> d!1165229 (= res!1590378 (not lt!1372930))))

(declare-fun e!2431567 () Bool)

(assert (=> d!1165229 (= lt!1372930 e!2431567)))

(declare-fun res!1590381 () Bool)

(assert (=> d!1165229 (=> res!1590381 e!2431567)))

(assert (=> d!1165229 (= res!1590381 (is-Nil!41731 prefix!426))))

(assert (=> d!1165229 (= (isPrefix!3610 prefix!426 (++!10788 prefix!426 suffix!1176)) lt!1372930)))

(declare-fun b!3930532 () Bool)

(declare-fun e!2431569 () Bool)

(assert (=> b!3930532 (= e!2431567 e!2431569)))

(declare-fun res!1590380 () Bool)

(assert (=> b!3930532 (=> (not res!1590380) (not e!2431569))))

(assert (=> b!3930532 (= res!1590380 (not (is-Nil!41731 (++!10788 prefix!426 suffix!1176))))))

(declare-fun b!3930533 () Bool)

(declare-fun res!1590379 () Bool)

(assert (=> b!3930533 (=> (not res!1590379) (not e!2431569))))

(assert (=> b!3930533 (= res!1590379 (= (head!8342 prefix!426) (head!8342 (++!10788 prefix!426 suffix!1176))))))

(declare-fun b!3930535 () Bool)

(assert (=> b!3930535 (= e!2431568 (>= (size!31308 (++!10788 prefix!426 suffix!1176)) (size!31308 prefix!426)))))

(declare-fun b!3930534 () Bool)

(assert (=> b!3930534 (= e!2431569 (isPrefix!3610 (tail!6068 prefix!426) (tail!6068 (++!10788 prefix!426 suffix!1176))))))

(assert (= (and d!1165229 (not res!1590381)) b!3930532))

(assert (= (and b!3930532 res!1590380) b!3930533))

(assert (= (and b!3930533 res!1590379) b!3930534))

(assert (= (and d!1165229 (not res!1590378)) b!3930535))

(assert (=> b!3930533 m!4494597))

(assert (=> b!3930533 m!4493985))

(declare-fun m!4496245 () Bool)

(assert (=> b!3930533 m!4496245))

(assert (=> b!3930535 m!4493985))

(declare-fun m!4496247 () Bool)

(assert (=> b!3930535 m!4496247))

(assert (=> b!3930535 m!4494011))

(assert (=> b!3930534 m!4494469))

(assert (=> b!3930534 m!4493985))

(declare-fun m!4496249 () Bool)

(assert (=> b!3930534 m!4496249))

(assert (=> b!3930534 m!4494469))

(assert (=> b!3930534 m!4496249))

(declare-fun m!4496251 () Bool)

(assert (=> b!3930534 m!4496251))

(assert (=> d!1164585 d!1165229))

(assert (=> d!1164585 d!1164545))

(declare-fun d!1165231 () Bool)

(assert (=> d!1165231 (isPrefix!3610 prefix!426 (++!10788 prefix!426 suffix!1176))))

(assert (=> d!1165231 true))

(declare-fun _$46!1567 () Unit!60127)

(assert (=> d!1165231 (= (choose!23350 prefix!426 suffix!1176) _$46!1567)))

(declare-fun bs!586184 () Bool)

(assert (= bs!586184 d!1165231))

(assert (=> bs!586184 m!4493985))

(assert (=> bs!586184 m!4493985))

(assert (=> bs!586184 m!4494593))

(assert (=> d!1164585 d!1165231))

(declare-fun d!1165233 () Bool)

(assert (=> d!1165233 (= (isEmpty!24877 (_1!23638 lt!1372416)) (is-Nil!41733 (_1!23638 lt!1372416)))))

(assert (=> b!3929351 d!1165233))

(assert (=> d!1164525 d!1164505))

(assert (=> d!1164525 d!1164529))

(declare-fun d!1165235 () Bool)

(assert (=> d!1165235 (not (= (lexList!1872 thiss!20629 rules!2768 (_2!23637 lt!1372230)) (tuple2!41009 (++!10787 lt!1372217 suffixTokens!72) suffixResult!91)))))

(assert (=> d!1165235 true))

(declare-fun _$43!82 () Unit!60127)

(assert (=> d!1165235 (= (choose!23355 thiss!20629 rules!2768 suffix!1176 (_2!23637 lt!1372230) suffixTokens!72 suffixResult!91 lt!1372217) _$43!82)))

(declare-fun bs!586185 () Bool)

(assert (= bs!586185 d!1165235))

(assert (=> bs!586185 m!4494035))

(assert (=> bs!586185 m!4493973))

(assert (=> d!1164525 d!1165235))

(assert (=> d!1164525 d!1164465))

(declare-fun d!1165237 () Bool)

(declare-fun lt!1372931 () Int)

(assert (=> d!1165237 (>= lt!1372931 0)))

(declare-fun e!2431570 () Int)

(assert (=> d!1165237 (= lt!1372931 e!2431570)))

(declare-fun c!682904 () Bool)

(assert (=> d!1165237 (= c!682904 (is-Nil!41731 lt!1372450))))

(assert (=> d!1165237 (= (size!31308 lt!1372450) lt!1372931)))

(declare-fun b!3930536 () Bool)

(assert (=> b!3930536 (= e!2431570 0)))

(declare-fun b!3930537 () Bool)

(assert (=> b!3930537 (= e!2431570 (+ 1 (size!31308 (t!325278 lt!1372450))))))

(assert (= (and d!1165237 c!682904) b!3930536))

(assert (= (and d!1165237 (not c!682904)) b!3930537))

(declare-fun m!4496253 () Bool)

(assert (=> b!3930537 m!4496253))

(assert (=> b!3929407 d!1165237))

(assert (=> b!3929407 d!1164477))

(assert (=> b!3929407 d!1164919))

(assert (=> b!3929666 d!1164829))

(declare-fun d!1165239 () Bool)

(assert (=> d!1165239 (= (apply!9754 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372587)))) (seqFromList!4782 (originalCharacters!7115 (_1!23637 (get!13793 lt!1372587))))) (dynLambda!17876 (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372587))))) (seqFromList!4782 (originalCharacters!7115 (_1!23637 (get!13793 lt!1372587))))))))

(declare-fun b_lambda!114983 () Bool)

(assert (=> (not b_lambda!114983) (not d!1165239)))

(declare-fun t!325470 () Bool)

(declare-fun tb!234881 () Bool)

(assert (=> (and b!3929693 (= (toValue!8967 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80))))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372587)))))) t!325470) tb!234881))

(declare-fun result!284626 () Bool)

(assert (=> tb!234881 (= result!284626 (inv!21 (dynLambda!17876 (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372587))))) (seqFromList!4782 (originalCharacters!7115 (_1!23637 (get!13793 lt!1372587)))))))))

(declare-fun m!4496255 () Bool)

(assert (=> tb!234881 m!4496255))

(assert (=> d!1165239 t!325470))

(declare-fun b_and!299915 () Bool)

(assert (= b_and!299889 (and (=> t!325470 result!284626) b_and!299915)))

(declare-fun t!325472 () Bool)

(declare-fun tb!234883 () Bool)

(assert (=> (and b!3929679 (= (toValue!8967 (transformation!6515 (h!47154 (t!325281 rules!2768)))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372587)))))) t!325472) tb!234883))

(declare-fun result!284628 () Bool)

(assert (= result!284628 result!284626))

(assert (=> d!1165239 t!325472))

(declare-fun b_and!299917 () Bool)

(assert (= b_and!299879 (and (=> t!325472 result!284628) b_and!299917)))

(declare-fun tb!234885 () Bool)

(declare-fun t!325474 () Bool)

(assert (=> (and b!3929087 (= (toValue!8967 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372587)))))) t!325474) tb!234885))

(declare-fun result!284630 () Bool)

(assert (= result!284630 result!284626))

(assert (=> d!1165239 t!325474))

(declare-fun b_and!299919 () Bool)

(assert (= b_and!299881 (and (=> t!325474 result!284630) b_and!299919)))

(declare-fun t!325476 () Bool)

(declare-fun tb!234887 () Bool)

(assert (=> (and b!3929724 (= (toValue!8967 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72))))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372587)))))) t!325476) tb!234887))

(declare-fun result!284632 () Bool)

(assert (= result!284632 result!284626))

(assert (=> d!1165239 t!325476))

(declare-fun b_and!299921 () Bool)

(assert (= b_and!299887 (and (=> t!325476 result!284632) b_and!299921)))

(declare-fun tb!234889 () Bool)

(declare-fun t!325478 () Bool)

(assert (=> (and b!3929105 (= (toValue!8967 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372587)))))) t!325478) tb!234889))

(declare-fun result!284634 () Bool)

(assert (= result!284634 result!284626))

(assert (=> d!1165239 t!325478))

(declare-fun b_and!299923 () Bool)

(assert (= b_and!299883 (and (=> t!325478 result!284634) b_and!299923)))

(declare-fun tb!234891 () Bool)

(declare-fun t!325480 () Bool)

(assert (=> (and b!3929093 (= (toValue!8967 (transformation!6515 (h!47154 rules!2768))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372587)))))) t!325480) tb!234891))

(declare-fun result!284636 () Bool)

(assert (= result!284636 result!284626))

(assert (=> d!1165239 t!325480))

(declare-fun b_and!299925 () Bool)

(assert (= b_and!299885 (and (=> t!325480 result!284636) b_and!299925)))

(assert (=> d!1165239 m!4494939))

(declare-fun m!4496257 () Bool)

(assert (=> d!1165239 m!4496257))

(assert (=> b!3929666 d!1165239))

(declare-fun d!1165241 () Bool)

(assert (=> d!1165241 (= (seqFromList!4782 (originalCharacters!7115 (_1!23637 (get!13793 lt!1372587)))) (fromListB!2207 (originalCharacters!7115 (_1!23637 (get!13793 lt!1372587)))))))

(declare-fun bs!586186 () Bool)

(assert (= bs!586186 d!1165241))

(declare-fun m!4496259 () Bool)

(assert (=> bs!586186 m!4496259))

(assert (=> b!3929666 d!1165241))

(declare-fun b!3930539 () Bool)

(declare-fun e!2431573 () tuple2!41008)

(assert (=> b!3930539 (= e!2431573 (tuple2!41009 Nil!41733 (_2!23637 (v!39260 lt!1372426))))))

(declare-fun b!3930540 () Bool)

(declare-fun e!2431574 () Bool)

(declare-fun e!2431572 () Bool)

(assert (=> b!3930540 (= e!2431574 e!2431572)))

(declare-fun res!1590382 () Bool)

(declare-fun lt!1372932 () tuple2!41008)

(assert (=> b!3930540 (= res!1590382 (< (size!31308 (_2!23638 lt!1372932)) (size!31308 (_2!23637 (v!39260 lt!1372426)))))))

(assert (=> b!3930540 (=> (not res!1590382) (not e!2431572))))

(declare-fun b!3930541 () Bool)

(assert (=> b!3930541 (= e!2431574 (= (_2!23638 lt!1372932) (_2!23637 (v!39260 lt!1372426))))))

(declare-fun b!3930542 () Bool)

(assert (=> b!3930542 (= e!2431572 (not (isEmpty!24877 (_1!23638 lt!1372932))))))

(declare-fun b!3930538 () Bool)

(declare-fun lt!1372933 () Option!8935)

(declare-fun lt!1372934 () tuple2!41008)

(assert (=> b!3930538 (= e!2431573 (tuple2!41009 (Cons!41733 (_1!23637 (v!39260 lt!1372933)) (_1!23638 lt!1372934)) (_2!23638 lt!1372934)))))

(assert (=> b!3930538 (= lt!1372934 (lexList!1872 thiss!20629 rules!2768 (_2!23637 (v!39260 lt!1372933))))))

(declare-fun d!1165243 () Bool)

(assert (=> d!1165243 e!2431574))

(declare-fun c!682906 () Bool)

(assert (=> d!1165243 (= c!682906 (> (size!31311 (_1!23638 lt!1372932)) 0))))

(assert (=> d!1165243 (= lt!1372932 e!2431573)))

(declare-fun c!682905 () Bool)

(assert (=> d!1165243 (= c!682905 (is-Some!8934 lt!1372933))))

(assert (=> d!1165243 (= lt!1372933 (maxPrefix!3408 thiss!20629 rules!2768 (_2!23637 (v!39260 lt!1372426))))))

(assert (=> d!1165243 (= (lexList!1872 thiss!20629 rules!2768 (_2!23637 (v!39260 lt!1372426))) lt!1372932)))

(assert (= (and d!1165243 c!682905) b!3930538))

(assert (= (and d!1165243 (not c!682905)) b!3930539))

(assert (= (and d!1165243 c!682906) b!3930540))

(assert (= (and d!1165243 (not c!682906)) b!3930541))

(assert (= (and b!3930540 res!1590382) b!3930542))

(declare-fun m!4496261 () Bool)

(assert (=> b!3930540 m!4496261))

(declare-fun m!4496263 () Bool)

(assert (=> b!3930540 m!4496263))

(declare-fun m!4496265 () Bool)

(assert (=> b!3930542 m!4496265))

(declare-fun m!4496267 () Bool)

(assert (=> b!3930538 m!4496267))

(declare-fun m!4496269 () Bool)

(assert (=> d!1165243 m!4496269))

(declare-fun m!4496271 () Bool)

(assert (=> d!1165243 m!4496271))

(assert (=> b!3929362 d!1165243))

(declare-fun d!1165245 () Bool)

(declare-fun c!682907 () Bool)

(assert (=> d!1165245 (= c!682907 (is-Nil!41733 lt!1372513))))

(declare-fun e!2431575 () (Set Token!12168))

(assert (=> d!1165245 (= (content!6282 lt!1372513) e!2431575)))

(declare-fun b!3930543 () Bool)

(assert (=> b!3930543 (= e!2431575 (as set.empty (Set Token!12168)))))

(declare-fun b!3930544 () Bool)

(assert (=> b!3930544 (= e!2431575 (set.union (set.insert (h!47153 lt!1372513) (as set.empty (Set Token!12168))) (content!6282 (t!325280 lt!1372513))))))

(assert (= (and d!1165245 c!682907) b!3930543))

(assert (= (and d!1165245 (not c!682907)) b!3930544))

(declare-fun m!4496273 () Bool)

(assert (=> b!3930544 m!4496273))

(declare-fun m!4496275 () Bool)

(assert (=> b!3930544 m!4496275))

(assert (=> d!1164611 d!1165245))

(declare-fun d!1165247 () Bool)

(declare-fun c!682908 () Bool)

(assert (=> d!1165247 (= c!682908 (is-Nil!41733 (++!10787 lt!1372210 lt!1372222)))))

(declare-fun e!2431576 () (Set Token!12168))

(assert (=> d!1165247 (= (content!6282 (++!10787 lt!1372210 lt!1372222)) e!2431576)))

(declare-fun b!3930545 () Bool)

(assert (=> b!3930545 (= e!2431576 (as set.empty (Set Token!12168)))))

(declare-fun b!3930546 () Bool)

(assert (=> b!3930546 (= e!2431576 (set.union (set.insert (h!47153 (++!10787 lt!1372210 lt!1372222)) (as set.empty (Set Token!12168))) (content!6282 (t!325280 (++!10787 lt!1372210 lt!1372222)))))))

(assert (= (and d!1165247 c!682908) b!3930545))

(assert (= (and d!1165247 (not c!682908)) b!3930546))

(declare-fun m!4496277 () Bool)

(assert (=> b!3930546 m!4496277))

(assert (=> b!3930546 m!4496125))

(assert (=> d!1164611 d!1165247))

(assert (=> d!1164611 d!1165041))

(assert (=> d!1164475 d!1164559))

(declare-fun b!3930548 () Bool)

(declare-fun e!2431578 () tuple2!41008)

(assert (=> b!3930548 (= e!2431578 (tuple2!41009 Nil!41733 (_2!23637 (v!39260 lt!1372462))))))

(declare-fun b!3930549 () Bool)

(declare-fun e!2431579 () Bool)

(declare-fun e!2431577 () Bool)

(assert (=> b!3930549 (= e!2431579 e!2431577)))

(declare-fun res!1590383 () Bool)

(declare-fun lt!1372935 () tuple2!41008)

(assert (=> b!3930549 (= res!1590383 (< (size!31308 (_2!23638 lt!1372935)) (size!31308 (_2!23637 (v!39260 lt!1372462)))))))

(assert (=> b!3930549 (=> (not res!1590383) (not e!2431577))))

(declare-fun b!3930550 () Bool)

(assert (=> b!3930550 (= e!2431579 (= (_2!23638 lt!1372935) (_2!23637 (v!39260 lt!1372462))))))

(declare-fun b!3930551 () Bool)

(assert (=> b!3930551 (= e!2431577 (not (isEmpty!24877 (_1!23638 lt!1372935))))))

(declare-fun b!3930547 () Bool)

(declare-fun lt!1372936 () Option!8935)

(declare-fun lt!1372937 () tuple2!41008)

(assert (=> b!3930547 (= e!2431578 (tuple2!41009 (Cons!41733 (_1!23637 (v!39260 lt!1372936)) (_1!23638 lt!1372937)) (_2!23638 lt!1372937)))))

(assert (=> b!3930547 (= lt!1372937 (lexList!1872 thiss!20629 rules!2768 (_2!23637 (v!39260 lt!1372936))))))

(declare-fun d!1165249 () Bool)

(assert (=> d!1165249 e!2431579))

(declare-fun c!682910 () Bool)

(assert (=> d!1165249 (= c!682910 (> (size!31311 (_1!23638 lt!1372935)) 0))))

(assert (=> d!1165249 (= lt!1372935 e!2431578)))

(declare-fun c!682909 () Bool)

(assert (=> d!1165249 (= c!682909 (is-Some!8934 lt!1372936))))

(assert (=> d!1165249 (= lt!1372936 (maxPrefix!3408 thiss!20629 rules!2768 (_2!23637 (v!39260 lt!1372462))))))

(assert (=> d!1165249 (= (lexList!1872 thiss!20629 rules!2768 (_2!23637 (v!39260 lt!1372462))) lt!1372935)))

(assert (= (and d!1165249 c!682909) b!3930547))

(assert (= (and d!1165249 (not c!682909)) b!3930548))

(assert (= (and d!1165249 c!682910) b!3930549))

(assert (= (and d!1165249 (not c!682910)) b!3930550))

(assert (= (and b!3930549 res!1590383) b!3930551))

(declare-fun m!4496279 () Bool)

(assert (=> b!3930549 m!4496279))

(declare-fun m!4496281 () Bool)

(assert (=> b!3930549 m!4496281))

(declare-fun m!4496283 () Bool)

(assert (=> b!3930551 m!4496283))

(declare-fun m!4496285 () Bool)

(assert (=> b!3930547 m!4496285))

(declare-fun m!4496287 () Bool)

(assert (=> d!1165249 m!4496287))

(declare-fun m!4496289 () Bool)

(assert (=> d!1165249 m!4496289))

(assert (=> b!3929443 d!1165249))

(declare-fun b!3930552 () Bool)

(declare-fun e!2431580 () Bool)

(assert (=> b!3930552 (= e!2431580 tp_is_empty!19811)))

(declare-fun b!3930554 () Bool)

(declare-fun tp!1196436 () Bool)

(assert (=> b!3930554 (= e!2431580 tp!1196436)))

(declare-fun b!3930553 () Bool)

(declare-fun tp!1196437 () Bool)

(declare-fun tp!1196439 () Bool)

(assert (=> b!3930553 (= e!2431580 (and tp!1196437 tp!1196439))))

(assert (=> b!3929711 (= tp!1196342 e!2431580)))

(declare-fun b!3930555 () Bool)

(declare-fun tp!1196440 () Bool)

(declare-fun tp!1196438 () Bool)

(assert (=> b!3930555 (= e!2431580 (and tp!1196440 tp!1196438))))

(assert (= (and b!3929711 (is-ElementMatch!11420 (reg!11749 (regex!6515 (rule!9459 (h!47153 suffixTokens!72)))))) b!3930552))

(assert (= (and b!3929711 (is-Concat!18166 (reg!11749 (regex!6515 (rule!9459 (h!47153 suffixTokens!72)))))) b!3930553))

(assert (= (and b!3929711 (is-Star!11420 (reg!11749 (regex!6515 (rule!9459 (h!47153 suffixTokens!72)))))) b!3930554))

(assert (= (and b!3929711 (is-Union!11420 (reg!11749 (regex!6515 (rule!9459 (h!47153 suffixTokens!72)))))) b!3930555))

(declare-fun b!3930556 () Bool)

(declare-fun e!2431581 () Bool)

(assert (=> b!3930556 (= e!2431581 tp_is_empty!19811)))

(declare-fun b!3930558 () Bool)

(declare-fun tp!1196441 () Bool)

(assert (=> b!3930558 (= e!2431581 tp!1196441)))

(declare-fun b!3930557 () Bool)

(declare-fun tp!1196442 () Bool)

(declare-fun tp!1196444 () Bool)

(assert (=> b!3930557 (= e!2431581 (and tp!1196442 tp!1196444))))

(assert (=> b!3929720 (= tp!1196356 e!2431581)))

(declare-fun b!3930559 () Bool)

(declare-fun tp!1196445 () Bool)

(declare-fun tp!1196443 () Bool)

(assert (=> b!3930559 (= e!2431581 (and tp!1196445 tp!1196443))))

(assert (= (and b!3929720 (is-ElementMatch!11420 (regOne!23353 (regex!6515 (rule!9459 (h!47153 prefixTokens!80)))))) b!3930556))

(assert (= (and b!3929720 (is-Concat!18166 (regOne!23353 (regex!6515 (rule!9459 (h!47153 prefixTokens!80)))))) b!3930557))

(assert (= (and b!3929720 (is-Star!11420 (regOne!23353 (regex!6515 (rule!9459 (h!47153 prefixTokens!80)))))) b!3930558))

(assert (= (and b!3929720 (is-Union!11420 (regOne!23353 (regex!6515 (rule!9459 (h!47153 prefixTokens!80)))))) b!3930559))

(declare-fun b!3930560 () Bool)

(declare-fun e!2431582 () Bool)

(assert (=> b!3930560 (= e!2431582 tp_is_empty!19811)))

(declare-fun b!3930562 () Bool)

(declare-fun tp!1196446 () Bool)

(assert (=> b!3930562 (= e!2431582 tp!1196446)))

(declare-fun b!3930561 () Bool)

(declare-fun tp!1196447 () Bool)

(declare-fun tp!1196449 () Bool)

(assert (=> b!3930561 (= e!2431582 (and tp!1196447 tp!1196449))))

(assert (=> b!3929720 (= tp!1196354 e!2431582)))

(declare-fun b!3930563 () Bool)

(declare-fun tp!1196450 () Bool)

(declare-fun tp!1196448 () Bool)

(assert (=> b!3930563 (= e!2431582 (and tp!1196450 tp!1196448))))

(assert (= (and b!3929720 (is-ElementMatch!11420 (regTwo!23353 (regex!6515 (rule!9459 (h!47153 prefixTokens!80)))))) b!3930560))

(assert (= (and b!3929720 (is-Concat!18166 (regTwo!23353 (regex!6515 (rule!9459 (h!47153 prefixTokens!80)))))) b!3930561))

(assert (= (and b!3929720 (is-Star!11420 (regTwo!23353 (regex!6515 (rule!9459 (h!47153 prefixTokens!80)))))) b!3930562))

(assert (= (and b!3929720 (is-Union!11420 (regTwo!23353 (regex!6515 (rule!9459 (h!47153 prefixTokens!80)))))) b!3930563))

(declare-fun b!3930564 () Bool)

(declare-fun e!2431583 () Bool)

(assert (=> b!3930564 (= e!2431583 tp_is_empty!19811)))

(declare-fun b!3930566 () Bool)

(declare-fun tp!1196451 () Bool)

(assert (=> b!3930566 (= e!2431583 tp!1196451)))

(declare-fun b!3930565 () Bool)

(declare-fun tp!1196452 () Bool)

(declare-fun tp!1196454 () Bool)

(assert (=> b!3930565 (= e!2431583 (and tp!1196452 tp!1196454))))

(assert (=> b!3929710 (= tp!1196343 e!2431583)))

(declare-fun b!3930567 () Bool)

(declare-fun tp!1196455 () Bool)

(declare-fun tp!1196453 () Bool)

(assert (=> b!3930567 (= e!2431583 (and tp!1196455 tp!1196453))))

(assert (= (and b!3929710 (is-ElementMatch!11420 (regOne!23352 (regex!6515 (rule!9459 (h!47153 suffixTokens!72)))))) b!3930564))

(assert (= (and b!3929710 (is-Concat!18166 (regOne!23352 (regex!6515 (rule!9459 (h!47153 suffixTokens!72)))))) b!3930565))

(assert (= (and b!3929710 (is-Star!11420 (regOne!23352 (regex!6515 (rule!9459 (h!47153 suffixTokens!72)))))) b!3930566))

(assert (= (and b!3929710 (is-Union!11420 (regOne!23352 (regex!6515 (rule!9459 (h!47153 suffixTokens!72)))))) b!3930567))

(declare-fun b!3930568 () Bool)

(declare-fun e!2431584 () Bool)

(assert (=> b!3930568 (= e!2431584 tp_is_empty!19811)))

(declare-fun b!3930570 () Bool)

(declare-fun tp!1196456 () Bool)

(assert (=> b!3930570 (= e!2431584 tp!1196456)))

(declare-fun b!3930569 () Bool)

(declare-fun tp!1196457 () Bool)

(declare-fun tp!1196459 () Bool)

(assert (=> b!3930569 (= e!2431584 (and tp!1196457 tp!1196459))))

(assert (=> b!3929710 (= tp!1196345 e!2431584)))

(declare-fun b!3930571 () Bool)

(declare-fun tp!1196460 () Bool)

(declare-fun tp!1196458 () Bool)

(assert (=> b!3930571 (= e!2431584 (and tp!1196460 tp!1196458))))

(assert (= (and b!3929710 (is-ElementMatch!11420 (regTwo!23352 (regex!6515 (rule!9459 (h!47153 suffixTokens!72)))))) b!3930568))

(assert (= (and b!3929710 (is-Concat!18166 (regTwo!23352 (regex!6515 (rule!9459 (h!47153 suffixTokens!72)))))) b!3930569))

(assert (= (and b!3929710 (is-Star!11420 (regTwo!23352 (regex!6515 (rule!9459 (h!47153 suffixTokens!72)))))) b!3930570))

(assert (= (and b!3929710 (is-Union!11420 (regTwo!23352 (regex!6515 (rule!9459 (h!47153 suffixTokens!72)))))) b!3930571))

(declare-fun b!3930572 () Bool)

(declare-fun e!2431585 () Bool)

(assert (=> b!3930572 (= e!2431585 tp_is_empty!19811)))

(declare-fun b!3930574 () Bool)

(declare-fun tp!1196461 () Bool)

(assert (=> b!3930574 (= e!2431585 tp!1196461)))

(declare-fun b!3930573 () Bool)

(declare-fun tp!1196462 () Bool)

(declare-fun tp!1196464 () Bool)

(assert (=> b!3930573 (= e!2431585 (and tp!1196462 tp!1196464))))

(assert (=> b!3929712 (= tp!1196346 e!2431585)))

(declare-fun b!3930575 () Bool)

(declare-fun tp!1196465 () Bool)

(declare-fun tp!1196463 () Bool)

(assert (=> b!3930575 (= e!2431585 (and tp!1196465 tp!1196463))))

(assert (= (and b!3929712 (is-ElementMatch!11420 (regOne!23353 (regex!6515 (rule!9459 (h!47153 suffixTokens!72)))))) b!3930572))

(assert (= (and b!3929712 (is-Concat!18166 (regOne!23353 (regex!6515 (rule!9459 (h!47153 suffixTokens!72)))))) b!3930573))

(assert (= (and b!3929712 (is-Star!11420 (regOne!23353 (regex!6515 (rule!9459 (h!47153 suffixTokens!72)))))) b!3930574))

(assert (= (and b!3929712 (is-Union!11420 (regOne!23353 (regex!6515 (rule!9459 (h!47153 suffixTokens!72)))))) b!3930575))

(declare-fun b!3930576 () Bool)

(declare-fun e!2431586 () Bool)

(assert (=> b!3930576 (= e!2431586 tp_is_empty!19811)))

(declare-fun b!3930578 () Bool)

(declare-fun tp!1196466 () Bool)

(assert (=> b!3930578 (= e!2431586 tp!1196466)))

(declare-fun b!3930577 () Bool)

(declare-fun tp!1196467 () Bool)

(declare-fun tp!1196469 () Bool)

(assert (=> b!3930577 (= e!2431586 (and tp!1196467 tp!1196469))))

(assert (=> b!3929712 (= tp!1196344 e!2431586)))

(declare-fun b!3930579 () Bool)

(declare-fun tp!1196470 () Bool)

(declare-fun tp!1196468 () Bool)

(assert (=> b!3930579 (= e!2431586 (and tp!1196470 tp!1196468))))

(assert (= (and b!3929712 (is-ElementMatch!11420 (regTwo!23353 (regex!6515 (rule!9459 (h!47153 suffixTokens!72)))))) b!3930576))

(assert (= (and b!3929712 (is-Concat!18166 (regTwo!23353 (regex!6515 (rule!9459 (h!47153 suffixTokens!72)))))) b!3930577))

(assert (= (and b!3929712 (is-Star!11420 (regTwo!23353 (regex!6515 (rule!9459 (h!47153 suffixTokens!72)))))) b!3930578))

(assert (= (and b!3929712 (is-Union!11420 (regTwo!23353 (regex!6515 (rule!9459 (h!47153 suffixTokens!72)))))) b!3930579))

(declare-fun b!3930580 () Bool)

(declare-fun e!2431587 () Bool)

(declare-fun tp!1196471 () Bool)

(assert (=> b!3930580 (= e!2431587 (and tp_is_empty!19811 tp!1196471))))

(assert (=> b!3929726 (= tp!1196363 e!2431587)))

(assert (= (and b!3929726 (is-Cons!41731 (t!325278 (t!325278 suffixResult!91)))) b!3930580))

(declare-fun b!3930581 () Bool)

(declare-fun e!2431588 () Bool)

(declare-fun tp!1196472 () Bool)

(assert (=> b!3930581 (= e!2431588 (and tp_is_empty!19811 tp!1196472))))

(assert (=> b!3929727 (= tp!1196364 e!2431588)))

(assert (= (and b!3929727 (is-Cons!41731 (t!325278 (originalCharacters!7115 (h!47153 suffixTokens!72))))) b!3930581))

(declare-fun b!3930582 () Bool)

(declare-fun e!2431589 () Bool)

(assert (=> b!3930582 (= e!2431589 tp_is_empty!19811)))

(declare-fun b!3930584 () Bool)

(declare-fun tp!1196473 () Bool)

(assert (=> b!3930584 (= e!2431589 tp!1196473)))

(declare-fun b!3930583 () Bool)

(declare-fun tp!1196474 () Bool)

(declare-fun tp!1196476 () Bool)

(assert (=> b!3930583 (= e!2431589 (and tp!1196474 tp!1196476))))

(assert (=> b!3929719 (= tp!1196352 e!2431589)))

(declare-fun b!3930585 () Bool)

(declare-fun tp!1196477 () Bool)

(declare-fun tp!1196475 () Bool)

(assert (=> b!3930585 (= e!2431589 (and tp!1196477 tp!1196475))))

(assert (= (and b!3929719 (is-ElementMatch!11420 (reg!11749 (regex!6515 (rule!9459 (h!47153 prefixTokens!80)))))) b!3930582))

(assert (= (and b!3929719 (is-Concat!18166 (reg!11749 (regex!6515 (rule!9459 (h!47153 prefixTokens!80)))))) b!3930583))

(assert (= (and b!3929719 (is-Star!11420 (reg!11749 (regex!6515 (rule!9459 (h!47153 prefixTokens!80)))))) b!3930584))

(assert (= (and b!3929719 (is-Union!11420 (reg!11749 (regex!6515 (rule!9459 (h!47153 prefixTokens!80)))))) b!3930585))

(declare-fun b!3930586 () Bool)

(declare-fun e!2431590 () Bool)

(declare-fun tp!1196478 () Bool)

(assert (=> b!3930586 (= e!2431590 (and tp_is_empty!19811 tp!1196478))))

(assert (=> b!3929725 (= tp!1196362 e!2431590)))

(assert (= (and b!3929725 (is-Cons!41731 (t!325278 (t!325278 suffix!1176)))) b!3930586))

(declare-fun b!3930587 () Bool)

(declare-fun e!2431591 () Bool)

(assert (=> b!3930587 (= e!2431591 tp_is_empty!19811)))

(declare-fun b!3930589 () Bool)

(declare-fun tp!1196479 () Bool)

(assert (=> b!3930589 (= e!2431591 tp!1196479)))

(declare-fun b!3930588 () Bool)

(declare-fun tp!1196480 () Bool)

(declare-fun tp!1196482 () Bool)

(assert (=> b!3930588 (= e!2431591 (and tp!1196480 tp!1196482))))

(assert (=> b!3929718 (= tp!1196353 e!2431591)))

(declare-fun b!3930590 () Bool)

(declare-fun tp!1196483 () Bool)

(declare-fun tp!1196481 () Bool)

(assert (=> b!3930590 (= e!2431591 (and tp!1196483 tp!1196481))))

(assert (= (and b!3929718 (is-ElementMatch!11420 (regOne!23352 (regex!6515 (rule!9459 (h!47153 prefixTokens!80)))))) b!3930587))

(assert (= (and b!3929718 (is-Concat!18166 (regOne!23352 (regex!6515 (rule!9459 (h!47153 prefixTokens!80)))))) b!3930588))

(assert (= (and b!3929718 (is-Star!11420 (regOne!23352 (regex!6515 (rule!9459 (h!47153 prefixTokens!80)))))) b!3930589))

(assert (= (and b!3929718 (is-Union!11420 (regOne!23352 (regex!6515 (rule!9459 (h!47153 prefixTokens!80)))))) b!3930590))

(declare-fun b!3930591 () Bool)

(declare-fun e!2431592 () Bool)

(assert (=> b!3930591 (= e!2431592 tp_is_empty!19811)))

(declare-fun b!3930593 () Bool)

(declare-fun tp!1196484 () Bool)

(assert (=> b!3930593 (= e!2431592 tp!1196484)))

(declare-fun b!3930592 () Bool)

(declare-fun tp!1196485 () Bool)

(declare-fun tp!1196487 () Bool)

(assert (=> b!3930592 (= e!2431592 (and tp!1196485 tp!1196487))))

(assert (=> b!3929718 (= tp!1196355 e!2431592)))

(declare-fun b!3930594 () Bool)

(declare-fun tp!1196488 () Bool)

(declare-fun tp!1196486 () Bool)

(assert (=> b!3930594 (= e!2431592 (and tp!1196488 tp!1196486))))

(assert (= (and b!3929718 (is-ElementMatch!11420 (regTwo!23352 (regex!6515 (rule!9459 (h!47153 prefixTokens!80)))))) b!3930591))

(assert (= (and b!3929718 (is-Concat!18166 (regTwo!23352 (regex!6515 (rule!9459 (h!47153 prefixTokens!80)))))) b!3930592))

(assert (= (and b!3929718 (is-Star!11420 (regTwo!23352 (regex!6515 (rule!9459 (h!47153 prefixTokens!80)))))) b!3930593))

(assert (= (and b!3929718 (is-Union!11420 (regTwo!23352 (regex!6515 (rule!9459 (h!47153 prefixTokens!80)))))) b!3930594))

(declare-fun tp!1196495 () Bool)

(declare-fun tp!1196496 () Bool)

(declare-fun b!3930603 () Bool)

(declare-fun e!2431598 () Bool)

(assert (=> b!3930603 (= e!2431598 (and (inv!55928 (left!31834 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (value!206313 (h!47153 prefixTokens!80)))))) tp!1196496 (inv!55928 (right!32164 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (value!206313 (h!47153 prefixTokens!80)))))) tp!1196495))))

(declare-fun b!3930605 () Bool)

(declare-fun e!2431597 () Bool)

(declare-fun tp!1196497 () Bool)

(assert (=> b!3930605 (= e!2431597 tp!1196497)))

(declare-fun b!3930604 () Bool)

(declare-fun inv!55934 (IArray!25457) Bool)

(assert (=> b!3930604 (= e!2431598 (and (inv!55934 (xs!16032 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (value!206313 (h!47153 prefixTokens!80)))))) e!2431597))))

(assert (=> b!3929456 (= tp!1196297 (and (inv!55928 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (value!206313 (h!47153 prefixTokens!80))))) e!2431598))))

(assert (= (and b!3929456 (is-Node!12726 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (value!206313 (h!47153 prefixTokens!80)))))) b!3930603))

(assert (= b!3930604 b!3930605))

(assert (= (and b!3929456 (is-Leaf!19691 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (value!206313 (h!47153 prefixTokens!80)))))) b!3930604))

(declare-fun m!4496291 () Bool)

(assert (=> b!3930603 m!4496291))

(declare-fun m!4496293 () Bool)

(assert (=> b!3930603 m!4496293))

(declare-fun m!4496295 () Bool)

(assert (=> b!3930604 m!4496295))

(assert (=> b!3929456 m!4494547))

(declare-fun b!3930606 () Bool)

(declare-fun e!2431599 () Bool)

(declare-fun tp!1196498 () Bool)

(assert (=> b!3930606 (= e!2431599 (and tp_is_empty!19811 tp!1196498))))

(assert (=> b!3929691 (= tp!1196328 e!2431599)))

(assert (= (and b!3929691 (is-Cons!41731 (originalCharacters!7115 (h!47153 (t!325280 prefixTokens!80))))) b!3930606))

(declare-fun b!3930607 () Bool)

(declare-fun e!2431600 () Bool)

(assert (=> b!3930607 (= e!2431600 tp_is_empty!19811)))

(declare-fun b!3930609 () Bool)

(declare-fun tp!1196499 () Bool)

(assert (=> b!3930609 (= e!2431600 tp!1196499)))

(declare-fun b!3930608 () Bool)

(declare-fun tp!1196500 () Bool)

(declare-fun tp!1196502 () Bool)

(assert (=> b!3930608 (= e!2431600 (and tp!1196500 tp!1196502))))

(assert (=> b!3929715 (= tp!1196347 e!2431600)))

(declare-fun b!3930610 () Bool)

(declare-fun tp!1196503 () Bool)

(declare-fun tp!1196501 () Bool)

(assert (=> b!3930610 (= e!2431600 (and tp!1196503 tp!1196501))))

(assert (= (and b!3929715 (is-ElementMatch!11420 (reg!11749 (regex!6515 (h!47154 rules!2768))))) b!3930607))

(assert (= (and b!3929715 (is-Concat!18166 (reg!11749 (regex!6515 (h!47154 rules!2768))))) b!3930608))

(assert (= (and b!3929715 (is-Star!11420 (reg!11749 (regex!6515 (h!47154 rules!2768))))) b!3930609))

(assert (= (and b!3929715 (is-Union!11420 (reg!11749 (regex!6515 (h!47154 rules!2768))))) b!3930610))

(declare-fun b!3930614 () Bool)

(declare-fun b_free!107273 () Bool)

(declare-fun b_next!107977 () Bool)

(assert (=> b!3930614 (= b_free!107273 (not b_next!107977))))

(declare-fun t!325482 () Bool)

(declare-fun tb!234893 () Bool)

(assert (=> (and b!3930614 (= (toValue!8967 (transformation!6515 (rule!9459 (h!47153 (t!325280 (t!325280 prefixTokens!80)))))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372587)))))) t!325482) tb!234893))

(declare-fun result!284640 () Bool)

(assert (= result!284640 result!284626))

(assert (=> d!1165239 t!325482))

(declare-fun tb!234895 () Bool)

(declare-fun t!325484 () Bool)

(assert (=> (and b!3930614 (= (toValue!8967 (transformation!6515 (rule!9459 (h!47153 (t!325280 (t!325280 prefixTokens!80)))))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))) t!325484) tb!234895))

(declare-fun result!284642 () Bool)

(assert (= result!284642 result!284590))

(assert (=> d!1165021 t!325484))

(declare-fun t!325486 () Bool)

(declare-fun tb!234897 () Bool)

(assert (=> (and b!3930614 (= (toValue!8967 (transformation!6515 (rule!9459 (h!47153 (t!325280 (t!325280 prefixTokens!80)))))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))) t!325486) tb!234897))

(declare-fun result!284644 () Bool)

(assert (= result!284644 result!284430))

(assert (=> d!1164491 t!325486))

(declare-fun t!325488 () Bool)

(declare-fun tb!234899 () Bool)

(assert (=> (and b!3930614 (= (toValue!8967 (transformation!6515 (rule!9459 (h!47153 (t!325280 (t!325280 prefixTokens!80)))))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372501)))))) t!325488) tb!234899))

(declare-fun result!284646 () Bool)

(assert (= result!284646 result!284554))

(assert (=> d!1164921 t!325488))

(assert (=> d!1165019 t!325484))

(declare-fun tp!1196507 () Bool)

(declare-fun b_and!299927 () Bool)

(assert (=> b!3930614 (= tp!1196507 (and (=> t!325488 result!284646) (=> t!325484 result!284642) (=> t!325486 result!284644) (=> t!325482 result!284640) b_and!299927))))

(declare-fun b_free!107275 () Bool)

(declare-fun b_next!107979 () Bool)

(assert (=> b!3930614 (= b_free!107275 (not b_next!107979))))

(declare-fun t!325490 () Bool)

(declare-fun tb!234901 () Bool)

(assert (=> (and b!3930614 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 (t!325280 prefixTokens!80)))))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72)))))) t!325490) tb!234901))

(declare-fun result!284648 () Bool)

(assert (= result!284648 result!284614))

(assert (=> b!3930397 t!325490))

(declare-fun tb!234903 () Bool)

(declare-fun t!325492 () Bool)

(assert (=> (and b!3930614 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 (t!325280 prefixTokens!80)))))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72))))) t!325492) tb!234903))

(declare-fun result!284650 () Bool)

(assert (= result!284650 result!284438))

(assert (=> b!3929374 t!325492))

(declare-fun t!325494 () Bool)

(declare-fun tb!234905 () Bool)

(assert (=> (and b!3930614 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 (t!325280 prefixTokens!80)))))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))) t!325494) tb!234905))

(declare-fun result!284652 () Bool)

(assert (= result!284652 result!284578))

(assert (=> d!1165019 t!325494))

(declare-fun tb!234907 () Bool)

(declare-fun t!325496 () Bool)

(assert (=> (and b!3930614 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 (t!325280 prefixTokens!80)))))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372501)))))) t!325496) tb!234907))

(declare-fun result!284654 () Bool)

(assert (= result!284654 result!284542))

(assert (=> d!1164823 t!325496))

(declare-fun tb!234909 () Bool)

(declare-fun t!325498 () Bool)

(assert (=> (and b!3930614 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 (t!325280 prefixTokens!80)))))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372587)))))) t!325498) tb!234909))

(declare-fun result!284656 () Bool)

(assert (= result!284656 result!284566))

(assert (=> d!1164967 t!325498))

(declare-fun t!325500 () Bool)

(declare-fun tb!234911 () Bool)

(assert (=> (and b!3930614 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 (t!325280 prefixTokens!80)))))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80)))))) t!325500) tb!234911))

(declare-fun result!284658 () Bool)

(assert (= result!284658 result!284602))

(assert (=> b!3930385 t!325500))

(declare-fun tb!234913 () Bool)

(declare-fun t!325502 () Bool)

(assert (=> (and b!3930614 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 (t!325280 prefixTokens!80)))))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))) t!325502) tb!234913))

(declare-fun result!284660 () Bool)

(assert (= result!284660 result!284422))

(assert (=> d!1164479 t!325502))

(declare-fun t!325504 () Bool)

(declare-fun tb!234915 () Bool)

(assert (=> (and b!3930614 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 (t!325280 prefixTokens!80)))))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80))))) t!325504) tb!234915))

(declare-fun result!284662 () Bool)

(assert (= result!284662 result!284444))

(assert (=> b!3929454 t!325504))

(declare-fun tp!1196505 () Bool)

(declare-fun b_and!299929 () Bool)

(assert (=> b!3930614 (= tp!1196505 (and (=> t!325502 result!284660) (=> t!325498 result!284656) (=> t!325496 result!284654) (=> t!325500 result!284658) (=> t!325494 result!284652) (=> t!325504 result!284662) (=> t!325490 result!284648) (=> t!325492 result!284650) b_and!299929))))

(declare-fun e!2431605 () Bool)

(assert (=> b!3929690 (= tp!1196326 e!2431605)))

(declare-fun b!3930613 () Bool)

(declare-fun e!2431604 () Bool)

(declare-fun tp!1196504 () Bool)

(declare-fun e!2431603 () Bool)

(assert (=> b!3930613 (= e!2431604 (and tp!1196504 (inv!55921 (tag!7375 (rule!9459 (h!47153 (t!325280 (t!325280 prefixTokens!80)))))) (inv!55925 (transformation!6515 (rule!9459 (h!47153 (t!325280 (t!325280 prefixTokens!80)))))) e!2431603))))

(declare-fun b!3930612 () Bool)

(declare-fun tp!1196508 () Bool)

(declare-fun e!2431606 () Bool)

(assert (=> b!3930612 (= e!2431606 (and (inv!21 (value!206313 (h!47153 (t!325280 (t!325280 prefixTokens!80))))) e!2431604 tp!1196508))))

(declare-fun tp!1196506 () Bool)

(declare-fun b!3930611 () Bool)

(assert (=> b!3930611 (= e!2431605 (and (inv!55924 (h!47153 (t!325280 (t!325280 prefixTokens!80)))) e!2431606 tp!1196506))))

(assert (=> b!3930614 (= e!2431603 (and tp!1196507 tp!1196505))))

(assert (= b!3930613 b!3930614))

(assert (= b!3930612 b!3930613))

(assert (= b!3930611 b!3930612))

(assert (= (and b!3929690 (is-Cons!41733 (t!325280 (t!325280 prefixTokens!80)))) b!3930611))

(declare-fun m!4496297 () Bool)

(assert (=> b!3930613 m!4496297))

(declare-fun m!4496299 () Bool)

(assert (=> b!3930613 m!4496299))

(declare-fun m!4496301 () Bool)

(assert (=> b!3930612 m!4496301))

(declare-fun m!4496303 () Bool)

(assert (=> b!3930611 m!4496303))

(declare-fun e!2431608 () Bool)

(declare-fun tp!1196509 () Bool)

(declare-fun b!3930615 () Bool)

(declare-fun tp!1196510 () Bool)

(assert (=> b!3930615 (= e!2431608 (and (inv!55928 (left!31834 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))) (value!206313 (_1!23637 (v!39260 lt!1372235))))))) tp!1196510 (inv!55928 (right!32164 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))) (value!206313 (_1!23637 (v!39260 lt!1372235))))))) tp!1196509))))

(declare-fun b!3930617 () Bool)

(declare-fun e!2431607 () Bool)

(declare-fun tp!1196511 () Bool)

(assert (=> b!3930617 (= e!2431607 tp!1196511)))

(declare-fun b!3930616 () Bool)

(assert (=> b!3930616 (= e!2431608 (and (inv!55934 (xs!16032 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))) (value!206313 (_1!23637 (v!39260 lt!1372235))))))) e!2431607))))

(assert (=> b!3929285 (= tp!1196295 (and (inv!55928 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))) (value!206313 (_1!23637 (v!39260 lt!1372235)))))) e!2431608))))

(assert (= (and b!3929285 (is-Node!12726 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))) (value!206313 (_1!23637 (v!39260 lt!1372235))))))) b!3930615))

(assert (= b!3930616 b!3930617))

(assert (= (and b!3929285 (is-Leaf!19691 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))) (value!206313 (_1!23637 (v!39260 lt!1372235))))))) b!3930616))

(declare-fun m!4496305 () Bool)

(assert (=> b!3930615 m!4496305))

(declare-fun m!4496307 () Bool)

(assert (=> b!3930615 m!4496307))

(declare-fun m!4496309 () Bool)

(assert (=> b!3930616 m!4496309))

(assert (=> b!3929285 m!4494303))

(declare-fun b!3930618 () Bool)

(declare-fun e!2431609 () Bool)

(assert (=> b!3930618 (= e!2431609 tp_is_empty!19811)))

(declare-fun b!3930620 () Bool)

(declare-fun tp!1196512 () Bool)

(assert (=> b!3930620 (= e!2431609 tp!1196512)))

(declare-fun b!3930619 () Bool)

(declare-fun tp!1196513 () Bool)

(declare-fun tp!1196515 () Bool)

(assert (=> b!3930619 (= e!2431609 (and tp!1196513 tp!1196515))))

(assert (=> b!3929692 (= tp!1196324 e!2431609)))

(declare-fun b!3930621 () Bool)

(declare-fun tp!1196516 () Bool)

(declare-fun tp!1196514 () Bool)

(assert (=> b!3930621 (= e!2431609 (and tp!1196516 tp!1196514))))

(assert (= (and b!3929692 (is-ElementMatch!11420 (regex!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80)))))) b!3930618))

(assert (= (and b!3929692 (is-Concat!18166 (regex!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80)))))) b!3930619))

(assert (= (and b!3929692 (is-Star!11420 (regex!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80)))))) b!3930620))

(assert (= (and b!3929692 (is-Union!11420 (regex!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80)))))) b!3930621))

(declare-fun b!3930625 () Bool)

(declare-fun b_free!107277 () Bool)

(declare-fun b_next!107981 () Bool)

(assert (=> b!3930625 (= b_free!107277 (not b_next!107981))))

(declare-fun tb!234917 () Bool)

(declare-fun t!325506 () Bool)

(assert (=> (and b!3930625 (= (toValue!8967 (transformation!6515 (rule!9459 (h!47153 (t!325280 (t!325280 suffixTokens!72)))))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372587)))))) t!325506) tb!234917))

(declare-fun result!284664 () Bool)

(assert (= result!284664 result!284626))

(assert (=> d!1165239 t!325506))

(declare-fun t!325508 () Bool)

(declare-fun tb!234919 () Bool)

(assert (=> (and b!3930625 (= (toValue!8967 (transformation!6515 (rule!9459 (h!47153 (t!325280 (t!325280 suffixTokens!72)))))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))) t!325508) tb!234919))

(declare-fun result!284666 () Bool)

(assert (= result!284666 result!284590))

(assert (=> d!1165021 t!325508))

(declare-fun t!325510 () Bool)

(declare-fun tb!234921 () Bool)

(assert (=> (and b!3930625 (= (toValue!8967 (transformation!6515 (rule!9459 (h!47153 (t!325280 (t!325280 suffixTokens!72)))))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))) t!325510) tb!234921))

(declare-fun result!284668 () Bool)

(assert (= result!284668 result!284430))

(assert (=> d!1164491 t!325510))

(declare-fun tb!234923 () Bool)

(declare-fun t!325512 () Bool)

(assert (=> (and b!3930625 (= (toValue!8967 (transformation!6515 (rule!9459 (h!47153 (t!325280 (t!325280 suffixTokens!72)))))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372501)))))) t!325512) tb!234923))

(declare-fun result!284670 () Bool)

(assert (= result!284670 result!284554))

(assert (=> d!1164921 t!325512))

(assert (=> d!1165019 t!325508))

(declare-fun b_and!299931 () Bool)

(declare-fun tp!1196520 () Bool)

(assert (=> b!3930625 (= tp!1196520 (and (=> t!325508 result!284666) (=> t!325510 result!284668) (=> t!325506 result!284664) (=> t!325512 result!284670) b_and!299931))))

(declare-fun b_free!107279 () Bool)

(declare-fun b_next!107983 () Bool)

(assert (=> b!3930625 (= b_free!107279 (not b_next!107983))))

(declare-fun t!325514 () Bool)

(declare-fun tb!234925 () Bool)

(assert (=> (and b!3930625 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 (t!325280 suffixTokens!72)))))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72)))))) t!325514) tb!234925))

(declare-fun result!284672 () Bool)

(assert (= result!284672 result!284614))

(assert (=> b!3930397 t!325514))

(declare-fun t!325516 () Bool)

(declare-fun tb!234927 () Bool)

(assert (=> (and b!3930625 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 (t!325280 suffixTokens!72)))))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72))))) t!325516) tb!234927))

(declare-fun result!284674 () Bool)

(assert (= result!284674 result!284438))

(assert (=> b!3929374 t!325516))

(declare-fun tb!234929 () Bool)

(declare-fun t!325518 () Bool)

(assert (=> (and b!3930625 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 (t!325280 suffixTokens!72)))))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))) t!325518) tb!234929))

(declare-fun result!284676 () Bool)

(assert (= result!284676 result!284578))

(assert (=> d!1165019 t!325518))

(declare-fun tb!234931 () Bool)

(declare-fun t!325520 () Bool)

(assert (=> (and b!3930625 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 (t!325280 suffixTokens!72)))))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372501)))))) t!325520) tb!234931))

(declare-fun result!284678 () Bool)

(assert (= result!284678 result!284542))

(assert (=> d!1164823 t!325520))

(declare-fun t!325522 () Bool)

(declare-fun tb!234933 () Bool)

(assert (=> (and b!3930625 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 (t!325280 suffixTokens!72)))))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372587)))))) t!325522) tb!234933))

(declare-fun result!284680 () Bool)

(assert (= result!284680 result!284566))

(assert (=> d!1164967 t!325522))

(declare-fun tb!234935 () Bool)

(declare-fun t!325524 () Bool)

(assert (=> (and b!3930625 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 (t!325280 suffixTokens!72)))))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80)))))) t!325524) tb!234935))

(declare-fun result!284682 () Bool)

(assert (= result!284682 result!284602))

(assert (=> b!3930385 t!325524))

(declare-fun t!325526 () Bool)

(declare-fun tb!234937 () Bool)

(assert (=> (and b!3930625 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 (t!325280 suffixTokens!72)))))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))) t!325526) tb!234937))

(declare-fun result!284684 () Bool)

(assert (= result!284684 result!284422))

(assert (=> d!1164479 t!325526))

(declare-fun tb!234939 () Bool)

(declare-fun t!325528 () Bool)

(assert (=> (and b!3930625 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 (t!325280 suffixTokens!72)))))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80))))) t!325528) tb!234939))

(declare-fun result!284686 () Bool)

(assert (= result!284686 result!284444))

(assert (=> b!3929454 t!325528))

(declare-fun b_and!299933 () Bool)

(declare-fun tp!1196518 () Bool)

(assert (=> b!3930625 (= tp!1196518 (and (=> t!325524 result!284682) (=> t!325526 result!284684) (=> t!325522 result!284680) (=> t!325528 result!284686) (=> t!325514 result!284672) (=> t!325518 result!284676) (=> t!325520 result!284678) (=> t!325516 result!284674) b_and!299933))))

(declare-fun e!2431614 () Bool)

(assert (=> b!3929721 (= tp!1196359 e!2431614)))

(declare-fun b!3930624 () Bool)

(declare-fun e!2431613 () Bool)

(declare-fun tp!1196517 () Bool)

(declare-fun e!2431612 () Bool)

(assert (=> b!3930624 (= e!2431613 (and tp!1196517 (inv!55921 (tag!7375 (rule!9459 (h!47153 (t!325280 (t!325280 suffixTokens!72)))))) (inv!55925 (transformation!6515 (rule!9459 (h!47153 (t!325280 (t!325280 suffixTokens!72)))))) e!2431612))))

(declare-fun e!2431615 () Bool)

(declare-fun b!3930623 () Bool)

(declare-fun tp!1196521 () Bool)

(assert (=> b!3930623 (= e!2431615 (and (inv!21 (value!206313 (h!47153 (t!325280 (t!325280 suffixTokens!72))))) e!2431613 tp!1196521))))

(declare-fun b!3930622 () Bool)

(declare-fun tp!1196519 () Bool)

(assert (=> b!3930622 (= e!2431614 (and (inv!55924 (h!47153 (t!325280 (t!325280 suffixTokens!72)))) e!2431615 tp!1196519))))

(assert (=> b!3930625 (= e!2431612 (and tp!1196520 tp!1196518))))

(assert (= b!3930624 b!3930625))

(assert (= b!3930623 b!3930624))

(assert (= b!3930622 b!3930623))

(assert (= (and b!3929721 (is-Cons!41733 (t!325280 (t!325280 suffixTokens!72)))) b!3930622))

(declare-fun m!4496311 () Bool)

(assert (=> b!3930624 m!4496311))

(declare-fun m!4496313 () Bool)

(assert (=> b!3930624 m!4496313))

(declare-fun m!4496315 () Bool)

(assert (=> b!3930623 m!4496315))

(declare-fun m!4496317 () Bool)

(assert (=> b!3930622 m!4496317))

(declare-fun b!3930626 () Bool)

(declare-fun e!2431616 () Bool)

(assert (=> b!3930626 (= e!2431616 tp_is_empty!19811)))

(declare-fun b!3930628 () Bool)

(declare-fun tp!1196522 () Bool)

(assert (=> b!3930628 (= e!2431616 tp!1196522)))

(declare-fun b!3930627 () Bool)

(declare-fun tp!1196523 () Bool)

(declare-fun tp!1196525 () Bool)

(assert (=> b!3930627 (= e!2431616 (and tp!1196523 tp!1196525))))

(assert (=> b!3929716 (= tp!1196351 e!2431616)))

(declare-fun b!3930629 () Bool)

(declare-fun tp!1196526 () Bool)

(declare-fun tp!1196524 () Bool)

(assert (=> b!3930629 (= e!2431616 (and tp!1196526 tp!1196524))))

(assert (= (and b!3929716 (is-ElementMatch!11420 (regOne!23353 (regex!6515 (h!47154 rules!2768))))) b!3930626))

(assert (= (and b!3929716 (is-Concat!18166 (regOne!23353 (regex!6515 (h!47154 rules!2768))))) b!3930627))

(assert (= (and b!3929716 (is-Star!11420 (regOne!23353 (regex!6515 (h!47154 rules!2768))))) b!3930628))

(assert (= (and b!3929716 (is-Union!11420 (regOne!23353 (regex!6515 (h!47154 rules!2768))))) b!3930629))

(declare-fun b!3930630 () Bool)

(declare-fun e!2431617 () Bool)

(assert (=> b!3930630 (= e!2431617 tp_is_empty!19811)))

(declare-fun b!3930632 () Bool)

(declare-fun tp!1196527 () Bool)

(assert (=> b!3930632 (= e!2431617 tp!1196527)))

(declare-fun b!3930631 () Bool)

(declare-fun tp!1196528 () Bool)

(declare-fun tp!1196530 () Bool)

(assert (=> b!3930631 (= e!2431617 (and tp!1196528 tp!1196530))))

(assert (=> b!3929716 (= tp!1196349 e!2431617)))

(declare-fun b!3930633 () Bool)

(declare-fun tp!1196531 () Bool)

(declare-fun tp!1196529 () Bool)

(assert (=> b!3930633 (= e!2431617 (and tp!1196531 tp!1196529))))

(assert (= (and b!3929716 (is-ElementMatch!11420 (regTwo!23353 (regex!6515 (h!47154 rules!2768))))) b!3930630))

(assert (= (and b!3929716 (is-Concat!18166 (regTwo!23353 (regex!6515 (h!47154 rules!2768))))) b!3930631))

(assert (= (and b!3929716 (is-Star!11420 (regTwo!23353 (regex!6515 (h!47154 rules!2768))))) b!3930632))

(assert (= (and b!3929716 (is-Union!11420 (regTwo!23353 (regex!6515 (h!47154 rules!2768))))) b!3930633))

(declare-fun b!3930634 () Bool)

(declare-fun e!2431618 () Bool)

(declare-fun tp!1196532 () Bool)

(assert (=> b!3930634 (= e!2431618 (and tp_is_empty!19811 tp!1196532))))

(assert (=> b!3929722 (= tp!1196361 e!2431618)))

(assert (= (and b!3929722 (is-Cons!41731 (originalCharacters!7115 (h!47153 (t!325280 suffixTokens!72))))) b!3930634))

(declare-fun b!3930635 () Bool)

(declare-fun e!2431619 () Bool)

(assert (=> b!3930635 (= e!2431619 tp_is_empty!19811)))

(declare-fun b!3930637 () Bool)

(declare-fun tp!1196533 () Bool)

(assert (=> b!3930637 (= e!2431619 tp!1196533)))

(declare-fun b!3930636 () Bool)

(declare-fun tp!1196534 () Bool)

(declare-fun tp!1196536 () Bool)

(assert (=> b!3930636 (= e!2431619 (and tp!1196534 tp!1196536))))

(assert (=> b!3929723 (= tp!1196357 e!2431619)))

(declare-fun b!3930638 () Bool)

(declare-fun tp!1196537 () Bool)

(declare-fun tp!1196535 () Bool)

(assert (=> b!3930638 (= e!2431619 (and tp!1196537 tp!1196535))))

(assert (= (and b!3929723 (is-ElementMatch!11420 (regex!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72)))))) b!3930635))

(assert (= (and b!3929723 (is-Concat!18166 (regex!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72)))))) b!3930636))

(assert (= (and b!3929723 (is-Star!11420 (regex!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72)))))) b!3930637))

(assert (= (and b!3929723 (is-Union!11420 (regex!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72)))))) b!3930638))

(declare-fun b!3930639 () Bool)

(declare-fun e!2431621 () Bool)

(declare-fun tp!1196538 () Bool)

(declare-fun tp!1196539 () Bool)

(assert (=> b!3930639 (= e!2431621 (and (inv!55928 (left!31834 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) (value!206313 (h!47153 suffixTokens!72)))))) tp!1196539 (inv!55928 (right!32164 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) (value!206313 (h!47153 suffixTokens!72)))))) tp!1196538))))

(declare-fun b!3930641 () Bool)

(declare-fun e!2431620 () Bool)

(declare-fun tp!1196540 () Bool)

(assert (=> b!3930641 (= e!2431620 tp!1196540)))

(declare-fun b!3930640 () Bool)

(assert (=> b!3930640 (= e!2431621 (and (inv!55934 (xs!16032 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) (value!206313 (h!47153 suffixTokens!72)))))) e!2431620))))

(assert (=> b!3929376 (= tp!1196296 (and (inv!55928 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) (value!206313 (h!47153 suffixTokens!72))))) e!2431621))))

(assert (= (and b!3929376 (is-Node!12726 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) (value!206313 (h!47153 suffixTokens!72)))))) b!3930639))

(assert (= b!3930640 b!3930641))

(assert (= (and b!3929376 (is-Leaf!19691 (c!682587 (dynLambda!17875 (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) (value!206313 (h!47153 suffixTokens!72)))))) b!3930640))

(declare-fun m!4496319 () Bool)

(assert (=> b!3930639 m!4496319))

(declare-fun m!4496321 () Bool)

(assert (=> b!3930639 m!4496321))

(declare-fun m!4496323 () Bool)

(assert (=> b!3930640 m!4496323))

(assert (=> b!3929376 m!4494397))

(declare-fun b!3930644 () Bool)

(declare-fun b_free!107281 () Bool)

(declare-fun b_next!107985 () Bool)

(assert (=> b!3930644 (= b_free!107281 (not b_next!107985))))

(declare-fun t!325530 () Bool)

(declare-fun tb!234941 () Bool)

(assert (=> (and b!3930644 (= (toValue!8967 (transformation!6515 (h!47154 (t!325281 (t!325281 rules!2768))))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372587)))))) t!325530) tb!234941))

(declare-fun result!284688 () Bool)

(assert (= result!284688 result!284626))

(assert (=> d!1165239 t!325530))

(declare-fun t!325532 () Bool)

(declare-fun tb!234943 () Bool)

(assert (=> (and b!3930644 (= (toValue!8967 (transformation!6515 (h!47154 (t!325281 (t!325281 rules!2768))))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))) t!325532) tb!234943))

(declare-fun result!284690 () Bool)

(assert (= result!284690 result!284590))

(assert (=> d!1165021 t!325532))

(declare-fun tb!234945 () Bool)

(declare-fun t!325534 () Bool)

(assert (=> (and b!3930644 (= (toValue!8967 (transformation!6515 (h!47154 (t!325281 (t!325281 rules!2768))))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))) t!325534) tb!234945))

(declare-fun result!284692 () Bool)

(assert (= result!284692 result!284430))

(assert (=> d!1164491 t!325534))

(declare-fun tb!234947 () Bool)

(declare-fun t!325536 () Bool)

(assert (=> (and b!3930644 (= (toValue!8967 (transformation!6515 (h!47154 (t!325281 (t!325281 rules!2768))))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372501)))))) t!325536) tb!234947))

(declare-fun result!284694 () Bool)

(assert (= result!284694 result!284554))

(assert (=> d!1164921 t!325536))

(assert (=> d!1165019 t!325532))

(declare-fun b_and!299935 () Bool)

(declare-fun tp!1196544 () Bool)

(assert (=> b!3930644 (= tp!1196544 (and (=> t!325530 result!284688) (=> t!325536 result!284694) (=> t!325532 result!284690) (=> t!325534 result!284692) b_and!299935))))

(declare-fun b_free!107283 () Bool)

(declare-fun b_next!107987 () Bool)

(assert (=> b!3930644 (= b_free!107283 (not b_next!107987))))

(declare-fun tb!234949 () Bool)

(declare-fun t!325538 () Bool)

(assert (=> (and b!3930644 (= (toChars!8826 (transformation!6515 (h!47154 (t!325281 (t!325281 rules!2768))))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72)))))) t!325538) tb!234949))

(declare-fun result!284696 () Bool)

(assert (= result!284696 result!284614))

(assert (=> b!3930397 t!325538))

(declare-fun t!325540 () Bool)

(declare-fun tb!234951 () Bool)

(assert (=> (and b!3930644 (= (toChars!8826 (transformation!6515 (h!47154 (t!325281 (t!325281 rules!2768))))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72))))) t!325540) tb!234951))

(declare-fun result!284698 () Bool)

(assert (= result!284698 result!284438))

(assert (=> b!3929374 t!325540))

(declare-fun tb!234953 () Bool)

(declare-fun t!325542 () Bool)

(assert (=> (and b!3930644 (= (toChars!8826 (transformation!6515 (h!47154 (t!325281 (t!325281 rules!2768))))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))) t!325542) tb!234953))

(declare-fun result!284700 () Bool)

(assert (= result!284700 result!284578))

(assert (=> d!1165019 t!325542))

(declare-fun t!325544 () Bool)

(declare-fun tb!234955 () Bool)

(assert (=> (and b!3930644 (= (toChars!8826 (transformation!6515 (h!47154 (t!325281 (t!325281 rules!2768))))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372501)))))) t!325544) tb!234955))

(declare-fun result!284702 () Bool)

(assert (= result!284702 result!284542))

(assert (=> d!1164823 t!325544))

(declare-fun t!325546 () Bool)

(declare-fun tb!234957 () Bool)

(assert (=> (and b!3930644 (= (toChars!8826 (transformation!6515 (h!47154 (t!325281 (t!325281 rules!2768))))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (get!13793 lt!1372587)))))) t!325546) tb!234957))

(declare-fun result!284704 () Bool)

(assert (= result!284704 result!284566))

(assert (=> d!1164967 t!325546))

(declare-fun tb!234959 () Bool)

(declare-fun t!325548 () Bool)

(assert (=> (and b!3930644 (= (toChars!8826 (transformation!6515 (h!47154 (t!325281 (t!325281 rules!2768))))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80)))))) t!325548) tb!234959))

(declare-fun result!284706 () Bool)

(assert (= result!284706 result!284602))

(assert (=> b!3930385 t!325548))

(declare-fun tb!234961 () Bool)

(declare-fun t!325550 () Bool)

(assert (=> (and b!3930644 (= (toChars!8826 (transformation!6515 (h!47154 (t!325281 (t!325281 rules!2768))))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235)))))) t!325550) tb!234961))

(declare-fun result!284708 () Bool)

(assert (= result!284708 result!284422))

(assert (=> d!1164479 t!325550))

(declare-fun tb!234963 () Bool)

(declare-fun t!325552 () Bool)

(assert (=> (and b!3930644 (= (toChars!8826 (transformation!6515 (h!47154 (t!325281 (t!325281 rules!2768))))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80))))) t!325552) tb!234963))

(declare-fun result!284710 () Bool)

(assert (= result!284710 result!284444))

(assert (=> b!3929454 t!325552))

(declare-fun b_and!299937 () Bool)

(declare-fun tp!1196542 () Bool)

(assert (=> b!3930644 (= tp!1196542 (and (=> t!325552 result!284710) (=> t!325550 result!284708) (=> t!325548 result!284706) (=> t!325542 result!284700) (=> t!325538 result!284696) (=> t!325546 result!284704) (=> t!325544 result!284702) (=> t!325540 result!284698) b_and!299937))))

(declare-fun e!2431622 () Bool)

(assert (=> b!3930644 (= e!2431622 (and tp!1196544 tp!1196542))))

(declare-fun e!2431625 () Bool)

(declare-fun b!3930643 () Bool)

(declare-fun tp!1196541 () Bool)

(assert (=> b!3930643 (= e!2431625 (and tp!1196541 (inv!55921 (tag!7375 (h!47154 (t!325281 (t!325281 rules!2768))))) (inv!55925 (transformation!6515 (h!47154 (t!325281 (t!325281 rules!2768))))) e!2431622))))

(declare-fun b!3930642 () Bool)

(declare-fun e!2431624 () Bool)

(declare-fun tp!1196543 () Bool)

(assert (=> b!3930642 (= e!2431624 (and e!2431625 tp!1196543))))

(assert (=> b!3929677 (= tp!1196312 e!2431624)))

(assert (= b!3930643 b!3930644))

(assert (= b!3930642 b!3930643))

(assert (= (and b!3929677 (is-Cons!41734 (t!325281 (t!325281 rules!2768)))) b!3930642))

(declare-fun m!4496325 () Bool)

(assert (=> b!3930643 m!4496325))

(declare-fun m!4496327 () Bool)

(assert (=> b!3930643 m!4496327))

(declare-fun b!3930645 () Bool)

(declare-fun e!2431626 () Bool)

(declare-fun tp!1196545 () Bool)

(assert (=> b!3930645 (= e!2431626 (and tp_is_empty!19811 tp!1196545))))

(assert (=> b!3929728 (= tp!1196365 e!2431626)))

(assert (= (and b!3929728 (is-Cons!41731 (t!325278 (t!325278 prefix!426)))) b!3930645))

(declare-fun b!3930646 () Bool)

(declare-fun e!2431627 () Bool)

(assert (=> b!3930646 (= e!2431627 tp_is_empty!19811)))

(declare-fun b!3930648 () Bool)

(declare-fun tp!1196546 () Bool)

(assert (=> b!3930648 (= e!2431627 tp!1196546)))

(declare-fun b!3930647 () Bool)

(declare-fun tp!1196547 () Bool)

(declare-fun tp!1196549 () Bool)

(assert (=> b!3930647 (= e!2431627 (and tp!1196547 tp!1196549))))

(assert (=> b!3929678 (= tp!1196310 e!2431627)))

(declare-fun b!3930649 () Bool)

(declare-fun tp!1196550 () Bool)

(declare-fun tp!1196548 () Bool)

(assert (=> b!3930649 (= e!2431627 (and tp!1196550 tp!1196548))))

(assert (= (and b!3929678 (is-ElementMatch!11420 (regex!6515 (h!47154 (t!325281 rules!2768))))) b!3930646))

(assert (= (and b!3929678 (is-Concat!18166 (regex!6515 (h!47154 (t!325281 rules!2768))))) b!3930647))

(assert (= (and b!3929678 (is-Star!11420 (regex!6515 (h!47154 (t!325281 rules!2768))))) b!3930648))

(assert (= (and b!3929678 (is-Union!11420 (regex!6515 (h!47154 (t!325281 rules!2768))))) b!3930649))

(declare-fun b!3930650 () Bool)

(declare-fun e!2431628 () Bool)

(declare-fun tp!1196551 () Bool)

(assert (=> b!3930650 (= e!2431628 (and tp_is_empty!19811 tp!1196551))))

(assert (=> b!3929698 (= tp!1196331 e!2431628)))

(assert (= (and b!3929698 (is-Cons!41731 (t!325278 (originalCharacters!7115 (h!47153 prefixTokens!80))))) b!3930650))

(declare-fun b!3930651 () Bool)

(declare-fun e!2431629 () Bool)

(assert (=> b!3930651 (= e!2431629 tp_is_empty!19811)))

(declare-fun b!3930653 () Bool)

(declare-fun tp!1196552 () Bool)

(assert (=> b!3930653 (= e!2431629 tp!1196552)))

(declare-fun b!3930652 () Bool)

(declare-fun tp!1196553 () Bool)

(declare-fun tp!1196555 () Bool)

(assert (=> b!3930652 (= e!2431629 (and tp!1196553 tp!1196555))))

(assert (=> b!3929714 (= tp!1196348 e!2431629)))

(declare-fun b!3930654 () Bool)

(declare-fun tp!1196556 () Bool)

(declare-fun tp!1196554 () Bool)

(assert (=> b!3930654 (= e!2431629 (and tp!1196556 tp!1196554))))

(assert (= (and b!3929714 (is-ElementMatch!11420 (regOne!23352 (regex!6515 (h!47154 rules!2768))))) b!3930651))

(assert (= (and b!3929714 (is-Concat!18166 (regOne!23352 (regex!6515 (h!47154 rules!2768))))) b!3930652))

(assert (= (and b!3929714 (is-Star!11420 (regOne!23352 (regex!6515 (h!47154 rules!2768))))) b!3930653))

(assert (= (and b!3929714 (is-Union!11420 (regOne!23352 (regex!6515 (h!47154 rules!2768))))) b!3930654))

(declare-fun b!3930655 () Bool)

(declare-fun e!2431630 () Bool)

(assert (=> b!3930655 (= e!2431630 tp_is_empty!19811)))

(declare-fun b!3930657 () Bool)

(declare-fun tp!1196557 () Bool)

(assert (=> b!3930657 (= e!2431630 tp!1196557)))

(declare-fun b!3930656 () Bool)

(declare-fun tp!1196558 () Bool)

(declare-fun tp!1196560 () Bool)

(assert (=> b!3930656 (= e!2431630 (and tp!1196558 tp!1196560))))

(assert (=> b!3929714 (= tp!1196350 e!2431630)))

(declare-fun b!3930658 () Bool)

(declare-fun tp!1196561 () Bool)

(declare-fun tp!1196559 () Bool)

(assert (=> b!3930658 (= e!2431630 (and tp!1196561 tp!1196559))))

(assert (= (and b!3929714 (is-ElementMatch!11420 (regTwo!23352 (regex!6515 (h!47154 rules!2768))))) b!3930655))

(assert (= (and b!3929714 (is-Concat!18166 (regTwo!23352 (regex!6515 (h!47154 rules!2768))))) b!3930656))

(assert (= (and b!3929714 (is-Star!11420 (regTwo!23352 (regex!6515 (h!47154 rules!2768))))) b!3930657))

(assert (= (and b!3929714 (is-Union!11420 (regTwo!23352 (regex!6515 (h!47154 rules!2768))))) b!3930658))

(declare-fun b_lambda!114985 () Bool)

(assert (= b_lambda!114979 (or (and b!3929093 b_free!107227 (= (toChars!8826 (transformation!6515 (h!47154 rules!2768))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80))))))) (and b!3929679 b_free!107251 (= (toChars!8826 (transformation!6515 (h!47154 (t!325281 rules!2768)))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80))))))) (and b!3930644 b_free!107283 (= (toChars!8826 (transformation!6515 (h!47154 (t!325281 (t!325281 rules!2768))))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80))))))) (and b!3929087 b_free!107231 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80))))))) (and b!3930614 b_free!107275 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 (t!325280 prefixTokens!80)))))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80))))))) (and b!3929105 b_free!107235 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80))))))) (and b!3929724 b_free!107259 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72))))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80))))))) (and b!3929693 b_free!107255) (and b!3930625 b_free!107279 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 (t!325280 suffixTokens!72)))))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80))))))) b_lambda!114985)))

(declare-fun b_lambda!114987 () Bool)

(assert (= b_lambda!114943 (or (and b!3929087 b_free!107231 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))))) (and b!3930644 b_free!107283 (= (toChars!8826 (transformation!6515 (h!47154 (t!325281 (t!325281 rules!2768))))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))))) (and b!3929105 b_free!107235 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))))) (and b!3929679 b_free!107251 (= (toChars!8826 (transformation!6515 (h!47154 (t!325281 rules!2768)))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))))) (and b!3929693 b_free!107255 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80))))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))))) (and b!3930625 b_free!107279 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 (t!325280 suffixTokens!72)))))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))))) (and b!3929724 b_free!107259 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72))))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))))) (and b!3930614 b_free!107275 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 (t!325280 prefixTokens!80)))))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))))) (and b!3929093 b_free!107227 (= (toChars!8826 (transformation!6515 (h!47154 rules!2768))) (toChars!8826 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))))) b_lambda!114987)))

(declare-fun b_lambda!114989 () Bool)

(assert (= b_lambda!114945 (or (and b!3930614 b_free!107273 (= (toValue!8967 (transformation!6515 (rule!9459 (h!47153 (t!325280 (t!325280 prefixTokens!80)))))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))))) (and b!3929679 b_free!107249 (= (toValue!8967 (transformation!6515 (h!47154 (t!325281 rules!2768)))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))))) (and b!3929724 b_free!107257 (= (toValue!8967 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72))))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))))) (and b!3930625 b_free!107277 (= (toValue!8967 (transformation!6515 (rule!9459 (h!47153 (t!325280 (t!325280 suffixTokens!72)))))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))))) (and b!3929105 b_free!107233 (= (toValue!8967 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))))) (and b!3930644 b_free!107281 (= (toValue!8967 (transformation!6515 (h!47154 (t!325281 (t!325281 rules!2768))))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))))) (and b!3929693 b_free!107253 (= (toValue!8967 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80))))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))))) (and b!3929093 b_free!107225 (= (toValue!8967 (transformation!6515 (h!47154 rules!2768))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))))) (and b!3929087 b_free!107229 (= (toValue!8967 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (toValue!8967 (transformation!6515 (rule!9459 (_1!23637 (v!39260 lt!1372235))))))) b_lambda!114989)))

(declare-fun b_lambda!114991 () Bool)

(assert (= b_lambda!114981 (or (and b!3929724 b_free!107259) (and b!3930614 b_free!107275 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 (t!325280 prefixTokens!80)))))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72))))))) (and b!3929105 b_free!107235 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 suffixTokens!72)))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72))))))) (and b!3929693 b_free!107255 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 prefixTokens!80))))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72))))))) (and b!3930625 b_free!107279 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 (t!325280 suffixTokens!72)))))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72))))))) (and b!3929087 b_free!107231 (= (toChars!8826 (transformation!6515 (rule!9459 (h!47153 prefixTokens!80)))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72))))))) (and b!3929093 b_free!107227 (= (toChars!8826 (transformation!6515 (h!47154 rules!2768))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72))))))) (and b!3930644 b_free!107283 (= (toChars!8826 (transformation!6515 (h!47154 (t!325281 (t!325281 rules!2768))))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72))))))) (and b!3929679 b_free!107251 (= (toChars!8826 (transformation!6515 (h!47154 (t!325281 rules!2768)))) (toChars!8826 (transformation!6515 (rule!9459 (h!47153 (t!325280 suffixTokens!72))))))) b_lambda!114991)))

(push 1)

(assert (not d!1164873))

(assert (not d!1165103))

(assert (not b!3930522))

(assert (not d!1164839))

(assert (not bm!284792))

(assert (not b!3930157))

(assert (not b!3930092))

(assert (not b!3930115))

(assert (not d!1164965))

(assert (not b_next!107979))

(assert (not b!3930518))

(assert (not d!1165241))

(assert (not b!3930565))

(assert (not b!3930224))

(assert (not d!1164847))

(assert (not b!3930194))

(assert (not b!3930335))

(assert (not b!3930398))

(assert (not b_next!107957))

(assert (not b!3930001))

(assert (not b!3930459))

(assert (not b!3930162))

(assert (not b!3930500))

(assert (not d!1164801))

(assert (not b!3930502))

(assert (not b!3930214))

(assert (not b!3930570))

(assert (not b!3930145))

(assert (not d!1164963))

(assert (not b!3930495))

(assert (not b!3930190))

(assert (not b!3930005))

(assert (not b!3930645))

(assert (not b!3930217))

(assert (not b!3930165))

(assert (not b!3930225))

(assert (not d!1165003))

(assert (not b!3930155))

(assert (not b!3930228))

(assert (not b!3930631))

(assert (not b!3930206))

(assert (not b!3930617))

(assert (not d!1165235))

(assert (not b!3929945))

(assert (not b!3930622))

(assert (not d!1164857))

(assert (not b!3930461))

(assert (not d!1165057))

(assert (not b!3930562))

(assert (not b!3930375))

(assert (not b!3929939))

(assert (not b!3930615))

(assert (not b!3930318))

(assert (not b!3930584))

(assert (not b_next!107963))

(assert (not d!1165115))

(assert (not b!3930170))

(assert (not b!3930246))

(assert (not b!3930524))

(assert (not b!3930526))

(assert (not b_next!107939))

(assert (not b!3929929))

(assert (not b!3929978))

(assert (not b!3930008))

(assert (not d!1164799))

(assert (not b!3930624))

(assert (not bm!284804))

(assert b_and!299917)

(assert (not tb!234869))

(assert (not b!3930505))

(assert (not bm!284801))

(assert (not b!3929982))

(assert (not b!3930507))

(assert (not b!3930399))

(assert (not b!3930121))

(assert (not bm!284812))

(assert (not b!3929934))

(assert (not d!1165139))

(assert (not b!3930657))

(assert (not b!3930168))

(assert (not b!3930538))

(assert (not b!3930150))

(assert (not b!3930372))

(assert (not b!3930048))

(assert (not b!3930329))

(assert (not b!3930307))

(assert (not b_lambda!114975))

(assert (not b_lambda!114967))

(assert (not b!3930248))

(assert (not b!3930047))

(assert (not d!1165099))

(assert (not b!3930137))

(assert (not b!3929933))

(assert (not b!3930569))

(assert (not b!3930200))

(assert (not b!3929937))

(assert (not d!1165127))

(assert (not b!3930637))

(assert (not b!3930559))

(assert (not b!3930427))

(assert (not b!3930313))

(assert (not b!3930276))

(assert (not b_lambda!114991))

(assert (not b!3930467))

(assert (not b!3929996))

(assert (not b!3930422))

(assert (not b_lambda!114969))

(assert (not b!3930311))

(assert (not b!3930436))

(assert (not b!3930586))

(assert (not d!1165121))

(assert (not b!3930397))

(assert (not b!3929963))

(assert (not b!3930385))

(assert (not b!3930182))

(assert (not b!3930647))

(assert (not b!3930426))

(assert (not b!3930512))

(assert (not b!3929988))

(assert (not b!3929928))

(assert (not d!1164983))

(assert (not b!3930312))

(assert (not bm!284796))

(assert (not d!1164817))

(assert (not bm!284794))

(assert (not b!3930540))

(assert (not b!3930339))

(assert (not b!3930609))

(assert (not d!1165231))

(assert (not b!3930171))

(assert (not b!3930167))

(assert (not bm!284798))

(assert (not d!1165055))

(assert (not b_next!107953))

(assert (not d!1165119))

(assert (not bm!284803))

(assert (not b!3930455))

(assert (not b!3930555))

(assert (not b!3930650))

(assert (not b!3930009))

(assert (not b!3930320))

(assert (not d!1164899))

(assert (not b!3930484))

(assert (not b!3930477))

(assert (not b!3930147))

(assert (not b!3930498))

(assert (not b!3930641))

(assert (not b!3930212))

(assert b_and!299903)

(assert (not b!3930409))

(assert (not b!3930177))

(assert (not d!1165079))

(assert (not d!1164955))

(assert (not d!1164813))

(assert (not b!3930394))

(assert (not bm!284811))

(assert (not d!1164823))

(assert (not b!3929972))

(assert (not tb!234857))

(assert (not b!3930546))

(assert (not d!1165125))

(assert (not b!3930508))

(assert (not b!3930289))

(assert (not b!3930481))

(assert (not b_lambda!114987))

(assert (not b!3929994))

(assert (not b!3930594))

(assert (not b!3930328))

(assert (not b!3930434))

(assert (not b!3930341))

(assert (not b!3929990))

(assert (not b!3930516))

(assert (not b!3930589))

(assert (not tb!234833))

(assert (not b!3930412))

(assert (not b!3930290))

(assert b_and!299911)

(assert (not b!3929980))

(assert (not b!3930619))

(assert (not b!3929931))

(assert (not d!1164915))

(assert (not b!3929991))

(assert (not d!1165227))

(assert (not d!1165015))

(assert (not b!3930132))

(assert (not b!3930483))

(assert (not b!3930649))

(assert (not b!3930577))

(assert (not b!3930417))

(assert b_and!299905)

(assert (not d!1165105))

(assert (not b!3930233))

(assert (not b!3930465))

(assert (not b_next!107937))

(assert b_and!299931)

(assert (not b!3930295))

(assert (not b!3930125))

(assert (not d!1165013))

(assert (not b!3930396))

(assert (not b!3930549))

(assert (not d!1164947))

(assert (not b!3930189))

(assert (not b!3930567))

(assert (not d!1164927))

(assert (not b!3930590))

(assert (not b!3930331))

(assert (not b!3930593))

(assert (not b!3930113))

(assert (not b!3929970))

(assert (not b!3930196))

(assert (not b!3929995))

(assert (not d!1165069))

(assert (not b!3930274))

(assert (not b!3930471))

(assert (not b!3930237))

(assert (not b!3930262))

(assert (not d!1165019))

(assert (not b!3930222))

(assert (not b!3930527))

(assert (not d!1164907))

(assert (not b!3930002))

(assert (not d!1165031))

(assert (not b!3930469))

(assert (not b!3930557))

(assert (not bm!284802))

(assert (not b!3929456))

(assert (not b!3930319))

(assert (not tb!234881))

(assert (not b!3930529))

(assert (not d!1165053))

(assert (not b!3930386))

(assert (not b!3930178))

(assert (not b_next!107977))

(assert (not b_next!107959))

(assert (not b!3930250))

(assert (not b!3930640))

(assert (not b!3930221))

(assert (not b!3930094))

(assert (not b!3930407))

(assert (not b!3930658))

(assert (not d!1164861))

(assert (not b!3930620))

(assert (not b!3930099))

(assert (not b!3930544))

(assert (not b!3930610))

(assert b_and!299925)

(assert (not b!3930374))

(assert (not b!3930430))

(assert (not b!3930578))

(assert (not b!3930174))

(assert (not b!3930537))

(assert (not d!1165011))

(assert (not b!3930604))

(assert (not b!3929924))

(assert (not b!3930558))

(assert (not b!3930463))

(assert (not b!3930286))

(assert (not b!3930088))

(assert (not b!3930336))

(assert (not b!3930583))

(assert (not b!3930551))

(assert (not b!3930628))

(assert (not b!3930011))

(assert (not b!3930561))

(assert (not b!3930488))

(assert b_and!299933)

(assert (not b!3930055))

(assert (not b!3930322))

(assert (not b!3930414))

(assert (not b!3930603))

(assert (not b!3930489))

(assert (not b!3930580))

(assert (not b!3930013))

(assert (not b!3930606))

(assert (not b!3929932))

(assert (not b!3930531))

(assert (not d!1165037))

(assert (not b!3930198))

(assert (not d!1164995))

(assert (not b!3930216))

(assert (not b_lambda!114973))

(assert (not bm!284799))

(assert (not d!1164897))

(assert b_and!299909)

(assert (not d!1164959))

(assert (not b!3930416))

(assert (not b!3930401))

(assert (not b!3930107))

(assert (not b!3930127))

(assert (not bm!284793))

(assert b_and!299921)

(assert (not b!3930220))

(assert (not b!3930473))

(assert (not b!3930149))

(assert (not b!3930515))

(assert (not b!3930542))

(assert (not b!3930652))

(assert (not d!1165183))

(assert (not b!3930101))

(assert (not b!3930654))

(assert (not b!3930042))

(assert (not d!1165065))

(assert (not b!3930479))

(assert (not b!3930482))

(assert (not b!3930213))

(assert (not bm!284774))

(assert (not b!3930611))

(assert (not b!3930634))

(assert (not d!1164953))

(assert (not b!3930140))

(assert (not b!3930405))

(assert (not d!1165091))

(assert (not b!3930316))

(assert (not b!3930204))

(assert (not bm!284795))

(assert (not b!3930616))

(assert b_and!299935)

(assert (not b!3930235))

(assert b_and!299929)

(assert (not b!3930371))

(assert (not b!3930309))

(assert (not b_lambda!114989))

(assert (not bm!284791))

(assert (not b!3929971))

(assert (not b!3930608))

(assert (not d!1164819))

(assert (not d!1164969))

(assert (not b!3930453))

(assert (not d!1165089))

(assert (not d!1164979))

(assert (not d!1164999))

(assert (not b!3930420))

(assert (not d!1165249))

(assert (not b!3930494))

(assert (not b!3930379))

(assert (not b!3930648))

(assert (not b_lambda!114957))

(assert (not b!3930317))

(assert (not b!3930623))

(assert (not b!3930643))

(assert (not b!3930478))

(assert (not b!3930049))

(assert (not b!3930007))

(assert (not b!3930492))

(assert b_and!299923)

(assert (not b_next!107955))

(assert (not b!3930376))

(assert (not b!3930282))

(assert (not b!3930588))

(assert (not b!3930382))

(assert (not d!1165033))

(assert (not d!1165243))

(assert (not d!1164855))

(assert (not b_lambda!114985))

(assert (not b!3930605))

(assert (not b!3929957))

(assert (not b_lambda!114971))

(assert (not b!3930504))

(assert (not d!1165161))

(assert (not b!3930566))

(assert (not b!3930143))

(assert (not d!1165209))

(assert (not d!1165179))

(assert (not b!3930327))

(assert (not b!3930554))

(assert (not d!1165035))

(assert (not d!1165029))

(assert b_and!299937)

(assert b_and!299915)

(assert (not d!1165097))

(assert (not b!3930129))

(assert (not b!3929966))

(assert (not b!3930131))

(assert (not b!3930585))

(assert (not d!1164845))

(assert (not b!3930520))

(assert (not d!1164967))

(assert (not d!1164935))

(assert (not d!1164835))

(assert (not b!3930268))

(assert (not tb!234797))

(assert (not b!3930280))

(assert (not b!3930511))

(assert (not b!3929955))

(assert (not b!3929376))

(assert (not b!3930612))

(assert (not d!1164913))

(assert (not d!1164923))

(assert (not b!3930111))

(assert (not b_next!107931))

(assert (not b_next!107935))

(assert (not d!1164997))

(assert (not b!3929938))

(assert (not b!3930534))

(assert (not bm!284815))

(assert (not b!3930632))

(assert (not b!3930485))

(assert (not d!1165095))

(assert (not b!3930315))

(assert (not b!3930447))

(assert (not b!3929925))

(assert (not b!3930153))

(assert (not b!3930636))

(assert b_and!299907)

(assert (not b!3930324))

(assert (not b!3929965))

(assert (not b!3930205))

(assert (not d!1165189))

(assert (not bm!284814))

(assert (not b!3930575))

(assert (not b!3930553))

(assert (not b_lambda!114983))

(assert (not b!3930378))

(assert (not b!3930308))

(assert (not b!3930202))

(assert (not b!3929953))

(assert (not b_next!107987))

(assert (not b!3930192))

(assert (not b!3930474))

(assert (not b_next!107933))

(assert (not b!3930043))

(assert (not b!3930581))

(assert (not d!1164849))

(assert (not b!3930486))

(assert (not b!3930323))

(assert (not b!3930139))

(assert (not d!1164951))

(assert (not d!1165085))

(assert (not b!3929935))

(assert (not d!1165131))

(assert (not b!3930633))

(assert (not d!1164877))

(assert (not b!3930613))

(assert (not b!3930158))

(assert (not b!3930533))

(assert (not d!1164797))

(assert (not b!3929979))

(assert (not b!3930638))

(assert (not b!3930181))

(assert (not d!1165221))

(assert (not b!3930261))

(assert (not b!3930368))

(assert (not b!3930172))

(assert b_and!299927)

(assert (not b!3930571))

(assert (not b!3930135))

(assert (not b!3930305))

(assert (not b!3930574))

(assert (not b!3930383))

(assert (not b!3930267))

(assert (not b!3930333))

(assert (not d!1164945))

(assert (not bm!284797))

(assert (not b!3929968))

(assert (not d!1164867))

(assert (not d!1164833))

(assert (not b!3930185))

(assert (not b!3930123))

(assert (not d!1165093))

(assert (not b!3930629))

(assert (not b!3930656))

(assert (not tb!234809))

(assert (not b!3930563))

(assert (not b_next!107983))

(assert (not b!3929930))

(assert (not b!3930579))

(assert b_and!299919)

(assert (not d!1165047))

(assert (not b!3930294))

(assert (not d!1164821))

(assert (not b!3930411))

(assert (not d!1165215))

(assert (not b!3930258))

(assert (not b!3929946))

(assert (not d!1164875))

(assert (not b!3930255))

(assert (not b!3930573))

(assert (not b!3930091))

(assert (not b!3930642))

(assert (not b!3930266))

(assert (not b!3930448))

(assert (not b!3930432))

(assert (not b!3929974))

(assert (not b!3929285))

(assert (not b!3930302))

(assert (not b_next!107961))

(assert (not b!3930252))

(assert (not b!3930528))

(assert (not b!3930424))

(assert (not b!3930653))

(assert (not b!3930387))

(assert (not b!3930330))

(assert (not b!3930288))

(assert (not b!3930259))

(assert (not tb!234821))

(assert (not b_next!107929))

(assert (not d!1165073))

(assert (not b!3930639))

(assert (not b!3930253))

(assert (not b_lambda!114977))

(assert (not b!3930451))

(assert (not b!3930457))

(assert (not b!3930240))

(assert (not b!3930621))

(assert (not b!3930547))

(assert (not b!3930187))

(assert (not b!3930207))

(assert (not b!3930109))

(assert (not b!3929926))

(assert (not tb!234845))

(assert (not b_next!107981))

(assert (not b!3929976))

(assert (not b!3930012))

(assert (not b_next!107985))

(assert (not b!3930231))

(assert (not b!3930491))

(assert (not b!3930175))

(assert (not b!3930173))

(assert (not b!3930627))

(assert (not b_lambda!114959))

(assert (not b!3930449))

(assert (not b!3930164))

(assert (not b!3930199))

(assert b_and!299913)

(assert (not b!3930535))

(assert (not bm!284800))

(assert (not b!3930160))

(assert (not b!3930523))

(assert (not b!3930592))

(assert (not b!3930530))

(assert (not d!1164805))

(assert (not b!3930296))

(assert (not d!1165027))

(assert (not b!3930402))

(assert (not b!3930370))

(assert (not b!3930326))

(assert tp_is_empty!19811)

(assert (not b!3930278))

(assert (not b!3930284))

(assert (not b!3930203))

(assert (not b!3930229))

(assert (not d!1164987))

(assert (not d!1164943))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!107979))

(assert (not b_next!107957))

(assert b_and!299917)

(assert (not b_next!107953))

(assert b_and!299903)

(assert b_and!299911)

(assert b_and!299925)

(assert b_and!299933)

(assert b_and!299935)

(assert b_and!299929)

(assert b_and!299927)

(assert (not b_next!107983))

(assert (not b_next!107929))

(assert b_and!299913)

(assert (not b_next!107939))

(assert (not b_next!107963))

(assert b_and!299905)

(assert (not b_next!107937))

(assert b_and!299931)

(assert (not b_next!107977))

(assert (not b_next!107959))

(assert b_and!299921)

(assert b_and!299909)

(assert b_and!299923)

(assert (not b_next!107955))

(assert b_and!299937)

(assert b_and!299915)

(assert b_and!299907)

(assert (not b_next!107931))

(assert (not b_next!107935))

(assert (not b_next!107987))

(assert (not b_next!107933))

(assert b_and!299919)

(assert (not b_next!107961))

(assert (not b_next!107985))

(assert (not b_next!107981))

(check-sat)

(pop 1)

