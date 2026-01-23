; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!177900 () Bool)

(assert start!177900)

(declare-fun b!1785886 () Bool)

(declare-fun b_free!49635 () Bool)

(declare-fun b_next!50339 () Bool)

(assert (=> b!1785886 (= b_free!49635 (not b_next!50339))))

(declare-fun tp!505217 () Bool)

(declare-fun b_and!137413 () Bool)

(assert (=> b!1785886 (= tp!505217 b_and!137413)))

(declare-fun b_free!49637 () Bool)

(declare-fun b_next!50341 () Bool)

(assert (=> b!1785886 (= b_free!49637 (not b_next!50341))))

(declare-fun tp!505207 () Bool)

(declare-fun b_and!137415 () Bool)

(assert (=> b!1785886 (= tp!505207 b_and!137415)))

(declare-fun b!1785910 () Bool)

(declare-fun b_free!49639 () Bool)

(declare-fun b_next!50343 () Bool)

(assert (=> b!1785910 (= b_free!49639 (not b_next!50343))))

(declare-fun tp!505209 () Bool)

(declare-fun b_and!137417 () Bool)

(assert (=> b!1785910 (= tp!505209 b_and!137417)))

(declare-fun b_free!49641 () Bool)

(declare-fun b_next!50345 () Bool)

(assert (=> b!1785910 (= b_free!49641 (not b_next!50345))))

(declare-fun tp!505215 () Bool)

(declare-fun b_and!137419 () Bool)

(assert (=> b!1785910 (= tp!505215 b_and!137419)))

(declare-fun b!1785900 () Bool)

(declare-fun b_free!49643 () Bool)

(declare-fun b_next!50347 () Bool)

(assert (=> b!1785900 (= b_free!49643 (not b_next!50347))))

(declare-fun tp!505216 () Bool)

(declare-fun b_and!137421 () Bool)

(assert (=> b!1785900 (= tp!505216 b_and!137421)))

(declare-fun b_free!49645 () Bool)

(declare-fun b_next!50349 () Bool)

(assert (=> b!1785900 (= b_free!49645 (not b_next!50349))))

(declare-fun tp!505210 () Bool)

(declare-fun b_and!137423 () Bool)

(assert (=> b!1785900 (= tp!505210 b_and!137423)))

(declare-fun b!1785933 () Bool)

(declare-fun e!1143034 () Bool)

(assert (=> b!1785933 (= e!1143034 true)))

(declare-fun b!1785932 () Bool)

(declare-fun e!1143033 () Bool)

(assert (=> b!1785932 (= e!1143033 e!1143034)))

(declare-fun b!1785931 () Bool)

(declare-fun e!1143032 () Bool)

(assert (=> b!1785931 (= e!1143032 e!1143033)))

(declare-fun b!1785887 () Bool)

(assert (=> b!1785887 e!1143032))

(assert (= b!1785932 b!1785933))

(assert (= b!1785931 b!1785932))

(assert (= b!1785887 b!1785931))

(declare-datatypes ((List!19758 0))(
  ( (Nil!19688) (Cons!19688 (h!25089 (_ BitVec 16)) (t!167111 List!19758)) )
))
(declare-datatypes ((TokenValue!3620 0))(
  ( (FloatLiteralValue!7240 (text!25785 List!19758)) (TokenValueExt!3619 (__x!12542 Int)) (Broken!18100 (value!110253 List!19758)) (Object!3689) (End!3620) (Def!3620) (Underscore!3620) (Match!3620) (Else!3620) (Error!3620) (Case!3620) (If!3620) (Extends!3620) (Abstract!3620) (Class!3620) (Val!3620) (DelimiterValue!7240 (del!3680 List!19758)) (KeywordValue!3626 (value!110254 List!19758)) (CommentValue!7240 (value!110255 List!19758)) (WhitespaceValue!7240 (value!110256 List!19758)) (IndentationValue!3620 (value!110257 List!19758)) (String!22433) (Int32!3620) (Broken!18101 (value!110258 List!19758)) (Boolean!3621) (Unit!34049) (OperatorValue!3623 (op!3680 List!19758)) (IdentifierValue!7240 (value!110259 List!19758)) (IdentifierValue!7241 (value!110260 List!19758)) (WhitespaceValue!7241 (value!110261 List!19758)) (True!7240) (False!7240) (Broken!18102 (value!110262 List!19758)) (Broken!18103 (value!110263 List!19758)) (True!7241) (RightBrace!3620) (RightBracket!3620) (Colon!3620) (Null!3620) (Comma!3620) (LeftBracket!3620) (False!7241) (LeftBrace!3620) (ImaginaryLiteralValue!3620 (text!25786 List!19758)) (StringLiteralValue!10860 (value!110264 List!19758)) (EOFValue!3620 (value!110265 List!19758)) (IdentValue!3620 (value!110266 List!19758)) (DelimiterValue!7241 (value!110267 List!19758)) (DedentValue!3620 (value!110268 List!19758)) (NewLineValue!3620 (value!110269 List!19758)) (IntegerValue!10860 (value!110270 (_ BitVec 32)) (text!25787 List!19758)) (IntegerValue!10861 (value!110271 Int) (text!25788 List!19758)) (Times!3620) (Or!3620) (Equal!3620) (Minus!3620) (Broken!18104 (value!110272 List!19758)) (And!3620) (Div!3620) (LessEqual!3620) (Mod!3620) (Concat!8478) (Not!3620) (Plus!3620) (SpaceValue!3620 (value!110273 List!19758)) (IntegerValue!10862 (value!110274 Int) (text!25789 List!19758)) (StringLiteralValue!10861 (text!25790 List!19758)) (FloatLiteralValue!7241 (text!25791 List!19758)) (BytesLiteralValue!3620 (value!110275 List!19758)) (CommentValue!7241 (value!110276 List!19758)) (StringLiteralValue!10862 (value!110277 List!19758)) (ErrorTokenValue!3620 (msg!3681 List!19758)) )
))
(declare-datatypes ((C!9890 0))(
  ( (C!9891 (val!5541 Int)) )
))
(declare-datatypes ((List!19759 0))(
  ( (Nil!19689) (Cons!19689 (h!25090 C!9890) (t!167112 List!19759)) )
))
(declare-datatypes ((Regex!4858 0))(
  ( (ElementMatch!4858 (c!290420 C!9890)) (Concat!8479 (regOne!10228 Regex!4858) (regTwo!10228 Regex!4858)) (EmptyExpr!4858) (Star!4858 (reg!5187 Regex!4858)) (EmptyLang!4858) (Union!4858 (regOne!10229 Regex!4858) (regTwo!10229 Regex!4858)) )
))
(declare-datatypes ((String!22434 0))(
  ( (String!22435 (value!110278 String)) )
))
(declare-datatypes ((IArray!13105 0))(
  ( (IArray!13106 (innerList!6610 List!19759)) )
))
(declare-datatypes ((Conc!6550 0))(
  ( (Node!6550 (left!15787 Conc!6550) (right!16117 Conc!6550) (csize!13330 Int) (cheight!6761 Int)) (Leaf!9536 (xs!9426 IArray!13105) (csize!13331 Int)) (Empty!6550) )
))
(declare-datatypes ((BalanceConc!13044 0))(
  ( (BalanceConc!13045 (c!290421 Conc!6550)) )
))
(declare-datatypes ((TokenValueInjection!6900 0))(
  ( (TokenValueInjection!6901 (toValue!5057 Int) (toChars!4916 Int)) )
))
(declare-datatypes ((Rule!6860 0))(
  ( (Rule!6861 (regex!3530 Regex!4858) (tag!3932 String!22434) (isSeparator!3530 Bool) (transformation!3530 TokenValueInjection!6900)) )
))
(declare-datatypes ((Token!6626 0))(
  ( (Token!6627 (value!110279 TokenValue!3620) (rule!5618 Rule!6860) (size!15641 Int) (originalCharacters!4344 List!19759)) )
))
(declare-datatypes ((tuple2!19276 0))(
  ( (tuple2!19277 (_1!11040 Token!6626) (_2!11040 List!19759)) )
))
(declare-fun lt!695353 () tuple2!19276)

(declare-fun order!12757 () Int)

(declare-fun order!12759 () Int)

(declare-fun lambda!70777 () Int)

(declare-fun dynLambda!9710 (Int Int) Int)

(declare-fun dynLambda!9711 (Int Int) Int)

(assert (=> b!1785933 (< (dynLambda!9710 order!12757 (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353))))) (dynLambda!9711 order!12759 lambda!70777))))

(declare-fun order!12761 () Int)

(declare-fun dynLambda!9712 (Int Int) Int)

(assert (=> b!1785933 (< (dynLambda!9712 order!12761 (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353))))) (dynLambda!9711 order!12759 lambda!70777))))

(declare-fun b!1785883 () Bool)

(declare-datatypes ((Unit!34050 0))(
  ( (Unit!34051) )
))
(declare-fun e!1143007 () Unit!34050)

(declare-fun Unit!34052 () Unit!34050)

(assert (=> b!1785883 (= e!1143007 Unit!34052)))

(declare-fun b!1785885 () Bool)

(declare-fun e!1142995 () Bool)

(declare-fun e!1143014 () Bool)

(assert (=> b!1785885 (= e!1142995 e!1143014)))

(declare-fun res!805311 () Bool)

(assert (=> b!1785885 (=> res!805311 e!1143014)))

(declare-fun token!523 () Token!6626)

(assert (=> b!1785885 (= res!805311 (= (rule!5618 (_1!11040 lt!695353)) (rule!5618 token!523)))))

(declare-fun suffix!1421 () List!19759)

(assert (=> b!1785885 (= suffix!1421 (_2!11040 lt!695353))))

(declare-fun lt!695349 () Unit!34050)

(declare-fun lt!695351 () List!19759)

(declare-fun lt!695389 () List!19759)

(declare-fun lemmaSamePrefixThenSameSuffix!881 (List!19759 List!19759 List!19759 List!19759 List!19759) Unit!34050)

(assert (=> b!1785885 (= lt!695349 (lemmaSamePrefixThenSameSuffix!881 lt!695351 suffix!1421 lt!695351 (_2!11040 lt!695353) lt!695389))))

(declare-fun lt!695345 () List!19759)

(assert (=> b!1785885 (= lt!695345 lt!695351)))

(declare-fun lt!695362 () Unit!34050)

(declare-fun lemmaIsPrefixSameLengthThenSameList!266 (List!19759 List!19759 List!19759) Unit!34050)

(assert (=> b!1785885 (= lt!695362 (lemmaIsPrefixSameLengthThenSameList!266 lt!695345 lt!695351 lt!695389))))

(declare-fun e!1143013 () Bool)

(assert (=> b!1785886 (= e!1143013 (and tp!505217 tp!505207))))

(declare-fun e!1143016 () Bool)

(declare-fun e!1142996 () Bool)

(assert (=> b!1785887 (= e!1143016 e!1142996)))

(declare-fun res!805310 () Bool)

(assert (=> b!1785887 (=> res!805310 e!1142996)))

(declare-fun Forall!897 (Int) Bool)

(assert (=> b!1785887 (= res!805310 (not (Forall!897 lambda!70777)))))

(declare-fun lt!695359 () Unit!34050)

(declare-fun lemmaInv!729 (TokenValueInjection!6900) Unit!34050)

(assert (=> b!1785887 (= lt!695359 (lemmaInv!729 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))))))

(declare-fun b!1785888 () Bool)

(declare-fun e!1142993 () Bool)

(declare-fun e!1143012 () Bool)

(declare-fun tp!505214 () Bool)

(declare-fun inv!21 (TokenValue!3620) Bool)

(assert (=> b!1785888 (= e!1142993 (and (inv!21 (value!110279 token!523)) e!1143012 tp!505214))))

(declare-fun e!1143022 () Bool)

(declare-fun tp!505211 () Bool)

(declare-fun b!1785889 () Bool)

(declare-fun inv!25639 (String!22434) Bool)

(declare-fun inv!25642 (TokenValueInjection!6900) Bool)

(assert (=> b!1785889 (= e!1143012 (and tp!505211 (inv!25639 (tag!3932 (rule!5618 token!523))) (inv!25642 (transformation!3530 (rule!5618 token!523))) e!1143022))))

(declare-fun b!1785890 () Bool)

(declare-fun res!805315 () Bool)

(assert (=> b!1785890 (=> res!805315 e!1143016)))

(declare-fun matchR!2331 (Regex!4858 List!19759) Bool)

(assert (=> b!1785890 (= res!805315 (not (matchR!2331 (regex!3530 (rule!5618 (_1!11040 lt!695353))) lt!695345)))))

(declare-fun b!1785891 () Bool)

(declare-fun e!1142994 () Bool)

(assert (=> b!1785891 (= e!1142994 e!1142995)))

(declare-fun res!805318 () Bool)

(assert (=> b!1785891 (=> res!805318 e!1142995)))

(declare-fun lt!695371 () Int)

(declare-fun lt!695360 () Int)

(assert (=> b!1785891 (= res!805318 (not (= lt!695371 lt!695360)))))

(declare-fun lt!695374 () Unit!34050)

(declare-fun e!1143002 () Unit!34050)

(assert (=> b!1785891 (= lt!695374 e!1143002)))

(declare-fun c!290417 () Bool)

(assert (=> b!1785891 (= c!290417 (< lt!695371 lt!695360))))

(declare-fun b!1785892 () Bool)

(declare-fun e!1142999 () Bool)

(declare-fun e!1142997 () Bool)

(assert (=> b!1785892 (= e!1142999 e!1142997)))

(declare-fun res!805314 () Bool)

(assert (=> b!1785892 (=> res!805314 e!1142997)))

(declare-fun lt!695381 () Regex!4858)

(declare-fun lt!695379 () List!19759)

(declare-fun prefixMatch!741 (Regex!4858 List!19759) Bool)

(assert (=> b!1785892 (= res!805314 (prefixMatch!741 lt!695381 lt!695379))))

(declare-fun ++!5354 (List!19759 List!19759) List!19759)

(declare-fun head!4183 (List!19759) C!9890)

(assert (=> b!1785892 (= lt!695379 (++!5354 lt!695351 (Cons!19689 (head!4183 suffix!1421) Nil!19689)))))

(declare-datatypes ((LexerInterface!3159 0))(
  ( (LexerInterfaceExt!3156 (__x!12543 Int)) (Lexer!3157) )
))
(declare-fun thiss!24550 () LexerInterface!3159)

(declare-datatypes ((List!19760 0))(
  ( (Nil!19690) (Cons!19690 (h!25091 Rule!6860) (t!167113 List!19760)) )
))
(declare-fun rules!3447 () List!19760)

(declare-fun rulesRegex!886 (LexerInterface!3159 List!19760) Regex!4858)

(assert (=> b!1785892 (= lt!695381 (rulesRegex!886 thiss!24550 rules!3447))))

(declare-fun b!1785893 () Bool)

(declare-fun e!1143010 () Unit!34050)

(declare-fun Unit!34053 () Unit!34050)

(assert (=> b!1785893 (= e!1143010 Unit!34053)))

(declare-fun lt!695376 () Unit!34050)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!237 (LexerInterface!3159 List!19760 List!19759 Token!6626 Rule!6860 List!19759) Unit!34050)

(assert (=> b!1785893 (= lt!695376 (lemmaMaxPrefixThenMatchesRulesRegex!237 thiss!24550 rules!3447 lt!695389 (_1!11040 lt!695353) (rule!5618 (_1!11040 lt!695353)) (_2!11040 lt!695353)))))

(assert (=> b!1785893 (matchR!2331 lt!695381 lt!695345)))

(declare-fun lt!695363 () List!19759)

(declare-fun getSuffix!937 (List!19759 List!19759) List!19759)

(assert (=> b!1785893 (= lt!695363 (getSuffix!937 lt!695389 lt!695351))))

(declare-fun lt!695343 () Unit!34050)

(assert (=> b!1785893 (= lt!695343 (lemmaSamePrefixThenSameSuffix!881 lt!695351 suffix!1421 lt!695351 lt!695363 lt!695389))))

(assert (=> b!1785893 (= suffix!1421 lt!695363)))

(declare-fun lt!695390 () Unit!34050)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!306 (List!19759 List!19759) Unit!34050)

(assert (=> b!1785893 (= lt!695390 (lemmaAddHeadSuffixToPrefixStillPrefix!306 lt!695351 lt!695389))))

(declare-fun isPrefix!1770 (List!19759 List!19759) Bool)

(assert (=> b!1785893 (isPrefix!1770 (++!5354 lt!695351 (Cons!19689 (head!4183 lt!695363) Nil!19689)) lt!695389)))

(declare-fun lt!695352 () Unit!34050)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!178 (List!19759 List!19759 List!19759) Unit!34050)

(assert (=> b!1785893 (= lt!695352 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!178 lt!695345 lt!695379 lt!695389))))

(assert (=> b!1785893 (isPrefix!1770 lt!695379 lt!695345)))

(declare-fun lt!695354 () Unit!34050)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!169 (Regex!4858 List!19759 List!19759) Unit!34050)

(assert (=> b!1785893 (= lt!695354 (lemmaNotPrefixMatchThenCannotMatchLonger!169 lt!695381 lt!695379 lt!695345))))

(assert (=> b!1785893 false))

(declare-fun b!1785894 () Bool)

(declare-fun e!1143001 () Bool)

(declare-fun e!1143006 () Bool)

(assert (=> b!1785894 (= e!1143001 e!1143006)))

(declare-fun res!805324 () Bool)

(assert (=> b!1785894 (=> res!805324 e!1143006)))

(declare-datatypes ((Option!4082 0))(
  ( (None!4081) (Some!4081 (v!25578 tuple2!19276)) )
))
(declare-fun lt!695388 () Option!4082)

(declare-fun lt!695373 () List!19759)

(assert (=> b!1785894 (= res!805324 (or (not (= lt!695373 (_2!11040 lt!695353))) (not (= lt!695388 (Some!4081 (tuple2!19277 (_1!11040 lt!695353) lt!695373))))))))

(assert (=> b!1785894 (= (_2!11040 lt!695353) lt!695373)))

(declare-fun lt!695350 () Unit!34050)

(assert (=> b!1785894 (= lt!695350 (lemmaSamePrefixThenSameSuffix!881 lt!695345 (_2!11040 lt!695353) lt!695345 lt!695373 lt!695389))))

(assert (=> b!1785894 (= lt!695373 (getSuffix!937 lt!695389 lt!695345))))

(declare-fun lt!695364 () Int)

(declare-fun lt!695346 () TokenValue!3620)

(assert (=> b!1785894 (= lt!695388 (Some!4081 (tuple2!19277 (Token!6627 lt!695346 (rule!5618 (_1!11040 lt!695353)) lt!695364 lt!695345) (_2!11040 lt!695353))))))

(declare-fun maxPrefixOneRule!1082 (LexerInterface!3159 Rule!6860 List!19759) Option!4082)

(assert (=> b!1785894 (= lt!695388 (maxPrefixOneRule!1082 thiss!24550 (rule!5618 (_1!11040 lt!695353)) lt!695389))))

(declare-fun size!15642 (List!19759) Int)

(assert (=> b!1785894 (= lt!695364 (size!15642 lt!695345))))

(declare-fun apply!5330 (TokenValueInjection!6900 BalanceConc!13044) TokenValue!3620)

(declare-fun seqFromList!2499 (List!19759) BalanceConc!13044)

(assert (=> b!1785894 (= lt!695346 (apply!5330 (transformation!3530 (rule!5618 (_1!11040 lt!695353))) (seqFromList!2499 lt!695345)))))

(declare-fun lt!695387 () Unit!34050)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!460 (LexerInterface!3159 List!19760 List!19759 List!19759 List!19759 Rule!6860) Unit!34050)

(assert (=> b!1785894 (= lt!695387 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!460 thiss!24550 rules!3447 lt!695345 lt!695389 (_2!11040 lt!695353) (rule!5618 (_1!11040 lt!695353))))))

(declare-fun b!1785895 () Bool)

(declare-fun e!1143009 () Bool)

(assert (=> b!1785895 (= e!1143009 (not e!1142999))))

(declare-fun res!805319 () Bool)

(assert (=> b!1785895 (=> res!805319 e!1142999)))

(declare-fun rule!422 () Rule!6860)

(assert (=> b!1785895 (= res!805319 (not (matchR!2331 (regex!3530 rule!422) lt!695351)))))

(declare-fun ruleValid!1028 (LexerInterface!3159 Rule!6860) Bool)

(assert (=> b!1785895 (ruleValid!1028 thiss!24550 rule!422)))

(declare-fun lt!695348 () Unit!34050)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!551 (LexerInterface!3159 Rule!6860 List!19760) Unit!34050)

(assert (=> b!1785895 (= lt!695348 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!551 thiss!24550 rule!422 rules!3447))))

(declare-fun e!1142998 () Bool)

(declare-fun b!1785884 () Bool)

(declare-fun tp!505213 () Bool)

(assert (=> b!1785884 (= e!1142998 (and tp!505213 (inv!25639 (tag!3932 rule!422)) (inv!25642 (transformation!3530 rule!422)) e!1143013))))

(declare-fun res!805309 () Bool)

(declare-fun e!1143011 () Bool)

(assert (=> start!177900 (=> (not res!805309) (not e!1143011))))

(assert (=> start!177900 (= res!805309 (is-Lexer!3157 thiss!24550))))

(assert (=> start!177900 e!1143011))

(declare-fun e!1143008 () Bool)

(assert (=> start!177900 e!1143008))

(assert (=> start!177900 e!1142998))

(assert (=> start!177900 true))

(declare-fun inv!25643 (Token!6626) Bool)

(assert (=> start!177900 (and (inv!25643 token!523) e!1142993)))

(declare-fun e!1143015 () Bool)

(assert (=> start!177900 e!1143015))

(declare-fun b!1785896 () Bool)

(declare-fun res!805306 () Bool)

(assert (=> b!1785896 (=> (not res!805306) (not e!1143011))))

(declare-fun rulesInvariant!2828 (LexerInterface!3159 List!19760) Bool)

(assert (=> b!1785896 (= res!805306 (rulesInvariant!2828 thiss!24550 rules!3447))))

(declare-fun b!1785897 () Bool)

(declare-fun e!1143000 () Bool)

(assert (=> b!1785897 (= e!1143000 false)))

(declare-fun b!1785898 () Bool)

(declare-fun e!1143021 () Bool)

(assert (=> b!1785898 (= e!1143011 e!1143021)))

(declare-fun res!805321 () Bool)

(assert (=> b!1785898 (=> (not res!805321) (not e!1143021))))

(declare-fun lt!695344 () Option!4082)

(declare-fun isDefined!3425 (Option!4082) Bool)

(assert (=> b!1785898 (= res!805321 (isDefined!3425 lt!695344))))

(declare-fun maxPrefix!1713 (LexerInterface!3159 List!19760 List!19759) Option!4082)

(assert (=> b!1785898 (= lt!695344 (maxPrefix!1713 thiss!24550 rules!3447 lt!695351))))

(declare-fun lt!695355 () BalanceConc!13044)

(declare-fun list!8008 (BalanceConc!13044) List!19759)

(assert (=> b!1785898 (= lt!695351 (list!8008 lt!695355))))

(declare-fun charsOf!2179 (Token!6626) BalanceConc!13044)

(assert (=> b!1785898 (= lt!695355 (charsOf!2179 token!523))))

(declare-fun b!1785899 () Bool)

(declare-fun res!805316 () Bool)

(assert (=> b!1785899 (=> res!805316 e!1142999)))

(declare-fun isEmpty!12444 (List!19759) Bool)

(assert (=> b!1785899 (= res!805316 (isEmpty!12444 suffix!1421))))

(declare-fun e!1143019 () Bool)

(assert (=> b!1785900 (= e!1143019 (and tp!505216 tp!505210))))

(declare-fun b!1785901 () Bool)

(declare-fun Unit!34054 () Unit!34050)

(assert (=> b!1785901 (= e!1143010 Unit!34054)))

(declare-fun b!1785902 () Bool)

(declare-fun e!1143023 () Bool)

(declare-fun tp!505212 () Bool)

(assert (=> b!1785902 (= e!1143015 (and e!1143023 tp!505212))))

(declare-fun b!1785903 () Bool)

(declare-fun res!805320 () Bool)

(declare-fun e!1143018 () Bool)

(assert (=> b!1785903 (=> res!805320 e!1143018)))

(declare-fun lt!695347 () BalanceConc!13044)

(declare-fun dynLambda!9713 (Int TokenValue!3620) BalanceConc!13044)

(assert (=> b!1785903 (= res!805320 (not (= lt!695347 (dynLambda!9713 (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) (value!110279 (_1!11040 lt!695353))))))))

(declare-fun b!1785904 () Bool)

(declare-fun tp_is_empty!7959 () Bool)

(declare-fun tp!505218 () Bool)

(assert (=> b!1785904 (= e!1143008 (and tp_is_empty!7959 tp!505218))))

(declare-fun b!1785905 () Bool)

(declare-fun e!1143003 () Bool)

(declare-fun lt!695377 () Rule!6860)

(assert (=> b!1785905 (= e!1143003 (= (rule!5618 (_1!11040 lt!695353)) lt!695377))))

(declare-fun b!1785906 () Bool)

(declare-fun res!805312 () Bool)

(assert (=> b!1785906 (=> (not res!805312) (not e!1143011))))

(declare-fun isEmpty!12445 (List!19760) Bool)

(assert (=> b!1785906 (= res!805312 (not (isEmpty!12445 rules!3447)))))

(declare-fun b!1785907 () Bool)

(declare-fun Unit!34055 () Unit!34050)

(assert (=> b!1785907 (= e!1143007 Unit!34055)))

(declare-fun lt!695375 () Unit!34050)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!151 (LexerInterface!3159 List!19760 Rule!6860 List!19759 List!19759 Rule!6860) Unit!34050)

(assert (=> b!1785907 (= lt!695375 (lemmaMaxPrefNoSmallerRuleMatches!151 thiss!24550 rules!3447 (rule!5618 (_1!11040 lt!695353)) lt!695345 lt!695389 (rule!5618 token!523)))))

(declare-fun res!805317 () Bool)

(assert (=> b!1785907 (= res!805317 (not (matchR!2331 (regex!3530 (rule!5618 token!523)) lt!695345)))))

(assert (=> b!1785907 (=> (not res!805317) (not e!1143000))))

(assert (=> b!1785907 e!1143000))

(declare-fun b!1785908 () Bool)

(declare-fun res!805305 () Bool)

(assert (=> b!1785908 (=> (not res!805305) (not e!1143011))))

(declare-fun contains!3562 (List!19760 Rule!6860) Bool)

(assert (=> b!1785908 (= res!805305 (contains!3562 rules!3447 rule!422))))

(declare-fun b!1785909 () Bool)

(declare-fun Unit!34056 () Unit!34050)

(assert (=> b!1785909 (= e!1143002 Unit!34056)))

(declare-fun lt!695366 () Unit!34050)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!239 (LexerInterface!3159 List!19760 Rule!6860 List!19759 List!19759 List!19759 Rule!6860) Unit!34050)

(assert (=> b!1785909 (= lt!695366 (lemmaMaxPrefixOutputsMaxPrefix!239 thiss!24550 rules!3447 (rule!5618 (_1!11040 lt!695353)) lt!695345 lt!695389 lt!695351 rule!422))))

(assert (=> b!1785909 false))

(assert (=> b!1785910 (= e!1143022 (and tp!505209 tp!505215))))

(declare-fun b!1785911 () Bool)

(assert (=> b!1785911 (= e!1143006 e!1142994)))

(declare-fun res!805326 () Bool)

(assert (=> b!1785911 (=> res!805326 e!1142994)))

(declare-fun lt!695357 () Bool)

(assert (=> b!1785911 (= res!805326 lt!695357)))

(declare-fun lt!695358 () Unit!34050)

(assert (=> b!1785911 (= lt!695358 e!1143010)))

(declare-fun c!290419 () Bool)

(assert (=> b!1785911 (= c!290419 lt!695357)))

(assert (=> b!1785911 (= lt!695357 (> lt!695371 lt!695360))))

(declare-fun size!15643 (BalanceConc!13044) Int)

(assert (=> b!1785911 (= lt!695360 (size!15643 lt!695355))))

(assert (=> b!1785911 (matchR!2331 lt!695381 lt!695351)))

(declare-fun lt!695370 () Unit!34050)

(assert (=> b!1785911 (= lt!695370 (lemmaMaxPrefixThenMatchesRulesRegex!237 thiss!24550 rules!3447 lt!695351 token!523 rule!422 Nil!19689))))

(declare-fun b!1785912 () Bool)

(declare-fun res!805322 () Bool)

(assert (=> b!1785912 (=> (not res!805322) (not e!1143009))))

(assert (=> b!1785912 (= res!805322 (= (rule!5618 token!523) rule!422))))

(declare-fun b!1785913 () Bool)

(assert (=> b!1785913 (= e!1142997 e!1143016)))

(declare-fun res!805327 () Bool)

(assert (=> b!1785913 (=> res!805327 e!1143016)))

(assert (=> b!1785913 (= res!805327 (not (isPrefix!1770 lt!695345 lt!695389)))))

(assert (=> b!1785913 (isPrefix!1770 lt!695345 (++!5354 lt!695345 (_2!11040 lt!695353)))))

(declare-fun lt!695368 () Unit!34050)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1279 (List!19759 List!19759) Unit!34050)

(assert (=> b!1785913 (= lt!695368 (lemmaConcatTwoListThenFirstIsPrefix!1279 lt!695345 (_2!11040 lt!695353)))))

(assert (=> b!1785913 (= lt!695345 (list!8008 lt!695347))))

(assert (=> b!1785913 (= lt!695347 (charsOf!2179 (_1!11040 lt!695353)))))

(declare-fun e!1143005 () Bool)

(assert (=> b!1785913 e!1143005))

(declare-fun res!805307 () Bool)

(assert (=> b!1785913 (=> (not res!805307) (not e!1143005))))

(declare-datatypes ((Option!4083 0))(
  ( (None!4082) (Some!4082 (v!25579 Rule!6860)) )
))
(declare-fun lt!695383 () Option!4083)

(declare-fun isDefined!3426 (Option!4083) Bool)

(assert (=> b!1785913 (= res!805307 (isDefined!3426 lt!695383))))

(declare-fun getRuleFromTag!578 (LexerInterface!3159 List!19760 String!22434) Option!4083)

(assert (=> b!1785913 (= lt!695383 (getRuleFromTag!578 thiss!24550 rules!3447 (tag!3932 (rule!5618 (_1!11040 lt!695353)))))))

(declare-fun lt!695361 () Unit!34050)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!578 (LexerInterface!3159 List!19760 List!19759 Token!6626) Unit!34050)

(assert (=> b!1785913 (= lt!695361 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!578 thiss!24550 rules!3447 lt!695389 (_1!11040 lt!695353)))))

(declare-fun lt!695380 () Option!4082)

(declare-fun get!6065 (Option!4082) tuple2!19276)

(assert (=> b!1785913 (= lt!695353 (get!6065 lt!695380))))

(declare-fun lt!695372 () Unit!34050)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!681 (LexerInterface!3159 List!19760 List!19759 List!19759) Unit!34050)

(assert (=> b!1785913 (= lt!695372 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!681 thiss!24550 rules!3447 lt!695351 suffix!1421))))

(assert (=> b!1785913 (= lt!695380 (maxPrefix!1713 thiss!24550 rules!3447 lt!695389))))

(assert (=> b!1785913 (isPrefix!1770 lt!695351 lt!695389)))

(declare-fun lt!695378 () Unit!34050)

(assert (=> b!1785913 (= lt!695378 (lemmaConcatTwoListThenFirstIsPrefix!1279 lt!695351 suffix!1421))))

(assert (=> b!1785913 (= lt!695389 (++!5354 lt!695351 suffix!1421))))

(declare-fun b!1785914 () Bool)

(assert (=> b!1785914 (= e!1143021 e!1143009)))

(declare-fun res!805313 () Bool)

(assert (=> b!1785914 (=> (not res!805313) (not e!1143009))))

(declare-fun lt!695369 () tuple2!19276)

(assert (=> b!1785914 (= res!805313 (= (_1!11040 lt!695369) token!523))))

(assert (=> b!1785914 (= lt!695369 (get!6065 lt!695344))))

(declare-fun b!1785915 () Bool)

(declare-fun res!805323 () Bool)

(assert (=> b!1785915 (=> (not res!805323) (not e!1143009))))

(assert (=> b!1785915 (= res!805323 (isEmpty!12444 (_2!11040 lt!695369)))))

(declare-fun b!1785916 () Bool)

(assert (=> b!1785916 (= e!1143018 e!1143001)))

