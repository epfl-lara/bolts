; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25238 () Bool)

(assert start!25238)

(declare-fun b!236808 () Bool)

(declare-fun b_free!8777 () Bool)

(declare-fun b_next!8777 () Bool)

(assert (=> b!236808 (= b_free!8777 (not b_next!8777))))

(declare-fun tp!94774 () Bool)

(declare-fun b_and!17669 () Bool)

(assert (=> b!236808 (= tp!94774 b_and!17669)))

(declare-fun b_free!8779 () Bool)

(declare-fun b_next!8779 () Bool)

(assert (=> b!236808 (= b_free!8779 (not b_next!8779))))

(declare-fun tp!94764 () Bool)

(declare-fun b_and!17671 () Bool)

(assert (=> b!236808 (= tp!94764 b_and!17671)))

(declare-fun b!236799 () Bool)

(declare-fun b_free!8781 () Bool)

(declare-fun b_next!8781 () Bool)

(assert (=> b!236799 (= b_free!8781 (not b_next!8781))))

(declare-fun tp!94772 () Bool)

(declare-fun b_and!17673 () Bool)

(assert (=> b!236799 (= tp!94772 b_and!17673)))

(declare-fun b_free!8783 () Bool)

(declare-fun b_next!8783 () Bool)

(assert (=> b!236799 (= b_free!8783 (not b_next!8783))))

(declare-fun tp!94767 () Bool)

(declare-fun b_and!17675 () Bool)

(assert (=> b!236799 (= tp!94767 b_and!17675)))

(declare-fun b!236820 () Bool)

(declare-fun b_free!8785 () Bool)

(declare-fun b_next!8785 () Bool)

(assert (=> b!236820 (= b_free!8785 (not b_next!8785))))

(declare-fun tp!94766 () Bool)

(declare-fun b_and!17677 () Bool)

(assert (=> b!236820 (= tp!94766 b_and!17677)))

(declare-fun b_free!8787 () Bool)

(declare-fun b_next!8787 () Bool)

(assert (=> b!236820 (= b_free!8787 (not b_next!8787))))

(declare-fun tp!94773 () Bool)

(declare-fun b_and!17679 () Bool)

(assert (=> b!236820 (= tp!94773 b_and!17679)))

(declare-fun bs!25320 () Bool)

(declare-fun b!236784 () Bool)

(declare-fun b!236805 () Bool)

(assert (= bs!25320 (and b!236784 b!236805)))

(declare-fun lambda!7624 () Int)

(declare-fun lambda!7623 () Int)

(assert (=> bs!25320 (not (= lambda!7624 lambda!7623))))

(declare-fun b!236834 () Bool)

(declare-fun e!146571 () Bool)

(assert (=> b!236834 (= e!146571 true)))

(declare-fun b!236833 () Bool)

(declare-fun e!146570 () Bool)

(assert (=> b!236833 (= e!146570 e!146571)))

(declare-fun b!236832 () Bool)

(declare-fun e!146569 () Bool)

(assert (=> b!236832 (= e!146569 e!146570)))

(assert (=> b!236784 e!146569))

(assert (= b!236833 b!236834))

(assert (= b!236832 b!236833))

(declare-datatypes ((List!3525 0))(
  ( (Nil!3515) (Cons!3515 (h!8912 (_ BitVec 16)) (t!34249 List!3525)) )
))
(declare-datatypes ((TokenValue!683 0))(
  ( (FloatLiteralValue!1366 (text!5226 List!3525)) (TokenValueExt!682 (__x!2853 Int)) (Broken!3415 (value!23128 List!3525)) (Object!692) (End!683) (Def!683) (Underscore!683) (Match!683) (Else!683) (Error!683) (Case!683) (If!683) (Extends!683) (Abstract!683) (Class!683) (Val!683) (DelimiterValue!1366 (del!743 List!3525)) (KeywordValue!689 (value!23129 List!3525)) (CommentValue!1366 (value!23130 List!3525)) (WhitespaceValue!1366 (value!23131 List!3525)) (IndentationValue!683 (value!23132 List!3525)) (String!4494) (Int32!683) (Broken!3416 (value!23133 List!3525)) (Boolean!684) (Unit!4167) (OperatorValue!686 (op!743 List!3525)) (IdentifierValue!1366 (value!23134 List!3525)) (IdentifierValue!1367 (value!23135 List!3525)) (WhitespaceValue!1367 (value!23136 List!3525)) (True!1366) (False!1366) (Broken!3417 (value!23137 List!3525)) (Broken!3418 (value!23138 List!3525)) (True!1367) (RightBrace!683) (RightBracket!683) (Colon!683) (Null!683) (Comma!683) (LeftBracket!683) (False!1367) (LeftBrace!683) (ImaginaryLiteralValue!683 (text!5227 List!3525)) (StringLiteralValue!2049 (value!23139 List!3525)) (EOFValue!683 (value!23140 List!3525)) (IdentValue!683 (value!23141 List!3525)) (DelimiterValue!1367 (value!23142 List!3525)) (DedentValue!683 (value!23143 List!3525)) (NewLineValue!683 (value!23144 List!3525)) (IntegerValue!2049 (value!23145 (_ BitVec 32)) (text!5228 List!3525)) (IntegerValue!2050 (value!23146 Int) (text!5229 List!3525)) (Times!683) (Or!683) (Equal!683) (Minus!683) (Broken!3419 (value!23147 List!3525)) (And!683) (Div!683) (LessEqual!683) (Mod!683) (Concat!1568) (Not!683) (Plus!683) (SpaceValue!683 (value!23148 List!3525)) (IntegerValue!2051 (value!23149 Int) (text!5230 List!3525)) (StringLiteralValue!2050 (text!5231 List!3525)) (FloatLiteralValue!1367 (text!5232 List!3525)) (BytesLiteralValue!683 (value!23150 List!3525)) (CommentValue!1367 (value!23151 List!3525)) (StringLiteralValue!2051 (value!23152 List!3525)) (ErrorTokenValue!683 (msg!744 List!3525)) )
))
(declare-datatypes ((C!2692 0))(
  ( (C!2693 (val!1232 Int)) )
))
(declare-datatypes ((List!3526 0))(
  ( (Nil!3516) (Cons!3516 (h!8913 C!2692) (t!34250 List!3526)) )
))
(declare-datatypes ((IArray!2289 0))(
  ( (IArray!2290 (innerList!1202 List!3526)) )
))
(declare-datatypes ((Conc!1144 0))(
  ( (Node!1144 (left!2853 Conc!1144) (right!3183 Conc!1144) (csize!2518 Int) (cheight!1355 Int)) (Leaf!1814 (xs!3739 IArray!2289) (csize!2519 Int)) (Empty!1144) )
))
(declare-datatypes ((BalanceConc!2296 0))(
  ( (BalanceConc!2297 (c!45369 Conc!1144)) )
))
(declare-datatypes ((String!4495 0))(
  ( (String!4496 (value!23153 String)) )
))
(declare-datatypes ((TokenValueInjection!1138 0))(
  ( (TokenValueInjection!1139 (toValue!1360 Int) (toChars!1219 Int)) )
))
(declare-datatypes ((Regex!885 0))(
  ( (ElementMatch!885 (c!45370 C!2692)) (Concat!1569 (regOne!2282 Regex!885) (regTwo!2282 Regex!885)) (EmptyExpr!885) (Star!885 (reg!1214 Regex!885)) (EmptyLang!885) (Union!885 (regOne!2283 Regex!885) (regTwo!2283 Regex!885)) )
))
(declare-datatypes ((Rule!1122 0))(
  ( (Rule!1123 (regex!661 Regex!885) (tag!865 String!4495) (isSeparator!661 Bool) (transformation!661 TokenValueInjection!1138)) )
))
(declare-datatypes ((List!3527 0))(
  ( (Nil!3517) (Cons!3517 (h!8914 Rule!1122) (t!34251 List!3527)) )
))
(declare-fun rules!1920 () List!3527)

