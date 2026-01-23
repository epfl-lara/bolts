; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!372596 () Bool)

(assert start!372596)

(declare-fun b!3961291 () Bool)

(declare-fun b_free!109365 () Bool)

(declare-fun b_next!110069 () Bool)

(assert (=> b!3961291 (= b_free!109365 (not b_next!110069))))

(declare-fun tp!1207394 () Bool)

(declare-fun b_and!304147 () Bool)

(assert (=> b!3961291 (= tp!1207394 b_and!304147)))

(declare-fun b_free!109367 () Bool)

(declare-fun b_next!110071 () Bool)

(assert (=> b!3961291 (= b_free!109367 (not b_next!110071))))

(declare-fun tp!1207407 () Bool)

(declare-fun b_and!304149 () Bool)

(assert (=> b!3961291 (= tp!1207407 b_and!304149)))

(declare-fun b!3961297 () Bool)

(declare-fun b_free!109369 () Bool)

(declare-fun b_next!110073 () Bool)

(assert (=> b!3961297 (= b_free!109369 (not b_next!110073))))

(declare-fun tp!1207403 () Bool)

(declare-fun b_and!304151 () Bool)

(assert (=> b!3961297 (= tp!1207403 b_and!304151)))

(declare-fun b_free!109371 () Bool)

(declare-fun b_next!110075 () Bool)

(assert (=> b!3961297 (= b_free!109371 (not b_next!110075))))

(declare-fun tp!1207408 () Bool)

(declare-fun b_and!304153 () Bool)

(assert (=> b!3961297 (= tp!1207408 b_and!304153)))

(declare-fun b!3961290 () Bool)

(declare-fun b_free!109373 () Bool)

(declare-fun b_next!110077 () Bool)

(assert (=> b!3961290 (= b_free!109373 (not b_next!110077))))

(declare-fun tp!1207405 () Bool)

(declare-fun b_and!304155 () Bool)

(assert (=> b!3961290 (= tp!1207405 b_and!304155)))

(declare-fun b_free!109375 () Bool)

(declare-fun b_next!110079 () Bool)

(assert (=> b!3961290 (= b_free!109375 (not b_next!110079))))

(declare-fun tp!1207402 () Bool)

(declare-fun b_and!304157 () Bool)

(assert (=> b!3961290 (= tp!1207402 b_and!304157)))

(declare-fun b!3961265 () Bool)

(declare-fun e!2452970 () Bool)

(assert (=> b!3961265 (= e!2452970 false)))

(declare-fun b!3961267 () Bool)

(declare-datatypes ((Unit!60732 0))(
  ( (Unit!60733) )
))
(declare-fun e!2452972 () Unit!60732)

(declare-fun Unit!60734 () Unit!60732)

(assert (=> b!3961267 (= e!2452972 Unit!60734)))

(declare-fun b!3961268 () Bool)

(declare-fun e!2452958 () Bool)

(declare-fun e!2452963 () Bool)

(assert (=> b!3961268 (= e!2452958 (not e!2452963))))

(declare-fun res!1603230 () Bool)

(assert (=> b!3961268 (=> res!1603230 e!2452963)))

(declare-datatypes ((C!23236 0))(
  ( (C!23237 (val!13712 Int)) )
))
(declare-datatypes ((List!42329 0))(
  ( (Nil!42205) (Cons!42205 (h!47625 C!23236) (t!329896 List!42329)) )
))
(declare-fun lt!1385843 () List!42329)

(declare-fun lt!1385820 () List!42329)

(assert (=> b!3961268 (= res!1603230 (not (= lt!1385843 lt!1385820)))))

(declare-datatypes ((LexerInterface!6209 0))(
  ( (LexerInterfaceExt!6206 (__x!25917 Int)) (Lexer!6207) )
))
(declare-fun thiss!20629 () LexerInterface!6209)

