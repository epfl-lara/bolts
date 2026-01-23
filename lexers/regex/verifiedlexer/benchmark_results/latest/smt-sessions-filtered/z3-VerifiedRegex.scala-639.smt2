; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21862 () Bool)

(assert start!21862)

(declare-fun b!203181 () Bool)

(declare-fun b_free!7833 () Bool)

(declare-fun b_next!7833 () Bool)

(assert (=> b!203181 (= b_free!7833 (not b_next!7833))))

(declare-fun tp!90203 () Bool)

(declare-fun b_and!14685 () Bool)

(assert (=> b!203181 (= tp!90203 b_and!14685)))

(declare-fun b_free!7835 () Bool)

(declare-fun b_next!7835 () Bool)

(assert (=> b!203181 (= b_free!7835 (not b_next!7835))))

(declare-fun tp!90195 () Bool)

(declare-fun b_and!14687 () Bool)

(assert (=> b!203181 (= tp!90195 b_and!14687)))

(declare-fun b!203203 () Bool)

(declare-fun b_free!7837 () Bool)

(declare-fun b_next!7837 () Bool)

(assert (=> b!203203 (= b_free!7837 (not b_next!7837))))

(declare-fun tp!90204 () Bool)

(declare-fun b_and!14689 () Bool)

(assert (=> b!203203 (= tp!90204 b_and!14689)))

(declare-fun b_free!7839 () Bool)

(declare-fun b_next!7839 () Bool)

(assert (=> b!203203 (= b_free!7839 (not b_next!7839))))

(declare-fun tp!90206 () Bool)

(declare-fun b_and!14691 () Bool)

(assert (=> b!203203 (= tp!90206 b_and!14691)))

(declare-fun b!203197 () Bool)

(declare-fun b_free!7841 () Bool)

(declare-fun b_next!7841 () Bool)

(assert (=> b!203197 (= b_free!7841 (not b_next!7841))))

(declare-fun tp!90205 () Bool)

(declare-fun b_and!14693 () Bool)

(assert (=> b!203197 (= tp!90205 b_and!14693)))

(declare-fun b_free!7843 () Bool)

(declare-fun b_next!7843 () Bool)

(assert (=> b!203197 (= b_free!7843 (not b_next!7843))))

(declare-fun tp!90200 () Bool)

(declare-fun b_and!14695 () Bool)

(assert (=> b!203197 (= tp!90200 b_and!14695)))

(declare-fun bs!20730 () Bool)

(declare-fun b!203204 () Bool)

(declare-fun b!203187 () Bool)

(assert (= bs!20730 (and b!203204 b!203187)))

(declare-fun lambda!6192 () Int)

(declare-fun lambda!6191 () Int)

(assert (=> bs!20730 (not (= lambda!6192 lambda!6191))))

(declare-fun b!203222 () Bool)

(declare-fun e!124881 () Bool)

(assert (=> b!203222 (= e!124881 true)))

(declare-fun b!203221 () Bool)

(declare-fun e!124880 () Bool)

(assert (=> b!203221 (= e!124880 e!124881)))

(declare-fun b!203220 () Bool)

(declare-fun e!124879 () Bool)

(assert (=> b!203220 (= e!124879 e!124880)))

(assert (=> b!203204 e!124879))

(assert (= b!203221 b!203222))

(assert (= b!203220 b!203221))

(declare-datatypes ((List!3265 0))(
  ( (Nil!3255) (Cons!3255 (h!8652 (_ BitVec 16)) (t!30789 List!3265)) )
))
(declare-datatypes ((TokenValue!623 0))(
  ( (FloatLiteralValue!1246 (text!4806 List!3265)) (TokenValueExt!622 (__x!2733 Int)) (Broken!3115 (value!21418 List!3265)) (Object!632) (End!623) (Def!623) (Underscore!623) (Match!623) (Else!623) (Error!623) (Case!623) (If!623) (Extends!623) (Abstract!623) (Class!623) (Val!623) (DelimiterValue!1246 (del!683 List!3265)) (KeywordValue!629 (value!21419 List!3265)) (CommentValue!1246 (value!21420 List!3265)) (WhitespaceValue!1246 (value!21421 List!3265)) (IndentationValue!623 (value!21422 List!3265)) (String!4194) (Int32!623) (Broken!3116 (value!21423 List!3265)) (Boolean!624) (Unit!3267) (OperatorValue!626 (op!683 List!3265)) (IdentifierValue!1246 (value!21424 List!3265)) (IdentifierValue!1247 (value!21425 List!3265)) (WhitespaceValue!1247 (value!21426 List!3265)) (True!1246) (False!1246) (Broken!3117 (value!21427 List!3265)) (Broken!3118 (value!21428 List!3265)) (True!1247) (RightBrace!623) (RightBracket!623) (Colon!623) (Null!623) (Comma!623) (LeftBracket!623) (False!1247) (LeftBrace!623) (ImaginaryLiteralValue!623 (text!4807 List!3265)) (StringLiteralValue!1869 (value!21429 List!3265)) (EOFValue!623 (value!21430 List!3265)) (IdentValue!623 (value!21431 List!3265)) (DelimiterValue!1247 (value!21432 List!3265)) (DedentValue!623 (value!21433 List!3265)) (NewLineValue!623 (value!21434 List!3265)) (IntegerValue!1869 (value!21435 (_ BitVec 32)) (text!4808 List!3265)) (IntegerValue!1870 (value!21436 Int) (text!4809 List!3265)) (Times!623) (Or!623) (Equal!623) (Minus!623) (Broken!3119 (value!21437 List!3265)) (And!623) (Div!623) (LessEqual!623) (Mod!623) (Concat!1448) (Not!623) (Plus!623) (SpaceValue!623 (value!21438 List!3265)) (IntegerValue!1871 (value!21439 Int) (text!4810 List!3265)) (StringLiteralValue!1870 (text!4811 List!3265)) (FloatLiteralValue!1247 (text!4812 List!3265)) (BytesLiteralValue!623 (value!21440 List!3265)) (CommentValue!1247 (value!21441 List!3265)) (StringLiteralValue!1871 (value!21442 List!3265)) (ErrorTokenValue!623 (msg!684 List!3265)) )
))
(declare-datatypes ((C!2572 0))(
  ( (C!2573 (val!1172 Int)) )
))
(declare-datatypes ((List!3266 0))(
  ( (Nil!3256) (Cons!3256 (h!8653 C!2572) (t!30790 List!3266)) )
))
(declare-datatypes ((IArray!2049 0))(
  ( (IArray!2050 (innerList!1082 List!3266)) )
))
(declare-datatypes ((Conc!1024 0))(
  ( (Node!1024 (left!2583 Conc!1024) (right!2913 Conc!1024) (csize!2278 Int) (cheight!1235 Int)) (Leaf!1664 (xs!3619 IArray!2049) (csize!2279 Int)) (Empty!1024) )
))
(declare-datatypes ((BalanceConc!2056 0))(
  ( (BalanceConc!2057 (c!39053 Conc!1024)) )
))
(declare-datatypes ((TokenValueInjection!1018 0))(
  ( (TokenValueInjection!1019 (toValue!1284 Int) (toChars!1143 Int)) )
))
(declare-datatypes ((String!4195 0))(
  ( (String!4196 (value!21443 String)) )
))
(declare-datatypes ((Regex!825 0))(
  ( (ElementMatch!825 (c!39054 C!2572)) (Concat!1449 (regOne!2162 Regex!825) (regTwo!2162 Regex!825)) (EmptyExpr!825) (Star!825 (reg!1154 Regex!825)) (EmptyLang!825) (Union!825 (regOne!2163 Regex!825) (regTwo!2163 Regex!825)) )
))
(declare-datatypes ((Rule!1002 0))(
  ( (Rule!1003 (regex!601 Regex!825) (tag!785 String!4195) (isSeparator!601 Bool) (transformation!601 TokenValueInjection!1018)) )
))
(declare-datatypes ((List!3267 0))(
  ( (Nil!3257) (Cons!3257 (h!8654 Rule!1002) (t!30791 List!3267)) )
))
(declare-fun rules!1920 () List!3267)

