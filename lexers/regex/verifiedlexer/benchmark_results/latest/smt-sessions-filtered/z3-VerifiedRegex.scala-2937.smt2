; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!172550 () Bool)

(assert start!172550)

(declare-fun b!1750103 () Bool)

(declare-fun b_free!48259 () Bool)

(declare-fun b_next!48963 () Bool)

(assert (=> b!1750103 (= b_free!48259 (not b_next!48963))))

(declare-fun tp!497874 () Bool)

(declare-fun b_and!130807 () Bool)

(assert (=> b!1750103 (= tp!497874 b_and!130807)))

(declare-fun b_free!48261 () Bool)

(declare-fun b_next!48965 () Bool)

(assert (=> b!1750103 (= b_free!48261 (not b_next!48965))))

(declare-fun tp!497867 () Bool)

(declare-fun b_and!130809 () Bool)

(assert (=> b!1750103 (= tp!497867 b_and!130809)))

(declare-fun b!1750115 () Bool)

(declare-fun b_free!48263 () Bool)

(declare-fun b_next!48967 () Bool)

(assert (=> b!1750115 (= b_free!48263 (not b_next!48967))))

(declare-fun tp!497869 () Bool)

(declare-fun b_and!130811 () Bool)

(assert (=> b!1750115 (= tp!497869 b_and!130811)))

(declare-fun b_free!48265 () Bool)

(declare-fun b_next!48969 () Bool)

(assert (=> b!1750115 (= b_free!48265 (not b_next!48969))))

(declare-fun tp!497868 () Bool)

(declare-fun b_and!130813 () Bool)

(assert (=> b!1750115 (= tp!497868 b_and!130813)))

(declare-fun b!1750097 () Bool)

(declare-fun b_free!48267 () Bool)

(declare-fun b_next!48971 () Bool)

(assert (=> b!1750097 (= b_free!48267 (not b_next!48971))))

(declare-fun tp!497865 () Bool)

(declare-fun b_and!130815 () Bool)

(assert (=> b!1750097 (= tp!497865 b_and!130815)))

(declare-fun b_free!48269 () Bool)

(declare-fun b_next!48973 () Bool)

(assert (=> b!1750097 (= b_free!48269 (not b_next!48973))))

(declare-fun tp!497866 () Bool)

(declare-fun b_and!130817 () Bool)

(assert (=> b!1750097 (= tp!497866 b_and!130817)))

(declare-fun b!1750140 () Bool)

(declare-fun e!1120171 () Bool)

(assert (=> b!1750140 (= e!1120171 true)))

(declare-fun b!1750139 () Bool)

(declare-fun e!1120170 () Bool)

(assert (=> b!1750139 (= e!1120170 e!1120171)))

(declare-fun b!1750138 () Bool)

(declare-fun e!1120169 () Bool)

(assert (=> b!1750138 (= e!1120169 e!1120170)))

(declare-fun b!1750109 () Bool)

(assert (=> b!1750109 e!1120169))

(assert (= b!1750139 b!1750140))

(assert (= b!1750138 b!1750139))

(assert (= b!1750109 b!1750138))

(declare-fun order!12097 () Int)

(declare-datatypes ((C!9700 0))(
  ( (C!9701 (val!5446 Int)) )
))
(declare-datatypes ((List!19318 0))(
  ( (Nil!19248) (Cons!19248 (h!24649 C!9700) (t!162841 List!19318)) )
))
(declare-datatypes ((Regex!4763 0))(
  ( (ElementMatch!4763 (c!285370 C!9700)) (Concat!8288 (regOne!10038 Regex!4763) (regTwo!10038 Regex!4763)) (EmptyExpr!4763) (Star!4763 (reg!5092 Regex!4763)) (EmptyLang!4763) (Union!4763 (regOne!10039 Regex!4763) (regTwo!10039 Regex!4763)) )
))
(declare-datatypes ((String!21956 0))(
  ( (String!21957 (value!107544 String)) )
))
(declare-datatypes ((List!19319 0))(
  ( (Nil!19249) (Cons!19249 (h!24650 (_ BitVec 16)) (t!162842 List!19319)) )
))
(declare-datatypes ((TokenValue!3525 0))(
  ( (FloatLiteralValue!7050 (text!25120 List!19319)) (TokenValueExt!3524 (__x!12352 Int)) (Broken!17625 (value!107545 List!19319)) (Object!3594) (End!3525) (Def!3525) (Underscore!3525) (Match!3525) (Else!3525) (Error!3525) (Case!3525) (If!3525) (Extends!3525) (Abstract!3525) (Class!3525) (Val!3525) (DelimiterValue!7050 (del!3585 List!19319)) (KeywordValue!3531 (value!107546 List!19319)) (CommentValue!7050 (value!107547 List!19319)) (WhitespaceValue!7050 (value!107548 List!19319)) (IndentationValue!3525 (value!107549 List!19319)) (String!21958) (Int32!3525) (Broken!17626 (value!107550 List!19319)) (Boolean!3526) (Unit!33344) (OperatorValue!3528 (op!3585 List!19319)) (IdentifierValue!7050 (value!107551 List!19319)) (IdentifierValue!7051 (value!107552 List!19319)) (WhitespaceValue!7051 (value!107553 List!19319)) (True!7050) (False!7050) (Broken!17627 (value!107554 List!19319)) (Broken!17628 (value!107555 List!19319)) (True!7051) (RightBrace!3525) (RightBracket!3525) (Colon!3525) (Null!3525) (Comma!3525) (LeftBracket!3525) (False!7051) (LeftBrace!3525) (ImaginaryLiteralValue!3525 (text!25121 List!19319)) (StringLiteralValue!10575 (value!107556 List!19319)) (EOFValue!3525 (value!107557 List!19319)) (IdentValue!3525 (value!107558 List!19319)) (DelimiterValue!7051 (value!107559 List!19319)) (DedentValue!3525 (value!107560 List!19319)) (NewLineValue!3525 (value!107561 List!19319)) (IntegerValue!10575 (value!107562 (_ BitVec 32)) (text!25122 List!19319)) (IntegerValue!10576 (value!107563 Int) (text!25123 List!19319)) (Times!3525) (Or!3525) (Equal!3525) (Minus!3525) (Broken!17629 (value!107564 List!19319)) (And!3525) (Div!3525) (LessEqual!3525) (Mod!3525) (Concat!8289) (Not!3525) (Plus!3525) (SpaceValue!3525 (value!107565 List!19319)) (IntegerValue!10577 (value!107566 Int) (text!25124 List!19319)) (StringLiteralValue!10576 (text!25125 List!19319)) (FloatLiteralValue!7051 (text!25126 List!19319)) (BytesLiteralValue!3525 (value!107567 List!19319)) (CommentValue!7051 (value!107568 List!19319)) (StringLiteralValue!10577 (value!107569 List!19319)) (ErrorTokenValue!3525 (msg!3586 List!19319)) )
))
(declare-datatypes ((IArray!12811 0))(
  ( (IArray!12812 (innerList!6463 List!19318)) )
))
(declare-datatypes ((Conc!6403 0))(
  ( (Node!6403 (left!15402 Conc!6403) (right!15732 Conc!6403) (csize!13036 Int) (cheight!6614 Int)) (Leaf!9341 (xs!9279 IArray!12811) (csize!13037 Int)) (Empty!6403) )
))
(declare-datatypes ((BalanceConc!12750 0))(
  ( (BalanceConc!12751 (c!285371 Conc!6403)) )
))
(declare-datatypes ((TokenValueInjection!6710 0))(
  ( (TokenValueInjection!6711 (toValue!4950 Int) (toChars!4809 Int)) )
))
(declare-datatypes ((Rule!6670 0))(
  ( (Rule!6671 (regex!3435 Regex!4763) (tag!3785 String!21956) (isSeparator!3435 Bool) (transformation!3435 TokenValueInjection!6710)) )
))
(declare-datatypes ((Token!6436 0))(
  ( (Token!6437 (value!107570 TokenValue!3525) (rule!5443 Rule!6670) (size!15292 Int) (originalCharacters!4249 List!19318)) )
))
(declare-datatypes ((tuple2!18882 0))(
  ( (tuple2!18883 (_1!10843 Token!6436) (_2!10843 List!19318)) )
))
(declare-fun lt!675583 () tuple2!18882)