(declare-datatypes ((List!42330 0))(
  ( (Nil!42206) (Cons!42206 (h!47626 (_ BitVec 16)) (t!329897 List!42330)) )
))
(declare-datatypes ((TokenValue!6850 0))(
  ( (FloatLiteralValue!13700 (text!48395 List!42330)) (TokenValueExt!6849 (__x!25918 Int)) (Broken!34250 (value!209278 List!42330)) (Object!6973) (End!6850) (Def!6850) (Underscore!6850) (Match!6850) (Else!6850) (Error!6850) (Case!6850) (If!6850) (Extends!6850) (Abstract!6850) (Class!6850) (Val!6850) (DelimiterValue!13700 (del!6910 List!42330)) (KeywordValue!6856 (value!209279 List!42330)) (CommentValue!13700 (value!209280 List!42330)) (WhitespaceValue!13700 (value!209281 List!42330)) (IndentationValue!6850 (value!209282 List!42330)) (String!47967) (Int32!6850) (Broken!34251 (value!209283 List!42330)) (Boolean!6851) (Unit!60735) (OperatorValue!6853 (op!6910 List!42330)) (IdentifierValue!13700 (value!209284 List!42330)) (IdentifierValue!13701 (value!209285 List!42330)) (WhitespaceValue!13701 (value!209286 List!42330)) (True!13700) (False!13700) (Broken!34252 (value!209287 List!42330)) (Broken!34253 (value!209288 List!42330)) (True!13701) (RightBrace!6850) (RightBracket!6850) (Colon!6850) (Null!6850) (Comma!6850) (LeftBracket!6850) (False!13701) (LeftBrace!6850) (ImaginaryLiteralValue!6850 (text!48396 List!42330)) (StringLiteralValue!20550 (value!209289 List!42330)) (EOFValue!6850 (value!209290 List!42330)) (IdentValue!6850 (value!209291 List!42330)) (DelimiterValue!13701 (value!209292 List!42330)) (DedentValue!6850 (value!209293 List!42330)) (NewLineValue!6850 (value!209294 List!42330)) (IntegerValue!20550 (value!209295 (_ BitVec 32)) (text!48397 List!42330)) (IntegerValue!20551 (value!209296 Int) (text!48398 List!42330)) (Times!6850) (Or!6850) (Equal!6850) (Minus!6850) (Broken!34254 (value!209297 List!42330)) (And!6850) (Div!6850) (LessEqual!6850) (Mod!6850) (Concat!18375) (Not!6850) (Plus!6850) (SpaceValue!6850 (value!209298 List!42330)) (IntegerValue!20552 (value!209299 Int) (text!48399 List!42330)) (StringLiteralValue!20551 (text!48400 List!42330)) (FloatLiteralValue!13701 (text!48401 List!42330)) (BytesLiteralValue!6850 (value!209300 List!42330)) (CommentValue!13701 (value!209301 List!42330)) (StringLiteralValue!20552 (value!209302 List!42330)) (ErrorTokenValue!6850 (msg!6911 List!42330)) )
))
(declare-datatypes ((Regex!11525 0))(
  ( (ElementMatch!11525 (c!687350 C!23236)) (Concat!18376 (regOne!23562 Regex!11525) (regTwo!23562 Regex!11525)) (EmptyExpr!11525) (Star!11525 (reg!11854 Regex!11525)) (EmptyLang!11525) (Union!11525 (regOne!23563 Regex!11525) (regTwo!23563 Regex!11525)) )
))
(declare-datatypes ((String!47968 0))(
  ( (String!47969 (value!209303 String)) )
))
(declare-datatypes ((IArray!25667 0))(
  ( (IArray!25668 (innerList!12891 List!42329)) )
))
(declare-datatypes ((Conc!12831 0))(
  ( (Node!12831 (left!32023 Conc!12831) (right!32353 Conc!12831) (csize!25892 Int) (cheight!13042 Int)) (Leaf!19848 (xs!16137 IArray!25667) (csize!25893 Int)) (Empty!12831) )
))
(declare-datatypes ((BalanceConc!25256 0))(
  ( (BalanceConc!25257 (c!687351 Conc!12831)) )
))
(declare-datatypes ((TokenValueInjection!13128 0))(
  ( (TokenValueInjection!13129 (toValue!9100 Int) (toChars!8959 Int)) )
))
(declare-datatypes ((Rule!13040 0))(
  ( (Rule!13041 (regex!6620 Regex!11525) (tag!7480 String!47968) (isSeparator!6620 Bool) (transformation!6620 TokenValueInjection!13128)) )
))
(declare-datatypes ((Token!12378 0))(
  ( (Token!12379 (value!209304 TokenValue!6850) (rule!9600 Rule!13040) (size!31602 Int) (originalCharacters!7220 List!42329)) )
))
(declare-datatypes ((List!42331 0))(
  ( (Nil!42207) (Cons!42207 (h!47627 Token!12378) (t!329898 List!42331)) )
))
(declare-datatypes ((tuple2!41498 0))(
  ( (tuple2!41499 (_1!23883 List!42331) (_2!23883 List!42329)) )
))
(declare-fun lt!1385816 () tuple2!41498)

(declare-datatypes ((List!42332 0))(
  ( (Nil!42208) (Cons!42208 (h!47628 Rule!13040) (t!329899 List!42332)) )
))
(declare-fun rules!2768 () List!42332)

(declare-datatypes ((tuple2!41500 0))(
  ( (tuple2!41501 (_1!23884 Token!12378) (_2!23884 List!42329)) )
))
(declare-datatypes ((Option!9040 0))(
  ( (None!9039) (Some!9039 (v!39385 tuple2!41500)) )
))
(declare-fun lt!1385817 () Option!9040)

(declare-fun lexList!1977 (LexerInterface!6209 List!42332 List!42329) tuple2!41498)

(assert (=> b!3961268 (= lt!1385816 (lexList!1977 thiss!20629 rules!2768 (_2!23884 (v!39385 lt!1385817))))))

(declare-fun lt!1385821 () List!42329)

(declare-fun lt!1385844 () List!42329)

(declare-fun lt!1385830 () Int)

(declare-fun lt!1385829 () TokenValue!6850)

(assert (=> b!3961268 (and (= (size!31602 (_1!23884 (v!39385 lt!1385817))) lt!1385830) (= (originalCharacters!7220 (_1!23884 (v!39385 lt!1385817))) lt!1385821) (= (v!39385 lt!1385817) (tuple2!41501 (Token!12379 lt!1385829 (rule!9600 (_1!23884 (v!39385 lt!1385817))) lt!1385830 lt!1385821) lt!1385844)))))

