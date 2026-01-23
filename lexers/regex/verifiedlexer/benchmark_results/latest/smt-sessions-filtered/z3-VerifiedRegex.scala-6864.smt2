; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!361168 () Bool)

(assert start!361168)

(declare-fun b!3854252 () Bool)

(declare-fun b_free!103405 () Bool)

(declare-fun b_next!104109 () Bool)

(assert (=> b!3854252 (= b_free!103405 (not b_next!104109))))

(declare-fun tp!1168291 () Bool)

(declare-fun b_and!288123 () Bool)

(assert (=> b!3854252 (= tp!1168291 b_and!288123)))

(declare-fun b_free!103407 () Bool)

(declare-fun b_next!104111 () Bool)

(assert (=> b!3854252 (= b_free!103407 (not b_next!104111))))

(declare-fun tp!1168289 () Bool)

(declare-fun b_and!288125 () Bool)

(assert (=> b!3854252 (= tp!1168289 b_and!288125)))

(declare-fun b!3854262 () Bool)

(declare-fun b_free!103409 () Bool)

(declare-fun b_next!104113 () Bool)

(assert (=> b!3854262 (= b_free!103409 (not b_next!104113))))

(declare-fun tp!1168300 () Bool)

(declare-fun b_and!288127 () Bool)

(assert (=> b!3854262 (= tp!1168300 b_and!288127)))

(declare-fun b_free!103411 () Bool)

(declare-fun b_next!104115 () Bool)

(assert (=> b!3854262 (= b_free!103411 (not b_next!104115))))

(declare-fun tp!1168298 () Bool)

(declare-fun b_and!288129 () Bool)

(assert (=> b!3854262 (= tp!1168298 b_and!288129)))

(declare-fun b!3854261 () Bool)

(declare-fun b_free!103413 () Bool)

(declare-fun b_next!104117 () Bool)

(assert (=> b!3854261 (= b_free!103413 (not b_next!104117))))

(declare-fun tp!1168293 () Bool)

(declare-fun b_and!288131 () Bool)

(assert (=> b!3854261 (= tp!1168293 b_and!288131)))

(declare-fun b_free!103415 () Bool)

(declare-fun b_next!104119 () Bool)

(assert (=> b!3854261 (= b_free!103415 (not b_next!104119))))

(declare-fun tp!1168303 () Bool)

(declare-fun b_and!288133 () Bool)

(assert (=> b!3854261 (= tp!1168303 b_and!288133)))

(declare-fun e!2382434 () Bool)

(declare-fun b!3854235 () Bool)

(declare-fun e!2382423 () Bool)

(declare-datatypes ((List!40968 0))(
  ( (Nil!40844) (Cons!40844 (h!46264 (_ BitVec 16)) (t!312449 List!40968)) )
))
(declare-datatypes ((TokenValue!6546 0))(
  ( (FloatLiteralValue!13092 (text!46267 List!40968)) (TokenValueExt!6545 (__x!25309 Int)) (Broken!32730 (value!200614 List!40968)) (Object!6669) (End!6546) (Def!6546) (Underscore!6546) (Match!6546) (Else!6546) (Error!6546) (Case!6546) (If!6546) (Extends!6546) (Abstract!6546) (Class!6546) (Val!6546) (DelimiterValue!13092 (del!6606 List!40968)) (KeywordValue!6552 (value!200615 List!40968)) (CommentValue!13092 (value!200616 List!40968)) (WhitespaceValue!13092 (value!200617 List!40968)) (IndentationValue!6546 (value!200618 List!40968)) (String!46447) (Int32!6546) (Broken!32731 (value!200619 List!40968)) (Boolean!6547) (Unit!58515) (OperatorValue!6549 (op!6606 List!40968)) (IdentifierValue!13092 (value!200620 List!40968)) (IdentifierValue!13093 (value!200621 List!40968)) (WhitespaceValue!13093 (value!200622 List!40968)) (True!13092) (False!13092) (Broken!32732 (value!200623 List!40968)) (Broken!32733 (value!200624 List!40968)) (True!13093) (RightBrace!6546) (RightBracket!6546) (Colon!6546) (Null!6546) (Comma!6546) (LeftBracket!6546) (False!13093) (LeftBrace!6546) (ImaginaryLiteralValue!6546 (text!46268 List!40968)) (StringLiteralValue!19638 (value!200625 List!40968)) (EOFValue!6546 (value!200626 List!40968)) (IdentValue!6546 (value!200627 List!40968)) (DelimiterValue!13093 (value!200628 List!40968)) (DedentValue!6546 (value!200629 List!40968)) (NewLineValue!6546 (value!200630 List!40968)) (IntegerValue!19638 (value!200631 (_ BitVec 32)) (text!46269 List!40968)) (IntegerValue!19639 (value!200632 Int) (text!46270 List!40968)) (Times!6546) (Or!6546) (Equal!6546) (Minus!6546) (Broken!32734 (value!200633 List!40968)) (And!6546) (Div!6546) (LessEqual!6546) (Mod!6546) (Concat!17767) (Not!6546) (Plus!6546) (SpaceValue!6546 (value!200634 List!40968)) (IntegerValue!19640 (value!200635 Int) (text!46271 List!40968)) (StringLiteralValue!19639 (text!46272 List!40968)) (FloatLiteralValue!13093 (text!46273 List!40968)) (BytesLiteralValue!6546 (value!200636 List!40968)) (CommentValue!13093 (value!200637 List!40968)) (StringLiteralValue!19640 (value!200638 List!40968)) (ErrorTokenValue!6546 (msg!6607 List!40968)) )
))
(declare-datatypes ((C!22628 0))(
  ( (C!22629 (val!13408 Int)) )
))
(declare-datatypes ((Regex!11221 0))(
  ( (ElementMatch!11221 (c!671230 C!22628)) (Concat!17768 (regOne!22954 Regex!11221) (regTwo!22954 Regex!11221)) (EmptyExpr!11221) (Star!11221 (reg!11550 Regex!11221)) (EmptyLang!11221) (Union!11221 (regOne!22955 Regex!11221) (regTwo!22955 Regex!11221)) )
))
(declare-datatypes ((String!46448 0))(
  ( (String!46449 (value!200639 String)) )
))
(declare-datatypes ((List!40969 0))(
  ( (Nil!40845) (Cons!40845 (h!46265 C!22628) (t!312450 List!40969)) )
))
(declare-datatypes ((IArray!25059 0))(
  ( (IArray!25060 (innerList!12587 List!40969)) )
))
(declare-datatypes ((Conc!12527 0))(
  ( (Node!12527 (left!31491 Conc!12527) (right!31821 Conc!12527) (csize!25284 Int) (cheight!12738 Int)) (Leaf!19392 (xs!15833 IArray!25059) (csize!25285 Int)) (Empty!12527) )
))
(declare-datatypes ((BalanceConc!24648 0))(
  ( (BalanceConc!24649 (c!671231 Conc!12527)) )
))
(declare-datatypes ((TokenValueInjection!12520 0))(
  ( (TokenValueInjection!12521 (toValue!8740 Int) (toChars!8599 Int)) )
))
(declare-datatypes ((Rule!12432 0))(
  ( (Rule!12433 (regex!6316 Regex!11221) (tag!7176 String!46448) (isSeparator!6316 Bool) (transformation!6316 TokenValueInjection!12520)) )
))
(declare-datatypes ((Token!11770 0))(
  ( (Token!11771 (value!200640 TokenValue!6546) (rule!9174 Rule!12432) (size!30723 Int) (originalCharacters!6916 List!40969)) )
))
(declare-datatypes ((List!40970 0))(
  ( (Nil!40846) (Cons!40846 (h!46266 Token!11770) (t!312451 List!40970)) )
))
(declare-fun suffixTokens!72 () List!40970)

(declare-fun tp!1168295 () Bool)

(declare-fun inv!55000 (Token!11770) Bool)

(assert (=> b!3854235 (= e!2382434 (and (inv!55000 (h!46266 suffixTokens!72)) e!2382423 tp!1168295))))

(declare-fun b!3854236 () Bool)

(declare-fun e!2382437 () Bool)

(declare-fun e!2382447 () Bool)

(assert (=> b!3854236 (= e!2382437 e!2382447)))

(declare-fun res!1560304 () Bool)

(assert (=> b!3854236 (=> res!1560304 e!2382447)))

(declare-fun lt!1338837 () Int)

(declare-fun lt!1338833 () Int)

(declare-fun lt!1338846 () Int)

(declare-fun lt!1338841 () Int)

(assert (=> b!3854236 (= res!1560304 (or (not (= (+ lt!1338837 lt!1338833) lt!1338846)) (<= lt!1338841 lt!1338837)))))

(declare-fun prefix!426 () List!40969)

(declare-fun size!30724 (List!40969) Int)

(assert (=> b!3854236 (= lt!1338837 (size!30724 prefix!426))))

(declare-fun b!3854237 () Bool)

(declare-fun res!1560306 () Bool)

(declare-fun e!2382443 () Bool)

(assert (=> b!3854237 (=> (not res!1560306) (not e!2382443))))

(declare-fun suffixResult!91 () List!40969)

(declare-datatypes ((LexerInterface!5905 0))(
  ( (LexerInterfaceExt!5902 (__x!25310 Int)) (Lexer!5903) )
))
(declare-fun thiss!20629 () LexerInterface!5905)

(declare-fun suffix!1176 () List!40969)

(declare-datatypes ((List!40971 0))(
  ( (Nil!40847) (Cons!40847 (h!46267 Rule!12432) (t!312452 List!40971)) )
))
(declare-fun rules!2768 () List!40971)

(declare-datatypes ((tuple2!40038 0))(
  ( (tuple2!40039 (_1!23153 List!40970) (_2!23153 List!40969)) )
))
(declare-fun lexList!1673 (LexerInterface!5905 List!40971 List!40969) tuple2!40038)

(assert (=> b!3854237 (= res!1560306 (= (lexList!1673 thiss!20629 rules!2768 suffix!1176) (tuple2!40039 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3854238 () Bool)

(declare-fun e!2382433 () Bool)

(declare-fun e!2382436 () Bool)

(declare-fun tp!1168299 () Bool)

(assert (=> b!3854238 (= e!2382433 (and e!2382436 tp!1168299))))

(declare-fun b!3854239 () Bool)

(declare-fun res!1560318 () Bool)

(declare-fun e!2382425 () Bool)

(assert (=> b!3854239 (=> (not res!1560318) (not e!2382425))))

(declare-fun rulesInvariant!5248 (LexerInterface!5905 List!40971) Bool)

(assert (=> b!3854239 (= res!1560318 (rulesInvariant!5248 thiss!20629 rules!2768))))

(declare-fun b!3854240 () Bool)

(declare-fun res!1560311 () Bool)

(assert (=> b!3854240 (=> (not res!1560311) (not e!2382425))))

(declare-fun prefixTokens!80 () List!40970)

(declare-fun isEmpty!24180 (List!40970) Bool)

(assert (=> b!3854240 (= res!1560311 (not (isEmpty!24180 prefixTokens!80)))))

(declare-fun res!1560320 () Bool)

(assert (=> start!361168 (=> (not res!1560320) (not e!2382425))))

(get-info :version)

(assert (=> start!361168 (= res!1560320 ((_ is Lexer!5903) thiss!20629))))

(assert (=> start!361168 e!2382425))

(declare-fun e!2382449 () Bool)

(assert (=> start!361168 e!2382449))

(assert (=> start!361168 true))

(declare-fun e!2382444 () Bool)

(assert (=> start!361168 e!2382444))

(assert (=> start!361168 e!2382433))

(declare-fun e!2382432 () Bool)

(assert (=> start!361168 e!2382432))

(assert (=> start!361168 e!2382434))

(declare-fun e!2382424 () Bool)

(assert (=> start!361168 e!2382424))

(declare-fun b!3854241 () Bool)

(declare-fun tp_is_empty!19413 () Bool)

(declare-fun tp!1168304 () Bool)

(assert (=> b!3854241 (= e!2382449 (and tp_is_empty!19413 tp!1168304))))

(declare-fun b!3854242 () Bool)

(declare-fun e!2382442 () Bool)

(assert (=> b!3854242 (= e!2382443 e!2382442)))

(declare-fun res!1560313 () Bool)

(assert (=> b!3854242 (=> (not res!1560313) (not e!2382442))))

(declare-datatypes ((tuple2!40040 0))(
  ( (tuple2!40041 (_1!23154 Token!11770) (_2!23154 List!40969)) )
))
(declare-datatypes ((Option!8734 0))(
  ( (None!8733) (Some!8733 (v!39029 tuple2!40040)) )
))
(declare-fun lt!1338843 () Option!8734)

(assert (=> b!3854242 (= res!1560313 ((_ is Some!8733) lt!1338843))))

(declare-fun lt!1338847 () List!40969)

(declare-fun maxPrefix!3209 (LexerInterface!5905 List!40971 List!40969) Option!8734)

(assert (=> b!3854242 (= lt!1338843 (maxPrefix!3209 thiss!20629 rules!2768 lt!1338847))))

(declare-fun b!3854243 () Bool)

(declare-fun res!1560317 () Bool)

(declare-fun e!2382445 () Bool)

(assert (=> b!3854243 (=> res!1560317 e!2382445)))

(declare-fun lt!1338831 () tuple2!40040)

(assert (=> b!3854243 (= res!1560317 (>= (size!30724 (_2!23154 lt!1338831)) lt!1338833))))

(declare-fun tp!1168288 () Bool)

(declare-fun e!2382430 () Bool)

(declare-fun b!3854244 () Bool)

(declare-fun e!2382428 () Bool)

(declare-fun inv!54997 (String!46448) Bool)

(declare-fun inv!55001 (TokenValueInjection!12520) Bool)

(assert (=> b!3854244 (= e!2382430 (and tp!1168288 (inv!54997 (tag!7176 (rule!9174 (h!46266 prefixTokens!80)))) (inv!55001 (transformation!6316 (rule!9174 (h!46266 prefixTokens!80)))) e!2382428))))

(declare-fun b!3854245 () Bool)

(declare-fun res!1560307 () Bool)

(assert (=> b!3854245 (=> (not res!1560307) (not e!2382425))))

(declare-fun isEmpty!24181 (List!40969) Bool)

(assert (=> b!3854245 (= res!1560307 (not (isEmpty!24181 prefix!426)))))

(declare-fun b!3854246 () Bool)

(declare-fun res!1560315 () Bool)

(declare-fun e!2382435 () Bool)

(assert (=> b!3854246 (=> res!1560315 e!2382435)))

(declare-fun lt!1338844 () tuple2!40038)

(declare-fun lt!1338845 () tuple2!40038)

(declare-fun ++!10389 (List!40970 List!40970) List!40970)

(assert (=> b!3854246 (= res!1560315 (not (= lt!1338844 (tuple2!40039 (++!10389 (Cons!40846 (_1!23154 (v!39029 lt!1338843)) Nil!40846) (_1!23153 lt!1338845)) (_2!23153 lt!1338845)))))))

(declare-fun b!3854247 () Bool)

(declare-fun e!2382429 () Bool)

(declare-fun tp!1168297 () Bool)

(assert (=> b!3854247 (= e!2382436 (and tp!1168297 (inv!54997 (tag!7176 (h!46267 rules!2768))) (inv!55001 (transformation!6316 (h!46267 rules!2768))) e!2382429))))

(declare-fun b!3854248 () Bool)

(assert (=> b!3854248 (= e!2382425 e!2382443)))

(declare-fun res!1560312 () Bool)

(assert (=> b!3854248 (=> (not res!1560312) (not e!2382443))))

(declare-fun lt!1338835 () List!40970)

(assert (=> b!3854248 (= res!1560312 (= lt!1338844 (tuple2!40039 lt!1338835 suffixResult!91)))))

(assert (=> b!3854248 (= lt!1338844 (lexList!1673 thiss!20629 rules!2768 lt!1338847))))

(assert (=> b!3854248 (= lt!1338835 (++!10389 prefixTokens!80 suffixTokens!72))))

(declare-fun ++!10390 (List!40969 List!40969) List!40969)

(assert (=> b!3854248 (= lt!1338847 (++!10390 prefix!426 suffix!1176))))

(declare-fun b!3854249 () Bool)

(declare-fun e!2382448 () Bool)

(assert (=> b!3854249 (= e!2382448 e!2382437)))

(declare-fun res!1560309 () Bool)

(assert (=> b!3854249 (=> res!1560309 e!2382437)))

(declare-fun lt!1338832 () Int)

(assert (=> b!3854249 (= res!1560309 (not (= (+ lt!1338841 lt!1338832) lt!1338846)))))

(assert (=> b!3854249 (= lt!1338846 (size!30724 lt!1338847))))

(declare-fun tp!1168301 () Bool)

(declare-fun e!2382431 () Bool)

(declare-fun b!3854250 () Bool)

(declare-fun e!2382426 () Bool)

(assert (=> b!3854250 (= e!2382426 (and tp!1168301 (inv!54997 (tag!7176 (rule!9174 (h!46266 suffixTokens!72)))) (inv!55001 (transformation!6316 (rule!9174 (h!46266 suffixTokens!72)))) e!2382431))))

(declare-fun b!3854251 () Bool)

(declare-fun res!1560319 () Bool)

(assert (=> b!3854251 (=> res!1560319 e!2382435)))

(assert (=> b!3854251 (= res!1560319 (or (not (= lt!1338845 (tuple2!40039 (_1!23153 lt!1338845) (_2!23153 lt!1338845)))) (= (_2!23154 (v!39029 lt!1338843)) suffix!1176)))))

(assert (=> b!3854252 (= e!2382429 (and tp!1168291 tp!1168289))))

(declare-fun b!3854253 () Bool)

(declare-fun tp!1168292 () Bool)

(assert (=> b!3854253 (= e!2382424 (and tp_is_empty!19413 tp!1168292))))

(declare-fun b!3854254 () Bool)

(declare-fun e!2382441 () Bool)

(assert (=> b!3854254 (= e!2382441 (= (size!30723 (_1!23154 (v!39029 lt!1338843))) (size!30724 (originalCharacters!6916 (_1!23154 (v!39029 lt!1338843))))))))

(declare-fun tp!1168296 () Bool)

(declare-fun b!3854255 () Bool)

(declare-fun inv!21 (TokenValue!6546) Bool)

(assert (=> b!3854255 (= e!2382423 (and (inv!21 (value!200640 (h!46266 suffixTokens!72))) e!2382426 tp!1168296))))

(declare-fun e!2382450 () Bool)

(declare-fun tp!1168294 () Bool)

(declare-fun b!3854256 () Bool)

(assert (=> b!3854256 (= e!2382432 (and (inv!55000 (h!46266 prefixTokens!80)) e!2382450 tp!1168294))))

(declare-fun b!3854257 () Bool)

(assert (=> b!3854257 (= e!2382435 e!2382448)))

(declare-fun res!1560303 () Bool)

(assert (=> b!3854257 (=> res!1560303 e!2382448)))

(assert (=> b!3854257 (= res!1560303 (>= lt!1338832 lt!1338833))))

(assert (=> b!3854257 (= lt!1338833 (size!30724 suffix!1176))))

(assert (=> b!3854257 (= lt!1338832 (size!30724 (_2!23154 (v!39029 lt!1338843))))))

(declare-fun tp!1168290 () Bool)

(declare-fun b!3854258 () Bool)

(assert (=> b!3854258 (= e!2382450 (and (inv!21 (value!200640 (h!46266 prefixTokens!80))) e!2382430 tp!1168290))))

(declare-fun b!3854259 () Bool)

(declare-fun e!2382427 () Bool)

(assert (=> b!3854259 (= e!2382447 e!2382427)))

(declare-fun res!1560305 () Bool)

(assert (=> b!3854259 (=> res!1560305 e!2382427)))

(declare-fun lt!1338849 () List!40969)

(declare-fun matchR!5368 (Regex!11221 List!40969) Bool)

(assert (=> b!3854259 (= res!1560305 (not (matchR!5368 (regex!6316 (rule!9174 (_1!23154 (v!39029 lt!1338843)))) lt!1338849)))))

(declare-fun lt!1338848 () TokenValue!6546)

(declare-fun maxPrefixOneRule!2291 (LexerInterface!5905 Rule!12432 List!40969) Option!8734)

(assert (=> b!3854259 (= (maxPrefixOneRule!2291 thiss!20629 (rule!9174 (_1!23154 (v!39029 lt!1338843))) lt!1338847) (Some!8733 (tuple2!40041 (Token!11771 lt!1338848 (rule!9174 (_1!23154 (v!39029 lt!1338843))) lt!1338841 lt!1338849) (_2!23154 (v!39029 lt!1338843)))))))

(declare-datatypes ((Unit!58516 0))(
  ( (Unit!58517) )
))
(declare-fun lt!1338840 () Unit!58516)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1189 (LexerInterface!5905 List!40971 List!40969 List!40969 List!40969 Rule!12432) Unit!58516)

(assert (=> b!3854259 (= lt!1338840 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1189 thiss!20629 rules!2768 lt!1338849 lt!1338847 (_2!23154 (v!39029 lt!1338843)) (rule!9174 (_1!23154 (v!39029 lt!1338843)))))))

(declare-fun b!3854260 () Bool)

(declare-fun res!1560316 () Bool)

(assert (=> b!3854260 (=> (not res!1560316) (not e!2382425))))

(declare-fun isEmpty!24182 (List!40971) Bool)

(assert (=> b!3854260 (= res!1560316 (not (isEmpty!24182 rules!2768)))))

(assert (=> b!3854261 (= e!2382428 (and tp!1168293 tp!1168303))))

(assert (=> b!3854262 (= e!2382431 (and tp!1168300 tp!1168298))))

(declare-fun b!3854263 () Bool)

(declare-fun rulesValidInductive!2248 (LexerInterface!5905 List!40971) Bool)

(assert (=> b!3854263 (= e!2382445 (rulesValidInductive!2248 thiss!20629 rules!2768))))

(declare-fun b!3854264 () Bool)

(assert (=> b!3854264 (= e!2382442 (not e!2382435))))

(declare-fun res!1560308 () Bool)

(assert (=> b!3854264 (=> res!1560308 e!2382435)))

(declare-fun lt!1338842 () List!40969)

(assert (=> b!3854264 (= res!1560308 (not (= lt!1338842 lt!1338847)))))

(assert (=> b!3854264 (= lt!1338845 (lexList!1673 thiss!20629 rules!2768 (_2!23154 (v!39029 lt!1338843))))))

(declare-fun lt!1338839 () List!40969)

(assert (=> b!3854264 (and (= (size!30723 (_1!23154 (v!39029 lt!1338843))) lt!1338841) (= (originalCharacters!6916 (_1!23154 (v!39029 lt!1338843))) lt!1338849) (= (v!39029 lt!1338843) (tuple2!40041 (Token!11771 lt!1338848 (rule!9174 (_1!23154 (v!39029 lt!1338843))) lt!1338841 lt!1338849) lt!1338839)))))

(assert (=> b!3854264 (= lt!1338841 (size!30724 lt!1338849))))

(assert (=> b!3854264 e!2382441))

(declare-fun res!1560314 () Bool)

(assert (=> b!3854264 (=> (not res!1560314) (not e!2382441))))

(assert (=> b!3854264 (= res!1560314 (= (value!200640 (_1!23154 (v!39029 lt!1338843))) lt!1338848))))

(declare-fun apply!9559 (TokenValueInjection!12520 BalanceConc!24648) TokenValue!6546)

(declare-fun seqFromList!4587 (List!40969) BalanceConc!24648)

(assert (=> b!3854264 (= lt!1338848 (apply!9559 (transformation!6316 (rule!9174 (_1!23154 (v!39029 lt!1338843)))) (seqFromList!4587 lt!1338849)))))

(assert (=> b!3854264 (= (_2!23154 (v!39029 lt!1338843)) lt!1338839)))

(declare-fun lt!1338836 () Unit!58516)

(declare-fun lemmaSamePrefixThenSameSuffix!1636 (List!40969 List!40969 List!40969 List!40969 List!40969) Unit!58516)

(assert (=> b!3854264 (= lt!1338836 (lemmaSamePrefixThenSameSuffix!1636 lt!1338849 (_2!23154 (v!39029 lt!1338843)) lt!1338849 lt!1338839 lt!1338847))))

(declare-fun getSuffix!1870 (List!40969 List!40969) List!40969)

(assert (=> b!3854264 (= lt!1338839 (getSuffix!1870 lt!1338847 lt!1338849))))

(declare-fun isPrefix!3415 (List!40969 List!40969) Bool)

(assert (=> b!3854264 (isPrefix!3415 lt!1338849 lt!1338842)))

(assert (=> b!3854264 (= lt!1338842 (++!10390 lt!1338849 (_2!23154 (v!39029 lt!1338843))))))

(declare-fun lt!1338838 () Unit!58516)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2278 (List!40969 List!40969) Unit!58516)

(assert (=> b!3854264 (= lt!1338838 (lemmaConcatTwoListThenFirstIsPrefix!2278 lt!1338849 (_2!23154 (v!39029 lt!1338843))))))

(declare-fun list!15204 (BalanceConc!24648) List!40969)

(declare-fun charsOf!4144 (Token!11770) BalanceConc!24648)

(assert (=> b!3854264 (= lt!1338849 (list!15204 (charsOf!4144 (_1!23154 (v!39029 lt!1338843)))))))

(declare-fun ruleValid!2268 (LexerInterface!5905 Rule!12432) Bool)

(assert (=> b!3854264 (ruleValid!2268 thiss!20629 (rule!9174 (_1!23154 (v!39029 lt!1338843))))))

(declare-fun lt!1338830 () Unit!58516)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1348 (LexerInterface!5905 Rule!12432 List!40971) Unit!58516)