(declare-fun order!12095 () Int)

(declare-fun lambda!69848 () Int)

(declare-fun dynLambda!9176 (Int Int) Int)

(declare-fun dynLambda!9177 (Int Int) Int)

(assert (=> b!1750140 (< (dynLambda!9176 order!12095 (toValue!4950 (transformation!3435 (rule!5443 (_1!10843 lt!675583))))) (dynLambda!9177 order!12097 lambda!69848))))

(declare-fun order!12099 () Int)

(declare-fun dynLambda!9178 (Int Int) Int)

(assert (=> b!1750140 (< (dynLambda!9178 order!12099 (toChars!4809 (transformation!3435 (rule!5443 (_1!10843 lt!675583))))) (dynLambda!9177 order!12097 lambda!69848))))

(declare-fun b!1750095 () Bool)

(declare-fun res!787192 () Bool)

(declare-fun e!1120154 () Bool)

(assert (=> b!1750095 (=> (not res!787192) (not e!1120154))))

(declare-fun lt!675597 () tuple2!18882)

(declare-fun isEmpty!12131 (List!19318) Bool)

(assert (=> b!1750095 (= res!787192 (isEmpty!12131 (_2!10843 lt!675597)))))

(declare-fun b!1750096 () Bool)

(declare-fun e!1120150 () Bool)

(declare-fun e!1120157 () Bool)

(assert (=> b!1750096 (= e!1120150 e!1120157)))

(declare-fun res!787183 () Bool)

(assert (=> b!1750096 (=> res!787183 e!1120157)))

(declare-fun lt!675559 () List!19318)

(declare-fun lt!675562 () List!19318)

(declare-fun isPrefix!1676 (List!19318 List!19318) Bool)

(assert (=> b!1750096 (= res!787183 (not (isPrefix!1676 lt!675559 lt!675562)))))

(declare-fun ++!5260 (List!19318 List!19318) List!19318)

(assert (=> b!1750096 (isPrefix!1676 lt!675559 (++!5260 lt!675559 (_2!10843 lt!675583)))))

(declare-datatypes ((Unit!33345 0))(
  ( (Unit!33346) )
))
(declare-fun lt!675580 () Unit!33345)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1186 (List!19318 List!19318) Unit!33345)

(assert (=> b!1750096 (= lt!675580 (lemmaConcatTwoListThenFirstIsPrefix!1186 lt!675559 (_2!10843 lt!675583)))))

(declare-fun lt!675558 () BalanceConc!12750)

(declare-fun list!7796 (BalanceConc!12750) List!19318)

(assert (=> b!1750096 (= lt!675559 (list!7796 lt!675558))))

(declare-fun charsOf!2084 (Token!6436) BalanceConc!12750)

(assert (=> b!1750096 (= lt!675558 (charsOf!2084 (_1!10843 lt!675583)))))

(declare-fun e!1120147 () Bool)

(assert (=> b!1750096 e!1120147))

(declare-fun res!787185 () Bool)

(assert (=> b!1750096 (=> (not res!787185) (not e!1120147))))

(declare-datatypes ((Option!3894 0))(
  ( (None!3893) (Some!3893 (v!25336 Rule!6670)) )
))
(declare-fun lt!675582 () Option!3894)

(declare-fun isDefined!3237 (Option!3894) Bool)

(assert (=> b!1750096 (= res!787185 (isDefined!3237 lt!675582))))

(declare-datatypes ((LexerInterface!3064 0))(
  ( (LexerInterfaceExt!3061 (__x!12353 Int)) (Lexer!3062) )
))
(declare-fun thiss!24550 () LexerInterface!3064)

(declare-datatypes ((List!19320 0))(
  ( (Nil!19250) (Cons!19250 (h!24651 Rule!6670) (t!162843 List!19320)) )
))
(declare-fun rules!3447 () List!19320)

(declare-fun getRuleFromTag!485 (LexerInterface!3064 List!19320 String!21956) Option!3894)

(assert (=> b!1750096 (= lt!675582 (getRuleFromTag!485 thiss!24550 rules!3447 (tag!3785 (rule!5443 (_1!10843 lt!675583)))))))

(declare-fun lt!675584 () Unit!33345)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!485 (LexerInterface!3064 List!19320 List!19318 Token!6436) Unit!33345)

(assert (=> b!1750096 (= lt!675584 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!485 thiss!24550 rules!3447 lt!675562 (_1!10843 lt!675583)))))

(declare-datatypes ((Option!3895 0))(
  ( (None!3894) (Some!3894 (v!25337 tuple2!18882)) )
))
(declare-fun lt!675595 () Option!3895)

(declare-fun get!5829 (Option!3895) tuple2!18882)

(assert (=> b!1750096 (= lt!675583 (get!5829 lt!675595))))

(declare-fun suffix!1421 () List!19318)

(declare-fun lt!675563 () List!19318)

(declare-fun lt!675587 () Unit!33345)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!588 (LexerInterface!3064 List!19320 List!19318 List!19318) Unit!33345)

(assert (=> b!1750096 (= lt!675587 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!588 thiss!24550 rules!3447 lt!675563 suffix!1421))))

(declare-fun maxPrefix!1618 (LexerInterface!3064 List!19320 List!19318) Option!3895)

(assert (=> b!1750096 (= lt!675595 (maxPrefix!1618 thiss!24550 rules!3447 lt!675562))))