(declare-fun res!805325 () Bool)

(assert (=> b!1785916 (=> res!805325 e!1143001)))

(declare-fun lt!695367 () TokenValue!3620)

(assert (=> b!1785916 (= res!805325 (not (= lt!695380 (Some!4081 (tuple2!19277 (Token!6627 lt!695367 (rule!5618 (_1!11040 lt!695353)) lt!695371 lt!695345) (_2!11040 lt!695353))))))))

(assert (=> b!1785916 (= lt!695371 (size!15643 lt!695347))))

(assert (=> b!1785916 (= lt!695367 (apply!5330 (transformation!3530 (rule!5618 (_1!11040 lt!695353))) lt!695347))))

(declare-fun lt!695386 () Unit!34050)

(declare-fun lemmaCharactersSize!588 (Token!6626) Unit!34050)

(assert (=> b!1785916 (= lt!695386 (lemmaCharactersSize!588 (_1!11040 lt!695353)))))

(declare-fun lt!695365 () Unit!34050)

(declare-fun lemmaEqSameImage!441 (TokenValueInjection!6900 BalanceConc!13044 BalanceConc!13044) Unit!34050)

(assert (=> b!1785916 (= lt!695365 (lemmaEqSameImage!441 (transformation!3530 (rule!5618 (_1!11040 lt!695353))) lt!695347 (seqFromList!2499 (originalCharacters!4344 (_1!11040 lt!695353)))))))

(declare-fun b!1785917 () Bool)

(assert (=> b!1785917 (= e!1142996 e!1143018)))

(declare-fun res!805308 () Bool)

(assert (=> b!1785917 (=> res!805308 e!1143018)))

(declare-fun dynLambda!9714 (Int BalanceConc!13044) TokenValue!3620)

(assert (=> b!1785917 (= res!805308 (not (= (list!8008 (dynLambda!9713 (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) (dynLambda!9714 (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) lt!695347))) lt!695345)))))

(declare-fun lt!695382 () Unit!34050)

(declare-fun lemmaSemiInverse!668 (TokenValueInjection!6900 BalanceConc!13044) Unit!34050)

(assert (=> b!1785917 (= lt!695382 (lemmaSemiInverse!668 (transformation!3530 (rule!5618 (_1!11040 lt!695353))) lt!695347))))

(declare-fun b!1785918 () Bool)

(declare-fun e!1143017 () Bool)

(assert (=> b!1785918 (= e!1143014 e!1143017)))

(declare-fun res!805303 () Bool)

(assert (=> b!1785918 (=> res!805303 e!1143017)))

(declare-fun lt!695384 () Int)

(declare-fun lt!695356 () Int)

(assert (=> b!1785918 (= res!805303 (>= lt!695384 lt!695356))))

(declare-fun lt!695385 () Unit!34050)

(assert (=> b!1785918 (= lt!695385 e!1143007)))

(declare-fun c!290418 () Bool)

(assert (=> b!1785918 (= c!290418 (< lt!695356 lt!695384))))

(declare-fun getIndex!195 (List!19760 Rule!6860) Int)

(assert (=> b!1785918 (= lt!695384 (getIndex!195 rules!3447 (rule!5618 (_1!11040 lt!695353))))))

(assert (=> b!1785918 (= lt!695356 (getIndex!195 rules!3447 (rule!5618 token!523)))))

(declare-fun b!1785919 () Bool)

(assert (=> b!1785919 (= e!1143017 (isPrefix!1770 lt!695351 lt!695351))))

(declare-fun b!1785920 () Bool)

(declare-fun tp!505208 () Bool)

(assert (=> b!1785920 (= e!1143023 (and tp!505208 (inv!25639 (tag!3932 (h!25091 rules!3447))) (inv!25642 (transformation!3530 (h!25091 rules!3447))) e!1143019))))

(declare-fun b!1785921 () Bool)

(declare-fun Unit!34057 () Unit!34050)

(assert (=> b!1785921 (= e!1143002 Unit!34057)))

(declare-fun b!1785922 () Bool)

(assert (=> b!1785922 (= e!1143005 e!1143003)))

(declare-fun res!805304 () Bool)

(assert (=> b!1785922 (=> (not res!805304) (not e!1143003))))

(assert (=> b!1785922 (= res!805304 (matchR!2331 (regex!3530 lt!695377) (list!8008 (charsOf!2179 (_1!11040 lt!695353)))))))

(declare-fun get!6066 (Option!4083) Rule!6860)

(assert (=> b!1785922 (= lt!695377 (get!6066 lt!695383))))

(assert (= (and start!177900 res!805309) b!1785906))

(assert (= (and b!1785906 res!805312) b!1785896))

(assert (= (and b!1785896 res!805306) b!1785908))

(assert (= (and b!1785908 res!805305) b!1785898))

(assert (= (and b!1785898 res!805321) b!1785914))

(assert (= (and b!1785914 res!805313) b!1785915))

(assert (= (and b!1785915 res!805323) b!1785912))

(assert (= (and b!1785912 res!805322) b!1785895))

(assert (= (and b!1785895 (not res!805319)) b!1785899))

(assert (= (and b!1785899 (not res!805316)) b!1785892))

(assert (= (and b!1785892 (not res!805314)) b!1785913))

(assert (= (and b!1785913 res!805307) b!1785922))

(assert (= (and b!1785922 res!805304) b!1785905))

(assert (= (and b!1785913 (not res!805327)) b!1785890))

(assert (= (and b!1785890 (not res!805315)) b!1785887))

(assert (= (and b!1785887 (not res!805310)) b!1785917))

(assert (= (and b!1785917 (not res!805308)) b!1785903))

(assert (= (and b!1785903 (not res!805320)) b!1785916))

(assert (= (and b!1785916 (not res!805325)) b!1785894))

(assert (= (and b!1785894 (not res!805324)) b!1785911))

(assert (= (and b!1785911 c!290419) b!1785893))

(assert (= (and b!1785911 (not c!290419)) b!1785901))

(assert (= (and b!1785911 (not res!805326)) b!1785891))

(assert (= (and b!1785891 c!290417) b!1785909))

(assert (= (and b!1785891 (not c!290417)) b!1785921))

(assert (= (and b!1785891 (not res!805318)) b!1785885))

(assert (= (and b!1785885 (not res!805311)) b!1785918))

(assert (= (and b!1785918 c!290418) b!1785907))

(assert (= (and b!1785918 (not c!290418)) b!1785883))

(assert (= (and b!1785907 res!805317) b!1785897))

(assert (= (and b!1785918 (not res!805303)) b!1785919))

(assert (= (and start!177900 (is-Cons!19689 suffix!1421)) b!1785904))

(assert (= b!1785884 b!1785886))

(assert (= start!177900 b!1785884))

(assert (= b!1785889 b!1785910))

(assert (= b!1785888 b!1785889))

(assert (= start!177900 b!1785888))

(assert (= b!1785920 b!1785900))

(assert (= b!1785902 b!1785920))

(assert (= (and start!177900 (is-Cons!19690 rules!3447)) b!1785902))

(declare-fun b_lambda!58601 () Bool)

(assert (=> (not b_lambda!58601) (not b!1785903)))

(declare-fun tb!108745 () Bool)

(declare-fun t!167094 () Bool)

(assert (=> (and b!1785886 (= (toChars!4916 (transformation!3530 rule!422)) (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353))))) t!167094) tb!108745))

(declare-fun b!1785938 () Bool)

(declare-fun e!1143037 () Bool)

(declare-fun tp!505221 () Bool)

(declare-fun inv!25644 (Conc!6550) Bool)

(assert (=> b!1785938 (= e!1143037 (and (inv!25644 (c!290421 (dynLambda!9713 (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) (value!110279 (_1!11040 lt!695353))))) tp!505221))))

(declare-fun result!130840 () Bool)

(declare-fun inv!25645 (BalanceConc!13044) Bool)

(assert (=> tb!108745 (= result!130840 (and (inv!25645 (dynLambda!9713 (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) (value!110279 (_1!11040 lt!695353)))) e!1143037))))

(assert (= tb!108745 b!1785938))

(declare-fun m!2209337 () Bool)

(assert (=> b!1785938 m!2209337))

(declare-fun m!2209339 () Bool)

(assert (=> tb!108745 m!2209339))

(assert (=> b!1785903 t!167094))

(declare-fun b_and!137425 () Bool)

(assert (= b_and!137415 (and (=> t!167094 result!130840) b_and!137425)))

(declare-fun tb!108747 () Bool)

(declare-fun t!167096 () Bool)

(assert (=> (and b!1785910 (= (toChars!4916 (transformation!3530 (rule!5618 token!523))) (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353))))) t!167096) tb!108747))

(declare-fun result!130844 () Bool)

(assert (= result!130844 result!130840))

(assert (=> b!1785903 t!167096))

(declare-fun b_and!137427 () Bool)

(assert (= b_and!137419 (and (=> t!167096 result!130844) b_and!137427)))

(declare-fun t!167098 () Bool)

(declare-fun tb!108749 () Bool)

(assert (=> (and b!1785900 (= (toChars!4916 (transformation!3530 (h!25091 rules!3447))) (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353))))) t!167098) tb!108749))

(declare-fun result!130846 () Bool)

(assert (= result!130846 result!130840))

(assert (=> b!1785903 t!167098))

(declare-fun b_and!137429 () Bool)

(assert (= b_and!137423 (and (=> t!167098 result!130846) b_and!137429)))

(declare-fun b_lambda!58603 () Bool)

(assert (=> (not b_lambda!58603) (not b!1785917)))

(declare-fun t!167100 () Bool)

(declare-fun tb!108751 () Bool)

(assert (=> (and b!1785886 (= (toChars!4916 (transformation!3530 rule!422)) (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353))))) t!167100) tb!108751))

(declare-fun b!1785939 () Bool)

(declare-fun tp!505222 () Bool)

(declare-fun e!1143038 () Bool)

(assert (=> b!1785939 (= e!1143038 (and (inv!25644 (c!290421 (dynLambda!9713 (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) (dynLambda!9714 (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) lt!695347)))) tp!505222))))

(declare-fun result!130848 () Bool)

(assert (=> tb!108751 (= result!130848 (and (inv!25645 (dynLambda!9713 (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) (dynLambda!9714 (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) lt!695347))) e!1143038))))

(assert (= tb!108751 b!1785939))

(declare-fun m!2209341 () Bool)

(assert (=> b!1785939 m!2209341))

(declare-fun m!2209343 () Bool)

(assert (=> tb!108751 m!2209343))

(assert (=> b!1785917 t!167100))

(declare-fun b_and!137431 () Bool)

(assert (= b_and!137425 (and (=> t!167100 result!130848) b_and!137431)))

(declare-fun t!167102 () Bool)

(declare-fun tb!108753 () Bool)

(assert (=> (and b!1785910 (= (toChars!4916 (transformation!3530 (rule!5618 token!523))) (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353))))) t!167102) tb!108753))

(declare-fun result!130850 () Bool)

(assert (= result!130850 result!130848))

(assert (=> b!1785917 t!167102))

(declare-fun b_and!137433 () Bool)

(assert (= b_and!137427 (and (=> t!167102 result!130850) b_and!137433)))

(declare-fun t!167104 () Bool)

(declare-fun tb!108755 () Bool)

(assert (=> (and b!1785900 (= (toChars!4916 (transformation!3530 (h!25091 rules!3447))) (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353))))) t!167104) tb!108755))

(declare-fun result!130852 () Bool)

(assert (= result!130852 result!130848))

(assert (=> b!1785917 t!167104))

(declare-fun b_and!137435 () Bool)

(assert (= b_and!137429 (and (=> t!167104 result!130852) b_and!137435)))

(declare-fun b_lambda!58605 () Bool)

(assert (=> (not b_lambda!58605) (not b!1785917)))

(declare-fun t!167106 () Bool)

(declare-fun tb!108757 () Bool)

(assert (=> (and b!1785886 (= (toValue!5057 (transformation!3530 rule!422)) (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353))))) t!167106) tb!108757))

(declare-fun result!130854 () Bool)

(assert (=> tb!108757 (= result!130854 (inv!21 (dynLambda!9714 (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) lt!695347)))))

(declare-fun m!2209345 () Bool)

(assert (=> tb!108757 m!2209345))

(assert (=> b!1785917 t!167106))

(declare-fun b_and!137437 () Bool)

(assert (= b_and!137413 (and (=> t!167106 result!130854) b_and!137437)))

(declare-fun t!167108 () Bool)

(declare-fun tb!108759 () Bool)

(assert (=> (and b!1785910 (= (toValue!5057 (transformation!3530 (rule!5618 token!523))) (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353))))) t!167108) tb!108759))

(declare-fun result!130858 () Bool)

(assert (= result!130858 result!130854))

(assert (=> b!1785917 t!167108))

(declare-fun b_and!137439 () Bool)

(assert (= b_and!137417 (and (=> t!167108 result!130858) b_and!137439)))

(declare-fun tb!108761 () Bool)

(declare-fun t!167110 () Bool)

(assert (=> (and b!1785900 (= (toValue!5057 (transformation!3530 (h!25091 rules!3447))) (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353))))) t!167110) tb!108761))

(declare-fun result!130860 () Bool)

(assert (= result!130860 result!130854))

(assert (=> b!1785917 t!167110))

(declare-fun b_and!137441 () Bool)

(assert (= b_and!137421 (and (=> t!167110 result!130860) b_and!137441)))

(declare-fun m!2209347 () Bool)

(assert (=> b!1785898 m!2209347))

(declare-fun m!2209349 () Bool)

(assert (=> b!1785898 m!2209349))

(declare-fun m!2209351 () Bool)

(assert (=> b!1785898 m!2209351))

(declare-fun m!2209353 () Bool)

(assert (=> b!1785898 m!2209353))

(declare-fun m!2209355 () Bool)

(assert (=> b!1785887 m!2209355))

(declare-fun m!2209357 () Bool)

(assert (=> b!1785887 m!2209357))

(declare-fun m!2209359 () Bool)

(assert (=> b!1785909 m!2209359))

(declare-fun m!2209361 () Bool)

(assert (=> b!1785885 m!2209361))

(declare-fun m!2209363 () Bool)

(assert (=> b!1785885 m!2209363))

(declare-fun m!2209365 () Bool)

(assert (=> b!1785893 m!2209365))

(declare-fun m!2209367 () Bool)

(assert (=> b!1785893 m!2209367))

(declare-fun m!2209369 () Bool)

(assert (=> b!1785893 m!2209369))

(declare-fun m!2209371 () Bool)

(assert (=> b!1785893 m!2209371))

(declare-fun m!2209373 () Bool)

(assert (=> b!1785893 m!2209373))

(declare-fun m!2209375 () Bool)

(assert (=> b!1785893 m!2209375))

(declare-fun m!2209377 () Bool)

(assert (=> b!1785893 m!2209377))

(declare-fun m!2209379 () Bool)

(assert (=> b!1785893 m!2209379))

(declare-fun m!2209381 () Bool)

(assert (=> b!1785893 m!2209381))

(assert (=> b!1785893 m!2209365))

(declare-fun m!2209383 () Bool)

(assert (=> b!1785893 m!2209383))

(declare-fun m!2209385 () Bool)

(assert (=> b!1785893 m!2209385))

(declare-fun m!2209387 () Bool)

(assert (=> b!1785918 m!2209387))

(declare-fun m!2209389 () Bool)

(assert (=> b!1785918 m!2209389))

(declare-fun m!2209391 () Bool)

(assert (=> b!1785916 m!2209391))

(declare-fun m!2209393 () Bool)

(assert (=> b!1785916 m!2209393))

(declare-fun m!2209395 () Bool)

(assert (=> b!1785916 m!2209395))

(declare-fun m!2209397 () Bool)

(assert (=> b!1785916 m!2209397))

(assert (=> b!1785916 m!2209391))

(declare-fun m!2209399 () Bool)

(assert (=> b!1785916 m!2209399))

(declare-fun m!2209401 () Bool)

(assert (=> b!1785906 m!2209401))

(declare-fun m!2209403 () Bool)

(assert (=> b!1785890 m!2209403))

(declare-fun m!2209405 () Bool)

(assert (=> b!1785920 m!2209405))

(declare-fun m!2209407 () Bool)

(assert (=> b!1785920 m!2209407))

(declare-fun m!2209409 () Bool)

(assert (=> b!1785889 m!2209409))

(declare-fun m!2209411 () Bool)

(assert (=> b!1785889 m!2209411))

(declare-fun m!2209413 () Bool)

(assert (=> b!1785913 m!2209413))

(declare-fun m!2209415 () Bool)

(assert (=> b!1785913 m!2209415))

(declare-fun m!2209417 () Bool)

(assert (=> b!1785913 m!2209417))

(declare-fun m!2209419 () Bool)

(assert (=> b!1785913 m!2209419))

(declare-fun m!2209421 () Bool)

(assert (=> b!1785913 m!2209421))

(declare-fun m!2209423 () Bool)

(assert (=> b!1785913 m!2209423))

(declare-fun m!2209425 () Bool)

(assert (=> b!1785913 m!2209425))

(declare-fun m!2209427 () Bool)

(assert (=> b!1785913 m!2209427))

(declare-fun m!2209429 () Bool)

(assert (=> b!1785913 m!2209429))

(declare-fun m!2209431 () Bool)

(assert (=> b!1785913 m!2209431))

(declare-fun m!2209433 () Bool)

(assert (=> b!1785913 m!2209433))

(assert (=> b!1785913 m!2209413))

(declare-fun m!2209435 () Bool)

(assert (=> b!1785913 m!2209435))

(declare-fun m!2209437 () Bool)

(assert (=> b!1785913 m!2209437))

(declare-fun m!2209439 () Bool)

(assert (=> b!1785913 m!2209439))

(declare-fun m!2209441 () Bool)

(assert (=> b!1785913 m!2209441))

(declare-fun m!2209443 () Bool)

(assert (=> b!1785892 m!2209443))

(declare-fun m!2209445 () Bool)

(assert (=> b!1785892 m!2209445))

(declare-fun m!2209447 () Bool)

(assert (=> b!1785892 m!2209447))

(declare-fun m!2209449 () Bool)

(assert (=> b!1785892 m!2209449))

(declare-fun m!2209451 () Bool)

(assert (=> b!1785907 m!2209451))

(declare-fun m!2209453 () Bool)

(assert (=> b!1785907 m!2209453))

(declare-fun m!2209455 () Bool)

(assert (=> b!1785896 m!2209455))

(declare-fun m!2209457 () Bool)

(assert (=> b!1785903 m!2209457))

(declare-fun m!2209459 () Bool)

(assert (=> b!1785911 m!2209459))

(declare-fun m!2209461 () Bool)

(assert (=> b!1785911 m!2209461))

(declare-fun m!2209463 () Bool)

(assert (=> b!1785911 m!2209463))

(declare-fun m!2209465 () Bool)

(assert (=> b!1785915 m!2209465))

(declare-fun m!2209467 () Bool)

(assert (=> b!1785917 m!2209467))

(assert (=> b!1785917 m!2209467))

(declare-fun m!2209469 () Bool)

(assert (=> b!1785917 m!2209469))

(assert (=> b!1785917 m!2209469))

(declare-fun m!2209471 () Bool)

(assert (=> b!1785917 m!2209471))

(declare-fun m!2209473 () Bool)

(assert (=> b!1785917 m!2209473))

(declare-fun m!2209475 () Bool)

(assert (=> b!1785919 m!2209475))

(declare-fun m!2209477 () Bool)

(assert (=> b!1785899 m!2209477))

(declare-fun m!2209479 () Bool)

(assert (=> b!1785908 m!2209479))

(assert (=> b!1785922 m!2209429))

(assert (=> b!1785922 m!2209429))

(declare-fun m!2209481 () Bool)

(assert (=> b!1785922 m!2209481))

(assert (=> b!1785922 m!2209481))

(declare-fun m!2209483 () Bool)

(assert (=> b!1785922 m!2209483))

(declare-fun m!2209485 () Bool)

(assert (=> b!1785922 m!2209485))

(declare-fun m!2209487 () Bool)

(assert (=> b!1785894 m!2209487))

(declare-fun m!2209489 () Bool)

(assert (=> b!1785894 m!2209489))

(declare-fun m!2209491 () Bool)

(assert (=> b!1785894 m!2209491))

(declare-fun m!2209493 () Bool)

(assert (=> b!1785894 m!2209493))

(declare-fun m!2209495 () Bool)

(assert (=> b!1785894 m!2209495))

(assert (=> b!1785894 m!2209489))

(declare-fun m!2209497 () Bool)

(assert (=> b!1785894 m!2209497))

(declare-fun m!2209499 () Bool)

(assert (=> b!1785894 m!2209499))

(declare-fun m!2209501 () Bool)

(assert (=> b!1785895 m!2209501))

(declare-fun m!2209503 () Bool)

(assert (=> b!1785895 m!2209503))

(declare-fun m!2209505 () Bool)

(assert (=> b!1785895 m!2209505))

(declare-fun m!2209507 () Bool)

(assert (=> b!1785914 m!2209507))

(declare-fun m!2209509 () Bool)

(assert (=> start!177900 m!2209509))

(declare-fun m!2209511 () Bool)

(assert (=> b!1785888 m!2209511))

(declare-fun m!2209513 () Bool)

(assert (=> b!1785884 m!2209513))

(declare-fun m!2209515 () Bool)

(assert (=> b!1785884 m!2209515))

(push 1)

(assert b_and!137439)

(assert (not b!1785908))

(assert (not b!1785888))

(assert (not b!1785899))

(assert b_and!137437)

(assert (not b!1785896))

(assert (not b!1785885))

(assert (not b!1785904))

(assert (not b!1785889))

(assert (not start!177900))

(assert (not b!1785913))

(assert (not b_next!50343))

(assert (not b!1785909))

(assert b_and!137433)

(assert (not b_next!50341))

(assert b_and!137435)

(assert (not tb!108751))

(assert (not b!1785916))

(assert (not b!1785894))

(assert tp_is_empty!7959)

(assert (not b!1785918))

(assert (not b_next!50339))

(assert (not b!1785919))

(assert (not b!1785906))

(assert (not b!1785917))

(assert (not b_next!50347))

(assert (not tb!108757))

(assert b_and!137441)

(assert (not b!1785938))

(assert (not b!1785915))

(assert (not b!1785898))

(assert b_and!137431)

(assert (not b_next!50345))

(assert (not b_lambda!58603))

(assert (not b!1785939))

(assert (not b!1785890))

(assert (not b!1785914))

(assert (not b!1785884))

(assert (not b_lambda!58601))

(assert (not b!1785892))

(assert (not b!1785911))

(assert (not b!1785907))

(assert (not b!1785895))

(assert (not tb!108745))

(assert (not b!1785893))

(assert (not b!1785922))

(assert (not b!1785920))

(assert (not b!1785902))

(assert (not b_lambda!58605))

(assert (not b!1785887))

(assert (not b_next!50349))

(check-sat)

(pop 1)

(push 1)

(assert b_and!137439)

(assert (not b_next!50343))

(assert (not b_next!50339))

(assert b_and!137437)

(assert (not b_next!50349))

(assert b_and!137433)

(assert (not b_next!50341))

(assert b_and!137435)

(assert b_and!137441)

(assert (not b_next!50347))

(assert b_and!137431)

(assert (not b_next!50345))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!545076 () Bool)

(declare-fun res!805405 () Bool)

(declare-fun e!1143159 () Bool)

(assert (=> d!545076 (=> (not res!805405) (not e!1143159))))

(declare-fun rulesValid!1336 (LexerInterface!3159 List!19760) Bool)

(assert (=> d!545076 (= res!805405 (rulesValid!1336 thiss!24550 rules!3447))))

(assert (=> d!545076 (= (rulesInvariant!2828 thiss!24550 rules!3447) e!1143159)))

(declare-fun b!1786083 () Bool)

(declare-datatypes ((List!19764 0))(
  ( (Nil!19694) (Cons!19694 (h!25095 String!22434) (t!167177 List!19764)) )
))
(declare-fun noDuplicateTag!1336 (LexerInterface!3159 List!19760 List!19764) Bool)

(assert (=> b!1786083 (= e!1143159 (noDuplicateTag!1336 thiss!24550 rules!3447 Nil!19694))))

(assert (= (and d!545076 res!805405) b!1786083))

(declare-fun m!2209697 () Bool)

(assert (=> d!545076 m!2209697))

(declare-fun m!2209699 () Bool)

(assert (=> b!1786083 m!2209699))

(assert (=> b!1785896 d!545076))

(declare-fun b!1786095 () Bool)

(declare-fun e!1143165 () Int)

(assert (=> b!1786095 (= e!1143165 (- 1))))

(declare-fun b!1786094 () Bool)

(assert (=> b!1786094 (= e!1143165 (+ 1 (getIndex!195 (t!167113 rules!3447) (rule!5618 (_1!11040 lt!695353)))))))

(declare-fun b!1786092 () Bool)

(declare-fun e!1143166 () Int)

(assert (=> b!1786092 (= e!1143166 0)))

(declare-fun b!1786093 () Bool)

(assert (=> b!1786093 (= e!1143166 e!1143165)))

(declare-fun c!290439 () Bool)

(assert (=> b!1786093 (= c!290439 (and (is-Cons!19690 rules!3447) (not (= (h!25091 rules!3447) (rule!5618 (_1!11040 lt!695353))))))))

(declare-fun d!545078 () Bool)

(declare-fun lt!695537 () Int)

(assert (=> d!545078 (>= lt!695537 0)))

(assert (=> d!545078 (= lt!695537 e!1143166)))

(declare-fun c!290438 () Bool)

(assert (=> d!545078 (= c!290438 (and (is-Cons!19690 rules!3447) (= (h!25091 rules!3447) (rule!5618 (_1!11040 lt!695353)))))))

(assert (=> d!545078 (contains!3562 rules!3447 (rule!5618 (_1!11040 lt!695353)))))

(assert (=> d!545078 (= (getIndex!195 rules!3447 (rule!5618 (_1!11040 lt!695353))) lt!695537)))

(assert (= (and d!545078 c!290438) b!1786092))

(assert (= (and d!545078 (not c!290438)) b!1786093))

(assert (= (and b!1786093 c!290439) b!1786094))

(assert (= (and b!1786093 (not c!290439)) b!1786095))

(declare-fun m!2209701 () Bool)

(assert (=> b!1786094 m!2209701))

(declare-fun m!2209703 () Bool)

(assert (=> d!545078 m!2209703))

(assert (=> b!1785918 d!545078))

(declare-fun b!1786099 () Bool)

(declare-fun e!1143167 () Int)

(assert (=> b!1786099 (= e!1143167 (- 1))))

(declare-fun b!1786098 () Bool)

(assert (=> b!1786098 (= e!1143167 (+ 1 (getIndex!195 (t!167113 rules!3447) (rule!5618 token!523))))))

(declare-fun b!1786096 () Bool)

(declare-fun e!1143168 () Int)

(assert (=> b!1786096 (= e!1143168 0)))

(declare-fun b!1786097 () Bool)

(assert (=> b!1786097 (= e!1143168 e!1143167)))

(declare-fun c!290441 () Bool)

(assert (=> b!1786097 (= c!290441 (and (is-Cons!19690 rules!3447) (not (= (h!25091 rules!3447) (rule!5618 token!523)))))))

(declare-fun d!545080 () Bool)

(declare-fun lt!695538 () Int)

(assert (=> d!545080 (>= lt!695538 0)))

(assert (=> d!545080 (= lt!695538 e!1143168)))

(declare-fun c!290440 () Bool)

(assert (=> d!545080 (= c!290440 (and (is-Cons!19690 rules!3447) (= (h!25091 rules!3447) (rule!5618 token!523))))))

(assert (=> d!545080 (contains!3562 rules!3447 (rule!5618 token!523))))

(assert (=> d!545080 (= (getIndex!195 rules!3447 (rule!5618 token!523)) lt!695538)))

(assert (= (and d!545080 c!290440) b!1786096))

(assert (= (and d!545080 (not c!290440)) b!1786097))

(assert (= (and b!1786097 c!290441) b!1786098))

(assert (= (and b!1786097 (not c!290441)) b!1786099))

(declare-fun m!2209705 () Bool)

(assert (=> b!1786098 m!2209705))

(declare-fun m!2209707 () Bool)

(assert (=> d!545080 m!2209707))

(assert (=> b!1785918 d!545080))

(declare-fun b!1786106 () Bool)

(declare-fun e!1143173 () Bool)

(assert (=> b!1786106 (= e!1143173 true)))

(declare-fun d!545082 () Bool)

(assert (=> d!545082 e!1143173))

(assert (= d!545082 b!1786106))

(declare-fun order!12769 () Int)

(declare-fun lambda!70783 () Int)

(declare-fun dynLambda!9720 (Int Int) Int)

(assert (=> b!1786106 (< (dynLambda!9710 order!12757 (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353))))) (dynLambda!9720 order!12769 lambda!70783))))

(assert (=> b!1786106 (< (dynLambda!9712 order!12761 (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353))))) (dynLambda!9720 order!12769 lambda!70783))))

(assert (=> d!545082 (= (dynLambda!9714 (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) lt!695347) (dynLambda!9714 (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) (seqFromList!2499 (originalCharacters!4344 (_1!11040 lt!695353)))))))

(declare-fun lt!695541 () Unit!34050)

(declare-fun Forall2of!156 (Int BalanceConc!13044 BalanceConc!13044) Unit!34050)

(assert (=> d!545082 (= lt!695541 (Forall2of!156 lambda!70783 lt!695347 (seqFromList!2499 (originalCharacters!4344 (_1!11040 lt!695353)))))))

(assert (=> d!545082 (= (list!8008 lt!695347) (list!8008 (seqFromList!2499 (originalCharacters!4344 (_1!11040 lt!695353)))))))

(assert (=> d!545082 (= (lemmaEqSameImage!441 (transformation!3530 (rule!5618 (_1!11040 lt!695353))) lt!695347 (seqFromList!2499 (originalCharacters!4344 (_1!11040 lt!695353)))) lt!695541)))

(declare-fun b_lambda!58613 () Bool)

(assert (=> (not b_lambda!58613) (not d!545082)))

(assert (=> d!545082 t!167106))

(declare-fun b_and!137473 () Bool)

(assert (= b_and!137437 (and (=> t!167106 result!130854) b_and!137473)))

(assert (=> d!545082 t!167108))

(declare-fun b_and!137475 () Bool)

(assert (= b_and!137439 (and (=> t!167108 result!130858) b_and!137475)))

(assert (=> d!545082 t!167110))

(declare-fun b_and!137477 () Bool)

(assert (= b_and!137441 (and (=> t!167110 result!130860) b_and!137477)))

(declare-fun b_lambda!58615 () Bool)

(assert (=> (not b_lambda!58615) (not d!545082)))

(declare-fun t!167136 () Bool)

(declare-fun tb!108781 () Bool)

(assert (=> (and b!1785886 (= (toValue!5057 (transformation!3530 rule!422)) (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353))))) t!167136) tb!108781))

(declare-fun result!130884 () Bool)

(assert (=> tb!108781 (= result!130884 (inv!21 (dynLambda!9714 (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) (seqFromList!2499 (originalCharacters!4344 (_1!11040 lt!695353))))))))

(declare-fun m!2209709 () Bool)

(assert (=> tb!108781 m!2209709))

(assert (=> d!545082 t!167136))

(declare-fun b_and!137479 () Bool)

(assert (= b_and!137473 (and (=> t!167136 result!130884) b_and!137479)))

(declare-fun tb!108783 () Bool)

(declare-fun t!167138 () Bool)

(assert (=> (and b!1785910 (= (toValue!5057 (transformation!3530 (rule!5618 token!523))) (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353))))) t!167138) tb!108783))

(declare-fun result!130886 () Bool)

(assert (= result!130886 result!130884))

(assert (=> d!545082 t!167138))

(declare-fun b_and!137481 () Bool)

(assert (= b_and!137475 (and (=> t!167138 result!130886) b_and!137481)))

(declare-fun t!167140 () Bool)

(declare-fun tb!108785 () Bool)

(assert (=> (and b!1785900 (= (toValue!5057 (transformation!3530 (h!25091 rules!3447))) (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353))))) t!167140) tb!108785))

(declare-fun result!130888 () Bool)

(assert (= result!130888 result!130884))

(assert (=> d!545082 t!167140))

(declare-fun b_and!137483 () Bool)

(assert (= b_and!137477 (and (=> t!167140 result!130888) b_and!137483)))

(assert (=> d!545082 m!2209419))

(assert (=> d!545082 m!2209391))

(declare-fun m!2209711 () Bool)

(assert (=> d!545082 m!2209711))

(assert (=> d!545082 m!2209391))