(declare-fun size!31603 (List!42329) Int)

(assert (=> b!3961268 (= lt!1385830 (size!31603 lt!1385821))))

(declare-fun e!2452964 () Bool)

(assert (=> b!3961268 e!2452964))

(declare-fun res!1603219 () Bool)

(assert (=> b!3961268 (=> (not res!1603219) (not e!2452964))))

(assert (=> b!3961268 (= res!1603219 (= (value!209304 (_1!23884 (v!39385 lt!1385817))) lt!1385829))))

(declare-fun apply!9851 (TokenValueInjection!13128 BalanceConc!25256) TokenValue!6850)

(declare-fun seqFromList!4879 (List!42329) BalanceConc!25256)

(assert (=> b!3961268 (= lt!1385829 (apply!9851 (transformation!6620 (rule!9600 (_1!23884 (v!39385 lt!1385817)))) (seqFromList!4879 lt!1385821)))))

(assert (=> b!3961268 (= (_2!23884 (v!39385 lt!1385817)) lt!1385844)))

(declare-fun lt!1385831 () Unit!60732)

(declare-fun lemmaSamePrefixThenSameSuffix!1918 (List!42329 List!42329 List!42329 List!42329 List!42329) Unit!60732)

(assert (=> b!3961268 (= lt!1385831 (lemmaSamePrefixThenSameSuffix!1918 lt!1385821 (_2!23884 (v!39385 lt!1385817)) lt!1385821 lt!1385844 lt!1385820))))

(declare-fun getSuffix!2160 (List!42329 List!42329) List!42329)

(assert (=> b!3961268 (= lt!1385844 (getSuffix!2160 lt!1385820 lt!1385821))))

(declare-fun isPrefix!3709 (List!42329 List!42329) Bool)

(assert (=> b!3961268 (isPrefix!3709 lt!1385821 lt!1385843)))

(declare-fun ++!10997 (List!42329 List!42329) List!42329)

(assert (=> b!3961268 (= lt!1385843 (++!10997 lt!1385821 (_2!23884 (v!39385 lt!1385817))))))

(declare-fun lt!1385824 () Unit!60732)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2568 (List!42329 List!42329) Unit!60732)

(assert (=> b!3961268 (= lt!1385824 (lemmaConcatTwoListThenFirstIsPrefix!2568 lt!1385821 (_2!23884 (v!39385 lt!1385817))))))

(declare-fun list!15666 (BalanceConc!25256) List!42329)

(declare-fun charsOf!4438 (Token!12378) BalanceConc!25256)

(assert (=> b!3961268 (= lt!1385821 (list!15666 (charsOf!4438 (_1!23884 (v!39385 lt!1385817)))))))

(declare-fun ruleValid!2562 (LexerInterface!6209 Rule!13040) Bool)

(assert (=> b!3961268 (ruleValid!2562 thiss!20629 (rule!9600 (_1!23884 (v!39385 lt!1385817))))))

(declare-fun lt!1385840 () Unit!60732)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1638 (LexerInterface!6209 Rule!13040 List!42332) Unit!60732)

(assert (=> b!3961268 (= lt!1385840 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1638 thiss!20629 (rule!9600 (_1!23884 (v!39385 lt!1385817))) rules!2768))))

(declare-fun lt!1385841 () Unit!60732)

(declare-fun lemmaCharactersSize!1273 (Token!12378) Unit!60732)

(assert (=> b!3961268 (= lt!1385841 (lemmaCharactersSize!1273 (_1!23884 (v!39385 lt!1385817))))))

(declare-fun suffixTokens!72 () List!42331)

(declare-fun tp!1207400 () Bool)

(declare-fun b!3961269 () Bool)

(declare-fun e!2452966 () Bool)

(declare-fun e!2452961 () Bool)

(declare-fun inv!56431 (String!47968) Bool)

(declare-fun inv!56434 (TokenValueInjection!13128) Bool)

(assert (=> b!3961269 (= e!2452966 (and tp!1207400 (inv!56431 (tag!7480 (rule!9600 (h!47627 suffixTokens!72)))) (inv!56434 (transformation!6620 (rule!9600 (h!47627 suffixTokens!72)))) e!2452961))))

(declare-fun b!3961270 () Bool)

(declare-fun res!1603227 () Bool)

(declare-fun e!2452969 () Bool)

(assert (=> b!3961270 (=> (not res!1603227) (not e!2452969))))

(declare-fun isEmpty!25242 (List!42332) Bool)

(assert (=> b!3961270 (= res!1603227 (not (isEmpty!25242 rules!2768)))))

(declare-fun b!3961271 () Bool)

(declare-fun e!2452977 () Bool)

(declare-fun e!2452955 () Bool)

(declare-fun tp!1207404 () Bool)

(assert (=> b!3961271 (= e!2452977 (and e!2452955 tp!1207404))))

(declare-fun b!3961272 () Bool)

(declare-fun e!2452979 () Unit!60732)

(declare-fun Unit!60736 () Unit!60732)

(assert (=> b!3961272 (= e!2452979 Unit!60736)))

(declare-fun b!3961273 () Bool)

