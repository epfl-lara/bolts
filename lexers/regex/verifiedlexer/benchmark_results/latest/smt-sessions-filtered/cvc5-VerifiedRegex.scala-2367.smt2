; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!118284 () Bool)

(assert start!118284)

(declare-fun b!1330145 () Bool)

(declare-fun b_free!32191 () Bool)

(declare-fun b_next!32895 () Bool)

(assert (=> b!1330145 (= b_free!32191 (not b_next!32895))))

(declare-fun tp!385115 () Bool)

(declare-fun b_and!88859 () Bool)

(assert (=> b!1330145 (= tp!385115 b_and!88859)))

(declare-fun b_free!32193 () Bool)

(declare-fun b_next!32897 () Bool)

(assert (=> b!1330145 (= b_free!32193 (not b_next!32897))))

(declare-fun tp!385116 () Bool)

(declare-fun b_and!88861 () Bool)

(assert (=> b!1330145 (= tp!385116 b_and!88861)))

(declare-fun b!1330179 () Bool)

(declare-fun b_free!32195 () Bool)

(declare-fun b_next!32899 () Bool)

(assert (=> b!1330179 (= b_free!32195 (not b_next!32899))))

(declare-fun tp!385114 () Bool)

(declare-fun b_and!88863 () Bool)

(assert (=> b!1330179 (= tp!385114 b_and!88863)))

(declare-fun b_free!32197 () Bool)

(declare-fun b_next!32901 () Bool)

(assert (=> b!1330179 (= b_free!32197 (not b_next!32901))))

(declare-fun tp!385124 () Bool)

(declare-fun b_and!88865 () Bool)

(assert (=> b!1330179 (= tp!385124 b_and!88865)))

(declare-fun b!1330162 () Bool)

(declare-fun b_free!32199 () Bool)

(declare-fun b_next!32903 () Bool)

(assert (=> b!1330162 (= b_free!32199 (not b_next!32903))))

(declare-fun tp!385121 () Bool)

(declare-fun b_and!88867 () Bool)

(assert (=> b!1330162 (= tp!385121 b_and!88867)))

(declare-fun b_free!32201 () Bool)

(declare-fun b_next!32905 () Bool)

(assert (=> b!1330162 (= b_free!32201 (not b_next!32905))))

(declare-fun tp!385119 () Bool)

(declare-fun b_and!88869 () Bool)

(assert (=> b!1330162 (= tp!385119 b_and!88869)))

(declare-fun b!1330174 () Bool)

(assert (=> b!1330174 true))

(assert (=> b!1330174 true))

(declare-fun b!1330155 () Bool)

(assert (=> b!1330155 true))

(declare-fun b!1330144 () Bool)

(assert (=> b!1330144 true))

(declare-fun bs!331605 () Bool)

(declare-fun b!1330156 () Bool)

(assert (= bs!331605 (and b!1330156 b!1330144)))

(declare-fun lambda!55312 () Int)

(declare-fun lambda!55311 () Int)

(assert (=> bs!331605 (not (= lambda!55312 lambda!55311))))

(assert (=> b!1330156 true))

(declare-fun b!1330138 () Bool)

(declare-fun e!852173 () Bool)

(declare-datatypes ((C!7602 0))(
  ( (C!7603 (val!4361 Int)) )
))
(declare-datatypes ((List!13591 0))(
  ( (Nil!13525) (Cons!13525 (h!18926 C!7602) (t!118964 List!13591)) )
))
(declare-datatypes ((IArray!8913 0))(
  ( (IArray!8914 (innerList!4514 List!13591)) )
))
(declare-datatypes ((Conc!4454 0))(
  ( (Node!4454 (left!11617 Conc!4454) (right!11947 Conc!4454) (csize!9138 Int) (cheight!4665 Int)) (Leaf!6822 (xs!7169 IArray!8913) (csize!9139 Int)) (Empty!4454) )
))
(declare-datatypes ((BalanceConc!8848 0))(
  ( (BalanceConc!8849 (c!218010 Conc!4454)) )
))
(declare-fun lt!440049 () BalanceConc!8848)

(declare-fun size!11014 (BalanceConc!8848) Int)

(assert (=> b!1330138 (= e!852173 (< 0 (size!11014 lt!440049)))))

(declare-fun b!1330139 () Bool)

(declare-fun res!599247 () Bool)

(declare-fun e!852161 () Bool)

(assert (=> b!1330139 (=> res!599247 e!852161)))

(declare-datatypes ((Regex!3656 0))(
  ( (ElementMatch!3656 (c!218011 C!7602)) (Concat!6088 (regOne!7824 Regex!3656) (regTwo!7824 Regex!3656)) (EmptyExpr!3656) (Star!3656 (reg!3985 Regex!3656)) (EmptyLang!3656) (Union!3656 (regOne!7825 Regex!3656) (regTwo!7825 Regex!3656)) )
))
(declare-fun lt!440053 () Regex!3656)

(declare-fun lt!440058 () List!13591)

(declare-fun matchR!1658 (Regex!3656 List!13591) Bool)

(assert (=> b!1330139 (= res!599247 (not (matchR!1658 lt!440053 lt!440058)))))

(declare-fun b!1330140 () Bool)

(declare-fun res!599250 () Bool)

(declare-fun e!852151 () Bool)

(assert (=> b!1330140 (=> res!599250 e!852151)))

(declare-datatypes ((List!13592 0))(
  ( (Nil!13526) (Cons!13526 (h!18927 (_ BitVec 16)) (t!118965 List!13592)) )
))
(declare-datatypes ((TokenValue!2432 0))(
  ( (FloatLiteralValue!4864 (text!17469 List!13592)) (TokenValueExt!2431 (__x!8693 Int)) (Broken!12160 (value!76355 List!13592)) (Object!2497) (End!2432) (Def!2432) (Underscore!2432) (Match!2432) (Else!2432) (Error!2432) (Case!2432) (If!2432) (Extends!2432) (Abstract!2432) (Class!2432) (Val!2432) (DelimiterValue!4864 (del!2492 List!13592)) (KeywordValue!2438 (value!76356 List!13592)) (CommentValue!4864 (value!76357 List!13592)) (WhitespaceValue!4864 (value!76358 List!13592)) (IndentationValue!2432 (value!76359 List!13592)) (String!16397) (Int32!2432) (Broken!12161 (value!76360 List!13592)) (Boolean!2433) (Unit!19637) (OperatorValue!2435 (op!2492 List!13592)) (IdentifierValue!4864 (value!76361 List!13592)) (IdentifierValue!4865 (value!76362 List!13592)) (WhitespaceValue!4865 (value!76363 List!13592)) (True!4864) (False!4864) (Broken!12162 (value!76364 List!13592)) (Broken!12163 (value!76365 List!13592)) (True!4865) (RightBrace!2432) (RightBracket!2432) (Colon!2432) (Null!2432) (Comma!2432) (LeftBracket!2432) (False!4865) (LeftBrace!2432) (ImaginaryLiteralValue!2432 (text!17470 List!13592)) (StringLiteralValue!7296 (value!76366 List!13592)) (EOFValue!2432 (value!76367 List!13592)) (IdentValue!2432 (value!76368 List!13592)) (DelimiterValue!4865 (value!76369 List!13592)) (DedentValue!2432 (value!76370 List!13592)) (NewLineValue!2432 (value!76371 List!13592)) (IntegerValue!7296 (value!76372 (_ BitVec 32)) (text!17471 List!13592)) (IntegerValue!7297 (value!76373 Int) (text!17472 List!13592)) (Times!2432) (Or!2432) (Equal!2432) (Minus!2432) (Broken!12164 (value!76374 List!13592)) (And!2432) (Div!2432) (LessEqual!2432) (Mod!2432) (Concat!6089) (Not!2432) (Plus!2432) (SpaceValue!2432 (value!76375 List!13592)) (IntegerValue!7298 (value!76376 Int) (text!17473 List!13592)) (StringLiteralValue!7297 (text!17474 List!13592)) (FloatLiteralValue!4865 (text!17475 List!13592)) (BytesLiteralValue!2432 (value!76377 List!13592)) (CommentValue!4865 (value!76378 List!13592)) (StringLiteralValue!7298 (value!76379 List!13592)) (ErrorTokenValue!2432 (msg!2493 List!13592)) )
))
(declare-datatypes ((String!16398 0))(
  ( (String!16399 (value!76380 String)) )
))
(declare-datatypes ((TokenValueInjection!4524 0))(
  ( (TokenValueInjection!4525 (toValue!3573 Int) (toChars!3432 Int)) )
))
(declare-datatypes ((Rule!4484 0))(
  ( (Rule!4485 (regex!2342 Regex!3656) (tag!2604 String!16398) (isSeparator!2342 Bool) (transformation!2342 TokenValueInjection!4524)) )
))
(declare-datatypes ((Token!4346 0))(
  ( (Token!4347 (value!76381 TokenValue!2432) (rule!4087 Rule!4484) (size!11015 Int) (originalCharacters!3204 List!13591)) )
))
(declare-datatypes ((List!13593 0))(
  ( (Nil!13527) (Cons!13527 (h!18928 Token!4346) (t!118966 List!13593)) )
))
(declare-datatypes ((IArray!8915 0))(
  ( (IArray!8916 (innerList!4515 List!13593)) )
))
(declare-datatypes ((Conc!4455 0))(
  ( (Node!4455 (left!11618 Conc!4455) (right!11948 Conc!4455) (csize!9140 Int) (cheight!4666 Int)) (Leaf!6823 (xs!7170 IArray!8915) (csize!9141 Int)) (Empty!4455) )
))
(declare-datatypes ((BalanceConc!8850 0))(
  ( (BalanceConc!8851 (c!218012 Conc!4455)) )
))
(declare-datatypes ((tuple2!13172 0))(
  ( (tuple2!13173 (_1!7472 BalanceConc!8850) (_2!7472 BalanceConc!8848)) )
))
(declare-fun lt!440046 () tuple2!13172)

(declare-fun isEmpty!8060 (BalanceConc!8848) Bool)

(assert (=> b!1330140 (= res!599250 (not (isEmpty!8060 (_2!7472 lt!440046))))))

(declare-fun b!1330141 () Bool)

(declare-fun e!852163 () Bool)

(declare-fun e!852166 () Bool)

(declare-fun tp!385117 () Bool)

(assert (=> b!1330141 (= e!852163 (and e!852166 tp!385117))))

(declare-fun res!599264 () Bool)

(declare-fun e!852159 () Bool)

(assert (=> start!118284 (=> (not res!599264) (not e!852159))))

(declare-datatypes ((LexerInterface!2037 0))(
  ( (LexerInterfaceExt!2034 (__x!8694 Int)) (Lexer!2035) )
))
(declare-fun thiss!19762 () LexerInterface!2037)

(assert (=> start!118284 (= res!599264 (is-Lexer!2035 thiss!19762))))

(assert (=> start!118284 e!852159))

(assert (=> start!118284 true))

(assert (=> start!118284 e!852163))

(declare-fun t1!34 () Token!4346)

(declare-fun e!852158 () Bool)

(declare-fun inv!17875 (Token!4346) Bool)

(assert (=> start!118284 (and (inv!17875 t1!34) e!852158)))

(declare-fun t2!34 () Token!4346)

(declare-fun e!852176 () Bool)

(assert (=> start!118284 (and (inv!17875 t2!34) e!852176)))

(declare-fun b!1330142 () Bool)

(declare-fun res!599272 () Bool)

(declare-fun e!852154 () Bool)

(assert (=> b!1330142 (=> (not res!599272) (not e!852154))))

(declare-datatypes ((List!13594 0))(
  ( (Nil!13528) (Cons!13528 (h!18929 Rule!4484) (t!118967 List!13594)) )
))
(declare-fun rules!2550 () List!13594)

(declare-fun separableTokensPredicate!320 (LexerInterface!2037 Token!4346 Token!4346 List!13594) Bool)