(assert (=> b!1750096 (isPrefix!1676 lt!675563 lt!675562)))

(declare-fun lt!675575 () Unit!33345)

(assert (=> b!1750096 (= lt!675575 (lemmaConcatTwoListThenFirstIsPrefix!1186 lt!675563 suffix!1421))))

(assert (=> b!1750096 (= lt!675562 (++!5260 lt!675563 suffix!1421))))

(declare-fun res!787180 () Bool)

(declare-fun e!1120144 () Bool)

(assert (=> start!172550 (=> (not res!787180) (not e!1120144))))

(get-info :version)

(assert (=> start!172550 (= res!787180 ((_ is Lexer!3062) thiss!24550))))

(assert (=> start!172550 e!1120144))

(declare-fun e!1120142 () Bool)

(assert (=> start!172550 e!1120142))

(declare-fun e!1120155 () Bool)

(assert (=> start!172550 e!1120155))

(assert (=> start!172550 true))

(declare-fun token!523 () Token!6436)

(declare-fun e!1120151 () Bool)

(declare-fun inv!24969 (Token!6436) Bool)

(assert (=> start!172550 (and (inv!24969 token!523) e!1120151)))

(declare-fun e!1120162 () Bool)

(assert (=> start!172550 e!1120162))

(declare-fun e!1120148 () Bool)

(assert (=> b!1750097 (= e!1120148 (and tp!497865 tp!497866))))

(declare-fun b!1750098 () Bool)

(declare-fun e!1120137 () Bool)

(declare-fun e!1120139 () Bool)

(assert (=> b!1750098 (= e!1120137 e!1120139)))

(declare-fun res!787181 () Bool)

(assert (=> b!1750098 (=> res!787181 e!1120139)))

(declare-fun lt!675557 () TokenValue!3525)

(declare-fun lt!675596 () Int)

(assert (=> b!1750098 (= res!787181 (not (= lt!675595 (Some!3894 (tuple2!18883 (Token!6437 lt!675557 (rule!5443 (_1!10843 lt!675583)) lt!675596 lt!675559) (_2!10843 lt!675583))))))))

(declare-fun size!15293 (BalanceConc!12750) Int)

(assert (=> b!1750098 (= lt!675596 (size!15293 lt!675558))))

(declare-fun apply!5236 (TokenValueInjection!6710 BalanceConc!12750) TokenValue!3525)

(assert (=> b!1750098 (= lt!675557 (apply!5236 (transformation!3435 (rule!5443 (_1!10843 lt!675583))) lt!675558))))

(declare-fun lt!675592 () Unit!33345)

(declare-fun lemmaCharactersSize!495 (Token!6436) Unit!33345)

(assert (=> b!1750098 (= lt!675592 (lemmaCharactersSize!495 (_1!10843 lt!675583)))))

(declare-fun lt!675565 () Unit!33345)

(declare-fun lemmaEqSameImage!348 (TokenValueInjection!6710 BalanceConc!12750 BalanceConc!12750) Unit!33345)

(declare-fun seqFromList!2405 (List!19318) BalanceConc!12750)

(assert (=> b!1750098 (= lt!675565 (lemmaEqSameImage!348 (transformation!3435 (rule!5443 (_1!10843 lt!675583))) lt!675558 (seqFromList!2405 (originalCharacters!4249 (_1!10843 lt!675583)))))))

(declare-fun b!1750099 () Bool)

(declare-fun tp_is_empty!7769 () Bool)

(declare-fun tp!497873 () Bool)

(assert (=> b!1750099 (= e!1120142 (and tp_is_empty!7769 tp!497873))))

(declare-fun b!1750100 () Bool)

(declare-fun e!1120143 () Unit!33345)

(declare-fun Unit!33347 () Unit!33345)

(assert (=> b!1750100 (= e!1120143 Unit!33347)))

(declare-fun b!1750101 () Bool)

(declare-fun e!1120149 () Bool)

(assert (=> b!1750101 (= e!1120139 e!1120149)))

(declare-fun res!787178 () Bool)

(assert (=> b!1750101 (=> res!787178 e!1120149)))

(declare-fun lt!675586 () List!19318)

(declare-fun lt!675591 () Option!3895)

(assert (=> b!1750101 (= res!787178 (or (not (= lt!675586 (_2!10843 lt!675583))) (not (= lt!675591 (Some!3894 (tuple2!18883 (_1!10843 lt!675583) lt!675586))))))))

(assert (=> b!1750101 (= (_2!10843 lt!675583) lt!675586)))

(declare-fun lt!675593 () Unit!33345)

(declare-fun lemmaSamePrefixThenSameSuffix!806 (List!19318 List!19318 List!19318 List!19318 List!19318) Unit!33345)

(assert (=> b!1750101 (= lt!675593 (lemmaSamePrefixThenSameSuffix!806 lt!675559 (_2!10843 lt!675583) lt!675559 lt!675586 lt!675562))))

(declare-fun getSuffix!856 (List!19318 List!19318) List!19318)

(assert (=> b!1750101 (= lt!675586 (getSuffix!856 lt!675562 lt!675559))))

(declare-fun lt!675578 () Int)

(declare-fun lt!675567 () TokenValue!3525)

(assert (=> b!1750101 (= lt!675591 (Some!3894 (tuple2!18883 (Token!6437 lt!675567 (rule!5443 (_1!10843 lt!675583)) lt!675578 lt!675559) (_2!10843 lt!675583))))))

(declare-fun maxPrefixOneRule!990 (LexerInterface!3064 Rule!6670 List!19318) Option!3895)

(assert (=> b!1750101 (= lt!675591 (maxPrefixOneRule!990 thiss!24550 (rule!5443 (_1!10843 lt!675583)) lt!675562))))

(declare-fun size!15294 (List!19318) Int)

(assert (=> b!1750101 (= lt!675578 (size!15294 lt!675559))))

(assert (=> b!1750101 (= lt!675567 (apply!5236 (transformation!3435 (rule!5443 (_1!10843 lt!675583))) (seqFromList!2405 lt!675559)))))

(declare-fun lt!675561 () Unit!33345)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!379 (LexerInterface!3064 List!19320 List!19318 List!19318 List!19318 Rule!6670) Unit!33345)

(assert (=> b!1750101 (= lt!675561 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!379 thiss!24550 rules!3447 lt!675559 lt!675562 (_2!10843 lt!675583) (rule!5443 (_1!10843 lt!675583))))))

(declare-fun e!1120152 () Bool)

(declare-fun tp!497875 () Bool)

(declare-fun b!1750102 () Bool)

(declare-fun inv!21 (TokenValue!3525) Bool)

(assert (=> b!1750102 (= e!1120151 (and (inv!21 (value!107570 token!523)) e!1120152 tp!497875))))