(declare-fun m!2209713 () Bool)

(assert (=> d!545082 m!2209713))

(assert (=> d!545082 m!2209391))

(declare-fun m!2209715 () Bool)

(assert (=> d!545082 m!2209715))

(assert (=> d!545082 m!2209467))

(assert (=> b!1785916 d!545082))

(declare-fun d!545084 () Bool)

(declare-fun lt!695544 () Int)

(assert (=> d!545084 (= lt!695544 (size!15642 (list!8008 lt!695347)))))

(declare-fun size!15647 (Conc!6550) Int)

(assert (=> d!545084 (= lt!695544 (size!15647 (c!290421 lt!695347)))))

(assert (=> d!545084 (= (size!15643 lt!695347) lt!695544)))

(declare-fun bs!405404 () Bool)

(assert (= bs!405404 d!545084))

(assert (=> bs!405404 m!2209419))

(assert (=> bs!405404 m!2209419))

(declare-fun m!2209717 () Bool)

(assert (=> bs!405404 m!2209717))

(declare-fun m!2209719 () Bool)

(assert (=> bs!405404 m!2209719))

(assert (=> b!1785916 d!545084))

(declare-fun d!545086 () Bool)

(assert (=> d!545086 (= (apply!5330 (transformation!3530 (rule!5618 (_1!11040 lt!695353))) lt!695347) (dynLambda!9714 (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) lt!695347))))

(declare-fun b_lambda!58617 () Bool)

(assert (=> (not b_lambda!58617) (not d!545086)))

(assert (=> d!545086 t!167106))

(declare-fun b_and!137485 () Bool)

(assert (= b_and!137479 (and (=> t!167106 result!130854) b_and!137485)))

(assert (=> d!545086 t!167108))

(declare-fun b_and!137487 () Bool)

(assert (= b_and!137481 (and (=> t!167108 result!130858) b_and!137487)))

(assert (=> d!545086 t!167110))

(declare-fun b_and!137489 () Bool)

(assert (= b_and!137483 (and (=> t!167110 result!130860) b_and!137489)))

(assert (=> d!545086 m!2209467))

(assert (=> b!1785916 d!545086))

(declare-fun d!545088 () Bool)

(assert (=> d!545088 (= (size!15641 (_1!11040 lt!695353)) (size!15642 (originalCharacters!4344 (_1!11040 lt!695353))))))

(declare-fun Unit!34067 () Unit!34050)

(assert (=> d!545088 (= (lemmaCharactersSize!588 (_1!11040 lt!695353)) Unit!34067)))

(declare-fun bs!405405 () Bool)

(assert (= bs!405405 d!545088))

(declare-fun m!2209721 () Bool)

(assert (=> bs!405405 m!2209721))

(assert (=> b!1785916 d!545088))

(declare-fun d!545090 () Bool)

(declare-fun fromListB!1145 (List!19759) BalanceConc!13044)

(assert (=> d!545090 (= (seqFromList!2499 (originalCharacters!4344 (_1!11040 lt!695353))) (fromListB!1145 (originalCharacters!4344 (_1!11040 lt!695353))))))

(declare-fun bs!405406 () Bool)

(assert (= bs!405406 d!545090))

(declare-fun m!2209723 () Bool)

(assert (=> bs!405406 m!2209723))

(assert (=> b!1785916 d!545090))

(declare-fun b!1786135 () Bool)

(declare-fun e!1143191 () Bool)

(declare-fun lt!695547 () Bool)

(assert (=> b!1786135 (= e!1143191 (not lt!695547))))

(declare-fun b!1786136 () Bool)

(declare-fun res!805431 () Bool)

(declare-fun e!1143194 () Bool)

(assert (=> b!1786136 (=> (not res!805431) (not e!1143194))))

(declare-fun call!111365 () Bool)

(assert (=> b!1786136 (= res!805431 (not call!111365))))

(declare-fun b!1786137 () Bool)

(declare-fun e!1143192 () Bool)

(assert (=> b!1786137 (= e!1143192 (= lt!695547 call!111365))))

(declare-fun b!1786138 () Bool)

(declare-fun e!1143190 () Bool)

(declare-fun nullable!1496 (Regex!4858) Bool)

(assert (=> b!1786138 (= e!1143190 (nullable!1496 (regex!3530 rule!422)))))

(declare-fun b!1786139 () Bool)

(declare-fun derivativeStep!1265 (Regex!4858 C!9890) Regex!4858)

(declare-fun tail!2672 (List!19759) List!19759)

(assert (=> b!1786139 (= e!1143190 (matchR!2331 (derivativeStep!1265 (regex!3530 rule!422) (head!4183 lt!695351)) (tail!2672 lt!695351)))))

(declare-fun b!1786140 () Bool)

(declare-fun e!1143193 () Bool)

(assert (=> b!1786140 (= e!1143193 (not (= (head!4183 lt!695351) (c!290420 (regex!3530 rule!422)))))))

(declare-fun b!1786141 () Bool)

(declare-fun res!805428 () Bool)

(assert (=> b!1786141 (=> (not res!805428) (not e!1143194))))

(assert (=> b!1786141 (= res!805428 (isEmpty!12444 (tail!2672 lt!695351)))))

(declare-fun b!1786142 () Bool)

(assert (=> b!1786142 (= e!1143192 e!1143191)))

(declare-fun c!290449 () Bool)

(assert (=> b!1786142 (= c!290449 (is-EmptyLang!4858 (regex!3530 rule!422)))))

(declare-fun d!545092 () Bool)

(assert (=> d!545092 e!1143192))

(declare-fun c!290450 () Bool)

(assert (=> d!545092 (= c!290450 (is-EmptyExpr!4858 (regex!3530 rule!422)))))

(assert (=> d!545092 (= lt!695547 e!1143190)))

(declare-fun c!290448 () Bool)

(assert (=> d!545092 (= c!290448 (isEmpty!12444 lt!695351))))

(declare-fun validRegex!1970 (Regex!4858) Bool)

(assert (=> d!545092 (validRegex!1970 (regex!3530 rule!422))))

(assert (=> d!545092 (= (matchR!2331 (regex!3530 rule!422) lt!695351) lt!695547)))

(declare-fun b!1786143 () Bool)

(declare-fun e!1143195 () Bool)

(declare-fun e!1143189 () Bool)

(assert (=> b!1786143 (= e!1143195 e!1143189)))

(declare-fun res!805429 () Bool)

(assert (=> b!1786143 (=> (not res!805429) (not e!1143189))))

(assert (=> b!1786143 (= res!805429 (not lt!695547))))

(declare-fun b!1786144 () Bool)

(assert (=> b!1786144 (= e!1143194 (= (head!4183 lt!695351) (c!290420 (regex!3530 rule!422))))))

(declare-fun b!1786145 () Bool)

(declare-fun res!805425 () Bool)

(assert (=> b!1786145 (=> res!805425 e!1143195)))

(assert (=> b!1786145 (= res!805425 e!1143194)))

(declare-fun res!805424 () Bool)

(assert (=> b!1786145 (=> (not res!805424) (not e!1143194))))

(assert (=> b!1786145 (= res!805424 lt!695547)))

(declare-fun b!1786146 () Bool)

(assert (=> b!1786146 (= e!1143189 e!1143193)))

(declare-fun res!805430 () Bool)

(assert (=> b!1786146 (=> res!805430 e!1143193)))

(assert (=> b!1786146 (= res!805430 call!111365)))

(declare-fun b!1786147 () Bool)

(declare-fun res!805427 () Bool)

(assert (=> b!1786147 (=> res!805427 e!1143193)))

(assert (=> b!1786147 (= res!805427 (not (isEmpty!12444 (tail!2672 lt!695351))))))

(declare-fun b!1786148 () Bool)

(declare-fun res!805426 () Bool)

(assert (=> b!1786148 (=> res!805426 e!1143195)))

(assert (=> b!1786148 (= res!805426 (not (is-ElementMatch!4858 (regex!3530 rule!422))))))

(assert (=> b!1786148 (= e!1143191 e!1143195)))

(declare-fun bm!111360 () Bool)

(assert (=> bm!111360 (= call!111365 (isEmpty!12444 lt!695351))))

(assert (= (and d!545092 c!290448) b!1786138))

(assert (= (and d!545092 (not c!290448)) b!1786139))

(assert (= (and d!545092 c!290450) b!1786137))

(assert (= (and d!545092 (not c!290450)) b!1786142))

(assert (= (and b!1786142 c!290449) b!1786135))

(assert (= (and b!1786142 (not c!290449)) b!1786148))

(assert (= (and b!1786148 (not res!805426)) b!1786145))

(assert (= (and b!1786145 res!805424) b!1786136))

(assert (= (and b!1786136 res!805431) b!1786141))

(assert (= (and b!1786141 res!805428) b!1786144))

(assert (= (and b!1786145 (not res!805425)) b!1786143))

(assert (= (and b!1786143 res!805429) b!1786146))

(assert (= (and b!1786146 (not res!805430)) b!1786147))

(assert (= (and b!1786147 (not res!805427)) b!1786140))

(assert (= (or b!1786137 b!1786136 b!1786146) bm!111360))

(declare-fun m!2209725 () Bool)

(assert (=> b!1786147 m!2209725))

(assert (=> b!1786147 m!2209725))

(declare-fun m!2209727 () Bool)

(assert (=> b!1786147 m!2209727))

(declare-fun m!2209729 () Bool)

(assert (=> b!1786138 m!2209729))

(assert (=> b!1786141 m!2209725))

(assert (=> b!1786141 m!2209725))

(assert (=> b!1786141 m!2209727))

(declare-fun m!2209731 () Bool)

(assert (=> bm!111360 m!2209731))

(declare-fun m!2209733 () Bool)

(assert (=> b!1786140 m!2209733))

(assert (=> b!1786144 m!2209733))

(assert (=> d!545092 m!2209731))

(declare-fun m!2209735 () Bool)

(assert (=> d!545092 m!2209735))

(assert (=> b!1786139 m!2209733))

(assert (=> b!1786139 m!2209733))

(declare-fun m!2209737 () Bool)

(assert (=> b!1786139 m!2209737))

(assert (=> b!1786139 m!2209725))

(assert (=> b!1786139 m!2209737))

(assert (=> b!1786139 m!2209725))

(declare-fun m!2209739 () Bool)

(assert (=> b!1786139 m!2209739))

(assert (=> b!1785895 d!545092))

(declare-fun d!545094 () Bool)

(declare-fun res!805436 () Bool)

(declare-fun e!1143198 () Bool)

(assert (=> d!545094 (=> (not res!805436) (not e!1143198))))

(assert (=> d!545094 (= res!805436 (validRegex!1970 (regex!3530 rule!422)))))

(assert (=> d!545094 (= (ruleValid!1028 thiss!24550 rule!422) e!1143198)))

(declare-fun b!1786153 () Bool)

(declare-fun res!805437 () Bool)

(assert (=> b!1786153 (=> (not res!805437) (not e!1143198))))

(assert (=> b!1786153 (= res!805437 (not (nullable!1496 (regex!3530 rule!422))))))

(declare-fun b!1786154 () Bool)

(assert (=> b!1786154 (= e!1143198 (not (= (tag!3932 rule!422) (String!22435 ""))))))

(assert (= (and d!545094 res!805436) b!1786153))

(assert (= (and b!1786153 res!805437) b!1786154))

(assert (=> d!545094 m!2209735))

(assert (=> b!1786153 m!2209729))

(assert (=> b!1785895 d!545094))

(declare-fun d!545096 () Bool)

(assert (=> d!545096 (ruleValid!1028 thiss!24550 rule!422)))

(declare-fun lt!695550 () Unit!34050)

(declare-fun choose!11258 (LexerInterface!3159 Rule!6860 List!19760) Unit!34050)

(assert (=> d!545096 (= lt!695550 (choose!11258 thiss!24550 rule!422 rules!3447))))

(assert (=> d!545096 (contains!3562 rules!3447 rule!422)))

(assert (=> d!545096 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!551 thiss!24550 rule!422 rules!3447) lt!695550)))

(declare-fun bs!405407 () Bool)

(assert (= bs!405407 d!545096))

(assert (=> bs!405407 m!2209503))

(declare-fun m!2209741 () Bool)

(assert (=> bs!405407 m!2209741))

(assert (=> bs!405407 m!2209479))

(assert (=> b!1785895 d!545096))

(declare-fun d!545098 () Bool)

(declare-fun res!805442 () Bool)

(declare-fun e!1143201 () Bool)

(assert (=> d!545098 (=> (not res!805442) (not e!1143201))))

(assert (=> d!545098 (= res!805442 (not (isEmpty!12444 (originalCharacters!4344 token!523))))))

(assert (=> d!545098 (= (inv!25643 token!523) e!1143201)))

(declare-fun b!1786159 () Bool)

(declare-fun res!805443 () Bool)

(assert (=> b!1786159 (=> (not res!805443) (not e!1143201))))

(assert (=> b!1786159 (= res!805443 (= (originalCharacters!4344 token!523) (list!8008 (dynLambda!9713 (toChars!4916 (transformation!3530 (rule!5618 token!523))) (value!110279 token!523)))))))

(declare-fun b!1786160 () Bool)

(assert (=> b!1786160 (= e!1143201 (= (size!15641 token!523) (size!15642 (originalCharacters!4344 token!523))))))

(assert (= (and d!545098 res!805442) b!1786159))

(assert (= (and b!1786159 res!805443) b!1786160))

(declare-fun b_lambda!58619 () Bool)

(assert (=> (not b_lambda!58619) (not b!1786159)))

(declare-fun tb!108787 () Bool)

(declare-fun t!167142 () Bool)

(assert (=> (and b!1785886 (= (toChars!4916 (transformation!3530 rule!422)) (toChars!4916 (transformation!3530 (rule!5618 token!523)))) t!167142) tb!108787))

(declare-fun b!1786161 () Bool)

(declare-fun e!1143202 () Bool)

(declare-fun tp!505263 () Bool)

(assert (=> b!1786161 (= e!1143202 (and (inv!25644 (c!290421 (dynLambda!9713 (toChars!4916 (transformation!3530 (rule!5618 token!523))) (value!110279 token!523)))) tp!505263))))

(declare-fun result!130890 () Bool)

(assert (=> tb!108787 (= result!130890 (and (inv!25645 (dynLambda!9713 (toChars!4916 (transformation!3530 (rule!5618 token!523))) (value!110279 token!523))) e!1143202))))

(assert (= tb!108787 b!1786161))

(declare-fun m!2209743 () Bool)

(assert (=> b!1786161 m!2209743))

(declare-fun m!2209745 () Bool)

(assert (=> tb!108787 m!2209745))

(assert (=> b!1786159 t!167142))

(declare-fun b_and!137491 () Bool)

(assert (= b_and!137431 (and (=> t!167142 result!130890) b_and!137491)))

(declare-fun t!167144 () Bool)

(declare-fun tb!108789 () Bool)

(assert (=> (and b!1785910 (= (toChars!4916 (transformation!3530 (rule!5618 token!523))) (toChars!4916 (transformation!3530 (rule!5618 token!523)))) t!167144) tb!108789))

(declare-fun result!130892 () Bool)

(assert (= result!130892 result!130890))

(assert (=> b!1786159 t!167144))

(declare-fun b_and!137493 () Bool)

(assert (= b_and!137433 (and (=> t!167144 result!130892) b_and!137493)))

(declare-fun tb!108791 () Bool)

(declare-fun t!167146 () Bool)

(assert (=> (and b!1785900 (= (toChars!4916 (transformation!3530 (h!25091 rules!3447))) (toChars!4916 (transformation!3530 (rule!5618 token!523)))) t!167146) tb!108791))

(declare-fun result!130894 () Bool)

(assert (= result!130894 result!130890))

(assert (=> b!1786159 t!167146))

(declare-fun b_and!137495 () Bool)

(assert (= b_and!137435 (and (=> t!167146 result!130894) b_and!137495)))

(declare-fun m!2209747 () Bool)

(assert (=> d!545098 m!2209747))

(declare-fun m!2209749 () Bool)

(assert (=> b!1786159 m!2209749))

(assert (=> b!1786159 m!2209749))

(declare-fun m!2209751 () Bool)

(assert (=> b!1786159 m!2209751))

(declare-fun m!2209753 () Bool)

(assert (=> b!1786160 m!2209753))

(assert (=> start!177900 d!545098))

(declare-fun d!545100 () Bool)

(declare-fun list!8010 (Conc!6550) List!19759)

(assert (=> d!545100 (= (list!8008 (dynLambda!9713 (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) (dynLambda!9714 (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) lt!695347))) (list!8010 (c!290421 (dynLambda!9713 (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) (dynLambda!9714 (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) lt!695347)))))))

(declare-fun bs!405408 () Bool)

(assert (= bs!405408 d!545100))

(declare-fun m!2209755 () Bool)

(assert (=> bs!405408 m!2209755))

(assert (=> b!1785917 d!545100))

(declare-fun bs!405409 () Bool)

(declare-fun d!545102 () Bool)

(assert (= bs!405409 (and d!545102 b!1785887)))

(declare-fun lambda!70786 () Int)

(assert (=> bs!405409 (= lambda!70786 lambda!70777)))

(declare-fun b!1786166 () Bool)

(declare-fun e!1143205 () Bool)

(assert (=> b!1786166 (= e!1143205 true)))

(assert (=> d!545102 e!1143205))

(assert (= d!545102 b!1786166))

(assert (=> b!1786166 (< (dynLambda!9710 order!12757 (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353))))) (dynLambda!9711 order!12759 lambda!70786))))

(assert (=> b!1786166 (< (dynLambda!9712 order!12761 (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353))))) (dynLambda!9711 order!12759 lambda!70786))))

(assert (=> d!545102 (= (list!8008 (dynLambda!9713 (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) (dynLambda!9714 (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) lt!695347))) (list!8008 lt!695347))))

(declare-fun lt!695553 () Unit!34050)

(declare-fun ForallOf!348 (Int BalanceConc!13044) Unit!34050)

(assert (=> d!545102 (= lt!695553 (ForallOf!348 lambda!70786 lt!695347))))

(assert (=> d!545102 (= (lemmaSemiInverse!668 (transformation!3530 (rule!5618 (_1!11040 lt!695353))) lt!695347) lt!695553)))

(declare-fun b_lambda!58621 () Bool)

(assert (=> (not b_lambda!58621) (not d!545102)))

(assert (=> d!545102 t!167100))

(declare-fun b_and!137497 () Bool)

(assert (= b_and!137491 (and (=> t!167100 result!130848) b_and!137497)))

(assert (=> d!545102 t!167102))

(declare-fun b_and!137499 () Bool)

(assert (= b_and!137493 (and (=> t!167102 result!130850) b_and!137499)))

(assert (=> d!545102 t!167104))

(declare-fun b_and!137501 () Bool)

(assert (= b_and!137495 (and (=> t!167104 result!130852) b_and!137501)))

(declare-fun b_lambda!58623 () Bool)

(assert (=> (not b_lambda!58623) (not d!545102)))

(assert (=> d!545102 t!167106))

(declare-fun b_and!137503 () Bool)

(assert (= b_and!137485 (and (=> t!167106 result!130854) b_and!137503)))

(assert (=> d!545102 t!167108))

(declare-fun b_and!137505 () Bool)

(assert (= b_and!137487 (and (=> t!167108 result!130858) b_and!137505)))

(assert (=> d!545102 t!167110))

(declare-fun b_and!137507 () Bool)

(assert (= b_and!137489 (and (=> t!167110 result!130860) b_and!137507)))

(assert (=> d!545102 m!2209467))

(declare-fun m!2209757 () Bool)

(assert (=> d!545102 m!2209757))

(assert (=> d!545102 m!2209469))

(assert (=> d!545102 m!2209471))

(assert (=> d!545102 m!2209419))

(assert (=> d!545102 m!2209467))

(assert (=> d!545102 m!2209469))

(assert (=> b!1785917 d!545102))

(declare-fun d!545104 () Bool)

(assert (=> d!545104 (= (inv!25639 (tag!3932 (h!25091 rules!3447))) (= (mod (str.len (value!110278 (tag!3932 (h!25091 rules!3447)))) 2) 0))))

(assert (=> b!1785920 d!545104))

(declare-fun d!545106 () Bool)

(declare-fun res!805446 () Bool)

(declare-fun e!1143208 () Bool)

(assert (=> d!545106 (=> (not res!805446) (not e!1143208))))

(declare-fun semiInverseModEq!1411 (Int Int) Bool)

(assert (=> d!545106 (= res!805446 (semiInverseModEq!1411 (toChars!4916 (transformation!3530 (h!25091 rules!3447))) (toValue!5057 (transformation!3530 (h!25091 rules!3447)))))))

(assert (=> d!545106 (= (inv!25642 (transformation!3530 (h!25091 rules!3447))) e!1143208)))

(declare-fun b!1786169 () Bool)

(declare-fun equivClasses!1352 (Int Int) Bool)

(assert (=> b!1786169 (= e!1143208 (equivClasses!1352 (toChars!4916 (transformation!3530 (h!25091 rules!3447))) (toValue!5057 (transformation!3530 (h!25091 rules!3447)))))))

(assert (= (and d!545106 res!805446) b!1786169))

(declare-fun m!2209759 () Bool)

(assert (=> d!545106 m!2209759))

(declare-fun m!2209761 () Bool)

(assert (=> b!1786169 m!2209761))

(assert (=> b!1785920 d!545106))

(declare-fun d!545108 () Bool)

(assert (=> d!545108 (= (isEmpty!12444 suffix!1421) (is-Nil!19689 suffix!1421))))

(assert (=> b!1785899 d!545108))

(declare-fun d!545110 () Bool)

(declare-fun e!1143215 () Bool)

(assert (=> d!545110 e!1143215))

(declare-fun res!805458 () Bool)

(assert (=> d!545110 (=> res!805458 e!1143215)))

(declare-fun lt!695556 () Bool)

(assert (=> d!545110 (= res!805458 (not lt!695556))))

(declare-fun e!1143216 () Bool)

(assert (=> d!545110 (= lt!695556 e!1143216)))

(declare-fun res!805457 () Bool)

(assert (=> d!545110 (=> res!805457 e!1143216)))

(assert (=> d!545110 (= res!805457 (is-Nil!19689 lt!695351))))

(assert (=> d!545110 (= (isPrefix!1770 lt!695351 lt!695351) lt!695556)))

(declare-fun b!1786178 () Bool)

(declare-fun e!1143217 () Bool)

(assert (=> b!1786178 (= e!1143216 e!1143217)))

(declare-fun res!805455 () Bool)

(assert (=> b!1786178 (=> (not res!805455) (not e!1143217))))

(assert (=> b!1786178 (= res!805455 (not (is-Nil!19689 lt!695351)))))

(declare-fun b!1786180 () Bool)

(assert (=> b!1786180 (= e!1143217 (isPrefix!1770 (tail!2672 lt!695351) (tail!2672 lt!695351)))))

(declare-fun b!1786179 () Bool)

(declare-fun res!805456 () Bool)

(assert (=> b!1786179 (=> (not res!805456) (not e!1143217))))

(assert (=> b!1786179 (= res!805456 (= (head!4183 lt!695351) (head!4183 lt!695351)))))

(declare-fun b!1786181 () Bool)

(assert (=> b!1786181 (= e!1143215 (>= (size!15642 lt!695351) (size!15642 lt!695351)))))

(assert (= (and d!545110 (not res!805457)) b!1786178))

(assert (= (and b!1786178 res!805455) b!1786179))

(assert (= (and b!1786179 res!805456) b!1786180))

(assert (= (and d!545110 (not res!805458)) b!1786181))

(assert (=> b!1786180 m!2209725))

(assert (=> b!1786180 m!2209725))

(assert (=> b!1786180 m!2209725))

(assert (=> b!1786180 m!2209725))

(declare-fun m!2209763 () Bool)

(assert (=> b!1786180 m!2209763))

(assert (=> b!1786179 m!2209733))

(assert (=> b!1786179 m!2209733))

(declare-fun m!2209765 () Bool)

(assert (=> b!1786181 m!2209765))

(assert (=> b!1786181 m!2209765))

(assert (=> b!1785919 d!545110))

(declare-fun d!545112 () Bool)

(declare-fun isEmpty!12448 (Option!4082) Bool)

(assert (=> d!545112 (= (isDefined!3425 lt!695344) (not (isEmpty!12448 lt!695344)))))

(declare-fun bs!405410 () Bool)

(assert (= bs!405410 d!545112))

(declare-fun m!2209767 () Bool)

(assert (=> bs!405410 m!2209767))

(assert (=> b!1785898 d!545112))

(declare-fun b!1786206 () Bool)

(declare-fun e!1143229 () Option!4082)

(declare-fun lt!695570 () Option!4082)

(declare-fun lt!695571 () Option!4082)

(assert (=> b!1786206 (= e!1143229 (ite (and (is-None!4081 lt!695570) (is-None!4081 lt!695571)) None!4081 (ite (is-None!4081 lt!695571) lt!695570 (ite (is-None!4081 lt!695570) lt!695571 (ite (>= (size!15641 (_1!11040 (v!25578 lt!695570))) (size!15641 (_1!11040 (v!25578 lt!695571)))) lt!695570 lt!695571)))))))

(declare-fun call!111368 () Option!4082)

(assert (=> b!1786206 (= lt!695570 call!111368)))

(assert (=> b!1786206 (= lt!695571 (maxPrefix!1713 thiss!24550 (t!167113 rules!3447) lt!695351))))

(declare-fun bm!111363 () Bool)

(assert (=> bm!111363 (= call!111368 (maxPrefixOneRule!1082 thiss!24550 (h!25091 rules!3447) lt!695351))))

(declare-fun b!1786207 () Bool)

(declare-fun e!1143232 () Bool)

(declare-fun e!1143228 () Bool)

(assert (=> b!1786207 (= e!1143232 e!1143228)))

(declare-fun res!805481 () Bool)

(assert (=> b!1786207 (=> (not res!805481) (not e!1143228))))

(declare-fun lt!695573 () Option!4082)

(assert (=> b!1786207 (= res!805481 (isDefined!3425 lt!695573))))

(declare-fun b!1786208 () Bool)

(declare-fun res!805485 () Bool)

(assert (=> b!1786208 (=> (not res!805485) (not e!1143228))))

(assert (=> b!1786208 (= res!805485 (= (value!110279 (_1!11040 (get!6065 lt!695573))) (apply!5330 (transformation!3530 (rule!5618 (_1!11040 (get!6065 lt!695573)))) (seqFromList!2499 (originalCharacters!4344 (_1!11040 (get!6065 lt!695573)))))))))

(declare-fun d!545114 () Bool)

(assert (=> d!545114 e!1143232))

(declare-fun res!805479 () Bool)

(assert (=> d!545114 (=> res!805479 e!1143232)))

(assert (=> d!545114 (= res!805479 (isEmpty!12448 lt!695573))))

(assert (=> d!545114 (= lt!695573 e!1143229)))

(declare-fun c!290454 () Bool)

(assert (=> d!545114 (= c!290454 (and (is-Cons!19690 rules!3447) (is-Nil!19690 (t!167113 rules!3447))))))

(declare-fun lt!695574 () Unit!34050)

(declare-fun lt!695572 () Unit!34050)

(assert (=> d!545114 (= lt!695574 lt!695572)))

(assert (=> d!545114 (isPrefix!1770 lt!695351 lt!695351)))

(declare-fun lemmaIsPrefixRefl!1165 (List!19759 List!19759) Unit!34050)

(assert (=> d!545114 (= lt!695572 (lemmaIsPrefixRefl!1165 lt!695351 lt!695351))))

(declare-fun rulesValidInductive!1201 (LexerInterface!3159 List!19760) Bool)

(assert (=> d!545114 (rulesValidInductive!1201 thiss!24550 rules!3447)))

(assert (=> d!545114 (= (maxPrefix!1713 thiss!24550 rules!3447 lt!695351) lt!695573)))

(declare-fun b!1786209 () Bool)

(assert (=> b!1786209 (= e!1143229 call!111368)))

(declare-fun b!1786210 () Bool)

(assert (=> b!1786210 (= e!1143228 (contains!3562 rules!3447 (rule!5618 (_1!11040 (get!6065 lt!695573)))))))

(declare-fun b!1786211 () Bool)

(declare-fun res!805484 () Bool)

(assert (=> b!1786211 (=> (not res!805484) (not e!1143228))))

(assert (=> b!1786211 (= res!805484 (matchR!2331 (regex!3530 (rule!5618 (_1!11040 (get!6065 lt!695573)))) (list!8008 (charsOf!2179 (_1!11040 (get!6065 lt!695573))))))))

(declare-fun b!1786212 () Bool)

(declare-fun res!805482 () Bool)

(assert (=> b!1786212 (=> (not res!805482) (not e!1143228))))

(assert (=> b!1786212 (= res!805482 (< (size!15642 (_2!11040 (get!6065 lt!695573))) (size!15642 lt!695351)))))

(declare-fun b!1786213 () Bool)

(declare-fun res!805483 () Bool)

(assert (=> b!1786213 (=> (not res!805483) (not e!1143228))))

(assert (=> b!1786213 (= res!805483 (= (++!5354 (list!8008 (charsOf!2179 (_1!11040 (get!6065 lt!695573)))) (_2!11040 (get!6065 lt!695573))) lt!695351))))

(declare-fun b!1786214 () Bool)

(declare-fun res!805478 () Bool)

(assert (=> b!1786214 (=> (not res!805478) (not e!1143228))))

(assert (=> b!1786214 (= res!805478 (= (list!8008 (charsOf!2179 (_1!11040 (get!6065 lt!695573)))) (originalCharacters!4344 (_1!11040 (get!6065 lt!695573)))))))

(assert (= (and d!545114 c!290454) b!1786209))

(assert (= (and d!545114 (not c!290454)) b!1786206))

(assert (= (or b!1786209 b!1786206) bm!111363))

(assert (= (and d!545114 (not res!805479)) b!1786207))

(assert (= (and b!1786207 res!805481) b!1786214))

(assert (= (and b!1786214 res!805478) b!1786212))

(assert (= (and b!1786212 res!805482) b!1786213))

(assert (= (and b!1786213 res!805483) b!1786208))

(assert (= (and b!1786208 res!805485) b!1786211))

(assert (= (and b!1786211 res!805484) b!1786210))

(declare-fun m!2209775 () Bool)

(assert (=> b!1786207 m!2209775))

(declare-fun m!2209777 () Bool)

(assert (=> d!545114 m!2209777))

(assert (=> d!545114 m!2209475))

(declare-fun m!2209779 () Bool)

(assert (=> d!545114 m!2209779))

(declare-fun m!2209781 () Bool)

(assert (=> d!545114 m!2209781))

(declare-fun m!2209783 () Bool)

(assert (=> b!1786206 m!2209783))

(declare-fun m!2209785 () Bool)

(assert (=> b!1786210 m!2209785))

(declare-fun m!2209787 () Bool)

(assert (=> b!1786210 m!2209787))

(declare-fun m!2209789 () Bool)

(assert (=> bm!111363 m!2209789))

(assert (=> b!1786211 m!2209785))

(declare-fun m!2209791 () Bool)

(assert (=> b!1786211 m!2209791))

(assert (=> b!1786211 m!2209791))

(declare-fun m!2209793 () Bool)

(assert (=> b!1786211 m!2209793))

(assert (=> b!1786211 m!2209793))

(declare-fun m!2209795 () Bool)

(assert (=> b!1786211 m!2209795))

(assert (=> b!1786214 m!2209785))

(assert (=> b!1786214 m!2209791))

(assert (=> b!1786214 m!2209791))

(assert (=> b!1786214 m!2209793))

(assert (=> b!1786213 m!2209785))

(assert (=> b!1786213 m!2209791))

(assert (=> b!1786213 m!2209791))

(assert (=> b!1786213 m!2209793))

(assert (=> b!1786213 m!2209793))

(declare-fun m!2209797 () Bool)

(assert (=> b!1786213 m!2209797))

(assert (=> b!1786208 m!2209785))

(declare-fun m!2209799 () Bool)

(assert (=> b!1786208 m!2209799))

(assert (=> b!1786208 m!2209799))

(declare-fun m!2209801 () Bool)

(assert (=> b!1786208 m!2209801))

(assert (=> b!1786212 m!2209785))

(declare-fun m!2209803 () Bool)

(assert (=> b!1786212 m!2209803))

(assert (=> b!1786212 m!2209765))

(assert (=> b!1785898 d!545114))

(declare-fun d!545122 () Bool)

(assert (=> d!545122 (= (list!8008 lt!695355) (list!8010 (c!290421 lt!695355)))))

(declare-fun bs!405411 () Bool)

(assert (= bs!405411 d!545122))