(assert (=> b!1330142 (= res!599272 (not (separableTokensPredicate!320 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1330143 () Bool)

(declare-fun res!599258 () Bool)

(assert (=> b!1330143 (=> (not res!599258) (not e!852159))))

(declare-fun rulesProduceIndividualToken!1006 (LexerInterface!2037 List!13594 Token!4346) Bool)

(assert (=> b!1330143 (= res!599258 (rulesProduceIndividualToken!1006 thiss!19762 rules!2550 t1!34))))

(declare-fun e!852155 () Bool)

(declare-fun e!852162 () Bool)

(assert (=> b!1330144 (= e!852155 e!852162)))

(declare-fun res!599263 () Bool)

(assert (=> b!1330144 (=> res!599263 e!852162)))

(declare-fun exists!386 (List!13594 Int) Bool)

(assert (=> b!1330144 (= res!599263 (not (exists!386 rules!2550 lambda!55311)))))

(assert (=> b!1330144 (exists!386 rules!2550 lambda!55311)))

(declare-datatypes ((Unit!19638 0))(
  ( (Unit!19639) )
))
(declare-fun lt!440051 () Unit!19638)

(declare-fun lt!440041 () Regex!3656)

(declare-fun lambda!55309 () Int)

(declare-fun lemmaMapContains!85 (List!13594 Int Regex!3656) Unit!19638)

(assert (=> b!1330144 (= lt!440051 (lemmaMapContains!85 rules!2550 lambda!55309 lt!440041))))

(declare-fun e!852153 () Bool)

(assert (=> b!1330145 (= e!852153 (and tp!385115 tp!385116))))

(declare-fun b!1330146 () Bool)

(assert (=> b!1330146 (= e!852159 e!852154)))

(declare-fun res!599254 () Bool)

(assert (=> b!1330146 (=> (not res!599254) (not e!852154))))

(declare-fun lt!440054 () BalanceConc!8848)

(assert (=> b!1330146 (= res!599254 (> (size!11014 lt!440054) 0))))

(declare-fun charsOf!1314 (Token!4346) BalanceConc!8848)

(assert (=> b!1330146 (= lt!440054 (charsOf!1314 t2!34))))

(declare-fun e!852179 () Bool)

(declare-fun b!1330147 () Bool)

(declare-fun tp!385122 () Bool)

(declare-fun inv!17872 (String!16398) Bool)

(declare-fun inv!17876 (TokenValueInjection!4524) Bool)

(assert (=> b!1330147 (= e!852166 (and tp!385122 (inv!17872 (tag!2604 (h!18929 rules!2550))) (inv!17876 (transformation!2342 (h!18929 rules!2550))) e!852179))))

(declare-fun e!852150 () Bool)

(declare-fun tp!385118 () Bool)

(declare-fun b!1330148 () Bool)

(assert (=> b!1330148 (= e!852150 (and tp!385118 (inv!17872 (tag!2604 (rule!4087 t2!34))) (inv!17876 (transformation!2342 (rule!4087 t2!34))) e!852153))))

(declare-fun b!1330149 () Bool)

(declare-fun res!599269 () Bool)

(assert (=> b!1330149 (=> res!599269 e!852161)))

(declare-fun lt!440034 () C!7602)

(declare-fun contains!2442 (List!13591 C!7602) Bool)

(assert (=> b!1330149 (= res!599269 (not (contains!2442 lt!440058 lt!440034)))))

(declare-fun b!1330150 () Bool)

(declare-fun e!852167 () Unit!19638)

(declare-fun Unit!19640 () Unit!19638)

(assert (=> b!1330150 (= e!852167 Unit!19640)))

(declare-fun lt!440038 () Unit!19638)

(declare-fun lt!440043 () List!13591)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!153 (Regex!3656 List!13591 C!7602) Unit!19638)

(declare-fun head!2340 (List!13591) C!7602)

(assert (=> b!1330150 (= lt!440038 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!153 (regex!2342 (rule!4087 t2!34)) lt!440043 (head!2340 lt!440043)))))

(assert (=> b!1330150 false))

(declare-fun b!1330151 () Bool)

(declare-fun res!599276 () Bool)

(assert (=> b!1330151 (=> (not res!599276) (not e!852154))))

(declare-fun sepAndNonSepRulesDisjointChars!715 (List!13594 List!13594) Bool)

(assert (=> b!1330151 (= res!599276 (sepAndNonSepRulesDisjointChars!715 rules!2550 rules!2550))))

(declare-fun b!1330152 () Bool)

(declare-fun res!599279 () Bool)

(assert (=> b!1330152 (=> res!599279 e!852151)))

(declare-fun lt!440037 () BalanceConc!8848)

(declare-fun lt!440040 () List!13593)

(declare-datatypes ((tuple2!13174 0))(
  ( (tuple2!13175 (_1!7473 List!13593) (_2!7473 List!13591)) )
))
(declare-fun lexList!575 (LexerInterface!2037 List!13594 List!13591) tuple2!13174)

(declare-fun list!5128 (BalanceConc!8848) List!13591)

(assert (=> b!1330152 (= res!599279 (not (= (lexList!575 thiss!19762 rules!2550 (list!5128 lt!440037)) (tuple2!13175 lt!440040 Nil!13525))))))

(declare-fun b!1330153 () Bool)

(declare-fun res!599261 () Bool)

(assert (=> b!1330153 (=> res!599261 e!852161)))

(declare-fun lt!440062 () List!13591)

(declare-fun lt!440050 () C!7602)

(assert (=> b!1330153 (= res!599261 (not (contains!2442 lt!440062 lt!440050)))))

(declare-fun b!1330154 () Bool)

(declare-fun e!852156 () Bool)

(declare-fun e!852178 () Bool)

(assert (=> b!1330154 (= e!852156 e!852178)))

(declare-fun res!599245 () Bool)

(assert (=> b!1330154 (=> res!599245 e!852178)))

(declare-fun lt!440045 () Bool)

(assert (=> b!1330154 (= res!599245 lt!440045)))

(declare-fun lt!440042 () Unit!19638)

(assert (=> b!1330154 (= lt!440042 e!852167)))

(declare-fun c!218008 () Bool)

(assert (=> b!1330154 (= c!218008 lt!440045)))

(declare-fun usedCharacters!207 (Regex!3656) List!13591)

(assert (=> b!1330154 (= lt!440045 (not (contains!2442 (usedCharacters!207 (regex!2342 (rule!4087 t2!34))) lt!440050)))))

(declare-fun e!852174 () Bool)

(assert (=> b!1330155 (= e!852161 e!852174)))

(declare-fun res!599268 () Bool)

(assert (=> b!1330155 (=> res!599268 e!852174)))

(declare-fun lambda!55310 () Int)

(declare-datatypes ((List!13595 0))(
  ( (Nil!13529) (Cons!13529 (h!18930 Regex!3656) (t!118968 List!13595)) )
))
(declare-fun exists!387 (List!13595 Int) Bool)

(declare-fun map!2980 (List!13594 Int) List!13595)

(assert (=> b!1330155 (= res!599268 (not (exists!387 (map!2980 rules!2550 lambda!55309) lambda!55310)))))

(declare-fun lt!440059 () List!13595)

(assert (=> b!1330155 (exists!387 lt!440059 lambda!55310)))

(declare-fun lt!440055 () Unit!19638)

(declare-fun matchRGenUnionSpec!93 (Regex!3656 List!13595 List!13591) Unit!19638)

(assert (=> b!1330155 (= lt!440055 (matchRGenUnionSpec!93 lt!440053 lt!440059 lt!440058))))

(assert (=> b!1330155 (= lt!440059 (map!2980 rules!2550 lambda!55309))))

(declare-fun e!852160 () Bool)

(declare-fun e!852175 () Bool)

(assert (=> b!1330156 (= e!852160 e!852175)))

(declare-fun res!599262 () Bool)

(assert (=> b!1330156 (=> res!599262 e!852175)))

(declare-fun lt!440057 () List!13591)

(assert (=> b!1330156 (= res!599262 (not (matchR!1658 (regex!2342 (rule!4087 t1!34)) lt!440057)))))

(declare-fun lt!440035 () Unit!19638)

(declare-fun forallContained!593 (List!13594 Int Rule!4484) Unit!19638)

(assert (=> b!1330156 (= lt!440035 (forallContained!593 rules!2550 lambda!55312 (rule!4087 t2!34)))))

(declare-fun lt!440044 () Unit!19638)

(assert (=> b!1330156 (= lt!440044 (forallContained!593 rules!2550 lambda!55312 (rule!4087 t1!34)))))

(declare-fun lt!440033 () Rule!4484)

(declare-fun lt!440060 () Unit!19638)

(assert (=> b!1330156 (= lt!440060 (forallContained!593 rules!2550 lambda!55312 lt!440033))))

(declare-fun b!1330157 () Bool)

(declare-fun res!599248 () Bool)

(assert (=> b!1330157 (=> (not res!599248) (not e!852159))))

(declare-fun rulesInvariant!1907 (LexerInterface!2037 List!13594) Bool)

(assert (=> b!1330157 (= res!599248 (rulesInvariant!1907 thiss!19762 rules!2550))))

(declare-fun b!1330158 () Bool)

(assert (=> b!1330158 (= e!852174 e!852155)))

(declare-fun res!599274 () Bool)

(assert (=> b!1330158 (=> res!599274 e!852155)))

(declare-fun contains!2443 (List!13595 Regex!3656) Bool)

(assert (=> b!1330158 (= res!599274 (not (contains!2443 (map!2980 rules!2550 lambda!55309) lt!440041)))))

(declare-fun getWitness!278 (List!13595 Int) Regex!3656)

(assert (=> b!1330158 (= lt!440041 (getWitness!278 (map!2980 rules!2550 lambda!55309) lambda!55310))))

(declare-fun b!1330159 () Bool)

(declare-fun res!599266 () Bool)

(assert (=> b!1330159 (=> res!599266 e!852175)))

(assert (=> b!1330159 (= res!599266 (not (matchR!1658 (regex!2342 (rule!4087 t2!34)) lt!440043)))))

(declare-fun b!1330160 () Bool)

(declare-fun res!599256 () Bool)

(assert (=> b!1330160 (=> (not res!599256) (not e!852159))))

(assert (=> b!1330160 (= res!599256 (rulesProduceIndividualToken!1006 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1330161 () Bool)

(declare-fun res!599252 () Bool)

(declare-fun e!852165 () Bool)

(assert (=> b!1330161 (=> res!599252 e!852165)))

(declare-fun contains!2444 (List!13594 Rule!4484) Bool)

(assert (=> b!1330161 (= res!599252 (not (contains!2444 rules!2550 (rule!4087 t1!34))))))

(assert (=> b!1330162 (= e!852179 (and tp!385121 tp!385119))))

(declare-fun b!1330163 () Bool)

(declare-fun e!852164 () Unit!19638)

(declare-fun Unit!19641 () Unit!19638)

(assert (=> b!1330163 (= e!852164 Unit!19641)))

(declare-fun b!1330164 () Bool)

(declare-fun res!599257 () Bool)

(assert (=> b!1330164 (=> res!599257 e!852160)))

(assert (=> b!1330164 (= res!599257 (not (contains!2444 rules!2550 lt!440033)))))

(declare-fun b!1330165 () Bool)

(declare-fun e!852169 () Bool)

(assert (=> b!1330165 (= e!852154 e!852169)))

(declare-fun res!599249 () Bool)

(assert (=> b!1330165 (=> (not res!599249) (not e!852169))))

(declare-fun prefixMatch!169 (Regex!3656 List!13591) Bool)

(assert (=> b!1330165 (= res!599249 (prefixMatch!169 lt!440053 lt!440062))))

(declare-fun rulesRegex!227 (LexerInterface!2037 List!13594) Regex!3656)

(assert (=> b!1330165 (= lt!440053 (rulesRegex!227 thiss!19762 rules!2550))))

(declare-fun ++!3455 (List!13591 List!13591) List!13591)

(assert (=> b!1330165 (= lt!440062 (++!3455 lt!440057 (Cons!13525 lt!440050 Nil!13525)))))

(declare-fun apply!3136 (BalanceConc!8848 Int) C!7602)

(assert (=> b!1330165 (= lt!440050 (apply!3136 lt!440054 0))))

(assert (=> b!1330165 (= lt!440057 (list!5128 lt!440049))))

(assert (=> b!1330165 (= lt!440049 (charsOf!1314 t1!34))))

(declare-fun b!1330166 () Bool)

(declare-fun res!599265 () Bool)

(assert (=> b!1330166 (=> (not res!599265) (not e!852159))))

(declare-fun isEmpty!8061 (List!13594) Bool)

(assert (=> b!1330166 (= res!599265 (not (isEmpty!8061 rules!2550)))))

(declare-fun b!1330167 () Bool)

(assert (=> b!1330167 (= e!852151 e!852160)))

(declare-fun res!599277 () Bool)

(assert (=> b!1330167 (=> res!599277 e!852160)))

(declare-datatypes ((tuple2!13176 0))(
  ( (tuple2!13177 (_1!7474 Token!4346) (_2!7474 List!13591)) )
))
(declare-datatypes ((Option!2613 0))(
  ( (None!2612) (Some!2612 (v!21233 tuple2!13176)) )
))
(declare-fun maxPrefix!1047 (LexerInterface!2037 List!13594 List!13591) Option!2613)

(assert (=> b!1330167 (= res!599277 (not (= (maxPrefix!1047 thiss!19762 rules!2550 lt!440043) (Some!2612 (tuple2!13177 t2!34 Nil!13525)))))))

(assert (=> b!1330167 (= lt!440043 (list!5128 lt!440054))))

(declare-fun b!1330168 () Bool)

(declare-fun res!599267 () Bool)

(assert (=> b!1330168 (=> res!599267 e!852165)))

(declare-fun lt!440052 () List!13593)

(declare-fun lt!440056 () BalanceConc!8848)

(assert (=> b!1330168 (= res!599267 (not (= (lexList!575 thiss!19762 rules!2550 (list!5128 lt!440056)) (tuple2!13175 lt!440052 Nil!13525))))))

(declare-fun b!1330169 () Bool)

(declare-fun res!599273 () Bool)

(assert (=> b!1330169 (=> res!599273 e!852160)))

(assert (=> b!1330169 (= res!599273 (not (contains!2444 rules!2550 (rule!4087 t2!34))))))

(declare-fun b!1330170 () Bool)

(declare-fun tp!385123 () Bool)

(declare-fun inv!21 (TokenValue!2432) Bool)

(assert (=> b!1330170 (= e!852176 (and (inv!21 (value!76381 t2!34)) e!852150 tp!385123))))

(declare-fun b!1330171 () Bool)

(declare-fun Unit!19642 () Unit!19638)

(assert (=> b!1330171 (= e!852164 Unit!19642)))

(declare-fun lt!440036 () Unit!19638)

(assert (=> b!1330171 (= lt!440036 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!153 (regex!2342 (rule!4087 t1!34)) lt!440057 (head!2340 lt!440057)))))

(assert (=> b!1330171 false))

(declare-fun b!1330172 () Bool)

(assert (=> b!1330172 (= e!852175 e!852156)))

(declare-fun res!599278 () Bool)

(assert (=> b!1330172 (=> res!599278 e!852156)))

(declare-fun lt!440048 () Bool)

(assert (=> b!1330172 (= res!599278 lt!440048)))

(declare-fun lt!440061 () Unit!19638)

(assert (=> b!1330172 (= lt!440061 e!852164)))

(declare-fun c!218009 () Bool)

(assert (=> b!1330172 (= c!218009 lt!440048)))

(assert (=> b!1330172 (= lt!440048 (not (contains!2442 (usedCharacters!207 (regex!2342 (rule!4087 t1!34))) lt!440034)))))

(declare-fun b!1330173 () Bool)

(declare-fun e!852172 () Bool)

(assert (=> b!1330173 (= e!852172 e!852161)))

(declare-fun res!599260 () Bool)

(assert (=> b!1330173 (=> res!599260 e!852161)))

(assert (=> b!1330173 (= res!599260 (not (contains!2442 lt!440062 lt!440034)))))

(assert (=> b!1330173 (= lt!440034 (apply!3136 lt!440049 0))))

(declare-fun e!852149 () Bool)

(assert (=> b!1330174 (= e!852169 (not e!852149))))

(declare-fun res!599255 () Bool)

(assert (=> b!1330174 (=> res!599255 e!852149)))

(declare-fun lambda!55308 () Int)

(declare-fun Exists!814 (Int) Bool)

(assert (=> b!1330174 (= res!599255 (not (Exists!814 lambda!55308)))))

(assert (=> b!1330174 (Exists!814 lambda!55308)))

(declare-fun lt!440047 () Unit!19638)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!132 (Regex!3656 List!13591) Unit!19638)

(assert (=> b!1330174 (= lt!440047 (lemmaPrefixMatchThenExistsStringThatMatches!132 lt!440053 lt!440062))))

(declare-fun b!1330175 () Bool)

(declare-fun res!599259 () Bool)

(assert (=> b!1330175 (=> res!599259 e!852165)))

(assert (=> b!1330175 (= res!599259 (not (= (maxPrefix!1047 thiss!19762 rules!2550 lt!440057) (Some!2612 (tuple2!13177 t1!34 Nil!13525)))))))

(declare-fun b!1330176 () Bool)

(declare-fun Unit!19643 () Unit!19638)

(assert (=> b!1330176 (= e!852167 Unit!19643)))

(declare-fun b!1330177 () Bool)

(assert (=> b!1330177 (= e!852162 e!852165)))

(declare-fun res!599270 () Bool)

(assert (=> b!1330177 (=> res!599270 e!852165)))

(declare-fun lt!440039 () tuple2!13172)

(declare-fun list!5129 (BalanceConc!8850) List!13593)

(assert (=> b!1330177 (= res!599270 (not (= (list!5129 (_1!7472 lt!440039)) lt!440052)))))

(assert (=> b!1330177 (= lt!440052 (Cons!13527 t1!34 Nil!13527))))

(declare-fun lex!872 (LexerInterface!2037 List!13594 BalanceConc!8848) tuple2!13172)

(assert (=> b!1330177 (= lt!440039 (lex!872 thiss!19762 rules!2550 lt!440056))))

(declare-fun print!811 (LexerInterface!2037 BalanceConc!8850) BalanceConc!8848)

(declare-fun singletonSeq!937 (Token!4346) BalanceConc!8850)

(assert (=> b!1330177 (= lt!440056 (print!811 thiss!19762 (singletonSeq!937 t1!34)))))

(declare-fun getWitness!279 (List!13594 Int) Rule!4484)

(assert (=> b!1330177 (= lt!440033 (getWitness!279 rules!2550 lambda!55311))))

(declare-fun b!1330178 () Bool)

(assert (=> b!1330178 (= e!852178 e!852173)))

(declare-fun res!599271 () Bool)

(assert (=> b!1330178 (=> res!599271 e!852173)))

(assert (=> b!1330178 (= res!599271 (or (isSeparator!2342 lt!440033) (not (isSeparator!2342 (rule!4087 t1!34))) (isSeparator!2342 (rule!4087 t2!34))))))

(assert (=> b!1330178 (= (regex!2342 lt!440033) lt!440041)))

(declare-fun e!852180 () Bool)

(assert (=> b!1330179 (= e!852180 (and tp!385114 tp!385124))))

(declare-fun tp!385120 () Bool)

(declare-fun e!852157 () Bool)

(declare-fun b!1330180 () Bool)

(assert (=> b!1330180 (= e!852158 (and (inv!21 (value!76381 t1!34)) e!852157 tp!385120))))

(declare-fun tp!385113 () Bool)

(declare-fun b!1330181 () Bool)

(assert (=> b!1330181 (= e!852157 (and tp!385113 (inv!17872 (tag!2604 (rule!4087 t1!34))) (inv!17876 (transformation!2342 (rule!4087 t1!34))) e!852180))))

(declare-fun b!1330182 () Bool)

(assert (=> b!1330182 (= e!852149 e!852172)))

(declare-fun res!599244 () Bool)

(assert (=> b!1330182 (=> res!599244 e!852172)))

(declare-fun getSuffix!512 (List!13591 List!13591) List!13591)

(assert (=> b!1330182 (= res!599244 (not (= lt!440058 (++!3455 lt!440062 (getSuffix!512 lt!440058 lt!440062)))))))

(declare-fun pickWitness!119 (Int) List!13591)

(assert (=> b!1330182 (= lt!440058 (pickWitness!119 lambda!55308))))

(declare-fun b!1330183 () Bool)

(declare-fun res!599253 () Bool)

(assert (=> b!1330183 (=> (not res!599253) (not e!852159))))

(assert (=> b!1330183 (= res!599253 (not (= (isSeparator!2342 (rule!4087 t1!34)) (isSeparator!2342 (rule!4087 t2!34)))))))

(declare-fun b!1330184 () Bool)

(declare-fun res!599251 () Bool)

(assert (=> b!1330184 (=> res!599251 e!852161)))

(assert (=> b!1330184 (= res!599251 (not (contains!2442 lt!440058 lt!440050)))))

(declare-fun b!1330185 () Bool)

(assert (=> b!1330185 (= e!852165 e!852151)))

(declare-fun res!599246 () Bool)

(assert (=> b!1330185 (=> res!599246 e!852151)))

(assert (=> b!1330185 (= res!599246 (not (= (list!5129 (_1!7472 lt!440046)) lt!440040)))))

(assert (=> b!1330185 (= lt!440040 (Cons!13527 t2!34 Nil!13527))))

(assert (=> b!1330185 (= lt!440046 (lex!872 thiss!19762 rules!2550 lt!440037))))

(assert (=> b!1330185 (= lt!440037 (print!811 thiss!19762 (singletonSeq!937 t2!34)))))

(declare-fun b!1330186 () Bool)

(declare-fun res!599275 () Bool)

(assert (=> b!1330186 (=> res!599275 e!852165)))

(assert (=> b!1330186 (= res!599275 (not (isEmpty!8060 (_2!7472 lt!440039))))))

(assert (= (and start!118284 res!599264) b!1330166))

(assert (= (and b!1330166 res!599265) b!1330157))

(assert (= (and b!1330157 res!599248) b!1330143))

(assert (= (and b!1330143 res!599258) b!1330160))

(assert (= (and b!1330160 res!599256) b!1330183))

(assert (= (and b!1330183 res!599253) b!1330146))

(assert (= (and b!1330146 res!599254) b!1330151))

(assert (= (and b!1330151 res!599276) b!1330142))

(assert (= (and b!1330142 res!599272) b!1330165))

(assert (= (and b!1330165 res!599249) b!1330174))

(assert (= (and b!1330174 (not res!599255)) b!1330182))

(assert (= (and b!1330182 (not res!599244)) b!1330173))

(assert (= (and b!1330173 (not res!599260)) b!1330149))

(assert (= (and b!1330149 (not res!599269)) b!1330153))

(assert (= (and b!1330153 (not res!599261)) b!1330184))

(assert (= (and b!1330184 (not res!599251)) b!1330139))

(assert (= (and b!1330139 (not res!599247)) b!1330155))

(assert (= (and b!1330155 (not res!599268)) b!1330158))

(assert (= (and b!1330158 (not res!599274)) b!1330144))

(assert (= (and b!1330144 (not res!599263)) b!1330177))

(assert (= (and b!1330177 (not res!599270)) b!1330186))

(assert (= (and b!1330186 (not res!599275)) b!1330168))

(assert (= (and b!1330168 (not res!599267)) b!1330175))

(assert (= (and b!1330175 (not res!599259)) b!1330161))

(assert (= (and b!1330161 (not res!599252)) b!1330185))

(assert (= (and b!1330185 (not res!599246)) b!1330140))

(assert (= (and b!1330140 (not res!599250)) b!1330152))

(assert (= (and b!1330152 (not res!599279)) b!1330167))

(assert (= (and b!1330167 (not res!599277)) b!1330169))

(assert (= (and b!1330169 (not res!599273)) b!1330164))

(assert (= (and b!1330164 (not res!599257)) b!1330156))

(assert (= (and b!1330156 (not res!599262)) b!1330159))

(assert (= (and b!1330159 (not res!599266)) b!1330172))

(assert (= (and b!1330172 c!218009) b!1330171))

(assert (= (and b!1330172 (not c!218009)) b!1330163))

(assert (= (and b!1330172 (not res!599278)) b!1330154))

(assert (= (and b!1330154 c!218008) b!1330150))

(assert (= (and b!1330154 (not c!218008)) b!1330176))

(assert (= (and b!1330154 (not res!599245)) b!1330178))

(assert (= (and b!1330178 (not res!599271)) b!1330138))

(assert (= b!1330147 b!1330162))

(assert (= b!1330141 b!1330147))

(assert (= (and start!118284 (is-Cons!13528 rules!2550)) b!1330141))

(assert (= b!1330181 b!1330179))

(assert (= b!1330180 b!1330181))

(assert (= start!118284 b!1330180))

(assert (= b!1330148 b!1330145))

(assert (= b!1330170 b!1330148))

(assert (= start!118284 b!1330170))

(declare-fun m!1487095 () Bool)

(assert (=> b!1330144 m!1487095))

(assert (=> b!1330144 m!1487095))

(declare-fun m!1487097 () Bool)

(assert (=> b!1330144 m!1487097))

(declare-fun m!1487099 () Bool)

(assert (=> b!1330148 m!1487099))

(declare-fun m!1487101 () Bool)

(assert (=> b!1330148 m!1487101))

(declare-fun m!1487103 () Bool)

(assert (=> b!1330158 m!1487103))

(assert (=> b!1330158 m!1487103))

(declare-fun m!1487105 () Bool)

(assert (=> b!1330158 m!1487105))

(assert (=> b!1330158 m!1487103))

(assert (=> b!1330158 m!1487103))

(declare-fun m!1487107 () Bool)

(assert (=> b!1330158 m!1487107))

(declare-fun m!1487109 () Bool)

(assert (=> b!1330186 m!1487109))

(declare-fun m!1487111 () Bool)

(assert (=> b!1330168 m!1487111))

(assert (=> b!1330168 m!1487111))

(declare-fun m!1487113 () Bool)

(assert (=> b!1330168 m!1487113))

(declare-fun m!1487115 () Bool)

(assert (=> b!1330173 m!1487115))

(declare-fun m!1487117 () Bool)

(assert (=> b!1330173 m!1487117))

(declare-fun m!1487119 () Bool)

(assert (=> b!1330154 m!1487119))

(assert (=> b!1330154 m!1487119))

(declare-fun m!1487121 () Bool)

(assert (=> b!1330154 m!1487121))

(declare-fun m!1487123 () Bool)

(assert (=> b!1330140 m!1487123))

(declare-fun m!1487125 () Bool)

(assert (=> b!1330157 m!1487125))

(declare-fun m!1487127 () Bool)

(assert (=> b!1330171 m!1487127))

(assert (=> b!1330171 m!1487127))

(declare-fun m!1487129 () Bool)

(assert (=> b!1330171 m!1487129))

(declare-fun m!1487131 () Bool)

(assert (=> b!1330159 m!1487131))

(declare-fun m!1487133 () Bool)

(assert (=> b!1330149 m!1487133))

(declare-fun m!1487135 () Bool)

(assert (=> b!1330180 m!1487135))

(declare-fun m!1487137 () Bool)

(assert (=> b!1330142 m!1487137))

(declare-fun m!1487139 () Bool)

(assert (=> b!1330175 m!1487139))

(declare-fun m!1487141 () Bool)

(assert (=> b!1330151 m!1487141))

(declare-fun m!1487143 () Bool)

(assert (=> b!1330181 m!1487143))

(declare-fun m!1487145 () Bool)

(assert (=> b!1330181 m!1487145))

(declare-fun m!1487147 () Bool)

(assert (=> b!1330160 m!1487147))

(declare-fun m!1487149 () Bool)

(assert (=> b!1330170 m!1487149))

(declare-fun m!1487151 () Bool)

(assert (=> b!1330156 m!1487151))

(declare-fun m!1487153 () Bool)

(assert (=> b!1330156 m!1487153))

(declare-fun m!1487155 () Bool)

(assert (=> b!1330156 m!1487155))

(declare-fun m!1487157 () Bool)

(assert (=> b!1330156 m!1487157))

(declare-fun m!1487159 () Bool)

(assert (=> start!118284 m!1487159))

(declare-fun m!1487161 () Bool)

(assert (=> start!118284 m!1487161))

(declare-fun m!1487163 () Bool)

(assert (=> b!1330184 m!1487163))

(declare-fun m!1487165 () Bool)

(assert (=> b!1330138 m!1487165))

(declare-fun m!1487167 () Bool)

(assert (=> b!1330185 m!1487167))

(declare-fun m!1487169 () Bool)

(assert (=> b!1330185 m!1487169))

(declare-fun m!1487171 () Bool)

(assert (=> b!1330185 m!1487171))

(assert (=> b!1330185 m!1487171))

(declare-fun m!1487173 () Bool)

(assert (=> b!1330185 m!1487173))

(declare-fun m!1487175 () Bool)

(assert (=> b!1330153 m!1487175))

(declare-fun m!1487177 () Bool)

(assert (=> b!1330167 m!1487177))

(declare-fun m!1487179 () Bool)

(assert (=> b!1330167 m!1487179))

(declare-fun m!1487181 () Bool)

(assert (=> b!1330146 m!1487181))

(declare-fun m!1487183 () Bool)

(assert (=> b!1330146 m!1487183))

(declare-fun m!1487185 () Bool)

(assert (=> b!1330150 m!1487185))

(assert (=> b!1330150 m!1487185))

(declare-fun m!1487187 () Bool)

(assert (=> b!1330150 m!1487187))

(declare-fun m!1487189 () Bool)

(assert (=> b!1330164 m!1487189))

(declare-fun m!1487191 () Bool)

(assert (=> b!1330169 m!1487191))

(declare-fun m!1487193 () Bool)

(assert (=> b!1330161 m!1487193))

(declare-fun m!1487195 () Bool)

(assert (=> b!1330165 m!1487195))

(declare-fun m!1487197 () Bool)

(assert (=> b!1330165 m!1487197))

(declare-fun m!1487199 () Bool)

(assert (=> b!1330165 m!1487199))

(declare-fun m!1487201 () Bool)

(assert (=> b!1330165 m!1487201))

(declare-fun m!1487203 () Bool)

(assert (=> b!1330165 m!1487203))

(declare-fun m!1487205 () Bool)

(assert (=> b!1330165 m!1487205))

(declare-fun m!1487207 () Bool)

(assert (=> b!1330172 m!1487207))

(assert (=> b!1330172 m!1487207))

(declare-fun m!1487209 () Bool)

(assert (=> b!1330172 m!1487209))

(declare-fun m!1487211 () Bool)

(assert (=> b!1330174 m!1487211))

(assert (=> b!1330174 m!1487211))

(declare-fun m!1487213 () Bool)

(assert (=> b!1330174 m!1487213))

(declare-fun m!1487215 () Bool)

(assert (=> b!1330182 m!1487215))

(assert (=> b!1330182 m!1487215))

(declare-fun m!1487217 () Bool)

(assert (=> b!1330182 m!1487217))

(declare-fun m!1487219 () Bool)

(assert (=> b!1330182 m!1487219))

(declare-fun m!1487221 () Bool)

(assert (=> b!1330143 m!1487221))

(declare-fun m!1487223 () Bool)

(assert (=> b!1330147 m!1487223))

(declare-fun m!1487225 () Bool)

(assert (=> b!1330147 m!1487225))

(declare-fun m!1487227 () Bool)

(assert (=> b!1330177 m!1487227))

(declare-fun m!1487229 () Bool)

(assert (=> b!1330177 m!1487229))

(declare-fun m!1487231 () Bool)

(assert (=> b!1330177 m!1487231))

(assert (=> b!1330177 m!1487227))

(declare-fun m!1487233 () Bool)

(assert (=> b!1330177 m!1487233))

(declare-fun m!1487235 () Bool)

(assert (=> b!1330177 m!1487235))

(declare-fun m!1487237 () Bool)

(assert (=> b!1330139 m!1487237))

(declare-fun m!1487239 () Bool)

(assert (=> b!1330152 m!1487239))

(assert (=> b!1330152 m!1487239))

(declare-fun m!1487241 () Bool)

(assert (=> b!1330152 m!1487241))

(declare-fun m!1487243 () Bool)

(assert (=> b!1330166 m!1487243))

(assert (=> b!1330155 m!1487103))

(assert (=> b!1330155 m!1487103))

(declare-fun m!1487245 () Bool)

(assert (=> b!1330155 m!1487245))

(declare-fun m!1487247 () Bool)

(assert (=> b!1330155 m!1487247))

(assert (=> b!1330155 m!1487103))

(declare-fun m!1487249 () Bool)

(assert (=> b!1330155 m!1487249))

(push 1)

(assert (not b!1330182))

(assert (not b!1330159))

(assert b_and!88863)

(assert (not b!1330180))

(assert (not b!1330186))

(assert (not b!1330171))

(assert (not b!1330146))

(assert (not b_next!32895))

(assert (not b!1330154))

(assert (not b!1330167))

(assert (not b_next!32905))

(assert (not b!1330175))

(assert (not b!1330147))

(assert (not b_next!32899))

(assert (not b!1330164))

(assert (not b!1330140))

(assert (not b!1330151))

(assert (not b!1330185))

(assert (not b!1330158))

(assert (not b!1330143))

(assert (not b_next!32897))

(assert (not b!1330177))

(assert (not b!1330172))

(assert (not b!1330156))

(assert (not b!1330141))

(assert (not b!1330150))

(assert (not b!1330148))

(assert (not b!1330165))

(assert (not b!1330184))

(assert b_and!88865)

(assert (not b!1330168))

(assert (not b!1330169))

(assert (not b!1330152))

(assert b_and!88861)

(assert (not b!1330166))

(assert (not b!1330173))

(assert (not b!1330181))

(assert (not b!1330157))

(assert (not b!1330174))

(assert b_and!88859)

(assert (not b!1330142))

(assert (not b!1330138))

(assert b_and!88869)

(assert b_and!88867)

(assert (not b_next!32903))

(assert (not b!1330139))

(assert (not b!1330155))

(assert (not b!1330170))

(assert (not b!1330153))

(assert (not b!1330160))

(assert (not b!1330149))

(assert (not b!1330161))

(assert (not b!1330144))

(assert (not start!118284))

(assert (not b_next!32901))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!32899))

(assert b_and!88863)

(assert (not b_next!32897))

(assert b_and!88865)

(assert b_and!88861)

(assert (not b_next!32895))

(assert b_and!88859)

(assert (not b_next!32905))

(assert (not b_next!32901))

(assert b_and!88869)

(assert b_and!88867)

(assert (not b_next!32903))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!375052 () Bool)

(assert (=> d!375052 (not (matchR!1658 (regex!2342 (rule!4087 t1!34)) lt!440057))))

(declare-fun lt!440155 () Unit!19638)

(declare-fun choose!8154 (Regex!3656 List!13591 C!7602) Unit!19638)

(assert (=> d!375052 (= lt!440155 (choose!8154 (regex!2342 (rule!4087 t1!34)) lt!440057 (head!2340 lt!440057)))))

(declare-fun validRegex!1572 (Regex!3656) Bool)

(assert (=> d!375052 (validRegex!1572 (regex!2342 (rule!4087 t1!34)))))

(assert (=> d!375052 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!153 (regex!2342 (rule!4087 t1!34)) lt!440057 (head!2340 lt!440057)) lt!440155)))

(declare-fun bs!331607 () Bool)

(assert (= bs!331607 d!375052))

(assert (=> bs!331607 m!1487151))

(assert (=> bs!331607 m!1487127))

(declare-fun m!1487407 () Bool)

(assert (=> bs!331607 m!1487407))

(declare-fun m!1487409 () Bool)

(assert (=> bs!331607 m!1487409))

(assert (=> b!1330171 d!375052))

(declare-fun d!375054 () Bool)

(assert (=> d!375054 (= (head!2340 lt!440057) (h!18926 lt!440057))))

(assert (=> b!1330171 d!375054))

(declare-fun d!375056 () Bool)

(assert (=> d!375056 (not (matchR!1658 (regex!2342 (rule!4087 t2!34)) lt!440043))))

(declare-fun lt!440156 () Unit!19638)

(assert (=> d!375056 (= lt!440156 (choose!8154 (regex!2342 (rule!4087 t2!34)) lt!440043 (head!2340 lt!440043)))))

(assert (=> d!375056 (validRegex!1572 (regex!2342 (rule!4087 t2!34)))))

(assert (=> d!375056 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!153 (regex!2342 (rule!4087 t2!34)) lt!440043 (head!2340 lt!440043)) lt!440156)))

(declare-fun bs!331608 () Bool)

(assert (= bs!331608 d!375056))

(assert (=> bs!331608 m!1487131))

(assert (=> bs!331608 m!1487185))

(declare-fun m!1487411 () Bool)

(assert (=> bs!331608 m!1487411))

(declare-fun m!1487413 () Bool)

(assert (=> bs!331608 m!1487413))

(assert (=> b!1330150 d!375056))

(declare-fun d!375058 () Bool)

(assert (=> d!375058 (= (head!2340 lt!440043) (h!18926 lt!440043))))

(assert (=> b!1330150 d!375058))

(declare-fun d!375060 () Bool)

(declare-fun lt!440159 () Bool)

(declare-fun content!1920 (List!13591) (Set C!7602))

(assert (=> d!375060 (= lt!440159 (set.member lt!440034 (content!1920 lt!440058)))))

(declare-fun e!852293 () Bool)

(assert (=> d!375060 (= lt!440159 e!852293)))

(declare-fun res!599413 () Bool)

(assert (=> d!375060 (=> (not res!599413) (not e!852293))))

(assert (=> d!375060 (= res!599413 (is-Cons!13525 lt!440058))))

(assert (=> d!375060 (= (contains!2442 lt!440058 lt!440034) lt!440159)))

(declare-fun b!1330372 () Bool)

(declare-fun e!852294 () Bool)

(assert (=> b!1330372 (= e!852293 e!852294)))

(declare-fun res!599412 () Bool)

(assert (=> b!1330372 (=> res!599412 e!852294)))

(assert (=> b!1330372 (= res!599412 (= (h!18926 lt!440058) lt!440034))))

(declare-fun b!1330373 () Bool)

(assert (=> b!1330373 (= e!852294 (contains!2442 (t!118964 lt!440058) lt!440034))))

(assert (= (and d!375060 res!599413) b!1330372))

(assert (= (and b!1330372 (not res!599412)) b!1330373))

(declare-fun m!1487415 () Bool)

(assert (=> d!375060 m!1487415))

(declare-fun m!1487417 () Bool)

(assert (=> d!375060 m!1487417))

(declare-fun m!1487419 () Bool)

(assert (=> b!1330373 m!1487419))

(assert (=> b!1330149 d!375060))

(declare-fun b!1330384 () Bool)

(declare-fun e!852303 () Bool)

(declare-fun inv!16 (TokenValue!2432) Bool)

(assert (=> b!1330384 (= e!852303 (inv!16 (value!76381 t2!34)))))

(declare-fun d!375062 () Bool)

(declare-fun c!218029 () Bool)

(assert (=> d!375062 (= c!218029 (is-IntegerValue!7296 (value!76381 t2!34)))))

(assert (=> d!375062 (= (inv!21 (value!76381 t2!34)) e!852303)))

(declare-fun b!1330385 () Bool)

(declare-fun res!599417 () Bool)

(declare-fun e!852301 () Bool)

(assert (=> b!1330385 (=> res!599417 e!852301)))

(assert (=> b!1330385 (= res!599417 (not (is-IntegerValue!7298 (value!76381 t2!34))))))

(declare-fun e!852302 () Bool)

(assert (=> b!1330385 (= e!852302 e!852301)))

(declare-fun b!1330386 () Bool)

(declare-fun inv!15 (TokenValue!2432) Bool)

(assert (=> b!1330386 (= e!852301 (inv!15 (value!76381 t2!34)))))

(declare-fun b!1330387 () Bool)

(assert (=> b!1330387 (= e!852303 e!852302)))

(declare-fun c!218028 () Bool)

(assert (=> b!1330387 (= c!218028 (is-IntegerValue!7297 (value!76381 t2!34)))))

(declare-fun b!1330388 () Bool)

(declare-fun inv!17 (TokenValue!2432) Bool)

(assert (=> b!1330388 (= e!852302 (inv!17 (value!76381 t2!34)))))

(assert (= (and d!375062 c!218029) b!1330384))

(assert (= (and d!375062 (not c!218029)) b!1330387))

(assert (= (and b!1330387 c!218028) b!1330388))

(assert (= (and b!1330387 (not c!218028)) b!1330385))

(assert (= (and b!1330385 (not res!599417)) b!1330386))

(declare-fun m!1487421 () Bool)

(assert (=> b!1330384 m!1487421))

(declare-fun m!1487423 () Bool)

(assert (=> b!1330386 m!1487423))

(declare-fun m!1487425 () Bool)

(assert (=> b!1330388 m!1487425))

(assert (=> b!1330170 d!375062))

(declare-fun d!375064 () Bool)

(declare-fun lt!440162 () Bool)

(declare-fun content!1921 (List!13594) (Set Rule!4484))

(assert (=> d!375064 (= lt!440162 (set.member (rule!4087 t2!34) (content!1921 rules!2550)))))

(declare-fun e!852308 () Bool)

(assert (=> d!375064 (= lt!440162 e!852308)))

(declare-fun res!599422 () Bool)

(assert (=> d!375064 (=> (not res!599422) (not e!852308))))

(assert (=> d!375064 (= res!599422 (is-Cons!13528 rules!2550))))

(assert (=> d!375064 (= (contains!2444 rules!2550 (rule!4087 t2!34)) lt!440162)))

(declare-fun b!1330393 () Bool)

(declare-fun e!852309 () Bool)

(assert (=> b!1330393 (= e!852308 e!852309)))

(declare-fun res!599423 () Bool)

(assert (=> b!1330393 (=> res!599423 e!852309)))

(assert (=> b!1330393 (= res!599423 (= (h!18929 rules!2550) (rule!4087 t2!34)))))

(declare-fun b!1330394 () Bool)

(assert (=> b!1330394 (= e!852309 (contains!2444 (t!118967 rules!2550) (rule!4087 t2!34)))))

(assert (= (and d!375064 res!599422) b!1330393))

(assert (= (and b!1330393 (not res!599423)) b!1330394))

(declare-fun m!1487427 () Bool)

(assert (=> d!375064 m!1487427))

(declare-fun m!1487429 () Bool)

(assert (=> d!375064 m!1487429))

(declare-fun m!1487431 () Bool)

(assert (=> b!1330394 m!1487431))

(assert (=> b!1330169 d!375064))

(declare-fun d!375066 () Bool)

(assert (=> d!375066 (= (inv!17872 (tag!2604 (rule!4087 t2!34))) (= (mod (str.len (value!76380 (tag!2604 (rule!4087 t2!34)))) 2) 0))))

(assert (=> b!1330148 d!375066))

(declare-fun d!375068 () Bool)

(declare-fun res!599426 () Bool)

(declare-fun e!852312 () Bool)

(assert (=> d!375068 (=> (not res!599426) (not e!852312))))

(declare-fun semiInverseModEq!883 (Int Int) Bool)

(assert (=> d!375068 (= res!599426 (semiInverseModEq!883 (toChars!3432 (transformation!2342 (rule!4087 t2!34))) (toValue!3573 (transformation!2342 (rule!4087 t2!34)))))))

(assert (=> d!375068 (= (inv!17876 (transformation!2342 (rule!4087 t2!34))) e!852312)))

(declare-fun b!1330397 () Bool)

(declare-fun equivClasses!842 (Int Int) Bool)

(assert (=> b!1330397 (= e!852312 (equivClasses!842 (toChars!3432 (transformation!2342 (rule!4087 t2!34))) (toValue!3573 (transformation!2342 (rule!4087 t2!34)))))))

(assert (= (and d!375068 res!599426) b!1330397))

(declare-fun m!1487433 () Bool)

(assert (=> d!375068 m!1487433))

(declare-fun m!1487435 () Bool)

(assert (=> b!1330397 m!1487435))

(assert (=> b!1330148 d!375068))

(declare-fun d!375070 () Bool)

(declare-fun choose!8155 (Int) Bool)

(assert (=> d!375070 (= (Exists!814 lambda!55308) (choose!8155 lambda!55308))))

(declare-fun bs!331609 () Bool)

(assert (= bs!331609 d!375070))

(declare-fun m!1487437 () Bool)

(assert (=> bs!331609 m!1487437))

(assert (=> b!1330174 d!375070))