(declare-fun e!1120136 () Bool)

(assert (=> b!1750103 (= e!1120136 (and tp!497874 tp!497867))))

(declare-fun b!1750104 () Bool)

(declare-fun res!787179 () Bool)

(assert (=> b!1750104 (=> (not res!787179) (not e!1120154))))

(declare-fun rule!422 () Rule!6670)

(assert (=> b!1750104 (= res!787179 (= (rule!5443 token!523) rule!422))))

(declare-fun b!1750105 () Bool)

(declare-fun res!787189 () Bool)

(assert (=> b!1750105 (=> (not res!787189) (not e!1120144))))

(declare-fun rulesInvariant!2733 (LexerInterface!3064 List!19320) Bool)

(assert (=> b!1750105 (= res!787189 (rulesInvariant!2733 thiss!24550 rules!3447))))

(declare-fun b!1750106 () Bool)

(declare-fun res!787191 () Bool)

(assert (=> b!1750106 (=> res!787191 e!1120157)))

(declare-fun matchR!2237 (Regex!4763 List!19318) Bool)

(assert (=> b!1750106 (= res!787191 (not (matchR!2237 (regex!3435 (rule!5443 (_1!10843 lt!675583))) lt!675559)))))

(declare-fun b!1750107 () Bool)

(declare-fun res!787173 () Bool)

(assert (=> b!1750107 (=> (not res!787173) (not e!1120144))))

(declare-fun contains!3461 (List!19320 Rule!6670) Bool)

(assert (=> b!1750107 (= res!787173 (contains!3461 rules!3447 rule!422))))

(declare-fun b!1750108 () Bool)

(declare-fun e!1120159 () Bool)

(assert (=> b!1750108 (= e!1120159 e!1120154)))

(declare-fun res!787182 () Bool)

(assert (=> b!1750108 (=> (not res!787182) (not e!1120154))))

(assert (=> b!1750108 (= res!787182 (= (_1!10843 lt!675597) token!523))))

(declare-fun lt!675556 () Option!3895)

(assert (=> b!1750108 (= lt!675597 (get!5829 lt!675556))))

(declare-fun e!1120140 () Bool)

(assert (=> b!1750109 (= e!1120157 e!1120140)))

(declare-fun res!787194 () Bool)

(assert (=> b!1750109 (=> res!787194 e!1120140)))

(declare-fun Forall!804 (Int) Bool)

(assert (=> b!1750109 (= res!787194 (not (Forall!804 lambda!69848)))))

(declare-fun lt!675589 () Unit!33345)

(declare-fun lemmaInv!636 (TokenValueInjection!6710) Unit!33345)

(assert (=> b!1750109 (= lt!675589 (lemmaInv!636 (transformation!3435 (rule!5443 (_1!10843 lt!675583)))))))

(declare-fun b!1750110 () Bool)

(declare-fun e!1120146 () Bool)

(declare-fun lt!675568 () Rule!6670)

(assert (=> b!1750110 (= e!1120146 (= (rule!5443 (_1!10843 lt!675583)) lt!675568))))

(declare-fun b!1750111 () Bool)

(declare-fun e!1120145 () Bool)

(assert (=> b!1750111 (= e!1120145 true)))

(assert (=> b!1750111 (= lt!675559 lt!675563)))

(declare-fun lt!675572 () Unit!33345)

(declare-fun lemmaIsPrefixSameLengthThenSameList!235 (List!19318 List!19318 List!19318) Unit!33345)

(assert (=> b!1750111 (= lt!675572 (lemmaIsPrefixSameLengthThenSameList!235 lt!675559 lt!675563 lt!675562))))

(declare-fun b!1750112 () Bool)

(declare-fun e!1120138 () Bool)

(assert (=> b!1750112 (= e!1120138 e!1120145)))

(declare-fun res!787174 () Bool)

(assert (=> b!1750112 (=> res!787174 e!1120145)))

(declare-fun lt!675571 () Int)

(assert (=> b!1750112 (= res!787174 (not (= lt!675596 lt!675571)))))

(declare-fun lt!675594 () Unit!33345)

(assert (=> b!1750112 (= lt!675594 e!1120143)))

(declare-fun c!285369 () Bool)

(assert (=> b!1750112 (= c!285369 (< lt!675596 lt!675571))))

(declare-fun b!1750113 () Bool)

(declare-fun e!1120153 () Unit!33345)

(declare-fun Unit!33348 () Unit!33345)

(assert (=> b!1750113 (= e!1120153 Unit!33348)))

(declare-fun b!1750114 () Bool)

(declare-fun e!1120141 () Bool)

(declare-fun e!1120161 () Bool)

(declare-fun tp!497870 () Bool)

(declare-fun inv!24964 (String!21956) Bool)

(declare-fun inv!24970 (TokenValueInjection!6710) Bool)

(assert (=> b!1750114 (= e!1120161 (and tp!497870 (inv!24964 (tag!3785 (h!24651 rules!3447))) (inv!24970 (transformation!3435 (h!24651 rules!3447))) e!1120141))))

(assert (=> b!1750115 (= e!1120141 (and tp!497869 tp!497868))))

(declare-fun b!1750116 () Bool)

(declare-fun res!787190 () Bool)

(assert (=> b!1750116 (=> (not res!787190) (not e!1120144))))

(declare-fun isEmpty!12132 (List!19320) Bool)

(assert (=> b!1750116 (= res!787190 (not (isEmpty!12132 rules!3447)))))

(declare-fun b!1750117 () Bool)

(assert (=> b!1750117 (= e!1120140 e!1120137)))

(declare-fun res!787188 () Bool)

(assert (=> b!1750117 (=> res!787188 e!1120137)))

(declare-fun dynLambda!9179 (Int TokenValue!3525) BalanceConc!12750)

(declare-fun dynLambda!9180 (Int BalanceConc!12750) TokenValue!3525)

(assert (=> b!1750117 (= res!787188 (not (= (list!7796 (dynLambda!9179 (toChars!4809 (transformation!3435 (rule!5443 (_1!10843 lt!675583)))) (dynLambda!9180 (toValue!4950 (transformation!3435 (rule!5443 (_1!10843 lt!675583)))) lt!675558))) lt!675559)))))

(declare-fun lt!675579 () Unit!33345)

(declare-fun lemmaSemiInverse!575 (TokenValueInjection!6710 BalanceConc!12750) Unit!33345)

(assert (=> b!1750117 (= lt!675579 (lemmaSemiInverse!575 (transformation!3435 (rule!5443 (_1!10843 lt!675583))) lt!675558))))

(declare-fun b!1750118 () Bool)

(declare-fun tp!497876 () Bool)

(assert (=> b!1750118 (= e!1120152 (and tp!497876 (inv!24964 (tag!3785 (rule!5443 token!523))) (inv!24970 (transformation!3435 (rule!5443 token!523))) e!1120148))))