(get-info :version)

(assert (= (and b!236784 ((_ is Cons!3517) rules!1920)) b!236832))

(declare-fun order!2497 () Int)

(declare-fun order!2499 () Int)

(declare-fun dynLambda!1667 (Int Int) Int)

(declare-fun dynLambda!1668 (Int Int) Int)

(assert (=> b!236834 (< (dynLambda!1667 order!2497 (toValue!1360 (transformation!661 (h!8914 rules!1920)))) (dynLambda!1668 order!2499 lambda!7624))))

(declare-fun order!2501 () Int)

(declare-fun dynLambda!1669 (Int Int) Int)

(assert (=> b!236834 (< (dynLambda!1669 order!2501 (toChars!1219 (transformation!661 (h!8914 rules!1920)))) (dynLambda!1668 order!2499 lambda!7624))))

(assert (=> b!236784 true))

(declare-fun b!236773 () Bool)

(declare-fun res!109260 () Bool)

(declare-fun e!146549 () Bool)

(assert (=> b!236773 (=> (not res!109260) (not e!146549))))

(declare-datatypes ((Token!1066 0))(
  ( (Token!1067 (value!23154 TokenValue!683) (rule!1228 Rule!1122) (size!2816 Int) (originalCharacters!704 List!3526)) )
))
(declare-datatypes ((List!3528 0))(
  ( (Nil!3518) (Cons!3518 (h!8915 Token!1066) (t!34252 List!3528)) )
))
(declare-datatypes ((IArray!2291 0))(
  ( (IArray!2292 (innerList!1203 List!3528)) )
))
(declare-datatypes ((Conc!1145 0))(
  ( (Node!1145 (left!2854 Conc!1145) (right!3184 Conc!1145) (csize!2520 Int) (cheight!1356 Int)) (Leaf!1815 (xs!3740 IArray!2291) (csize!2521 Int)) (Empty!1145) )
))
(declare-datatypes ((BalanceConc!2298 0))(
  ( (BalanceConc!2299 (c!45371 Conc!1145)) )
))
(declare-datatypes ((tuple2!3848 0))(
  ( (tuple2!3849 (_1!2140 BalanceConc!2298) (_2!2140 BalanceConc!2296)) )
))
(declare-fun lt!94302 () tuple2!3848)

(declare-fun separatorToken!170 () Token!1066)

(declare-fun apply!652 (BalanceConc!2298 Int) Token!1066)

(assert (=> b!236773 (= res!109260 (= (apply!652 (_1!2140 lt!94302) 0) separatorToken!170))))

(declare-fun b!236774 () Bool)

(declare-fun res!109270 () Bool)

(declare-fun e!146548 () Bool)

(assert (=> b!236774 (=> (not res!109270) (not e!146548))))

(declare-fun tokens!465 () List!3528)

(assert (=> b!236774 (= res!109270 ((_ is Cons!3518) tokens!465))))

(declare-fun b!236775 () Bool)

(declare-datatypes ((Unit!4168 0))(
  ( (Unit!4169) )
))
(declare-fun e!146559 () Unit!4168)

(declare-fun Unit!4170 () Unit!4168)

(assert (=> b!236775 (= e!146559 Unit!4170)))

(declare-fun lt!94292 () C!2692)

(declare-fun lt!94301 () List!3526)

(declare-fun lt!94303 () Unit!4168)

(declare-fun lt!94259 () Token!1066)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!60 (Regex!885 List!3526 C!2692) Unit!4168)

(assert (=> b!236775 (= lt!94303 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!60 (regex!661 (rule!1228 lt!94259)) lt!94301 lt!94292))))

(declare-fun res!109278 () Bool)

(declare-fun matchR!223 (Regex!885 List!3526) Bool)

(assert (=> b!236775 (= res!109278 (not (matchR!223 (regex!661 (rule!1228 lt!94259)) lt!94301)))))

(declare-fun e!146532 () Bool)

(assert (=> b!236775 (=> (not res!109278) (not e!146532))))

(assert (=> b!236775 e!146532))

(declare-fun b!236776 () Bool)

(declare-fun e!146538 () Unit!4168)

(declare-fun Unit!4171 () Unit!4168)

(assert (=> b!236776 (= e!146538 Unit!4171)))

(assert (=> b!236776 false))

(declare-fun b!236777 () Bool)

(declare-fun Unit!4172 () Unit!4168)

(assert (=> b!236777 (= e!146559 Unit!4172)))

(declare-fun b!236778 () Bool)

(declare-fun e!146537 () Bool)

(declare-fun lt!94268 () Rule!1122)

(assert (=> b!236778 (= e!146537 (= (rule!1228 lt!94259) lt!94268))))

(declare-fun res!109275 () Bool)

(declare-fun e!146553 () Bool)

(assert (=> start!25238 (=> (not res!109275) (not e!146553))))

(declare-datatypes ((LexerInterface!547 0))(
  ( (LexerInterfaceExt!544 (__x!2854 Int)) (Lexer!545) )
))
(declare-fun thiss!17480 () LexerInterface!547)

(assert (=> start!25238 (= res!109275 ((_ is Lexer!545) thiss!17480))))

(assert (=> start!25238 e!146553))

(assert (=> start!25238 true))

(declare-fun e!146551 () Bool)

(assert (=> start!25238 e!146551))

(declare-fun e!146555 () Bool)

(declare-fun inv!4372 (Token!1066) Bool)

(assert (=> start!25238 (and (inv!4372 separatorToken!170) e!146555)))

(declare-fun e!146561 () Bool)

(assert (=> start!25238 e!146561))

(declare-fun b!236779 () Bool)

(declare-fun e!146547 () Bool)

(declare-fun e!146550 () Bool)

(assert (=> b!236779 (= e!146547 e!146550)))

(declare-fun res!109277 () Bool)

(assert (=> b!236779 (=> res!109277 e!146550)))

(declare-fun lt!94256 () List!3528)

(declare-fun filter!55 (List!3528 Int) List!3528)

(assert (=> b!236779 (= res!109277 (not (= (filter!55 lt!94256 lambda!7623) (t!34252 tokens!465))))))

(assert (=> b!236779 (= (filter!55 lt!94256 lambda!7623) (t!34252 tokens!465))))

(declare-fun lt!94265 () BalanceConc!2296)

(declare-fun list!1372 (BalanceConc!2298) List!3528)

(declare-fun lex!347 (LexerInterface!547 List!3527 BalanceConc!2296) tuple2!3848)

(assert (=> b!236779 (= lt!94256 (list!1372 (_1!2140 (lex!347 thiss!17480 rules!1920 lt!94265))))))