(get-info :version)

(assert (= (and b!203204 ((_ is Cons!3257) rules!1920)) b!203220))

(declare-fun order!2105 () Int)

(declare-fun order!2107 () Int)

(declare-fun dynLambda!1423 (Int Int) Int)

(declare-fun dynLambda!1424 (Int Int) Int)

(assert (=> b!203222 (< (dynLambda!1423 order!2105 (toValue!1284 (transformation!601 (h!8654 rules!1920)))) (dynLambda!1424 order!2107 lambda!6192))))

(declare-fun order!2109 () Int)

(declare-fun dynLambda!1425 (Int Int) Int)

(assert (=> b!203222 (< (dynLambda!1425 order!2109 (toChars!1143 (transformation!601 (h!8654 rules!1920)))) (dynLambda!1424 order!2107 lambda!6192))))

(assert (=> b!203204 true))

(declare-fun b!203167 () Bool)

(declare-fun res!92965 () Bool)

(declare-fun e!124859 () Bool)

(assert (=> b!203167 (=> (not res!92965) (not e!124859))))

(declare-datatypes ((Token!946 0))(
  ( (Token!947 (value!21444 TokenValue!623) (rule!1128 Rule!1002) (size!2608 Int) (originalCharacters!644 List!3266)) )
))
(declare-datatypes ((List!3268 0))(
  ( (Nil!3258) (Cons!3258 (h!8655 Token!946) (t!30792 List!3268)) )
))
(declare-fun tokens!465 () List!3268)

(assert (=> b!203167 (= res!92965 ((_ is Cons!3258) tokens!465))))

(declare-fun b!203168 () Bool)

(declare-fun e!124868 () Bool)

(declare-fun e!124862 () Bool)

(assert (=> b!203168 (= e!124868 e!124862)))

(declare-fun res!92937 () Bool)

(assert (=> b!203168 (=> res!92937 e!124862)))

(declare-fun lt!72654 () List!3266)

(declare-fun lt!72643 () List!3266)

(declare-fun lt!72655 () List!3266)

(assert (=> b!203168 (= res!92937 (or (not (= lt!72654 lt!72643)) (not (= lt!72643 lt!72655)) (not (= lt!72654 lt!72655))))))

(declare-datatypes ((LexerInterface!487 0))(
  ( (LexerInterfaceExt!484 (__x!2734 Int)) (Lexer!485) )
))
(declare-fun thiss!17480 () LexerInterface!487)

(declare-fun printList!171 (LexerInterface!487 List!3268) List!3266)

(assert (=> b!203168 (= lt!72643 (printList!171 thiss!17480 (Cons!3258 (h!8655 tokens!465) Nil!3258)))))

(declare-fun lt!72642 () BalanceConc!2056)

(declare-fun list!1211 (BalanceConc!2056) List!3266)

(assert (=> b!203168 (= lt!72654 (list!1211 lt!72642))))

(declare-datatypes ((IArray!2051 0))(
  ( (IArray!2052 (innerList!1083 List!3268)) )
))
(declare-datatypes ((Conc!1025 0))(
  ( (Node!1025 (left!2584 Conc!1025) (right!2914 Conc!1025) (csize!2280 Int) (cheight!1236 Int)) (Leaf!1665 (xs!3620 IArray!2051) (csize!2281 Int)) (Empty!1025) )
))
(declare-datatypes ((BalanceConc!2058 0))(
  ( (BalanceConc!2059 (c!39055 Conc!1025)) )
))
(declare-fun lt!72647 () BalanceConc!2058)

(declare-fun printTailRec!181 (LexerInterface!487 BalanceConc!2058 Int BalanceConc!2056) BalanceConc!2056)

(assert (=> b!203168 (= lt!72642 (printTailRec!181 thiss!17480 lt!72647 0 (BalanceConc!2057 Empty!1024)))))

(declare-fun print!218 (LexerInterface!487 BalanceConc!2058) BalanceConc!2056)

(assert (=> b!203168 (= lt!72642 (print!218 thiss!17480 lt!72647))))

(declare-fun singletonSeq!153 (Token!946) BalanceConc!2058)

(assert (=> b!203168 (= lt!72647 (singletonSeq!153 (h!8655 tokens!465)))))

(declare-fun b!203169 () Bool)

(declare-fun e!124852 () Bool)

(declare-fun e!124867 () Bool)

(assert (=> b!203169 (= e!124852 e!124867)))

(declare-fun res!92955 () Bool)

(assert (=> b!203169 (=> res!92955 e!124867)))

(declare-fun lt!72626 () Bool)

(assert (=> b!203169 (= res!92955 (not lt!72626))))

(declare-fun e!124851 () Bool)

(assert (=> b!203169 e!124851))