(declare-fun m!2209805 () Bool)

(assert (=> bs!405411 m!2209805))

(assert (=> b!1785898 d!545122))

(declare-fun d!545124 () Bool)

(declare-fun lt!695577 () BalanceConc!13044)

(assert (=> d!545124 (= (list!8008 lt!695577) (originalCharacters!4344 token!523))))

(assert (=> d!545124 (= lt!695577 (dynLambda!9713 (toChars!4916 (transformation!3530 (rule!5618 token!523))) (value!110279 token!523)))))

(assert (=> d!545124 (= (charsOf!2179 token!523) lt!695577)))

(declare-fun b_lambda!58625 () Bool)

(assert (=> (not b_lambda!58625) (not d!545124)))

(assert (=> d!545124 t!167142))

(declare-fun b_and!137509 () Bool)

(assert (= b_and!137497 (and (=> t!167142 result!130890) b_and!137509)))

(assert (=> d!545124 t!167144))

(declare-fun b_and!137511 () Bool)

(assert (= b_and!137499 (and (=> t!167144 result!130892) b_and!137511)))

(assert (=> d!545124 t!167146))

(declare-fun b_and!137513 () Bool)

(assert (= b_and!137501 (and (=> t!167146 result!130894) b_and!137513)))

(declare-fun m!2209807 () Bool)

(assert (=> d!545124 m!2209807))

(assert (=> d!545124 m!2209749))

(assert (=> b!1785898 d!545124))

(declare-fun d!545126 () Bool)

(declare-fun isBalanced!2049 (Conc!6550) Bool)

(assert (=> d!545126 (= (inv!25645 (dynLambda!9713 (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) (value!110279 (_1!11040 lt!695353)))) (isBalanced!2049 (c!290421 (dynLambda!9713 (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) (value!110279 (_1!11040 lt!695353))))))))

(declare-fun bs!405412 () Bool)

(assert (= bs!405412 d!545126))

(declare-fun m!2209809 () Bool)

(assert (=> bs!405412 m!2209809))

(assert (=> tb!108745 d!545126))

(declare-fun d!545128 () Bool)

(declare-fun e!1143235 () Bool)

(assert (=> d!545128 e!1143235))

(declare-fun res!805491 () Bool)

(assert (=> d!545128 (=> res!805491 e!1143235)))

(declare-fun lt!695578 () Bool)

(assert (=> d!545128 (= res!805491 (not lt!695578))))

(declare-fun e!1143236 () Bool)

(assert (=> d!545128 (= lt!695578 e!1143236)))

(declare-fun res!805490 () Bool)

(assert (=> d!545128 (=> res!805490 e!1143236)))

(assert (=> d!545128 (= res!805490 (is-Nil!19689 lt!695345))))

(assert (=> d!545128 (= (isPrefix!1770 lt!695345 lt!695389) lt!695578)))

(declare-fun b!1786217 () Bool)

(declare-fun e!1143237 () Bool)

(assert (=> b!1786217 (= e!1143236 e!1143237)))

(declare-fun res!805488 () Bool)

(assert (=> b!1786217 (=> (not res!805488) (not e!1143237))))

(assert (=> b!1786217 (= res!805488 (not (is-Nil!19689 lt!695389)))))

(declare-fun b!1786219 () Bool)

(assert (=> b!1786219 (= e!1143237 (isPrefix!1770 (tail!2672 lt!695345) (tail!2672 lt!695389)))))

(declare-fun b!1786218 () Bool)

(declare-fun res!805489 () Bool)

(assert (=> b!1786218 (=> (not res!805489) (not e!1143237))))

(assert (=> b!1786218 (= res!805489 (= (head!4183 lt!695345) (head!4183 lt!695389)))))

(declare-fun b!1786220 () Bool)

(assert (=> b!1786220 (= e!1143235 (>= (size!15642 lt!695389) (size!15642 lt!695345)))))

(assert (= (and d!545128 (not res!805490)) b!1786217))

(assert (= (and b!1786217 res!805488) b!1786218))

(assert (= (and b!1786218 res!805489) b!1786219))

(assert (= (and d!545128 (not res!805491)) b!1786220))

(declare-fun m!2209811 () Bool)

(assert (=> b!1786219 m!2209811))

(declare-fun m!2209813 () Bool)

(assert (=> b!1786219 m!2209813))

(assert (=> b!1786219 m!2209811))

(assert (=> b!1786219 m!2209813))

(declare-fun m!2209815 () Bool)

(assert (=> b!1786219 m!2209815))

(declare-fun m!2209817 () Bool)

(assert (=> b!1786218 m!2209817))

(declare-fun m!2209819 () Bool)

(assert (=> b!1786218 m!2209819))

(declare-fun m!2209821 () Bool)

(assert (=> b!1786220 m!2209821))

(assert (=> b!1786220 m!2209487))

(assert (=> b!1785913 d!545128))

(declare-fun d!545130 () Bool)

(assert (=> d!545130 (= (list!8008 lt!695347) (list!8010 (c!290421 lt!695347)))))

(declare-fun bs!405413 () Bool)

(assert (= bs!405413 d!545130))

(declare-fun m!2209823 () Bool)

(assert (=> bs!405413 m!2209823))

(assert (=> b!1785913 d!545130))

(declare-fun d!545132 () Bool)

(declare-fun isEmpty!12449 (Option!4083) Bool)

(assert (=> d!545132 (= (isDefined!3426 lt!695383) (not (isEmpty!12449 lt!695383)))))

(declare-fun bs!405414 () Bool)

(assert (= bs!405414 d!545132))

(declare-fun m!2209825 () Bool)

(assert (=> bs!405414 m!2209825))

(assert (=> b!1785913 d!545132))

(declare-fun b!1786243 () Bool)

(declare-fun lt!695587 () Unit!34050)

(declare-fun lt!695586 () Unit!34050)

(assert (=> b!1786243 (= lt!695587 lt!695586)))

(assert (=> b!1786243 (rulesInvariant!2828 thiss!24550 (t!167113 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!225 (LexerInterface!3159 Rule!6860 List!19760) Unit!34050)

(assert (=> b!1786243 (= lt!695586 (lemmaInvariantOnRulesThenOnTail!225 thiss!24550 (h!25091 rules!3447) (t!167113 rules!3447)))))

(declare-fun e!1143256 () Option!4083)

(assert (=> b!1786243 (= e!1143256 (getRuleFromTag!578 thiss!24550 (t!167113 rules!3447) (tag!3932 (rule!5618 (_1!11040 lt!695353)))))))

(declare-fun b!1786244 () Bool)

(declare-fun e!1143255 () Option!4083)

(assert (=> b!1786244 (= e!1143255 (Some!4082 (h!25091 rules!3447)))))

(declare-fun d!545134 () Bool)

(declare-fun e!1143254 () Bool)

(assert (=> d!545134 e!1143254))

(declare-fun res!805501 () Bool)

(assert (=> d!545134 (=> res!805501 e!1143254)))

(declare-fun lt!695585 () Option!4083)

(assert (=> d!545134 (= res!805501 (isEmpty!12449 lt!695585))))

(assert (=> d!545134 (= lt!695585 e!1143255)))

(declare-fun c!290462 () Bool)

(assert (=> d!545134 (= c!290462 (and (is-Cons!19690 rules!3447) (= (tag!3932 (h!25091 rules!3447)) (tag!3932 (rule!5618 (_1!11040 lt!695353))))))))

(assert (=> d!545134 (rulesInvariant!2828 thiss!24550 rules!3447)))

(assert (=> d!545134 (= (getRuleFromTag!578 thiss!24550 rules!3447 (tag!3932 (rule!5618 (_1!11040 lt!695353)))) lt!695585)))

(declare-fun b!1786245 () Bool)

(declare-fun e!1143253 () Bool)

(assert (=> b!1786245 (= e!1143253 (= (tag!3932 (get!6066 lt!695585)) (tag!3932 (rule!5618 (_1!11040 lt!695353)))))))

(declare-fun b!1786246 () Bool)

(assert (=> b!1786246 (= e!1143255 e!1143256)))

(declare-fun c!290463 () Bool)

(assert (=> b!1786246 (= c!290463 (and (is-Cons!19690 rules!3447) (not (= (tag!3932 (h!25091 rules!3447)) (tag!3932 (rule!5618 (_1!11040 lt!695353)))))))))

(declare-fun b!1786247 () Bool)

(assert (=> b!1786247 (= e!1143254 e!1143253)))

(declare-fun res!805500 () Bool)

(assert (=> b!1786247 (=> (not res!805500) (not e!1143253))))

(assert (=> b!1786247 (= res!805500 (contains!3562 rules!3447 (get!6066 lt!695585)))))

(declare-fun b!1786248 () Bool)

(assert (=> b!1786248 (= e!1143256 None!4082)))

(assert (= (and d!545134 c!290462) b!1786244))

(assert (= (and d!545134 (not c!290462)) b!1786246))

(assert (= (and b!1786246 c!290463) b!1786243))

(assert (= (and b!1786246 (not c!290463)) b!1786248))

(assert (= (and d!545134 (not res!805501)) b!1786247))

(assert (= (and b!1786247 res!805500) b!1786245))

(declare-fun m!2209835 () Bool)

(assert (=> b!1786243 m!2209835))

(declare-fun m!2209837 () Bool)

(assert (=> b!1786243 m!2209837))

(declare-fun m!2209839 () Bool)

(assert (=> b!1786243 m!2209839))

(declare-fun m!2209841 () Bool)

(assert (=> d!545134 m!2209841))

(assert (=> d!545134 m!2209455))

(declare-fun m!2209843 () Bool)

(assert (=> b!1786245 m!2209843))

(assert (=> b!1786247 m!2209843))

(assert (=> b!1786247 m!2209843))

(declare-fun m!2209845 () Bool)

(assert (=> b!1786247 m!2209845))

(assert (=> b!1785913 d!545134))

(declare-fun d!545140 () Bool)

(declare-fun e!1143257 () Bool)

(assert (=> d!545140 e!1143257))

(declare-fun res!805505 () Bool)

(assert (=> d!545140 (=> res!805505 e!1143257)))

(declare-fun lt!695588 () Bool)

(assert (=> d!545140 (= res!805505 (not lt!695588))))

(declare-fun e!1143258 () Bool)

(assert (=> d!545140 (= lt!695588 e!1143258)))

(declare-fun res!805504 () Bool)

(assert (=> d!545140 (=> res!805504 e!1143258)))

(assert (=> d!545140 (= res!805504 (is-Nil!19689 lt!695345))))

(assert (=> d!545140 (= (isPrefix!1770 lt!695345 (++!5354 lt!695345 (_2!11040 lt!695353))) lt!695588)))

(declare-fun b!1786249 () Bool)

(declare-fun e!1143259 () Bool)

(assert (=> b!1786249 (= e!1143258 e!1143259)))

(declare-fun res!805502 () Bool)

(assert (=> b!1786249 (=> (not res!805502) (not e!1143259))))

(assert (=> b!1786249 (= res!805502 (not (is-Nil!19689 (++!5354 lt!695345 (_2!11040 lt!695353)))))))

(declare-fun b!1786251 () Bool)

(assert (=> b!1786251 (= e!1143259 (isPrefix!1770 (tail!2672 lt!695345) (tail!2672 (++!5354 lt!695345 (_2!11040 lt!695353)))))))

(declare-fun b!1786250 () Bool)

(declare-fun res!805503 () Bool)

(assert (=> b!1786250 (=> (not res!805503) (not e!1143259))))

(assert (=> b!1786250 (= res!805503 (= (head!4183 lt!695345) (head!4183 (++!5354 lt!695345 (_2!11040 lt!695353)))))))

(declare-fun b!1786252 () Bool)

(assert (=> b!1786252 (= e!1143257 (>= (size!15642 (++!5354 lt!695345 (_2!11040 lt!695353))) (size!15642 lt!695345)))))

(assert (= (and d!545140 (not res!805504)) b!1786249))

(assert (= (and b!1786249 res!805502) b!1786250))

(assert (= (and b!1786250 res!805503) b!1786251))

(assert (= (and d!545140 (not res!805505)) b!1786252))

(assert (=> b!1786251 m!2209811))

(assert (=> b!1786251 m!2209413))

(declare-fun m!2209847 () Bool)

(assert (=> b!1786251 m!2209847))

(assert (=> b!1786251 m!2209811))

(assert (=> b!1786251 m!2209847))

(declare-fun m!2209849 () Bool)

(assert (=> b!1786251 m!2209849))

(assert (=> b!1786250 m!2209817))

(assert (=> b!1786250 m!2209413))

(declare-fun m!2209851 () Bool)

(assert (=> b!1786250 m!2209851))

(assert (=> b!1786252 m!2209413))

(declare-fun m!2209853 () Bool)

(assert (=> b!1786252 m!2209853))

(assert (=> b!1786252 m!2209487))

(assert (=> b!1785913 d!545140))

(declare-fun d!545142 () Bool)

(assert (=> d!545142 (isPrefix!1770 lt!695345 (++!5354 lt!695345 (_2!11040 lt!695353)))))

(declare-fun lt!695591 () Unit!34050)

(declare-fun choose!11259 (List!19759 List!19759) Unit!34050)

(assert (=> d!545142 (= lt!695591 (choose!11259 lt!695345 (_2!11040 lt!695353)))))

(assert (=> d!545142 (= (lemmaConcatTwoListThenFirstIsPrefix!1279 lt!695345 (_2!11040 lt!695353)) lt!695591)))

(declare-fun bs!405415 () Bool)

(assert (= bs!405415 d!545142))

(assert (=> bs!405415 m!2209413))

(assert (=> bs!405415 m!2209413))

(assert (=> bs!405415 m!2209415))

(declare-fun m!2209855 () Bool)

(assert (=> bs!405415 m!2209855))

(assert (=> b!1785913 d!545142))

(declare-fun d!545144 () Bool)

(assert (=> d!545144 (= (get!6065 lt!695380) (v!25578 lt!695380))))

(assert (=> b!1785913 d!545144))

(declare-fun d!545146 () Bool)

(declare-fun e!1143271 () Bool)

(assert (=> d!545146 e!1143271))

(declare-fun res!805522 () Bool)

(assert (=> d!545146 (=> (not res!805522) (not e!1143271))))

(assert (=> d!545146 (= res!805522 (isDefined!3426 (getRuleFromTag!578 thiss!24550 rules!3447 (tag!3932 (rule!5618 (_1!11040 lt!695353))))))))

(declare-fun lt!695597 () Unit!34050)

(declare-fun choose!11260 (LexerInterface!3159 List!19760 List!19759 Token!6626) Unit!34050)

(assert (=> d!545146 (= lt!695597 (choose!11260 thiss!24550 rules!3447 lt!695389 (_1!11040 lt!695353)))))

(assert (=> d!545146 (rulesInvariant!2828 thiss!24550 rules!3447)))

(assert (=> d!545146 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!578 thiss!24550 rules!3447 lt!695389 (_1!11040 lt!695353)) lt!695597)))

(declare-fun b!1786269 () Bool)

(declare-fun res!805523 () Bool)

(assert (=> b!1786269 (=> (not res!805523) (not e!1143271))))

(assert (=> b!1786269 (= res!805523 (matchR!2331 (regex!3530 (get!6066 (getRuleFromTag!578 thiss!24550 rules!3447 (tag!3932 (rule!5618 (_1!11040 lt!695353)))))) (list!8008 (charsOf!2179 (_1!11040 lt!695353)))))))

(declare-fun b!1786270 () Bool)

(assert (=> b!1786270 (= e!1143271 (= (rule!5618 (_1!11040 lt!695353)) (get!6066 (getRuleFromTag!578 thiss!24550 rules!3447 (tag!3932 (rule!5618 (_1!11040 lt!695353)))))))))

(assert (= (and d!545146 res!805522) b!1786269))

(assert (= (and b!1786269 res!805523) b!1786270))

(assert (=> d!545146 m!2209437))

(assert (=> d!545146 m!2209437))

(declare-fun m!2209871 () Bool)

(assert (=> d!545146 m!2209871))

(declare-fun m!2209873 () Bool)

(assert (=> d!545146 m!2209873))

(assert (=> d!545146 m!2209455))

(assert (=> b!1786269 m!2209437))

(declare-fun m!2209875 () Bool)

(assert (=> b!1786269 m!2209875))

(assert (=> b!1786269 m!2209481))

(declare-fun m!2209877 () Bool)

(assert (=> b!1786269 m!2209877))

(assert (=> b!1786269 m!2209429))

(assert (=> b!1786269 m!2209429))

(assert (=> b!1786269 m!2209481))

(assert (=> b!1786269 m!2209437))

(assert (=> b!1786270 m!2209437))

(assert (=> b!1786270 m!2209437))

(assert (=> b!1786270 m!2209875))

(assert (=> b!1785913 d!545146))

(declare-fun b!1786305 () Bool)

(declare-fun res!805547 () Bool)

(declare-fun e!1143290 () Bool)

(assert (=> b!1786305 (=> (not res!805547) (not e!1143290))))

(declare-fun lt!695645 () Token!6626)

(assert (=> b!1786305 (= res!805547 (matchR!2331 (regex!3530 (get!6066 (getRuleFromTag!578 thiss!24550 rules!3447 (tag!3932 (rule!5618 lt!695645))))) (list!8008 (charsOf!2179 lt!695645))))))

(declare-fun b!1786308 () Bool)

(declare-fun e!1143291 () Unit!34050)

(declare-fun Unit!34068 () Unit!34050)

(assert (=> b!1786308 (= e!1143291 Unit!34068)))

(declare-fun b!1786307 () Bool)

(declare-fun Unit!34069 () Unit!34050)

(assert (=> b!1786307 (= e!1143291 Unit!34069)))

(declare-fun lt!695657 () List!19759)

(assert (=> b!1786307 (= lt!695657 (++!5354 lt!695351 suffix!1421))))

(declare-fun lt!695659 () Unit!34050)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!354 (LexerInterface!3159 Rule!6860 List!19760 List!19759) Unit!34050)

(assert (=> b!1786307 (= lt!695659 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!354 thiss!24550 (rule!5618 lt!695645) rules!3447 lt!695657))))

(assert (=> b!1786307 (isEmpty!12448 (maxPrefixOneRule!1082 thiss!24550 (rule!5618 lt!695645) lt!695657))))

(declare-fun lt!695654 () Unit!34050)

(assert (=> b!1786307 (= lt!695654 lt!695659)))

(declare-fun lt!695650 () List!19759)

(assert (=> b!1786307 (= lt!695650 (list!8008 (charsOf!2179 lt!695645)))))

(declare-fun lt!695646 () Unit!34050)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!350 (LexerInterface!3159 Rule!6860 List!19759 List!19759) Unit!34050)

(assert (=> b!1786307 (= lt!695646 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!350 thiss!24550 (rule!5618 lt!695645) lt!695650 (++!5354 lt!695351 suffix!1421)))))

(assert (=> b!1786307 (not (matchR!2331 (regex!3530 (rule!5618 lt!695645)) lt!695650))))

(declare-fun lt!695647 () Unit!34050)

(assert (=> b!1786307 (= lt!695647 lt!695646)))

(assert (=> b!1786307 false))

(declare-fun b!1786306 () Bool)

(assert (=> b!1786306 (= e!1143290 (= (rule!5618 lt!695645) (get!6066 (getRuleFromTag!578 thiss!24550 rules!3447 (tag!3932 (rule!5618 lt!695645))))))))

(declare-fun d!545150 () Bool)

(assert (=> d!545150 (isDefined!3425 (maxPrefix!1713 thiss!24550 rules!3447 (++!5354 lt!695351 suffix!1421)))))

(declare-fun lt!695660 () Unit!34050)

(assert (=> d!545150 (= lt!695660 e!1143291)))

(declare-fun c!290470 () Bool)

(assert (=> d!545150 (= c!290470 (isEmpty!12448 (maxPrefix!1713 thiss!24550 rules!3447 (++!5354 lt!695351 suffix!1421))))))

(declare-fun lt!695644 () Unit!34050)

(declare-fun lt!695653 () Unit!34050)

(assert (=> d!545150 (= lt!695644 lt!695653)))

(assert (=> d!545150 e!1143290))

(declare-fun res!805546 () Bool)

(assert (=> d!545150 (=> (not res!805546) (not e!1143290))))

(assert (=> d!545150 (= res!805546 (isDefined!3426 (getRuleFromTag!578 thiss!24550 rules!3447 (tag!3932 (rule!5618 lt!695645)))))))

(assert (=> d!545150 (= lt!695653 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!578 thiss!24550 rules!3447 lt!695351 lt!695645))))

(declare-fun lt!695652 () Unit!34050)

(declare-fun lt!695649 () Unit!34050)

(assert (=> d!545150 (= lt!695652 lt!695649)))

(declare-fun lt!695656 () List!19759)

