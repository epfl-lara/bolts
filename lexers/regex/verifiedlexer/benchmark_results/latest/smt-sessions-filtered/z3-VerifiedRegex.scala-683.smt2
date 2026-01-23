; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26174 () Bool)

(assert start!26174)

(declare-fun b!246927 () Bool)

(declare-fun b_free!9177 () Bool)

(declare-fun b_next!9177 () Bool)

(assert (=> b!246927 (= b_free!9177 (not b_next!9177))))

(declare-fun tp!96477 () Bool)

(declare-fun b_and!18597 () Bool)

(assert (=> b!246927 (= tp!96477 b_and!18597)))

(declare-fun b_free!9179 () Bool)

(declare-fun b_next!9179 () Bool)

(assert (=> b!246927 (= b_free!9179 (not b_next!9179))))

(declare-fun tp!96481 () Bool)

(declare-fun b_and!18599 () Bool)

(assert (=> b!246927 (= tp!96481 b_and!18599)))

(declare-fun b!246955 () Bool)

(declare-fun b_free!9181 () Bool)

(declare-fun b_next!9181 () Bool)

(assert (=> b!246955 (= b_free!9181 (not b_next!9181))))

(declare-fun tp!96471 () Bool)

(declare-fun b_and!18601 () Bool)

(assert (=> b!246955 (= tp!96471 b_and!18601)))

(declare-fun b_free!9183 () Bool)

(declare-fun b_next!9183 () Bool)

(assert (=> b!246955 (= b_free!9183 (not b_next!9183))))

(declare-fun tp!96474 () Bool)

(declare-fun b_and!18603 () Bool)

(assert (=> b!246955 (= tp!96474 b_and!18603)))

(declare-fun b!246945 () Bool)

(declare-fun b_free!9185 () Bool)

(declare-fun b_next!9185 () Bool)

(assert (=> b!246945 (= b_free!9185 (not b_next!9185))))

(declare-fun tp!96483 () Bool)

(declare-fun b_and!18605 () Bool)

(assert (=> b!246945 (= tp!96483 b_and!18605)))

(declare-fun b_free!9187 () Bool)

(declare-fun b_next!9187 () Bool)

(assert (=> b!246945 (= b_free!9187 (not b_next!9187))))

(declare-fun tp!96472 () Bool)

(declare-fun b_and!18607 () Bool)

(assert (=> b!246945 (= tp!96472 b_and!18607)))

(declare-fun bs!26484 () Bool)

(declare-fun b!246940 () Bool)

(declare-fun b!246948 () Bool)

(assert (= bs!26484 (and b!246940 b!246948)))

(declare-fun lambda!8122 () Int)

(declare-fun lambda!8121 () Int)

(assert (=> bs!26484 (not (= lambda!8122 lambda!8121))))

(declare-fun b!246970 () Bool)

(declare-fun e!153244 () Bool)

(assert (=> b!246970 (= e!153244 true)))

(declare-fun b!246969 () Bool)

(declare-fun e!153243 () Bool)

(assert (=> b!246969 (= e!153243 e!153244)))

(declare-fun b!246968 () Bool)

(declare-fun e!153242 () Bool)

(assert (=> b!246968 (= e!153242 e!153243)))

(assert (=> b!246940 e!153242))

(assert (= b!246969 b!246970))

(assert (= b!246968 b!246969))

(declare-datatypes ((List!3643 0))(
  ( (Nil!3633) (Cons!3633 (h!9030 (_ BitVec 16)) (t!35199 List!3643)) )
))
(declare-datatypes ((TokenValue!711 0))(
  ( (FloatLiteralValue!1422 (text!5422 List!3643)) (TokenValueExt!710 (__x!2909 Int)) (Broken!3555 (value!23926 List!3643)) (Object!720) (End!711) (Def!711) (Underscore!711) (Match!711) (Else!711) (Error!711) (Case!711) (If!711) (Extends!711) (Abstract!711) (Class!711) (Val!711) (DelimiterValue!1422 (del!771 List!3643)) (KeywordValue!717 (value!23927 List!3643)) (CommentValue!1422 (value!23928 List!3643)) (WhitespaceValue!1422 (value!23929 List!3643)) (IndentationValue!711 (value!23930 List!3643)) (String!4634) (Int32!711) (Broken!3556 (value!23931 List!3643)) (Boolean!712) (Unit!4409) (OperatorValue!714 (op!771 List!3643)) (IdentifierValue!1422 (value!23932 List!3643)) (IdentifierValue!1423 (value!23933 List!3643)) (WhitespaceValue!1423 (value!23934 List!3643)) (True!1422) (False!1422) (Broken!3557 (value!23935 List!3643)) (Broken!3558 (value!23936 List!3643)) (True!1423) (RightBrace!711) (RightBracket!711) (Colon!711) (Null!711) (Comma!711) (LeftBracket!711) (False!1423) (LeftBrace!711) (ImaginaryLiteralValue!711 (text!5423 List!3643)) (StringLiteralValue!2133 (value!23937 List!3643)) (EOFValue!711 (value!23938 List!3643)) (IdentValue!711 (value!23939 List!3643)) (DelimiterValue!1423 (value!23940 List!3643)) (DedentValue!711 (value!23941 List!3643)) (NewLineValue!711 (value!23942 List!3643)) (IntegerValue!2133 (value!23943 (_ BitVec 32)) (text!5424 List!3643)) (IntegerValue!2134 (value!23944 Int) (text!5425 List!3643)) (Times!711) (Or!711) (Equal!711) (Minus!711) (Broken!3559 (value!23945 List!3643)) (And!711) (Div!711) (LessEqual!711) (Mod!711) (Concat!1624) (Not!711) (Plus!711) (SpaceValue!711 (value!23946 List!3643)) (IntegerValue!2135 (value!23947 Int) (text!5426 List!3643)) (StringLiteralValue!2134 (text!5427 List!3643)) (FloatLiteralValue!1423 (text!5428 List!3643)) (BytesLiteralValue!711 (value!23948 List!3643)) (CommentValue!1423 (value!23949 List!3643)) (StringLiteralValue!2135 (value!23950 List!3643)) (ErrorTokenValue!711 (msg!772 List!3643)) )
))
(declare-datatypes ((C!2748 0))(
  ( (C!2749 (val!1260 Int)) )
))
(declare-datatypes ((List!3644 0))(
  ( (Nil!3634) (Cons!3634 (h!9031 C!2748) (t!35200 List!3644)) )
))
(declare-datatypes ((IArray!2401 0))(
  ( (IArray!2402 (innerList!1258 List!3644)) )
))
(declare-datatypes ((Conc!1200 0))(
  ( (Node!1200 (left!2979 Conc!1200) (right!3309 Conc!1200) (csize!2630 Int) (cheight!1411 Int)) (Leaf!1884 (xs!3795 IArray!2401) (csize!2631 Int)) (Empty!1200) )
))
(declare-datatypes ((BalanceConc!2408 0))(
  ( (BalanceConc!2409 (c!47086 Conc!1200)) )
))
(declare-datatypes ((TokenValueInjection!1194 0))(
  ( (TokenValueInjection!1195 (toValue!1392 Int) (toChars!1251 Int)) )
))
(declare-datatypes ((String!4635 0))(
  ( (String!4636 (value!23951 String)) )
))
(declare-datatypes ((Regex!913 0))(
  ( (ElementMatch!913 (c!47087 C!2748)) (Concat!1625 (regOne!2338 Regex!913) (regTwo!2338 Regex!913)) (EmptyExpr!913) (Star!913 (reg!1242 Regex!913)) (EmptyLang!913) (Union!913 (regOne!2339 Regex!913) (regTwo!2339 Regex!913)) )
))
(declare-datatypes ((Rule!1178 0))(
  ( (Rule!1179 (regex!689 Regex!913) (tag!897 String!4635) (isSeparator!689 Bool) (transformation!689 TokenValueInjection!1194)) )
))
(declare-datatypes ((List!3645 0))(
  ( (Nil!3635) (Cons!3635 (h!9032 Rule!1178) (t!35201 List!3645)) )
))
(declare-fun rules!1920 () List!3645)

(get-info :version)

(assert (= (and b!246940 ((_ is Cons!3635) rules!1920)) b!246968))

(declare-fun order!2673 () Int)

(declare-fun order!2675 () Int)

(declare-fun dynLambda!1769 (Int Int) Int)

(declare-fun dynLambda!1770 (Int Int) Int)

(assert (=> b!246970 (< (dynLambda!1769 order!2673 (toValue!1392 (transformation!689 (h!9032 rules!1920)))) (dynLambda!1770 order!2675 lambda!8122))))

(declare-fun order!2677 () Int)

(declare-fun dynLambda!1771 (Int Int) Int)

(assert (=> b!246970 (< (dynLambda!1771 order!2677 (toChars!1251 (transformation!689 (h!9032 rules!1920)))) (dynLambda!1770 order!2675 lambda!8122))))

(assert (=> b!246940 true))

(declare-fun e!153221 () Bool)

(assert (=> b!246927 (= e!153221 (and tp!96477 tp!96481))))

(declare-fun b!246928 () Bool)

(declare-fun res!114290 () Bool)

(declare-fun e!153226 () Bool)

(assert (=> b!246928 (=> res!114290 e!153226)))

(declare-fun lt!100223 () List!3644)

(declare-datatypes ((LexerInterface!575 0))(
  ( (LexerInterfaceExt!572 (__x!2910 Int)) (Lexer!573) )
))
(declare-fun thiss!17480 () LexerInterface!575)

(declare-datatypes ((Token!1122 0))(
  ( (Token!1123 (value!23952 TokenValue!711) (rule!1266 Rule!1178) (size!2879 Int) (originalCharacters!732 List!3644)) )
))
(declare-datatypes ((List!3646 0))(
  ( (Nil!3636) (Cons!3636 (h!9033 Token!1122) (t!35202 List!3646)) )
))
(declare-datatypes ((IArray!2403 0))(
  ( (IArray!2404 (innerList!1259 List!3646)) )
))
(declare-datatypes ((Conc!1201 0))(
  ( (Node!1201 (left!2980 Conc!1201) (right!3310 Conc!1201) (csize!2632 Int) (cheight!1412 Int)) (Leaf!1885 (xs!3796 IArray!2403) (csize!2633 Int)) (Empty!1201) )
))
(declare-datatypes ((BalanceConc!2410 0))(
  ( (BalanceConc!2411 (c!47088 Conc!1201)) )
))
(declare-fun isEmpty!2221 (BalanceConc!2410) Bool)

(declare-datatypes ((tuple2!4046 0))(
  ( (tuple2!4047 (_1!2239 BalanceConc!2410) (_2!2239 BalanceConc!2408)) )
))
(declare-fun lex!375 (LexerInterface!575 List!3645 BalanceConc!2408) tuple2!4046)

(declare-fun seqFromList!755 (List!3644) BalanceConc!2408)

(assert (=> b!246928 (= res!114290 (isEmpty!2221 (_1!2239 (lex!375 thiss!17480 rules!1920 (seqFromList!755 lt!100223)))))))

(declare-fun b!246929 () Bool)

(declare-fun e!153220 () Bool)

(declare-fun e!153218 () Bool)

(declare-fun tp!96482 () Bool)

(assert (=> b!246929 (= e!153220 (and e!153218 tp!96482))))

(declare-fun b!246930 () Bool)

(declare-fun e!153212 () Bool)

(declare-datatypes ((tuple2!4048 0))(
  ( (tuple2!4049 (_1!2240 Token!1122) (_2!2240 List!3644)) )
))
(declare-datatypes ((Option!740 0))(
  ( (None!739) (Some!739 (v!14506 tuple2!4048)) )
))
(declare-fun lt!100241 () Option!740)

(declare-fun tokens!465 () List!3646)

(declare-fun get!1190 (Option!740) tuple2!4048)

(declare-fun head!850 (List!3646) Token!1122)

(assert (=> b!246930 (= e!153212 (= (_1!2240 (get!1190 lt!100241)) (head!850 tokens!465)))))

(declare-fun b!246931 () Bool)

(declare-fun e!153216 () Bool)

(declare-fun e!153234 () Bool)

(assert (=> b!246931 (= e!153216 e!153234)))

(declare-fun res!114309 () Bool)

(assert (=> b!246931 (=> res!114309 e!153234)))

(declare-fun lt!100232 () Bool)

(assert (=> b!246931 (= res!114309 lt!100232)))

(declare-fun e!153225 () Bool)

(assert (=> b!246931 e!153225))

(declare-fun res!114296 () Bool)

(assert (=> b!246931 (=> (not res!114296) (not e!153225))))

(declare-fun lt!100222 () tuple2!4048)

(assert (=> b!246931 (= res!114296 (= (_1!2240 lt!100222) (h!9033 tokens!465)))))

(declare-fun lt!100231 () Option!740)

(assert (=> b!246931 (= lt!100222 (get!1190 lt!100231))))

(declare-fun isDefined!591 (Option!740) Bool)

(assert (=> b!246931 (isDefined!591 lt!100231)))

(declare-fun maxPrefix!305 (LexerInterface!575 List!3645 List!3644) Option!740)

(assert (=> b!246931 (= lt!100231 (maxPrefix!305 thiss!17480 rules!1920 lt!100223))))

(declare-fun b!246932 () Bool)

(declare-fun matchR!251 (Regex!913 List!3644) Bool)

(assert (=> b!246932 (= e!153225 (matchR!251 (regex!689 (rule!1266 (h!9033 tokens!465))) lt!100223))))

(declare-fun b!246933 () Bool)

(declare-fun res!114302 () Bool)

(declare-fun e!153210 () Bool)

(assert (=> b!246933 (=> (not res!114302) (not e!153210))))

(declare-fun separatorToken!170 () Token!1122)

(declare-fun rulesProduceIndividualToken!324 (LexerInterface!575 List!3645 Token!1122) Bool)