(declare-fun res!92939 () Bool)

(assert (=> b!203169 (=> (not res!92939) (not e!124851))))

(declare-datatypes ((tuple2!3386 0))(
  ( (tuple2!3387 (_1!1909 Token!946) (_2!1909 List!3266)) )
))
(declare-fun lt!72652 () tuple2!3386)

(assert (=> b!203169 (= res!92939 (= (_1!1909 lt!72652) (h!8655 tokens!465)))))

(declare-datatypes ((Option!495 0))(
  ( (None!494) (Some!494 (v!14037 tuple2!3386)) )
))
(declare-fun lt!72638 () Option!495)

(declare-fun get!963 (Option!495) tuple2!3386)

(assert (=> b!203169 (= lt!72652 (get!963 lt!72638))))

(declare-fun isDefined!346 (Option!495) Bool)

(assert (=> b!203169 (isDefined!346 lt!72638)))

(declare-fun maxPrefix!217 (LexerInterface!487 List!3267 List!3266) Option!495)

(assert (=> b!203169 (= lt!72638 (maxPrefix!217 thiss!17480 rules!1920 lt!72655))))

(declare-fun b!203170 () Bool)

(declare-fun res!92967 () Bool)

(assert (=> b!203170 (=> (not res!92967) (not e!124859))))

(declare-fun separatorToken!170 () Token!946)

(assert (=> b!203170 (= res!92967 (isSeparator!601 (rule!1128 separatorToken!170)))))

(declare-fun b!203171 () Bool)

(declare-fun tp!90201 () Bool)

(declare-fun e!124841 () Bool)

(declare-fun e!124848 () Bool)

(declare-fun inv!21 (TokenValue!623) Bool)

(assert (=> b!203171 (= e!124841 (and (inv!21 (value!21444 separatorToken!170)) e!124848 tp!90201))))

(declare-fun e!124842 () Bool)

(declare-fun b!203172 () Bool)

(declare-fun tp!90197 () Bool)

(declare-fun e!124845 () Bool)

(declare-fun inv!4095 (String!4195) Bool)

(declare-fun inv!4098 (TokenValueInjection!1018) Bool)

(assert (=> b!203172 (= e!124842 (and tp!90197 (inv!4095 (tag!785 (h!8654 rules!1920))) (inv!4098 (transformation!601 (h!8654 rules!1920))) e!124845))))

(declare-fun b!203173 () Bool)

(declare-fun res!92964 () Bool)

(declare-fun e!124866 () Bool)

(assert (=> b!203173 (=> res!92964 e!124866)))

(declare-fun lt!72667 () Token!946)

(declare-fun validRegex!207 (Regex!825) Bool)

(assert (=> b!203173 (= res!92964 (not (validRegex!207 (regex!601 (rule!1128 lt!72667)))))))

(declare-fun b!203174 () Bool)

(declare-fun e!124849 () Bool)

(assert (=> b!203174 (= e!124859 e!124849)))

(declare-fun res!92936 () Bool)

(assert (=> b!203174 (=> (not res!92936) (not e!124849))))

(declare-fun lt!72658 () List!3266)

(declare-fun lt!72633 () List!3266)

(assert (=> b!203174 (= res!92936 (= lt!72658 lt!72633))))

(declare-fun lt!72666 () BalanceConc!2058)

(declare-fun printWithSeparatorTokenWhenNeededRec!170 (LexerInterface!487 List!3267 BalanceConc!2058 Token!946 Int) BalanceConc!2056)