(assert (=> d!545150 (isPrefix!1770 lt!695656 (++!5354 lt!695351 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!346 (List!19759 List!19759 List!19759) Unit!34050)

(assert (=> d!545150 (= lt!695649 (lemmaPrefixStaysPrefixWhenAddingToSuffix!346 lt!695656 lt!695351 suffix!1421))))

(assert (=> d!545150 (= lt!695656 (list!8008 (charsOf!2179 lt!695645)))))

(declare-fun lt!695658 () Unit!34050)

(declare-fun lt!695648 () Unit!34050)

(assert (=> d!545150 (= lt!695658 lt!695648)))

(declare-fun lt!695655 () List!19759)

(declare-fun lt!695651 () List!19759)

(assert (=> d!545150 (isPrefix!1770 lt!695655 (++!5354 lt!695655 lt!695651))))

(assert (=> d!545150 (= lt!695648 (lemmaConcatTwoListThenFirstIsPrefix!1279 lt!695655 lt!695651))))

(assert (=> d!545150 (= lt!695651 (_2!11040 (get!6065 (maxPrefix!1713 thiss!24550 rules!3447 lt!695351))))))

(assert (=> d!545150 (= lt!695655 (list!8008 (charsOf!2179 lt!695645)))))

(declare-datatypes ((List!19765 0))(
  ( (Nil!19695) (Cons!19695 (h!25096 Token!6626) (t!167184 List!19765)) )
))
(declare-fun head!4185 (List!19765) Token!6626)

(declare-datatypes ((IArray!13109 0))(
  ( (IArray!13110 (innerList!6612 List!19765)) )
))
(declare-datatypes ((Conc!6552 0))(
  ( (Node!6552 (left!15791 Conc!6552) (right!16121 Conc!6552) (csize!13334 Int) (cheight!6763 Int)) (Leaf!9538 (xs!9428 IArray!13109) (csize!13335 Int)) (Empty!6552) )
))
(declare-datatypes ((BalanceConc!13048 0))(
  ( (BalanceConc!13049 (c!290579 Conc!6552)) )
))
(declare-fun list!8011 (BalanceConc!13048) List!19765)

(declare-datatypes ((tuple2!19280 0))(
  ( (tuple2!19281 (_1!11042 BalanceConc!13048) (_2!11042 BalanceConc!13044)) )
))
(declare-fun lex!1485 (LexerInterface!3159 List!19760 BalanceConc!13044) tuple2!19280)

(assert (=> d!545150 (= lt!695645 (head!4185 (list!8011 (_1!11042 (lex!1485 thiss!24550 rules!3447 (seqFromList!2499 lt!695351))))))))

(assert (=> d!545150 (not (isEmpty!12445 rules!3447))))

(assert (=> d!545150 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!681 thiss!24550 rules!3447 lt!695351 suffix!1421) lt!695660)))

(assert (= (and d!545150 res!805546) b!1786305))

(assert (= (and b!1786305 res!805547) b!1786306))

(assert (= (and d!545150 c!290470) b!1786307))

(assert (= (and d!545150 (not c!290470)) b!1786308))

(declare-fun m!2209931 () Bool)

(assert (=> b!1786305 m!2209931))

(declare-fun m!2209933 () Bool)

(assert (=> b!1786305 m!2209933))

(assert (=> b!1786305 m!2209931))

(declare-fun m!2209935 () Bool)

(assert (=> b!1786305 m!2209935))

(declare-fun m!2209937 () Bool)

(assert (=> b!1786305 m!2209937))

(declare-fun m!2209939 () Bool)

(assert (=> b!1786305 m!2209939))

(assert (=> b!1786305 m!2209933))

(assert (=> b!1786305 m!2209937))

(assert (=> b!1786307 m!2209933))

(assert (=> b!1786307 m!2209937))

(declare-fun m!2209941 () Bool)

(assert (=> b!1786307 m!2209941))

(declare-fun m!2209943 () Bool)

(assert (=> b!1786307 m!2209943))

(declare-fun m!2209945 () Bool)

(assert (=> b!1786307 m!2209945))

(assert (=> b!1786307 m!2209433))

(declare-fun m!2209947 () Bool)

(assert (=> b!1786307 m!2209947))

(assert (=> b!1786307 m!2209933))

(assert (=> b!1786307 m!2209433))

(declare-fun m!2209949 () Bool)

(assert (=> b!1786307 m!2209949))

(assert (=> b!1786307 m!2209941))

(assert (=> b!1786306 m!2209931))

(assert (=> b!1786306 m!2209931))

(assert (=> b!1786306 m!2209935))

(declare-fun m!2209951 () Bool)

(assert (=> d!545150 m!2209951))

(declare-fun m!2209953 () Bool)

(assert (=> d!545150 m!2209953))

(declare-fun m!2209955 () Bool)

(assert (=> d!545150 m!2209955))

(declare-fun m!2209957 () Bool)

(assert (=> d!545150 m!2209957))

(assert (=> d!545150 m!2209349))

(declare-fun m!2209959 () Bool)

(assert (=> d!545150 m!2209959))

(declare-fun m!2209961 () Bool)

(assert (=> d!545150 m!2209961))

(declare-fun m!2209963 () Bool)

(assert (=> d!545150 m!2209963))

(assert (=> d!545150 m!2209931))

(assert (=> d!545150 m!2209933))

(assert (=> d!545150 m!2209433))

(declare-fun m!2209965 () Bool)

(assert (=> d!545150 m!2209965))

(declare-fun m!2209967 () Bool)

(assert (=> d!545150 m!2209967))

(assert (=> d!545150 m!2209965))

(declare-fun m!2209969 () Bool)

(assert (=> d!545150 m!2209969))

(declare-fun m!2209971 () Bool)

(assert (=> d!545150 m!2209971))

(assert (=> d!545150 m!2209433))

(declare-fun m!2209973 () Bool)

(assert (=> d!545150 m!2209973))

(assert (=> d!545150 m!2209971))

(declare-fun m!2209975 () Bool)

(assert (=> d!545150 m!2209975))

(assert (=> d!545150 m!2209933))

(assert (=> d!545150 m!2209937))

(assert (=> d!545150 m!2209955))

(assert (=> d!545150 m!2209401))

(assert (=> d!545150 m!2209433))

(assert (=> d!545150 m!2209965))

(assert (=> d!545150 m!2209349))

(declare-fun m!2209977 () Bool)

(assert (=> d!545150 m!2209977))

(assert (=> d!545150 m!2209961))

(assert (=> d!545150 m!2209931))

(declare-fun m!2209979 () Bool)

(assert (=> d!545150 m!2209979))

(assert (=> b!1785913 d!545150))

(declare-fun d!545168 () Bool)

(declare-fun lt!695661 () BalanceConc!13044)

(assert (=> d!545168 (= (list!8008 lt!695661) (originalCharacters!4344 (_1!11040 lt!695353)))))

(assert (=> d!545168 (= lt!695661 (dynLambda!9713 (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) (value!110279 (_1!11040 lt!695353))))))

(assert (=> d!545168 (= (charsOf!2179 (_1!11040 lt!695353)) lt!695661)))

(declare-fun b_lambda!58627 () Bool)

(assert (=> (not b_lambda!58627) (not d!545168)))

(assert (=> d!545168 t!167094))

(declare-fun b_and!137515 () Bool)

(assert (= b_and!137509 (and (=> t!167094 result!130840) b_and!137515)))

(assert (=> d!545168 t!167096))

(declare-fun b_and!137517 () Bool)

(assert (= b_and!137511 (and (=> t!167096 result!130844) b_and!137517)))

(assert (=> d!545168 t!167098))

(declare-fun b_and!137519 () Bool)

(assert (= b_and!137513 (and (=> t!167098 result!130846) b_and!137519)))

(declare-fun m!2209981 () Bool)

(assert (=> d!545168 m!2209981))

(assert (=> d!545168 m!2209457))

(assert (=> b!1785913 d!545168))

(declare-fun d!545170 () Bool)

(declare-fun e!1143292 () Bool)

(assert (=> d!545170 e!1143292))

(declare-fun res!805551 () Bool)

(assert (=> d!545170 (=> res!805551 e!1143292)))

(declare-fun lt!695662 () Bool)

(assert (=> d!545170 (= res!805551 (not lt!695662))))

(declare-fun e!1143293 () Bool)

(assert (=> d!545170 (= lt!695662 e!1143293)))

(declare-fun res!805550 () Bool)

(assert (=> d!545170 (=> res!805550 e!1143293)))

(assert (=> d!545170 (= res!805550 (is-Nil!19689 lt!695351))))

(assert (=> d!545170 (= (isPrefix!1770 lt!695351 lt!695389) lt!695662)))

(declare-fun b!1786309 () Bool)

(declare-fun e!1143294 () Bool)

(assert (=> b!1786309 (= e!1143293 e!1143294)))

(declare-fun res!805548 () Bool)

(assert (=> b!1786309 (=> (not res!805548) (not e!1143294))))

(assert (=> b!1786309 (= res!805548 (not (is-Nil!19689 lt!695389)))))

(declare-fun b!1786311 () Bool)

(assert (=> b!1786311 (= e!1143294 (isPrefix!1770 (tail!2672 lt!695351) (tail!2672 lt!695389)))))

(declare-fun b!1786310 () Bool)

(declare-fun res!805549 () Bool)

(assert (=> b!1786310 (=> (not res!805549) (not e!1143294))))

(assert (=> b!1786310 (= res!805549 (= (head!4183 lt!695351) (head!4183 lt!695389)))))

(declare-fun b!1786312 () Bool)

(assert (=> b!1786312 (= e!1143292 (>= (size!15642 lt!695389) (size!15642 lt!695351)))))

(assert (= (and d!545170 (not res!805550)) b!1786309))

(assert (= (and b!1786309 res!805548) b!1786310))

(assert (= (and b!1786310 res!805549) b!1786311))

(assert (= (and d!545170 (not res!805551)) b!1786312))

(assert (=> b!1786311 m!2209725))

(assert (=> b!1786311 m!2209813))

(assert (=> b!1786311 m!2209725))

(assert (=> b!1786311 m!2209813))

(declare-fun m!2209983 () Bool)

(assert (=> b!1786311 m!2209983))

(assert (=> b!1786310 m!2209733))

(assert (=> b!1786310 m!2209819))

(assert (=> b!1786312 m!2209821))

(assert (=> b!1786312 m!2209765))

(assert (=> b!1785913 d!545170))

(declare-fun b!1786313 () Bool)

(declare-fun e!1143296 () Option!4082)

(declare-fun lt!695663 () Option!4082)

(declare-fun lt!695664 () Option!4082)

(assert (=> b!1786313 (= e!1143296 (ite (and (is-None!4081 lt!695663) (is-None!4081 lt!695664)) None!4081 (ite (is-None!4081 lt!695664) lt!695663 (ite (is-None!4081 lt!695663) lt!695664 (ite (>= (size!15641 (_1!11040 (v!25578 lt!695663))) (size!15641 (_1!11040 (v!25578 lt!695664)))) lt!695663 lt!695664)))))))

(declare-fun call!111369 () Option!4082)

(assert (=> b!1786313 (= lt!695663 call!111369)))

(assert (=> b!1786313 (= lt!695664 (maxPrefix!1713 thiss!24550 (t!167113 rules!3447) lt!695389))))

(declare-fun bm!111364 () Bool)

(assert (=> bm!111364 (= call!111369 (maxPrefixOneRule!1082 thiss!24550 (h!25091 rules!3447) lt!695389))))

(declare-fun b!1786314 () Bool)

(declare-fun e!1143297 () Bool)

(declare-fun e!1143295 () Bool)

(assert (=> b!1786314 (= e!1143297 e!1143295)))

(declare-fun res!805554 () Bool)

(assert (=> b!1786314 (=> (not res!805554) (not e!1143295))))

(declare-fun lt!695666 () Option!4082)

(assert (=> b!1786314 (= res!805554 (isDefined!3425 lt!695666))))

(declare-fun b!1786315 () Bool)

(declare-fun res!805558 () Bool)

(assert (=> b!1786315 (=> (not res!805558) (not e!1143295))))

(assert (=> b!1786315 (= res!805558 (= (value!110279 (_1!11040 (get!6065 lt!695666))) (apply!5330 (transformation!3530 (rule!5618 (_1!11040 (get!6065 lt!695666)))) (seqFromList!2499 (originalCharacters!4344 (_1!11040 (get!6065 lt!695666)))))))))

(declare-fun d!545172 () Bool)

(assert (=> d!545172 e!1143297))

(declare-fun res!805553 () Bool)

(assert (=> d!545172 (=> res!805553 e!1143297)))

(assert (=> d!545172 (= res!805553 (isEmpty!12448 lt!695666))))

(assert (=> d!545172 (= lt!695666 e!1143296)))

(declare-fun c!290471 () Bool)

(assert (=> d!545172 (= c!290471 (and (is-Cons!19690 rules!3447) (is-Nil!19690 (t!167113 rules!3447))))))

(declare-fun lt!695667 () Unit!34050)

(declare-fun lt!695665 () Unit!34050)

(assert (=> d!545172 (= lt!695667 lt!695665)))

(assert (=> d!545172 (isPrefix!1770 lt!695389 lt!695389)))

(assert (=> d!545172 (= lt!695665 (lemmaIsPrefixRefl!1165 lt!695389 lt!695389))))

(assert (=> d!545172 (rulesValidInductive!1201 thiss!24550 rules!3447)))

(assert (=> d!545172 (= (maxPrefix!1713 thiss!24550 rules!3447 lt!695389) lt!695666)))

(declare-fun b!1786316 () Bool)

(assert (=> b!1786316 (= e!1143296 call!111369)))

(declare-fun b!1786317 () Bool)

(assert (=> b!1786317 (= e!1143295 (contains!3562 rules!3447 (rule!5618 (_1!11040 (get!6065 lt!695666)))))))

(declare-fun b!1786318 () Bool)

(declare-fun res!805557 () Bool)

(assert (=> b!1786318 (=> (not res!805557) (not e!1143295))))

(assert (=> b!1786318 (= res!805557 (matchR!2331 (regex!3530 (rule!5618 (_1!11040 (get!6065 lt!695666)))) (list!8008 (charsOf!2179 (_1!11040 (get!6065 lt!695666))))))))

(declare-fun b!1786319 () Bool)

(declare-fun res!805555 () Bool)

(assert (=> b!1786319 (=> (not res!805555) (not e!1143295))))

(assert (=> b!1786319 (= res!805555 (< (size!15642 (_2!11040 (get!6065 lt!695666))) (size!15642 lt!695389)))))

(declare-fun b!1786320 () Bool)

(declare-fun res!805556 () Bool)

(assert (=> b!1786320 (=> (not res!805556) (not e!1143295))))

(assert (=> b!1786320 (= res!805556 (= (++!5354 (list!8008 (charsOf!2179 (_1!11040 (get!6065 lt!695666)))) (_2!11040 (get!6065 lt!695666))) lt!695389))))

(declare-fun b!1786321 () Bool)

(declare-fun res!805552 () Bool)

(assert (=> b!1786321 (=> (not res!805552) (not e!1143295))))

(assert (=> b!1786321 (= res!805552 (= (list!8008 (charsOf!2179 (_1!11040 (get!6065 lt!695666)))) (originalCharacters!4344 (_1!11040 (get!6065 lt!695666)))))))

(assert (= (and d!545172 c!290471) b!1786316))

(assert (= (and d!545172 (not c!290471)) b!1786313))

(assert (= (or b!1786316 b!1786313) bm!111364))

(assert (= (and d!545172 (not res!805553)) b!1786314))

(assert (= (and b!1786314 res!805554) b!1786321))

(assert (= (and b!1786321 res!805552) b!1786319))

(assert (= (and b!1786319 res!805555) b!1786320))

(assert (= (and b!1786320 res!805556) b!1786315))

(assert (= (and b!1786315 res!805558) b!1786318))

(assert (= (and b!1786318 res!805557) b!1786317))

(declare-fun m!2209985 () Bool)

(assert (=> b!1786314 m!2209985))

(declare-fun m!2209987 () Bool)

(assert (=> d!545172 m!2209987))

(declare-fun m!2209989 () Bool)

(assert (=> d!545172 m!2209989))

(declare-fun m!2209991 () Bool)

(assert (=> d!545172 m!2209991))

(assert (=> d!545172 m!2209781))

(declare-fun m!2209993 () Bool)

(assert (=> b!1786313 m!2209993))

(declare-fun m!2209995 () Bool)

(assert (=> b!1786317 m!2209995))

(declare-fun m!2209997 () Bool)

(assert (=> b!1786317 m!2209997))

(declare-fun m!2209999 () Bool)

(assert (=> bm!111364 m!2209999))

(assert (=> b!1786318 m!2209995))

(declare-fun m!2210001 () Bool)

(assert (=> b!1786318 m!2210001))

(assert (=> b!1786318 m!2210001))

(declare-fun m!2210003 () Bool)

(assert (=> b!1786318 m!2210003))

(assert (=> b!1786318 m!2210003))

(declare-fun m!2210005 () Bool)

(assert (=> b!1786318 m!2210005))

(assert (=> b!1786321 m!2209995))

(assert (=> b!1786321 m!2210001))

(assert (=> b!1786321 m!2210001))

(assert (=> b!1786321 m!2210003))

(assert (=> b!1786320 m!2209995))

(assert (=> b!1786320 m!2210001))

(assert (=> b!1786320 m!2210001))

(assert (=> b!1786320 m!2210003))

(assert (=> b!1786320 m!2210003))

(declare-fun m!2210007 () Bool)

(assert (=> b!1786320 m!2210007))

(assert (=> b!1786315 m!2209995))

(declare-fun m!2210009 () Bool)

(assert (=> b!1786315 m!2210009))

(assert (=> b!1786315 m!2210009))

(declare-fun m!2210011 () Bool)

(assert (=> b!1786315 m!2210011))

(assert (=> b!1786319 m!2209995))

(declare-fun m!2210013 () Bool)

(assert (=> b!1786319 m!2210013))

(assert (=> b!1786319 m!2209821))

(assert (=> b!1785913 d!545172))

(declare-fun b!1786330 () Bool)

(declare-fun e!1143303 () List!19759)

(assert (=> b!1786330 (= e!1143303 suffix!1421)))

(declare-fun d!545174 () Bool)

(declare-fun e!1143302 () Bool)

(assert (=> d!545174 e!1143302))

(declare-fun res!805564 () Bool)

(assert (=> d!545174 (=> (not res!805564) (not e!1143302))))

(declare-fun lt!695670 () List!19759)

(declare-fun content!2869 (List!19759) (Set C!9890))

(assert (=> d!545174 (= res!805564 (= (content!2869 lt!695670) (set.union (content!2869 lt!695351) (content!2869 suffix!1421))))))

(assert (=> d!545174 (= lt!695670 e!1143303)))

(declare-fun c!290474 () Bool)

(assert (=> d!545174 (= c!290474 (is-Nil!19689 lt!695351))))

(assert (=> d!545174 (= (++!5354 lt!695351 suffix!1421) lt!695670)))

(declare-fun b!1786333 () Bool)

(assert (=> b!1786333 (= e!1143302 (or (not (= suffix!1421 Nil!19689)) (= lt!695670 lt!695351)))))

(declare-fun b!1786332 () Bool)

(declare-fun res!805563 () Bool)

(assert (=> b!1786332 (=> (not res!805563) (not e!1143302))))

(assert (=> b!1786332 (= res!805563 (= (size!15642 lt!695670) (+ (size!15642 lt!695351) (size!15642 suffix!1421))))))

(declare-fun b!1786331 () Bool)

(assert (=> b!1786331 (= e!1143303 (Cons!19689 (h!25090 lt!695351) (++!5354 (t!167112 lt!695351) suffix!1421)))))

(assert (= (and d!545174 c!290474) b!1786330))

(assert (= (and d!545174 (not c!290474)) b!1786331))

(assert (= (and d!545174 res!805564) b!1786332))

(assert (= (and b!1786332 res!805563) b!1786333))

(declare-fun m!2210015 () Bool)

(assert (=> d!545174 m!2210015))

(declare-fun m!2210017 () Bool)

(assert (=> d!545174 m!2210017))

(declare-fun m!2210019 () Bool)

(assert (=> d!545174 m!2210019))

(declare-fun m!2210021 () Bool)

(assert (=> b!1786332 m!2210021))

(assert (=> b!1786332 m!2209765))

(declare-fun m!2210023 () Bool)

(assert (=> b!1786332 m!2210023))

(declare-fun m!2210025 () Bool)

(assert (=> b!1786331 m!2210025))

(assert (=> b!1785913 d!545174))

(declare-fun b!1786334 () Bool)

(declare-fun e!1143305 () List!19759)

(assert (=> b!1786334 (= e!1143305 (_2!11040 lt!695353))))

(declare-fun d!545176 () Bool)

(declare-fun e!1143304 () Bool)

(assert (=> d!545176 e!1143304))

(declare-fun res!805566 () Bool)

(assert (=> d!545176 (=> (not res!805566) (not e!1143304))))

(declare-fun lt!695671 () List!19759)

(assert (=> d!545176 (= res!805566 (= (content!2869 lt!695671) (set.union (content!2869 lt!695345) (content!2869 (_2!11040 lt!695353)))))))

(assert (=> d!545176 (= lt!695671 e!1143305)))

(declare-fun c!290475 () Bool)

(assert (=> d!545176 (= c!290475 (is-Nil!19689 lt!695345))))

(assert (=> d!545176 (= (++!5354 lt!695345 (_2!11040 lt!695353)) lt!695671)))

(declare-fun b!1786337 () Bool)

(assert (=> b!1786337 (= e!1143304 (or (not (= (_2!11040 lt!695353) Nil!19689)) (= lt!695671 lt!695345)))))

(declare-fun b!1786336 () Bool)

(declare-fun res!805565 () Bool)

(assert (=> b!1786336 (=> (not res!805565) (not e!1143304))))

(assert (=> b!1786336 (= res!805565 (= (size!15642 lt!695671) (+ (size!15642 lt!695345) (size!15642 (_2!11040 lt!695353)))))))

(declare-fun b!1786335 () Bool)

(assert (=> b!1786335 (= e!1143305 (Cons!19689 (h!25090 lt!695345) (++!5354 (t!167112 lt!695345) (_2!11040 lt!695353))))))

(assert (= (and d!545176 c!290475) b!1786334))

(assert (= (and d!545176 (not c!290475)) b!1786335))

(assert (= (and d!545176 res!805566) b!1786336))

(assert (= (and b!1786336 res!805565) b!1786337))

(declare-fun m!2210027 () Bool)

(assert (=> d!545176 m!2210027))

(declare-fun m!2210029 () Bool)

(assert (=> d!545176 m!2210029))

(declare-fun m!2210031 () Bool)

(assert (=> d!545176 m!2210031))

(declare-fun m!2210033 () Bool)

(assert (=> b!1786336 m!2210033))

(assert (=> b!1786336 m!2209487))

(declare-fun m!2210035 () Bool)

(assert (=> b!1786336 m!2210035))

(declare-fun m!2210037 () Bool)

(assert (=> b!1786335 m!2210037))

(assert (=> b!1785913 d!545176))

(declare-fun d!545178 () Bool)

(assert (=> d!545178 (isPrefix!1770 lt!695351 (++!5354 lt!695351 suffix!1421))))

(declare-fun lt!695672 () Unit!34050)

(assert (=> d!545178 (= lt!695672 (choose!11259 lt!695351 suffix!1421))))

(assert (=> d!545178 (= (lemmaConcatTwoListThenFirstIsPrefix!1279 lt!695351 suffix!1421) lt!695672)))

(declare-fun bs!405419 () Bool)

(assert (= bs!405419 d!545178))

(assert (=> bs!405419 m!2209433))

(assert (=> bs!405419 m!2209433))

(declare-fun m!2210039 () Bool)

(assert (=> bs!405419 m!2210039))

(declare-fun m!2210041 () Bool)

(assert (=> bs!405419 m!2210041))

(assert (=> b!1785913 d!545178))

(declare-fun d!545180 () Bool)

(declare-fun lt!695673 () Int)

(assert (=> d!545180 (= lt!695673 (size!15642 (list!8008 lt!695355)))))

(assert (=> d!545180 (= lt!695673 (size!15647 (c!290421 lt!695355)))))

(assert (=> d!545180 (= (size!15643 lt!695355) lt!695673)))

(declare-fun bs!405420 () Bool)

(assert (= bs!405420 d!545180))

(assert (=> bs!405420 m!2209351))

(assert (=> bs!405420 m!2209351))

(declare-fun m!2210043 () Bool)

(assert (=> bs!405420 m!2210043))

(declare-fun m!2210045 () Bool)

(assert (=> bs!405420 m!2210045))

(assert (=> b!1785911 d!545180))

(declare-fun b!1786338 () Bool)

(declare-fun e!1143308 () Bool)

(declare-fun lt!695674 () Bool)

(assert (=> b!1786338 (= e!1143308 (not lt!695674))))

(declare-fun b!1786339 () Bool)

(declare-fun res!805574 () Bool)

(declare-fun e!1143311 () Bool)

(assert (=> b!1786339 (=> (not res!805574) (not e!1143311))))

(declare-fun call!111370 () Bool)

(assert (=> b!1786339 (= res!805574 (not call!111370))))

(declare-fun b!1786340 () Bool)

(declare-fun e!1143309 () Bool)

(assert (=> b!1786340 (= e!1143309 (= lt!695674 call!111370))))

(declare-fun b!1786341 () Bool)

(declare-fun e!1143307 () Bool)

(assert (=> b!1786341 (= e!1143307 (nullable!1496 lt!695381))))

(declare-fun b!1786342 () Bool)

(assert (=> b!1786342 (= e!1143307 (matchR!2331 (derivativeStep!1265 lt!695381 (head!4183 lt!695351)) (tail!2672 lt!695351)))))

(declare-fun b!1786343 () Bool)

(declare-fun e!1143310 () Bool)

(assert (=> b!1786343 (= e!1143310 (not (= (head!4183 lt!695351) (c!290420 lt!695381))))))

(declare-fun b!1786344 () Bool)

(declare-fun res!805571 () Bool)

(assert (=> b!1786344 (=> (not res!805571) (not e!1143311))))

(assert (=> b!1786344 (= res!805571 (isEmpty!12444 (tail!2672 lt!695351)))))

(declare-fun b!1786345 () Bool)

(assert (=> b!1786345 (= e!1143309 e!1143308)))

(declare-fun c!290477 () Bool)

(assert (=> b!1786345 (= c!290477 (is-EmptyLang!4858 lt!695381))))

(declare-fun d!545182 () Bool)

(assert (=> d!545182 e!1143309))

(declare-fun c!290478 () Bool)

(assert (=> d!545182 (= c!290478 (is-EmptyExpr!4858 lt!695381))))

(assert (=> d!545182 (= lt!695674 e!1143307)))

(declare-fun c!290476 () Bool)

(assert (=> d!545182 (= c!290476 (isEmpty!12444 lt!695351))))

(assert (=> d!545182 (validRegex!1970 lt!695381)))

(assert (=> d!545182 (= (matchR!2331 lt!695381 lt!695351) lt!695674)))

(declare-fun b!1786346 () Bool)

(declare-fun e!1143312 () Bool)

(declare-fun e!1143306 () Bool)

(assert (=> b!1786346 (= e!1143312 e!1143306)))

(declare-fun res!805572 () Bool)

(assert (=> b!1786346 (=> (not res!805572) (not e!1143306))))

(assert (=> b!1786346 (= res!805572 (not lt!695674))))

(declare-fun b!1786347 () Bool)

(assert (=> b!1786347 (= e!1143311 (= (head!4183 lt!695351) (c!290420 lt!695381)))))

(declare-fun b!1786348 () Bool)

(declare-fun res!805568 () Bool)

(assert (=> b!1786348 (=> res!805568 e!1143312)))

(assert (=> b!1786348 (= res!805568 e!1143311)))

(declare-fun res!805567 () Bool)

(assert (=> b!1786348 (=> (not res!805567) (not e!1143311))))

(assert (=> b!1786348 (= res!805567 lt!695674)))

(declare-fun b!1786349 () Bool)

(assert (=> b!1786349 (= e!1143306 e!1143310)))

(declare-fun res!805573 () Bool)

(assert (=> b!1786349 (=> res!805573 e!1143310)))

(assert (=> b!1786349 (= res!805573 call!111370)))

(declare-fun b!1786350 () Bool)

(declare-fun res!805570 () Bool)

(assert (=> b!1786350 (=> res!805570 e!1143310)))

(assert (=> b!1786350 (= res!805570 (not (isEmpty!12444 (tail!2672 lt!695351))))))

(declare-fun b!1786351 () Bool)

(declare-fun res!805569 () Bool)

(assert (=> b!1786351 (=> res!805569 e!1143312)))

(assert (=> b!1786351 (= res!805569 (not (is-ElementMatch!4858 lt!695381)))))

(assert (=> b!1786351 (= e!1143308 e!1143312)))

(declare-fun bm!111365 () Bool)

(assert (=> bm!111365 (= call!111370 (isEmpty!12444 lt!695351))))

(assert (= (and d!545182 c!290476) b!1786341))

(assert (= (and d!545182 (not c!290476)) b!1786342))

(assert (= (and d!545182 c!290478) b!1786340))

(assert (= (and d!545182 (not c!290478)) b!1786345))

(assert (= (and b!1786345 c!290477) b!1786338))

(assert (= (and b!1786345 (not c!290477)) b!1786351))

(assert (= (and b!1786351 (not res!805569)) b!1786348))

(assert (= (and b!1786348 res!805567) b!1786339))

(assert (= (and b!1786339 res!805574) b!1786344))

(assert (= (and b!1786344 res!805571) b!1786347))

(assert (= (and b!1786348 (not res!805568)) b!1786346))

(assert (= (and b!1786346 res!805572) b!1786349))

(assert (= (and b!1786349 (not res!805573)) b!1786350))

(assert (= (and b!1786350 (not res!805570)) b!1786343))

(assert (= (or b!1786340 b!1786339 b!1786349) bm!111365))

(assert (=> b!1786350 m!2209725))

(assert (=> b!1786350 m!2209725))

(assert (=> b!1786350 m!2209727))

(declare-fun m!2210047 () Bool)

(assert (=> b!1786341 m!2210047))

(assert (=> b!1786344 m!2209725))

(assert (=> b!1786344 m!2209725))

(assert (=> b!1786344 m!2209727))

(assert (=> bm!111365 m!2209731))

(assert (=> b!1786343 m!2209733))

(assert (=> b!1786347 m!2209733))

(assert (=> d!545182 m!2209731))

(declare-fun m!2210049 () Bool)

(assert (=> d!545182 m!2210049))

(assert (=> b!1786342 m!2209733))

(assert (=> b!1786342 m!2209733))

(declare-fun m!2210051 () Bool)

(assert (=> b!1786342 m!2210051))

(assert (=> b!1786342 m!2209725))

(assert (=> b!1786342 m!2210051))

(assert (=> b!1786342 m!2209725))

(declare-fun m!2210053 () Bool)

(assert (=> b!1786342 m!2210053))

(assert (=> b!1785911 d!545182))

(declare-fun d!545184 () Bool)

(assert (=> d!545184 (matchR!2331 (rulesRegex!886 thiss!24550 rules!3447) (list!8008 (charsOf!2179 token!523)))))

(declare-fun lt!695677 () Unit!34050)

(declare-fun choose!11262 (LexerInterface!3159 List!19760 List!19759 Token!6626 Rule!6860 List!19759) Unit!34050)

(assert (=> d!545184 (= lt!695677 (choose!11262 thiss!24550 rules!3447 lt!695351 token!523 rule!422 Nil!19689))))

(assert (=> d!545184 (not (isEmpty!12445 rules!3447))))

(assert (=> d!545184 (= (lemmaMaxPrefixThenMatchesRulesRegex!237 thiss!24550 rules!3447 lt!695351 token!523 rule!422 Nil!19689) lt!695677)))

(declare-fun bs!405421 () Bool)

(assert (= bs!405421 d!545184))

(assert (=> bs!405421 m!2209449))

(assert (=> bs!405421 m!2209401))

(declare-fun m!2210055 () Bool)

(assert (=> bs!405421 m!2210055))

(assert (=> bs!405421 m!2209449))

(declare-fun m!2210057 () Bool)

(assert (=> bs!405421 m!2210057))

(declare-fun m!2210059 () Bool)

(assert (=> bs!405421 m!2210059))

(assert (=> bs!405421 m!2209353))

(assert (=> bs!405421 m!2209353))

(assert (=> bs!405421 m!2210057))

(assert (=> b!1785911 d!545184))

(declare-fun b!1786352 () Bool)

(declare-fun e!1143315 () Bool)

(declare-fun lt!695678 () Bool)

(assert (=> b!1786352 (= e!1143315 (not lt!695678))))

(declare-fun b!1786353 () Bool)

(declare-fun res!805582 () Bool)

(declare-fun e!1143318 () Bool)

(assert (=> b!1786353 (=> (not res!805582) (not e!1143318))))

(declare-fun call!111371 () Bool)

(assert (=> b!1786353 (= res!805582 (not call!111371))))

(declare-fun b!1786354 () Bool)

(declare-fun e!1143316 () Bool)

(assert (=> b!1786354 (= e!1143316 (= lt!695678 call!111371))))

(declare-fun b!1786355 () Bool)

(declare-fun e!1143314 () Bool)

(assert (=> b!1786355 (= e!1143314 (nullable!1496 (regex!3530 (rule!5618 (_1!11040 lt!695353)))))))

(declare-fun b!1786356 () Bool)

(assert (=> b!1786356 (= e!1143314 (matchR!2331 (derivativeStep!1265 (regex!3530 (rule!5618 (_1!11040 lt!695353))) (head!4183 lt!695345)) (tail!2672 lt!695345)))))

(declare-fun b!1786357 () Bool)

(declare-fun e!1143317 () Bool)

(assert (=> b!1786357 (= e!1143317 (not (= (head!4183 lt!695345) (c!290420 (regex!3530 (rule!5618 (_1!11040 lt!695353)))))))))

(declare-fun b!1786358 () Bool)

(declare-fun res!805579 () Bool)

(assert (=> b!1786358 (=> (not res!805579) (not e!1143318))))

(assert (=> b!1786358 (= res!805579 (isEmpty!12444 (tail!2672 lt!695345)))))

(declare-fun b!1786359 () Bool)

(assert (=> b!1786359 (= e!1143316 e!1143315)))

(declare-fun c!290480 () Bool)

(assert (=> b!1786359 (= c!290480 (is-EmptyLang!4858 (regex!3530 (rule!5618 (_1!11040 lt!695353)))))))

(declare-fun d!545186 () Bool)

(assert (=> d!545186 e!1143316))

(declare-fun c!290481 () Bool)

(assert (=> d!545186 (= c!290481 (is-EmptyExpr!4858 (regex!3530 (rule!5618 (_1!11040 lt!695353)))))))

(assert (=> d!545186 (= lt!695678 e!1143314)))

(declare-fun c!290479 () Bool)

(assert (=> d!545186 (= c!290479 (isEmpty!12444 lt!695345))))

(assert (=> d!545186 (validRegex!1970 (regex!3530 (rule!5618 (_1!11040 lt!695353))))))

(assert (=> d!545186 (= (matchR!2331 (regex!3530 (rule!5618 (_1!11040 lt!695353))) lt!695345) lt!695678)))

(declare-fun b!1786360 () Bool)

(declare-fun e!1143319 () Bool)

(declare-fun e!1143313 () Bool)

(assert (=> b!1786360 (= e!1143319 e!1143313)))

(declare-fun res!805580 () Bool)

(assert (=> b!1786360 (=> (not res!805580) (not e!1143313))))

(assert (=> b!1786360 (= res!805580 (not lt!695678))))

(declare-fun b!1786361 () Bool)

(assert (=> b!1786361 (= e!1143318 (= (head!4183 lt!695345) (c!290420 (regex!3530 (rule!5618 (_1!11040 lt!695353))))))))

(declare-fun b!1786362 () Bool)

(declare-fun res!805576 () Bool)

(assert (=> b!1786362 (=> res!805576 e!1143319)))

(assert (=> b!1786362 (= res!805576 e!1143318)))

(declare-fun res!805575 () Bool)

(assert (=> b!1786362 (=> (not res!805575) (not e!1143318))))

(assert (=> b!1786362 (= res!805575 lt!695678)))

(declare-fun b!1786363 () Bool)

(assert (=> b!1786363 (= e!1143313 e!1143317)))

(declare-fun res!805581 () Bool)

(assert (=> b!1786363 (=> res!805581 e!1143317)))

(assert (=> b!1786363 (= res!805581 call!111371)))

(declare-fun b!1786364 () Bool)

(declare-fun res!805578 () Bool)

(assert (=> b!1786364 (=> res!805578 e!1143317)))

(assert (=> b!1786364 (= res!805578 (not (isEmpty!12444 (tail!2672 lt!695345))))))

(declare-fun b!1786365 () Bool)

(declare-fun res!805577 () Bool)

(assert (=> b!1786365 (=> res!805577 e!1143319)))

(assert (=> b!1786365 (= res!805577 (not (is-ElementMatch!4858 (regex!3530 (rule!5618 (_1!11040 lt!695353))))))))

(assert (=> b!1786365 (= e!1143315 e!1143319)))

(declare-fun bm!111366 () Bool)

(assert (=> bm!111366 (= call!111371 (isEmpty!12444 lt!695345))))

(assert (= (and d!545186 c!290479) b!1786355))

(assert (= (and d!545186 (not c!290479)) b!1786356))

(assert (= (and d!545186 c!290481) b!1786354))

(assert (= (and d!545186 (not c!290481)) b!1786359))

(assert (= (and b!1786359 c!290480) b!1786352))

(assert (= (and b!1786359 (not c!290480)) b!1786365))

(assert (= (and b!1786365 (not res!805577)) b!1786362))

(assert (= (and b!1786362 res!805575) b!1786353))

(assert (= (and b!1786353 res!805582) b!1786358))

(assert (= (and b!1786358 res!805579) b!1786361))

(assert (= (and b!1786362 (not res!805576)) b!1786360))

(assert (= (and b!1786360 res!805580) b!1786363))

(assert (= (and b!1786363 (not res!805581)) b!1786364))

(assert (= (and b!1786364 (not res!805578)) b!1786357))

(assert (= (or b!1786354 b!1786353 b!1786363) bm!111366))

(assert (=> b!1786364 m!2209811))

(assert (=> b!1786364 m!2209811))

(declare-fun m!2210061 () Bool)

(assert (=> b!1786364 m!2210061))

(declare-fun m!2210063 () Bool)

(assert (=> b!1786355 m!2210063))

(assert (=> b!1786358 m!2209811))

(assert (=> b!1786358 m!2209811))

(assert (=> b!1786358 m!2210061))

(declare-fun m!2210065 () Bool)

(assert (=> bm!111366 m!2210065))

(assert (=> b!1786357 m!2209817))

(assert (=> b!1786361 m!2209817))

(assert (=> d!545186 m!2210065))

(declare-fun m!2210067 () Bool)

(assert (=> d!545186 m!2210067))

(assert (=> b!1786356 m!2209817))

(assert (=> b!1786356 m!2209817))

(declare-fun m!2210069 () Bool)

(assert (=> b!1786356 m!2210069))

(assert (=> b!1786356 m!2209811))

(assert (=> b!1786356 m!2210069))

(assert (=> b!1786356 m!2209811))

(declare-fun m!2210071 () Bool)

(assert (=> b!1786356 m!2210071))

(assert (=> b!1785890 d!545186))

(declare-fun b!1786376 () Bool)

(declare-fun e!1143327 () Bool)

(declare-fun e!1143328 () Bool)

(assert (=> b!1786376 (= e!1143327 e!1143328)))

(declare-fun c!290486 () Bool)

(assert (=> b!1786376 (= c!290486 (is-IntegerValue!10861 (dynLambda!9714 (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) lt!695347)))))

(declare-fun b!1786377 () Bool)

(declare-fun inv!17 (TokenValue!3620) Bool)

(assert (=> b!1786377 (= e!1143328 (inv!17 (dynLambda!9714 (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) lt!695347)))))

(declare-fun b!1786378 () Bool)

(declare-fun e!1143326 () Bool)

(declare-fun inv!15 (TokenValue!3620) Bool)

(assert (=> b!1786378 (= e!1143326 (inv!15 (dynLambda!9714 (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) lt!695347)))))

(declare-fun d!545188 () Bool)

(declare-fun c!290487 () Bool)

(assert (=> d!545188 (= c!290487 (is-IntegerValue!10860 (dynLambda!9714 (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) lt!695347)))))

(assert (=> d!545188 (= (inv!21 (dynLambda!9714 (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) lt!695347)) e!1143327)))

(declare-fun b!1786379 () Bool)

(declare-fun res!805585 () Bool)

(assert (=> b!1786379 (=> res!805585 e!1143326)))

(assert (=> b!1786379 (= res!805585 (not (is-IntegerValue!10862 (dynLambda!9714 (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) lt!695347))))))

(assert (=> b!1786379 (= e!1143328 e!1143326)))

(declare-fun b!1786380 () Bool)

(declare-fun inv!16 (TokenValue!3620) Bool)

(assert (=> b!1786380 (= e!1143327 (inv!16 (dynLambda!9714 (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) lt!695347)))))

(assert (= (and d!545188 c!290487) b!1786380))

(assert (= (and d!545188 (not c!290487)) b!1786376))

(assert (= (and b!1786376 c!290486) b!1786377))

(assert (= (and b!1786376 (not c!290486)) b!1786379))

(assert (= (and b!1786379 (not res!805585)) b!1786378))

(declare-fun m!2210073 () Bool)

(assert (=> b!1786377 m!2210073))

(declare-fun m!2210075 () Bool)

(assert (=> b!1786378 m!2210075))

(declare-fun m!2210077 () Bool)

(assert (=> b!1786380 m!2210077))

(assert (=> tb!108757 d!545188))

(declare-fun d!545190 () Bool)

(assert (=> d!545190 (= (isEmpty!12444 (_2!11040 lt!695369)) (is-Nil!19689 (_2!11040 lt!695369)))))

(assert (=> b!1785915 d!545190))

(declare-fun d!545192 () Bool)

(assert (=> d!545192 (= (maxPrefixOneRule!1082 thiss!24550 (rule!5618 (_1!11040 lt!695353)) lt!695389) (Some!4081 (tuple2!19277 (Token!6627 (apply!5330 (transformation!3530 (rule!5618 (_1!11040 lt!695353))) (seqFromList!2499 lt!695345)) (rule!5618 (_1!11040 lt!695353)) (size!15642 lt!695345) lt!695345) (_2!11040 lt!695353))))))

(declare-fun lt!695681 () Unit!34050)

(declare-fun choose!11264 (LexerInterface!3159 List!19760 List!19759 List!19759 List!19759 Rule!6860) Unit!34050)

(assert (=> d!545192 (= lt!695681 (choose!11264 thiss!24550 rules!3447 lt!695345 lt!695389 (_2!11040 lt!695353) (rule!5618 (_1!11040 lt!695353))))))

(assert (=> d!545192 (not (isEmpty!12445 rules!3447))))

(assert (=> d!545192 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!460 thiss!24550 rules!3447 lt!695345 lt!695389 (_2!11040 lt!695353) (rule!5618 (_1!11040 lt!695353))) lt!695681)))

(declare-fun bs!405422 () Bool)

(assert (= bs!405422 d!545192))

(assert (=> bs!405422 m!2209401))

(assert (=> bs!405422 m!2209499))

(assert (=> bs!405422 m!2209487))

(declare-fun m!2210079 () Bool)

(assert (=> bs!405422 m!2210079))

(assert (=> bs!405422 m!2209489))

(assert (=> bs!405422 m!2209489))

(assert (=> bs!405422 m!2209491))

(assert (=> b!1785894 d!545192))

(declare-fun b!1786442 () Bool)

(declare-fun e!1143357 () Bool)

(declare-fun e!1143356 () Bool)

(assert (=> b!1786442 (= e!1143357 e!1143356)))

(declare-fun res!805633 () Bool)

(assert (=> b!1786442 (=> (not res!805633) (not e!1143356))))

(declare-fun lt!695763 () Option!4082)

(assert (=> b!1786442 (= res!805633 (matchR!2331 (regex!3530 (rule!5618 (_1!11040 lt!695353))) (list!8008 (charsOf!2179 (_1!11040 (get!6065 lt!695763))))))))

(declare-fun b!1786443 () Bool)