(declare-fun tp!1207401 () Bool)

(declare-fun e!2452984 () Bool)

(declare-fun inv!21 (TokenValue!6850) Bool)

(assert (=> b!3961273 (= e!2452984 (and (inv!21 (value!209304 (h!47627 suffixTokens!72))) e!2452966 tp!1207401))))

(declare-fun b!3961274 () Bool)

(declare-fun prefixTokens!80 () List!42331)

(declare-fun e!2452959 () Bool)

(declare-fun e!2452981 () Bool)

(declare-fun tp!1207392 () Bool)

(assert (=> b!3961274 (= e!2452959 (and (inv!21 (value!209304 (h!47627 prefixTokens!80))) e!2452981 tp!1207392))))

(declare-fun b!3961275 () Bool)

(declare-fun e!2452960 () Bool)

(assert (=> b!3961275 (= e!2452960 e!2452958)))

(declare-fun res!1603226 () Bool)

(assert (=> b!3961275 (=> (not res!1603226) (not e!2452958))))

(get-info :version)

(assert (=> b!3961275 (= res!1603226 ((_ is Some!9039) lt!1385817))))

(declare-fun maxPrefix!3513 (LexerInterface!6209 List!42332 List!42329) Option!9040)

(assert (=> b!3961275 (= lt!1385817 (maxPrefix!3513 thiss!20629 rules!2768 lt!1385820))))

(declare-fun b!3961276 () Bool)

(declare-fun tp!1207395 () Bool)

(declare-fun e!2452956 () Bool)

(declare-fun inv!56435 (Token!12378) Bool)

(assert (=> b!3961276 (= e!2452956 (and (inv!56435 (h!47627 prefixTokens!80)) e!2452959 tp!1207395))))

(declare-fun b!3961277 () Bool)

(declare-fun e!2452978 () Bool)

(assert (=> b!3961277 (= e!2452969 e!2452978)))

(declare-fun res!1603218 () Bool)

(assert (=> b!3961277 (=> (not res!1603218) (not e!2452978))))

(declare-fun lt!1385818 () List!42331)

(declare-fun suffixResult!91 () List!42329)

(declare-fun lt!1385834 () tuple2!41498)

(assert (=> b!3961277 (= res!1603218 (= lt!1385834 (tuple2!41499 lt!1385818 suffixResult!91)))))

(assert (=> b!3961277 (= lt!1385834 (lexList!1977 thiss!20629 rules!2768 lt!1385820))))

(declare-fun ++!10998 (List!42331 List!42331) List!42331)