(assert (=> b!203174 (= lt!72633 (list!1211 (printWithSeparatorTokenWhenNeededRec!170 thiss!17480 rules!1920 lt!72666 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!180 (LexerInterface!487 List!3267 List!3268 Token!946) List!3266)

(assert (=> b!203174 (= lt!72658 (printWithSeparatorTokenWhenNeededList!180 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!203175 () Bool)

(declare-fun e!124847 () Bool)

(declare-fun tp!90207 () Bool)

(assert (=> b!203175 (= e!124847 (and e!124842 tp!90207))))

(declare-fun b!203176 () Bool)

(declare-fun e!124853 () Bool)

(assert (=> b!203176 (= e!124853 e!124859)))

(declare-fun res!92945 () Bool)

(assert (=> b!203176 (=> (not res!92945) (not e!124859))))

(declare-fun rulesProduceEachTokenIndividually!279 (LexerInterface!487 List!3267 BalanceConc!2058) Bool)

(assert (=> b!203176 (= res!92945 (rulesProduceEachTokenIndividually!279 thiss!17480 rules!1920 lt!72666))))

(declare-fun seqFromList!579 (List!3268) BalanceConc!2058)

(assert (=> b!203176 (= lt!72666 (seqFromList!579 tokens!465))))

(declare-fun b!203177 () Bool)

(declare-fun e!124850 () Bool)

(assert (=> b!203177 (= e!124850 e!124868)))

(declare-fun res!92963 () Bool)

(assert (=> b!203177 (=> res!92963 e!124868)))

(declare-fun e!124872 () Bool)

(assert (=> b!203177 (= res!92963 e!124872)))

(declare-fun res!92943 () Bool)

(assert (=> b!203177 (=> (not res!92943) (not e!124872))))

(assert (=> b!203177 (= res!92943 (not lt!72626))))

(declare-fun lt!72649 () List!3266)

(assert (=> b!203177 (= lt!72626 (= lt!72658 lt!72649))))

(declare-fun b!203178 () Bool)

(declare-fun res!92940 () Bool)

(assert (=> b!203178 (=> (not res!92940) (not e!124859))))

(declare-fun sepAndNonSepRulesDisjointChars!190 (List!3267 List!3267) Bool)

(assert (=> b!203178 (= res!92940 (sepAndNonSepRulesDisjointChars!190 rules!1920 rules!1920))))

(declare-fun b!203179 () Bool)

(declare-fun res!92952 () Bool)

(declare-fun e!124863 () Bool)

(assert (=> b!203179 (=> (not res!92952) (not e!124863))))

(declare-datatypes ((tuple2!3388 0))(
  ( (tuple2!3389 (_1!1910 BalanceConc!2058) (_2!1910 BalanceConc!2056)) )
))
(declare-fun lt!72635 () tuple2!3388)

(declare-fun apply!524 (BalanceConc!2058 Int) Token!946)

(assert (=> b!203179 (= res!92952 (= (apply!524 (_1!1910 lt!72635) 0) lt!72667))))

(declare-fun e!124839 () Bool)

(declare-fun tp!90199 () Bool)

(declare-fun b!203180 () Bool)

(assert (=> b!203180 (= e!124848 (and tp!90199 (inv!4095 (tag!785 (rule!1128 separatorToken!170))) (inv!4098 (transformation!601 (rule!1128 separatorToken!170))) e!124839))))

(declare-fun e!124870 () Bool)

(assert (=> b!203181 (= e!124870 (and tp!90203 tp!90195))))

(declare-fun res!92935 () Bool)

(assert (=> start!21862 (=> (not res!92935) (not e!124853))))

(assert (=> start!21862 (= res!92935 ((_ is Lexer!485) thiss!17480))))

(assert (=> start!21862 e!124853))

(assert (=> start!21862 true))

(assert (=> start!21862 e!124847))

(declare-fun inv!4099 (Token!946) Bool)

(assert (=> start!21862 (and (inv!4099 separatorToken!170) e!124841)))

(declare-fun e!124854 () Bool)

(assert (=> start!21862 e!124854))

(declare-fun b!203182 () Bool)

(assert (=> b!203182 (= e!124867 e!124866)))

(declare-fun res!92962 () Bool)

(assert (=> b!203182 (=> res!92962 e!124866)))

(declare-fun lt!72662 () C!2572)

(declare-fun contains!534 (List!3266 C!2572) Bool)

(declare-fun usedCharacters!6 (Regex!825) List!3266)

(assert (=> b!203182 (= res!92962 (contains!534 (usedCharacters!6 (regex!601 (rule!1128 lt!72667))) lt!72662))))

(declare-fun lt!72629 () List!3266)

(declare-fun head!697 (List!3266) C!2572)

(assert (=> b!203182 (= lt!72662 (head!697 lt!72629))))

(declare-fun e!124840 () Bool)

(assert (=> b!203182 e!124840))

(declare-fun res!92942 () Bool)

(assert (=> b!203182 (=> (not res!92942) (not e!124840))))

(declare-datatypes ((Option!496 0))(
  ( (None!495) (Some!495 (v!14038 Rule!1002)) )
))
(declare-fun lt!72630 () Option!496)

(declare-fun isDefined!347 (Option!496) Bool)

(assert (=> b!203182 (= res!92942 (isDefined!347 lt!72630))))

(declare-fun getRuleFromTag!42 (LexerInterface!487 List!3267 String!4195) Option!496)

(assert (=> b!203182 (= lt!72630 (getRuleFromTag!42 thiss!17480 rules!1920 (tag!785 (rule!1128 lt!72667))))))

(declare-datatypes ((Unit!3268 0))(
  ( (Unit!3269) )
))
(declare-fun lt!72653 () Unit!3268)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!42 (LexerInterface!487 List!3267 List!3266 Token!946) Unit!3268)

(assert (=> b!203182 (= lt!72653 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!42 thiss!17480 rules!1920 lt!72629 lt!72667))))

(declare-fun charsOf!256 (Token!946) BalanceConc!2056)

(assert (=> b!203182 (= lt!72629 (list!1211 (charsOf!256 lt!72667)))))

(declare-fun lt!72634 () Unit!3268)

(declare-fun forallContained!168 (List!3268 Int Token!946) Unit!3268)

(assert (=> b!203182 (= lt!72634 (forallContained!168 tokens!465 lambda!6192 lt!72667))))

(assert (=> b!203182 e!124863))

(declare-fun res!92959 () Bool)

(assert (=> b!203182 (=> (not res!92959) (not e!124863))))

(declare-fun size!2609 (BalanceConc!2058) Int)

(assert (=> b!203182 (= res!92959 (= (size!2609 (_1!1910 lt!72635)) 1))))

(declare-fun lt!72663 () BalanceConc!2056)

(declare-fun lex!287 (LexerInterface!487 List!3267 BalanceConc!2056) tuple2!3388)

(assert (=> b!203182 (= lt!72635 (lex!287 thiss!17480 rules!1920 lt!72663))))

(declare-fun lt!72641 () BalanceConc!2058)

(assert (=> b!203182 (= lt!72663 (printTailRec!181 thiss!17480 lt!72641 0 (BalanceConc!2057 Empty!1024)))))

(assert (=> b!203182 (= lt!72663 (print!218 thiss!17480 lt!72641))))

(assert (=> b!203182 (= lt!72641 (singletonSeq!153 lt!72667))))

(declare-fun e!124838 () Bool)

(assert (=> b!203182 e!124838))

(declare-fun res!92946 () Bool)

(assert (=> b!203182 (=> (not res!92946) (not e!124838))))

(declare-fun lt!72640 () Option!496)

(assert (=> b!203182 (= res!92946 (isDefined!347 lt!72640))))

(assert (=> b!203182 (= lt!72640 (getRuleFromTag!42 thiss!17480 rules!1920 (tag!785 (rule!1128 separatorToken!170))))))

(declare-fun lt!72637 () List!3266)

(declare-fun lt!72656 () Unit!3268)

(assert (=> b!203182 (= lt!72656 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!42 thiss!17480 rules!1920 lt!72637 separatorToken!170))))

(declare-fun e!124846 () Bool)

(assert (=> b!203182 e!124846))

(declare-fun res!92949 () Bool)

(assert (=> b!203182 (=> (not res!92949) (not e!124846))))

(declare-fun lt!72661 () tuple2!3388)

(assert (=> b!203182 (= res!92949 (= (size!2609 (_1!1910 lt!72661)) 1))))

(declare-fun lt!72651 () BalanceConc!2056)

(assert (=> b!203182 (= lt!72661 (lex!287 thiss!17480 rules!1920 lt!72651))))

(declare-fun lt!72645 () BalanceConc!2058)

(assert (=> b!203182 (= lt!72651 (printTailRec!181 thiss!17480 lt!72645 0 (BalanceConc!2057 Empty!1024)))))

(assert (=> b!203182 (= lt!72651 (print!218 thiss!17480 lt!72645))))

(assert (=> b!203182 (= lt!72645 (singletonSeq!153 separatorToken!170))))

(declare-fun rulesProduceIndividualToken!236 (LexerInterface!487 List!3267 Token!946) Bool)

(assert (=> b!203182 (rulesProduceIndividualToken!236 thiss!17480 rules!1920 lt!72667)))

(declare-fun lt!72660 () Unit!3268)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!54 (LexerInterface!487 List!3267 List!3268 Token!946) Unit!3268)

(assert (=> b!203182 (= lt!72660 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!54 thiss!17480 rules!1920 tokens!465 lt!72667))))

(declare-fun head!698 (List!3268) Token!946)

(assert (=> b!203182 (= lt!72667 (head!698 (t!30792 tokens!465)))))

(declare-fun lt!72646 () Unit!3268)

(declare-fun e!124857 () Unit!3268)

(assert (=> b!203182 (= lt!72646 e!124857)))

(declare-fun c!39052 () Bool)

(declare-fun isEmpty!1678 (List!3268) Bool)

(assert (=> b!203182 (= c!39052 (isEmpty!1678 (t!30792 tokens!465)))))

(declare-fun lt!72628 () List!3266)

(declare-fun lt!72644 () Option!495)

(assert (=> b!203182 (= lt!72644 (maxPrefix!217 thiss!17480 rules!1920 lt!72628))))

(declare-fun lt!72664 () tuple2!3386)

(assert (=> b!203182 (= lt!72628 (_2!1909 lt!72664))))

(declare-fun lt!72668 () Unit!3268)

(declare-fun lemmaSamePrefixThenSameSuffix!122 (List!3266 List!3266 List!3266 List!3266 List!3266) Unit!3268)

(assert (=> b!203182 (= lt!72668 (lemmaSamePrefixThenSameSuffix!122 lt!72655 lt!72628 lt!72655 (_2!1909 lt!72664) lt!72658))))

(assert (=> b!203182 (= lt!72664 (get!963 (maxPrefix!217 thiss!17480 rules!1920 lt!72658)))))

(declare-fun isPrefix!297 (List!3266 List!3266) Bool)

(assert (=> b!203182 (isPrefix!297 lt!72655 lt!72649)))

(declare-fun lt!72627 () Unit!3268)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!192 (List!3266 List!3266) Unit!3268)

(assert (=> b!203182 (= lt!72627 (lemmaConcatTwoListThenFirstIsPrefix!192 lt!72655 lt!72628))))

(declare-fun e!124855 () Bool)

(assert (=> b!203182 e!124855))

(declare-fun res!92944 () Bool)

(assert (=> b!203182 (=> res!92944 e!124855)))

(assert (=> b!203182 (= res!92944 (isEmpty!1678 tokens!465))))

(declare-fun lt!72650 () Unit!3268)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!62 (LexerInterface!487 List!3267 List!3268 Token!946) Unit!3268)