(declare-fun res!805631 () Bool)

(assert (=> b!1786443 (=> (not res!805631) (not e!1143356))))

(assert (=> b!1786443 (= res!805631 (= (value!110279 (_1!11040 (get!6065 lt!695763))) (apply!5330 (transformation!3530 (rule!5618 (_1!11040 (get!6065 lt!695763)))) (seqFromList!2499 (originalCharacters!4344 (_1!11040 (get!6065 lt!695763)))))))))

(declare-fun d!545194 () Bool)

(assert (=> d!545194 e!1143357))

(declare-fun res!805634 () Bool)

(assert (=> d!545194 (=> res!805634 e!1143357)))

(assert (=> d!545194 (= res!805634 (isEmpty!12448 lt!695763))))

(declare-fun e!1143358 () Option!4082)

(assert (=> d!545194 (= lt!695763 e!1143358)))

(declare-fun c!290496 () Bool)

(declare-datatypes ((tuple2!19282 0))(
  ( (tuple2!19283 (_1!11043 List!19759) (_2!11043 List!19759)) )
))
(declare-fun lt!695765 () tuple2!19282)

(assert (=> d!545194 (= c!290496 (isEmpty!12444 (_1!11043 lt!695765)))))

(declare-fun findLongestMatch!401 (Regex!4858 List!19759) tuple2!19282)

(assert (=> d!545194 (= lt!695765 (findLongestMatch!401 (regex!3530 (rule!5618 (_1!11040 lt!695353))) lt!695389))))

(assert (=> d!545194 (ruleValid!1028 thiss!24550 (rule!5618 (_1!11040 lt!695353)))))

(assert (=> d!545194 (= (maxPrefixOneRule!1082 thiss!24550 (rule!5618 (_1!11040 lt!695353)) lt!695389) lt!695763)))

(declare-fun b!1786444 () Bool)

(declare-fun res!805632 () Bool)

(assert (=> b!1786444 (=> (not res!805632) (not e!1143356))))

(assert (=> b!1786444 (= res!805632 (= (rule!5618 (_1!11040 (get!6065 lt!695763))) (rule!5618 (_1!11040 lt!695353))))))

(declare-fun b!1786445 () Bool)

(declare-fun res!805637 () Bool)

(assert (=> b!1786445 (=> (not res!805637) (not e!1143356))))

(assert (=> b!1786445 (= res!805637 (= (++!5354 (list!8008 (charsOf!2179 (_1!11040 (get!6065 lt!695763)))) (_2!11040 (get!6065 lt!695763))) lt!695389))))

(declare-fun b!1786446 () Bool)

(assert (=> b!1786446 (= e!1143356 (= (size!15641 (_1!11040 (get!6065 lt!695763))) (size!15642 (originalCharacters!4344 (_1!11040 (get!6065 lt!695763))))))))

(declare-fun b!1786447 () Bool)

(assert (=> b!1786447 (= e!1143358 (Some!4081 (tuple2!19277 (Token!6627 (apply!5330 (transformation!3530 (rule!5618 (_1!11040 lt!695353))) (seqFromList!2499 (_1!11043 lt!695765))) (rule!5618 (_1!11040 lt!695353)) (size!15643 (seqFromList!2499 (_1!11043 lt!695765))) (_1!11043 lt!695765)) (_2!11043 lt!695765))))))

(declare-fun lt!695766 () Unit!34050)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!458 (Regex!4858 List!19759) Unit!34050)

(assert (=> b!1786447 (= lt!695766 (longestMatchIsAcceptedByMatchOrIsEmpty!458 (regex!3530 (rule!5618 (_1!11040 lt!695353))) lt!695389))))

(declare-fun res!805636 () Bool)

(declare-fun findLongestMatchInner!474 (Regex!4858 List!19759 Int List!19759 List!19759 Int) tuple2!19282)

(assert (=> b!1786447 (= res!805636 (isEmpty!12444 (_1!11043 (findLongestMatchInner!474 (regex!3530 (rule!5618 (_1!11040 lt!695353))) Nil!19689 (size!15642 Nil!19689) lt!695389 lt!695389 (size!15642 lt!695389)))))))

(declare-fun e!1143355 () Bool)

(assert (=> b!1786447 (=> res!805636 e!1143355)))

(assert (=> b!1786447 e!1143355))

(declare-fun lt!695764 () Unit!34050)

(assert (=> b!1786447 (= lt!695764 lt!695766)))

(declare-fun lt!695762 () Unit!34050)

(assert (=> b!1786447 (= lt!695762 (lemmaSemiInverse!668 (transformation!3530 (rule!5618 (_1!11040 lt!695353))) (seqFromList!2499 (_1!11043 lt!695765))))))

(declare-fun b!1786448 () Bool)

(assert (=> b!1786448 (= e!1143358 None!4081)))

(declare-fun b!1786449 () Bool)

(assert (=> b!1786449 (= e!1143355 (matchR!2331 (regex!3530 (rule!5618 (_1!11040 lt!695353))) (_1!11043 (findLongestMatchInner!474 (regex!3530 (rule!5618 (_1!11040 lt!695353))) Nil!19689 (size!15642 Nil!19689) lt!695389 lt!695389 (size!15642 lt!695389)))))))

(declare-fun b!1786450 () Bool)

(declare-fun res!805635 () Bool)

(assert (=> b!1786450 (=> (not res!805635) (not e!1143356))))

(assert (=> b!1786450 (= res!805635 (< (size!15642 (_2!11040 (get!6065 lt!695763))) (size!15642 lt!695389)))))

(assert (= (and d!545194 c!290496) b!1786448))

(assert (= (and d!545194 (not c!290496)) b!1786447))

(assert (= (and b!1786447 (not res!805636)) b!1786449))

(assert (= (and d!545194 (not res!805634)) b!1786442))

(assert (= (and b!1786442 res!805633) b!1786445))

(assert (= (and b!1786445 res!805637) b!1786450))

(assert (= (and b!1786450 res!805635) b!1786444))

(assert (= (and b!1786444 res!805632) b!1786443))

(assert (= (and b!1786443 res!805631) b!1786446))

(declare-fun m!2210167 () Bool)

(assert (=> b!1786446 m!2210167))

(declare-fun m!2210169 () Bool)

(assert (=> b!1786446 m!2210169))

(assert (=> b!1786443 m!2210167))

(declare-fun m!2210171 () Bool)

(assert (=> b!1786443 m!2210171))

(assert (=> b!1786443 m!2210171))

(declare-fun m!2210173 () Bool)

(assert (=> b!1786443 m!2210173))

(declare-fun m!2210175 () Bool)

(assert (=> b!1786447 m!2210175))

(assert (=> b!1786447 m!2210175))

(declare-fun m!2210177 () Bool)

(assert (=> b!1786447 m!2210177))

(declare-fun m!2210179 () Bool)

(assert (=> b!1786447 m!2210179))

(assert (=> b!1786447 m!2210175))

(declare-fun m!2210181 () Bool)

(assert (=> b!1786447 m!2210181))

(assert (=> b!1786447 m!2210175))

(declare-fun m!2210183 () Bool)

(assert (=> b!1786447 m!2210183))

(declare-fun m!2210185 () Bool)

(assert (=> b!1786447 m!2210185))

(assert (=> b!1786447 m!2209821))

(assert (=> b!1786447 m!2210185))

(assert (=> b!1786447 m!2209821))

(declare-fun m!2210187 () Bool)

(assert (=> b!1786447 m!2210187))

(declare-fun m!2210189 () Bool)

(assert (=> b!1786447 m!2210189))

(assert (=> b!1786444 m!2210167))

(assert (=> b!1786442 m!2210167))

(declare-fun m!2210191 () Bool)

(assert (=> b!1786442 m!2210191))

(assert (=> b!1786442 m!2210191))

(declare-fun m!2210193 () Bool)

(assert (=> b!1786442 m!2210193))

(assert (=> b!1786442 m!2210193))

(declare-fun m!2210195 () Bool)

(assert (=> b!1786442 m!2210195))

(declare-fun m!2210197 () Bool)

(assert (=> d!545194 m!2210197))

(declare-fun m!2210199 () Bool)

(assert (=> d!545194 m!2210199))

(declare-fun m!2210201 () Bool)

(assert (=> d!545194 m!2210201))

(declare-fun m!2210203 () Bool)

(assert (=> d!545194 m!2210203))

(assert (=> b!1786449 m!2210185))

(assert (=> b!1786449 m!2209821))

(assert (=> b!1786449 m!2210185))

(assert (=> b!1786449 m!2209821))

(assert (=> b!1786449 m!2210187))

(declare-fun m!2210205 () Bool)

(assert (=> b!1786449 m!2210205))

(assert (=> b!1786450 m!2210167))

(declare-fun m!2210207 () Bool)

(assert (=> b!1786450 m!2210207))

(assert (=> b!1786450 m!2209821))

(assert (=> b!1786445 m!2210167))

(assert (=> b!1786445 m!2210191))

(assert (=> b!1786445 m!2210191))

(assert (=> b!1786445 m!2210193))

(assert (=> b!1786445 m!2210193))

(declare-fun m!2210209 () Bool)

(assert (=> b!1786445 m!2210209))

(assert (=> b!1785894 d!545194))

(declare-fun d!545204 () Bool)

(declare-fun lt!695769 () Int)

(assert (=> d!545204 (>= lt!695769 0)))

(declare-fun e!1143361 () Int)

(assert (=> d!545204 (= lt!695769 e!1143361)))

(declare-fun c!290499 () Bool)

(assert (=> d!545204 (= c!290499 (is-Nil!19689 lt!695345))))

(assert (=> d!545204 (= (size!15642 lt!695345) lt!695769)))

(declare-fun b!1786455 () Bool)

(assert (=> b!1786455 (= e!1143361 0)))

(declare-fun b!1786456 () Bool)

(assert (=> b!1786456 (= e!1143361 (+ 1 (size!15642 (t!167112 lt!695345))))))

(assert (= (and d!545204 c!290499) b!1786455))

(assert (= (and d!545204 (not c!290499)) b!1786456))

(declare-fun m!2210211 () Bool)

(assert (=> b!1786456 m!2210211))

(assert (=> b!1785894 d!545204))

(declare-fun d!545206 () Bool)

(assert (=> d!545206 (= (seqFromList!2499 lt!695345) (fromListB!1145 lt!695345))))

(declare-fun bs!405423 () Bool)

(assert (= bs!405423 d!545206))

(declare-fun m!2210213 () Bool)

(assert (=> bs!405423 m!2210213))

(assert (=> b!1785894 d!545206))

(declare-fun d!545208 () Bool)

(assert (=> d!545208 (= (apply!5330 (transformation!3530 (rule!5618 (_1!11040 lt!695353))) (seqFromList!2499 lt!695345)) (dynLambda!9714 (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) (seqFromList!2499 lt!695345)))))

(declare-fun b_lambda!58631 () Bool)

(assert (=> (not b_lambda!58631) (not d!545208)))

(declare-fun t!167148 () Bool)

(declare-fun tb!108793 () Bool)

(assert (=> (and b!1785886 (= (toValue!5057 (transformation!3530 rule!422)) (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353))))) t!167148) tb!108793))

(declare-fun result!130896 () Bool)

(assert (=> tb!108793 (= result!130896 (inv!21 (dynLambda!9714 (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) (seqFromList!2499 lt!695345))))))

(declare-fun m!2210215 () Bool)

(assert (=> tb!108793 m!2210215))

(assert (=> d!545208 t!167148))

(declare-fun b_and!137527 () Bool)

(assert (= b_and!137503 (and (=> t!167148 result!130896) b_and!137527)))

(declare-fun tb!108795 () Bool)

(declare-fun t!167150 () Bool)

(assert (=> (and b!1785910 (= (toValue!5057 (transformation!3530 (rule!5618 token!523))) (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353))))) t!167150) tb!108795))

(declare-fun result!130898 () Bool)

(assert (= result!130898 result!130896))

(assert (=> d!545208 t!167150))

(declare-fun b_and!137529 () Bool)

(assert (= b_and!137505 (and (=> t!167150 result!130898) b_and!137529)))

(declare-fun t!167152 () Bool)

(declare-fun tb!108797 () Bool)

(assert (=> (and b!1785900 (= (toValue!5057 (transformation!3530 (h!25091 rules!3447))) (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353))))) t!167152) tb!108797))

(declare-fun result!130900 () Bool)

(assert (= result!130900 result!130896))

(assert (=> d!545208 t!167152))

(declare-fun b_and!137531 () Bool)

(assert (= b_and!137507 (and (=> t!167152 result!130900) b_and!137531)))

(assert (=> d!545208 m!2209489))

(declare-fun m!2210217 () Bool)

(assert (=> d!545208 m!2210217))

(assert (=> b!1785894 d!545208))

(declare-fun d!545210 () Bool)

(assert (=> d!545210 (= (_2!11040 lt!695353) lt!695373)))

(declare-fun lt!695778 () Unit!34050)

(declare-fun choose!11265 (List!19759 List!19759 List!19759 List!19759 List!19759) Unit!34050)

(assert (=> d!545210 (= lt!695778 (choose!11265 lt!695345 (_2!11040 lt!695353) lt!695345 lt!695373 lt!695389))))

(assert (=> d!545210 (isPrefix!1770 lt!695345 lt!695389)))

(assert (=> d!545210 (= (lemmaSamePrefixThenSameSuffix!881 lt!695345 (_2!11040 lt!695353) lt!695345 lt!695373 lt!695389) lt!695778)))

(declare-fun bs!405424 () Bool)

(assert (= bs!405424 d!545210))

(declare-fun m!2210219 () Bool)

(assert (=> bs!405424 m!2210219))

(assert (=> bs!405424 m!2209417))

(assert (=> b!1785894 d!545210))

(declare-fun d!545212 () Bool)

(declare-fun lt!695784 () List!19759)

(assert (=> d!545212 (= (++!5354 lt!695345 lt!695784) lt!695389)))

(declare-fun e!1143377 () List!19759)

(assert (=> d!545212 (= lt!695784 e!1143377)))

(declare-fun c!290508 () Bool)

(assert (=> d!545212 (= c!290508 (is-Cons!19689 lt!695345))))

(assert (=> d!545212 (>= (size!15642 lt!695389) (size!15642 lt!695345))))

(assert (=> d!545212 (= (getSuffix!937 lt!695389 lt!695345) lt!695784)))

(declare-fun b!1786479 () Bool)

(assert (=> b!1786479 (= e!1143377 (getSuffix!937 (tail!2672 lt!695389) (t!167112 lt!695345)))))

(declare-fun b!1786480 () Bool)

(assert (=> b!1786480 (= e!1143377 lt!695389)))

(assert (= (and d!545212 c!290508) b!1786479))

(assert (= (and d!545212 (not c!290508)) b!1786480))

(declare-fun m!2210235 () Bool)

(assert (=> d!545212 m!2210235))

(assert (=> d!545212 m!2209821))

(assert (=> d!545212 m!2209487))

(assert (=> b!1786479 m!2209813))

(assert (=> b!1786479 m!2209813))

(declare-fun m!2210237 () Bool)

(assert (=> b!1786479 m!2210237))

(assert (=> b!1785894 d!545212))

(declare-fun d!545218 () Bool)

(declare-fun c!290511 () Bool)

(assert (=> d!545218 (= c!290511 (is-Node!6550 (c!290421 (dynLambda!9713 (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) (value!110279 (_1!11040 lt!695353))))))))

(declare-fun e!1143382 () Bool)

(assert (=> d!545218 (= (inv!25644 (c!290421 (dynLambda!9713 (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) (value!110279 (_1!11040 lt!695353))))) e!1143382)))

(declare-fun b!1786487 () Bool)

(declare-fun inv!25652 (Conc!6550) Bool)

(assert (=> b!1786487 (= e!1143382 (inv!25652 (c!290421 (dynLambda!9713 (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) (value!110279 (_1!11040 lt!695353))))))))

(declare-fun b!1786488 () Bool)

(declare-fun e!1143383 () Bool)

(assert (=> b!1786488 (= e!1143382 e!1143383)))

(declare-fun res!805646 () Bool)

(assert (=> b!1786488 (= res!805646 (not (is-Leaf!9536 (c!290421 (dynLambda!9713 (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) (value!110279 (_1!11040 lt!695353)))))))))

(assert (=> b!1786488 (=> res!805646 e!1143383)))

(declare-fun b!1786489 () Bool)

(declare-fun inv!25653 (Conc!6550) Bool)

(assert (=> b!1786489 (= e!1143383 (inv!25653 (c!290421 (dynLambda!9713 (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) (value!110279 (_1!11040 lt!695353))))))))

(assert (= (and d!545218 c!290511) b!1786487))

(assert (= (and d!545218 (not c!290511)) b!1786488))

(assert (= (and b!1786488 (not res!805646)) b!1786489))

(declare-fun m!2210241 () Bool)

(assert (=> b!1786487 m!2210241))

(declare-fun m!2210243 () Bool)

(assert (=> b!1786489 m!2210243))

(assert (=> b!1785938 d!545218))

(declare-fun d!545222 () Bool)

(declare-fun c!290514 () Bool)

(assert (=> d!545222 (= c!290514 (isEmpty!12444 lt!695379))))

(declare-fun e!1143386 () Bool)

(assert (=> d!545222 (= (prefixMatch!741 lt!695381 lt!695379) e!1143386)))

(declare-fun b!1786494 () Bool)

(declare-fun lostCause!606 (Regex!4858) Bool)

(assert (=> b!1786494 (= e!1143386 (not (lostCause!606 lt!695381)))))

(declare-fun b!1786495 () Bool)

(assert (=> b!1786495 (= e!1143386 (prefixMatch!741 (derivativeStep!1265 lt!695381 (head!4183 lt!695379)) (tail!2672 lt!695379)))))

(assert (= (and d!545222 c!290514) b!1786494))

(assert (= (and d!545222 (not c!290514)) b!1786495))

(declare-fun m!2210245 () Bool)

(assert (=> d!545222 m!2210245))

(declare-fun m!2210247 () Bool)

(assert (=> b!1786494 m!2210247))

(declare-fun m!2210249 () Bool)

(assert (=> b!1786495 m!2210249))

(assert (=> b!1786495 m!2210249))

(declare-fun m!2210251 () Bool)

(assert (=> b!1786495 m!2210251))

(declare-fun m!2210253 () Bool)

(assert (=> b!1786495 m!2210253))

(assert (=> b!1786495 m!2210251))

(assert (=> b!1786495 m!2210253))

(declare-fun m!2210255 () Bool)

(assert (=> b!1786495 m!2210255))

(assert (=> b!1785892 d!545222))

(declare-fun b!1786500 () Bool)

(declare-fun e!1143390 () List!19759)

(assert (=> b!1786500 (= e!1143390 (Cons!19689 (head!4183 suffix!1421) Nil!19689))))

(declare-fun d!545224 () Bool)

(declare-fun e!1143389 () Bool)

(assert (=> d!545224 e!1143389))

(declare-fun res!805648 () Bool)

(assert (=> d!545224 (=> (not res!805648) (not e!1143389))))

(declare-fun lt!695790 () List!19759)

(assert (=> d!545224 (= res!805648 (= (content!2869 lt!695790) (set.union (content!2869 lt!695351) (content!2869 (Cons!19689 (head!4183 suffix!1421) Nil!19689)))))))

(assert (=> d!545224 (= lt!695790 e!1143390)))

(declare-fun c!290517 () Bool)

(assert (=> d!545224 (= c!290517 (is-Nil!19689 lt!695351))))

(assert (=> d!545224 (= (++!5354 lt!695351 (Cons!19689 (head!4183 suffix!1421) Nil!19689)) lt!695790)))

(declare-fun b!1786503 () Bool)

(assert (=> b!1786503 (= e!1143389 (or (not (= (Cons!19689 (head!4183 suffix!1421) Nil!19689) Nil!19689)) (= lt!695790 lt!695351)))))

(declare-fun b!1786502 () Bool)

(declare-fun res!805647 () Bool)

(assert (=> b!1786502 (=> (not res!805647) (not e!1143389))))

(assert (=> b!1786502 (= res!805647 (= (size!15642 lt!695790) (+ (size!15642 lt!695351) (size!15642 (Cons!19689 (head!4183 suffix!1421) Nil!19689)))))))

(declare-fun b!1786501 () Bool)

(assert (=> b!1786501 (= e!1143390 (Cons!19689 (h!25090 lt!695351) (++!5354 (t!167112 lt!695351) (Cons!19689 (head!4183 suffix!1421) Nil!19689))))))

(assert (= (and d!545224 c!290517) b!1786500))

(assert (= (and d!545224 (not c!290517)) b!1786501))

(assert (= (and d!545224 res!805648) b!1786502))

(assert (= (and b!1786502 res!805647) b!1786503))

(declare-fun m!2210257 () Bool)

(assert (=> d!545224 m!2210257))

(assert (=> d!545224 m!2210017))

(declare-fun m!2210259 () Bool)

(assert (=> d!545224 m!2210259))

(declare-fun m!2210261 () Bool)

(assert (=> b!1786502 m!2210261))

(assert (=> b!1786502 m!2209765))

(declare-fun m!2210263 () Bool)

(assert (=> b!1786502 m!2210263))

(declare-fun m!2210265 () Bool)

(assert (=> b!1786501 m!2210265))

(assert (=> b!1785892 d!545224))

(declare-fun d!545226 () Bool)

(assert (=> d!545226 (= (head!4183 suffix!1421) (h!25090 suffix!1421))))

(assert (=> b!1785892 d!545226))

(declare-fun d!545228 () Bool)

(declare-fun lt!695793 () Unit!34050)

(declare-fun lemma!419 (List!19760 LexerInterface!3159 List!19760) Unit!34050)