(declare-fun bs!331610 () Bool)

(declare-fun d!375072 () Bool)

(assert (= bs!331610 (and d!375072 b!1330174)))

(declare-fun lambda!55354 () Int)

(assert (=> bs!331610 (= lambda!55354 lambda!55308)))

(assert (=> d!375072 true))

(assert (=> d!375072 true))

(assert (=> d!375072 (Exists!814 lambda!55354)))

(declare-fun lt!440165 () Unit!19638)

(declare-fun choose!8156 (Regex!3656 List!13591) Unit!19638)

(assert (=> d!375072 (= lt!440165 (choose!8156 lt!440053 lt!440062))))

(assert (=> d!375072 (validRegex!1572 lt!440053)))

(assert (=> d!375072 (= (lemmaPrefixMatchThenExistsStringThatMatches!132 lt!440053 lt!440062) lt!440165)))

(declare-fun bs!331611 () Bool)

(assert (= bs!331611 d!375072))

(declare-fun m!1487439 () Bool)

(assert (=> bs!331611 m!1487439))

(declare-fun m!1487441 () Bool)

(assert (=> bs!331611 m!1487441))

(declare-fun m!1487443 () Bool)

(assert (=> bs!331611 m!1487443))

(assert (=> b!1330174 d!375072))

(declare-fun d!375074 () Bool)

(declare-fun lt!440166 () Bool)

(assert (=> d!375074 (= lt!440166 (set.member lt!440034 (content!1920 lt!440062)))))

(declare-fun e!852315 () Bool)

(assert (=> d!375074 (= lt!440166 e!852315)))

(declare-fun res!599432 () Bool)

(assert (=> d!375074 (=> (not res!599432) (not e!852315))))

(assert (=> d!375074 (= res!599432 (is-Cons!13525 lt!440062))))

(assert (=> d!375074 (= (contains!2442 lt!440062 lt!440034) lt!440166)))

(declare-fun b!1330400 () Bool)

(declare-fun e!852316 () Bool)

(assert (=> b!1330400 (= e!852315 e!852316)))

(declare-fun res!599431 () Bool)

(assert (=> b!1330400 (=> res!599431 e!852316)))

(assert (=> b!1330400 (= res!599431 (= (h!18926 lt!440062) lt!440034))))

(declare-fun b!1330401 () Bool)

(assert (=> b!1330401 (= e!852316 (contains!2442 (t!118964 lt!440062) lt!440034))))

(assert (= (and d!375074 res!599432) b!1330400))

(assert (= (and b!1330400 (not res!599431)) b!1330401))

(declare-fun m!1487445 () Bool)

(assert (=> d!375074 m!1487445))

(declare-fun m!1487447 () Bool)

(assert (=> d!375074 m!1487447))

(declare-fun m!1487449 () Bool)

(assert (=> b!1330401 m!1487449))

(assert (=> b!1330173 d!375074))

(declare-fun d!375076 () Bool)

(declare-fun lt!440169 () C!7602)

(declare-fun apply!3138 (List!13591 Int) C!7602)

(assert (=> d!375076 (= lt!440169 (apply!3138 (list!5128 lt!440049) 0))))

(declare-fun apply!3139 (Conc!4454 Int) C!7602)

(assert (=> d!375076 (= lt!440169 (apply!3139 (c!218010 lt!440049) 0))))

(declare-fun e!852319 () Bool)

(assert (=> d!375076 e!852319))

(declare-fun res!599435 () Bool)

(assert (=> d!375076 (=> (not res!599435) (not e!852319))))

(assert (=> d!375076 (= res!599435 (<= 0 0))))

(assert (=> d!375076 (= (apply!3136 lt!440049 0) lt!440169)))

(declare-fun b!1330404 () Bool)

(assert (=> b!1330404 (= e!852319 (< 0 (size!11014 lt!440049)))))

(assert (= (and d!375076 res!599435) b!1330404))

(assert (=> d!375076 m!1487197))

(assert (=> d!375076 m!1487197))

(declare-fun m!1487451 () Bool)

(assert (=> d!375076 m!1487451))

(declare-fun m!1487453 () Bool)

(assert (=> d!375076 m!1487453))

(assert (=> b!1330404 m!1487165))

(assert (=> b!1330173 d!375076))

(declare-fun b!1330415 () Bool)

(declare-fun e!852326 () tuple2!13174)

(assert (=> b!1330415 (= e!852326 (tuple2!13175 Nil!13527 (list!5128 lt!440037)))))

(declare-fun b!1330416 () Bool)

(declare-fun e!852327 () Bool)

(declare-fun lt!440176 () tuple2!13174)

(declare-fun isEmpty!8064 (List!13593) Bool)

(assert (=> b!1330416 (= e!852327 (not (isEmpty!8064 (_1!7473 lt!440176))))))

(declare-fun b!1330417 () Bool)

(declare-fun e!852328 () Bool)

(assert (=> b!1330417 (= e!852328 e!852327)))

(declare-fun res!599438 () Bool)

(declare-fun size!11018 (List!13591) Int)

(assert (=> b!1330417 (= res!599438 (< (size!11018 (_2!7473 lt!440176)) (size!11018 (list!5128 lt!440037))))))

(assert (=> b!1330417 (=> (not res!599438) (not e!852327))))

(declare-fun d!375078 () Bool)

(assert (=> d!375078 e!852328))

(declare-fun c!218034 () Bool)

(declare-fun size!11019 (List!13593) Int)

(assert (=> d!375078 (= c!218034 (> (size!11019 (_1!7473 lt!440176)) 0))))

(assert (=> d!375078 (= lt!440176 e!852326)))

(declare-fun c!218035 () Bool)

(declare-fun lt!440177 () Option!2613)

(assert (=> d!375078 (= c!218035 (is-Some!2612 lt!440177))))

(assert (=> d!375078 (= lt!440177 (maxPrefix!1047 thiss!19762 rules!2550 (list!5128 lt!440037)))))

(assert (=> d!375078 (= (lexList!575 thiss!19762 rules!2550 (list!5128 lt!440037)) lt!440176)))

(declare-fun b!1330418 () Bool)

(assert (=> b!1330418 (= e!852328 (= (_2!7473 lt!440176) (list!5128 lt!440037)))))

(declare-fun b!1330419 () Bool)

(declare-fun lt!440178 () tuple2!13174)

(assert (=> b!1330419 (= e!852326 (tuple2!13175 (Cons!13527 (_1!7474 (v!21233 lt!440177)) (_1!7473 lt!440178)) (_2!7473 lt!440178)))))

(assert (=> b!1330419 (= lt!440178 (lexList!575 thiss!19762 rules!2550 (_2!7474 (v!21233 lt!440177))))))

(assert (= (and d!375078 c!218035) b!1330419))

(assert (= (and d!375078 (not c!218035)) b!1330415))

(assert (= (and d!375078 c!218034) b!1330417))

(assert (= (and d!375078 (not c!218034)) b!1330418))

(assert (= (and b!1330417 res!599438) b!1330416))

(declare-fun m!1487455 () Bool)

(assert (=> b!1330416 m!1487455))

(declare-fun m!1487457 () Bool)

(assert (=> b!1330417 m!1487457))

(assert (=> b!1330417 m!1487239))

(declare-fun m!1487459 () Bool)

(assert (=> b!1330417 m!1487459))

(declare-fun m!1487461 () Bool)

(assert (=> d!375078 m!1487461))

(assert (=> d!375078 m!1487239))

(declare-fun m!1487463 () Bool)

(assert (=> d!375078 m!1487463))

(declare-fun m!1487465 () Bool)

(assert (=> b!1330419 m!1487465))

(assert (=> b!1330152 d!375078))

(declare-fun d!375080 () Bool)

(declare-fun list!5132 (Conc!4454) List!13591)

(assert (=> d!375080 (= (list!5128 lt!440037) (list!5132 (c!218010 lt!440037)))))

(declare-fun bs!331612 () Bool)

(assert (= bs!331612 d!375080))

(declare-fun m!1487467 () Bool)

(assert (=> bs!331612 m!1487467))

(assert (=> b!1330152 d!375080))

(declare-fun d!375082 () Bool)

(declare-fun res!599443 () Bool)

(declare-fun e!852333 () Bool)

(assert (=> d!375082 (=> res!599443 e!852333)))

(assert (=> d!375082 (= res!599443 (not (is-Cons!13528 rules!2550)))))

(assert (=> d!375082 (= (sepAndNonSepRulesDisjointChars!715 rules!2550 rules!2550) e!852333)))

(declare-fun b!1330424 () Bool)

(declare-fun e!852334 () Bool)

(assert (=> b!1330424 (= e!852333 e!852334)))

(declare-fun res!599444 () Bool)