(declare-fun lt!94289 () Unit!4168)

(declare-fun theoremInvertabilityFromTokensSepTokenWhenNeeded!46 (LexerInterface!547 List!3527 List!3528 Token!1066) Unit!4168)

(assert (=> b!236779 (= lt!94289 (theoremInvertabilityFromTokensSepTokenWhenNeeded!46 thiss!17480 rules!1920 (t!34252 tokens!465) separatorToken!170))))

(declare-datatypes ((tuple2!3850 0))(
  ( (tuple2!3851 (_1!2141 Token!1066) (_2!2141 List!3526)) )
))
(declare-datatypes ((Option!675 0))(
  ( (None!674) (Some!674 (v!14409 tuple2!3850)) )
))
(declare-fun lt!94283 () Option!675)

(declare-fun lt!94307 () List!3526)

(assert (=> b!236779 (= lt!94283 (Some!674 (tuple2!3851 separatorToken!170 lt!94307)))))

(declare-fun lt!94291 () Unit!4168)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!52 (LexerInterface!547 List!3527 Token!1066 Rule!1122 List!3526 Rule!1122) Unit!4168)

(assert (=> b!236779 (= lt!94291 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!52 thiss!17480 rules!1920 separatorToken!170 (rule!1228 separatorToken!170) lt!94307 (rule!1228 lt!94259)))))

(declare-fun lt!94281 () Unit!4168)

(declare-fun e!146542 () Unit!4168)

(assert (=> b!236779 (= lt!94281 e!146542)))

(declare-fun c!45368 () Bool)

(declare-fun lt!94260 () C!2692)

(declare-fun contains!646 (List!3526 C!2692) Bool)

(declare-fun usedCharacters!66 (Regex!885) List!3526)

(assert (=> b!236779 (= c!45368 (contains!646 (usedCharacters!66 (regex!661 (rule!1228 separatorToken!170))) lt!94260))))

(declare-fun head!817 (List!3526) C!2692)

(assert (=> b!236779 (= lt!94260 (head!817 lt!94307))))

(declare-fun lt!94288 () Unit!4168)

(assert (=> b!236779 (= lt!94288 e!146559)))

(declare-fun c!45366 () Bool)

(assert (=> b!236779 (= c!45366 (not (contains!646 (usedCharacters!66 (regex!661 (rule!1228 lt!94259))) lt!94292)))))

(assert (=> b!236779 (= lt!94292 (head!817 lt!94301))))

(declare-fun e!146540 () Bool)

(assert (=> b!236779 e!146540))

(declare-fun res!109262 () Bool)

(assert (=> b!236779 (=> (not res!109262) (not e!146540))))

(declare-datatypes ((Option!676 0))(
  ( (None!675) (Some!675 (v!14410 Rule!1122)) )
))
(declare-fun lt!94266 () Option!676)

(declare-fun isDefined!526 (Option!676) Bool)

(assert (=> b!236779 (= res!109262 (isDefined!526 lt!94266))))

(declare-fun getRuleFromTag!102 (LexerInterface!547 List!3527 String!4495) Option!676)

(assert (=> b!236779 (= lt!94266 (getRuleFromTag!102 thiss!17480 rules!1920 (tag!865 (rule!1228 lt!94259))))))

(declare-fun lt!94264 () Unit!4168)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!102 (LexerInterface!547 List!3527 List!3526 Token!1066) Unit!4168)

(assert (=> b!236779 (= lt!94264 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!102 thiss!17480 rules!1920 lt!94301 lt!94259))))

(declare-fun list!1373 (BalanceConc!2296) List!3526)

(declare-fun charsOf!316 (Token!1066) BalanceConc!2296)

(assert (=> b!236779 (= lt!94301 (list!1373 (charsOf!316 lt!94259)))))

(declare-fun lt!94282 () Unit!4168)

(declare-fun forallContained!228 (List!3528 Int Token!1066) Unit!4168)

(assert (=> b!236779 (= lt!94282 (forallContained!228 tokens!465 lambda!7624 lt!94259))))

(declare-fun e!146539 () Bool)

(assert (=> b!236779 e!146539))

(declare-fun res!109269 () Bool)

(assert (=> b!236779 (=> (not res!109269) (not e!146539))))

(declare-fun lt!94290 () tuple2!3848)

(declare-fun size!2817 (BalanceConc!2298) Int)

(assert (=> b!236779 (= res!109269 (= (size!2817 (_1!2140 lt!94290)) 1))))

(declare-fun lt!94279 () BalanceConc!2296)

(assert (=> b!236779 (= lt!94290 (lex!347 thiss!17480 rules!1920 lt!94279))))

(declare-fun lt!94298 () BalanceConc!2298)

(declare-fun printTailRec!241 (LexerInterface!547 BalanceConc!2298 Int BalanceConc!2296) BalanceConc!2296)

(assert (=> b!236779 (= lt!94279 (printTailRec!241 thiss!17480 lt!94298 0 (BalanceConc!2297 Empty!1144)))))

(declare-fun print!278 (LexerInterface!547 BalanceConc!2298) BalanceConc!2296)

(assert (=> b!236779 (= lt!94279 (print!278 thiss!17480 lt!94298))))

(declare-fun singletonSeq!213 (Token!1066) BalanceConc!2298)

(assert (=> b!236779 (= lt!94298 (singletonSeq!213 lt!94259))))

(declare-fun e!146541 () Bool)

(assert (=> b!236779 e!146541))

(declare-fun res!109255 () Bool)

(assert (=> b!236779 (=> (not res!109255) (not e!146541))))

(declare-fun lt!94267 () Option!676)

(assert (=> b!236779 (= res!109255 (isDefined!526 lt!94267))))

(assert (=> b!236779 (= lt!94267 (getRuleFromTag!102 thiss!17480 rules!1920 (tag!865 (rule!1228 separatorToken!170))))))

(declare-fun lt!94299 () Unit!4168)

(declare-fun lt!94305 () List!3526)

(assert (=> b!236779 (= lt!94299 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!102 thiss!17480 rules!1920 lt!94305 separatorToken!170))))

(assert (=> b!236779 e!146549))

(declare-fun res!109272 () Bool)

(assert (=> b!236779 (=> (not res!109272) (not e!146549))))

(assert (=> b!236779 (= res!109272 (= (size!2817 (_1!2140 lt!94302)) 1))))

(declare-fun lt!94297 () BalanceConc!2296)

(assert (=> b!236779 (= lt!94302 (lex!347 thiss!17480 rules!1920 lt!94297))))

(declare-fun lt!94271 () BalanceConc!2298)

(assert (=> b!236779 (= lt!94297 (printTailRec!241 thiss!17480 lt!94271 0 (BalanceConc!2297 Empty!1144)))))

(assert (=> b!236779 (= lt!94297 (print!278 thiss!17480 lt!94271))))

(assert (=> b!236779 (= lt!94271 (singletonSeq!213 separatorToken!170))))

(declare-fun rulesProduceIndividualToken!296 (LexerInterface!547 List!3527 Token!1066) Bool)

(assert (=> b!236779 (rulesProduceIndividualToken!296 thiss!17480 rules!1920 lt!94259)))

(declare-fun lt!94294 () Unit!4168)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!114 (LexerInterface!547 List!3527 List!3528 Token!1066) Unit!4168)