(declare-fun b!1750119 () Bool)

(declare-fun res!787184 () Bool)

(declare-fun e!1120160 () Bool)

(assert (=> b!1750119 (=> res!787184 e!1120160)))

(assert (=> b!1750119 (= res!787184 (isEmpty!12131 suffix!1421))))

(declare-fun b!1750120 () Bool)

(assert (=> b!1750120 (= e!1120144 e!1120159)))

(declare-fun res!787187 () Bool)

(assert (=> b!1750120 (=> (not res!787187) (not e!1120159))))

(declare-fun isDefined!3238 (Option!3895) Bool)

(assert (=> b!1750120 (= res!787187 (isDefined!3238 lt!675556))))

(assert (=> b!1750120 (= lt!675556 (maxPrefix!1618 thiss!24550 rules!3447 lt!675563))))

(declare-fun lt!675574 () BalanceConc!12750)

(assert (=> b!1750120 (= lt!675563 (list!7796 lt!675574))))

(assert (=> b!1750120 (= lt!675574 (charsOf!2084 token!523))))

(declare-fun b!1750121 () Bool)

(assert (=> b!1750121 (= e!1120149 e!1120138)))

(declare-fun res!787176 () Bool)

(assert (=> b!1750121 (=> res!787176 e!1120138)))

(declare-fun lt!675560 () Bool)

(assert (=> b!1750121 (= res!787176 lt!675560)))

(declare-fun lt!675590 () Unit!33345)

(assert (=> b!1750121 (= lt!675590 e!1120153)))

(declare-fun c!285368 () Bool)

(assert (=> b!1750121 (= c!285368 lt!675560)))

(assert (=> b!1750121 (= lt!675560 (> lt!675596 lt!675571))))

(assert (=> b!1750121 (= lt!675571 (size!15293 lt!675574))))

(declare-fun lt!675573 () Regex!4763)

(assert (=> b!1750121 (matchR!2237 lt!675573 lt!675563)))

(declare-fun lt!675588 () Unit!33345)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!166 (LexerInterface!3064 List!19320 List!19318 Token!6436 Rule!6670 List!19318) Unit!33345)

(assert (=> b!1750121 (= lt!675588 (lemmaMaxPrefixThenMatchesRulesRegex!166 thiss!24550 rules!3447 lt!675563 token!523 rule!422 Nil!19248))))

(declare-fun b!1750122 () Bool)

(declare-fun res!787177 () Bool)

(assert (=> b!1750122 (=> res!787177 e!1120137)))

(assert (=> b!1750122 (= res!787177 (not (= lt!675558 (dynLambda!9179 (toChars!4809 (transformation!3435 (rule!5443 (_1!10843 lt!675583)))) (value!107570 (_1!10843 lt!675583))))))))

(declare-fun b!1750123 () Bool)

(assert (=> b!1750123 (= e!1120154 (not e!1120160))))

(declare-fun res!787175 () Bool)

(assert (=> b!1750123 (=> res!787175 e!1120160)))

(assert (=> b!1750123 (= res!787175 (not (matchR!2237 (regex!3435 rule!422) lt!675563)))))

(declare-fun ruleValid!934 (LexerInterface!3064 Rule!6670) Bool)

(assert (=> b!1750123 (ruleValid!934 thiss!24550 rule!422)))

(declare-fun lt!675564 () Unit!33345)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!458 (LexerInterface!3064 Rule!6670 List!19320) Unit!33345)

(assert (=> b!1750123 (= lt!675564 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!458 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1750124 () Bool)

(declare-fun Unit!33349 () Unit!33345)

(assert (=> b!1750124 (= e!1120153 Unit!33349)))

(declare-fun lt!675585 () Unit!33345)

(assert (=> b!1750124 (= lt!675585 (lemmaMaxPrefixThenMatchesRulesRegex!166 thiss!24550 rules!3447 lt!675562 (_1!10843 lt!675583) (rule!5443 (_1!10843 lt!675583)) (_2!10843 lt!675583)))))

(assert (=> b!1750124 (matchR!2237 lt!675573 lt!675559)))

(declare-fun lt!675570 () List!19318)

(assert (=> b!1750124 (= lt!675570 (getSuffix!856 lt!675562 lt!675563))))

(declare-fun lt!675576 () Unit!33345)

(assert (=> b!1750124 (= lt!675576 (lemmaSamePrefixThenSameSuffix!806 lt!675563 suffix!1421 lt!675563 lt!675570 lt!675562))))

(assert (=> b!1750124 (= suffix!1421 lt!675570)))

(declare-fun lt!675581 () Unit!33345)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!251 (List!19318 List!19318) Unit!33345)

(assert (=> b!1750124 (= lt!675581 (lemmaAddHeadSuffixToPrefixStillPrefix!251 lt!675563 lt!675562))))

(declare-fun head!4032 (List!19318) C!9700)

(assert (=> b!1750124 (isPrefix!1676 (++!5260 lt!675563 (Cons!19248 (head!4032 lt!675570) Nil!19248)) lt!675562)))

(declare-fun lt!675566 () Unit!33345)

(declare-fun lt!675569 () List!19318)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!127 (List!19318 List!19318 List!19318) Unit!33345)

(assert (=> b!1750124 (= lt!675566 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!127 lt!675559 lt!675569 lt!675562))))

(assert (=> b!1750124 (isPrefix!1676 lt!675569 lt!675559)))

(declare-fun lt!675577 () Unit!33345)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!120 (Regex!4763 List!19318 List!19318) Unit!33345)

(assert (=> b!1750124 (= lt!675577 (lemmaNotPrefixMatchThenCannotMatchLonger!120 lt!675573 lt!675569 lt!675559))))

(assert (=> b!1750124 false))

(declare-fun b!1750125 () Bool)

(declare-fun tp!497872 () Bool)

(assert (=> b!1750125 (= e!1120162 (and e!1120161 tp!497872))))

(declare-fun b!1750126 () Bool)

(declare-fun Unit!33350 () Unit!33345)

(assert (=> b!1750126 (= e!1120143 Unit!33350)))

(declare-fun lt!675598 () Unit!33345)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!206 (LexerInterface!3064 List!19320 Rule!6670 List!19318 List!19318 List!19318 Rule!6670) Unit!33345)

(assert (=> b!1750126 (= lt!675598 (lemmaMaxPrefixOutputsMaxPrefix!206 thiss!24550 rules!3447 (rule!5443 (_1!10843 lt!675583)) lt!675559 lt!675562 lt!675563 rule!422))))

(assert (=> b!1750126 false))

(declare-fun b!1750127 () Bool)

(assert (=> b!1750127 (= e!1120160 e!1120150)))

(declare-fun res!787193 () Bool)

(assert (=> b!1750127 (=> res!787193 e!1120150)))