(assert (=> b!1330424 (=> (not res!599444) (not e!852334))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!327 (Rule!4484 List!13594) Bool)

(assert (=> b!1330424 (= res!599444 (ruleDisjointCharsFromAllFromOtherType!327 (h!18929 rules!2550) rules!2550))))

(declare-fun b!1330425 () Bool)

(assert (=> b!1330425 (= e!852334 (sepAndNonSepRulesDisjointChars!715 rules!2550 (t!118967 rules!2550)))))

(assert (= (and d!375082 (not res!599443)) b!1330424))

(assert (= (and b!1330424 res!599444) b!1330425))

(declare-fun m!1487469 () Bool)

(assert (=> b!1330424 m!1487469))

(declare-fun m!1487471 () Bool)

(assert (=> b!1330425 m!1487471))

(assert (=> b!1330151 d!375082))

(declare-fun d!375084 () Bool)

(declare-fun lt!440179 () Bool)

(assert (=> d!375084 (= lt!440179 (set.member lt!440034 (content!1920 (usedCharacters!207 (regex!2342 (rule!4087 t1!34))))))))

(declare-fun e!852335 () Bool)

(assert (=> d!375084 (= lt!440179 e!852335)))

(declare-fun res!599446 () Bool)

(assert (=> d!375084 (=> (not res!599446) (not e!852335))))

(assert (=> d!375084 (= res!599446 (is-Cons!13525 (usedCharacters!207 (regex!2342 (rule!4087 t1!34)))))))

(assert (=> d!375084 (= (contains!2442 (usedCharacters!207 (regex!2342 (rule!4087 t1!34))) lt!440034) lt!440179)))

(declare-fun b!1330426 () Bool)

(declare-fun e!852336 () Bool)

(assert (=> b!1330426 (= e!852335 e!852336)))

(declare-fun res!599445 () Bool)

(assert (=> b!1330426 (=> res!599445 e!852336)))

(assert (=> b!1330426 (= res!599445 (= (h!18926 (usedCharacters!207 (regex!2342 (rule!4087 t1!34)))) lt!440034))))

(declare-fun b!1330427 () Bool)

(assert (=> b!1330427 (= e!852336 (contains!2442 (t!118964 (usedCharacters!207 (regex!2342 (rule!4087 t1!34)))) lt!440034))))

(assert (= (and d!375084 res!599446) b!1330426))

(assert (= (and b!1330426 (not res!599445)) b!1330427))

(assert (=> d!375084 m!1487207))

(declare-fun m!1487473 () Bool)

(assert (=> d!375084 m!1487473))

(declare-fun m!1487475 () Bool)

(assert (=> d!375084 m!1487475))

(declare-fun m!1487477 () Bool)

(assert (=> b!1330427 m!1487477))

(assert (=> b!1330172 d!375084))

(declare-fun b!1330444 () Bool)

(declare-fun c!218044 () Bool)

(assert (=> b!1330444 (= c!218044 (is-Star!3656 (regex!2342 (rule!4087 t1!34))))))

(declare-fun e!852345 () List!13591)

(declare-fun e!852347 () List!13591)

(assert (=> b!1330444 (= e!852345 e!852347)))

(declare-fun b!1330445 () Bool)

(declare-fun e!852346 () List!13591)

(assert (=> b!1330445 (= e!852346 Nil!13525)))

(declare-fun c!218046 () Bool)

(declare-fun bm!89945 () Bool)

(declare-fun call!89951 () List!13591)

(assert (=> bm!89945 (= call!89951 (usedCharacters!207 (ite c!218044 (reg!3985 (regex!2342 (rule!4087 t1!34))) (ite c!218046 (regOne!7825 (regex!2342 (rule!4087 t1!34))) (regTwo!7824 (regex!2342 (rule!4087 t1!34)))))))))

(declare-fun b!1330446 () Bool)

(assert (=> b!1330446 (= e!852346 e!852345)))

(declare-fun c!218047 () Bool)

(assert (=> b!1330446 (= c!218047 (is-ElementMatch!3656 (regex!2342 (rule!4087 t1!34))))))

(declare-fun b!1330447 () Bool)

(declare-fun e!852348 () List!13591)

(declare-fun call!89952 () List!13591)

(assert (=> b!1330447 (= e!852348 call!89952)))

(declare-fun bm!89946 () Bool)

(declare-fun call!89950 () List!13591)

(assert (=> bm!89946 (= call!89950 (usedCharacters!207 (ite c!218046 (regTwo!7825 (regex!2342 (rule!4087 t1!34))) (regOne!7824 (regex!2342 (rule!4087 t1!34))))))))

(declare-fun b!1330448 () Bool)

(assert (=> b!1330448 (= e!852345 (Cons!13525 (c!218011 (regex!2342 (rule!4087 t1!34))) Nil!13525))))

(declare-fun d!375086 () Bool)

(declare-fun c!218045 () Bool)

(assert (=> d!375086 (= c!218045 (or (is-EmptyExpr!3656 (regex!2342 (rule!4087 t1!34))) (is-EmptyLang!3656 (regex!2342 (rule!4087 t1!34)))))))

(assert (=> d!375086 (= (usedCharacters!207 (regex!2342 (rule!4087 t1!34))) e!852346)))

(declare-fun bm!89947 () Bool)

(declare-fun call!89953 () List!13591)

(assert (=> bm!89947 (= call!89953 call!89951)))

(declare-fun b!1330449 () Bool)

(assert (=> b!1330449 (= e!852347 call!89951)))

(declare-fun bm!89948 () Bool)

(assert (=> bm!89948 (= call!89952 (++!3455 (ite c!218046 call!89953 call!89950) (ite c!218046 call!89950 call!89953)))))

(declare-fun b!1330450 () Bool)

(assert (=> b!1330450 (= e!852347 e!852348)))

(assert (=> b!1330450 (= c!218046 (is-Union!3656 (regex!2342 (rule!4087 t1!34))))))

(declare-fun b!1330451 () Bool)

(assert (=> b!1330451 (= e!852348 call!89952)))

(assert (= (and d!375086 c!218045) b!1330445))

(assert (= (and d!375086 (not c!218045)) b!1330446))

(assert (= (and b!1330446 c!218047) b!1330448))

(assert (= (and b!1330446 (not c!218047)) b!1330444))

(assert (= (and b!1330444 c!218044) b!1330449))

(assert (= (and b!1330444 (not c!218044)) b!1330450))

(assert (= (and b!1330450 c!218046) b!1330447))

(assert (= (and b!1330450 (not c!218046)) b!1330451))

(assert (= (or b!1330447 b!1330451) bm!89947))

(assert (= (or b!1330447 b!1330451) bm!89946))

(assert (= (or b!1330447 b!1330451) bm!89948))

(assert (= (or b!1330449 bm!89947) bm!89945))

(declare-fun m!1487479 () Bool)

(assert (=> bm!89945 m!1487479))

(declare-fun m!1487481 () Bool)

(assert (=> bm!89946 m!1487481))

(declare-fun m!1487483 () Bool)

(assert (=> bm!89948 m!1487483))

(assert (=> b!1330172 d!375086))

(declare-fun bs!331613 () Bool)

(declare-fun d!375088 () Bool)

(assert (= bs!331613 (and d!375088 b!1330155)))

(declare-fun lambda!55359 () Int)

(assert (=> bs!331613 (not (= lambda!55359 lambda!55310))))

(declare-fun lambda!55360 () Int)

(assert (=> bs!331613 (= lambda!55360 lambda!55310)))

(declare-fun bs!331614 () Bool)

(assert (= bs!331614 d!375088))

(assert (=> bs!331614 (not (= lambda!55360 lambda!55359))))

(assert (=> d!375088 true))

(assert (=> d!375088 (= (matchR!1658 lt!440053 lt!440058) (exists!387 lt!440059 lambda!55360))))

(declare-fun lt!440182 () Unit!19638)

(declare-fun choose!8157 (Regex!3656 List!13595 List!13591) Unit!19638)

(assert (=> d!375088 (= lt!440182 (choose!8157 lt!440053 lt!440059 lt!440058))))

(declare-fun forall!3323 (List!13595 Int) Bool)

(assert (=> d!375088 (forall!3323 lt!440059 lambda!55359)))

(assert (=> d!375088 (= (matchRGenUnionSpec!93 lt!440053 lt!440059 lt!440058) lt!440182)))

(assert (=> bs!331614 m!1487237))

(declare-fun m!1487485 () Bool)

(assert (=> bs!331614 m!1487485))

(declare-fun m!1487487 () Bool)

(assert (=> bs!331614 m!1487487))

(declare-fun m!1487489 () Bool)

(assert (=> bs!331614 m!1487489))

(assert (=> b!1330155 d!375088))

(declare-fun d!375090 () Bool)

(declare-fun lt!440185 () List!13595)

(declare-fun size!11020 (List!13595) Int)

(declare-fun size!11021 (List!13594) Int)

(assert (=> d!375090 (= (size!11020 lt!440185) (size!11021 rules!2550))))

(declare-fun e!852353 () List!13595)

(assert (=> d!375090 (= lt!440185 e!852353)))

(declare-fun c!218050 () Bool)

(assert (=> d!375090 (= c!218050 (is-Nil!13528 rules!2550))))

(assert (=> d!375090 (= (map!2980 rules!2550 lambda!55309) lt!440185)))

(declare-fun b!1330458 () Bool)

(assert (=> b!1330458 (= e!852353 Nil!13529)))

(declare-fun b!1330459 () Bool)

(declare-fun $colon$colon!166 (List!13595 Regex!3656) List!13595)

(declare-fun dynLambda!5957 (Int Rule!4484) Regex!3656)

(assert (=> b!1330459 (= e!852353 ($colon$colon!166 (map!2980 (t!118967 rules!2550) lambda!55309) (dynLambda!5957 lambda!55309 (h!18929 rules!2550))))))

(assert (= (and d!375090 c!218050) b!1330458))

(assert (= (and d!375090 (not c!218050)) b!1330459))

(declare-fun b_lambda!39119 () Bool)

(assert (=> (not b_lambda!39119) (not b!1330459)))

(declare-fun m!1487491 () Bool)

(assert (=> d!375090 m!1487491))

(declare-fun m!1487493 () Bool)

(assert (=> d!375090 m!1487493))

(declare-fun m!1487495 () Bool)

(assert (=> b!1330459 m!1487495))

(declare-fun m!1487497 () Bool)

(assert (=> b!1330459 m!1487497))

(assert (=> b!1330459 m!1487495))

(assert (=> b!1330459 m!1487497))

(declare-fun m!1487499 () Bool)

(assert (=> b!1330459 m!1487499))

(assert (=> b!1330155 d!375090))

(declare-fun bs!331615 () Bool)

(declare-fun d!375092 () Bool)

(assert (= bs!331615 (and d!375092 b!1330155)))

(declare-fun lambda!55363 () Int)

(assert (=> bs!331615 (not (= lambda!55363 lambda!55310))))

(declare-fun bs!331616 () Bool)

(assert (= bs!331616 (and d!375092 d!375088)))

(assert (=> bs!331616 (not (= lambda!55363 lambda!55359))))

(assert (=> bs!331616 (not (= lambda!55363 lambda!55360))))

(assert (=> d!375092 true))

(declare-fun order!8147 () Int)

(declare-fun dynLambda!5958 (Int Int) Int)

(assert (=> d!375092 (< (dynLambda!5958 order!8147 lambda!55310) (dynLambda!5958 order!8147 lambda!55363))))

(assert (=> d!375092 (= (exists!387 lt!440059 lambda!55310) (not (forall!3323 lt!440059 lambda!55363)))))

(declare-fun bs!331617 () Bool)

(assert (= bs!331617 d!375092))

(declare-fun m!1487501 () Bool)

(assert (=> bs!331617 m!1487501))

(assert (=> b!1330155 d!375092))

(declare-fun bs!331618 () Bool)

(declare-fun d!375094 () Bool)

(assert (= bs!331618 (and d!375094 b!1330155)))

(declare-fun lambda!55364 () Int)

(assert (=> bs!331618 (not (= lambda!55364 lambda!55310))))

(declare-fun bs!331619 () Bool)

(assert (= bs!331619 (and d!375094 d!375088)))

(assert (=> bs!331619 (not (= lambda!55364 lambda!55359))))

(assert (=> bs!331619 (not (= lambda!55364 lambda!55360))))

(declare-fun bs!331620 () Bool)

(assert (= bs!331620 (and d!375094 d!375092)))

(assert (=> bs!331620 (= lambda!55364 lambda!55363)))

(assert (=> d!375094 true))

(assert (=> d!375094 (< (dynLambda!5958 order!8147 lambda!55310) (dynLambda!5958 order!8147 lambda!55364))))

(assert (=> d!375094 (= (exists!387 (map!2980 rules!2550 lambda!55309) lambda!55310) (not (forall!3323 (map!2980 rules!2550 lambda!55309) lambda!55364)))))

(declare-fun bs!331621 () Bool)

(assert (= bs!331621 d!375094))

(assert (=> bs!331621 m!1487103))

(declare-fun m!1487503 () Bool)

(assert (=> bs!331621 m!1487503))

(assert (=> b!1330155 d!375094))

(declare-fun b!1330480 () Bool)

(declare-fun e!852360 () Option!2613)

(declare-fun call!89956 () Option!2613)

(assert (=> b!1330480 (= e!852360 call!89956)))

(declare-fun b!1330482 () Bool)

(declare-fun res!599464 () Bool)

(declare-fun e!852361 () Bool)

(assert (=> b!1330482 (=> (not res!599464) (not e!852361))))

(declare-fun lt!440197 () Option!2613)

(declare-fun get!4289 (Option!2613) tuple2!13176)

(assert (=> b!1330482 (= res!599464 (matchR!1658 (regex!2342 (rule!4087 (_1!7474 (get!4289 lt!440197)))) (list!5128 (charsOf!1314 (_1!7474 (get!4289 lt!440197))))))))

(declare-fun b!1330483 () Bool)

(assert (=> b!1330483 (= e!852361 (contains!2444 rules!2550 (rule!4087 (_1!7474 (get!4289 lt!440197)))))))

(declare-fun b!1330484 () Bool)

(declare-fun res!599468 () Bool)

(assert (=> b!1330484 (=> (not res!599468) (not e!852361))))

(assert (=> b!1330484 (= res!599468 (= (list!5128 (charsOf!1314 (_1!7474 (get!4289 lt!440197)))) (originalCharacters!3204 (_1!7474 (get!4289 lt!440197)))))))

(declare-fun bm!89951 () Bool)

(declare-fun maxPrefixOneRule!594 (LexerInterface!2037 Rule!4484 List!13591) Option!2613)

(assert (=> bm!89951 (= call!89956 (maxPrefixOneRule!594 thiss!19762 (h!18929 rules!2550) lt!440057))))

(declare-fun b!1330485 () Bool)

(declare-fun res!599465 () Bool)

(assert (=> b!1330485 (=> (not res!599465) (not e!852361))))

(declare-fun apply!3140 (TokenValueInjection!4524 BalanceConc!8848) TokenValue!2432)

(declare-fun seqFromList!1612 (List!13591) BalanceConc!8848)

(assert (=> b!1330485 (= res!599465 (= (value!76381 (_1!7474 (get!4289 lt!440197))) (apply!3140 (transformation!2342 (rule!4087 (_1!7474 (get!4289 lt!440197)))) (seqFromList!1612 (originalCharacters!3204 (_1!7474 (get!4289 lt!440197)))))))))

(declare-fun b!1330486 () Bool)

(declare-fun e!852362 () Bool)

(assert (=> b!1330486 (= e!852362 e!852361)))

(declare-fun res!599463 () Bool)

(assert (=> b!1330486 (=> (not res!599463) (not e!852361))))

(declare-fun isDefined!2192 (Option!2613) Bool)

(assert (=> b!1330486 (= res!599463 (isDefined!2192 lt!440197))))

(declare-fun b!1330487 () Bool)

(declare-fun res!599469 () Bool)

(assert (=> b!1330487 (=> (not res!599469) (not e!852361))))

(assert (=> b!1330487 (= res!599469 (< (size!11018 (_2!7474 (get!4289 lt!440197))) (size!11018 lt!440057)))))

(declare-fun b!1330488 () Bool)

(declare-fun lt!440199 () Option!2613)

(declare-fun lt!440196 () Option!2613)

(assert (=> b!1330488 (= e!852360 (ite (and (is-None!2612 lt!440199) (is-None!2612 lt!440196)) None!2612 (ite (is-None!2612 lt!440196) lt!440199 (ite (is-None!2612 lt!440199) lt!440196 (ite (>= (size!11015 (_1!7474 (v!21233 lt!440199))) (size!11015 (_1!7474 (v!21233 lt!440196)))) lt!440199 lt!440196)))))))

(assert (=> b!1330488 (= lt!440199 call!89956)))

(assert (=> b!1330488 (= lt!440196 (maxPrefix!1047 thiss!19762 (t!118967 rules!2550) lt!440057))))

(declare-fun b!1330481 () Bool)

(declare-fun res!599467 () Bool)

(assert (=> b!1330481 (=> (not res!599467) (not e!852361))))

(assert (=> b!1330481 (= res!599467 (= (++!3455 (list!5128 (charsOf!1314 (_1!7474 (get!4289 lt!440197)))) (_2!7474 (get!4289 lt!440197))) lt!440057))))

(declare-fun d!375096 () Bool)

(assert (=> d!375096 e!852362))

(declare-fun res!599466 () Bool)

(assert (=> d!375096 (=> res!599466 e!852362)))

(declare-fun isEmpty!8065 (Option!2613) Bool)

(assert (=> d!375096 (= res!599466 (isEmpty!8065 lt!440197))))

(assert (=> d!375096 (= lt!440197 e!852360)))

(declare-fun c!218053 () Bool)

(assert (=> d!375096 (= c!218053 (and (is-Cons!13528 rules!2550) (is-Nil!13528 (t!118967 rules!2550))))))

(declare-fun lt!440200 () Unit!19638)

(declare-fun lt!440198 () Unit!19638)

(assert (=> d!375096 (= lt!440200 lt!440198)))

(declare-fun isPrefix!1089 (List!13591 List!13591) Bool)

(assert (=> d!375096 (isPrefix!1089 lt!440057 lt!440057)))

(declare-fun lemmaIsPrefixRefl!768 (List!13591 List!13591) Unit!19638)

(assert (=> d!375096 (= lt!440198 (lemmaIsPrefixRefl!768 lt!440057 lt!440057))))

(declare-fun rulesValidInductive!741 (LexerInterface!2037 List!13594) Bool)

(assert (=> d!375096 (rulesValidInductive!741 thiss!19762 rules!2550)))

(assert (=> d!375096 (= (maxPrefix!1047 thiss!19762 rules!2550 lt!440057) lt!440197)))

(assert (= (and d!375096 c!218053) b!1330480))

(assert (= (and d!375096 (not c!218053)) b!1330488))

(assert (= (or b!1330480 b!1330488) bm!89951))

(assert (= (and d!375096 (not res!599466)) b!1330486))

(assert (= (and b!1330486 res!599463) b!1330484))

(assert (= (and b!1330484 res!599468) b!1330487))

(assert (= (and b!1330487 res!599469) b!1330481))

(assert (= (and b!1330481 res!599467) b!1330485))

(assert (= (and b!1330485 res!599465) b!1330482))

(assert (= (and b!1330482 res!599464) b!1330483))

(declare-fun m!1487505 () Bool)

(assert (=> b!1330481 m!1487505))

(declare-fun m!1487507 () Bool)

(assert (=> b!1330481 m!1487507))

(assert (=> b!1330481 m!1487507))

(declare-fun m!1487509 () Bool)

(assert (=> b!1330481 m!1487509))

(assert (=> b!1330481 m!1487509))

(declare-fun m!1487511 () Bool)

(assert (=> b!1330481 m!1487511))

(declare-fun m!1487513 () Bool)

(assert (=> b!1330486 m!1487513))

(assert (=> b!1330485 m!1487505))

(declare-fun m!1487515 () Bool)

(assert (=> b!1330485 m!1487515))

(assert (=> b!1330485 m!1487515))

(declare-fun m!1487517 () Bool)

(assert (=> b!1330485 m!1487517))

(declare-fun m!1487519 () Bool)

(assert (=> d!375096 m!1487519))

(declare-fun m!1487521 () Bool)

(assert (=> d!375096 m!1487521))

(declare-fun m!1487523 () Bool)

(assert (=> d!375096 m!1487523))

(declare-fun m!1487525 () Bool)

(assert (=> d!375096 m!1487525))

(assert (=> b!1330484 m!1487505))

(assert (=> b!1330484 m!1487507))

(assert (=> b!1330484 m!1487507))

(assert (=> b!1330484 m!1487509))

(assert (=> b!1330487 m!1487505))

(declare-fun m!1487527 () Bool)

(assert (=> b!1330487 m!1487527))

(declare-fun m!1487529 () Bool)

(assert (=> b!1330487 m!1487529))

(assert (=> b!1330482 m!1487505))

(assert (=> b!1330482 m!1487507))

(assert (=> b!1330482 m!1487507))

(assert (=> b!1330482 m!1487509))

(assert (=> b!1330482 m!1487509))

(declare-fun m!1487531 () Bool)

(assert (=> b!1330482 m!1487531))

(assert (=> b!1330483 m!1487505))

(declare-fun m!1487533 () Bool)

(assert (=> b!1330483 m!1487533))

(declare-fun m!1487535 () Bool)

(assert (=> b!1330488 m!1487535))

(declare-fun m!1487537 () Bool)

(assert (=> bm!89951 m!1487537))

(assert (=> b!1330175 d!375096))

(declare-fun d!375100 () Bool)

(declare-fun lt!440201 () Bool)

(assert (=> d!375100 (= lt!440201 (set.member lt!440050 (content!1920 (usedCharacters!207 (regex!2342 (rule!4087 t2!34))))))))

(declare-fun e!852363 () Bool)

(assert (=> d!375100 (= lt!440201 e!852363)))

(declare-fun res!599471 () Bool)

(assert (=> d!375100 (=> (not res!599471) (not e!852363))))

(assert (=> d!375100 (= res!599471 (is-Cons!13525 (usedCharacters!207 (regex!2342 (rule!4087 t2!34)))))))

(assert (=> d!375100 (= (contains!2442 (usedCharacters!207 (regex!2342 (rule!4087 t2!34))) lt!440050) lt!440201)))

(declare-fun b!1330489 () Bool)

(declare-fun e!852364 () Bool)

(assert (=> b!1330489 (= e!852363 e!852364)))

(declare-fun res!599470 () Bool)

(assert (=> b!1330489 (=> res!599470 e!852364)))

(assert (=> b!1330489 (= res!599470 (= (h!18926 (usedCharacters!207 (regex!2342 (rule!4087 t2!34)))) lt!440050))))

(declare-fun b!1330490 () Bool)

(assert (=> b!1330490 (= e!852364 (contains!2442 (t!118964 (usedCharacters!207 (regex!2342 (rule!4087 t2!34)))) lt!440050))))

(assert (= (and d!375100 res!599471) b!1330489))

(assert (= (and b!1330489 (not res!599470)) b!1330490))

(assert (=> d!375100 m!1487119))

(declare-fun m!1487539 () Bool)

(assert (=> d!375100 m!1487539))

(declare-fun m!1487541 () Bool)

(assert (=> d!375100 m!1487541))

(declare-fun m!1487543 () Bool)

(assert (=> b!1330490 m!1487543))

(assert (=> b!1330154 d!375100))

(declare-fun b!1330491 () Bool)

(declare-fun c!218054 () Bool)

(assert (=> b!1330491 (= c!218054 (is-Star!3656 (regex!2342 (rule!4087 t2!34))))))

(declare-fun e!852365 () List!13591)

(declare-fun e!852367 () List!13591)

(assert (=> b!1330491 (= e!852365 e!852367)))

(declare-fun b!1330492 () Bool)

(declare-fun e!852366 () List!13591)

(assert (=> b!1330492 (= e!852366 Nil!13525)))

(declare-fun bm!89952 () Bool)

(declare-fun call!89958 () List!13591)

(declare-fun c!218056 () Bool)

(assert (=> bm!89952 (= call!89958 (usedCharacters!207 (ite c!218054 (reg!3985 (regex!2342 (rule!4087 t2!34))) (ite c!218056 (regOne!7825 (regex!2342 (rule!4087 t2!34))) (regTwo!7824 (regex!2342 (rule!4087 t2!34)))))))))

(declare-fun b!1330493 () Bool)

(assert (=> b!1330493 (= e!852366 e!852365)))

(declare-fun c!218057 () Bool)

(assert (=> b!1330493 (= c!218057 (is-ElementMatch!3656 (regex!2342 (rule!4087 t2!34))))))

(declare-fun b!1330494 () Bool)

(declare-fun e!852368 () List!13591)

(declare-fun call!89959 () List!13591)

(assert (=> b!1330494 (= e!852368 call!89959)))

(declare-fun bm!89953 () Bool)

(declare-fun call!89957 () List!13591)

(assert (=> bm!89953 (= call!89957 (usedCharacters!207 (ite c!218056 (regTwo!7825 (regex!2342 (rule!4087 t2!34))) (regOne!7824 (regex!2342 (rule!4087 t2!34))))))))

(declare-fun b!1330495 () Bool)

(assert (=> b!1330495 (= e!852365 (Cons!13525 (c!218011 (regex!2342 (rule!4087 t2!34))) Nil!13525))))

(declare-fun d!375102 () Bool)

(declare-fun c!218055 () Bool)

(assert (=> d!375102 (= c!218055 (or (is-EmptyExpr!3656 (regex!2342 (rule!4087 t2!34))) (is-EmptyLang!3656 (regex!2342 (rule!4087 t2!34)))))))

(assert (=> d!375102 (= (usedCharacters!207 (regex!2342 (rule!4087 t2!34))) e!852366)))

(declare-fun bm!89954 () Bool)

(declare-fun call!89960 () List!13591)

(assert (=> bm!89954 (= call!89960 call!89958)))

(declare-fun b!1330496 () Bool)

(assert (=> b!1330496 (= e!852367 call!89958)))

(declare-fun bm!89955 () Bool)

(assert (=> bm!89955 (= call!89959 (++!3455 (ite c!218056 call!89960 call!89957) (ite c!218056 call!89957 call!89960)))))

(declare-fun b!1330497 () Bool)

(assert (=> b!1330497 (= e!852367 e!852368)))

(assert (=> b!1330497 (= c!218056 (is-Union!3656 (regex!2342 (rule!4087 t2!34))))))

(declare-fun b!1330498 () Bool)

(assert (=> b!1330498 (= e!852368 call!89959)))

(assert (= (and d!375102 c!218055) b!1330492))

(assert (= (and d!375102 (not c!218055)) b!1330493))

(assert (= (and b!1330493 c!218057) b!1330495))

(assert (= (and b!1330493 (not c!218057)) b!1330491))

(assert (= (and b!1330491 c!218054) b!1330496))

(assert (= (and b!1330491 (not c!218054)) b!1330497))

(assert (= (and b!1330497 c!218056) b!1330494))

(assert (= (and b!1330497 (not c!218056)) b!1330498))

(assert (= (or b!1330494 b!1330498) bm!89954))

(assert (= (or b!1330494 b!1330498) bm!89953))

(assert (= (or b!1330494 b!1330498) bm!89955))

(assert (= (or b!1330496 bm!89954) bm!89952))

(declare-fun m!1487545 () Bool)

(assert (=> bm!89952 m!1487545))

(declare-fun m!1487547 () Bool)

(assert (=> bm!89953 m!1487547))

(declare-fun m!1487549 () Bool)

(assert (=> bm!89955 m!1487549))

(assert (=> b!1330154 d!375102))

(declare-fun d!375104 () Bool)

(declare-fun lt!440202 () Bool)

(assert (=> d!375104 (= lt!440202 (set.member lt!440050 (content!1920 lt!440062)))))

(declare-fun e!852369 () Bool)

(assert (=> d!375104 (= lt!440202 e!852369)))

(declare-fun res!599473 () Bool)

(assert (=> d!375104 (=> (not res!599473) (not e!852369))))

(assert (=> d!375104 (= res!599473 (is-Cons!13525 lt!440062))))

(assert (=> d!375104 (= (contains!2442 lt!440062 lt!440050) lt!440202)))

(declare-fun b!1330499 () Bool)

(declare-fun e!852370 () Bool)

(assert (=> b!1330499 (= e!852369 e!852370)))

(declare-fun res!599472 () Bool)

(assert (=> b!1330499 (=> res!599472 e!852370)))

(assert (=> b!1330499 (= res!599472 (= (h!18926 lt!440062) lt!440050))))

(declare-fun b!1330500 () Bool)

(assert (=> b!1330500 (= e!852370 (contains!2442 (t!118964 lt!440062) lt!440050))))

(assert (= (and d!375104 res!599473) b!1330499))

(assert (= (and b!1330499 (not res!599472)) b!1330500))

(assert (=> d!375104 m!1487445))

(declare-fun m!1487551 () Bool)

(assert (=> d!375104 m!1487551))

(declare-fun m!1487553 () Bool)

(assert (=> b!1330500 m!1487553))

(assert (=> b!1330153 d!375104))

(declare-fun d!375106 () Bool)

(declare-fun lt!440207 () Bool)

(declare-fun content!1922 (List!13595) (Set Regex!3656))

(assert (=> d!375106 (= lt!440207 (set.member lt!440041 (content!1922 (map!2980 rules!2550 lambda!55309))))))

(declare-fun e!852379 () Bool)

(assert (=> d!375106 (= lt!440207 e!852379)))

(declare-fun res!599483 () Bool)

(assert (=> d!375106 (=> (not res!599483) (not e!852379))))

(assert (=> d!375106 (= res!599483 (is-Cons!13529 (map!2980 rules!2550 lambda!55309)))))

(assert (=> d!375106 (= (contains!2443 (map!2980 rules!2550 lambda!55309) lt!440041) lt!440207)))

(declare-fun b!1330509 () Bool)

(declare-fun e!852380 () Bool)

(assert (=> b!1330509 (= e!852379 e!852380)))

(declare-fun res!599482 () Bool)

(assert (=> b!1330509 (=> res!599482 e!852380)))

(assert (=> b!1330509 (= res!599482 (= (h!18930 (map!2980 rules!2550 lambda!55309)) lt!440041))))

(declare-fun b!1330510 () Bool)

(assert (=> b!1330510 (= e!852380 (contains!2443 (t!118968 (map!2980 rules!2550 lambda!55309)) lt!440041))))

(assert (= (and d!375106 res!599483) b!1330509))

(assert (= (and b!1330509 (not res!599482)) b!1330510))

(assert (=> d!375106 m!1487103))

(declare-fun m!1487555 () Bool)

(assert (=> d!375106 m!1487555))

(declare-fun m!1487557 () Bool)

(assert (=> d!375106 m!1487557))

(declare-fun m!1487559 () Bool)

(assert (=> b!1330510 m!1487559))

(assert (=> b!1330158 d!375106))

(assert (=> b!1330158 d!375090))

(declare-fun b!1330525 () Bool)

(declare-fun e!852393 () Regex!3656)

(declare-fun e!852391 () Regex!3656)

(assert (=> b!1330525 (= e!852393 e!852391)))

(declare-fun c!218062 () Bool)

(assert (=> b!1330525 (= c!218062 (is-Cons!13529 (map!2980 rules!2550 lambda!55309)))))

(declare-fun b!1330526 () Bool)

(assert (=> b!1330526 (= e!852391 (getWitness!278 (t!118968 (map!2980 rules!2550 lambda!55309)) lambda!55310))))

(declare-fun b!1330527 () Bool)

(declare-fun e!852392 () Bool)

(declare-fun dynLambda!5959 (Int Regex!3656) Bool)

(assert (=> b!1330527 (= e!852392 (dynLambda!5959 lambda!55310 (h!18930 (map!2980 rules!2550 lambda!55309))))))

(declare-fun d!375108 () Bool)

(declare-fun e!852394 () Bool)

(assert (=> d!375108 e!852394))

(declare-fun res!599490 () Bool)

(assert (=> d!375108 (=> (not res!599490) (not e!852394))))

(declare-fun lt!440213 () Regex!3656)

(assert (=> d!375108 (= res!599490 (dynLambda!5959 lambda!55310 lt!440213))))

(assert (=> d!375108 (= lt!440213 e!852393)))

(declare-fun c!218063 () Bool)

(assert (=> d!375108 (= c!218063 e!852392)))

(declare-fun res!599491 () Bool)

(assert (=> d!375108 (=> (not res!599491) (not e!852392))))

(assert (=> d!375108 (= res!599491 (is-Cons!13529 (map!2980 rules!2550 lambda!55309)))))

(assert (=> d!375108 (exists!387 (map!2980 rules!2550 lambda!55309) lambda!55310)))

(assert (=> d!375108 (= (getWitness!278 (map!2980 rules!2550 lambda!55309) lambda!55310) lt!440213)))

(declare-fun b!1330528 () Bool)

(assert (=> b!1330528 (= e!852394 (contains!2443 (map!2980 rules!2550 lambda!55309) lt!440213))))

(declare-fun b!1330529 () Bool)

(assert (=> b!1330529 (= e!852393 (h!18930 (map!2980 rules!2550 lambda!55309)))))

(declare-fun b!1330530 () Bool)

(declare-fun lt!440214 () Unit!19638)

(declare-fun Unit!19651 () Unit!19638)

(assert (=> b!1330530 (= lt!440214 Unit!19651)))

(assert (=> b!1330530 false))

(declare-fun head!2342 (List!13595) Regex!3656)

(assert (=> b!1330530 (= e!852391 (head!2342 (map!2980 rules!2550 lambda!55309)))))

(assert (= (and d!375108 res!599491) b!1330527))

(assert (= (and d!375108 c!218063) b!1330529))

(assert (= (and d!375108 (not c!218063)) b!1330525))

(assert (= (and b!1330525 c!218062) b!1330526))

(assert (= (and b!1330525 (not c!218062)) b!1330530))

(assert (= (and d!375108 res!599490) b!1330528))

(declare-fun b_lambda!39121 () Bool)

(assert (=> (not b_lambda!39121) (not b!1330527)))

(declare-fun b_lambda!39123 () Bool)

(assert (=> (not b_lambda!39123) (not d!375108)))

(assert (=> b!1330528 m!1487103))

(declare-fun m!1487567 () Bool)

(assert (=> b!1330528 m!1487567))

(declare-fun m!1487569 () Bool)

(assert (=> d!375108 m!1487569))

(assert (=> d!375108 m!1487103))

(assert (=> d!375108 m!1487245))

(declare-fun m!1487571 () Bool)

(assert (=> b!1330527 m!1487571))

(assert (=> b!1330530 m!1487103))

(declare-fun m!1487573 () Bool)

(assert (=> b!1330530 m!1487573))

(declare-fun m!1487575 () Bool)

(assert (=> b!1330526 m!1487575))

(assert (=> b!1330158 d!375108))

(declare-fun d!375112 () Bool)

(declare-fun res!599498 () Bool)

(declare-fun e!852401 () Bool)

(assert (=> d!375112 (=> (not res!599498) (not e!852401))))

(declare-fun rulesValid!852 (LexerInterface!2037 List!13594) Bool)

(assert (=> d!375112 (= res!599498 (rulesValid!852 thiss!19762 rules!2550))))

(assert (=> d!375112 (= (rulesInvariant!1907 thiss!19762 rules!2550) e!852401)))

(declare-fun b!1330539 () Bool)

(declare-datatypes ((List!13601 0))(
  ( (Nil!13535) (Cons!13535 (h!18936 String!16398) (t!119006 List!13601)) )
))
(declare-fun noDuplicateTag!852 (LexerInterface!2037 List!13594 List!13601) Bool)

(assert (=> b!1330539 (= e!852401 (noDuplicateTag!852 thiss!19762 rules!2550 Nil!13535))))

(assert (= (and d!375112 res!599498) b!1330539))

(declare-fun m!1487577 () Bool)

(assert (=> d!375112 m!1487577))

(declare-fun m!1487579 () Bool)

(assert (=> b!1330539 m!1487579))

(assert (=> b!1330157 d!375112))

(declare-fun d!375114 () Bool)

(declare-fun lt!440222 () BalanceConc!8848)

(declare-fun printList!575 (LexerInterface!2037 List!13593) List!13591)

(assert (=> d!375114 (= (list!5128 lt!440222) (printList!575 thiss!19762 (list!5129 (singletonSeq!937 t1!34))))))

(declare-fun printTailRec!557 (LexerInterface!2037 BalanceConc!8850 Int BalanceConc!8848) BalanceConc!8848)

(assert (=> d!375114 (= lt!440222 (printTailRec!557 thiss!19762 (singletonSeq!937 t1!34) 0 (BalanceConc!8849 Empty!4454)))))

(assert (=> d!375114 (= (print!811 thiss!19762 (singletonSeq!937 t1!34)) lt!440222)))

(declare-fun bs!331622 () Bool)

(assert (= bs!331622 d!375114))

(declare-fun m!1487595 () Bool)

(assert (=> bs!331622 m!1487595))

(assert (=> bs!331622 m!1487227))

(declare-fun m!1487597 () Bool)

(assert (=> bs!331622 m!1487597))

(assert (=> bs!331622 m!1487597))

(declare-fun m!1487599 () Bool)

(assert (=> bs!331622 m!1487599))

(assert (=> bs!331622 m!1487227))

(declare-fun m!1487601 () Bool)

(assert (=> bs!331622 m!1487601))

(assert (=> b!1330177 d!375114))

(declare-fun b!1330564 () Bool)

(declare-fun lt!440231 () Unit!19638)

(declare-fun Unit!19652 () Unit!19638)

(assert (=> b!1330564 (= lt!440231 Unit!19652)))

(assert (=> b!1330564 false))

(declare-fun e!852418 () Rule!4484)

(declare-fun head!2343 (List!13594) Rule!4484)

(assert (=> b!1330564 (= e!852418 (head!2343 rules!2550))))

(declare-fun b!1330565 () Bool)

(declare-fun e!852417 () Rule!4484)

(assert (=> b!1330565 (= e!852417 (h!18929 rules!2550))))

(declare-fun b!1330566 () Bool)

(assert (=> b!1330566 (= e!852418 (getWitness!279 (t!118967 rules!2550) lambda!55311))))

(declare-fun b!1330567 () Bool)

(declare-fun e!852415 () Bool)

(declare-fun lt!440230 () Rule!4484)

(assert (=> b!1330567 (= e!852415 (contains!2444 rules!2550 lt!440230))))

(declare-fun b!1330568 () Bool)

(declare-fun e!852416 () Bool)

(declare-fun dynLambda!5960 (Int Rule!4484) Bool)

(assert (=> b!1330568 (= e!852416 (dynLambda!5960 lambda!55311 (h!18929 rules!2550)))))

(declare-fun b!1330569 () Bool)

(assert (=> b!1330569 (= e!852417 e!852418)))

(declare-fun c!218075 () Bool)

(assert (=> b!1330569 (= c!218075 (is-Cons!13528 rules!2550))))

(declare-fun d!375118 () Bool)

(assert (=> d!375118 e!852415))

(declare-fun res!599505 () Bool)

(assert (=> d!375118 (=> (not res!599505) (not e!852415))))

(assert (=> d!375118 (= res!599505 (dynLambda!5960 lambda!55311 lt!440230))))

(assert (=> d!375118 (= lt!440230 e!852417)))

(declare-fun c!218074 () Bool)

(assert (=> d!375118 (= c!218074 e!852416)))

(declare-fun res!599506 () Bool)

(assert (=> d!375118 (=> (not res!599506) (not e!852416))))

(assert (=> d!375118 (= res!599506 (is-Cons!13528 rules!2550))))

(assert (=> d!375118 (exists!386 rules!2550 lambda!55311)))

(assert (=> d!375118 (= (getWitness!279 rules!2550 lambda!55311) lt!440230)))

(assert (= (and d!375118 res!599506) b!1330568))

(assert (= (and d!375118 c!218074) b!1330565))

(assert (= (and d!375118 (not c!218074)) b!1330569))

(assert (= (and b!1330569 c!218075) b!1330566))

(assert (= (and b!1330569 (not c!218075)) b!1330564))

(assert (= (and d!375118 res!599505) b!1330567))

(declare-fun b_lambda!39125 () Bool)

(assert (=> (not b_lambda!39125) (not b!1330568)))

(declare-fun b_lambda!39127 () Bool)

(assert (=> (not b_lambda!39127) (not d!375118)))

(declare-fun m!1487611 () Bool)

(assert (=> b!1330568 m!1487611))

(declare-fun m!1487613 () Bool)

(assert (=> b!1330566 m!1487613))

(declare-fun m!1487615 () Bool)

(assert (=> b!1330564 m!1487615))

(declare-fun m!1487617 () Bool)

(assert (=> d!375118 m!1487617))

(assert (=> d!375118 m!1487095))

(declare-fun m!1487619 () Bool)

(assert (=> b!1330567 m!1487619))

(assert (=> b!1330177 d!375118))

(declare-fun b!1330589 () Bool)

(declare-fun res!599522 () Bool)

(declare-fun e!852434 () Bool)

(assert (=> b!1330589 (=> (not res!599522) (not e!852434))))

(declare-fun lt!440238 () tuple2!13172)

(assert (=> b!1330589 (= res!599522 (= (list!5129 (_1!7472 lt!440238)) (_1!7473 (lexList!575 thiss!19762 rules!2550 (list!5128 lt!440056)))))))

(declare-fun b!1330590 () Bool)

(declare-fun e!852436 () Bool)

(declare-fun isEmpty!8066 (BalanceConc!8850) Bool)

(assert (=> b!1330590 (= e!852436 (not (isEmpty!8066 (_1!7472 lt!440238))))))

(declare-fun b!1330591 () Bool)

(declare-fun e!852435 () Bool)

(assert (=> b!1330591 (= e!852435 e!852436)))

(declare-fun res!599523 () Bool)

(assert (=> b!1330591 (= res!599523 (< (size!11014 (_2!7472 lt!440238)) (size!11014 lt!440056)))))

(assert (=> b!1330591 (=> (not res!599523) (not e!852436))))

(declare-fun d!375122 () Bool)

(assert (=> d!375122 e!852434))

(declare-fun res!599524 () Bool)

(assert (=> d!375122 (=> (not res!599524) (not e!852434))))

(assert (=> d!375122 (= res!599524 e!852435)))

(declare-fun c!218078 () Bool)

(declare-fun size!11022 (BalanceConc!8850) Int)

(assert (=> d!375122 (= c!218078 (> (size!11022 (_1!7472 lt!440238)) 0))))

(declare-fun lexTailRecV2!380 (LexerInterface!2037 List!13594 BalanceConc!8848 BalanceConc!8848 BalanceConc!8848 BalanceConc!8850) tuple2!13172)

(assert (=> d!375122 (= lt!440238 (lexTailRecV2!380 thiss!19762 rules!2550 lt!440056 (BalanceConc!8849 Empty!4454) lt!440056 (BalanceConc!8851 Empty!4455)))))

(assert (=> d!375122 (= (lex!872 thiss!19762 rules!2550 lt!440056) lt!440238)))

(declare-fun b!1330592 () Bool)

(assert (=> b!1330592 (= e!852435 (= (_2!7472 lt!440238) lt!440056))))

(declare-fun b!1330593 () Bool)

(assert (=> b!1330593 (= e!852434 (= (list!5128 (_2!7472 lt!440238)) (_2!7473 (lexList!575 thiss!19762 rules!2550 (list!5128 lt!440056)))))))

(assert (= (and d!375122 c!218078) b!1330591))

(assert (= (and d!375122 (not c!218078)) b!1330592))

(assert (= (and b!1330591 res!599523) b!1330590))

(assert (= (and d!375122 res!599524) b!1330589))

(assert (= (and b!1330589 res!599522) b!1330593))

(declare-fun m!1487637 () Bool)

(assert (=> b!1330591 m!1487637))

(declare-fun m!1487639 () Bool)

(assert (=> b!1330591 m!1487639))

(declare-fun m!1487641 () Bool)

(assert (=> b!1330589 m!1487641))

(assert (=> b!1330589 m!1487111))

(assert (=> b!1330589 m!1487111))

(assert (=> b!1330589 m!1487113))

(declare-fun m!1487643 () Bool)

(assert (=> b!1330593 m!1487643))

(assert (=> b!1330593 m!1487111))

(assert (=> b!1330593 m!1487111))

(assert (=> b!1330593 m!1487113))

(declare-fun m!1487645 () Bool)

(assert (=> d!375122 m!1487645))

(declare-fun m!1487647 () Bool)

(assert (=> d!375122 m!1487647))

(declare-fun m!1487649 () Bool)

(assert (=> b!1330590 m!1487649))

(assert (=> b!1330177 d!375122))

(declare-fun d!375132 () Bool)

(declare-fun list!5133 (Conc!4455) List!13593)

(assert (=> d!375132 (= (list!5129 (_1!7472 lt!440039)) (list!5133 (c!218012 (_1!7472 lt!440039))))))

(declare-fun bs!331625 () Bool)

(assert (= bs!331625 d!375132))

(declare-fun m!1487651 () Bool)

(assert (=> bs!331625 m!1487651))

(assert (=> b!1330177 d!375132))

(declare-fun d!375134 () Bool)

(declare-fun e!852439 () Bool)

(assert (=> d!375134 e!852439))

(declare-fun res!599527 () Bool)

(assert (=> d!375134 (=> (not res!599527) (not e!852439))))

(declare-fun lt!440241 () BalanceConc!8850)

(assert (=> d!375134 (= res!599527 (= (list!5129 lt!440241) (Cons!13527 t1!34 Nil!13527)))))

(declare-fun singleton!401 (Token!4346) BalanceConc!8850)

(assert (=> d!375134 (= lt!440241 (singleton!401 t1!34))))

(assert (=> d!375134 (= (singletonSeq!937 t1!34) lt!440241)))

(declare-fun b!1330596 () Bool)

(declare-fun isBalanced!1295 (Conc!4455) Bool)

(assert (=> b!1330596 (= e!852439 (isBalanced!1295 (c!218012 lt!440241)))))

(assert (= (and d!375134 res!599527) b!1330596))

(declare-fun m!1487653 () Bool)

(assert (=> d!375134 m!1487653))

(declare-fun m!1487655 () Bool)

(assert (=> d!375134 m!1487655))

(declare-fun m!1487657 () Bool)

(assert (=> b!1330596 m!1487657))

(assert (=> b!1330177 d!375134))

(declare-fun b!1330625 () Bool)

(declare-fun e!852456 () Bool)

(assert (=> b!1330625 (= e!852456 (not (= (head!2340 lt!440057) (c!218011 (regex!2342 (rule!4087 t1!34))))))))

(declare-fun b!1330626 () Bool)

(declare-fun e!852455 () Bool)

(declare-fun lt!440244 () Bool)

(declare-fun call!89963 () Bool)

(assert (=> b!1330626 (= e!852455 (= lt!440244 call!89963))))

(declare-fun b!1330627 () Bool)

(declare-fun e!852459 () Bool)

(declare-fun derivativeStep!914 (Regex!3656 C!7602) Regex!3656)

(declare-fun tail!1907 (List!13591) List!13591)

(assert (=> b!1330627 (= e!852459 (matchR!1658 (derivativeStep!914 (regex!2342 (rule!4087 t1!34)) (head!2340 lt!440057)) (tail!1907 lt!440057)))))

(declare-fun b!1330628 () Bool)

(declare-fun res!599544 () Bool)

(declare-fun e!852457 () Bool)

(assert (=> b!1330628 (=> res!599544 e!852457)))

(declare-fun e!852454 () Bool)

(assert (=> b!1330628 (= res!599544 e!852454)))

(declare-fun res!599545 () Bool)

(assert (=> b!1330628 (=> (not res!599545) (not e!852454))))

(assert (=> b!1330628 (= res!599545 lt!440244)))

(declare-fun b!1330629 () Bool)

(assert (=> b!1330629 (= e!852454 (= (head!2340 lt!440057) (c!218011 (regex!2342 (rule!4087 t1!34)))))))

(declare-fun d!375136 () Bool)

(assert (=> d!375136 e!852455))

(declare-fun c!218085 () Bool)

(assert (=> d!375136 (= c!218085 (is-EmptyExpr!3656 (regex!2342 (rule!4087 t1!34))))))

(assert (=> d!375136 (= lt!440244 e!852459)))

(declare-fun c!218086 () Bool)

(declare-fun isEmpty!8067 (List!13591) Bool)

(assert (=> d!375136 (= c!218086 (isEmpty!8067 lt!440057))))

(assert (=> d!375136 (validRegex!1572 (regex!2342 (rule!4087 t1!34)))))

(assert (=> d!375136 (= (matchR!1658 (regex!2342 (rule!4087 t1!34)) lt!440057) lt!440244)))

(declare-fun b!1330630 () Bool)

(declare-fun e!852458 () Bool)

(assert (=> b!1330630 (= e!852455 e!852458)))

(declare-fun c!218087 () Bool)

(assert (=> b!1330630 (= c!218087 (is-EmptyLang!3656 (regex!2342 (rule!4087 t1!34))))))

(declare-fun b!1330631 () Bool)

(declare-fun res!599548 () Bool)

(assert (=> b!1330631 (=> (not res!599548) (not e!852454))))

(assert (=> b!1330631 (= res!599548 (not call!89963))))

(declare-fun b!1330632 () Bool)

(assert (=> b!1330632 (= e!852458 (not lt!440244))))

(declare-fun b!1330633 () Bool)

(declare-fun nullable!1162 (Regex!3656) Bool)

(assert (=> b!1330633 (= e!852459 (nullable!1162 (regex!2342 (rule!4087 t1!34))))))

(declare-fun b!1330634 () Bool)

(declare-fun res!599547 () Bool)

(assert (=> b!1330634 (=> res!599547 e!852457)))

(assert (=> b!1330634 (= res!599547 (not (is-ElementMatch!3656 (regex!2342 (rule!4087 t1!34)))))))

(assert (=> b!1330634 (= e!852458 e!852457)))

(declare-fun b!1330635 () Bool)

(declare-fun e!852460 () Bool)

(assert (=> b!1330635 (= e!852460 e!852456)))

(declare-fun res!599551 () Bool)

(assert (=> b!1330635 (=> res!599551 e!852456)))

(assert (=> b!1330635 (= res!599551 call!89963)))

(declare-fun b!1330636 () Bool)

(declare-fun res!599549 () Bool)

(assert (=> b!1330636 (=> res!599549 e!852456)))

(assert (=> b!1330636 (= res!599549 (not (isEmpty!8067 (tail!1907 lt!440057))))))

(declare-fun b!1330637 () Bool)

(assert (=> b!1330637 (= e!852457 e!852460)))

(declare-fun res!599550 () Bool)

(assert (=> b!1330637 (=> (not res!599550) (not e!852460))))

(assert (=> b!1330637 (= res!599550 (not lt!440244))))

(declare-fun b!1330638 () Bool)

(declare-fun res!599546 () Bool)

(assert (=> b!1330638 (=> (not res!599546) (not e!852454))))

(assert (=> b!1330638 (= res!599546 (isEmpty!8067 (tail!1907 lt!440057)))))

(declare-fun bm!89958 () Bool)

(assert (=> bm!89958 (= call!89963 (isEmpty!8067 lt!440057))))

(assert (= (and d!375136 c!218086) b!1330633))

(assert (= (and d!375136 (not c!218086)) b!1330627))

(assert (= (and d!375136 c!218085) b!1330626))

(assert (= (and d!375136 (not c!218085)) b!1330630))

(assert (= (and b!1330630 c!218087) b!1330632))

(assert (= (and b!1330630 (not c!218087)) b!1330634))

(assert (= (and b!1330634 (not res!599547)) b!1330628))

(assert (= (and b!1330628 res!599545) b!1330631))

(assert (= (and b!1330631 res!599548) b!1330638))

(assert (= (and b!1330638 res!599546) b!1330629))

(assert (= (and b!1330628 (not res!599544)) b!1330637))

(assert (= (and b!1330637 res!599550) b!1330635))

(assert (= (and b!1330635 (not res!599551)) b!1330636))

(assert (= (and b!1330636 (not res!599549)) b!1330625))

(assert (= (or b!1330626 b!1330631 b!1330635) bm!89958))

(declare-fun m!1487659 () Bool)

(assert (=> bm!89958 m!1487659))

(declare-fun m!1487661 () Bool)

(assert (=> b!1330638 m!1487661))

(assert (=> b!1330638 m!1487661))

(declare-fun m!1487663 () Bool)

(assert (=> b!1330638 m!1487663))

(assert (=> b!1330629 m!1487127))

(declare-fun m!1487665 () Bool)

(assert (=> b!1330633 m!1487665))

(assert (=> b!1330627 m!1487127))

(assert (=> b!1330627 m!1487127))

(declare-fun m!1487667 () Bool)

(assert (=> b!1330627 m!1487667))

(assert (=> b!1330627 m!1487661))

(assert (=> b!1330627 m!1487667))

(assert (=> b!1330627 m!1487661))

(declare-fun m!1487669 () Bool)

(assert (=> b!1330627 m!1487669))

(assert (=> b!1330625 m!1487127))

(assert (=> d!375136 m!1487659))

(assert (=> d!375136 m!1487409))

(assert (=> b!1330636 m!1487661))

(assert (=> b!1330636 m!1487661))

(assert (=> b!1330636 m!1487663))

(assert (=> b!1330156 d!375136))

(declare-fun d!375138 () Bool)

(assert (=> d!375138 (dynLambda!5960 lambda!55312 (rule!4087 t2!34))))

(declare-fun lt!440247 () Unit!19638)

(declare-fun choose!8158 (List!13594 Int Rule!4484) Unit!19638)

(assert (=> d!375138 (= lt!440247 (choose!8158 rules!2550 lambda!55312 (rule!4087 t2!34)))))

(declare-fun e!852463 () Bool)

(assert (=> d!375138 e!852463))

(declare-fun res!599554 () Bool)

(assert (=> d!375138 (=> (not res!599554) (not e!852463))))

(declare-fun forall!3324 (List!13594 Int) Bool)

(assert (=> d!375138 (= res!599554 (forall!3324 rules!2550 lambda!55312))))

(assert (=> d!375138 (= (forallContained!593 rules!2550 lambda!55312 (rule!4087 t2!34)) lt!440247)))

(declare-fun b!1330641 () Bool)

(assert (=> b!1330641 (= e!852463 (contains!2444 rules!2550 (rule!4087 t2!34)))))

(assert (= (and d!375138 res!599554) b!1330641))

(declare-fun b_lambda!39131 () Bool)

(assert (=> (not b_lambda!39131) (not d!375138)))

(declare-fun m!1487671 () Bool)

(assert (=> d!375138 m!1487671))

(declare-fun m!1487673 () Bool)

(assert (=> d!375138 m!1487673))

(declare-fun m!1487675 () Bool)

(assert (=> d!375138 m!1487675))

(assert (=> b!1330641 m!1487191))

(assert (=> b!1330156 d!375138))

(declare-fun d!375140 () Bool)

(assert (=> d!375140 (dynLambda!5960 lambda!55312 (rule!4087 t1!34))))

(declare-fun lt!440248 () Unit!19638)

(assert (=> d!375140 (= lt!440248 (choose!8158 rules!2550 lambda!55312 (rule!4087 t1!34)))))

(declare-fun e!852464 () Bool)

(assert (=> d!375140 e!852464))

(declare-fun res!599555 () Bool)

(assert (=> d!375140 (=> (not res!599555) (not e!852464))))

(assert (=> d!375140 (= res!599555 (forall!3324 rules!2550 lambda!55312))))

(assert (=> d!375140 (= (forallContained!593 rules!2550 lambda!55312 (rule!4087 t1!34)) lt!440248)))

(declare-fun b!1330642 () Bool)

(assert (=> b!1330642 (= e!852464 (contains!2444 rules!2550 (rule!4087 t1!34)))))

(assert (= (and d!375140 res!599555) b!1330642))

(declare-fun b_lambda!39133 () Bool)

(assert (=> (not b_lambda!39133) (not d!375140)))

(declare-fun m!1487677 () Bool)

(assert (=> d!375140 m!1487677))

(declare-fun m!1487679 () Bool)

(assert (=> d!375140 m!1487679))

(assert (=> d!375140 m!1487675))

(assert (=> b!1330642 m!1487193))

(assert (=> b!1330156 d!375140))

(declare-fun d!375142 () Bool)

(assert (=> d!375142 (dynLambda!5960 lambda!55312 lt!440033)))

(declare-fun lt!440249 () Unit!19638)

(assert (=> d!375142 (= lt!440249 (choose!8158 rules!2550 lambda!55312 lt!440033))))

(declare-fun e!852465 () Bool)

(assert (=> d!375142 e!852465))

(declare-fun res!599556 () Bool)

(assert (=> d!375142 (=> (not res!599556) (not e!852465))))

(assert (=> d!375142 (= res!599556 (forall!3324 rules!2550 lambda!55312))))

(assert (=> d!375142 (= (forallContained!593 rules!2550 lambda!55312 lt!440033) lt!440249)))

(declare-fun b!1330643 () Bool)

(assert (=> b!1330643 (= e!852465 (contains!2444 rules!2550 lt!440033))))

(assert (= (and d!375142 res!599556) b!1330643))

(declare-fun b_lambda!39135 () Bool)

(assert (=> (not b_lambda!39135) (not d!375142)))

(declare-fun m!1487681 () Bool)

(assert (=> d!375142 m!1487681))

(declare-fun m!1487683 () Bool)

(assert (=> d!375142 m!1487683))

(assert (=> d!375142 m!1487675))

(assert (=> b!1330643 m!1487189))

(assert (=> b!1330156 d!375142))

(declare-fun b!1330644 () Bool)

(declare-fun e!852468 () Bool)

(assert (=> b!1330644 (= e!852468 (not (= (head!2340 lt!440058) (c!218011 lt!440053))))))

(declare-fun b!1330645 () Bool)

(declare-fun e!852467 () Bool)

(declare-fun lt!440250 () Bool)

(declare-fun call!89964 () Bool)

(assert (=> b!1330645 (= e!852467 (= lt!440250 call!89964))))

(declare-fun b!1330646 () Bool)

(declare-fun e!852471 () Bool)

(assert (=> b!1330646 (= e!852471 (matchR!1658 (derivativeStep!914 lt!440053 (head!2340 lt!440058)) (tail!1907 lt!440058)))))

(declare-fun b!1330647 () Bool)

(declare-fun res!599557 () Bool)

(declare-fun e!852469 () Bool)

(assert (=> b!1330647 (=> res!599557 e!852469)))

(declare-fun e!852466 () Bool)

(assert (=> b!1330647 (= res!599557 e!852466)))

(declare-fun res!599558 () Bool)

(assert (=> b!1330647 (=> (not res!599558) (not e!852466))))

(assert (=> b!1330647 (= res!599558 lt!440250)))

(declare-fun b!1330648 () Bool)

(assert (=> b!1330648 (= e!852466 (= (head!2340 lt!440058) (c!218011 lt!440053)))))

(declare-fun d!375144 () Bool)

(assert (=> d!375144 e!852467))

(declare-fun c!218088 () Bool)

(assert (=> d!375144 (= c!218088 (is-EmptyExpr!3656 lt!440053))))

(assert (=> d!375144 (= lt!440250 e!852471)))

(declare-fun c!218089 () Bool)

(assert (=> d!375144 (= c!218089 (isEmpty!8067 lt!440058))))

(assert (=> d!375144 (validRegex!1572 lt!440053)))

(assert (=> d!375144 (= (matchR!1658 lt!440053 lt!440058) lt!440250)))

(declare-fun b!1330649 () Bool)

(declare-fun e!852470 () Bool)

(assert (=> b!1330649 (= e!852467 e!852470)))

(declare-fun c!218090 () Bool)

(assert (=> b!1330649 (= c!218090 (is-EmptyLang!3656 lt!440053))))

(declare-fun b!1330650 () Bool)

(declare-fun res!599561 () Bool)

(assert (=> b!1330650 (=> (not res!599561) (not e!852466))))

(assert (=> b!1330650 (= res!599561 (not call!89964))))

(declare-fun b!1330651 () Bool)

(assert (=> b!1330651 (= e!852470 (not lt!440250))))

(declare-fun b!1330652 () Bool)

(assert (=> b!1330652 (= e!852471 (nullable!1162 lt!440053))))

(declare-fun b!1330653 () Bool)

(declare-fun res!599560 () Bool)

(assert (=> b!1330653 (=> res!599560 e!852469)))

(assert (=> b!1330653 (= res!599560 (not (is-ElementMatch!3656 lt!440053)))))

(assert (=> b!1330653 (= e!852470 e!852469)))

(declare-fun b!1330654 () Bool)

(declare-fun e!852472 () Bool)

(assert (=> b!1330654 (= e!852472 e!852468)))

(declare-fun res!599564 () Bool)

(assert (=> b!1330654 (=> res!599564 e!852468)))

(assert (=> b!1330654 (= res!599564 call!89964)))

(declare-fun b!1330655 () Bool)

(declare-fun res!599562 () Bool)

(assert (=> b!1330655 (=> res!599562 e!852468)))

(assert (=> b!1330655 (= res!599562 (not (isEmpty!8067 (tail!1907 lt!440058))))))

(declare-fun b!1330656 () Bool)

(assert (=> b!1330656 (= e!852469 e!852472)))

(declare-fun res!599563 () Bool)

(assert (=> b!1330656 (=> (not res!599563) (not e!852472))))

(assert (=> b!1330656 (= res!599563 (not lt!440250))))

(declare-fun b!1330657 () Bool)

(declare-fun res!599559 () Bool)

(assert (=> b!1330657 (=> (not res!599559) (not e!852466))))

(assert (=> b!1330657 (= res!599559 (isEmpty!8067 (tail!1907 lt!440058)))))

(declare-fun bm!89959 () Bool)

(assert (=> bm!89959 (= call!89964 (isEmpty!8067 lt!440058))))

(assert (= (and d!375144 c!218089) b!1330652))

(assert (= (and d!375144 (not c!218089)) b!1330646))

(assert (= (and d!375144 c!218088) b!1330645))

(assert (= (and d!375144 (not c!218088)) b!1330649))

(assert (= (and b!1330649 c!218090) b!1330651))

(assert (= (and b!1330649 (not c!218090)) b!1330653))

(assert (= (and b!1330653 (not res!599560)) b!1330647))

(assert (= (and b!1330647 res!599558) b!1330650))

(assert (= (and b!1330650 res!599561) b!1330657))

(assert (= (and b!1330657 res!599559) b!1330648))

(assert (= (and b!1330647 (not res!599557)) b!1330656))

(assert (= (and b!1330656 res!599563) b!1330654))

(assert (= (and b!1330654 (not res!599564)) b!1330655))

(assert (= (and b!1330655 (not res!599562)) b!1330644))

(assert (= (or b!1330645 b!1330650 b!1330654) bm!89959))

(declare-fun m!1487685 () Bool)

(assert (=> bm!89959 m!1487685))

(declare-fun m!1487687 () Bool)

(assert (=> b!1330657 m!1487687))

(assert (=> b!1330657 m!1487687))

(declare-fun m!1487689 () Bool)

(assert (=> b!1330657 m!1487689))

(declare-fun m!1487691 () Bool)

(assert (=> b!1330648 m!1487691))

(declare-fun m!1487693 () Bool)

(assert (=> b!1330652 m!1487693))

(assert (=> b!1330646 m!1487691))

(assert (=> b!1330646 m!1487691))

(declare-fun m!1487695 () Bool)

(assert (=> b!1330646 m!1487695))

(assert (=> b!1330646 m!1487687))

(assert (=> b!1330646 m!1487695))

(assert (=> b!1330646 m!1487687))

(declare-fun m!1487697 () Bool)

(assert (=> b!1330646 m!1487697))

(assert (=> b!1330644 m!1487691))

(assert (=> d!375144 m!1487685))

(assert (=> d!375144 m!1487443))

(assert (=> b!1330655 m!1487687))

(assert (=> b!1330655 m!1487687))

(assert (=> b!1330655 m!1487689))

(assert (=> b!1330139 d!375144))

(declare-fun e!852478 () Bool)

(declare-fun b!1330669 () Bool)

(declare-fun lt!440253 () List!13591)

(assert (=> b!1330669 (= e!852478 (or (not (= (getSuffix!512 lt!440058 lt!440062) Nil!13525)) (= lt!440253 lt!440062)))))

(declare-fun b!1330666 () Bool)

(declare-fun e!852477 () List!13591)

(assert (=> b!1330666 (= e!852477 (getSuffix!512 lt!440058 lt!440062))))

(declare-fun b!1330667 () Bool)

(assert (=> b!1330667 (= e!852477 (Cons!13525 (h!18926 lt!440062) (++!3455 (t!118964 lt!440062) (getSuffix!512 lt!440058 lt!440062))))))

(declare-fun b!1330668 () Bool)

(declare-fun res!599570 () Bool)

(assert (=> b!1330668 (=> (not res!599570) (not e!852478))))

(assert (=> b!1330668 (= res!599570 (= (size!11018 lt!440253) (+ (size!11018 lt!440062) (size!11018 (getSuffix!512 lt!440058 lt!440062)))))))

(declare-fun d!375146 () Bool)

(assert (=> d!375146 e!852478))

(declare-fun res!599569 () Bool)

(assert (=> d!375146 (=> (not res!599569) (not e!852478))))

(assert (=> d!375146 (= res!599569 (= (content!1920 lt!440253) (set.union (content!1920 lt!440062) (content!1920 (getSuffix!512 lt!440058 lt!440062)))))))

(assert (=> d!375146 (= lt!440253 e!852477)))

(declare-fun c!218093 () Bool)

(assert (=> d!375146 (= c!218093 (is-Nil!13525 lt!440062))))

(assert (=> d!375146 (= (++!3455 lt!440062 (getSuffix!512 lt!440058 lt!440062)) lt!440253)))

(assert (= (and d!375146 c!218093) b!1330666))

(assert (= (and d!375146 (not c!218093)) b!1330667))

(assert (= (and d!375146 res!599569) b!1330668))

(assert (= (and b!1330668 res!599570) b!1330669))

(assert (=> b!1330667 m!1487215))

(declare-fun m!1487699 () Bool)

(assert (=> b!1330667 m!1487699))

(declare-fun m!1487701 () Bool)

(assert (=> b!1330668 m!1487701))

(declare-fun m!1487703 () Bool)

(assert (=> b!1330668 m!1487703))

(assert (=> b!1330668 m!1487215))

(declare-fun m!1487705 () Bool)

(assert (=> b!1330668 m!1487705))

(declare-fun m!1487707 () Bool)

(assert (=> d!375146 m!1487707))

(assert (=> d!375146 m!1487445))

(assert (=> d!375146 m!1487215))

(declare-fun m!1487709 () Bool)

(assert (=> d!375146 m!1487709))

(assert (=> b!1330182 d!375146))

(declare-fun d!375148 () Bool)

(declare-fun lt!440256 () List!13591)

(assert (=> d!375148 (= (++!3455 lt!440062 lt!440256) lt!440058)))

(declare-fun e!852481 () List!13591)

(assert (=> d!375148 (= lt!440256 e!852481)))

(declare-fun c!218096 () Bool)

(assert (=> d!375148 (= c!218096 (is-Cons!13525 lt!440062))))

(assert (=> d!375148 (>= (size!11018 lt!440058) (size!11018 lt!440062))))

(assert (=> d!375148 (= (getSuffix!512 lt!440058 lt!440062) lt!440256)))

(declare-fun b!1330674 () Bool)

(assert (=> b!1330674 (= e!852481 (getSuffix!512 (tail!1907 lt!440058) (t!118964 lt!440062)))))

(declare-fun b!1330675 () Bool)

(assert (=> b!1330675 (= e!852481 lt!440058)))

(assert (= (and d!375148 c!218096) b!1330674))

(assert (= (and d!375148 (not c!218096)) b!1330675))

(declare-fun m!1487711 () Bool)

(assert (=> d!375148 m!1487711))

(declare-fun m!1487713 () Bool)

(assert (=> d!375148 m!1487713))

(assert (=> d!375148 m!1487703))

(assert (=> b!1330674 m!1487687))

(assert (=> b!1330674 m!1487687))

(declare-fun m!1487715 () Bool)

(assert (=> b!1330674 m!1487715))

(assert (=> b!1330182 d!375148))

(declare-fun d!375150 () Bool)

(declare-fun lt!440259 () List!13591)

(declare-fun dynLambda!5961 (Int List!13591) Bool)

(assert (=> d!375150 (dynLambda!5961 lambda!55308 lt!440259)))

(declare-fun choose!8159 (Int) List!13591)

(assert (=> d!375150 (= lt!440259 (choose!8159 lambda!55308))))

(assert (=> d!375150 (Exists!814 lambda!55308)))

(assert (=> d!375150 (= (pickWitness!119 lambda!55308) lt!440259)))

(declare-fun b_lambda!39137 () Bool)

(assert (=> (not b_lambda!39137) (not d!375150)))

(declare-fun bs!331626 () Bool)

(assert (= bs!331626 d!375150))

(declare-fun m!1487717 () Bool)

(assert (=> bs!331626 m!1487717))

(declare-fun m!1487719 () Bool)

(assert (=> bs!331626 m!1487719))

(assert (=> bs!331626 m!1487211))

(assert (=> b!1330182 d!375150))

(declare-fun d!375152 () Bool)

(assert (=> d!375152 (= (inv!17872 (tag!2604 (rule!4087 t1!34))) (= (mod (str.len (value!76380 (tag!2604 (rule!4087 t1!34)))) 2) 0))))

(assert (=> b!1330181 d!375152))

(declare-fun d!375154 () Bool)

(declare-fun res!599571 () Bool)

(declare-fun e!852482 () Bool)

(assert (=> d!375154 (=> (not res!599571) (not e!852482))))

(assert (=> d!375154 (= res!599571 (semiInverseModEq!883 (toChars!3432 (transformation!2342 (rule!4087 t1!34))) (toValue!3573 (transformation!2342 (rule!4087 t1!34)))))))

(assert (=> d!375154 (= (inv!17876 (transformation!2342 (rule!4087 t1!34))) e!852482)))

(declare-fun b!1330676 () Bool)

(assert (=> b!1330676 (= e!852482 (equivClasses!842 (toChars!3432 (transformation!2342 (rule!4087 t1!34))) (toValue!3573 (transformation!2342 (rule!4087 t1!34)))))))

(assert (= (and d!375154 res!599571) b!1330676))

(declare-fun m!1487721 () Bool)

(assert (=> d!375154 m!1487721))

(declare-fun m!1487723 () Bool)

(assert (=> b!1330676 m!1487723))

(assert (=> b!1330181 d!375154))

(declare-fun d!375156 () Bool)

(declare-fun lt!440303 () Bool)

(declare-fun e!852516 () Bool)

(assert (=> d!375156 (= lt!440303 e!852516)))

(declare-fun res!599620 () Bool)

(assert (=> d!375156 (=> (not res!599620) (not e!852516))))

(assert (=> d!375156 (= res!599620 (= (list!5129 (_1!7472 (lex!872 thiss!19762 rules!2550 (print!811 thiss!19762 (singletonSeq!937 t2!34))))) (list!5129 (singletonSeq!937 t2!34))))))

(declare-fun e!852517 () Bool)

(assert (=> d!375156 (= lt!440303 e!852517)))

(declare-fun res!599621 () Bool)

(assert (=> d!375156 (=> (not res!599621) (not e!852517))))

(declare-fun lt!440302 () tuple2!13172)

(assert (=> d!375156 (= res!599621 (= (size!11022 (_1!7472 lt!440302)) 1))))

(assert (=> d!375156 (= lt!440302 (lex!872 thiss!19762 rules!2550 (print!811 thiss!19762 (singletonSeq!937 t2!34))))))

(assert (=> d!375156 (not (isEmpty!8061 rules!2550))))

(assert (=> d!375156 (= (rulesProduceIndividualToken!1006 thiss!19762 rules!2550 t2!34) lt!440303)))

(declare-fun b!1330747 () Bool)

(declare-fun res!599622 () Bool)

(assert (=> b!1330747 (=> (not res!599622) (not e!852517))))

(declare-fun apply!3141 (BalanceConc!8850 Int) Token!4346)

(assert (=> b!1330747 (= res!599622 (= (apply!3141 (_1!7472 lt!440302) 0) t2!34))))

(declare-fun b!1330748 () Bool)

(assert (=> b!1330748 (= e!852517 (isEmpty!8060 (_2!7472 lt!440302)))))

(declare-fun b!1330749 () Bool)

(assert (=> b!1330749 (= e!852516 (isEmpty!8060 (_2!7472 (lex!872 thiss!19762 rules!2550 (print!811 thiss!19762 (singletonSeq!937 t2!34))))))))

(assert (= (and d!375156 res!599621) b!1330747))

(assert (= (and b!1330747 res!599622) b!1330748))

(assert (= (and d!375156 res!599620) b!1330749))

(assert (=> d!375156 m!1487171))

(declare-fun m!1487835 () Bool)

(assert (=> d!375156 m!1487835))

(assert (=> d!375156 m!1487171))

(declare-fun m!1487841 () Bool)

(assert (=> d!375156 m!1487841))

(assert (=> d!375156 m!1487173))

(declare-fun m!1487843 () Bool)

(assert (=> d!375156 m!1487843))

(declare-fun m!1487845 () Bool)

(assert (=> d!375156 m!1487845))

(assert (=> d!375156 m!1487171))

(assert (=> d!375156 m!1487173))

(assert (=> d!375156 m!1487243))

(declare-fun m!1487847 () Bool)

(assert (=> b!1330747 m!1487847))

(declare-fun m!1487851 () Bool)

(assert (=> b!1330748 m!1487851))

(assert (=> b!1330749 m!1487171))

(assert (=> b!1330749 m!1487171))

(assert (=> b!1330749 m!1487173))

(assert (=> b!1330749 m!1487173))

(assert (=> b!1330749 m!1487843))

(declare-fun m!1487859 () Bool)

(assert (=> b!1330749 m!1487859))

(assert (=> b!1330160 d!375156))

(declare-fun b!1330750 () Bool)

(declare-fun e!852520 () Bool)

(assert (=> b!1330750 (= e!852520 (not (= (head!2340 lt!440043) (c!218011 (regex!2342 (rule!4087 t2!34))))))))

(declare-fun b!1330751 () Bool)

(declare-fun e!852519 () Bool)

(declare-fun lt!440304 () Bool)

(declare-fun call!89969 () Bool)

(assert (=> b!1330751 (= e!852519 (= lt!440304 call!89969))))

(declare-fun b!1330752 () Bool)

(declare-fun e!852523 () Bool)

(assert (=> b!1330752 (= e!852523 (matchR!1658 (derivativeStep!914 (regex!2342 (rule!4087 t2!34)) (head!2340 lt!440043)) (tail!1907 lt!440043)))))

(declare-fun b!1330753 () Bool)

(declare-fun res!599623 () Bool)

(declare-fun e!852521 () Bool)

(assert (=> b!1330753 (=> res!599623 e!852521)))

(declare-fun e!852518 () Bool)

(assert (=> b!1330753 (= res!599623 e!852518)))

(declare-fun res!599624 () Bool)

(assert (=> b!1330753 (=> (not res!599624) (not e!852518))))

(assert (=> b!1330753 (= res!599624 lt!440304)))

(declare-fun b!1330754 () Bool)

(assert (=> b!1330754 (= e!852518 (= (head!2340 lt!440043) (c!218011 (regex!2342 (rule!4087 t2!34)))))))

(declare-fun d!375180 () Bool)

(assert (=> d!375180 e!852519))

(declare-fun c!218107 () Bool)

(assert (=> d!375180 (= c!218107 (is-EmptyExpr!3656 (regex!2342 (rule!4087 t2!34))))))

(assert (=> d!375180 (= lt!440304 e!852523)))

(declare-fun c!218108 () Bool)

(assert (=> d!375180 (= c!218108 (isEmpty!8067 lt!440043))))

(assert (=> d!375180 (validRegex!1572 (regex!2342 (rule!4087 t2!34)))))

(assert (=> d!375180 (= (matchR!1658 (regex!2342 (rule!4087 t2!34)) lt!440043) lt!440304)))

(declare-fun b!1330755 () Bool)

(declare-fun e!852522 () Bool)

(assert (=> b!1330755 (= e!852519 e!852522)))

(declare-fun c!218109 () Bool)

(assert (=> b!1330755 (= c!218109 (is-EmptyLang!3656 (regex!2342 (rule!4087 t2!34))))))

(declare-fun b!1330756 () Bool)

(declare-fun res!599627 () Bool)

(assert (=> b!1330756 (=> (not res!599627) (not e!852518))))

(assert (=> b!1330756 (= res!599627 (not call!89969))))

(declare-fun b!1330757 () Bool)

(assert (=> b!1330757 (= e!852522 (not lt!440304))))

(declare-fun b!1330758 () Bool)

(assert (=> b!1330758 (= e!852523 (nullable!1162 (regex!2342 (rule!4087 t2!34))))))

(declare-fun b!1330759 () Bool)

(declare-fun res!599626 () Bool)

(assert (=> b!1330759 (=> res!599626 e!852521)))

(assert (=> b!1330759 (= res!599626 (not (is-ElementMatch!3656 (regex!2342 (rule!4087 t2!34)))))))

(assert (=> b!1330759 (= e!852522 e!852521)))

(declare-fun b!1330760 () Bool)

(declare-fun e!852524 () Bool)

(assert (=> b!1330760 (= e!852524 e!852520)))

(declare-fun res!599630 () Bool)

(assert (=> b!1330760 (=> res!599630 e!852520)))

(assert (=> b!1330760 (= res!599630 call!89969)))

(declare-fun b!1330761 () Bool)

(declare-fun res!599628 () Bool)

(assert (=> b!1330761 (=> res!599628 e!852520)))

(assert (=> b!1330761 (= res!599628 (not (isEmpty!8067 (tail!1907 lt!440043))))))

(declare-fun b!1330762 () Bool)

(assert (=> b!1330762 (= e!852521 e!852524)))

(declare-fun res!599629 () Bool)

(assert (=> b!1330762 (=> (not res!599629) (not e!852524))))

(assert (=> b!1330762 (= res!599629 (not lt!440304))))

(declare-fun b!1330763 () Bool)

(declare-fun res!599625 () Bool)

(assert (=> b!1330763 (=> (not res!599625) (not e!852518))))

(assert (=> b!1330763 (= res!599625 (isEmpty!8067 (tail!1907 lt!440043)))))

(declare-fun bm!89964 () Bool)

(assert (=> bm!89964 (= call!89969 (isEmpty!8067 lt!440043))))

(assert (= (and d!375180 c!218108) b!1330758))

(assert (= (and d!375180 (not c!218108)) b!1330752))

(assert (= (and d!375180 c!218107) b!1330751))

(assert (= (and d!375180 (not c!218107)) b!1330755))

(assert (= (and b!1330755 c!218109) b!1330757))

(assert (= (and b!1330755 (not c!218109)) b!1330759))

(assert (= (and b!1330759 (not res!599626)) b!1330753))

(assert (= (and b!1330753 res!599624) b!1330756))

(assert (= (and b!1330756 res!599627) b!1330763))

(assert (= (and b!1330763 res!599625) b!1330754))

(assert (= (and b!1330753 (not res!599623)) b!1330762))

(assert (= (and b!1330762 res!599629) b!1330760))

(assert (= (and b!1330760 (not res!599630)) b!1330761))

(assert (= (and b!1330761 (not res!599628)) b!1330750))

(assert (= (or b!1330751 b!1330756 b!1330760) bm!89964))

(declare-fun m!1487861 () Bool)

(assert (=> bm!89964 m!1487861))

(declare-fun m!1487863 () Bool)

(assert (=> b!1330763 m!1487863))

(assert (=> b!1330763 m!1487863))

(declare-fun m!1487865 () Bool)

(assert (=> b!1330763 m!1487865))

(assert (=> b!1330754 m!1487185))

(declare-fun m!1487867 () Bool)

(assert (=> b!1330758 m!1487867))

(assert (=> b!1330752 m!1487185))

(assert (=> b!1330752 m!1487185))

(declare-fun m!1487869 () Bool)

(assert (=> b!1330752 m!1487869))

(assert (=> b!1330752 m!1487863))

(assert (=> b!1330752 m!1487869))

(assert (=> b!1330752 m!1487863))

(declare-fun m!1487871 () Bool)

(assert (=> b!1330752 m!1487871))

(assert (=> b!1330750 m!1487185))

(assert (=> d!375180 m!1487861))

(assert (=> d!375180 m!1487413))

(assert (=> b!1330761 m!1487863))

(assert (=> b!1330761 m!1487863))

(assert (=> b!1330761 m!1487865))

(assert (=> b!1330159 d!375180))

(declare-fun d!375182 () Bool)

(declare-fun lt!440307 () Int)

(assert (=> d!375182 (= lt!440307 (size!11018 (list!5128 lt!440049)))))

(declare-fun size!11025 (Conc!4454) Int)

(assert (=> d!375182 (= lt!440307 (size!11025 (c!218010 lt!440049)))))

(assert (=> d!375182 (= (size!11014 lt!440049) lt!440307)))

(declare-fun bs!331639 () Bool)

(assert (= bs!331639 d!375182))

(assert (=> bs!331639 m!1487197))

(assert (=> bs!331639 m!1487197))

(declare-fun m!1487873 () Bool)

(assert (=> bs!331639 m!1487873))

(declare-fun m!1487875 () Bool)

(assert (=> bs!331639 m!1487875))

(assert (=> b!1330138 d!375182))

(declare-fun b!1330779 () Bool)

(declare-fun e!852536 () Bool)

(assert (=> b!1330779 (= e!852536 (inv!16 (value!76381 t1!34)))))

(declare-fun d!375184 () Bool)

(declare-fun c!218117 () Bool)

(assert (=> d!375184 (= c!218117 (is-IntegerValue!7296 (value!76381 t1!34)))))

(assert (=> d!375184 (= (inv!21 (value!76381 t1!34)) e!852536)))

(declare-fun b!1330780 () Bool)

(declare-fun res!599634 () Bool)

(declare-fun e!852534 () Bool)

(assert (=> b!1330780 (=> res!599634 e!852534)))

(assert (=> b!1330780 (= res!599634 (not (is-IntegerValue!7298 (value!76381 t1!34))))))

(declare-fun e!852535 () Bool)

(assert (=> b!1330780 (= e!852535 e!852534)))

(declare-fun b!1330781 () Bool)

(assert (=> b!1330781 (= e!852534 (inv!15 (value!76381 t1!34)))))

(declare-fun b!1330782 () Bool)

(assert (=> b!1330782 (= e!852536 e!852535)))

(declare-fun c!218116 () Bool)

(assert (=> b!1330782 (= c!218116 (is-IntegerValue!7297 (value!76381 t1!34)))))

(declare-fun b!1330783 () Bool)

(assert (=> b!1330783 (= e!852535 (inv!17 (value!76381 t1!34)))))

(assert (= (and d!375184 c!218117) b!1330779))

(assert (= (and d!375184 (not c!218117)) b!1330782))

(assert (= (and b!1330782 c!218116) b!1330783))

(assert (= (and b!1330782 (not c!218116)) b!1330780))

(assert (= (and b!1330780 (not res!599634)) b!1330781))

(declare-fun m!1487883 () Bool)

(assert (=> b!1330779 m!1487883))

(declare-fun m!1487885 () Bool)

(assert (=> b!1330781 m!1487885))

(declare-fun m!1487889 () Bool)

(assert (=> b!1330783 m!1487889))

(assert (=> b!1330180 d!375184))

(declare-fun d!375188 () Bool)

(declare-fun prefixMatchZipperSequence!195 (Regex!3656 BalanceConc!8848) Bool)

(declare-fun ++!3457 (BalanceConc!8848 BalanceConc!8848) BalanceConc!8848)

(declare-fun singletonSeq!939 (C!7602) BalanceConc!8848)

(assert (=> d!375188 (= (separableTokensPredicate!320 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!195 (rulesRegex!227 thiss!19762 rules!2550) (++!3457 (charsOf!1314 t1!34) (singletonSeq!939 (apply!3136 (charsOf!1314 t2!34) 0))))))))