(assert (=> b!3961277 (= lt!1385818 (++!10998 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!42329)

(declare-fun suffix!1176 () List!42329)

(assert (=> b!3961277 (= lt!1385820 (++!10997 prefix!426 suffix!1176))))

(declare-fun tp!1207397 () Bool)

(declare-fun b!3961278 () Bool)

(declare-fun e!2452957 () Bool)

(assert (=> b!3961278 (= e!2452957 (and (inv!56435 (h!47627 suffixTokens!72)) e!2452984 tp!1207397))))

(declare-fun b!3961279 () Bool)

(declare-fun e!2452968 () Bool)

(declare-fun tp_is_empty!20021 () Bool)

(declare-fun tp!1207399 () Bool)

(assert (=> b!3961279 (= e!2452968 (and tp_is_empty!20021 tp!1207399))))

(declare-fun b!3961280 () Bool)

(declare-fun Unit!60737 () Unit!60732)

(assert (=> b!3961280 (= e!2452979 Unit!60737)))

(declare-fun lt!1385823 () Unit!60732)

(assert (=> b!3961280 (= lt!1385823 (lemmaConcatTwoListThenFirstIsPrefix!2568 prefix!426 suffix!1176))))

(assert (=> b!3961280 (isPrefix!3709 prefix!426 lt!1385820)))

(declare-fun lt!1385839 () Unit!60732)

(declare-fun lemmaIsPrefixSameLengthThenSameList!831 (List!42329 List!42329 List!42329) Unit!60732)

(assert (=> b!3961280 (= lt!1385839 (lemmaIsPrefixSameLengthThenSameList!831 lt!1385821 prefix!426 lt!1385820))))

(assert (=> b!3961280 (= lt!1385821 prefix!426)))

(declare-fun lt!1385822 () Unit!60732)

(assert (=> b!3961280 (= lt!1385822 (lemmaSamePrefixThenSameSuffix!1918 lt!1385821 (_2!23884 (v!39385 lt!1385817)) prefix!426 suffix!1176 lt!1385820))))

(assert (=> b!3961280 false))

(declare-fun b!3961266 () Bool)

(declare-fun e!2452973 () Unit!60732)

(declare-fun Unit!60738 () Unit!60732)

(assert (=> b!3961266 (= e!2452973 Unit!60738)))

(declare-fun res!1603231 () Bool)

(assert (=> start!372596 (=> (not res!1603231) (not e!2452969))))

(assert (=> start!372596 (= res!1603231 ((_ is Lexer!6207) thiss!20629))))

(assert (=> start!372596 e!2452969))

(declare-fun e!2452983 () Bool)

(assert (=> start!372596 e!2452983))

(assert (=> start!372596 true))

(declare-fun e!2452975 () Bool)

(assert (=> start!372596 e!2452975))

(assert (=> start!372596 e!2452977))

(assert (=> start!372596 e!2452956))

(assert (=> start!372596 e!2452957))

(assert (=> start!372596 e!2452968))

(declare-fun b!3961281 () Bool)

(declare-fun res!1603223 () Bool)

(assert (=> b!3961281 (=> res!1603223 e!2452963)))

(assert (=> b!3961281 (= res!1603223 (or (not (= lt!1385816 (tuple2!41499 (_1!23883 lt!1385816) (_2!23883 lt!1385816)))) (= (_2!23884 (v!39385 lt!1385817)) suffix!1176)))))

(declare-fun b!3961282 () Bool)

(assert (=> b!3961282 (= e!2452978 e!2452960)))

(declare-fun res!1603228 () Bool)

(assert (=> b!3961282 (=> (not res!1603228) (not e!2452960))))

(declare-fun lt!1385819 () tuple2!41498)

(assert (=> b!3961282 (= res!1603228 (= (lexList!1977 thiss!20629 rules!2768 suffix!1176) lt!1385819))))

(assert (=> b!3961282 (= lt!1385819 (tuple2!41499 suffixTokens!72 suffixResult!91))))

(declare-fun call!285418 () tuple2!41498)

(declare-fun bm!285413 () Bool)

(declare-fun lt!1385825 () tuple2!41500)

(assert (=> bm!285413 (= call!285418 (lexList!1977 thiss!20629 rules!2768 (_2!23884 lt!1385825)))))

(declare-fun b!3961283 () Bool)

(declare-fun Unit!60739 () Unit!60732)

(assert (=> b!3961283 (= e!2452973 Unit!60739)))

(declare-fun lt!1385842 () Int)

(assert (=> b!3961283 (= lt!1385842 (size!31603 lt!1385820))))

(declare-fun lt!1385815 () Unit!60732)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1389 (LexerInterface!6209 List!42332 List!42329 List!42329 List!42329 Rule!13040) Unit!60732)

(assert (=> b!3961283 (= lt!1385815 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1389 thiss!20629 rules!2768 lt!1385821 lt!1385820 (_2!23884 (v!39385 lt!1385817)) (rule!9600 (_1!23884 (v!39385 lt!1385817)))))))

(declare-fun maxPrefixOneRule!2563 (LexerInterface!6209 Rule!13040 List!42329) Option!9040)

(assert (=> b!3961283 (= (maxPrefixOneRule!2563 thiss!20629 (rule!9600 (_1!23884 (v!39385 lt!1385817))) lt!1385820) (Some!9039 (tuple2!41501 (Token!12379 lt!1385829 (rule!9600 (_1!23884 (v!39385 lt!1385817))) lt!1385830 lt!1385821) (_2!23884 (v!39385 lt!1385817)))))))

(declare-fun get!13920 (Option!9040) tuple2!41500)

(assert (=> b!3961283 (= lt!1385825 (get!13920 lt!1385817))))

(declare-fun c!687348 () Bool)

(declare-fun lt!1385845 () Int)

(assert (=> b!3961283 (= c!687348 (< (size!31603 (_2!23884 lt!1385825)) lt!1385845))))

(declare-fun lt!1385832 () Unit!60732)

(assert (=> b!3961283 (= lt!1385832 e!2452972)))

(assert (=> b!3961283 false))

(declare-fun b!3961284 () Bool)

(declare-fun res!1603220 () Bool)

(assert (=> b!3961284 (=> (not res!1603220) (not e!2452969))))

(declare-fun rulesInvariant!5552 (LexerInterface!6209 List!42332) Bool)

(assert (=> b!3961284 (= res!1603220 (rulesInvariant!5552 thiss!20629 rules!2768))))

(declare-fun b!3961285 () Bool)

(declare-fun c!687346 () Bool)

(declare-fun lt!1385828 () List!42331)

(declare-fun isEmpty!25243 (List!42331) Bool)

(assert (=> b!3961285 (= c!687346 (isEmpty!25243 lt!1385828))))

(declare-fun tail!6159 (List!42331) List!42331)

(assert (=> b!3961285 (= lt!1385828 (tail!6159 prefixTokens!80))))

(declare-fun e!2452980 () Unit!60732)

(assert (=> b!3961285 (= e!2452972 e!2452980)))

(declare-fun b!3961286 () Bool)

(declare-fun Unit!60740 () Unit!60732)

(assert (=> b!3961286 (= e!2452980 Unit!60740)))

(declare-fun lt!1385833 () Unit!60732)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!614 (List!42329 List!42329 List!42329 List!42329) Unit!60732)

(assert (=> b!3961286 (= lt!1385833 (lemmaConcatSameAndSameSizesThenSameLists!614 lt!1385821 (_2!23884 (v!39385 lt!1385817)) lt!1385821 (_2!23884 lt!1385825)))))

(assert (=> b!3961286 (= (_2!23884 (v!39385 lt!1385817)) (_2!23884 lt!1385825))))

(declare-fun lt!1385838 () Unit!60732)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!148 (LexerInterface!6209 List!42332 List!42329 List!42329 List!42331 List!42329) Unit!60732)