(assert (=> b!236779 (= lt!94294 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!114 thiss!17480 rules!1920 tokens!465 lt!94259))))

(declare-fun head!818 (List!3528) Token!1066)

(assert (=> b!236779 (= lt!94259 (head!818 (t!34252 tokens!465)))))

(declare-fun lt!94300 () Unit!4168)

(assert (=> b!236779 (= lt!94300 e!146538)))

(declare-fun c!45367 () Bool)

(declare-fun isEmpty!2078 (List!3528) Bool)

(assert (=> b!236779 (= c!45367 (isEmpty!2078 (t!34252 tokens!465)))))

(declare-fun lt!94269 () List!3526)

(declare-fun maxPrefix!277 (LexerInterface!547 List!3527 List!3526) Option!675)

(assert (=> b!236779 (= lt!94283 (maxPrefix!277 thiss!17480 rules!1920 lt!94269))))

(declare-fun lt!94306 () tuple2!3850)

(assert (=> b!236779 (= lt!94269 (_2!2141 lt!94306))))

(declare-fun lt!94275 () List!3526)

(declare-fun lt!94270 () Unit!4168)

(declare-fun lt!94274 () List!3526)

(declare-fun lemmaSamePrefixThenSameSuffix!182 (List!3526 List!3526 List!3526 List!3526 List!3526) Unit!4168)

(assert (=> b!236779 (= lt!94270 (lemmaSamePrefixThenSameSuffix!182 lt!94274 lt!94269 lt!94274 (_2!2141 lt!94306) lt!94275))))

(declare-fun get!1133 (Option!675) tuple2!3850)

(assert (=> b!236779 (= lt!94306 (get!1133 (maxPrefix!277 thiss!17480 rules!1920 lt!94275)))))

(declare-fun lt!94272 () List!3526)

(declare-fun isPrefix!357 (List!3526 List!3526) Bool)

(assert (=> b!236779 (isPrefix!357 lt!94274 lt!94272)))

(declare-fun lt!94262 () Unit!4168)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!252 (List!3526 List!3526) Unit!4168)

(assert (=> b!236779 (= lt!94262 (lemmaConcatTwoListThenFirstIsPrefix!252 lt!94274 lt!94269))))

(declare-fun e!146526 () Bool)

(assert (=> b!236779 e!146526))

(declare-fun res!109279 () Bool)

(assert (=> b!236779 (=> res!109279 e!146526)))

(assert (=> b!236779 (= res!109279 (isEmpty!2078 tokens!465))))

(declare-fun lt!94287 () Unit!4168)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!122 (LexerInterface!547 List!3527 List!3528 Token!1066) Unit!4168)