(declare-fun prefixMatch!648 (Regex!4763 List!19318) Bool)

(assert (=> b!1750127 (= res!787193 (prefixMatch!648 lt!675573 lt!675569))))

(assert (=> b!1750127 (= lt!675569 (++!5260 lt!675563 (Cons!19248 (head!4032 suffix!1421) Nil!19248)))))

(declare-fun rulesRegex!793 (LexerInterface!3064 List!19320) Regex!4763)

(assert (=> b!1750127 (= lt!675573 (rulesRegex!793 thiss!24550 rules!3447))))

(declare-fun b!1750128 () Bool)

(declare-fun tp!497871 () Bool)

(assert (=> b!1750128 (= e!1120155 (and tp!497871 (inv!24964 (tag!3785 rule!422)) (inv!24970 (transformation!3435 rule!422)) e!1120136))))

(declare-fun b!1750129 () Bool)

(assert (=> b!1750129 (= e!1120147 e!1120146)))

(declare-fun res!787186 () Bool)

(assert (=> b!1750129 (=> (not res!787186) (not e!1120146))))

(assert (=> b!1750129 (= res!787186 (matchR!2237 (regex!3435 lt!675568) (list!7796 (charsOf!2084 (_1!10843 lt!675583)))))))

(declare-fun get!5830 (Option!3894) Rule!6670)

(assert (=> b!1750129 (= lt!675568 (get!5830 lt!675582))))

(assert (= (and start!172550 res!787180) b!1750116))

(assert (= (and b!1750116 res!787190) b!1750105))

(assert (= (and b!1750105 res!787189) b!1750107))

(assert (= (and b!1750107 res!787173) b!1750120))

(assert (= (and b!1750120 res!787187) b!1750108))

(assert (= (and b!1750108 res!787182) b!1750095))

(assert (= (and b!1750095 res!787192) b!1750104))

(assert (= (and b!1750104 res!787179) b!1750123))

(assert (= (and b!1750123 (not res!787175)) b!1750119))

(assert (= (and b!1750119 (not res!787184)) b!1750127))

(assert (= (and b!1750127 (not res!787193)) b!1750096))

(assert (= (and b!1750096 res!787185) b!1750129))

(assert (= (and b!1750129 res!787186) b!1750110))

(assert (= (and b!1750096 (not res!787183)) b!1750106))

(assert (= (and b!1750106 (not res!787191)) b!1750109))

(assert (= (and b!1750109 (not res!787194)) b!1750117))

(assert (= (and b!1750117 (not res!787188)) b!1750122))

(assert (= (and b!1750122 (not res!787177)) b!1750098))

(assert (= (and b!1750098 (not res!787181)) b!1750101))

(assert (= (and b!1750101 (not res!787178)) b!1750121))

(assert (= (and b!1750121 c!285368) b!1750124))

(assert (= (and b!1750121 (not c!285368)) b!1750113))

(assert (= (and b!1750121 (not res!787176)) b!1750112))

(assert (= (and b!1750112 c!285369) b!1750126))

(assert (= (and b!1750112 (not c!285369)) b!1750100))

(assert (= (and b!1750112 (not res!787174)) b!1750111))

(assert (= (and start!172550 ((_ is Cons!19248) suffix!1421)) b!1750099))

(assert (= b!1750128 b!1750103))

(assert (= start!172550 b!1750128))

(assert (= b!1750118 b!1750097))

(assert (= b!1750102 b!1750118))

(assert (= start!172550 b!1750102))

(assert (= b!1750114 b!1750115))

(assert (= b!1750125 b!1750114))

(assert (= (and start!172550 ((_ is Cons!19250) rules!3447)) b!1750125))

(declare-fun b_lambda!56239 () Bool)

(assert (=> (not b_lambda!56239) (not b!1750117)))

(declare-fun tb!104933 () Bool)

(declare-fun t!162824 () Bool)

(assert (=> (and b!1750103 (= (toChars!4809 (transformation!3435 rule!422)) (toChars!4809 (transformation!3435 (rule!5443 (_1!10843 lt!675583))))) t!162824) tb!104933))

(declare-fun tp!497879 () Bool)

(declare-fun e!1120174 () Bool)

(declare-fun b!1750145 () Bool)

(declare-fun inv!24971 (Conc!6403) Bool)

(assert (=> b!1750145 (= e!1120174 (and (inv!24971 (c!285371 (dynLambda!9179 (toChars!4809 (transformation!3435 (rule!5443 (_1!10843 lt!675583)))) (dynLambda!9180 (toValue!4950 (transformation!3435 (rule!5443 (_1!10843 lt!675583)))) lt!675558)))) tp!497879))))

(declare-fun result!126224 () Bool)

(declare-fun inv!24972 (BalanceConc!12750) Bool)

(assert (=> tb!104933 (= result!126224 (and (inv!24972 (dynLambda!9179 (toChars!4809 (transformation!3435 (rule!5443 (_1!10843 lt!675583)))) (dynLambda!9180 (toValue!4950 (transformation!3435 (rule!5443 (_1!10843 lt!675583)))) lt!675558))) e!1120174))))

(assert (= tb!104933 b!1750145))

(declare-fun m!2163437 () Bool)

(assert (=> b!1750145 m!2163437))

(declare-fun m!2163439 () Bool)

(assert (=> tb!104933 m!2163439))

(assert (=> b!1750117 t!162824))

(declare-fun b_and!130819 () Bool)

(assert (= b_and!130809 (and (=> t!162824 result!126224) b_and!130819)))

(declare-fun tb!104935 () Bool)

(declare-fun t!162826 () Bool)

(assert (=> (and b!1750115 (= (toChars!4809 (transformation!3435 (h!24651 rules!3447))) (toChars!4809 (transformation!3435 (rule!5443 (_1!10843 lt!675583))))) t!162826) tb!104935))

(declare-fun result!126228 () Bool)

(assert (= result!126228 result!126224))

(assert (=> b!1750117 t!162826))

(declare-fun b_and!130821 () Bool)

(assert (= b_and!130813 (and (=> t!162826 result!126228) b_and!130821)))

(declare-fun t!162828 () Bool)

(declare-fun tb!104937 () Bool)

(assert (=> (and b!1750097 (= (toChars!4809 (transformation!3435 (rule!5443 token!523))) (toChars!4809 (transformation!3435 (rule!5443 (_1!10843 lt!675583))))) t!162828) tb!104937))

(declare-fun result!126230 () Bool)

(assert (= result!126230 result!126224))

(assert (=> b!1750117 t!162828))

(declare-fun b_and!130823 () Bool)

(assert (= b_and!130817 (and (=> t!162828 result!126230) b_and!130823)))

(declare-fun b_lambda!56241 () Bool)

(assert (=> (not b_lambda!56241) (not b!1750117)))

(declare-fun tb!104939 () Bool)