(assert (=> b!3854264 (= lt!1338830 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1348 thiss!20629 (rule!9174 (_1!23154 (v!39029 lt!1338843))) rules!2768))))

(declare-fun lt!1338834 () Unit!58516)

(declare-fun lemmaCharactersSize!977 (Token!11770) Unit!58516)

(assert (=> b!3854264 (= lt!1338834 (lemmaCharactersSize!977 (_1!23154 (v!39029 lt!1338843))))))

(declare-fun b!3854265 () Bool)

(assert (=> b!3854265 (= e!2382427 e!2382445)))

(declare-fun res!1560310 () Bool)

(assert (=> b!3854265 (=> res!1560310 e!2382445)))

(declare-fun head!8110 (List!40970) Token!11770)

(assert (=> b!3854265 (= res!1560310 (not (= (_1!23154 lt!1338831) (head!8110 prefixTokens!80))))))

(declare-fun get!13514 (Option!8734) tuple2!40040)

(assert (=> b!3854265 (= lt!1338831 (get!13514 lt!1338843))))

(declare-fun b!3854266 () Bool)

(declare-fun tp!1168302 () Bool)

(assert (=> b!3854266 (= e!2382444 (and tp_is_empty!19413 tp!1168302))))

(assert (= (and start!361168 res!1560320) b!3854260))

(assert (= (and b!3854260 res!1560316) b!3854239))

(assert (= (and b!3854239 res!1560318) b!3854240))

(assert (= (and b!3854240 res!1560311) b!3854245))

(assert (= (and b!3854245 res!1560307) b!3854248))

(assert (= (and b!3854248 res!1560312) b!3854237))

(assert (= (and b!3854237 res!1560306) b!3854242))

(assert (= (and b!3854242 res!1560313) b!3854264))

(assert (= (and b!3854264 res!1560314) b!3854254))

(assert (= (and b!3854264 (not res!1560308)) b!3854246))

(assert (= (and b!3854246 (not res!1560315)) b!3854251))

(assert (= (and b!3854251 (not res!1560319)) b!3854257))

(assert (= (and b!3854257 (not res!1560303)) b!3854249))

(assert (= (and b!3854249 (not res!1560309)) b!3854236))

(assert (= (and b!3854236 (not res!1560304)) b!3854259))

(assert (= (and b!3854259 (not res!1560305)) b!3854265))

(assert (= (and b!3854265 (not res!1560310)) b!3854243))

(assert (= (and b!3854243 (not res!1560317)) b!3854263))

(assert (= (and start!361168 ((_ is Cons!40845) suffixResult!91)) b!3854241))

(assert (= (and start!361168 ((_ is Cons!40845) suffix!1176)) b!3854266))

(assert (= b!3854247 b!3854252))

(assert (= b!3854238 b!3854247))

(assert (= (and start!361168 ((_ is Cons!40847) rules!2768)) b!3854238))

(assert (= b!3854244 b!3854261))

(assert (= b!3854258 b!3854244))

(assert (= b!3854256 b!3854258))

(assert (= (and start!361168 ((_ is Cons!40846) prefixTokens!80)) b!3854256))

(assert (= b!3854250 b!3854262))

(assert (= b!3854255 b!3854250))

(assert (= b!3854235 b!3854255))

(assert (= (and start!361168 ((_ is Cons!40846) suffixTokens!72)) b!3854235))

(assert (= (and start!361168 ((_ is Cons!40845) prefix!426)) b!3854253))

(declare-fun m!4409517 () Bool)

(assert (=> b!3854250 m!4409517))

(declare-fun m!4409519 () Bool)

(assert (=> b!3854250 m!4409519))

(declare-fun m!4409521 () Bool)

(assert (=> b!3854239 m!4409521))

(declare-fun m!4409523 () Bool)

(assert (=> b!3854244 m!4409523))

(declare-fun m!4409525 () Bool)

(assert (=> b!3854244 m!4409525))

(declare-fun m!4409527 () Bool)

(assert (=> b!3854249 m!4409527))

(declare-fun m!4409529 () Bool)

(assert (=> b!3854260 m!4409529))

(declare-fun m!4409531 () Bool)

(assert (=> b!3854259 m!4409531))

(declare-fun m!4409533 () Bool)

(assert (=> b!3854259 m!4409533))

(declare-fun m!4409535 () Bool)

(assert (=> b!3854259 m!4409535))

(declare-fun m!4409537 () Bool)

(assert (=> b!3854237 m!4409537))

(declare-fun m!4409539 () Bool)

(assert (=> b!3854235 m!4409539))

(declare-fun m!4409541 () Bool)

(assert (=> b!3854242 m!4409541))

(declare-fun m!4409543 () Bool)

(assert (=> b!3854258 m!4409543))

(declare-fun m!4409545 () Bool)

(assert (=> b!3854254 m!4409545))

(declare-fun m!4409547 () Bool)

(assert (=> b!3854257 m!4409547))

(declare-fun m!4409549 () Bool)

(assert (=> b!3854257 m!4409549))

(declare-fun m!4409551 () Bool)

(assert (=> b!3854255 m!4409551))

(declare-fun m!4409553 () Bool)

(assert (=> b!3854247 m!4409553))

(declare-fun m!4409555 () Bool)

(assert (=> b!3854247 m!4409555))

(declare-fun m!4409557 () Bool)

(assert (=> b!3854256 m!4409557))

(declare-fun m!4409559 () Bool)

(assert (=> b!3854246 m!4409559))

(declare-fun m!4409561 () Bool)

(assert (=> b!3854265 m!4409561))

(declare-fun m!4409563 () Bool)

(assert (=> b!3854265 m!4409563))

(declare-fun m!4409565 () Bool)

(assert (=> b!3854263 m!4409565))

(declare-fun m!4409567 () Bool)

(assert (=> b!3854264 m!4409567))

(declare-fun m!4409569 () Bool)

(assert (=> b!3854264 m!4409569))

(declare-fun m!4409571 () Bool)

(assert (=> b!3854264 m!4409571))

(declare-fun m!4409573 () Bool)

(assert (=> b!3854264 m!4409573))

(declare-fun m!4409575 () Bool)

(assert (=> b!3854264 m!4409575))

(declare-fun m!4409577 () Bool)

(assert (=> b!3854264 m!4409577))

(declare-fun m!4409579 () Bool)

(assert (=> b!3854264 m!4409579))

(assert (=> b!3854264 m!4409569))

(declare-fun m!4409581 () Bool)

(assert (=> b!3854264 m!4409581))

(declare-fun m!4409583 () Bool)

(assert (=> b!3854264 m!4409583))

(assert (=> b!3854264 m!4409575))

(declare-fun m!4409585 () Bool)

(assert (=> b!3854264 m!4409585))

(declare-fun m!4409587 () Bool)

(assert (=> b!3854264 m!4409587))

(declare-fun m!4409589 () Bool)

(assert (=> b!3854264 m!4409589))

(declare-fun m!4409591 () Bool)

(assert (=> b!3854264 m!4409591))

(declare-fun m!4409593 () Bool)

(assert (=> b!3854264 m!4409593))

(declare-fun m!4409595 () Bool)

(assert (=> b!3854245 m!4409595))

(declare-fun m!4409597 () Bool)

(assert (=> b!3854248 m!4409597))

(declare-fun m!4409599 () Bool)

(assert (=> b!3854248 m!4409599))

(declare-fun m!4409601 () Bool)

(assert (=> b!3854248 m!4409601))

(declare-fun m!4409603 () Bool)

(assert (=> b!3854240 m!4409603))

(declare-fun m!4409605 () Bool)

(assert (=> b!3854243 m!4409605))

(declare-fun m!4409607 () Bool)

(assert (=> b!3854236 m!4409607))

(check-sat b_and!288129 (not b!3854244) (not b!3854237) (not b!3854264) (not b!3854258) (not b!3854257) b_and!288127 tp_is_empty!19413 (not b!3854236) (not b!3854240) (not b!3854235) b_and!288131 (not b_next!104119) (not b!3854242) b_and!288125 (not b!3854249) (not b!3854250) (not b_next!104117) (not b!3854243) b_and!288133 (not b!3854241) (not b_next!104115) (not b!3854239) (not b!3854265) (not b_next!104109) b_and!288123 (not b!3854260) (not b!3854238) (not b!3854266) (not b!3854254) (not b_next!104113) (not b!3854263) (not b!3854247) (not b_next!104111) (not b!3854253) (not b!3854248) (not b!3854259) (not b!3854245) (not b!3854255) (not b!3854246) (not b!3854256))
(check-sat b_and!288125 (not b_next!104115) b_and!288129 (not b_next!104113) (not b_next!104111) b_and!288127 b_and!288131 (not b_next!104119) (not b_next!104117) b_and!288133 (not b_next!104109) b_and!288123)
(get-model)

(declare-fun b!3854285 () Bool)

(declare-fun e!2382458 () Bool)

(declare-fun lt!1338861 () Option!8734)

(declare-fun contains!8256 (List!40971 Rule!12432) Bool)

(assert (=> b!3854285 (= e!2382458 (contains!8256 rules!2768 (rule!9174 (_1!23154 (get!13514 lt!1338861)))))))

(declare-fun b!3854286 () Bool)

(declare-fun res!1560343 () Bool)

(assert (=> b!3854286 (=> (not res!1560343) (not e!2382458))))

(assert (=> b!3854286 (= res!1560343 (= (++!10390 (list!15204 (charsOf!4144 (_1!23154 (get!13514 lt!1338861)))) (_2!23154 (get!13514 lt!1338861))) lt!1338847))))

(declare-fun b!3854287 () Bool)

(declare-fun res!1560341 () Bool)

(assert (=> b!3854287 (=> (not res!1560341) (not e!2382458))))

(assert (=> b!3854287 (= res!1560341 (= (list!15204 (charsOf!4144 (_1!23154 (get!13514 lt!1338861)))) (originalCharacters!6916 (_1!23154 (get!13514 lt!1338861)))))))

(declare-fun b!3854289 () Bool)

(declare-fun e!2382457 () Option!8734)

(declare-fun lt!1338862 () Option!8734)

(declare-fun lt!1338864 () Option!8734)

(assert (=> b!3854289 (= e!2382457 (ite (and ((_ is None!8733) lt!1338862) ((_ is None!8733) lt!1338864)) None!8733 (ite ((_ is None!8733) lt!1338864) lt!1338862 (ite ((_ is None!8733) lt!1338862) lt!1338864 (ite (>= (size!30723 (_1!23154 (v!39029 lt!1338862))) (size!30723 (_1!23154 (v!39029 lt!1338864)))) lt!1338862 lt!1338864)))))))

(declare-fun call!282367 () Option!8734)

(assert (=> b!3854289 (= lt!1338862 call!282367)))

(assert (=> b!3854289 (= lt!1338864 (maxPrefix!3209 thiss!20629 (t!312452 rules!2768) lt!1338847))))

(declare-fun b!3854290 () Bool)

(declare-fun res!1560345 () Bool)

(assert (=> b!3854290 (=> (not res!1560345) (not e!2382458))))

(assert (=> b!3854290 (= res!1560345 (matchR!5368 (regex!6316 (rule!9174 (_1!23154 (get!13514 lt!1338861)))) (list!15204 (charsOf!4144 (_1!23154 (get!13514 lt!1338861))))))))

(declare-fun bm!282362 () Bool)

(assert (=> bm!282362 (= call!282367 (maxPrefixOneRule!2291 thiss!20629 (h!46267 rules!2768) lt!1338847))))

(declare-fun b!3854291 () Bool)

(assert (=> b!3854291 (= e!2382457 call!282367)))

(declare-fun d!1142717 () Bool)

(declare-fun e!2382459 () Bool)

(assert (=> d!1142717 e!2382459))

(declare-fun res!1560340 () Bool)

(assert (=> d!1142717 (=> res!1560340 e!2382459)))

(declare-fun isEmpty!24183 (Option!8734) Bool)

(assert (=> d!1142717 (= res!1560340 (isEmpty!24183 lt!1338861))))

(assert (=> d!1142717 (= lt!1338861 e!2382457)))

(declare-fun c!671234 () Bool)

(assert (=> d!1142717 (= c!671234 (and ((_ is Cons!40847) rules!2768) ((_ is Nil!40847) (t!312452 rules!2768))))))

(declare-fun lt!1338863 () Unit!58516)

(declare-fun lt!1338860 () Unit!58516)

(assert (=> d!1142717 (= lt!1338863 lt!1338860)))

(assert (=> d!1142717 (isPrefix!3415 lt!1338847 lt!1338847)))

(declare-fun lemmaIsPrefixRefl!2177 (List!40969 List!40969) Unit!58516)

(assert (=> d!1142717 (= lt!1338860 (lemmaIsPrefixRefl!2177 lt!1338847 lt!1338847))))

(assert (=> d!1142717 (rulesValidInductive!2248 thiss!20629 rules!2768)))

(assert (=> d!1142717 (= (maxPrefix!3209 thiss!20629 rules!2768 lt!1338847) lt!1338861)))

(declare-fun b!3854288 () Bool)

(declare-fun res!1560344 () Bool)

(assert (=> b!3854288 (=> (not res!1560344) (not e!2382458))))

(assert (=> b!3854288 (= res!1560344 (< (size!30724 (_2!23154 (get!13514 lt!1338861))) (size!30724 lt!1338847)))))

(declare-fun b!3854292 () Bool)

(declare-fun res!1560339 () Bool)

(assert (=> b!3854292 (=> (not res!1560339) (not e!2382458))))

(assert (=> b!3854292 (= res!1560339 (= (value!200640 (_1!23154 (get!13514 lt!1338861))) (apply!9559 (transformation!6316 (rule!9174 (_1!23154 (get!13514 lt!1338861)))) (seqFromList!4587 (originalCharacters!6916 (_1!23154 (get!13514 lt!1338861)))))))))