(declare-fun bs!331642 () Bool)

(assert (= bs!331642 d!375188))

(assert (=> bs!331642 m!1487195))

(assert (=> bs!331642 m!1487201))

(declare-fun m!1487913 () Bool)

(assert (=> bs!331642 m!1487913))

(declare-fun m!1487915 () Bool)

(assert (=> bs!331642 m!1487915))

(assert (=> bs!331642 m!1487201))

(declare-fun m!1487917 () Bool)

(assert (=> bs!331642 m!1487917))

(declare-fun m!1487919 () Bool)

(assert (=> bs!331642 m!1487919))

(assert (=> bs!331642 m!1487183))

(assert (=> bs!331642 m!1487913))

(assert (=> bs!331642 m!1487195))

(assert (=> bs!331642 m!1487915))

(assert (=> bs!331642 m!1487917))

(assert (=> bs!331642 m!1487183))

(assert (=> b!1330142 d!375188))

(declare-fun d!375204 () Bool)

(declare-fun lt!440316 () Bool)

(assert (=> d!375204 (= lt!440316 (set.member lt!440050 (content!1920 lt!440058)))))

(declare-fun e!852553 () Bool)

(assert (=> d!375204 (= lt!440316 e!852553)))

(declare-fun res!599640 () Bool)

(assert (=> d!375204 (=> (not res!599640) (not e!852553))))

