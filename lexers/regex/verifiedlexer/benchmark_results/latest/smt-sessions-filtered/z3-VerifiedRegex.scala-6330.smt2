; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!322026 () Bool)

(assert start!322026)

(declare-fun b!3461071 () Bool)

(declare-fun b_free!89913 () Bool)

(declare-fun b_next!90617 () Bool)

(assert (=> b!3461071 (= b_free!89913 (not b_next!90617))))

(declare-fun tp!1078215 () Bool)

(declare-fun b_and!243491 () Bool)

(assert (=> b!3461071 (= tp!1078215 b_and!243491)))

(declare-fun b_free!89915 () Bool)

(declare-fun b_next!90619 () Bool)

(assert (=> b!3461071 (= b_free!89915 (not b_next!90619))))

(declare-fun tp!1078207 () Bool)

(declare-fun b_and!243493 () Bool)

(assert (=> b!3461071 (= tp!1078207 b_and!243493)))

(declare-fun b!3461104 () Bool)

(declare-fun b_free!89917 () Bool)

(declare-fun b_next!90621 () Bool)

(assert (=> b!3461104 (= b_free!89917 (not b_next!90621))))

(declare-fun tp!1078205 () Bool)

(declare-fun b_and!243495 () Bool)

(assert (=> b!3461104 (= tp!1078205 b_and!243495)))

(declare-fun b_free!89919 () Bool)

(declare-fun b_next!90623 () Bool)

(assert (=> b!3461104 (= b_free!89919 (not b_next!90623))))

(declare-fun tp!1078213 () Bool)

(declare-fun b_and!243497 () Bool)

(assert (=> b!3461104 (= tp!1078213 b_and!243497)))

(declare-fun b!3461090 () Bool)

(declare-fun b_free!89921 () Bool)

(declare-fun b_next!90625 () Bool)

(assert (=> b!3461090 (= b_free!89921 (not b_next!90625))))

(declare-fun tp!1078212 () Bool)

(declare-fun b_and!243499 () Bool)

(assert (=> b!3461090 (= tp!1078212 b_and!243499)))

(declare-fun b_free!89923 () Bool)

(declare-fun b_next!90627 () Bool)

(assert (=> b!3461090 (= b_free!89923 (not b_next!90627))))

(declare-fun tp!1078209 () Bool)

(declare-fun b_and!243501 () Bool)

(assert (=> b!3461090 (= tp!1078209 b_and!243501)))

(declare-fun bs!560465 () Bool)

(declare-fun b!3461108 () Bool)

(declare-fun b!3461085 () Bool)

(assert (= bs!560465 (and b!3461108 b!3461085)))

(declare-fun lambda!121861 () Int)

(declare-fun lambda!121860 () Int)

(assert (=> bs!560465 (not (= lambda!121861 lambda!121860))))

(declare-fun b!3461122 () Bool)

(declare-fun e!2144296 () Bool)

(assert (=> b!3461122 (= e!2144296 true)))

(declare-fun b!3461121 () Bool)

(declare-fun e!2144295 () Bool)

(assert (=> b!3461121 (= e!2144295 e!2144296)))

(declare-fun b!3461120 () Bool)

(declare-fun e!2144294 () Bool)

(assert (=> b!3461120 (= e!2144294 e!2144295)))

(assert (=> b!3461108 e!2144294))

(assert (= b!3461121 b!3461122))

(assert (= b!3461120 b!3461121))

(declare-datatypes ((C!20584 0))(
  ( (C!20585 (val!12340 Int)) )
))
(declare-datatypes ((Regex!10199 0))(
  ( (ElementMatch!10199 (c!592550 C!20584)) (Concat!15869 (regOne!20910 Regex!10199) (regTwo!20910 Regex!10199)) (EmptyExpr!10199) (Star!10199 (reg!10528 Regex!10199)) (EmptyLang!10199) (Union!10199 (regOne!20911 Regex!10199) (regTwo!20911 Regex!10199)) )
))
(declare-datatypes ((List!37294 0))(
  ( (Nil!37170) (Cons!37170 (h!42590 (_ BitVec 16)) (t!273041 List!37294)) )
))
(declare-datatypes ((TokenValue!5670 0))(
  ( (FloatLiteralValue!11340 (text!40135 List!37294)) (TokenValueExt!5669 (__x!23557 Int)) (Broken!28350 (value!175474 List!37294)) (Object!5793) (End!5670) (Def!5670) (Underscore!5670) (Match!5670) (Else!5670) (Error!5670) (Case!5670) (If!5670) (Extends!5670) (Abstract!5670) (Class!5670) (Val!5670) (DelimiterValue!11340 (del!5730 List!37294)) (KeywordValue!5676 (value!175475 List!37294)) (CommentValue!11340 (value!175476 List!37294)) (WhitespaceValue!11340 (value!175477 List!37294)) (IndentationValue!5670 (value!175478 List!37294)) (String!41683) (Int32!5670) (Broken!28351 (value!175479 List!37294)) (Boolean!5671) (Unit!52519) (OperatorValue!5673 (op!5730 List!37294)) (IdentifierValue!11340 (value!175480 List!37294)) (IdentifierValue!11341 (value!175481 List!37294)) (WhitespaceValue!11341 (value!175482 List!37294)) (True!11340) (False!11340) (Broken!28352 (value!175483 List!37294)) (Broken!28353 (value!175484 List!37294)) (True!11341) (RightBrace!5670) (RightBracket!5670) (Colon!5670) (Null!5670) (Comma!5670) (LeftBracket!5670) (False!11341) (LeftBrace!5670) (ImaginaryLiteralValue!5670 (text!40136 List!37294)) (StringLiteralValue!17010 (value!175485 List!37294)) (EOFValue!5670 (value!175486 List!37294)) (IdentValue!5670 (value!175487 List!37294)) (DelimiterValue!11341 (value!175488 List!37294)) (DedentValue!5670 (value!175489 List!37294)) (NewLineValue!5670 (value!175490 List!37294)) (IntegerValue!17010 (value!175491 (_ BitVec 32)) (text!40137 List!37294)) (IntegerValue!17011 (value!175492 Int) (text!40138 List!37294)) (Times!5670) (Or!5670) (Equal!5670) (Minus!5670) (Broken!28354 (value!175493 List!37294)) (And!5670) (Div!5670) (LessEqual!5670) (Mod!5670) (Concat!15870) (Not!5670) (Plus!5670) (SpaceValue!5670 (value!175494 List!37294)) (IntegerValue!17012 (value!175495 Int) (text!40139 List!37294)) (StringLiteralValue!17011 (text!40140 List!37294)) (FloatLiteralValue!11341 (text!40141 List!37294)) (BytesLiteralValue!5670 (value!175496 List!37294)) (CommentValue!11341 (value!175497 List!37294)) (StringLiteralValue!17012 (value!175498 List!37294)) (ErrorTokenValue!5670 (msg!5731 List!37294)) )
))
(declare-datatypes ((List!37295 0))(
  ( (Nil!37171) (Cons!37171 (h!42591 C!20584) (t!273042 List!37295)) )
))
(declare-datatypes ((IArray!22515 0))(
  ( (IArray!22516 (innerList!11315 List!37295)) )
))
(declare-datatypes ((Conc!11255 0))(
  ( (Node!11255 (left!29005 Conc!11255) (right!29335 Conc!11255) (csize!22740 Int) (cheight!11466 Int)) (Leaf!17586 (xs!14429 IArray!22515) (csize!22741 Int)) (Empty!11255) )
))
(declare-datatypes ((BalanceConc!22124 0))(
  ( (BalanceConc!22125 (c!592551 Conc!11255)) )
))
(declare-datatypes ((String!41684 0))(
  ( (String!41685 (value!175499 String)) )
))
(declare-datatypes ((TokenValueInjection!10768 0))(
  ( (TokenValueInjection!10769 (toValue!7668 Int) (toChars!7527 Int)) )
))
(declare-datatypes ((Rule!10680 0))(
  ( (Rule!10681 (regex!5440 Regex!10199) (tag!6050 String!41684) (isSeparator!5440 Bool) (transformation!5440 TokenValueInjection!10768)) )
))
(declare-datatypes ((List!37296 0))(
  ( (Nil!37172) (Cons!37172 (h!42592 Rule!10680) (t!273043 List!37296)) )
))
(declare-fun rules!2135 () List!37296)

(get-info :version)

(assert (= (and b!3461108 ((_ is Cons!37172) rules!2135)) b!3461120))

(declare-fun order!19807 () Int)

(declare-fun order!19805 () Int)

(declare-fun dynLambda!15664 (Int Int) Int)

(declare-fun dynLambda!15665 (Int Int) Int)

(assert (=> b!3461122 (< (dynLambda!15664 order!19805 (toValue!7668 (transformation!5440 (h!42592 rules!2135)))) (dynLambda!15665 order!19807 lambda!121861))))

(declare-fun order!19809 () Int)

(declare-fun dynLambda!15666 (Int Int) Int)

(assert (=> b!3461122 (< (dynLambda!15666 order!19809 (toChars!7527 (transformation!5440 (h!42592 rules!2135)))) (dynLambda!15665 order!19807 lambda!121861))))

(assert (=> b!3461108 true))

(declare-fun e!2144264 () Bool)

(assert (=> b!3461071 (= e!2144264 (and tp!1078215 tp!1078207))))

(declare-fun b!3461072 () Bool)

(declare-datatypes ((Unit!52520 0))(
  ( (Unit!52521) )
))
(declare-fun e!2144271 () Unit!52520)

(declare-fun Unit!52522 () Unit!52520)

(assert (=> b!3461072 (= e!2144271 Unit!52522)))

(declare-datatypes ((Token!10246 0))(
  ( (Token!10247 (value!175500 TokenValue!5670) (rule!8032 Rule!10680) (size!28199 Int) (originalCharacters!6154 List!37295)) )
))
(declare-fun separatorToken!241 () Token!10246)

(declare-fun lt!1176611 () Unit!52520)

(declare-fun lt!1176623 () C!20584)

(declare-fun lt!1176614 () List!37295)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!498 (Regex!10199 List!37295 C!20584) Unit!52520)

(assert (=> b!3461072 (= lt!1176611 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!498 (regex!5440 (rule!8032 separatorToken!241)) lt!1176614 lt!1176623))))

(declare-fun res!1396426 () Bool)

(declare-fun matchR!4783 (Regex!10199 List!37295) Bool)

(assert (=> b!3461072 (= res!1396426 (not (matchR!4783 (regex!5440 (rule!8032 separatorToken!241)) lt!1176614)))))

(declare-fun e!2144282 () Bool)

(assert (=> b!3461072 (=> (not res!1396426) (not e!2144282))))

(assert (=> b!3461072 e!2144282))

(declare-fun b!3461073 () Bool)

(declare-fun res!1396424 () Bool)

(declare-fun e!2144273 () Bool)

(assert (=> b!3461073 (=> res!1396424 e!2144273)))

(declare-fun contains!6895 (List!37296 Rule!10680) Bool)

(assert (=> b!3461073 (= res!1396424 (not (contains!6895 rules!2135 (rule!8032 separatorToken!241))))))

(declare-fun b!3461074 () Bool)

(declare-fun e!2144279 () Bool)

(declare-fun e!2144276 () Bool)

(assert (=> b!3461074 (= e!2144279 e!2144276)))

(declare-fun res!1396406 () Bool)

(assert (=> b!3461074 (=> res!1396406 e!2144276)))

(declare-fun lt!1176596 () List!37295)

(declare-fun lt!1176597 () List!37295)

(declare-fun lt!1176606 () List!37295)

(assert (=> b!3461074 (= res!1396406 (or (not (= lt!1176596 lt!1176597)) (not (= lt!1176606 lt!1176597))))))

(declare-datatypes ((List!37297 0))(
  ( (Nil!37173) (Cons!37173 (h!42593 Token!10246) (t!273044 List!37297)) )
))
(declare-fun tokens!494 () List!37297)

(declare-fun list!13535 (BalanceConc!22124) List!37295)

(declare-fun charsOf!3454 (Token!10246) BalanceConc!22124)

(assert (=> b!3461074 (= lt!1176597 (list!13535 (charsOf!3454 (h!42593 tokens!494))))))

(declare-fun b!3461075 () Bool)

(declare-fun res!1396410 () Bool)

(declare-fun e!2144263 () Bool)

(assert (=> b!3461075 (=> (not res!1396410) (not e!2144263))))

(declare-fun sepAndNonSepRulesDisjointChars!1634 (List!37296 List!37296) Bool)

(assert (=> b!3461075 (= res!1396410 (sepAndNonSepRulesDisjointChars!1634 rules!2135 rules!2135))))

(declare-fun b!3461076 () Bool)

(declare-fun res!1396421 () Bool)

(declare-fun e!2144281 () Bool)

(assert (=> b!3461076 (=> (not res!1396421) (not e!2144281))))

(declare-datatypes ((IArray!22517 0))(
  ( (IArray!22518 (innerList!11316 List!37297)) )
))
(declare-datatypes ((Conc!11256 0))(
  ( (Node!11256 (left!29006 Conc!11256) (right!29336 Conc!11256) (csize!22742 Int) (cheight!11467 Int)) (Leaf!17587 (xs!14430 IArray!22517) (csize!22743 Int)) (Empty!11256) )
))
(declare-datatypes ((BalanceConc!22126 0))(
  ( (BalanceConc!22127 (c!592552 Conc!11256)) )
))
(declare-datatypes ((tuple2!36896 0))(
  ( (tuple2!36897 (_1!21582 BalanceConc!22126) (_2!21582 BalanceConc!22124)) )
))
(declare-fun lt!1176602 () tuple2!36896)

(declare-fun apply!8756 (BalanceConc!22126 Int) Token!10246)

(assert (=> b!3461076 (= res!1396421 (= (apply!8756 (_1!21582 lt!1176602) 0) separatorToken!241))))

(declare-fun b!3461077 () Bool)

(declare-fun e!2144286 () Bool)

(assert (=> b!3461077 (= e!2144273 e!2144286)))

(declare-fun res!1396400 () Bool)

(assert (=> b!3461077 (=> res!1396400 e!2144286)))

(declare-datatypes ((tuple2!36898 0))(
  ( (tuple2!36899 (_1!21583 Token!10246) (_2!21583 List!37295)) )
))
(declare-datatypes ((Option!7529 0))(
  ( (None!7528) (Some!7528 (v!36854 tuple2!36898)) )
))
(declare-fun lt!1176618 () Option!7529)

(declare-fun isDefined!5797 (Option!7529) Bool)

(assert (=> b!3461077 (= res!1396400 (not (isDefined!5797 lt!1176618)))))

(declare-datatypes ((LexerInterface!5029 0))(
  ( (LexerInterfaceExt!5026 (__x!23558 Int)) (Lexer!5027) )
))
(declare-fun thiss!18206 () LexerInterface!5029)

(declare-fun maxPrefix!2569 (LexerInterface!5029 List!37296 List!37295) Option!7529)

(assert (=> b!3461077 (= lt!1176618 (maxPrefix!2569 thiss!18206 rules!2135 lt!1176597))))

(declare-fun b!3461078 () Bool)

(declare-fun e!2144283 () Bool)

(declare-fun lt!1176598 () Rule!10680)

(assert (=> b!3461078 (= e!2144283 (= (rule!8032 separatorToken!241) lt!1176598))))

(declare-fun b!3461079 () Bool)

(declare-fun e!2144280 () Bool)

(declare-fun e!2144275 () Bool)

(assert (=> b!3461079 (= e!2144280 e!2144275)))

(declare-fun res!1396407 () Bool)

(assert (=> b!3461079 (=> (not res!1396407) (not e!2144275))))

(declare-fun lt!1176624 () Rule!10680)

(assert (=> b!3461079 (= res!1396407 (matchR!4783 (regex!5440 lt!1176624) lt!1176597))))

(declare-datatypes ((Option!7530 0))(
  ( (None!7529) (Some!7529 (v!36855 Rule!10680)) )
))
(declare-fun lt!1176621 () Option!7530)

(declare-fun get!11898 (Option!7530) Rule!10680)

(assert (=> b!3461079 (= lt!1176624 (get!11898 lt!1176621))))

(declare-fun b!3461080 () Bool)

(declare-fun tp!1078206 () Bool)

(declare-fun e!2144265 () Bool)

(declare-fun e!2144257 () Bool)

(declare-fun inv!50341 (String!41684) Bool)

(declare-fun inv!50344 (TokenValueInjection!10768) Bool)

(assert (=> b!3461080 (= e!2144257 (and tp!1078206 (inv!50341 (tag!6050 (rule!8032 (h!42593 tokens!494)))) (inv!50344 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) e!2144265))))

(declare-fun b!3461081 () Bool)

(declare-fun e!2144278 () Bool)

(declare-fun e!2144255 () Bool)

(assert (=> b!3461081 (= e!2144278 e!2144255)))

(declare-fun res!1396412 () Bool)

(assert (=> b!3461081 (=> res!1396412 e!2144255)))

(declare-fun lt!1176612 () List!37295)

(declare-fun lt!1176609 () List!37295)

(assert (=> b!3461081 (= res!1396412 (not (= lt!1176612 lt!1176609)))))

(declare-fun lt!1176603 () List!37295)

(declare-fun ++!9165 (List!37295 List!37295) List!37295)

(assert (=> b!3461081 (= lt!1176609 (++!9165 (++!9165 lt!1176597 lt!1176614) lt!1176603))))

(declare-fun b!3461082 () Bool)

(declare-fun res!1396422 () Bool)

(assert (=> b!3461082 (=> (not res!1396422) (not e!2144263))))

(declare-fun rulesProduceIndividualToken!2521 (LexerInterface!5029 List!37296 Token!10246) Bool)

(assert (=> b!3461082 (= res!1396422 (rulesProduceIndividualToken!2521 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3461083 () Bool)

(declare-fun res!1396427 () Bool)

(declare-fun e!2144258 () Bool)

(assert (=> b!3461083 (=> (not res!1396427) (not e!2144258))))

(declare-fun lt!1176604 () tuple2!36896)

(assert (=> b!3461083 (= res!1396427 (= (apply!8756 (_1!21582 lt!1176604) 0) (h!42593 (t!273044 tokens!494))))))

(declare-fun e!2144270 () Bool)

(declare-fun b!3461084 () Bool)

(declare-fun tp!1078214 () Bool)

(declare-fun e!2144259 () Bool)

(declare-fun inv!21 (TokenValue!5670) Bool)

(assert (=> b!3461084 (= e!2144270 (and (inv!21 (value!175500 separatorToken!241)) e!2144259 tp!1078214))))

(declare-fun res!1396415 () Bool)

(assert (=> b!3461085 (=> (not res!1396415) (not e!2144263))))

(declare-fun forall!7925 (List!37297 Int) Bool)

(assert (=> b!3461085 (= res!1396415 (forall!7925 tokens!494 lambda!121860))))

(declare-fun b!3461086 () Bool)

(declare-fun isEmpty!21525 (BalanceConc!22124) Bool)

(assert (=> b!3461086 (= e!2144258 (isEmpty!21525 (_2!21582 lt!1176604)))))

(declare-fun b!3461087 () Bool)

(declare-fun res!1396413 () Bool)

(assert (=> b!3461087 (=> (not res!1396413) (not e!2144263))))

(assert (=> b!3461087 (= res!1396413 (and (not ((_ is Nil!37173) tokens!494)) (not ((_ is Nil!37173) (t!273044 tokens!494)))))))

(declare-fun b!3461088 () Bool)

(declare-fun get!11899 (Option!7529) tuple2!36898)

(assert (=> b!3461088 (= e!2144286 (= (_1!21583 (get!11899 lt!1176618)) (h!42593 tokens!494)))))

(declare-fun b!3461089 () Bool)

(declare-fun e!2144277 () Bool)

(assert (=> b!3461089 (= e!2144276 e!2144277)))

(declare-fun res!1396401 () Bool)

(assert (=> b!3461089 (=> res!1396401 e!2144277)))

(declare-fun lt!1176613 () BalanceConc!22124)

(declare-fun isEmpty!21526 (BalanceConc!22126) Bool)

(declare-fun lex!2355 (LexerInterface!5029 List!37296 BalanceConc!22124) tuple2!36896)

(assert (=> b!3461089 (= res!1396401 (isEmpty!21526 (_1!21582 (lex!2355 thiss!18206 rules!2135 lt!1176613))))))

(declare-fun seqFromList!3933 (List!37295) BalanceConc!22124)

(assert (=> b!3461089 (= lt!1176613 (seqFromList!3933 lt!1176597))))

(declare-fun e!2144285 () Bool)

(assert (=> b!3461090 (= e!2144285 (and tp!1078212 tp!1078209))))

(declare-fun b!3461091 () Bool)

(declare-fun Unit!52523 () Unit!52520)

(assert (=> b!3461091 (= e!2144271 Unit!52523)))

(declare-fun b!3461092 () Bool)

(declare-fun e!2144287 () Bool)

(declare-fun e!2144272 () Bool)

(declare-fun tp!1078216 () Bool)

(declare-fun inv!50345 (Token!10246) Bool)

(assert (=> b!3461092 (= e!2144272 (and (inv!50345 (h!42593 tokens!494)) e!2144287 tp!1078216))))

(declare-fun b!3461093 () Bool)

(assert (=> b!3461093 (= e!2144275 (= (rule!8032 (h!42593 tokens!494)) lt!1176624))))

(declare-fun b!3461094 () Bool)

(assert (=> b!3461094 (= e!2144282 false)))

(declare-fun b!3461095 () Bool)

(declare-fun res!1396403 () Bool)

(assert (=> b!3461095 (=> res!1396403 e!2144276)))

(assert (=> b!3461095 (= res!1396403 (not (rulesProduceIndividualToken!2521 thiss!18206 rules!2135 (h!42593 tokens!494))))))

(declare-fun b!3461096 () Bool)

(declare-fun res!1396419 () Bool)

(assert (=> b!3461096 (=> (not res!1396419) (not e!2144263))))

(assert (=> b!3461096 (= res!1396419 (isSeparator!5440 (rule!8032 separatorToken!241)))))

(declare-fun b!3461097 () Bool)

(declare-fun res!1396409 () Bool)

(assert (=> b!3461097 (=> (not res!1396409) (not e!2144263))))

(declare-fun rulesInvariant!4426 (LexerInterface!5029 List!37296) Bool)

(assert (=> b!3461097 (= res!1396409 (rulesInvariant!4426 thiss!18206 rules!2135))))

(declare-fun b!3461098 () Bool)

(declare-fun e!2144266 () Bool)

(assert (=> b!3461098 (= e!2144277 e!2144266)))

(declare-fun res!1396404 () Bool)

(assert (=> b!3461098 (=> res!1396404 e!2144266)))

(assert (=> b!3461098 (= res!1396404 (or (isSeparator!5440 (rule!8032 (h!42593 tokens!494))) (isSeparator!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))))))

(declare-fun lt!1176607 () Unit!52520)

(declare-fun forallContained!1387 (List!37297 Int Token!10246) Unit!52520)

(assert (=> b!3461098 (= lt!1176607 (forallContained!1387 tokens!494 lambda!121860 (h!42593 (t!273044 tokens!494))))))

(declare-fun lt!1176616 () Unit!52520)

(assert (=> b!3461098 (= lt!1176616 (forallContained!1387 tokens!494 lambda!121860 (h!42593 tokens!494)))))

(declare-fun b!3461099 () Bool)

(assert (=> b!3461099 (= e!2144281 (isEmpty!21525 (_2!21582 lt!1176602)))))

(declare-fun b!3461100 () Bool)

(declare-fun res!1396425 () Bool)

(assert (=> b!3461100 (=> (not res!1396425) (not e!2144263))))

(declare-fun isEmpty!21527 (List!37296) Bool)

(assert (=> b!3461100 (= res!1396425 (not (isEmpty!21527 rules!2135)))))

(declare-fun e!2144261 () Bool)

(declare-fun tp!1078204 () Bool)

(declare-fun b!3461101 () Bool)

(assert (=> b!3461101 (= e!2144261 (and tp!1078204 (inv!50341 (tag!6050 (h!42592 rules!2135))) (inv!50344 (transformation!5440 (h!42592 rules!2135))) e!2144285))))

(declare-fun b!3461102 () Bool)

(assert (=> b!3461102 (= e!2144263 (not e!2144279))))

(declare-fun res!1396411 () Bool)

(assert (=> b!3461102 (=> res!1396411 e!2144279)))

(assert (=> b!3461102 (= res!1396411 (not (= lt!1176606 lt!1176596)))))

(declare-fun printList!1577 (LexerInterface!5029 List!37297) List!37295)

(assert (=> b!3461102 (= lt!1176596 (printList!1577 thiss!18206 (Cons!37173 (h!42593 tokens!494) Nil!37173)))))

(declare-fun lt!1176622 () BalanceConc!22124)

(assert (=> b!3461102 (= lt!1176606 (list!13535 lt!1176622))))

(declare-fun lt!1176594 () BalanceConc!22126)

(declare-fun printTailRec!1524 (LexerInterface!5029 BalanceConc!22126 Int BalanceConc!22124) BalanceConc!22124)

(assert (=> b!3461102 (= lt!1176622 (printTailRec!1524 thiss!18206 lt!1176594 0 (BalanceConc!22125 Empty!11255)))))

(declare-fun print!2094 (LexerInterface!5029 BalanceConc!22126) BalanceConc!22124)

(assert (=> b!3461102 (= lt!1176622 (print!2094 thiss!18206 lt!1176594))))

(declare-fun singletonSeq!2536 (Token!10246) BalanceConc!22126)

(assert (=> b!3461102 (= lt!1176594 (singletonSeq!2536 (h!42593 tokens!494)))))

(declare-fun b!3461103 () Bool)

(assert (=> b!3461103 (= e!2144266 e!2144278)))

(declare-fun res!1396402 () Bool)

(assert (=> b!3461103 (=> res!1396402 e!2144278)))

(declare-fun printWithSeparatorTokenList!316 (LexerInterface!5029 List!37297 Token!10246) List!37295)

(assert (=> b!3461103 (= res!1396402 (not (= lt!1176603 (++!9165 (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494)))) lt!1176614) (printWithSeparatorTokenList!316 thiss!18206 (t!273044 (t!273044 tokens!494)) separatorToken!241)))))))

(declare-fun lt!1176600 () List!37295)

(assert (=> b!3461103 (= lt!1176600 (++!9165 lt!1176614 lt!1176603))))

(assert (=> b!3461103 (= lt!1176614 (list!13535 (charsOf!3454 separatorToken!241)))))

(assert (=> b!3461103 (= lt!1176603 (printWithSeparatorTokenList!316 thiss!18206 (t!273044 tokens!494) separatorToken!241))))

(assert (=> b!3461103 (= lt!1176612 (printWithSeparatorTokenList!316 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun res!1396399 () Bool)

(assert (=> start!322026 (=> (not res!1396399) (not e!2144263))))

(assert (=> start!322026 (= res!1396399 ((_ is Lexer!5027) thiss!18206))))

(assert (=> start!322026 e!2144263))

(assert (=> start!322026 true))

(declare-fun e!2144256 () Bool)

(assert (=> start!322026 e!2144256))

(assert (=> start!322026 e!2144272))

(assert (=> start!322026 (and (inv!50345 separatorToken!241) e!2144270)))

(assert (=> b!3461104 (= e!2144265 (and tp!1078205 tp!1078213))))

(declare-fun b!3461105 () Bool)

(declare-fun e!2144269 () Bool)

(assert (=> b!3461105 (= e!2144269 e!2144283)))

(declare-fun res!1396423 () Bool)

(assert (=> b!3461105 (=> (not res!1396423) (not e!2144283))))

(assert (=> b!3461105 (= res!1396423 (matchR!4783 (regex!5440 lt!1176598) lt!1176614))))

(declare-fun lt!1176601 () Option!7530)

(assert (=> b!3461105 (= lt!1176598 (get!11898 lt!1176601))))

(declare-fun tp!1078210 () Bool)

(declare-fun b!3461106 () Bool)

(assert (=> b!3461106 (= e!2144259 (and tp!1078210 (inv!50341 (tag!6050 (rule!8032 separatorToken!241))) (inv!50344 (transformation!5440 (rule!8032 separatorToken!241))) e!2144264))))

(declare-fun b!3461107 () Bool)

(declare-fun res!1396414 () Bool)

(assert (=> b!3461107 (=> (not res!1396414) (not e!2144263))))

(declare-fun rulesProduceEachTokenIndividually!1480 (LexerInterface!5029 List!37296 BalanceConc!22126) Bool)

(declare-fun seqFromList!3934 (List!37297) BalanceConc!22126)

(assert (=> b!3461107 (= res!1396414 (rulesProduceEachTokenIndividually!1480 thiss!18206 rules!2135 (seqFromList!3934 tokens!494)))))

(declare-fun e!2144268 () Bool)

(assert (=> b!3461108 (= e!2144268 e!2144273)))

(declare-fun res!1396418 () Bool)

(assert (=> b!3461108 (=> res!1396418 e!2144273)))

(assert (=> b!3461108 (= res!1396418 (not (contains!6895 rules!2135 (rule!8032 (h!42593 tokens!494)))))))

(declare-fun contains!6896 (List!37295 C!20584) Bool)

(declare-fun usedCharacters!674 (Regex!10199) List!37295)

(assert (=> b!3461108 (not (contains!6896 (usedCharacters!674 (regex!5440 (rule!8032 (h!42593 tokens!494)))) lt!1176623))))

(declare-fun lt!1176626 () Unit!52520)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!240 (LexerInterface!5029 List!37296 List!37296 Rule!10680 Rule!10680 C!20584) Unit!52520)

(assert (=> b!3461108 (= lt!1176626 (lemmaNonSepRuleNotContainsCharContainedInASepRule!240 thiss!18206 rules!2135 rules!2135 (rule!8032 (h!42593 tokens!494)) (rule!8032 separatorToken!241) lt!1176623))))

(declare-fun lt!1176628 () Unit!52520)

(assert (=> b!3461108 (= lt!1176628 (forallContained!1387 tokens!494 lambda!121861 (h!42593 (t!273044 tokens!494))))))

(assert (=> b!3461108 (= (rulesProduceIndividualToken!2521 thiss!18206 rules!2135 (h!42593 (t!273044 tokens!494))) e!2144258)))

(declare-fun res!1396416 () Bool)

(assert (=> b!3461108 (=> (not res!1396416) (not e!2144258))))

(declare-fun size!28200 (BalanceConc!22126) Int)

(assert (=> b!3461108 (= res!1396416 (= (size!28200 (_1!21582 lt!1176604)) 1))))

(declare-fun lt!1176617 () BalanceConc!22124)

(assert (=> b!3461108 (= lt!1176604 (lex!2355 thiss!18206 rules!2135 lt!1176617))))

(declare-fun lt!1176610 () BalanceConc!22126)

(assert (=> b!3461108 (= lt!1176617 (printTailRec!1524 thiss!18206 lt!1176610 0 (BalanceConc!22125 Empty!11255)))))

(assert (=> b!3461108 (= lt!1176617 (print!2094 thiss!18206 lt!1176610))))

(assert (=> b!3461108 (= lt!1176610 (singletonSeq!2536 (h!42593 (t!273044 tokens!494))))))

(assert (=> b!3461108 e!2144281))

(declare-fun res!1396417 () Bool)

(assert (=> b!3461108 (=> (not res!1396417) (not e!2144281))))

(assert (=> b!3461108 (= res!1396417 (= (size!28200 (_1!21582 lt!1176602)) 1))))

(declare-fun lt!1176595 () BalanceConc!22124)

(assert (=> b!3461108 (= lt!1176602 (lex!2355 thiss!18206 rules!2135 lt!1176595))))

(declare-fun lt!1176620 () BalanceConc!22126)

(assert (=> b!3461108 (= lt!1176595 (printTailRec!1524 thiss!18206 lt!1176620 0 (BalanceConc!22125 Empty!11255)))))

(assert (=> b!3461108 (= lt!1176595 (print!2094 thiss!18206 lt!1176620))))

(assert (=> b!3461108 (= lt!1176620 (singletonSeq!2536 separatorToken!241))))

(declare-fun lt!1176605 () Unit!52520)

(assert (=> b!3461108 (= lt!1176605 e!2144271)))

(declare-fun c!592549 () Bool)

(assert (=> b!3461108 (= c!592549 (not (contains!6896 (usedCharacters!674 (regex!5440 (rule!8032 separatorToken!241))) lt!1176623)))))

(declare-fun head!7321 (List!37295) C!20584)

(assert (=> b!3461108 (= lt!1176623 (head!7321 lt!1176614))))

(assert (=> b!3461108 e!2144269))

(declare-fun res!1396405 () Bool)

(assert (=> b!3461108 (=> (not res!1396405) (not e!2144269))))

(declare-fun isDefined!5798 (Option!7530) Bool)

(assert (=> b!3461108 (= res!1396405 (isDefined!5798 lt!1176601))))

(declare-fun getRuleFromTag!1083 (LexerInterface!5029 List!37296 String!41684) Option!7530)

(assert (=> b!3461108 (= lt!1176601 (getRuleFromTag!1083 thiss!18206 rules!2135 (tag!6050 (rule!8032 separatorToken!241))))))

(declare-fun lt!1176599 () Unit!52520)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1083 (LexerInterface!5029 List!37296 List!37295 Token!10246) Unit!52520)

(assert (=> b!3461108 (= lt!1176599 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1083 thiss!18206 rules!2135 lt!1176614 separatorToken!241))))

(declare-fun maxPrefixOneRule!1736 (LexerInterface!5029 Rule!10680 List!37295) Option!7529)

(declare-fun apply!8757 (TokenValueInjection!10768 BalanceConc!22124) TokenValue!5670)

(declare-fun size!28201 (List!37295) Int)

(assert (=> b!3461108 (= (maxPrefixOneRule!1736 thiss!18206 (rule!8032 (h!42593 tokens!494)) lt!1176597) (Some!7528 (tuple2!36899 (Token!10247 (apply!8757 (transformation!5440 (rule!8032 (h!42593 tokens!494))) lt!1176613) (rule!8032 (h!42593 tokens!494)) (size!28201 lt!1176597) lt!1176597) Nil!37171)))))

(declare-fun lt!1176625 () Unit!52520)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!829 (LexerInterface!5029 List!37296 List!37295 List!37295 List!37295 Rule!10680) Unit!52520)

(assert (=> b!3461108 (= lt!1176625 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!829 thiss!18206 rules!2135 lt!1176597 lt!1176597 Nil!37171 (rule!8032 (h!42593 tokens!494))))))

(assert (=> b!3461108 e!2144280))

(declare-fun res!1396420 () Bool)

(assert (=> b!3461108 (=> (not res!1396420) (not e!2144280))))

(assert (=> b!3461108 (= res!1396420 (isDefined!5798 lt!1176621))))

(assert (=> b!3461108 (= lt!1176621 (getRuleFromTag!1083 thiss!18206 rules!2135 (tag!6050 (rule!8032 (h!42593 tokens!494)))))))

(declare-fun lt!1176619 () Unit!52520)

(assert (=> b!3461108 (= lt!1176619 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1083 thiss!18206 rules!2135 lt!1176597 (h!42593 tokens!494)))))

(declare-fun lt!1176608 () Unit!52520)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1018 (LexerInterface!5029 List!37296 List!37297 Token!10246) Unit!52520)

(assert (=> b!3461108 (= lt!1176608 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1018 thiss!18206 rules!2135 tokens!494 (h!42593 tokens!494)))))

(declare-fun b!3461109 () Bool)

(declare-fun tp!1078208 () Bool)

(assert (=> b!3461109 (= e!2144256 (and e!2144261 tp!1078208))))

(declare-fun tp!1078211 () Bool)

(declare-fun b!3461110 () Bool)

(assert (=> b!3461110 (= e!2144287 (and (inv!21 (value!175500 (h!42593 tokens!494))) e!2144257 tp!1078211))))

(declare-fun b!3461111 () Bool)

(assert (=> b!3461111 (= e!2144255 e!2144268)))

(declare-fun res!1396408 () Bool)

(assert (=> b!3461111 (=> res!1396408 e!2144268)))

(declare-fun lt!1176615 () List!37295)

(assert (=> b!3461111 (= res!1396408 (not (= lt!1176612 lt!1176615)))))

(assert (=> b!3461111 (= lt!1176609 lt!1176615)))

(assert (=> b!3461111 (= lt!1176615 (++!9165 lt!1176597 lt!1176600))))

(declare-fun lt!1176627 () Unit!52520)

(declare-fun lemmaConcatAssociativity!1960 (List!37295 List!37295 List!37295) Unit!52520)

(assert (=> b!3461111 (= lt!1176627 (lemmaConcatAssociativity!1960 lt!1176597 lt!1176614 lt!1176603))))

(assert (= (and start!322026 res!1396399) b!3461100))

(assert (= (and b!3461100 res!1396425) b!3461097))

(assert (= (and b!3461097 res!1396409) b!3461107))

(assert (= (and b!3461107 res!1396414) b!3461082))

(assert (= (and b!3461082 res!1396422) b!3461096))

(assert (= (and b!3461096 res!1396419) b!3461085))

(assert (= (and b!3461085 res!1396415) b!3461075))

(assert (= (and b!3461075 res!1396410) b!3461087))

(assert (= (and b!3461087 res!1396413) b!3461102))

(assert (= (and b!3461102 (not res!1396411)) b!3461074))

(assert (= (and b!3461074 (not res!1396406)) b!3461095))

(assert (= (and b!3461095 (not res!1396403)) b!3461089))

(assert (= (and b!3461089 (not res!1396401)) b!3461098))

(assert (= (and b!3461098 (not res!1396404)) b!3461103))

(assert (= (and b!3461103 (not res!1396402)) b!3461081))

(assert (= (and b!3461081 (not res!1396412)) b!3461111))

(assert (= (and b!3461111 (not res!1396408)) b!3461108))

(assert (= (and b!3461108 res!1396420) b!3461079))

(assert (= (and b!3461079 res!1396407) b!3461093))

(assert (= (and b!3461108 res!1396405) b!3461105))

(assert (= (and b!3461105 res!1396423) b!3461078))

(assert (= (and b!3461108 c!592549) b!3461072))

(assert (= (and b!3461108 (not c!592549)) b!3461091))

(assert (= (and b!3461072 res!1396426) b!3461094))

(assert (= (and b!3461108 res!1396417) b!3461076))

(assert (= (and b!3461076 res!1396421) b!3461099))

(assert (= (and b!3461108 res!1396416) b!3461083))

(assert (= (and b!3461083 res!1396427) b!3461086))

(assert (= (and b!3461108 (not res!1396418)) b!3461073))

(assert (= (and b!3461073 (not res!1396424)) b!3461077))

(assert (= (and b!3461077 (not res!1396400)) b!3461088))

(assert (= b!3461101 b!3461090))

(assert (= b!3461109 b!3461101))

(assert (= (and start!322026 ((_ is Cons!37172) rules!2135)) b!3461109))

(assert (= b!3461080 b!3461104))

(assert (= b!3461110 b!3461080))

(assert (= b!3461092 b!3461110))

(assert (= (and start!322026 ((_ is Cons!37173) tokens!494)) b!3461092))

(assert (= b!3461106 b!3461071))

(assert (= b!3461084 b!3461106))

(assert (= start!322026 b!3461084))

(declare-fun m!3864005 () Bool)

(assert (=> b!3461110 m!3864005))

(declare-fun m!3864007 () Bool)

(assert (=> b!3461082 m!3864007))

(declare-fun m!3864009 () Bool)

(assert (=> b!3461081 m!3864009))

(assert (=> b!3461081 m!3864009))

(declare-fun m!3864011 () Bool)

(assert (=> b!3461081 m!3864011))

(declare-fun m!3864013 () Bool)

(assert (=> b!3461100 m!3864013))

(declare-fun m!3864015 () Bool)

(assert (=> b!3461086 m!3864015))

(declare-fun m!3864017 () Bool)

(assert (=> b!3461097 m!3864017))

(declare-fun m!3864019 () Bool)

(assert (=> b!3461108 m!3864019))

(declare-fun m!3864021 () Bool)

(assert (=> b!3461108 m!3864021))

(declare-fun m!3864023 () Bool)

(assert (=> b!3461108 m!3864023))

(declare-fun m!3864025 () Bool)

(assert (=> b!3461108 m!3864025))

(declare-fun m!3864027 () Bool)

(assert (=> b!3461108 m!3864027))

(declare-fun m!3864029 () Bool)

(assert (=> b!3461108 m!3864029))

(declare-fun m!3864031 () Bool)

(assert (=> b!3461108 m!3864031))

(declare-fun m!3864033 () Bool)

(assert (=> b!3461108 m!3864033))

(declare-fun m!3864035 () Bool)

(assert (=> b!3461108 m!3864035))

(declare-fun m!3864037 () Bool)

(assert (=> b!3461108 m!3864037))

(declare-fun m!3864039 () Bool)

(assert (=> b!3461108 m!3864039))

(declare-fun m!3864041 () Bool)

(assert (=> b!3461108 m!3864041))

(declare-fun m!3864043 () Bool)

(assert (=> b!3461108 m!3864043))

(declare-fun m!3864045 () Bool)

(assert (=> b!3461108 m!3864045))

(declare-fun m!3864047 () Bool)

(assert (=> b!3461108 m!3864047))

(declare-fun m!3864049 () Bool)

(assert (=> b!3461108 m!3864049))

(declare-fun m!3864051 () Bool)

(assert (=> b!3461108 m!3864051))

(declare-fun m!3864053 () Bool)

(assert (=> b!3461108 m!3864053))

(declare-fun m!3864055 () Bool)

(assert (=> b!3461108 m!3864055))

(declare-fun m!3864057 () Bool)

(assert (=> b!3461108 m!3864057))

(assert (=> b!3461108 m!3864023))

(declare-fun m!3864059 () Bool)

(assert (=> b!3461108 m!3864059))

(declare-fun m!3864061 () Bool)

(assert (=> b!3461108 m!3864061))

(declare-fun m!3864063 () Bool)

(assert (=> b!3461108 m!3864063))

(declare-fun m!3864065 () Bool)

(assert (=> b!3461108 m!3864065))

(declare-fun m!3864067 () Bool)

(assert (=> b!3461108 m!3864067))

(declare-fun m!3864069 () Bool)

(assert (=> b!3461108 m!3864069))

(assert (=> b!3461108 m!3864055))

(declare-fun m!3864071 () Bool)

(assert (=> b!3461108 m!3864071))

(declare-fun m!3864073 () Bool)

(assert (=> b!3461108 m!3864073))

(declare-fun m!3864075 () Bool)

(assert (=> b!3461108 m!3864075))

(declare-fun m!3864077 () Bool)

(assert (=> b!3461108 m!3864077))

(declare-fun m!3864079 () Bool)

(assert (=> b!3461101 m!3864079))

(declare-fun m!3864081 () Bool)

(assert (=> b!3461101 m!3864081))

(declare-fun m!3864083 () Bool)

(assert (=> b!3461075 m!3864083))

(declare-fun m!3864085 () Bool)

(assert (=> b!3461084 m!3864085))

(declare-fun m!3864087 () Bool)

(assert (=> b!3461098 m!3864087))

(declare-fun m!3864089 () Bool)

(assert (=> b!3461098 m!3864089))

(declare-fun m!3864091 () Bool)

(assert (=> b!3461072 m!3864091))

(declare-fun m!3864093 () Bool)

(assert (=> b!3461072 m!3864093))

(declare-fun m!3864095 () Bool)

(assert (=> b!3461079 m!3864095))

(declare-fun m!3864097 () Bool)

(assert (=> b!3461079 m!3864097))

(declare-fun m!3864099 () Bool)

(assert (=> b!3461111 m!3864099))

(declare-fun m!3864101 () Bool)

(assert (=> b!3461111 m!3864101))

(declare-fun m!3864103 () Bool)

(assert (=> b!3461095 m!3864103))

(declare-fun m!3864105 () Bool)

(assert (=> b!3461076 m!3864105))

(declare-fun m!3864107 () Bool)

(assert (=> b!3461077 m!3864107))

(declare-fun m!3864109 () Bool)

(assert (=> b!3461077 m!3864109))

(declare-fun m!3864111 () Bool)

(assert (=> b!3461106 m!3864111))

(declare-fun m!3864113 () Bool)

(assert (=> b!3461106 m!3864113))

(declare-fun m!3864115 () Bool)

(assert (=> b!3461107 m!3864115))

(assert (=> b!3461107 m!3864115))

(declare-fun m!3864117 () Bool)

(assert (=> b!3461107 m!3864117))

(declare-fun m!3864119 () Bool)

(assert (=> b!3461073 m!3864119))

(declare-fun m!3864121 () Bool)

(assert (=> b!3461092 m!3864121))

(declare-fun m!3864123 () Bool)

(assert (=> b!3461089 m!3864123))

(declare-fun m!3864125 () Bool)

(assert (=> b!3461089 m!3864125))

(declare-fun m!3864127 () Bool)

(assert (=> b!3461089 m!3864127))

(declare-fun m!3864129 () Bool)

(assert (=> b!3461080 m!3864129))

(declare-fun m!3864131 () Bool)

(assert (=> b!3461080 m!3864131))

(declare-fun m!3864133 () Bool)

(assert (=> b!3461103 m!3864133))

(declare-fun m!3864135 () Bool)

(assert (=> b!3461103 m!3864135))

(declare-fun m!3864137 () Bool)

(assert (=> b!3461103 m!3864137))

(declare-fun m!3864139 () Bool)

(assert (=> b!3461103 m!3864139))

(declare-fun m!3864141 () Bool)

(assert (=> b!3461103 m!3864141))

(declare-fun m!3864143 () Bool)

(assert (=> b!3461103 m!3864143))

(declare-fun m!3864145 () Bool)

(assert (=> b!3461103 m!3864145))

(assert (=> b!3461103 m!3864139))

(assert (=> b!3461103 m!3864135))

(declare-fun m!3864147 () Bool)

(assert (=> b!3461103 m!3864147))

(assert (=> b!3461103 m!3864141))

(declare-fun m!3864149 () Bool)

(assert (=> b!3461103 m!3864149))

(assert (=> b!3461103 m!3864137))

(assert (=> b!3461103 m!3864147))

(declare-fun m!3864151 () Bool)

(assert (=> b!3461103 m!3864151))

(declare-fun m!3864153 () Bool)

(assert (=> b!3461085 m!3864153))

(declare-fun m!3864155 () Bool)

(assert (=> b!3461105 m!3864155))

(declare-fun m!3864157 () Bool)

(assert (=> b!3461105 m!3864157))

(declare-fun m!3864159 () Bool)

(assert (=> b!3461102 m!3864159))

(declare-fun m!3864161 () Bool)

(assert (=> b!3461102 m!3864161))

(declare-fun m!3864163 () Bool)

(assert (=> b!3461102 m!3864163))

(declare-fun m!3864165 () Bool)

(assert (=> b!3461102 m!3864165))

(declare-fun m!3864167 () Bool)

(assert (=> b!3461102 m!3864167))

(declare-fun m!3864169 () Bool)

(assert (=> b!3461088 m!3864169))

(declare-fun m!3864171 () Bool)

(assert (=> b!3461074 m!3864171))

(assert (=> b!3461074 m!3864171))

(declare-fun m!3864173 () Bool)

(assert (=> b!3461074 m!3864173))

(declare-fun m!3864175 () Bool)

(assert (=> start!322026 m!3864175))

(declare-fun m!3864177 () Bool)

(assert (=> b!3461099 m!3864177))

(declare-fun m!3864179 () Bool)

(assert (=> b!3461083 m!3864179))

(check-sat (not b!3461080) (not b_next!90619) (not b_next!90621) (not b_next!90627) (not b!3461107) (not b_next!90617) (not b!3461089) (not b!3461073) (not b!3461103) b_and!243497 (not b!3461100) (not b!3461086) (not b!3461101) (not b!3461081) (not b!3461084) (not b!3461097) (not b!3461108) b_and!243499 (not b!3461077) (not b!3461072) (not b!3461092) (not b!3461088) (not b!3461083) (not b!3461076) (not b_next!90623) (not b!3461105) (not b!3461111) (not b!3461095) (not start!322026) (not b_next!90625) (not b!3461085) (not b!3461075) b_and!243493 (not b!3461120) (not b!3461106) b_and!243495 (not b!3461110) b_and!243491 (not b!3461082) (not b!3461074) b_and!243501 (not b!3461099) (not b!3461098) (not b!3461102) (not b!3461079) (not b!3461109))
(check-sat b_and!243499 (not b_next!90623) (not b_next!90619) (not b_next!90621) (not b_next!90627) (not b_next!90617) b_and!243501 b_and!243497 (not b_next!90625) b_and!243493 b_and!243495 b_and!243491)
(get-model)

(declare-fun d!996105 () Bool)

(declare-fun list!13536 (Conc!11255) List!37295)

(assert (=> d!996105 (= (list!13535 (charsOf!3454 (h!42593 tokens!494))) (list!13536 (c!592551 (charsOf!3454 (h!42593 tokens!494)))))))

(declare-fun bs!560466 () Bool)

(assert (= bs!560466 d!996105))

(declare-fun m!3864181 () Bool)

(assert (=> bs!560466 m!3864181))

(assert (=> b!3461074 d!996105))

(declare-fun d!996107 () Bool)

(declare-fun lt!1176631 () BalanceConc!22124)

(assert (=> d!996107 (= (list!13535 lt!1176631) (originalCharacters!6154 (h!42593 tokens!494)))))

(declare-fun dynLambda!15667 (Int TokenValue!5670) BalanceConc!22124)

(assert (=> d!996107 (= lt!1176631 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (value!175500 (h!42593 tokens!494))))))

(assert (=> d!996107 (= (charsOf!3454 (h!42593 tokens!494)) lt!1176631)))

(declare-fun b_lambda!99679 () Bool)

(assert (=> (not b_lambda!99679) (not d!996107)))

(declare-fun t!273046 () Bool)

(declare-fun tb!188727 () Bool)

(assert (=> (and b!3461071 (= (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) t!273046) tb!188727))

(declare-fun b!3461129 () Bool)

(declare-fun e!2144299 () Bool)

(declare-fun tp!1078219 () Bool)

(declare-fun inv!50346 (Conc!11255) Bool)

(assert (=> b!3461129 (= e!2144299 (and (inv!50346 (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (value!175500 (h!42593 tokens!494))))) tp!1078219))))

(declare-fun result!232716 () Bool)

(declare-fun inv!50347 (BalanceConc!22124) Bool)

(assert (=> tb!188727 (= result!232716 (and (inv!50347 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (value!175500 (h!42593 tokens!494)))) e!2144299))))

(assert (= tb!188727 b!3461129))

(declare-fun m!3864183 () Bool)

(assert (=> b!3461129 m!3864183))

(declare-fun m!3864185 () Bool)

(assert (=> tb!188727 m!3864185))

(assert (=> d!996107 t!273046))

(declare-fun b_and!243503 () Bool)

(assert (= b_and!243493 (and (=> t!273046 result!232716) b_and!243503)))

(declare-fun t!273048 () Bool)

(declare-fun tb!188729 () Bool)

(assert (=> (and b!3461104 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) t!273048) tb!188729))

(declare-fun result!232720 () Bool)

(assert (= result!232720 result!232716))

(assert (=> d!996107 t!273048))

(declare-fun b_and!243505 () Bool)

(assert (= b_and!243497 (and (=> t!273048 result!232720) b_and!243505)))

(declare-fun t!273050 () Bool)

(declare-fun tb!188731 () Bool)

(assert (=> (and b!3461090 (= (toChars!7527 (transformation!5440 (h!42592 rules!2135))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) t!273050) tb!188731))

(declare-fun result!232722 () Bool)

(assert (= result!232722 result!232716))

(assert (=> d!996107 t!273050))

(declare-fun b_and!243507 () Bool)

(assert (= b_and!243501 (and (=> t!273050 result!232722) b_and!243507)))

(declare-fun m!3864187 () Bool)

(assert (=> d!996107 m!3864187))

(declare-fun m!3864189 () Bool)

(assert (=> d!996107 m!3864189))

(assert (=> b!3461074 d!996107))

(declare-fun d!996109 () Bool)

(declare-fun lt!1176636 () Bool)

(declare-fun e!2144304 () Bool)

(assert (=> d!996109 (= lt!1176636 e!2144304)))

(declare-fun res!1396442 () Bool)

(assert (=> d!996109 (=> (not res!1396442) (not e!2144304))))

(declare-fun list!13537 (BalanceConc!22126) List!37297)

(assert (=> d!996109 (= res!1396442 (= (list!13537 (_1!21582 (lex!2355 thiss!18206 rules!2135 (print!2094 thiss!18206 (singletonSeq!2536 (h!42593 tokens!494)))))) (list!13537 (singletonSeq!2536 (h!42593 tokens!494)))))))

(declare-fun e!2144305 () Bool)

(assert (=> d!996109 (= lt!1176636 e!2144305)))

(declare-fun res!1396441 () Bool)

(assert (=> d!996109 (=> (not res!1396441) (not e!2144305))))

(declare-fun lt!1176637 () tuple2!36896)

(assert (=> d!996109 (= res!1396441 (= (size!28200 (_1!21582 lt!1176637)) 1))))

(assert (=> d!996109 (= lt!1176637 (lex!2355 thiss!18206 rules!2135 (print!2094 thiss!18206 (singletonSeq!2536 (h!42593 tokens!494)))))))

(assert (=> d!996109 (not (isEmpty!21527 rules!2135))))

(assert (=> d!996109 (= (rulesProduceIndividualToken!2521 thiss!18206 rules!2135 (h!42593 tokens!494)) lt!1176636)))

(declare-fun b!3461136 () Bool)

(declare-fun res!1396440 () Bool)

(assert (=> b!3461136 (=> (not res!1396440) (not e!2144305))))

(assert (=> b!3461136 (= res!1396440 (= (apply!8756 (_1!21582 lt!1176637) 0) (h!42593 tokens!494)))))

(declare-fun b!3461137 () Bool)

(assert (=> b!3461137 (= e!2144305 (isEmpty!21525 (_2!21582 lt!1176637)))))

(declare-fun b!3461138 () Bool)

(assert (=> b!3461138 (= e!2144304 (isEmpty!21525 (_2!21582 (lex!2355 thiss!18206 rules!2135 (print!2094 thiss!18206 (singletonSeq!2536 (h!42593 tokens!494)))))))))

(assert (= (and d!996109 res!1396441) b!3461136))

(assert (= (and b!3461136 res!1396440) b!3461137))

(assert (= (and d!996109 res!1396442) b!3461138))

(assert (=> d!996109 m!3864159))

(declare-fun m!3864191 () Bool)

(assert (=> d!996109 m!3864191))

(assert (=> d!996109 m!3864159))

(declare-fun m!3864193 () Bool)

(assert (=> d!996109 m!3864193))

(declare-fun m!3864195 () Bool)

(assert (=> d!996109 m!3864195))

(assert (=> d!996109 m!3864191))

(declare-fun m!3864197 () Bool)

(assert (=> d!996109 m!3864197))

(assert (=> d!996109 m!3864013))

(assert (=> d!996109 m!3864159))

(declare-fun m!3864199 () Bool)

(assert (=> d!996109 m!3864199))

(declare-fun m!3864201 () Bool)

(assert (=> b!3461136 m!3864201))

(declare-fun m!3864203 () Bool)

(assert (=> b!3461137 m!3864203))

(assert (=> b!3461138 m!3864159))

(assert (=> b!3461138 m!3864159))

(assert (=> b!3461138 m!3864191))

(assert (=> b!3461138 m!3864191))

(assert (=> b!3461138 m!3864197))

(declare-fun m!3864205 () Bool)

(assert (=> b!3461138 m!3864205))

(assert (=> b!3461095 d!996109))

(declare-fun d!996111 () Bool)

(declare-fun lt!1176640 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5188 (List!37296) (InoxSet Rule!10680))

(assert (=> d!996111 (= lt!1176640 (select (content!5188 rules!2135) (rule!8032 separatorToken!241)))))

(declare-fun e!2144310 () Bool)

(assert (=> d!996111 (= lt!1176640 e!2144310)))

(declare-fun res!1396453 () Bool)

(assert (=> d!996111 (=> (not res!1396453) (not e!2144310))))

(assert (=> d!996111 (= res!1396453 ((_ is Cons!37172) rules!2135))))

(assert (=> d!996111 (= (contains!6895 rules!2135 (rule!8032 separatorToken!241)) lt!1176640)))

(declare-fun b!3461143 () Bool)

(declare-fun e!2144311 () Bool)

(assert (=> b!3461143 (= e!2144310 e!2144311)))

(declare-fun res!1396452 () Bool)

(assert (=> b!3461143 (=> res!1396452 e!2144311)))

(assert (=> b!3461143 (= res!1396452 (= (h!42592 rules!2135) (rule!8032 separatorToken!241)))))

(declare-fun b!3461144 () Bool)

(assert (=> b!3461144 (= e!2144311 (contains!6895 (t!273043 rules!2135) (rule!8032 separatorToken!241)))))

(assert (= (and d!996111 res!1396453) b!3461143))

(assert (= (and b!3461143 (not res!1396452)) b!3461144))

(declare-fun m!3864207 () Bool)

(assert (=> d!996111 m!3864207))

(declare-fun m!3864209 () Bool)

(assert (=> d!996111 m!3864209))

(declare-fun m!3864211 () Bool)

(assert (=> b!3461144 m!3864211))

(assert (=> b!3461073 d!996111))

(declare-fun d!996113 () Bool)

(assert (=> d!996113 (not (matchR!4783 (regex!5440 (rule!8032 separatorToken!241)) lt!1176614))))

(declare-fun lt!1176643 () Unit!52520)

(declare-fun choose!20015 (Regex!10199 List!37295 C!20584) Unit!52520)

(assert (=> d!996113 (= lt!1176643 (choose!20015 (regex!5440 (rule!8032 separatorToken!241)) lt!1176614 lt!1176623))))

(declare-fun validRegex!4645 (Regex!10199) Bool)

(assert (=> d!996113 (validRegex!4645 (regex!5440 (rule!8032 separatorToken!241)))))

(assert (=> d!996113 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!498 (regex!5440 (rule!8032 separatorToken!241)) lt!1176614 lt!1176623) lt!1176643)))

(declare-fun bs!560467 () Bool)

(assert (= bs!560467 d!996113))

(assert (=> bs!560467 m!3864093))

(declare-fun m!3864213 () Bool)

(assert (=> bs!560467 m!3864213))

(declare-fun m!3864215 () Bool)

(assert (=> bs!560467 m!3864215))

(assert (=> b!3461072 d!996113))

(declare-fun b!3461173 () Bool)

(declare-fun res!1396474 () Bool)

(declare-fun e!2144330 () Bool)

(assert (=> b!3461173 (=> (not res!1396474) (not e!2144330))))

(declare-fun call!249605 () Bool)

(assert (=> b!3461173 (= res!1396474 (not call!249605))))

(declare-fun b!3461174 () Bool)

(declare-fun res!1396472 () Bool)

(declare-fun e!2144332 () Bool)

(assert (=> b!3461174 (=> res!1396472 e!2144332)))

(assert (=> b!3461174 (= res!1396472 e!2144330)))

(declare-fun res!1396473 () Bool)

(assert (=> b!3461174 (=> (not res!1396473) (not e!2144330))))

(declare-fun lt!1176649 () Bool)

(assert (=> b!3461174 (= res!1396473 lt!1176649)))

(declare-fun b!3461175 () Bool)

(declare-fun e!2144326 () Bool)

(assert (=> b!3461175 (= e!2144326 (= lt!1176649 call!249605))))

(declare-fun b!3461176 () Bool)

(declare-fun e!2144329 () Bool)

(declare-fun e!2144327 () Bool)

(assert (=> b!3461176 (= e!2144329 e!2144327)))

(declare-fun res!1396475 () Bool)

(assert (=> b!3461176 (=> res!1396475 e!2144327)))

(assert (=> b!3461176 (= res!1396475 call!249605)))

(declare-fun b!3461177 () Bool)

(declare-fun e!2144328 () Bool)

(declare-fun nullable!3489 (Regex!10199) Bool)

(assert (=> b!3461177 (= e!2144328 (nullable!3489 (regex!5440 (rule!8032 separatorToken!241))))))

(declare-fun b!3461178 () Bool)

(declare-fun res!1396470 () Bool)

(assert (=> b!3461178 (=> (not res!1396470) (not e!2144330))))

(declare-fun isEmpty!21528 (List!37295) Bool)

(declare-fun tail!5434 (List!37295) List!37295)

(assert (=> b!3461178 (= res!1396470 (isEmpty!21528 (tail!5434 lt!1176614)))))

(declare-fun b!3461179 () Bool)

(declare-fun e!2144331 () Bool)

(assert (=> b!3461179 (= e!2144326 e!2144331)))

(declare-fun c!592560 () Bool)

(assert (=> b!3461179 (= c!592560 ((_ is EmptyLang!10199) (regex!5440 (rule!8032 separatorToken!241))))))

(declare-fun b!3461180 () Bool)

(declare-fun res!1396471 () Bool)

(assert (=> b!3461180 (=> res!1396471 e!2144332)))

(assert (=> b!3461180 (= res!1396471 (not ((_ is ElementMatch!10199) (regex!5440 (rule!8032 separatorToken!241)))))))

(assert (=> b!3461180 (= e!2144331 e!2144332)))

(declare-fun b!3461181 () Bool)

(assert (=> b!3461181 (= e!2144332 e!2144329)))

(declare-fun res!1396477 () Bool)

(assert (=> b!3461181 (=> (not res!1396477) (not e!2144329))))

(assert (=> b!3461181 (= res!1396477 (not lt!1176649))))

(declare-fun b!3461182 () Bool)

(assert (=> b!3461182 (= e!2144331 (not lt!1176649))))

(declare-fun b!3461183 () Bool)

(declare-fun res!1396476 () Bool)

(assert (=> b!3461183 (=> res!1396476 e!2144327)))

(assert (=> b!3461183 (= res!1396476 (not (isEmpty!21528 (tail!5434 lt!1176614))))))

(declare-fun b!3461184 () Bool)

(declare-fun derivativeStep!3042 (Regex!10199 C!20584) Regex!10199)

(assert (=> b!3461184 (= e!2144328 (matchR!4783 (derivativeStep!3042 (regex!5440 (rule!8032 separatorToken!241)) (head!7321 lt!1176614)) (tail!5434 lt!1176614)))))

(declare-fun d!996115 () Bool)

(assert (=> d!996115 e!2144326))

(declare-fun c!592561 () Bool)

(assert (=> d!996115 (= c!592561 ((_ is EmptyExpr!10199) (regex!5440 (rule!8032 separatorToken!241))))))

(assert (=> d!996115 (= lt!1176649 e!2144328)))

(declare-fun c!592562 () Bool)

(assert (=> d!996115 (= c!592562 (isEmpty!21528 lt!1176614))))

(assert (=> d!996115 (validRegex!4645 (regex!5440 (rule!8032 separatorToken!241)))))

(assert (=> d!996115 (= (matchR!4783 (regex!5440 (rule!8032 separatorToken!241)) lt!1176614) lt!1176649)))

(declare-fun bm!249600 () Bool)

(assert (=> bm!249600 (= call!249605 (isEmpty!21528 lt!1176614))))

(declare-fun b!3461185 () Bool)

(assert (=> b!3461185 (= e!2144327 (not (= (head!7321 lt!1176614) (c!592550 (regex!5440 (rule!8032 separatorToken!241))))))))

(declare-fun b!3461186 () Bool)

(assert (=> b!3461186 (= e!2144330 (= (head!7321 lt!1176614) (c!592550 (regex!5440 (rule!8032 separatorToken!241)))))))

(assert (= (and d!996115 c!592562) b!3461177))

(assert (= (and d!996115 (not c!592562)) b!3461184))

(assert (= (and d!996115 c!592561) b!3461175))

(assert (= (and d!996115 (not c!592561)) b!3461179))

(assert (= (and b!3461179 c!592560) b!3461182))

(assert (= (and b!3461179 (not c!592560)) b!3461180))

(assert (= (and b!3461180 (not res!1396471)) b!3461174))

(assert (= (and b!3461174 res!1396473) b!3461173))

(assert (= (and b!3461173 res!1396474) b!3461178))

(assert (= (and b!3461178 res!1396470) b!3461186))

(assert (= (and b!3461174 (not res!1396472)) b!3461181))

(assert (= (and b!3461181 res!1396477) b!3461176))

(assert (= (and b!3461176 (not res!1396475)) b!3461183))

(assert (= (and b!3461183 (not res!1396476)) b!3461185))

(assert (= (or b!3461175 b!3461173 b!3461176) bm!249600))

(assert (=> b!3461184 m!3864037))

(assert (=> b!3461184 m!3864037))

(declare-fun m!3864223 () Bool)

(assert (=> b!3461184 m!3864223))

(declare-fun m!3864225 () Bool)

(assert (=> b!3461184 m!3864225))

(assert (=> b!3461184 m!3864223))

(assert (=> b!3461184 m!3864225))

(declare-fun m!3864227 () Bool)

(assert (=> b!3461184 m!3864227))

(assert (=> b!3461186 m!3864037))

(declare-fun m!3864229 () Bool)

(assert (=> d!996115 m!3864229))

(assert (=> d!996115 m!3864215))

(declare-fun m!3864231 () Bool)

(assert (=> b!3461177 m!3864231))

(assert (=> b!3461185 m!3864037))

(assert (=> bm!249600 m!3864229))

(assert (=> b!3461183 m!3864225))

(assert (=> b!3461183 m!3864225))

(declare-fun m!3864233 () Bool)

(assert (=> b!3461183 m!3864233))

(assert (=> b!3461178 m!3864225))

(assert (=> b!3461178 m!3864225))

(assert (=> b!3461178 m!3864233))

(assert (=> b!3461072 d!996115))

(declare-fun d!996121 () Bool)

(declare-fun res!1396482 () Bool)

(declare-fun e!2144335 () Bool)

(assert (=> d!996121 (=> (not res!1396482) (not e!2144335))))

(assert (=> d!996121 (= res!1396482 (not (isEmpty!21528 (originalCharacters!6154 (h!42593 tokens!494)))))))

(assert (=> d!996121 (= (inv!50345 (h!42593 tokens!494)) e!2144335)))

(declare-fun b!3461191 () Bool)

(declare-fun res!1396483 () Bool)

(assert (=> b!3461191 (=> (not res!1396483) (not e!2144335))))

(assert (=> b!3461191 (= res!1396483 (= (originalCharacters!6154 (h!42593 tokens!494)) (list!13535 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (value!175500 (h!42593 tokens!494))))))))

(declare-fun b!3461192 () Bool)

(assert (=> b!3461192 (= e!2144335 (= (size!28199 (h!42593 tokens!494)) (size!28201 (originalCharacters!6154 (h!42593 tokens!494)))))))

(assert (= (and d!996121 res!1396482) b!3461191))

(assert (= (and b!3461191 res!1396483) b!3461192))

(declare-fun b_lambda!99681 () Bool)

(assert (=> (not b_lambda!99681) (not b!3461191)))

(assert (=> b!3461191 t!273046))

(declare-fun b_and!243509 () Bool)

(assert (= b_and!243503 (and (=> t!273046 result!232716) b_and!243509)))

(assert (=> b!3461191 t!273048))

(declare-fun b_and!243511 () Bool)

(assert (= b_and!243505 (and (=> t!273048 result!232720) b_and!243511)))

(assert (=> b!3461191 t!273050))

(declare-fun b_and!243513 () Bool)

(assert (= b_and!243507 (and (=> t!273050 result!232722) b_and!243513)))

(declare-fun m!3864235 () Bool)

(assert (=> d!996121 m!3864235))

(assert (=> b!3461191 m!3864189))

(assert (=> b!3461191 m!3864189))

(declare-fun m!3864237 () Bool)

(assert (=> b!3461191 m!3864237))

(declare-fun m!3864239 () Bool)

(assert (=> b!3461192 m!3864239))

(assert (=> b!3461092 d!996121))

(declare-fun d!996123 () Bool)

(assert (=> d!996123 (= (inv!50341 (tag!6050 (rule!8032 (h!42593 tokens!494)))) (= (mod (str.len (value!175499 (tag!6050 (rule!8032 (h!42593 tokens!494))))) 2) 0))))

(assert (=> b!3461080 d!996123))

(declare-fun d!996125 () Bool)

(declare-fun res!1396486 () Bool)

(declare-fun e!2144338 () Bool)

(assert (=> d!996125 (=> (not res!1396486) (not e!2144338))))

(declare-fun semiInverseModEq!2284 (Int Int) Bool)

(assert (=> d!996125 (= res!1396486 (semiInverseModEq!2284 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494))))))))

(assert (=> d!996125 (= (inv!50344 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) e!2144338)))

(declare-fun b!3461195 () Bool)

(declare-fun equivClasses!2183 (Int Int) Bool)

(assert (=> b!3461195 (= e!2144338 (equivClasses!2183 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494))))))))

(assert (= (and d!996125 res!1396486) b!3461195))

(declare-fun m!3864241 () Bool)

(assert (=> d!996125 m!3864241))

(declare-fun m!3864243 () Bool)

(assert (=> b!3461195 m!3864243))

(assert (=> b!3461080 d!996125))

(declare-fun d!996127 () Bool)

(assert (=> d!996127 (= (inv!50341 (tag!6050 (h!42592 rules!2135))) (= (mod (str.len (value!175499 (tag!6050 (h!42592 rules!2135)))) 2) 0))))

(assert (=> b!3461101 d!996127))

(declare-fun d!996129 () Bool)

(declare-fun res!1396487 () Bool)

(declare-fun e!2144339 () Bool)

(assert (=> d!996129 (=> (not res!1396487) (not e!2144339))))

(assert (=> d!996129 (= res!1396487 (semiInverseModEq!2284 (toChars!7527 (transformation!5440 (h!42592 rules!2135))) (toValue!7668 (transformation!5440 (h!42592 rules!2135)))))))

(assert (=> d!996129 (= (inv!50344 (transformation!5440 (h!42592 rules!2135))) e!2144339)))

(declare-fun b!3461196 () Bool)

(assert (=> b!3461196 (= e!2144339 (equivClasses!2183 (toChars!7527 (transformation!5440 (h!42592 rules!2135))) (toValue!7668 (transformation!5440 (h!42592 rules!2135)))))))

(assert (= (and d!996129 res!1396487) b!3461196))

(declare-fun m!3864245 () Bool)

(assert (=> d!996129 m!3864245))

(declare-fun m!3864247 () Bool)

(assert (=> b!3461196 m!3864247))

(assert (=> b!3461101 d!996129))

(declare-fun b!3461197 () Bool)

(declare-fun res!1396492 () Bool)

(declare-fun e!2144344 () Bool)

(assert (=> b!3461197 (=> (not res!1396492) (not e!2144344))))

(declare-fun call!249606 () Bool)

(assert (=> b!3461197 (= res!1396492 (not call!249606))))

(declare-fun b!3461198 () Bool)

(declare-fun res!1396490 () Bool)

(declare-fun e!2144346 () Bool)

(assert (=> b!3461198 (=> res!1396490 e!2144346)))

(assert (=> b!3461198 (= res!1396490 e!2144344)))

(declare-fun res!1396491 () Bool)

(assert (=> b!3461198 (=> (not res!1396491) (not e!2144344))))

(declare-fun lt!1176650 () Bool)

(assert (=> b!3461198 (= res!1396491 lt!1176650)))

(declare-fun b!3461199 () Bool)

(declare-fun e!2144340 () Bool)

(assert (=> b!3461199 (= e!2144340 (= lt!1176650 call!249606))))

(declare-fun b!3461200 () Bool)

(declare-fun e!2144343 () Bool)

(declare-fun e!2144341 () Bool)

(assert (=> b!3461200 (= e!2144343 e!2144341)))

(declare-fun res!1396493 () Bool)

(assert (=> b!3461200 (=> res!1396493 e!2144341)))

(assert (=> b!3461200 (= res!1396493 call!249606)))

(declare-fun b!3461201 () Bool)

(declare-fun e!2144342 () Bool)

(assert (=> b!3461201 (= e!2144342 (nullable!3489 (regex!5440 lt!1176624)))))

(declare-fun b!3461202 () Bool)

(declare-fun res!1396488 () Bool)

(assert (=> b!3461202 (=> (not res!1396488) (not e!2144344))))

(assert (=> b!3461202 (= res!1396488 (isEmpty!21528 (tail!5434 lt!1176597)))))

(declare-fun b!3461203 () Bool)

(declare-fun e!2144345 () Bool)

(assert (=> b!3461203 (= e!2144340 e!2144345)))

(declare-fun c!592563 () Bool)

(assert (=> b!3461203 (= c!592563 ((_ is EmptyLang!10199) (regex!5440 lt!1176624)))))

(declare-fun b!3461204 () Bool)

(declare-fun res!1396489 () Bool)

(assert (=> b!3461204 (=> res!1396489 e!2144346)))

(assert (=> b!3461204 (= res!1396489 (not ((_ is ElementMatch!10199) (regex!5440 lt!1176624))))))

(assert (=> b!3461204 (= e!2144345 e!2144346)))

(declare-fun b!3461205 () Bool)

(assert (=> b!3461205 (= e!2144346 e!2144343)))

(declare-fun res!1396495 () Bool)

(assert (=> b!3461205 (=> (not res!1396495) (not e!2144343))))

(assert (=> b!3461205 (= res!1396495 (not lt!1176650))))

(declare-fun b!3461206 () Bool)

(assert (=> b!3461206 (= e!2144345 (not lt!1176650))))

(declare-fun b!3461207 () Bool)

(declare-fun res!1396494 () Bool)

(assert (=> b!3461207 (=> res!1396494 e!2144341)))

(assert (=> b!3461207 (= res!1396494 (not (isEmpty!21528 (tail!5434 lt!1176597))))))

(declare-fun b!3461208 () Bool)

(assert (=> b!3461208 (= e!2144342 (matchR!4783 (derivativeStep!3042 (regex!5440 lt!1176624) (head!7321 lt!1176597)) (tail!5434 lt!1176597)))))

(declare-fun d!996131 () Bool)

(assert (=> d!996131 e!2144340))

(declare-fun c!592564 () Bool)

(assert (=> d!996131 (= c!592564 ((_ is EmptyExpr!10199) (regex!5440 lt!1176624)))))

(assert (=> d!996131 (= lt!1176650 e!2144342)))

(declare-fun c!592565 () Bool)

(assert (=> d!996131 (= c!592565 (isEmpty!21528 lt!1176597))))

(assert (=> d!996131 (validRegex!4645 (regex!5440 lt!1176624))))

(assert (=> d!996131 (= (matchR!4783 (regex!5440 lt!1176624) lt!1176597) lt!1176650)))

(declare-fun bm!249601 () Bool)

(assert (=> bm!249601 (= call!249606 (isEmpty!21528 lt!1176597))))

(declare-fun b!3461209 () Bool)

(assert (=> b!3461209 (= e!2144341 (not (= (head!7321 lt!1176597) (c!592550 (regex!5440 lt!1176624)))))))

(declare-fun b!3461210 () Bool)

(assert (=> b!3461210 (= e!2144344 (= (head!7321 lt!1176597) (c!592550 (regex!5440 lt!1176624))))))

(assert (= (and d!996131 c!592565) b!3461201))

(assert (= (and d!996131 (not c!592565)) b!3461208))

(assert (= (and d!996131 c!592564) b!3461199))

(assert (= (and d!996131 (not c!592564)) b!3461203))

(assert (= (and b!3461203 c!592563) b!3461206))

(assert (= (and b!3461203 (not c!592563)) b!3461204))

(assert (= (and b!3461204 (not res!1396489)) b!3461198))

(assert (= (and b!3461198 res!1396491) b!3461197))

(assert (= (and b!3461197 res!1396492) b!3461202))

(assert (= (and b!3461202 res!1396488) b!3461210))

(assert (= (and b!3461198 (not res!1396490)) b!3461205))

(assert (= (and b!3461205 res!1396495) b!3461200))

(assert (= (and b!3461200 (not res!1396493)) b!3461207))

(assert (= (and b!3461207 (not res!1396494)) b!3461209))

(assert (= (or b!3461199 b!3461197 b!3461200) bm!249601))

(declare-fun m!3864249 () Bool)

(assert (=> b!3461208 m!3864249))

(assert (=> b!3461208 m!3864249))

(declare-fun m!3864251 () Bool)

(assert (=> b!3461208 m!3864251))

(declare-fun m!3864253 () Bool)

(assert (=> b!3461208 m!3864253))

(assert (=> b!3461208 m!3864251))

(assert (=> b!3461208 m!3864253))

(declare-fun m!3864255 () Bool)

(assert (=> b!3461208 m!3864255))

(assert (=> b!3461210 m!3864249))

(declare-fun m!3864257 () Bool)

(assert (=> d!996131 m!3864257))

(declare-fun m!3864259 () Bool)

(assert (=> d!996131 m!3864259))

(declare-fun m!3864261 () Bool)

(assert (=> b!3461201 m!3864261))

(assert (=> b!3461209 m!3864249))

(assert (=> bm!249601 m!3864257))

(assert (=> b!3461207 m!3864253))

(assert (=> b!3461207 m!3864253))

(declare-fun m!3864263 () Bool)

(assert (=> b!3461207 m!3864263))

(assert (=> b!3461202 m!3864253))

(assert (=> b!3461202 m!3864253))

(assert (=> b!3461202 m!3864263))

(assert (=> b!3461079 d!996131))

(declare-fun d!996133 () Bool)

(assert (=> d!996133 (= (get!11898 lt!1176621) (v!36855 lt!1176621))))

(assert (=> b!3461079 d!996133))

(declare-fun d!996135 () Bool)

(assert (=> d!996135 (= (isEmpty!21527 rules!2135) ((_ is Nil!37172) rules!2135))))

(assert (=> b!3461100 d!996135))

(declare-fun d!996137 () Bool)

(declare-fun lt!1176653 () Bool)

(assert (=> d!996137 (= lt!1176653 (isEmpty!21528 (list!13535 (_2!21582 lt!1176602))))))

(declare-fun isEmpty!21529 (Conc!11255) Bool)

(assert (=> d!996137 (= lt!1176653 (isEmpty!21529 (c!592551 (_2!21582 lt!1176602))))))

(assert (=> d!996137 (= (isEmpty!21525 (_2!21582 lt!1176602)) lt!1176653)))

(declare-fun bs!560469 () Bool)

(assert (= bs!560469 d!996137))

(declare-fun m!3864265 () Bool)

(assert (=> bs!560469 m!3864265))

(assert (=> bs!560469 m!3864265))

(declare-fun m!3864267 () Bool)

(assert (=> bs!560469 m!3864267))

(declare-fun m!3864269 () Bool)

(assert (=> bs!560469 m!3864269))

(assert (=> b!3461099 d!996137))

(declare-fun d!996139 () Bool)

(declare-fun isEmpty!21530 (Option!7529) Bool)

(assert (=> d!996139 (= (isDefined!5797 lt!1176618) (not (isEmpty!21530 lt!1176618)))))

(declare-fun bs!560470 () Bool)

(assert (= bs!560470 d!996139))

(declare-fun m!3864271 () Bool)

(assert (=> bs!560470 m!3864271))

(assert (=> b!3461077 d!996139))

(declare-fun b!3461229 () Bool)

(declare-fun res!1396514 () Bool)

(declare-fun e!2144355 () Bool)

(assert (=> b!3461229 (=> (not res!1396514) (not e!2144355))))

(declare-fun lt!1176668 () Option!7529)

(assert (=> b!3461229 (= res!1396514 (< (size!28201 (_2!21583 (get!11899 lt!1176668))) (size!28201 lt!1176597)))))

(declare-fun d!996141 () Bool)

(declare-fun e!2144353 () Bool)

(assert (=> d!996141 e!2144353))

(declare-fun res!1396513 () Bool)

(assert (=> d!996141 (=> res!1396513 e!2144353)))

(assert (=> d!996141 (= res!1396513 (isEmpty!21530 lt!1176668))))

(declare-fun e!2144354 () Option!7529)

(assert (=> d!996141 (= lt!1176668 e!2144354)))

(declare-fun c!592568 () Bool)

(assert (=> d!996141 (= c!592568 (and ((_ is Cons!37172) rules!2135) ((_ is Nil!37172) (t!273043 rules!2135))))))

(declare-fun lt!1176664 () Unit!52520)

(declare-fun lt!1176666 () Unit!52520)

(assert (=> d!996141 (= lt!1176664 lt!1176666)))

(declare-fun isPrefix!2845 (List!37295 List!37295) Bool)

(assert (=> d!996141 (isPrefix!2845 lt!1176597 lt!1176597)))

(declare-fun lemmaIsPrefixRefl!1804 (List!37295 List!37295) Unit!52520)

(assert (=> d!996141 (= lt!1176666 (lemmaIsPrefixRefl!1804 lt!1176597 lt!1176597))))

(declare-fun rulesValidInductive!1854 (LexerInterface!5029 List!37296) Bool)

(assert (=> d!996141 (rulesValidInductive!1854 thiss!18206 rules!2135)))

(assert (=> d!996141 (= (maxPrefix!2569 thiss!18206 rules!2135 lt!1176597) lt!1176668)))

(declare-fun b!3461230 () Bool)

(declare-fun res!1396510 () Bool)

(assert (=> b!3461230 (=> (not res!1396510) (not e!2144355))))

(assert (=> b!3461230 (= res!1396510 (matchR!4783 (regex!5440 (rule!8032 (_1!21583 (get!11899 lt!1176668)))) (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1176668))))))))

(declare-fun b!3461231 () Bool)

(declare-fun res!1396516 () Bool)

(assert (=> b!3461231 (=> (not res!1396516) (not e!2144355))))

(assert (=> b!3461231 (= res!1396516 (= (++!9165 (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1176668)))) (_2!21583 (get!11899 lt!1176668))) lt!1176597))))

(declare-fun b!3461232 () Bool)

(declare-fun res!1396515 () Bool)

(assert (=> b!3461232 (=> (not res!1396515) (not e!2144355))))

(assert (=> b!3461232 (= res!1396515 (= (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1176668)))) (originalCharacters!6154 (_1!21583 (get!11899 lt!1176668)))))))

(declare-fun b!3461233 () Bool)

(assert (=> b!3461233 (= e!2144355 (contains!6895 rules!2135 (rule!8032 (_1!21583 (get!11899 lt!1176668)))))))

(declare-fun call!249609 () Option!7529)

(declare-fun bm!249604 () Bool)

(assert (=> bm!249604 (= call!249609 (maxPrefixOneRule!1736 thiss!18206 (h!42592 rules!2135) lt!1176597))))

(declare-fun b!3461234 () Bool)

(declare-fun res!1396512 () Bool)

(assert (=> b!3461234 (=> (not res!1396512) (not e!2144355))))

(assert (=> b!3461234 (= res!1396512 (= (value!175500 (_1!21583 (get!11899 lt!1176668))) (apply!8757 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1176668)))) (seqFromList!3933 (originalCharacters!6154 (_1!21583 (get!11899 lt!1176668)))))))))

(declare-fun b!3461235 () Bool)

(declare-fun lt!1176667 () Option!7529)

(declare-fun lt!1176665 () Option!7529)

(assert (=> b!3461235 (= e!2144354 (ite (and ((_ is None!7528) lt!1176667) ((_ is None!7528) lt!1176665)) None!7528 (ite ((_ is None!7528) lt!1176665) lt!1176667 (ite ((_ is None!7528) lt!1176667) lt!1176665 (ite (>= (size!28199 (_1!21583 (v!36854 lt!1176667))) (size!28199 (_1!21583 (v!36854 lt!1176665)))) lt!1176667 lt!1176665)))))))

(assert (=> b!3461235 (= lt!1176667 call!249609)))

(assert (=> b!3461235 (= lt!1176665 (maxPrefix!2569 thiss!18206 (t!273043 rules!2135) lt!1176597))))

(declare-fun b!3461236 () Bool)

(assert (=> b!3461236 (= e!2144353 e!2144355)))

(declare-fun res!1396511 () Bool)

(assert (=> b!3461236 (=> (not res!1396511) (not e!2144355))))

(assert (=> b!3461236 (= res!1396511 (isDefined!5797 lt!1176668))))

(declare-fun b!3461237 () Bool)

(assert (=> b!3461237 (= e!2144354 call!249609)))

(assert (= (and d!996141 c!592568) b!3461237))

(assert (= (and d!996141 (not c!592568)) b!3461235))

(assert (= (or b!3461237 b!3461235) bm!249604))

(assert (= (and d!996141 (not res!1396513)) b!3461236))

(assert (= (and b!3461236 res!1396511) b!3461232))

(assert (= (and b!3461232 res!1396515) b!3461229))

(assert (= (and b!3461229 res!1396514) b!3461231))

(assert (= (and b!3461231 res!1396516) b!3461234))

(assert (= (and b!3461234 res!1396512) b!3461230))

(assert (= (and b!3461230 res!1396510) b!3461233))

(declare-fun m!3864273 () Bool)

(assert (=> b!3461235 m!3864273))

(declare-fun m!3864275 () Bool)

(assert (=> b!3461234 m!3864275))

(declare-fun m!3864277 () Bool)

(assert (=> b!3461234 m!3864277))

(assert (=> b!3461234 m!3864277))

(declare-fun m!3864279 () Bool)

(assert (=> b!3461234 m!3864279))

(declare-fun m!3864281 () Bool)

(assert (=> bm!249604 m!3864281))

(assert (=> b!3461233 m!3864275))

(declare-fun m!3864283 () Bool)

(assert (=> b!3461233 m!3864283))

(assert (=> b!3461231 m!3864275))

(declare-fun m!3864285 () Bool)

(assert (=> b!3461231 m!3864285))

(assert (=> b!3461231 m!3864285))

(declare-fun m!3864287 () Bool)

(assert (=> b!3461231 m!3864287))

(assert (=> b!3461231 m!3864287))

(declare-fun m!3864289 () Bool)

(assert (=> b!3461231 m!3864289))

(declare-fun m!3864291 () Bool)

(assert (=> b!3461236 m!3864291))

(declare-fun m!3864293 () Bool)

(assert (=> d!996141 m!3864293))

(declare-fun m!3864295 () Bool)

(assert (=> d!996141 m!3864295))

(declare-fun m!3864297 () Bool)

(assert (=> d!996141 m!3864297))

(declare-fun m!3864299 () Bool)

(assert (=> d!996141 m!3864299))

(assert (=> b!3461232 m!3864275))

(assert (=> b!3461232 m!3864285))

(assert (=> b!3461232 m!3864285))

(assert (=> b!3461232 m!3864287))

(assert (=> b!3461229 m!3864275))

(declare-fun m!3864301 () Bool)

(assert (=> b!3461229 m!3864301))

(assert (=> b!3461229 m!3864069))

(assert (=> b!3461230 m!3864275))

(assert (=> b!3461230 m!3864285))

(assert (=> b!3461230 m!3864285))

(assert (=> b!3461230 m!3864287))

(assert (=> b!3461230 m!3864287))

(declare-fun m!3864303 () Bool)

(assert (=> b!3461230 m!3864303))

(assert (=> b!3461077 d!996141))

(declare-fun d!996143 () Bool)

(declare-fun dynLambda!15668 (Int Token!10246) Bool)

(assert (=> d!996143 (dynLambda!15668 lambda!121860 (h!42593 (t!273044 tokens!494)))))

(declare-fun lt!1176671 () Unit!52520)

(declare-fun choose!20016 (List!37297 Int Token!10246) Unit!52520)

(assert (=> d!996143 (= lt!1176671 (choose!20016 tokens!494 lambda!121860 (h!42593 (t!273044 tokens!494))))))

(declare-fun e!2144358 () Bool)

(assert (=> d!996143 e!2144358))

(declare-fun res!1396519 () Bool)

(assert (=> d!996143 (=> (not res!1396519) (not e!2144358))))

(assert (=> d!996143 (= res!1396519 (forall!7925 tokens!494 lambda!121860))))

(assert (=> d!996143 (= (forallContained!1387 tokens!494 lambda!121860 (h!42593 (t!273044 tokens!494))) lt!1176671)))

(declare-fun b!3461240 () Bool)

(declare-fun contains!6897 (List!37297 Token!10246) Bool)

(assert (=> b!3461240 (= e!2144358 (contains!6897 tokens!494 (h!42593 (t!273044 tokens!494))))))

(assert (= (and d!996143 res!1396519) b!3461240))

(declare-fun b_lambda!99683 () Bool)

(assert (=> (not b_lambda!99683) (not d!996143)))

(declare-fun m!3864305 () Bool)

(assert (=> d!996143 m!3864305))

(declare-fun m!3864307 () Bool)

(assert (=> d!996143 m!3864307))

(assert (=> d!996143 m!3864153))

(declare-fun m!3864309 () Bool)

(assert (=> b!3461240 m!3864309))

(assert (=> b!3461098 d!996143))

(declare-fun d!996145 () Bool)

(assert (=> d!996145 (dynLambda!15668 lambda!121860 (h!42593 tokens!494))))

(declare-fun lt!1176672 () Unit!52520)

(assert (=> d!996145 (= lt!1176672 (choose!20016 tokens!494 lambda!121860 (h!42593 tokens!494)))))

(declare-fun e!2144359 () Bool)

(assert (=> d!996145 e!2144359))

(declare-fun res!1396520 () Bool)

(assert (=> d!996145 (=> (not res!1396520) (not e!2144359))))

(assert (=> d!996145 (= res!1396520 (forall!7925 tokens!494 lambda!121860))))

(assert (=> d!996145 (= (forallContained!1387 tokens!494 lambda!121860 (h!42593 tokens!494)) lt!1176672)))

(declare-fun b!3461241 () Bool)

(assert (=> b!3461241 (= e!2144359 (contains!6897 tokens!494 (h!42593 tokens!494)))))

(assert (= (and d!996145 res!1396520) b!3461241))

(declare-fun b_lambda!99685 () Bool)

(assert (=> (not b_lambda!99685) (not d!996145)))

(declare-fun m!3864311 () Bool)

(assert (=> d!996145 m!3864311))

(declare-fun m!3864313 () Bool)

(assert (=> d!996145 m!3864313))

(assert (=> d!996145 m!3864153))

(declare-fun m!3864315 () Bool)

(assert (=> b!3461241 m!3864315))

(assert (=> b!3461098 d!996145))

(declare-fun d!996147 () Bool)

(declare-fun lt!1176675 () Token!10246)

(declare-fun apply!8758 (List!37297 Int) Token!10246)

(assert (=> d!996147 (= lt!1176675 (apply!8758 (list!13537 (_1!21582 lt!1176602)) 0))))

(declare-fun apply!8759 (Conc!11256 Int) Token!10246)

(assert (=> d!996147 (= lt!1176675 (apply!8759 (c!592552 (_1!21582 lt!1176602)) 0))))

(declare-fun e!2144362 () Bool)

(assert (=> d!996147 e!2144362))

(declare-fun res!1396523 () Bool)

(assert (=> d!996147 (=> (not res!1396523) (not e!2144362))))

(assert (=> d!996147 (= res!1396523 (<= 0 0))))

(assert (=> d!996147 (= (apply!8756 (_1!21582 lt!1176602) 0) lt!1176675)))

(declare-fun b!3461244 () Bool)

(assert (=> b!3461244 (= e!2144362 (< 0 (size!28200 (_1!21582 lt!1176602))))))

(assert (= (and d!996147 res!1396523) b!3461244))

(declare-fun m!3864317 () Bool)

(assert (=> d!996147 m!3864317))

(assert (=> d!996147 m!3864317))

(declare-fun m!3864319 () Bool)

(assert (=> d!996147 m!3864319))

(declare-fun m!3864321 () Bool)

(assert (=> d!996147 m!3864321))

(assert (=> b!3461244 m!3864045))

(assert (=> b!3461076 d!996147))

(declare-fun d!996149 () Bool)

(declare-fun res!1396524 () Bool)

(declare-fun e!2144363 () Bool)

(assert (=> d!996149 (=> (not res!1396524) (not e!2144363))))

(assert (=> d!996149 (= res!1396524 (not (isEmpty!21528 (originalCharacters!6154 separatorToken!241))))))

(assert (=> d!996149 (= (inv!50345 separatorToken!241) e!2144363)))

(declare-fun b!3461245 () Bool)

(declare-fun res!1396525 () Bool)

(assert (=> b!3461245 (=> (not res!1396525) (not e!2144363))))

(assert (=> b!3461245 (= res!1396525 (= (originalCharacters!6154 separatorToken!241) (list!13535 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))) (value!175500 separatorToken!241)))))))

(declare-fun b!3461246 () Bool)

(assert (=> b!3461246 (= e!2144363 (= (size!28199 separatorToken!241) (size!28201 (originalCharacters!6154 separatorToken!241))))))

(assert (= (and d!996149 res!1396524) b!3461245))

(assert (= (and b!3461245 res!1396525) b!3461246))

(declare-fun b_lambda!99687 () Bool)

(assert (=> (not b_lambda!99687) (not b!3461245)))

(declare-fun t!273053 () Bool)

(declare-fun tb!188733 () Bool)

(assert (=> (and b!3461071 (= (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))) (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241)))) t!273053) tb!188733))

(declare-fun b!3461247 () Bool)

(declare-fun e!2144364 () Bool)

(declare-fun tp!1078220 () Bool)

(assert (=> b!3461247 (= e!2144364 (and (inv!50346 (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))) (value!175500 separatorToken!241)))) tp!1078220))))

(declare-fun result!232724 () Bool)

(assert (=> tb!188733 (= result!232724 (and (inv!50347 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))) (value!175500 separatorToken!241))) e!2144364))))

(assert (= tb!188733 b!3461247))

(declare-fun m!3864323 () Bool)

(assert (=> b!3461247 m!3864323))

(declare-fun m!3864325 () Bool)

(assert (=> tb!188733 m!3864325))

(assert (=> b!3461245 t!273053))

(declare-fun b_and!243515 () Bool)

(assert (= b_and!243509 (and (=> t!273053 result!232724) b_and!243515)))

(declare-fun tb!188735 () Bool)

(declare-fun t!273055 () Bool)

(assert (=> (and b!3461104 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241)))) t!273055) tb!188735))

(declare-fun result!232726 () Bool)

(assert (= result!232726 result!232724))

(assert (=> b!3461245 t!273055))

(declare-fun b_and!243517 () Bool)

(assert (= b_and!243511 (and (=> t!273055 result!232726) b_and!243517)))

(declare-fun t!273057 () Bool)

(declare-fun tb!188737 () Bool)

(assert (=> (and b!3461090 (= (toChars!7527 (transformation!5440 (h!42592 rules!2135))) (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241)))) t!273057) tb!188737))

(declare-fun result!232728 () Bool)

(assert (= result!232728 result!232724))

(assert (=> b!3461245 t!273057))

(declare-fun b_and!243519 () Bool)

(assert (= b_and!243513 (and (=> t!273057 result!232728) b_and!243519)))

(declare-fun m!3864327 () Bool)

(assert (=> d!996149 m!3864327))

(declare-fun m!3864329 () Bool)

(assert (=> b!3461245 m!3864329))

(assert (=> b!3461245 m!3864329))

(declare-fun m!3864331 () Bool)

(assert (=> b!3461245 m!3864331))

(declare-fun m!3864333 () Bool)

(assert (=> b!3461246 m!3864333))

(assert (=> start!322026 d!996149))

(declare-fun d!996151 () Bool)

(declare-fun res!1396528 () Bool)

(declare-fun e!2144367 () Bool)

(assert (=> d!996151 (=> (not res!1396528) (not e!2144367))))

(declare-fun rulesValid!2044 (LexerInterface!5029 List!37296) Bool)

(assert (=> d!996151 (= res!1396528 (rulesValid!2044 thiss!18206 rules!2135))))

(assert (=> d!996151 (= (rulesInvariant!4426 thiss!18206 rules!2135) e!2144367)))

(declare-fun b!3461250 () Bool)

(declare-datatypes ((List!37298 0))(
  ( (Nil!37174) (Cons!37174 (h!42594 String!41684) (t!273139 List!37298)) )
))
(declare-fun noDuplicateTag!2040 (LexerInterface!5029 List!37296 List!37298) Bool)

(assert (=> b!3461250 (= e!2144367 (noDuplicateTag!2040 thiss!18206 rules!2135 Nil!37174))))

(assert (= (and d!996151 res!1396528) b!3461250))

(declare-fun m!3864335 () Bool)

(assert (=> d!996151 m!3864335))

(declare-fun m!3864337 () Bool)

(assert (=> b!3461250 m!3864337))

(assert (=> b!3461097 d!996151))

(declare-fun d!996153 () Bool)

(declare-fun res!1396533 () Bool)

(declare-fun e!2144372 () Bool)

(assert (=> d!996153 (=> res!1396533 e!2144372)))

(assert (=> d!996153 (= res!1396533 (not ((_ is Cons!37172) rules!2135)))))

(assert (=> d!996153 (= (sepAndNonSepRulesDisjointChars!1634 rules!2135 rules!2135) e!2144372)))

(declare-fun b!3461255 () Bool)

(declare-fun e!2144373 () Bool)

(assert (=> b!3461255 (= e!2144372 e!2144373)))

(declare-fun res!1396534 () Bool)

(assert (=> b!3461255 (=> (not res!1396534) (not e!2144373))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!720 (Rule!10680 List!37296) Bool)

(assert (=> b!3461255 (= res!1396534 (ruleDisjointCharsFromAllFromOtherType!720 (h!42592 rules!2135) rules!2135))))

(declare-fun b!3461256 () Bool)

(assert (=> b!3461256 (= e!2144373 (sepAndNonSepRulesDisjointChars!1634 rules!2135 (t!273043 rules!2135)))))

(assert (= (and d!996153 (not res!1396533)) b!3461255))

(assert (= (and b!3461255 res!1396534) b!3461256))

(declare-fun m!3864339 () Bool)

(assert (=> b!3461255 m!3864339))

(declare-fun m!3864341 () Bool)

(assert (=> b!3461256 m!3864341))

(assert (=> b!3461075 d!996153))

(declare-fun d!996155 () Bool)

(declare-fun res!1396539 () Bool)

(declare-fun e!2144378 () Bool)

(assert (=> d!996155 (=> res!1396539 e!2144378)))

(assert (=> d!996155 (= res!1396539 ((_ is Nil!37173) tokens!494))))

(assert (=> d!996155 (= (forall!7925 tokens!494 lambda!121860) e!2144378)))

(declare-fun b!3461261 () Bool)

(declare-fun e!2144379 () Bool)

(assert (=> b!3461261 (= e!2144378 e!2144379)))

(declare-fun res!1396540 () Bool)

(assert (=> b!3461261 (=> (not res!1396540) (not e!2144379))))

(assert (=> b!3461261 (= res!1396540 (dynLambda!15668 lambda!121860 (h!42593 tokens!494)))))

(declare-fun b!3461262 () Bool)

(assert (=> b!3461262 (= e!2144379 (forall!7925 (t!273044 tokens!494) lambda!121860))))

(assert (= (and d!996155 (not res!1396539)) b!3461261))

(assert (= (and b!3461261 res!1396540) b!3461262))

(declare-fun b_lambda!99689 () Bool)

(assert (=> (not b_lambda!99689) (not b!3461261)))

(assert (=> b!3461261 m!3864311))

(declare-fun m!3864343 () Bool)

(assert (=> b!3461262 m!3864343))

(assert (=> b!3461085 d!996155))

(declare-fun d!996157 () Bool)

(assert (=> d!996157 (= (inv!50341 (tag!6050 (rule!8032 separatorToken!241))) (= (mod (str.len (value!175499 (tag!6050 (rule!8032 separatorToken!241)))) 2) 0))))

(assert (=> b!3461106 d!996157))

(declare-fun d!996159 () Bool)

(declare-fun res!1396547 () Bool)

(declare-fun e!2144386 () Bool)

(assert (=> d!996159 (=> (not res!1396547) (not e!2144386))))

(assert (=> d!996159 (= res!1396547 (semiInverseModEq!2284 (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))) (toValue!7668 (transformation!5440 (rule!8032 separatorToken!241)))))))

(assert (=> d!996159 (= (inv!50344 (transformation!5440 (rule!8032 separatorToken!241))) e!2144386)))

(declare-fun b!3461271 () Bool)

(assert (=> b!3461271 (= e!2144386 (equivClasses!2183 (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))) (toValue!7668 (transformation!5440 (rule!8032 separatorToken!241)))))))

(assert (= (and d!996159 res!1396547) b!3461271))

(declare-fun m!3864345 () Bool)

(assert (=> d!996159 m!3864345))

(declare-fun m!3864347 () Bool)

(assert (=> b!3461271 m!3864347))

(assert (=> b!3461106 d!996159))

(declare-fun b!3461289 () Bool)

(declare-fun e!2144398 () Bool)

(declare-fun e!2144396 () Bool)

(assert (=> b!3461289 (= e!2144398 e!2144396)))

(declare-fun c!592577 () Bool)

(assert (=> b!3461289 (= c!592577 ((_ is IntegerValue!17011) (value!175500 separatorToken!241)))))

(declare-fun b!3461290 () Bool)

(declare-fun e!2144397 () Bool)

(declare-fun inv!15 (TokenValue!5670) Bool)

(assert (=> b!3461290 (= e!2144397 (inv!15 (value!175500 separatorToken!241)))))

(declare-fun d!996161 () Bool)

(declare-fun c!592576 () Bool)

(assert (=> d!996161 (= c!592576 ((_ is IntegerValue!17010) (value!175500 separatorToken!241)))))

(assert (=> d!996161 (= (inv!21 (value!175500 separatorToken!241)) e!2144398)))

(declare-fun b!3461291 () Bool)

(declare-fun inv!17 (TokenValue!5670) Bool)

(assert (=> b!3461291 (= e!2144396 (inv!17 (value!175500 separatorToken!241)))))

(declare-fun b!3461292 () Bool)

(declare-fun inv!16 (TokenValue!5670) Bool)

(assert (=> b!3461292 (= e!2144398 (inv!16 (value!175500 separatorToken!241)))))

(declare-fun b!3461293 () Bool)

(declare-fun res!1396553 () Bool)

(assert (=> b!3461293 (=> res!1396553 e!2144397)))

(assert (=> b!3461293 (= res!1396553 (not ((_ is IntegerValue!17012) (value!175500 separatorToken!241))))))

(assert (=> b!3461293 (= e!2144396 e!2144397)))

(assert (= (and d!996161 c!592576) b!3461292))

(assert (= (and d!996161 (not c!592576)) b!3461289))

(assert (= (and b!3461289 c!592577) b!3461291))

(assert (= (and b!3461289 (not c!592577)) b!3461293))

(assert (= (and b!3461293 (not res!1396553)) b!3461290))

(declare-fun m!3864367 () Bool)

(assert (=> b!3461290 m!3864367))

(declare-fun m!3864369 () Bool)

(assert (=> b!3461291 m!3864369))

(declare-fun m!3864371 () Bool)

(assert (=> b!3461292 m!3864371))

(assert (=> b!3461084 d!996161))

(declare-fun b!3461294 () Bool)

(declare-fun res!1396558 () Bool)

(declare-fun e!2144403 () Bool)

(assert (=> b!3461294 (=> (not res!1396558) (not e!2144403))))

(declare-fun call!249610 () Bool)

(assert (=> b!3461294 (= res!1396558 (not call!249610))))

(declare-fun b!3461295 () Bool)

(declare-fun res!1396556 () Bool)

(declare-fun e!2144405 () Bool)

(assert (=> b!3461295 (=> res!1396556 e!2144405)))

(assert (=> b!3461295 (= res!1396556 e!2144403)))

(declare-fun res!1396557 () Bool)

(assert (=> b!3461295 (=> (not res!1396557) (not e!2144403))))

(declare-fun lt!1176679 () Bool)

(assert (=> b!3461295 (= res!1396557 lt!1176679)))

(declare-fun b!3461296 () Bool)

(declare-fun e!2144399 () Bool)

(assert (=> b!3461296 (= e!2144399 (= lt!1176679 call!249610))))

(declare-fun b!3461297 () Bool)

(declare-fun e!2144402 () Bool)

(declare-fun e!2144400 () Bool)

(assert (=> b!3461297 (= e!2144402 e!2144400)))

(declare-fun res!1396559 () Bool)

(assert (=> b!3461297 (=> res!1396559 e!2144400)))

(assert (=> b!3461297 (= res!1396559 call!249610)))

(declare-fun b!3461298 () Bool)

(declare-fun e!2144401 () Bool)

(assert (=> b!3461298 (= e!2144401 (nullable!3489 (regex!5440 lt!1176598)))))

(declare-fun b!3461299 () Bool)

(declare-fun res!1396554 () Bool)

(assert (=> b!3461299 (=> (not res!1396554) (not e!2144403))))

(assert (=> b!3461299 (= res!1396554 (isEmpty!21528 (tail!5434 lt!1176614)))))

(declare-fun b!3461300 () Bool)

(declare-fun e!2144404 () Bool)

(assert (=> b!3461300 (= e!2144399 e!2144404)))

(declare-fun c!592578 () Bool)

(assert (=> b!3461300 (= c!592578 ((_ is EmptyLang!10199) (regex!5440 lt!1176598)))))

(declare-fun b!3461301 () Bool)

(declare-fun res!1396555 () Bool)

(assert (=> b!3461301 (=> res!1396555 e!2144405)))

(assert (=> b!3461301 (= res!1396555 (not ((_ is ElementMatch!10199) (regex!5440 lt!1176598))))))

(assert (=> b!3461301 (= e!2144404 e!2144405)))

(declare-fun b!3461302 () Bool)

(assert (=> b!3461302 (= e!2144405 e!2144402)))

(declare-fun res!1396561 () Bool)

(assert (=> b!3461302 (=> (not res!1396561) (not e!2144402))))

(assert (=> b!3461302 (= res!1396561 (not lt!1176679))))

(declare-fun b!3461303 () Bool)

(assert (=> b!3461303 (= e!2144404 (not lt!1176679))))

(declare-fun b!3461304 () Bool)

(declare-fun res!1396560 () Bool)

(assert (=> b!3461304 (=> res!1396560 e!2144400)))

(assert (=> b!3461304 (= res!1396560 (not (isEmpty!21528 (tail!5434 lt!1176614))))))

(declare-fun b!3461305 () Bool)

(assert (=> b!3461305 (= e!2144401 (matchR!4783 (derivativeStep!3042 (regex!5440 lt!1176598) (head!7321 lt!1176614)) (tail!5434 lt!1176614)))))

(declare-fun d!996165 () Bool)

(assert (=> d!996165 e!2144399))

(declare-fun c!592579 () Bool)

(assert (=> d!996165 (= c!592579 ((_ is EmptyExpr!10199) (regex!5440 lt!1176598)))))

(assert (=> d!996165 (= lt!1176679 e!2144401)))

(declare-fun c!592580 () Bool)

(assert (=> d!996165 (= c!592580 (isEmpty!21528 lt!1176614))))

(assert (=> d!996165 (validRegex!4645 (regex!5440 lt!1176598))))

(assert (=> d!996165 (= (matchR!4783 (regex!5440 lt!1176598) lt!1176614) lt!1176679)))

(declare-fun bm!249605 () Bool)

(assert (=> bm!249605 (= call!249610 (isEmpty!21528 lt!1176614))))

(declare-fun b!3461306 () Bool)

(assert (=> b!3461306 (= e!2144400 (not (= (head!7321 lt!1176614) (c!592550 (regex!5440 lt!1176598)))))))

(declare-fun b!3461307 () Bool)

(assert (=> b!3461307 (= e!2144403 (= (head!7321 lt!1176614) (c!592550 (regex!5440 lt!1176598))))))

(assert (= (and d!996165 c!592580) b!3461298))

(assert (= (and d!996165 (not c!592580)) b!3461305))

(assert (= (and d!996165 c!592579) b!3461296))

(assert (= (and d!996165 (not c!592579)) b!3461300))

(assert (= (and b!3461300 c!592578) b!3461303))

(assert (= (and b!3461300 (not c!592578)) b!3461301))

(assert (= (and b!3461301 (not res!1396555)) b!3461295))

(assert (= (and b!3461295 res!1396557) b!3461294))

(assert (= (and b!3461294 res!1396558) b!3461299))

(assert (= (and b!3461299 res!1396554) b!3461307))

(assert (= (and b!3461295 (not res!1396556)) b!3461302))

(assert (= (and b!3461302 res!1396561) b!3461297))

(assert (= (and b!3461297 (not res!1396559)) b!3461304))

(assert (= (and b!3461304 (not res!1396560)) b!3461306))

(assert (= (or b!3461296 b!3461294 b!3461297) bm!249605))

(assert (=> b!3461305 m!3864037))

(assert (=> b!3461305 m!3864037))

(declare-fun m!3864373 () Bool)

(assert (=> b!3461305 m!3864373))

(assert (=> b!3461305 m!3864225))

(assert (=> b!3461305 m!3864373))

(assert (=> b!3461305 m!3864225))

(declare-fun m!3864375 () Bool)

(assert (=> b!3461305 m!3864375))

(assert (=> b!3461307 m!3864037))

(assert (=> d!996165 m!3864229))

(declare-fun m!3864377 () Bool)

(assert (=> d!996165 m!3864377))

(declare-fun m!3864379 () Bool)

(assert (=> b!3461298 m!3864379))

(assert (=> b!3461306 m!3864037))

(assert (=> bm!249605 m!3864229))

(assert (=> b!3461304 m!3864225))

(assert (=> b!3461304 m!3864225))

(assert (=> b!3461304 m!3864233))

(assert (=> b!3461299 m!3864225))

(assert (=> b!3461299 m!3864225))

(assert (=> b!3461299 m!3864233))

(assert (=> b!3461105 d!996165))

(declare-fun d!996167 () Bool)

(assert (=> d!996167 (= (get!11898 lt!1176601) (v!36855 lt!1176601))))

(assert (=> b!3461105 d!996167))

(declare-fun d!996169 () Bool)

(declare-fun lt!1176680 () Token!10246)

(assert (=> d!996169 (= lt!1176680 (apply!8758 (list!13537 (_1!21582 lt!1176604)) 0))))

(assert (=> d!996169 (= lt!1176680 (apply!8759 (c!592552 (_1!21582 lt!1176604)) 0))))

(declare-fun e!2144406 () Bool)

(assert (=> d!996169 e!2144406))

(declare-fun res!1396562 () Bool)

(assert (=> d!996169 (=> (not res!1396562) (not e!2144406))))

(assert (=> d!996169 (= res!1396562 (<= 0 0))))

(assert (=> d!996169 (= (apply!8756 (_1!21582 lt!1176604) 0) lt!1176680)))

(declare-fun b!3461308 () Bool)

(assert (=> b!3461308 (= e!2144406 (< 0 (size!28200 (_1!21582 lt!1176604))))))

(assert (= (and d!996169 res!1396562) b!3461308))

(declare-fun m!3864383 () Bool)

(assert (=> d!996169 m!3864383))

(assert (=> d!996169 m!3864383))

(declare-fun m!3864385 () Bool)

(assert (=> d!996169 m!3864385))

(declare-fun m!3864387 () Bool)

(assert (=> d!996169 m!3864387))

(assert (=> b!3461308 m!3864033))

(assert (=> b!3461083 d!996169))

(declare-fun d!996173 () Bool)

(declare-fun lt!1176681 () Bool)

(declare-fun e!2144407 () Bool)

(assert (=> d!996173 (= lt!1176681 e!2144407)))

(declare-fun res!1396565 () Bool)

(assert (=> d!996173 (=> (not res!1396565) (not e!2144407))))

(assert (=> d!996173 (= res!1396565 (= (list!13537 (_1!21582 (lex!2355 thiss!18206 rules!2135 (print!2094 thiss!18206 (singletonSeq!2536 separatorToken!241))))) (list!13537 (singletonSeq!2536 separatorToken!241))))))

(declare-fun e!2144408 () Bool)

(assert (=> d!996173 (= lt!1176681 e!2144408)))

(declare-fun res!1396564 () Bool)

(assert (=> d!996173 (=> (not res!1396564) (not e!2144408))))

(declare-fun lt!1176682 () tuple2!36896)

(assert (=> d!996173 (= res!1396564 (= (size!28200 (_1!21582 lt!1176682)) 1))))

(assert (=> d!996173 (= lt!1176682 (lex!2355 thiss!18206 rules!2135 (print!2094 thiss!18206 (singletonSeq!2536 separatorToken!241))))))

(assert (=> d!996173 (not (isEmpty!21527 rules!2135))))

(assert (=> d!996173 (= (rulesProduceIndividualToken!2521 thiss!18206 rules!2135 separatorToken!241) lt!1176681)))

(declare-fun b!3461309 () Bool)

(declare-fun res!1396563 () Bool)

(assert (=> b!3461309 (=> (not res!1396563) (not e!2144408))))

(assert (=> b!3461309 (= res!1396563 (= (apply!8756 (_1!21582 lt!1176682) 0) separatorToken!241))))

(declare-fun b!3461310 () Bool)

(assert (=> b!3461310 (= e!2144408 (isEmpty!21525 (_2!21582 lt!1176682)))))

(declare-fun b!3461311 () Bool)

(assert (=> b!3461311 (= e!2144407 (isEmpty!21525 (_2!21582 (lex!2355 thiss!18206 rules!2135 (print!2094 thiss!18206 (singletonSeq!2536 separatorToken!241))))))))

(assert (= (and d!996173 res!1396564) b!3461309))

(assert (= (and b!3461309 res!1396563) b!3461310))

(assert (= (and d!996173 res!1396565) b!3461311))

(assert (=> d!996173 m!3864051))

(declare-fun m!3864389 () Bool)

(assert (=> d!996173 m!3864389))

(assert (=> d!996173 m!3864051))

(declare-fun m!3864391 () Bool)

(assert (=> d!996173 m!3864391))

(declare-fun m!3864393 () Bool)

(assert (=> d!996173 m!3864393))

(assert (=> d!996173 m!3864389))

(declare-fun m!3864395 () Bool)

(assert (=> d!996173 m!3864395))

(assert (=> d!996173 m!3864013))

(assert (=> d!996173 m!3864051))

(declare-fun m!3864397 () Bool)

(assert (=> d!996173 m!3864397))

(declare-fun m!3864399 () Bool)

(assert (=> b!3461309 m!3864399))

(declare-fun m!3864401 () Bool)

(assert (=> b!3461310 m!3864401))

(assert (=> b!3461311 m!3864051))

(assert (=> b!3461311 m!3864051))

(assert (=> b!3461311 m!3864389))

(assert (=> b!3461311 m!3864389))

(assert (=> b!3461311 m!3864395))

(declare-fun m!3864403 () Bool)

(assert (=> b!3461311 m!3864403))

(assert (=> b!3461082 d!996173))

(declare-fun d!996175 () Bool)

(declare-fun c!592585 () Bool)

(assert (=> d!996175 (= c!592585 ((_ is Cons!37173) tokens!494))))

(declare-fun e!2144415 () List!37295)

(assert (=> d!996175 (= (printWithSeparatorTokenList!316 thiss!18206 tokens!494 separatorToken!241) e!2144415)))

(declare-fun b!3461324 () Bool)

(assert (=> b!3461324 (= e!2144415 (++!9165 (++!9165 (list!13535 (charsOf!3454 (h!42593 tokens!494))) (list!13535 (charsOf!3454 separatorToken!241))) (printWithSeparatorTokenList!316 thiss!18206 (t!273044 tokens!494) separatorToken!241)))))

(declare-fun b!3461325 () Bool)

(assert (=> b!3461325 (= e!2144415 Nil!37171)))

(assert (= (and d!996175 c!592585) b!3461324))

(assert (= (and d!996175 (not c!592585)) b!3461325))

(assert (=> b!3461324 m!3864171))

(assert (=> b!3461324 m!3864171))

(assert (=> b!3461324 m!3864173))

(assert (=> b!3461324 m!3864173))

(assert (=> b!3461324 m!3864149))

(declare-fun m!3864409 () Bool)

(assert (=> b!3461324 m!3864409))

(assert (=> b!3461324 m!3864141))

(assert (=> b!3461324 m!3864141))

(assert (=> b!3461324 m!3864149))

(assert (=> b!3461324 m!3864409))

(assert (=> b!3461324 m!3864145))

(declare-fun m!3864421 () Bool)

(assert (=> b!3461324 m!3864421))

(assert (=> b!3461324 m!3864145))

(assert (=> b!3461103 d!996175))

(declare-fun lt!1176689 () List!37295)

(declare-fun b!3461345 () Bool)

(declare-fun e!2144425 () Bool)

(assert (=> b!3461345 (= e!2144425 (or (not (= lt!1176603 Nil!37171)) (= lt!1176689 lt!1176614)))))

(declare-fun b!3461344 () Bool)

(declare-fun res!1396579 () Bool)

(assert (=> b!3461344 (=> (not res!1396579) (not e!2144425))))

(assert (=> b!3461344 (= res!1396579 (= (size!28201 lt!1176689) (+ (size!28201 lt!1176614) (size!28201 lt!1176603))))))

(declare-fun b!3461342 () Bool)

(declare-fun e!2144424 () List!37295)

(assert (=> b!3461342 (= e!2144424 lt!1176603)))

(declare-fun b!3461343 () Bool)

(assert (=> b!3461343 (= e!2144424 (Cons!37171 (h!42591 lt!1176614) (++!9165 (t!273042 lt!1176614) lt!1176603)))))

(declare-fun d!996179 () Bool)

(assert (=> d!996179 e!2144425))

(declare-fun res!1396578 () Bool)

(assert (=> d!996179 (=> (not res!1396578) (not e!2144425))))

(declare-fun content!5190 (List!37295) (InoxSet C!20584))

(assert (=> d!996179 (= res!1396578 (= (content!5190 lt!1176689) ((_ map or) (content!5190 lt!1176614) (content!5190 lt!1176603))))))

(assert (=> d!996179 (= lt!1176689 e!2144424)))

(declare-fun c!592590 () Bool)

(assert (=> d!996179 (= c!592590 ((_ is Nil!37171) lt!1176614))))

(assert (=> d!996179 (= (++!9165 lt!1176614 lt!1176603) lt!1176689)))

(assert (= (and d!996179 c!592590) b!3461342))

(assert (= (and d!996179 (not c!592590)) b!3461343))

(assert (= (and d!996179 res!1396578) b!3461344))

(assert (= (and b!3461344 res!1396579) b!3461345))

(declare-fun m!3864437 () Bool)

(assert (=> b!3461344 m!3864437))

(declare-fun m!3864439 () Bool)

(assert (=> b!3461344 m!3864439))

(declare-fun m!3864441 () Bool)

(assert (=> b!3461344 m!3864441))

(declare-fun m!3864443 () Bool)

(assert (=> b!3461343 m!3864443))

(declare-fun m!3864445 () Bool)

(assert (=> d!996179 m!3864445))

(declare-fun m!3864447 () Bool)

(assert (=> d!996179 m!3864447))

(declare-fun m!3864449 () Bool)

(assert (=> d!996179 m!3864449))

(assert (=> b!3461103 d!996179))

(declare-fun b!3461349 () Bool)

(declare-fun lt!1176690 () List!37295)

(declare-fun e!2144427 () Bool)

(assert (=> b!3461349 (= e!2144427 (or (not (= (printWithSeparatorTokenList!316 thiss!18206 (t!273044 (t!273044 tokens!494)) separatorToken!241) Nil!37171)) (= lt!1176690 (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494)))) lt!1176614))))))

(declare-fun b!3461348 () Bool)

(declare-fun res!1396581 () Bool)

(assert (=> b!3461348 (=> (not res!1396581) (not e!2144427))))

(assert (=> b!3461348 (= res!1396581 (= (size!28201 lt!1176690) (+ (size!28201 (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494)))) lt!1176614)) (size!28201 (printWithSeparatorTokenList!316 thiss!18206 (t!273044 (t!273044 tokens!494)) separatorToken!241)))))))

(declare-fun e!2144426 () List!37295)

(declare-fun b!3461346 () Bool)

(assert (=> b!3461346 (= e!2144426 (printWithSeparatorTokenList!316 thiss!18206 (t!273044 (t!273044 tokens!494)) separatorToken!241))))

(declare-fun b!3461347 () Bool)

(assert (=> b!3461347 (= e!2144426 (Cons!37171 (h!42591 (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494)))) lt!1176614)) (++!9165 (t!273042 (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494)))) lt!1176614)) (printWithSeparatorTokenList!316 thiss!18206 (t!273044 (t!273044 tokens!494)) separatorToken!241))))))

(declare-fun d!996185 () Bool)

(assert (=> d!996185 e!2144427))

(declare-fun res!1396580 () Bool)

(assert (=> d!996185 (=> (not res!1396580) (not e!2144427))))

(assert (=> d!996185 (= res!1396580 (= (content!5190 lt!1176690) ((_ map or) (content!5190 (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494)))) lt!1176614)) (content!5190 (printWithSeparatorTokenList!316 thiss!18206 (t!273044 (t!273044 tokens!494)) separatorToken!241)))))))

(assert (=> d!996185 (= lt!1176690 e!2144426)))

(declare-fun c!592591 () Bool)

(assert (=> d!996185 (= c!592591 ((_ is Nil!37171) (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494)))) lt!1176614)))))

(assert (=> d!996185 (= (++!9165 (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494)))) lt!1176614) (printWithSeparatorTokenList!316 thiss!18206 (t!273044 (t!273044 tokens!494)) separatorToken!241)) lt!1176690)))

(assert (= (and d!996185 c!592591) b!3461346))

(assert (= (and d!996185 (not c!592591)) b!3461347))

(assert (= (and d!996185 res!1396580) b!3461348))

(assert (= (and b!3461348 res!1396581) b!3461349))

(declare-fun m!3864451 () Bool)

(assert (=> b!3461348 m!3864451))

(assert (=> b!3461348 m!3864137))

(declare-fun m!3864453 () Bool)

(assert (=> b!3461348 m!3864453))

(assert (=> b!3461348 m!3864147))

(declare-fun m!3864455 () Bool)

(assert (=> b!3461348 m!3864455))

(assert (=> b!3461347 m!3864147))

(declare-fun m!3864457 () Bool)

(assert (=> b!3461347 m!3864457))

(declare-fun m!3864459 () Bool)

(assert (=> d!996185 m!3864459))

(assert (=> d!996185 m!3864137))

(declare-fun m!3864461 () Bool)

(assert (=> d!996185 m!3864461))

(assert (=> d!996185 m!3864147))

(declare-fun m!3864463 () Bool)

(assert (=> d!996185 m!3864463))

(assert (=> b!3461103 d!996185))

(declare-fun lt!1176691 () List!37295)

(declare-fun e!2144429 () Bool)

(declare-fun b!3461353 () Bool)

(assert (=> b!3461353 (= e!2144429 (or (not (= lt!1176614 Nil!37171)) (= lt!1176691 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494)))))))))

(declare-fun b!3461352 () Bool)

(declare-fun res!1396583 () Bool)

(assert (=> b!3461352 (=> (not res!1396583) (not e!2144429))))

(assert (=> b!3461352 (= res!1396583 (= (size!28201 lt!1176691) (+ (size!28201 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494))))) (size!28201 lt!1176614))))))

(declare-fun b!3461350 () Bool)

(declare-fun e!2144428 () List!37295)

(assert (=> b!3461350 (= e!2144428 lt!1176614)))

(declare-fun b!3461351 () Bool)

(assert (=> b!3461351 (= e!2144428 (Cons!37171 (h!42591 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494))))) (++!9165 (t!273042 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494))))) lt!1176614)))))

(declare-fun d!996187 () Bool)

(assert (=> d!996187 e!2144429))

(declare-fun res!1396582 () Bool)

(assert (=> d!996187 (=> (not res!1396582) (not e!2144429))))

(assert (=> d!996187 (= res!1396582 (= (content!5190 lt!1176691) ((_ map or) (content!5190 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494))))) (content!5190 lt!1176614))))))

(assert (=> d!996187 (= lt!1176691 e!2144428)))

(declare-fun c!592592 () Bool)

(assert (=> d!996187 (= c!592592 ((_ is Nil!37171) (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494))))))))

(assert (=> d!996187 (= (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494)))) lt!1176614) lt!1176691)))

(assert (= (and d!996187 c!592592) b!3461350))

(assert (= (and d!996187 (not c!592592)) b!3461351))

(assert (= (and d!996187 res!1396582) b!3461352))

(assert (= (and b!3461352 res!1396583) b!3461353))

(declare-fun m!3864465 () Bool)

(assert (=> b!3461352 m!3864465))

(assert (=> b!3461352 m!3864135))

(declare-fun m!3864467 () Bool)

(assert (=> b!3461352 m!3864467))

(assert (=> b!3461352 m!3864439))

(declare-fun m!3864469 () Bool)

(assert (=> b!3461351 m!3864469))

(declare-fun m!3864471 () Bool)

(assert (=> d!996187 m!3864471))

(assert (=> d!996187 m!3864135))

(declare-fun m!3864473 () Bool)

(assert (=> d!996187 m!3864473))

(assert (=> d!996187 m!3864447))

(assert (=> b!3461103 d!996187))

(declare-fun d!996189 () Bool)

(declare-fun lt!1176692 () BalanceConc!22124)

(assert (=> d!996189 (= (list!13535 lt!1176692) (originalCharacters!6154 separatorToken!241))))

(assert (=> d!996189 (= lt!1176692 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))) (value!175500 separatorToken!241)))))

(assert (=> d!996189 (= (charsOf!3454 separatorToken!241) lt!1176692)))

(declare-fun b_lambda!99691 () Bool)

(assert (=> (not b_lambda!99691) (not d!996189)))

(assert (=> d!996189 t!273053))

(declare-fun b_and!243521 () Bool)

(assert (= b_and!243515 (and (=> t!273053 result!232724) b_and!243521)))

(assert (=> d!996189 t!273055))

(declare-fun b_and!243523 () Bool)

(assert (= b_and!243517 (and (=> t!273055 result!232726) b_and!243523)))

(assert (=> d!996189 t!273057))

(declare-fun b_and!243525 () Bool)

(assert (= b_and!243519 (and (=> t!273057 result!232728) b_and!243525)))

(declare-fun m!3864475 () Bool)

(assert (=> d!996189 m!3864475))

(assert (=> d!996189 m!3864329))

(assert (=> b!3461103 d!996189))

(declare-fun d!996191 () Bool)

(assert (=> d!996191 (= (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494)))) (list!13536 (c!592551 (charsOf!3454 (h!42593 (t!273044 tokens!494))))))))

(declare-fun bs!560473 () Bool)

(assert (= bs!560473 d!996191))

(declare-fun m!3864477 () Bool)

(assert (=> bs!560473 m!3864477))

(assert (=> b!3461103 d!996191))

(declare-fun d!996193 () Bool)

(declare-fun c!592593 () Bool)

(assert (=> d!996193 (= c!592593 ((_ is Cons!37173) (t!273044 (t!273044 tokens!494))))))

(declare-fun e!2144430 () List!37295)

(assert (=> d!996193 (= (printWithSeparatorTokenList!316 thiss!18206 (t!273044 (t!273044 tokens!494)) separatorToken!241) e!2144430)))

(declare-fun b!3461354 () Bool)

(assert (=> b!3461354 (= e!2144430 (++!9165 (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 (t!273044 tokens!494))))) (list!13535 (charsOf!3454 separatorToken!241))) (printWithSeparatorTokenList!316 thiss!18206 (t!273044 (t!273044 (t!273044 tokens!494))) separatorToken!241)))))

(declare-fun b!3461355 () Bool)

(assert (=> b!3461355 (= e!2144430 Nil!37171)))

(assert (= (and d!996193 c!592593) b!3461354))

(assert (= (and d!996193 (not c!592593)) b!3461355))

(declare-fun m!3864479 () Bool)

(assert (=> b!3461354 m!3864479))

(assert (=> b!3461354 m!3864479))

(declare-fun m!3864481 () Bool)

(assert (=> b!3461354 m!3864481))

(assert (=> b!3461354 m!3864481))

(assert (=> b!3461354 m!3864149))

(declare-fun m!3864483 () Bool)

(assert (=> b!3461354 m!3864483))

(assert (=> b!3461354 m!3864141))

(assert (=> b!3461354 m!3864141))

(assert (=> b!3461354 m!3864149))

(assert (=> b!3461354 m!3864483))

(declare-fun m!3864485 () Bool)

(assert (=> b!3461354 m!3864485))

(declare-fun m!3864487 () Bool)

(assert (=> b!3461354 m!3864487))

(assert (=> b!3461354 m!3864485))

(assert (=> b!3461103 d!996193))

(declare-fun d!996195 () Bool)

(declare-fun c!592594 () Bool)

(assert (=> d!996195 (= c!592594 ((_ is Cons!37173) (t!273044 tokens!494)))))

(declare-fun e!2144431 () List!37295)

(assert (=> d!996195 (= (printWithSeparatorTokenList!316 thiss!18206 (t!273044 tokens!494) separatorToken!241) e!2144431)))

(declare-fun b!3461356 () Bool)

(assert (=> b!3461356 (= e!2144431 (++!9165 (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494)))) (list!13535 (charsOf!3454 separatorToken!241))) (printWithSeparatorTokenList!316 thiss!18206 (t!273044 (t!273044 tokens!494)) separatorToken!241)))))

(declare-fun b!3461357 () Bool)

(assert (=> b!3461357 (= e!2144431 Nil!37171)))

(assert (= (and d!996195 c!592594) b!3461356))

(assert (= (and d!996195 (not c!592594)) b!3461357))

(assert (=> b!3461356 m!3864139))

(assert (=> b!3461356 m!3864139))

(assert (=> b!3461356 m!3864135))

(assert (=> b!3461356 m!3864135))

(assert (=> b!3461356 m!3864149))

(declare-fun m!3864489 () Bool)

(assert (=> b!3461356 m!3864489))

(assert (=> b!3461356 m!3864141))

(assert (=> b!3461356 m!3864141))

(assert (=> b!3461356 m!3864149))

(assert (=> b!3461356 m!3864489))

(assert (=> b!3461356 m!3864147))

(declare-fun m!3864491 () Bool)

(assert (=> b!3461356 m!3864491))

(assert (=> b!3461356 m!3864147))

(assert (=> b!3461103 d!996195))

(declare-fun d!996197 () Bool)

(assert (=> d!996197 (= (list!13535 (charsOf!3454 separatorToken!241)) (list!13536 (c!592551 (charsOf!3454 separatorToken!241))))))

(declare-fun bs!560474 () Bool)

(assert (= bs!560474 d!996197))

(declare-fun m!3864493 () Bool)

(assert (=> bs!560474 m!3864493))

(assert (=> b!3461103 d!996197))

(declare-fun d!996199 () Bool)

(declare-fun lt!1176693 () BalanceConc!22124)

(assert (=> d!996199 (= (list!13535 lt!1176693) (originalCharacters!6154 (h!42593 (t!273044 tokens!494))))))

(assert (=> d!996199 (= lt!1176693 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (value!175500 (h!42593 (t!273044 tokens!494)))))))

(assert (=> d!996199 (= (charsOf!3454 (h!42593 (t!273044 tokens!494))) lt!1176693)))

(declare-fun b_lambda!99693 () Bool)

(assert (=> (not b_lambda!99693) (not d!996199)))

(declare-fun tb!188739 () Bool)

(declare-fun t!273059 () Bool)

(assert (=> (and b!3461071 (= (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494)))))) t!273059) tb!188739))

(declare-fun b!3461358 () Bool)

(declare-fun e!2144432 () Bool)

(declare-fun tp!1078221 () Bool)

(assert (=> b!3461358 (= e!2144432 (and (inv!50346 (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (value!175500 (h!42593 (t!273044 tokens!494)))))) tp!1078221))))

(declare-fun result!232730 () Bool)

(assert (=> tb!188739 (= result!232730 (and (inv!50347 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (value!175500 (h!42593 (t!273044 tokens!494))))) e!2144432))))

(assert (= tb!188739 b!3461358))

(declare-fun m!3864495 () Bool)

(assert (=> b!3461358 m!3864495))

(declare-fun m!3864497 () Bool)

(assert (=> tb!188739 m!3864497))

(assert (=> d!996199 t!273059))

(declare-fun b_and!243527 () Bool)

(assert (= b_and!243521 (and (=> t!273059 result!232730) b_and!243527)))

(declare-fun t!273061 () Bool)

(declare-fun tb!188741 () Bool)

(assert (=> (and b!3461104 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494)))))) t!273061) tb!188741))

(declare-fun result!232732 () Bool)

(assert (= result!232732 result!232730))

(assert (=> d!996199 t!273061))

(declare-fun b_and!243529 () Bool)

(assert (= b_and!243523 (and (=> t!273061 result!232732) b_and!243529)))

(declare-fun t!273063 () Bool)

(declare-fun tb!188743 () Bool)

(assert (=> (and b!3461090 (= (toChars!7527 (transformation!5440 (h!42592 rules!2135))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494)))))) t!273063) tb!188743))

(declare-fun result!232734 () Bool)

(assert (= result!232734 result!232730))

(assert (=> d!996199 t!273063))

(declare-fun b_and!243531 () Bool)

(assert (= b_and!243525 (and (=> t!273063 result!232734) b_and!243531)))

(declare-fun m!3864499 () Bool)

(assert (=> d!996199 m!3864499))

(declare-fun m!3864501 () Bool)

(assert (=> d!996199 m!3864501))

(assert (=> b!3461103 d!996199))

(declare-fun e!2144434 () Bool)

(declare-fun lt!1176694 () List!37295)

(declare-fun b!3461362 () Bool)

(assert (=> b!3461362 (= e!2144434 (or (not (= lt!1176603 Nil!37171)) (= lt!1176694 (++!9165 lt!1176597 lt!1176614))))))

(declare-fun b!3461361 () Bool)

(declare-fun res!1396585 () Bool)

(assert (=> b!3461361 (=> (not res!1396585) (not e!2144434))))

(assert (=> b!3461361 (= res!1396585 (= (size!28201 lt!1176694) (+ (size!28201 (++!9165 lt!1176597 lt!1176614)) (size!28201 lt!1176603))))))

(declare-fun b!3461359 () Bool)

(declare-fun e!2144433 () List!37295)

(assert (=> b!3461359 (= e!2144433 lt!1176603)))

(declare-fun b!3461360 () Bool)

(assert (=> b!3461360 (= e!2144433 (Cons!37171 (h!42591 (++!9165 lt!1176597 lt!1176614)) (++!9165 (t!273042 (++!9165 lt!1176597 lt!1176614)) lt!1176603)))))

(declare-fun d!996201 () Bool)

(assert (=> d!996201 e!2144434))

(declare-fun res!1396584 () Bool)

(assert (=> d!996201 (=> (not res!1396584) (not e!2144434))))

(assert (=> d!996201 (= res!1396584 (= (content!5190 lt!1176694) ((_ map or) (content!5190 (++!9165 lt!1176597 lt!1176614)) (content!5190 lt!1176603))))))

(assert (=> d!996201 (= lt!1176694 e!2144433)))

(declare-fun c!592595 () Bool)

(assert (=> d!996201 (= c!592595 ((_ is Nil!37171) (++!9165 lt!1176597 lt!1176614)))))

(assert (=> d!996201 (= (++!9165 (++!9165 lt!1176597 lt!1176614) lt!1176603) lt!1176694)))

(assert (= (and d!996201 c!592595) b!3461359))

(assert (= (and d!996201 (not c!592595)) b!3461360))

(assert (= (and d!996201 res!1396584) b!3461361))

(assert (= (and b!3461361 res!1396585) b!3461362))

(declare-fun m!3864503 () Bool)

(assert (=> b!3461361 m!3864503))

(assert (=> b!3461361 m!3864009))

(declare-fun m!3864505 () Bool)

(assert (=> b!3461361 m!3864505))

(assert (=> b!3461361 m!3864441))

(declare-fun m!3864507 () Bool)

(assert (=> b!3461360 m!3864507))

(declare-fun m!3864509 () Bool)

(assert (=> d!996201 m!3864509))

(assert (=> d!996201 m!3864009))

(declare-fun m!3864511 () Bool)

(assert (=> d!996201 m!3864511))

(assert (=> d!996201 m!3864449))

(assert (=> b!3461081 d!996201))

(declare-fun b!3461366 () Bool)

(declare-fun e!2144436 () Bool)

(declare-fun lt!1176695 () List!37295)

(assert (=> b!3461366 (= e!2144436 (or (not (= lt!1176614 Nil!37171)) (= lt!1176695 lt!1176597)))))

(declare-fun b!3461365 () Bool)

(declare-fun res!1396587 () Bool)

(assert (=> b!3461365 (=> (not res!1396587) (not e!2144436))))

(assert (=> b!3461365 (= res!1396587 (= (size!28201 lt!1176695) (+ (size!28201 lt!1176597) (size!28201 lt!1176614))))))

(declare-fun b!3461363 () Bool)

(declare-fun e!2144435 () List!37295)

(assert (=> b!3461363 (= e!2144435 lt!1176614)))

(declare-fun b!3461364 () Bool)

(assert (=> b!3461364 (= e!2144435 (Cons!37171 (h!42591 lt!1176597) (++!9165 (t!273042 lt!1176597) lt!1176614)))))

(declare-fun d!996203 () Bool)

(assert (=> d!996203 e!2144436))

(declare-fun res!1396586 () Bool)

(assert (=> d!996203 (=> (not res!1396586) (not e!2144436))))

(assert (=> d!996203 (= res!1396586 (= (content!5190 lt!1176695) ((_ map or) (content!5190 lt!1176597) (content!5190 lt!1176614))))))

(assert (=> d!996203 (= lt!1176695 e!2144435)))

(declare-fun c!592596 () Bool)

(assert (=> d!996203 (= c!592596 ((_ is Nil!37171) lt!1176597))))

(assert (=> d!996203 (= (++!9165 lt!1176597 lt!1176614) lt!1176695)))

(assert (= (and d!996203 c!592596) b!3461363))

(assert (= (and d!996203 (not c!592596)) b!3461364))

(assert (= (and d!996203 res!1396586) b!3461365))

(assert (= (and b!3461365 res!1396587) b!3461366))

(declare-fun m!3864513 () Bool)

(assert (=> b!3461365 m!3864513))

(assert (=> b!3461365 m!3864069))

(assert (=> b!3461365 m!3864439))

(declare-fun m!3864515 () Bool)

(assert (=> b!3461364 m!3864515))

(declare-fun m!3864517 () Bool)

(assert (=> d!996203 m!3864517))

(declare-fun m!3864519 () Bool)

(assert (=> d!996203 m!3864519))

(assert (=> d!996203 m!3864447))

(assert (=> b!3461081 d!996203))

(declare-fun d!996205 () Bool)

(declare-fun lt!1176730 () BalanceConc!22124)

(declare-fun printListTailRec!689 (LexerInterface!5029 List!37297 List!37295) List!37295)

(declare-fun dropList!1206 (BalanceConc!22126 Int) List!37297)

(assert (=> d!996205 (= (list!13535 lt!1176730) (printListTailRec!689 thiss!18206 (dropList!1206 lt!1176594 0) (list!13535 (BalanceConc!22125 Empty!11255))))))

(declare-fun e!2144450 () BalanceConc!22124)

(assert (=> d!996205 (= lt!1176730 e!2144450)))

(declare-fun c!592602 () Bool)

(assert (=> d!996205 (= c!592602 (>= 0 (size!28200 lt!1176594)))))

(declare-fun e!2144451 () Bool)

(assert (=> d!996205 e!2144451))

(declare-fun res!1396611 () Bool)

(assert (=> d!996205 (=> (not res!1396611) (not e!2144451))))

(assert (=> d!996205 (= res!1396611 (>= 0 0))))

(assert (=> d!996205 (= (printTailRec!1524 thiss!18206 lt!1176594 0 (BalanceConc!22125 Empty!11255)) lt!1176730)))

(declare-fun b!3461400 () Bool)

(assert (=> b!3461400 (= e!2144451 (<= 0 (size!28200 lt!1176594)))))

(declare-fun b!3461401 () Bool)

(assert (=> b!3461401 (= e!2144450 (BalanceConc!22125 Empty!11255))))

(declare-fun b!3461402 () Bool)

(declare-fun ++!9166 (BalanceConc!22124 BalanceConc!22124) BalanceConc!22124)

(assert (=> b!3461402 (= e!2144450 (printTailRec!1524 thiss!18206 lt!1176594 (+ 0 1) (++!9166 (BalanceConc!22125 Empty!11255) (charsOf!3454 (apply!8756 lt!1176594 0)))))))

(declare-fun lt!1176731 () List!37297)

(assert (=> b!3461402 (= lt!1176731 (list!13537 lt!1176594))))

(declare-fun lt!1176726 () Unit!52520)

(declare-fun lemmaDropApply!1164 (List!37297 Int) Unit!52520)

(assert (=> b!3461402 (= lt!1176726 (lemmaDropApply!1164 lt!1176731 0))))

(declare-fun head!7322 (List!37297) Token!10246)

(declare-fun drop!2012 (List!37297 Int) List!37297)

(assert (=> b!3461402 (= (head!7322 (drop!2012 lt!1176731 0)) (apply!8758 lt!1176731 0))))

(declare-fun lt!1176725 () Unit!52520)

(assert (=> b!3461402 (= lt!1176725 lt!1176726)))

(declare-fun lt!1176727 () List!37297)

(assert (=> b!3461402 (= lt!1176727 (list!13537 lt!1176594))))

(declare-fun lt!1176728 () Unit!52520)

(declare-fun lemmaDropTail!1048 (List!37297 Int) Unit!52520)

(assert (=> b!3461402 (= lt!1176728 (lemmaDropTail!1048 lt!1176727 0))))

(declare-fun tail!5435 (List!37297) List!37297)

(assert (=> b!3461402 (= (tail!5435 (drop!2012 lt!1176727 0)) (drop!2012 lt!1176727 (+ 0 1)))))

(declare-fun lt!1176729 () Unit!52520)

(assert (=> b!3461402 (= lt!1176729 lt!1176728)))

(assert (= (and d!996205 res!1396611) b!3461400))

(assert (= (and d!996205 c!592602) b!3461401))

(assert (= (and d!996205 (not c!592602)) b!3461402))

(declare-fun m!3864541 () Bool)

(assert (=> d!996205 m!3864541))

(declare-fun m!3864543 () Bool)

(assert (=> d!996205 m!3864543))

(declare-fun m!3864545 () Bool)

(assert (=> d!996205 m!3864545))

(declare-fun m!3864547 () Bool)

(assert (=> d!996205 m!3864547))

(assert (=> d!996205 m!3864543))

(assert (=> d!996205 m!3864547))

(declare-fun m!3864551 () Bool)

(assert (=> d!996205 m!3864551))

(assert (=> b!3461400 m!3864545))

(declare-fun m!3864553 () Bool)

(assert (=> b!3461402 m!3864553))

(declare-fun m!3864557 () Bool)

(assert (=> b!3461402 m!3864557))

(declare-fun m!3864559 () Bool)

(assert (=> b!3461402 m!3864559))

(declare-fun m!3864561 () Bool)

(assert (=> b!3461402 m!3864561))

(declare-fun m!3864565 () Bool)

(assert (=> b!3461402 m!3864565))

(declare-fun m!3864567 () Bool)

(assert (=> b!3461402 m!3864567))

(declare-fun m!3864569 () Bool)

(assert (=> b!3461402 m!3864569))

(declare-fun m!3864571 () Bool)

(assert (=> b!3461402 m!3864571))

(declare-fun m!3864575 () Bool)

(assert (=> b!3461402 m!3864575))

(assert (=> b!3461402 m!3864559))

(declare-fun m!3864579 () Bool)

(assert (=> b!3461402 m!3864579))

(assert (=> b!3461402 m!3864567))

(declare-fun m!3864581 () Bool)

(assert (=> b!3461402 m!3864581))

(assert (=> b!3461402 m!3864569))

(declare-fun m!3864583 () Bool)

(assert (=> b!3461402 m!3864583))

(assert (=> b!3461402 m!3864561))

(assert (=> b!3461402 m!3864565))

(declare-fun m!3864585 () Bool)

(assert (=> b!3461402 m!3864585))

(assert (=> b!3461102 d!996205))

(declare-fun d!996207 () Bool)

(assert (=> d!996207 (= (list!13535 lt!1176622) (list!13536 (c!592551 lt!1176622)))))

(declare-fun bs!560475 () Bool)

(assert (= bs!560475 d!996207))

(declare-fun m!3864589 () Bool)

(assert (=> bs!560475 m!3864589))

(assert (=> b!3461102 d!996207))

(declare-fun d!996211 () Bool)

(declare-fun lt!1176734 () BalanceConc!22124)

(assert (=> d!996211 (= (list!13535 lt!1176734) (printList!1577 thiss!18206 (list!13537 lt!1176594)))))

(assert (=> d!996211 (= lt!1176734 (printTailRec!1524 thiss!18206 lt!1176594 0 (BalanceConc!22125 Empty!11255)))))

(assert (=> d!996211 (= (print!2094 thiss!18206 lt!1176594) lt!1176734)))

(declare-fun bs!560476 () Bool)

(assert (= bs!560476 d!996211))

(declare-fun m!3864591 () Bool)

(assert (=> bs!560476 m!3864591))

(assert (=> bs!560476 m!3864557))

(assert (=> bs!560476 m!3864557))

(declare-fun m!3864593 () Bool)

(assert (=> bs!560476 m!3864593))

(assert (=> bs!560476 m!3864167))

(assert (=> b!3461102 d!996211))

(declare-fun d!996215 () Bool)

(declare-fun e!2144454 () Bool)

(assert (=> d!996215 e!2144454))

(declare-fun res!1396614 () Bool)

(assert (=> d!996215 (=> (not res!1396614) (not e!2144454))))

(declare-fun lt!1176737 () BalanceConc!22126)

(assert (=> d!996215 (= res!1396614 (= (list!13537 lt!1176737) (Cons!37173 (h!42593 tokens!494) Nil!37173)))))

(declare-fun singleton!1122 (Token!10246) BalanceConc!22126)

(assert (=> d!996215 (= lt!1176737 (singleton!1122 (h!42593 tokens!494)))))

(assert (=> d!996215 (= (singletonSeq!2536 (h!42593 tokens!494)) lt!1176737)))

(declare-fun b!3461405 () Bool)

(declare-fun isBalanced!3417 (Conc!11256) Bool)

(assert (=> b!3461405 (= e!2144454 (isBalanced!3417 (c!592552 lt!1176737)))))

(assert (= (and d!996215 res!1396614) b!3461405))

(declare-fun m!3864595 () Bool)

(assert (=> d!996215 m!3864595))

(declare-fun m!3864597 () Bool)

(assert (=> d!996215 m!3864597))

(declare-fun m!3864599 () Bool)

(assert (=> b!3461405 m!3864599))

(assert (=> b!3461102 d!996215))

(declare-fun d!996217 () Bool)

(declare-fun c!592605 () Bool)

(assert (=> d!996217 (= c!592605 ((_ is Cons!37173) (Cons!37173 (h!42593 tokens!494) Nil!37173)))))

(declare-fun e!2144457 () List!37295)

(assert (=> d!996217 (= (printList!1577 thiss!18206 (Cons!37173 (h!42593 tokens!494) Nil!37173)) e!2144457)))

(declare-fun b!3461410 () Bool)

(assert (=> b!3461410 (= e!2144457 (++!9165 (list!13535 (charsOf!3454 (h!42593 (Cons!37173 (h!42593 tokens!494) Nil!37173)))) (printList!1577 thiss!18206 (t!273044 (Cons!37173 (h!42593 tokens!494) Nil!37173)))))))

(declare-fun b!3461411 () Bool)

(assert (=> b!3461411 (= e!2144457 Nil!37171)))

(assert (= (and d!996217 c!592605) b!3461410))

(assert (= (and d!996217 (not c!592605)) b!3461411))

(declare-fun m!3864601 () Bool)

(assert (=> b!3461410 m!3864601))

(assert (=> b!3461410 m!3864601))

(declare-fun m!3864603 () Bool)

(assert (=> b!3461410 m!3864603))

(declare-fun m!3864605 () Bool)

(assert (=> b!3461410 m!3864605))

(assert (=> b!3461410 m!3864603))

(assert (=> b!3461410 m!3864605))

(declare-fun m!3864607 () Bool)

(assert (=> b!3461410 m!3864607))

(assert (=> b!3461102 d!996217))

(declare-fun b!3461415 () Bool)

(declare-fun lt!1176738 () List!37295)

(declare-fun e!2144459 () Bool)

(assert (=> b!3461415 (= e!2144459 (or (not (= lt!1176600 Nil!37171)) (= lt!1176738 lt!1176597)))))

(declare-fun b!3461414 () Bool)

(declare-fun res!1396616 () Bool)

(assert (=> b!3461414 (=> (not res!1396616) (not e!2144459))))

(assert (=> b!3461414 (= res!1396616 (= (size!28201 lt!1176738) (+ (size!28201 lt!1176597) (size!28201 lt!1176600))))))

(declare-fun b!3461412 () Bool)

(declare-fun e!2144458 () List!37295)

(assert (=> b!3461412 (= e!2144458 lt!1176600)))

(declare-fun b!3461413 () Bool)

(assert (=> b!3461413 (= e!2144458 (Cons!37171 (h!42591 lt!1176597) (++!9165 (t!273042 lt!1176597) lt!1176600)))))

(declare-fun d!996219 () Bool)

(assert (=> d!996219 e!2144459))

(declare-fun res!1396615 () Bool)

(assert (=> d!996219 (=> (not res!1396615) (not e!2144459))))

(assert (=> d!996219 (= res!1396615 (= (content!5190 lt!1176738) ((_ map or) (content!5190 lt!1176597) (content!5190 lt!1176600))))))

(assert (=> d!996219 (= lt!1176738 e!2144458)))

(declare-fun c!592606 () Bool)

(assert (=> d!996219 (= c!592606 ((_ is Nil!37171) lt!1176597))))

(assert (=> d!996219 (= (++!9165 lt!1176597 lt!1176600) lt!1176738)))

(assert (= (and d!996219 c!592606) b!3461412))

(assert (= (and d!996219 (not c!592606)) b!3461413))

(assert (= (and d!996219 res!1396615) b!3461414))

(assert (= (and b!3461414 res!1396616) b!3461415))

(declare-fun m!3864609 () Bool)

(assert (=> b!3461414 m!3864609))

(assert (=> b!3461414 m!3864069))

(declare-fun m!3864611 () Bool)

(assert (=> b!3461414 m!3864611))

(declare-fun m!3864613 () Bool)

(assert (=> b!3461413 m!3864613))

(declare-fun m!3864615 () Bool)

(assert (=> d!996219 m!3864615))

(assert (=> d!996219 m!3864519))

(declare-fun m!3864617 () Bool)

(assert (=> d!996219 m!3864617))

(assert (=> b!3461111 d!996219))

(declare-fun d!996221 () Bool)

(assert (=> d!996221 (= (++!9165 (++!9165 lt!1176597 lt!1176614) lt!1176603) (++!9165 lt!1176597 (++!9165 lt!1176614 lt!1176603)))))

(declare-fun lt!1176741 () Unit!52520)

(declare-fun choose!20019 (List!37295 List!37295 List!37295) Unit!52520)

(assert (=> d!996221 (= lt!1176741 (choose!20019 lt!1176597 lt!1176614 lt!1176603))))

(assert (=> d!996221 (= (lemmaConcatAssociativity!1960 lt!1176597 lt!1176614 lt!1176603) lt!1176741)))

(declare-fun bs!560477 () Bool)

(assert (= bs!560477 d!996221))

(assert (=> bs!560477 m!3864133))

(declare-fun m!3864619 () Bool)

(assert (=> bs!560477 m!3864619))

(assert (=> bs!560477 m!3864009))

(assert (=> bs!560477 m!3864133))

(declare-fun m!3864621 () Bool)

(assert (=> bs!560477 m!3864621))

(assert (=> bs!560477 m!3864009))

(assert (=> bs!560477 m!3864011))

(assert (=> b!3461111 d!996221))

(declare-fun lt!1176744 () Bool)

(declare-fun d!996223 () Bool)

(declare-fun isEmpty!21536 (List!37297) Bool)

(assert (=> d!996223 (= lt!1176744 (isEmpty!21536 (list!13537 (_1!21582 (lex!2355 thiss!18206 rules!2135 lt!1176613)))))))

(declare-fun isEmpty!21537 (Conc!11256) Bool)

(assert (=> d!996223 (= lt!1176744 (isEmpty!21537 (c!592552 (_1!21582 (lex!2355 thiss!18206 rules!2135 lt!1176613)))))))

(assert (=> d!996223 (= (isEmpty!21526 (_1!21582 (lex!2355 thiss!18206 rules!2135 lt!1176613))) lt!1176744)))

(declare-fun bs!560478 () Bool)

(assert (= bs!560478 d!996223))

(declare-fun m!3864623 () Bool)

(assert (=> bs!560478 m!3864623))

(assert (=> bs!560478 m!3864623))

(declare-fun m!3864625 () Bool)

(assert (=> bs!560478 m!3864625))

(declare-fun m!3864627 () Bool)

(assert (=> bs!560478 m!3864627))

(assert (=> b!3461089 d!996223))

(declare-fun b!3461438 () Bool)

(declare-fun e!2144476 () Bool)

(declare-fun e!2144475 () Bool)

(assert (=> b!3461438 (= e!2144476 e!2144475)))

(declare-fun res!1396633 () Bool)

(declare-fun lt!1176756 () tuple2!36896)

(declare-fun size!28205 (BalanceConc!22124) Int)

(assert (=> b!3461438 (= res!1396633 (< (size!28205 (_2!21582 lt!1176756)) (size!28205 lt!1176613)))))

(assert (=> b!3461438 (=> (not res!1396633) (not e!2144475))))

(declare-fun b!3461439 () Bool)

(declare-fun e!2144477 () Bool)

(declare-datatypes ((tuple2!36904 0))(
  ( (tuple2!36905 (_1!21586 List!37297) (_2!21586 List!37295)) )
))
(declare-fun lexList!1450 (LexerInterface!5029 List!37296 List!37295) tuple2!36904)

(assert (=> b!3461439 (= e!2144477 (= (list!13535 (_2!21582 lt!1176756)) (_2!21586 (lexList!1450 thiss!18206 rules!2135 (list!13535 lt!1176613)))))))

(declare-fun b!3461440 () Bool)

(assert (=> b!3461440 (= e!2144475 (not (isEmpty!21526 (_1!21582 lt!1176756))))))

(declare-fun b!3461441 () Bool)

(assert (=> b!3461441 (= e!2144476 (= (_2!21582 lt!1176756) lt!1176613))))

(declare-fun d!996225 () Bool)

(assert (=> d!996225 e!2144477))

(declare-fun res!1396632 () Bool)

(assert (=> d!996225 (=> (not res!1396632) (not e!2144477))))

(assert (=> d!996225 (= res!1396632 e!2144476)))

(declare-fun c!592609 () Bool)

(assert (=> d!996225 (= c!592609 (> (size!28200 (_1!21582 lt!1176756)) 0))))

(declare-fun lexTailRecV2!1058 (LexerInterface!5029 List!37296 BalanceConc!22124 BalanceConc!22124 BalanceConc!22124 BalanceConc!22126) tuple2!36896)

(assert (=> d!996225 (= lt!1176756 (lexTailRecV2!1058 thiss!18206 rules!2135 lt!1176613 (BalanceConc!22125 Empty!11255) lt!1176613 (BalanceConc!22127 Empty!11256)))))

(assert (=> d!996225 (= (lex!2355 thiss!18206 rules!2135 lt!1176613) lt!1176756)))

(declare-fun b!3461437 () Bool)

(declare-fun res!1396634 () Bool)

(assert (=> b!3461437 (=> (not res!1396634) (not e!2144477))))

(assert (=> b!3461437 (= res!1396634 (= (list!13537 (_1!21582 lt!1176756)) (_1!21586 (lexList!1450 thiss!18206 rules!2135 (list!13535 lt!1176613)))))))

(assert (= (and d!996225 c!592609) b!3461438))

(assert (= (and d!996225 (not c!592609)) b!3461441))

(assert (= (and b!3461438 res!1396633) b!3461440))

(assert (= (and d!996225 res!1396632) b!3461437))

(assert (= (and b!3461437 res!1396634) b!3461439))

(declare-fun m!3864655 () Bool)

(assert (=> b!3461439 m!3864655))

(declare-fun m!3864657 () Bool)

(assert (=> b!3461439 m!3864657))

(assert (=> b!3461439 m!3864657))

(declare-fun m!3864659 () Bool)

(assert (=> b!3461439 m!3864659))

(declare-fun m!3864661 () Bool)

(assert (=> b!3461437 m!3864661))

(assert (=> b!3461437 m!3864657))

(assert (=> b!3461437 m!3864657))

(assert (=> b!3461437 m!3864659))

(declare-fun m!3864663 () Bool)

(assert (=> b!3461438 m!3864663))

(declare-fun m!3864665 () Bool)

(assert (=> b!3461438 m!3864665))

(declare-fun m!3864667 () Bool)

(assert (=> d!996225 m!3864667))

(declare-fun m!3864669 () Bool)

(assert (=> d!996225 m!3864669))

(declare-fun m!3864671 () Bool)

(assert (=> b!3461440 m!3864671))

(assert (=> b!3461089 d!996225))

(declare-fun d!996233 () Bool)

(declare-fun fromListB!1785 (List!37295) BalanceConc!22124)

(assert (=> d!996233 (= (seqFromList!3933 lt!1176597) (fromListB!1785 lt!1176597))))

(declare-fun bs!560480 () Bool)

(assert (= bs!560480 d!996233))

(declare-fun m!3864679 () Bool)

(assert (=> bs!560480 m!3864679))

(assert (=> b!3461089 d!996233))

(declare-fun b!3461445 () Bool)

(declare-fun e!2144483 () Bool)

(declare-fun e!2144481 () Bool)

(assert (=> b!3461445 (= e!2144483 e!2144481)))

(declare-fun c!592611 () Bool)

(assert (=> b!3461445 (= c!592611 ((_ is IntegerValue!17011) (value!175500 (h!42593 tokens!494))))))

(declare-fun b!3461446 () Bool)

(declare-fun e!2144482 () Bool)

(assert (=> b!3461446 (= e!2144482 (inv!15 (value!175500 (h!42593 tokens!494))))))

(declare-fun d!996237 () Bool)

(declare-fun c!592610 () Bool)

(assert (=> d!996237 (= c!592610 ((_ is IntegerValue!17010) (value!175500 (h!42593 tokens!494))))))

(assert (=> d!996237 (= (inv!21 (value!175500 (h!42593 tokens!494))) e!2144483)))

(declare-fun b!3461447 () Bool)

(assert (=> b!3461447 (= e!2144481 (inv!17 (value!175500 (h!42593 tokens!494))))))

(declare-fun b!3461448 () Bool)

(assert (=> b!3461448 (= e!2144483 (inv!16 (value!175500 (h!42593 tokens!494))))))

(declare-fun b!3461449 () Bool)

(declare-fun res!1396638 () Bool)

(assert (=> b!3461449 (=> res!1396638 e!2144482)))

(assert (=> b!3461449 (= res!1396638 (not ((_ is IntegerValue!17012) (value!175500 (h!42593 tokens!494)))))))

(assert (=> b!3461449 (= e!2144481 e!2144482)))

(assert (= (and d!996237 c!592610) b!3461448))

(assert (= (and d!996237 (not c!592610)) b!3461445))

(assert (= (and b!3461445 c!592611) b!3461447))

(assert (= (and b!3461445 (not c!592611)) b!3461449))

(assert (= (and b!3461449 (not res!1396638)) b!3461446))

(declare-fun m!3864681 () Bool)

(assert (=> b!3461446 m!3864681))

(declare-fun m!3864683 () Bool)

(assert (=> b!3461447 m!3864683))

(declare-fun m!3864685 () Bool)

(assert (=> b!3461448 m!3864685))

(assert (=> b!3461110 d!996237))

(declare-fun d!996239 () Bool)

(assert (=> d!996239 (= (get!11899 lt!1176618) (v!36854 lt!1176618))))

(assert (=> b!3461088 d!996239))

(declare-fun d!996241 () Bool)

(declare-fun e!2144494 () Bool)

(assert (=> d!996241 e!2144494))

(declare-fun res!1396647 () Bool)

(assert (=> d!996241 (=> (not res!1396647) (not e!2144494))))

(assert (=> d!996241 (= res!1396647 (isDefined!5798 (getRuleFromTag!1083 thiss!18206 rules!2135 (tag!6050 (rule!8032 (h!42593 tokens!494))))))))

(declare-fun lt!1176768 () Unit!52520)

(declare-fun choose!20021 (LexerInterface!5029 List!37296 List!37295 Token!10246) Unit!52520)

(assert (=> d!996241 (= lt!1176768 (choose!20021 thiss!18206 rules!2135 lt!1176597 (h!42593 tokens!494)))))

(assert (=> d!996241 (rulesInvariant!4426 thiss!18206 rules!2135)))

(assert (=> d!996241 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1083 thiss!18206 rules!2135 lt!1176597 (h!42593 tokens!494)) lt!1176768)))

(declare-fun b!3461466 () Bool)

(declare-fun res!1396648 () Bool)

(assert (=> b!3461466 (=> (not res!1396648) (not e!2144494))))

(assert (=> b!3461466 (= res!1396648 (matchR!4783 (regex!5440 (get!11898 (getRuleFromTag!1083 thiss!18206 rules!2135 (tag!6050 (rule!8032 (h!42593 tokens!494)))))) (list!13535 (charsOf!3454 (h!42593 tokens!494)))))))

(declare-fun b!3461467 () Bool)

(assert (=> b!3461467 (= e!2144494 (= (rule!8032 (h!42593 tokens!494)) (get!11898 (getRuleFromTag!1083 thiss!18206 rules!2135 (tag!6050 (rule!8032 (h!42593 tokens!494)))))))))

(assert (= (and d!996241 res!1396647) b!3461466))

(assert (= (and b!3461466 res!1396648) b!3461467))

(assert (=> d!996241 m!3864049))

(assert (=> d!996241 m!3864049))

(declare-fun m!3864687 () Bool)

(assert (=> d!996241 m!3864687))

(declare-fun m!3864689 () Bool)

(assert (=> d!996241 m!3864689))

(assert (=> d!996241 m!3864017))

(assert (=> b!3461466 m!3864173))

(declare-fun m!3864691 () Bool)

(assert (=> b!3461466 m!3864691))

(assert (=> b!3461466 m!3864171))

(assert (=> b!3461466 m!3864049))

(assert (=> b!3461466 m!3864171))

(assert (=> b!3461466 m!3864173))

(assert (=> b!3461466 m!3864049))

(declare-fun m!3864693 () Bool)

(assert (=> b!3461466 m!3864693))

(assert (=> b!3461467 m!3864049))

(assert (=> b!3461467 m!3864049))

(assert (=> b!3461467 m!3864693))

(assert (=> b!3461108 d!996241))

(declare-fun d!996243 () Bool)

(declare-fun lt!1176772 () Bool)

(declare-fun e!2144499 () Bool)

(assert (=> d!996243 (= lt!1176772 e!2144499)))

(declare-fun res!1396653 () Bool)

(assert (=> d!996243 (=> (not res!1396653) (not e!2144499))))

(assert (=> d!996243 (= res!1396653 (= (list!13537 (_1!21582 (lex!2355 thiss!18206 rules!2135 (print!2094 thiss!18206 (singletonSeq!2536 (h!42593 (t!273044 tokens!494))))))) (list!13537 (singletonSeq!2536 (h!42593 (t!273044 tokens!494))))))))

(declare-fun e!2144500 () Bool)

(assert (=> d!996243 (= lt!1176772 e!2144500)))

(declare-fun res!1396652 () Bool)

(assert (=> d!996243 (=> (not res!1396652) (not e!2144500))))

(declare-fun lt!1176773 () tuple2!36896)

(assert (=> d!996243 (= res!1396652 (= (size!28200 (_1!21582 lt!1176773)) 1))))

(assert (=> d!996243 (= lt!1176773 (lex!2355 thiss!18206 rules!2135 (print!2094 thiss!18206 (singletonSeq!2536 (h!42593 (t!273044 tokens!494))))))))

(assert (=> d!996243 (not (isEmpty!21527 rules!2135))))

(assert (=> d!996243 (= (rulesProduceIndividualToken!2521 thiss!18206 rules!2135 (h!42593 (t!273044 tokens!494))) lt!1176772)))

(declare-fun b!3461474 () Bool)

(declare-fun res!1396651 () Bool)

(assert (=> b!3461474 (=> (not res!1396651) (not e!2144500))))

(assert (=> b!3461474 (= res!1396651 (= (apply!8756 (_1!21582 lt!1176773) 0) (h!42593 (t!273044 tokens!494))))))

(declare-fun b!3461475 () Bool)

(assert (=> b!3461475 (= e!2144500 (isEmpty!21525 (_2!21582 lt!1176773)))))

(declare-fun b!3461476 () Bool)

(assert (=> b!3461476 (= e!2144499 (isEmpty!21525 (_2!21582 (lex!2355 thiss!18206 rules!2135 (print!2094 thiss!18206 (singletonSeq!2536 (h!42593 (t!273044 tokens!494))))))))))

(assert (= (and d!996243 res!1396652) b!3461474))

(assert (= (and b!3461474 res!1396651) b!3461475))

(assert (= (and d!996243 res!1396653) b!3461476))

(assert (=> d!996243 m!3864065))

(declare-fun m!3864707 () Bool)

(assert (=> d!996243 m!3864707))

(assert (=> d!996243 m!3864065))

(declare-fun m!3864709 () Bool)

(assert (=> d!996243 m!3864709))

(declare-fun m!3864711 () Bool)

(assert (=> d!996243 m!3864711))

(assert (=> d!996243 m!3864707))

(declare-fun m!3864713 () Bool)

(assert (=> d!996243 m!3864713))

(assert (=> d!996243 m!3864013))

(assert (=> d!996243 m!3864065))

(declare-fun m!3864715 () Bool)

(assert (=> d!996243 m!3864715))

(declare-fun m!3864717 () Bool)

(assert (=> b!3461474 m!3864717))

(declare-fun m!3864719 () Bool)

(assert (=> b!3461475 m!3864719))

(assert (=> b!3461476 m!3864065))

(assert (=> b!3461476 m!3864065))

(assert (=> b!3461476 m!3864707))

(assert (=> b!3461476 m!3864707))

(assert (=> b!3461476 m!3864713))

(declare-fun m!3864721 () Bool)

(assert (=> b!3461476 m!3864721))

(assert (=> b!3461108 d!996243))

(declare-fun d!996249 () Bool)

(declare-fun lt!1176779 () Bool)

(assert (=> d!996249 (= lt!1176779 (select (content!5190 (usedCharacters!674 (regex!5440 (rule!8032 separatorToken!241)))) lt!1176623))))

(declare-fun e!2144512 () Bool)

(assert (=> d!996249 (= lt!1176779 e!2144512)))

(declare-fun res!1396664 () Bool)

(assert (=> d!996249 (=> (not res!1396664) (not e!2144512))))

(assert (=> d!996249 (= res!1396664 ((_ is Cons!37171) (usedCharacters!674 (regex!5440 (rule!8032 separatorToken!241)))))))

(assert (=> d!996249 (= (contains!6896 (usedCharacters!674 (regex!5440 (rule!8032 separatorToken!241))) lt!1176623) lt!1176779)))

(declare-fun b!3461487 () Bool)

(declare-fun e!2144511 () Bool)

(assert (=> b!3461487 (= e!2144512 e!2144511)))

(declare-fun res!1396665 () Bool)

(assert (=> b!3461487 (=> res!1396665 e!2144511)))

(assert (=> b!3461487 (= res!1396665 (= (h!42591 (usedCharacters!674 (regex!5440 (rule!8032 separatorToken!241)))) lt!1176623))))

(declare-fun b!3461488 () Bool)

(assert (=> b!3461488 (= e!2144511 (contains!6896 (t!273042 (usedCharacters!674 (regex!5440 (rule!8032 separatorToken!241)))) lt!1176623))))

(assert (= (and d!996249 res!1396664) b!3461487))

(assert (= (and b!3461487 (not res!1396665)) b!3461488))

(assert (=> d!996249 m!3864023))

(declare-fun m!3864727 () Bool)

(assert (=> d!996249 m!3864727))

(declare-fun m!3864731 () Bool)

(assert (=> d!996249 m!3864731))

(declare-fun m!3864733 () Bool)

(assert (=> b!3461488 m!3864733))

(assert (=> b!3461108 d!996249))

(declare-fun b!3461511 () Bool)

(declare-fun lt!1176791 () Unit!52520)

(declare-fun lt!1176792 () Unit!52520)

(assert (=> b!3461511 (= lt!1176791 lt!1176792)))

(assert (=> b!3461511 (rulesInvariant!4426 thiss!18206 (t!273043 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!434 (LexerInterface!5029 Rule!10680 List!37296) Unit!52520)

(assert (=> b!3461511 (= lt!1176792 (lemmaInvariantOnRulesThenOnTail!434 thiss!18206 (h!42592 rules!2135) (t!273043 rules!2135)))))

(declare-fun e!2144529 () Option!7530)

(assert (=> b!3461511 (= e!2144529 (getRuleFromTag!1083 thiss!18206 (t!273043 rules!2135) (tag!6050 (rule!8032 (h!42593 tokens!494)))))))

(declare-fun d!996253 () Bool)

(declare-fun e!2144530 () Bool)

(assert (=> d!996253 e!2144530))

(declare-fun res!1396680 () Bool)

(assert (=> d!996253 (=> res!1396680 e!2144530)))

(declare-fun lt!1176793 () Option!7530)

(declare-fun isEmpty!21538 (Option!7530) Bool)

(assert (=> d!996253 (= res!1396680 (isEmpty!21538 lt!1176793))))

(declare-fun e!2144531 () Option!7530)

(assert (=> d!996253 (= lt!1176793 e!2144531)))

(declare-fun c!592623 () Bool)

(assert (=> d!996253 (= c!592623 (and ((_ is Cons!37172) rules!2135) (= (tag!6050 (h!42592 rules!2135)) (tag!6050 (rule!8032 (h!42593 tokens!494))))))))

(assert (=> d!996253 (rulesInvariant!4426 thiss!18206 rules!2135)))

(assert (=> d!996253 (= (getRuleFromTag!1083 thiss!18206 rules!2135 (tag!6050 (rule!8032 (h!42593 tokens!494)))) lt!1176793)))

(declare-fun b!3461512 () Bool)

(declare-fun e!2144532 () Bool)

(assert (=> b!3461512 (= e!2144532 (= (tag!6050 (get!11898 lt!1176793)) (tag!6050 (rule!8032 (h!42593 tokens!494)))))))

(declare-fun b!3461513 () Bool)

(assert (=> b!3461513 (= e!2144531 e!2144529)))

(declare-fun c!592622 () Bool)

(assert (=> b!3461513 (= c!592622 (and ((_ is Cons!37172) rules!2135) (not (= (tag!6050 (h!42592 rules!2135)) (tag!6050 (rule!8032 (h!42593 tokens!494)))))))))

(declare-fun b!3461514 () Bool)

(assert (=> b!3461514 (= e!2144530 e!2144532)))

(declare-fun res!1396681 () Bool)

(assert (=> b!3461514 (=> (not res!1396681) (not e!2144532))))

(assert (=> b!3461514 (= res!1396681 (contains!6895 rules!2135 (get!11898 lt!1176793)))))

(declare-fun b!3461515 () Bool)

(assert (=> b!3461515 (= e!2144531 (Some!7529 (h!42592 rules!2135)))))

(declare-fun b!3461516 () Bool)

(assert (=> b!3461516 (= e!2144529 None!7529)))

(assert (= (and d!996253 c!592623) b!3461515))

(assert (= (and d!996253 (not c!592623)) b!3461513))

(assert (= (and b!3461513 c!592622) b!3461511))

(assert (= (and b!3461513 (not c!592622)) b!3461516))

(assert (= (and d!996253 (not res!1396680)) b!3461514))

(assert (= (and b!3461514 res!1396681) b!3461512))

(declare-fun m!3864741 () Bool)

(assert (=> b!3461511 m!3864741))

(declare-fun m!3864743 () Bool)

(assert (=> b!3461511 m!3864743))

(declare-fun m!3864745 () Bool)

(assert (=> b!3461511 m!3864745))

(declare-fun m!3864747 () Bool)

(assert (=> d!996253 m!3864747))

(assert (=> d!996253 m!3864017))

(declare-fun m!3864749 () Bool)

(assert (=> b!3461512 m!3864749))

(assert (=> b!3461514 m!3864749))

(assert (=> b!3461514 m!3864749))

(declare-fun m!3864751 () Bool)

(assert (=> b!3461514 m!3864751))

(assert (=> b!3461108 d!996253))

(declare-fun d!996257 () Bool)

(declare-fun e!2144534 () Bool)

(assert (=> d!996257 e!2144534))

(declare-fun res!1396684 () Bool)

(assert (=> d!996257 (=> (not res!1396684) (not e!2144534))))

(declare-fun lt!1176795 () BalanceConc!22126)

(assert (=> d!996257 (= res!1396684 (= (list!13537 lt!1176795) (Cons!37173 separatorToken!241 Nil!37173)))))

(assert (=> d!996257 (= lt!1176795 (singleton!1122 separatorToken!241))))

(assert (=> d!996257 (= (singletonSeq!2536 separatorToken!241) lt!1176795)))

(declare-fun b!3461519 () Bool)

(assert (=> b!3461519 (= e!2144534 (isBalanced!3417 (c!592552 lt!1176795)))))

(assert (= (and d!996257 res!1396684) b!3461519))

(declare-fun m!3864755 () Bool)

(assert (=> d!996257 m!3864755))

(declare-fun m!3864757 () Bool)

(assert (=> d!996257 m!3864757))

(declare-fun m!3864761 () Bool)

(assert (=> b!3461519 m!3864761))

(assert (=> b!3461108 d!996257))

(declare-fun b!3461520 () Bool)

(declare-fun lt!1176796 () Unit!52520)

(declare-fun lt!1176797 () Unit!52520)

(assert (=> b!3461520 (= lt!1176796 lt!1176797)))

(assert (=> b!3461520 (rulesInvariant!4426 thiss!18206 (t!273043 rules!2135))))

(assert (=> b!3461520 (= lt!1176797 (lemmaInvariantOnRulesThenOnTail!434 thiss!18206 (h!42592 rules!2135) (t!273043 rules!2135)))))

(declare-fun e!2144535 () Option!7530)

(assert (=> b!3461520 (= e!2144535 (getRuleFromTag!1083 thiss!18206 (t!273043 rules!2135) (tag!6050 (rule!8032 separatorToken!241))))))

(declare-fun d!996259 () Bool)

(declare-fun e!2144536 () Bool)

(assert (=> d!996259 e!2144536))

(declare-fun res!1396685 () Bool)

(assert (=> d!996259 (=> res!1396685 e!2144536)))

(declare-fun lt!1176798 () Option!7530)

(assert (=> d!996259 (= res!1396685 (isEmpty!21538 lt!1176798))))

(declare-fun e!2144537 () Option!7530)

(assert (=> d!996259 (= lt!1176798 e!2144537)))

(declare-fun c!592625 () Bool)

(assert (=> d!996259 (= c!592625 (and ((_ is Cons!37172) rules!2135) (= (tag!6050 (h!42592 rules!2135)) (tag!6050 (rule!8032 separatorToken!241)))))))

(assert (=> d!996259 (rulesInvariant!4426 thiss!18206 rules!2135)))

(assert (=> d!996259 (= (getRuleFromTag!1083 thiss!18206 rules!2135 (tag!6050 (rule!8032 separatorToken!241))) lt!1176798)))

(declare-fun b!3461521 () Bool)

(declare-fun e!2144538 () Bool)

(assert (=> b!3461521 (= e!2144538 (= (tag!6050 (get!11898 lt!1176798)) (tag!6050 (rule!8032 separatorToken!241))))))

(declare-fun b!3461522 () Bool)

(assert (=> b!3461522 (= e!2144537 e!2144535)))

(declare-fun c!592624 () Bool)

(assert (=> b!3461522 (= c!592624 (and ((_ is Cons!37172) rules!2135) (not (= (tag!6050 (h!42592 rules!2135)) (tag!6050 (rule!8032 separatorToken!241))))))))

(declare-fun b!3461523 () Bool)

(assert (=> b!3461523 (= e!2144536 e!2144538)))

(declare-fun res!1396686 () Bool)

(assert (=> b!3461523 (=> (not res!1396686) (not e!2144538))))

(assert (=> b!3461523 (= res!1396686 (contains!6895 rules!2135 (get!11898 lt!1176798)))))

(declare-fun b!3461524 () Bool)

(assert (=> b!3461524 (= e!2144537 (Some!7529 (h!42592 rules!2135)))))

(declare-fun b!3461525 () Bool)

(assert (=> b!3461525 (= e!2144535 None!7529)))

(assert (= (and d!996259 c!592625) b!3461524))

(assert (= (and d!996259 (not c!592625)) b!3461522))

(assert (= (and b!3461522 c!592624) b!3461520))

(assert (= (and b!3461522 (not c!592624)) b!3461525))

(assert (= (and d!996259 (not res!1396685)) b!3461523))

(assert (= (and b!3461523 res!1396686) b!3461521))

(assert (=> b!3461520 m!3864741))

(assert (=> b!3461520 m!3864743))

(declare-fun m!3864767 () Bool)

(assert (=> b!3461520 m!3864767))

(declare-fun m!3864769 () Bool)

(assert (=> d!996259 m!3864769))

(assert (=> d!996259 m!3864017))

(declare-fun m!3864771 () Bool)

(assert (=> b!3461521 m!3864771))

(assert (=> b!3461523 m!3864771))

(assert (=> b!3461523 m!3864771))

(declare-fun m!3864773 () Bool)

(assert (=> b!3461523 m!3864773))

(assert (=> b!3461108 d!996259))

(declare-fun d!996263 () Bool)

(assert (=> d!996263 (= (head!7321 lt!1176614) (h!42591 lt!1176614))))

(assert (=> b!3461108 d!996263))

(declare-fun d!996269 () Bool)

(declare-fun e!2144542 () Bool)

(assert (=> d!996269 e!2144542))

(declare-fun res!1396690 () Bool)

(assert (=> d!996269 (=> (not res!1396690) (not e!2144542))))

(declare-fun lt!1176801 () BalanceConc!22126)

(assert (=> d!996269 (= res!1396690 (= (list!13537 lt!1176801) (Cons!37173 (h!42593 (t!273044 tokens!494)) Nil!37173)))))

(assert (=> d!996269 (= lt!1176801 (singleton!1122 (h!42593 (t!273044 tokens!494))))))

(assert (=> d!996269 (= (singletonSeq!2536 (h!42593 (t!273044 tokens!494))) lt!1176801)))

(declare-fun b!3461529 () Bool)

(assert (=> b!3461529 (= e!2144542 (isBalanced!3417 (c!592552 lt!1176801)))))

(assert (= (and d!996269 res!1396690) b!3461529))

(declare-fun m!3864783 () Bool)

(assert (=> d!996269 m!3864783))

(declare-fun m!3864785 () Bool)

(assert (=> d!996269 m!3864785))

(declare-fun m!3864787 () Bool)

(assert (=> b!3461529 m!3864787))

(assert (=> b!3461108 d!996269))

(declare-fun d!996271 () Bool)

(declare-fun e!2144543 () Bool)

(assert (=> d!996271 e!2144543))

(declare-fun res!1396691 () Bool)

(assert (=> d!996271 (=> (not res!1396691) (not e!2144543))))

(assert (=> d!996271 (= res!1396691 (isDefined!5798 (getRuleFromTag!1083 thiss!18206 rules!2135 (tag!6050 (rule!8032 separatorToken!241)))))))

(declare-fun lt!1176802 () Unit!52520)

(assert (=> d!996271 (= lt!1176802 (choose!20021 thiss!18206 rules!2135 lt!1176614 separatorToken!241))))

(assert (=> d!996271 (rulesInvariant!4426 thiss!18206 rules!2135)))

(assert (=> d!996271 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1083 thiss!18206 rules!2135 lt!1176614 separatorToken!241) lt!1176802)))

(declare-fun b!3461530 () Bool)

(declare-fun res!1396692 () Bool)

(assert (=> b!3461530 (=> (not res!1396692) (not e!2144543))))

(assert (=> b!3461530 (= res!1396692 (matchR!4783 (regex!5440 (get!11898 (getRuleFromTag!1083 thiss!18206 rules!2135 (tag!6050 (rule!8032 separatorToken!241))))) (list!13535 (charsOf!3454 separatorToken!241))))))

(declare-fun b!3461531 () Bool)

(assert (=> b!3461531 (= e!2144543 (= (rule!8032 separatorToken!241) (get!11898 (getRuleFromTag!1083 thiss!18206 rules!2135 (tag!6050 (rule!8032 separatorToken!241))))))))

(assert (= (and d!996271 res!1396691) b!3461530))

(assert (= (and b!3461530 res!1396692) b!3461531))

(assert (=> d!996271 m!3864063))

(assert (=> d!996271 m!3864063))

(declare-fun m!3864801 () Bool)

(assert (=> d!996271 m!3864801))

(declare-fun m!3864803 () Bool)

(assert (=> d!996271 m!3864803))

(assert (=> d!996271 m!3864017))

(assert (=> b!3461530 m!3864149))

(declare-fun m!3864805 () Bool)

(assert (=> b!3461530 m!3864805))

(assert (=> b!3461530 m!3864141))

(assert (=> b!3461530 m!3864063))

(assert (=> b!3461530 m!3864141))

(assert (=> b!3461530 m!3864149))

(assert (=> b!3461530 m!3864063))

(declare-fun m!3864807 () Bool)

(assert (=> b!3461530 m!3864807))

(assert (=> b!3461531 m!3864063))

(assert (=> b!3461531 m!3864063))

(assert (=> b!3461531 m!3864807))

(assert (=> b!3461108 d!996271))

(declare-fun d!996277 () Bool)

(assert (=> d!996277 (= (isDefined!5798 lt!1176601) (not (isEmpty!21538 lt!1176601)))))

(declare-fun bs!560483 () Bool)

(assert (= bs!560483 d!996277))

(declare-fun m!3864809 () Bool)

(assert (=> bs!560483 m!3864809))

(assert (=> b!3461108 d!996277))

(declare-fun d!996279 () Bool)

(assert (=> d!996279 (= (isDefined!5798 lt!1176621) (not (isEmpty!21538 lt!1176621)))))

(declare-fun bs!560484 () Bool)

(assert (= bs!560484 d!996279))

(declare-fun m!3864811 () Bool)

(assert (=> bs!560484 m!3864811))

(assert (=> b!3461108 d!996279))

(declare-fun d!996281 () Bool)

(declare-fun lt!1176804 () BalanceConc!22124)

(assert (=> d!996281 (= (list!13535 lt!1176804) (printList!1577 thiss!18206 (list!13537 lt!1176610)))))

(assert (=> d!996281 (= lt!1176804 (printTailRec!1524 thiss!18206 lt!1176610 0 (BalanceConc!22125 Empty!11255)))))

(assert (=> d!996281 (= (print!2094 thiss!18206 lt!1176610) lt!1176804)))

(declare-fun bs!560485 () Bool)

(assert (= bs!560485 d!996281))

(declare-fun m!3864813 () Bool)

(assert (=> bs!560485 m!3864813))

(declare-fun m!3864815 () Bool)

(assert (=> bs!560485 m!3864815))

(assert (=> bs!560485 m!3864815))

(declare-fun m!3864817 () Bool)

(assert (=> bs!560485 m!3864817))

(assert (=> bs!560485 m!3864027))

(assert (=> b!3461108 d!996281))

(declare-fun d!996283 () Bool)

(declare-fun lt!1176807 () Int)

(declare-fun size!28206 (List!37297) Int)

(assert (=> d!996283 (= lt!1176807 (size!28206 (list!13537 (_1!21582 lt!1176602))))))

(declare-fun size!28207 (Conc!11256) Int)

(assert (=> d!996283 (= lt!1176807 (size!28207 (c!592552 (_1!21582 lt!1176602))))))

(assert (=> d!996283 (= (size!28200 (_1!21582 lt!1176602)) lt!1176807)))

(declare-fun bs!560486 () Bool)

(assert (= bs!560486 d!996283))

(assert (=> bs!560486 m!3864317))

(assert (=> bs!560486 m!3864317))

(declare-fun m!3864819 () Bool)

(assert (=> bs!560486 m!3864819))

(declare-fun m!3864821 () Bool)

(assert (=> bs!560486 m!3864821))

(assert (=> b!3461108 d!996283))

(declare-fun b!3461533 () Bool)

(declare-fun e!2144545 () Bool)

(declare-fun e!2144544 () Bool)

(assert (=> b!3461533 (= e!2144545 e!2144544)))

(declare-fun res!1396694 () Bool)

(declare-fun lt!1176808 () tuple2!36896)

(assert (=> b!3461533 (= res!1396694 (< (size!28205 (_2!21582 lt!1176808)) (size!28205 lt!1176595)))))

(assert (=> b!3461533 (=> (not res!1396694) (not e!2144544))))

(declare-fun b!3461534 () Bool)

(declare-fun e!2144546 () Bool)

(assert (=> b!3461534 (= e!2144546 (= (list!13535 (_2!21582 lt!1176808)) (_2!21586 (lexList!1450 thiss!18206 rules!2135 (list!13535 lt!1176595)))))))

(declare-fun b!3461535 () Bool)

(assert (=> b!3461535 (= e!2144544 (not (isEmpty!21526 (_1!21582 lt!1176808))))))

(declare-fun b!3461536 () Bool)

(assert (=> b!3461536 (= e!2144545 (= (_2!21582 lt!1176808) lt!1176595))))

(declare-fun d!996285 () Bool)

(assert (=> d!996285 e!2144546))

(declare-fun res!1396693 () Bool)

(assert (=> d!996285 (=> (not res!1396693) (not e!2144546))))

(assert (=> d!996285 (= res!1396693 e!2144545)))

(declare-fun c!592626 () Bool)

(assert (=> d!996285 (= c!592626 (> (size!28200 (_1!21582 lt!1176808)) 0))))

(assert (=> d!996285 (= lt!1176808 (lexTailRecV2!1058 thiss!18206 rules!2135 lt!1176595 (BalanceConc!22125 Empty!11255) lt!1176595 (BalanceConc!22127 Empty!11256)))))

(assert (=> d!996285 (= (lex!2355 thiss!18206 rules!2135 lt!1176595) lt!1176808)))

(declare-fun b!3461532 () Bool)

(declare-fun res!1396695 () Bool)

(assert (=> b!3461532 (=> (not res!1396695) (not e!2144546))))

(assert (=> b!3461532 (= res!1396695 (= (list!13537 (_1!21582 lt!1176808)) (_1!21586 (lexList!1450 thiss!18206 rules!2135 (list!13535 lt!1176595)))))))

(assert (= (and d!996285 c!592626) b!3461533))

(assert (= (and d!996285 (not c!592626)) b!3461536))

(assert (= (and b!3461533 res!1396694) b!3461535))

(assert (= (and d!996285 res!1396693) b!3461532))

(assert (= (and b!3461532 res!1396695) b!3461534))

(declare-fun m!3864823 () Bool)

(assert (=> b!3461534 m!3864823))

(declare-fun m!3864825 () Bool)

(assert (=> b!3461534 m!3864825))

(assert (=> b!3461534 m!3864825))

(declare-fun m!3864827 () Bool)

(assert (=> b!3461534 m!3864827))

(declare-fun m!3864829 () Bool)

(assert (=> b!3461532 m!3864829))

(assert (=> b!3461532 m!3864825))

(assert (=> b!3461532 m!3864825))

(assert (=> b!3461532 m!3864827))

(declare-fun m!3864831 () Bool)

(assert (=> b!3461533 m!3864831))

(declare-fun m!3864833 () Bool)

(assert (=> b!3461533 m!3864833))

(declare-fun m!3864835 () Bool)

(assert (=> d!996285 m!3864835))

(declare-fun m!3864837 () Bool)

(assert (=> d!996285 m!3864837))

(declare-fun m!3864839 () Bool)

(assert (=> b!3461535 m!3864839))

(assert (=> b!3461108 d!996285))

(declare-fun d!996287 () Bool)

(assert (=> d!996287 (dynLambda!15668 lambda!121861 (h!42593 (t!273044 tokens!494)))))

(declare-fun lt!1176809 () Unit!52520)

(assert (=> d!996287 (= lt!1176809 (choose!20016 tokens!494 lambda!121861 (h!42593 (t!273044 tokens!494))))))

(declare-fun e!2144547 () Bool)

(assert (=> d!996287 e!2144547))

(declare-fun res!1396696 () Bool)

(assert (=> d!996287 (=> (not res!1396696) (not e!2144547))))

(assert (=> d!996287 (= res!1396696 (forall!7925 tokens!494 lambda!121861))))

(assert (=> d!996287 (= (forallContained!1387 tokens!494 lambda!121861 (h!42593 (t!273044 tokens!494))) lt!1176809)))

(declare-fun b!3461537 () Bool)

(assert (=> b!3461537 (= e!2144547 (contains!6897 tokens!494 (h!42593 (t!273044 tokens!494))))))

(assert (= (and d!996287 res!1396696) b!3461537))

(declare-fun b_lambda!99697 () Bool)

(assert (=> (not b_lambda!99697) (not d!996287)))

(declare-fun m!3864841 () Bool)

(assert (=> d!996287 m!3864841))

(declare-fun m!3864843 () Bool)

(assert (=> d!996287 m!3864843))

(declare-fun m!3864845 () Bool)

(assert (=> d!996287 m!3864845))

(assert (=> b!3461537 m!3864309))

(assert (=> b!3461108 d!996287))

(declare-fun d!996289 () Bool)

(declare-fun e!2144569 () Bool)

(assert (=> d!996289 e!2144569))

(declare-fun res!1396736 () Bool)

(assert (=> d!996289 (=> res!1396736 e!2144569)))

(declare-fun lt!1176835 () Option!7529)

(assert (=> d!996289 (= res!1396736 (isEmpty!21530 lt!1176835))))

(declare-fun e!2144568 () Option!7529)

(assert (=> d!996289 (= lt!1176835 e!2144568)))

(declare-fun c!592632 () Bool)

(declare-datatypes ((tuple2!36906 0))(
  ( (tuple2!36907 (_1!21587 List!37295) (_2!21587 List!37295)) )
))
(declare-fun lt!1176836 () tuple2!36906)

(assert (=> d!996289 (= c!592632 (isEmpty!21528 (_1!21587 lt!1176836)))))

(declare-fun findLongestMatch!826 (Regex!10199 List!37295) tuple2!36906)

(assert (=> d!996289 (= lt!1176836 (findLongestMatch!826 (regex!5440 (rule!8032 (h!42593 tokens!494))) lt!1176597))))

(declare-fun ruleValid!1740 (LexerInterface!5029 Rule!10680) Bool)

(assert (=> d!996289 (ruleValid!1740 thiss!18206 (rule!8032 (h!42593 tokens!494)))))

(assert (=> d!996289 (= (maxPrefixOneRule!1736 thiss!18206 (rule!8032 (h!42593 tokens!494)) lt!1176597) lt!1176835)))

(declare-fun b!3461583 () Bool)

(declare-fun res!1396733 () Bool)

(declare-fun e!2144570 () Bool)

(assert (=> b!3461583 (=> (not res!1396733) (not e!2144570))))

(assert (=> b!3461583 (= res!1396733 (< (size!28201 (_2!21583 (get!11899 lt!1176835))) (size!28201 lt!1176597)))))

(declare-fun b!3461584 () Bool)

(declare-fun res!1396738 () Bool)

(assert (=> b!3461584 (=> (not res!1396738) (not e!2144570))))

(assert (=> b!3461584 (= res!1396738 (= (rule!8032 (_1!21583 (get!11899 lt!1176835))) (rule!8032 (h!42593 tokens!494))))))

(declare-fun b!3461585 () Bool)

(assert (=> b!3461585 (= e!2144569 e!2144570)))

(declare-fun res!1396737 () Bool)

(assert (=> b!3461585 (=> (not res!1396737) (not e!2144570))))

(assert (=> b!3461585 (= res!1396737 (matchR!4783 (regex!5440 (rule!8032 (h!42593 tokens!494))) (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1176835))))))))

(declare-fun b!3461586 () Bool)

(declare-fun res!1396734 () Bool)

(assert (=> b!3461586 (=> (not res!1396734) (not e!2144570))))

(assert (=> b!3461586 (= res!1396734 (= (++!9165 (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1176835)))) (_2!21583 (get!11899 lt!1176835))) lt!1176597))))

(declare-fun b!3461587 () Bool)

(assert (=> b!3461587 (= e!2144568 (Some!7528 (tuple2!36899 (Token!10247 (apply!8757 (transformation!5440 (rule!8032 (h!42593 tokens!494))) (seqFromList!3933 (_1!21587 lt!1176836))) (rule!8032 (h!42593 tokens!494)) (size!28205 (seqFromList!3933 (_1!21587 lt!1176836))) (_1!21587 lt!1176836)) (_2!21587 lt!1176836))))))

(declare-fun lt!1176838 () Unit!52520)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!884 (Regex!10199 List!37295) Unit!52520)

(assert (=> b!3461587 (= lt!1176838 (longestMatchIsAcceptedByMatchOrIsEmpty!884 (regex!5440 (rule!8032 (h!42593 tokens!494))) lt!1176597))))

(declare-fun res!1396732 () Bool)

(declare-fun findLongestMatchInner!911 (Regex!10199 List!37295 Int List!37295 List!37295 Int) tuple2!36906)

(assert (=> b!3461587 (= res!1396732 (isEmpty!21528 (_1!21587 (findLongestMatchInner!911 (regex!5440 (rule!8032 (h!42593 tokens!494))) Nil!37171 (size!28201 Nil!37171) lt!1176597 lt!1176597 (size!28201 lt!1176597)))))))

(declare-fun e!2144571 () Bool)

(assert (=> b!3461587 (=> res!1396732 e!2144571)))

(assert (=> b!3461587 e!2144571))

(declare-fun lt!1176837 () Unit!52520)

(assert (=> b!3461587 (= lt!1176837 lt!1176838)))

(declare-fun lt!1176839 () Unit!52520)

(declare-fun lemmaSemiInverse!1261 (TokenValueInjection!10768 BalanceConc!22124) Unit!52520)

(assert (=> b!3461587 (= lt!1176839 (lemmaSemiInverse!1261 (transformation!5440 (rule!8032 (h!42593 tokens!494))) (seqFromList!3933 (_1!21587 lt!1176836))))))

(declare-fun b!3461588 () Bool)

(assert (=> b!3461588 (= e!2144568 None!7528)))

(declare-fun b!3461589 () Bool)

(declare-fun res!1396735 () Bool)

(assert (=> b!3461589 (=> (not res!1396735) (not e!2144570))))

(assert (=> b!3461589 (= res!1396735 (= (value!175500 (_1!21583 (get!11899 lt!1176835))) (apply!8757 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1176835)))) (seqFromList!3933 (originalCharacters!6154 (_1!21583 (get!11899 lt!1176835)))))))))

(declare-fun b!3461590 () Bool)

(assert (=> b!3461590 (= e!2144570 (= (size!28199 (_1!21583 (get!11899 lt!1176835))) (size!28201 (originalCharacters!6154 (_1!21583 (get!11899 lt!1176835))))))))

(declare-fun b!3461591 () Bool)

(assert (=> b!3461591 (= e!2144571 (matchR!4783 (regex!5440 (rule!8032 (h!42593 tokens!494))) (_1!21587 (findLongestMatchInner!911 (regex!5440 (rule!8032 (h!42593 tokens!494))) Nil!37171 (size!28201 Nil!37171) lt!1176597 lt!1176597 (size!28201 lt!1176597)))))))

(assert (= (and d!996289 c!592632) b!3461588))

(assert (= (and d!996289 (not c!592632)) b!3461587))

(assert (= (and b!3461587 (not res!1396732)) b!3461591))

(assert (= (and d!996289 (not res!1396736)) b!3461585))

(assert (= (and b!3461585 res!1396737) b!3461586))

(assert (= (and b!3461586 res!1396734) b!3461583))

(assert (= (and b!3461583 res!1396733) b!3461584))

(assert (= (and b!3461584 res!1396738) b!3461589))

(assert (= (and b!3461589 res!1396735) b!3461590))

(declare-fun m!3864891 () Bool)

(assert (=> b!3461583 m!3864891))

(declare-fun m!3864893 () Bool)

(assert (=> b!3461583 m!3864893))

(assert (=> b!3461583 m!3864069))

(assert (=> b!3461585 m!3864891))

(declare-fun m!3864895 () Bool)

(assert (=> b!3461585 m!3864895))

(assert (=> b!3461585 m!3864895))

(declare-fun m!3864897 () Bool)

(assert (=> b!3461585 m!3864897))

(assert (=> b!3461585 m!3864897))

(declare-fun m!3864899 () Bool)

(assert (=> b!3461585 m!3864899))

(declare-fun m!3864901 () Bool)

(assert (=> d!996289 m!3864901))

(declare-fun m!3864903 () Bool)

(assert (=> d!996289 m!3864903))

(declare-fun m!3864905 () Bool)

(assert (=> d!996289 m!3864905))

(declare-fun m!3864907 () Bool)

(assert (=> d!996289 m!3864907))

(assert (=> b!3461586 m!3864891))

(assert (=> b!3461586 m!3864895))

(assert (=> b!3461586 m!3864895))

(assert (=> b!3461586 m!3864897))

(assert (=> b!3461586 m!3864897))

(declare-fun m!3864909 () Bool)

(assert (=> b!3461586 m!3864909))

(declare-fun m!3864911 () Bool)

(assert (=> b!3461587 m!3864911))

(declare-fun m!3864913 () Bool)

(assert (=> b!3461587 m!3864913))

(assert (=> b!3461587 m!3864069))

(declare-fun m!3864915 () Bool)

(assert (=> b!3461587 m!3864915))

(declare-fun m!3864917 () Bool)

(assert (=> b!3461587 m!3864917))

(declare-fun m!3864919 () Bool)

(assert (=> b!3461587 m!3864919))

(declare-fun m!3864921 () Bool)

(assert (=> b!3461587 m!3864921))

(assert (=> b!3461587 m!3864913))

(assert (=> b!3461587 m!3864069))

(assert (=> b!3461587 m!3864919))

(declare-fun m!3864923 () Bool)

(assert (=> b!3461587 m!3864923))

(assert (=> b!3461587 m!3864919))

(assert (=> b!3461587 m!3864919))

(declare-fun m!3864925 () Bool)

(assert (=> b!3461587 m!3864925))

(assert (=> b!3461590 m!3864891))

(declare-fun m!3864927 () Bool)

(assert (=> b!3461590 m!3864927))

(assert (=> b!3461584 m!3864891))

(assert (=> b!3461589 m!3864891))

(declare-fun m!3864929 () Bool)

(assert (=> b!3461589 m!3864929))

(assert (=> b!3461589 m!3864929))

(declare-fun m!3864931 () Bool)

(assert (=> b!3461589 m!3864931))

(assert (=> b!3461591 m!3864913))

(assert (=> b!3461591 m!3864069))

(assert (=> b!3461591 m!3864913))

(assert (=> b!3461591 m!3864069))

(assert (=> b!3461591 m!3864915))

(declare-fun m!3864933 () Bool)

(assert (=> b!3461591 m!3864933))

(assert (=> b!3461108 d!996289))

(declare-fun b!3461609 () Bool)

(declare-fun e!2144581 () Bool)

(declare-fun e!2144580 () Bool)

(assert (=> b!3461609 (= e!2144581 e!2144580)))

(declare-fun res!1396740 () Bool)

(declare-fun lt!1176840 () tuple2!36896)

(assert (=> b!3461609 (= res!1396740 (< (size!28205 (_2!21582 lt!1176840)) (size!28205 lt!1176617)))))

(assert (=> b!3461609 (=> (not res!1396740) (not e!2144580))))

(declare-fun e!2144582 () Bool)

(declare-fun b!3461610 () Bool)

(assert (=> b!3461610 (= e!2144582 (= (list!13535 (_2!21582 lt!1176840)) (_2!21586 (lexList!1450 thiss!18206 rules!2135 (list!13535 lt!1176617)))))))

(declare-fun b!3461611 () Bool)

(assert (=> b!3461611 (= e!2144580 (not (isEmpty!21526 (_1!21582 lt!1176840))))))

(declare-fun b!3461612 () Bool)

(assert (=> b!3461612 (= e!2144581 (= (_2!21582 lt!1176840) lt!1176617))))

(declare-fun d!996293 () Bool)

(assert (=> d!996293 e!2144582))

(declare-fun res!1396739 () Bool)

(assert (=> d!996293 (=> (not res!1396739) (not e!2144582))))

(assert (=> d!996293 (= res!1396739 e!2144581)))

(declare-fun c!592641 () Bool)

(assert (=> d!996293 (= c!592641 (> (size!28200 (_1!21582 lt!1176840)) 0))))

(assert (=> d!996293 (= lt!1176840 (lexTailRecV2!1058 thiss!18206 rules!2135 lt!1176617 (BalanceConc!22125 Empty!11255) lt!1176617 (BalanceConc!22127 Empty!11256)))))

(assert (=> d!996293 (= (lex!2355 thiss!18206 rules!2135 lt!1176617) lt!1176840)))

(declare-fun b!3461608 () Bool)

(declare-fun res!1396741 () Bool)

(assert (=> b!3461608 (=> (not res!1396741) (not e!2144582))))

(assert (=> b!3461608 (= res!1396741 (= (list!13537 (_1!21582 lt!1176840)) (_1!21586 (lexList!1450 thiss!18206 rules!2135 (list!13535 lt!1176617)))))))

(assert (= (and d!996293 c!592641) b!3461609))

(assert (= (and d!996293 (not c!592641)) b!3461612))

(assert (= (and b!3461609 res!1396740) b!3461611))

(assert (= (and d!996293 res!1396739) b!3461608))

(assert (= (and b!3461608 res!1396741) b!3461610))

(declare-fun m!3864935 () Bool)

(assert (=> b!3461610 m!3864935))

(declare-fun m!3864937 () Bool)

(assert (=> b!3461610 m!3864937))

(assert (=> b!3461610 m!3864937))

(declare-fun m!3864939 () Bool)

(assert (=> b!3461610 m!3864939))

(declare-fun m!3864941 () Bool)

(assert (=> b!3461608 m!3864941))

(assert (=> b!3461608 m!3864937))

(assert (=> b!3461608 m!3864937))

(assert (=> b!3461608 m!3864939))

(declare-fun m!3864943 () Bool)

(assert (=> b!3461609 m!3864943))

(declare-fun m!3864945 () Bool)

(assert (=> b!3461609 m!3864945))

(declare-fun m!3864947 () Bool)

(assert (=> d!996293 m!3864947))

(declare-fun m!3864949 () Bool)

(assert (=> d!996293 m!3864949))

(declare-fun m!3864951 () Bool)

(assert (=> b!3461611 m!3864951))

(assert (=> b!3461108 d!996293))

(declare-fun call!249635 () List!37295)

(declare-fun call!249634 () List!37295)

(declare-fun bm!249629 () Bool)

(declare-fun call!249636 () List!37295)

(declare-fun c!592655 () Bool)

(assert (=> bm!249629 (= call!249636 (++!9165 (ite c!592655 call!249635 call!249634) (ite c!592655 call!249634 call!249635)))))

(declare-fun b!3461637 () Bool)

(declare-fun e!2144595 () List!37295)

(assert (=> b!3461637 (= e!2144595 (Cons!37171 (c!592550 (regex!5440 (rule!8032 (h!42593 tokens!494)))) Nil!37171))))

(declare-fun b!3461638 () Bool)

(declare-fun e!2144598 () List!37295)

(assert (=> b!3461638 (= e!2144598 call!249636)))

(declare-fun bm!249630 () Bool)

(assert (=> bm!249630 (= call!249635 (usedCharacters!674 (ite c!592655 (regOne!20911 (regex!5440 (rule!8032 (h!42593 tokens!494)))) (regTwo!20910 (regex!5440 (rule!8032 (h!42593 tokens!494)))))))))

(declare-fun call!249637 () List!37295)

(declare-fun bm!249631 () Bool)

(declare-fun c!592656 () Bool)

(assert (=> bm!249631 (= call!249637 (usedCharacters!674 (ite c!592656 (reg!10528 (regex!5440 (rule!8032 (h!42593 tokens!494)))) (ite c!592655 (regTwo!20911 (regex!5440 (rule!8032 (h!42593 tokens!494)))) (regOne!20910 (regex!5440 (rule!8032 (h!42593 tokens!494))))))))))

(declare-fun bm!249632 () Bool)

(assert (=> bm!249632 (= call!249634 call!249637)))

(declare-fun b!3461640 () Bool)

(declare-fun e!2144596 () List!37295)

(assert (=> b!3461640 (= e!2144596 e!2144595)))

(declare-fun c!592654 () Bool)

(assert (=> b!3461640 (= c!592654 ((_ is ElementMatch!10199) (regex!5440 (rule!8032 (h!42593 tokens!494)))))))

(declare-fun b!3461641 () Bool)

(assert (=> b!3461641 (= e!2144596 Nil!37171)))

(declare-fun b!3461642 () Bool)

(declare-fun e!2144597 () List!37295)

(assert (=> b!3461642 (= e!2144597 e!2144598)))

(assert (=> b!3461642 (= c!592655 ((_ is Union!10199) (regex!5440 (rule!8032 (h!42593 tokens!494)))))))

(declare-fun b!3461643 () Bool)

(assert (=> b!3461643 (= e!2144598 call!249636)))

(declare-fun b!3461644 () Bool)

(assert (=> b!3461644 (= e!2144597 call!249637)))

(declare-fun b!3461639 () Bool)

(assert (=> b!3461639 (= c!592656 ((_ is Star!10199) (regex!5440 (rule!8032 (h!42593 tokens!494)))))))

(assert (=> b!3461639 (= e!2144595 e!2144597)))

(declare-fun d!996295 () Bool)

(declare-fun c!592657 () Bool)

(assert (=> d!996295 (= c!592657 (or ((_ is EmptyExpr!10199) (regex!5440 (rule!8032 (h!42593 tokens!494)))) ((_ is EmptyLang!10199) (regex!5440 (rule!8032 (h!42593 tokens!494))))))))

(assert (=> d!996295 (= (usedCharacters!674 (regex!5440 (rule!8032 (h!42593 tokens!494)))) e!2144596)))

(assert (= (and d!996295 c!592657) b!3461641))

(assert (= (and d!996295 (not c!592657)) b!3461640))

(assert (= (and b!3461640 c!592654) b!3461637))

(assert (= (and b!3461640 (not c!592654)) b!3461639))

(assert (= (and b!3461639 c!592656) b!3461644))

(assert (= (and b!3461639 (not c!592656)) b!3461642))

(assert (= (and b!3461642 c!592655) b!3461638))

(assert (= (and b!3461642 (not c!592655)) b!3461643))

(assert (= (or b!3461638 b!3461643) bm!249632))

(assert (= (or b!3461638 b!3461643) bm!249630))

(assert (= (or b!3461638 b!3461643) bm!249629))

(assert (= (or b!3461644 bm!249632) bm!249631))

(declare-fun m!3864959 () Bool)

(assert (=> bm!249629 m!3864959))

(declare-fun m!3864961 () Bool)

(assert (=> bm!249630 m!3864961))

(declare-fun m!3864963 () Bool)

(assert (=> bm!249631 m!3864963))

(assert (=> b!3461108 d!996295))

(declare-fun d!996299 () Bool)

(assert (=> d!996299 (rulesProduceIndividualToken!2521 thiss!18206 rules!2135 (h!42593 tokens!494))))

(declare-fun lt!1176852 () Unit!52520)

(declare-fun choose!20025 (LexerInterface!5029 List!37296 List!37297 Token!10246) Unit!52520)

(assert (=> d!996299 (= lt!1176852 (choose!20025 thiss!18206 rules!2135 tokens!494 (h!42593 tokens!494)))))

(assert (=> d!996299 (not (isEmpty!21527 rules!2135))))

(assert (=> d!996299 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1018 thiss!18206 rules!2135 tokens!494 (h!42593 tokens!494)) lt!1176852)))

(declare-fun bs!560489 () Bool)

(assert (= bs!560489 d!996299))

(assert (=> bs!560489 m!3864103))

(declare-fun m!3864979 () Bool)

(assert (=> bs!560489 m!3864979))

(assert (=> bs!560489 m!3864013))

(assert (=> b!3461108 d!996299))

(declare-fun d!996309 () Bool)

(declare-fun lt!1176855 () Int)

(assert (=> d!996309 (>= lt!1176855 0)))

(declare-fun e!2144608 () Int)

(assert (=> d!996309 (= lt!1176855 e!2144608)))

(declare-fun c!592665 () Bool)

(assert (=> d!996309 (= c!592665 ((_ is Nil!37171) lt!1176597))))

(assert (=> d!996309 (= (size!28201 lt!1176597) lt!1176855)))

(declare-fun b!3461661 () Bool)

(assert (=> b!3461661 (= e!2144608 0)))

(declare-fun b!3461662 () Bool)

(assert (=> b!3461662 (= e!2144608 (+ 1 (size!28201 (t!273042 lt!1176597))))))

(assert (= (and d!996309 c!592665) b!3461661))

(assert (= (and d!996309 (not c!592665)) b!3461662))

(declare-fun m!3864981 () Bool)

(assert (=> b!3461662 m!3864981))

(assert (=> b!3461108 d!996309))

(declare-fun d!996311 () Bool)

(declare-fun lt!1176856 () Bool)

(assert (=> d!996311 (= lt!1176856 (select (content!5190 (usedCharacters!674 (regex!5440 (rule!8032 (h!42593 tokens!494))))) lt!1176623))))

(declare-fun e!2144610 () Bool)

(assert (=> d!996311 (= lt!1176856 e!2144610)))

(declare-fun res!1396744 () Bool)

(assert (=> d!996311 (=> (not res!1396744) (not e!2144610))))

(assert (=> d!996311 (= res!1396744 ((_ is Cons!37171) (usedCharacters!674 (regex!5440 (rule!8032 (h!42593 tokens!494))))))))

(assert (=> d!996311 (= (contains!6896 (usedCharacters!674 (regex!5440 (rule!8032 (h!42593 tokens!494)))) lt!1176623) lt!1176856)))

(declare-fun b!3461663 () Bool)

(declare-fun e!2144609 () Bool)

(assert (=> b!3461663 (= e!2144610 e!2144609)))

(declare-fun res!1396745 () Bool)

(assert (=> b!3461663 (=> res!1396745 e!2144609)))

(assert (=> b!3461663 (= res!1396745 (= (h!42591 (usedCharacters!674 (regex!5440 (rule!8032 (h!42593 tokens!494))))) lt!1176623))))

(declare-fun b!3461664 () Bool)

(assert (=> b!3461664 (= e!2144609 (contains!6896 (t!273042 (usedCharacters!674 (regex!5440 (rule!8032 (h!42593 tokens!494))))) lt!1176623))))

(assert (= (and d!996311 res!1396744) b!3461663))

(assert (= (and b!3461663 (not res!1396745)) b!3461664))

(assert (=> d!996311 m!3864055))

(declare-fun m!3864983 () Bool)

(assert (=> d!996311 m!3864983))

(declare-fun m!3864985 () Bool)

(assert (=> d!996311 m!3864985))

(declare-fun m!3864987 () Bool)

(assert (=> b!3461664 m!3864987))

(assert (=> b!3461108 d!996311))

(declare-fun d!996313 () Bool)

(declare-fun lt!1176862 () BalanceConc!22124)

(assert (=> d!996313 (= (list!13535 lt!1176862) (printListTailRec!689 thiss!18206 (dropList!1206 lt!1176610 0) (list!13535 (BalanceConc!22125 Empty!11255))))))

(declare-fun e!2144611 () BalanceConc!22124)

(assert (=> d!996313 (= lt!1176862 e!2144611)))

(declare-fun c!592666 () Bool)

(assert (=> d!996313 (= c!592666 (>= 0 (size!28200 lt!1176610)))))

(declare-fun e!2144612 () Bool)

(assert (=> d!996313 e!2144612))

(declare-fun res!1396746 () Bool)

(assert (=> d!996313 (=> (not res!1396746) (not e!2144612))))

(assert (=> d!996313 (= res!1396746 (>= 0 0))))

(assert (=> d!996313 (= (printTailRec!1524 thiss!18206 lt!1176610 0 (BalanceConc!22125 Empty!11255)) lt!1176862)))

(declare-fun b!3461665 () Bool)

(assert (=> b!3461665 (= e!2144612 (<= 0 (size!28200 lt!1176610)))))

(declare-fun b!3461666 () Bool)

(assert (=> b!3461666 (= e!2144611 (BalanceConc!22125 Empty!11255))))

(declare-fun b!3461667 () Bool)

(assert (=> b!3461667 (= e!2144611 (printTailRec!1524 thiss!18206 lt!1176610 (+ 0 1) (++!9166 (BalanceConc!22125 Empty!11255) (charsOf!3454 (apply!8756 lt!1176610 0)))))))

(declare-fun lt!1176863 () List!37297)

(assert (=> b!3461667 (= lt!1176863 (list!13537 lt!1176610))))

(declare-fun lt!1176858 () Unit!52520)

(assert (=> b!3461667 (= lt!1176858 (lemmaDropApply!1164 lt!1176863 0))))

(assert (=> b!3461667 (= (head!7322 (drop!2012 lt!1176863 0)) (apply!8758 lt!1176863 0))))

(declare-fun lt!1176857 () Unit!52520)

(assert (=> b!3461667 (= lt!1176857 lt!1176858)))

(declare-fun lt!1176859 () List!37297)

(assert (=> b!3461667 (= lt!1176859 (list!13537 lt!1176610))))

(declare-fun lt!1176860 () Unit!52520)

(assert (=> b!3461667 (= lt!1176860 (lemmaDropTail!1048 lt!1176859 0))))

(assert (=> b!3461667 (= (tail!5435 (drop!2012 lt!1176859 0)) (drop!2012 lt!1176859 (+ 0 1)))))

(declare-fun lt!1176861 () Unit!52520)

(assert (=> b!3461667 (= lt!1176861 lt!1176860)))

(assert (= (and d!996313 res!1396746) b!3461665))

(assert (= (and d!996313 c!592666) b!3461666))

(assert (= (and d!996313 (not c!592666)) b!3461667))

(declare-fun m!3864989 () Bool)

(assert (=> d!996313 m!3864989))

(declare-fun m!3864991 () Bool)

(assert (=> d!996313 m!3864991))

(declare-fun m!3864993 () Bool)

(assert (=> d!996313 m!3864993))

(assert (=> d!996313 m!3864547))

(assert (=> d!996313 m!3864991))

(assert (=> d!996313 m!3864547))

(declare-fun m!3864995 () Bool)

(assert (=> d!996313 m!3864995))

(assert (=> b!3461665 m!3864993))

(declare-fun m!3864997 () Bool)

(assert (=> b!3461667 m!3864997))

(assert (=> b!3461667 m!3864815))

(declare-fun m!3864999 () Bool)

(assert (=> b!3461667 m!3864999))

(declare-fun m!3865001 () Bool)

(assert (=> b!3461667 m!3865001))

(declare-fun m!3865003 () Bool)

(assert (=> b!3461667 m!3865003))

(declare-fun m!3865005 () Bool)

(assert (=> b!3461667 m!3865005))

(declare-fun m!3865007 () Bool)

(assert (=> b!3461667 m!3865007))

(declare-fun m!3865009 () Bool)

(assert (=> b!3461667 m!3865009))

(declare-fun m!3865011 () Bool)

(assert (=> b!3461667 m!3865011))

(assert (=> b!3461667 m!3864999))

(declare-fun m!3865013 () Bool)

(assert (=> b!3461667 m!3865013))

(assert (=> b!3461667 m!3865005))

(declare-fun m!3865015 () Bool)

(assert (=> b!3461667 m!3865015))

(assert (=> b!3461667 m!3865007))

(declare-fun m!3865017 () Bool)

(assert (=> b!3461667 m!3865017))

(assert (=> b!3461667 m!3865001))

(assert (=> b!3461667 m!3865003))

(declare-fun m!3865019 () Bool)

(assert (=> b!3461667 m!3865019))

(assert (=> b!3461108 d!996313))

(declare-fun d!996315 () Bool)

(assert (=> d!996315 (not (contains!6896 (usedCharacters!674 (regex!5440 (rule!8032 (h!42593 tokens!494)))) lt!1176623))))

(declare-fun lt!1176866 () Unit!52520)

(declare-fun choose!20027 (LexerInterface!5029 List!37296 List!37296 Rule!10680 Rule!10680 C!20584) Unit!52520)

(assert (=> d!996315 (= lt!1176866 (choose!20027 thiss!18206 rules!2135 rules!2135 (rule!8032 (h!42593 tokens!494)) (rule!8032 separatorToken!241) lt!1176623))))

(assert (=> d!996315 (rulesInvariant!4426 thiss!18206 rules!2135)))

(assert (=> d!996315 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!240 thiss!18206 rules!2135 rules!2135 (rule!8032 (h!42593 tokens!494)) (rule!8032 separatorToken!241) lt!1176623) lt!1176866)))

(declare-fun bs!560490 () Bool)

(assert (= bs!560490 d!996315))

(assert (=> bs!560490 m!3864055))

(assert (=> bs!560490 m!3864055))

(assert (=> bs!560490 m!3864057))

(declare-fun m!3865021 () Bool)

(assert (=> bs!560490 m!3865021))

(assert (=> bs!560490 m!3864017))

(assert (=> b!3461108 d!996315))

(declare-fun d!996317 () Bool)

(declare-fun lt!1176872 () BalanceConc!22124)

(assert (=> d!996317 (= (list!13535 lt!1176872) (printListTailRec!689 thiss!18206 (dropList!1206 lt!1176620 0) (list!13535 (BalanceConc!22125 Empty!11255))))))

(declare-fun e!2144613 () BalanceConc!22124)

(assert (=> d!996317 (= lt!1176872 e!2144613)))

(declare-fun c!592668 () Bool)

(assert (=> d!996317 (= c!592668 (>= 0 (size!28200 lt!1176620)))))

(declare-fun e!2144614 () Bool)

(assert (=> d!996317 e!2144614))

(declare-fun res!1396747 () Bool)

(assert (=> d!996317 (=> (not res!1396747) (not e!2144614))))

(assert (=> d!996317 (= res!1396747 (>= 0 0))))

(assert (=> d!996317 (= (printTailRec!1524 thiss!18206 lt!1176620 0 (BalanceConc!22125 Empty!11255)) lt!1176872)))

(declare-fun b!3461668 () Bool)

(assert (=> b!3461668 (= e!2144614 (<= 0 (size!28200 lt!1176620)))))

(declare-fun b!3461669 () Bool)

(assert (=> b!3461669 (= e!2144613 (BalanceConc!22125 Empty!11255))))

(declare-fun b!3461670 () Bool)

(assert (=> b!3461670 (= e!2144613 (printTailRec!1524 thiss!18206 lt!1176620 (+ 0 1) (++!9166 (BalanceConc!22125 Empty!11255) (charsOf!3454 (apply!8756 lt!1176620 0)))))))

(declare-fun lt!1176873 () List!37297)

(assert (=> b!3461670 (= lt!1176873 (list!13537 lt!1176620))))

(declare-fun lt!1176868 () Unit!52520)

(assert (=> b!3461670 (= lt!1176868 (lemmaDropApply!1164 lt!1176873 0))))

(assert (=> b!3461670 (= (head!7322 (drop!2012 lt!1176873 0)) (apply!8758 lt!1176873 0))))

(declare-fun lt!1176867 () Unit!52520)

(assert (=> b!3461670 (= lt!1176867 lt!1176868)))

(declare-fun lt!1176869 () List!37297)

(assert (=> b!3461670 (= lt!1176869 (list!13537 lt!1176620))))

(declare-fun lt!1176870 () Unit!52520)

(assert (=> b!3461670 (= lt!1176870 (lemmaDropTail!1048 lt!1176869 0))))

(assert (=> b!3461670 (= (tail!5435 (drop!2012 lt!1176869 0)) (drop!2012 lt!1176869 (+ 0 1)))))

(declare-fun lt!1176871 () Unit!52520)

(assert (=> b!3461670 (= lt!1176871 lt!1176870)))

(assert (= (and d!996317 res!1396747) b!3461668))

(assert (= (and d!996317 c!592668) b!3461669))

(assert (= (and d!996317 (not c!592668)) b!3461670))

(declare-fun m!3865023 () Bool)

(assert (=> d!996317 m!3865023))

(declare-fun m!3865025 () Bool)

(assert (=> d!996317 m!3865025))

(declare-fun m!3865027 () Bool)

(assert (=> d!996317 m!3865027))

(assert (=> d!996317 m!3864547))

(assert (=> d!996317 m!3865025))

(assert (=> d!996317 m!3864547))

(declare-fun m!3865029 () Bool)

(assert (=> d!996317 m!3865029))

(assert (=> b!3461668 m!3865027))

(declare-fun m!3865031 () Bool)

(assert (=> b!3461670 m!3865031))

(declare-fun m!3865033 () Bool)

(assert (=> b!3461670 m!3865033))

(declare-fun m!3865035 () Bool)

(assert (=> b!3461670 m!3865035))

(declare-fun m!3865037 () Bool)

(assert (=> b!3461670 m!3865037))

(declare-fun m!3865039 () Bool)

(assert (=> b!3461670 m!3865039))

(declare-fun m!3865041 () Bool)

(assert (=> b!3461670 m!3865041))

(declare-fun m!3865043 () Bool)

(assert (=> b!3461670 m!3865043))

(declare-fun m!3865045 () Bool)

(assert (=> b!3461670 m!3865045))

(declare-fun m!3865047 () Bool)

(assert (=> b!3461670 m!3865047))

(assert (=> b!3461670 m!3865035))

(declare-fun m!3865049 () Bool)

(assert (=> b!3461670 m!3865049))

(assert (=> b!3461670 m!3865041))

(declare-fun m!3865051 () Bool)

(assert (=> b!3461670 m!3865051))

(assert (=> b!3461670 m!3865043))

(declare-fun m!3865053 () Bool)

(assert (=> b!3461670 m!3865053))

(assert (=> b!3461670 m!3865037))

(assert (=> b!3461670 m!3865039))

(declare-fun m!3865055 () Bool)

(assert (=> b!3461670 m!3865055))

(assert (=> b!3461108 d!996317))

(declare-fun d!996319 () Bool)

(declare-fun dynLambda!15672 (Int BalanceConc!22124) TokenValue!5670)

(assert (=> d!996319 (= (apply!8757 (transformation!5440 (rule!8032 (h!42593 tokens!494))) lt!1176613) (dynLambda!15672 (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) lt!1176613))))

(declare-fun b_lambda!99699 () Bool)

(assert (=> (not b_lambda!99699) (not d!996319)))

(declare-fun t!273076 () Bool)

(declare-fun tb!188751 () Bool)

(assert (=> (and b!3461071 (= (toValue!7668 (transformation!5440 (rule!8032 separatorToken!241))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) t!273076) tb!188751))

(declare-fun result!232744 () Bool)

(assert (=> tb!188751 (= result!232744 (inv!21 (dynLambda!15672 (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) lt!1176613)))))

(declare-fun m!3865057 () Bool)

(assert (=> tb!188751 m!3865057))

(assert (=> d!996319 t!273076))

(declare-fun b_and!243539 () Bool)

(assert (= b_and!243491 (and (=> t!273076 result!232744) b_and!243539)))

(declare-fun t!273078 () Bool)

(declare-fun tb!188753 () Bool)

(assert (=> (and b!3461104 (= (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) t!273078) tb!188753))

(declare-fun result!232748 () Bool)

(assert (= result!232748 result!232744))

(assert (=> d!996319 t!273078))

(declare-fun b_and!243541 () Bool)

(assert (= b_and!243495 (and (=> t!273078 result!232748) b_and!243541)))

(declare-fun tb!188755 () Bool)

(declare-fun t!273080 () Bool)

(assert (=> (and b!3461090 (= (toValue!7668 (transformation!5440 (h!42592 rules!2135))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) t!273080) tb!188755))

(declare-fun result!232750 () Bool)

(assert (= result!232750 result!232744))

(assert (=> d!996319 t!273080))

(declare-fun b_and!243543 () Bool)

(assert (= b_and!243499 (and (=> t!273080 result!232750) b_and!243543)))

(declare-fun m!3865059 () Bool)

(assert (=> d!996319 m!3865059))

(assert (=> b!3461108 d!996319))

(declare-fun d!996321 () Bool)

(declare-fun lt!1176874 () BalanceConc!22124)

(assert (=> d!996321 (= (list!13535 lt!1176874) (printList!1577 thiss!18206 (list!13537 lt!1176620)))))

(assert (=> d!996321 (= lt!1176874 (printTailRec!1524 thiss!18206 lt!1176620 0 (BalanceConc!22125 Empty!11255)))))

(assert (=> d!996321 (= (print!2094 thiss!18206 lt!1176620) lt!1176874)))

(declare-fun bs!560491 () Bool)

(assert (= bs!560491 d!996321))

(declare-fun m!3865061 () Bool)

(assert (=> bs!560491 m!3865061))

(assert (=> bs!560491 m!3865033))

(assert (=> bs!560491 m!3865033))

(declare-fun m!3865063 () Bool)

(assert (=> bs!560491 m!3865063))

(assert (=> bs!560491 m!3864073))

(assert (=> b!3461108 d!996321))

(declare-fun d!996323 () Bool)

(declare-fun lt!1176875 () Int)

(assert (=> d!996323 (= lt!1176875 (size!28206 (list!13537 (_1!21582 lt!1176604))))))

(assert (=> d!996323 (= lt!1176875 (size!28207 (c!592552 (_1!21582 lt!1176604))))))

(assert (=> d!996323 (= (size!28200 (_1!21582 lt!1176604)) lt!1176875)))

(declare-fun bs!560492 () Bool)

(assert (= bs!560492 d!996323))

(assert (=> bs!560492 m!3864383))

(assert (=> bs!560492 m!3864383))

(declare-fun m!3865065 () Bool)

(assert (=> bs!560492 m!3865065))

(declare-fun m!3865067 () Bool)

(assert (=> bs!560492 m!3865067))

(assert (=> b!3461108 d!996323))

(declare-fun d!996325 () Bool)

(declare-fun lt!1176876 () Bool)

(assert (=> d!996325 (= lt!1176876 (select (content!5188 rules!2135) (rule!8032 (h!42593 tokens!494))))))

(declare-fun e!2144618 () Bool)

(assert (=> d!996325 (= lt!1176876 e!2144618)))

(declare-fun res!1396749 () Bool)

(assert (=> d!996325 (=> (not res!1396749) (not e!2144618))))

(assert (=> d!996325 (= res!1396749 ((_ is Cons!37172) rules!2135))))

(assert (=> d!996325 (= (contains!6895 rules!2135 (rule!8032 (h!42593 tokens!494))) lt!1176876)))

(declare-fun b!3461673 () Bool)

(declare-fun e!2144619 () Bool)

(assert (=> b!3461673 (= e!2144618 e!2144619)))

(declare-fun res!1396748 () Bool)

(assert (=> b!3461673 (=> res!1396748 e!2144619)))

(assert (=> b!3461673 (= res!1396748 (= (h!42592 rules!2135) (rule!8032 (h!42593 tokens!494))))))

(declare-fun b!3461674 () Bool)

(assert (=> b!3461674 (= e!2144619 (contains!6895 (t!273043 rules!2135) (rule!8032 (h!42593 tokens!494))))))

(assert (= (and d!996325 res!1396749) b!3461673))

(assert (= (and b!3461673 (not res!1396748)) b!3461674))

(assert (=> d!996325 m!3864207))

(declare-fun m!3865069 () Bool)

(assert (=> d!996325 m!3865069))

(declare-fun m!3865071 () Bool)

(assert (=> b!3461674 m!3865071))

(assert (=> b!3461108 d!996325))

(declare-fun d!996327 () Bool)

(assert (=> d!996327 (= (maxPrefixOneRule!1736 thiss!18206 (rule!8032 (h!42593 tokens!494)) lt!1176597) (Some!7528 (tuple2!36899 (Token!10247 (apply!8757 (transformation!5440 (rule!8032 (h!42593 tokens!494))) (seqFromList!3933 lt!1176597)) (rule!8032 (h!42593 tokens!494)) (size!28201 lt!1176597) lt!1176597) Nil!37171)))))

(declare-fun lt!1176911 () Unit!52520)

(declare-fun choose!20028 (LexerInterface!5029 List!37296 List!37295 List!37295 List!37295 Rule!10680) Unit!52520)

(assert (=> d!996327 (= lt!1176911 (choose!20028 thiss!18206 rules!2135 lt!1176597 lt!1176597 Nil!37171 (rule!8032 (h!42593 tokens!494))))))

(assert (=> d!996327 (not (isEmpty!21527 rules!2135))))

(assert (=> d!996327 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!829 thiss!18206 rules!2135 lt!1176597 lt!1176597 Nil!37171 (rule!8032 (h!42593 tokens!494))) lt!1176911)))

(declare-fun bs!560494 () Bool)

(assert (= bs!560494 d!996327))

(assert (=> bs!560494 m!3864127))

(assert (=> bs!560494 m!3864127))

(declare-fun m!3865163 () Bool)

(assert (=> bs!560494 m!3865163))

(assert (=> bs!560494 m!3864031))

(assert (=> bs!560494 m!3864069))

(declare-fun m!3865165 () Bool)

(assert (=> bs!560494 m!3865165))

(assert (=> bs!560494 m!3864013))

(assert (=> b!3461108 d!996327))

(declare-fun call!249639 () List!37295)

(declare-fun bm!249633 () Bool)

(declare-fun call!249638 () List!37295)

(declare-fun call!249640 () List!37295)

(declare-fun c!592675 () Bool)

(assert (=> bm!249633 (= call!249640 (++!9165 (ite c!592675 call!249639 call!249638) (ite c!592675 call!249638 call!249639)))))

(declare-fun b!3461692 () Bool)

(declare-fun e!2144631 () List!37295)

(assert (=> b!3461692 (= e!2144631 (Cons!37171 (c!592550 (regex!5440 (rule!8032 separatorToken!241))) Nil!37171))))

(declare-fun b!3461693 () Bool)

(declare-fun e!2144634 () List!37295)

(assert (=> b!3461693 (= e!2144634 call!249640)))

(declare-fun bm!249634 () Bool)

(assert (=> bm!249634 (= call!249639 (usedCharacters!674 (ite c!592675 (regOne!20911 (regex!5440 (rule!8032 separatorToken!241))) (regTwo!20910 (regex!5440 (rule!8032 separatorToken!241))))))))

(declare-fun call!249641 () List!37295)

(declare-fun bm!249635 () Bool)

(declare-fun c!592676 () Bool)

(assert (=> bm!249635 (= call!249641 (usedCharacters!674 (ite c!592676 (reg!10528 (regex!5440 (rule!8032 separatorToken!241))) (ite c!592675 (regTwo!20911 (regex!5440 (rule!8032 separatorToken!241))) (regOne!20910 (regex!5440 (rule!8032 separatorToken!241)))))))))

(declare-fun bm!249636 () Bool)

(assert (=> bm!249636 (= call!249638 call!249641)))

(declare-fun b!3461695 () Bool)

(declare-fun e!2144632 () List!37295)

(assert (=> b!3461695 (= e!2144632 e!2144631)))

(declare-fun c!592674 () Bool)

(assert (=> b!3461695 (= c!592674 ((_ is ElementMatch!10199) (regex!5440 (rule!8032 separatorToken!241))))))

(declare-fun b!3461696 () Bool)

(assert (=> b!3461696 (= e!2144632 Nil!37171)))

(declare-fun b!3461697 () Bool)

(declare-fun e!2144633 () List!37295)

(assert (=> b!3461697 (= e!2144633 e!2144634)))

(assert (=> b!3461697 (= c!592675 ((_ is Union!10199) (regex!5440 (rule!8032 separatorToken!241))))))

(declare-fun b!3461698 () Bool)

(assert (=> b!3461698 (= e!2144634 call!249640)))

(declare-fun b!3461699 () Bool)

(assert (=> b!3461699 (= e!2144633 call!249641)))

(declare-fun b!3461694 () Bool)

(assert (=> b!3461694 (= c!592676 ((_ is Star!10199) (regex!5440 (rule!8032 separatorToken!241))))))

(assert (=> b!3461694 (= e!2144631 e!2144633)))

(declare-fun d!996337 () Bool)

(declare-fun c!592677 () Bool)

(assert (=> d!996337 (= c!592677 (or ((_ is EmptyExpr!10199) (regex!5440 (rule!8032 separatorToken!241))) ((_ is EmptyLang!10199) (regex!5440 (rule!8032 separatorToken!241)))))))

(assert (=> d!996337 (= (usedCharacters!674 (regex!5440 (rule!8032 separatorToken!241))) e!2144632)))

(assert (= (and d!996337 c!592677) b!3461696))

(assert (= (and d!996337 (not c!592677)) b!3461695))

(assert (= (and b!3461695 c!592674) b!3461692))

(assert (= (and b!3461695 (not c!592674)) b!3461694))

(assert (= (and b!3461694 c!592676) b!3461699))

(assert (= (and b!3461694 (not c!592676)) b!3461697))

(assert (= (and b!3461697 c!592675) b!3461693))

(assert (= (and b!3461697 (not c!592675)) b!3461698))

(assert (= (or b!3461693 b!3461698) bm!249636))

(assert (= (or b!3461693 b!3461698) bm!249634))

(assert (= (or b!3461693 b!3461698) bm!249633))

(assert (= (or b!3461699 bm!249636) bm!249635))

(declare-fun m!3865167 () Bool)

(assert (=> bm!249633 m!3865167))

(declare-fun m!3865169 () Bool)

(assert (=> bm!249634 m!3865169))

(declare-fun m!3865171 () Bool)

(assert (=> bm!249635 m!3865171))

(assert (=> b!3461108 d!996337))

(declare-fun d!996339 () Bool)

(declare-fun lt!1176912 () Bool)

(assert (=> d!996339 (= lt!1176912 (isEmpty!21528 (list!13535 (_2!21582 lt!1176604))))))

(assert (=> d!996339 (= lt!1176912 (isEmpty!21529 (c!592551 (_2!21582 lt!1176604))))))

(assert (=> d!996339 (= (isEmpty!21525 (_2!21582 lt!1176604)) lt!1176912)))

(declare-fun bs!560495 () Bool)

(assert (= bs!560495 d!996339))

(declare-fun m!3865173 () Bool)

(assert (=> bs!560495 m!3865173))

(assert (=> bs!560495 m!3865173))

(declare-fun m!3865175 () Bool)

(assert (=> bs!560495 m!3865175))

(declare-fun m!3865177 () Bool)

(assert (=> bs!560495 m!3865177))

(assert (=> b!3461086 d!996339))

(declare-fun bs!560505 () Bool)

(declare-fun d!996341 () Bool)

(assert (= bs!560505 (and d!996341 b!3461085)))

(declare-fun lambda!121866 () Int)

(assert (=> bs!560505 (not (= lambda!121866 lambda!121860))))

(declare-fun bs!560506 () Bool)

(assert (= bs!560506 (and d!996341 b!3461108)))

(assert (=> bs!560506 (= lambda!121866 lambda!121861)))

(declare-fun b!3461848 () Bool)

(declare-fun e!2144729 () Bool)

(assert (=> b!3461848 (= e!2144729 true)))

(declare-fun b!3461847 () Bool)

(declare-fun e!2144728 () Bool)

(assert (=> b!3461847 (= e!2144728 e!2144729)))

(declare-fun b!3461846 () Bool)

(declare-fun e!2144727 () Bool)

(assert (=> b!3461846 (= e!2144727 e!2144728)))

(assert (=> d!996341 e!2144727))

(assert (= b!3461847 b!3461848))

(assert (= b!3461846 b!3461847))

(assert (= (and d!996341 ((_ is Cons!37172) rules!2135)) b!3461846))

(assert (=> b!3461848 (< (dynLambda!15664 order!19805 (toValue!7668 (transformation!5440 (h!42592 rules!2135)))) (dynLambda!15665 order!19807 lambda!121866))))

(assert (=> b!3461848 (< (dynLambda!15666 order!19809 (toChars!7527 (transformation!5440 (h!42592 rules!2135)))) (dynLambda!15665 order!19807 lambda!121866))))

(assert (=> d!996341 true))

(declare-fun e!2144726 () Bool)

(assert (=> d!996341 e!2144726))

(declare-fun res!1396839 () Bool)

(assert (=> d!996341 (=> (not res!1396839) (not e!2144726))))

(declare-fun lt!1176959 () Bool)

(assert (=> d!996341 (= res!1396839 (= lt!1176959 (forall!7925 (list!13537 (seqFromList!3934 tokens!494)) lambda!121866)))))

(declare-fun forall!7927 (BalanceConc!22126 Int) Bool)

(assert (=> d!996341 (= lt!1176959 (forall!7927 (seqFromList!3934 tokens!494) lambda!121866))))

(assert (=> d!996341 (not (isEmpty!21527 rules!2135))))

(assert (=> d!996341 (= (rulesProduceEachTokenIndividually!1480 thiss!18206 rules!2135 (seqFromList!3934 tokens!494)) lt!1176959)))

(declare-fun b!3461845 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1857 (LexerInterface!5029 List!37296 List!37297) Bool)

(assert (=> b!3461845 (= e!2144726 (= lt!1176959 (rulesProduceEachTokenIndividuallyList!1857 thiss!18206 rules!2135 (list!13537 (seqFromList!3934 tokens!494)))))))

(assert (= (and d!996341 res!1396839) b!3461845))

(assert (=> d!996341 m!3864115))

(declare-fun m!3865421 () Bool)

(assert (=> d!996341 m!3865421))

(assert (=> d!996341 m!3865421))

(declare-fun m!3865423 () Bool)

(assert (=> d!996341 m!3865423))

(assert (=> d!996341 m!3864115))

(declare-fun m!3865425 () Bool)

(assert (=> d!996341 m!3865425))

(assert (=> d!996341 m!3864013))

(assert (=> b!3461845 m!3864115))

(assert (=> b!3461845 m!3865421))

(assert (=> b!3461845 m!3865421))

(declare-fun m!3865427 () Bool)

(assert (=> b!3461845 m!3865427))

(assert (=> b!3461107 d!996341))

(declare-fun d!996415 () Bool)

(declare-fun fromListB!1787 (List!37297) BalanceConc!22126)

(assert (=> d!996415 (= (seqFromList!3934 tokens!494) (fromListB!1787 tokens!494))))

(declare-fun bs!560507 () Bool)

(assert (= bs!560507 d!996415))

(declare-fun m!3865429 () Bool)

(assert (=> bs!560507 m!3865429))

(assert (=> b!3461107 d!996415))

(declare-fun b!3461859 () Bool)

(declare-fun e!2144732 () Bool)

(declare-fun tp_is_empty!17559 () Bool)

(assert (=> b!3461859 (= e!2144732 tp_is_empty!17559)))

(declare-fun b!3461861 () Bool)

(declare-fun tp!1078237 () Bool)

(assert (=> b!3461861 (= e!2144732 tp!1078237)))

(assert (=> b!3461106 (= tp!1078210 e!2144732)))

(declare-fun b!3461862 () Bool)

(declare-fun tp!1078239 () Bool)

(declare-fun tp!1078238 () Bool)

(assert (=> b!3461862 (= e!2144732 (and tp!1078239 tp!1078238))))

(declare-fun b!3461860 () Bool)

(declare-fun tp!1078236 () Bool)

(declare-fun tp!1078235 () Bool)

(assert (=> b!3461860 (= e!2144732 (and tp!1078236 tp!1078235))))

(assert (= (and b!3461106 ((_ is ElementMatch!10199) (regex!5440 (rule!8032 separatorToken!241)))) b!3461859))

(assert (= (and b!3461106 ((_ is Concat!15869) (regex!5440 (rule!8032 separatorToken!241)))) b!3461860))

(assert (= (and b!3461106 ((_ is Star!10199) (regex!5440 (rule!8032 separatorToken!241)))) b!3461861))

(assert (= (and b!3461106 ((_ is Union!10199) (regex!5440 (rule!8032 separatorToken!241)))) b!3461862))

(declare-fun b!3461867 () Bool)

(declare-fun e!2144735 () Bool)

(declare-fun tp!1078242 () Bool)

(assert (=> b!3461867 (= e!2144735 (and tp_is_empty!17559 tp!1078242))))

(assert (=> b!3461084 (= tp!1078214 e!2144735)))

(assert (= (and b!3461084 ((_ is Cons!37171) (originalCharacters!6154 separatorToken!241))) b!3461867))

(declare-fun b!3461881 () Bool)

(declare-fun b_free!89925 () Bool)

(declare-fun b_next!90629 () Bool)

(assert (=> b!3461881 (= b_free!89925 (not b_next!90629))))

(declare-fun t!273092 () Bool)

(declare-fun tb!188763 () Bool)

(assert (=> (and b!3461881 (= (toValue!7668 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) t!273092) tb!188763))

(declare-fun result!232766 () Bool)

(assert (= result!232766 result!232744))

(assert (=> d!996319 t!273092))

(declare-fun b_and!243557 () Bool)

(declare-fun tp!1078255 () Bool)

(assert (=> b!3461881 (= tp!1078255 (and (=> t!273092 result!232766) b_and!243557))))

(declare-fun b_free!89927 () Bool)

(declare-fun b_next!90631 () Bool)

(assert (=> b!3461881 (= b_free!89927 (not b_next!90631))))

(declare-fun t!273094 () Bool)

(declare-fun tb!188765 () Bool)

(assert (=> (and b!3461881 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) t!273094) tb!188765))

(declare-fun result!232768 () Bool)

(assert (= result!232768 result!232716))

(assert (=> d!996107 t!273094))

(assert (=> b!3461191 t!273094))

(declare-fun t!273096 () Bool)

(declare-fun tb!188767 () Bool)

(assert (=> (and b!3461881 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241)))) t!273096) tb!188767))

(declare-fun result!232770 () Bool)

(assert (= result!232770 result!232724))

(assert (=> d!996189 t!273096))

(assert (=> b!3461245 t!273096))

(declare-fun t!273098 () Bool)

(declare-fun tb!188769 () Bool)

(assert (=> (and b!3461881 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494)))))) t!273098) tb!188769))

(declare-fun result!232772 () Bool)

(assert (= result!232772 result!232730))

(assert (=> d!996199 t!273098))

(declare-fun b_and!243559 () Bool)

(declare-fun tp!1078257 () Bool)

(assert (=> b!3461881 (= tp!1078257 (and (=> t!273096 result!232770) (=> t!273094 result!232768) (=> t!273098 result!232772) b_and!243559))))

(declare-fun e!2144751 () Bool)

(declare-fun e!2144749 () Bool)

(declare-fun b!3461880 () Bool)

(declare-fun tp!1078256 () Bool)

(assert (=> b!3461880 (= e!2144749 (and tp!1078256 (inv!50341 (tag!6050 (rule!8032 (h!42593 (t!273044 tokens!494))))) (inv!50344 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) e!2144751))))

(declare-fun e!2144752 () Bool)

(assert (=> b!3461092 (= tp!1078216 e!2144752)))

(declare-fun e!2144753 () Bool)

(declare-fun tp!1078254 () Bool)

(declare-fun b!3461879 () Bool)

(assert (=> b!3461879 (= e!2144753 (and (inv!21 (value!175500 (h!42593 (t!273044 tokens!494)))) e!2144749 tp!1078254))))

(assert (=> b!3461881 (= e!2144751 (and tp!1078255 tp!1078257))))

(declare-fun tp!1078253 () Bool)

(declare-fun b!3461878 () Bool)

(assert (=> b!3461878 (= e!2144752 (and (inv!50345 (h!42593 (t!273044 tokens!494))) e!2144753 tp!1078253))))

(assert (= b!3461880 b!3461881))

(assert (= b!3461879 b!3461880))

(assert (= b!3461878 b!3461879))

(assert (= (and b!3461092 ((_ is Cons!37173) (t!273044 tokens!494))) b!3461878))

(declare-fun m!3865431 () Bool)

(assert (=> b!3461880 m!3865431))

(declare-fun m!3865433 () Bool)

(assert (=> b!3461880 m!3865433))

(declare-fun m!3865435 () Bool)

(assert (=> b!3461879 m!3865435))

(declare-fun m!3865437 () Bool)

(assert (=> b!3461878 m!3865437))

(declare-fun b!3461884 () Bool)

(declare-fun e!2144756 () Bool)

(assert (=> b!3461884 (= e!2144756 true)))

(declare-fun b!3461883 () Bool)

(declare-fun e!2144755 () Bool)

(assert (=> b!3461883 (= e!2144755 e!2144756)))

(declare-fun b!3461882 () Bool)

(declare-fun e!2144754 () Bool)

(assert (=> b!3461882 (= e!2144754 e!2144755)))

(assert (=> b!3461120 e!2144754))

(assert (= b!3461883 b!3461884))

(assert (= b!3461882 b!3461883))

(assert (= (and b!3461120 ((_ is Cons!37172) (t!273043 rules!2135))) b!3461882))

(assert (=> b!3461884 (< (dynLambda!15664 order!19805 (toValue!7668 (transformation!5440 (h!42592 (t!273043 rules!2135))))) (dynLambda!15665 order!19807 lambda!121861))))

(assert (=> b!3461884 (< (dynLambda!15666 order!19809 (toChars!7527 (transformation!5440 (h!42592 (t!273043 rules!2135))))) (dynLambda!15665 order!19807 lambda!121861))))

(declare-fun b!3461885 () Bool)

(declare-fun e!2144757 () Bool)

(assert (=> b!3461885 (= e!2144757 tp_is_empty!17559)))

(declare-fun b!3461887 () Bool)

(declare-fun tp!1078260 () Bool)

(assert (=> b!3461887 (= e!2144757 tp!1078260)))

(assert (=> b!3461080 (= tp!1078206 e!2144757)))

(declare-fun b!3461888 () Bool)

(declare-fun tp!1078262 () Bool)

(declare-fun tp!1078261 () Bool)

(assert (=> b!3461888 (= e!2144757 (and tp!1078262 tp!1078261))))

(declare-fun b!3461886 () Bool)

(declare-fun tp!1078259 () Bool)

(declare-fun tp!1078258 () Bool)

(assert (=> b!3461886 (= e!2144757 (and tp!1078259 tp!1078258))))

(assert (= (and b!3461080 ((_ is ElementMatch!10199) (regex!5440 (rule!8032 (h!42593 tokens!494))))) b!3461885))

(assert (= (and b!3461080 ((_ is Concat!15869) (regex!5440 (rule!8032 (h!42593 tokens!494))))) b!3461886))

(assert (= (and b!3461080 ((_ is Star!10199) (regex!5440 (rule!8032 (h!42593 tokens!494))))) b!3461887))

(assert (= (and b!3461080 ((_ is Union!10199) (regex!5440 (rule!8032 (h!42593 tokens!494))))) b!3461888))

(declare-fun b!3461889 () Bool)

(declare-fun e!2144758 () Bool)

(assert (=> b!3461889 (= e!2144758 tp_is_empty!17559)))

(declare-fun b!3461891 () Bool)

(declare-fun tp!1078265 () Bool)

(assert (=> b!3461891 (= e!2144758 tp!1078265)))

(assert (=> b!3461101 (= tp!1078204 e!2144758)))

(declare-fun b!3461892 () Bool)

(declare-fun tp!1078267 () Bool)

(declare-fun tp!1078266 () Bool)

(assert (=> b!3461892 (= e!2144758 (and tp!1078267 tp!1078266))))

(declare-fun b!3461890 () Bool)

(declare-fun tp!1078264 () Bool)

(declare-fun tp!1078263 () Bool)

(assert (=> b!3461890 (= e!2144758 (and tp!1078264 tp!1078263))))

(assert (= (and b!3461101 ((_ is ElementMatch!10199) (regex!5440 (h!42592 rules!2135)))) b!3461889))

(assert (= (and b!3461101 ((_ is Concat!15869) (regex!5440 (h!42592 rules!2135)))) b!3461890))

(assert (= (and b!3461101 ((_ is Star!10199) (regex!5440 (h!42592 rules!2135)))) b!3461891))

(assert (= (and b!3461101 ((_ is Union!10199) (regex!5440 (h!42592 rules!2135)))) b!3461892))

(declare-fun b!3461893 () Bool)

(declare-fun e!2144759 () Bool)

(declare-fun tp!1078268 () Bool)

(assert (=> b!3461893 (= e!2144759 (and tp_is_empty!17559 tp!1078268))))

(assert (=> b!3461110 (= tp!1078211 e!2144759)))

(assert (= (and b!3461110 ((_ is Cons!37171) (originalCharacters!6154 (h!42593 tokens!494)))) b!3461893))

(declare-fun b!3461904 () Bool)

(declare-fun b_free!89929 () Bool)

(declare-fun b_next!90633 () Bool)

(assert (=> b!3461904 (= b_free!89929 (not b_next!90633))))

(declare-fun tb!188771 () Bool)

(declare-fun t!273100 () Bool)

(assert (=> (and b!3461904 (= (toValue!7668 (transformation!5440 (h!42592 (t!273043 rules!2135)))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) t!273100) tb!188771))

(declare-fun result!232776 () Bool)

(assert (= result!232776 result!232744))

(assert (=> d!996319 t!273100))

(declare-fun b_and!243561 () Bool)

(declare-fun tp!1078280 () Bool)

(assert (=> b!3461904 (= tp!1078280 (and (=> t!273100 result!232776) b_and!243561))))

(declare-fun b_free!89931 () Bool)

(declare-fun b_next!90635 () Bool)

(assert (=> b!3461904 (= b_free!89931 (not b_next!90635))))

(declare-fun tb!188773 () Bool)

(declare-fun t!273102 () Bool)

(assert (=> (and b!3461904 (= (toChars!7527 (transformation!5440 (h!42592 (t!273043 rules!2135)))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) t!273102) tb!188773))

(declare-fun result!232778 () Bool)

(assert (= result!232778 result!232716))

(assert (=> d!996107 t!273102))

(assert (=> b!3461191 t!273102))

(declare-fun t!273104 () Bool)

(declare-fun tb!188775 () Bool)

(assert (=> (and b!3461904 (= (toChars!7527 (transformation!5440 (h!42592 (t!273043 rules!2135)))) (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241)))) t!273104) tb!188775))

(declare-fun result!232780 () Bool)

(assert (= result!232780 result!232724))

(assert (=> d!996189 t!273104))

(assert (=> b!3461245 t!273104))

(declare-fun tb!188777 () Bool)

(declare-fun t!273106 () Bool)

(assert (=> (and b!3461904 (= (toChars!7527 (transformation!5440 (h!42592 (t!273043 rules!2135)))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494)))))) t!273106) tb!188777))

(declare-fun result!232782 () Bool)

(assert (= result!232782 result!232730))

(assert (=> d!996199 t!273106))

(declare-fun b_and!243563 () Bool)

(declare-fun tp!1078279 () Bool)

(assert (=> b!3461904 (= tp!1078279 (and (=> t!273104 result!232780) (=> t!273106 result!232782) (=> t!273102 result!232778) b_and!243563))))

(declare-fun e!2144768 () Bool)

(assert (=> b!3461904 (= e!2144768 (and tp!1078280 tp!1078279))))

(declare-fun b!3461903 () Bool)

(declare-fun e!2144771 () Bool)

(declare-fun tp!1078278 () Bool)

(assert (=> b!3461903 (= e!2144771 (and tp!1078278 (inv!50341 (tag!6050 (h!42592 (t!273043 rules!2135)))) (inv!50344 (transformation!5440 (h!42592 (t!273043 rules!2135)))) e!2144768))))

(declare-fun b!3461902 () Bool)

(declare-fun e!2144770 () Bool)

(declare-fun tp!1078277 () Bool)

(assert (=> b!3461902 (= e!2144770 (and e!2144771 tp!1078277))))

(assert (=> b!3461109 (= tp!1078208 e!2144770)))

(assert (= b!3461903 b!3461904))

(assert (= b!3461902 b!3461903))

(assert (= (and b!3461109 ((_ is Cons!37172) (t!273043 rules!2135))) b!3461902))

(declare-fun m!3865439 () Bool)

(assert (=> b!3461903 m!3865439))

(declare-fun m!3865441 () Bool)

(assert (=> b!3461903 m!3865441))

(declare-fun b_lambda!99713 () Bool)

(assert (= b_lambda!99693 (or (and b!3461071 b_free!89915 (= (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))))) (and b!3461104 b_free!89919 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))))) (and b!3461904 b_free!89931 (= (toChars!7527 (transformation!5440 (h!42592 (t!273043 rules!2135)))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))))) (and b!3461881 b_free!89927) (and b!3461090 b_free!89923 (= (toChars!7527 (transformation!5440 (h!42592 rules!2135))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))))) b_lambda!99713)))

(declare-fun b_lambda!99715 () Bool)

(assert (= b_lambda!99699 (or (and b!3461904 b_free!89929 (= (toValue!7668 (transformation!5440 (h!42592 (t!273043 rules!2135)))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))))) (and b!3461881 b_free!89925 (= (toValue!7668 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))))) (and b!3461090 b_free!89921 (= (toValue!7668 (transformation!5440 (h!42592 rules!2135))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))))) (and b!3461071 b_free!89913 (= (toValue!7668 (transformation!5440 (rule!8032 separatorToken!241))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))))) (and b!3461104 b_free!89917) b_lambda!99715)))

(declare-fun b_lambda!99717 () Bool)

(assert (= b_lambda!99681 (or (and b!3461904 b_free!89931 (= (toChars!7527 (transformation!5440 (h!42592 (t!273043 rules!2135)))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))))) (and b!3461090 b_free!89923 (= (toChars!7527 (transformation!5440 (h!42592 rules!2135))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))))) (and b!3461104 b_free!89919) (and b!3461071 b_free!89915 (= (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))))) (and b!3461881 b_free!89927 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))))) b_lambda!99717)))

(declare-fun b_lambda!99719 () Bool)

(assert (= b_lambda!99679 (or (and b!3461904 b_free!89931 (= (toChars!7527 (transformation!5440 (h!42592 (t!273043 rules!2135)))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))))) (and b!3461090 b_free!89923 (= (toChars!7527 (transformation!5440 (h!42592 rules!2135))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))))) (and b!3461104 b_free!89919) (and b!3461071 b_free!89915 (= (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))))) (and b!3461881 b_free!89927 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))))) b_lambda!99719)))

(declare-fun b_lambda!99721 () Bool)

(assert (= b_lambda!99683 (or b!3461085 b_lambda!99721)))

(declare-fun bs!560508 () Bool)

(declare-fun d!996417 () Bool)

(assert (= bs!560508 (and d!996417 b!3461085)))

(assert (=> bs!560508 (= (dynLambda!15668 lambda!121860 (h!42593 (t!273044 tokens!494))) (not (isSeparator!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))))))

(assert (=> d!996143 d!996417))

(declare-fun b_lambda!99723 () Bool)

(assert (= b_lambda!99697 (or b!3461108 b_lambda!99723)))

(declare-fun bs!560509 () Bool)

(declare-fun d!996419 () Bool)

(assert (= bs!560509 (and d!996419 b!3461108)))

(assert (=> bs!560509 (= (dynLambda!15668 lambda!121861 (h!42593 (t!273044 tokens!494))) (rulesProduceIndividualToken!2521 thiss!18206 rules!2135 (h!42593 (t!273044 tokens!494))))))

(assert (=> bs!560509 m!3864053))

(assert (=> d!996287 d!996419))

(declare-fun b_lambda!99725 () Bool)

(assert (= b_lambda!99689 (or b!3461085 b_lambda!99725)))

(declare-fun bs!560510 () Bool)

(declare-fun d!996421 () Bool)

(assert (= bs!560510 (and d!996421 b!3461085)))

(assert (=> bs!560510 (= (dynLambda!15668 lambda!121860 (h!42593 tokens!494)) (not (isSeparator!5440 (rule!8032 (h!42593 tokens!494)))))))

(assert (=> b!3461261 d!996421))

(declare-fun b_lambda!99727 () Bool)

(assert (= b_lambda!99685 (or b!3461085 b_lambda!99727)))

(assert (=> d!996145 d!996421))

(declare-fun b_lambda!99729 () Bool)

(assert (= b_lambda!99691 (or (and b!3461090 b_free!89923 (= (toChars!7527 (transformation!5440 (h!42592 rules!2135))) (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))))) (and b!3461881 b_free!89927 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))))) (and b!3461104 b_free!89919 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))))) (and b!3461904 b_free!89931 (= (toChars!7527 (transformation!5440 (h!42592 (t!273043 rules!2135)))) (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))))) (and b!3461071 b_free!89915) b_lambda!99729)))

(declare-fun b_lambda!99731 () Bool)

(assert (= b_lambda!99687 (or (and b!3461090 b_free!89923 (= (toChars!7527 (transformation!5440 (h!42592 rules!2135))) (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))))) (and b!3461881 b_free!89927 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))))) (and b!3461104 b_free!89919 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))))) (and b!3461904 b_free!89931 (= (toChars!7527 (transformation!5440 (h!42592 (t!273043 rules!2135)))) (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))))) (and b!3461071 b_free!89915) b_lambda!99731)))

(check-sat (not d!996281) (not b!3461241) (not b!3461610) (not b!3461608) (not d!996339) (not b!3461534) (not d!996233) (not b!3461529) (not d!996221) (not b!3461201) (not b!3461668) (not d!996109) (not b_next!90631) (not b!3461309) (not d!996215) b_and!243529 (not d!996199) (not b!3461229) (not b!3461583) (not d!996241) (not b_lambda!99725) (not b_lambda!99721) (not b!3461191) (not b!3461867) (not d!996205) (not d!996165) (not b!3461292) (not b!3461488) (not b!3461324) (not d!996249) (not b!3461893) (not b!3461890) (not bm!249631) (not d!996313) (not b!3461298) (not d!996139) b_and!243561 (not bm!249633) (not b_next!90623) (not b!3461533) (not d!996223) (not b!3461670) (not b!3461192) (not b_next!90619) (not b!3461609) (not b!3461882) (not tb!188739) (not b!3461861) (not b!3461530) (not b!3461233) (not d!996311) (not d!996211) (not d!996151) (not b!3461891) (not d!996149) (not b!3461521) (not b!3461886) (not b!3461475) (not b!3461535) (not d!996299) (not b!3461291) (not b_next!90621) (not b_lambda!99727) (not b!3461358) (not b!3461410) (not b_lambda!99719) (not b!3461256) (not b!3461467) (not d!996283) (not bm!249600) (not d!996107) (not b!3461519) (not d!996129) (not d!996323) (not b!3461520) (not tb!188727) (not d!996321) (not d!996113) (not d!996159) (not b!3461240) (not d!996187) (not b!3461860) (not b!3461138) (not d!996257) (not b_lambda!99717) (not b!3461178) (not d!996341) (not b!3461665) (not b!3461177) (not d!996143) (not d!996207) (not b!3461523) (not b!3461360) (not b_next!90625) (not b!3461589) (not b!3461446) (not b!3461664) (not d!996219) (not b!3461184) (not tb!188733) (not b!3461364) (not b!3461207) (not b_next!90627) (not b!3461878) (not b!3461667) (not b!3461402) (not d!996105) (not b!3461662) (not d!996415) (not b!3461246) (not b!3461306) (not b!3461351) (not d!996243) (not b!3461846) b_and!243563 (not b!3461591) (not d!996173) (not bm!249635) (not b!3461903) (not b_next!90629) (not b!3461448) (not b!3461255) (not b!3461247) (not b!3461235) (not d!996315) b_and!243541 (not d!996289) (not b!3461210) (not b_lambda!99723) (not d!996269) (not bm!249604) (not b!3461413) (not b!3461584) (not d!996287) (not b!3461230) (not b_lambda!99715) (not bm!249634) (not b!3461186) (not d!996179) (not d!996185) (not b!3461208) (not b!3461290) b_and!243531 (not b_next!90617) (not b!3461354) b_and!243559 (not b!3461476) (not d!996277) (not b!3461887) (not b_next!90635) (not b!3461347) (not b!3461438) (not b!3461862) (not d!996141) (not b!3461136) (not b!3461348) (not d!996327) (not d!996169) (not b!3461236) (not b!3461344) (not b!3461308) (not b!3461532) tp_is_empty!17559 (not b!3461511) (not d!996131) (not b!3461352) (not d!996259) (not b!3461304) (not b!3461250) (not b!3461202) (not b!3461447) b_and!243543 (not b!3461466) (not b_lambda!99731) (not b!3461587) (not d!996225) b_and!243527 b_and!243557 (not b!3461305) (not d!996317) (not b!3461209) (not b!3461311) (not b!3461674) (not b!3461299) (not b!3461245) (not b!3461902) (not d!996125) (not d!996325) (not b!3461514) (not b!3461590) (not d!996203) (not tb!188751) (not b!3461185) (not b!3461129) (not b!3461440) (not b!3461244) (not b!3461144) (not d!996115) (not b!3461888) (not d!996279) (not b!3461307) (not b!3461586) (not d!996271) (not d!996253) (not b!3461531) (not b!3461537) (not d!996201) (not d!996189) b_and!243539 (not b!3461232) (not b_lambda!99729) (not b_lambda!99713) (not d!996285) (not b!3461439) (not d!996121) (not b!3461271) (not b!3461365) (not b!3461361) (not d!996111) (not b!3461405) (not bm!249601) (not bm!249605) (not d!996293) (not b!3461137) (not d!996137) (not b!3461892) (not b!3461879) (not d!996191) (not b!3461231) (not b!3461310) (not bs!560509) (not d!996145) (not b!3461400) (not b!3461234) (not b_next!90633) (not bm!249629) (not b!3461437) (not b!3461183) (not b!3461474) (not d!996197) (not b!3461880) (not b!3461196) (not b!3461262) (not b!3461611) (not b!3461585) (not d!996147) (not bm!249630) (not b!3461512) (not b!3461195) (not b!3461343) (not b!3461845) (not b!3461414) (not b!3461356))
(check-sat (not b_next!90631) b_and!243529 (not b_next!90619) (not b_next!90621) (not b_next!90625) (not b_next!90627) b_and!243541 (not b_next!90635) b_and!243543 b_and!243539 (not b_next!90633) b_and!243561 (not b_next!90623) b_and!243563 (not b_next!90629) b_and!243531 (not b_next!90617) b_and!243559 b_and!243527 b_and!243557)
(get-model)

(declare-fun d!996473 () Bool)

(assert (=> d!996473 (= (get!11899 lt!1176835) (v!36854 lt!1176835))))

(assert (=> b!3461590 d!996473))

(declare-fun d!996475 () Bool)

(declare-fun lt!1176975 () Int)

(assert (=> d!996475 (>= lt!1176975 0)))

(declare-fun e!2144849 () Int)

(assert (=> d!996475 (= lt!1176975 e!2144849)))

(declare-fun c!592721 () Bool)

(assert (=> d!996475 (= c!592721 ((_ is Nil!37171) (originalCharacters!6154 (_1!21583 (get!11899 lt!1176835)))))))

(assert (=> d!996475 (= (size!28201 (originalCharacters!6154 (_1!21583 (get!11899 lt!1176835)))) lt!1176975)))

(declare-fun b!3462017 () Bool)

(assert (=> b!3462017 (= e!2144849 0)))

(declare-fun b!3462018 () Bool)

(assert (=> b!3462018 (= e!2144849 (+ 1 (size!28201 (t!273042 (originalCharacters!6154 (_1!21583 (get!11899 lt!1176835)))))))))

(assert (= (and d!996475 c!592721) b!3462017))

(assert (= (and d!996475 (not c!592721)) b!3462018))

(declare-fun m!3865575 () Bool)

(assert (=> b!3462018 m!3865575))

(assert (=> b!3461590 d!996475))

(declare-fun d!996477 () Bool)

(declare-fun lt!1176978 () Bool)

(declare-fun content!5192 (List!37297) (InoxSet Token!10246))

(assert (=> d!996477 (= lt!1176978 (select (content!5192 tokens!494) (h!42593 (t!273044 tokens!494))))))

(declare-fun e!2144855 () Bool)

(assert (=> d!996477 (= lt!1176978 e!2144855)))

(declare-fun res!1396872 () Bool)

(assert (=> d!996477 (=> (not res!1396872) (not e!2144855))))

(assert (=> d!996477 (= res!1396872 ((_ is Cons!37173) tokens!494))))

(assert (=> d!996477 (= (contains!6897 tokens!494 (h!42593 (t!273044 tokens!494))) lt!1176978)))

(declare-fun b!3462023 () Bool)

(declare-fun e!2144854 () Bool)

(assert (=> b!3462023 (= e!2144855 e!2144854)))

(declare-fun res!1396871 () Bool)

(assert (=> b!3462023 (=> res!1396871 e!2144854)))

(assert (=> b!3462023 (= res!1396871 (= (h!42593 tokens!494) (h!42593 (t!273044 tokens!494))))))

(declare-fun b!3462024 () Bool)

(assert (=> b!3462024 (= e!2144854 (contains!6897 (t!273044 tokens!494) (h!42593 (t!273044 tokens!494))))))

(assert (= (and d!996477 res!1396872) b!3462023))

(assert (= (and b!3462023 (not res!1396871)) b!3462024))

(declare-fun m!3865577 () Bool)

(assert (=> d!996477 m!3865577))

(declare-fun m!3865579 () Bool)

(assert (=> d!996477 m!3865579))

(declare-fun m!3865581 () Bool)

(assert (=> b!3462024 m!3865581))

(assert (=> b!3461240 d!996477))

(declare-fun d!996479 () Bool)

(declare-fun list!13541 (Conc!11256) List!37297)

(assert (=> d!996479 (= (list!13537 (singletonSeq!2536 separatorToken!241)) (list!13541 (c!592552 (singletonSeq!2536 separatorToken!241))))))

(declare-fun bs!560521 () Bool)

(assert (= bs!560521 d!996479))

(declare-fun m!3865583 () Bool)

(assert (=> bs!560521 m!3865583))

(assert (=> d!996173 d!996479))

(declare-fun d!996481 () Bool)

(assert (=> d!996481 (= (list!13537 (_1!21582 (lex!2355 thiss!18206 rules!2135 (print!2094 thiss!18206 (singletonSeq!2536 separatorToken!241))))) (list!13541 (c!592552 (_1!21582 (lex!2355 thiss!18206 rules!2135 (print!2094 thiss!18206 (singletonSeq!2536 separatorToken!241)))))))))

(declare-fun bs!560522 () Bool)

(assert (= bs!560522 d!996481))

(declare-fun m!3865585 () Bool)

(assert (=> bs!560522 m!3865585))

(assert (=> d!996173 d!996481))

(assert (=> d!996173 d!996257))

(declare-fun d!996483 () Bool)

(declare-fun lt!1176979 () Int)

(assert (=> d!996483 (= lt!1176979 (size!28206 (list!13537 (_1!21582 lt!1176682))))))

(assert (=> d!996483 (= lt!1176979 (size!28207 (c!592552 (_1!21582 lt!1176682))))))

(assert (=> d!996483 (= (size!28200 (_1!21582 lt!1176682)) lt!1176979)))

(declare-fun bs!560523 () Bool)

(assert (= bs!560523 d!996483))

(declare-fun m!3865587 () Bool)

(assert (=> bs!560523 m!3865587))

(assert (=> bs!560523 m!3865587))

(declare-fun m!3865589 () Bool)

(assert (=> bs!560523 m!3865589))

(declare-fun m!3865591 () Bool)

(assert (=> bs!560523 m!3865591))

(assert (=> d!996173 d!996483))

(declare-fun d!996485 () Bool)

(declare-fun lt!1176980 () BalanceConc!22124)

(assert (=> d!996485 (= (list!13535 lt!1176980) (printList!1577 thiss!18206 (list!13537 (singletonSeq!2536 separatorToken!241))))))

(assert (=> d!996485 (= lt!1176980 (printTailRec!1524 thiss!18206 (singletonSeq!2536 separatorToken!241) 0 (BalanceConc!22125 Empty!11255)))))

(assert (=> d!996485 (= (print!2094 thiss!18206 (singletonSeq!2536 separatorToken!241)) lt!1176980)))

(declare-fun bs!560524 () Bool)

(assert (= bs!560524 d!996485))

(declare-fun m!3865593 () Bool)

(assert (=> bs!560524 m!3865593))

(assert (=> bs!560524 m!3864051))

(assert (=> bs!560524 m!3864391))

(assert (=> bs!560524 m!3864391))

(declare-fun m!3865595 () Bool)

(assert (=> bs!560524 m!3865595))

(assert (=> bs!560524 m!3864051))

(declare-fun m!3865597 () Bool)

(assert (=> bs!560524 m!3865597))

(assert (=> d!996173 d!996485))

(assert (=> d!996173 d!996135))

(declare-fun b!3462026 () Bool)

(declare-fun e!2144857 () Bool)

(declare-fun e!2144856 () Bool)

(assert (=> b!3462026 (= e!2144857 e!2144856)))

(declare-fun lt!1176981 () tuple2!36896)

(declare-fun res!1396874 () Bool)

(assert (=> b!3462026 (= res!1396874 (< (size!28205 (_2!21582 lt!1176981)) (size!28205 (print!2094 thiss!18206 (singletonSeq!2536 separatorToken!241)))))))

(assert (=> b!3462026 (=> (not res!1396874) (not e!2144856))))

(declare-fun b!3462027 () Bool)

(declare-fun e!2144858 () Bool)

(assert (=> b!3462027 (= e!2144858 (= (list!13535 (_2!21582 lt!1176981)) (_2!21586 (lexList!1450 thiss!18206 rules!2135 (list!13535 (print!2094 thiss!18206 (singletonSeq!2536 separatorToken!241)))))))))

(declare-fun b!3462028 () Bool)

(assert (=> b!3462028 (= e!2144856 (not (isEmpty!21526 (_1!21582 lt!1176981))))))

(declare-fun b!3462029 () Bool)

(assert (=> b!3462029 (= e!2144857 (= (_2!21582 lt!1176981) (print!2094 thiss!18206 (singletonSeq!2536 separatorToken!241))))))

(declare-fun d!996487 () Bool)

(assert (=> d!996487 e!2144858))

(declare-fun res!1396873 () Bool)

(assert (=> d!996487 (=> (not res!1396873) (not e!2144858))))

(assert (=> d!996487 (= res!1396873 e!2144857)))

(declare-fun c!592722 () Bool)

(assert (=> d!996487 (= c!592722 (> (size!28200 (_1!21582 lt!1176981)) 0))))

(assert (=> d!996487 (= lt!1176981 (lexTailRecV2!1058 thiss!18206 rules!2135 (print!2094 thiss!18206 (singletonSeq!2536 separatorToken!241)) (BalanceConc!22125 Empty!11255) (print!2094 thiss!18206 (singletonSeq!2536 separatorToken!241)) (BalanceConc!22127 Empty!11256)))))

(assert (=> d!996487 (= (lex!2355 thiss!18206 rules!2135 (print!2094 thiss!18206 (singletonSeq!2536 separatorToken!241))) lt!1176981)))

(declare-fun b!3462025 () Bool)

(declare-fun res!1396875 () Bool)

(assert (=> b!3462025 (=> (not res!1396875) (not e!2144858))))

(assert (=> b!3462025 (= res!1396875 (= (list!13537 (_1!21582 lt!1176981)) (_1!21586 (lexList!1450 thiss!18206 rules!2135 (list!13535 (print!2094 thiss!18206 (singletonSeq!2536 separatorToken!241)))))))))

(assert (= (and d!996487 c!592722) b!3462026))

(assert (= (and d!996487 (not c!592722)) b!3462029))

(assert (= (and b!3462026 res!1396874) b!3462028))

(assert (= (and d!996487 res!1396873) b!3462025))

(assert (= (and b!3462025 res!1396875) b!3462027))

(declare-fun m!3865599 () Bool)

(assert (=> b!3462027 m!3865599))

(assert (=> b!3462027 m!3864389))

(declare-fun m!3865601 () Bool)

(assert (=> b!3462027 m!3865601))

(assert (=> b!3462027 m!3865601))

(declare-fun m!3865603 () Bool)

(assert (=> b!3462027 m!3865603))

(declare-fun m!3865605 () Bool)

(assert (=> b!3462025 m!3865605))

(assert (=> b!3462025 m!3864389))

(assert (=> b!3462025 m!3865601))

(assert (=> b!3462025 m!3865601))

(assert (=> b!3462025 m!3865603))

(declare-fun m!3865607 () Bool)

(assert (=> b!3462026 m!3865607))

(assert (=> b!3462026 m!3864389))

(declare-fun m!3865609 () Bool)

(assert (=> b!3462026 m!3865609))

(declare-fun m!3865611 () Bool)

(assert (=> d!996487 m!3865611))

(assert (=> d!996487 m!3864389))

(assert (=> d!996487 m!3864389))

(declare-fun m!3865613 () Bool)

(assert (=> d!996487 m!3865613))

(declare-fun m!3865615 () Bool)

(assert (=> b!3462028 m!3865615))

(assert (=> d!996173 d!996487))

(declare-fun d!996489 () Bool)

(assert (=> d!996489 (= (list!13537 lt!1176737) (list!13541 (c!592552 lt!1176737)))))

(declare-fun bs!560525 () Bool)

(assert (= bs!560525 d!996489))

(declare-fun m!3865617 () Bool)

(assert (=> bs!560525 m!3865617))

(assert (=> d!996215 d!996489))

(declare-fun d!996491 () Bool)

(declare-fun e!2144861 () Bool)

(assert (=> d!996491 e!2144861))

(declare-fun res!1396878 () Bool)

(assert (=> d!996491 (=> (not res!1396878) (not e!2144861))))

(declare-fun lt!1176984 () BalanceConc!22126)

(assert (=> d!996491 (= res!1396878 (= (list!13537 lt!1176984) (Cons!37173 (h!42593 tokens!494) Nil!37173)))))

(declare-fun choose!20029 (Token!10246) BalanceConc!22126)

(assert (=> d!996491 (= lt!1176984 (choose!20029 (h!42593 tokens!494)))))

(assert (=> d!996491 (= (singleton!1122 (h!42593 tokens!494)) lt!1176984)))

(declare-fun b!3462032 () Bool)

(assert (=> b!3462032 (= e!2144861 (isBalanced!3417 (c!592552 lt!1176984)))))

(assert (= (and d!996491 res!1396878) b!3462032))

(declare-fun m!3865619 () Bool)

(assert (=> d!996491 m!3865619))

(declare-fun m!3865621 () Bool)

(assert (=> d!996491 m!3865621))

(declare-fun m!3865623 () Bool)

(assert (=> b!3462032 m!3865623))

(assert (=> d!996215 d!996491))

(declare-fun d!996493 () Bool)

(declare-fun c!592725 () Bool)

(assert (=> d!996493 (= c!592725 ((_ is Node!11255) (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (value!175500 (h!42593 tokens!494))))))))

(declare-fun e!2144866 () Bool)

(assert (=> d!996493 (= (inv!50346 (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (value!175500 (h!42593 tokens!494))))) e!2144866)))

(declare-fun b!3462039 () Bool)

(declare-fun inv!50350 (Conc!11255) Bool)

(assert (=> b!3462039 (= e!2144866 (inv!50350 (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (value!175500 (h!42593 tokens!494))))))))

(declare-fun b!3462040 () Bool)

(declare-fun e!2144867 () Bool)

(assert (=> b!3462040 (= e!2144866 e!2144867)))

(declare-fun res!1396881 () Bool)

(assert (=> b!3462040 (= res!1396881 (not ((_ is Leaf!17586) (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (value!175500 (h!42593 tokens!494)))))))))

(assert (=> b!3462040 (=> res!1396881 e!2144867)))

(declare-fun b!3462041 () Bool)

(declare-fun inv!50351 (Conc!11255) Bool)

(assert (=> b!3462041 (= e!2144867 (inv!50351 (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (value!175500 (h!42593 tokens!494))))))))

(assert (= (and d!996493 c!592725) b!3462039))

(assert (= (and d!996493 (not c!592725)) b!3462040))

(assert (= (and b!3462040 (not res!1396881)) b!3462041))

(declare-fun m!3865625 () Bool)

(assert (=> b!3462039 m!3865625))

(declare-fun m!3865627 () Bool)

(assert (=> b!3462041 m!3865627))

(assert (=> b!3461129 d!996493))

(declare-fun b!3462064 () Bool)

(declare-fun res!1396896 () Bool)

(declare-fun e!2144878 () Bool)

(assert (=> b!3462064 (=> (not res!1396896) (not e!2144878))))

(assert (=> b!3462064 (= res!1396896 (isBalanced!3417 (left!29006 (c!592552 lt!1176801))))))

(declare-fun b!3462065 () Bool)

(assert (=> b!3462065 (= e!2144878 (not (isEmpty!21537 (right!29336 (c!592552 lt!1176801)))))))

(declare-fun b!3462066 () Bool)

(declare-fun e!2144879 () Bool)

(assert (=> b!3462066 (= e!2144879 e!2144878)))

(declare-fun res!1396900 () Bool)

(assert (=> b!3462066 (=> (not res!1396900) (not e!2144878))))

(declare-fun height!1697 (Conc!11256) Int)

(assert (=> b!3462066 (= res!1396900 (<= (- 1) (- (height!1697 (left!29006 (c!592552 lt!1176801))) (height!1697 (right!29336 (c!592552 lt!1176801))))))))

(declare-fun b!3462067 () Bool)

(declare-fun res!1396901 () Bool)

(assert (=> b!3462067 (=> (not res!1396901) (not e!2144878))))

(assert (=> b!3462067 (= res!1396901 (isBalanced!3417 (right!29336 (c!592552 lt!1176801))))))

(declare-fun d!996495 () Bool)

(declare-fun res!1396899 () Bool)

(assert (=> d!996495 (=> res!1396899 e!2144879)))

(assert (=> d!996495 (= res!1396899 (not ((_ is Node!11256) (c!592552 lt!1176801))))))

(assert (=> d!996495 (= (isBalanced!3417 (c!592552 lt!1176801)) e!2144879)))

(declare-fun b!3462068 () Bool)

(declare-fun res!1396897 () Bool)

(assert (=> b!3462068 (=> (not res!1396897) (not e!2144878))))

(assert (=> b!3462068 (= res!1396897 (not (isEmpty!21537 (left!29006 (c!592552 lt!1176801)))))))

(declare-fun b!3462069 () Bool)

(declare-fun res!1396898 () Bool)

(assert (=> b!3462069 (=> (not res!1396898) (not e!2144878))))

(assert (=> b!3462069 (= res!1396898 (<= (- (height!1697 (left!29006 (c!592552 lt!1176801))) (height!1697 (right!29336 (c!592552 lt!1176801)))) 1))))

(assert (= (and d!996495 (not res!1396899)) b!3462066))

(assert (= (and b!3462066 res!1396900) b!3462069))

(assert (= (and b!3462069 res!1396898) b!3462064))

(assert (= (and b!3462064 res!1396896) b!3462067))

(assert (= (and b!3462067 res!1396901) b!3462068))

(assert (= (and b!3462068 res!1396897) b!3462065))

(declare-fun m!3865629 () Bool)

(assert (=> b!3462065 m!3865629))

(declare-fun m!3865631 () Bool)

(assert (=> b!3462066 m!3865631))

(declare-fun m!3865633 () Bool)

(assert (=> b!3462066 m!3865633))

(declare-fun m!3865635 () Bool)

(assert (=> b!3462067 m!3865635))

(assert (=> b!3462069 m!3865631))

(assert (=> b!3462069 m!3865633))

(declare-fun m!3865637 () Bool)

(assert (=> b!3462064 m!3865637))

(declare-fun m!3865639 () Bool)

(assert (=> b!3462068 m!3865639))

(assert (=> b!3461529 d!996495))

(declare-fun b!3462070 () Bool)

(declare-fun res!1396906 () Bool)

(declare-fun e!2144884 () Bool)

(assert (=> b!3462070 (=> (not res!1396906) (not e!2144884))))

(declare-fun call!249651 () Bool)

(assert (=> b!3462070 (= res!1396906 (not call!249651))))

(declare-fun b!3462071 () Bool)

(declare-fun res!1396904 () Bool)

(declare-fun e!2144886 () Bool)

(assert (=> b!3462071 (=> res!1396904 e!2144886)))

(assert (=> b!3462071 (= res!1396904 e!2144884)))

(declare-fun res!1396905 () Bool)

(assert (=> b!3462071 (=> (not res!1396905) (not e!2144884))))

(declare-fun lt!1176991 () Bool)

(assert (=> b!3462071 (= res!1396905 lt!1176991)))

(declare-fun b!3462072 () Bool)

(declare-fun e!2144880 () Bool)

(assert (=> b!3462072 (= e!2144880 (= lt!1176991 call!249651))))

(declare-fun b!3462073 () Bool)

(declare-fun e!2144883 () Bool)

(declare-fun e!2144881 () Bool)

(assert (=> b!3462073 (= e!2144883 e!2144881)))

(declare-fun res!1396907 () Bool)

(assert (=> b!3462073 (=> res!1396907 e!2144881)))

(assert (=> b!3462073 (= res!1396907 call!249651)))

(declare-fun b!3462074 () Bool)

(declare-fun e!2144882 () Bool)

(assert (=> b!3462074 (= e!2144882 (nullable!3489 (regex!5440 (rule!8032 (_1!21583 (get!11899 lt!1176668))))))))

(declare-fun b!3462075 () Bool)

(declare-fun res!1396902 () Bool)

(assert (=> b!3462075 (=> (not res!1396902) (not e!2144884))))

(assert (=> b!3462075 (= res!1396902 (isEmpty!21528 (tail!5434 (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1176668)))))))))

(declare-fun b!3462076 () Bool)

(declare-fun e!2144885 () Bool)

(assert (=> b!3462076 (= e!2144880 e!2144885)))

(declare-fun c!592730 () Bool)

(assert (=> b!3462076 (= c!592730 ((_ is EmptyLang!10199) (regex!5440 (rule!8032 (_1!21583 (get!11899 lt!1176668))))))))

(declare-fun b!3462077 () Bool)

(declare-fun res!1396903 () Bool)

(assert (=> b!3462077 (=> res!1396903 e!2144886)))

(assert (=> b!3462077 (= res!1396903 (not ((_ is ElementMatch!10199) (regex!5440 (rule!8032 (_1!21583 (get!11899 lt!1176668)))))))))

(assert (=> b!3462077 (= e!2144885 e!2144886)))

(declare-fun b!3462078 () Bool)

(assert (=> b!3462078 (= e!2144886 e!2144883)))

(declare-fun res!1396909 () Bool)

(assert (=> b!3462078 (=> (not res!1396909) (not e!2144883))))

(assert (=> b!3462078 (= res!1396909 (not lt!1176991))))

(declare-fun b!3462079 () Bool)

(assert (=> b!3462079 (= e!2144885 (not lt!1176991))))

(declare-fun b!3462080 () Bool)

(declare-fun res!1396908 () Bool)

(assert (=> b!3462080 (=> res!1396908 e!2144881)))

(assert (=> b!3462080 (= res!1396908 (not (isEmpty!21528 (tail!5434 (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1176668))))))))))

(declare-fun b!3462081 () Bool)

(assert (=> b!3462081 (= e!2144882 (matchR!4783 (derivativeStep!3042 (regex!5440 (rule!8032 (_1!21583 (get!11899 lt!1176668)))) (head!7321 (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1176668)))))) (tail!5434 (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1176668)))))))))

(declare-fun d!996497 () Bool)

(assert (=> d!996497 e!2144880))

(declare-fun c!592731 () Bool)

(assert (=> d!996497 (= c!592731 ((_ is EmptyExpr!10199) (regex!5440 (rule!8032 (_1!21583 (get!11899 lt!1176668))))))))

(assert (=> d!996497 (= lt!1176991 e!2144882)))

(declare-fun c!592732 () Bool)

(assert (=> d!996497 (= c!592732 (isEmpty!21528 (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1176668))))))))

(assert (=> d!996497 (validRegex!4645 (regex!5440 (rule!8032 (_1!21583 (get!11899 lt!1176668)))))))

(assert (=> d!996497 (= (matchR!4783 (regex!5440 (rule!8032 (_1!21583 (get!11899 lt!1176668)))) (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1176668))))) lt!1176991)))

(declare-fun bm!249646 () Bool)

(assert (=> bm!249646 (= call!249651 (isEmpty!21528 (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1176668))))))))

(declare-fun b!3462082 () Bool)

(assert (=> b!3462082 (= e!2144881 (not (= (head!7321 (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1176668))))) (c!592550 (regex!5440 (rule!8032 (_1!21583 (get!11899 lt!1176668))))))))))

(declare-fun b!3462083 () Bool)

(assert (=> b!3462083 (= e!2144884 (= (head!7321 (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1176668))))) (c!592550 (regex!5440 (rule!8032 (_1!21583 (get!11899 lt!1176668)))))))))

(assert (= (and d!996497 c!592732) b!3462074))

(assert (= (and d!996497 (not c!592732)) b!3462081))

(assert (= (and d!996497 c!592731) b!3462072))

(assert (= (and d!996497 (not c!592731)) b!3462076))

(assert (= (and b!3462076 c!592730) b!3462079))

(assert (= (and b!3462076 (not c!592730)) b!3462077))

(assert (= (and b!3462077 (not res!1396903)) b!3462071))

(assert (= (and b!3462071 res!1396905) b!3462070))

(assert (= (and b!3462070 res!1396906) b!3462075))

(assert (= (and b!3462075 res!1396902) b!3462083))

(assert (= (and b!3462071 (not res!1396904)) b!3462078))

(assert (= (and b!3462078 res!1396909) b!3462073))

(assert (= (and b!3462073 (not res!1396907)) b!3462080))

(assert (= (and b!3462080 (not res!1396908)) b!3462082))

(assert (= (or b!3462072 b!3462070 b!3462073) bm!249646))

(assert (=> b!3462081 m!3864287))

(declare-fun m!3865641 () Bool)

(assert (=> b!3462081 m!3865641))

(assert (=> b!3462081 m!3865641))

(declare-fun m!3865643 () Bool)

(assert (=> b!3462081 m!3865643))

(assert (=> b!3462081 m!3864287))

(declare-fun m!3865645 () Bool)

(assert (=> b!3462081 m!3865645))

(assert (=> b!3462081 m!3865643))

(assert (=> b!3462081 m!3865645))

(declare-fun m!3865647 () Bool)

(assert (=> b!3462081 m!3865647))

(assert (=> b!3462083 m!3864287))

(assert (=> b!3462083 m!3865641))

(assert (=> d!996497 m!3864287))

(declare-fun m!3865649 () Bool)

(assert (=> d!996497 m!3865649))

(declare-fun m!3865651 () Bool)

(assert (=> d!996497 m!3865651))

(declare-fun m!3865653 () Bool)

(assert (=> b!3462074 m!3865653))

(assert (=> b!3462082 m!3864287))

(assert (=> b!3462082 m!3865641))

(assert (=> bm!249646 m!3864287))

(assert (=> bm!249646 m!3865649))

(assert (=> b!3462080 m!3864287))

(assert (=> b!3462080 m!3865645))

(assert (=> b!3462080 m!3865645))

(declare-fun m!3865655 () Bool)

(assert (=> b!3462080 m!3865655))

(assert (=> b!3462075 m!3864287))

(assert (=> b!3462075 m!3865645))

(assert (=> b!3462075 m!3865645))

(assert (=> b!3462075 m!3865655))

(assert (=> b!3461230 d!996497))

(declare-fun d!996499 () Bool)

(assert (=> d!996499 (= (get!11899 lt!1176668) (v!36854 lt!1176668))))

(assert (=> b!3461230 d!996499))

(declare-fun d!996501 () Bool)

(assert (=> d!996501 (= (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1176668)))) (list!13536 (c!592551 (charsOf!3454 (_1!21583 (get!11899 lt!1176668))))))))

(declare-fun bs!560526 () Bool)

(assert (= bs!560526 d!996501))

(declare-fun m!3865657 () Bool)

(assert (=> bs!560526 m!3865657))

(assert (=> b!3461230 d!996501))

(declare-fun d!996503 () Bool)

(declare-fun lt!1176995 () BalanceConc!22124)

(assert (=> d!996503 (= (list!13535 lt!1176995) (originalCharacters!6154 (_1!21583 (get!11899 lt!1176668))))))

(assert (=> d!996503 (= lt!1176995 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1176668))))) (value!175500 (_1!21583 (get!11899 lt!1176668)))))))

(assert (=> d!996503 (= (charsOf!3454 (_1!21583 (get!11899 lt!1176668))) lt!1176995)))

(declare-fun b_lambda!99759 () Bool)

(assert (=> (not b_lambda!99759) (not d!996503)))

(declare-fun tb!188807 () Bool)

(declare-fun t!273144 () Bool)

(assert (=> (and b!3461904 (= (toChars!7527 (transformation!5440 (h!42592 (t!273043 rules!2135)))) (toChars!7527 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1176668)))))) t!273144) tb!188807))

(declare-fun b!3462089 () Bool)

(declare-fun e!2144890 () Bool)

(declare-fun tp!1078339 () Bool)

(assert (=> b!3462089 (= e!2144890 (and (inv!50346 (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1176668))))) (value!175500 (_1!21583 (get!11899 lt!1176668)))))) tp!1078339))))

(declare-fun result!232820 () Bool)

(assert (=> tb!188807 (= result!232820 (and (inv!50347 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1176668))))) (value!175500 (_1!21583 (get!11899 lt!1176668))))) e!2144890))))

(assert (= tb!188807 b!3462089))

(declare-fun m!3865671 () Bool)

(assert (=> b!3462089 m!3865671))

(declare-fun m!3865673 () Bool)

(assert (=> tb!188807 m!3865673))

(assert (=> d!996503 t!273144))

(declare-fun b_and!243591 () Bool)

(assert (= b_and!243563 (and (=> t!273144 result!232820) b_and!243591)))

(declare-fun tb!188809 () Bool)

(declare-fun t!273146 () Bool)

(assert (=> (and b!3461090 (= (toChars!7527 (transformation!5440 (h!42592 rules!2135))) (toChars!7527 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1176668)))))) t!273146) tb!188809))

(declare-fun result!232822 () Bool)

(assert (= result!232822 result!232820))

(assert (=> d!996503 t!273146))

(declare-fun b_and!243593 () Bool)

(assert (= b_and!243531 (and (=> t!273146 result!232822) b_and!243593)))

(declare-fun t!273148 () Bool)

(declare-fun tb!188811 () Bool)

(assert (=> (and b!3461881 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (toChars!7527 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1176668)))))) t!273148) tb!188811))

(declare-fun result!232824 () Bool)

(assert (= result!232824 result!232820))

(assert (=> d!996503 t!273148))

(declare-fun b_and!243595 () Bool)

(assert (= b_and!243559 (and (=> t!273148 result!232824) b_and!243595)))

(declare-fun t!273150 () Bool)

(declare-fun tb!188813 () Bool)

(assert (=> (and b!3461104 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (toChars!7527 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1176668)))))) t!273150) tb!188813))

(declare-fun result!232826 () Bool)

(assert (= result!232826 result!232820))

(assert (=> d!996503 t!273150))

(declare-fun b_and!243597 () Bool)

(assert (= b_and!243529 (and (=> t!273150 result!232826) b_and!243597)))

(declare-fun t!273152 () Bool)

(declare-fun tb!188815 () Bool)

(assert (=> (and b!3461071 (= (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))) (toChars!7527 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1176668)))))) t!273152) tb!188815))

(declare-fun result!232828 () Bool)

(assert (= result!232828 result!232820))

(assert (=> d!996503 t!273152))

(declare-fun b_and!243599 () Bool)

(assert (= b_and!243527 (and (=> t!273152 result!232828) b_and!243599)))

(declare-fun m!3865677 () Bool)

(assert (=> d!996503 m!3865677))

(declare-fun m!3865681 () Bool)

(assert (=> d!996503 m!3865681))

(assert (=> b!3461230 d!996503))

(declare-fun lt!1176996 () List!37295)

(declare-fun e!2144892 () Bool)

(declare-fun b!3462093 () Bool)

(assert (=> b!3462093 (= e!2144892 (or (not (= (ite c!592675 call!249638 call!249639) Nil!37171)) (= lt!1176996 (ite c!592675 call!249639 call!249638))))))

(declare-fun b!3462092 () Bool)

(declare-fun res!1396912 () Bool)

(assert (=> b!3462092 (=> (not res!1396912) (not e!2144892))))

(assert (=> b!3462092 (= res!1396912 (= (size!28201 lt!1176996) (+ (size!28201 (ite c!592675 call!249639 call!249638)) (size!28201 (ite c!592675 call!249638 call!249639)))))))

(declare-fun b!3462090 () Bool)

(declare-fun e!2144891 () List!37295)

(assert (=> b!3462090 (= e!2144891 (ite c!592675 call!249638 call!249639))))

(declare-fun b!3462091 () Bool)

(assert (=> b!3462091 (= e!2144891 (Cons!37171 (h!42591 (ite c!592675 call!249639 call!249638)) (++!9165 (t!273042 (ite c!592675 call!249639 call!249638)) (ite c!592675 call!249638 call!249639))))))

(declare-fun d!996511 () Bool)

(assert (=> d!996511 e!2144892))

(declare-fun res!1396911 () Bool)

(assert (=> d!996511 (=> (not res!1396911) (not e!2144892))))

(assert (=> d!996511 (= res!1396911 (= (content!5190 lt!1176996) ((_ map or) (content!5190 (ite c!592675 call!249639 call!249638)) (content!5190 (ite c!592675 call!249638 call!249639)))))))

(assert (=> d!996511 (= lt!1176996 e!2144891)))

(declare-fun c!592735 () Bool)

(assert (=> d!996511 (= c!592735 ((_ is Nil!37171) (ite c!592675 call!249639 call!249638)))))

(assert (=> d!996511 (= (++!9165 (ite c!592675 call!249639 call!249638) (ite c!592675 call!249638 call!249639)) lt!1176996)))

(assert (= (and d!996511 c!592735) b!3462090))

(assert (= (and d!996511 (not c!592735)) b!3462091))

(assert (= (and d!996511 res!1396911) b!3462092))

(assert (= (and b!3462092 res!1396912) b!3462093))

(declare-fun m!3865683 () Bool)

(assert (=> b!3462092 m!3865683))

(declare-fun m!3865685 () Bool)

(assert (=> b!3462092 m!3865685))

(declare-fun m!3865687 () Bool)

(assert (=> b!3462092 m!3865687))

(declare-fun m!3865689 () Bool)

(assert (=> b!3462091 m!3865689))

(declare-fun m!3865691 () Bool)

(assert (=> d!996511 m!3865691))

(declare-fun m!3865693 () Bool)

(assert (=> d!996511 m!3865693))

(declare-fun m!3865695 () Bool)

(assert (=> d!996511 m!3865695))

(assert (=> bm!249633 d!996511))

(declare-fun d!996513 () Bool)

(assert (=> d!996513 (dynLambda!15668 lambda!121860 (h!42593 (t!273044 tokens!494)))))

(assert (=> d!996513 true))

(declare-fun _$7!1302 () Unit!52520)

(assert (=> d!996513 (= (choose!20016 tokens!494 lambda!121860 (h!42593 (t!273044 tokens!494))) _$7!1302)))

(declare-fun b_lambda!99761 () Bool)

(assert (=> (not b_lambda!99761) (not d!996513)))

(declare-fun bs!560529 () Bool)

(assert (= bs!560529 d!996513))

(assert (=> bs!560529 m!3864305))

(assert (=> d!996143 d!996513))

(assert (=> d!996143 d!996155))

(declare-fun d!996515 () Bool)

(declare-fun e!2144897 () Bool)

(assert (=> d!996515 e!2144897))

(declare-fun res!1396917 () Bool)

(assert (=> d!996515 (=> (not res!1396917) (not e!2144897))))

(declare-fun lt!1176999 () BalanceConc!22124)

(assert (=> d!996515 (= res!1396917 (= (list!13535 lt!1176999) lt!1176597))))

(declare-fun fromList!746 (List!37295) Conc!11255)

(assert (=> d!996515 (= lt!1176999 (BalanceConc!22125 (fromList!746 lt!1176597)))))

(assert (=> d!996515 (= (fromListB!1785 lt!1176597) lt!1176999)))

(declare-fun b!3462098 () Bool)

(declare-fun isBalanced!3418 (Conc!11255) Bool)

(assert (=> b!3462098 (= e!2144897 (isBalanced!3418 (fromList!746 lt!1176597)))))

(assert (= (and d!996515 res!1396917) b!3462098))

(declare-fun m!3865697 () Bool)

(assert (=> d!996515 m!3865697))

(declare-fun m!3865699 () Bool)

(assert (=> d!996515 m!3865699))

(assert (=> b!3462098 m!3865699))

(assert (=> b!3462098 m!3865699))

(declare-fun m!3865701 () Bool)

(assert (=> b!3462098 m!3865701))

(assert (=> d!996233 d!996515))

(declare-fun b!3462099 () Bool)

(declare-fun e!2144900 () Bool)

(declare-fun e!2144898 () Bool)

(assert (=> b!3462099 (= e!2144900 e!2144898)))

(declare-fun c!592738 () Bool)

(assert (=> b!3462099 (= c!592738 ((_ is IntegerValue!17011) (dynLambda!15672 (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) lt!1176613)))))

(declare-fun b!3462100 () Bool)

(declare-fun e!2144899 () Bool)

(assert (=> b!3462100 (= e!2144899 (inv!15 (dynLambda!15672 (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) lt!1176613)))))

(declare-fun d!996517 () Bool)

(declare-fun c!592737 () Bool)

(assert (=> d!996517 (= c!592737 ((_ is IntegerValue!17010) (dynLambda!15672 (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) lt!1176613)))))

(assert (=> d!996517 (= (inv!21 (dynLambda!15672 (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) lt!1176613)) e!2144900)))

(declare-fun b!3462101 () Bool)

(assert (=> b!3462101 (= e!2144898 (inv!17 (dynLambda!15672 (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) lt!1176613)))))

(declare-fun b!3462102 () Bool)

(assert (=> b!3462102 (= e!2144900 (inv!16 (dynLambda!15672 (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) lt!1176613)))))

(declare-fun b!3462103 () Bool)

(declare-fun res!1396918 () Bool)

(assert (=> b!3462103 (=> res!1396918 e!2144899)))

(assert (=> b!3462103 (= res!1396918 (not ((_ is IntegerValue!17012) (dynLambda!15672 (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) lt!1176613))))))

(assert (=> b!3462103 (= e!2144898 e!2144899)))

(assert (= (and d!996517 c!592737) b!3462102))

(assert (= (and d!996517 (not c!592737)) b!3462099))

(assert (= (and b!3462099 c!592738) b!3462101))

(assert (= (and b!3462099 (not c!592738)) b!3462103))

(assert (= (and b!3462103 (not res!1396918)) b!3462100))

(declare-fun m!3865703 () Bool)

(assert (=> b!3462100 m!3865703))

(declare-fun m!3865705 () Bool)

(assert (=> b!3462101 m!3865705))

(declare-fun m!3865707 () Bool)

(assert (=> b!3462102 m!3865707))

(assert (=> tb!188751 d!996517))

(declare-fun d!996519 () Bool)

(assert (=> d!996519 true))

(declare-fun order!19813 () Int)

(declare-fun lambda!121877 () Int)

(declare-fun dynLambda!15674 (Int Int) Int)

(assert (=> d!996519 (< (dynLambda!15666 order!19809 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) (dynLambda!15674 order!19813 lambda!121877))))

(assert (=> d!996519 true))

(assert (=> d!996519 (< (dynLambda!15664 order!19805 (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) (dynLambda!15674 order!19813 lambda!121877))))

(declare-fun Forall!1338 (Int) Bool)

(assert (=> d!996519 (= (semiInverseModEq!2284 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) (Forall!1338 lambda!121877))))

(declare-fun bs!560531 () Bool)

(assert (= bs!560531 d!996519))

(declare-fun m!3865711 () Bool)

(assert (=> bs!560531 m!3865711))

(assert (=> d!996125 d!996519))

(declare-fun d!996523 () Bool)

(assert (=> d!996523 (= (isEmpty!21538 lt!1176601) (not ((_ is Some!7529) lt!1176601)))))

(assert (=> d!996277 d!996523))

(declare-fun d!996529 () Bool)

(assert (=> d!996529 (= (list!13535 (_2!21582 lt!1176840)) (list!13536 (c!592551 (_2!21582 lt!1176840))))))

(declare-fun bs!560534 () Bool)

(assert (= bs!560534 d!996529))

(declare-fun m!3865721 () Bool)

(assert (=> bs!560534 m!3865721))

(assert (=> b!3461610 d!996529))

(declare-fun b!3462139 () Bool)

(declare-fun e!2144918 () Bool)

(declare-fun lt!1177014 () tuple2!36904)

(assert (=> b!3462139 (= e!2144918 (= (_2!21586 lt!1177014) (list!13535 lt!1176617)))))

(declare-fun b!3462140 () Bool)

(declare-fun e!2144919 () tuple2!36904)

(declare-fun lt!1177015 () Option!7529)

(declare-fun lt!1177013 () tuple2!36904)

(assert (=> b!3462140 (= e!2144919 (tuple2!36905 (Cons!37173 (_1!21583 (v!36854 lt!1177015)) (_1!21586 lt!1177013)) (_2!21586 lt!1177013)))))

(assert (=> b!3462140 (= lt!1177013 (lexList!1450 thiss!18206 rules!2135 (_2!21583 (v!36854 lt!1177015))))))

(declare-fun b!3462141 () Bool)

(assert (=> b!3462141 (= e!2144919 (tuple2!36905 Nil!37173 (list!13535 lt!1176617)))))

(declare-fun b!3462142 () Bool)

(declare-fun e!2144920 () Bool)

(assert (=> b!3462142 (= e!2144918 e!2144920)))

(declare-fun res!1396934 () Bool)

(assert (=> b!3462142 (= res!1396934 (< (size!28201 (_2!21586 lt!1177014)) (size!28201 (list!13535 lt!1176617))))))

(assert (=> b!3462142 (=> (not res!1396934) (not e!2144920))))

(declare-fun b!3462143 () Bool)

(assert (=> b!3462143 (= e!2144920 (not (isEmpty!21536 (_1!21586 lt!1177014))))))

(declare-fun d!996531 () Bool)

(assert (=> d!996531 e!2144918))

(declare-fun c!592747 () Bool)

(assert (=> d!996531 (= c!592747 (> (size!28206 (_1!21586 lt!1177014)) 0))))

(assert (=> d!996531 (= lt!1177014 e!2144919)))

(declare-fun c!592746 () Bool)

(assert (=> d!996531 (= c!592746 ((_ is Some!7528) lt!1177015))))

(assert (=> d!996531 (= lt!1177015 (maxPrefix!2569 thiss!18206 rules!2135 (list!13535 lt!1176617)))))

(assert (=> d!996531 (= (lexList!1450 thiss!18206 rules!2135 (list!13535 lt!1176617)) lt!1177014)))

(assert (= (and d!996531 c!592746) b!3462140))

(assert (= (and d!996531 (not c!592746)) b!3462141))

(assert (= (and d!996531 c!592747) b!3462142))

(assert (= (and d!996531 (not c!592747)) b!3462139))

(assert (= (and b!3462142 res!1396934) b!3462143))

(declare-fun m!3865759 () Bool)

(assert (=> b!3462140 m!3865759))

(declare-fun m!3865761 () Bool)

(assert (=> b!3462142 m!3865761))

(assert (=> b!3462142 m!3864937))

(declare-fun m!3865763 () Bool)

(assert (=> b!3462142 m!3865763))

(declare-fun m!3865765 () Bool)

(assert (=> b!3462143 m!3865765))

(declare-fun m!3865767 () Bool)

(assert (=> d!996531 m!3865767))

(assert (=> d!996531 m!3864937))

(declare-fun m!3865769 () Bool)

(assert (=> d!996531 m!3865769))

(assert (=> b!3461610 d!996531))

(declare-fun d!996549 () Bool)

(assert (=> d!996549 (= (list!13535 lt!1176617) (list!13536 (c!592551 lt!1176617)))))

(declare-fun bs!560537 () Bool)

(assert (= bs!560537 d!996549))

(declare-fun m!3865771 () Bool)

(assert (=> bs!560537 m!3865771))

(assert (=> b!3461610 d!996549))

(declare-fun d!996551 () Bool)

(declare-fun res!1396939 () Bool)

(declare-fun e!2144925 () Bool)

(assert (=> d!996551 (=> res!1396939 e!2144925)))

(assert (=> d!996551 (= res!1396939 ((_ is Nil!37172) rules!2135))))

(assert (=> d!996551 (= (noDuplicateTag!2040 thiss!18206 rules!2135 Nil!37174) e!2144925)))

(declare-fun b!3462148 () Bool)

(declare-fun e!2144926 () Bool)

(assert (=> b!3462148 (= e!2144925 e!2144926)))

(declare-fun res!1396940 () Bool)

(assert (=> b!3462148 (=> (not res!1396940) (not e!2144926))))

(declare-fun contains!6899 (List!37298 String!41684) Bool)

(assert (=> b!3462148 (= res!1396940 (not (contains!6899 Nil!37174 (tag!6050 (h!42592 rules!2135)))))))

(declare-fun b!3462149 () Bool)

(assert (=> b!3462149 (= e!2144926 (noDuplicateTag!2040 thiss!18206 (t!273043 rules!2135) (Cons!37174 (tag!6050 (h!42592 rules!2135)) Nil!37174)))))

(assert (= (and d!996551 (not res!1396939)) b!3462148))

(assert (= (and b!3462148 res!1396940) b!3462149))

(declare-fun m!3865773 () Bool)

(assert (=> b!3462148 m!3865773))

(declare-fun m!3865775 () Bool)

(assert (=> b!3462149 m!3865775))

(assert (=> b!3461250 d!996551))

(declare-fun d!996553 () Bool)

(assert (=> d!996553 (= (get!11898 lt!1176793) (v!36855 lt!1176793))))

(assert (=> b!3461512 d!996553))

(declare-fun d!996555 () Bool)

(declare-fun lt!1177018 () Token!10246)

(assert (=> d!996555 (contains!6897 (list!13537 (_1!21582 lt!1176604)) lt!1177018)))

(declare-fun e!2144932 () Token!10246)

(assert (=> d!996555 (= lt!1177018 e!2144932)))

(declare-fun c!592750 () Bool)

(assert (=> d!996555 (= c!592750 (= 0 0))))

(declare-fun e!2144931 () Bool)

(assert (=> d!996555 e!2144931))

(declare-fun res!1396943 () Bool)

(assert (=> d!996555 (=> (not res!1396943) (not e!2144931))))

(assert (=> d!996555 (= res!1396943 (<= 0 0))))

(assert (=> d!996555 (= (apply!8758 (list!13537 (_1!21582 lt!1176604)) 0) lt!1177018)))

(declare-fun b!3462156 () Bool)

(assert (=> b!3462156 (= e!2144931 (< 0 (size!28206 (list!13537 (_1!21582 lt!1176604)))))))

(declare-fun b!3462157 () Bool)

(assert (=> b!3462157 (= e!2144932 (head!7322 (list!13537 (_1!21582 lt!1176604))))))

(declare-fun b!3462158 () Bool)

(assert (=> b!3462158 (= e!2144932 (apply!8758 (tail!5435 (list!13537 (_1!21582 lt!1176604))) (- 0 1)))))

(assert (= (and d!996555 res!1396943) b!3462156))

(assert (= (and d!996555 c!592750) b!3462157))

(assert (= (and d!996555 (not c!592750)) b!3462158))

(assert (=> d!996555 m!3864383))

(declare-fun m!3865777 () Bool)

(assert (=> d!996555 m!3865777))

(assert (=> b!3462156 m!3864383))

(assert (=> b!3462156 m!3865065))

(assert (=> b!3462157 m!3864383))

(declare-fun m!3865779 () Bool)

(assert (=> b!3462157 m!3865779))

(assert (=> b!3462158 m!3864383))

(declare-fun m!3865781 () Bool)

(assert (=> b!3462158 m!3865781))

(assert (=> b!3462158 m!3865781))

(declare-fun m!3865783 () Bool)

(assert (=> b!3462158 m!3865783))

(assert (=> d!996169 d!996555))

(declare-fun d!996557 () Bool)

(assert (=> d!996557 (= (list!13537 (_1!21582 lt!1176604)) (list!13541 (c!592552 (_1!21582 lt!1176604))))))

(declare-fun bs!560538 () Bool)

(assert (= bs!560538 d!996557))

(declare-fun m!3865785 () Bool)

(assert (=> bs!560538 m!3865785))

(assert (=> d!996169 d!996557))

(declare-fun d!996559 () Bool)

(declare-fun lt!1177024 () Token!10246)

(assert (=> d!996559 (= lt!1177024 (apply!8758 (list!13541 (c!592552 (_1!21582 lt!1176604))) 0))))

(declare-fun e!2144941 () Token!10246)

(assert (=> d!996559 (= lt!1177024 e!2144941)))

(declare-fun c!592758 () Bool)

(assert (=> d!996559 (= c!592758 ((_ is Leaf!17587) (c!592552 (_1!21582 lt!1176604))))))

(declare-fun e!2144942 () Bool)

(assert (=> d!996559 e!2144942))

(declare-fun res!1396946 () Bool)

(assert (=> d!996559 (=> (not res!1396946) (not e!2144942))))

(assert (=> d!996559 (= res!1396946 (<= 0 0))))

(assert (=> d!996559 (= (apply!8759 (c!592552 (_1!21582 lt!1176604)) 0) lt!1177024)))

(declare-fun b!3462173 () Bool)

(declare-fun e!2144944 () Token!10246)

(declare-fun call!249655 () Token!10246)

(assert (=> b!3462173 (= e!2144944 call!249655)))

(declare-fun bm!249650 () Bool)

(declare-fun c!592757 () Bool)

(declare-fun c!592759 () Bool)

(assert (=> bm!249650 (= c!592757 c!592759)))

(declare-fun e!2144943 () Int)

(assert (=> bm!249650 (= call!249655 (apply!8759 (ite c!592759 (left!29006 (c!592552 (_1!21582 lt!1176604))) (right!29336 (c!592552 (_1!21582 lt!1176604)))) e!2144943))))

(declare-fun b!3462174 () Bool)

(assert (=> b!3462174 (= e!2144943 0)))

(declare-fun b!3462175 () Bool)

(assert (=> b!3462175 (= e!2144942 (< 0 (size!28207 (c!592552 (_1!21582 lt!1176604)))))))

(declare-fun b!3462176 () Bool)

(assert (=> b!3462176 (= e!2144941 e!2144944)))

(declare-fun lt!1177023 () Bool)

(declare-fun appendIndex!345 (List!37297 List!37297 Int) Bool)

(assert (=> b!3462176 (= lt!1177023 (appendIndex!345 (list!13541 (left!29006 (c!592552 (_1!21582 lt!1176604)))) (list!13541 (right!29336 (c!592552 (_1!21582 lt!1176604)))) 0))))

(assert (=> b!3462176 (= c!592759 (< 0 (size!28207 (left!29006 (c!592552 (_1!21582 lt!1176604))))))))

(declare-fun b!3462177 () Bool)

(assert (=> b!3462177 (= e!2144943 (- 0 (size!28207 (left!29006 (c!592552 (_1!21582 lt!1176604))))))))

(declare-fun b!3462178 () Bool)

(assert (=> b!3462178 (= e!2144944 call!249655)))

(declare-fun b!3462179 () Bool)

(declare-fun apply!8762 (IArray!22517 Int) Token!10246)

(assert (=> b!3462179 (= e!2144941 (apply!8762 (xs!14430 (c!592552 (_1!21582 lt!1176604))) 0))))

(assert (= (and d!996559 res!1396946) b!3462175))

(assert (= (and d!996559 c!592758) b!3462179))

(assert (= (and d!996559 (not c!592758)) b!3462176))

(assert (= (and b!3462176 c!592759) b!3462178))

(assert (= (and b!3462176 (not c!592759)) b!3462173))

(assert (= (or b!3462178 b!3462173) bm!249650))

(assert (= (and bm!249650 c!592757) b!3462174))

(assert (= (and bm!249650 (not c!592757)) b!3462177))

(declare-fun m!3865787 () Bool)

(assert (=> b!3462177 m!3865787))

(assert (=> d!996559 m!3865785))

(assert (=> d!996559 m!3865785))

(declare-fun m!3865789 () Bool)

(assert (=> d!996559 m!3865789))

(declare-fun m!3865791 () Bool)

(assert (=> b!3462179 m!3865791))

(declare-fun m!3865793 () Bool)

(assert (=> b!3462176 m!3865793))

(declare-fun m!3865795 () Bool)

(assert (=> b!3462176 m!3865795))

(assert (=> b!3462176 m!3865793))

(assert (=> b!3462176 m!3865795))

(declare-fun m!3865797 () Bool)

(assert (=> b!3462176 m!3865797))

(assert (=> b!3462176 m!3865787))

(assert (=> b!3462175 m!3865067))

(declare-fun m!3865799 () Bool)

(assert (=> bm!249650 m!3865799))

(assert (=> d!996169 d!996559))

(declare-fun d!996561 () Bool)

(declare-fun lt!1177025 () Int)

(assert (=> d!996561 (>= lt!1177025 0)))

(declare-fun e!2144945 () Int)

(assert (=> d!996561 (= lt!1177025 e!2144945)))

(declare-fun c!592760 () Bool)

(assert (=> d!996561 (= c!592760 ((_ is Nil!37171) lt!1176691))))

(assert (=> d!996561 (= (size!28201 lt!1176691) lt!1177025)))

(declare-fun b!3462180 () Bool)

(assert (=> b!3462180 (= e!2144945 0)))

(declare-fun b!3462181 () Bool)

(assert (=> b!3462181 (= e!2144945 (+ 1 (size!28201 (t!273042 lt!1176691))))))

(assert (= (and d!996561 c!592760) b!3462180))

(assert (= (and d!996561 (not c!592760)) b!3462181))

(declare-fun m!3865801 () Bool)

(assert (=> b!3462181 m!3865801))

(assert (=> b!3461352 d!996561))

(declare-fun d!996563 () Bool)

(declare-fun lt!1177026 () Int)

(assert (=> d!996563 (>= lt!1177026 0)))

(declare-fun e!2144946 () Int)

(assert (=> d!996563 (= lt!1177026 e!2144946)))

(declare-fun c!592761 () Bool)

(assert (=> d!996563 (= c!592761 ((_ is Nil!37171) (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494))))))))

(assert (=> d!996563 (= (size!28201 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494))))) lt!1177026)))

(declare-fun b!3462182 () Bool)

(assert (=> b!3462182 (= e!2144946 0)))

(declare-fun b!3462183 () Bool)

(assert (=> b!3462183 (= e!2144946 (+ 1 (size!28201 (t!273042 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494))))))))))

(assert (= (and d!996563 c!592761) b!3462182))

(assert (= (and d!996563 (not c!592761)) b!3462183))

(declare-fun m!3865803 () Bool)

(assert (=> b!3462183 m!3865803))

(assert (=> b!3461352 d!996563))

(declare-fun d!996565 () Bool)

(declare-fun lt!1177027 () Int)

(assert (=> d!996565 (>= lt!1177027 0)))

(declare-fun e!2144947 () Int)

(assert (=> d!996565 (= lt!1177027 e!2144947)))

(declare-fun c!592762 () Bool)

(assert (=> d!996565 (= c!592762 ((_ is Nil!37171) lt!1176614))))

(assert (=> d!996565 (= (size!28201 lt!1176614) lt!1177027)))

(declare-fun b!3462184 () Bool)

(assert (=> b!3462184 (= e!2144947 0)))

(declare-fun b!3462185 () Bool)

(assert (=> b!3462185 (= e!2144947 (+ 1 (size!28201 (t!273042 lt!1176614))))))

(assert (= (and d!996565 c!592762) b!3462184))

(assert (= (and d!996565 (not c!592762)) b!3462185))

(declare-fun m!3865805 () Bool)

(assert (=> b!3462185 m!3865805))

(assert (=> b!3461352 d!996565))

(declare-fun e!2144949 () Bool)

(declare-fun b!3462189 () Bool)

(declare-fun lt!1177028 () List!37295)

(assert (=> b!3462189 (= e!2144949 (or (not (= (list!13535 (charsOf!3454 separatorToken!241)) Nil!37171)) (= lt!1177028 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494)))))))))

(declare-fun b!3462188 () Bool)

(declare-fun res!1396948 () Bool)

(assert (=> b!3462188 (=> (not res!1396948) (not e!2144949))))

(assert (=> b!3462188 (= res!1396948 (= (size!28201 lt!1177028) (+ (size!28201 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494))))) (size!28201 (list!13535 (charsOf!3454 separatorToken!241))))))))

(declare-fun b!3462186 () Bool)

(declare-fun e!2144948 () List!37295)

(assert (=> b!3462186 (= e!2144948 (list!13535 (charsOf!3454 separatorToken!241)))))

(declare-fun b!3462187 () Bool)

(assert (=> b!3462187 (= e!2144948 (Cons!37171 (h!42591 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494))))) (++!9165 (t!273042 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494))))) (list!13535 (charsOf!3454 separatorToken!241)))))))

(declare-fun d!996567 () Bool)

(assert (=> d!996567 e!2144949))

(declare-fun res!1396947 () Bool)

(assert (=> d!996567 (=> (not res!1396947) (not e!2144949))))

(assert (=> d!996567 (= res!1396947 (= (content!5190 lt!1177028) ((_ map or) (content!5190 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494))))) (content!5190 (list!13535 (charsOf!3454 separatorToken!241))))))))

(assert (=> d!996567 (= lt!1177028 e!2144948)))

(declare-fun c!592763 () Bool)

(assert (=> d!996567 (= c!592763 ((_ is Nil!37171) (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494))))))))

(assert (=> d!996567 (= (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494)))) (list!13535 (charsOf!3454 separatorToken!241))) lt!1177028)))

(assert (= (and d!996567 c!592763) b!3462186))

(assert (= (and d!996567 (not c!592763)) b!3462187))

(assert (= (and d!996567 res!1396947) b!3462188))

(assert (= (and b!3462188 res!1396948) b!3462189))

(declare-fun m!3865807 () Bool)

(assert (=> b!3462188 m!3865807))

(assert (=> b!3462188 m!3864135))

(assert (=> b!3462188 m!3864467))

(assert (=> b!3462188 m!3864149))

(declare-fun m!3865809 () Bool)

(assert (=> b!3462188 m!3865809))

(assert (=> b!3462187 m!3864149))

(declare-fun m!3865811 () Bool)

(assert (=> b!3462187 m!3865811))

(declare-fun m!3865813 () Bool)

(assert (=> d!996567 m!3865813))

(assert (=> d!996567 m!3864135))

(assert (=> d!996567 m!3864473))

(assert (=> d!996567 m!3864149))

(declare-fun m!3865815 () Bool)

(assert (=> d!996567 m!3865815))

(assert (=> b!3461356 d!996567))

(assert (=> b!3461356 d!996193))

(assert (=> b!3461356 d!996189))

(assert (=> b!3461356 d!996191))

(declare-fun e!2144951 () Bool)

(declare-fun b!3462193 () Bool)

(declare-fun lt!1177029 () List!37295)

(assert (=> b!3462193 (= e!2144951 (or (not (= (printWithSeparatorTokenList!316 thiss!18206 (t!273044 (t!273044 tokens!494)) separatorToken!241) Nil!37171)) (= lt!1177029 (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494)))) (list!13535 (charsOf!3454 separatorToken!241))))))))

(declare-fun b!3462192 () Bool)

(declare-fun res!1396950 () Bool)

(assert (=> b!3462192 (=> (not res!1396950) (not e!2144951))))

(assert (=> b!3462192 (= res!1396950 (= (size!28201 lt!1177029) (+ (size!28201 (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494)))) (list!13535 (charsOf!3454 separatorToken!241)))) (size!28201 (printWithSeparatorTokenList!316 thiss!18206 (t!273044 (t!273044 tokens!494)) separatorToken!241)))))))

(declare-fun e!2144950 () List!37295)

(declare-fun b!3462190 () Bool)

(assert (=> b!3462190 (= e!2144950 (printWithSeparatorTokenList!316 thiss!18206 (t!273044 (t!273044 tokens!494)) separatorToken!241))))

(declare-fun b!3462191 () Bool)

(assert (=> b!3462191 (= e!2144950 (Cons!37171 (h!42591 (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494)))) (list!13535 (charsOf!3454 separatorToken!241)))) (++!9165 (t!273042 (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494)))) (list!13535 (charsOf!3454 separatorToken!241)))) (printWithSeparatorTokenList!316 thiss!18206 (t!273044 (t!273044 tokens!494)) separatorToken!241))))))

(declare-fun d!996569 () Bool)

(assert (=> d!996569 e!2144951))

(declare-fun res!1396949 () Bool)

(assert (=> d!996569 (=> (not res!1396949) (not e!2144951))))

(assert (=> d!996569 (= res!1396949 (= (content!5190 lt!1177029) ((_ map or) (content!5190 (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494)))) (list!13535 (charsOf!3454 separatorToken!241)))) (content!5190 (printWithSeparatorTokenList!316 thiss!18206 (t!273044 (t!273044 tokens!494)) separatorToken!241)))))))

(assert (=> d!996569 (= lt!1177029 e!2144950)))

(declare-fun c!592764 () Bool)

(assert (=> d!996569 (= c!592764 ((_ is Nil!37171) (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494)))) (list!13535 (charsOf!3454 separatorToken!241)))))))

(assert (=> d!996569 (= (++!9165 (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494)))) (list!13535 (charsOf!3454 separatorToken!241))) (printWithSeparatorTokenList!316 thiss!18206 (t!273044 (t!273044 tokens!494)) separatorToken!241)) lt!1177029)))

(assert (= (and d!996569 c!592764) b!3462190))

(assert (= (and d!996569 (not c!592764)) b!3462191))

(assert (= (and d!996569 res!1396949) b!3462192))

(assert (= (and b!3462192 res!1396950) b!3462193))

(declare-fun m!3865817 () Bool)

(assert (=> b!3462192 m!3865817))

(assert (=> b!3462192 m!3864489))

(declare-fun m!3865819 () Bool)

(assert (=> b!3462192 m!3865819))

(assert (=> b!3462192 m!3864147))

(assert (=> b!3462192 m!3864455))

(assert (=> b!3462191 m!3864147))

(declare-fun m!3865821 () Bool)

(assert (=> b!3462191 m!3865821))

(declare-fun m!3865823 () Bool)

(assert (=> d!996569 m!3865823))

(assert (=> d!996569 m!3864489))

(declare-fun m!3865825 () Bool)

(assert (=> d!996569 m!3865825))

(assert (=> d!996569 m!3864147))

(assert (=> d!996569 m!3864463))

(assert (=> b!3461356 d!996569))

(assert (=> b!3461356 d!996197))

(assert (=> b!3461356 d!996199))

(declare-fun d!996571 () Bool)

(declare-fun c!592767 () Bool)

(assert (=> d!996571 (= c!592767 ((_ is Nil!37171) (usedCharacters!674 (regex!5440 (rule!8032 (h!42593 tokens!494))))))))

(declare-fun e!2144954 () (InoxSet C!20584))

(assert (=> d!996571 (= (content!5190 (usedCharacters!674 (regex!5440 (rule!8032 (h!42593 tokens!494))))) e!2144954)))

(declare-fun b!3462198 () Bool)

(assert (=> b!3462198 (= e!2144954 ((as const (Array C!20584 Bool)) false))))

(declare-fun b!3462199 () Bool)

(assert (=> b!3462199 (= e!2144954 ((_ map or) (store ((as const (Array C!20584 Bool)) false) (h!42591 (usedCharacters!674 (regex!5440 (rule!8032 (h!42593 tokens!494))))) true) (content!5190 (t!273042 (usedCharacters!674 (regex!5440 (rule!8032 (h!42593 tokens!494))))))))))

(assert (= (and d!996571 c!592767) b!3462198))

(assert (= (and d!996571 (not c!592767)) b!3462199))

(declare-fun m!3865827 () Bool)

(assert (=> b!3462199 m!3865827))

(declare-fun m!3865829 () Bool)

(assert (=> b!3462199 m!3865829))

(assert (=> d!996311 d!996571))

(declare-fun d!996573 () Bool)

(assert (=> d!996573 (= (isEmpty!21528 (list!13535 (_2!21582 lt!1176602))) ((_ is Nil!37171) (list!13535 (_2!21582 lt!1176602))))))

(assert (=> d!996137 d!996573))

(declare-fun d!996575 () Bool)

(assert (=> d!996575 (= (list!13535 (_2!21582 lt!1176602)) (list!13536 (c!592551 (_2!21582 lt!1176602))))))

(declare-fun bs!560539 () Bool)

(assert (= bs!560539 d!996575))

(declare-fun m!3865831 () Bool)

(assert (=> bs!560539 m!3865831))

(assert (=> d!996137 d!996575))

(declare-fun d!996577 () Bool)

(declare-fun lt!1177032 () Bool)

(assert (=> d!996577 (= lt!1177032 (isEmpty!21528 (list!13536 (c!592551 (_2!21582 lt!1176602)))))))

(declare-fun size!28209 (Conc!11255) Int)

(assert (=> d!996577 (= lt!1177032 (= (size!28209 (c!592551 (_2!21582 lt!1176602))) 0))))

(assert (=> d!996577 (= (isEmpty!21529 (c!592551 (_2!21582 lt!1176602))) lt!1177032)))

(declare-fun bs!560540 () Bool)

(assert (= bs!560540 d!996577))

(assert (=> bs!560540 m!3865831))

(assert (=> bs!560540 m!3865831))

(declare-fun m!3865833 () Bool)

(assert (=> bs!560540 m!3865833))

(declare-fun m!3865835 () Bool)

(assert (=> bs!560540 m!3865835))

(assert (=> d!996137 d!996577))

(declare-fun d!996579 () Bool)

(assert (=> d!996579 (= (inv!50347 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (value!175500 (h!42593 tokens!494)))) (isBalanced!3418 (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (value!175500 (h!42593 tokens!494))))))))

(declare-fun bs!560541 () Bool)

(assert (= bs!560541 d!996579))

(declare-fun m!3865837 () Bool)

(assert (=> bs!560541 m!3865837))

(assert (=> tb!188727 d!996579))

(declare-fun b!3462200 () Bool)

(declare-fun res!1396955 () Bool)

(declare-fun e!2144959 () Bool)

(assert (=> b!3462200 (=> (not res!1396955) (not e!2144959))))

(declare-fun call!249656 () Bool)

(assert (=> b!3462200 (= res!1396955 (not call!249656))))

(declare-fun b!3462201 () Bool)

(declare-fun res!1396953 () Bool)

(declare-fun e!2144961 () Bool)

(assert (=> b!3462201 (=> res!1396953 e!2144961)))

(assert (=> b!3462201 (= res!1396953 e!2144959)))

(declare-fun res!1396954 () Bool)

(assert (=> b!3462201 (=> (not res!1396954) (not e!2144959))))

(declare-fun lt!1177033 () Bool)

(assert (=> b!3462201 (= res!1396954 lt!1177033)))

(declare-fun b!3462202 () Bool)

(declare-fun e!2144955 () Bool)

(assert (=> b!3462202 (= e!2144955 (= lt!1177033 call!249656))))

(declare-fun b!3462203 () Bool)

(declare-fun e!2144958 () Bool)

(declare-fun e!2144956 () Bool)

(assert (=> b!3462203 (= e!2144958 e!2144956)))

(declare-fun res!1396956 () Bool)

(assert (=> b!3462203 (=> res!1396956 e!2144956)))

(assert (=> b!3462203 (= res!1396956 call!249656)))

(declare-fun b!3462204 () Bool)

(declare-fun e!2144957 () Bool)

(assert (=> b!3462204 (= e!2144957 (nullable!3489 (derivativeStep!3042 (regex!5440 lt!1176598) (head!7321 lt!1176614))))))

(declare-fun b!3462205 () Bool)

(declare-fun res!1396951 () Bool)

(assert (=> b!3462205 (=> (not res!1396951) (not e!2144959))))

(assert (=> b!3462205 (= res!1396951 (isEmpty!21528 (tail!5434 (tail!5434 lt!1176614))))))

(declare-fun b!3462206 () Bool)

(declare-fun e!2144960 () Bool)

(assert (=> b!3462206 (= e!2144955 e!2144960)))

(declare-fun c!592768 () Bool)

(assert (=> b!3462206 (= c!592768 ((_ is EmptyLang!10199) (derivativeStep!3042 (regex!5440 lt!1176598) (head!7321 lt!1176614))))))

(declare-fun b!3462207 () Bool)

(declare-fun res!1396952 () Bool)

(assert (=> b!3462207 (=> res!1396952 e!2144961)))

(assert (=> b!3462207 (= res!1396952 (not ((_ is ElementMatch!10199) (derivativeStep!3042 (regex!5440 lt!1176598) (head!7321 lt!1176614)))))))

(assert (=> b!3462207 (= e!2144960 e!2144961)))

(declare-fun b!3462208 () Bool)

(assert (=> b!3462208 (= e!2144961 e!2144958)))

(declare-fun res!1396958 () Bool)

(assert (=> b!3462208 (=> (not res!1396958) (not e!2144958))))

(assert (=> b!3462208 (= res!1396958 (not lt!1177033))))

(declare-fun b!3462209 () Bool)

(assert (=> b!3462209 (= e!2144960 (not lt!1177033))))

(declare-fun b!3462210 () Bool)

(declare-fun res!1396957 () Bool)

(assert (=> b!3462210 (=> res!1396957 e!2144956)))

(assert (=> b!3462210 (= res!1396957 (not (isEmpty!21528 (tail!5434 (tail!5434 lt!1176614)))))))

(declare-fun b!3462211 () Bool)

(assert (=> b!3462211 (= e!2144957 (matchR!4783 (derivativeStep!3042 (derivativeStep!3042 (regex!5440 lt!1176598) (head!7321 lt!1176614)) (head!7321 (tail!5434 lt!1176614))) (tail!5434 (tail!5434 lt!1176614))))))

(declare-fun d!996581 () Bool)

(assert (=> d!996581 e!2144955))

(declare-fun c!592769 () Bool)

(assert (=> d!996581 (= c!592769 ((_ is EmptyExpr!10199) (derivativeStep!3042 (regex!5440 lt!1176598) (head!7321 lt!1176614))))))

(assert (=> d!996581 (= lt!1177033 e!2144957)))

(declare-fun c!592770 () Bool)

(assert (=> d!996581 (= c!592770 (isEmpty!21528 (tail!5434 lt!1176614)))))

(assert (=> d!996581 (validRegex!4645 (derivativeStep!3042 (regex!5440 lt!1176598) (head!7321 lt!1176614)))))

(assert (=> d!996581 (= (matchR!4783 (derivativeStep!3042 (regex!5440 lt!1176598) (head!7321 lt!1176614)) (tail!5434 lt!1176614)) lt!1177033)))

(declare-fun bm!249651 () Bool)

(assert (=> bm!249651 (= call!249656 (isEmpty!21528 (tail!5434 lt!1176614)))))

(declare-fun b!3462212 () Bool)

(assert (=> b!3462212 (= e!2144956 (not (= (head!7321 (tail!5434 lt!1176614)) (c!592550 (derivativeStep!3042 (regex!5440 lt!1176598) (head!7321 lt!1176614))))))))

(declare-fun b!3462213 () Bool)

(assert (=> b!3462213 (= e!2144959 (= (head!7321 (tail!5434 lt!1176614)) (c!592550 (derivativeStep!3042 (regex!5440 lt!1176598) (head!7321 lt!1176614)))))))

(assert (= (and d!996581 c!592770) b!3462204))

(assert (= (and d!996581 (not c!592770)) b!3462211))

(assert (= (and d!996581 c!592769) b!3462202))

(assert (= (and d!996581 (not c!592769)) b!3462206))

(assert (= (and b!3462206 c!592768) b!3462209))

(assert (= (and b!3462206 (not c!592768)) b!3462207))

(assert (= (and b!3462207 (not res!1396952)) b!3462201))

(assert (= (and b!3462201 res!1396954) b!3462200))

(assert (= (and b!3462200 res!1396955) b!3462205))

(assert (= (and b!3462205 res!1396951) b!3462213))

(assert (= (and b!3462201 (not res!1396953)) b!3462208))

(assert (= (and b!3462208 res!1396958) b!3462203))

(assert (= (and b!3462203 (not res!1396956)) b!3462210))

(assert (= (and b!3462210 (not res!1396957)) b!3462212))

(assert (= (or b!3462202 b!3462200 b!3462203) bm!249651))

(assert (=> b!3462211 m!3864225))

(declare-fun m!3865839 () Bool)

(assert (=> b!3462211 m!3865839))

(assert (=> b!3462211 m!3864373))

(assert (=> b!3462211 m!3865839))

(declare-fun m!3865841 () Bool)

(assert (=> b!3462211 m!3865841))

(assert (=> b!3462211 m!3864225))

(declare-fun m!3865843 () Bool)

(assert (=> b!3462211 m!3865843))

(assert (=> b!3462211 m!3865841))

(assert (=> b!3462211 m!3865843))

(declare-fun m!3865845 () Bool)

(assert (=> b!3462211 m!3865845))

(assert (=> b!3462213 m!3864225))

(assert (=> b!3462213 m!3865839))

(assert (=> d!996581 m!3864225))

(assert (=> d!996581 m!3864233))

(assert (=> d!996581 m!3864373))

(declare-fun m!3865847 () Bool)

(assert (=> d!996581 m!3865847))

(assert (=> b!3462204 m!3864373))

(declare-fun m!3865849 () Bool)

(assert (=> b!3462204 m!3865849))

(assert (=> b!3462212 m!3864225))

(assert (=> b!3462212 m!3865839))

(assert (=> bm!249651 m!3864225))

(assert (=> bm!249651 m!3864233))

(assert (=> b!3462210 m!3864225))

(assert (=> b!3462210 m!3865843))

(assert (=> b!3462210 m!3865843))

(declare-fun m!3865851 () Bool)

(assert (=> b!3462210 m!3865851))

(assert (=> b!3462205 m!3864225))

(assert (=> b!3462205 m!3865843))

(assert (=> b!3462205 m!3865843))

(assert (=> b!3462205 m!3865851))

(assert (=> b!3461305 d!996581))

(declare-fun b!3462234 () Bool)

(declare-fun e!2144976 () Regex!10199)

(declare-fun e!2144973 () Regex!10199)

(assert (=> b!3462234 (= e!2144976 e!2144973)))

(declare-fun c!592784 () Bool)

(assert (=> b!3462234 (= c!592784 ((_ is Star!10199) (regex!5440 lt!1176598)))))

(declare-fun b!3462235 () Bool)

(declare-fun c!592782 () Bool)

(assert (=> b!3462235 (= c!592782 (nullable!3489 (regOne!20910 (regex!5440 lt!1176598))))))

(declare-fun e!2144975 () Regex!10199)

(assert (=> b!3462235 (= e!2144973 e!2144975)))

(declare-fun b!3462236 () Bool)

(declare-fun call!249667 () Regex!10199)

(assert (=> b!3462236 (= e!2144975 (Union!10199 (Concat!15869 call!249667 (regTwo!20910 (regex!5440 lt!1176598))) EmptyLang!10199))))

(declare-fun c!592785 () Bool)

(declare-fun call!249666 () Regex!10199)

(declare-fun bm!249660 () Bool)

(assert (=> bm!249660 (= call!249666 (derivativeStep!3042 (ite c!592785 (regTwo!20911 (regex!5440 lt!1176598)) (regTwo!20910 (regex!5440 lt!1176598))) (head!7321 lt!1176614)))))

(declare-fun b!3462237 () Bool)

(declare-fun e!2144972 () Regex!10199)

(declare-fun e!2144974 () Regex!10199)

(assert (=> b!3462237 (= e!2144972 e!2144974)))

(declare-fun c!592783 () Bool)

(assert (=> b!3462237 (= c!592783 ((_ is ElementMatch!10199) (regex!5440 lt!1176598)))))

(declare-fun bm!249661 () Bool)

(declare-fun call!249665 () Regex!10199)

(declare-fun call!249668 () Regex!10199)

(assert (=> bm!249661 (= call!249665 call!249668)))

(declare-fun b!3462238 () Bool)

(assert (=> b!3462238 (= e!2144973 (Concat!15869 call!249665 (regex!5440 lt!1176598)))))

(declare-fun d!996583 () Bool)

(declare-fun lt!1177036 () Regex!10199)

(assert (=> d!996583 (validRegex!4645 lt!1177036)))

(assert (=> d!996583 (= lt!1177036 e!2144972)))

(declare-fun c!592781 () Bool)

(assert (=> d!996583 (= c!592781 (or ((_ is EmptyExpr!10199) (regex!5440 lt!1176598)) ((_ is EmptyLang!10199) (regex!5440 lt!1176598))))))

(assert (=> d!996583 (validRegex!4645 (regex!5440 lt!1176598))))

(assert (=> d!996583 (= (derivativeStep!3042 (regex!5440 lt!1176598) (head!7321 lt!1176614)) lt!1177036)))

(declare-fun b!3462239 () Bool)

(assert (=> b!3462239 (= e!2144974 (ite (= (head!7321 lt!1176614) (c!592550 (regex!5440 lt!1176598))) EmptyExpr!10199 EmptyLang!10199))))

(declare-fun b!3462240 () Bool)

(assert (=> b!3462240 (= e!2144972 EmptyLang!10199)))

(declare-fun b!3462241 () Bool)

(assert (=> b!3462241 (= e!2144976 (Union!10199 call!249668 call!249666))))

(declare-fun b!3462242 () Bool)

(assert (=> b!3462242 (= c!592785 ((_ is Union!10199) (regex!5440 lt!1176598)))))

(assert (=> b!3462242 (= e!2144974 e!2144976)))

(declare-fun bm!249662 () Bool)

(assert (=> bm!249662 (= call!249667 call!249665)))

(declare-fun b!3462243 () Bool)

(assert (=> b!3462243 (= e!2144975 (Union!10199 (Concat!15869 call!249667 (regTwo!20910 (regex!5440 lt!1176598))) call!249666))))

(declare-fun bm!249663 () Bool)

(assert (=> bm!249663 (= call!249668 (derivativeStep!3042 (ite c!592785 (regOne!20911 (regex!5440 lt!1176598)) (ite c!592784 (reg!10528 (regex!5440 lt!1176598)) (regOne!20910 (regex!5440 lt!1176598)))) (head!7321 lt!1176614)))))

(assert (= (and d!996583 c!592781) b!3462240))

(assert (= (and d!996583 (not c!592781)) b!3462237))

(assert (= (and b!3462237 c!592783) b!3462239))

(assert (= (and b!3462237 (not c!592783)) b!3462242))

(assert (= (and b!3462242 c!592785) b!3462241))

(assert (= (and b!3462242 (not c!592785)) b!3462234))

(assert (= (and b!3462234 c!592784) b!3462238))

(assert (= (and b!3462234 (not c!592784)) b!3462235))

(assert (= (and b!3462235 c!592782) b!3462243))

(assert (= (and b!3462235 (not c!592782)) b!3462236))

(assert (= (or b!3462243 b!3462236) bm!249662))

(assert (= (or b!3462238 bm!249662) bm!249661))

(assert (= (or b!3462241 bm!249661) bm!249663))

(assert (= (or b!3462241 b!3462243) bm!249660))

(declare-fun m!3865853 () Bool)

(assert (=> b!3462235 m!3865853))

(assert (=> bm!249660 m!3864037))

(declare-fun m!3865855 () Bool)

(assert (=> bm!249660 m!3865855))

(declare-fun m!3865857 () Bool)

(assert (=> d!996583 m!3865857))

(assert (=> d!996583 m!3864377))

(assert (=> bm!249663 m!3864037))

(declare-fun m!3865859 () Bool)

(assert (=> bm!249663 m!3865859))

(assert (=> b!3461305 d!996583))

(assert (=> b!3461305 d!996263))

(declare-fun d!996585 () Bool)

(assert (=> d!996585 (= (tail!5434 lt!1176614) (t!273042 lt!1176614))))

(assert (=> b!3461305 d!996585))

(declare-fun d!996587 () Bool)

(declare-fun lt!1177037 () Token!10246)

(assert (=> d!996587 (= lt!1177037 (apply!8758 (list!13537 (_1!21582 lt!1176682)) 0))))

(assert (=> d!996587 (= lt!1177037 (apply!8759 (c!592552 (_1!21582 lt!1176682)) 0))))

(declare-fun e!2144977 () Bool)

(assert (=> d!996587 e!2144977))

(declare-fun res!1396959 () Bool)

(assert (=> d!996587 (=> (not res!1396959) (not e!2144977))))

(assert (=> d!996587 (= res!1396959 (<= 0 0))))

(assert (=> d!996587 (= (apply!8756 (_1!21582 lt!1176682) 0) lt!1177037)))

(declare-fun b!3462244 () Bool)

(assert (=> b!3462244 (= e!2144977 (< 0 (size!28200 (_1!21582 lt!1176682))))))

(assert (= (and d!996587 res!1396959) b!3462244))

(assert (=> d!996587 m!3865587))

(assert (=> d!996587 m!3865587))

(declare-fun m!3865861 () Bool)

(assert (=> d!996587 m!3865861))

(declare-fun m!3865863 () Bool)

(assert (=> d!996587 m!3865863))

(assert (=> b!3462244 m!3864393))

(assert (=> b!3461309 d!996587))

(declare-fun d!996589 () Bool)

(declare-fun lt!1177038 () Bool)

(assert (=> d!996589 (= lt!1177038 (select (content!5188 (t!273043 rules!2135)) (rule!8032 separatorToken!241)))))

(declare-fun e!2144978 () Bool)

(assert (=> d!996589 (= lt!1177038 e!2144978)))

(declare-fun res!1396961 () Bool)

(assert (=> d!996589 (=> (not res!1396961) (not e!2144978))))

(assert (=> d!996589 (= res!1396961 ((_ is Cons!37172) (t!273043 rules!2135)))))

(assert (=> d!996589 (= (contains!6895 (t!273043 rules!2135) (rule!8032 separatorToken!241)) lt!1177038)))

(declare-fun b!3462245 () Bool)

(declare-fun e!2144979 () Bool)

(assert (=> b!3462245 (= e!2144978 e!2144979)))

(declare-fun res!1396960 () Bool)

(assert (=> b!3462245 (=> res!1396960 e!2144979)))

(assert (=> b!3462245 (= res!1396960 (= (h!42592 (t!273043 rules!2135)) (rule!8032 separatorToken!241)))))

(declare-fun b!3462246 () Bool)

(assert (=> b!3462246 (= e!2144979 (contains!6895 (t!273043 (t!273043 rules!2135)) (rule!8032 separatorToken!241)))))

(assert (= (and d!996589 res!1396961) b!3462245))

(assert (= (and b!3462245 (not res!1396960)) b!3462246))

(declare-fun m!3865865 () Bool)

(assert (=> d!996589 m!3865865))

(declare-fun m!3865867 () Bool)

(assert (=> d!996589 m!3865867))

(declare-fun m!3865869 () Bool)

(assert (=> b!3462246 m!3865869))

(assert (=> b!3461144 d!996589))

(declare-fun d!996591 () Bool)

(declare-fun c!592786 () Bool)

(assert (=> d!996591 (= c!592786 ((_ is Nil!37171) lt!1176691))))

(declare-fun e!2144980 () (InoxSet C!20584))

(assert (=> d!996591 (= (content!5190 lt!1176691) e!2144980)))

(declare-fun b!3462247 () Bool)

(assert (=> b!3462247 (= e!2144980 ((as const (Array C!20584 Bool)) false))))

(declare-fun b!3462248 () Bool)

(assert (=> b!3462248 (= e!2144980 ((_ map or) (store ((as const (Array C!20584 Bool)) false) (h!42591 lt!1176691) true) (content!5190 (t!273042 lt!1176691))))))

(assert (= (and d!996591 c!592786) b!3462247))

(assert (= (and d!996591 (not c!592786)) b!3462248))

(declare-fun m!3865871 () Bool)

(assert (=> b!3462248 m!3865871))

(declare-fun m!3865873 () Bool)

(assert (=> b!3462248 m!3865873))

(assert (=> d!996187 d!996591))

(declare-fun d!996593 () Bool)

(declare-fun c!592787 () Bool)

(assert (=> d!996593 (= c!592787 ((_ is Nil!37171) (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494))))))))

(declare-fun e!2144981 () (InoxSet C!20584))

(assert (=> d!996593 (= (content!5190 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494))))) e!2144981)))

(declare-fun b!3462249 () Bool)

(assert (=> b!3462249 (= e!2144981 ((as const (Array C!20584 Bool)) false))))

(declare-fun b!3462250 () Bool)

(assert (=> b!3462250 (= e!2144981 ((_ map or) (store ((as const (Array C!20584 Bool)) false) (h!42591 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494))))) true) (content!5190 (t!273042 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494))))))))))

(assert (= (and d!996593 c!592787) b!3462249))

(assert (= (and d!996593 (not c!592787)) b!3462250))

(declare-fun m!3865875 () Bool)

(assert (=> b!3462250 m!3865875))

(declare-fun m!3865877 () Bool)

(assert (=> b!3462250 m!3865877))

(assert (=> d!996187 d!996593))

(declare-fun d!996595 () Bool)

(declare-fun c!592788 () Bool)

(assert (=> d!996595 (= c!592788 ((_ is Nil!37171) lt!1176614))))

(declare-fun e!2144982 () (InoxSet C!20584))

(assert (=> d!996595 (= (content!5190 lt!1176614) e!2144982)))

(declare-fun b!3462251 () Bool)

(assert (=> b!3462251 (= e!2144982 ((as const (Array C!20584 Bool)) false))))

(declare-fun b!3462252 () Bool)

(assert (=> b!3462252 (= e!2144982 ((_ map or) (store ((as const (Array C!20584 Bool)) false) (h!42591 lt!1176614) true) (content!5190 (t!273042 lt!1176614))))))

(assert (= (and d!996595 c!592788) b!3462251))

(assert (= (and d!996595 (not c!592788)) b!3462252))

(declare-fun m!3865879 () Bool)

(assert (=> b!3462252 m!3865879))

(declare-fun m!3865881 () Bool)

(assert (=> b!3462252 m!3865881))

(assert (=> d!996187 d!996595))

(assert (=> b!3461466 d!996107))

(declare-fun b!3462253 () Bool)

(declare-fun res!1396966 () Bool)

(declare-fun e!2144987 () Bool)

(assert (=> b!3462253 (=> (not res!1396966) (not e!2144987))))

(declare-fun call!249669 () Bool)

(assert (=> b!3462253 (= res!1396966 (not call!249669))))

(declare-fun b!3462254 () Bool)

(declare-fun res!1396964 () Bool)

(declare-fun e!2144989 () Bool)

(assert (=> b!3462254 (=> res!1396964 e!2144989)))

(assert (=> b!3462254 (= res!1396964 e!2144987)))

(declare-fun res!1396965 () Bool)

(assert (=> b!3462254 (=> (not res!1396965) (not e!2144987))))

(declare-fun lt!1177039 () Bool)

(assert (=> b!3462254 (= res!1396965 lt!1177039)))

(declare-fun b!3462255 () Bool)

(declare-fun e!2144983 () Bool)

(assert (=> b!3462255 (= e!2144983 (= lt!1177039 call!249669))))

(declare-fun b!3462256 () Bool)

(declare-fun e!2144986 () Bool)

(declare-fun e!2144984 () Bool)

(assert (=> b!3462256 (= e!2144986 e!2144984)))

(declare-fun res!1396967 () Bool)

(assert (=> b!3462256 (=> res!1396967 e!2144984)))

(assert (=> b!3462256 (= res!1396967 call!249669)))

(declare-fun e!2144985 () Bool)

(declare-fun b!3462257 () Bool)

(assert (=> b!3462257 (= e!2144985 (nullable!3489 (regex!5440 (get!11898 (getRuleFromTag!1083 thiss!18206 rules!2135 (tag!6050 (rule!8032 (h!42593 tokens!494))))))))))

(declare-fun b!3462258 () Bool)

(declare-fun res!1396962 () Bool)

(assert (=> b!3462258 (=> (not res!1396962) (not e!2144987))))

(assert (=> b!3462258 (= res!1396962 (isEmpty!21528 (tail!5434 (list!13535 (charsOf!3454 (h!42593 tokens!494))))))))

(declare-fun b!3462259 () Bool)

(declare-fun e!2144988 () Bool)

(assert (=> b!3462259 (= e!2144983 e!2144988)))

(declare-fun c!592789 () Bool)

(assert (=> b!3462259 (= c!592789 ((_ is EmptyLang!10199) (regex!5440 (get!11898 (getRuleFromTag!1083 thiss!18206 rules!2135 (tag!6050 (rule!8032 (h!42593 tokens!494))))))))))

(declare-fun b!3462260 () Bool)

(declare-fun res!1396963 () Bool)

(assert (=> b!3462260 (=> res!1396963 e!2144989)))

(assert (=> b!3462260 (= res!1396963 (not ((_ is ElementMatch!10199) (regex!5440 (get!11898 (getRuleFromTag!1083 thiss!18206 rules!2135 (tag!6050 (rule!8032 (h!42593 tokens!494)))))))))))

(assert (=> b!3462260 (= e!2144988 e!2144989)))

(declare-fun b!3462261 () Bool)

(assert (=> b!3462261 (= e!2144989 e!2144986)))

(declare-fun res!1396969 () Bool)

(assert (=> b!3462261 (=> (not res!1396969) (not e!2144986))))

(assert (=> b!3462261 (= res!1396969 (not lt!1177039))))

(declare-fun b!3462262 () Bool)

(assert (=> b!3462262 (= e!2144988 (not lt!1177039))))

(declare-fun b!3462263 () Bool)

(declare-fun res!1396968 () Bool)

(assert (=> b!3462263 (=> res!1396968 e!2144984)))

(assert (=> b!3462263 (= res!1396968 (not (isEmpty!21528 (tail!5434 (list!13535 (charsOf!3454 (h!42593 tokens!494)))))))))

(declare-fun b!3462264 () Bool)

(assert (=> b!3462264 (= e!2144985 (matchR!4783 (derivativeStep!3042 (regex!5440 (get!11898 (getRuleFromTag!1083 thiss!18206 rules!2135 (tag!6050 (rule!8032 (h!42593 tokens!494)))))) (head!7321 (list!13535 (charsOf!3454 (h!42593 tokens!494))))) (tail!5434 (list!13535 (charsOf!3454 (h!42593 tokens!494))))))))

(declare-fun d!996597 () Bool)

(assert (=> d!996597 e!2144983))

(declare-fun c!592790 () Bool)

(assert (=> d!996597 (= c!592790 ((_ is EmptyExpr!10199) (regex!5440 (get!11898 (getRuleFromTag!1083 thiss!18206 rules!2135 (tag!6050 (rule!8032 (h!42593 tokens!494))))))))))

(assert (=> d!996597 (= lt!1177039 e!2144985)))

(declare-fun c!592791 () Bool)

(assert (=> d!996597 (= c!592791 (isEmpty!21528 (list!13535 (charsOf!3454 (h!42593 tokens!494)))))))

(assert (=> d!996597 (validRegex!4645 (regex!5440 (get!11898 (getRuleFromTag!1083 thiss!18206 rules!2135 (tag!6050 (rule!8032 (h!42593 tokens!494)))))))))

(assert (=> d!996597 (= (matchR!4783 (regex!5440 (get!11898 (getRuleFromTag!1083 thiss!18206 rules!2135 (tag!6050 (rule!8032 (h!42593 tokens!494)))))) (list!13535 (charsOf!3454 (h!42593 tokens!494)))) lt!1177039)))

(declare-fun bm!249664 () Bool)

(assert (=> bm!249664 (= call!249669 (isEmpty!21528 (list!13535 (charsOf!3454 (h!42593 tokens!494)))))))

(declare-fun b!3462265 () Bool)

(assert (=> b!3462265 (= e!2144984 (not (= (head!7321 (list!13535 (charsOf!3454 (h!42593 tokens!494)))) (c!592550 (regex!5440 (get!11898 (getRuleFromTag!1083 thiss!18206 rules!2135 (tag!6050 (rule!8032 (h!42593 tokens!494))))))))))))

(declare-fun b!3462266 () Bool)

(assert (=> b!3462266 (= e!2144987 (= (head!7321 (list!13535 (charsOf!3454 (h!42593 tokens!494)))) (c!592550 (regex!5440 (get!11898 (getRuleFromTag!1083 thiss!18206 rules!2135 (tag!6050 (rule!8032 (h!42593 tokens!494)))))))))))

(assert (= (and d!996597 c!592791) b!3462257))

(assert (= (and d!996597 (not c!592791)) b!3462264))

(assert (= (and d!996597 c!592790) b!3462255))

(assert (= (and d!996597 (not c!592790)) b!3462259))

(assert (= (and b!3462259 c!592789) b!3462262))

(assert (= (and b!3462259 (not c!592789)) b!3462260))

(assert (= (and b!3462260 (not res!1396963)) b!3462254))

(assert (= (and b!3462254 res!1396965) b!3462253))

(assert (= (and b!3462253 res!1396966) b!3462258))

(assert (= (and b!3462258 res!1396962) b!3462266))

(assert (= (and b!3462254 (not res!1396964)) b!3462261))

(assert (= (and b!3462261 res!1396969) b!3462256))

(assert (= (and b!3462256 (not res!1396967)) b!3462263))

(assert (= (and b!3462263 (not res!1396968)) b!3462265))

(assert (= (or b!3462255 b!3462253 b!3462256) bm!249664))

(assert (=> b!3462264 m!3864173))

(declare-fun m!3865883 () Bool)

(assert (=> b!3462264 m!3865883))

(assert (=> b!3462264 m!3865883))

(declare-fun m!3865885 () Bool)

(assert (=> b!3462264 m!3865885))

(assert (=> b!3462264 m!3864173))

(declare-fun m!3865887 () Bool)

(assert (=> b!3462264 m!3865887))

(assert (=> b!3462264 m!3865885))

(assert (=> b!3462264 m!3865887))

(declare-fun m!3865889 () Bool)

(assert (=> b!3462264 m!3865889))

(assert (=> b!3462266 m!3864173))

(assert (=> b!3462266 m!3865883))

(assert (=> d!996597 m!3864173))

(declare-fun m!3865891 () Bool)

(assert (=> d!996597 m!3865891))

(declare-fun m!3865893 () Bool)

(assert (=> d!996597 m!3865893))

(declare-fun m!3865895 () Bool)

(assert (=> b!3462257 m!3865895))

(assert (=> b!3462265 m!3864173))

(assert (=> b!3462265 m!3865883))

(assert (=> bm!249664 m!3864173))

(assert (=> bm!249664 m!3865891))

(assert (=> b!3462263 m!3864173))

(assert (=> b!3462263 m!3865887))

(assert (=> b!3462263 m!3865887))

(declare-fun m!3865897 () Bool)

(assert (=> b!3462263 m!3865897))

(assert (=> b!3462258 m!3864173))

(assert (=> b!3462258 m!3865887))

(assert (=> b!3462258 m!3865887))

(assert (=> b!3462258 m!3865897))

(assert (=> b!3461466 d!996597))

(assert (=> b!3461466 d!996253))

(declare-fun d!996599 () Bool)

(assert (=> d!996599 (= (get!11898 (getRuleFromTag!1083 thiss!18206 rules!2135 (tag!6050 (rule!8032 (h!42593 tokens!494))))) (v!36855 (getRuleFromTag!1083 thiss!18206 rules!2135 (tag!6050 (rule!8032 (h!42593 tokens!494))))))))

(assert (=> b!3461466 d!996599))

(assert (=> b!3461466 d!996105))

(declare-fun d!996601 () Bool)

(declare-fun lt!1177040 () Int)

(assert (=> d!996601 (>= lt!1177040 0)))

(declare-fun e!2144990 () Int)

(assert (=> d!996601 (= lt!1177040 e!2144990)))

(declare-fun c!592792 () Bool)

(assert (=> d!996601 (= c!592792 ((_ is Nil!37171) lt!1176738))))

(assert (=> d!996601 (= (size!28201 lt!1176738) lt!1177040)))

(declare-fun b!3462267 () Bool)

(assert (=> b!3462267 (= e!2144990 0)))

(declare-fun b!3462268 () Bool)

(assert (=> b!3462268 (= e!2144990 (+ 1 (size!28201 (t!273042 lt!1176738))))))

(assert (= (and d!996601 c!592792) b!3462267))

(assert (= (and d!996601 (not c!592792)) b!3462268))

(declare-fun m!3865899 () Bool)

(assert (=> b!3462268 m!3865899))

(assert (=> b!3461414 d!996601))

(assert (=> b!3461414 d!996309))

(declare-fun d!996603 () Bool)

(declare-fun lt!1177041 () Int)

(assert (=> d!996603 (>= lt!1177041 0)))

(declare-fun e!2144991 () Int)

(assert (=> d!996603 (= lt!1177041 e!2144991)))

(declare-fun c!592793 () Bool)

(assert (=> d!996603 (= c!592793 ((_ is Nil!37171) lt!1176600))))

(assert (=> d!996603 (= (size!28201 lt!1176600) lt!1177041)))

(declare-fun b!3462269 () Bool)

(assert (=> b!3462269 (= e!2144991 0)))

(declare-fun b!3462270 () Bool)

(assert (=> b!3462270 (= e!2144991 (+ 1 (size!28201 (t!273042 lt!1176600))))))

(assert (= (and d!996603 c!592793) b!3462269))

(assert (= (and d!996603 (not c!592793)) b!3462270))

(declare-fun m!3865901 () Bool)

(assert (=> b!3462270 m!3865901))

(assert (=> b!3461414 d!996603))

(declare-fun d!996605 () Bool)

(assert (=> d!996605 (= (isEmpty!21538 lt!1176621) (not ((_ is Some!7529) lt!1176621)))))

(assert (=> d!996279 d!996605))

(declare-fun d!996607 () Bool)

(declare-fun lt!1177042 () Bool)

(assert (=> d!996607 (= lt!1177042 (select (content!5188 (t!273043 rules!2135)) (rule!8032 (h!42593 tokens!494))))))

(declare-fun e!2144992 () Bool)

(assert (=> d!996607 (= lt!1177042 e!2144992)))

(declare-fun res!1396971 () Bool)

(assert (=> d!996607 (=> (not res!1396971) (not e!2144992))))

(assert (=> d!996607 (= res!1396971 ((_ is Cons!37172) (t!273043 rules!2135)))))

(assert (=> d!996607 (= (contains!6895 (t!273043 rules!2135) (rule!8032 (h!42593 tokens!494))) lt!1177042)))

(declare-fun b!3462271 () Bool)

(declare-fun e!2144993 () Bool)

(assert (=> b!3462271 (= e!2144992 e!2144993)))

(declare-fun res!1396970 () Bool)

(assert (=> b!3462271 (=> res!1396970 e!2144993)))

(assert (=> b!3462271 (= res!1396970 (= (h!42592 (t!273043 rules!2135)) (rule!8032 (h!42593 tokens!494))))))

(declare-fun b!3462272 () Bool)

(assert (=> b!3462272 (= e!2144993 (contains!6895 (t!273043 (t!273043 rules!2135)) (rule!8032 (h!42593 tokens!494))))))

(assert (= (and d!996607 res!1396971) b!3462271))

(assert (= (and b!3462271 (not res!1396970)) b!3462272))

(assert (=> d!996607 m!3865865))

(declare-fun m!3865903 () Bool)

(assert (=> d!996607 m!3865903))

(declare-fun m!3865905 () Bool)

(assert (=> b!3462272 m!3865905))

(assert (=> b!3461674 d!996607))

(declare-fun d!996609 () Bool)

(declare-fun lt!1177043 () Int)

(assert (=> d!996609 (>= lt!1177043 0)))

(declare-fun e!2144994 () Int)

(assert (=> d!996609 (= lt!1177043 e!2144994)))

(declare-fun c!592794 () Bool)

(assert (=> d!996609 (= c!592794 ((_ is Nil!37171) lt!1176690))))

(assert (=> d!996609 (= (size!28201 lt!1176690) lt!1177043)))

(declare-fun b!3462273 () Bool)

(assert (=> b!3462273 (= e!2144994 0)))

(declare-fun b!3462274 () Bool)

(assert (=> b!3462274 (= e!2144994 (+ 1 (size!28201 (t!273042 lt!1176690))))))

(assert (= (and d!996609 c!592794) b!3462273))

(assert (= (and d!996609 (not c!592794)) b!3462274))

(declare-fun m!3865907 () Bool)

(assert (=> b!3462274 m!3865907))

(assert (=> b!3461348 d!996609))

(declare-fun d!996611 () Bool)

(declare-fun lt!1177044 () Int)

(assert (=> d!996611 (>= lt!1177044 0)))

(declare-fun e!2144995 () Int)

(assert (=> d!996611 (= lt!1177044 e!2144995)))

(declare-fun c!592795 () Bool)

(assert (=> d!996611 (= c!592795 ((_ is Nil!37171) (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494)))) lt!1176614)))))

(assert (=> d!996611 (= (size!28201 (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494)))) lt!1176614)) lt!1177044)))

(declare-fun b!3462275 () Bool)

(assert (=> b!3462275 (= e!2144995 0)))

(declare-fun b!3462276 () Bool)

(assert (=> b!3462276 (= e!2144995 (+ 1 (size!28201 (t!273042 (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494)))) lt!1176614)))))))

(assert (= (and d!996611 c!592795) b!3462275))

(assert (= (and d!996611 (not c!592795)) b!3462276))

(declare-fun m!3865909 () Bool)

(assert (=> b!3462276 m!3865909))

(assert (=> b!3461348 d!996611))

(declare-fun d!996613 () Bool)

(declare-fun lt!1177045 () Int)

(assert (=> d!996613 (>= lt!1177045 0)))

(declare-fun e!2144996 () Int)

(assert (=> d!996613 (= lt!1177045 e!2144996)))

(declare-fun c!592796 () Bool)

(assert (=> d!996613 (= c!592796 ((_ is Nil!37171) (printWithSeparatorTokenList!316 thiss!18206 (t!273044 (t!273044 tokens!494)) separatorToken!241)))))

(assert (=> d!996613 (= (size!28201 (printWithSeparatorTokenList!316 thiss!18206 (t!273044 (t!273044 tokens!494)) separatorToken!241)) lt!1177045)))

(declare-fun b!3462277 () Bool)

(assert (=> b!3462277 (= e!2144996 0)))

(declare-fun b!3462278 () Bool)

(assert (=> b!3462278 (= e!2144996 (+ 1 (size!28201 (t!273042 (printWithSeparatorTokenList!316 thiss!18206 (t!273044 (t!273044 tokens!494)) separatorToken!241)))))))

(assert (= (and d!996613 c!592796) b!3462277))

(assert (= (and d!996613 (not c!592796)) b!3462278))

(declare-fun m!3865911 () Bool)

(assert (=> b!3462278 m!3865911))

(assert (=> b!3461348 d!996613))

(assert (=> b!3461589 d!996473))

(declare-fun d!996615 () Bool)

(assert (=> d!996615 (= (apply!8757 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1176835)))) (seqFromList!3933 (originalCharacters!6154 (_1!21583 (get!11899 lt!1176835))))) (dynLambda!15672 (toValue!7668 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1176835))))) (seqFromList!3933 (originalCharacters!6154 (_1!21583 (get!11899 lt!1176835))))))))

(declare-fun b_lambda!99765 () Bool)

(assert (=> (not b_lambda!99765) (not d!996615)))

(declare-fun tb!188817 () Bool)

(declare-fun t!273156 () Bool)

(assert (=> (and b!3461090 (= (toValue!7668 (transformation!5440 (h!42592 rules!2135))) (toValue!7668 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1176835)))))) t!273156) tb!188817))

(declare-fun result!232830 () Bool)

(assert (=> tb!188817 (= result!232830 (inv!21 (dynLambda!15672 (toValue!7668 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1176835))))) (seqFromList!3933 (originalCharacters!6154 (_1!21583 (get!11899 lt!1176835)))))))))

(declare-fun m!3865913 () Bool)

(assert (=> tb!188817 m!3865913))

(assert (=> d!996615 t!273156))

(declare-fun b_and!243611 () Bool)

(assert (= b_and!243543 (and (=> t!273156 result!232830) b_and!243611)))

(declare-fun t!273158 () Bool)

(declare-fun tb!188819 () Bool)

(assert (=> (and b!3461071 (= (toValue!7668 (transformation!5440 (rule!8032 separatorToken!241))) (toValue!7668 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1176835)))))) t!273158) tb!188819))

(declare-fun result!232832 () Bool)

(assert (= result!232832 result!232830))

(assert (=> d!996615 t!273158))

(declare-fun b_and!243613 () Bool)

(assert (= b_and!243539 (and (=> t!273158 result!232832) b_and!243613)))

(declare-fun tb!188821 () Bool)

(declare-fun t!273160 () Bool)

(assert (=> (and b!3461104 (= (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (toValue!7668 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1176835)))))) t!273160) tb!188821))

(declare-fun result!232834 () Bool)

(assert (= result!232834 result!232830))

(assert (=> d!996615 t!273160))

(declare-fun b_and!243615 () Bool)

(assert (= b_and!243541 (and (=> t!273160 result!232834) b_and!243615)))

(declare-fun tb!188823 () Bool)

(declare-fun t!273162 () Bool)

(assert (=> (and b!3461881 (= (toValue!7668 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (toValue!7668 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1176835)))))) t!273162) tb!188823))

(declare-fun result!232836 () Bool)

(assert (= result!232836 result!232830))

(assert (=> d!996615 t!273162))

(declare-fun b_and!243617 () Bool)

(assert (= b_and!243557 (and (=> t!273162 result!232836) b_and!243617)))

(declare-fun t!273164 () Bool)

(declare-fun tb!188825 () Bool)

(assert (=> (and b!3461904 (= (toValue!7668 (transformation!5440 (h!42592 (t!273043 rules!2135)))) (toValue!7668 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1176835)))))) t!273164) tb!188825))

(declare-fun result!232838 () Bool)

(assert (= result!232838 result!232830))

(assert (=> d!996615 t!273164))

(declare-fun b_and!243619 () Bool)

(assert (= b_and!243561 (and (=> t!273164 result!232838) b_and!243619)))

(assert (=> d!996615 m!3864929))

(declare-fun m!3865915 () Bool)

(assert (=> d!996615 m!3865915))

(assert (=> b!3461589 d!996615))

(declare-fun d!996617 () Bool)

(assert (=> d!996617 (= (seqFromList!3933 (originalCharacters!6154 (_1!21583 (get!11899 lt!1176835)))) (fromListB!1785 (originalCharacters!6154 (_1!21583 (get!11899 lt!1176835)))))))

(declare-fun bs!560542 () Bool)

(assert (= bs!560542 d!996617))

(declare-fun m!3865917 () Bool)

(assert (=> bs!560542 m!3865917))

(assert (=> b!3461589 d!996617))

(declare-fun d!996619 () Bool)

(declare-fun charsToBigInt!1 (List!37294) Int)

(assert (=> d!996619 (= (inv!17 (value!175500 separatorToken!241)) (= (charsToBigInt!1 (text!40138 (value!175500 separatorToken!241))) (value!175492 (value!175500 separatorToken!241))))))

(declare-fun bs!560543 () Bool)

(assert (= bs!560543 d!996619))

(declare-fun m!3865919 () Bool)

(assert (=> bs!560543 m!3865919))

(assert (=> b!3461291 d!996619))

(declare-fun d!996621 () Bool)

(assert (=> d!996621 true))

(declare-fun order!19815 () Int)

(declare-fun lambda!121880 () Int)

(declare-fun dynLambda!15675 (Int Int) Int)

(assert (=> d!996621 (< (dynLambda!15664 order!19805 (toValue!7668 (transformation!5440 (rule!8032 separatorToken!241)))) (dynLambda!15675 order!19815 lambda!121880))))

(declare-fun Forall2!936 (Int) Bool)

(assert (=> d!996621 (= (equivClasses!2183 (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))) (toValue!7668 (transformation!5440 (rule!8032 separatorToken!241)))) (Forall2!936 lambda!121880))))

(declare-fun bs!560544 () Bool)

(assert (= bs!560544 d!996621))

(declare-fun m!3865921 () Bool)

(assert (=> bs!560544 m!3865921))

(assert (=> b!3461271 d!996621))

(declare-fun d!996623 () Bool)

(assert (=> d!996623 (= (isEmpty!21528 (tail!5434 lt!1176614)) ((_ is Nil!37171) (tail!5434 lt!1176614)))))

(assert (=> b!3461304 d!996623))

(assert (=> b!3461304 d!996585))

(declare-fun d!996625 () Bool)

(assert (=> d!996625 (= (list!13537 lt!1176795) (list!13541 (c!592552 lt!1176795)))))

(declare-fun bs!560545 () Bool)

(assert (= bs!560545 d!996625))

(declare-fun m!3865923 () Bool)

(assert (=> bs!560545 m!3865923))

(assert (=> d!996257 d!996625))

(declare-fun d!996627 () Bool)

(declare-fun e!2145012 () Bool)

(assert (=> d!996627 e!2145012))

(declare-fun res!1396974 () Bool)

(assert (=> d!996627 (=> (not res!1396974) (not e!2145012))))

(declare-fun lt!1177102 () BalanceConc!22126)

(assert (=> d!996627 (= res!1396974 (= (list!13537 lt!1177102) (Cons!37173 separatorToken!241 Nil!37173)))))

(assert (=> d!996627 (= lt!1177102 (choose!20029 separatorToken!241))))

(assert (=> d!996627 (= (singleton!1122 separatorToken!241) lt!1177102)))

(declare-fun b!3462307 () Bool)

(assert (=> b!3462307 (= e!2145012 (isBalanced!3417 (c!592552 lt!1177102)))))

(assert (= (and d!996627 res!1396974) b!3462307))

(declare-fun m!3865925 () Bool)

(assert (=> d!996627 m!3865925))

(declare-fun m!3865927 () Bool)

(assert (=> d!996627 m!3865927))

(declare-fun m!3865929 () Bool)

(assert (=> b!3462307 m!3865929))

(assert (=> d!996257 d!996627))

(declare-fun d!996629 () Bool)

(declare-fun c!592809 () Bool)

(assert (=> d!996629 (= c!592809 ((_ is Nil!37171) (usedCharacters!674 (regex!5440 (rule!8032 separatorToken!241)))))))

(declare-fun e!2145013 () (InoxSet C!20584))

(assert (=> d!996629 (= (content!5190 (usedCharacters!674 (regex!5440 (rule!8032 separatorToken!241)))) e!2145013)))

(declare-fun b!3462308 () Bool)

(assert (=> b!3462308 (= e!2145013 ((as const (Array C!20584 Bool)) false))))

(declare-fun b!3462309 () Bool)

(assert (=> b!3462309 (= e!2145013 ((_ map or) (store ((as const (Array C!20584 Bool)) false) (h!42591 (usedCharacters!674 (regex!5440 (rule!8032 separatorToken!241)))) true) (content!5190 (t!273042 (usedCharacters!674 (regex!5440 (rule!8032 separatorToken!241)))))))))

(assert (= (and d!996629 c!592809) b!3462308))

(assert (= (and d!996629 (not c!592809)) b!3462309))

(declare-fun m!3865931 () Bool)

(assert (=> b!3462309 m!3865931))

(declare-fun m!3865933 () Bool)

(assert (=> b!3462309 m!3865933))

(assert (=> d!996249 d!996629))

(declare-fun d!996631 () Bool)

(declare-fun lt!1177103 () Int)

(assert (=> d!996631 (>= lt!1177103 0)))

(declare-fun e!2145014 () Int)

(assert (=> d!996631 (= lt!1177103 e!2145014)))

(declare-fun c!592810 () Bool)

(assert (=> d!996631 (= c!592810 ((_ is Nil!37171) (_2!21583 (get!11899 lt!1176668))))))

(assert (=> d!996631 (= (size!28201 (_2!21583 (get!11899 lt!1176668))) lt!1177103)))

(declare-fun b!3462310 () Bool)

(assert (=> b!3462310 (= e!2145014 0)))

(declare-fun b!3462311 () Bool)

(assert (=> b!3462311 (= e!2145014 (+ 1 (size!28201 (t!273042 (_2!21583 (get!11899 lt!1176668))))))))

(assert (= (and d!996631 c!592810) b!3462310))

(assert (= (and d!996631 (not c!592810)) b!3462311))

(declare-fun m!3865935 () Bool)

(assert (=> b!3462311 m!3865935))

(assert (=> b!3461229 d!996631))

(assert (=> b!3461229 d!996499))

(assert (=> b!3461229 d!996309))

(declare-fun d!996633 () Bool)

(assert (=> d!996633 (= (isEmpty!21530 lt!1176835) (not ((_ is Some!7528) lt!1176835)))))

(assert (=> d!996289 d!996633))

(declare-fun d!996635 () Bool)

(assert (=> d!996635 (= (isEmpty!21528 (_1!21587 lt!1176836)) ((_ is Nil!37171) (_1!21587 lt!1176836)))))

(assert (=> d!996289 d!996635))

(declare-fun d!996637 () Bool)

(declare-fun lt!1177149 () tuple2!36906)

(assert (=> d!996637 (= (++!9165 (_1!21587 lt!1177149) (_2!21587 lt!1177149)) lt!1176597)))

(declare-fun sizeTr!205 (List!37295 Int) Int)

(assert (=> d!996637 (= lt!1177149 (findLongestMatchInner!911 (regex!5440 (rule!8032 (h!42593 tokens!494))) Nil!37171 0 lt!1176597 lt!1176597 (sizeTr!205 lt!1176597 0)))))

(declare-fun lt!1177155 () Unit!52520)

(declare-fun lt!1177152 () Unit!52520)

(assert (=> d!996637 (= lt!1177155 lt!1177152)))

(declare-fun lt!1177150 () List!37295)

(declare-fun lt!1177154 () Int)

(assert (=> d!996637 (= (sizeTr!205 lt!1177150 lt!1177154) (+ (size!28201 lt!1177150) lt!1177154))))

(declare-fun lemmaSizeTrEqualsSize!204 (List!37295 Int) Unit!52520)

(assert (=> d!996637 (= lt!1177152 (lemmaSizeTrEqualsSize!204 lt!1177150 lt!1177154))))

(assert (=> d!996637 (= lt!1177154 0)))

(assert (=> d!996637 (= lt!1177150 Nil!37171)))

(declare-fun lt!1177151 () Unit!52520)

(declare-fun lt!1177148 () Unit!52520)

(assert (=> d!996637 (= lt!1177151 lt!1177148)))

(declare-fun lt!1177153 () Int)

(assert (=> d!996637 (= (sizeTr!205 lt!1176597 lt!1177153) (+ (size!28201 lt!1176597) lt!1177153))))

(assert (=> d!996637 (= lt!1177148 (lemmaSizeTrEqualsSize!204 lt!1176597 lt!1177153))))

(assert (=> d!996637 (= lt!1177153 0)))

(assert (=> d!996637 (validRegex!4645 (regex!5440 (rule!8032 (h!42593 tokens!494))))))

(assert (=> d!996637 (= (findLongestMatch!826 (regex!5440 (rule!8032 (h!42593 tokens!494))) lt!1176597) lt!1177149)))

(declare-fun bs!560546 () Bool)

(assert (= bs!560546 d!996637))

(declare-fun m!3865983 () Bool)

(assert (=> bs!560546 m!3865983))

(declare-fun m!3865985 () Bool)

(assert (=> bs!560546 m!3865985))

(declare-fun m!3865987 () Bool)

(assert (=> bs!560546 m!3865987))

(declare-fun m!3865989 () Bool)

(assert (=> bs!560546 m!3865989))

(declare-fun m!3865991 () Bool)

(assert (=> bs!560546 m!3865991))

(declare-fun m!3865993 () Bool)

(assert (=> bs!560546 m!3865993))

(declare-fun m!3865995 () Bool)

(assert (=> bs!560546 m!3865995))

(declare-fun m!3865997 () Bool)

(assert (=> bs!560546 m!3865997))

(assert (=> bs!560546 m!3865995))

(declare-fun m!3865999 () Bool)

(assert (=> bs!560546 m!3865999))

(assert (=> bs!560546 m!3864069))

(assert (=> d!996289 d!996637))

(declare-fun d!996643 () Bool)

(declare-fun res!1396994 () Bool)

(declare-fun e!2145038 () Bool)

(assert (=> d!996643 (=> (not res!1396994) (not e!2145038))))

(assert (=> d!996643 (= res!1396994 (validRegex!4645 (regex!5440 (rule!8032 (h!42593 tokens!494)))))))

(assert (=> d!996643 (= (ruleValid!1740 thiss!18206 (rule!8032 (h!42593 tokens!494))) e!2145038)))

(declare-fun b!3462355 () Bool)

(declare-fun res!1396995 () Bool)

(assert (=> b!3462355 (=> (not res!1396995) (not e!2145038))))

(assert (=> b!3462355 (= res!1396995 (not (nullable!3489 (regex!5440 (rule!8032 (h!42593 tokens!494))))))))

(declare-fun b!3462356 () Bool)

(assert (=> b!3462356 (= e!2145038 (not (= (tag!6050 (rule!8032 (h!42593 tokens!494))) (String!41685 ""))))))

(assert (= (and d!996643 res!1396994) b!3462355))

(assert (= (and b!3462355 res!1396995) b!3462356))

(assert (=> d!996643 m!3865991))

(declare-fun m!3866023 () Bool)

(assert (=> b!3462355 m!3866023))

(assert (=> d!996289 d!996643))

(declare-fun d!996655 () Bool)

(declare-fun c!592823 () Bool)

(assert (=> d!996655 (= c!592823 ((_ is Nil!37171) lt!1176738))))

(declare-fun e!2145039 () (InoxSet C!20584))

(assert (=> d!996655 (= (content!5190 lt!1176738) e!2145039)))

(declare-fun b!3462357 () Bool)

(assert (=> b!3462357 (= e!2145039 ((as const (Array C!20584 Bool)) false))))

(declare-fun b!3462358 () Bool)

(assert (=> b!3462358 (= e!2145039 ((_ map or) (store ((as const (Array C!20584 Bool)) false) (h!42591 lt!1176738) true) (content!5190 (t!273042 lt!1176738))))))

(assert (= (and d!996655 c!592823) b!3462357))

(assert (= (and d!996655 (not c!592823)) b!3462358))

(declare-fun m!3866025 () Bool)

(assert (=> b!3462358 m!3866025))

(declare-fun m!3866027 () Bool)

(assert (=> b!3462358 m!3866027))

(assert (=> d!996219 d!996655))

(declare-fun d!996657 () Bool)

(declare-fun c!592824 () Bool)

(assert (=> d!996657 (= c!592824 ((_ is Nil!37171) lt!1176597))))

(declare-fun e!2145040 () (InoxSet C!20584))

(assert (=> d!996657 (= (content!5190 lt!1176597) e!2145040)))

(declare-fun b!3462359 () Bool)

(assert (=> b!3462359 (= e!2145040 ((as const (Array C!20584 Bool)) false))))

(declare-fun b!3462360 () Bool)

(assert (=> b!3462360 (= e!2145040 ((_ map or) (store ((as const (Array C!20584 Bool)) false) (h!42591 lt!1176597) true) (content!5190 (t!273042 lt!1176597))))))

(assert (= (and d!996657 c!592824) b!3462359))

(assert (= (and d!996657 (not c!592824)) b!3462360))

(declare-fun m!3866029 () Bool)

(assert (=> b!3462360 m!3866029))

(declare-fun m!3866031 () Bool)

(assert (=> b!3462360 m!3866031))

(assert (=> d!996219 d!996657))

(declare-fun d!996659 () Bool)

(declare-fun c!592825 () Bool)

(assert (=> d!996659 (= c!592825 ((_ is Nil!37171) lt!1176600))))

(declare-fun e!2145041 () (InoxSet C!20584))

(assert (=> d!996659 (= (content!5190 lt!1176600) e!2145041)))

(declare-fun b!3462361 () Bool)

(assert (=> b!3462361 (= e!2145041 ((as const (Array C!20584 Bool)) false))))

(declare-fun b!3462362 () Bool)

(assert (=> b!3462362 (= e!2145041 ((_ map or) (store ((as const (Array C!20584 Bool)) false) (h!42591 lt!1176600) true) (content!5190 (t!273042 lt!1176600))))))

(assert (= (and d!996659 c!592825) b!3462361))

(assert (= (and d!996659 (not c!592825)) b!3462362))

(declare-fun m!3866043 () Bool)

(assert (=> b!3462362 m!3866043))

(declare-fun m!3866045 () Bool)

(assert (=> b!3462362 m!3866045))

(assert (=> d!996219 d!996659))

(declare-fun d!996661 () Bool)

(declare-fun lt!1177166 () Token!10246)

(assert (=> d!996661 (contains!6897 (list!13537 (_1!21582 lt!1176602)) lt!1177166)))

(declare-fun e!2145043 () Token!10246)

(assert (=> d!996661 (= lt!1177166 e!2145043)))

(declare-fun c!592826 () Bool)

(assert (=> d!996661 (= c!592826 (= 0 0))))

(declare-fun e!2145042 () Bool)

(assert (=> d!996661 e!2145042))

(declare-fun res!1396996 () Bool)

(assert (=> d!996661 (=> (not res!1396996) (not e!2145042))))

(assert (=> d!996661 (= res!1396996 (<= 0 0))))

(assert (=> d!996661 (= (apply!8758 (list!13537 (_1!21582 lt!1176602)) 0) lt!1177166)))

(declare-fun b!3462363 () Bool)

(assert (=> b!3462363 (= e!2145042 (< 0 (size!28206 (list!13537 (_1!21582 lt!1176602)))))))

(declare-fun b!3462364 () Bool)

(assert (=> b!3462364 (= e!2145043 (head!7322 (list!13537 (_1!21582 lt!1176602))))))

(declare-fun b!3462365 () Bool)

(assert (=> b!3462365 (= e!2145043 (apply!8758 (tail!5435 (list!13537 (_1!21582 lt!1176602))) (- 0 1)))))

(assert (= (and d!996661 res!1396996) b!3462363))

(assert (= (and d!996661 c!592826) b!3462364))

(assert (= (and d!996661 (not c!592826)) b!3462365))

(assert (=> d!996661 m!3864317))

(declare-fun m!3866059 () Bool)

(assert (=> d!996661 m!3866059))

(assert (=> b!3462363 m!3864317))

(assert (=> b!3462363 m!3864819))

(assert (=> b!3462364 m!3864317))

(declare-fun m!3866063 () Bool)

(assert (=> b!3462364 m!3866063))

(assert (=> b!3462365 m!3864317))

(declare-fun m!3866067 () Bool)

(assert (=> b!3462365 m!3866067))

(assert (=> b!3462365 m!3866067))

(declare-fun m!3866069 () Bool)

(assert (=> b!3462365 m!3866069))

(assert (=> d!996147 d!996661))

(declare-fun d!996663 () Bool)

(assert (=> d!996663 (= (list!13537 (_1!21582 lt!1176602)) (list!13541 (c!592552 (_1!21582 lt!1176602))))))

(declare-fun bs!560548 () Bool)

(assert (= bs!560548 d!996663))

(declare-fun m!3866071 () Bool)

(assert (=> bs!560548 m!3866071))

(assert (=> d!996147 d!996663))

(declare-fun d!996665 () Bool)

(declare-fun lt!1177168 () Token!10246)

(assert (=> d!996665 (= lt!1177168 (apply!8758 (list!13541 (c!592552 (_1!21582 lt!1176602))) 0))))

(declare-fun e!2145044 () Token!10246)

(assert (=> d!996665 (= lt!1177168 e!2145044)))

(declare-fun c!592828 () Bool)

(assert (=> d!996665 (= c!592828 ((_ is Leaf!17587) (c!592552 (_1!21582 lt!1176602))))))

(declare-fun e!2145045 () Bool)

(assert (=> d!996665 e!2145045))

(declare-fun res!1396997 () Bool)

(assert (=> d!996665 (=> (not res!1396997) (not e!2145045))))

(assert (=> d!996665 (= res!1396997 (<= 0 0))))

(assert (=> d!996665 (= (apply!8759 (c!592552 (_1!21582 lt!1176602)) 0) lt!1177168)))

(declare-fun b!3462366 () Bool)

(declare-fun e!2145047 () Token!10246)

(declare-fun call!249695 () Token!10246)

(assert (=> b!3462366 (= e!2145047 call!249695)))

(declare-fun bm!249690 () Bool)

(declare-fun c!592827 () Bool)

(declare-fun c!592829 () Bool)

(assert (=> bm!249690 (= c!592827 c!592829)))

(declare-fun e!2145046 () Int)

(assert (=> bm!249690 (= call!249695 (apply!8759 (ite c!592829 (left!29006 (c!592552 (_1!21582 lt!1176602))) (right!29336 (c!592552 (_1!21582 lt!1176602)))) e!2145046))))

(declare-fun b!3462367 () Bool)

(assert (=> b!3462367 (= e!2145046 0)))

(declare-fun b!3462368 () Bool)

(assert (=> b!3462368 (= e!2145045 (< 0 (size!28207 (c!592552 (_1!21582 lt!1176602)))))))

(declare-fun b!3462369 () Bool)

(assert (=> b!3462369 (= e!2145044 e!2145047)))

(declare-fun lt!1177167 () Bool)

(assert (=> b!3462369 (= lt!1177167 (appendIndex!345 (list!13541 (left!29006 (c!592552 (_1!21582 lt!1176602)))) (list!13541 (right!29336 (c!592552 (_1!21582 lt!1176602)))) 0))))

(assert (=> b!3462369 (= c!592829 (< 0 (size!28207 (left!29006 (c!592552 (_1!21582 lt!1176602))))))))

(declare-fun b!3462370 () Bool)

(assert (=> b!3462370 (= e!2145046 (- 0 (size!28207 (left!29006 (c!592552 (_1!21582 lt!1176602))))))))

(declare-fun b!3462371 () Bool)

(assert (=> b!3462371 (= e!2145047 call!249695)))

(declare-fun b!3462372 () Bool)

(assert (=> b!3462372 (= e!2145044 (apply!8762 (xs!14430 (c!592552 (_1!21582 lt!1176602))) 0))))

(assert (= (and d!996665 res!1396997) b!3462368))

(assert (= (and d!996665 c!592828) b!3462372))

(assert (= (and d!996665 (not c!592828)) b!3462369))

(assert (= (and b!3462369 c!592829) b!3462371))

(assert (= (and b!3462369 (not c!592829)) b!3462366))

(assert (= (or b!3462371 b!3462366) bm!249690))

(assert (= (and bm!249690 c!592827) b!3462367))

(assert (= (and bm!249690 (not c!592827)) b!3462370))

(declare-fun m!3866079 () Bool)

(assert (=> b!3462370 m!3866079))

(assert (=> d!996665 m!3866071))

(assert (=> d!996665 m!3866071))

(declare-fun m!3866081 () Bool)

(assert (=> d!996665 m!3866081))

(declare-fun m!3866083 () Bool)

(assert (=> b!3462372 m!3866083))

(declare-fun m!3866085 () Bool)

(assert (=> b!3462369 m!3866085))

(declare-fun m!3866087 () Bool)

(assert (=> b!3462369 m!3866087))

(assert (=> b!3462369 m!3866085))

(assert (=> b!3462369 m!3866087))

(declare-fun m!3866089 () Bool)

(assert (=> b!3462369 m!3866089))

(assert (=> b!3462369 m!3866079))

(assert (=> b!3462368 m!3864821))

(declare-fun m!3866091 () Bool)

(assert (=> bm!249690 m!3866091))

(assert (=> d!996147 d!996665))

(declare-fun d!996673 () Bool)

(declare-fun charsToInt!0 (List!37294) (_ BitVec 32))

(assert (=> d!996673 (= (inv!16 (value!175500 (h!42593 tokens!494))) (= (charsToInt!0 (text!40137 (value!175500 (h!42593 tokens!494)))) (value!175491 (value!175500 (h!42593 tokens!494)))))))

(declare-fun bs!560549 () Bool)

(assert (= bs!560549 d!996673))

(declare-fun m!3866099 () Bool)

(assert (=> bs!560549 m!3866099))

(assert (=> b!3461448 d!996673))

(assert (=> d!996113 d!996115))

(declare-fun d!996679 () Bool)

(assert (=> d!996679 (not (matchR!4783 (regex!5440 (rule!8032 separatorToken!241)) lt!1176614))))

(assert (=> d!996679 true))

(declare-fun _$127!359 () Unit!52520)

(assert (=> d!996679 (= (choose!20015 (regex!5440 (rule!8032 separatorToken!241)) lt!1176614 lt!1176623) _$127!359)))

(declare-fun bs!560550 () Bool)

(assert (= bs!560550 d!996679))

(assert (=> bs!560550 m!3864093))

(assert (=> d!996113 d!996679))

(declare-fun b!3462420 () Bool)

(declare-fun e!2145085 () Bool)

(declare-fun call!249708 () Bool)

(assert (=> b!3462420 (= e!2145085 call!249708)))

(declare-fun b!3462421 () Bool)

(declare-fun e!2145084 () Bool)

(declare-fun e!2145086 () Bool)

(assert (=> b!3462421 (= e!2145084 e!2145086)))

(declare-fun res!1397021 () Bool)

(assert (=> b!3462421 (=> (not res!1397021) (not e!2145086))))

(declare-fun call!249706 () Bool)

(assert (=> b!3462421 (= res!1397021 call!249706)))

(declare-fun b!3462422 () Bool)

(declare-fun res!1397019 () Bool)

(assert (=> b!3462422 (=> (not res!1397019) (not e!2145085))))

(assert (=> b!3462422 (= res!1397019 call!249706)))

(declare-fun e!2145082 () Bool)

(assert (=> b!3462422 (= e!2145082 e!2145085)))

(declare-fun b!3462423 () Bool)

(assert (=> b!3462423 (= e!2145086 call!249708)))

(declare-fun b!3462424 () Bool)

(declare-fun e!2145087 () Bool)

(declare-fun call!249707 () Bool)

(assert (=> b!3462424 (= e!2145087 call!249707)))

(declare-fun bm!249701 () Bool)

(assert (=> bm!249701 (= call!249706 call!249707)))

(declare-fun b!3462425 () Bool)

(declare-fun e!2145081 () Bool)

(declare-fun e!2145083 () Bool)

(assert (=> b!3462425 (= e!2145081 e!2145083)))

(declare-fun c!592846 () Bool)

(assert (=> b!3462425 (= c!592846 ((_ is Star!10199) (regex!5440 (rule!8032 separatorToken!241))))))

(declare-fun b!3462426 () Bool)

(assert (=> b!3462426 (= e!2145083 e!2145087)))

(declare-fun res!1397023 () Bool)

(assert (=> b!3462426 (= res!1397023 (not (nullable!3489 (reg!10528 (regex!5440 (rule!8032 separatorToken!241))))))))

(assert (=> b!3462426 (=> (not res!1397023) (not e!2145087))))

(declare-fun bm!249703 () Bool)

(declare-fun c!592845 () Bool)

(assert (=> bm!249703 (= call!249707 (validRegex!4645 (ite c!592846 (reg!10528 (regex!5440 (rule!8032 separatorToken!241))) (ite c!592845 (regOne!20911 (regex!5440 (rule!8032 separatorToken!241))) (regOne!20910 (regex!5440 (rule!8032 separatorToken!241)))))))))

(declare-fun b!3462427 () Bool)

(declare-fun res!1397022 () Bool)

(assert (=> b!3462427 (=> res!1397022 e!2145084)))

(assert (=> b!3462427 (= res!1397022 (not ((_ is Concat!15869) (regex!5440 (rule!8032 separatorToken!241)))))))

(assert (=> b!3462427 (= e!2145082 e!2145084)))

(declare-fun b!3462428 () Bool)

(assert (=> b!3462428 (= e!2145083 e!2145082)))

(assert (=> b!3462428 (= c!592845 ((_ is Union!10199) (regex!5440 (rule!8032 separatorToken!241))))))

(declare-fun bm!249702 () Bool)

(assert (=> bm!249702 (= call!249708 (validRegex!4645 (ite c!592845 (regTwo!20911 (regex!5440 (rule!8032 separatorToken!241))) (regTwo!20910 (regex!5440 (rule!8032 separatorToken!241))))))))

(declare-fun d!996681 () Bool)

(declare-fun res!1397020 () Bool)

(assert (=> d!996681 (=> res!1397020 e!2145081)))

(assert (=> d!996681 (= res!1397020 ((_ is ElementMatch!10199) (regex!5440 (rule!8032 separatorToken!241))))))

(assert (=> d!996681 (= (validRegex!4645 (regex!5440 (rule!8032 separatorToken!241))) e!2145081)))

(assert (= (and d!996681 (not res!1397020)) b!3462425))

(assert (= (and b!3462425 c!592846) b!3462426))

(assert (= (and b!3462425 (not c!592846)) b!3462428))

(assert (= (and b!3462426 res!1397023) b!3462424))

(assert (= (and b!3462428 c!592845) b!3462422))

(assert (= (and b!3462428 (not c!592845)) b!3462427))

(assert (= (and b!3462422 res!1397019) b!3462420))

(assert (= (and b!3462427 (not res!1397022)) b!3462421))

(assert (= (and b!3462421 res!1397021) b!3462423))

(assert (= (or b!3462420 b!3462423) bm!249702))

(assert (= (or b!3462422 b!3462421) bm!249701))

(assert (= (or b!3462424 bm!249701) bm!249703))

(declare-fun m!3866141 () Bool)

(assert (=> b!3462426 m!3866141))

(declare-fun m!3866143 () Bool)

(assert (=> bm!249703 m!3866143))

(declare-fun m!3866145 () Bool)

(assert (=> bm!249702 m!3866145))

(assert (=> d!996113 d!996681))

(declare-fun d!996695 () Bool)

(declare-fun lt!1177180 () Int)

(assert (=> d!996695 (= lt!1177180 (size!28201 (list!13535 (_2!21582 lt!1176840))))))

(assert (=> d!996695 (= lt!1177180 (size!28209 (c!592551 (_2!21582 lt!1176840))))))

(assert (=> d!996695 (= (size!28205 (_2!21582 lt!1176840)) lt!1177180)))

(declare-fun bs!560553 () Bool)

(assert (= bs!560553 d!996695))

(assert (=> bs!560553 m!3864935))

(assert (=> bs!560553 m!3864935))

(declare-fun m!3866159 () Bool)

(assert (=> bs!560553 m!3866159))

(declare-fun m!3866161 () Bool)

(assert (=> bs!560553 m!3866161))

(assert (=> b!3461609 d!996695))

(declare-fun d!996701 () Bool)

(declare-fun lt!1177181 () Int)

(assert (=> d!996701 (= lt!1177181 (size!28201 (list!13535 lt!1176617)))))

(assert (=> d!996701 (= lt!1177181 (size!28209 (c!592551 lt!1176617)))))

(assert (=> d!996701 (= (size!28205 lt!1176617) lt!1177181)))

(declare-fun bs!560554 () Bool)

(assert (= bs!560554 d!996701))

(assert (=> bs!560554 m!3864937))

(assert (=> bs!560554 m!3864937))

(assert (=> bs!560554 m!3865763))

(declare-fun m!3866163 () Bool)

(assert (=> bs!560554 m!3866163))

(assert (=> b!3461609 d!996701))

(declare-fun lt!1177182 () List!37295)

(declare-fun b!3462450 () Bool)

(declare-fun e!2145099 () Bool)

(assert (=> b!3462450 (= e!2145099 (or (not (= lt!1176614 Nil!37171)) (= lt!1177182 (t!273042 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494))))))))))

(declare-fun b!3462449 () Bool)

(declare-fun res!1397027 () Bool)

(assert (=> b!3462449 (=> (not res!1397027) (not e!2145099))))

(assert (=> b!3462449 (= res!1397027 (= (size!28201 lt!1177182) (+ (size!28201 (t!273042 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494)))))) (size!28201 lt!1176614))))))

(declare-fun b!3462447 () Bool)

(declare-fun e!2145098 () List!37295)

(assert (=> b!3462447 (= e!2145098 lt!1176614)))

(declare-fun b!3462448 () Bool)

(assert (=> b!3462448 (= e!2145098 (Cons!37171 (h!42591 (t!273042 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494)))))) (++!9165 (t!273042 (t!273042 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494)))))) lt!1176614)))))

(declare-fun d!996703 () Bool)

(assert (=> d!996703 e!2145099))

(declare-fun res!1397026 () Bool)

(assert (=> d!996703 (=> (not res!1397026) (not e!2145099))))

(assert (=> d!996703 (= res!1397026 (= (content!5190 lt!1177182) ((_ map or) (content!5190 (t!273042 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494)))))) (content!5190 lt!1176614))))))

(assert (=> d!996703 (= lt!1177182 e!2145098)))

(declare-fun c!592855 () Bool)

(assert (=> d!996703 (= c!592855 ((_ is Nil!37171) (t!273042 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494)))))))))

(assert (=> d!996703 (= (++!9165 (t!273042 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494))))) lt!1176614) lt!1177182)))

(assert (= (and d!996703 c!592855) b!3462447))

(assert (= (and d!996703 (not c!592855)) b!3462448))

(assert (= (and d!996703 res!1397026) b!3462449))

(assert (= (and b!3462449 res!1397027) b!3462450))

(declare-fun m!3866165 () Bool)

(assert (=> b!3462449 m!3866165))

(assert (=> b!3462449 m!3865803))

(assert (=> b!3462449 m!3864439))

(declare-fun m!3866167 () Bool)

(assert (=> b!3462448 m!3866167))

(declare-fun m!3866169 () Bool)

(assert (=> d!996703 m!3866169))

(assert (=> d!996703 m!3865877))

(assert (=> d!996703 m!3864447))

(assert (=> b!3461351 d!996703))

(declare-fun d!996705 () Bool)

(declare-fun res!1397028 () Bool)

(declare-fun e!2145101 () Bool)

(assert (=> d!996705 (=> (not res!1397028) (not e!2145101))))

(assert (=> d!996705 (= res!1397028 (rulesValid!2044 thiss!18206 (t!273043 rules!2135)))))

(assert (=> d!996705 (= (rulesInvariant!4426 thiss!18206 (t!273043 rules!2135)) e!2145101)))

(declare-fun b!3462453 () Bool)

(assert (=> b!3462453 (= e!2145101 (noDuplicateTag!2040 thiss!18206 (t!273043 rules!2135) Nil!37174))))

(assert (= (and d!996705 res!1397028) b!3462453))

(declare-fun m!3866175 () Bool)

(assert (=> d!996705 m!3866175))

(declare-fun m!3866177 () Bool)

(assert (=> b!3462453 m!3866177))

(assert (=> b!3461511 d!996705))

(declare-fun d!996709 () Bool)

(assert (=> d!996709 (rulesInvariant!4426 thiss!18206 (t!273043 rules!2135))))

(declare-fun lt!1177188 () Unit!52520)

(declare-fun choose!20031 (LexerInterface!5029 Rule!10680 List!37296) Unit!52520)

(assert (=> d!996709 (= lt!1177188 (choose!20031 thiss!18206 (h!42592 rules!2135) (t!273043 rules!2135)))))

(assert (=> d!996709 (rulesInvariant!4426 thiss!18206 (Cons!37172 (h!42592 rules!2135) (t!273043 rules!2135)))))

(assert (=> d!996709 (= (lemmaInvariantOnRulesThenOnTail!434 thiss!18206 (h!42592 rules!2135) (t!273043 rules!2135)) lt!1177188)))

(declare-fun bs!560557 () Bool)

(assert (= bs!560557 d!996709))

(assert (=> bs!560557 m!3864741))

(declare-fun m!3866193 () Bool)

(assert (=> bs!560557 m!3866193))

(declare-fun m!3866195 () Bool)

(assert (=> bs!560557 m!3866195))

(assert (=> b!3461511 d!996709))

(declare-fun b!3462458 () Bool)

(declare-fun lt!1177189 () Unit!52520)

(declare-fun lt!1177190 () Unit!52520)

(assert (=> b!3462458 (= lt!1177189 lt!1177190)))

(assert (=> b!3462458 (rulesInvariant!4426 thiss!18206 (t!273043 (t!273043 rules!2135)))))

(assert (=> b!3462458 (= lt!1177190 (lemmaInvariantOnRulesThenOnTail!434 thiss!18206 (h!42592 (t!273043 rules!2135)) (t!273043 (t!273043 rules!2135))))))

(declare-fun e!2145104 () Option!7530)

(assert (=> b!3462458 (= e!2145104 (getRuleFromTag!1083 thiss!18206 (t!273043 (t!273043 rules!2135)) (tag!6050 (rule!8032 (h!42593 tokens!494)))))))

(declare-fun d!996723 () Bool)

(declare-fun e!2145105 () Bool)

(assert (=> d!996723 e!2145105))

(declare-fun res!1397029 () Bool)

(assert (=> d!996723 (=> res!1397029 e!2145105)))

(declare-fun lt!1177191 () Option!7530)

(assert (=> d!996723 (= res!1397029 (isEmpty!21538 lt!1177191))))

(declare-fun e!2145106 () Option!7530)

(assert (=> d!996723 (= lt!1177191 e!2145106)))

(declare-fun c!592860 () Bool)

(assert (=> d!996723 (= c!592860 (and ((_ is Cons!37172) (t!273043 rules!2135)) (= (tag!6050 (h!42592 (t!273043 rules!2135))) (tag!6050 (rule!8032 (h!42593 tokens!494))))))))

(assert (=> d!996723 (rulesInvariant!4426 thiss!18206 (t!273043 rules!2135))))

(assert (=> d!996723 (= (getRuleFromTag!1083 thiss!18206 (t!273043 rules!2135) (tag!6050 (rule!8032 (h!42593 tokens!494)))) lt!1177191)))

(declare-fun b!3462459 () Bool)

(declare-fun e!2145107 () Bool)

(assert (=> b!3462459 (= e!2145107 (= (tag!6050 (get!11898 lt!1177191)) (tag!6050 (rule!8032 (h!42593 tokens!494)))))))

(declare-fun b!3462460 () Bool)

(assert (=> b!3462460 (= e!2145106 e!2145104)))

(declare-fun c!592859 () Bool)

(assert (=> b!3462460 (= c!592859 (and ((_ is Cons!37172) (t!273043 rules!2135)) (not (= (tag!6050 (h!42592 (t!273043 rules!2135))) (tag!6050 (rule!8032 (h!42593 tokens!494)))))))))

(declare-fun b!3462461 () Bool)

(assert (=> b!3462461 (= e!2145105 e!2145107)))

(declare-fun res!1397030 () Bool)

(assert (=> b!3462461 (=> (not res!1397030) (not e!2145107))))

(assert (=> b!3462461 (= res!1397030 (contains!6895 (t!273043 rules!2135) (get!11898 lt!1177191)))))

(declare-fun b!3462462 () Bool)

(assert (=> b!3462462 (= e!2145106 (Some!7529 (h!42592 (t!273043 rules!2135))))))

(declare-fun b!3462463 () Bool)

(assert (=> b!3462463 (= e!2145104 None!7529)))

(assert (= (and d!996723 c!592860) b!3462462))

(assert (= (and d!996723 (not c!592860)) b!3462460))

(assert (= (and b!3462460 c!592859) b!3462458))

(assert (= (and b!3462460 (not c!592859)) b!3462463))

(assert (= (and d!996723 (not res!1397029)) b!3462461))

(assert (= (and b!3462461 res!1397030) b!3462459))

(declare-fun m!3866201 () Bool)

(assert (=> b!3462458 m!3866201))

(declare-fun m!3866203 () Bool)

(assert (=> b!3462458 m!3866203))

(declare-fun m!3866205 () Bool)

(assert (=> b!3462458 m!3866205))

(declare-fun m!3866207 () Bool)

(assert (=> d!996723 m!3866207))

(assert (=> d!996723 m!3864741))

(declare-fun m!3866209 () Bool)

(assert (=> b!3462459 m!3866209))

(assert (=> b!3462461 m!3866209))

(assert (=> b!3462461 m!3866209))

(declare-fun m!3866211 () Bool)

(assert (=> b!3462461 m!3866211))

(assert (=> b!3461511 d!996723))

(declare-fun d!996737 () Bool)

(declare-fun c!592861 () Bool)

(assert (=> d!996737 (= c!592861 ((_ is Nil!37171) lt!1176690))))

(declare-fun e!2145108 () (InoxSet C!20584))

(assert (=> d!996737 (= (content!5190 lt!1176690) e!2145108)))

(declare-fun b!3462464 () Bool)

(assert (=> b!3462464 (= e!2145108 ((as const (Array C!20584 Bool)) false))))

(declare-fun b!3462465 () Bool)

(assert (=> b!3462465 (= e!2145108 ((_ map or) (store ((as const (Array C!20584 Bool)) false) (h!42591 lt!1176690) true) (content!5190 (t!273042 lt!1176690))))))

(assert (= (and d!996737 c!592861) b!3462464))

(assert (= (and d!996737 (not c!592861)) b!3462465))

(declare-fun m!3866213 () Bool)

(assert (=> b!3462465 m!3866213))

(declare-fun m!3866215 () Bool)

(assert (=> b!3462465 m!3866215))

(assert (=> d!996185 d!996737))

(declare-fun d!996739 () Bool)

(declare-fun c!592862 () Bool)

(assert (=> d!996739 (= c!592862 ((_ is Nil!37171) (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494)))) lt!1176614)))))

(declare-fun e!2145109 () (InoxSet C!20584))

(assert (=> d!996739 (= (content!5190 (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494)))) lt!1176614)) e!2145109)))

(declare-fun b!3462466 () Bool)

(assert (=> b!3462466 (= e!2145109 ((as const (Array C!20584 Bool)) false))))

(declare-fun b!3462467 () Bool)

(assert (=> b!3462467 (= e!2145109 ((_ map or) (store ((as const (Array C!20584 Bool)) false) (h!42591 (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494)))) lt!1176614)) true) (content!5190 (t!273042 (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494)))) lt!1176614)))))))

(assert (= (and d!996739 c!592862) b!3462466))

(assert (= (and d!996739 (not c!592862)) b!3462467))

(declare-fun m!3866217 () Bool)

(assert (=> b!3462467 m!3866217))

(declare-fun m!3866219 () Bool)

(assert (=> b!3462467 m!3866219))

(assert (=> d!996185 d!996739))

(declare-fun d!996741 () Bool)

(declare-fun c!592863 () Bool)

(assert (=> d!996741 (= c!592863 ((_ is Nil!37171) (printWithSeparatorTokenList!316 thiss!18206 (t!273044 (t!273044 tokens!494)) separatorToken!241)))))

(declare-fun e!2145110 () (InoxSet C!20584))

(assert (=> d!996741 (= (content!5190 (printWithSeparatorTokenList!316 thiss!18206 (t!273044 (t!273044 tokens!494)) separatorToken!241)) e!2145110)))

(declare-fun b!3462468 () Bool)

(assert (=> b!3462468 (= e!2145110 ((as const (Array C!20584 Bool)) false))))

(declare-fun b!3462469 () Bool)

(assert (=> b!3462469 (= e!2145110 ((_ map or) (store ((as const (Array C!20584 Bool)) false) (h!42591 (printWithSeparatorTokenList!316 thiss!18206 (t!273044 (t!273044 tokens!494)) separatorToken!241)) true) (content!5190 (t!273042 (printWithSeparatorTokenList!316 thiss!18206 (t!273044 (t!273044 tokens!494)) separatorToken!241)))))))

(assert (= (and d!996741 c!592863) b!3462468))

(assert (= (and d!996741 (not c!592863)) b!3462469))

(declare-fun m!3866221 () Bool)

(assert (=> b!3462469 m!3866221))

(declare-fun m!3866223 () Bool)

(assert (=> b!3462469 m!3866223))

(assert (=> d!996185 d!996741))

(declare-fun b!3462473 () Bool)

(declare-fun lt!1177192 () List!37295)

(declare-fun e!2145112 () Bool)

(assert (=> b!3462473 (= e!2145112 (or (not (= lt!1176600 Nil!37171)) (= lt!1177192 (t!273042 lt!1176597))))))

(declare-fun b!3462472 () Bool)

(declare-fun res!1397032 () Bool)

(assert (=> b!3462472 (=> (not res!1397032) (not e!2145112))))

(assert (=> b!3462472 (= res!1397032 (= (size!28201 lt!1177192) (+ (size!28201 (t!273042 lt!1176597)) (size!28201 lt!1176600))))))

(declare-fun b!3462470 () Bool)

(declare-fun e!2145111 () List!37295)

(assert (=> b!3462470 (= e!2145111 lt!1176600)))

(declare-fun b!3462471 () Bool)

(assert (=> b!3462471 (= e!2145111 (Cons!37171 (h!42591 (t!273042 lt!1176597)) (++!9165 (t!273042 (t!273042 lt!1176597)) lt!1176600)))))

(declare-fun d!996743 () Bool)

(assert (=> d!996743 e!2145112))

(declare-fun res!1397031 () Bool)

(assert (=> d!996743 (=> (not res!1397031) (not e!2145112))))

(assert (=> d!996743 (= res!1397031 (= (content!5190 lt!1177192) ((_ map or) (content!5190 (t!273042 lt!1176597)) (content!5190 lt!1176600))))))

(assert (=> d!996743 (= lt!1177192 e!2145111)))

(declare-fun c!592864 () Bool)

(assert (=> d!996743 (= c!592864 ((_ is Nil!37171) (t!273042 lt!1176597)))))

(assert (=> d!996743 (= (++!9165 (t!273042 lt!1176597) lt!1176600) lt!1177192)))

(assert (= (and d!996743 c!592864) b!3462470))

(assert (= (and d!996743 (not c!592864)) b!3462471))

(assert (= (and d!996743 res!1397031) b!3462472))

(assert (= (and b!3462472 res!1397032) b!3462473))

(declare-fun m!3866225 () Bool)

(assert (=> b!3462472 m!3866225))

(assert (=> b!3462472 m!3864981))

(assert (=> b!3462472 m!3864611))

(declare-fun m!3866227 () Bool)

(assert (=> b!3462471 m!3866227))

(declare-fun m!3866229 () Bool)

(assert (=> d!996743 m!3866229))

(assert (=> d!996743 m!3866031))

(assert (=> d!996743 m!3864617))

(assert (=> b!3461413 d!996743))

(declare-fun d!996745 () Bool)

(assert (=> d!996745 (= (inv!50341 (tag!6050 (rule!8032 (h!42593 (t!273044 tokens!494))))) (= (mod (str.len (value!175499 (tag!6050 (rule!8032 (h!42593 (t!273044 tokens!494)))))) 2) 0))))

(assert (=> b!3461880 d!996745))

(declare-fun d!996747 () Bool)

(declare-fun res!1397033 () Bool)

(declare-fun e!2145113 () Bool)

(assert (=> d!996747 (=> (not res!1397033) (not e!2145113))))

(assert (=> d!996747 (= res!1397033 (semiInverseModEq!2284 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494)))))))))

(assert (=> d!996747 (= (inv!50344 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) e!2145113)))

(declare-fun b!3462474 () Bool)

(assert (=> b!3462474 (= e!2145113 (equivClasses!2183 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494)))))))))

(assert (= (and d!996747 res!1397033) b!3462474))

(declare-fun m!3866231 () Bool)

(assert (=> d!996747 m!3866231))

(declare-fun m!3866233 () Bool)

(assert (=> b!3462474 m!3866233))

(assert (=> b!3461880 d!996747))

(declare-fun d!996749 () Bool)

(declare-fun lt!1177193 () Int)

(assert (=> d!996749 (>= lt!1177193 0)))

(declare-fun e!2145114 () Int)

(assert (=> d!996749 (= lt!1177193 e!2145114)))

(declare-fun c!592865 () Bool)

(assert (=> d!996749 (= c!592865 ((_ is Nil!37171) lt!1176695))))

(assert (=> d!996749 (= (size!28201 lt!1176695) lt!1177193)))

(declare-fun b!3462475 () Bool)

(assert (=> b!3462475 (= e!2145114 0)))

(declare-fun b!3462476 () Bool)

(assert (=> b!3462476 (= e!2145114 (+ 1 (size!28201 (t!273042 lt!1176695))))))

(assert (= (and d!996749 c!592865) b!3462475))

(assert (= (and d!996749 (not c!592865)) b!3462476))

(declare-fun m!3866235 () Bool)

(assert (=> b!3462476 m!3866235))

(assert (=> b!3461365 d!996749))

(assert (=> b!3461365 d!996309))

(assert (=> b!3461365 d!996565))

(declare-fun d!996751 () Bool)

(declare-fun e!2145126 () Bool)

(assert (=> d!996751 e!2145126))

(declare-fun res!1397048 () Bool)

(assert (=> d!996751 (=> (not res!1397048) (not e!2145126))))

(declare-fun lt!1177199 () BalanceConc!22126)

(assert (=> d!996751 (= res!1397048 (= (list!13537 lt!1177199) tokens!494))))

(declare-fun fromList!748 (List!37297) Conc!11256)

(assert (=> d!996751 (= lt!1177199 (BalanceConc!22127 (fromList!748 tokens!494)))))

(assert (=> d!996751 (= (fromListB!1787 tokens!494) lt!1177199)))

(declare-fun b!3462491 () Bool)

(assert (=> b!3462491 (= e!2145126 (isBalanced!3417 (fromList!748 tokens!494)))))

(assert (= (and d!996751 res!1397048) b!3462491))

(declare-fun m!3866239 () Bool)

(assert (=> d!996751 m!3866239))

(declare-fun m!3866241 () Bool)

(assert (=> d!996751 m!3866241))

(assert (=> b!3462491 m!3866241))

(assert (=> b!3462491 m!3866241))

(declare-fun m!3866243 () Bool)

(assert (=> b!3462491 m!3866243))

(assert (=> d!996415 d!996751))

(declare-fun d!996755 () Bool)

(declare-fun lt!1177202 () Int)

(assert (=> d!996755 (>= lt!1177202 0)))

(declare-fun e!2145127 () Int)

(assert (=> d!996755 (= lt!1177202 e!2145127)))

(declare-fun c!592867 () Bool)

(assert (=> d!996755 (= c!592867 ((_ is Nil!37171) lt!1176689))))

(assert (=> d!996755 (= (size!28201 lt!1176689) lt!1177202)))

(declare-fun b!3462492 () Bool)

(assert (=> b!3462492 (= e!2145127 0)))

(declare-fun b!3462493 () Bool)

(assert (=> b!3462493 (= e!2145127 (+ 1 (size!28201 (t!273042 lt!1176689))))))

(assert (= (and d!996755 c!592867) b!3462492))

(assert (= (and d!996755 (not c!592867)) b!3462493))

(declare-fun m!3866245 () Bool)

(assert (=> b!3462493 m!3866245))

(assert (=> b!3461344 d!996755))

(assert (=> b!3461344 d!996565))

(declare-fun d!996757 () Bool)

(declare-fun lt!1177204 () Int)

(assert (=> d!996757 (>= lt!1177204 0)))

(declare-fun e!2145128 () Int)

(assert (=> d!996757 (= lt!1177204 e!2145128)))

(declare-fun c!592868 () Bool)

(assert (=> d!996757 (= c!592868 ((_ is Nil!37171) lt!1176603))))

(assert (=> d!996757 (= (size!28201 lt!1176603) lt!1177204)))

(declare-fun b!3462494 () Bool)

(assert (=> b!3462494 (= e!2145128 0)))

(declare-fun b!3462495 () Bool)

(assert (=> b!3462495 (= e!2145128 (+ 1 (size!28201 (t!273042 lt!1176603))))))

(assert (= (and d!996757 c!592868) b!3462494))

(assert (= (and d!996757 (not c!592868)) b!3462495))

(declare-fun m!3866249 () Bool)

(assert (=> b!3462495 m!3866249))

(assert (=> b!3461344 d!996757))

(declare-fun d!996761 () Bool)

(declare-fun c!592869 () Bool)

(assert (=> d!996761 (= c!592869 ((_ is Node!11255) (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (value!175500 (h!42593 (t!273044 tokens!494)))))))))

(declare-fun e!2145129 () Bool)

(assert (=> d!996761 (= (inv!50346 (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (value!175500 (h!42593 (t!273044 tokens!494)))))) e!2145129)))

(declare-fun b!3462496 () Bool)

(assert (=> b!3462496 (= e!2145129 (inv!50350 (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (value!175500 (h!42593 (t!273044 tokens!494)))))))))

(declare-fun b!3462497 () Bool)

(declare-fun e!2145130 () Bool)

(assert (=> b!3462497 (= e!2145129 e!2145130)))

(declare-fun res!1397049 () Bool)

(assert (=> b!3462497 (= res!1397049 (not ((_ is Leaf!17586) (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (value!175500 (h!42593 (t!273044 tokens!494))))))))))

(assert (=> b!3462497 (=> res!1397049 e!2145130)))

(declare-fun b!3462498 () Bool)

(assert (=> b!3462498 (= e!2145130 (inv!50351 (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (value!175500 (h!42593 (t!273044 tokens!494)))))))))

(assert (= (and d!996761 c!592869) b!3462496))

(assert (= (and d!996761 (not c!592869)) b!3462497))

(assert (= (and b!3462497 (not res!1397049)) b!3462498))

(declare-fun m!3866251 () Bool)

(assert (=> b!3462496 m!3866251))

(declare-fun m!3866253 () Bool)

(assert (=> b!3462498 m!3866253))

(assert (=> b!3461358 d!996761))

(declare-fun b!3462499 () Bool)

(declare-fun res!1397050 () Bool)

(declare-fun e!2145131 () Bool)

(assert (=> b!3462499 (=> (not res!1397050) (not e!2145131))))

(assert (=> b!3462499 (= res!1397050 (isBalanced!3417 (left!29006 (c!592552 lt!1176737))))))

(declare-fun b!3462500 () Bool)

(assert (=> b!3462500 (= e!2145131 (not (isEmpty!21537 (right!29336 (c!592552 lt!1176737)))))))

(declare-fun b!3462501 () Bool)

(declare-fun e!2145132 () Bool)

(assert (=> b!3462501 (= e!2145132 e!2145131)))

(declare-fun res!1397054 () Bool)

(assert (=> b!3462501 (=> (not res!1397054) (not e!2145131))))

(assert (=> b!3462501 (= res!1397054 (<= (- 1) (- (height!1697 (left!29006 (c!592552 lt!1176737))) (height!1697 (right!29336 (c!592552 lt!1176737))))))))

(declare-fun b!3462502 () Bool)

(declare-fun res!1397055 () Bool)

(assert (=> b!3462502 (=> (not res!1397055) (not e!2145131))))

(assert (=> b!3462502 (= res!1397055 (isBalanced!3417 (right!29336 (c!592552 lt!1176737))))))

(declare-fun d!996763 () Bool)

(declare-fun res!1397053 () Bool)

(assert (=> d!996763 (=> res!1397053 e!2145132)))

(assert (=> d!996763 (= res!1397053 (not ((_ is Node!11256) (c!592552 lt!1176737))))))

(assert (=> d!996763 (= (isBalanced!3417 (c!592552 lt!1176737)) e!2145132)))

(declare-fun b!3462503 () Bool)

(declare-fun res!1397051 () Bool)

(assert (=> b!3462503 (=> (not res!1397051) (not e!2145131))))

(assert (=> b!3462503 (= res!1397051 (not (isEmpty!21537 (left!29006 (c!592552 lt!1176737)))))))

(declare-fun b!3462504 () Bool)

(declare-fun res!1397052 () Bool)

(assert (=> b!3462504 (=> (not res!1397052) (not e!2145131))))

(assert (=> b!3462504 (= res!1397052 (<= (- (height!1697 (left!29006 (c!592552 lt!1176737))) (height!1697 (right!29336 (c!592552 lt!1176737)))) 1))))

(assert (= (and d!996763 (not res!1397053)) b!3462501))

(assert (= (and b!3462501 res!1397054) b!3462504))

(assert (= (and b!3462504 res!1397052) b!3462499))

(assert (= (and b!3462499 res!1397050) b!3462502))

(assert (= (and b!3462502 res!1397055) b!3462503))

(assert (= (and b!3462503 res!1397051) b!3462500))

(declare-fun m!3866255 () Bool)

(assert (=> b!3462500 m!3866255))

(declare-fun m!3866257 () Bool)

(assert (=> b!3462501 m!3866257))

(declare-fun m!3866259 () Bool)

(assert (=> b!3462501 m!3866259))

(declare-fun m!3866261 () Bool)

(assert (=> b!3462502 m!3866261))

(assert (=> b!3462504 m!3866257))

(assert (=> b!3462504 m!3866259))

(declare-fun m!3866263 () Bool)

(assert (=> b!3462499 m!3866263))

(declare-fun m!3866265 () Bool)

(assert (=> b!3462503 m!3866265))

(assert (=> b!3461405 d!996763))

(declare-fun d!996765 () Bool)

(declare-fun lt!1177205 () Bool)

(assert (=> d!996765 (= lt!1177205 (select (content!5190 (t!273042 (usedCharacters!674 (regex!5440 (rule!8032 separatorToken!241))))) lt!1176623))))

(declare-fun e!2145134 () Bool)

(assert (=> d!996765 (= lt!1177205 e!2145134)))

(declare-fun res!1397056 () Bool)

(assert (=> d!996765 (=> (not res!1397056) (not e!2145134))))

(assert (=> d!996765 (= res!1397056 ((_ is Cons!37171) (t!273042 (usedCharacters!674 (regex!5440 (rule!8032 separatorToken!241))))))))

(assert (=> d!996765 (= (contains!6896 (t!273042 (usedCharacters!674 (regex!5440 (rule!8032 separatorToken!241)))) lt!1176623) lt!1177205)))

(declare-fun b!3462505 () Bool)

(declare-fun e!2145133 () Bool)

(assert (=> b!3462505 (= e!2145134 e!2145133)))

(declare-fun res!1397057 () Bool)

(assert (=> b!3462505 (=> res!1397057 e!2145133)))

(assert (=> b!3462505 (= res!1397057 (= (h!42591 (t!273042 (usedCharacters!674 (regex!5440 (rule!8032 separatorToken!241))))) lt!1176623))))

(declare-fun b!3462506 () Bool)

(assert (=> b!3462506 (= e!2145133 (contains!6896 (t!273042 (t!273042 (usedCharacters!674 (regex!5440 (rule!8032 separatorToken!241))))) lt!1176623))))

(assert (= (and d!996765 res!1397056) b!3462505))

(assert (= (and b!3462505 (not res!1397057)) b!3462506))

(assert (=> d!996765 m!3865933))

(declare-fun m!3866267 () Bool)

(assert (=> d!996765 m!3866267))

(declare-fun m!3866269 () Bool)

(assert (=> b!3462506 m!3866269))

(assert (=> b!3461488 d!996765))

(declare-fun d!996767 () Bool)

(assert (=> d!996767 (= (isDefined!5797 lt!1176668) (not (isEmpty!21530 lt!1176668)))))

(declare-fun bs!560562 () Bool)

(assert (= bs!560562 d!996767))

(assert (=> bs!560562 m!3864293))

(assert (=> b!3461236 d!996767))

(declare-fun b!3462508 () Bool)

(declare-fun e!2145136 () Bool)

(declare-fun e!2145135 () Bool)

(assert (=> b!3462508 (= e!2145136 e!2145135)))

(declare-fun lt!1177208 () tuple2!36896)

(declare-fun res!1397059 () Bool)

(assert (=> b!3462508 (= res!1397059 (< (size!28205 (_2!21582 lt!1177208)) (size!28205 (print!2094 thiss!18206 (singletonSeq!2536 (h!42593 (t!273044 tokens!494)))))))))

(assert (=> b!3462508 (=> (not res!1397059) (not e!2145135))))

(declare-fun e!2145139 () Bool)

(declare-fun b!3462509 () Bool)

(assert (=> b!3462509 (= e!2145139 (= (list!13535 (_2!21582 lt!1177208)) (_2!21586 (lexList!1450 thiss!18206 rules!2135 (list!13535 (print!2094 thiss!18206 (singletonSeq!2536 (h!42593 (t!273044 tokens!494)))))))))))

(declare-fun b!3462510 () Bool)

(assert (=> b!3462510 (= e!2145135 (not (isEmpty!21526 (_1!21582 lt!1177208))))))

(declare-fun b!3462511 () Bool)

(assert (=> b!3462511 (= e!2145136 (= (_2!21582 lt!1177208) (print!2094 thiss!18206 (singletonSeq!2536 (h!42593 (t!273044 tokens!494))))))))

(declare-fun d!996769 () Bool)

(assert (=> d!996769 e!2145139))

(declare-fun res!1397058 () Bool)

(assert (=> d!996769 (=> (not res!1397058) (not e!2145139))))

(assert (=> d!996769 (= res!1397058 e!2145136)))

(declare-fun c!592870 () Bool)

(assert (=> d!996769 (= c!592870 (> (size!28200 (_1!21582 lt!1177208)) 0))))

(assert (=> d!996769 (= lt!1177208 (lexTailRecV2!1058 thiss!18206 rules!2135 (print!2094 thiss!18206 (singletonSeq!2536 (h!42593 (t!273044 tokens!494)))) (BalanceConc!22125 Empty!11255) (print!2094 thiss!18206 (singletonSeq!2536 (h!42593 (t!273044 tokens!494)))) (BalanceConc!22127 Empty!11256)))))

(assert (=> d!996769 (= (lex!2355 thiss!18206 rules!2135 (print!2094 thiss!18206 (singletonSeq!2536 (h!42593 (t!273044 tokens!494))))) lt!1177208)))

(declare-fun b!3462507 () Bool)

(declare-fun res!1397060 () Bool)

(assert (=> b!3462507 (=> (not res!1397060) (not e!2145139))))

(assert (=> b!3462507 (= res!1397060 (= (list!13537 (_1!21582 lt!1177208)) (_1!21586 (lexList!1450 thiss!18206 rules!2135 (list!13535 (print!2094 thiss!18206 (singletonSeq!2536 (h!42593 (t!273044 tokens!494)))))))))))

(assert (= (and d!996769 c!592870) b!3462508))

(assert (= (and d!996769 (not c!592870)) b!3462511))

(assert (= (and b!3462508 res!1397059) b!3462510))

(assert (= (and d!996769 res!1397058) b!3462507))

(assert (= (and b!3462507 res!1397060) b!3462509))

(declare-fun m!3866271 () Bool)

(assert (=> b!3462509 m!3866271))

(assert (=> b!3462509 m!3864707))

(declare-fun m!3866273 () Bool)

(assert (=> b!3462509 m!3866273))

(assert (=> b!3462509 m!3866273))

(declare-fun m!3866275 () Bool)

(assert (=> b!3462509 m!3866275))

(declare-fun m!3866277 () Bool)

(assert (=> b!3462507 m!3866277))

(assert (=> b!3462507 m!3864707))

(assert (=> b!3462507 m!3866273))

(assert (=> b!3462507 m!3866273))

(assert (=> b!3462507 m!3866275))

(declare-fun m!3866279 () Bool)

(assert (=> b!3462508 m!3866279))

(assert (=> b!3462508 m!3864707))

(declare-fun m!3866281 () Bool)

(assert (=> b!3462508 m!3866281))

(declare-fun m!3866283 () Bool)

(assert (=> d!996769 m!3866283))

(assert (=> d!996769 m!3864707))

(assert (=> d!996769 m!3864707))

(declare-fun m!3866285 () Bool)

(assert (=> d!996769 m!3866285))

(declare-fun m!3866287 () Bool)

(assert (=> b!3462510 m!3866287))

(assert (=> d!996243 d!996769))

(declare-fun d!996771 () Bool)

(declare-fun lt!1177209 () BalanceConc!22124)

(assert (=> d!996771 (= (list!13535 lt!1177209) (printList!1577 thiss!18206 (list!13537 (singletonSeq!2536 (h!42593 (t!273044 tokens!494))))))))

(assert (=> d!996771 (= lt!1177209 (printTailRec!1524 thiss!18206 (singletonSeq!2536 (h!42593 (t!273044 tokens!494))) 0 (BalanceConc!22125 Empty!11255)))))

(assert (=> d!996771 (= (print!2094 thiss!18206 (singletonSeq!2536 (h!42593 (t!273044 tokens!494)))) lt!1177209)))

(declare-fun bs!560563 () Bool)

(assert (= bs!560563 d!996771))

(declare-fun m!3866289 () Bool)

(assert (=> bs!560563 m!3866289))

(assert (=> bs!560563 m!3864065))

(assert (=> bs!560563 m!3864709))

(assert (=> bs!560563 m!3864709))

(declare-fun m!3866291 () Bool)

(assert (=> bs!560563 m!3866291))

(assert (=> bs!560563 m!3864065))

(declare-fun m!3866293 () Bool)

(assert (=> bs!560563 m!3866293))

(assert (=> d!996243 d!996771))

(declare-fun d!996773 () Bool)

(declare-fun lt!1177210 () Int)

(assert (=> d!996773 (= lt!1177210 (size!28206 (list!13537 (_1!21582 lt!1176773))))))

(assert (=> d!996773 (= lt!1177210 (size!28207 (c!592552 (_1!21582 lt!1176773))))))

(assert (=> d!996773 (= (size!28200 (_1!21582 lt!1176773)) lt!1177210)))

(declare-fun bs!560564 () Bool)

(assert (= bs!560564 d!996773))

(declare-fun m!3866295 () Bool)

(assert (=> bs!560564 m!3866295))

(assert (=> bs!560564 m!3866295))

(declare-fun m!3866297 () Bool)

(assert (=> bs!560564 m!3866297))

(declare-fun m!3866299 () Bool)

(assert (=> bs!560564 m!3866299))

(assert (=> d!996243 d!996773))

(declare-fun d!996775 () Bool)

(assert (=> d!996775 (= (list!13537 (_1!21582 (lex!2355 thiss!18206 rules!2135 (print!2094 thiss!18206 (singletonSeq!2536 (h!42593 (t!273044 tokens!494))))))) (list!13541 (c!592552 (_1!21582 (lex!2355 thiss!18206 rules!2135 (print!2094 thiss!18206 (singletonSeq!2536 (h!42593 (t!273044 tokens!494)))))))))))

(declare-fun bs!560565 () Bool)

(assert (= bs!560565 d!996775))

(declare-fun m!3866301 () Bool)

(assert (=> bs!560565 m!3866301))

(assert (=> d!996243 d!996775))

(assert (=> d!996243 d!996269))

(assert (=> d!996243 d!996135))

(declare-fun d!996777 () Bool)

(assert (=> d!996777 (= (list!13537 (singletonSeq!2536 (h!42593 (t!273044 tokens!494)))) (list!13541 (c!592552 (singletonSeq!2536 (h!42593 (t!273044 tokens!494))))))))

(declare-fun bs!560566 () Bool)

(assert (= bs!560566 d!996777))

(declare-fun m!3866303 () Bool)

(assert (=> bs!560566 m!3866303))

(assert (=> d!996243 d!996777))

(declare-fun d!996779 () Bool)

(declare-fun lt!1177212 () Int)

(assert (=> d!996779 (= lt!1177212 (size!28206 (list!13537 lt!1176620)))))

(assert (=> d!996779 (= lt!1177212 (size!28207 (c!592552 lt!1176620)))))

(assert (=> d!996779 (= (size!28200 lt!1176620) lt!1177212)))

(declare-fun bs!560567 () Bool)

(assert (= bs!560567 d!996779))

(assert (=> bs!560567 m!3865033))

(assert (=> bs!560567 m!3865033))

(declare-fun m!3866305 () Bool)

(assert (=> bs!560567 m!3866305))

(declare-fun m!3866307 () Bool)

(assert (=> bs!560567 m!3866307))

(assert (=> b!3461668 d!996779))

(declare-fun d!996781 () Bool)

(assert (=> d!996781 (= (isEmpty!21536 (list!13537 (_1!21582 (lex!2355 thiss!18206 rules!2135 lt!1176613)))) ((_ is Nil!37173) (list!13537 (_1!21582 (lex!2355 thiss!18206 rules!2135 lt!1176613)))))))

(assert (=> d!996223 d!996781))

(declare-fun d!996785 () Bool)

(assert (=> d!996785 (= (list!13537 (_1!21582 (lex!2355 thiss!18206 rules!2135 lt!1176613))) (list!13541 (c!592552 (_1!21582 (lex!2355 thiss!18206 rules!2135 lt!1176613)))))))

(declare-fun bs!560568 () Bool)

(assert (= bs!560568 d!996785))

(declare-fun m!3866313 () Bool)

(assert (=> bs!560568 m!3866313))

(assert (=> d!996223 d!996785))

(declare-fun d!996787 () Bool)

(declare-fun lt!1177216 () Bool)

(assert (=> d!996787 (= lt!1177216 (isEmpty!21536 (list!13541 (c!592552 (_1!21582 (lex!2355 thiss!18206 rules!2135 lt!1176613))))))))

(assert (=> d!996787 (= lt!1177216 (= (size!28207 (c!592552 (_1!21582 (lex!2355 thiss!18206 rules!2135 lt!1176613)))) 0))))

(assert (=> d!996787 (= (isEmpty!21537 (c!592552 (_1!21582 (lex!2355 thiss!18206 rules!2135 lt!1176613)))) lt!1177216)))

(declare-fun bs!560570 () Bool)

(assert (= bs!560570 d!996787))

(assert (=> bs!560570 m!3866313))

(assert (=> bs!560570 m!3866313))

(declare-fun m!3866333 () Bool)

(assert (=> bs!560570 m!3866333))

(declare-fun m!3866337 () Bool)

(assert (=> bs!560570 m!3866337))

(assert (=> d!996223 d!996787))

(declare-fun d!996793 () Bool)

(declare-fun lt!1177217 () Int)

(assert (=> d!996793 (= lt!1177217 (size!28206 (list!13537 (_1!21582 lt!1176808))))))

(assert (=> d!996793 (= lt!1177217 (size!28207 (c!592552 (_1!21582 lt!1176808))))))

(assert (=> d!996793 (= (size!28200 (_1!21582 lt!1176808)) lt!1177217)))

(declare-fun bs!560571 () Bool)

(assert (= bs!560571 d!996793))

(assert (=> bs!560571 m!3864829))

(assert (=> bs!560571 m!3864829))

(declare-fun m!3866339 () Bool)

(assert (=> bs!560571 m!3866339))

(declare-fun m!3866341 () Bool)

(assert (=> bs!560571 m!3866341))

(assert (=> d!996285 d!996793))

(declare-fun b!3462853 () Bool)

(declare-fun e!2145339 () tuple2!36896)

(declare-fun lt!1177406 () BalanceConc!22124)

(assert (=> b!3462853 (= e!2145339 (tuple2!36897 (BalanceConc!22127 Empty!11256) lt!1177406))))

(declare-datatypes ((tuple2!36908 0))(
  ( (tuple2!36909 (_1!21588 Token!10246) (_2!21588 BalanceConc!22124)) )
))
(declare-datatypes ((Option!7531 0))(
  ( (None!7530) (Some!7530 (v!36866 tuple2!36908)) )
))
(declare-fun lt!1177379 () Option!7531)

(declare-fun b!3462854 () Bool)

(declare-fun e!2145338 () tuple2!36896)

(declare-fun lt!1177403 () BalanceConc!22124)

(declare-fun append!966 (BalanceConc!22126 Token!10246) BalanceConc!22126)

(assert (=> b!3462854 (= e!2145338 (lexTailRecV2!1058 thiss!18206 rules!2135 lt!1176595 lt!1177403 (_2!21588 (v!36866 lt!1177379)) (append!966 (BalanceConc!22127 Empty!11256) (_1!21588 (v!36866 lt!1177379)))))))

(declare-fun lt!1177385 () tuple2!36896)

(declare-fun lexRec!750 (LexerInterface!5029 List!37296 BalanceConc!22124) tuple2!36896)

(assert (=> b!3462854 (= lt!1177385 (lexRec!750 thiss!18206 rules!2135 (_2!21588 (v!36866 lt!1177379))))))

(declare-fun lt!1177409 () List!37295)

(assert (=> b!3462854 (= lt!1177409 (list!13535 (BalanceConc!22125 Empty!11255)))))

(declare-fun lt!1177394 () List!37295)

(assert (=> b!3462854 (= lt!1177394 (list!13535 (charsOf!3454 (_1!21588 (v!36866 lt!1177379)))))))

(declare-fun lt!1177404 () List!37295)

(assert (=> b!3462854 (= lt!1177404 (list!13535 (_2!21588 (v!36866 lt!1177379))))))

(declare-fun lt!1177387 () Unit!52520)

(assert (=> b!3462854 (= lt!1177387 (lemmaConcatAssociativity!1960 lt!1177409 lt!1177394 lt!1177404))))

(assert (=> b!3462854 (= (++!9165 (++!9165 lt!1177409 lt!1177394) lt!1177404) (++!9165 lt!1177409 (++!9165 lt!1177394 lt!1177404)))))

(declare-fun lt!1177402 () Unit!52520)

(assert (=> b!3462854 (= lt!1177402 lt!1177387)))

(declare-fun lt!1177380 () Option!7531)

(declare-fun maxPrefixZipperSequence!1143 (LexerInterface!5029 List!37296 BalanceConc!22124) Option!7531)

(assert (=> b!3462854 (= lt!1177380 (maxPrefixZipperSequence!1143 thiss!18206 rules!2135 lt!1176595))))

(declare-fun c!592974 () Bool)

(assert (=> b!3462854 (= c!592974 ((_ is Some!7530) lt!1177380))))

(declare-fun e!2145337 () tuple2!36896)

(assert (=> b!3462854 (= (lexRec!750 thiss!18206 rules!2135 lt!1176595) e!2145337)))

(declare-fun lt!1177389 () Unit!52520)

(declare-fun Unit!52527 () Unit!52520)

(assert (=> b!3462854 (= lt!1177389 Unit!52527)))

(declare-fun lt!1177381 () List!37297)

(assert (=> b!3462854 (= lt!1177381 (list!13537 (BalanceConc!22127 Empty!11256)))))

(declare-fun lt!1177388 () List!37297)

(assert (=> b!3462854 (= lt!1177388 (Cons!37173 (_1!21588 (v!36866 lt!1177379)) Nil!37173))))

(declare-fun lt!1177376 () List!37297)

(assert (=> b!3462854 (= lt!1177376 (list!13537 (_1!21582 lt!1177385)))))

(declare-fun lt!1177384 () Unit!52520)

(declare-fun lemmaConcatAssociativity!1961 (List!37297 List!37297 List!37297) Unit!52520)

(assert (=> b!3462854 (= lt!1177384 (lemmaConcatAssociativity!1961 lt!1177381 lt!1177388 lt!1177376))))

(declare-fun ++!9168 (List!37297 List!37297) List!37297)

(assert (=> b!3462854 (= (++!9168 (++!9168 lt!1177381 lt!1177388) lt!1177376) (++!9168 lt!1177381 (++!9168 lt!1177388 lt!1177376)))))

(declare-fun lt!1177408 () Unit!52520)

(assert (=> b!3462854 (= lt!1177408 lt!1177384)))

(declare-fun lt!1177392 () List!37295)

(assert (=> b!3462854 (= lt!1177392 (++!9165 (list!13535 (BalanceConc!22125 Empty!11255)) (list!13535 (charsOf!3454 (_1!21588 (v!36866 lt!1177379))))))))

(declare-fun lt!1177405 () List!37295)

(assert (=> b!3462854 (= lt!1177405 (list!13535 (_2!21588 (v!36866 lt!1177379))))))

(declare-fun lt!1177382 () List!37297)

(assert (=> b!3462854 (= lt!1177382 (list!13537 (append!966 (BalanceConc!22127 Empty!11256) (_1!21588 (v!36866 lt!1177379)))))))

(declare-fun lt!1177397 () Unit!52520)

(declare-fun lemmaLexThenLexPrefix!515 (LexerInterface!5029 List!37296 List!37295 List!37295 List!37297 List!37297 List!37295) Unit!52520)

(assert (=> b!3462854 (= lt!1177397 (lemmaLexThenLexPrefix!515 thiss!18206 rules!2135 lt!1177392 lt!1177405 lt!1177382 (list!13537 (_1!21582 lt!1177385)) (list!13535 (_2!21582 lt!1177385))))))

(assert (=> b!3462854 (= (lexList!1450 thiss!18206 rules!2135 lt!1177392) (tuple2!36905 lt!1177382 Nil!37171))))

(declare-fun lt!1177395 () Unit!52520)

(assert (=> b!3462854 (= lt!1177395 lt!1177397)))

(assert (=> b!3462854 (= lt!1177406 (++!9166 (BalanceConc!22125 Empty!11255) (charsOf!3454 (_1!21588 (v!36866 lt!1177379)))))))

(declare-fun lt!1177377 () Option!7531)

(assert (=> b!3462854 (= lt!1177377 (maxPrefixZipperSequence!1143 thiss!18206 rules!2135 lt!1177406))))

(declare-fun c!592972 () Bool)

(assert (=> b!3462854 (= c!592972 ((_ is Some!7530) lt!1177377))))

(assert (=> b!3462854 (= (lexRec!750 thiss!18206 rules!2135 (++!9166 (BalanceConc!22125 Empty!11255) (charsOf!3454 (_1!21588 (v!36866 lt!1177379))))) e!2145339)))

(declare-fun lt!1177393 () Unit!52520)

(declare-fun Unit!52528 () Unit!52520)

(assert (=> b!3462854 (= lt!1177393 Unit!52528)))

(assert (=> b!3462854 (= lt!1177403 (++!9166 (BalanceConc!22125 Empty!11255) (charsOf!3454 (_1!21588 (v!36866 lt!1177379)))))))

(declare-fun lt!1177399 () List!37295)

(assert (=> b!3462854 (= lt!1177399 (list!13535 lt!1177403))))

(declare-fun lt!1177407 () List!37295)

(assert (=> b!3462854 (= lt!1177407 (list!13535 (_2!21588 (v!36866 lt!1177379))))))

(declare-fun lt!1177383 () Unit!52520)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!597 (List!37295 List!37295) Unit!52520)

(assert (=> b!3462854 (= lt!1177383 (lemmaConcatTwoListThenFSndIsSuffix!597 lt!1177399 lt!1177407))))

(declare-fun isSuffix!912 (List!37295 List!37295) Bool)

(assert (=> b!3462854 (isSuffix!912 lt!1177407 (++!9165 lt!1177399 lt!1177407))))

(declare-fun lt!1177401 () Unit!52520)

(assert (=> b!3462854 (= lt!1177401 lt!1177383)))

(declare-fun b!3462855 () Bool)

(declare-fun lt!1177400 () tuple2!36896)

(declare-fun e!2145336 () Bool)

(assert (=> b!3462855 (= e!2145336 (= (list!13535 (_2!21582 lt!1177400)) (list!13535 (_2!21582 (lexRec!750 thiss!18206 rules!2135 lt!1176595)))))))

(declare-fun d!996797 () Bool)

(assert (=> d!996797 e!2145336))

(declare-fun res!1397200 () Bool)

(assert (=> d!996797 (=> (not res!1397200) (not e!2145336))))

(assert (=> d!996797 (= res!1397200 (= (list!13537 (_1!21582 lt!1177400)) (list!13537 (_1!21582 (lexRec!750 thiss!18206 rules!2135 lt!1176595)))))))

(assert (=> d!996797 (= lt!1177400 e!2145338)))

(declare-fun c!592973 () Bool)

(assert (=> d!996797 (= c!592973 ((_ is Some!7530) lt!1177379))))

(declare-fun maxPrefixZipperSequenceV2!537 (LexerInterface!5029 List!37296 BalanceConc!22124 BalanceConc!22124) Option!7531)

(assert (=> d!996797 (= lt!1177379 (maxPrefixZipperSequenceV2!537 thiss!18206 rules!2135 lt!1176595 lt!1176595))))

(declare-fun lt!1177390 () Unit!52520)

(declare-fun lt!1177386 () Unit!52520)

(assert (=> d!996797 (= lt!1177390 lt!1177386)))

(declare-fun lt!1177378 () List!37295)

(declare-fun lt!1177398 () List!37295)

(assert (=> d!996797 (isSuffix!912 lt!1177378 (++!9165 lt!1177398 lt!1177378))))

(assert (=> d!996797 (= lt!1177386 (lemmaConcatTwoListThenFSndIsSuffix!597 lt!1177398 lt!1177378))))

(assert (=> d!996797 (= lt!1177378 (list!13535 lt!1176595))))

(assert (=> d!996797 (= lt!1177398 (list!13535 (BalanceConc!22125 Empty!11255)))))

(assert (=> d!996797 (= (lexTailRecV2!1058 thiss!18206 rules!2135 lt!1176595 (BalanceConc!22125 Empty!11255) lt!1176595 (BalanceConc!22127 Empty!11256)) lt!1177400)))

(declare-fun lt!1177396 () tuple2!36896)

(declare-fun b!3462856 () Bool)

(assert (=> b!3462856 (= lt!1177396 (lexRec!750 thiss!18206 rules!2135 (_2!21588 (v!36866 lt!1177377))))))

(declare-fun prepend!1262 (BalanceConc!22126 Token!10246) BalanceConc!22126)

(assert (=> b!3462856 (= e!2145339 (tuple2!36897 (prepend!1262 (_1!21582 lt!1177396) (_1!21588 (v!36866 lt!1177377))) (_2!21582 lt!1177396)))))

(declare-fun b!3462857 () Bool)

(assert (=> b!3462857 (= e!2145337 (tuple2!36897 (BalanceConc!22127 Empty!11256) lt!1176595))))

(declare-fun b!3462858 () Bool)

(assert (=> b!3462858 (= e!2145338 (tuple2!36897 (BalanceConc!22127 Empty!11256) lt!1176595))))

(declare-fun lt!1177391 () tuple2!36896)

(declare-fun b!3462859 () Bool)

(assert (=> b!3462859 (= lt!1177391 (lexRec!750 thiss!18206 rules!2135 (_2!21588 (v!36866 lt!1177380))))))

(assert (=> b!3462859 (= e!2145337 (tuple2!36897 (prepend!1262 (_1!21582 lt!1177391) (_1!21588 (v!36866 lt!1177380))) (_2!21582 lt!1177391)))))

(assert (= (and d!996797 c!592973) b!3462854))

(assert (= (and d!996797 (not c!592973)) b!3462858))

(assert (= (and b!3462854 c!592974) b!3462859))

(assert (= (and b!3462854 (not c!592974)) b!3462857))

(assert (= (and b!3462854 c!592972) b!3462856))

(assert (= (and b!3462854 (not c!592972)) b!3462853))

(assert (= (and d!996797 res!1397200) b!3462855))

(declare-fun m!3866781 () Bool)

(assert (=> b!3462859 m!3866781))

(declare-fun m!3866783 () Bool)

(assert (=> b!3462859 m!3866783))

(assert (=> d!996797 m!3864547))

(declare-fun m!3866785 () Bool)

(assert (=> d!996797 m!3866785))

(declare-fun m!3866787 () Bool)

(assert (=> d!996797 m!3866787))

(declare-fun m!3866789 () Bool)

(assert (=> d!996797 m!3866789))

(assert (=> d!996797 m!3864825))

(declare-fun m!3866791 () Bool)

(assert (=> d!996797 m!3866791))

(declare-fun m!3866793 () Bool)

(assert (=> d!996797 m!3866793))

(declare-fun m!3866795 () Bool)

(assert (=> d!996797 m!3866795))

(assert (=> d!996797 m!3866787))

(declare-fun m!3866797 () Bool)

(assert (=> d!996797 m!3866797))

(declare-fun m!3866799 () Bool)

(assert (=> b!3462854 m!3866799))

(declare-fun m!3866801 () Bool)

(assert (=> b!3462854 m!3866801))

(declare-fun m!3866803 () Bool)

(assert (=> b!3462854 m!3866803))

(assert (=> b!3462854 m!3866801))

(declare-fun m!3866805 () Bool)

(assert (=> b!3462854 m!3866805))

(declare-fun m!3866807 () Bool)

(assert (=> b!3462854 m!3866807))

(declare-fun m!3866809 () Bool)

(assert (=> b!3462854 m!3866809))

(declare-fun m!3866811 () Bool)

(assert (=> b!3462854 m!3866811))

(declare-fun m!3866813 () Bool)

(assert (=> b!3462854 m!3866813))

(declare-fun m!3866815 () Bool)

(assert (=> b!3462854 m!3866815))

(declare-fun m!3866817 () Bool)

(assert (=> b!3462854 m!3866817))

(declare-fun m!3866819 () Bool)

(assert (=> b!3462854 m!3866819))

(declare-fun m!3866821 () Bool)

(assert (=> b!3462854 m!3866821))

(declare-fun m!3866823 () Bool)

(assert (=> b!3462854 m!3866823))

(declare-fun m!3866825 () Bool)

(assert (=> b!3462854 m!3866825))

(declare-fun m!3866827 () Bool)

(assert (=> b!3462854 m!3866827))

(declare-fun m!3866829 () Bool)

(assert (=> b!3462854 m!3866829))

(assert (=> b!3462854 m!3866819))

(declare-fun m!3866831 () Bool)

(assert (=> b!3462854 m!3866831))

(assert (=> b!3462854 m!3866821))

(assert (=> b!3462854 m!3864547))

(assert (=> b!3462854 m!3866799))

(declare-fun m!3866835 () Bool)

(assert (=> b!3462854 m!3866835))

(assert (=> b!3462854 m!3866827))

(declare-fun m!3866837 () Bool)

(assert (=> b!3462854 m!3866837))

(assert (=> b!3462854 m!3866827))

(assert (=> b!3462854 m!3866823))

(declare-fun m!3866839 () Bool)

(assert (=> b!3462854 m!3866839))

(declare-fun m!3866841 () Bool)

(assert (=> b!3462854 m!3866841))

(declare-fun m!3866843 () Bool)

(assert (=> b!3462854 m!3866843))

(declare-fun m!3866845 () Bool)

(assert (=> b!3462854 m!3866845))

(assert (=> b!3462854 m!3864547))

(assert (=> b!3462854 m!3866809))

(declare-fun m!3866847 () Bool)

(assert (=> b!3462854 m!3866847))

(assert (=> b!3462854 m!3866843))

(declare-fun m!3866849 () Bool)

(assert (=> b!3462854 m!3866849))

(assert (=> b!3462854 m!3866797))

(declare-fun m!3866851 () Bool)

(assert (=> b!3462854 m!3866851))

(assert (=> b!3462854 m!3866807))

(assert (=> b!3462854 m!3866813))

(declare-fun m!3866853 () Bool)

(assert (=> b!3462854 m!3866853))

(declare-fun m!3866855 () Bool)

(assert (=> b!3462854 m!3866855))

(declare-fun m!3866857 () Bool)

(assert (=> b!3462854 m!3866857))

(declare-fun m!3866859 () Bool)

(assert (=> b!3462854 m!3866859))

(declare-fun m!3866863 () Bool)

(assert (=> b!3462854 m!3866863))

(assert (=> b!3462854 m!3866807))

(assert (=> b!3462854 m!3866855))

(declare-fun m!3866865 () Bool)

(assert (=> b!3462855 m!3866865))

(assert (=> b!3462855 m!3866797))

(declare-fun m!3866867 () Bool)

(assert (=> b!3462855 m!3866867))

(declare-fun m!3866869 () Bool)

(assert (=> b!3462856 m!3866869))

(declare-fun m!3866871 () Bool)

(assert (=> b!3462856 m!3866871))

(assert (=> d!996285 d!996797))

(declare-fun d!996999 () Bool)

(declare-fun c!592978 () Bool)

(assert (=> d!996999 (= c!592978 ((_ is Nil!37172) rules!2135))))

(declare-fun e!2145346 () (InoxSet Rule!10680))

(assert (=> d!996999 (= (content!5188 rules!2135) e!2145346)))

(declare-fun b!3462869 () Bool)

(assert (=> b!3462869 (= e!2145346 ((as const (Array Rule!10680 Bool)) false))))

(declare-fun b!3462870 () Bool)

(assert (=> b!3462870 (= e!2145346 ((_ map or) (store ((as const (Array Rule!10680 Bool)) false) (h!42592 rules!2135) true) (content!5188 (t!273043 rules!2135))))))

(assert (= (and d!996999 c!592978) b!3462869))

(assert (= (and d!996999 (not c!592978)) b!3462870))

(declare-fun m!3866907 () Bool)

(assert (=> b!3462870 m!3866907))

(assert (=> b!3462870 m!3865865))

(assert (=> d!996111 d!996999))

(declare-fun d!997013 () Bool)

(declare-fun lt!1177414 () Bool)

(assert (=> d!997013 (= lt!1177414 (select (content!5188 rules!2135) (get!11898 lt!1176793)))))

(declare-fun e!2145349 () Bool)

(assert (=> d!997013 (= lt!1177414 e!2145349)))

(declare-fun res!1397207 () Bool)

(assert (=> d!997013 (=> (not res!1397207) (not e!2145349))))

(assert (=> d!997013 (= res!1397207 ((_ is Cons!37172) rules!2135))))

(assert (=> d!997013 (= (contains!6895 rules!2135 (get!11898 lt!1176793)) lt!1177414)))

(declare-fun b!3462873 () Bool)

(declare-fun e!2145350 () Bool)

(assert (=> b!3462873 (= e!2145349 e!2145350)))

(declare-fun res!1397206 () Bool)

(assert (=> b!3462873 (=> res!1397206 e!2145350)))

(assert (=> b!3462873 (= res!1397206 (= (h!42592 rules!2135) (get!11898 lt!1176793)))))

(declare-fun b!3462874 () Bool)

(assert (=> b!3462874 (= e!2145350 (contains!6895 (t!273043 rules!2135) (get!11898 lt!1176793)))))

(assert (= (and d!997013 res!1397207) b!3462873))

(assert (= (and b!3462873 (not res!1397206)) b!3462874))

(assert (=> d!997013 m!3864207))

(assert (=> d!997013 m!3864749))

(declare-fun m!3866915 () Bool)

(assert (=> d!997013 m!3866915))

(assert (=> b!3462874 m!3864749))

(declare-fun m!3866917 () Bool)

(assert (=> b!3462874 m!3866917))

(assert (=> b!3461514 d!997013))

(assert (=> b!3461514 d!996553))

(declare-fun d!997017 () Bool)

(assert (=> d!997017 (= (isEmpty!21528 lt!1176614) ((_ is Nil!37171) lt!1176614))))

(assert (=> bm!249600 d!997017))

(declare-fun d!997021 () Bool)

(declare-fun c!592979 () Bool)

(assert (=> d!997021 (= c!592979 ((_ is Nil!37171) lt!1176689))))

(declare-fun e!2145351 () (InoxSet C!20584))

(assert (=> d!997021 (= (content!5190 lt!1176689) e!2145351)))

(declare-fun b!3462875 () Bool)

(assert (=> b!3462875 (= e!2145351 ((as const (Array C!20584 Bool)) false))))

(declare-fun b!3462876 () Bool)

(assert (=> b!3462876 (= e!2145351 ((_ map or) (store ((as const (Array C!20584 Bool)) false) (h!42591 lt!1176689) true) (content!5190 (t!273042 lt!1176689))))))

(assert (= (and d!997021 c!592979) b!3462875))

(assert (= (and d!997021 (not c!592979)) b!3462876))

(declare-fun m!3866923 () Bool)

(assert (=> b!3462876 m!3866923))

(declare-fun m!3866925 () Bool)

(assert (=> b!3462876 m!3866925))

(assert (=> d!996179 d!997021))

(assert (=> d!996179 d!996595))

(declare-fun d!997023 () Bool)

(declare-fun c!592980 () Bool)

(assert (=> d!997023 (= c!592980 ((_ is Nil!37171) lt!1176603))))

(declare-fun e!2145352 () (InoxSet C!20584))

(assert (=> d!997023 (= (content!5190 lt!1176603) e!2145352)))

(declare-fun b!3462877 () Bool)

(assert (=> b!3462877 (= e!2145352 ((as const (Array C!20584 Bool)) false))))

(declare-fun b!3462878 () Bool)

(assert (=> b!3462878 (= e!2145352 ((_ map or) (store ((as const (Array C!20584 Bool)) false) (h!42591 lt!1176603) true) (content!5190 (t!273042 lt!1176603))))))

(assert (= (and d!997023 c!592980) b!3462877))

(assert (= (and d!997023 (not c!592980)) b!3462878))

(declare-fun m!3866927 () Bool)

(assert (=> b!3462878 m!3866927))

(declare-fun m!3866929 () Bool)

(assert (=> b!3462878 m!3866929))

(assert (=> d!996179 d!997023))

(declare-fun d!997025 () Bool)

(assert (=> d!997025 (= (isEmpty!21528 (list!13535 (_2!21582 lt!1176604))) ((_ is Nil!37171) (list!13535 (_2!21582 lt!1176604))))))

(assert (=> d!996339 d!997025))

(declare-fun d!997027 () Bool)

(assert (=> d!997027 (= (list!13535 (_2!21582 lt!1176604)) (list!13536 (c!592551 (_2!21582 lt!1176604))))))

(declare-fun bs!560613 () Bool)

(assert (= bs!560613 d!997027))

(declare-fun m!3866931 () Bool)

(assert (=> bs!560613 m!3866931))

(assert (=> d!996339 d!997027))

(declare-fun d!997029 () Bool)

(declare-fun lt!1177416 () Bool)

(assert (=> d!997029 (= lt!1177416 (isEmpty!21528 (list!13536 (c!592551 (_2!21582 lt!1176604)))))))

(assert (=> d!997029 (= lt!1177416 (= (size!28209 (c!592551 (_2!21582 lt!1176604))) 0))))

(assert (=> d!997029 (= (isEmpty!21529 (c!592551 (_2!21582 lt!1176604))) lt!1177416)))

(declare-fun bs!560614 () Bool)

(assert (= bs!560614 d!997029))

(assert (=> bs!560614 m!3866931))

(assert (=> bs!560614 m!3866931))

(declare-fun m!3866933 () Bool)

(assert (=> bs!560614 m!3866933))

(declare-fun m!3866935 () Bool)

(assert (=> bs!560614 m!3866935))

(assert (=> d!996339 d!997029))

(declare-fun d!997031 () Bool)

(assert (=> d!997031 (= (get!11898 (getRuleFromTag!1083 thiss!18206 rules!2135 (tag!6050 (rule!8032 separatorToken!241)))) (v!36855 (getRuleFromTag!1083 thiss!18206 rules!2135 (tag!6050 (rule!8032 separatorToken!241)))))))

(assert (=> b!3461530 d!997031))

(assert (=> b!3461530 d!996259))

(declare-fun b!3462879 () Bool)

(declare-fun res!1397212 () Bool)

(declare-fun e!2145357 () Bool)

(assert (=> b!3462879 (=> (not res!1397212) (not e!2145357))))

(declare-fun call!249756 () Bool)

(assert (=> b!3462879 (= res!1397212 (not call!249756))))

(declare-fun b!3462880 () Bool)

(declare-fun res!1397210 () Bool)

(declare-fun e!2145359 () Bool)

(assert (=> b!3462880 (=> res!1397210 e!2145359)))

(assert (=> b!3462880 (= res!1397210 e!2145357)))

(declare-fun res!1397211 () Bool)

(assert (=> b!3462880 (=> (not res!1397211) (not e!2145357))))

(declare-fun lt!1177417 () Bool)

(assert (=> b!3462880 (= res!1397211 lt!1177417)))

(declare-fun b!3462881 () Bool)

(declare-fun e!2145353 () Bool)

(assert (=> b!3462881 (= e!2145353 (= lt!1177417 call!249756))))

(declare-fun b!3462882 () Bool)

(declare-fun e!2145356 () Bool)

(declare-fun e!2145354 () Bool)

(assert (=> b!3462882 (= e!2145356 e!2145354)))

(declare-fun res!1397213 () Bool)

(assert (=> b!3462882 (=> res!1397213 e!2145354)))

(assert (=> b!3462882 (= res!1397213 call!249756)))

(declare-fun b!3462883 () Bool)

(declare-fun e!2145355 () Bool)

(assert (=> b!3462883 (= e!2145355 (nullable!3489 (regex!5440 (get!11898 (getRuleFromTag!1083 thiss!18206 rules!2135 (tag!6050 (rule!8032 separatorToken!241)))))))))

(declare-fun b!3462884 () Bool)

(declare-fun res!1397208 () Bool)

(assert (=> b!3462884 (=> (not res!1397208) (not e!2145357))))

(assert (=> b!3462884 (= res!1397208 (isEmpty!21528 (tail!5434 (list!13535 (charsOf!3454 separatorToken!241)))))))

(declare-fun b!3462885 () Bool)

(declare-fun e!2145358 () Bool)

(assert (=> b!3462885 (= e!2145353 e!2145358)))

(declare-fun c!592981 () Bool)

(assert (=> b!3462885 (= c!592981 ((_ is EmptyLang!10199) (regex!5440 (get!11898 (getRuleFromTag!1083 thiss!18206 rules!2135 (tag!6050 (rule!8032 separatorToken!241)))))))))

(declare-fun b!3462886 () Bool)

(declare-fun res!1397209 () Bool)

(assert (=> b!3462886 (=> res!1397209 e!2145359)))

(assert (=> b!3462886 (= res!1397209 (not ((_ is ElementMatch!10199) (regex!5440 (get!11898 (getRuleFromTag!1083 thiss!18206 rules!2135 (tag!6050 (rule!8032 separatorToken!241))))))))))

(assert (=> b!3462886 (= e!2145358 e!2145359)))

(declare-fun b!3462887 () Bool)

(assert (=> b!3462887 (= e!2145359 e!2145356)))

(declare-fun res!1397215 () Bool)

(assert (=> b!3462887 (=> (not res!1397215) (not e!2145356))))

(assert (=> b!3462887 (= res!1397215 (not lt!1177417))))

(declare-fun b!3462888 () Bool)

(assert (=> b!3462888 (= e!2145358 (not lt!1177417))))

(declare-fun b!3462889 () Bool)

(declare-fun res!1397214 () Bool)

(assert (=> b!3462889 (=> res!1397214 e!2145354)))

(assert (=> b!3462889 (= res!1397214 (not (isEmpty!21528 (tail!5434 (list!13535 (charsOf!3454 separatorToken!241))))))))

(declare-fun b!3462890 () Bool)

(assert (=> b!3462890 (= e!2145355 (matchR!4783 (derivativeStep!3042 (regex!5440 (get!11898 (getRuleFromTag!1083 thiss!18206 rules!2135 (tag!6050 (rule!8032 separatorToken!241))))) (head!7321 (list!13535 (charsOf!3454 separatorToken!241)))) (tail!5434 (list!13535 (charsOf!3454 separatorToken!241)))))))

(declare-fun d!997033 () Bool)

(assert (=> d!997033 e!2145353))

(declare-fun c!592982 () Bool)

(assert (=> d!997033 (= c!592982 ((_ is EmptyExpr!10199) (regex!5440 (get!11898 (getRuleFromTag!1083 thiss!18206 rules!2135 (tag!6050 (rule!8032 separatorToken!241)))))))))

(assert (=> d!997033 (= lt!1177417 e!2145355)))

(declare-fun c!592983 () Bool)

(assert (=> d!997033 (= c!592983 (isEmpty!21528 (list!13535 (charsOf!3454 separatorToken!241))))))

(assert (=> d!997033 (validRegex!4645 (regex!5440 (get!11898 (getRuleFromTag!1083 thiss!18206 rules!2135 (tag!6050 (rule!8032 separatorToken!241))))))))

(assert (=> d!997033 (= (matchR!4783 (regex!5440 (get!11898 (getRuleFromTag!1083 thiss!18206 rules!2135 (tag!6050 (rule!8032 separatorToken!241))))) (list!13535 (charsOf!3454 separatorToken!241))) lt!1177417)))

(declare-fun bm!249751 () Bool)

(assert (=> bm!249751 (= call!249756 (isEmpty!21528 (list!13535 (charsOf!3454 separatorToken!241))))))

(declare-fun b!3462891 () Bool)

(assert (=> b!3462891 (= e!2145354 (not (= (head!7321 (list!13535 (charsOf!3454 separatorToken!241))) (c!592550 (regex!5440 (get!11898 (getRuleFromTag!1083 thiss!18206 rules!2135 (tag!6050 (rule!8032 separatorToken!241)))))))))))

(declare-fun b!3462892 () Bool)

(assert (=> b!3462892 (= e!2145357 (= (head!7321 (list!13535 (charsOf!3454 separatorToken!241))) (c!592550 (regex!5440 (get!11898 (getRuleFromTag!1083 thiss!18206 rules!2135 (tag!6050 (rule!8032 separatorToken!241))))))))))

(assert (= (and d!997033 c!592983) b!3462883))

(assert (= (and d!997033 (not c!592983)) b!3462890))

(assert (= (and d!997033 c!592982) b!3462881))

(assert (= (and d!997033 (not c!592982)) b!3462885))

(assert (= (and b!3462885 c!592981) b!3462888))

(assert (= (and b!3462885 (not c!592981)) b!3462886))

(assert (= (and b!3462886 (not res!1397209)) b!3462880))

(assert (= (and b!3462880 res!1397211) b!3462879))

(assert (= (and b!3462879 res!1397212) b!3462884))

(assert (= (and b!3462884 res!1397208) b!3462892))

(assert (= (and b!3462880 (not res!1397210)) b!3462887))

(assert (= (and b!3462887 res!1397215) b!3462882))

(assert (= (and b!3462882 (not res!1397213)) b!3462889))

(assert (= (and b!3462889 (not res!1397214)) b!3462891))

(assert (= (or b!3462881 b!3462879 b!3462882) bm!249751))

(assert (=> b!3462890 m!3864149))

(declare-fun m!3866937 () Bool)

(assert (=> b!3462890 m!3866937))

(assert (=> b!3462890 m!3866937))

(declare-fun m!3866939 () Bool)

(assert (=> b!3462890 m!3866939))

(assert (=> b!3462890 m!3864149))

(declare-fun m!3866941 () Bool)

(assert (=> b!3462890 m!3866941))

(assert (=> b!3462890 m!3866939))

(assert (=> b!3462890 m!3866941))

(declare-fun m!3866943 () Bool)

(assert (=> b!3462890 m!3866943))

(assert (=> b!3462892 m!3864149))

(assert (=> b!3462892 m!3866937))

(assert (=> d!997033 m!3864149))

(declare-fun m!3866945 () Bool)

(assert (=> d!997033 m!3866945))

(declare-fun m!3866947 () Bool)

(assert (=> d!997033 m!3866947))

(declare-fun m!3866949 () Bool)

(assert (=> b!3462883 m!3866949))

(assert (=> b!3462891 m!3864149))

(assert (=> b!3462891 m!3866937))

(assert (=> bm!249751 m!3864149))

(assert (=> bm!249751 m!3866945))

(assert (=> b!3462889 m!3864149))

(assert (=> b!3462889 m!3866941))

(assert (=> b!3462889 m!3866941))

(declare-fun m!3866951 () Bool)

(assert (=> b!3462889 m!3866951))

(assert (=> b!3462884 m!3864149))

(assert (=> b!3462884 m!3866941))

(assert (=> b!3462884 m!3866941))

(assert (=> b!3462884 m!3866951))

(assert (=> b!3461530 d!997033))

(assert (=> b!3461530 d!996189))

(assert (=> b!3461530 d!996197))

(declare-fun d!997035 () Bool)

(declare-fun lt!1177418 () Int)

(assert (=> d!997035 (= lt!1177418 (size!28201 (list!13535 (_2!21582 lt!1176756))))))

(assert (=> d!997035 (= lt!1177418 (size!28209 (c!592551 (_2!21582 lt!1176756))))))

(assert (=> d!997035 (= (size!28205 (_2!21582 lt!1176756)) lt!1177418)))

(declare-fun bs!560615 () Bool)

(assert (= bs!560615 d!997035))

(assert (=> bs!560615 m!3864655))

(assert (=> bs!560615 m!3864655))

(declare-fun m!3866953 () Bool)

(assert (=> bs!560615 m!3866953))

(declare-fun m!3866955 () Bool)

(assert (=> bs!560615 m!3866955))

(assert (=> b!3461438 d!997035))

(declare-fun d!997037 () Bool)

(declare-fun lt!1177419 () Int)

(assert (=> d!997037 (= lt!1177419 (size!28201 (list!13535 lt!1176613)))))

(assert (=> d!997037 (= lt!1177419 (size!28209 (c!592551 lt!1176613)))))

(assert (=> d!997037 (= (size!28205 lt!1176613) lt!1177419)))

(declare-fun bs!560616 () Bool)

(assert (= bs!560616 d!997037))

(assert (=> bs!560616 m!3864657))

(assert (=> bs!560616 m!3864657))

(declare-fun m!3866957 () Bool)

(assert (=> bs!560616 m!3866957))

(declare-fun m!3866959 () Bool)

(assert (=> bs!560616 m!3866959))

(assert (=> b!3461438 d!997037))

(declare-fun d!997039 () Bool)

(assert (=> d!997039 (= (inv!16 (value!175500 separatorToken!241)) (= (charsToInt!0 (text!40137 (value!175500 separatorToken!241))) (value!175491 (value!175500 separatorToken!241))))))

(declare-fun bs!560617 () Bool)

(assert (= bs!560617 d!997039))

(declare-fun m!3866961 () Bool)

(assert (=> bs!560617 m!3866961))

(assert (=> b!3461292 d!997039))

(declare-fun d!997041 () Bool)

(assert (=> d!997041 (= (isEmpty!21528 (tail!5434 lt!1176597)) ((_ is Nil!37171) (tail!5434 lt!1176597)))))

(assert (=> b!3461207 d!997041))

(declare-fun d!997043 () Bool)

(assert (=> d!997043 (= (tail!5434 lt!1176597) (t!273042 lt!1176597))))

(assert (=> b!3461207 d!997043))

(assert (=> b!3461299 d!996623))

(assert (=> b!3461299 d!996585))

(declare-fun d!997045 () Bool)

(assert (=> d!997045 (dynLambda!15668 lambda!121860 (h!42593 tokens!494))))

(assert (=> d!997045 true))

(declare-fun _$7!1306 () Unit!52520)

(assert (=> d!997045 (= (choose!20016 tokens!494 lambda!121860 (h!42593 tokens!494)) _$7!1306)))

(declare-fun b_lambda!99777 () Bool)

(assert (=> (not b_lambda!99777) (not d!997045)))

(declare-fun bs!560618 () Bool)

(assert (= bs!560618 d!997045))

(assert (=> bs!560618 m!3864311))

(assert (=> d!996145 d!997045))

(assert (=> d!996145 d!996155))

(assert (=> b!3461307 d!996263))

(declare-fun d!997047 () Bool)

(assert (=> d!997047 (dynLambda!15668 lambda!121861 (h!42593 (t!273044 tokens!494)))))

(assert (=> d!997047 true))

(declare-fun _$7!1307 () Unit!52520)

(assert (=> d!997047 (= (choose!20016 tokens!494 lambda!121861 (h!42593 (t!273044 tokens!494))) _$7!1307)))

(declare-fun b_lambda!99779 () Bool)

(assert (=> (not b_lambda!99779) (not d!997047)))

(declare-fun bs!560619 () Bool)

(assert (= bs!560619 d!997047))

(assert (=> bs!560619 m!3864841))

(assert (=> d!996287 d!997047))

(declare-fun d!997049 () Bool)

(declare-fun res!1397216 () Bool)

(declare-fun e!2145360 () Bool)

(assert (=> d!997049 (=> res!1397216 e!2145360)))

(assert (=> d!997049 (= res!1397216 ((_ is Nil!37173) tokens!494))))

(assert (=> d!997049 (= (forall!7925 tokens!494 lambda!121861) e!2145360)))

(declare-fun b!3462893 () Bool)

(declare-fun e!2145361 () Bool)

(assert (=> b!3462893 (= e!2145360 e!2145361)))

(declare-fun res!1397217 () Bool)

(assert (=> b!3462893 (=> (not res!1397217) (not e!2145361))))

(assert (=> b!3462893 (= res!1397217 (dynLambda!15668 lambda!121861 (h!42593 tokens!494)))))

(declare-fun b!3462894 () Bool)

(assert (=> b!3462894 (= e!2145361 (forall!7925 (t!273044 tokens!494) lambda!121861))))

(assert (= (and d!997049 (not res!1397216)) b!3462893))

(assert (= (and b!3462893 res!1397217) b!3462894))

(declare-fun b_lambda!99781 () Bool)

(assert (=> (not b_lambda!99781) (not b!3462893)))

(declare-fun m!3866963 () Bool)

(assert (=> b!3462893 m!3866963))

(declare-fun m!3866965 () Bool)

(assert (=> b!3462894 m!3866965))

(assert (=> d!996287 d!997049))

(declare-fun d!997051 () Bool)

(assert (=> d!997051 (= (list!13535 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))) (value!175500 separatorToken!241))) (list!13536 (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))) (value!175500 separatorToken!241)))))))

(declare-fun bs!560620 () Bool)

(assert (= bs!560620 d!997051))

(declare-fun m!3866967 () Bool)

(assert (=> bs!560620 m!3866967))

(assert (=> b!3461245 d!997051))

(declare-fun lt!1177420 () Bool)

(declare-fun d!997053 () Bool)

(assert (=> d!997053 (= lt!1177420 (isEmpty!21528 (list!13535 (_2!21582 (lex!2355 thiss!18206 rules!2135 (print!2094 thiss!18206 (singletonSeq!2536 separatorToken!241)))))))))

(assert (=> d!997053 (= lt!1177420 (isEmpty!21529 (c!592551 (_2!21582 (lex!2355 thiss!18206 rules!2135 (print!2094 thiss!18206 (singletonSeq!2536 separatorToken!241)))))))))

(assert (=> d!997053 (= (isEmpty!21525 (_2!21582 (lex!2355 thiss!18206 rules!2135 (print!2094 thiss!18206 (singletonSeq!2536 separatorToken!241))))) lt!1177420)))

(declare-fun bs!560621 () Bool)

(assert (= bs!560621 d!997053))

(declare-fun m!3866969 () Bool)

(assert (=> bs!560621 m!3866969))

(assert (=> bs!560621 m!3866969))

(declare-fun m!3866971 () Bool)

(assert (=> bs!560621 m!3866971))

(declare-fun m!3866973 () Bool)

(assert (=> bs!560621 m!3866973))

(assert (=> b!3461311 d!997053))

(assert (=> b!3461311 d!996487))

(assert (=> b!3461311 d!996485))

(assert (=> b!3461311 d!996257))

(declare-fun d!997055 () Bool)

(assert (=> d!997055 (= (inv!50347 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (value!175500 (h!42593 (t!273044 tokens!494))))) (isBalanced!3418 (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (value!175500 (h!42593 (t!273044 tokens!494)))))))))

(declare-fun bs!560622 () Bool)

(assert (= bs!560622 d!997055))

(declare-fun m!3866975 () Bool)

(assert (=> bs!560622 m!3866975))

(assert (=> tb!188739 d!997055))

(declare-fun b!3462903 () Bool)

(declare-fun e!2145370 () Bool)

(declare-fun call!249759 () Bool)

(assert (=> b!3462903 (= e!2145370 call!249759)))

(declare-fun d!997057 () Bool)

(declare-fun c!592986 () Bool)

(assert (=> d!997057 (= c!592986 (and ((_ is Cons!37172) rules!2135) (not (= (isSeparator!5440 (h!42592 rules!2135)) (isSeparator!5440 (h!42592 rules!2135))))))))

(declare-fun e!2145369 () Bool)

(assert (=> d!997057 (= (ruleDisjointCharsFromAllFromOtherType!720 (h!42592 rules!2135) rules!2135) e!2145369)))

(declare-fun b!3462904 () Bool)

(declare-fun e!2145368 () Bool)

(assert (=> b!3462904 (= e!2145369 e!2145368)))

(declare-fun res!1397223 () Bool)

(declare-fun rulesUseDisjointChars!342 (Rule!10680 Rule!10680) Bool)

(assert (=> b!3462904 (= res!1397223 (rulesUseDisjointChars!342 (h!42592 rules!2135) (h!42592 rules!2135)))))

(assert (=> b!3462904 (=> (not res!1397223) (not e!2145368))))

(declare-fun b!3462905 () Bool)

(assert (=> b!3462905 (= e!2145368 call!249759)))

(declare-fun bm!249754 () Bool)

(assert (=> bm!249754 (= call!249759 (ruleDisjointCharsFromAllFromOtherType!720 (h!42592 rules!2135) (t!273043 rules!2135)))))

(declare-fun b!3462906 () Bool)

(assert (=> b!3462906 (= e!2145369 e!2145370)))

(declare-fun res!1397222 () Bool)

(assert (=> b!3462906 (= res!1397222 (not ((_ is Cons!37172) rules!2135)))))

(assert (=> b!3462906 (=> res!1397222 e!2145370)))

(assert (= (and d!997057 c!592986) b!3462904))

(assert (= (and d!997057 (not c!592986)) b!3462906))

(assert (= (and b!3462904 res!1397223) b!3462905))

(assert (= (and b!3462906 (not res!1397222)) b!3462903))

(assert (= (or b!3462905 b!3462903) bm!249754))

(declare-fun m!3866977 () Bool)

(assert (=> b!3462904 m!3866977))

(declare-fun m!3866979 () Bool)

(assert (=> bm!249754 m!3866979))

(assert (=> b!3461255 d!997057))

(declare-fun d!997059 () Bool)

(declare-fun lt!1177421 () Token!10246)

(assert (=> d!997059 (= lt!1177421 (apply!8758 (list!13537 (_1!21582 lt!1176773)) 0))))

(assert (=> d!997059 (= lt!1177421 (apply!8759 (c!592552 (_1!21582 lt!1176773)) 0))))

(declare-fun e!2145371 () Bool)

(assert (=> d!997059 e!2145371))

(declare-fun res!1397224 () Bool)

(assert (=> d!997059 (=> (not res!1397224) (not e!2145371))))

(assert (=> d!997059 (= res!1397224 (<= 0 0))))

(assert (=> d!997059 (= (apply!8756 (_1!21582 lt!1176773) 0) lt!1177421)))

(declare-fun b!3462907 () Bool)

(assert (=> b!3462907 (= e!2145371 (< 0 (size!28200 (_1!21582 lt!1176773))))))

(assert (= (and d!997059 res!1397224) b!3462907))

(assert (=> d!997059 m!3866295))

(assert (=> d!997059 m!3866295))

(declare-fun m!3866981 () Bool)

(assert (=> d!997059 m!3866981))

(declare-fun m!3866983 () Bool)

(assert (=> d!997059 m!3866983))

(assert (=> b!3462907 m!3864711))

(assert (=> b!3461474 d!997059))

(assert (=> b!3461232 d!996501))

(assert (=> b!3461232 d!996503))

(assert (=> b!3461232 d!996499))

(declare-fun d!997061 () Bool)

(declare-fun res!1397225 () Bool)

(declare-fun e!2145372 () Bool)

(assert (=> d!997061 (=> res!1397225 e!2145372)))

(assert (=> d!997061 (= res!1397225 ((_ is Nil!37173) (t!273044 tokens!494)))))

(assert (=> d!997061 (= (forall!7925 (t!273044 tokens!494) lambda!121860) e!2145372)))

(declare-fun b!3462908 () Bool)

(declare-fun e!2145373 () Bool)

(assert (=> b!3462908 (= e!2145372 e!2145373)))

(declare-fun res!1397226 () Bool)

(assert (=> b!3462908 (=> (not res!1397226) (not e!2145373))))

(assert (=> b!3462908 (= res!1397226 (dynLambda!15668 lambda!121860 (h!42593 (t!273044 tokens!494))))))

(declare-fun b!3462909 () Bool)

(assert (=> b!3462909 (= e!2145373 (forall!7925 (t!273044 (t!273044 tokens!494)) lambda!121860))))

(assert (= (and d!997061 (not res!1397225)) b!3462908))

(assert (= (and b!3462908 res!1397226) b!3462909))

(declare-fun b_lambda!99783 () Bool)

(assert (=> (not b_lambda!99783) (not b!3462908)))

(assert (=> b!3462908 m!3864305))

(declare-fun m!3866985 () Bool)

(assert (=> b!3462909 m!3866985))

(assert (=> b!3461262 d!997061))

(declare-fun d!997063 () Bool)

(declare-fun lt!1177422 () Bool)

(assert (=> d!997063 (= lt!1177422 (isEmpty!21528 (list!13535 (_2!21582 lt!1176637))))))

(assert (=> d!997063 (= lt!1177422 (isEmpty!21529 (c!592551 (_2!21582 lt!1176637))))))

(assert (=> d!997063 (= (isEmpty!21525 (_2!21582 lt!1176637)) lt!1177422)))

(declare-fun bs!560623 () Bool)

(assert (= bs!560623 d!997063))

(declare-fun m!3866987 () Bool)

(assert (=> bs!560623 m!3866987))

(assert (=> bs!560623 m!3866987))

(declare-fun m!3866989 () Bool)

(assert (=> bs!560623 m!3866989))

(declare-fun m!3866991 () Bool)

(assert (=> bs!560623 m!3866991))

(assert (=> b!3461137 d!997063))

(declare-fun d!997065 () Bool)

(declare-fun lt!1177423 () Int)

(assert (=> d!997065 (>= lt!1177423 0)))

(declare-fun e!2145374 () Int)

(assert (=> d!997065 (= lt!1177423 e!2145374)))

(declare-fun c!592987 () Bool)

(assert (=> d!997065 (= c!592987 ((_ is Nil!37171) lt!1176694))))

(assert (=> d!997065 (= (size!28201 lt!1176694) lt!1177423)))

(declare-fun b!3462910 () Bool)

(assert (=> b!3462910 (= e!2145374 0)))

(declare-fun b!3462911 () Bool)

(assert (=> b!3462911 (= e!2145374 (+ 1 (size!28201 (t!273042 lt!1176694))))))

(assert (= (and d!997065 c!592987) b!3462910))

(assert (= (and d!997065 (not c!592987)) b!3462911))

(declare-fun m!3866993 () Bool)

(assert (=> b!3462911 m!3866993))

(assert (=> b!3461361 d!997065))

(declare-fun d!997067 () Bool)

(declare-fun lt!1177424 () Int)

(assert (=> d!997067 (>= lt!1177424 0)))

(declare-fun e!2145375 () Int)

(assert (=> d!997067 (= lt!1177424 e!2145375)))

(declare-fun c!592988 () Bool)

(assert (=> d!997067 (= c!592988 ((_ is Nil!37171) (++!9165 lt!1176597 lt!1176614)))))

(assert (=> d!997067 (= (size!28201 (++!9165 lt!1176597 lt!1176614)) lt!1177424)))

(declare-fun b!3462912 () Bool)

(assert (=> b!3462912 (= e!2145375 0)))

(declare-fun b!3462913 () Bool)

(assert (=> b!3462913 (= e!2145375 (+ 1 (size!28201 (t!273042 (++!9165 lt!1176597 lt!1176614)))))))

(assert (= (and d!997067 c!592988) b!3462912))

(assert (= (and d!997067 (not c!592988)) b!3462913))

(declare-fun m!3866995 () Bool)

(assert (=> b!3462913 m!3866995))

(assert (=> b!3461361 d!997067))

(assert (=> b!3461361 d!996757))

(declare-fun d!997069 () Bool)

(declare-fun lt!1177425 () Int)

(assert (=> d!997069 (>= lt!1177425 0)))

(declare-fun e!2145376 () Int)

(assert (=> d!997069 (= lt!1177425 e!2145376)))

(declare-fun c!592989 () Bool)

(assert (=> d!997069 (= c!592989 ((_ is Nil!37171) (_2!21583 (get!11899 lt!1176835))))))

(assert (=> d!997069 (= (size!28201 (_2!21583 (get!11899 lt!1176835))) lt!1177425)))

(declare-fun b!3462914 () Bool)

(assert (=> b!3462914 (= e!2145376 0)))

(declare-fun b!3462915 () Bool)

(assert (=> b!3462915 (= e!2145376 (+ 1 (size!28201 (t!273042 (_2!21583 (get!11899 lt!1176835))))))))

(assert (= (and d!997069 c!592989) b!3462914))

(assert (= (and d!997069 (not c!592989)) b!3462915))

(declare-fun m!3866997 () Bool)

(assert (=> b!3462915 m!3866997))

(assert (=> b!3461583 d!997069))

(assert (=> b!3461583 d!996473))

(assert (=> b!3461583 d!996309))

(declare-fun d!997071 () Bool)

(assert (=> d!997071 (= (inv!50341 (tag!6050 (h!42592 (t!273043 rules!2135)))) (= (mod (str.len (value!175499 (tag!6050 (h!42592 (t!273043 rules!2135))))) 2) 0))))

(assert (=> b!3461903 d!997071))

(declare-fun d!997073 () Bool)

(declare-fun res!1397227 () Bool)

(declare-fun e!2145377 () Bool)

(assert (=> d!997073 (=> (not res!1397227) (not e!2145377))))

(assert (=> d!997073 (= res!1397227 (semiInverseModEq!2284 (toChars!7527 (transformation!5440 (h!42592 (t!273043 rules!2135)))) (toValue!7668 (transformation!5440 (h!42592 (t!273043 rules!2135))))))))

(assert (=> d!997073 (= (inv!50344 (transformation!5440 (h!42592 (t!273043 rules!2135)))) e!2145377)))

(declare-fun b!3462916 () Bool)

(assert (=> b!3462916 (= e!2145377 (equivClasses!2183 (toChars!7527 (transformation!5440 (h!42592 (t!273043 rules!2135)))) (toValue!7668 (transformation!5440 (h!42592 (t!273043 rules!2135))))))))

(assert (= (and d!997073 res!1397227) b!3462916))

(declare-fun m!3866999 () Bool)

(assert (=> d!997073 m!3866999))

(declare-fun m!3867001 () Bool)

(assert (=> b!3462916 m!3867001))

(assert (=> b!3461903 d!997073))

(declare-fun d!997075 () Bool)

(assert (=> d!997075 (= (isDefined!5798 (getRuleFromTag!1083 thiss!18206 rules!2135 (tag!6050 (rule!8032 separatorToken!241)))) (not (isEmpty!21538 (getRuleFromTag!1083 thiss!18206 rules!2135 (tag!6050 (rule!8032 separatorToken!241))))))))

(declare-fun bs!560624 () Bool)

(assert (= bs!560624 d!997075))

(assert (=> bs!560624 m!3864063))

(declare-fun m!3867003 () Bool)

(assert (=> bs!560624 m!3867003))

(assert (=> d!996271 d!997075))

(assert (=> d!996271 d!996259))

(declare-fun d!997077 () Bool)

(declare-fun e!2145380 () Bool)

(assert (=> d!997077 e!2145380))

(declare-fun res!1397232 () Bool)

(assert (=> d!997077 (=> (not res!1397232) (not e!2145380))))

(assert (=> d!997077 (= res!1397232 (isDefined!5798 (getRuleFromTag!1083 thiss!18206 rules!2135 (tag!6050 (rule!8032 separatorToken!241)))))))

(assert (=> d!997077 true))

(declare-fun _$52!1896 () Unit!52520)

(assert (=> d!997077 (= (choose!20021 thiss!18206 rules!2135 lt!1176614 separatorToken!241) _$52!1896)))

(declare-fun b!3462921 () Bool)

(declare-fun res!1397233 () Bool)

(assert (=> b!3462921 (=> (not res!1397233) (not e!2145380))))

(assert (=> b!3462921 (= res!1397233 (matchR!4783 (regex!5440 (get!11898 (getRuleFromTag!1083 thiss!18206 rules!2135 (tag!6050 (rule!8032 separatorToken!241))))) (list!13535 (charsOf!3454 separatorToken!241))))))

(declare-fun b!3462922 () Bool)

(assert (=> b!3462922 (= e!2145380 (= (rule!8032 separatorToken!241) (get!11898 (getRuleFromTag!1083 thiss!18206 rules!2135 (tag!6050 (rule!8032 separatorToken!241))))))))

(assert (= (and d!997077 res!1397232) b!3462921))

(assert (= (and b!3462921 res!1397233) b!3462922))

(assert (=> d!997077 m!3864063))

(assert (=> d!997077 m!3864063))

(assert (=> d!997077 m!3864801))

(assert (=> b!3462921 m!3864063))

(assert (=> b!3462921 m!3864063))

(assert (=> b!3462921 m!3864807))

(assert (=> b!3462921 m!3864141))

(assert (=> b!3462921 m!3864149))

(assert (=> b!3462921 m!3864805))

(assert (=> b!3462921 m!3864141))

(assert (=> b!3462921 m!3864149))

(assert (=> b!3462922 m!3864063))

(assert (=> b!3462922 m!3864063))

(assert (=> b!3462922 m!3864807))

(assert (=> d!996271 d!997077))

(assert (=> d!996271 d!996151))

(declare-fun d!997079 () Bool)

(assert (=> d!997079 (= (isEmpty!21528 lt!1176597) ((_ is Nil!37171) lt!1176597))))

(assert (=> bm!249601 d!997079))

(assert (=> b!3461520 d!996705))

(assert (=> b!3461520 d!996709))

(declare-fun b!3462923 () Bool)

(declare-fun lt!1177426 () Unit!52520)

(declare-fun lt!1177427 () Unit!52520)

(assert (=> b!3462923 (= lt!1177426 lt!1177427)))

(assert (=> b!3462923 (rulesInvariant!4426 thiss!18206 (t!273043 (t!273043 rules!2135)))))

(assert (=> b!3462923 (= lt!1177427 (lemmaInvariantOnRulesThenOnTail!434 thiss!18206 (h!42592 (t!273043 rules!2135)) (t!273043 (t!273043 rules!2135))))))

(declare-fun e!2145381 () Option!7530)

(assert (=> b!3462923 (= e!2145381 (getRuleFromTag!1083 thiss!18206 (t!273043 (t!273043 rules!2135)) (tag!6050 (rule!8032 separatorToken!241))))))

(declare-fun d!997081 () Bool)

(declare-fun e!2145382 () Bool)

(assert (=> d!997081 e!2145382))

(declare-fun res!1397234 () Bool)

(assert (=> d!997081 (=> res!1397234 e!2145382)))

(declare-fun lt!1177428 () Option!7530)

(assert (=> d!997081 (= res!1397234 (isEmpty!21538 lt!1177428))))

(declare-fun e!2145383 () Option!7530)

(assert (=> d!997081 (= lt!1177428 e!2145383)))

(declare-fun c!592991 () Bool)

(assert (=> d!997081 (= c!592991 (and ((_ is Cons!37172) (t!273043 rules!2135)) (= (tag!6050 (h!42592 (t!273043 rules!2135))) (tag!6050 (rule!8032 separatorToken!241)))))))

(assert (=> d!997081 (rulesInvariant!4426 thiss!18206 (t!273043 rules!2135))))

(assert (=> d!997081 (= (getRuleFromTag!1083 thiss!18206 (t!273043 rules!2135) (tag!6050 (rule!8032 separatorToken!241))) lt!1177428)))

(declare-fun b!3462924 () Bool)

(declare-fun e!2145384 () Bool)

(assert (=> b!3462924 (= e!2145384 (= (tag!6050 (get!11898 lt!1177428)) (tag!6050 (rule!8032 separatorToken!241))))))

(declare-fun b!3462925 () Bool)

(assert (=> b!3462925 (= e!2145383 e!2145381)))

(declare-fun c!592990 () Bool)

(assert (=> b!3462925 (= c!592990 (and ((_ is Cons!37172) (t!273043 rules!2135)) (not (= (tag!6050 (h!42592 (t!273043 rules!2135))) (tag!6050 (rule!8032 separatorToken!241))))))))

(declare-fun b!3462926 () Bool)

(assert (=> b!3462926 (= e!2145382 e!2145384)))

(declare-fun res!1397235 () Bool)

(assert (=> b!3462926 (=> (not res!1397235) (not e!2145384))))

(assert (=> b!3462926 (= res!1397235 (contains!6895 (t!273043 rules!2135) (get!11898 lt!1177428)))))

(declare-fun b!3462927 () Bool)

(assert (=> b!3462927 (= e!2145383 (Some!7529 (h!42592 (t!273043 rules!2135))))))

(declare-fun b!3462928 () Bool)

(assert (=> b!3462928 (= e!2145381 None!7529)))

(assert (= (and d!997081 c!592991) b!3462927))

(assert (= (and d!997081 (not c!592991)) b!3462925))

(assert (= (and b!3462925 c!592990) b!3462923))

(assert (= (and b!3462925 (not c!592990)) b!3462928))

(assert (= (and d!997081 (not res!1397234)) b!3462926))

(assert (= (and b!3462926 res!1397235) b!3462924))

(assert (=> b!3462923 m!3866201))

(assert (=> b!3462923 m!3866203))

(declare-fun m!3867005 () Bool)

(assert (=> b!3462923 m!3867005))

(declare-fun m!3867007 () Bool)

(assert (=> d!997081 m!3867007))

(assert (=> d!997081 m!3864741))

(declare-fun m!3867009 () Bool)

(assert (=> b!3462924 m!3867009))

(assert (=> b!3462926 m!3867009))

(assert (=> b!3462926 m!3867009))

(declare-fun m!3867011 () Bool)

(assert (=> b!3462926 m!3867011))

(assert (=> b!3461520 d!997081))

(declare-fun d!997083 () Bool)

(declare-fun nullableFct!1012 (Regex!10199) Bool)

(assert (=> d!997083 (= (nullable!3489 (regex!5440 lt!1176598)) (nullableFct!1012 (regex!5440 lt!1176598)))))

(declare-fun bs!560625 () Bool)

(assert (= bs!560625 d!997083))

(declare-fun m!3867013 () Bool)

(assert (=> bs!560625 m!3867013))

(assert (=> b!3461298 d!997083))

(declare-fun d!997085 () Bool)

(declare-fun c!592992 () Bool)

(assert (=> d!997085 (= c!592992 ((_ is Nil!37171) lt!1176694))))

(declare-fun e!2145385 () (InoxSet C!20584))

(assert (=> d!997085 (= (content!5190 lt!1176694) e!2145385)))

(declare-fun b!3462929 () Bool)

(assert (=> b!3462929 (= e!2145385 ((as const (Array C!20584 Bool)) false))))

(declare-fun b!3462930 () Bool)

(assert (=> b!3462930 (= e!2145385 ((_ map or) (store ((as const (Array C!20584 Bool)) false) (h!42591 lt!1176694) true) (content!5190 (t!273042 lt!1176694))))))

(assert (= (and d!997085 c!592992) b!3462929))

(assert (= (and d!997085 (not c!592992)) b!3462930))

(declare-fun m!3867015 () Bool)

(assert (=> b!3462930 m!3867015))

(declare-fun m!3867017 () Bool)

(assert (=> b!3462930 m!3867017))

(assert (=> d!996201 d!997085))

(declare-fun d!997087 () Bool)

(declare-fun c!592993 () Bool)

(assert (=> d!997087 (= c!592993 ((_ is Nil!37171) (++!9165 lt!1176597 lt!1176614)))))

(declare-fun e!2145386 () (InoxSet C!20584))

(assert (=> d!997087 (= (content!5190 (++!9165 lt!1176597 lt!1176614)) e!2145386)))

(declare-fun b!3462931 () Bool)

(assert (=> b!3462931 (= e!2145386 ((as const (Array C!20584 Bool)) false))))

(declare-fun b!3462932 () Bool)

(assert (=> b!3462932 (= e!2145386 ((_ map or) (store ((as const (Array C!20584 Bool)) false) (h!42591 (++!9165 lt!1176597 lt!1176614)) true) (content!5190 (t!273042 (++!9165 lt!1176597 lt!1176614)))))))

(assert (= (and d!997087 c!592993) b!3462931))

(assert (= (and d!997087 (not c!592993)) b!3462932))

(declare-fun m!3867019 () Bool)

(assert (=> b!3462932 m!3867019))

(declare-fun m!3867021 () Bool)

(assert (=> b!3462932 m!3867021))

(assert (=> d!996201 d!997087))

(assert (=> d!996201 d!997023))

(declare-fun d!997089 () Bool)

(declare-fun lt!1177429 () Int)

(assert (=> d!997089 (= lt!1177429 (size!28206 (list!13537 lt!1176594)))))

(assert (=> d!997089 (= lt!1177429 (size!28207 (c!592552 lt!1176594)))))

(assert (=> d!997089 (= (size!28200 lt!1176594) lt!1177429)))

(declare-fun bs!560626 () Bool)

(assert (= bs!560626 d!997089))

(assert (=> bs!560626 m!3864557))

(assert (=> bs!560626 m!3864557))

(declare-fun m!3867023 () Bool)

(assert (=> bs!560626 m!3867023))

(declare-fun m!3867025 () Bool)

(assert (=> bs!560626 m!3867025))

(assert (=> d!996205 d!997089))

(declare-fun d!997091 () Bool)

(assert (=> d!997091 (= (list!13535 lt!1176730) (list!13536 (c!592551 lt!1176730)))))

(declare-fun bs!560627 () Bool)

(assert (= bs!560627 d!997091))

(declare-fun m!3867027 () Bool)

(assert (=> bs!560627 m!3867027))

(assert (=> d!996205 d!997091))

(declare-fun d!997093 () Bool)

(assert (=> d!997093 (= (dropList!1206 lt!1176594 0) (drop!2012 (list!13541 (c!592552 lt!1176594)) 0))))

(declare-fun bs!560628 () Bool)

(assert (= bs!560628 d!997093))

(declare-fun m!3867029 () Bool)

(assert (=> bs!560628 m!3867029))

(assert (=> bs!560628 m!3867029))

(declare-fun m!3867031 () Bool)

(assert (=> bs!560628 m!3867031))

(assert (=> d!996205 d!997093))

(declare-fun d!997095 () Bool)

(assert (=> d!997095 (= (list!13535 (BalanceConc!22125 Empty!11255)) (list!13536 (c!592551 (BalanceConc!22125 Empty!11255))))))

(declare-fun bs!560629 () Bool)

(assert (= bs!560629 d!997095))

(declare-fun m!3867033 () Bool)

(assert (=> bs!560629 m!3867033))

(assert (=> d!996205 d!997095))

(declare-fun d!997097 () Bool)

(declare-fun lt!1177443 () List!37295)

(assert (=> d!997097 (= lt!1177443 (++!9165 (list!13535 (BalanceConc!22125 Empty!11255)) (printList!1577 thiss!18206 (dropList!1206 lt!1176594 0))))))

(declare-fun e!2145389 () List!37295)

(assert (=> d!997097 (= lt!1177443 e!2145389)))

(declare-fun c!592996 () Bool)

(assert (=> d!997097 (= c!592996 ((_ is Cons!37173) (dropList!1206 lt!1176594 0)))))

(assert (=> d!997097 (= (printListTailRec!689 thiss!18206 (dropList!1206 lt!1176594 0) (list!13535 (BalanceConc!22125 Empty!11255))) lt!1177443)))

(declare-fun b!3462937 () Bool)

(assert (=> b!3462937 (= e!2145389 (printListTailRec!689 thiss!18206 (t!273044 (dropList!1206 lt!1176594 0)) (++!9165 (list!13535 (BalanceConc!22125 Empty!11255)) (list!13535 (charsOf!3454 (h!42593 (dropList!1206 lt!1176594 0)))))))))

(declare-fun lt!1177441 () List!37295)

(assert (=> b!3462937 (= lt!1177441 (list!13535 (charsOf!3454 (h!42593 (dropList!1206 lt!1176594 0)))))))

(declare-fun lt!1177440 () List!37295)

(assert (=> b!3462937 (= lt!1177440 (printList!1577 thiss!18206 (t!273044 (dropList!1206 lt!1176594 0))))))

(declare-fun lt!1177444 () Unit!52520)

(assert (=> b!3462937 (= lt!1177444 (lemmaConcatAssociativity!1960 (list!13535 (BalanceConc!22125 Empty!11255)) lt!1177441 lt!1177440))))

(assert (=> b!3462937 (= (++!9165 (++!9165 (list!13535 (BalanceConc!22125 Empty!11255)) lt!1177441) lt!1177440) (++!9165 (list!13535 (BalanceConc!22125 Empty!11255)) (++!9165 lt!1177441 lt!1177440)))))

(declare-fun lt!1177442 () Unit!52520)

(assert (=> b!3462937 (= lt!1177442 lt!1177444)))

(declare-fun b!3462938 () Bool)

(assert (=> b!3462938 (= e!2145389 (list!13535 (BalanceConc!22125 Empty!11255)))))

(assert (= (and d!997097 c!592996) b!3462937))

(assert (= (and d!997097 (not c!592996)) b!3462938))

(assert (=> d!997097 m!3864543))

(declare-fun m!3867035 () Bool)

(assert (=> d!997097 m!3867035))

(assert (=> d!997097 m!3864547))

(assert (=> d!997097 m!3867035))

(declare-fun m!3867037 () Bool)

(assert (=> d!997097 m!3867037))

(assert (=> b!3462937 m!3864547))

(declare-fun m!3867039 () Bool)

(assert (=> b!3462937 m!3867039))

(declare-fun m!3867041 () Bool)

(assert (=> b!3462937 m!3867041))

(declare-fun m!3867043 () Bool)

(assert (=> b!3462937 m!3867043))

(declare-fun m!3867045 () Bool)

(assert (=> b!3462937 m!3867045))

(assert (=> b!3462937 m!3867039))

(declare-fun m!3867047 () Bool)

(assert (=> b!3462937 m!3867047))

(declare-fun m!3867049 () Bool)

(assert (=> b!3462937 m!3867049))

(assert (=> b!3462937 m!3864547))

(declare-fun m!3867051 () Bool)

(assert (=> b!3462937 m!3867051))

(assert (=> b!3462937 m!3864547))

(assert (=> b!3462937 m!3867045))

(assert (=> b!3462937 m!3867047))

(assert (=> b!3462937 m!3864547))

(declare-fun m!3867053 () Bool)

(assert (=> b!3462937 m!3867053))

(assert (=> b!3462937 m!3867043))

(declare-fun m!3867055 () Bool)

(assert (=> b!3462937 m!3867055))

(assert (=> b!3462937 m!3867051))

(declare-fun m!3867057 () Bool)

(assert (=> b!3462937 m!3867057))

(assert (=> d!996205 d!997097))

(assert (=> bs!560509 d!996243))

(declare-fun d!997099 () Bool)

(assert (=> d!997099 (= (list!13535 lt!1176874) (list!13536 (c!592551 lt!1176874)))))

(declare-fun bs!560630 () Bool)

(assert (= bs!560630 d!997099))

(declare-fun m!3867059 () Bool)

(assert (=> bs!560630 m!3867059))

(assert (=> d!996321 d!997099))

(declare-fun d!997101 () Bool)

(declare-fun c!592997 () Bool)

(assert (=> d!997101 (= c!592997 ((_ is Cons!37173) (list!13537 lt!1176620)))))

(declare-fun e!2145390 () List!37295)

(assert (=> d!997101 (= (printList!1577 thiss!18206 (list!13537 lt!1176620)) e!2145390)))

(declare-fun b!3462939 () Bool)

(assert (=> b!3462939 (= e!2145390 (++!9165 (list!13535 (charsOf!3454 (h!42593 (list!13537 lt!1176620)))) (printList!1577 thiss!18206 (t!273044 (list!13537 lt!1176620)))))))

(declare-fun b!3462940 () Bool)

(assert (=> b!3462940 (= e!2145390 Nil!37171)))

(assert (= (and d!997101 c!592997) b!3462939))

(assert (= (and d!997101 (not c!592997)) b!3462940))

(declare-fun m!3867061 () Bool)

(assert (=> b!3462939 m!3867061))

(assert (=> b!3462939 m!3867061))

(declare-fun m!3867063 () Bool)

(assert (=> b!3462939 m!3867063))

(declare-fun m!3867065 () Bool)

(assert (=> b!3462939 m!3867065))

(assert (=> b!3462939 m!3867063))

(assert (=> b!3462939 m!3867065))

(declare-fun m!3867067 () Bool)

(assert (=> b!3462939 m!3867067))

(assert (=> d!996321 d!997101))

(declare-fun d!997103 () Bool)

(assert (=> d!997103 (= (list!13537 lt!1176620) (list!13541 (c!592552 lt!1176620)))))

(declare-fun bs!560631 () Bool)

(assert (= bs!560631 d!997103))

(declare-fun m!3867069 () Bool)

(assert (=> bs!560631 m!3867069))

(assert (=> d!996321 d!997103))

(assert (=> d!996321 d!996317))

(declare-fun b!3462944 () Bool)

(declare-fun e!2145392 () Bool)

(declare-fun lt!1177445 () List!37295)

(assert (=> b!3462944 (= e!2145392 (or (not (= (_2!21583 (get!11899 lt!1176668)) Nil!37171)) (= lt!1177445 (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1176668)))))))))

(declare-fun b!3462943 () Bool)

(declare-fun res!1397237 () Bool)

(assert (=> b!3462943 (=> (not res!1397237) (not e!2145392))))

(assert (=> b!3462943 (= res!1397237 (= (size!28201 lt!1177445) (+ (size!28201 (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1176668))))) (size!28201 (_2!21583 (get!11899 lt!1176668))))))))

(declare-fun b!3462941 () Bool)

(declare-fun e!2145391 () List!37295)

(assert (=> b!3462941 (= e!2145391 (_2!21583 (get!11899 lt!1176668)))))

(declare-fun b!3462942 () Bool)

(assert (=> b!3462942 (= e!2145391 (Cons!37171 (h!42591 (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1176668))))) (++!9165 (t!273042 (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1176668))))) (_2!21583 (get!11899 lt!1176668)))))))

(declare-fun d!997105 () Bool)

(assert (=> d!997105 e!2145392))

(declare-fun res!1397236 () Bool)

(assert (=> d!997105 (=> (not res!1397236) (not e!2145392))))

(assert (=> d!997105 (= res!1397236 (= (content!5190 lt!1177445) ((_ map or) (content!5190 (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1176668))))) (content!5190 (_2!21583 (get!11899 lt!1176668))))))))

(assert (=> d!997105 (= lt!1177445 e!2145391)))

(declare-fun c!592998 () Bool)

(assert (=> d!997105 (= c!592998 ((_ is Nil!37171) (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1176668))))))))

(assert (=> d!997105 (= (++!9165 (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1176668)))) (_2!21583 (get!11899 lt!1176668))) lt!1177445)))

(assert (= (and d!997105 c!592998) b!3462941))

(assert (= (and d!997105 (not c!592998)) b!3462942))

(assert (= (and d!997105 res!1397236) b!3462943))

(assert (= (and b!3462943 res!1397237) b!3462944))

(declare-fun m!3867071 () Bool)

(assert (=> b!3462943 m!3867071))

(assert (=> b!3462943 m!3864287))

(declare-fun m!3867073 () Bool)

(assert (=> b!3462943 m!3867073))

(assert (=> b!3462943 m!3864301))

(declare-fun m!3867075 () Bool)

(assert (=> b!3462942 m!3867075))

(declare-fun m!3867077 () Bool)

(assert (=> d!997105 m!3867077))

(assert (=> d!997105 m!3864287))

(declare-fun m!3867079 () Bool)

(assert (=> d!997105 m!3867079))

(declare-fun m!3867081 () Bool)

(assert (=> d!997105 m!3867081))

(assert (=> b!3461231 d!997105))

(assert (=> b!3461231 d!996501))

(assert (=> b!3461231 d!996503))

(assert (=> b!3461231 d!996499))

(declare-fun d!997107 () Bool)

(declare-fun lt!1177446 () Token!10246)

(assert (=> d!997107 (= lt!1177446 (apply!8758 (list!13537 (_1!21582 lt!1176637)) 0))))

(assert (=> d!997107 (= lt!1177446 (apply!8759 (c!592552 (_1!21582 lt!1176637)) 0))))

(declare-fun e!2145393 () Bool)

(assert (=> d!997107 e!2145393))

(declare-fun res!1397238 () Bool)

(assert (=> d!997107 (=> (not res!1397238) (not e!2145393))))

(assert (=> d!997107 (= res!1397238 (<= 0 0))))

(assert (=> d!997107 (= (apply!8756 (_1!21582 lt!1176637) 0) lt!1177446)))

(declare-fun b!3462945 () Bool)

(assert (=> b!3462945 (= e!2145393 (< 0 (size!28200 (_1!21582 lt!1176637))))))

(assert (= (and d!997107 res!1397238) b!3462945))

(declare-fun m!3867083 () Bool)

(assert (=> d!997107 m!3867083))

(assert (=> d!997107 m!3867083))

(declare-fun m!3867085 () Bool)

(assert (=> d!997107 m!3867085))

(declare-fun m!3867087 () Bool)

(assert (=> d!997107 m!3867087))

(assert (=> b!3462945 m!3864195))

(assert (=> b!3461136 d!997107))

(assert (=> b!3461400 d!997089))

(declare-fun d!997109 () Bool)

(declare-fun lt!1177449 () Int)

(assert (=> d!997109 (>= lt!1177449 0)))

(declare-fun e!2145396 () Int)

(assert (=> d!997109 (= lt!1177449 e!2145396)))

(declare-fun c!593001 () Bool)

(assert (=> d!997109 (= c!593001 ((_ is Nil!37173) (list!13537 (_1!21582 lt!1176604))))))

(assert (=> d!997109 (= (size!28206 (list!13537 (_1!21582 lt!1176604))) lt!1177449)))

(declare-fun b!3462950 () Bool)

(assert (=> b!3462950 (= e!2145396 0)))

(declare-fun b!3462951 () Bool)

(assert (=> b!3462951 (= e!2145396 (+ 1 (size!28206 (t!273044 (list!13537 (_1!21582 lt!1176604))))))))

(assert (= (and d!997109 c!593001) b!3462950))

(assert (= (and d!997109 (not c!593001)) b!3462951))

(declare-fun m!3867089 () Bool)

(assert (=> b!3462951 m!3867089))

(assert (=> d!996323 d!997109))

(assert (=> d!996323 d!996557))

(declare-fun d!997111 () Bool)

(declare-fun lt!1177452 () Int)

(assert (=> d!997111 (= lt!1177452 (size!28206 (list!13541 (c!592552 (_1!21582 lt!1176604)))))))

(assert (=> d!997111 (= lt!1177452 (ite ((_ is Empty!11256) (c!592552 (_1!21582 lt!1176604))) 0 (ite ((_ is Leaf!17587) (c!592552 (_1!21582 lt!1176604))) (csize!22743 (c!592552 (_1!21582 lt!1176604))) (csize!22742 (c!592552 (_1!21582 lt!1176604))))))))

(assert (=> d!997111 (= (size!28207 (c!592552 (_1!21582 lt!1176604))) lt!1177452)))

(declare-fun bs!560632 () Bool)

(assert (= bs!560632 d!997111))

(assert (=> bs!560632 m!3865785))

(assert (=> bs!560632 m!3865785))

(declare-fun m!3867091 () Bool)

(assert (=> bs!560632 m!3867091))

(assert (=> d!996323 d!997111))

(assert (=> b!3461324 d!996107))

(assert (=> b!3461324 d!996105))

(declare-fun lt!1177453 () List!37295)

(declare-fun e!2145398 () Bool)

(declare-fun b!3462955 () Bool)

(assert (=> b!3462955 (= e!2145398 (or (not (= (printWithSeparatorTokenList!316 thiss!18206 (t!273044 tokens!494) separatorToken!241) Nil!37171)) (= lt!1177453 (++!9165 (list!13535 (charsOf!3454 (h!42593 tokens!494))) (list!13535 (charsOf!3454 separatorToken!241))))))))

(declare-fun b!3462954 () Bool)

(declare-fun res!1397240 () Bool)

(assert (=> b!3462954 (=> (not res!1397240) (not e!2145398))))

(assert (=> b!3462954 (= res!1397240 (= (size!28201 lt!1177453) (+ (size!28201 (++!9165 (list!13535 (charsOf!3454 (h!42593 tokens!494))) (list!13535 (charsOf!3454 separatorToken!241)))) (size!28201 (printWithSeparatorTokenList!316 thiss!18206 (t!273044 tokens!494) separatorToken!241)))))))

(declare-fun e!2145397 () List!37295)

(declare-fun b!3462952 () Bool)

(assert (=> b!3462952 (= e!2145397 (printWithSeparatorTokenList!316 thiss!18206 (t!273044 tokens!494) separatorToken!241))))

(declare-fun b!3462953 () Bool)

(assert (=> b!3462953 (= e!2145397 (Cons!37171 (h!42591 (++!9165 (list!13535 (charsOf!3454 (h!42593 tokens!494))) (list!13535 (charsOf!3454 separatorToken!241)))) (++!9165 (t!273042 (++!9165 (list!13535 (charsOf!3454 (h!42593 tokens!494))) (list!13535 (charsOf!3454 separatorToken!241)))) (printWithSeparatorTokenList!316 thiss!18206 (t!273044 tokens!494) separatorToken!241))))))

(declare-fun d!997113 () Bool)

(assert (=> d!997113 e!2145398))

(declare-fun res!1397239 () Bool)

(assert (=> d!997113 (=> (not res!1397239) (not e!2145398))))

(assert (=> d!997113 (= res!1397239 (= (content!5190 lt!1177453) ((_ map or) (content!5190 (++!9165 (list!13535 (charsOf!3454 (h!42593 tokens!494))) (list!13535 (charsOf!3454 separatorToken!241)))) (content!5190 (printWithSeparatorTokenList!316 thiss!18206 (t!273044 tokens!494) separatorToken!241)))))))

(assert (=> d!997113 (= lt!1177453 e!2145397)))

(declare-fun c!593002 () Bool)

(assert (=> d!997113 (= c!593002 ((_ is Nil!37171) (++!9165 (list!13535 (charsOf!3454 (h!42593 tokens!494))) (list!13535 (charsOf!3454 separatorToken!241)))))))

(assert (=> d!997113 (= (++!9165 (++!9165 (list!13535 (charsOf!3454 (h!42593 tokens!494))) (list!13535 (charsOf!3454 separatorToken!241))) (printWithSeparatorTokenList!316 thiss!18206 (t!273044 tokens!494) separatorToken!241)) lt!1177453)))

(assert (= (and d!997113 c!593002) b!3462952))

(assert (= (and d!997113 (not c!593002)) b!3462953))

(assert (= (and d!997113 res!1397239) b!3462954))

(assert (= (and b!3462954 res!1397240) b!3462955))

(declare-fun m!3867093 () Bool)

(assert (=> b!3462954 m!3867093))

(assert (=> b!3462954 m!3864409))

(declare-fun m!3867095 () Bool)

(assert (=> b!3462954 m!3867095))

(assert (=> b!3462954 m!3864145))

(declare-fun m!3867097 () Bool)

(assert (=> b!3462954 m!3867097))

(assert (=> b!3462953 m!3864145))

(declare-fun m!3867099 () Bool)

(assert (=> b!3462953 m!3867099))

(declare-fun m!3867101 () Bool)

(assert (=> d!997113 m!3867101))

(assert (=> d!997113 m!3864409))

(declare-fun m!3867103 () Bool)

(assert (=> d!997113 m!3867103))

(assert (=> d!997113 m!3864145))

(declare-fun m!3867105 () Bool)

(assert (=> d!997113 m!3867105))

(assert (=> b!3461324 d!997113))

(assert (=> b!3461324 d!996189))

(assert (=> b!3461324 d!996197))

(declare-fun e!2145400 () Bool)

(declare-fun b!3462959 () Bool)

(declare-fun lt!1177454 () List!37295)

(assert (=> b!3462959 (= e!2145400 (or (not (= (list!13535 (charsOf!3454 separatorToken!241)) Nil!37171)) (= lt!1177454 (list!13535 (charsOf!3454 (h!42593 tokens!494))))))))

(declare-fun b!3462958 () Bool)

(declare-fun res!1397242 () Bool)

(assert (=> b!3462958 (=> (not res!1397242) (not e!2145400))))

(assert (=> b!3462958 (= res!1397242 (= (size!28201 lt!1177454) (+ (size!28201 (list!13535 (charsOf!3454 (h!42593 tokens!494)))) (size!28201 (list!13535 (charsOf!3454 separatorToken!241))))))))

(declare-fun b!3462956 () Bool)

(declare-fun e!2145399 () List!37295)

(assert (=> b!3462956 (= e!2145399 (list!13535 (charsOf!3454 separatorToken!241)))))

(declare-fun b!3462957 () Bool)

(assert (=> b!3462957 (= e!2145399 (Cons!37171 (h!42591 (list!13535 (charsOf!3454 (h!42593 tokens!494)))) (++!9165 (t!273042 (list!13535 (charsOf!3454 (h!42593 tokens!494)))) (list!13535 (charsOf!3454 separatorToken!241)))))))

(declare-fun d!997115 () Bool)

(assert (=> d!997115 e!2145400))

(declare-fun res!1397241 () Bool)

(assert (=> d!997115 (=> (not res!1397241) (not e!2145400))))

(assert (=> d!997115 (= res!1397241 (= (content!5190 lt!1177454) ((_ map or) (content!5190 (list!13535 (charsOf!3454 (h!42593 tokens!494)))) (content!5190 (list!13535 (charsOf!3454 separatorToken!241))))))))

(assert (=> d!997115 (= lt!1177454 e!2145399)))

(declare-fun c!593003 () Bool)

(assert (=> d!997115 (= c!593003 ((_ is Nil!37171) (list!13535 (charsOf!3454 (h!42593 tokens!494)))))))

(assert (=> d!997115 (= (++!9165 (list!13535 (charsOf!3454 (h!42593 tokens!494))) (list!13535 (charsOf!3454 separatorToken!241))) lt!1177454)))

(assert (= (and d!997115 c!593003) b!3462956))

(assert (= (and d!997115 (not c!593003)) b!3462957))

(assert (= (and d!997115 res!1397241) b!3462958))

(assert (= (and b!3462958 res!1397242) b!3462959))

(declare-fun m!3867107 () Bool)

(assert (=> b!3462958 m!3867107))

(assert (=> b!3462958 m!3864173))

(declare-fun m!3867109 () Bool)

(assert (=> b!3462958 m!3867109))

(assert (=> b!3462958 m!3864149))

(assert (=> b!3462958 m!3865809))

(assert (=> b!3462957 m!3864149))

(declare-fun m!3867111 () Bool)

(assert (=> b!3462957 m!3867111))

(declare-fun m!3867113 () Bool)

(assert (=> d!997115 m!3867113))

(assert (=> d!997115 m!3864173))

(declare-fun m!3867115 () Bool)

(assert (=> d!997115 m!3867115))

(assert (=> d!997115 m!3864149))

(assert (=> d!997115 m!3865815))

(assert (=> b!3461324 d!997115))

(assert (=> b!3461324 d!996195))

(declare-fun d!997117 () Bool)

(declare-fun lt!1177455 () Bool)

(assert (=> d!997117 (= lt!1177455 (isEmpty!21536 (list!13537 (_1!21582 lt!1176840))))))

(assert (=> d!997117 (= lt!1177455 (isEmpty!21537 (c!592552 (_1!21582 lt!1176840))))))

(assert (=> d!997117 (= (isEmpty!21526 (_1!21582 lt!1176840)) lt!1177455)))

(declare-fun bs!560633 () Bool)

(assert (= bs!560633 d!997117))

(assert (=> bs!560633 m!3864941))

(assert (=> bs!560633 m!3864941))

(declare-fun m!3867117 () Bool)

(assert (=> bs!560633 m!3867117))

(declare-fun m!3867119 () Bool)

(assert (=> bs!560633 m!3867119))

(assert (=> b!3461611 d!997117))

(declare-fun b!3462960 () Bool)

(declare-fun res!1397247 () Bool)

(declare-fun e!2145405 () Bool)

(assert (=> b!3462960 (=> (not res!1397247) (not e!2145405))))

(declare-fun call!249760 () Bool)

(assert (=> b!3462960 (= res!1397247 (not call!249760))))

(declare-fun b!3462961 () Bool)

(declare-fun res!1397245 () Bool)

(declare-fun e!2145407 () Bool)

(assert (=> b!3462961 (=> res!1397245 e!2145407)))

(assert (=> b!3462961 (= res!1397245 e!2145405)))

(declare-fun res!1397246 () Bool)

(assert (=> b!3462961 (=> (not res!1397246) (not e!2145405))))

(declare-fun lt!1177456 () Bool)

(assert (=> b!3462961 (= res!1397246 lt!1177456)))

(declare-fun b!3462962 () Bool)

(declare-fun e!2145401 () Bool)

(assert (=> b!3462962 (= e!2145401 (= lt!1177456 call!249760))))

(declare-fun b!3462963 () Bool)

(declare-fun e!2145404 () Bool)

(declare-fun e!2145402 () Bool)

(assert (=> b!3462963 (= e!2145404 e!2145402)))

(declare-fun res!1397248 () Bool)

(assert (=> b!3462963 (=> res!1397248 e!2145402)))

(assert (=> b!3462963 (= res!1397248 call!249760)))

(declare-fun b!3462964 () Bool)

(declare-fun e!2145403 () Bool)

(assert (=> b!3462964 (= e!2145403 (nullable!3489 (regex!5440 (rule!8032 (h!42593 tokens!494)))))))

(declare-fun b!3462965 () Bool)

(declare-fun res!1397243 () Bool)

(assert (=> b!3462965 (=> (not res!1397243) (not e!2145405))))

(assert (=> b!3462965 (= res!1397243 (isEmpty!21528 (tail!5434 (_1!21587 (findLongestMatchInner!911 (regex!5440 (rule!8032 (h!42593 tokens!494))) Nil!37171 (size!28201 Nil!37171) lt!1176597 lt!1176597 (size!28201 lt!1176597))))))))

(declare-fun b!3462966 () Bool)

(declare-fun e!2145406 () Bool)

(assert (=> b!3462966 (= e!2145401 e!2145406)))

(declare-fun c!593004 () Bool)

(assert (=> b!3462966 (= c!593004 ((_ is EmptyLang!10199) (regex!5440 (rule!8032 (h!42593 tokens!494)))))))

(declare-fun b!3462967 () Bool)

(declare-fun res!1397244 () Bool)

(assert (=> b!3462967 (=> res!1397244 e!2145407)))

(assert (=> b!3462967 (= res!1397244 (not ((_ is ElementMatch!10199) (regex!5440 (rule!8032 (h!42593 tokens!494))))))))

(assert (=> b!3462967 (= e!2145406 e!2145407)))

(declare-fun b!3462968 () Bool)

(assert (=> b!3462968 (= e!2145407 e!2145404)))

(declare-fun res!1397250 () Bool)

(assert (=> b!3462968 (=> (not res!1397250) (not e!2145404))))

(assert (=> b!3462968 (= res!1397250 (not lt!1177456))))

(declare-fun b!3462969 () Bool)

(assert (=> b!3462969 (= e!2145406 (not lt!1177456))))

(declare-fun b!3462970 () Bool)

(declare-fun res!1397249 () Bool)

(assert (=> b!3462970 (=> res!1397249 e!2145402)))

(assert (=> b!3462970 (= res!1397249 (not (isEmpty!21528 (tail!5434 (_1!21587 (findLongestMatchInner!911 (regex!5440 (rule!8032 (h!42593 tokens!494))) Nil!37171 (size!28201 Nil!37171) lt!1176597 lt!1176597 (size!28201 lt!1176597)))))))))

(declare-fun b!3462971 () Bool)

(assert (=> b!3462971 (= e!2145403 (matchR!4783 (derivativeStep!3042 (regex!5440 (rule!8032 (h!42593 tokens!494))) (head!7321 (_1!21587 (findLongestMatchInner!911 (regex!5440 (rule!8032 (h!42593 tokens!494))) Nil!37171 (size!28201 Nil!37171) lt!1176597 lt!1176597 (size!28201 lt!1176597))))) (tail!5434 (_1!21587 (findLongestMatchInner!911 (regex!5440 (rule!8032 (h!42593 tokens!494))) Nil!37171 (size!28201 Nil!37171) lt!1176597 lt!1176597 (size!28201 lt!1176597))))))))

(declare-fun d!997119 () Bool)

(assert (=> d!997119 e!2145401))

(declare-fun c!593005 () Bool)

(assert (=> d!997119 (= c!593005 ((_ is EmptyExpr!10199) (regex!5440 (rule!8032 (h!42593 tokens!494)))))))

(assert (=> d!997119 (= lt!1177456 e!2145403)))

(declare-fun c!593006 () Bool)

(assert (=> d!997119 (= c!593006 (isEmpty!21528 (_1!21587 (findLongestMatchInner!911 (regex!5440 (rule!8032 (h!42593 tokens!494))) Nil!37171 (size!28201 Nil!37171) lt!1176597 lt!1176597 (size!28201 lt!1176597)))))))

(assert (=> d!997119 (validRegex!4645 (regex!5440 (rule!8032 (h!42593 tokens!494))))))

(assert (=> d!997119 (= (matchR!4783 (regex!5440 (rule!8032 (h!42593 tokens!494))) (_1!21587 (findLongestMatchInner!911 (regex!5440 (rule!8032 (h!42593 tokens!494))) Nil!37171 (size!28201 Nil!37171) lt!1176597 lt!1176597 (size!28201 lt!1176597)))) lt!1177456)))

(declare-fun bm!249755 () Bool)

(assert (=> bm!249755 (= call!249760 (isEmpty!21528 (_1!21587 (findLongestMatchInner!911 (regex!5440 (rule!8032 (h!42593 tokens!494))) Nil!37171 (size!28201 Nil!37171) lt!1176597 lt!1176597 (size!28201 lt!1176597)))))))

(declare-fun b!3462972 () Bool)

(assert (=> b!3462972 (= e!2145402 (not (= (head!7321 (_1!21587 (findLongestMatchInner!911 (regex!5440 (rule!8032 (h!42593 tokens!494))) Nil!37171 (size!28201 Nil!37171) lt!1176597 lt!1176597 (size!28201 lt!1176597)))) (c!592550 (regex!5440 (rule!8032 (h!42593 tokens!494)))))))))

(declare-fun b!3462973 () Bool)

(assert (=> b!3462973 (= e!2145405 (= (head!7321 (_1!21587 (findLongestMatchInner!911 (regex!5440 (rule!8032 (h!42593 tokens!494))) Nil!37171 (size!28201 Nil!37171) lt!1176597 lt!1176597 (size!28201 lt!1176597)))) (c!592550 (regex!5440 (rule!8032 (h!42593 tokens!494))))))))

(assert (= (and d!997119 c!593006) b!3462964))

(assert (= (and d!997119 (not c!593006)) b!3462971))

(assert (= (and d!997119 c!593005) b!3462962))

(assert (= (and d!997119 (not c!593005)) b!3462966))

(assert (= (and b!3462966 c!593004) b!3462969))

(assert (= (and b!3462966 (not c!593004)) b!3462967))

(assert (= (and b!3462967 (not res!1397244)) b!3462961))

(assert (= (and b!3462961 res!1397246) b!3462960))

(assert (= (and b!3462960 res!1397247) b!3462965))

(assert (= (and b!3462965 res!1397243) b!3462973))

(assert (= (and b!3462961 (not res!1397245)) b!3462968))

(assert (= (and b!3462968 res!1397250) b!3462963))

(assert (= (and b!3462963 (not res!1397248)) b!3462970))

(assert (= (and b!3462970 (not res!1397249)) b!3462972))

(assert (= (or b!3462962 b!3462960 b!3462963) bm!249755))

(declare-fun m!3867121 () Bool)

(assert (=> b!3462971 m!3867121))

(assert (=> b!3462971 m!3867121))

(declare-fun m!3867123 () Bool)

(assert (=> b!3462971 m!3867123))

(declare-fun m!3867125 () Bool)

(assert (=> b!3462971 m!3867125))

(assert (=> b!3462971 m!3867123))

(assert (=> b!3462971 m!3867125))

(declare-fun m!3867127 () Bool)

(assert (=> b!3462971 m!3867127))

(assert (=> b!3462973 m!3867121))

(assert (=> d!997119 m!3864911))

(assert (=> d!997119 m!3865991))

(assert (=> b!3462964 m!3866023))

(assert (=> b!3462972 m!3867121))

(assert (=> bm!249755 m!3864911))

(assert (=> b!3462970 m!3867125))

(assert (=> b!3462970 m!3867125))

(declare-fun m!3867129 () Bool)

(assert (=> b!3462970 m!3867129))

(assert (=> b!3462965 m!3867125))

(assert (=> b!3462965 m!3867125))

(assert (=> b!3462965 m!3867129))

(assert (=> b!3461591 d!997119))

(declare-fun b!3463002 () Bool)

(declare-fun e!2145428 () tuple2!36906)

(assert (=> b!3463002 (= e!2145428 (tuple2!36907 Nil!37171 lt!1176597))))

(declare-fun b!3463003 () Bool)

(declare-fun c!593021 () Bool)

(declare-fun call!249782 () Bool)

(assert (=> b!3463003 (= c!593021 call!249782)))

(declare-fun lt!1177528 () Unit!52520)

(declare-fun lt!1177520 () Unit!52520)

(assert (=> b!3463003 (= lt!1177528 lt!1177520)))

(assert (=> b!3463003 (= lt!1176597 Nil!37171)))

(declare-fun call!249783 () Unit!52520)

(assert (=> b!3463003 (= lt!1177520 call!249783)))

(declare-fun lt!1177537 () Unit!52520)

(declare-fun lt!1177523 () Unit!52520)

(assert (=> b!3463003 (= lt!1177537 lt!1177523)))

(declare-fun call!249777 () Bool)

(assert (=> b!3463003 call!249777))

(declare-fun call!249781 () Unit!52520)

(assert (=> b!3463003 (= lt!1177523 call!249781)))

(declare-fun e!2145425 () tuple2!36906)

(declare-fun e!2145427 () tuple2!36906)

(assert (=> b!3463003 (= e!2145425 e!2145427)))

(declare-fun bm!249772 () Bool)

(declare-fun call!249780 () List!37295)

(assert (=> bm!249772 (= call!249780 (tail!5434 lt!1176597))))

(declare-fun bm!249773 () Bool)

(assert (=> bm!249773 (= call!249782 (nullable!3489 (regex!5440 (rule!8032 (h!42593 tokens!494)))))))

(declare-fun b!3463004 () Bool)

(declare-fun e!2145429 () tuple2!36906)

(assert (=> b!3463004 (= e!2145429 e!2145428)))

(declare-fun lt!1177527 () tuple2!36906)

(declare-fun call!249779 () tuple2!36906)

(assert (=> b!3463004 (= lt!1177527 call!249779)))

(declare-fun c!593024 () Bool)

(assert (=> b!3463004 (= c!593024 (isEmpty!21528 (_1!21587 lt!1177527)))))

(declare-fun d!997121 () Bool)

(declare-fun e!2145430 () Bool)

(assert (=> d!997121 e!2145430))

(declare-fun res!1397256 () Bool)

(assert (=> d!997121 (=> (not res!1397256) (not e!2145430))))

(declare-fun lt!1177517 () tuple2!36906)

(assert (=> d!997121 (= res!1397256 (= (++!9165 (_1!21587 lt!1177517) (_2!21587 lt!1177517)) lt!1176597))))

(declare-fun e!2145431 () tuple2!36906)

(assert (=> d!997121 (= lt!1177517 e!2145431)))

(declare-fun c!593022 () Bool)

(declare-fun lostCause!926 (Regex!10199) Bool)

(assert (=> d!997121 (= c!593022 (lostCause!926 (regex!5440 (rule!8032 (h!42593 tokens!494)))))))

(declare-fun lt!1177522 () Unit!52520)

(declare-fun Unit!52529 () Unit!52520)

(assert (=> d!997121 (= lt!1177522 Unit!52529)))

(declare-fun getSuffix!1494 (List!37295 List!37295) List!37295)

(assert (=> d!997121 (= (getSuffix!1494 lt!1176597 Nil!37171) lt!1176597)))

(declare-fun lt!1177524 () Unit!52520)

(declare-fun lt!1177534 () Unit!52520)

(assert (=> d!997121 (= lt!1177524 lt!1177534)))

(declare-fun lt!1177525 () List!37295)

(assert (=> d!997121 (= lt!1176597 lt!1177525)))

(declare-fun lemmaSamePrefixThenSameSuffix!1276 (List!37295 List!37295 List!37295 List!37295 List!37295) Unit!52520)

(assert (=> d!997121 (= lt!1177534 (lemmaSamePrefixThenSameSuffix!1276 Nil!37171 lt!1176597 Nil!37171 lt!1177525 lt!1176597))))

(assert (=> d!997121 (= lt!1177525 (getSuffix!1494 lt!1176597 Nil!37171))))

(declare-fun lt!1177514 () Unit!52520)

(declare-fun lt!1177532 () Unit!52520)

(assert (=> d!997121 (= lt!1177514 lt!1177532)))

(assert (=> d!997121 (isPrefix!2845 Nil!37171 (++!9165 Nil!37171 lt!1176597))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1810 (List!37295 List!37295) Unit!52520)

(assert (=> d!997121 (= lt!1177532 (lemmaConcatTwoListThenFirstIsPrefix!1810 Nil!37171 lt!1176597))))

(assert (=> d!997121 (validRegex!4645 (regex!5440 (rule!8032 (h!42593 tokens!494))))))

(assert (=> d!997121 (= (findLongestMatchInner!911 (regex!5440 (rule!8032 (h!42593 tokens!494))) Nil!37171 (size!28201 Nil!37171) lt!1176597 lt!1176597 (size!28201 lt!1176597)) lt!1177517)))

(declare-fun b!3463005 () Bool)

(assert (=> b!3463005 (= e!2145431 (tuple2!36907 Nil!37171 lt!1176597))))

(declare-fun bm!249774 () Bool)

(declare-fun call!249784 () Regex!10199)

(declare-fun call!249778 () C!20584)

(assert (=> bm!249774 (= call!249784 (derivativeStep!3042 (regex!5440 (rule!8032 (h!42593 tokens!494))) call!249778))))

(declare-fun b!3463006 () Bool)

(declare-fun e!2145426 () Unit!52520)

(declare-fun Unit!52530 () Unit!52520)

(assert (=> b!3463006 (= e!2145426 Unit!52530)))

(declare-fun lt!1177521 () Unit!52520)

(assert (=> b!3463006 (= lt!1177521 call!249781)))

(assert (=> b!3463006 call!249777))

(declare-fun lt!1177526 () Unit!52520)

(assert (=> b!3463006 (= lt!1177526 lt!1177521)))

(declare-fun lt!1177531 () Unit!52520)

(assert (=> b!3463006 (= lt!1177531 call!249783)))

(assert (=> b!3463006 (= lt!1176597 Nil!37171)))

(declare-fun lt!1177515 () Unit!52520)

(assert (=> b!3463006 (= lt!1177515 lt!1177531)))

(assert (=> b!3463006 false))

(declare-fun b!3463007 () Bool)

(declare-fun c!593020 () Bool)

(assert (=> b!3463007 (= c!593020 call!249782)))

(declare-fun lt!1177519 () Unit!52520)

(declare-fun lt!1177540 () Unit!52520)

(assert (=> b!3463007 (= lt!1177519 lt!1177540)))

(declare-fun lt!1177538 () C!20584)

(declare-fun lt!1177535 () List!37295)

(assert (=> b!3463007 (= (++!9165 (++!9165 Nil!37171 (Cons!37171 lt!1177538 Nil!37171)) lt!1177535) lt!1176597)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1164 (List!37295 C!20584 List!37295 List!37295) Unit!52520)

(assert (=> b!3463007 (= lt!1177540 (lemmaMoveElementToOtherListKeepsConcatEq!1164 Nil!37171 lt!1177538 lt!1177535 lt!1176597))))

(assert (=> b!3463007 (= lt!1177535 (tail!5434 lt!1176597))))

(assert (=> b!3463007 (= lt!1177538 (head!7321 lt!1176597))))

(declare-fun lt!1177529 () Unit!52520)

(declare-fun lt!1177536 () Unit!52520)

(assert (=> b!3463007 (= lt!1177529 lt!1177536)))

(assert (=> b!3463007 (isPrefix!2845 (++!9165 Nil!37171 (Cons!37171 (head!7321 (getSuffix!1494 lt!1176597 Nil!37171)) Nil!37171)) lt!1176597)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!552 (List!37295 List!37295) Unit!52520)

(assert (=> b!3463007 (= lt!1177536 (lemmaAddHeadSuffixToPrefixStillPrefix!552 Nil!37171 lt!1176597))))

(declare-fun lt!1177530 () Unit!52520)

(declare-fun lt!1177513 () Unit!52520)

(assert (=> b!3463007 (= lt!1177530 lt!1177513)))

(assert (=> b!3463007 (= lt!1177513 (lemmaAddHeadSuffixToPrefixStillPrefix!552 Nil!37171 lt!1176597))))

(declare-fun lt!1177516 () List!37295)

(assert (=> b!3463007 (= lt!1177516 (++!9165 Nil!37171 (Cons!37171 (head!7321 lt!1176597) Nil!37171)))))

(declare-fun lt!1177533 () Unit!52520)

(assert (=> b!3463007 (= lt!1177533 e!2145426)))

(declare-fun c!593023 () Bool)

(assert (=> b!3463007 (= c!593023 (= (size!28201 Nil!37171) (size!28201 lt!1176597)))))

(declare-fun lt!1177518 () Unit!52520)

(declare-fun lt!1177539 () Unit!52520)

(assert (=> b!3463007 (= lt!1177518 lt!1177539)))

(assert (=> b!3463007 (<= (size!28201 Nil!37171) (size!28201 lt!1176597))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!360 (List!37295 List!37295) Unit!52520)

(assert (=> b!3463007 (= lt!1177539 (lemmaIsPrefixThenSmallerEqSize!360 Nil!37171 lt!1176597))))

(assert (=> b!3463007 (= e!2145425 e!2145429)))

(declare-fun b!3463008 () Bool)

(declare-fun e!2145424 () Bool)

(assert (=> b!3463008 (= e!2145430 e!2145424)))

(declare-fun res!1397255 () Bool)

(assert (=> b!3463008 (=> res!1397255 e!2145424)))

(assert (=> b!3463008 (= res!1397255 (isEmpty!21528 (_1!21587 lt!1177517)))))

(declare-fun b!3463009 () Bool)

(assert (=> b!3463009 (= e!2145429 call!249779)))

(declare-fun bm!249775 () Bool)

(assert (=> bm!249775 (= call!249779 (findLongestMatchInner!911 call!249784 lt!1177516 (+ (size!28201 Nil!37171) 1) call!249780 lt!1176597 (size!28201 lt!1176597)))))

(declare-fun bm!249776 () Bool)

(assert (=> bm!249776 (= call!249778 (head!7321 lt!1176597))))

(declare-fun b!3463010 () Bool)

(assert (=> b!3463010 (= e!2145424 (>= (size!28201 (_1!21587 lt!1177517)) (size!28201 Nil!37171)))))

(declare-fun b!3463011 () Bool)

(assert (=> b!3463011 (= e!2145428 lt!1177527)))

(declare-fun b!3463012 () Bool)

(declare-fun Unit!52531 () Unit!52520)

(assert (=> b!3463012 (= e!2145426 Unit!52531)))

(declare-fun b!3463013 () Bool)

(assert (=> b!3463013 (= e!2145427 (tuple2!36907 Nil!37171 Nil!37171))))

(declare-fun bm!249777 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!559 (List!37295 List!37295 List!37295) Unit!52520)

(assert (=> bm!249777 (= call!249783 (lemmaIsPrefixSameLengthThenSameList!559 lt!1176597 Nil!37171 lt!1176597))))

(declare-fun bm!249778 () Bool)

(assert (=> bm!249778 (= call!249777 (isPrefix!2845 lt!1176597 lt!1176597))))

(declare-fun b!3463014 () Bool)

(assert (=> b!3463014 (= e!2145427 (tuple2!36907 Nil!37171 lt!1176597))))

(declare-fun b!3463015 () Bool)

(assert (=> b!3463015 (= e!2145431 e!2145425)))

(declare-fun c!593019 () Bool)

(assert (=> b!3463015 (= c!593019 (= (size!28201 Nil!37171) (size!28201 lt!1176597)))))

(declare-fun bm!249779 () Bool)

(assert (=> bm!249779 (= call!249781 (lemmaIsPrefixRefl!1804 lt!1176597 lt!1176597))))

(assert (= (and d!997121 c!593022) b!3463005))

(assert (= (and d!997121 (not c!593022)) b!3463015))

(assert (= (and b!3463015 c!593019) b!3463003))

(assert (= (and b!3463015 (not c!593019)) b!3463007))

(assert (= (and b!3463003 c!593021) b!3463013))

(assert (= (and b!3463003 (not c!593021)) b!3463014))

(assert (= (and b!3463007 c!593023) b!3463006))

(assert (= (and b!3463007 (not c!593023)) b!3463012))

(assert (= (and b!3463007 c!593020) b!3463004))

(assert (= (and b!3463007 (not c!593020)) b!3463009))

(assert (= (and b!3463004 c!593024) b!3463002))

(assert (= (and b!3463004 (not c!593024)) b!3463011))

(assert (= (or b!3463004 b!3463009) bm!249776))

(assert (= (or b!3463004 b!3463009) bm!249772))

(assert (= (or b!3463004 b!3463009) bm!249774))

(assert (= (or b!3463004 b!3463009) bm!249775))

(assert (= (or b!3463003 b!3463006) bm!249779))

(assert (= (or b!3463003 b!3463006) bm!249778))

(assert (= (or b!3463003 b!3463006) bm!249777))

(assert (= (or b!3463003 b!3463007) bm!249773))

(assert (= (and d!997121 res!1397256) b!3463008))

(assert (= (and b!3463008 (not res!1397255)) b!3463010))

(declare-fun m!3867131 () Bool)

(assert (=> bm!249777 m!3867131))

(declare-fun m!3867133 () Bool)

(assert (=> b!3463008 m!3867133))

(assert (=> bm!249772 m!3864253))

(assert (=> bm!249776 m!3864249))

(declare-fun m!3867135 () Bool)

(assert (=> bm!249774 m!3867135))

(declare-fun m!3867137 () Bool)

(assert (=> b!3463004 m!3867137))

(assert (=> bm!249773 m!3866023))

(declare-fun m!3867139 () Bool)

(assert (=> d!997121 m!3867139))

(declare-fun m!3867141 () Bool)

(assert (=> d!997121 m!3867141))

(assert (=> d!997121 m!3867139))

(declare-fun m!3867143 () Bool)

(assert (=> d!997121 m!3867143))

(declare-fun m!3867145 () Bool)

(assert (=> d!997121 m!3867145))

(declare-fun m!3867147 () Bool)

(assert (=> d!997121 m!3867147))

(declare-fun m!3867149 () Bool)

(assert (=> d!997121 m!3867149))

(declare-fun m!3867151 () Bool)

(assert (=> d!997121 m!3867151))

(assert (=> d!997121 m!3865991))

(assert (=> bm!249778 m!3864295))

(assert (=> bm!249779 m!3864297))

(declare-fun m!3867153 () Bool)

(assert (=> b!3463007 m!3867153))

(declare-fun m!3867155 () Bool)

(assert (=> b!3463007 m!3867155))

(declare-fun m!3867157 () Bool)

(assert (=> b!3463007 m!3867157))

(assert (=> b!3463007 m!3864913))

(declare-fun m!3867159 () Bool)

(assert (=> b!3463007 m!3867159))

(assert (=> b!3463007 m!3864249))

(declare-fun m!3867161 () Bool)

(assert (=> b!3463007 m!3867161))

(declare-fun m!3867163 () Bool)

(assert (=> b!3463007 m!3867163))

(assert (=> b!3463007 m!3867163))

(declare-fun m!3867165 () Bool)

(assert (=> b!3463007 m!3867165))

(assert (=> b!3463007 m!3867155))

(assert (=> b!3463007 m!3867149))

(assert (=> b!3463007 m!3867149))

(declare-fun m!3867167 () Bool)

(assert (=> b!3463007 m!3867167))

(declare-fun m!3867169 () Bool)

(assert (=> b!3463007 m!3867169))

(assert (=> b!3463007 m!3864253))

(assert (=> b!3463007 m!3864069))

(assert (=> bm!249775 m!3864069))

(declare-fun m!3867171 () Bool)

(assert (=> bm!249775 m!3867171))

(declare-fun m!3867173 () Bool)

(assert (=> b!3463010 m!3867173))

(assert (=> b!3463010 m!3864913))

(assert (=> b!3461591 d!997121))

(declare-fun d!997123 () Bool)

(declare-fun lt!1177575 () Int)

(assert (=> d!997123 (>= lt!1177575 0)))

(declare-fun e!2145436 () Int)

(assert (=> d!997123 (= lt!1177575 e!2145436)))

(declare-fun c!593029 () Bool)

(assert (=> d!997123 (= c!593029 ((_ is Nil!37171) Nil!37171))))

(assert (=> d!997123 (= (size!28201 Nil!37171) lt!1177575)))

(declare-fun b!3463024 () Bool)

(assert (=> b!3463024 (= e!2145436 0)))

(declare-fun b!3463025 () Bool)

(assert (=> b!3463025 (= e!2145436 (+ 1 (size!28201 (t!273042 Nil!37171))))))

(assert (= (and d!997123 c!593029) b!3463024))

(assert (= (and d!997123 (not c!593029)) b!3463025))

(declare-fun m!3867175 () Bool)

(assert (=> b!3463025 m!3867175))

(assert (=> b!3461591 d!997123))

(assert (=> b!3461591 d!996309))

(declare-fun d!997125 () Bool)

(assert (=> d!997125 (= (list!13537 (_1!21582 lt!1176756)) (list!13541 (c!592552 (_1!21582 lt!1176756))))))

(declare-fun bs!560634 () Bool)

(assert (= bs!560634 d!997125))

(declare-fun m!3867177 () Bool)

(assert (=> bs!560634 m!3867177))

(assert (=> b!3461437 d!997125))

(declare-fun b!3463026 () Bool)

(declare-fun e!2145437 () Bool)

(declare-fun lt!1177593 () tuple2!36904)

(assert (=> b!3463026 (= e!2145437 (= (_2!21586 lt!1177593) (list!13535 lt!1176613)))))

(declare-fun b!3463027 () Bool)

(declare-fun e!2145438 () tuple2!36904)

(declare-fun lt!1177594 () Option!7529)

(declare-fun lt!1177592 () tuple2!36904)

(assert (=> b!3463027 (= e!2145438 (tuple2!36905 (Cons!37173 (_1!21583 (v!36854 lt!1177594)) (_1!21586 lt!1177592)) (_2!21586 lt!1177592)))))

(assert (=> b!3463027 (= lt!1177592 (lexList!1450 thiss!18206 rules!2135 (_2!21583 (v!36854 lt!1177594))))))

(declare-fun b!3463028 () Bool)

(assert (=> b!3463028 (= e!2145438 (tuple2!36905 Nil!37173 (list!13535 lt!1176613)))))

(declare-fun b!3463029 () Bool)

(declare-fun e!2145439 () Bool)

(assert (=> b!3463029 (= e!2145437 e!2145439)))

(declare-fun res!1397257 () Bool)

(assert (=> b!3463029 (= res!1397257 (< (size!28201 (_2!21586 lt!1177593)) (size!28201 (list!13535 lt!1176613))))))

(assert (=> b!3463029 (=> (not res!1397257) (not e!2145439))))

(declare-fun b!3463030 () Bool)

(assert (=> b!3463030 (= e!2145439 (not (isEmpty!21536 (_1!21586 lt!1177593))))))

(declare-fun d!997127 () Bool)

(assert (=> d!997127 e!2145437))

(declare-fun c!593031 () Bool)

(assert (=> d!997127 (= c!593031 (> (size!28206 (_1!21586 lt!1177593)) 0))))

(assert (=> d!997127 (= lt!1177593 e!2145438)))

(declare-fun c!593030 () Bool)

(assert (=> d!997127 (= c!593030 ((_ is Some!7528) lt!1177594))))

(assert (=> d!997127 (= lt!1177594 (maxPrefix!2569 thiss!18206 rules!2135 (list!13535 lt!1176613)))))

(assert (=> d!997127 (= (lexList!1450 thiss!18206 rules!2135 (list!13535 lt!1176613)) lt!1177593)))

(assert (= (and d!997127 c!593030) b!3463027))

(assert (= (and d!997127 (not c!593030)) b!3463028))

(assert (= (and d!997127 c!593031) b!3463029))

(assert (= (and d!997127 (not c!593031)) b!3463026))

(assert (= (and b!3463029 res!1397257) b!3463030))

(declare-fun m!3867179 () Bool)

(assert (=> b!3463027 m!3867179))

(declare-fun m!3867181 () Bool)

(assert (=> b!3463029 m!3867181))

(assert (=> b!3463029 m!3864657))

(assert (=> b!3463029 m!3866957))

(declare-fun m!3867183 () Bool)

(assert (=> b!3463030 m!3867183))

(declare-fun m!3867185 () Bool)

(assert (=> d!997127 m!3867185))

(assert (=> d!997127 m!3864657))

(declare-fun m!3867187 () Bool)

(assert (=> d!997127 m!3867187))

(assert (=> b!3461437 d!997127))

(declare-fun d!997129 () Bool)

(assert (=> d!997129 (= (list!13535 lt!1176613) (list!13536 (c!592551 lt!1176613)))))

(declare-fun bs!560635 () Bool)

(assert (= bs!560635 d!997129))

(declare-fun m!3867189 () Bool)

(assert (=> bs!560635 m!3867189))

(assert (=> b!3461437 d!997129))

(declare-fun b!3463045 () Bool)

(declare-fun e!2145448 () List!37295)

(assert (=> b!3463045 (= e!2145448 Nil!37171)))

(declare-fun b!3463047 () Bool)

(declare-fun e!2145449 () List!37295)

(declare-fun list!13542 (IArray!22515) List!37295)

(assert (=> b!3463047 (= e!2145449 (list!13542 (xs!14429 (c!592551 (charsOf!3454 (h!42593 (t!273044 tokens!494)))))))))

(declare-fun b!3463048 () Bool)

(assert (=> b!3463048 (= e!2145449 (++!9165 (list!13536 (left!29005 (c!592551 (charsOf!3454 (h!42593 (t!273044 tokens!494)))))) (list!13536 (right!29335 (c!592551 (charsOf!3454 (h!42593 (t!273044 tokens!494))))))))))

(declare-fun d!997131 () Bool)

(declare-fun c!593038 () Bool)

(assert (=> d!997131 (= c!593038 ((_ is Empty!11255) (c!592551 (charsOf!3454 (h!42593 (t!273044 tokens!494))))))))

(assert (=> d!997131 (= (list!13536 (c!592551 (charsOf!3454 (h!42593 (t!273044 tokens!494))))) e!2145448)))

(declare-fun b!3463046 () Bool)

(assert (=> b!3463046 (= e!2145448 e!2145449)))

(declare-fun c!593039 () Bool)

(assert (=> b!3463046 (= c!593039 ((_ is Leaf!17586) (c!592551 (charsOf!3454 (h!42593 (t!273044 tokens!494))))))))

(assert (= (and d!997131 c!593038) b!3463045))

(assert (= (and d!997131 (not c!593038)) b!3463046))

(assert (= (and b!3463046 c!593039) b!3463047))

(assert (= (and b!3463046 (not c!593039)) b!3463048))

(declare-fun m!3867191 () Bool)

(assert (=> b!3463047 m!3867191))

(declare-fun m!3867193 () Bool)

(assert (=> b!3463048 m!3867193))

(declare-fun m!3867195 () Bool)

(assert (=> b!3463048 m!3867195))

(assert (=> b!3463048 m!3867193))

(assert (=> b!3463048 m!3867195))

(declare-fun m!3867197 () Bool)

(assert (=> b!3463048 m!3867197))

(assert (=> d!996191 d!997131))

(assert (=> b!3461306 d!996263))

(declare-fun d!997133 () Bool)

(declare-fun lt!1177613 () Bool)

(assert (=> d!997133 (= lt!1177613 (isEmpty!21528 (list!13535 (_2!21582 lt!1176682))))))

(assert (=> d!997133 (= lt!1177613 (isEmpty!21529 (c!592551 (_2!21582 lt!1176682))))))

(assert (=> d!997133 (= (isEmpty!21525 (_2!21582 lt!1176682)) lt!1177613)))

(declare-fun bs!560636 () Bool)

(assert (= bs!560636 d!997133))

(declare-fun m!3867199 () Bool)

(assert (=> bs!560636 m!3867199))

(assert (=> bs!560636 m!3867199))

(declare-fun m!3867201 () Bool)

(assert (=> bs!560636 m!3867201))

(declare-fun m!3867203 () Bool)

(assert (=> bs!560636 m!3867203))

(assert (=> b!3461310 d!997133))

(declare-fun lt!1177614 () List!37295)

(declare-fun e!2145451 () Bool)

(declare-fun b!3463052 () Bool)

(assert (=> b!3463052 (= e!2145451 (or (not (= lt!1176603 Nil!37171)) (= lt!1177614 (t!273042 (++!9165 lt!1176597 lt!1176614)))))))

(declare-fun b!3463051 () Bool)

(declare-fun res!1397261 () Bool)

(assert (=> b!3463051 (=> (not res!1397261) (not e!2145451))))

(assert (=> b!3463051 (= res!1397261 (= (size!28201 lt!1177614) (+ (size!28201 (t!273042 (++!9165 lt!1176597 lt!1176614))) (size!28201 lt!1176603))))))

(declare-fun b!3463049 () Bool)

(declare-fun e!2145450 () List!37295)

(assert (=> b!3463049 (= e!2145450 lt!1176603)))

(declare-fun b!3463050 () Bool)

(assert (=> b!3463050 (= e!2145450 (Cons!37171 (h!42591 (t!273042 (++!9165 lt!1176597 lt!1176614))) (++!9165 (t!273042 (t!273042 (++!9165 lt!1176597 lt!1176614))) lt!1176603)))))

(declare-fun d!997135 () Bool)

(assert (=> d!997135 e!2145451))

(declare-fun res!1397260 () Bool)

(assert (=> d!997135 (=> (not res!1397260) (not e!2145451))))

(assert (=> d!997135 (= res!1397260 (= (content!5190 lt!1177614) ((_ map or) (content!5190 (t!273042 (++!9165 lt!1176597 lt!1176614))) (content!5190 lt!1176603))))))

(assert (=> d!997135 (= lt!1177614 e!2145450)))

(declare-fun c!593040 () Bool)

(assert (=> d!997135 (= c!593040 ((_ is Nil!37171) (t!273042 (++!9165 lt!1176597 lt!1176614))))))

(assert (=> d!997135 (= (++!9165 (t!273042 (++!9165 lt!1176597 lt!1176614)) lt!1176603) lt!1177614)))

(assert (= (and d!997135 c!593040) b!3463049))

(assert (= (and d!997135 (not c!593040)) b!3463050))

(assert (= (and d!997135 res!1397260) b!3463051))

(assert (= (and b!3463051 res!1397261) b!3463052))

(declare-fun m!3867205 () Bool)

(assert (=> b!3463051 m!3867205))

(assert (=> b!3463051 m!3866995))

(assert (=> b!3463051 m!3864441))

(declare-fun m!3867207 () Bool)

(assert (=> b!3463050 m!3867207))

(declare-fun m!3867209 () Bool)

(assert (=> d!997135 m!3867209))

(assert (=> d!997135 m!3867021))

(assert (=> d!997135 m!3864449))

(assert (=> b!3461360 d!997135))

(declare-fun d!997137 () Bool)

(assert (=> d!997137 (= (inv!50347 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))) (value!175500 separatorToken!241))) (isBalanced!3418 (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))) (value!175500 separatorToken!241)))))))

(declare-fun bs!560637 () Bool)

(assert (= bs!560637 d!997137))

(declare-fun m!3867211 () Bool)

(assert (=> bs!560637 m!3867211))

(assert (=> tb!188733 d!997137))

(assert (=> b!3461467 d!996599))

(assert (=> b!3461467 d!996253))

(assert (=> d!996165 d!997017))

(declare-fun b!3463053 () Bool)

(declare-fun e!2145456 () Bool)

(declare-fun call!249787 () Bool)

(assert (=> b!3463053 (= e!2145456 call!249787)))

(declare-fun b!3463054 () Bool)

(declare-fun e!2145455 () Bool)

(declare-fun e!2145457 () Bool)

(assert (=> b!3463054 (= e!2145455 e!2145457)))

(declare-fun res!1397264 () Bool)

(assert (=> b!3463054 (=> (not res!1397264) (not e!2145457))))

(declare-fun call!249785 () Bool)

(assert (=> b!3463054 (= res!1397264 call!249785)))

(declare-fun b!3463055 () Bool)

(declare-fun res!1397262 () Bool)

(assert (=> b!3463055 (=> (not res!1397262) (not e!2145456))))

(assert (=> b!3463055 (= res!1397262 call!249785)))

(declare-fun e!2145453 () Bool)

(assert (=> b!3463055 (= e!2145453 e!2145456)))

(declare-fun b!3463056 () Bool)

(assert (=> b!3463056 (= e!2145457 call!249787)))

(declare-fun b!3463057 () Bool)

(declare-fun e!2145458 () Bool)

(declare-fun call!249786 () Bool)

(assert (=> b!3463057 (= e!2145458 call!249786)))

(declare-fun bm!249780 () Bool)

(assert (=> bm!249780 (= call!249785 call!249786)))

(declare-fun b!3463058 () Bool)

(declare-fun e!2145452 () Bool)

(declare-fun e!2145454 () Bool)

(assert (=> b!3463058 (= e!2145452 e!2145454)))

(declare-fun c!593042 () Bool)

(assert (=> b!3463058 (= c!593042 ((_ is Star!10199) (regex!5440 lt!1176598)))))

(declare-fun b!3463059 () Bool)

(assert (=> b!3463059 (= e!2145454 e!2145458)))

(declare-fun res!1397266 () Bool)

(assert (=> b!3463059 (= res!1397266 (not (nullable!3489 (reg!10528 (regex!5440 lt!1176598)))))))

(assert (=> b!3463059 (=> (not res!1397266) (not e!2145458))))

(declare-fun c!593041 () Bool)

(declare-fun bm!249782 () Bool)

(assert (=> bm!249782 (= call!249786 (validRegex!4645 (ite c!593042 (reg!10528 (regex!5440 lt!1176598)) (ite c!593041 (regOne!20911 (regex!5440 lt!1176598)) (regOne!20910 (regex!5440 lt!1176598))))))))

(declare-fun b!3463060 () Bool)

(declare-fun res!1397265 () Bool)

(assert (=> b!3463060 (=> res!1397265 e!2145455)))

(assert (=> b!3463060 (= res!1397265 (not ((_ is Concat!15869) (regex!5440 lt!1176598))))))

(assert (=> b!3463060 (= e!2145453 e!2145455)))

(declare-fun b!3463061 () Bool)

(assert (=> b!3463061 (= e!2145454 e!2145453)))

(assert (=> b!3463061 (= c!593041 ((_ is Union!10199) (regex!5440 lt!1176598)))))

(declare-fun bm!249781 () Bool)

(assert (=> bm!249781 (= call!249787 (validRegex!4645 (ite c!593041 (regTwo!20911 (regex!5440 lt!1176598)) (regTwo!20910 (regex!5440 lt!1176598)))))))

(declare-fun d!997139 () Bool)

(declare-fun res!1397263 () Bool)

(assert (=> d!997139 (=> res!1397263 e!2145452)))

(assert (=> d!997139 (= res!1397263 ((_ is ElementMatch!10199) (regex!5440 lt!1176598)))))

(assert (=> d!997139 (= (validRegex!4645 (regex!5440 lt!1176598)) e!2145452)))

(assert (= (and d!997139 (not res!1397263)) b!3463058))

(assert (= (and b!3463058 c!593042) b!3463059))

(assert (= (and b!3463058 (not c!593042)) b!3463061))

(assert (= (and b!3463059 res!1397266) b!3463057))

(assert (= (and b!3463061 c!593041) b!3463055))

(assert (= (and b!3463061 (not c!593041)) b!3463060))

(assert (= (and b!3463055 res!1397262) b!3463053))

(assert (= (and b!3463060 (not res!1397265)) b!3463054))

(assert (= (and b!3463054 res!1397264) b!3463056))

(assert (= (or b!3463053 b!3463056) bm!249781))

(assert (= (or b!3463055 b!3463054) bm!249780))

(assert (= (or b!3463057 bm!249780) bm!249782))

(declare-fun m!3867213 () Bool)

(assert (=> b!3463059 m!3867213))

(declare-fun m!3867215 () Bool)

(assert (=> bm!249782 m!3867215))

(declare-fun m!3867217 () Bool)

(assert (=> bm!249781 m!3867217))

(assert (=> d!996165 d!997139))

(declare-fun d!997141 () Bool)

(declare-fun lt!1177615 () BalanceConc!22124)

(assert (=> d!997141 (= (list!13535 lt!1177615) (originalCharacters!6154 (h!42593 (t!273044 (t!273044 tokens!494)))))))

(assert (=> d!997141 (= lt!1177615 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 (t!273044 tokens!494)))))) (value!175500 (h!42593 (t!273044 (t!273044 tokens!494))))))))

(assert (=> d!997141 (= (charsOf!3454 (h!42593 (t!273044 (t!273044 tokens!494)))) lt!1177615)))

(declare-fun b_lambda!99785 () Bool)

(assert (=> (not b_lambda!99785) (not d!997141)))

(declare-fun tb!188857 () Bool)

(declare-fun t!273204 () Bool)

(assert (=> (and b!3461071 (= (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 (t!273044 tokens!494))))))) t!273204) tb!188857))

(declare-fun b!3463062 () Bool)

(declare-fun e!2145459 () Bool)

(declare-fun tp!1078342 () Bool)

(assert (=> b!3463062 (= e!2145459 (and (inv!50346 (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 (t!273044 tokens!494)))))) (value!175500 (h!42593 (t!273044 (t!273044 tokens!494))))))) tp!1078342))))

(declare-fun result!232870 () Bool)

(assert (=> tb!188857 (= result!232870 (and (inv!50347 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 (t!273044 tokens!494)))))) (value!175500 (h!42593 (t!273044 (t!273044 tokens!494)))))) e!2145459))))

(assert (= tb!188857 b!3463062))

(declare-fun m!3867219 () Bool)

(assert (=> b!3463062 m!3867219))

(declare-fun m!3867221 () Bool)

(assert (=> tb!188857 m!3867221))

(assert (=> d!997141 t!273204))

(declare-fun b_and!243651 () Bool)

(assert (= b_and!243599 (and (=> t!273204 result!232870) b_and!243651)))

(declare-fun t!273206 () Bool)

(declare-fun tb!188859 () Bool)

(assert (=> (and b!3461904 (= (toChars!7527 (transformation!5440 (h!42592 (t!273043 rules!2135)))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 (t!273044 tokens!494))))))) t!273206) tb!188859))

(declare-fun result!232872 () Bool)

(assert (= result!232872 result!232870))

(assert (=> d!997141 t!273206))

(declare-fun b_and!243653 () Bool)

(assert (= b_and!243591 (and (=> t!273206 result!232872) b_and!243653)))

(declare-fun t!273208 () Bool)

(declare-fun tb!188861 () Bool)

(assert (=> (and b!3461104 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 (t!273044 tokens!494))))))) t!273208) tb!188861))

(declare-fun result!232874 () Bool)

(assert (= result!232874 result!232870))

(assert (=> d!997141 t!273208))

(declare-fun b_and!243655 () Bool)

(assert (= b_and!243597 (and (=> t!273208 result!232874) b_and!243655)))

(declare-fun t!273210 () Bool)

(declare-fun tb!188863 () Bool)

(assert (=> (and b!3461881 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 (t!273044 tokens!494))))))) t!273210) tb!188863))

(declare-fun result!232876 () Bool)

(assert (= result!232876 result!232870))

(assert (=> d!997141 t!273210))

(declare-fun b_and!243657 () Bool)

(assert (= b_and!243595 (and (=> t!273210 result!232876) b_and!243657)))

(declare-fun t!273212 () Bool)

(declare-fun tb!188865 () Bool)

(assert (=> (and b!3461090 (= (toChars!7527 (transformation!5440 (h!42592 rules!2135))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 (t!273044 tokens!494))))))) t!273212) tb!188865))

(declare-fun result!232878 () Bool)

(assert (= result!232878 result!232870))

(assert (=> d!997141 t!273212))

(declare-fun b_and!243659 () Bool)

(assert (= b_and!243593 (and (=> t!273212 result!232878) b_and!243659)))

(declare-fun m!3867223 () Bool)

(assert (=> d!997141 m!3867223))

(declare-fun m!3867225 () Bool)

(assert (=> d!997141 m!3867225))

(assert (=> b!3461354 d!997141))

(declare-fun d!997143 () Bool)

(assert (=> d!997143 (= (list!13535 (charsOf!3454 (h!42593 (t!273044 (t!273044 tokens!494))))) (list!13536 (c!592551 (charsOf!3454 (h!42593 (t!273044 (t!273044 tokens!494)))))))))

(declare-fun bs!560638 () Bool)

(assert (= bs!560638 d!997143))

(declare-fun m!3867227 () Bool)

(assert (=> bs!560638 m!3867227))

(assert (=> b!3461354 d!997143))

(declare-fun d!997145 () Bool)

(declare-fun c!593043 () Bool)

(assert (=> d!997145 (= c!593043 ((_ is Cons!37173) (t!273044 (t!273044 (t!273044 tokens!494)))))))

(declare-fun e!2145460 () List!37295)

(assert (=> d!997145 (= (printWithSeparatorTokenList!316 thiss!18206 (t!273044 (t!273044 (t!273044 tokens!494))) separatorToken!241) e!2145460)))

(declare-fun b!3463063 () Bool)

(assert (=> b!3463063 (= e!2145460 (++!9165 (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 (t!273044 (t!273044 tokens!494)))))) (list!13535 (charsOf!3454 separatorToken!241))) (printWithSeparatorTokenList!316 thiss!18206 (t!273044 (t!273044 (t!273044 (t!273044 tokens!494)))) separatorToken!241)))))

(declare-fun b!3463064 () Bool)

(assert (=> b!3463064 (= e!2145460 Nil!37171)))

(assert (= (and d!997145 c!593043) b!3463063))

(assert (= (and d!997145 (not c!593043)) b!3463064))

(declare-fun m!3867229 () Bool)

(assert (=> b!3463063 m!3867229))

(assert (=> b!3463063 m!3867229))

(declare-fun m!3867231 () Bool)

(assert (=> b!3463063 m!3867231))

(assert (=> b!3463063 m!3867231))

(assert (=> b!3463063 m!3864149))

(declare-fun m!3867233 () Bool)

(assert (=> b!3463063 m!3867233))

(assert (=> b!3463063 m!3864141))

(assert (=> b!3463063 m!3864141))

(assert (=> b!3463063 m!3864149))

(assert (=> b!3463063 m!3867233))

(declare-fun m!3867235 () Bool)

(assert (=> b!3463063 m!3867235))

(declare-fun m!3867237 () Bool)

(assert (=> b!3463063 m!3867237))

(assert (=> b!3463063 m!3867235))

(assert (=> b!3461354 d!997145))

(declare-fun lt!1177616 () List!37295)

(declare-fun b!3463068 () Bool)

(declare-fun e!2145462 () Bool)

(assert (=> b!3463068 (= e!2145462 (or (not (= (list!13535 (charsOf!3454 separatorToken!241)) Nil!37171)) (= lt!1177616 (list!13535 (charsOf!3454 (h!42593 (t!273044 (t!273044 tokens!494))))))))))

(declare-fun b!3463067 () Bool)

(declare-fun res!1397268 () Bool)

(assert (=> b!3463067 (=> (not res!1397268) (not e!2145462))))

(assert (=> b!3463067 (= res!1397268 (= (size!28201 lt!1177616) (+ (size!28201 (list!13535 (charsOf!3454 (h!42593 (t!273044 (t!273044 tokens!494)))))) (size!28201 (list!13535 (charsOf!3454 separatorToken!241))))))))

(declare-fun b!3463065 () Bool)

(declare-fun e!2145461 () List!37295)

(assert (=> b!3463065 (= e!2145461 (list!13535 (charsOf!3454 separatorToken!241)))))

(declare-fun b!3463066 () Bool)

(assert (=> b!3463066 (= e!2145461 (Cons!37171 (h!42591 (list!13535 (charsOf!3454 (h!42593 (t!273044 (t!273044 tokens!494)))))) (++!9165 (t!273042 (list!13535 (charsOf!3454 (h!42593 (t!273044 (t!273044 tokens!494)))))) (list!13535 (charsOf!3454 separatorToken!241)))))))

(declare-fun d!997147 () Bool)

(assert (=> d!997147 e!2145462))

(declare-fun res!1397267 () Bool)

(assert (=> d!997147 (=> (not res!1397267) (not e!2145462))))

(assert (=> d!997147 (= res!1397267 (= (content!5190 lt!1177616) ((_ map or) (content!5190 (list!13535 (charsOf!3454 (h!42593 (t!273044 (t!273044 tokens!494)))))) (content!5190 (list!13535 (charsOf!3454 separatorToken!241))))))))

(assert (=> d!997147 (= lt!1177616 e!2145461)))

(declare-fun c!593044 () Bool)

(assert (=> d!997147 (= c!593044 ((_ is Nil!37171) (list!13535 (charsOf!3454 (h!42593 (t!273044 (t!273044 tokens!494)))))))))

(assert (=> d!997147 (= (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 (t!273044 tokens!494))))) (list!13535 (charsOf!3454 separatorToken!241))) lt!1177616)))

(assert (= (and d!997147 c!593044) b!3463065))

(assert (= (and d!997147 (not c!593044)) b!3463066))

(assert (= (and d!997147 res!1397267) b!3463067))

(assert (= (and b!3463067 res!1397268) b!3463068))

(declare-fun m!3867239 () Bool)

(assert (=> b!3463067 m!3867239))

(assert (=> b!3463067 m!3864481))

(declare-fun m!3867241 () Bool)

(assert (=> b!3463067 m!3867241))

(assert (=> b!3463067 m!3864149))

(assert (=> b!3463067 m!3865809))

(assert (=> b!3463066 m!3864149))

(declare-fun m!3867243 () Bool)

(assert (=> b!3463066 m!3867243))

(declare-fun m!3867245 () Bool)

(assert (=> d!997147 m!3867245))

(assert (=> d!997147 m!3864481))

(declare-fun m!3867247 () Bool)

(assert (=> d!997147 m!3867247))

(assert (=> d!997147 m!3864149))

(assert (=> d!997147 m!3865815))

(assert (=> b!3461354 d!997147))

(assert (=> b!3461354 d!996189))

(assert (=> b!3461354 d!996197))

(declare-fun e!2145464 () Bool)

(declare-fun b!3463072 () Bool)

(declare-fun lt!1177617 () List!37295)

(assert (=> b!3463072 (= e!2145464 (or (not (= (printWithSeparatorTokenList!316 thiss!18206 (t!273044 (t!273044 (t!273044 tokens!494))) separatorToken!241) Nil!37171)) (= lt!1177617 (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 (t!273044 tokens!494))))) (list!13535 (charsOf!3454 separatorToken!241))))))))

(declare-fun b!3463071 () Bool)

(declare-fun res!1397270 () Bool)

(assert (=> b!3463071 (=> (not res!1397270) (not e!2145464))))

(assert (=> b!3463071 (= res!1397270 (= (size!28201 lt!1177617) (+ (size!28201 (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 (t!273044 tokens!494))))) (list!13535 (charsOf!3454 separatorToken!241)))) (size!28201 (printWithSeparatorTokenList!316 thiss!18206 (t!273044 (t!273044 (t!273044 tokens!494))) separatorToken!241)))))))

(declare-fun e!2145463 () List!37295)

(declare-fun b!3463069 () Bool)

(assert (=> b!3463069 (= e!2145463 (printWithSeparatorTokenList!316 thiss!18206 (t!273044 (t!273044 (t!273044 tokens!494))) separatorToken!241))))

(declare-fun b!3463070 () Bool)

(assert (=> b!3463070 (= e!2145463 (Cons!37171 (h!42591 (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 (t!273044 tokens!494))))) (list!13535 (charsOf!3454 separatorToken!241)))) (++!9165 (t!273042 (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 (t!273044 tokens!494))))) (list!13535 (charsOf!3454 separatorToken!241)))) (printWithSeparatorTokenList!316 thiss!18206 (t!273044 (t!273044 (t!273044 tokens!494))) separatorToken!241))))))

(declare-fun d!997149 () Bool)

(assert (=> d!997149 e!2145464))

(declare-fun res!1397269 () Bool)

(assert (=> d!997149 (=> (not res!1397269) (not e!2145464))))

(assert (=> d!997149 (= res!1397269 (= (content!5190 lt!1177617) ((_ map or) (content!5190 (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 (t!273044 tokens!494))))) (list!13535 (charsOf!3454 separatorToken!241)))) (content!5190 (printWithSeparatorTokenList!316 thiss!18206 (t!273044 (t!273044 (t!273044 tokens!494))) separatorToken!241)))))))

(assert (=> d!997149 (= lt!1177617 e!2145463)))

(declare-fun c!593045 () Bool)

(assert (=> d!997149 (= c!593045 ((_ is Nil!37171) (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 (t!273044 tokens!494))))) (list!13535 (charsOf!3454 separatorToken!241)))))))

(assert (=> d!997149 (= (++!9165 (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 (t!273044 tokens!494))))) (list!13535 (charsOf!3454 separatorToken!241))) (printWithSeparatorTokenList!316 thiss!18206 (t!273044 (t!273044 (t!273044 tokens!494))) separatorToken!241)) lt!1177617)))

(assert (= (and d!997149 c!593045) b!3463069))

(assert (= (and d!997149 (not c!593045)) b!3463070))

(assert (= (and d!997149 res!1397269) b!3463071))

(assert (= (and b!3463071 res!1397270) b!3463072))

(declare-fun m!3867249 () Bool)

(assert (=> b!3463071 m!3867249))

(assert (=> b!3463071 m!3864483))

(declare-fun m!3867251 () Bool)

(assert (=> b!3463071 m!3867251))

(assert (=> b!3463071 m!3864485))

(declare-fun m!3867253 () Bool)

(assert (=> b!3463071 m!3867253))

(assert (=> b!3463070 m!3864485))

(declare-fun m!3867255 () Bool)

(assert (=> b!3463070 m!3867255))

(declare-fun m!3867257 () Bool)

(assert (=> d!997149 m!3867257))

(assert (=> d!997149 m!3864483))

(declare-fun m!3867259 () Bool)

(assert (=> d!997149 m!3867259))

(assert (=> d!997149 m!3864485))

(declare-fun m!3867261 () Bool)

(assert (=> d!997149 m!3867261))

(assert (=> b!3461354 d!997149))

(declare-fun lt!1177618 () List!37295)

(declare-fun e!2145466 () Bool)

(declare-fun b!3463076 () Bool)

(assert (=> b!3463076 (= e!2145466 (or (not (= (ite c!592655 call!249634 call!249635) Nil!37171)) (= lt!1177618 (ite c!592655 call!249635 call!249634))))))

(declare-fun b!3463075 () Bool)

(declare-fun res!1397272 () Bool)

(assert (=> b!3463075 (=> (not res!1397272) (not e!2145466))))

(assert (=> b!3463075 (= res!1397272 (= (size!28201 lt!1177618) (+ (size!28201 (ite c!592655 call!249635 call!249634)) (size!28201 (ite c!592655 call!249634 call!249635)))))))

(declare-fun b!3463073 () Bool)

(declare-fun e!2145465 () List!37295)

(assert (=> b!3463073 (= e!2145465 (ite c!592655 call!249634 call!249635))))

(declare-fun b!3463074 () Bool)

(assert (=> b!3463074 (= e!2145465 (Cons!37171 (h!42591 (ite c!592655 call!249635 call!249634)) (++!9165 (t!273042 (ite c!592655 call!249635 call!249634)) (ite c!592655 call!249634 call!249635))))))

(declare-fun d!997151 () Bool)

(assert (=> d!997151 e!2145466))

(declare-fun res!1397271 () Bool)

(assert (=> d!997151 (=> (not res!1397271) (not e!2145466))))

(assert (=> d!997151 (= res!1397271 (= (content!5190 lt!1177618) ((_ map or) (content!5190 (ite c!592655 call!249635 call!249634)) (content!5190 (ite c!592655 call!249634 call!249635)))))))

(assert (=> d!997151 (= lt!1177618 e!2145465)))

(declare-fun c!593046 () Bool)

(assert (=> d!997151 (= c!593046 ((_ is Nil!37171) (ite c!592655 call!249635 call!249634)))))

(assert (=> d!997151 (= (++!9165 (ite c!592655 call!249635 call!249634) (ite c!592655 call!249634 call!249635)) lt!1177618)))

(assert (= (and d!997151 c!593046) b!3463073))

(assert (= (and d!997151 (not c!593046)) b!3463074))

(assert (= (and d!997151 res!1397271) b!3463075))

(assert (= (and b!3463075 res!1397272) b!3463076))

(declare-fun m!3867263 () Bool)

(assert (=> b!3463075 m!3867263))

(declare-fun m!3867265 () Bool)

(assert (=> b!3463075 m!3867265))

(declare-fun m!3867267 () Bool)

(assert (=> b!3463075 m!3867267))

(declare-fun m!3867269 () Bool)

(assert (=> b!3463074 m!3867269))

(declare-fun m!3867271 () Bool)

(assert (=> d!997151 m!3867271))

(declare-fun m!3867273 () Bool)

(assert (=> d!997151 m!3867273))

(declare-fun m!3867275 () Bool)

(assert (=> d!997151 m!3867275))

(assert (=> bm!249629 d!997151))

(declare-fun d!997153 () Bool)

(declare-fun lt!1177619 () Int)

(assert (=> d!997153 (= lt!1177619 (size!28206 (list!13537 (_1!21582 lt!1176756))))))

(assert (=> d!997153 (= lt!1177619 (size!28207 (c!592552 (_1!21582 lt!1176756))))))

(assert (=> d!997153 (= (size!28200 (_1!21582 lt!1176756)) lt!1177619)))

(declare-fun bs!560639 () Bool)

(assert (= bs!560639 d!997153))

(assert (=> bs!560639 m!3864661))

(assert (=> bs!560639 m!3864661))

(declare-fun m!3867277 () Bool)

(assert (=> bs!560639 m!3867277))

(declare-fun m!3867279 () Bool)

(assert (=> bs!560639 m!3867279))

(assert (=> d!996225 d!997153))

(declare-fun b!3463077 () Bool)

(declare-fun e!2145470 () tuple2!36896)

(declare-fun lt!1177650 () BalanceConc!22124)

(assert (=> b!3463077 (= e!2145470 (tuple2!36897 (BalanceConc!22127 Empty!11256) lt!1177650))))

(declare-fun lt!1177647 () BalanceConc!22124)

(declare-fun b!3463078 () Bool)

(declare-fun lt!1177623 () Option!7531)

(declare-fun e!2145469 () tuple2!36896)

(assert (=> b!3463078 (= e!2145469 (lexTailRecV2!1058 thiss!18206 rules!2135 lt!1176613 lt!1177647 (_2!21588 (v!36866 lt!1177623)) (append!966 (BalanceConc!22127 Empty!11256) (_1!21588 (v!36866 lt!1177623)))))))

(declare-fun lt!1177629 () tuple2!36896)

(assert (=> b!3463078 (= lt!1177629 (lexRec!750 thiss!18206 rules!2135 (_2!21588 (v!36866 lt!1177623))))))

(declare-fun lt!1177653 () List!37295)

(assert (=> b!3463078 (= lt!1177653 (list!13535 (BalanceConc!22125 Empty!11255)))))

(declare-fun lt!1177638 () List!37295)

(assert (=> b!3463078 (= lt!1177638 (list!13535 (charsOf!3454 (_1!21588 (v!36866 lt!1177623)))))))

(declare-fun lt!1177648 () List!37295)

(assert (=> b!3463078 (= lt!1177648 (list!13535 (_2!21588 (v!36866 lt!1177623))))))

(declare-fun lt!1177631 () Unit!52520)

(assert (=> b!3463078 (= lt!1177631 (lemmaConcatAssociativity!1960 lt!1177653 lt!1177638 lt!1177648))))

(assert (=> b!3463078 (= (++!9165 (++!9165 lt!1177653 lt!1177638) lt!1177648) (++!9165 lt!1177653 (++!9165 lt!1177638 lt!1177648)))))

(declare-fun lt!1177646 () Unit!52520)

(assert (=> b!3463078 (= lt!1177646 lt!1177631)))

(declare-fun lt!1177624 () Option!7531)

(assert (=> b!3463078 (= lt!1177624 (maxPrefixZipperSequence!1143 thiss!18206 rules!2135 lt!1176613))))

(declare-fun c!593049 () Bool)

(assert (=> b!3463078 (= c!593049 ((_ is Some!7530) lt!1177624))))

(declare-fun e!2145468 () tuple2!36896)

(assert (=> b!3463078 (= (lexRec!750 thiss!18206 rules!2135 lt!1176613) e!2145468)))

(declare-fun lt!1177633 () Unit!52520)

(declare-fun Unit!52534 () Unit!52520)

(assert (=> b!3463078 (= lt!1177633 Unit!52534)))

(declare-fun lt!1177625 () List!37297)

(assert (=> b!3463078 (= lt!1177625 (list!13537 (BalanceConc!22127 Empty!11256)))))

(declare-fun lt!1177632 () List!37297)

(assert (=> b!3463078 (= lt!1177632 (Cons!37173 (_1!21588 (v!36866 lt!1177623)) Nil!37173))))

(declare-fun lt!1177620 () List!37297)

(assert (=> b!3463078 (= lt!1177620 (list!13537 (_1!21582 lt!1177629)))))

(declare-fun lt!1177628 () Unit!52520)

(assert (=> b!3463078 (= lt!1177628 (lemmaConcatAssociativity!1961 lt!1177625 lt!1177632 lt!1177620))))

(assert (=> b!3463078 (= (++!9168 (++!9168 lt!1177625 lt!1177632) lt!1177620) (++!9168 lt!1177625 (++!9168 lt!1177632 lt!1177620)))))

(declare-fun lt!1177652 () Unit!52520)

(assert (=> b!3463078 (= lt!1177652 lt!1177628)))

(declare-fun lt!1177636 () List!37295)

(assert (=> b!3463078 (= lt!1177636 (++!9165 (list!13535 (BalanceConc!22125 Empty!11255)) (list!13535 (charsOf!3454 (_1!21588 (v!36866 lt!1177623))))))))

(declare-fun lt!1177649 () List!37295)

(assert (=> b!3463078 (= lt!1177649 (list!13535 (_2!21588 (v!36866 lt!1177623))))))

(declare-fun lt!1177626 () List!37297)

(assert (=> b!3463078 (= lt!1177626 (list!13537 (append!966 (BalanceConc!22127 Empty!11256) (_1!21588 (v!36866 lt!1177623)))))))

(declare-fun lt!1177641 () Unit!52520)

(assert (=> b!3463078 (= lt!1177641 (lemmaLexThenLexPrefix!515 thiss!18206 rules!2135 lt!1177636 lt!1177649 lt!1177626 (list!13537 (_1!21582 lt!1177629)) (list!13535 (_2!21582 lt!1177629))))))

(assert (=> b!3463078 (= (lexList!1450 thiss!18206 rules!2135 lt!1177636) (tuple2!36905 lt!1177626 Nil!37171))))

(declare-fun lt!1177639 () Unit!52520)

(assert (=> b!3463078 (= lt!1177639 lt!1177641)))

(assert (=> b!3463078 (= lt!1177650 (++!9166 (BalanceConc!22125 Empty!11255) (charsOf!3454 (_1!21588 (v!36866 lt!1177623)))))))

(declare-fun lt!1177621 () Option!7531)

(assert (=> b!3463078 (= lt!1177621 (maxPrefixZipperSequence!1143 thiss!18206 rules!2135 lt!1177650))))

(declare-fun c!593047 () Bool)

(assert (=> b!3463078 (= c!593047 ((_ is Some!7530) lt!1177621))))

(assert (=> b!3463078 (= (lexRec!750 thiss!18206 rules!2135 (++!9166 (BalanceConc!22125 Empty!11255) (charsOf!3454 (_1!21588 (v!36866 lt!1177623))))) e!2145470)))

(declare-fun lt!1177637 () Unit!52520)

(declare-fun Unit!52535 () Unit!52520)

(assert (=> b!3463078 (= lt!1177637 Unit!52535)))

(assert (=> b!3463078 (= lt!1177647 (++!9166 (BalanceConc!22125 Empty!11255) (charsOf!3454 (_1!21588 (v!36866 lt!1177623)))))))

(declare-fun lt!1177643 () List!37295)

(assert (=> b!3463078 (= lt!1177643 (list!13535 lt!1177647))))

(declare-fun lt!1177651 () List!37295)

(assert (=> b!3463078 (= lt!1177651 (list!13535 (_2!21588 (v!36866 lt!1177623))))))

(declare-fun lt!1177627 () Unit!52520)

(assert (=> b!3463078 (= lt!1177627 (lemmaConcatTwoListThenFSndIsSuffix!597 lt!1177643 lt!1177651))))

(assert (=> b!3463078 (isSuffix!912 lt!1177651 (++!9165 lt!1177643 lt!1177651))))

(declare-fun lt!1177645 () Unit!52520)

(assert (=> b!3463078 (= lt!1177645 lt!1177627)))

(declare-fun lt!1177644 () tuple2!36896)

(declare-fun b!3463079 () Bool)

(declare-fun e!2145467 () Bool)

(assert (=> b!3463079 (= e!2145467 (= (list!13535 (_2!21582 lt!1177644)) (list!13535 (_2!21582 (lexRec!750 thiss!18206 rules!2135 lt!1176613)))))))

(declare-fun d!997155 () Bool)

(assert (=> d!997155 e!2145467))

(declare-fun res!1397273 () Bool)

(assert (=> d!997155 (=> (not res!1397273) (not e!2145467))))

(assert (=> d!997155 (= res!1397273 (= (list!13537 (_1!21582 lt!1177644)) (list!13537 (_1!21582 (lexRec!750 thiss!18206 rules!2135 lt!1176613)))))))

(assert (=> d!997155 (= lt!1177644 e!2145469)))

(declare-fun c!593048 () Bool)

(assert (=> d!997155 (= c!593048 ((_ is Some!7530) lt!1177623))))

(assert (=> d!997155 (= lt!1177623 (maxPrefixZipperSequenceV2!537 thiss!18206 rules!2135 lt!1176613 lt!1176613))))

(declare-fun lt!1177634 () Unit!52520)

(declare-fun lt!1177630 () Unit!52520)

(assert (=> d!997155 (= lt!1177634 lt!1177630)))

(declare-fun lt!1177622 () List!37295)

(declare-fun lt!1177642 () List!37295)

(assert (=> d!997155 (isSuffix!912 lt!1177622 (++!9165 lt!1177642 lt!1177622))))

(assert (=> d!997155 (= lt!1177630 (lemmaConcatTwoListThenFSndIsSuffix!597 lt!1177642 lt!1177622))))

(assert (=> d!997155 (= lt!1177622 (list!13535 lt!1176613))))

(assert (=> d!997155 (= lt!1177642 (list!13535 (BalanceConc!22125 Empty!11255)))))

(assert (=> d!997155 (= (lexTailRecV2!1058 thiss!18206 rules!2135 lt!1176613 (BalanceConc!22125 Empty!11255) lt!1176613 (BalanceConc!22127 Empty!11256)) lt!1177644)))

(declare-fun lt!1177640 () tuple2!36896)

(declare-fun b!3463080 () Bool)

(assert (=> b!3463080 (= lt!1177640 (lexRec!750 thiss!18206 rules!2135 (_2!21588 (v!36866 lt!1177621))))))

(assert (=> b!3463080 (= e!2145470 (tuple2!36897 (prepend!1262 (_1!21582 lt!1177640) (_1!21588 (v!36866 lt!1177621))) (_2!21582 lt!1177640)))))

(declare-fun b!3463081 () Bool)

(assert (=> b!3463081 (= e!2145468 (tuple2!36897 (BalanceConc!22127 Empty!11256) lt!1176613))))

(declare-fun b!3463082 () Bool)

(assert (=> b!3463082 (= e!2145469 (tuple2!36897 (BalanceConc!22127 Empty!11256) lt!1176613))))

(declare-fun b!3463083 () Bool)

(declare-fun lt!1177635 () tuple2!36896)

(assert (=> b!3463083 (= lt!1177635 (lexRec!750 thiss!18206 rules!2135 (_2!21588 (v!36866 lt!1177624))))))

(assert (=> b!3463083 (= e!2145468 (tuple2!36897 (prepend!1262 (_1!21582 lt!1177635) (_1!21588 (v!36866 lt!1177624))) (_2!21582 lt!1177635)))))

(assert (= (and d!997155 c!593048) b!3463078))

(assert (= (and d!997155 (not c!593048)) b!3463082))

(assert (= (and b!3463078 c!593049) b!3463083))

(assert (= (and b!3463078 (not c!593049)) b!3463081))

(assert (= (and b!3463078 c!593047) b!3463080))

(assert (= (and b!3463078 (not c!593047)) b!3463077))

(assert (= (and d!997155 res!1397273) b!3463079))

(declare-fun m!3867281 () Bool)

(assert (=> b!3463083 m!3867281))

(declare-fun m!3867283 () Bool)

(assert (=> b!3463083 m!3867283))

(assert (=> d!997155 m!3864547))

(declare-fun m!3867285 () Bool)

(assert (=> d!997155 m!3867285))

(declare-fun m!3867287 () Bool)

(assert (=> d!997155 m!3867287))

(declare-fun m!3867289 () Bool)

(assert (=> d!997155 m!3867289))

(assert (=> d!997155 m!3864657))

(declare-fun m!3867291 () Bool)

(assert (=> d!997155 m!3867291))

(declare-fun m!3867293 () Bool)

(assert (=> d!997155 m!3867293))

(declare-fun m!3867295 () Bool)

(assert (=> d!997155 m!3867295))

(assert (=> d!997155 m!3867287))

(declare-fun m!3867297 () Bool)

(assert (=> d!997155 m!3867297))

(declare-fun m!3867299 () Bool)

(assert (=> b!3463078 m!3867299))

(declare-fun m!3867301 () Bool)

(assert (=> b!3463078 m!3867301))

(declare-fun m!3867303 () Bool)

(assert (=> b!3463078 m!3867303))

(assert (=> b!3463078 m!3867301))

(declare-fun m!3867305 () Bool)

(assert (=> b!3463078 m!3867305))

(declare-fun m!3867307 () Bool)

(assert (=> b!3463078 m!3867307))

(declare-fun m!3867309 () Bool)

(assert (=> b!3463078 m!3867309))

(declare-fun m!3867311 () Bool)

(assert (=> b!3463078 m!3867311))

(declare-fun m!3867313 () Bool)

(assert (=> b!3463078 m!3867313))

(declare-fun m!3867315 () Bool)

(assert (=> b!3463078 m!3867315))

(declare-fun m!3867317 () Bool)

(assert (=> b!3463078 m!3867317))

(declare-fun m!3867319 () Bool)

(assert (=> b!3463078 m!3867319))

(declare-fun m!3867321 () Bool)

(assert (=> b!3463078 m!3867321))

(declare-fun m!3867323 () Bool)

(assert (=> b!3463078 m!3867323))

(declare-fun m!3867325 () Bool)

(assert (=> b!3463078 m!3867325))

(declare-fun m!3867327 () Bool)

(assert (=> b!3463078 m!3867327))

(declare-fun m!3867329 () Bool)

(assert (=> b!3463078 m!3867329))

(assert (=> b!3463078 m!3867319))

(declare-fun m!3867331 () Bool)

(assert (=> b!3463078 m!3867331))

(assert (=> b!3463078 m!3867321))

(assert (=> b!3463078 m!3864547))

(assert (=> b!3463078 m!3867299))

(declare-fun m!3867335 () Bool)

(assert (=> b!3463078 m!3867335))

(assert (=> b!3463078 m!3867327))

(declare-fun m!3867339 () Bool)

(assert (=> b!3463078 m!3867339))

(assert (=> b!3463078 m!3867327))

(assert (=> b!3463078 m!3867323))

(declare-fun m!3867345 () Bool)

(assert (=> b!3463078 m!3867345))

(declare-fun m!3867349 () Bool)

(assert (=> b!3463078 m!3867349))

(declare-fun m!3867355 () Bool)

(assert (=> b!3463078 m!3867355))

(declare-fun m!3867357 () Bool)

(assert (=> b!3463078 m!3867357))

(assert (=> b!3463078 m!3864547))

(assert (=> b!3463078 m!3867309))

(declare-fun m!3867363 () Bool)

(assert (=> b!3463078 m!3867363))

(assert (=> b!3463078 m!3867355))

(assert (=> b!3463078 m!3866849))

(assert (=> b!3463078 m!3867297))

(declare-fun m!3867369 () Bool)

(assert (=> b!3463078 m!3867369))

(assert (=> b!3463078 m!3867307))

(assert (=> b!3463078 m!3867313))

(declare-fun m!3867375 () Bool)

(assert (=> b!3463078 m!3867375))

(declare-fun m!3867379 () Bool)

(assert (=> b!3463078 m!3867379))

(declare-fun m!3867383 () Bool)

(assert (=> b!3463078 m!3867383))

(declare-fun m!3867387 () Bool)

(assert (=> b!3463078 m!3867387))

(declare-fun m!3867389 () Bool)

(assert (=> b!3463078 m!3867389))

(assert (=> b!3463078 m!3867307))

(assert (=> b!3463078 m!3867379))

(declare-fun m!3867397 () Bool)

(assert (=> b!3463079 m!3867397))

(assert (=> b!3463079 m!3867297))

(declare-fun m!3867403 () Bool)

(assert (=> b!3463079 m!3867403))

(declare-fun m!3867409 () Bool)

(assert (=> b!3463080 m!3867409))

(declare-fun m!3867413 () Bool)

(assert (=> b!3463080 m!3867413))

(assert (=> d!996225 d!997155))

(assert (=> d!996325 d!996999))

(declare-fun d!997157 () Bool)

(assert (=> d!997157 (= (list!13535 lt!1176631) (list!13536 (c!592551 lt!1176631)))))

(declare-fun bs!560640 () Bool)

(assert (= bs!560640 d!997157))

(declare-fun m!3867425 () Bool)

(assert (=> bs!560640 m!3867425))

(assert (=> d!996107 d!997157))

(declare-fun d!997159 () Bool)

(assert (=> d!997159 (= (list!13535 lt!1176734) (list!13536 (c!592551 lt!1176734)))))

(declare-fun bs!560641 () Bool)

(assert (= bs!560641 d!997159))

(declare-fun m!3867433 () Bool)

(assert (=> bs!560641 m!3867433))

(assert (=> d!996211 d!997159))

(declare-fun d!997161 () Bool)

(declare-fun c!593053 () Bool)

(assert (=> d!997161 (= c!593053 ((_ is Cons!37173) (list!13537 lt!1176594)))))

(declare-fun e!2145475 () List!37295)

(assert (=> d!997161 (= (printList!1577 thiss!18206 (list!13537 lt!1176594)) e!2145475)))

(declare-fun b!3463091 () Bool)

(assert (=> b!3463091 (= e!2145475 (++!9165 (list!13535 (charsOf!3454 (h!42593 (list!13537 lt!1176594)))) (printList!1577 thiss!18206 (t!273044 (list!13537 lt!1176594)))))))

(declare-fun b!3463092 () Bool)

(assert (=> b!3463092 (= e!2145475 Nil!37171)))

(assert (= (and d!997161 c!593053) b!3463091))

(assert (= (and d!997161 (not c!593053)) b!3463092))

(declare-fun m!3867447 () Bool)

(assert (=> b!3463091 m!3867447))

(assert (=> b!3463091 m!3867447))

(declare-fun m!3867451 () Bool)

(assert (=> b!3463091 m!3867451))

(declare-fun m!3867453 () Bool)

(assert (=> b!3463091 m!3867453))

(assert (=> b!3463091 m!3867451))

(assert (=> b!3463091 m!3867453))

(declare-fun m!3867457 () Bool)

(assert (=> b!3463091 m!3867457))

(assert (=> d!996211 d!997161))

(declare-fun d!997163 () Bool)

(assert (=> d!997163 (= (list!13537 lt!1176594) (list!13541 (c!592552 lt!1176594)))))

(declare-fun bs!560642 () Bool)

(assert (= bs!560642 d!997163))

(assert (=> bs!560642 m!3867029))

(assert (=> d!996211 d!997163))

(assert (=> d!996211 d!996205))

(declare-fun d!997165 () Bool)

(assert (=> d!997165 (= (isDefined!5798 (getRuleFromTag!1083 thiss!18206 rules!2135 (tag!6050 (rule!8032 (h!42593 tokens!494))))) (not (isEmpty!21538 (getRuleFromTag!1083 thiss!18206 rules!2135 (tag!6050 (rule!8032 (h!42593 tokens!494)))))))))

(declare-fun bs!560643 () Bool)

(assert (= bs!560643 d!997165))

(assert (=> bs!560643 m!3864049))

(declare-fun m!3867467 () Bool)

(assert (=> bs!560643 m!3867467))

(assert (=> d!996241 d!997165))

(assert (=> d!996241 d!996253))

(declare-fun d!997169 () Bool)

(declare-fun e!2145476 () Bool)

(assert (=> d!997169 e!2145476))

(declare-fun res!1397275 () Bool)

(assert (=> d!997169 (=> (not res!1397275) (not e!2145476))))

(assert (=> d!997169 (= res!1397275 (isDefined!5798 (getRuleFromTag!1083 thiss!18206 rules!2135 (tag!6050 (rule!8032 (h!42593 tokens!494))))))))

(assert (=> d!997169 true))

(declare-fun _$52!1897 () Unit!52520)

(assert (=> d!997169 (= (choose!20021 thiss!18206 rules!2135 lt!1176597 (h!42593 tokens!494)) _$52!1897)))

(declare-fun b!3463093 () Bool)

(declare-fun res!1397276 () Bool)

(assert (=> b!3463093 (=> (not res!1397276) (not e!2145476))))

(assert (=> b!3463093 (= res!1397276 (matchR!4783 (regex!5440 (get!11898 (getRuleFromTag!1083 thiss!18206 rules!2135 (tag!6050 (rule!8032 (h!42593 tokens!494)))))) (list!13535 (charsOf!3454 (h!42593 tokens!494)))))))

(declare-fun b!3463094 () Bool)

(assert (=> b!3463094 (= e!2145476 (= (rule!8032 (h!42593 tokens!494)) (get!11898 (getRuleFromTag!1083 thiss!18206 rules!2135 (tag!6050 (rule!8032 (h!42593 tokens!494)))))))))

(assert (= (and d!997169 res!1397275) b!3463093))

(assert (= (and b!3463093 res!1397276) b!3463094))

(assert (=> d!997169 m!3864049))

(assert (=> d!997169 m!3864049))

(assert (=> d!997169 m!3864687))

(assert (=> b!3463093 m!3864049))

(assert (=> b!3463093 m!3864049))

(assert (=> b!3463093 m!3864693))

(assert (=> b!3463093 m!3864171))

(assert (=> b!3463093 m!3864173))

(assert (=> b!3463093 m!3864691))

(assert (=> b!3463093 m!3864171))

(assert (=> b!3463093 m!3864173))

(assert (=> b!3463094 m!3864049))

(assert (=> b!3463094 m!3864049))

(assert (=> b!3463094 m!3864693))

(assert (=> d!996241 d!997169))

(assert (=> d!996241 d!996151))

(declare-fun b!3463098 () Bool)

(declare-fun e!2145478 () Bool)

(declare-fun lt!1177688 () List!37295)

(assert (=> b!3463098 (= e!2145478 (or (not (= (_2!21583 (get!11899 lt!1176835)) Nil!37171)) (= lt!1177688 (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1176835)))))))))

(declare-fun b!3463097 () Bool)

(declare-fun res!1397278 () Bool)

(assert (=> b!3463097 (=> (not res!1397278) (not e!2145478))))

(assert (=> b!3463097 (= res!1397278 (= (size!28201 lt!1177688) (+ (size!28201 (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1176835))))) (size!28201 (_2!21583 (get!11899 lt!1176835))))))))

(declare-fun b!3463095 () Bool)

(declare-fun e!2145477 () List!37295)

(assert (=> b!3463095 (= e!2145477 (_2!21583 (get!11899 lt!1176835)))))

(declare-fun b!3463096 () Bool)

(assert (=> b!3463096 (= e!2145477 (Cons!37171 (h!42591 (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1176835))))) (++!9165 (t!273042 (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1176835))))) (_2!21583 (get!11899 lt!1176835)))))))

(declare-fun d!997175 () Bool)

(assert (=> d!997175 e!2145478))

(declare-fun res!1397277 () Bool)

(assert (=> d!997175 (=> (not res!1397277) (not e!2145478))))

(assert (=> d!997175 (= res!1397277 (= (content!5190 lt!1177688) ((_ map or) (content!5190 (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1176835))))) (content!5190 (_2!21583 (get!11899 lt!1176835))))))))

(assert (=> d!997175 (= lt!1177688 e!2145477)))

(declare-fun c!593054 () Bool)

(assert (=> d!997175 (= c!593054 ((_ is Nil!37171) (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1176835))))))))

(assert (=> d!997175 (= (++!9165 (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1176835)))) (_2!21583 (get!11899 lt!1176835))) lt!1177688)))

(assert (= (and d!997175 c!593054) b!3463095))

(assert (= (and d!997175 (not c!593054)) b!3463096))

(assert (= (and d!997175 res!1397277) b!3463097))

(assert (= (and b!3463097 res!1397278) b!3463098))

(declare-fun m!3867469 () Bool)

(assert (=> b!3463097 m!3867469))

(assert (=> b!3463097 m!3864897))

(declare-fun m!3867471 () Bool)

(assert (=> b!3463097 m!3867471))

(assert (=> b!3463097 m!3864893))

(declare-fun m!3867473 () Bool)

(assert (=> b!3463096 m!3867473))

(declare-fun m!3867475 () Bool)

(assert (=> d!997175 m!3867475))

(assert (=> d!997175 m!3864897))

(declare-fun m!3867477 () Bool)

(assert (=> d!997175 m!3867477))

(declare-fun m!3867479 () Bool)

(assert (=> d!997175 m!3867479))

(assert (=> b!3461586 d!997175))

(declare-fun d!997177 () Bool)

(assert (=> d!997177 (= (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1176835)))) (list!13536 (c!592551 (charsOf!3454 (_1!21583 (get!11899 lt!1176835))))))))

(declare-fun bs!560644 () Bool)

(assert (= bs!560644 d!997177))

(declare-fun m!3867481 () Bool)

(assert (=> bs!560644 m!3867481))

(assert (=> b!3461586 d!997177))

(declare-fun d!997179 () Bool)

(declare-fun lt!1177689 () BalanceConc!22124)

(assert (=> d!997179 (= (list!13535 lt!1177689) (originalCharacters!6154 (_1!21583 (get!11899 lt!1176835))))))

(assert (=> d!997179 (= lt!1177689 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1176835))))) (value!175500 (_1!21583 (get!11899 lt!1176835)))))))

(assert (=> d!997179 (= (charsOf!3454 (_1!21583 (get!11899 lt!1176835))) lt!1177689)))

(declare-fun b_lambda!99787 () Bool)

(assert (=> (not b_lambda!99787) (not d!997179)))

(declare-fun tb!188867 () Bool)

(declare-fun t!273214 () Bool)

(assert (=> (and b!3461881 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (toChars!7527 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1176835)))))) t!273214) tb!188867))

(declare-fun b!3463099 () Bool)

(declare-fun e!2145479 () Bool)

(declare-fun tp!1078343 () Bool)

(assert (=> b!3463099 (= e!2145479 (and (inv!50346 (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1176835))))) (value!175500 (_1!21583 (get!11899 lt!1176835)))))) tp!1078343))))

(declare-fun result!232880 () Bool)

(assert (=> tb!188867 (= result!232880 (and (inv!50347 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1176835))))) (value!175500 (_1!21583 (get!11899 lt!1176835))))) e!2145479))))

(assert (= tb!188867 b!3463099))

(declare-fun m!3867483 () Bool)

(assert (=> b!3463099 m!3867483))

(declare-fun m!3867485 () Bool)

(assert (=> tb!188867 m!3867485))

(assert (=> d!997179 t!273214))

(declare-fun b_and!243661 () Bool)

(assert (= b_and!243657 (and (=> t!273214 result!232880) b_and!243661)))

(declare-fun t!273216 () Bool)

(declare-fun tb!188869 () Bool)

(assert (=> (and b!3461104 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (toChars!7527 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1176835)))))) t!273216) tb!188869))

(declare-fun result!232882 () Bool)

(assert (= result!232882 result!232880))

(assert (=> d!997179 t!273216))

(declare-fun b_and!243663 () Bool)

(assert (= b_and!243655 (and (=> t!273216 result!232882) b_and!243663)))

(declare-fun tb!188871 () Bool)

(declare-fun t!273218 () Bool)

(assert (=> (and b!3461090 (= (toChars!7527 (transformation!5440 (h!42592 rules!2135))) (toChars!7527 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1176835)))))) t!273218) tb!188871))

(declare-fun result!232884 () Bool)

(assert (= result!232884 result!232880))

(assert (=> d!997179 t!273218))

(declare-fun b_and!243665 () Bool)

(assert (= b_and!243659 (and (=> t!273218 result!232884) b_and!243665)))

(declare-fun t!273220 () Bool)

(declare-fun tb!188873 () Bool)

(assert (=> (and b!3461904 (= (toChars!7527 (transformation!5440 (h!42592 (t!273043 rules!2135)))) (toChars!7527 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1176835)))))) t!273220) tb!188873))

(declare-fun result!232886 () Bool)

(assert (= result!232886 result!232880))

(assert (=> d!997179 t!273220))

(declare-fun b_and!243667 () Bool)

(assert (= b_and!243653 (and (=> t!273220 result!232886) b_and!243667)))

(declare-fun tb!188875 () Bool)

(declare-fun t!273222 () Bool)

(assert (=> (and b!3461071 (= (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))) (toChars!7527 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1176835)))))) t!273222) tb!188875))

(declare-fun result!232888 () Bool)

(assert (= result!232888 result!232880))

(assert (=> d!997179 t!273222))

(declare-fun b_and!243669 () Bool)

(assert (= b_and!243651 (and (=> t!273222 result!232888) b_and!243669)))

(declare-fun m!3867487 () Bool)

(assert (=> d!997179 m!3867487))

(declare-fun m!3867489 () Bool)

(assert (=> d!997179 m!3867489))

(assert (=> b!3461586 d!997179))

(assert (=> b!3461586 d!996473))

(declare-fun d!997185 () Bool)

(assert (=> d!997185 (= (list!13535 lt!1176804) (list!13536 (c!592551 lt!1176804)))))

(declare-fun bs!560646 () Bool)

(assert (= bs!560646 d!997185))

(declare-fun m!3867491 () Bool)

(assert (=> bs!560646 m!3867491))

(assert (=> d!996281 d!997185))

(declare-fun d!997187 () Bool)

(declare-fun c!593056 () Bool)

(assert (=> d!997187 (= c!593056 ((_ is Cons!37173) (list!13537 lt!1176610)))))

(declare-fun e!2145481 () List!37295)

(assert (=> d!997187 (= (printList!1577 thiss!18206 (list!13537 lt!1176610)) e!2145481)))

(declare-fun b!3463101 () Bool)

(assert (=> b!3463101 (= e!2145481 (++!9165 (list!13535 (charsOf!3454 (h!42593 (list!13537 lt!1176610)))) (printList!1577 thiss!18206 (t!273044 (list!13537 lt!1176610)))))))

(declare-fun b!3463102 () Bool)

(assert (=> b!3463102 (= e!2145481 Nil!37171)))

(assert (= (and d!997187 c!593056) b!3463101))

(assert (= (and d!997187 (not c!593056)) b!3463102))

(declare-fun m!3867497 () Bool)

(assert (=> b!3463101 m!3867497))

(assert (=> b!3463101 m!3867497))

(declare-fun m!3867499 () Bool)

(assert (=> b!3463101 m!3867499))

(declare-fun m!3867501 () Bool)

(assert (=> b!3463101 m!3867501))

(assert (=> b!3463101 m!3867499))

(assert (=> b!3463101 m!3867501))

(declare-fun m!3867503 () Bool)

(assert (=> b!3463101 m!3867503))

(assert (=> d!996281 d!997187))

(declare-fun d!997189 () Bool)

(assert (=> d!997189 (= (list!13537 lt!1176610) (list!13541 (c!592552 lt!1176610)))))

(declare-fun bs!560647 () Bool)

(assert (= bs!560647 d!997189))

(declare-fun m!3867507 () Bool)

(assert (=> bs!560647 m!3867507))

(assert (=> d!996281 d!997189))

(assert (=> d!996281 d!996313))

(declare-fun bm!249783 () Bool)

(declare-fun call!249790 () List!37295)

(declare-fun c!593058 () Bool)

(declare-fun call!249789 () List!37295)

(declare-fun call!249788 () List!37295)

(assert (=> bm!249783 (= call!249790 (++!9165 (ite c!593058 call!249789 call!249788) (ite c!593058 call!249788 call!249789)))))

(declare-fun e!2145482 () List!37295)

(declare-fun b!3463103 () Bool)

(assert (=> b!3463103 (= e!2145482 (Cons!37171 (c!592550 (ite c!592656 (reg!10528 (regex!5440 (rule!8032 (h!42593 tokens!494)))) (ite c!592655 (regTwo!20911 (regex!5440 (rule!8032 (h!42593 tokens!494)))) (regOne!20910 (regex!5440 (rule!8032 (h!42593 tokens!494))))))) Nil!37171))))

(declare-fun b!3463104 () Bool)

(declare-fun e!2145485 () List!37295)

(assert (=> b!3463104 (= e!2145485 call!249790)))

(declare-fun bm!249784 () Bool)

(assert (=> bm!249784 (= call!249789 (usedCharacters!674 (ite c!593058 (regOne!20911 (ite c!592656 (reg!10528 (regex!5440 (rule!8032 (h!42593 tokens!494)))) (ite c!592655 (regTwo!20911 (regex!5440 (rule!8032 (h!42593 tokens!494)))) (regOne!20910 (regex!5440 (rule!8032 (h!42593 tokens!494))))))) (regTwo!20910 (ite c!592656 (reg!10528 (regex!5440 (rule!8032 (h!42593 tokens!494)))) (ite c!592655 (regTwo!20911 (regex!5440 (rule!8032 (h!42593 tokens!494)))) (regOne!20910 (regex!5440 (rule!8032 (h!42593 tokens!494))))))))))))

(declare-fun bm!249785 () Bool)

(declare-fun call!249791 () List!37295)

(declare-fun c!593059 () Bool)

(assert (=> bm!249785 (= call!249791 (usedCharacters!674 (ite c!593059 (reg!10528 (ite c!592656 (reg!10528 (regex!5440 (rule!8032 (h!42593 tokens!494)))) (ite c!592655 (regTwo!20911 (regex!5440 (rule!8032 (h!42593 tokens!494)))) (regOne!20910 (regex!5440 (rule!8032 (h!42593 tokens!494))))))) (ite c!593058 (regTwo!20911 (ite c!592656 (reg!10528 (regex!5440 (rule!8032 (h!42593 tokens!494)))) (ite c!592655 (regTwo!20911 (regex!5440 (rule!8032 (h!42593 tokens!494)))) (regOne!20910 (regex!5440 (rule!8032 (h!42593 tokens!494))))))) (regOne!20910 (ite c!592656 (reg!10528 (regex!5440 (rule!8032 (h!42593 tokens!494)))) (ite c!592655 (regTwo!20911 (regex!5440 (rule!8032 (h!42593 tokens!494)))) (regOne!20910 (regex!5440 (rule!8032 (h!42593 tokens!494)))))))))))))

(declare-fun bm!249786 () Bool)

(assert (=> bm!249786 (= call!249788 call!249791)))

(declare-fun b!3463106 () Bool)

(declare-fun e!2145483 () List!37295)

(assert (=> b!3463106 (= e!2145483 e!2145482)))

(declare-fun c!593057 () Bool)

(assert (=> b!3463106 (= c!593057 ((_ is ElementMatch!10199) (ite c!592656 (reg!10528 (regex!5440 (rule!8032 (h!42593 tokens!494)))) (ite c!592655 (regTwo!20911 (regex!5440 (rule!8032 (h!42593 tokens!494)))) (regOne!20910 (regex!5440 (rule!8032 (h!42593 tokens!494))))))))))

(declare-fun b!3463107 () Bool)

(assert (=> b!3463107 (= e!2145483 Nil!37171)))

(declare-fun b!3463108 () Bool)

(declare-fun e!2145484 () List!37295)

(assert (=> b!3463108 (= e!2145484 e!2145485)))

(assert (=> b!3463108 (= c!593058 ((_ is Union!10199) (ite c!592656 (reg!10528 (regex!5440 (rule!8032 (h!42593 tokens!494)))) (ite c!592655 (regTwo!20911 (regex!5440 (rule!8032 (h!42593 tokens!494)))) (regOne!20910 (regex!5440 (rule!8032 (h!42593 tokens!494))))))))))

(declare-fun b!3463109 () Bool)

(assert (=> b!3463109 (= e!2145485 call!249790)))

(declare-fun b!3463110 () Bool)

(assert (=> b!3463110 (= e!2145484 call!249791)))

(declare-fun b!3463105 () Bool)

(assert (=> b!3463105 (= c!593059 ((_ is Star!10199) (ite c!592656 (reg!10528 (regex!5440 (rule!8032 (h!42593 tokens!494)))) (ite c!592655 (regTwo!20911 (regex!5440 (rule!8032 (h!42593 tokens!494)))) (regOne!20910 (regex!5440 (rule!8032 (h!42593 tokens!494))))))))))

(assert (=> b!3463105 (= e!2145482 e!2145484)))

(declare-fun d!997193 () Bool)

(declare-fun c!593060 () Bool)

(assert (=> d!997193 (= c!593060 (or ((_ is EmptyExpr!10199) (ite c!592656 (reg!10528 (regex!5440 (rule!8032 (h!42593 tokens!494)))) (ite c!592655 (regTwo!20911 (regex!5440 (rule!8032 (h!42593 tokens!494)))) (regOne!20910 (regex!5440 (rule!8032 (h!42593 tokens!494))))))) ((_ is EmptyLang!10199) (ite c!592656 (reg!10528 (regex!5440 (rule!8032 (h!42593 tokens!494)))) (ite c!592655 (regTwo!20911 (regex!5440 (rule!8032 (h!42593 tokens!494)))) (regOne!20910 (regex!5440 (rule!8032 (h!42593 tokens!494)))))))))))

(assert (=> d!997193 (= (usedCharacters!674 (ite c!592656 (reg!10528 (regex!5440 (rule!8032 (h!42593 tokens!494)))) (ite c!592655 (regTwo!20911 (regex!5440 (rule!8032 (h!42593 tokens!494)))) (regOne!20910 (regex!5440 (rule!8032 (h!42593 tokens!494))))))) e!2145483)))

(assert (= (and d!997193 c!593060) b!3463107))

(assert (= (and d!997193 (not c!593060)) b!3463106))

(assert (= (and b!3463106 c!593057) b!3463103))

(assert (= (and b!3463106 (not c!593057)) b!3463105))

(assert (= (and b!3463105 c!593059) b!3463110))

(assert (= (and b!3463105 (not c!593059)) b!3463108))

(assert (= (and b!3463108 c!593058) b!3463104))

(assert (= (and b!3463108 (not c!593058)) b!3463109))

(assert (= (or b!3463104 b!3463109) bm!249786))

(assert (= (or b!3463104 b!3463109) bm!249784))

(assert (= (or b!3463104 b!3463109) bm!249783))

(assert (= (or b!3463110 bm!249786) bm!249785))

(declare-fun m!3867511 () Bool)

(assert (=> bm!249783 m!3867511))

(declare-fun m!3867513 () Bool)

(assert (=> bm!249784 m!3867513))

(declare-fun m!3867515 () Bool)

(assert (=> bm!249785 m!3867515))

(assert (=> bm!249631 d!997193))

(declare-fun d!997195 () Bool)

(declare-fun lt!1177691 () Bool)

(assert (=> d!997195 (= lt!1177691 (isEmpty!21536 (list!13537 (_1!21582 lt!1176756))))))

(assert (=> d!997195 (= lt!1177691 (isEmpty!21537 (c!592552 (_1!21582 lt!1176756))))))

(assert (=> d!997195 (= (isEmpty!21526 (_1!21582 lt!1176756)) lt!1177691)))

(declare-fun bs!560648 () Bool)

(assert (= bs!560648 d!997195))

(assert (=> bs!560648 m!3864661))

(assert (=> bs!560648 m!3864661))

(declare-fun m!3867517 () Bool)

(assert (=> bs!560648 m!3867517))

(declare-fun m!3867519 () Bool)

(assert (=> bs!560648 m!3867519))

(assert (=> b!3461440 d!997195))

(declare-fun d!997197 () Bool)

(declare-fun lt!1177692 () Int)

(assert (=> d!997197 (>= lt!1177692 0)))

(declare-fun e!2145486 () Int)

(assert (=> d!997197 (= lt!1177692 e!2145486)))

(declare-fun c!593061 () Bool)

(assert (=> d!997197 (= c!593061 ((_ is Nil!37171) (originalCharacters!6154 (h!42593 tokens!494))))))

(assert (=> d!997197 (= (size!28201 (originalCharacters!6154 (h!42593 tokens!494))) lt!1177692)))

(declare-fun b!3463111 () Bool)

(assert (=> b!3463111 (= e!2145486 0)))

(declare-fun b!3463112 () Bool)

(assert (=> b!3463112 (= e!2145486 (+ 1 (size!28201 (t!273042 (originalCharacters!6154 (h!42593 tokens!494))))))))

(assert (= (and d!997197 c!593061) b!3463111))

(assert (= (and d!997197 (not c!593061)) b!3463112))

(declare-fun m!3867521 () Bool)

(assert (=> b!3463112 m!3867521))

(assert (=> b!3461192 d!997197))

(declare-fun d!997199 () Bool)

(assert (=> d!997199 (= (++!9165 (++!9165 lt!1176597 lt!1176614) lt!1176603) (++!9165 lt!1176597 (++!9165 lt!1176614 lt!1176603)))))

(assert (=> d!997199 true))

(declare-fun _$52!1900 () Unit!52520)

(assert (=> d!997199 (= (choose!20019 lt!1176597 lt!1176614 lt!1176603) _$52!1900)))

(declare-fun bs!560649 () Bool)

(assert (= bs!560649 d!997199))

(assert (=> bs!560649 m!3864009))

(assert (=> bs!560649 m!3864009))

(assert (=> bs!560649 m!3864011))

(assert (=> bs!560649 m!3864133))

(assert (=> bs!560649 m!3864133))

(assert (=> bs!560649 m!3864619))

(assert (=> d!996221 d!997199))

(assert (=> d!996221 d!996179))

(assert (=> d!996221 d!996203))

(assert (=> d!996221 d!996201))

(declare-fun e!2145488 () Bool)

(declare-fun b!3463116 () Bool)

(declare-fun lt!1177693 () List!37295)

(assert (=> b!3463116 (= e!2145488 (or (not (= (++!9165 lt!1176614 lt!1176603) Nil!37171)) (= lt!1177693 lt!1176597)))))

(declare-fun b!3463115 () Bool)

(declare-fun res!1397280 () Bool)

(assert (=> b!3463115 (=> (not res!1397280) (not e!2145488))))

(assert (=> b!3463115 (= res!1397280 (= (size!28201 lt!1177693) (+ (size!28201 lt!1176597) (size!28201 (++!9165 lt!1176614 lt!1176603)))))))

(declare-fun b!3463113 () Bool)

(declare-fun e!2145487 () List!37295)

(assert (=> b!3463113 (= e!2145487 (++!9165 lt!1176614 lt!1176603))))

(declare-fun b!3463114 () Bool)

(assert (=> b!3463114 (= e!2145487 (Cons!37171 (h!42591 lt!1176597) (++!9165 (t!273042 lt!1176597) (++!9165 lt!1176614 lt!1176603))))))

(declare-fun d!997201 () Bool)

(assert (=> d!997201 e!2145488))

(declare-fun res!1397279 () Bool)

(assert (=> d!997201 (=> (not res!1397279) (not e!2145488))))

(assert (=> d!997201 (= res!1397279 (= (content!5190 lt!1177693) ((_ map or) (content!5190 lt!1176597) (content!5190 (++!9165 lt!1176614 lt!1176603)))))))

(assert (=> d!997201 (= lt!1177693 e!2145487)))

(declare-fun c!593062 () Bool)

(assert (=> d!997201 (= c!593062 ((_ is Nil!37171) lt!1176597))))

(assert (=> d!997201 (= (++!9165 lt!1176597 (++!9165 lt!1176614 lt!1176603)) lt!1177693)))

(assert (= (and d!997201 c!593062) b!3463113))

(assert (= (and d!997201 (not c!593062)) b!3463114))

(assert (= (and d!997201 res!1397279) b!3463115))

(assert (= (and b!3463115 res!1397280) b!3463116))

(declare-fun m!3867523 () Bool)

(assert (=> b!3463115 m!3867523))

(assert (=> b!3463115 m!3864069))

(assert (=> b!3463115 m!3864133))

(declare-fun m!3867525 () Bool)

(assert (=> b!3463115 m!3867525))

(assert (=> b!3463114 m!3864133))

(declare-fun m!3867527 () Bool)

(assert (=> b!3463114 m!3867527))

(declare-fun m!3867529 () Bool)

(assert (=> d!997201 m!3867529))

(assert (=> d!997201 m!3864519))

(assert (=> d!997201 m!3864133))

(declare-fun m!3867531 () Bool)

(assert (=> d!997201 m!3867531))

(assert (=> d!996221 d!997201))

(declare-fun d!997203 () Bool)

(assert (=> d!997203 (= (head!7321 lt!1176597) (h!42591 lt!1176597))))

(assert (=> b!3461209 d!997203))

(declare-fun b!3463156 () Bool)

(declare-fun res!1397295 () Bool)

(declare-fun e!2145508 () Bool)

(assert (=> b!3463156 (=> (not res!1397295) (not e!2145508))))

(declare-fun height!1700 (Conc!11255) Int)

(declare-fun ++!9171 (Conc!11255 Conc!11255) Conc!11255)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3463156 (= res!1397295 (<= (height!1700 (++!9171 (c!592551 (BalanceConc!22125 Empty!11255)) (c!592551 (charsOf!3454 (apply!8756 lt!1176620 0))))) (+ (max!0 (height!1700 (c!592551 (BalanceConc!22125 Empty!11255))) (height!1700 (c!592551 (charsOf!3454 (apply!8756 lt!1176620 0))))) 1)))))

(declare-fun b!3463155 () Bool)

(declare-fun res!1397294 () Bool)

(assert (=> b!3463155 (=> (not res!1397294) (not e!2145508))))

(assert (=> b!3463155 (= res!1397294 (isBalanced!3418 (++!9171 (c!592551 (BalanceConc!22125 Empty!11255)) (c!592551 (charsOf!3454 (apply!8756 lt!1176620 0))))))))

(declare-fun d!997205 () Bool)

(assert (=> d!997205 e!2145508))

(declare-fun res!1397296 () Bool)

(assert (=> d!997205 (=> (not res!1397296) (not e!2145508))))

(declare-fun appendAssocInst!805 (Conc!11255 Conc!11255) Bool)

(assert (=> d!997205 (= res!1397296 (appendAssocInst!805 (c!592551 (BalanceConc!22125 Empty!11255)) (c!592551 (charsOf!3454 (apply!8756 lt!1176620 0)))))))

(declare-fun lt!1177700 () BalanceConc!22124)

(assert (=> d!997205 (= lt!1177700 (BalanceConc!22125 (++!9171 (c!592551 (BalanceConc!22125 Empty!11255)) (c!592551 (charsOf!3454 (apply!8756 lt!1176620 0))))))))

(assert (=> d!997205 (= (++!9166 (BalanceConc!22125 Empty!11255) (charsOf!3454 (apply!8756 lt!1176620 0))) lt!1177700)))

(declare-fun b!3463157 () Bool)

(declare-fun res!1397293 () Bool)

(assert (=> b!3463157 (=> (not res!1397293) (not e!2145508))))

(assert (=> b!3463157 (= res!1397293 (>= (height!1700 (++!9171 (c!592551 (BalanceConc!22125 Empty!11255)) (c!592551 (charsOf!3454 (apply!8756 lt!1176620 0))))) (max!0 (height!1700 (c!592551 (BalanceConc!22125 Empty!11255))) (height!1700 (c!592551 (charsOf!3454 (apply!8756 lt!1176620 0)))))))))

(declare-fun b!3463158 () Bool)

(assert (=> b!3463158 (= e!2145508 (= (list!13535 lt!1177700) (++!9165 (list!13535 (BalanceConc!22125 Empty!11255)) (list!13535 (charsOf!3454 (apply!8756 lt!1176620 0))))))))

(assert (= (and d!997205 res!1397296) b!3463155))

(assert (= (and b!3463155 res!1397294) b!3463156))

(assert (= (and b!3463156 res!1397295) b!3463157))

(assert (= (and b!3463157 res!1397293) b!3463158))

(declare-fun m!3867551 () Bool)

(assert (=> b!3463158 m!3867551))

(assert (=> b!3463158 m!3864547))

(assert (=> b!3463158 m!3865039))

(declare-fun m!3867553 () Bool)

(assert (=> b!3463158 m!3867553))

(assert (=> b!3463158 m!3864547))

(assert (=> b!3463158 m!3867553))

(declare-fun m!3867555 () Bool)

(assert (=> b!3463158 m!3867555))

(declare-fun m!3867557 () Bool)

(assert (=> b!3463157 m!3867557))

(assert (=> b!3463157 m!3867557))

(declare-fun m!3867559 () Bool)

(assert (=> b!3463157 m!3867559))

(declare-fun m!3867561 () Bool)

(assert (=> b!3463157 m!3867561))

(declare-fun m!3867563 () Bool)

(assert (=> b!3463157 m!3867563))

(declare-fun m!3867565 () Bool)

(assert (=> b!3463157 m!3867565))

(assert (=> b!3463157 m!3867561))

(assert (=> b!3463157 m!3867563))

(declare-fun m!3867567 () Bool)

(assert (=> d!997205 m!3867567))

(assert (=> d!997205 m!3867557))

(assert (=> b!3463156 m!3867557))

(assert (=> b!3463156 m!3867557))

(assert (=> b!3463156 m!3867559))

(assert (=> b!3463156 m!3867561))

(assert (=> b!3463156 m!3867563))

(assert (=> b!3463156 m!3867565))

(assert (=> b!3463156 m!3867561))

(assert (=> b!3463156 m!3867563))

(assert (=> b!3463155 m!3867557))

(assert (=> b!3463155 m!3867557))

(declare-fun m!3867569 () Bool)

(assert (=> b!3463155 m!3867569))

(assert (=> b!3461670 d!997205))

(declare-fun d!997211 () Bool)

(declare-fun lt!1177703 () Token!10246)

(assert (=> d!997211 (= lt!1177703 (apply!8758 (list!13537 lt!1176620) 0))))

(assert (=> d!997211 (= lt!1177703 (apply!8759 (c!592552 lt!1176620) 0))))

(declare-fun e!2145511 () Bool)

(assert (=> d!997211 e!2145511))

(declare-fun res!1397305 () Bool)

(assert (=> d!997211 (=> (not res!1397305) (not e!2145511))))

(assert (=> d!997211 (= res!1397305 (<= 0 0))))

(assert (=> d!997211 (= (apply!8756 lt!1176620 0) lt!1177703)))

(declare-fun b!3463167 () Bool)

(assert (=> b!3463167 (= e!2145511 (< 0 (size!28200 lt!1176620)))))

(assert (= (and d!997211 res!1397305) b!3463167))

(assert (=> d!997211 m!3865033))

(assert (=> d!997211 m!3865033))

(declare-fun m!3867571 () Bool)

(assert (=> d!997211 m!3867571))

(declare-fun m!3867573 () Bool)

(assert (=> d!997211 m!3867573))

(assert (=> b!3463167 m!3865027))

(assert (=> b!3461670 d!997211))

(declare-fun d!997213 () Bool)

(declare-fun lt!1177709 () BalanceConc!22124)

(assert (=> d!997213 (= (list!13535 lt!1177709) (printListTailRec!689 thiss!18206 (dropList!1206 lt!1176620 (+ 0 1)) (list!13535 (++!9166 (BalanceConc!22125 Empty!11255) (charsOf!3454 (apply!8756 lt!1176620 0))))))))

(declare-fun e!2145512 () BalanceConc!22124)

(assert (=> d!997213 (= lt!1177709 e!2145512)))

(declare-fun c!593082 () Bool)

(assert (=> d!997213 (= c!593082 (>= (+ 0 1) (size!28200 lt!1176620)))))

(declare-fun e!2145513 () Bool)

(assert (=> d!997213 e!2145513))

(declare-fun res!1397306 () Bool)

(assert (=> d!997213 (=> (not res!1397306) (not e!2145513))))

(assert (=> d!997213 (= res!1397306 (>= (+ 0 1) 0))))

(assert (=> d!997213 (= (printTailRec!1524 thiss!18206 lt!1176620 (+ 0 1) (++!9166 (BalanceConc!22125 Empty!11255) (charsOf!3454 (apply!8756 lt!1176620 0)))) lt!1177709)))

(declare-fun b!3463168 () Bool)

(assert (=> b!3463168 (= e!2145513 (<= (+ 0 1) (size!28200 lt!1176620)))))

(declare-fun b!3463169 () Bool)

(assert (=> b!3463169 (= e!2145512 (++!9166 (BalanceConc!22125 Empty!11255) (charsOf!3454 (apply!8756 lt!1176620 0))))))

(declare-fun b!3463170 () Bool)

(assert (=> b!3463170 (= e!2145512 (printTailRec!1524 thiss!18206 lt!1176620 (+ 0 1 1) (++!9166 (++!9166 (BalanceConc!22125 Empty!11255) (charsOf!3454 (apply!8756 lt!1176620 0))) (charsOf!3454 (apply!8756 lt!1176620 (+ 0 1))))))))

(declare-fun lt!1177710 () List!37297)

(assert (=> b!3463170 (= lt!1177710 (list!13537 lt!1176620))))

(declare-fun lt!1177705 () Unit!52520)

(assert (=> b!3463170 (= lt!1177705 (lemmaDropApply!1164 lt!1177710 (+ 0 1)))))

(assert (=> b!3463170 (= (head!7322 (drop!2012 lt!1177710 (+ 0 1))) (apply!8758 lt!1177710 (+ 0 1)))))

(declare-fun lt!1177704 () Unit!52520)

(assert (=> b!3463170 (= lt!1177704 lt!1177705)))

(declare-fun lt!1177706 () List!37297)

(assert (=> b!3463170 (= lt!1177706 (list!13537 lt!1176620))))

(declare-fun lt!1177707 () Unit!52520)

(assert (=> b!3463170 (= lt!1177707 (lemmaDropTail!1048 lt!1177706 (+ 0 1)))))

(assert (=> b!3463170 (= (tail!5435 (drop!2012 lt!1177706 (+ 0 1))) (drop!2012 lt!1177706 (+ 0 1 1)))))

(declare-fun lt!1177708 () Unit!52520)

(assert (=> b!3463170 (= lt!1177708 lt!1177707)))

(assert (= (and d!997213 res!1397306) b!3463168))

(assert (= (and d!997213 c!593082) b!3463169))

(assert (= (and d!997213 (not c!593082)) b!3463170))

(declare-fun m!3867575 () Bool)

(assert (=> d!997213 m!3867575))

(declare-fun m!3867577 () Bool)

(assert (=> d!997213 m!3867577))

(assert (=> d!997213 m!3865027))

(assert (=> d!997213 m!3865041))

(declare-fun m!3867579 () Bool)

(assert (=> d!997213 m!3867579))

(assert (=> d!997213 m!3867577))

(assert (=> d!997213 m!3867579))

(declare-fun m!3867581 () Bool)

(assert (=> d!997213 m!3867581))

(assert (=> b!3463168 m!3865027))

(declare-fun m!3867583 () Bool)

(assert (=> b!3463170 m!3867583))

(assert (=> b!3463170 m!3865033))

(declare-fun m!3867585 () Bool)

(assert (=> b!3463170 m!3867585))

(declare-fun m!3867587 () Bool)

(assert (=> b!3463170 m!3867587))

(assert (=> b!3463170 m!3865041))

(declare-fun m!3867589 () Bool)

(assert (=> b!3463170 m!3867589))

(declare-fun m!3867591 () Bool)

(assert (=> b!3463170 m!3867591))

(declare-fun m!3867593 () Bool)

(assert (=> b!3463170 m!3867593))

(declare-fun m!3867595 () Bool)

(assert (=> b!3463170 m!3867595))

(declare-fun m!3867597 () Bool)

(assert (=> b!3463170 m!3867597))

(assert (=> b!3463170 m!3867585))

(declare-fun m!3867599 () Bool)

(assert (=> b!3463170 m!3867599))

(assert (=> b!3463170 m!3867591))

(declare-fun m!3867601 () Bool)

(assert (=> b!3463170 m!3867601))

(assert (=> b!3463170 m!3867593))

(declare-fun m!3867603 () Bool)

(assert (=> b!3463170 m!3867603))

(assert (=> b!3463170 m!3867587))

(assert (=> b!3463170 m!3867589))

(declare-fun m!3867605 () Bool)

(assert (=> b!3463170 m!3867605))

(assert (=> b!3461670 d!997213))

(declare-fun d!997215 () Bool)

(assert (=> d!997215 (= (tail!5435 (drop!2012 lt!1176869 0)) (drop!2012 lt!1176869 (+ 0 1)))))

(declare-fun lt!1177721 () Unit!52520)

(declare-fun choose!20035 (List!37297 Int) Unit!52520)

(assert (=> d!997215 (= lt!1177721 (choose!20035 lt!1176869 0))))

(declare-fun e!2145519 () Bool)

(assert (=> d!997215 e!2145519))

(declare-fun res!1397314 () Bool)

(assert (=> d!997215 (=> (not res!1397314) (not e!2145519))))

(assert (=> d!997215 (= res!1397314 (>= 0 0))))

(assert (=> d!997215 (= (lemmaDropTail!1048 lt!1176869 0) lt!1177721)))

(declare-fun b!3463180 () Bool)

(assert (=> b!3463180 (= e!2145519 (< 0 (size!28206 lt!1176869)))))

(assert (= (and d!997215 res!1397314) b!3463180))

(assert (=> d!997215 m!3865035))

(assert (=> d!997215 m!3865035))

(assert (=> d!997215 m!3865049))

(assert (=> d!997215 m!3865031))

(declare-fun m!3867635 () Bool)

(assert (=> d!997215 m!3867635))

(declare-fun m!3867637 () Bool)

(assert (=> b!3463180 m!3867637))

(assert (=> b!3461670 d!997215))

(declare-fun d!997219 () Bool)

(assert (=> d!997219 (= (head!7322 (drop!2012 lt!1176873 0)) (h!42593 (drop!2012 lt!1176873 0)))))

(assert (=> b!3461670 d!997219))

(declare-fun d!997223 () Bool)

(assert (=> d!997223 (= (head!7322 (drop!2012 lt!1176873 0)) (apply!8758 lt!1176873 0))))

(declare-fun lt!1177726 () Unit!52520)

(declare-fun choose!20036 (List!37297 Int) Unit!52520)

(assert (=> d!997223 (= lt!1177726 (choose!20036 lt!1176873 0))))

(declare-fun e!2145524 () Bool)

(assert (=> d!997223 e!2145524))

(declare-fun res!1397319 () Bool)

(assert (=> d!997223 (=> (not res!1397319) (not e!2145524))))

(assert (=> d!997223 (= res!1397319 (>= 0 0))))

(assert (=> d!997223 (= (lemmaDropApply!1164 lt!1176873 0) lt!1177726)))

(declare-fun b!3463185 () Bool)

(assert (=> b!3463185 (= e!2145524 (< 0 (size!28206 lt!1176873)))))

(assert (= (and d!997223 res!1397319) b!3463185))

(assert (=> d!997223 m!3865043))

(assert (=> d!997223 m!3865043))

(assert (=> d!997223 m!3865045))

(assert (=> d!997223 m!3865055))

(declare-fun m!3867663 () Bool)

(assert (=> d!997223 m!3867663))

(declare-fun m!3867665 () Bool)

(assert (=> b!3463185 m!3867665))

(assert (=> b!3461670 d!997223))

(declare-fun b!3463227 () Bool)

(declare-fun e!2145551 () Int)

(declare-fun call!249799 () Int)

(assert (=> b!3463227 (= e!2145551 (- call!249799 0))))

(declare-fun b!3463228 () Bool)

(declare-fun e!2145550 () List!37297)

(assert (=> b!3463228 (= e!2145550 lt!1176869)))

(declare-fun b!3463229 () Bool)

(declare-fun e!2145554 () Bool)

(declare-fun lt!1177736 () List!37297)

(declare-fun e!2145553 () Int)

(assert (=> b!3463229 (= e!2145554 (= (size!28206 lt!1177736) e!2145553))))

(declare-fun c!593103 () Bool)

(assert (=> b!3463229 (= c!593103 (<= 0 0))))

(declare-fun d!997225 () Bool)

(assert (=> d!997225 e!2145554))

(declare-fun res!1397329 () Bool)

(assert (=> d!997225 (=> (not res!1397329) (not e!2145554))))

(assert (=> d!997225 (= res!1397329 (= ((_ map implies) (content!5192 lt!1177736) (content!5192 lt!1176869)) ((as const (InoxSet Token!10246)) true)))))

(declare-fun e!2145552 () List!37297)

(assert (=> d!997225 (= lt!1177736 e!2145552)))

(declare-fun c!593101 () Bool)

(assert (=> d!997225 (= c!593101 ((_ is Nil!37173) lt!1176869))))

(assert (=> d!997225 (= (drop!2012 lt!1176869 0) lt!1177736)))

(declare-fun b!3463230 () Bool)

(assert (=> b!3463230 (= e!2145552 e!2145550)))

(declare-fun c!593100 () Bool)

(assert (=> b!3463230 (= c!593100 (<= 0 0))))

(declare-fun b!3463231 () Bool)

(assert (=> b!3463231 (= e!2145553 call!249799)))

(declare-fun bm!249794 () Bool)

(assert (=> bm!249794 (= call!249799 (size!28206 lt!1176869))))

(declare-fun b!3463232 () Bool)

(assert (=> b!3463232 (= e!2145550 (drop!2012 (t!273044 lt!1176869) (- 0 1)))))

(declare-fun b!3463233 () Bool)

(assert (=> b!3463233 (= e!2145552 Nil!37173)))

(declare-fun b!3463234 () Bool)

(assert (=> b!3463234 (= e!2145553 e!2145551)))

(declare-fun c!593102 () Bool)

(assert (=> b!3463234 (= c!593102 (>= 0 call!249799))))

(declare-fun b!3463235 () Bool)

(assert (=> b!3463235 (= e!2145551 0)))

(assert (= (and d!997225 c!593101) b!3463233))

(assert (= (and d!997225 (not c!593101)) b!3463230))

(assert (= (and b!3463230 c!593100) b!3463228))

(assert (= (and b!3463230 (not c!593100)) b!3463232))

(assert (= (and d!997225 res!1397329) b!3463229))

(assert (= (and b!3463229 c!593103) b!3463231))

(assert (= (and b!3463229 (not c!593103)) b!3463234))

(assert (= (and b!3463234 c!593102) b!3463235))

(assert (= (and b!3463234 (not c!593102)) b!3463227))

(assert (= (or b!3463231 b!3463234 b!3463227) bm!249794))

(declare-fun m!3867695 () Bool)

(assert (=> b!3463229 m!3867695))

(declare-fun m!3867697 () Bool)

(assert (=> d!997225 m!3867697))

(declare-fun m!3867699 () Bool)

(assert (=> d!997225 m!3867699))

(assert (=> bm!249794 m!3867637))

(declare-fun m!3867701 () Bool)

(assert (=> b!3463232 m!3867701))

(assert (=> b!3461670 d!997225))

(declare-fun b!3463236 () Bool)

(declare-fun e!2145557 () Int)

(declare-fun call!249800 () Int)

(assert (=> b!3463236 (= e!2145557 (- call!249800 (+ 0 1)))))

(declare-fun b!3463237 () Bool)

(declare-fun e!2145556 () List!37297)

(assert (=> b!3463237 (= e!2145556 lt!1176869)))

(declare-fun b!3463238 () Bool)

(declare-fun e!2145560 () Bool)

(declare-fun lt!1177737 () List!37297)

(declare-fun e!2145559 () Int)

(assert (=> b!3463238 (= e!2145560 (= (size!28206 lt!1177737) e!2145559))))

(declare-fun c!593107 () Bool)

(assert (=> b!3463238 (= c!593107 (<= (+ 0 1) 0))))

(declare-fun d!997241 () Bool)

(assert (=> d!997241 e!2145560))

(declare-fun res!1397330 () Bool)

(assert (=> d!997241 (=> (not res!1397330) (not e!2145560))))

(assert (=> d!997241 (= res!1397330 (= ((_ map implies) (content!5192 lt!1177737) (content!5192 lt!1176869)) ((as const (InoxSet Token!10246)) true)))))

(declare-fun e!2145558 () List!37297)

(assert (=> d!997241 (= lt!1177737 e!2145558)))

(declare-fun c!593105 () Bool)

(assert (=> d!997241 (= c!593105 ((_ is Nil!37173) lt!1176869))))

(assert (=> d!997241 (= (drop!2012 lt!1176869 (+ 0 1)) lt!1177737)))

(declare-fun b!3463239 () Bool)

(assert (=> b!3463239 (= e!2145558 e!2145556)))

(declare-fun c!593104 () Bool)

(assert (=> b!3463239 (= c!593104 (<= (+ 0 1) 0))))

(declare-fun b!3463240 () Bool)

(assert (=> b!3463240 (= e!2145559 call!249800)))

(declare-fun bm!249795 () Bool)

(assert (=> bm!249795 (= call!249800 (size!28206 lt!1176869))))

(declare-fun b!3463241 () Bool)

(assert (=> b!3463241 (= e!2145556 (drop!2012 (t!273044 lt!1176869) (- (+ 0 1) 1)))))

(declare-fun b!3463242 () Bool)

(assert (=> b!3463242 (= e!2145558 Nil!37173)))

(declare-fun b!3463243 () Bool)

(assert (=> b!3463243 (= e!2145559 e!2145557)))

(declare-fun c!593106 () Bool)

(assert (=> b!3463243 (= c!593106 (>= (+ 0 1) call!249800))))

(declare-fun b!3463244 () Bool)

(assert (=> b!3463244 (= e!2145557 0)))

(assert (= (and d!997241 c!593105) b!3463242))

(assert (= (and d!997241 (not c!593105)) b!3463239))

(assert (= (and b!3463239 c!593104) b!3463237))

(assert (= (and b!3463239 (not c!593104)) b!3463241))

(assert (= (and d!997241 res!1397330) b!3463238))

(assert (= (and b!3463238 c!593107) b!3463240))

(assert (= (and b!3463238 (not c!593107)) b!3463243))

(assert (= (and b!3463243 c!593106) b!3463244))

(assert (= (and b!3463243 (not c!593106)) b!3463236))

(assert (= (or b!3463240 b!3463243 b!3463236) bm!249795))

(declare-fun m!3867707 () Bool)

(assert (=> b!3463238 m!3867707))

(declare-fun m!3867709 () Bool)

(assert (=> d!997241 m!3867709))

(assert (=> d!997241 m!3867699))

(assert (=> bm!249795 m!3867637))

(declare-fun m!3867711 () Bool)

(assert (=> b!3463241 m!3867711))

(assert (=> b!3461670 d!997241))

(declare-fun d!997247 () Bool)

(declare-fun lt!1177739 () Token!10246)

(assert (=> d!997247 (contains!6897 lt!1176873 lt!1177739)))

(declare-fun e!2145564 () Token!10246)

(assert (=> d!997247 (= lt!1177739 e!2145564)))

(declare-fun c!593109 () Bool)

(assert (=> d!997247 (= c!593109 (= 0 0))))

(declare-fun e!2145563 () Bool)

(assert (=> d!997247 e!2145563))

(declare-fun res!1397333 () Bool)

(assert (=> d!997247 (=> (not res!1397333) (not e!2145563))))

(assert (=> d!997247 (= res!1397333 (<= 0 0))))

(assert (=> d!997247 (= (apply!8758 lt!1176873 0) lt!1177739)))

(declare-fun b!3463249 () Bool)

(assert (=> b!3463249 (= e!2145563 (< 0 (size!28206 lt!1176873)))))

(declare-fun b!3463250 () Bool)

(assert (=> b!3463250 (= e!2145564 (head!7322 lt!1176873))))

(declare-fun b!3463251 () Bool)

(assert (=> b!3463251 (= e!2145564 (apply!8758 (tail!5435 lt!1176873) (- 0 1)))))

(assert (= (and d!997247 res!1397333) b!3463249))

(assert (= (and d!997247 c!593109) b!3463250))

(assert (= (and d!997247 (not c!593109)) b!3463251))

(declare-fun m!3867719 () Bool)

(assert (=> d!997247 m!3867719))

(assert (=> b!3463249 m!3867665))

(declare-fun m!3867721 () Bool)

(assert (=> b!3463250 m!3867721))

(declare-fun m!3867723 () Bool)

(assert (=> b!3463251 m!3867723))

(assert (=> b!3463251 m!3867723))

(declare-fun m!3867725 () Bool)

(assert (=> b!3463251 m!3867725))

(assert (=> b!3461670 d!997247))

(declare-fun b!3463252 () Bool)

(declare-fun e!2145566 () Int)

(declare-fun call!249801 () Int)

(assert (=> b!3463252 (= e!2145566 (- call!249801 0))))

(declare-fun b!3463253 () Bool)

(declare-fun e!2145565 () List!37297)

(assert (=> b!3463253 (= e!2145565 lt!1176873)))

(declare-fun b!3463254 () Bool)

(declare-fun e!2145569 () Bool)

(declare-fun lt!1177740 () List!37297)

(declare-fun e!2145568 () Int)

(assert (=> b!3463254 (= e!2145569 (= (size!28206 lt!1177740) e!2145568))))

(declare-fun c!593113 () Bool)

(assert (=> b!3463254 (= c!593113 (<= 0 0))))

(declare-fun d!997251 () Bool)

(assert (=> d!997251 e!2145569))

(declare-fun res!1397334 () Bool)

(assert (=> d!997251 (=> (not res!1397334) (not e!2145569))))

(assert (=> d!997251 (= res!1397334 (= ((_ map implies) (content!5192 lt!1177740) (content!5192 lt!1176873)) ((as const (InoxSet Token!10246)) true)))))

(declare-fun e!2145567 () List!37297)

(assert (=> d!997251 (= lt!1177740 e!2145567)))

(declare-fun c!593111 () Bool)

(assert (=> d!997251 (= c!593111 ((_ is Nil!37173) lt!1176873))))

(assert (=> d!997251 (= (drop!2012 lt!1176873 0) lt!1177740)))

(declare-fun b!3463255 () Bool)

(assert (=> b!3463255 (= e!2145567 e!2145565)))

(declare-fun c!593110 () Bool)

(assert (=> b!3463255 (= c!593110 (<= 0 0))))

(declare-fun b!3463256 () Bool)

(assert (=> b!3463256 (= e!2145568 call!249801)))

(declare-fun bm!249796 () Bool)

(assert (=> bm!249796 (= call!249801 (size!28206 lt!1176873))))

(declare-fun b!3463257 () Bool)

(assert (=> b!3463257 (= e!2145565 (drop!2012 (t!273044 lt!1176873) (- 0 1)))))

(declare-fun b!3463258 () Bool)

(assert (=> b!3463258 (= e!2145567 Nil!37173)))

(declare-fun b!3463259 () Bool)

(assert (=> b!3463259 (= e!2145568 e!2145566)))

(declare-fun c!593112 () Bool)

(assert (=> b!3463259 (= c!593112 (>= 0 call!249801))))

(declare-fun b!3463260 () Bool)

(assert (=> b!3463260 (= e!2145566 0)))

(assert (= (and d!997251 c!593111) b!3463258))

(assert (= (and d!997251 (not c!593111)) b!3463255))

(assert (= (and b!3463255 c!593110) b!3463253))

(assert (= (and b!3463255 (not c!593110)) b!3463257))

(assert (= (and d!997251 res!1397334) b!3463254))

(assert (= (and b!3463254 c!593113) b!3463256))

(assert (= (and b!3463254 (not c!593113)) b!3463259))

(assert (= (and b!3463259 c!593112) b!3463260))

(assert (= (and b!3463259 (not c!593112)) b!3463252))

(assert (= (or b!3463256 b!3463259 b!3463252) bm!249796))

(declare-fun m!3867727 () Bool)

(assert (=> b!3463254 m!3867727))

(declare-fun m!3867729 () Bool)

(assert (=> d!997251 m!3867729))

(declare-fun m!3867731 () Bool)

(assert (=> d!997251 m!3867731))

(assert (=> bm!249796 m!3867665))

(declare-fun m!3867733 () Bool)

(assert (=> b!3463257 m!3867733))

(assert (=> b!3461670 d!997251))

(declare-fun d!997253 () Bool)

(assert (=> d!997253 (= (tail!5435 (drop!2012 lt!1176869 0)) (t!273044 (drop!2012 lt!1176869 0)))))

(assert (=> b!3461670 d!997253))

(assert (=> b!3461670 d!997103))

(declare-fun d!997255 () Bool)

(declare-fun lt!1177741 () BalanceConc!22124)

(assert (=> d!997255 (= (list!13535 lt!1177741) (originalCharacters!6154 (apply!8756 lt!1176620 0)))))

(assert (=> d!997255 (= lt!1177741 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (apply!8756 lt!1176620 0)))) (value!175500 (apply!8756 lt!1176620 0))))))

(assert (=> d!997255 (= (charsOf!3454 (apply!8756 lt!1176620 0)) lt!1177741)))

(declare-fun b_lambda!99793 () Bool)

(assert (=> (not b_lambda!99793) (not d!997255)))

(declare-fun t!273244 () Bool)

(declare-fun tb!188897 () Bool)

(assert (=> (and b!3461071 (= (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))) (toChars!7527 (transformation!5440 (rule!8032 (apply!8756 lt!1176620 0))))) t!273244) tb!188897))

(declare-fun b!3463261 () Bool)

(declare-fun e!2145570 () Bool)

(declare-fun tp!1078345 () Bool)

(assert (=> b!3463261 (= e!2145570 (and (inv!50346 (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (apply!8756 lt!1176620 0)))) (value!175500 (apply!8756 lt!1176620 0))))) tp!1078345))))

(declare-fun result!232910 () Bool)

(assert (=> tb!188897 (= result!232910 (and (inv!50347 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (apply!8756 lt!1176620 0)))) (value!175500 (apply!8756 lt!1176620 0)))) e!2145570))))

(assert (= tb!188897 b!3463261))

(declare-fun m!3867735 () Bool)

(assert (=> b!3463261 m!3867735))

(declare-fun m!3867737 () Bool)

(assert (=> tb!188897 m!3867737))

(assert (=> d!997255 t!273244))

(declare-fun b_and!243691 () Bool)

(assert (= b_and!243669 (and (=> t!273244 result!232910) b_and!243691)))

(declare-fun tb!188899 () Bool)

(declare-fun t!273246 () Bool)

(assert (=> (and b!3461104 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (toChars!7527 (transformation!5440 (rule!8032 (apply!8756 lt!1176620 0))))) t!273246) tb!188899))

(declare-fun result!232912 () Bool)

(assert (= result!232912 result!232910))

(assert (=> d!997255 t!273246))

(declare-fun b_and!243693 () Bool)

(assert (= b_and!243663 (and (=> t!273246 result!232912) b_and!243693)))

(declare-fun tb!188901 () Bool)

(declare-fun t!273248 () Bool)

(assert (=> (and b!3461904 (= (toChars!7527 (transformation!5440 (h!42592 (t!273043 rules!2135)))) (toChars!7527 (transformation!5440 (rule!8032 (apply!8756 lt!1176620 0))))) t!273248) tb!188901))

(declare-fun result!232914 () Bool)

(assert (= result!232914 result!232910))

(assert (=> d!997255 t!273248))

(declare-fun b_and!243695 () Bool)

(assert (= b_and!243667 (and (=> t!273248 result!232914) b_and!243695)))

(declare-fun t!273250 () Bool)

(declare-fun tb!188903 () Bool)

(assert (=> (and b!3461881 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (toChars!7527 (transformation!5440 (rule!8032 (apply!8756 lt!1176620 0))))) t!273250) tb!188903))

(declare-fun result!232916 () Bool)

(assert (= result!232916 result!232910))

(assert (=> d!997255 t!273250))

(declare-fun b_and!243697 () Bool)

(assert (= b_and!243661 (and (=> t!273250 result!232916) b_and!243697)))

(declare-fun tb!188905 () Bool)

(declare-fun t!273252 () Bool)

(assert (=> (and b!3461090 (= (toChars!7527 (transformation!5440 (h!42592 rules!2135))) (toChars!7527 (transformation!5440 (rule!8032 (apply!8756 lt!1176620 0))))) t!273252) tb!188905))

(declare-fun result!232918 () Bool)

(assert (= result!232918 result!232910))

(assert (=> d!997255 t!273252))

(declare-fun b_and!243699 () Bool)

(assert (= b_and!243665 (and (=> t!273252 result!232918) b_and!243699)))

(declare-fun m!3867739 () Bool)

(assert (=> d!997255 m!3867739))

(declare-fun m!3867741 () Bool)

(assert (=> d!997255 m!3867741))

(assert (=> b!3461670 d!997255))

(declare-fun d!997257 () Bool)

(declare-fun lt!1177742 () Bool)

(assert (=> d!997257 (= lt!1177742 (isEmpty!21528 (list!13535 (_2!21582 (lex!2355 thiss!18206 rules!2135 (print!2094 thiss!18206 (singletonSeq!2536 (h!42593 (t!273044 tokens!494)))))))))))

(assert (=> d!997257 (= lt!1177742 (isEmpty!21529 (c!592551 (_2!21582 (lex!2355 thiss!18206 rules!2135 (print!2094 thiss!18206 (singletonSeq!2536 (h!42593 (t!273044 tokens!494)))))))))))

(assert (=> d!997257 (= (isEmpty!21525 (_2!21582 (lex!2355 thiss!18206 rules!2135 (print!2094 thiss!18206 (singletonSeq!2536 (h!42593 (t!273044 tokens!494))))))) lt!1177742)))

(declare-fun bs!560652 () Bool)

(assert (= bs!560652 d!997257))

(declare-fun m!3867743 () Bool)

(assert (=> bs!560652 m!3867743))

(assert (=> bs!560652 m!3867743))

(declare-fun m!3867745 () Bool)

(assert (=> bs!560652 m!3867745))

(declare-fun m!3867747 () Bool)

(assert (=> bs!560652 m!3867747))

(assert (=> b!3461476 d!997257))

(assert (=> b!3461476 d!996769))

(assert (=> b!3461476 d!996771))

(assert (=> b!3461476 d!996269))

(declare-fun d!997259 () Bool)

(assert (=> d!997259 true))

(declare-fun lt!1177755 () Bool)

(assert (=> d!997259 (= lt!1177755 (rulesValidInductive!1854 thiss!18206 rules!2135))))

(declare-fun lambda!121886 () Int)

(declare-fun forall!7930 (List!37296 Int) Bool)

(assert (=> d!997259 (= lt!1177755 (forall!7930 rules!2135 lambda!121886))))

(assert (=> d!997259 (= (rulesValid!2044 thiss!18206 rules!2135) lt!1177755)))

(declare-fun bs!560653 () Bool)

(assert (= bs!560653 d!997259))

(assert (=> bs!560653 m!3864299))

(declare-fun m!3867749 () Bool)

(assert (=> bs!560653 m!3867749))

(assert (=> d!996151 d!997259))

(declare-fun d!997261 () Bool)

(declare-fun e!2145574 () Bool)

(assert (=> d!997261 e!2145574))

(declare-fun res!1397339 () Bool)

(assert (=> d!997261 (=> res!1397339 e!2145574)))

(declare-fun lt!1177756 () Option!7529)

(assert (=> d!997261 (= res!1397339 (isEmpty!21530 lt!1177756))))

(declare-fun e!2145573 () Option!7529)

(assert (=> d!997261 (= lt!1177756 e!2145573)))

(declare-fun c!593116 () Bool)

(declare-fun lt!1177757 () tuple2!36906)

(assert (=> d!997261 (= c!593116 (isEmpty!21528 (_1!21587 lt!1177757)))))

(assert (=> d!997261 (= lt!1177757 (findLongestMatch!826 (regex!5440 (h!42592 rules!2135)) lt!1176597))))

(assert (=> d!997261 (ruleValid!1740 thiss!18206 (h!42592 rules!2135))))

(assert (=> d!997261 (= (maxPrefixOneRule!1736 thiss!18206 (h!42592 rules!2135) lt!1176597) lt!1177756)))

(declare-fun b!3463268 () Bool)

(declare-fun res!1397336 () Bool)

(declare-fun e!2145575 () Bool)

(assert (=> b!3463268 (=> (not res!1397336) (not e!2145575))))

(assert (=> b!3463268 (= res!1397336 (< (size!28201 (_2!21583 (get!11899 lt!1177756))) (size!28201 lt!1176597)))))

(declare-fun b!3463269 () Bool)

(declare-fun res!1397341 () Bool)

(assert (=> b!3463269 (=> (not res!1397341) (not e!2145575))))

(assert (=> b!3463269 (= res!1397341 (= (rule!8032 (_1!21583 (get!11899 lt!1177756))) (h!42592 rules!2135)))))

(declare-fun b!3463270 () Bool)

(assert (=> b!3463270 (= e!2145574 e!2145575)))

(declare-fun res!1397340 () Bool)

(assert (=> b!3463270 (=> (not res!1397340) (not e!2145575))))

(assert (=> b!3463270 (= res!1397340 (matchR!4783 (regex!5440 (h!42592 rules!2135)) (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1177756))))))))

(declare-fun b!3463271 () Bool)

(declare-fun res!1397337 () Bool)

(assert (=> b!3463271 (=> (not res!1397337) (not e!2145575))))

(assert (=> b!3463271 (= res!1397337 (= (++!9165 (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1177756)))) (_2!21583 (get!11899 lt!1177756))) lt!1176597))))

(declare-fun b!3463272 () Bool)

(assert (=> b!3463272 (= e!2145573 (Some!7528 (tuple2!36899 (Token!10247 (apply!8757 (transformation!5440 (h!42592 rules!2135)) (seqFromList!3933 (_1!21587 lt!1177757))) (h!42592 rules!2135) (size!28205 (seqFromList!3933 (_1!21587 lt!1177757))) (_1!21587 lt!1177757)) (_2!21587 lt!1177757))))))

(declare-fun lt!1177759 () Unit!52520)

(assert (=> b!3463272 (= lt!1177759 (longestMatchIsAcceptedByMatchOrIsEmpty!884 (regex!5440 (h!42592 rules!2135)) lt!1176597))))

(declare-fun res!1397335 () Bool)

(assert (=> b!3463272 (= res!1397335 (isEmpty!21528 (_1!21587 (findLongestMatchInner!911 (regex!5440 (h!42592 rules!2135)) Nil!37171 (size!28201 Nil!37171) lt!1176597 lt!1176597 (size!28201 lt!1176597)))))))

(declare-fun e!2145576 () Bool)

(assert (=> b!3463272 (=> res!1397335 e!2145576)))

(assert (=> b!3463272 e!2145576))

(declare-fun lt!1177758 () Unit!52520)

(assert (=> b!3463272 (= lt!1177758 lt!1177759)))

(declare-fun lt!1177760 () Unit!52520)

(assert (=> b!3463272 (= lt!1177760 (lemmaSemiInverse!1261 (transformation!5440 (h!42592 rules!2135)) (seqFromList!3933 (_1!21587 lt!1177757))))))

(declare-fun b!3463273 () Bool)

(assert (=> b!3463273 (= e!2145573 None!7528)))

(declare-fun b!3463274 () Bool)

(declare-fun res!1397338 () Bool)

(assert (=> b!3463274 (=> (not res!1397338) (not e!2145575))))

(assert (=> b!3463274 (= res!1397338 (= (value!175500 (_1!21583 (get!11899 lt!1177756))) (apply!8757 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1177756)))) (seqFromList!3933 (originalCharacters!6154 (_1!21583 (get!11899 lt!1177756)))))))))

(declare-fun b!3463275 () Bool)

(assert (=> b!3463275 (= e!2145575 (= (size!28199 (_1!21583 (get!11899 lt!1177756))) (size!28201 (originalCharacters!6154 (_1!21583 (get!11899 lt!1177756))))))))

(declare-fun b!3463276 () Bool)

(assert (=> b!3463276 (= e!2145576 (matchR!4783 (regex!5440 (h!42592 rules!2135)) (_1!21587 (findLongestMatchInner!911 (regex!5440 (h!42592 rules!2135)) Nil!37171 (size!28201 Nil!37171) lt!1176597 lt!1176597 (size!28201 lt!1176597)))))))

(assert (= (and d!997261 c!593116) b!3463273))

(assert (= (and d!997261 (not c!593116)) b!3463272))

(assert (= (and b!3463272 (not res!1397335)) b!3463276))

(assert (= (and d!997261 (not res!1397339)) b!3463270))

(assert (= (and b!3463270 res!1397340) b!3463271))

(assert (= (and b!3463271 res!1397337) b!3463268))

(assert (= (and b!3463268 res!1397336) b!3463269))

(assert (= (and b!3463269 res!1397341) b!3463274))

(assert (= (and b!3463274 res!1397338) b!3463275))

(declare-fun m!3867775 () Bool)

(assert (=> b!3463268 m!3867775))

(declare-fun m!3867777 () Bool)

(assert (=> b!3463268 m!3867777))

(assert (=> b!3463268 m!3864069))

(assert (=> b!3463270 m!3867775))

(declare-fun m!3867779 () Bool)

(assert (=> b!3463270 m!3867779))

(assert (=> b!3463270 m!3867779))

(declare-fun m!3867781 () Bool)

(assert (=> b!3463270 m!3867781))

(assert (=> b!3463270 m!3867781))

(declare-fun m!3867783 () Bool)

(assert (=> b!3463270 m!3867783))

(declare-fun m!3867785 () Bool)

(assert (=> d!997261 m!3867785))

(declare-fun m!3867787 () Bool)

(assert (=> d!997261 m!3867787))

(declare-fun m!3867789 () Bool)

(assert (=> d!997261 m!3867789))

(declare-fun m!3867791 () Bool)

(assert (=> d!997261 m!3867791))

(assert (=> b!3463271 m!3867775))

(assert (=> b!3463271 m!3867779))

(assert (=> b!3463271 m!3867779))

(assert (=> b!3463271 m!3867781))

(assert (=> b!3463271 m!3867781))

(declare-fun m!3867795 () Bool)

(assert (=> b!3463271 m!3867795))

(declare-fun m!3867797 () Bool)

(assert (=> b!3463272 m!3867797))

(assert (=> b!3463272 m!3864913))

(assert (=> b!3463272 m!3864069))

(declare-fun m!3867799 () Bool)

(assert (=> b!3463272 m!3867799))

(declare-fun m!3867801 () Bool)

(assert (=> b!3463272 m!3867801))

(declare-fun m!3867803 () Bool)

(assert (=> b!3463272 m!3867803))

(declare-fun m!3867805 () Bool)

(assert (=> b!3463272 m!3867805))

(assert (=> b!3463272 m!3864913))

(assert (=> b!3463272 m!3864069))

(assert (=> b!3463272 m!3867803))

(declare-fun m!3867807 () Bool)

(assert (=> b!3463272 m!3867807))

(assert (=> b!3463272 m!3867803))

(assert (=> b!3463272 m!3867803))

(declare-fun m!3867809 () Bool)

(assert (=> b!3463272 m!3867809))

(assert (=> b!3463275 m!3867775))

(declare-fun m!3867811 () Bool)

(assert (=> b!3463275 m!3867811))

(assert (=> b!3463269 m!3867775))

(assert (=> b!3463274 m!3867775))

(declare-fun m!3867813 () Bool)

(assert (=> b!3463274 m!3867813))

(assert (=> b!3463274 m!3867813))

(declare-fun m!3867815 () Bool)

(assert (=> b!3463274 m!3867815))

(assert (=> b!3463276 m!3864913))

(assert (=> b!3463276 m!3864069))

(assert (=> b!3463276 m!3864913))

(assert (=> b!3463276 m!3864069))

(assert (=> b!3463276 m!3867799))

(declare-fun m!3867817 () Bool)

(assert (=> b!3463276 m!3867817))

(assert (=> bm!249604 d!997261))

(declare-fun b!3463279 () Bool)

(declare-fun e!2145578 () List!37295)

(assert (=> b!3463279 (= e!2145578 Nil!37171)))

(declare-fun b!3463281 () Bool)

(declare-fun e!2145579 () List!37295)

(assert (=> b!3463281 (= e!2145579 (list!13542 (xs!14429 (c!592551 lt!1176622))))))

(declare-fun b!3463282 () Bool)

(assert (=> b!3463282 (= e!2145579 (++!9165 (list!13536 (left!29005 (c!592551 lt!1176622))) (list!13536 (right!29335 (c!592551 lt!1176622)))))))

(declare-fun d!997267 () Bool)

(declare-fun c!593118 () Bool)

(assert (=> d!997267 (= c!593118 ((_ is Empty!11255) (c!592551 lt!1176622)))))

(assert (=> d!997267 (= (list!13536 (c!592551 lt!1176622)) e!2145578)))

(declare-fun b!3463280 () Bool)

(assert (=> b!3463280 (= e!2145578 e!2145579)))

(declare-fun c!593119 () Bool)

(assert (=> b!3463280 (= c!593119 ((_ is Leaf!17586) (c!592551 lt!1176622)))))

(assert (= (and d!997267 c!593118) b!3463279))

(assert (= (and d!997267 (not c!593118)) b!3463280))

(assert (= (and b!3463280 c!593119) b!3463281))

(assert (= (and b!3463280 (not c!593119)) b!3463282))

(declare-fun m!3867819 () Bool)

(assert (=> b!3463281 m!3867819))

(declare-fun m!3867821 () Bool)

(assert (=> b!3463282 m!3867821))

(declare-fun m!3867823 () Bool)

(assert (=> b!3463282 m!3867823))

(assert (=> b!3463282 m!3867821))

(assert (=> b!3463282 m!3867823))

(declare-fun m!3867827 () Bool)

(assert (=> b!3463282 m!3867827))

(assert (=> d!996207 d!997267))

(declare-fun d!997269 () Bool)

(declare-fun lt!1177766 () Int)

(assert (=> d!997269 (= lt!1177766 (size!28201 (list!13535 (_2!21582 lt!1176808))))))

(assert (=> d!997269 (= lt!1177766 (size!28209 (c!592551 (_2!21582 lt!1176808))))))

(assert (=> d!997269 (= (size!28205 (_2!21582 lt!1176808)) lt!1177766)))

(declare-fun bs!560656 () Bool)

(assert (= bs!560656 d!997269))

(assert (=> bs!560656 m!3864823))

(assert (=> bs!560656 m!3864823))

(declare-fun m!3867833 () Bool)

(assert (=> bs!560656 m!3867833))

(declare-fun m!3867835 () Bool)

(assert (=> bs!560656 m!3867835))

(assert (=> b!3461533 d!997269))

(declare-fun d!997275 () Bool)

(declare-fun lt!1177768 () Int)

(assert (=> d!997275 (= lt!1177768 (size!28201 (list!13535 lt!1176595)))))

(assert (=> d!997275 (= lt!1177768 (size!28209 (c!592551 lt!1176595)))))

(assert (=> d!997275 (= (size!28205 lt!1176595) lt!1177768)))

(declare-fun bs!560659 () Bool)

(assert (= bs!560659 d!997275))

(assert (=> bs!560659 m!3864825))

(assert (=> bs!560659 m!3864825))

(declare-fun m!3867841 () Bool)

(assert (=> bs!560659 m!3867841))

(declare-fun m!3867845 () Bool)

(assert (=> bs!560659 m!3867845))

(assert (=> b!3461533 d!997275))

(declare-fun d!997277 () Bool)

(declare-fun lt!1177769 () Int)

(assert (=> d!997277 (>= lt!1177769 0)))

(declare-fun e!2145580 () Int)

(assert (=> d!997277 (= lt!1177769 e!2145580)))

(declare-fun c!593120 () Bool)

(assert (=> d!997277 (= c!593120 ((_ is Nil!37171) (t!273042 lt!1176597)))))

(assert (=> d!997277 (= (size!28201 (t!273042 lt!1176597)) lt!1177769)))

(declare-fun b!3463283 () Bool)

(assert (=> b!3463283 (= e!2145580 0)))

(declare-fun b!3463284 () Bool)

(assert (=> b!3463284 (= e!2145580 (+ 1 (size!28201 (t!273042 (t!273042 lt!1176597)))))))

(assert (= (and d!997277 c!593120) b!3463283))

(assert (= (and d!997277 (not c!593120)) b!3463284))

(declare-fun m!3867847 () Bool)

(assert (=> b!3463284 m!3867847))

(assert (=> b!3461662 d!997277))

(declare-fun bm!249798 () Bool)

(declare-fun call!249803 () List!37295)

(declare-fun call!249805 () List!37295)

(declare-fun c!593125 () Bool)

(declare-fun call!249804 () List!37295)

(assert (=> bm!249798 (= call!249805 (++!9165 (ite c!593125 call!249804 call!249803) (ite c!593125 call!249803 call!249804)))))

(declare-fun b!3463299 () Bool)

(declare-fun e!2145588 () List!37295)

(assert (=> b!3463299 (= e!2145588 (Cons!37171 (c!592550 (ite c!592676 (reg!10528 (regex!5440 (rule!8032 separatorToken!241))) (ite c!592675 (regTwo!20911 (regex!5440 (rule!8032 separatorToken!241))) (regOne!20910 (regex!5440 (rule!8032 separatorToken!241)))))) Nil!37171))))

(declare-fun b!3463300 () Bool)

(declare-fun e!2145591 () List!37295)

(assert (=> b!3463300 (= e!2145591 call!249805)))

(declare-fun bm!249799 () Bool)

(assert (=> bm!249799 (= call!249804 (usedCharacters!674 (ite c!593125 (regOne!20911 (ite c!592676 (reg!10528 (regex!5440 (rule!8032 separatorToken!241))) (ite c!592675 (regTwo!20911 (regex!5440 (rule!8032 separatorToken!241))) (regOne!20910 (regex!5440 (rule!8032 separatorToken!241)))))) (regTwo!20910 (ite c!592676 (reg!10528 (regex!5440 (rule!8032 separatorToken!241))) (ite c!592675 (regTwo!20911 (regex!5440 (rule!8032 separatorToken!241))) (regOne!20910 (regex!5440 (rule!8032 separatorToken!241)))))))))))

(declare-fun bm!249800 () Bool)

(declare-fun call!249806 () List!37295)

(declare-fun c!593126 () Bool)

(assert (=> bm!249800 (= call!249806 (usedCharacters!674 (ite c!593126 (reg!10528 (ite c!592676 (reg!10528 (regex!5440 (rule!8032 separatorToken!241))) (ite c!592675 (regTwo!20911 (regex!5440 (rule!8032 separatorToken!241))) (regOne!20910 (regex!5440 (rule!8032 separatorToken!241)))))) (ite c!593125 (regTwo!20911 (ite c!592676 (reg!10528 (regex!5440 (rule!8032 separatorToken!241))) (ite c!592675 (regTwo!20911 (regex!5440 (rule!8032 separatorToken!241))) (regOne!20910 (regex!5440 (rule!8032 separatorToken!241)))))) (regOne!20910 (ite c!592676 (reg!10528 (regex!5440 (rule!8032 separatorToken!241))) (ite c!592675 (regTwo!20911 (regex!5440 (rule!8032 separatorToken!241))) (regOne!20910 (regex!5440 (rule!8032 separatorToken!241))))))))))))

(declare-fun bm!249801 () Bool)

(assert (=> bm!249801 (= call!249803 call!249806)))

(declare-fun b!3463302 () Bool)

(declare-fun e!2145589 () List!37295)

(assert (=> b!3463302 (= e!2145589 e!2145588)))

(declare-fun c!593124 () Bool)

(assert (=> b!3463302 (= c!593124 ((_ is ElementMatch!10199) (ite c!592676 (reg!10528 (regex!5440 (rule!8032 separatorToken!241))) (ite c!592675 (regTwo!20911 (regex!5440 (rule!8032 separatorToken!241))) (regOne!20910 (regex!5440 (rule!8032 separatorToken!241)))))))))

(declare-fun b!3463303 () Bool)

(assert (=> b!3463303 (= e!2145589 Nil!37171)))

(declare-fun b!3463304 () Bool)

(declare-fun e!2145590 () List!37295)

(assert (=> b!3463304 (= e!2145590 e!2145591)))

(assert (=> b!3463304 (= c!593125 ((_ is Union!10199) (ite c!592676 (reg!10528 (regex!5440 (rule!8032 separatorToken!241))) (ite c!592675 (regTwo!20911 (regex!5440 (rule!8032 separatorToken!241))) (regOne!20910 (regex!5440 (rule!8032 separatorToken!241)))))))))

(declare-fun b!3463305 () Bool)

(assert (=> b!3463305 (= e!2145591 call!249805)))

(declare-fun b!3463306 () Bool)

(assert (=> b!3463306 (= e!2145590 call!249806)))

(declare-fun b!3463301 () Bool)

(assert (=> b!3463301 (= c!593126 ((_ is Star!10199) (ite c!592676 (reg!10528 (regex!5440 (rule!8032 separatorToken!241))) (ite c!592675 (regTwo!20911 (regex!5440 (rule!8032 separatorToken!241))) (regOne!20910 (regex!5440 (rule!8032 separatorToken!241)))))))))

(assert (=> b!3463301 (= e!2145588 e!2145590)))

(declare-fun c!593127 () Bool)

(declare-fun d!997281 () Bool)

(assert (=> d!997281 (= c!593127 (or ((_ is EmptyExpr!10199) (ite c!592676 (reg!10528 (regex!5440 (rule!8032 separatorToken!241))) (ite c!592675 (regTwo!20911 (regex!5440 (rule!8032 separatorToken!241))) (regOne!20910 (regex!5440 (rule!8032 separatorToken!241)))))) ((_ is EmptyLang!10199) (ite c!592676 (reg!10528 (regex!5440 (rule!8032 separatorToken!241))) (ite c!592675 (regTwo!20911 (regex!5440 (rule!8032 separatorToken!241))) (regOne!20910 (regex!5440 (rule!8032 separatorToken!241))))))))))

(assert (=> d!997281 (= (usedCharacters!674 (ite c!592676 (reg!10528 (regex!5440 (rule!8032 separatorToken!241))) (ite c!592675 (regTwo!20911 (regex!5440 (rule!8032 separatorToken!241))) (regOne!20910 (regex!5440 (rule!8032 separatorToken!241)))))) e!2145589)))

(assert (= (and d!997281 c!593127) b!3463303))

(assert (= (and d!997281 (not c!593127)) b!3463302))

(assert (= (and b!3463302 c!593124) b!3463299))

(assert (= (and b!3463302 (not c!593124)) b!3463301))

(assert (= (and b!3463301 c!593126) b!3463306))

(assert (= (and b!3463301 (not c!593126)) b!3463304))

(assert (= (and b!3463304 c!593125) b!3463300))

(assert (= (and b!3463304 (not c!593125)) b!3463305))

(assert (= (or b!3463300 b!3463305) bm!249801))

(assert (= (or b!3463300 b!3463305) bm!249799))

(assert (= (or b!3463300 b!3463305) bm!249798))

(assert (= (or b!3463306 bm!249801) bm!249800))

(declare-fun m!3867851 () Bool)

(assert (=> bm!249798 m!3867851))

(declare-fun m!3867855 () Bool)

(assert (=> bm!249799 m!3867855))

(declare-fun m!3867857 () Bool)

(assert (=> bm!249800 m!3867857))

(assert (=> bm!249635 d!997281))

(assert (=> b!3461308 d!996323))

(declare-fun b!3463307 () Bool)

(declare-fun res!1397354 () Bool)

(declare-fun e!2145596 () Bool)

(assert (=> b!3463307 (=> (not res!1397354) (not e!2145596))))

(declare-fun call!249807 () Bool)

(assert (=> b!3463307 (= res!1397354 (not call!249807))))

(declare-fun b!3463308 () Bool)

(declare-fun res!1397352 () Bool)

(declare-fun e!2145598 () Bool)

(assert (=> b!3463308 (=> res!1397352 e!2145598)))

(assert (=> b!3463308 (= res!1397352 e!2145596)))

(declare-fun res!1397353 () Bool)

(assert (=> b!3463308 (=> (not res!1397353) (not e!2145596))))

(declare-fun lt!1177771 () Bool)

(assert (=> b!3463308 (= res!1397353 lt!1177771)))

(declare-fun b!3463309 () Bool)

(declare-fun e!2145592 () Bool)

(assert (=> b!3463309 (= e!2145592 (= lt!1177771 call!249807))))

(declare-fun b!3463310 () Bool)

(declare-fun e!2145595 () Bool)

(declare-fun e!2145593 () Bool)

(assert (=> b!3463310 (= e!2145595 e!2145593)))

(declare-fun res!1397355 () Bool)

(assert (=> b!3463310 (=> res!1397355 e!2145593)))

(assert (=> b!3463310 (= res!1397355 call!249807)))

(declare-fun b!3463311 () Bool)

(declare-fun e!2145594 () Bool)

(assert (=> b!3463311 (= e!2145594 (nullable!3489 (regex!5440 (rule!8032 (h!42593 tokens!494)))))))

(declare-fun b!3463312 () Bool)

(declare-fun res!1397350 () Bool)

(assert (=> b!3463312 (=> (not res!1397350) (not e!2145596))))

(assert (=> b!3463312 (= res!1397350 (isEmpty!21528 (tail!5434 (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1176835)))))))))

(declare-fun b!3463313 () Bool)

(declare-fun e!2145597 () Bool)

(assert (=> b!3463313 (= e!2145592 e!2145597)))

(declare-fun c!593128 () Bool)

(assert (=> b!3463313 (= c!593128 ((_ is EmptyLang!10199) (regex!5440 (rule!8032 (h!42593 tokens!494)))))))

(declare-fun b!3463314 () Bool)

(declare-fun res!1397351 () Bool)

(assert (=> b!3463314 (=> res!1397351 e!2145598)))

(assert (=> b!3463314 (= res!1397351 (not ((_ is ElementMatch!10199) (regex!5440 (rule!8032 (h!42593 tokens!494))))))))

(assert (=> b!3463314 (= e!2145597 e!2145598)))

(declare-fun b!3463315 () Bool)

(assert (=> b!3463315 (= e!2145598 e!2145595)))

(declare-fun res!1397357 () Bool)

(assert (=> b!3463315 (=> (not res!1397357) (not e!2145595))))

(assert (=> b!3463315 (= res!1397357 (not lt!1177771))))

(declare-fun b!3463316 () Bool)

(assert (=> b!3463316 (= e!2145597 (not lt!1177771))))

(declare-fun b!3463317 () Bool)

(declare-fun res!1397356 () Bool)

(assert (=> b!3463317 (=> res!1397356 e!2145593)))

(assert (=> b!3463317 (= res!1397356 (not (isEmpty!21528 (tail!5434 (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1176835))))))))))

(declare-fun b!3463318 () Bool)

(assert (=> b!3463318 (= e!2145594 (matchR!4783 (derivativeStep!3042 (regex!5440 (rule!8032 (h!42593 tokens!494))) (head!7321 (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1176835)))))) (tail!5434 (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1176835)))))))))

(declare-fun d!997283 () Bool)

(assert (=> d!997283 e!2145592))

(declare-fun c!593129 () Bool)

(assert (=> d!997283 (= c!593129 ((_ is EmptyExpr!10199) (regex!5440 (rule!8032 (h!42593 tokens!494)))))))

(assert (=> d!997283 (= lt!1177771 e!2145594)))

(declare-fun c!593130 () Bool)

(assert (=> d!997283 (= c!593130 (isEmpty!21528 (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1176835))))))))

(assert (=> d!997283 (validRegex!4645 (regex!5440 (rule!8032 (h!42593 tokens!494))))))

(assert (=> d!997283 (= (matchR!4783 (regex!5440 (rule!8032 (h!42593 tokens!494))) (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1176835))))) lt!1177771)))

(declare-fun bm!249802 () Bool)

(assert (=> bm!249802 (= call!249807 (isEmpty!21528 (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1176835))))))))

(declare-fun b!3463319 () Bool)

(assert (=> b!3463319 (= e!2145593 (not (= (head!7321 (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1176835))))) (c!592550 (regex!5440 (rule!8032 (h!42593 tokens!494)))))))))

(declare-fun b!3463320 () Bool)

(assert (=> b!3463320 (= e!2145596 (= (head!7321 (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1176835))))) (c!592550 (regex!5440 (rule!8032 (h!42593 tokens!494))))))))

(assert (= (and d!997283 c!593130) b!3463311))

(assert (= (and d!997283 (not c!593130)) b!3463318))

(assert (= (and d!997283 c!593129) b!3463309))

(assert (= (and d!997283 (not c!593129)) b!3463313))

(assert (= (and b!3463313 c!593128) b!3463316))

(assert (= (and b!3463313 (not c!593128)) b!3463314))

(assert (= (and b!3463314 (not res!1397351)) b!3463308))

(assert (= (and b!3463308 res!1397353) b!3463307))

(assert (= (and b!3463307 res!1397354) b!3463312))

(assert (= (and b!3463312 res!1397350) b!3463320))

(assert (= (and b!3463308 (not res!1397352)) b!3463315))

(assert (= (and b!3463315 res!1397357) b!3463310))

(assert (= (and b!3463310 (not res!1397355)) b!3463317))

(assert (= (and b!3463317 (not res!1397356)) b!3463319))

(assert (= (or b!3463309 b!3463307 b!3463310) bm!249802))

(assert (=> b!3463318 m!3864897))

(declare-fun m!3867869 () Bool)

(assert (=> b!3463318 m!3867869))

(assert (=> b!3463318 m!3867869))

(declare-fun m!3867871 () Bool)

(assert (=> b!3463318 m!3867871))

(assert (=> b!3463318 m!3864897))

(declare-fun m!3867873 () Bool)

(assert (=> b!3463318 m!3867873))

(assert (=> b!3463318 m!3867871))

(assert (=> b!3463318 m!3867873))

(declare-fun m!3867875 () Bool)

(assert (=> b!3463318 m!3867875))

(assert (=> b!3463320 m!3864897))

(assert (=> b!3463320 m!3867869))

(assert (=> d!997283 m!3864897))

(declare-fun m!3867877 () Bool)

(assert (=> d!997283 m!3867877))

(assert (=> d!997283 m!3865991))

(assert (=> b!3463311 m!3866023))

(assert (=> b!3463319 m!3864897))

(assert (=> b!3463319 m!3867869))

(assert (=> bm!249802 m!3864897))

(assert (=> bm!249802 m!3867877))

(assert (=> b!3463317 m!3864897))

(assert (=> b!3463317 m!3867873))

(assert (=> b!3463317 m!3867873))

(declare-fun m!3867879 () Bool)

(assert (=> b!3463317 m!3867879))

(assert (=> b!3463312 m!3864897))

(assert (=> b!3463312 m!3867873))

(assert (=> b!3463312 m!3867873))

(assert (=> b!3463312 m!3867879))

(assert (=> b!3461585 d!997283))

(assert (=> b!3461585 d!997177))

(assert (=> b!3461585 d!997179))

(assert (=> b!3461585 d!996473))

(declare-fun bs!560660 () Bool)

(declare-fun d!997289 () Bool)

(assert (= bs!560660 (and d!997289 d!996621)))

(declare-fun lambda!121887 () Int)

(assert (=> bs!560660 (= (= (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (toValue!7668 (transformation!5440 (rule!8032 separatorToken!241)))) (= lambda!121887 lambda!121880))))

(assert (=> d!997289 true))

(assert (=> d!997289 (< (dynLambda!15664 order!19805 (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) (dynLambda!15675 order!19815 lambda!121887))))

(assert (=> d!997289 (= (equivClasses!2183 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) (Forall2!936 lambda!121887))))

(declare-fun bs!560661 () Bool)

(assert (= bs!560661 d!997289))

(declare-fun m!3867881 () Bool)

(assert (=> bs!560661 m!3867881))

(assert (=> b!3461195 d!997289))

(declare-fun call!249810 () List!37295)

(declare-fun c!593133 () Bool)

(declare-fun call!249808 () List!37295)

(declare-fun bm!249803 () Bool)

(declare-fun call!249809 () List!37295)

(assert (=> bm!249803 (= call!249810 (++!9165 (ite c!593133 call!249809 call!249808) (ite c!593133 call!249808 call!249809)))))

(declare-fun b!3463323 () Bool)

(declare-fun e!2145600 () List!37295)

(assert (=> b!3463323 (= e!2145600 (Cons!37171 (c!592550 (ite c!592655 (regOne!20911 (regex!5440 (rule!8032 (h!42593 tokens!494)))) (regTwo!20910 (regex!5440 (rule!8032 (h!42593 tokens!494)))))) Nil!37171))))

(declare-fun b!3463324 () Bool)

(declare-fun e!2145603 () List!37295)

(assert (=> b!3463324 (= e!2145603 call!249810)))

(declare-fun bm!249804 () Bool)

(assert (=> bm!249804 (= call!249809 (usedCharacters!674 (ite c!593133 (regOne!20911 (ite c!592655 (regOne!20911 (regex!5440 (rule!8032 (h!42593 tokens!494)))) (regTwo!20910 (regex!5440 (rule!8032 (h!42593 tokens!494)))))) (regTwo!20910 (ite c!592655 (regOne!20911 (regex!5440 (rule!8032 (h!42593 tokens!494)))) (regTwo!20910 (regex!5440 (rule!8032 (h!42593 tokens!494)))))))))))

(declare-fun c!593134 () Bool)

(declare-fun call!249811 () List!37295)

(declare-fun bm!249805 () Bool)

(assert (=> bm!249805 (= call!249811 (usedCharacters!674 (ite c!593134 (reg!10528 (ite c!592655 (regOne!20911 (regex!5440 (rule!8032 (h!42593 tokens!494)))) (regTwo!20910 (regex!5440 (rule!8032 (h!42593 tokens!494)))))) (ite c!593133 (regTwo!20911 (ite c!592655 (regOne!20911 (regex!5440 (rule!8032 (h!42593 tokens!494)))) (regTwo!20910 (regex!5440 (rule!8032 (h!42593 tokens!494)))))) (regOne!20910 (ite c!592655 (regOne!20911 (regex!5440 (rule!8032 (h!42593 tokens!494)))) (regTwo!20910 (regex!5440 (rule!8032 (h!42593 tokens!494))))))))))))

(declare-fun bm!249806 () Bool)

(assert (=> bm!249806 (= call!249808 call!249811)))

(declare-fun b!3463326 () Bool)

(declare-fun e!2145601 () List!37295)

(assert (=> b!3463326 (= e!2145601 e!2145600)))

(declare-fun c!593132 () Bool)

(assert (=> b!3463326 (= c!593132 ((_ is ElementMatch!10199) (ite c!592655 (regOne!20911 (regex!5440 (rule!8032 (h!42593 tokens!494)))) (regTwo!20910 (regex!5440 (rule!8032 (h!42593 tokens!494)))))))))

(declare-fun b!3463327 () Bool)

(assert (=> b!3463327 (= e!2145601 Nil!37171)))

(declare-fun b!3463328 () Bool)

(declare-fun e!2145602 () List!37295)

(assert (=> b!3463328 (= e!2145602 e!2145603)))

(assert (=> b!3463328 (= c!593133 ((_ is Union!10199) (ite c!592655 (regOne!20911 (regex!5440 (rule!8032 (h!42593 tokens!494)))) (regTwo!20910 (regex!5440 (rule!8032 (h!42593 tokens!494)))))))))

(declare-fun b!3463329 () Bool)

(assert (=> b!3463329 (= e!2145603 call!249810)))

(declare-fun b!3463330 () Bool)

(assert (=> b!3463330 (= e!2145602 call!249811)))

(declare-fun b!3463325 () Bool)

(assert (=> b!3463325 (= c!593134 ((_ is Star!10199) (ite c!592655 (regOne!20911 (regex!5440 (rule!8032 (h!42593 tokens!494)))) (regTwo!20910 (regex!5440 (rule!8032 (h!42593 tokens!494)))))))))

(assert (=> b!3463325 (= e!2145600 e!2145602)))

(declare-fun d!997291 () Bool)

(declare-fun c!593135 () Bool)

(assert (=> d!997291 (= c!593135 (or ((_ is EmptyExpr!10199) (ite c!592655 (regOne!20911 (regex!5440 (rule!8032 (h!42593 tokens!494)))) (regTwo!20910 (regex!5440 (rule!8032 (h!42593 tokens!494)))))) ((_ is EmptyLang!10199) (ite c!592655 (regOne!20911 (regex!5440 (rule!8032 (h!42593 tokens!494)))) (regTwo!20910 (regex!5440 (rule!8032 (h!42593 tokens!494))))))))))

(assert (=> d!997291 (= (usedCharacters!674 (ite c!592655 (regOne!20911 (regex!5440 (rule!8032 (h!42593 tokens!494)))) (regTwo!20910 (regex!5440 (rule!8032 (h!42593 tokens!494)))))) e!2145601)))

(assert (= (and d!997291 c!593135) b!3463327))

(assert (= (and d!997291 (not c!593135)) b!3463326))

(assert (= (and b!3463326 c!593132) b!3463323))

(assert (= (and b!3463326 (not c!593132)) b!3463325))

(assert (= (and b!3463325 c!593134) b!3463330))

(assert (= (and b!3463325 (not c!593134)) b!3463328))

(assert (= (and b!3463328 c!593133) b!3463324))

(assert (= (and b!3463328 (not c!593133)) b!3463329))

(assert (= (or b!3463324 b!3463329) bm!249806))

(assert (= (or b!3463324 b!3463329) bm!249804))

(assert (= (or b!3463324 b!3463329) bm!249803))

(assert (= (or b!3463330 bm!249806) bm!249805))

(declare-fun m!3867883 () Bool)

(assert (=> bm!249803 m!3867883))

(declare-fun m!3867885 () Bool)

(assert (=> bm!249804 m!3867885))

(declare-fun m!3867887 () Bool)

(assert (=> bm!249805 m!3867887))

(assert (=> bm!249630 d!997291))

(declare-fun b!3463331 () Bool)

(declare-fun res!1397362 () Bool)

(declare-fun e!2145608 () Bool)

(assert (=> b!3463331 (=> (not res!1397362) (not e!2145608))))

(declare-fun call!249812 () Bool)

(assert (=> b!3463331 (= res!1397362 (not call!249812))))

(declare-fun b!3463332 () Bool)

(declare-fun res!1397360 () Bool)

(declare-fun e!2145610 () Bool)

(assert (=> b!3463332 (=> res!1397360 e!2145610)))

(assert (=> b!3463332 (= res!1397360 e!2145608)))

(declare-fun res!1397361 () Bool)

(assert (=> b!3463332 (=> (not res!1397361) (not e!2145608))))

(declare-fun lt!1177772 () Bool)

(assert (=> b!3463332 (= res!1397361 lt!1177772)))

(declare-fun b!3463333 () Bool)

(declare-fun e!2145604 () Bool)

(assert (=> b!3463333 (= e!2145604 (= lt!1177772 call!249812))))

(declare-fun b!3463334 () Bool)

(declare-fun e!2145607 () Bool)

(declare-fun e!2145605 () Bool)

(assert (=> b!3463334 (= e!2145607 e!2145605)))

(declare-fun res!1397363 () Bool)

(assert (=> b!3463334 (=> res!1397363 e!2145605)))

(assert (=> b!3463334 (= res!1397363 call!249812)))

(declare-fun b!3463335 () Bool)

(declare-fun e!2145606 () Bool)

(assert (=> b!3463335 (= e!2145606 (nullable!3489 (derivativeStep!3042 (regex!5440 (rule!8032 separatorToken!241)) (head!7321 lt!1176614))))))

(declare-fun b!3463336 () Bool)

(declare-fun res!1397358 () Bool)

(assert (=> b!3463336 (=> (not res!1397358) (not e!2145608))))

(assert (=> b!3463336 (= res!1397358 (isEmpty!21528 (tail!5434 (tail!5434 lt!1176614))))))

(declare-fun b!3463337 () Bool)

(declare-fun e!2145609 () Bool)

(assert (=> b!3463337 (= e!2145604 e!2145609)))

(declare-fun c!593136 () Bool)

(assert (=> b!3463337 (= c!593136 ((_ is EmptyLang!10199) (derivativeStep!3042 (regex!5440 (rule!8032 separatorToken!241)) (head!7321 lt!1176614))))))

(declare-fun b!3463338 () Bool)

(declare-fun res!1397359 () Bool)

(assert (=> b!3463338 (=> res!1397359 e!2145610)))

(assert (=> b!3463338 (= res!1397359 (not ((_ is ElementMatch!10199) (derivativeStep!3042 (regex!5440 (rule!8032 separatorToken!241)) (head!7321 lt!1176614)))))))

(assert (=> b!3463338 (= e!2145609 e!2145610)))

(declare-fun b!3463339 () Bool)

(assert (=> b!3463339 (= e!2145610 e!2145607)))

(declare-fun res!1397365 () Bool)

(assert (=> b!3463339 (=> (not res!1397365) (not e!2145607))))

(assert (=> b!3463339 (= res!1397365 (not lt!1177772))))

(declare-fun b!3463340 () Bool)

(assert (=> b!3463340 (= e!2145609 (not lt!1177772))))

(declare-fun b!3463341 () Bool)

(declare-fun res!1397364 () Bool)

(assert (=> b!3463341 (=> res!1397364 e!2145605)))

(assert (=> b!3463341 (= res!1397364 (not (isEmpty!21528 (tail!5434 (tail!5434 lt!1176614)))))))

(declare-fun b!3463342 () Bool)

(assert (=> b!3463342 (= e!2145606 (matchR!4783 (derivativeStep!3042 (derivativeStep!3042 (regex!5440 (rule!8032 separatorToken!241)) (head!7321 lt!1176614)) (head!7321 (tail!5434 lt!1176614))) (tail!5434 (tail!5434 lt!1176614))))))

(declare-fun d!997293 () Bool)

(assert (=> d!997293 e!2145604))

(declare-fun c!593137 () Bool)

(assert (=> d!997293 (= c!593137 ((_ is EmptyExpr!10199) (derivativeStep!3042 (regex!5440 (rule!8032 separatorToken!241)) (head!7321 lt!1176614))))))

(assert (=> d!997293 (= lt!1177772 e!2145606)))

(declare-fun c!593138 () Bool)

(assert (=> d!997293 (= c!593138 (isEmpty!21528 (tail!5434 lt!1176614)))))

(assert (=> d!997293 (validRegex!4645 (derivativeStep!3042 (regex!5440 (rule!8032 separatorToken!241)) (head!7321 lt!1176614)))))

(assert (=> d!997293 (= (matchR!4783 (derivativeStep!3042 (regex!5440 (rule!8032 separatorToken!241)) (head!7321 lt!1176614)) (tail!5434 lt!1176614)) lt!1177772)))

(declare-fun bm!249807 () Bool)

(assert (=> bm!249807 (= call!249812 (isEmpty!21528 (tail!5434 lt!1176614)))))

(declare-fun b!3463343 () Bool)

(assert (=> b!3463343 (= e!2145605 (not (= (head!7321 (tail!5434 lt!1176614)) (c!592550 (derivativeStep!3042 (regex!5440 (rule!8032 separatorToken!241)) (head!7321 lt!1176614))))))))

(declare-fun b!3463344 () Bool)

(assert (=> b!3463344 (= e!2145608 (= (head!7321 (tail!5434 lt!1176614)) (c!592550 (derivativeStep!3042 (regex!5440 (rule!8032 separatorToken!241)) (head!7321 lt!1176614)))))))

(assert (= (and d!997293 c!593138) b!3463335))

(assert (= (and d!997293 (not c!593138)) b!3463342))

(assert (= (and d!997293 c!593137) b!3463333))

(assert (= (and d!997293 (not c!593137)) b!3463337))

(assert (= (and b!3463337 c!593136) b!3463340))

(assert (= (and b!3463337 (not c!593136)) b!3463338))

(assert (= (and b!3463338 (not res!1397359)) b!3463332))

(assert (= (and b!3463332 res!1397361) b!3463331))

(assert (= (and b!3463331 res!1397362) b!3463336))

(assert (= (and b!3463336 res!1397358) b!3463344))

(assert (= (and b!3463332 (not res!1397360)) b!3463339))

(assert (= (and b!3463339 res!1397365) b!3463334))

(assert (= (and b!3463334 (not res!1397363)) b!3463341))

(assert (= (and b!3463341 (not res!1397364)) b!3463343))

(assert (= (or b!3463333 b!3463331 b!3463334) bm!249807))

(assert (=> b!3463342 m!3864225))

(assert (=> b!3463342 m!3865839))

(assert (=> b!3463342 m!3864223))

(assert (=> b!3463342 m!3865839))

(declare-fun m!3867889 () Bool)

(assert (=> b!3463342 m!3867889))

(assert (=> b!3463342 m!3864225))

(assert (=> b!3463342 m!3865843))

(assert (=> b!3463342 m!3867889))

(assert (=> b!3463342 m!3865843))

(declare-fun m!3867891 () Bool)

(assert (=> b!3463342 m!3867891))

(assert (=> b!3463344 m!3864225))

(assert (=> b!3463344 m!3865839))

(assert (=> d!997293 m!3864225))

(assert (=> d!997293 m!3864233))

(assert (=> d!997293 m!3864223))

(declare-fun m!3867893 () Bool)

(assert (=> d!997293 m!3867893))

(assert (=> b!3463335 m!3864223))

(declare-fun m!3867895 () Bool)

(assert (=> b!3463335 m!3867895))

(assert (=> b!3463343 m!3864225))

(assert (=> b!3463343 m!3865839))

(assert (=> bm!249807 m!3864225))

(assert (=> bm!249807 m!3864233))

(assert (=> b!3463341 m!3864225))

(assert (=> b!3463341 m!3865843))

(assert (=> b!3463341 m!3865843))

(assert (=> b!3463341 m!3865851))

(assert (=> b!3463336 m!3864225))

(assert (=> b!3463336 m!3865843))

(assert (=> b!3463336 m!3865843))

(assert (=> b!3463336 m!3865851))

(assert (=> b!3461184 d!997293))

(declare-fun b!3463345 () Bool)

(declare-fun e!2145615 () Regex!10199)

(declare-fun e!2145612 () Regex!10199)

(assert (=> b!3463345 (= e!2145615 e!2145612)))

(declare-fun c!593142 () Bool)

(assert (=> b!3463345 (= c!593142 ((_ is Star!10199) (regex!5440 (rule!8032 separatorToken!241))))))

(declare-fun b!3463346 () Bool)

(declare-fun c!593140 () Bool)

(assert (=> b!3463346 (= c!593140 (nullable!3489 (regOne!20910 (regex!5440 (rule!8032 separatorToken!241)))))))

(declare-fun e!2145614 () Regex!10199)

(assert (=> b!3463346 (= e!2145612 e!2145614)))

(declare-fun b!3463347 () Bool)

(declare-fun call!249815 () Regex!10199)

(assert (=> b!3463347 (= e!2145614 (Union!10199 (Concat!15869 call!249815 (regTwo!20910 (regex!5440 (rule!8032 separatorToken!241)))) EmptyLang!10199))))

(declare-fun bm!249808 () Bool)

(declare-fun call!249814 () Regex!10199)

(declare-fun c!593143 () Bool)

(assert (=> bm!249808 (= call!249814 (derivativeStep!3042 (ite c!593143 (regTwo!20911 (regex!5440 (rule!8032 separatorToken!241))) (regTwo!20910 (regex!5440 (rule!8032 separatorToken!241)))) (head!7321 lt!1176614)))))

(declare-fun b!3463348 () Bool)

(declare-fun e!2145611 () Regex!10199)

(declare-fun e!2145613 () Regex!10199)

(assert (=> b!3463348 (= e!2145611 e!2145613)))

(declare-fun c!593141 () Bool)

(assert (=> b!3463348 (= c!593141 ((_ is ElementMatch!10199) (regex!5440 (rule!8032 separatorToken!241))))))

(declare-fun bm!249809 () Bool)

(declare-fun call!249813 () Regex!10199)

(declare-fun call!249816 () Regex!10199)

(assert (=> bm!249809 (= call!249813 call!249816)))

(declare-fun b!3463349 () Bool)

(assert (=> b!3463349 (= e!2145612 (Concat!15869 call!249813 (regex!5440 (rule!8032 separatorToken!241))))))

(declare-fun d!997295 () Bool)

(declare-fun lt!1177773 () Regex!10199)

(assert (=> d!997295 (validRegex!4645 lt!1177773)))

(assert (=> d!997295 (= lt!1177773 e!2145611)))

(declare-fun c!593139 () Bool)

(assert (=> d!997295 (= c!593139 (or ((_ is EmptyExpr!10199) (regex!5440 (rule!8032 separatorToken!241))) ((_ is EmptyLang!10199) (regex!5440 (rule!8032 separatorToken!241)))))))

(assert (=> d!997295 (validRegex!4645 (regex!5440 (rule!8032 separatorToken!241)))))

(assert (=> d!997295 (= (derivativeStep!3042 (regex!5440 (rule!8032 separatorToken!241)) (head!7321 lt!1176614)) lt!1177773)))

(declare-fun b!3463350 () Bool)

(assert (=> b!3463350 (= e!2145613 (ite (= (head!7321 lt!1176614) (c!592550 (regex!5440 (rule!8032 separatorToken!241)))) EmptyExpr!10199 EmptyLang!10199))))

(declare-fun b!3463351 () Bool)

(assert (=> b!3463351 (= e!2145611 EmptyLang!10199)))

(declare-fun b!3463352 () Bool)

(assert (=> b!3463352 (= e!2145615 (Union!10199 call!249816 call!249814))))

(declare-fun b!3463353 () Bool)

(assert (=> b!3463353 (= c!593143 ((_ is Union!10199) (regex!5440 (rule!8032 separatorToken!241))))))

(assert (=> b!3463353 (= e!2145613 e!2145615)))

(declare-fun bm!249810 () Bool)

(assert (=> bm!249810 (= call!249815 call!249813)))

(declare-fun b!3463354 () Bool)

(assert (=> b!3463354 (= e!2145614 (Union!10199 (Concat!15869 call!249815 (regTwo!20910 (regex!5440 (rule!8032 separatorToken!241)))) call!249814))))

(declare-fun bm!249811 () Bool)

(assert (=> bm!249811 (= call!249816 (derivativeStep!3042 (ite c!593143 (regOne!20911 (regex!5440 (rule!8032 separatorToken!241))) (ite c!593142 (reg!10528 (regex!5440 (rule!8032 separatorToken!241))) (regOne!20910 (regex!5440 (rule!8032 separatorToken!241))))) (head!7321 lt!1176614)))))

(assert (= (and d!997295 c!593139) b!3463351))

(assert (= (and d!997295 (not c!593139)) b!3463348))

(assert (= (and b!3463348 c!593141) b!3463350))

(assert (= (and b!3463348 (not c!593141)) b!3463353))

(assert (= (and b!3463353 c!593143) b!3463352))

(assert (= (and b!3463353 (not c!593143)) b!3463345))

(assert (= (and b!3463345 c!593142) b!3463349))

(assert (= (and b!3463345 (not c!593142)) b!3463346))

(assert (= (and b!3463346 c!593140) b!3463354))

(assert (= (and b!3463346 (not c!593140)) b!3463347))

(assert (= (or b!3463354 b!3463347) bm!249810))

(assert (= (or b!3463349 bm!249810) bm!249809))

(assert (= (or b!3463352 bm!249809) bm!249811))

(assert (= (or b!3463352 b!3463354) bm!249808))

(declare-fun m!3867897 () Bool)

(assert (=> b!3463346 m!3867897))

(assert (=> bm!249808 m!3864037))

(declare-fun m!3867899 () Bool)

(assert (=> bm!249808 m!3867899))

(declare-fun m!3867901 () Bool)

(assert (=> d!997295 m!3867901))

(assert (=> d!997295 m!3864215))

(assert (=> bm!249811 m!3864037))

(declare-fun m!3867903 () Bool)

(assert (=> bm!249811 m!3867903))

(assert (=> b!3461184 d!997295))

(assert (=> b!3461184 d!996263))

(assert (=> b!3461184 d!996585))

(declare-fun d!997297 () Bool)

(declare-fun res!1397366 () Bool)

(declare-fun e!2145616 () Bool)

(assert (=> d!997297 (=> res!1397366 e!2145616)))

(assert (=> d!997297 (= res!1397366 ((_ is Nil!37173) (list!13537 (seqFromList!3934 tokens!494))))))

(assert (=> d!997297 (= (forall!7925 (list!13537 (seqFromList!3934 tokens!494)) lambda!121866) e!2145616)))

(declare-fun b!3463355 () Bool)

(declare-fun e!2145617 () Bool)

(assert (=> b!3463355 (= e!2145616 e!2145617)))

(declare-fun res!1397367 () Bool)

(assert (=> b!3463355 (=> (not res!1397367) (not e!2145617))))

(assert (=> b!3463355 (= res!1397367 (dynLambda!15668 lambda!121866 (h!42593 (list!13537 (seqFromList!3934 tokens!494)))))))

(declare-fun b!3463356 () Bool)

(assert (=> b!3463356 (= e!2145617 (forall!7925 (t!273044 (list!13537 (seqFromList!3934 tokens!494))) lambda!121866))))

(assert (= (and d!997297 (not res!1397366)) b!3463355))

(assert (= (and b!3463355 res!1397367) b!3463356))

(declare-fun b_lambda!99795 () Bool)

(assert (=> (not b_lambda!99795) (not b!3463355)))

(declare-fun m!3867905 () Bool)

(assert (=> b!3463355 m!3867905))

(declare-fun m!3867907 () Bool)

(assert (=> b!3463356 m!3867907))

(assert (=> d!996341 d!997297))

(declare-fun d!997299 () Bool)

(assert (=> d!997299 (= (list!13537 (seqFromList!3934 tokens!494)) (list!13541 (c!592552 (seqFromList!3934 tokens!494))))))

(declare-fun bs!560662 () Bool)

(assert (= bs!560662 d!997299))

(declare-fun m!3867909 () Bool)

(assert (=> bs!560662 m!3867909))

(assert (=> d!996341 d!997299))

(declare-fun d!997301 () Bool)

(declare-fun lt!1177776 () Bool)

(assert (=> d!997301 (= lt!1177776 (forall!7925 (list!13537 (seqFromList!3934 tokens!494)) lambda!121866))))

(declare-fun forall!7931 (Conc!11256 Int) Bool)

(assert (=> d!997301 (= lt!1177776 (forall!7931 (c!592552 (seqFromList!3934 tokens!494)) lambda!121866))))

(assert (=> d!997301 (= (forall!7927 (seqFromList!3934 tokens!494) lambda!121866) lt!1177776)))

(declare-fun bs!560663 () Bool)

(assert (= bs!560663 d!997301))

(assert (=> bs!560663 m!3864115))

(assert (=> bs!560663 m!3865421))

(assert (=> bs!560663 m!3865421))

(assert (=> bs!560663 m!3865423))

(declare-fun m!3867911 () Bool)

(assert (=> bs!560663 m!3867911))

(assert (=> d!996341 d!997301))

(assert (=> d!996341 d!996135))

(assert (=> d!996131 d!997079))

(declare-fun b!3463357 () Bool)

(declare-fun e!2145622 () Bool)

(declare-fun call!249819 () Bool)

(assert (=> b!3463357 (= e!2145622 call!249819)))

(declare-fun b!3463358 () Bool)

(declare-fun e!2145621 () Bool)

(declare-fun e!2145623 () Bool)

(assert (=> b!3463358 (= e!2145621 e!2145623)))

(declare-fun res!1397370 () Bool)

(assert (=> b!3463358 (=> (not res!1397370) (not e!2145623))))

(declare-fun call!249817 () Bool)

(assert (=> b!3463358 (= res!1397370 call!249817)))

(declare-fun b!3463359 () Bool)

(declare-fun res!1397368 () Bool)

(assert (=> b!3463359 (=> (not res!1397368) (not e!2145622))))

(assert (=> b!3463359 (= res!1397368 call!249817)))

(declare-fun e!2145619 () Bool)

(assert (=> b!3463359 (= e!2145619 e!2145622)))

(declare-fun b!3463360 () Bool)

(assert (=> b!3463360 (= e!2145623 call!249819)))

(declare-fun b!3463361 () Bool)

(declare-fun e!2145624 () Bool)

(declare-fun call!249818 () Bool)

(assert (=> b!3463361 (= e!2145624 call!249818)))

(declare-fun bm!249812 () Bool)

(assert (=> bm!249812 (= call!249817 call!249818)))

(declare-fun b!3463362 () Bool)

(declare-fun e!2145618 () Bool)

(declare-fun e!2145620 () Bool)

(assert (=> b!3463362 (= e!2145618 e!2145620)))

(declare-fun c!593145 () Bool)

(assert (=> b!3463362 (= c!593145 ((_ is Star!10199) (regex!5440 lt!1176624)))))

(declare-fun b!3463363 () Bool)

(assert (=> b!3463363 (= e!2145620 e!2145624)))

(declare-fun res!1397372 () Bool)

(assert (=> b!3463363 (= res!1397372 (not (nullable!3489 (reg!10528 (regex!5440 lt!1176624)))))))

(assert (=> b!3463363 (=> (not res!1397372) (not e!2145624))))

(declare-fun c!593144 () Bool)

(declare-fun bm!249814 () Bool)

(assert (=> bm!249814 (= call!249818 (validRegex!4645 (ite c!593145 (reg!10528 (regex!5440 lt!1176624)) (ite c!593144 (regOne!20911 (regex!5440 lt!1176624)) (regOne!20910 (regex!5440 lt!1176624))))))))

(declare-fun b!3463364 () Bool)

(declare-fun res!1397371 () Bool)

(assert (=> b!3463364 (=> res!1397371 e!2145621)))

(assert (=> b!3463364 (= res!1397371 (not ((_ is Concat!15869) (regex!5440 lt!1176624))))))

(assert (=> b!3463364 (= e!2145619 e!2145621)))

(declare-fun b!3463365 () Bool)

(assert (=> b!3463365 (= e!2145620 e!2145619)))

(assert (=> b!3463365 (= c!593144 ((_ is Union!10199) (regex!5440 lt!1176624)))))

(declare-fun bm!249813 () Bool)

(assert (=> bm!249813 (= call!249819 (validRegex!4645 (ite c!593144 (regTwo!20911 (regex!5440 lt!1176624)) (regTwo!20910 (regex!5440 lt!1176624)))))))

(declare-fun d!997303 () Bool)

(declare-fun res!1397369 () Bool)

(assert (=> d!997303 (=> res!1397369 e!2145618)))

(assert (=> d!997303 (= res!1397369 ((_ is ElementMatch!10199) (regex!5440 lt!1176624)))))

(assert (=> d!997303 (= (validRegex!4645 (regex!5440 lt!1176624)) e!2145618)))

(assert (= (and d!997303 (not res!1397369)) b!3463362))

(assert (= (and b!3463362 c!593145) b!3463363))

(assert (= (and b!3463362 (not c!593145)) b!3463365))

(assert (= (and b!3463363 res!1397372) b!3463361))

(assert (= (and b!3463365 c!593144) b!3463359))

(assert (= (and b!3463365 (not c!593144)) b!3463364))

(assert (= (and b!3463359 res!1397368) b!3463357))

(assert (= (and b!3463364 (not res!1397371)) b!3463358))

(assert (= (and b!3463358 res!1397370) b!3463360))

(assert (= (or b!3463357 b!3463360) bm!249813))

(assert (= (or b!3463359 b!3463358) bm!249812))

(assert (= (or b!3463361 bm!249812) bm!249814))

(declare-fun m!3867913 () Bool)

(assert (=> b!3463363 m!3867913))

(declare-fun m!3867915 () Bool)

(assert (=> bm!249814 m!3867915))

(declare-fun m!3867917 () Bool)

(assert (=> bm!249813 m!3867917))

(assert (=> d!996131 d!997303))

(declare-fun d!997305 () Bool)

(declare-fun lt!1177777 () Int)

(assert (=> d!997305 (= lt!1177777 (size!28206 (list!13537 lt!1176610)))))

(assert (=> d!997305 (= lt!1177777 (size!28207 (c!592552 lt!1176610)))))

(assert (=> d!997305 (= (size!28200 lt!1176610) lt!1177777)))

(declare-fun bs!560664 () Bool)

(assert (= bs!560664 d!997305))

(assert (=> bs!560664 m!3864815))

(assert (=> bs!560664 m!3864815))

(declare-fun m!3867919 () Bool)

(assert (=> bs!560664 m!3867919))

(declare-fun m!3867921 () Bool)

(assert (=> bs!560664 m!3867921))

(assert (=> b!3461665 d!997305))

(declare-fun b!3463367 () Bool)

(declare-fun res!1397375 () Bool)

(declare-fun e!2145625 () Bool)

(assert (=> b!3463367 (=> (not res!1397375) (not e!2145625))))

(assert (=> b!3463367 (= res!1397375 (<= (height!1700 (++!9171 (c!592551 (BalanceConc!22125 Empty!11255)) (c!592551 (charsOf!3454 (apply!8756 lt!1176594 0))))) (+ (max!0 (height!1700 (c!592551 (BalanceConc!22125 Empty!11255))) (height!1700 (c!592551 (charsOf!3454 (apply!8756 lt!1176594 0))))) 1)))))

(declare-fun b!3463366 () Bool)

(declare-fun res!1397374 () Bool)

(assert (=> b!3463366 (=> (not res!1397374) (not e!2145625))))

(assert (=> b!3463366 (= res!1397374 (isBalanced!3418 (++!9171 (c!592551 (BalanceConc!22125 Empty!11255)) (c!592551 (charsOf!3454 (apply!8756 lt!1176594 0))))))))

(declare-fun d!997307 () Bool)

(assert (=> d!997307 e!2145625))

(declare-fun res!1397376 () Bool)

(assert (=> d!997307 (=> (not res!1397376) (not e!2145625))))

(assert (=> d!997307 (= res!1397376 (appendAssocInst!805 (c!592551 (BalanceConc!22125 Empty!11255)) (c!592551 (charsOf!3454 (apply!8756 lt!1176594 0)))))))

(declare-fun lt!1177778 () BalanceConc!22124)

(assert (=> d!997307 (= lt!1177778 (BalanceConc!22125 (++!9171 (c!592551 (BalanceConc!22125 Empty!11255)) (c!592551 (charsOf!3454 (apply!8756 lt!1176594 0))))))))

(assert (=> d!997307 (= (++!9166 (BalanceConc!22125 Empty!11255) (charsOf!3454 (apply!8756 lt!1176594 0))) lt!1177778)))

(declare-fun b!3463368 () Bool)

(declare-fun res!1397373 () Bool)

(assert (=> b!3463368 (=> (not res!1397373) (not e!2145625))))

(assert (=> b!3463368 (= res!1397373 (>= (height!1700 (++!9171 (c!592551 (BalanceConc!22125 Empty!11255)) (c!592551 (charsOf!3454 (apply!8756 lt!1176594 0))))) (max!0 (height!1700 (c!592551 (BalanceConc!22125 Empty!11255))) (height!1700 (c!592551 (charsOf!3454 (apply!8756 lt!1176594 0)))))))))

(declare-fun b!3463369 () Bool)

(assert (=> b!3463369 (= e!2145625 (= (list!13535 lt!1177778) (++!9165 (list!13535 (BalanceConc!22125 Empty!11255)) (list!13535 (charsOf!3454 (apply!8756 lt!1176594 0))))))))

(assert (= (and d!997307 res!1397376) b!3463366))

(assert (= (and b!3463366 res!1397374) b!3463367))

(assert (= (and b!3463367 res!1397375) b!3463368))

(assert (= (and b!3463368 res!1397373) b!3463369))

(declare-fun m!3867923 () Bool)

(assert (=> b!3463369 m!3867923))

(assert (=> b!3463369 m!3864547))

(assert (=> b!3463369 m!3864565))

(declare-fun m!3867925 () Bool)

(assert (=> b!3463369 m!3867925))

(assert (=> b!3463369 m!3864547))

(assert (=> b!3463369 m!3867925))

(declare-fun m!3867927 () Bool)

(assert (=> b!3463369 m!3867927))

(declare-fun m!3867929 () Bool)

(assert (=> b!3463368 m!3867929))

(assert (=> b!3463368 m!3867929))

(declare-fun m!3867931 () Bool)

(assert (=> b!3463368 m!3867931))

(assert (=> b!3463368 m!3867561))

(declare-fun m!3867933 () Bool)

(assert (=> b!3463368 m!3867933))

(declare-fun m!3867935 () Bool)

(assert (=> b!3463368 m!3867935))

(assert (=> b!3463368 m!3867561))

(assert (=> b!3463368 m!3867933))

(declare-fun m!3867937 () Bool)

(assert (=> d!997307 m!3867937))

(assert (=> d!997307 m!3867929))

(assert (=> b!3463367 m!3867929))

(assert (=> b!3463367 m!3867929))

(assert (=> b!3463367 m!3867931))

(assert (=> b!3463367 m!3867561))

(assert (=> b!3463367 m!3867933))

(assert (=> b!3463367 m!3867935))

(assert (=> b!3463367 m!3867561))

(assert (=> b!3463367 m!3867933))

(assert (=> b!3463366 m!3867929))

(assert (=> b!3463366 m!3867929))

(declare-fun m!3867939 () Bool)

(assert (=> b!3463366 m!3867939))

(assert (=> b!3461402 d!997307))

(declare-fun d!997309 () Bool)

(declare-fun lt!1177779 () Token!10246)

(assert (=> d!997309 (= lt!1177779 (apply!8758 (list!13537 lt!1176594) 0))))

(assert (=> d!997309 (= lt!1177779 (apply!8759 (c!592552 lt!1176594) 0))))

(declare-fun e!2145626 () Bool)

(assert (=> d!997309 e!2145626))

(declare-fun res!1397377 () Bool)

(assert (=> d!997309 (=> (not res!1397377) (not e!2145626))))

(assert (=> d!997309 (= res!1397377 (<= 0 0))))

(assert (=> d!997309 (= (apply!8756 lt!1176594 0) lt!1177779)))

(declare-fun b!3463370 () Bool)

(assert (=> b!3463370 (= e!2145626 (< 0 (size!28200 lt!1176594)))))

(assert (= (and d!997309 res!1397377) b!3463370))

(assert (=> d!997309 m!3864557))

(assert (=> d!997309 m!3864557))

(declare-fun m!3867941 () Bool)

(assert (=> d!997309 m!3867941))

(declare-fun m!3867943 () Bool)

(assert (=> d!997309 m!3867943))

(assert (=> b!3463370 m!3864545))

(assert (=> b!3461402 d!997309))

(declare-fun d!997311 () Bool)

(assert (=> d!997311 (= (tail!5435 (drop!2012 lt!1176727 0)) (t!273044 (drop!2012 lt!1176727 0)))))

(assert (=> b!3461402 d!997311))

(declare-fun d!997313 () Bool)

(declare-fun lt!1177780 () BalanceConc!22124)

(assert (=> d!997313 (= (list!13535 lt!1177780) (originalCharacters!6154 (apply!8756 lt!1176594 0)))))

(assert (=> d!997313 (= lt!1177780 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (apply!8756 lt!1176594 0)))) (value!175500 (apply!8756 lt!1176594 0))))))

(assert (=> d!997313 (= (charsOf!3454 (apply!8756 lt!1176594 0)) lt!1177780)))

(declare-fun b_lambda!99797 () Bool)

(assert (=> (not b_lambda!99797) (not d!997313)))

(declare-fun tb!188907 () Bool)

(declare-fun t!273254 () Bool)

(assert (=> (and b!3461904 (= (toChars!7527 (transformation!5440 (h!42592 (t!273043 rules!2135)))) (toChars!7527 (transformation!5440 (rule!8032 (apply!8756 lt!1176594 0))))) t!273254) tb!188907))

(declare-fun b!3463371 () Bool)

(declare-fun e!2145627 () Bool)

(declare-fun tp!1078346 () Bool)

(assert (=> b!3463371 (= e!2145627 (and (inv!50346 (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (apply!8756 lt!1176594 0)))) (value!175500 (apply!8756 lt!1176594 0))))) tp!1078346))))

(declare-fun result!232920 () Bool)

(assert (=> tb!188907 (= result!232920 (and (inv!50347 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (apply!8756 lt!1176594 0)))) (value!175500 (apply!8756 lt!1176594 0)))) e!2145627))))

(assert (= tb!188907 b!3463371))

(declare-fun m!3867945 () Bool)

(assert (=> b!3463371 m!3867945))

(declare-fun m!3867947 () Bool)

(assert (=> tb!188907 m!3867947))

(assert (=> d!997313 t!273254))

(declare-fun b_and!243701 () Bool)

(assert (= b_and!243695 (and (=> t!273254 result!232920) b_and!243701)))

(declare-fun t!273256 () Bool)

(declare-fun tb!188909 () Bool)

(assert (=> (and b!3461071 (= (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))) (toChars!7527 (transformation!5440 (rule!8032 (apply!8756 lt!1176594 0))))) t!273256) tb!188909))

(declare-fun result!232922 () Bool)

(assert (= result!232922 result!232920))

(assert (=> d!997313 t!273256))

(declare-fun b_and!243703 () Bool)

(assert (= b_and!243691 (and (=> t!273256 result!232922) b_and!243703)))

(declare-fun t!273258 () Bool)

(declare-fun tb!188911 () Bool)

(assert (=> (and b!3461104 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (toChars!7527 (transformation!5440 (rule!8032 (apply!8756 lt!1176594 0))))) t!273258) tb!188911))

(declare-fun result!232924 () Bool)

(assert (= result!232924 result!232920))

(assert (=> d!997313 t!273258))

(declare-fun b_and!243705 () Bool)

(assert (= b_and!243693 (and (=> t!273258 result!232924) b_and!243705)))

(declare-fun t!273260 () Bool)

(declare-fun tb!188913 () Bool)

(assert (=> (and b!3461090 (= (toChars!7527 (transformation!5440 (h!42592 rules!2135))) (toChars!7527 (transformation!5440 (rule!8032 (apply!8756 lt!1176594 0))))) t!273260) tb!188913))

(declare-fun result!232926 () Bool)

(assert (= result!232926 result!232920))

(assert (=> d!997313 t!273260))

(declare-fun b_and!243707 () Bool)

(assert (= b_and!243699 (and (=> t!273260 result!232926) b_and!243707)))

(declare-fun tb!188915 () Bool)

(declare-fun t!273262 () Bool)

(assert (=> (and b!3461881 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (toChars!7527 (transformation!5440 (rule!8032 (apply!8756 lt!1176594 0))))) t!273262) tb!188915))

(declare-fun result!232928 () Bool)

(assert (= result!232928 result!232920))

(assert (=> d!997313 t!273262))

(declare-fun b_and!243709 () Bool)

(assert (= b_and!243697 (and (=> t!273262 result!232928) b_and!243709)))

(declare-fun m!3867949 () Bool)

(assert (=> d!997313 m!3867949))

(declare-fun m!3867951 () Bool)

(assert (=> d!997313 m!3867951))

(assert (=> b!3461402 d!997313))

(declare-fun d!997315 () Bool)

(declare-fun lt!1177786 () BalanceConc!22124)

(assert (=> d!997315 (= (list!13535 lt!1177786) (printListTailRec!689 thiss!18206 (dropList!1206 lt!1176594 (+ 0 1)) (list!13535 (++!9166 (BalanceConc!22125 Empty!11255) (charsOf!3454 (apply!8756 lt!1176594 0))))))))

(declare-fun e!2145628 () BalanceConc!22124)

(assert (=> d!997315 (= lt!1177786 e!2145628)))

(declare-fun c!593146 () Bool)

(assert (=> d!997315 (= c!593146 (>= (+ 0 1) (size!28200 lt!1176594)))))

(declare-fun e!2145629 () Bool)

(assert (=> d!997315 e!2145629))

(declare-fun res!1397378 () Bool)

(assert (=> d!997315 (=> (not res!1397378) (not e!2145629))))

(assert (=> d!997315 (= res!1397378 (>= (+ 0 1) 0))))

(assert (=> d!997315 (= (printTailRec!1524 thiss!18206 lt!1176594 (+ 0 1) (++!9166 (BalanceConc!22125 Empty!11255) (charsOf!3454 (apply!8756 lt!1176594 0)))) lt!1177786)))

(declare-fun b!3463372 () Bool)

(assert (=> b!3463372 (= e!2145629 (<= (+ 0 1) (size!28200 lt!1176594)))))

(declare-fun b!3463373 () Bool)

(assert (=> b!3463373 (= e!2145628 (++!9166 (BalanceConc!22125 Empty!11255) (charsOf!3454 (apply!8756 lt!1176594 0))))))

(declare-fun b!3463374 () Bool)

(assert (=> b!3463374 (= e!2145628 (printTailRec!1524 thiss!18206 lt!1176594 (+ 0 1 1) (++!9166 (++!9166 (BalanceConc!22125 Empty!11255) (charsOf!3454 (apply!8756 lt!1176594 0))) (charsOf!3454 (apply!8756 lt!1176594 (+ 0 1))))))))

(declare-fun lt!1177787 () List!37297)

(assert (=> b!3463374 (= lt!1177787 (list!13537 lt!1176594))))

(declare-fun lt!1177782 () Unit!52520)

(assert (=> b!3463374 (= lt!1177782 (lemmaDropApply!1164 lt!1177787 (+ 0 1)))))

(assert (=> b!3463374 (= (head!7322 (drop!2012 lt!1177787 (+ 0 1))) (apply!8758 lt!1177787 (+ 0 1)))))

(declare-fun lt!1177781 () Unit!52520)

(assert (=> b!3463374 (= lt!1177781 lt!1177782)))

(declare-fun lt!1177783 () List!37297)

(assert (=> b!3463374 (= lt!1177783 (list!13537 lt!1176594))))

(declare-fun lt!1177784 () Unit!52520)

(assert (=> b!3463374 (= lt!1177784 (lemmaDropTail!1048 lt!1177783 (+ 0 1)))))

(assert (=> b!3463374 (= (tail!5435 (drop!2012 lt!1177783 (+ 0 1))) (drop!2012 lt!1177783 (+ 0 1 1)))))

(declare-fun lt!1177785 () Unit!52520)

(assert (=> b!3463374 (= lt!1177785 lt!1177784)))

(assert (= (and d!997315 res!1397378) b!3463372))

(assert (= (and d!997315 c!593146) b!3463373))

(assert (= (and d!997315 (not c!593146)) b!3463374))

(declare-fun m!3867953 () Bool)

(assert (=> d!997315 m!3867953))

(declare-fun m!3867955 () Bool)

(assert (=> d!997315 m!3867955))

(assert (=> d!997315 m!3864545))

(assert (=> d!997315 m!3864567))

(declare-fun m!3867957 () Bool)

(assert (=> d!997315 m!3867957))

(assert (=> d!997315 m!3867955))

(assert (=> d!997315 m!3867957))

(declare-fun m!3867959 () Bool)

(assert (=> d!997315 m!3867959))

(assert (=> b!3463372 m!3864545))

(declare-fun m!3867961 () Bool)

(assert (=> b!3463374 m!3867961))

(assert (=> b!3463374 m!3864557))

(declare-fun m!3867963 () Bool)

(assert (=> b!3463374 m!3867963))

(declare-fun m!3867965 () Bool)

(assert (=> b!3463374 m!3867965))

(assert (=> b!3463374 m!3864567))

(declare-fun m!3867967 () Bool)

(assert (=> b!3463374 m!3867967))

(declare-fun m!3867969 () Bool)

(assert (=> b!3463374 m!3867969))

(declare-fun m!3867971 () Bool)

(assert (=> b!3463374 m!3867971))

(declare-fun m!3867973 () Bool)

(assert (=> b!3463374 m!3867973))

(declare-fun m!3867975 () Bool)

(assert (=> b!3463374 m!3867975))

(assert (=> b!3463374 m!3867963))

(declare-fun m!3867977 () Bool)

(assert (=> b!3463374 m!3867977))

(assert (=> b!3463374 m!3867969))

(declare-fun m!3867979 () Bool)

(assert (=> b!3463374 m!3867979))

(assert (=> b!3463374 m!3867971))

(declare-fun m!3867981 () Bool)

(assert (=> b!3463374 m!3867981))

(assert (=> b!3463374 m!3867965))

(assert (=> b!3463374 m!3867967))

(declare-fun m!3867983 () Bool)

(assert (=> b!3463374 m!3867983))

(assert (=> b!3461402 d!997315))

(declare-fun b!3463375 () Bool)

(declare-fun e!2145631 () Int)

(declare-fun call!249820 () Int)

(assert (=> b!3463375 (= e!2145631 (- call!249820 (+ 0 1)))))

(declare-fun b!3463376 () Bool)

(declare-fun e!2145630 () List!37297)

(assert (=> b!3463376 (= e!2145630 lt!1176727)))

(declare-fun b!3463377 () Bool)

(declare-fun e!2145634 () Bool)

(declare-fun lt!1177788 () List!37297)

(declare-fun e!2145633 () Int)

(assert (=> b!3463377 (= e!2145634 (= (size!28206 lt!1177788) e!2145633))))

(declare-fun c!593150 () Bool)

(assert (=> b!3463377 (= c!593150 (<= (+ 0 1) 0))))

(declare-fun d!997317 () Bool)

(assert (=> d!997317 e!2145634))

(declare-fun res!1397379 () Bool)

(assert (=> d!997317 (=> (not res!1397379) (not e!2145634))))

(assert (=> d!997317 (= res!1397379 (= ((_ map implies) (content!5192 lt!1177788) (content!5192 lt!1176727)) ((as const (InoxSet Token!10246)) true)))))

(declare-fun e!2145632 () List!37297)

(assert (=> d!997317 (= lt!1177788 e!2145632)))

(declare-fun c!593148 () Bool)

(assert (=> d!997317 (= c!593148 ((_ is Nil!37173) lt!1176727))))

(assert (=> d!997317 (= (drop!2012 lt!1176727 (+ 0 1)) lt!1177788)))

(declare-fun b!3463378 () Bool)

(assert (=> b!3463378 (= e!2145632 e!2145630)))

(declare-fun c!593147 () Bool)

(assert (=> b!3463378 (= c!593147 (<= (+ 0 1) 0))))

(declare-fun b!3463379 () Bool)

(assert (=> b!3463379 (= e!2145633 call!249820)))

(declare-fun bm!249815 () Bool)

(assert (=> bm!249815 (= call!249820 (size!28206 lt!1176727))))

(declare-fun b!3463380 () Bool)

(assert (=> b!3463380 (= e!2145630 (drop!2012 (t!273044 lt!1176727) (- (+ 0 1) 1)))))

(declare-fun b!3463381 () Bool)

(assert (=> b!3463381 (= e!2145632 Nil!37173)))

(declare-fun b!3463382 () Bool)

(assert (=> b!3463382 (= e!2145633 e!2145631)))

(declare-fun c!593149 () Bool)

(assert (=> b!3463382 (= c!593149 (>= (+ 0 1) call!249820))))

(declare-fun b!3463383 () Bool)

(assert (=> b!3463383 (= e!2145631 0)))

(assert (= (and d!997317 c!593148) b!3463381))

(assert (= (and d!997317 (not c!593148)) b!3463378))

(assert (= (and b!3463378 c!593147) b!3463376))

(assert (= (and b!3463378 (not c!593147)) b!3463380))

(assert (= (and d!997317 res!1397379) b!3463377))

(assert (= (and b!3463377 c!593150) b!3463379))

(assert (= (and b!3463377 (not c!593150)) b!3463382))

(assert (= (and b!3463382 c!593149) b!3463383))

(assert (= (and b!3463382 (not c!593149)) b!3463375))

(assert (= (or b!3463379 b!3463382 b!3463375) bm!249815))

(declare-fun m!3867985 () Bool)

(assert (=> b!3463377 m!3867985))

(declare-fun m!3867987 () Bool)

(assert (=> d!997317 m!3867987))

(declare-fun m!3867989 () Bool)

(assert (=> d!997317 m!3867989))

(declare-fun m!3867991 () Bool)

(assert (=> bm!249815 m!3867991))

(declare-fun m!3867993 () Bool)

(assert (=> b!3463380 m!3867993))

(assert (=> b!3461402 d!997317))

(assert (=> b!3461402 d!997163))

(declare-fun b!3463384 () Bool)

(declare-fun e!2145636 () Int)

(declare-fun call!249821 () Int)

(assert (=> b!3463384 (= e!2145636 (- call!249821 0))))

(declare-fun b!3463385 () Bool)

(declare-fun e!2145635 () List!37297)

(assert (=> b!3463385 (= e!2145635 lt!1176731)))

(declare-fun b!3463386 () Bool)

(declare-fun e!2145639 () Bool)

(declare-fun lt!1177789 () List!37297)

(declare-fun e!2145638 () Int)

(assert (=> b!3463386 (= e!2145639 (= (size!28206 lt!1177789) e!2145638))))

(declare-fun c!593154 () Bool)

(assert (=> b!3463386 (= c!593154 (<= 0 0))))

(declare-fun d!997319 () Bool)

(assert (=> d!997319 e!2145639))

(declare-fun res!1397380 () Bool)

(assert (=> d!997319 (=> (not res!1397380) (not e!2145639))))

(assert (=> d!997319 (= res!1397380 (= ((_ map implies) (content!5192 lt!1177789) (content!5192 lt!1176731)) ((as const (InoxSet Token!10246)) true)))))

(declare-fun e!2145637 () List!37297)

(assert (=> d!997319 (= lt!1177789 e!2145637)))

(declare-fun c!593152 () Bool)

(assert (=> d!997319 (= c!593152 ((_ is Nil!37173) lt!1176731))))

(assert (=> d!997319 (= (drop!2012 lt!1176731 0) lt!1177789)))

(declare-fun b!3463387 () Bool)

(assert (=> b!3463387 (= e!2145637 e!2145635)))

(declare-fun c!593151 () Bool)

(assert (=> b!3463387 (= c!593151 (<= 0 0))))

(declare-fun b!3463388 () Bool)

(assert (=> b!3463388 (= e!2145638 call!249821)))

(declare-fun bm!249816 () Bool)

(assert (=> bm!249816 (= call!249821 (size!28206 lt!1176731))))

(declare-fun b!3463389 () Bool)

(assert (=> b!3463389 (= e!2145635 (drop!2012 (t!273044 lt!1176731) (- 0 1)))))

(declare-fun b!3463390 () Bool)

(assert (=> b!3463390 (= e!2145637 Nil!37173)))

(declare-fun b!3463391 () Bool)

(assert (=> b!3463391 (= e!2145638 e!2145636)))

(declare-fun c!593153 () Bool)

(assert (=> b!3463391 (= c!593153 (>= 0 call!249821))))

(declare-fun b!3463392 () Bool)

(assert (=> b!3463392 (= e!2145636 0)))

(assert (= (and d!997319 c!593152) b!3463390))

(assert (= (and d!997319 (not c!593152)) b!3463387))

(assert (= (and b!3463387 c!593151) b!3463385))

(assert (= (and b!3463387 (not c!593151)) b!3463389))

(assert (= (and d!997319 res!1397380) b!3463386))

(assert (= (and b!3463386 c!593154) b!3463388))

(assert (= (and b!3463386 (not c!593154)) b!3463391))

(assert (= (and b!3463391 c!593153) b!3463392))

(assert (= (and b!3463391 (not c!593153)) b!3463384))

(assert (= (or b!3463388 b!3463391 b!3463384) bm!249816))

(declare-fun m!3867995 () Bool)

(assert (=> b!3463386 m!3867995))

(declare-fun m!3867997 () Bool)

(assert (=> d!997319 m!3867997))

(declare-fun m!3867999 () Bool)

(assert (=> d!997319 m!3867999))

(declare-fun m!3868001 () Bool)

(assert (=> bm!249816 m!3868001))

(declare-fun m!3868003 () Bool)

(assert (=> b!3463389 m!3868003))

(assert (=> b!3461402 d!997319))

(declare-fun d!997321 () Bool)

(declare-fun lt!1177790 () Token!10246)

(assert (=> d!997321 (contains!6897 lt!1176731 lt!1177790)))

(declare-fun e!2145641 () Token!10246)

(assert (=> d!997321 (= lt!1177790 e!2145641)))

(declare-fun c!593155 () Bool)

(assert (=> d!997321 (= c!593155 (= 0 0))))

(declare-fun e!2145640 () Bool)

(assert (=> d!997321 e!2145640))

(declare-fun res!1397381 () Bool)

(assert (=> d!997321 (=> (not res!1397381) (not e!2145640))))

(assert (=> d!997321 (= res!1397381 (<= 0 0))))

(assert (=> d!997321 (= (apply!8758 lt!1176731 0) lt!1177790)))

(declare-fun b!3463393 () Bool)

(assert (=> b!3463393 (= e!2145640 (< 0 (size!28206 lt!1176731)))))

(declare-fun b!3463394 () Bool)

(assert (=> b!3463394 (= e!2145641 (head!7322 lt!1176731))))

(declare-fun b!3463395 () Bool)

(assert (=> b!3463395 (= e!2145641 (apply!8758 (tail!5435 lt!1176731) (- 0 1)))))

(assert (= (and d!997321 res!1397381) b!3463393))

(assert (= (and d!997321 c!593155) b!3463394))

(assert (= (and d!997321 (not c!593155)) b!3463395))

(declare-fun m!3868005 () Bool)

(assert (=> d!997321 m!3868005))

(assert (=> b!3463393 m!3868001))

(declare-fun m!3868007 () Bool)

(assert (=> b!3463394 m!3868007))

(declare-fun m!3868009 () Bool)

(assert (=> b!3463395 m!3868009))

(assert (=> b!3463395 m!3868009))

(declare-fun m!3868011 () Bool)

(assert (=> b!3463395 m!3868011))

(assert (=> b!3461402 d!997321))

(declare-fun d!997323 () Bool)

(assert (=> d!997323 (= (tail!5435 (drop!2012 lt!1176727 0)) (drop!2012 lt!1176727 (+ 0 1)))))

(declare-fun lt!1177791 () Unit!52520)

(assert (=> d!997323 (= lt!1177791 (choose!20035 lt!1176727 0))))

(declare-fun e!2145642 () Bool)

(assert (=> d!997323 e!2145642))

(declare-fun res!1397382 () Bool)

(assert (=> d!997323 (=> (not res!1397382) (not e!2145642))))

(assert (=> d!997323 (= res!1397382 (>= 0 0))))

(assert (=> d!997323 (= (lemmaDropTail!1048 lt!1176727 0) lt!1177791)))

(declare-fun b!3463396 () Bool)

(assert (=> b!3463396 (= e!2145642 (< 0 (size!28206 lt!1176727)))))

(assert (= (and d!997323 res!1397382) b!3463396))

(assert (=> d!997323 m!3864559))

(assert (=> d!997323 m!3864559))

(assert (=> d!997323 m!3864579))

(assert (=> d!997323 m!3864553))

(declare-fun m!3868013 () Bool)

(assert (=> d!997323 m!3868013))

(assert (=> b!3463396 m!3867991))

(assert (=> b!3461402 d!997323))

(declare-fun d!997325 () Bool)

(assert (=> d!997325 (= (head!7322 (drop!2012 lt!1176731 0)) (apply!8758 lt!1176731 0))))

(declare-fun lt!1177792 () Unit!52520)

(assert (=> d!997325 (= lt!1177792 (choose!20036 lt!1176731 0))))

(declare-fun e!2145643 () Bool)

(assert (=> d!997325 e!2145643))

(declare-fun res!1397383 () Bool)

(assert (=> d!997325 (=> (not res!1397383) (not e!2145643))))

(assert (=> d!997325 (= res!1397383 (>= 0 0))))

(assert (=> d!997325 (= (lemmaDropApply!1164 lt!1176731 0) lt!1177792)))

(declare-fun b!3463397 () Bool)

(assert (=> b!3463397 (= e!2145643 (< 0 (size!28206 lt!1176731)))))

(assert (= (and d!997325 res!1397383) b!3463397))

(assert (=> d!997325 m!3864569))

(assert (=> d!997325 m!3864569))

(assert (=> d!997325 m!3864571))

(assert (=> d!997325 m!3864585))

(declare-fun m!3868015 () Bool)

(assert (=> d!997325 m!3868015))

(assert (=> b!3463397 m!3868001))

(assert (=> b!3461402 d!997325))

(declare-fun b!3463398 () Bool)

(declare-fun e!2145645 () Int)

(declare-fun call!249822 () Int)

(assert (=> b!3463398 (= e!2145645 (- call!249822 0))))

(declare-fun b!3463399 () Bool)

(declare-fun e!2145644 () List!37297)

(assert (=> b!3463399 (= e!2145644 lt!1176727)))

(declare-fun b!3463400 () Bool)

(declare-fun e!2145648 () Bool)

(declare-fun lt!1177793 () List!37297)

(declare-fun e!2145647 () Int)

(assert (=> b!3463400 (= e!2145648 (= (size!28206 lt!1177793) e!2145647))))

(declare-fun c!593159 () Bool)

(assert (=> b!3463400 (= c!593159 (<= 0 0))))

(declare-fun d!997327 () Bool)

(assert (=> d!997327 e!2145648))

(declare-fun res!1397384 () Bool)

(assert (=> d!997327 (=> (not res!1397384) (not e!2145648))))

(assert (=> d!997327 (= res!1397384 (= ((_ map implies) (content!5192 lt!1177793) (content!5192 lt!1176727)) ((as const (InoxSet Token!10246)) true)))))

(declare-fun e!2145646 () List!37297)

(assert (=> d!997327 (= lt!1177793 e!2145646)))

(declare-fun c!593157 () Bool)

(assert (=> d!997327 (= c!593157 ((_ is Nil!37173) lt!1176727))))

(assert (=> d!997327 (= (drop!2012 lt!1176727 0) lt!1177793)))

(declare-fun b!3463401 () Bool)

(assert (=> b!3463401 (= e!2145646 e!2145644)))

(declare-fun c!593156 () Bool)

(assert (=> b!3463401 (= c!593156 (<= 0 0))))

(declare-fun b!3463402 () Bool)

(assert (=> b!3463402 (= e!2145647 call!249822)))

(declare-fun bm!249817 () Bool)

(assert (=> bm!249817 (= call!249822 (size!28206 lt!1176727))))

(declare-fun b!3463403 () Bool)

(assert (=> b!3463403 (= e!2145644 (drop!2012 (t!273044 lt!1176727) (- 0 1)))))

(declare-fun b!3463404 () Bool)

(assert (=> b!3463404 (= e!2145646 Nil!37173)))

(declare-fun b!3463405 () Bool)

(assert (=> b!3463405 (= e!2145647 e!2145645)))

(declare-fun c!593158 () Bool)

(assert (=> b!3463405 (= c!593158 (>= 0 call!249822))))

(declare-fun b!3463406 () Bool)

(assert (=> b!3463406 (= e!2145645 0)))

(assert (= (and d!997327 c!593157) b!3463404))

(assert (= (and d!997327 (not c!593157)) b!3463401))

(assert (= (and b!3463401 c!593156) b!3463399))

(assert (= (and b!3463401 (not c!593156)) b!3463403))

(assert (= (and d!997327 res!1397384) b!3463400))

(assert (= (and b!3463400 c!593159) b!3463402))

(assert (= (and b!3463400 (not c!593159)) b!3463405))

(assert (= (and b!3463405 c!593158) b!3463406))

(assert (= (and b!3463405 (not c!593158)) b!3463398))

(assert (= (or b!3463402 b!3463405 b!3463398) bm!249817))

(declare-fun m!3868017 () Bool)

(assert (=> b!3463400 m!3868017))

(declare-fun m!3868019 () Bool)

(assert (=> d!997327 m!3868019))

(assert (=> d!997327 m!3867989))

(assert (=> bm!249817 m!3867991))

(declare-fun m!3868021 () Bool)

(assert (=> b!3463403 m!3868021))

(assert (=> b!3461402 d!997327))

(declare-fun d!997329 () Bool)

(assert (=> d!997329 (= (head!7322 (drop!2012 lt!1176731 0)) (h!42593 (drop!2012 lt!1176731 0)))))

(assert (=> b!3461402 d!997329))

(declare-fun d!997331 () Bool)

(assert (=> d!997331 (= (list!13535 (_2!21582 lt!1176756)) (list!13536 (c!592551 (_2!21582 lt!1176756))))))

(declare-fun bs!560665 () Bool)

(assert (= bs!560665 d!997331))

(declare-fun m!3868023 () Bool)

(assert (=> bs!560665 m!3868023))

(assert (=> b!3461439 d!997331))

(assert (=> b!3461439 d!997127))

(assert (=> b!3461439 d!997129))

(assert (=> b!3461531 d!997031))

(assert (=> b!3461531 d!996259))

(declare-fun d!997333 () Bool)

(assert (=> d!997333 (= (list!13535 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (value!175500 (h!42593 tokens!494)))) (list!13536 (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (value!175500 (h!42593 tokens!494))))))))

(declare-fun bs!560666 () Bool)

(assert (= bs!560666 d!997333))

(declare-fun m!3868025 () Bool)

(assert (=> bs!560666 m!3868025))

(assert (=> b!3461191 d!997333))

(declare-fun bs!560667 () Bool)

(declare-fun d!997335 () Bool)

(assert (= bs!560667 (and d!997335 d!996519)))

(declare-fun lambda!121888 () Int)

(assert (=> bs!560667 (= (and (= (toChars!7527 (transformation!5440 (h!42592 rules!2135))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) (= (toValue!7668 (transformation!5440 (h!42592 rules!2135))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))))) (= lambda!121888 lambda!121877))))

(assert (=> d!997335 true))

(assert (=> d!997335 (< (dynLambda!15666 order!19809 (toChars!7527 (transformation!5440 (h!42592 rules!2135)))) (dynLambda!15674 order!19813 lambda!121888))))

(assert (=> d!997335 true))

(assert (=> d!997335 (< (dynLambda!15664 order!19805 (toValue!7668 (transformation!5440 (h!42592 rules!2135)))) (dynLambda!15674 order!19813 lambda!121888))))

(assert (=> d!997335 (= (semiInverseModEq!2284 (toChars!7527 (transformation!5440 (h!42592 rules!2135))) (toValue!7668 (transformation!5440 (h!42592 rules!2135)))) (Forall!1338 lambda!121888))))

(declare-fun bs!560668 () Bool)

(assert (= bs!560668 d!997335))

(declare-fun m!3868027 () Bool)

(assert (=> bs!560668 m!3868027))

(assert (=> d!996129 d!997335))

(declare-fun b!3463407 () Bool)

(declare-fun res!1397389 () Bool)

(declare-fun e!2145653 () Bool)

(assert (=> b!3463407 (=> (not res!1397389) (not e!2145653))))

(declare-fun call!249823 () Bool)

(assert (=> b!3463407 (= res!1397389 (not call!249823))))

(declare-fun b!3463408 () Bool)

(declare-fun res!1397387 () Bool)

(declare-fun e!2145655 () Bool)

(assert (=> b!3463408 (=> res!1397387 e!2145655)))

(assert (=> b!3463408 (= res!1397387 e!2145653)))

(declare-fun res!1397388 () Bool)

(assert (=> b!3463408 (=> (not res!1397388) (not e!2145653))))

(declare-fun lt!1177794 () Bool)

(assert (=> b!3463408 (= res!1397388 lt!1177794)))

(declare-fun b!3463409 () Bool)

(declare-fun e!2145649 () Bool)

(assert (=> b!3463409 (= e!2145649 (= lt!1177794 call!249823))))

(declare-fun b!3463410 () Bool)

(declare-fun e!2145652 () Bool)

(declare-fun e!2145650 () Bool)

(assert (=> b!3463410 (= e!2145652 e!2145650)))

(declare-fun res!1397390 () Bool)

(assert (=> b!3463410 (=> res!1397390 e!2145650)))

(assert (=> b!3463410 (= res!1397390 call!249823)))

(declare-fun b!3463411 () Bool)

(declare-fun e!2145651 () Bool)

(assert (=> b!3463411 (= e!2145651 (nullable!3489 (derivativeStep!3042 (regex!5440 lt!1176624) (head!7321 lt!1176597))))))

(declare-fun b!3463412 () Bool)

(declare-fun res!1397385 () Bool)

(assert (=> b!3463412 (=> (not res!1397385) (not e!2145653))))

(assert (=> b!3463412 (= res!1397385 (isEmpty!21528 (tail!5434 (tail!5434 lt!1176597))))))

(declare-fun b!3463413 () Bool)

(declare-fun e!2145654 () Bool)

(assert (=> b!3463413 (= e!2145649 e!2145654)))

(declare-fun c!593160 () Bool)

(assert (=> b!3463413 (= c!593160 ((_ is EmptyLang!10199) (derivativeStep!3042 (regex!5440 lt!1176624) (head!7321 lt!1176597))))))

(declare-fun b!3463414 () Bool)

(declare-fun res!1397386 () Bool)

(assert (=> b!3463414 (=> res!1397386 e!2145655)))

(assert (=> b!3463414 (= res!1397386 (not ((_ is ElementMatch!10199) (derivativeStep!3042 (regex!5440 lt!1176624) (head!7321 lt!1176597)))))))

(assert (=> b!3463414 (= e!2145654 e!2145655)))

(declare-fun b!3463415 () Bool)

(assert (=> b!3463415 (= e!2145655 e!2145652)))

(declare-fun res!1397392 () Bool)

(assert (=> b!3463415 (=> (not res!1397392) (not e!2145652))))

(assert (=> b!3463415 (= res!1397392 (not lt!1177794))))

(declare-fun b!3463416 () Bool)

(assert (=> b!3463416 (= e!2145654 (not lt!1177794))))

(declare-fun b!3463417 () Bool)

(declare-fun res!1397391 () Bool)

(assert (=> b!3463417 (=> res!1397391 e!2145650)))

(assert (=> b!3463417 (= res!1397391 (not (isEmpty!21528 (tail!5434 (tail!5434 lt!1176597)))))))

(declare-fun b!3463418 () Bool)

(assert (=> b!3463418 (= e!2145651 (matchR!4783 (derivativeStep!3042 (derivativeStep!3042 (regex!5440 lt!1176624) (head!7321 lt!1176597)) (head!7321 (tail!5434 lt!1176597))) (tail!5434 (tail!5434 lt!1176597))))))

(declare-fun d!997337 () Bool)

(assert (=> d!997337 e!2145649))

(declare-fun c!593161 () Bool)

(assert (=> d!997337 (= c!593161 ((_ is EmptyExpr!10199) (derivativeStep!3042 (regex!5440 lt!1176624) (head!7321 lt!1176597))))))

(assert (=> d!997337 (= lt!1177794 e!2145651)))

(declare-fun c!593162 () Bool)

(assert (=> d!997337 (= c!593162 (isEmpty!21528 (tail!5434 lt!1176597)))))

(assert (=> d!997337 (validRegex!4645 (derivativeStep!3042 (regex!5440 lt!1176624) (head!7321 lt!1176597)))))

(assert (=> d!997337 (= (matchR!4783 (derivativeStep!3042 (regex!5440 lt!1176624) (head!7321 lt!1176597)) (tail!5434 lt!1176597)) lt!1177794)))

(declare-fun bm!249818 () Bool)

(assert (=> bm!249818 (= call!249823 (isEmpty!21528 (tail!5434 lt!1176597)))))

(declare-fun b!3463419 () Bool)

(assert (=> b!3463419 (= e!2145650 (not (= (head!7321 (tail!5434 lt!1176597)) (c!592550 (derivativeStep!3042 (regex!5440 lt!1176624) (head!7321 lt!1176597))))))))

(declare-fun b!3463420 () Bool)

(assert (=> b!3463420 (= e!2145653 (= (head!7321 (tail!5434 lt!1176597)) (c!592550 (derivativeStep!3042 (regex!5440 lt!1176624) (head!7321 lt!1176597)))))))

(assert (= (and d!997337 c!593162) b!3463411))

(assert (= (and d!997337 (not c!593162)) b!3463418))

(assert (= (and d!997337 c!593161) b!3463409))

(assert (= (and d!997337 (not c!593161)) b!3463413))

(assert (= (and b!3463413 c!593160) b!3463416))

(assert (= (and b!3463413 (not c!593160)) b!3463414))

(assert (= (and b!3463414 (not res!1397386)) b!3463408))

(assert (= (and b!3463408 res!1397388) b!3463407))

(assert (= (and b!3463407 res!1397389) b!3463412))

(assert (= (and b!3463412 res!1397385) b!3463420))

(assert (= (and b!3463408 (not res!1397387)) b!3463415))

(assert (= (and b!3463415 res!1397392) b!3463410))

(assert (= (and b!3463410 (not res!1397390)) b!3463417))

(assert (= (and b!3463417 (not res!1397391)) b!3463419))

(assert (= (or b!3463409 b!3463407 b!3463410) bm!249818))

(assert (=> b!3463418 m!3864253))

(declare-fun m!3868029 () Bool)

(assert (=> b!3463418 m!3868029))

(assert (=> b!3463418 m!3864251))

(assert (=> b!3463418 m!3868029))

(declare-fun m!3868031 () Bool)

(assert (=> b!3463418 m!3868031))

(assert (=> b!3463418 m!3864253))

(declare-fun m!3868033 () Bool)

(assert (=> b!3463418 m!3868033))

(assert (=> b!3463418 m!3868031))

(assert (=> b!3463418 m!3868033))

(declare-fun m!3868035 () Bool)

(assert (=> b!3463418 m!3868035))

(assert (=> b!3463420 m!3864253))

(assert (=> b!3463420 m!3868029))

(assert (=> d!997337 m!3864253))

(assert (=> d!997337 m!3864263))

(assert (=> d!997337 m!3864251))

(declare-fun m!3868037 () Bool)

(assert (=> d!997337 m!3868037))

(assert (=> b!3463411 m!3864251))

(declare-fun m!3868039 () Bool)

(assert (=> b!3463411 m!3868039))

(assert (=> b!3463419 m!3864253))

(assert (=> b!3463419 m!3868029))

(assert (=> bm!249818 m!3864253))

(assert (=> bm!249818 m!3864263))

(assert (=> b!3463417 m!3864253))

(assert (=> b!3463417 m!3868033))

(assert (=> b!3463417 m!3868033))

(declare-fun m!3868041 () Bool)

(assert (=> b!3463417 m!3868041))

(assert (=> b!3463412 m!3864253))

(assert (=> b!3463412 m!3868033))

(assert (=> b!3463412 m!3868033))

(assert (=> b!3463412 m!3868041))

(assert (=> b!3461208 d!997337))

(declare-fun b!3463421 () Bool)

(declare-fun e!2145660 () Regex!10199)

(declare-fun e!2145657 () Regex!10199)

(assert (=> b!3463421 (= e!2145660 e!2145657)))

(declare-fun c!593166 () Bool)

(assert (=> b!3463421 (= c!593166 ((_ is Star!10199) (regex!5440 lt!1176624)))))

(declare-fun b!3463422 () Bool)

(declare-fun c!593164 () Bool)

(assert (=> b!3463422 (= c!593164 (nullable!3489 (regOne!20910 (regex!5440 lt!1176624))))))

(declare-fun e!2145659 () Regex!10199)

(assert (=> b!3463422 (= e!2145657 e!2145659)))

(declare-fun b!3463423 () Bool)

(declare-fun call!249826 () Regex!10199)

(assert (=> b!3463423 (= e!2145659 (Union!10199 (Concat!15869 call!249826 (regTwo!20910 (regex!5440 lt!1176624))) EmptyLang!10199))))

(declare-fun bm!249819 () Bool)

(declare-fun c!593167 () Bool)

(declare-fun call!249825 () Regex!10199)

(assert (=> bm!249819 (= call!249825 (derivativeStep!3042 (ite c!593167 (regTwo!20911 (regex!5440 lt!1176624)) (regTwo!20910 (regex!5440 lt!1176624))) (head!7321 lt!1176597)))))

(declare-fun b!3463424 () Bool)

(declare-fun e!2145656 () Regex!10199)

(declare-fun e!2145658 () Regex!10199)

(assert (=> b!3463424 (= e!2145656 e!2145658)))

(declare-fun c!593165 () Bool)

(assert (=> b!3463424 (= c!593165 ((_ is ElementMatch!10199) (regex!5440 lt!1176624)))))

(declare-fun bm!249820 () Bool)

(declare-fun call!249824 () Regex!10199)

(declare-fun call!249827 () Regex!10199)

(assert (=> bm!249820 (= call!249824 call!249827)))

(declare-fun b!3463425 () Bool)

(assert (=> b!3463425 (= e!2145657 (Concat!15869 call!249824 (regex!5440 lt!1176624)))))

(declare-fun d!997339 () Bool)

(declare-fun lt!1177795 () Regex!10199)

(assert (=> d!997339 (validRegex!4645 lt!1177795)))

(assert (=> d!997339 (= lt!1177795 e!2145656)))

(declare-fun c!593163 () Bool)

(assert (=> d!997339 (= c!593163 (or ((_ is EmptyExpr!10199) (regex!5440 lt!1176624)) ((_ is EmptyLang!10199) (regex!5440 lt!1176624))))))

(assert (=> d!997339 (validRegex!4645 (regex!5440 lt!1176624))))

(assert (=> d!997339 (= (derivativeStep!3042 (regex!5440 lt!1176624) (head!7321 lt!1176597)) lt!1177795)))

(declare-fun b!3463426 () Bool)

(assert (=> b!3463426 (= e!2145658 (ite (= (head!7321 lt!1176597) (c!592550 (regex!5440 lt!1176624))) EmptyExpr!10199 EmptyLang!10199))))

(declare-fun b!3463427 () Bool)

(assert (=> b!3463427 (= e!2145656 EmptyLang!10199)))

(declare-fun b!3463428 () Bool)

(assert (=> b!3463428 (= e!2145660 (Union!10199 call!249827 call!249825))))

(declare-fun b!3463429 () Bool)

(assert (=> b!3463429 (= c!593167 ((_ is Union!10199) (regex!5440 lt!1176624)))))

(assert (=> b!3463429 (= e!2145658 e!2145660)))

(declare-fun bm!249821 () Bool)

(assert (=> bm!249821 (= call!249826 call!249824)))

(declare-fun b!3463430 () Bool)

(assert (=> b!3463430 (= e!2145659 (Union!10199 (Concat!15869 call!249826 (regTwo!20910 (regex!5440 lt!1176624))) call!249825))))

(declare-fun bm!249822 () Bool)

(assert (=> bm!249822 (= call!249827 (derivativeStep!3042 (ite c!593167 (regOne!20911 (regex!5440 lt!1176624)) (ite c!593166 (reg!10528 (regex!5440 lt!1176624)) (regOne!20910 (regex!5440 lt!1176624)))) (head!7321 lt!1176597)))))

(assert (= (and d!997339 c!593163) b!3463427))

(assert (= (and d!997339 (not c!593163)) b!3463424))

(assert (= (and b!3463424 c!593165) b!3463426))

(assert (= (and b!3463424 (not c!593165)) b!3463429))

(assert (= (and b!3463429 c!593167) b!3463428))

(assert (= (and b!3463429 (not c!593167)) b!3463421))

(assert (= (and b!3463421 c!593166) b!3463425))

(assert (= (and b!3463421 (not c!593166)) b!3463422))

(assert (= (and b!3463422 c!593164) b!3463430))

(assert (= (and b!3463422 (not c!593164)) b!3463423))

(assert (= (or b!3463430 b!3463423) bm!249821))

(assert (= (or b!3463425 bm!249821) bm!249820))

(assert (= (or b!3463428 bm!249820) bm!249822))

(assert (= (or b!3463428 b!3463430) bm!249819))

(declare-fun m!3868043 () Bool)

(assert (=> b!3463422 m!3868043))

(assert (=> bm!249819 m!3864249))

(declare-fun m!3868045 () Bool)

(assert (=> bm!249819 m!3868045))

(declare-fun m!3868047 () Bool)

(assert (=> d!997339 m!3868047))

(assert (=> d!997339 m!3864259))

(assert (=> bm!249822 m!3864249))

(declare-fun m!3868049 () Bool)

(assert (=> bm!249822 m!3868049))

(assert (=> b!3461208 d!997339))

(assert (=> b!3461208 d!997203))

(assert (=> b!3461208 d!997043))

(declare-fun d!997341 () Bool)

(assert (=> d!997341 (= (list!13535 lt!1176693) (list!13536 (c!592551 lt!1176693)))))

(declare-fun bs!560669 () Bool)

(assert (= bs!560669 d!997341))

(declare-fun m!3868051 () Bool)

(assert (=> bs!560669 m!3868051))

(assert (=> d!996199 d!997341))

(declare-fun d!997343 () Bool)

(declare-fun lt!1177796 () Int)

(assert (=> d!997343 (>= lt!1177796 0)))

(declare-fun e!2145661 () Int)

(assert (=> d!997343 (= lt!1177796 e!2145661)))

(declare-fun c!593168 () Bool)

(assert (=> d!997343 (= c!593168 ((_ is Nil!37171) (originalCharacters!6154 separatorToken!241)))))

(assert (=> d!997343 (= (size!28201 (originalCharacters!6154 separatorToken!241)) lt!1177796)))

(declare-fun b!3463431 () Bool)

(assert (=> b!3463431 (= e!2145661 0)))

(declare-fun b!3463432 () Bool)

(assert (=> b!3463432 (= e!2145661 (+ 1 (size!28201 (t!273042 (originalCharacters!6154 separatorToken!241)))))))

(assert (= (and d!997343 c!593168) b!3463431))

(assert (= (and d!997343 (not c!593168)) b!3463432))

(declare-fun m!3868053 () Bool)

(assert (=> b!3463432 m!3868053))

(assert (=> b!3461246 d!997343))

(assert (=> d!996299 d!996109))

(declare-fun d!997345 () Bool)

(assert (=> d!997345 (rulesProduceIndividualToken!2521 thiss!18206 rules!2135 (h!42593 tokens!494))))

(assert (=> d!997345 true))

(declare-fun _$77!974 () Unit!52520)

(assert (=> d!997345 (= (choose!20025 thiss!18206 rules!2135 tokens!494 (h!42593 tokens!494)) _$77!974)))

(declare-fun bs!560682 () Bool)

(assert (= bs!560682 d!997345))

(assert (=> bs!560682 m!3864103))

(assert (=> d!996299 d!997345))

(assert (=> d!996299 d!996135))

(declare-fun d!997403 () Bool)

(declare-fun lt!1177824 () Bool)

(assert (=> d!997403 (= lt!1177824 (isEmpty!21528 (list!13535 (_2!21582 lt!1176773))))))

(assert (=> d!997403 (= lt!1177824 (isEmpty!21529 (c!592551 (_2!21582 lt!1176773))))))

(assert (=> d!997403 (= (isEmpty!21525 (_2!21582 lt!1176773)) lt!1177824)))

(declare-fun bs!560684 () Bool)

(assert (= bs!560684 d!997403))

(declare-fun m!3868253 () Bool)

(assert (=> bs!560684 m!3868253))

(assert (=> bs!560684 m!3868253))

(declare-fun m!3868255 () Bool)

(assert (=> bs!560684 m!3868255))

(declare-fun m!3868257 () Bool)

(assert (=> bs!560684 m!3868257))

(assert (=> b!3461475 d!997403))

(declare-fun d!997409 () Bool)

(declare-fun res!1397419 () Bool)

(declare-fun e!2145703 () Bool)

(assert (=> d!997409 (=> res!1397419 e!2145703)))

(assert (=> d!997409 (= res!1397419 (not ((_ is Cons!37172) (t!273043 rules!2135))))))

(assert (=> d!997409 (= (sepAndNonSepRulesDisjointChars!1634 rules!2135 (t!273043 rules!2135)) e!2145703)))

(declare-fun b!3463506 () Bool)

(declare-fun e!2145704 () Bool)

(assert (=> b!3463506 (= e!2145703 e!2145704)))

(declare-fun res!1397420 () Bool)

(assert (=> b!3463506 (=> (not res!1397420) (not e!2145704))))

(assert (=> b!3463506 (= res!1397420 (ruleDisjointCharsFromAllFromOtherType!720 (h!42592 (t!273043 rules!2135)) rules!2135))))

(declare-fun b!3463507 () Bool)

(assert (=> b!3463507 (= e!2145704 (sepAndNonSepRulesDisjointChars!1634 rules!2135 (t!273043 (t!273043 rules!2135))))))

(assert (= (and d!997409 (not res!1397419)) b!3463506))

(assert (= (and b!3463506 res!1397420) b!3463507))

(declare-fun m!3868259 () Bool)

(assert (=> b!3463506 m!3868259))

(declare-fun m!3868261 () Bool)

(assert (=> b!3463507 m!3868261))

(assert (=> b!3461256 d!997409))

(declare-fun b!3463508 () Bool)

(declare-fun res!1397421 () Bool)

(declare-fun e!2145705 () Bool)

(assert (=> b!3463508 (=> (not res!1397421) (not e!2145705))))

(assert (=> b!3463508 (= res!1397421 (isBalanced!3417 (left!29006 (c!592552 lt!1176795))))))

(declare-fun b!3463509 () Bool)

(assert (=> b!3463509 (= e!2145705 (not (isEmpty!21537 (right!29336 (c!592552 lt!1176795)))))))

(declare-fun b!3463510 () Bool)

(declare-fun e!2145706 () Bool)

(assert (=> b!3463510 (= e!2145706 e!2145705)))

(declare-fun res!1397425 () Bool)

(assert (=> b!3463510 (=> (not res!1397425) (not e!2145705))))

(assert (=> b!3463510 (= res!1397425 (<= (- 1) (- (height!1697 (left!29006 (c!592552 lt!1176795))) (height!1697 (right!29336 (c!592552 lt!1176795))))))))

(declare-fun b!3463511 () Bool)

(declare-fun res!1397426 () Bool)

(assert (=> b!3463511 (=> (not res!1397426) (not e!2145705))))

(assert (=> b!3463511 (= res!1397426 (isBalanced!3417 (right!29336 (c!592552 lt!1176795))))))

(declare-fun d!997411 () Bool)

(declare-fun res!1397424 () Bool)

(assert (=> d!997411 (=> res!1397424 e!2145706)))

(assert (=> d!997411 (= res!1397424 (not ((_ is Node!11256) (c!592552 lt!1176795))))))

(assert (=> d!997411 (= (isBalanced!3417 (c!592552 lt!1176795)) e!2145706)))

(declare-fun b!3463512 () Bool)

(declare-fun res!1397422 () Bool)

(assert (=> b!3463512 (=> (not res!1397422) (not e!2145705))))

(assert (=> b!3463512 (= res!1397422 (not (isEmpty!21537 (left!29006 (c!592552 lt!1176795)))))))

(declare-fun b!3463513 () Bool)

(declare-fun res!1397423 () Bool)

(assert (=> b!3463513 (=> (not res!1397423) (not e!2145705))))

(assert (=> b!3463513 (= res!1397423 (<= (- (height!1697 (left!29006 (c!592552 lt!1176795))) (height!1697 (right!29336 (c!592552 lt!1176795)))) 1))))

(assert (= (and d!997411 (not res!1397424)) b!3463510))

(assert (= (and b!3463510 res!1397425) b!3463513))

(assert (= (and b!3463513 res!1397423) b!3463508))

(assert (= (and b!3463508 res!1397421) b!3463511))

(assert (= (and b!3463511 res!1397426) b!3463512))

(assert (= (and b!3463512 res!1397422) b!3463509))

(declare-fun m!3868271 () Bool)

(assert (=> b!3463509 m!3868271))

(declare-fun m!3868273 () Bool)

(assert (=> b!3463510 m!3868273))

(declare-fun m!3868275 () Bool)

(assert (=> b!3463510 m!3868275))

(declare-fun m!3868277 () Bool)

(assert (=> b!3463511 m!3868277))

(assert (=> b!3463513 m!3868273))

(assert (=> b!3463513 m!3868275))

(declare-fun m!3868281 () Bool)

(assert (=> b!3463508 m!3868281))

(declare-fun m!3868283 () Bool)

(assert (=> b!3463512 m!3868283))

(assert (=> b!3461519 d!997411))

(declare-fun call!249835 () List!37295)

(declare-fun call!249834 () List!37295)

(declare-fun c!593193 () Bool)

(declare-fun call!249833 () List!37295)

(declare-fun bm!249828 () Bool)

(assert (=> bm!249828 (= call!249835 (++!9165 (ite c!593193 call!249834 call!249833) (ite c!593193 call!249833 call!249834)))))

(declare-fun b!3463514 () Bool)

(declare-fun e!2145707 () List!37295)

(assert (=> b!3463514 (= e!2145707 (Cons!37171 (c!592550 (ite c!592675 (regOne!20911 (regex!5440 (rule!8032 separatorToken!241))) (regTwo!20910 (regex!5440 (rule!8032 separatorToken!241))))) Nil!37171))))

(declare-fun b!3463515 () Bool)

(declare-fun e!2145710 () List!37295)

(assert (=> b!3463515 (= e!2145710 call!249835)))

(declare-fun bm!249829 () Bool)

(assert (=> bm!249829 (= call!249834 (usedCharacters!674 (ite c!593193 (regOne!20911 (ite c!592675 (regOne!20911 (regex!5440 (rule!8032 separatorToken!241))) (regTwo!20910 (regex!5440 (rule!8032 separatorToken!241))))) (regTwo!20910 (ite c!592675 (regOne!20911 (regex!5440 (rule!8032 separatorToken!241))) (regTwo!20910 (regex!5440 (rule!8032 separatorToken!241))))))))))

(declare-fun call!249836 () List!37295)

(declare-fun bm!249830 () Bool)

(declare-fun c!593194 () Bool)

(assert (=> bm!249830 (= call!249836 (usedCharacters!674 (ite c!593194 (reg!10528 (ite c!592675 (regOne!20911 (regex!5440 (rule!8032 separatorToken!241))) (regTwo!20910 (regex!5440 (rule!8032 separatorToken!241))))) (ite c!593193 (regTwo!20911 (ite c!592675 (regOne!20911 (regex!5440 (rule!8032 separatorToken!241))) (regTwo!20910 (regex!5440 (rule!8032 separatorToken!241))))) (regOne!20910 (ite c!592675 (regOne!20911 (regex!5440 (rule!8032 separatorToken!241))) (regTwo!20910 (regex!5440 (rule!8032 separatorToken!241)))))))))))

(declare-fun bm!249831 () Bool)

(assert (=> bm!249831 (= call!249833 call!249836)))

(declare-fun b!3463517 () Bool)

(declare-fun e!2145708 () List!37295)

(assert (=> b!3463517 (= e!2145708 e!2145707)))

(declare-fun c!593192 () Bool)

(assert (=> b!3463517 (= c!593192 ((_ is ElementMatch!10199) (ite c!592675 (regOne!20911 (regex!5440 (rule!8032 separatorToken!241))) (regTwo!20910 (regex!5440 (rule!8032 separatorToken!241))))))))

(declare-fun b!3463518 () Bool)

(assert (=> b!3463518 (= e!2145708 Nil!37171)))

(declare-fun b!3463519 () Bool)

(declare-fun e!2145709 () List!37295)

(assert (=> b!3463519 (= e!2145709 e!2145710)))

(assert (=> b!3463519 (= c!593193 ((_ is Union!10199) (ite c!592675 (regOne!20911 (regex!5440 (rule!8032 separatorToken!241))) (regTwo!20910 (regex!5440 (rule!8032 separatorToken!241))))))))

(declare-fun b!3463520 () Bool)

(assert (=> b!3463520 (= e!2145710 call!249835)))

(declare-fun b!3463521 () Bool)

(assert (=> b!3463521 (= e!2145709 call!249836)))

(declare-fun b!3463516 () Bool)

(assert (=> b!3463516 (= c!593194 ((_ is Star!10199) (ite c!592675 (regOne!20911 (regex!5440 (rule!8032 separatorToken!241))) (regTwo!20910 (regex!5440 (rule!8032 separatorToken!241))))))))

(assert (=> b!3463516 (= e!2145707 e!2145709)))

(declare-fun d!997413 () Bool)

(declare-fun c!593195 () Bool)

(assert (=> d!997413 (= c!593195 (or ((_ is EmptyExpr!10199) (ite c!592675 (regOne!20911 (regex!5440 (rule!8032 separatorToken!241))) (regTwo!20910 (regex!5440 (rule!8032 separatorToken!241))))) ((_ is EmptyLang!10199) (ite c!592675 (regOne!20911 (regex!5440 (rule!8032 separatorToken!241))) (regTwo!20910 (regex!5440 (rule!8032 separatorToken!241)))))))))

(assert (=> d!997413 (= (usedCharacters!674 (ite c!592675 (regOne!20911 (regex!5440 (rule!8032 separatorToken!241))) (regTwo!20910 (regex!5440 (rule!8032 separatorToken!241))))) e!2145708)))

(assert (= (and d!997413 c!593195) b!3463518))

(assert (= (and d!997413 (not c!593195)) b!3463517))

(assert (= (and b!3463517 c!593192) b!3463514))

(assert (= (and b!3463517 (not c!593192)) b!3463516))

(assert (= (and b!3463516 c!593194) b!3463521))

(assert (= (and b!3463516 (not c!593194)) b!3463519))

(assert (= (and b!3463519 c!593193) b!3463515))

(assert (= (and b!3463519 (not c!593193)) b!3463520))

(assert (= (or b!3463515 b!3463520) bm!249831))

(assert (= (or b!3463515 b!3463520) bm!249829))

(assert (= (or b!3463515 b!3463520) bm!249828))

(assert (= (or b!3463521 bm!249831) bm!249830))

(declare-fun m!3868293 () Bool)

(assert (=> bm!249828 m!3868293))

(declare-fun m!3868295 () Bool)

(assert (=> bm!249829 m!3868295))

(declare-fun m!3868297 () Bool)

(assert (=> bm!249830 m!3868297))

(assert (=> bm!249634 d!997413))

(declare-fun d!997417 () Bool)

(assert (=> d!997417 (= (isEmpty!21528 (originalCharacters!6154 (h!42593 tokens!494))) ((_ is Nil!37171) (originalCharacters!6154 (h!42593 tokens!494))))))

(assert (=> d!996121 d!997417))

(declare-fun d!997419 () Bool)

(declare-fun lt!1177827 () Bool)

(assert (=> d!997419 (= lt!1177827 (select (content!5188 rules!2135) (rule!8032 (_1!21583 (get!11899 lt!1176668)))))))

(declare-fun e!2145716 () Bool)

(assert (=> d!997419 (= lt!1177827 e!2145716)))

(declare-fun res!1397429 () Bool)

(assert (=> d!997419 (=> (not res!1397429) (not e!2145716))))

(assert (=> d!997419 (= res!1397429 ((_ is Cons!37172) rules!2135))))

(assert (=> d!997419 (= (contains!6895 rules!2135 (rule!8032 (_1!21583 (get!11899 lt!1176668)))) lt!1177827)))

(declare-fun b!3463531 () Bool)

(declare-fun e!2145717 () Bool)

(assert (=> b!3463531 (= e!2145716 e!2145717)))

(declare-fun res!1397428 () Bool)

(assert (=> b!3463531 (=> res!1397428 e!2145717)))

(assert (=> b!3463531 (= res!1397428 (= (h!42592 rules!2135) (rule!8032 (_1!21583 (get!11899 lt!1176668)))))))

(declare-fun b!3463532 () Bool)

(assert (=> b!3463532 (= e!2145717 (contains!6895 (t!273043 rules!2135) (rule!8032 (_1!21583 (get!11899 lt!1176668)))))))

(assert (= (and d!997419 res!1397429) b!3463531))

(assert (= (and b!3463531 (not res!1397428)) b!3463532))

(assert (=> d!997419 m!3864207))

(declare-fun m!3868309 () Bool)

(assert (=> d!997419 m!3868309))

(declare-fun m!3868311 () Bool)

(assert (=> b!3463532 m!3868311))

(assert (=> b!3461233 d!997419))

(assert (=> b!3461233 d!996499))

(declare-fun d!997425 () Bool)

(declare-fun lt!1177829 () Bool)

(assert (=> d!997425 (= lt!1177829 (isEmpty!21528 (list!13535 (_2!21582 (lex!2355 thiss!18206 rules!2135 (print!2094 thiss!18206 (singletonSeq!2536 (h!42593 tokens!494))))))))))

(assert (=> d!997425 (= lt!1177829 (isEmpty!21529 (c!592551 (_2!21582 (lex!2355 thiss!18206 rules!2135 (print!2094 thiss!18206 (singletonSeq!2536 (h!42593 tokens!494))))))))))

(assert (=> d!997425 (= (isEmpty!21525 (_2!21582 (lex!2355 thiss!18206 rules!2135 (print!2094 thiss!18206 (singletonSeq!2536 (h!42593 tokens!494)))))) lt!1177829)))

(declare-fun bs!560685 () Bool)

(assert (= bs!560685 d!997425))

(declare-fun m!3868313 () Bool)

(assert (=> bs!560685 m!3868313))

(assert (=> bs!560685 m!3868313))

(declare-fun m!3868315 () Bool)

(assert (=> bs!560685 m!3868315))

(declare-fun m!3868317 () Bool)

(assert (=> bs!560685 m!3868317))

(assert (=> b!3461138 d!997425))

(declare-fun b!3463535 () Bool)

(declare-fun e!2145720 () Bool)

(declare-fun e!2145719 () Bool)

(assert (=> b!3463535 (= e!2145720 e!2145719)))

(declare-fun res!1397431 () Bool)

(declare-fun lt!1177830 () tuple2!36896)

(assert (=> b!3463535 (= res!1397431 (< (size!28205 (_2!21582 lt!1177830)) (size!28205 (print!2094 thiss!18206 (singletonSeq!2536 (h!42593 tokens!494))))))))

(assert (=> b!3463535 (=> (not res!1397431) (not e!2145719))))

(declare-fun e!2145721 () Bool)

(declare-fun b!3463536 () Bool)

(assert (=> b!3463536 (= e!2145721 (= (list!13535 (_2!21582 lt!1177830)) (_2!21586 (lexList!1450 thiss!18206 rules!2135 (list!13535 (print!2094 thiss!18206 (singletonSeq!2536 (h!42593 tokens!494))))))))))

(declare-fun b!3463537 () Bool)

(assert (=> b!3463537 (= e!2145719 (not (isEmpty!21526 (_1!21582 lt!1177830))))))

(declare-fun b!3463538 () Bool)

(assert (=> b!3463538 (= e!2145720 (= (_2!21582 lt!1177830) (print!2094 thiss!18206 (singletonSeq!2536 (h!42593 tokens!494)))))))

(declare-fun d!997427 () Bool)

(assert (=> d!997427 e!2145721))

(declare-fun res!1397430 () Bool)

(assert (=> d!997427 (=> (not res!1397430) (not e!2145721))))

(assert (=> d!997427 (= res!1397430 e!2145720)))

(declare-fun c!593200 () Bool)

(assert (=> d!997427 (= c!593200 (> (size!28200 (_1!21582 lt!1177830)) 0))))

(assert (=> d!997427 (= lt!1177830 (lexTailRecV2!1058 thiss!18206 rules!2135 (print!2094 thiss!18206 (singletonSeq!2536 (h!42593 tokens!494))) (BalanceConc!22125 Empty!11255) (print!2094 thiss!18206 (singletonSeq!2536 (h!42593 tokens!494))) (BalanceConc!22127 Empty!11256)))))

(assert (=> d!997427 (= (lex!2355 thiss!18206 rules!2135 (print!2094 thiss!18206 (singletonSeq!2536 (h!42593 tokens!494)))) lt!1177830)))

(declare-fun b!3463534 () Bool)

(declare-fun res!1397432 () Bool)

(assert (=> b!3463534 (=> (not res!1397432) (not e!2145721))))

(assert (=> b!3463534 (= res!1397432 (= (list!13537 (_1!21582 lt!1177830)) (_1!21586 (lexList!1450 thiss!18206 rules!2135 (list!13535 (print!2094 thiss!18206 (singletonSeq!2536 (h!42593 tokens!494))))))))))

(assert (= (and d!997427 c!593200) b!3463535))

(assert (= (and d!997427 (not c!593200)) b!3463538))

(assert (= (and b!3463535 res!1397431) b!3463537))

(assert (= (and d!997427 res!1397430) b!3463534))

(assert (= (and b!3463534 res!1397432) b!3463536))

(declare-fun m!3868327 () Bool)

(assert (=> b!3463536 m!3868327))

(assert (=> b!3463536 m!3864191))

(declare-fun m!3868329 () Bool)

(assert (=> b!3463536 m!3868329))

(assert (=> b!3463536 m!3868329))

(declare-fun m!3868331 () Bool)

(assert (=> b!3463536 m!3868331))

(declare-fun m!3868333 () Bool)

(assert (=> b!3463534 m!3868333))

(assert (=> b!3463534 m!3864191))

(assert (=> b!3463534 m!3868329))

(assert (=> b!3463534 m!3868329))

(assert (=> b!3463534 m!3868331))

(declare-fun m!3868337 () Bool)

(assert (=> b!3463535 m!3868337))

(assert (=> b!3463535 m!3864191))

(declare-fun m!3868339 () Bool)

(assert (=> b!3463535 m!3868339))

(declare-fun m!3868341 () Bool)

(assert (=> d!997427 m!3868341))

(assert (=> d!997427 m!3864191))

(assert (=> d!997427 m!3864191))

(declare-fun m!3868343 () Bool)

(assert (=> d!997427 m!3868343))

(declare-fun m!3868345 () Bool)

(assert (=> b!3463537 m!3868345))

(assert (=> b!3461138 d!997427))

(declare-fun d!997433 () Bool)

(declare-fun lt!1177833 () BalanceConc!22124)

(assert (=> d!997433 (= (list!13535 lt!1177833) (printList!1577 thiss!18206 (list!13537 (singletonSeq!2536 (h!42593 tokens!494)))))))

(assert (=> d!997433 (= lt!1177833 (printTailRec!1524 thiss!18206 (singletonSeq!2536 (h!42593 tokens!494)) 0 (BalanceConc!22125 Empty!11255)))))

(assert (=> d!997433 (= (print!2094 thiss!18206 (singletonSeq!2536 (h!42593 tokens!494))) lt!1177833)))

(declare-fun bs!560686 () Bool)

(assert (= bs!560686 d!997433))

(declare-fun m!3868347 () Bool)

(assert (=> bs!560686 m!3868347))

(assert (=> bs!560686 m!3864159))

(assert (=> bs!560686 m!3864193))

(assert (=> bs!560686 m!3864193))

(declare-fun m!3868349 () Bool)

(assert (=> bs!560686 m!3868349))

(assert (=> bs!560686 m!3864159))

(declare-fun m!3868351 () Bool)

(assert (=> bs!560686 m!3868351))

(assert (=> b!3461138 d!997433))

(assert (=> b!3461138 d!996215))

(declare-fun d!997435 () Bool)

(assert (=> d!997435 (= (list!13537 (_1!21582 lt!1176808)) (list!13541 (c!592552 (_1!21582 lt!1176808))))))

(declare-fun bs!560687 () Bool)

(assert (= bs!560687 d!997435))

(declare-fun m!3868359 () Bool)

(assert (=> bs!560687 m!3868359))

(assert (=> b!3461532 d!997435))

(declare-fun b!3463550 () Bool)

(declare-fun e!2145729 () Bool)

(declare-fun lt!1177836 () tuple2!36904)

(assert (=> b!3463550 (= e!2145729 (= (_2!21586 lt!1177836) (list!13535 lt!1176595)))))

(declare-fun b!3463551 () Bool)

(declare-fun e!2145730 () tuple2!36904)

(declare-fun lt!1177837 () Option!7529)

(declare-fun lt!1177835 () tuple2!36904)

(assert (=> b!3463551 (= e!2145730 (tuple2!36905 (Cons!37173 (_1!21583 (v!36854 lt!1177837)) (_1!21586 lt!1177835)) (_2!21586 lt!1177835)))))

(assert (=> b!3463551 (= lt!1177835 (lexList!1450 thiss!18206 rules!2135 (_2!21583 (v!36854 lt!1177837))))))

(declare-fun b!3463552 () Bool)

(assert (=> b!3463552 (= e!2145730 (tuple2!36905 Nil!37173 (list!13535 lt!1176595)))))

(declare-fun b!3463553 () Bool)

(declare-fun e!2145731 () Bool)

(assert (=> b!3463553 (= e!2145729 e!2145731)))

(declare-fun res!1397436 () Bool)

(assert (=> b!3463553 (= res!1397436 (< (size!28201 (_2!21586 lt!1177836)) (size!28201 (list!13535 lt!1176595))))))

(assert (=> b!3463553 (=> (not res!1397436) (not e!2145731))))

(declare-fun b!3463554 () Bool)

(assert (=> b!3463554 (= e!2145731 (not (isEmpty!21536 (_1!21586 lt!1177836))))))

(declare-fun d!997439 () Bool)

(assert (=> d!997439 e!2145729))

(declare-fun c!593206 () Bool)

(assert (=> d!997439 (= c!593206 (> (size!28206 (_1!21586 lt!1177836)) 0))))

(assert (=> d!997439 (= lt!1177836 e!2145730)))

(declare-fun c!593205 () Bool)

(assert (=> d!997439 (= c!593205 ((_ is Some!7528) lt!1177837))))

(assert (=> d!997439 (= lt!1177837 (maxPrefix!2569 thiss!18206 rules!2135 (list!13535 lt!1176595)))))

(assert (=> d!997439 (= (lexList!1450 thiss!18206 rules!2135 (list!13535 lt!1176595)) lt!1177836)))

(assert (= (and d!997439 c!593205) b!3463551))

(assert (= (and d!997439 (not c!593205)) b!3463552))

(assert (= (and d!997439 c!593206) b!3463553))

(assert (= (and d!997439 (not c!593206)) b!3463550))

(assert (= (and b!3463553 res!1397436) b!3463554))

(declare-fun m!3868363 () Bool)

(assert (=> b!3463551 m!3868363))

(declare-fun m!3868365 () Bool)

(assert (=> b!3463553 m!3868365))

(assert (=> b!3463553 m!3864825))

(assert (=> b!3463553 m!3867841))

(declare-fun m!3868367 () Bool)

(assert (=> b!3463554 m!3868367))

(declare-fun m!3868369 () Bool)

(assert (=> d!997439 m!3868369))

(assert (=> d!997439 m!3864825))

(declare-fun m!3868371 () Bool)

(assert (=> d!997439 m!3868371))

(assert (=> b!3461532 d!997439))

(declare-fun d!997443 () Bool)

(assert (=> d!997443 (= (list!13535 lt!1176595) (list!13536 (c!592551 lt!1176595)))))

(declare-fun bs!560688 () Bool)

(assert (= bs!560688 d!997443))

(declare-fun m!3868377 () Bool)

(assert (=> bs!560688 m!3868377))

(assert (=> b!3461532 d!997443))

(assert (=> b!3461584 d!996473))

(declare-fun d!997445 () Bool)

(assert (=> d!997445 (= (get!11898 lt!1176798) (v!36855 lt!1176798))))

(assert (=> b!3461521 d!997445))

(declare-fun d!997449 () Bool)

(assert (=> d!997449 (= (list!13537 (_1!21582 (lex!2355 thiss!18206 rules!2135 (print!2094 thiss!18206 (singletonSeq!2536 (h!42593 tokens!494)))))) (list!13541 (c!592552 (_1!21582 (lex!2355 thiss!18206 rules!2135 (print!2094 thiss!18206 (singletonSeq!2536 (h!42593 tokens!494))))))))))

(declare-fun bs!560689 () Bool)

(assert (= bs!560689 d!997449))

(declare-fun m!3868383 () Bool)

(assert (=> bs!560689 m!3868383))

(assert (=> d!996109 d!997449))

(assert (=> d!996109 d!997427))

(assert (=> d!996109 d!997433))

(assert (=> d!996109 d!996215))

(assert (=> d!996109 d!996135))

(declare-fun d!997451 () Bool)

(assert (=> d!997451 (= (list!13537 (singletonSeq!2536 (h!42593 tokens!494))) (list!13541 (c!592552 (singletonSeq!2536 (h!42593 tokens!494)))))))

(declare-fun bs!560690 () Bool)

(assert (= bs!560690 d!997451))

(declare-fun m!3868387 () Bool)

(assert (=> bs!560690 m!3868387))

(assert (=> d!996109 d!997451))

(declare-fun d!997455 () Bool)

(declare-fun lt!1177840 () Int)

(assert (=> d!997455 (= lt!1177840 (size!28206 (list!13537 (_1!21582 lt!1176637))))))

(assert (=> d!997455 (= lt!1177840 (size!28207 (c!592552 (_1!21582 lt!1176637))))))

(assert (=> d!997455 (= (size!28200 (_1!21582 lt!1176637)) lt!1177840)))

(declare-fun bs!560692 () Bool)

(assert (= bs!560692 d!997455))

(assert (=> bs!560692 m!3867083))

(assert (=> bs!560692 m!3867083))

(declare-fun m!3868391 () Bool)

(assert (=> bs!560692 m!3868391))

(declare-fun m!3868393 () Bool)

(assert (=> bs!560692 m!3868393))

(assert (=> d!996109 d!997455))

(assert (=> b!3461183 d!996623))

(assert (=> b!3461183 d!996585))

(declare-fun bs!560694 () Bool)

(declare-fun d!997459 () Bool)

(assert (= bs!560694 (and d!997459 d!996519)))

(declare-fun lambda!121892 () Int)

(assert (=> bs!560694 (= (and (= (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) (= (toValue!7668 (transformation!5440 (rule!8032 separatorToken!241))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))))) (= lambda!121892 lambda!121877))))

(declare-fun bs!560695 () Bool)

(assert (= bs!560695 (and d!997459 d!997335)))

(assert (=> bs!560695 (= (and (= (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))) (toChars!7527 (transformation!5440 (h!42592 rules!2135)))) (= (toValue!7668 (transformation!5440 (rule!8032 separatorToken!241))) (toValue!7668 (transformation!5440 (h!42592 rules!2135))))) (= lambda!121892 lambda!121888))))

(assert (=> d!997459 true))

(assert (=> d!997459 (< (dynLambda!15666 order!19809 (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241)))) (dynLambda!15674 order!19813 lambda!121892))))

(assert (=> d!997459 true))

(assert (=> d!997459 (< (dynLambda!15664 order!19805 (toValue!7668 (transformation!5440 (rule!8032 separatorToken!241)))) (dynLambda!15674 order!19813 lambda!121892))))

(assert (=> d!997459 (= (semiInverseModEq!2284 (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))) (toValue!7668 (transformation!5440 (rule!8032 separatorToken!241)))) (Forall!1338 lambda!121892))))

(declare-fun bs!560696 () Bool)

(assert (= bs!560696 d!997459))

(declare-fun m!3868399 () Bool)

(assert (=> bs!560696 m!3868399))

(assert (=> d!996159 d!997459))

(declare-fun d!997465 () Bool)

(assert (=> d!997465 (= (isEmpty!21538 lt!1176798) (not ((_ is Some!7529) lt!1176798)))))

(assert (=> d!996259 d!997465))

(assert (=> d!996259 d!996151))

(declare-fun d!997467 () Bool)

(assert (=> d!997467 (= (list!13537 (_1!21582 lt!1176840)) (list!13541 (c!592552 (_1!21582 lt!1176840))))))

(declare-fun bs!560697 () Bool)

(assert (= bs!560697 d!997467))

(declare-fun m!3868401 () Bool)

(assert (=> bs!560697 m!3868401))

(assert (=> b!3461608 d!997467))

(assert (=> b!3461608 d!996531))

(assert (=> b!3461608 d!996549))

(declare-fun d!997469 () Bool)

(declare-fun c!593212 () Bool)

(assert (=> d!997469 (= c!593212 ((_ is Nil!37171) lt!1176695))))

(declare-fun e!2145740 () (InoxSet C!20584))

(assert (=> d!997469 (= (content!5190 lt!1176695) e!2145740)))

(declare-fun b!3463568 () Bool)

(assert (=> b!3463568 (= e!2145740 ((as const (Array C!20584 Bool)) false))))

(declare-fun b!3463569 () Bool)

(assert (=> b!3463569 (= e!2145740 ((_ map or) (store ((as const (Array C!20584 Bool)) false) (h!42591 lt!1176695) true) (content!5190 (t!273042 lt!1176695))))))

(assert (= (and d!997469 c!593212) b!3463568))

(assert (= (and d!997469 (not c!593212)) b!3463569))

(declare-fun m!3868403 () Bool)

(assert (=> b!3463569 m!3868403))

(declare-fun m!3868405 () Bool)

(assert (=> b!3463569 m!3868405))

(assert (=> d!996203 d!997469))

(assert (=> d!996203 d!996657))

(assert (=> d!996203 d!996595))

(declare-fun d!997471 () Bool)

(declare-fun charsToBigInt!0 (List!37294 Int) Int)

(assert (=> d!997471 (= (inv!15 (value!175500 separatorToken!241)) (= (charsToBigInt!0 (text!40139 (value!175500 separatorToken!241)) 0) (value!175495 (value!175500 separatorToken!241))))))

(declare-fun bs!560698 () Bool)

(assert (= bs!560698 d!997471))

(declare-fun m!3868407 () Bool)

(assert (=> bs!560698 m!3868407))

(assert (=> b!3461290 d!997471))

(declare-fun e!2145742 () Bool)

(declare-fun b!3463577 () Bool)

(declare-fun lt!1177841 () List!37295)

(assert (=> b!3463577 (= e!2145742 (or (not (= (printWithSeparatorTokenList!316 thiss!18206 (t!273044 (t!273044 tokens!494)) separatorToken!241) Nil!37171)) (= lt!1177841 (t!273042 (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494)))) lt!1176614)))))))

(declare-fun b!3463576 () Bool)

(declare-fun res!1397441 () Bool)

(assert (=> b!3463576 (=> (not res!1397441) (not e!2145742))))

(assert (=> b!3463576 (= res!1397441 (= (size!28201 lt!1177841) (+ (size!28201 (t!273042 (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494)))) lt!1176614))) (size!28201 (printWithSeparatorTokenList!316 thiss!18206 (t!273044 (t!273044 tokens!494)) separatorToken!241)))))))

(declare-fun b!3463574 () Bool)

(declare-fun e!2145741 () List!37295)

(assert (=> b!3463574 (= e!2145741 (printWithSeparatorTokenList!316 thiss!18206 (t!273044 (t!273044 tokens!494)) separatorToken!241))))

(declare-fun b!3463575 () Bool)

(assert (=> b!3463575 (= e!2145741 (Cons!37171 (h!42591 (t!273042 (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494)))) lt!1176614))) (++!9165 (t!273042 (t!273042 (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494)))) lt!1176614))) (printWithSeparatorTokenList!316 thiss!18206 (t!273044 (t!273044 tokens!494)) separatorToken!241))))))

(declare-fun d!997473 () Bool)

(assert (=> d!997473 e!2145742))

(declare-fun res!1397440 () Bool)

(assert (=> d!997473 (=> (not res!1397440) (not e!2145742))))

(assert (=> d!997473 (= res!1397440 (= (content!5190 lt!1177841) ((_ map or) (content!5190 (t!273042 (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494)))) lt!1176614))) (content!5190 (printWithSeparatorTokenList!316 thiss!18206 (t!273044 (t!273044 tokens!494)) separatorToken!241)))))))

(assert (=> d!997473 (= lt!1177841 e!2145741)))

(declare-fun c!593213 () Bool)

(assert (=> d!997473 (= c!593213 ((_ is Nil!37171) (t!273042 (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494)))) lt!1176614))))))

(assert (=> d!997473 (= (++!9165 (t!273042 (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 tokens!494)))) lt!1176614)) (printWithSeparatorTokenList!316 thiss!18206 (t!273044 (t!273044 tokens!494)) separatorToken!241)) lt!1177841)))

(assert (= (and d!997473 c!593213) b!3463574))

(assert (= (and d!997473 (not c!593213)) b!3463575))

(assert (= (and d!997473 res!1397440) b!3463576))

(assert (= (and b!3463576 res!1397441) b!3463577))

(declare-fun m!3868411 () Bool)

(assert (=> b!3463576 m!3868411))

(assert (=> b!3463576 m!3865909))

(assert (=> b!3463576 m!3864147))

(assert (=> b!3463576 m!3864455))

(assert (=> b!3463575 m!3864147))

(declare-fun m!3868413 () Bool)

(assert (=> b!3463575 m!3868413))

(declare-fun m!3868415 () Bool)

(assert (=> d!997473 m!3868415))

(assert (=> d!997473 m!3866219))

(assert (=> d!997473 m!3864147))

(assert (=> d!997473 m!3864463))

(assert (=> b!3461347 d!997473))

(assert (=> bm!249605 d!997017))

(assert (=> b!3461244 d!996283))

(declare-fun b!3463581 () Bool)

(declare-fun e!2145745 () List!37295)

(assert (=> b!3463581 (= e!2145745 Nil!37171)))

(declare-fun b!3463583 () Bool)

(declare-fun e!2145746 () List!37295)

(assert (=> b!3463583 (= e!2145746 (list!13542 (xs!14429 (c!592551 (charsOf!3454 separatorToken!241)))))))

(declare-fun b!3463584 () Bool)

(assert (=> b!3463584 (= e!2145746 (++!9165 (list!13536 (left!29005 (c!592551 (charsOf!3454 separatorToken!241)))) (list!13536 (right!29335 (c!592551 (charsOf!3454 separatorToken!241))))))))

(declare-fun d!997477 () Bool)

(declare-fun c!593215 () Bool)

(assert (=> d!997477 (= c!593215 ((_ is Empty!11255) (c!592551 (charsOf!3454 separatorToken!241))))))

(assert (=> d!997477 (= (list!13536 (c!592551 (charsOf!3454 separatorToken!241))) e!2145745)))

(declare-fun b!3463582 () Bool)

(assert (=> b!3463582 (= e!2145745 e!2145746)))

(declare-fun c!593216 () Bool)

(assert (=> b!3463582 (= c!593216 ((_ is Leaf!17586) (c!592551 (charsOf!3454 separatorToken!241))))))

(assert (= (and d!997477 c!593215) b!3463581))

(assert (= (and d!997477 (not c!593215)) b!3463582))

(assert (= (and b!3463582 c!593216) b!3463583))

(assert (= (and b!3463582 (not c!593216)) b!3463584))

(declare-fun m!3868417 () Bool)

(assert (=> b!3463583 m!3868417))

(declare-fun m!3868419 () Bool)

(assert (=> b!3463584 m!3868419))

(declare-fun m!3868421 () Bool)

(assert (=> b!3463584 m!3868421))

(assert (=> b!3463584 m!3868419))

(assert (=> b!3463584 m!3868421))

(declare-fun m!3868423 () Bool)

(assert (=> b!3463584 m!3868423))

(assert (=> d!996197 d!997477))

(declare-fun d!997479 () Bool)

(declare-fun lt!1177849 () Bool)

(assert (=> d!997479 (= lt!1177849 (select (content!5190 (t!273042 (usedCharacters!674 (regex!5440 (rule!8032 (h!42593 tokens!494)))))) lt!1176623))))

(declare-fun e!2145748 () Bool)

(assert (=> d!997479 (= lt!1177849 e!2145748)))

(declare-fun res!1397443 () Bool)

(assert (=> d!997479 (=> (not res!1397443) (not e!2145748))))

(assert (=> d!997479 (= res!1397443 ((_ is Cons!37171) (t!273042 (usedCharacters!674 (regex!5440 (rule!8032 (h!42593 tokens!494)))))))))

(assert (=> d!997479 (= (contains!6896 (t!273042 (usedCharacters!674 (regex!5440 (rule!8032 (h!42593 tokens!494))))) lt!1176623) lt!1177849)))

(declare-fun b!3463585 () Bool)

(declare-fun e!2145747 () Bool)

(assert (=> b!3463585 (= e!2145748 e!2145747)))

(declare-fun res!1397444 () Bool)

(assert (=> b!3463585 (=> res!1397444 e!2145747)))

(assert (=> b!3463585 (= res!1397444 (= (h!42591 (t!273042 (usedCharacters!674 (regex!5440 (rule!8032 (h!42593 tokens!494)))))) lt!1176623))))

(declare-fun b!3463586 () Bool)

(assert (=> b!3463586 (= e!2145747 (contains!6896 (t!273042 (t!273042 (usedCharacters!674 (regex!5440 (rule!8032 (h!42593 tokens!494)))))) lt!1176623))))

(assert (= (and d!997479 res!1397443) b!3463585))

(assert (= (and b!3463585 (not res!1397444)) b!3463586))

(assert (=> d!997479 m!3865829))

(declare-fun m!3868435 () Bool)

(assert (=> d!997479 m!3868435))

(declare-fun m!3868439 () Bool)

(assert (=> b!3463586 m!3868439))

(assert (=> b!3461664 d!997479))

(declare-fun bs!560700 () Bool)

(declare-fun d!997481 () Bool)

(assert (= bs!560700 (and d!997481 d!996621)))

(declare-fun lambda!121896 () Int)

(assert (=> bs!560700 (= (= (toValue!7668 (transformation!5440 (h!42592 rules!2135))) (toValue!7668 (transformation!5440 (rule!8032 separatorToken!241)))) (= lambda!121896 lambda!121880))))

(declare-fun bs!560701 () Bool)

(assert (= bs!560701 (and d!997481 d!997289)))

(assert (=> bs!560701 (= (= (toValue!7668 (transformation!5440 (h!42592 rules!2135))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) (= lambda!121896 lambda!121887))))

(assert (=> d!997481 true))

(assert (=> d!997481 (< (dynLambda!15664 order!19805 (toValue!7668 (transformation!5440 (h!42592 rules!2135)))) (dynLambda!15675 order!19815 lambda!121896))))

(assert (=> d!997481 (= (equivClasses!2183 (toChars!7527 (transformation!5440 (h!42592 rules!2135))) (toValue!7668 (transformation!5440 (h!42592 rules!2135)))) (Forall2!936 lambda!121896))))

(declare-fun bs!560702 () Bool)

(assert (= bs!560702 d!997481))

(declare-fun m!3868461 () Bool)

(assert (=> bs!560702 m!3868461))

(assert (=> b!3461196 d!997481))

(declare-fun d!997485 () Bool)

(assert (=> d!997485 (= (isEmpty!21528 (originalCharacters!6154 separatorToken!241)) ((_ is Nil!37171) (originalCharacters!6154 separatorToken!241)))))

(assert (=> d!996149 d!997485))

(declare-fun d!997487 () Bool)

(assert (=> d!997487 (= (isEmpty!21530 lt!1176618) (not ((_ is Some!7528) lt!1176618)))))

(assert (=> d!996139 d!997487))

(declare-fun d!997489 () Bool)

(assert (=> d!997489 (= (list!13535 lt!1176862) (list!13536 (c!592551 lt!1176862)))))

(declare-fun bs!560703 () Bool)

(assert (= bs!560703 d!997489))

(declare-fun m!3868473 () Bool)

(assert (=> bs!560703 m!3868473))

(assert (=> d!996313 d!997489))

(declare-fun d!997493 () Bool)

(assert (=> d!997493 (= (dropList!1206 lt!1176610 0) (drop!2012 (list!13541 (c!592552 lt!1176610)) 0))))

(declare-fun bs!560704 () Bool)

(assert (= bs!560704 d!997493))

(assert (=> bs!560704 m!3867507))

(assert (=> bs!560704 m!3867507))

(declare-fun m!3868475 () Bool)

(assert (=> bs!560704 m!3868475))

(assert (=> d!996313 d!997493))

(assert (=> d!996313 d!997095))

(assert (=> d!996313 d!997305))

(declare-fun d!997495 () Bool)

(declare-fun lt!1177855 () List!37295)

(assert (=> d!997495 (= lt!1177855 (++!9165 (list!13535 (BalanceConc!22125 Empty!11255)) (printList!1577 thiss!18206 (dropList!1206 lt!1176610 0))))))

(declare-fun e!2145761 () List!37295)

(assert (=> d!997495 (= lt!1177855 e!2145761)))

(declare-fun c!593226 () Bool)

(assert (=> d!997495 (= c!593226 ((_ is Cons!37173) (dropList!1206 lt!1176610 0)))))

(assert (=> d!997495 (= (printListTailRec!689 thiss!18206 (dropList!1206 lt!1176610 0) (list!13535 (BalanceConc!22125 Empty!11255))) lt!1177855)))

(declare-fun b!3463605 () Bool)

(assert (=> b!3463605 (= e!2145761 (printListTailRec!689 thiss!18206 (t!273044 (dropList!1206 lt!1176610 0)) (++!9165 (list!13535 (BalanceConc!22125 Empty!11255)) (list!13535 (charsOf!3454 (h!42593 (dropList!1206 lt!1176610 0)))))))))

(declare-fun lt!1177853 () List!37295)

(assert (=> b!3463605 (= lt!1177853 (list!13535 (charsOf!3454 (h!42593 (dropList!1206 lt!1176610 0)))))))

(declare-fun lt!1177852 () List!37295)

(assert (=> b!3463605 (= lt!1177852 (printList!1577 thiss!18206 (t!273044 (dropList!1206 lt!1176610 0))))))

(declare-fun lt!1177857 () Unit!52520)

(assert (=> b!3463605 (= lt!1177857 (lemmaConcatAssociativity!1960 (list!13535 (BalanceConc!22125 Empty!11255)) lt!1177853 lt!1177852))))

(assert (=> b!3463605 (= (++!9165 (++!9165 (list!13535 (BalanceConc!22125 Empty!11255)) lt!1177853) lt!1177852) (++!9165 (list!13535 (BalanceConc!22125 Empty!11255)) (++!9165 lt!1177853 lt!1177852)))))

(declare-fun lt!1177854 () Unit!52520)

(assert (=> b!3463605 (= lt!1177854 lt!1177857)))

(declare-fun b!3463606 () Bool)

(assert (=> b!3463606 (= e!2145761 (list!13535 (BalanceConc!22125 Empty!11255)))))

(assert (= (and d!997495 c!593226) b!3463605))

(assert (= (and d!997495 (not c!593226)) b!3463606))

(assert (=> d!997495 m!3864991))

(declare-fun m!3868487 () Bool)

(assert (=> d!997495 m!3868487))

(assert (=> d!997495 m!3864547))

(assert (=> d!997495 m!3868487))

(declare-fun m!3868491 () Bool)

(assert (=> d!997495 m!3868491))

(assert (=> b!3463605 m!3864547))

(declare-fun m!3868497 () Bool)

(assert (=> b!3463605 m!3868497))

(declare-fun m!3868499 () Bool)

(assert (=> b!3463605 m!3868499))

(declare-fun m!3868501 () Bool)

(assert (=> b!3463605 m!3868501))

(declare-fun m!3868503 () Bool)

(assert (=> b!3463605 m!3868503))

(assert (=> b!3463605 m!3868497))

(declare-fun m!3868505 () Bool)

(assert (=> b!3463605 m!3868505))

(declare-fun m!3868507 () Bool)

(assert (=> b!3463605 m!3868507))

(assert (=> b!3463605 m!3864547))

(declare-fun m!3868509 () Bool)

(assert (=> b!3463605 m!3868509))

(assert (=> b!3463605 m!3864547))

(assert (=> b!3463605 m!3868503))

(assert (=> b!3463605 m!3868505))

(assert (=> b!3463605 m!3864547))

(declare-fun m!3868511 () Bool)

(assert (=> b!3463605 m!3868511))

(assert (=> b!3463605 m!3868501))

(declare-fun m!3868513 () Bool)

(assert (=> b!3463605 m!3868513))

(assert (=> b!3463605 m!3868509))

(declare-fun m!3868515 () Bool)

(assert (=> b!3463605 m!3868515))

(assert (=> d!996313 d!997495))

(declare-fun d!997503 () Bool)

(assert (=> d!997503 (= (inv!17 (value!175500 (h!42593 tokens!494))) (= (charsToBigInt!1 (text!40138 (value!175500 (h!42593 tokens!494)))) (value!175492 (value!175500 (h!42593 tokens!494)))))))

(declare-fun bs!560705 () Bool)

(assert (= bs!560705 d!997503))

(declare-fun m!3868517 () Bool)

(assert (=> bs!560705 m!3868517))

(assert (=> b!3461447 d!997503))

(declare-fun b!3463617 () Bool)

(declare-fun res!1397453 () Bool)

(declare-fun e!2145768 () Bool)

(assert (=> b!3463617 (=> (not res!1397453) (not e!2145768))))

(declare-fun lt!1177863 () Option!7529)

(assert (=> b!3463617 (= res!1397453 (< (size!28201 (_2!21583 (get!11899 lt!1177863))) (size!28201 lt!1176597)))))

(declare-fun d!997505 () Bool)

(declare-fun e!2145766 () Bool)

(assert (=> d!997505 e!2145766))

(declare-fun res!1397452 () Bool)

(assert (=> d!997505 (=> res!1397452 e!2145766)))

(assert (=> d!997505 (= res!1397452 (isEmpty!21530 lt!1177863))))

(declare-fun e!2145767 () Option!7529)

(assert (=> d!997505 (= lt!1177863 e!2145767)))

(declare-fun c!593230 () Bool)

(assert (=> d!997505 (= c!593230 (and ((_ is Cons!37172) (t!273043 rules!2135)) ((_ is Nil!37172) (t!273043 (t!273043 rules!2135)))))))

(declare-fun lt!1177859 () Unit!52520)

(declare-fun lt!1177861 () Unit!52520)

(assert (=> d!997505 (= lt!1177859 lt!1177861)))

(assert (=> d!997505 (isPrefix!2845 lt!1176597 lt!1176597)))

(assert (=> d!997505 (= lt!1177861 (lemmaIsPrefixRefl!1804 lt!1176597 lt!1176597))))

(assert (=> d!997505 (rulesValidInductive!1854 thiss!18206 (t!273043 rules!2135))))

(assert (=> d!997505 (= (maxPrefix!2569 thiss!18206 (t!273043 rules!2135) lt!1176597) lt!1177863)))

(declare-fun b!3463618 () Bool)

(declare-fun res!1397449 () Bool)

(assert (=> b!3463618 (=> (not res!1397449) (not e!2145768))))

(assert (=> b!3463618 (= res!1397449 (matchR!4783 (regex!5440 (rule!8032 (_1!21583 (get!11899 lt!1177863)))) (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1177863))))))))

(declare-fun b!3463619 () Bool)

(declare-fun res!1397455 () Bool)

(assert (=> b!3463619 (=> (not res!1397455) (not e!2145768))))

(assert (=> b!3463619 (= res!1397455 (= (++!9165 (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1177863)))) (_2!21583 (get!11899 lt!1177863))) lt!1176597))))

(declare-fun b!3463620 () Bool)

(declare-fun res!1397454 () Bool)

(assert (=> b!3463620 (=> (not res!1397454) (not e!2145768))))

(assert (=> b!3463620 (= res!1397454 (= (list!13535 (charsOf!3454 (_1!21583 (get!11899 lt!1177863)))) (originalCharacters!6154 (_1!21583 (get!11899 lt!1177863)))))))

(declare-fun b!3463621 () Bool)

(assert (=> b!3463621 (= e!2145768 (contains!6895 (t!273043 rules!2135) (rule!8032 (_1!21583 (get!11899 lt!1177863)))))))

(declare-fun bm!249838 () Bool)

(declare-fun call!249843 () Option!7529)

(assert (=> bm!249838 (= call!249843 (maxPrefixOneRule!1736 thiss!18206 (h!42592 (t!273043 rules!2135)) lt!1176597))))

(declare-fun b!3463622 () Bool)

(declare-fun res!1397451 () Bool)

(assert (=> b!3463622 (=> (not res!1397451) (not e!2145768))))

(assert (=> b!3463622 (= res!1397451 (= (value!175500 (_1!21583 (get!11899 lt!1177863))) (apply!8757 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1177863)))) (seqFromList!3933 (originalCharacters!6154 (_1!21583 (get!11899 lt!1177863)))))))))

(declare-fun b!3463623 () Bool)

(declare-fun lt!1177862 () Option!7529)

(declare-fun lt!1177860 () Option!7529)

(assert (=> b!3463623 (= e!2145767 (ite (and ((_ is None!7528) lt!1177862) ((_ is None!7528) lt!1177860)) None!7528 (ite ((_ is None!7528) lt!1177860) lt!1177862 (ite ((_ is None!7528) lt!1177862) lt!1177860 (ite (>= (size!28199 (_1!21583 (v!36854 lt!1177862))) (size!28199 (_1!21583 (v!36854 lt!1177860)))) lt!1177862 lt!1177860)))))))

(assert (=> b!3463623 (= lt!1177862 call!249843)))

(assert (=> b!3463623 (= lt!1177860 (maxPrefix!2569 thiss!18206 (t!273043 (t!273043 rules!2135)) lt!1176597))))

(declare-fun b!3463624 () Bool)

(assert (=> b!3463624 (= e!2145766 e!2145768)))

(declare-fun res!1397450 () Bool)

(assert (=> b!3463624 (=> (not res!1397450) (not e!2145768))))

(assert (=> b!3463624 (= res!1397450 (isDefined!5797 lt!1177863))))

(declare-fun b!3463625 () Bool)

(assert (=> b!3463625 (= e!2145767 call!249843)))

(assert (= (and d!997505 c!593230) b!3463625))

(assert (= (and d!997505 (not c!593230)) b!3463623))

(assert (= (or b!3463625 b!3463623) bm!249838))

(assert (= (and d!997505 (not res!1397452)) b!3463624))

(assert (= (and b!3463624 res!1397450) b!3463620))

(assert (= (and b!3463620 res!1397454) b!3463617))

(assert (= (and b!3463617 res!1397453) b!3463619))

(assert (= (and b!3463619 res!1397455) b!3463622))

(assert (= (and b!3463622 res!1397451) b!3463618))

(assert (= (and b!3463618 res!1397449) b!3463621))

(declare-fun m!3868535 () Bool)

(assert (=> b!3463623 m!3868535))

(declare-fun m!3868537 () Bool)

(assert (=> b!3463622 m!3868537))

(declare-fun m!3868539 () Bool)

(assert (=> b!3463622 m!3868539))

(assert (=> b!3463622 m!3868539))

(declare-fun m!3868541 () Bool)

(assert (=> b!3463622 m!3868541))

(declare-fun m!3868543 () Bool)

(assert (=> bm!249838 m!3868543))

(assert (=> b!3463621 m!3868537))

(declare-fun m!3868545 () Bool)

(assert (=> b!3463621 m!3868545))

(assert (=> b!3463619 m!3868537))

(declare-fun m!3868547 () Bool)

(assert (=> b!3463619 m!3868547))

(assert (=> b!3463619 m!3868547))

(declare-fun m!3868549 () Bool)

(assert (=> b!3463619 m!3868549))

(assert (=> b!3463619 m!3868549))

(declare-fun m!3868551 () Bool)

(assert (=> b!3463619 m!3868551))

(declare-fun m!3868553 () Bool)

(assert (=> b!3463624 m!3868553))

(declare-fun m!3868555 () Bool)

(assert (=> d!997505 m!3868555))

(assert (=> d!997505 m!3864295))

(assert (=> d!997505 m!3864297))

(declare-fun m!3868559 () Bool)

(assert (=> d!997505 m!3868559))

(assert (=> b!3463620 m!3868537))

(assert (=> b!3463620 m!3868547))

(assert (=> b!3463620 m!3868547))

(assert (=> b!3463620 m!3868549))

(assert (=> b!3463617 m!3868537))

(declare-fun m!3868567 () Bool)

(assert (=> b!3463617 m!3868567))

(assert (=> b!3463617 m!3864069))

(assert (=> b!3463618 m!3868537))

(assert (=> b!3463618 m!3868547))

(assert (=> b!3463618 m!3868547))

(assert (=> b!3463618 m!3868549))

(assert (=> b!3463618 m!3868549))

(declare-fun m!3868571 () Bool)

(assert (=> b!3463618 m!3868571))

(assert (=> b!3461235 d!997505))

(declare-fun b!3463635 () Bool)

(declare-fun e!2145776 () Bool)

(declare-fun e!2145774 () Bool)

(assert (=> b!3463635 (= e!2145776 e!2145774)))

(declare-fun c!593233 () Bool)

(assert (=> b!3463635 (= c!593233 ((_ is IntegerValue!17011) (value!175500 (h!42593 (t!273044 tokens!494)))))))

(declare-fun b!3463636 () Bool)

(declare-fun e!2145775 () Bool)

(assert (=> b!3463636 (= e!2145775 (inv!15 (value!175500 (h!42593 (t!273044 tokens!494)))))))

(declare-fun d!997517 () Bool)

(declare-fun c!593232 () Bool)

(assert (=> d!997517 (= c!593232 ((_ is IntegerValue!17010) (value!175500 (h!42593 (t!273044 tokens!494)))))))

(assert (=> d!997517 (= (inv!21 (value!175500 (h!42593 (t!273044 tokens!494)))) e!2145776)))

(declare-fun b!3463637 () Bool)

(assert (=> b!3463637 (= e!2145774 (inv!17 (value!175500 (h!42593 (t!273044 tokens!494)))))))

(declare-fun b!3463638 () Bool)

(assert (=> b!3463638 (= e!2145776 (inv!16 (value!175500 (h!42593 (t!273044 tokens!494)))))))

(declare-fun b!3463639 () Bool)

(declare-fun res!1397463 () Bool)

(assert (=> b!3463639 (=> res!1397463 e!2145775)))

(assert (=> b!3463639 (= res!1397463 (not ((_ is IntegerValue!17012) (value!175500 (h!42593 (t!273044 tokens!494))))))))

(assert (=> b!3463639 (= e!2145774 e!2145775)))

(assert (= (and d!997517 c!593232) b!3463638))

(assert (= (and d!997517 (not c!593232)) b!3463635))

(assert (= (and b!3463635 c!593233) b!3463637))

(assert (= (and b!3463635 (not c!593233)) b!3463639))

(assert (= (and b!3463639 (not res!1397463)) b!3463636))

(declare-fun m!3868581 () Bool)

(assert (=> b!3463636 m!3868581))

(declare-fun m!3868583 () Bool)

(assert (=> b!3463637 m!3868583))

(declare-fun m!3868585 () Bool)

(assert (=> b!3463638 m!3868585))

(assert (=> b!3461879 d!997517))

(declare-fun d!997521 () Bool)

(declare-fun lt!1177869 () Bool)

(assert (=> d!997521 (= lt!1177869 (isEmpty!21536 (list!13537 (_1!21582 lt!1176808))))))

(assert (=> d!997521 (= lt!1177869 (isEmpty!21537 (c!592552 (_1!21582 lt!1176808))))))

(assert (=> d!997521 (= (isEmpty!21526 (_1!21582 lt!1176808)) lt!1177869)))

(declare-fun bs!560706 () Bool)

(assert (= bs!560706 d!997521))

(assert (=> bs!560706 m!3864829))

(assert (=> bs!560706 m!3864829))

(declare-fun m!3868587 () Bool)

(assert (=> bs!560706 m!3868587))

(declare-fun m!3868589 () Bool)

(assert (=> bs!560706 m!3868589))

(assert (=> b!3461535 d!997521))

(assert (=> b!3461178 d!996623))

(assert (=> b!3461178 d!996585))

(declare-fun d!997523 () Bool)

(assert (=> d!997523 (= (isEmpty!21538 lt!1176793) (not ((_ is Some!7529) lt!1176793)))))

(assert (=> d!996253 d!997523))

(assert (=> d!996253 d!996151))

(declare-fun d!997525 () Bool)

(declare-fun lt!1177870 () Int)

(assert (=> d!997525 (>= lt!1177870 0)))

(declare-fun e!2145778 () Int)

(assert (=> d!997525 (= lt!1177870 e!2145778)))

(declare-fun c!593234 () Bool)

(assert (=> d!997525 (= c!593234 ((_ is Nil!37173) (list!13537 (_1!21582 lt!1176602))))))

(assert (=> d!997525 (= (size!28206 (list!13537 (_1!21582 lt!1176602))) lt!1177870)))

(declare-fun b!3463641 () Bool)

(assert (=> b!3463641 (= e!2145778 0)))

(declare-fun b!3463642 () Bool)

(assert (=> b!3463642 (= e!2145778 (+ 1 (size!28206 (t!273044 (list!13537 (_1!21582 lt!1176602))))))))

(assert (= (and d!997525 c!593234) b!3463641))

(assert (= (and d!997525 (not c!593234)) b!3463642))

(declare-fun m!3868595 () Bool)

(assert (=> b!3463642 m!3868595))

(assert (=> d!996283 d!997525))

(assert (=> d!996283 d!996663))

(declare-fun d!997527 () Bool)

(declare-fun lt!1177871 () Int)

(assert (=> d!997527 (= lt!1177871 (size!28206 (list!13541 (c!592552 (_1!21582 lt!1176602)))))))

(assert (=> d!997527 (= lt!1177871 (ite ((_ is Empty!11256) (c!592552 (_1!21582 lt!1176602))) 0 (ite ((_ is Leaf!17587) (c!592552 (_1!21582 lt!1176602))) (csize!22743 (c!592552 (_1!21582 lt!1176602))) (csize!22742 (c!592552 (_1!21582 lt!1176602))))))))

(assert (=> d!997527 (= (size!28207 (c!592552 (_1!21582 lt!1176602))) lt!1177871)))

(declare-fun bs!560707 () Bool)

(assert (= bs!560707 d!997527))

(assert (=> bs!560707 m!3866071))

(assert (=> bs!560707 m!3866071))

(declare-fun m!3868597 () Bool)

(assert (=> bs!560707 m!3868597))

(assert (=> d!996283 d!997527))

(declare-fun e!2145780 () Bool)

(declare-fun lt!1177872 () List!37295)

(declare-fun b!3463646 () Bool)

(assert (=> b!3463646 (= e!2145780 (or (not (= lt!1176614 Nil!37171)) (= lt!1177872 (t!273042 lt!1176597))))))

(declare-fun b!3463645 () Bool)

(declare-fun res!1397465 () Bool)

(assert (=> b!3463645 (=> (not res!1397465) (not e!2145780))))

(assert (=> b!3463645 (= res!1397465 (= (size!28201 lt!1177872) (+ (size!28201 (t!273042 lt!1176597)) (size!28201 lt!1176614))))))

(declare-fun b!3463643 () Bool)

(declare-fun e!2145779 () List!37295)

(assert (=> b!3463643 (= e!2145779 lt!1176614)))

(declare-fun b!3463644 () Bool)

(assert (=> b!3463644 (= e!2145779 (Cons!37171 (h!42591 (t!273042 lt!1176597)) (++!9165 (t!273042 (t!273042 lt!1176597)) lt!1176614)))))

(declare-fun d!997529 () Bool)

(assert (=> d!997529 e!2145780))

(declare-fun res!1397464 () Bool)

(assert (=> d!997529 (=> (not res!1397464) (not e!2145780))))

(assert (=> d!997529 (= res!1397464 (= (content!5190 lt!1177872) ((_ map or) (content!5190 (t!273042 lt!1176597)) (content!5190 lt!1176614))))))

(assert (=> d!997529 (= lt!1177872 e!2145779)))

(declare-fun c!593235 () Bool)

(assert (=> d!997529 (= c!593235 ((_ is Nil!37171) (t!273042 lt!1176597)))))

(assert (=> d!997529 (= (++!9165 (t!273042 lt!1176597) lt!1176614) lt!1177872)))

(assert (= (and d!997529 c!593235) b!3463643))

(assert (= (and d!997529 (not c!593235)) b!3463644))

(assert (= (and d!997529 res!1397464) b!3463645))

(assert (= (and b!3463645 res!1397465) b!3463646))

(declare-fun m!3868603 () Bool)

(assert (=> b!3463645 m!3868603))

(assert (=> b!3463645 m!3864981))

(assert (=> b!3463645 m!3864439))

(declare-fun m!3868605 () Bool)

(assert (=> b!3463644 m!3868605))

(declare-fun m!3868607 () Bool)

(assert (=> d!997529 m!3868607))

(assert (=> d!997529 m!3866031))

(assert (=> d!997529 m!3864447))

(assert (=> b!3461364 d!997529))

(declare-fun d!997535 () Bool)

(assert (=> d!997535 (= (list!13537 lt!1176801) (list!13541 (c!592552 lt!1176801)))))

(declare-fun bs!560709 () Bool)

(assert (= bs!560709 d!997535))

(declare-fun m!3868609 () Bool)

(assert (=> bs!560709 m!3868609))

(assert (=> d!996269 d!997535))

(declare-fun d!997537 () Bool)

(declare-fun e!2145783 () Bool)

(assert (=> d!997537 e!2145783))

(declare-fun res!1397466 () Bool)

(assert (=> d!997537 (=> (not res!1397466) (not e!2145783))))

(declare-fun lt!1177873 () BalanceConc!22126)

(assert (=> d!997537 (= res!1397466 (= (list!13537 lt!1177873) (Cons!37173 (h!42593 (t!273044 tokens!494)) Nil!37173)))))

(assert (=> d!997537 (= lt!1177873 (choose!20029 (h!42593 (t!273044 tokens!494))))))

(assert (=> d!997537 (= (singleton!1122 (h!42593 (t!273044 tokens!494))) lt!1177873)))

(declare-fun b!3463651 () Bool)

(assert (=> b!3463651 (= e!2145783 (isBalanced!3417 (c!592552 lt!1177873)))))

(assert (= (and d!997537 res!1397466) b!3463651))

(declare-fun m!3868619 () Bool)

(assert (=> d!997537 m!3868619))

(declare-fun m!3868621 () Bool)

(assert (=> d!997537 m!3868621))

(declare-fun m!3868623 () Bool)

(assert (=> b!3463651 m!3868623))

(assert (=> d!996269 d!997537))

(assert (=> b!3461186 d!996263))

(declare-fun d!997541 () Bool)

(declare-fun lt!1177874 () Bool)

(assert (=> d!997541 (= lt!1177874 (select (content!5192 tokens!494) (h!42593 tokens!494)))))

(declare-fun e!2145786 () Bool)

(assert (=> d!997541 (= lt!1177874 e!2145786)))

(declare-fun res!1397469 () Bool)

(assert (=> d!997541 (=> (not res!1397469) (not e!2145786))))

(assert (=> d!997541 (= res!1397469 ((_ is Cons!37173) tokens!494))))

(assert (=> d!997541 (= (contains!6897 tokens!494 (h!42593 tokens!494)) lt!1177874)))

(declare-fun b!3463653 () Bool)

(declare-fun e!2145785 () Bool)

(assert (=> b!3463653 (= e!2145786 e!2145785)))

(declare-fun res!1397468 () Bool)

(assert (=> b!3463653 (=> res!1397468 e!2145785)))

(assert (=> b!3463653 (= res!1397468 (= (h!42593 tokens!494) (h!42593 tokens!494)))))

(declare-fun b!3463654 () Bool)

(assert (=> b!3463654 (= e!2145785 (contains!6897 (t!273044 tokens!494) (h!42593 tokens!494)))))

(assert (= (and d!997541 res!1397469) b!3463653))

(assert (= (and b!3463653 (not res!1397468)) b!3463654))

(assert (=> d!997541 m!3865577))

(declare-fun m!3868629 () Bool)

(assert (=> d!997541 m!3868629))

(declare-fun m!3868631 () Bool)

(assert (=> b!3463654 m!3868631))

(assert (=> b!3461241 d!997541))

(declare-fun e!2145788 () Bool)

(declare-fun b!3463658 () Bool)

(declare-fun lt!1177875 () List!37295)

(assert (=> b!3463658 (= e!2145788 (or (not (= lt!1176603 Nil!37171)) (= lt!1177875 (t!273042 lt!1176614))))))

(declare-fun b!3463657 () Bool)

(declare-fun res!1397471 () Bool)

(assert (=> b!3463657 (=> (not res!1397471) (not e!2145788))))

(assert (=> b!3463657 (= res!1397471 (= (size!28201 lt!1177875) (+ (size!28201 (t!273042 lt!1176614)) (size!28201 lt!1176603))))))

(declare-fun b!3463655 () Bool)

(declare-fun e!2145787 () List!37295)

(assert (=> b!3463655 (= e!2145787 lt!1176603)))

(declare-fun b!3463656 () Bool)

(assert (=> b!3463656 (= e!2145787 (Cons!37171 (h!42591 (t!273042 lt!1176614)) (++!9165 (t!273042 (t!273042 lt!1176614)) lt!1176603)))))

(declare-fun d!997545 () Bool)

(assert (=> d!997545 e!2145788))

(declare-fun res!1397470 () Bool)

(assert (=> d!997545 (=> (not res!1397470) (not e!2145788))))

(assert (=> d!997545 (= res!1397470 (= (content!5190 lt!1177875) ((_ map or) (content!5190 (t!273042 lt!1176614)) (content!5190 lt!1176603))))))

(assert (=> d!997545 (= lt!1177875 e!2145787)))

(declare-fun c!593238 () Bool)

(assert (=> d!997545 (= c!593238 ((_ is Nil!37171) (t!273042 lt!1176614)))))

(assert (=> d!997545 (= (++!9165 (t!273042 lt!1176614) lt!1176603) lt!1177875)))

(assert (= (and d!997545 c!593238) b!3463655))

(assert (= (and d!997545 (not c!593238)) b!3463656))

(assert (= (and d!997545 res!1397470) b!3463657))

(assert (= (and b!3463657 res!1397471) b!3463658))

(declare-fun m!3868633 () Bool)

(assert (=> b!3463657 m!3868633))

(assert (=> b!3463657 m!3865805))

(assert (=> b!3463657 m!3864441))

(declare-fun m!3868635 () Bool)

(assert (=> b!3463656 m!3868635))

(declare-fun m!3868637 () Bool)

(assert (=> d!997545 m!3868637))

(assert (=> d!997545 m!3865881))

(assert (=> d!997545 m!3864449))

(assert (=> b!3461343 d!997545))

(assert (=> b!3461537 d!996477))

(declare-fun d!997547 () Bool)

(assert (=> d!997547 (= (isEmpty!21530 lt!1176668) (not ((_ is Some!7528) lt!1176668)))))

(assert (=> d!996141 d!997547))

(declare-fun b!3463674 () Bool)

(declare-fun e!2145800 () Bool)

(declare-fun e!2145802 () Bool)

(assert (=> b!3463674 (= e!2145800 e!2145802)))

(declare-fun res!1397486 () Bool)

(assert (=> b!3463674 (=> (not res!1397486) (not e!2145802))))

(assert (=> b!3463674 (= res!1397486 (not ((_ is Nil!37171) lt!1176597)))))

(declare-fun b!3463677 () Bool)

(declare-fun e!2145801 () Bool)

(assert (=> b!3463677 (= e!2145801 (>= (size!28201 lt!1176597) (size!28201 lt!1176597)))))

(declare-fun b!3463675 () Bool)

(declare-fun res!1397484 () Bool)

(assert (=> b!3463675 (=> (not res!1397484) (not e!2145802))))

(assert (=> b!3463675 (= res!1397484 (= (head!7321 lt!1176597) (head!7321 lt!1176597)))))

(declare-fun b!3463676 () Bool)

(assert (=> b!3463676 (= e!2145802 (isPrefix!2845 (tail!5434 lt!1176597) (tail!5434 lt!1176597)))))

(declare-fun d!997549 () Bool)

(assert (=> d!997549 e!2145801))

(declare-fun res!1397485 () Bool)

(assert (=> d!997549 (=> res!1397485 e!2145801)))

(declare-fun lt!1177885 () Bool)

(assert (=> d!997549 (= res!1397485 (not lt!1177885))))

(assert (=> d!997549 (= lt!1177885 e!2145800)))

(declare-fun res!1397483 () Bool)

(assert (=> d!997549 (=> res!1397483 e!2145800)))

(assert (=> d!997549 (= res!1397483 ((_ is Nil!37171) lt!1176597))))

(assert (=> d!997549 (= (isPrefix!2845 lt!1176597 lt!1176597) lt!1177885)))

(assert (= (and d!997549 (not res!1397483)) b!3463674))

(assert (= (and b!3463674 res!1397486) b!3463675))

(assert (= (and b!3463675 res!1397484) b!3463676))

(assert (= (and d!997549 (not res!1397485)) b!3463677))

(assert (=> b!3463677 m!3864069))

(assert (=> b!3463677 m!3864069))

(assert (=> b!3463675 m!3864249))

(assert (=> b!3463675 m!3864249))

(assert (=> b!3463676 m!3864253))

(assert (=> b!3463676 m!3864253))

(assert (=> b!3463676 m!3864253))

(assert (=> b!3463676 m!3864253))

(declare-fun m!3868661 () Bool)

(assert (=> b!3463676 m!3868661))

(assert (=> d!996141 d!997549))

(declare-fun d!997559 () Bool)

(assert (=> d!997559 (isPrefix!2845 lt!1176597 lt!1176597)))

(declare-fun lt!1177891 () Unit!52520)

(declare-fun choose!20038 (List!37295 List!37295) Unit!52520)

(assert (=> d!997559 (= lt!1177891 (choose!20038 lt!1176597 lt!1176597))))

(assert (=> d!997559 (= (lemmaIsPrefixRefl!1804 lt!1176597 lt!1176597) lt!1177891)))

(declare-fun bs!560714 () Bool)

(assert (= bs!560714 d!997559))

(assert (=> bs!560714 m!3864295))

(declare-fun m!3868669 () Bool)

(assert (=> bs!560714 m!3868669))

(assert (=> d!996141 d!997559))

(declare-fun bs!560720 () Bool)

(declare-fun d!997569 () Bool)

(assert (= bs!560720 (and d!997569 d!997259)))

(declare-fun lambda!121900 () Int)

(assert (=> bs!560720 (= lambda!121900 lambda!121886)))

(assert (=> d!997569 true))

(declare-fun lt!1177898 () Bool)

(assert (=> d!997569 (= lt!1177898 (forall!7930 rules!2135 lambda!121900))))

(declare-fun e!2145817 () Bool)

(assert (=> d!997569 (= lt!1177898 e!2145817)))

(declare-fun res!1397501 () Bool)

(assert (=> d!997569 (=> res!1397501 e!2145817)))

(assert (=> d!997569 (= res!1397501 (not ((_ is Cons!37172) rules!2135)))))

(assert (=> d!997569 (= (rulesValidInductive!1854 thiss!18206 rules!2135) lt!1177898)))

(declare-fun b!3463702 () Bool)

(declare-fun e!2145816 () Bool)

(assert (=> b!3463702 (= e!2145817 e!2145816)))

(declare-fun res!1397502 () Bool)

(assert (=> b!3463702 (=> (not res!1397502) (not e!2145816))))

(assert (=> b!3463702 (= res!1397502 (ruleValid!1740 thiss!18206 (h!42592 rules!2135)))))

(declare-fun b!3463703 () Bool)

(assert (=> b!3463703 (= e!2145816 (rulesValidInductive!1854 thiss!18206 (t!273043 rules!2135)))))

(assert (= (and d!997569 (not res!1397501)) b!3463702))

(assert (= (and b!3463702 res!1397502) b!3463703))

(declare-fun m!3868711 () Bool)

(assert (=> d!997569 m!3868711))

(assert (=> b!3463702 m!3867791))

(assert (=> b!3463703 m!3868559))

(assert (=> d!996141 d!997569))

(assert (=> d!996315 d!996311))

(assert (=> d!996315 d!996295))

(declare-fun d!997589 () Bool)

(assert (=> d!997589 (not (contains!6896 (usedCharacters!674 (regex!5440 (rule!8032 (h!42593 tokens!494)))) lt!1176623))))

(assert (=> d!997589 true))

(declare-fun _$73!262 () Unit!52520)

(assert (=> d!997589 (= (choose!20027 thiss!18206 rules!2135 rules!2135 (rule!8032 (h!42593 tokens!494)) (rule!8032 separatorToken!241) lt!1176623) _$73!262)))

(declare-fun bs!560722 () Bool)

(assert (= bs!560722 d!997589))

(assert (=> bs!560722 m!3864055))

(assert (=> bs!560722 m!3864055))

(assert (=> bs!560722 m!3864057))

(assert (=> d!996315 d!997589))

(assert (=> d!996315 d!996151))

(declare-fun d!997593 () Bool)

(declare-fun lt!1177903 () Int)

(assert (=> d!997593 (= lt!1177903 (size!28206 (list!13537 (_1!21582 lt!1176840))))))

(assert (=> d!997593 (= lt!1177903 (size!28207 (c!592552 (_1!21582 lt!1176840))))))

(assert (=> d!997593 (= (size!28200 (_1!21582 lt!1176840)) lt!1177903)))

(declare-fun bs!560723 () Bool)

(assert (= bs!560723 d!997593))

(assert (=> bs!560723 m!3864941))

(assert (=> bs!560723 m!3864941))

(declare-fun m!3868717 () Bool)

(assert (=> bs!560723 m!3868717))

(declare-fun m!3868719 () Bool)

(assert (=> bs!560723 m!3868719))

(assert (=> d!996293 d!997593))

(declare-fun b!3463718 () Bool)

(declare-fun e!2145828 () tuple2!36896)

(declare-fun lt!1177934 () BalanceConc!22124)

(assert (=> b!3463718 (= e!2145828 (tuple2!36897 (BalanceConc!22127 Empty!11256) lt!1177934))))

(declare-fun e!2145827 () tuple2!36896)

(declare-fun lt!1177907 () Option!7531)

(declare-fun b!3463719 () Bool)

(declare-fun lt!1177931 () BalanceConc!22124)

(assert (=> b!3463719 (= e!2145827 (lexTailRecV2!1058 thiss!18206 rules!2135 lt!1176617 lt!1177931 (_2!21588 (v!36866 lt!1177907)) (append!966 (BalanceConc!22127 Empty!11256) (_1!21588 (v!36866 lt!1177907)))))))

(declare-fun lt!1177913 () tuple2!36896)

(assert (=> b!3463719 (= lt!1177913 (lexRec!750 thiss!18206 rules!2135 (_2!21588 (v!36866 lt!1177907))))))

(declare-fun lt!1177937 () List!37295)

(assert (=> b!3463719 (= lt!1177937 (list!13535 (BalanceConc!22125 Empty!11255)))))

(declare-fun lt!1177922 () List!37295)

(assert (=> b!3463719 (= lt!1177922 (list!13535 (charsOf!3454 (_1!21588 (v!36866 lt!1177907)))))))

(declare-fun lt!1177932 () List!37295)

(assert (=> b!3463719 (= lt!1177932 (list!13535 (_2!21588 (v!36866 lt!1177907))))))

(declare-fun lt!1177915 () Unit!52520)

(assert (=> b!3463719 (= lt!1177915 (lemmaConcatAssociativity!1960 lt!1177937 lt!1177922 lt!1177932))))

(assert (=> b!3463719 (= (++!9165 (++!9165 lt!1177937 lt!1177922) lt!1177932) (++!9165 lt!1177937 (++!9165 lt!1177922 lt!1177932)))))

(declare-fun lt!1177930 () Unit!52520)

(assert (=> b!3463719 (= lt!1177930 lt!1177915)))

(declare-fun lt!1177908 () Option!7531)

(assert (=> b!3463719 (= lt!1177908 (maxPrefixZipperSequence!1143 thiss!18206 rules!2135 lt!1176617))))

(declare-fun c!593252 () Bool)

(assert (=> b!3463719 (= c!593252 ((_ is Some!7530) lt!1177908))))

(declare-fun e!2145826 () tuple2!36896)

(assert (=> b!3463719 (= (lexRec!750 thiss!18206 rules!2135 lt!1176617) e!2145826)))

(declare-fun lt!1177917 () Unit!52520)

(declare-fun Unit!52536 () Unit!52520)

(assert (=> b!3463719 (= lt!1177917 Unit!52536)))

(declare-fun lt!1177909 () List!37297)

(assert (=> b!3463719 (= lt!1177909 (list!13537 (BalanceConc!22127 Empty!11256)))))

(declare-fun lt!1177916 () List!37297)

(assert (=> b!3463719 (= lt!1177916 (Cons!37173 (_1!21588 (v!36866 lt!1177907)) Nil!37173))))

(declare-fun lt!1177904 () List!37297)

(assert (=> b!3463719 (= lt!1177904 (list!13537 (_1!21582 lt!1177913)))))

(declare-fun lt!1177912 () Unit!52520)

(assert (=> b!3463719 (= lt!1177912 (lemmaConcatAssociativity!1961 lt!1177909 lt!1177916 lt!1177904))))

(assert (=> b!3463719 (= (++!9168 (++!9168 lt!1177909 lt!1177916) lt!1177904) (++!9168 lt!1177909 (++!9168 lt!1177916 lt!1177904)))))

(declare-fun lt!1177936 () Unit!52520)

(assert (=> b!3463719 (= lt!1177936 lt!1177912)))

(declare-fun lt!1177920 () List!37295)

(assert (=> b!3463719 (= lt!1177920 (++!9165 (list!13535 (BalanceConc!22125 Empty!11255)) (list!13535 (charsOf!3454 (_1!21588 (v!36866 lt!1177907))))))))

(declare-fun lt!1177933 () List!37295)

(assert (=> b!3463719 (= lt!1177933 (list!13535 (_2!21588 (v!36866 lt!1177907))))))

(declare-fun lt!1177910 () List!37297)

(assert (=> b!3463719 (= lt!1177910 (list!13537 (append!966 (BalanceConc!22127 Empty!11256) (_1!21588 (v!36866 lt!1177907)))))))

(declare-fun lt!1177925 () Unit!52520)

(assert (=> b!3463719 (= lt!1177925 (lemmaLexThenLexPrefix!515 thiss!18206 rules!2135 lt!1177920 lt!1177933 lt!1177910 (list!13537 (_1!21582 lt!1177913)) (list!13535 (_2!21582 lt!1177913))))))

(assert (=> b!3463719 (= (lexList!1450 thiss!18206 rules!2135 lt!1177920) (tuple2!36905 lt!1177910 Nil!37171))))

(declare-fun lt!1177923 () Unit!52520)

(assert (=> b!3463719 (= lt!1177923 lt!1177925)))

(assert (=> b!3463719 (= lt!1177934 (++!9166 (BalanceConc!22125 Empty!11255) (charsOf!3454 (_1!21588 (v!36866 lt!1177907)))))))

(declare-fun lt!1177905 () Option!7531)

(assert (=> b!3463719 (= lt!1177905 (maxPrefixZipperSequence!1143 thiss!18206 rules!2135 lt!1177934))))

(declare-fun c!593250 () Bool)

(assert (=> b!3463719 (= c!593250 ((_ is Some!7530) lt!1177905))))

(assert (=> b!3463719 (= (lexRec!750 thiss!18206 rules!2135 (++!9166 (BalanceConc!22125 Empty!11255) (charsOf!3454 (_1!21588 (v!36866 lt!1177907))))) e!2145828)))

(declare-fun lt!1177921 () Unit!52520)

(declare-fun Unit!52537 () Unit!52520)

(assert (=> b!3463719 (= lt!1177921 Unit!52537)))

(assert (=> b!3463719 (= lt!1177931 (++!9166 (BalanceConc!22125 Empty!11255) (charsOf!3454 (_1!21588 (v!36866 lt!1177907)))))))

(declare-fun lt!1177927 () List!37295)

(assert (=> b!3463719 (= lt!1177927 (list!13535 lt!1177931))))

(declare-fun lt!1177935 () List!37295)

(assert (=> b!3463719 (= lt!1177935 (list!13535 (_2!21588 (v!36866 lt!1177907))))))

(declare-fun lt!1177911 () Unit!52520)

(assert (=> b!3463719 (= lt!1177911 (lemmaConcatTwoListThenFSndIsSuffix!597 lt!1177927 lt!1177935))))

(assert (=> b!3463719 (isSuffix!912 lt!1177935 (++!9165 lt!1177927 lt!1177935))))

(declare-fun lt!1177929 () Unit!52520)

(assert (=> b!3463719 (= lt!1177929 lt!1177911)))

(declare-fun b!3463720 () Bool)

(declare-fun e!2145825 () Bool)

(declare-fun lt!1177928 () tuple2!36896)

(assert (=> b!3463720 (= e!2145825 (= (list!13535 (_2!21582 lt!1177928)) (list!13535 (_2!21582 (lexRec!750 thiss!18206 rules!2135 lt!1176617)))))))

(declare-fun d!997595 () Bool)

(assert (=> d!997595 e!2145825))

(declare-fun res!1397511 () Bool)

(assert (=> d!997595 (=> (not res!1397511) (not e!2145825))))

(assert (=> d!997595 (= res!1397511 (= (list!13537 (_1!21582 lt!1177928)) (list!13537 (_1!21582 (lexRec!750 thiss!18206 rules!2135 lt!1176617)))))))

(assert (=> d!997595 (= lt!1177928 e!2145827)))

(declare-fun c!593251 () Bool)

(assert (=> d!997595 (= c!593251 ((_ is Some!7530) lt!1177907))))

(assert (=> d!997595 (= lt!1177907 (maxPrefixZipperSequenceV2!537 thiss!18206 rules!2135 lt!1176617 lt!1176617))))

(declare-fun lt!1177918 () Unit!52520)

(declare-fun lt!1177914 () Unit!52520)

(assert (=> d!997595 (= lt!1177918 lt!1177914)))

(declare-fun lt!1177906 () List!37295)

(declare-fun lt!1177926 () List!37295)

(assert (=> d!997595 (isSuffix!912 lt!1177906 (++!9165 lt!1177926 lt!1177906))))

(assert (=> d!997595 (= lt!1177914 (lemmaConcatTwoListThenFSndIsSuffix!597 lt!1177926 lt!1177906))))

(assert (=> d!997595 (= lt!1177906 (list!13535 lt!1176617))))

(assert (=> d!997595 (= lt!1177926 (list!13535 (BalanceConc!22125 Empty!11255)))))

(assert (=> d!997595 (= (lexTailRecV2!1058 thiss!18206 rules!2135 lt!1176617 (BalanceConc!22125 Empty!11255) lt!1176617 (BalanceConc!22127 Empty!11256)) lt!1177928)))

(declare-fun lt!1177924 () tuple2!36896)

(declare-fun b!3463721 () Bool)

(assert (=> b!3463721 (= lt!1177924 (lexRec!750 thiss!18206 rules!2135 (_2!21588 (v!36866 lt!1177905))))))

(assert (=> b!3463721 (= e!2145828 (tuple2!36897 (prepend!1262 (_1!21582 lt!1177924) (_1!21588 (v!36866 lt!1177905))) (_2!21582 lt!1177924)))))

(declare-fun b!3463722 () Bool)

(assert (=> b!3463722 (= e!2145826 (tuple2!36897 (BalanceConc!22127 Empty!11256) lt!1176617))))

(declare-fun b!3463723 () Bool)

(assert (=> b!3463723 (= e!2145827 (tuple2!36897 (BalanceConc!22127 Empty!11256) lt!1176617))))

(declare-fun lt!1177919 () tuple2!36896)

(declare-fun b!3463724 () Bool)

(assert (=> b!3463724 (= lt!1177919 (lexRec!750 thiss!18206 rules!2135 (_2!21588 (v!36866 lt!1177908))))))

(assert (=> b!3463724 (= e!2145826 (tuple2!36897 (prepend!1262 (_1!21582 lt!1177919) (_1!21588 (v!36866 lt!1177908))) (_2!21582 lt!1177919)))))

(assert (= (and d!997595 c!593251) b!3463719))

(assert (= (and d!997595 (not c!593251)) b!3463723))

(assert (= (and b!3463719 c!593252) b!3463724))

(assert (= (and b!3463719 (not c!593252)) b!3463722))

(assert (= (and b!3463719 c!593250) b!3463721))

(assert (= (and b!3463719 (not c!593250)) b!3463718))

(assert (= (and d!997595 res!1397511) b!3463720))

(declare-fun m!3868749 () Bool)

(assert (=> b!3463724 m!3868749))

(declare-fun m!3868751 () Bool)

(assert (=> b!3463724 m!3868751))

(assert (=> d!997595 m!3864547))

(declare-fun m!3868753 () Bool)

(assert (=> d!997595 m!3868753))

(declare-fun m!3868755 () Bool)

(assert (=> d!997595 m!3868755))

(declare-fun m!3868757 () Bool)

(assert (=> d!997595 m!3868757))

(assert (=> d!997595 m!3864937))

(declare-fun m!3868759 () Bool)

(assert (=> d!997595 m!3868759))

(declare-fun m!3868761 () Bool)

(assert (=> d!997595 m!3868761))

(declare-fun m!3868763 () Bool)

(assert (=> d!997595 m!3868763))

(assert (=> d!997595 m!3868755))

(declare-fun m!3868765 () Bool)

(assert (=> d!997595 m!3868765))

(declare-fun m!3868767 () Bool)

(assert (=> b!3463719 m!3868767))

(declare-fun m!3868769 () Bool)

(assert (=> b!3463719 m!3868769))

(declare-fun m!3868771 () Bool)

(assert (=> b!3463719 m!3868771))

(assert (=> b!3463719 m!3868769))

(declare-fun m!3868773 () Bool)

(assert (=> b!3463719 m!3868773))

(declare-fun m!3868775 () Bool)

(assert (=> b!3463719 m!3868775))

(declare-fun m!3868777 () Bool)

(assert (=> b!3463719 m!3868777))

(declare-fun m!3868779 () Bool)

(assert (=> b!3463719 m!3868779))

(declare-fun m!3868783 () Bool)

(assert (=> b!3463719 m!3868783))

(declare-fun m!3868785 () Bool)

(assert (=> b!3463719 m!3868785))

(declare-fun m!3868787 () Bool)

(assert (=> b!3463719 m!3868787))

(declare-fun m!3868789 () Bool)

(assert (=> b!3463719 m!3868789))

(declare-fun m!3868791 () Bool)

(assert (=> b!3463719 m!3868791))

(declare-fun m!3868793 () Bool)

(assert (=> b!3463719 m!3868793))

(declare-fun m!3868795 () Bool)

(assert (=> b!3463719 m!3868795))

(declare-fun m!3868797 () Bool)

(assert (=> b!3463719 m!3868797))

(declare-fun m!3868799 () Bool)

(assert (=> b!3463719 m!3868799))

(assert (=> b!3463719 m!3868789))

(declare-fun m!3868801 () Bool)

(assert (=> b!3463719 m!3868801))

(assert (=> b!3463719 m!3868791))

(assert (=> b!3463719 m!3864547))

(assert (=> b!3463719 m!3868767))

(declare-fun m!3868803 () Bool)

(assert (=> b!3463719 m!3868803))

(assert (=> b!3463719 m!3868797))

(declare-fun m!3868805 () Bool)

(assert (=> b!3463719 m!3868805))

(assert (=> b!3463719 m!3868797))

(assert (=> b!3463719 m!3868793))

(declare-fun m!3868807 () Bool)

(assert (=> b!3463719 m!3868807))

(declare-fun m!3868809 () Bool)

(assert (=> b!3463719 m!3868809))

(declare-fun m!3868811 () Bool)

(assert (=> b!3463719 m!3868811))

(declare-fun m!3868813 () Bool)

(assert (=> b!3463719 m!3868813))

(assert (=> b!3463719 m!3864547))

(assert (=> b!3463719 m!3868777))

(declare-fun m!3868815 () Bool)

(assert (=> b!3463719 m!3868815))

(assert (=> b!3463719 m!3868811))

(assert (=> b!3463719 m!3866849))

(assert (=> b!3463719 m!3868765))

(declare-fun m!3868817 () Bool)

(assert (=> b!3463719 m!3868817))

(assert (=> b!3463719 m!3868775))

(assert (=> b!3463719 m!3868783))

(declare-fun m!3868823 () Bool)

(assert (=> b!3463719 m!3868823))

(declare-fun m!3868827 () Bool)

(assert (=> b!3463719 m!3868827))

(declare-fun m!3868829 () Bool)

(assert (=> b!3463719 m!3868829))

(declare-fun m!3868831 () Bool)

(assert (=> b!3463719 m!3868831))

(declare-fun m!3868833 () Bool)

(assert (=> b!3463719 m!3868833))

(assert (=> b!3463719 m!3868775))

(assert (=> b!3463719 m!3868827))

(declare-fun m!3868837 () Bool)

(assert (=> b!3463720 m!3868837))

(assert (=> b!3463720 m!3868765))

(declare-fun m!3868839 () Bool)

(assert (=> b!3463720 m!3868839))

(declare-fun m!3868841 () Bool)

(assert (=> b!3463721 m!3868841))

(declare-fun m!3868843 () Bool)

(assert (=> b!3463721 m!3868843))

(assert (=> d!996293 d!997595))

(declare-fun d!997613 () Bool)

(declare-fun c!593258 () Bool)

(assert (=> d!997613 (= c!593258 ((_ is Node!11255) (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))) (value!175500 separatorToken!241)))))))

(declare-fun e!2145842 () Bool)

(assert (=> d!997613 (= (inv!50346 (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))) (value!175500 separatorToken!241)))) e!2145842)))

(declare-fun b!3463743 () Bool)

(assert (=> b!3463743 (= e!2145842 (inv!50350 (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))) (value!175500 separatorToken!241)))))))

(declare-fun b!3463744 () Bool)

(declare-fun e!2145843 () Bool)

(assert (=> b!3463744 (= e!2145842 e!2145843)))

(declare-fun res!1397519 () Bool)

(assert (=> b!3463744 (= res!1397519 (not ((_ is Leaf!17586) (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))) (value!175500 separatorToken!241))))))))

(assert (=> b!3463744 (=> res!1397519 e!2145843)))

(declare-fun b!3463745 () Bool)

(assert (=> b!3463745 (= e!2145843 (inv!50351 (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))) (value!175500 separatorToken!241)))))))

(assert (= (and d!997613 c!593258) b!3463743))

(assert (= (and d!997613 (not c!593258)) b!3463744))

(assert (= (and b!3463744 (not res!1397519)) b!3463745))

(declare-fun m!3868845 () Bool)

(assert (=> b!3463743 m!3868845))

(declare-fun m!3868847 () Bool)

(assert (=> b!3463745 m!3868847))

(assert (=> b!3461247 d!997613))

(declare-fun d!997615 () Bool)

(declare-fun lt!1177948 () BalanceConc!22124)

(assert (=> d!997615 (= (list!13535 lt!1177948) (printListTailRec!689 thiss!18206 (dropList!1206 lt!1176610 (+ 0 1)) (list!13535 (++!9166 (BalanceConc!22125 Empty!11255) (charsOf!3454 (apply!8756 lt!1176610 0))))))))

(declare-fun e!2145844 () BalanceConc!22124)

(assert (=> d!997615 (= lt!1177948 e!2145844)))

(declare-fun c!593259 () Bool)

(assert (=> d!997615 (= c!593259 (>= (+ 0 1) (size!28200 lt!1176610)))))

(declare-fun e!2145845 () Bool)

(assert (=> d!997615 e!2145845))

(declare-fun res!1397520 () Bool)

(assert (=> d!997615 (=> (not res!1397520) (not e!2145845))))

(assert (=> d!997615 (= res!1397520 (>= (+ 0 1) 0))))

(assert (=> d!997615 (= (printTailRec!1524 thiss!18206 lt!1176610 (+ 0 1) (++!9166 (BalanceConc!22125 Empty!11255) (charsOf!3454 (apply!8756 lt!1176610 0)))) lt!1177948)))

(declare-fun b!3463746 () Bool)

(assert (=> b!3463746 (= e!2145845 (<= (+ 0 1) (size!28200 lt!1176610)))))

(declare-fun b!3463747 () Bool)

(assert (=> b!3463747 (= e!2145844 (++!9166 (BalanceConc!22125 Empty!11255) (charsOf!3454 (apply!8756 lt!1176610 0))))))

(declare-fun b!3463748 () Bool)

(assert (=> b!3463748 (= e!2145844 (printTailRec!1524 thiss!18206 lt!1176610 (+ 0 1 1) (++!9166 (++!9166 (BalanceConc!22125 Empty!11255) (charsOf!3454 (apply!8756 lt!1176610 0))) (charsOf!3454 (apply!8756 lt!1176610 (+ 0 1))))))))

(declare-fun lt!1177949 () List!37297)

(assert (=> b!3463748 (= lt!1177949 (list!13537 lt!1176610))))

(declare-fun lt!1177944 () Unit!52520)

(assert (=> b!3463748 (= lt!1177944 (lemmaDropApply!1164 lt!1177949 (+ 0 1)))))

(assert (=> b!3463748 (= (head!7322 (drop!2012 lt!1177949 (+ 0 1))) (apply!8758 lt!1177949 (+ 0 1)))))

(declare-fun lt!1177943 () Unit!52520)

(assert (=> b!3463748 (= lt!1177943 lt!1177944)))

(declare-fun lt!1177945 () List!37297)

(assert (=> b!3463748 (= lt!1177945 (list!13537 lt!1176610))))

(declare-fun lt!1177946 () Unit!52520)

(assert (=> b!3463748 (= lt!1177946 (lemmaDropTail!1048 lt!1177945 (+ 0 1)))))

(assert (=> b!3463748 (= (tail!5435 (drop!2012 lt!1177945 (+ 0 1))) (drop!2012 lt!1177945 (+ 0 1 1)))))

(declare-fun lt!1177947 () Unit!52520)

(assert (=> b!3463748 (= lt!1177947 lt!1177946)))

(assert (= (and d!997615 res!1397520) b!3463746))

(assert (= (and d!997615 c!593259) b!3463747))

(assert (= (and d!997615 (not c!593259)) b!3463748))

(declare-fun m!3868863 () Bool)

(assert (=> d!997615 m!3868863))

(declare-fun m!3868865 () Bool)

(assert (=> d!997615 m!3868865))

(assert (=> d!997615 m!3864993))

(assert (=> d!997615 m!3865005))

(declare-fun m!3868867 () Bool)

(assert (=> d!997615 m!3868867))

(assert (=> d!997615 m!3868865))

(assert (=> d!997615 m!3868867))

(declare-fun m!3868871 () Bool)

(assert (=> d!997615 m!3868871))

(assert (=> b!3463746 m!3864993))

(declare-fun m!3868873 () Bool)

(assert (=> b!3463748 m!3868873))

(assert (=> b!3463748 m!3864815))

(declare-fun m!3868875 () Bool)

(assert (=> b!3463748 m!3868875))

(declare-fun m!3868877 () Bool)

(assert (=> b!3463748 m!3868877))

(assert (=> b!3463748 m!3865005))

(declare-fun m!3868879 () Bool)

(assert (=> b!3463748 m!3868879))

(declare-fun m!3868881 () Bool)

(assert (=> b!3463748 m!3868881))

(declare-fun m!3868885 () Bool)

(assert (=> b!3463748 m!3868885))

(declare-fun m!3868887 () Bool)

(assert (=> b!3463748 m!3868887))

(declare-fun m!3868889 () Bool)

(assert (=> b!3463748 m!3868889))

(assert (=> b!3463748 m!3868875))

(declare-fun m!3868891 () Bool)

(assert (=> b!3463748 m!3868891))

(assert (=> b!3463748 m!3868881))

(declare-fun m!3868893 () Bool)

(assert (=> b!3463748 m!3868893))

(assert (=> b!3463748 m!3868885))

(declare-fun m!3868895 () Bool)

(assert (=> b!3463748 m!3868895))

(assert (=> b!3463748 m!3868877))

(assert (=> b!3463748 m!3868879))

(declare-fun m!3868897 () Bool)

(assert (=> b!3463748 m!3868897))

(assert (=> b!3461667 d!997615))

(declare-fun b!3463757 () Bool)

(declare-fun e!2145852 () Int)

(declare-fun call!249848 () Int)

(assert (=> b!3463757 (= e!2145852 (- call!249848 0))))

(declare-fun b!3463758 () Bool)

(declare-fun e!2145851 () List!37297)

(assert (=> b!3463758 (= e!2145851 lt!1176863)))

(declare-fun b!3463759 () Bool)

(declare-fun e!2145855 () Bool)

(declare-fun lt!1177954 () List!37297)

(declare-fun e!2145854 () Int)

(assert (=> b!3463759 (= e!2145855 (= (size!28206 lt!1177954) e!2145854))))

(declare-fun c!593266 () Bool)

(assert (=> b!3463759 (= c!593266 (<= 0 0))))

(declare-fun d!997627 () Bool)

(assert (=> d!997627 e!2145855))

(declare-fun res!1397523 () Bool)

(assert (=> d!997627 (=> (not res!1397523) (not e!2145855))))

(assert (=> d!997627 (= res!1397523 (= ((_ map implies) (content!5192 lt!1177954) (content!5192 lt!1176863)) ((as const (InoxSet Token!10246)) true)))))

(declare-fun e!2145853 () List!37297)

(assert (=> d!997627 (= lt!1177954 e!2145853)))

(declare-fun c!593264 () Bool)

(assert (=> d!997627 (= c!593264 ((_ is Nil!37173) lt!1176863))))

(assert (=> d!997627 (= (drop!2012 lt!1176863 0) lt!1177954)))

(declare-fun b!3463760 () Bool)

(assert (=> b!3463760 (= e!2145853 e!2145851)))

(declare-fun c!593263 () Bool)

(assert (=> b!3463760 (= c!593263 (<= 0 0))))

(declare-fun b!3463761 () Bool)

(assert (=> b!3463761 (= e!2145854 call!249848)))

(declare-fun bm!249843 () Bool)

(assert (=> bm!249843 (= call!249848 (size!28206 lt!1176863))))

(declare-fun b!3463762 () Bool)

(assert (=> b!3463762 (= e!2145851 (drop!2012 (t!273044 lt!1176863) (- 0 1)))))

(declare-fun b!3463763 () Bool)

(assert (=> b!3463763 (= e!2145853 Nil!37173)))

(declare-fun b!3463764 () Bool)

(assert (=> b!3463764 (= e!2145854 e!2145852)))

(declare-fun c!593265 () Bool)

(assert (=> b!3463764 (= c!593265 (>= 0 call!249848))))

(declare-fun b!3463765 () Bool)

(assert (=> b!3463765 (= e!2145852 0)))

(assert (= (and d!997627 c!593264) b!3463763))

(assert (= (and d!997627 (not c!593264)) b!3463760))

(assert (= (and b!3463760 c!593263) b!3463758))

(assert (= (and b!3463760 (not c!593263)) b!3463762))

(assert (= (and d!997627 res!1397523) b!3463759))

(assert (= (and b!3463759 c!593266) b!3463761))

(assert (= (and b!3463759 (not c!593266)) b!3463764))

(assert (= (and b!3463764 c!593265) b!3463765))

(assert (= (and b!3463764 (not c!593265)) b!3463757))

(assert (= (or b!3463761 b!3463764 b!3463757) bm!249843))

(declare-fun m!3868901 () Bool)

(assert (=> b!3463759 m!3868901))

(declare-fun m!3868903 () Bool)

(assert (=> d!997627 m!3868903))

(declare-fun m!3868905 () Bool)

(assert (=> d!997627 m!3868905))

(declare-fun m!3868907 () Bool)

(assert (=> bm!249843 m!3868907))

(declare-fun m!3868909 () Bool)

(assert (=> b!3463762 m!3868909))

(assert (=> b!3461667 d!997627))

(declare-fun d!997629 () Bool)

(declare-fun lt!1177955 () Token!10246)

(assert (=> d!997629 (= lt!1177955 (apply!8758 (list!13537 lt!1176610) 0))))

(assert (=> d!997629 (= lt!1177955 (apply!8759 (c!592552 lt!1176610) 0))))

(declare-fun e!2145857 () Bool)

(assert (=> d!997629 e!2145857))

(declare-fun res!1397524 () Bool)

(assert (=> d!997629 (=> (not res!1397524) (not e!2145857))))

(assert (=> d!997629 (= res!1397524 (<= 0 0))))

(assert (=> d!997629 (= (apply!8756 lt!1176610 0) lt!1177955)))

(declare-fun b!3463766 () Bool)

(assert (=> b!3463766 (= e!2145857 (< 0 (size!28200 lt!1176610)))))

(assert (= (and d!997629 res!1397524) b!3463766))

(assert (=> d!997629 m!3864815))

(assert (=> d!997629 m!3864815))

(declare-fun m!3868911 () Bool)

(assert (=> d!997629 m!3868911))

(declare-fun m!3868913 () Bool)

(assert (=> d!997629 m!3868913))

(assert (=> b!3463766 m!3864993))

(assert (=> b!3461667 d!997629))

(declare-fun b!3463768 () Bool)

(declare-fun res!1397527 () Bool)

(declare-fun e!2145858 () Bool)

(assert (=> b!3463768 (=> (not res!1397527) (not e!2145858))))

(assert (=> b!3463768 (= res!1397527 (<= (height!1700 (++!9171 (c!592551 (BalanceConc!22125 Empty!11255)) (c!592551 (charsOf!3454 (apply!8756 lt!1176610 0))))) (+ (max!0 (height!1700 (c!592551 (BalanceConc!22125 Empty!11255))) (height!1700 (c!592551 (charsOf!3454 (apply!8756 lt!1176610 0))))) 1)))))

(declare-fun b!3463767 () Bool)

(declare-fun res!1397526 () Bool)

(assert (=> b!3463767 (=> (not res!1397526) (not e!2145858))))

(assert (=> b!3463767 (= res!1397526 (isBalanced!3418 (++!9171 (c!592551 (BalanceConc!22125 Empty!11255)) (c!592551 (charsOf!3454 (apply!8756 lt!1176610 0))))))))

(declare-fun d!997631 () Bool)

(assert (=> d!997631 e!2145858))

(declare-fun res!1397528 () Bool)

(assert (=> d!997631 (=> (not res!1397528) (not e!2145858))))

(assert (=> d!997631 (= res!1397528 (appendAssocInst!805 (c!592551 (BalanceConc!22125 Empty!11255)) (c!592551 (charsOf!3454 (apply!8756 lt!1176610 0)))))))

(declare-fun lt!1177956 () BalanceConc!22124)

(assert (=> d!997631 (= lt!1177956 (BalanceConc!22125 (++!9171 (c!592551 (BalanceConc!22125 Empty!11255)) (c!592551 (charsOf!3454 (apply!8756 lt!1176610 0))))))))

(assert (=> d!997631 (= (++!9166 (BalanceConc!22125 Empty!11255) (charsOf!3454 (apply!8756 lt!1176610 0))) lt!1177956)))

(declare-fun b!3463769 () Bool)

(declare-fun res!1397525 () Bool)

(assert (=> b!3463769 (=> (not res!1397525) (not e!2145858))))

(assert (=> b!3463769 (= res!1397525 (>= (height!1700 (++!9171 (c!592551 (BalanceConc!22125 Empty!11255)) (c!592551 (charsOf!3454 (apply!8756 lt!1176610 0))))) (max!0 (height!1700 (c!592551 (BalanceConc!22125 Empty!11255))) (height!1700 (c!592551 (charsOf!3454 (apply!8756 lt!1176610 0)))))))))

(declare-fun b!3463770 () Bool)

(assert (=> b!3463770 (= e!2145858 (= (list!13535 lt!1177956) (++!9165 (list!13535 (BalanceConc!22125 Empty!11255)) (list!13535 (charsOf!3454 (apply!8756 lt!1176610 0))))))))

(assert (= (and d!997631 res!1397528) b!3463767))

(assert (= (and b!3463767 res!1397526) b!3463768))

(assert (= (and b!3463768 res!1397527) b!3463769))

(assert (= (and b!3463769 res!1397525) b!3463770))

(declare-fun m!3868931 () Bool)

(assert (=> b!3463770 m!3868931))

(assert (=> b!3463770 m!3864547))

(assert (=> b!3463770 m!3865003))

(declare-fun m!3868935 () Bool)

(assert (=> b!3463770 m!3868935))

(assert (=> b!3463770 m!3864547))

(assert (=> b!3463770 m!3868935))

(declare-fun m!3868937 () Bool)

(assert (=> b!3463770 m!3868937))

(declare-fun m!3868939 () Bool)

(assert (=> b!3463769 m!3868939))

(assert (=> b!3463769 m!3868939))

(declare-fun m!3868941 () Bool)

(assert (=> b!3463769 m!3868941))

(assert (=> b!3463769 m!3867561))

(declare-fun m!3868943 () Bool)

(assert (=> b!3463769 m!3868943))

(declare-fun m!3869111 () Bool)

(assert (=> b!3463769 m!3869111))

(assert (=> b!3463769 m!3867561))

(assert (=> b!3463769 m!3868943))

(declare-fun m!3869113 () Bool)

(assert (=> d!997631 m!3869113))

(assert (=> d!997631 m!3868939))

(assert (=> b!3463768 m!3868939))

(assert (=> b!3463768 m!3868939))

(assert (=> b!3463768 m!3868941))

(assert (=> b!3463768 m!3867561))

(assert (=> b!3463768 m!3868943))

(assert (=> b!3463768 m!3869111))

(assert (=> b!3463768 m!3867561))

(assert (=> b!3463768 m!3868943))

(assert (=> b!3463767 m!3868939))

(assert (=> b!3463767 m!3868939))

(declare-fun m!3869115 () Bool)

(assert (=> b!3463767 m!3869115))

(assert (=> b!3461667 d!997631))

(declare-fun d!997695 () Bool)

(assert (=> d!997695 (= (tail!5435 (drop!2012 lt!1176859 0)) (drop!2012 lt!1176859 (+ 0 1)))))

(declare-fun lt!1177974 () Unit!52520)

(assert (=> d!997695 (= lt!1177974 (choose!20035 lt!1176859 0))))

(declare-fun e!2145894 () Bool)

(assert (=> d!997695 e!2145894))

(declare-fun res!1397560 () Bool)

(assert (=> d!997695 (=> (not res!1397560) (not e!2145894))))

(assert (=> d!997695 (= res!1397560 (>= 0 0))))

(assert (=> d!997695 (= (lemmaDropTail!1048 lt!1176859 0) lt!1177974)))

(declare-fun b!3463834 () Bool)

(assert (=> b!3463834 (= e!2145894 (< 0 (size!28206 lt!1176859)))))

(assert (= (and d!997695 res!1397560) b!3463834))

(assert (=> d!997695 m!3864999))

(assert (=> d!997695 m!3864999))

(assert (=> d!997695 m!3865013))

(assert (=> d!997695 m!3864997))

(declare-fun m!3869117 () Bool)

(assert (=> d!997695 m!3869117))

(declare-fun m!3869119 () Bool)

(assert (=> b!3463834 m!3869119))

(assert (=> b!3461667 d!997695))

(declare-fun d!997697 () Bool)

(assert (=> d!997697 (= (tail!5435 (drop!2012 lt!1176859 0)) (t!273044 (drop!2012 lt!1176859 0)))))

(assert (=> b!3461667 d!997697))

(declare-fun d!997699 () Bool)

(assert (=> d!997699 (= (head!7322 (drop!2012 lt!1176863 0)) (h!42593 (drop!2012 lt!1176863 0)))))

(assert (=> b!3461667 d!997699))

(assert (=> b!3461667 d!997189))

(declare-fun d!997701 () Bool)

(declare-fun lt!1177975 () BalanceConc!22124)

(assert (=> d!997701 (= (list!13535 lt!1177975) (originalCharacters!6154 (apply!8756 lt!1176610 0)))))

(assert (=> d!997701 (= lt!1177975 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (apply!8756 lt!1176610 0)))) (value!175500 (apply!8756 lt!1176610 0))))))

(assert (=> d!997701 (= (charsOf!3454 (apply!8756 lt!1176610 0)) lt!1177975)))

(declare-fun b_lambda!99815 () Bool)

(assert (=> (not b_lambda!99815) (not d!997701)))

(declare-fun tb!188967 () Bool)

(declare-fun t!273318 () Bool)

(assert (=> (and b!3461104 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (toChars!7527 (transformation!5440 (rule!8032 (apply!8756 lt!1176610 0))))) t!273318) tb!188967))

(declare-fun b!3463835 () Bool)

(declare-fun e!2145895 () Bool)

(declare-fun tp!1078351 () Bool)

(assert (=> b!3463835 (= e!2145895 (and (inv!50346 (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (apply!8756 lt!1176610 0)))) (value!175500 (apply!8756 lt!1176610 0))))) tp!1078351))))

(declare-fun result!232980 () Bool)

(assert (=> tb!188967 (= result!232980 (and (inv!50347 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (apply!8756 lt!1176610 0)))) (value!175500 (apply!8756 lt!1176610 0)))) e!2145895))))

(assert (= tb!188967 b!3463835))

(declare-fun m!3869121 () Bool)

(assert (=> b!3463835 m!3869121))

(declare-fun m!3869123 () Bool)

(assert (=> tb!188967 m!3869123))

(assert (=> d!997701 t!273318))

(declare-fun b_and!243761 () Bool)

(assert (= b_and!243705 (and (=> t!273318 result!232980) b_and!243761)))

(declare-fun tb!188969 () Bool)

(declare-fun t!273320 () Bool)

(assert (=> (and b!3461904 (= (toChars!7527 (transformation!5440 (h!42592 (t!273043 rules!2135)))) (toChars!7527 (transformation!5440 (rule!8032 (apply!8756 lt!1176610 0))))) t!273320) tb!188969))

(declare-fun result!232982 () Bool)

(assert (= result!232982 result!232980))

(assert (=> d!997701 t!273320))

(declare-fun b_and!243763 () Bool)

(assert (= b_and!243701 (and (=> t!273320 result!232982) b_and!243763)))

(declare-fun tb!188971 () Bool)

(declare-fun t!273322 () Bool)

(assert (=> (and b!3461881 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (toChars!7527 (transformation!5440 (rule!8032 (apply!8756 lt!1176610 0))))) t!273322) tb!188971))

(declare-fun result!232984 () Bool)

(assert (= result!232984 result!232980))

(assert (=> d!997701 t!273322))

(declare-fun b_and!243765 () Bool)

(assert (= b_and!243709 (and (=> t!273322 result!232984) b_and!243765)))

(declare-fun t!273324 () Bool)

(declare-fun tb!188973 () Bool)

(assert (=> (and b!3461090 (= (toChars!7527 (transformation!5440 (h!42592 rules!2135))) (toChars!7527 (transformation!5440 (rule!8032 (apply!8756 lt!1176610 0))))) t!273324) tb!188973))

(declare-fun result!232986 () Bool)

(assert (= result!232986 result!232980))

(assert (=> d!997701 t!273324))

(declare-fun b_and!243767 () Bool)

(assert (= b_and!243707 (and (=> t!273324 result!232986) b_and!243767)))

(declare-fun t!273326 () Bool)

(declare-fun tb!188975 () Bool)

(assert (=> (and b!3461071 (= (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))) (toChars!7527 (transformation!5440 (rule!8032 (apply!8756 lt!1176610 0))))) t!273326) tb!188975))

(declare-fun result!232988 () Bool)

(assert (= result!232988 result!232980))

(assert (=> d!997701 t!273326))

(declare-fun b_and!243769 () Bool)

(assert (= b_and!243703 (and (=> t!273326 result!232988) b_and!243769)))

(declare-fun m!3869125 () Bool)

(assert (=> d!997701 m!3869125))

(declare-fun m!3869127 () Bool)

(assert (=> d!997701 m!3869127))

(assert (=> b!3461667 d!997701))

(declare-fun d!997703 () Bool)

(assert (=> d!997703 (= (head!7322 (drop!2012 lt!1176863 0)) (apply!8758 lt!1176863 0))))

(declare-fun lt!1177976 () Unit!52520)

(assert (=> d!997703 (= lt!1177976 (choose!20036 lt!1176863 0))))

(declare-fun e!2145896 () Bool)

(assert (=> d!997703 e!2145896))

(declare-fun res!1397561 () Bool)

(assert (=> d!997703 (=> (not res!1397561) (not e!2145896))))

(assert (=> d!997703 (= res!1397561 (>= 0 0))))

(assert (=> d!997703 (= (lemmaDropApply!1164 lt!1176863 0) lt!1177976)))

(declare-fun b!3463836 () Bool)

(assert (=> b!3463836 (= e!2145896 (< 0 (size!28206 lt!1176863)))))

(assert (= (and d!997703 res!1397561) b!3463836))

(assert (=> d!997703 m!3865007))

(assert (=> d!997703 m!3865007))

(assert (=> d!997703 m!3865009))

(assert (=> d!997703 m!3865019))

(declare-fun m!3869129 () Bool)

(assert (=> d!997703 m!3869129))

(assert (=> b!3463836 m!3868907))

(assert (=> b!3461667 d!997703))

(declare-fun d!997705 () Bool)

(declare-fun lt!1177977 () Token!10246)

(assert (=> d!997705 (contains!6897 lt!1176863 lt!1177977)))

(declare-fun e!2145898 () Token!10246)

(assert (=> d!997705 (= lt!1177977 e!2145898)))

(declare-fun c!593283 () Bool)

(assert (=> d!997705 (= c!593283 (= 0 0))))

(declare-fun e!2145897 () Bool)

(assert (=> d!997705 e!2145897))

(declare-fun res!1397562 () Bool)

(assert (=> d!997705 (=> (not res!1397562) (not e!2145897))))

(assert (=> d!997705 (= res!1397562 (<= 0 0))))

(assert (=> d!997705 (= (apply!8758 lt!1176863 0) lt!1177977)))

(declare-fun b!3463837 () Bool)

(assert (=> b!3463837 (= e!2145897 (< 0 (size!28206 lt!1176863)))))

(declare-fun b!3463838 () Bool)

(assert (=> b!3463838 (= e!2145898 (head!7322 lt!1176863))))

(declare-fun b!3463839 () Bool)

(assert (=> b!3463839 (= e!2145898 (apply!8758 (tail!5435 lt!1176863) (- 0 1)))))

(assert (= (and d!997705 res!1397562) b!3463837))

(assert (= (and d!997705 c!593283) b!3463838))

(assert (= (and d!997705 (not c!593283)) b!3463839))

(declare-fun m!3869131 () Bool)

(assert (=> d!997705 m!3869131))

(assert (=> b!3463837 m!3868907))

(declare-fun m!3869133 () Bool)

(assert (=> b!3463838 m!3869133))

(declare-fun m!3869135 () Bool)

(assert (=> b!3463839 m!3869135))

(assert (=> b!3463839 m!3869135))

(declare-fun m!3869137 () Bool)

(assert (=> b!3463839 m!3869137))

(assert (=> b!3461667 d!997705))

(declare-fun b!3463840 () Bool)

(declare-fun e!2145900 () Int)

(declare-fun call!249850 () Int)

(assert (=> b!3463840 (= e!2145900 (- call!249850 (+ 0 1)))))

(declare-fun b!3463841 () Bool)

(declare-fun e!2145899 () List!37297)

(assert (=> b!3463841 (= e!2145899 lt!1176859)))

(declare-fun b!3463842 () Bool)

(declare-fun e!2145903 () Bool)

(declare-fun lt!1177978 () List!37297)

(declare-fun e!2145902 () Int)

(assert (=> b!3463842 (= e!2145903 (= (size!28206 lt!1177978) e!2145902))))

(declare-fun c!593287 () Bool)

(assert (=> b!3463842 (= c!593287 (<= (+ 0 1) 0))))

(declare-fun d!997707 () Bool)

(assert (=> d!997707 e!2145903))

(declare-fun res!1397563 () Bool)

(assert (=> d!997707 (=> (not res!1397563) (not e!2145903))))

(assert (=> d!997707 (= res!1397563 (= ((_ map implies) (content!5192 lt!1177978) (content!5192 lt!1176859)) ((as const (InoxSet Token!10246)) true)))))

(declare-fun e!2145901 () List!37297)

(assert (=> d!997707 (= lt!1177978 e!2145901)))

(declare-fun c!593285 () Bool)

(assert (=> d!997707 (= c!593285 ((_ is Nil!37173) lt!1176859))))

(assert (=> d!997707 (= (drop!2012 lt!1176859 (+ 0 1)) lt!1177978)))

(declare-fun b!3463843 () Bool)

(assert (=> b!3463843 (= e!2145901 e!2145899)))

(declare-fun c!593284 () Bool)

(assert (=> b!3463843 (= c!593284 (<= (+ 0 1) 0))))

(declare-fun b!3463844 () Bool)

(assert (=> b!3463844 (= e!2145902 call!249850)))

(declare-fun bm!249845 () Bool)

(assert (=> bm!249845 (= call!249850 (size!28206 lt!1176859))))

(declare-fun b!3463845 () Bool)

(assert (=> b!3463845 (= e!2145899 (drop!2012 (t!273044 lt!1176859) (- (+ 0 1) 1)))))

(declare-fun b!3463846 () Bool)

(assert (=> b!3463846 (= e!2145901 Nil!37173)))

(declare-fun b!3463847 () Bool)

(assert (=> b!3463847 (= e!2145902 e!2145900)))

(declare-fun c!593286 () Bool)

(assert (=> b!3463847 (= c!593286 (>= (+ 0 1) call!249850))))

(declare-fun b!3463848 () Bool)

(assert (=> b!3463848 (= e!2145900 0)))

(assert (= (and d!997707 c!593285) b!3463846))

(assert (= (and d!997707 (not c!593285)) b!3463843))

(assert (= (and b!3463843 c!593284) b!3463841))

(assert (= (and b!3463843 (not c!593284)) b!3463845))

(assert (= (and d!997707 res!1397563) b!3463842))

(assert (= (and b!3463842 c!593287) b!3463844))

(assert (= (and b!3463842 (not c!593287)) b!3463847))

(assert (= (and b!3463847 c!593286) b!3463848))

(assert (= (and b!3463847 (not c!593286)) b!3463840))

(assert (= (or b!3463844 b!3463847 b!3463840) bm!249845))

(declare-fun m!3869139 () Bool)

(assert (=> b!3463842 m!3869139))

(declare-fun m!3869141 () Bool)

(assert (=> d!997707 m!3869141))

(declare-fun m!3869143 () Bool)

(assert (=> d!997707 m!3869143))

(assert (=> bm!249845 m!3869119))

(declare-fun m!3869145 () Bool)

(assert (=> b!3463845 m!3869145))

(assert (=> b!3461667 d!997707))

(declare-fun b!3463849 () Bool)

(declare-fun e!2145905 () Int)

(declare-fun call!249851 () Int)

(assert (=> b!3463849 (= e!2145905 (- call!249851 0))))

(declare-fun b!3463850 () Bool)

(declare-fun e!2145904 () List!37297)

(assert (=> b!3463850 (= e!2145904 lt!1176859)))

(declare-fun b!3463851 () Bool)

(declare-fun e!2145908 () Bool)

(declare-fun lt!1177979 () List!37297)

(declare-fun e!2145907 () Int)

(assert (=> b!3463851 (= e!2145908 (= (size!28206 lt!1177979) e!2145907))))

(declare-fun c!593291 () Bool)

(assert (=> b!3463851 (= c!593291 (<= 0 0))))

(declare-fun d!997709 () Bool)

(assert (=> d!997709 e!2145908))

(declare-fun res!1397564 () Bool)

(assert (=> d!997709 (=> (not res!1397564) (not e!2145908))))

(assert (=> d!997709 (= res!1397564 (= ((_ map implies) (content!5192 lt!1177979) (content!5192 lt!1176859)) ((as const (InoxSet Token!10246)) true)))))

(declare-fun e!2145906 () List!37297)

(assert (=> d!997709 (= lt!1177979 e!2145906)))

(declare-fun c!593289 () Bool)

(assert (=> d!997709 (= c!593289 ((_ is Nil!37173) lt!1176859))))

(assert (=> d!997709 (= (drop!2012 lt!1176859 0) lt!1177979)))

(declare-fun b!3463852 () Bool)

(assert (=> b!3463852 (= e!2145906 e!2145904)))

(declare-fun c!593288 () Bool)

(assert (=> b!3463852 (= c!593288 (<= 0 0))))

(declare-fun b!3463853 () Bool)

(assert (=> b!3463853 (= e!2145907 call!249851)))

(declare-fun bm!249846 () Bool)

(assert (=> bm!249846 (= call!249851 (size!28206 lt!1176859))))

(declare-fun b!3463854 () Bool)

(assert (=> b!3463854 (= e!2145904 (drop!2012 (t!273044 lt!1176859) (- 0 1)))))

(declare-fun b!3463855 () Bool)

(assert (=> b!3463855 (= e!2145906 Nil!37173)))

(declare-fun b!3463856 () Bool)

(assert (=> b!3463856 (= e!2145907 e!2145905)))

(declare-fun c!593290 () Bool)

(assert (=> b!3463856 (= c!593290 (>= 0 call!249851))))

(declare-fun b!3463857 () Bool)

(assert (=> b!3463857 (= e!2145905 0)))

(assert (= (and d!997709 c!593289) b!3463855))

(assert (= (and d!997709 (not c!593289)) b!3463852))

(assert (= (and b!3463852 c!593288) b!3463850))

(assert (= (and b!3463852 (not c!593288)) b!3463854))

(assert (= (and d!997709 res!1397564) b!3463851))

(assert (= (and b!3463851 c!593291) b!3463853))

(assert (= (and b!3463851 (not c!593291)) b!3463856))

(assert (= (and b!3463856 c!593290) b!3463857))

(assert (= (and b!3463856 (not c!593290)) b!3463849))

(assert (= (or b!3463853 b!3463856 b!3463849) bm!249846))

(declare-fun m!3869147 () Bool)

(assert (=> b!3463851 m!3869147))

(declare-fun m!3869149 () Bool)

(assert (=> d!997709 m!3869149))

(assert (=> d!997709 m!3869143))

(assert (=> bm!249846 m!3869119))

(declare-fun m!3869151 () Bool)

(assert (=> b!3463854 m!3869151))

(assert (=> b!3461667 d!997709))

(declare-fun d!997711 () Bool)

(declare-fun lt!1177980 () Int)

(assert (=> d!997711 (= lt!1177980 (size!28201 (list!13535 (seqFromList!3933 (_1!21587 lt!1176836)))))))

(assert (=> d!997711 (= lt!1177980 (size!28209 (c!592551 (seqFromList!3933 (_1!21587 lt!1176836)))))))

(assert (=> d!997711 (= (size!28205 (seqFromList!3933 (_1!21587 lt!1176836))) lt!1177980)))

(declare-fun bs!560742 () Bool)

(assert (= bs!560742 d!997711))

(assert (=> bs!560742 m!3864919))

(declare-fun m!3869153 () Bool)

(assert (=> bs!560742 m!3869153))

(assert (=> bs!560742 m!3869153))

(declare-fun m!3869155 () Bool)

(assert (=> bs!560742 m!3869155))

(declare-fun m!3869157 () Bool)

(assert (=> bs!560742 m!3869157))

(assert (=> b!3461587 d!997711))

(assert (=> b!3461587 d!996309))

(declare-fun d!997713 () Bool)

(declare-fun e!2145911 () Bool)

(assert (=> d!997713 e!2145911))

(declare-fun res!1397567 () Bool)

(assert (=> d!997713 (=> res!1397567 e!2145911)))

(assert (=> d!997713 (= res!1397567 (isEmpty!21528 (_1!21587 (findLongestMatchInner!911 (regex!5440 (rule!8032 (h!42593 tokens!494))) Nil!37171 (size!28201 Nil!37171) lt!1176597 lt!1176597 (size!28201 lt!1176597)))))))

(declare-fun lt!1177983 () Unit!52520)

(declare-fun choose!20039 (Regex!10199 List!37295) Unit!52520)

(assert (=> d!997713 (= lt!1177983 (choose!20039 (regex!5440 (rule!8032 (h!42593 tokens!494))) lt!1176597))))

(assert (=> d!997713 (validRegex!4645 (regex!5440 (rule!8032 (h!42593 tokens!494))))))

(assert (=> d!997713 (= (longestMatchIsAcceptedByMatchOrIsEmpty!884 (regex!5440 (rule!8032 (h!42593 tokens!494))) lt!1176597) lt!1177983)))

(declare-fun b!3463860 () Bool)

(assert (=> b!3463860 (= e!2145911 (matchR!4783 (regex!5440 (rule!8032 (h!42593 tokens!494))) (_1!21587 (findLongestMatchInner!911 (regex!5440 (rule!8032 (h!42593 tokens!494))) Nil!37171 (size!28201 Nil!37171) lt!1176597 lt!1176597 (size!28201 lt!1176597)))))))

(assert (= (and d!997713 (not res!1397567)) b!3463860))

(assert (=> d!997713 m!3864913))

(assert (=> d!997713 m!3864069))

(assert (=> d!997713 m!3864915))

(assert (=> d!997713 m!3865991))

(assert (=> d!997713 m!3864911))

(assert (=> d!997713 m!3864913))

(declare-fun m!3869159 () Bool)

(assert (=> d!997713 m!3869159))

(assert (=> d!997713 m!3864069))

(assert (=> b!3463860 m!3864913))

(assert (=> b!3463860 m!3864069))

(assert (=> b!3463860 m!3864913))

(assert (=> b!3463860 m!3864069))

(assert (=> b!3463860 m!3864915))

(assert (=> b!3463860 m!3864933))

(assert (=> b!3461587 d!997713))

(declare-fun d!997715 () Bool)

(assert (=> d!997715 (= (seqFromList!3933 (_1!21587 lt!1176836)) (fromListB!1785 (_1!21587 lt!1176836)))))

(declare-fun bs!560743 () Bool)

(assert (= bs!560743 d!997715))

(declare-fun m!3869161 () Bool)

(assert (=> bs!560743 m!3869161))

(assert (=> b!3461587 d!997715))

(declare-fun d!997717 () Bool)

(assert (=> d!997717 (= (apply!8757 (transformation!5440 (rule!8032 (h!42593 tokens!494))) (seqFromList!3933 (_1!21587 lt!1176836))) (dynLambda!15672 (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (seqFromList!3933 (_1!21587 lt!1176836))))))

(declare-fun b_lambda!99817 () Bool)

(assert (=> (not b_lambda!99817) (not d!997717)))

(declare-fun tb!188977 () Bool)

(declare-fun t!273328 () Bool)

(assert (=> (and b!3461071 (= (toValue!7668 (transformation!5440 (rule!8032 separatorToken!241))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) t!273328) tb!188977))

(declare-fun result!232990 () Bool)

(assert (=> tb!188977 (= result!232990 (inv!21 (dynLambda!15672 (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (seqFromList!3933 (_1!21587 lt!1176836)))))))

(declare-fun m!3869163 () Bool)

(assert (=> tb!188977 m!3869163))

(assert (=> d!997717 t!273328))

(declare-fun b_and!243771 () Bool)

(assert (= b_and!243613 (and (=> t!273328 result!232990) b_and!243771)))

(declare-fun t!273330 () Bool)

(declare-fun tb!188979 () Bool)

(assert (=> (and b!3461881 (= (toValue!7668 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) t!273330) tb!188979))

(declare-fun result!232992 () Bool)

(assert (= result!232992 result!232990))

(assert (=> d!997717 t!273330))

(declare-fun b_and!243773 () Bool)

(assert (= b_and!243617 (and (=> t!273330 result!232992) b_and!243773)))

(declare-fun t!273332 () Bool)

(declare-fun tb!188981 () Bool)

(assert (=> (and b!3461104 (= (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) t!273332) tb!188981))

(declare-fun result!232994 () Bool)

(assert (= result!232994 result!232990))

(assert (=> d!997717 t!273332))

(declare-fun b_and!243775 () Bool)

(assert (= b_and!243615 (and (=> t!273332 result!232994) b_and!243775)))

(declare-fun t!273334 () Bool)

(declare-fun tb!188983 () Bool)

(assert (=> (and b!3461904 (= (toValue!7668 (transformation!5440 (h!42592 (t!273043 rules!2135)))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) t!273334) tb!188983))

(declare-fun result!232996 () Bool)

(assert (= result!232996 result!232990))

(assert (=> d!997717 t!273334))

(declare-fun b_and!243777 () Bool)

(assert (= b_and!243619 (and (=> t!273334 result!232996) b_and!243777)))

(declare-fun t!273336 () Bool)

(declare-fun tb!188985 () Bool)

(assert (=> (and b!3461090 (= (toValue!7668 (transformation!5440 (h!42592 rules!2135))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) t!273336) tb!188985))

(declare-fun result!232998 () Bool)

(assert (= result!232998 result!232990))

(assert (=> d!997717 t!273336))

(declare-fun b_and!243779 () Bool)

(assert (= b_and!243611 (and (=> t!273336 result!232998) b_and!243779)))

(assert (=> d!997717 m!3864919))

(declare-fun m!3869165 () Bool)

(assert (=> d!997717 m!3869165))

(assert (=> b!3461587 d!997717))

(assert (=> b!3461587 d!997121))

(declare-fun bs!560744 () Bool)

(declare-fun d!997719 () Bool)

(assert (= bs!560744 (and d!997719 d!996519)))

(declare-fun lambda!121906 () Int)

(assert (=> bs!560744 (= lambda!121906 lambda!121877)))

(declare-fun bs!560745 () Bool)

(assert (= bs!560745 (and d!997719 d!997335)))

(assert (=> bs!560745 (= (and (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (toChars!7527 (transformation!5440 (h!42592 rules!2135)))) (= (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (toValue!7668 (transformation!5440 (h!42592 rules!2135))))) (= lambda!121906 lambda!121888))))

(declare-fun bs!560746 () Bool)

(assert (= bs!560746 (and d!997719 d!997459)))

(assert (=> bs!560746 (= (and (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241)))) (= (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (toValue!7668 (transformation!5440 (rule!8032 separatorToken!241))))) (= lambda!121906 lambda!121892))))

(declare-fun b!3463865 () Bool)

(declare-fun e!2145915 () Bool)

(assert (=> b!3463865 (= e!2145915 true)))

(assert (=> d!997719 e!2145915))

(assert (= d!997719 b!3463865))

(assert (=> b!3463865 (< (dynLambda!15664 order!19805 (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) (dynLambda!15674 order!19813 lambda!121906))))

(assert (=> b!3463865 (< (dynLambda!15666 order!19809 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) (dynLambda!15674 order!19813 lambda!121906))))

(assert (=> d!997719 (= (list!13535 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (dynLambda!15672 (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (seqFromList!3933 (_1!21587 lt!1176836))))) (list!13535 (seqFromList!3933 (_1!21587 lt!1176836))))))

(declare-fun lt!1177986 () Unit!52520)

(declare-fun ForallOf!597 (Int BalanceConc!22124) Unit!52520)

(assert (=> d!997719 (= lt!1177986 (ForallOf!597 lambda!121906 (seqFromList!3933 (_1!21587 lt!1176836))))))

(assert (=> d!997719 (= (lemmaSemiInverse!1261 (transformation!5440 (rule!8032 (h!42593 tokens!494))) (seqFromList!3933 (_1!21587 lt!1176836))) lt!1177986)))

(declare-fun b_lambda!99819 () Bool)

(assert (=> (not b_lambda!99819) (not d!997719)))

(declare-fun t!273338 () Bool)

(declare-fun tb!188987 () Bool)

(assert (=> (and b!3461881 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) t!273338) tb!188987))

(declare-fun e!2145916 () Bool)

(declare-fun b!3463866 () Bool)

(declare-fun tp!1078352 () Bool)

(assert (=> b!3463866 (= e!2145916 (and (inv!50346 (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (dynLambda!15672 (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (seqFromList!3933 (_1!21587 lt!1176836)))))) tp!1078352))))

(declare-fun result!233000 () Bool)

(assert (=> tb!188987 (= result!233000 (and (inv!50347 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (dynLambda!15672 (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (seqFromList!3933 (_1!21587 lt!1176836))))) e!2145916))))

(assert (= tb!188987 b!3463866))

(declare-fun m!3869167 () Bool)

(assert (=> b!3463866 m!3869167))

(declare-fun m!3869169 () Bool)

(assert (=> tb!188987 m!3869169))

(assert (=> d!997719 t!273338))

(declare-fun b_and!243781 () Bool)

(assert (= b_and!243765 (and (=> t!273338 result!233000) b_and!243781)))

(declare-fun tb!188989 () Bool)

(declare-fun t!273340 () Bool)

(assert (=> (and b!3461090 (= (toChars!7527 (transformation!5440 (h!42592 rules!2135))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) t!273340) tb!188989))

(declare-fun result!233002 () Bool)

(assert (= result!233002 result!233000))

(assert (=> d!997719 t!273340))

(declare-fun b_and!243783 () Bool)

(assert (= b_and!243767 (and (=> t!273340 result!233002) b_and!243783)))

(declare-fun tb!188991 () Bool)

(declare-fun t!273342 () Bool)

(assert (=> (and b!3461904 (= (toChars!7527 (transformation!5440 (h!42592 (t!273043 rules!2135)))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) t!273342) tb!188991))

(declare-fun result!233004 () Bool)

(assert (= result!233004 result!233000))

(assert (=> d!997719 t!273342))

(declare-fun b_and!243785 () Bool)

(assert (= b_and!243763 (and (=> t!273342 result!233004) b_and!243785)))

(declare-fun t!273344 () Bool)

(declare-fun tb!188993 () Bool)

(assert (=> (and b!3461104 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) t!273344) tb!188993))

(declare-fun result!233006 () Bool)

(assert (= result!233006 result!233000))

(assert (=> d!997719 t!273344))

(declare-fun b_and!243787 () Bool)

(assert (= b_and!243761 (and (=> t!273344 result!233006) b_and!243787)))

(declare-fun tb!188995 () Bool)

(declare-fun t!273346 () Bool)

(assert (=> (and b!3461071 (= (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) t!273346) tb!188995))

(declare-fun result!233008 () Bool)

(assert (= result!233008 result!233000))

(assert (=> d!997719 t!273346))

(declare-fun b_and!243789 () Bool)

(assert (= b_and!243769 (and (=> t!273346 result!233008) b_and!243789)))

(declare-fun b_lambda!99821 () Bool)

(assert (=> (not b_lambda!99821) (not d!997719)))

(assert (=> d!997719 t!273332))

(declare-fun b_and!243791 () Bool)

(assert (= b_and!243775 (and (=> t!273332 result!232994) b_and!243791)))

(assert (=> d!997719 t!273334))

(declare-fun b_and!243793 () Bool)

(assert (= b_and!243777 (and (=> t!273334 result!232996) b_and!243793)))

(assert (=> d!997719 t!273328))

(declare-fun b_and!243795 () Bool)

(assert (= b_and!243771 (and (=> t!273328 result!232990) b_and!243795)))

(assert (=> d!997719 t!273330))

(declare-fun b_and!243797 () Bool)

(assert (= b_and!243773 (and (=> t!273330 result!232992) b_and!243797)))

(assert (=> d!997719 t!273336))

(declare-fun b_and!243799 () Bool)

(assert (= b_and!243779 (and (=> t!273336 result!232998) b_and!243799)))

(declare-fun m!3869171 () Bool)

(assert (=> d!997719 m!3869171))

(declare-fun m!3869173 () Bool)

(assert (=> d!997719 m!3869173))

(assert (=> d!997719 m!3864919))

(declare-fun m!3869175 () Bool)

(assert (=> d!997719 m!3869175))

(assert (=> d!997719 m!3869165))

(assert (=> d!997719 m!3869171))

(assert (=> d!997719 m!3864919))

(assert (=> d!997719 m!3869165))

(assert (=> d!997719 m!3864919))

(assert (=> d!997719 m!3869153))

(assert (=> b!3461587 d!997719))

(assert (=> b!3461587 d!997123))

(declare-fun d!997721 () Bool)

(assert (=> d!997721 (= (isEmpty!21528 (_1!21587 (findLongestMatchInner!911 (regex!5440 (rule!8032 (h!42593 tokens!494))) Nil!37171 (size!28201 Nil!37171) lt!1176597 lt!1176597 (size!28201 lt!1176597)))) ((_ is Nil!37171) (_1!21587 (findLongestMatchInner!911 (regex!5440 (rule!8032 (h!42593 tokens!494))) Nil!37171 (size!28201 Nil!37171) lt!1176597 lt!1176597 (size!28201 lt!1176597)))))))

(assert (=> b!3461587 d!997721))

(assert (=> d!996115 d!997017))

(assert (=> d!996115 d!996681))

(assert (=> b!3461202 d!997041))

(assert (=> b!3461202 d!997043))

(declare-fun d!997723 () Bool)

(assert (=> d!997723 (= (nullable!3489 (regex!5440 (rule!8032 separatorToken!241))) (nullableFct!1012 (regex!5440 (rule!8032 separatorToken!241))))))

(declare-fun bs!560747 () Bool)

(assert (= bs!560747 d!997723))

(declare-fun m!3869177 () Bool)

(assert (=> bs!560747 m!3869177))

(assert (=> b!3461177 d!997723))

(assert (=> d!996327 d!996289))

(assert (=> d!996327 d!996309))

(assert (=> d!996327 d!996233))

(declare-fun d!997725 () Bool)

(assert (=> d!997725 (= (maxPrefixOneRule!1736 thiss!18206 (rule!8032 (h!42593 tokens!494)) lt!1176597) (Some!7528 (tuple2!36899 (Token!10247 (apply!8757 (transformation!5440 (rule!8032 (h!42593 tokens!494))) (seqFromList!3933 lt!1176597)) (rule!8032 (h!42593 tokens!494)) (size!28201 lt!1176597) lt!1176597) Nil!37171)))))

(assert (=> d!997725 true))

(declare-fun _$59!505 () Unit!52520)

(assert (=> d!997725 (= (choose!20028 thiss!18206 rules!2135 lt!1176597 lt!1176597 Nil!37171 (rule!8032 (h!42593 tokens!494))) _$59!505)))

(declare-fun bs!560748 () Bool)

(assert (= bs!560748 d!997725))

(assert (=> bs!560748 m!3864031))

(assert (=> bs!560748 m!3864127))

(assert (=> bs!560748 m!3864127))

(assert (=> bs!560748 m!3865163))

(assert (=> bs!560748 m!3864069))

(assert (=> d!996327 d!997725))

(declare-fun d!997727 () Bool)

(assert (=> d!997727 (= (apply!8757 (transformation!5440 (rule!8032 (h!42593 tokens!494))) (seqFromList!3933 lt!1176597)) (dynLambda!15672 (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (seqFromList!3933 lt!1176597)))))

(declare-fun b_lambda!99823 () Bool)

(assert (=> (not b_lambda!99823) (not d!997727)))

(declare-fun tb!188997 () Bool)

(declare-fun t!273348 () Bool)

(assert (=> (and b!3461071 (= (toValue!7668 (transformation!5440 (rule!8032 separatorToken!241))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) t!273348) tb!188997))

(declare-fun result!233010 () Bool)

(assert (=> tb!188997 (= result!233010 (inv!21 (dynLambda!15672 (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (seqFromList!3933 lt!1176597))))))

(declare-fun m!3869179 () Bool)

(assert (=> tb!188997 m!3869179))

(assert (=> d!997727 t!273348))

(declare-fun b_and!243801 () Bool)

(assert (= b_and!243795 (and (=> t!273348 result!233010) b_and!243801)))

(declare-fun t!273350 () Bool)

(declare-fun tb!188999 () Bool)

(assert (=> (and b!3461104 (= (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) t!273350) tb!188999))

(declare-fun result!233012 () Bool)

(assert (= result!233012 result!233010))

(assert (=> d!997727 t!273350))

(declare-fun b_and!243803 () Bool)

(assert (= b_and!243791 (and (=> t!273350 result!233012) b_and!243803)))

(declare-fun tb!189001 () Bool)

(declare-fun t!273352 () Bool)

(assert (=> (and b!3461904 (= (toValue!7668 (transformation!5440 (h!42592 (t!273043 rules!2135)))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) t!273352) tb!189001))

(declare-fun result!233014 () Bool)

(assert (= result!233014 result!233010))

(assert (=> d!997727 t!273352))

(declare-fun b_and!243805 () Bool)

(assert (= b_and!243793 (and (=> t!273352 result!233014) b_and!243805)))

(declare-fun t!273354 () Bool)

(declare-fun tb!189003 () Bool)

(assert (=> (and b!3461881 (= (toValue!7668 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) t!273354) tb!189003))

(declare-fun result!233016 () Bool)

(assert (= result!233016 result!233010))

(assert (=> d!997727 t!273354))

(declare-fun b_and!243807 () Bool)

(assert (= b_and!243797 (and (=> t!273354 result!233016) b_and!243807)))

(declare-fun tb!189005 () Bool)

(declare-fun t!273356 () Bool)

(assert (=> (and b!3461090 (= (toValue!7668 (transformation!5440 (h!42592 rules!2135))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) t!273356) tb!189005))

(declare-fun result!233018 () Bool)

(assert (= result!233018 result!233010))

(assert (=> d!997727 t!273356))

(declare-fun b_and!243809 () Bool)

(assert (= b_and!243799 (and (=> t!273356 result!233018) b_and!243809)))

(assert (=> d!997727 m!3864127))

(declare-fun m!3869181 () Bool)

(assert (=> d!997727 m!3869181))

(assert (=> d!996327 d!997727))

(assert (=> d!996327 d!996135))

(assert (=> b!3461210 d!997203))

(declare-fun d!997729 () Bool)

(assert (=> d!997729 (= (inv!15 (value!175500 (h!42593 tokens!494))) (= (charsToBigInt!0 (text!40139 (value!175500 (h!42593 tokens!494))) 0) (value!175495 (value!175500 (h!42593 tokens!494)))))))

(declare-fun bs!560749 () Bool)

(assert (= bs!560749 d!997729))

(declare-fun m!3869183 () Bool)

(assert (=> bs!560749 m!3869183))

(assert (=> b!3461446 d!997729))

(declare-fun b!3463867 () Bool)

(declare-fun e!2145918 () List!37295)

(assert (=> b!3463867 (= e!2145918 Nil!37171)))

(declare-fun b!3463869 () Bool)

(declare-fun e!2145919 () List!37295)

(assert (=> b!3463869 (= e!2145919 (list!13542 (xs!14429 (c!592551 (charsOf!3454 (h!42593 tokens!494))))))))

(declare-fun b!3463870 () Bool)

(assert (=> b!3463870 (= e!2145919 (++!9165 (list!13536 (left!29005 (c!592551 (charsOf!3454 (h!42593 tokens!494))))) (list!13536 (right!29335 (c!592551 (charsOf!3454 (h!42593 tokens!494)))))))))

(declare-fun d!997731 () Bool)

(declare-fun c!593293 () Bool)

(assert (=> d!997731 (= c!593293 ((_ is Empty!11255) (c!592551 (charsOf!3454 (h!42593 tokens!494)))))))

(assert (=> d!997731 (= (list!13536 (c!592551 (charsOf!3454 (h!42593 tokens!494)))) e!2145918)))

(declare-fun b!3463868 () Bool)

(assert (=> b!3463868 (= e!2145918 e!2145919)))

(declare-fun c!593294 () Bool)

(assert (=> b!3463868 (= c!593294 ((_ is Leaf!17586) (c!592551 (charsOf!3454 (h!42593 tokens!494)))))))

(assert (= (and d!997731 c!593293) b!3463867))

(assert (= (and d!997731 (not c!593293)) b!3463868))

(assert (= (and b!3463868 c!593294) b!3463869))

(assert (= (and b!3463868 (not c!593294)) b!3463870))

(declare-fun m!3869185 () Bool)

(assert (=> b!3463869 m!3869185))

(declare-fun m!3869187 () Bool)

(assert (=> b!3463870 m!3869187))

(declare-fun m!3869189 () Bool)

(assert (=> b!3463870 m!3869189))

(assert (=> b!3463870 m!3869187))

(assert (=> b!3463870 m!3869189))

(declare-fun m!3869191 () Bool)

(assert (=> b!3463870 m!3869191))

(assert (=> d!996105 d!997731))

(declare-fun d!997733 () Bool)

(declare-fun res!1397568 () Bool)

(declare-fun e!2145920 () Bool)

(assert (=> d!997733 (=> (not res!1397568) (not e!2145920))))

(assert (=> d!997733 (= res!1397568 (not (isEmpty!21528 (originalCharacters!6154 (h!42593 (t!273044 tokens!494))))))))

(assert (=> d!997733 (= (inv!50345 (h!42593 (t!273044 tokens!494))) e!2145920)))

(declare-fun b!3463871 () Bool)

(declare-fun res!1397569 () Bool)

(assert (=> b!3463871 (=> (not res!1397569) (not e!2145920))))

(assert (=> b!3463871 (= res!1397569 (= (originalCharacters!6154 (h!42593 (t!273044 tokens!494))) (list!13535 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (value!175500 (h!42593 (t!273044 tokens!494)))))))))

(declare-fun b!3463872 () Bool)

(assert (=> b!3463872 (= e!2145920 (= (size!28199 (h!42593 (t!273044 tokens!494))) (size!28201 (originalCharacters!6154 (h!42593 (t!273044 tokens!494))))))))

(assert (= (and d!997733 res!1397568) b!3463871))

(assert (= (and b!3463871 res!1397569) b!3463872))

(declare-fun b_lambda!99825 () Bool)

(assert (=> (not b_lambda!99825) (not b!3463871)))

(assert (=> b!3463871 t!273098))

(declare-fun b_and!243811 () Bool)

(assert (= b_and!243781 (and (=> t!273098 result!232772) b_and!243811)))

(assert (=> b!3463871 t!273059))

(declare-fun b_and!243813 () Bool)

(assert (= b_and!243789 (and (=> t!273059 result!232730) b_and!243813)))

(assert (=> b!3463871 t!273061))

(declare-fun b_and!243815 () Bool)

(assert (= b_and!243787 (and (=> t!273061 result!232732) b_and!243815)))

(assert (=> b!3463871 t!273063))

(declare-fun b_and!243817 () Bool)

(assert (= b_and!243783 (and (=> t!273063 result!232734) b_and!243817)))

(assert (=> b!3463871 t!273106))

(declare-fun b_and!243819 () Bool)

(assert (= b_and!243785 (and (=> t!273106 result!232782) b_and!243819)))

(declare-fun m!3869193 () Bool)

(assert (=> d!997733 m!3869193))

(assert (=> b!3463871 m!3864501))

(assert (=> b!3463871 m!3864501))

(declare-fun m!3869195 () Bool)

(assert (=> b!3463871 m!3869195))

(declare-fun m!3869197 () Bool)

(assert (=> b!3463872 m!3869197))

(assert (=> b!3461878 d!997733))

(declare-fun d!997735 () Bool)

(assert (=> d!997735 (= (list!13535 (_2!21582 lt!1176808)) (list!13536 (c!592551 (_2!21582 lt!1176808))))))

(declare-fun bs!560750 () Bool)

(assert (= bs!560750 d!997735))

(declare-fun m!3869199 () Bool)

(assert (=> bs!560750 m!3869199))

(assert (=> b!3461534 d!997735))

(assert (=> b!3461534 d!997439))

(assert (=> b!3461534 d!997443))

(declare-fun bs!560769 () Bool)

(declare-fun d!997737 () Bool)

(assert (= bs!560769 (and d!997737 b!3461085)))

(declare-fun lambda!121915 () Int)

(assert (=> bs!560769 (not (= lambda!121915 lambda!121860))))

(declare-fun bs!560770 () Bool)

(assert (= bs!560770 (and d!997737 b!3461108)))

(assert (=> bs!560770 (= lambda!121915 lambda!121861)))

(declare-fun bs!560771 () Bool)

(assert (= bs!560771 (and d!997737 d!996341)))

(assert (=> bs!560771 (= lambda!121915 lambda!121866)))

(declare-fun b!3463935 () Bool)

(declare-fun e!2145965 () Bool)

(assert (=> b!3463935 (= e!2145965 true)))

(declare-fun b!3463934 () Bool)

(declare-fun e!2145964 () Bool)

(assert (=> b!3463934 (= e!2145964 e!2145965)))

(declare-fun b!3463933 () Bool)

(declare-fun e!2145963 () Bool)

(assert (=> b!3463933 (= e!2145963 e!2145964)))

(assert (=> d!997737 e!2145963))

(assert (= b!3463934 b!3463935))

(assert (= b!3463933 b!3463934))

(assert (= (and d!997737 ((_ is Cons!37172) rules!2135)) b!3463933))

(assert (=> b!3463935 (< (dynLambda!15664 order!19805 (toValue!7668 (transformation!5440 (h!42592 rules!2135)))) (dynLambda!15665 order!19807 lambda!121915))))

(assert (=> b!3463935 (< (dynLambda!15666 order!19809 (toChars!7527 (transformation!5440 (h!42592 rules!2135)))) (dynLambda!15665 order!19807 lambda!121915))))

(assert (=> d!997737 true))

(declare-fun lt!1178080 () Bool)

(assert (=> d!997737 (= lt!1178080 (forall!7925 (list!13537 (seqFromList!3934 tokens!494)) lambda!121915))))

(declare-fun e!2145961 () Bool)

(assert (=> d!997737 (= lt!1178080 e!2145961)))

(declare-fun res!1397590 () Bool)

(assert (=> d!997737 (=> res!1397590 e!2145961)))

(assert (=> d!997737 (= res!1397590 (not ((_ is Cons!37173) (list!13537 (seqFromList!3934 tokens!494)))))))

(assert (=> d!997737 (not (isEmpty!21527 rules!2135))))

(assert (=> d!997737 (= (rulesProduceEachTokenIndividuallyList!1857 thiss!18206 rules!2135 (list!13537 (seqFromList!3934 tokens!494))) lt!1178080)))

(declare-fun b!3463931 () Bool)

(declare-fun e!2145962 () Bool)

(assert (=> b!3463931 (= e!2145961 e!2145962)))

(declare-fun res!1397589 () Bool)

(assert (=> b!3463931 (=> (not res!1397589) (not e!2145962))))

(assert (=> b!3463931 (= res!1397589 (rulesProduceIndividualToken!2521 thiss!18206 rules!2135 (h!42593 (list!13537 (seqFromList!3934 tokens!494)))))))

(declare-fun b!3463932 () Bool)

(assert (=> b!3463932 (= e!2145962 (rulesProduceEachTokenIndividuallyList!1857 thiss!18206 rules!2135 (t!273044 (list!13537 (seqFromList!3934 tokens!494)))))))

(assert (= (and d!997737 (not res!1397590)) b!3463931))

(assert (= (and b!3463931 res!1397589) b!3463932))

(assert (=> d!997737 m!3865421))

(declare-fun m!3869501 () Bool)

(assert (=> d!997737 m!3869501))

(assert (=> d!997737 m!3864013))

(declare-fun m!3869503 () Bool)

(assert (=> b!3463931 m!3869503))

(declare-fun m!3869505 () Bool)

(assert (=> b!3463932 m!3869505))

(assert (=> b!3461845 d!997737))

(assert (=> b!3461845 d!997299))

(assert (=> b!3461234 d!996499))

(declare-fun d!997793 () Bool)

(assert (=> d!997793 (= (apply!8757 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1176668)))) (seqFromList!3933 (originalCharacters!6154 (_1!21583 (get!11899 lt!1176668))))) (dynLambda!15672 (toValue!7668 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1176668))))) (seqFromList!3933 (originalCharacters!6154 (_1!21583 (get!11899 lt!1176668))))))))

(declare-fun b_lambda!99835 () Bool)

(assert (=> (not b_lambda!99835) (not d!997793)))

(declare-fun tb!189027 () Bool)

(declare-fun t!273382 () Bool)

(assert (=> (and b!3461090 (= (toValue!7668 (transformation!5440 (h!42592 rules!2135))) (toValue!7668 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1176668)))))) t!273382) tb!189027))

(declare-fun result!233040 () Bool)

(assert (=> tb!189027 (= result!233040 (inv!21 (dynLambda!15672 (toValue!7668 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1176668))))) (seqFromList!3933 (originalCharacters!6154 (_1!21583 (get!11899 lt!1176668)))))))))

(declare-fun m!3869507 () Bool)

(assert (=> tb!189027 m!3869507))

(assert (=> d!997793 t!273382))

(declare-fun b_and!243851 () Bool)

(assert (= b_and!243809 (and (=> t!273382 result!233040) b_and!243851)))

(declare-fun tb!189029 () Bool)

(declare-fun t!273384 () Bool)

(assert (=> (and b!3461104 (= (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (toValue!7668 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1176668)))))) t!273384) tb!189029))

(declare-fun result!233042 () Bool)

(assert (= result!233042 result!233040))

(assert (=> d!997793 t!273384))

(declare-fun b_and!243853 () Bool)

(assert (= b_and!243803 (and (=> t!273384 result!233042) b_and!243853)))

(declare-fun t!273386 () Bool)

(declare-fun tb!189031 () Bool)

(assert (=> (and b!3461904 (= (toValue!7668 (transformation!5440 (h!42592 (t!273043 rules!2135)))) (toValue!7668 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1176668)))))) t!273386) tb!189031))

(declare-fun result!233044 () Bool)

(assert (= result!233044 result!233040))

(assert (=> d!997793 t!273386))

(declare-fun b_and!243855 () Bool)

(assert (= b_and!243805 (and (=> t!273386 result!233044) b_and!243855)))

(declare-fun t!273388 () Bool)

(declare-fun tb!189033 () Bool)

(assert (=> (and b!3461881 (= (toValue!7668 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (toValue!7668 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1176668)))))) t!273388) tb!189033))

(declare-fun result!233046 () Bool)

(assert (= result!233046 result!233040))

(assert (=> d!997793 t!273388))

(declare-fun b_and!243857 () Bool)

(assert (= b_and!243807 (and (=> t!273388 result!233046) b_and!243857)))

(declare-fun t!273390 () Bool)

(declare-fun tb!189035 () Bool)

(assert (=> (and b!3461071 (= (toValue!7668 (transformation!5440 (rule!8032 separatorToken!241))) (toValue!7668 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1176668)))))) t!273390) tb!189035))

(declare-fun result!233048 () Bool)

(assert (= result!233048 result!233040))

(assert (=> d!997793 t!273390))

(declare-fun b_and!243859 () Bool)

(assert (= b_and!243801 (and (=> t!273390 result!233048) b_and!243859)))

(assert (=> d!997793 m!3864277))

(declare-fun m!3869513 () Bool)

(assert (=> d!997793 m!3869513))

(assert (=> b!3461234 d!997793))

(declare-fun d!997795 () Bool)

(assert (=> d!997795 (= (seqFromList!3933 (originalCharacters!6154 (_1!21583 (get!11899 lt!1176668)))) (fromListB!1785 (originalCharacters!6154 (_1!21583 (get!11899 lt!1176668)))))))

(declare-fun bs!560772 () Bool)

(assert (= bs!560772 d!997795))

(declare-fun m!3869515 () Bool)

(assert (=> bs!560772 m!3869515))

(assert (=> b!3461234 d!997795))

(assert (=> d!996317 d!997095))

(declare-fun d!997797 () Bool)

(assert (=> d!997797 (= (dropList!1206 lt!1176620 0) (drop!2012 (list!13541 (c!592552 lt!1176620)) 0))))

(declare-fun bs!560773 () Bool)

(assert (= bs!560773 d!997797))

(assert (=> bs!560773 m!3867069))

(assert (=> bs!560773 m!3867069))

(declare-fun m!3869517 () Bool)

(assert (=> bs!560773 m!3869517))

(assert (=> d!996317 d!997797))

(assert (=> d!996317 d!996779))

(declare-fun d!997799 () Bool)

(assert (=> d!997799 (= (list!13535 lt!1176872) (list!13536 (c!592551 lt!1176872)))))

(declare-fun bs!560774 () Bool)

(assert (= bs!560774 d!997799))

(declare-fun m!3869519 () Bool)

(assert (=> bs!560774 m!3869519))

(assert (=> d!996317 d!997799))

(declare-fun d!997801 () Bool)

(declare-fun lt!1178084 () List!37295)

(assert (=> d!997801 (= lt!1178084 (++!9165 (list!13535 (BalanceConc!22125 Empty!11255)) (printList!1577 thiss!18206 (dropList!1206 lt!1176620 0))))))

(declare-fun e!2145980 () List!37295)

(assert (=> d!997801 (= lt!1178084 e!2145980)))

(declare-fun c!593314 () Bool)

(assert (=> d!997801 (= c!593314 ((_ is Cons!37173) (dropList!1206 lt!1176620 0)))))

(assert (=> d!997801 (= (printListTailRec!689 thiss!18206 (dropList!1206 lt!1176620 0) (list!13535 (BalanceConc!22125 Empty!11255))) lt!1178084)))

(declare-fun b!3463951 () Bool)

(assert (=> b!3463951 (= e!2145980 (printListTailRec!689 thiss!18206 (t!273044 (dropList!1206 lt!1176620 0)) (++!9165 (list!13535 (BalanceConc!22125 Empty!11255)) (list!13535 (charsOf!3454 (h!42593 (dropList!1206 lt!1176620 0)))))))))

(declare-fun lt!1178082 () List!37295)

(assert (=> b!3463951 (= lt!1178082 (list!13535 (charsOf!3454 (h!42593 (dropList!1206 lt!1176620 0)))))))

(declare-fun lt!1178081 () List!37295)

(assert (=> b!3463951 (= lt!1178081 (printList!1577 thiss!18206 (t!273044 (dropList!1206 lt!1176620 0))))))

(declare-fun lt!1178085 () Unit!52520)

(assert (=> b!3463951 (= lt!1178085 (lemmaConcatAssociativity!1960 (list!13535 (BalanceConc!22125 Empty!11255)) lt!1178082 lt!1178081))))

(assert (=> b!3463951 (= (++!9165 (++!9165 (list!13535 (BalanceConc!22125 Empty!11255)) lt!1178082) lt!1178081) (++!9165 (list!13535 (BalanceConc!22125 Empty!11255)) (++!9165 lt!1178082 lt!1178081)))))

(declare-fun lt!1178083 () Unit!52520)

(assert (=> b!3463951 (= lt!1178083 lt!1178085)))

(declare-fun b!3463952 () Bool)

(assert (=> b!3463952 (= e!2145980 (list!13535 (BalanceConc!22125 Empty!11255)))))

(assert (= (and d!997801 c!593314) b!3463951))

(assert (= (and d!997801 (not c!593314)) b!3463952))

(assert (=> d!997801 m!3865025))

(declare-fun m!3869521 () Bool)

(assert (=> d!997801 m!3869521))

(assert (=> d!997801 m!3864547))

(assert (=> d!997801 m!3869521))

(declare-fun m!3869523 () Bool)

(assert (=> d!997801 m!3869523))

(assert (=> b!3463951 m!3864547))

(declare-fun m!3869525 () Bool)

(assert (=> b!3463951 m!3869525))

(declare-fun m!3869527 () Bool)

(assert (=> b!3463951 m!3869527))

(declare-fun m!3869529 () Bool)

(assert (=> b!3463951 m!3869529))

(declare-fun m!3869531 () Bool)

(assert (=> b!3463951 m!3869531))

(assert (=> b!3463951 m!3869525))

(declare-fun m!3869533 () Bool)

(assert (=> b!3463951 m!3869533))

(declare-fun m!3869535 () Bool)

(assert (=> b!3463951 m!3869535))

(assert (=> b!3463951 m!3864547))

(declare-fun m!3869537 () Bool)

(assert (=> b!3463951 m!3869537))

(assert (=> b!3463951 m!3864547))

(assert (=> b!3463951 m!3869531))

(assert (=> b!3463951 m!3869533))

(assert (=> b!3463951 m!3864547))

(declare-fun m!3869539 () Bool)

(assert (=> b!3463951 m!3869539))

(assert (=> b!3463951 m!3869529))

(declare-fun m!3869541 () Bool)

(assert (=> b!3463951 m!3869541))

(assert (=> b!3463951 m!3869537))

(declare-fun m!3869543 () Bool)

(assert (=> b!3463951 m!3869543))

(assert (=> d!996317 d!997801))

(declare-fun d!997803 () Bool)

(assert (=> d!997803 (= (nullable!3489 (regex!5440 lt!1176624)) (nullableFct!1012 (regex!5440 lt!1176624)))))

(declare-fun bs!560775 () Bool)

(assert (= bs!560775 d!997803))

(declare-fun m!3869545 () Bool)

(assert (=> bs!560775 m!3869545))

(assert (=> b!3461201 d!997803))

(declare-fun d!997805 () Bool)

(assert (=> d!997805 (= (list!13535 lt!1176692) (list!13536 (c!592551 lt!1176692)))))

(declare-fun bs!560776 () Bool)

(assert (= bs!560776 d!997805))

(declare-fun m!3869547 () Bool)

(assert (=> bs!560776 m!3869547))

(assert (=> d!996189 d!997805))

(declare-fun d!997807 () Bool)

(declare-fun lt!1178086 () Bool)

(assert (=> d!997807 (= lt!1178086 (select (content!5188 rules!2135) (get!11898 lt!1176798)))))

(declare-fun e!2145981 () Bool)

(assert (=> d!997807 (= lt!1178086 e!2145981)))

(declare-fun res!1397598 () Bool)

(assert (=> d!997807 (=> (not res!1397598) (not e!2145981))))

(assert (=> d!997807 (= res!1397598 ((_ is Cons!37172) rules!2135))))

(assert (=> d!997807 (= (contains!6895 rules!2135 (get!11898 lt!1176798)) lt!1178086)))

(declare-fun b!3463953 () Bool)

(declare-fun e!2145982 () Bool)

(assert (=> b!3463953 (= e!2145981 e!2145982)))

(declare-fun res!1397597 () Bool)

(assert (=> b!3463953 (=> res!1397597 e!2145982)))

(assert (=> b!3463953 (= res!1397597 (= (h!42592 rules!2135) (get!11898 lt!1176798)))))

(declare-fun b!3463954 () Bool)

(assert (=> b!3463954 (= e!2145982 (contains!6895 (t!273043 rules!2135) (get!11898 lt!1176798)))))

(assert (= (and d!997807 res!1397598) b!3463953))

(assert (= (and b!3463953 (not res!1397597)) b!3463954))

(assert (=> d!997807 m!3864207))

(assert (=> d!997807 m!3864771))

(declare-fun m!3869549 () Bool)

(assert (=> d!997807 m!3869549))

(assert (=> b!3463954 m!3864771))

(declare-fun m!3869551 () Bool)

(assert (=> b!3463954 m!3869551))

(assert (=> b!3461523 d!997807))

(assert (=> b!3461523 d!997445))

(assert (=> b!3461185 d!996263))

(declare-fun lt!1178087 () List!37295)

(declare-fun e!2145986 () Bool)

(declare-fun b!3463962 () Bool)

(assert (=> b!3463962 (= e!2145986 (or (not (= (printList!1577 thiss!18206 (t!273044 (Cons!37173 (h!42593 tokens!494) Nil!37173))) Nil!37171)) (= lt!1178087 (list!13535 (charsOf!3454 (h!42593 (Cons!37173 (h!42593 tokens!494) Nil!37173)))))))))

(declare-fun b!3463961 () Bool)

(declare-fun res!1397600 () Bool)

(assert (=> b!3463961 (=> (not res!1397600) (not e!2145986))))

(assert (=> b!3463961 (= res!1397600 (= (size!28201 lt!1178087) (+ (size!28201 (list!13535 (charsOf!3454 (h!42593 (Cons!37173 (h!42593 tokens!494) Nil!37173))))) (size!28201 (printList!1577 thiss!18206 (t!273044 (Cons!37173 (h!42593 tokens!494) Nil!37173)))))))))

(declare-fun b!3463959 () Bool)

(declare-fun e!2145985 () List!37295)

(assert (=> b!3463959 (= e!2145985 (printList!1577 thiss!18206 (t!273044 (Cons!37173 (h!42593 tokens!494) Nil!37173))))))

(declare-fun b!3463960 () Bool)

(assert (=> b!3463960 (= e!2145985 (Cons!37171 (h!42591 (list!13535 (charsOf!3454 (h!42593 (Cons!37173 (h!42593 tokens!494) Nil!37173))))) (++!9165 (t!273042 (list!13535 (charsOf!3454 (h!42593 (Cons!37173 (h!42593 tokens!494) Nil!37173))))) (printList!1577 thiss!18206 (t!273044 (Cons!37173 (h!42593 tokens!494) Nil!37173))))))))

(declare-fun d!997809 () Bool)

(assert (=> d!997809 e!2145986))

(declare-fun res!1397599 () Bool)

(assert (=> d!997809 (=> (not res!1397599) (not e!2145986))))

(assert (=> d!997809 (= res!1397599 (= (content!5190 lt!1178087) ((_ map or) (content!5190 (list!13535 (charsOf!3454 (h!42593 (Cons!37173 (h!42593 tokens!494) Nil!37173))))) (content!5190 (printList!1577 thiss!18206 (t!273044 (Cons!37173 (h!42593 tokens!494) Nil!37173)))))))))

(assert (=> d!997809 (= lt!1178087 e!2145985)))

(declare-fun c!593315 () Bool)

(assert (=> d!997809 (= c!593315 ((_ is Nil!37171) (list!13535 (charsOf!3454 (h!42593 (Cons!37173 (h!42593 tokens!494) Nil!37173))))))))

(assert (=> d!997809 (= (++!9165 (list!13535 (charsOf!3454 (h!42593 (Cons!37173 (h!42593 tokens!494) Nil!37173)))) (printList!1577 thiss!18206 (t!273044 (Cons!37173 (h!42593 tokens!494) Nil!37173)))) lt!1178087)))

(assert (= (and d!997809 c!593315) b!3463959))

(assert (= (and d!997809 (not c!593315)) b!3463960))

(assert (= (and d!997809 res!1397599) b!3463961))

(assert (= (and b!3463961 res!1397600) b!3463962))

(declare-fun m!3869557 () Bool)

(assert (=> b!3463961 m!3869557))

(assert (=> b!3463961 m!3864603))

(declare-fun m!3869559 () Bool)

(assert (=> b!3463961 m!3869559))

(assert (=> b!3463961 m!3864605))

(declare-fun m!3869561 () Bool)

(assert (=> b!3463961 m!3869561))

(assert (=> b!3463960 m!3864605))

(declare-fun m!3869563 () Bool)

(assert (=> b!3463960 m!3869563))

(declare-fun m!3869565 () Bool)

(assert (=> d!997809 m!3869565))

(assert (=> d!997809 m!3864603))

(declare-fun m!3869567 () Bool)

(assert (=> d!997809 m!3869567))

(assert (=> d!997809 m!3864605))

(declare-fun m!3869569 () Bool)

(assert (=> d!997809 m!3869569))

(assert (=> b!3461410 d!997809))

(declare-fun d!997811 () Bool)

(assert (=> d!997811 (= (list!13535 (charsOf!3454 (h!42593 (Cons!37173 (h!42593 tokens!494) Nil!37173)))) (list!13536 (c!592551 (charsOf!3454 (h!42593 (Cons!37173 (h!42593 tokens!494) Nil!37173))))))))

(declare-fun bs!560777 () Bool)

(assert (= bs!560777 d!997811))

(declare-fun m!3869571 () Bool)

(assert (=> bs!560777 m!3869571))

(assert (=> b!3461410 d!997811))

(declare-fun d!997813 () Bool)

(declare-fun lt!1178088 () BalanceConc!22124)

(assert (=> d!997813 (= (list!13535 lt!1178088) (originalCharacters!6154 (h!42593 (Cons!37173 (h!42593 tokens!494) Nil!37173))))))

(assert (=> d!997813 (= lt!1178088 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (Cons!37173 (h!42593 tokens!494) Nil!37173))))) (value!175500 (h!42593 (Cons!37173 (h!42593 tokens!494) Nil!37173)))))))

(assert (=> d!997813 (= (charsOf!3454 (h!42593 (Cons!37173 (h!42593 tokens!494) Nil!37173))) lt!1178088)))

(declare-fun b_lambda!99837 () Bool)

(assert (=> (not b_lambda!99837) (not d!997813)))

(declare-fun t!273424 () Bool)

(declare-fun tb!189069 () Bool)

(assert (=> (and b!3461071 (= (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (Cons!37173 (h!42593 tokens!494) Nil!37173)))))) t!273424) tb!189069))

(declare-fun b!3463970 () Bool)

(declare-fun e!2145991 () Bool)

(declare-fun tp!1078367 () Bool)

(assert (=> b!3463970 (= e!2145991 (and (inv!50346 (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (Cons!37173 (h!42593 tokens!494) Nil!37173))))) (value!175500 (h!42593 (Cons!37173 (h!42593 tokens!494) Nil!37173)))))) tp!1078367))))

(declare-fun result!233084 () Bool)

(assert (=> tb!189069 (= result!233084 (and (inv!50347 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (Cons!37173 (h!42593 tokens!494) Nil!37173))))) (value!175500 (h!42593 (Cons!37173 (h!42593 tokens!494) Nil!37173))))) e!2145991))))

(assert (= tb!189069 b!3463970))

(declare-fun m!3869577 () Bool)

(assert (=> b!3463970 m!3869577))

(declare-fun m!3869581 () Bool)

(assert (=> tb!189069 m!3869581))

(assert (=> d!997813 t!273424))

(declare-fun b_and!243865 () Bool)

(assert (= b_and!243813 (and (=> t!273424 result!233084) b_and!243865)))

(declare-fun tb!189071 () Bool)

(declare-fun t!273426 () Bool)

(assert (=> (and b!3461090 (= (toChars!7527 (transformation!5440 (h!42592 rules!2135))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (Cons!37173 (h!42593 tokens!494) Nil!37173)))))) t!273426) tb!189071))

(declare-fun result!233086 () Bool)

(assert (= result!233086 result!233084))

(assert (=> d!997813 t!273426))

(declare-fun b_and!243867 () Bool)

(assert (= b_and!243817 (and (=> t!273426 result!233086) b_and!243867)))

(declare-fun t!273428 () Bool)

(declare-fun tb!189073 () Bool)

(assert (=> (and b!3461104 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (Cons!37173 (h!42593 tokens!494) Nil!37173)))))) t!273428) tb!189073))

(declare-fun result!233088 () Bool)

(assert (= result!233088 result!233084))

(assert (=> d!997813 t!273428))

(declare-fun b_and!243869 () Bool)

(assert (= b_and!243815 (and (=> t!273428 result!233088) b_and!243869)))

(declare-fun tb!189075 () Bool)

(declare-fun t!273430 () Bool)

(assert (=> (and b!3461904 (= (toChars!7527 (transformation!5440 (h!42592 (t!273043 rules!2135)))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (Cons!37173 (h!42593 tokens!494) Nil!37173)))))) t!273430) tb!189075))

(declare-fun result!233090 () Bool)

(assert (= result!233090 result!233084))

(assert (=> d!997813 t!273430))

(declare-fun b_and!243871 () Bool)

(assert (= b_and!243819 (and (=> t!273430 result!233090) b_and!243871)))

(declare-fun t!273432 () Bool)

(declare-fun tb!189077 () Bool)

(assert (=> (and b!3461881 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (Cons!37173 (h!42593 tokens!494) Nil!37173)))))) t!273432) tb!189077))

(declare-fun result!233092 () Bool)

(assert (= result!233092 result!233084))

(assert (=> d!997813 t!273432))

(declare-fun b_and!243873 () Bool)

(assert (= b_and!243811 (and (=> t!273432 result!233092) b_and!243873)))

(declare-fun m!3869583 () Bool)

(assert (=> d!997813 m!3869583))

(declare-fun m!3869585 () Bool)

(assert (=> d!997813 m!3869585))

(assert (=> b!3461410 d!997813))

(declare-fun d!997815 () Bool)

(declare-fun c!593316 () Bool)

(assert (=> d!997815 (= c!593316 ((_ is Cons!37173) (t!273044 (Cons!37173 (h!42593 tokens!494) Nil!37173))))))

(declare-fun e!2145995 () List!37295)

(assert (=> d!997815 (= (printList!1577 thiss!18206 (t!273044 (Cons!37173 (h!42593 tokens!494) Nil!37173))) e!2145995)))

(declare-fun b!3463978 () Bool)

(assert (=> b!3463978 (= e!2145995 (++!9165 (list!13535 (charsOf!3454 (h!42593 (t!273044 (Cons!37173 (h!42593 tokens!494) Nil!37173))))) (printList!1577 thiss!18206 (t!273044 (t!273044 (Cons!37173 (h!42593 tokens!494) Nil!37173))))))))

(declare-fun b!3463979 () Bool)

(assert (=> b!3463979 (= e!2145995 Nil!37171)))

(assert (= (and d!997815 c!593316) b!3463978))

(assert (= (and d!997815 (not c!593316)) b!3463979))

(declare-fun m!3869593 () Bool)

(assert (=> b!3463978 m!3869593))

(assert (=> b!3463978 m!3869593))

(declare-fun m!3869595 () Bool)

(assert (=> b!3463978 m!3869595))

(declare-fun m!3869597 () Bool)

(assert (=> b!3463978 m!3869597))

(assert (=> b!3463978 m!3869595))

(assert (=> b!3463978 m!3869597))

(declare-fun m!3869599 () Bool)

(assert (=> b!3463978 m!3869599))

(assert (=> b!3461410 d!997815))

(declare-fun e!2146014 () Bool)

(declare-fun tp!1078410 () Bool)

(declare-fun b!3464012 () Bool)

(declare-fun tp!1078409 () Bool)

(assert (=> b!3464012 (= e!2146014 (and (inv!50346 (left!29005 (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))) (value!175500 separatorToken!241))))) tp!1078410 (inv!50346 (right!29335 (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))) (value!175500 separatorToken!241))))) tp!1078409))))

(declare-fun b!3464014 () Bool)

(declare-fun e!2146015 () Bool)

(declare-fun tp!1078408 () Bool)

(assert (=> b!3464014 (= e!2146015 tp!1078408)))

(declare-fun b!3464013 () Bool)

(declare-fun inv!50354 (IArray!22515) Bool)

(assert (=> b!3464013 (= e!2146014 (and (inv!50354 (xs!14429 (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))) (value!175500 separatorToken!241))))) e!2146015))))

(assert (=> b!3461247 (= tp!1078220 (and (inv!50346 (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))) (value!175500 separatorToken!241)))) e!2146014))))

(assert (= (and b!3461247 ((_ is Node!11255) (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))) (value!175500 separatorToken!241))))) b!3464012))

(assert (= b!3464013 b!3464014))

(assert (= (and b!3461247 ((_ is Leaf!17586) (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))) (value!175500 separatorToken!241))))) b!3464013))

(declare-fun m!3869601 () Bool)

(assert (=> b!3464012 m!3869601))

(declare-fun m!3869603 () Bool)

(assert (=> b!3464012 m!3869603))

(declare-fun m!3869605 () Bool)

(assert (=> b!3464013 m!3869605))

(assert (=> b!3461247 m!3864323))

(declare-fun b!3464015 () Bool)

(declare-fun e!2146016 () Bool)

(declare-fun tp!1078411 () Bool)

(assert (=> b!3464015 (= e!2146016 (and tp_is_empty!17559 tp!1078411))))

(assert (=> b!3461893 (= tp!1078268 e!2146016)))

(assert (= (and b!3461893 ((_ is Cons!37171) (t!273042 (originalCharacters!6154 (h!42593 tokens!494))))) b!3464015))

(declare-fun b!3464016 () Bool)

(declare-fun e!2146017 () Bool)

(assert (=> b!3464016 (= e!2146017 tp_is_empty!17559)))

(declare-fun b!3464018 () Bool)

(declare-fun tp!1078414 () Bool)

(assert (=> b!3464018 (= e!2146017 tp!1078414)))

(assert (=> b!3461892 (= tp!1078267 e!2146017)))

(declare-fun b!3464019 () Bool)

(declare-fun tp!1078416 () Bool)

(declare-fun tp!1078415 () Bool)

(assert (=> b!3464019 (= e!2146017 (and tp!1078416 tp!1078415))))

(declare-fun b!3464017 () Bool)

(declare-fun tp!1078413 () Bool)

(declare-fun tp!1078412 () Bool)

(assert (=> b!3464017 (= e!2146017 (and tp!1078413 tp!1078412))))

(assert (= (and b!3461892 ((_ is ElementMatch!10199) (regOne!20911 (regex!5440 (h!42592 rules!2135))))) b!3464016))

(assert (= (and b!3461892 ((_ is Concat!15869) (regOne!20911 (regex!5440 (h!42592 rules!2135))))) b!3464017))

(assert (= (and b!3461892 ((_ is Star!10199) (regOne!20911 (regex!5440 (h!42592 rules!2135))))) b!3464018))

(assert (= (and b!3461892 ((_ is Union!10199) (regOne!20911 (regex!5440 (h!42592 rules!2135))))) b!3464019))

(declare-fun b!3464020 () Bool)

(declare-fun e!2146018 () Bool)

(assert (=> b!3464020 (= e!2146018 tp_is_empty!17559)))

(declare-fun b!3464022 () Bool)

(declare-fun tp!1078419 () Bool)

(assert (=> b!3464022 (= e!2146018 tp!1078419)))

(assert (=> b!3461892 (= tp!1078266 e!2146018)))

(declare-fun b!3464023 () Bool)

(declare-fun tp!1078421 () Bool)

(declare-fun tp!1078420 () Bool)

(assert (=> b!3464023 (= e!2146018 (and tp!1078421 tp!1078420))))

(declare-fun b!3464021 () Bool)

(declare-fun tp!1078418 () Bool)

(declare-fun tp!1078417 () Bool)

(assert (=> b!3464021 (= e!2146018 (and tp!1078418 tp!1078417))))

(assert (= (and b!3461892 ((_ is ElementMatch!10199) (regTwo!20911 (regex!5440 (h!42592 rules!2135))))) b!3464020))

(assert (= (and b!3461892 ((_ is Concat!15869) (regTwo!20911 (regex!5440 (h!42592 rules!2135))))) b!3464021))

(assert (= (and b!3461892 ((_ is Star!10199) (regTwo!20911 (regex!5440 (h!42592 rules!2135))))) b!3464022))

(assert (= (and b!3461892 ((_ is Union!10199) (regTwo!20911 (regex!5440 (h!42592 rules!2135))))) b!3464023))

(declare-fun b!3464028 () Bool)

(declare-fun e!2146020 () Bool)

(assert (=> b!3464028 (= e!2146020 tp_is_empty!17559)))

(declare-fun b!3464030 () Bool)

(declare-fun tp!1078429 () Bool)

(assert (=> b!3464030 (= e!2146020 tp!1078429)))

(assert (=> b!3461891 (= tp!1078265 e!2146020)))

(declare-fun b!3464031 () Bool)

(declare-fun tp!1078431 () Bool)

(declare-fun tp!1078430 () Bool)

(assert (=> b!3464031 (= e!2146020 (and tp!1078431 tp!1078430))))

(declare-fun b!3464029 () Bool)

(declare-fun tp!1078428 () Bool)

(declare-fun tp!1078427 () Bool)

(assert (=> b!3464029 (= e!2146020 (and tp!1078428 tp!1078427))))

(assert (= (and b!3461891 ((_ is ElementMatch!10199) (reg!10528 (regex!5440 (h!42592 rules!2135))))) b!3464028))

(assert (= (and b!3461891 ((_ is Concat!15869) (reg!10528 (regex!5440 (h!42592 rules!2135))))) b!3464029))

(assert (= (and b!3461891 ((_ is Star!10199) (reg!10528 (regex!5440 (h!42592 rules!2135))))) b!3464030))

(assert (= (and b!3461891 ((_ is Union!10199) (reg!10528 (regex!5440 (h!42592 rules!2135))))) b!3464031))

(declare-fun b!3464038 () Bool)

(declare-fun e!2146024 () Bool)

(assert (=> b!3464038 (= e!2146024 true)))

(declare-fun b!3464037 () Bool)

(declare-fun e!2146023 () Bool)

(assert (=> b!3464037 (= e!2146023 e!2146024)))

(declare-fun b!3464036 () Bool)

(declare-fun e!2146022 () Bool)

(assert (=> b!3464036 (= e!2146022 e!2146023)))

(assert (=> b!3461882 e!2146022))

(assert (= b!3464037 b!3464038))

(assert (= b!3464036 b!3464037))

(assert (= (and b!3461882 ((_ is Cons!37172) (t!273043 (t!273043 rules!2135)))) b!3464036))

(assert (=> b!3464038 (< (dynLambda!15664 order!19805 (toValue!7668 (transformation!5440 (h!42592 (t!273043 (t!273043 rules!2135)))))) (dynLambda!15665 order!19807 lambda!121861))))

(assert (=> b!3464038 (< (dynLambda!15666 order!19809 (toChars!7527 (transformation!5440 (h!42592 (t!273043 (t!273043 rules!2135)))))) (dynLambda!15665 order!19807 lambda!121861))))

(declare-fun tp!1078443 () Bool)

(declare-fun b!3464043 () Bool)

(declare-fun tp!1078444 () Bool)

(declare-fun e!2146026 () Bool)

(assert (=> b!3464043 (= e!2146026 (and (inv!50346 (left!29005 (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (value!175500 (h!42593 tokens!494)))))) tp!1078444 (inv!50346 (right!29335 (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (value!175500 (h!42593 tokens!494)))))) tp!1078443))))

(declare-fun b!3464045 () Bool)

(declare-fun e!2146027 () Bool)

(declare-fun tp!1078442 () Bool)

(assert (=> b!3464045 (= e!2146027 tp!1078442)))

(declare-fun b!3464044 () Bool)

(assert (=> b!3464044 (= e!2146026 (and (inv!50354 (xs!14429 (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (value!175500 (h!42593 tokens!494)))))) e!2146027))))

(assert (=> b!3461129 (= tp!1078219 (and (inv!50346 (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (value!175500 (h!42593 tokens!494))))) e!2146026))))

(assert (= (and b!3461129 ((_ is Node!11255) (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (value!175500 (h!42593 tokens!494)))))) b!3464043))

(assert (= b!3464044 b!3464045))

(assert (= (and b!3461129 ((_ is Leaf!17586) (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (value!175500 (h!42593 tokens!494)))))) b!3464044))

(declare-fun m!3869615 () Bool)

(assert (=> b!3464043 m!3869615))

(declare-fun m!3869617 () Bool)

(assert (=> b!3464043 m!3869617))

(declare-fun m!3869619 () Bool)

(assert (=> b!3464044 m!3869619))

(assert (=> b!3461129 m!3864183))

(declare-fun b!3464053 () Bool)

(declare-fun e!2146032 () Bool)

(declare-fun tp!1078450 () Bool)

(assert (=> b!3464053 (= e!2146032 (and tp_is_empty!17559 tp!1078450))))

(assert (=> b!3461867 (= tp!1078242 e!2146032)))

(assert (= (and b!3461867 ((_ is Cons!37171) (t!273042 (originalCharacters!6154 separatorToken!241)))) b!3464053))

(declare-fun b!3464054 () Bool)

(declare-fun e!2146033 () Bool)

(assert (=> b!3464054 (= e!2146033 tp_is_empty!17559)))

(declare-fun b!3464056 () Bool)

(declare-fun tp!1078453 () Bool)

(assert (=> b!3464056 (= e!2146033 tp!1078453)))

(assert (=> b!3461886 (= tp!1078259 e!2146033)))

(declare-fun b!3464057 () Bool)

(declare-fun tp!1078455 () Bool)

(declare-fun tp!1078454 () Bool)

(assert (=> b!3464057 (= e!2146033 (and tp!1078455 tp!1078454))))

(declare-fun b!3464055 () Bool)

(declare-fun tp!1078452 () Bool)

(declare-fun tp!1078451 () Bool)

(assert (=> b!3464055 (= e!2146033 (and tp!1078452 tp!1078451))))

(assert (= (and b!3461886 ((_ is ElementMatch!10199) (regOne!20910 (regex!5440 (rule!8032 (h!42593 tokens!494)))))) b!3464054))

(assert (= (and b!3461886 ((_ is Concat!15869) (regOne!20910 (regex!5440 (rule!8032 (h!42593 tokens!494)))))) b!3464055))

(assert (= (and b!3461886 ((_ is Star!10199) (regOne!20910 (regex!5440 (rule!8032 (h!42593 tokens!494)))))) b!3464056))

(assert (= (and b!3461886 ((_ is Union!10199) (regOne!20910 (regex!5440 (rule!8032 (h!42593 tokens!494)))))) b!3464057))

(declare-fun b!3464061 () Bool)

(declare-fun e!2146036 () Bool)

(assert (=> b!3464061 (= e!2146036 tp_is_empty!17559)))

(declare-fun b!3464063 () Bool)

(declare-fun tp!1078461 () Bool)

(assert (=> b!3464063 (= e!2146036 tp!1078461)))

(assert (=> b!3461886 (= tp!1078258 e!2146036)))

(declare-fun b!3464064 () Bool)

(declare-fun tp!1078463 () Bool)

(declare-fun tp!1078462 () Bool)

(assert (=> b!3464064 (= e!2146036 (and tp!1078463 tp!1078462))))

(declare-fun b!3464062 () Bool)

(declare-fun tp!1078460 () Bool)

(declare-fun tp!1078459 () Bool)

(assert (=> b!3464062 (= e!2146036 (and tp!1078460 tp!1078459))))

(assert (= (and b!3461886 ((_ is ElementMatch!10199) (regTwo!20910 (regex!5440 (rule!8032 (h!42593 tokens!494)))))) b!3464061))

(assert (= (and b!3461886 ((_ is Concat!15869) (regTwo!20910 (regex!5440 (rule!8032 (h!42593 tokens!494)))))) b!3464062))

(assert (= (and b!3461886 ((_ is Star!10199) (regTwo!20910 (regex!5440 (rule!8032 (h!42593 tokens!494)))))) b!3464063))

(assert (= (and b!3461886 ((_ is Union!10199) (regTwo!20910 (regex!5440 (rule!8032 (h!42593 tokens!494)))))) b!3464064))

(declare-fun b!3464066 () Bool)

(declare-fun e!2146038 () Bool)

(declare-fun tp!1078465 () Bool)

(assert (=> b!3464066 (= e!2146038 (and tp_is_empty!17559 tp!1078465))))

(assert (=> b!3461879 (= tp!1078254 e!2146038)))

(assert (= (and b!3461879 ((_ is Cons!37171) (originalCharacters!6154 (h!42593 (t!273044 tokens!494))))) b!3464066))

(declare-fun b!3464071 () Bool)

(declare-fun e!2146040 () Bool)

(assert (=> b!3464071 (= e!2146040 tp_is_empty!17559)))

(declare-fun b!3464073 () Bool)

(declare-fun tp!1078473 () Bool)

(assert (=> b!3464073 (= e!2146040 tp!1078473)))

(assert (=> b!3461862 (= tp!1078239 e!2146040)))

(declare-fun b!3464074 () Bool)

(declare-fun tp!1078475 () Bool)

(declare-fun tp!1078474 () Bool)

(assert (=> b!3464074 (= e!2146040 (and tp!1078475 tp!1078474))))

(declare-fun b!3464072 () Bool)

(declare-fun tp!1078472 () Bool)

(declare-fun tp!1078471 () Bool)

(assert (=> b!3464072 (= e!2146040 (and tp!1078472 tp!1078471))))

(assert (= (and b!3461862 ((_ is ElementMatch!10199) (regOne!20911 (regex!5440 (rule!8032 separatorToken!241))))) b!3464071))

(assert (= (and b!3461862 ((_ is Concat!15869) (regOne!20911 (regex!5440 (rule!8032 separatorToken!241))))) b!3464072))

(assert (= (and b!3461862 ((_ is Star!10199) (regOne!20911 (regex!5440 (rule!8032 separatorToken!241))))) b!3464073))

(assert (= (and b!3461862 ((_ is Union!10199) (regOne!20911 (regex!5440 (rule!8032 separatorToken!241))))) b!3464074))

(declare-fun b!3464076 () Bool)

(declare-fun e!2146042 () Bool)

(assert (=> b!3464076 (= e!2146042 tp_is_empty!17559)))

(declare-fun b!3464080 () Bool)

(declare-fun tp!1078480 () Bool)

(assert (=> b!3464080 (= e!2146042 tp!1078480)))

(assert (=> b!3461862 (= tp!1078238 e!2146042)))

(declare-fun b!3464082 () Bool)

(declare-fun tp!1078485 () Bool)

(declare-fun tp!1078483 () Bool)

(assert (=> b!3464082 (= e!2146042 (and tp!1078485 tp!1078483))))

(declare-fun b!3464078 () Bool)

(declare-fun tp!1078478 () Bool)

(declare-fun tp!1078476 () Bool)

(assert (=> b!3464078 (= e!2146042 (and tp!1078478 tp!1078476))))

(assert (= (and b!3461862 ((_ is ElementMatch!10199) (regTwo!20911 (regex!5440 (rule!8032 separatorToken!241))))) b!3464076))

(assert (= (and b!3461862 ((_ is Concat!15869) (regTwo!20911 (regex!5440 (rule!8032 separatorToken!241))))) b!3464078))

(assert (= (and b!3461862 ((_ is Star!10199) (regTwo!20911 (regex!5440 (rule!8032 separatorToken!241))))) b!3464080))

(assert (= (and b!3461862 ((_ is Union!10199) (regTwo!20911 (regex!5440 (rule!8032 separatorToken!241))))) b!3464082))

(declare-fun b!3464087 () Bool)

(declare-fun b_free!89949 () Bool)

(declare-fun b_next!90653 () Bool)

(assert (=> b!3464087 (= b_free!89949 (not b_next!90653))))

(declare-fun t!273466 () Bool)

(declare-fun tb!189111 () Bool)

(assert (=> (and b!3464087 (= (toValue!7668 (transformation!5440 (rule!8032 (h!42593 (t!273044 (t!273044 tokens!494)))))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) t!273466) tb!189111))

(declare-fun result!233128 () Bool)

(assert (= result!233128 result!232744))

(assert (=> d!996319 t!273466))

(declare-fun t!273468 () Bool)

(declare-fun tb!189113 () Bool)

(assert (=> (and b!3464087 (= (toValue!7668 (transformation!5440 (rule!8032 (h!42593 (t!273044 (t!273044 tokens!494)))))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) t!273468) tb!189113))

(declare-fun result!233130 () Bool)

(assert (= result!233130 result!232990))

(assert (=> d!997717 t!273468))

(declare-fun t!273470 () Bool)

(declare-fun tb!189115 () Bool)

(assert (=> (and b!3464087 (= (toValue!7668 (transformation!5440 (rule!8032 (h!42593 (t!273044 (t!273044 tokens!494)))))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) t!273470) tb!189115))

(declare-fun result!233132 () Bool)

(assert (= result!233132 result!233010))

(assert (=> d!997727 t!273470))

(declare-fun t!273472 () Bool)

(declare-fun tb!189117 () Bool)

(assert (=> (and b!3464087 (= (toValue!7668 (transformation!5440 (rule!8032 (h!42593 (t!273044 (t!273044 tokens!494)))))) (toValue!7668 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1176835)))))) t!273472) tb!189117))

(declare-fun result!233134 () Bool)

(assert (= result!233134 result!232830))

(assert (=> d!996615 t!273472))

(assert (=> d!997719 t!273468))

(declare-fun t!273474 () Bool)

(declare-fun tb!189119 () Bool)

(assert (=> (and b!3464087 (= (toValue!7668 (transformation!5440 (rule!8032 (h!42593 (t!273044 (t!273044 tokens!494)))))) (toValue!7668 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1176668)))))) t!273474) tb!189119))

(declare-fun result!233136 () Bool)

(assert (= result!233136 result!233040))

(assert (=> d!997793 t!273474))

(declare-fun b_and!243879 () Bool)

(declare-fun tp!1078489 () Bool)

(assert (=> b!3464087 (= tp!1078489 (and (=> t!273472 result!233134) (=> t!273466 result!233128) (=> t!273470 result!233132) (=> t!273474 result!233136) (=> t!273468 result!233130) b_and!243879))))

(declare-fun b_free!89951 () Bool)

(declare-fun b_next!90655 () Bool)

(assert (=> b!3464087 (= b_free!89951 (not b_next!90655))))

(declare-fun t!273476 () Bool)

(declare-fun tb!189121 () Bool)

(assert (=> (and b!3464087 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 (t!273044 tokens!494)))))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) t!273476) tb!189121))

(declare-fun result!233138 () Bool)

(assert (= result!233138 result!232716))

(assert (=> b!3461191 t!273476))

(declare-fun tb!189123 () Bool)

(declare-fun t!273478 () Bool)

(assert (=> (and b!3464087 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 (t!273044 tokens!494)))))) (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241)))) t!273478) tb!189123))

(declare-fun result!233140 () Bool)

(assert (= result!233140 result!232724))

(assert (=> d!996189 t!273478))

(assert (=> b!3461245 t!273478))

(declare-fun t!273480 () Bool)

(declare-fun tb!189125 () Bool)

(assert (=> (and b!3464087 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 (t!273044 tokens!494)))))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 (t!273044 tokens!494))))))) t!273480) tb!189125))

(declare-fun result!233142 () Bool)

(assert (= result!233142 result!232870))

(assert (=> d!997141 t!273480))

(declare-fun t!273482 () Bool)

(declare-fun tb!189127 () Bool)

(assert (=> (and b!3464087 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 (t!273044 tokens!494)))))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494)))))) t!273482) tb!189127))

(declare-fun result!233144 () Bool)

(assert (= result!233144 result!232730))

(assert (=> b!3463871 t!273482))

(declare-fun t!273484 () Bool)

(declare-fun tb!189129 () Bool)

(assert (=> (and b!3464087 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 (t!273044 tokens!494)))))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) t!273484) tb!189129))

(declare-fun result!233146 () Bool)

(assert (= result!233146 result!233000))

(assert (=> d!997719 t!273484))

(declare-fun tb!189131 () Bool)

(declare-fun t!273486 () Bool)

(assert (=> (and b!3464087 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 (t!273044 tokens!494)))))) (toChars!7527 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1176668)))))) t!273486) tb!189131))

(declare-fun result!233148 () Bool)

(assert (= result!233148 result!232820))

(assert (=> d!996503 t!273486))

(declare-fun t!273488 () Bool)

(declare-fun tb!189133 () Bool)

(assert (=> (and b!3464087 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 (t!273044 tokens!494)))))) (toChars!7527 (transformation!5440 (rule!8032 (apply!8756 lt!1176610 0))))) t!273488) tb!189133))

(declare-fun result!233150 () Bool)

(assert (= result!233150 result!232980))

(assert (=> d!997701 t!273488))

(declare-fun t!273490 () Bool)

(declare-fun tb!189135 () Bool)

(assert (=> (and b!3464087 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 (t!273044 tokens!494)))))) (toChars!7527 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1176835)))))) t!273490) tb!189135))

(declare-fun result!233152 () Bool)

(assert (= result!233152 result!232880))

(assert (=> d!997179 t!273490))

(assert (=> d!996199 t!273482))

(assert (=> d!996107 t!273476))

(declare-fun tb!189137 () Bool)

(declare-fun t!273492 () Bool)

(assert (=> (and b!3464087 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 (t!273044 tokens!494)))))) (toChars!7527 (transformation!5440 (rule!8032 (apply!8756 lt!1176594 0))))) t!273492) tb!189137))

(declare-fun result!233154 () Bool)

(assert (= result!233154 result!232920))

(assert (=> d!997313 t!273492))

(declare-fun t!273494 () Bool)

(declare-fun tb!189139 () Bool)

(assert (=> (and b!3464087 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 (t!273044 tokens!494)))))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (Cons!37173 (h!42593 tokens!494) Nil!37173)))))) t!273494) tb!189139))

(declare-fun result!233156 () Bool)

(assert (= result!233156 result!233084))

(assert (=> d!997813 t!273494))

(declare-fun tb!189141 () Bool)

(declare-fun t!273496 () Bool)

(assert (=> (and b!3464087 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 (t!273044 tokens!494)))))) (toChars!7527 (transformation!5440 (rule!8032 (apply!8756 lt!1176620 0))))) t!273496) tb!189141))

(declare-fun result!233158 () Bool)

(assert (= result!233158 result!232910))

(assert (=> d!997255 t!273496))

(declare-fun b_and!243881 () Bool)

(declare-fun tp!1078491 () Bool)

(assert (=> b!3464087 (= tp!1078491 (and (=> t!273484 result!233146) (=> t!273488 result!233150) (=> t!273486 result!233148) (=> t!273490 result!233152) (=> t!273476 result!233138) (=> t!273482 result!233144) (=> t!273478 result!233140) (=> t!273480 result!233142) (=> t!273496 result!233158) (=> t!273492 result!233154) (=> t!273494 result!233156) b_and!243881))))

(declare-fun e!2146045 () Bool)

(declare-fun e!2146047 () Bool)

(declare-fun b!3464086 () Bool)

(declare-fun tp!1078490 () Bool)

(assert (=> b!3464086 (= e!2146045 (and tp!1078490 (inv!50341 (tag!6050 (rule!8032 (h!42593 (t!273044 (t!273044 tokens!494)))))) (inv!50344 (transformation!5440 (rule!8032 (h!42593 (t!273044 (t!273044 tokens!494)))))) e!2146047))))

(declare-fun e!2146048 () Bool)

(assert (=> b!3461878 (= tp!1078253 e!2146048)))

(declare-fun b!3464085 () Bool)

(declare-fun e!2146049 () Bool)

(declare-fun tp!1078487 () Bool)

(assert (=> b!3464085 (= e!2146049 (and (inv!21 (value!175500 (h!42593 (t!273044 (t!273044 tokens!494))))) e!2146045 tp!1078487))))

(assert (=> b!3464087 (= e!2146047 (and tp!1078489 tp!1078491))))

(declare-fun b!3464084 () Bool)

(declare-fun tp!1078486 () Bool)

(assert (=> b!3464084 (= e!2146048 (and (inv!50345 (h!42593 (t!273044 (t!273044 tokens!494)))) e!2146049 tp!1078486))))

(assert (= b!3464086 b!3464087))

(assert (= b!3464085 b!3464086))

(assert (= b!3464084 b!3464085))

(assert (= (and b!3461878 ((_ is Cons!37173) (t!273044 (t!273044 tokens!494)))) b!3464084))

(declare-fun m!3869627 () Bool)

(assert (=> b!3464086 m!3869627))

(declare-fun m!3869629 () Bool)

(assert (=> b!3464086 m!3869629))

(declare-fun m!3869631 () Bool)

(assert (=> b!3464085 m!3869631))

(declare-fun m!3869633 () Bool)

(assert (=> b!3464084 m!3869633))

(declare-fun b!3464112 () Bool)

(declare-fun e!2146056 () Bool)

(assert (=> b!3464112 (= e!2146056 tp_is_empty!17559)))

(declare-fun b!3464114 () Bool)

(declare-fun tp!1078524 () Bool)

(assert (=> b!3464114 (= e!2146056 tp!1078524)))

(assert (=> b!3461861 (= tp!1078237 e!2146056)))

(declare-fun b!3464115 () Bool)

(declare-fun tp!1078526 () Bool)

(declare-fun tp!1078525 () Bool)

(assert (=> b!3464115 (= e!2146056 (and tp!1078526 tp!1078525))))

(declare-fun b!3464113 () Bool)

(declare-fun tp!1078523 () Bool)

(declare-fun tp!1078522 () Bool)

(assert (=> b!3464113 (= e!2146056 (and tp!1078523 tp!1078522))))

(assert (= (and b!3461861 ((_ is ElementMatch!10199) (reg!10528 (regex!5440 (rule!8032 separatorToken!241))))) b!3464112))

(assert (= (and b!3461861 ((_ is Concat!15869) (reg!10528 (regex!5440 (rule!8032 separatorToken!241))))) b!3464113))

(assert (= (and b!3461861 ((_ is Star!10199) (reg!10528 (regex!5440 (rule!8032 separatorToken!241))))) b!3464114))

(assert (= (and b!3461861 ((_ is Union!10199) (reg!10528 (regex!5440 (rule!8032 separatorToken!241))))) b!3464115))

(declare-fun b!3464116 () Bool)

(declare-fun e!2146057 () Bool)

(assert (=> b!3464116 (= e!2146057 tp_is_empty!17559)))

(declare-fun b!3464118 () Bool)

(declare-fun tp!1078529 () Bool)

(assert (=> b!3464118 (= e!2146057 tp!1078529)))

(assert (=> b!3461880 (= tp!1078256 e!2146057)))

(declare-fun b!3464119 () Bool)

(declare-fun tp!1078531 () Bool)

(declare-fun tp!1078530 () Bool)

(assert (=> b!3464119 (= e!2146057 (and tp!1078531 tp!1078530))))

(declare-fun b!3464117 () Bool)

(declare-fun tp!1078528 () Bool)

(declare-fun tp!1078527 () Bool)

(assert (=> b!3464117 (= e!2146057 (and tp!1078528 tp!1078527))))

(assert (= (and b!3461880 ((_ is ElementMatch!10199) (regex!5440 (rule!8032 (h!42593 (t!273044 tokens!494)))))) b!3464116))

(assert (= (and b!3461880 ((_ is Concat!15869) (regex!5440 (rule!8032 (h!42593 (t!273044 tokens!494)))))) b!3464117))

(assert (= (and b!3461880 ((_ is Star!10199) (regex!5440 (rule!8032 (h!42593 (t!273044 tokens!494)))))) b!3464118))

(assert (= (and b!3461880 ((_ is Union!10199) (regex!5440 (rule!8032 (h!42593 (t!273044 tokens!494)))))) b!3464119))

(declare-fun b!3464120 () Bool)

(declare-fun e!2146058 () Bool)

(assert (=> b!3464120 (= e!2146058 tp_is_empty!17559)))

(declare-fun b!3464122 () Bool)

(declare-fun tp!1078534 () Bool)

(assert (=> b!3464122 (= e!2146058 tp!1078534)))

(assert (=> b!3461887 (= tp!1078260 e!2146058)))

(declare-fun b!3464123 () Bool)

(declare-fun tp!1078536 () Bool)

(declare-fun tp!1078535 () Bool)

(assert (=> b!3464123 (= e!2146058 (and tp!1078536 tp!1078535))))

(declare-fun b!3464121 () Bool)

(declare-fun tp!1078533 () Bool)

(declare-fun tp!1078532 () Bool)

(assert (=> b!3464121 (= e!2146058 (and tp!1078533 tp!1078532))))

(assert (= (and b!3461887 ((_ is ElementMatch!10199) (reg!10528 (regex!5440 (rule!8032 (h!42593 tokens!494)))))) b!3464120))

(assert (= (and b!3461887 ((_ is Concat!15869) (reg!10528 (regex!5440 (rule!8032 (h!42593 tokens!494)))))) b!3464121))

(assert (= (and b!3461887 ((_ is Star!10199) (reg!10528 (regex!5440 (rule!8032 (h!42593 tokens!494)))))) b!3464122))

(assert (= (and b!3461887 ((_ is Union!10199) (reg!10528 (regex!5440 (rule!8032 (h!42593 tokens!494)))))) b!3464123))

(declare-fun b!3464124 () Bool)

(declare-fun e!2146059 () Bool)

(assert (=> b!3464124 (= e!2146059 tp_is_empty!17559)))

(declare-fun b!3464126 () Bool)

(declare-fun tp!1078539 () Bool)

(assert (=> b!3464126 (= e!2146059 tp!1078539)))

(assert (=> b!3461888 (= tp!1078262 e!2146059)))

(declare-fun b!3464127 () Bool)

(declare-fun tp!1078541 () Bool)

(declare-fun tp!1078540 () Bool)

(assert (=> b!3464127 (= e!2146059 (and tp!1078541 tp!1078540))))

(declare-fun b!3464125 () Bool)

(declare-fun tp!1078538 () Bool)

(declare-fun tp!1078537 () Bool)

(assert (=> b!3464125 (= e!2146059 (and tp!1078538 tp!1078537))))

(assert (= (and b!3461888 ((_ is ElementMatch!10199) (regOne!20911 (regex!5440 (rule!8032 (h!42593 tokens!494)))))) b!3464124))

(assert (= (and b!3461888 ((_ is Concat!15869) (regOne!20911 (regex!5440 (rule!8032 (h!42593 tokens!494)))))) b!3464125))

(assert (= (and b!3461888 ((_ is Star!10199) (regOne!20911 (regex!5440 (rule!8032 (h!42593 tokens!494)))))) b!3464126))

(assert (= (and b!3461888 ((_ is Union!10199) (regOne!20911 (regex!5440 (rule!8032 (h!42593 tokens!494)))))) b!3464127))

(declare-fun b!3464128 () Bool)

(declare-fun e!2146060 () Bool)

(assert (=> b!3464128 (= e!2146060 tp_is_empty!17559)))

(declare-fun b!3464130 () Bool)

(declare-fun tp!1078544 () Bool)

(assert (=> b!3464130 (= e!2146060 tp!1078544)))

(assert (=> b!3461888 (= tp!1078261 e!2146060)))

(declare-fun b!3464131 () Bool)

(declare-fun tp!1078546 () Bool)

(declare-fun tp!1078545 () Bool)

(assert (=> b!3464131 (= e!2146060 (and tp!1078546 tp!1078545))))

(declare-fun b!3464129 () Bool)

(declare-fun tp!1078543 () Bool)

(declare-fun tp!1078542 () Bool)

(assert (=> b!3464129 (= e!2146060 (and tp!1078543 tp!1078542))))

(assert (= (and b!3461888 ((_ is ElementMatch!10199) (regTwo!20911 (regex!5440 (rule!8032 (h!42593 tokens!494)))))) b!3464128))

(assert (= (and b!3461888 ((_ is Concat!15869) (regTwo!20911 (regex!5440 (rule!8032 (h!42593 tokens!494)))))) b!3464129))

(assert (= (and b!3461888 ((_ is Star!10199) (regTwo!20911 (regex!5440 (rule!8032 (h!42593 tokens!494)))))) b!3464130))

(assert (= (and b!3461888 ((_ is Union!10199) (regTwo!20911 (regex!5440 (rule!8032 (h!42593 tokens!494)))))) b!3464131))

(declare-fun b!3464132 () Bool)

(declare-fun e!2146061 () Bool)

(assert (=> b!3464132 (= e!2146061 tp_is_empty!17559)))

(declare-fun b!3464134 () Bool)

(declare-fun tp!1078549 () Bool)

(assert (=> b!3464134 (= e!2146061 tp!1078549)))

(assert (=> b!3461860 (= tp!1078236 e!2146061)))

(declare-fun b!3464135 () Bool)

(declare-fun tp!1078551 () Bool)

(declare-fun tp!1078550 () Bool)

(assert (=> b!3464135 (= e!2146061 (and tp!1078551 tp!1078550))))

(declare-fun b!3464133 () Bool)

(declare-fun tp!1078548 () Bool)

(declare-fun tp!1078547 () Bool)

(assert (=> b!3464133 (= e!2146061 (and tp!1078548 tp!1078547))))

(assert (= (and b!3461860 ((_ is ElementMatch!10199) (regOne!20910 (regex!5440 (rule!8032 separatorToken!241))))) b!3464132))

(assert (= (and b!3461860 ((_ is Concat!15869) (regOne!20910 (regex!5440 (rule!8032 separatorToken!241))))) b!3464133))

(assert (= (and b!3461860 ((_ is Star!10199) (regOne!20910 (regex!5440 (rule!8032 separatorToken!241))))) b!3464134))

(assert (= (and b!3461860 ((_ is Union!10199) (regOne!20910 (regex!5440 (rule!8032 separatorToken!241))))) b!3464135))

(declare-fun b!3464136 () Bool)

(declare-fun e!2146062 () Bool)

(assert (=> b!3464136 (= e!2146062 tp_is_empty!17559)))

(declare-fun b!3464138 () Bool)

(declare-fun tp!1078554 () Bool)

(assert (=> b!3464138 (= e!2146062 tp!1078554)))

(assert (=> b!3461860 (= tp!1078235 e!2146062)))

(declare-fun b!3464139 () Bool)

(declare-fun tp!1078556 () Bool)

(declare-fun tp!1078555 () Bool)

(assert (=> b!3464139 (= e!2146062 (and tp!1078556 tp!1078555))))

(declare-fun b!3464137 () Bool)

(declare-fun tp!1078553 () Bool)

(declare-fun tp!1078552 () Bool)

(assert (=> b!3464137 (= e!2146062 (and tp!1078553 tp!1078552))))

(assert (= (and b!3461860 ((_ is ElementMatch!10199) (regTwo!20910 (regex!5440 (rule!8032 separatorToken!241))))) b!3464136))

(assert (= (and b!3461860 ((_ is Concat!15869) (regTwo!20910 (regex!5440 (rule!8032 separatorToken!241))))) b!3464137))

(assert (= (and b!3461860 ((_ is Star!10199) (regTwo!20910 (regex!5440 (rule!8032 separatorToken!241))))) b!3464138))

(assert (= (and b!3461860 ((_ is Union!10199) (regTwo!20910 (regex!5440 (rule!8032 separatorToken!241))))) b!3464139))

(declare-fun b!3464142 () Bool)

(declare-fun b_free!89953 () Bool)

(declare-fun b_next!90657 () Bool)

(assert (=> b!3464142 (= b_free!89953 (not b_next!90657))))

(declare-fun tb!189143 () Bool)

(declare-fun t!273498 () Bool)

(assert (=> (and b!3464142 (= (toValue!7668 (transformation!5440 (h!42592 (t!273043 (t!273043 rules!2135))))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) t!273498) tb!189143))

(declare-fun result!233160 () Bool)

(assert (= result!233160 result!232744))

(assert (=> d!996319 t!273498))

(declare-fun tb!189145 () Bool)

(declare-fun t!273500 () Bool)

(assert (=> (and b!3464142 (= (toValue!7668 (transformation!5440 (h!42592 (t!273043 (t!273043 rules!2135))))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) t!273500) tb!189145))

(declare-fun result!233162 () Bool)

(assert (= result!233162 result!232990))

(assert (=> d!997717 t!273500))

(declare-fun tb!189147 () Bool)

(declare-fun t!273502 () Bool)

(assert (=> (and b!3464142 (= (toValue!7668 (transformation!5440 (h!42592 (t!273043 (t!273043 rules!2135))))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) t!273502) tb!189147))

(declare-fun result!233164 () Bool)

(assert (= result!233164 result!233010))

(assert (=> d!997727 t!273502))

(declare-fun tb!189149 () Bool)

(declare-fun t!273504 () Bool)

(assert (=> (and b!3464142 (= (toValue!7668 (transformation!5440 (h!42592 (t!273043 (t!273043 rules!2135))))) (toValue!7668 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1176835)))))) t!273504) tb!189149))

(declare-fun result!233166 () Bool)

(assert (= result!233166 result!232830))

(assert (=> d!996615 t!273504))

(assert (=> d!997719 t!273500))

(declare-fun tb!189151 () Bool)

(declare-fun t!273506 () Bool)

(assert (=> (and b!3464142 (= (toValue!7668 (transformation!5440 (h!42592 (t!273043 (t!273043 rules!2135))))) (toValue!7668 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1176668)))))) t!273506) tb!189151))

(declare-fun result!233168 () Bool)

(assert (= result!233168 result!233040))

(assert (=> d!997793 t!273506))

(declare-fun b_and!243883 () Bool)

(declare-fun tp!1078560 () Bool)

(assert (=> b!3464142 (= tp!1078560 (and (=> t!273498 result!233160) (=> t!273500 result!233162) (=> t!273506 result!233168) (=> t!273502 result!233164) (=> t!273504 result!233166) b_and!243883))))

(declare-fun b_free!89955 () Bool)

(declare-fun b_next!90659 () Bool)

(assert (=> b!3464142 (= b_free!89955 (not b_next!90659))))

(declare-fun t!273508 () Bool)

(declare-fun tb!189153 () Bool)

(assert (=> (and b!3464142 (= (toChars!7527 (transformation!5440 (h!42592 (t!273043 (t!273043 rules!2135))))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) t!273508) tb!189153))

(declare-fun result!233170 () Bool)

(assert (= result!233170 result!232716))

(assert (=> b!3461191 t!273508))

(declare-fun tb!189155 () Bool)

(declare-fun t!273510 () Bool)

(assert (=> (and b!3464142 (= (toChars!7527 (transformation!5440 (h!42592 (t!273043 (t!273043 rules!2135))))) (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241)))) t!273510) tb!189155))

(declare-fun result!233172 () Bool)

(assert (= result!233172 result!232724))

(assert (=> d!996189 t!273510))

(assert (=> b!3461245 t!273510))

(declare-fun t!273512 () Bool)

(declare-fun tb!189157 () Bool)

(assert (=> (and b!3464142 (= (toChars!7527 (transformation!5440 (h!42592 (t!273043 (t!273043 rules!2135))))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 (t!273044 tokens!494))))))) t!273512) tb!189157))

(declare-fun result!233174 () Bool)

(assert (= result!233174 result!232870))

(assert (=> d!997141 t!273512))

(declare-fun t!273514 () Bool)

(declare-fun tb!189159 () Bool)

(assert (=> (and b!3464142 (= (toChars!7527 (transformation!5440 (h!42592 (t!273043 (t!273043 rules!2135))))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494)))))) t!273514) tb!189159))

(declare-fun result!233176 () Bool)

(assert (= result!233176 result!232730))

(assert (=> b!3463871 t!273514))

(declare-fun tb!189161 () Bool)

(declare-fun t!273516 () Bool)

(assert (=> (and b!3464142 (= (toChars!7527 (transformation!5440 (h!42592 (t!273043 (t!273043 rules!2135))))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494))))) t!273516) tb!189161))

(declare-fun result!233178 () Bool)

(assert (= result!233178 result!233000))

(assert (=> d!997719 t!273516))

(declare-fun tb!189163 () Bool)

(declare-fun t!273518 () Bool)

(assert (=> (and b!3464142 (= (toChars!7527 (transformation!5440 (h!42592 (t!273043 (t!273043 rules!2135))))) (toChars!7527 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1176668)))))) t!273518) tb!189163))

(declare-fun result!233180 () Bool)

(assert (= result!233180 result!232820))

(assert (=> d!996503 t!273518))

(declare-fun t!273520 () Bool)

(declare-fun tb!189165 () Bool)

(assert (=> (and b!3464142 (= (toChars!7527 (transformation!5440 (h!42592 (t!273043 (t!273043 rules!2135))))) (toChars!7527 (transformation!5440 (rule!8032 (apply!8756 lt!1176610 0))))) t!273520) tb!189165))

(declare-fun result!233182 () Bool)

(assert (= result!233182 result!232980))

(assert (=> d!997701 t!273520))

(declare-fun t!273522 () Bool)

(declare-fun tb!189167 () Bool)

(assert (=> (and b!3464142 (= (toChars!7527 (transformation!5440 (h!42592 (t!273043 (t!273043 rules!2135))))) (toChars!7527 (transformation!5440 (rule!8032 (_1!21583 (get!11899 lt!1176835)))))) t!273522) tb!189167))

(declare-fun result!233184 () Bool)

(assert (= result!233184 result!232880))

(assert (=> d!997179 t!273522))

(assert (=> d!996199 t!273514))

(assert (=> d!996107 t!273508))

(declare-fun tb!189169 () Bool)

(declare-fun t!273524 () Bool)

(assert (=> (and b!3464142 (= (toChars!7527 (transformation!5440 (h!42592 (t!273043 (t!273043 rules!2135))))) (toChars!7527 (transformation!5440 (rule!8032 (apply!8756 lt!1176594 0))))) t!273524) tb!189169))

(declare-fun result!233186 () Bool)

(assert (= result!233186 result!232920))

(assert (=> d!997313 t!273524))

(declare-fun t!273526 () Bool)

(declare-fun tb!189171 () Bool)

(assert (=> (and b!3464142 (= (toChars!7527 (transformation!5440 (h!42592 (t!273043 (t!273043 rules!2135))))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (Cons!37173 (h!42593 tokens!494) Nil!37173)))))) t!273526) tb!189171))

(declare-fun result!233188 () Bool)

(assert (= result!233188 result!233084))

(assert (=> d!997813 t!273526))

(declare-fun t!273528 () Bool)

(declare-fun tb!189173 () Bool)

(assert (=> (and b!3464142 (= (toChars!7527 (transformation!5440 (h!42592 (t!273043 (t!273043 rules!2135))))) (toChars!7527 (transformation!5440 (rule!8032 (apply!8756 lt!1176620 0))))) t!273528) tb!189173))

(declare-fun result!233190 () Bool)

(assert (= result!233190 result!232910))

(assert (=> d!997255 t!273528))

(declare-fun tp!1078559 () Bool)

(declare-fun b_and!243885 () Bool)

(assert (=> b!3464142 (= tp!1078559 (and (=> t!273510 result!233172) (=> t!273516 result!233178) (=> t!273514 result!233176) (=> t!273512 result!233174) (=> t!273528 result!233190) (=> t!273520 result!233182) (=> t!273526 result!233188) (=> t!273518 result!233180) (=> t!273522 result!233184) (=> t!273508 result!233170) (=> t!273524 result!233186) b_and!243885))))

(declare-fun e!2146063 () Bool)

(assert (=> b!3464142 (= e!2146063 (and tp!1078560 tp!1078559))))

(declare-fun tp!1078558 () Bool)

(declare-fun b!3464141 () Bool)

(declare-fun e!2146066 () Bool)

(assert (=> b!3464141 (= e!2146066 (and tp!1078558 (inv!50341 (tag!6050 (h!42592 (t!273043 (t!273043 rules!2135))))) (inv!50344 (transformation!5440 (h!42592 (t!273043 (t!273043 rules!2135))))) e!2146063))))

(declare-fun b!3464140 () Bool)

(declare-fun e!2146065 () Bool)

(declare-fun tp!1078557 () Bool)

(assert (=> b!3464140 (= e!2146065 (and e!2146066 tp!1078557))))

(assert (=> b!3461902 (= tp!1078277 e!2146065)))

(assert (= b!3464141 b!3464142))

(assert (= b!3464140 b!3464141))

(assert (= (and b!3461902 ((_ is Cons!37172) (t!273043 (t!273043 rules!2135)))) b!3464140))

(declare-fun m!3869635 () Bool)

(assert (=> b!3464141 m!3869635))

(declare-fun m!3869637 () Bool)

(assert (=> b!3464141 m!3869637))

(declare-fun b!3464143 () Bool)

(declare-fun e!2146067 () Bool)

(assert (=> b!3464143 (= e!2146067 tp_is_empty!17559)))

(declare-fun b!3464145 () Bool)

(declare-fun tp!1078563 () Bool)

(assert (=> b!3464145 (= e!2146067 tp!1078563)))

(assert (=> b!3461903 (= tp!1078278 e!2146067)))

(declare-fun b!3464146 () Bool)

(declare-fun tp!1078565 () Bool)

(declare-fun tp!1078564 () Bool)

(assert (=> b!3464146 (= e!2146067 (and tp!1078565 tp!1078564))))

(declare-fun b!3464144 () Bool)

(declare-fun tp!1078562 () Bool)

(declare-fun tp!1078561 () Bool)

(assert (=> b!3464144 (= e!2146067 (and tp!1078562 tp!1078561))))

(assert (= (and b!3461903 ((_ is ElementMatch!10199) (regex!5440 (h!42592 (t!273043 rules!2135))))) b!3464143))

(assert (= (and b!3461903 ((_ is Concat!15869) (regex!5440 (h!42592 (t!273043 rules!2135))))) b!3464144))

(assert (= (and b!3461903 ((_ is Star!10199) (regex!5440 (h!42592 (t!273043 rules!2135))))) b!3464145))

(assert (= (and b!3461903 ((_ is Union!10199) (regex!5440 (h!42592 (t!273043 rules!2135))))) b!3464146))

(declare-fun b!3464147 () Bool)

(declare-fun e!2146068 () Bool)

(assert (=> b!3464147 (= e!2146068 tp_is_empty!17559)))

(declare-fun b!3464149 () Bool)

(declare-fun tp!1078568 () Bool)

(assert (=> b!3464149 (= e!2146068 tp!1078568)))

(assert (=> b!3461890 (= tp!1078264 e!2146068)))

(declare-fun b!3464150 () Bool)

(declare-fun tp!1078570 () Bool)

(declare-fun tp!1078569 () Bool)

(assert (=> b!3464150 (= e!2146068 (and tp!1078570 tp!1078569))))

(declare-fun b!3464148 () Bool)

(declare-fun tp!1078567 () Bool)

(declare-fun tp!1078566 () Bool)

(assert (=> b!3464148 (= e!2146068 (and tp!1078567 tp!1078566))))

(assert (= (and b!3461890 ((_ is ElementMatch!10199) (regOne!20910 (regex!5440 (h!42592 rules!2135))))) b!3464147))

(assert (= (and b!3461890 ((_ is Concat!15869) (regOne!20910 (regex!5440 (h!42592 rules!2135))))) b!3464148))

(assert (= (and b!3461890 ((_ is Star!10199) (regOne!20910 (regex!5440 (h!42592 rules!2135))))) b!3464149))

(assert (= (and b!3461890 ((_ is Union!10199) (regOne!20910 (regex!5440 (h!42592 rules!2135))))) b!3464150))

(declare-fun b!3464151 () Bool)

(declare-fun e!2146069 () Bool)

(assert (=> b!3464151 (= e!2146069 tp_is_empty!17559)))

(declare-fun b!3464153 () Bool)

(declare-fun tp!1078573 () Bool)

(assert (=> b!3464153 (= e!2146069 tp!1078573)))

(assert (=> b!3461890 (= tp!1078263 e!2146069)))

(declare-fun b!3464154 () Bool)

(declare-fun tp!1078575 () Bool)

(declare-fun tp!1078574 () Bool)

(assert (=> b!3464154 (= e!2146069 (and tp!1078575 tp!1078574))))

(declare-fun b!3464152 () Bool)

(declare-fun tp!1078572 () Bool)

(declare-fun tp!1078571 () Bool)

(assert (=> b!3464152 (= e!2146069 (and tp!1078572 tp!1078571))))

(assert (= (and b!3461890 ((_ is ElementMatch!10199) (regTwo!20910 (regex!5440 (h!42592 rules!2135))))) b!3464151))

(assert (= (and b!3461890 ((_ is Concat!15869) (regTwo!20910 (regex!5440 (h!42592 rules!2135))))) b!3464152))

(assert (= (and b!3461890 ((_ is Star!10199) (regTwo!20910 (regex!5440 (h!42592 rules!2135))))) b!3464153))

(assert (= (and b!3461890 ((_ is Union!10199) (regTwo!20910 (regex!5440 (h!42592 rules!2135))))) b!3464154))

(declare-fun b!3464157 () Bool)

(declare-fun e!2146072 () Bool)

(assert (=> b!3464157 (= e!2146072 true)))

(declare-fun b!3464156 () Bool)

(declare-fun e!2146071 () Bool)

(assert (=> b!3464156 (= e!2146071 e!2146072)))

(declare-fun b!3464155 () Bool)

(declare-fun e!2146070 () Bool)

(assert (=> b!3464155 (= e!2146070 e!2146071)))

(assert (=> b!3461846 e!2146070))

(assert (= b!3464156 b!3464157))

(assert (= b!3464155 b!3464156))

(assert (= (and b!3461846 ((_ is Cons!37172) (t!273043 rules!2135))) b!3464155))

(assert (=> b!3464157 (< (dynLambda!15664 order!19805 (toValue!7668 (transformation!5440 (h!42592 (t!273043 rules!2135))))) (dynLambda!15665 order!19807 lambda!121866))))

(assert (=> b!3464157 (< (dynLambda!15666 order!19809 (toChars!7527 (transformation!5440 (h!42592 (t!273043 rules!2135))))) (dynLambda!15665 order!19807 lambda!121866))))

(declare-fun tp!1078577 () Bool)

(declare-fun e!2146073 () Bool)

(declare-fun b!3464158 () Bool)

(declare-fun tp!1078578 () Bool)

(assert (=> b!3464158 (= e!2146073 (and (inv!50346 (left!29005 (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (value!175500 (h!42593 (t!273044 tokens!494))))))) tp!1078578 (inv!50346 (right!29335 (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (value!175500 (h!42593 (t!273044 tokens!494))))))) tp!1078577))))

(declare-fun b!3464160 () Bool)

(declare-fun e!2146074 () Bool)

(declare-fun tp!1078576 () Bool)

(assert (=> b!3464160 (= e!2146074 tp!1078576)))

(declare-fun b!3464159 () Bool)

(assert (=> b!3464159 (= e!2146073 (and (inv!50354 (xs!14429 (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (value!175500 (h!42593 (t!273044 tokens!494))))))) e!2146074))))

(assert (=> b!3461358 (= tp!1078221 (and (inv!50346 (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (value!175500 (h!42593 (t!273044 tokens!494)))))) e!2146073))))

(assert (= (and b!3461358 ((_ is Node!11255) (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (value!175500 (h!42593 (t!273044 tokens!494))))))) b!3464158))

(assert (= b!3464159 b!3464160))

(assert (= (and b!3461358 ((_ is Leaf!17586) (c!592551 (dynLambda!15667 (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (value!175500 (h!42593 (t!273044 tokens!494))))))) b!3464159))

(declare-fun m!3869639 () Bool)

(assert (=> b!3464158 m!3869639))

(declare-fun m!3869641 () Bool)

(assert (=> b!3464158 m!3869641))

(declare-fun m!3869643 () Bool)

(assert (=> b!3464159 m!3869643))

(assert (=> b!3461358 m!3864495))

(declare-fun b_lambda!99863 () Bool)

(assert (= b_lambda!99817 (or (and b!3464142 b_free!89953 (= (toValue!7668 (transformation!5440 (h!42592 (t!273043 (t!273043 rules!2135))))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))))) (and b!3464087 b_free!89949 (= (toValue!7668 (transformation!5440 (rule!8032 (h!42593 (t!273044 (t!273044 tokens!494)))))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))))) (and b!3461904 b_free!89929 (= (toValue!7668 (transformation!5440 (h!42592 (t!273043 rules!2135)))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))))) (and b!3461881 b_free!89925 (= (toValue!7668 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))))) (and b!3461090 b_free!89921 (= (toValue!7668 (transformation!5440 (h!42592 rules!2135))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))))) (and b!3461071 b_free!89913 (= (toValue!7668 (transformation!5440 (rule!8032 separatorToken!241))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))))) (and b!3461104 b_free!89917) b_lambda!99863)))

(declare-fun b_lambda!99865 () Bool)

(assert (= b_lambda!99761 (or b!3461085 b_lambda!99865)))

(assert (=> d!996513 d!996417))

(declare-fun b_lambda!99867 () Bool)

(assert (= b_lambda!99819 (or (and b!3461904 b_free!89931 (= (toChars!7527 (transformation!5440 (h!42592 (t!273043 rules!2135)))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))))) (and b!3464087 b_free!89951 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 (t!273044 tokens!494)))))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))))) (and b!3461090 b_free!89923 (= (toChars!7527 (transformation!5440 (h!42592 rules!2135))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))))) (and b!3464142 b_free!89955 (= (toChars!7527 (transformation!5440 (h!42592 (t!273043 (t!273043 rules!2135))))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))))) (and b!3461104 b_free!89919) (and b!3461071 b_free!89915 (= (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))))) (and b!3461881 b_free!89927 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))))) b_lambda!99867)))

(declare-fun b_lambda!99869 () Bool)

(assert (= b_lambda!99821 (or (and b!3464142 b_free!89953 (= (toValue!7668 (transformation!5440 (h!42592 (t!273043 (t!273043 rules!2135))))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))))) (and b!3464087 b_free!89949 (= (toValue!7668 (transformation!5440 (rule!8032 (h!42593 (t!273044 (t!273044 tokens!494)))))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))))) (and b!3461904 b_free!89929 (= (toValue!7668 (transformation!5440 (h!42592 (t!273043 rules!2135)))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))))) (and b!3461881 b_free!89925 (= (toValue!7668 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))))) (and b!3461090 b_free!89921 (= (toValue!7668 (transformation!5440 (h!42592 rules!2135))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))))) (and b!3461071 b_free!89913 (= (toValue!7668 (transformation!5440 (rule!8032 separatorToken!241))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))))) (and b!3461104 b_free!89917) b_lambda!99869)))

(declare-fun b_lambda!99871 () Bool)

(assert (= b_lambda!99795 (or d!996341 b_lambda!99871)))

(declare-fun bs!560780 () Bool)

(declare-fun d!997821 () Bool)

(assert (= bs!560780 (and d!997821 d!996341)))

(assert (=> bs!560780 (= (dynLambda!15668 lambda!121866 (h!42593 (list!13537 (seqFromList!3934 tokens!494)))) (rulesProduceIndividualToken!2521 thiss!18206 rules!2135 (h!42593 (list!13537 (seqFromList!3934 tokens!494)))))))

(assert (=> bs!560780 m!3869503))

(assert (=> b!3463355 d!997821))

(declare-fun b_lambda!99873 () Bool)

(assert (= b_lambda!99781 (or b!3461108 b_lambda!99873)))

(declare-fun bs!560781 () Bool)

(declare-fun d!997823 () Bool)

(assert (= bs!560781 (and d!997823 b!3461108)))

(assert (=> bs!560781 (= (dynLambda!15668 lambda!121861 (h!42593 tokens!494)) (rulesProduceIndividualToken!2521 thiss!18206 rules!2135 (h!42593 tokens!494)))))

(assert (=> bs!560781 m!3864103))

(assert (=> b!3462893 d!997823))

(declare-fun b_lambda!99875 () Bool)

(assert (= b_lambda!99825 (or (and b!3464142 b_free!89955 (= (toChars!7527 (transformation!5440 (h!42592 (t!273043 (t!273043 rules!2135))))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))))) (and b!3464087 b_free!89951 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 (t!273044 tokens!494)))))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))))) (and b!3461071 b_free!89915 (= (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))))) (and b!3461104 b_free!89919 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))))) (and b!3461904 b_free!89931 (= (toChars!7527 (transformation!5440 (h!42592 (t!273043 rules!2135)))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))))) (and b!3461881 b_free!89927) (and b!3461090 b_free!89923 (= (toChars!7527 (transformation!5440 (h!42592 rules!2135))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))))) b_lambda!99875)))

(declare-fun b_lambda!99877 () Bool)

(assert (= b_lambda!99779 (or b!3461108 b_lambda!99877)))

(assert (=> d!997047 d!996419))

(declare-fun b_lambda!99879 () Bool)

(assert (= b_lambda!99823 (or (and b!3464142 b_free!89953 (= (toValue!7668 (transformation!5440 (h!42592 (t!273043 (t!273043 rules!2135))))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))))) (and b!3464087 b_free!89949 (= (toValue!7668 (transformation!5440 (rule!8032 (h!42593 (t!273044 (t!273044 tokens!494)))))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))))) (and b!3461904 b_free!89929 (= (toValue!7668 (transformation!5440 (h!42592 (t!273043 rules!2135)))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))))) (and b!3461881 b_free!89925 (= (toValue!7668 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))))) (and b!3461090 b_free!89921 (= (toValue!7668 (transformation!5440 (h!42592 rules!2135))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))))) (and b!3461071 b_free!89913 (= (toValue!7668 (transformation!5440 (rule!8032 separatorToken!241))) (toValue!7668 (transformation!5440 (rule!8032 (h!42593 tokens!494)))))) (and b!3461104 b_free!89917) b_lambda!99879)))

(declare-fun b_lambda!99881 () Bool)

(assert (= b_lambda!99783 (or b!3461085 b_lambda!99881)))

(assert (=> b!3462908 d!996417))

(declare-fun b_lambda!99883 () Bool)

(assert (= b_lambda!99785 (or (and b!3461104 b_free!89919 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 tokens!494)))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 (t!273044 tokens!494)))))))) (and b!3461090 b_free!89923 (= (toChars!7527 (transformation!5440 (h!42592 rules!2135))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 (t!273044 tokens!494)))))))) (and b!3464087 b_free!89951) (and b!3461071 b_free!89915 (= (toChars!7527 (transformation!5440 (rule!8032 separatorToken!241))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 (t!273044 tokens!494)))))))) (and b!3464142 b_free!89955 (= (toChars!7527 (transformation!5440 (h!42592 (t!273043 (t!273043 rules!2135))))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 (t!273044 tokens!494)))))))) (and b!3461881 b_free!89927 (= (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 tokens!494))))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 (t!273044 tokens!494)))))))) (and b!3461904 b_free!89931 (= (toChars!7527 (transformation!5440 (h!42592 (t!273043 rules!2135)))) (toChars!7527 (transformation!5440 (rule!8032 (h!42593 (t!273044 (t!273044 tokens!494)))))))) b_lambda!99883)))

(declare-fun b_lambda!99885 () Bool)

(assert (= b_lambda!99777 (or b!3461085 b_lambda!99885)))

(assert (=> d!997045 d!996421))

(check-sat (not b!3463412) (not b!3464082) b_and!243859 (not b!3462939) (not b!3464017) (not d!997037) (not b!3463554) (not b!3462018) (not b!3462272) (not d!996589) (not d!997505) b_and!243883 (not b!3463336) (not b!3464115) (not d!997257) (not b!3463513) (not b!3463272) (not b!3462496) (not b!3463047) b_and!243873 (not d!997089) (not b_next!90655) (not d!997433) (not b!3462364) (not b!3463748) (not b_next!90631) (not b!3464127) (not b!3464148) (not d!996497) (not bm!249778) b_and!243869 (not b!3464135) (not b!3462502) (not bs!560780) (not b!3462252) (not b!3463066) (not b!3463317) (not bm!249805) (not b!3462883) (not b!3462894) b_and!243865 (not b!3462091) (not d!997299) (not b!3462426) (not d!997615) (not tb!188817) (not b!3463374) (not b!3464155) (not tb!189069) (not d!996769) (not b!3463341) (not d!997063) (not bm!249773) (not b!3462266) (not tb!189027) (not b!3463370) (not b!3463030) (not b!3463238) (not b!3463769) (not b!3463575) (not d!997141) (not b!3462362) (not d!997241) (not b!3462276) (not b!3463369) (not b!3463746) (not d!997125) (not bm!249804) (not b_lambda!99725) (not b!3463854) (not b_lambda!99721) (not d!996483) (not b!3462913) (not b!3464086) (not d!997147) (not d!997135) (not b!3464031) (not b!3462876) (not b!3462889) (not d!997055) (not bm!249784) (not b_next!90657) (not d!997569) (not b!3464140) (not b!3464138) (not b!3463951) (not d!997443) (not d!997097) (not d!996637) (not bm!249830) (not d!997133) (not b!3463960) (not d!997213) (not b!3462503) (not b!3463366) (not d!996705) (not b!3462039) (not d!996775) (not bm!249663) (not b!3463185) (not d!997117) (not b!3464053) (not bm!249813) (not b!3464130) (not d!997629) (not b!3464159) (not b!3463080) (not b!3462158) (not b!3463276) (not d!996751) (not d!997211) (not b!3463636) (not b!3464012) (not d!997813) (not d!997155) (not d!996555) (not b_lambda!99869) (not b!3462083) (not b!3462235) (not b!3462471) (not b!3463743) (not b!3463536) (not b!3462506) (not b!3462500) (not b_next!90623) (not b!3463553) (not b!3463356) (not b!3463720) (not b!3463400) (not d!997129) (not b!3463622) (not bm!249795) (not d!996703) (not d!997261) (not b!3462246) (not b!3463837) (not b!3462474) (not b_lambda!99875) (not d!997811) (not d!997589) (not d!997103) (not d!997059) (not b!3463170) (not d!996569) (not b!3462926) b_and!243857 (not b!3462491) (not b!3463067) (not b_lambda!99877) (not bm!249783) (not d!997797) (not bm!249776) (not d!996771) (not b_lambda!99835) (not d!997143) (not b_lambda!99883) (not b!3463342) (not b!3463605) (not bm!249703) (not b_next!90619) (not tb!188967) (not b!3463344) (not b!3462149) (not b!3463268) (not d!997341) (not b!3462263) (not b!3462930) (not b!3462856) (not bm!249838) (not b_lambda!99787) (not d!996531) (not b!3464022) (not b!3463096) (not b!3462508) (not b!3462265) (not b!3462469) (not d!996487) (not b!3462067) (not b!3463393) (not d!997225) (not d!997305) (not b!3463281) (not b!3463050) b_and!243867 (not b!3463048) (not b!3463839) (not d!996519) (not d!997427) (not b!3462028) (not d!997321) (not bm!249775) (not b!3462204) (not b!3463677) (not b!3462501) (not b!3463004) (not b!3462915) (not b!3463229) (not d!997035) (not b!3464057) b_and!243851 (not d!997337) (not b_next!90621) (not b!3462953) (not b_lambda!99727) (not b!3464137) (not b!3461358) (not b!3464015) (not d!997529) (not bm!249846) b_and!243881 (not b!3464114) (not d!997495) (not b!3462945) (not b_lambda!99719) (not d!997725) (not b!3462495) (not b!3463835) (not b!3463367) (not d!997113) (not b!3464074) (not d!997451) (not d!997723) (not d!997713) (not bm!249808) (not d!996481) (not d!997333) (not d!997809) (not d!997289) (not b!3463371) b_and!243879 (not b!3463933) (not d!997459) (not d!996709) (not b!3464134) (not b!3463866) (not b!3463368) (not b!3462101) (not b!3462199) (not d!996785) (not b!3463114) (not b!3462907) (not d!997029) (not b!3464018) (not b!3463617) (not b!3462175) (not b!3462954) (not b_lambda!99759) (not b!3463372) (not d!997215) (not b!3463432) (not b!3462041) (not b!3462081) (not tb!188867) (not b_lambda!99717) (not bm!249785) (not bm!249819) (not d!997715) (not d!997537) (not b!3462363) (not b!3463099) (not d!997703) (not bs!560781) (not b!3463768) (not b!3463702) (not d!997309) (not b_lambda!99879) (not bm!249794) (not b!3463651) (not b!3462066) (not d!997039) (not b!3463274) (not d!997157) (not b!3462372) (not d!997707) (not b!3463512) (not b!3463180) (not d!997301) (not b!3462916) (not b_next!90625) (not b!3464123) (not d!997115) (not b!3462493) (not b!3463851) (not b!3463007) (not b_lambda!99867) (not d!997259) (not bm!249799) (not d!997719) (not b!3463396) (not b!3463389) (not d!996679) (not b!3463583) (not b!3462510) (not d!997283) (not bm!249751) (not b!3462874) (not b!3462181) (not b!3462971) (not b!3463654) (not b_next!90627) (not d!996583) (not tb!188907) (not b!3462274) (not b!3462892) (not bm!249815) (not d!996577) (not b!3463961) (not d!996607) (not b!3462140) (not d!997053) (not b!3463083) (not b!3463656) (not b!3462032) (not d!996479) (not d!996477) (not d!997201) (not b_lambda!99865) (not d!997471) (not b!3463232) (not d!997269) (not b!3462309) (not b!3463551) (not b!3462891) (not b!3463051) (not b!3463870) (not d!997737) (not b!3462185) (not d!997403) (not b!3463642) (not b!3462142) (not b!3462264) (not b!3463422) (not b!3462472) (not d!997189) (not b!3462065) (not b_next!90629) (not b!3463319) (not b!3464084) (not d!997149) (not b!3464153) (not b!3463335) (not b!3463397) (not b_lambda!99873) (not bm!249814) (not b!3462859) (not b!3462307) (not d!996515) b_and!243853 (not b!3462870) (not b!3464150) (not d!996587) (not b!3461247) (not b!3462958) (not b!3463838) (not d!996557) (not d!997701) (not b!3463506) (not b!3462924) (not d!997535) (not d!996625) (not b!3462213) (not b!3463257) (not d!996723) (not d!997095) (not b!3464078) (not bm!249660) (not d!996491) (not b!3462964) (not b!3463770) (not bm!249822) (not d!996529) (not b!3463703) (not b!3463845) (not d!997163) (not d!997081) (not d!997711) (not d!997153) (not b!3463284) (not d!997345) (not d!997455) (not b_lambda!99723) (not d!997325) (not b!3462369) (not b!3463645) (not b!3463534) (not tb!188897) (not b!3463380) (not tb!188987) (not d!997205) (not b!3462467) (not b!3463569) (not b_lambda!99715) (not d!997107) (not b!3463657) (not b!3462904) (not b!3462211) (not b!3463624) (not d!997489) (not b!3463767) (not b!3463025) (not d!996511) (not bm!249664) (not d!997807) (not b!3463270) (not bm!249817) (not b!3463618) (not d!997709) (not d!996485) (not b_lambda!99881) (not b!3464158) (not b!3462191) (not b!3462921) (not b_next!90617) (not d!997177) (not b!3462143) (not b!3463071) (not d!997467) (not d!997729) (not b!3463620) (not b!3462192) (not b!3463157) (not b_lambda!99837) (not d!997127) (not d!996673) (not b!3464129) (not d!997803) (not d!996627) (not bm!249811) (not b!3464055) (not tb!188857) (not b!3464013) (not d!997255) (not b!3462370) (not b!3462064) (not b!3462089) (not b!3463101) (not d!997419) (not tb!188807) (not b!3462855) (not d!997795) (not b!3464152) (not b!3463871) (not d!996575) (not d!997315) (not b!3462922) (not b!3462183) (not d!997195) (not d!996701) (not d!997013) (not d!996773) (not b!3462270) (not b_next!90635) (not b!3462365) (not b!3464117) (not b!3463637) (not b!3463269) (not b!3462074) (not b!3462250) (not d!996581) (not b!3464085) b_and!243855 (not b!3464160) (not b!3462311) (not b!3463584) (not d!997449) (not d!997075) (not b!3464122) (not b!3463063) (not b!3462942) (not b!3464144) (not b!3463954) (not d!997559) (not b!3462092) (not bm!249772) (not b!3463762) (not b!3463377) (not b!3464045) (not b!3463249) (not bm!249646) (not bm!249807) (not d!997151) (not b!3464021) (not d!997541) (not b_lambda!99793) (not b!3464154) (not b!3463346) (not b!3463395) (not d!997137) (not bm!249798) (not b!3463418) (not b!3463586) tp_is_empty!17559 (not d!997331) (not b!3462909) (not b!3462102) (not tb!188977) (not b!3463872) (not b!3462951) (not d!997595) (not b!3463721) (not b!3464126) (not d!997521) (not b!3462068) (not b!3463112) (not b!3463719) (not bm!249755) (not d!997801) (not b!3463419) (not b!3463619) (not b!3463576) (not b!3463320) (not bm!249829) (not b!3462100) (not b!3462075) (not b!3464029) (not b!3463932) (not b!3462970) (not b!3462890) (not d!997175) (not b!3462187) (not d!997033) (not b_lambda!99797) (not b!3463241) (not b!3464139) (not d!997705) (not b!3463091) (not b!3462177) (not b!3464036) (not b!3462355) (not b_lambda!99731) (not b!3463759) (not bm!249803) (not b!3463010) (not d!997503) (not d!997527) (not b!3462157) (not b!3463644) (not d!997251) (not b!3464064) (not d!997631) (not bm!249650) (not b!3463420) (not b!3464149) (not d!997185) (not d!996619) (not b_next!90653) (not d!996765) (not b!3463745) (not b!3462448) (not b!3463676) (not b!3462268) (not b!3463834) (not bm!249777) (not b!3463075) (not b!3464118) (not b!3463386) (not b!3464121) (not d!997169) (not b!3462498) (not b!3462911) (not b!3462499) (not b!3462205) (not b!3462148) (not d!997733) (not b!3463271) (not d!997293) (not d!997735) (not b!3462878) (not b!3462026) (not bm!249845) (not d!997105) (not b!3462957) (not bm!249818) (not b!3462027) (not b!3463078) (not d!997323) (not b!3463261) (not d!997425) (not b_lambda!99815) (not b!3463623) (not d!997111) (not d!997335) (not b_lambda!99765) (not d!997119) (not d!997199) (not d!997479) (not bm!249802) (not b!3463417) b_and!243885 (not d!997439) (not b!3462258) (not d!997077) (not b!3463155) (not d!996559) (not b!3461129) (not b!3463156) (not d!996767) (not b!3463343) (not d!997093) (not b!3464043) (not d!997159) (not b!3462854) (not d!997313) (not d!996793) (not d!997091) (not d!996665) (not d!997319) (not b!3463311) (not b!3463638) (not b!3462360) (not b!3462932) (not b!3462025) (not b!3463411) (not b!3462504) (not b!3464044) (not d!996661) (not b!3462884) (not d!997307) (not b!3462923) (not b!3464066) (not b!3463535) (not tb!188997) (not d!997121) (not b!3462069) (not b!3463079) (not d!997493) (not d!996779) (not bm!249800) (not b!3462358) (not b!3463724) (not b!3463621) (not d!996501) (not b!3464119) (not b_lambda!99871) (not b!3464023) (not d!997051) (not b!3463509) (not bm!249690) (not d!997695) (not b!3464146) (not b!3462156) (not b_lambda!99863) (not b!3463978) (not b!3464062) (not b!3463931) (not bm!249782) (not b!3462943) (not b!3463860) (not b!3462465) (not b!3463027) (not b!3462453) (not b!3462176) (not b!3464019) (not b_lambda!99713) (not d!996797) (not d!996747) (not b!3462965) (not d!996579) (not b!3462082) (not b_lambda!99729) (not d!996597) (not b!3464133) (not b!3462459) (not b!3463766) (not d!997317) (not bm!249702) (not b!3462188) (not b!3464113) (not d!997805) (not b!3463970) (not d!996489) (not bm!249779) (not d!997073) (not bm!249754) (not b!3463115) (not b!3463029) (not b!3462937) (not b!3462257) (not b!3462972) (not b!3463363) (not b!3463167) (not b!3464131) (not b_next!90659) (not b!3464145) (not b!3462476) (not d!997327) (not b!3463842) (not d!996549) (not b!3463059) (not b!3462024) (not b!3463312) (not d!997435) (not b!3463507) (not d!997473) (not d!996743) (not b!3463097) (not d!997223) (not d!997099) (not b!3462278) (not d!997165) (not b!3462507) (not b!3462461) (not d!997627) (not b!3462368) (not b!3463275) (not d!996503) (not b!3462210) (not b!3463070) (not b!3463532) (not b!3463074) b_and!243871 (not b!3463251) (not b!3463250) (not b!3464014) (not b!3464080) (not d!997339) (not b!3463094) (not b!3462212) (not d!997295) (not d!997593) (not bm!249816) (not b!3463510) (not b!3463254) (not b!3463511) (not b!3462509) (not d!997545) (not b!3463394) (not d!996695) (not b!3462244) (not d!996777) (not b!3463158) (not b!3463869) (not d!996567) (not b!3463282) (not b!3463403) (not bm!249651) (not d!996787) (not b!3462080) (not b!3463537) (not d!997799) (not b!3462179) (not b!3462449) (not b!3463062) (not d!997481) (not d!997027) (not b!3463318) (not b!3463675) (not b!3464072) (not b_next!90633) (not d!996643) (not bm!249843) (not bm!249774) (not b!3462248) (not b!3464141) (not d!996621) (not b!3463168) (not b!3463008) (not d!997083) (not d!996617) (not d!997247) (not d!997179) (not b!3464030) (not b!3462098) (not b!3463836) (not b!3464056) (not b!3463508) (not bm!249781) (not d!997275) (not b!3462973) (not bm!249828) (not b!3462458) (not b!3463093) (not b!3464063) (not b!3464073) (not bm!249796) (not d!996663) (not b_lambda!99885) (not b!3464125))
(check-sat (not b_next!90657) (not b_next!90623) b_and!243867 b_and!243879 (not b_next!90625) (not b_next!90627) (not b_next!90617) (not b_next!90635) b_and!243855 (not b_next!90653) b_and!243885 (not b_next!90659) b_and!243871 (not b_next!90633) b_and!243859 b_and!243883 b_and!243869 b_and!243873 b_and!243865 (not b_next!90655) (not b_next!90631) b_and!243857 (not b_next!90619) b_and!243881 b_and!243851 (not b_next!90621) (not b_next!90629) b_and!243853)