(assert (=> b!203182 (= lt!72650 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!62 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!203183 () Bool)

(declare-fun matchR!163 (Regex!825 List!3266) Bool)

(assert (=> b!203183 (= e!124851 (matchR!163 (regex!601 (rule!1128 (h!8655 tokens!465))) lt!72655))))

(declare-fun b!203184 () Bool)

(declare-fun res!92941 () Bool)

(assert (=> b!203184 (=> (not res!92941) (not e!124859))))

(assert (=> b!203184 (= res!92941 (rulesProduceIndividualToken!236 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!203185 () Bool)

(declare-fun e!124843 () Bool)

(assert (=> b!203185 (= e!124840 e!124843)))

(declare-fun res!92958 () Bool)

(assert (=> b!203185 (=> (not res!92958) (not e!124843))))

(declare-fun lt!72639 () Rule!1002)

(assert (=> b!203185 (= res!92958 (matchR!163 (regex!601 lt!72639) lt!72629))))

(declare-fun get!964 (Option!496) Rule!1002)

(assert (=> b!203185 (= lt!72639 (get!964 lt!72630))))

(declare-fun tp!90198 () Bool)

(declare-fun b!203186 () Bool)

(declare-fun e!124871 () Bool)

(assert (=> b!203186 (= e!124854 (and (inv!4099 (h!8655 tokens!465)) e!124871 tp!90198))))

(declare-fun res!92966 () Bool)

(assert (=> b!203187 (=> (not res!92966) (not e!124859))))

(declare-fun forall!701 (List!3268 Int) Bool)

(assert (=> b!203187 (= res!92966 (forall!701 tokens!465 lambda!6191))))

(declare-fun b!203188 () Bool)

(declare-fun Unit!3270 () Unit!3268)

(assert (=> b!203188 (= e!124857 Unit!3270)))

(declare-fun b!203189 () Bool)

(declare-fun res!92953 () Bool)

(assert (=> b!203189 (=> (not res!92953) (not e!124846))))

(assert (=> b!203189 (= res!92953 (= (apply!524 (_1!1910 lt!72661) 0) separatorToken!170))))

(declare-fun b!203190 () Bool)

(assert (=> b!203190 (= e!124843 (= (rule!1128 lt!72667) lt!72639))))

(declare-fun b!203191 () Bool)

(declare-fun e!124860 () Bool)

(assert (=> b!203191 (= e!124838 e!124860)))

(declare-fun res!92948 () Bool)

(assert (=> b!203191 (=> (not res!92948) (not e!124860))))

(declare-fun lt!72636 () Rule!1002)

(assert (=> b!203191 (= res!92948 (matchR!163 (regex!601 lt!72636) lt!72637))))

(assert (=> b!203191 (= lt!72636 (get!964 lt!72640))))

(declare-fun b!203192 () Bool)

(declare-fun res!92938 () Bool)

(assert (=> b!203192 (=> (not res!92938) (not e!124853))))

(declare-fun isEmpty!1679 (List!3267) Bool)

(assert (=> b!203192 (= res!92938 (not (isEmpty!1679 rules!1920)))))

(declare-fun e!124856 () Bool)

(declare-fun b!203193 () Bool)

(declare-fun tp!90196 () Bool)

(assert (=> b!203193 (= e!124856 (and tp!90196 (inv!4095 (tag!785 (rule!1128 (h!8655 tokens!465)))) (inv!4098 (transformation!601 (rule!1128 (h!8655 tokens!465)))) e!124870))))

(declare-fun b!203194 () Bool)

(declare-fun isEmpty!1680 (BalanceConc!2056) Bool)

(assert (=> b!203194 (= e!124863 (isEmpty!1680 (_2!1910 lt!72635)))))

(declare-fun b!203195 () Bool)

(declare-fun e!124864 () Bool)

(assert (=> b!203195 (= e!124855 e!124864)))

(declare-fun res!92947 () Bool)

(assert (=> b!203195 (=> (not res!92947) (not e!124864))))

(declare-fun lt!72665 () Option!495)

(assert (=> b!203195 (= res!92947 (isDefined!346 lt!72665))))

(assert (=> b!203195 (= lt!72665 (maxPrefix!217 thiss!17480 rules!1920 lt!72658))))

(declare-fun b!203196 () Bool)

(declare-fun res!92956 () Bool)

(assert (=> b!203196 (=> (not res!92956) (not e!124853))))

(declare-fun rulesInvariant!453 (LexerInterface!487 List!3267) Bool)

(assert (=> b!203196 (= res!92956 (rulesInvariant!453 thiss!17480 rules!1920))))

(assert (=> b!203197 (= e!124845 (and tp!90205 tp!90200))))

(declare-fun b!203198 () Bool)

(declare-fun tp!90202 () Bool)

(assert (=> b!203198 (= e!124871 (and (inv!21 (value!21444 (h!8655 tokens!465))) e!124856 tp!90202))))

(declare-fun b!203199 () Bool)

(declare-fun res!92960 () Bool)

(assert (=> b!203199 (=> res!92960 e!124862)))

(assert (=> b!203199 (= res!92960 (not (rulesProduceIndividualToken!236 thiss!17480 rules!1920 (h!8655 tokens!465))))))

(declare-fun b!203200 () Bool)

(assert (=> b!203200 (= e!124860 (= (rule!1128 separatorToken!170) lt!72636))))

(declare-fun b!203201 () Bool)

(assert (=> b!203201 (= e!124849 (not e!124850))))

(declare-fun res!92950 () Bool)

(assert (=> b!203201 (=> res!92950 e!124850)))

(declare-fun lt!72659 () List!3266)

(assert (=> b!203201 (= res!92950 (not (= lt!72659 (list!1211 (printWithSeparatorTokenWhenNeededRec!170 thiss!17480 rules!1920 (seqFromList!579 (t!30792 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!72631 () List!3266)

(assert (=> b!203201 (= lt!72631 lt!72649)))

(declare-fun ++!794 (List!3266 List!3266) List!3266)

(assert (=> b!203201 (= lt!72649 (++!794 lt!72655 lt!72628))))

(assert (=> b!203201 (= lt!72631 (++!794 (++!794 lt!72655 lt!72637) lt!72659))))

(declare-fun lt!72632 () Unit!3268)

(declare-fun lemmaConcatAssociativity!296 (List!3266 List!3266 List!3266) Unit!3268)

(assert (=> b!203201 (= lt!72632 (lemmaConcatAssociativity!296 lt!72655 lt!72637 lt!72659))))

(assert (=> b!203201 (= lt!72655 (list!1211 (charsOf!256 (h!8655 tokens!465))))))

(assert (=> b!203201 (= lt!72628 (++!794 lt!72637 lt!72659))))

(assert (=> b!203201 (= lt!72659 (printWithSeparatorTokenWhenNeededList!180 thiss!17480 rules!1920 (t!30792 tokens!465) separatorToken!170))))

(assert (=> b!203201 (= lt!72637 (list!1211 (charsOf!256 separatorToken!170)))))

(declare-fun b!203202 () Bool)

(assert (=> b!203202 (= e!124872 (not (= lt!72658 (++!794 lt!72655 lt!72659))))))

(assert (=> b!203203 (= e!124839 (and tp!90204 tp!90206))))

(assert (=> b!203204 (= e!124862 e!124852)))

(declare-fun res!92957 () Bool)

(assert (=> b!203204 (=> res!92957 e!124852)))

(declare-datatypes ((tuple2!3390 0))(
  ( (tuple2!3391 (_1!1911 Token!946) (_2!1911 BalanceConc!2056)) )
))
(declare-datatypes ((Option!497 0))(
  ( (None!496) (Some!496 (v!14039 tuple2!3390)) )
))
(declare-fun isDefined!348 (Option!497) Bool)

(declare-fun maxPrefixZipperSequence!180 (LexerInterface!487 List!3267 BalanceConc!2056) Option!497)

(declare-fun seqFromList!580 (List!3266) BalanceConc!2056)

(assert (=> b!203204 (= res!92957 (not (isDefined!348 (maxPrefixZipperSequence!180 thiss!17480 rules!1920 (seqFromList!580 (originalCharacters!644 (h!8655 tokens!465)))))))))

(declare-fun lt!72648 () Unit!3268)

(assert (=> b!203204 (= lt!72648 (forallContained!168 tokens!465 lambda!6192 (h!8655 tokens!465)))))

(assert (=> b!203204 (= lt!72655 (originalCharacters!644 (h!8655 tokens!465)))))

(declare-fun b!203205 () Bool)

(assert (=> b!203205 (= e!124866 true)))

(declare-fun lt!72657 () Bool)

(assert (=> b!203205 (= lt!72657 (contains!534 lt!72629 lt!72662))))

(declare-fun b!203206 () Bool)

(declare-fun res!92961 () Bool)

(assert (=> b!203206 (=> (not res!92961) (not e!124851))))

(declare-fun isEmpty!1681 (List!3266) Bool)

(assert (=> b!203206 (= res!92961 (isEmpty!1681 (_2!1909 lt!72652)))))

(declare-fun b!203207 () Bool)

(declare-fun res!92954 () Bool)

(assert (=> b!203207 (=> res!92954 e!124862)))

(declare-fun isEmpty!1682 (BalanceConc!2058) Bool)

(assert (=> b!203207 (= res!92954 (isEmpty!1682 (_1!1910 (lex!287 thiss!17480 rules!1920 (seqFromList!580 lt!72655)))))))

(declare-fun b!203208 () Bool)

(declare-fun Unit!3271 () Unit!3268)

(assert (=> b!203208 (= e!124857 Unit!3271)))

(assert (=> b!203208 false))

(declare-fun b!203209 () Bool)

(assert (=> b!203209 (= e!124846 (isEmpty!1680 (_2!1910 lt!72661)))))

(declare-fun b!203210 () Bool)

(declare-fun res!92951 () Bool)

(assert (=> b!203210 (=> (not res!92951) (not e!124849))))

(assert (=> b!203210 (= res!92951 (= (list!1211 (seqFromList!580 lt!72658)) lt!72633))))

(declare-fun b!203211 () Bool)

(assert (=> b!203211 (= e!124864 (= (_1!1909 (get!963 lt!72665)) (head!698 tokens!465)))))

(assert (= (and start!21862 res!92935) b!203192))

(assert (= (and b!203192 res!92938) b!203196))

(assert (= (and b!203196 res!92956) b!203176))

(assert (= (and b!203176 res!92945) b!203184))

(assert (= (and b!203184 res!92941) b!203170))

(assert (= (and b!203170 res!92967) b!203187))

(assert (= (and b!203187 res!92966) b!203178))

(assert (= (and b!203178 res!92940) b!203167))

(assert (= (and b!203167 res!92965) b!203174))

(assert (= (and b!203174 res!92936) b!203210))

(assert (= (and b!203210 res!92951) b!203201))

(assert (= (and b!203201 (not res!92950)) b!203177))

(assert (= (and b!203177 res!92943) b!203202))

(assert (= (and b!203177 (not res!92963)) b!203168))

(assert (= (and b!203168 (not res!92937)) b!203199))

(assert (= (and b!203199 (not res!92960)) b!203207))

(assert (= (and b!203207 (not res!92954)) b!203204))

(assert (= (and b!203204 (not res!92957)) b!203169))

(assert (= (and b!203169 res!92939) b!203206))

(assert (= (and b!203206 res!92961) b!203183))

(assert (= (and b!203169 (not res!92955)) b!203182))

(assert (= (and b!203182 (not res!92944)) b!203195))

(assert (= (and b!203195 res!92947) b!203211))

(assert (= (and b!203182 c!39052) b!203208))

(assert (= (and b!203182 (not c!39052)) b!203188))

(assert (= (and b!203182 res!92949) b!203189))

(assert (= (and b!203189 res!92953) b!203209))

(assert (= (and b!203182 res!92946) b!203191))

(assert (= (and b!203191 res!92948) b!203200))

(assert (= (and b!203182 res!92959) b!203179))

(assert (= (and b!203179 res!92952) b!203194))

(assert (= (and b!203182 res!92942) b!203185))

(assert (= (and b!203185 res!92958) b!203190))

(assert (= (and b!203182 (not res!92962)) b!203173))

(assert (= (and b!203173 (not res!92964)) b!203205))

(assert (= b!203172 b!203197))

(assert (= b!203175 b!203172))

(assert (= (and start!21862 ((_ is Cons!3257) rules!1920)) b!203175))

(assert (= b!203180 b!203203))

(assert (= b!203171 b!203180))

(assert (= start!21862 b!203171))

(assert (= b!203193 b!203181))

(assert (= b!203198 b!203193))

(assert (= b!203186 b!203198))

(assert (= (and start!21862 ((_ is Cons!3258) tokens!465)) b!203186))

(declare-fun m!222697 () Bool)

(assert (=> b!203168 m!222697))

(declare-fun m!222699 () Bool)

(assert (=> b!203168 m!222699))

(declare-fun m!222701 () Bool)

(assert (=> b!203168 m!222701))

(declare-fun m!222703 () Bool)

(assert (=> b!203168 m!222703))

(declare-fun m!222705 () Bool)

(assert (=> b!203168 m!222705))

(declare-fun m!222707 () Bool)

(assert (=> b!203180 m!222707))

(declare-fun m!222709 () Bool)

(assert (=> b!203180 m!222709))

(declare-fun m!222711 () Bool)

(assert (=> b!203173 m!222711))

(declare-fun m!222713 () Bool)

(assert (=> b!203184 m!222713))

(declare-fun m!222715 () Bool)

(assert (=> b!203178 m!222715))

(declare-fun m!222717 () Bool)

(assert (=> b!203191 m!222717))

(declare-fun m!222719 () Bool)

(assert (=> b!203191 m!222719))

(declare-fun m!222721 () Bool)

(assert (=> b!203179 m!222721))

(declare-fun m!222723 () Bool)

(assert (=> start!21862 m!222723))

(declare-fun m!222725 () Bool)

(assert (=> b!203172 m!222725))

(declare-fun m!222727 () Bool)

(assert (=> b!203172 m!222727))

(declare-fun m!222729 () Bool)

(assert (=> b!203174 m!222729))

(assert (=> b!203174 m!222729))

(declare-fun m!222731 () Bool)

(assert (=> b!203174 m!222731))

(declare-fun m!222733 () Bool)

(assert (=> b!203174 m!222733))

(declare-fun m!222735 () Bool)

(assert (=> b!203176 m!222735))

(declare-fun m!222737 () Bool)

(assert (=> b!203176 m!222737))

(declare-fun m!222739 () Bool)

(assert (=> b!203192 m!222739))

(declare-fun m!222741 () Bool)

(assert (=> b!203186 m!222741))

(declare-fun m!222743 () Bool)

(assert (=> b!203171 m!222743))

(declare-fun m!222745 () Bool)

(assert (=> b!203169 m!222745))

(declare-fun m!222747 () Bool)

(assert (=> b!203169 m!222747))

(declare-fun m!222749 () Bool)

(assert (=> b!203169 m!222749))

(declare-fun m!222751 () Bool)

(assert (=> b!203209 m!222751))

(declare-fun m!222753 () Bool)

(assert (=> b!203202 m!222753))

(declare-fun m!222755 () Bool)

(assert (=> b!203183 m!222755))

(declare-fun m!222757 () Bool)

(assert (=> b!203198 m!222757))

(declare-fun m!222759 () Bool)

(assert (=> b!203211 m!222759))

(declare-fun m!222761 () Bool)

(assert (=> b!203211 m!222761))

(declare-fun m!222763 () Bool)

(assert (=> b!203201 m!222763))

(declare-fun m!222765 () Bool)

(assert (=> b!203201 m!222765))

(declare-fun m!222767 () Bool)

(assert (=> b!203201 m!222767))

(declare-fun m!222769 () Bool)

(assert (=> b!203201 m!222769))

(declare-fun m!222771 () Bool)

(assert (=> b!203201 m!222771))

(declare-fun m!222773 () Bool)

(assert (=> b!203201 m!222773))

(declare-fun m!222775 () Bool)

(assert (=> b!203201 m!222775))

(assert (=> b!203201 m!222763))

(declare-fun m!222777 () Bool)

(assert (=> b!203201 m!222777))

(declare-fun m!222779 () Bool)

(assert (=> b!203201 m!222779))

(assert (=> b!203201 m!222769))

(assert (=> b!203201 m!222773))

(declare-fun m!222781 () Bool)

(assert (=> b!203201 m!222781))

(declare-fun m!222783 () Bool)

(assert (=> b!203201 m!222783))

(assert (=> b!203201 m!222779))

(declare-fun m!222785 () Bool)

(assert (=> b!203201 m!222785))

(assert (=> b!203201 m!222777))

(declare-fun m!222787 () Bool)

(assert (=> b!203201 m!222787))

(declare-fun m!222789 () Bool)

(assert (=> b!203207 m!222789))

(assert (=> b!203207 m!222789))

(declare-fun m!222791 () Bool)

(assert (=> b!203207 m!222791))

(declare-fun m!222793 () Bool)

(assert (=> b!203207 m!222793))

(declare-fun m!222795 () Bool)

(assert (=> b!203205 m!222795))

(declare-fun m!222797 () Bool)

(assert (=> b!203187 m!222797))

(declare-fun m!222799 () Bool)

(assert (=> b!203182 m!222799))

(declare-fun m!222801 () Bool)

(assert (=> b!203182 m!222801))

(declare-fun m!222803 () Bool)

(assert (=> b!203182 m!222803))

(declare-fun m!222805 () Bool)

(assert (=> b!203182 m!222805))

(declare-fun m!222807 () Bool)

(assert (=> b!203182 m!222807))

(declare-fun m!222809 () Bool)

(assert (=> b!203182 m!222809))

(declare-fun m!222811 () Bool)

(assert (=> b!203182 m!222811))

(declare-fun m!222813 () Bool)

(assert (=> b!203182 m!222813))

(declare-fun m!222815 () Bool)

(assert (=> b!203182 m!222815))

(declare-fun m!222817 () Bool)

(assert (=> b!203182 m!222817))

(declare-fun m!222819 () Bool)

(assert (=> b!203182 m!222819))

(declare-fun m!222821 () Bool)

(assert (=> b!203182 m!222821))

(declare-fun m!222823 () Bool)

(assert (=> b!203182 m!222823))

(declare-fun m!222825 () Bool)

(assert (=> b!203182 m!222825))

(declare-fun m!222827 () Bool)

(assert (=> b!203182 m!222827))

(declare-fun m!222829 () Bool)

(assert (=> b!203182 m!222829))

(declare-fun m!222831 () Bool)

(assert (=> b!203182 m!222831))

(assert (=> b!203182 m!222801))

(declare-fun m!222833 () Bool)

(assert (=> b!203182 m!222833))

(declare-fun m!222835 () Bool)

(assert (=> b!203182 m!222835))

(declare-fun m!222837 () Bool)

(assert (=> b!203182 m!222837))

(declare-fun m!222839 () Bool)

(assert (=> b!203182 m!222839))

(assert (=> b!203182 m!222837))

(declare-fun m!222841 () Bool)

(assert (=> b!203182 m!222841))

(declare-fun m!222843 () Bool)

(assert (=> b!203182 m!222843))

(declare-fun m!222845 () Bool)

(assert (=> b!203182 m!222845))

(declare-fun m!222847 () Bool)

(assert (=> b!203182 m!222847))

(assert (=> b!203182 m!222815))

(declare-fun m!222849 () Bool)

(assert (=> b!203182 m!222849))

(declare-fun m!222851 () Bool)

(assert (=> b!203182 m!222851))

(declare-fun m!222853 () Bool)

(assert (=> b!203182 m!222853))

(declare-fun m!222855 () Bool)

(assert (=> b!203182 m!222855))

(declare-fun m!222857 () Bool)

(assert (=> b!203182 m!222857))

(declare-fun m!222859 () Bool)

(assert (=> b!203182 m!222859))

(declare-fun m!222861 () Bool)

(assert (=> b!203182 m!222861))

(declare-fun m!222863 () Bool)

(assert (=> b!203182 m!222863))

(declare-fun m!222865 () Bool)

(assert (=> b!203182 m!222865))

(declare-fun m!222867 () Bool)

(assert (=> b!203195 m!222867))

(assert (=> b!203195 m!222815))

(declare-fun m!222869 () Bool)

(assert (=> b!203194 m!222869))

(declare-fun m!222871 () Bool)

(assert (=> b!203206 m!222871))

(declare-fun m!222873 () Bool)

(assert (=> b!203199 m!222873))

(declare-fun m!222875 () Bool)

(assert (=> b!203204 m!222875))

(assert (=> b!203204 m!222875))

(declare-fun m!222877 () Bool)

(assert (=> b!203204 m!222877))

(assert (=> b!203204 m!222877))

(declare-fun m!222879 () Bool)

(assert (=> b!203204 m!222879))

(declare-fun m!222881 () Bool)

(assert (=> b!203204 m!222881))

(declare-fun m!222883 () Bool)

(assert (=> b!203185 m!222883))

(declare-fun m!222885 () Bool)

(assert (=> b!203185 m!222885))

(declare-fun m!222887 () Bool)

(assert (=> b!203210 m!222887))

(assert (=> b!203210 m!222887))

(declare-fun m!222889 () Bool)

(assert (=> b!203210 m!222889))

(declare-fun m!222891 () Bool)

(assert (=> b!203196 m!222891))

(declare-fun m!222893 () Bool)

(assert (=> b!203189 m!222893))

(declare-fun m!222895 () Bool)

(assert (=> b!203193 m!222895))

(declare-fun m!222897 () Bool)

(assert (=> b!203193 m!222897))

(check-sat (not b!203179) (not b!203185) (not b!203206) (not start!21862) (not b_next!7839) (not b_next!7833) (not b!203187) (not b!203207) (not b!203176) (not b!203173) b_and!14693 (not b!203171) (not b!203194) (not b!203199) (not b!203205) (not b!203220) (not b!203191) (not b!203209) (not b!203201) (not b!203168) (not b_next!7843) (not b!203210) (not b!203196) (not b!203183) (not b_next!7835) (not b!203211) (not b!203198) (not b!203184) (not b!203174) b_and!14689 b_and!14691 (not b!203186) (not b!203193) (not b!203192) (not b!203172) (not b!203189) (not b!203180) (not b!203169) (not b_next!7837) (not b!203204) b_and!14695 (not b!203178) (not b_next!7841) b_and!14685 (not b!203175) (not b!203195) (not b!203202) b_and!14687 (not b!203182))
(check-sat (not b_next!7839) (not b_next!7833) (not b_next!7843) (not b_next!7835) b_and!14693 b_and!14689 b_and!14691 (not b_next!7837) b_and!14695 b_and!14687 (not b_next!7841) b_and!14685)