(assert (=> b!3961286 (= lt!1385838 (lemmaLexWithSmallerInputCannotProduceSameResults!148 thiss!20629 rules!2768 suffix!1176 (_2!23884 lt!1385825) suffixTokens!72 suffixResult!91))))

(declare-fun res!1603217 () Bool)

(assert (=> b!3961286 (= res!1603217 (not (= call!285418 lt!1385819)))))

(assert (=> b!3961286 (=> (not res!1603217) (not e!2452970))))

(assert (=> b!3961286 e!2452970))

(declare-fun b!3961287 () Bool)

(declare-fun tp!1207396 () Bool)

(declare-fun e!2452953 () Bool)

(assert (=> b!3961287 (= e!2452955 (and tp!1207396 (inv!56431 (tag!7480 (h!47628 rules!2768))) (inv!56434 (transformation!6620 (h!47628 rules!2768))) e!2452953))))

(declare-fun b!3961288 () Bool)

(declare-fun res!1603216 () Bool)

(assert (=> b!3961288 (=> (not res!1603216) (not e!2452969))))

(assert (=> b!3961288 (= res!1603216 (not (isEmpty!25243 prefixTokens!80)))))

(declare-fun b!3961289 () Bool)

(declare-fun e!2452974 () Bool)

(assert (=> b!3961289 (= e!2452974 false)))

(declare-fun e!2452971 () Bool)

(assert (=> b!3961290 (= e!2452971 (and tp!1207405 tp!1207402))))

(assert (=> b!3961291 (= e!2452953 (and tp!1207394 tp!1207407))))

(declare-fun b!3961292 () Bool)

(declare-fun res!1603229 () Bool)

(assert (=> b!3961292 (=> (not res!1603229) (not e!2452969))))

(declare-fun isEmpty!25244 (List!42329) Bool)

(assert (=> b!3961292 (= res!1603229 (not (isEmpty!25244 prefix!426)))))

(declare-fun b!3961293 () Bool)

(declare-fun res!1603224 () Bool)

(declare-fun e!2452982 () Bool)

(assert (=> b!3961293 (=> res!1603224 e!2452982)))

(declare-fun head!8427 (List!42331) Token!12378)

(assert (=> b!3961293 (= res!1603224 (not (= (head!8427 prefixTokens!80) (_1!23884 (v!39385 lt!1385817)))))))

(declare-fun b!3961294 () Bool)

(assert (=> b!3961294 (= e!2452964 (= (size!31602 (_1!23884 (v!39385 lt!1385817))) (size!31603 (originalCharacters!7220 (_1!23884 (v!39385 lt!1385817))))))))

(declare-fun b!3961295 () Bool)

(declare-fun tp!1207398 () Bool)

(assert (=> b!3961295 (= e!2452975 (and tp_is_empty!20021 tp!1207398))))

(declare-fun b!3961296 () Bool)

(assert (=> b!3961296 (= e!2452963 e!2452982)))

(declare-fun res!1603225 () Bool)

(assert (=> b!3961296 (=> res!1603225 e!2452982)))

(declare-fun lt!1385826 () Int)

(assert (=> b!3961296 (= res!1603225 (<= lt!1385826 lt!1385845))))

(declare-fun lt!1385827 () Unit!60732)

(assert (=> b!3961296 (= lt!1385827 e!2452979)))

(declare-fun c!687349 () Bool)

(assert (=> b!3961296 (= c!687349 (= lt!1385826 lt!1385845))))

(declare-fun lt!1385835 () Unit!60732)

(assert (=> b!3961296 (= lt!1385835 e!2452973)))

(declare-fun c!687347 () Bool)

(assert (=> b!3961296 (= c!687347 (< lt!1385826 lt!1385845))))

(assert (=> b!3961296 (= lt!1385845 (size!31603 suffix!1176))))

(assert (=> b!3961296 (= lt!1385826 (size!31603 (_2!23884 (v!39385 lt!1385817))))))

(assert (=> b!3961297 (= e!2452961 (and tp!1207403 tp!1207408))))

(declare-fun tp!1207393 () Bool)

(declare-fun b!3961298 () Bool)

(assert (=> b!3961298 (= e!2452981 (and tp!1207393 (inv!56431 (tag!7480 (rule!9600 (h!47627 prefixTokens!80)))) (inv!56434 (transformation!6620 (rule!9600 (h!47627 prefixTokens!80)))) e!2452971))))

(declare-fun b!3961299 () Bool)

(assert (=> b!3961299 (= e!2452982 (isPrefix!3709 lt!1385821 lt!1385820))))

(assert (=> b!3961299 (isPrefix!3709 prefix!426 lt!1385820)))

(declare-fun lt!1385836 () Unit!60732)

(assert (=> b!3961299 (= lt!1385836 (lemmaConcatTwoListThenFirstIsPrefix!2568 prefix!426 suffix!1176))))

(declare-fun b!3961300 () Bool)

(declare-fun tp!1207406 () Bool)

(assert (=> b!3961300 (= e!2452983 (and tp_is_empty!20021 tp!1207406))))

(declare-fun b!3961301 () Bool)