(assert (=> d!545228 (= lt!695793 (lemma!419 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!70789 () Int)

(declare-datatypes ((List!19767 0))(
  ( (Nil!19697) (Cons!19697 (h!25098 Regex!4858) (t!167198 List!19767)) )
))
(declare-fun generalisedUnion!427 (List!19767) Regex!4858)

(declare-fun map!4064 (List!19760 Int) List!19767)

(assert (=> d!545228 (= (rulesRegex!886 thiss!24550 rules!3447) (generalisedUnion!427 (map!4064 rules!3447 lambda!70789)))))

(declare-fun bs!405427 () Bool)

(assert (= bs!405427 d!545228))

(declare-fun m!2210267 () Bool)

(assert (=> bs!405427 m!2210267))

(declare-fun m!2210269 () Bool)

(assert (=> bs!405427 m!2210269))

(assert (=> bs!405427 m!2210269))

(declare-fun m!2210271 () Bool)

(assert (=> bs!405427 m!2210271))

(assert (=> b!1785892 d!545228))

(declare-fun d!545230 () Bool)

(assert (=> d!545230 (= (get!6065 lt!695344) (v!25578 lt!695344))))

(assert (=> b!1785914 d!545230))

(declare-fun d!545232 () Bool)

(assert (=> d!545232 (= suffix!1421 lt!695363)))

(declare-fun lt!695794 () Unit!34050)

(assert (=> d!545232 (= lt!695794 (choose!11265 lt!695351 suffix!1421 lt!695351 lt!695363 lt!695389))))

(assert (=> d!545232 (isPrefix!1770 lt!695351 lt!695389)))

(assert (=> d!545232 (= (lemmaSamePrefixThenSameSuffix!881 lt!695351 suffix!1421 lt!695351 lt!695363 lt!695389) lt!695794)))

(declare-fun bs!405428 () Bool)

(assert (= bs!405428 d!545232))

(declare-fun m!2210273 () Bool)

(assert (=> bs!405428 m!2210273))

(assert (=> bs!405428 m!2209425))

(assert (=> b!1785893 d!545232))

(declare-fun d!545234 () Bool)

(assert (=> d!545234 (isPrefix!1770 lt!695379 lt!695345)))

(declare-fun lt!695798 () Unit!34050)

(declare-fun choose!11266 (List!19759 List!19759 List!19759) Unit!34050)

(assert (=> d!545234 (= lt!695798 (choose!11266 lt!695345 lt!695379 lt!695389))))

(assert (=> d!545234 (isPrefix!1770 lt!695345 lt!695389)))

(assert (=> d!545234 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!178 lt!695345 lt!695379 lt!695389) lt!695798)))

(declare-fun bs!405429 () Bool)

(assert (= bs!405429 d!545234))

(assert (=> bs!405429 m!2209383))

(declare-fun m!2210287 () Bool)

(assert (=> bs!405429 m!2210287))

(assert (=> bs!405429 m!2209417))

(assert (=> b!1785893 d!545234))

(declare-fun d!545238 () Bool)

(declare-fun lt!695799 () List!19759)

(assert (=> d!545238 (= (++!5354 lt!695351 lt!695799) lt!695389)))

(declare-fun e!1143410 () List!19759)

(assert (=> d!545238 (= lt!695799 e!1143410)))

(declare-fun c!290525 () Bool)

(assert (=> d!545238 (= c!290525 (is-Cons!19689 lt!695351))))

(assert (=> d!545238 (>= (size!15642 lt!695389) (size!15642 lt!695351))))

(assert (=> d!545238 (= (getSuffix!937 lt!695389 lt!695351) lt!695799)))

(declare-fun b!1786542 () Bool)

(assert (=> b!1786542 (= e!1143410 (getSuffix!937 (tail!2672 lt!695389) (t!167112 lt!695351)))))

(declare-fun b!1786543 () Bool)

(assert (=> b!1786543 (= e!1143410 lt!695389)))

(assert (= (and d!545238 c!290525) b!1786542))

(assert (= (and d!545238 (not c!290525)) b!1786543))

(declare-fun m!2210289 () Bool)

(assert (=> d!545238 m!2210289))

(assert (=> d!545238 m!2209821))

(assert (=> d!545238 m!2209765))

(assert (=> b!1786542 m!2209813))

(assert (=> b!1786542 m!2209813))

(declare-fun m!2210291 () Bool)

(assert (=> b!1786542 m!2210291))

(assert (=> b!1785893 d!545238))

(declare-fun d!545240 () Bool)

(assert (=> d!545240 (matchR!2331 (rulesRegex!886 thiss!24550 rules!3447) (list!8008 (charsOf!2179 (_1!11040 lt!695353))))))

(declare-fun lt!695800 () Unit!34050)

(assert (=> d!545240 (= lt!695800 (choose!11262 thiss!24550 rules!3447 lt!695389 (_1!11040 lt!695353) (rule!5618 (_1!11040 lt!695353)) (_2!11040 lt!695353)))))

(assert (=> d!545240 (not (isEmpty!12445 rules!3447))))

(assert (=> d!545240 (= (lemmaMaxPrefixThenMatchesRulesRegex!237 thiss!24550 rules!3447 lt!695389 (_1!11040 lt!695353) (rule!5618 (_1!11040 lt!695353)) (_2!11040 lt!695353)) lt!695800)))

(declare-fun bs!405430 () Bool)

(assert (= bs!405430 d!545240))

(assert (=> bs!405430 m!2209449))

(assert (=> bs!405430 m!2209401))

(declare-fun m!2210293 () Bool)

(assert (=> bs!405430 m!2210293))

(assert (=> bs!405430 m!2209449))

(assert (=> bs!405430 m!2209481))

(declare-fun m!2210295 () Bool)

(assert (=> bs!405430 m!2210295))

(assert (=> bs!405430 m!2209429))

(assert (=> bs!405430 m!2209429))

(assert (=> bs!405430 m!2209481))

(assert (=> b!1785893 d!545240))

(declare-fun d!545242 () Bool)

(declare-fun e!1143413 () Bool)

(assert (=> d!545242 e!1143413))

(declare-fun res!805678 () Bool)

(assert (=> d!545242 (=> res!805678 e!1143413)))

(declare-fun lt!695801 () Bool)

(assert (=> d!545242 (= res!805678 (not lt!695801))))

(declare-fun e!1143414 () Bool)

(assert (=> d!545242 (= lt!695801 e!1143414)))

(declare-fun res!805677 () Bool)

(assert (=> d!545242 (=> res!805677 e!1143414)))

(assert (=> d!545242 (= res!805677 (is-Nil!19689 lt!695379))))

(assert (=> d!545242 (= (isPrefix!1770 lt!695379 lt!695345) lt!695801)))

(declare-fun b!1786546 () Bool)

(declare-fun e!1143415 () Bool)

(assert (=> b!1786546 (= e!1143414 e!1143415)))

(declare-fun res!805675 () Bool)

(assert (=> b!1786546 (=> (not res!805675) (not e!1143415))))

(assert (=> b!1786546 (= res!805675 (not (is-Nil!19689 lt!695345)))))

(declare-fun b!1786548 () Bool)

(assert (=> b!1786548 (= e!1143415 (isPrefix!1770 (tail!2672 lt!695379) (tail!2672 lt!695345)))))

(declare-fun b!1786547 () Bool)

(declare-fun res!805676 () Bool)

(assert (=> b!1786547 (=> (not res!805676) (not e!1143415))))

(assert (=> b!1786547 (= res!805676 (= (head!4183 lt!695379) (head!4183 lt!695345)))))

(declare-fun b!1786549 () Bool)

(assert (=> b!1786549 (= e!1143413 (>= (size!15642 lt!695345) (size!15642 lt!695379)))))

(assert (= (and d!545242 (not res!805677)) b!1786546))

(assert (= (and b!1786546 res!805675) b!1786547))

(assert (= (and b!1786547 res!805676) b!1786548))

(assert (= (and d!545242 (not res!805678)) b!1786549))

(assert (=> b!1786548 m!2210253))

(assert (=> b!1786548 m!2209811))

(assert (=> b!1786548 m!2210253))

(assert (=> b!1786548 m!2209811))

(declare-fun m!2210297 () Bool)

(assert (=> b!1786548 m!2210297))

(assert (=> b!1786547 m!2210249))

(assert (=> b!1786547 m!2209817))

(assert (=> b!1786549 m!2209487))

(declare-fun m!2210299 () Bool)

(assert (=> b!1786549 m!2210299))

(assert (=> b!1785893 d!545242))

(declare-fun d!545244 () Bool)

(assert (=> d!545244 (= (head!4183 lt!695363) (h!25090 lt!695363))))

(assert (=> b!1785893 d!545244))

(declare-fun d!545246 () Bool)

(assert (=> d!545246 (isPrefix!1770 (++!5354 lt!695351 (Cons!19689 (head!4183 (getSuffix!937 lt!695389 lt!695351)) Nil!19689)) lt!695389)))

(declare-fun lt!695804 () Unit!34050)

(declare-fun choose!11267 (List!19759 List!19759) Unit!34050)

(assert (=> d!545246 (= lt!695804 (choose!11267 lt!695351 lt!695389))))

(assert (=> d!545246 (isPrefix!1770 lt!695351 lt!695389)))

(assert (=> d!545246 (= (lemmaAddHeadSuffixToPrefixStillPrefix!306 lt!695351 lt!695389) lt!695804)))

(declare-fun bs!405431 () Bool)

(assert (= bs!405431 d!545246))

(assert (=> bs!405431 m!2209375))

(assert (=> bs!405431 m!2209425))

(declare-fun m!2210313 () Bool)

(assert (=> bs!405431 m!2210313))

(declare-fun m!2210315 () Bool)

(assert (=> bs!405431 m!2210315))

(assert (=> bs!405431 m!2209375))

(declare-fun m!2210317 () Bool)

(assert (=> bs!405431 m!2210317))

(assert (=> bs!405431 m!2210313))

(declare-fun m!2210319 () Bool)

(assert (=> bs!405431 m!2210319))

(assert (=> b!1785893 d!545246))

(declare-fun d!545250 () Bool)

(declare-fun e!1143418 () Bool)

(assert (=> d!545250 e!1143418))

(declare-fun res!805686 () Bool)

(assert (=> d!545250 (=> res!805686 e!1143418)))

(declare-fun lt!695805 () Bool)

(assert (=> d!545250 (= res!805686 (not lt!695805))))

(declare-fun e!1143419 () Bool)

(assert (=> d!545250 (= lt!695805 e!1143419)))

(declare-fun res!805685 () Bool)

(assert (=> d!545250 (=> res!805685 e!1143419)))

(assert (=> d!545250 (= res!805685 (is-Nil!19689 (++!5354 lt!695351 (Cons!19689 (head!4183 lt!695363) Nil!19689))))))

(assert (=> d!545250 (= (isPrefix!1770 (++!5354 lt!695351 (Cons!19689 (head!4183 lt!695363) Nil!19689)) lt!695389) lt!695805)))

(declare-fun b!1786555 () Bool)

(declare-fun e!1143420 () Bool)

(assert (=> b!1786555 (= e!1143419 e!1143420)))

(declare-fun res!805683 () Bool)

(assert (=> b!1786555 (=> (not res!805683) (not e!1143420))))

(assert (=> b!1786555 (= res!805683 (not (is-Nil!19689 lt!695389)))))

(declare-fun b!1786557 () Bool)

(assert (=> b!1786557 (= e!1143420 (isPrefix!1770 (tail!2672 (++!5354 lt!695351 (Cons!19689 (head!4183 lt!695363) Nil!19689))) (tail!2672 lt!695389)))))

(declare-fun b!1786556 () Bool)

(declare-fun res!805684 () Bool)

(assert (=> b!1786556 (=> (not res!805684) (not e!1143420))))

(assert (=> b!1786556 (= res!805684 (= (head!4183 (++!5354 lt!695351 (Cons!19689 (head!4183 lt!695363) Nil!19689))) (head!4183 lt!695389)))))

(declare-fun b!1786558 () Bool)

(assert (=> b!1786558 (= e!1143418 (>= (size!15642 lt!695389) (size!15642 (++!5354 lt!695351 (Cons!19689 (head!4183 lt!695363) Nil!19689)))))))

(assert (= (and d!545250 (not res!805685)) b!1786555))

(assert (= (and b!1786555 res!805683) b!1786556))

(assert (= (and b!1786556 res!805684) b!1786557))

(assert (= (and d!545250 (not res!805686)) b!1786558))

(assert (=> b!1786557 m!2209365))

(declare-fun m!2210321 () Bool)

(assert (=> b!1786557 m!2210321))

(assert (=> b!1786557 m!2209813))

(assert (=> b!1786557 m!2210321))

(assert (=> b!1786557 m!2209813))

(declare-fun m!2210323 () Bool)

(assert (=> b!1786557 m!2210323))

(assert (=> b!1786556 m!2209365))

(declare-fun m!2210325 () Bool)

(assert (=> b!1786556 m!2210325))

(assert (=> b!1786556 m!2209819))

(assert (=> b!1786558 m!2209821))

(assert (=> b!1786558 m!2209365))

(declare-fun m!2210327 () Bool)

(assert (=> b!1786558 m!2210327))

(assert (=> b!1785893 d!545250))

(declare-fun d!545252 () Bool)

(assert (=> d!545252 (not (matchR!2331 lt!695381 lt!695345))))

(declare-fun lt!695811 () Unit!34050)

(declare-fun choose!11268 (Regex!4858 List!19759 List!19759) Unit!34050)

(assert (=> d!545252 (= lt!695811 (choose!11268 lt!695381 lt!695379 lt!695345))))

(assert (=> d!545252 (validRegex!1970 lt!695381)))

(assert (=> d!545252 (= (lemmaNotPrefixMatchThenCannotMatchLonger!169 lt!695381 lt!695379 lt!695345) lt!695811)))

(declare-fun bs!405433 () Bool)

(assert (= bs!405433 d!545252))

(assert (=> bs!405433 m!2209377))

(declare-fun m!2210335 () Bool)

(assert (=> bs!405433 m!2210335))

(assert (=> bs!405433 m!2210049))

(assert (=> b!1785893 d!545252))

(declare-fun b!1786559 () Bool)

(declare-fun e!1143423 () List!19759)

(assert (=> b!1786559 (= e!1143423 (Cons!19689 (head!4183 lt!695363) Nil!19689))))

(declare-fun d!545258 () Bool)

(declare-fun e!1143422 () Bool)

(assert (=> d!545258 e!1143422))

(declare-fun res!805688 () Bool)

(assert (=> d!545258 (=> (not res!805688) (not e!1143422))))

(declare-fun lt!695812 () List!19759)

(assert (=> d!545258 (= res!805688 (= (content!2869 lt!695812) (set.union (content!2869 lt!695351) (content!2869 (Cons!19689 (head!4183 lt!695363) Nil!19689)))))))

(assert (=> d!545258 (= lt!695812 e!1143423)))

(declare-fun c!290526 () Bool)

(assert (=> d!545258 (= c!290526 (is-Nil!19689 lt!695351))))

(assert (=> d!545258 (= (++!5354 lt!695351 (Cons!19689 (head!4183 lt!695363) Nil!19689)) lt!695812)))

(declare-fun b!1786562 () Bool)

(assert (=> b!1786562 (= e!1143422 (or (not (= (Cons!19689 (head!4183 lt!695363) Nil!19689) Nil!19689)) (= lt!695812 lt!695351)))))

(declare-fun b!1786561 () Bool)

(declare-fun res!805687 () Bool)

(assert (=> b!1786561 (=> (not res!805687) (not e!1143422))))

(assert (=> b!1786561 (= res!805687 (= (size!15642 lt!695812) (+ (size!15642 lt!695351) (size!15642 (Cons!19689 (head!4183 lt!695363) Nil!19689)))))))

(declare-fun b!1786560 () Bool)

(assert (=> b!1786560 (= e!1143423 (Cons!19689 (h!25090 lt!695351) (++!5354 (t!167112 lt!695351) (Cons!19689 (head!4183 lt!695363) Nil!19689))))))

(assert (= (and d!545258 c!290526) b!1786559))

(assert (= (and d!545258 (not c!290526)) b!1786560))

(assert (= (and d!545258 res!805688) b!1786561))

(assert (= (and b!1786561 res!805687) b!1786562))

(declare-fun m!2210337 () Bool)

(assert (=> d!545258 m!2210337))

(assert (=> d!545258 m!2210017))

(declare-fun m!2210339 () Bool)

(assert (=> d!545258 m!2210339))

(declare-fun m!2210341 () Bool)

(assert (=> b!1786561 m!2210341))

(assert (=> b!1786561 m!2209765))

(declare-fun m!2210343 () Bool)

(assert (=> b!1786561 m!2210343))

(declare-fun m!2210345 () Bool)

(assert (=> b!1786560 m!2210345))

(assert (=> b!1785893 d!545258))

(declare-fun b!1786563 () Bool)

(declare-fun e!1143426 () Bool)

(declare-fun lt!695813 () Bool)

(assert (=> b!1786563 (= e!1143426 (not lt!695813))))

(declare-fun b!1786564 () Bool)

(declare-fun res!805696 () Bool)

(declare-fun e!1143429 () Bool)

(assert (=> b!1786564 (=> (not res!805696) (not e!1143429))))

(declare-fun call!111378 () Bool)

(assert (=> b!1786564 (= res!805696 (not call!111378))))

(declare-fun b!1786565 () Bool)

(declare-fun e!1143427 () Bool)

(assert (=> b!1786565 (= e!1143427 (= lt!695813 call!111378))))

(declare-fun b!1786566 () Bool)

(declare-fun e!1143425 () Bool)

(assert (=> b!1786566 (= e!1143425 (nullable!1496 lt!695381))))

(declare-fun b!1786567 () Bool)

(assert (=> b!1786567 (= e!1143425 (matchR!2331 (derivativeStep!1265 lt!695381 (head!4183 lt!695345)) (tail!2672 lt!695345)))))

(declare-fun b!1786568 () Bool)

(declare-fun e!1143428 () Bool)

(assert (=> b!1786568 (= e!1143428 (not (= (head!4183 lt!695345) (c!290420 lt!695381))))))

(declare-fun b!1786569 () Bool)

(declare-fun res!805693 () Bool)

(assert (=> b!1786569 (=> (not res!805693) (not e!1143429))))

(assert (=> b!1786569 (= res!805693 (isEmpty!12444 (tail!2672 lt!695345)))))

(declare-fun b!1786570 () Bool)

(assert (=> b!1786570 (= e!1143427 e!1143426)))

(declare-fun c!290528 () Bool)

(assert (=> b!1786570 (= c!290528 (is-EmptyLang!4858 lt!695381))))

(declare-fun d!545260 () Bool)

(assert (=> d!545260 e!1143427))

(declare-fun c!290529 () Bool)

(assert (=> d!545260 (= c!290529 (is-EmptyExpr!4858 lt!695381))))

(assert (=> d!545260 (= lt!695813 e!1143425)))

(declare-fun c!290527 () Bool)

(assert (=> d!545260 (= c!290527 (isEmpty!12444 lt!695345))))

(assert (=> d!545260 (validRegex!1970 lt!695381)))

(assert (=> d!545260 (= (matchR!2331 lt!695381 lt!695345) lt!695813)))

(declare-fun b!1786571 () Bool)

(declare-fun e!1143430 () Bool)

(declare-fun e!1143424 () Bool)

(assert (=> b!1786571 (= e!1143430 e!1143424)))

(declare-fun res!805694 () Bool)

(assert (=> b!1786571 (=> (not res!805694) (not e!1143424))))

(assert (=> b!1786571 (= res!805694 (not lt!695813))))

(declare-fun b!1786572 () Bool)

(assert (=> b!1786572 (= e!1143429 (= (head!4183 lt!695345) (c!290420 lt!695381)))))

(declare-fun b!1786573 () Bool)

(declare-fun res!805690 () Bool)

(assert (=> b!1786573 (=> res!805690 e!1143430)))

(assert (=> b!1786573 (= res!805690 e!1143429)))

(declare-fun res!805689 () Bool)

(assert (=> b!1786573 (=> (not res!805689) (not e!1143429))))

(assert (=> b!1786573 (= res!805689 lt!695813)))

(declare-fun b!1786574 () Bool)

(assert (=> b!1786574 (= e!1143424 e!1143428)))

(declare-fun res!805695 () Bool)

(assert (=> b!1786574 (=> res!805695 e!1143428)))

(assert (=> b!1786574 (= res!805695 call!111378)))

(declare-fun b!1786575 () Bool)

(declare-fun res!805692 () Bool)

(assert (=> b!1786575 (=> res!805692 e!1143428)))

(assert (=> b!1786575 (= res!805692 (not (isEmpty!12444 (tail!2672 lt!695345))))))

(declare-fun b!1786576 () Bool)

(declare-fun res!805691 () Bool)

(assert (=> b!1786576 (=> res!805691 e!1143430)))

(assert (=> b!1786576 (= res!805691 (not (is-ElementMatch!4858 lt!695381)))))

(assert (=> b!1786576 (= e!1143426 e!1143430)))

(declare-fun bm!111373 () Bool)

(assert (=> bm!111373 (= call!111378 (isEmpty!12444 lt!695345))))

(assert (= (and d!545260 c!290527) b!1786566))

(assert (= (and d!545260 (not c!290527)) b!1786567))

(assert (= (and d!545260 c!290529) b!1786565))

(assert (= (and d!545260 (not c!290529)) b!1786570))

(assert (= (and b!1786570 c!290528) b!1786563))

(assert (= (and b!1786570 (not c!290528)) b!1786576))

(assert (= (and b!1786576 (not res!805691)) b!1786573))

(assert (= (and b!1786573 res!805689) b!1786564))

(assert (= (and b!1786564 res!805696) b!1786569))

(assert (= (and b!1786569 res!805693) b!1786572))

(assert (= (and b!1786573 (not res!805690)) b!1786571))

(assert (= (and b!1786571 res!805694) b!1786574))

(assert (= (and b!1786574 (not res!805695)) b!1786575))

(assert (= (and b!1786575 (not res!805692)) b!1786568))

(assert (= (or b!1786565 b!1786564 b!1786574) bm!111373))

(assert (=> b!1786575 m!2209811))

(assert (=> b!1786575 m!2209811))

(assert (=> b!1786575 m!2210061))

(assert (=> b!1786566 m!2210047))

(assert (=> b!1786569 m!2209811))

(assert (=> b!1786569 m!2209811))

(assert (=> b!1786569 m!2210061))

(assert (=> bm!111373 m!2210065))

(assert (=> b!1786568 m!2209817))

(assert (=> b!1786572 m!2209817))

(assert (=> d!545260 m!2210065))

(assert (=> d!545260 m!2210049))

(assert (=> b!1786567 m!2209817))

(assert (=> b!1786567 m!2209817))

(declare-fun m!2210349 () Bool)

(assert (=> b!1786567 m!2210349))

(assert (=> b!1786567 m!2209811))

(assert (=> b!1786567 m!2210349))

(assert (=> b!1786567 m!2209811))

(declare-fun m!2210351 () Bool)

(assert (=> b!1786567 m!2210351))

(assert (=> b!1785893 d!545260))

(declare-fun d!545264 () Bool)

(assert (=> d!545264 (not (matchR!2331 (regex!3530 (rule!5618 token!523)) lt!695345))))

(declare-fun lt!695821 () Unit!34050)

(declare-fun choose!11270 (LexerInterface!3159 List!19760 Rule!6860 List!19759 List!19759 Rule!6860) Unit!34050)

(assert (=> d!545264 (= lt!695821 (choose!11270 thiss!24550 rules!3447 (rule!5618 (_1!11040 lt!695353)) lt!695345 lt!695389 (rule!5618 token!523)))))

(assert (=> d!545264 (isPrefix!1770 lt!695345 lt!695389)))

(assert (=> d!545264 (= (lemmaMaxPrefNoSmallerRuleMatches!151 thiss!24550 rules!3447 (rule!5618 (_1!11040 lt!695353)) lt!695345 lt!695389 (rule!5618 token!523)) lt!695821)))

(declare-fun bs!405435 () Bool)

(assert (= bs!405435 d!545264))

(assert (=> bs!405435 m!2209453))

(declare-fun m!2210357 () Bool)

(assert (=> bs!405435 m!2210357))

(assert (=> bs!405435 m!2209417))

(assert (=> b!1785907 d!545264))

(declare-fun b!1786587 () Bool)

(declare-fun e!1143438 () Bool)

(declare-fun lt!695822 () Bool)

(assert (=> b!1786587 (= e!1143438 (not lt!695822))))

(declare-fun b!1786588 () Bool)

(declare-fun res!805704 () Bool)

(declare-fun e!1143441 () Bool)

(assert (=> b!1786588 (=> (not res!805704) (not e!1143441))))

(declare-fun call!111379 () Bool)

(assert (=> b!1786588 (= res!805704 (not call!111379))))

(declare-fun b!1786589 () Bool)

(declare-fun e!1143439 () Bool)

(assert (=> b!1786589 (= e!1143439 (= lt!695822 call!111379))))

(declare-fun b!1786590 () Bool)

(declare-fun e!1143437 () Bool)

(assert (=> b!1786590 (= e!1143437 (nullable!1496 (regex!3530 (rule!5618 token!523))))))

(declare-fun b!1786591 () Bool)

(assert (=> b!1786591 (= e!1143437 (matchR!2331 (derivativeStep!1265 (regex!3530 (rule!5618 token!523)) (head!4183 lt!695345)) (tail!2672 lt!695345)))))

(declare-fun b!1786592 () Bool)

(declare-fun e!1143440 () Bool)

(assert (=> b!1786592 (= e!1143440 (not (= (head!4183 lt!695345) (c!290420 (regex!3530 (rule!5618 token!523))))))))

(declare-fun b!1786593 () Bool)

(declare-fun res!805701 () Bool)

(assert (=> b!1786593 (=> (not res!805701) (not e!1143441))))

(assert (=> b!1786593 (= res!805701 (isEmpty!12444 (tail!2672 lt!695345)))))

(declare-fun b!1786594 () Bool)

(assert (=> b!1786594 (= e!1143439 e!1143438)))

(declare-fun c!290536 () Bool)

(assert (=> b!1786594 (= c!290536 (is-EmptyLang!4858 (regex!3530 (rule!5618 token!523))))))

(declare-fun d!545268 () Bool)

(assert (=> d!545268 e!1143439))

(declare-fun c!290537 () Bool)

(assert (=> d!545268 (= c!290537 (is-EmptyExpr!4858 (regex!3530 (rule!5618 token!523))))))

(assert (=> d!545268 (= lt!695822 e!1143437)))

(declare-fun c!290535 () Bool)

(assert (=> d!545268 (= c!290535 (isEmpty!12444 lt!695345))))

(assert (=> d!545268 (validRegex!1970 (regex!3530 (rule!5618 token!523)))))

(assert (=> d!545268 (= (matchR!2331 (regex!3530 (rule!5618 token!523)) lt!695345) lt!695822)))

(declare-fun b!1786595 () Bool)

(declare-fun e!1143442 () Bool)

(declare-fun e!1143436 () Bool)

(assert (=> b!1786595 (= e!1143442 e!1143436)))

(declare-fun res!805702 () Bool)

(assert (=> b!1786595 (=> (not res!805702) (not e!1143436))))

(assert (=> b!1786595 (= res!805702 (not lt!695822))))

(declare-fun b!1786596 () Bool)

(assert (=> b!1786596 (= e!1143441 (= (head!4183 lt!695345) (c!290420 (regex!3530 (rule!5618 token!523)))))))

(declare-fun b!1786597 () Bool)

(declare-fun res!805698 () Bool)

(assert (=> b!1786597 (=> res!805698 e!1143442)))

(assert (=> b!1786597 (= res!805698 e!1143441)))

(declare-fun res!805697 () Bool)

(assert (=> b!1786597 (=> (not res!805697) (not e!1143441))))

(assert (=> b!1786597 (= res!805697 lt!695822)))

(declare-fun b!1786598 () Bool)

(assert (=> b!1786598 (= e!1143436 e!1143440)))

(declare-fun res!805703 () Bool)

(assert (=> b!1786598 (=> res!805703 e!1143440)))

(assert (=> b!1786598 (= res!805703 call!111379)))

(declare-fun b!1786599 () Bool)

(declare-fun res!805700 () Bool)

(assert (=> b!1786599 (=> res!805700 e!1143440)))

(assert (=> b!1786599 (= res!805700 (not (isEmpty!12444 (tail!2672 lt!695345))))))

(declare-fun b!1786600 () Bool)

(declare-fun res!805699 () Bool)

(assert (=> b!1786600 (=> res!805699 e!1143442)))

(assert (=> b!1786600 (= res!805699 (not (is-ElementMatch!4858 (regex!3530 (rule!5618 token!523)))))))

(assert (=> b!1786600 (= e!1143438 e!1143442)))

(declare-fun bm!111374 () Bool)

(assert (=> bm!111374 (= call!111379 (isEmpty!12444 lt!695345))))

(assert (= (and d!545268 c!290535) b!1786590))

(assert (= (and d!545268 (not c!290535)) b!1786591))

(assert (= (and d!545268 c!290537) b!1786589))

(assert (= (and d!545268 (not c!290537)) b!1786594))

(assert (= (and b!1786594 c!290536) b!1786587))

(assert (= (and b!1786594 (not c!290536)) b!1786600))

(assert (= (and b!1786600 (not res!805699)) b!1786597))

(assert (= (and b!1786597 res!805697) b!1786588))

(assert (= (and b!1786588 res!805704) b!1786593))

(assert (= (and b!1786593 res!805701) b!1786596))

(assert (= (and b!1786597 (not res!805698)) b!1786595))

(assert (= (and b!1786595 res!805702) b!1786598))

(assert (= (and b!1786598 (not res!805703)) b!1786599))

(assert (= (and b!1786599 (not res!805700)) b!1786592))

(assert (= (or b!1786589 b!1786588 b!1786598) bm!111374))

(assert (=> b!1786599 m!2209811))

(assert (=> b!1786599 m!2209811))

(assert (=> b!1786599 m!2210061))

(declare-fun m!2210361 () Bool)

(assert (=> b!1786590 m!2210361))

(assert (=> b!1786593 m!2209811))

(assert (=> b!1786593 m!2209811))

(assert (=> b!1786593 m!2210061))

(assert (=> bm!111374 m!2210065))

(assert (=> b!1786592 m!2209817))

(assert (=> b!1786596 m!2209817))

(assert (=> d!545268 m!2210065))

(declare-fun m!2210363 () Bool)

(assert (=> d!545268 m!2210363))

(assert (=> b!1786591 m!2209817))

(assert (=> b!1786591 m!2209817))

(declare-fun m!2210365 () Bool)

(assert (=> b!1786591 m!2210365))

(assert (=> b!1786591 m!2209811))

(assert (=> b!1786591 m!2210365))

(assert (=> b!1786591 m!2209811))

(declare-fun m!2210367 () Bool)

(assert (=> b!1786591 m!2210367))

(assert (=> b!1785907 d!545268))

(declare-fun d!545272 () Bool)

(assert (=> d!545272 (= (inv!25639 (tag!3932 rule!422)) (= (mod (str.len (value!110278 (tag!3932 rule!422))) 2) 0))))

(assert (=> b!1785884 d!545272))

(declare-fun d!545274 () Bool)

(declare-fun res!805705 () Bool)

(declare-fun e!1143444 () Bool)

(assert (=> d!545274 (=> (not res!805705) (not e!1143444))))

(assert (=> d!545274 (= res!805705 (semiInverseModEq!1411 (toChars!4916 (transformation!3530 rule!422)) (toValue!5057 (transformation!3530 rule!422))))))

(assert (=> d!545274 (= (inv!25642 (transformation!3530 rule!422)) e!1143444)))

(declare-fun b!1786603 () Bool)

(assert (=> b!1786603 (= e!1143444 (equivClasses!1352 (toChars!4916 (transformation!3530 rule!422)) (toValue!5057 (transformation!3530 rule!422))))))

(assert (= (and d!545274 res!805705) b!1786603))

(declare-fun m!2210369 () Bool)

(assert (=> d!545274 m!2210369))

(declare-fun m!2210371 () Bool)

(assert (=> b!1786603 m!2210371))

(assert (=> b!1785884 d!545274))

(declare-fun d!545276 () Bool)

(declare-fun c!290539 () Bool)

(assert (=> d!545276 (= c!290539 (is-Node!6550 (c!290421 (dynLambda!9713 (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) (dynLambda!9714 (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) lt!695347)))))))

(declare-fun e!1143445 () Bool)

(assert (=> d!545276 (= (inv!25644 (c!290421 (dynLambda!9713 (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) (dynLambda!9714 (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) lt!695347)))) e!1143445)))

(declare-fun b!1786604 () Bool)

(assert (=> b!1786604 (= e!1143445 (inv!25652 (c!290421 (dynLambda!9713 (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) (dynLambda!9714 (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) lt!695347)))))))

(declare-fun b!1786605 () Bool)

(declare-fun e!1143446 () Bool)

(assert (=> b!1786605 (= e!1143445 e!1143446)))

(declare-fun res!805706 () Bool)

(assert (=> b!1786605 (= res!805706 (not (is-Leaf!9536 (c!290421 (dynLambda!9713 (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) (dynLambda!9714 (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) lt!695347))))))))

(assert (=> b!1786605 (=> res!805706 e!1143446)))

(declare-fun b!1786606 () Bool)

(assert (=> b!1786606 (= e!1143446 (inv!25653 (c!290421 (dynLambda!9713 (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) (dynLambda!9714 (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) lt!695347)))))))

(assert (= (and d!545276 c!290539) b!1786604))

(assert (= (and d!545276 (not c!290539)) b!1786605))

(assert (= (and b!1786605 (not res!805706)) b!1786606))

(declare-fun m!2210373 () Bool)

(assert (=> b!1786604 m!2210373))

(declare-fun m!2210375 () Bool)

(assert (=> b!1786606 m!2210375))

(assert (=> b!1785939 d!545276))

(declare-fun d!545278 () Bool)

(assert (=> d!545278 (= (isEmpty!12445 rules!3447) (is-Nil!19690 rules!3447))))

(assert (=> b!1785906 d!545278))

(declare-fun d!545280 () Bool)

(assert (=> d!545280 (= suffix!1421 (_2!11040 lt!695353))))

(declare-fun lt!695824 () Unit!34050)

(assert (=> d!545280 (= lt!695824 (choose!11265 lt!695351 suffix!1421 lt!695351 (_2!11040 lt!695353) lt!695389))))

(assert (=> d!545280 (isPrefix!1770 lt!695351 lt!695389)))

(assert (=> d!545280 (= (lemmaSamePrefixThenSameSuffix!881 lt!695351 suffix!1421 lt!695351 (_2!11040 lt!695353) lt!695389) lt!695824)))

(declare-fun bs!405436 () Bool)

(assert (= bs!405436 d!545280))

(declare-fun m!2210377 () Bool)

(assert (=> bs!405436 m!2210377))

(assert (=> bs!405436 m!2209425))

(assert (=> b!1785885 d!545280))

(declare-fun d!545282 () Bool)

(assert (=> d!545282 (= lt!695345 lt!695351)))

(declare-fun lt!695827 () Unit!34050)

(declare-fun choose!11272 (List!19759 List!19759 List!19759) Unit!34050)

(assert (=> d!545282 (= lt!695827 (choose!11272 lt!695345 lt!695351 lt!695389))))

(assert (=> d!545282 (isPrefix!1770 lt!695345 lt!695389)))

(assert (=> d!545282 (= (lemmaIsPrefixSameLengthThenSameList!266 lt!695345 lt!695351 lt!695389) lt!695827)))

(declare-fun bs!405437 () Bool)

(assert (= bs!405437 d!545282))

(declare-fun m!2210379 () Bool)

(assert (=> bs!405437 m!2210379))

(assert (=> bs!405437 m!2209417))

(assert (=> b!1785885 d!545282))

(declare-fun b!1786607 () Bool)

(declare-fun e!1143448 () Bool)

(declare-fun e!1143449 () Bool)

(assert (=> b!1786607 (= e!1143448 e!1143449)))

(declare-fun c!290540 () Bool)

(assert (=> b!1786607 (= c!290540 (is-IntegerValue!10861 (value!110279 token!523)))))

(declare-fun b!1786608 () Bool)

(assert (=> b!1786608 (= e!1143449 (inv!17 (value!110279 token!523)))))

(declare-fun b!1786609 () Bool)

(declare-fun e!1143447 () Bool)

(assert (=> b!1786609 (= e!1143447 (inv!15 (value!110279 token!523)))))

(declare-fun d!545284 () Bool)

(declare-fun c!290541 () Bool)

(assert (=> d!545284 (= c!290541 (is-IntegerValue!10860 (value!110279 token!523)))))

(assert (=> d!545284 (= (inv!21 (value!110279 token!523)) e!1143448)))

(declare-fun b!1786610 () Bool)

(declare-fun res!805707 () Bool)

(assert (=> b!1786610 (=> res!805707 e!1143447)))

(assert (=> b!1786610 (= res!805707 (not (is-IntegerValue!10862 (value!110279 token!523))))))

(assert (=> b!1786610 (= e!1143449 e!1143447)))

(declare-fun b!1786611 () Bool)

(assert (=> b!1786611 (= e!1143448 (inv!16 (value!110279 token!523)))))

(assert (= (and d!545284 c!290541) b!1786611))

(assert (= (and d!545284 (not c!290541)) b!1786607))

(assert (= (and b!1786607 c!290540) b!1786608))

(assert (= (and b!1786607 (not c!290540)) b!1786610))

(assert (= (and b!1786610 (not res!805707)) b!1786609))

(declare-fun m!2210381 () Bool)

(assert (=> b!1786608 m!2210381))

(declare-fun m!2210383 () Bool)

(assert (=> b!1786609 m!2210383))

(declare-fun m!2210385 () Bool)

(assert (=> b!1786611 m!2210385))

(assert (=> b!1785888 d!545284))

(declare-fun d!545286 () Bool)

(assert (=> d!545286 (= (inv!25639 (tag!3932 (rule!5618 token!523))) (= (mod (str.len (value!110278 (tag!3932 (rule!5618 token!523)))) 2) 0))))

(assert (=> b!1785889 d!545286))

(declare-fun d!545288 () Bool)

(declare-fun res!805708 () Bool)

(declare-fun e!1143450 () Bool)

(assert (=> d!545288 (=> (not res!805708) (not e!1143450))))

(assert (=> d!545288 (= res!805708 (semiInverseModEq!1411 (toChars!4916 (transformation!3530 (rule!5618 token!523))) (toValue!5057 (transformation!3530 (rule!5618 token!523)))))))

(assert (=> d!545288 (= (inv!25642 (transformation!3530 (rule!5618 token!523))) e!1143450)))

(declare-fun b!1786612 () Bool)

(assert (=> b!1786612 (= e!1143450 (equivClasses!1352 (toChars!4916 (transformation!3530 (rule!5618 token!523))) (toValue!5057 (transformation!3530 (rule!5618 token!523)))))))

(assert (= (and d!545288 res!805708) b!1786612))

(declare-fun m!2210387 () Bool)

(assert (=> d!545288 m!2210387))

(declare-fun m!2210389 () Bool)

(assert (=> b!1786612 m!2210389))

(assert (=> b!1785889 d!545288))

(declare-fun d!545290 () Bool)

(declare-fun lt!695830 () Bool)

(declare-fun content!2871 (List!19760) (Set Rule!6860))

(assert (=> d!545290 (= lt!695830 (set.member rule!422 (content!2871 rules!3447)))))

(declare-fun e!1143455 () Bool)

(assert (=> d!545290 (= lt!695830 e!1143455)))

(declare-fun res!805714 () Bool)

(assert (=> d!545290 (=> (not res!805714) (not e!1143455))))

(assert (=> d!545290 (= res!805714 (is-Cons!19690 rules!3447))))

(assert (=> d!545290 (= (contains!3562 rules!3447 rule!422) lt!695830)))

(declare-fun b!1786617 () Bool)

(declare-fun e!1143456 () Bool)

(assert (=> b!1786617 (= e!1143455 e!1143456)))

(declare-fun res!805713 () Bool)

(assert (=> b!1786617 (=> res!805713 e!1143456)))

(assert (=> b!1786617 (= res!805713 (= (h!25091 rules!3447) rule!422))))

(declare-fun b!1786618 () Bool)

(assert (=> b!1786618 (= e!1143456 (contains!3562 (t!167113 rules!3447) rule!422))))

(assert (= (and d!545290 res!805714) b!1786617))

(assert (= (and b!1786617 (not res!805713)) b!1786618))

(declare-fun m!2210391 () Bool)

(assert (=> d!545290 m!2210391))

(declare-fun m!2210393 () Bool)

(assert (=> d!545290 m!2210393))

(declare-fun m!2210395 () Bool)

(assert (=> b!1786618 m!2210395))

(assert (=> b!1785908 d!545290))

(declare-fun d!545292 () Bool)

(declare-fun choose!11273 (Int) Bool)

(assert (=> d!545292 (= (Forall!897 lambda!70777) (choose!11273 lambda!70777))))

(declare-fun bs!405438 () Bool)

(assert (= bs!405438 d!545292))

(declare-fun m!2210397 () Bool)

(assert (=> bs!405438 m!2210397))

(assert (=> b!1785887 d!545292))

(declare-fun d!545294 () Bool)

(declare-fun e!1143459 () Bool)

(assert (=> d!545294 e!1143459))

(declare-fun res!805717 () Bool)

(assert (=> d!545294 (=> (not res!805717) (not e!1143459))))

(assert (=> d!545294 (= res!805717 (semiInverseModEq!1411 (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353))))))))

(declare-fun Unit!34072 () Unit!34050)

(assert (=> d!545294 (= (lemmaInv!729 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) Unit!34072)))

(declare-fun b!1786621 () Bool)

(assert (=> b!1786621 (= e!1143459 (equivClasses!1352 (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353))))))))

(assert (= (and d!545294 res!805717) b!1786621))

(declare-fun m!2210399 () Bool)

(assert (=> d!545294 m!2210399))

(declare-fun m!2210401 () Bool)

(assert (=> b!1786621 m!2210401))

(assert (=> b!1785887 d!545294))

(declare-fun d!545296 () Bool)

(assert (=> d!545296 (not (matchR!2331 (regex!3530 rule!422) lt!695351))))

(declare-fun lt!695833 () Unit!34050)

(declare-fun choose!11274 (LexerInterface!3159 List!19760 Rule!6860 List!19759 List!19759 List!19759 Rule!6860) Unit!34050)

(assert (=> d!545296 (= lt!695833 (choose!11274 thiss!24550 rules!3447 (rule!5618 (_1!11040 lt!695353)) lt!695345 lt!695389 lt!695351 rule!422))))

(assert (=> d!545296 (isPrefix!1770 lt!695345 lt!695389)))

(assert (=> d!545296 (= (lemmaMaxPrefixOutputsMaxPrefix!239 thiss!24550 rules!3447 (rule!5618 (_1!11040 lt!695353)) lt!695345 lt!695389 lt!695351 rule!422) lt!695833)))

(declare-fun bs!405439 () Bool)

(assert (= bs!405439 d!545296))

(assert (=> bs!405439 m!2209501))

(declare-fun m!2210403 () Bool)

(assert (=> bs!405439 m!2210403))

(assert (=> bs!405439 m!2209417))

(assert (=> b!1785909 d!545296))

(declare-fun b!1786622 () Bool)

(declare-fun e!1143462 () Bool)

(declare-fun lt!695834 () Bool)

(assert (=> b!1786622 (= e!1143462 (not lt!695834))))