(assert (=> d!375204 (= res!599640 (is-Cons!13525 lt!440058))))

(assert (=> d!375204 (= (contains!2442 lt!440058 lt!440050) lt!440316)))

(declare-fun b!1330812 () Bool)

(declare-fun e!852554 () Bool)

(assert (=> b!1330812 (= e!852553 e!852554)))

(declare-fun res!599639 () Bool)

(assert (=> b!1330812 (=> res!599639 e!852554)))

(assert (=> b!1330812 (= res!599639 (= (h!18926 lt!440058) lt!440050))))

(declare-fun b!1330813 () Bool)

(assert (=> b!1330813 (= e!852554 (contains!2442 (t!118964 lt!440058) lt!440050))))

(assert (= (and d!375204 res!599640) b!1330812))

(assert (= (and b!1330812 (not res!599639)) b!1330813))

(assert (=> d!375204 m!1487415))

(declare-fun m!1487921 () Bool)

(assert (=> d!375204 m!1487921))

(declare-fun m!1487923 () Bool)

(assert (=> b!1330813 m!1487923))

(assert (=> b!1330184 d!375204))

(declare-fun d!375206 () Bool)

(declare-fun lt!440317 () Bool)

(assert (=> d!375206 (= lt!440317 (set.member (rule!4087 t1!34) (content!1921 rules!2550)))))

(declare-fun e!852555 () Bool)

(assert (=> d!375206 (= lt!440317 e!852555)))

(declare-fun res!599641 () Bool)

(assert (=> d!375206 (=> (not res!599641) (not e!852555))))

(assert (=> d!375206 (= res!599641 (is-Cons!13528 rules!2550))))

(assert (=> d!375206 (= (contains!2444 rules!2550 (rule!4087 t1!34)) lt!440317)))

(declare-fun b!1330814 () Bool)

(declare-fun e!852556 () Bool)

(assert (=> b!1330814 (= e!852555 e!852556)))

(declare-fun res!599642 () Bool)

(assert (=> b!1330814 (=> res!599642 e!852556)))

(assert (=> b!1330814 (= res!599642 (= (h!18929 rules!2550) (rule!4087 t1!34)))))

(declare-fun b!1330815 () Bool)

(assert (=> b!1330815 (= e!852556 (contains!2444 (t!118967 rules!2550) (rule!4087 t1!34)))))

(assert (= (and d!375206 res!599641) b!1330814))

(assert (= (and b!1330814 (not res!599642)) b!1330815))

(assert (=> d!375206 m!1487427))

(declare-fun m!1487925 () Bool)

(assert (=> d!375206 m!1487925))

(declare-fun m!1487927 () Bool)

(assert (=> b!1330815 m!1487927))

(assert (=> b!1330161 d!375206))

(declare-fun d!375208 () Bool)

(declare-fun lt!440320 () Bool)

(assert (=> d!375208 (= lt!440320 (isEmpty!8067 (list!5128 (_2!7472 lt!440046))))))

(declare-fun isEmpty!8071 (Conc!4454) Bool)

(assert (=> d!375208 (= lt!440320 (isEmpty!8071 (c!218010 (_2!7472 lt!440046))))))

(assert (=> d!375208 (= (isEmpty!8060 (_2!7472 lt!440046)) lt!440320)))

(declare-fun bs!331643 () Bool)

(assert (= bs!331643 d!375208))

(declare-fun m!1487929 () Bool)

(assert (=> bs!331643 m!1487929))

(assert (=> bs!331643 m!1487929))

(declare-fun m!1487931 () Bool)

(assert (=> bs!331643 m!1487931))

(declare-fun m!1487933 () Bool)

(assert (=> bs!331643 m!1487933))

(assert (=> b!1330140 d!375208))

(declare-fun d!375210 () Bool)

(assert (=> d!375210 (= (isEmpty!8061 rules!2550) (is-Nil!13528 rules!2550))))

(assert (=> b!1330166 d!375210))

(declare-fun e!852558 () Bool)

(declare-fun b!1330819 () Bool)

(declare-fun lt!440321 () List!13591)

(assert (=> b!1330819 (= e!852558 (or (not (= (Cons!13525 lt!440050 Nil!13525) Nil!13525)) (= lt!440321 lt!440057)))))

(declare-fun b!1330816 () Bool)

(declare-fun e!852557 () List!13591)

(assert (=> b!1330816 (= e!852557 (Cons!13525 lt!440050 Nil!13525))))

(declare-fun b!1330817 () Bool)

(assert (=> b!1330817 (= e!852557 (Cons!13525 (h!18926 lt!440057) (++!3455 (t!118964 lt!440057) (Cons!13525 lt!440050 Nil!13525))))))

(declare-fun b!1330818 () Bool)

(declare-fun res!599644 () Bool)

(assert (=> b!1330818 (=> (not res!599644) (not e!852558))))

(assert (=> b!1330818 (= res!599644 (= (size!11018 lt!440321) (+ (size!11018 lt!440057) (size!11018 (Cons!13525 lt!440050 Nil!13525)))))))

(declare-fun d!375212 () Bool)

(assert (=> d!375212 e!852558))

(declare-fun res!599643 () Bool)

(assert (=> d!375212 (=> (not res!599643) (not e!852558))))

(assert (=> d!375212 (= res!599643 (= (content!1920 lt!440321) (set.union (content!1920 lt!440057) (content!1920 (Cons!13525 lt!440050 Nil!13525)))))))

(assert (=> d!375212 (= lt!440321 e!852557)))

(declare-fun c!218131 () Bool)

(assert (=> d!375212 (= c!218131 (is-Nil!13525 lt!440057))))

(assert (=> d!375212 (= (++!3455 lt!440057 (Cons!13525 lt!440050 Nil!13525)) lt!440321)))

(assert (= (and d!375212 c!218131) b!1330816))

(assert (= (and d!375212 (not c!218131)) b!1330817))

(assert (= (and d!375212 res!599643) b!1330818))

(assert (= (and b!1330818 res!599644) b!1330819))

(declare-fun m!1487935 () Bool)

(assert (=> b!1330817 m!1487935))

(declare-fun m!1487937 () Bool)

(assert (=> b!1330818 m!1487937))

(assert (=> b!1330818 m!1487529))

(declare-fun m!1487939 () Bool)

(assert (=> b!1330818 m!1487939))

(declare-fun m!1487941 () Bool)

(assert (=> d!375212 m!1487941))

(declare-fun m!1487943 () Bool)

(assert (=> d!375212 m!1487943))

(declare-fun m!1487945 () Bool)

(assert (=> d!375212 m!1487945))

(assert (=> b!1330165 d!375212))

(declare-fun d!375214 () Bool)

(declare-fun c!218134 () Bool)

(assert (=> d!375214 (= c!218134 (isEmpty!8067 lt!440062))))

(declare-fun e!852561 () Bool)

(assert (=> d!375214 (= (prefixMatch!169 lt!440053 lt!440062) e!852561)))

(declare-fun b!1330824 () Bool)

(declare-fun lostCause!290 (Regex!3656) Bool)

(assert (=> b!1330824 (= e!852561 (not (lostCause!290 lt!440053)))))

(declare-fun b!1330825 () Bool)

(assert (=> b!1330825 (= e!852561 (prefixMatch!169 (derivativeStep!914 lt!440053 (head!2340 lt!440062)) (tail!1907 lt!440062)))))

(assert (= (and d!375214 c!218134) b!1330824))

(assert (= (and d!375214 (not c!218134)) b!1330825))

(declare-fun m!1487947 () Bool)

(assert (=> d!375214 m!1487947))

(declare-fun m!1487949 () Bool)

(assert (=> b!1330824 m!1487949))

(declare-fun m!1487951 () Bool)

(assert (=> b!1330825 m!1487951))

(assert (=> b!1330825 m!1487951))

(declare-fun m!1487953 () Bool)

(assert (=> b!1330825 m!1487953))

(declare-fun m!1487955 () Bool)

(assert (=> b!1330825 m!1487955))

(assert (=> b!1330825 m!1487953))

(assert (=> b!1330825 m!1487955))

(declare-fun m!1487957 () Bool)

(assert (=> b!1330825 m!1487957))

(assert (=> b!1330165 d!375214))

(declare-fun d!375216 () Bool)

(declare-fun lt!440324 () BalanceConc!8848)

(assert (=> d!375216 (= (list!5128 lt!440324) (originalCharacters!3204 t1!34))))

(declare-fun dynLambda!5965 (Int TokenValue!2432) BalanceConc!8848)

(assert (=> d!375216 (= lt!440324 (dynLambda!5965 (toChars!3432 (transformation!2342 (rule!4087 t1!34))) (value!76381 t1!34)))))

(assert (=> d!375216 (= (charsOf!1314 t1!34) lt!440324)))

(declare-fun b_lambda!39141 () Bool)

(assert (=> (not b_lambda!39141) (not d!375216)))

(declare-fun t!118978 () Bool)

(declare-fun tb!70305 () Bool)

(assert (=> (and b!1330145 (= (toChars!3432 (transformation!2342 (rule!4087 t2!34))) (toChars!3432 (transformation!2342 (rule!4087 t1!34)))) t!118978) tb!70305))

(declare-fun b!1330830 () Bool)

(declare-fun e!852564 () Bool)

(declare-fun tp!385163 () Bool)

(declare-fun inv!17879 (Conc!4454) Bool)

(assert (=> b!1330830 (= e!852564 (and (inv!17879 (c!218010 (dynLambda!5965 (toChars!3432 (transformation!2342 (rule!4087 t1!34))) (value!76381 t1!34)))) tp!385163))))

(declare-fun result!85366 () Bool)

(declare-fun inv!17880 (BalanceConc!8848) Bool)

(assert (=> tb!70305 (= result!85366 (and (inv!17880 (dynLambda!5965 (toChars!3432 (transformation!2342 (rule!4087 t1!34))) (value!76381 t1!34))) e!852564))))

(assert (= tb!70305 b!1330830))

(declare-fun m!1487959 () Bool)

(assert (=> b!1330830 m!1487959))

(declare-fun m!1487961 () Bool)

(assert (=> tb!70305 m!1487961))

(assert (=> d!375216 t!118978))

(declare-fun b_and!88883 () Bool)

(assert (= b_and!88861 (and (=> t!118978 result!85366) b_and!88883)))

(declare-fun t!118980 () Bool)

(declare-fun tb!70307 () Bool)

(assert (=> (and b!1330179 (= (toChars!3432 (transformation!2342 (rule!4087 t1!34))) (toChars!3432 (transformation!2342 (rule!4087 t1!34)))) t!118980) tb!70307))

(declare-fun result!85370 () Bool)

(assert (= result!85370 result!85366))

(assert (=> d!375216 t!118980))

(declare-fun b_and!88885 () Bool)

(assert (= b_and!88865 (and (=> t!118980 result!85370) b_and!88885)))

(declare-fun t!118982 () Bool)

(declare-fun tb!70309 () Bool)

(assert (=> (and b!1330162 (= (toChars!3432 (transformation!2342 (h!18929 rules!2550))) (toChars!3432 (transformation!2342 (rule!4087 t1!34)))) t!118982) tb!70309))

(declare-fun result!85372 () Bool)

(assert (= result!85372 result!85366))

(assert (=> d!375216 t!118982))

(declare-fun b_and!88887 () Bool)

(assert (= b_and!88869 (and (=> t!118982 result!85372) b_and!88887)))

(declare-fun m!1487963 () Bool)

(assert (=> d!375216 m!1487963))

(declare-fun m!1487965 () Bool)

(assert (=> d!375216 m!1487965))

(assert (=> b!1330165 d!375216))

(declare-fun d!375218 () Bool)

(declare-fun lt!440325 () C!7602)

(assert (=> d!375218 (= lt!440325 (apply!3138 (list!5128 lt!440054) 0))))

(assert (=> d!375218 (= lt!440325 (apply!3139 (c!218010 lt!440054) 0))))

(declare-fun e!852565 () Bool)

(assert (=> d!375218 e!852565))

(declare-fun res!599645 () Bool)

(assert (=> d!375218 (=> (not res!599645) (not e!852565))))

(assert (=> d!375218 (= res!599645 (<= 0 0))))

(assert (=> d!375218 (= (apply!3136 lt!440054 0) lt!440325)))

(declare-fun b!1330831 () Bool)

(assert (=> b!1330831 (= e!852565 (< 0 (size!11014 lt!440054)))))

(assert (= (and d!375218 res!599645) b!1330831))

(assert (=> d!375218 m!1487179))

(assert (=> d!375218 m!1487179))

(declare-fun m!1487967 () Bool)

(assert (=> d!375218 m!1487967))

(declare-fun m!1487969 () Bool)

(assert (=> d!375218 m!1487969))

(assert (=> b!1330831 m!1487181))

(assert (=> b!1330165 d!375218))

(declare-fun bs!331645 () Bool)

(declare-fun d!375220 () Bool)

(assert (= bs!331645 (and d!375220 b!1330155)))

(declare-fun lambda!55377 () Int)

(assert (=> bs!331645 (= lambda!55377 lambda!55309)))

(declare-fun lt!440329 () Unit!19638)

(declare-fun lemma!84 (List!13594 LexerInterface!2037 List!13594) Unit!19638)