(assert (=> b!246933 (= res!114302 (rulesProduceIndividualToken!324 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun res!114308 () Bool)

(declare-fun e!153223 () Bool)

(assert (=> start!26174 (=> (not res!114308) (not e!153223))))

(assert (=> start!26174 (= res!114308 ((_ is Lexer!573) thiss!17480))))

(assert (=> start!26174 e!153223))

(assert (=> start!26174 true))

(assert (=> start!26174 e!153220))

(declare-fun e!153230 () Bool)

(declare-fun inv!4487 (Token!1122) Bool)

(assert (=> start!26174 (and (inv!4487 separatorToken!170) e!153230)))

(declare-fun e!153209 () Bool)

(assert (=> start!26174 e!153209))

(declare-fun b!246934 () Bool)

(declare-fun res!114305 () Bool)

(assert (=> b!246934 (=> (not res!114305) (not e!153210))))

(assert (=> b!246934 (= res!114305 ((_ is Cons!3636) tokens!465))))

(declare-fun b!246935 () Bool)

(declare-fun res!114291 () Bool)

(assert (=> b!246935 (=> (not res!114291) (not e!153225))))

(declare-fun isEmpty!2222 (List!3644) Bool)

(assert (=> b!246935 (= res!114291 (isEmpty!2222 (_2!2240 lt!100222)))))

(declare-fun lt!100224 () List!3644)

(declare-fun b!246936 () Bool)

(assert (=> b!246936 (= e!153234 (isDefined!591 (maxPrefix!305 thiss!17480 rules!1920 lt!100224)))))

(declare-fun lt!100228 () List!3644)

(declare-fun isPrefix!373 (List!3644 List!3644) Bool)

(declare-fun ++!928 (List!3644 List!3644) List!3644)

(assert (=> b!246936 (isPrefix!373 lt!100223 (++!928 lt!100223 lt!100228))))

(declare-datatypes ((Unit!4410 0))(
  ( (Unit!4411) )
))
(declare-fun lt!100226 () Unit!4410)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!268 (List!3644 List!3644) Unit!4410)

(assert (=> b!246936 (= lt!100226 (lemmaConcatTwoListThenFirstIsPrefix!268 lt!100223 lt!100228))))

(declare-fun lt!100221 () BalanceConc!2408)

(declare-fun filter!71 (List!3646 Int) List!3646)

(declare-fun list!1432 (BalanceConc!2410) List!3646)

(assert (=> b!246936 (= (filter!71 (list!1432 (_1!2239 (lex!375 thiss!17480 rules!1920 lt!100221))) lambda!8121) (t!35202 tokens!465))))

(declare-fun lt!100236 () Unit!4410)

(declare-fun theoremInvertabilityFromTokensSepTokenWhenNeeded!62 (LexerInterface!575 List!3645 List!3646 Token!1122) Unit!4410)

(assert (=> b!246936 (= lt!100236 (theoremInvertabilityFromTokensSepTokenWhenNeeded!62 thiss!17480 rules!1920 (t!35202 tokens!465) separatorToken!170))))

(declare-fun e!153219 () Bool)

(assert (=> b!246936 e!153219))

(declare-fun res!114298 () Bool)

(assert (=> b!246936 (=> res!114298 e!153219)))

(declare-fun isEmpty!2223 (List!3646) Bool)

(assert (=> b!246936 (= res!114298 (isEmpty!2223 tokens!465))))

(declare-fun lt!100227 () Unit!4410)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!144 (LexerInterface!575 List!3645 List!3646 Token!1122) Unit!4410)

(assert (=> b!246936 (= lt!100227 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!144 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!246937 () Bool)

(assert (=> b!246937 (= e!153223 e!153210)))

(declare-fun res!114310 () Bool)

(assert (=> b!246937 (=> (not res!114310) (not e!153210))))

(declare-fun lt!100220 () BalanceConc!2410)

(declare-fun rulesProduceEachTokenIndividually!367 (LexerInterface!575 List!3645 BalanceConc!2410) Bool)

(assert (=> b!246937 (= res!114310 (rulesProduceEachTokenIndividually!367 thiss!17480 rules!1920 lt!100220))))

(declare-fun seqFromList!756 (List!3646) BalanceConc!2410)

(assert (=> b!246937 (= lt!100220 (seqFromList!756 tokens!465))))

(declare-fun b!246938 () Bool)

(declare-fun e!153217 () Bool)

(assert (=> b!246938 (= e!153210 e!153217)))

(declare-fun res!114293 () Bool)

(assert (=> b!246938 (=> (not res!114293) (not e!153217))))

(declare-fun lt!100239 () List!3644)

(assert (=> b!246938 (= res!114293 (= lt!100224 lt!100239))))

(declare-fun list!1433 (BalanceConc!2408) List!3644)

(declare-fun printWithSeparatorTokenWhenNeededRec!258 (LexerInterface!575 List!3645 BalanceConc!2410 Token!1122 Int) BalanceConc!2408)

(assert (=> b!246938 (= lt!100239 (list!1433 (printWithSeparatorTokenWhenNeededRec!258 thiss!17480 rules!1920 lt!100220 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!268 (LexerInterface!575 List!3645 List!3646 Token!1122) List!3644)

(assert (=> b!246938 (= lt!100224 (printWithSeparatorTokenWhenNeededList!268 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!246939 () Bool)

(declare-fun res!114297 () Bool)

(assert (=> b!246939 (=> (not res!114297) (not e!153210))))

(declare-fun sepAndNonSepRulesDisjointChars!278 (List!3645 List!3645) Bool)

(assert (=> b!246939 (= res!114297 (sepAndNonSepRulesDisjointChars!278 rules!1920 rules!1920))))

(assert (=> b!246940 (= e!153226 e!153216)))

(declare-fun res!114294 () Bool)

(assert (=> b!246940 (=> res!114294 e!153216)))

(declare-datatypes ((tuple2!4050 0))(
  ( (tuple2!4051 (_1!2241 Token!1122) (_2!2241 BalanceConc!2408)) )
))
(declare-datatypes ((Option!741 0))(
  ( (None!740) (Some!740 (v!14507 tuple2!4050)) )
))
(declare-fun isDefined!592 (Option!741) Bool)

(declare-fun maxPrefixZipperSequence!268 (LexerInterface!575 List!3645 BalanceConc!2408) Option!741)

(assert (=> b!246940 (= res!114294 (not (isDefined!592 (maxPrefixZipperSequence!268 thiss!17480 rules!1920 (seqFromList!755 (originalCharacters!732 (h!9033 tokens!465)))))))))

(declare-fun lt!100225 () Unit!4410)

(declare-fun forallContained!256 (List!3646 Int Token!1122) Unit!4410)

(assert (=> b!246940 (= lt!100225 (forallContained!256 tokens!465 lambda!8122 (h!9033 tokens!465)))))

(assert (=> b!246940 (= lt!100223 (originalCharacters!732 (h!9033 tokens!465)))))

(declare-fun e!153228 () Bool)

(declare-fun b!246941 () Bool)

(assert (=> b!246941 (= e!153228 (not (= lt!100224 (++!928 lt!100223 lt!100228))))))

(declare-fun b!246942 () Bool)

(declare-fun res!114311 () Bool)

(assert (=> b!246942 (=> (not res!114311) (not e!153217))))

(assert (=> b!246942 (= res!114311 (= (list!1433 (seqFromList!755 lt!100224)) lt!100239))))

(declare-fun b!246943 () Bool)

(declare-fun e!153224 () Bool)

(declare-fun tp!96476 () Bool)

(declare-fun inv!4484 (String!4635) Bool)

(declare-fun inv!4488 (TokenValueInjection!1194) Bool)

(assert (=> b!246943 (= e!153224 (and tp!96476 (inv!4484 (tag!897 (rule!1266 (h!9033 tokens!465)))) (inv!4488 (transformation!689 (rule!1266 (h!9033 tokens!465)))) e!153221))))

(declare-fun b!246944 () Bool)

(declare-fun e!153222 () Bool)

(declare-fun e!153211 () Bool)

(declare-fun tp!96479 () Bool)

(assert (=> b!246944 (= e!153222 (and tp!96479 (inv!4484 (tag!897 (rule!1266 separatorToken!170))) (inv!4488 (transformation!689 (rule!1266 separatorToken!170))) e!153211))))

(declare-fun e!153213 () Bool)

(assert (=> b!246945 (= e!153213 (and tp!96483 tp!96472))))

(declare-fun b!246946 () Bool)

(assert (=> b!246946 (= e!153219 e!153212)))

(declare-fun res!114299 () Bool)

(assert (=> b!246946 (=> (not res!114299) (not e!153212))))

(assert (=> b!246946 (= res!114299 (isDefined!591 lt!100241))))

(assert (=> b!246946 (= lt!100241 (maxPrefix!305 thiss!17480 rules!1920 lt!100224))))

(declare-fun b!246947 () Bool)

(declare-fun res!114312 () Bool)

(assert (=> b!246947 (=> (not res!114312) (not e!153223))))

(declare-fun rulesInvariant!541 (LexerInterface!575 List!3645) Bool)

(assert (=> b!246947 (= res!114312 (rulesInvariant!541 thiss!17480 rules!1920))))

(declare-fun res!114295 () Bool)

(assert (=> b!246948 (=> (not res!114295) (not e!153210))))

(declare-fun forall!849 (List!3646 Int) Bool)

(assert (=> b!246948 (= res!114295 (forall!849 tokens!465 lambda!8121))))

(declare-fun b!246949 () Bool)

(declare-fun e!153227 () Bool)

(declare-fun e!153232 () Bool)

(assert (=> b!246949 (= e!153227 e!153232)))

(declare-fun res!114292 () Bool)

(assert (=> b!246949 (=> res!114292 e!153232)))

(assert (=> b!246949 (= res!114292 e!153228)))

(declare-fun res!114304 () Bool)

(assert (=> b!246949 (=> (not res!114304) (not e!153228))))

(assert (=> b!246949 (= res!114304 (not lt!100232))))

(declare-fun lt!100237 () List!3644)

(assert (=> b!246949 (= lt!100232 (= lt!100224 lt!100237))))

(declare-fun b!246950 () Bool)

(declare-fun tp!96475 () Bool)

(declare-fun e!153215 () Bool)

(assert (=> b!246950 (= e!153209 (and (inv!4487 (h!9033 tokens!465)) e!153215 tp!96475))))

(declare-fun b!246951 () Bool)

(assert (=> b!246951 (= e!153232 e!153226)))

(declare-fun res!114301 () Bool)

(assert (=> b!246951 (=> res!114301 e!153226)))

(declare-fun lt!100233 () List!3644)

(declare-fun lt!100229 () List!3644)

(assert (=> b!246951 (= res!114301 (or (not (= lt!100229 lt!100233)) (not (= lt!100233 lt!100223)) (not (= lt!100229 lt!100223))))))

(declare-fun printList!259 (LexerInterface!575 List!3646) List!3644)

(assert (=> b!246951 (= lt!100233 (printList!259 thiss!17480 (Cons!3636 (h!9033 tokens!465) Nil!3636)))))

(declare-fun lt!100240 () BalanceConc!2408)

(assert (=> b!246951 (= lt!100229 (list!1433 lt!100240))))

(declare-fun lt!100234 () BalanceConc!2410)

(declare-fun printTailRec!269 (LexerInterface!575 BalanceConc!2410 Int BalanceConc!2408) BalanceConc!2408)

(assert (=> b!246951 (= lt!100240 (printTailRec!269 thiss!17480 lt!100234 0 (BalanceConc!2409 Empty!1200)))))

(declare-fun print!306 (LexerInterface!575 BalanceConc!2410) BalanceConc!2408)

(assert (=> b!246951 (= lt!100240 (print!306 thiss!17480 lt!100234))))

(declare-fun singletonSeq!241 (Token!1122) BalanceConc!2410)

(assert (=> b!246951 (= lt!100234 (singletonSeq!241 (h!9033 tokens!465)))))

(declare-fun b!246952 () Bool)

(declare-fun tp!96478 () Bool)

(assert (=> b!246952 (= e!153218 (and tp!96478 (inv!4484 (tag!897 (h!9032 rules!1920))) (inv!4488 (transformation!689 (h!9032 rules!1920))) e!153213))))

(declare-fun b!246953 () Bool)

(assert (=> b!246953 (= e!153217 (not e!153227))))

(declare-fun res!114303 () Bool)

(assert (=> b!246953 (=> res!114303 e!153227)))

(assert (=> b!246953 (= res!114303 (not (= lt!100228 (list!1433 lt!100221))))))

(assert (=> b!246953 (= lt!100221 (printWithSeparatorTokenWhenNeededRec!258 thiss!17480 rules!1920 (seqFromList!756 (t!35202 tokens!465)) separatorToken!170 0))))

(declare-fun lt!100230 () List!3644)

(assert (=> b!246953 (= lt!100230 lt!100237)))

(declare-fun lt!100242 () List!3644)

(assert (=> b!246953 (= lt!100237 (++!928 lt!100223 lt!100242))))

(declare-fun lt!100238 () List!3644)

(assert (=> b!246953 (= lt!100230 (++!928 (++!928 lt!100223 lt!100238) lt!100228))))

(declare-fun lt!100235 () Unit!4410)

(declare-fun lemmaConcatAssociativity!394 (List!3644 List!3644 List!3644) Unit!4410)

(assert (=> b!246953 (= lt!100235 (lemmaConcatAssociativity!394 lt!100223 lt!100238 lt!100228))))

(declare-fun charsOf!344 (Token!1122) BalanceConc!2408)

(assert (=> b!246953 (= lt!100223 (list!1433 (charsOf!344 (h!9033 tokens!465))))))

(assert (=> b!246953 (= lt!100242 (++!928 lt!100238 lt!100228))))

(assert (=> b!246953 (= lt!100228 (printWithSeparatorTokenWhenNeededList!268 thiss!17480 rules!1920 (t!35202 tokens!465) separatorToken!170))))

(assert (=> b!246953 (= lt!100238 (list!1433 (charsOf!344 separatorToken!170)))))

(declare-fun b!246954 () Bool)

(declare-fun res!114306 () Bool)

(assert (=> b!246954 (=> (not res!114306) (not e!153223))))

(declare-fun isEmpty!2224 (List!3645) Bool)

(assert (=> b!246954 (= res!114306 (not (isEmpty!2224 rules!1920)))))

(assert (=> b!246955 (= e!153211 (and tp!96471 tp!96474))))

(declare-fun b!246956 () Bool)

(declare-fun res!114300 () Bool)

(assert (=> b!246956 (=> (not res!114300) (not e!153210))))

(assert (=> b!246956 (= res!114300 (isSeparator!689 (rule!1266 separatorToken!170)))))

(declare-fun tp!96473 () Bool)

(declare-fun b!246957 () Bool)

(declare-fun inv!21 (TokenValue!711) Bool)

(assert (=> b!246957 (= e!153215 (and (inv!21 (value!23952 (h!9033 tokens!465))) e!153224 tp!96473))))

(declare-fun b!246958 () Bool)

(declare-fun res!114307 () Bool)

(assert (=> b!246958 (=> res!114307 e!153226)))

(assert (=> b!246958 (= res!114307 (not (rulesProduceIndividualToken!324 thiss!17480 rules!1920 (h!9033 tokens!465))))))

(declare-fun b!246959 () Bool)

(declare-fun tp!96480 () Bool)

(assert (=> b!246959 (= e!153230 (and (inv!21 (value!23952 separatorToken!170)) e!153222 tp!96480))))

(assert (= (and start!26174 res!114308) b!246954))

(assert (= (and b!246954 res!114306) b!246947))

(assert (= (and b!246947 res!114312) b!246937))

(assert (= (and b!246937 res!114310) b!246933))

(assert (= (and b!246933 res!114302) b!246956))

(assert (= (and b!246956 res!114300) b!246948))

(assert (= (and b!246948 res!114295) b!246939))

(assert (= (and b!246939 res!114297) b!246934))

(assert (= (and b!246934 res!114305) b!246938))

(assert (= (and b!246938 res!114293) b!246942))

(assert (= (and b!246942 res!114311) b!246953))

(assert (= (and b!246953 (not res!114303)) b!246949))

(assert (= (and b!246949 res!114304) b!246941))

(assert (= (and b!246949 (not res!114292)) b!246951))

(assert (= (and b!246951 (not res!114301)) b!246958))

(assert (= (and b!246958 (not res!114307)) b!246928))

(assert (= (and b!246928 (not res!114290)) b!246940))

(assert (= (and b!246940 (not res!114294)) b!246931))

(assert (= (and b!246931 res!114296) b!246935))

(assert (= (and b!246935 res!114291) b!246932))

(assert (= (and b!246931 (not res!114309)) b!246936))

(assert (= (and b!246936 (not res!114298)) b!246946))

(assert (= (and b!246946 res!114299) b!246930))

(assert (= b!246952 b!246945))

(assert (= b!246929 b!246952))

(assert (= (and start!26174 ((_ is Cons!3635) rules!1920)) b!246929))

(assert (= b!246944 b!246955))

(assert (= b!246959 b!246944))

(assert (= start!26174 b!246959))

(assert (= b!246943 b!246927))

(assert (= b!246957 b!246943))

(assert (= b!246950 b!246957))

(assert (= (and start!26174 ((_ is Cons!3636) tokens!465)) b!246950))

(declare-fun m!302117 () Bool)

(assert (=> b!246959 m!302117))

(declare-fun m!302119 () Bool)

(assert (=> b!246948 m!302119))

(declare-fun m!302121 () Bool)

(assert (=> b!246939 m!302121))

(declare-fun m!302123 () Bool)

(assert (=> b!246943 m!302123))

(declare-fun m!302125 () Bool)

(assert (=> b!246943 m!302125))

(declare-fun m!302127 () Bool)

(assert (=> b!246942 m!302127))

(assert (=> b!246942 m!302127))

(declare-fun m!302129 () Bool)

(assert (=> b!246942 m!302129))

(declare-fun m!302131 () Bool)

(assert (=> b!246951 m!302131))

(declare-fun m!302133 () Bool)

(assert (=> b!246951 m!302133))

(declare-fun m!302135 () Bool)

(assert (=> b!246951 m!302135))

(declare-fun m!302137 () Bool)

(assert (=> b!246951 m!302137))

(declare-fun m!302139 () Bool)

(assert (=> b!246951 m!302139))

(declare-fun m!302141 () Bool)

(assert (=> b!246950 m!302141))

(declare-fun m!302143 () Bool)

(assert (=> b!246938 m!302143))

(assert (=> b!246938 m!302143))

(declare-fun m!302145 () Bool)

(assert (=> b!246938 m!302145))

(declare-fun m!302147 () Bool)

(assert (=> b!246938 m!302147))

(declare-fun m!302149 () Bool)

(assert (=> b!246930 m!302149))

(declare-fun m!302151 () Bool)

(assert (=> b!246930 m!302151))

(declare-fun m!302153 () Bool)

(assert (=> b!246944 m!302153))

(declare-fun m!302155 () Bool)

(assert (=> b!246944 m!302155))

(declare-fun m!302157 () Bool)

(assert (=> b!246937 m!302157))

(declare-fun m!302159 () Bool)

(assert (=> b!246937 m!302159))

(declare-fun m!302161 () Bool)

(assert (=> b!246941 m!302161))

(declare-fun m!302163 () Bool)

(assert (=> b!246952 m!302163))

(declare-fun m!302165 () Bool)

(assert (=> b!246952 m!302165))

(declare-fun m!302167 () Bool)

(assert (=> b!246940 m!302167))

(assert (=> b!246940 m!302167))

(declare-fun m!302169 () Bool)

(assert (=> b!246940 m!302169))

(assert (=> b!246940 m!302169))

(declare-fun m!302171 () Bool)

(assert (=> b!246940 m!302171))

(declare-fun m!302173 () Bool)

(assert (=> b!246940 m!302173))

(declare-fun m!302175 () Bool)

(assert (=> b!246946 m!302175))

(declare-fun m!302177 () Bool)

(assert (=> b!246946 m!302177))

(declare-fun m!302179 () Bool)

(assert (=> b!246947 m!302179))

(declare-fun m!302181 () Bool)

(assert (=> b!246954 m!302181))

(declare-fun m!302183 () Bool)

(assert (=> b!246932 m!302183))

(declare-fun m!302185 () Bool)

(assert (=> b!246953 m!302185))

(declare-fun m!302187 () Bool)

(assert (=> b!246953 m!302187))

(declare-fun m!302189 () Bool)

(assert (=> b!246953 m!302189))

(declare-fun m!302191 () Bool)

(assert (=> b!246953 m!302191))

(declare-fun m!302193 () Bool)

(assert (=> b!246953 m!302193))

(declare-fun m!302195 () Bool)

(assert (=> b!246953 m!302195))

(declare-fun m!302197 () Bool)

(assert (=> b!246953 m!302197))

(declare-fun m!302199 () Bool)

(assert (=> b!246953 m!302199))

(declare-fun m!302201 () Bool)

(assert (=> b!246953 m!302201))

(declare-fun m!302203 () Bool)

(assert (=> b!246953 m!302203))

(assert (=> b!246953 m!302199))

(declare-fun m!302205 () Bool)

(assert (=> b!246953 m!302205))

(assert (=> b!246953 m!302189))

(declare-fun m!302207 () Bool)

(assert (=> b!246953 m!302207))

(assert (=> b!246953 m!302191))

(assert (=> b!246953 m!302195))

(declare-fun m!302209 () Bool)

(assert (=> b!246953 m!302209))

(declare-fun m!302211 () Bool)

(assert (=> b!246957 m!302211))

(declare-fun m!302213 () Bool)

(assert (=> b!246935 m!302213))

(declare-fun m!302215 () Bool)

(assert (=> start!26174 m!302215))

(declare-fun m!302217 () Bool)

(assert (=> b!246958 m!302217))

(declare-fun m!302219 () Bool)

(assert (=> b!246933 m!302219))

(declare-fun m!302221 () Bool)

(assert (=> b!246928 m!302221))

(assert (=> b!246928 m!302221))

(declare-fun m!302223 () Bool)

(assert (=> b!246928 m!302223))

(declare-fun m!302225 () Bool)

(assert (=> b!246928 m!302225))

(declare-fun m!302227 () Bool)

(assert (=> b!246936 m!302227))

(assert (=> b!246936 m!302161))

(declare-fun m!302229 () Bool)

(assert (=> b!246936 m!302229))

(declare-fun m!302231 () Bool)

(assert (=> b!246936 m!302231))

(declare-fun m!302233 () Bool)

(assert (=> b!246936 m!302233))

(declare-fun m!302235 () Bool)

(assert (=> b!246936 m!302235))

(declare-fun m!302237 () Bool)

(assert (=> b!246936 m!302237))

(assert (=> b!246936 m!302177))

(declare-fun m!302239 () Bool)

(assert (=> b!246936 m!302239))

(declare-fun m!302241 () Bool)

(assert (=> b!246936 m!302241))

(assert (=> b!246936 m!302177))

(assert (=> b!246936 m!302161))

(assert (=> b!246936 m!302241))

(declare-fun m!302243 () Bool)

(assert (=> b!246936 m!302243))

(declare-fun m!302245 () Bool)

(assert (=> b!246931 m!302245))

(declare-fun m!302247 () Bool)

(assert (=> b!246931 m!302247))

(declare-fun m!302249 () Bool)

(assert (=> b!246931 m!302249))

(check-sat b_and!18605 (not b!246951) (not b!246946) (not b!246941) (not b!246940) (not b!246931) (not b!246952) (not b_next!9187) (not b!246928) (not b!246944) (not b!246957) (not b!246947) (not b!246932) (not b!246948) (not b!246958) (not b!246930) b_and!18597 (not b!246943) (not b_next!9179) (not b_next!9177) (not b_next!9185) b_and!18601 (not b!246954) (not b!246929) b_and!18599 b_and!18607 (not b!246942) (not b!246938) (not b!246959) (not b_next!9183) (not b!246937) (not b!246950) (not b!246939) (not b!246935) (not b!246968) b_and!18603 (not b!246933) (not start!26174) (not b!246936) (not b_next!9181) (not b!246953))
(check-sat b_and!18605 b_and!18597 b_and!18599 b_and!18607 (not b_next!9187) (not b_next!9183) b_and!18603 (not b_next!9181) (not b_next!9179) (not b_next!9177) (not b_next!9185) b_and!18601)
(get-model)

(declare-fun d!69570 () Bool)

(assert (=> d!69570 (= (inv!4484 (tag!897 (rule!1266 separatorToken!170))) (= (mod (str.len (value!23951 (tag!897 (rule!1266 separatorToken!170)))) 2) 0))))

(assert (=> b!246944 d!69570))

(declare-fun d!69572 () Bool)

(declare-fun res!114334 () Bool)

(declare-fun e!153253 () Bool)

(assert (=> d!69572 (=> (not res!114334) (not e!153253))))

(declare-fun semiInverseModEq!233 (Int Int) Bool)

(assert (=> d!69572 (= res!114334 (semiInverseModEq!233 (toChars!1251 (transformation!689 (rule!1266 separatorToken!170))) (toValue!1392 (transformation!689 (rule!1266 separatorToken!170)))))))

(assert (=> d!69572 (= (inv!4488 (transformation!689 (rule!1266 separatorToken!170))) e!153253)))

(declare-fun b!246984 () Bool)

(declare-fun equivClasses!216 (Int Int) Bool)

(assert (=> b!246984 (= e!153253 (equivClasses!216 (toChars!1251 (transformation!689 (rule!1266 separatorToken!170))) (toValue!1392 (transformation!689 (rule!1266 separatorToken!170)))))))

(assert (= (and d!69572 res!114334) b!246984))

(declare-fun m!302273 () Bool)

(assert (=> d!69572 m!302273))

(declare-fun m!302275 () Bool)

(assert (=> b!246984 m!302275))

(assert (=> b!246944 d!69572))

(declare-fun d!69574 () Bool)

(declare-fun isEmpty!2228 (Option!740) Bool)

(assert (=> d!69574 (= (isDefined!591 lt!100241) (not (isEmpty!2228 lt!100241)))))

(declare-fun bs!26486 () Bool)

(assert (= bs!26486 d!69574))

(declare-fun m!302277 () Bool)

(assert (=> bs!26486 m!302277))

(assert (=> b!246946 d!69574))

(declare-fun b!247030 () Bool)

(declare-fun res!114371 () Bool)

(declare-fun e!153282 () Bool)

(assert (=> b!247030 (=> (not res!114371) (not e!153282))))

(declare-fun lt!100268 () Option!740)

(assert (=> b!247030 (= res!114371 (matchR!251 (regex!689 (rule!1266 (_1!2240 (get!1190 lt!100268)))) (list!1433 (charsOf!344 (_1!2240 (get!1190 lt!100268))))))))

(declare-fun b!247031 () Bool)

(declare-fun res!114376 () Bool)

(assert (=> b!247031 (=> (not res!114376) (not e!153282))))

(assert (=> b!247031 (= res!114376 (= (++!928 (list!1433 (charsOf!344 (_1!2240 (get!1190 lt!100268)))) (_2!2240 (get!1190 lt!100268))) lt!100224))))

(declare-fun b!247032 () Bool)

(declare-fun res!114370 () Bool)

(assert (=> b!247032 (=> (not res!114370) (not e!153282))))

(declare-fun size!2884 (List!3644) Int)

(assert (=> b!247032 (= res!114370 (< (size!2884 (_2!2240 (get!1190 lt!100268))) (size!2884 lt!100224)))))

(declare-fun bm!12956 () Bool)

(declare-fun call!12961 () Option!740)

(declare-fun maxPrefixOneRule!125 (LexerInterface!575 Rule!1178 List!3644) Option!740)

(assert (=> bm!12956 (= call!12961 (maxPrefixOneRule!125 thiss!17480 (h!9032 rules!1920) lt!100224))))

(declare-fun b!247033 () Bool)

(declare-fun e!153281 () Option!740)

(assert (=> b!247033 (= e!153281 call!12961)))

(declare-fun b!247034 () Bool)

(declare-fun lt!100265 () Option!740)

(declare-fun lt!100267 () Option!740)

(assert (=> b!247034 (= e!153281 (ite (and ((_ is None!739) lt!100265) ((_ is None!739) lt!100267)) None!739 (ite ((_ is None!739) lt!100267) lt!100265 (ite ((_ is None!739) lt!100265) lt!100267 (ite (>= (size!2879 (_1!2240 (v!14506 lt!100265))) (size!2879 (_1!2240 (v!14506 lt!100267)))) lt!100265 lt!100267)))))))

(assert (=> b!247034 (= lt!100265 call!12961)))

(assert (=> b!247034 (= lt!100267 (maxPrefix!305 thiss!17480 (t!35201 rules!1920) lt!100224))))

(declare-fun d!69576 () Bool)

(declare-fun e!153283 () Bool)

(assert (=> d!69576 e!153283))

(declare-fun res!114375 () Bool)

(assert (=> d!69576 (=> res!114375 e!153283)))

(assert (=> d!69576 (= res!114375 (isEmpty!2228 lt!100268))))

(assert (=> d!69576 (= lt!100268 e!153281)))

(declare-fun c!47094 () Bool)

(assert (=> d!69576 (= c!47094 (and ((_ is Cons!3635) rules!1920) ((_ is Nil!3635) (t!35201 rules!1920))))))

(declare-fun lt!100269 () Unit!4410)

(declare-fun lt!100266 () Unit!4410)

(assert (=> d!69576 (= lt!100269 lt!100266)))

(assert (=> d!69576 (isPrefix!373 lt!100224 lt!100224)))

(declare-fun lemmaIsPrefixRefl!191 (List!3644 List!3644) Unit!4410)

(assert (=> d!69576 (= lt!100266 (lemmaIsPrefixRefl!191 lt!100224 lt!100224))))

(declare-fun rulesValidInductive!182 (LexerInterface!575 List!3645) Bool)

(assert (=> d!69576 (rulesValidInductive!182 thiss!17480 rules!1920)))

(assert (=> d!69576 (= (maxPrefix!305 thiss!17480 rules!1920 lt!100224) lt!100268)))

(declare-fun b!247035 () Bool)

(declare-fun contains!670 (List!3645 Rule!1178) Bool)

(assert (=> b!247035 (= e!153282 (contains!670 rules!1920 (rule!1266 (_1!2240 (get!1190 lt!100268)))))))

(declare-fun b!247036 () Bool)

(assert (=> b!247036 (= e!153283 e!153282)))

(declare-fun res!114372 () Bool)

(assert (=> b!247036 (=> (not res!114372) (not e!153282))))

(assert (=> b!247036 (= res!114372 (isDefined!591 lt!100268))))

(declare-fun b!247037 () Bool)

(declare-fun res!114373 () Bool)

(assert (=> b!247037 (=> (not res!114373) (not e!153282))))

(assert (=> b!247037 (= res!114373 (= (list!1433 (charsOf!344 (_1!2240 (get!1190 lt!100268)))) (originalCharacters!732 (_1!2240 (get!1190 lt!100268)))))))

(declare-fun b!247038 () Bool)

(declare-fun res!114374 () Bool)

(assert (=> b!247038 (=> (not res!114374) (not e!153282))))

(declare-fun apply!684 (TokenValueInjection!1194 BalanceConc!2408) TokenValue!711)

(assert (=> b!247038 (= res!114374 (= (value!23952 (_1!2240 (get!1190 lt!100268))) (apply!684 (transformation!689 (rule!1266 (_1!2240 (get!1190 lt!100268)))) (seqFromList!755 (originalCharacters!732 (_1!2240 (get!1190 lt!100268)))))))))

(assert (= (and d!69576 c!47094) b!247033))

(assert (= (and d!69576 (not c!47094)) b!247034))

(assert (= (or b!247033 b!247034) bm!12956))

(assert (= (and d!69576 (not res!114375)) b!247036))

(assert (= (and b!247036 res!114372) b!247037))

(assert (= (and b!247037 res!114373) b!247032))

(assert (= (and b!247032 res!114370) b!247031))

(assert (= (and b!247031 res!114376) b!247038))

(assert (= (and b!247038 res!114374) b!247030))

(assert (= (and b!247030 res!114371) b!247035))

(declare-fun m!302313 () Bool)

(assert (=> bm!12956 m!302313))

(declare-fun m!302315 () Bool)

(assert (=> b!247038 m!302315))

(declare-fun m!302317 () Bool)

(assert (=> b!247038 m!302317))

(assert (=> b!247038 m!302317))

(declare-fun m!302319 () Bool)

(assert (=> b!247038 m!302319))

(assert (=> b!247037 m!302315))

(declare-fun m!302321 () Bool)

(assert (=> b!247037 m!302321))

(assert (=> b!247037 m!302321))

(declare-fun m!302323 () Bool)

(assert (=> b!247037 m!302323))

(assert (=> b!247032 m!302315))

(declare-fun m!302325 () Bool)

(assert (=> b!247032 m!302325))

(declare-fun m!302327 () Bool)

(assert (=> b!247032 m!302327))

(declare-fun m!302329 () Bool)

(assert (=> b!247036 m!302329))

(declare-fun m!302331 () Bool)

(assert (=> d!69576 m!302331))

(declare-fun m!302333 () Bool)

(assert (=> d!69576 m!302333))

(declare-fun m!302335 () Bool)

(assert (=> d!69576 m!302335))

(declare-fun m!302337 () Bool)

(assert (=> d!69576 m!302337))

(assert (=> b!247031 m!302315))

(assert (=> b!247031 m!302321))

(assert (=> b!247031 m!302321))

(assert (=> b!247031 m!302323))

(assert (=> b!247031 m!302323))

(declare-fun m!302339 () Bool)

(assert (=> b!247031 m!302339))

(declare-fun m!302341 () Bool)

(assert (=> b!247034 m!302341))

(assert (=> b!247030 m!302315))

(assert (=> b!247030 m!302321))

(assert (=> b!247030 m!302321))

(assert (=> b!247030 m!302323))

(assert (=> b!247030 m!302323))

(declare-fun m!302343 () Bool)

(assert (=> b!247030 m!302343))

(assert (=> b!247035 m!302315))

(declare-fun m!302345 () Bool)

(assert (=> b!247035 m!302345))

(assert (=> b!246946 d!69576))

(declare-fun d!69592 () Bool)

(declare-fun list!1436 (Conc!1200) List!3644)

(assert (=> d!69592 (= (list!1433 (seqFromList!755 lt!100224)) (list!1436 (c!47086 (seqFromList!755 lt!100224))))))

(declare-fun bs!26489 () Bool)

(assert (= bs!26489 d!69592))

(declare-fun m!302347 () Bool)

(assert (=> bs!26489 m!302347))

(assert (=> b!246942 d!69592))

(declare-fun d!69594 () Bool)

(declare-fun fromListB!272 (List!3644) BalanceConc!2408)

(assert (=> d!69594 (= (seqFromList!755 lt!100224) (fromListB!272 lt!100224))))

(declare-fun bs!26490 () Bool)

(assert (= bs!26490 d!69594))

(declare-fun m!302349 () Bool)

(assert (=> bs!26490 m!302349))

(assert (=> b!246942 d!69594))

(declare-fun d!69596 () Bool)

(assert (=> d!69596 (= (inv!4484 (tag!897 (rule!1266 (h!9033 tokens!465)))) (= (mod (str.len (value!23951 (tag!897 (rule!1266 (h!9033 tokens!465))))) 2) 0))))

(assert (=> b!246943 d!69596))

(declare-fun d!69598 () Bool)

(declare-fun res!114377 () Bool)

(declare-fun e!153284 () Bool)

(assert (=> d!69598 (=> (not res!114377) (not e!153284))))

(assert (=> d!69598 (= res!114377 (semiInverseModEq!233 (toChars!1251 (transformation!689 (rule!1266 (h!9033 tokens!465)))) (toValue!1392 (transformation!689 (rule!1266 (h!9033 tokens!465))))))))

(assert (=> d!69598 (= (inv!4488 (transformation!689 (rule!1266 (h!9033 tokens!465)))) e!153284)))

(declare-fun b!247039 () Bool)

(assert (=> b!247039 (= e!153284 (equivClasses!216 (toChars!1251 (transformation!689 (rule!1266 (h!9033 tokens!465)))) (toValue!1392 (transformation!689 (rule!1266 (h!9033 tokens!465))))))))

(assert (= (and d!69598 res!114377) b!247039))

(declare-fun m!302351 () Bool)

(assert (=> d!69598 m!302351))

(declare-fun m!302353 () Bool)

(assert (=> b!247039 m!302353))

(assert (=> b!246943 d!69598))

(declare-fun d!69600 () Bool)

(declare-fun res!114382 () Bool)

(declare-fun e!153287 () Bool)

(assert (=> d!69600 (=> (not res!114382) (not e!153287))))

(assert (=> d!69600 (= res!114382 (not (isEmpty!2222 (originalCharacters!732 separatorToken!170))))))

(assert (=> d!69600 (= (inv!4487 separatorToken!170) e!153287)))

(declare-fun b!247044 () Bool)

(declare-fun res!114383 () Bool)

(assert (=> b!247044 (=> (not res!114383) (not e!153287))))

(declare-fun dynLambda!1773 (Int TokenValue!711) BalanceConc!2408)

(assert (=> b!247044 (= res!114383 (= (originalCharacters!732 separatorToken!170) (list!1433 (dynLambda!1773 (toChars!1251 (transformation!689 (rule!1266 separatorToken!170))) (value!23952 separatorToken!170)))))))

(declare-fun b!247045 () Bool)

(assert (=> b!247045 (= e!153287 (= (size!2879 separatorToken!170) (size!2884 (originalCharacters!732 separatorToken!170))))))

(assert (= (and d!69600 res!114382) b!247044))

(assert (= (and b!247044 res!114383) b!247045))

(declare-fun b_lambda!7221 () Bool)

(assert (=> (not b_lambda!7221) (not b!247044)))

(declare-fun tb!12689 () Bool)

(declare-fun t!35205 () Bool)

(assert (=> (and b!246927 (= (toChars!1251 (transformation!689 (rule!1266 (h!9033 tokens!465)))) (toChars!1251 (transformation!689 (rule!1266 separatorToken!170)))) t!35205) tb!12689))

(declare-fun b!247050 () Bool)

(declare-fun e!153290 () Bool)

(declare-fun tp!96486 () Bool)

(declare-fun inv!4489 (Conc!1200) Bool)

(assert (=> b!247050 (= e!153290 (and (inv!4489 (c!47086 (dynLambda!1773 (toChars!1251 (transformation!689 (rule!1266 separatorToken!170))) (value!23952 separatorToken!170)))) tp!96486))))

(declare-fun result!15992 () Bool)

(declare-fun inv!4490 (BalanceConc!2408) Bool)

(assert (=> tb!12689 (= result!15992 (and (inv!4490 (dynLambda!1773 (toChars!1251 (transformation!689 (rule!1266 separatorToken!170))) (value!23952 separatorToken!170))) e!153290))))

(assert (= tb!12689 b!247050))

(declare-fun m!302355 () Bool)

(assert (=> b!247050 m!302355))

(declare-fun m!302357 () Bool)

(assert (=> tb!12689 m!302357))

(assert (=> b!247044 t!35205))

(declare-fun b_and!18609 () Bool)

(assert (= b_and!18599 (and (=> t!35205 result!15992) b_and!18609)))

(declare-fun t!35207 () Bool)

(declare-fun tb!12691 () Bool)

(assert (=> (and b!246955 (= (toChars!1251 (transformation!689 (rule!1266 separatorToken!170))) (toChars!1251 (transformation!689 (rule!1266 separatorToken!170)))) t!35207) tb!12691))

(declare-fun result!15996 () Bool)

(assert (= result!15996 result!15992))

(assert (=> b!247044 t!35207))

(declare-fun b_and!18611 () Bool)

(assert (= b_and!18603 (and (=> t!35207 result!15996) b_and!18611)))

(declare-fun tb!12693 () Bool)

(declare-fun t!35209 () Bool)

(assert (=> (and b!246945 (= (toChars!1251 (transformation!689 (h!9032 rules!1920))) (toChars!1251 (transformation!689 (rule!1266 separatorToken!170)))) t!35209) tb!12693))

(declare-fun result!15998 () Bool)

(assert (= result!15998 result!15992))

(assert (=> b!247044 t!35209))

(declare-fun b_and!18613 () Bool)

(assert (= b_and!18607 (and (=> t!35209 result!15998) b_and!18613)))

(declare-fun m!302359 () Bool)

(assert (=> d!69600 m!302359))

(declare-fun m!302361 () Bool)

(assert (=> b!247044 m!302361))

(assert (=> b!247044 m!302361))

(declare-fun m!302363 () Bool)

(assert (=> b!247044 m!302363))

(declare-fun m!302365 () Bool)

(assert (=> b!247045 m!302365))

(assert (=> start!26174 d!69600))

(declare-fun d!69602 () Bool)

(declare-fun res!114388 () Bool)

(declare-fun e!153295 () Bool)

(assert (=> d!69602 (=> res!114388 e!153295)))

(assert (=> d!69602 (= res!114388 (not ((_ is Cons!3635) rules!1920)))))

(assert (=> d!69602 (= (sepAndNonSepRulesDisjointChars!278 rules!1920 rules!1920) e!153295)))

(declare-fun b!247055 () Bool)

(declare-fun e!153296 () Bool)

(assert (=> b!247055 (= e!153295 e!153296)))

(declare-fun res!114389 () Bool)

(assert (=> b!247055 (=> (not res!114389) (not e!153296))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!91 (Rule!1178 List!3645) Bool)

(assert (=> b!247055 (= res!114389 (ruleDisjointCharsFromAllFromOtherType!91 (h!9032 rules!1920) rules!1920))))

(declare-fun b!247056 () Bool)

(assert (=> b!247056 (= e!153296 (sepAndNonSepRulesDisjointChars!278 rules!1920 (t!35201 rules!1920)))))

(assert (= (and d!69602 (not res!114388)) b!247055))

(assert (= (and b!247055 res!114389) b!247056))

(declare-fun m!302367 () Bool)

(assert (=> b!247055 m!302367))

(declare-fun m!302369 () Bool)

(assert (=> b!247056 m!302369))

(assert (=> b!246939 d!69602))

(declare-fun d!69604 () Bool)

(declare-fun isEmpty!2230 (Option!741) Bool)

(assert (=> d!69604 (= (isDefined!592 (maxPrefixZipperSequence!268 thiss!17480 rules!1920 (seqFromList!755 (originalCharacters!732 (h!9033 tokens!465))))) (not (isEmpty!2230 (maxPrefixZipperSequence!268 thiss!17480 rules!1920 (seqFromList!755 (originalCharacters!732 (h!9033 tokens!465)))))))))

(declare-fun bs!26491 () Bool)

(assert (= bs!26491 d!69604))

(assert (=> bs!26491 m!302169))

(declare-fun m!302371 () Bool)

(assert (=> bs!26491 m!302371))

(assert (=> b!246940 d!69604))

(declare-fun b!247073 () Bool)

(declare-fun res!114406 () Bool)

(declare-fun e!153313 () Bool)

(assert (=> b!247073 (=> (not res!114406) (not e!153313))))

(declare-fun e!153309 () Bool)

(assert (=> b!247073 (= res!114406 e!153309)))

(declare-fun res!114404 () Bool)

(assert (=> b!247073 (=> res!114404 e!153309)))

(declare-fun lt!100289 () Option!741)

(assert (=> b!247073 (= res!114404 (not (isDefined!592 lt!100289)))))

(declare-fun b!247074 () Bool)

(declare-fun e!153311 () Bool)

(declare-fun get!1192 (Option!741) tuple2!4050)

(assert (=> b!247074 (= e!153311 (= (list!1433 (_2!2241 (get!1192 lt!100289))) (_2!2240 (get!1190 (maxPrefix!305 thiss!17480 rules!1920 (list!1433 (seqFromList!755 (originalCharacters!732 (h!9033 tokens!465)))))))))))

(declare-fun call!12964 () Option!741)

(declare-fun bm!12959 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!96 (LexerInterface!575 Rule!1178 BalanceConc!2408) Option!741)

(assert (=> bm!12959 (= call!12964 (maxPrefixOneRuleZipperSequence!96 thiss!17480 (h!9032 rules!1920) (seqFromList!755 (originalCharacters!732 (h!9033 tokens!465)))))))

(declare-fun b!247075 () Bool)

(declare-fun e!153312 () Bool)

(assert (=> b!247075 (= e!153312 e!153311)))

(declare-fun res!114407 () Bool)

(assert (=> b!247075 (=> (not res!114407) (not e!153311))))

(assert (=> b!247075 (= res!114407 (= (_1!2241 (get!1192 lt!100289)) (_1!2240 (get!1190 (maxPrefix!305 thiss!17480 rules!1920 (list!1433 (seqFromList!755 (originalCharacters!732 (h!9033 tokens!465)))))))))))

(declare-fun b!247076 () Bool)

(declare-fun e!153314 () Option!741)

(declare-fun lt!100286 () Option!741)

(declare-fun lt!100290 () Option!741)

(assert (=> b!247076 (= e!153314 (ite (and ((_ is None!740) lt!100286) ((_ is None!740) lt!100290)) None!740 (ite ((_ is None!740) lt!100290) lt!100286 (ite ((_ is None!740) lt!100286) lt!100290 (ite (>= (size!2879 (_1!2241 (v!14507 lt!100286))) (size!2879 (_1!2241 (v!14507 lt!100290)))) lt!100286 lt!100290)))))))

(assert (=> b!247076 (= lt!100286 call!12964)))

(assert (=> b!247076 (= lt!100290 (maxPrefixZipperSequence!268 thiss!17480 (t!35201 rules!1920) (seqFromList!755 (originalCharacters!732 (h!9033 tokens!465)))))))

(declare-fun b!247077 () Bool)

(declare-fun e!153310 () Bool)

(declare-fun maxPrefixZipper!95 (LexerInterface!575 List!3645 List!3644) Option!740)

(assert (=> b!247077 (= e!153310 (= (list!1433 (_2!2241 (get!1192 lt!100289))) (_2!2240 (get!1190 (maxPrefixZipper!95 thiss!17480 rules!1920 (list!1433 (seqFromList!755 (originalCharacters!732 (h!9033 tokens!465)))))))))))

(declare-fun b!247078 () Bool)

(assert (=> b!247078 (= e!153309 e!153310)))

(declare-fun res!114402 () Bool)

(assert (=> b!247078 (=> (not res!114402) (not e!153310))))

(assert (=> b!247078 (= res!114402 (= (_1!2241 (get!1192 lt!100289)) (_1!2240 (get!1190 (maxPrefixZipper!95 thiss!17480 rules!1920 (list!1433 (seqFromList!755 (originalCharacters!732 (h!9033 tokens!465)))))))))))

(declare-fun d!69606 () Bool)

(assert (=> d!69606 e!153313))

(declare-fun res!114405 () Bool)

(assert (=> d!69606 (=> (not res!114405) (not e!153313))))

(assert (=> d!69606 (= res!114405 (= (isDefined!592 lt!100289) (isDefined!591 (maxPrefixZipper!95 thiss!17480 rules!1920 (list!1433 (seqFromList!755 (originalCharacters!732 (h!9033 tokens!465))))))))))

(assert (=> d!69606 (= lt!100289 e!153314)))

(declare-fun c!47097 () Bool)

(assert (=> d!69606 (= c!47097 (and ((_ is Cons!3635) rules!1920) ((_ is Nil!3635) (t!35201 rules!1920))))))

(declare-fun lt!100284 () Unit!4410)

(declare-fun lt!100285 () Unit!4410)

(assert (=> d!69606 (= lt!100284 lt!100285)))

(declare-fun lt!100288 () List!3644)

(declare-fun lt!100287 () List!3644)

(assert (=> d!69606 (isPrefix!373 lt!100288 lt!100287)))

(assert (=> d!69606 (= lt!100285 (lemmaIsPrefixRefl!191 lt!100288 lt!100287))))

(assert (=> d!69606 (= lt!100287 (list!1433 (seqFromList!755 (originalCharacters!732 (h!9033 tokens!465)))))))

(assert (=> d!69606 (= lt!100288 (list!1433 (seqFromList!755 (originalCharacters!732 (h!9033 tokens!465)))))))

(assert (=> d!69606 (rulesValidInductive!182 thiss!17480 rules!1920)))

(assert (=> d!69606 (= (maxPrefixZipperSequence!268 thiss!17480 rules!1920 (seqFromList!755 (originalCharacters!732 (h!9033 tokens!465)))) lt!100289)))

(declare-fun b!247079 () Bool)

(assert (=> b!247079 (= e!153313 e!153312)))

(declare-fun res!114403 () Bool)

(assert (=> b!247079 (=> res!114403 e!153312)))

(assert (=> b!247079 (= res!114403 (not (isDefined!592 lt!100289)))))

(declare-fun b!247080 () Bool)

(assert (=> b!247080 (= e!153314 call!12964)))

(assert (= (and d!69606 c!47097) b!247080))

(assert (= (and d!69606 (not c!47097)) b!247076))

(assert (= (or b!247080 b!247076) bm!12959))

(assert (= (and d!69606 res!114405) b!247073))

(assert (= (and b!247073 (not res!114404)) b!247078))

(assert (= (and b!247078 res!114402) b!247077))

(assert (= (and b!247073 res!114406) b!247079))

(assert (= (and b!247079 (not res!114403)) b!247075))

(assert (= (and b!247075 res!114407) b!247074))

(declare-fun m!302373 () Bool)

(assert (=> b!247078 m!302373))

(assert (=> b!247078 m!302167))

(declare-fun m!302375 () Bool)

(assert (=> b!247078 m!302375))

(assert (=> b!247078 m!302375))

(declare-fun m!302377 () Bool)

(assert (=> b!247078 m!302377))

(assert (=> b!247078 m!302377))

(declare-fun m!302379 () Bool)

(assert (=> b!247078 m!302379))

(assert (=> b!247075 m!302373))

(assert (=> b!247075 m!302167))

(assert (=> b!247075 m!302375))

(assert (=> b!247075 m!302375))

(declare-fun m!302381 () Bool)

(assert (=> b!247075 m!302381))

(assert (=> b!247075 m!302381))

(declare-fun m!302383 () Bool)

(assert (=> b!247075 m!302383))

(declare-fun m!302385 () Bool)

(assert (=> d!69606 m!302385))

(declare-fun m!302387 () Bool)

(assert (=> d!69606 m!302387))

(assert (=> d!69606 m!302375))

(assert (=> d!69606 m!302377))

(declare-fun m!302389 () Bool)

(assert (=> d!69606 m!302389))

(assert (=> d!69606 m!302167))

(assert (=> d!69606 m!302375))

(assert (=> d!69606 m!302337))

(assert (=> d!69606 m!302377))

(declare-fun m!302391 () Bool)

(assert (=> d!69606 m!302391))

(assert (=> b!247077 m!302375))

(assert (=> b!247077 m!302377))

(assert (=> b!247077 m!302373))

(assert (=> b!247077 m!302167))

(assert (=> b!247077 m!302375))

(declare-fun m!302393 () Bool)

(assert (=> b!247077 m!302393))

(assert (=> b!247077 m!302377))

(assert (=> b!247077 m!302379))

(assert (=> b!247076 m!302167))

(declare-fun m!302395 () Bool)

(assert (=> b!247076 m!302395))

(assert (=> b!247074 m!302373))

(assert (=> b!247074 m!302381))

(assert (=> b!247074 m!302383))

(assert (=> b!247074 m!302167))

(assert (=> b!247074 m!302375))

(assert (=> b!247074 m!302393))

(assert (=> b!247074 m!302375))

(assert (=> b!247074 m!302381))

(assert (=> b!247079 m!302387))

(assert (=> bm!12959 m!302167))

(declare-fun m!302397 () Bool)

(assert (=> bm!12959 m!302397))

(assert (=> b!247073 m!302387))

(assert (=> b!246940 d!69606))

(declare-fun d!69608 () Bool)

(assert (=> d!69608 (= (seqFromList!755 (originalCharacters!732 (h!9033 tokens!465))) (fromListB!272 (originalCharacters!732 (h!9033 tokens!465))))))

(declare-fun bs!26492 () Bool)

(assert (= bs!26492 d!69608))

(declare-fun m!302399 () Bool)

(assert (=> bs!26492 m!302399))

(assert (=> b!246940 d!69608))

(declare-fun d!69610 () Bool)

(declare-fun dynLambda!1774 (Int Token!1122) Bool)

(assert (=> d!69610 (dynLambda!1774 lambda!8122 (h!9033 tokens!465))))

(declare-fun lt!100293 () Unit!4410)

(declare-fun choose!2333 (List!3646 Int Token!1122) Unit!4410)

(assert (=> d!69610 (= lt!100293 (choose!2333 tokens!465 lambda!8122 (h!9033 tokens!465)))))

(declare-fun e!153317 () Bool)

(assert (=> d!69610 e!153317))

(declare-fun res!114410 () Bool)

(assert (=> d!69610 (=> (not res!114410) (not e!153317))))

(assert (=> d!69610 (= res!114410 (forall!849 tokens!465 lambda!8122))))

(assert (=> d!69610 (= (forallContained!256 tokens!465 lambda!8122 (h!9033 tokens!465)) lt!100293)))

(declare-fun b!247083 () Bool)

(declare-fun contains!672 (List!3646 Token!1122) Bool)

(assert (=> b!247083 (= e!153317 (contains!672 tokens!465 (h!9033 tokens!465)))))

(assert (= (and d!69610 res!114410) b!247083))

(declare-fun b_lambda!7223 () Bool)

(assert (=> (not b_lambda!7223) (not d!69610)))

(declare-fun m!302401 () Bool)

(assert (=> d!69610 m!302401))

(declare-fun m!302403 () Bool)

(assert (=> d!69610 m!302403))

(declare-fun m!302405 () Bool)

(assert (=> d!69610 m!302405))

(declare-fun m!302407 () Bool)

(assert (=> b!247083 m!302407))

(assert (=> b!246940 d!69610))

(declare-fun b!247098 () Bool)

(declare-fun e!153326 () List!3644)

(assert (=> b!247098 (= e!153326 lt!100228)))

(declare-fun b!247099 () Bool)

(assert (=> b!247099 (= e!153326 (Cons!3634 (h!9031 lt!100223) (++!928 (t!35200 lt!100223) lt!100228)))))

(declare-fun b!247101 () Bool)

(declare-fun lt!100316 () List!3644)

(declare-fun e!153327 () Bool)

(assert (=> b!247101 (= e!153327 (or (not (= lt!100228 Nil!3634)) (= lt!100316 lt!100223)))))

(declare-fun d!69612 () Bool)

(assert (=> d!69612 e!153327))

(declare-fun res!114418 () Bool)

(assert (=> d!69612 (=> (not res!114418) (not e!153327))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!506 (List!3644) (InoxSet C!2748))

(assert (=> d!69612 (= res!114418 (= (content!506 lt!100316) ((_ map or) (content!506 lt!100223) (content!506 lt!100228))))))

(assert (=> d!69612 (= lt!100316 e!153326)))

(declare-fun c!47102 () Bool)

(assert (=> d!69612 (= c!47102 ((_ is Nil!3634) lt!100223))))

(assert (=> d!69612 (= (++!928 lt!100223 lt!100228) lt!100316)))

(declare-fun b!247100 () Bool)

(declare-fun res!114417 () Bool)

(assert (=> b!247100 (=> (not res!114417) (not e!153327))))

(assert (=> b!247100 (= res!114417 (= (size!2884 lt!100316) (+ (size!2884 lt!100223) (size!2884 lt!100228))))))

(assert (= (and d!69612 c!47102) b!247098))

(assert (= (and d!69612 (not c!47102)) b!247099))

(assert (= (and d!69612 res!114418) b!247100))

(assert (= (and b!247100 res!114417) b!247101))

(declare-fun m!302409 () Bool)

(assert (=> b!247099 m!302409))

(declare-fun m!302411 () Bool)

(assert (=> d!69612 m!302411))

(declare-fun m!302413 () Bool)

(assert (=> d!69612 m!302413))

(declare-fun m!302415 () Bool)

(assert (=> d!69612 m!302415))

(declare-fun m!302417 () Bool)

(assert (=> b!247100 m!302417))

(declare-fun m!302419 () Bool)

(assert (=> b!247100 m!302419))

(declare-fun m!302421 () Bool)

(assert (=> b!247100 m!302421))

(assert (=> b!246941 d!69612))

(assert (=> b!246936 d!69612))

(assert (=> b!246936 d!69576))

(declare-fun d!69614 () Bool)

(declare-fun e!153352 () Bool)

(assert (=> d!69614 e!153352))

(declare-fun res!114430 () Bool)

(assert (=> d!69614 (=> res!114430 e!153352)))

(assert (=> d!69614 (= res!114430 (isEmpty!2223 tokens!465))))

(declare-fun lt!100341 () Unit!4410)

(declare-fun choose!2334 (LexerInterface!575 List!3645 List!3646 Token!1122) Unit!4410)

(assert (=> d!69614 (= lt!100341 (choose!2334 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!69614 (not (isEmpty!2224 rules!1920))))

(assert (=> d!69614 (= (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!144 thiss!17480 rules!1920 tokens!465 separatorToken!170) lt!100341)))

(declare-fun b!247136 () Bool)

(declare-fun e!153353 () Bool)

(assert (=> b!247136 (= e!153352 e!153353)))

(declare-fun res!114431 () Bool)

(assert (=> b!247136 (=> (not res!114431) (not e!153353))))

(assert (=> b!247136 (= res!114431 (isDefined!591 (maxPrefix!305 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!268 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!247137 () Bool)

(assert (=> b!247137 (= e!153353 (= (_1!2240 (get!1190 (maxPrefix!305 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!268 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!850 tokens!465)))))

(assert (= (and d!69614 (not res!114430)) b!247136))

(assert (= (and b!247136 res!114431) b!247137))

(assert (=> d!69614 m!302227))

(declare-fun m!302483 () Bool)

(assert (=> d!69614 m!302483))

(assert (=> d!69614 m!302181))

(assert (=> b!247136 m!302147))

(assert (=> b!247136 m!302147))

(declare-fun m!302485 () Bool)

(assert (=> b!247136 m!302485))

(assert (=> b!247136 m!302485))

(declare-fun m!302487 () Bool)

(assert (=> b!247136 m!302487))

(assert (=> b!247137 m!302147))

(assert (=> b!247137 m!302147))

(assert (=> b!247137 m!302485))

(assert (=> b!247137 m!302485))

(declare-fun m!302489 () Bool)

(assert (=> b!247137 m!302489))

(assert (=> b!247137 m!302151))

(assert (=> b!246936 d!69614))

(declare-fun b!247147 () Bool)

(declare-fun res!114442 () Bool)

(declare-fun e!153361 () Bool)

(assert (=> b!247147 (=> (not res!114442) (not e!153361))))

(declare-fun head!852 (List!3644) C!2748)

(assert (=> b!247147 (= res!114442 (= (head!852 lt!100223) (head!852 (++!928 lt!100223 lt!100228))))))

(declare-fun d!69618 () Bool)

(declare-fun e!153362 () Bool)

(assert (=> d!69618 e!153362))

(declare-fun res!114441 () Bool)

(assert (=> d!69618 (=> res!114441 e!153362)))

(declare-fun lt!100344 () Bool)

(assert (=> d!69618 (= res!114441 (not lt!100344))))

(declare-fun e!153360 () Bool)

(assert (=> d!69618 (= lt!100344 e!153360)))

(declare-fun res!114440 () Bool)

(assert (=> d!69618 (=> res!114440 e!153360)))

(assert (=> d!69618 (= res!114440 ((_ is Nil!3634) lt!100223))))

(assert (=> d!69618 (= (isPrefix!373 lt!100223 (++!928 lt!100223 lt!100228)) lt!100344)))

(declare-fun b!247148 () Bool)

(declare-fun tail!449 (List!3644) List!3644)

(assert (=> b!247148 (= e!153361 (isPrefix!373 (tail!449 lt!100223) (tail!449 (++!928 lt!100223 lt!100228))))))

(declare-fun b!247146 () Bool)

(assert (=> b!247146 (= e!153360 e!153361)))

(declare-fun res!114443 () Bool)

(assert (=> b!247146 (=> (not res!114443) (not e!153361))))

(assert (=> b!247146 (= res!114443 (not ((_ is Nil!3634) (++!928 lt!100223 lt!100228))))))

(declare-fun b!247149 () Bool)

(assert (=> b!247149 (= e!153362 (>= (size!2884 (++!928 lt!100223 lt!100228)) (size!2884 lt!100223)))))

(assert (= (and d!69618 (not res!114440)) b!247146))

(assert (= (and b!247146 res!114443) b!247147))

(assert (= (and b!247147 res!114442) b!247148))

(assert (= (and d!69618 (not res!114441)) b!247149))

(declare-fun m!302491 () Bool)

(assert (=> b!247147 m!302491))

(assert (=> b!247147 m!302161))

(declare-fun m!302493 () Bool)

(assert (=> b!247147 m!302493))

(declare-fun m!302495 () Bool)

(assert (=> b!247148 m!302495))

(assert (=> b!247148 m!302161))

(declare-fun m!302497 () Bool)

(assert (=> b!247148 m!302497))

(assert (=> b!247148 m!302495))

(assert (=> b!247148 m!302497))

(declare-fun m!302499 () Bool)

(assert (=> b!247148 m!302499))

(assert (=> b!247149 m!302161))

(declare-fun m!302501 () Bool)

(assert (=> b!247149 m!302501))

(assert (=> b!247149 m!302419))

(assert (=> b!246936 d!69618))

(declare-fun bs!26502 () Bool)

(declare-fun d!69620 () Bool)

(assert (= bs!26502 (and d!69620 b!246948)))

(declare-fun lambda!8134 () Int)

(assert (=> bs!26502 (= lambda!8134 lambda!8121)))

(declare-fun bs!26503 () Bool)

(assert (= bs!26503 (and d!69620 b!246940)))

(assert (=> bs!26503 (not (= lambda!8134 lambda!8122))))

(assert (=> d!69620 (= (filter!71 (list!1432 (_1!2239 (lex!375 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededRec!258 thiss!17480 rules!1920 (seqFromList!756 (t!35202 tokens!465)) separatorToken!170 0)))) lambda!8134) (t!35202 tokens!465))))

(declare-fun lt!100367 () Unit!4410)

(declare-fun choose!2335 (LexerInterface!575 List!3645 List!3646 Token!1122) Unit!4410)

(assert (=> d!69620 (= lt!100367 (choose!2335 thiss!17480 rules!1920 (t!35202 tokens!465) separatorToken!170))))

(assert (=> d!69620 (not (isEmpty!2224 rules!1920))))

(assert (=> d!69620 (= (theoremInvertabilityFromTokensSepTokenWhenNeeded!62 thiss!17480 rules!1920 (t!35202 tokens!465) separatorToken!170) lt!100367)))

(declare-fun bs!26504 () Bool)

(assert (= bs!26504 d!69620))

(assert (=> bs!26504 m!302199))

(assert (=> bs!26504 m!302201))

(declare-fun m!302539 () Bool)

(assert (=> bs!26504 m!302539))

(assert (=> bs!26504 m!302181))

(assert (=> bs!26504 m!302199))

(assert (=> bs!26504 m!302201))

(declare-fun m!302541 () Bool)

(assert (=> bs!26504 m!302541))

(assert (=> bs!26504 m!302539))

(declare-fun m!302543 () Bool)

(assert (=> bs!26504 m!302543))

(declare-fun m!302545 () Bool)

(assert (=> bs!26504 m!302545))

(assert (=> b!246936 d!69620))

(declare-fun d!69628 () Bool)

(assert (=> d!69628 (isPrefix!373 lt!100223 (++!928 lt!100223 lt!100228))))

(declare-fun lt!100370 () Unit!4410)

(declare-fun choose!2336 (List!3644 List!3644) Unit!4410)

(assert (=> d!69628 (= lt!100370 (choose!2336 lt!100223 lt!100228))))

(assert (=> d!69628 (= (lemmaConcatTwoListThenFirstIsPrefix!268 lt!100223 lt!100228) lt!100370)))

(declare-fun bs!26505 () Bool)

(assert (= bs!26505 d!69628))

(assert (=> bs!26505 m!302161))

(assert (=> bs!26505 m!302161))

(assert (=> bs!26505 m!302229))

(declare-fun m!302547 () Bool)

(assert (=> bs!26505 m!302547))

(assert (=> b!246936 d!69628))

(declare-fun d!69630 () Bool)

(assert (=> d!69630 (= (isDefined!591 (maxPrefix!305 thiss!17480 rules!1920 lt!100224)) (not (isEmpty!2228 (maxPrefix!305 thiss!17480 rules!1920 lt!100224))))))

(declare-fun bs!26506 () Bool)

(assert (= bs!26506 d!69630))

(assert (=> bs!26506 m!302177))

(declare-fun m!302549 () Bool)

(assert (=> bs!26506 m!302549))

(assert (=> b!246936 d!69630))

(declare-fun d!69632 () Bool)

(assert (=> d!69632 (= (isEmpty!2223 tokens!465) ((_ is Nil!3636) tokens!465))))

(assert (=> b!246936 d!69632))

(declare-fun b!247229 () Bool)

(declare-fun e!153405 () Bool)

(declare-fun lt!100391 () tuple2!4046)

(assert (=> b!247229 (= e!153405 (= (_2!2239 lt!100391) lt!100221))))

(declare-fun d!69634 () Bool)

(declare-fun e!153406 () Bool)

(assert (=> d!69634 e!153406))

(declare-fun res!114478 () Bool)

(assert (=> d!69634 (=> (not res!114478) (not e!153406))))

(assert (=> d!69634 (= res!114478 e!153405)))

(declare-fun c!47133 () Bool)

(declare-fun size!2885 (BalanceConc!2410) Int)

(assert (=> d!69634 (= c!47133 (> (size!2885 (_1!2239 lt!100391)) 0))))

(declare-fun lexTailRecV2!154 (LexerInterface!575 List!3645 BalanceConc!2408 BalanceConc!2408 BalanceConc!2408 BalanceConc!2410) tuple2!4046)

(assert (=> d!69634 (= lt!100391 (lexTailRecV2!154 thiss!17480 rules!1920 lt!100221 (BalanceConc!2409 Empty!1200) lt!100221 (BalanceConc!2411 Empty!1201)))))

(assert (=> d!69634 (= (lex!375 thiss!17480 rules!1920 lt!100221) lt!100391)))

(declare-fun b!247230 () Bool)

(declare-fun e!153404 () Bool)

(assert (=> b!247230 (= e!153404 (not (isEmpty!2221 (_1!2239 lt!100391))))))

(declare-fun b!247231 () Bool)

(declare-fun res!114479 () Bool)

(assert (=> b!247231 (=> (not res!114479) (not e!153406))))

(declare-datatypes ((tuple2!4054 0))(
  ( (tuple2!4055 (_1!2243 List!3646) (_2!2243 List!3644)) )
))
(declare-fun lexList!187 (LexerInterface!575 List!3645 List!3644) tuple2!4054)

(assert (=> b!247231 (= res!114479 (= (list!1432 (_1!2239 lt!100391)) (_1!2243 (lexList!187 thiss!17480 rules!1920 (list!1433 lt!100221)))))))

(declare-fun b!247232 () Bool)

(assert (=> b!247232 (= e!153405 e!153404)))

(declare-fun res!114477 () Bool)

(declare-fun size!2886 (BalanceConc!2408) Int)

(assert (=> b!247232 (= res!114477 (< (size!2886 (_2!2239 lt!100391)) (size!2886 lt!100221)))))

(assert (=> b!247232 (=> (not res!114477) (not e!153404))))

(declare-fun b!247233 () Bool)

(assert (=> b!247233 (= e!153406 (= (list!1433 (_2!2239 lt!100391)) (_2!2243 (lexList!187 thiss!17480 rules!1920 (list!1433 lt!100221)))))))

(assert (= (and d!69634 c!47133) b!247232))

(assert (= (and d!69634 (not c!47133)) b!247229))

(assert (= (and b!247232 res!114477) b!247230))

(assert (= (and d!69634 res!114478) b!247231))

(assert (= (and b!247231 res!114479) b!247233))

(declare-fun m!302595 () Bool)

(assert (=> d!69634 m!302595))

(declare-fun m!302597 () Bool)

(assert (=> d!69634 m!302597))

(declare-fun m!302599 () Bool)

(assert (=> b!247230 m!302599))

(declare-fun m!302601 () Bool)

(assert (=> b!247233 m!302601))

(assert (=> b!247233 m!302205))

(assert (=> b!247233 m!302205))

(declare-fun m!302603 () Bool)

(assert (=> b!247233 m!302603))

(declare-fun m!302605 () Bool)

(assert (=> b!247231 m!302605))

(assert (=> b!247231 m!302205))

(assert (=> b!247231 m!302205))

(assert (=> b!247231 m!302603))

(declare-fun m!302607 () Bool)

(assert (=> b!247232 m!302607))

(declare-fun m!302609 () Bool)

(assert (=> b!247232 m!302609))

(assert (=> b!246936 d!69634))

(declare-fun d!69644 () Bool)

(declare-fun list!1437 (Conc!1201) List!3646)

(assert (=> d!69644 (= (list!1432 (_1!2239 (lex!375 thiss!17480 rules!1920 lt!100221))) (list!1437 (c!47088 (_1!2239 (lex!375 thiss!17480 rules!1920 lt!100221)))))))

(declare-fun bs!26514 () Bool)

(assert (= bs!26514 d!69644))

(declare-fun m!302611 () Bool)

(assert (=> bs!26514 m!302611))

(assert (=> b!246936 d!69644))

(declare-fun b!247246 () Bool)

(declare-fun e!153414 () List!3646)

(assert (=> b!247246 (= e!153414 Nil!3636)))

(declare-fun d!69646 () Bool)

(declare-fun e!153413 () Bool)

(assert (=> d!69646 e!153413))

(declare-fun res!114485 () Bool)

(assert (=> d!69646 (=> (not res!114485) (not e!153413))))

(declare-fun lt!100394 () List!3646)

(declare-fun size!2887 (List!3646) Int)

(assert (=> d!69646 (= res!114485 (<= (size!2887 lt!100394) (size!2887 (list!1432 (_1!2239 (lex!375 thiss!17480 rules!1920 lt!100221))))))))

(assert (=> d!69646 (= lt!100394 e!153414)))

(declare-fun c!47138 () Bool)

(assert (=> d!69646 (= c!47138 ((_ is Nil!3636) (list!1432 (_1!2239 (lex!375 thiss!17480 rules!1920 lt!100221)))))))

(assert (=> d!69646 (= (filter!71 (list!1432 (_1!2239 (lex!375 thiss!17480 rules!1920 lt!100221))) lambda!8121) lt!100394)))

(declare-fun b!247247 () Bool)

(declare-fun e!153415 () List!3646)

(declare-fun call!13000 () List!3646)

(assert (=> b!247247 (= e!153415 (Cons!3636 (h!9033 (list!1432 (_1!2239 (lex!375 thiss!17480 rules!1920 lt!100221)))) call!13000))))

(declare-fun b!247248 () Bool)

(assert (=> b!247248 (= e!153414 e!153415)))

(declare-fun c!47139 () Bool)

(assert (=> b!247248 (= c!47139 (dynLambda!1774 lambda!8121 (h!9033 (list!1432 (_1!2239 (lex!375 thiss!17480 rules!1920 lt!100221))))))))

(declare-fun b!247249 () Bool)

(declare-fun res!114484 () Bool)

(assert (=> b!247249 (=> (not res!114484) (not e!153413))))

(declare-fun content!507 (List!3646) (InoxSet Token!1122))

(assert (=> b!247249 (= res!114484 (= ((_ map implies) (content!507 lt!100394) (content!507 (list!1432 (_1!2239 (lex!375 thiss!17480 rules!1920 lt!100221))))) ((as const (InoxSet Token!1122)) true)))))

(declare-fun bm!12995 () Bool)

(assert (=> bm!12995 (= call!13000 (filter!71 (t!35202 (list!1432 (_1!2239 (lex!375 thiss!17480 rules!1920 lt!100221)))) lambda!8121))))

(declare-fun b!247250 () Bool)

(assert (=> b!247250 (= e!153413 (forall!849 lt!100394 lambda!8121))))

(declare-fun b!247251 () Bool)

(assert (=> b!247251 (= e!153415 call!13000)))

(assert (= (and d!69646 c!47138) b!247246))

(assert (= (and d!69646 (not c!47138)) b!247248))

(assert (= (and b!247248 c!47139) b!247247))

(assert (= (and b!247248 (not c!47139)) b!247251))

(assert (= (or b!247247 b!247251) bm!12995))

(assert (= (and d!69646 res!114485) b!247249))

(assert (= (and b!247249 res!114484) b!247250))

(declare-fun b_lambda!7225 () Bool)

(assert (=> (not b_lambda!7225) (not b!247248)))

(declare-fun m!302613 () Bool)

(assert (=> b!247248 m!302613))

(declare-fun m!302615 () Bool)

(assert (=> b!247249 m!302615))

(assert (=> b!247249 m!302241))

(declare-fun m!302617 () Bool)

(assert (=> b!247249 m!302617))

(declare-fun m!302619 () Bool)

(assert (=> d!69646 m!302619))

(assert (=> d!69646 m!302241))

(declare-fun m!302621 () Bool)

(assert (=> d!69646 m!302621))

(declare-fun m!302623 () Bool)

(assert (=> b!247250 m!302623))

(declare-fun m!302625 () Bool)

(assert (=> bm!12995 m!302625))

(assert (=> b!246936 d!69646))

(declare-fun bs!26525 () Bool)

(declare-fun d!69648 () Bool)

(assert (= bs!26525 (and d!69648 b!246948)))

(declare-fun lambda!8147 () Int)

(assert (=> bs!26525 (not (= lambda!8147 lambda!8121))))

(declare-fun bs!26526 () Bool)

(assert (= bs!26526 (and d!69648 b!246940)))

(assert (=> bs!26526 (= lambda!8147 lambda!8122)))

(declare-fun bs!26527 () Bool)

(assert (= bs!26527 (and d!69648 d!69620)))

(assert (=> bs!26527 (not (= lambda!8147 lambda!8134))))

(declare-fun b!247300 () Bool)

(declare-fun e!153446 () Bool)

(assert (=> b!247300 (= e!153446 true)))

(declare-fun b!247299 () Bool)

(declare-fun e!153445 () Bool)

(assert (=> b!247299 (= e!153445 e!153446)))

(declare-fun b!247298 () Bool)

(declare-fun e!153444 () Bool)

(assert (=> b!247298 (= e!153444 e!153445)))

(assert (=> d!69648 e!153444))

(assert (= b!247299 b!247300))

(assert (= b!247298 b!247299))

(assert (= (and d!69648 ((_ is Cons!3635) rules!1920)) b!247298))

(assert (=> b!247300 (< (dynLambda!1769 order!2673 (toValue!1392 (transformation!689 (h!9032 rules!1920)))) (dynLambda!1770 order!2675 lambda!8147))))

(assert (=> b!247300 (< (dynLambda!1771 order!2677 (toChars!1251 (transformation!689 (h!9032 rules!1920)))) (dynLambda!1770 order!2675 lambda!8147))))

(assert (=> d!69648 true))

(declare-fun e!153443 () Bool)

(assert (=> d!69648 e!153443))

(declare-fun res!114513 () Bool)

(assert (=> d!69648 (=> (not res!114513) (not e!153443))))

(declare-fun lt!100412 () Bool)

(assert (=> d!69648 (= res!114513 (= lt!100412 (forall!849 (list!1432 lt!100220) lambda!8147)))))

(declare-fun forall!851 (BalanceConc!2410 Int) Bool)

(assert (=> d!69648 (= lt!100412 (forall!851 lt!100220 lambda!8147))))

(assert (=> d!69648 (not (isEmpty!2224 rules!1920))))

(assert (=> d!69648 (= (rulesProduceEachTokenIndividually!367 thiss!17480 rules!1920 lt!100220) lt!100412)))

(declare-fun b!247297 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!203 (LexerInterface!575 List!3645 List!3646) Bool)

(assert (=> b!247297 (= e!153443 (= lt!100412 (rulesProduceEachTokenIndividuallyList!203 thiss!17480 rules!1920 (list!1432 lt!100220))))))

(assert (= (and d!69648 res!114513) b!247297))

(declare-fun m!302685 () Bool)

(assert (=> d!69648 m!302685))

(assert (=> d!69648 m!302685))

(declare-fun m!302689 () Bool)

(assert (=> d!69648 m!302689))

(declare-fun m!302691 () Bool)

(assert (=> d!69648 m!302691))

(assert (=> d!69648 m!302181))

(assert (=> b!247297 m!302685))

(assert (=> b!247297 m!302685))

(declare-fun m!302701 () Bool)

(assert (=> b!247297 m!302701))

(assert (=> b!246937 d!69648))

(declare-fun d!69668 () Bool)

(declare-fun fromListB!273 (List!3646) BalanceConc!2410)

(assert (=> d!69668 (= (seqFromList!756 tokens!465) (fromListB!273 tokens!465))))

(declare-fun bs!26528 () Bool)

(assert (= bs!26528 d!69668))

(declare-fun m!302705 () Bool)

(assert (=> bs!26528 m!302705))

(assert (=> b!246937 d!69668))

(declare-fun d!69670 () Bool)

(declare-fun lt!100418 () Bool)

(declare-fun e!153453 () Bool)

(assert (=> d!69670 (= lt!100418 e!153453)))

(declare-fun res!114524 () Bool)

(assert (=> d!69670 (=> (not res!114524) (not e!153453))))

(assert (=> d!69670 (= res!114524 (= (list!1432 (_1!2239 (lex!375 thiss!17480 rules!1920 (print!306 thiss!17480 (singletonSeq!241 (h!9033 tokens!465)))))) (list!1432 (singletonSeq!241 (h!9033 tokens!465)))))))

(declare-fun e!153454 () Bool)

(assert (=> d!69670 (= lt!100418 e!153454)))

(declare-fun res!114523 () Bool)

(assert (=> d!69670 (=> (not res!114523) (not e!153454))))

(declare-fun lt!100419 () tuple2!4046)

(assert (=> d!69670 (= res!114523 (= (size!2885 (_1!2239 lt!100419)) 1))))

(assert (=> d!69670 (= lt!100419 (lex!375 thiss!17480 rules!1920 (print!306 thiss!17480 (singletonSeq!241 (h!9033 tokens!465)))))))

(assert (=> d!69670 (not (isEmpty!2224 rules!1920))))

(assert (=> d!69670 (= (rulesProduceIndividualToken!324 thiss!17480 rules!1920 (h!9033 tokens!465)) lt!100418)))

(declare-fun b!247311 () Bool)

(declare-fun res!114522 () Bool)

(assert (=> b!247311 (=> (not res!114522) (not e!153454))))

(declare-fun apply!685 (BalanceConc!2410 Int) Token!1122)

(assert (=> b!247311 (= res!114522 (= (apply!685 (_1!2239 lt!100419) 0) (h!9033 tokens!465)))))

(declare-fun b!247312 () Bool)

(declare-fun isEmpty!2231 (BalanceConc!2408) Bool)

(assert (=> b!247312 (= e!153454 (isEmpty!2231 (_2!2239 lt!100419)))))

(declare-fun b!247313 () Bool)

(assert (=> b!247313 (= e!153453 (isEmpty!2231 (_2!2239 (lex!375 thiss!17480 rules!1920 (print!306 thiss!17480 (singletonSeq!241 (h!9033 tokens!465)))))))))

(assert (= (and d!69670 res!114523) b!247311))

(assert (= (and b!247311 res!114522) b!247312))

(assert (= (and d!69670 res!114524) b!247313))

(declare-fun m!302707 () Bool)

(assert (=> d!69670 m!302707))

(assert (=> d!69670 m!302135))

(declare-fun m!302709 () Bool)

(assert (=> d!69670 m!302709))

(assert (=> d!69670 m!302135))

(declare-fun m!302711 () Bool)

(assert (=> d!69670 m!302711))

(assert (=> d!69670 m!302135))

(assert (=> d!69670 m!302181))

(declare-fun m!302713 () Bool)

(assert (=> d!69670 m!302713))

(assert (=> d!69670 m!302709))

(declare-fun m!302715 () Bool)

(assert (=> d!69670 m!302715))

(declare-fun m!302717 () Bool)

(assert (=> b!247311 m!302717))

(declare-fun m!302719 () Bool)

(assert (=> b!247312 m!302719))

(assert (=> b!247313 m!302135))

(assert (=> b!247313 m!302135))

(assert (=> b!247313 m!302709))

(assert (=> b!247313 m!302709))

(assert (=> b!247313 m!302715))

(declare-fun m!302721 () Bool)

(assert (=> b!247313 m!302721))

(assert (=> b!246958 d!69670))

(declare-fun d!69672 () Bool)

(declare-fun c!47154 () Bool)

(assert (=> d!69672 (= c!47154 ((_ is IntegerValue!2133) (value!23952 separatorToken!170)))))

(declare-fun e!153461 () Bool)

(assert (=> d!69672 (= (inv!21 (value!23952 separatorToken!170)) e!153461)))

(declare-fun b!247324 () Bool)

(declare-fun res!114527 () Bool)

(declare-fun e!153463 () Bool)

(assert (=> b!247324 (=> res!114527 e!153463)))

(assert (=> b!247324 (= res!114527 (not ((_ is IntegerValue!2135) (value!23952 separatorToken!170))))))

(declare-fun e!153462 () Bool)

(assert (=> b!247324 (= e!153462 e!153463)))

(declare-fun b!247325 () Bool)

(declare-fun inv!17 (TokenValue!711) Bool)

(assert (=> b!247325 (= e!153462 (inv!17 (value!23952 separatorToken!170)))))

(declare-fun b!247326 () Bool)

(declare-fun inv!15 (TokenValue!711) Bool)

(assert (=> b!247326 (= e!153463 (inv!15 (value!23952 separatorToken!170)))))

(declare-fun b!247327 () Bool)

(declare-fun inv!16 (TokenValue!711) Bool)

(assert (=> b!247327 (= e!153461 (inv!16 (value!23952 separatorToken!170)))))

(declare-fun b!247328 () Bool)

(assert (=> b!247328 (= e!153461 e!153462)))

(declare-fun c!47155 () Bool)

(assert (=> b!247328 (= c!47155 ((_ is IntegerValue!2134) (value!23952 separatorToken!170)))))

(assert (= (and d!69672 c!47154) b!247327))

(assert (= (and d!69672 (not c!47154)) b!247328))

(assert (= (and b!247328 c!47155) b!247325))

(assert (= (and b!247328 (not c!47155)) b!247324))

(assert (= (and b!247324 (not res!114527)) b!247326))

(declare-fun m!302723 () Bool)

(assert (=> b!247325 m!302723))

(declare-fun m!302725 () Bool)

(assert (=> b!247326 m!302725))

(declare-fun m!302727 () Bool)

(assert (=> b!247327 m!302727))

(assert (=> b!246959 d!69672))

(declare-fun d!69674 () Bool)

(assert (=> d!69674 (= (list!1433 (printWithSeparatorTokenWhenNeededRec!258 thiss!17480 rules!1920 lt!100220 separatorToken!170 0)) (list!1436 (c!47086 (printWithSeparatorTokenWhenNeededRec!258 thiss!17480 rules!1920 lt!100220 separatorToken!170 0))))))

(declare-fun bs!26529 () Bool)

(assert (= bs!26529 d!69674))

(declare-fun m!302729 () Bool)

(assert (=> bs!26529 m!302729))

(assert (=> b!246938 d!69674))

(declare-fun bs!26564 () Bool)

(declare-fun d!69676 () Bool)

(assert (= bs!26564 (and d!69676 b!246948)))

(declare-fun lambda!8155 () Int)

(assert (=> bs!26564 (= lambda!8155 lambda!8121)))

(declare-fun bs!26565 () Bool)

(assert (= bs!26565 (and d!69676 b!246940)))

(assert (=> bs!26565 (not (= lambda!8155 lambda!8122))))

(declare-fun bs!26566 () Bool)

(assert (= bs!26566 (and d!69676 d!69620)))

(assert (=> bs!26566 (= lambda!8155 lambda!8134)))

(declare-fun bs!26567 () Bool)

(assert (= bs!26567 (and d!69676 d!69648)))

(assert (=> bs!26567 (not (= lambda!8155 lambda!8147))))

(declare-fun bs!26568 () Bool)

(declare-fun b!247508 () Bool)

(assert (= bs!26568 (and b!247508 b!246948)))

(declare-fun lambda!8156 () Int)

(assert (=> bs!26568 (not (= lambda!8156 lambda!8121))))

(declare-fun bs!26569 () Bool)

(assert (= bs!26569 (and b!247508 b!246940)))

(assert (=> bs!26569 (= lambda!8156 lambda!8122)))

(declare-fun bs!26570 () Bool)

(assert (= bs!26570 (and b!247508 d!69620)))

(assert (=> bs!26570 (not (= lambda!8156 lambda!8134))))

(declare-fun bs!26571 () Bool)

(assert (= bs!26571 (and b!247508 d!69648)))

(assert (=> bs!26571 (= lambda!8156 lambda!8147)))

(declare-fun bs!26572 () Bool)

(assert (= bs!26572 (and b!247508 d!69676)))

(assert (=> bs!26572 (not (= lambda!8156 lambda!8155))))

(declare-fun b!247513 () Bool)

(declare-fun e!153578 () Bool)

(assert (=> b!247513 (= e!153578 true)))

(declare-fun b!247512 () Bool)

(declare-fun e!153577 () Bool)

(assert (=> b!247512 (= e!153577 e!153578)))

(declare-fun b!247511 () Bool)

(declare-fun e!153576 () Bool)

(assert (=> b!247511 (= e!153576 e!153577)))

(assert (=> b!247508 e!153576))

(assert (= b!247512 b!247513))

(assert (= b!247511 b!247512))

(assert (= (and b!247508 ((_ is Cons!3635) rules!1920)) b!247511))

(assert (=> b!247513 (< (dynLambda!1769 order!2673 (toValue!1392 (transformation!689 (h!9032 rules!1920)))) (dynLambda!1770 order!2675 lambda!8156))))

(assert (=> b!247513 (< (dynLambda!1771 order!2677 (toChars!1251 (transformation!689 (h!9032 rules!1920)))) (dynLambda!1770 order!2675 lambda!8156))))

(assert (=> b!247508 true))

(declare-fun c!47196 () Bool)

(declare-fun bm!13026 () Bool)

(declare-fun call!13031 () BalanceConc!2408)

(declare-fun call!13034 () Token!1122)

(assert (=> bm!13026 (= call!13031 (charsOf!344 (ite c!47196 separatorToken!170 call!13034)))))

(declare-fun b!247502 () Bool)

(declare-fun e!153574 () BalanceConc!2408)

(declare-fun call!13033 () BalanceConc!2408)

(assert (=> b!247502 (= e!153574 call!13033)))

(declare-fun lt!100527 () BalanceConc!2408)

(declare-fun dropList!142 (BalanceConc!2410 Int) List!3646)

(assert (=> d!69676 (= (list!1433 lt!100527) (printWithSeparatorTokenWhenNeededList!268 thiss!17480 rules!1920 (dropList!142 lt!100220 0) separatorToken!170))))

(declare-fun e!153573 () BalanceConc!2408)

(assert (=> d!69676 (= lt!100527 e!153573)))

(declare-fun c!47195 () Bool)

(assert (=> d!69676 (= c!47195 (>= 0 (size!2885 lt!100220)))))

(declare-fun lt!100521 () Unit!4410)

(declare-fun lemmaContentSubsetPreservesForall!86 (List!3646 List!3646 Int) Unit!4410)

(assert (=> d!69676 (= lt!100521 (lemmaContentSubsetPreservesForall!86 (list!1432 lt!100220) (dropList!142 lt!100220 0) lambda!8155))))

(declare-fun e!153575 () Bool)

(assert (=> d!69676 e!153575))

(declare-fun res!114615 () Bool)

(assert (=> d!69676 (=> (not res!114615) (not e!153575))))

(assert (=> d!69676 (= res!114615 (>= 0 0))))

(assert (=> d!69676 (= (printWithSeparatorTokenWhenNeededRec!258 thiss!17480 rules!1920 lt!100220 separatorToken!170 0) lt!100527)))

(declare-fun b!247503 () Bool)

(declare-fun e!153572 () Bool)

(assert (=> b!247503 (= c!47196 e!153572)))

(declare-fun res!114613 () Bool)

(assert (=> b!247503 (=> (not res!114613) (not e!153572))))

(declare-fun lt!100524 () Option!741)

(assert (=> b!247503 (= res!114613 ((_ is Some!740) lt!100524))))

(declare-fun e!153570 () BalanceConc!2408)

(assert (=> b!247503 (= e!153574 e!153570)))

(declare-fun b!247504 () Bool)

(declare-fun call!13035 () Token!1122)

(assert (=> b!247504 (= e!153572 (not (= (_1!2241 (v!14507 lt!100524)) call!13035)))))

(declare-fun b!247505 () Bool)

(assert (=> b!247505 (= e!153573 (BalanceConc!2409 Empty!1200))))

(declare-fun b!247506 () Bool)

(declare-fun lt!100526 () BalanceConc!2408)

(declare-fun ++!930 (BalanceConc!2408 BalanceConc!2408) BalanceConc!2408)

(assert (=> b!247506 (= e!153570 (++!930 call!13033 lt!100526))))

(declare-fun bm!13027 () Bool)

(assert (=> bm!13027 (= call!13035 (apply!685 lt!100220 0))))

(declare-fun bm!13028 () Bool)

(declare-fun call!13032 () BalanceConc!2408)

(declare-fun c!47194 () Bool)

(assert (=> bm!13028 (= call!13033 (++!930 call!13032 (ite c!47194 lt!100526 call!13031)))))

(declare-fun b!247507 () Bool)

(assert (=> b!247507 (= e!153570 (BalanceConc!2409 Empty!1200))))

(assert (=> b!247507 (= (print!306 thiss!17480 (singletonSeq!241 call!13034)) (printTailRec!269 thiss!17480 (singletonSeq!241 call!13034) 0 (BalanceConc!2409 Empty!1200)))))

(declare-fun lt!100520 () Unit!4410)

(declare-fun Unit!4420 () Unit!4410)

(assert (=> b!247507 (= lt!100520 Unit!4420)))

(declare-fun lt!100518 () Unit!4410)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!90 (LexerInterface!575 List!3645 List!3644 List!3644) Unit!4410)

(assert (=> b!247507 (= lt!100518 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!90 thiss!17480 rules!1920 (list!1433 call!13031) (list!1433 lt!100526)))))

(assert (=> b!247507 false))

(declare-fun lt!100525 () Unit!4410)

(declare-fun Unit!4421 () Unit!4410)

(assert (=> b!247507 (= lt!100525 Unit!4421)))

(assert (=> b!247508 (= e!153573 e!153574)))

(declare-fun lt!100523 () List!3646)

(assert (=> b!247508 (= lt!100523 (list!1432 lt!100220))))

(declare-fun lt!100515 () Unit!4410)

(declare-fun lemmaDropApply!182 (List!3646 Int) Unit!4410)

(assert (=> b!247508 (= lt!100515 (lemmaDropApply!182 lt!100523 0))))

(declare-fun drop!195 (List!3646 Int) List!3646)

(declare-fun apply!686 (List!3646 Int) Token!1122)

(assert (=> b!247508 (= (head!850 (drop!195 lt!100523 0)) (apply!686 lt!100523 0))))

(declare-fun lt!100519 () Unit!4410)

(assert (=> b!247508 (= lt!100519 lt!100515)))

(declare-fun lt!100522 () List!3646)

(assert (=> b!247508 (= lt!100522 (list!1432 lt!100220))))

(declare-fun lt!100516 () Unit!4410)

(declare-fun lemmaDropTail!174 (List!3646 Int) Unit!4410)

(assert (=> b!247508 (= lt!100516 (lemmaDropTail!174 lt!100522 0))))

(declare-fun tail!450 (List!3646) List!3646)

(assert (=> b!247508 (= (tail!450 (drop!195 lt!100522 0)) (drop!195 lt!100522 (+ 0 1)))))

(declare-fun lt!100514 () Unit!4410)

(assert (=> b!247508 (= lt!100514 lt!100516)))

(declare-fun lt!100517 () Unit!4410)

(assert (=> b!247508 (= lt!100517 (forallContained!256 (list!1432 lt!100220) lambda!8156 (apply!685 lt!100220 0)))))

(assert (=> b!247508 (= lt!100526 (printWithSeparatorTokenWhenNeededRec!258 thiss!17480 rules!1920 lt!100220 separatorToken!170 (+ 0 1)))))

(assert (=> b!247508 (= lt!100524 (maxPrefixZipperSequence!268 thiss!17480 rules!1920 (++!930 (charsOf!344 (apply!685 lt!100220 0)) lt!100526)))))

(declare-fun res!114614 () Bool)

(assert (=> b!247508 (= res!114614 ((_ is Some!740) lt!100524))))

(declare-fun e!153571 () Bool)

(assert (=> b!247508 (=> (not res!114614) (not e!153571))))

(assert (=> b!247508 (= c!47194 e!153571)))

(declare-fun bm!13029 () Bool)

(assert (=> bm!13029 (= call!13034 call!13035)))

(declare-fun b!247509 () Bool)

(assert (=> b!247509 (= e!153571 (= (_1!2241 (v!14507 lt!100524)) (apply!685 lt!100220 0)))))

(declare-fun b!247510 () Bool)

(assert (=> b!247510 (= e!153575 (<= 0 (size!2885 lt!100220)))))

(declare-fun bm!13030 () Bool)

(assert (=> bm!13030 (= call!13032 (charsOf!344 (ite c!47194 call!13035 call!13034)))))

(assert (= (and d!69676 res!114615) b!247510))

(assert (= (and d!69676 c!47195) b!247505))

(assert (= (and d!69676 (not c!47195)) b!247508))

(assert (= (and b!247508 res!114614) b!247509))

(assert (= (and b!247508 c!47194) b!247502))

(assert (= (and b!247508 (not c!47194)) b!247503))

(assert (= (and b!247503 res!114613) b!247504))

(assert (= (and b!247503 c!47196) b!247506))

(assert (= (and b!247503 (not c!47196)) b!247507))

(assert (= (or b!247506 b!247507) bm!13029))

(assert (= (or b!247506 b!247507) bm!13026))

(assert (= (or b!247502 b!247504 bm!13029) bm!13027))

(assert (= (or b!247502 b!247506) bm!13030))

(assert (= (or b!247502 b!247506) bm!13028))

(declare-fun m!302993 () Bool)

(assert (=> bm!13028 m!302993))

(declare-fun m!302995 () Bool)

(assert (=> b!247509 m!302995))

(declare-fun m!302997 () Bool)

(assert (=> b!247510 m!302997))

(declare-fun m!302999 () Bool)

(assert (=> b!247507 m!302999))

(declare-fun m!303001 () Bool)

(assert (=> b!247507 m!303001))

(declare-fun m!303003 () Bool)

(assert (=> b!247507 m!303003))

(declare-fun m!303005 () Bool)

(assert (=> b!247507 m!303005))

(assert (=> b!247507 m!303001))

(assert (=> b!247507 m!303001))

(declare-fun m!303007 () Bool)

(assert (=> b!247507 m!303007))

(assert (=> b!247507 m!303005))

(assert (=> b!247507 m!302999))

(declare-fun m!303009 () Bool)

(assert (=> b!247507 m!303009))

(declare-fun m!303011 () Bool)

(assert (=> bm!13030 m!303011))

(declare-fun m!303013 () Bool)

(assert (=> b!247508 m!303013))

(assert (=> b!247508 m!302685))

(declare-fun m!303015 () Bool)

(assert (=> b!247508 m!303015))

(assert (=> b!247508 m!302685))

(assert (=> b!247508 m!302995))

(declare-fun m!303017 () Bool)

(assert (=> b!247508 m!303017))

(assert (=> b!247508 m!302995))

(declare-fun m!303019 () Bool)

(assert (=> b!247508 m!303019))

(declare-fun m!303021 () Bool)

(assert (=> b!247508 m!303021))

(declare-fun m!303023 () Bool)

(assert (=> b!247508 m!303023))

(declare-fun m!303025 () Bool)

(assert (=> b!247508 m!303025))

(declare-fun m!303027 () Bool)

(assert (=> b!247508 m!303027))

(assert (=> b!247508 m!303013))

(declare-fun m!303029 () Bool)

(assert (=> b!247508 m!303029))

(declare-fun m!303031 () Bool)

(assert (=> b!247508 m!303031))

(assert (=> b!247508 m!303031))

(declare-fun m!303033 () Bool)

(assert (=> b!247508 m!303033))

(assert (=> b!247508 m!302995))

(declare-fun m!303035 () Bool)

(assert (=> b!247508 m!303035))

(assert (=> b!247508 m!303035))

(assert (=> b!247508 m!303025))

(declare-fun m!303037 () Bool)

(assert (=> b!247508 m!303037))

(declare-fun m!303039 () Bool)

(assert (=> d!69676 m!303039))

(declare-fun m!303041 () Bool)

(assert (=> d!69676 m!303041))

(declare-fun m!303043 () Bool)

(assert (=> d!69676 m!303043))

(assert (=> d!69676 m!303041))

(assert (=> d!69676 m!302685))

(assert (=> d!69676 m!302685))

(assert (=> d!69676 m!303041))

(declare-fun m!303045 () Bool)

(assert (=> d!69676 m!303045))

(assert (=> d!69676 m!302997))

(declare-fun m!303047 () Bool)

(assert (=> b!247506 m!303047))

(assert (=> bm!13027 m!302995))

(declare-fun m!303049 () Bool)

(assert (=> bm!13026 m!303049))

(assert (=> b!246938 d!69676))

(declare-fun bs!26578 () Bool)

(declare-fun b!247626 () Bool)

(assert (= bs!26578 (and b!247626 b!246948)))

(declare-fun lambda!8159 () Int)

(assert (=> bs!26578 (not (= lambda!8159 lambda!8121))))

(declare-fun bs!26579 () Bool)

(assert (= bs!26579 (and b!247626 b!246940)))

(assert (=> bs!26579 (= lambda!8159 lambda!8122)))

(declare-fun bs!26580 () Bool)

(assert (= bs!26580 (and b!247626 b!247508)))

(assert (=> bs!26580 (= lambda!8159 lambda!8156)))

(declare-fun bs!26581 () Bool)

(assert (= bs!26581 (and b!247626 d!69620)))

(assert (=> bs!26581 (not (= lambda!8159 lambda!8134))))

(declare-fun bs!26582 () Bool)

(assert (= bs!26582 (and b!247626 d!69648)))

(assert (=> bs!26582 (= lambda!8159 lambda!8147)))

(declare-fun bs!26583 () Bool)

(assert (= bs!26583 (and b!247626 d!69676)))

(assert (=> bs!26583 (not (= lambda!8159 lambda!8155))))

(declare-fun b!247634 () Bool)

(declare-fun e!153661 () Bool)

(assert (=> b!247634 (= e!153661 true)))

(declare-fun b!247633 () Bool)

(declare-fun e!153660 () Bool)

(assert (=> b!247633 (= e!153660 e!153661)))

(declare-fun b!247632 () Bool)

(declare-fun e!153659 () Bool)

(assert (=> b!247632 (= e!153659 e!153660)))

(assert (=> b!247626 e!153659))

(assert (= b!247633 b!247634))

(assert (= b!247632 b!247633))

(assert (= (and b!247626 ((_ is Cons!3635) rules!1920)) b!247632))

(assert (=> b!247634 (< (dynLambda!1769 order!2673 (toValue!1392 (transformation!689 (h!9032 rules!1920)))) (dynLambda!1770 order!2675 lambda!8159))))

(assert (=> b!247634 (< (dynLambda!1771 order!2677 (toChars!1251 (transformation!689 (h!9032 rules!1920)))) (dynLambda!1770 order!2675 lambda!8159))))

(assert (=> b!247626 true))

(declare-fun b!247622 () Bool)

(declare-fun e!153656 () List!3644)

(declare-fun call!13050 () List!3644)

(declare-fun lt!100572 () List!3644)

(assert (=> b!247622 (= e!153656 (++!928 call!13050 lt!100572))))

(declare-fun bm!13041 () Bool)

(declare-fun call!13048 () BalanceConc!2408)

(assert (=> bm!13041 (= call!13048 (charsOf!344 (h!9033 tokens!465)))))

(declare-fun e!153658 () BalanceConc!2408)

(declare-fun call!13046 () List!3644)

(declare-fun bm!13042 () Bool)

(declare-fun c!47218 () Bool)

(assert (=> bm!13042 (= call!13046 (list!1433 (ite c!47218 call!13048 e!153658)))))

(declare-fun bm!13043 () Bool)

(declare-fun c!47219 () Bool)

(assert (=> bm!13043 (= c!47219 c!47218)))

(declare-fun e!153655 () List!3644)

(declare-fun call!13047 () List!3644)

(assert (=> bm!13043 (= call!13050 (++!928 e!153655 (ite c!47218 lt!100572 call!13047)))))

(declare-fun b!247623 () Bool)

(declare-fun call!13049 () BalanceConc!2408)

(assert (=> b!247623 (= e!153658 call!13049)))

(declare-fun b!247624 () Bool)

(assert (=> b!247624 (= e!153656 Nil!3634)))

(assert (=> b!247624 (= (print!306 thiss!17480 (singletonSeq!241 (h!9033 tokens!465))) (printTailRec!269 thiss!17480 (singletonSeq!241 (h!9033 tokens!465)) 0 (BalanceConc!2409 Empty!1200)))))

(declare-fun lt!100569 () Unit!4410)

(declare-fun Unit!4422 () Unit!4410)

(assert (=> b!247624 (= lt!100569 Unit!4422)))

(declare-fun lt!100571 () Unit!4410)

(assert (=> b!247624 (= lt!100571 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!90 thiss!17480 rules!1920 call!13047 lt!100572))))

(assert (=> b!247624 false))

(declare-fun lt!100568 () Unit!4410)

(declare-fun Unit!4423 () Unit!4410)

(assert (=> b!247624 (= lt!100568 Unit!4423)))

(declare-fun b!247625 () Bool)

(declare-fun c!47216 () Bool)

(declare-fun lt!100570 () Option!740)

(assert (=> b!247625 (= c!47216 (and ((_ is Some!739) lt!100570) (not (= (_1!2240 (v!14506 lt!100570)) (h!9033 tokens!465)))))))

(declare-fun e!153654 () List!3644)

(assert (=> b!247625 (= e!153654 e!153656)))

(declare-fun bm!13044 () Bool)

(assert (=> bm!13044 (= call!13047 call!13046)))

(declare-fun c!47217 () Bool)

(assert (=> bm!13044 (= c!47217 c!47216)))

(declare-fun e!153657 () List!3644)

(assert (=> b!247626 (= e!153657 e!153654)))

(declare-fun lt!100567 () Unit!4410)

(assert (=> b!247626 (= lt!100567 (forallContained!256 tokens!465 lambda!8159 (h!9033 tokens!465)))))

(assert (=> b!247626 (= lt!100572 (printWithSeparatorTokenWhenNeededList!268 thiss!17480 rules!1920 (t!35202 tokens!465) separatorToken!170))))

(assert (=> b!247626 (= lt!100570 (maxPrefix!305 thiss!17480 rules!1920 (++!928 (list!1433 (charsOf!344 (h!9033 tokens!465))) lt!100572)))))

(assert (=> b!247626 (= c!47218 (and ((_ is Some!739) lt!100570) (= (_1!2240 (v!14506 lt!100570)) (h!9033 tokens!465))))))

(declare-fun bm!13045 () Bool)

(assert (=> bm!13045 (= call!13049 call!13048)))

(declare-fun b!247627 () Bool)

(assert (=> b!247627 (= e!153658 (charsOf!344 separatorToken!170))))

(declare-fun b!247628 () Bool)

(assert (=> b!247628 (= e!153654 call!13050)))

(declare-fun b!247629 () Bool)

(assert (=> b!247629 (= e!153655 call!13046)))

(declare-fun d!69736 () Bool)

(declare-fun c!47215 () Bool)

(assert (=> d!69736 (= c!47215 ((_ is Cons!3636) tokens!465))))

(assert (=> d!69736 (= (printWithSeparatorTokenWhenNeededList!268 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!153657)))

(declare-fun b!247630 () Bool)

(assert (=> b!247630 (= e!153657 Nil!3634)))

(declare-fun b!247631 () Bool)

(assert (=> b!247631 (= e!153655 (list!1433 call!13049))))

(assert (= (and d!69736 c!47215) b!247626))

(assert (= (and d!69736 (not c!47215)) b!247630))

(assert (= (and b!247626 c!47218) b!247628))

(assert (= (and b!247626 (not c!47218)) b!247625))

(assert (= (and b!247625 c!47216) b!247622))

(assert (= (and b!247625 (not c!47216)) b!247624))

(assert (= (or b!247622 b!247624) bm!13045))

(assert (= (or b!247622 b!247624) bm!13044))

(assert (= (and bm!13044 c!47217) b!247627))

(assert (= (and bm!13044 (not c!47217)) b!247623))

(assert (= (or b!247628 bm!13045) bm!13041))

(assert (= (or b!247628 bm!13044) bm!13042))

(assert (= (or b!247628 b!247622) bm!13043))

(assert (= (and bm!13043 c!47219) b!247629))

(assert (= (and bm!13043 (not c!47219)) b!247631))

(declare-fun m!303139 () Bool)

(assert (=> bm!13042 m!303139))

(declare-fun m!303141 () Bool)

(assert (=> bm!13043 m!303141))

(assert (=> b!247624 m!302135))

(assert (=> b!247624 m!302135))

(assert (=> b!247624 m!302709))

(assert (=> b!247624 m!302135))

(declare-fun m!303143 () Bool)

(assert (=> b!247624 m!303143))

(declare-fun m!303145 () Bool)

(assert (=> b!247624 m!303145))

(declare-fun m!303147 () Bool)

(assert (=> b!247622 m!303147))

(assert (=> bm!13041 m!302195))

(declare-fun m!303149 () Bool)

(assert (=> b!247626 m!303149))

(assert (=> b!247626 m!302197))

(declare-fun m!303151 () Bool)

(assert (=> b!247626 m!303151))

(assert (=> b!247626 m!302195))

(assert (=> b!247626 m!302195))

(assert (=> b!247626 m!302197))

(assert (=> b!247626 m!303151))

(declare-fun m!303153 () Bool)

(assert (=> b!247626 m!303153))

(assert (=> b!247626 m!302187))

(declare-fun m!303155 () Bool)

(assert (=> b!247631 m!303155))

(assert (=> b!247627 m!302189))

(assert (=> b!246938 d!69736))

(declare-fun d!69766 () Bool)

(assert (=> d!69766 (= (isEmpty!2222 (_2!2240 lt!100222)) ((_ is Nil!3634) (_2!2240 lt!100222)))))

(assert (=> b!246935 d!69766))

(declare-fun d!69768 () Bool)

(declare-fun c!47220 () Bool)

(assert (=> d!69768 (= c!47220 ((_ is IntegerValue!2133) (value!23952 (h!9033 tokens!465))))))

(declare-fun e!153662 () Bool)

(assert (=> d!69768 (= (inv!21 (value!23952 (h!9033 tokens!465))) e!153662)))

(declare-fun b!247635 () Bool)

(declare-fun res!114632 () Bool)

(declare-fun e!153664 () Bool)

(assert (=> b!247635 (=> res!114632 e!153664)))

(assert (=> b!247635 (= res!114632 (not ((_ is IntegerValue!2135) (value!23952 (h!9033 tokens!465)))))))

(declare-fun e!153663 () Bool)

(assert (=> b!247635 (= e!153663 e!153664)))

(declare-fun b!247636 () Bool)

(assert (=> b!247636 (= e!153663 (inv!17 (value!23952 (h!9033 tokens!465))))))

(declare-fun b!247637 () Bool)

(assert (=> b!247637 (= e!153664 (inv!15 (value!23952 (h!9033 tokens!465))))))

(declare-fun b!247638 () Bool)

(assert (=> b!247638 (= e!153662 (inv!16 (value!23952 (h!9033 tokens!465))))))

(declare-fun b!247639 () Bool)

(assert (=> b!247639 (= e!153662 e!153663)))

(declare-fun c!47221 () Bool)

(assert (=> b!247639 (= c!47221 ((_ is IntegerValue!2134) (value!23952 (h!9033 tokens!465))))))

(assert (= (and d!69768 c!47220) b!247638))

(assert (= (and d!69768 (not c!47220)) b!247639))

(assert (= (and b!247639 c!47221) b!247636))

(assert (= (and b!247639 (not c!47221)) b!247635))

(assert (= (and b!247635 (not res!114632)) b!247637))

(declare-fun m!303157 () Bool)

(assert (=> b!247636 m!303157))

(declare-fun m!303159 () Bool)

(assert (=> b!247637 m!303159))

(declare-fun m!303161 () Bool)

(assert (=> b!247638 m!303161))

(assert (=> b!246957 d!69768))

(declare-fun d!69770 () Bool)

(assert (=> d!69770 (= (get!1190 lt!100231) (v!14506 lt!100231))))

(assert (=> b!246931 d!69770))

(declare-fun d!69772 () Bool)

(assert (=> d!69772 (= (isDefined!591 lt!100231) (not (isEmpty!2228 lt!100231)))))

(declare-fun bs!26584 () Bool)

(assert (= bs!26584 d!69772))

(declare-fun m!303163 () Bool)

(assert (=> bs!26584 m!303163))

(assert (=> b!246931 d!69772))

(declare-fun b!247640 () Bool)

(declare-fun res!114634 () Bool)

(declare-fun e!153666 () Bool)

(assert (=> b!247640 (=> (not res!114634) (not e!153666))))

(declare-fun lt!100576 () Option!740)

(assert (=> b!247640 (= res!114634 (matchR!251 (regex!689 (rule!1266 (_1!2240 (get!1190 lt!100576)))) (list!1433 (charsOf!344 (_1!2240 (get!1190 lt!100576))))))))

(declare-fun b!247641 () Bool)

(declare-fun res!114639 () Bool)

(assert (=> b!247641 (=> (not res!114639) (not e!153666))))

(assert (=> b!247641 (= res!114639 (= (++!928 (list!1433 (charsOf!344 (_1!2240 (get!1190 lt!100576)))) (_2!2240 (get!1190 lt!100576))) lt!100223))))

(declare-fun b!247642 () Bool)

(declare-fun res!114633 () Bool)

(assert (=> b!247642 (=> (not res!114633) (not e!153666))))

(assert (=> b!247642 (= res!114633 (< (size!2884 (_2!2240 (get!1190 lt!100576))) (size!2884 lt!100223)))))

(declare-fun call!13051 () Option!740)

(declare-fun bm!13046 () Bool)

(assert (=> bm!13046 (= call!13051 (maxPrefixOneRule!125 thiss!17480 (h!9032 rules!1920) lt!100223))))

(declare-fun b!247643 () Bool)

(declare-fun e!153665 () Option!740)

(assert (=> b!247643 (= e!153665 call!13051)))

(declare-fun b!247644 () Bool)

(declare-fun lt!100573 () Option!740)

(declare-fun lt!100575 () Option!740)

(assert (=> b!247644 (= e!153665 (ite (and ((_ is None!739) lt!100573) ((_ is None!739) lt!100575)) None!739 (ite ((_ is None!739) lt!100575) lt!100573 (ite ((_ is None!739) lt!100573) lt!100575 (ite (>= (size!2879 (_1!2240 (v!14506 lt!100573))) (size!2879 (_1!2240 (v!14506 lt!100575)))) lt!100573 lt!100575)))))))

(assert (=> b!247644 (= lt!100573 call!13051)))

(assert (=> b!247644 (= lt!100575 (maxPrefix!305 thiss!17480 (t!35201 rules!1920) lt!100223))))

(declare-fun d!69774 () Bool)

(declare-fun e!153667 () Bool)

(assert (=> d!69774 e!153667))

(declare-fun res!114638 () Bool)

(assert (=> d!69774 (=> res!114638 e!153667)))

(assert (=> d!69774 (= res!114638 (isEmpty!2228 lt!100576))))

(assert (=> d!69774 (= lt!100576 e!153665)))

(declare-fun c!47222 () Bool)

(assert (=> d!69774 (= c!47222 (and ((_ is Cons!3635) rules!1920) ((_ is Nil!3635) (t!35201 rules!1920))))))

(declare-fun lt!100577 () Unit!4410)

(declare-fun lt!100574 () Unit!4410)

(assert (=> d!69774 (= lt!100577 lt!100574)))

(assert (=> d!69774 (isPrefix!373 lt!100223 lt!100223)))

(assert (=> d!69774 (= lt!100574 (lemmaIsPrefixRefl!191 lt!100223 lt!100223))))

(assert (=> d!69774 (rulesValidInductive!182 thiss!17480 rules!1920)))

(assert (=> d!69774 (= (maxPrefix!305 thiss!17480 rules!1920 lt!100223) lt!100576)))

(declare-fun b!247645 () Bool)

(assert (=> b!247645 (= e!153666 (contains!670 rules!1920 (rule!1266 (_1!2240 (get!1190 lt!100576)))))))

(declare-fun b!247646 () Bool)

(assert (=> b!247646 (= e!153667 e!153666)))

(declare-fun res!114635 () Bool)

(assert (=> b!247646 (=> (not res!114635) (not e!153666))))

(assert (=> b!247646 (= res!114635 (isDefined!591 lt!100576))))

(declare-fun b!247647 () Bool)

(declare-fun res!114636 () Bool)

(assert (=> b!247647 (=> (not res!114636) (not e!153666))))

(assert (=> b!247647 (= res!114636 (= (list!1433 (charsOf!344 (_1!2240 (get!1190 lt!100576)))) (originalCharacters!732 (_1!2240 (get!1190 lt!100576)))))))

(declare-fun b!247648 () Bool)

(declare-fun res!114637 () Bool)

(assert (=> b!247648 (=> (not res!114637) (not e!153666))))

(assert (=> b!247648 (= res!114637 (= (value!23952 (_1!2240 (get!1190 lt!100576))) (apply!684 (transformation!689 (rule!1266 (_1!2240 (get!1190 lt!100576)))) (seqFromList!755 (originalCharacters!732 (_1!2240 (get!1190 lt!100576)))))))))

(assert (= (and d!69774 c!47222) b!247643))

(assert (= (and d!69774 (not c!47222)) b!247644))

(assert (= (or b!247643 b!247644) bm!13046))

(assert (= (and d!69774 (not res!114638)) b!247646))

(assert (= (and b!247646 res!114635) b!247647))

(assert (= (and b!247647 res!114636) b!247642))

(assert (= (and b!247642 res!114633) b!247641))

(assert (= (and b!247641 res!114639) b!247648))

(assert (= (and b!247648 res!114637) b!247640))

(assert (= (and b!247640 res!114634) b!247645))

(declare-fun m!303165 () Bool)

(assert (=> bm!13046 m!303165))

(declare-fun m!303167 () Bool)

(assert (=> b!247648 m!303167))

(declare-fun m!303169 () Bool)

(assert (=> b!247648 m!303169))

(assert (=> b!247648 m!303169))

(declare-fun m!303171 () Bool)

(assert (=> b!247648 m!303171))

(assert (=> b!247647 m!303167))

(declare-fun m!303173 () Bool)

(assert (=> b!247647 m!303173))

(assert (=> b!247647 m!303173))

(declare-fun m!303175 () Bool)

(assert (=> b!247647 m!303175))

(assert (=> b!247642 m!303167))

(declare-fun m!303177 () Bool)

(assert (=> b!247642 m!303177))

(assert (=> b!247642 m!302419))

(declare-fun m!303179 () Bool)

(assert (=> b!247646 m!303179))

(declare-fun m!303181 () Bool)

(assert (=> d!69774 m!303181))

(declare-fun m!303183 () Bool)

(assert (=> d!69774 m!303183))

(declare-fun m!303185 () Bool)

(assert (=> d!69774 m!303185))

(assert (=> d!69774 m!302337))

(assert (=> b!247641 m!303167))

(assert (=> b!247641 m!303173))

(assert (=> b!247641 m!303173))

(assert (=> b!247641 m!303175))

(assert (=> b!247641 m!303175))

(declare-fun m!303187 () Bool)

(assert (=> b!247641 m!303187))

(declare-fun m!303189 () Bool)

(assert (=> b!247644 m!303189))

(assert (=> b!247640 m!303167))

(assert (=> b!247640 m!303173))

(assert (=> b!247640 m!303173))

(assert (=> b!247640 m!303175))

(assert (=> b!247640 m!303175))

(declare-fun m!303191 () Bool)

(assert (=> b!247640 m!303191))

(assert (=> b!247645 m!303167))

(declare-fun m!303193 () Bool)

(assert (=> b!247645 m!303193))

(assert (=> b!246931 d!69774))

(declare-fun d!69776 () Bool)

(assert (=> d!69776 (= (inv!4484 (tag!897 (h!9032 rules!1920))) (= (mod (str.len (value!23951 (tag!897 (h!9032 rules!1920)))) 2) 0))))

(assert (=> b!246952 d!69776))

(declare-fun d!69778 () Bool)

(declare-fun res!114640 () Bool)

(declare-fun e!153668 () Bool)

(assert (=> d!69778 (=> (not res!114640) (not e!153668))))

(assert (=> d!69778 (= res!114640 (semiInverseModEq!233 (toChars!1251 (transformation!689 (h!9032 rules!1920))) (toValue!1392 (transformation!689 (h!9032 rules!1920)))))))

(assert (=> d!69778 (= (inv!4488 (transformation!689 (h!9032 rules!1920))) e!153668)))

(declare-fun b!247649 () Bool)

(assert (=> b!247649 (= e!153668 (equivClasses!216 (toChars!1251 (transformation!689 (h!9032 rules!1920))) (toValue!1392 (transformation!689 (h!9032 rules!1920)))))))

(assert (= (and d!69778 res!114640) b!247649))

(declare-fun m!303195 () Bool)

(assert (=> d!69778 m!303195))

(declare-fun m!303197 () Bool)

(assert (=> b!247649 m!303197))

(assert (=> b!246952 d!69778))

(declare-fun d!69780 () Bool)

(assert (=> d!69780 (= (seqFromList!756 (t!35202 tokens!465)) (fromListB!273 (t!35202 tokens!465)))))

(declare-fun bs!26585 () Bool)

(assert (= bs!26585 d!69780))

(declare-fun m!303199 () Bool)

(assert (=> bs!26585 m!303199))

(assert (=> b!246953 d!69780))

(declare-fun d!69782 () Bool)

(assert (=> d!69782 (= (list!1433 (charsOf!344 separatorToken!170)) (list!1436 (c!47086 (charsOf!344 separatorToken!170))))))

(declare-fun bs!26586 () Bool)

(assert (= bs!26586 d!69782))

(declare-fun m!303201 () Bool)

(assert (=> bs!26586 m!303201))

(assert (=> b!246953 d!69782))

(declare-fun bs!26587 () Bool)

(declare-fun b!247654 () Bool)

(assert (= bs!26587 (and b!247654 b!246948)))

(declare-fun lambda!8160 () Int)

(assert (=> bs!26587 (not (= lambda!8160 lambda!8121))))

(declare-fun bs!26588 () Bool)

(assert (= bs!26588 (and b!247654 b!246940)))

(assert (=> bs!26588 (= lambda!8160 lambda!8122)))

(declare-fun bs!26589 () Bool)

(assert (= bs!26589 (and b!247654 d!69620)))

(assert (=> bs!26589 (not (= lambda!8160 lambda!8134))))

(declare-fun bs!26590 () Bool)

(assert (= bs!26590 (and b!247654 d!69648)))

(assert (=> bs!26590 (= lambda!8160 lambda!8147)))

(declare-fun bs!26591 () Bool)

(assert (= bs!26591 (and b!247654 d!69676)))

(assert (=> bs!26591 (not (= lambda!8160 lambda!8155))))

(declare-fun bs!26592 () Bool)

(assert (= bs!26592 (and b!247654 b!247508)))

(assert (=> bs!26592 (= lambda!8160 lambda!8156)))

(declare-fun bs!26593 () Bool)

(assert (= bs!26593 (and b!247654 b!247626)))

(assert (=> bs!26593 (= lambda!8160 lambda!8159)))

(declare-fun b!247662 () Bool)

(declare-fun e!153676 () Bool)

(assert (=> b!247662 (= e!153676 true)))

(declare-fun b!247661 () Bool)

(declare-fun e!153675 () Bool)

(assert (=> b!247661 (= e!153675 e!153676)))

(declare-fun b!247660 () Bool)

(declare-fun e!153674 () Bool)

(assert (=> b!247660 (= e!153674 e!153675)))

(assert (=> b!247654 e!153674))

(assert (= b!247661 b!247662))

(assert (= b!247660 b!247661))

(assert (= (and b!247654 ((_ is Cons!3635) rules!1920)) b!247660))

(assert (=> b!247662 (< (dynLambda!1769 order!2673 (toValue!1392 (transformation!689 (h!9032 rules!1920)))) (dynLambda!1770 order!2675 lambda!8160))))

(assert (=> b!247662 (< (dynLambda!1771 order!2677 (toChars!1251 (transformation!689 (h!9032 rules!1920)))) (dynLambda!1770 order!2675 lambda!8160))))

(assert (=> b!247654 true))

(declare-fun b!247650 () Bool)

(declare-fun e!153671 () List!3644)

(declare-fun call!13056 () List!3644)

(declare-fun lt!100583 () List!3644)

(assert (=> b!247650 (= e!153671 (++!928 call!13056 lt!100583))))

(declare-fun bm!13047 () Bool)

(declare-fun call!13054 () BalanceConc!2408)

(assert (=> bm!13047 (= call!13054 (charsOf!344 (h!9033 (t!35202 tokens!465))))))

(declare-fun bm!13048 () Bool)

(declare-fun e!153673 () BalanceConc!2408)

(declare-fun c!47226 () Bool)

(declare-fun call!13052 () List!3644)

(assert (=> bm!13048 (= call!13052 (list!1433 (ite c!47226 call!13054 e!153673)))))

(declare-fun bm!13049 () Bool)

(declare-fun c!47227 () Bool)

(assert (=> bm!13049 (= c!47227 c!47226)))

(declare-fun call!13053 () List!3644)

(declare-fun e!153670 () List!3644)

(assert (=> bm!13049 (= call!13056 (++!928 e!153670 (ite c!47226 lt!100583 call!13053)))))

(declare-fun b!247651 () Bool)

(declare-fun call!13055 () BalanceConc!2408)

(assert (=> b!247651 (= e!153673 call!13055)))

(declare-fun b!247652 () Bool)

(assert (=> b!247652 (= e!153671 Nil!3634)))

(assert (=> b!247652 (= (print!306 thiss!17480 (singletonSeq!241 (h!9033 (t!35202 tokens!465)))) (printTailRec!269 thiss!17480 (singletonSeq!241 (h!9033 (t!35202 tokens!465))) 0 (BalanceConc!2409 Empty!1200)))))

(declare-fun lt!100580 () Unit!4410)

(declare-fun Unit!4424 () Unit!4410)

(assert (=> b!247652 (= lt!100580 Unit!4424)))

(declare-fun lt!100582 () Unit!4410)

(assert (=> b!247652 (= lt!100582 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!90 thiss!17480 rules!1920 call!13053 lt!100583))))

(assert (=> b!247652 false))

(declare-fun lt!100579 () Unit!4410)

(declare-fun Unit!4425 () Unit!4410)

(assert (=> b!247652 (= lt!100579 Unit!4425)))

(declare-fun b!247653 () Bool)

(declare-fun c!47224 () Bool)

(declare-fun lt!100581 () Option!740)

(assert (=> b!247653 (= c!47224 (and ((_ is Some!739) lt!100581) (not (= (_1!2240 (v!14506 lt!100581)) (h!9033 (t!35202 tokens!465))))))))

(declare-fun e!153669 () List!3644)

(assert (=> b!247653 (= e!153669 e!153671)))

(declare-fun bm!13050 () Bool)

(assert (=> bm!13050 (= call!13053 call!13052)))

(declare-fun c!47225 () Bool)

(assert (=> bm!13050 (= c!47225 c!47224)))

(declare-fun e!153672 () List!3644)

(assert (=> b!247654 (= e!153672 e!153669)))

(declare-fun lt!100578 () Unit!4410)

(assert (=> b!247654 (= lt!100578 (forallContained!256 (t!35202 tokens!465) lambda!8160 (h!9033 (t!35202 tokens!465))))))

(assert (=> b!247654 (= lt!100583 (printWithSeparatorTokenWhenNeededList!268 thiss!17480 rules!1920 (t!35202 (t!35202 tokens!465)) separatorToken!170))))

(assert (=> b!247654 (= lt!100581 (maxPrefix!305 thiss!17480 rules!1920 (++!928 (list!1433 (charsOf!344 (h!9033 (t!35202 tokens!465)))) lt!100583)))))

(assert (=> b!247654 (= c!47226 (and ((_ is Some!739) lt!100581) (= (_1!2240 (v!14506 lt!100581)) (h!9033 (t!35202 tokens!465)))))))

(declare-fun bm!13051 () Bool)

(assert (=> bm!13051 (= call!13055 call!13054)))

(declare-fun b!247655 () Bool)

(assert (=> b!247655 (= e!153673 (charsOf!344 separatorToken!170))))

(declare-fun b!247656 () Bool)

(assert (=> b!247656 (= e!153669 call!13056)))

(declare-fun b!247657 () Bool)

(assert (=> b!247657 (= e!153670 call!13052)))

(declare-fun d!69784 () Bool)

(declare-fun c!47223 () Bool)

(assert (=> d!69784 (= c!47223 ((_ is Cons!3636) (t!35202 tokens!465)))))

(assert (=> d!69784 (= (printWithSeparatorTokenWhenNeededList!268 thiss!17480 rules!1920 (t!35202 tokens!465) separatorToken!170) e!153672)))

(declare-fun b!247658 () Bool)

(assert (=> b!247658 (= e!153672 Nil!3634)))

(declare-fun b!247659 () Bool)

(assert (=> b!247659 (= e!153670 (list!1433 call!13055))))

(assert (= (and d!69784 c!47223) b!247654))

(assert (= (and d!69784 (not c!47223)) b!247658))

(assert (= (and b!247654 c!47226) b!247656))

(assert (= (and b!247654 (not c!47226)) b!247653))

(assert (= (and b!247653 c!47224) b!247650))

(assert (= (and b!247653 (not c!47224)) b!247652))

(assert (= (or b!247650 b!247652) bm!13051))

(assert (= (or b!247650 b!247652) bm!13050))

(assert (= (and bm!13050 c!47225) b!247655))

(assert (= (and bm!13050 (not c!47225)) b!247651))

(assert (= (or b!247656 bm!13051) bm!13047))

(assert (= (or b!247656 bm!13050) bm!13048))

(assert (= (or b!247656 b!247650) bm!13049))

(assert (= (and bm!13049 c!47227) b!247657))

(assert (= (and bm!13049 (not c!47227)) b!247659))

(declare-fun m!303203 () Bool)

(assert (=> bm!13048 m!303203))

(declare-fun m!303205 () Bool)

(assert (=> bm!13049 m!303205))

(declare-fun m!303207 () Bool)

(assert (=> b!247652 m!303207))

(assert (=> b!247652 m!303207))

(declare-fun m!303209 () Bool)

(assert (=> b!247652 m!303209))

(assert (=> b!247652 m!303207))

(declare-fun m!303211 () Bool)

(assert (=> b!247652 m!303211))

(declare-fun m!303213 () Bool)

(assert (=> b!247652 m!303213))

(declare-fun m!303215 () Bool)

(assert (=> b!247650 m!303215))

(declare-fun m!303217 () Bool)

(assert (=> bm!13047 m!303217))

(declare-fun m!303219 () Bool)

(assert (=> b!247654 m!303219))

(declare-fun m!303221 () Bool)

(assert (=> b!247654 m!303221))

(declare-fun m!303223 () Bool)

(assert (=> b!247654 m!303223))

(assert (=> b!247654 m!303217))

(assert (=> b!247654 m!303217))

(assert (=> b!247654 m!303221))

(assert (=> b!247654 m!303223))

(declare-fun m!303225 () Bool)

(assert (=> b!247654 m!303225))

(declare-fun m!303227 () Bool)

(assert (=> b!247654 m!303227))

(declare-fun m!303229 () Bool)

(assert (=> b!247659 m!303229))

(assert (=> b!247655 m!302189))

(assert (=> b!246953 d!69784))

(declare-fun bs!26594 () Bool)

(declare-fun d!69786 () Bool)

(assert (= bs!26594 (and d!69786 b!246948)))

(declare-fun lambda!8161 () Int)

(assert (=> bs!26594 (= lambda!8161 lambda!8121)))

(declare-fun bs!26595 () Bool)

(assert (= bs!26595 (and d!69786 b!247654)))

(assert (=> bs!26595 (not (= lambda!8161 lambda!8160))))

(declare-fun bs!26596 () Bool)

(assert (= bs!26596 (and d!69786 b!246940)))

(assert (=> bs!26596 (not (= lambda!8161 lambda!8122))))

(declare-fun bs!26597 () Bool)

(assert (= bs!26597 (and d!69786 d!69620)))

(assert (=> bs!26597 (= lambda!8161 lambda!8134)))

(declare-fun bs!26598 () Bool)

(assert (= bs!26598 (and d!69786 d!69648)))

(assert (=> bs!26598 (not (= lambda!8161 lambda!8147))))

(declare-fun bs!26599 () Bool)

(assert (= bs!26599 (and d!69786 d!69676)))

(assert (=> bs!26599 (= lambda!8161 lambda!8155)))

(declare-fun bs!26600 () Bool)

(assert (= bs!26600 (and d!69786 b!247508)))

(assert (=> bs!26600 (not (= lambda!8161 lambda!8156))))

(declare-fun bs!26601 () Bool)

(assert (= bs!26601 (and d!69786 b!247626)))

(assert (=> bs!26601 (not (= lambda!8161 lambda!8159))))

(declare-fun bs!26602 () Bool)

(declare-fun b!247669 () Bool)

(assert (= bs!26602 (and b!247669 d!69786)))

(declare-fun lambda!8162 () Int)

(assert (=> bs!26602 (not (= lambda!8162 lambda!8161))))

(declare-fun bs!26603 () Bool)

(assert (= bs!26603 (and b!247669 b!246948)))

(assert (=> bs!26603 (not (= lambda!8162 lambda!8121))))

(declare-fun bs!26604 () Bool)

(assert (= bs!26604 (and b!247669 b!247654)))

(assert (=> bs!26604 (= lambda!8162 lambda!8160)))

(declare-fun bs!26605 () Bool)

(assert (= bs!26605 (and b!247669 b!246940)))

(assert (=> bs!26605 (= lambda!8162 lambda!8122)))

(declare-fun bs!26606 () Bool)

(assert (= bs!26606 (and b!247669 d!69620)))

(assert (=> bs!26606 (not (= lambda!8162 lambda!8134))))

(declare-fun bs!26607 () Bool)

(assert (= bs!26607 (and b!247669 d!69648)))

(assert (=> bs!26607 (= lambda!8162 lambda!8147)))

(declare-fun bs!26608 () Bool)

(assert (= bs!26608 (and b!247669 d!69676)))

(assert (=> bs!26608 (not (= lambda!8162 lambda!8155))))

(declare-fun bs!26609 () Bool)

(assert (= bs!26609 (and b!247669 b!247508)))

(assert (=> bs!26609 (= lambda!8162 lambda!8156)))

(declare-fun bs!26610 () Bool)

(assert (= bs!26610 (and b!247669 b!247626)))

(assert (=> bs!26610 (= lambda!8162 lambda!8159)))

(declare-fun b!247674 () Bool)

(declare-fun e!153685 () Bool)

(assert (=> b!247674 (= e!153685 true)))

(declare-fun b!247673 () Bool)

(declare-fun e!153684 () Bool)

(assert (=> b!247673 (= e!153684 e!153685)))

(declare-fun b!247672 () Bool)

(declare-fun e!153683 () Bool)

(assert (=> b!247672 (= e!153683 e!153684)))

(assert (=> b!247669 e!153683))

(assert (= b!247673 b!247674))

(assert (= b!247672 b!247673))

(assert (= (and b!247669 ((_ is Cons!3635) rules!1920)) b!247672))

(assert (=> b!247674 (< (dynLambda!1769 order!2673 (toValue!1392 (transformation!689 (h!9032 rules!1920)))) (dynLambda!1770 order!2675 lambda!8162))))

(assert (=> b!247674 (< (dynLambda!1771 order!2677 (toChars!1251 (transformation!689 (h!9032 rules!1920)))) (dynLambda!1770 order!2675 lambda!8162))))

(assert (=> b!247669 true))

(declare-fun call!13060 () Token!1122)

(declare-fun call!13057 () BalanceConc!2408)

(declare-fun bm!13052 () Bool)

(declare-fun c!47230 () Bool)

(assert (=> bm!13052 (= call!13057 (charsOf!344 (ite c!47230 separatorToken!170 call!13060)))))

(declare-fun b!247663 () Bool)

(declare-fun e!153681 () BalanceConc!2408)

(declare-fun call!13059 () BalanceConc!2408)

(assert (=> b!247663 (= e!153681 call!13059)))

(declare-fun lt!100597 () BalanceConc!2408)

(assert (=> d!69786 (= (list!1433 lt!100597) (printWithSeparatorTokenWhenNeededList!268 thiss!17480 rules!1920 (dropList!142 (seqFromList!756 (t!35202 tokens!465)) 0) separatorToken!170))))

(declare-fun e!153680 () BalanceConc!2408)

(assert (=> d!69786 (= lt!100597 e!153680)))

(declare-fun c!47229 () Bool)

(assert (=> d!69786 (= c!47229 (>= 0 (size!2885 (seqFromList!756 (t!35202 tokens!465)))))))

(declare-fun lt!100591 () Unit!4410)

(assert (=> d!69786 (= lt!100591 (lemmaContentSubsetPreservesForall!86 (list!1432 (seqFromList!756 (t!35202 tokens!465))) (dropList!142 (seqFromList!756 (t!35202 tokens!465)) 0) lambda!8161))))

(declare-fun e!153682 () Bool)

(assert (=> d!69786 e!153682))

(declare-fun res!114643 () Bool)

(assert (=> d!69786 (=> (not res!114643) (not e!153682))))

(assert (=> d!69786 (= res!114643 (>= 0 0))))

(assert (=> d!69786 (= (printWithSeparatorTokenWhenNeededRec!258 thiss!17480 rules!1920 (seqFromList!756 (t!35202 tokens!465)) separatorToken!170 0) lt!100597)))

(declare-fun b!247664 () Bool)

(declare-fun e!153679 () Bool)

(assert (=> b!247664 (= c!47230 e!153679)))

(declare-fun res!114641 () Bool)

(assert (=> b!247664 (=> (not res!114641) (not e!153679))))

(declare-fun lt!100594 () Option!741)

(assert (=> b!247664 (= res!114641 ((_ is Some!740) lt!100594))))

(declare-fun e!153677 () BalanceConc!2408)

(assert (=> b!247664 (= e!153681 e!153677)))

(declare-fun b!247665 () Bool)

(declare-fun call!13061 () Token!1122)

(assert (=> b!247665 (= e!153679 (not (= (_1!2241 (v!14507 lt!100594)) call!13061)))))

(declare-fun b!247666 () Bool)

(assert (=> b!247666 (= e!153680 (BalanceConc!2409 Empty!1200))))

(declare-fun b!247667 () Bool)

(declare-fun lt!100596 () BalanceConc!2408)

(assert (=> b!247667 (= e!153677 (++!930 call!13059 lt!100596))))

(declare-fun bm!13053 () Bool)

(assert (=> bm!13053 (= call!13061 (apply!685 (seqFromList!756 (t!35202 tokens!465)) 0))))

(declare-fun c!47228 () Bool)

(declare-fun call!13058 () BalanceConc!2408)

(declare-fun bm!13054 () Bool)

(assert (=> bm!13054 (= call!13059 (++!930 call!13058 (ite c!47228 lt!100596 call!13057)))))

(declare-fun b!247668 () Bool)

(assert (=> b!247668 (= e!153677 (BalanceConc!2409 Empty!1200))))

(assert (=> b!247668 (= (print!306 thiss!17480 (singletonSeq!241 call!13060)) (printTailRec!269 thiss!17480 (singletonSeq!241 call!13060) 0 (BalanceConc!2409 Empty!1200)))))

(declare-fun lt!100590 () Unit!4410)

(declare-fun Unit!4426 () Unit!4410)

(assert (=> b!247668 (= lt!100590 Unit!4426)))

(declare-fun lt!100588 () Unit!4410)

(assert (=> b!247668 (= lt!100588 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!90 thiss!17480 rules!1920 (list!1433 call!13057) (list!1433 lt!100596)))))

(assert (=> b!247668 false))

(declare-fun lt!100595 () Unit!4410)

(declare-fun Unit!4427 () Unit!4410)

(assert (=> b!247668 (= lt!100595 Unit!4427)))

(assert (=> b!247669 (= e!153680 e!153681)))

(declare-fun lt!100593 () List!3646)

(assert (=> b!247669 (= lt!100593 (list!1432 (seqFromList!756 (t!35202 tokens!465))))))

(declare-fun lt!100585 () Unit!4410)

(assert (=> b!247669 (= lt!100585 (lemmaDropApply!182 lt!100593 0))))

(assert (=> b!247669 (= (head!850 (drop!195 lt!100593 0)) (apply!686 lt!100593 0))))

(declare-fun lt!100589 () Unit!4410)

(assert (=> b!247669 (= lt!100589 lt!100585)))

(declare-fun lt!100592 () List!3646)

(assert (=> b!247669 (= lt!100592 (list!1432 (seqFromList!756 (t!35202 tokens!465))))))

(declare-fun lt!100586 () Unit!4410)

(assert (=> b!247669 (= lt!100586 (lemmaDropTail!174 lt!100592 0))))

(assert (=> b!247669 (= (tail!450 (drop!195 lt!100592 0)) (drop!195 lt!100592 (+ 0 1)))))

(declare-fun lt!100584 () Unit!4410)

(assert (=> b!247669 (= lt!100584 lt!100586)))

(declare-fun lt!100587 () Unit!4410)

(assert (=> b!247669 (= lt!100587 (forallContained!256 (list!1432 (seqFromList!756 (t!35202 tokens!465))) lambda!8162 (apply!685 (seqFromList!756 (t!35202 tokens!465)) 0)))))

(assert (=> b!247669 (= lt!100596 (printWithSeparatorTokenWhenNeededRec!258 thiss!17480 rules!1920 (seqFromList!756 (t!35202 tokens!465)) separatorToken!170 (+ 0 1)))))

(assert (=> b!247669 (= lt!100594 (maxPrefixZipperSequence!268 thiss!17480 rules!1920 (++!930 (charsOf!344 (apply!685 (seqFromList!756 (t!35202 tokens!465)) 0)) lt!100596)))))

(declare-fun res!114642 () Bool)

(assert (=> b!247669 (= res!114642 ((_ is Some!740) lt!100594))))

(declare-fun e!153678 () Bool)

(assert (=> b!247669 (=> (not res!114642) (not e!153678))))

(assert (=> b!247669 (= c!47228 e!153678)))

(declare-fun bm!13055 () Bool)

(assert (=> bm!13055 (= call!13060 call!13061)))

(declare-fun b!247670 () Bool)

(assert (=> b!247670 (= e!153678 (= (_1!2241 (v!14507 lt!100594)) (apply!685 (seqFromList!756 (t!35202 tokens!465)) 0)))))

(declare-fun b!247671 () Bool)

(assert (=> b!247671 (= e!153682 (<= 0 (size!2885 (seqFromList!756 (t!35202 tokens!465)))))))

(declare-fun bm!13056 () Bool)

(assert (=> bm!13056 (= call!13058 (charsOf!344 (ite c!47228 call!13061 call!13060)))))

(assert (= (and d!69786 res!114643) b!247671))

(assert (= (and d!69786 c!47229) b!247666))

(assert (= (and d!69786 (not c!47229)) b!247669))

(assert (= (and b!247669 res!114642) b!247670))

(assert (= (and b!247669 c!47228) b!247663))

(assert (= (and b!247669 (not c!47228)) b!247664))

(assert (= (and b!247664 res!114641) b!247665))

(assert (= (and b!247664 c!47230) b!247667))

(assert (= (and b!247664 (not c!47230)) b!247668))

(assert (= (or b!247667 b!247668) bm!13055))

(assert (= (or b!247667 b!247668) bm!13052))

(assert (= (or b!247663 b!247665 bm!13055) bm!13053))

(assert (= (or b!247663 b!247667) bm!13056))

(assert (= (or b!247663 b!247667) bm!13054))

(declare-fun m!303231 () Bool)

(assert (=> bm!13054 m!303231))

(assert (=> b!247670 m!302199))

(declare-fun m!303233 () Bool)

(assert (=> b!247670 m!303233))

(assert (=> b!247671 m!302199))

(declare-fun m!303235 () Bool)

(assert (=> b!247671 m!303235))

(declare-fun m!303237 () Bool)

(assert (=> b!247668 m!303237))

(declare-fun m!303239 () Bool)

(assert (=> b!247668 m!303239))

(declare-fun m!303241 () Bool)

(assert (=> b!247668 m!303241))

(declare-fun m!303243 () Bool)

(assert (=> b!247668 m!303243))

(assert (=> b!247668 m!303239))

(assert (=> b!247668 m!303239))

(declare-fun m!303245 () Bool)

(assert (=> b!247668 m!303245))

(assert (=> b!247668 m!303243))

(assert (=> b!247668 m!303237))

(declare-fun m!303247 () Bool)

(assert (=> b!247668 m!303247))

(declare-fun m!303249 () Bool)

(assert (=> bm!13056 m!303249))

(declare-fun m!303251 () Bool)

(assert (=> b!247669 m!303251))

(assert (=> b!247669 m!302199))

(declare-fun m!303253 () Bool)

(assert (=> b!247669 m!303253))

(declare-fun m!303255 () Bool)

(assert (=> b!247669 m!303255))

(assert (=> b!247669 m!303253))

(assert (=> b!247669 m!303233))

(declare-fun m!303257 () Bool)

(assert (=> b!247669 m!303257))

(assert (=> b!247669 m!302199))

(assert (=> b!247669 m!303233))

(declare-fun m!303259 () Bool)

(assert (=> b!247669 m!303259))

(assert (=> b!247669 m!302199))

(declare-fun m!303261 () Bool)

(assert (=> b!247669 m!303261))

(declare-fun m!303263 () Bool)

(assert (=> b!247669 m!303263))

(declare-fun m!303265 () Bool)

(assert (=> b!247669 m!303265))

(declare-fun m!303267 () Bool)

(assert (=> b!247669 m!303267))

(assert (=> b!247669 m!303251))

(declare-fun m!303269 () Bool)

(assert (=> b!247669 m!303269))

(declare-fun m!303271 () Bool)

(assert (=> b!247669 m!303271))

(assert (=> b!247669 m!303271))

(declare-fun m!303273 () Bool)

(assert (=> b!247669 m!303273))

(assert (=> b!247669 m!303233))

(declare-fun m!303275 () Bool)

(assert (=> b!247669 m!303275))

(assert (=> b!247669 m!303275))

(assert (=> b!247669 m!303265))

(declare-fun m!303277 () Bool)

(assert (=> b!247669 m!303277))

(declare-fun m!303279 () Bool)

(assert (=> d!69786 m!303279))

(declare-fun m!303281 () Bool)

(assert (=> d!69786 m!303281))

(declare-fun m!303283 () Bool)

(assert (=> d!69786 m!303283))

(assert (=> d!69786 m!302199))

(assert (=> d!69786 m!303281))

(assert (=> d!69786 m!302199))

(assert (=> d!69786 m!303253))

(assert (=> d!69786 m!303253))

(assert (=> d!69786 m!303281))

(declare-fun m!303285 () Bool)

(assert (=> d!69786 m!303285))

(assert (=> d!69786 m!302199))

(assert (=> d!69786 m!303235))

(declare-fun m!303287 () Bool)

(assert (=> b!247667 m!303287))

(assert (=> bm!13053 m!302199))

(assert (=> bm!13053 m!303233))

(declare-fun m!303289 () Bool)

(assert (=> bm!13052 m!303289))

(assert (=> b!246953 d!69786))

(declare-fun d!69788 () Bool)

(declare-fun lt!100600 () BalanceConc!2408)

(assert (=> d!69788 (= (list!1433 lt!100600) (originalCharacters!732 separatorToken!170))))

(assert (=> d!69788 (= lt!100600 (dynLambda!1773 (toChars!1251 (transformation!689 (rule!1266 separatorToken!170))) (value!23952 separatorToken!170)))))

(assert (=> d!69788 (= (charsOf!344 separatorToken!170) lt!100600)))

(declare-fun b_lambda!7253 () Bool)

(assert (=> (not b_lambda!7253) (not d!69788)))

(assert (=> d!69788 t!35205))

(declare-fun b_and!18647 () Bool)

(assert (= b_and!18609 (and (=> t!35205 result!15992) b_and!18647)))

(assert (=> d!69788 t!35207))

(declare-fun b_and!18649 () Bool)

(assert (= b_and!18611 (and (=> t!35207 result!15996) b_and!18649)))

(assert (=> d!69788 t!35209))

(declare-fun b_and!18651 () Bool)

(assert (= b_and!18613 (and (=> t!35209 result!15998) b_and!18651)))

(declare-fun m!303291 () Bool)

(assert (=> d!69788 m!303291))

(assert (=> d!69788 m!302361))

(assert (=> b!246953 d!69788))

(declare-fun b!247675 () Bool)

(declare-fun e!153686 () List!3644)

(assert (=> b!247675 (= e!153686 lt!100228)))

(declare-fun b!247676 () Bool)

(assert (=> b!247676 (= e!153686 (Cons!3634 (h!9031 lt!100238) (++!928 (t!35200 lt!100238) lt!100228)))))

(declare-fun e!153687 () Bool)

(declare-fun b!247678 () Bool)

(declare-fun lt!100601 () List!3644)

(assert (=> b!247678 (= e!153687 (or (not (= lt!100228 Nil!3634)) (= lt!100601 lt!100238)))))

(declare-fun d!69790 () Bool)

(assert (=> d!69790 e!153687))

(declare-fun res!114645 () Bool)

(assert (=> d!69790 (=> (not res!114645) (not e!153687))))

(assert (=> d!69790 (= res!114645 (= (content!506 lt!100601) ((_ map or) (content!506 lt!100238) (content!506 lt!100228))))))

(assert (=> d!69790 (= lt!100601 e!153686)))

(declare-fun c!47231 () Bool)

(assert (=> d!69790 (= c!47231 ((_ is Nil!3634) lt!100238))))

(assert (=> d!69790 (= (++!928 lt!100238 lt!100228) lt!100601)))

(declare-fun b!247677 () Bool)

(declare-fun res!114644 () Bool)

(assert (=> b!247677 (=> (not res!114644) (not e!153687))))

(assert (=> b!247677 (= res!114644 (= (size!2884 lt!100601) (+ (size!2884 lt!100238) (size!2884 lt!100228))))))

(assert (= (and d!69790 c!47231) b!247675))

(assert (= (and d!69790 (not c!47231)) b!247676))

(assert (= (and d!69790 res!114645) b!247677))

(assert (= (and b!247677 res!114644) b!247678))

(declare-fun m!303293 () Bool)

(assert (=> b!247676 m!303293))

(declare-fun m!303295 () Bool)

(assert (=> d!69790 m!303295))

(declare-fun m!303297 () Bool)

(assert (=> d!69790 m!303297))

(assert (=> d!69790 m!302415))

(declare-fun m!303299 () Bool)

(assert (=> b!247677 m!303299))

(declare-fun m!303301 () Bool)

(assert (=> b!247677 m!303301))

(assert (=> b!247677 m!302421))

(assert (=> b!246953 d!69790))

(declare-fun b!247679 () Bool)

(declare-fun e!153688 () List!3644)

(assert (=> b!247679 (= e!153688 lt!100238)))

(declare-fun b!247680 () Bool)

(assert (=> b!247680 (= e!153688 (Cons!3634 (h!9031 lt!100223) (++!928 (t!35200 lt!100223) lt!100238)))))

(declare-fun e!153689 () Bool)

(declare-fun b!247682 () Bool)

(declare-fun lt!100602 () List!3644)

(assert (=> b!247682 (= e!153689 (or (not (= lt!100238 Nil!3634)) (= lt!100602 lt!100223)))))

(declare-fun d!69792 () Bool)

(assert (=> d!69792 e!153689))

(declare-fun res!114647 () Bool)

(assert (=> d!69792 (=> (not res!114647) (not e!153689))))

(assert (=> d!69792 (= res!114647 (= (content!506 lt!100602) ((_ map or) (content!506 lt!100223) (content!506 lt!100238))))))

(assert (=> d!69792 (= lt!100602 e!153688)))

(declare-fun c!47232 () Bool)

(assert (=> d!69792 (= c!47232 ((_ is Nil!3634) lt!100223))))

(assert (=> d!69792 (= (++!928 lt!100223 lt!100238) lt!100602)))

(declare-fun b!247681 () Bool)

(declare-fun res!114646 () Bool)

(assert (=> b!247681 (=> (not res!114646) (not e!153689))))

(assert (=> b!247681 (= res!114646 (= (size!2884 lt!100602) (+ (size!2884 lt!100223) (size!2884 lt!100238))))))

(assert (= (and d!69792 c!47232) b!247679))

(assert (= (and d!69792 (not c!47232)) b!247680))

(assert (= (and d!69792 res!114647) b!247681))

(assert (= (and b!247681 res!114646) b!247682))

(declare-fun m!303303 () Bool)

(assert (=> b!247680 m!303303))

(declare-fun m!303305 () Bool)

(assert (=> d!69792 m!303305))

(assert (=> d!69792 m!302413))

(assert (=> d!69792 m!303297))

(declare-fun m!303307 () Bool)

(assert (=> b!247681 m!303307))

(assert (=> b!247681 m!302419))

(assert (=> b!247681 m!303301))

(assert (=> b!246953 d!69792))

(declare-fun b!247683 () Bool)

(declare-fun e!153690 () List!3644)

(assert (=> b!247683 (= e!153690 lt!100242)))

(declare-fun b!247684 () Bool)

(assert (=> b!247684 (= e!153690 (Cons!3634 (h!9031 lt!100223) (++!928 (t!35200 lt!100223) lt!100242)))))

(declare-fun e!153691 () Bool)

(declare-fun b!247686 () Bool)

(declare-fun lt!100603 () List!3644)

(assert (=> b!247686 (= e!153691 (or (not (= lt!100242 Nil!3634)) (= lt!100603 lt!100223)))))

(declare-fun d!69794 () Bool)

(assert (=> d!69794 e!153691))

(declare-fun res!114649 () Bool)

(assert (=> d!69794 (=> (not res!114649) (not e!153691))))

(assert (=> d!69794 (= res!114649 (= (content!506 lt!100603) ((_ map or) (content!506 lt!100223) (content!506 lt!100242))))))

(assert (=> d!69794 (= lt!100603 e!153690)))

(declare-fun c!47233 () Bool)

(assert (=> d!69794 (= c!47233 ((_ is Nil!3634) lt!100223))))

(assert (=> d!69794 (= (++!928 lt!100223 lt!100242) lt!100603)))

(declare-fun b!247685 () Bool)

(declare-fun res!114648 () Bool)

(assert (=> b!247685 (=> (not res!114648) (not e!153691))))

(assert (=> b!247685 (= res!114648 (= (size!2884 lt!100603) (+ (size!2884 lt!100223) (size!2884 lt!100242))))))

(assert (= (and d!69794 c!47233) b!247683))

(assert (= (and d!69794 (not c!47233)) b!247684))

(assert (= (and d!69794 res!114649) b!247685))

(assert (= (and b!247685 res!114648) b!247686))

(declare-fun m!303309 () Bool)

(assert (=> b!247684 m!303309))

(declare-fun m!303311 () Bool)

(assert (=> d!69794 m!303311))

(assert (=> d!69794 m!302413))

(declare-fun m!303313 () Bool)

(assert (=> d!69794 m!303313))

(declare-fun m!303315 () Bool)

(assert (=> b!247685 m!303315))

(assert (=> b!247685 m!302419))

(declare-fun m!303317 () Bool)

(assert (=> b!247685 m!303317))

(assert (=> b!246953 d!69794))

(declare-fun d!69796 () Bool)

(assert (=> d!69796 (= (list!1433 (charsOf!344 (h!9033 tokens!465))) (list!1436 (c!47086 (charsOf!344 (h!9033 tokens!465)))))))

(declare-fun bs!26611 () Bool)

(assert (= bs!26611 d!69796))

(declare-fun m!303319 () Bool)

(assert (=> bs!26611 m!303319))

(assert (=> b!246953 d!69796))

(declare-fun d!69798 () Bool)

(declare-fun lt!100604 () BalanceConc!2408)

(assert (=> d!69798 (= (list!1433 lt!100604) (originalCharacters!732 (h!9033 tokens!465)))))

(assert (=> d!69798 (= lt!100604 (dynLambda!1773 (toChars!1251 (transformation!689 (rule!1266 (h!9033 tokens!465)))) (value!23952 (h!9033 tokens!465))))))

(assert (=> d!69798 (= (charsOf!344 (h!9033 tokens!465)) lt!100604)))

(declare-fun b_lambda!7255 () Bool)

(assert (=> (not b_lambda!7255) (not d!69798)))

(declare-fun t!35254 () Bool)

(declare-fun tb!12715 () Bool)

(assert (=> (and b!246927 (= (toChars!1251 (transformation!689 (rule!1266 (h!9033 tokens!465)))) (toChars!1251 (transformation!689 (rule!1266 (h!9033 tokens!465))))) t!35254) tb!12715))

(declare-fun b!247687 () Bool)

(declare-fun e!153692 () Bool)

(declare-fun tp!96547 () Bool)

(assert (=> b!247687 (= e!153692 (and (inv!4489 (c!47086 (dynLambda!1773 (toChars!1251 (transformation!689 (rule!1266 (h!9033 tokens!465)))) (value!23952 (h!9033 tokens!465))))) tp!96547))))

(declare-fun result!16030 () Bool)

(assert (=> tb!12715 (= result!16030 (and (inv!4490 (dynLambda!1773 (toChars!1251 (transformation!689 (rule!1266 (h!9033 tokens!465)))) (value!23952 (h!9033 tokens!465)))) e!153692))))

(assert (= tb!12715 b!247687))

(declare-fun m!303321 () Bool)

(assert (=> b!247687 m!303321))

(declare-fun m!303323 () Bool)

(assert (=> tb!12715 m!303323))

(assert (=> d!69798 t!35254))

(declare-fun b_and!18653 () Bool)

(assert (= b_and!18647 (and (=> t!35254 result!16030) b_and!18653)))

(declare-fun tb!12717 () Bool)

(declare-fun t!35256 () Bool)

(assert (=> (and b!246955 (= (toChars!1251 (transformation!689 (rule!1266 separatorToken!170))) (toChars!1251 (transformation!689 (rule!1266 (h!9033 tokens!465))))) t!35256) tb!12717))

(declare-fun result!16032 () Bool)

(assert (= result!16032 result!16030))

(assert (=> d!69798 t!35256))

(declare-fun b_and!18655 () Bool)

(assert (= b_and!18649 (and (=> t!35256 result!16032) b_and!18655)))

(declare-fun t!35258 () Bool)

(declare-fun tb!12719 () Bool)

(assert (=> (and b!246945 (= (toChars!1251 (transformation!689 (h!9032 rules!1920))) (toChars!1251 (transformation!689 (rule!1266 (h!9033 tokens!465))))) t!35258) tb!12719))

(declare-fun result!16034 () Bool)

(assert (= result!16034 result!16030))

(assert (=> d!69798 t!35258))

(declare-fun b_and!18657 () Bool)

(assert (= b_and!18651 (and (=> t!35258 result!16034) b_and!18657)))

(declare-fun m!303325 () Bool)

(assert (=> d!69798 m!303325))

(declare-fun m!303327 () Bool)

(assert (=> d!69798 m!303327))

(assert (=> b!246953 d!69798))

(declare-fun d!69800 () Bool)

(assert (=> d!69800 (= (++!928 (++!928 lt!100223 lt!100238) lt!100228) (++!928 lt!100223 (++!928 lt!100238 lt!100228)))))

(declare-fun lt!100607 () Unit!4410)

(declare-fun choose!2338 (List!3644 List!3644 List!3644) Unit!4410)

(assert (=> d!69800 (= lt!100607 (choose!2338 lt!100223 lt!100238 lt!100228))))

(assert (=> d!69800 (= (lemmaConcatAssociativity!394 lt!100223 lt!100238 lt!100228) lt!100607)))

(declare-fun bs!26612 () Bool)

(assert (= bs!26612 d!69800))

(assert (=> bs!26612 m!302185))

(declare-fun m!303329 () Bool)

(assert (=> bs!26612 m!303329))

(declare-fun m!303331 () Bool)

(assert (=> bs!26612 m!303331))

(assert (=> bs!26612 m!302185))

(assert (=> bs!26612 m!302191))

(assert (=> bs!26612 m!302193))

(assert (=> bs!26612 m!302191))

(assert (=> b!246953 d!69800))

(declare-fun b!247688 () Bool)

(declare-fun e!153693 () List!3644)

(assert (=> b!247688 (= e!153693 lt!100228)))

(declare-fun b!247689 () Bool)

(assert (=> b!247689 (= e!153693 (Cons!3634 (h!9031 (++!928 lt!100223 lt!100238)) (++!928 (t!35200 (++!928 lt!100223 lt!100238)) lt!100228)))))

(declare-fun b!247691 () Bool)

(declare-fun lt!100608 () List!3644)

(declare-fun e!153694 () Bool)

(assert (=> b!247691 (= e!153694 (or (not (= lt!100228 Nil!3634)) (= lt!100608 (++!928 lt!100223 lt!100238))))))

(declare-fun d!69802 () Bool)

(assert (=> d!69802 e!153694))

(declare-fun res!114651 () Bool)

(assert (=> d!69802 (=> (not res!114651) (not e!153694))))

(assert (=> d!69802 (= res!114651 (= (content!506 lt!100608) ((_ map or) (content!506 (++!928 lt!100223 lt!100238)) (content!506 lt!100228))))))

(assert (=> d!69802 (= lt!100608 e!153693)))

(declare-fun c!47234 () Bool)

(assert (=> d!69802 (= c!47234 ((_ is Nil!3634) (++!928 lt!100223 lt!100238)))))

(assert (=> d!69802 (= (++!928 (++!928 lt!100223 lt!100238) lt!100228) lt!100608)))

(declare-fun b!247690 () Bool)

(declare-fun res!114650 () Bool)

(assert (=> b!247690 (=> (not res!114650) (not e!153694))))

(assert (=> b!247690 (= res!114650 (= (size!2884 lt!100608) (+ (size!2884 (++!928 lt!100223 lt!100238)) (size!2884 lt!100228))))))

(assert (= (and d!69802 c!47234) b!247688))

(assert (= (and d!69802 (not c!47234)) b!247689))

(assert (= (and d!69802 res!114651) b!247690))

(assert (= (and b!247690 res!114650) b!247691))

(declare-fun m!303333 () Bool)

(assert (=> b!247689 m!303333))

(declare-fun m!303335 () Bool)

(assert (=> d!69802 m!303335))

(assert (=> d!69802 m!302191))

(declare-fun m!303337 () Bool)

(assert (=> d!69802 m!303337))

(assert (=> d!69802 m!302415))

(declare-fun m!303339 () Bool)

(assert (=> b!247690 m!303339))

(assert (=> b!247690 m!302191))

(declare-fun m!303341 () Bool)

(assert (=> b!247690 m!303341))

(assert (=> b!247690 m!302421))

(assert (=> b!246953 d!69802))

(declare-fun d!69804 () Bool)

(assert (=> d!69804 (= (list!1433 lt!100221) (list!1436 (c!47086 lt!100221)))))

(declare-fun bs!26613 () Bool)

(assert (= bs!26613 d!69804))

(declare-fun m!303343 () Bool)

(assert (=> bs!26613 m!303343))

(assert (=> b!246953 d!69804))

(declare-fun b!247720 () Bool)

(declare-fun e!153714 () Bool)

(declare-fun e!153711 () Bool)

(assert (=> b!247720 (= e!153714 e!153711)))

(declare-fun res!114674 () Bool)

(assert (=> b!247720 (=> res!114674 e!153711)))

(declare-fun call!13064 () Bool)

(assert (=> b!247720 (= res!114674 call!13064)))

(declare-fun b!247721 () Bool)

(declare-fun res!114668 () Bool)

(declare-fun e!153713 () Bool)

(assert (=> b!247721 (=> res!114668 e!153713)))

(declare-fun e!153710 () Bool)

(assert (=> b!247721 (= res!114668 e!153710)))

(declare-fun res!114671 () Bool)

(assert (=> b!247721 (=> (not res!114671) (not e!153710))))

(declare-fun lt!100611 () Bool)

(assert (=> b!247721 (= res!114671 lt!100611)))

(declare-fun b!247722 () Bool)

(declare-fun e!153709 () Bool)

(assert (=> b!247722 (= e!153709 (not lt!100611))))

(declare-fun b!247723 () Bool)

(declare-fun e!153715 () Bool)

(assert (=> b!247723 (= e!153715 e!153709)))

(declare-fun c!47242 () Bool)

(assert (=> b!247723 (= c!47242 ((_ is EmptyLang!913) (regex!689 (rule!1266 (h!9033 tokens!465)))))))

(declare-fun b!247724 () Bool)

(assert (=> b!247724 (= e!153715 (= lt!100611 call!13064))))

(declare-fun bm!13059 () Bool)

(assert (=> bm!13059 (= call!13064 (isEmpty!2222 lt!100223))))

(declare-fun b!247725 () Bool)

(assert (=> b!247725 (= e!153710 (= (head!852 lt!100223) (c!47087 (regex!689 (rule!1266 (h!9033 tokens!465))))))))

(declare-fun b!247726 () Bool)

(declare-fun e!153712 () Bool)

(declare-fun nullable!160 (Regex!913) Bool)

(assert (=> b!247726 (= e!153712 (nullable!160 (regex!689 (rule!1266 (h!9033 tokens!465)))))))

(declare-fun b!247727 () Bool)

(assert (=> b!247727 (= e!153711 (not (= (head!852 lt!100223) (c!47087 (regex!689 (rule!1266 (h!9033 tokens!465)))))))))

(declare-fun d!69806 () Bool)

(assert (=> d!69806 e!153715))

(declare-fun c!47243 () Bool)

(assert (=> d!69806 (= c!47243 ((_ is EmptyExpr!913) (regex!689 (rule!1266 (h!9033 tokens!465)))))))

(assert (=> d!69806 (= lt!100611 e!153712)))

(declare-fun c!47241 () Bool)

(assert (=> d!69806 (= c!47241 (isEmpty!2222 lt!100223))))

(declare-fun validRegex!235 (Regex!913) Bool)

(assert (=> d!69806 (validRegex!235 (regex!689 (rule!1266 (h!9033 tokens!465))))))

(assert (=> d!69806 (= (matchR!251 (regex!689 (rule!1266 (h!9033 tokens!465))) lt!100223) lt!100611)))

(declare-fun b!247728 () Bool)

(declare-fun res!114669 () Bool)

(assert (=> b!247728 (=> (not res!114669) (not e!153710))))

(assert (=> b!247728 (= res!114669 (isEmpty!2222 (tail!449 lt!100223)))))

(declare-fun b!247729 () Bool)

(declare-fun res!114675 () Bool)

(assert (=> b!247729 (=> res!114675 e!153711)))

(assert (=> b!247729 (= res!114675 (not (isEmpty!2222 (tail!449 lt!100223))))))

(declare-fun b!247730 () Bool)

(assert (=> b!247730 (= e!153713 e!153714)))

(declare-fun res!114670 () Bool)

(assert (=> b!247730 (=> (not res!114670) (not e!153714))))

(assert (=> b!247730 (= res!114670 (not lt!100611))))

(declare-fun b!247731 () Bool)

(declare-fun res!114672 () Bool)

(assert (=> b!247731 (=> res!114672 e!153713)))

(assert (=> b!247731 (= res!114672 (not ((_ is ElementMatch!913) (regex!689 (rule!1266 (h!9033 tokens!465))))))))

(assert (=> b!247731 (= e!153709 e!153713)))

(declare-fun b!247732 () Bool)

(declare-fun derivativeStep!126 (Regex!913 C!2748) Regex!913)

(assert (=> b!247732 (= e!153712 (matchR!251 (derivativeStep!126 (regex!689 (rule!1266 (h!9033 tokens!465))) (head!852 lt!100223)) (tail!449 lt!100223)))))

(declare-fun b!247733 () Bool)

(declare-fun res!114673 () Bool)

(assert (=> b!247733 (=> (not res!114673) (not e!153710))))

(assert (=> b!247733 (= res!114673 (not call!13064))))

(assert (= (and d!69806 c!47241) b!247726))

(assert (= (and d!69806 (not c!47241)) b!247732))

(assert (= (and d!69806 c!47243) b!247724))

(assert (= (and d!69806 (not c!47243)) b!247723))

(assert (= (and b!247723 c!47242) b!247722))

(assert (= (and b!247723 (not c!47242)) b!247731))

(assert (= (and b!247731 (not res!114672)) b!247721))

(assert (= (and b!247721 res!114671) b!247733))

(assert (= (and b!247733 res!114673) b!247728))

(assert (= (and b!247728 res!114669) b!247725))

(assert (= (and b!247721 (not res!114668)) b!247730))

(assert (= (and b!247730 res!114670) b!247720))

(assert (= (and b!247720 (not res!114674)) b!247729))

(assert (= (and b!247729 (not res!114675)) b!247727))

(assert (= (or b!247724 b!247720 b!247733) bm!13059))

(declare-fun m!303345 () Bool)

(assert (=> bm!13059 m!303345))

(assert (=> b!247728 m!302495))

(assert (=> b!247728 m!302495))

(declare-fun m!303347 () Bool)

(assert (=> b!247728 m!303347))

(assert (=> b!247725 m!302491))

(assert (=> b!247727 m!302491))

(assert (=> b!247732 m!302491))

(assert (=> b!247732 m!302491))

(declare-fun m!303349 () Bool)

(assert (=> b!247732 m!303349))

(assert (=> b!247732 m!302495))

(assert (=> b!247732 m!303349))

(assert (=> b!247732 m!302495))

(declare-fun m!303351 () Bool)

(assert (=> b!247732 m!303351))

(assert (=> b!247729 m!302495))

(assert (=> b!247729 m!302495))

(assert (=> b!247729 m!303347))

(declare-fun m!303353 () Bool)

(assert (=> b!247726 m!303353))

(assert (=> d!69806 m!303345))

(declare-fun m!303355 () Bool)

(assert (=> d!69806 m!303355))

(assert (=> b!246932 d!69806))

(declare-fun d!69808 () Bool)

(declare-fun lt!100612 () Bool)

(declare-fun e!153716 () Bool)

(assert (=> d!69808 (= lt!100612 e!153716)))

(declare-fun res!114678 () Bool)

(assert (=> d!69808 (=> (not res!114678) (not e!153716))))

(assert (=> d!69808 (= res!114678 (= (list!1432 (_1!2239 (lex!375 thiss!17480 rules!1920 (print!306 thiss!17480 (singletonSeq!241 separatorToken!170))))) (list!1432 (singletonSeq!241 separatorToken!170))))))

(declare-fun e!153717 () Bool)

(assert (=> d!69808 (= lt!100612 e!153717)))

(declare-fun res!114677 () Bool)

(assert (=> d!69808 (=> (not res!114677) (not e!153717))))

(declare-fun lt!100613 () tuple2!4046)

(assert (=> d!69808 (= res!114677 (= (size!2885 (_1!2239 lt!100613)) 1))))

(assert (=> d!69808 (= lt!100613 (lex!375 thiss!17480 rules!1920 (print!306 thiss!17480 (singletonSeq!241 separatorToken!170))))))

(assert (=> d!69808 (not (isEmpty!2224 rules!1920))))

(assert (=> d!69808 (= (rulesProduceIndividualToken!324 thiss!17480 rules!1920 separatorToken!170) lt!100612)))

(declare-fun b!247734 () Bool)

(declare-fun res!114676 () Bool)

(assert (=> b!247734 (=> (not res!114676) (not e!153717))))

(assert (=> b!247734 (= res!114676 (= (apply!685 (_1!2239 lt!100613) 0) separatorToken!170))))

(declare-fun b!247735 () Bool)

(assert (=> b!247735 (= e!153717 (isEmpty!2231 (_2!2239 lt!100613)))))

(declare-fun b!247736 () Bool)

(assert (=> b!247736 (= e!153716 (isEmpty!2231 (_2!2239 (lex!375 thiss!17480 rules!1920 (print!306 thiss!17480 (singletonSeq!241 separatorToken!170))))))))

(assert (= (and d!69808 res!114677) b!247734))

(assert (= (and b!247734 res!114676) b!247735))

(assert (= (and d!69808 res!114678) b!247736))

(declare-fun m!303357 () Bool)

(assert (=> d!69808 m!303357))

(declare-fun m!303359 () Bool)

(assert (=> d!69808 m!303359))

(declare-fun m!303361 () Bool)

(assert (=> d!69808 m!303361))

(assert (=> d!69808 m!303359))

(declare-fun m!303363 () Bool)

(assert (=> d!69808 m!303363))

(assert (=> d!69808 m!303359))

(assert (=> d!69808 m!302181))

(declare-fun m!303365 () Bool)

(assert (=> d!69808 m!303365))

(assert (=> d!69808 m!303361))

(declare-fun m!303367 () Bool)

(assert (=> d!69808 m!303367))

(declare-fun m!303369 () Bool)

(assert (=> b!247734 m!303369))

(declare-fun m!303371 () Bool)

(assert (=> b!247735 m!303371))

(assert (=> b!247736 m!303359))

(assert (=> b!247736 m!303359))

(assert (=> b!247736 m!303361))

(assert (=> b!247736 m!303361))

(assert (=> b!247736 m!303367))

(declare-fun m!303373 () Bool)

(assert (=> b!247736 m!303373))

(assert (=> b!246933 d!69808))

(declare-fun d!69810 () Bool)

(assert (=> d!69810 (= (isEmpty!2224 rules!1920) ((_ is Nil!3635) rules!1920))))

(assert (=> b!246954 d!69810))

(declare-fun lt!100616 () Bool)

(declare-fun d!69812 () Bool)

(assert (=> d!69812 (= lt!100616 (isEmpty!2223 (list!1432 (_1!2239 (lex!375 thiss!17480 rules!1920 (seqFromList!755 lt!100223))))))))

(declare-fun isEmpty!2232 (Conc!1201) Bool)

(assert (=> d!69812 (= lt!100616 (isEmpty!2232 (c!47088 (_1!2239 (lex!375 thiss!17480 rules!1920 (seqFromList!755 lt!100223))))))))

(assert (=> d!69812 (= (isEmpty!2221 (_1!2239 (lex!375 thiss!17480 rules!1920 (seqFromList!755 lt!100223)))) lt!100616)))

(declare-fun bs!26614 () Bool)

(assert (= bs!26614 d!69812))

(declare-fun m!303375 () Bool)

(assert (=> bs!26614 m!303375))

(assert (=> bs!26614 m!303375))

(declare-fun m!303377 () Bool)

(assert (=> bs!26614 m!303377))

(declare-fun m!303379 () Bool)

(assert (=> bs!26614 m!303379))

(assert (=> b!246928 d!69812))

(declare-fun b!247737 () Bool)

(declare-fun e!153719 () Bool)

(declare-fun lt!100617 () tuple2!4046)

(assert (=> b!247737 (= e!153719 (= (_2!2239 lt!100617) (seqFromList!755 lt!100223)))))

(declare-fun d!69814 () Bool)

(declare-fun e!153720 () Bool)

(assert (=> d!69814 e!153720))

(declare-fun res!114680 () Bool)

(assert (=> d!69814 (=> (not res!114680) (not e!153720))))

(assert (=> d!69814 (= res!114680 e!153719)))

(declare-fun c!47244 () Bool)

(assert (=> d!69814 (= c!47244 (> (size!2885 (_1!2239 lt!100617)) 0))))

(assert (=> d!69814 (= lt!100617 (lexTailRecV2!154 thiss!17480 rules!1920 (seqFromList!755 lt!100223) (BalanceConc!2409 Empty!1200) (seqFromList!755 lt!100223) (BalanceConc!2411 Empty!1201)))))

(assert (=> d!69814 (= (lex!375 thiss!17480 rules!1920 (seqFromList!755 lt!100223)) lt!100617)))

(declare-fun b!247738 () Bool)

(declare-fun e!153718 () Bool)

(assert (=> b!247738 (= e!153718 (not (isEmpty!2221 (_1!2239 lt!100617))))))

(declare-fun b!247739 () Bool)

(declare-fun res!114681 () Bool)

(assert (=> b!247739 (=> (not res!114681) (not e!153720))))

(assert (=> b!247739 (= res!114681 (= (list!1432 (_1!2239 lt!100617)) (_1!2243 (lexList!187 thiss!17480 rules!1920 (list!1433 (seqFromList!755 lt!100223))))))))

(declare-fun b!247740 () Bool)

(assert (=> b!247740 (= e!153719 e!153718)))

(declare-fun res!114679 () Bool)

(assert (=> b!247740 (= res!114679 (< (size!2886 (_2!2239 lt!100617)) (size!2886 (seqFromList!755 lt!100223))))))

(assert (=> b!247740 (=> (not res!114679) (not e!153718))))

(declare-fun b!247741 () Bool)

(assert (=> b!247741 (= e!153720 (= (list!1433 (_2!2239 lt!100617)) (_2!2243 (lexList!187 thiss!17480 rules!1920 (list!1433 (seqFromList!755 lt!100223))))))))

(assert (= (and d!69814 c!47244) b!247740))

(assert (= (and d!69814 (not c!47244)) b!247737))

(assert (= (and b!247740 res!114679) b!247738))

(assert (= (and d!69814 res!114680) b!247739))

(assert (= (and b!247739 res!114681) b!247741))

(declare-fun m!303381 () Bool)

(assert (=> d!69814 m!303381))

(assert (=> d!69814 m!302221))

(assert (=> d!69814 m!302221))

(declare-fun m!303383 () Bool)

(assert (=> d!69814 m!303383))

(declare-fun m!303385 () Bool)

(assert (=> b!247738 m!303385))

(declare-fun m!303387 () Bool)

(assert (=> b!247741 m!303387))

(assert (=> b!247741 m!302221))

(declare-fun m!303389 () Bool)

(assert (=> b!247741 m!303389))

(assert (=> b!247741 m!303389))

(declare-fun m!303391 () Bool)

(assert (=> b!247741 m!303391))

(declare-fun m!303393 () Bool)

(assert (=> b!247739 m!303393))

(assert (=> b!247739 m!302221))

(assert (=> b!247739 m!303389))

(assert (=> b!247739 m!303389))

(assert (=> b!247739 m!303391))

(declare-fun m!303395 () Bool)

(assert (=> b!247740 m!303395))

(assert (=> b!247740 m!302221))

(declare-fun m!303397 () Bool)

(assert (=> b!247740 m!303397))

(assert (=> b!246928 d!69814))

(declare-fun d!69816 () Bool)

(assert (=> d!69816 (= (seqFromList!755 lt!100223) (fromListB!272 lt!100223))))

(declare-fun bs!26615 () Bool)

(assert (= bs!26615 d!69816))

(declare-fun m!303399 () Bool)

(assert (=> bs!26615 m!303399))

(assert (=> b!246928 d!69816))

(declare-fun d!69818 () Bool)

(declare-fun res!114682 () Bool)

(declare-fun e!153721 () Bool)

(assert (=> d!69818 (=> (not res!114682) (not e!153721))))

(assert (=> d!69818 (= res!114682 (not (isEmpty!2222 (originalCharacters!732 (h!9033 tokens!465)))))))

(assert (=> d!69818 (= (inv!4487 (h!9033 tokens!465)) e!153721)))

(declare-fun b!247742 () Bool)

(declare-fun res!114683 () Bool)

(assert (=> b!247742 (=> (not res!114683) (not e!153721))))

(assert (=> b!247742 (= res!114683 (= (originalCharacters!732 (h!9033 tokens!465)) (list!1433 (dynLambda!1773 (toChars!1251 (transformation!689 (rule!1266 (h!9033 tokens!465)))) (value!23952 (h!9033 tokens!465))))))))

(declare-fun b!247743 () Bool)

(assert (=> b!247743 (= e!153721 (= (size!2879 (h!9033 tokens!465)) (size!2884 (originalCharacters!732 (h!9033 tokens!465)))))))

(assert (= (and d!69818 res!114682) b!247742))

(assert (= (and b!247742 res!114683) b!247743))

(declare-fun b_lambda!7257 () Bool)

(assert (=> (not b_lambda!7257) (not b!247742)))

(assert (=> b!247742 t!35254))

(declare-fun b_and!18659 () Bool)

(assert (= b_and!18653 (and (=> t!35254 result!16030) b_and!18659)))

(assert (=> b!247742 t!35256))

(declare-fun b_and!18661 () Bool)

(assert (= b_and!18655 (and (=> t!35256 result!16032) b_and!18661)))

(assert (=> b!247742 t!35258))

(declare-fun b_and!18663 () Bool)

(assert (= b_and!18657 (and (=> t!35258 result!16034) b_and!18663)))

(declare-fun m!303401 () Bool)

(assert (=> d!69818 m!303401))

(assert (=> b!247742 m!303327))

(assert (=> b!247742 m!303327))

(declare-fun m!303403 () Bool)

(assert (=> b!247742 m!303403))

(declare-fun m!303405 () Bool)

(assert (=> b!247743 m!303405))

(assert (=> b!246950 d!69818))

(declare-fun d!69820 () Bool)

(assert (=> d!69820 (= (list!1433 lt!100240) (list!1436 (c!47086 lt!100240)))))

(declare-fun bs!26616 () Bool)

(assert (= bs!26616 d!69820))

(declare-fun m!303407 () Bool)

(assert (=> bs!26616 m!303407))

(assert (=> b!246951 d!69820))

(declare-fun d!69822 () Bool)

(declare-fun lt!100637 () BalanceConc!2408)

(declare-fun printListTailRec!110 (LexerInterface!575 List!3646 List!3644) List!3644)

(assert (=> d!69822 (= (list!1433 lt!100637) (printListTailRec!110 thiss!17480 (dropList!142 lt!100234 0) (list!1433 (BalanceConc!2409 Empty!1200))))))

(declare-fun e!153726 () BalanceConc!2408)

(assert (=> d!69822 (= lt!100637 e!153726)))

(declare-fun c!47247 () Bool)

(assert (=> d!69822 (= c!47247 (>= 0 (size!2885 lt!100234)))))

(declare-fun e!153727 () Bool)

(assert (=> d!69822 e!153727))

(declare-fun res!114686 () Bool)

(assert (=> d!69822 (=> (not res!114686) (not e!153727))))

(assert (=> d!69822 (= res!114686 (>= 0 0))))

(assert (=> d!69822 (= (printTailRec!269 thiss!17480 lt!100234 0 (BalanceConc!2409 Empty!1200)) lt!100637)))

(declare-fun b!247750 () Bool)

(assert (=> b!247750 (= e!153727 (<= 0 (size!2885 lt!100234)))))

(declare-fun b!247751 () Bool)

(assert (=> b!247751 (= e!153726 (BalanceConc!2409 Empty!1200))))

(declare-fun b!247752 () Bool)

(assert (=> b!247752 (= e!153726 (printTailRec!269 thiss!17480 lt!100234 (+ 0 1) (++!930 (BalanceConc!2409 Empty!1200) (charsOf!344 (apply!685 lt!100234 0)))))))

(declare-fun lt!100635 () List!3646)

(assert (=> b!247752 (= lt!100635 (list!1432 lt!100234))))

(declare-fun lt!100633 () Unit!4410)

(assert (=> b!247752 (= lt!100633 (lemmaDropApply!182 lt!100635 0))))

(assert (=> b!247752 (= (head!850 (drop!195 lt!100635 0)) (apply!686 lt!100635 0))))

(declare-fun lt!100632 () Unit!4410)

(assert (=> b!247752 (= lt!100632 lt!100633)))

(declare-fun lt!100634 () List!3646)

(assert (=> b!247752 (= lt!100634 (list!1432 lt!100234))))

(declare-fun lt!100636 () Unit!4410)

(assert (=> b!247752 (= lt!100636 (lemmaDropTail!174 lt!100634 0))))

(assert (=> b!247752 (= (tail!450 (drop!195 lt!100634 0)) (drop!195 lt!100634 (+ 0 1)))))

(declare-fun lt!100638 () Unit!4410)

(assert (=> b!247752 (= lt!100638 lt!100636)))

(assert (= (and d!69822 res!114686) b!247750))

(assert (= (and d!69822 c!47247) b!247751))

(assert (= (and d!69822 (not c!47247)) b!247752))

(declare-fun m!303409 () Bool)

(assert (=> d!69822 m!303409))

(assert (=> d!69822 m!303409))

(declare-fun m!303411 () Bool)

(assert (=> d!69822 m!303411))

(declare-fun m!303413 () Bool)

(assert (=> d!69822 m!303413))

(declare-fun m!303415 () Bool)

(assert (=> d!69822 m!303415))

(assert (=> d!69822 m!303411))

(declare-fun m!303417 () Bool)

(assert (=> d!69822 m!303417))

(assert (=> b!247750 m!303417))

(declare-fun m!303419 () Bool)

(assert (=> b!247752 m!303419))

(declare-fun m!303421 () Bool)

(assert (=> b!247752 m!303421))

(declare-fun m!303423 () Bool)

(assert (=> b!247752 m!303423))

(declare-fun m!303425 () Bool)

(assert (=> b!247752 m!303425))

(declare-fun m!303427 () Bool)

(assert (=> b!247752 m!303427))

(declare-fun m!303429 () Bool)

(assert (=> b!247752 m!303429))

(declare-fun m!303431 () Bool)

(assert (=> b!247752 m!303431))

(assert (=> b!247752 m!303419))

(assert (=> b!247752 m!303425))

(assert (=> b!247752 m!303427))

(declare-fun m!303433 () Bool)

(assert (=> b!247752 m!303433))

(declare-fun m!303435 () Bool)

(assert (=> b!247752 m!303435))

(declare-fun m!303437 () Bool)

(assert (=> b!247752 m!303437))

(assert (=> b!247752 m!303421))

(declare-fun m!303439 () Bool)

(assert (=> b!247752 m!303439))

(declare-fun m!303441 () Bool)

(assert (=> b!247752 m!303441))

(declare-fun m!303443 () Bool)

(assert (=> b!247752 m!303443))

(assert (=> b!247752 m!303429))

(assert (=> b!246951 d!69822))

(declare-fun d!69824 () Bool)

(declare-fun lt!100641 () BalanceConc!2408)

(assert (=> d!69824 (= (list!1433 lt!100641) (printList!259 thiss!17480 (list!1432 lt!100234)))))

(assert (=> d!69824 (= lt!100641 (printTailRec!269 thiss!17480 lt!100234 0 (BalanceConc!2409 Empty!1200)))))

(assert (=> d!69824 (= (print!306 thiss!17480 lt!100234) lt!100641)))

(declare-fun bs!26617 () Bool)

(assert (= bs!26617 d!69824))

(declare-fun m!303445 () Bool)

(assert (=> bs!26617 m!303445))

(assert (=> bs!26617 m!303437))

(assert (=> bs!26617 m!303437))

(declare-fun m!303447 () Bool)

(assert (=> bs!26617 m!303447))

(assert (=> bs!26617 m!302131))

(assert (=> b!246951 d!69824))

(declare-fun d!69826 () Bool)

(declare-fun e!153730 () Bool)

(assert (=> d!69826 e!153730))

(declare-fun res!114689 () Bool)

(assert (=> d!69826 (=> (not res!114689) (not e!153730))))

(declare-fun lt!100644 () BalanceConc!2410)

(assert (=> d!69826 (= res!114689 (= (list!1432 lt!100644) (Cons!3636 (h!9033 tokens!465) Nil!3636)))))

(declare-fun singleton!91 (Token!1122) BalanceConc!2410)

(assert (=> d!69826 (= lt!100644 (singleton!91 (h!9033 tokens!465)))))

(assert (=> d!69826 (= (singletonSeq!241 (h!9033 tokens!465)) lt!100644)))

(declare-fun b!247755 () Bool)

(declare-fun isBalanced!312 (Conc!1201) Bool)

(assert (=> b!247755 (= e!153730 (isBalanced!312 (c!47088 lt!100644)))))

(assert (= (and d!69826 res!114689) b!247755))

(declare-fun m!303449 () Bool)

(assert (=> d!69826 m!303449))

(declare-fun m!303451 () Bool)

(assert (=> d!69826 m!303451))

(declare-fun m!303453 () Bool)

(assert (=> b!247755 m!303453))

(assert (=> b!246951 d!69826))

(declare-fun d!69828 () Bool)

(declare-fun c!47250 () Bool)

(assert (=> d!69828 (= c!47250 ((_ is Cons!3636) (Cons!3636 (h!9033 tokens!465) Nil!3636)))))

(declare-fun e!153733 () List!3644)

(assert (=> d!69828 (= (printList!259 thiss!17480 (Cons!3636 (h!9033 tokens!465) Nil!3636)) e!153733)))

(declare-fun b!247760 () Bool)

(assert (=> b!247760 (= e!153733 (++!928 (list!1433 (charsOf!344 (h!9033 (Cons!3636 (h!9033 tokens!465) Nil!3636)))) (printList!259 thiss!17480 (t!35202 (Cons!3636 (h!9033 tokens!465) Nil!3636)))))))

(declare-fun b!247761 () Bool)

(assert (=> b!247761 (= e!153733 Nil!3634)))

(assert (= (and d!69828 c!47250) b!247760))

(assert (= (and d!69828 (not c!47250)) b!247761))

(declare-fun m!303455 () Bool)

(assert (=> b!247760 m!303455))

(assert (=> b!247760 m!303455))

(declare-fun m!303457 () Bool)

(assert (=> b!247760 m!303457))

(declare-fun m!303459 () Bool)

(assert (=> b!247760 m!303459))

(assert (=> b!247760 m!303457))

(assert (=> b!247760 m!303459))

(declare-fun m!303461 () Bool)

(assert (=> b!247760 m!303461))

(assert (=> b!246951 d!69828))

(declare-fun d!69830 () Bool)

(assert (=> d!69830 (= (get!1190 lt!100241) (v!14506 lt!100241))))

(assert (=> b!246930 d!69830))

(declare-fun d!69832 () Bool)

(assert (=> d!69832 (= (head!850 tokens!465) (h!9033 tokens!465))))

(assert (=> b!246930 d!69832))

(declare-fun d!69834 () Bool)

(declare-fun res!114692 () Bool)

(declare-fun e!153736 () Bool)

(assert (=> d!69834 (=> (not res!114692) (not e!153736))))

(declare-fun rulesValid!199 (LexerInterface!575 List!3645) Bool)

(assert (=> d!69834 (= res!114692 (rulesValid!199 thiss!17480 rules!1920))))

(assert (=> d!69834 (= (rulesInvariant!541 thiss!17480 rules!1920) e!153736)))

(declare-fun b!247764 () Bool)

(declare-datatypes ((List!3648 0))(
  ( (Nil!3638) (Cons!3638 (h!9035 String!4635) (t!35268 List!3648)) )
))
(declare-fun noDuplicateTag!199 (LexerInterface!575 List!3645 List!3648) Bool)

(assert (=> b!247764 (= e!153736 (noDuplicateTag!199 thiss!17480 rules!1920 Nil!3638))))

(assert (= (and d!69834 res!114692) b!247764))

(declare-fun m!303463 () Bool)

(assert (=> d!69834 m!303463))

(declare-fun m!303465 () Bool)

(assert (=> b!247764 m!303465))

(assert (=> b!246947 d!69834))

(declare-fun d!69836 () Bool)

(declare-fun res!114697 () Bool)

(declare-fun e!153741 () Bool)

(assert (=> d!69836 (=> res!114697 e!153741)))

(assert (=> d!69836 (= res!114697 ((_ is Nil!3636) tokens!465))))

(assert (=> d!69836 (= (forall!849 tokens!465 lambda!8121) e!153741)))

(declare-fun b!247769 () Bool)

(declare-fun e!153742 () Bool)

(assert (=> b!247769 (= e!153741 e!153742)))

(declare-fun res!114698 () Bool)

(assert (=> b!247769 (=> (not res!114698) (not e!153742))))

(assert (=> b!247769 (= res!114698 (dynLambda!1774 lambda!8121 (h!9033 tokens!465)))))

(declare-fun b!247770 () Bool)

(assert (=> b!247770 (= e!153742 (forall!849 (t!35202 tokens!465) lambda!8121))))

(assert (= (and d!69836 (not res!114697)) b!247769))

(assert (= (and b!247769 res!114698) b!247770))

(declare-fun b_lambda!7259 () Bool)

(assert (=> (not b_lambda!7259) (not b!247769)))

(declare-fun m!303467 () Bool)

(assert (=> b!247769 m!303467))

(declare-fun m!303469 () Bool)

(assert (=> b!247770 m!303469))

(assert (=> b!246948 d!69836))

(declare-fun e!153745 () Bool)

(assert (=> b!246944 (= tp!96479 e!153745)))

(declare-fun b!247784 () Bool)

(declare-fun tp!96558 () Bool)

(declare-fun tp!96562 () Bool)

(assert (=> b!247784 (= e!153745 (and tp!96558 tp!96562))))

(declare-fun b!247781 () Bool)

(declare-fun tp_is_empty!1763 () Bool)

(assert (=> b!247781 (= e!153745 tp_is_empty!1763)))

(declare-fun b!247783 () Bool)

(declare-fun tp!96560 () Bool)

(assert (=> b!247783 (= e!153745 tp!96560)))

(declare-fun b!247782 () Bool)

(declare-fun tp!96561 () Bool)

(declare-fun tp!96559 () Bool)

(assert (=> b!247782 (= e!153745 (and tp!96561 tp!96559))))

(assert (= (and b!246944 ((_ is ElementMatch!913) (regex!689 (rule!1266 separatorToken!170)))) b!247781))

(assert (= (and b!246944 ((_ is Concat!1625) (regex!689 (rule!1266 separatorToken!170)))) b!247782))

(assert (= (and b!246944 ((_ is Star!913) (regex!689 (rule!1266 separatorToken!170)))) b!247783))

(assert (= (and b!246944 ((_ is Union!913) (regex!689 (rule!1266 separatorToken!170)))) b!247784))

(declare-fun b!247789 () Bool)

(declare-fun e!153748 () Bool)

(declare-fun tp!96565 () Bool)

(assert (=> b!247789 (= e!153748 (and tp_is_empty!1763 tp!96565))))

(assert (=> b!246957 (= tp!96473 e!153748)))

(assert (= (and b!246957 ((_ is Cons!3634) (originalCharacters!732 (h!9033 tokens!465)))) b!247789))

(declare-fun e!153749 () Bool)

(assert (=> b!246952 (= tp!96478 e!153749)))

(declare-fun b!247793 () Bool)

(declare-fun tp!96566 () Bool)

(declare-fun tp!96570 () Bool)

(assert (=> b!247793 (= e!153749 (and tp!96566 tp!96570))))

(declare-fun b!247790 () Bool)

(assert (=> b!247790 (= e!153749 tp_is_empty!1763)))

(declare-fun b!247792 () Bool)

(declare-fun tp!96568 () Bool)

(assert (=> b!247792 (= e!153749 tp!96568)))

(declare-fun b!247791 () Bool)

(declare-fun tp!96569 () Bool)

(declare-fun tp!96567 () Bool)

(assert (=> b!247791 (= e!153749 (and tp!96569 tp!96567))))

(assert (= (and b!246952 ((_ is ElementMatch!913) (regex!689 (h!9032 rules!1920)))) b!247790))

(assert (= (and b!246952 ((_ is Concat!1625) (regex!689 (h!9032 rules!1920)))) b!247791))

(assert (= (and b!246952 ((_ is Star!913) (regex!689 (h!9032 rules!1920)))) b!247792))

(assert (= (and b!246952 ((_ is Union!913) (regex!689 (h!9032 rules!1920)))) b!247793))

(declare-fun e!153750 () Bool)

(assert (=> b!246943 (= tp!96476 e!153750)))

(declare-fun b!247797 () Bool)

(declare-fun tp!96571 () Bool)

(declare-fun tp!96575 () Bool)

(assert (=> b!247797 (= e!153750 (and tp!96571 tp!96575))))

(declare-fun b!247794 () Bool)

(assert (=> b!247794 (= e!153750 tp_is_empty!1763)))

(declare-fun b!247796 () Bool)

(declare-fun tp!96573 () Bool)

(assert (=> b!247796 (= e!153750 tp!96573)))

(declare-fun b!247795 () Bool)

(declare-fun tp!96574 () Bool)

(declare-fun tp!96572 () Bool)

(assert (=> b!247795 (= e!153750 (and tp!96574 tp!96572))))

(assert (= (and b!246943 ((_ is ElementMatch!913) (regex!689 (rule!1266 (h!9033 tokens!465))))) b!247794))

(assert (= (and b!246943 ((_ is Concat!1625) (regex!689 (rule!1266 (h!9033 tokens!465))))) b!247795))

(assert (= (and b!246943 ((_ is Star!913) (regex!689 (rule!1266 (h!9033 tokens!465))))) b!247796))

(assert (= (and b!246943 ((_ is Union!913) (regex!689 (rule!1266 (h!9033 tokens!465))))) b!247797))

(declare-fun b!247800 () Bool)

(declare-fun e!153753 () Bool)

(assert (=> b!247800 (= e!153753 true)))

(declare-fun b!247799 () Bool)

(declare-fun e!153752 () Bool)

(assert (=> b!247799 (= e!153752 e!153753)))

(declare-fun b!247798 () Bool)

(declare-fun e!153751 () Bool)

(assert (=> b!247798 (= e!153751 e!153752)))

(assert (=> b!246968 e!153751))

(assert (= b!247799 b!247800))

(assert (= b!247798 b!247799))

(assert (= (and b!246968 ((_ is Cons!3635) (t!35201 rules!1920))) b!247798))

(assert (=> b!247800 (< (dynLambda!1769 order!2673 (toValue!1392 (transformation!689 (h!9032 (t!35201 rules!1920))))) (dynLambda!1770 order!2675 lambda!8122))))

(assert (=> b!247800 (< (dynLambda!1771 order!2677 (toChars!1251 (transformation!689 (h!9032 (t!35201 rules!1920))))) (dynLambda!1770 order!2675 lambda!8122))))

(declare-fun b!247811 () Bool)

(declare-fun b_free!9197 () Bool)

(declare-fun b_next!9197 () Bool)

(assert (=> b!247811 (= b_free!9197 (not b_next!9197))))

(declare-fun tp!96586 () Bool)

(declare-fun b_and!18665 () Bool)

(assert (=> b!247811 (= tp!96586 b_and!18665)))

(declare-fun b_free!9199 () Bool)

(declare-fun b_next!9199 () Bool)

(assert (=> b!247811 (= b_free!9199 (not b_next!9199))))

(declare-fun tb!12721 () Bool)

(declare-fun t!35261 () Bool)

(assert (=> (and b!247811 (= (toChars!1251 (transformation!689 (h!9032 (t!35201 rules!1920)))) (toChars!1251 (transformation!689 (rule!1266 separatorToken!170)))) t!35261) tb!12721))

(declare-fun result!16042 () Bool)

(assert (= result!16042 result!15992))

(assert (=> b!247044 t!35261))

(assert (=> d!69788 t!35261))

(declare-fun tb!12723 () Bool)

(declare-fun t!35263 () Bool)

(assert (=> (and b!247811 (= (toChars!1251 (transformation!689 (h!9032 (t!35201 rules!1920)))) (toChars!1251 (transformation!689 (rule!1266 (h!9033 tokens!465))))) t!35263) tb!12723))

(declare-fun result!16044 () Bool)

(assert (= result!16044 result!16030))

(assert (=> d!69798 t!35263))

(assert (=> b!247742 t!35263))

(declare-fun b_and!18667 () Bool)

(declare-fun tp!96585 () Bool)

(assert (=> b!247811 (= tp!96585 (and (=> t!35261 result!16042) (=> t!35263 result!16044) b_and!18667))))

(declare-fun e!153765 () Bool)

(assert (=> b!247811 (= e!153765 (and tp!96586 tp!96585))))

(declare-fun e!153763 () Bool)

(declare-fun b!247810 () Bool)

(declare-fun tp!96584 () Bool)

(assert (=> b!247810 (= e!153763 (and tp!96584 (inv!4484 (tag!897 (h!9032 (t!35201 rules!1920)))) (inv!4488 (transformation!689 (h!9032 (t!35201 rules!1920)))) e!153765))))

(declare-fun b!247809 () Bool)

(declare-fun e!153764 () Bool)

(declare-fun tp!96587 () Bool)

(assert (=> b!247809 (= e!153764 (and e!153763 tp!96587))))

(assert (=> b!246929 (= tp!96482 e!153764)))

(assert (= b!247810 b!247811))

(assert (= b!247809 b!247810))

(assert (= (and b!246929 ((_ is Cons!3635) (t!35201 rules!1920))) b!247809))

(declare-fun m!303471 () Bool)

(assert (=> b!247810 m!303471))

(declare-fun m!303473 () Bool)

(assert (=> b!247810 m!303473))

(declare-fun b!247825 () Bool)

(declare-fun b_free!9201 () Bool)

(declare-fun b_next!9201 () Bool)

(assert (=> b!247825 (= b_free!9201 (not b_next!9201))))

(declare-fun tp!96600 () Bool)

(declare-fun b_and!18669 () Bool)

(assert (=> b!247825 (= tp!96600 b_and!18669)))

(declare-fun b_free!9203 () Bool)

(declare-fun b_next!9203 () Bool)

(assert (=> b!247825 (= b_free!9203 (not b_next!9203))))

(declare-fun t!35265 () Bool)

(declare-fun tb!12725 () Bool)

(assert (=> (and b!247825 (= (toChars!1251 (transformation!689 (rule!1266 (h!9033 (t!35202 tokens!465))))) (toChars!1251 (transformation!689 (rule!1266 separatorToken!170)))) t!35265) tb!12725))

(declare-fun result!16048 () Bool)

(assert (= result!16048 result!15992))

(assert (=> b!247044 t!35265))

(assert (=> d!69788 t!35265))

(declare-fun t!35267 () Bool)

(declare-fun tb!12727 () Bool)

(assert (=> (and b!247825 (= (toChars!1251 (transformation!689 (rule!1266 (h!9033 (t!35202 tokens!465))))) (toChars!1251 (transformation!689 (rule!1266 (h!9033 tokens!465))))) t!35267) tb!12727))

(declare-fun result!16050 () Bool)

(assert (= result!16050 result!16030))

(assert (=> d!69798 t!35267))

(assert (=> b!247742 t!35267))

(declare-fun tp!96601 () Bool)

(declare-fun b_and!18671 () Bool)

(assert (=> b!247825 (= tp!96601 (and (=> t!35265 result!16048) (=> t!35267 result!16050) b_and!18671))))

(declare-fun e!153780 () Bool)

(declare-fun e!153781 () Bool)

(declare-fun tp!96599 () Bool)

(declare-fun b!247823 () Bool)

(assert (=> b!247823 (= e!153780 (and (inv!21 (value!23952 (h!9033 (t!35202 tokens!465)))) e!153781 tp!96599))))

(declare-fun e!153778 () Bool)

(assert (=> b!246950 (= tp!96475 e!153778)))

(declare-fun b!247822 () Bool)

(declare-fun tp!96598 () Bool)

(assert (=> b!247822 (= e!153778 (and (inv!4487 (h!9033 (t!35202 tokens!465))) e!153780 tp!96598))))

(declare-fun e!153779 () Bool)

(assert (=> b!247825 (= e!153779 (and tp!96600 tp!96601))))

(declare-fun tp!96602 () Bool)

(declare-fun b!247824 () Bool)

(assert (=> b!247824 (= e!153781 (and tp!96602 (inv!4484 (tag!897 (rule!1266 (h!9033 (t!35202 tokens!465))))) (inv!4488 (transformation!689 (rule!1266 (h!9033 (t!35202 tokens!465))))) e!153779))))

(assert (= b!247824 b!247825))

(assert (= b!247823 b!247824))

(assert (= b!247822 b!247823))

(assert (= (and b!246950 ((_ is Cons!3636) (t!35202 tokens!465))) b!247822))

(declare-fun m!303475 () Bool)

(assert (=> b!247823 m!303475))

(declare-fun m!303477 () Bool)

(assert (=> b!247822 m!303477))

(declare-fun m!303479 () Bool)

(assert (=> b!247824 m!303479))

(declare-fun m!303481 () Bool)

(assert (=> b!247824 m!303481))

(declare-fun b!247826 () Bool)

(declare-fun e!153784 () Bool)

(declare-fun tp!96603 () Bool)

(assert (=> b!247826 (= e!153784 (and tp_is_empty!1763 tp!96603))))

(assert (=> b!246959 (= tp!96480 e!153784)))

(assert (= (and b!246959 ((_ is Cons!3634) (originalCharacters!732 separatorToken!170))) b!247826))

(declare-fun b_lambda!7261 () Bool)

(assert (= b_lambda!7223 (or b!246940 b_lambda!7261)))

(declare-fun bs!26618 () Bool)

(declare-fun d!69838 () Bool)

(assert (= bs!26618 (and d!69838 b!246940)))

(assert (=> bs!26618 (= (dynLambda!1774 lambda!8122 (h!9033 tokens!465)) (rulesProduceIndividualToken!324 thiss!17480 rules!1920 (h!9033 tokens!465)))))

(assert (=> bs!26618 m!302217))

(assert (=> d!69610 d!69838))

(declare-fun b_lambda!7263 () Bool)

(assert (= b_lambda!7257 (or (and b!247811 b_free!9199 (= (toChars!1251 (transformation!689 (h!9032 (t!35201 rules!1920)))) (toChars!1251 (transformation!689 (rule!1266 (h!9033 tokens!465)))))) (and b!246955 b_free!9183 (= (toChars!1251 (transformation!689 (rule!1266 separatorToken!170))) (toChars!1251 (transformation!689 (rule!1266 (h!9033 tokens!465)))))) (and b!247825 b_free!9203 (= (toChars!1251 (transformation!689 (rule!1266 (h!9033 (t!35202 tokens!465))))) (toChars!1251 (transformation!689 (rule!1266 (h!9033 tokens!465)))))) (and b!246927 b_free!9179) (and b!246945 b_free!9187 (= (toChars!1251 (transformation!689 (h!9032 rules!1920))) (toChars!1251 (transformation!689 (rule!1266 (h!9033 tokens!465)))))) b_lambda!7263)))

(declare-fun b_lambda!7265 () Bool)

(assert (= b_lambda!7259 (or b!246948 b_lambda!7265)))

(declare-fun bs!26619 () Bool)

(declare-fun d!69840 () Bool)

(assert (= bs!26619 (and d!69840 b!246948)))

(assert (=> bs!26619 (= (dynLambda!1774 lambda!8121 (h!9033 tokens!465)) (not (isSeparator!689 (rule!1266 (h!9033 tokens!465)))))))

(assert (=> b!247769 d!69840))

(declare-fun b_lambda!7267 () Bool)

(assert (= b_lambda!7255 (or (and b!247811 b_free!9199 (= (toChars!1251 (transformation!689 (h!9032 (t!35201 rules!1920)))) (toChars!1251 (transformation!689 (rule!1266 (h!9033 tokens!465)))))) (and b!246955 b_free!9183 (= (toChars!1251 (transformation!689 (rule!1266 separatorToken!170))) (toChars!1251 (transformation!689 (rule!1266 (h!9033 tokens!465)))))) (and b!247825 b_free!9203 (= (toChars!1251 (transformation!689 (rule!1266 (h!9033 (t!35202 tokens!465))))) (toChars!1251 (transformation!689 (rule!1266 (h!9033 tokens!465)))))) (and b!246927 b_free!9179) (and b!246945 b_free!9187 (= (toChars!1251 (transformation!689 (h!9032 rules!1920))) (toChars!1251 (transformation!689 (rule!1266 (h!9033 tokens!465)))))) b_lambda!7267)))

(declare-fun b_lambda!7269 () Bool)

(assert (= b_lambda!7253 (or (and b!246955 b_free!9183) (and b!246945 b_free!9187 (= (toChars!1251 (transformation!689 (h!9032 rules!1920))) (toChars!1251 (transformation!689 (rule!1266 separatorToken!170))))) (and b!247825 b_free!9203 (= (toChars!1251 (transformation!689 (rule!1266 (h!9033 (t!35202 tokens!465))))) (toChars!1251 (transformation!689 (rule!1266 separatorToken!170))))) (and b!247811 b_free!9199 (= (toChars!1251 (transformation!689 (h!9032 (t!35201 rules!1920)))) (toChars!1251 (transformation!689 (rule!1266 separatorToken!170))))) (and b!246927 b_free!9179 (= (toChars!1251 (transformation!689 (rule!1266 (h!9033 tokens!465)))) (toChars!1251 (transformation!689 (rule!1266 separatorToken!170))))) b_lambda!7269)))

(declare-fun b_lambda!7271 () Bool)

(assert (= b_lambda!7225 (or b!246948 b_lambda!7271)))

(declare-fun bs!26620 () Bool)

(declare-fun d!69842 () Bool)

(assert (= bs!26620 (and d!69842 b!246948)))

(assert (=> bs!26620 (= (dynLambda!1774 lambda!8121 (h!9033 (list!1432 (_1!2239 (lex!375 thiss!17480 rules!1920 lt!100221))))) (not (isSeparator!689 (rule!1266 (h!9033 (list!1432 (_1!2239 (lex!375 thiss!17480 rules!1920 lt!100221))))))))))

(assert (=> b!247248 d!69842))

(declare-fun b_lambda!7273 () Bool)

(assert (= b_lambda!7221 (or (and b!246955 b_free!9183) (and b!246945 b_free!9187 (= (toChars!1251 (transformation!689 (h!9032 rules!1920))) (toChars!1251 (transformation!689 (rule!1266 separatorToken!170))))) (and b!247825 b_free!9203 (= (toChars!1251 (transformation!689 (rule!1266 (h!9033 (t!35202 tokens!465))))) (toChars!1251 (transformation!689 (rule!1266 separatorToken!170))))) (and b!247811 b_free!9199 (= (toChars!1251 (transformation!689 (h!9032 (t!35201 rules!1920)))) (toChars!1251 (transformation!689 (rule!1266 separatorToken!170))))) (and b!246927 b_free!9179 (= (toChars!1251 (transformation!689 (rule!1266 (h!9033 tokens!465)))) (toChars!1251 (transformation!689 (rule!1266 separatorToken!170))))) b_lambda!7273)))

(check-sat (not b!247647) (not d!69646) (not d!69774) (not d!69788) (not bm!13026) (not b!247784) b_and!18605 (not b!247044) (not b!247327) (not bm!12956) (not d!69780) (not d!69804) (not b!247734) (not b!247045) (not bm!13043) (not b!247672) (not bm!13030) (not d!69594) (not bm!13046) b_and!18597 (not d!69668) (not b_lambda!7267) (not bm!13056) (not b!247728) (not b!247684) (not d!69614) b_and!18669 (not b!247039) (not d!69648) (not b!247645) (not b!247509) (not b!247032) (not b!247743) (not b!247508) (not b!247822) (not b!247738) (not d!69814) (not b!247076) (not d!69600) (not b!247735) (not d!69576) (not b!247752) (not b!247030) (not b!247667) (not b_next!9203) (not b!247136) (not b_next!9179) (not d!69772) (not b_next!9177) (not bm!13042) (not b!247797) (not b!247641) (not b!247642) (not d!69620) (not b!247506) (not bm!13054) (not d!69794) (not bm!13059) (not b!247249) (not b!247056) (not b_next!9201) (not b!247782) (not d!69592) (not b!247736) (not b!247077) (not b!247793) (not b_lambda!7273) b_and!18661 (not b!247680) (not b!247791) (not b!247668) (not b!247149) (not b_next!9185) (not d!69790) (not b!247770) b_and!18601 (not bm!13052) (not b!247297) (not b!247676) (not b!247100) (not tb!12689) (not b!247298) (not b!247727) (not b!247078) (not b!247050) (not d!69674) (not bm!12995) (not b!247764) (not b_lambda!7271) (not d!69808) (not b!247640) (not d!69612) (not b!247231) (not b!247074) b_and!18663 (not b!247035) (not d!69812) (not b!247798) (not b!247649) (not d!69778) (not b_lambda!7261) (not b!247648) (not d!69834) (not b_lambda!7263) (not b!247507) (not b!247824) (not d!69802) (not b!247760) (not b!247636) (not d!69792) (not b!247652) (not b!246984) (not bs!26618) (not b!247739) (not b!247083) (not d!69824) (not b!247230) (not d!69796) (not bm!13049) (not d!69826) (not b_next!9187) tp_is_empty!1763 (not d!69670) (not b!247627) (not bm!12959) (not d!69606) (not b!247795) b_and!18659 (not b!247037) (not b!247325) (not d!69574) (not bm!13028) (not b!247034) (not d!69798) (not b!247732) (not b!247654) (not d!69676) (not b!247099) (not b!247671) (not b!247750) (not b!247038) (not b!247637) (not b!247073) (not d!69634) b_and!18667 (not b!247313) (not b!247075) (not b!247147) (not b!247137) (not d!69782) (not b!247789) (not d!69608) (not b_next!9199) (not d!69806) (not b!247638) (not b_next!9183) (not b_lambda!7265) (not bm!13047) (not tb!12715) (not d!69786) (not b!247792) (not b!247687) (not d!69820) (not b!247055) (not d!69628) (not b!247685) (not d!69598) (not b!247725) b_and!18671 (not b!247631) (not b!247729) (not b!247624) (not b!247632) (not b!247233) (not b!247740) (not b!247669) (not bm!13048) (not d!69572) (not b!247644) (not b!247809) (not b!247659) (not d!69604) (not b!247823) (not d!69800) (not b!247646) (not b!247677) (not b!247655) (not b!247326) (not b_lambda!7269) (not b!247626) (not b!247810) (not b!247511) (not b!247690) (not b!247783) (not b!247250) (not b!247312) (not b!247031) (not b!247681) (not b!247148) (not d!69630) (not b!247689) (not b!247510) (not b!247670) (not d!69610) (not d!69644) (not d!69818) (not bm!13027) b_and!18665 (not b_next!9197) (not b!247311) (not b!247826) (not b!247650) (not b!247036) (not b!247622) (not b_next!9181) (not d!69816) (not b!247742) (not d!69822) (not b!247660) (not b!247755) (not bm!13041) (not b!247232) (not b!247726) (not b!247079) (not b!247741) (not bm!13053) (not b!247796))
(check-sat b_and!18605 b_and!18597 b_and!18669 (not b_next!9201) b_and!18661 b_and!18663 b_and!18667 b_and!18671 (not b_next!9181) (not b_next!9179) (not b_next!9177) (not b_next!9203) (not b_next!9185) b_and!18601 (not b_next!9187) b_and!18659 (not b_next!9199) (not b_next!9183) b_and!18665 (not b_next!9197))