(declare-fun t!162830 () Bool)

(assert (=> (and b!1750103 (= (toValue!4950 (transformation!3435 rule!422)) (toValue!4950 (transformation!3435 (rule!5443 (_1!10843 lt!675583))))) t!162830) tb!104939))

(declare-fun result!126232 () Bool)

(assert (=> tb!104939 (= result!126232 (inv!21 (dynLambda!9180 (toValue!4950 (transformation!3435 (rule!5443 (_1!10843 lt!675583)))) lt!675558)))))

(declare-fun m!2163441 () Bool)

(assert (=> tb!104939 m!2163441))

(assert (=> b!1750117 t!162830))

(declare-fun b_and!130825 () Bool)

(assert (= b_and!130807 (and (=> t!162830 result!126232) b_and!130825)))

(declare-fun tb!104941 () Bool)

(declare-fun t!162832 () Bool)

(assert (=> (and b!1750115 (= (toValue!4950 (transformation!3435 (h!24651 rules!3447))) (toValue!4950 (transformation!3435 (rule!5443 (_1!10843 lt!675583))))) t!162832) tb!104941))

(declare-fun result!126236 () Bool)

(assert (= result!126236 result!126232))

(assert (=> b!1750117 t!162832))

(declare-fun b_and!130827 () Bool)

(assert (= b_and!130811 (and (=> t!162832 result!126236) b_and!130827)))

(declare-fun t!162834 () Bool)

(declare-fun tb!104943 () Bool)

(assert (=> (and b!1750097 (= (toValue!4950 (transformation!3435 (rule!5443 token!523))) (toValue!4950 (transformation!3435 (rule!5443 (_1!10843 lt!675583))))) t!162834) tb!104943))

(declare-fun result!126238 () Bool)

(assert (= result!126238 result!126232))

(assert (=> b!1750117 t!162834))

(declare-fun b_and!130829 () Bool)

(assert (= b_and!130815 (and (=> t!162834 result!126238) b_and!130829)))

(declare-fun b_lambda!56243 () Bool)

(assert (=> (not b_lambda!56243) (not b!1750122)))

(declare-fun t!162836 () Bool)

(declare-fun tb!104945 () Bool)

(assert (=> (and b!1750103 (= (toChars!4809 (transformation!3435 rule!422)) (toChars!4809 (transformation!3435 (rule!5443 (_1!10843 lt!675583))))) t!162836) tb!104945))

(declare-fun b!1750148 () Bool)

(declare-fun e!1120178 () Bool)

(declare-fun tp!497880 () Bool)

(assert (=> b!1750148 (= e!1120178 (and (inv!24971 (c!285371 (dynLambda!9179 (toChars!4809 (transformation!3435 (rule!5443 (_1!10843 lt!675583)))) (value!107570 (_1!10843 lt!675583))))) tp!497880))))

(declare-fun result!126240 () Bool)

(assert (=> tb!104945 (= result!126240 (and (inv!24972 (dynLambda!9179 (toChars!4809 (transformation!3435 (rule!5443 (_1!10843 lt!675583)))) (value!107570 (_1!10843 lt!675583)))) e!1120178))))

(assert (= tb!104945 b!1750148))

(declare-fun m!2163443 () Bool)

(assert (=> b!1750148 m!2163443))

(declare-fun m!2163445 () Bool)

(assert (=> tb!104945 m!2163445))

(assert (=> b!1750122 t!162836))

(declare-fun b_and!130831 () Bool)

(assert (= b_and!130819 (and (=> t!162836 result!126240) b_and!130831)))

(declare-fun t!162838 () Bool)

(declare-fun tb!104947 () Bool)

(assert (=> (and b!1750115 (= (toChars!4809 (transformation!3435 (h!24651 rules!3447))) (toChars!4809 (transformation!3435 (rule!5443 (_1!10843 lt!675583))))) t!162838) tb!104947))

(declare-fun result!126242 () Bool)

(assert (= result!126242 result!126240))

(assert (=> b!1750122 t!162838))

(declare-fun b_and!130833 () Bool)

(assert (= b_and!130821 (and (=> t!162838 result!126242) b_and!130833)))

(declare-fun t!162840 () Bool)

(declare-fun tb!104949 () Bool)

(assert (=> (and b!1750097 (= (toChars!4809 (transformation!3435 (rule!5443 token!523))) (toChars!4809 (transformation!3435 (rule!5443 (_1!10843 lt!675583))))) t!162840) tb!104949))

(declare-fun result!126244 () Bool)

(assert (= result!126244 result!126240))

(assert (=> b!1750122 t!162840))

(declare-fun b_and!130835 () Bool)

(assert (= b_and!130823 (and (=> t!162840 result!126244) b_and!130835)))

(declare-fun m!2163447 () Bool)

(assert (=> b!1750128 m!2163447))

(declare-fun m!2163449 () Bool)

(assert (=> b!1750128 m!2163449))

(declare-fun m!2163451 () Bool)

(assert (=> b!1750121 m!2163451))

(declare-fun m!2163453 () Bool)

(assert (=> b!1750121 m!2163453))

(declare-fun m!2163455 () Bool)

(assert (=> b!1750121 m!2163455))

(declare-fun m!2163457 () Bool)

(assert (=> b!1750116 m!2163457))

(declare-fun m!2163459 () Bool)

(assert (=> b!1750118 m!2163459))

(declare-fun m!2163461 () Bool)

(assert (=> b!1750118 m!2163461))

(declare-fun m!2163463 () Bool)

(assert (=> b!1750108 m!2163463))

(declare-fun m!2163465 () Bool)

(assert (=> b!1750129 m!2163465))

(assert (=> b!1750129 m!2163465))

(declare-fun m!2163467 () Bool)

(assert (=> b!1750129 m!2163467))

(assert (=> b!1750129 m!2163467))

(declare-fun m!2163469 () Bool)

(assert (=> b!1750129 m!2163469))

(declare-fun m!2163471 () Bool)

(assert (=> b!1750129 m!2163471))

(declare-fun m!2163473 () Bool)

(assert (=> b!1750126 m!2163473))

(declare-fun m!2163475 () Bool)

(assert (=> b!1750122 m!2163475))

(declare-fun m!2163477 () Bool)

(assert (=> b!1750127 m!2163477))

(declare-fun m!2163479 () Bool)

(assert (=> b!1750127 m!2163479))

(declare-fun m!2163481 () Bool)

(assert (=> b!1750127 m!2163481))

(declare-fun m!2163483 () Bool)

(assert (=> b!1750127 m!2163483))

(declare-fun m!2163485 () Bool)

(assert (=> b!1750107 m!2163485))

(declare-fun m!2163487 () Bool)

(assert (=> b!1750120 m!2163487))

(declare-fun m!2163489 () Bool)

(assert (=> b!1750120 m!2163489))

(declare-fun m!2163491 () Bool)