(declare-fun Unit!60741 () Unit!60732)

(assert (=> b!3961301 (= e!2452980 Unit!60741)))

(declare-fun lt!1385837 () Unit!60732)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!148 (LexerInterface!6209 List!42332 List!42329 List!42329 List!42331 List!42329 List!42331) Unit!60732)

(assert (=> b!3961301 (= lt!1385837 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!148 thiss!20629 rules!2768 suffix!1176 (_2!23884 lt!1385825) suffixTokens!72 suffixResult!91 lt!1385828))))

(declare-fun res!1603222 () Bool)

(assert (=> b!3961301 (= res!1603222 (not (= call!285418 (tuple2!41499 (++!10998 lt!1385828 suffixTokens!72) suffixResult!91))))))

(assert (=> b!3961301 (=> (not res!1603222) (not e!2452974))))

(assert (=> b!3961301 e!2452974))

(declare-fun b!3961302 () Bool)

(declare-fun res!1603221 () Bool)

(assert (=> b!3961302 (=> res!1603221 e!2452963)))

(assert (=> b!3961302 (= res!1603221 (not (= lt!1385834 (tuple2!41499 (++!10998 (Cons!42207 (_1!23884 (v!39385 lt!1385817)) Nil!42207) (_1!23883 lt!1385816)) (_2!23883 lt!1385816)))))))

(assert (= (and start!372596 res!1603231) b!3961270))

(assert (= (and b!3961270 res!1603227) b!3961284))

(assert (= (and b!3961284 res!1603220) b!3961288))

(assert (= (and b!3961288 res!1603216) b!3961292))

(assert (= (and b!3961292 res!1603229) b!3961277))

(assert (= (and b!3961277 res!1603218) b!3961282))

(assert (= (and b!3961282 res!1603228) b!3961275))

(assert (= (and b!3961275 res!1603226) b!3961268))

(assert (= (and b!3961268 res!1603219) b!3961294))

(assert (= (and b!3961268 (not res!1603230)) b!3961302))

(assert (= (and b!3961302 (not res!1603221)) b!3961281))

(assert (= (and b!3961281 (not res!1603223)) b!3961296))

(assert (= (and b!3961296 c!687347) b!3961283))

(assert (= (and b!3961296 (not c!687347)) b!3961266))

(assert (= (and b!3961283 c!687348) b!3961285))

(assert (= (and b!3961283 (not c!687348)) b!3961267))

(assert (= (and b!3961285 c!687346) b!3961286))

(assert (= (and b!3961285 (not c!687346)) b!3961301))

(assert (= (and b!3961286 res!1603217) b!3961265))

(assert (= (and b!3961301 res!1603222) b!3961289))

(assert (= (or b!3961286 b!3961301) bm!285413))

(assert (= (and b!3961296 c!687349) b!3961280))

(assert (= (and b!3961296 (not c!687349)) b!3961272))

(assert (= (and b!3961296 (not res!1603225)) b!3961293))

(assert (= (and b!3961293 (not res!1603224)) b!3961299))

(assert (= (and start!372596 ((_ is Cons!42205) suffixResult!91)) b!3961300))

(assert (= (and start!372596 ((_ is Cons!42205) suffix!1176)) b!3961295))

(assert (= b!3961287 b!3961291))

(assert (= b!3961271 b!3961287))

(assert (= (and start!372596 ((_ is Cons!42208) rules!2768)) b!3961271))

(assert (= b!3961298 b!3961290))

(assert (= b!3961274 b!3961298))

(assert (= b!3961276 b!3961274))

(assert (= (and start!372596 ((_ is Cons!42207) prefixTokens!80)) b!3961276))

(assert (= b!3961269 b!3961297))

(assert (= b!3961273 b!3961269))

(assert (= b!3961278 b!3961273))

(assert (= (and start!372596 ((_ is Cons!42207) suffixTokens!72)) b!3961278))

(assert (= (and start!372596 ((_ is Cons!42205) prefix!426)) b!3961279))

(declare-fun m!4530215 () Bool)

(assert (=> b!3961301 m!4530215))

(declare-fun m!4530217 () Bool)

(assert (=> b!3961301 m!4530217))

(declare-fun m!4530219 () Bool)

(assert (=> b!3961286 m!4530219))

(declare-fun m!4530221 () Bool)

(assert (=> b!3961286 m!4530221))

(declare-fun m!4530223 () Bool)

(assert (=> b!3961278 m!4530223))

(declare-fun m!4530225 () Bool)

(assert (=> b!3961277 m!4530225))

(declare-fun m!4530227 () Bool)

(assert (=> b!3961277 m!4530227))

(declare-fun m!4530229 () Bool)

(assert (=> b!3961277 m!4530229))

(declare-fun m!4530231 () Bool)

(assert (=> b!3961282 m!4530231))

(declare-fun m!4530233 () Bool)

(assert (=> b!3961299 m!4530233))

(declare-fun m!4530235 () Bool)

(assert (=> b!3961299 m!4530235))

(declare-fun m!4530237 () Bool)

(assert (=> b!3961299 m!4530237))

(declare-fun m!4530239 () Bool)

(assert (=> b!3961296 m!4530239))

(declare-fun m!4530241 () Bool)