(declare-fun b!3854293 () Bool)

(assert (=> b!3854293 (= e!2382459 e!2382458)))

(declare-fun res!1560342 () Bool)

(assert (=> b!3854293 (=> (not res!1560342) (not e!2382458))))

(declare-fun isDefined!6854 (Option!8734) Bool)

(assert (=> b!3854293 (= res!1560342 (isDefined!6854 lt!1338861))))

(assert (= (and d!1142717 c!671234) b!3854291))

(assert (= (and d!1142717 (not c!671234)) b!3854289))

(assert (= (or b!3854291 b!3854289) bm!282362))

(assert (= (and d!1142717 (not res!1560340)) b!3854293))

(assert (= (and b!3854293 res!1560342) b!3854287))

(assert (= (and b!3854287 res!1560341) b!3854288))

(assert (= (and b!3854288 res!1560344) b!3854286))

(assert (= (and b!3854286 res!1560343) b!3854292))

(assert (= (and b!3854292 res!1560339) b!3854290))

(assert (= (and b!3854290 res!1560345) b!3854285))

(declare-fun m!4409609 () Bool)

(assert (=> b!3854289 m!4409609))

(declare-fun m!4409611 () Bool)

(assert (=> b!3854290 m!4409611))

(declare-fun m!4409613 () Bool)

(assert (=> b!3854290 m!4409613))

(assert (=> b!3854290 m!4409613))

(declare-fun m!4409615 () Bool)

(assert (=> b!3854290 m!4409615))

(assert (=> b!3854290 m!4409615))

(declare-fun m!4409617 () Bool)

(assert (=> b!3854290 m!4409617))

(declare-fun m!4409619 () Bool)

(assert (=> b!3854293 m!4409619))

(assert (=> b!3854287 m!4409611))

(assert (=> b!3854287 m!4409613))

(assert (=> b!3854287 m!4409613))

(assert (=> b!3854287 m!4409615))

(assert (=> b!3854292 m!4409611))

(declare-fun m!4409621 () Bool)

(assert (=> b!3854292 m!4409621))

(assert (=> b!3854292 m!4409621))

(declare-fun m!4409623 () Bool)

(assert (=> b!3854292 m!4409623))

(assert (=> b!3854285 m!4409611))

(declare-fun m!4409625 () Bool)

(assert (=> b!3854285 m!4409625))

(declare-fun m!4409627 () Bool)

(assert (=> bm!282362 m!4409627))

(declare-fun m!4409629 () Bool)

(assert (=> d!1142717 m!4409629))

(declare-fun m!4409631 () Bool)

(assert (=> d!1142717 m!4409631))

(declare-fun m!4409633 () Bool)

(assert (=> d!1142717 m!4409633))

(assert (=> d!1142717 m!4409565))

(assert (=> b!3854286 m!4409611))

(assert (=> b!3854286 m!4409613))

(assert (=> b!3854286 m!4409613))

(assert (=> b!3854286 m!4409615))

(assert (=> b!3854286 m!4409615))

(declare-fun m!4409635 () Bool)

(assert (=> b!3854286 m!4409635))

(assert (=> b!3854288 m!4409611))

(declare-fun m!4409637 () Bool)

(assert (=> b!3854288 m!4409637))

(assert (=> b!3854288 m!4409527))

(assert (=> b!3854242 d!1142717))

(declare-fun d!1142719 () Bool)

(assert (=> d!1142719 true))

(declare-fun lt!1338953 () Bool)

(declare-fun lambda!126198 () Int)

(declare-fun forall!8291 (List!40971 Int) Bool)

(assert (=> d!1142719 (= lt!1338953 (forall!8291 rules!2768 lambda!126198))))

(declare-fun e!2382594 () Bool)

(assert (=> d!1142719 (= lt!1338953 e!2382594)))

(declare-fun res!1560481 () Bool)

(assert (=> d!1142719 (=> res!1560481 e!2382594)))

(assert (=> d!1142719 (= res!1560481 (not ((_ is Cons!40847) rules!2768)))))

(assert (=> d!1142719 (= (rulesValidInductive!2248 thiss!20629 rules!2768) lt!1338953)))

(declare-fun b!3854535 () Bool)

(declare-fun e!2382593 () Bool)

(assert (=> b!3854535 (= e!2382594 e!2382593)))

(declare-fun res!1560480 () Bool)

(assert (=> b!3854535 (=> (not res!1560480) (not e!2382593))))

(assert (=> b!3854535 (= res!1560480 (ruleValid!2268 thiss!20629 (h!46267 rules!2768)))))

(declare-fun b!3854536 () Bool)

(assert (=> b!3854536 (= e!2382593 (rulesValidInductive!2248 thiss!20629 (t!312452 rules!2768)))))

(assert (= (and d!1142719 (not res!1560481)) b!3854535))

(assert (= (and b!3854535 res!1560480) b!3854536))

(declare-fun m!4409897 () Bool)

(assert (=> d!1142719 m!4409897))

(declare-fun m!4409899 () Bool)

(assert (=> b!3854535 m!4409899))

(declare-fun m!4409901 () Bool)

(assert (=> b!3854536 m!4409901))

(assert (=> b!3854263 d!1142719))

(declare-fun d!1142805 () Bool)

(declare-fun lt!1338956 () Int)

(assert (=> d!1142805 (>= lt!1338956 0)))

(declare-fun e!2382597 () Int)

(assert (=> d!1142805 (= lt!1338956 e!2382597)))

(declare-fun c!671288 () Bool)

(assert (=> d!1142805 (= c!671288 ((_ is Nil!40845) (_2!23154 lt!1338831)))))

(assert (=> d!1142805 (= (size!30724 (_2!23154 lt!1338831)) lt!1338956)))

(declare-fun b!3854543 () Bool)

(assert (=> b!3854543 (= e!2382597 0)))

(declare-fun b!3854544 () Bool)

(assert (=> b!3854544 (= e!2382597 (+ 1 (size!30724 (t!312450 (_2!23154 lt!1338831)))))))

(assert (= (and d!1142805 c!671288) b!3854543))

(assert (= (and d!1142805 (not c!671288)) b!3854544))

(declare-fun m!4409903 () Bool)

(assert (=> b!3854544 m!4409903))

(assert (=> b!3854243 d!1142805))

(declare-fun d!1142807 () Bool)

(declare-fun res!1560486 () Bool)

(declare-fun e!2382600 () Bool)

(assert (=> d!1142807 (=> (not res!1560486) (not e!2382600))))

(declare-fun validRegex!5105 (Regex!11221) Bool)

(assert (=> d!1142807 (= res!1560486 (validRegex!5105 (regex!6316 (rule!9174 (_1!23154 (v!39029 lt!1338843))))))))

(assert (=> d!1142807 (= (ruleValid!2268 thiss!20629 (rule!9174 (_1!23154 (v!39029 lt!1338843)))) e!2382600)))

(declare-fun b!3854549 () Bool)

(declare-fun res!1560487 () Bool)

(assert (=> b!3854549 (=> (not res!1560487) (not e!2382600))))

(declare-fun nullable!3906 (Regex!11221) Bool)

(assert (=> b!3854549 (= res!1560487 (not (nullable!3906 (regex!6316 (rule!9174 (_1!23154 (v!39029 lt!1338843)))))))))

(declare-fun b!3854550 () Bool)

(assert (=> b!3854550 (= e!2382600 (not (= (tag!7176 (rule!9174 (_1!23154 (v!39029 lt!1338843)))) (String!46449 ""))))))

(assert (= (and d!1142807 res!1560486) b!3854549))

(assert (= (and b!3854549 res!1560487) b!3854550))

(declare-fun m!4409905 () Bool)

(assert (=> d!1142807 m!4409905))

(declare-fun m!4409907 () Bool)

(assert (=> b!3854549 m!4409907))

(assert (=> b!3854264 d!1142807))

(declare-fun d!1142809 () Bool)

(declare-fun lt!1338959 () BalanceConc!24648)

(assert (=> d!1142809 (= (list!15204 lt!1338959) (originalCharacters!6916 (_1!23154 (v!39029 lt!1338843))))))

(declare-fun dynLambda!17627 (Int TokenValue!6546) BalanceConc!24648)

(assert (=> d!1142809 (= lt!1338959 (dynLambda!17627 (toChars!8599 (transformation!6316 (rule!9174 (_1!23154 (v!39029 lt!1338843))))) (value!200640 (_1!23154 (v!39029 lt!1338843)))))))

(assert (=> d!1142809 (= (charsOf!4144 (_1!23154 (v!39029 lt!1338843))) lt!1338959)))

(declare-fun b_lambda!112673 () Bool)

(assert (=> (not b_lambda!112673) (not d!1142809)))

(declare-fun tb!222803 () Bool)

(declare-fun t!312472 () Bool)

(assert (=> (and b!3854252 (= (toChars!8599 (transformation!6316 (h!46267 rules!2768))) (toChars!8599 (transformation!6316 (rule!9174 (_1!23154 (v!39029 lt!1338843)))))) t!312472) tb!222803))

(declare-fun b!3854555 () Bool)

(declare-fun e!2382603 () Bool)

(declare-fun tp!1168311 () Bool)

(declare-fun inv!55002 (Conc!12527) Bool)

(assert (=> b!3854555 (= e!2382603 (and (inv!55002 (c!671231 (dynLambda!17627 (toChars!8599 (transformation!6316 (rule!9174 (_1!23154 (v!39029 lt!1338843))))) (value!200640 (_1!23154 (v!39029 lt!1338843)))))) tp!1168311))))

(declare-fun result!271396 () Bool)

(declare-fun inv!55003 (BalanceConc!24648) Bool)

(assert (=> tb!222803 (= result!271396 (and (inv!55003 (dynLambda!17627 (toChars!8599 (transformation!6316 (rule!9174 (_1!23154 (v!39029 lt!1338843))))) (value!200640 (_1!23154 (v!39029 lt!1338843))))) e!2382603))))

(assert (= tb!222803 b!3854555))

(declare-fun m!4409909 () Bool)

(assert (=> b!3854555 m!4409909))

(declare-fun m!4409911 () Bool)

(assert (=> tb!222803 m!4409911))

(assert (=> d!1142809 t!312472))

(declare-fun b_and!288153 () Bool)

(assert (= b_and!288125 (and (=> t!312472 result!271396) b_and!288153)))

(declare-fun tb!222805 () Bool)

(declare-fun t!312474 () Bool)

(assert (=> (and b!3854262 (= (toChars!8599 (transformation!6316 (rule!9174 (h!46266 suffixTokens!72)))) (toChars!8599 (transformation!6316 (rule!9174 (_1!23154 (v!39029 lt!1338843)))))) t!312474) tb!222805))

(declare-fun result!271400 () Bool)

(assert (= result!271400 result!271396))

(assert (=> d!1142809 t!312474))

(declare-fun b_and!288155 () Bool)

(assert (= b_and!288129 (and (=> t!312474 result!271400) b_and!288155)))

(declare-fun tb!222807 () Bool)

(declare-fun t!312476 () Bool)

(assert (=> (and b!3854261 (= (toChars!8599 (transformation!6316 (rule!9174 (h!46266 prefixTokens!80)))) (toChars!8599 (transformation!6316 (rule!9174 (_1!23154 (v!39029 lt!1338843)))))) t!312476) tb!222807))

(declare-fun result!271402 () Bool)

(assert (= result!271402 result!271396))

(assert (=> d!1142809 t!312476))

(declare-fun b_and!288157 () Bool)

(assert (= b_and!288133 (and (=> t!312476 result!271402) b_and!288157)))

(declare-fun m!4409913 () Bool)

(assert (=> d!1142809 m!4409913))

(declare-fun m!4409915 () Bool)

(assert (=> d!1142809 m!4409915))

(assert (=> b!3854264 d!1142809))

(declare-fun d!1142811 () Bool)

(assert (=> d!1142811 (= (_2!23154 (v!39029 lt!1338843)) lt!1338839)))

(declare-fun lt!1338962 () Unit!58516)

(declare-fun choose!22685 (List!40969 List!40969 List!40969 List!40969 List!40969) Unit!58516)

(assert (=> d!1142811 (= lt!1338962 (choose!22685 lt!1338849 (_2!23154 (v!39029 lt!1338843)) lt!1338849 lt!1338839 lt!1338847))))

(assert (=> d!1142811 (isPrefix!3415 lt!1338849 lt!1338847)))

(assert (=> d!1142811 (= (lemmaSamePrefixThenSameSuffix!1636 lt!1338849 (_2!23154 (v!39029 lt!1338843)) lt!1338849 lt!1338839 lt!1338847) lt!1338962)))

(declare-fun bs!583002 () Bool)

(assert (= bs!583002 d!1142811))

(declare-fun m!4409917 () Bool)

(assert (=> bs!583002 m!4409917))

(declare-fun m!4409919 () Bool)

(assert (=> bs!583002 m!4409919))

(assert (=> b!3854264 d!1142811))

(declare-fun d!1142813 () Bool)

(assert (=> d!1142813 (ruleValid!2268 thiss!20629 (rule!9174 (_1!23154 (v!39029 lt!1338843))))))

(declare-fun lt!1338965 () Unit!58516)

(declare-fun choose!22686 (LexerInterface!5905 Rule!12432 List!40971) Unit!58516)

(assert (=> d!1142813 (= lt!1338965 (choose!22686 thiss!20629 (rule!9174 (_1!23154 (v!39029 lt!1338843))) rules!2768))))

(assert (=> d!1142813 (contains!8256 rules!2768 (rule!9174 (_1!23154 (v!39029 lt!1338843))))))

(assert (=> d!1142813 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1348 thiss!20629 (rule!9174 (_1!23154 (v!39029 lt!1338843))) rules!2768) lt!1338965)))

(declare-fun bs!583003 () Bool)

(assert (= bs!583003 d!1142813))

(assert (=> bs!583003 m!4409567))

(declare-fun m!4409921 () Bool)

(assert (=> bs!583003 m!4409921))

(declare-fun m!4409923 () Bool)

(assert (=> bs!583003 m!4409923))

(assert (=> b!3854264 d!1142813))

(declare-fun d!1142815 () Bool)

(declare-fun list!15205 (Conc!12527) List!40969)

(assert (=> d!1142815 (= (list!15204 (charsOf!4144 (_1!23154 (v!39029 lt!1338843)))) (list!15205 (c!671231 (charsOf!4144 (_1!23154 (v!39029 lt!1338843))))))))

(declare-fun bs!583004 () Bool)

(assert (= bs!583004 d!1142815))

(declare-fun m!4409925 () Bool)

(assert (=> bs!583004 m!4409925))

(assert (=> b!3854264 d!1142815))

(declare-fun d!1142817 () Bool)

(declare-fun fromListB!2116 (List!40969) BalanceConc!24648)

(assert (=> d!1142817 (= (seqFromList!4587 lt!1338849) (fromListB!2116 lt!1338849))))

(declare-fun bs!583005 () Bool)

(assert (= bs!583005 d!1142817))

(declare-fun m!4409927 () Bool)

(assert (=> bs!583005 m!4409927))

(assert (=> b!3854264 d!1142817))

(declare-fun d!1142819 () Bool)

(declare-fun e!2382610 () Bool)

(assert (=> d!1142819 e!2382610))

(declare-fun res!1560497 () Bool)

(assert (=> d!1142819 (=> res!1560497 e!2382610)))

(declare-fun lt!1338968 () Bool)

(assert (=> d!1142819 (= res!1560497 (not lt!1338968))))

(declare-fun e!2382612 () Bool)

(assert (=> d!1142819 (= lt!1338968 e!2382612)))

(declare-fun res!1560496 () Bool)

(assert (=> d!1142819 (=> res!1560496 e!2382612)))

(assert (=> d!1142819 (= res!1560496 ((_ is Nil!40845) lt!1338849))))

(assert (=> d!1142819 (= (isPrefix!3415 lt!1338849 lt!1338842) lt!1338968)))

(declare-fun b!3854566 () Bool)

(declare-fun e!2382611 () Bool)

(declare-fun tail!5828 (List!40969) List!40969)

(assert (=> b!3854566 (= e!2382611 (isPrefix!3415 (tail!5828 lt!1338849) (tail!5828 lt!1338842)))))

(declare-fun b!3854564 () Bool)

(assert (=> b!3854564 (= e!2382612 e!2382611)))

(declare-fun res!1560499 () Bool)

(assert (=> b!3854564 (=> (not res!1560499) (not e!2382611))))

(assert (=> b!3854564 (= res!1560499 (not ((_ is Nil!40845) lt!1338842)))))

(declare-fun b!3854565 () Bool)

(declare-fun res!1560498 () Bool)

(assert (=> b!3854565 (=> (not res!1560498) (not e!2382611))))

(declare-fun head!8111 (List!40969) C!22628)

(assert (=> b!3854565 (= res!1560498 (= (head!8111 lt!1338849) (head!8111 lt!1338842)))))

(declare-fun b!3854567 () Bool)

(assert (=> b!3854567 (= e!2382610 (>= (size!30724 lt!1338842) (size!30724 lt!1338849)))))

(assert (= (and d!1142819 (not res!1560496)) b!3854564))

(assert (= (and b!3854564 res!1560499) b!3854565))

(assert (= (and b!3854565 res!1560498) b!3854566))

(assert (= (and d!1142819 (not res!1560497)) b!3854567))

(declare-fun m!4409929 () Bool)

(assert (=> b!3854566 m!4409929))

(declare-fun m!4409931 () Bool)

(assert (=> b!3854566 m!4409931))

(assert (=> b!3854566 m!4409929))

(assert (=> b!3854566 m!4409931))

(declare-fun m!4409933 () Bool)

(assert (=> b!3854566 m!4409933))

(declare-fun m!4409935 () Bool)

(assert (=> b!3854565 m!4409935))

(declare-fun m!4409937 () Bool)

(assert (=> b!3854565 m!4409937))

(declare-fun m!4409939 () Bool)

(assert (=> b!3854567 m!4409939))

(assert (=> b!3854567 m!4409587))

(assert (=> b!3854264 d!1142819))

(declare-fun d!1142821 () Bool)

(declare-fun lt!1338969 () Int)

(assert (=> d!1142821 (>= lt!1338969 0)))

(declare-fun e!2382613 () Int)

(assert (=> d!1142821 (= lt!1338969 e!2382613)))

(declare-fun c!671289 () Bool)

(assert (=> d!1142821 (= c!671289 ((_ is Nil!40845) lt!1338849))))

(assert (=> d!1142821 (= (size!30724 lt!1338849) lt!1338969)))

(declare-fun b!3854568 () Bool)

(assert (=> b!3854568 (= e!2382613 0)))

(declare-fun b!3854569 () Bool)

(assert (=> b!3854569 (= e!2382613 (+ 1 (size!30724 (t!312450 lt!1338849))))))

(assert (= (and d!1142821 c!671289) b!3854568))

(assert (= (and d!1142821 (not c!671289)) b!3854569))

(declare-fun m!4409941 () Bool)

(assert (=> b!3854569 m!4409941))

(assert (=> b!3854264 d!1142821))

(declare-fun b!3854580 () Bool)

(declare-fun res!1560504 () Bool)

(declare-fun e!2382618 () Bool)

(assert (=> b!3854580 (=> (not res!1560504) (not e!2382618))))

(declare-fun lt!1338972 () List!40969)

(assert (=> b!3854580 (= res!1560504 (= (size!30724 lt!1338972) (+ (size!30724 lt!1338849) (size!30724 (_2!23154 (v!39029 lt!1338843))))))))

(declare-fun b!3854579 () Bool)

(declare-fun e!2382619 () List!40969)