(assert (=> b!1750120 m!2163491))

(declare-fun m!2163493 () Bool)

(assert (=> b!1750120 m!2163493))

(declare-fun m!2163495 () Bool)

(assert (=> b!1750124 m!2163495))

(declare-fun m!2163497 () Bool)

(assert (=> b!1750124 m!2163497))

(declare-fun m!2163499 () Bool)

(assert (=> b!1750124 m!2163499))

(declare-fun m!2163501 () Bool)

(assert (=> b!1750124 m!2163501))

(declare-fun m!2163503 () Bool)

(assert (=> b!1750124 m!2163503))

(declare-fun m!2163505 () Bool)

(assert (=> b!1750124 m!2163505))

(declare-fun m!2163507 () Bool)

(assert (=> b!1750124 m!2163507))

(declare-fun m!2163509 () Bool)

(assert (=> b!1750124 m!2163509))

(assert (=> b!1750124 m!2163497))

(declare-fun m!2163511 () Bool)

(assert (=> b!1750124 m!2163511))

(declare-fun m!2163513 () Bool)

(assert (=> b!1750124 m!2163513))

(declare-fun m!2163515 () Bool)

(assert (=> b!1750124 m!2163515))

(declare-fun m!2163517 () Bool)

(assert (=> b!1750111 m!2163517))

(declare-fun m!2163519 () Bool)

(assert (=> b!1750117 m!2163519))

(assert (=> b!1750117 m!2163519))

(declare-fun m!2163521 () Bool)

(assert (=> b!1750117 m!2163521))

(assert (=> b!1750117 m!2163521))

(declare-fun m!2163523 () Bool)

(assert (=> b!1750117 m!2163523))

(declare-fun m!2163525 () Bool)

(assert (=> b!1750117 m!2163525))

(declare-fun m!2163527 () Bool)

(assert (=> b!1750119 m!2163527))

(declare-fun m!2163529 () Bool)

(assert (=> b!1750098 m!2163529))

(declare-fun m!2163531 () Bool)

(assert (=> b!1750098 m!2163531))

(declare-fun m!2163533 () Bool)

(assert (=> b!1750098 m!2163533))

(assert (=> b!1750098 m!2163531))

(declare-fun m!2163535 () Bool)

(assert (=> b!1750098 m!2163535))

(declare-fun m!2163537 () Bool)

(assert (=> b!1750098 m!2163537))

(declare-fun m!2163539 () Bool)

(assert (=> b!1750109 m!2163539))

(declare-fun m!2163541 () Bool)

(assert (=> b!1750109 m!2163541))

(declare-fun m!2163543 () Bool)

(assert (=> b!1750096 m!2163543))

(declare-fun m!2163545 () Bool)

(assert (=> b!1750096 m!2163545))

(declare-fun m!2163547 () Bool)

(assert (=> b!1750096 m!2163547))

(assert (=> b!1750096 m!2163465))

(declare-fun m!2163549 () Bool)

(assert (=> b!1750096 m!2163549))

(declare-fun m!2163551 () Bool)

(assert (=> b!1750096 m!2163551))

(declare-fun m!2163553 () Bool)

(assert (=> b!1750096 m!2163553))

(declare-fun m!2163555 () Bool)

(assert (=> b!1750096 m!2163555))

(declare-fun m!2163557 () Bool)

(assert (=> b!1750096 m!2163557))

(declare-fun m!2163559 () Bool)

(assert (=> b!1750096 m!2163559))

(declare-fun m!2163561 () Bool)

(assert (=> b!1750096 m!2163561))

(declare-fun m!2163563 () Bool)

(assert (=> b!1750096 m!2163563))

(declare-fun m!2163565 () Bool)

(assert (=> b!1750096 m!2163565))

(assert (=> b!1750096 m!2163545))

(declare-fun m!2163567 () Bool)

(assert (=> b!1750096 m!2163567))

(declare-fun m!2163569 () Bool)

(assert (=> b!1750096 m!2163569))

(declare-fun m!2163571 () Bool)

(assert (=> b!1750123 m!2163571))

(declare-fun m!2163573 () Bool)

(assert (=> b!1750123 m!2163573))

(declare-fun m!2163575 () Bool)

(assert (=> b!1750123 m!2163575))

(declare-fun m!2163577 () Bool)

(assert (=> b!1750101 m!2163577))

(declare-fun m!2163579 () Bool)

(assert (=> b!1750101 m!2163579))

(assert (=> b!1750101 m!2163579))

(declare-fun m!2163581 () Bool)

(assert (=> b!1750101 m!2163581))

(declare-fun m!2163583 () Bool)

(assert (=> b!1750101 m!2163583))

(declare-fun m!2163585 () Bool)

(assert (=> b!1750101 m!2163585))

(declare-fun m!2163587 () Bool)

(assert (=> b!1750101 m!2163587))

(declare-fun m!2163589 () Bool)

(assert (=> b!1750101 m!2163589))

(declare-fun m!2163591 () Bool)

(assert (=> start!172550 m!2163591))

(declare-fun m!2163593 () Bool)

(assert (=> b!1750114 m!2163593))

(declare-fun m!2163595 () Bool)

(assert (=> b!1750114 m!2163595))

(declare-fun m!2163597 () Bool)

(assert (=> b!1750102 m!2163597))

(declare-fun m!2163599 () Bool)

(assert (=> b!1750106 m!2163599))

(declare-fun m!2163601 () Bool)

(assert (=> b!1750105 m!2163601))

(declare-fun m!2163603 () Bool)

(assert (=> b!1750095 m!2163603))

(check-sat (not b!1750119) (not b_next!48969) b_and!130825 (not b!1750120) (not b!1750105) (not b_next!48963) b_and!130833 (not b_next!48973) (not b!1750124) b_and!130827 (not b!1750127) (not b_lambda!56241) tp_is_empty!7769 b_and!130829 (not b!1750108) (not b!1750109) (not b!1750125) (not b_next!48965) (not b_lambda!56239) (not b!1750114) (not b!1750116) (not b!1750121) (not tb!104939) (not b!1750096) (not tb!104933) (not b!1750106) (not tb!104945) (not b!1750098) (not start!172550) (not b!1750107) (not b!1750128) (not b!1750123) (not b!1750129) (not b_next!48967) (not b!1750101) (not b!1750118) b_and!130831 (not b!1750145) (not b!1750102) (not b!1750099) (not b!1750148) (not b!1750117) (not b_lambda!56243) (not b_next!48971) (not b!1750095) b_and!130835 (not b!1750111) (not b!1750126))
(check-sat b_and!130827 b_and!130829 (not b_next!48969) b_and!130825 (not b_next!48965) (not b_next!48963) (not b_next!48967) b_and!130831 b_and!130833 (not b_next!48973) (not b_next!48971) b_and!130835)