(assert (=> b!236779 (= lt!94287 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!122 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!236780 () Bool)

(declare-fun res!109271 () Bool)

(assert (=> b!236780 (=> res!109271 e!146550)))

(declare-datatypes ((tuple2!3852 0))(
  ( (tuple2!3853 (_1!2142 List!3528) (_2!2142 List!3526)) )
))
(declare-fun lexList!175 (LexerInterface!547 List!3527 List!3526) tuple2!3852)

(assert (=> b!236780 (= res!109271 (not (= (filter!55 (_1!2142 (lexList!175 thiss!17480 rules!1920 lt!94275)) lambda!7623) tokens!465)))))

(declare-fun b!236781 () Bool)

(declare-fun e!146527 () Bool)

(declare-fun tp!94770 () Bool)

(assert (=> b!236781 (= e!146551 (and e!146527 tp!94770))))

(declare-fun b!236782 () Bool)

(declare-fun res!109266 () Bool)

(assert (=> b!236782 (=> (not res!109266) (not e!146553))))

(declare-fun rulesInvariant!513 (LexerInterface!547 List!3527) Bool)

(assert (=> b!236782 (= res!109266 (rulesInvariant!513 thiss!17480 rules!1920))))

(declare-fun b!236783 () Bool)

(declare-fun Unit!4173 () Unit!4168)

(assert (=> b!236783 (= e!146542 Unit!4173)))

(declare-fun e!146529 () Bool)

(declare-fun e!146557 () Bool)

(assert (=> b!236784 (= e!146529 e!146557)))

(declare-fun res!109274 () Bool)

(assert (=> b!236784 (=> res!109274 e!146557)))

(declare-datatypes ((tuple2!3854 0))(
  ( (tuple2!3855 (_1!2143 Token!1066) (_2!2143 BalanceConc!2296)) )
))
(declare-datatypes ((Option!677 0))(
  ( (None!676) (Some!676 (v!14411 tuple2!3854)) )
))
(declare-fun isDefined!527 (Option!677) Bool)

(declare-fun maxPrefixZipperSequence!240 (LexerInterface!547 List!3527 BalanceConc!2296) Option!677)

(declare-fun seqFromList!699 (List!3526) BalanceConc!2296)

(assert (=> b!236784 (= res!109274 (not (isDefined!527 (maxPrefixZipperSequence!240 thiss!17480 rules!1920 (seqFromList!699 (originalCharacters!704 (h!8915 tokens!465)))))))))

(declare-fun lt!94258 () Unit!4168)

(assert (=> b!236784 (= lt!94258 (forallContained!228 tokens!465 lambda!7624 (h!8915 tokens!465)))))

(assert (=> b!236784 (= lt!94274 (originalCharacters!704 (h!8915 tokens!465)))))

(declare-fun b!236785 () Bool)

(assert (=> b!236785 (= e!146553 e!146548)))

(declare-fun res!109286 () Bool)

(assert (=> b!236785 (=> (not res!109286) (not e!146548))))

(declare-fun lt!94295 () BalanceConc!2298)

(declare-fun rulesProduceEachTokenIndividually!339 (LexerInterface!547 List!3527 BalanceConc!2298) Bool)

(assert (=> b!236785 (= res!109286 (rulesProduceEachTokenIndividually!339 thiss!17480 rules!1920 lt!94295))))

(declare-fun seqFromList!700 (List!3528) BalanceConc!2298)

(assert (=> b!236785 (= lt!94295 (seqFromList!700 tokens!465))))

(declare-fun b!236786 () Bool)

(declare-fun res!109281 () Bool)

(declare-fun e!146554 () Bool)

(assert (=> b!236786 (=> (not res!109281) (not e!146554))))

(declare-fun lt!94286 () List!3526)

(assert (=> b!236786 (= res!109281 (= (list!1373 (seqFromList!699 lt!94275)) lt!94286))))

(declare-fun b!236787 () Bool)

(assert (=> b!236787 (= e!146550 true)))

(declare-fun lt!94277 () BalanceConc!2296)

(declare-fun lt!94273 () List!3528)

(assert (=> b!236787 (= lt!94273 (filter!55 (list!1372 (_1!2140 (lex!347 thiss!17480 rules!1920 lt!94277))) lambda!7623))))

(declare-fun b!236788 () Bool)

(declare-fun e!146531 () Bool)

(assert (=> b!236788 (= e!146531 e!146529)))

(declare-fun res!109284 () Bool)

(assert (=> b!236788 (=> res!109284 e!146529)))

(declare-fun lt!94284 () List!3526)

(declare-fun lt!94285 () List!3526)

(assert (=> b!236788 (= res!109284 (or (not (= lt!94285 lt!94284)) (not (= lt!94284 lt!94274)) (not (= lt!94285 lt!94274))))))

(declare-fun printList!231 (LexerInterface!547 List!3528) List!3526)

(assert (=> b!236788 (= lt!94284 (printList!231 thiss!17480 (Cons!3518 (h!8915 tokens!465) Nil!3518)))))

(declare-fun lt!94296 () BalanceConc!2296)

(assert (=> b!236788 (= lt!94285 (list!1373 lt!94296))))

(declare-fun lt!94276 () BalanceConc!2298)

(assert (=> b!236788 (= lt!94296 (printTailRec!241 thiss!17480 lt!94276 0 (BalanceConc!2297 Empty!1144)))))

(assert (=> b!236788 (= lt!94296 (print!278 thiss!17480 lt!94276))))

(assert (=> b!236788 (= lt!94276 (singletonSeq!213 (h!8915 tokens!465)))))

(declare-fun b!236789 () Bool)

(declare-fun e!146544 () Bool)

(declare-fun tp!94775 () Bool)

(declare-fun inv!4369 (String!4495) Bool)

(declare-fun inv!4373 (TokenValueInjection!1138) Bool)

(assert (=> b!236789 (= e!146527 (and tp!94775 (inv!4369 (tag!865 (h!8914 rules!1920))) (inv!4373 (transformation!661 (h!8914 rules!1920))) e!146544))))

(declare-fun b!236790 () Bool)

(assert (=> b!236790 (= e!146557 e!146547)))

(declare-fun res!109276 () Bool)

(assert (=> b!236790 (=> res!109276 e!146547)))

(declare-fun lt!94308 () Bool)

(assert (=> b!236790 (= res!109276 (not lt!94308))))

(declare-fun e!146533 () Bool)

(assert (=> b!236790 e!146533))

(declare-fun res!109256 () Bool)

(assert (=> b!236790 (=> (not res!109256) (not e!146533))))

(declare-fun lt!94304 () tuple2!3850)

(assert (=> b!236790 (= res!109256 (= (_1!2141 lt!94304) (h!8915 tokens!465)))))

(declare-fun lt!94257 () Option!675)

(assert (=> b!236790 (= lt!94304 (get!1133 lt!94257))))

(declare-fun isDefined!528 (Option!675) Bool)

(assert (=> b!236790 (isDefined!528 lt!94257)))

(assert (=> b!236790 (= lt!94257 (maxPrefix!277 thiss!17480 rules!1920 lt!94274))))

(declare-fun b!236791 () Bool)

(declare-fun e!146552 () Bool)

(declare-fun lt!94263 () Option!675)

(assert (=> b!236791 (= e!146552 (= (_1!2141 (get!1133 lt!94263)) (head!818 tokens!465)))))

(declare-fun e!146560 () Bool)

(declare-fun b!236792 () Bool)

(declare-fun tp!94763 () Bool)

(declare-fun e!146556 () Bool)

(assert (=> b!236792 (= e!146560 (and tp!94763 (inv!4369 (tag!865 (rule!1228 separatorToken!170))) (inv!4373 (transformation!661 (rule!1228 separatorToken!170))) e!146556))))

(declare-fun b!236793 () Bool)

(assert (=> b!236793 (= e!146532 false)))

(declare-fun b!236794 () Bool)

(declare-fun res!109261 () Bool)

(assert (=> b!236794 (=> (not res!109261) (not e!146553))))

(declare-fun isEmpty!2079 (List!3527) Bool)

(assert (=> b!236794 (= res!109261 (not (isEmpty!2079 rules!1920)))))

(declare-fun tp!94765 () Bool)

(declare-fun e!146536 () Bool)

(declare-fun b!236795 () Bool)

(assert (=> b!236795 (= e!146561 (and (inv!4372 (h!8915 tokens!465)) e!146536 tp!94765))))

(declare-fun b!236796 () Bool)

(assert (=> b!236796 (= e!146533 (matchR!223 (regex!661 (rule!1228 (h!8915 tokens!465))) lt!94274))))

(declare-fun b!236797 () Bool)

(assert (=> b!236797 (= e!146526 e!146552)))

(declare-fun res!109268 () Bool)

(assert (=> b!236797 (=> (not res!109268) (not e!146552))))

(assert (=> b!236797 (= res!109268 (isDefined!528 lt!94263))))

(assert (=> b!236797 (= lt!94263 (maxPrefix!277 thiss!17480 rules!1920 lt!94275))))

(declare-fun b!236798 () Bool)

(assert (=> b!236798 (= e!146548 e!146554)))

(declare-fun res!109264 () Bool)

(assert (=> b!236798 (=> (not res!109264) (not e!146554))))

(assert (=> b!236798 (= res!109264 (= lt!94275 lt!94286))))

(assert (=> b!236798 (= lt!94286 (list!1373 lt!94277))))

(declare-fun printWithSeparatorTokenWhenNeededRec!230 (LexerInterface!547 List!3527 BalanceConc!2298 Token!1066 Int) BalanceConc!2296)

(assert (=> b!236798 (= lt!94277 (printWithSeparatorTokenWhenNeededRec!230 thiss!17480 rules!1920 lt!94295 separatorToken!170 0))))

(declare-fun printWithSeparatorTokenWhenNeededList!240 (LexerInterface!547 List!3527 List!3528 Token!1066) List!3526)

(assert (=> b!236798 (= lt!94275 (printWithSeparatorTokenWhenNeededList!240 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun e!146528 () Bool)

(assert (=> b!236799 (= e!146528 (and tp!94772 tp!94767))))

(declare-fun b!236800 () Bool)

(declare-fun res!109258 () Bool)

(assert (=> b!236800 (=> (not res!109258) (not e!146548))))

(declare-fun sepAndNonSepRulesDisjointChars!250 (List!3527 List!3527) Bool)

(assert (=> b!236800 (= res!109258 (sepAndNonSepRulesDisjointChars!250 rules!1920 rules!1920))))

(declare-fun b!236801 () Bool)

(declare-fun res!109285 () Bool)

(assert (=> b!236801 (=> res!109285 e!146529)))

(declare-fun isEmpty!2080 (BalanceConc!2298) Bool)

(assert (=> b!236801 (= res!109285 (isEmpty!2080 (_1!2140 (lex!347 thiss!17480 rules!1920 (seqFromList!699 lt!94274)))))))

(declare-fun b!236802 () Bool)

(declare-fun e!146546 () Bool)

(declare-fun lt!94261 () Rule!1122)

(assert (=> b!236802 (= e!146546 (= (rule!1228 separatorToken!170) lt!94261))))

(declare-fun b!236803 () Bool)

(declare-fun res!109263 () Bool)

(assert (=> b!236803 (=> res!109263 e!146529)))

(assert (=> b!236803 (= res!109263 (not (rulesProduceIndividualToken!296 thiss!17480 rules!1920 (h!8915 tokens!465))))))

(declare-fun b!236804 () Bool)

(declare-fun res!109253 () Bool)

(assert (=> b!236804 (=> (not res!109253) (not e!146533))))

(declare-fun isEmpty!2081 (List!3526) Bool)

(assert (=> b!236804 (= res!109253 (isEmpty!2081 (_2!2141 lt!94304)))))

(declare-fun res!109280 () Bool)

(assert (=> b!236805 (=> (not res!109280) (not e!146548))))

(declare-fun forall!805 (List!3528 Int) Bool)

(assert (=> b!236805 (= res!109280 (forall!805 tokens!465 lambda!7623))))

(declare-fun b!236806 () Bool)

(declare-fun Unit!4174 () Unit!4168)

(assert (=> b!236806 (= e!146538 Unit!4174)))

(declare-fun b!236807 () Bool)

(declare-fun e!146530 () Bool)

(assert (=> b!236807 (= e!146554 (not e!146530))))

(declare-fun res!109287 () Bool)

(assert (=> b!236807 (=> res!109287 e!146530)))

(assert (=> b!236807 (= res!109287 (not (= lt!94307 (list!1373 lt!94265))))))

(assert (=> b!236807 (= lt!94265 (printWithSeparatorTokenWhenNeededRec!230 thiss!17480 rules!1920 (seqFromList!700 (t!34252 tokens!465)) separatorToken!170 0))))

(declare-fun lt!94280 () List!3526)

(assert (=> b!236807 (= lt!94280 lt!94272)))

(declare-fun ++!890 (List!3526 List!3526) List!3526)

(assert (=> b!236807 (= lt!94272 (++!890 lt!94274 lt!94269))))

(assert (=> b!236807 (= lt!94280 (++!890 (++!890 lt!94274 lt!94305) lt!94307))))

(declare-fun lt!94278 () Unit!4168)

(declare-fun lemmaConcatAssociativity!364 (List!3526 List!3526 List!3526) Unit!4168)

(assert (=> b!236807 (= lt!94278 (lemmaConcatAssociativity!364 lt!94274 lt!94305 lt!94307))))

(assert (=> b!236807 (= lt!94274 (list!1373 (charsOf!316 (h!8915 tokens!465))))))

(assert (=> b!236807 (= lt!94269 (++!890 lt!94305 lt!94307))))

(assert (=> b!236807 (= lt!94307 (printWithSeparatorTokenWhenNeededList!240 thiss!17480 rules!1920 (t!34252 tokens!465) separatorToken!170))))

(assert (=> b!236807 (= lt!94305 (list!1373 (charsOf!316 separatorToken!170)))))

(assert (=> b!236808 (= e!146556 (and tp!94774 tp!94764))))

(declare-fun b!236809 () Bool)

(declare-fun e!146543 () Bool)

(declare-fun tp!94768 () Bool)

(assert (=> b!236809 (= e!146543 (and tp!94768 (inv!4369 (tag!865 (rule!1228 (h!8915 tokens!465)))) (inv!4373 (transformation!661 (rule!1228 (h!8915 tokens!465)))) e!146528))))

(declare-fun b!236810 () Bool)

(assert (=> b!236810 (= e!146540 e!146537)))

(declare-fun res!109254 () Bool)

(assert (=> b!236810 (=> (not res!109254) (not e!146537))))

(assert (=> b!236810 (= res!109254 (matchR!223 (regex!661 lt!94268) lt!94301))))

(declare-fun get!1134 (Option!676) Rule!1122)

(assert (=> b!236810 (= lt!94268 (get!1134 lt!94266))))

(declare-fun tp!94769 () Bool)

(declare-fun b!236811 () Bool)

(declare-fun inv!21 (TokenValue!683) Bool)

(assert (=> b!236811 (= e!146555 (and (inv!21 (value!23154 separatorToken!170)) e!146560 tp!94769))))

(declare-fun b!236812 () Bool)

(declare-fun isEmpty!2082 (BalanceConc!2296) Bool)

(assert (=> b!236812 (= e!146549 (isEmpty!2082 (_2!2140 lt!94302)))))

(declare-fun b!236813 () Bool)

(declare-fun Unit!4175 () Unit!4168)

(assert (=> b!236813 (= e!146542 Unit!4175)))

(declare-fun lt!94293 () Unit!4168)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!54 (LexerInterface!547 List!3527 List!3527 Rule!1122 Rule!1122 C!2692) Unit!4168)

(assert (=> b!236813 (= lt!94293 (lemmaSepRuleNotContainsCharContainedInANonSepRule!54 thiss!17480 rules!1920 rules!1920 (rule!1228 lt!94259) (rule!1228 separatorToken!170) lt!94260))))

(assert (=> b!236813 false))

(declare-fun b!236814 () Bool)

(declare-fun res!109265 () Bool)

(assert (=> b!236814 (=> (not res!109265) (not e!146548))))

(assert (=> b!236814 (= res!109265 (rulesProduceIndividualToken!296 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!236815 () Bool)

(declare-fun tp!94771 () Bool)

(assert (=> b!236815 (= e!146536 (and (inv!21 (value!23154 (h!8915 tokens!465))) e!146543 tp!94771))))

(declare-fun b!236816 () Bool)

(declare-fun res!109267 () Bool)

(assert (=> b!236816 (=> (not res!109267) (not e!146539))))

(assert (=> b!236816 (= res!109267 (= (apply!652 (_1!2140 lt!94290) 0) lt!94259))))

(declare-fun b!236817 () Bool)

(assert (=> b!236817 (= e!146541 e!146546)))

(declare-fun res!109273 () Bool)

(assert (=> b!236817 (=> (not res!109273) (not e!146546))))

(assert (=> b!236817 (= res!109273 (matchR!223 (regex!661 lt!94261) lt!94305))))

(assert (=> b!236817 (= lt!94261 (get!1134 lt!94267))))

(declare-fun b!236818 () Bool)

(assert (=> b!236818 (= e!146539 (isEmpty!2082 (_2!2140 lt!94290)))))

(declare-fun e!146545 () Bool)

(declare-fun b!236819 () Bool)

(assert (=> b!236819 (= e!146545 (not (= lt!94275 (++!890 lt!94274 lt!94307))))))

(assert (=> b!236820 (= e!146544 (and tp!94766 tp!94773))))

(declare-fun b!236821 () Bool)

(declare-fun res!109259 () Bool)

(assert (=> b!236821 (=> (not res!109259) (not e!146548))))

(assert (=> b!236821 (= res!109259 (isSeparator!661 (rule!1228 separatorToken!170)))))

(declare-fun b!236822 () Bool)

(assert (=> b!236822 (= e!146530 e!146531)))

(declare-fun res!109282 () Bool)

(assert (=> b!236822 (=> res!109282 e!146531)))

(assert (=> b!236822 (= res!109282 e!146545)))

(declare-fun res!109257 () Bool)

(assert (=> b!236822 (=> (not res!109257) (not e!146545))))

(assert (=> b!236822 (= res!109257 (not lt!94308))))

(assert (=> b!236822 (= lt!94308 (= lt!94275 lt!94272))))

(declare-fun b!236823 () Bool)

(declare-fun res!109283 () Bool)

(assert (=> b!236823 (=> res!109283 e!146550)))

(assert (=> b!236823 (= res!109283 (not (= (filter!55 (_1!2142 (lexList!175 thiss!17480 rules!1920 lt!94307)) lambda!7623) (t!34252 tokens!465))))))

(assert (= (and start!25238 res!109275) b!236794))

(assert (= (and b!236794 res!109261) b!236782))

(assert (= (and b!236782 res!109266) b!236785))

(assert (= (and b!236785 res!109286) b!236814))

(assert (= (and b!236814 res!109265) b!236821))

(assert (= (and b!236821 res!109259) b!236805))

(assert (= (and b!236805 res!109280) b!236800))

(assert (= (and b!236800 res!109258) b!236774))

(assert (= (and b!236774 res!109270) b!236798))

(assert (= (and b!236798 res!109264) b!236786))

(assert (= (and b!236786 res!109281) b!236807))

(assert (= (and b!236807 (not res!109287)) b!236822))

(assert (= (and b!236822 res!109257) b!236819))

(assert (= (and b!236822 (not res!109282)) b!236788))

(assert (= (and b!236788 (not res!109284)) b!236803))

(assert (= (and b!236803 (not res!109263)) b!236801))

(assert (= (and b!236801 (not res!109285)) b!236784))

(assert (= (and b!236784 (not res!109274)) b!236790))

(assert (= (and b!236790 res!109256) b!236804))

(assert (= (and b!236804 res!109253) b!236796))

(assert (= (and b!236790 (not res!109276)) b!236779))

(assert (= (and b!236779 (not res!109279)) b!236797))

(assert (= (and b!236797 res!109268) b!236791))

(assert (= (and b!236779 c!45367) b!236776))

(assert (= (and b!236779 (not c!45367)) b!236806))

(assert (= (and b!236779 res!109272) b!236773))

(assert (= (and b!236773 res!109260) b!236812))

(assert (= (and b!236779 res!109255) b!236817))

(assert (= (and b!236817 res!109273) b!236802))

(assert (= (and b!236779 res!109269) b!236816))

(assert (= (and b!236816 res!109267) b!236818))

(assert (= (and b!236779 res!109262) b!236810))

(assert (= (and b!236810 res!109254) b!236778))

(assert (= (and b!236779 c!45366) b!236775))

(assert (= (and b!236779 (not c!45366)) b!236777))

(assert (= (and b!236775 res!109278) b!236793))

(assert (= (and b!236779 c!45368) b!236813))

(assert (= (and b!236779 (not c!45368)) b!236783))

(assert (= (and b!236779 (not res!109277)) b!236823))

(assert (= (and b!236823 (not res!109283)) b!236780))

(assert (= (and b!236780 (not res!109271)) b!236787))

(assert (= b!236789 b!236820))

(assert (= b!236781 b!236789))

(assert (= (and start!25238 ((_ is Cons!3517) rules!1920)) b!236781))

(assert (= b!236792 b!236808))

(assert (= b!236811 b!236792))

(assert (= start!25238 b!236811))

(assert (= b!236809 b!236799))

(assert (= b!236815 b!236809))

(assert (= b!236795 b!236815))

(assert (= (and start!25238 ((_ is Cons!3518) tokens!465)) b!236795))

(declare-fun m!284545 () Bool)

(assert (=> b!236823 m!284545))

(declare-fun m!284547 () Bool)

(assert (=> b!236823 m!284547))

(declare-fun m!284549 () Bool)

(assert (=> b!236805 m!284549))

(declare-fun m!284551 () Bool)

(assert (=> b!236815 m!284551))

(declare-fun m!284553 () Bool)

(assert (=> b!236789 m!284553))

(declare-fun m!284555 () Bool)

(assert (=> b!236789 m!284555))

(declare-fun m!284557 () Bool)

(assert (=> b!236812 m!284557))

(declare-fun m!284559 () Bool)

(assert (=> b!236779 m!284559))

(declare-fun m!284561 () Bool)

(assert (=> b!236779 m!284561))

(declare-fun m!284563 () Bool)

(assert (=> b!236779 m!284563))

(declare-fun m!284565 () Bool)

(assert (=> b!236779 m!284565))

(declare-fun m!284567 () Bool)

(assert (=> b!236779 m!284567))

(declare-fun m!284569 () Bool)

(assert (=> b!236779 m!284569))

(declare-fun m!284571 () Bool)

(assert (=> b!236779 m!284571))

(declare-fun m!284573 () Bool)

(assert (=> b!236779 m!284573))

(declare-fun m!284575 () Bool)

(assert (=> b!236779 m!284575))

(declare-fun m!284577 () Bool)

(assert (=> b!236779 m!284577))

(assert (=> b!236779 m!284571))

(declare-fun m!284579 () Bool)

(assert (=> b!236779 m!284579))

(declare-fun m!284581 () Bool)

(assert (=> b!236779 m!284581))

(declare-fun m!284583 () Bool)

(assert (=> b!236779 m!284583))

(declare-fun m!284585 () Bool)

(assert (=> b!236779 m!284585))

(declare-fun m!284587 () Bool)

(assert (=> b!236779 m!284587))

(declare-fun m!284589 () Bool)

(assert (=> b!236779 m!284589))

(declare-fun m!284591 () Bool)

(assert (=> b!236779 m!284591))

(declare-fun m!284593 () Bool)

(assert (=> b!236779 m!284593))

(declare-fun m!284595 () Bool)

(assert (=> b!236779 m!284595))

(declare-fun m!284597 () Bool)

(assert (=> b!236779 m!284597))

(declare-fun m!284599 () Bool)

(assert (=> b!236779 m!284599))

(declare-fun m!284601 () Bool)

(assert (=> b!236779 m!284601))

(declare-fun m!284603 () Bool)

(assert (=> b!236779 m!284603))

(declare-fun m!284605 () Bool)

(assert (=> b!236779 m!284605))

(declare-fun m!284607 () Bool)

(assert (=> b!236779 m!284607))

(declare-fun m!284609 () Bool)

(assert (=> b!236779 m!284609))

(assert (=> b!236779 m!284587))

(declare-fun m!284611 () Bool)

(assert (=> b!236779 m!284611))

(assert (=> b!236779 m!284597))

(declare-fun m!284613 () Bool)

(assert (=> b!236779 m!284613))

(declare-fun m!284615 () Bool)

(assert (=> b!236779 m!284615))

(declare-fun m!284617 () Bool)

(assert (=> b!236779 m!284617))

(declare-fun m!284619 () Bool)

(assert (=> b!236779 m!284619))

(declare-fun m!284621 () Bool)

(assert (=> b!236779 m!284621))

(declare-fun m!284623 () Bool)

(assert (=> b!236779 m!284623))

(declare-fun m!284625 () Bool)

(assert (=> b!236779 m!284625))

(assert (=> b!236779 m!284623))

(declare-fun m!284627 () Bool)

(assert (=> b!236779 m!284627))

(declare-fun m!284629 () Bool)

(assert (=> b!236779 m!284629))

(declare-fun m!284631 () Bool)

(assert (=> b!236779 m!284631))

(declare-fun m!284633 () Bool)

(assert (=> b!236779 m!284633))

(assert (=> b!236779 m!284593))

(declare-fun m!284635 () Bool)

(assert (=> b!236779 m!284635))

(declare-fun m!284637 () Bool)

(assert (=> b!236779 m!284637))

(declare-fun m!284639 () Bool)

(assert (=> b!236779 m!284639))

(declare-fun m!284641 () Bool)

(assert (=> b!236779 m!284641))

(declare-fun m!284643 () Bool)

(assert (=> b!236811 m!284643))

(declare-fun m!284645 () Bool)

(assert (=> b!236792 m!284645))

(declare-fun m!284647 () Bool)

(assert (=> b!236792 m!284647))

(declare-fun m!284649 () Bool)

(assert (=> b!236787 m!284649))

(declare-fun m!284651 () Bool)

(assert (=> b!236787 m!284651))

(assert (=> b!236787 m!284651))

(declare-fun m!284653 () Bool)

(assert (=> b!236787 m!284653))

(declare-fun m!284655 () Bool)

(assert (=> b!236794 m!284655))

(declare-fun m!284657 () Bool)

(assert (=> b!236780 m!284657))

(declare-fun m!284659 () Bool)

(assert (=> b!236780 m!284659))

(declare-fun m!284661 () Bool)

(assert (=> b!236817 m!284661))

(declare-fun m!284663 () Bool)

(assert (=> b!236817 m!284663))

(declare-fun m!284665 () Bool)

(assert (=> b!236784 m!284665))

(assert (=> b!236784 m!284665))

(declare-fun m!284667 () Bool)

(assert (=> b!236784 m!284667))

(assert (=> b!236784 m!284667))

(declare-fun m!284669 () Bool)

(assert (=> b!236784 m!284669))

(declare-fun m!284671 () Bool)

(assert (=> b!236784 m!284671))

(declare-fun m!284673 () Bool)

(assert (=> b!236790 m!284673))

(declare-fun m!284675 () Bool)

(assert (=> b!236790 m!284675))

(declare-fun m!284677 () Bool)

(assert (=> b!236790 m!284677))

(declare-fun m!284679 () Bool)

(assert (=> b!236800 m!284679))

(declare-fun m!284681 () Bool)

(assert (=> b!236791 m!284681))

(declare-fun m!284683 () Bool)

(assert (=> b!236791 m!284683))

(declare-fun m!284685 () Bool)

(assert (=> b!236810 m!284685))

(declare-fun m!284687 () Bool)

(assert (=> b!236810 m!284687))

(declare-fun m!284689 () Bool)

(assert (=> b!236795 m!284689))

(declare-fun m!284691 () Bool)

(assert (=> start!25238 m!284691))

(declare-fun m!284693 () Bool)

(assert (=> b!236782 m!284693))

(declare-fun m!284695 () Bool)

(assert (=> b!236801 m!284695))

(assert (=> b!236801 m!284695))

(declare-fun m!284697 () Bool)

(assert (=> b!236801 m!284697))

(declare-fun m!284699 () Bool)

(assert (=> b!236801 m!284699))

(declare-fun m!284701 () Bool)

(assert (=> b!236796 m!284701))

(declare-fun m!284703 () Bool)

(assert (=> b!236819 m!284703))

(declare-fun m!284705 () Bool)

(assert (=> b!236798 m!284705))

(declare-fun m!284707 () Bool)

(assert (=> b!236798 m!284707))

(declare-fun m!284709 () Bool)

(assert (=> b!236798 m!284709))

(declare-fun m!284711 () Bool)

(assert (=> b!236788 m!284711))

(declare-fun m!284713 () Bool)

(assert (=> b!236788 m!284713))

(declare-fun m!284715 () Bool)

(assert (=> b!236788 m!284715))

(declare-fun m!284717 () Bool)

(assert (=> b!236788 m!284717))

(declare-fun m!284719 () Bool)

(assert (=> b!236788 m!284719))

(declare-fun m!284721 () Bool)

(assert (=> b!236773 m!284721))

(declare-fun m!284723 () Bool)

(assert (=> b!236786 m!284723))

(assert (=> b!236786 m!284723))

(declare-fun m!284725 () Bool)

(assert (=> b!236786 m!284725))

(declare-fun m!284727 () Bool)

(assert (=> b!236775 m!284727))

(declare-fun m!284729 () Bool)

(assert (=> b!236775 m!284729))

(declare-fun m!284731 () Bool)

(assert (=> b!236818 m!284731))

(declare-fun m!284733 () Bool)

(assert (=> b!236816 m!284733))

(declare-fun m!284735 () Bool)

(assert (=> b!236813 m!284735))

(declare-fun m!284737 () Bool)

(assert (=> b!236809 m!284737))

(declare-fun m!284739 () Bool)

(assert (=> b!236809 m!284739))

(declare-fun m!284741 () Bool)

(assert (=> b!236804 m!284741))

(declare-fun m!284743 () Bool)

(assert (=> b!236814 m!284743))

(declare-fun m!284745 () Bool)

(assert (=> b!236807 m!284745))

(declare-fun m!284747 () Bool)

(assert (=> b!236807 m!284747))

(declare-fun m!284749 () Bool)

(assert (=> b!236807 m!284749))

(declare-fun m!284751 () Bool)

(assert (=> b!236807 m!284751))

(declare-fun m!284753 () Bool)

(assert (=> b!236807 m!284753))

(declare-fun m!284755 () Bool)

(assert (=> b!236807 m!284755))

(assert (=> b!236807 m!284751))

(declare-fun m!284757 () Bool)

(assert (=> b!236807 m!284757))

(declare-fun m!284759 () Bool)

(assert (=> b!236807 m!284759))

(assert (=> b!236807 m!284753))

(declare-fun m!284761 () Bool)

(assert (=> b!236807 m!284761))

(declare-fun m!284763 () Bool)

(assert (=> b!236807 m!284763))

(assert (=> b!236807 m!284745))

(declare-fun m!284765 () Bool)

(assert (=> b!236807 m!284765))

(declare-fun m!284767 () Bool)

(assert (=> b!236807 m!284767))

(assert (=> b!236807 m!284761))

(declare-fun m!284769 () Bool)

(assert (=> b!236807 m!284769))

(declare-fun m!284771 () Bool)

(assert (=> b!236797 m!284771))

(assert (=> b!236797 m!284623))

(declare-fun m!284773 () Bool)

(assert (=> b!236803 m!284773))

(declare-fun m!284775 () Bool)

(assert (=> b!236785 m!284775))

(declare-fun m!284777 () Bool)

(assert (=> b!236785 m!284777))

(check-sat (not b!236813) (not b!236794) (not b_next!8777) (not b!236814) (not b_next!8785) (not b!236797) (not b!236800) b_and!17671 (not b!236810) (not start!25238) b_and!17669 (not b!236809) (not b_next!8779) b_and!17675 (not b!236812) (not b!236823) (not b!236788) (not b!236773) (not b!236832) (not b!236811) (not b!236815) (not b!236803) (not b!236817) (not b!236819) (not b!236796) (not b!236782) (not b!236804) (not b!236816) (not b!236787) (not b!236807) (not b!236798) (not b!236789) (not b_next!8783) (not b!236818) (not b!236801) (not b_next!8787) (not b!236805) (not b!236792) b_and!17679 (not b!236775) b_and!17673 (not b!236781) (not b!236790) (not b!236791) (not b!236786) (not b!236795) (not b!236780) (not b!236785) b_and!17677 (not b!236779) (not b_next!8781) (not b!236784))
(check-sat b_and!17669 (not b_next!8777) (not b_next!8785) (not b_next!8783) (not b_next!8787) b_and!17671 b_and!17679 b_and!17673 b_and!17677 (not b_next!8781) (not b_next!8779) b_and!17675)