(assert (=> d!375220 (= lt!440329 (lemma!84 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!92 (List!13595) Regex!3656)

(assert (=> d!375220 (= (rulesRegex!227 thiss!19762 rules!2550) (generalisedUnion!92 (map!2980 rules!2550 lambda!55377)))))

(declare-fun bs!331646 () Bool)

(assert (= bs!331646 d!375220))

(declare-fun m!1487983 () Bool)

(assert (=> bs!331646 m!1487983))

(declare-fun m!1487985 () Bool)

(assert (=> bs!331646 m!1487985))

(assert (=> bs!331646 m!1487985))

(declare-fun m!1487987 () Bool)

(assert (=> bs!331646 m!1487987))

(assert (=> b!1330165 d!375220))

(declare-fun d!375226 () Bool)

(assert (=> d!375226 (= (list!5128 lt!440049) (list!5132 (c!218010 lt!440049)))))

(declare-fun bs!331647 () Bool)

(assert (= bs!331647 d!375226))

(declare-fun m!1487989 () Bool)

(assert (=> bs!331647 m!1487989))

(assert (=> b!1330165 d!375226))

(declare-fun bs!331648 () Bool)

(declare-fun d!375228 () Bool)

(assert (= bs!331648 (and d!375228 b!1330144)))

(declare-fun lambda!55380 () Int)

(assert (=> bs!331648 (not (= lambda!55380 lambda!55311))))

(declare-fun bs!331649 () Bool)

(assert (= bs!331649 (and d!375228 b!1330156)))

(assert (=> bs!331649 (not (= lambda!55380 lambda!55312))))

(assert (=> d!375228 true))

(declare-fun order!8151 () Int)

(declare-fun dynLambda!5966 (Int Int) Int)

(assert (=> d!375228 (< (dynLambda!5966 order!8151 lambda!55311) (dynLambda!5966 order!8151 lambda!55380))))

(assert (=> d!375228 (= (exists!386 rules!2550 lambda!55311) (not (forall!3324 rules!2550 lambda!55380)))))

(declare-fun bs!331650 () Bool)

(assert (= bs!331650 d!375228))

(declare-fun m!1487991 () Bool)

(assert (=> bs!331650 m!1487991))

(assert (=> b!1330144 d!375228))

(declare-fun bs!331651 () Bool)

(declare-fun d!375230 () Bool)

(assert (= bs!331651 (and d!375230 b!1330144)))

(declare-fun lambda!55383 () Int)

(assert (=> bs!331651 (not (= lambda!55383 lambda!55311))))

(declare-fun bs!331652 () Bool)

(assert (= bs!331652 (and d!375230 b!1330156)))

(assert (=> bs!331652 (not (= lambda!55383 lambda!55312))))

(declare-fun bs!331653 () Bool)

(assert (= bs!331653 (and d!375230 d!375228)))

(assert (=> bs!331653 (not (= lambda!55383 lambda!55380))))

(assert (=> d!375230 true))

(assert (=> d!375230 true))

(declare-fun order!8153 () Int)

(declare-fun dynLambda!5967 (Int Int) Int)

(assert (=> d!375230 (< (dynLambda!5967 order!8153 lambda!55309) (dynLambda!5966 order!8151 lambda!55383))))

(assert (=> d!375230 (exists!386 rules!2550 lambda!55383)))

(declare-fun lt!440332 () Unit!19638)

(declare-fun choose!8162 (List!13594 Int Regex!3656) Unit!19638)

(assert (=> d!375230 (= lt!440332 (choose!8162 rules!2550 lambda!55309 lt!440041))))

(assert (=> d!375230 (contains!2443 (map!2980 rules!2550 lambda!55309) lt!440041)))

(assert (=> d!375230 (= (lemmaMapContains!85 rules!2550 lambda!55309 lt!440041) lt!440332)))

(declare-fun bs!331654 () Bool)

(assert (= bs!331654 d!375230))

(declare-fun m!1488017 () Bool)

(assert (=> bs!331654 m!1488017))

(declare-fun m!1488019 () Bool)

(assert (=> bs!331654 m!1488019))

(assert (=> bs!331654 m!1487103))

(assert (=> bs!331654 m!1487103))

(assert (=> bs!331654 m!1487105))

(assert (=> b!1330144 d!375230))

(declare-fun d!375236 () Bool)

(declare-fun lt!440334 () Bool)

(declare-fun e!852576 () Bool)

(assert (=> d!375236 (= lt!440334 e!852576)))

(declare-fun res!599656 () Bool)

(assert (=> d!375236 (=> (not res!599656) (not e!852576))))

(assert (=> d!375236 (= res!599656 (= (list!5129 (_1!7472 (lex!872 thiss!19762 rules!2550 (print!811 thiss!19762 (singletonSeq!937 t1!34))))) (list!5129 (singletonSeq!937 t1!34))))))

(declare-fun e!852577 () Bool)

(assert (=> d!375236 (= lt!440334 e!852577)))

(declare-fun res!599657 () Bool)

(assert (=> d!375236 (=> (not res!599657) (not e!852577))))

(declare-fun lt!440333 () tuple2!13172)

(assert (=> d!375236 (= res!599657 (= (size!11022 (_1!7472 lt!440333)) 1))))

(assert (=> d!375236 (= lt!440333 (lex!872 thiss!19762 rules!2550 (print!811 thiss!19762 (singletonSeq!937 t1!34))))))

(assert (=> d!375236 (not (isEmpty!8061 rules!2550))))

(assert (=> d!375236 (= (rulesProduceIndividualToken!1006 thiss!19762 rules!2550 t1!34) lt!440334)))

(declare-fun b!1330854 () Bool)

(declare-fun res!599658 () Bool)

(assert (=> b!1330854 (=> (not res!599658) (not e!852577))))

(assert (=> b!1330854 (= res!599658 (= (apply!3141 (_1!7472 lt!440333) 0) t1!34))))

(declare-fun b!1330855 () Bool)

(assert (=> b!1330855 (= e!852577 (isEmpty!8060 (_2!7472 lt!440333)))))

(declare-fun b!1330856 () Bool)

(assert (=> b!1330856 (= e!852576 (isEmpty!8060 (_2!7472 (lex!872 thiss!19762 rules!2550 (print!811 thiss!19762 (singletonSeq!937 t1!34))))))))

(assert (= (and d!375236 res!599657) b!1330854))

(assert (= (and b!1330854 res!599658) b!1330855))

(assert (= (and d!375236 res!599656) b!1330856))

(assert (=> d!375236 m!1487227))

(assert (=> d!375236 m!1487597))

(assert (=> d!375236 m!1487227))

(declare-fun m!1488021 () Bool)

(assert (=> d!375236 m!1488021))

(assert (=> d!375236 m!1487229))

(declare-fun m!1488023 () Bool)

(assert (=> d!375236 m!1488023))

(declare-fun m!1488025 () Bool)

(assert (=> d!375236 m!1488025))

(assert (=> d!375236 m!1487227))

(assert (=> d!375236 m!1487229))

(assert (=> d!375236 m!1487243))

(declare-fun m!1488027 () Bool)

(assert (=> b!1330854 m!1488027))

(declare-fun m!1488029 () Bool)

(assert (=> b!1330855 m!1488029))

(assert (=> b!1330856 m!1487227))

(assert (=> b!1330856 m!1487227))

(assert (=> b!1330856 m!1487229))

(assert (=> b!1330856 m!1487229))

(assert (=> b!1330856 m!1488023))

(declare-fun m!1488031 () Bool)

(assert (=> b!1330856 m!1488031))

(assert (=> b!1330143 d!375236))

(declare-fun d!375238 () Bool)

(declare-fun res!599663 () Bool)

(declare-fun e!852580 () Bool)

(assert (=> d!375238 (=> (not res!599663) (not e!852580))))

(assert (=> d!375238 (= res!599663 (not (isEmpty!8067 (originalCharacters!3204 t1!34))))))

(assert (=> d!375238 (= (inv!17875 t1!34) e!852580)))

(declare-fun b!1330861 () Bool)

(declare-fun res!599664 () Bool)

(assert (=> b!1330861 (=> (not res!599664) (not e!852580))))

(assert (=> b!1330861 (= res!599664 (= (originalCharacters!3204 t1!34) (list!5128 (dynLambda!5965 (toChars!3432 (transformation!2342 (rule!4087 t1!34))) (value!76381 t1!34)))))))

(declare-fun b!1330862 () Bool)

(assert (=> b!1330862 (= e!852580 (= (size!11015 t1!34) (size!11018 (originalCharacters!3204 t1!34))))))

(assert (= (and d!375238 res!599663) b!1330861))

(assert (= (and b!1330861 res!599664) b!1330862))

(declare-fun b_lambda!39147 () Bool)

(assert (=> (not b_lambda!39147) (not b!1330861)))

(assert (=> b!1330861 t!118978))

(declare-fun b_and!88901 () Bool)

(assert (= b_and!88883 (and (=> t!118978 result!85366) b_and!88901)))

(assert (=> b!1330861 t!118980))

(declare-fun b_and!88903 () Bool)

(assert (= b_and!88885 (and (=> t!118980 result!85370) b_and!88903)))

(assert (=> b!1330861 t!118982))

(declare-fun b_and!88905 () Bool)

(assert (= b_and!88887 (and (=> t!118982 result!85372) b_and!88905)))

(declare-fun m!1488033 () Bool)

(assert (=> d!375238 m!1488033))

(assert (=> b!1330861 m!1487965))

(assert (=> b!1330861 m!1487965))

(declare-fun m!1488035 () Bool)

(assert (=> b!1330861 m!1488035))

(declare-fun m!1488037 () Bool)

(assert (=> b!1330862 m!1488037))

(assert (=> start!118284 d!375238))

(declare-fun d!375240 () Bool)

(declare-fun res!599665 () Bool)

(declare-fun e!852581 () Bool)

(assert (=> d!375240 (=> (not res!599665) (not e!852581))))

(assert (=> d!375240 (= res!599665 (not (isEmpty!8067 (originalCharacters!3204 t2!34))))))

(assert (=> d!375240 (= (inv!17875 t2!34) e!852581)))

(declare-fun b!1330863 () Bool)

(declare-fun res!599666 () Bool)

(assert (=> b!1330863 (=> (not res!599666) (not e!852581))))

(assert (=> b!1330863 (= res!599666 (= (originalCharacters!3204 t2!34) (list!5128 (dynLambda!5965 (toChars!3432 (transformation!2342 (rule!4087 t2!34))) (value!76381 t2!34)))))))

(declare-fun b!1330864 () Bool)

(assert (=> b!1330864 (= e!852581 (= (size!11015 t2!34) (size!11018 (originalCharacters!3204 t2!34))))))

(assert (= (and d!375240 res!599665) b!1330863))

(assert (= (and b!1330863 res!599666) b!1330864))

(declare-fun b_lambda!39149 () Bool)

(assert (=> (not b_lambda!39149) (not b!1330863)))

(declare-fun t!118996 () Bool)

(declare-fun tb!70323 () Bool)

(assert (=> (and b!1330145 (= (toChars!3432 (transformation!2342 (rule!4087 t2!34))) (toChars!3432 (transformation!2342 (rule!4087 t2!34)))) t!118996) tb!70323))

(declare-fun b!1330865 () Bool)

(declare-fun e!852582 () Bool)

(declare-fun tp!385168 () Bool)

(assert (=> b!1330865 (= e!852582 (and (inv!17879 (c!218010 (dynLambda!5965 (toChars!3432 (transformation!2342 (rule!4087 t2!34))) (value!76381 t2!34)))) tp!385168))))

(declare-fun result!85388 () Bool)

(assert (=> tb!70323 (= result!85388 (and (inv!17880 (dynLambda!5965 (toChars!3432 (transformation!2342 (rule!4087 t2!34))) (value!76381 t2!34))) e!852582))))

(assert (= tb!70323 b!1330865))

(declare-fun m!1488039 () Bool)

(assert (=> b!1330865 m!1488039))

(declare-fun m!1488041 () Bool)

(assert (=> tb!70323 m!1488041))

(assert (=> b!1330863 t!118996))

(declare-fun b_and!88907 () Bool)

(assert (= b_and!88901 (and (=> t!118996 result!85388) b_and!88907)))

(declare-fun tb!70325 () Bool)

(declare-fun t!118998 () Bool)

(assert (=> (and b!1330179 (= (toChars!3432 (transformation!2342 (rule!4087 t1!34))) (toChars!3432 (transformation!2342 (rule!4087 t2!34)))) t!118998) tb!70325))

(declare-fun result!85390 () Bool)

(assert (= result!85390 result!85388))

(assert (=> b!1330863 t!118998))

(declare-fun b_and!88909 () Bool)

(assert (= b_and!88903 (and (=> t!118998 result!85390) b_and!88909)))

(declare-fun t!119000 () Bool)

(declare-fun tb!70327 () Bool)

(assert (=> (and b!1330162 (= (toChars!3432 (transformation!2342 (h!18929 rules!2550))) (toChars!3432 (transformation!2342 (rule!4087 t2!34)))) t!119000) tb!70327))

(declare-fun result!85392 () Bool)

(assert (= result!85392 result!85388))

(assert (=> b!1330863 t!119000))

(declare-fun b_and!88911 () Bool)

(assert (= b_and!88905 (and (=> t!119000 result!85392) b_and!88911)))

(declare-fun m!1488043 () Bool)

(assert (=> d!375240 m!1488043))

(declare-fun m!1488045 () Bool)

(assert (=> b!1330863 m!1488045))

(assert (=> b!1330863 m!1488045))

(declare-fun m!1488047 () Bool)

(assert (=> b!1330863 m!1488047))

(declare-fun m!1488049 () Bool)

(assert (=> b!1330864 m!1488049))

(assert (=> start!118284 d!375240))

(declare-fun d!375242 () Bool)

(declare-fun lt!440335 () Bool)

(assert (=> d!375242 (= lt!440335 (isEmpty!8067 (list!5128 (_2!7472 lt!440039))))))

(assert (=> d!375242 (= lt!440335 (isEmpty!8071 (c!218010 (_2!7472 lt!440039))))))

(assert (=> d!375242 (= (isEmpty!8060 (_2!7472 lt!440039)) lt!440335)))

(declare-fun bs!331655 () Bool)

(assert (= bs!331655 d!375242))

(declare-fun m!1488051 () Bool)

(assert (=> bs!331655 m!1488051))

(assert (=> bs!331655 m!1488051))

(declare-fun m!1488053 () Bool)

(assert (=> bs!331655 m!1488053))

(declare-fun m!1488055 () Bool)

(assert (=> bs!331655 m!1488055))

(assert (=> b!1330186 d!375242))

(declare-fun d!375244 () Bool)

(assert (=> d!375244 (= (list!5129 (_1!7472 lt!440046)) (list!5133 (c!218012 (_1!7472 lt!440046))))))

(declare-fun bs!331656 () Bool)

(assert (= bs!331656 d!375244))

(declare-fun m!1488057 () Bool)

(assert (=> bs!331656 m!1488057))

(assert (=> b!1330185 d!375244))

(declare-fun b!1330866 () Bool)

(declare-fun res!599667 () Bool)

(declare-fun e!852583 () Bool)

(assert (=> b!1330866 (=> (not res!599667) (not e!852583))))

(declare-fun lt!440336 () tuple2!13172)

(assert (=> b!1330866 (= res!599667 (= (list!5129 (_1!7472 lt!440336)) (_1!7473 (lexList!575 thiss!19762 rules!2550 (list!5128 lt!440037)))))))

(declare-fun b!1330867 () Bool)

(declare-fun e!852585 () Bool)

(assert (=> b!1330867 (= e!852585 (not (isEmpty!8066 (_1!7472 lt!440336))))))

(declare-fun b!1330868 () Bool)

(declare-fun e!852584 () Bool)

(assert (=> b!1330868 (= e!852584 e!852585)))

(declare-fun res!599668 () Bool)

(assert (=> b!1330868 (= res!599668 (< (size!11014 (_2!7472 lt!440336)) (size!11014 lt!440037)))))

(assert (=> b!1330868 (=> (not res!599668) (not e!852585))))

(declare-fun d!375246 () Bool)

(assert (=> d!375246 e!852583))

(declare-fun res!599669 () Bool)

(assert (=> d!375246 (=> (not res!599669) (not e!852583))))

(assert (=> d!375246 (= res!599669 e!852584)))

(declare-fun c!218135 () Bool)

(assert (=> d!375246 (= c!218135 (> (size!11022 (_1!7472 lt!440336)) 0))))

(assert (=> d!375246 (= lt!440336 (lexTailRecV2!380 thiss!19762 rules!2550 lt!440037 (BalanceConc!8849 Empty!4454) lt!440037 (BalanceConc!8851 Empty!4455)))))

(assert (=> d!375246 (= (lex!872 thiss!19762 rules!2550 lt!440037) lt!440336)))

(declare-fun b!1330869 () Bool)

(assert (=> b!1330869 (= e!852584 (= (_2!7472 lt!440336) lt!440037))))

(declare-fun b!1330870 () Bool)

(assert (=> b!1330870 (= e!852583 (= (list!5128 (_2!7472 lt!440336)) (_2!7473 (lexList!575 thiss!19762 rules!2550 (list!5128 lt!440037)))))))

(assert (= (and d!375246 c!218135) b!1330868))

(assert (= (and d!375246 (not c!218135)) b!1330869))

(assert (= (and b!1330868 res!599668) b!1330867))

(assert (= (and d!375246 res!599669) b!1330866))

(assert (= (and b!1330866 res!599667) b!1330870))

(declare-fun m!1488059 () Bool)

(assert (=> b!1330868 m!1488059))

(declare-fun m!1488061 () Bool)

(assert (=> b!1330868 m!1488061))

(declare-fun m!1488063 () Bool)

(assert (=> b!1330866 m!1488063))

(assert (=> b!1330866 m!1487239))

(assert (=> b!1330866 m!1487239))

(assert (=> b!1330866 m!1487241))

(declare-fun m!1488065 () Bool)

(assert (=> b!1330870 m!1488065))

(assert (=> b!1330870 m!1487239))

(assert (=> b!1330870 m!1487239))

(assert (=> b!1330870 m!1487241))

(declare-fun m!1488067 () Bool)

(assert (=> d!375246 m!1488067))

(declare-fun m!1488069 () Bool)

(assert (=> d!375246 m!1488069))

(declare-fun m!1488071 () Bool)

(assert (=> b!1330867 m!1488071))

(assert (=> b!1330185 d!375246))

(declare-fun d!375248 () Bool)

(declare-fun lt!440337 () BalanceConc!8848)

(assert (=> d!375248 (= (list!5128 lt!440337) (printList!575 thiss!19762 (list!5129 (singletonSeq!937 t2!34))))))

(assert (=> d!375248 (= lt!440337 (printTailRec!557 thiss!19762 (singletonSeq!937 t2!34) 0 (BalanceConc!8849 Empty!4454)))))

(assert (=> d!375248 (= (print!811 thiss!19762 (singletonSeq!937 t2!34)) lt!440337)))

(declare-fun bs!331657 () Bool)

(assert (= bs!331657 d!375248))

(declare-fun m!1488073 () Bool)

(assert (=> bs!331657 m!1488073))

(assert (=> bs!331657 m!1487171))

(assert (=> bs!331657 m!1487835))

(assert (=> bs!331657 m!1487835))

(declare-fun m!1488075 () Bool)

(assert (=> bs!331657 m!1488075))

(assert (=> bs!331657 m!1487171))

(declare-fun m!1488077 () Bool)

(assert (=> bs!331657 m!1488077))

(assert (=> b!1330185 d!375248))

(declare-fun d!375250 () Bool)

(declare-fun e!852586 () Bool)

(assert (=> d!375250 e!852586))

(declare-fun res!599670 () Bool)

(assert (=> d!375250 (=> (not res!599670) (not e!852586))))

(declare-fun lt!440338 () BalanceConc!8850)

(assert (=> d!375250 (= res!599670 (= (list!5129 lt!440338) (Cons!13527 t2!34 Nil!13527)))))

(assert (=> d!375250 (= lt!440338 (singleton!401 t2!34))))

(assert (=> d!375250 (= (singletonSeq!937 t2!34) lt!440338)))

(declare-fun b!1330871 () Bool)

(assert (=> b!1330871 (= e!852586 (isBalanced!1295 (c!218012 lt!440338)))))

(assert (= (and d!375250 res!599670) b!1330871))

(declare-fun m!1488079 () Bool)

(assert (=> d!375250 m!1488079))

(declare-fun m!1488081 () Bool)

(assert (=> d!375250 m!1488081))

(declare-fun m!1488083 () Bool)

(assert (=> b!1330871 m!1488083))

(assert (=> b!1330185 d!375250))

(declare-fun d!375252 () Bool)

(declare-fun lt!440339 () Bool)

(assert (=> d!375252 (= lt!440339 (set.member lt!440033 (content!1921 rules!2550)))))

(declare-fun e!852587 () Bool)

(assert (=> d!375252 (= lt!440339 e!852587)))

(declare-fun res!599671 () Bool)

(assert (=> d!375252 (=> (not res!599671) (not e!852587))))

(assert (=> d!375252 (= res!599671 (is-Cons!13528 rules!2550))))

(assert (=> d!375252 (= (contains!2444 rules!2550 lt!440033) lt!440339)))

(declare-fun b!1330872 () Bool)

(declare-fun e!852588 () Bool)

(assert (=> b!1330872 (= e!852587 e!852588)))

(declare-fun res!599672 () Bool)

(assert (=> b!1330872 (=> res!599672 e!852588)))

(assert (=> b!1330872 (= res!599672 (= (h!18929 rules!2550) lt!440033))))

(declare-fun b!1330873 () Bool)

(assert (=> b!1330873 (= e!852588 (contains!2444 (t!118967 rules!2550) lt!440033))))

(assert (= (and d!375252 res!599671) b!1330872))

(assert (= (and b!1330872 (not res!599672)) b!1330873))

(assert (=> d!375252 m!1487427))

(declare-fun m!1488085 () Bool)

(assert (=> d!375252 m!1488085))

(declare-fun m!1488087 () Bool)

(assert (=> b!1330873 m!1488087))

(assert (=> b!1330164 d!375252))

(declare-fun d!375254 () Bool)

(assert (=> d!375254 (= (inv!17872 (tag!2604 (h!18929 rules!2550))) (= (mod (str.len (value!76380 (tag!2604 (h!18929 rules!2550)))) 2) 0))))

(assert (=> b!1330147 d!375254))

(declare-fun d!375256 () Bool)

(declare-fun res!599673 () Bool)

(declare-fun e!852589 () Bool)

(assert (=> d!375256 (=> (not res!599673) (not e!852589))))

(assert (=> d!375256 (= res!599673 (semiInverseModEq!883 (toChars!3432 (transformation!2342 (h!18929 rules!2550))) (toValue!3573 (transformation!2342 (h!18929 rules!2550)))))))

(assert (=> d!375256 (= (inv!17876 (transformation!2342 (h!18929 rules!2550))) e!852589)))

(declare-fun b!1330874 () Bool)

(assert (=> b!1330874 (= e!852589 (equivClasses!842 (toChars!3432 (transformation!2342 (h!18929 rules!2550))) (toValue!3573 (transformation!2342 (h!18929 rules!2550)))))))

(assert (= (and d!375256 res!599673) b!1330874))

(declare-fun m!1488089 () Bool)

(assert (=> d!375256 m!1488089))

(declare-fun m!1488091 () Bool)

(assert (=> b!1330874 m!1488091))

(assert (=> b!1330147 d!375256))

(declare-fun b!1330875 () Bool)

(declare-fun e!852590 () tuple2!13174)

(assert (=> b!1330875 (= e!852590 (tuple2!13175 Nil!13527 (list!5128 lt!440056)))))

(declare-fun b!1330876 () Bool)

(declare-fun e!852591 () Bool)

(declare-fun lt!440340 () tuple2!13174)

(assert (=> b!1330876 (= e!852591 (not (isEmpty!8064 (_1!7473 lt!440340))))))

(declare-fun b!1330877 () Bool)

(declare-fun e!852592 () Bool)

(assert (=> b!1330877 (= e!852592 e!852591)))

(declare-fun res!599674 () Bool)

(assert (=> b!1330877 (= res!599674 (< (size!11018 (_2!7473 lt!440340)) (size!11018 (list!5128 lt!440056))))))

(assert (=> b!1330877 (=> (not res!599674) (not e!852591))))

(declare-fun d!375258 () Bool)

(assert (=> d!375258 e!852592))

(declare-fun c!218136 () Bool)

(assert (=> d!375258 (= c!218136 (> (size!11019 (_1!7473 lt!440340)) 0))))

(assert (=> d!375258 (= lt!440340 e!852590)))

(declare-fun c!218137 () Bool)

(declare-fun lt!440341 () Option!2613)

(assert (=> d!375258 (= c!218137 (is-Some!2612 lt!440341))))

(assert (=> d!375258 (= lt!440341 (maxPrefix!1047 thiss!19762 rules!2550 (list!5128 lt!440056)))))

(assert (=> d!375258 (= (lexList!575 thiss!19762 rules!2550 (list!5128 lt!440056)) lt!440340)))

(declare-fun b!1330878 () Bool)

(assert (=> b!1330878 (= e!852592 (= (_2!7473 lt!440340) (list!5128 lt!440056)))))

(declare-fun b!1330879 () Bool)

(declare-fun lt!440342 () tuple2!13174)

(assert (=> b!1330879 (= e!852590 (tuple2!13175 (Cons!13527 (_1!7474 (v!21233 lt!440341)) (_1!7473 lt!440342)) (_2!7473 lt!440342)))))

(assert (=> b!1330879 (= lt!440342 (lexList!575 thiss!19762 rules!2550 (_2!7474 (v!21233 lt!440341))))))

(assert (= (and d!375258 c!218137) b!1330879))

(assert (= (and d!375258 (not c!218137)) b!1330875))

(assert (= (and d!375258 c!218136) b!1330877))

(assert (= (and d!375258 (not c!218136)) b!1330878))

(assert (= (and b!1330877 res!599674) b!1330876))

(declare-fun m!1488093 () Bool)

(assert (=> b!1330876 m!1488093))

(declare-fun m!1488095 () Bool)

(assert (=> b!1330877 m!1488095))

(assert (=> b!1330877 m!1487111))

(declare-fun m!1488097 () Bool)

(assert (=> b!1330877 m!1488097))

(declare-fun m!1488099 () Bool)

(assert (=> d!375258 m!1488099))

(assert (=> d!375258 m!1487111))

(declare-fun m!1488101 () Bool)

(assert (=> d!375258 m!1488101))

(declare-fun m!1488103 () Bool)

(assert (=> b!1330879 m!1488103))

(assert (=> b!1330168 d!375258))

(declare-fun d!375260 () Bool)

(assert (=> d!375260 (= (list!5128 lt!440056) (list!5132 (c!218010 lt!440056)))))

(declare-fun bs!331658 () Bool)

(assert (= bs!331658 d!375260))

(declare-fun m!1488105 () Bool)

(assert (=> bs!331658 m!1488105))

(assert (=> b!1330168 d!375260))

(declare-fun b!1330880 () Bool)

(declare-fun e!852593 () Option!2613)

(declare-fun call!89982 () Option!2613)

(assert (=> b!1330880 (= e!852593 call!89982)))

(declare-fun b!1330882 () Bool)

(declare-fun res!599676 () Bool)

(declare-fun e!852594 () Bool)

(assert (=> b!1330882 (=> (not res!599676) (not e!852594))))

(declare-fun lt!440344 () Option!2613)

(assert (=> b!1330882 (= res!599676 (matchR!1658 (regex!2342 (rule!4087 (_1!7474 (get!4289 lt!440344)))) (list!5128 (charsOf!1314 (_1!7474 (get!4289 lt!440344))))))))

(declare-fun b!1330883 () Bool)

(assert (=> b!1330883 (= e!852594 (contains!2444 rules!2550 (rule!4087 (_1!7474 (get!4289 lt!440344)))))))

(declare-fun b!1330884 () Bool)

(declare-fun res!599680 () Bool)

(assert (=> b!1330884 (=> (not res!599680) (not e!852594))))

(assert (=> b!1330884 (= res!599680 (= (list!5128 (charsOf!1314 (_1!7474 (get!4289 lt!440344)))) (originalCharacters!3204 (_1!7474 (get!4289 lt!440344)))))))

(declare-fun bm!89977 () Bool)

(assert (=> bm!89977 (= call!89982 (maxPrefixOneRule!594 thiss!19762 (h!18929 rules!2550) lt!440043))))

(declare-fun b!1330885 () Bool)

(declare-fun res!599677 () Bool)

(assert (=> b!1330885 (=> (not res!599677) (not e!852594))))

(assert (=> b!1330885 (= res!599677 (= (value!76381 (_1!7474 (get!4289 lt!440344))) (apply!3140 (transformation!2342 (rule!4087 (_1!7474 (get!4289 lt!440344)))) (seqFromList!1612 (originalCharacters!3204 (_1!7474 (get!4289 lt!440344)))))))))

(declare-fun b!1330886 () Bool)

(declare-fun e!852595 () Bool)

(assert (=> b!1330886 (= e!852595 e!852594)))

(declare-fun res!599675 () Bool)

(assert (=> b!1330886 (=> (not res!599675) (not e!852594))))

(assert (=> b!1330886 (= res!599675 (isDefined!2192 lt!440344))))

(declare-fun b!1330887 () Bool)

(declare-fun res!599681 () Bool)

(assert (=> b!1330887 (=> (not res!599681) (not e!852594))))

(assert (=> b!1330887 (= res!599681 (< (size!11018 (_2!7474 (get!4289 lt!440344))) (size!11018 lt!440043)))))

(declare-fun b!1330888 () Bool)

(declare-fun lt!440346 () Option!2613)

(declare-fun lt!440343 () Option!2613)

(assert (=> b!1330888 (= e!852593 (ite (and (is-None!2612 lt!440346) (is-None!2612 lt!440343)) None!2612 (ite (is-None!2612 lt!440343) lt!440346 (ite (is-None!2612 lt!440346) lt!440343 (ite (>= (size!11015 (_1!7474 (v!21233 lt!440346))) (size!11015 (_1!7474 (v!21233 lt!440343)))) lt!440346 lt!440343)))))))

(assert (=> b!1330888 (= lt!440346 call!89982)))

(assert (=> b!1330888 (= lt!440343 (maxPrefix!1047 thiss!19762 (t!118967 rules!2550) lt!440043))))

(declare-fun b!1330881 () Bool)

(declare-fun res!599679 () Bool)

(assert (=> b!1330881 (=> (not res!599679) (not e!852594))))

(assert (=> b!1330881 (= res!599679 (= (++!3455 (list!5128 (charsOf!1314 (_1!7474 (get!4289 lt!440344)))) (_2!7474 (get!4289 lt!440344))) lt!440043))))

(declare-fun d!375262 () Bool)

(assert (=> d!375262 e!852595))

(declare-fun res!599678 () Bool)

(assert (=> d!375262 (=> res!599678 e!852595)))

(assert (=> d!375262 (= res!599678 (isEmpty!8065 lt!440344))))

(assert (=> d!375262 (= lt!440344 e!852593)))

(declare-fun c!218138 () Bool)

(assert (=> d!375262 (= c!218138 (and (is-Cons!13528 rules!2550) (is-Nil!13528 (t!118967 rules!2550))))))

(declare-fun lt!440347 () Unit!19638)

(declare-fun lt!440345 () Unit!19638)

(assert (=> d!375262 (= lt!440347 lt!440345)))

(assert (=> d!375262 (isPrefix!1089 lt!440043 lt!440043)))

(assert (=> d!375262 (= lt!440345 (lemmaIsPrefixRefl!768 lt!440043 lt!440043))))

(assert (=> d!375262 (rulesValidInductive!741 thiss!19762 rules!2550)))

(assert (=> d!375262 (= (maxPrefix!1047 thiss!19762 rules!2550 lt!440043) lt!440344)))

(assert (= (and d!375262 c!218138) b!1330880))

(assert (= (and d!375262 (not c!218138)) b!1330888))

(assert (= (or b!1330880 b!1330888) bm!89977))

(assert (= (and d!375262 (not res!599678)) b!1330886))

(assert (= (and b!1330886 res!599675) b!1330884))

(assert (= (and b!1330884 res!599680) b!1330887))

(assert (= (and b!1330887 res!599681) b!1330881))

(assert (= (and b!1330881 res!599679) b!1330885))

(assert (= (and b!1330885 res!599677) b!1330882))

(assert (= (and b!1330882 res!599676) b!1330883))

(declare-fun m!1488107 () Bool)

(assert (=> b!1330881 m!1488107))

(declare-fun m!1488109 () Bool)

(assert (=> b!1330881 m!1488109))

(assert (=> b!1330881 m!1488109))

(declare-fun m!1488111 () Bool)

(assert (=> b!1330881 m!1488111))

(assert (=> b!1330881 m!1488111))

(declare-fun m!1488113 () Bool)

(assert (=> b!1330881 m!1488113))

(declare-fun m!1488115 () Bool)

(assert (=> b!1330886 m!1488115))

(assert (=> b!1330885 m!1488107))

(declare-fun m!1488117 () Bool)

(assert (=> b!1330885 m!1488117))

(assert (=> b!1330885 m!1488117))

(declare-fun m!1488119 () Bool)

(assert (=> b!1330885 m!1488119))

(declare-fun m!1488121 () Bool)

(assert (=> d!375262 m!1488121))

(declare-fun m!1488123 () Bool)

(assert (=> d!375262 m!1488123))

(declare-fun m!1488125 () Bool)

(assert (=> d!375262 m!1488125))

(assert (=> d!375262 m!1487525))

(assert (=> b!1330884 m!1488107))

(assert (=> b!1330884 m!1488109))

(assert (=> b!1330884 m!1488109))

(assert (=> b!1330884 m!1488111))

(assert (=> b!1330887 m!1488107))

(declare-fun m!1488127 () Bool)

(assert (=> b!1330887 m!1488127))

(declare-fun m!1488129 () Bool)

(assert (=> b!1330887 m!1488129))

(assert (=> b!1330882 m!1488107))

(assert (=> b!1330882 m!1488109))

(assert (=> b!1330882 m!1488109))

(assert (=> b!1330882 m!1488111))

(assert (=> b!1330882 m!1488111))

(declare-fun m!1488131 () Bool)

(assert (=> b!1330882 m!1488131))

(assert (=> b!1330883 m!1488107))

(declare-fun m!1488133 () Bool)

(assert (=> b!1330883 m!1488133))

(declare-fun m!1488135 () Bool)

(assert (=> b!1330888 m!1488135))

(declare-fun m!1488137 () Bool)

(assert (=> bm!89977 m!1488137))

(assert (=> b!1330167 d!375262))

(declare-fun d!375264 () Bool)

(assert (=> d!375264 (= (list!5128 lt!440054) (list!5132 (c!218010 lt!440054)))))

(declare-fun bs!331659 () Bool)

(assert (= bs!331659 d!375264))

(declare-fun m!1488139 () Bool)

(assert (=> bs!331659 m!1488139))

(assert (=> b!1330167 d!375264))

(declare-fun d!375266 () Bool)

(declare-fun lt!440348 () Int)

(assert (=> d!375266 (= lt!440348 (size!11018 (list!5128 lt!440054)))))

(assert (=> d!375266 (= lt!440348 (size!11025 (c!218010 lt!440054)))))

(assert (=> d!375266 (= (size!11014 lt!440054) lt!440348)))

(declare-fun bs!331660 () Bool)

(assert (= bs!331660 d!375266))

(assert (=> bs!331660 m!1487179))

(assert (=> bs!331660 m!1487179))

(declare-fun m!1488141 () Bool)

(assert (=> bs!331660 m!1488141))

(declare-fun m!1488143 () Bool)

(assert (=> bs!331660 m!1488143))

(assert (=> b!1330146 d!375266))

(declare-fun d!375268 () Bool)

(declare-fun lt!440349 () BalanceConc!8848)

(assert (=> d!375268 (= (list!5128 lt!440349) (originalCharacters!3204 t2!34))))

(assert (=> d!375268 (= lt!440349 (dynLambda!5965 (toChars!3432 (transformation!2342 (rule!4087 t2!34))) (value!76381 t2!34)))))

(assert (=> d!375268 (= (charsOf!1314 t2!34) lt!440349)))

(declare-fun b_lambda!39151 () Bool)

(assert (=> (not b_lambda!39151) (not d!375268)))

(assert (=> d!375268 t!118996))

(declare-fun b_and!88913 () Bool)

(assert (= b_and!88907 (and (=> t!118996 result!85388) b_and!88913)))

(assert (=> d!375268 t!118998))

(declare-fun b_and!88915 () Bool)

(assert (= b_and!88909 (and (=> t!118998 result!85390) b_and!88915)))

(assert (=> d!375268 t!119000))

(declare-fun b_and!88917 () Bool)

(assert (= b_and!88911 (and (=> t!119000 result!85392) b_and!88917)))

(declare-fun m!1488145 () Bool)

(assert (=> d!375268 m!1488145))

(assert (=> d!375268 m!1488045))

(assert (=> b!1330146 d!375268))

(declare-fun b!1330901 () Bool)

(declare-fun e!852598 () Bool)

(declare-fun tp!385182 () Bool)

(assert (=> b!1330901 (= e!852598 tp!385182)))

(assert (=> b!1330181 (= tp!385113 e!852598)))

(declare-fun b!1330900 () Bool)

(declare-fun tp!385179 () Bool)

(declare-fun tp!385180 () Bool)

(assert (=> b!1330900 (= e!852598 (and tp!385179 tp!385180))))

(declare-fun b!1330902 () Bool)

(declare-fun tp!385183 () Bool)

(declare-fun tp!385181 () Bool)

(assert (=> b!1330902 (= e!852598 (and tp!385183 tp!385181))))

(declare-fun b!1330899 () Bool)

(declare-fun tp_is_empty!6657 () Bool)

(assert (=> b!1330899 (= e!852598 tp_is_empty!6657)))

(assert (= (and b!1330181 (is-ElementMatch!3656 (regex!2342 (rule!4087 t1!34)))) b!1330899))

(assert (= (and b!1330181 (is-Concat!6088 (regex!2342 (rule!4087 t1!34)))) b!1330900))

(assert (= (and b!1330181 (is-Star!3656 (regex!2342 (rule!4087 t1!34)))) b!1330901))

(assert (= (and b!1330181 (is-Union!3656 (regex!2342 (rule!4087 t1!34)))) b!1330902))

(declare-fun b!1330907 () Bool)

(declare-fun e!852601 () Bool)

(declare-fun tp!385186 () Bool)

(assert (=> b!1330907 (= e!852601 (and tp_is_empty!6657 tp!385186))))

(assert (=> b!1330170 (= tp!385123 e!852601)))

(assert (= (and b!1330170 (is-Cons!13525 (originalCharacters!3204 t2!34))) b!1330907))

(declare-fun b!1330908 () Bool)

(declare-fun e!852602 () Bool)

(declare-fun tp!385187 () Bool)

(assert (=> b!1330908 (= e!852602 (and tp_is_empty!6657 tp!385187))))

(assert (=> b!1330180 (= tp!385120 e!852602)))

(assert (= (and b!1330180 (is-Cons!13525 (originalCharacters!3204 t1!34))) b!1330908))

(declare-fun b!1330911 () Bool)

(declare-fun e!852603 () Bool)

(declare-fun tp!385191 () Bool)

(assert (=> b!1330911 (= e!852603 tp!385191)))

(assert (=> b!1330148 (= tp!385118 e!852603)))

(declare-fun b!1330910 () Bool)

(declare-fun tp!385188 () Bool)

(declare-fun tp!385189 () Bool)

(assert (=> b!1330910 (= e!852603 (and tp!385188 tp!385189))))

(declare-fun b!1330912 () Bool)

(declare-fun tp!385192 () Bool)

(declare-fun tp!385190 () Bool)

(assert (=> b!1330912 (= e!852603 (and tp!385192 tp!385190))))

(declare-fun b!1330909 () Bool)

(assert (=> b!1330909 (= e!852603 tp_is_empty!6657)))

(assert (= (and b!1330148 (is-ElementMatch!3656 (regex!2342 (rule!4087 t2!34)))) b!1330909))

(assert (= (and b!1330148 (is-Concat!6088 (regex!2342 (rule!4087 t2!34)))) b!1330910))

(assert (= (and b!1330148 (is-Star!3656 (regex!2342 (rule!4087 t2!34)))) b!1330911))

(assert (= (and b!1330148 (is-Union!3656 (regex!2342 (rule!4087 t2!34)))) b!1330912))

(declare-fun b!1330915 () Bool)

(declare-fun e!852604 () Bool)

(declare-fun tp!385196 () Bool)

(assert (=> b!1330915 (= e!852604 tp!385196)))

(assert (=> b!1330147 (= tp!385122 e!852604)))

(declare-fun b!1330914 () Bool)

(declare-fun tp!385193 () Bool)

(declare-fun tp!385194 () Bool)

(assert (=> b!1330914 (= e!852604 (and tp!385193 tp!385194))))

(declare-fun b!1330916 () Bool)

(declare-fun tp!385197 () Bool)

(declare-fun tp!385195 () Bool)

(assert (=> b!1330916 (= e!852604 (and tp!385197 tp!385195))))

(declare-fun b!1330913 () Bool)

(assert (=> b!1330913 (= e!852604 tp_is_empty!6657)))

(assert (= (and b!1330147 (is-ElementMatch!3656 (regex!2342 (h!18929 rules!2550)))) b!1330913))

(assert (= (and b!1330147 (is-Concat!6088 (regex!2342 (h!18929 rules!2550)))) b!1330914))

(assert (= (and b!1330147 (is-Star!3656 (regex!2342 (h!18929 rules!2550)))) b!1330915))

(assert (= (and b!1330147 (is-Union!3656 (regex!2342 (h!18929 rules!2550)))) b!1330916))

(declare-fun b!1330927 () Bool)

(declare-fun b_free!32215 () Bool)

(declare-fun b_next!32919 () Bool)

(assert (=> b!1330927 (= b_free!32215 (not b_next!32919))))

(declare-fun tp!385208 () Bool)

(declare-fun b_and!88919 () Bool)

(assert (=> b!1330927 (= tp!385208 b_and!88919)))

(declare-fun b_free!32217 () Bool)

(declare-fun b_next!32921 () Bool)

(assert (=> b!1330927 (= b_free!32217 (not b_next!32921))))

(declare-fun t!119002 () Bool)

(declare-fun tb!70329 () Bool)

(assert (=> (and b!1330927 (= (toChars!3432 (transformation!2342 (h!18929 (t!118967 rules!2550)))) (toChars!3432 (transformation!2342 (rule!4087 t1!34)))) t!119002) tb!70329))

(declare-fun result!85400 () Bool)

(assert (= result!85400 result!85366))

(assert (=> d!375216 t!119002))

(assert (=> b!1330861 t!119002))

(declare-fun tb!70331 () Bool)

(declare-fun t!119004 () Bool)

(assert (=> (and b!1330927 (= (toChars!3432 (transformation!2342 (h!18929 (t!118967 rules!2550)))) (toChars!3432 (transformation!2342 (rule!4087 t2!34)))) t!119004) tb!70331))

(declare-fun result!85402 () Bool)

(assert (= result!85402 result!85388))

(assert (=> b!1330863 t!119004))

(assert (=> d!375268 t!119004))

(declare-fun tp!385206 () Bool)

(declare-fun b_and!88921 () Bool)

(assert (=> b!1330927 (= tp!385206 (and (=> t!119002 result!85400) (=> t!119004 result!85402) b_and!88921))))

(declare-fun e!852613 () Bool)

(assert (=> b!1330927 (= e!852613 (and tp!385208 tp!385206))))

(declare-fun e!852614 () Bool)

(declare-fun b!1330926 () Bool)

(declare-fun tp!385209 () Bool)

(assert (=> b!1330926 (= e!852614 (and tp!385209 (inv!17872 (tag!2604 (h!18929 (t!118967 rules!2550)))) (inv!17876 (transformation!2342 (h!18929 (t!118967 rules!2550)))) e!852613))))

(declare-fun b!1330925 () Bool)

(declare-fun e!852615 () Bool)

(declare-fun tp!385207 () Bool)

(assert (=> b!1330925 (= e!852615 (and e!852614 tp!385207))))

(assert (=> b!1330141 (= tp!385117 e!852615)))

(assert (= b!1330926 b!1330927))

(assert (= b!1330925 b!1330926))

(assert (= (and b!1330141 (is-Cons!13528 (t!118967 rules!2550))) b!1330925))

(declare-fun m!1488147 () Bool)

(assert (=> b!1330926 m!1488147))

(declare-fun m!1488149 () Bool)

(assert (=> b!1330926 m!1488149))

(declare-fun b_lambda!39153 () Bool)

(assert (= b_lambda!39149 (or (and b!1330145 b_free!32193) (and b!1330179 b_free!32197 (= (toChars!3432 (transformation!2342 (rule!4087 t1!34))) (toChars!3432 (transformation!2342 (rule!4087 t2!34))))) (and b!1330162 b_free!32201 (= (toChars!3432 (transformation!2342 (h!18929 rules!2550))) (toChars!3432 (transformation!2342 (rule!4087 t2!34))))) (and b!1330927 b_free!32217 (= (toChars!3432 (transformation!2342 (h!18929 (t!118967 rules!2550)))) (toChars!3432 (transformation!2342 (rule!4087 t2!34))))) b_lambda!39153)))

(declare-fun b_lambda!39155 () Bool)

(assert (= b_lambda!39133 (or b!1330156 b_lambda!39155)))

(declare-fun bs!331661 () Bool)

(declare-fun d!375270 () Bool)

(assert (= bs!331661 (and d!375270 b!1330156)))

(declare-fun ruleValid!576 (LexerInterface!2037 Rule!4484) Bool)

(assert (=> bs!331661 (= (dynLambda!5960 lambda!55312 (rule!4087 t1!34)) (ruleValid!576 thiss!19762 (rule!4087 t1!34)))))

(declare-fun m!1488151 () Bool)

(assert (=> bs!331661 m!1488151))

(assert (=> d!375140 d!375270))

(declare-fun b_lambda!39157 () Bool)

(assert (= b_lambda!39131 (or b!1330156 b_lambda!39157)))

(declare-fun bs!331662 () Bool)

(declare-fun d!375272 () Bool)

(assert (= bs!331662 (and d!375272 b!1330156)))

(assert (=> bs!331662 (= (dynLambda!5960 lambda!55312 (rule!4087 t2!34)) (ruleValid!576 thiss!19762 (rule!4087 t2!34)))))

(declare-fun m!1488153 () Bool)

(assert (=> bs!331662 m!1488153))

(assert (=> d!375138 d!375272))

(declare-fun b_lambda!39159 () Bool)

(assert (= b_lambda!39147 (or (and b!1330145 b_free!32193 (= (toChars!3432 (transformation!2342 (rule!4087 t2!34))) (toChars!3432 (transformation!2342 (rule!4087 t1!34))))) (and b!1330179 b_free!32197) (and b!1330162 b_free!32201 (= (toChars!3432 (transformation!2342 (h!18929 rules!2550))) (toChars!3432 (transformation!2342 (rule!4087 t1!34))))) (and b!1330927 b_free!32217 (= (toChars!3432 (transformation!2342 (h!18929 (t!118967 rules!2550)))) (toChars!3432 (transformation!2342 (rule!4087 t1!34))))) b_lambda!39159)))

(declare-fun b_lambda!39161 () Bool)

(assert (= b_lambda!39141 (or (and b!1330145 b_free!32193 (= (toChars!3432 (transformation!2342 (rule!4087 t2!34))) (toChars!3432 (transformation!2342 (rule!4087 t1!34))))) (and b!1330179 b_free!32197) (and b!1330162 b_free!32201 (= (toChars!3432 (transformation!2342 (h!18929 rules!2550))) (toChars!3432 (transformation!2342 (rule!4087 t1!34))))) (and b!1330927 b_free!32217 (= (toChars!3432 (transformation!2342 (h!18929 (t!118967 rules!2550)))) (toChars!3432 (transformation!2342 (rule!4087 t1!34))))) b_lambda!39161)))

(declare-fun b_lambda!39163 () Bool)

(assert (= b_lambda!39135 (or b!1330156 b_lambda!39163)))

(declare-fun bs!331663 () Bool)

(declare-fun d!375274 () Bool)

(assert (= bs!331663 (and d!375274 b!1330156)))

(assert (=> bs!331663 (= (dynLambda!5960 lambda!55312 lt!440033) (ruleValid!576 thiss!19762 lt!440033))))

(declare-fun m!1488155 () Bool)

(assert (=> bs!331663 m!1488155))

(assert (=> d!375142 d!375274))

(declare-fun b_lambda!39165 () Bool)

(assert (= b_lambda!39137 (or b!1330174 b_lambda!39165)))

(declare-fun bs!331664 () Bool)

(declare-fun d!375276 () Bool)

(assert (= bs!331664 (and d!375276 b!1330174)))

(declare-fun res!599682 () Bool)

(declare-fun e!852617 () Bool)

(assert (=> bs!331664 (=> (not res!599682) (not e!852617))))

(assert (=> bs!331664 (= res!599682 (matchR!1658 lt!440053 lt!440259))))

(assert (=> bs!331664 (= (dynLambda!5961 lambda!55308 lt!440259) e!852617)))

(declare-fun b!1330928 () Bool)

(assert (=> b!1330928 (= e!852617 (isPrefix!1089 lt!440062 lt!440259))))

(assert (= (and bs!331664 res!599682) b!1330928))

(declare-fun m!1488157 () Bool)

(assert (=> bs!331664 m!1488157))

(declare-fun m!1488159 () Bool)

(assert (=> b!1330928 m!1488159))

(assert (=> d!375150 d!375276))

(declare-fun b_lambda!39167 () Bool)

(assert (= b_lambda!39151 (or (and b!1330145 b_free!32193) (and b!1330179 b_free!32197 (= (toChars!3432 (transformation!2342 (rule!4087 t1!34))) (toChars!3432 (transformation!2342 (rule!4087 t2!34))))) (and b!1330162 b_free!32201 (= (toChars!3432 (transformation!2342 (h!18929 rules!2550))) (toChars!3432 (transformation!2342 (rule!4087 t2!34))))) (and b!1330927 b_free!32217 (= (toChars!3432 (transformation!2342 (h!18929 (t!118967 rules!2550)))) (toChars!3432 (transformation!2342 (rule!4087 t2!34))))) b_lambda!39167)))

(declare-fun b_lambda!39169 () Bool)

(assert (= b_lambda!39119 (or b!1330155 b_lambda!39169)))

(declare-fun bs!331665 () Bool)

(declare-fun d!375278 () Bool)

(assert (= bs!331665 (and d!375278 b!1330155)))

(assert (=> bs!331665 (= (dynLambda!5957 lambda!55309 (h!18929 rules!2550)) (regex!2342 (h!18929 rules!2550)))))

(assert (=> b!1330459 d!375278))

(declare-fun b_lambda!39171 () Bool)

(assert (= b_lambda!39123 (or b!1330155 b_lambda!39171)))

(declare-fun bs!331666 () Bool)

(declare-fun d!375280 () Bool)

(assert (= bs!331666 (and d!375280 b!1330155)))

(declare-fun res!599683 () Bool)

(declare-fun e!852618 () Bool)

(assert (=> bs!331666 (=> (not res!599683) (not e!852618))))

(assert (=> bs!331666 (= res!599683 (validRegex!1572 lt!440213))))

(assert (=> bs!331666 (= (dynLambda!5959 lambda!55310 lt!440213) e!852618)))

(declare-fun b!1330929 () Bool)

(assert (=> b!1330929 (= e!852618 (matchR!1658 lt!440213 lt!440058))))

(assert (= (and bs!331666 res!599683) b!1330929))

(declare-fun m!1488161 () Bool)

(assert (=> bs!331666 m!1488161))

(declare-fun m!1488163 () Bool)

(assert (=> b!1330929 m!1488163))

(assert (=> d!375108 d!375280))

(declare-fun b_lambda!39173 () Bool)

(assert (= b_lambda!39121 (or b!1330155 b_lambda!39173)))

(declare-fun bs!331667 () Bool)

(declare-fun d!375282 () Bool)

(assert (= bs!331667 (and d!375282 b!1330155)))

(declare-fun res!599684 () Bool)

(declare-fun e!852619 () Bool)

(assert (=> bs!331667 (=> (not res!599684) (not e!852619))))

(assert (=> bs!331667 (= res!599684 (validRegex!1572 (h!18930 (map!2980 rules!2550 lambda!55309))))))

(assert (=> bs!331667 (= (dynLambda!5959 lambda!55310 (h!18930 (map!2980 rules!2550 lambda!55309))) e!852619)))

(declare-fun b!1330930 () Bool)

(assert (=> b!1330930 (= e!852619 (matchR!1658 (h!18930 (map!2980 rules!2550 lambda!55309)) lt!440058))))

(assert (= (and bs!331667 res!599684) b!1330930))

(declare-fun m!1488165 () Bool)

(assert (=> bs!331667 m!1488165))

(declare-fun m!1488167 () Bool)

(assert (=> b!1330930 m!1488167))

(assert (=> b!1330527 d!375282))

(declare-fun b_lambda!39175 () Bool)

(assert (= b_lambda!39125 (or b!1330144 b_lambda!39175)))

(declare-fun bs!331668 () Bool)

(declare-fun d!375284 () Bool)

(assert (= bs!331668 (and d!375284 b!1330144)))

(assert (=> bs!331668 (= (dynLambda!5960 lambda!55311 (h!18929 rules!2550)) (= (regex!2342 (h!18929 rules!2550)) lt!440041))))

(assert (=> b!1330568 d!375284))

(declare-fun b_lambda!39177 () Bool)

(assert (= b_lambda!39127 (or b!1330144 b_lambda!39177)))

(declare-fun bs!331669 () Bool)

(declare-fun d!375286 () Bool)

(assert (= bs!331669 (and d!375286 b!1330144)))

(assert (=> bs!331669 (= (dynLambda!5960 lambda!55311 lt!440230) (= (regex!2342 lt!440230) lt!440041))))

(assert (=> d!375118 d!375286))

(push 1)

(assert (not b!1330625))

(assert (not b!1330487))

(assert (not d!375150))

(assert (not tb!70323))

(assert (not d!375072))

(assert (not b!1330817))

(assert (not b!1330424))

(assert (not d!375180))

(assert (not b!1330416))

(assert (not d!375112))

(assert (not b!1330783))

(assert (not d!375262))

(assert (not b_next!32899))

(assert (not d!375132))

(assert (not b!1330885))

(assert (not bm!89977))

(assert (not b_lambda!39175))

(assert (not d!375240))

(assert (not b!1330636))

(assert (not d!375052))

(assert (not d!375236))

(assert (not b!1330868))

(assert (not b!1330831))

(assert (not d!375242))

(assert (not b!1330485))

(assert (not b!1330754))

(assert (not b!1330861))

(assert (not b!1330591))

(assert (not d!375214))

(assert (not b!1330854))

(assert (not b!1330763))

(assert (not b!1330674))

(assert tp_is_empty!6657)

(assert (not b!1330590))

(assert (not d!375056))

(assert (not d!375114))

(assert (not b!1330929))

(assert (not b!1330856))

(assert (not d!375188))

(assert (not b!1330567))

(assert (not b!1330864))

(assert (not bm!89945))

(assert (not b!1330482))

(assert (not b!1330539))

(assert (not b_lambda!39163))

(assert (not b!1330761))

(assert (not b!1330397))

(assert b_and!88863)

(assert (not b!1330593))

(assert (not d!375216))

(assert (not d!375070))

(assert (not b!1330912))

(assert (not b!1330633))

(assert (not d!375148))

(assert (not b!1330907))

(assert (not d!375094))

(assert (not d!375100))

(assert (not b_lambda!39167))

(assert (not d!375228))

(assert (not b!1330815))

(assert (not b!1330566))

(assert (not b!1330781))

(assert (not bm!89946))

(assert (not d!375078))

(assert (not b!1330882))

(assert (not b_next!32897))

(assert (not b!1330394))

(assert (not b_lambda!39159))

(assert (not d!375138))

(assert (not bs!331661))

(assert (not d!375136))

(assert (not b_lambda!39169))

(assert (not bm!89948))

(assert b_and!88917)

(assert (not b!1330902))

(assert (not b!1330530))

(assert (not d!375106))

(assert (not b_lambda!39165))

(assert (not d!375154))

(assert (not b!1330638))

(assert (not b!1330750))

(assert (not d!375266))

(assert (not b!1330589))

(assert (not b!1330748))

(assert (not b!1330500))

(assert (not d!375074))

(assert (not b!1330425))

(assert (not d!375134))

(assert (not b!1330488))

(assert (not d!375104))

(assert (not b!1330908))

(assert (not b_lambda!39157))

(assert (not d!375096))

(assert (not b!1330928))

(assert (not b!1330648))

(assert b_and!88919)

(assert (not d!375146))

(assert (not b!1330879))

(assert (not b!1330930))

(assert (not b!1330646))

(assert (not b!1330417))

(assert (not b!1330900))

(assert (not b!1330386))

(assert (not b_lambda!39161))

(assert (not b!1330752))

(assert (not b!1330855))

(assert (not b!1330925))

(assert (not b!1330564))

(assert (not bs!331664))

(assert (not b!1330926))

(assert (not bs!331667))

(assert (not b!1330483))

(assert (not bs!331666))

(assert (not d!375182))

(assert (not b_lambda!39173))

(assert (not b!1330779))

(assert (not b!1330830))

(assert (not b!1330884))

(assert (not b!1330871))

(assert (not b!1330901))

(assert (not b_next!32919))

(assert (not b!1330510))

(assert (not d!375260))

(assert (not d!375060))

(assert b_and!88913)

(assert (not b!1330813))

(assert (not d!375250))

(assert (not b!1330484))

(assert (not b!1330629))

(assert (not b!1330876))

(assert (not b!1330643))

(assert (not d!375248))

(assert (not b!1330644))

(assert (not d!375118))

(assert (not b!1330867))

(assert (not d!375092))

(assert (not b!1330490))

(assert (not b!1330401))

(assert (not b!1330747))

(assert (not b!1330863))

(assert (not b!1330528))

(assert (not b!1330915))

(assert (not b!1330911))

(assert (not b!1330914))

(assert (not b_next!32895))

(assert (not b!1330384))

(assert (not d!375142))

(assert (not d!375108))

(assert (not d!375076))

(assert (not b!1330825))

(assert (not b_lambda!39177))

(assert (not b!1330887))

(assert (not b!1330481))

(assert (not d!375156))

(assert (not d!375258))

(assert (not b_lambda!39155))

(assert (not b!1330642))

(assert (not b!1330404))

(assert (not b!1330749))

(assert (not bm!89958))

(assert (not b!1330668))

(assert (not b!1330910))

(assert b_and!88859)

(assert (not d!375206))

(assert (not b!1330888))

(assert (not b!1330526))

(assert (not b!1330881))

(assert (not bm!89959))

(assert (not b!1330873))

(assert b_and!88867)

(assert (not b_next!32903))

(assert (not b!1330652))

(assert (not bm!89964))

(assert (not b!1330427))

(assert (not d!375068))

(assert (not b!1330883))

(assert (not d!375230))

(assert (not d!375238))

(assert (not b!1330486))

(assert (not d!375218))

(assert (not bm!89952))

(assert (not b!1330388))

(assert (not b_lambda!39171))

(assert (not d!375064))

(assert (not b!1330459))

(assert (not b!1330641))

(assert (not b!1330824))

(assert (not b!1330862))

(assert (not b!1330818))

(assert (not b!1330596))

(assert (not d!375264))

(assert (not d!375080))

(assert (not d!375084))

(assert (not d!375246))

(assert (not b!1330627))

(assert b_and!88921)

(assert (not bm!89955))

(assert (not d!375212))

(assert (not b!1330916))

(assert (not d!375204))

(assert (not b_next!32921))

(assert (not bm!89953))

(assert (not b!1330676))

(assert (not d!375226))

(assert (not d!375088))

(assert (not b!1330877))

(assert (not d!375252))

(assert (not d!375220))

(assert (not d!375244))

(assert (not b!1330373))

(assert (not bs!331663))

(assert (not tb!70305))

(assert (not d!375256))

(assert (not d!375268))

(assert (not b_next!32905))

(assert (not d!375144))

(assert (not b!1330870))

(assert (not d!375208))

(assert (not b!1330657))

(assert (not b!1330866))

(assert (not bs!331662))

(assert (not b!1330865))

(assert (not b!1330419))

(assert (not b!1330874))

(assert (not d!375140))

(assert (not b!1330667))

(assert (not d!375090))

(assert (not b!1330758))

(assert (not b_lambda!39153))

(assert (not bm!89951))

(assert (not d!375122))

(assert b_and!88915)

(assert (not b_next!32901))

(assert (not b!1330655))

(assert (not b!1330886))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!32899))

(assert b_and!88863)

(assert (not b_next!32897))

(assert b_and!88917)

(assert b_and!88919)

(assert (not b_next!32895))

(assert b_and!88859)

(assert b_and!88921)

(assert (not b_next!32921))

(assert (not b_next!32905))

(assert b_and!88913)

(assert (not b_next!32919))

(assert b_and!88867)

(assert (not b_next!32903))

(assert b_and!88915)

(assert (not b_next!32901))

(check-sat)

(pop 1)