(declare-fun b!1786623 () Bool)

(declare-fun res!805725 () Bool)

(declare-fun e!1143465 () Bool)

(assert (=> b!1786623 (=> (not res!805725) (not e!1143465))))

(declare-fun call!111380 () Bool)

(assert (=> b!1786623 (= res!805725 (not call!111380))))

(declare-fun b!1786624 () Bool)

(declare-fun e!1143463 () Bool)

(assert (=> b!1786624 (= e!1143463 (= lt!695834 call!111380))))

(declare-fun b!1786625 () Bool)

(declare-fun e!1143461 () Bool)

(assert (=> b!1786625 (= e!1143461 (nullable!1496 (regex!3530 lt!695377)))))

(declare-fun b!1786626 () Bool)

(assert (=> b!1786626 (= e!1143461 (matchR!2331 (derivativeStep!1265 (regex!3530 lt!695377) (head!4183 (list!8008 (charsOf!2179 (_1!11040 lt!695353))))) (tail!2672 (list!8008 (charsOf!2179 (_1!11040 lt!695353))))))))

(declare-fun b!1786627 () Bool)

(declare-fun e!1143464 () Bool)

(assert (=> b!1786627 (= e!1143464 (not (= (head!4183 (list!8008 (charsOf!2179 (_1!11040 lt!695353)))) (c!290420 (regex!3530 lt!695377)))))))

(declare-fun b!1786628 () Bool)

(declare-fun res!805722 () Bool)

(assert (=> b!1786628 (=> (not res!805722) (not e!1143465))))

(assert (=> b!1786628 (= res!805722 (isEmpty!12444 (tail!2672 (list!8008 (charsOf!2179 (_1!11040 lt!695353))))))))

(declare-fun b!1786629 () Bool)

(assert (=> b!1786629 (= e!1143463 e!1143462)))

(declare-fun c!290543 () Bool)

(assert (=> b!1786629 (= c!290543 (is-EmptyLang!4858 (regex!3530 lt!695377)))))

(declare-fun d!545298 () Bool)

(assert (=> d!545298 e!1143463))

(declare-fun c!290544 () Bool)

(assert (=> d!545298 (= c!290544 (is-EmptyExpr!4858 (regex!3530 lt!695377)))))

(assert (=> d!545298 (= lt!695834 e!1143461)))

(declare-fun c!290542 () Bool)

(assert (=> d!545298 (= c!290542 (isEmpty!12444 (list!8008 (charsOf!2179 (_1!11040 lt!695353)))))))

(assert (=> d!545298 (validRegex!1970 (regex!3530 lt!695377))))

(assert (=> d!545298 (= (matchR!2331 (regex!3530 lt!695377) (list!8008 (charsOf!2179 (_1!11040 lt!695353)))) lt!695834)))

(declare-fun b!1786630 () Bool)

(declare-fun e!1143466 () Bool)

(declare-fun e!1143460 () Bool)

(assert (=> b!1786630 (= e!1143466 e!1143460)))

(declare-fun res!805723 () Bool)

(assert (=> b!1786630 (=> (not res!805723) (not e!1143460))))

(assert (=> b!1786630 (= res!805723 (not lt!695834))))

(declare-fun b!1786631 () Bool)

(assert (=> b!1786631 (= e!1143465 (= (head!4183 (list!8008 (charsOf!2179 (_1!11040 lt!695353)))) (c!290420 (regex!3530 lt!695377))))))

(declare-fun b!1786632 () Bool)

(declare-fun res!805719 () Bool)

(assert (=> b!1786632 (=> res!805719 e!1143466)))

(assert (=> b!1786632 (= res!805719 e!1143465)))

(declare-fun res!805718 () Bool)

(assert (=> b!1786632 (=> (not res!805718) (not e!1143465))))

(assert (=> b!1786632 (= res!805718 lt!695834)))

(declare-fun b!1786633 () Bool)

(assert (=> b!1786633 (= e!1143460 e!1143464)))

(declare-fun res!805724 () Bool)

(assert (=> b!1786633 (=> res!805724 e!1143464)))

(assert (=> b!1786633 (= res!805724 call!111380)))

(declare-fun b!1786634 () Bool)

(declare-fun res!805721 () Bool)

(assert (=> b!1786634 (=> res!805721 e!1143464)))

(assert (=> b!1786634 (= res!805721 (not (isEmpty!12444 (tail!2672 (list!8008 (charsOf!2179 (_1!11040 lt!695353)))))))))

(declare-fun b!1786635 () Bool)

(declare-fun res!805720 () Bool)

(assert (=> b!1786635 (=> res!805720 e!1143466)))

(assert (=> b!1786635 (= res!805720 (not (is-ElementMatch!4858 (regex!3530 lt!695377))))))

(assert (=> b!1786635 (= e!1143462 e!1143466)))

(declare-fun bm!111375 () Bool)

(assert (=> bm!111375 (= call!111380 (isEmpty!12444 (list!8008 (charsOf!2179 (_1!11040 lt!695353)))))))

(assert (= (and d!545298 c!290542) b!1786625))

(assert (= (and d!545298 (not c!290542)) b!1786626))

(assert (= (and d!545298 c!290544) b!1786624))

(assert (= (and d!545298 (not c!290544)) b!1786629))

(assert (= (and b!1786629 c!290543) b!1786622))

(assert (= (and b!1786629 (not c!290543)) b!1786635))

(assert (= (and b!1786635 (not res!805720)) b!1786632))

(assert (= (and b!1786632 res!805718) b!1786623))

(assert (= (and b!1786623 res!805725) b!1786628))

(assert (= (and b!1786628 res!805722) b!1786631))

(assert (= (and b!1786632 (not res!805719)) b!1786630))

(assert (= (and b!1786630 res!805723) b!1786633))

(assert (= (and b!1786633 (not res!805724)) b!1786634))

(assert (= (and b!1786634 (not res!805721)) b!1786627))

(assert (= (or b!1786624 b!1786623 b!1786633) bm!111375))

(assert (=> b!1786634 m!2209481))

(declare-fun m!2210405 () Bool)

(assert (=> b!1786634 m!2210405))

(assert (=> b!1786634 m!2210405))

(declare-fun m!2210407 () Bool)

(assert (=> b!1786634 m!2210407))

(declare-fun m!2210409 () Bool)

(assert (=> b!1786625 m!2210409))

(assert (=> b!1786628 m!2209481))

(assert (=> b!1786628 m!2210405))

(assert (=> b!1786628 m!2210405))

(assert (=> b!1786628 m!2210407))

(assert (=> bm!111375 m!2209481))

(declare-fun m!2210411 () Bool)

(assert (=> bm!111375 m!2210411))

(assert (=> b!1786627 m!2209481))

(declare-fun m!2210413 () Bool)

(assert (=> b!1786627 m!2210413))

(assert (=> b!1786631 m!2209481))

(assert (=> b!1786631 m!2210413))

(assert (=> d!545298 m!2209481))

(assert (=> d!545298 m!2210411))

(declare-fun m!2210415 () Bool)

(assert (=> d!545298 m!2210415))

(assert (=> b!1786626 m!2209481))

(assert (=> b!1786626 m!2210413))

(assert (=> b!1786626 m!2210413))

(declare-fun m!2210417 () Bool)

(assert (=> b!1786626 m!2210417))

(assert (=> b!1786626 m!2209481))

(assert (=> b!1786626 m!2210405))

(assert (=> b!1786626 m!2210417))

(assert (=> b!1786626 m!2210405))

(declare-fun m!2210419 () Bool)

(assert (=> b!1786626 m!2210419))

(assert (=> b!1785922 d!545298))

(declare-fun d!545300 () Bool)

(assert (=> d!545300 (= (list!8008 (charsOf!2179 (_1!11040 lt!695353))) (list!8010 (c!290421 (charsOf!2179 (_1!11040 lt!695353)))))))

(declare-fun bs!405440 () Bool)

(assert (= bs!405440 d!545300))

(declare-fun m!2210421 () Bool)

(assert (=> bs!405440 m!2210421))

(assert (=> b!1785922 d!545300))

(assert (=> b!1785922 d!545168))

(declare-fun d!545302 () Bool)

(assert (=> d!545302 (= (get!6066 lt!695383) (v!25579 lt!695383))))

(assert (=> b!1785922 d!545302))

(declare-fun d!545304 () Bool)

(assert (=> d!545304 (= (inv!25645 (dynLambda!9713 (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) (dynLambda!9714 (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) lt!695347))) (isBalanced!2049 (c!290421 (dynLambda!9713 (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) (dynLambda!9714 (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) lt!695347)))))))

(declare-fun bs!405441 () Bool)

(assert (= bs!405441 d!545304))

(declare-fun m!2210423 () Bool)

(assert (=> bs!405441 m!2210423))

(assert (=> tb!108751 d!545304))

(declare-fun b!1786646 () Bool)

(declare-fun b_free!49659 () Bool)

(declare-fun b_next!50363 () Bool)

(assert (=> b!1786646 (= b_free!49659 (not b_next!50363))))

(declare-fun t!167166 () Bool)

(declare-fun tb!108811 () Bool)

(assert (=> (and b!1786646 (= (toValue!5057 (transformation!3530 (h!25091 (t!167113 rules!3447)))) (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353))))) t!167166) tb!108811))

(declare-fun result!130916 () Bool)

(assert (= result!130916 result!130854))

(assert (=> d!545086 t!167166))

(assert (=> d!545102 t!167166))

(declare-fun tb!108813 () Bool)

(declare-fun t!167168 () Bool)

(assert (=> (and b!1786646 (= (toValue!5057 (transformation!3530 (h!25091 (t!167113 rules!3447)))) (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353))))) t!167168) tb!108813))

(declare-fun result!130918 () Bool)

(assert (= result!130918 result!130884))

(assert (=> d!545082 t!167168))

(assert (=> d!545082 t!167166))

(assert (=> b!1785917 t!167166))

(declare-fun t!167170 () Bool)

(declare-fun tb!108815 () Bool)

(assert (=> (and b!1786646 (= (toValue!5057 (transformation!3530 (h!25091 (t!167113 rules!3447)))) (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353))))) t!167170) tb!108815))

(declare-fun result!130920 () Bool)

(assert (= result!130920 result!130896))

(assert (=> d!545208 t!167170))

(declare-fun b_and!137545 () Bool)

(declare-fun tp!505274 () Bool)

(assert (=> b!1786646 (= tp!505274 (and (=> t!167168 result!130918) (=> t!167166 result!130916) (=> t!167170 result!130920) b_and!137545))))

(declare-fun b_free!49661 () Bool)

(declare-fun b_next!50365 () Bool)

(assert (=> b!1786646 (= b_free!49661 (not b_next!50365))))

(declare-fun t!167172 () Bool)

(declare-fun tb!108817 () Bool)

(assert (=> (and b!1786646 (= (toChars!4916 (transformation!3530 (h!25091 (t!167113 rules!3447)))) (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353))))) t!167172) tb!108817))

(declare-fun result!130922 () Bool)

(assert (= result!130922 result!130840))

(assert (=> b!1785903 t!167172))

(declare-fun tb!108819 () Bool)

(declare-fun t!167174 () Bool)

(assert (=> (and b!1786646 (= (toChars!4916 (transformation!3530 (h!25091 (t!167113 rules!3447)))) (toChars!4916 (transformation!3530 (rule!5618 token!523)))) t!167174) tb!108819))

(declare-fun result!130924 () Bool)

(assert (= result!130924 result!130890))

(assert (=> d!545124 t!167174))

(assert (=> d!545168 t!167172))

(declare-fun tb!108821 () Bool)

(declare-fun t!167176 () Bool)

(assert (=> (and b!1786646 (= (toChars!4916 (transformation!3530 (h!25091 (t!167113 rules!3447)))) (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353))))) t!167176) tb!108821))

(declare-fun result!130926 () Bool)

(assert (= result!130926 result!130848))

(assert (=> d!545102 t!167176))

(assert (=> b!1786159 t!167174))

(assert (=> b!1785917 t!167176))

(declare-fun tp!505273 () Bool)

(declare-fun b_and!137547 () Bool)

(assert (=> b!1786646 (= tp!505273 (and (=> t!167172 result!130922) (=> t!167176 result!130926) (=> t!167174 result!130924) b_and!137547))))

(declare-fun e!1143475 () Bool)

(assert (=> b!1786646 (= e!1143475 (and tp!505274 tp!505273))))

(declare-fun b!1786645 () Bool)

(declare-fun tp!505276 () Bool)

(declare-fun e!1143476 () Bool)

(assert (=> b!1786645 (= e!1143476 (and tp!505276 (inv!25639 (tag!3932 (h!25091 (t!167113 rules!3447)))) (inv!25642 (transformation!3530 (h!25091 (t!167113 rules!3447)))) e!1143475))))

(declare-fun b!1786644 () Bool)

(declare-fun e!1143478 () Bool)

(declare-fun tp!505275 () Bool)

(assert (=> b!1786644 (= e!1143478 (and e!1143476 tp!505275))))

(assert (=> b!1785902 (= tp!505212 e!1143478)))

(assert (= b!1786645 b!1786646))

(assert (= b!1786644 b!1786645))

(assert (= (and b!1785902 (is-Cons!19690 (t!167113 rules!3447))) b!1786644))

(declare-fun m!2210425 () Bool)

(assert (=> b!1786645 m!2210425))

(declare-fun m!2210427 () Bool)

(assert (=> b!1786645 m!2210427))

(declare-fun b!1786658 () Bool)

(declare-fun e!1143481 () Bool)

(declare-fun tp!505289 () Bool)

(declare-fun tp!505290 () Bool)

(assert (=> b!1786658 (= e!1143481 (and tp!505289 tp!505290))))

(declare-fun b!1786657 () Bool)

(assert (=> b!1786657 (= e!1143481 tp_is_empty!7959)))

(declare-fun b!1786659 () Bool)

(declare-fun tp!505291 () Bool)

(assert (=> b!1786659 (= e!1143481 tp!505291)))

(declare-fun b!1786660 () Bool)

(declare-fun tp!505287 () Bool)

(declare-fun tp!505288 () Bool)

(assert (=> b!1786660 (= e!1143481 (and tp!505287 tp!505288))))

(assert (=> b!1785884 (= tp!505213 e!1143481)))

(assert (= (and b!1785884 (is-ElementMatch!4858 (regex!3530 rule!422))) b!1786657))

(assert (= (and b!1785884 (is-Concat!8479 (regex!3530 rule!422))) b!1786658))

(assert (= (and b!1785884 (is-Star!4858 (regex!3530 rule!422))) b!1786659))

(assert (= (and b!1785884 (is-Union!4858 (regex!3530 rule!422))) b!1786660))

(declare-fun e!1143487 () Bool)

(declare-fun b!1786669 () Bool)

(declare-fun tp!505299 () Bool)

(declare-fun tp!505300 () Bool)

(assert (=> b!1786669 (= e!1143487 (and (inv!25644 (left!15787 (c!290421 (dynLambda!9713 (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) (dynLambda!9714 (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) lt!695347))))) tp!505300 (inv!25644 (right!16117 (c!290421 (dynLambda!9713 (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) (dynLambda!9714 (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) lt!695347))))) tp!505299))))

(declare-fun b!1786671 () Bool)

(declare-fun e!1143486 () Bool)

(declare-fun tp!505298 () Bool)

(assert (=> b!1786671 (= e!1143486 tp!505298)))

(declare-fun b!1786670 () Bool)

(declare-fun inv!25654 (IArray!13105) Bool)

(assert (=> b!1786670 (= e!1143487 (and (inv!25654 (xs!9426 (c!290421 (dynLambda!9713 (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) (dynLambda!9714 (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) lt!695347))))) e!1143486))))

(assert (=> b!1785939 (= tp!505222 (and (inv!25644 (c!290421 (dynLambda!9713 (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) (dynLambda!9714 (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) lt!695347)))) e!1143487))))

(assert (= (and b!1785939 (is-Node!6550 (c!290421 (dynLambda!9713 (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) (dynLambda!9714 (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) lt!695347))))) b!1786669))

(assert (= b!1786670 b!1786671))

(assert (= (and b!1785939 (is-Leaf!9536 (c!290421 (dynLambda!9713 (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) (dynLambda!9714 (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) lt!695347))))) b!1786670))

(declare-fun m!2210429 () Bool)

(assert (=> b!1786669 m!2210429))

(declare-fun m!2210431 () Bool)

(assert (=> b!1786669 m!2210431))

(declare-fun m!2210433 () Bool)

(assert (=> b!1786670 m!2210433))

(assert (=> b!1785939 m!2209341))

(declare-fun b!1786676 () Bool)

(declare-fun e!1143490 () Bool)

(declare-fun tp!505303 () Bool)

(assert (=> b!1786676 (= e!1143490 (and tp_is_empty!7959 tp!505303))))

(assert (=> b!1785888 (= tp!505214 e!1143490)))

(assert (= (and b!1785888 (is-Cons!19689 (originalCharacters!4344 token!523))) b!1786676))

(declare-fun b!1786678 () Bool)

(declare-fun e!1143491 () Bool)

(declare-fun tp!505306 () Bool)

(declare-fun tp!505307 () Bool)

(assert (=> b!1786678 (= e!1143491 (and tp!505306 tp!505307))))

(declare-fun b!1786677 () Bool)

(assert (=> b!1786677 (= e!1143491 tp_is_empty!7959)))

(declare-fun b!1786679 () Bool)

(declare-fun tp!505308 () Bool)

(assert (=> b!1786679 (= e!1143491 tp!505308)))

(declare-fun b!1786680 () Bool)

(declare-fun tp!505304 () Bool)

(declare-fun tp!505305 () Bool)

(assert (=> b!1786680 (= e!1143491 (and tp!505304 tp!505305))))

(assert (=> b!1785920 (= tp!505208 e!1143491)))

(assert (= (and b!1785920 (is-ElementMatch!4858 (regex!3530 (h!25091 rules!3447)))) b!1786677))

(assert (= (and b!1785920 (is-Concat!8479 (regex!3530 (h!25091 rules!3447)))) b!1786678))

(assert (= (and b!1785920 (is-Star!4858 (regex!3530 (h!25091 rules!3447)))) b!1786679))

(assert (= (and b!1785920 (is-Union!4858 (regex!3530 (h!25091 rules!3447)))) b!1786680))

(declare-fun b!1786681 () Bool)

(declare-fun e!1143492 () Bool)

(declare-fun tp!505309 () Bool)

(assert (=> b!1786681 (= e!1143492 (and tp_is_empty!7959 tp!505309))))

(assert (=> b!1785904 (= tp!505218 e!1143492)))

(assert (= (and b!1785904 (is-Cons!19689 (t!167112 suffix!1421))) b!1786681))

(declare-fun tp!505311 () Bool)

(declare-fun tp!505312 () Bool)

(declare-fun b!1786682 () Bool)

(declare-fun e!1143494 () Bool)

(assert (=> b!1786682 (= e!1143494 (and (inv!25644 (left!15787 (c!290421 (dynLambda!9713 (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) (value!110279 (_1!11040 lt!695353)))))) tp!505312 (inv!25644 (right!16117 (c!290421 (dynLambda!9713 (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) (value!110279 (_1!11040 lt!695353)))))) tp!505311))))

(declare-fun b!1786684 () Bool)

(declare-fun e!1143493 () Bool)

(declare-fun tp!505310 () Bool)

(assert (=> b!1786684 (= e!1143493 tp!505310)))

(declare-fun b!1786683 () Bool)

(assert (=> b!1786683 (= e!1143494 (and (inv!25654 (xs!9426 (c!290421 (dynLambda!9713 (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) (value!110279 (_1!11040 lt!695353)))))) e!1143493))))

(assert (=> b!1785938 (= tp!505221 (and (inv!25644 (c!290421 (dynLambda!9713 (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) (value!110279 (_1!11040 lt!695353))))) e!1143494))))

(assert (= (and b!1785938 (is-Node!6550 (c!290421 (dynLambda!9713 (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) (value!110279 (_1!11040 lt!695353)))))) b!1786682))

(assert (= b!1786683 b!1786684))

(assert (= (and b!1785938 (is-Leaf!9536 (c!290421 (dynLambda!9713 (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))) (value!110279 (_1!11040 lt!695353)))))) b!1786683))

(declare-fun m!2210435 () Bool)

(assert (=> b!1786682 m!2210435))

(declare-fun m!2210437 () Bool)

(assert (=> b!1786682 m!2210437))

(declare-fun m!2210439 () Bool)

(assert (=> b!1786683 m!2210439))

(assert (=> b!1785938 m!2209337))

(declare-fun b!1786686 () Bool)

(declare-fun e!1143495 () Bool)

(declare-fun tp!505315 () Bool)

(declare-fun tp!505316 () Bool)

(assert (=> b!1786686 (= e!1143495 (and tp!505315 tp!505316))))

(declare-fun b!1786685 () Bool)

(assert (=> b!1786685 (= e!1143495 tp_is_empty!7959)))

(declare-fun b!1786687 () Bool)

(declare-fun tp!505317 () Bool)

(assert (=> b!1786687 (= e!1143495 tp!505317)))

(declare-fun b!1786688 () Bool)

(declare-fun tp!505313 () Bool)

(declare-fun tp!505314 () Bool)

(assert (=> b!1786688 (= e!1143495 (and tp!505313 tp!505314))))

(assert (=> b!1785889 (= tp!505211 e!1143495)))

(assert (= (and b!1785889 (is-ElementMatch!4858 (regex!3530 (rule!5618 token!523)))) b!1786685))

(assert (= (and b!1785889 (is-Concat!8479 (regex!3530 (rule!5618 token!523)))) b!1786686))

(assert (= (and b!1785889 (is-Star!4858 (regex!3530 (rule!5618 token!523)))) b!1786687))

(assert (= (and b!1785889 (is-Union!4858 (regex!3530 (rule!5618 token!523)))) b!1786688))

(declare-fun b_lambda!58637 () Bool)

(assert (= b_lambda!58619 (or (and b!1785886 b_free!49637 (= (toChars!4916 (transformation!3530 rule!422)) (toChars!4916 (transformation!3530 (rule!5618 token!523))))) (and b!1785910 b_free!49641) (and b!1785900 b_free!49645 (= (toChars!4916 (transformation!3530 (h!25091 rules!3447))) (toChars!4916 (transformation!3530 (rule!5618 token!523))))) (and b!1786646 b_free!49661 (= (toChars!4916 (transformation!3530 (h!25091 (t!167113 rules!3447)))) (toChars!4916 (transformation!3530 (rule!5618 token!523))))) b_lambda!58637)))

(declare-fun b_lambda!58639 () Bool)

(assert (= b_lambda!58605 (or (and b!1785886 b_free!49635 (= (toValue!5057 (transformation!3530 rule!422)) (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))))) (and b!1785910 b_free!49639 (= (toValue!5057 (transformation!3530 (rule!5618 token!523))) (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))))) (and b!1785900 b_free!49643 (= (toValue!5057 (transformation!3530 (h!25091 rules!3447))) (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))))) (and b!1786646 b_free!49659 (= (toValue!5057 (transformation!3530 (h!25091 (t!167113 rules!3447)))) (toValue!5057 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))))) b_lambda!58639)))

(declare-fun b_lambda!58641 () Bool)

(assert (= b_lambda!58603 (or (and b!1785886 b_free!49637 (= (toChars!4916 (transformation!3530 rule!422)) (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))))) (and b!1785910 b_free!49641 (= (toChars!4916 (transformation!3530 (rule!5618 token!523))) (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))))) (and b!1785900 b_free!49645 (= (toChars!4916 (transformation!3530 (h!25091 rules!3447))) (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))))) (and b!1786646 b_free!49661 (= (toChars!4916 (transformation!3530 (h!25091 (t!167113 rules!3447)))) (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))))) b_lambda!58641)))

(declare-fun b_lambda!58643 () Bool)

(assert (= b_lambda!58625 (or (and b!1785886 b_free!49637 (= (toChars!4916 (transformation!3530 rule!422)) (toChars!4916 (transformation!3530 (rule!5618 token!523))))) (and b!1785910 b_free!49641) (and b!1785900 b_free!49645 (= (toChars!4916 (transformation!3530 (h!25091 rules!3447))) (toChars!4916 (transformation!3530 (rule!5618 token!523))))) (and b!1786646 b_free!49661 (= (toChars!4916 (transformation!3530 (h!25091 (t!167113 rules!3447)))) (toChars!4916 (transformation!3530 (rule!5618 token!523))))) b_lambda!58643)))

(declare-fun b_lambda!58645 () Bool)

(assert (= b_lambda!58601 (or (and b!1785886 b_free!49637 (= (toChars!4916 (transformation!3530 rule!422)) (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))))) (and b!1785910 b_free!49641 (= (toChars!4916 (transformation!3530 (rule!5618 token!523))) (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))))) (and b!1785900 b_free!49645 (= (toChars!4916 (transformation!3530 (h!25091 rules!3447))) (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))))) (and b!1786646 b_free!49661 (= (toChars!4916 (transformation!3530 (h!25091 (t!167113 rules!3447)))) (toChars!4916 (transformation!3530 (rule!5618 (_1!11040 lt!695353)))))) b_lambda!58645)))

(push 1)

(assert (not d!545124))

(assert (not b!1786489))

(assert (not b!1786628))

(assert (not d!545090))

(assert (not d!545252))

(assert (not b_next!50343))

(assert (not b!1786305))

(assert (not b!1786625))

(assert (not b!1786380))

(assert (not b!1786442))

(assert (not d!545260))

(assert (not b!1786181))

(assert (not b!1786660))

(assert (not d!545088))

(assert (not b!1786153))

(assert (not b!1786670))

(assert (not b!1786676))

(assert (not b!1786378))

(assert (not d!545080))

(assert (not b!1786479))

(assert (not d!545192))

(assert (not d!545176))

(assert (not b!1786208))

(assert (not b!1786575))

(assert (not b_next!50341))

(assert (not b!1786618))

(assert (not b!1786593))

(assert (not b!1786568))

(assert (not bm!111363))

(assert (not b!1786310))

(assert b_and!137545)

(assert (not b!1786314))

(assert (not b!1786210))

(assert (not b!1786336))

(assert (not bm!111364))

(assert (not b!1786682))

(assert (not b!1786558))

(assert (not d!545186))

(assert b_and!137515)

(assert (not d!545238))

(assert (not d!545112))

(assert (not b!1786251))

(assert (not b!1786355))

(assert (not b!1786307))

(assert (not b!1786687))

(assert (not b!1786569))

(assert (not d!545194))

(assert (not d!545246))

(assert (not b!1786141))

(assert (not b!1786659))

(assert (not b!1786566))

(assert (not b!1786567))

(assert (not d!545180))

(assert (not b!1786147))

(assert (not d!545174))

(assert (not b!1786542))

(assert (not d!545114))

(assert (not b!1786626))

(assert (not b!1786144))

(assert tp_is_empty!7959)

(assert (not b!1786658))

(assert (not bm!111360))

(assert b_and!137517)

(assert (not d!545122))

(assert (not d!545290))

(assert (not d!545134))

(assert (not b_next!50339))

(assert (not d!545100))

(assert (not d!545210))

(assert (not b!1786320))

(assert (not b!1786557))

(assert (not b!1786560))

(assert (not b!1786311))

(assert (not b!1786547))

(assert (not b!1786361))

(assert (not bm!111366))

(assert (not bm!111375))

(assert (not b!1786220))

(assert (not d!545288))

(assert (not b!1786645))

(assert (not b_next!50347))

(assert (not b!1786347))

(assert (not b!1786681))

(assert (not b!1786342))

(assert (not b!1786686))

(assert (not d!545280))

(assert (not b!1786572))

(assert (not b!1786180))

(assert (not d!545264))

(assert (not b!1786321))

(assert (not d!545168))

(assert (not bm!111365))

(assert (not b!1786596))

(assert (not b!1786213))

(assert (not d!545132))

(assert (not d!545150))

(assert (not b!1785938))

(assert (not b!1786139))

(assert (not b!1786269))

(assert (not d!545098))

(assert (not b_lambda!58621))

(assert (not b!1786212))

(assert (not b!1786219))

(assert (not b!1786502))

(assert (not b!1786344))

(assert (not b!1786606))

(assert (not d!545172))

(assert (not b!1786245))

(assert (not b_next!50345))

(assert (not tb!108793))

(assert (not b!1786449))

(assert (not b!1786318))

(assert (not b!1786627))

(assert (not b!1786561))

(assert (not d!545126))

(assert (not b!1785939))

(assert (not b!1786590))

(assert (not b!1786331))

(assert (not b!1786604))

(assert (not b_lambda!58631))

(assert (not b_lambda!58645))

(assert (not b!1786456))

(assert (not d!545206))

(assert (not b!1786495))

(assert (not b!1786335))

(assert (not b!1786094))

(assert (not tb!108781))

(assert (not d!545234))

(assert (not b!1786621))

(assert (not d!545304))

(assert (not d!545184))

(assert (not d!545096))

(assert (not d!545294))

(assert (not b!1786548))

(assert (not b!1786608))

(assert (not b!1786179))

(assert (not b!1786611))

(assert (not b_lambda!58627))

(assert (not d!545232))

(assert b_and!137527)

(assert (not b!1786445))

(assert (not b!1786634))

(assert (not b!1786083))

(assert (not b!1786252))

(assert (not b_lambda!58643))

(assert (not d!545130))

(assert (not b!1786140))

(assert (not b!1786487))

(assert (not b!1786444))

(assert b_and!137531)

(assert (not b_next!50363))

(assert (not b!1786688))

(assert (not b_lambda!58613))

(assert (not d!545212))

(assert (not b!1786683))

(assert (not b!1786591))

(assert (not d!545274))

(assert (not d!545258))

(assert (not d!545282))

(assert (not d!545240))

(assert (not b!1786250))

(assert (not d!545222))

(assert (not b_lambda!58617))

(assert (not b!1786313))

(assert (not b!1786447))

(assert (not b!1786317))

(assert (not d!545078))

(assert (not b!1786609))

(assert (not d!545298))

(assert (not d!545106))

(assert (not b!1786206))

(assert (not tb!108787))

(assert (not b!1786678))

(assert b_and!137529)

(assert (not b!1786159))

(assert (not b!1786270))

(assert (not b_lambda!58639))

(assert (not b!1786312))

(assert (not b!1786341))

(assert (not b!1786377))

(assert (not b!1786319))

(assert (not b!1786332))

(assert (not d!545182))

(assert (not b!1786357))

(assert (not b!1786356))

(assert (not b_lambda!58641))

(assert (not b!1786612))

(assert (not b!1786247))

(assert (not d!545076))

(assert (not d!545146))

(assert (not b!1786671))

(assert (not b!1786211))

(assert (not b!1786364))

(assert (not b!1786669))

(assert (not b!1786679))

(assert (not b_lambda!58637))

(assert (not b!1786684))

(assert (not b!1786138))

(assert (not b_lambda!58615))

(assert (not b!1786680))

(assert (not b!1786169))

(assert (not b!1786214))

(assert (not b!1786644))

(assert (not b!1786098))

(assert (not b_next!50349))

(assert (not b!1786243))

(assert (not d!545292))

(assert (not b!1786603))

(assert (not b!1786446))

(assert (not b!1786350))

(assert (not d!545142))

(assert (not b!1786306))

(assert (not b!1786207))

(assert b_and!137519)

(assert (not b!1786450))

(assert (not bm!111373))

(assert (not b!1786592))

(assert (not d!545296))

(assert (not b!1786160))

(assert (not b!1786443))

(assert (not b_lambda!58623))

(assert (not d!545228))

(assert (not b_next!50365))

(assert b_and!137547)

(assert (not d!545102))

(assert (not d!545178))

(assert (not d!545300))

(assert (not b!1786494))

(assert (not b!1786343))

(assert (not b!1786358))

(assert (not b!1786218))

(assert (not b!1786315))

(assert (not d!545092))

(assert (not bm!111374))

(assert (not b!1786599))

(assert (not b!1786549))

(assert (not d!545224))

(assert (not b!1786631))

(assert (not d!545084))

(assert (not b!1786556))

(assert (not d!545268))

(assert (not b!1786501))

(assert (not d!545094))

(assert (not b!1786161))

(assert (not d!545082))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!50343))

(assert (not b_next!50341))

(assert b_and!137545)

(assert b_and!137515)

(assert (not b_next!50347))

(assert (not b_next!50345))

(assert b_and!137527)

(assert b_and!137529)

(assert (not b_next!50349))

(assert b_and!137519)

(assert b_and!137517)

(assert (not b_next!50339))

(assert b_and!137531)

(assert (not b_next!50363))

(assert (not b_next!50365))

(assert b_and!137547)

(check-sat)

(pop 1)