(assert (=> b!3854579 (= e!2382619 (Cons!40845 (h!46265 lt!1338849) (++!10390 (t!312450 lt!1338849) (_2!23154 (v!39029 lt!1338843)))))))

(declare-fun b!3854581 () Bool)

(assert (=> b!3854581 (= e!2382618 (or (not (= (_2!23154 (v!39029 lt!1338843)) Nil!40845)) (= lt!1338972 lt!1338849)))))

(declare-fun d!1142823 () Bool)

(assert (=> d!1142823 e!2382618))

(declare-fun res!1560505 () Bool)

(assert (=> d!1142823 (=> (not res!1560505) (not e!2382618))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6080 (List!40969) (InoxSet C!22628))

(assert (=> d!1142823 (= res!1560505 (= (content!6080 lt!1338972) ((_ map or) (content!6080 lt!1338849) (content!6080 (_2!23154 (v!39029 lt!1338843))))))))

(assert (=> d!1142823 (= lt!1338972 e!2382619)))

(declare-fun c!671292 () Bool)

(assert (=> d!1142823 (= c!671292 ((_ is Nil!40845) lt!1338849))))

(assert (=> d!1142823 (= (++!10390 lt!1338849 (_2!23154 (v!39029 lt!1338843))) lt!1338972)))

(declare-fun b!3854578 () Bool)

(assert (=> b!3854578 (= e!2382619 (_2!23154 (v!39029 lt!1338843)))))

(assert (= (and d!1142823 c!671292) b!3854578))

(assert (= (and d!1142823 (not c!671292)) b!3854579))

(assert (= (and d!1142823 res!1560505) b!3854580))

(assert (= (and b!3854580 res!1560504) b!3854581))

(declare-fun m!4409943 () Bool)

(assert (=> b!3854580 m!4409943))

(assert (=> b!3854580 m!4409587))

(assert (=> b!3854580 m!4409549))

(declare-fun m!4409945 () Bool)

(assert (=> b!3854579 m!4409945))

(declare-fun m!4409947 () Bool)

(assert (=> d!1142823 m!4409947))

(declare-fun m!4409949 () Bool)

(assert (=> d!1142823 m!4409949))

(declare-fun m!4409951 () Bool)

(assert (=> d!1142823 m!4409951))

(assert (=> b!3854264 d!1142823))

(declare-fun d!1142825 () Bool)

(declare-fun dynLambda!17628 (Int BalanceConc!24648) TokenValue!6546)

(assert (=> d!1142825 (= (apply!9559 (transformation!6316 (rule!9174 (_1!23154 (v!39029 lt!1338843)))) (seqFromList!4587 lt!1338849)) (dynLambda!17628 (toValue!8740 (transformation!6316 (rule!9174 (_1!23154 (v!39029 lt!1338843))))) (seqFromList!4587 lt!1338849)))))

(declare-fun b_lambda!112675 () Bool)

(assert (=> (not b_lambda!112675) (not d!1142825)))

(declare-fun t!312478 () Bool)

(declare-fun tb!222809 () Bool)

(assert (=> (and b!3854252 (= (toValue!8740 (transformation!6316 (h!46267 rules!2768))) (toValue!8740 (transformation!6316 (rule!9174 (_1!23154 (v!39029 lt!1338843)))))) t!312478) tb!222809))

(declare-fun result!271404 () Bool)

(assert (=> tb!222809 (= result!271404 (inv!21 (dynLambda!17628 (toValue!8740 (transformation!6316 (rule!9174 (_1!23154 (v!39029 lt!1338843))))) (seqFromList!4587 lt!1338849))))))

(declare-fun m!4409953 () Bool)

(assert (=> tb!222809 m!4409953))

(assert (=> d!1142825 t!312478))

(declare-fun b_and!288159 () Bool)

(assert (= b_and!288123 (and (=> t!312478 result!271404) b_and!288159)))

(declare-fun tb!222811 () Bool)

(declare-fun t!312480 () Bool)

(assert (=> (and b!3854262 (= (toValue!8740 (transformation!6316 (rule!9174 (h!46266 suffixTokens!72)))) (toValue!8740 (transformation!6316 (rule!9174 (_1!23154 (v!39029 lt!1338843)))))) t!312480) tb!222811))

(declare-fun result!271408 () Bool)

(assert (= result!271408 result!271404))

(assert (=> d!1142825 t!312480))

(declare-fun b_and!288161 () Bool)

(assert (= b_and!288127 (and (=> t!312480 result!271408) b_and!288161)))

(declare-fun tb!222813 () Bool)

(declare-fun t!312482 () Bool)

(assert (=> (and b!3854261 (= (toValue!8740 (transformation!6316 (rule!9174 (h!46266 prefixTokens!80)))) (toValue!8740 (transformation!6316 (rule!9174 (_1!23154 (v!39029 lt!1338843)))))) t!312482) tb!222813))

(declare-fun result!271410 () Bool)

(assert (= result!271410 result!271404))

(assert (=> d!1142825 t!312482))

(declare-fun b_and!288163 () Bool)

(assert (= b_and!288131 (and (=> t!312482 result!271410) b_and!288163)))

(assert (=> d!1142825 m!4409569))

(declare-fun m!4409955 () Bool)

(assert (=> d!1142825 m!4409955))

(assert (=> b!3854264 d!1142825))

(declare-fun d!1142827 () Bool)

(assert (=> d!1142827 (isPrefix!3415 lt!1338849 (++!10390 lt!1338849 (_2!23154 (v!39029 lt!1338843))))))

(declare-fun lt!1338975 () Unit!58516)

(declare-fun choose!22687 (List!40969 List!40969) Unit!58516)

(assert (=> d!1142827 (= lt!1338975 (choose!22687 lt!1338849 (_2!23154 (v!39029 lt!1338843))))))

(assert (=> d!1142827 (= (lemmaConcatTwoListThenFirstIsPrefix!2278 lt!1338849 (_2!23154 (v!39029 lt!1338843))) lt!1338975)))

(declare-fun bs!583006 () Bool)

(assert (= bs!583006 d!1142827))

(assert (=> bs!583006 m!4409589))

(assert (=> bs!583006 m!4409589))

(declare-fun m!4409957 () Bool)

(assert (=> bs!583006 m!4409957))

(declare-fun m!4409959 () Bool)

(assert (=> bs!583006 m!4409959))

(assert (=> b!3854264 d!1142827))

(declare-fun d!1142829 () Bool)

(declare-fun lt!1338978 () List!40969)

(assert (=> d!1142829 (= (++!10390 lt!1338849 lt!1338978) lt!1338847)))

(declare-fun e!2382625 () List!40969)

(assert (=> d!1142829 (= lt!1338978 e!2382625)))

(declare-fun c!671295 () Bool)

(assert (=> d!1142829 (= c!671295 ((_ is Cons!40845) lt!1338849))))

(assert (=> d!1142829 (>= (size!30724 lt!1338847) (size!30724 lt!1338849))))

(assert (=> d!1142829 (= (getSuffix!1870 lt!1338847 lt!1338849) lt!1338978)))

(declare-fun b!3854588 () Bool)

(assert (=> b!3854588 (= e!2382625 (getSuffix!1870 (tail!5828 lt!1338847) (t!312450 lt!1338849)))))

(declare-fun b!3854589 () Bool)

(assert (=> b!3854589 (= e!2382625 lt!1338847)))

(assert (= (and d!1142829 c!671295) b!3854588))

(assert (= (and d!1142829 (not c!671295)) b!3854589))

(declare-fun m!4409961 () Bool)

(assert (=> d!1142829 m!4409961))

(assert (=> d!1142829 m!4409527))

(assert (=> d!1142829 m!4409587))

(declare-fun m!4409963 () Bool)

(assert (=> b!3854588 m!4409963))

(assert (=> b!3854588 m!4409963))

(declare-fun m!4409965 () Bool)

(assert (=> b!3854588 m!4409965))

(assert (=> b!3854264 d!1142829))

(declare-fun d!1142831 () Bool)

(assert (=> d!1142831 (= (size!30723 (_1!23154 (v!39029 lt!1338843))) (size!30724 (originalCharacters!6916 (_1!23154 (v!39029 lt!1338843)))))))

(declare-fun Unit!58518 () Unit!58516)

(assert (=> d!1142831 (= (lemmaCharactersSize!977 (_1!23154 (v!39029 lt!1338843))) Unit!58518)))

(declare-fun bs!583007 () Bool)

(assert (= bs!583007 d!1142831))

(assert (=> bs!583007 m!4409545))

(assert (=> b!3854264 d!1142831))

(declare-fun b!3854600 () Bool)

(declare-fun e!2382632 () tuple2!40038)

(declare-fun lt!1338986 () Option!8734)

(declare-fun lt!1338985 () tuple2!40038)

(assert (=> b!3854600 (= e!2382632 (tuple2!40039 (Cons!40846 (_1!23154 (v!39029 lt!1338986)) (_1!23153 lt!1338985)) (_2!23153 lt!1338985)))))

(assert (=> b!3854600 (= lt!1338985 (lexList!1673 thiss!20629 rules!2768 (_2!23154 (v!39029 lt!1338986))))))

(declare-fun b!3854601 () Bool)

(assert (=> b!3854601 (= e!2382632 (tuple2!40039 Nil!40846 (_2!23154 (v!39029 lt!1338843))))))

(declare-fun b!3854602 () Bool)

(declare-fun e!2382634 () Bool)

(declare-fun lt!1338987 () tuple2!40038)

(assert (=> b!3854602 (= e!2382634 (not (isEmpty!24180 (_1!23153 lt!1338987))))))

(declare-fun b!3854603 () Bool)

(declare-fun e!2382633 () Bool)

(assert (=> b!3854603 (= e!2382633 e!2382634)))

(declare-fun res!1560508 () Bool)

(assert (=> b!3854603 (= res!1560508 (< (size!30724 (_2!23153 lt!1338987)) (size!30724 (_2!23154 (v!39029 lt!1338843)))))))

(assert (=> b!3854603 (=> (not res!1560508) (not e!2382634))))

(declare-fun b!3854604 () Bool)

(assert (=> b!3854604 (= e!2382633 (= (_2!23153 lt!1338987) (_2!23154 (v!39029 lt!1338843))))))

(declare-fun d!1142833 () Bool)

(assert (=> d!1142833 e!2382633))

(declare-fun c!671300 () Bool)

(declare-fun size!30725 (List!40970) Int)

(assert (=> d!1142833 (= c!671300 (> (size!30725 (_1!23153 lt!1338987)) 0))))

(assert (=> d!1142833 (= lt!1338987 e!2382632)))

(declare-fun c!671301 () Bool)

(assert (=> d!1142833 (= c!671301 ((_ is Some!8733) lt!1338986))))

(assert (=> d!1142833 (= lt!1338986 (maxPrefix!3209 thiss!20629 rules!2768 (_2!23154 (v!39029 lt!1338843))))))

(assert (=> d!1142833 (= (lexList!1673 thiss!20629 rules!2768 (_2!23154 (v!39029 lt!1338843))) lt!1338987)))

(assert (= (and d!1142833 c!671301) b!3854600))

(assert (= (and d!1142833 (not c!671301)) b!3854601))

(assert (= (and d!1142833 c!671300) b!3854603))

(assert (= (and d!1142833 (not c!671300)) b!3854604))

(assert (= (and b!3854603 res!1560508) b!3854602))

(declare-fun m!4409967 () Bool)

(assert (=> b!3854600 m!4409967))

(declare-fun m!4409969 () Bool)

(assert (=> b!3854602 m!4409969))

(declare-fun m!4409971 () Bool)

(assert (=> b!3854603 m!4409971))

(assert (=> b!3854603 m!4409549))

(declare-fun m!4409973 () Bool)

(assert (=> d!1142833 m!4409973))

(declare-fun m!4409975 () Bool)

(assert (=> d!1142833 m!4409975))

(assert (=> b!3854264 d!1142833))

(declare-fun d!1142835 () Bool)

(assert (=> d!1142835 (= (inv!54997 (tag!7176 (rule!9174 (h!46266 prefixTokens!80)))) (= (mod (str.len (value!200639 (tag!7176 (rule!9174 (h!46266 prefixTokens!80))))) 2) 0))))

(assert (=> b!3854244 d!1142835))

(declare-fun d!1142837 () Bool)

(declare-fun res!1560511 () Bool)

(declare-fun e!2382637 () Bool)

(assert (=> d!1142837 (=> (not res!1560511) (not e!2382637))))

(declare-fun semiInverseModEq!2707 (Int Int) Bool)

(assert (=> d!1142837 (= res!1560511 (semiInverseModEq!2707 (toChars!8599 (transformation!6316 (rule!9174 (h!46266 prefixTokens!80)))) (toValue!8740 (transformation!6316 (rule!9174 (h!46266 prefixTokens!80))))))))

(assert (=> d!1142837 (= (inv!55001 (transformation!6316 (rule!9174 (h!46266 prefixTokens!80)))) e!2382637)))

(declare-fun b!3854607 () Bool)

(declare-fun equivClasses!2606 (Int Int) Bool)

(assert (=> b!3854607 (= e!2382637 (equivClasses!2606 (toChars!8599 (transformation!6316 (rule!9174 (h!46266 prefixTokens!80)))) (toValue!8740 (transformation!6316 (rule!9174 (h!46266 prefixTokens!80))))))))

(assert (= (and d!1142837 res!1560511) b!3854607))

(declare-fun m!4409977 () Bool)

(assert (=> d!1142837 m!4409977))

(declare-fun m!4409979 () Bool)

(assert (=> b!3854607 m!4409979))

(assert (=> b!3854244 d!1142837))

(declare-fun d!1142839 () Bool)

(assert (=> d!1142839 (= (head!8110 prefixTokens!80) (h!46266 prefixTokens!80))))

(assert (=> b!3854265 d!1142839))

(declare-fun d!1142841 () Bool)

(assert (=> d!1142841 (= (get!13514 lt!1338843) (v!39029 lt!1338843))))

(assert (=> b!3854265 d!1142841))

(declare-fun d!1142843 () Bool)

(declare-fun e!2382643 () Bool)

(assert (=> d!1142843 e!2382643))

(declare-fun res!1560516 () Bool)

(assert (=> d!1142843 (=> (not res!1560516) (not e!2382643))))

(declare-fun lt!1338990 () List!40970)

(declare-fun content!6081 (List!40970) (InoxSet Token!11770))

(assert (=> d!1142843 (= res!1560516 (= (content!6081 lt!1338990) ((_ map or) (content!6081 (Cons!40846 (_1!23154 (v!39029 lt!1338843)) Nil!40846)) (content!6081 (_1!23153 lt!1338845)))))))

(declare-fun e!2382642 () List!40970)

(assert (=> d!1142843 (= lt!1338990 e!2382642)))

(declare-fun c!671304 () Bool)

(assert (=> d!1142843 (= c!671304 ((_ is Nil!40846) (Cons!40846 (_1!23154 (v!39029 lt!1338843)) Nil!40846)))))

(assert (=> d!1142843 (= (++!10389 (Cons!40846 (_1!23154 (v!39029 lt!1338843)) Nil!40846) (_1!23153 lt!1338845)) lt!1338990)))

(declare-fun b!3854617 () Bool)

(assert (=> b!3854617 (= e!2382642 (Cons!40846 (h!46266 (Cons!40846 (_1!23154 (v!39029 lt!1338843)) Nil!40846)) (++!10389 (t!312451 (Cons!40846 (_1!23154 (v!39029 lt!1338843)) Nil!40846)) (_1!23153 lt!1338845))))))

(declare-fun b!3854619 () Bool)

(assert (=> b!3854619 (= e!2382643 (or (not (= (_1!23153 lt!1338845) Nil!40846)) (= lt!1338990 (Cons!40846 (_1!23154 (v!39029 lt!1338843)) Nil!40846))))))

(declare-fun b!3854616 () Bool)

(assert (=> b!3854616 (= e!2382642 (_1!23153 lt!1338845))))

(declare-fun b!3854618 () Bool)

(declare-fun res!1560517 () Bool)

(assert (=> b!3854618 (=> (not res!1560517) (not e!2382643))))

(assert (=> b!3854618 (= res!1560517 (= (size!30725 lt!1338990) (+ (size!30725 (Cons!40846 (_1!23154 (v!39029 lt!1338843)) Nil!40846)) (size!30725 (_1!23153 lt!1338845)))))))

(assert (= (and d!1142843 c!671304) b!3854616))

(assert (= (and d!1142843 (not c!671304)) b!3854617))

(assert (= (and d!1142843 res!1560516) b!3854618))

(assert (= (and b!3854618 res!1560517) b!3854619))

(declare-fun m!4409981 () Bool)

(assert (=> d!1142843 m!4409981))

(declare-fun m!4409983 () Bool)

(assert (=> d!1142843 m!4409983))

(declare-fun m!4409985 () Bool)

(assert (=> d!1142843 m!4409985))

(declare-fun m!4409987 () Bool)

(assert (=> b!3854617 m!4409987))

(declare-fun m!4409989 () Bool)

(assert (=> b!3854618 m!4409989))

(declare-fun m!4409991 () Bool)

(assert (=> b!3854618 m!4409991))

(declare-fun m!4409993 () Bool)

(assert (=> b!3854618 m!4409993))

(assert (=> b!3854246 d!1142843))

(declare-fun d!1142845 () Bool)

(assert (=> d!1142845 (= (isEmpty!24181 prefix!426) ((_ is Nil!40845) prefix!426))))

(assert (=> b!3854245 d!1142845))

(declare-fun d!1142847 () Bool)

(assert (=> d!1142847 (= (inv!54997 (tag!7176 (h!46267 rules!2768))) (= (mod (str.len (value!200639 (tag!7176 (h!46267 rules!2768)))) 2) 0))))

(assert (=> b!3854247 d!1142847))

(declare-fun d!1142849 () Bool)

(declare-fun res!1560518 () Bool)

(declare-fun e!2382644 () Bool)

(assert (=> d!1142849 (=> (not res!1560518) (not e!2382644))))

(assert (=> d!1142849 (= res!1560518 (semiInverseModEq!2707 (toChars!8599 (transformation!6316 (h!46267 rules!2768))) (toValue!8740 (transformation!6316 (h!46267 rules!2768)))))))

(assert (=> d!1142849 (= (inv!55001 (transformation!6316 (h!46267 rules!2768))) e!2382644)))

(declare-fun b!3854620 () Bool)

(assert (=> b!3854620 (= e!2382644 (equivClasses!2606 (toChars!8599 (transformation!6316 (h!46267 rules!2768))) (toValue!8740 (transformation!6316 (h!46267 rules!2768)))))))

(assert (= (and d!1142849 res!1560518) b!3854620))

(declare-fun m!4409995 () Bool)

(assert (=> d!1142849 m!4409995))

(declare-fun m!4409997 () Bool)

(assert (=> b!3854620 m!4409997))

(assert (=> b!3854247 d!1142849))

(declare-fun b!3854621 () Bool)

(declare-fun e!2382645 () tuple2!40038)

(declare-fun lt!1338992 () Option!8734)

(declare-fun lt!1338991 () tuple2!40038)

(assert (=> b!3854621 (= e!2382645 (tuple2!40039 (Cons!40846 (_1!23154 (v!39029 lt!1338992)) (_1!23153 lt!1338991)) (_2!23153 lt!1338991)))))

(assert (=> b!3854621 (= lt!1338991 (lexList!1673 thiss!20629 rules!2768 (_2!23154 (v!39029 lt!1338992))))))

(declare-fun b!3854622 () Bool)

(assert (=> b!3854622 (= e!2382645 (tuple2!40039 Nil!40846 lt!1338847))))

(declare-fun b!3854623 () Bool)

(declare-fun e!2382647 () Bool)

(declare-fun lt!1338993 () tuple2!40038)

(assert (=> b!3854623 (= e!2382647 (not (isEmpty!24180 (_1!23153 lt!1338993))))))

(declare-fun b!3854624 () Bool)

(declare-fun e!2382646 () Bool)

(assert (=> b!3854624 (= e!2382646 e!2382647)))

(declare-fun res!1560519 () Bool)

(assert (=> b!3854624 (= res!1560519 (< (size!30724 (_2!23153 lt!1338993)) (size!30724 lt!1338847)))))

(assert (=> b!3854624 (=> (not res!1560519) (not e!2382647))))

(declare-fun b!3854625 () Bool)

(assert (=> b!3854625 (= e!2382646 (= (_2!23153 lt!1338993) lt!1338847))))

(declare-fun d!1142851 () Bool)

(assert (=> d!1142851 e!2382646))

(declare-fun c!671305 () Bool)

(assert (=> d!1142851 (= c!671305 (> (size!30725 (_1!23153 lt!1338993)) 0))))

(assert (=> d!1142851 (= lt!1338993 e!2382645)))

(declare-fun c!671306 () Bool)

(assert (=> d!1142851 (= c!671306 ((_ is Some!8733) lt!1338992))))

(assert (=> d!1142851 (= lt!1338992 (maxPrefix!3209 thiss!20629 rules!2768 lt!1338847))))

(assert (=> d!1142851 (= (lexList!1673 thiss!20629 rules!2768 lt!1338847) lt!1338993)))

(assert (= (and d!1142851 c!671306) b!3854621))

(assert (= (and d!1142851 (not c!671306)) b!3854622))

(assert (= (and d!1142851 c!671305) b!3854624))

(assert (= (and d!1142851 (not c!671305)) b!3854625))

(assert (= (and b!3854624 res!1560519) b!3854623))

(declare-fun m!4409999 () Bool)

(assert (=> b!3854621 m!4409999))

(declare-fun m!4410001 () Bool)

(assert (=> b!3854623 m!4410001))

(declare-fun m!4410003 () Bool)

(assert (=> b!3854624 m!4410003))

(assert (=> b!3854624 m!4409527))

(declare-fun m!4410005 () Bool)

(assert (=> d!1142851 m!4410005))

(assert (=> d!1142851 m!4409541))

(assert (=> b!3854248 d!1142851))

(declare-fun d!1142853 () Bool)

(declare-fun e!2382649 () Bool)

(assert (=> d!1142853 e!2382649))

(declare-fun res!1560520 () Bool)

(assert (=> d!1142853 (=> (not res!1560520) (not e!2382649))))

(declare-fun lt!1338994 () List!40970)

(assert (=> d!1142853 (= res!1560520 (= (content!6081 lt!1338994) ((_ map or) (content!6081 prefixTokens!80) (content!6081 suffixTokens!72))))))

(declare-fun e!2382648 () List!40970)

(assert (=> d!1142853 (= lt!1338994 e!2382648)))

(declare-fun c!671307 () Bool)

(assert (=> d!1142853 (= c!671307 ((_ is Nil!40846) prefixTokens!80))))

(assert (=> d!1142853 (= (++!10389 prefixTokens!80 suffixTokens!72) lt!1338994)))

(declare-fun b!3854627 () Bool)

(assert (=> b!3854627 (= e!2382648 (Cons!40846 (h!46266 prefixTokens!80) (++!10389 (t!312451 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3854629 () Bool)

(assert (=> b!3854629 (= e!2382649 (or (not (= suffixTokens!72 Nil!40846)) (= lt!1338994 prefixTokens!80)))))

(declare-fun b!3854626 () Bool)

(assert (=> b!3854626 (= e!2382648 suffixTokens!72)))

(declare-fun b!3854628 () Bool)

(declare-fun res!1560521 () Bool)

(assert (=> b!3854628 (=> (not res!1560521) (not e!2382649))))

(assert (=> b!3854628 (= res!1560521 (= (size!30725 lt!1338994) (+ (size!30725 prefixTokens!80) (size!30725 suffixTokens!72))))))

(assert (= (and d!1142853 c!671307) b!3854626))

(assert (= (and d!1142853 (not c!671307)) b!3854627))

(assert (= (and d!1142853 res!1560520) b!3854628))

(assert (= (and b!3854628 res!1560521) b!3854629))

(declare-fun m!4410007 () Bool)

(assert (=> d!1142853 m!4410007))

(declare-fun m!4410009 () Bool)

(assert (=> d!1142853 m!4410009))

(declare-fun m!4410011 () Bool)

(assert (=> d!1142853 m!4410011))

(declare-fun m!4410013 () Bool)

(assert (=> b!3854627 m!4410013))

(declare-fun m!4410015 () Bool)

(assert (=> b!3854628 m!4410015))

(declare-fun m!4410017 () Bool)

(assert (=> b!3854628 m!4410017))

(declare-fun m!4410019 () Bool)

(assert (=> b!3854628 m!4410019))

(assert (=> b!3854248 d!1142853))

(declare-fun b!3854632 () Bool)

(declare-fun res!1560522 () Bool)

(declare-fun e!2382650 () Bool)

(assert (=> b!3854632 (=> (not res!1560522) (not e!2382650))))

(declare-fun lt!1338995 () List!40969)

(assert (=> b!3854632 (= res!1560522 (= (size!30724 lt!1338995) (+ (size!30724 prefix!426) (size!30724 suffix!1176))))))

(declare-fun b!3854631 () Bool)

(declare-fun e!2382651 () List!40969)

(assert (=> b!3854631 (= e!2382651 (Cons!40845 (h!46265 prefix!426) (++!10390 (t!312450 prefix!426) suffix!1176)))))

(declare-fun b!3854633 () Bool)

(assert (=> b!3854633 (= e!2382650 (or (not (= suffix!1176 Nil!40845)) (= lt!1338995 prefix!426)))))

(declare-fun d!1142855 () Bool)

(assert (=> d!1142855 e!2382650))

(declare-fun res!1560523 () Bool)

(assert (=> d!1142855 (=> (not res!1560523) (not e!2382650))))

(assert (=> d!1142855 (= res!1560523 (= (content!6080 lt!1338995) ((_ map or) (content!6080 prefix!426) (content!6080 suffix!1176))))))

(assert (=> d!1142855 (= lt!1338995 e!2382651)))

(declare-fun c!671308 () Bool)

(assert (=> d!1142855 (= c!671308 ((_ is Nil!40845) prefix!426))))

(assert (=> d!1142855 (= (++!10390 prefix!426 suffix!1176) lt!1338995)))

(declare-fun b!3854630 () Bool)

(assert (=> b!3854630 (= e!2382651 suffix!1176)))

(assert (= (and d!1142855 c!671308) b!3854630))

(assert (= (and d!1142855 (not c!671308)) b!3854631))

(assert (= (and d!1142855 res!1560523) b!3854632))

(assert (= (and b!3854632 res!1560522) b!3854633))

(declare-fun m!4410021 () Bool)

(assert (=> b!3854632 m!4410021))

(assert (=> b!3854632 m!4409607))

(assert (=> b!3854632 m!4409547))

(declare-fun m!4410023 () Bool)

(assert (=> b!3854631 m!4410023))

(declare-fun m!4410025 () Bool)

(assert (=> d!1142855 m!4410025))

(declare-fun m!4410027 () Bool)

(assert (=> d!1142855 m!4410027))

(declare-fun m!4410029 () Bool)

(assert (=> d!1142855 m!4410029))

(assert (=> b!3854248 d!1142855))

(declare-fun d!1142857 () Bool)

(assert (=> d!1142857 (= (inv!54997 (tag!7176 (rule!9174 (h!46266 suffixTokens!72)))) (= (mod (str.len (value!200639 (tag!7176 (rule!9174 (h!46266 suffixTokens!72))))) 2) 0))))

(assert (=> b!3854250 d!1142857))

(declare-fun d!1142859 () Bool)

(declare-fun res!1560524 () Bool)

(declare-fun e!2382652 () Bool)

(assert (=> d!1142859 (=> (not res!1560524) (not e!2382652))))

(assert (=> d!1142859 (= res!1560524 (semiInverseModEq!2707 (toChars!8599 (transformation!6316 (rule!9174 (h!46266 suffixTokens!72)))) (toValue!8740 (transformation!6316 (rule!9174 (h!46266 suffixTokens!72))))))))

(assert (=> d!1142859 (= (inv!55001 (transformation!6316 (rule!9174 (h!46266 suffixTokens!72)))) e!2382652)))

(declare-fun b!3854634 () Bool)

(assert (=> b!3854634 (= e!2382652 (equivClasses!2606 (toChars!8599 (transformation!6316 (rule!9174 (h!46266 suffixTokens!72)))) (toValue!8740 (transformation!6316 (rule!9174 (h!46266 suffixTokens!72))))))))

(assert (= (and d!1142859 res!1560524) b!3854634))

(declare-fun m!4410031 () Bool)

(assert (=> d!1142859 m!4410031))

(declare-fun m!4410033 () Bool)

(assert (=> b!3854634 m!4410033))

(assert (=> b!3854250 d!1142859))

(declare-fun d!1142861 () Bool)

(declare-fun lt!1338996 () Int)

(assert (=> d!1142861 (>= lt!1338996 0)))

(declare-fun e!2382653 () Int)

(assert (=> d!1142861 (= lt!1338996 e!2382653)))

(declare-fun c!671309 () Bool)

(assert (=> d!1142861 (= c!671309 ((_ is Nil!40845) lt!1338847))))

(assert (=> d!1142861 (= (size!30724 lt!1338847) lt!1338996)))

(declare-fun b!3854635 () Bool)

(assert (=> b!3854635 (= e!2382653 0)))

(declare-fun b!3854636 () Bool)

(assert (=> b!3854636 (= e!2382653 (+ 1 (size!30724 (t!312450 lt!1338847))))))

(assert (= (and d!1142861 c!671309) b!3854635))

(assert (= (and d!1142861 (not c!671309)) b!3854636))

(declare-fun m!4410035 () Bool)

(assert (=> b!3854636 m!4410035))

(assert (=> b!3854249 d!1142861))

(declare-fun d!1142863 () Bool)

(declare-fun lt!1338997 () Int)

(assert (=> d!1142863 (>= lt!1338997 0)))

(declare-fun e!2382654 () Int)

(assert (=> d!1142863 (= lt!1338997 e!2382654)))

(declare-fun c!671310 () Bool)

(assert (=> d!1142863 (= c!671310 ((_ is Nil!40845) (originalCharacters!6916 (_1!23154 (v!39029 lt!1338843)))))))

(assert (=> d!1142863 (= (size!30724 (originalCharacters!6916 (_1!23154 (v!39029 lt!1338843)))) lt!1338997)))

(declare-fun b!3854637 () Bool)

(assert (=> b!3854637 (= e!2382654 0)))

(declare-fun b!3854638 () Bool)

(assert (=> b!3854638 (= e!2382654 (+ 1 (size!30724 (t!312450 (originalCharacters!6916 (_1!23154 (v!39029 lt!1338843)))))))))

(assert (= (and d!1142863 c!671310) b!3854637))

(assert (= (and d!1142863 (not c!671310)) b!3854638))

(declare-fun m!4410037 () Bool)

(assert (=> b!3854638 m!4410037))

(assert (=> b!3854254 d!1142863))

(declare-fun b!3854649 () Bool)

(declare-fun e!2382663 () Bool)

(declare-fun inv!15 (TokenValue!6546) Bool)

(assert (=> b!3854649 (= e!2382663 (inv!15 (value!200640 (h!46266 suffixTokens!72))))))

(declare-fun d!1142865 () Bool)

(declare-fun c!671316 () Bool)

(assert (=> d!1142865 (= c!671316 ((_ is IntegerValue!19638) (value!200640 (h!46266 suffixTokens!72))))))

(declare-fun e!2382662 () Bool)

(assert (=> d!1142865 (= (inv!21 (value!200640 (h!46266 suffixTokens!72))) e!2382662)))

(declare-fun b!3854650 () Bool)

(declare-fun res!1560527 () Bool)

(assert (=> b!3854650 (=> res!1560527 e!2382663)))

(assert (=> b!3854650 (= res!1560527 (not ((_ is IntegerValue!19640) (value!200640 (h!46266 suffixTokens!72)))))))

(declare-fun e!2382661 () Bool)

(assert (=> b!3854650 (= e!2382661 e!2382663)))

(declare-fun b!3854651 () Bool)

(declare-fun inv!16 (TokenValue!6546) Bool)

(assert (=> b!3854651 (= e!2382662 (inv!16 (value!200640 (h!46266 suffixTokens!72))))))

(declare-fun b!3854652 () Bool)

(declare-fun inv!17 (TokenValue!6546) Bool)

(assert (=> b!3854652 (= e!2382661 (inv!17 (value!200640 (h!46266 suffixTokens!72))))))

(declare-fun b!3854653 () Bool)

(assert (=> b!3854653 (= e!2382662 e!2382661)))

(declare-fun c!671315 () Bool)

(assert (=> b!3854653 (= c!671315 ((_ is IntegerValue!19639) (value!200640 (h!46266 suffixTokens!72))))))

(assert (= (and d!1142865 c!671316) b!3854651))

(assert (= (and d!1142865 (not c!671316)) b!3854653))

(assert (= (and b!3854653 c!671315) b!3854652))

(assert (= (and b!3854653 (not c!671315)) b!3854650))

(assert (= (and b!3854650 (not res!1560527)) b!3854649))

(declare-fun m!4410039 () Bool)

(assert (=> b!3854649 m!4410039))

(declare-fun m!4410041 () Bool)

(assert (=> b!3854651 m!4410041))

(declare-fun m!4410043 () Bool)

(assert (=> b!3854652 m!4410043))

(assert (=> b!3854255 d!1142865))

(declare-fun d!1142867 () Bool)

(declare-fun res!1560532 () Bool)

(declare-fun e!2382666 () Bool)

(assert (=> d!1142867 (=> (not res!1560532) (not e!2382666))))

(assert (=> d!1142867 (= res!1560532 (not (isEmpty!24181 (originalCharacters!6916 (h!46266 suffixTokens!72)))))))

(assert (=> d!1142867 (= (inv!55000 (h!46266 suffixTokens!72)) e!2382666)))

(declare-fun b!3854658 () Bool)

(declare-fun res!1560533 () Bool)

(assert (=> b!3854658 (=> (not res!1560533) (not e!2382666))))

(assert (=> b!3854658 (= res!1560533 (= (originalCharacters!6916 (h!46266 suffixTokens!72)) (list!15204 (dynLambda!17627 (toChars!8599 (transformation!6316 (rule!9174 (h!46266 suffixTokens!72)))) (value!200640 (h!46266 suffixTokens!72))))))))

(declare-fun b!3854659 () Bool)

(assert (=> b!3854659 (= e!2382666 (= (size!30723 (h!46266 suffixTokens!72)) (size!30724 (originalCharacters!6916 (h!46266 suffixTokens!72)))))))

(assert (= (and d!1142867 res!1560532) b!3854658))

(assert (= (and b!3854658 res!1560533) b!3854659))

(declare-fun b_lambda!112677 () Bool)

(assert (=> (not b_lambda!112677) (not b!3854658)))

(declare-fun tb!222815 () Bool)

(declare-fun t!312484 () Bool)

(assert (=> (and b!3854252 (= (toChars!8599 (transformation!6316 (h!46267 rules!2768))) (toChars!8599 (transformation!6316 (rule!9174 (h!46266 suffixTokens!72))))) t!312484) tb!222815))

(declare-fun b!3854660 () Bool)

(declare-fun e!2382667 () Bool)

(declare-fun tp!1168312 () Bool)

(assert (=> b!3854660 (= e!2382667 (and (inv!55002 (c!671231 (dynLambda!17627 (toChars!8599 (transformation!6316 (rule!9174 (h!46266 suffixTokens!72)))) (value!200640 (h!46266 suffixTokens!72))))) tp!1168312))))

(declare-fun result!271412 () Bool)

(assert (=> tb!222815 (= result!271412 (and (inv!55003 (dynLambda!17627 (toChars!8599 (transformation!6316 (rule!9174 (h!46266 suffixTokens!72)))) (value!200640 (h!46266 suffixTokens!72)))) e!2382667))))

(assert (= tb!222815 b!3854660))

(declare-fun m!4410045 () Bool)

(assert (=> b!3854660 m!4410045))

(declare-fun m!4410047 () Bool)

(assert (=> tb!222815 m!4410047))

(assert (=> b!3854658 t!312484))

(declare-fun b_and!288165 () Bool)

(assert (= b_and!288153 (and (=> t!312484 result!271412) b_and!288165)))

(declare-fun t!312486 () Bool)

(declare-fun tb!222817 () Bool)

(assert (=> (and b!3854262 (= (toChars!8599 (transformation!6316 (rule!9174 (h!46266 suffixTokens!72)))) (toChars!8599 (transformation!6316 (rule!9174 (h!46266 suffixTokens!72))))) t!312486) tb!222817))

(declare-fun result!271414 () Bool)

(assert (= result!271414 result!271412))

(assert (=> b!3854658 t!312486))

(declare-fun b_and!288167 () Bool)

(assert (= b_and!288155 (and (=> t!312486 result!271414) b_and!288167)))

(declare-fun tb!222819 () Bool)

(declare-fun t!312488 () Bool)

(assert (=> (and b!3854261 (= (toChars!8599 (transformation!6316 (rule!9174 (h!46266 prefixTokens!80)))) (toChars!8599 (transformation!6316 (rule!9174 (h!46266 suffixTokens!72))))) t!312488) tb!222819))

(declare-fun result!271416 () Bool)

(assert (= result!271416 result!271412))

(assert (=> b!3854658 t!312488))

(declare-fun b_and!288169 () Bool)

(assert (= b_and!288157 (and (=> t!312488 result!271416) b_and!288169)))

(declare-fun m!4410049 () Bool)

(assert (=> d!1142867 m!4410049))

(declare-fun m!4410051 () Bool)

(assert (=> b!3854658 m!4410051))

(assert (=> b!3854658 m!4410051))

(declare-fun m!4410053 () Bool)

(assert (=> b!3854658 m!4410053))

(declare-fun m!4410055 () Bool)

(assert (=> b!3854659 m!4410055))

(assert (=> b!3854235 d!1142867))

(declare-fun d!1142869 () Bool)

(declare-fun res!1560534 () Bool)

(declare-fun e!2382668 () Bool)

(assert (=> d!1142869 (=> (not res!1560534) (not e!2382668))))

(assert (=> d!1142869 (= res!1560534 (not (isEmpty!24181 (originalCharacters!6916 (h!46266 prefixTokens!80)))))))

(assert (=> d!1142869 (= (inv!55000 (h!46266 prefixTokens!80)) e!2382668)))

(declare-fun b!3854661 () Bool)

(declare-fun res!1560535 () Bool)

(assert (=> b!3854661 (=> (not res!1560535) (not e!2382668))))

(assert (=> b!3854661 (= res!1560535 (= (originalCharacters!6916 (h!46266 prefixTokens!80)) (list!15204 (dynLambda!17627 (toChars!8599 (transformation!6316 (rule!9174 (h!46266 prefixTokens!80)))) (value!200640 (h!46266 prefixTokens!80))))))))

(declare-fun b!3854662 () Bool)

(assert (=> b!3854662 (= e!2382668 (= (size!30723 (h!46266 prefixTokens!80)) (size!30724 (originalCharacters!6916 (h!46266 prefixTokens!80)))))))

(assert (= (and d!1142869 res!1560534) b!3854661))

(assert (= (and b!3854661 res!1560535) b!3854662))

(declare-fun b_lambda!112679 () Bool)

(assert (=> (not b_lambda!112679) (not b!3854661)))

(declare-fun t!312490 () Bool)

(declare-fun tb!222821 () Bool)

(assert (=> (and b!3854252 (= (toChars!8599 (transformation!6316 (h!46267 rules!2768))) (toChars!8599 (transformation!6316 (rule!9174 (h!46266 prefixTokens!80))))) t!312490) tb!222821))

(declare-fun b!3854663 () Bool)

(declare-fun e!2382669 () Bool)

(declare-fun tp!1168313 () Bool)

(assert (=> b!3854663 (= e!2382669 (and (inv!55002 (c!671231 (dynLambda!17627 (toChars!8599 (transformation!6316 (rule!9174 (h!46266 prefixTokens!80)))) (value!200640 (h!46266 prefixTokens!80))))) tp!1168313))))

(declare-fun result!271418 () Bool)

(assert (=> tb!222821 (= result!271418 (and (inv!55003 (dynLambda!17627 (toChars!8599 (transformation!6316 (rule!9174 (h!46266 prefixTokens!80)))) (value!200640 (h!46266 prefixTokens!80)))) e!2382669))))

(assert (= tb!222821 b!3854663))

(declare-fun m!4410057 () Bool)

(assert (=> b!3854663 m!4410057))

(declare-fun m!4410059 () Bool)

(assert (=> tb!222821 m!4410059))

(assert (=> b!3854661 t!312490))

(declare-fun b_and!288171 () Bool)

(assert (= b_and!288165 (and (=> t!312490 result!271418) b_and!288171)))

(declare-fun tb!222823 () Bool)

(declare-fun t!312492 () Bool)

(assert (=> (and b!3854262 (= (toChars!8599 (transformation!6316 (rule!9174 (h!46266 suffixTokens!72)))) (toChars!8599 (transformation!6316 (rule!9174 (h!46266 prefixTokens!80))))) t!312492) tb!222823))

(declare-fun result!271420 () Bool)

(assert (= result!271420 result!271418))

(assert (=> b!3854661 t!312492))

(declare-fun b_and!288173 () Bool)

(assert (= b_and!288167 (and (=> t!312492 result!271420) b_and!288173)))

(declare-fun t!312494 () Bool)

(declare-fun tb!222825 () Bool)

(assert (=> (and b!3854261 (= (toChars!8599 (transformation!6316 (rule!9174 (h!46266 prefixTokens!80)))) (toChars!8599 (transformation!6316 (rule!9174 (h!46266 prefixTokens!80))))) t!312494) tb!222825))

(declare-fun result!271422 () Bool)

(assert (= result!271422 result!271418))

(assert (=> b!3854661 t!312494))

(declare-fun b_and!288175 () Bool)

(assert (= b_and!288169 (and (=> t!312494 result!271422) b_and!288175)))

(declare-fun m!4410061 () Bool)

(assert (=> d!1142869 m!4410061))

(declare-fun m!4410063 () Bool)

(assert (=> b!3854661 m!4410063))

(assert (=> b!3854661 m!4410063))

(declare-fun m!4410065 () Bool)

(assert (=> b!3854661 m!4410065))

(declare-fun m!4410067 () Bool)

(assert (=> b!3854662 m!4410067))

(assert (=> b!3854256 d!1142869))

(declare-fun b!3854664 () Bool)

(declare-fun e!2382672 () Bool)

(assert (=> b!3854664 (= e!2382672 (inv!15 (value!200640 (h!46266 prefixTokens!80))))))

(declare-fun d!1142871 () Bool)

(declare-fun c!671318 () Bool)

(assert (=> d!1142871 (= c!671318 ((_ is IntegerValue!19638) (value!200640 (h!46266 prefixTokens!80))))))

(declare-fun e!2382671 () Bool)

(assert (=> d!1142871 (= (inv!21 (value!200640 (h!46266 prefixTokens!80))) e!2382671)))

(declare-fun b!3854665 () Bool)

(declare-fun res!1560536 () Bool)

(assert (=> b!3854665 (=> res!1560536 e!2382672)))

(assert (=> b!3854665 (= res!1560536 (not ((_ is IntegerValue!19640) (value!200640 (h!46266 prefixTokens!80)))))))

(declare-fun e!2382670 () Bool)

(assert (=> b!3854665 (= e!2382670 e!2382672)))

(declare-fun b!3854666 () Bool)

(assert (=> b!3854666 (= e!2382671 (inv!16 (value!200640 (h!46266 prefixTokens!80))))))

(declare-fun b!3854667 () Bool)

(assert (=> b!3854667 (= e!2382670 (inv!17 (value!200640 (h!46266 prefixTokens!80))))))

(declare-fun b!3854668 () Bool)

(assert (=> b!3854668 (= e!2382671 e!2382670)))

(declare-fun c!671317 () Bool)

(assert (=> b!3854668 (= c!671317 ((_ is IntegerValue!19639) (value!200640 (h!46266 prefixTokens!80))))))

(assert (= (and d!1142871 c!671318) b!3854666))

(assert (= (and d!1142871 (not c!671318)) b!3854668))

(assert (= (and b!3854668 c!671317) b!3854667))

(assert (= (and b!3854668 (not c!671317)) b!3854665))

(assert (= (and b!3854665 (not res!1560536)) b!3854664))

(declare-fun m!4410069 () Bool)

(assert (=> b!3854664 m!4410069))

(declare-fun m!4410071 () Bool)

(assert (=> b!3854666 m!4410071))

(declare-fun m!4410073 () Bool)

(assert (=> b!3854667 m!4410073))

(assert (=> b!3854258 d!1142871))

(declare-fun d!1142873 () Bool)

(declare-fun lt!1338998 () Int)

(assert (=> d!1142873 (>= lt!1338998 0)))

(declare-fun e!2382673 () Int)

(assert (=> d!1142873 (= lt!1338998 e!2382673)))

(declare-fun c!671319 () Bool)

(assert (=> d!1142873 (= c!671319 ((_ is Nil!40845) prefix!426))))

(assert (=> d!1142873 (= (size!30724 prefix!426) lt!1338998)))

(declare-fun b!3854669 () Bool)

(assert (=> b!3854669 (= e!2382673 0)))

(declare-fun b!3854670 () Bool)

(assert (=> b!3854670 (= e!2382673 (+ 1 (size!30724 (t!312450 prefix!426))))))

(assert (= (and d!1142873 c!671319) b!3854669))

(assert (= (and d!1142873 (not c!671319)) b!3854670))

(declare-fun m!4410075 () Bool)

(assert (=> b!3854670 m!4410075))

(assert (=> b!3854236 d!1142873))

(declare-fun d!1142875 () Bool)

(declare-fun lt!1338999 () Int)

(assert (=> d!1142875 (>= lt!1338999 0)))

(declare-fun e!2382674 () Int)

(assert (=> d!1142875 (= lt!1338999 e!2382674)))

(declare-fun c!671320 () Bool)

(assert (=> d!1142875 (= c!671320 ((_ is Nil!40845) suffix!1176))))

(assert (=> d!1142875 (= (size!30724 suffix!1176) lt!1338999)))

(declare-fun b!3854671 () Bool)

(assert (=> b!3854671 (= e!2382674 0)))

(declare-fun b!3854672 () Bool)

(assert (=> b!3854672 (= e!2382674 (+ 1 (size!30724 (t!312450 suffix!1176))))))

(assert (= (and d!1142875 c!671320) b!3854671))

(assert (= (and d!1142875 (not c!671320)) b!3854672))

(declare-fun m!4410077 () Bool)

(assert (=> b!3854672 m!4410077))

(assert (=> b!3854257 d!1142875))

(declare-fun d!1142877 () Bool)

(declare-fun lt!1339000 () Int)

(assert (=> d!1142877 (>= lt!1339000 0)))

(declare-fun e!2382675 () Int)

(assert (=> d!1142877 (= lt!1339000 e!2382675)))

(declare-fun c!671321 () Bool)

(assert (=> d!1142877 (= c!671321 ((_ is Nil!40845) (_2!23154 (v!39029 lt!1338843))))))

(assert (=> d!1142877 (= (size!30724 (_2!23154 (v!39029 lt!1338843))) lt!1339000)))

(declare-fun b!3854673 () Bool)

(assert (=> b!3854673 (= e!2382675 0)))

(declare-fun b!3854674 () Bool)

(assert (=> b!3854674 (= e!2382675 (+ 1 (size!30724 (t!312450 (_2!23154 (v!39029 lt!1338843))))))))

(assert (= (and d!1142877 c!671321) b!3854673))

(assert (= (and d!1142877 (not c!671321)) b!3854674))

(declare-fun m!4410079 () Bool)

(assert (=> b!3854674 m!4410079))

(assert (=> b!3854257 d!1142877))

(declare-fun b!3854703 () Bool)

(declare-fun res!1560559 () Bool)

(declare-fun e!2382692 () Bool)

(assert (=> b!3854703 (=> res!1560559 e!2382692)))

(declare-fun e!2382693 () Bool)

(assert (=> b!3854703 (= res!1560559 e!2382693)))

(declare-fun res!1560555 () Bool)

(assert (=> b!3854703 (=> (not res!1560555) (not e!2382693))))

(declare-fun lt!1339003 () Bool)

(assert (=> b!3854703 (= res!1560555 lt!1339003)))

(declare-fun b!3854704 () Bool)

(declare-fun e!2382696 () Bool)

(assert (=> b!3854704 (= e!2382696 (nullable!3906 (regex!6316 (rule!9174 (_1!23154 (v!39029 lt!1338843))))))))

(declare-fun b!3854705 () Bool)

(declare-fun e!2382691 () Bool)

(assert (=> b!3854705 (= e!2382691 (not lt!1339003))))

(declare-fun b!3854706 () Bool)

(declare-fun res!1560554 () Bool)

(declare-fun e!2382690 () Bool)

(assert (=> b!3854706 (=> res!1560554 e!2382690)))

(assert (=> b!3854706 (= res!1560554 (not (isEmpty!24181 (tail!5828 lt!1338849))))))

(declare-fun b!3854707 () Bool)

(declare-fun derivativeStep!3406 (Regex!11221 C!22628) Regex!11221)

(assert (=> b!3854707 (= e!2382696 (matchR!5368 (derivativeStep!3406 (regex!6316 (rule!9174 (_1!23154 (v!39029 lt!1338843)))) (head!8111 lt!1338849)) (tail!5828 lt!1338849)))))

(declare-fun b!3854708 () Bool)

(declare-fun res!1560557 () Bool)

(assert (=> b!3854708 (=> res!1560557 e!2382692)))

(assert (=> b!3854708 (= res!1560557 (not ((_ is ElementMatch!11221) (regex!6316 (rule!9174 (_1!23154 (v!39029 lt!1338843)))))))))

(assert (=> b!3854708 (= e!2382691 e!2382692)))

(declare-fun b!3854709 () Bool)

(assert (=> b!3854709 (= e!2382693 (= (head!8111 lt!1338849) (c!671230 (regex!6316 (rule!9174 (_1!23154 (v!39029 lt!1338843)))))))))

(declare-fun d!1142879 () Bool)

(declare-fun e!2382695 () Bool)

(assert (=> d!1142879 e!2382695))

(declare-fun c!671328 () Bool)

(assert (=> d!1142879 (= c!671328 ((_ is EmptyExpr!11221) (regex!6316 (rule!9174 (_1!23154 (v!39029 lt!1338843))))))))

(assert (=> d!1142879 (= lt!1339003 e!2382696)))

(declare-fun c!671330 () Bool)

(assert (=> d!1142879 (= c!671330 (isEmpty!24181 lt!1338849))))

(assert (=> d!1142879 (validRegex!5105 (regex!6316 (rule!9174 (_1!23154 (v!39029 lt!1338843)))))))

(assert (=> d!1142879 (= (matchR!5368 (regex!6316 (rule!9174 (_1!23154 (v!39029 lt!1338843)))) lt!1338849) lt!1339003)))

(declare-fun b!3854710 () Bool)

(declare-fun e!2382694 () Bool)

(assert (=> b!3854710 (= e!2382694 e!2382690)))

(declare-fun res!1560553 () Bool)

(assert (=> b!3854710 (=> res!1560553 e!2382690)))

(declare-fun call!282376 () Bool)

(assert (=> b!3854710 (= res!1560553 call!282376)))

(declare-fun bm!282371 () Bool)

(assert (=> bm!282371 (= call!282376 (isEmpty!24181 lt!1338849))))

(declare-fun b!3854711 () Bool)

(declare-fun res!1560556 () Bool)

(assert (=> b!3854711 (=> (not res!1560556) (not e!2382693))))

(assert (=> b!3854711 (= res!1560556 (not call!282376))))

(declare-fun b!3854712 () Bool)

(declare-fun res!1560558 () Bool)

(assert (=> b!3854712 (=> (not res!1560558) (not e!2382693))))

(assert (=> b!3854712 (= res!1560558 (isEmpty!24181 (tail!5828 lt!1338849)))))

(declare-fun b!3854713 () Bool)

(assert (=> b!3854713 (= e!2382692 e!2382694)))

(declare-fun res!1560560 () Bool)

(assert (=> b!3854713 (=> (not res!1560560) (not e!2382694))))

(assert (=> b!3854713 (= res!1560560 (not lt!1339003))))

(declare-fun b!3854714 () Bool)

(assert (=> b!3854714 (= e!2382695 (= lt!1339003 call!282376))))

(declare-fun b!3854715 () Bool)

(assert (=> b!3854715 (= e!2382690 (not (= (head!8111 lt!1338849) (c!671230 (regex!6316 (rule!9174 (_1!23154 (v!39029 lt!1338843))))))))))

(declare-fun b!3854716 () Bool)

(assert (=> b!3854716 (= e!2382695 e!2382691)))

(declare-fun c!671329 () Bool)

(assert (=> b!3854716 (= c!671329 ((_ is EmptyLang!11221) (regex!6316 (rule!9174 (_1!23154 (v!39029 lt!1338843))))))))

(assert (= (and d!1142879 c!671330) b!3854704))

(assert (= (and d!1142879 (not c!671330)) b!3854707))

(assert (= (and d!1142879 c!671328) b!3854714))

(assert (= (and d!1142879 (not c!671328)) b!3854716))

(assert (= (and b!3854716 c!671329) b!3854705))

(assert (= (and b!3854716 (not c!671329)) b!3854708))

(assert (= (and b!3854708 (not res!1560557)) b!3854703))

(assert (= (and b!3854703 res!1560555) b!3854711))

(assert (= (and b!3854711 res!1560556) b!3854712))

(assert (= (and b!3854712 res!1560558) b!3854709))

(assert (= (and b!3854703 (not res!1560559)) b!3854713))

(assert (= (and b!3854713 res!1560560) b!3854710))

(assert (= (and b!3854710 (not res!1560553)) b!3854706))

(assert (= (and b!3854706 (not res!1560554)) b!3854715))

(assert (= (or b!3854714 b!3854710 b!3854711) bm!282371))

(assert (=> b!3854712 m!4409929))

(assert (=> b!3854712 m!4409929))

(declare-fun m!4410081 () Bool)

(assert (=> b!3854712 m!4410081))

(assert (=> b!3854704 m!4409907))

(assert (=> b!3854706 m!4409929))

(assert (=> b!3854706 m!4409929))

(assert (=> b!3854706 m!4410081))

(assert (=> b!3854709 m!4409935))

(declare-fun m!4410083 () Bool)

(assert (=> d!1142879 m!4410083))

(assert (=> d!1142879 m!4409905))

(assert (=> b!3854707 m!4409935))

(assert (=> b!3854707 m!4409935))

(declare-fun m!4410085 () Bool)

(assert (=> b!3854707 m!4410085))

(assert (=> b!3854707 m!4409929))

(assert (=> b!3854707 m!4410085))

(assert (=> b!3854707 m!4409929))

(declare-fun m!4410087 () Bool)

(assert (=> b!3854707 m!4410087))

(assert (=> bm!282371 m!4410083))

(assert (=> b!3854715 m!4409935))

(assert (=> b!3854259 d!1142879))

(declare-fun b!3854735 () Bool)

(declare-fun res!1560580 () Bool)

(declare-fun e!2382705 () Bool)

(assert (=> b!3854735 (=> (not res!1560580) (not e!2382705))))

(declare-fun lt!1339015 () Option!8734)

(assert (=> b!3854735 (= res!1560580 (= (rule!9174 (_1!23154 (get!13514 lt!1339015))) (rule!9174 (_1!23154 (v!39029 lt!1338843)))))))

(declare-fun b!3854736 () Bool)

(declare-fun e!2382706 () Option!8734)

(assert (=> b!3854736 (= e!2382706 None!8733)))

(declare-fun b!3854737 () Bool)

(declare-fun res!1560581 () Bool)

(assert (=> b!3854737 (=> (not res!1560581) (not e!2382705))))

(assert (=> b!3854737 (= res!1560581 (= (value!200640 (_1!23154 (get!13514 lt!1339015))) (apply!9559 (transformation!6316 (rule!9174 (_1!23154 (get!13514 lt!1339015)))) (seqFromList!4587 (originalCharacters!6916 (_1!23154 (get!13514 lt!1339015)))))))))

(declare-fun b!3854738 () Bool)

(declare-fun e!2382708 () Bool)

(assert (=> b!3854738 (= e!2382708 e!2382705)))

(declare-fun res!1560576 () Bool)

(assert (=> b!3854738 (=> (not res!1560576) (not e!2382705))))

(assert (=> b!3854738 (= res!1560576 (matchR!5368 (regex!6316 (rule!9174 (_1!23154 (v!39029 lt!1338843)))) (list!15204 (charsOf!4144 (_1!23154 (get!13514 lt!1339015))))))))

(declare-fun b!3854739 () Bool)

(declare-datatypes ((tuple2!40044 0))(
  ( (tuple2!40045 (_1!23156 List!40969) (_2!23156 List!40969)) )
))
(declare-fun lt!1339014 () tuple2!40044)

(declare-fun size!30728 (BalanceConc!24648) Int)

(assert (=> b!3854739 (= e!2382706 (Some!8733 (tuple2!40041 (Token!11771 (apply!9559 (transformation!6316 (rule!9174 (_1!23154 (v!39029 lt!1338843)))) (seqFromList!4587 (_1!23156 lt!1339014))) (rule!9174 (_1!23154 (v!39029 lt!1338843))) (size!30728 (seqFromList!4587 (_1!23156 lt!1339014))) (_1!23156 lt!1339014)) (_2!23156 lt!1339014))))))

(declare-fun lt!1339018 () Unit!58516)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1147 (Regex!11221 List!40969) Unit!58516)

(assert (=> b!3854739 (= lt!1339018 (longestMatchIsAcceptedByMatchOrIsEmpty!1147 (regex!6316 (rule!9174 (_1!23154 (v!39029 lt!1338843)))) lt!1338847))))

(declare-fun res!1560579 () Bool)

(declare-fun findLongestMatchInner!1174 (Regex!11221 List!40969 Int List!40969 List!40969 Int) tuple2!40044)

(assert (=> b!3854739 (= res!1560579 (isEmpty!24181 (_1!23156 (findLongestMatchInner!1174 (regex!6316 (rule!9174 (_1!23154 (v!39029 lt!1338843)))) Nil!40845 (size!30724 Nil!40845) lt!1338847 lt!1338847 (size!30724 lt!1338847)))))))

(declare-fun e!2382707 () Bool)

(assert (=> b!3854739 (=> res!1560579 e!2382707)))

(assert (=> b!3854739 e!2382707))

(declare-fun lt!1339017 () Unit!58516)

(assert (=> b!3854739 (= lt!1339017 lt!1339018)))

(declare-fun lt!1339016 () Unit!58516)

(declare-fun lemmaSemiInverse!1680 (TokenValueInjection!12520 BalanceConc!24648) Unit!58516)

(assert (=> b!3854739 (= lt!1339016 (lemmaSemiInverse!1680 (transformation!6316 (rule!9174 (_1!23154 (v!39029 lt!1338843)))) (seqFromList!4587 (_1!23156 lt!1339014))))))

(declare-fun d!1142881 () Bool)

(assert (=> d!1142881 e!2382708))

(declare-fun res!1560578 () Bool)

(assert (=> d!1142881 (=> res!1560578 e!2382708)))

(assert (=> d!1142881 (= res!1560578 (isEmpty!24183 lt!1339015))))

(assert (=> d!1142881 (= lt!1339015 e!2382706)))

(declare-fun c!671333 () Bool)

(assert (=> d!1142881 (= c!671333 (isEmpty!24181 (_1!23156 lt!1339014)))))

(declare-fun findLongestMatch!1087 (Regex!11221 List!40969) tuple2!40044)

(assert (=> d!1142881 (= lt!1339014 (findLongestMatch!1087 (regex!6316 (rule!9174 (_1!23154 (v!39029 lt!1338843)))) lt!1338847))))

(assert (=> d!1142881 (ruleValid!2268 thiss!20629 (rule!9174 (_1!23154 (v!39029 lt!1338843))))))

(assert (=> d!1142881 (= (maxPrefixOneRule!2291 thiss!20629 (rule!9174 (_1!23154 (v!39029 lt!1338843))) lt!1338847) lt!1339015)))

(declare-fun b!3854740 () Bool)

(assert (=> b!3854740 (= e!2382705 (= (size!30723 (_1!23154 (get!13514 lt!1339015))) (size!30724 (originalCharacters!6916 (_1!23154 (get!13514 lt!1339015))))))))

(declare-fun b!3854741 () Bool)

(declare-fun res!1560577 () Bool)

(assert (=> b!3854741 (=> (not res!1560577) (not e!2382705))))

(assert (=> b!3854741 (= res!1560577 (< (size!30724 (_2!23154 (get!13514 lt!1339015))) (size!30724 lt!1338847)))))

(declare-fun b!3854742 () Bool)

(declare-fun res!1560575 () Bool)

(assert (=> b!3854742 (=> (not res!1560575) (not e!2382705))))

(assert (=> b!3854742 (= res!1560575 (= (++!10390 (list!15204 (charsOf!4144 (_1!23154 (get!13514 lt!1339015)))) (_2!23154 (get!13514 lt!1339015))) lt!1338847))))

(declare-fun b!3854743 () Bool)

(assert (=> b!3854743 (= e!2382707 (matchR!5368 (regex!6316 (rule!9174 (_1!23154 (v!39029 lt!1338843)))) (_1!23156 (findLongestMatchInner!1174 (regex!6316 (rule!9174 (_1!23154 (v!39029 lt!1338843)))) Nil!40845 (size!30724 Nil!40845) lt!1338847 lt!1338847 (size!30724 lt!1338847)))))))

(assert (= (and d!1142881 c!671333) b!3854736))

(assert (= (and d!1142881 (not c!671333)) b!3854739))

(assert (= (and b!3854739 (not res!1560579)) b!3854743))

(assert (= (and d!1142881 (not res!1560578)) b!3854738))

(assert (= (and b!3854738 res!1560576) b!3854742))

(assert (= (and b!3854742 res!1560575) b!3854741))

(assert (= (and b!3854741 res!1560577) b!3854735))

(assert (= (and b!3854735 res!1560580) b!3854737))

(assert (= (and b!3854737 res!1560581) b!3854740))

(declare-fun m!4410089 () Bool)

(assert (=> b!3854742 m!4410089))

(declare-fun m!4410091 () Bool)

(assert (=> b!3854742 m!4410091))

(assert (=> b!3854742 m!4410091))

(declare-fun m!4410093 () Bool)

(assert (=> b!3854742 m!4410093))

(assert (=> b!3854742 m!4410093))

(declare-fun m!4410095 () Bool)

(assert (=> b!3854742 m!4410095))

(assert (=> b!3854741 m!4410089))

(declare-fun m!4410097 () Bool)

(assert (=> b!3854741 m!4410097))

(assert (=> b!3854741 m!4409527))

(declare-fun m!4410099 () Bool)

(assert (=> d!1142881 m!4410099))

(declare-fun m!4410101 () Bool)

(assert (=> d!1142881 m!4410101))

(declare-fun m!4410103 () Bool)

(assert (=> d!1142881 m!4410103))

(assert (=> d!1142881 m!4409567))

(assert (=> b!3854738 m!4410089))

(assert (=> b!3854738 m!4410091))

(assert (=> b!3854738 m!4410091))

(assert (=> b!3854738 m!4410093))

(assert (=> b!3854738 m!4410093))

(declare-fun m!4410105 () Bool)

(assert (=> b!3854738 m!4410105))

(declare-fun m!4410107 () Bool)

(assert (=> b!3854739 m!4410107))

(declare-fun m!4410109 () Bool)

(assert (=> b!3854739 m!4410109))

(declare-fun m!4410111 () Bool)

(assert (=> b!3854739 m!4410111))

(declare-fun m!4410113 () Bool)

(assert (=> b!3854739 m!4410113))

(assert (=> b!3854739 m!4410111))

(assert (=> b!3854739 m!4409527))

(assert (=> b!3854739 m!4410109))

(assert (=> b!3854739 m!4409527))

(declare-fun m!4410115 () Bool)

(assert (=> b!3854739 m!4410115))

(assert (=> b!3854739 m!4410111))

(declare-fun m!4410117 () Bool)

(assert (=> b!3854739 m!4410117))

(declare-fun m!4410119 () Bool)

(assert (=> b!3854739 m!4410119))

(assert (=> b!3854739 m!4410111))

(declare-fun m!4410121 () Bool)

(assert (=> b!3854739 m!4410121))

(assert (=> b!3854743 m!4410109))

(assert (=> b!3854743 m!4409527))

(assert (=> b!3854743 m!4410109))

(assert (=> b!3854743 m!4409527))

(assert (=> b!3854743 m!4410115))

(declare-fun m!4410123 () Bool)

(assert (=> b!3854743 m!4410123))

(assert (=> b!3854735 m!4410089))

(assert (=> b!3854740 m!4410089))

(declare-fun m!4410125 () Bool)

(assert (=> b!3854740 m!4410125))

(assert (=> b!3854737 m!4410089))

(declare-fun m!4410127 () Bool)

(assert (=> b!3854737 m!4410127))

(assert (=> b!3854737 m!4410127))

(declare-fun m!4410129 () Bool)

(assert (=> b!3854737 m!4410129))

(assert (=> b!3854259 d!1142881))

(declare-fun d!1142883 () Bool)

(assert (=> d!1142883 (= (maxPrefixOneRule!2291 thiss!20629 (rule!9174 (_1!23154 (v!39029 lt!1338843))) lt!1338847) (Some!8733 (tuple2!40041 (Token!11771 (apply!9559 (transformation!6316 (rule!9174 (_1!23154 (v!39029 lt!1338843)))) (seqFromList!4587 lt!1338849)) (rule!9174 (_1!23154 (v!39029 lt!1338843))) (size!30724 lt!1338849) lt!1338849) (_2!23154 (v!39029 lt!1338843)))))))

(declare-fun lt!1339021 () Unit!58516)

(declare-fun choose!22690 (LexerInterface!5905 List!40971 List!40969 List!40969 List!40969 Rule!12432) Unit!58516)

(assert (=> d!1142883 (= lt!1339021 (choose!22690 thiss!20629 rules!2768 lt!1338849 lt!1338847 (_2!23154 (v!39029 lt!1338843)) (rule!9174 (_1!23154 (v!39029 lt!1338843)))))))

(assert (=> d!1142883 (not (isEmpty!24182 rules!2768))))

(assert (=> d!1142883 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1189 thiss!20629 rules!2768 lt!1338849 lt!1338847 (_2!23154 (v!39029 lt!1338843)) (rule!9174 (_1!23154 (v!39029 lt!1338843)))) lt!1339021)))

(declare-fun bs!583008 () Bool)

(assert (= bs!583008 d!1142883))

(declare-fun m!4410131 () Bool)

(assert (=> bs!583008 m!4410131))

(assert (=> bs!583008 m!4409533))

(assert (=> bs!583008 m!4409529))

(assert (=> bs!583008 m!4409587))

(assert (=> bs!583008 m!4409569))

(assert (=> bs!583008 m!4409571))

(assert (=> bs!583008 m!4409569))

(assert (=> b!3854259 d!1142883))

(declare-fun b!3854744 () Bool)

(declare-fun e!2382709 () tuple2!40038)

(declare-fun lt!1339023 () Option!8734)

(declare-fun lt!1339022 () tuple2!40038)

(assert (=> b!3854744 (= e!2382709 (tuple2!40039 (Cons!40846 (_1!23154 (v!39029 lt!1339023)) (_1!23153 lt!1339022)) (_2!23153 lt!1339022)))))

(assert (=> b!3854744 (= lt!1339022 (lexList!1673 thiss!20629 rules!2768 (_2!23154 (v!39029 lt!1339023))))))

(declare-fun b!3854745 () Bool)

(assert (=> b!3854745 (= e!2382709 (tuple2!40039 Nil!40846 suffix!1176))))

(declare-fun b!3854746 () Bool)

(declare-fun e!2382711 () Bool)

(declare-fun lt!1339024 () tuple2!40038)

(assert (=> b!3854746 (= e!2382711 (not (isEmpty!24180 (_1!23153 lt!1339024))))))

(declare-fun b!3854747 () Bool)

(declare-fun e!2382710 () Bool)

(assert (=> b!3854747 (= e!2382710 e!2382711)))

(declare-fun res!1560582 () Bool)

(assert (=> b!3854747 (= res!1560582 (< (size!30724 (_2!23153 lt!1339024)) (size!30724 suffix!1176)))))

(assert (=> b!3854747 (=> (not res!1560582) (not e!2382711))))

(declare-fun b!3854748 () Bool)

(assert (=> b!3854748 (= e!2382710 (= (_2!23153 lt!1339024) suffix!1176))))

(declare-fun d!1142885 () Bool)

(assert (=> d!1142885 e!2382710))

(declare-fun c!671334 () Bool)

(assert (=> d!1142885 (= c!671334 (> (size!30725 (_1!23153 lt!1339024)) 0))))

(assert (=> d!1142885 (= lt!1339024 e!2382709)))

(declare-fun c!671335 () Bool)

(assert (=> d!1142885 (= c!671335 ((_ is Some!8733) lt!1339023))))

(assert (=> d!1142885 (= lt!1339023 (maxPrefix!3209 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1142885 (= (lexList!1673 thiss!20629 rules!2768 suffix!1176) lt!1339024)))

(assert (= (and d!1142885 c!671335) b!3854744))

(assert (= (and d!1142885 (not c!671335)) b!3854745))

(assert (= (and d!1142885 c!671334) b!3854747))

(assert (= (and d!1142885 (not c!671334)) b!3854748))

(assert (= (and b!3854747 res!1560582) b!3854746))

(declare-fun m!4410133 () Bool)

(assert (=> b!3854744 m!4410133))

(declare-fun m!4410135 () Bool)

(assert (=> b!3854746 m!4410135))

(declare-fun m!4410137 () Bool)

(assert (=> b!3854747 m!4410137))

(assert (=> b!3854747 m!4409547))

(declare-fun m!4410139 () Bool)

(assert (=> d!1142885 m!4410139))

(declare-fun m!4410141 () Bool)

(assert (=> d!1142885 m!4410141))

(assert (=> b!3854237 d!1142885))

(declare-fun d!1142887 () Bool)

(declare-fun res!1560585 () Bool)

(declare-fun e!2382714 () Bool)

(assert (=> d!1142887 (=> (not res!1560585) (not e!2382714))))

(declare-fun rulesValid!2442 (LexerInterface!5905 List!40971) Bool)

(assert (=> d!1142887 (= res!1560585 (rulesValid!2442 thiss!20629 rules!2768))))

(assert (=> d!1142887 (= (rulesInvariant!5248 thiss!20629 rules!2768) e!2382714)))

(declare-fun b!3854751 () Bool)

(declare-datatypes ((List!40973 0))(
  ( (Nil!40849) (Cons!40849 (h!46269 String!46448) (t!312550 List!40973)) )
))
(declare-fun noDuplicateTag!2443 (LexerInterface!5905 List!40971 List!40973) Bool)

(assert (=> b!3854751 (= e!2382714 (noDuplicateTag!2443 thiss!20629 rules!2768 Nil!40849))))

(assert (= (and d!1142887 res!1560585) b!3854751))

(declare-fun m!4410143 () Bool)

(assert (=> d!1142887 m!4410143))

(declare-fun m!4410145 () Bool)

(assert (=> b!3854751 m!4410145))

(assert (=> b!3854239 d!1142887))

(declare-fun d!1142889 () Bool)

(assert (=> d!1142889 (= (isEmpty!24182 rules!2768) ((_ is Nil!40847) rules!2768))))

(assert (=> b!3854260 d!1142889))

(declare-fun d!1142891 () Bool)

(assert (=> d!1142891 (= (isEmpty!24180 prefixTokens!80) ((_ is Nil!40846) prefixTokens!80))))

(assert (=> b!3854240 d!1142891))

(declare-fun b!3854756 () Bool)

(declare-fun e!2382717 () Bool)

(declare-fun tp!1168316 () Bool)

(assert (=> b!3854756 (= e!2382717 (and tp_is_empty!19413 tp!1168316))))

(assert (=> b!3854241 (= tp!1168304 e!2382717)))

(assert (= (and b!3854241 ((_ is Cons!40845) (t!312450 suffixResult!91))) b!3854756))

(declare-fun b!3854757 () Bool)

(declare-fun e!2382718 () Bool)

(declare-fun tp!1168317 () Bool)

(assert (=> b!3854757 (= e!2382718 (and tp_is_empty!19413 tp!1168317))))

(assert (=> b!3854253 (= tp!1168292 e!2382718)))

(assert (= (and b!3854253 ((_ is Cons!40845) (t!312450 prefix!426))) b!3854757))

(declare-fun b!3854758 () Bool)

(declare-fun e!2382719 () Bool)

(declare-fun tp!1168318 () Bool)

(assert (=> b!3854758 (= e!2382719 (and tp_is_empty!19413 tp!1168318))))

(assert (=> b!3854266 (= tp!1168302 e!2382719)))

(assert (= (and b!3854266 ((_ is Cons!40845) (t!312450 suffix!1176))) b!3854758))

(declare-fun b!3854759 () Bool)

(declare-fun e!2382720 () Bool)

(declare-fun tp!1168319 () Bool)

(assert (=> b!3854759 (= e!2382720 (and tp_is_empty!19413 tp!1168319))))

(assert (=> b!3854255 (= tp!1168296 e!2382720)))

(assert (= (and b!3854255 ((_ is Cons!40845) (originalCharacters!6916 (h!46266 suffixTokens!72)))) b!3854759))

(declare-fun e!2382723 () Bool)

(assert (=> b!3854244 (= tp!1168288 e!2382723)))

(declare-fun b!3854770 () Bool)

(assert (=> b!3854770 (= e!2382723 tp_is_empty!19413)))

(declare-fun b!3854771 () Bool)

(declare-fun tp!1168330 () Bool)

(declare-fun tp!1168334 () Bool)

(assert (=> b!3854771 (= e!2382723 (and tp!1168330 tp!1168334))))

(declare-fun b!3854772 () Bool)

(declare-fun tp!1168333 () Bool)

(assert (=> b!3854772 (= e!2382723 tp!1168333)))

(declare-fun b!3854773 () Bool)

(declare-fun tp!1168332 () Bool)

(declare-fun tp!1168331 () Bool)

(assert (=> b!3854773 (= e!2382723 (and tp!1168332 tp!1168331))))

(assert (= (and b!3854244 ((_ is ElementMatch!11221) (regex!6316 (rule!9174 (h!46266 prefixTokens!80))))) b!3854770))

(assert (= (and b!3854244 ((_ is Concat!17768) (regex!6316 (rule!9174 (h!46266 prefixTokens!80))))) b!3854771))

(assert (= (and b!3854244 ((_ is Star!11221) (regex!6316 (rule!9174 (h!46266 prefixTokens!80))))) b!3854772))

(assert (= (and b!3854244 ((_ is Union!11221) (regex!6316 (rule!9174 (h!46266 prefixTokens!80))))) b!3854773))

(declare-fun b!3854787 () Bool)

(declare-fun b_free!103417 () Bool)

(declare-fun b_next!104121 () Bool)

(assert (=> b!3854787 (= b_free!103417 (not b_next!104121))))

(declare-fun tb!222827 () Bool)

(declare-fun t!312496 () Bool)

(assert (=> (and b!3854787 (= (toValue!8740 (transformation!6316 (rule!9174 (h!46266 (t!312451 suffixTokens!72))))) (toValue!8740 (transformation!6316 (rule!9174 (_1!23154 (v!39029 lt!1338843)))))) t!312496) tb!222827))

(declare-fun result!271430 () Bool)

(assert (= result!271430 result!271404))

(assert (=> d!1142825 t!312496))

(declare-fun b_and!288177 () Bool)

(declare-fun tp!1168347 () Bool)

(assert (=> b!3854787 (= tp!1168347 (and (=> t!312496 result!271430) b_and!288177))))

(declare-fun b_free!103419 () Bool)

(declare-fun b_next!104123 () Bool)

(assert (=> b!3854787 (= b_free!103419 (not b_next!104123))))

(declare-fun t!312498 () Bool)

(declare-fun tb!222829 () Bool)

(assert (=> (and b!3854787 (= (toChars!8599 (transformation!6316 (rule!9174 (h!46266 (t!312451 suffixTokens!72))))) (toChars!8599 (transformation!6316 (rule!9174 (_1!23154 (v!39029 lt!1338843)))))) t!312498) tb!222829))

(declare-fun result!271432 () Bool)

(assert (= result!271432 result!271396))

(assert (=> d!1142809 t!312498))

(declare-fun t!312500 () Bool)

(declare-fun tb!222831 () Bool)

(assert (=> (and b!3854787 (= (toChars!8599 (transformation!6316 (rule!9174 (h!46266 (t!312451 suffixTokens!72))))) (toChars!8599 (transformation!6316 (rule!9174 (h!46266 suffixTokens!72))))) t!312500) tb!222831))

(declare-fun result!271434 () Bool)

(assert (= result!271434 result!271412))

(assert (=> b!3854658 t!312500))

(declare-fun t!312502 () Bool)

(declare-fun tb!222833 () Bool)

(assert (=> (and b!3854787 (= (toChars!8599 (transformation!6316 (rule!9174 (h!46266 (t!312451 suffixTokens!72))))) (toChars!8599 (transformation!6316 (rule!9174 (h!46266 prefixTokens!80))))) t!312502) tb!222833))

(declare-fun result!271436 () Bool)

(assert (= result!271436 result!271418))

(assert (=> b!3854661 t!312502))

(declare-fun b_and!288179 () Bool)

(declare-fun tp!1168346 () Bool)

(assert (=> b!3854787 (= tp!1168346 (and (=> t!312498 result!271432) (=> t!312500 result!271434) (=> t!312502 result!271436) b_and!288179))))

(declare-fun b!3854786 () Bool)

(declare-fun tp!1168345 () Bool)

(declare-fun e!2382740 () Bool)

(declare-fun e!2382736 () Bool)

(assert (=> b!3854786 (= e!2382736 (and tp!1168345 (inv!54997 (tag!7176 (rule!9174 (h!46266 (t!312451 suffixTokens!72))))) (inv!55001 (transformation!6316 (rule!9174 (h!46266 (t!312451 suffixTokens!72))))) e!2382740))))

(assert (=> b!3854787 (= e!2382740 (and tp!1168347 tp!1168346))))

(declare-fun e!2382738 () Bool)

(assert (=> b!3854235 (= tp!1168295 e!2382738)))

(declare-fun e!2382741 () Bool)

(declare-fun tp!1168348 () Bool)

(declare-fun b!3854784 () Bool)

(assert (=> b!3854784 (= e!2382738 (and (inv!55000 (h!46266 (t!312451 suffixTokens!72))) e!2382741 tp!1168348))))

(declare-fun b!3854785 () Bool)

(declare-fun tp!1168349 () Bool)

(assert (=> b!3854785 (= e!2382741 (and (inv!21 (value!200640 (h!46266 (t!312451 suffixTokens!72)))) e!2382736 tp!1168349))))

(assert (= b!3854786 b!3854787))

(assert (= b!3854785 b!3854786))

(assert (= b!3854784 b!3854785))

(assert (= (and b!3854235 ((_ is Cons!40846) (t!312451 suffixTokens!72))) b!3854784))

(declare-fun m!4410147 () Bool)

(assert (=> b!3854786 m!4410147))

(declare-fun m!4410149 () Bool)

(assert (=> b!3854786 m!4410149))

(declare-fun m!4410151 () Bool)

(assert (=> b!3854784 m!4410151))

(declare-fun m!4410153 () Bool)

(assert (=> b!3854785 m!4410153))

(declare-fun b!3854791 () Bool)

(declare-fun b_free!103421 () Bool)

(declare-fun b_next!104125 () Bool)

(assert (=> b!3854791 (= b_free!103421 (not b_next!104125))))

(declare-fun tb!222835 () Bool)

(declare-fun t!312504 () Bool)

(assert (=> (and b!3854791 (= (toValue!8740 (transformation!6316 (rule!9174 (h!46266 (t!312451 prefixTokens!80))))) (toValue!8740 (transformation!6316 (rule!9174 (_1!23154 (v!39029 lt!1338843)))))) t!312504) tb!222835))

(declare-fun result!271438 () Bool)

(assert (= result!271438 result!271404))

(assert (=> d!1142825 t!312504))

(declare-fun tp!1168352 () Bool)

(declare-fun b_and!288181 () Bool)

(assert (=> b!3854791 (= tp!1168352 (and (=> t!312504 result!271438) b_and!288181))))

(declare-fun b_free!103423 () Bool)

(declare-fun b_next!104127 () Bool)

(assert (=> b!3854791 (= b_free!103423 (not b_next!104127))))

(declare-fun t!312506 () Bool)

(declare-fun tb!222837 () Bool)

(assert (=> (and b!3854791 (= (toChars!8599 (transformation!6316 (rule!9174 (h!46266 (t!312451 prefixTokens!80))))) (toChars!8599 (transformation!6316 (rule!9174 (_1!23154 (v!39029 lt!1338843)))))) t!312506) tb!222837))

(declare-fun result!271440 () Bool)

(assert (= result!271440 result!271396))

(assert (=> d!1142809 t!312506))

(declare-fun tb!222839 () Bool)

(declare-fun t!312508 () Bool)

(assert (=> (and b!3854791 (= (toChars!8599 (transformation!6316 (rule!9174 (h!46266 (t!312451 prefixTokens!80))))) (toChars!8599 (transformation!6316 (rule!9174 (h!46266 suffixTokens!72))))) t!312508) tb!222839))

(declare-fun result!271442 () Bool)

(assert (= result!271442 result!271412))

(assert (=> b!3854658 t!312508))

(declare-fun t!312510 () Bool)

(declare-fun tb!222841 () Bool)

(assert (=> (and b!3854791 (= (toChars!8599 (transformation!6316 (rule!9174 (h!46266 (t!312451 prefixTokens!80))))) (toChars!8599 (transformation!6316 (rule!9174 (h!46266 prefixTokens!80))))) t!312510) tb!222841))

(declare-fun result!271444 () Bool)

(assert (= result!271444 result!271418))

(assert (=> b!3854661 t!312510))

(declare-fun tp!1168351 () Bool)

(declare-fun b_and!288183 () Bool)

(assert (=> b!3854791 (= tp!1168351 (and (=> t!312506 result!271440) (=> t!312508 result!271442) (=> t!312510 result!271444) b_and!288183))))

(declare-fun e!2382742 () Bool)

(declare-fun e!2382746 () Bool)

(declare-fun tp!1168350 () Bool)

(declare-fun b!3854790 () Bool)

(assert (=> b!3854790 (= e!2382742 (and tp!1168350 (inv!54997 (tag!7176 (rule!9174 (h!46266 (t!312451 prefixTokens!80))))) (inv!55001 (transformation!6316 (rule!9174 (h!46266 (t!312451 prefixTokens!80))))) e!2382746))))

(assert (=> b!3854791 (= e!2382746 (and tp!1168352 tp!1168351))))

(declare-fun e!2382744 () Bool)

(assert (=> b!3854256 (= tp!1168294 e!2382744)))

(declare-fun tp!1168353 () Bool)

(declare-fun b!3854788 () Bool)

(declare-fun e!2382747 () Bool)

(assert (=> b!3854788 (= e!2382744 (and (inv!55000 (h!46266 (t!312451 prefixTokens!80))) e!2382747 tp!1168353))))

(declare-fun b!3854789 () Bool)

(declare-fun tp!1168354 () Bool)

(assert (=> b!3854789 (= e!2382747 (and (inv!21 (value!200640 (h!46266 (t!312451 prefixTokens!80)))) e!2382742 tp!1168354))))

(assert (= b!3854790 b!3854791))

(assert (= b!3854789 b!3854790))

(assert (= b!3854788 b!3854789))

(assert (= (and b!3854256 ((_ is Cons!40846) (t!312451 prefixTokens!80))) b!3854788))

(declare-fun m!4410155 () Bool)

(assert (=> b!3854790 m!4410155))

(declare-fun m!4410157 () Bool)

(assert (=> b!3854790 m!4410157))

(declare-fun m!4410159 () Bool)

(assert (=> b!3854788 m!4410159))

(declare-fun m!4410161 () Bool)

(assert (=> b!3854789 m!4410161))

(declare-fun b!3854792 () Bool)

(declare-fun e!2382748 () Bool)

(declare-fun tp!1168355 () Bool)

(assert (=> b!3854792 (= e!2382748 (and tp_is_empty!19413 tp!1168355))))

(assert (=> b!3854258 (= tp!1168290 e!2382748)))

(assert (= (and b!3854258 ((_ is Cons!40845) (originalCharacters!6916 (h!46266 prefixTokens!80)))) b!3854792))

(declare-fun e!2382749 () Bool)

(assert (=> b!3854247 (= tp!1168297 e!2382749)))

(declare-fun b!3854793 () Bool)

(assert (=> b!3854793 (= e!2382749 tp_is_empty!19413)))

(declare-fun b!3854794 () Bool)

(declare-fun tp!1168356 () Bool)

(declare-fun tp!1168360 () Bool)

(assert (=> b!3854794 (= e!2382749 (and tp!1168356 tp!1168360))))

(declare-fun b!3854795 () Bool)

(declare-fun tp!1168359 () Bool)

(assert (=> b!3854795 (= e!2382749 tp!1168359)))

(declare-fun b!3854796 () Bool)

(declare-fun tp!1168358 () Bool)

(declare-fun tp!1168357 () Bool)

(assert (=> b!3854796 (= e!2382749 (and tp!1168358 tp!1168357))))

(assert (= (and b!3854247 ((_ is ElementMatch!11221) (regex!6316 (h!46267 rules!2768)))) b!3854793))

(assert (= (and b!3854247 ((_ is Concat!17768) (regex!6316 (h!46267 rules!2768)))) b!3854794))

(assert (= (and b!3854247 ((_ is Star!11221) (regex!6316 (h!46267 rules!2768)))) b!3854795))

(assert (= (and b!3854247 ((_ is Union!11221) (regex!6316 (h!46267 rules!2768)))) b!3854796))

(declare-fun b!3854807 () Bool)

(declare-fun b_free!103425 () Bool)

(declare-fun b_next!104129 () Bool)

(assert (=> b!3854807 (= b_free!103425 (not b_next!104129))))

(declare-fun tb!222843 () Bool)

(declare-fun t!312512 () Bool)

(assert (=> (and b!3854807 (= (toValue!8740 (transformation!6316 (h!46267 (t!312452 rules!2768)))) (toValue!8740 (transformation!6316 (rule!9174 (_1!23154 (v!39029 lt!1338843)))))) t!312512) tb!222843))

(declare-fun result!271448 () Bool)

(assert (= result!271448 result!271404))

(assert (=> d!1142825 t!312512))

(declare-fun b_and!288185 () Bool)

(declare-fun tp!1168372 () Bool)

(assert (=> b!3854807 (= tp!1168372 (and (=> t!312512 result!271448) b_and!288185))))

(declare-fun b_free!103427 () Bool)

(declare-fun b_next!104131 () Bool)

(assert (=> b!3854807 (= b_free!103427 (not b_next!104131))))

(declare-fun t!312514 () Bool)

(declare-fun tb!222845 () Bool)

(assert (=> (and b!3854807 (= (toChars!8599 (transformation!6316 (h!46267 (t!312452 rules!2768)))) (toChars!8599 (transformation!6316 (rule!9174 (_1!23154 (v!39029 lt!1338843)))))) t!312514) tb!222845))

(declare-fun result!271450 () Bool)

(assert (= result!271450 result!271396))

(assert (=> d!1142809 t!312514))

(declare-fun tb!222847 () Bool)

(declare-fun t!312516 () Bool)

(assert (=> (and b!3854807 (= (toChars!8599 (transformation!6316 (h!46267 (t!312452 rules!2768)))) (toChars!8599 (transformation!6316 (rule!9174 (h!46266 suffixTokens!72))))) t!312516) tb!222847))

(declare-fun result!271452 () Bool)

(assert (= result!271452 result!271412))

(assert (=> b!3854658 t!312516))

(declare-fun tb!222849 () Bool)

(declare-fun t!312518 () Bool)

(assert (=> (and b!3854807 (= (toChars!8599 (transformation!6316 (h!46267 (t!312452 rules!2768)))) (toChars!8599 (transformation!6316 (rule!9174 (h!46266 prefixTokens!80))))) t!312518) tb!222849))

(declare-fun result!271454 () Bool)

(assert (= result!271454 result!271418))

(assert (=> b!3854661 t!312518))

(declare-fun tp!1168370 () Bool)

(declare-fun b_and!288187 () Bool)

(assert (=> b!3854807 (= tp!1168370 (and (=> t!312514 result!271450) (=> t!312516 result!271452) (=> t!312518 result!271454) b_and!288187))))

(declare-fun e!2382760 () Bool)

(assert (=> b!3854807 (= e!2382760 (and tp!1168372 tp!1168370))))

(declare-fun e!2382759 () Bool)

(declare-fun b!3854806 () Bool)

(declare-fun tp!1168371 () Bool)

(assert (=> b!3854806 (= e!2382759 (and tp!1168371 (inv!54997 (tag!7176 (h!46267 (t!312452 rules!2768)))) (inv!55001 (transformation!6316 (h!46267 (t!312452 rules!2768)))) e!2382760))))

(declare-fun b!3854805 () Bool)

(declare-fun e!2382761 () Bool)

(declare-fun tp!1168369 () Bool)

(assert (=> b!3854805 (= e!2382761 (and e!2382759 tp!1168369))))

(assert (=> b!3854238 (= tp!1168299 e!2382761)))

(assert (= b!3854806 b!3854807))

(assert (= b!3854805 b!3854806))

(assert (= (and b!3854238 ((_ is Cons!40847) (t!312452 rules!2768))) b!3854805))

(declare-fun m!4410163 () Bool)

(assert (=> b!3854806 m!4410163))

(declare-fun m!4410165 () Bool)

(assert (=> b!3854806 m!4410165))

(declare-fun e!2382762 () Bool)

(assert (=> b!3854250 (= tp!1168301 e!2382762)))

(declare-fun b!3854808 () Bool)

(assert (=> b!3854808 (= e!2382762 tp_is_empty!19413)))

(declare-fun b!3854809 () Bool)

(declare-fun tp!1168373 () Bool)

(declare-fun tp!1168377 () Bool)

(assert (=> b!3854809 (= e!2382762 (and tp!1168373 tp!1168377))))

(declare-fun b!3854810 () Bool)

(declare-fun tp!1168376 () Bool)

(assert (=> b!3854810 (= e!2382762 tp!1168376)))

(declare-fun b!3854811 () Bool)

(declare-fun tp!1168375 () Bool)

(declare-fun tp!1168374 () Bool)

(assert (=> b!3854811 (= e!2382762 (and tp!1168375 tp!1168374))))

(assert (= (and b!3854250 ((_ is ElementMatch!11221) (regex!6316 (rule!9174 (h!46266 suffixTokens!72))))) b!3854808))

(assert (= (and b!3854250 ((_ is Concat!17768) (regex!6316 (rule!9174 (h!46266 suffixTokens!72))))) b!3854809))

(assert (= (and b!3854250 ((_ is Star!11221) (regex!6316 (rule!9174 (h!46266 suffixTokens!72))))) b!3854810))

(assert (= (and b!3854250 ((_ is Union!11221) (regex!6316 (rule!9174 (h!46266 suffixTokens!72))))) b!3854811))

(declare-fun b_lambda!112681 () Bool)

(assert (= b_lambda!112677 (or (and b!3854807 b_free!103427 (= (toChars!8599 (transformation!6316 (h!46267 (t!312452 rules!2768)))) (toChars!8599 (transformation!6316 (rule!9174 (h!46266 suffixTokens!72)))))) (and b!3854252 b_free!103407 (= (toChars!8599 (transformation!6316 (h!46267 rules!2768))) (toChars!8599 (transformation!6316 (rule!9174 (h!46266 suffixTokens!72)))))) (and b!3854261 b_free!103415 (= (toChars!8599 (transformation!6316 (rule!9174 (h!46266 prefixTokens!80)))) (toChars!8599 (transformation!6316 (rule!9174 (h!46266 suffixTokens!72)))))) (and b!3854262 b_free!103411) (and b!3854791 b_free!103423 (= (toChars!8599 (transformation!6316 (rule!9174 (h!46266 (t!312451 prefixTokens!80))))) (toChars!8599 (transformation!6316 (rule!9174 (h!46266 suffixTokens!72)))))) (and b!3854787 b_free!103419 (= (toChars!8599 (transformation!6316 (rule!9174 (h!46266 (t!312451 suffixTokens!72))))) (toChars!8599 (transformation!6316 (rule!9174 (h!46266 suffixTokens!72)))))) b_lambda!112681)))

(declare-fun b_lambda!112683 () Bool)

(assert (= b_lambda!112679 (or (and b!3854261 b_free!103415) (and b!3854787 b_free!103419 (= (toChars!8599 (transformation!6316 (rule!9174 (h!46266 (t!312451 suffixTokens!72))))) (toChars!8599 (transformation!6316 (rule!9174 (h!46266 prefixTokens!80)))))) (and b!3854807 b_free!103427 (= (toChars!8599 (transformation!6316 (h!46267 (t!312452 rules!2768)))) (toChars!8599 (transformation!6316 (rule!9174 (h!46266 prefixTokens!80)))))) (and b!3854252 b_free!103407 (= (toChars!8599 (transformation!6316 (h!46267 rules!2768))) (toChars!8599 (transformation!6316 (rule!9174 (h!46266 prefixTokens!80)))))) (and b!3854791 b_free!103423 (= (toChars!8599 (transformation!6316 (rule!9174 (h!46266 (t!312451 prefixTokens!80))))) (toChars!8599 (transformation!6316 (rule!9174 (h!46266 prefixTokens!80)))))) (and b!3854262 b_free!103411 (= (toChars!8599 (transformation!6316 (rule!9174 (h!46266 suffixTokens!72)))) (toChars!8599 (transformation!6316 (rule!9174 (h!46266 prefixTokens!80)))))) b_lambda!112683)))

(check-sat (not b!3854638) (not b!3854759) (not b!3854602) (not b!3854659) (not b!3854809) (not b_lambda!112681) (not tb!222815) (not b!3854664) (not b!3854293) (not b!3854773) (not d!1142869) b_and!288185 (not b!3854624) (not b!3854707) (not b!3854737) (not b!3854784) (not b_lambda!112683) b_and!288177 (not b!3854286) (not b!3854566) (not b_next!104117) (not d!1142833) (not b!3854632) (not b!3854739) (not b!3854756) (not b!3854785) (not tb!222821) (not b_next!104115) (not d!1142817) (not b_next!104109) (not b!3854652) (not b!3854674) (not b!3854672) b_and!288171 (not d!1142843) (not d!1142813) (not b!3854758) (not b!3854738) (not b!3854706) b_and!288163 (not b!3854621) (not b!3854661) (not d!1142881) (not b!3854788) (not b!3854634) (not b!3854743) (not b!3854588) (not b!3854636) (not b!3854747) (not d!1142831) (not d!1142815) (not b!3854603) (not b_lambda!112675) (not b!3854771) (not b_next!104113) (not d!1142809) b_and!288179 (not b!3854792) (not d!1142851) (not b!3854662) (not b!3854607) (not b_next!104111) (not b!3854569) (not b!3854789) (not b!3854658) (not b!3854746) b_and!288187 (not b!3854660) (not b!3854796) (not b_next!104129) (not b!3854627) (not d!1142719) (not d!1142859) (not b!3854287) (not b_next!104125) (not b!3854790) (not d!1142883) (not d!1142853) (not tb!222809) (not d!1142827) (not d!1142717) (not tb!222803) b_and!288183 (not b!3854536) (not b!3854544) (not b!3854742) (not b!3854535) (not b!3854806) (not b!3854565) (not b!3854735) (not b!3854704) (not b!3854795) (not d!1142811) (not b_next!104131) (not b!3854580) (not d!1142879) (not d!1142823) (not b!3854667) tp_is_empty!19413 (not b!3854744) b_and!288173 (not b!3854810) (not b!3854579) (not d!1142807) (not b!3854741) b_and!288181 (not d!1142867) (not b!3854555) (not b!3854649) (not b!3854289) (not b!3854620) (not b!3854549) (not b!3854757) (not b!3854666) (not bm!282362) (not b!3854623) (not b!3854670) (not b!3854618) (not b!3854712) (not b!3854290) (not b_next!104123) (not d!1142829) (not b!3854292) (not b_lambda!112673) (not b!3854288) (not b!3854772) b_and!288161 (not bm!282371) (not b!3854651) (not d!1142855) (not b!3854631) (not b!3854663) (not d!1142885) (not b!3854751) (not b!3854709) (not b!3854715) (not b!3854567) (not d!1142837) (not b!3854285) (not b!3854805) (not d!1142849) (not b!3854617) (not b_next!104127) (not b!3854600) (not b!3854628) (not b!3854786) b_and!288175 (not b!3854811) (not b!3854794) (not b_next!104121) b_and!288159 (not d!1142887) (not b_next!104119) (not b!3854740))
(check-sat b_and!288185 b_and!288177 (not b_next!104117) (not b_next!104115) b_and!288163 (not b_next!104113) b_and!288179 (not b_next!104111) (not b_next!104125) b_and!288183 (not b_next!104131) (not b_next!104123) b_and!288161 (not b_next!104127) (not b_next!104119) (not b_next!104109) b_and!288171 (not b_next!104129) b_and!288187 b_and!288173 b_and!288181 b_and!288175 (not b_next!104121) b_and!288159)