(assert (=> b!3961296 m!4530241))

(declare-fun m!4530243 () Bool)

(assert (=> b!3961273 m!4530243))

(declare-fun m!4530245 () Bool)

(assert (=> b!3961269 m!4530245))

(declare-fun m!4530247 () Bool)

(assert (=> b!3961269 m!4530247))

(declare-fun m!4530249 () Bool)

(assert (=> b!3961294 m!4530249))

(assert (=> b!3961280 m!4530237))

(assert (=> b!3961280 m!4530235))

(declare-fun m!4530251 () Bool)

(assert (=> b!3961280 m!4530251))

(declare-fun m!4530253 () Bool)

(assert (=> b!3961280 m!4530253))

(declare-fun m!4530255 () Bool)

(assert (=> b!3961302 m!4530255))

(declare-fun m!4530257 () Bool)

(assert (=> b!3961287 m!4530257))

(declare-fun m!4530259 () Bool)

(assert (=> b!3961287 m!4530259))

(declare-fun m!4530261 () Bool)

(assert (=> b!3961275 m!4530261))

(declare-fun m!4530263 () Bool)

(assert (=> b!3961270 m!4530263))

(declare-fun m!4530265 () Bool)

(assert (=> b!3961268 m!4530265))

(declare-fun m!4530267 () Bool)

(assert (=> b!3961268 m!4530267))

(declare-fun m!4530269 () Bool)

(assert (=> b!3961268 m!4530269))

(declare-fun m!4530271 () Bool)

(assert (=> b!3961268 m!4530271))

(assert (=> b!3961268 m!4530267))

(declare-fun m!4530273 () Bool)

(assert (=> b!3961268 m!4530273))

(declare-fun m!4530275 () Bool)

(assert (=> b!3961268 m!4530275))

(declare-fun m!4530277 () Bool)

(assert (=> b!3961268 m!4530277))

(declare-fun m!4530279 () Bool)

(assert (=> b!3961268 m!4530279))

(declare-fun m!4530281 () Bool)

(assert (=> b!3961268 m!4530281))

(declare-fun m!4530283 () Bool)

(assert (=> b!3961268 m!4530283))

(declare-fun m!4530285 () Bool)

(assert (=> b!3961268 m!4530285))

(declare-fun m!4530287 () Bool)

(assert (=> b!3961268 m!4530287))

(declare-fun m!4530289 () Bool)

(assert (=> b!3961268 m!4530289))

(assert (=> b!3961268 m!4530277))

(declare-fun m!4530291 () Bool)

(assert (=> b!3961268 m!4530291))

(declare-fun m!4530293 () Bool)

(assert (=> b!3961284 m!4530293))

(declare-fun m!4530295 () Bool)

(assert (=> bm!285413 m!4530295))

(declare-fun m!4530297 () Bool)

(assert (=> b!3961288 m!4530297))

(declare-fun m!4530299 () Bool)

(assert (=> b!3961274 m!4530299))

(declare-fun m!4530301 () Bool)

(assert (=> b!3961298 m!4530301))

(declare-fun m!4530303 () Bool)

(assert (=> b!3961298 m!4530303))

(declare-fun m!4530305 () Bool)

(assert (=> b!3961293 m!4530305))

(declare-fun m!4530307 () Bool)

(assert (=> b!3961292 m!4530307))

(declare-fun m!4530309 () Bool)

(assert (=> b!3961285 m!4530309))

(declare-fun m!4530311 () Bool)

(assert (=> b!3961285 m!4530311))

(declare-fun m!4530313 () Bool)

(assert (=> b!3961276 m!4530313))

(declare-fun m!4530315 () Bool)

(assert (=> b!3961283 m!4530315))

(declare-fun m!4530317 () Bool)

(assert (=> b!3961283 m!4530317))

(declare-fun m!4530319 () Bool)

(assert (=> b!3961283 m!4530319))

(declare-fun m!4530321 () Bool)

(assert (=> b!3961283 m!4530321))

(declare-fun m!4530323 () Bool)

(assert (=> b!3961283 m!4530323))

(check-sat (not b!3961273) tp_is_empty!20021 b_and!304153 b_and!304151 (not b!3961278) (not b!3961292) (not b_next!110071) (not b_next!110073) (not b_next!110077) b_and!304157 b_and!304149 (not b!3961271) (not b!3961294) (not b!3961301) (not b!3961283) (not b!3961280) (not b!3961295) (not b!3961288) (not b!3961270) (not b!3961285) (not b!3961279) (not bm!285413) (not b!3961299) (not b!3961269) (not b!3961282) (not b!3961300) (not b!3961287) (not b!3961277) (not b!3961296) (not b!3961274) b_and!304155 b_and!304147 (not b_next!110069) (not b!3961276) (not b!3961293) (not b!3961275) (not b!3961268) (not b!3961298) (not b_next!110079) (not b!3961284) (not b_next!110075) (not b!3961302) (not b!3961286))
(check-sat b_and!304153 b_and!304151 (not b_next!110071) (not b_next!110073) (not b_next!110077) b_and!304157 b_and!304155 b_and!304149 b_and!304147 (not b_next!110069) (not b_next!110079) (not b_next!110075))
